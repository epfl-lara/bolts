; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654500 () Bool)

(assert start!654500)

(declare-fun b!6748161 () Bool)

(assert (=> b!6748161 true))

(assert (=> b!6748161 true))

(declare-fun lambda!379507 () Int)

(declare-fun lambda!379506 () Int)

(assert (=> b!6748161 (not (= lambda!379507 lambda!379506))))

(assert (=> b!6748161 true))

(assert (=> b!6748161 true))

(declare-fun lambda!379508 () Int)

(assert (=> b!6748161 (not (= lambda!379508 lambda!379506))))

(assert (=> b!6748161 (not (= lambda!379508 lambda!379507))))

(assert (=> b!6748161 true))

(assert (=> b!6748161 true))

(declare-fun b!6748154 () Bool)

(assert (=> b!6748154 true))

(declare-fun e!4075600 () Bool)

(declare-fun e!4075612 () Bool)

(assert (=> b!6748154 (= e!4075600 e!4075612)))

(declare-fun res!2760416 () Bool)

(assert (=> b!6748154 (=> res!2760416 e!4075612)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33432 0))(
  ( (C!33433 (val!26418 Int)) )
))
(declare-datatypes ((Regex!16581 0))(
  ( (ElementMatch!16581 (c!1252033 C!33432)) (Concat!25426 (regOne!33674 Regex!16581) (regTwo!33674 Regex!16581)) (EmptyExpr!16581) (Star!16581 (reg!16910 Regex!16581)) (EmptyLang!16581) (Union!16581 (regOne!33675 Regex!16581) (regTwo!33675 Regex!16581)) )
))
(declare-datatypes ((List!66042 0))(
  ( (Nil!65918) (Cons!65918 (h!72366 Regex!16581) (t!379743 List!66042)) )
))
(declare-datatypes ((Context!11930 0))(
  ( (Context!11931 (exprs!6465 List!66042)) )
))
(declare-fun lt!2440695 () (InoxSet Context!11930))

(declare-fun lt!2440694 () (InoxSet Context!11930))

(assert (=> b!6748154 (= res!2760416 (not (= lt!2440695 lt!2440694)))))

(declare-datatypes ((List!66043 0))(
  ( (Nil!65919) (Cons!65919 (h!72367 C!33432) (t!379744 List!66043)) )
))
(declare-fun s!2326 () List!66043)

(declare-fun lambda!379509 () Int)

(declare-datatypes ((List!66044 0))(
  ( (Nil!65920) (Cons!65920 (h!72368 Context!11930) (t!379745 List!66044)) )
))
(declare-fun zl!343 () List!66044)

(declare-fun z!1189 () (InoxSet Context!11930))

(declare-fun flatMap!2062 ((InoxSet Context!11930) Int) (InoxSet Context!11930))

(declare-fun derivationStepZipperUp!1735 (Context!11930 C!33432) (InoxSet Context!11930))

(assert (=> b!6748154 (= (flatMap!2062 z!1189 lambda!379509) (derivationStepZipperUp!1735 (h!72368 zl!343) (h!72367 s!2326)))))

(declare-datatypes ((Unit!159853 0))(
  ( (Unit!159854) )
))
(declare-fun lt!2440703 () Unit!159853)

(declare-fun lemmaFlatMapOnSingletonSet!1588 ((InoxSet Context!11930) Context!11930 Int) Unit!159853)

(assert (=> b!6748154 (= lt!2440703 (lemmaFlatMapOnSingletonSet!1588 z!1189 (h!72368 zl!343) lambda!379509))))

(declare-fun b!6748155 () Bool)

(declare-fun e!4075603 () Bool)

(declare-fun tp_is_empty!42415 () Bool)

(assert (=> b!6748155 (= e!4075603 tp_is_empty!42415)))

(declare-fun b!6748156 () Bool)

(declare-fun e!4075597 () Bool)

(declare-fun e!4075610 () Bool)

(assert (=> b!6748156 (= e!4075597 e!4075610)))

(declare-fun res!2760419 () Bool)

(assert (=> b!6748156 (=> res!2760419 e!4075610)))

(declare-datatypes ((tuple2!67112 0))(
  ( (tuple2!67113 (_1!36859 List!66043) (_2!36859 List!66043)) )
))
(declare-fun lt!2440718 () tuple2!67112)

(declare-fun ++!14735 (List!66043 List!66043) List!66043)

(assert (=> b!6748156 (= res!2760419 (not (= s!2326 (++!14735 (_1!36859 lt!2440718) (_2!36859 lt!2440718)))))))

(declare-datatypes ((Option!16468 0))(
  ( (None!16467) (Some!16467 (v!52667 tuple2!67112)) )
))
(declare-fun lt!2440707 () Option!16468)

(declare-fun get!22941 (Option!16468) tuple2!67112)

(assert (=> b!6748156 (= lt!2440718 (get!22941 lt!2440707))))

(declare-fun b!6748157 () Bool)

(declare-fun res!2760422 () Bool)

(declare-fun e!4075602 () Bool)

(assert (=> b!6748157 (=> res!2760422 e!4075602)))

(declare-fun r!7292 () Regex!16581)

(declare-fun generalisedUnion!2425 (List!66042) Regex!16581)

(declare-fun unfocusZipperList!2002 (List!66044) List!66042)

(assert (=> b!6748157 (= res!2760422 (not (= r!7292 (generalisedUnion!2425 (unfocusZipperList!2002 zl!343)))))))

(declare-fun res!2760415 () Bool)

(declare-fun e!4075607 () Bool)

(assert (=> start!654500 (=> (not res!2760415) (not e!4075607))))

(declare-fun validRegex!8317 (Regex!16581) Bool)

(assert (=> start!654500 (= res!2760415 (validRegex!8317 r!7292))))

(assert (=> start!654500 e!4075607))

(assert (=> start!654500 e!4075603))

(declare-fun condSetEmpty!46117 () Bool)

(assert (=> start!654500 (= condSetEmpty!46117 (= z!1189 ((as const (Array Context!11930 Bool)) false)))))

(declare-fun setRes!46117 () Bool)

(assert (=> start!654500 setRes!46117))

(declare-fun e!4075599 () Bool)

(assert (=> start!654500 e!4075599))

(declare-fun e!4075614 () Bool)

(assert (=> start!654500 e!4075614))

(declare-fun b!6748158 () Bool)

(declare-fun res!2760436 () Bool)

(assert (=> b!6748158 (=> res!2760436 e!4075602)))

(get-info :version)

(assert (=> b!6748158 (= res!2760436 (or ((_ is EmptyExpr!16581) r!7292) ((_ is EmptyLang!16581) r!7292) ((_ is ElementMatch!16581) r!7292) ((_ is Union!16581) r!7292) ((_ is Concat!25426) r!7292)))))

(declare-fun setIsEmpty!46117 () Bool)

(assert (=> setIsEmpty!46117 setRes!46117))

(declare-fun b!6748159 () Bool)

(declare-fun e!4075611 () Bool)

(assert (=> b!6748159 (= e!4075607 e!4075611)))

(declare-fun res!2760426 () Bool)

(assert (=> b!6748159 (=> (not res!2760426) (not e!4075611))))

(declare-fun lt!2440691 () Regex!16581)

(assert (=> b!6748159 (= res!2760426 (= r!7292 lt!2440691))))

(declare-fun unfocusZipper!2323 (List!66044) Regex!16581)

(assert (=> b!6748159 (= lt!2440691 (unfocusZipper!2323 zl!343))))

(declare-fun b!6748160 () Bool)

(declare-fun tp!1849432 () Bool)

(declare-fun tp!1849431 () Bool)

(assert (=> b!6748160 (= e!4075603 (and tp!1849432 tp!1849431))))

(declare-fun e!4075609 () Bool)

(assert (=> b!6748161 (= e!4075602 e!4075609)))

(declare-fun res!2760427 () Bool)

(assert (=> b!6748161 (=> res!2760427 e!4075609)))

(declare-fun lt!2440693 () Bool)

(declare-fun e!4075606 () Bool)

(assert (=> b!6748161 (= res!2760427 (not (= lt!2440693 e!4075606)))))

(declare-fun res!2760434 () Bool)

(assert (=> b!6748161 (=> res!2760434 e!4075606)))

(declare-fun isEmpty!38269 (List!66043) Bool)

(assert (=> b!6748161 (= res!2760434 (isEmpty!38269 s!2326))))

(declare-fun Exists!3649 (Int) Bool)

(assert (=> b!6748161 (= (Exists!3649 lambda!379506) (Exists!3649 lambda!379508))))

(declare-fun lt!2440711 () Unit!159853)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2176 (Regex!16581 Regex!16581 List!66043) Unit!159853)

(assert (=> b!6748161 (= lt!2440711 (lemmaExistCutMatchRandMatchRSpecEquivalent!2176 (reg!16910 r!7292) r!7292 s!2326))))

(assert (=> b!6748161 (= (Exists!3649 lambda!379506) (Exists!3649 lambda!379507))))

(declare-fun lt!2440714 () Unit!159853)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!740 (Regex!16581 List!66043) Unit!159853)

(assert (=> b!6748161 (= lt!2440714 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!740 (reg!16910 r!7292) s!2326))))

(declare-fun lt!2440696 () Bool)

(assert (=> b!6748161 (= lt!2440696 (Exists!3649 lambda!379506))))

(declare-fun isDefined!13171 (Option!16468) Bool)

(assert (=> b!6748161 (= lt!2440696 (isDefined!13171 lt!2440707))))

(declare-fun findConcatSeparation!2882 (Regex!16581 Regex!16581 List!66043 List!66043 List!66043) Option!16468)

(assert (=> b!6748161 (= lt!2440707 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326))))

(declare-fun lt!2440712 () Unit!159853)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2646 (Regex!16581 Regex!16581 List!66043) Unit!159853)

(assert (=> b!6748161 (= lt!2440712 (lemmaFindConcatSeparationEquivalentToExists!2646 (reg!16910 r!7292) r!7292 s!2326))))

(declare-fun b!6748162 () Bool)

(declare-fun res!2760441 () Bool)

(assert (=> b!6748162 (=> res!2760441 e!4075602)))

(declare-fun generalisedConcat!2178 (List!66042) Regex!16581)

(assert (=> b!6748162 (= res!2760441 (not (= r!7292 (generalisedConcat!2178 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun b!6748163 () Bool)

(declare-fun e!4075598 () Bool)

(declare-fun e!4075596 () Bool)

(assert (=> b!6748163 (= e!4075598 e!4075596)))

(declare-fun res!2760440 () Bool)

(assert (=> b!6748163 (=> res!2760440 e!4075596)))

(declare-fun lt!2440692 () Bool)

(assert (=> b!6748163 (= res!2760440 (not lt!2440692))))

(declare-fun b!6748164 () Bool)

(declare-fun e!4075608 () Bool)

(declare-fun tp!1849435 () Bool)

(assert (=> b!6748164 (= e!4075608 tp!1849435)))

(declare-fun b!6748165 () Bool)

(assert (=> b!6748165 (= e!4075611 (not e!4075602))))

(declare-fun res!2760424 () Bool)

(assert (=> b!6748165 (=> res!2760424 e!4075602)))

(assert (=> b!6748165 (= res!2760424 (not ((_ is Cons!65920) zl!343)))))

(declare-fun matchRSpec!3682 (Regex!16581 List!66043) Bool)

(assert (=> b!6748165 (= lt!2440693 (matchRSpec!3682 r!7292 s!2326))))

(declare-fun matchR!8764 (Regex!16581 List!66043) Bool)

(assert (=> b!6748165 (= lt!2440693 (matchR!8764 r!7292 s!2326))))

(declare-fun lt!2440708 () Unit!159853)

(declare-fun mainMatchTheorem!3682 (Regex!16581 List!66043) Unit!159853)

(assert (=> b!6748165 (= lt!2440708 (mainMatchTheorem!3682 r!7292 s!2326))))

(declare-fun b!6748166 () Bool)

(declare-fun res!2760435 () Bool)

(assert (=> b!6748166 (=> res!2760435 e!4075610)))

(assert (=> b!6748166 (= res!2760435 (not (matchR!8764 (reg!16910 r!7292) (_1!36859 lt!2440718))))))

(declare-fun b!6748167 () Bool)

(declare-fun tp!1849430 () Bool)

(assert (=> b!6748167 (= e!4075614 (and tp_is_empty!42415 tp!1849430))))

(declare-fun b!6748168 () Bool)

(declare-fun e!4075601 () Bool)

(declare-fun e!4075604 () Bool)

(assert (=> b!6748168 (= e!4075601 e!4075604)))

(declare-fun res!2760428 () Bool)

(assert (=> b!6748168 (=> res!2760428 e!4075604)))

(declare-fun lt!2440702 () (InoxSet Context!11930))

(declare-fun derivationStepZipper!2525 ((InoxSet Context!11930) C!33432) (InoxSet Context!11930))

(assert (=> b!6748168 (= res!2760428 (not (= lt!2440695 (derivationStepZipper!2525 lt!2440702 (h!72367 s!2326)))))))

(declare-fun lt!2440713 () Context!11930)

(assert (=> b!6748168 (= (flatMap!2062 lt!2440702 lambda!379509) (derivationStepZipperUp!1735 lt!2440713 (h!72367 s!2326)))))

(declare-fun lt!2440690 () Unit!159853)

(assert (=> b!6748168 (= lt!2440690 (lemmaFlatMapOnSingletonSet!1588 lt!2440702 lt!2440713 lambda!379509))))

(declare-fun lt!2440715 () (InoxSet Context!11930))

(declare-fun lt!2440701 () Context!11930)

(assert (=> b!6748168 (= (flatMap!2062 lt!2440715 lambda!379509) (derivationStepZipperUp!1735 lt!2440701 (h!72367 s!2326)))))

(declare-fun lt!2440710 () Unit!159853)

(assert (=> b!6748168 (= lt!2440710 (lemmaFlatMapOnSingletonSet!1588 lt!2440715 lt!2440701 lambda!379509))))

(declare-fun lt!2440706 () (InoxSet Context!11930))

(assert (=> b!6748168 (= lt!2440706 (derivationStepZipperUp!1735 lt!2440713 (h!72367 s!2326)))))

(declare-fun lt!2440709 () (InoxSet Context!11930))

(assert (=> b!6748168 (= lt!2440709 (derivationStepZipperUp!1735 lt!2440701 (h!72367 s!2326)))))

(assert (=> b!6748168 (= lt!2440702 (store ((as const (Array Context!11930 Bool)) false) lt!2440713 true))))

(assert (=> b!6748168 (= lt!2440715 (store ((as const (Array Context!11930 Bool)) false) lt!2440701 true))))

(assert (=> b!6748168 (= lt!2440701 (Context!11931 (Cons!65918 (reg!16910 r!7292) Nil!65918)))))

(declare-fun b!6748169 () Bool)

(declare-fun e!4075595 () Bool)

(assert (=> b!6748169 (= e!4075596 e!4075595)))

(declare-fun res!2760433 () Bool)

(assert (=> b!6748169 (=> (not res!2760433) (not e!4075595))))

(assert (=> b!6748169 (= res!2760433 (= (Exists!3649 lambda!379506) (Exists!3649 lambda!379507)))))

(declare-fun b!6748170 () Bool)

(declare-fun e!4075613 () Bool)

(declare-fun tp!1849436 () Bool)

(assert (=> b!6748170 (= e!4075613 tp!1849436)))

(declare-fun b!6748171 () Bool)

(declare-fun e!4075605 () Bool)

(assert (=> b!6748171 (= e!4075605 e!4075601)))

(declare-fun res!2760418 () Bool)

(assert (=> b!6748171 (=> res!2760418 e!4075601)))

(declare-fun lt!2440699 () Context!11930)

(declare-fun lt!2440700 () Regex!16581)

(assert (=> b!6748171 (= res!2760418 (not (= (unfocusZipper!2323 (Cons!65920 lt!2440699 Nil!65920)) lt!2440700)))))

(assert (=> b!6748171 (= lt!2440700 (Concat!25426 (reg!16910 r!7292) r!7292))))

(declare-fun tp!1849429 () Bool)

(declare-fun b!6748172 () Bool)

(declare-fun inv!84699 (Context!11930) Bool)

(assert (=> b!6748172 (= e!4075599 (and (inv!84699 (h!72368 zl!343)) e!4075608 tp!1849429))))

(declare-fun b!6748173 () Bool)

(assert (=> b!6748173 (= e!4075604 e!4075597)))

(declare-fun res!2760431 () Bool)

(assert (=> b!6748173 (=> res!2760431 e!4075597)))

(assert (=> b!6748173 (= res!2760431 (not lt!2440692))))

(assert (=> b!6748173 e!4075598))

(declare-fun res!2760442 () Bool)

(assert (=> b!6748173 (=> (not res!2760442) (not e!4075598))))

(assert (=> b!6748173 (= res!2760442 (= lt!2440692 (matchRSpec!3682 lt!2440700 s!2326)))))

(assert (=> b!6748173 (= lt!2440692 (matchR!8764 lt!2440700 s!2326))))

(declare-fun lt!2440698 () Unit!159853)

(assert (=> b!6748173 (= lt!2440698 (mainMatchTheorem!3682 lt!2440700 s!2326))))

(declare-fun setNonEmpty!46117 () Bool)

(declare-fun setElem!46117 () Context!11930)

(declare-fun tp!1849437 () Bool)

(assert (=> setNonEmpty!46117 (= setRes!46117 (and tp!1849437 (inv!84699 setElem!46117) e!4075613))))

(declare-fun setRest!46117 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46117 (= z!1189 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46117 true) setRest!46117))))

(declare-fun b!6748174 () Bool)

(declare-fun res!2760420 () Bool)

(assert (=> b!6748174 (=> res!2760420 e!4075605)))

(declare-fun lt!2440717 () (InoxSet Context!11930))

(declare-fun matchZipper!2567 ((InoxSet Context!11930) List!66043) Bool)

(assert (=> b!6748174 (= res!2760420 (not (= (matchZipper!2567 lt!2440717 s!2326) (matchZipper!2567 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (t!379744 s!2326)))))))

(declare-fun b!6748175 () Bool)

(assert (=> b!6748175 (= e!4075606 lt!2440696)))

(declare-fun b!6748176 () Bool)

(assert (=> b!6748176 (= e!4075595 (= lt!2440696 (Exists!3649 lambda!379506)))))

(declare-fun b!6748177 () Bool)

(declare-fun res!2760423 () Bool)

(assert (=> b!6748177 (=> res!2760423 e!4075610)))

(assert (=> b!6748177 (= res!2760423 (not (matchR!8764 r!7292 (_2!36859 lt!2440718))))))

(declare-fun b!6748178 () Bool)

(declare-fun res!2760417 () Bool)

(assert (=> b!6748178 (=> res!2760417 e!4075604)))

(assert (=> b!6748178 (= res!2760417 (not (= (unfocusZipper!2323 (Cons!65920 lt!2440701 Nil!65920)) (reg!16910 r!7292))))))

(declare-fun b!6748179 () Bool)

(declare-fun res!2760430 () Bool)

(assert (=> b!6748179 (=> res!2760430 e!4075602)))

(declare-fun isEmpty!38270 (List!66044) Bool)

(assert (=> b!6748179 (= res!2760430 (not (isEmpty!38270 (t!379745 zl!343))))))

(declare-fun b!6748180 () Bool)

(declare-fun tp!1849434 () Bool)

(declare-fun tp!1849433 () Bool)

(assert (=> b!6748180 (= e!4075603 (and tp!1849434 tp!1849433))))

(declare-fun b!6748181 () Bool)

(declare-fun res!2760432 () Bool)

(assert (=> b!6748181 (=> (not res!2760432) (not e!4075607))))

(declare-fun toList!10365 ((InoxSet Context!11930)) List!66044)

(assert (=> b!6748181 (= res!2760432 (= (toList!10365 z!1189) zl!343))))

(declare-fun b!6748182 () Bool)

(declare-fun tp!1849428 () Bool)

(assert (=> b!6748182 (= e!4075603 tp!1849428)))

(declare-fun b!6748183 () Bool)

(declare-fun res!2760421 () Bool)

(assert (=> b!6748183 (=> res!2760421 e!4075609)))

(assert (=> b!6748183 (= res!2760421 ((_ is Nil!65919) s!2326))))

(declare-fun b!6748184 () Bool)

(assert (=> b!6748184 (= e!4075609 e!4075600)))

(declare-fun res!2760438 () Bool)

(assert (=> b!6748184 (=> res!2760438 e!4075600)))

(declare-fun lt!2440704 () (InoxSet Context!11930))

(assert (=> b!6748184 (= res!2760438 (not (= lt!2440704 lt!2440694)))))

(declare-fun derivationStepZipperDown!1809 (Regex!16581 Context!11930 C!33432) (InoxSet Context!11930))

(assert (=> b!6748184 (= lt!2440694 (derivationStepZipperDown!1809 r!7292 (Context!11931 Nil!65918) (h!72367 s!2326)))))

(assert (=> b!6748184 (= lt!2440704 (derivationStepZipperUp!1735 (Context!11931 (Cons!65918 r!7292 Nil!65918)) (h!72367 s!2326)))))

(assert (=> b!6748184 (= lt!2440695 (derivationStepZipper!2525 z!1189 (h!72367 s!2326)))))

(declare-fun b!6748185 () Bool)

(declare-fun res!2760429 () Bool)

(assert (=> b!6748185 (=> res!2760429 e!4075605)))

(assert (=> b!6748185 (= res!2760429 (or (not (= lt!2440691 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6748186 () Bool)

(assert (=> b!6748186 (= e!4075612 e!4075605)))

(declare-fun res!2760437 () Bool)

(assert (=> b!6748186 (=> res!2760437 e!4075605)))

(assert (=> b!6748186 (= res!2760437 (not (= lt!2440695 (derivationStepZipperDown!1809 (reg!16910 r!7292) lt!2440713 (h!72367 s!2326)))))))

(declare-fun lt!2440697 () List!66042)

(assert (=> b!6748186 (= lt!2440713 (Context!11931 lt!2440697))))

(assert (=> b!6748186 (= (flatMap!2062 lt!2440717 lambda!379509) (derivationStepZipperUp!1735 lt!2440699 (h!72367 s!2326)))))

(declare-fun lt!2440716 () Unit!159853)

(assert (=> b!6748186 (= lt!2440716 (lemmaFlatMapOnSingletonSet!1588 lt!2440717 lt!2440699 lambda!379509))))

(declare-fun lt!2440705 () (InoxSet Context!11930))

(assert (=> b!6748186 (= lt!2440705 (derivationStepZipperUp!1735 lt!2440699 (h!72367 s!2326)))))

(assert (=> b!6748186 (= lt!2440717 (store ((as const (Array Context!11930 Bool)) false) lt!2440699 true))))

(assert (=> b!6748186 (= lt!2440699 (Context!11931 (Cons!65918 (reg!16910 r!7292) lt!2440697)))))

(assert (=> b!6748186 (= lt!2440697 (Cons!65918 r!7292 Nil!65918))))

(declare-fun b!6748187 () Bool)

(declare-fun res!2760425 () Bool)

(assert (=> b!6748187 (=> res!2760425 e!4075604)))

(assert (=> b!6748187 (= res!2760425 (not (= (unfocusZipper!2323 (Cons!65920 lt!2440713 Nil!65920)) r!7292)))))

(declare-fun b!6748188 () Bool)

(declare-fun res!2760439 () Bool)

(assert (=> b!6748188 (=> res!2760439 e!4075602)))

(assert (=> b!6748188 (= res!2760439 (not ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6748189 () Bool)

(assert (=> b!6748189 (= e!4075610 (inv!84699 lt!2440701))))

(assert (= (and start!654500 res!2760415) b!6748181))

(assert (= (and b!6748181 res!2760432) b!6748159))

(assert (= (and b!6748159 res!2760426) b!6748165))

(assert (= (and b!6748165 (not res!2760424)) b!6748179))

(assert (= (and b!6748179 (not res!2760430)) b!6748162))

(assert (= (and b!6748162 (not res!2760441)) b!6748188))

(assert (= (and b!6748188 (not res!2760439)) b!6748157))

(assert (= (and b!6748157 (not res!2760422)) b!6748158))

(assert (= (and b!6748158 (not res!2760436)) b!6748161))

(assert (= (and b!6748161 (not res!2760434)) b!6748175))

(assert (= (and b!6748161 (not res!2760427)) b!6748183))

(assert (= (and b!6748183 (not res!2760421)) b!6748184))

(assert (= (and b!6748184 (not res!2760438)) b!6748154))

(assert (= (and b!6748154 (not res!2760416)) b!6748186))

(assert (= (and b!6748186 (not res!2760437)) b!6748174))

(assert (= (and b!6748174 (not res!2760420)) b!6748185))

(assert (= (and b!6748185 (not res!2760429)) b!6748171))

(assert (= (and b!6748171 (not res!2760418)) b!6748168))

(assert (= (and b!6748168 (not res!2760428)) b!6748178))

(assert (= (and b!6748178 (not res!2760417)) b!6748187))

(assert (= (and b!6748187 (not res!2760425)) b!6748173))

(assert (= (and b!6748173 res!2760442) b!6748163))

(assert (= (and b!6748163 (not res!2760440)) b!6748169))

(assert (= (and b!6748169 res!2760433) b!6748176))

(assert (= (and b!6748173 (not res!2760431)) b!6748156))

(assert (= (and b!6748156 (not res!2760419)) b!6748166))

(assert (= (and b!6748166 (not res!2760435)) b!6748177))

(assert (= (and b!6748177 (not res!2760423)) b!6748189))

(assert (= (and start!654500 ((_ is ElementMatch!16581) r!7292)) b!6748155))

(assert (= (and start!654500 ((_ is Concat!25426) r!7292)) b!6748160))

(assert (= (and start!654500 ((_ is Star!16581) r!7292)) b!6748182))

(assert (= (and start!654500 ((_ is Union!16581) r!7292)) b!6748180))

(assert (= (and start!654500 condSetEmpty!46117) setIsEmpty!46117))

(assert (= (and start!654500 (not condSetEmpty!46117)) setNonEmpty!46117))

(assert (= setNonEmpty!46117 b!6748170))

(assert (= b!6748172 b!6748164))

(assert (= (and start!654500 ((_ is Cons!65920) zl!343)) b!6748172))

(assert (= (and start!654500 ((_ is Cons!65919) s!2326)) b!6748167))

(declare-fun m!7502814 () Bool)

(assert (=> b!6748181 m!7502814))

(declare-fun m!7502816 () Bool)

(assert (=> b!6748169 m!7502816))

(declare-fun m!7502818 () Bool)

(assert (=> b!6748169 m!7502818))

(declare-fun m!7502820 () Bool)

(assert (=> b!6748179 m!7502820))

(declare-fun m!7502822 () Bool)

(assert (=> b!6748157 m!7502822))

(assert (=> b!6748157 m!7502822))

(declare-fun m!7502824 () Bool)

(assert (=> b!6748157 m!7502824))

(declare-fun m!7502826 () Bool)

(assert (=> b!6748173 m!7502826))

(declare-fun m!7502828 () Bool)

(assert (=> b!6748173 m!7502828))

(declare-fun m!7502830 () Bool)

(assert (=> b!6748173 m!7502830))

(declare-fun m!7502832 () Bool)

(assert (=> b!6748184 m!7502832))

(declare-fun m!7502834 () Bool)

(assert (=> b!6748184 m!7502834))

(declare-fun m!7502836 () Bool)

(assert (=> b!6748184 m!7502836))

(assert (=> b!6748176 m!7502816))

(declare-fun m!7502838 () Bool)

(assert (=> b!6748165 m!7502838))

(declare-fun m!7502840 () Bool)

(assert (=> b!6748165 m!7502840))

(declare-fun m!7502842 () Bool)

(assert (=> b!6748165 m!7502842))

(declare-fun m!7502844 () Bool)

(assert (=> b!6748154 m!7502844))

(declare-fun m!7502846 () Bool)

(assert (=> b!6748154 m!7502846))

(declare-fun m!7502848 () Bool)

(assert (=> b!6748154 m!7502848))

(declare-fun m!7502850 () Bool)

(assert (=> b!6748187 m!7502850))

(declare-fun m!7502852 () Bool)

(assert (=> b!6748186 m!7502852))

(declare-fun m!7502854 () Bool)

(assert (=> b!6748186 m!7502854))

(declare-fun m!7502856 () Bool)

(assert (=> b!6748186 m!7502856))

(declare-fun m!7502858 () Bool)

(assert (=> b!6748186 m!7502858))

(declare-fun m!7502860 () Bool)

(assert (=> b!6748186 m!7502860))

(declare-fun m!7502862 () Bool)

(assert (=> b!6748172 m!7502862))

(declare-fun m!7502864 () Bool)

(assert (=> b!6748162 m!7502864))

(declare-fun m!7502866 () Bool)

(assert (=> b!6748161 m!7502866))

(declare-fun m!7502868 () Bool)

(assert (=> b!6748161 m!7502868))

(declare-fun m!7502870 () Bool)

(assert (=> b!6748161 m!7502870))

(assert (=> b!6748161 m!7502816))

(declare-fun m!7502872 () Bool)

(assert (=> b!6748161 m!7502872))

(declare-fun m!7502874 () Bool)

(assert (=> b!6748161 m!7502874))

(assert (=> b!6748161 m!7502816))

(assert (=> b!6748161 m!7502816))

(declare-fun m!7502876 () Bool)

(assert (=> b!6748161 m!7502876))

(assert (=> b!6748161 m!7502818))

(declare-fun m!7502878 () Bool)

(assert (=> b!6748161 m!7502878))

(declare-fun m!7502880 () Bool)

(assert (=> start!654500 m!7502880))

(declare-fun m!7502882 () Bool)

(assert (=> b!6748159 m!7502882))

(declare-fun m!7502884 () Bool)

(assert (=> setNonEmpty!46117 m!7502884))

(declare-fun m!7502886 () Bool)

(assert (=> b!6748189 m!7502886))

(declare-fun m!7502888 () Bool)

(assert (=> b!6748156 m!7502888))

(declare-fun m!7502890 () Bool)

(assert (=> b!6748156 m!7502890))

(declare-fun m!7502892 () Bool)

(assert (=> b!6748174 m!7502892))

(declare-fun m!7502894 () Bool)

(assert (=> b!6748174 m!7502894))

(assert (=> b!6748174 m!7502894))

(declare-fun m!7502896 () Bool)

(assert (=> b!6748174 m!7502896))

(declare-fun m!7502898 () Bool)

(assert (=> b!6748177 m!7502898))

(declare-fun m!7502900 () Bool)

(assert (=> b!6748178 m!7502900))

(declare-fun m!7502902 () Bool)

(assert (=> b!6748166 m!7502902))

(declare-fun m!7502904 () Bool)

(assert (=> b!6748168 m!7502904))

(declare-fun m!7502906 () Bool)

(assert (=> b!6748168 m!7502906))

(declare-fun m!7502908 () Bool)

(assert (=> b!6748168 m!7502908))

(declare-fun m!7502910 () Bool)

(assert (=> b!6748168 m!7502910))

(declare-fun m!7502912 () Bool)

(assert (=> b!6748168 m!7502912))

(declare-fun m!7502914 () Bool)

(assert (=> b!6748168 m!7502914))

(declare-fun m!7502916 () Bool)

(assert (=> b!6748168 m!7502916))

(declare-fun m!7502918 () Bool)

(assert (=> b!6748168 m!7502918))

(declare-fun m!7502920 () Bool)

(assert (=> b!6748168 m!7502920))

(declare-fun m!7502922 () Bool)

(assert (=> b!6748171 m!7502922))

(check-sat (not b!6748168) (not b!6748186) (not b!6748166) (not b!6748165) (not b!6748182) (not b!6748169) (not setNonEmpty!46117) (not b!6748177) (not b!6748171) (not b!6748160) (not b!6748184) (not b!6748180) (not b!6748157) (not b!6748172) (not b!6748167) (not b!6748187) (not start!654500) (not b!6748189) (not b!6748173) (not b!6748156) (not b!6748159) (not b!6748164) (not b!6748179) (not b!6748181) tp_is_empty!42415 (not b!6748154) (not b!6748178) (not b!6748174) (not b!6748170) (not b!6748161) (not b!6748176) (not b!6748162))
(check-sat)
(get-model)

(declare-fun d!2119676 () Bool)

(declare-fun c!1252088 () Bool)

(assert (=> d!2119676 (= c!1252088 (and ((_ is ElementMatch!16581) r!7292) (= (c!1252033 r!7292) (h!72367 s!2326))))))

(declare-fun e!4075709 () (InoxSet Context!11930))

(assert (=> d!2119676 (= (derivationStepZipperDown!1809 r!7292 (Context!11931 Nil!65918) (h!72367 s!2326)) e!4075709)))

(declare-fun b!6748362 () Bool)

(declare-fun e!4075708 () (InoxSet Context!11930))

(declare-fun call!610203 () (InoxSet Context!11930))

(declare-fun call!610204 () (InoxSet Context!11930))

(assert (=> b!6748362 (= e!4075708 ((_ map or) call!610203 call!610204))))

(declare-fun b!6748363 () Bool)

(declare-fun e!4075705 () (InoxSet Context!11930))

(declare-fun e!4075704 () (InoxSet Context!11930))

(assert (=> b!6748363 (= e!4075705 e!4075704)))

(declare-fun c!1252085 () Bool)

(assert (=> b!6748363 (= c!1252085 ((_ is Concat!25426) r!7292))))

(declare-fun c!1252089 () Bool)

(declare-fun call!610207 () List!66042)

(declare-fun bm!610198 () Bool)

(declare-fun $colon$colon!2395 (List!66042 Regex!16581) List!66042)

(assert (=> bm!610198 (= call!610207 ($colon$colon!2395 (exprs!6465 (Context!11931 Nil!65918)) (ite (or c!1252089 c!1252085) (regTwo!33674 r!7292) r!7292)))))

(declare-fun b!6748364 () Bool)

(declare-fun e!4075706 () Bool)

(assert (=> b!6748364 (= c!1252089 e!4075706)))

(declare-fun res!2760509 () Bool)

(assert (=> b!6748364 (=> (not res!2760509) (not e!4075706))))

(assert (=> b!6748364 (= res!2760509 ((_ is Concat!25426) r!7292))))

(assert (=> b!6748364 (= e!4075708 e!4075705)))

(declare-fun b!6748365 () Bool)

(declare-fun call!610205 () (InoxSet Context!11930))

(assert (=> b!6748365 (= e!4075705 ((_ map or) call!610203 call!610205))))

(declare-fun c!1252086 () Bool)

(declare-fun bm!610199 () Bool)

(declare-fun call!610206 () List!66042)

(assert (=> bm!610199 (= call!610204 (derivationStepZipperDown!1809 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))) (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206)) (h!72367 s!2326)))))

(declare-fun b!6748366 () Bool)

(declare-fun e!4075707 () (InoxSet Context!11930))

(assert (=> b!6748366 (= e!4075707 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6748367 () Bool)

(assert (=> b!6748367 (= e!4075709 e!4075708)))

(assert (=> b!6748367 (= c!1252086 ((_ is Union!16581) r!7292))))

(declare-fun bm!610200 () Bool)

(declare-fun call!610208 () (InoxSet Context!11930))

(assert (=> bm!610200 (= call!610208 call!610205)))

(declare-fun b!6748368 () Bool)

(declare-fun nullable!6566 (Regex!16581) Bool)

(assert (=> b!6748368 (= e!4075706 (nullable!6566 (regOne!33674 r!7292)))))

(declare-fun bm!610201 () Bool)

(assert (=> bm!610201 (= call!610206 call!610207)))

(declare-fun bm!610202 () Bool)

(assert (=> bm!610202 (= call!610205 call!610204)))

(declare-fun b!6748369 () Bool)

(assert (=> b!6748369 (= e!4075709 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 Nil!65918) true))))

(declare-fun bm!610203 () Bool)

(assert (=> bm!610203 (= call!610203 (derivationStepZipperDown!1809 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)) (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207)) (h!72367 s!2326)))))

(declare-fun b!6748370 () Bool)

(declare-fun c!1252087 () Bool)

(assert (=> b!6748370 (= c!1252087 ((_ is Star!16581) r!7292))))

(assert (=> b!6748370 (= e!4075704 e!4075707)))

(declare-fun b!6748371 () Bool)

(assert (=> b!6748371 (= e!4075707 call!610208)))

(declare-fun b!6748372 () Bool)

(assert (=> b!6748372 (= e!4075704 call!610208)))

(assert (= (and d!2119676 c!1252088) b!6748369))

(assert (= (and d!2119676 (not c!1252088)) b!6748367))

(assert (= (and b!6748367 c!1252086) b!6748362))

(assert (= (and b!6748367 (not c!1252086)) b!6748364))

(assert (= (and b!6748364 res!2760509) b!6748368))

(assert (= (and b!6748364 c!1252089) b!6748365))

(assert (= (and b!6748364 (not c!1252089)) b!6748363))

(assert (= (and b!6748363 c!1252085) b!6748372))

(assert (= (and b!6748363 (not c!1252085)) b!6748370))

(assert (= (and b!6748370 c!1252087) b!6748371))

(assert (= (and b!6748370 (not c!1252087)) b!6748366))

(assert (= (or b!6748372 b!6748371) bm!610201))

(assert (= (or b!6748372 b!6748371) bm!610200))

(assert (= (or b!6748365 bm!610201) bm!610198))

(assert (= (or b!6748365 bm!610200) bm!610202))

(assert (= (or b!6748362 bm!610202) bm!610199))

(assert (= (or b!6748362 b!6748365) bm!610203))

(declare-fun m!7503032 () Bool)

(assert (=> bm!610199 m!7503032))

(declare-fun m!7503034 () Bool)

(assert (=> bm!610198 m!7503034))

(declare-fun m!7503036 () Bool)

(assert (=> bm!610203 m!7503036))

(declare-fun m!7503038 () Bool)

(assert (=> b!6748369 m!7503038))

(declare-fun m!7503040 () Bool)

(assert (=> b!6748368 m!7503040))

(assert (=> b!6748184 d!2119676))

(declare-fun b!6748415 () Bool)

(declare-fun e!4075734 () (InoxSet Context!11930))

(assert (=> b!6748415 (= e!4075734 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2119712 () Bool)

(declare-fun c!1252108 () Bool)

(declare-fun e!4075735 () Bool)

(assert (=> d!2119712 (= c!1252108 e!4075735)))

(declare-fun res!2760516 () Bool)

(assert (=> d!2119712 (=> (not res!2760516) (not e!4075735))))

(assert (=> d!2119712 (= res!2760516 ((_ is Cons!65918) (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))

(declare-fun e!4075736 () (InoxSet Context!11930))

(assert (=> d!2119712 (= (derivationStepZipperUp!1735 (Context!11931 (Cons!65918 r!7292 Nil!65918)) (h!72367 s!2326)) e!4075736)))

(declare-fun b!6748416 () Bool)

(declare-fun call!610225 () (InoxSet Context!11930))

(assert (=> b!6748416 (= e!4075734 call!610225)))

(declare-fun bm!610220 () Bool)

(assert (=> bm!610220 (= call!610225 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72367 s!2326)))))

(declare-fun b!6748417 () Bool)

(assert (=> b!6748417 (= e!4075736 ((_ map or) call!610225 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72367 s!2326))))))

(declare-fun b!6748418 () Bool)

(assert (=> b!6748418 (= e!4075736 e!4075734)))

(declare-fun c!1252109 () Bool)

(assert (=> b!6748418 (= c!1252109 ((_ is Cons!65918) (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))

(declare-fun b!6748419 () Bool)

(assert (=> b!6748419 (= e!4075735 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(assert (= (and d!2119712 res!2760516) b!6748419))

(assert (= (and d!2119712 c!1252108) b!6748417))

(assert (= (and d!2119712 (not c!1252108)) b!6748418))

(assert (= (and b!6748418 c!1252109) b!6748416))

(assert (= (and b!6748418 (not c!1252109)) b!6748415))

(assert (= (or b!6748417 b!6748416) bm!610220))

(declare-fun m!7503046 () Bool)

(assert (=> bm!610220 m!7503046))

(declare-fun m!7503048 () Bool)

(assert (=> b!6748417 m!7503048))

(declare-fun m!7503050 () Bool)

(assert (=> b!6748419 m!7503050))

(assert (=> b!6748184 d!2119712))

(declare-fun bs!1793656 () Bool)

(declare-fun d!2119718 () Bool)

(assert (= bs!1793656 (and d!2119718 b!6748154)))

(declare-fun lambda!379524 () Int)

(assert (=> bs!1793656 (= lambda!379524 lambda!379509)))

(assert (=> d!2119718 true))

(assert (=> d!2119718 (= (derivationStepZipper!2525 z!1189 (h!72367 s!2326)) (flatMap!2062 z!1189 lambda!379524))))

(declare-fun bs!1793658 () Bool)

(assert (= bs!1793658 d!2119718))

(declare-fun m!7503080 () Bool)

(assert (=> bs!1793658 m!7503080))

(assert (=> b!6748184 d!2119718))

(declare-fun b!6748497 () Bool)

(declare-fun e!4075782 () Bool)

(declare-fun lt!2440749 () Regex!16581)

(declare-fun isEmptyExpr!1944 (Regex!16581) Bool)

(assert (=> b!6748497 (= e!4075782 (isEmptyExpr!1944 lt!2440749))))

(declare-fun b!6748498 () Bool)

(declare-fun e!4075786 () Bool)

(declare-fun isEmpty!38271 (List!66042) Bool)

(assert (=> b!6748498 (= e!4075786 (isEmpty!38271 (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6748499 () Bool)

(declare-fun e!4075787 () Regex!16581)

(assert (=> b!6748499 (= e!4075787 EmptyExpr!16581)))

(declare-fun b!6748501 () Bool)

(declare-fun e!4075783 () Bool)

(declare-fun head!13584 (List!66042) Regex!16581)

(assert (=> b!6748501 (= e!4075783 (= lt!2440749 (head!13584 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6748502 () Bool)

(assert (=> b!6748502 (= e!4075782 e!4075783)))

(declare-fun c!1252142 () Bool)

(declare-fun tail!12669 (List!66042) List!66042)

(assert (=> b!6748502 (= c!1252142 (isEmpty!38271 (tail!12669 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6748503 () Bool)

(declare-fun isConcat!1467 (Regex!16581) Bool)

(assert (=> b!6748503 (= e!4075783 (isConcat!1467 lt!2440749))))

(declare-fun b!6748504 () Bool)

(declare-fun e!4075785 () Regex!16581)

(assert (=> b!6748504 (= e!4075785 (h!72366 (exprs!6465 (h!72368 zl!343))))))

(declare-fun b!6748505 () Bool)

(assert (=> b!6748505 (= e!4075785 e!4075787)))

(declare-fun c!1252144 () Bool)

(assert (=> b!6748505 (= c!1252144 ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343))))))

(declare-fun b!6748506 () Bool)

(assert (=> b!6748506 (= e!4075787 (Concat!25426 (h!72366 (exprs!6465 (h!72368 zl!343))) (generalisedConcat!2178 (t!379743 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun d!2119732 () Bool)

(declare-fun e!4075784 () Bool)

(assert (=> d!2119732 e!4075784))

(declare-fun res!2760533 () Bool)

(assert (=> d!2119732 (=> (not res!2760533) (not e!4075784))))

(assert (=> d!2119732 (= res!2760533 (validRegex!8317 lt!2440749))))

(assert (=> d!2119732 (= lt!2440749 e!4075785)))

(declare-fun c!1252145 () Bool)

(assert (=> d!2119732 (= c!1252145 e!4075786)))

(declare-fun res!2760532 () Bool)

(assert (=> d!2119732 (=> (not res!2760532) (not e!4075786))))

(assert (=> d!2119732 (= res!2760532 ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343))))))

(declare-fun lambda!379537 () Int)

(declare-fun forall!15778 (List!66042 Int) Bool)

(assert (=> d!2119732 (forall!15778 (exprs!6465 (h!72368 zl!343)) lambda!379537)))

(assert (=> d!2119732 (= (generalisedConcat!2178 (exprs!6465 (h!72368 zl!343))) lt!2440749)))

(declare-fun b!6748500 () Bool)

(assert (=> b!6748500 (= e!4075784 e!4075782)))

(declare-fun c!1252143 () Bool)

(assert (=> b!6748500 (= c!1252143 (isEmpty!38271 (exprs!6465 (h!72368 zl!343))))))

(assert (= (and d!2119732 res!2760532) b!6748498))

(assert (= (and d!2119732 c!1252145) b!6748504))

(assert (= (and d!2119732 (not c!1252145)) b!6748505))

(assert (= (and b!6748505 c!1252144) b!6748506))

(assert (= (and b!6748505 (not c!1252144)) b!6748499))

(assert (= (and d!2119732 res!2760533) b!6748500))

(assert (= (and b!6748500 c!1252143) b!6748497))

(assert (= (and b!6748500 (not c!1252143)) b!6748502))

(assert (= (and b!6748502 c!1252142) b!6748501))

(assert (= (and b!6748502 (not c!1252142)) b!6748503))

(declare-fun m!7503110 () Bool)

(assert (=> b!6748503 m!7503110))

(declare-fun m!7503112 () Bool)

(assert (=> b!6748501 m!7503112))

(declare-fun m!7503114 () Bool)

(assert (=> b!6748506 m!7503114))

(declare-fun m!7503116 () Bool)

(assert (=> d!2119732 m!7503116))

(declare-fun m!7503118 () Bool)

(assert (=> d!2119732 m!7503118))

(declare-fun m!7503120 () Bool)

(assert (=> b!6748500 m!7503120))

(declare-fun m!7503122 () Bool)

(assert (=> b!6748498 m!7503122))

(declare-fun m!7503124 () Bool)

(assert (=> b!6748497 m!7503124))

(declare-fun m!7503126 () Bool)

(assert (=> b!6748502 m!7503126))

(assert (=> b!6748502 m!7503126))

(declare-fun m!7503128 () Bool)

(assert (=> b!6748502 m!7503128))

(assert (=> b!6748162 d!2119732))

(declare-fun bs!1793679 () Bool)

(declare-fun d!2119742 () Bool)

(assert (= bs!1793679 (and d!2119742 b!6748161)))

(declare-fun lambda!379553 () Int)

(assert (=> bs!1793679 (= lambda!379553 lambda!379506)))

(assert (=> bs!1793679 (not (= lambda!379553 lambda!379507))))

(assert (=> bs!1793679 (not (= lambda!379553 lambda!379508))))

(assert (=> d!2119742 true))

(assert (=> d!2119742 true))

(assert (=> d!2119742 true))

(declare-fun lambda!379555 () Int)

(assert (=> bs!1793679 (not (= lambda!379555 lambda!379506))))

(assert (=> bs!1793679 (not (= lambda!379555 lambda!379507))))

(assert (=> bs!1793679 (= lambda!379555 lambda!379508)))

(declare-fun bs!1793682 () Bool)

(assert (= bs!1793682 d!2119742))

(assert (=> bs!1793682 (not (= lambda!379555 lambda!379553))))

(assert (=> d!2119742 true))

(assert (=> d!2119742 true))

(assert (=> d!2119742 true))

(assert (=> d!2119742 (= (Exists!3649 lambda!379553) (Exists!3649 lambda!379555))))

(declare-fun lt!2440758 () Unit!159853)

(declare-fun choose!50338 (Regex!16581 Regex!16581 List!66043) Unit!159853)

(assert (=> d!2119742 (= lt!2440758 (choose!50338 (reg!16910 r!7292) r!7292 s!2326))))

(assert (=> d!2119742 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2119742 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2176 (reg!16910 r!7292) r!7292 s!2326) lt!2440758)))

(declare-fun m!7503146 () Bool)

(assert (=> bs!1793682 m!7503146))

(declare-fun m!7503148 () Bool)

(assert (=> bs!1793682 m!7503148))

(declare-fun m!7503150 () Bool)

(assert (=> bs!1793682 m!7503150))

(declare-fun m!7503154 () Bool)

(assert (=> bs!1793682 m!7503154))

(assert (=> b!6748161 d!2119742))

(declare-fun bs!1793685 () Bool)

(declare-fun d!2119756 () Bool)

(assert (= bs!1793685 (and d!2119756 b!6748161)))

(declare-fun lambda!379560 () Int)

(assert (=> bs!1793685 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379560 lambda!379506))))

(declare-fun bs!1793686 () Bool)

(assert (= bs!1793686 (and d!2119756 d!2119742)))

(assert (=> bs!1793686 (not (= lambda!379560 lambda!379555))))

(assert (=> bs!1793685 (not (= lambda!379560 lambda!379507))))

(assert (=> bs!1793686 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379560 lambda!379553))))

(assert (=> bs!1793685 (not (= lambda!379560 lambda!379508))))

(assert (=> d!2119756 true))

(assert (=> d!2119756 true))

(declare-fun lambda!379563 () Int)

(assert (=> bs!1793685 (not (= lambda!379563 lambda!379506))))

(assert (=> bs!1793686 (not (= lambda!379563 lambda!379555))))

(assert (=> bs!1793685 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379563 lambda!379507))))

(assert (=> bs!1793686 (not (= lambda!379563 lambda!379553))))

(assert (=> bs!1793685 (not (= lambda!379563 lambda!379508))))

(declare-fun bs!1793687 () Bool)

(assert (= bs!1793687 d!2119756))

(assert (=> bs!1793687 (not (= lambda!379563 lambda!379560))))

(assert (=> d!2119756 true))

(assert (=> d!2119756 true))

(assert (=> d!2119756 (= (Exists!3649 lambda!379560) (Exists!3649 lambda!379563))))

(declare-fun lt!2440770 () Unit!159853)

(declare-fun choose!50339 (Regex!16581 List!66043) Unit!159853)

(assert (=> d!2119756 (= lt!2440770 (choose!50339 (reg!16910 r!7292) s!2326))))

(assert (=> d!2119756 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2119756 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!740 (reg!16910 r!7292) s!2326) lt!2440770)))

(declare-fun m!7503176 () Bool)

(assert (=> bs!1793687 m!7503176))

(declare-fun m!7503178 () Bool)

(assert (=> bs!1793687 m!7503178))

(declare-fun m!7503180 () Bool)

(assert (=> bs!1793687 m!7503180))

(assert (=> bs!1793687 m!7503154))

(assert (=> b!6748161 d!2119756))

(declare-fun d!2119760 () Bool)

(declare-fun isEmpty!38272 (Option!16468) Bool)

(assert (=> d!2119760 (= (isDefined!13171 lt!2440707) (not (isEmpty!38272 lt!2440707)))))

(declare-fun bs!1793695 () Bool)

(assert (= bs!1793695 d!2119760))

(declare-fun m!7503182 () Bool)

(assert (=> bs!1793695 m!7503182))

(assert (=> b!6748161 d!2119760))

(declare-fun d!2119762 () Bool)

(declare-fun choose!50341 (Int) Bool)

(assert (=> d!2119762 (= (Exists!3649 lambda!379508) (choose!50341 lambda!379508))))

(declare-fun bs!1793700 () Bool)

(assert (= bs!1793700 d!2119762))

(declare-fun m!7503190 () Bool)

(assert (=> bs!1793700 m!7503190))

(assert (=> b!6748161 d!2119762))

(declare-fun d!2119766 () Bool)

(assert (=> d!2119766 (= (isEmpty!38269 s!2326) ((_ is Nil!65919) s!2326))))

(assert (=> b!6748161 d!2119766))

(declare-fun d!2119770 () Bool)

(assert (=> d!2119770 (= (Exists!3649 lambda!379507) (choose!50341 lambda!379507))))

(declare-fun bs!1793703 () Bool)

(assert (= bs!1793703 d!2119770))

(declare-fun m!7503194 () Bool)

(assert (=> bs!1793703 m!7503194))

(assert (=> b!6748161 d!2119770))

(declare-fun d!2119772 () Bool)

(assert (=> d!2119772 (= (Exists!3649 lambda!379506) (choose!50341 lambda!379506))))

(declare-fun bs!1793704 () Bool)

(assert (= bs!1793704 d!2119772))

(declare-fun m!7503196 () Bool)

(assert (=> bs!1793704 m!7503196))

(assert (=> b!6748161 d!2119772))

(declare-fun b!6748675 () Bool)

(declare-fun e!4075886 () Option!16468)

(assert (=> b!6748675 (= e!4075886 (Some!16467 (tuple2!67113 Nil!65919 s!2326)))))

(declare-fun d!2119774 () Bool)

(declare-fun e!4075885 () Bool)

(assert (=> d!2119774 e!4075885))

(declare-fun res!2760628 () Bool)

(assert (=> d!2119774 (=> res!2760628 e!4075885)))

(declare-fun e!4075884 () Bool)

(assert (=> d!2119774 (= res!2760628 e!4075884)))

(declare-fun res!2760627 () Bool)

(assert (=> d!2119774 (=> (not res!2760627) (not e!4075884))))

(declare-fun lt!2440786 () Option!16468)

(assert (=> d!2119774 (= res!2760627 (isDefined!13171 lt!2440786))))

(assert (=> d!2119774 (= lt!2440786 e!4075886)))

(declare-fun c!1252185 () Bool)

(declare-fun e!4075883 () Bool)

(assert (=> d!2119774 (= c!1252185 e!4075883)))

(declare-fun res!2760626 () Bool)

(assert (=> d!2119774 (=> (not res!2760626) (not e!4075883))))

(assert (=> d!2119774 (= res!2760626 (matchR!8764 (reg!16910 r!7292) Nil!65919))))

(assert (=> d!2119774 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2119774 (= (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326) lt!2440786)))

(declare-fun b!6748676 () Bool)

(declare-fun res!2760630 () Bool)

(assert (=> b!6748676 (=> (not res!2760630) (not e!4075884))))

(assert (=> b!6748676 (= res!2760630 (matchR!8764 r!7292 (_2!36859 (get!22941 lt!2440786))))))

(declare-fun b!6748677 () Bool)

(declare-fun e!4075882 () Option!16468)

(assert (=> b!6748677 (= e!4075882 None!16467)))

(declare-fun b!6748678 () Bool)

(declare-fun res!2760629 () Bool)

(assert (=> b!6748678 (=> (not res!2760629) (not e!4075884))))

(assert (=> b!6748678 (= res!2760629 (matchR!8764 (reg!16910 r!7292) (_1!36859 (get!22941 lt!2440786))))))

(declare-fun b!6748679 () Bool)

(assert (=> b!6748679 (= e!4075886 e!4075882)))

(declare-fun c!1252184 () Bool)

(assert (=> b!6748679 (= c!1252184 ((_ is Nil!65919) s!2326))))

(declare-fun b!6748680 () Bool)

(assert (=> b!6748680 (= e!4075883 (matchR!8764 r!7292 s!2326))))

(declare-fun b!6748681 () Bool)

(assert (=> b!6748681 (= e!4075884 (= (++!14735 (_1!36859 (get!22941 lt!2440786)) (_2!36859 (get!22941 lt!2440786))) s!2326))))

(declare-fun b!6748682 () Bool)

(declare-fun lt!2440788 () Unit!159853)

(declare-fun lt!2440787 () Unit!159853)

(assert (=> b!6748682 (= lt!2440788 lt!2440787)))

(assert (=> b!6748682 (= (++!14735 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2707 (List!66043 C!33432 List!66043 List!66043) Unit!159853)

(assert (=> b!6748682 (= lt!2440787 (lemmaMoveElementToOtherListKeepsConcatEq!2707 Nil!65919 (h!72367 s!2326) (t!379744 s!2326) s!2326))))

(assert (=> b!6748682 (= e!4075882 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326) s!2326))))

(declare-fun b!6748683 () Bool)

(assert (=> b!6748683 (= e!4075885 (not (isDefined!13171 lt!2440786)))))

(assert (= (and d!2119774 res!2760626) b!6748680))

(assert (= (and d!2119774 c!1252185) b!6748675))

(assert (= (and d!2119774 (not c!1252185)) b!6748679))

(assert (= (and b!6748679 c!1252184) b!6748677))

(assert (= (and b!6748679 (not c!1252184)) b!6748682))

(assert (= (and d!2119774 res!2760627) b!6748678))

(assert (= (and b!6748678 res!2760629) b!6748676))

(assert (= (and b!6748676 res!2760630) b!6748681))

(assert (= (and d!2119774 (not res!2760628)) b!6748683))

(declare-fun m!7503268 () Bool)

(assert (=> d!2119774 m!7503268))

(declare-fun m!7503270 () Bool)

(assert (=> d!2119774 m!7503270))

(assert (=> d!2119774 m!7503154))

(declare-fun m!7503272 () Bool)

(assert (=> b!6748682 m!7503272))

(assert (=> b!6748682 m!7503272))

(declare-fun m!7503274 () Bool)

(assert (=> b!6748682 m!7503274))

(declare-fun m!7503278 () Bool)

(assert (=> b!6748682 m!7503278))

(assert (=> b!6748682 m!7503272))

(declare-fun m!7503282 () Bool)

(assert (=> b!6748682 m!7503282))

(declare-fun m!7503284 () Bool)

(assert (=> b!6748676 m!7503284))

(declare-fun m!7503286 () Bool)

(assert (=> b!6748676 m!7503286))

(assert (=> b!6748683 m!7503268))

(assert (=> b!6748681 m!7503284))

(declare-fun m!7503288 () Bool)

(assert (=> b!6748681 m!7503288))

(assert (=> b!6748680 m!7502840))

(assert (=> b!6748678 m!7503284))

(declare-fun m!7503290 () Bool)

(assert (=> b!6748678 m!7503290))

(assert (=> b!6748161 d!2119774))

(declare-fun bs!1793717 () Bool)

(declare-fun d!2119796 () Bool)

(assert (= bs!1793717 (and d!2119796 b!6748161)))

(declare-fun lambda!379572 () Int)

(assert (=> bs!1793717 (= lambda!379572 lambda!379506)))

(declare-fun bs!1793718 () Bool)

(assert (= bs!1793718 (and d!2119796 d!2119742)))

(assert (=> bs!1793718 (not (= lambda!379572 lambda!379555))))

(assert (=> bs!1793717 (not (= lambda!379572 lambda!379507))))

(declare-fun bs!1793719 () Bool)

(assert (= bs!1793719 (and d!2119796 d!2119756)))

(assert (=> bs!1793719 (not (= lambda!379572 lambda!379563))))

(assert (=> bs!1793718 (= lambda!379572 lambda!379553)))

(assert (=> bs!1793717 (not (= lambda!379572 lambda!379508))))

(assert (=> bs!1793719 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379572 lambda!379560))))

(assert (=> d!2119796 true))

(assert (=> d!2119796 true))

(assert (=> d!2119796 true))

(assert (=> d!2119796 (= (isDefined!13171 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326)) (Exists!3649 lambda!379572))))

(declare-fun lt!2440794 () Unit!159853)

(declare-fun choose!50342 (Regex!16581 Regex!16581 List!66043) Unit!159853)

(assert (=> d!2119796 (= lt!2440794 (choose!50342 (reg!16910 r!7292) r!7292 s!2326))))

(assert (=> d!2119796 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2119796 (= (lemmaFindConcatSeparationEquivalentToExists!2646 (reg!16910 r!7292) r!7292 s!2326) lt!2440794)))

(declare-fun bs!1793720 () Bool)

(assert (= bs!1793720 d!2119796))

(assert (=> bs!1793720 m!7503154))

(declare-fun m!7503308 () Bool)

(assert (=> bs!1793720 m!7503308))

(assert (=> bs!1793720 m!7502874))

(declare-fun m!7503310 () Bool)

(assert (=> bs!1793720 m!7503310))

(declare-fun m!7503312 () Bool)

(assert (=> bs!1793720 m!7503312))

(assert (=> bs!1793720 m!7502874))

(assert (=> b!6748161 d!2119796))

(declare-fun d!2119802 () Bool)

(declare-fun e!4075927 () Bool)

(assert (=> d!2119802 e!4075927))

(declare-fun res!2760648 () Bool)

(assert (=> d!2119802 (=> (not res!2760648) (not e!4075927))))

(declare-fun lt!2440797 () List!66044)

(declare-fun noDuplicate!2372 (List!66044) Bool)

(assert (=> d!2119802 (= res!2760648 (noDuplicate!2372 lt!2440797))))

(declare-fun choose!50343 ((InoxSet Context!11930)) List!66044)

(assert (=> d!2119802 (= lt!2440797 (choose!50343 z!1189))))

(assert (=> d!2119802 (= (toList!10365 z!1189) lt!2440797)))

(declare-fun b!6748765 () Bool)

(declare-fun content!12819 (List!66044) (InoxSet Context!11930))

(assert (=> b!6748765 (= e!4075927 (= (content!12819 lt!2440797) z!1189))))

(assert (= (and d!2119802 res!2760648) b!6748765))

(declare-fun m!7503316 () Bool)

(assert (=> d!2119802 m!7503316))

(declare-fun m!7503318 () Bool)

(assert (=> d!2119802 m!7503318))

(declare-fun m!7503320 () Bool)

(assert (=> b!6748765 m!7503320))

(assert (=> b!6748181 d!2119802))

(declare-fun d!2119812 () Bool)

(declare-fun lt!2440800 () Regex!16581)

(assert (=> d!2119812 (validRegex!8317 lt!2440800)))

(assert (=> d!2119812 (= lt!2440800 (generalisedUnion!2425 (unfocusZipperList!2002 zl!343)))))

(assert (=> d!2119812 (= (unfocusZipper!2323 zl!343) lt!2440800)))

(declare-fun bs!1793725 () Bool)

(assert (= bs!1793725 d!2119812))

(declare-fun m!7503322 () Bool)

(assert (=> bs!1793725 m!7503322))

(assert (=> bs!1793725 m!7502822))

(assert (=> bs!1793725 m!7502822))

(assert (=> bs!1793725 m!7502824))

(assert (=> b!6748159 d!2119812))

(assert (=> b!6748169 d!2119772))

(assert (=> b!6748169 d!2119770))

(declare-fun bs!1793726 () Bool)

(declare-fun d!2119814 () Bool)

(assert (= bs!1793726 (and d!2119814 d!2119732)))

(declare-fun lambda!379575 () Int)

(assert (=> bs!1793726 (= lambda!379575 lambda!379537)))

(assert (=> d!2119814 (= (inv!84699 lt!2440701) (forall!15778 (exprs!6465 lt!2440701) lambda!379575))))

(declare-fun bs!1793727 () Bool)

(assert (= bs!1793727 d!2119814))

(declare-fun m!7503324 () Bool)

(assert (=> bs!1793727 m!7503324))

(assert (=> b!6748189 d!2119814))

(declare-fun d!2119816 () Bool)

(declare-fun choose!50344 ((InoxSet Context!11930) Int) (InoxSet Context!11930))

(assert (=> d!2119816 (= (flatMap!2062 lt!2440715 lambda!379509) (choose!50344 lt!2440715 lambda!379509))))

(declare-fun bs!1793728 () Bool)

(assert (= bs!1793728 d!2119816))

(declare-fun m!7503326 () Bool)

(assert (=> bs!1793728 m!7503326))

(assert (=> b!6748168 d!2119816))

(declare-fun b!6748766 () Bool)

(declare-fun e!4075928 () (InoxSet Context!11930))

(assert (=> b!6748766 (= e!4075928 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2119818 () Bool)

(declare-fun c!1252191 () Bool)

(declare-fun e!4075929 () Bool)

(assert (=> d!2119818 (= c!1252191 e!4075929)))

(declare-fun res!2760649 () Bool)

(assert (=> d!2119818 (=> (not res!2760649) (not e!4075929))))

(assert (=> d!2119818 (= res!2760649 ((_ is Cons!65918) (exprs!6465 lt!2440701)))))

(declare-fun e!4075930 () (InoxSet Context!11930))

(assert (=> d!2119818 (= (derivationStepZipperUp!1735 lt!2440701 (h!72367 s!2326)) e!4075930)))

(declare-fun b!6748767 () Bool)

(declare-fun call!610251 () (InoxSet Context!11930))

(assert (=> b!6748767 (= e!4075928 call!610251)))

(declare-fun bm!610246 () Bool)

(assert (=> bm!610246 (= call!610251 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440701)) (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (h!72367 s!2326)))))

(declare-fun b!6748768 () Bool)

(assert (=> b!6748768 (= e!4075930 ((_ map or) call!610251 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (h!72367 s!2326))))))

(declare-fun b!6748769 () Bool)

(assert (=> b!6748769 (= e!4075930 e!4075928)))

(declare-fun c!1252192 () Bool)

(assert (=> b!6748769 (= c!1252192 ((_ is Cons!65918) (exprs!6465 lt!2440701)))))

(declare-fun b!6748770 () Bool)

(assert (=> b!6748770 (= e!4075929 (nullable!6566 (h!72366 (exprs!6465 lt!2440701))))))

(assert (= (and d!2119818 res!2760649) b!6748770))

(assert (= (and d!2119818 c!1252191) b!6748768))

(assert (= (and d!2119818 (not c!1252191)) b!6748769))

(assert (= (and b!6748769 c!1252192) b!6748767))

(assert (= (and b!6748769 (not c!1252192)) b!6748766))

(assert (= (or b!6748768 b!6748767) bm!610246))

(declare-fun m!7503328 () Bool)

(assert (=> bm!610246 m!7503328))

(declare-fun m!7503330 () Bool)

(assert (=> b!6748768 m!7503330))

(declare-fun m!7503332 () Bool)

(assert (=> b!6748770 m!7503332))

(assert (=> b!6748168 d!2119818))

(declare-fun bs!1793729 () Bool)

(declare-fun d!2119820 () Bool)

(assert (= bs!1793729 (and d!2119820 b!6748154)))

(declare-fun lambda!379576 () Int)

(assert (=> bs!1793729 (= lambda!379576 lambda!379509)))

(declare-fun bs!1793730 () Bool)

(assert (= bs!1793730 (and d!2119820 d!2119718)))

(assert (=> bs!1793730 (= lambda!379576 lambda!379524)))

(assert (=> d!2119820 true))

(assert (=> d!2119820 (= (derivationStepZipper!2525 lt!2440702 (h!72367 s!2326)) (flatMap!2062 lt!2440702 lambda!379576))))

(declare-fun bs!1793731 () Bool)

(assert (= bs!1793731 d!2119820))

(declare-fun m!7503334 () Bool)

(assert (=> bs!1793731 m!7503334))

(assert (=> b!6748168 d!2119820))

(declare-fun d!2119822 () Bool)

(declare-fun dynLambda!26300 (Int Context!11930) (InoxSet Context!11930))

(assert (=> d!2119822 (= (flatMap!2062 lt!2440702 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440713))))

(declare-fun lt!2440803 () Unit!159853)

(declare-fun choose!50346 ((InoxSet Context!11930) Context!11930 Int) Unit!159853)

(assert (=> d!2119822 (= lt!2440803 (choose!50346 lt!2440702 lt!2440713 lambda!379509))))

(assert (=> d!2119822 (= lt!2440702 (store ((as const (Array Context!11930 Bool)) false) lt!2440713 true))))

(assert (=> d!2119822 (= (lemmaFlatMapOnSingletonSet!1588 lt!2440702 lt!2440713 lambda!379509) lt!2440803)))

(declare-fun b_lambda!254155 () Bool)

(assert (=> (not b_lambda!254155) (not d!2119822)))

(declare-fun bs!1793732 () Bool)

(assert (= bs!1793732 d!2119822))

(assert (=> bs!1793732 m!7502906))

(declare-fun m!7503336 () Bool)

(assert (=> bs!1793732 m!7503336))

(declare-fun m!7503338 () Bool)

(assert (=> bs!1793732 m!7503338))

(assert (=> bs!1793732 m!7502918))

(assert (=> b!6748168 d!2119822))

(declare-fun b!6748771 () Bool)

(declare-fun e!4075931 () (InoxSet Context!11930))

(assert (=> b!6748771 (= e!4075931 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2119824 () Bool)

(declare-fun c!1252193 () Bool)

(declare-fun e!4075932 () Bool)

(assert (=> d!2119824 (= c!1252193 e!4075932)))

(declare-fun res!2760650 () Bool)

(assert (=> d!2119824 (=> (not res!2760650) (not e!4075932))))

(assert (=> d!2119824 (= res!2760650 ((_ is Cons!65918) (exprs!6465 lt!2440713)))))

(declare-fun e!4075933 () (InoxSet Context!11930))

(assert (=> d!2119824 (= (derivationStepZipperUp!1735 lt!2440713 (h!72367 s!2326)) e!4075933)))

(declare-fun b!6748772 () Bool)

(declare-fun call!610252 () (InoxSet Context!11930))

(assert (=> b!6748772 (= e!4075931 call!610252)))

(declare-fun bm!610247 () Bool)

(assert (=> bm!610247 (= call!610252 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440713)) (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (h!72367 s!2326)))))

(declare-fun b!6748773 () Bool)

(assert (=> b!6748773 (= e!4075933 ((_ map or) call!610252 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (h!72367 s!2326))))))

(declare-fun b!6748774 () Bool)

(assert (=> b!6748774 (= e!4075933 e!4075931)))

(declare-fun c!1252194 () Bool)

(assert (=> b!6748774 (= c!1252194 ((_ is Cons!65918) (exprs!6465 lt!2440713)))))

(declare-fun b!6748775 () Bool)

(assert (=> b!6748775 (= e!4075932 (nullable!6566 (h!72366 (exprs!6465 lt!2440713))))))

(assert (= (and d!2119824 res!2760650) b!6748775))

(assert (= (and d!2119824 c!1252193) b!6748773))

(assert (= (and d!2119824 (not c!1252193)) b!6748774))

(assert (= (and b!6748774 c!1252194) b!6748772))

(assert (= (and b!6748774 (not c!1252194)) b!6748771))

(assert (= (or b!6748773 b!6748772) bm!610247))

(declare-fun m!7503340 () Bool)

(assert (=> bm!610247 m!7503340))

(declare-fun m!7503342 () Bool)

(assert (=> b!6748773 m!7503342))

(declare-fun m!7503344 () Bool)

(assert (=> b!6748775 m!7503344))

(assert (=> b!6748168 d!2119824))

(declare-fun d!2119826 () Bool)

(assert (=> d!2119826 (= (flatMap!2062 lt!2440702 lambda!379509) (choose!50344 lt!2440702 lambda!379509))))

(declare-fun bs!1793733 () Bool)

(assert (= bs!1793733 d!2119826))

(declare-fun m!7503346 () Bool)

(assert (=> bs!1793733 m!7503346))

(assert (=> b!6748168 d!2119826))

(declare-fun d!2119828 () Bool)

(assert (=> d!2119828 (= (flatMap!2062 lt!2440715 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440701))))

(declare-fun lt!2440804 () Unit!159853)

(assert (=> d!2119828 (= lt!2440804 (choose!50346 lt!2440715 lt!2440701 lambda!379509))))

(assert (=> d!2119828 (= lt!2440715 (store ((as const (Array Context!11930 Bool)) false) lt!2440701 true))))

(assert (=> d!2119828 (= (lemmaFlatMapOnSingletonSet!1588 lt!2440715 lt!2440701 lambda!379509) lt!2440804)))

(declare-fun b_lambda!254157 () Bool)

(assert (=> (not b_lambda!254157) (not d!2119828)))

(declare-fun bs!1793734 () Bool)

(assert (= bs!1793734 d!2119828))

(assert (=> bs!1793734 m!7502914))

(declare-fun m!7503348 () Bool)

(assert (=> bs!1793734 m!7503348))

(declare-fun m!7503350 () Bool)

(assert (=> bs!1793734 m!7503350))

(assert (=> bs!1793734 m!7502912))

(assert (=> b!6748168 d!2119828))

(declare-fun d!2119830 () Bool)

(declare-fun lt!2440805 () Regex!16581)

(assert (=> d!2119830 (validRegex!8317 lt!2440805)))

(assert (=> d!2119830 (= lt!2440805 (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))

(assert (=> d!2119830 (= (unfocusZipper!2323 (Cons!65920 lt!2440713 Nil!65920)) lt!2440805)))

(declare-fun bs!1793735 () Bool)

(assert (= bs!1793735 d!2119830))

(declare-fun m!7503352 () Bool)

(assert (=> bs!1793735 m!7503352))

(declare-fun m!7503354 () Bool)

(assert (=> bs!1793735 m!7503354))

(assert (=> bs!1793735 m!7503354))

(declare-fun m!7503356 () Bool)

(assert (=> bs!1793735 m!7503356))

(assert (=> b!6748187 d!2119830))

(declare-fun b!6748804 () Bool)

(declare-fun e!4075954 () Bool)

(declare-fun lt!2440808 () Bool)

(declare-fun call!610255 () Bool)

(assert (=> b!6748804 (= e!4075954 (= lt!2440808 call!610255))))

(declare-fun b!6748805 () Bool)

(declare-fun res!2760670 () Bool)

(declare-fun e!4075951 () Bool)

(assert (=> b!6748805 (=> (not res!2760670) (not e!4075951))))

(assert (=> b!6748805 (= res!2760670 (not call!610255))))

(declare-fun b!6748806 () Bool)

(declare-fun res!2760667 () Bool)

(declare-fun e!4075949 () Bool)

(assert (=> b!6748806 (=> res!2760667 e!4075949)))

(declare-fun tail!12671 (List!66043) List!66043)

(assert (=> b!6748806 (= res!2760667 (not (isEmpty!38269 (tail!12671 (_1!36859 lt!2440718)))))))

(declare-fun b!6748807 () Bool)

(declare-fun e!4075950 () Bool)

(declare-fun derivativeStep!5251 (Regex!16581 C!33432) Regex!16581)

(declare-fun head!13586 (List!66043) C!33432)

(assert (=> b!6748807 (= e!4075950 (matchR!8764 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))) (tail!12671 (_1!36859 lt!2440718))))))

(declare-fun b!6748808 () Bool)

(declare-fun e!4075948 () Bool)

(assert (=> b!6748808 (= e!4075948 e!4075949)))

(declare-fun res!2760669 () Bool)

(assert (=> b!6748808 (=> res!2760669 e!4075949)))

(assert (=> b!6748808 (= res!2760669 call!610255)))

(declare-fun d!2119832 () Bool)

(assert (=> d!2119832 e!4075954))

(declare-fun c!1252202 () Bool)

(assert (=> d!2119832 (= c!1252202 ((_ is EmptyExpr!16581) (reg!16910 r!7292)))))

(assert (=> d!2119832 (= lt!2440808 e!4075950)))

(declare-fun c!1252203 () Bool)

(assert (=> d!2119832 (= c!1252203 (isEmpty!38269 (_1!36859 lt!2440718)))))

(assert (=> d!2119832 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2119832 (= (matchR!8764 (reg!16910 r!7292) (_1!36859 lt!2440718)) lt!2440808)))

(declare-fun b!6748809 () Bool)

(assert (=> b!6748809 (= e!4075949 (not (= (head!13586 (_1!36859 lt!2440718)) (c!1252033 (reg!16910 r!7292)))))))

(declare-fun b!6748810 () Bool)

(declare-fun e!4075952 () Bool)

(assert (=> b!6748810 (= e!4075954 e!4075952)))

(declare-fun c!1252201 () Bool)

(assert (=> b!6748810 (= c!1252201 ((_ is EmptyLang!16581) (reg!16910 r!7292)))))

(declare-fun b!6748811 () Bool)

(assert (=> b!6748811 (= e!4075951 (= (head!13586 (_1!36859 lt!2440718)) (c!1252033 (reg!16910 r!7292))))))

(declare-fun bm!610250 () Bool)

(assert (=> bm!610250 (= call!610255 (isEmpty!38269 (_1!36859 lt!2440718)))))

(declare-fun b!6748812 () Bool)

(declare-fun res!2760671 () Bool)

(declare-fun e!4075953 () Bool)

(assert (=> b!6748812 (=> res!2760671 e!4075953)))

(assert (=> b!6748812 (= res!2760671 (not ((_ is ElementMatch!16581) (reg!16910 r!7292))))))

(assert (=> b!6748812 (= e!4075952 e!4075953)))

(declare-fun b!6748813 () Bool)

(declare-fun res!2760672 () Bool)

(assert (=> b!6748813 (=> res!2760672 e!4075953)))

(assert (=> b!6748813 (= res!2760672 e!4075951)))

(declare-fun res!2760668 () Bool)

(assert (=> b!6748813 (=> (not res!2760668) (not e!4075951))))

(assert (=> b!6748813 (= res!2760668 lt!2440808)))

(declare-fun b!6748814 () Bool)

(assert (=> b!6748814 (= e!4075952 (not lt!2440808))))

(declare-fun b!6748815 () Bool)

(declare-fun res!2760674 () Bool)

(assert (=> b!6748815 (=> (not res!2760674) (not e!4075951))))

(assert (=> b!6748815 (= res!2760674 (isEmpty!38269 (tail!12671 (_1!36859 lt!2440718))))))

(declare-fun b!6748816 () Bool)

(assert (=> b!6748816 (= e!4075950 (nullable!6566 (reg!16910 r!7292)))))

(declare-fun b!6748817 () Bool)

(assert (=> b!6748817 (= e!4075953 e!4075948)))

(declare-fun res!2760673 () Bool)

(assert (=> b!6748817 (=> (not res!2760673) (not e!4075948))))

(assert (=> b!6748817 (= res!2760673 (not lt!2440808))))

(assert (= (and d!2119832 c!1252203) b!6748816))

(assert (= (and d!2119832 (not c!1252203)) b!6748807))

(assert (= (and d!2119832 c!1252202) b!6748804))

(assert (= (and d!2119832 (not c!1252202)) b!6748810))

(assert (= (and b!6748810 c!1252201) b!6748814))

(assert (= (and b!6748810 (not c!1252201)) b!6748812))

(assert (= (and b!6748812 (not res!2760671)) b!6748813))

(assert (= (and b!6748813 res!2760668) b!6748805))

(assert (= (and b!6748805 res!2760670) b!6748815))

(assert (= (and b!6748815 res!2760674) b!6748811))

(assert (= (and b!6748813 (not res!2760672)) b!6748817))

(assert (= (and b!6748817 res!2760673) b!6748808))

(assert (= (and b!6748808 (not res!2760669)) b!6748806))

(assert (= (and b!6748806 (not res!2760667)) b!6748809))

(assert (= (or b!6748804 b!6748805 b!6748808) bm!610250))

(declare-fun m!7503358 () Bool)

(assert (=> bm!610250 m!7503358))

(declare-fun m!7503360 () Bool)

(assert (=> b!6748807 m!7503360))

(assert (=> b!6748807 m!7503360))

(declare-fun m!7503362 () Bool)

(assert (=> b!6748807 m!7503362))

(declare-fun m!7503364 () Bool)

(assert (=> b!6748807 m!7503364))

(assert (=> b!6748807 m!7503362))

(assert (=> b!6748807 m!7503364))

(declare-fun m!7503366 () Bool)

(assert (=> b!6748807 m!7503366))

(assert (=> b!6748815 m!7503364))

(assert (=> b!6748815 m!7503364))

(declare-fun m!7503368 () Bool)

(assert (=> b!6748815 m!7503368))

(assert (=> d!2119832 m!7503358))

(assert (=> d!2119832 m!7503154))

(assert (=> b!6748806 m!7503364))

(assert (=> b!6748806 m!7503364))

(assert (=> b!6748806 m!7503368))

(declare-fun m!7503370 () Bool)

(assert (=> b!6748816 m!7503370))

(assert (=> b!6748811 m!7503360))

(assert (=> b!6748809 m!7503360))

(assert (=> b!6748166 d!2119832))

(declare-fun d!2119834 () Bool)

(declare-fun c!1252207 () Bool)

(assert (=> d!2119834 (= c!1252207 (and ((_ is ElementMatch!16581) (reg!16910 r!7292)) (= (c!1252033 (reg!16910 r!7292)) (h!72367 s!2326))))))

(declare-fun e!4075960 () (InoxSet Context!11930))

(assert (=> d!2119834 (= (derivationStepZipperDown!1809 (reg!16910 r!7292) lt!2440713 (h!72367 s!2326)) e!4075960)))

(declare-fun b!6748818 () Bool)

(declare-fun e!4075959 () (InoxSet Context!11930))

(declare-fun call!610256 () (InoxSet Context!11930))

(declare-fun call!610257 () (InoxSet Context!11930))

(assert (=> b!6748818 (= e!4075959 ((_ map or) call!610256 call!610257))))

(declare-fun b!6748819 () Bool)

(declare-fun e!4075956 () (InoxSet Context!11930))

(declare-fun e!4075955 () (InoxSet Context!11930))

(assert (=> b!6748819 (= e!4075956 e!4075955)))

(declare-fun c!1252204 () Bool)

(assert (=> b!6748819 (= c!1252204 ((_ is Concat!25426) (reg!16910 r!7292)))))

(declare-fun call!610260 () List!66042)

(declare-fun bm!610251 () Bool)

(declare-fun c!1252208 () Bool)

(assert (=> bm!610251 (= call!610260 ($colon$colon!2395 (exprs!6465 lt!2440713) (ite (or c!1252208 c!1252204) (regTwo!33674 (reg!16910 r!7292)) (reg!16910 r!7292))))))

(declare-fun b!6748820 () Bool)

(declare-fun e!4075957 () Bool)

(assert (=> b!6748820 (= c!1252208 e!4075957)))

(declare-fun res!2760675 () Bool)

(assert (=> b!6748820 (=> (not res!2760675) (not e!4075957))))

(assert (=> b!6748820 (= res!2760675 ((_ is Concat!25426) (reg!16910 r!7292)))))

(assert (=> b!6748820 (= e!4075959 e!4075956)))

(declare-fun b!6748821 () Bool)

(declare-fun call!610258 () (InoxSet Context!11930))

(assert (=> b!6748821 (= e!4075956 ((_ map or) call!610256 call!610258))))

(declare-fun bm!610252 () Bool)

(declare-fun c!1252205 () Bool)

(declare-fun call!610259 () List!66042)

(assert (=> bm!610252 (= call!610257 (derivationStepZipperDown!1809 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))) (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259)) (h!72367 s!2326)))))

(declare-fun b!6748822 () Bool)

(declare-fun e!4075958 () (InoxSet Context!11930))

(assert (=> b!6748822 (= e!4075958 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6748823 () Bool)

(assert (=> b!6748823 (= e!4075960 e!4075959)))

(assert (=> b!6748823 (= c!1252205 ((_ is Union!16581) (reg!16910 r!7292)))))

(declare-fun bm!610253 () Bool)

(declare-fun call!610261 () (InoxSet Context!11930))

(assert (=> bm!610253 (= call!610261 call!610258)))

(declare-fun b!6748824 () Bool)

(assert (=> b!6748824 (= e!4075957 (nullable!6566 (regOne!33674 (reg!16910 r!7292))))))

(declare-fun bm!610254 () Bool)

(assert (=> bm!610254 (= call!610259 call!610260)))

(declare-fun bm!610255 () Bool)

(assert (=> bm!610255 (= call!610258 call!610257)))

(declare-fun b!6748825 () Bool)

(assert (=> b!6748825 (= e!4075960 (store ((as const (Array Context!11930 Bool)) false) lt!2440713 true))))

(declare-fun bm!610256 () Bool)

(assert (=> bm!610256 (= call!610256 (derivationStepZipperDown!1809 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))) (ite c!1252205 lt!2440713 (Context!11931 call!610260)) (h!72367 s!2326)))))

(declare-fun b!6748826 () Bool)

(declare-fun c!1252206 () Bool)

(assert (=> b!6748826 (= c!1252206 ((_ is Star!16581) (reg!16910 r!7292)))))

(assert (=> b!6748826 (= e!4075955 e!4075958)))

(declare-fun b!6748827 () Bool)

(assert (=> b!6748827 (= e!4075958 call!610261)))

(declare-fun b!6748828 () Bool)

(assert (=> b!6748828 (= e!4075955 call!610261)))

(assert (= (and d!2119834 c!1252207) b!6748825))

(assert (= (and d!2119834 (not c!1252207)) b!6748823))

(assert (= (and b!6748823 c!1252205) b!6748818))

(assert (= (and b!6748823 (not c!1252205)) b!6748820))

(assert (= (and b!6748820 res!2760675) b!6748824))

(assert (= (and b!6748820 c!1252208) b!6748821))

(assert (= (and b!6748820 (not c!1252208)) b!6748819))

(assert (= (and b!6748819 c!1252204) b!6748828))

(assert (= (and b!6748819 (not c!1252204)) b!6748826))

(assert (= (and b!6748826 c!1252206) b!6748827))

(assert (= (and b!6748826 (not c!1252206)) b!6748822))

(assert (= (or b!6748828 b!6748827) bm!610254))

(assert (= (or b!6748828 b!6748827) bm!610253))

(assert (= (or b!6748821 bm!610254) bm!610251))

(assert (= (or b!6748821 bm!610253) bm!610255))

(assert (= (or b!6748818 bm!610255) bm!610252))

(assert (= (or b!6748818 b!6748821) bm!610256))

(declare-fun m!7503372 () Bool)

(assert (=> bm!610252 m!7503372))

(declare-fun m!7503374 () Bool)

(assert (=> bm!610251 m!7503374))

(declare-fun m!7503376 () Bool)

(assert (=> bm!610256 m!7503376))

(assert (=> b!6748825 m!7502918))

(declare-fun m!7503378 () Bool)

(assert (=> b!6748824 m!7503378))

(assert (=> b!6748186 d!2119834))

(declare-fun d!2119836 () Bool)

(assert (=> d!2119836 (= (flatMap!2062 lt!2440717 lambda!379509) (choose!50344 lt!2440717 lambda!379509))))

(declare-fun bs!1793736 () Bool)

(assert (= bs!1793736 d!2119836))

(declare-fun m!7503380 () Bool)

(assert (=> bs!1793736 m!7503380))

(assert (=> b!6748186 d!2119836))

(declare-fun b!6748829 () Bool)

(declare-fun e!4075961 () (InoxSet Context!11930))

(assert (=> b!6748829 (= e!4075961 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2119838 () Bool)

(declare-fun c!1252209 () Bool)

(declare-fun e!4075962 () Bool)

(assert (=> d!2119838 (= c!1252209 e!4075962)))

(declare-fun res!2760676 () Bool)

(assert (=> d!2119838 (=> (not res!2760676) (not e!4075962))))

(assert (=> d!2119838 (= res!2760676 ((_ is Cons!65918) (exprs!6465 lt!2440699)))))

(declare-fun e!4075963 () (InoxSet Context!11930))

(assert (=> d!2119838 (= (derivationStepZipperUp!1735 lt!2440699 (h!72367 s!2326)) e!4075963)))

(declare-fun b!6748830 () Bool)

(declare-fun call!610262 () (InoxSet Context!11930))

(assert (=> b!6748830 (= e!4075961 call!610262)))

(declare-fun bm!610257 () Bool)

(assert (=> bm!610257 (= call!610262 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440699)) (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (h!72367 s!2326)))))

(declare-fun b!6748831 () Bool)

(assert (=> b!6748831 (= e!4075963 ((_ map or) call!610262 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (h!72367 s!2326))))))

(declare-fun b!6748832 () Bool)

(assert (=> b!6748832 (= e!4075963 e!4075961)))

(declare-fun c!1252210 () Bool)

(assert (=> b!6748832 (= c!1252210 ((_ is Cons!65918) (exprs!6465 lt!2440699)))))

(declare-fun b!6748833 () Bool)

(assert (=> b!6748833 (= e!4075962 (nullable!6566 (h!72366 (exprs!6465 lt!2440699))))))

(assert (= (and d!2119838 res!2760676) b!6748833))

(assert (= (and d!2119838 c!1252209) b!6748831))

(assert (= (and d!2119838 (not c!1252209)) b!6748832))

(assert (= (and b!6748832 c!1252210) b!6748830))

(assert (= (and b!6748832 (not c!1252210)) b!6748829))

(assert (= (or b!6748831 b!6748830) bm!610257))

(declare-fun m!7503382 () Bool)

(assert (=> bm!610257 m!7503382))

(declare-fun m!7503384 () Bool)

(assert (=> b!6748831 m!7503384))

(declare-fun m!7503386 () Bool)

(assert (=> b!6748833 m!7503386))

(assert (=> b!6748186 d!2119838))

(declare-fun d!2119840 () Bool)

(assert (=> d!2119840 (= (flatMap!2062 lt!2440717 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440699))))

(declare-fun lt!2440809 () Unit!159853)

(assert (=> d!2119840 (= lt!2440809 (choose!50346 lt!2440717 lt!2440699 lambda!379509))))

(assert (=> d!2119840 (= lt!2440717 (store ((as const (Array Context!11930 Bool)) false) lt!2440699 true))))

(assert (=> d!2119840 (= (lemmaFlatMapOnSingletonSet!1588 lt!2440717 lt!2440699 lambda!379509) lt!2440809)))

(declare-fun b_lambda!254159 () Bool)

(assert (=> (not b_lambda!254159) (not d!2119840)))

(declare-fun bs!1793737 () Bool)

(assert (= bs!1793737 d!2119840))

(assert (=> bs!1793737 m!7502856))

(declare-fun m!7503388 () Bool)

(assert (=> bs!1793737 m!7503388))

(declare-fun m!7503390 () Bool)

(assert (=> bs!1793737 m!7503390))

(assert (=> bs!1793737 m!7502854))

(assert (=> b!6748186 d!2119840))

(declare-fun bs!1793738 () Bool)

(declare-fun b!6748866 () Bool)

(assert (= bs!1793738 (and b!6748866 d!2119742)))

(declare-fun lambda!379581 () Int)

(assert (=> bs!1793738 (not (= lambda!379581 lambda!379555))))

(declare-fun bs!1793739 () Bool)

(assert (= bs!1793739 (and b!6748866 b!6748161)))

(assert (=> bs!1793739 (= lambda!379581 lambda!379507)))

(declare-fun bs!1793740 () Bool)

(assert (= bs!1793740 (and b!6748866 d!2119756)))

(assert (=> bs!1793740 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379581 lambda!379563))))

(assert (=> bs!1793738 (not (= lambda!379581 lambda!379553))))

(assert (=> bs!1793739 (not (= lambda!379581 lambda!379508))))

(assert (=> bs!1793740 (not (= lambda!379581 lambda!379560))))

(assert (=> bs!1793739 (not (= lambda!379581 lambda!379506))))

(declare-fun bs!1793741 () Bool)

(assert (= bs!1793741 (and b!6748866 d!2119796)))

(assert (=> bs!1793741 (not (= lambda!379581 lambda!379572))))

(assert (=> b!6748866 true))

(assert (=> b!6748866 true))

(declare-fun bs!1793742 () Bool)

(declare-fun b!6748876 () Bool)

(assert (= bs!1793742 (and b!6748876 d!2119742)))

(declare-fun lambda!379582 () Int)

(assert (=> bs!1793742 (= (and (= (regOne!33674 r!7292) (reg!16910 r!7292)) (= (regTwo!33674 r!7292) r!7292)) (= lambda!379582 lambda!379555))))

(declare-fun bs!1793743 () Bool)

(assert (= bs!1793743 (and b!6748876 b!6748161)))

(assert (=> bs!1793743 (not (= lambda!379582 lambda!379507))))

(declare-fun bs!1793744 () Bool)

(assert (= bs!1793744 (and b!6748876 d!2119756)))

(assert (=> bs!1793744 (not (= lambda!379582 lambda!379563))))

(assert (=> bs!1793742 (not (= lambda!379582 lambda!379553))))

(declare-fun bs!1793745 () Bool)

(assert (= bs!1793745 (and b!6748876 b!6748866)))

(assert (=> bs!1793745 (not (= lambda!379582 lambda!379581))))

(assert (=> bs!1793743 (= (and (= (regOne!33674 r!7292) (reg!16910 r!7292)) (= (regTwo!33674 r!7292) r!7292)) (= lambda!379582 lambda!379508))))

(assert (=> bs!1793744 (not (= lambda!379582 lambda!379560))))

(assert (=> bs!1793743 (not (= lambda!379582 lambda!379506))))

(declare-fun bs!1793746 () Bool)

(assert (= bs!1793746 (and b!6748876 d!2119796)))

(assert (=> bs!1793746 (not (= lambda!379582 lambda!379572))))

(assert (=> b!6748876 true))

(assert (=> b!6748876 true))

(declare-fun e!4075988 () Bool)

(declare-fun call!610267 () Bool)

(assert (=> b!6748866 (= e!4075988 call!610267)))

(declare-fun b!6748867 () Bool)

(declare-fun res!2760693 () Bool)

(assert (=> b!6748867 (=> res!2760693 e!4075988)))

(declare-fun call!610268 () Bool)

(assert (=> b!6748867 (= res!2760693 call!610268)))

(declare-fun e!4075982 () Bool)

(assert (=> b!6748867 (= e!4075982 e!4075988)))

(declare-fun b!6748868 () Bool)

(declare-fun e!4075985 () Bool)

(assert (=> b!6748868 (= e!4075985 call!610268)))

(declare-fun b!6748869 () Bool)

(declare-fun e!4075983 () Bool)

(assert (=> b!6748869 (= e!4075983 (= s!2326 (Cons!65919 (c!1252033 r!7292) Nil!65919)))))

(declare-fun b!6748870 () Bool)

(declare-fun e!4075986 () Bool)

(assert (=> b!6748870 (= e!4075986 e!4075982)))

(declare-fun c!1252219 () Bool)

(assert (=> b!6748870 (= c!1252219 ((_ is Star!16581) r!7292))))

(declare-fun b!6748871 () Bool)

(declare-fun e!4075984 () Bool)

(assert (=> b!6748871 (= e!4075984 (matchRSpec!3682 (regTwo!33675 r!7292) s!2326))))

(declare-fun b!6748872 () Bool)

(declare-fun c!1252220 () Bool)

(assert (=> b!6748872 (= c!1252220 ((_ is Union!16581) r!7292))))

(assert (=> b!6748872 (= e!4075983 e!4075986)))

(declare-fun bm!610262 () Bool)

(assert (=> bm!610262 (= call!610268 (isEmpty!38269 s!2326))))

(declare-fun b!6748873 () Bool)

(declare-fun e!4075987 () Bool)

(assert (=> b!6748873 (= e!4075985 e!4075987)))

(declare-fun res!2760694 () Bool)

(assert (=> b!6748873 (= res!2760694 (not ((_ is EmptyLang!16581) r!7292)))))

(assert (=> b!6748873 (=> (not res!2760694) (not e!4075987))))

(declare-fun b!6748874 () Bool)

(assert (=> b!6748874 (= e!4075986 e!4075984)))

(declare-fun res!2760695 () Bool)

(assert (=> b!6748874 (= res!2760695 (matchRSpec!3682 (regOne!33675 r!7292) s!2326))))

(assert (=> b!6748874 (=> res!2760695 e!4075984)))

(declare-fun d!2119842 () Bool)

(declare-fun c!1252221 () Bool)

(assert (=> d!2119842 (= c!1252221 ((_ is EmptyExpr!16581) r!7292))))

(assert (=> d!2119842 (= (matchRSpec!3682 r!7292 s!2326) e!4075985)))

(declare-fun bm!610263 () Bool)

(assert (=> bm!610263 (= call!610267 (Exists!3649 (ite c!1252219 lambda!379581 lambda!379582)))))

(declare-fun b!6748875 () Bool)

(declare-fun c!1252222 () Bool)

(assert (=> b!6748875 (= c!1252222 ((_ is ElementMatch!16581) r!7292))))

(assert (=> b!6748875 (= e!4075987 e!4075983)))

(assert (=> b!6748876 (= e!4075982 call!610267)))

(assert (= (and d!2119842 c!1252221) b!6748868))

(assert (= (and d!2119842 (not c!1252221)) b!6748873))

(assert (= (and b!6748873 res!2760694) b!6748875))

(assert (= (and b!6748875 c!1252222) b!6748869))

(assert (= (and b!6748875 (not c!1252222)) b!6748872))

(assert (= (and b!6748872 c!1252220) b!6748874))

(assert (= (and b!6748872 (not c!1252220)) b!6748870))

(assert (= (and b!6748874 (not res!2760695)) b!6748871))

(assert (= (and b!6748870 c!1252219) b!6748867))

(assert (= (and b!6748870 (not c!1252219)) b!6748876))

(assert (= (and b!6748867 (not res!2760693)) b!6748866))

(assert (= (or b!6748866 b!6748876) bm!610263))

(assert (= (or b!6748868 b!6748867) bm!610262))

(declare-fun m!7503392 () Bool)

(assert (=> b!6748871 m!7503392))

(assert (=> bm!610262 m!7502866))

(declare-fun m!7503394 () Bool)

(assert (=> b!6748874 m!7503394))

(declare-fun m!7503396 () Bool)

(assert (=> bm!610263 m!7503396))

(assert (=> b!6748165 d!2119842))

(declare-fun b!6748877 () Bool)

(declare-fun e!4075995 () Bool)

(declare-fun lt!2440810 () Bool)

(declare-fun call!610269 () Bool)

(assert (=> b!6748877 (= e!4075995 (= lt!2440810 call!610269))))

(declare-fun b!6748878 () Bool)

(declare-fun res!2760699 () Bool)

(declare-fun e!4075992 () Bool)

(assert (=> b!6748878 (=> (not res!2760699) (not e!4075992))))

(assert (=> b!6748878 (= res!2760699 (not call!610269))))

(declare-fun b!6748879 () Bool)

(declare-fun res!2760696 () Bool)

(declare-fun e!4075990 () Bool)

(assert (=> b!6748879 (=> res!2760696 e!4075990)))

(assert (=> b!6748879 (= res!2760696 (not (isEmpty!38269 (tail!12671 s!2326))))))

(declare-fun b!6748880 () Bool)

(declare-fun e!4075991 () Bool)

(assert (=> b!6748880 (= e!4075991 (matchR!8764 (derivativeStep!5251 r!7292 (head!13586 s!2326)) (tail!12671 s!2326)))))

(declare-fun b!6748881 () Bool)

(declare-fun e!4075989 () Bool)

(assert (=> b!6748881 (= e!4075989 e!4075990)))

(declare-fun res!2760698 () Bool)

(assert (=> b!6748881 (=> res!2760698 e!4075990)))

(assert (=> b!6748881 (= res!2760698 call!610269)))

(declare-fun d!2119844 () Bool)

(assert (=> d!2119844 e!4075995))

(declare-fun c!1252224 () Bool)

(assert (=> d!2119844 (= c!1252224 ((_ is EmptyExpr!16581) r!7292))))

(assert (=> d!2119844 (= lt!2440810 e!4075991)))

(declare-fun c!1252225 () Bool)

(assert (=> d!2119844 (= c!1252225 (isEmpty!38269 s!2326))))

(assert (=> d!2119844 (validRegex!8317 r!7292)))

(assert (=> d!2119844 (= (matchR!8764 r!7292 s!2326) lt!2440810)))

(declare-fun b!6748882 () Bool)

(assert (=> b!6748882 (= e!4075990 (not (= (head!13586 s!2326) (c!1252033 r!7292))))))

(declare-fun b!6748883 () Bool)

(declare-fun e!4075993 () Bool)

(assert (=> b!6748883 (= e!4075995 e!4075993)))

(declare-fun c!1252223 () Bool)

(assert (=> b!6748883 (= c!1252223 ((_ is EmptyLang!16581) r!7292))))

(declare-fun b!6748884 () Bool)

(assert (=> b!6748884 (= e!4075992 (= (head!13586 s!2326) (c!1252033 r!7292)))))

(declare-fun bm!610264 () Bool)

(assert (=> bm!610264 (= call!610269 (isEmpty!38269 s!2326))))

(declare-fun b!6748885 () Bool)

(declare-fun res!2760700 () Bool)

(declare-fun e!4075994 () Bool)

(assert (=> b!6748885 (=> res!2760700 e!4075994)))

(assert (=> b!6748885 (= res!2760700 (not ((_ is ElementMatch!16581) r!7292)))))

(assert (=> b!6748885 (= e!4075993 e!4075994)))

(declare-fun b!6748886 () Bool)

(declare-fun res!2760701 () Bool)

(assert (=> b!6748886 (=> res!2760701 e!4075994)))

(assert (=> b!6748886 (= res!2760701 e!4075992)))

(declare-fun res!2760697 () Bool)

(assert (=> b!6748886 (=> (not res!2760697) (not e!4075992))))

(assert (=> b!6748886 (= res!2760697 lt!2440810)))

(declare-fun b!6748887 () Bool)

(assert (=> b!6748887 (= e!4075993 (not lt!2440810))))

(declare-fun b!6748888 () Bool)

(declare-fun res!2760703 () Bool)

(assert (=> b!6748888 (=> (not res!2760703) (not e!4075992))))

(assert (=> b!6748888 (= res!2760703 (isEmpty!38269 (tail!12671 s!2326)))))

(declare-fun b!6748889 () Bool)

(assert (=> b!6748889 (= e!4075991 (nullable!6566 r!7292))))

(declare-fun b!6748890 () Bool)

(assert (=> b!6748890 (= e!4075994 e!4075989)))

(declare-fun res!2760702 () Bool)

(assert (=> b!6748890 (=> (not res!2760702) (not e!4075989))))

(assert (=> b!6748890 (= res!2760702 (not lt!2440810))))

(assert (= (and d!2119844 c!1252225) b!6748889))

(assert (= (and d!2119844 (not c!1252225)) b!6748880))

(assert (= (and d!2119844 c!1252224) b!6748877))

(assert (= (and d!2119844 (not c!1252224)) b!6748883))

(assert (= (and b!6748883 c!1252223) b!6748887))

(assert (= (and b!6748883 (not c!1252223)) b!6748885))

(assert (= (and b!6748885 (not res!2760700)) b!6748886))

(assert (= (and b!6748886 res!2760697) b!6748878))

(assert (= (and b!6748878 res!2760699) b!6748888))

(assert (= (and b!6748888 res!2760703) b!6748884))

(assert (= (and b!6748886 (not res!2760701)) b!6748890))

(assert (= (and b!6748890 res!2760702) b!6748881))

(assert (= (and b!6748881 (not res!2760698)) b!6748879))

(assert (= (and b!6748879 (not res!2760696)) b!6748882))

(assert (= (or b!6748877 b!6748878 b!6748881) bm!610264))

(assert (=> bm!610264 m!7502866))

(declare-fun m!7503398 () Bool)

(assert (=> b!6748880 m!7503398))

(assert (=> b!6748880 m!7503398))

(declare-fun m!7503400 () Bool)

(assert (=> b!6748880 m!7503400))

(declare-fun m!7503402 () Bool)

(assert (=> b!6748880 m!7503402))

(assert (=> b!6748880 m!7503400))

(assert (=> b!6748880 m!7503402))

(declare-fun m!7503404 () Bool)

(assert (=> b!6748880 m!7503404))

(assert (=> b!6748888 m!7503402))

(assert (=> b!6748888 m!7503402))

(declare-fun m!7503406 () Bool)

(assert (=> b!6748888 m!7503406))

(assert (=> d!2119844 m!7502866))

(assert (=> d!2119844 m!7502880))

(assert (=> b!6748879 m!7503402))

(assert (=> b!6748879 m!7503402))

(assert (=> b!6748879 m!7503406))

(declare-fun m!7503408 () Bool)

(assert (=> b!6748889 m!7503408))

(assert (=> b!6748884 m!7503398))

(assert (=> b!6748882 m!7503398))

(assert (=> b!6748165 d!2119844))

(declare-fun d!2119846 () Bool)

(assert (=> d!2119846 (= (matchR!8764 r!7292 s!2326) (matchRSpec!3682 r!7292 s!2326))))

(declare-fun lt!2440813 () Unit!159853)

(declare-fun choose!50349 (Regex!16581 List!66043) Unit!159853)

(assert (=> d!2119846 (= lt!2440813 (choose!50349 r!7292 s!2326))))

(assert (=> d!2119846 (validRegex!8317 r!7292)))

(assert (=> d!2119846 (= (mainMatchTheorem!3682 r!7292 s!2326) lt!2440813)))

(declare-fun bs!1793747 () Bool)

(assert (= bs!1793747 d!2119846))

(assert (=> bs!1793747 m!7502840))

(assert (=> bs!1793747 m!7502838))

(declare-fun m!7503410 () Bool)

(assert (=> bs!1793747 m!7503410))

(assert (=> bs!1793747 m!7502880))

(assert (=> b!6748165 d!2119846))

(declare-fun d!2119848 () Bool)

(assert (=> d!2119848 (= (flatMap!2062 z!1189 lambda!379509) (choose!50344 z!1189 lambda!379509))))

(declare-fun bs!1793748 () Bool)

(assert (= bs!1793748 d!2119848))

(declare-fun m!7503412 () Bool)

(assert (=> bs!1793748 m!7503412))

(assert (=> b!6748154 d!2119848))

(declare-fun b!6748891 () Bool)

(declare-fun e!4075996 () (InoxSet Context!11930))

(assert (=> b!6748891 (= e!4075996 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2119850 () Bool)

(declare-fun c!1252226 () Bool)

(declare-fun e!4075997 () Bool)

(assert (=> d!2119850 (= c!1252226 e!4075997)))

(declare-fun res!2760704 () Bool)

(assert (=> d!2119850 (=> (not res!2760704) (not e!4075997))))

(assert (=> d!2119850 (= res!2760704 ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343))))))

(declare-fun e!4075998 () (InoxSet Context!11930))

(assert (=> d!2119850 (= (derivationStepZipperUp!1735 (h!72368 zl!343) (h!72367 s!2326)) e!4075998)))

(declare-fun b!6748892 () Bool)

(declare-fun call!610270 () (InoxSet Context!11930))

(assert (=> b!6748892 (= e!4075996 call!610270)))

(declare-fun bm!610265 () Bool)

(assert (=> bm!610265 (= call!610270 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (h!72368 zl!343))) (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (h!72367 s!2326)))))

(declare-fun b!6748893 () Bool)

(assert (=> b!6748893 (= e!4075998 ((_ map or) call!610270 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (h!72367 s!2326))))))

(declare-fun b!6748894 () Bool)

(assert (=> b!6748894 (= e!4075998 e!4075996)))

(declare-fun c!1252227 () Bool)

(assert (=> b!6748894 (= c!1252227 ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343))))))

(declare-fun b!6748895 () Bool)

(assert (=> b!6748895 (= e!4075997 (nullable!6566 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(assert (= (and d!2119850 res!2760704) b!6748895))

(assert (= (and d!2119850 c!1252226) b!6748893))

(assert (= (and d!2119850 (not c!1252226)) b!6748894))

(assert (= (and b!6748894 c!1252227) b!6748892))

(assert (= (and b!6748894 (not c!1252227)) b!6748891))

(assert (= (or b!6748893 b!6748892) bm!610265))

(declare-fun m!7503414 () Bool)

(assert (=> bm!610265 m!7503414))

(declare-fun m!7503416 () Bool)

(assert (=> b!6748893 m!7503416))

(declare-fun m!7503418 () Bool)

(assert (=> b!6748895 m!7503418))

(assert (=> b!6748154 d!2119850))

(declare-fun d!2119852 () Bool)

(assert (=> d!2119852 (= (flatMap!2062 z!1189 lambda!379509) (dynLambda!26300 lambda!379509 (h!72368 zl!343)))))

(declare-fun lt!2440814 () Unit!159853)

(assert (=> d!2119852 (= lt!2440814 (choose!50346 z!1189 (h!72368 zl!343) lambda!379509))))

(assert (=> d!2119852 (= z!1189 (store ((as const (Array Context!11930 Bool)) false) (h!72368 zl!343) true))))

(assert (=> d!2119852 (= (lemmaFlatMapOnSingletonSet!1588 z!1189 (h!72368 zl!343) lambda!379509) lt!2440814)))

(declare-fun b_lambda!254161 () Bool)

(assert (=> (not b_lambda!254161) (not d!2119852)))

(declare-fun bs!1793749 () Bool)

(assert (= bs!1793749 d!2119852))

(assert (=> bs!1793749 m!7502844))

(declare-fun m!7503420 () Bool)

(assert (=> bs!1793749 m!7503420))

(declare-fun m!7503422 () Bool)

(assert (=> bs!1793749 m!7503422))

(declare-fun m!7503424 () Bool)

(assert (=> bs!1793749 m!7503424))

(assert (=> b!6748154 d!2119852))

(declare-fun bs!1793750 () Bool)

(declare-fun d!2119854 () Bool)

(assert (= bs!1793750 (and d!2119854 d!2119732)))

(declare-fun lambda!379583 () Int)

(assert (=> bs!1793750 (= lambda!379583 lambda!379537)))

(declare-fun bs!1793751 () Bool)

(assert (= bs!1793751 (and d!2119854 d!2119814)))

(assert (=> bs!1793751 (= lambda!379583 lambda!379575)))

(assert (=> d!2119854 (= (inv!84699 setElem!46117) (forall!15778 (exprs!6465 setElem!46117) lambda!379583))))

(declare-fun bs!1793752 () Bool)

(assert (= bs!1793752 d!2119854))

(declare-fun m!7503426 () Bool)

(assert (=> bs!1793752 m!7503426))

(assert (=> setNonEmpty!46117 d!2119854))

(declare-fun bs!1793753 () Bool)

(declare-fun b!6748896 () Bool)

(assert (= bs!1793753 (and b!6748896 d!2119742)))

(declare-fun lambda!379584 () Int)

(assert (=> bs!1793753 (not (= lambda!379584 lambda!379555))))

(declare-fun bs!1793754 () Bool)

(assert (= bs!1793754 (and b!6748896 d!2119756)))

(assert (=> bs!1793754 (= (and (= (reg!16910 lt!2440700) (reg!16910 r!7292)) (= lt!2440700 (Star!16581 (reg!16910 r!7292)))) (= lambda!379584 lambda!379563))))

(assert (=> bs!1793753 (not (= lambda!379584 lambda!379553))))

(declare-fun bs!1793755 () Bool)

(assert (= bs!1793755 (and b!6748896 b!6748866)))

(assert (=> bs!1793755 (= (and (= (reg!16910 lt!2440700) (reg!16910 r!7292)) (= lt!2440700 r!7292)) (= lambda!379584 lambda!379581))))

(declare-fun bs!1793756 () Bool)

(assert (= bs!1793756 (and b!6748896 b!6748161)))

(assert (=> bs!1793756 (not (= lambda!379584 lambda!379508))))

(assert (=> bs!1793754 (not (= lambda!379584 lambda!379560))))

(assert (=> bs!1793756 (not (= lambda!379584 lambda!379506))))

(declare-fun bs!1793757 () Bool)

(assert (= bs!1793757 (and b!6748896 d!2119796)))

(assert (=> bs!1793757 (not (= lambda!379584 lambda!379572))))

(assert (=> bs!1793756 (= (and (= (reg!16910 lt!2440700) (reg!16910 r!7292)) (= lt!2440700 r!7292)) (= lambda!379584 lambda!379507))))

(declare-fun bs!1793758 () Bool)

(assert (= bs!1793758 (and b!6748896 b!6748876)))

(assert (=> bs!1793758 (not (= lambda!379584 lambda!379582))))

(assert (=> b!6748896 true))

(assert (=> b!6748896 true))

(declare-fun bs!1793759 () Bool)

(declare-fun b!6748906 () Bool)

(assert (= bs!1793759 (and b!6748906 d!2119742)))

(declare-fun lambda!379585 () Int)

(assert (=> bs!1793759 (= (and (= (regOne!33674 lt!2440700) (reg!16910 r!7292)) (= (regTwo!33674 lt!2440700) r!7292)) (= lambda!379585 lambda!379555))))

(declare-fun bs!1793760 () Bool)

(assert (= bs!1793760 (and b!6748906 b!6748896)))

(assert (=> bs!1793760 (not (= lambda!379585 lambda!379584))))

(declare-fun bs!1793761 () Bool)

(assert (= bs!1793761 (and b!6748906 d!2119756)))

(assert (=> bs!1793761 (not (= lambda!379585 lambda!379563))))

(assert (=> bs!1793759 (not (= lambda!379585 lambda!379553))))

(declare-fun bs!1793762 () Bool)

(assert (= bs!1793762 (and b!6748906 b!6748866)))

(assert (=> bs!1793762 (not (= lambda!379585 lambda!379581))))

(declare-fun bs!1793763 () Bool)

(assert (= bs!1793763 (and b!6748906 b!6748161)))

(assert (=> bs!1793763 (= (and (= (regOne!33674 lt!2440700) (reg!16910 r!7292)) (= (regTwo!33674 lt!2440700) r!7292)) (= lambda!379585 lambda!379508))))

(assert (=> bs!1793761 (not (= lambda!379585 lambda!379560))))

(assert (=> bs!1793763 (not (= lambda!379585 lambda!379506))))

(declare-fun bs!1793764 () Bool)

(assert (= bs!1793764 (and b!6748906 d!2119796)))

(assert (=> bs!1793764 (not (= lambda!379585 lambda!379572))))

(assert (=> bs!1793763 (not (= lambda!379585 lambda!379507))))

(declare-fun bs!1793765 () Bool)

(assert (= bs!1793765 (and b!6748906 b!6748876)))

(assert (=> bs!1793765 (= (and (= (regOne!33674 lt!2440700) (regOne!33674 r!7292)) (= (regTwo!33674 lt!2440700) (regTwo!33674 r!7292))) (= lambda!379585 lambda!379582))))

(assert (=> b!6748906 true))

(assert (=> b!6748906 true))

(declare-fun e!4076005 () Bool)

(declare-fun call!610271 () Bool)

(assert (=> b!6748896 (= e!4076005 call!610271)))

(declare-fun b!6748897 () Bool)

(declare-fun res!2760705 () Bool)

(assert (=> b!6748897 (=> res!2760705 e!4076005)))

(declare-fun call!610272 () Bool)

(assert (=> b!6748897 (= res!2760705 call!610272)))

(declare-fun e!4075999 () Bool)

(assert (=> b!6748897 (= e!4075999 e!4076005)))

(declare-fun b!6748898 () Bool)

(declare-fun e!4076002 () Bool)

(assert (=> b!6748898 (= e!4076002 call!610272)))

(declare-fun b!6748899 () Bool)

(declare-fun e!4076000 () Bool)

(assert (=> b!6748899 (= e!4076000 (= s!2326 (Cons!65919 (c!1252033 lt!2440700) Nil!65919)))))

(declare-fun b!6748900 () Bool)

(declare-fun e!4076003 () Bool)

(assert (=> b!6748900 (= e!4076003 e!4075999)))

(declare-fun c!1252228 () Bool)

(assert (=> b!6748900 (= c!1252228 ((_ is Star!16581) lt!2440700))))

(declare-fun b!6748901 () Bool)

(declare-fun e!4076001 () Bool)

(assert (=> b!6748901 (= e!4076001 (matchRSpec!3682 (regTwo!33675 lt!2440700) s!2326))))

(declare-fun b!6748902 () Bool)

(declare-fun c!1252229 () Bool)

(assert (=> b!6748902 (= c!1252229 ((_ is Union!16581) lt!2440700))))

(assert (=> b!6748902 (= e!4076000 e!4076003)))

(declare-fun bm!610266 () Bool)

(assert (=> bm!610266 (= call!610272 (isEmpty!38269 s!2326))))

(declare-fun b!6748903 () Bool)

(declare-fun e!4076004 () Bool)

(assert (=> b!6748903 (= e!4076002 e!4076004)))

(declare-fun res!2760706 () Bool)

(assert (=> b!6748903 (= res!2760706 (not ((_ is EmptyLang!16581) lt!2440700)))))

(assert (=> b!6748903 (=> (not res!2760706) (not e!4076004))))

(declare-fun b!6748904 () Bool)

(assert (=> b!6748904 (= e!4076003 e!4076001)))

(declare-fun res!2760707 () Bool)

(assert (=> b!6748904 (= res!2760707 (matchRSpec!3682 (regOne!33675 lt!2440700) s!2326))))

(assert (=> b!6748904 (=> res!2760707 e!4076001)))

(declare-fun d!2119856 () Bool)

(declare-fun c!1252230 () Bool)

(assert (=> d!2119856 (= c!1252230 ((_ is EmptyExpr!16581) lt!2440700))))

(assert (=> d!2119856 (= (matchRSpec!3682 lt!2440700 s!2326) e!4076002)))

(declare-fun bm!610267 () Bool)

(assert (=> bm!610267 (= call!610271 (Exists!3649 (ite c!1252228 lambda!379584 lambda!379585)))))

(declare-fun b!6748905 () Bool)

(declare-fun c!1252231 () Bool)

(assert (=> b!6748905 (= c!1252231 ((_ is ElementMatch!16581) lt!2440700))))

(assert (=> b!6748905 (= e!4076004 e!4076000)))

(assert (=> b!6748906 (= e!4075999 call!610271)))

(assert (= (and d!2119856 c!1252230) b!6748898))

(assert (= (and d!2119856 (not c!1252230)) b!6748903))

(assert (= (and b!6748903 res!2760706) b!6748905))

(assert (= (and b!6748905 c!1252231) b!6748899))

(assert (= (and b!6748905 (not c!1252231)) b!6748902))

(assert (= (and b!6748902 c!1252229) b!6748904))

(assert (= (and b!6748902 (not c!1252229)) b!6748900))

(assert (= (and b!6748904 (not res!2760707)) b!6748901))

(assert (= (and b!6748900 c!1252228) b!6748897))

(assert (= (and b!6748900 (not c!1252228)) b!6748906))

(assert (= (and b!6748897 (not res!2760705)) b!6748896))

(assert (= (or b!6748896 b!6748906) bm!610267))

(assert (= (or b!6748898 b!6748897) bm!610266))

(declare-fun m!7503428 () Bool)

(assert (=> b!6748901 m!7503428))

(assert (=> bm!610266 m!7502866))

(declare-fun m!7503430 () Bool)

(assert (=> b!6748904 m!7503430))

(declare-fun m!7503432 () Bool)

(assert (=> bm!610267 m!7503432))

(assert (=> b!6748173 d!2119856))

(declare-fun b!6748907 () Bool)

(declare-fun e!4076012 () Bool)

(declare-fun lt!2440815 () Bool)

(declare-fun call!610273 () Bool)

(assert (=> b!6748907 (= e!4076012 (= lt!2440815 call!610273))))

(declare-fun b!6748908 () Bool)

(declare-fun res!2760711 () Bool)

(declare-fun e!4076009 () Bool)

(assert (=> b!6748908 (=> (not res!2760711) (not e!4076009))))

(assert (=> b!6748908 (= res!2760711 (not call!610273))))

(declare-fun b!6748909 () Bool)

(declare-fun res!2760708 () Bool)

(declare-fun e!4076007 () Bool)

(assert (=> b!6748909 (=> res!2760708 e!4076007)))

(assert (=> b!6748909 (= res!2760708 (not (isEmpty!38269 (tail!12671 s!2326))))))

(declare-fun b!6748910 () Bool)

(declare-fun e!4076008 () Bool)

(assert (=> b!6748910 (= e!4076008 (matchR!8764 (derivativeStep!5251 lt!2440700 (head!13586 s!2326)) (tail!12671 s!2326)))))

(declare-fun b!6748911 () Bool)

(declare-fun e!4076006 () Bool)

(assert (=> b!6748911 (= e!4076006 e!4076007)))

(declare-fun res!2760710 () Bool)

(assert (=> b!6748911 (=> res!2760710 e!4076007)))

(assert (=> b!6748911 (= res!2760710 call!610273)))

(declare-fun d!2119858 () Bool)

(assert (=> d!2119858 e!4076012))

(declare-fun c!1252233 () Bool)

(assert (=> d!2119858 (= c!1252233 ((_ is EmptyExpr!16581) lt!2440700))))

(assert (=> d!2119858 (= lt!2440815 e!4076008)))

(declare-fun c!1252234 () Bool)

(assert (=> d!2119858 (= c!1252234 (isEmpty!38269 s!2326))))

(assert (=> d!2119858 (validRegex!8317 lt!2440700)))

(assert (=> d!2119858 (= (matchR!8764 lt!2440700 s!2326) lt!2440815)))

(declare-fun b!6748912 () Bool)

(assert (=> b!6748912 (= e!4076007 (not (= (head!13586 s!2326) (c!1252033 lt!2440700))))))

(declare-fun b!6748913 () Bool)

(declare-fun e!4076010 () Bool)

(assert (=> b!6748913 (= e!4076012 e!4076010)))

(declare-fun c!1252232 () Bool)

(assert (=> b!6748913 (= c!1252232 ((_ is EmptyLang!16581) lt!2440700))))

(declare-fun b!6748914 () Bool)

(assert (=> b!6748914 (= e!4076009 (= (head!13586 s!2326) (c!1252033 lt!2440700)))))

(declare-fun bm!610268 () Bool)

(assert (=> bm!610268 (= call!610273 (isEmpty!38269 s!2326))))

(declare-fun b!6748915 () Bool)

(declare-fun res!2760712 () Bool)

(declare-fun e!4076011 () Bool)

(assert (=> b!6748915 (=> res!2760712 e!4076011)))

(assert (=> b!6748915 (= res!2760712 (not ((_ is ElementMatch!16581) lt!2440700)))))

(assert (=> b!6748915 (= e!4076010 e!4076011)))

(declare-fun b!6748916 () Bool)

(declare-fun res!2760713 () Bool)

(assert (=> b!6748916 (=> res!2760713 e!4076011)))

(assert (=> b!6748916 (= res!2760713 e!4076009)))

(declare-fun res!2760709 () Bool)

(assert (=> b!6748916 (=> (not res!2760709) (not e!4076009))))

(assert (=> b!6748916 (= res!2760709 lt!2440815)))

(declare-fun b!6748917 () Bool)

(assert (=> b!6748917 (= e!4076010 (not lt!2440815))))

(declare-fun b!6748918 () Bool)

(declare-fun res!2760715 () Bool)

(assert (=> b!6748918 (=> (not res!2760715) (not e!4076009))))

(assert (=> b!6748918 (= res!2760715 (isEmpty!38269 (tail!12671 s!2326)))))

(declare-fun b!6748919 () Bool)

(assert (=> b!6748919 (= e!4076008 (nullable!6566 lt!2440700))))

(declare-fun b!6748920 () Bool)

(assert (=> b!6748920 (= e!4076011 e!4076006)))

(declare-fun res!2760714 () Bool)

(assert (=> b!6748920 (=> (not res!2760714) (not e!4076006))))

(assert (=> b!6748920 (= res!2760714 (not lt!2440815))))

(assert (= (and d!2119858 c!1252234) b!6748919))

(assert (= (and d!2119858 (not c!1252234)) b!6748910))

(assert (= (and d!2119858 c!1252233) b!6748907))

(assert (= (and d!2119858 (not c!1252233)) b!6748913))

(assert (= (and b!6748913 c!1252232) b!6748917))

(assert (= (and b!6748913 (not c!1252232)) b!6748915))

(assert (= (and b!6748915 (not res!2760712)) b!6748916))

(assert (= (and b!6748916 res!2760709) b!6748908))

(assert (= (and b!6748908 res!2760711) b!6748918))

(assert (= (and b!6748918 res!2760715) b!6748914))

(assert (= (and b!6748916 (not res!2760713)) b!6748920))

(assert (= (and b!6748920 res!2760714) b!6748911))

(assert (= (and b!6748911 (not res!2760710)) b!6748909))

(assert (= (and b!6748909 (not res!2760708)) b!6748912))

(assert (= (or b!6748907 b!6748908 b!6748911) bm!610268))

(assert (=> bm!610268 m!7502866))

(assert (=> b!6748910 m!7503398))

(assert (=> b!6748910 m!7503398))

(declare-fun m!7503434 () Bool)

(assert (=> b!6748910 m!7503434))

(assert (=> b!6748910 m!7503402))

(assert (=> b!6748910 m!7503434))

(assert (=> b!6748910 m!7503402))

(declare-fun m!7503436 () Bool)

(assert (=> b!6748910 m!7503436))

(assert (=> b!6748918 m!7503402))

(assert (=> b!6748918 m!7503402))

(assert (=> b!6748918 m!7503406))

(assert (=> d!2119858 m!7502866))

(declare-fun m!7503438 () Bool)

(assert (=> d!2119858 m!7503438))

(assert (=> b!6748909 m!7503402))

(assert (=> b!6748909 m!7503402))

(assert (=> b!6748909 m!7503406))

(declare-fun m!7503440 () Bool)

(assert (=> b!6748919 m!7503440))

(assert (=> b!6748914 m!7503398))

(assert (=> b!6748912 m!7503398))

(assert (=> b!6748173 d!2119858))

(declare-fun d!2119860 () Bool)

(assert (=> d!2119860 (= (matchR!8764 lt!2440700 s!2326) (matchRSpec!3682 lt!2440700 s!2326))))

(declare-fun lt!2440816 () Unit!159853)

(assert (=> d!2119860 (= lt!2440816 (choose!50349 lt!2440700 s!2326))))

(assert (=> d!2119860 (validRegex!8317 lt!2440700)))

(assert (=> d!2119860 (= (mainMatchTheorem!3682 lt!2440700 s!2326) lt!2440816)))

(declare-fun bs!1793766 () Bool)

(assert (= bs!1793766 d!2119860))

(assert (=> bs!1793766 m!7502828))

(assert (=> bs!1793766 m!7502826))

(declare-fun m!7503442 () Bool)

(assert (=> bs!1793766 m!7503442))

(assert (=> bs!1793766 m!7503438))

(assert (=> b!6748173 d!2119860))

(declare-fun bs!1793767 () Bool)

(declare-fun d!2119862 () Bool)

(assert (= bs!1793767 (and d!2119862 d!2119732)))

(declare-fun lambda!379586 () Int)

(assert (=> bs!1793767 (= lambda!379586 lambda!379537)))

(declare-fun bs!1793768 () Bool)

(assert (= bs!1793768 (and d!2119862 d!2119814)))

(assert (=> bs!1793768 (= lambda!379586 lambda!379575)))

(declare-fun bs!1793769 () Bool)

(assert (= bs!1793769 (and d!2119862 d!2119854)))

(assert (=> bs!1793769 (= lambda!379586 lambda!379583)))

(assert (=> d!2119862 (= (inv!84699 (h!72368 zl!343)) (forall!15778 (exprs!6465 (h!72368 zl!343)) lambda!379586))))

(declare-fun bs!1793770 () Bool)

(assert (= bs!1793770 d!2119862))

(declare-fun m!7503444 () Bool)

(assert (=> bs!1793770 m!7503444))

(assert (=> b!6748172 d!2119862))

(declare-fun d!2119864 () Bool)

(declare-fun lt!2440817 () Regex!16581)

(assert (=> d!2119864 (validRegex!8317 lt!2440817)))

(assert (=> d!2119864 (= lt!2440817 (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))

(assert (=> d!2119864 (= (unfocusZipper!2323 (Cons!65920 lt!2440699 Nil!65920)) lt!2440817)))

(declare-fun bs!1793771 () Bool)

(assert (= bs!1793771 d!2119864))

(declare-fun m!7503446 () Bool)

(assert (=> bs!1793771 m!7503446))

(declare-fun m!7503448 () Bool)

(assert (=> bs!1793771 m!7503448))

(assert (=> bs!1793771 m!7503448))

(declare-fun m!7503450 () Bool)

(assert (=> bs!1793771 m!7503450))

(assert (=> b!6748171 d!2119864))

(declare-fun d!2119866 () Bool)

(assert (=> d!2119866 (= (isEmpty!38270 (t!379745 zl!343)) ((_ is Nil!65920) (t!379745 zl!343)))))

(assert (=> b!6748179 d!2119866))

(declare-fun d!2119868 () Bool)

(declare-fun lt!2440818 () Regex!16581)

(assert (=> d!2119868 (validRegex!8317 lt!2440818)))

(assert (=> d!2119868 (= lt!2440818 (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))

(assert (=> d!2119868 (= (unfocusZipper!2323 (Cons!65920 lt!2440701 Nil!65920)) lt!2440818)))

(declare-fun bs!1793772 () Bool)

(assert (= bs!1793772 d!2119868))

(declare-fun m!7503452 () Bool)

(assert (=> bs!1793772 m!7503452))

(declare-fun m!7503454 () Bool)

(assert (=> bs!1793772 m!7503454))

(assert (=> bs!1793772 m!7503454))

(declare-fun m!7503456 () Bool)

(assert (=> bs!1793772 m!7503456))

(assert (=> b!6748178 d!2119868))

(declare-fun b!6748939 () Bool)

(declare-fun e!4076029 () Bool)

(declare-fun e!4076027 () Bool)

(assert (=> b!6748939 (= e!4076029 e!4076027)))

(declare-fun res!2760727 () Bool)

(assert (=> b!6748939 (= res!2760727 (not (nullable!6566 (reg!16910 r!7292))))))

(assert (=> b!6748939 (=> (not res!2760727) (not e!4076027))))

(declare-fun b!6748940 () Bool)

(declare-fun e!4076032 () Bool)

(declare-fun call!610280 () Bool)

(assert (=> b!6748940 (= e!4076032 call!610280)))

(declare-fun b!6748941 () Bool)

(declare-fun res!2760730 () Bool)

(assert (=> b!6748941 (=> (not res!2760730) (not e!4076032))))

(declare-fun call!610282 () Bool)

(assert (=> b!6748941 (= res!2760730 call!610282)))

(declare-fun e!4076030 () Bool)

(assert (=> b!6748941 (= e!4076030 e!4076032)))

(declare-fun d!2119870 () Bool)

(declare-fun res!2760728 () Bool)

(declare-fun e!4076033 () Bool)

(assert (=> d!2119870 (=> res!2760728 e!4076033)))

(assert (=> d!2119870 (= res!2760728 ((_ is ElementMatch!16581) r!7292))))

(assert (=> d!2119870 (= (validRegex!8317 r!7292) e!4076033)))

(declare-fun b!6748942 () Bool)

(declare-fun res!2760726 () Bool)

(declare-fun e!4076031 () Bool)

(assert (=> b!6748942 (=> res!2760726 e!4076031)))

(assert (=> b!6748942 (= res!2760726 (not ((_ is Concat!25426) r!7292)))))

(assert (=> b!6748942 (= e!4076030 e!4076031)))

(declare-fun b!6748943 () Bool)

(declare-fun e!4076028 () Bool)

(assert (=> b!6748943 (= e!4076028 call!610280)))

(declare-fun b!6748944 () Bool)

(declare-fun call!610281 () Bool)

(assert (=> b!6748944 (= e!4076027 call!610281)))

(declare-fun b!6748945 () Bool)

(assert (=> b!6748945 (= e!4076031 e!4076028)))

(declare-fun res!2760729 () Bool)

(assert (=> b!6748945 (=> (not res!2760729) (not e!4076028))))

(assert (=> b!6748945 (= res!2760729 call!610282)))

(declare-fun bm!610275 () Bool)

(assert (=> bm!610275 (= call!610280 call!610281)))

(declare-fun bm!610276 () Bool)

(declare-fun c!1252240 () Bool)

(assert (=> bm!610276 (= call!610282 (validRegex!8317 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(declare-fun bm!610277 () Bool)

(declare-fun c!1252239 () Bool)

(assert (=> bm!610277 (= call!610281 (validRegex!8317 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))

(declare-fun b!6748946 () Bool)

(assert (=> b!6748946 (= e!4076029 e!4076030)))

(assert (=> b!6748946 (= c!1252240 ((_ is Union!16581) r!7292))))

(declare-fun b!6748947 () Bool)

(assert (=> b!6748947 (= e!4076033 e!4076029)))

(assert (=> b!6748947 (= c!1252239 ((_ is Star!16581) r!7292))))

(assert (= (and d!2119870 (not res!2760728)) b!6748947))

(assert (= (and b!6748947 c!1252239) b!6748939))

(assert (= (and b!6748947 (not c!1252239)) b!6748946))

(assert (= (and b!6748939 res!2760727) b!6748944))

(assert (= (and b!6748946 c!1252240) b!6748941))

(assert (= (and b!6748946 (not c!1252240)) b!6748942))

(assert (= (and b!6748941 res!2760730) b!6748940))

(assert (= (and b!6748942 (not res!2760726)) b!6748945))

(assert (= (and b!6748945 res!2760729) b!6748943))

(assert (= (or b!6748940 b!6748943) bm!610275))

(assert (= (or b!6748941 b!6748945) bm!610276))

(assert (= (or b!6748944 bm!610275) bm!610277))

(assert (=> b!6748939 m!7503370))

(declare-fun m!7503458 () Bool)

(assert (=> bm!610276 m!7503458))

(declare-fun m!7503460 () Bool)

(assert (=> bm!610277 m!7503460))

(assert (=> start!654500 d!2119870))

(declare-fun b!6748948 () Bool)

(declare-fun e!4076040 () Bool)

(declare-fun lt!2440819 () Bool)

(declare-fun call!610283 () Bool)

(assert (=> b!6748948 (= e!4076040 (= lt!2440819 call!610283))))

(declare-fun b!6748949 () Bool)

(declare-fun res!2760734 () Bool)

(declare-fun e!4076037 () Bool)

(assert (=> b!6748949 (=> (not res!2760734) (not e!4076037))))

(assert (=> b!6748949 (= res!2760734 (not call!610283))))

(declare-fun b!6748950 () Bool)

(declare-fun res!2760731 () Bool)

(declare-fun e!4076035 () Bool)

(assert (=> b!6748950 (=> res!2760731 e!4076035)))

(assert (=> b!6748950 (= res!2760731 (not (isEmpty!38269 (tail!12671 (_2!36859 lt!2440718)))))))

(declare-fun b!6748951 () Bool)

(declare-fun e!4076036 () Bool)

(assert (=> b!6748951 (= e!4076036 (matchR!8764 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))) (tail!12671 (_2!36859 lt!2440718))))))

(declare-fun b!6748952 () Bool)

(declare-fun e!4076034 () Bool)

(assert (=> b!6748952 (= e!4076034 e!4076035)))

(declare-fun res!2760733 () Bool)

(assert (=> b!6748952 (=> res!2760733 e!4076035)))

(assert (=> b!6748952 (= res!2760733 call!610283)))

(declare-fun d!2119872 () Bool)

(assert (=> d!2119872 e!4076040))

(declare-fun c!1252242 () Bool)

(assert (=> d!2119872 (= c!1252242 ((_ is EmptyExpr!16581) r!7292))))

(assert (=> d!2119872 (= lt!2440819 e!4076036)))

(declare-fun c!1252243 () Bool)

(assert (=> d!2119872 (= c!1252243 (isEmpty!38269 (_2!36859 lt!2440718)))))

(assert (=> d!2119872 (validRegex!8317 r!7292)))

(assert (=> d!2119872 (= (matchR!8764 r!7292 (_2!36859 lt!2440718)) lt!2440819)))

(declare-fun b!6748953 () Bool)

(assert (=> b!6748953 (= e!4076035 (not (= (head!13586 (_2!36859 lt!2440718)) (c!1252033 r!7292))))))

(declare-fun b!6748954 () Bool)

(declare-fun e!4076038 () Bool)

(assert (=> b!6748954 (= e!4076040 e!4076038)))

(declare-fun c!1252241 () Bool)

(assert (=> b!6748954 (= c!1252241 ((_ is EmptyLang!16581) r!7292))))

(declare-fun b!6748955 () Bool)

(assert (=> b!6748955 (= e!4076037 (= (head!13586 (_2!36859 lt!2440718)) (c!1252033 r!7292)))))

(declare-fun bm!610278 () Bool)

(assert (=> bm!610278 (= call!610283 (isEmpty!38269 (_2!36859 lt!2440718)))))

(declare-fun b!6748956 () Bool)

(declare-fun res!2760735 () Bool)

(declare-fun e!4076039 () Bool)

(assert (=> b!6748956 (=> res!2760735 e!4076039)))

(assert (=> b!6748956 (= res!2760735 (not ((_ is ElementMatch!16581) r!7292)))))

(assert (=> b!6748956 (= e!4076038 e!4076039)))

(declare-fun b!6748957 () Bool)

(declare-fun res!2760736 () Bool)

(assert (=> b!6748957 (=> res!2760736 e!4076039)))

(assert (=> b!6748957 (= res!2760736 e!4076037)))

(declare-fun res!2760732 () Bool)

(assert (=> b!6748957 (=> (not res!2760732) (not e!4076037))))

(assert (=> b!6748957 (= res!2760732 lt!2440819)))

(declare-fun b!6748958 () Bool)

(assert (=> b!6748958 (= e!4076038 (not lt!2440819))))

(declare-fun b!6748959 () Bool)

(declare-fun res!2760738 () Bool)

(assert (=> b!6748959 (=> (not res!2760738) (not e!4076037))))

(assert (=> b!6748959 (= res!2760738 (isEmpty!38269 (tail!12671 (_2!36859 lt!2440718))))))

(declare-fun b!6748960 () Bool)

(assert (=> b!6748960 (= e!4076036 (nullable!6566 r!7292))))

(declare-fun b!6748961 () Bool)

(assert (=> b!6748961 (= e!4076039 e!4076034)))

(declare-fun res!2760737 () Bool)

(assert (=> b!6748961 (=> (not res!2760737) (not e!4076034))))

(assert (=> b!6748961 (= res!2760737 (not lt!2440819))))

(assert (= (and d!2119872 c!1252243) b!6748960))

(assert (= (and d!2119872 (not c!1252243)) b!6748951))

(assert (= (and d!2119872 c!1252242) b!6748948))

(assert (= (and d!2119872 (not c!1252242)) b!6748954))

(assert (= (and b!6748954 c!1252241) b!6748958))

(assert (= (and b!6748954 (not c!1252241)) b!6748956))

(assert (= (and b!6748956 (not res!2760735)) b!6748957))

(assert (= (and b!6748957 res!2760732) b!6748949))

(assert (= (and b!6748949 res!2760734) b!6748959))

(assert (= (and b!6748959 res!2760738) b!6748955))

(assert (= (and b!6748957 (not res!2760736)) b!6748961))

(assert (= (and b!6748961 res!2760737) b!6748952))

(assert (= (and b!6748952 (not res!2760733)) b!6748950))

(assert (= (and b!6748950 (not res!2760731)) b!6748953))

(assert (= (or b!6748948 b!6748949 b!6748952) bm!610278))

(declare-fun m!7503462 () Bool)

(assert (=> bm!610278 m!7503462))

(declare-fun m!7503464 () Bool)

(assert (=> b!6748951 m!7503464))

(assert (=> b!6748951 m!7503464))

(declare-fun m!7503466 () Bool)

(assert (=> b!6748951 m!7503466))

(declare-fun m!7503468 () Bool)

(assert (=> b!6748951 m!7503468))

(assert (=> b!6748951 m!7503466))

(assert (=> b!6748951 m!7503468))

(declare-fun m!7503470 () Bool)

(assert (=> b!6748951 m!7503470))

(assert (=> b!6748959 m!7503468))

(assert (=> b!6748959 m!7503468))

(declare-fun m!7503472 () Bool)

(assert (=> b!6748959 m!7503472))

(assert (=> d!2119872 m!7503462))

(assert (=> d!2119872 m!7502880))

(assert (=> b!6748950 m!7503468))

(assert (=> b!6748950 m!7503468))

(assert (=> b!6748950 m!7503472))

(assert (=> b!6748960 m!7503408))

(assert (=> b!6748955 m!7503464))

(assert (=> b!6748953 m!7503464))

(assert (=> b!6748177 d!2119872))

(declare-fun bs!1793773 () Bool)

(declare-fun d!2119874 () Bool)

(assert (= bs!1793773 (and d!2119874 d!2119732)))

(declare-fun lambda!379589 () Int)

(assert (=> bs!1793773 (= lambda!379589 lambda!379537)))

(declare-fun bs!1793774 () Bool)

(assert (= bs!1793774 (and d!2119874 d!2119814)))

(assert (=> bs!1793774 (= lambda!379589 lambda!379575)))

(declare-fun bs!1793775 () Bool)

(assert (= bs!1793775 (and d!2119874 d!2119854)))

(assert (=> bs!1793775 (= lambda!379589 lambda!379583)))

(declare-fun bs!1793776 () Bool)

(assert (= bs!1793776 (and d!2119874 d!2119862)))

(assert (=> bs!1793776 (= lambda!379589 lambda!379586)))

(declare-fun b!6748982 () Bool)

(declare-fun e!4076054 () Bool)

(declare-fun lt!2440822 () Regex!16581)

(declare-fun isEmptyLang!1953 (Regex!16581) Bool)

(assert (=> b!6748982 (= e!4076054 (isEmptyLang!1953 lt!2440822))))

(declare-fun b!6748983 () Bool)

(declare-fun e!4076058 () Regex!16581)

(declare-fun e!4076053 () Regex!16581)

(assert (=> b!6748983 (= e!4076058 e!4076053)))

(declare-fun c!1252255 () Bool)

(assert (=> b!6748983 (= c!1252255 ((_ is Cons!65918) (unfocusZipperList!2002 zl!343)))))

(declare-fun e!4076057 () Bool)

(assert (=> d!2119874 e!4076057))

(declare-fun res!2760744 () Bool)

(assert (=> d!2119874 (=> (not res!2760744) (not e!4076057))))

(assert (=> d!2119874 (= res!2760744 (validRegex!8317 lt!2440822))))

(assert (=> d!2119874 (= lt!2440822 e!4076058)))

(declare-fun c!1252253 () Bool)

(declare-fun e!4076055 () Bool)

(assert (=> d!2119874 (= c!1252253 e!4076055)))

(declare-fun res!2760743 () Bool)

(assert (=> d!2119874 (=> (not res!2760743) (not e!4076055))))

(assert (=> d!2119874 (= res!2760743 ((_ is Cons!65918) (unfocusZipperList!2002 zl!343)))))

(assert (=> d!2119874 (forall!15778 (unfocusZipperList!2002 zl!343) lambda!379589)))

(assert (=> d!2119874 (= (generalisedUnion!2425 (unfocusZipperList!2002 zl!343)) lt!2440822)))

(declare-fun b!6748984 () Bool)

(declare-fun e!4076056 () Bool)

(declare-fun isUnion!1383 (Regex!16581) Bool)

(assert (=> b!6748984 (= e!4076056 (isUnion!1383 lt!2440822))))

(declare-fun b!6748985 () Bool)

(assert (=> b!6748985 (= e!4076053 (Union!16581 (h!72366 (unfocusZipperList!2002 zl!343)) (generalisedUnion!2425 (t!379743 (unfocusZipperList!2002 zl!343)))))))

(declare-fun b!6748986 () Bool)

(assert (=> b!6748986 (= e!4076057 e!4076054)))

(declare-fun c!1252254 () Bool)

(assert (=> b!6748986 (= c!1252254 (isEmpty!38271 (unfocusZipperList!2002 zl!343)))))

(declare-fun b!6748987 () Bool)

(assert (=> b!6748987 (= e!4076055 (isEmpty!38271 (t!379743 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6748988 () Bool)

(assert (=> b!6748988 (= e!4076056 (= lt!2440822 (head!13584 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6748989 () Bool)

(assert (=> b!6748989 (= e!4076058 (h!72366 (unfocusZipperList!2002 zl!343)))))

(declare-fun b!6748990 () Bool)

(assert (=> b!6748990 (= e!4076054 e!4076056)))

(declare-fun c!1252252 () Bool)

(assert (=> b!6748990 (= c!1252252 (isEmpty!38271 (tail!12669 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6748991 () Bool)

(assert (=> b!6748991 (= e!4076053 EmptyLang!16581)))

(assert (= (and d!2119874 res!2760743) b!6748987))

(assert (= (and d!2119874 c!1252253) b!6748989))

(assert (= (and d!2119874 (not c!1252253)) b!6748983))

(assert (= (and b!6748983 c!1252255) b!6748985))

(assert (= (and b!6748983 (not c!1252255)) b!6748991))

(assert (= (and d!2119874 res!2760744) b!6748986))

(assert (= (and b!6748986 c!1252254) b!6748982))

(assert (= (and b!6748986 (not c!1252254)) b!6748990))

(assert (= (and b!6748990 c!1252252) b!6748988))

(assert (= (and b!6748990 (not c!1252252)) b!6748984))

(declare-fun m!7503474 () Bool)

(assert (=> b!6748987 m!7503474))

(declare-fun m!7503476 () Bool)

(assert (=> d!2119874 m!7503476))

(assert (=> d!2119874 m!7502822))

(declare-fun m!7503478 () Bool)

(assert (=> d!2119874 m!7503478))

(declare-fun m!7503480 () Bool)

(assert (=> b!6748984 m!7503480))

(declare-fun m!7503482 () Bool)

(assert (=> b!6748982 m!7503482))

(declare-fun m!7503484 () Bool)

(assert (=> b!6748985 m!7503484))

(assert (=> b!6748990 m!7502822))

(declare-fun m!7503486 () Bool)

(assert (=> b!6748990 m!7503486))

(assert (=> b!6748990 m!7503486))

(declare-fun m!7503488 () Bool)

(assert (=> b!6748990 m!7503488))

(assert (=> b!6748986 m!7502822))

(declare-fun m!7503490 () Bool)

(assert (=> b!6748986 m!7503490))

(assert (=> b!6748988 m!7502822))

(declare-fun m!7503492 () Bool)

(assert (=> b!6748988 m!7503492))

(assert (=> b!6748157 d!2119874))

(declare-fun bs!1793777 () Bool)

(declare-fun d!2119876 () Bool)

(assert (= bs!1793777 (and d!2119876 d!2119732)))

(declare-fun lambda!379592 () Int)

(assert (=> bs!1793777 (= lambda!379592 lambda!379537)))

(declare-fun bs!1793778 () Bool)

(assert (= bs!1793778 (and d!2119876 d!2119862)))

(assert (=> bs!1793778 (= lambda!379592 lambda!379586)))

(declare-fun bs!1793779 () Bool)

(assert (= bs!1793779 (and d!2119876 d!2119814)))

(assert (=> bs!1793779 (= lambda!379592 lambda!379575)))

(declare-fun bs!1793780 () Bool)

(assert (= bs!1793780 (and d!2119876 d!2119874)))

(assert (=> bs!1793780 (= lambda!379592 lambda!379589)))

(declare-fun bs!1793781 () Bool)

(assert (= bs!1793781 (and d!2119876 d!2119854)))

(assert (=> bs!1793781 (= lambda!379592 lambda!379583)))

(declare-fun lt!2440825 () List!66042)

(assert (=> d!2119876 (forall!15778 lt!2440825 lambda!379592)))

(declare-fun e!4076061 () List!66042)

(assert (=> d!2119876 (= lt!2440825 e!4076061)))

(declare-fun c!1252258 () Bool)

(assert (=> d!2119876 (= c!1252258 ((_ is Cons!65920) zl!343))))

(assert (=> d!2119876 (= (unfocusZipperList!2002 zl!343) lt!2440825)))

(declare-fun b!6748996 () Bool)

(assert (=> b!6748996 (= e!4076061 (Cons!65918 (generalisedConcat!2178 (exprs!6465 (h!72368 zl!343))) (unfocusZipperList!2002 (t!379745 zl!343))))))

(declare-fun b!6748997 () Bool)

(assert (=> b!6748997 (= e!4076061 Nil!65918)))

(assert (= (and d!2119876 c!1252258) b!6748996))

(assert (= (and d!2119876 (not c!1252258)) b!6748997))

(declare-fun m!7503494 () Bool)

(assert (=> d!2119876 m!7503494))

(assert (=> b!6748996 m!7502864))

(declare-fun m!7503496 () Bool)

(assert (=> b!6748996 m!7503496))

(assert (=> b!6748157 d!2119876))

(assert (=> b!6748176 d!2119772))

(declare-fun b!6749006 () Bool)

(declare-fun e!4076066 () List!66043)

(assert (=> b!6749006 (= e!4076066 (_2!36859 lt!2440718))))

(declare-fun b!6749008 () Bool)

(declare-fun res!2760749 () Bool)

(declare-fun e!4076067 () Bool)

(assert (=> b!6749008 (=> (not res!2760749) (not e!4076067))))

(declare-fun lt!2440828 () List!66043)

(declare-fun size!40621 (List!66043) Int)

(assert (=> b!6749008 (= res!2760749 (= (size!40621 lt!2440828) (+ (size!40621 (_1!36859 lt!2440718)) (size!40621 (_2!36859 lt!2440718)))))))

(declare-fun b!6749007 () Bool)

(assert (=> b!6749007 (= e!4076066 (Cons!65919 (h!72367 (_1!36859 lt!2440718)) (++!14735 (t!379744 (_1!36859 lt!2440718)) (_2!36859 lt!2440718))))))

(declare-fun d!2119878 () Bool)

(assert (=> d!2119878 e!4076067))

(declare-fun res!2760750 () Bool)

(assert (=> d!2119878 (=> (not res!2760750) (not e!4076067))))

(declare-fun content!12821 (List!66043) (InoxSet C!33432))

(assert (=> d!2119878 (= res!2760750 (= (content!12821 lt!2440828) ((_ map or) (content!12821 (_1!36859 lt!2440718)) (content!12821 (_2!36859 lt!2440718)))))))

(assert (=> d!2119878 (= lt!2440828 e!4076066)))

(declare-fun c!1252261 () Bool)

(assert (=> d!2119878 (= c!1252261 ((_ is Nil!65919) (_1!36859 lt!2440718)))))

(assert (=> d!2119878 (= (++!14735 (_1!36859 lt!2440718) (_2!36859 lt!2440718)) lt!2440828)))

(declare-fun b!6749009 () Bool)

(assert (=> b!6749009 (= e!4076067 (or (not (= (_2!36859 lt!2440718) Nil!65919)) (= lt!2440828 (_1!36859 lt!2440718))))))

(assert (= (and d!2119878 c!1252261) b!6749006))

(assert (= (and d!2119878 (not c!1252261)) b!6749007))

(assert (= (and d!2119878 res!2760750) b!6749008))

(assert (= (and b!6749008 res!2760749) b!6749009))

(declare-fun m!7503498 () Bool)

(assert (=> b!6749008 m!7503498))

(declare-fun m!7503500 () Bool)

(assert (=> b!6749008 m!7503500))

(declare-fun m!7503502 () Bool)

(assert (=> b!6749008 m!7503502))

(declare-fun m!7503504 () Bool)

(assert (=> b!6749007 m!7503504))

(declare-fun m!7503506 () Bool)

(assert (=> d!2119878 m!7503506))

(declare-fun m!7503508 () Bool)

(assert (=> d!2119878 m!7503508))

(declare-fun m!7503510 () Bool)

(assert (=> d!2119878 m!7503510))

(assert (=> b!6748156 d!2119878))

(declare-fun d!2119880 () Bool)

(assert (=> d!2119880 (= (get!22941 lt!2440707) (v!52667 lt!2440707))))

(assert (=> b!6748156 d!2119880))

(declare-fun d!2119882 () Bool)

(declare-fun c!1252264 () Bool)

(assert (=> d!2119882 (= c!1252264 (isEmpty!38269 s!2326))))

(declare-fun e!4076070 () Bool)

(assert (=> d!2119882 (= (matchZipper!2567 lt!2440717 s!2326) e!4076070)))

(declare-fun b!6749014 () Bool)

(declare-fun nullableZipper!2294 ((InoxSet Context!11930)) Bool)

(assert (=> b!6749014 (= e!4076070 (nullableZipper!2294 lt!2440717))))

(declare-fun b!6749015 () Bool)

(assert (=> b!6749015 (= e!4076070 (matchZipper!2567 (derivationStepZipper!2525 lt!2440717 (head!13586 s!2326)) (tail!12671 s!2326)))))

(assert (= (and d!2119882 c!1252264) b!6749014))

(assert (= (and d!2119882 (not c!1252264)) b!6749015))

(assert (=> d!2119882 m!7502866))

(declare-fun m!7503512 () Bool)

(assert (=> b!6749014 m!7503512))

(assert (=> b!6749015 m!7503398))

(assert (=> b!6749015 m!7503398))

(declare-fun m!7503514 () Bool)

(assert (=> b!6749015 m!7503514))

(assert (=> b!6749015 m!7503402))

(assert (=> b!6749015 m!7503514))

(assert (=> b!6749015 m!7503402))

(declare-fun m!7503516 () Bool)

(assert (=> b!6749015 m!7503516))

(assert (=> b!6748174 d!2119882))

(declare-fun d!2119884 () Bool)

(declare-fun c!1252265 () Bool)

(assert (=> d!2119884 (= c!1252265 (isEmpty!38269 (t!379744 s!2326)))))

(declare-fun e!4076071 () Bool)

(assert (=> d!2119884 (= (matchZipper!2567 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (t!379744 s!2326)) e!4076071)))

(declare-fun b!6749016 () Bool)

(assert (=> b!6749016 (= e!4076071 (nullableZipper!2294 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326))))))

(declare-fun b!6749017 () Bool)

(assert (=> b!6749017 (= e!4076071 (matchZipper!2567 (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (head!13586 (t!379744 s!2326))) (tail!12671 (t!379744 s!2326))))))

(assert (= (and d!2119884 c!1252265) b!6749016))

(assert (= (and d!2119884 (not c!1252265)) b!6749017))

(declare-fun m!7503518 () Bool)

(assert (=> d!2119884 m!7503518))

(assert (=> b!6749016 m!7502894))

(declare-fun m!7503520 () Bool)

(assert (=> b!6749016 m!7503520))

(declare-fun m!7503522 () Bool)

(assert (=> b!6749017 m!7503522))

(assert (=> b!6749017 m!7502894))

(assert (=> b!6749017 m!7503522))

(declare-fun m!7503524 () Bool)

(assert (=> b!6749017 m!7503524))

(declare-fun m!7503526 () Bool)

(assert (=> b!6749017 m!7503526))

(assert (=> b!6749017 m!7503524))

(assert (=> b!6749017 m!7503526))

(declare-fun m!7503528 () Bool)

(assert (=> b!6749017 m!7503528))

(assert (=> b!6748174 d!2119884))

(declare-fun bs!1793782 () Bool)

(declare-fun d!2119886 () Bool)

(assert (= bs!1793782 (and d!2119886 b!6748154)))

(declare-fun lambda!379593 () Int)

(assert (=> bs!1793782 (= lambda!379593 lambda!379509)))

(declare-fun bs!1793783 () Bool)

(assert (= bs!1793783 (and d!2119886 d!2119718)))

(assert (=> bs!1793783 (= lambda!379593 lambda!379524)))

(declare-fun bs!1793784 () Bool)

(assert (= bs!1793784 (and d!2119886 d!2119820)))

(assert (=> bs!1793784 (= lambda!379593 lambda!379576)))

(assert (=> d!2119886 true))

(assert (=> d!2119886 (= (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (flatMap!2062 lt!2440717 lambda!379593))))

(declare-fun bs!1793785 () Bool)

(assert (= bs!1793785 d!2119886))

(declare-fun m!7503530 () Bool)

(assert (=> bs!1793785 m!7503530))

(assert (=> b!6748174 d!2119886))

(declare-fun b!6749022 () Bool)

(declare-fun e!4076074 () Bool)

(declare-fun tp!1849500 () Bool)

(declare-fun tp!1849501 () Bool)

(assert (=> b!6749022 (= e!4076074 (and tp!1849500 tp!1849501))))

(assert (=> b!6748164 (= tp!1849435 e!4076074)))

(assert (= (and b!6748164 ((_ is Cons!65918) (exprs!6465 (h!72368 zl!343)))) b!6749022))

(declare-fun condSetEmpty!46123 () Bool)

(assert (=> setNonEmpty!46117 (= condSetEmpty!46123 (= setRest!46117 ((as const (Array Context!11930 Bool)) false)))))

(declare-fun setRes!46123 () Bool)

(assert (=> setNonEmpty!46117 (= tp!1849437 setRes!46123)))

(declare-fun setIsEmpty!46123 () Bool)

(assert (=> setIsEmpty!46123 setRes!46123))

(declare-fun setElem!46123 () Context!11930)

(declare-fun tp!1849506 () Bool)

(declare-fun setNonEmpty!46123 () Bool)

(declare-fun e!4076077 () Bool)

(assert (=> setNonEmpty!46123 (= setRes!46123 (and tp!1849506 (inv!84699 setElem!46123) e!4076077))))

(declare-fun setRest!46123 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46123 (= setRest!46117 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46123 true) setRest!46123))))

(declare-fun b!6749027 () Bool)

(declare-fun tp!1849507 () Bool)

(assert (=> b!6749027 (= e!4076077 tp!1849507)))

(assert (= (and setNonEmpty!46117 condSetEmpty!46123) setIsEmpty!46123))

(assert (= (and setNonEmpty!46117 (not condSetEmpty!46123)) setNonEmpty!46123))

(assert (= setNonEmpty!46123 b!6749027))

(declare-fun m!7503532 () Bool)

(assert (=> setNonEmpty!46123 m!7503532))

(declare-fun b!6749032 () Bool)

(declare-fun e!4076080 () Bool)

(declare-fun tp!1849510 () Bool)

(assert (=> b!6749032 (= e!4076080 (and tp_is_empty!42415 tp!1849510))))

(assert (=> b!6748167 (= tp!1849430 e!4076080)))

(assert (= (and b!6748167 ((_ is Cons!65919) (t!379744 s!2326))) b!6749032))

(declare-fun b!6749044 () Bool)

(declare-fun e!4076083 () Bool)

(declare-fun tp!1849525 () Bool)

(declare-fun tp!1849522 () Bool)

(assert (=> b!6749044 (= e!4076083 (and tp!1849525 tp!1849522))))

(declare-fun b!6749046 () Bool)

(declare-fun tp!1849521 () Bool)

(declare-fun tp!1849523 () Bool)

(assert (=> b!6749046 (= e!4076083 (and tp!1849521 tp!1849523))))

(declare-fun b!6749045 () Bool)

(declare-fun tp!1849524 () Bool)

(assert (=> b!6749045 (= e!4076083 tp!1849524)))

(assert (=> b!6748182 (= tp!1849428 e!4076083)))

(declare-fun b!6749043 () Bool)

(assert (=> b!6749043 (= e!4076083 tp_is_empty!42415)))

(assert (= (and b!6748182 ((_ is ElementMatch!16581) (reg!16910 r!7292))) b!6749043))

(assert (= (and b!6748182 ((_ is Concat!25426) (reg!16910 r!7292))) b!6749044))

(assert (= (and b!6748182 ((_ is Star!16581) (reg!16910 r!7292))) b!6749045))

(assert (= (and b!6748182 ((_ is Union!16581) (reg!16910 r!7292))) b!6749046))

(declare-fun b!6749054 () Bool)

(declare-fun e!4076089 () Bool)

(declare-fun tp!1849530 () Bool)

(assert (=> b!6749054 (= e!4076089 tp!1849530)))

(declare-fun b!6749053 () Bool)

(declare-fun tp!1849531 () Bool)

(declare-fun e!4076088 () Bool)

(assert (=> b!6749053 (= e!4076088 (and (inv!84699 (h!72368 (t!379745 zl!343))) e!4076089 tp!1849531))))

(assert (=> b!6748172 (= tp!1849429 e!4076088)))

(assert (= b!6749053 b!6749054))

(assert (= (and b!6748172 ((_ is Cons!65920) (t!379745 zl!343))) b!6749053))

(declare-fun m!7503534 () Bool)

(assert (=> b!6749053 m!7503534))

(declare-fun b!6749056 () Bool)

(declare-fun e!4076090 () Bool)

(declare-fun tp!1849536 () Bool)

(declare-fun tp!1849533 () Bool)

(assert (=> b!6749056 (= e!4076090 (and tp!1849536 tp!1849533))))

(declare-fun b!6749058 () Bool)

(declare-fun tp!1849532 () Bool)

(declare-fun tp!1849534 () Bool)

(assert (=> b!6749058 (= e!4076090 (and tp!1849532 tp!1849534))))

(declare-fun b!6749057 () Bool)

(declare-fun tp!1849535 () Bool)

(assert (=> b!6749057 (= e!4076090 tp!1849535)))

(assert (=> b!6748160 (= tp!1849432 e!4076090)))

(declare-fun b!6749055 () Bool)

(assert (=> b!6749055 (= e!4076090 tp_is_empty!42415)))

(assert (= (and b!6748160 ((_ is ElementMatch!16581) (regOne!33674 r!7292))) b!6749055))

(assert (= (and b!6748160 ((_ is Concat!25426) (regOne!33674 r!7292))) b!6749056))

(assert (= (and b!6748160 ((_ is Star!16581) (regOne!33674 r!7292))) b!6749057))

(assert (= (and b!6748160 ((_ is Union!16581) (regOne!33674 r!7292))) b!6749058))

(declare-fun b!6749060 () Bool)

(declare-fun e!4076091 () Bool)

(declare-fun tp!1849541 () Bool)

(declare-fun tp!1849538 () Bool)

(assert (=> b!6749060 (= e!4076091 (and tp!1849541 tp!1849538))))

(declare-fun b!6749062 () Bool)

(declare-fun tp!1849537 () Bool)

(declare-fun tp!1849539 () Bool)

(assert (=> b!6749062 (= e!4076091 (and tp!1849537 tp!1849539))))

(declare-fun b!6749061 () Bool)

(declare-fun tp!1849540 () Bool)

(assert (=> b!6749061 (= e!4076091 tp!1849540)))

(assert (=> b!6748160 (= tp!1849431 e!4076091)))

(declare-fun b!6749059 () Bool)

(assert (=> b!6749059 (= e!4076091 tp_is_empty!42415)))

(assert (= (and b!6748160 ((_ is ElementMatch!16581) (regTwo!33674 r!7292))) b!6749059))

(assert (= (and b!6748160 ((_ is Concat!25426) (regTwo!33674 r!7292))) b!6749060))

(assert (= (and b!6748160 ((_ is Star!16581) (regTwo!33674 r!7292))) b!6749061))

(assert (= (and b!6748160 ((_ is Union!16581) (regTwo!33674 r!7292))) b!6749062))

(declare-fun b!6749064 () Bool)

(declare-fun e!4076092 () Bool)

(declare-fun tp!1849546 () Bool)

(declare-fun tp!1849543 () Bool)

(assert (=> b!6749064 (= e!4076092 (and tp!1849546 tp!1849543))))

(declare-fun b!6749066 () Bool)

(declare-fun tp!1849542 () Bool)

(declare-fun tp!1849544 () Bool)

(assert (=> b!6749066 (= e!4076092 (and tp!1849542 tp!1849544))))

(declare-fun b!6749065 () Bool)

(declare-fun tp!1849545 () Bool)

(assert (=> b!6749065 (= e!4076092 tp!1849545)))

(assert (=> b!6748180 (= tp!1849434 e!4076092)))

(declare-fun b!6749063 () Bool)

(assert (=> b!6749063 (= e!4076092 tp_is_empty!42415)))

(assert (= (and b!6748180 ((_ is ElementMatch!16581) (regOne!33675 r!7292))) b!6749063))

(assert (= (and b!6748180 ((_ is Concat!25426) (regOne!33675 r!7292))) b!6749064))

(assert (= (and b!6748180 ((_ is Star!16581) (regOne!33675 r!7292))) b!6749065))

(assert (= (and b!6748180 ((_ is Union!16581) (regOne!33675 r!7292))) b!6749066))

(declare-fun b!6749068 () Bool)

(declare-fun e!4076093 () Bool)

(declare-fun tp!1849551 () Bool)

(declare-fun tp!1849548 () Bool)

(assert (=> b!6749068 (= e!4076093 (and tp!1849551 tp!1849548))))

(declare-fun b!6749070 () Bool)

(declare-fun tp!1849547 () Bool)

(declare-fun tp!1849549 () Bool)

(assert (=> b!6749070 (= e!4076093 (and tp!1849547 tp!1849549))))

(declare-fun b!6749069 () Bool)

(declare-fun tp!1849550 () Bool)

(assert (=> b!6749069 (= e!4076093 tp!1849550)))

(assert (=> b!6748180 (= tp!1849433 e!4076093)))

(declare-fun b!6749067 () Bool)

(assert (=> b!6749067 (= e!4076093 tp_is_empty!42415)))

(assert (= (and b!6748180 ((_ is ElementMatch!16581) (regTwo!33675 r!7292))) b!6749067))

(assert (= (and b!6748180 ((_ is Concat!25426) (regTwo!33675 r!7292))) b!6749068))

(assert (= (and b!6748180 ((_ is Star!16581) (regTwo!33675 r!7292))) b!6749069))

(assert (= (and b!6748180 ((_ is Union!16581) (regTwo!33675 r!7292))) b!6749070))

(declare-fun b!6749071 () Bool)

(declare-fun e!4076094 () Bool)

(declare-fun tp!1849552 () Bool)

(declare-fun tp!1849553 () Bool)

(assert (=> b!6749071 (= e!4076094 (and tp!1849552 tp!1849553))))

(assert (=> b!6748170 (= tp!1849436 e!4076094)))

(assert (= (and b!6748170 ((_ is Cons!65918) (exprs!6465 setElem!46117))) b!6749071))

(declare-fun b_lambda!254163 () Bool)

(assert (= b_lambda!254159 (or b!6748154 b_lambda!254163)))

(declare-fun bs!1793786 () Bool)

(declare-fun d!2119888 () Bool)

(assert (= bs!1793786 (and d!2119888 b!6748154)))

(assert (=> bs!1793786 (= (dynLambda!26300 lambda!379509 lt!2440699) (derivationStepZipperUp!1735 lt!2440699 (h!72367 s!2326)))))

(assert (=> bs!1793786 m!7502852))

(assert (=> d!2119840 d!2119888))

(declare-fun b_lambda!254165 () Bool)

(assert (= b_lambda!254155 (or b!6748154 b_lambda!254165)))

(declare-fun bs!1793787 () Bool)

(declare-fun d!2119890 () Bool)

(assert (= bs!1793787 (and d!2119890 b!6748154)))

(assert (=> bs!1793787 (= (dynLambda!26300 lambda!379509 lt!2440713) (derivationStepZipperUp!1735 lt!2440713 (h!72367 s!2326)))))

(assert (=> bs!1793787 m!7502904))

(assert (=> d!2119822 d!2119890))

(declare-fun b_lambda!254167 () Bool)

(assert (= b_lambda!254157 (or b!6748154 b_lambda!254167)))

(declare-fun bs!1793788 () Bool)

(declare-fun d!2119892 () Bool)

(assert (= bs!1793788 (and d!2119892 b!6748154)))

(assert (=> bs!1793788 (= (dynLambda!26300 lambda!379509 lt!2440701) (derivationStepZipperUp!1735 lt!2440701 (h!72367 s!2326)))))

(assert (=> bs!1793788 m!7502916))

(assert (=> d!2119828 d!2119892))

(declare-fun b_lambda!254169 () Bool)

(assert (= b_lambda!254161 (or b!6748154 b_lambda!254169)))

(declare-fun bs!1793789 () Bool)

(declare-fun d!2119894 () Bool)

(assert (= bs!1793789 (and d!2119894 b!6748154)))

(assert (=> bs!1793789 (= (dynLambda!26300 lambda!379509 (h!72368 zl!343)) (derivationStepZipperUp!1735 (h!72368 zl!343) (h!72367 s!2326)))))

(assert (=> bs!1793789 m!7502846))

(assert (=> d!2119852 d!2119894))

(check-sat (not d!2119878) (not b!6748986) (not b!6749062) (not bm!610257) (not b!6749046) (not d!2119862) (not d!2119760) (not d!2119852) (not b!6749008) (not bm!610250) (not b!6748884) (not b!6748895) (not bm!610251) (not b!6749065) (not b!6749032) (not b!6749071) (not d!2119874) (not bm!610264) (not bm!610265) (not b!6748501) (not b!6748889) (not b!6749060) (not d!2119822) (not b!6748809) (not d!2119846) (not b!6748982) (not b!6748683) (not d!2119854) (not d!2119756) (not b!6748959) (not b!6748985) (not b!6748909) (not b!6749053) (not d!2119882) (not bm!610220) (not bm!610278) (not bm!610198) (not b_lambda!254167) (not b!6748990) (not d!2119770) (not b!6748368) (not d!2119872) (not d!2119802) (not b!6749064) (not bm!610276) (not d!2119796) (not d!2119762) (not d!2119868) (not b!6749061) (not bs!1793788) (not b!6748912) (not bm!610199) (not d!2119864) (not b!6748988) (not d!2119742) (not d!2119884) (not b!6748987) (not b!6749017) (not d!2119816) (not b!6748682) (not b!6749007) (not b!6748502) (not d!2119812) (not bm!610203) (not b!6748831) (not b!6748770) (not b!6749014) (not b!6748882) (not b!6748678) (not b!6748893) (not d!2119718) (not b!6748955) (not bm!610267) (not d!2119836) (not bm!610277) (not bm!610247) (not b!6748996) (not b!6748939) (not b!6749070) (not b_lambda!254163) (not d!2119858) (not b!6748901) (not b!6748417) (not b!6748918) (not b!6748919) (not b!6748815) (not d!2119826) tp_is_empty!42415 (not bm!610263) (not b!6749054) (not b!6749027) (not bm!610246) (not b!6749022) (not b!6749057) (not b!6748824) (not d!2119774) (not b!6749068) (not b_lambda!254165) (not b_lambda!254169) (not b!6749066) (not d!2119832) (not b!6748765) (not b!6748807) (not bm!610266) (not b!6749069) (not b!6748879) (not b!6748503) (not bs!1793787) (not d!2119860) (not b!6748681) (not b!6748904) (not b!6748680) (not b!6748880) (not b!6748806) (not b!6749056) (not bm!610252) (not b!6748871) (not b!6748768) (not d!2119732) (not d!2119820) (not b!6749045) (not b!6748874) (not b!6748953) (not setNonEmpty!46123) (not b!6748960) (not bm!610256) (not d!2119840) (not b!6748773) (not b!6748950) (not b!6748775) (not b!6748506) (not b!6748910) (not bm!610262) (not d!2119876) (not b!6748951) (not b!6748816) (not b!6749016) (not d!2119814) (not b!6748497) (not d!2119844) (not bs!1793786) (not b!6748498) (not b!6749044) (not bm!610268) (not d!2119886) (not d!2119848) (not b!6748676) (not b!6748811) (not d!2119830) (not b!6749058) (not b!6748984) (not d!2119772) (not b!6749015) (not bs!1793789) (not d!2119828) (not b!6748914) (not b!6748888) (not b!6748419) (not b!6748833) (not b!6748500))
(check-sat)
(get-model)

(declare-fun d!2120162 () Bool)

(declare-fun res!2760955 () Bool)

(declare-fun e!4076423 () Bool)

(assert (=> d!2120162 (=> res!2760955 e!4076423)))

(assert (=> d!2120162 (= res!2760955 ((_ is Nil!65918) (exprs!6465 setElem!46117)))))

(assert (=> d!2120162 (= (forall!15778 (exprs!6465 setElem!46117) lambda!379583) e!4076423)))

(declare-fun b!6749610 () Bool)

(declare-fun e!4076424 () Bool)

(assert (=> b!6749610 (= e!4076423 e!4076424)))

(declare-fun res!2760956 () Bool)

(assert (=> b!6749610 (=> (not res!2760956) (not e!4076424))))

(declare-fun dynLambda!26302 (Int Regex!16581) Bool)

(assert (=> b!6749610 (= res!2760956 (dynLambda!26302 lambda!379583 (h!72366 (exprs!6465 setElem!46117))))))

(declare-fun b!6749611 () Bool)

(assert (=> b!6749611 (= e!4076424 (forall!15778 (t!379743 (exprs!6465 setElem!46117)) lambda!379583))))

(assert (= (and d!2120162 (not res!2760955)) b!6749610))

(assert (= (and b!6749610 res!2760956) b!6749611))

(declare-fun b_lambda!254187 () Bool)

(assert (=> (not b_lambda!254187) (not b!6749610)))

(declare-fun m!7504122 () Bool)

(assert (=> b!6749610 m!7504122))

(declare-fun m!7504124 () Bool)

(assert (=> b!6749611 m!7504124))

(assert (=> d!2119854 d!2120162))

(declare-fun b!6749612 () Bool)

(declare-fun e!4076431 () Bool)

(declare-fun lt!2440866 () Bool)

(declare-fun call!610392 () Bool)

(assert (=> b!6749612 (= e!4076431 (= lt!2440866 call!610392))))

(declare-fun b!6749613 () Bool)

(declare-fun res!2760960 () Bool)

(declare-fun e!4076428 () Bool)

(assert (=> b!6749613 (=> (not res!2760960) (not e!4076428))))

(assert (=> b!6749613 (= res!2760960 (not call!610392))))

(declare-fun b!6749614 () Bool)

(declare-fun res!2760957 () Bool)

(declare-fun e!4076426 () Bool)

(assert (=> b!6749614 (=> res!2760957 e!4076426)))

(assert (=> b!6749614 (= res!2760957 (not (isEmpty!38269 (tail!12671 (tail!12671 s!2326)))))))

(declare-fun b!6749615 () Bool)

(declare-fun e!4076427 () Bool)

(assert (=> b!6749615 (= e!4076427 (matchR!8764 (derivativeStep!5251 (derivativeStep!5251 lt!2440700 (head!13586 s!2326)) (head!13586 (tail!12671 s!2326))) (tail!12671 (tail!12671 s!2326))))))

(declare-fun b!6749616 () Bool)

(declare-fun e!4076425 () Bool)

(assert (=> b!6749616 (= e!4076425 e!4076426)))

(declare-fun res!2760959 () Bool)

(assert (=> b!6749616 (=> res!2760959 e!4076426)))

(assert (=> b!6749616 (= res!2760959 call!610392)))

(declare-fun d!2120166 () Bool)

(assert (=> d!2120166 e!4076431))

(declare-fun c!1252437 () Bool)

(assert (=> d!2120166 (= c!1252437 ((_ is EmptyExpr!16581) (derivativeStep!5251 lt!2440700 (head!13586 s!2326))))))

(assert (=> d!2120166 (= lt!2440866 e!4076427)))

(declare-fun c!1252438 () Bool)

(assert (=> d!2120166 (= c!1252438 (isEmpty!38269 (tail!12671 s!2326)))))

(assert (=> d!2120166 (validRegex!8317 (derivativeStep!5251 lt!2440700 (head!13586 s!2326)))))

(assert (=> d!2120166 (= (matchR!8764 (derivativeStep!5251 lt!2440700 (head!13586 s!2326)) (tail!12671 s!2326)) lt!2440866)))

(declare-fun b!6749617 () Bool)

(assert (=> b!6749617 (= e!4076426 (not (= (head!13586 (tail!12671 s!2326)) (c!1252033 (derivativeStep!5251 lt!2440700 (head!13586 s!2326))))))))

(declare-fun b!6749618 () Bool)

(declare-fun e!4076429 () Bool)

(assert (=> b!6749618 (= e!4076431 e!4076429)))

(declare-fun c!1252436 () Bool)

(assert (=> b!6749618 (= c!1252436 ((_ is EmptyLang!16581) (derivativeStep!5251 lt!2440700 (head!13586 s!2326))))))

(declare-fun b!6749619 () Bool)

(assert (=> b!6749619 (= e!4076428 (= (head!13586 (tail!12671 s!2326)) (c!1252033 (derivativeStep!5251 lt!2440700 (head!13586 s!2326)))))))

(declare-fun bm!610387 () Bool)

(assert (=> bm!610387 (= call!610392 (isEmpty!38269 (tail!12671 s!2326)))))

(declare-fun b!6749620 () Bool)

(declare-fun res!2760961 () Bool)

(declare-fun e!4076430 () Bool)

(assert (=> b!6749620 (=> res!2760961 e!4076430)))

(assert (=> b!6749620 (= res!2760961 (not ((_ is ElementMatch!16581) (derivativeStep!5251 lt!2440700 (head!13586 s!2326)))))))

(assert (=> b!6749620 (= e!4076429 e!4076430)))

(declare-fun b!6749621 () Bool)

(declare-fun res!2760962 () Bool)

(assert (=> b!6749621 (=> res!2760962 e!4076430)))

(assert (=> b!6749621 (= res!2760962 e!4076428)))

(declare-fun res!2760958 () Bool)

(assert (=> b!6749621 (=> (not res!2760958) (not e!4076428))))

(assert (=> b!6749621 (= res!2760958 lt!2440866)))

(declare-fun b!6749622 () Bool)

(assert (=> b!6749622 (= e!4076429 (not lt!2440866))))

(declare-fun b!6749623 () Bool)

(declare-fun res!2760964 () Bool)

(assert (=> b!6749623 (=> (not res!2760964) (not e!4076428))))

(assert (=> b!6749623 (= res!2760964 (isEmpty!38269 (tail!12671 (tail!12671 s!2326))))))

(declare-fun b!6749624 () Bool)

(assert (=> b!6749624 (= e!4076427 (nullable!6566 (derivativeStep!5251 lt!2440700 (head!13586 s!2326))))))

(declare-fun b!6749625 () Bool)

(assert (=> b!6749625 (= e!4076430 e!4076425)))

(declare-fun res!2760963 () Bool)

(assert (=> b!6749625 (=> (not res!2760963) (not e!4076425))))

(assert (=> b!6749625 (= res!2760963 (not lt!2440866))))

(assert (= (and d!2120166 c!1252438) b!6749624))

(assert (= (and d!2120166 (not c!1252438)) b!6749615))

(assert (= (and d!2120166 c!1252437) b!6749612))

(assert (= (and d!2120166 (not c!1252437)) b!6749618))

(assert (= (and b!6749618 c!1252436) b!6749622))

(assert (= (and b!6749618 (not c!1252436)) b!6749620))

(assert (= (and b!6749620 (not res!2760961)) b!6749621))

(assert (= (and b!6749621 res!2760958) b!6749613))

(assert (= (and b!6749613 res!2760960) b!6749623))

(assert (= (and b!6749623 res!2760964) b!6749619))

(assert (= (and b!6749621 (not res!2760962)) b!6749625))

(assert (= (and b!6749625 res!2760963) b!6749616))

(assert (= (and b!6749616 (not res!2760959)) b!6749614))

(assert (= (and b!6749614 (not res!2760957)) b!6749617))

(assert (= (or b!6749612 b!6749613 b!6749616) bm!610387))

(assert (=> bm!610387 m!7503402))

(assert (=> bm!610387 m!7503406))

(assert (=> b!6749615 m!7503402))

(declare-fun m!7504144 () Bool)

(assert (=> b!6749615 m!7504144))

(assert (=> b!6749615 m!7503434))

(assert (=> b!6749615 m!7504144))

(declare-fun m!7504146 () Bool)

(assert (=> b!6749615 m!7504146))

(assert (=> b!6749615 m!7503402))

(declare-fun m!7504148 () Bool)

(assert (=> b!6749615 m!7504148))

(assert (=> b!6749615 m!7504146))

(assert (=> b!6749615 m!7504148))

(declare-fun m!7504150 () Bool)

(assert (=> b!6749615 m!7504150))

(assert (=> b!6749623 m!7503402))

(assert (=> b!6749623 m!7504148))

(assert (=> b!6749623 m!7504148))

(declare-fun m!7504152 () Bool)

(assert (=> b!6749623 m!7504152))

(assert (=> d!2120166 m!7503402))

(assert (=> d!2120166 m!7503406))

(assert (=> d!2120166 m!7503434))

(declare-fun m!7504154 () Bool)

(assert (=> d!2120166 m!7504154))

(assert (=> b!6749614 m!7503402))

(assert (=> b!6749614 m!7504148))

(assert (=> b!6749614 m!7504148))

(assert (=> b!6749614 m!7504152))

(assert (=> b!6749624 m!7503434))

(declare-fun m!7504156 () Bool)

(assert (=> b!6749624 m!7504156))

(assert (=> b!6749619 m!7503402))

(assert (=> b!6749619 m!7504144))

(assert (=> b!6749617 m!7503402))

(assert (=> b!6749617 m!7504144))

(assert (=> b!6748910 d!2120166))

(declare-fun bm!610416 () Bool)

(declare-fun c!1252468 () Bool)

(declare-fun c!1252472 () Bool)

(declare-fun call!610421 () Regex!16581)

(assert (=> bm!610416 (= call!610421 (derivativeStep!5251 (ite c!1252472 (regOne!33675 lt!2440700) (ite c!1252468 (regTwo!33674 lt!2440700) (regOne!33674 lt!2440700))) (head!13586 s!2326)))))

(declare-fun b!6749692 () Bool)

(assert (=> b!6749692 (= c!1252468 (nullable!6566 (regOne!33674 lt!2440700)))))

(declare-fun e!4076473 () Regex!16581)

(declare-fun e!4076471 () Regex!16581)

(assert (=> b!6749692 (= e!4076473 e!4076471)))

(declare-fun b!6749693 () Bool)

(declare-fun e!4076472 () Regex!16581)

(assert (=> b!6749693 (= e!4076472 e!4076473)))

(declare-fun c!1252470 () Bool)

(assert (=> b!6749693 (= c!1252470 ((_ is Star!16581) lt!2440700))))

(declare-fun b!6749694 () Bool)

(declare-fun call!610424 () Regex!16581)

(assert (=> b!6749694 (= e!4076473 (Concat!25426 call!610424 lt!2440700))))

(declare-fun call!610423 () Regex!16581)

(declare-fun bm!610417 () Bool)

(assert (=> bm!610417 (= call!610423 (derivativeStep!5251 (ite c!1252472 (regTwo!33675 lt!2440700) (ite c!1252470 (reg!16910 lt!2440700) (regOne!33674 lt!2440700))) (head!13586 s!2326)))))

(declare-fun b!6749696 () Bool)

(declare-fun e!4076469 () Regex!16581)

(assert (=> b!6749696 (= e!4076469 (ite (= (head!13586 s!2326) (c!1252033 lt!2440700)) EmptyExpr!16581 EmptyLang!16581))))

(declare-fun b!6749697 () Bool)

(declare-fun e!4076470 () Regex!16581)

(assert (=> b!6749697 (= e!4076470 EmptyLang!16581)))

(declare-fun b!6749698 () Bool)

(assert (=> b!6749698 (= c!1252472 ((_ is Union!16581) lt!2440700))))

(assert (=> b!6749698 (= e!4076469 e!4076472)))

(declare-fun b!6749699 () Bool)

(assert (=> b!6749699 (= e!4076472 (Union!16581 call!610421 call!610423))))

(declare-fun bm!610418 () Bool)

(assert (=> bm!610418 (= call!610424 call!610423)))

(declare-fun bm!610419 () Bool)

(declare-fun call!610422 () Regex!16581)

(assert (=> bm!610419 (= call!610422 call!610421)))

(declare-fun b!6749695 () Bool)

(assert (=> b!6749695 (= e!4076471 (Union!16581 (Concat!25426 call!610424 (regTwo!33674 lt!2440700)) call!610422))))

(declare-fun d!2120170 () Bool)

(declare-fun lt!2440869 () Regex!16581)

(assert (=> d!2120170 (validRegex!8317 lt!2440869)))

(assert (=> d!2120170 (= lt!2440869 e!4076470)))

(declare-fun c!1252469 () Bool)

(assert (=> d!2120170 (= c!1252469 (or ((_ is EmptyExpr!16581) lt!2440700) ((_ is EmptyLang!16581) lt!2440700)))))

(assert (=> d!2120170 (validRegex!8317 lt!2440700)))

(assert (=> d!2120170 (= (derivativeStep!5251 lt!2440700 (head!13586 s!2326)) lt!2440869)))

(declare-fun b!6749700 () Bool)

(assert (=> b!6749700 (= e!4076470 e!4076469)))

(declare-fun c!1252471 () Bool)

(assert (=> b!6749700 (= c!1252471 ((_ is ElementMatch!16581) lt!2440700))))

(declare-fun b!6749701 () Bool)

(assert (=> b!6749701 (= e!4076471 (Union!16581 (Concat!25426 call!610422 (regTwo!33674 lt!2440700)) EmptyLang!16581))))

(assert (= (and d!2120170 c!1252469) b!6749697))

(assert (= (and d!2120170 (not c!1252469)) b!6749700))

(assert (= (and b!6749700 c!1252471) b!6749696))

(assert (= (and b!6749700 (not c!1252471)) b!6749698))

(assert (= (and b!6749698 c!1252472) b!6749699))

(assert (= (and b!6749698 (not c!1252472)) b!6749693))

(assert (= (and b!6749693 c!1252470) b!6749694))

(assert (= (and b!6749693 (not c!1252470)) b!6749692))

(assert (= (and b!6749692 c!1252468) b!6749695))

(assert (= (and b!6749692 (not c!1252468)) b!6749701))

(assert (= (or b!6749695 b!6749701) bm!610419))

(assert (= (or b!6749694 b!6749695) bm!610418))

(assert (= (or b!6749699 bm!610418) bm!610417))

(assert (= (or b!6749699 bm!610419) bm!610416))

(assert (=> bm!610416 m!7503398))

(declare-fun m!7504194 () Bool)

(assert (=> bm!610416 m!7504194))

(declare-fun m!7504198 () Bool)

(assert (=> b!6749692 m!7504198))

(assert (=> bm!610417 m!7503398))

(declare-fun m!7504202 () Bool)

(assert (=> bm!610417 m!7504202))

(declare-fun m!7504204 () Bool)

(assert (=> d!2120170 m!7504204))

(assert (=> d!2120170 m!7503438))

(assert (=> b!6748910 d!2120170))

(declare-fun d!2120186 () Bool)

(assert (=> d!2120186 (= (head!13586 s!2326) (h!72367 s!2326))))

(assert (=> b!6748910 d!2120186))

(declare-fun d!2120194 () Bool)

(assert (=> d!2120194 (= (tail!12671 s!2326) (t!379744 s!2326))))

(assert (=> b!6748910 d!2120194))

(assert (=> bs!1793788 d!2119818))

(declare-fun d!2120198 () Bool)

(declare-fun nullableFct!2474 (Regex!16581) Bool)

(assert (=> d!2120198 (= (nullable!6566 (h!72366 (exprs!6465 lt!2440713))) (nullableFct!2474 (h!72366 (exprs!6465 lt!2440713))))))

(declare-fun bs!1794081 () Bool)

(assert (= bs!1794081 d!2120198))

(declare-fun m!7504214 () Bool)

(assert (=> bs!1794081 m!7504214))

(assert (=> b!6748775 d!2120198))

(declare-fun c!1252476 () Bool)

(declare-fun d!2120200 () Bool)

(assert (=> d!2120200 (= c!1252476 (and ((_ is ElementMatch!16581) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (= (c!1252033 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (h!72367 s!2326))))))

(declare-fun e!4076479 () (InoxSet Context!11930))

(assert (=> d!2120200 (= (derivationStepZipperDown!1809 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))) (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206)) (h!72367 s!2326)) e!4076479)))

(declare-fun b!6749702 () Bool)

(declare-fun e!4076478 () (InoxSet Context!11930))

(declare-fun call!610425 () (InoxSet Context!11930))

(declare-fun call!610426 () (InoxSet Context!11930))

(assert (=> b!6749702 (= e!4076478 ((_ map or) call!610425 call!610426))))

(declare-fun b!6749703 () Bool)

(declare-fun e!4076475 () (InoxSet Context!11930))

(declare-fun e!4076474 () (InoxSet Context!11930))

(assert (=> b!6749703 (= e!4076475 e!4076474)))

(declare-fun c!1252473 () Bool)

(assert (=> b!6749703 (= c!1252473 ((_ is Concat!25426) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))))))

(declare-fun bm!610420 () Bool)

(declare-fun call!610429 () List!66042)

(declare-fun c!1252477 () Bool)

(assert (=> bm!610420 (= call!610429 ($colon$colon!2395 (exprs!6465 (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206))) (ite (or c!1252477 c!1252473) (regTwo!33674 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))))))))

(declare-fun b!6749704 () Bool)

(declare-fun e!4076476 () Bool)

(assert (=> b!6749704 (= c!1252477 e!4076476)))

(declare-fun res!2760973 () Bool)

(assert (=> b!6749704 (=> (not res!2760973) (not e!4076476))))

(assert (=> b!6749704 (= res!2760973 ((_ is Concat!25426) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))))))

(assert (=> b!6749704 (= e!4076478 e!4076475)))

(declare-fun b!6749705 () Bool)

(declare-fun call!610427 () (InoxSet Context!11930))

(assert (=> b!6749705 (= e!4076475 ((_ map or) call!610425 call!610427))))

(declare-fun c!1252474 () Bool)

(declare-fun call!610428 () List!66042)

(declare-fun bm!610421 () Bool)

(assert (=> bm!610421 (= call!610426 (derivationStepZipperDown!1809 (ite c!1252474 (regTwo!33675 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (ite c!1252477 (regTwo!33674 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (ite c!1252473 (regOne!33674 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (reg!16910 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))))))) (ite (or c!1252474 c!1252477) (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206)) (Context!11931 call!610428)) (h!72367 s!2326)))))

(declare-fun b!6749706 () Bool)

(declare-fun e!4076477 () (InoxSet Context!11930))

(assert (=> b!6749706 (= e!4076477 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6749707 () Bool)

(assert (=> b!6749707 (= e!4076479 e!4076478)))

(assert (=> b!6749707 (= c!1252474 ((_ is Union!16581) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))))))

(declare-fun bm!610422 () Bool)

(declare-fun call!610430 () (InoxSet Context!11930))

(assert (=> bm!610422 (= call!610430 call!610427)))

(declare-fun b!6749708 () Bool)

(assert (=> b!6749708 (= e!4076476 (nullable!6566 (regOne!33674 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))))))))

(declare-fun bm!610423 () Bool)

(assert (=> bm!610423 (= call!610428 call!610429)))

(declare-fun bm!610424 () Bool)

(assert (=> bm!610424 (= call!610427 call!610426)))

(declare-fun b!6749709 () Bool)

(assert (=> b!6749709 (= e!4076479 (store ((as const (Array Context!11930 Bool)) false) (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206)) true))))

(declare-fun bm!610425 () Bool)

(assert (=> bm!610425 (= call!610425 (derivationStepZipperDown!1809 (ite c!1252474 (regOne!33675 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))) (regOne!33674 (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292)))))) (ite c!1252474 (ite (or c!1252086 c!1252089) (Context!11931 Nil!65918) (Context!11931 call!610206)) (Context!11931 call!610429)) (h!72367 s!2326)))))

(declare-fun b!6749710 () Bool)

(declare-fun c!1252475 () Bool)

(assert (=> b!6749710 (= c!1252475 ((_ is Star!16581) (ite c!1252086 (regTwo!33675 r!7292) (ite c!1252089 (regTwo!33674 r!7292) (ite c!1252085 (regOne!33674 r!7292) (reg!16910 r!7292))))))))

(assert (=> b!6749710 (= e!4076474 e!4076477)))

(declare-fun b!6749711 () Bool)

(assert (=> b!6749711 (= e!4076477 call!610430)))

(declare-fun b!6749712 () Bool)

(assert (=> b!6749712 (= e!4076474 call!610430)))

(assert (= (and d!2120200 c!1252476) b!6749709))

(assert (= (and d!2120200 (not c!1252476)) b!6749707))

(assert (= (and b!6749707 c!1252474) b!6749702))

(assert (= (and b!6749707 (not c!1252474)) b!6749704))

(assert (= (and b!6749704 res!2760973) b!6749708))

(assert (= (and b!6749704 c!1252477) b!6749705))

(assert (= (and b!6749704 (not c!1252477)) b!6749703))

(assert (= (and b!6749703 c!1252473) b!6749712))

(assert (= (and b!6749703 (not c!1252473)) b!6749710))

(assert (= (and b!6749710 c!1252475) b!6749711))

(assert (= (and b!6749710 (not c!1252475)) b!6749706))

(assert (= (or b!6749712 b!6749711) bm!610423))

(assert (= (or b!6749712 b!6749711) bm!610422))

(assert (= (or b!6749705 bm!610423) bm!610420))

(assert (= (or b!6749705 bm!610422) bm!610424))

(assert (= (or b!6749702 bm!610424) bm!610421))

(assert (= (or b!6749702 b!6749705) bm!610425))

(declare-fun m!7504216 () Bool)

(assert (=> bm!610421 m!7504216))

(declare-fun m!7504218 () Bool)

(assert (=> bm!610420 m!7504218))

(declare-fun m!7504220 () Bool)

(assert (=> bm!610425 m!7504220))

(declare-fun m!7504222 () Bool)

(assert (=> b!6749709 m!7504222))

(declare-fun m!7504224 () Bool)

(assert (=> b!6749708 m!7504224))

(assert (=> bm!610199 d!2120200))

(assert (=> d!2119860 d!2119858))

(assert (=> d!2119860 d!2119856))

(declare-fun d!2120202 () Bool)

(assert (=> d!2120202 (= (matchR!8764 lt!2440700 s!2326) (matchRSpec!3682 lt!2440700 s!2326))))

(assert (=> d!2120202 true))

(declare-fun _$88!5517 () Unit!159853)

(assert (=> d!2120202 (= (choose!50349 lt!2440700 s!2326) _$88!5517)))

(declare-fun bs!1794082 () Bool)

(assert (= bs!1794082 d!2120202))

(assert (=> bs!1794082 m!7502828))

(assert (=> bs!1794082 m!7502826))

(assert (=> d!2119860 d!2120202))

(declare-fun b!6749717 () Bool)

(declare-fun e!4076484 () Bool)

(declare-fun e!4076482 () Bool)

(assert (=> b!6749717 (= e!4076484 e!4076482)))

(declare-fun res!2760979 () Bool)

(assert (=> b!6749717 (= res!2760979 (not (nullable!6566 (reg!16910 lt!2440700))))))

(assert (=> b!6749717 (=> (not res!2760979) (not e!4076482))))

(declare-fun b!6749718 () Bool)

(declare-fun e!4076487 () Bool)

(declare-fun call!610431 () Bool)

(assert (=> b!6749718 (= e!4076487 call!610431)))

(declare-fun b!6749719 () Bool)

(declare-fun res!2760982 () Bool)

(assert (=> b!6749719 (=> (not res!2760982) (not e!4076487))))

(declare-fun call!610433 () Bool)

(assert (=> b!6749719 (= res!2760982 call!610433)))

(declare-fun e!4076485 () Bool)

(assert (=> b!6749719 (= e!4076485 e!4076487)))

(declare-fun d!2120204 () Bool)

(declare-fun res!2760980 () Bool)

(declare-fun e!4076488 () Bool)

(assert (=> d!2120204 (=> res!2760980 e!4076488)))

(assert (=> d!2120204 (= res!2760980 ((_ is ElementMatch!16581) lt!2440700))))

(assert (=> d!2120204 (= (validRegex!8317 lt!2440700) e!4076488)))

(declare-fun b!6749720 () Bool)

(declare-fun res!2760978 () Bool)

(declare-fun e!4076486 () Bool)

(assert (=> b!6749720 (=> res!2760978 e!4076486)))

(assert (=> b!6749720 (= res!2760978 (not ((_ is Concat!25426) lt!2440700)))))

(assert (=> b!6749720 (= e!4076485 e!4076486)))

(declare-fun b!6749721 () Bool)

(declare-fun e!4076483 () Bool)

(assert (=> b!6749721 (= e!4076483 call!610431)))

(declare-fun b!6749722 () Bool)

(declare-fun call!610432 () Bool)

(assert (=> b!6749722 (= e!4076482 call!610432)))

(declare-fun b!6749723 () Bool)

(assert (=> b!6749723 (= e!4076486 e!4076483)))

(declare-fun res!2760981 () Bool)

(assert (=> b!6749723 (=> (not res!2760981) (not e!4076483))))

(assert (=> b!6749723 (= res!2760981 call!610433)))

(declare-fun bm!610426 () Bool)

(assert (=> bm!610426 (= call!610431 call!610432)))

(declare-fun bm!610427 () Bool)

(declare-fun c!1252479 () Bool)

(assert (=> bm!610427 (= call!610433 (validRegex!8317 (ite c!1252479 (regOne!33675 lt!2440700) (regOne!33674 lt!2440700))))))

(declare-fun c!1252478 () Bool)

(declare-fun bm!610428 () Bool)

(assert (=> bm!610428 (= call!610432 (validRegex!8317 (ite c!1252478 (reg!16910 lt!2440700) (ite c!1252479 (regTwo!33675 lt!2440700) (regTwo!33674 lt!2440700)))))))

(declare-fun b!6749724 () Bool)

(assert (=> b!6749724 (= e!4076484 e!4076485)))

(assert (=> b!6749724 (= c!1252479 ((_ is Union!16581) lt!2440700))))

(declare-fun b!6749725 () Bool)

(assert (=> b!6749725 (= e!4076488 e!4076484)))

(assert (=> b!6749725 (= c!1252478 ((_ is Star!16581) lt!2440700))))

(assert (= (and d!2120204 (not res!2760980)) b!6749725))

(assert (= (and b!6749725 c!1252478) b!6749717))

(assert (= (and b!6749725 (not c!1252478)) b!6749724))

(assert (= (and b!6749717 res!2760979) b!6749722))

(assert (= (and b!6749724 c!1252479) b!6749719))

(assert (= (and b!6749724 (not c!1252479)) b!6749720))

(assert (= (and b!6749719 res!2760982) b!6749718))

(assert (= (and b!6749720 (not res!2760978)) b!6749723))

(assert (= (and b!6749723 res!2760981) b!6749721))

(assert (= (or b!6749718 b!6749721) bm!610426))

(assert (= (or b!6749719 b!6749723) bm!610427))

(assert (= (or b!6749722 bm!610426) bm!610428))

(declare-fun m!7504226 () Bool)

(assert (=> b!6749717 m!7504226))

(declare-fun m!7504228 () Bool)

(assert (=> bm!610427 m!7504228))

(declare-fun m!7504230 () Bool)

(assert (=> bm!610428 m!7504230))

(assert (=> d!2119860 d!2120204))

(declare-fun bs!1794083 () Bool)

(declare-fun d!2120206 () Bool)

(assert (= bs!1794083 (and d!2120206 d!2119732)))

(declare-fun lambda!379631 () Int)

(assert (=> bs!1794083 (= lambda!379631 lambda!379537)))

(declare-fun bs!1794084 () Bool)

(assert (= bs!1794084 (and d!2120206 d!2119862)))

(assert (=> bs!1794084 (= lambda!379631 lambda!379586)))

(declare-fun bs!1794085 () Bool)

(assert (= bs!1794085 (and d!2120206 d!2119814)))

(assert (=> bs!1794085 (= lambda!379631 lambda!379575)))

(declare-fun bs!1794086 () Bool)

(assert (= bs!1794086 (and d!2120206 d!2119876)))

(assert (=> bs!1794086 (= lambda!379631 lambda!379592)))

(declare-fun bs!1794087 () Bool)

(assert (= bs!1794087 (and d!2120206 d!2119874)))

(assert (=> bs!1794087 (= lambda!379631 lambda!379589)))

(declare-fun bs!1794088 () Bool)

(assert (= bs!1794088 (and d!2120206 d!2119854)))

(assert (=> bs!1794088 (= lambda!379631 lambda!379583)))

(declare-fun b!6749730 () Bool)

(declare-fun e!4076492 () Bool)

(declare-fun lt!2440870 () Regex!16581)

(assert (=> b!6749730 (= e!4076492 (isEmptyLang!1953 lt!2440870))))

(declare-fun b!6749731 () Bool)

(declare-fun e!4076496 () Regex!16581)

(declare-fun e!4076491 () Regex!16581)

(assert (=> b!6749731 (= e!4076496 e!4076491)))

(declare-fun c!1252483 () Bool)

(assert (=> b!6749731 (= c!1252483 ((_ is Cons!65918) (t!379743 (unfocusZipperList!2002 zl!343))))))

(declare-fun e!4076495 () Bool)

(assert (=> d!2120206 e!4076495))

(declare-fun res!2760988 () Bool)

(assert (=> d!2120206 (=> (not res!2760988) (not e!4076495))))

(assert (=> d!2120206 (= res!2760988 (validRegex!8317 lt!2440870))))

(assert (=> d!2120206 (= lt!2440870 e!4076496)))

(declare-fun c!1252481 () Bool)

(declare-fun e!4076493 () Bool)

(assert (=> d!2120206 (= c!1252481 e!4076493)))

(declare-fun res!2760987 () Bool)

(assert (=> d!2120206 (=> (not res!2760987) (not e!4076493))))

(assert (=> d!2120206 (= res!2760987 ((_ is Cons!65918) (t!379743 (unfocusZipperList!2002 zl!343))))))

(assert (=> d!2120206 (forall!15778 (t!379743 (unfocusZipperList!2002 zl!343)) lambda!379631)))

(assert (=> d!2120206 (= (generalisedUnion!2425 (t!379743 (unfocusZipperList!2002 zl!343))) lt!2440870)))

(declare-fun b!6749732 () Bool)

(declare-fun e!4076494 () Bool)

(assert (=> b!6749732 (= e!4076494 (isUnion!1383 lt!2440870))))

(declare-fun b!6749733 () Bool)

(assert (=> b!6749733 (= e!4076491 (Union!16581 (h!72366 (t!379743 (unfocusZipperList!2002 zl!343))) (generalisedUnion!2425 (t!379743 (t!379743 (unfocusZipperList!2002 zl!343))))))))

(declare-fun b!6749734 () Bool)

(assert (=> b!6749734 (= e!4076495 e!4076492)))

(declare-fun c!1252482 () Bool)

(assert (=> b!6749734 (= c!1252482 (isEmpty!38271 (t!379743 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6749735 () Bool)

(assert (=> b!6749735 (= e!4076493 (isEmpty!38271 (t!379743 (t!379743 (unfocusZipperList!2002 zl!343)))))))

(declare-fun b!6749736 () Bool)

(assert (=> b!6749736 (= e!4076494 (= lt!2440870 (head!13584 (t!379743 (unfocusZipperList!2002 zl!343)))))))

(declare-fun b!6749737 () Bool)

(assert (=> b!6749737 (= e!4076496 (h!72366 (t!379743 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6749738 () Bool)

(assert (=> b!6749738 (= e!4076492 e!4076494)))

(declare-fun c!1252480 () Bool)

(assert (=> b!6749738 (= c!1252480 (isEmpty!38271 (tail!12669 (t!379743 (unfocusZipperList!2002 zl!343)))))))

(declare-fun b!6749739 () Bool)

(assert (=> b!6749739 (= e!4076491 EmptyLang!16581)))

(assert (= (and d!2120206 res!2760987) b!6749735))

(assert (= (and d!2120206 c!1252481) b!6749737))

(assert (= (and d!2120206 (not c!1252481)) b!6749731))

(assert (= (and b!6749731 c!1252483) b!6749733))

(assert (= (and b!6749731 (not c!1252483)) b!6749739))

(assert (= (and d!2120206 res!2760988) b!6749734))

(assert (= (and b!6749734 c!1252482) b!6749730))

(assert (= (and b!6749734 (not c!1252482)) b!6749738))

(assert (= (and b!6749738 c!1252480) b!6749736))

(assert (= (and b!6749738 (not c!1252480)) b!6749732))

(declare-fun m!7504232 () Bool)

(assert (=> b!6749735 m!7504232))

(declare-fun m!7504234 () Bool)

(assert (=> d!2120206 m!7504234))

(declare-fun m!7504236 () Bool)

(assert (=> d!2120206 m!7504236))

(declare-fun m!7504238 () Bool)

(assert (=> b!6749732 m!7504238))

(declare-fun m!7504240 () Bool)

(assert (=> b!6749730 m!7504240))

(declare-fun m!7504242 () Bool)

(assert (=> b!6749733 m!7504242))

(declare-fun m!7504244 () Bool)

(assert (=> b!6749738 m!7504244))

(assert (=> b!6749738 m!7504244))

(declare-fun m!7504246 () Bool)

(assert (=> b!6749738 m!7504246))

(assert (=> b!6749734 m!7503474))

(declare-fun m!7504248 () Bool)

(assert (=> b!6749736 m!7504248))

(assert (=> b!6748985 d!2120206))

(declare-fun d!2120208 () Bool)

(assert (=> d!2120208 (= (nullable!6566 (h!72366 (exprs!6465 lt!2440701))) (nullableFct!2474 (h!72366 (exprs!6465 lt!2440701))))))

(declare-fun bs!1794091 () Bool)

(assert (= bs!1794091 d!2120208))

(declare-fun m!7504250 () Bool)

(assert (=> bs!1794091 m!7504250))

(assert (=> b!6748770 d!2120208))

(declare-fun d!2120210 () Bool)

(declare-fun c!1252487 () Bool)

(assert (=> d!2120210 (= c!1252487 (and ((_ is ElementMatch!16581) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (= (c!1252033 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (h!72367 s!2326))))))

(declare-fun e!4076502 () (InoxSet Context!11930))

(assert (=> d!2120210 (= (derivationStepZipperDown!1809 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)) (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207)) (h!72367 s!2326)) e!4076502)))

(declare-fun b!6749740 () Bool)

(declare-fun e!4076501 () (InoxSet Context!11930))

(declare-fun call!610434 () (InoxSet Context!11930))

(declare-fun call!610435 () (InoxSet Context!11930))

(assert (=> b!6749740 (= e!4076501 ((_ map or) call!610434 call!610435))))

(declare-fun b!6749741 () Bool)

(declare-fun e!4076498 () (InoxSet Context!11930))

(declare-fun e!4076497 () (InoxSet Context!11930))

(assert (=> b!6749741 (= e!4076498 e!4076497)))

(declare-fun c!1252484 () Bool)

(assert (=> b!6749741 (= c!1252484 ((_ is Concat!25426) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(declare-fun call!610438 () List!66042)

(declare-fun c!1252488 () Bool)

(declare-fun bm!610429 () Bool)

(assert (=> bm!610429 (= call!610438 ($colon$colon!2395 (exprs!6465 (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207))) (ite (or c!1252488 c!1252484) (regTwo!33674 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)))))))

(declare-fun b!6749742 () Bool)

(declare-fun e!4076499 () Bool)

(assert (=> b!6749742 (= c!1252488 e!4076499)))

(declare-fun res!2760989 () Bool)

(assert (=> b!6749742 (=> (not res!2760989) (not e!4076499))))

(assert (=> b!6749742 (= res!2760989 ((_ is Concat!25426) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(assert (=> b!6749742 (= e!4076501 e!4076498)))

(declare-fun b!6749743 () Bool)

(declare-fun call!610436 () (InoxSet Context!11930))

(assert (=> b!6749743 (= e!4076498 ((_ map or) call!610434 call!610436))))

(declare-fun c!1252485 () Bool)

(declare-fun bm!610430 () Bool)

(declare-fun call!610437 () List!66042)

(assert (=> bm!610430 (= call!610435 (derivationStepZipperDown!1809 (ite c!1252485 (regTwo!33675 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (ite c!1252488 (regTwo!33674 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (ite c!1252484 (regOne!33674 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (reg!16910 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)))))) (ite (or c!1252485 c!1252488) (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207)) (Context!11931 call!610437)) (h!72367 s!2326)))))

(declare-fun b!6749744 () Bool)

(declare-fun e!4076500 () (InoxSet Context!11930))

(assert (=> b!6749744 (= e!4076500 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6749745 () Bool)

(assert (=> b!6749745 (= e!4076502 e!4076501)))

(assert (=> b!6749745 (= c!1252485 ((_ is Union!16581) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(declare-fun bm!610431 () Bool)

(declare-fun call!610439 () (InoxSet Context!11930))

(assert (=> bm!610431 (= call!610439 call!610436)))

(declare-fun b!6749746 () Bool)

(assert (=> b!6749746 (= e!4076499 (nullable!6566 (regOne!33674 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)))))))

(declare-fun bm!610432 () Bool)

(assert (=> bm!610432 (= call!610437 call!610438)))

(declare-fun bm!610433 () Bool)

(assert (=> bm!610433 (= call!610436 call!610435)))

(declare-fun b!6749747 () Bool)

(assert (=> b!6749747 (= e!4076502 (store ((as const (Array Context!11930 Bool)) false) (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207)) true))))

(declare-fun bm!610434 () Bool)

(assert (=> bm!610434 (= call!610434 (derivationStepZipperDown!1809 (ite c!1252485 (regOne!33675 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))) (regOne!33674 (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292)))) (ite c!1252485 (ite c!1252086 (Context!11931 Nil!65918) (Context!11931 call!610207)) (Context!11931 call!610438)) (h!72367 s!2326)))))

(declare-fun b!6749748 () Bool)

(declare-fun c!1252486 () Bool)

(assert (=> b!6749748 (= c!1252486 ((_ is Star!16581) (ite c!1252086 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(assert (=> b!6749748 (= e!4076497 e!4076500)))

(declare-fun b!6749749 () Bool)

(assert (=> b!6749749 (= e!4076500 call!610439)))

(declare-fun b!6749750 () Bool)

(assert (=> b!6749750 (= e!4076497 call!610439)))

(assert (= (and d!2120210 c!1252487) b!6749747))

(assert (= (and d!2120210 (not c!1252487)) b!6749745))

(assert (= (and b!6749745 c!1252485) b!6749740))

(assert (= (and b!6749745 (not c!1252485)) b!6749742))

(assert (= (and b!6749742 res!2760989) b!6749746))

(assert (= (and b!6749742 c!1252488) b!6749743))

(assert (= (and b!6749742 (not c!1252488)) b!6749741))

(assert (= (and b!6749741 c!1252484) b!6749750))

(assert (= (and b!6749741 (not c!1252484)) b!6749748))

(assert (= (and b!6749748 c!1252486) b!6749749))

(assert (= (and b!6749748 (not c!1252486)) b!6749744))

(assert (= (or b!6749750 b!6749749) bm!610432))

(assert (= (or b!6749750 b!6749749) bm!610431))

(assert (= (or b!6749743 bm!610432) bm!610429))

(assert (= (or b!6749743 bm!610431) bm!610433))

(assert (= (or b!6749740 bm!610433) bm!610430))

(assert (= (or b!6749740 b!6749743) bm!610434))

(declare-fun m!7504252 () Bool)

(assert (=> bm!610430 m!7504252))

(declare-fun m!7504254 () Bool)

(assert (=> bm!610429 m!7504254))

(declare-fun m!7504256 () Bool)

(assert (=> bm!610434 m!7504256))

(declare-fun m!7504258 () Bool)

(assert (=> b!6749747 m!7504258))

(declare-fun m!7504260 () Bool)

(assert (=> b!6749746 m!7504260))

(assert (=> bm!610203 d!2120210))

(declare-fun d!2120212 () Bool)

(declare-fun c!1252491 () Bool)

(assert (=> d!2120212 (= c!1252491 ((_ is Nil!65920) lt!2440797))))

(declare-fun e!4076505 () (InoxSet Context!11930))

(assert (=> d!2120212 (= (content!12819 lt!2440797) e!4076505)))

(declare-fun b!6749755 () Bool)

(assert (=> b!6749755 (= e!4076505 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6749756 () Bool)

(assert (=> b!6749756 (= e!4076505 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) (h!72368 lt!2440797) true) (content!12819 (t!379745 lt!2440797))))))

(assert (= (and d!2120212 c!1252491) b!6749755))

(assert (= (and d!2120212 (not c!1252491)) b!6749756))

(declare-fun m!7504262 () Bool)

(assert (=> b!6749756 m!7504262))

(declare-fun m!7504264 () Bool)

(assert (=> b!6749756 m!7504264))

(assert (=> b!6748765 d!2120212))

(declare-fun d!2120214 () Bool)

(assert (=> d!2120214 (= (flatMap!2062 lt!2440702 lambda!379576) (choose!50344 lt!2440702 lambda!379576))))

(declare-fun bs!1794108 () Bool)

(assert (= bs!1794108 d!2120214))

(declare-fun m!7504266 () Bool)

(assert (=> bs!1794108 m!7504266))

(assert (=> d!2119820 d!2120214))

(declare-fun d!2120216 () Bool)

(assert (=> d!2120216 (= (isEmptyExpr!1944 lt!2440749) ((_ is EmptyExpr!16581) lt!2440749))))

(assert (=> b!6748497 d!2120216))

(declare-fun d!2120218 () Bool)

(assert (=> d!2120218 true))

(declare-fun setRes!46132 () Bool)

(assert (=> d!2120218 setRes!46132))

(declare-fun condSetEmpty!46132 () Bool)

(declare-fun res!2760992 () (InoxSet Context!11930))

(assert (=> d!2120218 (= condSetEmpty!46132 (= res!2760992 ((as const (Array Context!11930 Bool)) false)))))

(assert (=> d!2120218 (= (choose!50344 z!1189 lambda!379509) res!2760992)))

(declare-fun setIsEmpty!46132 () Bool)

(assert (=> setIsEmpty!46132 setRes!46132))

(declare-fun setNonEmpty!46132 () Bool)

(declare-fun setElem!46132 () Context!11930)

(declare-fun tp!1849577 () Bool)

(declare-fun e!4076508 () Bool)

(assert (=> setNonEmpty!46132 (= setRes!46132 (and tp!1849577 (inv!84699 setElem!46132) e!4076508))))

(declare-fun setRest!46132 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46132 (= res!2760992 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46132 true) setRest!46132))))

(declare-fun b!6749759 () Bool)

(declare-fun tp!1849576 () Bool)

(assert (=> b!6749759 (= e!4076508 tp!1849576)))

(assert (= (and d!2120218 condSetEmpty!46132) setIsEmpty!46132))

(assert (= (and d!2120218 (not condSetEmpty!46132)) setNonEmpty!46132))

(assert (= setNonEmpty!46132 b!6749759))

(declare-fun m!7504268 () Bool)

(assert (=> setNonEmpty!46132 m!7504268))

(assert (=> d!2119848 d!2120218))

(declare-fun d!2120220 () Bool)

(assert (=> d!2120220 (= (isDefined!13171 lt!2440786) (not (isEmpty!38272 lt!2440786)))))

(declare-fun bs!1794110 () Bool)

(assert (= bs!1794110 d!2120220))

(declare-fun m!7504274 () Bool)

(assert (=> bs!1794110 m!7504274))

(assert (=> b!6748683 d!2120220))

(assert (=> b!6748914 d!2120186))

(declare-fun d!2120224 () Bool)

(declare-fun c!1252494 () Bool)

(assert (=> d!2120224 (= c!1252494 ((_ is Nil!65919) lt!2440828))))

(declare-fun e!4076514 () (InoxSet C!33432))

(assert (=> d!2120224 (= (content!12821 lt!2440828) e!4076514)))

(declare-fun b!6749776 () Bool)

(assert (=> b!6749776 (= e!4076514 ((as const (Array C!33432 Bool)) false))))

(declare-fun b!6749777 () Bool)

(assert (=> b!6749777 (= e!4076514 ((_ map or) (store ((as const (Array C!33432 Bool)) false) (h!72367 lt!2440828) true) (content!12821 (t!379744 lt!2440828))))))

(assert (= (and d!2120224 c!1252494) b!6749776))

(assert (= (and d!2120224 (not c!1252494)) b!6749777))

(declare-fun m!7504278 () Bool)

(assert (=> b!6749777 m!7504278))

(declare-fun m!7504280 () Bool)

(assert (=> b!6749777 m!7504280))

(assert (=> d!2119878 d!2120224))

(declare-fun d!2120226 () Bool)

(declare-fun c!1252495 () Bool)

(assert (=> d!2120226 (= c!1252495 ((_ is Nil!65919) (_1!36859 lt!2440718)))))

(declare-fun e!4076517 () (InoxSet C!33432))

(assert (=> d!2120226 (= (content!12821 (_1!36859 lt!2440718)) e!4076517)))

(declare-fun b!6749786 () Bool)

(assert (=> b!6749786 (= e!4076517 ((as const (Array C!33432 Bool)) false))))

(declare-fun b!6749787 () Bool)

(assert (=> b!6749787 (= e!4076517 ((_ map or) (store ((as const (Array C!33432 Bool)) false) (h!72367 (_1!36859 lt!2440718)) true) (content!12821 (t!379744 (_1!36859 lt!2440718)))))))

(assert (= (and d!2120226 c!1252495) b!6749786))

(assert (= (and d!2120226 (not c!1252495)) b!6749787))

(declare-fun m!7504282 () Bool)

(assert (=> b!6749787 m!7504282))

(declare-fun m!7504284 () Bool)

(assert (=> b!6749787 m!7504284))

(assert (=> d!2119878 d!2120226))

(declare-fun d!2120228 () Bool)

(declare-fun c!1252496 () Bool)

(assert (=> d!2120228 (= c!1252496 ((_ is Nil!65919) (_2!36859 lt!2440718)))))

(declare-fun e!4076519 () (InoxSet C!33432))

(assert (=> d!2120228 (= (content!12821 (_2!36859 lt!2440718)) e!4076519)))

(declare-fun b!6749792 () Bool)

(assert (=> b!6749792 (= e!4076519 ((as const (Array C!33432 Bool)) false))))

(declare-fun b!6749793 () Bool)

(assert (=> b!6749793 (= e!4076519 ((_ map or) (store ((as const (Array C!33432 Bool)) false) (h!72367 (_2!36859 lt!2440718)) true) (content!12821 (t!379744 (_2!36859 lt!2440718)))))))

(assert (= (and d!2120228 c!1252496) b!6749792))

(assert (= (and d!2120228 (not c!1252496)) b!6749793))

(declare-fun m!7504286 () Bool)

(assert (=> b!6749793 m!7504286))

(declare-fun m!7504288 () Bool)

(assert (=> b!6749793 m!7504288))

(assert (=> d!2119878 d!2120228))

(declare-fun d!2120230 () Bool)

(assert (=> d!2120230 (= (nullable!6566 (regOne!33674 r!7292)) (nullableFct!2474 (regOne!33674 r!7292)))))

(declare-fun bs!1794113 () Bool)

(assert (= bs!1794113 d!2120230))

(declare-fun m!7504290 () Bool)

(assert (=> bs!1794113 m!7504290))

(assert (=> b!6748368 d!2120230))

(declare-fun d!2120232 () Bool)

(assert (=> d!2120232 (= (Exists!3649 lambda!379560) (choose!50341 lambda!379560))))

(declare-fun bs!1794114 () Bool)

(assert (= bs!1794114 d!2120232))

(declare-fun m!7504292 () Bool)

(assert (=> bs!1794114 m!7504292))

(assert (=> d!2119756 d!2120232))

(declare-fun d!2120234 () Bool)

(assert (=> d!2120234 (= (Exists!3649 lambda!379563) (choose!50341 lambda!379563))))

(declare-fun bs!1794115 () Bool)

(assert (= bs!1794115 d!2120234))

(declare-fun m!7504294 () Bool)

(assert (=> bs!1794115 m!7504294))

(assert (=> d!2119756 d!2120234))

(declare-fun bs!1794122 () Bool)

(declare-fun d!2120236 () Bool)

(assert (= bs!1794122 (and d!2120236 d!2119742)))

(declare-fun lambda!379639 () Int)

(assert (=> bs!1794122 (not (= lambda!379639 lambda!379555))))

(declare-fun bs!1794123 () Bool)

(assert (= bs!1794123 (and d!2120236 b!6748896)))

(assert (=> bs!1794123 (not (= lambda!379639 lambda!379584))))

(declare-fun bs!1794124 () Bool)

(assert (= bs!1794124 (and d!2120236 d!2119756)))

(assert (=> bs!1794124 (not (= lambda!379639 lambda!379563))))

(assert (=> bs!1794122 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379639 lambda!379553))))

(declare-fun bs!1794125 () Bool)

(assert (= bs!1794125 (and d!2120236 b!6748866)))

(assert (=> bs!1794125 (not (= lambda!379639 lambda!379581))))

(declare-fun bs!1794126 () Bool)

(assert (= bs!1794126 (and d!2120236 b!6748161)))

(assert (=> bs!1794126 (not (= lambda!379639 lambda!379508))))

(declare-fun bs!1794127 () Bool)

(assert (= bs!1794127 (and d!2120236 b!6748906)))

(assert (=> bs!1794127 (not (= lambda!379639 lambda!379585))))

(assert (=> bs!1794124 (= lambda!379639 lambda!379560)))

(assert (=> bs!1794126 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379639 lambda!379506))))

(declare-fun bs!1794128 () Bool)

(assert (= bs!1794128 (and d!2120236 d!2119796)))

(assert (=> bs!1794128 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379639 lambda!379572))))

(assert (=> bs!1794126 (not (= lambda!379639 lambda!379507))))

(declare-fun bs!1794129 () Bool)

(assert (= bs!1794129 (and d!2120236 b!6748876)))

(assert (=> bs!1794129 (not (= lambda!379639 lambda!379582))))

(assert (=> d!2120236 true))

(assert (=> d!2120236 true))

(declare-fun lambda!379640 () Int)

(assert (=> bs!1794122 (not (= lambda!379640 lambda!379555))))

(assert (=> bs!1794123 (= (and (= (reg!16910 r!7292) (reg!16910 lt!2440700)) (= (Star!16581 (reg!16910 r!7292)) lt!2440700)) (= lambda!379640 lambda!379584))))

(assert (=> bs!1794124 (= lambda!379640 lambda!379563)))

(assert (=> bs!1794122 (not (= lambda!379640 lambda!379553))))

(assert (=> bs!1794125 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379640 lambda!379581))))

(assert (=> bs!1794126 (not (= lambda!379640 lambda!379508))))

(assert (=> bs!1794124 (not (= lambda!379640 lambda!379560))))

(assert (=> bs!1794126 (not (= lambda!379640 lambda!379506))))

(assert (=> bs!1794128 (not (= lambda!379640 lambda!379572))))

(assert (=> bs!1794126 (= (= (Star!16581 (reg!16910 r!7292)) r!7292) (= lambda!379640 lambda!379507))))

(assert (=> bs!1794129 (not (= lambda!379640 lambda!379582))))

(assert (=> bs!1794127 (not (= lambda!379640 lambda!379585))))

(declare-fun bs!1794130 () Bool)

(assert (= bs!1794130 d!2120236))

(assert (=> bs!1794130 (not (= lambda!379640 lambda!379639))))

(assert (=> d!2120236 true))

(assert (=> d!2120236 true))

(assert (=> d!2120236 (= (Exists!3649 lambda!379639) (Exists!3649 lambda!379640))))

(assert (=> d!2120236 true))

(declare-fun _$91!734 () Unit!159853)

(assert (=> d!2120236 (= (choose!50339 (reg!16910 r!7292) s!2326) _$91!734)))

(declare-fun m!7504310 () Bool)

(assert (=> bs!1794130 m!7504310))

(declare-fun m!7504312 () Bool)

(assert (=> bs!1794130 m!7504312))

(assert (=> d!2119756 d!2120236))

(declare-fun b!6749896 () Bool)

(declare-fun e!4076555 () Bool)

(declare-fun e!4076553 () Bool)

(assert (=> b!6749896 (= e!4076555 e!4076553)))

(declare-fun res!2761004 () Bool)

(assert (=> b!6749896 (= res!2761004 (not (nullable!6566 (reg!16910 (reg!16910 r!7292)))))))

(assert (=> b!6749896 (=> (not res!2761004) (not e!4076553))))

(declare-fun b!6749897 () Bool)

(declare-fun e!4076558 () Bool)

(declare-fun call!610440 () Bool)

(assert (=> b!6749897 (= e!4076558 call!610440)))

(declare-fun b!6749898 () Bool)

(declare-fun res!2761007 () Bool)

(assert (=> b!6749898 (=> (not res!2761007) (not e!4076558))))

(declare-fun call!610442 () Bool)

(assert (=> b!6749898 (= res!2761007 call!610442)))

(declare-fun e!4076556 () Bool)

(assert (=> b!6749898 (= e!4076556 e!4076558)))

(declare-fun d!2120250 () Bool)

(declare-fun res!2761005 () Bool)

(declare-fun e!4076559 () Bool)

(assert (=> d!2120250 (=> res!2761005 e!4076559)))

(assert (=> d!2120250 (= res!2761005 ((_ is ElementMatch!16581) (reg!16910 r!7292)))))

(assert (=> d!2120250 (= (validRegex!8317 (reg!16910 r!7292)) e!4076559)))

(declare-fun b!6749899 () Bool)

(declare-fun res!2761003 () Bool)

(declare-fun e!4076557 () Bool)

(assert (=> b!6749899 (=> res!2761003 e!4076557)))

(assert (=> b!6749899 (= res!2761003 (not ((_ is Concat!25426) (reg!16910 r!7292))))))

(assert (=> b!6749899 (= e!4076556 e!4076557)))

(declare-fun b!6749900 () Bool)

(declare-fun e!4076554 () Bool)

(assert (=> b!6749900 (= e!4076554 call!610440)))

(declare-fun b!6749901 () Bool)

(declare-fun call!610441 () Bool)

(assert (=> b!6749901 (= e!4076553 call!610441)))

(declare-fun b!6749902 () Bool)

(assert (=> b!6749902 (= e!4076557 e!4076554)))

(declare-fun res!2761006 () Bool)

(assert (=> b!6749902 (=> (not res!2761006) (not e!4076554))))

(assert (=> b!6749902 (= res!2761006 call!610442)))

(declare-fun bm!610435 () Bool)

(assert (=> bm!610435 (= call!610440 call!610441)))

(declare-fun bm!610436 () Bool)

(declare-fun c!1252498 () Bool)

(assert (=> bm!610436 (= call!610442 (validRegex!8317 (ite c!1252498 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))))))

(declare-fun c!1252497 () Bool)

(declare-fun bm!610437 () Bool)

(assert (=> bm!610437 (= call!610441 (validRegex!8317 (ite c!1252497 (reg!16910 (reg!16910 r!7292)) (ite c!1252498 (regTwo!33675 (reg!16910 r!7292)) (regTwo!33674 (reg!16910 r!7292))))))))

(declare-fun b!6749903 () Bool)

(assert (=> b!6749903 (= e!4076555 e!4076556)))

(assert (=> b!6749903 (= c!1252498 ((_ is Union!16581) (reg!16910 r!7292)))))

(declare-fun b!6749904 () Bool)

(assert (=> b!6749904 (= e!4076559 e!4076555)))

(assert (=> b!6749904 (= c!1252497 ((_ is Star!16581) (reg!16910 r!7292)))))

(assert (= (and d!2120250 (not res!2761005)) b!6749904))

(assert (= (and b!6749904 c!1252497) b!6749896))

(assert (= (and b!6749904 (not c!1252497)) b!6749903))

(assert (= (and b!6749896 res!2761004) b!6749901))

(assert (= (and b!6749903 c!1252498) b!6749898))

(assert (= (and b!6749903 (not c!1252498)) b!6749899))

(assert (= (and b!6749898 res!2761007) b!6749897))

(assert (= (and b!6749899 (not res!2761003)) b!6749902))

(assert (= (and b!6749902 res!2761006) b!6749900))

(assert (= (or b!6749897 b!6749900) bm!610435))

(assert (= (or b!6749898 b!6749902) bm!610436))

(assert (= (or b!6749901 bm!610435) bm!610437))

(declare-fun m!7504314 () Bool)

(assert (=> b!6749896 m!7504314))

(declare-fun m!7504316 () Bool)

(assert (=> bm!610436 m!7504316))

(declare-fun m!7504318 () Bool)

(assert (=> bm!610437 m!7504318))

(assert (=> d!2119756 d!2120250))

(declare-fun d!2120252 () Bool)

(declare-fun res!2761008 () Bool)

(declare-fun e!4076560 () Bool)

(assert (=> d!2120252 (=> res!2761008 e!4076560)))

(assert (=> d!2120252 (= res!2761008 ((_ is Nil!65918) lt!2440825))))

(assert (=> d!2120252 (= (forall!15778 lt!2440825 lambda!379592) e!4076560)))

(declare-fun b!6749905 () Bool)

(declare-fun e!4076561 () Bool)

(assert (=> b!6749905 (= e!4076560 e!4076561)))

(declare-fun res!2761009 () Bool)

(assert (=> b!6749905 (=> (not res!2761009) (not e!4076561))))

(assert (=> b!6749905 (= res!2761009 (dynLambda!26302 lambda!379592 (h!72366 lt!2440825)))))

(declare-fun b!6749906 () Bool)

(assert (=> b!6749906 (= e!4076561 (forall!15778 (t!379743 lt!2440825) lambda!379592))))

(assert (= (and d!2120252 (not res!2761008)) b!6749905))

(assert (= (and b!6749905 res!2761009) b!6749906))

(declare-fun b_lambda!254213 () Bool)

(assert (=> (not b_lambda!254213) (not b!6749905)))

(declare-fun m!7504320 () Bool)

(assert (=> b!6749905 m!7504320))

(declare-fun m!7504322 () Bool)

(assert (=> b!6749906 m!7504322))

(assert (=> d!2119876 d!2120252))

(declare-fun d!2120254 () Bool)

(assert (=> d!2120254 (= (isEmpty!38269 (_1!36859 lt!2440718)) ((_ is Nil!65919) (_1!36859 lt!2440718)))))

(assert (=> d!2119832 d!2120254))

(assert (=> d!2119832 d!2120250))

(assert (=> b!6748996 d!2119732))

(declare-fun bs!1794131 () Bool)

(declare-fun d!2120256 () Bool)

(assert (= bs!1794131 (and d!2120256 d!2119732)))

(declare-fun lambda!379641 () Int)

(assert (=> bs!1794131 (= lambda!379641 lambda!379537)))

(declare-fun bs!1794132 () Bool)

(assert (= bs!1794132 (and d!2120256 d!2119862)))

(assert (=> bs!1794132 (= lambda!379641 lambda!379586)))

(declare-fun bs!1794133 () Bool)

(assert (= bs!1794133 (and d!2120256 d!2119814)))

(assert (=> bs!1794133 (= lambda!379641 lambda!379575)))

(declare-fun bs!1794134 () Bool)

(assert (= bs!1794134 (and d!2120256 d!2119876)))

(assert (=> bs!1794134 (= lambda!379641 lambda!379592)))

(declare-fun bs!1794135 () Bool)

(assert (= bs!1794135 (and d!2120256 d!2119874)))

(assert (=> bs!1794135 (= lambda!379641 lambda!379589)))

(declare-fun bs!1794136 () Bool)

(assert (= bs!1794136 (and d!2120256 d!2120206)))

(assert (=> bs!1794136 (= lambda!379641 lambda!379631)))

(declare-fun bs!1794137 () Bool)

(assert (= bs!1794137 (and d!2120256 d!2119854)))

(assert (=> bs!1794137 (= lambda!379641 lambda!379583)))

(declare-fun lt!2440871 () List!66042)

(assert (=> d!2120256 (forall!15778 lt!2440871 lambda!379641)))

(declare-fun e!4076562 () List!66042)

(assert (=> d!2120256 (= lt!2440871 e!4076562)))

(declare-fun c!1252499 () Bool)

(assert (=> d!2120256 (= c!1252499 ((_ is Cons!65920) (t!379745 zl!343)))))

(assert (=> d!2120256 (= (unfocusZipperList!2002 (t!379745 zl!343)) lt!2440871)))

(declare-fun b!6749907 () Bool)

(assert (=> b!6749907 (= e!4076562 (Cons!65918 (generalisedConcat!2178 (exprs!6465 (h!72368 (t!379745 zl!343)))) (unfocusZipperList!2002 (t!379745 (t!379745 zl!343)))))))

(declare-fun b!6749908 () Bool)

(assert (=> b!6749908 (= e!4076562 Nil!65918)))

(assert (= (and d!2120256 c!1252499) b!6749907))

(assert (= (and d!2120256 (not c!1252499)) b!6749908))

(declare-fun m!7504324 () Bool)

(assert (=> d!2120256 m!7504324))

(declare-fun m!7504326 () Bool)

(assert (=> b!6749907 m!7504326))

(declare-fun m!7504328 () Bool)

(assert (=> b!6749907 m!7504328))

(assert (=> b!6748996 d!2120256))

(declare-fun d!2120258 () Bool)

(assert (=> d!2120258 (= (isEmpty!38269 (tail!12671 s!2326)) ((_ is Nil!65919) (tail!12671 s!2326)))))

(assert (=> b!6748879 d!2120258))

(assert (=> b!6748879 d!2120194))

(assert (=> bm!610250 d!2120254))

(declare-fun d!2120260 () Bool)

(assert (=> d!2120260 (= (head!13584 (exprs!6465 (h!72368 zl!343))) (h!72366 (exprs!6465 (h!72368 zl!343))))))

(assert (=> b!6748501 d!2120260))

(declare-fun d!2120262 () Bool)

(declare-fun c!1252500 () Bool)

(assert (=> d!2120262 (= c!1252500 (isEmpty!38269 (tail!12671 s!2326)))))

(declare-fun e!4076563 () Bool)

(assert (=> d!2120262 (= (matchZipper!2567 (derivationStepZipper!2525 lt!2440717 (head!13586 s!2326)) (tail!12671 s!2326)) e!4076563)))

(declare-fun b!6749909 () Bool)

(assert (=> b!6749909 (= e!4076563 (nullableZipper!2294 (derivationStepZipper!2525 lt!2440717 (head!13586 s!2326))))))

(declare-fun b!6749910 () Bool)

(assert (=> b!6749910 (= e!4076563 (matchZipper!2567 (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (head!13586 s!2326)) (head!13586 (tail!12671 s!2326))) (tail!12671 (tail!12671 s!2326))))))

(assert (= (and d!2120262 c!1252500) b!6749909))

(assert (= (and d!2120262 (not c!1252500)) b!6749910))

(assert (=> d!2120262 m!7503402))

(assert (=> d!2120262 m!7503406))

(assert (=> b!6749909 m!7503514))

(declare-fun m!7504330 () Bool)

(assert (=> b!6749909 m!7504330))

(assert (=> b!6749910 m!7503402))

(assert (=> b!6749910 m!7504144))

(assert (=> b!6749910 m!7503514))

(assert (=> b!6749910 m!7504144))

(declare-fun m!7504332 () Bool)

(assert (=> b!6749910 m!7504332))

(assert (=> b!6749910 m!7503402))

(assert (=> b!6749910 m!7504148))

(assert (=> b!6749910 m!7504332))

(assert (=> b!6749910 m!7504148))

(declare-fun m!7504334 () Bool)

(assert (=> b!6749910 m!7504334))

(assert (=> b!6749015 d!2120262))

(declare-fun bs!1794138 () Bool)

(declare-fun d!2120264 () Bool)

(assert (= bs!1794138 (and d!2120264 b!6748154)))

(declare-fun lambda!379642 () Int)

(assert (=> bs!1794138 (= (= (head!13586 s!2326) (h!72367 s!2326)) (= lambda!379642 lambda!379509))))

(declare-fun bs!1794139 () Bool)

(assert (= bs!1794139 (and d!2120264 d!2119718)))

(assert (=> bs!1794139 (= (= (head!13586 s!2326) (h!72367 s!2326)) (= lambda!379642 lambda!379524))))

(declare-fun bs!1794140 () Bool)

(assert (= bs!1794140 (and d!2120264 d!2119820)))

(assert (=> bs!1794140 (= (= (head!13586 s!2326) (h!72367 s!2326)) (= lambda!379642 lambda!379576))))

(declare-fun bs!1794141 () Bool)

(assert (= bs!1794141 (and d!2120264 d!2119886)))

(assert (=> bs!1794141 (= (= (head!13586 s!2326) (h!72367 s!2326)) (= lambda!379642 lambda!379593))))

(assert (=> d!2120264 true))

(assert (=> d!2120264 (= (derivationStepZipper!2525 lt!2440717 (head!13586 s!2326)) (flatMap!2062 lt!2440717 lambda!379642))))

(declare-fun bs!1794142 () Bool)

(assert (= bs!1794142 d!2120264))

(declare-fun m!7504336 () Bool)

(assert (=> bs!1794142 m!7504336))

(assert (=> b!6749015 d!2120264))

(assert (=> b!6749015 d!2120186))

(assert (=> b!6749015 d!2120194))

(declare-fun d!2120266 () Bool)

(assert (=> d!2120266 true))

(declare-fun setRes!46134 () Bool)

(assert (=> d!2120266 setRes!46134))

(declare-fun condSetEmpty!46134 () Bool)

(declare-fun res!2761010 () (InoxSet Context!11930))

(assert (=> d!2120266 (= condSetEmpty!46134 (= res!2761010 ((as const (Array Context!11930 Bool)) false)))))

(assert (=> d!2120266 (= (choose!50344 lt!2440702 lambda!379509) res!2761010)))

(declare-fun setIsEmpty!46134 () Bool)

(assert (=> setIsEmpty!46134 setRes!46134))

(declare-fun tp!1849727 () Bool)

(declare-fun e!4076564 () Bool)

(declare-fun setNonEmpty!46134 () Bool)

(declare-fun setElem!46134 () Context!11930)

(assert (=> setNonEmpty!46134 (= setRes!46134 (and tp!1849727 (inv!84699 setElem!46134) e!4076564))))

(declare-fun setRest!46134 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46134 (= res!2761010 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46134 true) setRest!46134))))

(declare-fun b!6749911 () Bool)

(declare-fun tp!1849726 () Bool)

(assert (=> b!6749911 (= e!4076564 tp!1849726)))

(assert (= (and d!2120266 condSetEmpty!46134) setIsEmpty!46134))

(assert (= (and d!2120266 (not condSetEmpty!46134)) setNonEmpty!46134))

(assert (= setNonEmpty!46134 b!6749911))

(declare-fun m!7504338 () Bool)

(assert (=> setNonEmpty!46134 m!7504338))

(assert (=> d!2119826 d!2120266))

(declare-fun d!2120268 () Bool)

(assert (=> d!2120268 (= (isEmpty!38269 (tail!12671 (_2!36859 lt!2440718))) ((_ is Nil!65919) (tail!12671 (_2!36859 lt!2440718))))))

(assert (=> b!6748950 d!2120268))

(declare-fun d!2120270 () Bool)

(assert (=> d!2120270 (= (tail!12671 (_2!36859 lt!2440718)) (t!379744 (_2!36859 lt!2440718)))))

(assert (=> b!6748950 d!2120270))

(declare-fun d!2120272 () Bool)

(assert (=> d!2120272 (= (nullable!6566 (regOne!33674 (reg!16910 r!7292))) (nullableFct!2474 (regOne!33674 (reg!16910 r!7292))))))

(declare-fun bs!1794143 () Bool)

(assert (= bs!1794143 d!2120272))

(declare-fun m!7504340 () Bool)

(assert (=> bs!1794143 m!7504340))

(assert (=> b!6748824 d!2120272))

(declare-fun d!2120274 () Bool)

(assert (=> d!2120274 true))

(declare-fun setRes!46135 () Bool)

(assert (=> d!2120274 setRes!46135))

(declare-fun condSetEmpty!46135 () Bool)

(declare-fun res!2761011 () (InoxSet Context!11930))

(assert (=> d!2120274 (= condSetEmpty!46135 (= res!2761011 ((as const (Array Context!11930 Bool)) false)))))

(assert (=> d!2120274 (= (choose!50344 lt!2440715 lambda!379509) res!2761011)))

(declare-fun setIsEmpty!46135 () Bool)

(assert (=> setIsEmpty!46135 setRes!46135))

(declare-fun tp!1849729 () Bool)

(declare-fun setNonEmpty!46135 () Bool)

(declare-fun e!4076565 () Bool)

(declare-fun setElem!46135 () Context!11930)

(assert (=> setNonEmpty!46135 (= setRes!46135 (and tp!1849729 (inv!84699 setElem!46135) e!4076565))))

(declare-fun setRest!46135 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46135 (= res!2761011 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46135 true) setRest!46135))))

(declare-fun b!6749912 () Bool)

(declare-fun tp!1849728 () Bool)

(assert (=> b!6749912 (= e!4076565 tp!1849728)))

(assert (= (and d!2120274 condSetEmpty!46135) setIsEmpty!46135))

(assert (= (and d!2120274 (not condSetEmpty!46135)) setNonEmpty!46135))

(assert (= setNonEmpty!46135 b!6749912))

(declare-fun m!7504342 () Bool)

(assert (=> setNonEmpty!46135 m!7504342))

(assert (=> d!2119816 d!2120274))

(declare-fun d!2120276 () Bool)

(assert (=> d!2120276 (= (isEmpty!38269 (t!379744 s!2326)) ((_ is Nil!65919) (t!379744 s!2326)))))

(assert (=> d!2119884 d!2120276))

(declare-fun b!6749913 () Bool)

(declare-fun e!4076568 () Bool)

(declare-fun e!4076566 () Bool)

(assert (=> b!6749913 (= e!4076568 e!4076566)))

(declare-fun res!2761013 () Bool)

(assert (=> b!6749913 (= res!2761013 (not (nullable!6566 (reg!16910 lt!2440800))))))

(assert (=> b!6749913 (=> (not res!2761013) (not e!4076566))))

(declare-fun b!6749914 () Bool)

(declare-fun e!4076571 () Bool)

(declare-fun call!610443 () Bool)

(assert (=> b!6749914 (= e!4076571 call!610443)))

(declare-fun b!6749915 () Bool)

(declare-fun res!2761016 () Bool)

(assert (=> b!6749915 (=> (not res!2761016) (not e!4076571))))

(declare-fun call!610445 () Bool)

(assert (=> b!6749915 (= res!2761016 call!610445)))

(declare-fun e!4076569 () Bool)

(assert (=> b!6749915 (= e!4076569 e!4076571)))

(declare-fun d!2120278 () Bool)

(declare-fun res!2761014 () Bool)

(declare-fun e!4076572 () Bool)

(assert (=> d!2120278 (=> res!2761014 e!4076572)))

(assert (=> d!2120278 (= res!2761014 ((_ is ElementMatch!16581) lt!2440800))))

(assert (=> d!2120278 (= (validRegex!8317 lt!2440800) e!4076572)))

(declare-fun b!6749916 () Bool)

(declare-fun res!2761012 () Bool)

(declare-fun e!4076570 () Bool)

(assert (=> b!6749916 (=> res!2761012 e!4076570)))

(assert (=> b!6749916 (= res!2761012 (not ((_ is Concat!25426) lt!2440800)))))

(assert (=> b!6749916 (= e!4076569 e!4076570)))

(declare-fun b!6749917 () Bool)

(declare-fun e!4076567 () Bool)

(assert (=> b!6749917 (= e!4076567 call!610443)))

(declare-fun b!6749918 () Bool)

(declare-fun call!610444 () Bool)

(assert (=> b!6749918 (= e!4076566 call!610444)))

(declare-fun b!6749919 () Bool)

(assert (=> b!6749919 (= e!4076570 e!4076567)))

(declare-fun res!2761015 () Bool)

(assert (=> b!6749919 (=> (not res!2761015) (not e!4076567))))

(assert (=> b!6749919 (= res!2761015 call!610445)))

(declare-fun bm!610438 () Bool)

(assert (=> bm!610438 (= call!610443 call!610444)))

(declare-fun bm!610439 () Bool)

(declare-fun c!1252502 () Bool)

(assert (=> bm!610439 (= call!610445 (validRegex!8317 (ite c!1252502 (regOne!33675 lt!2440800) (regOne!33674 lt!2440800))))))

(declare-fun bm!610440 () Bool)

(declare-fun c!1252501 () Bool)

(assert (=> bm!610440 (= call!610444 (validRegex!8317 (ite c!1252501 (reg!16910 lt!2440800) (ite c!1252502 (regTwo!33675 lt!2440800) (regTwo!33674 lt!2440800)))))))

(declare-fun b!6749920 () Bool)

(assert (=> b!6749920 (= e!4076568 e!4076569)))

(assert (=> b!6749920 (= c!1252502 ((_ is Union!16581) lt!2440800))))

(declare-fun b!6749921 () Bool)

(assert (=> b!6749921 (= e!4076572 e!4076568)))

(assert (=> b!6749921 (= c!1252501 ((_ is Star!16581) lt!2440800))))

(assert (= (and d!2120278 (not res!2761014)) b!6749921))

(assert (= (and b!6749921 c!1252501) b!6749913))

(assert (= (and b!6749921 (not c!1252501)) b!6749920))

(assert (= (and b!6749913 res!2761013) b!6749918))

(assert (= (and b!6749920 c!1252502) b!6749915))

(assert (= (and b!6749920 (not c!1252502)) b!6749916))

(assert (= (and b!6749915 res!2761016) b!6749914))

(assert (= (and b!6749916 (not res!2761012)) b!6749919))

(assert (= (and b!6749919 res!2761015) b!6749917))

(assert (= (or b!6749914 b!6749917) bm!610438))

(assert (= (or b!6749915 b!6749919) bm!610439))

(assert (= (or b!6749918 bm!610438) bm!610440))

(declare-fun m!7504344 () Bool)

(assert (=> b!6749913 m!7504344))

(declare-fun m!7504346 () Bool)

(assert (=> bm!610439 m!7504346))

(declare-fun m!7504348 () Bool)

(assert (=> bm!610440 m!7504348))

(assert (=> d!2119812 d!2120278))

(assert (=> d!2119812 d!2119874))

(assert (=> d!2119812 d!2119876))

(declare-fun d!2120280 () Bool)

(declare-fun lt!2440874 () Int)

(assert (=> d!2120280 (>= lt!2440874 0)))

(declare-fun e!4076575 () Int)

(assert (=> d!2120280 (= lt!2440874 e!4076575)))

(declare-fun c!1252505 () Bool)

(assert (=> d!2120280 (= c!1252505 ((_ is Nil!65919) lt!2440828))))

(assert (=> d!2120280 (= (size!40621 lt!2440828) lt!2440874)))

(declare-fun b!6749926 () Bool)

(assert (=> b!6749926 (= e!4076575 0)))

(declare-fun b!6749927 () Bool)

(assert (=> b!6749927 (= e!4076575 (+ 1 (size!40621 (t!379744 lt!2440828))))))

(assert (= (and d!2120280 c!1252505) b!6749926))

(assert (= (and d!2120280 (not c!1252505)) b!6749927))

(declare-fun m!7504350 () Bool)

(assert (=> b!6749927 m!7504350))

(assert (=> b!6749008 d!2120280))

(declare-fun d!2120282 () Bool)

(declare-fun lt!2440875 () Int)

(assert (=> d!2120282 (>= lt!2440875 0)))

(declare-fun e!4076576 () Int)

(assert (=> d!2120282 (= lt!2440875 e!4076576)))

(declare-fun c!1252506 () Bool)

(assert (=> d!2120282 (= c!1252506 ((_ is Nil!65919) (_1!36859 lt!2440718)))))

(assert (=> d!2120282 (= (size!40621 (_1!36859 lt!2440718)) lt!2440875)))

(declare-fun b!6749928 () Bool)

(assert (=> b!6749928 (= e!4076576 0)))

(declare-fun b!6749929 () Bool)

(assert (=> b!6749929 (= e!4076576 (+ 1 (size!40621 (t!379744 (_1!36859 lt!2440718)))))))

(assert (= (and d!2120282 c!1252506) b!6749928))

(assert (= (and d!2120282 (not c!1252506)) b!6749929))

(declare-fun m!7504352 () Bool)

(assert (=> b!6749929 m!7504352))

(assert (=> b!6749008 d!2120282))

(declare-fun d!2120284 () Bool)

(declare-fun lt!2440876 () Int)

(assert (=> d!2120284 (>= lt!2440876 0)))

(declare-fun e!4076577 () Int)

(assert (=> d!2120284 (= lt!2440876 e!4076577)))

(declare-fun c!1252507 () Bool)

(assert (=> d!2120284 (= c!1252507 ((_ is Nil!65919) (_2!36859 lt!2440718)))))

(assert (=> d!2120284 (= (size!40621 (_2!36859 lt!2440718)) lt!2440876)))

(declare-fun b!6749930 () Bool)

(assert (=> b!6749930 (= e!4076577 0)))

(declare-fun b!6749931 () Bool)

(assert (=> b!6749931 (= e!4076577 (+ 1 (size!40621 (t!379744 (_2!36859 lt!2440718)))))))

(assert (= (and d!2120284 c!1252507) b!6749930))

(assert (= (and d!2120284 (not c!1252507)) b!6749931))

(declare-fun m!7504354 () Bool)

(assert (=> b!6749931 m!7504354))

(assert (=> b!6749008 d!2120284))

(declare-fun d!2120286 () Bool)

(assert (=> d!2120286 (= (isEmpty!38269 (tail!12671 (_1!36859 lt!2440718))) ((_ is Nil!65919) (tail!12671 (_1!36859 lt!2440718))))))

(assert (=> b!6748815 d!2120286))

(declare-fun d!2120288 () Bool)

(assert (=> d!2120288 (= (tail!12671 (_1!36859 lt!2440718)) (t!379744 (_1!36859 lt!2440718)))))

(assert (=> b!6748815 d!2120288))

(assert (=> d!2119822 d!2119826))

(declare-fun d!2120290 () Bool)

(assert (=> d!2120290 (= (flatMap!2062 lt!2440702 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440713))))

(assert (=> d!2120290 true))

(declare-fun _$13!4106 () Unit!159853)

(assert (=> d!2120290 (= (choose!50346 lt!2440702 lt!2440713 lambda!379509) _$13!4106)))

(declare-fun b_lambda!254215 () Bool)

(assert (=> (not b_lambda!254215) (not d!2120290)))

(declare-fun bs!1794144 () Bool)

(assert (= bs!1794144 d!2120290))

(assert (=> bs!1794144 m!7502906))

(assert (=> bs!1794144 m!7503336))

(assert (=> d!2119822 d!2120290))

(declare-fun d!2120292 () Bool)

(assert (=> d!2120292 true))

(declare-fun setRes!46136 () Bool)

(assert (=> d!2120292 setRes!46136))

(declare-fun condSetEmpty!46136 () Bool)

(declare-fun res!2761017 () (InoxSet Context!11930))

(assert (=> d!2120292 (= condSetEmpty!46136 (= res!2761017 ((as const (Array Context!11930 Bool)) false)))))

(assert (=> d!2120292 (= (choose!50344 lt!2440717 lambda!379509) res!2761017)))

(declare-fun setIsEmpty!46136 () Bool)

(assert (=> setIsEmpty!46136 setRes!46136))

(declare-fun tp!1849731 () Bool)

(declare-fun setNonEmpty!46136 () Bool)

(declare-fun e!4076578 () Bool)

(declare-fun setElem!46136 () Context!11930)

(assert (=> setNonEmpty!46136 (= setRes!46136 (and tp!1849731 (inv!84699 setElem!46136) e!4076578))))

(declare-fun setRest!46136 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46136 (= res!2761017 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46136 true) setRest!46136))))

(declare-fun b!6749932 () Bool)

(declare-fun tp!1849730 () Bool)

(assert (=> b!6749932 (= e!4076578 tp!1849730)))

(assert (= (and d!2120292 condSetEmpty!46136) setIsEmpty!46136))

(assert (= (and d!2120292 (not condSetEmpty!46136)) setNonEmpty!46136))

(assert (= setNonEmpty!46136 b!6749932))

(declare-fun m!7504356 () Bool)

(assert (=> setNonEmpty!46136 m!7504356))

(assert (=> d!2119836 d!2120292))

(declare-fun c!1252511 () Bool)

(declare-fun d!2120294 () Bool)

(assert (=> d!2120294 (= c!1252511 (and ((_ is ElementMatch!16581) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (= (c!1252033 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (h!72367 s!2326))))))

(declare-fun e!4076584 () (InoxSet Context!11930))

(assert (=> d!2120294 (= (derivationStepZipperDown!1809 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))) (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259)) (h!72367 s!2326)) e!4076584)))

(declare-fun b!6749933 () Bool)

(declare-fun e!4076583 () (InoxSet Context!11930))

(declare-fun call!610446 () (InoxSet Context!11930))

(declare-fun call!610447 () (InoxSet Context!11930))

(assert (=> b!6749933 (= e!4076583 ((_ map or) call!610446 call!610447))))

(declare-fun b!6749934 () Bool)

(declare-fun e!4076580 () (InoxSet Context!11930))

(declare-fun e!4076579 () (InoxSet Context!11930))

(assert (=> b!6749934 (= e!4076580 e!4076579)))

(declare-fun c!1252508 () Bool)

(assert (=> b!6749934 (= c!1252508 ((_ is Concat!25426) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))))))

(declare-fun c!1252512 () Bool)

(declare-fun call!610450 () List!66042)

(declare-fun bm!610441 () Bool)

(assert (=> bm!610441 (= call!610450 ($colon$colon!2395 (exprs!6465 (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259))) (ite (or c!1252512 c!1252508) (regTwo!33674 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))))))))

(declare-fun b!6749935 () Bool)

(declare-fun e!4076581 () Bool)

(assert (=> b!6749935 (= c!1252512 e!4076581)))

(declare-fun res!2761018 () Bool)

(assert (=> b!6749935 (=> (not res!2761018) (not e!4076581))))

(assert (=> b!6749935 (= res!2761018 ((_ is Concat!25426) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))))))

(assert (=> b!6749935 (= e!4076583 e!4076580)))

(declare-fun b!6749936 () Bool)

(declare-fun call!610448 () (InoxSet Context!11930))

(assert (=> b!6749936 (= e!4076580 ((_ map or) call!610446 call!610448))))

(declare-fun bm!610442 () Bool)

(declare-fun c!1252509 () Bool)

(declare-fun call!610449 () List!66042)

(assert (=> bm!610442 (= call!610447 (derivationStepZipperDown!1809 (ite c!1252509 (regTwo!33675 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (ite c!1252512 (regTwo!33674 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (ite c!1252508 (regOne!33674 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (reg!16910 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))))))) (ite (or c!1252509 c!1252512) (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259)) (Context!11931 call!610449)) (h!72367 s!2326)))))

(declare-fun b!6749937 () Bool)

(declare-fun e!4076582 () (InoxSet Context!11930))

(assert (=> b!6749937 (= e!4076582 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6749938 () Bool)

(assert (=> b!6749938 (= e!4076584 e!4076583)))

(assert (=> b!6749938 (= c!1252509 ((_ is Union!16581) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))))))

(declare-fun bm!610443 () Bool)

(declare-fun call!610451 () (InoxSet Context!11930))

(assert (=> bm!610443 (= call!610451 call!610448)))

(declare-fun b!6749939 () Bool)

(assert (=> b!6749939 (= e!4076581 (nullable!6566 (regOne!33674 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))))))))

(declare-fun bm!610444 () Bool)

(assert (=> bm!610444 (= call!610449 call!610450)))

(declare-fun bm!610445 () Bool)

(assert (=> bm!610445 (= call!610448 call!610447)))

(declare-fun b!6749940 () Bool)

(assert (=> b!6749940 (= e!4076584 (store ((as const (Array Context!11930 Bool)) false) (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259)) true))))

(declare-fun bm!610446 () Bool)

(assert (=> bm!610446 (= call!610446 (derivationStepZipperDown!1809 (ite c!1252509 (regOne!33675 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))) (regOne!33674 (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292))))))) (ite c!1252509 (ite (or c!1252205 c!1252208) lt!2440713 (Context!11931 call!610259)) (Context!11931 call!610450)) (h!72367 s!2326)))))

(declare-fun c!1252510 () Bool)

(declare-fun b!6749941 () Bool)

(assert (=> b!6749941 (= c!1252510 ((_ is Star!16581) (ite c!1252205 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252208 (regTwo!33674 (reg!16910 r!7292)) (ite c!1252204 (regOne!33674 (reg!16910 r!7292)) (reg!16910 (reg!16910 r!7292)))))))))

(assert (=> b!6749941 (= e!4076579 e!4076582)))

(declare-fun b!6749942 () Bool)

(assert (=> b!6749942 (= e!4076582 call!610451)))

(declare-fun b!6749943 () Bool)

(assert (=> b!6749943 (= e!4076579 call!610451)))

(assert (= (and d!2120294 c!1252511) b!6749940))

(assert (= (and d!2120294 (not c!1252511)) b!6749938))

(assert (= (and b!6749938 c!1252509) b!6749933))

(assert (= (and b!6749938 (not c!1252509)) b!6749935))

(assert (= (and b!6749935 res!2761018) b!6749939))

(assert (= (and b!6749935 c!1252512) b!6749936))

(assert (= (and b!6749935 (not c!1252512)) b!6749934))

(assert (= (and b!6749934 c!1252508) b!6749943))

(assert (= (and b!6749934 (not c!1252508)) b!6749941))

(assert (= (and b!6749941 c!1252510) b!6749942))

(assert (= (and b!6749941 (not c!1252510)) b!6749937))

(assert (= (or b!6749943 b!6749942) bm!610444))

(assert (= (or b!6749943 b!6749942) bm!610443))

(assert (= (or b!6749936 bm!610444) bm!610441))

(assert (= (or b!6749936 bm!610443) bm!610445))

(assert (= (or b!6749933 bm!610445) bm!610442))

(assert (= (or b!6749933 b!6749936) bm!610446))

(declare-fun m!7504358 () Bool)

(assert (=> bm!610442 m!7504358))

(declare-fun m!7504360 () Bool)

(assert (=> bm!610441 m!7504360))

(declare-fun m!7504362 () Bool)

(assert (=> bm!610446 m!7504362))

(declare-fun m!7504364 () Bool)

(assert (=> b!6749940 m!7504364))

(declare-fun m!7504366 () Bool)

(assert (=> b!6749939 m!7504366))

(assert (=> bm!610252 d!2120294))

(assert (=> b!6748680 d!2119844))

(declare-fun d!2120296 () Bool)

(assert (=> d!2120296 (= (isEmpty!38271 (unfocusZipperList!2002 zl!343)) ((_ is Nil!65918) (unfocusZipperList!2002 zl!343)))))

(assert (=> b!6748986 d!2120296))

(declare-fun d!2120298 () Bool)

(assert (=> d!2120298 (= (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (nullableFct!2474 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(declare-fun bs!1794145 () Bool)

(assert (= bs!1794145 d!2120298))

(declare-fun m!7504368 () Bool)

(assert (=> bs!1794145 m!7504368))

(assert (=> b!6748419 d!2120298))

(declare-fun d!2120300 () Bool)

(assert (=> d!2120300 true))

(assert (=> d!2120300 true))

(declare-fun res!2761021 () Bool)

(assert (=> d!2120300 (= (choose!50341 lambda!379507) res!2761021)))

(assert (=> d!2119770 d!2120300))

(assert (=> b!6748959 d!2120268))

(assert (=> b!6748959 d!2120270))

(assert (=> b!6748888 d!2120258))

(assert (=> b!6748888 d!2120194))

(assert (=> d!2119858 d!2119766))

(assert (=> d!2119858 d!2120204))

(declare-fun b!6749944 () Bool)

(declare-fun e!4076591 () Bool)

(declare-fun lt!2440877 () Bool)

(declare-fun call!610452 () Bool)

(assert (=> b!6749944 (= e!4076591 (= lt!2440877 call!610452))))

(declare-fun b!6749945 () Bool)

(declare-fun res!2761025 () Bool)

(declare-fun e!4076588 () Bool)

(assert (=> b!6749945 (=> (not res!2761025) (not e!4076588))))

(assert (=> b!6749945 (= res!2761025 (not call!610452))))

(declare-fun b!6749946 () Bool)

(declare-fun res!2761022 () Bool)

(declare-fun e!4076586 () Bool)

(assert (=> b!6749946 (=> res!2761022 e!4076586)))

(assert (=> b!6749946 (= res!2761022 (not (isEmpty!38269 (tail!12671 (_2!36859 (get!22941 lt!2440786))))))))

(declare-fun b!6749947 () Bool)

(declare-fun e!4076587 () Bool)

(assert (=> b!6749947 (= e!4076587 (matchR!8764 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 (get!22941 lt!2440786)))) (tail!12671 (_2!36859 (get!22941 lt!2440786)))))))

(declare-fun b!6749948 () Bool)

(declare-fun e!4076585 () Bool)

(assert (=> b!6749948 (= e!4076585 e!4076586)))

(declare-fun res!2761024 () Bool)

(assert (=> b!6749948 (=> res!2761024 e!4076586)))

(assert (=> b!6749948 (= res!2761024 call!610452)))

(declare-fun d!2120302 () Bool)

(assert (=> d!2120302 e!4076591))

(declare-fun c!1252514 () Bool)

(assert (=> d!2120302 (= c!1252514 ((_ is EmptyExpr!16581) r!7292))))

(assert (=> d!2120302 (= lt!2440877 e!4076587)))

(declare-fun c!1252515 () Bool)

(assert (=> d!2120302 (= c!1252515 (isEmpty!38269 (_2!36859 (get!22941 lt!2440786))))))

(assert (=> d!2120302 (validRegex!8317 r!7292)))

(assert (=> d!2120302 (= (matchR!8764 r!7292 (_2!36859 (get!22941 lt!2440786))) lt!2440877)))

(declare-fun b!6749949 () Bool)

(assert (=> b!6749949 (= e!4076586 (not (= (head!13586 (_2!36859 (get!22941 lt!2440786))) (c!1252033 r!7292))))))

(declare-fun b!6749950 () Bool)

(declare-fun e!4076589 () Bool)

(assert (=> b!6749950 (= e!4076591 e!4076589)))

(declare-fun c!1252513 () Bool)

(assert (=> b!6749950 (= c!1252513 ((_ is EmptyLang!16581) r!7292))))

(declare-fun b!6749951 () Bool)

(assert (=> b!6749951 (= e!4076588 (= (head!13586 (_2!36859 (get!22941 lt!2440786))) (c!1252033 r!7292)))))

(declare-fun bm!610447 () Bool)

(assert (=> bm!610447 (= call!610452 (isEmpty!38269 (_2!36859 (get!22941 lt!2440786))))))

(declare-fun b!6749952 () Bool)

(declare-fun res!2761026 () Bool)

(declare-fun e!4076590 () Bool)

(assert (=> b!6749952 (=> res!2761026 e!4076590)))

(assert (=> b!6749952 (= res!2761026 (not ((_ is ElementMatch!16581) r!7292)))))

(assert (=> b!6749952 (= e!4076589 e!4076590)))

(declare-fun b!6749953 () Bool)

(declare-fun res!2761027 () Bool)

(assert (=> b!6749953 (=> res!2761027 e!4076590)))

(assert (=> b!6749953 (= res!2761027 e!4076588)))

(declare-fun res!2761023 () Bool)

(assert (=> b!6749953 (=> (not res!2761023) (not e!4076588))))

(assert (=> b!6749953 (= res!2761023 lt!2440877)))

(declare-fun b!6749954 () Bool)

(assert (=> b!6749954 (= e!4076589 (not lt!2440877))))

(declare-fun b!6749955 () Bool)

(declare-fun res!2761029 () Bool)

(assert (=> b!6749955 (=> (not res!2761029) (not e!4076588))))

(assert (=> b!6749955 (= res!2761029 (isEmpty!38269 (tail!12671 (_2!36859 (get!22941 lt!2440786)))))))

(declare-fun b!6749956 () Bool)

(assert (=> b!6749956 (= e!4076587 (nullable!6566 r!7292))))

(declare-fun b!6749957 () Bool)

(assert (=> b!6749957 (= e!4076590 e!4076585)))

(declare-fun res!2761028 () Bool)

(assert (=> b!6749957 (=> (not res!2761028) (not e!4076585))))

(assert (=> b!6749957 (= res!2761028 (not lt!2440877))))

(assert (= (and d!2120302 c!1252515) b!6749956))

(assert (= (and d!2120302 (not c!1252515)) b!6749947))

(assert (= (and d!2120302 c!1252514) b!6749944))

(assert (= (and d!2120302 (not c!1252514)) b!6749950))

(assert (= (and b!6749950 c!1252513) b!6749954))

(assert (= (and b!6749950 (not c!1252513)) b!6749952))

(assert (= (and b!6749952 (not res!2761026)) b!6749953))

(assert (= (and b!6749953 res!2761023) b!6749945))

(assert (= (and b!6749945 res!2761025) b!6749955))

(assert (= (and b!6749955 res!2761029) b!6749951))

(assert (= (and b!6749953 (not res!2761027)) b!6749957))

(assert (= (and b!6749957 res!2761028) b!6749948))

(assert (= (and b!6749948 (not res!2761024)) b!6749946))

(assert (= (and b!6749946 (not res!2761022)) b!6749949))

(assert (= (or b!6749944 b!6749945 b!6749948) bm!610447))

(declare-fun m!7504370 () Bool)

(assert (=> bm!610447 m!7504370))

(declare-fun m!7504372 () Bool)

(assert (=> b!6749947 m!7504372))

(assert (=> b!6749947 m!7504372))

(declare-fun m!7504374 () Bool)

(assert (=> b!6749947 m!7504374))

(declare-fun m!7504376 () Bool)

(assert (=> b!6749947 m!7504376))

(assert (=> b!6749947 m!7504374))

(assert (=> b!6749947 m!7504376))

(declare-fun m!7504378 () Bool)

(assert (=> b!6749947 m!7504378))

(assert (=> b!6749955 m!7504376))

(assert (=> b!6749955 m!7504376))

(declare-fun m!7504380 () Bool)

(assert (=> b!6749955 m!7504380))

(assert (=> d!2120302 m!7504370))

(assert (=> d!2120302 m!7502880))

(assert (=> b!6749946 m!7504376))

(assert (=> b!6749946 m!7504376))

(assert (=> b!6749946 m!7504380))

(assert (=> b!6749956 m!7503408))

(assert (=> b!6749951 m!7504372))

(assert (=> b!6749949 m!7504372))

(assert (=> b!6748676 d!2120302))

(declare-fun d!2120304 () Bool)

(assert (=> d!2120304 (= (get!22941 lt!2440786) (v!52667 lt!2440786))))

(assert (=> b!6748676 d!2120304))

(declare-fun d!2120306 () Bool)

(declare-fun c!1252519 () Bool)

(assert (=> d!2120306 (= c!1252519 (and ((_ is ElementMatch!16581) (h!72366 (exprs!6465 lt!2440713))) (= (c!1252033 (h!72366 (exprs!6465 lt!2440713))) (h!72367 s!2326))))))

(declare-fun e!4076597 () (InoxSet Context!11930))

(assert (=> d!2120306 (= (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440713)) (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (h!72367 s!2326)) e!4076597)))

(declare-fun b!6749958 () Bool)

(declare-fun e!4076596 () (InoxSet Context!11930))

(declare-fun call!610453 () (InoxSet Context!11930))

(declare-fun call!610454 () (InoxSet Context!11930))

(assert (=> b!6749958 (= e!4076596 ((_ map or) call!610453 call!610454))))

(declare-fun b!6749959 () Bool)

(declare-fun e!4076593 () (InoxSet Context!11930))

(declare-fun e!4076592 () (InoxSet Context!11930))

(assert (=> b!6749959 (= e!4076593 e!4076592)))

(declare-fun c!1252516 () Bool)

(assert (=> b!6749959 (= c!1252516 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440713))))))

(declare-fun call!610457 () List!66042)

(declare-fun c!1252520 () Bool)

(declare-fun bm!610448 () Bool)

(assert (=> bm!610448 (= call!610457 ($colon$colon!2395 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713)))) (ite (or c!1252520 c!1252516) (regTwo!33674 (h!72366 (exprs!6465 lt!2440713))) (h!72366 (exprs!6465 lt!2440713)))))))

(declare-fun b!6749960 () Bool)

(declare-fun e!4076594 () Bool)

(assert (=> b!6749960 (= c!1252520 e!4076594)))

(declare-fun res!2761030 () Bool)

(assert (=> b!6749960 (=> (not res!2761030) (not e!4076594))))

(assert (=> b!6749960 (= res!2761030 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440713))))))

(assert (=> b!6749960 (= e!4076596 e!4076593)))

(declare-fun b!6749961 () Bool)

(declare-fun call!610455 () (InoxSet Context!11930))

(assert (=> b!6749961 (= e!4076593 ((_ map or) call!610453 call!610455))))

(declare-fun call!610456 () List!66042)

(declare-fun bm!610449 () Bool)

(declare-fun c!1252517 () Bool)

(assert (=> bm!610449 (= call!610454 (derivationStepZipperDown!1809 (ite c!1252517 (regTwo!33675 (h!72366 (exprs!6465 lt!2440713))) (ite c!1252520 (regTwo!33674 (h!72366 (exprs!6465 lt!2440713))) (ite c!1252516 (regOne!33674 (h!72366 (exprs!6465 lt!2440713))) (reg!16910 (h!72366 (exprs!6465 lt!2440713)))))) (ite (or c!1252517 c!1252520) (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (Context!11931 call!610456)) (h!72367 s!2326)))))

(declare-fun b!6749962 () Bool)

(declare-fun e!4076595 () (InoxSet Context!11930))

(assert (=> b!6749962 (= e!4076595 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6749963 () Bool)

(assert (=> b!6749963 (= e!4076597 e!4076596)))

(assert (=> b!6749963 (= c!1252517 ((_ is Union!16581) (h!72366 (exprs!6465 lt!2440713))))))

(declare-fun bm!610450 () Bool)

(declare-fun call!610458 () (InoxSet Context!11930))

(assert (=> bm!610450 (= call!610458 call!610455)))

(declare-fun b!6749964 () Bool)

(assert (=> b!6749964 (= e!4076594 (nullable!6566 (regOne!33674 (h!72366 (exprs!6465 lt!2440713)))))))

(declare-fun bm!610451 () Bool)

(assert (=> bm!610451 (= call!610456 call!610457)))

(declare-fun bm!610452 () Bool)

(assert (=> bm!610452 (= call!610455 call!610454)))

(declare-fun b!6749965 () Bool)

(assert (=> b!6749965 (= e!4076597 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 (t!379743 (exprs!6465 lt!2440713))) true))))

(declare-fun bm!610453 () Bool)

(assert (=> bm!610453 (= call!610453 (derivationStepZipperDown!1809 (ite c!1252517 (regOne!33675 (h!72366 (exprs!6465 lt!2440713))) (regOne!33674 (h!72366 (exprs!6465 lt!2440713)))) (ite c!1252517 (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (Context!11931 call!610457)) (h!72367 s!2326)))))

(declare-fun b!6749966 () Bool)

(declare-fun c!1252518 () Bool)

(assert (=> b!6749966 (= c!1252518 ((_ is Star!16581) (h!72366 (exprs!6465 lt!2440713))))))

(assert (=> b!6749966 (= e!4076592 e!4076595)))

(declare-fun b!6749967 () Bool)

(assert (=> b!6749967 (= e!4076595 call!610458)))

(declare-fun b!6749968 () Bool)

(assert (=> b!6749968 (= e!4076592 call!610458)))

(assert (= (and d!2120306 c!1252519) b!6749965))

(assert (= (and d!2120306 (not c!1252519)) b!6749963))

(assert (= (and b!6749963 c!1252517) b!6749958))

(assert (= (and b!6749963 (not c!1252517)) b!6749960))

(assert (= (and b!6749960 res!2761030) b!6749964))

(assert (= (and b!6749960 c!1252520) b!6749961))

(assert (= (and b!6749960 (not c!1252520)) b!6749959))

(assert (= (and b!6749959 c!1252516) b!6749968))

(assert (= (and b!6749959 (not c!1252516)) b!6749966))

(assert (= (and b!6749966 c!1252518) b!6749967))

(assert (= (and b!6749966 (not c!1252518)) b!6749962))

(assert (= (or b!6749968 b!6749967) bm!610451))

(assert (= (or b!6749968 b!6749967) bm!610450))

(assert (= (or b!6749961 bm!610451) bm!610448))

(assert (= (or b!6749961 bm!610450) bm!610452))

(assert (= (or b!6749958 bm!610452) bm!610449))

(assert (= (or b!6749958 b!6749961) bm!610453))

(declare-fun m!7504382 () Bool)

(assert (=> bm!610449 m!7504382))

(declare-fun m!7504384 () Bool)

(assert (=> bm!610448 m!7504384))

(declare-fun m!7504386 () Bool)

(assert (=> bm!610453 m!7504386))

(declare-fun m!7504388 () Bool)

(assert (=> b!6749965 m!7504388))

(declare-fun m!7504390 () Bool)

(assert (=> b!6749964 m!7504390))

(assert (=> bm!610247 d!2120306))

(assert (=> bs!1793787 d!2119824))

(assert (=> d!2119840 d!2119836))

(declare-fun d!2120308 () Bool)

(assert (=> d!2120308 (= (flatMap!2062 lt!2440717 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440699))))

(assert (=> d!2120308 true))

(declare-fun _$13!4107 () Unit!159853)

(assert (=> d!2120308 (= (choose!50346 lt!2440717 lt!2440699 lambda!379509) _$13!4107)))

(declare-fun b_lambda!254217 () Bool)

(assert (=> (not b_lambda!254217) (not d!2120308)))

(declare-fun bs!1794146 () Bool)

(assert (= bs!1794146 d!2120308))

(assert (=> bs!1794146 m!7502856))

(assert (=> bs!1794146 m!7503388))

(assert (=> d!2119840 d!2120308))

(declare-fun b!6749969 () Bool)

(declare-fun e!4076600 () Bool)

(declare-fun e!4076598 () Bool)

(assert (=> b!6749969 (= e!4076600 e!4076598)))

(declare-fun res!2761032 () Bool)

(assert (=> b!6749969 (= res!2761032 (not (nullable!6566 (reg!16910 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))))

(assert (=> b!6749969 (=> (not res!2761032) (not e!4076598))))

(declare-fun b!6749970 () Bool)

(declare-fun e!4076603 () Bool)

(declare-fun call!610459 () Bool)

(assert (=> b!6749970 (= e!4076603 call!610459)))

(declare-fun b!6749971 () Bool)

(declare-fun res!2761035 () Bool)

(assert (=> b!6749971 (=> (not res!2761035) (not e!4076603))))

(declare-fun call!610461 () Bool)

(assert (=> b!6749971 (= res!2761035 call!610461)))

(declare-fun e!4076601 () Bool)

(assert (=> b!6749971 (= e!4076601 e!4076603)))

(declare-fun d!2120310 () Bool)

(declare-fun res!2761033 () Bool)

(declare-fun e!4076604 () Bool)

(assert (=> d!2120310 (=> res!2761033 e!4076604)))

(assert (=> d!2120310 (= res!2761033 ((_ is ElementMatch!16581) (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(assert (=> d!2120310 (= (validRegex!8317 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))) e!4076604)))

(declare-fun b!6749972 () Bool)

(declare-fun res!2761031 () Bool)

(declare-fun e!4076602 () Bool)

(assert (=> b!6749972 (=> res!2761031 e!4076602)))

(assert (=> b!6749972 (= res!2761031 (not ((_ is Concat!25426) (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292)))))))

(assert (=> b!6749972 (= e!4076601 e!4076602)))

(declare-fun b!6749973 () Bool)

(declare-fun e!4076599 () Bool)

(assert (=> b!6749973 (= e!4076599 call!610459)))

(declare-fun b!6749974 () Bool)

(declare-fun call!610460 () Bool)

(assert (=> b!6749974 (= e!4076598 call!610460)))

(declare-fun b!6749975 () Bool)

(assert (=> b!6749975 (= e!4076602 e!4076599)))

(declare-fun res!2761034 () Bool)

(assert (=> b!6749975 (=> (not res!2761034) (not e!4076599))))

(assert (=> b!6749975 (= res!2761034 call!610461)))

(declare-fun bm!610454 () Bool)

(assert (=> bm!610454 (= call!610459 call!610460)))

(declare-fun c!1252522 () Bool)

(declare-fun bm!610455 () Bool)

(assert (=> bm!610455 (= call!610461 (validRegex!8317 (ite c!1252522 (regOne!33675 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))) (regOne!33674 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))))

(declare-fun c!1252521 () Bool)

(declare-fun bm!610456 () Bool)

(assert (=> bm!610456 (= call!610460 (validRegex!8317 (ite c!1252521 (reg!16910 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))) (ite c!1252522 (regTwo!33675 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))) (regTwo!33674 (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292)))))))))

(declare-fun b!6749976 () Bool)

(assert (=> b!6749976 (= e!4076600 e!4076601)))

(assert (=> b!6749976 (= c!1252522 ((_ is Union!16581) (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(declare-fun b!6749977 () Bool)

(assert (=> b!6749977 (= e!4076604 e!4076600)))

(assert (=> b!6749977 (= c!1252521 ((_ is Star!16581) (ite c!1252240 (regOne!33675 r!7292) (regOne!33674 r!7292))))))

(assert (= (and d!2120310 (not res!2761033)) b!6749977))

(assert (= (and b!6749977 c!1252521) b!6749969))

(assert (= (and b!6749977 (not c!1252521)) b!6749976))

(assert (= (and b!6749969 res!2761032) b!6749974))

(assert (= (and b!6749976 c!1252522) b!6749971))

(assert (= (and b!6749976 (not c!1252522)) b!6749972))

(assert (= (and b!6749971 res!2761035) b!6749970))

(assert (= (and b!6749972 (not res!2761031)) b!6749975))

(assert (= (and b!6749975 res!2761034) b!6749973))

(assert (= (or b!6749970 b!6749973) bm!610454))

(assert (= (or b!6749971 b!6749975) bm!610455))

(assert (= (or b!6749974 bm!610454) bm!610456))

(declare-fun m!7504392 () Bool)

(assert (=> b!6749969 m!7504392))

(declare-fun m!7504394 () Bool)

(assert (=> bm!610455 m!7504394))

(declare-fun m!7504396 () Bool)

(assert (=> bm!610456 m!7504396))

(assert (=> bm!610276 d!2120310))

(declare-fun d!2120312 () Bool)

(assert (=> d!2120312 (= (isEmpty!38271 (t!379743 (exprs!6465 (h!72368 zl!343)))) ((_ is Nil!65918) (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> b!6748498 d!2120312))

(declare-fun bs!1794147 () Bool)

(declare-fun b!6749978 () Bool)

(assert (= bs!1794147 (and b!6749978 d!2120236)))

(declare-fun lambda!379643 () Int)

(assert (=> bs!1794147 (= (and (= (reg!16910 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33675 r!7292) (Star!16581 (reg!16910 r!7292)))) (= lambda!379643 lambda!379640))))

(declare-fun bs!1794148 () Bool)

(assert (= bs!1794148 (and b!6749978 d!2119742)))

(assert (=> bs!1794148 (not (= lambda!379643 lambda!379555))))

(declare-fun bs!1794149 () Bool)

(assert (= bs!1794149 (and b!6749978 b!6748896)))

(assert (=> bs!1794149 (= (and (= (reg!16910 (regTwo!33675 r!7292)) (reg!16910 lt!2440700)) (= (regTwo!33675 r!7292) lt!2440700)) (= lambda!379643 lambda!379584))))

(declare-fun bs!1794150 () Bool)

(assert (= bs!1794150 (and b!6749978 d!2119756)))

(assert (=> bs!1794150 (= (and (= (reg!16910 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33675 r!7292) (Star!16581 (reg!16910 r!7292)))) (= lambda!379643 lambda!379563))))

(assert (=> bs!1794148 (not (= lambda!379643 lambda!379553))))

(declare-fun bs!1794151 () Bool)

(assert (= bs!1794151 (and b!6749978 b!6748866)))

(assert (=> bs!1794151 (= (and (= (reg!16910 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33675 r!7292) r!7292)) (= lambda!379643 lambda!379581))))

(declare-fun bs!1794152 () Bool)

(assert (= bs!1794152 (and b!6749978 b!6748161)))

(assert (=> bs!1794152 (not (= lambda!379643 lambda!379508))))

(assert (=> bs!1794150 (not (= lambda!379643 lambda!379560))))

(assert (=> bs!1794152 (not (= lambda!379643 lambda!379506))))

(declare-fun bs!1794153 () Bool)

(assert (= bs!1794153 (and b!6749978 d!2119796)))

(assert (=> bs!1794153 (not (= lambda!379643 lambda!379572))))

(assert (=> bs!1794152 (= (and (= (reg!16910 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33675 r!7292) r!7292)) (= lambda!379643 lambda!379507))))

(declare-fun bs!1794154 () Bool)

(assert (= bs!1794154 (and b!6749978 b!6748876)))

(assert (=> bs!1794154 (not (= lambda!379643 lambda!379582))))

(declare-fun bs!1794155 () Bool)

(assert (= bs!1794155 (and b!6749978 b!6748906)))

(assert (=> bs!1794155 (not (= lambda!379643 lambda!379585))))

(assert (=> bs!1794147 (not (= lambda!379643 lambda!379639))))

(assert (=> b!6749978 true))

(assert (=> b!6749978 true))

(declare-fun bs!1794156 () Bool)

(declare-fun b!6749988 () Bool)

(assert (= bs!1794156 (and b!6749988 b!6749978)))

(declare-fun lambda!379644 () Int)

(assert (=> bs!1794156 (not (= lambda!379644 lambda!379643))))

(declare-fun bs!1794157 () Bool)

(assert (= bs!1794157 (and b!6749988 d!2120236)))

(assert (=> bs!1794157 (not (= lambda!379644 lambda!379640))))

(declare-fun bs!1794158 () Bool)

(assert (= bs!1794158 (and b!6749988 d!2119742)))

(assert (=> bs!1794158 (= (and (= (regOne!33674 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33674 (regTwo!33675 r!7292)) r!7292)) (= lambda!379644 lambda!379555))))

(declare-fun bs!1794159 () Bool)

(assert (= bs!1794159 (and b!6749988 b!6748896)))

(assert (=> bs!1794159 (not (= lambda!379644 lambda!379584))))

(declare-fun bs!1794160 () Bool)

(assert (= bs!1794160 (and b!6749988 d!2119756)))

(assert (=> bs!1794160 (not (= lambda!379644 lambda!379563))))

(assert (=> bs!1794158 (not (= lambda!379644 lambda!379553))))

(declare-fun bs!1794161 () Bool)

(assert (= bs!1794161 (and b!6749988 b!6748866)))

(assert (=> bs!1794161 (not (= lambda!379644 lambda!379581))))

(declare-fun bs!1794162 () Bool)

(assert (= bs!1794162 (and b!6749988 b!6748161)))

(assert (=> bs!1794162 (= (and (= (regOne!33674 (regTwo!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33674 (regTwo!33675 r!7292)) r!7292)) (= lambda!379644 lambda!379508))))

(assert (=> bs!1794160 (not (= lambda!379644 lambda!379560))))

(assert (=> bs!1794162 (not (= lambda!379644 lambda!379506))))

(declare-fun bs!1794163 () Bool)

(assert (= bs!1794163 (and b!6749988 d!2119796)))

(assert (=> bs!1794163 (not (= lambda!379644 lambda!379572))))

(assert (=> bs!1794162 (not (= lambda!379644 lambda!379507))))

(declare-fun bs!1794164 () Bool)

(assert (= bs!1794164 (and b!6749988 b!6748876)))

(assert (=> bs!1794164 (= (and (= (regOne!33674 (regTwo!33675 r!7292)) (regOne!33674 r!7292)) (= (regTwo!33674 (regTwo!33675 r!7292)) (regTwo!33674 r!7292))) (= lambda!379644 lambda!379582))))

(declare-fun bs!1794165 () Bool)

(assert (= bs!1794165 (and b!6749988 b!6748906)))

(assert (=> bs!1794165 (= (and (= (regOne!33674 (regTwo!33675 r!7292)) (regOne!33674 lt!2440700)) (= (regTwo!33674 (regTwo!33675 r!7292)) (regTwo!33674 lt!2440700))) (= lambda!379644 lambda!379585))))

(assert (=> bs!1794157 (not (= lambda!379644 lambda!379639))))

(assert (=> b!6749988 true))

(assert (=> b!6749988 true))

(declare-fun e!4076611 () Bool)

(declare-fun call!610462 () Bool)

(assert (=> b!6749978 (= e!4076611 call!610462)))

(declare-fun b!6749979 () Bool)

(declare-fun res!2761036 () Bool)

(assert (=> b!6749979 (=> res!2761036 e!4076611)))

(declare-fun call!610463 () Bool)

(assert (=> b!6749979 (= res!2761036 call!610463)))

(declare-fun e!4076605 () Bool)

(assert (=> b!6749979 (= e!4076605 e!4076611)))

(declare-fun b!6749980 () Bool)

(declare-fun e!4076608 () Bool)

(assert (=> b!6749980 (= e!4076608 call!610463)))

(declare-fun b!6749981 () Bool)

(declare-fun e!4076606 () Bool)

(assert (=> b!6749981 (= e!4076606 (= s!2326 (Cons!65919 (c!1252033 (regTwo!33675 r!7292)) Nil!65919)))))

(declare-fun b!6749982 () Bool)

(declare-fun e!4076609 () Bool)

(assert (=> b!6749982 (= e!4076609 e!4076605)))

(declare-fun c!1252523 () Bool)

(assert (=> b!6749982 (= c!1252523 ((_ is Star!16581) (regTwo!33675 r!7292)))))

(declare-fun b!6749983 () Bool)

(declare-fun e!4076607 () Bool)

(assert (=> b!6749983 (= e!4076607 (matchRSpec!3682 (regTwo!33675 (regTwo!33675 r!7292)) s!2326))))

(declare-fun b!6749984 () Bool)

(declare-fun c!1252524 () Bool)

(assert (=> b!6749984 (= c!1252524 ((_ is Union!16581) (regTwo!33675 r!7292)))))

(assert (=> b!6749984 (= e!4076606 e!4076609)))

(declare-fun bm!610457 () Bool)

(assert (=> bm!610457 (= call!610463 (isEmpty!38269 s!2326))))

(declare-fun b!6749985 () Bool)

(declare-fun e!4076610 () Bool)

(assert (=> b!6749985 (= e!4076608 e!4076610)))

(declare-fun res!2761037 () Bool)

(assert (=> b!6749985 (= res!2761037 (not ((_ is EmptyLang!16581) (regTwo!33675 r!7292))))))

(assert (=> b!6749985 (=> (not res!2761037) (not e!4076610))))

(declare-fun b!6749986 () Bool)

(assert (=> b!6749986 (= e!4076609 e!4076607)))

(declare-fun res!2761038 () Bool)

(assert (=> b!6749986 (= res!2761038 (matchRSpec!3682 (regOne!33675 (regTwo!33675 r!7292)) s!2326))))

(assert (=> b!6749986 (=> res!2761038 e!4076607)))

(declare-fun d!2120314 () Bool)

(declare-fun c!1252525 () Bool)

(assert (=> d!2120314 (= c!1252525 ((_ is EmptyExpr!16581) (regTwo!33675 r!7292)))))

(assert (=> d!2120314 (= (matchRSpec!3682 (regTwo!33675 r!7292) s!2326) e!4076608)))

(declare-fun bm!610458 () Bool)

(assert (=> bm!610458 (= call!610462 (Exists!3649 (ite c!1252523 lambda!379643 lambda!379644)))))

(declare-fun b!6749987 () Bool)

(declare-fun c!1252526 () Bool)

(assert (=> b!6749987 (= c!1252526 ((_ is ElementMatch!16581) (regTwo!33675 r!7292)))))

(assert (=> b!6749987 (= e!4076610 e!4076606)))

(assert (=> b!6749988 (= e!4076605 call!610462)))

(assert (= (and d!2120314 c!1252525) b!6749980))

(assert (= (and d!2120314 (not c!1252525)) b!6749985))

(assert (= (and b!6749985 res!2761037) b!6749987))

(assert (= (and b!6749987 c!1252526) b!6749981))

(assert (= (and b!6749987 (not c!1252526)) b!6749984))

(assert (= (and b!6749984 c!1252524) b!6749986))

(assert (= (and b!6749984 (not c!1252524)) b!6749982))

(assert (= (and b!6749986 (not res!2761038)) b!6749983))

(assert (= (and b!6749982 c!1252523) b!6749979))

(assert (= (and b!6749982 (not c!1252523)) b!6749988))

(assert (= (and b!6749979 (not res!2761036)) b!6749978))

(assert (= (or b!6749978 b!6749988) bm!610458))

(assert (= (or b!6749980 b!6749979) bm!610457))

(declare-fun m!7504398 () Bool)

(assert (=> b!6749983 m!7504398))

(assert (=> bm!610457 m!7502866))

(declare-fun m!7504400 () Bool)

(assert (=> b!6749986 m!7504400))

(declare-fun m!7504402 () Bool)

(assert (=> bm!610458 m!7504402))

(assert (=> b!6748871 d!2120314))

(assert (=> bm!610268 d!2119766))

(declare-fun d!2120316 () Bool)

(assert (=> d!2120316 (= (nullable!6566 (h!72366 (exprs!6465 (h!72368 zl!343)))) (nullableFct!2474 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun bs!1794166 () Bool)

(assert (= bs!1794166 d!2120316))

(declare-fun m!7504404 () Bool)

(assert (=> bs!1794166 m!7504404))

(assert (=> b!6748895 d!2120316))

(declare-fun d!2120318 () Bool)

(assert (=> d!2120318 (= (isEmpty!38271 (tail!12669 (unfocusZipperList!2002 zl!343))) ((_ is Nil!65918) (tail!12669 (unfocusZipperList!2002 zl!343))))))

(assert (=> b!6748990 d!2120318))

(declare-fun d!2120320 () Bool)

(assert (=> d!2120320 (= (tail!12669 (unfocusZipperList!2002 zl!343)) (t!379743 (unfocusZipperList!2002 zl!343)))))

(assert (=> b!6748990 d!2120320))

(declare-fun d!2120322 () Bool)

(assert (=> d!2120322 (= (nullable!6566 (h!72366 (exprs!6465 lt!2440699))) (nullableFct!2474 (h!72366 (exprs!6465 lt!2440699))))))

(declare-fun bs!1794167 () Bool)

(assert (= bs!1794167 d!2120322))

(declare-fun m!7504406 () Bool)

(assert (=> bs!1794167 m!7504406))

(assert (=> b!6748833 d!2120322))

(assert (=> d!2119852 d!2119848))

(declare-fun d!2120324 () Bool)

(assert (=> d!2120324 (= (flatMap!2062 z!1189 lambda!379509) (dynLambda!26300 lambda!379509 (h!72368 zl!343)))))

(assert (=> d!2120324 true))

(declare-fun _$13!4108 () Unit!159853)

(assert (=> d!2120324 (= (choose!50346 z!1189 (h!72368 zl!343) lambda!379509) _$13!4108)))

(declare-fun b_lambda!254219 () Bool)

(assert (=> (not b_lambda!254219) (not d!2120324)))

(declare-fun bs!1794168 () Bool)

(assert (= bs!1794168 d!2120324))

(assert (=> bs!1794168 m!7502844))

(assert (=> bs!1794168 m!7503420))

(assert (=> d!2119852 d!2120324))

(declare-fun d!2120326 () Bool)

(assert (=> d!2120326 (= ($colon$colon!2395 (exprs!6465 lt!2440713) (ite (or c!1252208 c!1252204) (regTwo!33674 (reg!16910 r!7292)) (reg!16910 r!7292))) (Cons!65918 (ite (or c!1252208 c!1252204) (regTwo!33674 (reg!16910 r!7292)) (reg!16910 r!7292)) (exprs!6465 lt!2440713)))))

(assert (=> bm!610251 d!2120326))

(declare-fun d!2120328 () Bool)

(assert (=> d!2120328 (= (isEmpty!38271 (tail!12669 (exprs!6465 (h!72368 zl!343)))) ((_ is Nil!65918) (tail!12669 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> b!6748502 d!2120328))

(declare-fun d!2120330 () Bool)

(assert (=> d!2120330 (= (tail!12669 (exprs!6465 (h!72368 zl!343))) (t!379743 (exprs!6465 (h!72368 zl!343))))))

(assert (=> b!6748502 d!2120330))

(declare-fun b!6749989 () Bool)

(declare-fun e!4076618 () Bool)

(declare-fun lt!2440878 () Bool)

(declare-fun call!610464 () Bool)

(assert (=> b!6749989 (= e!4076618 (= lt!2440878 call!610464))))

(declare-fun b!6749990 () Bool)

(declare-fun res!2761042 () Bool)

(declare-fun e!4076615 () Bool)

(assert (=> b!6749990 (=> (not res!2761042) (not e!4076615))))

(assert (=> b!6749990 (= res!2761042 (not call!610464))))

(declare-fun b!6749991 () Bool)

(declare-fun res!2761039 () Bool)

(declare-fun e!4076613 () Bool)

(assert (=> b!6749991 (=> res!2761039 e!4076613)))

(assert (=> b!6749991 (= res!2761039 (not (isEmpty!38269 (tail!12671 (tail!12671 s!2326)))))))

(declare-fun b!6749992 () Bool)

(declare-fun e!4076614 () Bool)

(assert (=> b!6749992 (= e!4076614 (matchR!8764 (derivativeStep!5251 (derivativeStep!5251 r!7292 (head!13586 s!2326)) (head!13586 (tail!12671 s!2326))) (tail!12671 (tail!12671 s!2326))))))

(declare-fun b!6749993 () Bool)

(declare-fun e!4076612 () Bool)

(assert (=> b!6749993 (= e!4076612 e!4076613)))

(declare-fun res!2761041 () Bool)

(assert (=> b!6749993 (=> res!2761041 e!4076613)))

(assert (=> b!6749993 (= res!2761041 call!610464)))

(declare-fun d!2120332 () Bool)

(assert (=> d!2120332 e!4076618))

(declare-fun c!1252528 () Bool)

(assert (=> d!2120332 (= c!1252528 ((_ is EmptyExpr!16581) (derivativeStep!5251 r!7292 (head!13586 s!2326))))))

(assert (=> d!2120332 (= lt!2440878 e!4076614)))

(declare-fun c!1252529 () Bool)

(assert (=> d!2120332 (= c!1252529 (isEmpty!38269 (tail!12671 s!2326)))))

(assert (=> d!2120332 (validRegex!8317 (derivativeStep!5251 r!7292 (head!13586 s!2326)))))

(assert (=> d!2120332 (= (matchR!8764 (derivativeStep!5251 r!7292 (head!13586 s!2326)) (tail!12671 s!2326)) lt!2440878)))

(declare-fun b!6749994 () Bool)

(assert (=> b!6749994 (= e!4076613 (not (= (head!13586 (tail!12671 s!2326)) (c!1252033 (derivativeStep!5251 r!7292 (head!13586 s!2326))))))))

(declare-fun b!6749995 () Bool)

(declare-fun e!4076616 () Bool)

(assert (=> b!6749995 (= e!4076618 e!4076616)))

(declare-fun c!1252527 () Bool)

(assert (=> b!6749995 (= c!1252527 ((_ is EmptyLang!16581) (derivativeStep!5251 r!7292 (head!13586 s!2326))))))

(declare-fun b!6749996 () Bool)

(assert (=> b!6749996 (= e!4076615 (= (head!13586 (tail!12671 s!2326)) (c!1252033 (derivativeStep!5251 r!7292 (head!13586 s!2326)))))))

(declare-fun bm!610459 () Bool)

(assert (=> bm!610459 (= call!610464 (isEmpty!38269 (tail!12671 s!2326)))))

(declare-fun b!6749997 () Bool)

(declare-fun res!2761043 () Bool)

(declare-fun e!4076617 () Bool)

(assert (=> b!6749997 (=> res!2761043 e!4076617)))

(assert (=> b!6749997 (= res!2761043 (not ((_ is ElementMatch!16581) (derivativeStep!5251 r!7292 (head!13586 s!2326)))))))

(assert (=> b!6749997 (= e!4076616 e!4076617)))

(declare-fun b!6749998 () Bool)

(declare-fun res!2761044 () Bool)

(assert (=> b!6749998 (=> res!2761044 e!4076617)))

(assert (=> b!6749998 (= res!2761044 e!4076615)))

(declare-fun res!2761040 () Bool)

(assert (=> b!6749998 (=> (not res!2761040) (not e!4076615))))

(assert (=> b!6749998 (= res!2761040 lt!2440878)))

(declare-fun b!6749999 () Bool)

(assert (=> b!6749999 (= e!4076616 (not lt!2440878))))

(declare-fun b!6750000 () Bool)

(declare-fun res!2761046 () Bool)

(assert (=> b!6750000 (=> (not res!2761046) (not e!4076615))))

(assert (=> b!6750000 (= res!2761046 (isEmpty!38269 (tail!12671 (tail!12671 s!2326))))))

(declare-fun b!6750001 () Bool)

(assert (=> b!6750001 (= e!4076614 (nullable!6566 (derivativeStep!5251 r!7292 (head!13586 s!2326))))))

(declare-fun b!6750002 () Bool)

(assert (=> b!6750002 (= e!4076617 e!4076612)))

(declare-fun res!2761045 () Bool)

(assert (=> b!6750002 (=> (not res!2761045) (not e!4076612))))

(assert (=> b!6750002 (= res!2761045 (not lt!2440878))))

(assert (= (and d!2120332 c!1252529) b!6750001))

(assert (= (and d!2120332 (not c!1252529)) b!6749992))

(assert (= (and d!2120332 c!1252528) b!6749989))

(assert (= (and d!2120332 (not c!1252528)) b!6749995))

(assert (= (and b!6749995 c!1252527) b!6749999))

(assert (= (and b!6749995 (not c!1252527)) b!6749997))

(assert (= (and b!6749997 (not res!2761043)) b!6749998))

(assert (= (and b!6749998 res!2761040) b!6749990))

(assert (= (and b!6749990 res!2761042) b!6750000))

(assert (= (and b!6750000 res!2761046) b!6749996))

(assert (= (and b!6749998 (not res!2761044)) b!6750002))

(assert (= (and b!6750002 res!2761045) b!6749993))

(assert (= (and b!6749993 (not res!2761041)) b!6749991))

(assert (= (and b!6749991 (not res!2761039)) b!6749994))

(assert (= (or b!6749989 b!6749990 b!6749993) bm!610459))

(assert (=> bm!610459 m!7503402))

(assert (=> bm!610459 m!7503406))

(assert (=> b!6749992 m!7503402))

(assert (=> b!6749992 m!7504144))

(assert (=> b!6749992 m!7503400))

(assert (=> b!6749992 m!7504144))

(declare-fun m!7504408 () Bool)

(assert (=> b!6749992 m!7504408))

(assert (=> b!6749992 m!7503402))

(assert (=> b!6749992 m!7504148))

(assert (=> b!6749992 m!7504408))

(assert (=> b!6749992 m!7504148))

(declare-fun m!7504410 () Bool)

(assert (=> b!6749992 m!7504410))

(assert (=> b!6750000 m!7503402))

(assert (=> b!6750000 m!7504148))

(assert (=> b!6750000 m!7504148))

(assert (=> b!6750000 m!7504152))

(assert (=> d!2120332 m!7503402))

(assert (=> d!2120332 m!7503406))

(assert (=> d!2120332 m!7503400))

(declare-fun m!7504412 () Bool)

(assert (=> d!2120332 m!7504412))

(assert (=> b!6749991 m!7503402))

(assert (=> b!6749991 m!7504148))

(assert (=> b!6749991 m!7504148))

(assert (=> b!6749991 m!7504152))

(assert (=> b!6750001 m!7503400))

(declare-fun m!7504414 () Bool)

(assert (=> b!6750001 m!7504414))

(assert (=> b!6749996 m!7503402))

(assert (=> b!6749996 m!7504144))

(assert (=> b!6749994 m!7503402))

(assert (=> b!6749994 m!7504144))

(assert (=> b!6748880 d!2120332))

(declare-fun c!1252534 () Bool)

(declare-fun c!1252530 () Bool)

(declare-fun bm!610460 () Bool)

(declare-fun call!610465 () Regex!16581)

(assert (=> bm!610460 (= call!610465 (derivativeStep!5251 (ite c!1252534 (regOne!33675 r!7292) (ite c!1252530 (regTwo!33674 r!7292) (regOne!33674 r!7292))) (head!13586 s!2326)))))

(declare-fun b!6750003 () Bool)

(assert (=> b!6750003 (= c!1252530 (nullable!6566 (regOne!33674 r!7292)))))

(declare-fun e!4076623 () Regex!16581)

(declare-fun e!4076621 () Regex!16581)

(assert (=> b!6750003 (= e!4076623 e!4076621)))

(declare-fun b!6750004 () Bool)

(declare-fun e!4076622 () Regex!16581)

(assert (=> b!6750004 (= e!4076622 e!4076623)))

(declare-fun c!1252532 () Bool)

(assert (=> b!6750004 (= c!1252532 ((_ is Star!16581) r!7292))))

(declare-fun b!6750005 () Bool)

(declare-fun call!610468 () Regex!16581)

(assert (=> b!6750005 (= e!4076623 (Concat!25426 call!610468 r!7292))))

(declare-fun call!610467 () Regex!16581)

(declare-fun bm!610461 () Bool)

(assert (=> bm!610461 (= call!610467 (derivativeStep!5251 (ite c!1252534 (regTwo!33675 r!7292) (ite c!1252532 (reg!16910 r!7292) (regOne!33674 r!7292))) (head!13586 s!2326)))))

(declare-fun b!6750007 () Bool)

(declare-fun e!4076619 () Regex!16581)

(assert (=> b!6750007 (= e!4076619 (ite (= (head!13586 s!2326) (c!1252033 r!7292)) EmptyExpr!16581 EmptyLang!16581))))

(declare-fun b!6750008 () Bool)

(declare-fun e!4076620 () Regex!16581)

(assert (=> b!6750008 (= e!4076620 EmptyLang!16581)))

(declare-fun b!6750009 () Bool)

(assert (=> b!6750009 (= c!1252534 ((_ is Union!16581) r!7292))))

(assert (=> b!6750009 (= e!4076619 e!4076622)))

(declare-fun b!6750010 () Bool)

(assert (=> b!6750010 (= e!4076622 (Union!16581 call!610465 call!610467))))

(declare-fun bm!610462 () Bool)

(assert (=> bm!610462 (= call!610468 call!610467)))

(declare-fun bm!610463 () Bool)

(declare-fun call!610466 () Regex!16581)

(assert (=> bm!610463 (= call!610466 call!610465)))

(declare-fun b!6750006 () Bool)

(assert (=> b!6750006 (= e!4076621 (Union!16581 (Concat!25426 call!610468 (regTwo!33674 r!7292)) call!610466))))

(declare-fun d!2120334 () Bool)

(declare-fun lt!2440879 () Regex!16581)

(assert (=> d!2120334 (validRegex!8317 lt!2440879)))

(assert (=> d!2120334 (= lt!2440879 e!4076620)))

(declare-fun c!1252531 () Bool)

(assert (=> d!2120334 (= c!1252531 (or ((_ is EmptyExpr!16581) r!7292) ((_ is EmptyLang!16581) r!7292)))))

(assert (=> d!2120334 (validRegex!8317 r!7292)))

(assert (=> d!2120334 (= (derivativeStep!5251 r!7292 (head!13586 s!2326)) lt!2440879)))

(declare-fun b!6750011 () Bool)

(assert (=> b!6750011 (= e!4076620 e!4076619)))

(declare-fun c!1252533 () Bool)

(assert (=> b!6750011 (= c!1252533 ((_ is ElementMatch!16581) r!7292))))

(declare-fun b!6750012 () Bool)

(assert (=> b!6750012 (= e!4076621 (Union!16581 (Concat!25426 call!610466 (regTwo!33674 r!7292)) EmptyLang!16581))))

(assert (= (and d!2120334 c!1252531) b!6750008))

(assert (= (and d!2120334 (not c!1252531)) b!6750011))

(assert (= (and b!6750011 c!1252533) b!6750007))

(assert (= (and b!6750011 (not c!1252533)) b!6750009))

(assert (= (and b!6750009 c!1252534) b!6750010))

(assert (= (and b!6750009 (not c!1252534)) b!6750004))

(assert (= (and b!6750004 c!1252532) b!6750005))

(assert (= (and b!6750004 (not c!1252532)) b!6750003))

(assert (= (and b!6750003 c!1252530) b!6750006))

(assert (= (and b!6750003 (not c!1252530)) b!6750012))

(assert (= (or b!6750006 b!6750012) bm!610463))

(assert (= (or b!6750005 b!6750006) bm!610462))

(assert (= (or b!6750010 bm!610462) bm!610461))

(assert (= (or b!6750010 bm!610463) bm!610460))

(assert (=> bm!610460 m!7503398))

(declare-fun m!7504416 () Bool)

(assert (=> bm!610460 m!7504416))

(assert (=> b!6750003 m!7503040))

(assert (=> bm!610461 m!7503398))

(declare-fun m!7504418 () Bool)

(assert (=> bm!610461 m!7504418))

(declare-fun m!7504420 () Bool)

(assert (=> d!2120334 m!7504420))

(assert (=> d!2120334 m!7502880))

(assert (=> b!6748880 d!2120334))

(assert (=> b!6748880 d!2120186))

(assert (=> b!6748880 d!2120194))

(declare-fun bs!1794169 () Bool)

(declare-fun b!6750013 () Bool)

(assert (= bs!1794169 (and b!6750013 b!6749978)))

(declare-fun lambda!379645 () Int)

(assert (=> bs!1794169 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 (regTwo!33675 r!7292))) (= (regTwo!33675 lt!2440700) (regTwo!33675 r!7292))) (= lambda!379645 lambda!379643))))

(declare-fun bs!1794170 () Bool)

(assert (= bs!1794170 (and b!6750013 b!6749988)))

(assert (=> bs!1794170 (not (= lambda!379645 lambda!379644))))

(declare-fun bs!1794171 () Bool)

(assert (= bs!1794171 (and b!6750013 d!2120236)))

(assert (=> bs!1794171 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33675 lt!2440700) (Star!16581 (reg!16910 r!7292)))) (= lambda!379645 lambda!379640))))

(declare-fun bs!1794172 () Bool)

(assert (= bs!1794172 (and b!6750013 d!2119742)))

(assert (=> bs!1794172 (not (= lambda!379645 lambda!379555))))

(declare-fun bs!1794173 () Bool)

(assert (= bs!1794173 (and b!6750013 b!6748896)))

(assert (=> bs!1794173 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 lt!2440700)) (= (regTwo!33675 lt!2440700) lt!2440700)) (= lambda!379645 lambda!379584))))

(declare-fun bs!1794174 () Bool)

(assert (= bs!1794174 (and b!6750013 d!2119756)))

(assert (=> bs!1794174 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33675 lt!2440700) (Star!16581 (reg!16910 r!7292)))) (= lambda!379645 lambda!379563))))

(assert (=> bs!1794172 (not (= lambda!379645 lambda!379553))))

(declare-fun bs!1794175 () Bool)

(assert (= bs!1794175 (and b!6750013 b!6748866)))

(assert (=> bs!1794175 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33675 lt!2440700) r!7292)) (= lambda!379645 lambda!379581))))

(declare-fun bs!1794176 () Bool)

(assert (= bs!1794176 (and b!6750013 b!6748161)))

(assert (=> bs!1794176 (not (= lambda!379645 lambda!379508))))

(assert (=> bs!1794174 (not (= lambda!379645 lambda!379560))))

(assert (=> bs!1794176 (not (= lambda!379645 lambda!379506))))

(declare-fun bs!1794177 () Bool)

(assert (= bs!1794177 (and b!6750013 d!2119796)))

(assert (=> bs!1794177 (not (= lambda!379645 lambda!379572))))

(assert (=> bs!1794176 (= (and (= (reg!16910 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33675 lt!2440700) r!7292)) (= lambda!379645 lambda!379507))))

(declare-fun bs!1794178 () Bool)

(assert (= bs!1794178 (and b!6750013 b!6748876)))

(assert (=> bs!1794178 (not (= lambda!379645 lambda!379582))))

(declare-fun bs!1794179 () Bool)

(assert (= bs!1794179 (and b!6750013 b!6748906)))

(assert (=> bs!1794179 (not (= lambda!379645 lambda!379585))))

(assert (=> bs!1794171 (not (= lambda!379645 lambda!379639))))

(assert (=> b!6750013 true))

(assert (=> b!6750013 true))

(declare-fun bs!1794180 () Bool)

(declare-fun b!6750023 () Bool)

(assert (= bs!1794180 (and b!6750023 b!6749978)))

(declare-fun lambda!379646 () Int)

(assert (=> bs!1794180 (not (= lambda!379646 lambda!379643))))

(declare-fun bs!1794181 () Bool)

(assert (= bs!1794181 (and b!6750023 b!6749988)))

(assert (=> bs!1794181 (= (and (= (regOne!33674 (regTwo!33675 lt!2440700)) (regOne!33674 (regTwo!33675 r!7292))) (= (regTwo!33674 (regTwo!33675 lt!2440700)) (regTwo!33674 (regTwo!33675 r!7292)))) (= lambda!379646 lambda!379644))))

(declare-fun bs!1794182 () Bool)

(assert (= bs!1794182 (and b!6750023 d!2120236)))

(assert (=> bs!1794182 (not (= lambda!379646 lambda!379640))))

(declare-fun bs!1794183 () Bool)

(assert (= bs!1794183 (and b!6750023 d!2119742)))

(assert (=> bs!1794183 (= (and (= (regOne!33674 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33674 (regTwo!33675 lt!2440700)) r!7292)) (= lambda!379646 lambda!379555))))

(declare-fun bs!1794184 () Bool)

(assert (= bs!1794184 (and b!6750023 b!6748896)))

(assert (=> bs!1794184 (not (= lambda!379646 lambda!379584))))

(declare-fun bs!1794185 () Bool)

(assert (= bs!1794185 (and b!6750023 d!2119756)))

(assert (=> bs!1794185 (not (= lambda!379646 lambda!379563))))

(assert (=> bs!1794183 (not (= lambda!379646 lambda!379553))))

(declare-fun bs!1794186 () Bool)

(assert (= bs!1794186 (and b!6750023 b!6748866)))

(assert (=> bs!1794186 (not (= lambda!379646 lambda!379581))))

(declare-fun bs!1794187 () Bool)

(assert (= bs!1794187 (and b!6750023 b!6750013)))

(assert (=> bs!1794187 (not (= lambda!379646 lambda!379645))))

(declare-fun bs!1794188 () Bool)

(assert (= bs!1794188 (and b!6750023 b!6748161)))

(assert (=> bs!1794188 (= (and (= (regOne!33674 (regTwo!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33674 (regTwo!33675 lt!2440700)) r!7292)) (= lambda!379646 lambda!379508))))

(assert (=> bs!1794185 (not (= lambda!379646 lambda!379560))))

(assert (=> bs!1794188 (not (= lambda!379646 lambda!379506))))

(declare-fun bs!1794189 () Bool)

(assert (= bs!1794189 (and b!6750023 d!2119796)))

(assert (=> bs!1794189 (not (= lambda!379646 lambda!379572))))

(assert (=> bs!1794188 (not (= lambda!379646 lambda!379507))))

(declare-fun bs!1794190 () Bool)

(assert (= bs!1794190 (and b!6750023 b!6748876)))

(assert (=> bs!1794190 (= (and (= (regOne!33674 (regTwo!33675 lt!2440700)) (regOne!33674 r!7292)) (= (regTwo!33674 (regTwo!33675 lt!2440700)) (regTwo!33674 r!7292))) (= lambda!379646 lambda!379582))))

(declare-fun bs!1794191 () Bool)

(assert (= bs!1794191 (and b!6750023 b!6748906)))

(assert (=> bs!1794191 (= (and (= (regOne!33674 (regTwo!33675 lt!2440700)) (regOne!33674 lt!2440700)) (= (regTwo!33674 (regTwo!33675 lt!2440700)) (regTwo!33674 lt!2440700))) (= lambda!379646 lambda!379585))))

(assert (=> bs!1794182 (not (= lambda!379646 lambda!379639))))

(assert (=> b!6750023 true))

(assert (=> b!6750023 true))

(declare-fun e!4076630 () Bool)

(declare-fun call!610469 () Bool)

(assert (=> b!6750013 (= e!4076630 call!610469)))

(declare-fun b!6750014 () Bool)

(declare-fun res!2761047 () Bool)

(assert (=> b!6750014 (=> res!2761047 e!4076630)))

(declare-fun call!610470 () Bool)

(assert (=> b!6750014 (= res!2761047 call!610470)))

(declare-fun e!4076624 () Bool)

(assert (=> b!6750014 (= e!4076624 e!4076630)))

(declare-fun b!6750015 () Bool)

(declare-fun e!4076627 () Bool)

(assert (=> b!6750015 (= e!4076627 call!610470)))

(declare-fun b!6750016 () Bool)

(declare-fun e!4076625 () Bool)

(assert (=> b!6750016 (= e!4076625 (= s!2326 (Cons!65919 (c!1252033 (regTwo!33675 lt!2440700)) Nil!65919)))))

(declare-fun b!6750017 () Bool)

(declare-fun e!4076628 () Bool)

(assert (=> b!6750017 (= e!4076628 e!4076624)))

(declare-fun c!1252535 () Bool)

(assert (=> b!6750017 (= c!1252535 ((_ is Star!16581) (regTwo!33675 lt!2440700)))))

(declare-fun b!6750018 () Bool)

(declare-fun e!4076626 () Bool)

(assert (=> b!6750018 (= e!4076626 (matchRSpec!3682 (regTwo!33675 (regTwo!33675 lt!2440700)) s!2326))))

(declare-fun b!6750019 () Bool)

(declare-fun c!1252536 () Bool)

(assert (=> b!6750019 (= c!1252536 ((_ is Union!16581) (regTwo!33675 lt!2440700)))))

(assert (=> b!6750019 (= e!4076625 e!4076628)))

(declare-fun bm!610464 () Bool)

(assert (=> bm!610464 (= call!610470 (isEmpty!38269 s!2326))))

(declare-fun b!6750020 () Bool)

(declare-fun e!4076629 () Bool)

(assert (=> b!6750020 (= e!4076627 e!4076629)))

(declare-fun res!2761048 () Bool)

(assert (=> b!6750020 (= res!2761048 (not ((_ is EmptyLang!16581) (regTwo!33675 lt!2440700))))))

(assert (=> b!6750020 (=> (not res!2761048) (not e!4076629))))

(declare-fun b!6750021 () Bool)

(assert (=> b!6750021 (= e!4076628 e!4076626)))

(declare-fun res!2761049 () Bool)

(assert (=> b!6750021 (= res!2761049 (matchRSpec!3682 (regOne!33675 (regTwo!33675 lt!2440700)) s!2326))))

(assert (=> b!6750021 (=> res!2761049 e!4076626)))

(declare-fun d!2120336 () Bool)

(declare-fun c!1252537 () Bool)

(assert (=> d!2120336 (= c!1252537 ((_ is EmptyExpr!16581) (regTwo!33675 lt!2440700)))))

(assert (=> d!2120336 (= (matchRSpec!3682 (regTwo!33675 lt!2440700) s!2326) e!4076627)))

(declare-fun bm!610465 () Bool)

(assert (=> bm!610465 (= call!610469 (Exists!3649 (ite c!1252535 lambda!379645 lambda!379646)))))

(declare-fun b!6750022 () Bool)

(declare-fun c!1252538 () Bool)

(assert (=> b!6750022 (= c!1252538 ((_ is ElementMatch!16581) (regTwo!33675 lt!2440700)))))

(assert (=> b!6750022 (= e!4076629 e!4076625)))

(assert (=> b!6750023 (= e!4076624 call!610469)))

(assert (= (and d!2120336 c!1252537) b!6750015))

(assert (= (and d!2120336 (not c!1252537)) b!6750020))

(assert (= (and b!6750020 res!2761048) b!6750022))

(assert (= (and b!6750022 c!1252538) b!6750016))

(assert (= (and b!6750022 (not c!1252538)) b!6750019))

(assert (= (and b!6750019 c!1252536) b!6750021))

(assert (= (and b!6750019 (not c!1252536)) b!6750017))

(assert (= (and b!6750021 (not res!2761049)) b!6750018))

(assert (= (and b!6750017 c!1252535) b!6750014))

(assert (= (and b!6750017 (not c!1252535)) b!6750023))

(assert (= (and b!6750014 (not res!2761047)) b!6750013))

(assert (= (or b!6750013 b!6750023) bm!610465))

(assert (= (or b!6750015 b!6750014) bm!610464))

(declare-fun m!7504422 () Bool)

(assert (=> b!6750018 m!7504422))

(assert (=> bm!610464 m!7502866))

(declare-fun m!7504424 () Bool)

(assert (=> b!6750021 m!7504424))

(declare-fun m!7504426 () Bool)

(assert (=> bm!610465 m!7504426))

(assert (=> b!6748901 d!2120336))

(declare-fun b!6750024 () Bool)

(declare-fun e!4076633 () Bool)

(declare-fun e!4076631 () Bool)

(assert (=> b!6750024 (= e!4076633 e!4076631)))

(declare-fun res!2761051 () Bool)

(assert (=> b!6750024 (= res!2761051 (not (nullable!6566 (reg!16910 lt!2440818))))))

(assert (=> b!6750024 (=> (not res!2761051) (not e!4076631))))

(declare-fun b!6750025 () Bool)

(declare-fun e!4076636 () Bool)

(declare-fun call!610471 () Bool)

(assert (=> b!6750025 (= e!4076636 call!610471)))

(declare-fun b!6750026 () Bool)

(declare-fun res!2761054 () Bool)

(assert (=> b!6750026 (=> (not res!2761054) (not e!4076636))))

(declare-fun call!610473 () Bool)

(assert (=> b!6750026 (= res!2761054 call!610473)))

(declare-fun e!4076634 () Bool)

(assert (=> b!6750026 (= e!4076634 e!4076636)))

(declare-fun d!2120338 () Bool)

(declare-fun res!2761052 () Bool)

(declare-fun e!4076637 () Bool)

(assert (=> d!2120338 (=> res!2761052 e!4076637)))

(assert (=> d!2120338 (= res!2761052 ((_ is ElementMatch!16581) lt!2440818))))

(assert (=> d!2120338 (= (validRegex!8317 lt!2440818) e!4076637)))

(declare-fun b!6750027 () Bool)

(declare-fun res!2761050 () Bool)

(declare-fun e!4076635 () Bool)

(assert (=> b!6750027 (=> res!2761050 e!4076635)))

(assert (=> b!6750027 (= res!2761050 (not ((_ is Concat!25426) lt!2440818)))))

(assert (=> b!6750027 (= e!4076634 e!4076635)))

(declare-fun b!6750028 () Bool)

(declare-fun e!4076632 () Bool)

(assert (=> b!6750028 (= e!4076632 call!610471)))

(declare-fun b!6750029 () Bool)

(declare-fun call!610472 () Bool)

(assert (=> b!6750029 (= e!4076631 call!610472)))

(declare-fun b!6750030 () Bool)

(assert (=> b!6750030 (= e!4076635 e!4076632)))

(declare-fun res!2761053 () Bool)

(assert (=> b!6750030 (=> (not res!2761053) (not e!4076632))))

(assert (=> b!6750030 (= res!2761053 call!610473)))

(declare-fun bm!610466 () Bool)

(assert (=> bm!610466 (= call!610471 call!610472)))

(declare-fun bm!610467 () Bool)

(declare-fun c!1252540 () Bool)

(assert (=> bm!610467 (= call!610473 (validRegex!8317 (ite c!1252540 (regOne!33675 lt!2440818) (regOne!33674 lt!2440818))))))

(declare-fun c!1252539 () Bool)

(declare-fun bm!610468 () Bool)

(assert (=> bm!610468 (= call!610472 (validRegex!8317 (ite c!1252539 (reg!16910 lt!2440818) (ite c!1252540 (regTwo!33675 lt!2440818) (regTwo!33674 lt!2440818)))))))

(declare-fun b!6750031 () Bool)

(assert (=> b!6750031 (= e!4076633 e!4076634)))

(assert (=> b!6750031 (= c!1252540 ((_ is Union!16581) lt!2440818))))

(declare-fun b!6750032 () Bool)

(assert (=> b!6750032 (= e!4076637 e!4076633)))

(assert (=> b!6750032 (= c!1252539 ((_ is Star!16581) lt!2440818))))

(assert (= (and d!2120338 (not res!2761052)) b!6750032))

(assert (= (and b!6750032 c!1252539) b!6750024))

(assert (= (and b!6750032 (not c!1252539)) b!6750031))

(assert (= (and b!6750024 res!2761051) b!6750029))

(assert (= (and b!6750031 c!1252540) b!6750026))

(assert (= (and b!6750031 (not c!1252540)) b!6750027))

(assert (= (and b!6750026 res!2761054) b!6750025))

(assert (= (and b!6750027 (not res!2761050)) b!6750030))

(assert (= (and b!6750030 res!2761053) b!6750028))

(assert (= (or b!6750025 b!6750028) bm!610466))

(assert (= (or b!6750026 b!6750030) bm!610467))

(assert (= (or b!6750029 bm!610466) bm!610468))

(declare-fun m!7504428 () Bool)

(assert (=> b!6750024 m!7504428))

(declare-fun m!7504430 () Bool)

(assert (=> bm!610467 m!7504430))

(declare-fun m!7504432 () Bool)

(assert (=> bm!610468 m!7504432))

(assert (=> d!2119868 d!2120338))

(declare-fun bs!1794192 () Bool)

(declare-fun d!2120340 () Bool)

(assert (= bs!1794192 (and d!2120340 d!2119732)))

(declare-fun lambda!379647 () Int)

(assert (=> bs!1794192 (= lambda!379647 lambda!379537)))

(declare-fun bs!1794193 () Bool)

(assert (= bs!1794193 (and d!2120340 d!2119862)))

(assert (=> bs!1794193 (= lambda!379647 lambda!379586)))

(declare-fun bs!1794194 () Bool)

(assert (= bs!1794194 (and d!2120340 d!2119814)))

(assert (=> bs!1794194 (= lambda!379647 lambda!379575)))

(declare-fun bs!1794195 () Bool)

(assert (= bs!1794195 (and d!2120340 d!2119876)))

(assert (=> bs!1794195 (= lambda!379647 lambda!379592)))

(declare-fun bs!1794196 () Bool)

(assert (= bs!1794196 (and d!2120340 d!2119874)))

(assert (=> bs!1794196 (= lambda!379647 lambda!379589)))

(declare-fun bs!1794197 () Bool)

(assert (= bs!1794197 (and d!2120340 d!2120206)))

(assert (=> bs!1794197 (= lambda!379647 lambda!379631)))

(declare-fun bs!1794198 () Bool)

(assert (= bs!1794198 (and d!2120340 d!2119854)))

(assert (=> bs!1794198 (= lambda!379647 lambda!379583)))

(declare-fun bs!1794199 () Bool)

(assert (= bs!1794199 (and d!2120340 d!2120256)))

(assert (=> bs!1794199 (= lambda!379647 lambda!379641)))

(declare-fun b!6750033 () Bool)

(declare-fun e!4076639 () Bool)

(declare-fun lt!2440880 () Regex!16581)

(assert (=> b!6750033 (= e!4076639 (isEmptyLang!1953 lt!2440880))))

(declare-fun b!6750034 () Bool)

(declare-fun e!4076643 () Regex!16581)

(declare-fun e!4076638 () Regex!16581)

(assert (=> b!6750034 (= e!4076643 e!4076638)))

(declare-fun c!1252544 () Bool)

(assert (=> b!6750034 (= c!1252544 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))

(declare-fun e!4076642 () Bool)

(assert (=> d!2120340 e!4076642))

(declare-fun res!2761056 () Bool)

(assert (=> d!2120340 (=> (not res!2761056) (not e!4076642))))

(assert (=> d!2120340 (= res!2761056 (validRegex!8317 lt!2440880))))

(assert (=> d!2120340 (= lt!2440880 e!4076643)))

(declare-fun c!1252542 () Bool)

(declare-fun e!4076640 () Bool)

(assert (=> d!2120340 (= c!1252542 e!4076640)))

(declare-fun res!2761055 () Bool)

(assert (=> d!2120340 (=> (not res!2761055) (not e!4076640))))

(assert (=> d!2120340 (= res!2761055 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))

(assert (=> d!2120340 (forall!15778 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920)) lambda!379647)))

(assert (=> d!2120340 (= (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))) lt!2440880)))

(declare-fun b!6750035 () Bool)

(declare-fun e!4076641 () Bool)

(assert (=> b!6750035 (= e!4076641 (isUnion!1383 lt!2440880))))

(declare-fun b!6750036 () Bool)

(assert (=> b!6750036 (= e!4076638 (Union!16581 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))) (generalisedUnion!2425 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))))

(declare-fun b!6750037 () Bool)

(assert (=> b!6750037 (= e!4076642 e!4076639)))

(declare-fun c!1252543 () Bool)

(assert (=> b!6750037 (= c!1252543 (isEmpty!38271 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))

(declare-fun b!6750038 () Bool)

(assert (=> b!6750038 (= e!4076640 (isEmpty!38271 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920)))))))

(declare-fun b!6750039 () Bool)

(assert (=> b!6750039 (= e!4076641 (= lt!2440880 (head!13584 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920)))))))

(declare-fun b!6750040 () Bool)

(assert (=> b!6750040 (= e!4076643 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920))))))

(declare-fun b!6750041 () Bool)

(assert (=> b!6750041 (= e!4076639 e!4076641)))

(declare-fun c!1252541 () Bool)

(assert (=> b!6750041 (= c!1252541 (isEmpty!38271 (tail!12669 (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920)))))))

(declare-fun b!6750042 () Bool)

(assert (=> b!6750042 (= e!4076638 EmptyLang!16581)))

(assert (= (and d!2120340 res!2761055) b!6750038))

(assert (= (and d!2120340 c!1252542) b!6750040))

(assert (= (and d!2120340 (not c!1252542)) b!6750034))

(assert (= (and b!6750034 c!1252544) b!6750036))

(assert (= (and b!6750034 (not c!1252544)) b!6750042))

(assert (= (and d!2120340 res!2761056) b!6750037))

(assert (= (and b!6750037 c!1252543) b!6750033))

(assert (= (and b!6750037 (not c!1252543)) b!6750041))

(assert (= (and b!6750041 c!1252541) b!6750039))

(assert (= (and b!6750041 (not c!1252541)) b!6750035))

(declare-fun m!7504434 () Bool)

(assert (=> b!6750038 m!7504434))

(declare-fun m!7504436 () Bool)

(assert (=> d!2120340 m!7504436))

(assert (=> d!2120340 m!7503454))

(declare-fun m!7504438 () Bool)

(assert (=> d!2120340 m!7504438))

(declare-fun m!7504440 () Bool)

(assert (=> b!6750035 m!7504440))

(declare-fun m!7504442 () Bool)

(assert (=> b!6750033 m!7504442))

(declare-fun m!7504444 () Bool)

(assert (=> b!6750036 m!7504444))

(assert (=> b!6750041 m!7503454))

(declare-fun m!7504446 () Bool)

(assert (=> b!6750041 m!7504446))

(assert (=> b!6750041 m!7504446))

(declare-fun m!7504448 () Bool)

(assert (=> b!6750041 m!7504448))

(assert (=> b!6750037 m!7503454))

(declare-fun m!7504450 () Bool)

(assert (=> b!6750037 m!7504450))

(assert (=> b!6750039 m!7503454))

(declare-fun m!7504452 () Bool)

(assert (=> b!6750039 m!7504452))

(assert (=> d!2119868 d!2120340))

(declare-fun bs!1794200 () Bool)

(declare-fun d!2120342 () Bool)

(assert (= bs!1794200 (and d!2120342 d!2120340)))

(declare-fun lambda!379648 () Int)

(assert (=> bs!1794200 (= lambda!379648 lambda!379647)))

(declare-fun bs!1794201 () Bool)

(assert (= bs!1794201 (and d!2120342 d!2119732)))

(assert (=> bs!1794201 (= lambda!379648 lambda!379537)))

(declare-fun bs!1794202 () Bool)

(assert (= bs!1794202 (and d!2120342 d!2119862)))

(assert (=> bs!1794202 (= lambda!379648 lambda!379586)))

(declare-fun bs!1794203 () Bool)

(assert (= bs!1794203 (and d!2120342 d!2119814)))

(assert (=> bs!1794203 (= lambda!379648 lambda!379575)))

(declare-fun bs!1794204 () Bool)

(assert (= bs!1794204 (and d!2120342 d!2119876)))

(assert (=> bs!1794204 (= lambda!379648 lambda!379592)))

(declare-fun bs!1794205 () Bool)

(assert (= bs!1794205 (and d!2120342 d!2119874)))

(assert (=> bs!1794205 (= lambda!379648 lambda!379589)))

(declare-fun bs!1794206 () Bool)

(assert (= bs!1794206 (and d!2120342 d!2120206)))

(assert (=> bs!1794206 (= lambda!379648 lambda!379631)))

(declare-fun bs!1794207 () Bool)

(assert (= bs!1794207 (and d!2120342 d!2119854)))

(assert (=> bs!1794207 (= lambda!379648 lambda!379583)))

(declare-fun bs!1794208 () Bool)

(assert (= bs!1794208 (and d!2120342 d!2120256)))

(assert (=> bs!1794208 (= lambda!379648 lambda!379641)))

(declare-fun lt!2440881 () List!66042)

(assert (=> d!2120342 (forall!15778 lt!2440881 lambda!379648)))

(declare-fun e!4076644 () List!66042)

(assert (=> d!2120342 (= lt!2440881 e!4076644)))

(declare-fun c!1252545 () Bool)

(assert (=> d!2120342 (= c!1252545 ((_ is Cons!65920) (Cons!65920 lt!2440701 Nil!65920)))))

(assert (=> d!2120342 (= (unfocusZipperList!2002 (Cons!65920 lt!2440701 Nil!65920)) lt!2440881)))

(declare-fun b!6750043 () Bool)

(assert (=> b!6750043 (= e!4076644 (Cons!65918 (generalisedConcat!2178 (exprs!6465 (h!72368 (Cons!65920 lt!2440701 Nil!65920)))) (unfocusZipperList!2002 (t!379745 (Cons!65920 lt!2440701 Nil!65920)))))))

(declare-fun b!6750044 () Bool)

(assert (=> b!6750044 (= e!4076644 Nil!65918)))

(assert (= (and d!2120342 c!1252545) b!6750043))

(assert (= (and d!2120342 (not c!1252545)) b!6750044))

(declare-fun m!7504454 () Bool)

(assert (=> d!2120342 m!7504454))

(declare-fun m!7504456 () Bool)

(assert (=> b!6750043 m!7504456))

(declare-fun m!7504458 () Bool)

(assert (=> b!6750043 m!7504458))

(assert (=> d!2119868 d!2120342))

(declare-fun d!2120344 () Bool)

(assert (=> d!2120344 (= (head!13586 (_1!36859 lt!2440718)) (h!72367 (_1!36859 lt!2440718)))))

(assert (=> b!6748809 d!2120344))

(declare-fun b!6750045 () Bool)

(declare-fun e!4076651 () Bool)

(declare-fun lt!2440882 () Bool)

(declare-fun call!610474 () Bool)

(assert (=> b!6750045 (= e!4076651 (= lt!2440882 call!610474))))

(declare-fun b!6750046 () Bool)

(declare-fun res!2761060 () Bool)

(declare-fun e!4076648 () Bool)

(assert (=> b!6750046 (=> (not res!2761060) (not e!4076648))))

(assert (=> b!6750046 (= res!2761060 (not call!610474))))

(declare-fun b!6750047 () Bool)

(declare-fun res!2761057 () Bool)

(declare-fun e!4076646 () Bool)

(assert (=> b!6750047 (=> res!2761057 e!4076646)))

(assert (=> b!6750047 (= res!2761057 (not (isEmpty!38269 (tail!12671 (tail!12671 (_2!36859 lt!2440718))))))))

(declare-fun b!6750048 () Bool)

(declare-fun e!4076647 () Bool)

(assert (=> b!6750048 (= e!4076647 (matchR!8764 (derivativeStep!5251 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))) (head!13586 (tail!12671 (_2!36859 lt!2440718)))) (tail!12671 (tail!12671 (_2!36859 lt!2440718)))))))

(declare-fun b!6750049 () Bool)

(declare-fun e!4076645 () Bool)

(assert (=> b!6750049 (= e!4076645 e!4076646)))

(declare-fun res!2761059 () Bool)

(assert (=> b!6750049 (=> res!2761059 e!4076646)))

(assert (=> b!6750049 (= res!2761059 call!610474)))

(declare-fun d!2120346 () Bool)

(assert (=> d!2120346 e!4076651))

(declare-fun c!1252547 () Bool)

(assert (=> d!2120346 (= c!1252547 ((_ is EmptyExpr!16581) (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718)))))))

(assert (=> d!2120346 (= lt!2440882 e!4076647)))

(declare-fun c!1252548 () Bool)

(assert (=> d!2120346 (= c!1252548 (isEmpty!38269 (tail!12671 (_2!36859 lt!2440718))))))

(assert (=> d!2120346 (validRegex!8317 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))))))

(assert (=> d!2120346 (= (matchR!8764 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))) (tail!12671 (_2!36859 lt!2440718))) lt!2440882)))

(declare-fun b!6750050 () Bool)

(assert (=> b!6750050 (= e!4076646 (not (= (head!13586 (tail!12671 (_2!36859 lt!2440718))) (c!1252033 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718)))))))))

(declare-fun b!6750051 () Bool)

(declare-fun e!4076649 () Bool)

(assert (=> b!6750051 (= e!4076651 e!4076649)))

(declare-fun c!1252546 () Bool)

(assert (=> b!6750051 (= c!1252546 ((_ is EmptyLang!16581) (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718)))))))

(declare-fun b!6750052 () Bool)

(assert (=> b!6750052 (= e!4076648 (= (head!13586 (tail!12671 (_2!36859 lt!2440718))) (c!1252033 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))))))))

(declare-fun bm!610469 () Bool)

(assert (=> bm!610469 (= call!610474 (isEmpty!38269 (tail!12671 (_2!36859 lt!2440718))))))

(declare-fun b!6750053 () Bool)

(declare-fun res!2761061 () Bool)

(declare-fun e!4076650 () Bool)

(assert (=> b!6750053 (=> res!2761061 e!4076650)))

(assert (=> b!6750053 (= res!2761061 (not ((_ is ElementMatch!16581) (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))))))))

(assert (=> b!6750053 (= e!4076649 e!4076650)))

(declare-fun b!6750054 () Bool)

(declare-fun res!2761062 () Bool)

(assert (=> b!6750054 (=> res!2761062 e!4076650)))

(assert (=> b!6750054 (= res!2761062 e!4076648)))

(declare-fun res!2761058 () Bool)

(assert (=> b!6750054 (=> (not res!2761058) (not e!4076648))))

(assert (=> b!6750054 (= res!2761058 lt!2440882)))

(declare-fun b!6750055 () Bool)

(assert (=> b!6750055 (= e!4076649 (not lt!2440882))))

(declare-fun b!6750056 () Bool)

(declare-fun res!2761064 () Bool)

(assert (=> b!6750056 (=> (not res!2761064) (not e!4076648))))

(assert (=> b!6750056 (= res!2761064 (isEmpty!38269 (tail!12671 (tail!12671 (_2!36859 lt!2440718)))))))

(declare-fun b!6750057 () Bool)

(assert (=> b!6750057 (= e!4076647 (nullable!6566 (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718)))))))

(declare-fun b!6750058 () Bool)

(assert (=> b!6750058 (= e!4076650 e!4076645)))

(declare-fun res!2761063 () Bool)

(assert (=> b!6750058 (=> (not res!2761063) (not e!4076645))))

(assert (=> b!6750058 (= res!2761063 (not lt!2440882))))

(assert (= (and d!2120346 c!1252548) b!6750057))

(assert (= (and d!2120346 (not c!1252548)) b!6750048))

(assert (= (and d!2120346 c!1252547) b!6750045))

(assert (= (and d!2120346 (not c!1252547)) b!6750051))

(assert (= (and b!6750051 c!1252546) b!6750055))

(assert (= (and b!6750051 (not c!1252546)) b!6750053))

(assert (= (and b!6750053 (not res!2761061)) b!6750054))

(assert (= (and b!6750054 res!2761058) b!6750046))

(assert (= (and b!6750046 res!2761060) b!6750056))

(assert (= (and b!6750056 res!2761064) b!6750052))

(assert (= (and b!6750054 (not res!2761062)) b!6750058))

(assert (= (and b!6750058 res!2761063) b!6750049))

(assert (= (and b!6750049 (not res!2761059)) b!6750047))

(assert (= (and b!6750047 (not res!2761057)) b!6750050))

(assert (= (or b!6750045 b!6750046 b!6750049) bm!610469))

(assert (=> bm!610469 m!7503468))

(assert (=> bm!610469 m!7503472))

(assert (=> b!6750048 m!7503468))

(declare-fun m!7504460 () Bool)

(assert (=> b!6750048 m!7504460))

(assert (=> b!6750048 m!7503466))

(assert (=> b!6750048 m!7504460))

(declare-fun m!7504462 () Bool)

(assert (=> b!6750048 m!7504462))

(assert (=> b!6750048 m!7503468))

(declare-fun m!7504464 () Bool)

(assert (=> b!6750048 m!7504464))

(assert (=> b!6750048 m!7504462))

(assert (=> b!6750048 m!7504464))

(declare-fun m!7504466 () Bool)

(assert (=> b!6750048 m!7504466))

(assert (=> b!6750056 m!7503468))

(assert (=> b!6750056 m!7504464))

(assert (=> b!6750056 m!7504464))

(declare-fun m!7504468 () Bool)

(assert (=> b!6750056 m!7504468))

(assert (=> d!2120346 m!7503468))

(assert (=> d!2120346 m!7503472))

(assert (=> d!2120346 m!7503466))

(declare-fun m!7504470 () Bool)

(assert (=> d!2120346 m!7504470))

(assert (=> b!6750047 m!7503468))

(assert (=> b!6750047 m!7504464))

(assert (=> b!6750047 m!7504464))

(assert (=> b!6750047 m!7504468))

(assert (=> b!6750057 m!7503466))

(declare-fun m!7504472 () Bool)

(assert (=> b!6750057 m!7504472))

(assert (=> b!6750052 m!7503468))

(assert (=> b!6750052 m!7504460))

(assert (=> b!6750050 m!7503468))

(assert (=> b!6750050 m!7504460))

(assert (=> b!6748951 d!2120346))

(declare-fun c!1252549 () Bool)

(declare-fun call!610475 () Regex!16581)

(declare-fun c!1252553 () Bool)

(declare-fun bm!610470 () Bool)

(assert (=> bm!610470 (= call!610475 (derivativeStep!5251 (ite c!1252553 (regOne!33675 r!7292) (ite c!1252549 (regTwo!33674 r!7292) (regOne!33674 r!7292))) (head!13586 (_2!36859 lt!2440718))))))

(declare-fun b!6750059 () Bool)

(assert (=> b!6750059 (= c!1252549 (nullable!6566 (regOne!33674 r!7292)))))

(declare-fun e!4076656 () Regex!16581)

(declare-fun e!4076654 () Regex!16581)

(assert (=> b!6750059 (= e!4076656 e!4076654)))

(declare-fun b!6750060 () Bool)

(declare-fun e!4076655 () Regex!16581)

(assert (=> b!6750060 (= e!4076655 e!4076656)))

(declare-fun c!1252551 () Bool)

(assert (=> b!6750060 (= c!1252551 ((_ is Star!16581) r!7292))))

(declare-fun b!6750061 () Bool)

(declare-fun call!610478 () Regex!16581)

(assert (=> b!6750061 (= e!4076656 (Concat!25426 call!610478 r!7292))))

(declare-fun call!610477 () Regex!16581)

(declare-fun bm!610471 () Bool)

(assert (=> bm!610471 (= call!610477 (derivativeStep!5251 (ite c!1252553 (regTwo!33675 r!7292) (ite c!1252551 (reg!16910 r!7292) (regOne!33674 r!7292))) (head!13586 (_2!36859 lt!2440718))))))

(declare-fun b!6750063 () Bool)

(declare-fun e!4076652 () Regex!16581)

(assert (=> b!6750063 (= e!4076652 (ite (= (head!13586 (_2!36859 lt!2440718)) (c!1252033 r!7292)) EmptyExpr!16581 EmptyLang!16581))))

(declare-fun b!6750064 () Bool)

(declare-fun e!4076653 () Regex!16581)

(assert (=> b!6750064 (= e!4076653 EmptyLang!16581)))

(declare-fun b!6750065 () Bool)

(assert (=> b!6750065 (= c!1252553 ((_ is Union!16581) r!7292))))

(assert (=> b!6750065 (= e!4076652 e!4076655)))

(declare-fun b!6750066 () Bool)

(assert (=> b!6750066 (= e!4076655 (Union!16581 call!610475 call!610477))))

(declare-fun bm!610472 () Bool)

(assert (=> bm!610472 (= call!610478 call!610477)))

(declare-fun bm!610473 () Bool)

(declare-fun call!610476 () Regex!16581)

(assert (=> bm!610473 (= call!610476 call!610475)))

(declare-fun b!6750062 () Bool)

(assert (=> b!6750062 (= e!4076654 (Union!16581 (Concat!25426 call!610478 (regTwo!33674 r!7292)) call!610476))))

(declare-fun d!2120348 () Bool)

(declare-fun lt!2440883 () Regex!16581)

(assert (=> d!2120348 (validRegex!8317 lt!2440883)))

(assert (=> d!2120348 (= lt!2440883 e!4076653)))

(declare-fun c!1252550 () Bool)

(assert (=> d!2120348 (= c!1252550 (or ((_ is EmptyExpr!16581) r!7292) ((_ is EmptyLang!16581) r!7292)))))

(assert (=> d!2120348 (validRegex!8317 r!7292)))

(assert (=> d!2120348 (= (derivativeStep!5251 r!7292 (head!13586 (_2!36859 lt!2440718))) lt!2440883)))

(declare-fun b!6750067 () Bool)

(assert (=> b!6750067 (= e!4076653 e!4076652)))

(declare-fun c!1252552 () Bool)

(assert (=> b!6750067 (= c!1252552 ((_ is ElementMatch!16581) r!7292))))

(declare-fun b!6750068 () Bool)

(assert (=> b!6750068 (= e!4076654 (Union!16581 (Concat!25426 call!610476 (regTwo!33674 r!7292)) EmptyLang!16581))))

(assert (= (and d!2120348 c!1252550) b!6750064))

(assert (= (and d!2120348 (not c!1252550)) b!6750067))

(assert (= (and b!6750067 c!1252552) b!6750063))

(assert (= (and b!6750067 (not c!1252552)) b!6750065))

(assert (= (and b!6750065 c!1252553) b!6750066))

(assert (= (and b!6750065 (not c!1252553)) b!6750060))

(assert (= (and b!6750060 c!1252551) b!6750061))

(assert (= (and b!6750060 (not c!1252551)) b!6750059))

(assert (= (and b!6750059 c!1252549) b!6750062))

(assert (= (and b!6750059 (not c!1252549)) b!6750068))

(assert (= (or b!6750062 b!6750068) bm!610473))

(assert (= (or b!6750061 b!6750062) bm!610472))

(assert (= (or b!6750066 bm!610472) bm!610471))

(assert (= (or b!6750066 bm!610473) bm!610470))

(assert (=> bm!610470 m!7503464))

(declare-fun m!7504474 () Bool)

(assert (=> bm!610470 m!7504474))

(assert (=> b!6750059 m!7503040))

(assert (=> bm!610471 m!7503464))

(declare-fun m!7504476 () Bool)

(assert (=> bm!610471 m!7504476))

(declare-fun m!7504478 () Bool)

(assert (=> d!2120348 m!7504478))

(assert (=> d!2120348 m!7502880))

(assert (=> b!6748951 d!2120348))

(declare-fun d!2120350 () Bool)

(assert (=> d!2120350 (= (head!13586 (_2!36859 lt!2440718)) (h!72367 (_2!36859 lt!2440718)))))

(assert (=> b!6748951 d!2120350))

(assert (=> b!6748951 d!2120270))

(declare-fun bs!1794209 () Bool)

(declare-fun b!6750069 () Bool)

(assert (= bs!1794209 (and b!6750069 b!6750023)))

(declare-fun lambda!379649 () Int)

(assert (=> bs!1794209 (not (= lambda!379649 lambda!379646))))

(declare-fun bs!1794210 () Bool)

(assert (= bs!1794210 (and b!6750069 b!6749978)))

(assert (=> bs!1794210 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 (regTwo!33675 r!7292))) (= (regOne!33675 r!7292) (regTwo!33675 r!7292))) (= lambda!379649 lambda!379643))))

(declare-fun bs!1794211 () Bool)

(assert (= bs!1794211 (and b!6750069 b!6749988)))

(assert (=> bs!1794211 (not (= lambda!379649 lambda!379644))))

(declare-fun bs!1794212 () Bool)

(assert (= bs!1794212 (and b!6750069 d!2120236)))

(assert (=> bs!1794212 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regOne!33675 r!7292) (Star!16581 (reg!16910 r!7292)))) (= lambda!379649 lambda!379640))))

(declare-fun bs!1794213 () Bool)

(assert (= bs!1794213 (and b!6750069 d!2119742)))

(assert (=> bs!1794213 (not (= lambda!379649 lambda!379555))))

(declare-fun bs!1794214 () Bool)

(assert (= bs!1794214 (and b!6750069 b!6748896)))

(assert (=> bs!1794214 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 lt!2440700)) (= (regOne!33675 r!7292) lt!2440700)) (= lambda!379649 lambda!379584))))

(declare-fun bs!1794215 () Bool)

(assert (= bs!1794215 (and b!6750069 d!2119756)))

(assert (=> bs!1794215 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regOne!33675 r!7292) (Star!16581 (reg!16910 r!7292)))) (= lambda!379649 lambda!379563))))

(assert (=> bs!1794213 (not (= lambda!379649 lambda!379553))))

(declare-fun bs!1794216 () Bool)

(assert (= bs!1794216 (and b!6750069 b!6748866)))

(assert (=> bs!1794216 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regOne!33675 r!7292) r!7292)) (= lambda!379649 lambda!379581))))

(declare-fun bs!1794217 () Bool)

(assert (= bs!1794217 (and b!6750069 b!6750013)))

(assert (=> bs!1794217 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 (regTwo!33675 lt!2440700))) (= (regOne!33675 r!7292) (regTwo!33675 lt!2440700))) (= lambda!379649 lambda!379645))))

(declare-fun bs!1794218 () Bool)

(assert (= bs!1794218 (and b!6750069 b!6748161)))

(assert (=> bs!1794218 (not (= lambda!379649 lambda!379508))))

(assert (=> bs!1794215 (not (= lambda!379649 lambda!379560))))

(assert (=> bs!1794218 (not (= lambda!379649 lambda!379506))))

(declare-fun bs!1794219 () Bool)

(assert (= bs!1794219 (and b!6750069 d!2119796)))

(assert (=> bs!1794219 (not (= lambda!379649 lambda!379572))))

(assert (=> bs!1794218 (= (and (= (reg!16910 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regOne!33675 r!7292) r!7292)) (= lambda!379649 lambda!379507))))

(declare-fun bs!1794220 () Bool)

(assert (= bs!1794220 (and b!6750069 b!6748876)))

(assert (=> bs!1794220 (not (= lambda!379649 lambda!379582))))

(declare-fun bs!1794221 () Bool)

(assert (= bs!1794221 (and b!6750069 b!6748906)))

(assert (=> bs!1794221 (not (= lambda!379649 lambda!379585))))

(assert (=> bs!1794212 (not (= lambda!379649 lambda!379639))))

(assert (=> b!6750069 true))

(assert (=> b!6750069 true))

(declare-fun bs!1794222 () Bool)

(declare-fun b!6750079 () Bool)

(assert (= bs!1794222 (and b!6750079 b!6750023)))

(declare-fun lambda!379650 () Int)

(assert (=> bs!1794222 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (regOne!33674 (regTwo!33675 lt!2440700))) (= (regTwo!33674 (regOne!33675 r!7292)) (regTwo!33674 (regTwo!33675 lt!2440700)))) (= lambda!379650 lambda!379646))))

(declare-fun bs!1794223 () Bool)

(assert (= bs!1794223 (and b!6750079 b!6749978)))

(assert (=> bs!1794223 (not (= lambda!379650 lambda!379643))))

(declare-fun bs!1794224 () Bool)

(assert (= bs!1794224 (and b!6750079 b!6749988)))

(assert (=> bs!1794224 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (regOne!33674 (regTwo!33675 r!7292))) (= (regTwo!33674 (regOne!33675 r!7292)) (regTwo!33674 (regTwo!33675 r!7292)))) (= lambda!379650 lambda!379644))))

(declare-fun bs!1794225 () Bool)

(assert (= bs!1794225 (and b!6750079 d!2119742)))

(assert (=> bs!1794225 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33674 (regOne!33675 r!7292)) r!7292)) (= lambda!379650 lambda!379555))))

(declare-fun bs!1794226 () Bool)

(assert (= bs!1794226 (and b!6750079 b!6748896)))

(assert (=> bs!1794226 (not (= lambda!379650 lambda!379584))))

(declare-fun bs!1794227 () Bool)

(assert (= bs!1794227 (and b!6750079 d!2119756)))

(assert (=> bs!1794227 (not (= lambda!379650 lambda!379563))))

(assert (=> bs!1794225 (not (= lambda!379650 lambda!379553))))

(declare-fun bs!1794228 () Bool)

(assert (= bs!1794228 (and b!6750079 b!6748866)))

(assert (=> bs!1794228 (not (= lambda!379650 lambda!379581))))

(declare-fun bs!1794229 () Bool)

(assert (= bs!1794229 (and b!6750079 b!6750013)))

(assert (=> bs!1794229 (not (= lambda!379650 lambda!379645))))

(declare-fun bs!1794230 () Bool)

(assert (= bs!1794230 (and b!6750079 b!6748161)))

(assert (=> bs!1794230 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (reg!16910 r!7292)) (= (regTwo!33674 (regOne!33675 r!7292)) r!7292)) (= lambda!379650 lambda!379508))))

(assert (=> bs!1794227 (not (= lambda!379650 lambda!379560))))

(assert (=> bs!1794230 (not (= lambda!379650 lambda!379506))))

(declare-fun bs!1794231 () Bool)

(assert (= bs!1794231 (and b!6750079 d!2119796)))

(assert (=> bs!1794231 (not (= lambda!379650 lambda!379572))))

(declare-fun bs!1794232 () Bool)

(assert (= bs!1794232 (and b!6750079 b!6750069)))

(assert (=> bs!1794232 (not (= lambda!379650 lambda!379649))))

(declare-fun bs!1794233 () Bool)

(assert (= bs!1794233 (and b!6750079 d!2120236)))

(assert (=> bs!1794233 (not (= lambda!379650 lambda!379640))))

(assert (=> bs!1794230 (not (= lambda!379650 lambda!379507))))

(declare-fun bs!1794234 () Bool)

(assert (= bs!1794234 (and b!6750079 b!6748876)))

(assert (=> bs!1794234 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (regOne!33674 r!7292)) (= (regTwo!33674 (regOne!33675 r!7292)) (regTwo!33674 r!7292))) (= lambda!379650 lambda!379582))))

(declare-fun bs!1794235 () Bool)

(assert (= bs!1794235 (and b!6750079 b!6748906)))

(assert (=> bs!1794235 (= (and (= (regOne!33674 (regOne!33675 r!7292)) (regOne!33674 lt!2440700)) (= (regTwo!33674 (regOne!33675 r!7292)) (regTwo!33674 lt!2440700))) (= lambda!379650 lambda!379585))))

(assert (=> bs!1794233 (not (= lambda!379650 lambda!379639))))

(assert (=> b!6750079 true))

(assert (=> b!6750079 true))

(declare-fun e!4076663 () Bool)

(declare-fun call!610479 () Bool)

(assert (=> b!6750069 (= e!4076663 call!610479)))

(declare-fun b!6750070 () Bool)

(declare-fun res!2761065 () Bool)

(assert (=> b!6750070 (=> res!2761065 e!4076663)))

(declare-fun call!610480 () Bool)

(assert (=> b!6750070 (= res!2761065 call!610480)))

(declare-fun e!4076657 () Bool)

(assert (=> b!6750070 (= e!4076657 e!4076663)))

(declare-fun b!6750071 () Bool)

(declare-fun e!4076660 () Bool)

(assert (=> b!6750071 (= e!4076660 call!610480)))

(declare-fun b!6750072 () Bool)

(declare-fun e!4076658 () Bool)

(assert (=> b!6750072 (= e!4076658 (= s!2326 (Cons!65919 (c!1252033 (regOne!33675 r!7292)) Nil!65919)))))

(declare-fun b!6750073 () Bool)

(declare-fun e!4076661 () Bool)

(assert (=> b!6750073 (= e!4076661 e!4076657)))

(declare-fun c!1252554 () Bool)

(assert (=> b!6750073 (= c!1252554 ((_ is Star!16581) (regOne!33675 r!7292)))))

(declare-fun b!6750074 () Bool)

(declare-fun e!4076659 () Bool)

(assert (=> b!6750074 (= e!4076659 (matchRSpec!3682 (regTwo!33675 (regOne!33675 r!7292)) s!2326))))

(declare-fun b!6750075 () Bool)

(declare-fun c!1252555 () Bool)

(assert (=> b!6750075 (= c!1252555 ((_ is Union!16581) (regOne!33675 r!7292)))))

(assert (=> b!6750075 (= e!4076658 e!4076661)))

(declare-fun bm!610474 () Bool)

(assert (=> bm!610474 (= call!610480 (isEmpty!38269 s!2326))))

(declare-fun b!6750076 () Bool)

(declare-fun e!4076662 () Bool)

(assert (=> b!6750076 (= e!4076660 e!4076662)))

(declare-fun res!2761066 () Bool)

(assert (=> b!6750076 (= res!2761066 (not ((_ is EmptyLang!16581) (regOne!33675 r!7292))))))

(assert (=> b!6750076 (=> (not res!2761066) (not e!4076662))))

(declare-fun b!6750077 () Bool)

(assert (=> b!6750077 (= e!4076661 e!4076659)))

(declare-fun res!2761067 () Bool)

(assert (=> b!6750077 (= res!2761067 (matchRSpec!3682 (regOne!33675 (regOne!33675 r!7292)) s!2326))))

(assert (=> b!6750077 (=> res!2761067 e!4076659)))

(declare-fun d!2120352 () Bool)

(declare-fun c!1252556 () Bool)

(assert (=> d!2120352 (= c!1252556 ((_ is EmptyExpr!16581) (regOne!33675 r!7292)))))

(assert (=> d!2120352 (= (matchRSpec!3682 (regOne!33675 r!7292) s!2326) e!4076660)))

(declare-fun bm!610475 () Bool)

(assert (=> bm!610475 (= call!610479 (Exists!3649 (ite c!1252554 lambda!379649 lambda!379650)))))

(declare-fun b!6750078 () Bool)

(declare-fun c!1252557 () Bool)

(assert (=> b!6750078 (= c!1252557 ((_ is ElementMatch!16581) (regOne!33675 r!7292)))))

(assert (=> b!6750078 (= e!4076662 e!4076658)))

(assert (=> b!6750079 (= e!4076657 call!610479)))

(assert (= (and d!2120352 c!1252556) b!6750071))

(assert (= (and d!2120352 (not c!1252556)) b!6750076))

(assert (= (and b!6750076 res!2761066) b!6750078))

(assert (= (and b!6750078 c!1252557) b!6750072))

(assert (= (and b!6750078 (not c!1252557)) b!6750075))

(assert (= (and b!6750075 c!1252555) b!6750077))

(assert (= (and b!6750075 (not c!1252555)) b!6750073))

(assert (= (and b!6750077 (not res!2761067)) b!6750074))

(assert (= (and b!6750073 c!1252554) b!6750070))

(assert (= (and b!6750073 (not c!1252554)) b!6750079))

(assert (= (and b!6750070 (not res!2761065)) b!6750069))

(assert (= (or b!6750069 b!6750079) bm!610475))

(assert (= (or b!6750071 b!6750070) bm!610474))

(declare-fun m!7504480 () Bool)

(assert (=> b!6750074 m!7504480))

(assert (=> bm!610474 m!7502866))

(declare-fun m!7504482 () Bool)

(assert (=> b!6750077 m!7504482))

(declare-fun m!7504484 () Bool)

(assert (=> bm!610475 m!7504484))

(assert (=> b!6748874 d!2120352))

(assert (=> b!6748918 d!2120258))

(assert (=> b!6748918 d!2120194))

(declare-fun d!2120354 () Bool)

(assert (=> d!2120354 (= (nullable!6566 (reg!16910 r!7292)) (nullableFct!2474 (reg!16910 r!7292)))))

(declare-fun bs!1794236 () Bool)

(assert (= bs!1794236 d!2120354))

(declare-fun m!7504486 () Bool)

(assert (=> bs!1794236 m!7504486))

(assert (=> b!6748816 d!2120354))

(assert (=> b!6748955 d!2120350))

(declare-fun d!2120356 () Bool)

(assert (=> d!2120356 (= (flatMap!2062 lt!2440717 lambda!379593) (choose!50344 lt!2440717 lambda!379593))))

(declare-fun bs!1794237 () Bool)

(assert (= bs!1794237 d!2120356))

(declare-fun m!7504488 () Bool)

(assert (=> bs!1794237 m!7504488))

(assert (=> d!2119886 d!2120356))

(declare-fun b!6750080 () Bool)

(declare-fun e!4076666 () Bool)

(declare-fun e!4076664 () Bool)

(assert (=> b!6750080 (= e!4076666 e!4076664)))

(declare-fun res!2761069 () Bool)

(assert (=> b!6750080 (= res!2761069 (not (nullable!6566 (reg!16910 lt!2440822))))))

(assert (=> b!6750080 (=> (not res!2761069) (not e!4076664))))

(declare-fun b!6750081 () Bool)

(declare-fun e!4076669 () Bool)

(declare-fun call!610481 () Bool)

(assert (=> b!6750081 (= e!4076669 call!610481)))

(declare-fun b!6750082 () Bool)

(declare-fun res!2761072 () Bool)

(assert (=> b!6750082 (=> (not res!2761072) (not e!4076669))))

(declare-fun call!610483 () Bool)

(assert (=> b!6750082 (= res!2761072 call!610483)))

(declare-fun e!4076667 () Bool)

(assert (=> b!6750082 (= e!4076667 e!4076669)))

(declare-fun d!2120358 () Bool)

(declare-fun res!2761070 () Bool)

(declare-fun e!4076670 () Bool)

(assert (=> d!2120358 (=> res!2761070 e!4076670)))

(assert (=> d!2120358 (= res!2761070 ((_ is ElementMatch!16581) lt!2440822))))

(assert (=> d!2120358 (= (validRegex!8317 lt!2440822) e!4076670)))

(declare-fun b!6750083 () Bool)

(declare-fun res!2761068 () Bool)

(declare-fun e!4076668 () Bool)

(assert (=> b!6750083 (=> res!2761068 e!4076668)))

(assert (=> b!6750083 (= res!2761068 (not ((_ is Concat!25426) lt!2440822)))))

(assert (=> b!6750083 (= e!4076667 e!4076668)))

(declare-fun b!6750084 () Bool)

(declare-fun e!4076665 () Bool)

(assert (=> b!6750084 (= e!4076665 call!610481)))

(declare-fun b!6750085 () Bool)

(declare-fun call!610482 () Bool)

(assert (=> b!6750085 (= e!4076664 call!610482)))

(declare-fun b!6750086 () Bool)

(assert (=> b!6750086 (= e!4076668 e!4076665)))

(declare-fun res!2761071 () Bool)

(assert (=> b!6750086 (=> (not res!2761071) (not e!4076665))))

(assert (=> b!6750086 (= res!2761071 call!610483)))

(declare-fun bm!610476 () Bool)

(assert (=> bm!610476 (= call!610481 call!610482)))

(declare-fun bm!610477 () Bool)

(declare-fun c!1252559 () Bool)

(assert (=> bm!610477 (= call!610483 (validRegex!8317 (ite c!1252559 (regOne!33675 lt!2440822) (regOne!33674 lt!2440822))))))

(declare-fun c!1252558 () Bool)

(declare-fun bm!610478 () Bool)

(assert (=> bm!610478 (= call!610482 (validRegex!8317 (ite c!1252558 (reg!16910 lt!2440822) (ite c!1252559 (regTwo!33675 lt!2440822) (regTwo!33674 lt!2440822)))))))

(declare-fun b!6750087 () Bool)

(assert (=> b!6750087 (= e!4076666 e!4076667)))

(assert (=> b!6750087 (= c!1252559 ((_ is Union!16581) lt!2440822))))

(declare-fun b!6750088 () Bool)

(assert (=> b!6750088 (= e!4076670 e!4076666)))

(assert (=> b!6750088 (= c!1252558 ((_ is Star!16581) lt!2440822))))

(assert (= (and d!2120358 (not res!2761070)) b!6750088))

(assert (= (and b!6750088 c!1252558) b!6750080))

(assert (= (and b!6750088 (not c!1252558)) b!6750087))

(assert (= (and b!6750080 res!2761069) b!6750085))

(assert (= (and b!6750087 c!1252559) b!6750082))

(assert (= (and b!6750087 (not c!1252559)) b!6750083))

(assert (= (and b!6750082 res!2761072) b!6750081))

(assert (= (and b!6750083 (not res!2761068)) b!6750086))

(assert (= (and b!6750086 res!2761071) b!6750084))

(assert (= (or b!6750081 b!6750084) bm!610476))

(assert (= (or b!6750082 b!6750086) bm!610477))

(assert (= (or b!6750085 bm!610476) bm!610478))

(declare-fun m!7504490 () Bool)

(assert (=> b!6750080 m!7504490))

(declare-fun m!7504492 () Bool)

(assert (=> bm!610477 m!7504492))

(declare-fun m!7504494 () Bool)

(assert (=> bm!610478 m!7504494))

(assert (=> d!2119874 d!2120358))

(declare-fun d!2120360 () Bool)

(declare-fun res!2761073 () Bool)

(declare-fun e!4076671 () Bool)

(assert (=> d!2120360 (=> res!2761073 e!4076671)))

(assert (=> d!2120360 (= res!2761073 ((_ is Nil!65918) (unfocusZipperList!2002 zl!343)))))

(assert (=> d!2120360 (= (forall!15778 (unfocusZipperList!2002 zl!343) lambda!379589) e!4076671)))

(declare-fun b!6750089 () Bool)

(declare-fun e!4076672 () Bool)

(assert (=> b!6750089 (= e!4076671 e!4076672)))

(declare-fun res!2761074 () Bool)

(assert (=> b!6750089 (=> (not res!2761074) (not e!4076672))))

(assert (=> b!6750089 (= res!2761074 (dynLambda!26302 lambda!379589 (h!72366 (unfocusZipperList!2002 zl!343))))))

(declare-fun b!6750090 () Bool)

(assert (=> b!6750090 (= e!4076672 (forall!15778 (t!379743 (unfocusZipperList!2002 zl!343)) lambda!379589))))

(assert (= (and d!2120360 (not res!2761073)) b!6750089))

(assert (= (and b!6750089 res!2761074) b!6750090))

(declare-fun b_lambda!254221 () Bool)

(assert (=> (not b_lambda!254221) (not b!6750089)))

(declare-fun m!7504496 () Bool)

(assert (=> b!6750089 m!7504496))

(declare-fun m!7504498 () Bool)

(assert (=> b!6750090 m!7504498))

(assert (=> d!2119874 d!2120360))

(assert (=> d!2119846 d!2119844))

(assert (=> d!2119846 d!2119842))

(declare-fun d!2120362 () Bool)

(assert (=> d!2120362 (= (matchR!8764 r!7292 s!2326) (matchRSpec!3682 r!7292 s!2326))))

(assert (=> d!2120362 true))

(declare-fun _$88!5518 () Unit!159853)

(assert (=> d!2120362 (= (choose!50349 r!7292 s!2326) _$88!5518)))

(declare-fun bs!1794238 () Bool)

(assert (= bs!1794238 d!2120362))

(assert (=> bs!1794238 m!7502840))

(assert (=> bs!1794238 m!7502838))

(assert (=> d!2119846 d!2120362))

(assert (=> d!2119846 d!2119870))

(declare-fun bs!1794239 () Bool)

(declare-fun d!2120364 () Bool)

(assert (= bs!1794239 (and d!2120364 d!2120342)))

(declare-fun lambda!379651 () Int)

(assert (=> bs!1794239 (= lambda!379651 lambda!379648)))

(declare-fun bs!1794240 () Bool)

(assert (= bs!1794240 (and d!2120364 d!2120340)))

(assert (=> bs!1794240 (= lambda!379651 lambda!379647)))

(declare-fun bs!1794241 () Bool)

(assert (= bs!1794241 (and d!2120364 d!2119732)))

(assert (=> bs!1794241 (= lambda!379651 lambda!379537)))

(declare-fun bs!1794242 () Bool)

(assert (= bs!1794242 (and d!2120364 d!2119862)))

(assert (=> bs!1794242 (= lambda!379651 lambda!379586)))

(declare-fun bs!1794243 () Bool)

(assert (= bs!1794243 (and d!2120364 d!2119814)))

(assert (=> bs!1794243 (= lambda!379651 lambda!379575)))

(declare-fun bs!1794244 () Bool)

(assert (= bs!1794244 (and d!2120364 d!2119876)))

(assert (=> bs!1794244 (= lambda!379651 lambda!379592)))

(declare-fun bs!1794245 () Bool)

(assert (= bs!1794245 (and d!2120364 d!2119874)))

(assert (=> bs!1794245 (= lambda!379651 lambda!379589)))

(declare-fun bs!1794246 () Bool)

(assert (= bs!1794246 (and d!2120364 d!2120206)))

(assert (=> bs!1794246 (= lambda!379651 lambda!379631)))

(declare-fun bs!1794247 () Bool)

(assert (= bs!1794247 (and d!2120364 d!2119854)))

(assert (=> bs!1794247 (= lambda!379651 lambda!379583)))

(declare-fun bs!1794248 () Bool)

(assert (= bs!1794248 (and d!2120364 d!2120256)))

(assert (=> bs!1794248 (= lambda!379651 lambda!379641)))

(declare-fun b!6750091 () Bool)

(declare-fun e!4076673 () Bool)

(declare-fun lt!2440884 () Regex!16581)

(assert (=> b!6750091 (= e!4076673 (isEmptyExpr!1944 lt!2440884))))

(declare-fun b!6750092 () Bool)

(declare-fun e!4076677 () Bool)

(assert (=> b!6750092 (= e!4076677 (isEmpty!38271 (t!379743 (t!379743 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun b!6750093 () Bool)

(declare-fun e!4076678 () Regex!16581)

(assert (=> b!6750093 (= e!4076678 EmptyExpr!16581)))

(declare-fun b!6750095 () Bool)

(declare-fun e!4076674 () Bool)

(assert (=> b!6750095 (= e!4076674 (= lt!2440884 (head!13584 (t!379743 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun b!6750096 () Bool)

(assert (=> b!6750096 (= e!4076673 e!4076674)))

(declare-fun c!1252560 () Bool)

(assert (=> b!6750096 (= c!1252560 (isEmpty!38271 (tail!12669 (t!379743 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun b!6750097 () Bool)

(assert (=> b!6750097 (= e!4076674 (isConcat!1467 lt!2440884))))

(declare-fun b!6750098 () Bool)

(declare-fun e!4076676 () Regex!16581)

(assert (=> b!6750098 (= e!4076676 (h!72366 (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6750099 () Bool)

(assert (=> b!6750099 (= e!4076676 e!4076678)))

(declare-fun c!1252562 () Bool)

(assert (=> b!6750099 (= c!1252562 ((_ is Cons!65918) (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6750100 () Bool)

(assert (=> b!6750100 (= e!4076678 (Concat!25426 (h!72366 (t!379743 (exprs!6465 (h!72368 zl!343)))) (generalisedConcat!2178 (t!379743 (t!379743 (exprs!6465 (h!72368 zl!343)))))))))

(declare-fun e!4076675 () Bool)

(assert (=> d!2120364 e!4076675))

(declare-fun res!2761076 () Bool)

(assert (=> d!2120364 (=> (not res!2761076) (not e!4076675))))

(assert (=> d!2120364 (= res!2761076 (validRegex!8317 lt!2440884))))

(assert (=> d!2120364 (= lt!2440884 e!4076676)))

(declare-fun c!1252563 () Bool)

(assert (=> d!2120364 (= c!1252563 e!4076677)))

(declare-fun res!2761075 () Bool)

(assert (=> d!2120364 (=> (not res!2761075) (not e!4076677))))

(assert (=> d!2120364 (= res!2761075 ((_ is Cons!65918) (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> d!2120364 (forall!15778 (t!379743 (exprs!6465 (h!72368 zl!343))) lambda!379651)))

(assert (=> d!2120364 (= (generalisedConcat!2178 (t!379743 (exprs!6465 (h!72368 zl!343)))) lt!2440884)))

(declare-fun b!6750094 () Bool)

(assert (=> b!6750094 (= e!4076675 e!4076673)))

(declare-fun c!1252561 () Bool)

(assert (=> b!6750094 (= c!1252561 (isEmpty!38271 (t!379743 (exprs!6465 (h!72368 zl!343)))))))

(assert (= (and d!2120364 res!2761075) b!6750092))

(assert (= (and d!2120364 c!1252563) b!6750098))

(assert (= (and d!2120364 (not c!1252563)) b!6750099))

(assert (= (and b!6750099 c!1252562) b!6750100))

(assert (= (and b!6750099 (not c!1252562)) b!6750093))

(assert (= (and d!2120364 res!2761076) b!6750094))

(assert (= (and b!6750094 c!1252561) b!6750091))

(assert (= (and b!6750094 (not c!1252561)) b!6750096))

(assert (= (and b!6750096 c!1252560) b!6750095))

(assert (= (and b!6750096 (not c!1252560)) b!6750097))

(declare-fun m!7504500 () Bool)

(assert (=> b!6750097 m!7504500))

(declare-fun m!7504502 () Bool)

(assert (=> b!6750095 m!7504502))

(declare-fun m!7504504 () Bool)

(assert (=> b!6750100 m!7504504))

(declare-fun m!7504506 () Bool)

(assert (=> d!2120364 m!7504506))

(declare-fun m!7504508 () Bool)

(assert (=> d!2120364 m!7504508))

(assert (=> b!6750094 m!7503122))

(declare-fun m!7504510 () Bool)

(assert (=> b!6750092 m!7504510))

(declare-fun m!7504512 () Bool)

(assert (=> b!6750091 m!7504512))

(declare-fun m!7504514 () Bool)

(assert (=> b!6750096 m!7504514))

(assert (=> b!6750096 m!7504514))

(declare-fun m!7504516 () Bool)

(assert (=> b!6750096 m!7504516))

(assert (=> b!6748506 d!2120364))

(assert (=> b!6748884 d!2120186))

(declare-fun bs!1794249 () Bool)

(declare-fun b!6750101 () Bool)

(assert (= bs!1794249 (and b!6750101 b!6750023)))

(declare-fun lambda!379652 () Int)

(assert (=> bs!1794249 (not (= lambda!379652 lambda!379646))))

(declare-fun bs!1794250 () Bool)

(assert (= bs!1794250 (and b!6750101 b!6749978)))

(assert (=> bs!1794250 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 (regTwo!33675 r!7292))) (= (regOne!33675 lt!2440700) (regTwo!33675 r!7292))) (= lambda!379652 lambda!379643))))

(declare-fun bs!1794251 () Bool)

(assert (= bs!1794251 (and b!6750101 b!6749988)))

(assert (=> bs!1794251 (not (= lambda!379652 lambda!379644))))

(declare-fun bs!1794252 () Bool)

(assert (= bs!1794252 (and b!6750101 d!2119742)))

(assert (=> bs!1794252 (not (= lambda!379652 lambda!379555))))

(declare-fun bs!1794253 () Bool)

(assert (= bs!1794253 (and b!6750101 b!6748896)))

(assert (=> bs!1794253 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 lt!2440700)) (= (regOne!33675 lt!2440700) lt!2440700)) (= lambda!379652 lambda!379584))))

(declare-fun bs!1794254 () Bool)

(assert (= bs!1794254 (and b!6750101 d!2119756)))

(assert (=> bs!1794254 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regOne!33675 lt!2440700) (Star!16581 (reg!16910 r!7292)))) (= lambda!379652 lambda!379563))))

(assert (=> bs!1794252 (not (= lambda!379652 lambda!379553))))

(declare-fun bs!1794255 () Bool)

(assert (= bs!1794255 (and b!6750101 b!6748866)))

(assert (=> bs!1794255 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regOne!33675 lt!2440700) r!7292)) (= lambda!379652 lambda!379581))))

(declare-fun bs!1794256 () Bool)

(assert (= bs!1794256 (and b!6750101 b!6748161)))

(assert (=> bs!1794256 (not (= lambda!379652 lambda!379508))))

(assert (=> bs!1794254 (not (= lambda!379652 lambda!379560))))

(assert (=> bs!1794256 (not (= lambda!379652 lambda!379506))))

(declare-fun bs!1794257 () Bool)

(assert (= bs!1794257 (and b!6750101 d!2119796)))

(assert (=> bs!1794257 (not (= lambda!379652 lambda!379572))))

(declare-fun bs!1794258 () Bool)

(assert (= bs!1794258 (and b!6750101 b!6750069)))

(assert (=> bs!1794258 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 (regOne!33675 r!7292))) (= (regOne!33675 lt!2440700) (regOne!33675 r!7292))) (= lambda!379652 lambda!379649))))

(declare-fun bs!1794259 () Bool)

(assert (= bs!1794259 (and b!6750101 d!2120236)))

(assert (=> bs!1794259 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regOne!33675 lt!2440700) (Star!16581 (reg!16910 r!7292)))) (= lambda!379652 lambda!379640))))

(assert (=> bs!1794256 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regOne!33675 lt!2440700) r!7292)) (= lambda!379652 lambda!379507))))

(declare-fun bs!1794260 () Bool)

(assert (= bs!1794260 (and b!6750101 b!6748876)))

(assert (=> bs!1794260 (not (= lambda!379652 lambda!379582))))

(declare-fun bs!1794261 () Bool)

(assert (= bs!1794261 (and b!6750101 b!6750079)))

(assert (=> bs!1794261 (not (= lambda!379652 lambda!379650))))

(declare-fun bs!1794262 () Bool)

(assert (= bs!1794262 (and b!6750101 b!6750013)))

(assert (=> bs!1794262 (= (and (= (reg!16910 (regOne!33675 lt!2440700)) (reg!16910 (regTwo!33675 lt!2440700))) (= (regOne!33675 lt!2440700) (regTwo!33675 lt!2440700))) (= lambda!379652 lambda!379645))))

(declare-fun bs!1794263 () Bool)

(assert (= bs!1794263 (and b!6750101 b!6748906)))

(assert (=> bs!1794263 (not (= lambda!379652 lambda!379585))))

(assert (=> bs!1794259 (not (= lambda!379652 lambda!379639))))

(assert (=> b!6750101 true))

(assert (=> b!6750101 true))

(declare-fun bs!1794264 () Bool)

(declare-fun b!6750111 () Bool)

(assert (= bs!1794264 (and b!6750111 b!6750023)))

(declare-fun lambda!379653 () Int)

(assert (=> bs!1794264 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (regOne!33674 (regTwo!33675 lt!2440700))) (= (regTwo!33674 (regOne!33675 lt!2440700)) (regTwo!33674 (regTwo!33675 lt!2440700)))) (= lambda!379653 lambda!379646))))

(declare-fun bs!1794265 () Bool)

(assert (= bs!1794265 (and b!6750111 b!6749978)))

(assert (=> bs!1794265 (not (= lambda!379653 lambda!379643))))

(declare-fun bs!1794266 () Bool)

(assert (= bs!1794266 (and b!6750111 b!6749988)))

(assert (=> bs!1794266 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (regOne!33674 (regTwo!33675 r!7292))) (= (regTwo!33674 (regOne!33675 lt!2440700)) (regTwo!33674 (regTwo!33675 r!7292)))) (= lambda!379653 lambda!379644))))

(declare-fun bs!1794267 () Bool)

(assert (= bs!1794267 (and b!6750111 d!2119742)))

(assert (=> bs!1794267 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33674 (regOne!33675 lt!2440700)) r!7292)) (= lambda!379653 lambda!379555))))

(declare-fun bs!1794268 () Bool)

(assert (= bs!1794268 (and b!6750111 b!6748896)))

(assert (=> bs!1794268 (not (= lambda!379653 lambda!379584))))

(declare-fun bs!1794269 () Bool)

(assert (= bs!1794269 (and b!6750111 b!6750101)))

(assert (=> bs!1794269 (not (= lambda!379653 lambda!379652))))

(declare-fun bs!1794270 () Bool)

(assert (= bs!1794270 (and b!6750111 d!2119756)))

(assert (=> bs!1794270 (not (= lambda!379653 lambda!379563))))

(assert (=> bs!1794267 (not (= lambda!379653 lambda!379553))))

(declare-fun bs!1794271 () Bool)

(assert (= bs!1794271 (and b!6750111 b!6748866)))

(assert (=> bs!1794271 (not (= lambda!379653 lambda!379581))))

(declare-fun bs!1794272 () Bool)

(assert (= bs!1794272 (and b!6750111 b!6748161)))

(assert (=> bs!1794272 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (reg!16910 r!7292)) (= (regTwo!33674 (regOne!33675 lt!2440700)) r!7292)) (= lambda!379653 lambda!379508))))

(assert (=> bs!1794270 (not (= lambda!379653 lambda!379560))))

(assert (=> bs!1794272 (not (= lambda!379653 lambda!379506))))

(declare-fun bs!1794273 () Bool)

(assert (= bs!1794273 (and b!6750111 d!2119796)))

(assert (=> bs!1794273 (not (= lambda!379653 lambda!379572))))

(declare-fun bs!1794274 () Bool)

(assert (= bs!1794274 (and b!6750111 b!6750069)))

(assert (=> bs!1794274 (not (= lambda!379653 lambda!379649))))

(declare-fun bs!1794275 () Bool)

(assert (= bs!1794275 (and b!6750111 d!2120236)))

(assert (=> bs!1794275 (not (= lambda!379653 lambda!379640))))

(assert (=> bs!1794272 (not (= lambda!379653 lambda!379507))))

(declare-fun bs!1794276 () Bool)

(assert (= bs!1794276 (and b!6750111 b!6748876)))

(assert (=> bs!1794276 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (regOne!33674 r!7292)) (= (regTwo!33674 (regOne!33675 lt!2440700)) (regTwo!33674 r!7292))) (= lambda!379653 lambda!379582))))

(declare-fun bs!1794277 () Bool)

(assert (= bs!1794277 (and b!6750111 b!6750079)))

(assert (=> bs!1794277 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (regOne!33674 (regOne!33675 r!7292))) (= (regTwo!33674 (regOne!33675 lt!2440700)) (regTwo!33674 (regOne!33675 r!7292)))) (= lambda!379653 lambda!379650))))

(declare-fun bs!1794278 () Bool)

(assert (= bs!1794278 (and b!6750111 b!6750013)))

(assert (=> bs!1794278 (not (= lambda!379653 lambda!379645))))

(declare-fun bs!1794279 () Bool)

(assert (= bs!1794279 (and b!6750111 b!6748906)))

(assert (=> bs!1794279 (= (and (= (regOne!33674 (regOne!33675 lt!2440700)) (regOne!33674 lt!2440700)) (= (regTwo!33674 (regOne!33675 lt!2440700)) (regTwo!33674 lt!2440700))) (= lambda!379653 lambda!379585))))

(assert (=> bs!1794275 (not (= lambda!379653 lambda!379639))))

(assert (=> b!6750111 true))

(assert (=> b!6750111 true))

(declare-fun e!4076685 () Bool)

(declare-fun call!610484 () Bool)

(assert (=> b!6750101 (= e!4076685 call!610484)))

(declare-fun b!6750102 () Bool)

(declare-fun res!2761077 () Bool)

(assert (=> b!6750102 (=> res!2761077 e!4076685)))

(declare-fun call!610485 () Bool)

(assert (=> b!6750102 (= res!2761077 call!610485)))

(declare-fun e!4076679 () Bool)

(assert (=> b!6750102 (= e!4076679 e!4076685)))

(declare-fun b!6750103 () Bool)

(declare-fun e!4076682 () Bool)

(assert (=> b!6750103 (= e!4076682 call!610485)))

(declare-fun b!6750104 () Bool)

(declare-fun e!4076680 () Bool)

(assert (=> b!6750104 (= e!4076680 (= s!2326 (Cons!65919 (c!1252033 (regOne!33675 lt!2440700)) Nil!65919)))))

(declare-fun b!6750105 () Bool)

(declare-fun e!4076683 () Bool)

(assert (=> b!6750105 (= e!4076683 e!4076679)))

(declare-fun c!1252564 () Bool)

(assert (=> b!6750105 (= c!1252564 ((_ is Star!16581) (regOne!33675 lt!2440700)))))

(declare-fun b!6750106 () Bool)

(declare-fun e!4076681 () Bool)

(assert (=> b!6750106 (= e!4076681 (matchRSpec!3682 (regTwo!33675 (regOne!33675 lt!2440700)) s!2326))))

(declare-fun b!6750107 () Bool)

(declare-fun c!1252565 () Bool)

(assert (=> b!6750107 (= c!1252565 ((_ is Union!16581) (regOne!33675 lt!2440700)))))

(assert (=> b!6750107 (= e!4076680 e!4076683)))

(declare-fun bm!610479 () Bool)

(assert (=> bm!610479 (= call!610485 (isEmpty!38269 s!2326))))

(declare-fun b!6750108 () Bool)

(declare-fun e!4076684 () Bool)

(assert (=> b!6750108 (= e!4076682 e!4076684)))

(declare-fun res!2761078 () Bool)

(assert (=> b!6750108 (= res!2761078 (not ((_ is EmptyLang!16581) (regOne!33675 lt!2440700))))))

(assert (=> b!6750108 (=> (not res!2761078) (not e!4076684))))

(declare-fun b!6750109 () Bool)

(assert (=> b!6750109 (= e!4076683 e!4076681)))

(declare-fun res!2761079 () Bool)

(assert (=> b!6750109 (= res!2761079 (matchRSpec!3682 (regOne!33675 (regOne!33675 lt!2440700)) s!2326))))

(assert (=> b!6750109 (=> res!2761079 e!4076681)))

(declare-fun d!2120366 () Bool)

(declare-fun c!1252566 () Bool)

(assert (=> d!2120366 (= c!1252566 ((_ is EmptyExpr!16581) (regOne!33675 lt!2440700)))))

(assert (=> d!2120366 (= (matchRSpec!3682 (regOne!33675 lt!2440700) s!2326) e!4076682)))

(declare-fun bm!610480 () Bool)

(assert (=> bm!610480 (= call!610484 (Exists!3649 (ite c!1252564 lambda!379652 lambda!379653)))))

(declare-fun b!6750110 () Bool)

(declare-fun c!1252567 () Bool)

(assert (=> b!6750110 (= c!1252567 ((_ is ElementMatch!16581) (regOne!33675 lt!2440700)))))

(assert (=> b!6750110 (= e!4076684 e!4076680)))

(assert (=> b!6750111 (= e!4076679 call!610484)))

(assert (= (and d!2120366 c!1252566) b!6750103))

(assert (= (and d!2120366 (not c!1252566)) b!6750108))

(assert (= (and b!6750108 res!2761078) b!6750110))

(assert (= (and b!6750110 c!1252567) b!6750104))

(assert (= (and b!6750110 (not c!1252567)) b!6750107))

(assert (= (and b!6750107 c!1252565) b!6750109))

(assert (= (and b!6750107 (not c!1252565)) b!6750105))

(assert (= (and b!6750109 (not res!2761079)) b!6750106))

(assert (= (and b!6750105 c!1252564) b!6750102))

(assert (= (and b!6750105 (not c!1252564)) b!6750111))

(assert (= (and b!6750102 (not res!2761077)) b!6750101))

(assert (= (or b!6750101 b!6750111) bm!610480))

(assert (= (or b!6750103 b!6750102) bm!610479))

(declare-fun m!7504518 () Bool)

(assert (=> b!6750106 m!7504518))

(assert (=> bm!610479 m!7502866))

(declare-fun m!7504520 () Bool)

(assert (=> b!6750109 m!7504520))

(declare-fun m!7504522 () Bool)

(assert (=> bm!610480 m!7504522))

(assert (=> b!6748904 d!2120366))

(assert (=> d!2119828 d!2119816))

(declare-fun d!2120368 () Bool)

(assert (=> d!2120368 (= (flatMap!2062 lt!2440715 lambda!379509) (dynLambda!26300 lambda!379509 lt!2440701))))

(assert (=> d!2120368 true))

(declare-fun _$13!4109 () Unit!159853)

(assert (=> d!2120368 (= (choose!50346 lt!2440715 lt!2440701 lambda!379509) _$13!4109)))

(declare-fun b_lambda!254223 () Bool)

(assert (=> (not b_lambda!254223) (not d!2120368)))

(declare-fun bs!1794280 () Bool)

(assert (= bs!1794280 d!2120368))

(assert (=> bs!1794280 m!7502914))

(assert (=> bs!1794280 m!7503348))

(assert (=> d!2119828 d!2120368))

(assert (=> d!2119882 d!2119766))

(declare-fun d!2120370 () Bool)

(assert (=> d!2120370 (= (flatMap!2062 z!1189 lambda!379524) (choose!50344 z!1189 lambda!379524))))

(declare-fun bs!1794281 () Bool)

(assert (= bs!1794281 d!2120370))

(declare-fun m!7504524 () Bool)

(assert (=> bs!1794281 m!7504524))

(assert (=> d!2119718 d!2120370))

(declare-fun b!6750112 () Bool)

(declare-fun e!4076686 () List!66043)

(assert (=> b!6750112 (= e!4076686 (_2!36859 (get!22941 lt!2440786)))))

(declare-fun b!6750114 () Bool)

(declare-fun res!2761080 () Bool)

(declare-fun e!4076687 () Bool)

(assert (=> b!6750114 (=> (not res!2761080) (not e!4076687))))

(declare-fun lt!2440885 () List!66043)

(assert (=> b!6750114 (= res!2761080 (= (size!40621 lt!2440885) (+ (size!40621 (_1!36859 (get!22941 lt!2440786))) (size!40621 (_2!36859 (get!22941 lt!2440786))))))))

(declare-fun b!6750113 () Bool)

(assert (=> b!6750113 (= e!4076686 (Cons!65919 (h!72367 (_1!36859 (get!22941 lt!2440786))) (++!14735 (t!379744 (_1!36859 (get!22941 lt!2440786))) (_2!36859 (get!22941 lt!2440786)))))))

(declare-fun d!2120372 () Bool)

(assert (=> d!2120372 e!4076687))

(declare-fun res!2761081 () Bool)

(assert (=> d!2120372 (=> (not res!2761081) (not e!4076687))))

(assert (=> d!2120372 (= res!2761081 (= (content!12821 lt!2440885) ((_ map or) (content!12821 (_1!36859 (get!22941 lt!2440786))) (content!12821 (_2!36859 (get!22941 lt!2440786))))))))

(assert (=> d!2120372 (= lt!2440885 e!4076686)))

(declare-fun c!1252568 () Bool)

(assert (=> d!2120372 (= c!1252568 ((_ is Nil!65919) (_1!36859 (get!22941 lt!2440786))))))

(assert (=> d!2120372 (= (++!14735 (_1!36859 (get!22941 lt!2440786)) (_2!36859 (get!22941 lt!2440786))) lt!2440885)))

(declare-fun b!6750115 () Bool)

(assert (=> b!6750115 (= e!4076687 (or (not (= (_2!36859 (get!22941 lt!2440786)) Nil!65919)) (= lt!2440885 (_1!36859 (get!22941 lt!2440786)))))))

(assert (= (and d!2120372 c!1252568) b!6750112))

(assert (= (and d!2120372 (not c!1252568)) b!6750113))

(assert (= (and d!2120372 res!2761081) b!6750114))

(assert (= (and b!6750114 res!2761080) b!6750115))

(declare-fun m!7504526 () Bool)

(assert (=> b!6750114 m!7504526))

(declare-fun m!7504528 () Bool)

(assert (=> b!6750114 m!7504528))

(declare-fun m!7504530 () Bool)

(assert (=> b!6750114 m!7504530))

(declare-fun m!7504532 () Bool)

(assert (=> b!6750113 m!7504532))

(declare-fun m!7504534 () Bool)

(assert (=> d!2120372 m!7504534))

(declare-fun m!7504536 () Bool)

(assert (=> d!2120372 m!7504536))

(declare-fun m!7504538 () Bool)

(assert (=> d!2120372 m!7504538))

(assert (=> b!6748681 d!2120372))

(assert (=> b!6748681 d!2120304))

(assert (=> b!6748912 d!2120186))

(declare-fun d!2120374 () Bool)

(assert (=> d!2120374 (= (nullable!6566 r!7292) (nullableFct!2474 r!7292))))

(declare-fun bs!1794282 () Bool)

(assert (= bs!1794282 d!2120374))

(declare-fun m!7504540 () Bool)

(assert (=> bs!1794282 m!7504540))

(assert (=> b!6748889 d!2120374))

(declare-fun d!2120376 () Bool)

(assert (=> d!2120376 (= (isEmpty!38271 (t!379743 (unfocusZipperList!2002 zl!343))) ((_ is Nil!65918) (t!379743 (unfocusZipperList!2002 zl!343))))))

(assert (=> b!6748987 d!2120376))

(declare-fun b!6750116 () Bool)

(declare-fun e!4076688 () (InoxSet Context!11930))

(assert (=> b!6750116 (= e!4076688 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2120378 () Bool)

(declare-fun c!1252569 () Bool)

(declare-fun e!4076689 () Bool)

(assert (=> d!2120378 (= c!1252569 e!4076689)))

(declare-fun res!2761082 () Bool)

(assert (=> d!2120378 (=> (not res!2761082) (not e!4076689))))

(assert (=> d!2120378 (= res!2761082 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713))))))))

(declare-fun e!4076690 () (InoxSet Context!11930))

(assert (=> d!2120378 (= (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440713))) (h!72367 s!2326)) e!4076690)))

(declare-fun b!6750117 () Bool)

(declare-fun call!610486 () (InoxSet Context!11930))

(assert (=> b!6750117 (= e!4076688 call!610486)))

(declare-fun bm!610481 () Bool)

(assert (=> bm!610481 (= call!610486 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713))))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713)))))) (h!72367 s!2326)))))

(declare-fun b!6750118 () Bool)

(assert (=> b!6750118 (= e!4076690 ((_ map or) call!610486 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713)))))) (h!72367 s!2326))))))

(declare-fun b!6750119 () Bool)

(assert (=> b!6750119 (= e!4076690 e!4076688)))

(declare-fun c!1252570 () Bool)

(assert (=> b!6750119 (= c!1252570 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713))))))))

(declare-fun b!6750120 () Bool)

(assert (=> b!6750120 (= e!4076689 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440713)))))))))

(assert (= (and d!2120378 res!2761082) b!6750120))

(assert (= (and d!2120378 c!1252569) b!6750118))

(assert (= (and d!2120378 (not c!1252569)) b!6750119))

(assert (= (and b!6750119 c!1252570) b!6750117))

(assert (= (and b!6750119 (not c!1252570)) b!6750116))

(assert (= (or b!6750118 b!6750117) bm!610481))

(declare-fun m!7504542 () Bool)

(assert (=> bm!610481 m!7504542))

(declare-fun m!7504544 () Bool)

(assert (=> b!6750118 m!7504544))

(declare-fun m!7504546 () Bool)

(assert (=> b!6750120 m!7504546))

(assert (=> b!6748773 d!2120378))

(declare-fun d!2120380 () Bool)

(declare-fun c!1252574 () Bool)

(assert (=> d!2120380 (= c!1252574 (and ((_ is ElementMatch!16581) (h!72366 (exprs!6465 (h!72368 zl!343)))) (= (c!1252033 (h!72366 (exprs!6465 (h!72368 zl!343)))) (h!72367 s!2326))))))

(declare-fun e!4076696 () (InoxSet Context!11930))

(assert (=> d!2120380 (= (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (h!72368 zl!343))) (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (h!72367 s!2326)) e!4076696)))

(declare-fun b!6750121 () Bool)

(declare-fun e!4076695 () (InoxSet Context!11930))

(declare-fun call!610487 () (InoxSet Context!11930))

(declare-fun call!610488 () (InoxSet Context!11930))

(assert (=> b!6750121 (= e!4076695 ((_ map or) call!610487 call!610488))))

(declare-fun b!6750122 () Bool)

(declare-fun e!4076692 () (InoxSet Context!11930))

(declare-fun e!4076691 () (InoxSet Context!11930))

(assert (=> b!6750122 (= e!4076692 e!4076691)))

(declare-fun c!1252571 () Bool)

(assert (=> b!6750122 (= c!1252571 ((_ is Concat!25426) (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun call!610491 () List!66042)

(declare-fun c!1252575 () Bool)

(declare-fun bm!610482 () Bool)

(assert (=> bm!610482 (= call!610491 ($colon$colon!2395 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343))))) (ite (or c!1252575 c!1252571) (regTwo!33674 (h!72366 (exprs!6465 (h!72368 zl!343)))) (h!72366 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun b!6750123 () Bool)

(declare-fun e!4076693 () Bool)

(assert (=> b!6750123 (= c!1252575 e!4076693)))

(declare-fun res!2761083 () Bool)

(assert (=> b!6750123 (=> (not res!2761083) (not e!4076693))))

(assert (=> b!6750123 (= res!2761083 ((_ is Concat!25426) (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> b!6750123 (= e!4076695 e!4076692)))

(declare-fun b!6750124 () Bool)

(declare-fun call!610489 () (InoxSet Context!11930))

(assert (=> b!6750124 (= e!4076692 ((_ map or) call!610487 call!610489))))

(declare-fun c!1252572 () Bool)

(declare-fun call!610490 () List!66042)

(declare-fun bm!610483 () Bool)

(assert (=> bm!610483 (= call!610488 (derivationStepZipperDown!1809 (ite c!1252572 (regTwo!33675 (h!72366 (exprs!6465 (h!72368 zl!343)))) (ite c!1252575 (regTwo!33674 (h!72366 (exprs!6465 (h!72368 zl!343)))) (ite c!1252571 (regOne!33674 (h!72366 (exprs!6465 (h!72368 zl!343)))) (reg!16910 (h!72366 (exprs!6465 (h!72368 zl!343))))))) (ite (or c!1252572 c!1252575) (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (Context!11931 call!610490)) (h!72367 s!2326)))))

(declare-fun b!6750125 () Bool)

(declare-fun e!4076694 () (InoxSet Context!11930))

(assert (=> b!6750125 (= e!4076694 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6750126 () Bool)

(assert (=> b!6750126 (= e!4076696 e!4076695)))

(assert (=> b!6750126 (= c!1252572 ((_ is Union!16581) (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun bm!610484 () Bool)

(declare-fun call!610492 () (InoxSet Context!11930))

(assert (=> bm!610484 (= call!610492 call!610489)))

(declare-fun b!6750127 () Bool)

(assert (=> b!6750127 (= e!4076693 (nullable!6566 (regOne!33674 (h!72366 (exprs!6465 (h!72368 zl!343))))))))

(declare-fun bm!610485 () Bool)

(assert (=> bm!610485 (= call!610490 call!610491)))

(declare-fun bm!610486 () Bool)

(assert (=> bm!610486 (= call!610489 call!610488)))

(declare-fun b!6750128 () Bool)

(assert (=> b!6750128 (= e!4076696 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) true))))

(declare-fun bm!610487 () Bool)

(assert (=> bm!610487 (= call!610487 (derivationStepZipperDown!1809 (ite c!1252572 (regOne!33675 (h!72366 (exprs!6465 (h!72368 zl!343)))) (regOne!33674 (h!72366 (exprs!6465 (h!72368 zl!343))))) (ite c!1252572 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (Context!11931 call!610491)) (h!72367 s!2326)))))

(declare-fun b!6750129 () Bool)

(declare-fun c!1252573 () Bool)

(assert (=> b!6750129 (= c!1252573 ((_ is Star!16581) (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> b!6750129 (= e!4076691 e!4076694)))

(declare-fun b!6750130 () Bool)

(assert (=> b!6750130 (= e!4076694 call!610492)))

(declare-fun b!6750131 () Bool)

(assert (=> b!6750131 (= e!4076691 call!610492)))

(assert (= (and d!2120380 c!1252574) b!6750128))

(assert (= (and d!2120380 (not c!1252574)) b!6750126))

(assert (= (and b!6750126 c!1252572) b!6750121))

(assert (= (and b!6750126 (not c!1252572)) b!6750123))

(assert (= (and b!6750123 res!2761083) b!6750127))

(assert (= (and b!6750123 c!1252575) b!6750124))

(assert (= (and b!6750123 (not c!1252575)) b!6750122))

(assert (= (and b!6750122 c!1252571) b!6750131))

(assert (= (and b!6750122 (not c!1252571)) b!6750129))

(assert (= (and b!6750129 c!1252573) b!6750130))

(assert (= (and b!6750129 (not c!1252573)) b!6750125))

(assert (= (or b!6750131 b!6750130) bm!610485))

(assert (= (or b!6750131 b!6750130) bm!610484))

(assert (= (or b!6750124 bm!610485) bm!610482))

(assert (= (or b!6750124 bm!610484) bm!610486))

(assert (= (or b!6750121 bm!610486) bm!610483))

(assert (= (or b!6750121 b!6750124) bm!610487))

(declare-fun m!7504548 () Bool)

(assert (=> bm!610483 m!7504548))

(declare-fun m!7504550 () Bool)

(assert (=> bm!610482 m!7504550))

(declare-fun m!7504552 () Bool)

(assert (=> bm!610487 m!7504552))

(declare-fun m!7504554 () Bool)

(assert (=> b!6750128 m!7504554))

(declare-fun m!7504556 () Bool)

(assert (=> b!6750127 m!7504556))

(assert (=> bm!610265 d!2120380))

(declare-fun d!2120382 () Bool)

(declare-fun c!1252579 () Bool)

(assert (=> d!2120382 (= c!1252579 (and ((_ is ElementMatch!16581) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (= (c!1252033 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72367 s!2326))))))

(declare-fun e!4076702 () (InoxSet Context!11930))

(assert (=> d!2120382 (= (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72367 s!2326)) e!4076702)))

(declare-fun b!6750132 () Bool)

(declare-fun e!4076701 () (InoxSet Context!11930))

(declare-fun call!610493 () (InoxSet Context!11930))

(declare-fun call!610494 () (InoxSet Context!11930))

(assert (=> b!6750132 (= e!4076701 ((_ map or) call!610493 call!610494))))

(declare-fun b!6750133 () Bool)

(declare-fun e!4076698 () (InoxSet Context!11930))

(declare-fun e!4076697 () (InoxSet Context!11930))

(assert (=> b!6750133 (= e!4076698 e!4076697)))

(declare-fun c!1252576 () Bool)

(assert (=> b!6750133 (= c!1252576 ((_ is Concat!25426) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(declare-fun c!1252580 () Bool)

(declare-fun call!610497 () List!66042)

(declare-fun bm!610488 () Bool)

(assert (=> bm!610488 (= call!610497 ($colon$colon!2395 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))) (ite (or c!1252580 c!1252576) (regTwo!33674 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))))

(declare-fun b!6750134 () Bool)

(declare-fun e!4076699 () Bool)

(assert (=> b!6750134 (= c!1252580 e!4076699)))

(declare-fun res!2761084 () Bool)

(assert (=> b!6750134 (=> (not res!2761084) (not e!4076699))))

(assert (=> b!6750134 (= res!2761084 ((_ is Concat!25426) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(assert (=> b!6750134 (= e!4076701 e!4076698)))

(declare-fun b!6750135 () Bool)

(declare-fun call!610495 () (InoxSet Context!11930))

(assert (=> b!6750135 (= e!4076698 ((_ map or) call!610493 call!610495))))

(declare-fun bm!610489 () Bool)

(declare-fun call!610496 () List!66042)

(declare-fun c!1252577 () Bool)

(assert (=> bm!610489 (= call!610494 (derivationStepZipperDown!1809 (ite c!1252577 (regTwo!33675 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (ite c!1252580 (regTwo!33674 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (ite c!1252576 (regOne!33674 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (reg!16910 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))) (ite (or c!1252577 c!1252580) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (Context!11931 call!610496)) (h!72367 s!2326)))))

(declare-fun b!6750136 () Bool)

(declare-fun e!4076700 () (InoxSet Context!11930))

(assert (=> b!6750136 (= e!4076700 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6750137 () Bool)

(assert (=> b!6750137 (= e!4076702 e!4076701)))

(assert (=> b!6750137 (= c!1252577 ((_ is Union!16581) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(declare-fun bm!610490 () Bool)

(declare-fun call!610498 () (InoxSet Context!11930))

(assert (=> bm!610490 (= call!610498 call!610495)))

(declare-fun b!6750138 () Bool)

(assert (=> b!6750138 (= e!4076699 (nullable!6566 (regOne!33674 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))))

(declare-fun bm!610491 () Bool)

(assert (=> bm!610491 (= call!610496 call!610497)))

(declare-fun bm!610492 () Bool)

(assert (=> bm!610492 (= call!610495 call!610494)))

(declare-fun b!6750139 () Bool)

(assert (=> b!6750139 (= e!4076702 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) true))))

(declare-fun bm!610493 () Bool)

(assert (=> bm!610493 (= call!610493 (derivationStepZipperDown!1809 (ite c!1252577 (regOne!33675 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (regOne!33674 (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))) (ite c!1252577 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (Context!11931 call!610497)) (h!72367 s!2326)))))

(declare-fun b!6750140 () Bool)

(declare-fun c!1252578 () Bool)

(assert (=> b!6750140 (= c!1252578 ((_ is Star!16581) (h!72366 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))

(assert (=> b!6750140 (= e!4076697 e!4076700)))

(declare-fun b!6750141 () Bool)

(assert (=> b!6750141 (= e!4076700 call!610498)))

(declare-fun b!6750142 () Bool)

(assert (=> b!6750142 (= e!4076697 call!610498)))

(assert (= (and d!2120382 c!1252579) b!6750139))

(assert (= (and d!2120382 (not c!1252579)) b!6750137))

(assert (= (and b!6750137 c!1252577) b!6750132))

(assert (= (and b!6750137 (not c!1252577)) b!6750134))

(assert (= (and b!6750134 res!2761084) b!6750138))

(assert (= (and b!6750134 c!1252580) b!6750135))

(assert (= (and b!6750134 (not c!1252580)) b!6750133))

(assert (= (and b!6750133 c!1252576) b!6750142))

(assert (= (and b!6750133 (not c!1252576)) b!6750140))

(assert (= (and b!6750140 c!1252578) b!6750141))

(assert (= (and b!6750140 (not c!1252578)) b!6750136))

(assert (= (or b!6750142 b!6750141) bm!610491))

(assert (= (or b!6750142 b!6750141) bm!610490))

(assert (= (or b!6750135 bm!610491) bm!610488))

(assert (= (or b!6750135 bm!610490) bm!610492))

(assert (= (or b!6750132 bm!610492) bm!610489))

(assert (= (or b!6750132 b!6750135) bm!610493))

(declare-fun m!7504558 () Bool)

(assert (=> bm!610489 m!7504558))

(declare-fun m!7504560 () Bool)

(assert (=> bm!610488 m!7504560))

(declare-fun m!7504562 () Bool)

(assert (=> bm!610493 m!7504562))

(declare-fun m!7504564 () Bool)

(assert (=> b!6750139 m!7504564))

(declare-fun m!7504566 () Bool)

(assert (=> b!6750138 m!7504566))

(assert (=> bm!610220 d!2120382))

(declare-fun d!2120384 () Bool)

(assert (=> d!2120384 (= (Exists!3649 lambda!379572) (choose!50341 lambda!379572))))

(declare-fun bs!1794283 () Bool)

(assert (= bs!1794283 d!2120384))

(declare-fun m!7504568 () Bool)

(assert (=> bs!1794283 m!7504568))

(assert (=> d!2119796 d!2120384))

(declare-fun d!2120386 () Bool)

(assert (=> d!2120386 (= (isDefined!13171 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326)) (not (isEmpty!38272 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326))))))

(declare-fun bs!1794284 () Bool)

(assert (= bs!1794284 d!2120386))

(assert (=> bs!1794284 m!7502874))

(declare-fun m!7504570 () Bool)

(assert (=> bs!1794284 m!7504570))

(assert (=> d!2119796 d!2120386))

(declare-fun bs!1794285 () Bool)

(declare-fun d!2120388 () Bool)

(assert (= bs!1794285 (and d!2120388 b!6750023)))

(declare-fun lambda!379656 () Int)

(assert (=> bs!1794285 (not (= lambda!379656 lambda!379646))))

(declare-fun bs!1794286 () Bool)

(assert (= bs!1794286 (and d!2120388 b!6749978)))

(assert (=> bs!1794286 (not (= lambda!379656 lambda!379643))))

(declare-fun bs!1794287 () Bool)

(assert (= bs!1794287 (and d!2120388 b!6749988)))

(assert (=> bs!1794287 (not (= lambda!379656 lambda!379644))))

(declare-fun bs!1794288 () Bool)

(assert (= bs!1794288 (and d!2120388 d!2119742)))

(assert (=> bs!1794288 (not (= lambda!379656 lambda!379555))))

(declare-fun bs!1794289 () Bool)

(assert (= bs!1794289 (and d!2120388 b!6748896)))

(assert (=> bs!1794289 (not (= lambda!379656 lambda!379584))))

(declare-fun bs!1794290 () Bool)

(assert (= bs!1794290 (and d!2120388 b!6750101)))

(assert (=> bs!1794290 (not (= lambda!379656 lambda!379652))))

(declare-fun bs!1794291 () Bool)

(assert (= bs!1794291 (and d!2120388 d!2119756)))

(assert (=> bs!1794291 (not (= lambda!379656 lambda!379563))))

(assert (=> bs!1794288 (= lambda!379656 lambda!379553)))

(declare-fun bs!1794292 () Bool)

(assert (= bs!1794292 (and d!2120388 b!6748866)))

(assert (=> bs!1794292 (not (= lambda!379656 lambda!379581))))

(declare-fun bs!1794293 () Bool)

(assert (= bs!1794293 (and d!2120388 b!6748161)))

(assert (=> bs!1794293 (not (= lambda!379656 lambda!379508))))

(assert (=> bs!1794291 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379656 lambda!379560))))

(assert (=> bs!1794293 (= lambda!379656 lambda!379506)))

(declare-fun bs!1794294 () Bool)

(assert (= bs!1794294 (and d!2120388 d!2119796)))

(assert (=> bs!1794294 (= lambda!379656 lambda!379572)))

(declare-fun bs!1794295 () Bool)

(assert (= bs!1794295 (and d!2120388 b!6750069)))

(assert (=> bs!1794295 (not (= lambda!379656 lambda!379649))))

(declare-fun bs!1794296 () Bool)

(assert (= bs!1794296 (and d!2120388 d!2120236)))

(assert (=> bs!1794296 (not (= lambda!379656 lambda!379640))))

(assert (=> bs!1794293 (not (= lambda!379656 lambda!379507))))

(declare-fun bs!1794297 () Bool)

(assert (= bs!1794297 (and d!2120388 b!6748876)))

(assert (=> bs!1794297 (not (= lambda!379656 lambda!379582))))

(declare-fun bs!1794298 () Bool)

(assert (= bs!1794298 (and d!2120388 b!6750111)))

(assert (=> bs!1794298 (not (= lambda!379656 lambda!379653))))

(declare-fun bs!1794299 () Bool)

(assert (= bs!1794299 (and d!2120388 b!6750079)))

(assert (=> bs!1794299 (not (= lambda!379656 lambda!379650))))

(declare-fun bs!1794300 () Bool)

(assert (= bs!1794300 (and d!2120388 b!6750013)))

(assert (=> bs!1794300 (not (= lambda!379656 lambda!379645))))

(declare-fun bs!1794301 () Bool)

(assert (= bs!1794301 (and d!2120388 b!6748906)))

(assert (=> bs!1794301 (not (= lambda!379656 lambda!379585))))

(assert (=> bs!1794296 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379656 lambda!379639))))

(assert (=> d!2120388 true))

(assert (=> d!2120388 true))

(assert (=> d!2120388 true))

(assert (=> d!2120388 (= (isDefined!13171 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 Nil!65919 s!2326 s!2326)) (Exists!3649 lambda!379656))))

(assert (=> d!2120388 true))

(declare-fun _$89!2992 () Unit!159853)

(assert (=> d!2120388 (= (choose!50342 (reg!16910 r!7292) r!7292 s!2326) _$89!2992)))

(declare-fun bs!1794302 () Bool)

(assert (= bs!1794302 d!2120388))

(assert (=> bs!1794302 m!7502874))

(assert (=> bs!1794302 m!7502874))

(assert (=> bs!1794302 m!7503310))

(declare-fun m!7504572 () Bool)

(assert (=> bs!1794302 m!7504572))

(assert (=> d!2119796 d!2120388))

(assert (=> d!2119796 d!2119774))

(assert (=> d!2119796 d!2120250))

(declare-fun b!6750147 () Bool)

(declare-fun e!4076707 () Bool)

(declare-fun e!4076705 () Bool)

(assert (=> b!6750147 (= e!4076707 e!4076705)))

(declare-fun res!2761090 () Bool)

(assert (=> b!6750147 (= res!2761090 (not (nullable!6566 (reg!16910 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))))

(assert (=> b!6750147 (=> (not res!2761090) (not e!4076705))))

(declare-fun b!6750148 () Bool)

(declare-fun e!4076710 () Bool)

(declare-fun call!610499 () Bool)

(assert (=> b!6750148 (= e!4076710 call!610499)))

(declare-fun b!6750149 () Bool)

(declare-fun res!2761093 () Bool)

(assert (=> b!6750149 (=> (not res!2761093) (not e!4076710))))

(declare-fun call!610501 () Bool)

(assert (=> b!6750149 (= res!2761093 call!610501)))

(declare-fun e!4076708 () Bool)

(assert (=> b!6750149 (= e!4076708 e!4076710)))

(declare-fun d!2120390 () Bool)

(declare-fun res!2761091 () Bool)

(declare-fun e!4076711 () Bool)

(assert (=> d!2120390 (=> res!2761091 e!4076711)))

(assert (=> d!2120390 (= res!2761091 ((_ is ElementMatch!16581) (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))

(assert (=> d!2120390 (= (validRegex!8317 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))) e!4076711)))

(declare-fun b!6750150 () Bool)

(declare-fun res!2761089 () Bool)

(declare-fun e!4076709 () Bool)

(assert (=> b!6750150 (=> res!2761089 e!4076709)))

(assert (=> b!6750150 (= res!2761089 (not ((_ is Concat!25426) (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292))))))))

(assert (=> b!6750150 (= e!4076708 e!4076709)))

(declare-fun b!6750151 () Bool)

(declare-fun e!4076706 () Bool)

(assert (=> b!6750151 (= e!4076706 call!610499)))

(declare-fun b!6750152 () Bool)

(declare-fun call!610500 () Bool)

(assert (=> b!6750152 (= e!4076705 call!610500)))

(declare-fun b!6750153 () Bool)

(assert (=> b!6750153 (= e!4076709 e!4076706)))

(declare-fun res!2761092 () Bool)

(assert (=> b!6750153 (=> (not res!2761092) (not e!4076706))))

(assert (=> b!6750153 (= res!2761092 call!610501)))

(declare-fun bm!610494 () Bool)

(assert (=> bm!610494 (= call!610499 call!610500)))

(declare-fun c!1252582 () Bool)

(declare-fun bm!610495 () Bool)

(assert (=> bm!610495 (= call!610501 (validRegex!8317 (ite c!1252582 (regOne!33675 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))) (regOne!33674 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))))

(declare-fun bm!610496 () Bool)

(declare-fun c!1252581 () Bool)

(assert (=> bm!610496 (= call!610500 (validRegex!8317 (ite c!1252581 (reg!16910 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))) (ite c!1252582 (regTwo!33675 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))) (regTwo!33674 (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292))))))))))

(declare-fun b!6750154 () Bool)

(assert (=> b!6750154 (= e!4076707 e!4076708)))

(assert (=> b!6750154 (= c!1252582 ((_ is Union!16581) (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))

(declare-fun b!6750155 () Bool)

(assert (=> b!6750155 (= e!4076711 e!4076707)))

(assert (=> b!6750155 (= c!1252581 ((_ is Star!16581) (ite c!1252239 (reg!16910 r!7292) (ite c!1252240 (regTwo!33675 r!7292) (regTwo!33674 r!7292)))))))

(assert (= (and d!2120390 (not res!2761091)) b!6750155))

(assert (= (and b!6750155 c!1252581) b!6750147))

(assert (= (and b!6750155 (not c!1252581)) b!6750154))

(assert (= (and b!6750147 res!2761090) b!6750152))

(assert (= (and b!6750154 c!1252582) b!6750149))

(assert (= (and b!6750154 (not c!1252582)) b!6750150))

(assert (= (and b!6750149 res!2761093) b!6750148))

(assert (= (and b!6750150 (not res!2761089)) b!6750153))

(assert (= (and b!6750153 res!2761092) b!6750151))

(assert (= (or b!6750148 b!6750151) bm!610494))

(assert (= (or b!6750149 b!6750153) bm!610495))

(assert (= (or b!6750152 bm!610494) bm!610496))

(declare-fun m!7504574 () Bool)

(assert (=> b!6750147 m!7504574))

(declare-fun m!7504576 () Bool)

(assert (=> bm!610495 m!7504576))

(declare-fun m!7504578 () Bool)

(assert (=> bm!610496 m!7504578))

(assert (=> bm!610277 d!2120390))

(declare-fun d!2120392 () Bool)

(declare-fun lambda!379659 () Int)

(declare-fun exists!2705 ((InoxSet Context!11930) Int) Bool)

(assert (=> d!2120392 (= (nullableZipper!2294 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326))) (exists!2705 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) lambda!379659))))

(declare-fun bs!1794303 () Bool)

(assert (= bs!1794303 d!2120392))

(assert (=> bs!1794303 m!7502894))

(declare-fun m!7504580 () Bool)

(assert (=> bs!1794303 m!7504580))

(assert (=> b!6749016 d!2120392))

(assert (=> b!6748960 d!2120374))

(declare-fun d!2120394 () Bool)

(declare-fun c!1252588 () Bool)

(assert (=> d!2120394 (= c!1252588 (and ((_ is ElementMatch!16581) (h!72366 (exprs!6465 lt!2440699))) (= (c!1252033 (h!72366 (exprs!6465 lt!2440699))) (h!72367 s!2326))))))

(declare-fun e!4076717 () (InoxSet Context!11930))

(assert (=> d!2120394 (= (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440699)) (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (h!72367 s!2326)) e!4076717)))

(declare-fun b!6750156 () Bool)

(declare-fun e!4076716 () (InoxSet Context!11930))

(declare-fun call!610502 () (InoxSet Context!11930))

(declare-fun call!610503 () (InoxSet Context!11930))

(assert (=> b!6750156 (= e!4076716 ((_ map or) call!610502 call!610503))))

(declare-fun b!6750157 () Bool)

(declare-fun e!4076713 () (InoxSet Context!11930))

(declare-fun e!4076712 () (InoxSet Context!11930))

(assert (=> b!6750157 (= e!4076713 e!4076712)))

(declare-fun c!1252585 () Bool)

(assert (=> b!6750157 (= c!1252585 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440699))))))

(declare-fun c!1252589 () Bool)

(declare-fun call!610506 () List!66042)

(declare-fun bm!610497 () Bool)

(assert (=> bm!610497 (= call!610506 ($colon$colon!2395 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699)))) (ite (or c!1252589 c!1252585) (regTwo!33674 (h!72366 (exprs!6465 lt!2440699))) (h!72366 (exprs!6465 lt!2440699)))))))

(declare-fun b!6750158 () Bool)

(declare-fun e!4076714 () Bool)

(assert (=> b!6750158 (= c!1252589 e!4076714)))

(declare-fun res!2761094 () Bool)

(assert (=> b!6750158 (=> (not res!2761094) (not e!4076714))))

(assert (=> b!6750158 (= res!2761094 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440699))))))

(assert (=> b!6750158 (= e!4076716 e!4076713)))

(declare-fun b!6750159 () Bool)

(declare-fun call!610504 () (InoxSet Context!11930))

(assert (=> b!6750159 (= e!4076713 ((_ map or) call!610502 call!610504))))

(declare-fun bm!610498 () Bool)

(declare-fun c!1252586 () Bool)

(declare-fun call!610505 () List!66042)

(assert (=> bm!610498 (= call!610503 (derivationStepZipperDown!1809 (ite c!1252586 (regTwo!33675 (h!72366 (exprs!6465 lt!2440699))) (ite c!1252589 (regTwo!33674 (h!72366 (exprs!6465 lt!2440699))) (ite c!1252585 (regOne!33674 (h!72366 (exprs!6465 lt!2440699))) (reg!16910 (h!72366 (exprs!6465 lt!2440699)))))) (ite (or c!1252586 c!1252589) (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (Context!11931 call!610505)) (h!72367 s!2326)))))

(declare-fun b!6750160 () Bool)

(declare-fun e!4076715 () (InoxSet Context!11930))

(assert (=> b!6750160 (= e!4076715 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6750161 () Bool)

(assert (=> b!6750161 (= e!4076717 e!4076716)))

(assert (=> b!6750161 (= c!1252586 ((_ is Union!16581) (h!72366 (exprs!6465 lt!2440699))))))

(declare-fun bm!610499 () Bool)

(declare-fun call!610507 () (InoxSet Context!11930))

(assert (=> bm!610499 (= call!610507 call!610504)))

(declare-fun b!6750162 () Bool)

(assert (=> b!6750162 (= e!4076714 (nullable!6566 (regOne!33674 (h!72366 (exprs!6465 lt!2440699)))))))

(declare-fun bm!610500 () Bool)

(assert (=> bm!610500 (= call!610505 call!610506)))

(declare-fun bm!610501 () Bool)

(assert (=> bm!610501 (= call!610504 call!610503)))

(declare-fun b!6750163 () Bool)

(assert (=> b!6750163 (= e!4076717 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 (t!379743 (exprs!6465 lt!2440699))) true))))

(declare-fun bm!610502 () Bool)

(assert (=> bm!610502 (= call!610502 (derivationStepZipperDown!1809 (ite c!1252586 (regOne!33675 (h!72366 (exprs!6465 lt!2440699))) (regOne!33674 (h!72366 (exprs!6465 lt!2440699)))) (ite c!1252586 (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (Context!11931 call!610506)) (h!72367 s!2326)))))

(declare-fun b!6750164 () Bool)

(declare-fun c!1252587 () Bool)

(assert (=> b!6750164 (= c!1252587 ((_ is Star!16581) (h!72366 (exprs!6465 lt!2440699))))))

(assert (=> b!6750164 (= e!4076712 e!4076715)))

(declare-fun b!6750165 () Bool)

(assert (=> b!6750165 (= e!4076715 call!610507)))

(declare-fun b!6750166 () Bool)

(assert (=> b!6750166 (= e!4076712 call!610507)))

(assert (= (and d!2120394 c!1252588) b!6750163))

(assert (= (and d!2120394 (not c!1252588)) b!6750161))

(assert (= (and b!6750161 c!1252586) b!6750156))

(assert (= (and b!6750161 (not c!1252586)) b!6750158))

(assert (= (and b!6750158 res!2761094) b!6750162))

(assert (= (and b!6750158 c!1252589) b!6750159))

(assert (= (and b!6750158 (not c!1252589)) b!6750157))

(assert (= (and b!6750157 c!1252585) b!6750166))

(assert (= (and b!6750157 (not c!1252585)) b!6750164))

(assert (= (and b!6750164 c!1252587) b!6750165))

(assert (= (and b!6750164 (not c!1252587)) b!6750160))

(assert (= (or b!6750166 b!6750165) bm!610500))

(assert (= (or b!6750166 b!6750165) bm!610499))

(assert (= (or b!6750159 bm!610500) bm!610497))

(assert (= (or b!6750159 bm!610499) bm!610501))

(assert (= (or b!6750156 bm!610501) bm!610498))

(assert (= (or b!6750156 b!6750159) bm!610502))

(declare-fun m!7504582 () Bool)

(assert (=> bm!610498 m!7504582))

(declare-fun m!7504584 () Bool)

(assert (=> bm!610497 m!7504584))

(declare-fun m!7504586 () Bool)

(assert (=> bm!610502 m!7504586))

(declare-fun m!7504588 () Bool)

(assert (=> b!6750163 m!7504588))

(declare-fun m!7504590 () Bool)

(assert (=> b!6750162 m!7504590))

(assert (=> bm!610257 d!2120394))

(declare-fun d!2120396 () Bool)

(assert (=> d!2120396 (= (isEmpty!38269 (_2!36859 lt!2440718)) ((_ is Nil!65919) (_2!36859 lt!2440718)))))

(assert (=> d!2119872 d!2120396))

(assert (=> d!2119872 d!2119870))

(declare-fun d!2120398 () Bool)

(declare-fun res!2761095 () Bool)

(declare-fun e!4076718 () Bool)

(assert (=> d!2120398 (=> res!2761095 e!4076718)))

(assert (=> d!2120398 (= res!2761095 ((_ is Nil!65918) (exprs!6465 (h!72368 zl!343))))))

(assert (=> d!2120398 (= (forall!15778 (exprs!6465 (h!72368 zl!343)) lambda!379586) e!4076718)))

(declare-fun b!6750167 () Bool)

(declare-fun e!4076719 () Bool)

(assert (=> b!6750167 (= e!4076718 e!4076719)))

(declare-fun res!2761096 () Bool)

(assert (=> b!6750167 (=> (not res!2761096) (not e!4076719))))

(assert (=> b!6750167 (= res!2761096 (dynLambda!26302 lambda!379586 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6750168 () Bool)

(assert (=> b!6750168 (= e!4076719 (forall!15778 (t!379743 (exprs!6465 (h!72368 zl!343))) lambda!379586))))

(assert (= (and d!2120398 (not res!2761095)) b!6750167))

(assert (= (and b!6750167 res!2761096) b!6750168))

(declare-fun b_lambda!254225 () Bool)

(assert (=> (not b_lambda!254225) (not b!6750167)))

(declare-fun m!7504592 () Bool)

(assert (=> b!6750167 m!7504592))

(declare-fun m!7504594 () Bool)

(assert (=> b!6750168 m!7504594))

(assert (=> d!2119862 d!2120398))

(declare-fun d!2120400 () Bool)

(declare-fun res!2761097 () Bool)

(declare-fun e!4076720 () Bool)

(assert (=> d!2120400 (=> res!2761097 e!4076720)))

(assert (=> d!2120400 (= res!2761097 ((_ is Nil!65918) (exprs!6465 lt!2440701)))))

(assert (=> d!2120400 (= (forall!15778 (exprs!6465 lt!2440701) lambda!379575) e!4076720)))

(declare-fun b!6750169 () Bool)

(declare-fun e!4076721 () Bool)

(assert (=> b!6750169 (= e!4076720 e!4076721)))

(declare-fun res!2761098 () Bool)

(assert (=> b!6750169 (=> (not res!2761098) (not e!4076721))))

(assert (=> b!6750169 (= res!2761098 (dynLambda!26302 lambda!379575 (h!72366 (exprs!6465 lt!2440701))))))

(declare-fun b!6750170 () Bool)

(assert (=> b!6750170 (= e!4076721 (forall!15778 (t!379743 (exprs!6465 lt!2440701)) lambda!379575))))

(assert (= (and d!2120400 (not res!2761097)) b!6750169))

(assert (= (and b!6750169 res!2761098) b!6750170))

(declare-fun b_lambda!254227 () Bool)

(assert (=> (not b_lambda!254227) (not b!6750169)))

(declare-fun m!7504596 () Bool)

(assert (=> b!6750169 m!7504596))

(declare-fun m!7504598 () Bool)

(assert (=> b!6750170 m!7504598))

(assert (=> d!2119814 d!2120400))

(declare-fun d!2120402 () Bool)

(assert (=> d!2120402 true))

(assert (=> d!2120402 true))

(declare-fun res!2761099 () Bool)

(assert (=> d!2120402 (= (choose!50341 lambda!379506) res!2761099)))

(assert (=> d!2119772 d!2120402))

(assert (=> b!6748806 d!2120286))

(assert (=> b!6748806 d!2120288))

(declare-fun b!6750171 () Bool)

(declare-fun e!4076724 () Bool)

(declare-fun e!4076722 () Bool)

(assert (=> b!6750171 (= e!4076724 e!4076722)))

(declare-fun res!2761101 () Bool)

(assert (=> b!6750171 (= res!2761101 (not (nullable!6566 (reg!16910 lt!2440805))))))

(assert (=> b!6750171 (=> (not res!2761101) (not e!4076722))))

(declare-fun b!6750172 () Bool)

(declare-fun e!4076727 () Bool)

(declare-fun call!610508 () Bool)

(assert (=> b!6750172 (= e!4076727 call!610508)))

(declare-fun b!6750173 () Bool)

(declare-fun res!2761104 () Bool)

(assert (=> b!6750173 (=> (not res!2761104) (not e!4076727))))

(declare-fun call!610510 () Bool)

(assert (=> b!6750173 (= res!2761104 call!610510)))

(declare-fun e!4076725 () Bool)

(assert (=> b!6750173 (= e!4076725 e!4076727)))

(declare-fun d!2120404 () Bool)

(declare-fun res!2761102 () Bool)

(declare-fun e!4076728 () Bool)

(assert (=> d!2120404 (=> res!2761102 e!4076728)))

(assert (=> d!2120404 (= res!2761102 ((_ is ElementMatch!16581) lt!2440805))))

(assert (=> d!2120404 (= (validRegex!8317 lt!2440805) e!4076728)))

(declare-fun b!6750174 () Bool)

(declare-fun res!2761100 () Bool)

(declare-fun e!4076726 () Bool)

(assert (=> b!6750174 (=> res!2761100 e!4076726)))

(assert (=> b!6750174 (= res!2761100 (not ((_ is Concat!25426) lt!2440805)))))

(assert (=> b!6750174 (= e!4076725 e!4076726)))

(declare-fun b!6750175 () Bool)

(declare-fun e!4076723 () Bool)

(assert (=> b!6750175 (= e!4076723 call!610508)))

(declare-fun b!6750176 () Bool)

(declare-fun call!610509 () Bool)

(assert (=> b!6750176 (= e!4076722 call!610509)))

(declare-fun b!6750177 () Bool)

(assert (=> b!6750177 (= e!4076726 e!4076723)))

(declare-fun res!2761103 () Bool)

(assert (=> b!6750177 (=> (not res!2761103) (not e!4076723))))

(assert (=> b!6750177 (= res!2761103 call!610510)))

(declare-fun bm!610503 () Bool)

(assert (=> bm!610503 (= call!610508 call!610509)))

(declare-fun bm!610504 () Bool)

(declare-fun c!1252591 () Bool)

(assert (=> bm!610504 (= call!610510 (validRegex!8317 (ite c!1252591 (regOne!33675 lt!2440805) (regOne!33674 lt!2440805))))))

(declare-fun bm!610505 () Bool)

(declare-fun c!1252590 () Bool)

(assert (=> bm!610505 (= call!610509 (validRegex!8317 (ite c!1252590 (reg!16910 lt!2440805) (ite c!1252591 (regTwo!33675 lt!2440805) (regTwo!33674 lt!2440805)))))))

(declare-fun b!6750178 () Bool)

(assert (=> b!6750178 (= e!4076724 e!4076725)))

(assert (=> b!6750178 (= c!1252591 ((_ is Union!16581) lt!2440805))))

(declare-fun b!6750179 () Bool)

(assert (=> b!6750179 (= e!4076728 e!4076724)))

(assert (=> b!6750179 (= c!1252590 ((_ is Star!16581) lt!2440805))))

(assert (= (and d!2120404 (not res!2761102)) b!6750179))

(assert (= (and b!6750179 c!1252590) b!6750171))

(assert (= (and b!6750179 (not c!1252590)) b!6750178))

(assert (= (and b!6750171 res!2761101) b!6750176))

(assert (= (and b!6750178 c!1252591) b!6750173))

(assert (= (and b!6750178 (not c!1252591)) b!6750174))

(assert (= (and b!6750173 res!2761104) b!6750172))

(assert (= (and b!6750174 (not res!2761100)) b!6750177))

(assert (= (and b!6750177 res!2761103) b!6750175))

(assert (= (or b!6750172 b!6750175) bm!610503))

(assert (= (or b!6750173 b!6750177) bm!610504))

(assert (= (or b!6750176 bm!610503) bm!610505))

(declare-fun m!7504600 () Bool)

(assert (=> b!6750171 m!7504600))

(declare-fun m!7504602 () Bool)

(assert (=> bm!610504 m!7504602))

(declare-fun m!7504604 () Bool)

(assert (=> bm!610505 m!7504604))

(assert (=> d!2119830 d!2120404))

(declare-fun bs!1794304 () Bool)

(declare-fun d!2120406 () Bool)

(assert (= bs!1794304 (and d!2120406 d!2120342)))

(declare-fun lambda!379660 () Int)

(assert (=> bs!1794304 (= lambda!379660 lambda!379648)))

(declare-fun bs!1794305 () Bool)

(assert (= bs!1794305 (and d!2120406 d!2120340)))

(assert (=> bs!1794305 (= lambda!379660 lambda!379647)))

(declare-fun bs!1794306 () Bool)

(assert (= bs!1794306 (and d!2120406 d!2120364)))

(assert (=> bs!1794306 (= lambda!379660 lambda!379651)))

(declare-fun bs!1794307 () Bool)

(assert (= bs!1794307 (and d!2120406 d!2119732)))

(assert (=> bs!1794307 (= lambda!379660 lambda!379537)))

(declare-fun bs!1794308 () Bool)

(assert (= bs!1794308 (and d!2120406 d!2119862)))

(assert (=> bs!1794308 (= lambda!379660 lambda!379586)))

(declare-fun bs!1794309 () Bool)

(assert (= bs!1794309 (and d!2120406 d!2119814)))

(assert (=> bs!1794309 (= lambda!379660 lambda!379575)))

(declare-fun bs!1794310 () Bool)

(assert (= bs!1794310 (and d!2120406 d!2119876)))

(assert (=> bs!1794310 (= lambda!379660 lambda!379592)))

(declare-fun bs!1794311 () Bool)

(assert (= bs!1794311 (and d!2120406 d!2119874)))

(assert (=> bs!1794311 (= lambda!379660 lambda!379589)))

(declare-fun bs!1794312 () Bool)

(assert (= bs!1794312 (and d!2120406 d!2120206)))

(assert (=> bs!1794312 (= lambda!379660 lambda!379631)))

(declare-fun bs!1794313 () Bool)

(assert (= bs!1794313 (and d!2120406 d!2119854)))

(assert (=> bs!1794313 (= lambda!379660 lambda!379583)))

(declare-fun bs!1794314 () Bool)

(assert (= bs!1794314 (and d!2120406 d!2120256)))

(assert (=> bs!1794314 (= lambda!379660 lambda!379641)))

(declare-fun b!6750180 () Bool)

(declare-fun e!4076730 () Bool)

(declare-fun lt!2440886 () Regex!16581)

(assert (=> b!6750180 (= e!4076730 (isEmptyLang!1953 lt!2440886))))

(declare-fun b!6750181 () Bool)

(declare-fun e!4076734 () Regex!16581)

(declare-fun e!4076729 () Regex!16581)

(assert (=> b!6750181 (= e!4076734 e!4076729)))

(declare-fun c!1252595 () Bool)

(assert (=> b!6750181 (= c!1252595 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))

(declare-fun e!4076733 () Bool)

(assert (=> d!2120406 e!4076733))

(declare-fun res!2761106 () Bool)

(assert (=> d!2120406 (=> (not res!2761106) (not e!4076733))))

(assert (=> d!2120406 (= res!2761106 (validRegex!8317 lt!2440886))))

(assert (=> d!2120406 (= lt!2440886 e!4076734)))

(declare-fun c!1252593 () Bool)

(declare-fun e!4076731 () Bool)

(assert (=> d!2120406 (= c!1252593 e!4076731)))

(declare-fun res!2761105 () Bool)

(assert (=> d!2120406 (=> (not res!2761105) (not e!4076731))))

(assert (=> d!2120406 (= res!2761105 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))

(assert (=> d!2120406 (forall!15778 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920)) lambda!379660)))

(assert (=> d!2120406 (= (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))) lt!2440886)))

(declare-fun b!6750182 () Bool)

(declare-fun e!4076732 () Bool)

(assert (=> b!6750182 (= e!4076732 (isUnion!1383 lt!2440886))))

(declare-fun b!6750183 () Bool)

(assert (=> b!6750183 (= e!4076729 (Union!16581 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))) (generalisedUnion!2425 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))))

(declare-fun b!6750184 () Bool)

(assert (=> b!6750184 (= e!4076733 e!4076730)))

(declare-fun c!1252594 () Bool)

(assert (=> b!6750184 (= c!1252594 (isEmpty!38271 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))

(declare-fun b!6750185 () Bool)

(assert (=> b!6750185 (= e!4076731 (isEmpty!38271 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920)))))))

(declare-fun b!6750186 () Bool)

(assert (=> b!6750186 (= e!4076732 (= lt!2440886 (head!13584 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920)))))))

(declare-fun b!6750187 () Bool)

(assert (=> b!6750187 (= e!4076734 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920))))))

(declare-fun b!6750188 () Bool)

(assert (=> b!6750188 (= e!4076730 e!4076732)))

(declare-fun c!1252592 () Bool)

(assert (=> b!6750188 (= c!1252592 (isEmpty!38271 (tail!12669 (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920)))))))

(declare-fun b!6750189 () Bool)

(assert (=> b!6750189 (= e!4076729 EmptyLang!16581)))

(assert (= (and d!2120406 res!2761105) b!6750185))

(assert (= (and d!2120406 c!1252593) b!6750187))

(assert (= (and d!2120406 (not c!1252593)) b!6750181))

(assert (= (and b!6750181 c!1252595) b!6750183))

(assert (= (and b!6750181 (not c!1252595)) b!6750189))

(assert (= (and d!2120406 res!2761106) b!6750184))

(assert (= (and b!6750184 c!1252594) b!6750180))

(assert (= (and b!6750184 (not c!1252594)) b!6750188))

(assert (= (and b!6750188 c!1252592) b!6750186))

(assert (= (and b!6750188 (not c!1252592)) b!6750182))

(declare-fun m!7504606 () Bool)

(assert (=> b!6750185 m!7504606))

(declare-fun m!7504608 () Bool)

(assert (=> d!2120406 m!7504608))

(assert (=> d!2120406 m!7503354))

(declare-fun m!7504610 () Bool)

(assert (=> d!2120406 m!7504610))

(declare-fun m!7504612 () Bool)

(assert (=> b!6750182 m!7504612))

(declare-fun m!7504614 () Bool)

(assert (=> b!6750180 m!7504614))

(declare-fun m!7504616 () Bool)

(assert (=> b!6750183 m!7504616))

(assert (=> b!6750188 m!7503354))

(declare-fun m!7504618 () Bool)

(assert (=> b!6750188 m!7504618))

(assert (=> b!6750188 m!7504618))

(declare-fun m!7504620 () Bool)

(assert (=> b!6750188 m!7504620))

(assert (=> b!6750184 m!7503354))

(declare-fun m!7504622 () Bool)

(assert (=> b!6750184 m!7504622))

(assert (=> b!6750186 m!7503354))

(declare-fun m!7504624 () Bool)

(assert (=> b!6750186 m!7504624))

(assert (=> d!2119830 d!2120406))

(declare-fun bs!1794315 () Bool)

(declare-fun d!2120408 () Bool)

(assert (= bs!1794315 (and d!2120408 d!2120342)))

(declare-fun lambda!379661 () Int)

(assert (=> bs!1794315 (= lambda!379661 lambda!379648)))

(declare-fun bs!1794316 () Bool)

(assert (= bs!1794316 (and d!2120408 d!2120340)))

(assert (=> bs!1794316 (= lambda!379661 lambda!379647)))

(declare-fun bs!1794317 () Bool)

(assert (= bs!1794317 (and d!2120408 d!2120364)))

(assert (=> bs!1794317 (= lambda!379661 lambda!379651)))

(declare-fun bs!1794318 () Bool)

(assert (= bs!1794318 (and d!2120408 d!2119732)))

(assert (=> bs!1794318 (= lambda!379661 lambda!379537)))

(declare-fun bs!1794319 () Bool)

(assert (= bs!1794319 (and d!2120408 d!2119862)))

(assert (=> bs!1794319 (= lambda!379661 lambda!379586)))

(declare-fun bs!1794320 () Bool)

(assert (= bs!1794320 (and d!2120408 d!2119876)))

(assert (=> bs!1794320 (= lambda!379661 lambda!379592)))

(declare-fun bs!1794321 () Bool)

(assert (= bs!1794321 (and d!2120408 d!2119874)))

(assert (=> bs!1794321 (= lambda!379661 lambda!379589)))

(declare-fun bs!1794322 () Bool)

(assert (= bs!1794322 (and d!2120408 d!2120206)))

(assert (=> bs!1794322 (= lambda!379661 lambda!379631)))

(declare-fun bs!1794323 () Bool)

(assert (= bs!1794323 (and d!2120408 d!2120406)))

(assert (=> bs!1794323 (= lambda!379661 lambda!379660)))

(declare-fun bs!1794324 () Bool)

(assert (= bs!1794324 (and d!2120408 d!2119814)))

(assert (=> bs!1794324 (= lambda!379661 lambda!379575)))

(declare-fun bs!1794325 () Bool)

(assert (= bs!1794325 (and d!2120408 d!2119854)))

(assert (=> bs!1794325 (= lambda!379661 lambda!379583)))

(declare-fun bs!1794326 () Bool)

(assert (= bs!1794326 (and d!2120408 d!2120256)))

(assert (=> bs!1794326 (= lambda!379661 lambda!379641)))

(declare-fun lt!2440887 () List!66042)

(assert (=> d!2120408 (forall!15778 lt!2440887 lambda!379661)))

(declare-fun e!4076735 () List!66042)

(assert (=> d!2120408 (= lt!2440887 e!4076735)))

(declare-fun c!1252596 () Bool)

(assert (=> d!2120408 (= c!1252596 ((_ is Cons!65920) (Cons!65920 lt!2440713 Nil!65920)))))

(assert (=> d!2120408 (= (unfocusZipperList!2002 (Cons!65920 lt!2440713 Nil!65920)) lt!2440887)))

(declare-fun b!6750190 () Bool)

(assert (=> b!6750190 (= e!4076735 (Cons!65918 (generalisedConcat!2178 (exprs!6465 (h!72368 (Cons!65920 lt!2440713 Nil!65920)))) (unfocusZipperList!2002 (t!379745 (Cons!65920 lt!2440713 Nil!65920)))))))

(declare-fun b!6750191 () Bool)

(assert (=> b!6750191 (= e!4076735 Nil!65918)))

(assert (= (and d!2120408 c!1252596) b!6750190))

(assert (= (and d!2120408 (not c!1252596)) b!6750191))

(declare-fun m!7504626 () Bool)

(assert (=> d!2120408 m!7504626))

(declare-fun m!7504628 () Bool)

(assert (=> b!6750190 m!7504628))

(declare-fun m!7504630 () Bool)

(assert (=> b!6750190 m!7504630))

(assert (=> d!2119830 d!2120408))

(declare-fun d!2120410 () Bool)

(assert (=> d!2120410 (= (isConcat!1467 lt!2440749) ((_ is Concat!25426) lt!2440749))))

(assert (=> b!6748503 d!2120410))

(assert (=> b!6748939 d!2120354))

(declare-fun d!2120412 () Bool)

(assert (=> d!2120412 (= (Exists!3649 (ite c!1252219 lambda!379581 lambda!379582)) (choose!50341 (ite c!1252219 lambda!379581 lambda!379582)))))

(declare-fun bs!1794327 () Bool)

(assert (= bs!1794327 d!2120412))

(declare-fun m!7504632 () Bool)

(assert (=> bs!1794327 m!7504632))

(assert (=> bm!610263 d!2120412))

(declare-fun d!2120414 () Bool)

(assert (=> d!2120414 (= (nullable!6566 lt!2440700) (nullableFct!2474 lt!2440700))))

(declare-fun bs!1794328 () Bool)

(assert (= bs!1794328 d!2120414))

(declare-fun m!7504634 () Bool)

(assert (=> bs!1794328 m!7504634))

(assert (=> b!6748919 d!2120414))

(declare-fun bs!1794329 () Bool)

(declare-fun d!2120416 () Bool)

(assert (= bs!1794329 (and d!2120416 d!2120342)))

(declare-fun lambda!379662 () Int)

(assert (=> bs!1794329 (= lambda!379662 lambda!379648)))

(declare-fun bs!1794330 () Bool)

(assert (= bs!1794330 (and d!2120416 d!2120340)))

(assert (=> bs!1794330 (= lambda!379662 lambda!379647)))

(declare-fun bs!1794331 () Bool)

(assert (= bs!1794331 (and d!2120416 d!2120364)))

(assert (=> bs!1794331 (= lambda!379662 lambda!379651)))

(declare-fun bs!1794332 () Bool)

(assert (= bs!1794332 (and d!2120416 d!2119862)))

(assert (=> bs!1794332 (= lambda!379662 lambda!379586)))

(declare-fun bs!1794333 () Bool)

(assert (= bs!1794333 (and d!2120416 d!2119876)))

(assert (=> bs!1794333 (= lambda!379662 lambda!379592)))

(declare-fun bs!1794334 () Bool)

(assert (= bs!1794334 (and d!2120416 d!2119874)))

(assert (=> bs!1794334 (= lambda!379662 lambda!379589)))

(declare-fun bs!1794335 () Bool)

(assert (= bs!1794335 (and d!2120416 d!2120206)))

(assert (=> bs!1794335 (= lambda!379662 lambda!379631)))

(declare-fun bs!1794336 () Bool)

(assert (= bs!1794336 (and d!2120416 d!2119732)))

(assert (=> bs!1794336 (= lambda!379662 lambda!379537)))

(declare-fun bs!1794337 () Bool)

(assert (= bs!1794337 (and d!2120416 d!2120408)))

(assert (=> bs!1794337 (= lambda!379662 lambda!379661)))

(declare-fun bs!1794338 () Bool)

(assert (= bs!1794338 (and d!2120416 d!2120406)))

(assert (=> bs!1794338 (= lambda!379662 lambda!379660)))

(declare-fun bs!1794339 () Bool)

(assert (= bs!1794339 (and d!2120416 d!2119814)))

(assert (=> bs!1794339 (= lambda!379662 lambda!379575)))

(declare-fun bs!1794340 () Bool)

(assert (= bs!1794340 (and d!2120416 d!2119854)))

(assert (=> bs!1794340 (= lambda!379662 lambda!379583)))

(declare-fun bs!1794341 () Bool)

(assert (= bs!1794341 (and d!2120416 d!2120256)))

(assert (=> bs!1794341 (= lambda!379662 lambda!379641)))

(assert (=> d!2120416 (= (inv!84699 setElem!46123) (forall!15778 (exprs!6465 setElem!46123) lambda!379662))))

(declare-fun bs!1794342 () Bool)

(assert (= bs!1794342 d!2120416))

(declare-fun m!7504636 () Bool)

(assert (=> bs!1794342 m!7504636))

(assert (=> setNonEmpty!46123 d!2120416))

(assert (=> d!2119844 d!2119766))

(assert (=> d!2119844 d!2119870))

(declare-fun d!2120418 () Bool)

(assert (=> d!2120418 (= ($colon$colon!2395 (exprs!6465 (Context!11931 Nil!65918)) (ite (or c!1252089 c!1252085) (regTwo!33674 r!7292) r!7292)) (Cons!65918 (ite (or c!1252089 c!1252085) (regTwo!33674 r!7292) r!7292) (exprs!6465 (Context!11931 Nil!65918))))))

(assert (=> bm!610198 d!2120418))

(declare-fun d!2120420 () Bool)

(assert (=> d!2120420 (= (isEmpty!38272 lt!2440707) (not ((_ is Some!16467) lt!2440707)))))

(assert (=> d!2119760 d!2120420))

(declare-fun d!2120422 () Bool)

(declare-fun c!1252600 () Bool)

(assert (=> d!2120422 (= c!1252600 (and ((_ is ElementMatch!16581) (h!72366 (exprs!6465 lt!2440701))) (= (c!1252033 (h!72366 (exprs!6465 lt!2440701))) (h!72367 s!2326))))))

(declare-fun e!4076741 () (InoxSet Context!11930))

(assert (=> d!2120422 (= (derivationStepZipperDown!1809 (h!72366 (exprs!6465 lt!2440701)) (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (h!72367 s!2326)) e!4076741)))

(declare-fun b!6750192 () Bool)

(declare-fun e!4076740 () (InoxSet Context!11930))

(declare-fun call!610511 () (InoxSet Context!11930))

(declare-fun call!610512 () (InoxSet Context!11930))

(assert (=> b!6750192 (= e!4076740 ((_ map or) call!610511 call!610512))))

(declare-fun b!6750193 () Bool)

(declare-fun e!4076737 () (InoxSet Context!11930))

(declare-fun e!4076736 () (InoxSet Context!11930))

(assert (=> b!6750193 (= e!4076737 e!4076736)))

(declare-fun c!1252597 () Bool)

(assert (=> b!6750193 (= c!1252597 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440701))))))

(declare-fun c!1252601 () Bool)

(declare-fun call!610515 () List!66042)

(declare-fun bm!610506 () Bool)

(assert (=> bm!610506 (= call!610515 ($colon$colon!2395 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701)))) (ite (or c!1252601 c!1252597) (regTwo!33674 (h!72366 (exprs!6465 lt!2440701))) (h!72366 (exprs!6465 lt!2440701)))))))

(declare-fun b!6750194 () Bool)

(declare-fun e!4076738 () Bool)

(assert (=> b!6750194 (= c!1252601 e!4076738)))

(declare-fun res!2761107 () Bool)

(assert (=> b!6750194 (=> (not res!2761107) (not e!4076738))))

(assert (=> b!6750194 (= res!2761107 ((_ is Concat!25426) (h!72366 (exprs!6465 lt!2440701))))))

(assert (=> b!6750194 (= e!4076740 e!4076737)))

(declare-fun b!6750195 () Bool)

(declare-fun call!610513 () (InoxSet Context!11930))

(assert (=> b!6750195 (= e!4076737 ((_ map or) call!610511 call!610513))))

(declare-fun bm!610507 () Bool)

(declare-fun call!610514 () List!66042)

(declare-fun c!1252598 () Bool)

(assert (=> bm!610507 (= call!610512 (derivationStepZipperDown!1809 (ite c!1252598 (regTwo!33675 (h!72366 (exprs!6465 lt!2440701))) (ite c!1252601 (regTwo!33674 (h!72366 (exprs!6465 lt!2440701))) (ite c!1252597 (regOne!33674 (h!72366 (exprs!6465 lt!2440701))) (reg!16910 (h!72366 (exprs!6465 lt!2440701)))))) (ite (or c!1252598 c!1252601) (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (Context!11931 call!610514)) (h!72367 s!2326)))))

(declare-fun b!6750196 () Bool)

(declare-fun e!4076739 () (InoxSet Context!11930))

(assert (=> b!6750196 (= e!4076739 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6750197 () Bool)

(assert (=> b!6750197 (= e!4076741 e!4076740)))

(assert (=> b!6750197 (= c!1252598 ((_ is Union!16581) (h!72366 (exprs!6465 lt!2440701))))))

(declare-fun bm!610508 () Bool)

(declare-fun call!610516 () (InoxSet Context!11930))

(assert (=> bm!610508 (= call!610516 call!610513)))

(declare-fun b!6750198 () Bool)

(assert (=> b!6750198 (= e!4076738 (nullable!6566 (regOne!33674 (h!72366 (exprs!6465 lt!2440701)))))))

(declare-fun bm!610509 () Bool)

(assert (=> bm!610509 (= call!610514 call!610515)))

(declare-fun bm!610510 () Bool)

(assert (=> bm!610510 (= call!610513 call!610512)))

(declare-fun b!6750199 () Bool)

(assert (=> b!6750199 (= e!4076741 (store ((as const (Array Context!11930 Bool)) false) (Context!11931 (t!379743 (exprs!6465 lt!2440701))) true))))

(declare-fun bm!610511 () Bool)

(assert (=> bm!610511 (= call!610511 (derivationStepZipperDown!1809 (ite c!1252598 (regOne!33675 (h!72366 (exprs!6465 lt!2440701))) (regOne!33674 (h!72366 (exprs!6465 lt!2440701)))) (ite c!1252598 (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (Context!11931 call!610515)) (h!72367 s!2326)))))

(declare-fun b!6750200 () Bool)

(declare-fun c!1252599 () Bool)

(assert (=> b!6750200 (= c!1252599 ((_ is Star!16581) (h!72366 (exprs!6465 lt!2440701))))))

(assert (=> b!6750200 (= e!4076736 e!4076739)))

(declare-fun b!6750201 () Bool)

(assert (=> b!6750201 (= e!4076739 call!610516)))

(declare-fun b!6750202 () Bool)

(assert (=> b!6750202 (= e!4076736 call!610516)))

(assert (= (and d!2120422 c!1252600) b!6750199))

(assert (= (and d!2120422 (not c!1252600)) b!6750197))

(assert (= (and b!6750197 c!1252598) b!6750192))

(assert (= (and b!6750197 (not c!1252598)) b!6750194))

(assert (= (and b!6750194 res!2761107) b!6750198))

(assert (= (and b!6750194 c!1252601) b!6750195))

(assert (= (and b!6750194 (not c!1252601)) b!6750193))

(assert (= (and b!6750193 c!1252597) b!6750202))

(assert (= (and b!6750193 (not c!1252597)) b!6750200))

(assert (= (and b!6750200 c!1252599) b!6750201))

(assert (= (and b!6750200 (not c!1252599)) b!6750196))

(assert (= (or b!6750202 b!6750201) bm!610509))

(assert (= (or b!6750202 b!6750201) bm!610508))

(assert (= (or b!6750195 bm!610509) bm!610506))

(assert (= (or b!6750195 bm!610508) bm!610510))

(assert (= (or b!6750192 bm!610510) bm!610507))

(assert (= (or b!6750192 b!6750195) bm!610511))

(declare-fun m!7504638 () Bool)

(assert (=> bm!610507 m!7504638))

(declare-fun m!7504640 () Bool)

(assert (=> bm!610506 m!7504640))

(declare-fun m!7504642 () Bool)

(assert (=> bm!610511 m!7504642))

(declare-fun m!7504644 () Bool)

(assert (=> b!6750199 m!7504644))

(declare-fun m!7504646 () Bool)

(assert (=> b!6750198 m!7504646))

(assert (=> bm!610246 d!2120422))

(declare-fun d!2120424 () Bool)

(assert (=> d!2120424 (= (isEmptyLang!1953 lt!2440822) ((_ is EmptyLang!16581) lt!2440822))))

(assert (=> b!6748982 d!2120424))

(assert (=> bm!610264 d!2119766))

(declare-fun d!2120426 () Bool)

(assert (=> d!2120426 (= (Exists!3649 (ite c!1252228 lambda!379584 lambda!379585)) (choose!50341 (ite c!1252228 lambda!379584 lambda!379585)))))

(declare-fun bs!1794343 () Bool)

(assert (= bs!1794343 d!2120426))

(declare-fun m!7504648 () Bool)

(assert (=> bs!1794343 m!7504648))

(assert (=> bm!610267 d!2120426))

(assert (=> bm!610278 d!2120396))

(declare-fun d!2120428 () Bool)

(declare-fun c!1252602 () Bool)

(assert (=> d!2120428 (= c!1252602 (isEmpty!38269 (tail!12671 (t!379744 s!2326))))))

(declare-fun e!4076742 () Bool)

(assert (=> d!2120428 (= (matchZipper!2567 (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (head!13586 (t!379744 s!2326))) (tail!12671 (t!379744 s!2326))) e!4076742)))

(declare-fun b!6750203 () Bool)

(assert (=> b!6750203 (= e!4076742 (nullableZipper!2294 (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (head!13586 (t!379744 s!2326)))))))

(declare-fun b!6750204 () Bool)

(assert (=> b!6750204 (= e!4076742 (matchZipper!2567 (derivationStepZipper!2525 (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (head!13586 (t!379744 s!2326))) (head!13586 (tail!12671 (t!379744 s!2326)))) (tail!12671 (tail!12671 (t!379744 s!2326)))))))

(assert (= (and d!2120428 c!1252602) b!6750203))

(assert (= (and d!2120428 (not c!1252602)) b!6750204))

(assert (=> d!2120428 m!7503526))

(declare-fun m!7504650 () Bool)

(assert (=> d!2120428 m!7504650))

(assert (=> b!6750203 m!7503524))

(declare-fun m!7504652 () Bool)

(assert (=> b!6750203 m!7504652))

(assert (=> b!6750204 m!7503526))

(declare-fun m!7504654 () Bool)

(assert (=> b!6750204 m!7504654))

(assert (=> b!6750204 m!7503524))

(assert (=> b!6750204 m!7504654))

(declare-fun m!7504656 () Bool)

(assert (=> b!6750204 m!7504656))

(assert (=> b!6750204 m!7503526))

(declare-fun m!7504658 () Bool)

(assert (=> b!6750204 m!7504658))

(assert (=> b!6750204 m!7504656))

(assert (=> b!6750204 m!7504658))

(declare-fun m!7504660 () Bool)

(assert (=> b!6750204 m!7504660))

(assert (=> b!6749017 d!2120428))

(declare-fun bs!1794344 () Bool)

(declare-fun d!2120430 () Bool)

(assert (= bs!1794344 (and d!2120430 b!6748154)))

(declare-fun lambda!379663 () Int)

(assert (=> bs!1794344 (= (= (head!13586 (t!379744 s!2326)) (h!72367 s!2326)) (= lambda!379663 lambda!379509))))

(declare-fun bs!1794345 () Bool)

(assert (= bs!1794345 (and d!2120430 d!2119820)))

(assert (=> bs!1794345 (= (= (head!13586 (t!379744 s!2326)) (h!72367 s!2326)) (= lambda!379663 lambda!379576))))

(declare-fun bs!1794346 () Bool)

(assert (= bs!1794346 (and d!2120430 d!2119718)))

(assert (=> bs!1794346 (= (= (head!13586 (t!379744 s!2326)) (h!72367 s!2326)) (= lambda!379663 lambda!379524))))

(declare-fun bs!1794347 () Bool)

(assert (= bs!1794347 (and d!2120430 d!2119886)))

(assert (=> bs!1794347 (= (= (head!13586 (t!379744 s!2326)) (h!72367 s!2326)) (= lambda!379663 lambda!379593))))

(declare-fun bs!1794348 () Bool)

(assert (= bs!1794348 (and d!2120430 d!2120264)))

(assert (=> bs!1794348 (= (= (head!13586 (t!379744 s!2326)) (head!13586 s!2326)) (= lambda!379663 lambda!379642))))

(assert (=> d!2120430 true))

(assert (=> d!2120430 (= (derivationStepZipper!2525 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) (head!13586 (t!379744 s!2326))) (flatMap!2062 (derivationStepZipper!2525 lt!2440717 (h!72367 s!2326)) lambda!379663))))

(declare-fun bs!1794349 () Bool)

(assert (= bs!1794349 d!2120430))

(assert (=> bs!1794349 m!7502894))

(declare-fun m!7504662 () Bool)

(assert (=> bs!1794349 m!7504662))

(assert (=> b!6749017 d!2120430))

(declare-fun d!2120432 () Bool)

(assert (=> d!2120432 (= (head!13586 (t!379744 s!2326)) (h!72367 (t!379744 s!2326)))))

(assert (=> b!6749017 d!2120432))

(declare-fun d!2120434 () Bool)

(assert (=> d!2120434 (= (tail!12671 (t!379744 s!2326)) (t!379744 (t!379744 s!2326)))))

(assert (=> b!6749017 d!2120434))

(declare-fun bs!1794350 () Bool)

(declare-fun d!2120436 () Bool)

(assert (= bs!1794350 (and d!2120436 d!2120342)))

(declare-fun lambda!379664 () Int)

(assert (=> bs!1794350 (= lambda!379664 lambda!379648)))

(declare-fun bs!1794351 () Bool)

(assert (= bs!1794351 (and d!2120436 d!2120340)))

(assert (=> bs!1794351 (= lambda!379664 lambda!379647)))

(declare-fun bs!1794352 () Bool)

(assert (= bs!1794352 (and d!2120436 d!2120364)))

(assert (=> bs!1794352 (= lambda!379664 lambda!379651)))

(declare-fun bs!1794353 () Bool)

(assert (= bs!1794353 (and d!2120436 d!2119862)))

(assert (=> bs!1794353 (= lambda!379664 lambda!379586)))

(declare-fun bs!1794354 () Bool)

(assert (= bs!1794354 (and d!2120436 d!2120416)))

(assert (=> bs!1794354 (= lambda!379664 lambda!379662)))

(declare-fun bs!1794355 () Bool)

(assert (= bs!1794355 (and d!2120436 d!2119876)))

(assert (=> bs!1794355 (= lambda!379664 lambda!379592)))

(declare-fun bs!1794356 () Bool)

(assert (= bs!1794356 (and d!2120436 d!2119874)))

(assert (=> bs!1794356 (= lambda!379664 lambda!379589)))

(declare-fun bs!1794357 () Bool)

(assert (= bs!1794357 (and d!2120436 d!2120206)))

(assert (=> bs!1794357 (= lambda!379664 lambda!379631)))

(declare-fun bs!1794358 () Bool)

(assert (= bs!1794358 (and d!2120436 d!2119732)))

(assert (=> bs!1794358 (= lambda!379664 lambda!379537)))

(declare-fun bs!1794359 () Bool)

(assert (= bs!1794359 (and d!2120436 d!2120408)))

(assert (=> bs!1794359 (= lambda!379664 lambda!379661)))

(declare-fun bs!1794360 () Bool)

(assert (= bs!1794360 (and d!2120436 d!2120406)))

(assert (=> bs!1794360 (= lambda!379664 lambda!379660)))

(declare-fun bs!1794361 () Bool)

(assert (= bs!1794361 (and d!2120436 d!2119814)))

(assert (=> bs!1794361 (= lambda!379664 lambda!379575)))

(declare-fun bs!1794362 () Bool)

(assert (= bs!1794362 (and d!2120436 d!2119854)))

(assert (=> bs!1794362 (= lambda!379664 lambda!379583)))

(declare-fun bs!1794363 () Bool)

(assert (= bs!1794363 (and d!2120436 d!2120256)))

(assert (=> bs!1794363 (= lambda!379664 lambda!379641)))

(assert (=> d!2120436 (= (inv!84699 (h!72368 (t!379745 zl!343))) (forall!15778 (exprs!6465 (h!72368 (t!379745 zl!343))) lambda!379664))))

(declare-fun bs!1794364 () Bool)

(assert (= bs!1794364 d!2120436))

(declare-fun m!7504664 () Bool)

(assert (=> bs!1794364 m!7504664))

(assert (=> b!6749053 d!2120436))

(declare-fun b!6750205 () Bool)

(declare-fun e!4076743 () (InoxSet Context!11930))

(assert (=> b!6750205 (= e!4076743 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2120438 () Bool)

(declare-fun c!1252603 () Bool)

(declare-fun e!4076744 () Bool)

(assert (=> d!2120438 (= c!1252603 e!4076744)))

(declare-fun res!2761108 () Bool)

(assert (=> d!2120438 (=> (not res!2761108) (not e!4076744))))

(assert (=> d!2120438 (= res!2761108 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))))))))

(declare-fun e!4076745 () (InoxSet Context!11930))

(assert (=> d!2120438 (= (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))) (h!72367 s!2326)) e!4076745)))

(declare-fun b!6750206 () Bool)

(declare-fun call!610517 () (InoxSet Context!11930))

(assert (=> b!6750206 (= e!4076743 call!610517)))

(declare-fun bm!610512 () Bool)

(assert (=> bm!610512 (= call!610517 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343))))))) (h!72367 s!2326)))))

(declare-fun b!6750207 () Bool)

(assert (=> b!6750207 (= e!4076745 ((_ map or) call!610517 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343))))))) (h!72367 s!2326))))))

(declare-fun b!6750208 () Bool)

(assert (=> b!6750208 (= e!4076745 e!4076743)))

(declare-fun c!1252604 () Bool)

(assert (=> b!6750208 (= c!1252604 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343)))))))))

(declare-fun b!6750209 () Bool)

(assert (=> b!6750209 (= e!4076744 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (h!72368 zl!343))))))))))

(assert (= (and d!2120438 res!2761108) b!6750209))

(assert (= (and d!2120438 c!1252603) b!6750207))

(assert (= (and d!2120438 (not c!1252603)) b!6750208))

(assert (= (and b!6750208 c!1252604) b!6750206))

(assert (= (and b!6750208 (not c!1252604)) b!6750205))

(assert (= (or b!6750207 b!6750206) bm!610512))

(declare-fun m!7504666 () Bool)

(assert (=> bm!610512 m!7504666))

(declare-fun m!7504668 () Bool)

(assert (=> b!6750207 m!7504668))

(declare-fun m!7504670 () Bool)

(assert (=> b!6750209 m!7504670))

(assert (=> b!6748893 d!2120438))

(declare-fun d!2120440 () Bool)

(declare-fun c!1252608 () Bool)

(assert (=> d!2120440 (= c!1252608 (and ((_ is ElementMatch!16581) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (= (c!1252033 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (h!72367 s!2326))))))

(declare-fun e!4076751 () (InoxSet Context!11930))

(assert (=> d!2120440 (= (derivationStepZipperDown!1809 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))) (ite c!1252205 lt!2440713 (Context!11931 call!610260)) (h!72367 s!2326)) e!4076751)))

(declare-fun b!6750210 () Bool)

(declare-fun e!4076750 () (InoxSet Context!11930))

(declare-fun call!610518 () (InoxSet Context!11930))

(declare-fun call!610519 () (InoxSet Context!11930))

(assert (=> b!6750210 (= e!4076750 ((_ map or) call!610518 call!610519))))

(declare-fun b!6750211 () Bool)

(declare-fun e!4076747 () (InoxSet Context!11930))

(declare-fun e!4076746 () (InoxSet Context!11930))

(assert (=> b!6750211 (= e!4076747 e!4076746)))

(declare-fun c!1252605 () Bool)

(assert (=> b!6750211 (= c!1252605 ((_ is Concat!25426) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))))))

(declare-fun call!610522 () List!66042)

(declare-fun c!1252609 () Bool)

(declare-fun bm!610513 () Bool)

(assert (=> bm!610513 (= call!610522 ($colon$colon!2395 (exprs!6465 (ite c!1252205 lt!2440713 (Context!11931 call!610260))) (ite (or c!1252609 c!1252605) (regTwo!33674 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))))))))

(declare-fun b!6750212 () Bool)

(declare-fun e!4076748 () Bool)

(assert (=> b!6750212 (= c!1252609 e!4076748)))

(declare-fun res!2761109 () Bool)

(assert (=> b!6750212 (=> (not res!2761109) (not e!4076748))))

(assert (=> b!6750212 (= res!2761109 ((_ is Concat!25426) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))))))

(assert (=> b!6750212 (= e!4076750 e!4076747)))

(declare-fun b!6750213 () Bool)

(declare-fun call!610520 () (InoxSet Context!11930))

(assert (=> b!6750213 (= e!4076747 ((_ map or) call!610518 call!610520))))

(declare-fun c!1252606 () Bool)

(declare-fun call!610521 () List!66042)

(declare-fun bm!610514 () Bool)

(assert (=> bm!610514 (= call!610519 (derivationStepZipperDown!1809 (ite c!1252606 (regTwo!33675 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (ite c!1252609 (regTwo!33674 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (ite c!1252605 (regOne!33674 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (reg!16910 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))))))) (ite (or c!1252606 c!1252609) (ite c!1252205 lt!2440713 (Context!11931 call!610260)) (Context!11931 call!610521)) (h!72367 s!2326)))))

(declare-fun b!6750214 () Bool)

(declare-fun e!4076749 () (InoxSet Context!11930))

(assert (=> b!6750214 (= e!4076749 ((as const (Array Context!11930 Bool)) false))))

(declare-fun b!6750215 () Bool)

(assert (=> b!6750215 (= e!4076751 e!4076750)))

(assert (=> b!6750215 (= c!1252606 ((_ is Union!16581) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))))))

(declare-fun bm!610515 () Bool)

(declare-fun call!610523 () (InoxSet Context!11930))

(assert (=> bm!610515 (= call!610523 call!610520)))

(declare-fun b!6750216 () Bool)

(assert (=> b!6750216 (= e!4076748 (nullable!6566 (regOne!33674 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))))))))

(declare-fun bm!610516 () Bool)

(assert (=> bm!610516 (= call!610521 call!610522)))

(declare-fun bm!610517 () Bool)

(assert (=> bm!610517 (= call!610520 call!610519)))

(declare-fun b!6750217 () Bool)

(assert (=> b!6750217 (= e!4076751 (store ((as const (Array Context!11930 Bool)) false) (ite c!1252205 lt!2440713 (Context!11931 call!610260)) true))))

(declare-fun bm!610518 () Bool)

(assert (=> bm!610518 (= call!610518 (derivationStepZipperDown!1809 (ite c!1252606 (regOne!33675 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (regOne!33674 (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292))))) (ite c!1252606 (ite c!1252205 lt!2440713 (Context!11931 call!610260)) (Context!11931 call!610522)) (h!72367 s!2326)))))

(declare-fun b!6750218 () Bool)

(declare-fun c!1252607 () Bool)

(assert (=> b!6750218 (= c!1252607 ((_ is Star!16581) (ite c!1252205 (regOne!33675 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))))))

(assert (=> b!6750218 (= e!4076746 e!4076749)))

(declare-fun b!6750219 () Bool)

(assert (=> b!6750219 (= e!4076749 call!610523)))

(declare-fun b!6750220 () Bool)

(assert (=> b!6750220 (= e!4076746 call!610523)))

(assert (= (and d!2120440 c!1252608) b!6750217))

(assert (= (and d!2120440 (not c!1252608)) b!6750215))

(assert (= (and b!6750215 c!1252606) b!6750210))

(assert (= (and b!6750215 (not c!1252606)) b!6750212))

(assert (= (and b!6750212 res!2761109) b!6750216))

(assert (= (and b!6750212 c!1252609) b!6750213))

(assert (= (and b!6750212 (not c!1252609)) b!6750211))

(assert (= (and b!6750211 c!1252605) b!6750220))

(assert (= (and b!6750211 (not c!1252605)) b!6750218))

(assert (= (and b!6750218 c!1252607) b!6750219))

(assert (= (and b!6750218 (not c!1252607)) b!6750214))

(assert (= (or b!6750220 b!6750219) bm!610516))

(assert (= (or b!6750220 b!6750219) bm!610515))

(assert (= (or b!6750213 bm!610516) bm!610513))

(assert (= (or b!6750213 bm!610515) bm!610517))

(assert (= (or b!6750210 bm!610517) bm!610514))

(assert (= (or b!6750210 b!6750213) bm!610518))

(declare-fun m!7504672 () Bool)

(assert (=> bm!610514 m!7504672))

(declare-fun m!7504674 () Bool)

(assert (=> bm!610513 m!7504674))

(declare-fun m!7504676 () Bool)

(assert (=> bm!610518 m!7504676))

(declare-fun m!7504678 () Bool)

(assert (=> b!6750217 m!7504678))

(declare-fun m!7504680 () Bool)

(assert (=> b!6750216 m!7504680))

(assert (=> bm!610256 d!2120440))

(assert (=> b!6748909 d!2120258))

(assert (=> b!6748909 d!2120194))

(declare-fun b!6750221 () Bool)

(declare-fun e!4076752 () (InoxSet Context!11930))

(assert (=> b!6750221 (= e!4076752 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2120442 () Bool)

(declare-fun c!1252610 () Bool)

(declare-fun e!4076753 () Bool)

(assert (=> d!2120442 (= c!1252610 e!4076753)))

(declare-fun res!2761110 () Bool)

(assert (=> d!2120442 (=> (not res!2761110) (not e!4076753))))

(assert (=> d!2120442 (= res!2761110 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))))

(declare-fun e!4076754 () (InoxSet Context!11930))

(assert (=> d!2120442 (= (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))) (h!72367 s!2326)) e!4076754)))

(declare-fun b!6750222 () Bool)

(declare-fun call!610524 () (InoxSet Context!11930))

(assert (=> b!6750222 (= e!4076752 call!610524)))

(declare-fun bm!610519 () Bool)

(assert (=> bm!610519 (= call!610524 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))) (h!72367 s!2326)))))

(declare-fun b!6750223 () Bool)

(assert (=> b!6750223 (= e!4076754 ((_ map or) call!610524 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))) (h!72367 s!2326))))))

(declare-fun b!6750224 () Bool)

(assert (=> b!6750224 (= e!4076754 e!4076752)))

(declare-fun c!1252611 () Bool)

(assert (=> b!6750224 (= c!1252611 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918))))))))))

(declare-fun b!6750225 () Bool)

(assert (=> b!6750225 (= e!4076753 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (Cons!65918 r!7292 Nil!65918)))))))))))

(assert (= (and d!2120442 res!2761110) b!6750225))

(assert (= (and d!2120442 c!1252610) b!6750223))

(assert (= (and d!2120442 (not c!1252610)) b!6750224))

(assert (= (and b!6750224 c!1252611) b!6750222))

(assert (= (and b!6750224 (not c!1252611)) b!6750221))

(assert (= (or b!6750223 b!6750222) bm!610519))

(declare-fun m!7504682 () Bool)

(assert (=> bm!610519 m!7504682))

(declare-fun m!7504684 () Bool)

(assert (=> b!6750223 m!7504684))

(declare-fun m!7504686 () Bool)

(assert (=> b!6750225 m!7504686))

(assert (=> b!6748417 d!2120442))

(declare-fun b!6750226 () Bool)

(declare-fun e!4076761 () Bool)

(declare-fun lt!2440888 () Bool)

(declare-fun call!610525 () Bool)

(assert (=> b!6750226 (= e!4076761 (= lt!2440888 call!610525))))

(declare-fun b!6750227 () Bool)

(declare-fun res!2761114 () Bool)

(declare-fun e!4076758 () Bool)

(assert (=> b!6750227 (=> (not res!2761114) (not e!4076758))))

(assert (=> b!6750227 (= res!2761114 (not call!610525))))

(declare-fun b!6750228 () Bool)

(declare-fun res!2761111 () Bool)

(declare-fun e!4076756 () Bool)

(assert (=> b!6750228 (=> res!2761111 e!4076756)))

(assert (=> b!6750228 (= res!2761111 (not (isEmpty!38269 (tail!12671 (_1!36859 (get!22941 lt!2440786))))))))

(declare-fun b!6750229 () Bool)

(declare-fun e!4076757 () Bool)

(assert (=> b!6750229 (= e!4076757 (matchR!8764 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 (get!22941 lt!2440786)))) (tail!12671 (_1!36859 (get!22941 lt!2440786)))))))

(declare-fun b!6750230 () Bool)

(declare-fun e!4076755 () Bool)

(assert (=> b!6750230 (= e!4076755 e!4076756)))

(declare-fun res!2761113 () Bool)

(assert (=> b!6750230 (=> res!2761113 e!4076756)))

(assert (=> b!6750230 (= res!2761113 call!610525)))

(declare-fun d!2120444 () Bool)

(assert (=> d!2120444 e!4076761))

(declare-fun c!1252613 () Bool)

(assert (=> d!2120444 (= c!1252613 ((_ is EmptyExpr!16581) (reg!16910 r!7292)))))

(assert (=> d!2120444 (= lt!2440888 e!4076757)))

(declare-fun c!1252614 () Bool)

(assert (=> d!2120444 (= c!1252614 (isEmpty!38269 (_1!36859 (get!22941 lt!2440786))))))

(assert (=> d!2120444 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2120444 (= (matchR!8764 (reg!16910 r!7292) (_1!36859 (get!22941 lt!2440786))) lt!2440888)))

(declare-fun b!6750231 () Bool)

(assert (=> b!6750231 (= e!4076756 (not (= (head!13586 (_1!36859 (get!22941 lt!2440786))) (c!1252033 (reg!16910 r!7292)))))))

(declare-fun b!6750232 () Bool)

(declare-fun e!4076759 () Bool)

(assert (=> b!6750232 (= e!4076761 e!4076759)))

(declare-fun c!1252612 () Bool)

(assert (=> b!6750232 (= c!1252612 ((_ is EmptyLang!16581) (reg!16910 r!7292)))))

(declare-fun b!6750233 () Bool)

(assert (=> b!6750233 (= e!4076758 (= (head!13586 (_1!36859 (get!22941 lt!2440786))) (c!1252033 (reg!16910 r!7292))))))

(declare-fun bm!610520 () Bool)

(assert (=> bm!610520 (= call!610525 (isEmpty!38269 (_1!36859 (get!22941 lt!2440786))))))

(declare-fun b!6750234 () Bool)

(declare-fun res!2761115 () Bool)

(declare-fun e!4076760 () Bool)

(assert (=> b!6750234 (=> res!2761115 e!4076760)))

(assert (=> b!6750234 (= res!2761115 (not ((_ is ElementMatch!16581) (reg!16910 r!7292))))))

(assert (=> b!6750234 (= e!4076759 e!4076760)))

(declare-fun b!6750235 () Bool)

(declare-fun res!2761116 () Bool)

(assert (=> b!6750235 (=> res!2761116 e!4076760)))

(assert (=> b!6750235 (= res!2761116 e!4076758)))

(declare-fun res!2761112 () Bool)

(assert (=> b!6750235 (=> (not res!2761112) (not e!4076758))))

(assert (=> b!6750235 (= res!2761112 lt!2440888)))

(declare-fun b!6750236 () Bool)

(assert (=> b!6750236 (= e!4076759 (not lt!2440888))))

(declare-fun b!6750237 () Bool)

(declare-fun res!2761118 () Bool)

(assert (=> b!6750237 (=> (not res!2761118) (not e!4076758))))

(assert (=> b!6750237 (= res!2761118 (isEmpty!38269 (tail!12671 (_1!36859 (get!22941 lt!2440786)))))))

(declare-fun b!6750238 () Bool)

(assert (=> b!6750238 (= e!4076757 (nullable!6566 (reg!16910 r!7292)))))

(declare-fun b!6750239 () Bool)

(assert (=> b!6750239 (= e!4076760 e!4076755)))

(declare-fun res!2761117 () Bool)

(assert (=> b!6750239 (=> (not res!2761117) (not e!4076755))))

(assert (=> b!6750239 (= res!2761117 (not lt!2440888))))

(assert (= (and d!2120444 c!1252614) b!6750238))

(assert (= (and d!2120444 (not c!1252614)) b!6750229))

(assert (= (and d!2120444 c!1252613) b!6750226))

(assert (= (and d!2120444 (not c!1252613)) b!6750232))

(assert (= (and b!6750232 c!1252612) b!6750236))

(assert (= (and b!6750232 (not c!1252612)) b!6750234))

(assert (= (and b!6750234 (not res!2761115)) b!6750235))

(assert (= (and b!6750235 res!2761112) b!6750227))

(assert (= (and b!6750227 res!2761114) b!6750237))

(assert (= (and b!6750237 res!2761118) b!6750233))

(assert (= (and b!6750235 (not res!2761116)) b!6750239))

(assert (= (and b!6750239 res!2761117) b!6750230))

(assert (= (and b!6750230 (not res!2761113)) b!6750228))

(assert (= (and b!6750228 (not res!2761111)) b!6750231))

(assert (= (or b!6750226 b!6750227 b!6750230) bm!610520))

(declare-fun m!7504688 () Bool)

(assert (=> bm!610520 m!7504688))

(declare-fun m!7504690 () Bool)

(assert (=> b!6750229 m!7504690))

(assert (=> b!6750229 m!7504690))

(declare-fun m!7504692 () Bool)

(assert (=> b!6750229 m!7504692))

(declare-fun m!7504694 () Bool)

(assert (=> b!6750229 m!7504694))

(assert (=> b!6750229 m!7504692))

(assert (=> b!6750229 m!7504694))

(declare-fun m!7504696 () Bool)

(assert (=> b!6750229 m!7504696))

(assert (=> b!6750237 m!7504694))

(assert (=> b!6750237 m!7504694))

(declare-fun m!7504698 () Bool)

(assert (=> b!6750237 m!7504698))

(assert (=> d!2120444 m!7504688))

(assert (=> d!2120444 m!7503154))

(assert (=> b!6750228 m!7504694))

(assert (=> b!6750228 m!7504694))

(assert (=> b!6750228 m!7504698))

(assert (=> b!6750238 m!7503370))

(assert (=> b!6750233 m!7504690))

(assert (=> b!6750231 m!7504690))

(assert (=> b!6748678 d!2120444))

(assert (=> b!6748678 d!2120304))

(declare-fun d!2120446 () Bool)

(assert (=> d!2120446 (= (isUnion!1383 lt!2440822) ((_ is Union!16581) lt!2440822))))

(assert (=> b!6748984 d!2120446))

(declare-fun d!2120448 () Bool)

(declare-fun res!2761123 () Bool)

(declare-fun e!4076766 () Bool)

(assert (=> d!2120448 (=> res!2761123 e!4076766)))

(assert (=> d!2120448 (= res!2761123 ((_ is Nil!65920) lt!2440797))))

(assert (=> d!2120448 (= (noDuplicate!2372 lt!2440797) e!4076766)))

(declare-fun b!6750244 () Bool)

(declare-fun e!4076767 () Bool)

(assert (=> b!6750244 (= e!4076766 e!4076767)))

(declare-fun res!2761124 () Bool)

(assert (=> b!6750244 (=> (not res!2761124) (not e!4076767))))

(declare-fun contains!20269 (List!66044 Context!11930) Bool)

(assert (=> b!6750244 (= res!2761124 (not (contains!20269 (t!379745 lt!2440797) (h!72368 lt!2440797))))))

(declare-fun b!6750245 () Bool)

(assert (=> b!6750245 (= e!4076767 (noDuplicate!2372 (t!379745 lt!2440797)))))

(assert (= (and d!2120448 (not res!2761123)) b!6750244))

(assert (= (and b!6750244 res!2761124) b!6750245))

(declare-fun m!7504700 () Bool)

(assert (=> b!6750244 m!7504700))

(declare-fun m!7504702 () Bool)

(assert (=> b!6750245 m!7504702))

(assert (=> d!2119802 d!2120448))

(declare-fun d!2120450 () Bool)

(declare-fun e!4076775 () Bool)

(assert (=> d!2120450 e!4076775))

(declare-fun res!2761130 () Bool)

(assert (=> d!2120450 (=> (not res!2761130) (not e!4076775))))

(declare-fun res!2761129 () List!66044)

(assert (=> d!2120450 (= res!2761130 (noDuplicate!2372 res!2761129))))

(declare-fun e!4076776 () Bool)

(assert (=> d!2120450 e!4076776))

(assert (=> d!2120450 (= (choose!50343 z!1189) res!2761129)))

(declare-fun b!6750253 () Bool)

(declare-fun e!4076774 () Bool)

(declare-fun tp!1849736 () Bool)

(assert (=> b!6750253 (= e!4076774 tp!1849736)))

(declare-fun b!6750252 () Bool)

(declare-fun tp!1849737 () Bool)

(assert (=> b!6750252 (= e!4076776 (and (inv!84699 (h!72368 res!2761129)) e!4076774 tp!1849737))))

(declare-fun b!6750254 () Bool)

(assert (=> b!6750254 (= e!4076775 (= (content!12819 res!2761129) z!1189))))

(assert (= b!6750252 b!6750253))

(assert (= (and d!2120450 ((_ is Cons!65920) res!2761129)) b!6750252))

(assert (= (and d!2120450 res!2761130) b!6750254))

(declare-fun m!7504704 () Bool)

(assert (=> d!2120450 m!7504704))

(declare-fun m!7504706 () Bool)

(assert (=> b!6750252 m!7504706))

(declare-fun m!7504708 () Bool)

(assert (=> b!6750254 m!7504708))

(assert (=> d!2119802 d!2120450))

(declare-fun b!6750255 () Bool)

(declare-fun e!4076783 () Bool)

(declare-fun lt!2440889 () Bool)

(declare-fun call!610526 () Bool)

(assert (=> b!6750255 (= e!4076783 (= lt!2440889 call!610526))))

(declare-fun b!6750256 () Bool)

(declare-fun res!2761134 () Bool)

(declare-fun e!4076780 () Bool)

(assert (=> b!6750256 (=> (not res!2761134) (not e!4076780))))

(assert (=> b!6750256 (= res!2761134 (not call!610526))))

(declare-fun b!6750257 () Bool)

(declare-fun res!2761131 () Bool)

(declare-fun e!4076778 () Bool)

(assert (=> b!6750257 (=> res!2761131 e!4076778)))

(assert (=> b!6750257 (= res!2761131 (not (isEmpty!38269 (tail!12671 (tail!12671 (_1!36859 lt!2440718))))))))

(declare-fun b!6750258 () Bool)

(declare-fun e!4076779 () Bool)

(assert (=> b!6750258 (= e!4076779 (matchR!8764 (derivativeStep!5251 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))) (head!13586 (tail!12671 (_1!36859 lt!2440718)))) (tail!12671 (tail!12671 (_1!36859 lt!2440718)))))))

(declare-fun b!6750259 () Bool)

(declare-fun e!4076777 () Bool)

(assert (=> b!6750259 (= e!4076777 e!4076778)))

(declare-fun res!2761133 () Bool)

(assert (=> b!6750259 (=> res!2761133 e!4076778)))

(assert (=> b!6750259 (= res!2761133 call!610526)))

(declare-fun d!2120452 () Bool)

(assert (=> d!2120452 e!4076783))

(declare-fun c!1252616 () Bool)

(assert (=> d!2120452 (= c!1252616 ((_ is EmptyExpr!16581) (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718)))))))

(assert (=> d!2120452 (= lt!2440889 e!4076779)))

(declare-fun c!1252617 () Bool)

(assert (=> d!2120452 (= c!1252617 (isEmpty!38269 (tail!12671 (_1!36859 lt!2440718))))))

(assert (=> d!2120452 (validRegex!8317 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))))))

(assert (=> d!2120452 (= (matchR!8764 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))) (tail!12671 (_1!36859 lt!2440718))) lt!2440889)))

(declare-fun b!6750260 () Bool)

(assert (=> b!6750260 (= e!4076778 (not (= (head!13586 (tail!12671 (_1!36859 lt!2440718))) (c!1252033 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718)))))))))

(declare-fun b!6750261 () Bool)

(declare-fun e!4076781 () Bool)

(assert (=> b!6750261 (= e!4076783 e!4076781)))

(declare-fun c!1252615 () Bool)

(assert (=> b!6750261 (= c!1252615 ((_ is EmptyLang!16581) (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718)))))))

(declare-fun b!6750262 () Bool)

(assert (=> b!6750262 (= e!4076780 (= (head!13586 (tail!12671 (_1!36859 lt!2440718))) (c!1252033 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))))))))

(declare-fun bm!610521 () Bool)

(assert (=> bm!610521 (= call!610526 (isEmpty!38269 (tail!12671 (_1!36859 lt!2440718))))))

(declare-fun b!6750263 () Bool)

(declare-fun res!2761135 () Bool)

(declare-fun e!4076782 () Bool)

(assert (=> b!6750263 (=> res!2761135 e!4076782)))

(assert (=> b!6750263 (= res!2761135 (not ((_ is ElementMatch!16581) (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))))))))

(assert (=> b!6750263 (= e!4076781 e!4076782)))

(declare-fun b!6750264 () Bool)

(declare-fun res!2761136 () Bool)

(assert (=> b!6750264 (=> res!2761136 e!4076782)))

(assert (=> b!6750264 (= res!2761136 e!4076780)))

(declare-fun res!2761132 () Bool)

(assert (=> b!6750264 (=> (not res!2761132) (not e!4076780))))

(assert (=> b!6750264 (= res!2761132 lt!2440889)))

(declare-fun b!6750265 () Bool)

(assert (=> b!6750265 (= e!4076781 (not lt!2440889))))

(declare-fun b!6750266 () Bool)

(declare-fun res!2761138 () Bool)

(assert (=> b!6750266 (=> (not res!2761138) (not e!4076780))))

(assert (=> b!6750266 (= res!2761138 (isEmpty!38269 (tail!12671 (tail!12671 (_1!36859 lt!2440718)))))))

(declare-fun b!6750267 () Bool)

(assert (=> b!6750267 (= e!4076779 (nullable!6566 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718)))))))

(declare-fun b!6750268 () Bool)

(assert (=> b!6750268 (= e!4076782 e!4076777)))

(declare-fun res!2761137 () Bool)

(assert (=> b!6750268 (=> (not res!2761137) (not e!4076777))))

(assert (=> b!6750268 (= res!2761137 (not lt!2440889))))

(assert (= (and d!2120452 c!1252617) b!6750267))

(assert (= (and d!2120452 (not c!1252617)) b!6750258))

(assert (= (and d!2120452 c!1252616) b!6750255))

(assert (= (and d!2120452 (not c!1252616)) b!6750261))

(assert (= (and b!6750261 c!1252615) b!6750265))

(assert (= (and b!6750261 (not c!1252615)) b!6750263))

(assert (= (and b!6750263 (not res!2761135)) b!6750264))

(assert (= (and b!6750264 res!2761132) b!6750256))

(assert (= (and b!6750256 res!2761134) b!6750266))

(assert (= (and b!6750266 res!2761138) b!6750262))

(assert (= (and b!6750264 (not res!2761136)) b!6750268))

(assert (= (and b!6750268 res!2761137) b!6750259))

(assert (= (and b!6750259 (not res!2761133)) b!6750257))

(assert (= (and b!6750257 (not res!2761131)) b!6750260))

(assert (= (or b!6750255 b!6750256 b!6750259) bm!610521))

(assert (=> bm!610521 m!7503364))

(assert (=> bm!610521 m!7503368))

(assert (=> b!6750258 m!7503364))

(declare-fun m!7504710 () Bool)

(assert (=> b!6750258 m!7504710))

(assert (=> b!6750258 m!7503362))

(assert (=> b!6750258 m!7504710))

(declare-fun m!7504712 () Bool)

(assert (=> b!6750258 m!7504712))

(assert (=> b!6750258 m!7503364))

(declare-fun m!7504714 () Bool)

(assert (=> b!6750258 m!7504714))

(assert (=> b!6750258 m!7504712))

(assert (=> b!6750258 m!7504714))

(declare-fun m!7504716 () Bool)

(assert (=> b!6750258 m!7504716))

(assert (=> b!6750266 m!7503364))

(assert (=> b!6750266 m!7504714))

(assert (=> b!6750266 m!7504714))

(declare-fun m!7504718 () Bool)

(assert (=> b!6750266 m!7504718))

(assert (=> d!2120452 m!7503364))

(assert (=> d!2120452 m!7503368))

(assert (=> d!2120452 m!7503362))

(declare-fun m!7504720 () Bool)

(assert (=> d!2120452 m!7504720))

(assert (=> b!6750257 m!7503364))

(assert (=> b!6750257 m!7504714))

(assert (=> b!6750257 m!7504714))

(assert (=> b!6750257 m!7504718))

(assert (=> b!6750267 m!7503362))

(declare-fun m!7504722 () Bool)

(assert (=> b!6750267 m!7504722))

(assert (=> b!6750262 m!7503364))

(assert (=> b!6750262 m!7504710))

(assert (=> b!6750260 m!7503364))

(assert (=> b!6750260 m!7504710))

(assert (=> b!6748807 d!2120452))

(declare-fun call!610527 () Regex!16581)

(declare-fun c!1252622 () Bool)

(declare-fun c!1252618 () Bool)

(declare-fun bm!610522 () Bool)

(assert (=> bm!610522 (= call!610527 (derivativeStep!5251 (ite c!1252622 (regOne!33675 (reg!16910 r!7292)) (ite c!1252618 (regTwo!33674 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (head!13586 (_1!36859 lt!2440718))))))

(declare-fun b!6750269 () Bool)

(assert (=> b!6750269 (= c!1252618 (nullable!6566 (regOne!33674 (reg!16910 r!7292))))))

(declare-fun e!4076788 () Regex!16581)

(declare-fun e!4076786 () Regex!16581)

(assert (=> b!6750269 (= e!4076788 e!4076786)))

(declare-fun b!6750270 () Bool)

(declare-fun e!4076787 () Regex!16581)

(assert (=> b!6750270 (= e!4076787 e!4076788)))

(declare-fun c!1252620 () Bool)

(assert (=> b!6750270 (= c!1252620 ((_ is Star!16581) (reg!16910 r!7292)))))

(declare-fun b!6750271 () Bool)

(declare-fun call!610530 () Regex!16581)

(assert (=> b!6750271 (= e!4076788 (Concat!25426 call!610530 (reg!16910 r!7292)))))

(declare-fun call!610529 () Regex!16581)

(declare-fun bm!610523 () Bool)

(assert (=> bm!610523 (= call!610529 (derivativeStep!5251 (ite c!1252622 (regTwo!33675 (reg!16910 r!7292)) (ite c!1252620 (reg!16910 (reg!16910 r!7292)) (regOne!33674 (reg!16910 r!7292)))) (head!13586 (_1!36859 lt!2440718))))))

(declare-fun b!6750273 () Bool)

(declare-fun e!4076784 () Regex!16581)

(assert (=> b!6750273 (= e!4076784 (ite (= (head!13586 (_1!36859 lt!2440718)) (c!1252033 (reg!16910 r!7292))) EmptyExpr!16581 EmptyLang!16581))))

(declare-fun b!6750274 () Bool)

(declare-fun e!4076785 () Regex!16581)

(assert (=> b!6750274 (= e!4076785 EmptyLang!16581)))

(declare-fun b!6750275 () Bool)

(assert (=> b!6750275 (= c!1252622 ((_ is Union!16581) (reg!16910 r!7292)))))

(assert (=> b!6750275 (= e!4076784 e!4076787)))

(declare-fun b!6750276 () Bool)

(assert (=> b!6750276 (= e!4076787 (Union!16581 call!610527 call!610529))))

(declare-fun bm!610524 () Bool)

(assert (=> bm!610524 (= call!610530 call!610529)))

(declare-fun bm!610525 () Bool)

(declare-fun call!610528 () Regex!16581)

(assert (=> bm!610525 (= call!610528 call!610527)))

(declare-fun b!6750272 () Bool)

(assert (=> b!6750272 (= e!4076786 (Union!16581 (Concat!25426 call!610530 (regTwo!33674 (reg!16910 r!7292))) call!610528))))

(declare-fun d!2120454 () Bool)

(declare-fun lt!2440890 () Regex!16581)

(assert (=> d!2120454 (validRegex!8317 lt!2440890)))

(assert (=> d!2120454 (= lt!2440890 e!4076785)))

(declare-fun c!1252619 () Bool)

(assert (=> d!2120454 (= c!1252619 (or ((_ is EmptyExpr!16581) (reg!16910 r!7292)) ((_ is EmptyLang!16581) (reg!16910 r!7292))))))

(assert (=> d!2120454 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2120454 (= (derivativeStep!5251 (reg!16910 r!7292) (head!13586 (_1!36859 lt!2440718))) lt!2440890)))

(declare-fun b!6750277 () Bool)

(assert (=> b!6750277 (= e!4076785 e!4076784)))

(declare-fun c!1252621 () Bool)

(assert (=> b!6750277 (= c!1252621 ((_ is ElementMatch!16581) (reg!16910 r!7292)))))

(declare-fun b!6750278 () Bool)

(assert (=> b!6750278 (= e!4076786 (Union!16581 (Concat!25426 call!610528 (regTwo!33674 (reg!16910 r!7292))) EmptyLang!16581))))

(assert (= (and d!2120454 c!1252619) b!6750274))

(assert (= (and d!2120454 (not c!1252619)) b!6750277))

(assert (= (and b!6750277 c!1252621) b!6750273))

(assert (= (and b!6750277 (not c!1252621)) b!6750275))

(assert (= (and b!6750275 c!1252622) b!6750276))

(assert (= (and b!6750275 (not c!1252622)) b!6750270))

(assert (= (and b!6750270 c!1252620) b!6750271))

(assert (= (and b!6750270 (not c!1252620)) b!6750269))

(assert (= (and b!6750269 c!1252618) b!6750272))

(assert (= (and b!6750269 (not c!1252618)) b!6750278))

(assert (= (or b!6750272 b!6750278) bm!610525))

(assert (= (or b!6750271 b!6750272) bm!610524))

(assert (= (or b!6750276 bm!610524) bm!610523))

(assert (= (or b!6750276 bm!610525) bm!610522))

(assert (=> bm!610522 m!7503360))

(declare-fun m!7504724 () Bool)

(assert (=> bm!610522 m!7504724))

(assert (=> b!6750269 m!7503378))

(assert (=> bm!610523 m!7503360))

(declare-fun m!7504726 () Bool)

(assert (=> bm!610523 m!7504726))

(declare-fun m!7504728 () Bool)

(assert (=> d!2120454 m!7504728))

(assert (=> d!2120454 m!7503154))

(assert (=> b!6748807 d!2120454))

(assert (=> b!6748807 d!2120344))

(assert (=> b!6748807 d!2120288))

(assert (=> bm!610262 d!2119766))

(declare-fun d!2120456 () Bool)

(assert (=> d!2120456 (= (Exists!3649 lambda!379553) (choose!50341 lambda!379553))))

(declare-fun bs!1794365 () Bool)

(assert (= bs!1794365 d!2120456))

(declare-fun m!7504730 () Bool)

(assert (=> bs!1794365 m!7504730))

(assert (=> d!2119742 d!2120456))

(declare-fun d!2120458 () Bool)

(assert (=> d!2120458 (= (Exists!3649 lambda!379555) (choose!50341 lambda!379555))))

(declare-fun bs!1794366 () Bool)

(assert (= bs!1794366 d!2120458))

(declare-fun m!7504732 () Bool)

(assert (=> bs!1794366 m!7504732))

(assert (=> d!2119742 d!2120458))

(declare-fun bs!1794367 () Bool)

(declare-fun d!2120460 () Bool)

(assert (= bs!1794367 (and d!2120460 b!6750023)))

(declare-fun lambda!379669 () Int)

(assert (=> bs!1794367 (not (= lambda!379669 lambda!379646))))

(declare-fun bs!1794368 () Bool)

(assert (= bs!1794368 (and d!2120460 b!6749978)))

(assert (=> bs!1794368 (not (= lambda!379669 lambda!379643))))

(declare-fun bs!1794369 () Bool)

(assert (= bs!1794369 (and d!2120460 d!2119742)))

(assert (=> bs!1794369 (not (= lambda!379669 lambda!379555))))

(declare-fun bs!1794370 () Bool)

(assert (= bs!1794370 (and d!2120460 b!6748896)))

(assert (=> bs!1794370 (not (= lambda!379669 lambda!379584))))

(declare-fun bs!1794371 () Bool)

(assert (= bs!1794371 (and d!2120460 b!6750101)))

(assert (=> bs!1794371 (not (= lambda!379669 lambda!379652))))

(declare-fun bs!1794372 () Bool)

(assert (= bs!1794372 (and d!2120460 d!2119756)))

(assert (=> bs!1794372 (not (= lambda!379669 lambda!379563))))

(assert (=> bs!1794369 (= lambda!379669 lambda!379553)))

(declare-fun bs!1794373 () Bool)

(assert (= bs!1794373 (and d!2120460 b!6748866)))

(assert (=> bs!1794373 (not (= lambda!379669 lambda!379581))))

(declare-fun bs!1794374 () Bool)

(assert (= bs!1794374 (and d!2120460 b!6748161)))

(assert (=> bs!1794374 (not (= lambda!379669 lambda!379508))))

(assert (=> bs!1794372 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379669 lambda!379560))))

(assert (=> bs!1794374 (= lambda!379669 lambda!379506)))

(declare-fun bs!1794375 () Bool)

(assert (= bs!1794375 (and d!2120460 d!2119796)))

(assert (=> bs!1794375 (= lambda!379669 lambda!379572)))

(declare-fun bs!1794376 () Bool)

(assert (= bs!1794376 (and d!2120460 b!6749988)))

(assert (=> bs!1794376 (not (= lambda!379669 lambda!379644))))

(declare-fun bs!1794377 () Bool)

(assert (= bs!1794377 (and d!2120460 d!2120388)))

(assert (=> bs!1794377 (= lambda!379669 lambda!379656)))

(declare-fun bs!1794378 () Bool)

(assert (= bs!1794378 (and d!2120460 b!6750069)))

(assert (=> bs!1794378 (not (= lambda!379669 lambda!379649))))

(declare-fun bs!1794379 () Bool)

(assert (= bs!1794379 (and d!2120460 d!2120236)))

(assert (=> bs!1794379 (not (= lambda!379669 lambda!379640))))

(assert (=> bs!1794374 (not (= lambda!379669 lambda!379507))))

(declare-fun bs!1794380 () Bool)

(assert (= bs!1794380 (and d!2120460 b!6748876)))

(assert (=> bs!1794380 (not (= lambda!379669 lambda!379582))))

(declare-fun bs!1794381 () Bool)

(assert (= bs!1794381 (and d!2120460 b!6750111)))

(assert (=> bs!1794381 (not (= lambda!379669 lambda!379653))))

(declare-fun bs!1794382 () Bool)

(assert (= bs!1794382 (and d!2120460 b!6750079)))

(assert (=> bs!1794382 (not (= lambda!379669 lambda!379650))))

(declare-fun bs!1794383 () Bool)

(assert (= bs!1794383 (and d!2120460 b!6750013)))

(assert (=> bs!1794383 (not (= lambda!379669 lambda!379645))))

(declare-fun bs!1794384 () Bool)

(assert (= bs!1794384 (and d!2120460 b!6748906)))

(assert (=> bs!1794384 (not (= lambda!379669 lambda!379585))))

(assert (=> bs!1794379 (= (= r!7292 (Star!16581 (reg!16910 r!7292))) (= lambda!379669 lambda!379639))))

(assert (=> d!2120460 true))

(assert (=> d!2120460 true))

(assert (=> d!2120460 true))

(declare-fun lambda!379670 () Int)

(assert (=> bs!1794367 (= (and (= (reg!16910 r!7292) (regOne!33674 (regTwo!33675 lt!2440700))) (= r!7292 (regTwo!33674 (regTwo!33675 lt!2440700)))) (= lambda!379670 lambda!379646))))

(assert (=> bs!1794368 (not (= lambda!379670 lambda!379643))))

(assert (=> bs!1794369 (= lambda!379670 lambda!379555)))

(assert (=> bs!1794370 (not (= lambda!379670 lambda!379584))))

(assert (=> bs!1794371 (not (= lambda!379670 lambda!379652))))

(declare-fun bs!1794385 () Bool)

(assert (= bs!1794385 d!2120460))

(assert (=> bs!1794385 (not (= lambda!379670 lambda!379669))))

(assert (=> bs!1794372 (not (= lambda!379670 lambda!379563))))

(assert (=> bs!1794369 (not (= lambda!379670 lambda!379553))))

(assert (=> bs!1794373 (not (= lambda!379670 lambda!379581))))

(assert (=> bs!1794374 (= lambda!379670 lambda!379508)))

(assert (=> bs!1794372 (not (= lambda!379670 lambda!379560))))

(assert (=> bs!1794374 (not (= lambda!379670 lambda!379506))))

(assert (=> bs!1794375 (not (= lambda!379670 lambda!379572))))

(assert (=> bs!1794376 (= (and (= (reg!16910 r!7292) (regOne!33674 (regTwo!33675 r!7292))) (= r!7292 (regTwo!33674 (regTwo!33675 r!7292)))) (= lambda!379670 lambda!379644))))

(assert (=> bs!1794377 (not (= lambda!379670 lambda!379656))))

(assert (=> bs!1794378 (not (= lambda!379670 lambda!379649))))

(assert (=> bs!1794379 (not (= lambda!379670 lambda!379640))))

(assert (=> bs!1794374 (not (= lambda!379670 lambda!379507))))

(assert (=> bs!1794380 (= (and (= (reg!16910 r!7292) (regOne!33674 r!7292)) (= r!7292 (regTwo!33674 r!7292))) (= lambda!379670 lambda!379582))))

(assert (=> bs!1794381 (= (and (= (reg!16910 r!7292) (regOne!33674 (regOne!33675 lt!2440700))) (= r!7292 (regTwo!33674 (regOne!33675 lt!2440700)))) (= lambda!379670 lambda!379653))))

(assert (=> bs!1794382 (= (and (= (reg!16910 r!7292) (regOne!33674 (regOne!33675 r!7292))) (= r!7292 (regTwo!33674 (regOne!33675 r!7292)))) (= lambda!379670 lambda!379650))))

(assert (=> bs!1794383 (not (= lambda!379670 lambda!379645))))

(assert (=> bs!1794384 (= (and (= (reg!16910 r!7292) (regOne!33674 lt!2440700)) (= r!7292 (regTwo!33674 lt!2440700))) (= lambda!379670 lambda!379585))))

(assert (=> bs!1794379 (not (= lambda!379670 lambda!379639))))

(assert (=> d!2120460 true))

(assert (=> d!2120460 true))

(assert (=> d!2120460 true))

(assert (=> d!2120460 (= (Exists!3649 lambda!379669) (Exists!3649 lambda!379670))))

(assert (=> d!2120460 true))

(declare-fun _$90!2614 () Unit!159853)

(assert (=> d!2120460 (= (choose!50338 (reg!16910 r!7292) r!7292 s!2326) _$90!2614)))

(declare-fun m!7504734 () Bool)

(assert (=> bs!1794385 m!7504734))

(declare-fun m!7504736 () Bool)

(assert (=> bs!1794385 m!7504736))

(assert (=> d!2119742 d!2120460))

(assert (=> d!2119742 d!2120250))

(declare-fun d!2120462 () Bool)

(assert (=> d!2120462 (= (head!13584 (unfocusZipperList!2002 zl!343)) (h!72366 (unfocusZipperList!2002 zl!343)))))

(assert (=> b!6748988 d!2120462))

(assert (=> bs!1793789 d!2119850))

(declare-fun b!6750287 () Bool)

(declare-fun e!4076793 () List!66043)

(assert (=> b!6750287 (= e!4076793 (t!379744 s!2326))))

(declare-fun b!6750289 () Bool)

(declare-fun res!2761147 () Bool)

(declare-fun e!4076794 () Bool)

(assert (=> b!6750289 (=> (not res!2761147) (not e!4076794))))

(declare-fun lt!2440891 () List!66043)

(assert (=> b!6750289 (= res!2761147 (= (size!40621 lt!2440891) (+ (size!40621 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))) (size!40621 (t!379744 s!2326)))))))

(declare-fun b!6750288 () Bool)

(assert (=> b!6750288 (= e!4076793 (Cons!65919 (h!72367 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))) (++!14735 (t!379744 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))) (t!379744 s!2326))))))

(declare-fun d!2120464 () Bool)

(assert (=> d!2120464 e!4076794))

(declare-fun res!2761148 () Bool)

(assert (=> d!2120464 (=> (not res!2761148) (not e!4076794))))

(assert (=> d!2120464 (= res!2761148 (= (content!12821 lt!2440891) ((_ map or) (content!12821 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))) (content!12821 (t!379744 s!2326)))))))

(assert (=> d!2120464 (= lt!2440891 e!4076793)))

(declare-fun c!1252623 () Bool)

(assert (=> d!2120464 (= c!1252623 ((_ is Nil!65919) (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))))))

(assert (=> d!2120464 (= (++!14735 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326)) lt!2440891)))

(declare-fun b!6750290 () Bool)

(assert (=> b!6750290 (= e!4076794 (or (not (= (t!379744 s!2326) Nil!65919)) (= lt!2440891 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)))))))

(assert (= (and d!2120464 c!1252623) b!6750287))

(assert (= (and d!2120464 (not c!1252623)) b!6750288))

(assert (= (and d!2120464 res!2761148) b!6750289))

(assert (= (and b!6750289 res!2761147) b!6750290))

(declare-fun m!7504738 () Bool)

(assert (=> b!6750289 m!7504738))

(assert (=> b!6750289 m!7503272))

(declare-fun m!7504740 () Bool)

(assert (=> b!6750289 m!7504740))

(declare-fun m!7504742 () Bool)

(assert (=> b!6750289 m!7504742))

(declare-fun m!7504744 () Bool)

(assert (=> b!6750288 m!7504744))

(declare-fun m!7504746 () Bool)

(assert (=> d!2120464 m!7504746))

(assert (=> d!2120464 m!7503272))

(declare-fun m!7504748 () Bool)

(assert (=> d!2120464 m!7504748))

(declare-fun m!7504750 () Bool)

(assert (=> d!2120464 m!7504750))

(assert (=> b!6748682 d!2120464))

(declare-fun b!6750291 () Bool)

(declare-fun e!4076795 () List!66043)

(assert (=> b!6750291 (= e!4076795 (Cons!65919 (h!72367 s!2326) Nil!65919))))

(declare-fun b!6750293 () Bool)

(declare-fun res!2761149 () Bool)

(declare-fun e!4076796 () Bool)

(assert (=> b!6750293 (=> (not res!2761149) (not e!4076796))))

(declare-fun lt!2440892 () List!66043)

(assert (=> b!6750293 (= res!2761149 (= (size!40621 lt!2440892) (+ (size!40621 Nil!65919) (size!40621 (Cons!65919 (h!72367 s!2326) Nil!65919)))))))

(declare-fun b!6750292 () Bool)

(assert (=> b!6750292 (= e!4076795 (Cons!65919 (h!72367 Nil!65919) (++!14735 (t!379744 Nil!65919) (Cons!65919 (h!72367 s!2326) Nil!65919))))))

(declare-fun d!2120466 () Bool)

(assert (=> d!2120466 e!4076796))

(declare-fun res!2761150 () Bool)

(assert (=> d!2120466 (=> (not res!2761150) (not e!4076796))))

(assert (=> d!2120466 (= res!2761150 (= (content!12821 lt!2440892) ((_ map or) (content!12821 Nil!65919) (content!12821 (Cons!65919 (h!72367 s!2326) Nil!65919)))))))

(assert (=> d!2120466 (= lt!2440892 e!4076795)))

(declare-fun c!1252624 () Bool)

(assert (=> d!2120466 (= c!1252624 ((_ is Nil!65919) Nil!65919))))

(assert (=> d!2120466 (= (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) lt!2440892)))

(declare-fun b!6750294 () Bool)

(assert (=> b!6750294 (= e!4076796 (or (not (= (Cons!65919 (h!72367 s!2326) Nil!65919) Nil!65919)) (= lt!2440892 Nil!65919)))))

(assert (= (and d!2120466 c!1252624) b!6750291))

(assert (= (and d!2120466 (not c!1252624)) b!6750292))

(assert (= (and d!2120466 res!2761150) b!6750293))

(assert (= (and b!6750293 res!2761149) b!6750294))

(declare-fun m!7504752 () Bool)

(assert (=> b!6750293 m!7504752))

(declare-fun m!7504754 () Bool)

(assert (=> b!6750293 m!7504754))

(declare-fun m!7504756 () Bool)

(assert (=> b!6750293 m!7504756))

(declare-fun m!7504758 () Bool)

(assert (=> b!6750292 m!7504758))

(declare-fun m!7504760 () Bool)

(assert (=> d!2120466 m!7504760))

(declare-fun m!7504762 () Bool)

(assert (=> d!2120466 m!7504762))

(declare-fun m!7504764 () Bool)

(assert (=> d!2120466 m!7504764))

(assert (=> b!6748682 d!2120466))

(declare-fun d!2120468 () Bool)

(assert (=> d!2120468 (= (++!14735 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326)) s!2326)))

(declare-fun lt!2440895 () Unit!159853)

(declare-fun choose!50351 (List!66043 C!33432 List!66043 List!66043) Unit!159853)

(assert (=> d!2120468 (= lt!2440895 (choose!50351 Nil!65919 (h!72367 s!2326) (t!379744 s!2326) s!2326))))

(assert (=> d!2120468 (= (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) (t!379744 s!2326))) s!2326)))

(assert (=> d!2120468 (= (lemmaMoveElementToOtherListKeepsConcatEq!2707 Nil!65919 (h!72367 s!2326) (t!379744 s!2326) s!2326) lt!2440895)))

(declare-fun bs!1794386 () Bool)

(assert (= bs!1794386 d!2120468))

(assert (=> bs!1794386 m!7503272))

(assert (=> bs!1794386 m!7503272))

(assert (=> bs!1794386 m!7503274))

(declare-fun m!7504766 () Bool)

(assert (=> bs!1794386 m!7504766))

(declare-fun m!7504768 () Bool)

(assert (=> bs!1794386 m!7504768))

(assert (=> b!6748682 d!2120468))

(declare-fun b!6750295 () Bool)

(declare-fun e!4076801 () Option!16468)

(assert (=> b!6750295 (= e!4076801 (Some!16467 (tuple2!67113 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326))))))

(declare-fun d!2120470 () Bool)

(declare-fun e!4076800 () Bool)

(assert (=> d!2120470 e!4076800))

(declare-fun res!2761153 () Bool)

(assert (=> d!2120470 (=> res!2761153 e!4076800)))

(declare-fun e!4076799 () Bool)

(assert (=> d!2120470 (= res!2761153 e!4076799)))

(declare-fun res!2761152 () Bool)

(assert (=> d!2120470 (=> (not res!2761152) (not e!4076799))))

(declare-fun lt!2440896 () Option!16468)

(assert (=> d!2120470 (= res!2761152 (isDefined!13171 lt!2440896))))

(assert (=> d!2120470 (= lt!2440896 e!4076801)))

(declare-fun c!1252626 () Bool)

(declare-fun e!4076798 () Bool)

(assert (=> d!2120470 (= c!1252626 e!4076798)))

(declare-fun res!2761151 () Bool)

(assert (=> d!2120470 (=> (not res!2761151) (not e!4076798))))

(assert (=> d!2120470 (= res!2761151 (matchR!8764 (reg!16910 r!7292) (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919))))))

(assert (=> d!2120470 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2120470 (= (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (t!379744 s!2326) s!2326) lt!2440896)))

(declare-fun b!6750296 () Bool)

(declare-fun res!2761155 () Bool)

(assert (=> b!6750296 (=> (not res!2761155) (not e!4076799))))

(assert (=> b!6750296 (= res!2761155 (matchR!8764 r!7292 (_2!36859 (get!22941 lt!2440896))))))

(declare-fun b!6750297 () Bool)

(declare-fun e!4076797 () Option!16468)

(assert (=> b!6750297 (= e!4076797 None!16467)))

(declare-fun b!6750298 () Bool)

(declare-fun res!2761154 () Bool)

(assert (=> b!6750298 (=> (not res!2761154) (not e!4076799))))

(assert (=> b!6750298 (= res!2761154 (matchR!8764 (reg!16910 r!7292) (_1!36859 (get!22941 lt!2440896))))))

(declare-fun b!6750299 () Bool)

(assert (=> b!6750299 (= e!4076801 e!4076797)))

(declare-fun c!1252625 () Bool)

(assert (=> b!6750299 (= c!1252625 ((_ is Nil!65919) (t!379744 s!2326)))))

(declare-fun b!6750300 () Bool)

(assert (=> b!6750300 (= e!4076798 (matchR!8764 r!7292 (t!379744 s!2326)))))

(declare-fun b!6750301 () Bool)

(assert (=> b!6750301 (= e!4076799 (= (++!14735 (_1!36859 (get!22941 lt!2440896)) (_2!36859 (get!22941 lt!2440896))) s!2326))))

(declare-fun b!6750302 () Bool)

(declare-fun lt!2440898 () Unit!159853)

(declare-fun lt!2440897 () Unit!159853)

(assert (=> b!6750302 (= lt!2440898 lt!2440897)))

(assert (=> b!6750302 (= (++!14735 (++!14735 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (Cons!65919 (h!72367 (t!379744 s!2326)) Nil!65919)) (t!379744 (t!379744 s!2326))) s!2326)))

(assert (=> b!6750302 (= lt!2440897 (lemmaMoveElementToOtherListKeepsConcatEq!2707 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (h!72367 (t!379744 s!2326)) (t!379744 (t!379744 s!2326)) s!2326))))

(assert (=> b!6750302 (= e!4076797 (findConcatSeparation!2882 (reg!16910 r!7292) r!7292 (++!14735 (++!14735 Nil!65919 (Cons!65919 (h!72367 s!2326) Nil!65919)) (Cons!65919 (h!72367 (t!379744 s!2326)) Nil!65919)) (t!379744 (t!379744 s!2326)) s!2326))))

(declare-fun b!6750303 () Bool)

(assert (=> b!6750303 (= e!4076800 (not (isDefined!13171 lt!2440896)))))

(assert (= (and d!2120470 res!2761151) b!6750300))

(assert (= (and d!2120470 c!1252626) b!6750295))

(assert (= (and d!2120470 (not c!1252626)) b!6750299))

(assert (= (and b!6750299 c!1252625) b!6750297))

(assert (= (and b!6750299 (not c!1252625)) b!6750302))

(assert (= (and d!2120470 res!2761152) b!6750298))

(assert (= (and b!6750298 res!2761154) b!6750296))

(assert (= (and b!6750296 res!2761155) b!6750301))

(assert (= (and d!2120470 (not res!2761153)) b!6750303))

(declare-fun m!7504770 () Bool)

(assert (=> d!2120470 m!7504770))

(assert (=> d!2120470 m!7503272))

(declare-fun m!7504772 () Bool)

(assert (=> d!2120470 m!7504772))

(assert (=> d!2120470 m!7503154))

(assert (=> b!6750302 m!7503272))

(declare-fun m!7504774 () Bool)

(assert (=> b!6750302 m!7504774))

(assert (=> b!6750302 m!7504774))

(declare-fun m!7504776 () Bool)

(assert (=> b!6750302 m!7504776))

(assert (=> b!6750302 m!7503272))

(declare-fun m!7504778 () Bool)

(assert (=> b!6750302 m!7504778))

(assert (=> b!6750302 m!7504774))

(declare-fun m!7504780 () Bool)

(assert (=> b!6750302 m!7504780))

(declare-fun m!7504782 () Bool)

(assert (=> b!6750296 m!7504782))

(declare-fun m!7504784 () Bool)

(assert (=> b!6750296 m!7504784))

(assert (=> b!6750303 m!7504770))

(assert (=> b!6750301 m!7504782))

(declare-fun m!7504786 () Bool)

(assert (=> b!6750301 m!7504786))

(declare-fun m!7504788 () Bool)

(assert (=> b!6750300 m!7504788))

(assert (=> b!6750298 m!7504782))

(declare-fun m!7504790 () Bool)

(assert (=> b!6750298 m!7504790))

(assert (=> b!6748682 d!2120470))

(assert (=> bm!610266 d!2119766))

(declare-fun b!6750304 () Bool)

(declare-fun e!4076804 () Bool)

(declare-fun e!4076802 () Bool)

(assert (=> b!6750304 (= e!4076804 e!4076802)))

(declare-fun res!2761157 () Bool)

(assert (=> b!6750304 (= res!2761157 (not (nullable!6566 (reg!16910 lt!2440749))))))

(assert (=> b!6750304 (=> (not res!2761157) (not e!4076802))))

(declare-fun b!6750305 () Bool)

(declare-fun e!4076807 () Bool)

(declare-fun call!610531 () Bool)

(assert (=> b!6750305 (= e!4076807 call!610531)))

(declare-fun b!6750306 () Bool)

(declare-fun res!2761160 () Bool)

(assert (=> b!6750306 (=> (not res!2761160) (not e!4076807))))

(declare-fun call!610533 () Bool)

(assert (=> b!6750306 (= res!2761160 call!610533)))

(declare-fun e!4076805 () Bool)

(assert (=> b!6750306 (= e!4076805 e!4076807)))

(declare-fun d!2120472 () Bool)

(declare-fun res!2761158 () Bool)

(declare-fun e!4076808 () Bool)

(assert (=> d!2120472 (=> res!2761158 e!4076808)))

(assert (=> d!2120472 (= res!2761158 ((_ is ElementMatch!16581) lt!2440749))))

(assert (=> d!2120472 (= (validRegex!8317 lt!2440749) e!4076808)))

(declare-fun b!6750307 () Bool)

(declare-fun res!2761156 () Bool)

(declare-fun e!4076806 () Bool)

(assert (=> b!6750307 (=> res!2761156 e!4076806)))

(assert (=> b!6750307 (= res!2761156 (not ((_ is Concat!25426) lt!2440749)))))

(assert (=> b!6750307 (= e!4076805 e!4076806)))

(declare-fun b!6750308 () Bool)

(declare-fun e!4076803 () Bool)

(assert (=> b!6750308 (= e!4076803 call!610531)))

(declare-fun b!6750309 () Bool)

(declare-fun call!610532 () Bool)

(assert (=> b!6750309 (= e!4076802 call!610532)))

(declare-fun b!6750310 () Bool)

(assert (=> b!6750310 (= e!4076806 e!4076803)))

(declare-fun res!2761159 () Bool)

(assert (=> b!6750310 (=> (not res!2761159) (not e!4076803))))

(assert (=> b!6750310 (= res!2761159 call!610533)))

(declare-fun bm!610526 () Bool)

(assert (=> bm!610526 (= call!610531 call!610532)))

(declare-fun bm!610527 () Bool)

(declare-fun c!1252628 () Bool)

(assert (=> bm!610527 (= call!610533 (validRegex!8317 (ite c!1252628 (regOne!33675 lt!2440749) (regOne!33674 lt!2440749))))))

(declare-fun bm!610528 () Bool)

(declare-fun c!1252627 () Bool)

(assert (=> bm!610528 (= call!610532 (validRegex!8317 (ite c!1252627 (reg!16910 lt!2440749) (ite c!1252628 (regTwo!33675 lt!2440749) (regTwo!33674 lt!2440749)))))))

(declare-fun b!6750311 () Bool)

(assert (=> b!6750311 (= e!4076804 e!4076805)))

(assert (=> b!6750311 (= c!1252628 ((_ is Union!16581) lt!2440749))))

(declare-fun b!6750312 () Bool)

(assert (=> b!6750312 (= e!4076808 e!4076804)))

(assert (=> b!6750312 (= c!1252627 ((_ is Star!16581) lt!2440749))))

(assert (= (and d!2120472 (not res!2761158)) b!6750312))

(assert (= (and b!6750312 c!1252627) b!6750304))

(assert (= (and b!6750312 (not c!1252627)) b!6750311))

(assert (= (and b!6750304 res!2761157) b!6750309))

(assert (= (and b!6750311 c!1252628) b!6750306))

(assert (= (and b!6750311 (not c!1252628)) b!6750307))

(assert (= (and b!6750306 res!2761160) b!6750305))

(assert (= (and b!6750307 (not res!2761156)) b!6750310))

(assert (= (and b!6750310 res!2761159) b!6750308))

(assert (= (or b!6750305 b!6750308) bm!610526))

(assert (= (or b!6750306 b!6750310) bm!610527))

(assert (= (or b!6750309 bm!610526) bm!610528))

(declare-fun m!7504792 () Bool)

(assert (=> b!6750304 m!7504792))

(declare-fun m!7504794 () Bool)

(assert (=> bm!610527 m!7504794))

(declare-fun m!7504796 () Bool)

(assert (=> bm!610528 m!7504796))

(assert (=> d!2119732 d!2120472))

(declare-fun d!2120474 () Bool)

(declare-fun res!2761161 () Bool)

(declare-fun e!4076809 () Bool)

(assert (=> d!2120474 (=> res!2761161 e!4076809)))

(assert (=> d!2120474 (= res!2761161 ((_ is Nil!65918) (exprs!6465 (h!72368 zl!343))))))

(assert (=> d!2120474 (= (forall!15778 (exprs!6465 (h!72368 zl!343)) lambda!379537) e!4076809)))

(declare-fun b!6750313 () Bool)

(declare-fun e!4076810 () Bool)

(assert (=> b!6750313 (= e!4076809 e!4076810)))

(declare-fun res!2761162 () Bool)

(assert (=> b!6750313 (=> (not res!2761162) (not e!4076810))))

(assert (=> b!6750313 (= res!2761162 (dynLambda!26302 lambda!379537 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun b!6750314 () Bool)

(assert (=> b!6750314 (= e!4076810 (forall!15778 (t!379743 (exprs!6465 (h!72368 zl!343))) lambda!379537))))

(assert (= (and d!2120474 (not res!2761161)) b!6750313))

(assert (= (and b!6750313 res!2761162) b!6750314))

(declare-fun b_lambda!254229 () Bool)

(assert (=> (not b_lambda!254229) (not b!6750313)))

(declare-fun m!7504798 () Bool)

(assert (=> b!6750313 m!7504798))

(declare-fun m!7504800 () Bool)

(assert (=> b!6750314 m!7504800))

(assert (=> d!2119732 d!2120474))

(declare-fun d!2120476 () Bool)

(assert (=> d!2120476 true))

(assert (=> d!2120476 true))

(declare-fun res!2761163 () Bool)

(assert (=> d!2120476 (= (choose!50341 lambda!379508) res!2761163)))

(assert (=> d!2119762 d!2120476))

(assert (=> b!6748953 d!2120350))

(declare-fun d!2120478 () Bool)

(assert (=> d!2120478 (= (isEmpty!38271 (exprs!6465 (h!72368 zl!343))) ((_ is Nil!65918) (exprs!6465 (h!72368 zl!343))))))

(assert (=> b!6748500 d!2120478))

(declare-fun bs!1794387 () Bool)

(declare-fun d!2120480 () Bool)

(assert (= bs!1794387 (and d!2120480 d!2120392)))

(declare-fun lambda!379671 () Int)

(assert (=> bs!1794387 (= lambda!379671 lambda!379659)))

(assert (=> d!2120480 (= (nullableZipper!2294 lt!2440717) (exists!2705 lt!2440717 lambda!379671))))

(declare-fun bs!1794388 () Bool)

(assert (= bs!1794388 d!2120480))

(declare-fun m!7504802 () Bool)

(assert (=> bs!1794388 m!7504802))

(assert (=> b!6749014 d!2120480))

(assert (=> b!6748811 d!2120344))

(assert (=> d!2119774 d!2120220))

(declare-fun b!6750315 () Bool)

(declare-fun e!4076817 () Bool)

(declare-fun lt!2440899 () Bool)

(declare-fun call!610534 () Bool)

(assert (=> b!6750315 (= e!4076817 (= lt!2440899 call!610534))))

(declare-fun b!6750316 () Bool)

(declare-fun res!2761167 () Bool)

(declare-fun e!4076814 () Bool)

(assert (=> b!6750316 (=> (not res!2761167) (not e!4076814))))

(assert (=> b!6750316 (= res!2761167 (not call!610534))))

(declare-fun b!6750317 () Bool)

(declare-fun res!2761164 () Bool)

(declare-fun e!4076812 () Bool)

(assert (=> b!6750317 (=> res!2761164 e!4076812)))

(assert (=> b!6750317 (= res!2761164 (not (isEmpty!38269 (tail!12671 Nil!65919))))))

(declare-fun b!6750318 () Bool)

(declare-fun e!4076813 () Bool)

(assert (=> b!6750318 (= e!4076813 (matchR!8764 (derivativeStep!5251 (reg!16910 r!7292) (head!13586 Nil!65919)) (tail!12671 Nil!65919)))))

(declare-fun b!6750319 () Bool)

(declare-fun e!4076811 () Bool)

(assert (=> b!6750319 (= e!4076811 e!4076812)))

(declare-fun res!2761166 () Bool)

(assert (=> b!6750319 (=> res!2761166 e!4076812)))

(assert (=> b!6750319 (= res!2761166 call!610534)))

(declare-fun d!2120482 () Bool)

(assert (=> d!2120482 e!4076817))

(declare-fun c!1252630 () Bool)

(assert (=> d!2120482 (= c!1252630 ((_ is EmptyExpr!16581) (reg!16910 r!7292)))))

(assert (=> d!2120482 (= lt!2440899 e!4076813)))

(declare-fun c!1252631 () Bool)

(assert (=> d!2120482 (= c!1252631 (isEmpty!38269 Nil!65919))))

(assert (=> d!2120482 (validRegex!8317 (reg!16910 r!7292))))

(assert (=> d!2120482 (= (matchR!8764 (reg!16910 r!7292) Nil!65919) lt!2440899)))

(declare-fun b!6750320 () Bool)

(assert (=> b!6750320 (= e!4076812 (not (= (head!13586 Nil!65919) (c!1252033 (reg!16910 r!7292)))))))

(declare-fun b!6750321 () Bool)

(declare-fun e!4076815 () Bool)

(assert (=> b!6750321 (= e!4076817 e!4076815)))

(declare-fun c!1252629 () Bool)

(assert (=> b!6750321 (= c!1252629 ((_ is EmptyLang!16581) (reg!16910 r!7292)))))

(declare-fun b!6750322 () Bool)

(assert (=> b!6750322 (= e!4076814 (= (head!13586 Nil!65919) (c!1252033 (reg!16910 r!7292))))))

(declare-fun bm!610529 () Bool)

(assert (=> bm!610529 (= call!610534 (isEmpty!38269 Nil!65919))))

(declare-fun b!6750323 () Bool)

(declare-fun res!2761168 () Bool)

(declare-fun e!4076816 () Bool)

(assert (=> b!6750323 (=> res!2761168 e!4076816)))

(assert (=> b!6750323 (= res!2761168 (not ((_ is ElementMatch!16581) (reg!16910 r!7292))))))

(assert (=> b!6750323 (= e!4076815 e!4076816)))

(declare-fun b!6750324 () Bool)

(declare-fun res!2761169 () Bool)

(assert (=> b!6750324 (=> res!2761169 e!4076816)))

(assert (=> b!6750324 (= res!2761169 e!4076814)))

(declare-fun res!2761165 () Bool)

(assert (=> b!6750324 (=> (not res!2761165) (not e!4076814))))

(assert (=> b!6750324 (= res!2761165 lt!2440899)))

(declare-fun b!6750325 () Bool)

(assert (=> b!6750325 (= e!4076815 (not lt!2440899))))

(declare-fun b!6750326 () Bool)

(declare-fun res!2761171 () Bool)

(assert (=> b!6750326 (=> (not res!2761171) (not e!4076814))))

(assert (=> b!6750326 (= res!2761171 (isEmpty!38269 (tail!12671 Nil!65919)))))

(declare-fun b!6750327 () Bool)

(assert (=> b!6750327 (= e!4076813 (nullable!6566 (reg!16910 r!7292)))))

(declare-fun b!6750328 () Bool)

(assert (=> b!6750328 (= e!4076816 e!4076811)))

(declare-fun res!2761170 () Bool)

(assert (=> b!6750328 (=> (not res!2761170) (not e!4076811))))

(assert (=> b!6750328 (= res!2761170 (not lt!2440899))))

(assert (= (and d!2120482 c!1252631) b!6750327))

(assert (= (and d!2120482 (not c!1252631)) b!6750318))

(assert (= (and d!2120482 c!1252630) b!6750315))

(assert (= (and d!2120482 (not c!1252630)) b!6750321))

(assert (= (and b!6750321 c!1252629) b!6750325))

(assert (= (and b!6750321 (not c!1252629)) b!6750323))

(assert (= (and b!6750323 (not res!2761168)) b!6750324))

(assert (= (and b!6750324 res!2761165) b!6750316))

(assert (= (and b!6750316 res!2761167) b!6750326))

(assert (= (and b!6750326 res!2761171) b!6750322))

(assert (= (and b!6750324 (not res!2761169)) b!6750328))

(assert (= (and b!6750328 res!2761170) b!6750319))

(assert (= (and b!6750319 (not res!2761166)) b!6750317))

(assert (= (and b!6750317 (not res!2761164)) b!6750320))

(assert (= (or b!6750315 b!6750316 b!6750319) bm!610529))

(declare-fun m!7504804 () Bool)

(assert (=> bm!610529 m!7504804))

(declare-fun m!7504806 () Bool)

(assert (=> b!6750318 m!7504806))

(assert (=> b!6750318 m!7504806))

(declare-fun m!7504808 () Bool)

(assert (=> b!6750318 m!7504808))

(declare-fun m!7504810 () Bool)

(assert (=> b!6750318 m!7504810))

(assert (=> b!6750318 m!7504808))

(assert (=> b!6750318 m!7504810))

(declare-fun m!7504812 () Bool)

(assert (=> b!6750318 m!7504812))

(assert (=> b!6750326 m!7504810))

(assert (=> b!6750326 m!7504810))

(declare-fun m!7504814 () Bool)

(assert (=> b!6750326 m!7504814))

(assert (=> d!2120482 m!7504804))

(assert (=> d!2120482 m!7503154))

(assert (=> b!6750317 m!7504810))

(assert (=> b!6750317 m!7504810))

(assert (=> b!6750317 m!7504814))

(assert (=> b!6750327 m!7503370))

(assert (=> b!6750322 m!7504806))

(assert (=> b!6750320 m!7504806))

(assert (=> d!2119774 d!2120482))

(assert (=> d!2119774 d!2120250))

(declare-fun b!6750329 () Bool)

(declare-fun e!4076818 () (InoxSet Context!11930))

(assert (=> b!6750329 (= e!4076818 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2120484 () Bool)

(declare-fun c!1252632 () Bool)

(declare-fun e!4076819 () Bool)

(assert (=> d!2120484 (= c!1252632 e!4076819)))

(declare-fun res!2761172 () Bool)

(assert (=> d!2120484 (=> (not res!2761172) (not e!4076819))))

(assert (=> d!2120484 (= res!2761172 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699))))))))

(declare-fun e!4076820 () (InoxSet Context!11930))

(assert (=> d!2120484 (= (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440699))) (h!72367 s!2326)) e!4076820)))

(declare-fun b!6750330 () Bool)

(declare-fun call!610535 () (InoxSet Context!11930))

(assert (=> b!6750330 (= e!4076818 call!610535)))

(declare-fun bm!610530 () Bool)

(assert (=> bm!610530 (= call!610535 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699))))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699)))))) (h!72367 s!2326)))))

(declare-fun b!6750331 () Bool)

(assert (=> b!6750331 (= e!4076820 ((_ map or) call!610535 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699)))))) (h!72367 s!2326))))))

(declare-fun b!6750332 () Bool)

(assert (=> b!6750332 (= e!4076820 e!4076818)))

(declare-fun c!1252633 () Bool)

(assert (=> b!6750332 (= c!1252633 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699))))))))

(declare-fun b!6750333 () Bool)

(assert (=> b!6750333 (= e!4076819 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440699)))))))))

(assert (= (and d!2120484 res!2761172) b!6750333))

(assert (= (and d!2120484 c!1252632) b!6750331))

(assert (= (and d!2120484 (not c!1252632)) b!6750332))

(assert (= (and b!6750332 c!1252633) b!6750330))

(assert (= (and b!6750332 (not c!1252633)) b!6750329))

(assert (= (or b!6750331 b!6750330) bm!610530))

(declare-fun m!7504816 () Bool)

(assert (=> bm!610530 m!7504816))

(declare-fun m!7504818 () Bool)

(assert (=> b!6750331 m!7504818))

(declare-fun m!7504820 () Bool)

(assert (=> b!6750333 m!7504820))

(assert (=> b!6748831 d!2120484))

(declare-fun b!6750334 () Bool)

(declare-fun e!4076821 () (InoxSet Context!11930))

(assert (=> b!6750334 (= e!4076821 ((as const (Array Context!11930 Bool)) false))))

(declare-fun d!2120486 () Bool)

(declare-fun c!1252634 () Bool)

(declare-fun e!4076822 () Bool)

(assert (=> d!2120486 (= c!1252634 e!4076822)))

(declare-fun res!2761173 () Bool)

(assert (=> d!2120486 (=> (not res!2761173) (not e!4076822))))

(assert (=> d!2120486 (= res!2761173 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701))))))))

(declare-fun e!4076823 () (InoxSet Context!11930))

(assert (=> d!2120486 (= (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 lt!2440701))) (h!72367 s!2326)) e!4076823)))

(declare-fun b!6750335 () Bool)

(declare-fun call!610536 () (InoxSet Context!11930))

(assert (=> b!6750335 (= e!4076821 call!610536)))

(declare-fun bm!610531 () Bool)

(assert (=> bm!610531 (= call!610536 (derivationStepZipperDown!1809 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701))))) (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701)))))) (h!72367 s!2326)))))

(declare-fun b!6750336 () Bool)

(assert (=> b!6750336 (= e!4076823 ((_ map or) call!610536 (derivationStepZipperUp!1735 (Context!11931 (t!379743 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701)))))) (h!72367 s!2326))))))

(declare-fun b!6750337 () Bool)

(assert (=> b!6750337 (= e!4076823 e!4076821)))

(declare-fun c!1252635 () Bool)

(assert (=> b!6750337 (= c!1252635 ((_ is Cons!65918) (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701))))))))

(declare-fun b!6750338 () Bool)

(assert (=> b!6750338 (= e!4076822 (nullable!6566 (h!72366 (exprs!6465 (Context!11931 (t!379743 (exprs!6465 lt!2440701)))))))))

(assert (= (and d!2120486 res!2761173) b!6750338))

(assert (= (and d!2120486 c!1252634) b!6750336))

(assert (= (and d!2120486 (not c!1252634)) b!6750337))

(assert (= (and b!6750337 c!1252635) b!6750335))

(assert (= (and b!6750337 (not c!1252635)) b!6750334))

(assert (= (or b!6750336 b!6750335) bm!610531))

(declare-fun m!7504822 () Bool)

(assert (=> bm!610531 m!7504822))

(declare-fun m!7504824 () Bool)

(assert (=> b!6750336 m!7504824))

(declare-fun m!7504826 () Bool)

(assert (=> b!6750338 m!7504826))

(assert (=> b!6748768 d!2120486))

(assert (=> bs!1793786 d!2119838))

(declare-fun b!6750339 () Bool)

(declare-fun e!4076826 () Bool)

(declare-fun e!4076824 () Bool)

(assert (=> b!6750339 (= e!4076826 e!4076824)))

(declare-fun res!2761175 () Bool)

(assert (=> b!6750339 (= res!2761175 (not (nullable!6566 (reg!16910 lt!2440817))))))

(assert (=> b!6750339 (=> (not res!2761175) (not e!4076824))))

(declare-fun b!6750340 () Bool)

(declare-fun e!4076829 () Bool)

(declare-fun call!610537 () Bool)

(assert (=> b!6750340 (= e!4076829 call!610537)))

(declare-fun b!6750341 () Bool)

(declare-fun res!2761178 () Bool)

(assert (=> b!6750341 (=> (not res!2761178) (not e!4076829))))

(declare-fun call!610539 () Bool)

(assert (=> b!6750341 (= res!2761178 call!610539)))

(declare-fun e!4076827 () Bool)

(assert (=> b!6750341 (= e!4076827 e!4076829)))

(declare-fun d!2120488 () Bool)

(declare-fun res!2761176 () Bool)

(declare-fun e!4076830 () Bool)

(assert (=> d!2120488 (=> res!2761176 e!4076830)))

(assert (=> d!2120488 (= res!2761176 ((_ is ElementMatch!16581) lt!2440817))))

(assert (=> d!2120488 (= (validRegex!8317 lt!2440817) e!4076830)))

(declare-fun b!6750342 () Bool)

(declare-fun res!2761174 () Bool)

(declare-fun e!4076828 () Bool)

(assert (=> b!6750342 (=> res!2761174 e!4076828)))

(assert (=> b!6750342 (= res!2761174 (not ((_ is Concat!25426) lt!2440817)))))

(assert (=> b!6750342 (= e!4076827 e!4076828)))

(declare-fun b!6750343 () Bool)

(declare-fun e!4076825 () Bool)

(assert (=> b!6750343 (= e!4076825 call!610537)))

(declare-fun b!6750344 () Bool)

(declare-fun call!610538 () Bool)

(assert (=> b!6750344 (= e!4076824 call!610538)))

(declare-fun b!6750345 () Bool)

(assert (=> b!6750345 (= e!4076828 e!4076825)))

(declare-fun res!2761177 () Bool)

(assert (=> b!6750345 (=> (not res!2761177) (not e!4076825))))

(assert (=> b!6750345 (= res!2761177 call!610539)))

(declare-fun bm!610532 () Bool)

(assert (=> bm!610532 (= call!610537 call!610538)))

(declare-fun bm!610533 () Bool)

(declare-fun c!1252637 () Bool)

(assert (=> bm!610533 (= call!610539 (validRegex!8317 (ite c!1252637 (regOne!33675 lt!2440817) (regOne!33674 lt!2440817))))))

(declare-fun bm!610534 () Bool)

(declare-fun c!1252636 () Bool)

(assert (=> bm!610534 (= call!610538 (validRegex!8317 (ite c!1252636 (reg!16910 lt!2440817) (ite c!1252637 (regTwo!33675 lt!2440817) (regTwo!33674 lt!2440817)))))))

(declare-fun b!6750346 () Bool)

(assert (=> b!6750346 (= e!4076826 e!4076827)))

(assert (=> b!6750346 (= c!1252637 ((_ is Union!16581) lt!2440817))))

(declare-fun b!6750347 () Bool)

(assert (=> b!6750347 (= e!4076830 e!4076826)))

(assert (=> b!6750347 (= c!1252636 ((_ is Star!16581) lt!2440817))))

(assert (= (and d!2120488 (not res!2761176)) b!6750347))

(assert (= (and b!6750347 c!1252636) b!6750339))

(assert (= (and b!6750347 (not c!1252636)) b!6750346))

(assert (= (and b!6750339 res!2761175) b!6750344))

(assert (= (and b!6750346 c!1252637) b!6750341))

(assert (= (and b!6750346 (not c!1252637)) b!6750342))

(assert (= (and b!6750341 res!2761178) b!6750340))

(assert (= (and b!6750342 (not res!2761174)) b!6750345))

(assert (= (and b!6750345 res!2761177) b!6750343))

(assert (= (or b!6750340 b!6750343) bm!610532))

(assert (= (or b!6750341 b!6750345) bm!610533))

(assert (= (or b!6750344 bm!610532) bm!610534))

(declare-fun m!7504828 () Bool)

(assert (=> b!6750339 m!7504828))

(declare-fun m!7504830 () Bool)

(assert (=> bm!610533 m!7504830))

(declare-fun m!7504832 () Bool)

(assert (=> bm!610534 m!7504832))

(assert (=> d!2119864 d!2120488))

(declare-fun bs!1794389 () Bool)

(declare-fun d!2120490 () Bool)

(assert (= bs!1794389 (and d!2120490 d!2120342)))

(declare-fun lambda!379672 () Int)

(assert (=> bs!1794389 (= lambda!379672 lambda!379648)))

(declare-fun bs!1794390 () Bool)

(assert (= bs!1794390 (and d!2120490 d!2120340)))

(assert (=> bs!1794390 (= lambda!379672 lambda!379647)))

(declare-fun bs!1794391 () Bool)

(assert (= bs!1794391 (and d!2120490 d!2120364)))

(assert (=> bs!1794391 (= lambda!379672 lambda!379651)))

(declare-fun bs!1794392 () Bool)

(assert (= bs!1794392 (and d!2120490 d!2119862)))

(assert (=> bs!1794392 (= lambda!379672 lambda!379586)))

(declare-fun bs!1794393 () Bool)

(assert (= bs!1794393 (and d!2120490 d!2120416)))

(assert (=> bs!1794393 (= lambda!379672 lambda!379662)))

(declare-fun bs!1794394 () Bool)

(assert (= bs!1794394 (and d!2120490 d!2119876)))

(assert (=> bs!1794394 (= lambda!379672 lambda!379592)))

(declare-fun bs!1794395 () Bool)

(assert (= bs!1794395 (and d!2120490 d!2120206)))

(assert (=> bs!1794395 (= lambda!379672 lambda!379631)))

(declare-fun bs!1794396 () Bool)

(assert (= bs!1794396 (and d!2120490 d!2119732)))

(assert (=> bs!1794396 (= lambda!379672 lambda!379537)))

(declare-fun bs!1794397 () Bool)

(assert (= bs!1794397 (and d!2120490 d!2120408)))

(assert (=> bs!1794397 (= lambda!379672 lambda!379661)))

(declare-fun bs!1794398 () Bool)

(assert (= bs!1794398 (and d!2120490 d!2120406)))

(assert (=> bs!1794398 (= lambda!379672 lambda!379660)))

(declare-fun bs!1794399 () Bool)

(assert (= bs!1794399 (and d!2120490 d!2119814)))

(assert (=> bs!1794399 (= lambda!379672 lambda!379575)))

(declare-fun bs!1794400 () Bool)

(assert (= bs!1794400 (and d!2120490 d!2119874)))

(assert (=> bs!1794400 (= lambda!379672 lambda!379589)))

(declare-fun bs!1794401 () Bool)

(assert (= bs!1794401 (and d!2120490 d!2120436)))

(assert (=> bs!1794401 (= lambda!379672 lambda!379664)))

(declare-fun bs!1794402 () Bool)

(assert (= bs!1794402 (and d!2120490 d!2119854)))

(assert (=> bs!1794402 (= lambda!379672 lambda!379583)))

(declare-fun bs!1794403 () Bool)

(assert (= bs!1794403 (and d!2120490 d!2120256)))

(assert (=> bs!1794403 (= lambda!379672 lambda!379641)))

(declare-fun b!6750348 () Bool)

(declare-fun e!4076832 () Bool)

(declare-fun lt!2440900 () Regex!16581)

(assert (=> b!6750348 (= e!4076832 (isEmptyLang!1953 lt!2440900))))

(declare-fun b!6750349 () Bool)

(declare-fun e!4076836 () Regex!16581)

(declare-fun e!4076831 () Regex!16581)

(assert (=> b!6750349 (= e!4076836 e!4076831)))

(declare-fun c!1252641 () Bool)

(assert (=> b!6750349 (= c!1252641 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))

(declare-fun e!4076835 () Bool)

(assert (=> d!2120490 e!4076835))

(declare-fun res!2761180 () Bool)

(assert (=> d!2120490 (=> (not res!2761180) (not e!4076835))))

(assert (=> d!2120490 (= res!2761180 (validRegex!8317 lt!2440900))))

(assert (=> d!2120490 (= lt!2440900 e!4076836)))

(declare-fun c!1252639 () Bool)

(declare-fun e!4076833 () Bool)

(assert (=> d!2120490 (= c!1252639 e!4076833)))

(declare-fun res!2761179 () Bool)

(assert (=> d!2120490 (=> (not res!2761179) (not e!4076833))))

(assert (=> d!2120490 (= res!2761179 ((_ is Cons!65918) (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))

(assert (=> d!2120490 (forall!15778 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920)) lambda!379672)))

(assert (=> d!2120490 (= (generalisedUnion!2425 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))) lt!2440900)))

(declare-fun b!6750350 () Bool)

(declare-fun e!4076834 () Bool)

(assert (=> b!6750350 (= e!4076834 (isUnion!1383 lt!2440900))))

(declare-fun b!6750351 () Bool)

(assert (=> b!6750351 (= e!4076831 (Union!16581 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))) (generalisedUnion!2425 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))))

(declare-fun b!6750352 () Bool)

(assert (=> b!6750352 (= e!4076835 e!4076832)))

(declare-fun c!1252640 () Bool)

(assert (=> b!6750352 (= c!1252640 (isEmpty!38271 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))

(declare-fun b!6750353 () Bool)

(assert (=> b!6750353 (= e!4076833 (isEmpty!38271 (t!379743 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920)))))))

(declare-fun b!6750354 () Bool)

(assert (=> b!6750354 (= e!4076834 (= lt!2440900 (head!13584 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920)))))))

(declare-fun b!6750355 () Bool)

(assert (=> b!6750355 (= e!4076836 (h!72366 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920))))))

(declare-fun b!6750356 () Bool)

(assert (=> b!6750356 (= e!4076832 e!4076834)))

(declare-fun c!1252638 () Bool)

(assert (=> b!6750356 (= c!1252638 (isEmpty!38271 (tail!12669 (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920)))))))

(declare-fun b!6750357 () Bool)

(assert (=> b!6750357 (= e!4076831 EmptyLang!16581)))

(assert (= (and d!2120490 res!2761179) b!6750353))

(assert (= (and d!2120490 c!1252639) b!6750355))

(assert (= (and d!2120490 (not c!1252639)) b!6750349))

(assert (= (and b!6750349 c!1252641) b!6750351))

(assert (= (and b!6750349 (not c!1252641)) b!6750357))

(assert (= (and d!2120490 res!2761180) b!6750352))

(assert (= (and b!6750352 c!1252640) b!6750348))

(assert (= (and b!6750352 (not c!1252640)) b!6750356))

(assert (= (and b!6750356 c!1252638) b!6750354))

(assert (= (and b!6750356 (not c!1252638)) b!6750350))

(declare-fun m!7504834 () Bool)

(assert (=> b!6750353 m!7504834))

(declare-fun m!7504836 () Bool)

(assert (=> d!2120490 m!7504836))

(assert (=> d!2120490 m!7503448))

(declare-fun m!7504838 () Bool)

(assert (=> d!2120490 m!7504838))

(declare-fun m!7504840 () Bool)

(assert (=> b!6750350 m!7504840))

(declare-fun m!7504842 () Bool)

(assert (=> b!6750348 m!7504842))

(declare-fun m!7504844 () Bool)

(assert (=> b!6750351 m!7504844))

(assert (=> b!6750356 m!7503448))

(declare-fun m!7504846 () Bool)

(assert (=> b!6750356 m!7504846))

(assert (=> b!6750356 m!7504846))

(declare-fun m!7504848 () Bool)

(assert (=> b!6750356 m!7504848))

(assert (=> b!6750352 m!7503448))

(declare-fun m!7504850 () Bool)

(assert (=> b!6750352 m!7504850))

(assert (=> b!6750354 m!7503448))

(declare-fun m!7504852 () Bool)

(assert (=> b!6750354 m!7504852))

(assert (=> d!2119864 d!2120490))

(declare-fun bs!1794404 () Bool)

(declare-fun d!2120492 () Bool)

(assert (= bs!1794404 (and d!2120492 d!2120490)))

(declare-fun lambda!379673 () Int)

(assert (=> bs!1794404 (= lambda!379673 lambda!379672)))

(declare-fun bs!1794405 () Bool)

(assert (= bs!1794405 (and d!2120492 d!2120342)))

(assert (=> bs!1794405 (= lambda!379673 lambda!379648)))

(declare-fun bs!1794406 () Bool)

(assert (= bs!1794406 (and d!2120492 d!2120340)))

(assert (=> bs!1794406 (= lambda!379673 lambda!379647)))

(declare-fun bs!1794407 () Bool)

(assert (= bs!1794407 (and d!2120492 d!2120364)))

(assert (=> bs!1794407 (= lambda!379673 lambda!379651)))

(declare-fun bs!1794408 () Bool)

(assert (= bs!1794408 (and d!2120492 d!2119862)))

(assert (=> bs!1794408 (= lambda!379673 lambda!379586)))

(declare-fun bs!1794409 () Bool)

(assert (= bs!1794409 (and d!2120492 d!2120416)))

(assert (=> bs!1794409 (= lambda!379673 lambda!379662)))

(declare-fun bs!1794410 () Bool)

(assert (= bs!1794410 (and d!2120492 d!2119876)))

(assert (=> bs!1794410 (= lambda!379673 lambda!379592)))

(declare-fun bs!1794411 () Bool)

(assert (= bs!1794411 (and d!2120492 d!2120206)))

(assert (=> bs!1794411 (= lambda!379673 lambda!379631)))

(declare-fun bs!1794412 () Bool)

(assert (= bs!1794412 (and d!2120492 d!2119732)))

(assert (=> bs!1794412 (= lambda!379673 lambda!379537)))

(declare-fun bs!1794413 () Bool)

(assert (= bs!1794413 (and d!2120492 d!2120408)))

(assert (=> bs!1794413 (= lambda!379673 lambda!379661)))

(declare-fun bs!1794414 () Bool)

(assert (= bs!1794414 (and d!2120492 d!2120406)))

(assert (=> bs!1794414 (= lambda!379673 lambda!379660)))

(declare-fun bs!1794415 () Bool)

(assert (= bs!1794415 (and d!2120492 d!2119814)))

(assert (=> bs!1794415 (= lambda!379673 lambda!379575)))

(declare-fun bs!1794416 () Bool)

(assert (= bs!1794416 (and d!2120492 d!2119874)))

(assert (=> bs!1794416 (= lambda!379673 lambda!379589)))

(declare-fun bs!1794417 () Bool)

(assert (= bs!1794417 (and d!2120492 d!2120436)))

(assert (=> bs!1794417 (= lambda!379673 lambda!379664)))

(declare-fun bs!1794418 () Bool)

(assert (= bs!1794418 (and d!2120492 d!2119854)))

(assert (=> bs!1794418 (= lambda!379673 lambda!379583)))

(declare-fun bs!1794419 () Bool)

(assert (= bs!1794419 (and d!2120492 d!2120256)))

(assert (=> bs!1794419 (= lambda!379673 lambda!379641)))

(declare-fun lt!2440901 () List!66042)

(assert (=> d!2120492 (forall!15778 lt!2440901 lambda!379673)))

(declare-fun e!4076837 () List!66042)

(assert (=> d!2120492 (= lt!2440901 e!4076837)))

(declare-fun c!1252642 () Bool)

(assert (=> d!2120492 (= c!1252642 ((_ is Cons!65920) (Cons!65920 lt!2440699 Nil!65920)))))

(assert (=> d!2120492 (= (unfocusZipperList!2002 (Cons!65920 lt!2440699 Nil!65920)) lt!2440901)))

(declare-fun b!6750358 () Bool)

(assert (=> b!6750358 (= e!4076837 (Cons!65918 (generalisedConcat!2178 (exprs!6465 (h!72368 (Cons!65920 lt!2440699 Nil!65920)))) (unfocusZipperList!2002 (t!379745 (Cons!65920 lt!2440699 Nil!65920)))))))

(declare-fun b!6750359 () Bool)

(assert (=> b!6750359 (= e!4076837 Nil!65918)))

(assert (= (and d!2120492 c!1252642) b!6750358))

(assert (= (and d!2120492 (not c!1252642)) b!6750359))

(declare-fun m!7504854 () Bool)

(assert (=> d!2120492 m!7504854))

(declare-fun m!7504856 () Bool)

(assert (=> b!6750358 m!7504856))

(declare-fun m!7504858 () Bool)

(assert (=> b!6750358 m!7504858))

(assert (=> d!2119864 d!2120492))

(declare-fun b!6750360 () Bool)

(declare-fun e!4076838 () List!66043)

(assert (=> b!6750360 (= e!4076838 (_2!36859 lt!2440718))))

(declare-fun b!6750362 () Bool)

(declare-fun res!2761181 () Bool)

(declare-fun e!4076839 () Bool)

(assert (=> b!6750362 (=> (not res!2761181) (not e!4076839))))

(declare-fun lt!2440902 () List!66043)

(assert (=> b!6750362 (= res!2761181 (= (size!40621 lt!2440902) (+ (size!40621 (t!379744 (_1!36859 lt!2440718))) (size!40621 (_2!36859 lt!2440718)))))))

(declare-fun b!6750361 () Bool)

(assert (=> b!6750361 (= e!4076838 (Cons!65919 (h!72367 (t!379744 (_1!36859 lt!2440718))) (++!14735 (t!379744 (t!379744 (_1!36859 lt!2440718))) (_2!36859 lt!2440718))))))

(declare-fun d!2120494 () Bool)

(assert (=> d!2120494 e!4076839))

(declare-fun res!2761182 () Bool)

(assert (=> d!2120494 (=> (not res!2761182) (not e!4076839))))

(assert (=> d!2120494 (= res!2761182 (= (content!12821 lt!2440902) ((_ map or) (content!12821 (t!379744 (_1!36859 lt!2440718))) (content!12821 (_2!36859 lt!2440718)))))))

(assert (=> d!2120494 (= lt!2440902 e!4076838)))

(declare-fun c!1252643 () Bool)

(assert (=> d!2120494 (= c!1252643 ((_ is Nil!65919) (t!379744 (_1!36859 lt!2440718))))))

(assert (=> d!2120494 (= (++!14735 (t!379744 (_1!36859 lt!2440718)) (_2!36859 lt!2440718)) lt!2440902)))

(declare-fun b!6750363 () Bool)

(assert (=> b!6750363 (= e!4076839 (or (not (= (_2!36859 lt!2440718) Nil!65919)) (= lt!2440902 (t!379744 (_1!36859 lt!2440718)))))))

(assert (= (and d!2120494 c!1252643) b!6750360))

(assert (= (and d!2120494 (not c!1252643)) b!6750361))

(assert (= (and d!2120494 res!2761182) b!6750362))

(assert (= (and b!6750362 res!2761181) b!6750363))

(declare-fun m!7504860 () Bool)

(assert (=> b!6750362 m!7504860))

(assert (=> b!6750362 m!7504352))

(assert (=> b!6750362 m!7503502))

(declare-fun m!7504862 () Bool)

(assert (=> b!6750361 m!7504862))

(declare-fun m!7504864 () Bool)

(assert (=> d!2120494 m!7504864))

(assert (=> d!2120494 m!7504284))

(assert (=> d!2120494 m!7503510))

(assert (=> b!6749007 d!2120494))

(assert (=> b!6748882 d!2120186))

(declare-fun b!6750365 () Bool)

(declare-fun e!4076840 () Bool)

(declare-fun tp!1849742 () Bool)

(declare-fun tp!1849739 () Bool)

(assert (=> b!6750365 (= e!4076840 (and tp!1849742 tp!1849739))))

(declare-fun b!6750367 () Bool)

(declare-fun tp!1849738 () Bool)

(declare-fun tp!1849740 () Bool)

(assert (=> b!6750367 (= e!4076840 (and tp!1849738 tp!1849740))))

(declare-fun b!6750366 () Bool)

(declare-fun tp!1849741 () Bool)

(assert (=> b!6750366 (= e!4076840 tp!1849741)))

(assert (=> b!6749068 (= tp!1849551 e!4076840)))

(declare-fun b!6750364 () Bool)

(assert (=> b!6750364 (= e!4076840 tp_is_empty!42415)))

(assert (= (and b!6749068 ((_ is ElementMatch!16581) (regOne!33674 (regTwo!33675 r!7292)))) b!6750364))

(assert (= (and b!6749068 ((_ is Concat!25426) (regOne!33674 (regTwo!33675 r!7292)))) b!6750365))

(assert (= (and b!6749068 ((_ is Star!16581) (regOne!33674 (regTwo!33675 r!7292)))) b!6750366))

(assert (= (and b!6749068 ((_ is Union!16581) (regOne!33674 (regTwo!33675 r!7292)))) b!6750367))

(declare-fun b!6750369 () Bool)

(declare-fun e!4076841 () Bool)

(declare-fun tp!1849747 () Bool)

(declare-fun tp!1849744 () Bool)

(assert (=> b!6750369 (= e!4076841 (and tp!1849747 tp!1849744))))

(declare-fun b!6750371 () Bool)

(declare-fun tp!1849743 () Bool)

(declare-fun tp!1849745 () Bool)

(assert (=> b!6750371 (= e!4076841 (and tp!1849743 tp!1849745))))

(declare-fun b!6750370 () Bool)

(declare-fun tp!1849746 () Bool)

(assert (=> b!6750370 (= e!4076841 tp!1849746)))

(assert (=> b!6749068 (= tp!1849548 e!4076841)))

(declare-fun b!6750368 () Bool)

(assert (=> b!6750368 (= e!4076841 tp_is_empty!42415)))

(assert (= (and b!6749068 ((_ is ElementMatch!16581) (regTwo!33674 (regTwo!33675 r!7292)))) b!6750368))

(assert (= (and b!6749068 ((_ is Concat!25426) (regTwo!33674 (regTwo!33675 r!7292)))) b!6750369))

(assert (= (and b!6749068 ((_ is Star!16581) (regTwo!33674 (regTwo!33675 r!7292)))) b!6750370))

(assert (= (and b!6749068 ((_ is Union!16581) (regTwo!33674 (regTwo!33675 r!7292)))) b!6750371))

(declare-fun b!6750373 () Bool)

(declare-fun e!4076842 () Bool)

(declare-fun tp!1849752 () Bool)

(declare-fun tp!1849749 () Bool)

(assert (=> b!6750373 (= e!4076842 (and tp!1849752 tp!1849749))))

(declare-fun b!6750375 () Bool)

(declare-fun tp!1849748 () Bool)

(declare-fun tp!1849750 () Bool)

(assert (=> b!6750375 (= e!4076842 (and tp!1849748 tp!1849750))))

(declare-fun b!6750374 () Bool)

(declare-fun tp!1849751 () Bool)

(assert (=> b!6750374 (= e!4076842 tp!1849751)))

(assert (=> b!6749046 (= tp!1849521 e!4076842)))

(declare-fun b!6750372 () Bool)

(assert (=> b!6750372 (= e!4076842 tp_is_empty!42415)))

(assert (= (and b!6749046 ((_ is ElementMatch!16581) (regOne!33675 (reg!16910 r!7292)))) b!6750372))

(assert (= (and b!6749046 ((_ is Concat!25426) (regOne!33675 (reg!16910 r!7292)))) b!6750373))

(assert (= (and b!6749046 ((_ is Star!16581) (regOne!33675 (reg!16910 r!7292)))) b!6750374))

(assert (= (and b!6749046 ((_ is Union!16581) (regOne!33675 (reg!16910 r!7292)))) b!6750375))

(declare-fun b!6750377 () Bool)

(declare-fun e!4076843 () Bool)

(declare-fun tp!1849757 () Bool)

(declare-fun tp!1849754 () Bool)

(assert (=> b!6750377 (= e!4076843 (and tp!1849757 tp!1849754))))

(declare-fun b!6750379 () Bool)

(declare-fun tp!1849753 () Bool)

(declare-fun tp!1849755 () Bool)

(assert (=> b!6750379 (= e!4076843 (and tp!1849753 tp!1849755))))

(declare-fun b!6750378 () Bool)

(declare-fun tp!1849756 () Bool)

(assert (=> b!6750378 (= e!4076843 tp!1849756)))

(assert (=> b!6749046 (= tp!1849523 e!4076843)))

(declare-fun b!6750376 () Bool)

(assert (=> b!6750376 (= e!4076843 tp_is_empty!42415)))

(assert (= (and b!6749046 ((_ is ElementMatch!16581) (regTwo!33675 (reg!16910 r!7292)))) b!6750376))

(assert (= (and b!6749046 ((_ is Concat!25426) (regTwo!33675 (reg!16910 r!7292)))) b!6750377))

(assert (= (and b!6749046 ((_ is Star!16581) (regTwo!33675 (reg!16910 r!7292)))) b!6750378))

(assert (= (and b!6749046 ((_ is Union!16581) (regTwo!33675 (reg!16910 r!7292)))) b!6750379))

(declare-fun b!6750381 () Bool)

(declare-fun e!4076844 () Bool)

(declare-fun tp!1849762 () Bool)

(declare-fun tp!1849759 () Bool)

(assert (=> b!6750381 (= e!4076844 (and tp!1849762 tp!1849759))))

(declare-fun b!6750383 () Bool)

(declare-fun tp!1849758 () Bool)

(declare-fun tp!1849760 () Bool)

(assert (=> b!6750383 (= e!4076844 (and tp!1849758 tp!1849760))))

(declare-fun b!6750382 () Bool)

(declare-fun tp!1849761 () Bool)

(assert (=> b!6750382 (= e!4076844 tp!1849761)))

(assert (=> b!6749070 (= tp!1849547 e!4076844)))

(declare-fun b!6750380 () Bool)

(assert (=> b!6750380 (= e!4076844 tp_is_empty!42415)))

(assert (= (and b!6749070 ((_ is ElementMatch!16581) (regOne!33675 (regTwo!33675 r!7292)))) b!6750380))

(assert (= (and b!6749070 ((_ is Concat!25426) (regOne!33675 (regTwo!33675 r!7292)))) b!6750381))

(assert (= (and b!6749070 ((_ is Star!16581) (regOne!33675 (regTwo!33675 r!7292)))) b!6750382))

(assert (= (and b!6749070 ((_ is Union!16581) (regOne!33675 (regTwo!33675 r!7292)))) b!6750383))

(declare-fun b!6750385 () Bool)

(declare-fun e!4076845 () Bool)

(declare-fun tp!1849767 () Bool)

(declare-fun tp!1849764 () Bool)

(assert (=> b!6750385 (= e!4076845 (and tp!1849767 tp!1849764))))

(declare-fun b!6750387 () Bool)

(declare-fun tp!1849763 () Bool)

(declare-fun tp!1849765 () Bool)

(assert (=> b!6750387 (= e!4076845 (and tp!1849763 tp!1849765))))

(declare-fun b!6750386 () Bool)

(declare-fun tp!1849766 () Bool)

(assert (=> b!6750386 (= e!4076845 tp!1849766)))

(assert (=> b!6749070 (= tp!1849549 e!4076845)))

(declare-fun b!6750384 () Bool)

(assert (=> b!6750384 (= e!4076845 tp_is_empty!42415)))

(assert (= (and b!6749070 ((_ is ElementMatch!16581) (regTwo!33675 (regTwo!33675 r!7292)))) b!6750384))

(assert (= (and b!6749070 ((_ is Concat!25426) (regTwo!33675 (regTwo!33675 r!7292)))) b!6750385))

(assert (= (and b!6749070 ((_ is Star!16581) (regTwo!33675 (regTwo!33675 r!7292)))) b!6750386))

(assert (= (and b!6749070 ((_ is Union!16581) (regTwo!33675 (regTwo!33675 r!7292)))) b!6750387))

(declare-fun b!6750389 () Bool)

(declare-fun e!4076847 () Bool)

(declare-fun tp!1849768 () Bool)

(assert (=> b!6750389 (= e!4076847 tp!1849768)))

(declare-fun tp!1849769 () Bool)

(declare-fun e!4076846 () Bool)

(declare-fun b!6750388 () Bool)

(assert (=> b!6750388 (= e!4076846 (and (inv!84699 (h!72368 (t!379745 (t!379745 zl!343)))) e!4076847 tp!1849769))))

(assert (=> b!6749053 (= tp!1849531 e!4076846)))

(assert (= b!6750388 b!6750389))

(assert (= (and b!6749053 ((_ is Cons!65920) (t!379745 (t!379745 zl!343)))) b!6750388))

(declare-fun m!7504866 () Bool)

(assert (=> b!6750388 m!7504866))

(declare-fun b!6750391 () Bool)

(declare-fun e!4076848 () Bool)

(declare-fun tp!1849774 () Bool)

(declare-fun tp!1849771 () Bool)

(assert (=> b!6750391 (= e!4076848 (and tp!1849774 tp!1849771))))

(declare-fun b!6750393 () Bool)

(declare-fun tp!1849770 () Bool)

(declare-fun tp!1849772 () Bool)

(assert (=> b!6750393 (= e!4076848 (and tp!1849770 tp!1849772))))

(declare-fun b!6750392 () Bool)

(declare-fun tp!1849773 () Bool)

(assert (=> b!6750392 (= e!4076848 tp!1849773)))

(assert (=> b!6749060 (= tp!1849541 e!4076848)))

(declare-fun b!6750390 () Bool)

(assert (=> b!6750390 (= e!4076848 tp_is_empty!42415)))

(assert (= (and b!6749060 ((_ is ElementMatch!16581) (regOne!33674 (regTwo!33674 r!7292)))) b!6750390))

(assert (= (and b!6749060 ((_ is Concat!25426) (regOne!33674 (regTwo!33674 r!7292)))) b!6750391))

(assert (= (and b!6749060 ((_ is Star!16581) (regOne!33674 (regTwo!33674 r!7292)))) b!6750392))

(assert (= (and b!6749060 ((_ is Union!16581) (regOne!33674 (regTwo!33674 r!7292)))) b!6750393))

(declare-fun b!6750395 () Bool)

(declare-fun e!4076849 () Bool)

(declare-fun tp!1849779 () Bool)

(declare-fun tp!1849776 () Bool)

(assert (=> b!6750395 (= e!4076849 (and tp!1849779 tp!1849776))))

(declare-fun b!6750397 () Bool)

(declare-fun tp!1849775 () Bool)

(declare-fun tp!1849777 () Bool)

(assert (=> b!6750397 (= e!4076849 (and tp!1849775 tp!1849777))))

(declare-fun b!6750396 () Bool)

(declare-fun tp!1849778 () Bool)

(assert (=> b!6750396 (= e!4076849 tp!1849778)))

(assert (=> b!6749060 (= tp!1849538 e!4076849)))

(declare-fun b!6750394 () Bool)

(assert (=> b!6750394 (= e!4076849 tp_is_empty!42415)))

(assert (= (and b!6749060 ((_ is ElementMatch!16581) (regTwo!33674 (regTwo!33674 r!7292)))) b!6750394))

(assert (= (and b!6749060 ((_ is Concat!25426) (regTwo!33674 (regTwo!33674 r!7292)))) b!6750395))

(assert (= (and b!6749060 ((_ is Star!16581) (regTwo!33674 (regTwo!33674 r!7292)))) b!6750396))

(assert (= (and b!6749060 ((_ is Union!16581) (regTwo!33674 (regTwo!33674 r!7292)))) b!6750397))

(declare-fun b!6750399 () Bool)

(declare-fun e!4076850 () Bool)

(declare-fun tp!1849784 () Bool)

(declare-fun tp!1849781 () Bool)

(assert (=> b!6750399 (= e!4076850 (and tp!1849784 tp!1849781))))

(declare-fun b!6750401 () Bool)

(declare-fun tp!1849780 () Bool)

(declare-fun tp!1849782 () Bool)

(assert (=> b!6750401 (= e!4076850 (and tp!1849780 tp!1849782))))

(declare-fun b!6750400 () Bool)

(declare-fun tp!1849783 () Bool)

(assert (=> b!6750400 (= e!4076850 tp!1849783)))

(assert (=> b!6749069 (= tp!1849550 e!4076850)))

(declare-fun b!6750398 () Bool)

(assert (=> b!6750398 (= e!4076850 tp_is_empty!42415)))

(assert (= (and b!6749069 ((_ is ElementMatch!16581) (reg!16910 (regTwo!33675 r!7292)))) b!6750398))

(assert (= (and b!6749069 ((_ is Concat!25426) (reg!16910 (regTwo!33675 r!7292)))) b!6750399))

(assert (= (and b!6749069 ((_ is Star!16581) (reg!16910 (regTwo!33675 r!7292)))) b!6750400))

(assert (= (and b!6749069 ((_ is Union!16581) (reg!16910 (regTwo!33675 r!7292)))) b!6750401))

(declare-fun b!6750403 () Bool)

(declare-fun e!4076851 () Bool)

(declare-fun tp!1849789 () Bool)

(declare-fun tp!1849786 () Bool)

(assert (=> b!6750403 (= e!4076851 (and tp!1849789 tp!1849786))))

(declare-fun b!6750405 () Bool)

(declare-fun tp!1849785 () Bool)

(declare-fun tp!1849787 () Bool)

(assert (=> b!6750405 (= e!4076851 (and tp!1849785 tp!1849787))))

(declare-fun b!6750404 () Bool)

(declare-fun tp!1849788 () Bool)

(assert (=> b!6750404 (= e!4076851 tp!1849788)))

(assert (=> b!6749044 (= tp!1849525 e!4076851)))

(declare-fun b!6750402 () Bool)

(assert (=> b!6750402 (= e!4076851 tp_is_empty!42415)))

(assert (= (and b!6749044 ((_ is ElementMatch!16581) (regOne!33674 (reg!16910 r!7292)))) b!6750402))

(assert (= (and b!6749044 ((_ is Concat!25426) (regOne!33674 (reg!16910 r!7292)))) b!6750403))

(assert (= (and b!6749044 ((_ is Star!16581) (regOne!33674 (reg!16910 r!7292)))) b!6750404))

(assert (= (and b!6749044 ((_ is Union!16581) (regOne!33674 (reg!16910 r!7292)))) b!6750405))

(declare-fun b!6750407 () Bool)

(declare-fun e!4076852 () Bool)

(declare-fun tp!1849794 () Bool)

(declare-fun tp!1849791 () Bool)

(assert (=> b!6750407 (= e!4076852 (and tp!1849794 tp!1849791))))

(declare-fun b!6750409 () Bool)

(declare-fun tp!1849790 () Bool)

(declare-fun tp!1849792 () Bool)

(assert (=> b!6750409 (= e!4076852 (and tp!1849790 tp!1849792))))

(declare-fun b!6750408 () Bool)

(declare-fun tp!1849793 () Bool)

(assert (=> b!6750408 (= e!4076852 tp!1849793)))

(assert (=> b!6749044 (= tp!1849522 e!4076852)))

(declare-fun b!6750406 () Bool)

(assert (=> b!6750406 (= e!4076852 tp_is_empty!42415)))

(assert (= (and b!6749044 ((_ is ElementMatch!16581) (regTwo!33674 (reg!16910 r!7292)))) b!6750406))

(assert (= (and b!6749044 ((_ is Concat!25426) (regTwo!33674 (reg!16910 r!7292)))) b!6750407))

(assert (= (and b!6749044 ((_ is Star!16581) (regTwo!33674 (reg!16910 r!7292)))) b!6750408))

(assert (= (and b!6749044 ((_ is Union!16581) (regTwo!33674 (reg!16910 r!7292)))) b!6750409))

(declare-fun b!6750411 () Bool)

(declare-fun e!4076853 () Bool)

(declare-fun tp!1849799 () Bool)

(declare-fun tp!1849796 () Bool)

(assert (=> b!6750411 (= e!4076853 (and tp!1849799 tp!1849796))))

(declare-fun b!6750413 () Bool)

(declare-fun tp!1849795 () Bool)

(declare-fun tp!1849797 () Bool)

(assert (=> b!6750413 (= e!4076853 (and tp!1849795 tp!1849797))))

(declare-fun b!6750412 () Bool)

(declare-fun tp!1849798 () Bool)

(assert (=> b!6750412 (= e!4076853 tp!1849798)))

(assert (=> b!6749045 (= tp!1849524 e!4076853)))

(declare-fun b!6750410 () Bool)

(assert (=> b!6750410 (= e!4076853 tp_is_empty!42415)))

(assert (= (and b!6749045 ((_ is ElementMatch!16581) (reg!16910 (reg!16910 r!7292)))) b!6750410))

(assert (= (and b!6749045 ((_ is Concat!25426) (reg!16910 (reg!16910 r!7292)))) b!6750411))

(assert (= (and b!6749045 ((_ is Star!16581) (reg!16910 (reg!16910 r!7292)))) b!6750412))

(assert (= (and b!6749045 ((_ is Union!16581) (reg!16910 (reg!16910 r!7292)))) b!6750413))

(declare-fun b!6750415 () Bool)

(declare-fun e!4076854 () Bool)

(declare-fun tp!1849804 () Bool)

(declare-fun tp!1849801 () Bool)

(assert (=> b!6750415 (= e!4076854 (and tp!1849804 tp!1849801))))

(declare-fun b!6750417 () Bool)

(declare-fun tp!1849800 () Bool)

(declare-fun tp!1849802 () Bool)

(assert (=> b!6750417 (= e!4076854 (and tp!1849800 tp!1849802))))

(declare-fun b!6750416 () Bool)

(declare-fun tp!1849803 () Bool)

(assert (=> b!6750416 (= e!4076854 tp!1849803)))

(assert (=> b!6749071 (= tp!1849552 e!4076854)))

(declare-fun b!6750414 () Bool)

(assert (=> b!6750414 (= e!4076854 tp_is_empty!42415)))

(assert (= (and b!6749071 ((_ is ElementMatch!16581) (h!72366 (exprs!6465 setElem!46117)))) b!6750414))

(assert (= (and b!6749071 ((_ is Concat!25426) (h!72366 (exprs!6465 setElem!46117)))) b!6750415))

(assert (= (and b!6749071 ((_ is Star!16581) (h!72366 (exprs!6465 setElem!46117)))) b!6750416))

(assert (= (and b!6749071 ((_ is Union!16581) (h!72366 (exprs!6465 setElem!46117)))) b!6750417))

(declare-fun b!6750418 () Bool)

(declare-fun e!4076855 () Bool)

(declare-fun tp!1849805 () Bool)

(declare-fun tp!1849806 () Bool)

(assert (=> b!6750418 (= e!4076855 (and tp!1849805 tp!1849806))))

(assert (=> b!6749071 (= tp!1849553 e!4076855)))

(assert (= (and b!6749071 ((_ is Cons!65918) (t!379743 (exprs!6465 setElem!46117)))) b!6750418))

(declare-fun b!6750419 () Bool)

(declare-fun e!4076856 () Bool)

(declare-fun tp!1849807 () Bool)

(assert (=> b!6750419 (= e!4076856 (and tp_is_empty!42415 tp!1849807))))

(assert (=> b!6749032 (= tp!1849510 e!4076856)))

(assert (= (and b!6749032 ((_ is Cons!65919) (t!379744 (t!379744 s!2326)))) b!6750419))

(declare-fun b!6750421 () Bool)

(declare-fun e!4076857 () Bool)

(declare-fun tp!1849812 () Bool)

(declare-fun tp!1849809 () Bool)

(assert (=> b!6750421 (= e!4076857 (and tp!1849812 tp!1849809))))

(declare-fun b!6750423 () Bool)

(declare-fun tp!1849808 () Bool)

(declare-fun tp!1849810 () Bool)

(assert (=> b!6750423 (= e!4076857 (and tp!1849808 tp!1849810))))

(declare-fun b!6750422 () Bool)

(declare-fun tp!1849811 () Bool)

(assert (=> b!6750422 (= e!4076857 tp!1849811)))

(assert (=> b!6749062 (= tp!1849537 e!4076857)))

(declare-fun b!6750420 () Bool)

(assert (=> b!6750420 (= e!4076857 tp_is_empty!42415)))

(assert (= (and b!6749062 ((_ is ElementMatch!16581) (regOne!33675 (regTwo!33674 r!7292)))) b!6750420))

(assert (= (and b!6749062 ((_ is Concat!25426) (regOne!33675 (regTwo!33674 r!7292)))) b!6750421))

(assert (= (and b!6749062 ((_ is Star!16581) (regOne!33675 (regTwo!33674 r!7292)))) b!6750422))

(assert (= (and b!6749062 ((_ is Union!16581) (regOne!33675 (regTwo!33674 r!7292)))) b!6750423))

(declare-fun b!6750425 () Bool)

(declare-fun e!4076858 () Bool)

(declare-fun tp!1849817 () Bool)

(declare-fun tp!1849814 () Bool)

(assert (=> b!6750425 (= e!4076858 (and tp!1849817 tp!1849814))))

(declare-fun b!6750427 () Bool)

(declare-fun tp!1849813 () Bool)

(declare-fun tp!1849815 () Bool)

(assert (=> b!6750427 (= e!4076858 (and tp!1849813 tp!1849815))))

(declare-fun b!6750426 () Bool)

(declare-fun tp!1849816 () Bool)

(assert (=> b!6750426 (= e!4076858 tp!1849816)))

(assert (=> b!6749062 (= tp!1849539 e!4076858)))

(declare-fun b!6750424 () Bool)

(assert (=> b!6750424 (= e!4076858 tp_is_empty!42415)))

(assert (= (and b!6749062 ((_ is ElementMatch!16581) (regTwo!33675 (regTwo!33674 r!7292)))) b!6750424))

(assert (= (and b!6749062 ((_ is Concat!25426) (regTwo!33675 (regTwo!33674 r!7292)))) b!6750425))

(assert (= (and b!6749062 ((_ is Star!16581) (regTwo!33675 (regTwo!33674 r!7292)))) b!6750426))

(assert (= (and b!6749062 ((_ is Union!16581) (regTwo!33675 (regTwo!33674 r!7292)))) b!6750427))

(declare-fun b!6750428 () Bool)

(declare-fun e!4076859 () Bool)

(declare-fun tp!1849818 () Bool)

(declare-fun tp!1849819 () Bool)

(assert (=> b!6750428 (= e!4076859 (and tp!1849818 tp!1849819))))

(assert (=> b!6749054 (= tp!1849530 e!4076859)))

(assert (= (and b!6749054 ((_ is Cons!65918) (exprs!6465 (h!72368 (t!379745 zl!343))))) b!6750428))

(declare-fun b!6750430 () Bool)

(declare-fun e!4076860 () Bool)

(declare-fun tp!1849824 () Bool)

(declare-fun tp!1849821 () Bool)

(assert (=> b!6750430 (= e!4076860 (and tp!1849824 tp!1849821))))

(declare-fun b!6750432 () Bool)

(declare-fun tp!1849820 () Bool)

(declare-fun tp!1849822 () Bool)

(assert (=> b!6750432 (= e!4076860 (and tp!1849820 tp!1849822))))

(declare-fun b!6750431 () Bool)

(declare-fun tp!1849823 () Bool)

(assert (=> b!6750431 (= e!4076860 tp!1849823)))

(assert (=> b!6749061 (= tp!1849540 e!4076860)))

(declare-fun b!6750429 () Bool)

(assert (=> b!6750429 (= e!4076860 tp_is_empty!42415)))

(assert (= (and b!6749061 ((_ is ElementMatch!16581) (reg!16910 (regTwo!33674 r!7292)))) b!6750429))

(assert (= (and b!6749061 ((_ is Concat!25426) (reg!16910 (regTwo!33674 r!7292)))) b!6750430))

(assert (= (and b!6749061 ((_ is Star!16581) (reg!16910 (regTwo!33674 r!7292)))) b!6750431))

(assert (= (and b!6749061 ((_ is Union!16581) (reg!16910 (regTwo!33674 r!7292)))) b!6750432))

(declare-fun b!6750434 () Bool)

(declare-fun e!4076861 () Bool)

(declare-fun tp!1849829 () Bool)

(declare-fun tp!1849826 () Bool)

(assert (=> b!6750434 (= e!4076861 (and tp!1849829 tp!1849826))))

(declare-fun b!6750436 () Bool)

(declare-fun tp!1849825 () Bool)

(declare-fun tp!1849827 () Bool)

(assert (=> b!6750436 (= e!4076861 (and tp!1849825 tp!1849827))))

(declare-fun b!6750435 () Bool)

(declare-fun tp!1849828 () Bool)

(assert (=> b!6750435 (= e!4076861 tp!1849828)))

(assert (=> b!6749064 (= tp!1849546 e!4076861)))

(declare-fun b!6750433 () Bool)

(assert (=> b!6750433 (= e!4076861 tp_is_empty!42415)))

(assert (= (and b!6749064 ((_ is ElementMatch!16581) (regOne!33674 (regOne!33675 r!7292)))) b!6750433))

(assert (= (and b!6749064 ((_ is Concat!25426) (regOne!33674 (regOne!33675 r!7292)))) b!6750434))

(assert (= (and b!6749064 ((_ is Star!16581) (regOne!33674 (regOne!33675 r!7292)))) b!6750435))

(assert (= (and b!6749064 ((_ is Union!16581) (regOne!33674 (regOne!33675 r!7292)))) b!6750436))

(declare-fun b!6750438 () Bool)

(declare-fun e!4076862 () Bool)

(declare-fun tp!1849834 () Bool)

(declare-fun tp!1849831 () Bool)

(assert (=> b!6750438 (= e!4076862 (and tp!1849834 tp!1849831))))

(declare-fun b!6750440 () Bool)

(declare-fun tp!1849830 () Bool)

(declare-fun tp!1849832 () Bool)

(assert (=> b!6750440 (= e!4076862 (and tp!1849830 tp!1849832))))

(declare-fun b!6750439 () Bool)

(declare-fun tp!1849833 () Bool)

(assert (=> b!6750439 (= e!4076862 tp!1849833)))

(assert (=> b!6749064 (= tp!1849543 e!4076862)))

(declare-fun b!6750437 () Bool)

(assert (=> b!6750437 (= e!4076862 tp_is_empty!42415)))

(assert (= (and b!6749064 ((_ is ElementMatch!16581) (regTwo!33674 (regOne!33675 r!7292)))) b!6750437))

(assert (= (and b!6749064 ((_ is Concat!25426) (regTwo!33674 (regOne!33675 r!7292)))) b!6750438))

(assert (= (and b!6749064 ((_ is Star!16581) (regTwo!33674 (regOne!33675 r!7292)))) b!6750439))

(assert (= (and b!6749064 ((_ is Union!16581) (regTwo!33674 (regOne!33675 r!7292)))) b!6750440))

(declare-fun b!6750441 () Bool)

(declare-fun e!4076863 () Bool)

(declare-fun tp!1849835 () Bool)

(declare-fun tp!1849836 () Bool)

(assert (=> b!6750441 (= e!4076863 (and tp!1849835 tp!1849836))))

(assert (=> b!6749027 (= tp!1849507 e!4076863)))

(assert (= (and b!6749027 ((_ is Cons!65918) (exprs!6465 setElem!46123))) b!6750441))

(declare-fun b!6750443 () Bool)

(declare-fun e!4076864 () Bool)

(declare-fun tp!1849841 () Bool)

(declare-fun tp!1849838 () Bool)

(assert (=> b!6750443 (= e!4076864 (and tp!1849841 tp!1849838))))

(declare-fun b!6750445 () Bool)

(declare-fun tp!1849837 () Bool)

(declare-fun tp!1849839 () Bool)

(assert (=> b!6750445 (= e!4076864 (and tp!1849837 tp!1849839))))

(declare-fun b!6750444 () Bool)

(declare-fun tp!1849840 () Bool)

(assert (=> b!6750444 (= e!4076864 tp!1849840)))

(assert (=> b!6749056 (= tp!1849536 e!4076864)))

(declare-fun b!6750442 () Bool)

(assert (=> b!6750442 (= e!4076864 tp_is_empty!42415)))

(assert (= (and b!6749056 ((_ is ElementMatch!16581) (regOne!33674 (regOne!33674 r!7292)))) b!6750442))

(assert (= (and b!6749056 ((_ is Concat!25426) (regOne!33674 (regOne!33674 r!7292)))) b!6750443))

(assert (= (and b!6749056 ((_ is Star!16581) (regOne!33674 (regOne!33674 r!7292)))) b!6750444))

(assert (= (and b!6749056 ((_ is Union!16581) (regOne!33674 (regOne!33674 r!7292)))) b!6750445))

(declare-fun b!6750447 () Bool)

(declare-fun e!4076865 () Bool)

(declare-fun tp!1849846 () Bool)

(declare-fun tp!1849843 () Bool)

(assert (=> b!6750447 (= e!4076865 (and tp!1849846 tp!1849843))))

(declare-fun b!6750449 () Bool)

(declare-fun tp!1849842 () Bool)

(declare-fun tp!1849844 () Bool)

(assert (=> b!6750449 (= e!4076865 (and tp!1849842 tp!1849844))))

(declare-fun b!6750448 () Bool)

(declare-fun tp!1849845 () Bool)

(assert (=> b!6750448 (= e!4076865 tp!1849845)))

(assert (=> b!6749056 (= tp!1849533 e!4076865)))

(declare-fun b!6750446 () Bool)

(assert (=> b!6750446 (= e!4076865 tp_is_empty!42415)))

(assert (= (and b!6749056 ((_ is ElementMatch!16581) (regTwo!33674 (regOne!33674 r!7292)))) b!6750446))

(assert (= (and b!6749056 ((_ is Concat!25426) (regTwo!33674 (regOne!33674 r!7292)))) b!6750447))

(assert (= (and b!6749056 ((_ is Star!16581) (regTwo!33674 (regOne!33674 r!7292)))) b!6750448))

(assert (= (and b!6749056 ((_ is Union!16581) (regTwo!33674 (regOne!33674 r!7292)))) b!6750449))

(declare-fun b!6750451 () Bool)

(declare-fun e!4076866 () Bool)

(declare-fun tp!1849851 () Bool)

(declare-fun tp!1849848 () Bool)

(assert (=> b!6750451 (= e!4076866 (and tp!1849851 tp!1849848))))

(declare-fun b!6750453 () Bool)

(declare-fun tp!1849847 () Bool)

(declare-fun tp!1849849 () Bool)

(assert (=> b!6750453 (= e!4076866 (and tp!1849847 tp!1849849))))

(declare-fun b!6750452 () Bool)

(declare-fun tp!1849850 () Bool)

(assert (=> b!6750452 (= e!4076866 tp!1849850)))

(assert (=> b!6749065 (= tp!1849545 e!4076866)))

(declare-fun b!6750450 () Bool)

(assert (=> b!6750450 (= e!4076866 tp_is_empty!42415)))

(assert (= (and b!6749065 ((_ is ElementMatch!16581) (reg!16910 (regOne!33675 r!7292)))) b!6750450))

(assert (= (and b!6749065 ((_ is Concat!25426) (reg!16910 (regOne!33675 r!7292)))) b!6750451))

(assert (= (and b!6749065 ((_ is Star!16581) (reg!16910 (regOne!33675 r!7292)))) b!6750452))

(assert (= (and b!6749065 ((_ is Union!16581) (reg!16910 (regOne!33675 r!7292)))) b!6750453))

(declare-fun condSetEmpty!46137 () Bool)

(assert (=> setNonEmpty!46123 (= condSetEmpty!46137 (= setRest!46123 ((as const (Array Context!11930 Bool)) false)))))

(declare-fun setRes!46137 () Bool)

(assert (=> setNonEmpty!46123 (= tp!1849506 setRes!46137)))

(declare-fun setIsEmpty!46137 () Bool)

(assert (=> setIsEmpty!46137 setRes!46137))

(declare-fun setElem!46137 () Context!11930)

(declare-fun tp!1849852 () Bool)

(declare-fun e!4076867 () Bool)

(declare-fun setNonEmpty!46137 () Bool)

(assert (=> setNonEmpty!46137 (= setRes!46137 (and tp!1849852 (inv!84699 setElem!46137) e!4076867))))

(declare-fun setRest!46137 () (InoxSet Context!11930))

(assert (=> setNonEmpty!46137 (= setRest!46123 ((_ map or) (store ((as const (Array Context!11930 Bool)) false) setElem!46137 true) setRest!46137))))

(declare-fun b!6750454 () Bool)

(declare-fun tp!1849853 () Bool)

(assert (=> b!6750454 (= e!4076867 tp!1849853)))

(assert (= (and setNonEmpty!46123 condSetEmpty!46137) setIsEmpty!46137))

(assert (= (and setNonEmpty!46123 (not condSetEmpty!46137)) setNonEmpty!46137))

(assert (= setNonEmpty!46137 b!6750454))

(declare-fun m!7504868 () Bool)

(assert (=> setNonEmpty!46137 m!7504868))

(declare-fun b!6750456 () Bool)

(declare-fun e!4076868 () Bool)

(declare-fun tp!1849858 () Bool)

(declare-fun tp!1849855 () Bool)

(assert (=> b!6750456 (= e!4076868 (and tp!1849858 tp!1849855))))

(declare-fun b!6750458 () Bool)

(declare-fun tp!1849854 () Bool)

(declare-fun tp!1849856 () Bool)

(assert (=> b!6750458 (= e!4076868 (and tp!1849854 tp!1849856))))

(declare-fun b!6750457 () Bool)

(declare-fun tp!1849857 () Bool)

(assert (=> b!6750457 (= e!4076868 tp!1849857)))

(assert (=> b!6749022 (= tp!1849500 e!4076868)))

(declare-fun b!6750455 () Bool)

(assert (=> b!6750455 (= e!4076868 tp_is_empty!42415)))

(assert (= (and b!6749022 ((_ is ElementMatch!16581) (h!72366 (exprs!6465 (h!72368 zl!343))))) b!6750455))

(assert (= (and b!6749022 ((_ is Concat!25426) (h!72366 (exprs!6465 (h!72368 zl!343))))) b!6750456))

(assert (= (and b!6749022 ((_ is Star!16581) (h!72366 (exprs!6465 (h!72368 zl!343))))) b!6750457))

(assert (= (and b!6749022 ((_ is Union!16581) (h!72366 (exprs!6465 (h!72368 zl!343))))) b!6750458))

(declare-fun b!6750459 () Bool)

(declare-fun e!4076869 () Bool)

(declare-fun tp!1849859 () Bool)

(declare-fun tp!1849860 () Bool)

(assert (=> b!6750459 (= e!4076869 (and tp!1849859 tp!1849860))))

(assert (=> b!6749022 (= tp!1849501 e!4076869)))

(assert (= (and b!6749022 ((_ is Cons!65918) (t!379743 (exprs!6465 (h!72368 zl!343))))) b!6750459))

(declare-fun b!6750461 () Bool)

(declare-fun e!4076870 () Bool)

(declare-fun tp!1849865 () Bool)

(declare-fun tp!1849862 () Bool)

(assert (=> b!6750461 (= e!4076870 (and tp!1849865 tp!1849862))))

(declare-fun b!6750463 () Bool)

(declare-fun tp!1849861 () Bool)

(declare-fun tp!1849863 () Bool)

(assert (=> b!6750463 (= e!4076870 (and tp!1849861 tp!1849863))))

(declare-fun b!6750462 () Bool)

(declare-fun tp!1849864 () Bool)

(assert (=> b!6750462 (= e!4076870 tp!1849864)))

(assert (=> b!6749057 (= tp!1849535 e!4076870)))

(declare-fun b!6750460 () Bool)

(assert (=> b!6750460 (= e!4076870 tp_is_empty!42415)))

(assert (= (and b!6749057 ((_ is ElementMatch!16581) (reg!16910 (regOne!33674 r!7292)))) b!6750460))

(assert (= (and b!6749057 ((_ is Concat!25426) (reg!16910 (regOne!33674 r!7292)))) b!6750461))

(assert (= (and b!6749057 ((_ is Star!16581) (reg!16910 (regOne!33674 r!7292)))) b!6750462))

(assert (= (and b!6749057 ((_ is Union!16581) (reg!16910 (regOne!33674 r!7292)))) b!6750463))

(declare-fun b!6750465 () Bool)

(declare-fun e!4076871 () Bool)

(declare-fun tp!1849870 () Bool)

(declare-fun tp!1849867 () Bool)

(assert (=> b!6750465 (= e!4076871 (and tp!1849870 tp!1849867))))

(declare-fun b!6750467 () Bool)

(declare-fun tp!1849866 () Bool)

(declare-fun tp!1849868 () Bool)

(assert (=> b!6750467 (= e!4076871 (and tp!1849866 tp!1849868))))

(declare-fun b!6750466 () Bool)

(declare-fun tp!1849869 () Bool)

(assert (=> b!6750466 (= e!4076871 tp!1849869)))

(assert (=> b!6749066 (= tp!1849542 e!4076871)))

(declare-fun b!6750464 () Bool)

(assert (=> b!6750464 (= e!4076871 tp_is_empty!42415)))

(assert (= (and b!6749066 ((_ is ElementMatch!16581) (regOne!33675 (regOne!33675 r!7292)))) b!6750464))

(assert (= (and b!6749066 ((_ is Concat!25426) (regOne!33675 (regOne!33675 r!7292)))) b!6750465))

(assert (= (and b!6749066 ((_ is Star!16581) (regOne!33675 (regOne!33675 r!7292)))) b!6750466))

(assert (= (and b!6749066 ((_ is Union!16581) (regOne!33675 (regOne!33675 r!7292)))) b!6750467))

(declare-fun b!6750469 () Bool)

(declare-fun e!4076872 () Bool)

(declare-fun tp!1849875 () Bool)

(declare-fun tp!1849872 () Bool)

(assert (=> b!6750469 (= e!4076872 (and tp!1849875 tp!1849872))))

(declare-fun b!6750471 () Bool)

(declare-fun tp!1849871 () Bool)

(declare-fun tp!1849873 () Bool)

(assert (=> b!6750471 (= e!4076872 (and tp!1849871 tp!1849873))))

(declare-fun b!6750470 () Bool)

(declare-fun tp!1849874 () Bool)

(assert (=> b!6750470 (= e!4076872 tp!1849874)))

(assert (=> b!6749066 (= tp!1849544 e!4076872)))

(declare-fun b!6750468 () Bool)

(assert (=> b!6750468 (= e!4076872 tp_is_empty!42415)))

(assert (= (and b!6749066 ((_ is ElementMatch!16581) (regTwo!33675 (regOne!33675 r!7292)))) b!6750468))

(assert (= (and b!6749066 ((_ is Concat!25426) (regTwo!33675 (regOne!33675 r!7292)))) b!6750469))

(assert (= (and b!6749066 ((_ is Star!16581) (regTwo!33675 (regOne!33675 r!7292)))) b!6750470))

(assert (= (and b!6749066 ((_ is Union!16581) (regTwo!33675 (regOne!33675 r!7292)))) b!6750471))

(declare-fun b!6750473 () Bool)

(declare-fun e!4076873 () Bool)

(declare-fun tp!1849880 () Bool)

(declare-fun tp!1849877 () Bool)

(assert (=> b!6750473 (= e!4076873 (and tp!1849880 tp!1849877))))

(declare-fun b!6750475 () Bool)

(declare-fun tp!1849876 () Bool)

(declare-fun tp!1849878 () Bool)

(assert (=> b!6750475 (= e!4076873 (and tp!1849876 tp!1849878))))

(declare-fun b!6750474 () Bool)

(declare-fun tp!1849879 () Bool)

(assert (=> b!6750474 (= e!4076873 tp!1849879)))

(assert (=> b!6749058 (= tp!1849532 e!4076873)))

(declare-fun b!6750472 () Bool)

(assert (=> b!6750472 (= e!4076873 tp_is_empty!42415)))

(assert (= (and b!6749058 ((_ is ElementMatch!16581) (regOne!33675 (regOne!33674 r!7292)))) b!6750472))

(assert (= (and b!6749058 ((_ is Concat!25426) (regOne!33675 (regOne!33674 r!7292)))) b!6750473))

(assert (= (and b!6749058 ((_ is Star!16581) (regOne!33675 (regOne!33674 r!7292)))) b!6750474))

(assert (= (and b!6749058 ((_ is Union!16581) (regOne!33675 (regOne!33674 r!7292)))) b!6750475))

(declare-fun b!6750477 () Bool)

(declare-fun e!4076874 () Bool)

(declare-fun tp!1849885 () Bool)

(declare-fun tp!1849882 () Bool)

(assert (=> b!6750477 (= e!4076874 (and tp!1849885 tp!1849882))))

(declare-fun b!6750479 () Bool)

(declare-fun tp!1849881 () Bool)

(declare-fun tp!1849883 () Bool)

(assert (=> b!6750479 (= e!4076874 (and tp!1849881 tp!1849883))))

(declare-fun b!6750478 () Bool)

(declare-fun tp!1849884 () Bool)

(assert (=> b!6750478 (= e!4076874 tp!1849884)))

(assert (=> b!6749058 (= tp!1849534 e!4076874)))

(declare-fun b!6750476 () Bool)

(assert (=> b!6750476 (= e!4076874 tp_is_empty!42415)))

(assert (= (and b!6749058 ((_ is ElementMatch!16581) (regTwo!33675 (regOne!33674 r!7292)))) b!6750476))

(assert (= (and b!6749058 ((_ is Concat!25426) (regTwo!33675 (regOne!33674 r!7292)))) b!6750477))

(assert (= (and b!6749058 ((_ is Star!16581) (regTwo!33675 (regOne!33674 r!7292)))) b!6750478))

(assert (= (and b!6749058 ((_ is Union!16581) (regTwo!33675 (regOne!33674 r!7292)))) b!6750479))

(declare-fun b_lambda!254231 () Bool)

(assert (= b_lambda!254217 (or b!6748154 b_lambda!254231)))

(assert (=> d!2120308 d!2119888))

(declare-fun b_lambda!254233 () Bool)

(assert (= b_lambda!254221 (or d!2119874 b_lambda!254233)))

(declare-fun bs!1794420 () Bool)

(declare-fun d!2120496 () Bool)

(assert (= bs!1794420 (and d!2120496 d!2119874)))

(assert (=> bs!1794420 (= (dynLambda!26302 lambda!379589 (h!72366 (unfocusZipperList!2002 zl!343))) (validRegex!8317 (h!72366 (unfocusZipperList!2002 zl!343))))))

(declare-fun m!7504870 () Bool)

(assert (=> bs!1794420 m!7504870))

(assert (=> b!6750089 d!2120496))

(declare-fun b_lambda!254235 () Bool)

(assert (= b_lambda!254225 (or d!2119862 b_lambda!254235)))

(declare-fun bs!1794421 () Bool)

(declare-fun d!2120498 () Bool)

(assert (= bs!1794421 (and d!2120498 d!2119862)))

(assert (=> bs!1794421 (= (dynLambda!26302 lambda!379586 (h!72366 (exprs!6465 (h!72368 zl!343)))) (validRegex!8317 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(declare-fun m!7504872 () Bool)

(assert (=> bs!1794421 m!7504872))

(assert (=> b!6750167 d!2120498))

(declare-fun b_lambda!254237 () Bool)

(assert (= b_lambda!254223 (or b!6748154 b_lambda!254237)))

(assert (=> d!2120368 d!2119892))

(declare-fun b_lambda!254239 () Bool)

(assert (= b_lambda!254187 (or d!2119854 b_lambda!254239)))

(declare-fun bs!1794422 () Bool)

(declare-fun d!2120500 () Bool)

(assert (= bs!1794422 (and d!2120500 d!2119854)))

(assert (=> bs!1794422 (= (dynLambda!26302 lambda!379583 (h!72366 (exprs!6465 setElem!46117))) (validRegex!8317 (h!72366 (exprs!6465 setElem!46117))))))

(declare-fun m!7504874 () Bool)

(assert (=> bs!1794422 m!7504874))

(assert (=> b!6749610 d!2120500))

(declare-fun b_lambda!254241 () Bool)

(assert (= b_lambda!254227 (or d!2119814 b_lambda!254241)))

(declare-fun bs!1794423 () Bool)

(declare-fun d!2120502 () Bool)

(assert (= bs!1794423 (and d!2120502 d!2119814)))

(assert (=> bs!1794423 (= (dynLambda!26302 lambda!379575 (h!72366 (exprs!6465 lt!2440701))) (validRegex!8317 (h!72366 (exprs!6465 lt!2440701))))))

(declare-fun m!7504876 () Bool)

(assert (=> bs!1794423 m!7504876))

(assert (=> b!6750169 d!2120502))

(declare-fun b_lambda!254243 () Bool)

(assert (= b_lambda!254219 (or b!6748154 b_lambda!254243)))

(assert (=> d!2120324 d!2119894))

(declare-fun b_lambda!254245 () Bool)

(assert (= b_lambda!254215 (or b!6748154 b_lambda!254245)))

(assert (=> d!2120290 d!2119890))

(declare-fun b_lambda!254247 () Bool)

(assert (= b_lambda!254213 (or d!2119876 b_lambda!254247)))

(declare-fun bs!1794424 () Bool)

(declare-fun d!2120504 () Bool)

(assert (= bs!1794424 (and d!2120504 d!2119876)))

(assert (=> bs!1794424 (= (dynLambda!26302 lambda!379592 (h!72366 lt!2440825)) (validRegex!8317 (h!72366 lt!2440825)))))

(declare-fun m!7504878 () Bool)

(assert (=> bs!1794424 m!7504878))

(assert (=> b!6749905 d!2120504))

(declare-fun b_lambda!254249 () Bool)

(assert (= b_lambda!254229 (or d!2119732 b_lambda!254249)))

(declare-fun bs!1794425 () Bool)

(declare-fun d!2120506 () Bool)

(assert (= bs!1794425 (and d!2120506 d!2119732)))

(assert (=> bs!1794425 (= (dynLambda!26302 lambda!379537 (h!72366 (exprs!6465 (h!72368 zl!343)))) (validRegex!8317 (h!72366 (exprs!6465 (h!72368 zl!343)))))))

(assert (=> bs!1794425 m!7504872))

(assert (=> b!6750313 d!2120506))

(check-sat (not b!6750033) (not b!6750092) (not b!6750431) (not d!2120364) (not b!6750432) (not b!6749692) (not b!6749996) (not b!6750367) (not bm!610506) (not b!6750466) (not bm!610475) (not b!6750369) (not b!6750048) (not b_lambda!254245) (not b!6750047) (not b!6749932) (not b!6749615) (not b!6750419) (not b!6750477) (not b!6750356) (not b!6750120) (not d!2120480) (not b!6750052) (not bm!610459) (not d!2120428) (not d!2120384) (not b!6750462) (not bm!610437) (not d!2120426) (not b!6750411) (not d!2120166) (not b!6750109) (not b!6750077) (not b!6750422) (not b!6750118) (not bm!610446) (not b!6750443) (not b!6750353) (not b!6750389) (not d!2120466) (not bm!610448) (not d!2120460) (not b!6750404) (not b!6749619) (not d!2120494) (not b!6749777) (not b!6750408) (not b!6750267) (not d!2120452) (not b!6749992) (not b!6749717) (not bm!610436) (not b_lambda!254237) (not b!6750043) (not b!6749983) (not b!6750336) (not b!6750453) (not b!6750354) (not bm!610478) (not bm!610534) (not b!6750038) (not b!6749956) (not b!6750318) (not d!2120348) (not b!6750358) (not b!6750415) (not b!6750456) (not d!2120430) (not b!6750322) (not b!6750198) (not b!6749939) (not b!6750461) (not bm!610474) (not b!6750147) (not bm!610477) (not b!6749787) (not bm!610533) (not d!2120354) (not b!6749986) (not b!6750449) (not b!6749949) (not setNonEmpty!46137) (not b!6750269) (not b!6750413) (not d!2120464) (not b!6750171) (not b!6750397) (not b!6750288) (not bs!1794425) (not b!6750428) (not b!6750302) (not b!6750469) (not b!6749913) (not b!6750186) (not b!6749732) (not b!6750463) (not d!2120456) (not b!6750392) (not d!2120208) (not b!6749730) (not b!6750434) (not b!6750204) (not b!6749756) (not d!2120458) (not b!6750430) (not b!6750216) (not bm!610456) (not d!2120256) (not setNonEmpty!46136) (not b_lambda!254239) (not d!2120346) (not b!6750418) (not b!6750444) (not d!2120368) (not bm!610522) (not bm!610471) (not d!2120414) (not d!2120388) (not b!6750296) (not d!2120340) (not b!6750350) (not b!6750425) (not b!6749759) (not b!6750260) (not b_lambda!254167) (not b!6750379) (not b!6750253) (not bm!610447) (not d!2120206) (not b!6750448) (not b!6750303) (not b!6749909) (not b!6750254) (not bm!610420) (not b!6749927) (not b!6749793) (not bm!610453) (not b!6750035) (not b!6750097) (not bs!1794420) (not b!6750074) (not b!6750445) (not b!6750257) (not b!6750401) (not bm!610502) (not b!6750366) (not bm!610417) (not bm!610483) (not d!2120470) (not d!2120362) (not b!6750170) (not b!6750438) (not b!6750407) (not setNonEmpty!46134) (not d!2120392) (not b!6750113) (not d!2120454) (not b!6750386) (not bm!610519) (not d!2120406) (not b!6750228) (not d!2120234) (not b!6750396) (not bm!610504) (not b!6750465) (not b!6750298) (not b!6749955) (not b!6750475) (not bm!610460) (not b!6750056) (not b!6750314) (not d!2120408) (not b!6750293) (not b!6749931) (not bm!610457) (not b_lambda!254247) (not bm!610495) (not b!6749910) (not b!6749617) (not bm!610505) (not b!6750184) (not b!6749746) (not b_lambda!254231) (not d!2120490) (not bm!610511) (not b!6750435) (not b!6750095) (not bm!610469) (not bm!610480) (not b!6750374) (not b!6749624) (not bm!610481) (not bm!610518) (not bm!610497) (not d!2120170) (not b!6750050) (not bm!610440) (not b_lambda!254249) (not b!6750339) (not b!6750327) (not b!6750203) (not d!2120370) (not b!6750338) (not b!6750096) (not bm!610464) (not d!2120386) (not b!6750209) (not bm!610489) (not bm!610461) (not b!6749947) (not b!6750300) (not b!6749969) (not d!2120298) (not b!6750237) (not b!6749738) (not b!6750168) (not b!6750382) (not b!6750266) (not b!6750304) (not d!2120214) (not b_lambda!254163) (not d!2120436) (not b!6749623) (not b!6750458) (not d!2120236) (not d!2120322) (not b!6750225) (not b!6750262) (not d!2120468) tp_is_empty!42415 (not d!2120264) (not b!6750233) (not b!6750289) (not b!6750426) (not b!6750207) (not bm!610528) (not setNonEmpty!46135) (not b!6750387) (not b!6750292) (not d!2120492) (not b!6750018) (not b_lambda!254165) (not bs!1794421) (not bm!610434) (not b!6749614) (not b_lambda!254241) (not b!6749929) (not b!6750451) (not b!6750331) (not d!2120232) (not b!6749735) (not b!6750375) (not b!6750403) (not b!6750094) (not bm!610496) (not bm!610430) (not b_lambda!254169) (not b!6749951) (not b!6750365) (not b!6750252) (not d!2120230) (not b!6750454) (not b!6750423) (not b!6749896) (not b!6750229) (not bm!610520) (not b!6750223) (not b!6750190) (not b!6750381) (not b!6750459) (not b!6750400) (not b!6750037) (not b!6750421) (not b!6750412) (not b!6750245) (not b!6750378) (not bm!610470) (not bm!610482) (not bm!610514) (not d!2120332) (not b!6750416) (not b!6750474) (not bm!610441) (not b!6749733) (not bm!610467) (not d!2120416) (not d!2120412) (not bs!1794424) (not b!6750427) (not bm!610468) (not d!2120308) (not b!6750377) (not b!6750090) (not bm!610458) (not b!6750452) (not b!6749912) (not b!6750436) (not d!2120324) (not b!6750188) (not b!6750361) (not b!6750100) (not bm!610493) (not bm!610529) (not b!6750440) (not b!6750301) (not b!6750467) (not b!6750258) (not d!2120316) (not bm!610498) (not b!6749708) (not bm!610387) (not b!6750021) (not bm!610429) (not b!6749906) (not d!2120272) (not d!2120262) (not bm!610488) (not bm!610427) (not bm!610479) (not bs!1794422) (not bm!610416) (not b!6750138) (not b!6750091) (not b!6750409) (not b!6750373) (not bm!610455) (not b!6750405) (not d!2120374) (not b!6750471) (not b!6750391) (not b!6750473) (not b!6750162) (not b!6749994) (not b!6750351) (not b!6750057) (not bm!610530) (not d!2120198) (not b!6750441) (not b!6750326) (not b_lambda!254235) (not b!6750041) (not b!6750183) (not b!6749991) (not d!2120450) (not b!6750362) (not b!6750385) (not b!6750333) (not b!6749611) (not d!2120444) (not b!6750399) (not b!6750059) (not b!6749734) (not b!6750317) (not d!2120342) (not b!6750393) (not b!6750447) (not b!6750039) (not b!6750457) (not bm!610513) (not b!6750244) (not b!6750320) (not bm!610487) (not b!6749736) (not bm!610521) (not b!6750348) (not b!6750370) (not d!2120290) (not b!6750371) (not setNonEmpty!46132) (not b!6749946) (not d!2120334) (not bs!1794423) (not bm!610523) (not b!6750185) (not d!2120202) (not b!6750114) (not d!2120220) (not b!6750238) (not b!6750388) (not bm!610421) (not b!6749911) (not b!6750478) (not b!6750003) (not b_lambda!254243) (not b!6750383) (not bm!610449) (not b!6750479) (not b!6750001) (not b!6750000) (not b!6750352) (not b!6750127) (not bm!610507) (not bm!610531) (not d!2120482) (not bm!610442) (not b!6750024) (not b!6750080) (not bm!610465) (not bm!610425) (not d!2120356) (not bm!610428) (not b!6750231) (not bm!610512) (not b_lambda!254233) (not b!6750470) (not b!6750036) (not b!6749907) (not b!6749964) (not bm!610527) (not d!2120372) (not b!6750182) (not b!6750395) (not b!6750417) (not d!2120302) (not b!6750439) (not b!6750180) (not b!6750106) (not bm!610439))
(check-sat)
