; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557390 () Bool)

(assert start!557390)

(declare-fun b!5278712 () Bool)

(assert (=> b!5278712 true))

(assert (=> b!5278712 true))

(declare-fun lambda!266557 () Int)

(declare-fun lambda!266556 () Int)

(assert (=> b!5278712 (not (= lambda!266557 lambda!266556))))

(assert (=> b!5278712 true))

(assert (=> b!5278712 true))

(declare-fun b!5278704 () Bool)

(assert (=> b!5278704 true))

(declare-fun e!3282427 () Bool)

(declare-fun e!3282423 () Bool)

(assert (=> b!5278704 (= e!3282427 e!3282423)))

(declare-fun res!2238914 () Bool)

(assert (=> b!5278704 (=> res!2238914 e!3282423)))

(declare-datatypes ((C!30072 0))(
  ( (C!30073 (val!24738 Int)) )
))
(declare-datatypes ((Regex!14901 0))(
  ( (ElementMatch!14901 (c!914851 C!30072)) (Concat!23746 (regOne!30314 Regex!14901) (regTwo!30314 Regex!14901)) (EmptyExpr!14901) (Star!14901 (reg!15230 Regex!14901)) (EmptyLang!14901) (Union!14901 (regOne!30315 Regex!14901) (regTwo!30315 Regex!14901)) )
))
(declare-fun r!7292 () Regex!14901)

(declare-datatypes ((List!61002 0))(
  ( (Nil!60878) (Cons!60878 (h!67326 C!30072) (t!374203 List!61002)) )
))
(declare-fun s!2326 () List!61002)

(get-info :version)

(assert (=> b!5278704 (= res!2238914 (or (and ((_ is ElementMatch!14901) (regOne!30314 r!7292)) (= (c!914851 (regOne!30314 r!7292)) (h!67326 s!2326))) ((_ is Union!14901) (regOne!30314 r!7292)) (not ((_ is Concat!23746) (regOne!30314 r!7292)))))))

(declare-datatypes ((Unit!153122 0))(
  ( (Unit!153123) )
))
(declare-fun lt!2158059 () Unit!153122)

(declare-fun e!3282429 () Unit!153122)

(assert (=> b!5278704 (= lt!2158059 e!3282429)))

(declare-fun c!914850 () Bool)

(declare-datatypes ((List!61003 0))(
  ( (Nil!60879) (Cons!60879 (h!67327 Regex!14901) (t!374204 List!61003)) )
))
(declare-datatypes ((Context!8570 0))(
  ( (Context!8571 (exprs!4785 List!61003)) )
))
(declare-datatypes ((List!61004 0))(
  ( (Nil!60880) (Cons!60880 (h!67328 Context!8570) (t!374205 List!61004)) )
))
(declare-fun zl!343 () List!61004)

(declare-fun nullable!5070 (Regex!14901) Bool)

(assert (=> b!5278704 (= c!914850 (nullable!5070 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8570))

(declare-fun lambda!266558 () Int)

(declare-fun flatMap!628 ((InoxSet Context!8570) Int) (InoxSet Context!8570))

(declare-fun derivationStepZipperUp!273 (Context!8570 C!30072) (InoxSet Context!8570))

(assert (=> b!5278704 (= (flatMap!628 z!1189 lambda!266558) (derivationStepZipperUp!273 (h!67328 zl!343) (h!67326 s!2326)))))

(declare-fun lt!2158081 () Unit!153122)

(declare-fun lemmaFlatMapOnSingletonSet!160 ((InoxSet Context!8570) Context!8570 Int) Unit!153122)

(assert (=> b!5278704 (= lt!2158081 (lemmaFlatMapOnSingletonSet!160 z!1189 (h!67328 zl!343) lambda!266558))))

(declare-fun lt!2158070 () (InoxSet Context!8570))

(declare-fun lt!2158077 () Context!8570)

(assert (=> b!5278704 (= lt!2158070 (derivationStepZipperUp!273 lt!2158077 (h!67326 s!2326)))))

(declare-fun lt!2158061 () (InoxSet Context!8570))

(declare-fun derivationStepZipperDown!349 (Regex!14901 Context!8570 C!30072) (InoxSet Context!8570))

(assert (=> b!5278704 (= lt!2158061 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (h!67328 zl!343))) lt!2158077 (h!67326 s!2326)))))

(assert (=> b!5278704 (= lt!2158077 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun lt!2158071 () (InoxSet Context!8570))

(assert (=> b!5278704 (= lt!2158071 (derivationStepZipperUp!273 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))) (h!67326 s!2326)))))

(declare-fun b!5278705 () Bool)

(declare-fun e!3282432 () Bool)

(declare-fun tp!1474906 () Bool)

(assert (=> b!5278705 (= e!3282432 tp!1474906)))

(declare-fun b!5278706 () Bool)

(declare-fun e!3282419 () Bool)

(declare-fun tp_is_empty!39055 () Bool)

(declare-fun tp!1474904 () Bool)

(assert (=> b!5278706 (= e!3282419 (and tp_is_empty!39055 tp!1474904))))

(declare-fun b!5278707 () Bool)

(declare-fun res!2238912 () Bool)

(declare-fun e!3282430 () Bool)

(assert (=> b!5278707 (=> res!2238912 e!3282430)))

(declare-fun generalisedConcat!570 (List!61003) Regex!14901)

(assert (=> b!5278707 (= res!2238912 (not (= r!7292 (generalisedConcat!570 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5278708 () Bool)

(declare-fun e!3282431 () Bool)

(declare-fun e!3282436 () Bool)

(assert (=> b!5278708 (= e!3282431 e!3282436)))

(declare-fun res!2238896 () Bool)

(assert (=> b!5278708 (=> res!2238896 e!3282436)))

(declare-fun lt!2158091 () (InoxSet Context!8570))

(declare-fun lt!2158080 () (InoxSet Context!8570))

(assert (=> b!5278708 (= res!2238896 (not (= lt!2158091 lt!2158080)))))

(declare-fun lt!2158089 () (InoxSet Context!8570))

(declare-fun lt!2158086 () (InoxSet Context!8570))

(assert (=> b!5278708 (= lt!2158080 ((_ map or) lt!2158089 lt!2158086))))

(declare-fun lt!2158063 () Context!8570)

(assert (=> b!5278708 (= lt!2158086 (derivationStepZipperUp!273 lt!2158063 (h!67326 s!2326)))))

(declare-fun lt!2158064 () (InoxSet Context!8570))

(declare-fun lt!2158060 () Context!8570)

(assert (=> b!5278708 (= (flatMap!628 lt!2158064 lambda!266558) (derivationStepZipperUp!273 lt!2158060 (h!67326 s!2326)))))

(declare-fun lt!2158079 () Unit!153122)

(assert (=> b!5278708 (= lt!2158079 (lemmaFlatMapOnSingletonSet!160 lt!2158064 lt!2158060 lambda!266558))))

(declare-fun lt!2158090 () (InoxSet Context!8570))

(assert (=> b!5278708 (= lt!2158090 (derivationStepZipperUp!273 lt!2158060 (h!67326 s!2326)))))

(declare-fun derivationStepZipper!1144 ((InoxSet Context!8570) C!30072) (InoxSet Context!8570))

(assert (=> b!5278708 (= lt!2158091 (derivationStepZipper!1144 lt!2158064 (h!67326 s!2326)))))

(declare-fun lt!2158087 () (InoxSet Context!8570))

(assert (=> b!5278708 (= lt!2158087 (store ((as const (Array Context!8570 Bool)) false) lt!2158063 true))))

(assert (=> b!5278708 (= lt!2158064 (store ((as const (Array Context!8570 Bool)) false) lt!2158060 true))))

(declare-fun lt!2158092 () List!61003)

(assert (=> b!5278708 (= lt!2158060 (Context!8571 lt!2158092))))

(declare-fun lt!2158065 () List!61003)

(assert (=> b!5278708 (= lt!2158092 (Cons!60879 (regOne!30314 (regOne!30314 r!7292)) lt!2158065))))

(declare-fun b!5278709 () Bool)

(declare-fun e!3282435 () Bool)

(declare-fun e!3282433 () Bool)

(assert (=> b!5278709 (= e!3282435 e!3282433)))

(declare-fun res!2238900 () Bool)

(assert (=> b!5278709 (=> res!2238900 e!3282433)))

(declare-fun lt!2158083 () List!61004)

(declare-fun zipperDepthTotal!62 (List!61004) Int)

(assert (=> b!5278709 (= res!2238900 (>= (zipperDepthTotal!62 lt!2158083) (zipperDepthTotal!62 zl!343)))))

(assert (=> b!5278709 (= lt!2158083 (Cons!60880 lt!2158060 Nil!60880))))

(declare-fun b!5278710 () Bool)

(declare-fun tp!1474905 () Bool)

(declare-fun tp!1474907 () Bool)

(assert (=> b!5278710 (= e!3282432 (and tp!1474905 tp!1474907))))

(declare-fun b!5278711 () Bool)

(assert (=> b!5278711 (= e!3282436 e!3282435)))

(declare-fun res!2238905 () Bool)

(assert (=> b!5278711 (=> res!2238905 e!3282435)))

(declare-fun e!3282437 () Bool)

(assert (=> b!5278711 (= res!2238905 e!3282437)))

(declare-fun res!2238917 () Bool)

(assert (=> b!5278711 (=> (not res!2238917) (not e!3282437))))

(declare-fun lt!2158084 () Bool)

(declare-fun matchZipper!1145 ((InoxSet Context!8570) List!61002) Bool)

(assert (=> b!5278711 (= res!2238917 (not (= lt!2158084 (matchZipper!1145 lt!2158091 (t!374203 s!2326)))))))

(declare-fun e!3282438 () Bool)

(assert (=> b!5278711 (= (matchZipper!1145 lt!2158080 (t!374203 s!2326)) e!3282438)))

(declare-fun res!2238918 () Bool)

(assert (=> b!5278711 (=> res!2238918 e!3282438)))

(declare-fun lt!2158073 () Bool)

(assert (=> b!5278711 (= res!2238918 lt!2158073)))

(declare-fun lt!2158085 () Unit!153122)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!138 ((InoxSet Context!8570) (InoxSet Context!8570) List!61002) Unit!153122)

(assert (=> b!5278711 (= lt!2158085 (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158089 lt!2158086 (t!374203 s!2326)))))

(assert (=> b!5278711 (= (flatMap!628 lt!2158087 lambda!266558) (derivationStepZipperUp!273 lt!2158063 (h!67326 s!2326)))))

(declare-fun lt!2158075 () Unit!153122)

(assert (=> b!5278711 (= lt!2158075 (lemmaFlatMapOnSingletonSet!160 lt!2158087 lt!2158063 lambda!266558))))

(assert (=> b!5278712 (= e!3282430 e!3282427)))

(declare-fun res!2238909 () Bool)

(assert (=> b!5278712 (=> res!2238909 e!3282427)))

(declare-fun lt!2158078 () Bool)

(declare-fun lt!2158067 () Bool)

(assert (=> b!5278712 (= res!2238909 (or (not (= lt!2158078 lt!2158067)) ((_ is Nil!60878) s!2326)))))

(declare-fun Exists!2082 (Int) Bool)

(assert (=> b!5278712 (= (Exists!2082 lambda!266556) (Exists!2082 lambda!266557))))

(declare-fun lt!2158062 () Unit!153122)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!736 (Regex!14901 Regex!14901 List!61002) Unit!153122)

(assert (=> b!5278712 (= lt!2158062 (lemmaExistCutMatchRandMatchRSpecEquivalent!736 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326))))

(assert (=> b!5278712 (= lt!2158067 (Exists!2082 lambda!266556))))

(declare-datatypes ((tuple2!64200 0))(
  ( (tuple2!64201 (_1!35403 List!61002) (_2!35403 List!61002)) )
))
(declare-datatypes ((Option!15012 0))(
  ( (None!15011) (Some!15011 (v!51040 tuple2!64200)) )
))
(declare-fun isDefined!11715 (Option!15012) Bool)

(declare-fun findConcatSeparation!1426 (Regex!14901 Regex!14901 List!61002 List!61002 List!61002) Option!15012)

(assert (=> b!5278712 (= lt!2158067 (isDefined!11715 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326)))))

(declare-fun lt!2158082 () Unit!153122)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1190 (Regex!14901 Regex!14901 List!61002) Unit!153122)

(assert (=> b!5278712 (= lt!2158082 (lemmaFindConcatSeparationEquivalentToExists!1190 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326))))

(declare-fun b!5278713 () Bool)

(declare-fun tp!1474913 () Bool)

(declare-fun tp!1474911 () Bool)

(assert (=> b!5278713 (= e!3282432 (and tp!1474913 tp!1474911))))

(declare-fun b!5278714 () Bool)

(declare-fun res!2238907 () Bool)

(assert (=> b!5278714 (=> res!2238907 e!3282427)))

(declare-fun isEmpty!32831 (List!61003) Bool)

(assert (=> b!5278714 (= res!2238907 (isEmpty!32831 (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5278715 () Bool)

(declare-fun res!2238901 () Bool)

(assert (=> b!5278715 (=> res!2238901 e!3282423)))

(assert (=> b!5278715 (= res!2238901 (not (nullable!5070 (regOne!30314 (regOne!30314 r!7292)))))))

(declare-fun res!2238916 () Bool)

(declare-fun e!3282426 () Bool)

(assert (=> start!557390 (=> (not res!2238916) (not e!3282426))))

(declare-fun validRegex!6637 (Regex!14901) Bool)

(assert (=> start!557390 (= res!2238916 (validRegex!6637 r!7292))))

(assert (=> start!557390 e!3282426))

(assert (=> start!557390 e!3282432))

(declare-fun condSetEmpty!33827 () Bool)

(assert (=> start!557390 (= condSetEmpty!33827 (= z!1189 ((as const (Array Context!8570 Bool)) false)))))

(declare-fun setRes!33827 () Bool)

(assert (=> start!557390 setRes!33827))

(declare-fun e!3282420 () Bool)

(assert (=> start!557390 e!3282420))

(assert (=> start!557390 e!3282419))

(declare-fun tp!1474908 () Bool)

(declare-fun b!5278716 () Bool)

(declare-fun e!3282424 () Bool)

(declare-fun inv!80499 (Context!8570) Bool)

(assert (=> b!5278716 (= e!3282420 (and (inv!80499 (h!67328 zl!343)) e!3282424 tp!1474908))))

(declare-fun b!5278717 () Bool)

(declare-fun res!2238899 () Bool)

(assert (=> b!5278717 (=> (not res!2238899) (not e!3282426))))

(declare-fun unfocusZipper!643 (List!61004) Regex!14901)

(assert (=> b!5278717 (= res!2238899 (= r!7292 (unfocusZipper!643 zl!343)))))

(declare-fun b!5278718 () Bool)

(declare-fun e!3282422 () Bool)

(declare-fun lt!2158068 () (InoxSet Context!8570))

(assert (=> b!5278718 (= e!3282422 (matchZipper!1145 lt!2158068 (t!374203 s!2326)))))

(declare-fun b!5278719 () Bool)

(declare-fun res!2238897 () Bool)

(assert (=> b!5278719 (=> (not res!2238897) (not e!3282426))))

(declare-fun toList!8685 ((InoxSet Context!8570)) List!61004)

(assert (=> b!5278719 (= res!2238897 (= (toList!8685 z!1189) zl!343))))

(declare-fun b!5278720 () Bool)

(declare-fun Unit!153124 () Unit!153122)

(assert (=> b!5278720 (= e!3282429 Unit!153124)))

(declare-fun setIsEmpty!33827 () Bool)

(assert (=> setIsEmpty!33827 setRes!33827))

(declare-fun b!5278721 () Bool)

(declare-fun res!2238908 () Bool)

(assert (=> b!5278721 (=> res!2238908 e!3282430)))

(assert (=> b!5278721 (= res!2238908 (or ((_ is EmptyExpr!14901) r!7292) ((_ is EmptyLang!14901) r!7292) ((_ is ElementMatch!14901) r!7292) ((_ is Union!14901) r!7292) (not ((_ is Concat!23746) r!7292))))))

(declare-fun b!5278722 () Bool)

(assert (=> b!5278722 (= e!3282426 (not e!3282430))))

(declare-fun res!2238915 () Bool)

(assert (=> b!5278722 (=> res!2238915 e!3282430)))

(assert (=> b!5278722 (= res!2238915 (not ((_ is Cons!60880) zl!343)))))

(declare-fun matchRSpec!2004 (Regex!14901 List!61002) Bool)

(assert (=> b!5278722 (= lt!2158078 (matchRSpec!2004 r!7292 s!2326))))

(declare-fun matchR!7086 (Regex!14901 List!61002) Bool)

(assert (=> b!5278722 (= lt!2158078 (matchR!7086 r!7292 s!2326))))

(declare-fun lt!2158072 () Unit!153122)

(declare-fun mainMatchTheorem!2004 (Regex!14901 List!61002) Unit!153122)

(assert (=> b!5278722 (= lt!2158072 (mainMatchTheorem!2004 r!7292 s!2326))))

(declare-fun b!5278723 () Bool)

(assert (=> b!5278723 (= e!3282437 (not (matchZipper!1145 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (t!374203 s!2326))))))

(declare-fun b!5278724 () Bool)

(declare-fun res!2238910 () Bool)

(assert (=> b!5278724 (=> res!2238910 e!3282435)))

(assert (=> b!5278724 (= res!2238910 (not (= (exprs!4785 (h!67328 zl!343)) (Cons!60879 (Concat!23746 (regOne!30314 (regOne!30314 r!7292)) (regTwo!30314 (regOne!30314 r!7292))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5278725 () Bool)

(assert (=> b!5278725 (= e!3282432 tp_is_empty!39055)))

(declare-fun b!5278726 () Bool)

(declare-fun e!3282434 () Bool)

(declare-fun tp!1474910 () Bool)

(assert (=> b!5278726 (= e!3282434 tp!1474910)))

(declare-fun b!5278727 () Bool)

(declare-fun res!2238913 () Bool)

(assert (=> b!5278727 (=> res!2238913 e!3282430)))

(declare-fun isEmpty!32832 (List!61004) Bool)

(assert (=> b!5278727 (= res!2238913 (not (isEmpty!32832 (t!374205 zl!343))))))

(declare-fun b!5278728 () Bool)

(declare-fun Unit!153125 () Unit!153122)

(assert (=> b!5278728 (= e!3282429 Unit!153125)))

(declare-fun lt!2158069 () Unit!153122)

(assert (=> b!5278728 (= lt!2158069 (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158061 lt!2158070 (t!374203 s!2326)))))

(declare-fun res!2238906 () Bool)

(assert (=> b!5278728 (= res!2238906 (matchZipper!1145 lt!2158061 (t!374203 s!2326)))))

(declare-fun e!3282428 () Bool)

(assert (=> b!5278728 (=> res!2238906 e!3282428)))

(assert (=> b!5278728 (= (matchZipper!1145 ((_ map or) lt!2158061 lt!2158070) (t!374203 s!2326)) e!3282428)))

(declare-fun b!5278729 () Bool)

(declare-fun res!2238898 () Bool)

(assert (=> b!5278729 (=> res!2238898 e!3282435)))

(declare-fun contextDepthTotal!42 (Context!8570) Int)

(assert (=> b!5278729 (= res!2238898 (>= (contextDepthTotal!42 lt!2158060) (contextDepthTotal!42 (h!67328 zl!343))))))

(declare-fun b!5278730 () Bool)

(assert (=> b!5278730 (= e!3282438 (matchZipper!1145 lt!2158086 (t!374203 s!2326)))))

(declare-fun b!5278731 () Bool)

(declare-fun res!2238911 () Bool)

(assert (=> b!5278731 (=> res!2238911 e!3282430)))

(declare-fun generalisedUnion!830 (List!61003) Regex!14901)

(declare-fun unfocusZipperList!343 (List!61004) List!61003)

(assert (=> b!5278731 (= res!2238911 (not (= r!7292 (generalisedUnion!830 (unfocusZipperList!343 zl!343)))))))

(declare-fun setElem!33827 () Context!8570)

(declare-fun setNonEmpty!33827 () Bool)

(declare-fun tp!1474909 () Bool)

(assert (=> setNonEmpty!33827 (= setRes!33827 (and tp!1474909 (inv!80499 setElem!33827) e!3282434))))

(declare-fun setRest!33827 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33827 (= z!1189 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33827 true) setRest!33827))))

(declare-fun b!5278732 () Bool)

(declare-fun lambda!266559 () Int)

(declare-fun forall!14309 (List!61003 Int) Bool)

(assert (=> b!5278732 (= e!3282433 (forall!14309 lt!2158065 lambda!266559))))

(declare-fun lt!2158076 () Regex!14901)

(assert (=> b!5278732 (= (matchR!7086 lt!2158076 s!2326) (matchZipper!1145 lt!2158064 s!2326))))

(declare-fun lt!2158066 () Unit!153122)

(declare-fun theoremZipperRegexEquiv!311 ((InoxSet Context!8570) List!61004 Regex!14901 List!61002) Unit!153122)

(assert (=> b!5278732 (= lt!2158066 (theoremZipperRegexEquiv!311 lt!2158064 lt!2158083 lt!2158076 s!2326))))

(assert (=> b!5278732 (= lt!2158076 (generalisedConcat!570 lt!2158092))))

(declare-fun b!5278733 () Bool)

(declare-fun e!3282421 () Bool)

(assert (=> b!5278733 (= e!3282421 (not (matchZipper!1145 lt!2158068 (t!374203 s!2326))))))

(declare-fun b!5278734 () Bool)

(declare-fun res!2238903 () Bool)

(assert (=> b!5278734 (=> res!2238903 e!3282430)))

(assert (=> b!5278734 (= res!2238903 (not ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5278735 () Bool)

(declare-fun e!3282425 () Bool)

(assert (=> b!5278735 (= e!3282425 e!3282431)))

(declare-fun res!2238919 () Bool)

(assert (=> b!5278735 (=> res!2238919 e!3282431)))

(assert (=> b!5278735 (= res!2238919 e!3282421)))

(declare-fun res!2238920 () Bool)

(assert (=> b!5278735 (=> (not res!2238920) (not e!3282421))))

(assert (=> b!5278735 (= res!2238920 (not (= lt!2158084 lt!2158073)))))

(assert (=> b!5278735 (= lt!2158084 (matchZipper!1145 lt!2158061 (t!374203 s!2326)))))

(declare-fun lt!2158088 () (InoxSet Context!8570))

(assert (=> b!5278735 (= (matchZipper!1145 lt!2158088 (t!374203 s!2326)) e!3282422)))

(declare-fun res!2238904 () Bool)

(assert (=> b!5278735 (=> res!2238904 e!3282422)))

(assert (=> b!5278735 (= res!2238904 lt!2158073)))

(assert (=> b!5278735 (= lt!2158073 (matchZipper!1145 lt!2158089 (t!374203 s!2326)))))

(declare-fun lt!2158074 () Unit!153122)

(assert (=> b!5278735 (= lt!2158074 (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158089 lt!2158068 (t!374203 s!2326)))))

(declare-fun b!5278736 () Bool)

(assert (=> b!5278736 (= e!3282423 e!3282425)))

(declare-fun res!2238902 () Bool)

(assert (=> b!5278736 (=> res!2238902 e!3282425)))

(assert (=> b!5278736 (= res!2238902 (not (= lt!2158061 lt!2158088)))))

(assert (=> b!5278736 (= lt!2158088 ((_ map or) lt!2158089 lt!2158068))))

(assert (=> b!5278736 (= lt!2158068 (derivationStepZipperDown!349 (regTwo!30314 (regOne!30314 r!7292)) lt!2158077 (h!67326 s!2326)))))

(assert (=> b!5278736 (= lt!2158089 (derivationStepZipperDown!349 (regOne!30314 (regOne!30314 r!7292)) lt!2158063 (h!67326 s!2326)))))

(assert (=> b!5278736 (= lt!2158063 (Context!8571 lt!2158065))))

(assert (=> b!5278736 (= lt!2158065 (Cons!60879 (regTwo!30314 (regOne!30314 r!7292)) (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5278737 () Bool)

(assert (=> b!5278737 (= e!3282428 (matchZipper!1145 lt!2158070 (t!374203 s!2326)))))

(declare-fun b!5278738 () Bool)

(declare-fun res!2238921 () Bool)

(assert (=> b!5278738 (=> res!2238921 e!3282433)))

(declare-fun zipperDepth!18 (List!61004) Int)

(assert (=> b!5278738 (= res!2238921 (> (zipperDepth!18 lt!2158083) (zipperDepth!18 zl!343)))))

(declare-fun b!5278739 () Bool)

(declare-fun tp!1474912 () Bool)

(assert (=> b!5278739 (= e!3282424 tp!1474912)))

(assert (= (and start!557390 res!2238916) b!5278719))

(assert (= (and b!5278719 res!2238897) b!5278717))

(assert (= (and b!5278717 res!2238899) b!5278722))

(assert (= (and b!5278722 (not res!2238915)) b!5278727))

(assert (= (and b!5278727 (not res!2238913)) b!5278707))

(assert (= (and b!5278707 (not res!2238912)) b!5278734))

(assert (= (and b!5278734 (not res!2238903)) b!5278731))

(assert (= (and b!5278731 (not res!2238911)) b!5278721))

(assert (= (and b!5278721 (not res!2238908)) b!5278712))

(assert (= (and b!5278712 (not res!2238909)) b!5278714))

(assert (= (and b!5278714 (not res!2238907)) b!5278704))

(assert (= (and b!5278704 c!914850) b!5278728))

(assert (= (and b!5278704 (not c!914850)) b!5278720))

(assert (= (and b!5278728 (not res!2238906)) b!5278737))

(assert (= (and b!5278704 (not res!2238914)) b!5278715))

(assert (= (and b!5278715 (not res!2238901)) b!5278736))

(assert (= (and b!5278736 (not res!2238902)) b!5278735))

(assert (= (and b!5278735 (not res!2238904)) b!5278718))

(assert (= (and b!5278735 res!2238920) b!5278733))

(assert (= (and b!5278735 (not res!2238919)) b!5278708))

(assert (= (and b!5278708 (not res!2238896)) b!5278711))

(assert (= (and b!5278711 (not res!2238918)) b!5278730))

(assert (= (and b!5278711 res!2238917) b!5278723))

(assert (= (and b!5278711 (not res!2238905)) b!5278724))

(assert (= (and b!5278724 (not res!2238910)) b!5278729))

(assert (= (and b!5278729 (not res!2238898)) b!5278709))

(assert (= (and b!5278709 (not res!2238900)) b!5278738))

(assert (= (and b!5278738 (not res!2238921)) b!5278732))

(assert (= (and start!557390 ((_ is ElementMatch!14901) r!7292)) b!5278725))

(assert (= (and start!557390 ((_ is Concat!23746) r!7292)) b!5278713))

(assert (= (and start!557390 ((_ is Star!14901) r!7292)) b!5278705))

(assert (= (and start!557390 ((_ is Union!14901) r!7292)) b!5278710))

(assert (= (and start!557390 condSetEmpty!33827) setIsEmpty!33827))

(assert (= (and start!557390 (not condSetEmpty!33827)) setNonEmpty!33827))

(assert (= setNonEmpty!33827 b!5278726))

(assert (= b!5278716 b!5278739))

(assert (= (and start!557390 ((_ is Cons!60880) zl!343)) b!5278716))

(assert (= (and start!557390 ((_ is Cons!60878) s!2326)) b!5278706))

(declare-fun m!6316742 () Bool)

(assert (=> b!5278718 m!6316742))

(declare-fun m!6316744 () Bool)

(assert (=> b!5278730 m!6316744))

(declare-fun m!6316746 () Bool)

(assert (=> b!5278728 m!6316746))

(declare-fun m!6316748 () Bool)

(assert (=> b!5278728 m!6316748))

(declare-fun m!6316750 () Bool)

(assert (=> b!5278728 m!6316750))

(declare-fun m!6316752 () Bool)

(assert (=> b!5278729 m!6316752))

(declare-fun m!6316754 () Bool)

(assert (=> b!5278729 m!6316754))

(declare-fun m!6316756 () Bool)

(assert (=> b!5278716 m!6316756))

(declare-fun m!6316758 () Bool)

(assert (=> b!5278707 m!6316758))

(declare-fun m!6316760 () Bool)

(assert (=> b!5278708 m!6316760))

(declare-fun m!6316762 () Bool)

(assert (=> b!5278708 m!6316762))

(declare-fun m!6316764 () Bool)

(assert (=> b!5278708 m!6316764))

(declare-fun m!6316766 () Bool)

(assert (=> b!5278708 m!6316766))

(declare-fun m!6316768 () Bool)

(assert (=> b!5278708 m!6316768))

(declare-fun m!6316770 () Bool)

(assert (=> b!5278708 m!6316770))

(declare-fun m!6316772 () Bool)

(assert (=> b!5278708 m!6316772))

(assert (=> b!5278733 m!6316742))

(declare-fun m!6316774 () Bool)

(assert (=> b!5278719 m!6316774))

(declare-fun m!6316776 () Bool)

(assert (=> b!5278731 m!6316776))

(assert (=> b!5278731 m!6316776))

(declare-fun m!6316778 () Bool)

(assert (=> b!5278731 m!6316778))

(assert (=> b!5278735 m!6316748))

(declare-fun m!6316780 () Bool)

(assert (=> b!5278735 m!6316780))

(declare-fun m!6316782 () Bool)

(assert (=> b!5278735 m!6316782))

(declare-fun m!6316784 () Bool)

(assert (=> b!5278735 m!6316784))

(declare-fun m!6316786 () Bool)

(assert (=> b!5278715 m!6316786))

(declare-fun m!6316788 () Bool)

(assert (=> b!5278722 m!6316788))

(declare-fun m!6316790 () Bool)

(assert (=> b!5278722 m!6316790))

(declare-fun m!6316792 () Bool)

(assert (=> b!5278722 m!6316792))

(declare-fun m!6316794 () Bool)

(assert (=> b!5278737 m!6316794))

(declare-fun m!6316796 () Bool)

(assert (=> b!5278711 m!6316796))

(declare-fun m!6316798 () Bool)

(assert (=> b!5278711 m!6316798))

(declare-fun m!6316800 () Bool)

(assert (=> b!5278711 m!6316800))

(declare-fun m!6316802 () Bool)

(assert (=> b!5278711 m!6316802))

(declare-fun m!6316804 () Bool)

(assert (=> b!5278711 m!6316804))

(assert (=> b!5278711 m!6316768))

(declare-fun m!6316806 () Bool)

(assert (=> b!5278736 m!6316806))

(declare-fun m!6316808 () Bool)

(assert (=> b!5278736 m!6316808))

(declare-fun m!6316810 () Bool)

(assert (=> start!557390 m!6316810))

(declare-fun m!6316812 () Bool)

(assert (=> b!5278727 m!6316812))

(declare-fun m!6316814 () Bool)

(assert (=> b!5278704 m!6316814))

(declare-fun m!6316816 () Bool)

(assert (=> b!5278704 m!6316816))

(declare-fun m!6316818 () Bool)

(assert (=> b!5278704 m!6316818))

(declare-fun m!6316820 () Bool)

(assert (=> b!5278704 m!6316820))

(declare-fun m!6316822 () Bool)

(assert (=> b!5278704 m!6316822))

(declare-fun m!6316824 () Bool)

(assert (=> b!5278704 m!6316824))

(declare-fun m!6316826 () Bool)

(assert (=> b!5278704 m!6316826))

(declare-fun m!6316828 () Bool)

(assert (=> b!5278712 m!6316828))

(declare-fun m!6316830 () Bool)

(assert (=> b!5278712 m!6316830))

(declare-fun m!6316832 () Bool)

(assert (=> b!5278712 m!6316832))

(declare-fun m!6316834 () Bool)

(assert (=> b!5278712 m!6316834))

(assert (=> b!5278712 m!6316830))

(declare-fun m!6316836 () Bool)

(assert (=> b!5278712 m!6316836))

(assert (=> b!5278712 m!6316832))

(declare-fun m!6316838 () Bool)

(assert (=> b!5278712 m!6316838))

(declare-fun m!6316840 () Bool)

(assert (=> b!5278738 m!6316840))

(declare-fun m!6316842 () Bool)

(assert (=> b!5278738 m!6316842))

(declare-fun m!6316844 () Bool)

(assert (=> b!5278714 m!6316844))

(declare-fun m!6316846 () Bool)

(assert (=> b!5278732 m!6316846))

(declare-fun m!6316848 () Bool)

(assert (=> b!5278732 m!6316848))

(declare-fun m!6316850 () Bool)

(assert (=> b!5278732 m!6316850))

(declare-fun m!6316852 () Bool)

(assert (=> b!5278732 m!6316852))

(declare-fun m!6316854 () Bool)

(assert (=> b!5278732 m!6316854))

(declare-fun m!6316856 () Bool)

(assert (=> setNonEmpty!33827 m!6316856))

(declare-fun m!6316858 () Bool)

(assert (=> b!5278709 m!6316858))

(declare-fun m!6316860 () Bool)

(assert (=> b!5278709 m!6316860))

(declare-fun m!6316862 () Bool)

(assert (=> b!5278717 m!6316862))

(declare-fun m!6316864 () Bool)

(assert (=> b!5278723 m!6316864))

(assert (=> b!5278723 m!6316864))

(declare-fun m!6316866 () Bool)

(assert (=> b!5278723 m!6316866))

(check-sat (not start!557390) (not b!5278735) (not b!5278736) (not b!5278719) (not b!5278726) (not b!5278716) (not b!5278708) (not b!5278731) (not b!5278723) (not b!5278738) (not b!5278714) (not b!5278711) (not b!5278712) (not b!5278739) (not b!5278705) (not b!5278727) (not b!5278717) (not b!5278706) (not b!5278730) (not b!5278707) (not b!5278722) tp_is_empty!39055 (not b!5278704) (not b!5278715) (not b!5278713) (not b!5278733) (not b!5278709) (not b!5278718) (not b!5278732) (not b!5278710) (not b!5278729) (not b!5278728) (not setNonEmpty!33827) (not b!5278737))
(check-sat)
(get-model)

(declare-fun d!1698896 () Bool)

(declare-fun c!914994 () Bool)

(declare-fun isEmpty!32835 (List!61002) Bool)

(assert (=> d!1698896 (= c!914994 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282698 () Bool)

(assert (=> d!1698896 (= (matchZipper!1145 lt!2158070 (t!374203 s!2326)) e!3282698)))

(declare-fun b!5279207 () Bool)

(declare-fun nullableZipper!1298 ((InoxSet Context!8570)) Bool)

(assert (=> b!5279207 (= e!3282698 (nullableZipper!1298 lt!2158070))))

(declare-fun b!5279208 () Bool)

(declare-fun head!11314 (List!61002) C!30072)

(declare-fun tail!10411 (List!61002) List!61002)

(assert (=> b!5279208 (= e!3282698 (matchZipper!1145 (derivationStepZipper!1144 lt!2158070 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698896 c!914994) b!5279207))

(assert (= (and d!1698896 (not c!914994)) b!5279208))

(declare-fun m!6317232 () Bool)

(assert (=> d!1698896 m!6317232))

(declare-fun m!6317234 () Bool)

(assert (=> b!5279207 m!6317234))

(declare-fun m!6317236 () Bool)

(assert (=> b!5279208 m!6317236))

(assert (=> b!5279208 m!6317236))

(declare-fun m!6317238 () Bool)

(assert (=> b!5279208 m!6317238))

(declare-fun m!6317240 () Bool)

(assert (=> b!5279208 m!6317240))

(assert (=> b!5279208 m!6317238))

(assert (=> b!5279208 m!6317240))

(declare-fun m!6317242 () Bool)

(assert (=> b!5279208 m!6317242))

(assert (=> b!5278737 d!1698896))

(declare-fun d!1698898 () Bool)

(declare-fun c!914995 () Bool)

(assert (=> d!1698898 (= c!914995 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282699 () Bool)

(assert (=> d!1698898 (= (matchZipper!1145 lt!2158068 (t!374203 s!2326)) e!3282699)))

(declare-fun b!5279209 () Bool)

(assert (=> b!5279209 (= e!3282699 (nullableZipper!1298 lt!2158068))))

(declare-fun b!5279210 () Bool)

(assert (=> b!5279210 (= e!3282699 (matchZipper!1145 (derivationStepZipper!1144 lt!2158068 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698898 c!914995) b!5279209))

(assert (= (and d!1698898 (not c!914995)) b!5279210))

(assert (=> d!1698898 m!6317232))

(declare-fun m!6317244 () Bool)

(assert (=> b!5279209 m!6317244))

(assert (=> b!5279210 m!6317236))

(assert (=> b!5279210 m!6317236))

(declare-fun m!6317246 () Bool)

(assert (=> b!5279210 m!6317246))

(assert (=> b!5279210 m!6317240))

(assert (=> b!5279210 m!6317246))

(assert (=> b!5279210 m!6317240))

(declare-fun m!6317248 () Bool)

(assert (=> b!5279210 m!6317248))

(assert (=> b!5278718 d!1698898))

(declare-fun d!1698900 () Bool)

(declare-fun lt!2158170 () Regex!14901)

(assert (=> d!1698900 (validRegex!6637 lt!2158170)))

(assert (=> d!1698900 (= lt!2158170 (generalisedUnion!830 (unfocusZipperList!343 zl!343)))))

(assert (=> d!1698900 (= (unfocusZipper!643 zl!343) lt!2158170)))

(declare-fun bs!1223337 () Bool)

(assert (= bs!1223337 d!1698900))

(declare-fun m!6317250 () Bool)

(assert (=> bs!1223337 m!6317250))

(assert (=> bs!1223337 m!6316776))

(assert (=> bs!1223337 m!6316776))

(assert (=> bs!1223337 m!6316778))

(assert (=> b!5278717 d!1698900))

(declare-fun d!1698902 () Bool)

(declare-fun e!3282702 () Bool)

(assert (=> d!1698902 e!3282702))

(declare-fun res!2239061 () Bool)

(assert (=> d!1698902 (=> (not res!2239061) (not e!3282702))))

(declare-fun lt!2158173 () List!61004)

(declare-fun noDuplicate!1253 (List!61004) Bool)

(assert (=> d!1698902 (= res!2239061 (noDuplicate!1253 lt!2158173))))

(declare-fun choose!39394 ((InoxSet Context!8570)) List!61004)

(assert (=> d!1698902 (= lt!2158173 (choose!39394 z!1189))))

(assert (=> d!1698902 (= (toList!8685 z!1189) lt!2158173)))

(declare-fun b!5279213 () Bool)

(declare-fun content!10837 (List!61004) (InoxSet Context!8570))

(assert (=> b!5279213 (= e!3282702 (= (content!10837 lt!2158173) z!1189))))

(assert (= (and d!1698902 res!2239061) b!5279213))

(declare-fun m!6317252 () Bool)

(assert (=> d!1698902 m!6317252))

(declare-fun m!6317254 () Bool)

(assert (=> d!1698902 m!6317254))

(declare-fun m!6317256 () Bool)

(assert (=> b!5279213 m!6317256))

(assert (=> b!5278719 d!1698902))

(declare-fun b!5279220 () Bool)

(assert (=> b!5279220 true))

(declare-fun bs!1223338 () Bool)

(declare-fun b!5279222 () Bool)

(assert (= bs!1223338 (and b!5279222 b!5279220)))

(declare-fun lt!2158184 () Int)

(declare-fun lambda!266613 () Int)

(declare-fun lt!2158185 () Int)

(declare-fun lambda!266612 () Int)

(assert (=> bs!1223338 (= (= lt!2158185 lt!2158184) (= lambda!266613 lambda!266612))))

(assert (=> b!5279222 true))

(declare-fun d!1698904 () Bool)

(declare-fun e!3282708 () Bool)

(assert (=> d!1698904 e!3282708))

(declare-fun res!2239064 () Bool)

(assert (=> d!1698904 (=> (not res!2239064) (not e!3282708))))

(assert (=> d!1698904 (= res!2239064 (>= lt!2158185 0))))

(declare-fun e!3282707 () Int)

(assert (=> d!1698904 (= lt!2158185 e!3282707)))

(declare-fun c!915004 () Bool)

(assert (=> d!1698904 (= c!915004 ((_ is Cons!60880) lt!2158083))))

(assert (=> d!1698904 (= (zipperDepth!18 lt!2158083) lt!2158185)))

(assert (=> b!5279220 (= e!3282707 lt!2158184)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!10 (Context!8570) Int)

(assert (=> b!5279220 (= lt!2158184 (maxBigInt!0 (contextDepth!10 (h!67328 lt!2158083)) (zipperDepth!18 (t!374205 lt!2158083))))))

(declare-fun lt!2158183 () Unit!153122)

(declare-fun lambda!266611 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!4 (List!61004 Int Int Int) Unit!153122)

(assert (=> b!5279220 (= lt!2158183 (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 lt!2158083) lt!2158184 (zipperDepth!18 (t!374205 lt!2158083)) lambda!266611))))

(declare-fun forall!14311 (List!61004 Int) Bool)

(assert (=> b!5279220 (forall!14311 (t!374205 lt!2158083) lambda!266612)))

(declare-fun lt!2158182 () Unit!153122)

(assert (=> b!5279220 (= lt!2158182 lt!2158183)))

(declare-fun b!5279221 () Bool)

(assert (=> b!5279221 (= e!3282707 0)))

(assert (=> b!5279222 (= e!3282708 (forall!14311 lt!2158083 lambda!266613))))

(assert (= (and d!1698904 c!915004) b!5279220))

(assert (= (and d!1698904 (not c!915004)) b!5279221))

(assert (= (and d!1698904 res!2239064) b!5279222))

(declare-fun m!6317258 () Bool)

(assert (=> b!5279220 m!6317258))

(assert (=> b!5279220 m!6317258))

(declare-fun m!6317260 () Bool)

(assert (=> b!5279220 m!6317260))

(declare-fun m!6317262 () Bool)

(assert (=> b!5279220 m!6317262))

(assert (=> b!5279220 m!6317262))

(assert (=> b!5279220 m!6317258))

(declare-fun m!6317264 () Bool)

(assert (=> b!5279220 m!6317264))

(declare-fun m!6317266 () Bool)

(assert (=> b!5279220 m!6317266))

(declare-fun m!6317268 () Bool)

(assert (=> b!5279222 m!6317268))

(assert (=> b!5278738 d!1698904))

(declare-fun bs!1223339 () Bool)

(declare-fun b!5279225 () Bool)

(assert (= bs!1223339 (and b!5279225 b!5279220)))

(declare-fun lambda!266614 () Int)

(assert (=> bs!1223339 (= lambda!266614 lambda!266611)))

(declare-fun lambda!266615 () Int)

(declare-fun lt!2158188 () Int)

(assert (=> bs!1223339 (= (= lt!2158188 lt!2158184) (= lambda!266615 lambda!266612))))

(declare-fun bs!1223340 () Bool)

(assert (= bs!1223340 (and b!5279225 b!5279222)))

(assert (=> bs!1223340 (= (= lt!2158188 lt!2158185) (= lambda!266615 lambda!266613))))

(assert (=> b!5279225 true))

(declare-fun bs!1223341 () Bool)

(declare-fun b!5279227 () Bool)

(assert (= bs!1223341 (and b!5279227 b!5279220)))

(declare-fun lt!2158189 () Int)

(declare-fun lambda!266616 () Int)

(assert (=> bs!1223341 (= (= lt!2158189 lt!2158184) (= lambda!266616 lambda!266612))))

(declare-fun bs!1223342 () Bool)

(assert (= bs!1223342 (and b!5279227 b!5279222)))

(assert (=> bs!1223342 (= (= lt!2158189 lt!2158185) (= lambda!266616 lambda!266613))))

(declare-fun bs!1223343 () Bool)

(assert (= bs!1223343 (and b!5279227 b!5279225)))

(assert (=> bs!1223343 (= (= lt!2158189 lt!2158188) (= lambda!266616 lambda!266615))))

(assert (=> b!5279227 true))

(declare-fun d!1698906 () Bool)

(declare-fun e!3282710 () Bool)

(assert (=> d!1698906 e!3282710))

(declare-fun res!2239065 () Bool)

(assert (=> d!1698906 (=> (not res!2239065) (not e!3282710))))

(assert (=> d!1698906 (= res!2239065 (>= lt!2158189 0))))

(declare-fun e!3282709 () Int)

(assert (=> d!1698906 (= lt!2158189 e!3282709)))

(declare-fun c!915005 () Bool)

(assert (=> d!1698906 (= c!915005 ((_ is Cons!60880) zl!343))))

(assert (=> d!1698906 (= (zipperDepth!18 zl!343) lt!2158189)))

(assert (=> b!5279225 (= e!3282709 lt!2158188)))

(assert (=> b!5279225 (= lt!2158188 (maxBigInt!0 (contextDepth!10 (h!67328 zl!343)) (zipperDepth!18 (t!374205 zl!343))))))

(declare-fun lt!2158187 () Unit!153122)

(assert (=> b!5279225 (= lt!2158187 (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 zl!343) lt!2158188 (zipperDepth!18 (t!374205 zl!343)) lambda!266614))))

(assert (=> b!5279225 (forall!14311 (t!374205 zl!343) lambda!266615)))

(declare-fun lt!2158186 () Unit!153122)

(assert (=> b!5279225 (= lt!2158186 lt!2158187)))

(declare-fun b!5279226 () Bool)

(assert (=> b!5279226 (= e!3282709 0)))

(assert (=> b!5279227 (= e!3282710 (forall!14311 zl!343 lambda!266616))))

(assert (= (and d!1698906 c!915005) b!5279225))

(assert (= (and d!1698906 (not c!915005)) b!5279226))

(assert (= (and d!1698906 res!2239065) b!5279227))

(declare-fun m!6317270 () Bool)

(assert (=> b!5279225 m!6317270))

(assert (=> b!5279225 m!6317270))

(declare-fun m!6317272 () Bool)

(assert (=> b!5279225 m!6317272))

(declare-fun m!6317274 () Bool)

(assert (=> b!5279225 m!6317274))

(assert (=> b!5279225 m!6317274))

(assert (=> b!5279225 m!6317270))

(declare-fun m!6317276 () Bool)

(assert (=> b!5279225 m!6317276))

(declare-fun m!6317278 () Bool)

(assert (=> b!5279225 m!6317278))

(declare-fun m!6317280 () Bool)

(assert (=> b!5279227 m!6317280))

(assert (=> b!5278738 d!1698906))

(declare-fun d!1698908 () Bool)

(declare-fun dynLambda!24066 (Int Context!8570) (InoxSet Context!8570))

(assert (=> d!1698908 (= (flatMap!628 z!1189 lambda!266558) (dynLambda!24066 lambda!266558 (h!67328 zl!343)))))

(declare-fun lt!2158192 () Unit!153122)

(declare-fun choose!39395 ((InoxSet Context!8570) Context!8570 Int) Unit!153122)

(assert (=> d!1698908 (= lt!2158192 (choose!39395 z!1189 (h!67328 zl!343) lambda!266558))))

(assert (=> d!1698908 (= z!1189 (store ((as const (Array Context!8570 Bool)) false) (h!67328 zl!343) true))))

(assert (=> d!1698908 (= (lemmaFlatMapOnSingletonSet!160 z!1189 (h!67328 zl!343) lambda!266558) lt!2158192)))

(declare-fun b_lambda!203661 () Bool)

(assert (=> (not b_lambda!203661) (not d!1698908)))

(declare-fun bs!1223344 () Bool)

(assert (= bs!1223344 d!1698908))

(assert (=> bs!1223344 m!6316816))

(declare-fun m!6317282 () Bool)

(assert (=> bs!1223344 m!6317282))

(declare-fun m!6317284 () Bool)

(assert (=> bs!1223344 m!6317284))

(declare-fun m!6317286 () Bool)

(assert (=> bs!1223344 m!6317286))

(assert (=> b!5278704 d!1698908))

(declare-fun d!1698910 () Bool)

(declare-fun nullableFct!1450 (Regex!14901) Bool)

(assert (=> d!1698910 (= (nullable!5070 (h!67327 (exprs!4785 (h!67328 zl!343)))) (nullableFct!1450 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun bs!1223345 () Bool)

(assert (= bs!1223345 d!1698910))

(declare-fun m!6317288 () Bool)

(assert (=> bs!1223345 m!6317288))

(assert (=> b!5278704 d!1698910))

(declare-fun b!5279238 () Bool)

(declare-fun e!3282717 () (InoxSet Context!8570))

(assert (=> b!5279238 (= e!3282717 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!375788 () Bool)

(declare-fun call!375793 () (InoxSet Context!8570))

(assert (=> bm!375788 (= call!375793 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326)))))

(declare-fun d!1698912 () Bool)

(declare-fun c!915010 () Bool)

(declare-fun e!3282718 () Bool)

(assert (=> d!1698912 (= c!915010 e!3282718)))

(declare-fun res!2239068 () Bool)

(assert (=> d!1698912 (=> (not res!2239068) (not e!3282718))))

(assert (=> d!1698912 (= res!2239068 ((_ is Cons!60879) (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun e!3282719 () (InoxSet Context!8570))

(assert (=> d!1698912 (= (derivationStepZipperUp!273 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))) (h!67326 s!2326)) e!3282719)))

(declare-fun b!5279239 () Bool)

(assert (=> b!5279239 (= e!3282717 call!375793)))

(declare-fun b!5279240 () Bool)

(assert (=> b!5279240 (= e!3282718 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun b!5279241 () Bool)

(assert (=> b!5279241 (= e!3282719 e!3282717)))

(declare-fun c!915011 () Bool)

(assert (=> b!5279241 (= c!915011 ((_ is Cons!60879) (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun b!5279242 () Bool)

(assert (=> b!5279242 (= e!3282719 ((_ map or) call!375793 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326))))))

(assert (= (and d!1698912 res!2239068) b!5279240))

(assert (= (and d!1698912 c!915010) b!5279242))

(assert (= (and d!1698912 (not c!915010)) b!5279241))

(assert (= (and b!5279241 c!915011) b!5279239))

(assert (= (and b!5279241 (not c!915011)) b!5279238))

(assert (= (or b!5279242 b!5279239) bm!375788))

(declare-fun m!6317290 () Bool)

(assert (=> bm!375788 m!6317290))

(declare-fun m!6317292 () Bool)

(assert (=> b!5279240 m!6317292))

(declare-fun m!6317294 () Bool)

(assert (=> b!5279242 m!6317294))

(assert (=> b!5278704 d!1698912))

(declare-fun b!5279243 () Bool)

(declare-fun e!3282720 () (InoxSet Context!8570))

(assert (=> b!5279243 (= e!3282720 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!375789 () Bool)

(declare-fun call!375794 () (InoxSet Context!8570))

(assert (=> bm!375789 (= call!375794 (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158077)) (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (h!67326 s!2326)))))

(declare-fun d!1698914 () Bool)

(declare-fun c!915012 () Bool)

(declare-fun e!3282721 () Bool)

(assert (=> d!1698914 (= c!915012 e!3282721)))

(declare-fun res!2239069 () Bool)

(assert (=> d!1698914 (=> (not res!2239069) (not e!3282721))))

(assert (=> d!1698914 (= res!2239069 ((_ is Cons!60879) (exprs!4785 lt!2158077)))))

(declare-fun e!3282722 () (InoxSet Context!8570))

(assert (=> d!1698914 (= (derivationStepZipperUp!273 lt!2158077 (h!67326 s!2326)) e!3282722)))

(declare-fun b!5279244 () Bool)

(assert (=> b!5279244 (= e!3282720 call!375794)))

(declare-fun b!5279245 () Bool)

(assert (=> b!5279245 (= e!3282721 (nullable!5070 (h!67327 (exprs!4785 lt!2158077))))))

(declare-fun b!5279246 () Bool)

(assert (=> b!5279246 (= e!3282722 e!3282720)))

(declare-fun c!915013 () Bool)

(assert (=> b!5279246 (= c!915013 ((_ is Cons!60879) (exprs!4785 lt!2158077)))))

(declare-fun b!5279247 () Bool)

(assert (=> b!5279247 (= e!3282722 ((_ map or) call!375794 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (h!67326 s!2326))))))

(assert (= (and d!1698914 res!2239069) b!5279245))

(assert (= (and d!1698914 c!915012) b!5279247))

(assert (= (and d!1698914 (not c!915012)) b!5279246))

(assert (= (and b!5279246 c!915013) b!5279244))

(assert (= (and b!5279246 (not c!915013)) b!5279243))

(assert (= (or b!5279247 b!5279244) bm!375789))

(declare-fun m!6317296 () Bool)

(assert (=> bm!375789 m!6317296))

(declare-fun m!6317298 () Bool)

(assert (=> b!5279245 m!6317298))

(declare-fun m!6317300 () Bool)

(assert (=> b!5279247 m!6317300))

(assert (=> b!5278704 d!1698914))

(declare-fun d!1698916 () Bool)

(declare-fun choose!39396 ((InoxSet Context!8570) Int) (InoxSet Context!8570))

(assert (=> d!1698916 (= (flatMap!628 z!1189 lambda!266558) (choose!39396 z!1189 lambda!266558))))

(declare-fun bs!1223346 () Bool)

(assert (= bs!1223346 d!1698916))

(declare-fun m!6317302 () Bool)

(assert (=> bs!1223346 m!6317302))

(assert (=> b!5278704 d!1698916))

(declare-fun b!5279248 () Bool)

(declare-fun e!3282723 () (InoxSet Context!8570))

(assert (=> b!5279248 (= e!3282723 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!375790 () Bool)

(declare-fun call!375795 () (InoxSet Context!8570))

(assert (=> bm!375790 (= call!375795 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (h!67328 zl!343))) (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326)))))

(declare-fun d!1698918 () Bool)

(declare-fun c!915014 () Bool)

(declare-fun e!3282724 () Bool)

(assert (=> d!1698918 (= c!915014 e!3282724)))

(declare-fun res!2239070 () Bool)

(assert (=> d!1698918 (=> (not res!2239070) (not e!3282724))))

(assert (=> d!1698918 (= res!2239070 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(declare-fun e!3282725 () (InoxSet Context!8570))

(assert (=> d!1698918 (= (derivationStepZipperUp!273 (h!67328 zl!343) (h!67326 s!2326)) e!3282725)))

(declare-fun b!5279249 () Bool)

(assert (=> b!5279249 (= e!3282723 call!375795)))

(declare-fun b!5279250 () Bool)

(assert (=> b!5279250 (= e!3282724 (nullable!5070 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5279251 () Bool)

(assert (=> b!5279251 (= e!3282725 e!3282723)))

(declare-fun c!915015 () Bool)

(assert (=> b!5279251 (= c!915015 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(declare-fun b!5279252 () Bool)

(assert (=> b!5279252 (= e!3282725 ((_ map or) call!375795 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326))))))

(assert (= (and d!1698918 res!2239070) b!5279250))

(assert (= (and d!1698918 c!915014) b!5279252))

(assert (= (and d!1698918 (not c!915014)) b!5279251))

(assert (= (and b!5279251 c!915015) b!5279249))

(assert (= (and b!5279251 (not c!915015)) b!5279248))

(assert (= (or b!5279252 b!5279249) bm!375790))

(declare-fun m!6317304 () Bool)

(assert (=> bm!375790 m!6317304))

(assert (=> b!5279250 m!6316822))

(declare-fun m!6317306 () Bool)

(assert (=> b!5279252 m!6317306))

(assert (=> b!5278704 d!1698918))

(declare-fun b!5279275 () Bool)

(declare-fun e!3282740 () (InoxSet Context!8570))

(assert (=> b!5279275 (= e!3282740 (store ((as const (Array Context!8570 Bool)) false) lt!2158077 true))))

(declare-fun b!5279276 () Bool)

(declare-fun e!3282741 () (InoxSet Context!8570))

(declare-fun call!375811 () (InoxSet Context!8570))

(assert (=> b!5279276 (= e!3282741 call!375811)))

(declare-fun b!5279277 () Bool)

(declare-fun e!3282743 () (InoxSet Context!8570))

(assert (=> b!5279277 (= e!3282743 e!3282741)))

(declare-fun c!915029 () Bool)

(assert (=> b!5279277 (= c!915029 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun c!915027 () Bool)

(declare-fun call!375812 () (InoxSet Context!8570))

(declare-fun call!375809 () List!61003)

(declare-fun bm!375803 () Bool)

(assert (=> bm!375803 (= call!375812 (derivationStepZipperDown!349 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))) (ite c!915027 lt!2158077 (Context!8571 call!375809)) (h!67326 s!2326)))))

(declare-fun c!915028 () Bool)

(declare-fun bm!375804 () Bool)

(declare-fun call!375810 () (InoxSet Context!8570))

(declare-fun call!375808 () List!61003)

(assert (=> bm!375804 (= call!375810 (derivationStepZipperDown!349 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))) (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808)) (h!67326 s!2326)))))

(declare-fun b!5279278 () Bool)

(declare-fun e!3282738 () (InoxSet Context!8570))

(assert (=> b!5279278 (= e!3282738 ((_ map or) call!375810 call!375812))))

(declare-fun bm!375805 () Bool)

(assert (=> bm!375805 (= call!375808 call!375809)))

(declare-fun d!1698920 () Bool)

(declare-fun c!915026 () Bool)

(assert (=> d!1698920 (= c!915026 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))) (= (c!914851 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326))))))

(assert (=> d!1698920 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 (h!67328 zl!343))) lt!2158077 (h!67326 s!2326)) e!3282740)))

(declare-fun b!5279279 () Bool)

(declare-fun e!3282742 () Bool)

(assert (=> b!5279279 (= e!3282742 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5279280 () Bool)

(assert (=> b!5279280 (= e!3282740 e!3282738)))

(assert (=> b!5279280 (= c!915027 ((_ is Union!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5279281 () Bool)

(declare-fun call!375813 () (InoxSet Context!8570))

(assert (=> b!5279281 (= e!3282743 ((_ map or) call!375812 call!375813))))

(declare-fun b!5279282 () Bool)

(assert (=> b!5279282 (= c!915028 e!3282742)))

(declare-fun res!2239073 () Bool)

(assert (=> b!5279282 (=> (not res!2239073) (not e!3282742))))

(assert (=> b!5279282 (= res!2239073 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5279282 (= e!3282738 e!3282743)))

(declare-fun bm!375806 () Bool)

(declare-fun $colon$colon!1348 (List!61003 Regex!14901) List!61003)

(assert (=> bm!375806 (= call!375809 ($colon$colon!1348 (exprs!4785 lt!2158077) (ite (or c!915028 c!915029) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67327 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5279283 () Bool)

(declare-fun e!3282739 () (InoxSet Context!8570))

(assert (=> b!5279283 (= e!3282739 call!375811)))

(declare-fun bm!375807 () Bool)

(assert (=> bm!375807 (= call!375813 call!375810)))

(declare-fun b!5279284 () Bool)

(assert (=> b!5279284 (= e!3282739 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5279285 () Bool)

(declare-fun c!915030 () Bool)

(assert (=> b!5279285 (= c!915030 ((_ is Star!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5279285 (= e!3282741 e!3282739)))

(declare-fun bm!375808 () Bool)

(assert (=> bm!375808 (= call!375811 call!375813)))

(assert (= (and d!1698920 c!915026) b!5279275))

(assert (= (and d!1698920 (not c!915026)) b!5279280))

(assert (= (and b!5279280 c!915027) b!5279278))

(assert (= (and b!5279280 (not c!915027)) b!5279282))

(assert (= (and b!5279282 res!2239073) b!5279279))

(assert (= (and b!5279282 c!915028) b!5279281))

(assert (= (and b!5279282 (not c!915028)) b!5279277))

(assert (= (and b!5279277 c!915029) b!5279276))

(assert (= (and b!5279277 (not c!915029)) b!5279285))

(assert (= (and b!5279285 c!915030) b!5279283))

(assert (= (and b!5279285 (not c!915030)) b!5279284))

(assert (= (or b!5279276 b!5279283) bm!375805))

(assert (= (or b!5279276 b!5279283) bm!375808))

(assert (= (or b!5279281 bm!375805) bm!375806))

(assert (= (or b!5279281 bm!375808) bm!375807))

(assert (= (or b!5279278 b!5279281) bm!375803))

(assert (= (or b!5279278 bm!375807) bm!375804))

(declare-fun m!6317308 () Bool)

(assert (=> bm!375804 m!6317308))

(declare-fun m!6317310 () Bool)

(assert (=> bm!375803 m!6317310))

(declare-fun m!6317312 () Bool)

(assert (=> b!5279275 m!6317312))

(declare-fun m!6317314 () Bool)

(assert (=> b!5279279 m!6317314))

(declare-fun m!6317316 () Bool)

(assert (=> bm!375806 m!6317316))

(assert (=> b!5278704 d!1698920))

(declare-fun b!5279304 () Bool)

(declare-fun e!3282760 () Bool)

(declare-fun call!375820 () Bool)

(assert (=> b!5279304 (= e!3282760 call!375820)))

(declare-fun bm!375815 () Bool)

(declare-fun c!915036 () Bool)

(declare-fun call!375822 () Bool)

(declare-fun c!915035 () Bool)

(assert (=> bm!375815 (= call!375822 (validRegex!6637 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))

(declare-fun b!5279305 () Bool)

(declare-fun res!2239088 () Bool)

(declare-fun e!3282761 () Bool)

(assert (=> b!5279305 (=> (not res!2239088) (not e!3282761))))

(declare-fun call!375821 () Bool)

(assert (=> b!5279305 (= res!2239088 call!375821)))

(declare-fun e!3282758 () Bool)

(assert (=> b!5279305 (= e!3282758 e!3282761)))

(declare-fun b!5279306 () Bool)

(declare-fun e!3282759 () Bool)

(declare-fun e!3282764 () Bool)

(assert (=> b!5279306 (= e!3282759 e!3282764)))

(declare-fun res!2239084 () Bool)

(assert (=> b!5279306 (= res!2239084 (not (nullable!5070 (reg!15230 r!7292))))))

(assert (=> b!5279306 (=> (not res!2239084) (not e!3282764))))

(declare-fun b!5279307 () Bool)

(declare-fun res!2239086 () Bool)

(declare-fun e!3282763 () Bool)

(assert (=> b!5279307 (=> res!2239086 e!3282763)))

(assert (=> b!5279307 (= res!2239086 (not ((_ is Concat!23746) r!7292)))))

(assert (=> b!5279307 (= e!3282758 e!3282763)))

(declare-fun b!5279308 () Bool)

(assert (=> b!5279308 (= e!3282763 e!3282760)))

(declare-fun res!2239087 () Bool)

(assert (=> b!5279308 (=> (not res!2239087) (not e!3282760))))

(assert (=> b!5279308 (= res!2239087 call!375821)))

(declare-fun b!5279309 () Bool)

(assert (=> b!5279309 (= e!3282764 call!375822)))

(declare-fun b!5279310 () Bool)

(declare-fun e!3282762 () Bool)

(assert (=> b!5279310 (= e!3282762 e!3282759)))

(assert (=> b!5279310 (= c!915035 ((_ is Star!14901) r!7292))))

(declare-fun b!5279311 () Bool)

(assert (=> b!5279311 (= e!3282761 call!375820)))

(declare-fun b!5279312 () Bool)

(assert (=> b!5279312 (= e!3282759 e!3282758)))

(assert (=> b!5279312 (= c!915036 ((_ is Union!14901) r!7292))))

(declare-fun bm!375817 () Bool)

(assert (=> bm!375817 (= call!375820 (validRegex!6637 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))

(declare-fun d!1698922 () Bool)

(declare-fun res!2239085 () Bool)

(assert (=> d!1698922 (=> res!2239085 e!3282762)))

(assert (=> d!1698922 (= res!2239085 ((_ is ElementMatch!14901) r!7292))))

(assert (=> d!1698922 (= (validRegex!6637 r!7292) e!3282762)))

(declare-fun bm!375816 () Bool)

(assert (=> bm!375816 (= call!375821 call!375822)))

(assert (= (and d!1698922 (not res!2239085)) b!5279310))

(assert (= (and b!5279310 c!915035) b!5279306))

(assert (= (and b!5279310 (not c!915035)) b!5279312))

(assert (= (and b!5279306 res!2239084) b!5279309))

(assert (= (and b!5279312 c!915036) b!5279305))

(assert (= (and b!5279312 (not c!915036)) b!5279307))

(assert (= (and b!5279305 res!2239088) b!5279311))

(assert (= (and b!5279307 (not res!2239086)) b!5279308))

(assert (= (and b!5279308 res!2239087) b!5279304))

(assert (= (or b!5279311 b!5279304) bm!375817))

(assert (= (or b!5279305 b!5279308) bm!375816))

(assert (= (or b!5279309 bm!375816) bm!375815))

(declare-fun m!6317318 () Bool)

(assert (=> bm!375815 m!6317318))

(declare-fun m!6317320 () Bool)

(assert (=> b!5279306 m!6317320))

(declare-fun m!6317322 () Bool)

(assert (=> bm!375817 m!6317322))

(assert (=> start!557390 d!1698922))

(declare-fun bs!1223347 () Bool)

(declare-fun b!5279351 () Bool)

(assert (= bs!1223347 (and b!5279351 b!5278712)))

(declare-fun lambda!266621 () Int)

(assert (=> bs!1223347 (not (= lambda!266621 lambda!266556))))

(assert (=> bs!1223347 (not (= lambda!266621 lambda!266557))))

(assert (=> b!5279351 true))

(assert (=> b!5279351 true))

(declare-fun bs!1223348 () Bool)

(declare-fun b!5279352 () Bool)

(assert (= bs!1223348 (and b!5279352 b!5278712)))

(declare-fun lambda!266622 () Int)

(assert (=> bs!1223348 (not (= lambda!266622 lambda!266556))))

(assert (=> bs!1223348 (= lambda!266622 lambda!266557)))

(declare-fun bs!1223349 () Bool)

(assert (= bs!1223349 (and b!5279352 b!5279351)))

(assert (=> bs!1223349 (not (= lambda!266622 lambda!266621))))

(assert (=> b!5279352 true))

(assert (=> b!5279352 true))

(declare-fun b!5279345 () Bool)

(declare-fun e!3282787 () Bool)

(declare-fun e!3282786 () Bool)

(assert (=> b!5279345 (= e!3282787 e!3282786)))

(declare-fun c!915047 () Bool)

(assert (=> b!5279345 (= c!915047 ((_ is Star!14901) r!7292))))

(declare-fun b!5279346 () Bool)

(declare-fun c!915046 () Bool)

(assert (=> b!5279346 (= c!915046 ((_ is ElementMatch!14901) r!7292))))

(declare-fun e!3282788 () Bool)

(declare-fun e!3282783 () Bool)

(assert (=> b!5279346 (= e!3282788 e!3282783)))

(declare-fun b!5279347 () Bool)

(declare-fun e!3282785 () Bool)

(assert (=> b!5279347 (= e!3282787 e!3282785)))

(declare-fun res!2239106 () Bool)

(assert (=> b!5279347 (= res!2239106 (matchRSpec!2004 (regOne!30315 r!7292) s!2326))))

(assert (=> b!5279347 (=> res!2239106 e!3282785)))

(declare-fun bm!375822 () Bool)

(declare-fun call!375828 () Bool)

(assert (=> bm!375822 (= call!375828 (isEmpty!32835 s!2326))))

(declare-fun b!5279348 () Bool)

(declare-fun e!3282784 () Bool)

(assert (=> b!5279348 (= e!3282784 call!375828)))

(declare-fun b!5279349 () Bool)

(assert (=> b!5279349 (= e!3282785 (matchRSpec!2004 (regTwo!30315 r!7292) s!2326))))

(declare-fun d!1698924 () Bool)

(declare-fun c!915048 () Bool)

(assert (=> d!1698924 (= c!915048 ((_ is EmptyExpr!14901) r!7292))))

(assert (=> d!1698924 (= (matchRSpec!2004 r!7292 s!2326) e!3282784)))

(declare-fun b!5279350 () Bool)

(assert (=> b!5279350 (= e!3282784 e!3282788)))

(declare-fun res!2239107 () Bool)

(assert (=> b!5279350 (= res!2239107 (not ((_ is EmptyLang!14901) r!7292)))))

(assert (=> b!5279350 (=> (not res!2239107) (not e!3282788))))

(declare-fun e!3282789 () Bool)

(declare-fun call!375827 () Bool)

(assert (=> b!5279351 (= e!3282789 call!375827)))

(assert (=> b!5279352 (= e!3282786 call!375827)))

(declare-fun bm!375823 () Bool)

(assert (=> bm!375823 (= call!375827 (Exists!2082 (ite c!915047 lambda!266621 lambda!266622)))))

(declare-fun b!5279353 () Bool)

(assert (=> b!5279353 (= e!3282783 (= s!2326 (Cons!60878 (c!914851 r!7292) Nil!60878)))))

(declare-fun b!5279354 () Bool)

(declare-fun c!915045 () Bool)

(assert (=> b!5279354 (= c!915045 ((_ is Union!14901) r!7292))))

(assert (=> b!5279354 (= e!3282783 e!3282787)))

(declare-fun b!5279355 () Bool)

(declare-fun res!2239105 () Bool)

(assert (=> b!5279355 (=> res!2239105 e!3282789)))

(assert (=> b!5279355 (= res!2239105 call!375828)))

(assert (=> b!5279355 (= e!3282786 e!3282789)))

(assert (= (and d!1698924 c!915048) b!5279348))

(assert (= (and d!1698924 (not c!915048)) b!5279350))

(assert (= (and b!5279350 res!2239107) b!5279346))

(assert (= (and b!5279346 c!915046) b!5279353))

(assert (= (and b!5279346 (not c!915046)) b!5279354))

(assert (= (and b!5279354 c!915045) b!5279347))

(assert (= (and b!5279354 (not c!915045)) b!5279345))

(assert (= (and b!5279347 (not res!2239106)) b!5279349))

(assert (= (and b!5279345 c!915047) b!5279355))

(assert (= (and b!5279345 (not c!915047)) b!5279352))

(assert (= (and b!5279355 (not res!2239105)) b!5279351))

(assert (= (or b!5279351 b!5279352) bm!375823))

(assert (= (or b!5279348 b!5279355) bm!375822))

(declare-fun m!6317324 () Bool)

(assert (=> b!5279347 m!6317324))

(declare-fun m!6317326 () Bool)

(assert (=> bm!375822 m!6317326))

(declare-fun m!6317328 () Bool)

(assert (=> b!5279349 m!6317328))

(declare-fun m!6317330 () Bool)

(assert (=> bm!375823 m!6317330))

(assert (=> b!5278722 d!1698924))

(declare-fun bm!375826 () Bool)

(declare-fun call!375831 () Bool)

(assert (=> bm!375826 (= call!375831 (isEmpty!32835 s!2326))))

(declare-fun b!5279384 () Bool)

(declare-fun res!2239126 () Bool)

(declare-fun e!3282808 () Bool)

(assert (=> b!5279384 (=> (not res!2239126) (not e!3282808))))

(assert (=> b!5279384 (= res!2239126 (not call!375831))))

(declare-fun b!5279385 () Bool)

(declare-fun e!3282809 () Bool)

(assert (=> b!5279385 (= e!3282809 (nullable!5070 r!7292))))

(declare-fun b!5279386 () Bool)

(declare-fun derivativeStep!4119 (Regex!14901 C!30072) Regex!14901)

(assert (=> b!5279386 (= e!3282809 (matchR!7086 (derivativeStep!4119 r!7292 (head!11314 s!2326)) (tail!10411 s!2326)))))

(declare-fun b!5279387 () Bool)

(declare-fun e!3282810 () Bool)

(declare-fun lt!2158195 () Bool)

(assert (=> b!5279387 (= e!3282810 (not lt!2158195))))

(declare-fun b!5279388 () Bool)

(declare-fun e!3282805 () Bool)

(declare-fun e!3282804 () Bool)

(assert (=> b!5279388 (= e!3282805 e!3282804)))

(declare-fun res!2239125 () Bool)

(assert (=> b!5279388 (=> (not res!2239125) (not e!3282804))))

(assert (=> b!5279388 (= res!2239125 (not lt!2158195))))

(declare-fun b!5279389 () Bool)

(declare-fun res!2239127 () Bool)

(assert (=> b!5279389 (=> res!2239127 e!3282805)))

(assert (=> b!5279389 (= res!2239127 e!3282808)))

(declare-fun res!2239130 () Bool)

(assert (=> b!5279389 (=> (not res!2239130) (not e!3282808))))

(assert (=> b!5279389 (= res!2239130 lt!2158195)))

(declare-fun b!5279390 () Bool)

(assert (=> b!5279390 (= e!3282808 (= (head!11314 s!2326) (c!914851 r!7292)))))

(declare-fun d!1698926 () Bool)

(declare-fun e!3282807 () Bool)

(assert (=> d!1698926 e!3282807))

(declare-fun c!915057 () Bool)

(assert (=> d!1698926 (= c!915057 ((_ is EmptyExpr!14901) r!7292))))

(assert (=> d!1698926 (= lt!2158195 e!3282809)))

(declare-fun c!915056 () Bool)

(assert (=> d!1698926 (= c!915056 (isEmpty!32835 s!2326))))

(assert (=> d!1698926 (validRegex!6637 r!7292)))

(assert (=> d!1698926 (= (matchR!7086 r!7292 s!2326) lt!2158195)))

(declare-fun b!5279391 () Bool)

(assert (=> b!5279391 (= e!3282807 (= lt!2158195 call!375831))))

(declare-fun b!5279392 () Bool)

(declare-fun e!3282806 () Bool)

(assert (=> b!5279392 (= e!3282804 e!3282806)))

(declare-fun res!2239129 () Bool)

(assert (=> b!5279392 (=> res!2239129 e!3282806)))

(assert (=> b!5279392 (= res!2239129 call!375831)))

(declare-fun b!5279393 () Bool)

(declare-fun res!2239124 () Bool)

(assert (=> b!5279393 (=> res!2239124 e!3282805)))

(assert (=> b!5279393 (= res!2239124 (not ((_ is ElementMatch!14901) r!7292)))))

(assert (=> b!5279393 (= e!3282810 e!3282805)))

(declare-fun b!5279394 () Bool)

(declare-fun res!2239128 () Bool)

(assert (=> b!5279394 (=> (not res!2239128) (not e!3282808))))

(assert (=> b!5279394 (= res!2239128 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun b!5279395 () Bool)

(assert (=> b!5279395 (= e!3282807 e!3282810)))

(declare-fun c!915055 () Bool)

(assert (=> b!5279395 (= c!915055 ((_ is EmptyLang!14901) r!7292))))

(declare-fun b!5279396 () Bool)

(assert (=> b!5279396 (= e!3282806 (not (= (head!11314 s!2326) (c!914851 r!7292))))))

(declare-fun b!5279397 () Bool)

(declare-fun res!2239131 () Bool)

(assert (=> b!5279397 (=> res!2239131 e!3282806)))

(assert (=> b!5279397 (= res!2239131 (not (isEmpty!32835 (tail!10411 s!2326))))))

(assert (= (and d!1698926 c!915056) b!5279385))

(assert (= (and d!1698926 (not c!915056)) b!5279386))

(assert (= (and d!1698926 c!915057) b!5279391))

(assert (= (and d!1698926 (not c!915057)) b!5279395))

(assert (= (and b!5279395 c!915055) b!5279387))

(assert (= (and b!5279395 (not c!915055)) b!5279393))

(assert (= (and b!5279393 (not res!2239124)) b!5279389))

(assert (= (and b!5279389 res!2239130) b!5279384))

(assert (= (and b!5279384 res!2239126) b!5279394))

(assert (= (and b!5279394 res!2239128) b!5279390))

(assert (= (and b!5279389 (not res!2239127)) b!5279388))

(assert (= (and b!5279388 res!2239125) b!5279392))

(assert (= (and b!5279392 (not res!2239129)) b!5279397))

(assert (= (and b!5279397 (not res!2239131)) b!5279396))

(assert (= (or b!5279391 b!5279384 b!5279392) bm!375826))

(declare-fun m!6317332 () Bool)

(assert (=> b!5279386 m!6317332))

(assert (=> b!5279386 m!6317332))

(declare-fun m!6317334 () Bool)

(assert (=> b!5279386 m!6317334))

(declare-fun m!6317336 () Bool)

(assert (=> b!5279386 m!6317336))

(assert (=> b!5279386 m!6317334))

(assert (=> b!5279386 m!6317336))

(declare-fun m!6317338 () Bool)

(assert (=> b!5279386 m!6317338))

(assert (=> d!1698926 m!6317326))

(assert (=> d!1698926 m!6316810))

(assert (=> bm!375826 m!6317326))

(declare-fun m!6317340 () Bool)

(assert (=> b!5279385 m!6317340))

(assert (=> b!5279396 m!6317332))

(assert (=> b!5279390 m!6317332))

(assert (=> b!5279397 m!6317336))

(assert (=> b!5279397 m!6317336))

(declare-fun m!6317342 () Bool)

(assert (=> b!5279397 m!6317342))

(assert (=> b!5279394 m!6317336))

(assert (=> b!5279394 m!6317336))

(assert (=> b!5279394 m!6317342))

(assert (=> b!5278722 d!1698926))

(declare-fun d!1698928 () Bool)

(assert (=> d!1698928 (= (matchR!7086 r!7292 s!2326) (matchRSpec!2004 r!7292 s!2326))))

(declare-fun lt!2158198 () Unit!153122)

(declare-fun choose!39397 (Regex!14901 List!61002) Unit!153122)

(assert (=> d!1698928 (= lt!2158198 (choose!39397 r!7292 s!2326))))

(assert (=> d!1698928 (validRegex!6637 r!7292)))

(assert (=> d!1698928 (= (mainMatchTheorem!2004 r!7292 s!2326) lt!2158198)))

(declare-fun bs!1223350 () Bool)

(assert (= bs!1223350 d!1698928))

(assert (=> bs!1223350 m!6316790))

(assert (=> bs!1223350 m!6316788))

(declare-fun m!6317344 () Bool)

(assert (=> bs!1223350 m!6317344))

(assert (=> bs!1223350 m!6316810))

(assert (=> b!5278722 d!1698928))

(declare-fun d!1698930 () Bool)

(declare-fun c!915058 () Bool)

(assert (=> d!1698930 (= c!915058 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282811 () Bool)

(assert (=> d!1698930 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (t!374203 s!2326)) e!3282811)))

(declare-fun b!5279398 () Bool)

(assert (=> b!5279398 (= e!3282811 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326))))))

(declare-fun b!5279399 () Bool)

(assert (=> b!5279399 (= e!3282811 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698930 c!915058) b!5279398))

(assert (= (and d!1698930 (not c!915058)) b!5279399))

(assert (=> d!1698930 m!6317232))

(assert (=> b!5279398 m!6316864))

(declare-fun m!6317346 () Bool)

(assert (=> b!5279398 m!6317346))

(assert (=> b!5279399 m!6317236))

(assert (=> b!5279399 m!6316864))

(assert (=> b!5279399 m!6317236))

(declare-fun m!6317348 () Bool)

(assert (=> b!5279399 m!6317348))

(assert (=> b!5279399 m!6317240))

(assert (=> b!5279399 m!6317348))

(assert (=> b!5279399 m!6317240))

(declare-fun m!6317350 () Bool)

(assert (=> b!5279399 m!6317350))

(assert (=> b!5278723 d!1698930))

(declare-fun bs!1223351 () Bool)

(declare-fun d!1698932 () Bool)

(assert (= bs!1223351 (and d!1698932 b!5278704)))

(declare-fun lambda!266625 () Int)

(assert (=> bs!1223351 (= lambda!266625 lambda!266558)))

(assert (=> d!1698932 true))

(assert (=> d!1698932 (= (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (flatMap!628 lt!2158087 lambda!266625))))

(declare-fun bs!1223352 () Bool)

(assert (= bs!1223352 d!1698932))

(declare-fun m!6317352 () Bool)

(assert (=> bs!1223352 m!6317352))

(assert (=> b!5278723 d!1698932))

(declare-fun d!1698934 () Bool)

(declare-fun c!915061 () Bool)

(assert (=> d!1698934 (= c!915061 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282812 () Bool)

(assert (=> d!1698934 (= (matchZipper!1145 lt!2158086 (t!374203 s!2326)) e!3282812)))

(declare-fun b!5279402 () Bool)

(assert (=> b!5279402 (= e!3282812 (nullableZipper!1298 lt!2158086))))

(declare-fun b!5279403 () Bool)

(assert (=> b!5279403 (= e!3282812 (matchZipper!1145 (derivationStepZipper!1144 lt!2158086 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698934 c!915061) b!5279402))

(assert (= (and d!1698934 (not c!915061)) b!5279403))

(assert (=> d!1698934 m!6317232))

(declare-fun m!6317354 () Bool)

(assert (=> b!5279402 m!6317354))

(assert (=> b!5279403 m!6317236))

(assert (=> b!5279403 m!6317236))

(declare-fun m!6317356 () Bool)

(assert (=> b!5279403 m!6317356))

(assert (=> b!5279403 m!6317240))

(assert (=> b!5279403 m!6317356))

(assert (=> b!5279403 m!6317240))

(declare-fun m!6317358 () Bool)

(assert (=> b!5279403 m!6317358))

(assert (=> b!5278730 d!1698934))

(declare-fun d!1698936 () Bool)

(declare-fun lt!2158201 () Int)

(assert (=> d!1698936 (>= lt!2158201 0)))

(declare-fun e!3282815 () Int)

(assert (=> d!1698936 (= lt!2158201 e!3282815)))

(declare-fun c!915064 () Bool)

(assert (=> d!1698936 (= c!915064 ((_ is Cons!60880) lt!2158083))))

(assert (=> d!1698936 (= (zipperDepthTotal!62 lt!2158083) lt!2158201)))

(declare-fun b!5279408 () Bool)

(assert (=> b!5279408 (= e!3282815 (+ (contextDepthTotal!42 (h!67328 lt!2158083)) (zipperDepthTotal!62 (t!374205 lt!2158083))))))

(declare-fun b!5279409 () Bool)

(assert (=> b!5279409 (= e!3282815 0)))

(assert (= (and d!1698936 c!915064) b!5279408))

(assert (= (and d!1698936 (not c!915064)) b!5279409))

(declare-fun m!6317360 () Bool)

(assert (=> b!5279408 m!6317360))

(declare-fun m!6317362 () Bool)

(assert (=> b!5279408 m!6317362))

(assert (=> b!5278709 d!1698936))

(declare-fun d!1698938 () Bool)

(declare-fun lt!2158202 () Int)

(assert (=> d!1698938 (>= lt!2158202 0)))

(declare-fun e!3282816 () Int)

(assert (=> d!1698938 (= lt!2158202 e!3282816)))

(declare-fun c!915065 () Bool)

(assert (=> d!1698938 (= c!915065 ((_ is Cons!60880) zl!343))))

(assert (=> d!1698938 (= (zipperDepthTotal!62 zl!343) lt!2158202)))

(declare-fun b!5279410 () Bool)

(assert (=> b!5279410 (= e!3282816 (+ (contextDepthTotal!42 (h!67328 zl!343)) (zipperDepthTotal!62 (t!374205 zl!343))))))

(declare-fun b!5279411 () Bool)

(assert (=> b!5279411 (= e!3282816 0)))

(assert (= (and d!1698938 c!915065) b!5279410))

(assert (= (and d!1698938 (not c!915065)) b!5279411))

(assert (=> b!5279410 m!6316754))

(declare-fun m!6317364 () Bool)

(assert (=> b!5279410 m!6317364))

(assert (=> b!5278709 d!1698938))

(declare-fun d!1698940 () Bool)

(assert (=> d!1698940 (= (flatMap!628 lt!2158087 lambda!266558) (dynLambda!24066 lambda!266558 lt!2158063))))

(declare-fun lt!2158203 () Unit!153122)

(assert (=> d!1698940 (= lt!2158203 (choose!39395 lt!2158087 lt!2158063 lambda!266558))))

(assert (=> d!1698940 (= lt!2158087 (store ((as const (Array Context!8570 Bool)) false) lt!2158063 true))))

(assert (=> d!1698940 (= (lemmaFlatMapOnSingletonSet!160 lt!2158087 lt!2158063 lambda!266558) lt!2158203)))

(declare-fun b_lambda!203663 () Bool)

(assert (=> (not b_lambda!203663) (not d!1698940)))

(declare-fun bs!1223353 () Bool)

(assert (= bs!1223353 d!1698940))

(assert (=> bs!1223353 m!6316798))

(declare-fun m!6317366 () Bool)

(assert (=> bs!1223353 m!6317366))

(declare-fun m!6317368 () Bool)

(assert (=> bs!1223353 m!6317368))

(assert (=> bs!1223353 m!6316772))

(assert (=> b!5278711 d!1698940))

(declare-fun d!1698942 () Bool)

(declare-fun c!915066 () Bool)

(assert (=> d!1698942 (= c!915066 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282817 () Bool)

(assert (=> d!1698942 (= (matchZipper!1145 lt!2158091 (t!374203 s!2326)) e!3282817)))

(declare-fun b!5279412 () Bool)

(assert (=> b!5279412 (= e!3282817 (nullableZipper!1298 lt!2158091))))

(declare-fun b!5279413 () Bool)

(assert (=> b!5279413 (= e!3282817 (matchZipper!1145 (derivationStepZipper!1144 lt!2158091 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698942 c!915066) b!5279412))

(assert (= (and d!1698942 (not c!915066)) b!5279413))

(assert (=> d!1698942 m!6317232))

(declare-fun m!6317370 () Bool)

(assert (=> b!5279412 m!6317370))

(assert (=> b!5279413 m!6317236))

(assert (=> b!5279413 m!6317236))

(declare-fun m!6317372 () Bool)

(assert (=> b!5279413 m!6317372))

(assert (=> b!5279413 m!6317240))

(assert (=> b!5279413 m!6317372))

(assert (=> b!5279413 m!6317240))

(declare-fun m!6317374 () Bool)

(assert (=> b!5279413 m!6317374))

(assert (=> b!5278711 d!1698942))

(declare-fun d!1698944 () Bool)

(declare-fun e!3282820 () Bool)

(assert (=> d!1698944 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158086) (t!374203 s!2326)) e!3282820)))

(declare-fun res!2239134 () Bool)

(assert (=> d!1698944 (=> res!2239134 e!3282820)))

(assert (=> d!1698944 (= res!2239134 (matchZipper!1145 lt!2158089 (t!374203 s!2326)))))

(declare-fun lt!2158206 () Unit!153122)

(declare-fun choose!39398 ((InoxSet Context!8570) (InoxSet Context!8570) List!61002) Unit!153122)

(assert (=> d!1698944 (= lt!2158206 (choose!39398 lt!2158089 lt!2158086 (t!374203 s!2326)))))

(assert (=> d!1698944 (= (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158089 lt!2158086 (t!374203 s!2326)) lt!2158206)))

(declare-fun b!5279416 () Bool)

(assert (=> b!5279416 (= e!3282820 (matchZipper!1145 lt!2158086 (t!374203 s!2326)))))

(assert (= (and d!1698944 (not res!2239134)) b!5279416))

(declare-fun m!6317376 () Bool)

(assert (=> d!1698944 m!6317376))

(assert (=> d!1698944 m!6316782))

(declare-fun m!6317378 () Bool)

(assert (=> d!1698944 m!6317378))

(assert (=> b!5279416 m!6316744))

(assert (=> b!5278711 d!1698944))

(declare-fun b!5279417 () Bool)

(declare-fun e!3282821 () (InoxSet Context!8570))

(assert (=> b!5279417 (= e!3282821 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!375827 () Bool)

(declare-fun call!375832 () (InoxSet Context!8570))

(assert (=> bm!375827 (= call!375832 (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158063)) (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (h!67326 s!2326)))))

(declare-fun d!1698946 () Bool)

(declare-fun c!915067 () Bool)

(declare-fun e!3282822 () Bool)

(assert (=> d!1698946 (= c!915067 e!3282822)))

(declare-fun res!2239135 () Bool)

(assert (=> d!1698946 (=> (not res!2239135) (not e!3282822))))

(assert (=> d!1698946 (= res!2239135 ((_ is Cons!60879) (exprs!4785 lt!2158063)))))

(declare-fun e!3282823 () (InoxSet Context!8570))

(assert (=> d!1698946 (= (derivationStepZipperUp!273 lt!2158063 (h!67326 s!2326)) e!3282823)))

(declare-fun b!5279418 () Bool)

(assert (=> b!5279418 (= e!3282821 call!375832)))

(declare-fun b!5279419 () Bool)

(assert (=> b!5279419 (= e!3282822 (nullable!5070 (h!67327 (exprs!4785 lt!2158063))))))

(declare-fun b!5279420 () Bool)

(assert (=> b!5279420 (= e!3282823 e!3282821)))

(declare-fun c!915068 () Bool)

(assert (=> b!5279420 (= c!915068 ((_ is Cons!60879) (exprs!4785 lt!2158063)))))

(declare-fun b!5279421 () Bool)

(assert (=> b!5279421 (= e!3282823 ((_ map or) call!375832 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (h!67326 s!2326))))))

(assert (= (and d!1698946 res!2239135) b!5279419))

(assert (= (and d!1698946 c!915067) b!5279421))

(assert (= (and d!1698946 (not c!915067)) b!5279420))

(assert (= (and b!5279420 c!915068) b!5279418))

(assert (= (and b!5279420 (not c!915068)) b!5279417))

(assert (= (or b!5279421 b!5279418) bm!375827))

(declare-fun m!6317380 () Bool)

(assert (=> bm!375827 m!6317380))

(declare-fun m!6317382 () Bool)

(assert (=> b!5279419 m!6317382))

(declare-fun m!6317384 () Bool)

(assert (=> b!5279421 m!6317384))

(assert (=> b!5278711 d!1698946))

(declare-fun d!1698948 () Bool)

(declare-fun c!915069 () Bool)

(assert (=> d!1698948 (= c!915069 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282824 () Bool)

(assert (=> d!1698948 (= (matchZipper!1145 lt!2158080 (t!374203 s!2326)) e!3282824)))

(declare-fun b!5279422 () Bool)

(assert (=> b!5279422 (= e!3282824 (nullableZipper!1298 lt!2158080))))

(declare-fun b!5279423 () Bool)

(assert (=> b!5279423 (= e!3282824 (matchZipper!1145 (derivationStepZipper!1144 lt!2158080 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698948 c!915069) b!5279422))

(assert (= (and d!1698948 (not c!915069)) b!5279423))

(assert (=> d!1698948 m!6317232))

(declare-fun m!6317386 () Bool)

(assert (=> b!5279422 m!6317386))

(assert (=> b!5279423 m!6317236))

(assert (=> b!5279423 m!6317236))

(declare-fun m!6317388 () Bool)

(assert (=> b!5279423 m!6317388))

(assert (=> b!5279423 m!6317240))

(assert (=> b!5279423 m!6317388))

(assert (=> b!5279423 m!6317240))

(declare-fun m!6317390 () Bool)

(assert (=> b!5279423 m!6317390))

(assert (=> b!5278711 d!1698948))

(declare-fun d!1698950 () Bool)

(assert (=> d!1698950 (= (flatMap!628 lt!2158087 lambda!266558) (choose!39396 lt!2158087 lambda!266558))))

(declare-fun bs!1223354 () Bool)

(assert (= bs!1223354 d!1698950))

(declare-fun m!6317392 () Bool)

(assert (=> bs!1223354 m!6317392))

(assert (=> b!5278711 d!1698950))

(declare-fun bs!1223355 () Bool)

(declare-fun d!1698952 () Bool)

(assert (= bs!1223355 (and d!1698952 b!5278732)))

(declare-fun lambda!266628 () Int)

(assert (=> bs!1223355 (= lambda!266628 lambda!266559)))

(declare-fun e!3282840 () Bool)

(assert (=> d!1698952 e!3282840))

(declare-fun res!2239141 () Bool)

(assert (=> d!1698952 (=> (not res!2239141) (not e!3282840))))

(declare-fun lt!2158209 () Regex!14901)

(assert (=> d!1698952 (= res!2239141 (validRegex!6637 lt!2158209))))

(declare-fun e!3282839 () Regex!14901)

(assert (=> d!1698952 (= lt!2158209 e!3282839)))

(declare-fun c!915080 () Bool)

(declare-fun e!3282841 () Bool)

(assert (=> d!1698952 (= c!915080 e!3282841)))

(declare-fun res!2239140 () Bool)

(assert (=> d!1698952 (=> (not res!2239140) (not e!3282841))))

(assert (=> d!1698952 (= res!2239140 ((_ is Cons!60879) (unfocusZipperList!343 zl!343)))))

(assert (=> d!1698952 (forall!14309 (unfocusZipperList!343 zl!343) lambda!266628)))

(assert (=> d!1698952 (= (generalisedUnion!830 (unfocusZipperList!343 zl!343)) lt!2158209)))

(declare-fun b!5279444 () Bool)

(declare-fun e!3282838 () Bool)

(declare-fun head!11315 (List!61003) Regex!14901)

(assert (=> b!5279444 (= e!3282838 (= lt!2158209 (head!11315 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5279445 () Bool)

(declare-fun isUnion!273 (Regex!14901) Bool)

(assert (=> b!5279445 (= e!3282838 (isUnion!273 lt!2158209))))

(declare-fun b!5279446 () Bool)

(declare-fun e!3282837 () Bool)

(declare-fun isEmptyLang!841 (Regex!14901) Bool)

(assert (=> b!5279446 (= e!3282837 (isEmptyLang!841 lt!2158209))))

(declare-fun b!5279447 () Bool)

(assert (=> b!5279447 (= e!3282840 e!3282837)))

(declare-fun c!915078 () Bool)

(assert (=> b!5279447 (= c!915078 (isEmpty!32831 (unfocusZipperList!343 zl!343)))))

(declare-fun b!5279448 () Bool)

(declare-fun e!3282842 () Regex!14901)

(assert (=> b!5279448 (= e!3282842 EmptyLang!14901)))

(declare-fun b!5279449 () Bool)

(assert (=> b!5279449 (= e!3282842 (Union!14901 (h!67327 (unfocusZipperList!343 zl!343)) (generalisedUnion!830 (t!374204 (unfocusZipperList!343 zl!343)))))))

(declare-fun b!5279450 () Bool)

(assert (=> b!5279450 (= e!3282841 (isEmpty!32831 (t!374204 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5279451 () Bool)

(assert (=> b!5279451 (= e!3282839 e!3282842)))

(declare-fun c!915081 () Bool)

(assert (=> b!5279451 (= c!915081 ((_ is Cons!60879) (unfocusZipperList!343 zl!343)))))

(declare-fun b!5279452 () Bool)

(assert (=> b!5279452 (= e!3282837 e!3282838)))

(declare-fun c!915079 () Bool)

(declare-fun tail!10412 (List!61003) List!61003)

(assert (=> b!5279452 (= c!915079 (isEmpty!32831 (tail!10412 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5279453 () Bool)

(assert (=> b!5279453 (= e!3282839 (h!67327 (unfocusZipperList!343 zl!343)))))

(assert (= (and d!1698952 res!2239140) b!5279450))

(assert (= (and d!1698952 c!915080) b!5279453))

(assert (= (and d!1698952 (not c!915080)) b!5279451))

(assert (= (and b!5279451 c!915081) b!5279449))

(assert (= (and b!5279451 (not c!915081)) b!5279448))

(assert (= (and d!1698952 res!2239141) b!5279447))

(assert (= (and b!5279447 c!915078) b!5279446))

(assert (= (and b!5279447 (not c!915078)) b!5279452))

(assert (= (and b!5279452 c!915079) b!5279444))

(assert (= (and b!5279452 (not c!915079)) b!5279445))

(assert (=> b!5279447 m!6316776))

(declare-fun m!6317394 () Bool)

(assert (=> b!5279447 m!6317394))

(declare-fun m!6317396 () Bool)

(assert (=> d!1698952 m!6317396))

(assert (=> d!1698952 m!6316776))

(declare-fun m!6317398 () Bool)

(assert (=> d!1698952 m!6317398))

(declare-fun m!6317400 () Bool)

(assert (=> b!5279445 m!6317400))

(assert (=> b!5279452 m!6316776))

(declare-fun m!6317402 () Bool)

(assert (=> b!5279452 m!6317402))

(assert (=> b!5279452 m!6317402))

(declare-fun m!6317404 () Bool)

(assert (=> b!5279452 m!6317404))

(declare-fun m!6317406 () Bool)

(assert (=> b!5279446 m!6317406))

(declare-fun m!6317408 () Bool)

(assert (=> b!5279450 m!6317408))

(assert (=> b!5279444 m!6316776))

(declare-fun m!6317410 () Bool)

(assert (=> b!5279444 m!6317410))

(declare-fun m!6317412 () Bool)

(assert (=> b!5279449 m!6317412))

(assert (=> b!5278731 d!1698952))

(declare-fun bs!1223356 () Bool)

(declare-fun d!1698954 () Bool)

(assert (= bs!1223356 (and d!1698954 b!5278732)))

(declare-fun lambda!266631 () Int)

(assert (=> bs!1223356 (= lambda!266631 lambda!266559)))

(declare-fun bs!1223357 () Bool)

(assert (= bs!1223357 (and d!1698954 d!1698952)))

(assert (=> bs!1223357 (= lambda!266631 lambda!266628)))

(declare-fun lt!2158212 () List!61003)

(assert (=> d!1698954 (forall!14309 lt!2158212 lambda!266631)))

(declare-fun e!3282845 () List!61003)

(assert (=> d!1698954 (= lt!2158212 e!3282845)))

(declare-fun c!915084 () Bool)

(assert (=> d!1698954 (= c!915084 ((_ is Cons!60880) zl!343))))

(assert (=> d!1698954 (= (unfocusZipperList!343 zl!343) lt!2158212)))

(declare-fun b!5279458 () Bool)

(assert (=> b!5279458 (= e!3282845 (Cons!60879 (generalisedConcat!570 (exprs!4785 (h!67328 zl!343))) (unfocusZipperList!343 (t!374205 zl!343))))))

(declare-fun b!5279459 () Bool)

(assert (=> b!5279459 (= e!3282845 Nil!60879)))

(assert (= (and d!1698954 c!915084) b!5279458))

(assert (= (and d!1698954 (not c!915084)) b!5279459))

(declare-fun m!6317414 () Bool)

(assert (=> d!1698954 m!6317414))

(assert (=> b!5279458 m!6316758))

(declare-fun m!6317416 () Bool)

(assert (=> b!5279458 m!6317416))

(assert (=> b!5278731 d!1698954))

(declare-fun bs!1223358 () Bool)

(declare-fun d!1698956 () Bool)

(assert (= bs!1223358 (and d!1698956 b!5278732)))

(declare-fun lambda!266634 () Int)

(assert (=> bs!1223358 (= lambda!266634 lambda!266559)))

(declare-fun bs!1223359 () Bool)

(assert (= bs!1223359 (and d!1698956 d!1698952)))

(assert (=> bs!1223359 (= lambda!266634 lambda!266628)))

(declare-fun bs!1223360 () Bool)

(assert (= bs!1223360 (and d!1698956 d!1698954)))

(assert (=> bs!1223360 (= lambda!266634 lambda!266631)))

(declare-fun b!5279480 () Bool)

(declare-fun e!3282860 () Bool)

(declare-fun lt!2158215 () Regex!14901)

(declare-fun isConcat!356 (Regex!14901) Bool)

(assert (=> b!5279480 (= e!3282860 (isConcat!356 lt!2158215))))

(declare-fun b!5279481 () Bool)

(declare-fun e!3282858 () Regex!14901)

(declare-fun e!3282861 () Regex!14901)

(assert (=> b!5279481 (= e!3282858 e!3282861)))

(declare-fun c!915094 () Bool)

(assert (=> b!5279481 (= c!915094 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(declare-fun b!5279482 () Bool)

(assert (=> b!5279482 (= e!3282861 (Concat!23746 (h!67327 (exprs!4785 (h!67328 zl!343))) (generalisedConcat!570 (t!374204 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun e!3282862 () Bool)

(assert (=> d!1698956 e!3282862))

(declare-fun res!2239147 () Bool)

(assert (=> d!1698956 (=> (not res!2239147) (not e!3282862))))

(assert (=> d!1698956 (= res!2239147 (validRegex!6637 lt!2158215))))

(assert (=> d!1698956 (= lt!2158215 e!3282858)))

(declare-fun c!915095 () Bool)

(declare-fun e!3282863 () Bool)

(assert (=> d!1698956 (= c!915095 e!3282863)))

(declare-fun res!2239146 () Bool)

(assert (=> d!1698956 (=> (not res!2239146) (not e!3282863))))

(assert (=> d!1698956 (= res!2239146 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> d!1698956 (forall!14309 (exprs!4785 (h!67328 zl!343)) lambda!266634)))

(assert (=> d!1698956 (= (generalisedConcat!570 (exprs!4785 (h!67328 zl!343))) lt!2158215)))

(declare-fun b!5279483 () Bool)

(declare-fun e!3282859 () Bool)

(assert (=> b!5279483 (= e!3282862 e!3282859)))

(declare-fun c!915093 () Bool)

(assert (=> b!5279483 (= c!915093 (isEmpty!32831 (exprs!4785 (h!67328 zl!343))))))

(declare-fun b!5279484 () Bool)

(declare-fun isEmptyExpr!833 (Regex!14901) Bool)

(assert (=> b!5279484 (= e!3282859 (isEmptyExpr!833 lt!2158215))))

(declare-fun b!5279485 () Bool)

(assert (=> b!5279485 (= e!3282861 EmptyExpr!14901)))

(declare-fun b!5279486 () Bool)

(assert (=> b!5279486 (= e!3282860 (= lt!2158215 (head!11315 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5279487 () Bool)

(assert (=> b!5279487 (= e!3282859 e!3282860)))

(declare-fun c!915096 () Bool)

(assert (=> b!5279487 (= c!915096 (isEmpty!32831 (tail!10412 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5279488 () Bool)

(assert (=> b!5279488 (= e!3282863 (isEmpty!32831 (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5279489 () Bool)

(assert (=> b!5279489 (= e!3282858 (h!67327 (exprs!4785 (h!67328 zl!343))))))

(assert (= (and d!1698956 res!2239146) b!5279488))

(assert (= (and d!1698956 c!915095) b!5279489))

(assert (= (and d!1698956 (not c!915095)) b!5279481))

(assert (= (and b!5279481 c!915094) b!5279482))

(assert (= (and b!5279481 (not c!915094)) b!5279485))

(assert (= (and d!1698956 res!2239147) b!5279483))

(assert (= (and b!5279483 c!915093) b!5279484))

(assert (= (and b!5279483 (not c!915093)) b!5279487))

(assert (= (and b!5279487 c!915096) b!5279486))

(assert (= (and b!5279487 (not c!915096)) b!5279480))

(declare-fun m!6317418 () Bool)

(assert (=> b!5279482 m!6317418))

(declare-fun m!6317420 () Bool)

(assert (=> b!5279487 m!6317420))

(assert (=> b!5279487 m!6317420))

(declare-fun m!6317422 () Bool)

(assert (=> b!5279487 m!6317422))

(declare-fun m!6317424 () Bool)

(assert (=> d!1698956 m!6317424))

(declare-fun m!6317426 () Bool)

(assert (=> d!1698956 m!6317426))

(assert (=> b!5279488 m!6316844))

(declare-fun m!6317428 () Bool)

(assert (=> b!5279484 m!6317428))

(declare-fun m!6317430 () Bool)

(assert (=> b!5279486 m!6317430))

(declare-fun m!6317432 () Bool)

(assert (=> b!5279483 m!6317432))

(declare-fun m!6317434 () Bool)

(assert (=> b!5279480 m!6317434))

(assert (=> b!5278707 d!1698956))

(declare-fun d!1698958 () Bool)

(assert (=> d!1698958 (= (isEmpty!32832 (t!374205 zl!343)) ((_ is Nil!60880) (t!374205 zl!343)))))

(assert (=> b!5278727 d!1698958))

(declare-fun d!1698960 () Bool)

(declare-fun lt!2158218 () Int)

(assert (=> d!1698960 (>= lt!2158218 0)))

(declare-fun e!3282866 () Int)

(assert (=> d!1698960 (= lt!2158218 e!3282866)))

(declare-fun c!915100 () Bool)

(assert (=> d!1698960 (= c!915100 ((_ is Cons!60879) (exprs!4785 lt!2158060)))))

(assert (=> d!1698960 (= (contextDepthTotal!42 lt!2158060) lt!2158218)))

(declare-fun b!5279494 () Bool)

(declare-fun regexDepthTotal!10 (Regex!14901) Int)

(assert (=> b!5279494 (= e!3282866 (+ (regexDepthTotal!10 (h!67327 (exprs!4785 lt!2158060))) (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 lt!2158060))))))))

(declare-fun b!5279495 () Bool)

(assert (=> b!5279495 (= e!3282866 1)))

(assert (= (and d!1698960 c!915100) b!5279494))

(assert (= (and d!1698960 (not c!915100)) b!5279495))

(declare-fun m!6317436 () Bool)

(assert (=> b!5279494 m!6317436))

(declare-fun m!6317438 () Bool)

(assert (=> b!5279494 m!6317438))

(assert (=> b!5278729 d!1698960))

(declare-fun d!1698962 () Bool)

(declare-fun lt!2158219 () Int)

(assert (=> d!1698962 (>= lt!2158219 0)))

(declare-fun e!3282867 () Int)

(assert (=> d!1698962 (= lt!2158219 e!3282867)))

(declare-fun c!915101 () Bool)

(assert (=> d!1698962 (= c!915101 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> d!1698962 (= (contextDepthTotal!42 (h!67328 zl!343)) lt!2158219)))

(declare-fun b!5279496 () Bool)

(assert (=> b!5279496 (= e!3282867 (+ (regexDepthTotal!10 (h!67327 (exprs!4785 (h!67328 zl!343)))) (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5279497 () Bool)

(assert (=> b!5279497 (= e!3282867 1)))

(assert (= (and d!1698962 c!915101) b!5279496))

(assert (= (and d!1698962 (not c!915101)) b!5279497))

(declare-fun m!6317440 () Bool)

(assert (=> b!5279496 m!6317440))

(declare-fun m!6317442 () Bool)

(assert (=> b!5279496 m!6317442))

(assert (=> b!5278729 d!1698962))

(declare-fun d!1698964 () Bool)

(declare-fun e!3282868 () Bool)

(assert (=> d!1698964 (= (matchZipper!1145 ((_ map or) lt!2158061 lt!2158070) (t!374203 s!2326)) e!3282868)))

(declare-fun res!2239148 () Bool)

(assert (=> d!1698964 (=> res!2239148 e!3282868)))

(assert (=> d!1698964 (= res!2239148 (matchZipper!1145 lt!2158061 (t!374203 s!2326)))))

(declare-fun lt!2158220 () Unit!153122)

(assert (=> d!1698964 (= lt!2158220 (choose!39398 lt!2158061 lt!2158070 (t!374203 s!2326)))))

(assert (=> d!1698964 (= (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158061 lt!2158070 (t!374203 s!2326)) lt!2158220)))

(declare-fun b!5279498 () Bool)

(assert (=> b!5279498 (= e!3282868 (matchZipper!1145 lt!2158070 (t!374203 s!2326)))))

(assert (= (and d!1698964 (not res!2239148)) b!5279498))

(assert (=> d!1698964 m!6316750))

(assert (=> d!1698964 m!6316748))

(declare-fun m!6317444 () Bool)

(assert (=> d!1698964 m!6317444))

(assert (=> b!5279498 m!6316794))

(assert (=> b!5278728 d!1698964))

(declare-fun d!1698966 () Bool)

(declare-fun c!915102 () Bool)

(assert (=> d!1698966 (= c!915102 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282869 () Bool)

(assert (=> d!1698966 (= (matchZipper!1145 lt!2158061 (t!374203 s!2326)) e!3282869)))

(declare-fun b!5279499 () Bool)

(assert (=> b!5279499 (= e!3282869 (nullableZipper!1298 lt!2158061))))

(declare-fun b!5279500 () Bool)

(assert (=> b!5279500 (= e!3282869 (matchZipper!1145 (derivationStepZipper!1144 lt!2158061 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698966 c!915102) b!5279499))

(assert (= (and d!1698966 (not c!915102)) b!5279500))

(assert (=> d!1698966 m!6317232))

(declare-fun m!6317446 () Bool)

(assert (=> b!5279499 m!6317446))

(assert (=> b!5279500 m!6317236))

(assert (=> b!5279500 m!6317236))

(declare-fun m!6317448 () Bool)

(assert (=> b!5279500 m!6317448))

(assert (=> b!5279500 m!6317240))

(assert (=> b!5279500 m!6317448))

(assert (=> b!5279500 m!6317240))

(declare-fun m!6317450 () Bool)

(assert (=> b!5279500 m!6317450))

(assert (=> b!5278728 d!1698966))

(declare-fun d!1698968 () Bool)

(declare-fun c!915103 () Bool)

(assert (=> d!1698968 (= c!915103 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282870 () Bool)

(assert (=> d!1698968 (= (matchZipper!1145 ((_ map or) lt!2158061 lt!2158070) (t!374203 s!2326)) e!3282870)))

(declare-fun b!5279501 () Bool)

(assert (=> b!5279501 (= e!3282870 (nullableZipper!1298 ((_ map or) lt!2158061 lt!2158070)))))

(declare-fun b!5279502 () Bool)

(assert (=> b!5279502 (= e!3282870 (matchZipper!1145 (derivationStepZipper!1144 ((_ map or) lt!2158061 lt!2158070) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698968 c!915103) b!5279501))

(assert (= (and d!1698968 (not c!915103)) b!5279502))

(assert (=> d!1698968 m!6317232))

(declare-fun m!6317452 () Bool)

(assert (=> b!5279501 m!6317452))

(assert (=> b!5279502 m!6317236))

(assert (=> b!5279502 m!6317236))

(declare-fun m!6317454 () Bool)

(assert (=> b!5279502 m!6317454))

(assert (=> b!5279502 m!6317240))

(assert (=> b!5279502 m!6317454))

(assert (=> b!5279502 m!6317240))

(declare-fun m!6317456 () Bool)

(assert (=> b!5279502 m!6317456))

(assert (=> b!5278728 d!1698968))

(declare-fun b!5279503 () Bool)

(declare-fun e!3282871 () (InoxSet Context!8570))

(assert (=> b!5279503 (= e!3282871 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!375828 () Bool)

(declare-fun call!375833 () (InoxSet Context!8570))

(assert (=> bm!375828 (= call!375833 (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158060)) (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (h!67326 s!2326)))))

(declare-fun d!1698970 () Bool)

(declare-fun c!915104 () Bool)

(declare-fun e!3282872 () Bool)

(assert (=> d!1698970 (= c!915104 e!3282872)))

(declare-fun res!2239149 () Bool)

(assert (=> d!1698970 (=> (not res!2239149) (not e!3282872))))

(assert (=> d!1698970 (= res!2239149 ((_ is Cons!60879) (exprs!4785 lt!2158060)))))

(declare-fun e!3282873 () (InoxSet Context!8570))

(assert (=> d!1698970 (= (derivationStepZipperUp!273 lt!2158060 (h!67326 s!2326)) e!3282873)))

(declare-fun b!5279504 () Bool)

(assert (=> b!5279504 (= e!3282871 call!375833)))

(declare-fun b!5279505 () Bool)

(assert (=> b!5279505 (= e!3282872 (nullable!5070 (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun b!5279506 () Bool)

(assert (=> b!5279506 (= e!3282873 e!3282871)))

(declare-fun c!915105 () Bool)

(assert (=> b!5279506 (= c!915105 ((_ is Cons!60879) (exprs!4785 lt!2158060)))))

(declare-fun b!5279507 () Bool)

(assert (=> b!5279507 (= e!3282873 ((_ map or) call!375833 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (h!67326 s!2326))))))

(assert (= (and d!1698970 res!2239149) b!5279505))

(assert (= (and d!1698970 c!915104) b!5279507))

(assert (= (and d!1698970 (not c!915104)) b!5279506))

(assert (= (and b!5279506 c!915105) b!5279504))

(assert (= (and b!5279506 (not c!915105)) b!5279503))

(assert (= (or b!5279507 b!5279504) bm!375828))

(declare-fun m!6317458 () Bool)

(assert (=> bm!375828 m!6317458))

(declare-fun m!6317460 () Bool)

(assert (=> b!5279505 m!6317460))

(declare-fun m!6317462 () Bool)

(assert (=> b!5279507 m!6317462))

(assert (=> b!5278708 d!1698970))

(declare-fun d!1698972 () Bool)

(assert (=> d!1698972 (= (flatMap!628 lt!2158064 lambda!266558) (dynLambda!24066 lambda!266558 lt!2158060))))

(declare-fun lt!2158221 () Unit!153122)

(assert (=> d!1698972 (= lt!2158221 (choose!39395 lt!2158064 lt!2158060 lambda!266558))))

(assert (=> d!1698972 (= lt!2158064 (store ((as const (Array Context!8570 Bool)) false) lt!2158060 true))))

(assert (=> d!1698972 (= (lemmaFlatMapOnSingletonSet!160 lt!2158064 lt!2158060 lambda!266558) lt!2158221)))

(declare-fun b_lambda!203665 () Bool)

(assert (=> (not b_lambda!203665) (not d!1698972)))

(declare-fun bs!1223361 () Bool)

(assert (= bs!1223361 d!1698972))

(assert (=> bs!1223361 m!6316764))

(declare-fun m!6317464 () Bool)

(assert (=> bs!1223361 m!6317464))

(declare-fun m!6317466 () Bool)

(assert (=> bs!1223361 m!6317466))

(assert (=> bs!1223361 m!6316760))

(assert (=> b!5278708 d!1698972))

(declare-fun d!1698974 () Bool)

(assert (=> d!1698974 (= (flatMap!628 lt!2158064 lambda!266558) (choose!39396 lt!2158064 lambda!266558))))

(declare-fun bs!1223362 () Bool)

(assert (= bs!1223362 d!1698974))

(declare-fun m!6317468 () Bool)

(assert (=> bs!1223362 m!6317468))

(assert (=> b!5278708 d!1698974))

(assert (=> b!5278708 d!1698946))

(declare-fun bs!1223363 () Bool)

(declare-fun d!1698976 () Bool)

(assert (= bs!1223363 (and d!1698976 b!5278704)))

(declare-fun lambda!266635 () Int)

(assert (=> bs!1223363 (= lambda!266635 lambda!266558)))

(declare-fun bs!1223364 () Bool)

(assert (= bs!1223364 (and d!1698976 d!1698932)))

(assert (=> bs!1223364 (= lambda!266635 lambda!266625)))

(assert (=> d!1698976 true))

(assert (=> d!1698976 (= (derivationStepZipper!1144 lt!2158064 (h!67326 s!2326)) (flatMap!628 lt!2158064 lambda!266635))))

(declare-fun bs!1223365 () Bool)

(assert (= bs!1223365 d!1698976))

(declare-fun m!6317470 () Bool)

(assert (=> bs!1223365 m!6317470))

(assert (=> b!5278708 d!1698976))

(declare-fun d!1698978 () Bool)

(assert (=> d!1698978 (= (nullable!5070 (regOne!30314 (regOne!30314 r!7292))) (nullableFct!1450 (regOne!30314 (regOne!30314 r!7292))))))

(declare-fun bs!1223366 () Bool)

(assert (= bs!1223366 d!1698978))

(declare-fun m!6317472 () Bool)

(assert (=> bs!1223366 m!6317472))

(assert (=> b!5278715 d!1698978))

(declare-fun b!5279508 () Bool)

(declare-fun e!3282876 () (InoxSet Context!8570))

(assert (=> b!5279508 (= e!3282876 (store ((as const (Array Context!8570 Bool)) false) lt!2158077 true))))

(declare-fun b!5279509 () Bool)

(declare-fun e!3282877 () (InoxSet Context!8570))

(declare-fun call!375837 () (InoxSet Context!8570))

(assert (=> b!5279509 (= e!3282877 call!375837)))

(declare-fun b!5279510 () Bool)

(declare-fun e!3282879 () (InoxSet Context!8570))

(assert (=> b!5279510 (= e!3282879 e!3282877)))

(declare-fun c!915109 () Bool)

(assert (=> b!5279510 (= c!915109 ((_ is Concat!23746) (regTwo!30314 (regOne!30314 r!7292))))))

(declare-fun c!915107 () Bool)

(declare-fun bm!375829 () Bool)

(declare-fun call!375835 () List!61003)

(declare-fun call!375838 () (InoxSet Context!8570))

(assert (=> bm!375829 (= call!375838 (derivationStepZipperDown!349 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))) (ite c!915107 lt!2158077 (Context!8571 call!375835)) (h!67326 s!2326)))))

(declare-fun bm!375830 () Bool)

(declare-fun c!915108 () Bool)

(declare-fun call!375836 () (InoxSet Context!8570))

(declare-fun call!375834 () List!61003)

(assert (=> bm!375830 (= call!375836 (derivationStepZipperDown!349 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))) (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834)) (h!67326 s!2326)))))

(declare-fun b!5279511 () Bool)

(declare-fun e!3282874 () (InoxSet Context!8570))

(assert (=> b!5279511 (= e!3282874 ((_ map or) call!375836 call!375838))))

(declare-fun bm!375831 () Bool)

(assert (=> bm!375831 (= call!375834 call!375835)))

(declare-fun d!1698980 () Bool)

(declare-fun c!915106 () Bool)

(assert (=> d!1698980 (= c!915106 (and ((_ is ElementMatch!14901) (regTwo!30314 (regOne!30314 r!7292))) (= (c!914851 (regTwo!30314 (regOne!30314 r!7292))) (h!67326 s!2326))))))

(assert (=> d!1698980 (= (derivationStepZipperDown!349 (regTwo!30314 (regOne!30314 r!7292)) lt!2158077 (h!67326 s!2326)) e!3282876)))

(declare-fun b!5279512 () Bool)

(declare-fun e!3282878 () Bool)

(assert (=> b!5279512 (= e!3282878 (nullable!5070 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))))

(declare-fun b!5279513 () Bool)

(assert (=> b!5279513 (= e!3282876 e!3282874)))

(assert (=> b!5279513 (= c!915107 ((_ is Union!14901) (regTwo!30314 (regOne!30314 r!7292))))))

(declare-fun b!5279514 () Bool)

(declare-fun call!375839 () (InoxSet Context!8570))

(assert (=> b!5279514 (= e!3282879 ((_ map or) call!375838 call!375839))))

(declare-fun b!5279515 () Bool)

(assert (=> b!5279515 (= c!915108 e!3282878)))

(declare-fun res!2239150 () Bool)

(assert (=> b!5279515 (=> (not res!2239150) (not e!3282878))))

(assert (=> b!5279515 (= res!2239150 ((_ is Concat!23746) (regTwo!30314 (regOne!30314 r!7292))))))

(assert (=> b!5279515 (= e!3282874 e!3282879)))

(declare-fun bm!375832 () Bool)

(assert (=> bm!375832 (= call!375835 ($colon$colon!1348 (exprs!4785 lt!2158077) (ite (or c!915108 c!915109) (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (regTwo!30314 (regOne!30314 r!7292)))))))

(declare-fun b!5279516 () Bool)

(declare-fun e!3282875 () (InoxSet Context!8570))

(assert (=> b!5279516 (= e!3282875 call!375837)))

(declare-fun bm!375833 () Bool)

(assert (=> bm!375833 (= call!375839 call!375836)))

(declare-fun b!5279517 () Bool)

(assert (=> b!5279517 (= e!3282875 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5279518 () Bool)

(declare-fun c!915110 () Bool)

(assert (=> b!5279518 (= c!915110 ((_ is Star!14901) (regTwo!30314 (regOne!30314 r!7292))))))

(assert (=> b!5279518 (= e!3282877 e!3282875)))

(declare-fun bm!375834 () Bool)

(assert (=> bm!375834 (= call!375837 call!375839)))

(assert (= (and d!1698980 c!915106) b!5279508))

(assert (= (and d!1698980 (not c!915106)) b!5279513))

(assert (= (and b!5279513 c!915107) b!5279511))

(assert (= (and b!5279513 (not c!915107)) b!5279515))

(assert (= (and b!5279515 res!2239150) b!5279512))

(assert (= (and b!5279515 c!915108) b!5279514))

(assert (= (and b!5279515 (not c!915108)) b!5279510))

(assert (= (and b!5279510 c!915109) b!5279509))

(assert (= (and b!5279510 (not c!915109)) b!5279518))

(assert (= (and b!5279518 c!915110) b!5279516))

(assert (= (and b!5279518 (not c!915110)) b!5279517))

(assert (= (or b!5279509 b!5279516) bm!375831))

(assert (= (or b!5279509 b!5279516) bm!375834))

(assert (= (or b!5279514 bm!375831) bm!375832))

(assert (= (or b!5279514 bm!375834) bm!375833))

(assert (= (or b!5279511 b!5279514) bm!375829))

(assert (= (or b!5279511 bm!375833) bm!375830))

(declare-fun m!6317474 () Bool)

(assert (=> bm!375830 m!6317474))

(declare-fun m!6317476 () Bool)

(assert (=> bm!375829 m!6317476))

(assert (=> b!5279508 m!6317312))

(declare-fun m!6317478 () Bool)

(assert (=> b!5279512 m!6317478))

(declare-fun m!6317480 () Bool)

(assert (=> bm!375832 m!6317480))

(assert (=> b!5278736 d!1698980))

(declare-fun b!5279519 () Bool)

(declare-fun e!3282882 () (InoxSet Context!8570))

(assert (=> b!5279519 (= e!3282882 (store ((as const (Array Context!8570 Bool)) false) lt!2158063 true))))

(declare-fun b!5279520 () Bool)

(declare-fun e!3282883 () (InoxSet Context!8570))

(declare-fun call!375843 () (InoxSet Context!8570))

(assert (=> b!5279520 (= e!3282883 call!375843)))

(declare-fun b!5279521 () Bool)

(declare-fun e!3282885 () (InoxSet Context!8570))

(assert (=> b!5279521 (= e!3282885 e!3282883)))

(declare-fun c!915114 () Bool)

(assert (=> b!5279521 (= c!915114 ((_ is Concat!23746) (regOne!30314 (regOne!30314 r!7292))))))

(declare-fun c!915112 () Bool)

(declare-fun call!375844 () (InoxSet Context!8570))

(declare-fun bm!375835 () Bool)

(declare-fun call!375841 () List!61003)

(assert (=> bm!375835 (= call!375844 (derivationStepZipperDown!349 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))) (ite c!915112 lt!2158063 (Context!8571 call!375841)) (h!67326 s!2326)))))

(declare-fun call!375840 () List!61003)

(declare-fun c!915113 () Bool)

(declare-fun bm!375836 () Bool)

(declare-fun call!375842 () (InoxSet Context!8570))

(assert (=> bm!375836 (= call!375842 (derivationStepZipperDown!349 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))) (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840)) (h!67326 s!2326)))))

(declare-fun b!5279522 () Bool)

(declare-fun e!3282880 () (InoxSet Context!8570))

(assert (=> b!5279522 (= e!3282880 ((_ map or) call!375842 call!375844))))

(declare-fun bm!375837 () Bool)

(assert (=> bm!375837 (= call!375840 call!375841)))

(declare-fun d!1698982 () Bool)

(declare-fun c!915111 () Bool)

(assert (=> d!1698982 (= c!915111 (and ((_ is ElementMatch!14901) (regOne!30314 (regOne!30314 r!7292))) (= (c!914851 (regOne!30314 (regOne!30314 r!7292))) (h!67326 s!2326))))))

(assert (=> d!1698982 (= (derivationStepZipperDown!349 (regOne!30314 (regOne!30314 r!7292)) lt!2158063 (h!67326 s!2326)) e!3282882)))

(declare-fun b!5279523 () Bool)

(declare-fun e!3282884 () Bool)

(assert (=> b!5279523 (= e!3282884 (nullable!5070 (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))))

(declare-fun b!5279524 () Bool)

(assert (=> b!5279524 (= e!3282882 e!3282880)))

(assert (=> b!5279524 (= c!915112 ((_ is Union!14901) (regOne!30314 (regOne!30314 r!7292))))))

(declare-fun b!5279525 () Bool)

(declare-fun call!375845 () (InoxSet Context!8570))

(assert (=> b!5279525 (= e!3282885 ((_ map or) call!375844 call!375845))))

(declare-fun b!5279526 () Bool)

(assert (=> b!5279526 (= c!915113 e!3282884)))

(declare-fun res!2239151 () Bool)

(assert (=> b!5279526 (=> (not res!2239151) (not e!3282884))))

(assert (=> b!5279526 (= res!2239151 ((_ is Concat!23746) (regOne!30314 (regOne!30314 r!7292))))))

(assert (=> b!5279526 (= e!3282880 e!3282885)))

(declare-fun bm!375838 () Bool)

(assert (=> bm!375838 (= call!375841 ($colon$colon!1348 (exprs!4785 lt!2158063) (ite (or c!915113 c!915114) (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 r!7292)))))))

(declare-fun b!5279527 () Bool)

(declare-fun e!3282881 () (InoxSet Context!8570))

(assert (=> b!5279527 (= e!3282881 call!375843)))

(declare-fun bm!375839 () Bool)

(assert (=> bm!375839 (= call!375845 call!375842)))

(declare-fun b!5279528 () Bool)

(assert (=> b!5279528 (= e!3282881 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5279529 () Bool)

(declare-fun c!915115 () Bool)

(assert (=> b!5279529 (= c!915115 ((_ is Star!14901) (regOne!30314 (regOne!30314 r!7292))))))

(assert (=> b!5279529 (= e!3282883 e!3282881)))

(declare-fun bm!375840 () Bool)

(assert (=> bm!375840 (= call!375843 call!375845)))

(assert (= (and d!1698982 c!915111) b!5279519))

(assert (= (and d!1698982 (not c!915111)) b!5279524))

(assert (= (and b!5279524 c!915112) b!5279522))

(assert (= (and b!5279524 (not c!915112)) b!5279526))

(assert (= (and b!5279526 res!2239151) b!5279523))

(assert (= (and b!5279526 c!915113) b!5279525))

(assert (= (and b!5279526 (not c!915113)) b!5279521))

(assert (= (and b!5279521 c!915114) b!5279520))

(assert (= (and b!5279521 (not c!915114)) b!5279529))

(assert (= (and b!5279529 c!915115) b!5279527))

(assert (= (and b!5279529 (not c!915115)) b!5279528))

(assert (= (or b!5279520 b!5279527) bm!375837))

(assert (= (or b!5279520 b!5279527) bm!375840))

(assert (= (or b!5279525 bm!375837) bm!375838))

(assert (= (or b!5279525 bm!375840) bm!375839))

(assert (= (or b!5279522 b!5279525) bm!375835))

(assert (= (or b!5279522 bm!375839) bm!375836))

(declare-fun m!6317482 () Bool)

(assert (=> bm!375836 m!6317482))

(declare-fun m!6317484 () Bool)

(assert (=> bm!375835 m!6317484))

(assert (=> b!5279519 m!6316772))

(declare-fun m!6317486 () Bool)

(assert (=> b!5279523 m!6317486))

(declare-fun m!6317488 () Bool)

(assert (=> bm!375838 m!6317488))

(assert (=> b!5278736 d!1698982))

(assert (=> b!5278735 d!1698966))

(declare-fun d!1698984 () Bool)

(declare-fun c!915116 () Bool)

(assert (=> d!1698984 (= c!915116 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282886 () Bool)

(assert (=> d!1698984 (= (matchZipper!1145 lt!2158088 (t!374203 s!2326)) e!3282886)))

(declare-fun b!5279530 () Bool)

(assert (=> b!5279530 (= e!3282886 (nullableZipper!1298 lt!2158088))))

(declare-fun b!5279531 () Bool)

(assert (=> b!5279531 (= e!3282886 (matchZipper!1145 (derivationStepZipper!1144 lt!2158088 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698984 c!915116) b!5279530))

(assert (= (and d!1698984 (not c!915116)) b!5279531))

(assert (=> d!1698984 m!6317232))

(declare-fun m!6317490 () Bool)

(assert (=> b!5279530 m!6317490))

(assert (=> b!5279531 m!6317236))

(assert (=> b!5279531 m!6317236))

(declare-fun m!6317492 () Bool)

(assert (=> b!5279531 m!6317492))

(assert (=> b!5279531 m!6317240))

(assert (=> b!5279531 m!6317492))

(assert (=> b!5279531 m!6317240))

(declare-fun m!6317494 () Bool)

(assert (=> b!5279531 m!6317494))

(assert (=> b!5278735 d!1698984))

(declare-fun d!1698986 () Bool)

(declare-fun c!915117 () Bool)

(assert (=> d!1698986 (= c!915117 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3282887 () Bool)

(assert (=> d!1698986 (= (matchZipper!1145 lt!2158089 (t!374203 s!2326)) e!3282887)))

(declare-fun b!5279532 () Bool)

(assert (=> b!5279532 (= e!3282887 (nullableZipper!1298 lt!2158089))))

(declare-fun b!5279533 () Bool)

(assert (=> b!5279533 (= e!3282887 (matchZipper!1145 (derivationStepZipper!1144 lt!2158089 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1698986 c!915117) b!5279532))

(assert (= (and d!1698986 (not c!915117)) b!5279533))

(assert (=> d!1698986 m!6317232))

(declare-fun m!6317496 () Bool)

(assert (=> b!5279532 m!6317496))

(assert (=> b!5279533 m!6317236))

(assert (=> b!5279533 m!6317236))

(declare-fun m!6317498 () Bool)

(assert (=> b!5279533 m!6317498))

(assert (=> b!5279533 m!6317240))

(assert (=> b!5279533 m!6317498))

(assert (=> b!5279533 m!6317240))

(declare-fun m!6317500 () Bool)

(assert (=> b!5279533 m!6317500))

(assert (=> b!5278735 d!1698986))

(declare-fun d!1698988 () Bool)

(declare-fun e!3282888 () Bool)

(assert (=> d!1698988 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158068) (t!374203 s!2326)) e!3282888)))

(declare-fun res!2239152 () Bool)

(assert (=> d!1698988 (=> res!2239152 e!3282888)))

(assert (=> d!1698988 (= res!2239152 (matchZipper!1145 lt!2158089 (t!374203 s!2326)))))

(declare-fun lt!2158222 () Unit!153122)

(assert (=> d!1698988 (= lt!2158222 (choose!39398 lt!2158089 lt!2158068 (t!374203 s!2326)))))

(assert (=> d!1698988 (= (lemmaZipperConcatMatchesSameAsBothZippers!138 lt!2158089 lt!2158068 (t!374203 s!2326)) lt!2158222)))

(declare-fun b!5279534 () Bool)

(assert (=> b!5279534 (= e!3282888 (matchZipper!1145 lt!2158068 (t!374203 s!2326)))))

(assert (= (and d!1698988 (not res!2239152)) b!5279534))

(declare-fun m!6317502 () Bool)

(assert (=> d!1698988 m!6317502))

(assert (=> d!1698988 m!6316782))

(declare-fun m!6317504 () Bool)

(assert (=> d!1698988 m!6317504))

(assert (=> b!5279534 m!6316742))

(assert (=> b!5278735 d!1698988))

(declare-fun bs!1223367 () Bool)

(declare-fun d!1698990 () Bool)

(assert (= bs!1223367 (and d!1698990 b!5278732)))

(declare-fun lambda!266638 () Int)

(assert (=> bs!1223367 (= lambda!266638 lambda!266559)))

(declare-fun bs!1223368 () Bool)

(assert (= bs!1223368 (and d!1698990 d!1698952)))

(assert (=> bs!1223368 (= lambda!266638 lambda!266628)))

(declare-fun bs!1223369 () Bool)

(assert (= bs!1223369 (and d!1698990 d!1698954)))

(assert (=> bs!1223369 (= lambda!266638 lambda!266631)))

(declare-fun bs!1223370 () Bool)

(assert (= bs!1223370 (and d!1698990 d!1698956)))

(assert (=> bs!1223370 (= lambda!266638 lambda!266634)))

(assert (=> d!1698990 (= (inv!80499 (h!67328 zl!343)) (forall!14309 (exprs!4785 (h!67328 zl!343)) lambda!266638))))

(declare-fun bs!1223371 () Bool)

(assert (= bs!1223371 d!1698990))

(declare-fun m!6317506 () Bool)

(assert (=> bs!1223371 m!6317506))

(assert (=> b!5278716 d!1698990))

(declare-fun d!1698992 () Bool)

(declare-fun c!915118 () Bool)

(assert (=> d!1698992 (= c!915118 (isEmpty!32835 s!2326))))

(declare-fun e!3282889 () Bool)

(assert (=> d!1698992 (= (matchZipper!1145 lt!2158064 s!2326) e!3282889)))

(declare-fun b!5279535 () Bool)

(assert (=> b!5279535 (= e!3282889 (nullableZipper!1298 lt!2158064))))

(declare-fun b!5279536 () Bool)

(assert (=> b!5279536 (= e!3282889 (matchZipper!1145 (derivationStepZipper!1144 lt!2158064 (head!11314 s!2326)) (tail!10411 s!2326)))))

(assert (= (and d!1698992 c!915118) b!5279535))

(assert (= (and d!1698992 (not c!915118)) b!5279536))

(assert (=> d!1698992 m!6317326))

(declare-fun m!6317508 () Bool)

(assert (=> b!5279535 m!6317508))

(assert (=> b!5279536 m!6317332))

(assert (=> b!5279536 m!6317332))

(declare-fun m!6317510 () Bool)

(assert (=> b!5279536 m!6317510))

(assert (=> b!5279536 m!6317336))

(assert (=> b!5279536 m!6317510))

(assert (=> b!5279536 m!6317336))

(declare-fun m!6317512 () Bool)

(assert (=> b!5279536 m!6317512))

(assert (=> b!5278732 d!1698992))

(declare-fun bm!375841 () Bool)

(declare-fun call!375846 () Bool)

(assert (=> bm!375841 (= call!375846 (isEmpty!32835 s!2326))))

(declare-fun b!5279537 () Bool)

(declare-fun res!2239155 () Bool)

(declare-fun e!3282894 () Bool)

(assert (=> b!5279537 (=> (not res!2239155) (not e!3282894))))

(assert (=> b!5279537 (= res!2239155 (not call!375846))))

(declare-fun b!5279538 () Bool)

(declare-fun e!3282895 () Bool)

(assert (=> b!5279538 (= e!3282895 (nullable!5070 lt!2158076))))

(declare-fun b!5279539 () Bool)

(assert (=> b!5279539 (= e!3282895 (matchR!7086 (derivativeStep!4119 lt!2158076 (head!11314 s!2326)) (tail!10411 s!2326)))))

(declare-fun b!5279540 () Bool)

(declare-fun e!3282896 () Bool)

(declare-fun lt!2158223 () Bool)

(assert (=> b!5279540 (= e!3282896 (not lt!2158223))))

(declare-fun b!5279541 () Bool)

(declare-fun e!3282891 () Bool)

(declare-fun e!3282890 () Bool)

(assert (=> b!5279541 (= e!3282891 e!3282890)))

(declare-fun res!2239154 () Bool)

(assert (=> b!5279541 (=> (not res!2239154) (not e!3282890))))

(assert (=> b!5279541 (= res!2239154 (not lt!2158223))))

(declare-fun b!5279542 () Bool)

(declare-fun res!2239156 () Bool)

(assert (=> b!5279542 (=> res!2239156 e!3282891)))

(assert (=> b!5279542 (= res!2239156 e!3282894)))

(declare-fun res!2239159 () Bool)

(assert (=> b!5279542 (=> (not res!2239159) (not e!3282894))))

(assert (=> b!5279542 (= res!2239159 lt!2158223)))

(declare-fun b!5279543 () Bool)

(assert (=> b!5279543 (= e!3282894 (= (head!11314 s!2326) (c!914851 lt!2158076)))))

(declare-fun d!1698994 () Bool)

(declare-fun e!3282893 () Bool)

(assert (=> d!1698994 e!3282893))

(declare-fun c!915121 () Bool)

(assert (=> d!1698994 (= c!915121 ((_ is EmptyExpr!14901) lt!2158076))))

(assert (=> d!1698994 (= lt!2158223 e!3282895)))

(declare-fun c!915120 () Bool)

(assert (=> d!1698994 (= c!915120 (isEmpty!32835 s!2326))))

(assert (=> d!1698994 (validRegex!6637 lt!2158076)))

(assert (=> d!1698994 (= (matchR!7086 lt!2158076 s!2326) lt!2158223)))

(declare-fun b!5279544 () Bool)

(assert (=> b!5279544 (= e!3282893 (= lt!2158223 call!375846))))

(declare-fun b!5279545 () Bool)

(declare-fun e!3282892 () Bool)

(assert (=> b!5279545 (= e!3282890 e!3282892)))

(declare-fun res!2239158 () Bool)

(assert (=> b!5279545 (=> res!2239158 e!3282892)))

(assert (=> b!5279545 (= res!2239158 call!375846)))

(declare-fun b!5279546 () Bool)

(declare-fun res!2239153 () Bool)

(assert (=> b!5279546 (=> res!2239153 e!3282891)))

(assert (=> b!5279546 (= res!2239153 (not ((_ is ElementMatch!14901) lt!2158076)))))

(assert (=> b!5279546 (= e!3282896 e!3282891)))

(declare-fun b!5279547 () Bool)

(declare-fun res!2239157 () Bool)

(assert (=> b!5279547 (=> (not res!2239157) (not e!3282894))))

(assert (=> b!5279547 (= res!2239157 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun b!5279548 () Bool)

(assert (=> b!5279548 (= e!3282893 e!3282896)))

(declare-fun c!915119 () Bool)

(assert (=> b!5279548 (= c!915119 ((_ is EmptyLang!14901) lt!2158076))))

(declare-fun b!5279549 () Bool)

(assert (=> b!5279549 (= e!3282892 (not (= (head!11314 s!2326) (c!914851 lt!2158076))))))

(declare-fun b!5279550 () Bool)

(declare-fun res!2239160 () Bool)

(assert (=> b!5279550 (=> res!2239160 e!3282892)))

(assert (=> b!5279550 (= res!2239160 (not (isEmpty!32835 (tail!10411 s!2326))))))

(assert (= (and d!1698994 c!915120) b!5279538))

(assert (= (and d!1698994 (not c!915120)) b!5279539))

(assert (= (and d!1698994 c!915121) b!5279544))

(assert (= (and d!1698994 (not c!915121)) b!5279548))

(assert (= (and b!5279548 c!915119) b!5279540))

(assert (= (and b!5279548 (not c!915119)) b!5279546))

(assert (= (and b!5279546 (not res!2239153)) b!5279542))

(assert (= (and b!5279542 res!2239159) b!5279537))

(assert (= (and b!5279537 res!2239155) b!5279547))

(assert (= (and b!5279547 res!2239157) b!5279543))

(assert (= (and b!5279542 (not res!2239156)) b!5279541))

(assert (= (and b!5279541 res!2239154) b!5279545))

(assert (= (and b!5279545 (not res!2239158)) b!5279550))

(assert (= (and b!5279550 (not res!2239160)) b!5279549))

(assert (= (or b!5279544 b!5279537 b!5279545) bm!375841))

(assert (=> b!5279539 m!6317332))

(assert (=> b!5279539 m!6317332))

(declare-fun m!6317514 () Bool)

(assert (=> b!5279539 m!6317514))

(assert (=> b!5279539 m!6317336))

(assert (=> b!5279539 m!6317514))

(assert (=> b!5279539 m!6317336))

(declare-fun m!6317516 () Bool)

(assert (=> b!5279539 m!6317516))

(assert (=> d!1698994 m!6317326))

(declare-fun m!6317518 () Bool)

(assert (=> d!1698994 m!6317518))

(assert (=> bm!375841 m!6317326))

(declare-fun m!6317520 () Bool)

(assert (=> b!5279538 m!6317520))

(assert (=> b!5279549 m!6317332))

(assert (=> b!5279543 m!6317332))

(assert (=> b!5279550 m!6317336))

(assert (=> b!5279550 m!6317336))

(assert (=> b!5279550 m!6317342))

(assert (=> b!5279547 m!6317336))

(assert (=> b!5279547 m!6317336))

(assert (=> b!5279547 m!6317342))

(assert (=> b!5278732 d!1698994))

(declare-fun d!1698996 () Bool)

(assert (=> d!1698996 (= (matchR!7086 lt!2158076 s!2326) (matchZipper!1145 lt!2158064 s!2326))))

(declare-fun lt!2158226 () Unit!153122)

(declare-fun choose!39399 ((InoxSet Context!8570) List!61004 Regex!14901 List!61002) Unit!153122)

(assert (=> d!1698996 (= lt!2158226 (choose!39399 lt!2158064 lt!2158083 lt!2158076 s!2326))))

(assert (=> d!1698996 (validRegex!6637 lt!2158076)))

(assert (=> d!1698996 (= (theoremZipperRegexEquiv!311 lt!2158064 lt!2158083 lt!2158076 s!2326) lt!2158226)))

(declare-fun bs!1223372 () Bool)

(assert (= bs!1223372 d!1698996))

(assert (=> bs!1223372 m!6316848))

(assert (=> bs!1223372 m!6316846))

(declare-fun m!6317522 () Bool)

(assert (=> bs!1223372 m!6317522))

(assert (=> bs!1223372 m!6317518))

(assert (=> b!5278732 d!1698996))

(declare-fun bs!1223373 () Bool)

(declare-fun d!1698998 () Bool)

(assert (= bs!1223373 (and d!1698998 b!5278732)))

(declare-fun lambda!266639 () Int)

(assert (=> bs!1223373 (= lambda!266639 lambda!266559)))

(declare-fun bs!1223374 () Bool)

(assert (= bs!1223374 (and d!1698998 d!1698954)))

(assert (=> bs!1223374 (= lambda!266639 lambda!266631)))

(declare-fun bs!1223375 () Bool)

(assert (= bs!1223375 (and d!1698998 d!1698952)))

(assert (=> bs!1223375 (= lambda!266639 lambda!266628)))

(declare-fun bs!1223376 () Bool)

(assert (= bs!1223376 (and d!1698998 d!1698990)))

(assert (=> bs!1223376 (= lambda!266639 lambda!266638)))

(declare-fun bs!1223377 () Bool)

(assert (= bs!1223377 (and d!1698998 d!1698956)))

(assert (=> bs!1223377 (= lambda!266639 lambda!266634)))

(declare-fun b!5279551 () Bool)

(declare-fun e!3282899 () Bool)

(declare-fun lt!2158227 () Regex!14901)

(assert (=> b!5279551 (= e!3282899 (isConcat!356 lt!2158227))))

(declare-fun b!5279552 () Bool)

(declare-fun e!3282897 () Regex!14901)

(declare-fun e!3282900 () Regex!14901)

(assert (=> b!5279552 (= e!3282897 e!3282900)))

(declare-fun c!915123 () Bool)

(assert (=> b!5279552 (= c!915123 ((_ is Cons!60879) lt!2158092))))

(declare-fun b!5279553 () Bool)

(assert (=> b!5279553 (= e!3282900 (Concat!23746 (h!67327 lt!2158092) (generalisedConcat!570 (t!374204 lt!2158092))))))

(declare-fun e!3282901 () Bool)

(assert (=> d!1698998 e!3282901))

(declare-fun res!2239162 () Bool)

(assert (=> d!1698998 (=> (not res!2239162) (not e!3282901))))

(assert (=> d!1698998 (= res!2239162 (validRegex!6637 lt!2158227))))

(assert (=> d!1698998 (= lt!2158227 e!3282897)))

(declare-fun c!915124 () Bool)

(declare-fun e!3282902 () Bool)

(assert (=> d!1698998 (= c!915124 e!3282902)))

(declare-fun res!2239161 () Bool)

(assert (=> d!1698998 (=> (not res!2239161) (not e!3282902))))

(assert (=> d!1698998 (= res!2239161 ((_ is Cons!60879) lt!2158092))))

(assert (=> d!1698998 (forall!14309 lt!2158092 lambda!266639)))

(assert (=> d!1698998 (= (generalisedConcat!570 lt!2158092) lt!2158227)))

(declare-fun b!5279554 () Bool)

(declare-fun e!3282898 () Bool)

(assert (=> b!5279554 (= e!3282901 e!3282898)))

(declare-fun c!915122 () Bool)

(assert (=> b!5279554 (= c!915122 (isEmpty!32831 lt!2158092))))

(declare-fun b!5279555 () Bool)

(assert (=> b!5279555 (= e!3282898 (isEmptyExpr!833 lt!2158227))))

(declare-fun b!5279556 () Bool)

(assert (=> b!5279556 (= e!3282900 EmptyExpr!14901)))

(declare-fun b!5279557 () Bool)

(assert (=> b!5279557 (= e!3282899 (= lt!2158227 (head!11315 lt!2158092)))))

(declare-fun b!5279558 () Bool)

(assert (=> b!5279558 (= e!3282898 e!3282899)))

(declare-fun c!915125 () Bool)

(assert (=> b!5279558 (= c!915125 (isEmpty!32831 (tail!10412 lt!2158092)))))

(declare-fun b!5279559 () Bool)

(assert (=> b!5279559 (= e!3282902 (isEmpty!32831 (t!374204 lt!2158092)))))

(declare-fun b!5279560 () Bool)

(assert (=> b!5279560 (= e!3282897 (h!67327 lt!2158092))))

(assert (= (and d!1698998 res!2239161) b!5279559))

(assert (= (and d!1698998 c!915124) b!5279560))

(assert (= (and d!1698998 (not c!915124)) b!5279552))

(assert (= (and b!5279552 c!915123) b!5279553))

(assert (= (and b!5279552 (not c!915123)) b!5279556))

(assert (= (and d!1698998 res!2239162) b!5279554))

(assert (= (and b!5279554 c!915122) b!5279555))

(assert (= (and b!5279554 (not c!915122)) b!5279558))

(assert (= (and b!5279558 c!915125) b!5279557))

(assert (= (and b!5279558 (not c!915125)) b!5279551))

(declare-fun m!6317524 () Bool)

(assert (=> b!5279553 m!6317524))

(declare-fun m!6317526 () Bool)

(assert (=> b!5279558 m!6317526))

(assert (=> b!5279558 m!6317526))

(declare-fun m!6317528 () Bool)

(assert (=> b!5279558 m!6317528))

(declare-fun m!6317530 () Bool)

(assert (=> d!1698998 m!6317530))

(declare-fun m!6317532 () Bool)

(assert (=> d!1698998 m!6317532))

(declare-fun m!6317534 () Bool)

(assert (=> b!5279559 m!6317534))

(declare-fun m!6317536 () Bool)

(assert (=> b!5279555 m!6317536))

(declare-fun m!6317538 () Bool)

(assert (=> b!5279557 m!6317538))

(declare-fun m!6317540 () Bool)

(assert (=> b!5279554 m!6317540))

(declare-fun m!6317542 () Bool)

(assert (=> b!5279551 m!6317542))

(assert (=> b!5278732 d!1698998))

(declare-fun d!1699000 () Bool)

(declare-fun res!2239167 () Bool)

(declare-fun e!3282907 () Bool)

(assert (=> d!1699000 (=> res!2239167 e!3282907)))

(assert (=> d!1699000 (= res!2239167 ((_ is Nil!60879) lt!2158065))))

(assert (=> d!1699000 (= (forall!14309 lt!2158065 lambda!266559) e!3282907)))

(declare-fun b!5279565 () Bool)

(declare-fun e!3282908 () Bool)

(assert (=> b!5279565 (= e!3282907 e!3282908)))

(declare-fun res!2239168 () Bool)

(assert (=> b!5279565 (=> (not res!2239168) (not e!3282908))))

(declare-fun dynLambda!24067 (Int Regex!14901) Bool)

(assert (=> b!5279565 (= res!2239168 (dynLambda!24067 lambda!266559 (h!67327 lt!2158065)))))

(declare-fun b!5279566 () Bool)

(assert (=> b!5279566 (= e!3282908 (forall!14309 (t!374204 lt!2158065) lambda!266559))))

(assert (= (and d!1699000 (not res!2239167)) b!5279565))

(assert (= (and b!5279565 res!2239168) b!5279566))

(declare-fun b_lambda!203667 () Bool)

(assert (=> (not b_lambda!203667) (not b!5279565)))

(declare-fun m!6317544 () Bool)

(assert (=> b!5279565 m!6317544))

(declare-fun m!6317546 () Bool)

(assert (=> b!5279566 m!6317546))

(assert (=> b!5278732 d!1699000))

(declare-fun bs!1223378 () Bool)

(declare-fun d!1699002 () Bool)

(assert (= bs!1223378 (and d!1699002 b!5278732)))

(declare-fun lambda!266640 () Int)

(assert (=> bs!1223378 (= lambda!266640 lambda!266559)))

(declare-fun bs!1223379 () Bool)

(assert (= bs!1223379 (and d!1699002 d!1698954)))

(assert (=> bs!1223379 (= lambda!266640 lambda!266631)))

(declare-fun bs!1223380 () Bool)

(assert (= bs!1223380 (and d!1699002 d!1698952)))

(assert (=> bs!1223380 (= lambda!266640 lambda!266628)))

(declare-fun bs!1223381 () Bool)

(assert (= bs!1223381 (and d!1699002 d!1698998)))

(assert (=> bs!1223381 (= lambda!266640 lambda!266639)))

(declare-fun bs!1223382 () Bool)

(assert (= bs!1223382 (and d!1699002 d!1698990)))

(assert (=> bs!1223382 (= lambda!266640 lambda!266638)))

(declare-fun bs!1223383 () Bool)

(assert (= bs!1223383 (and d!1699002 d!1698956)))

(assert (=> bs!1223383 (= lambda!266640 lambda!266634)))

(assert (=> d!1699002 (= (inv!80499 setElem!33827) (forall!14309 (exprs!4785 setElem!33827) lambda!266640))))

(declare-fun bs!1223384 () Bool)

(assert (= bs!1223384 d!1699002))

(declare-fun m!6317548 () Bool)

(assert (=> bs!1223384 m!6317548))

(assert (=> setNonEmpty!33827 d!1699002))

(declare-fun d!1699004 () Bool)

(declare-fun choose!39400 (Int) Bool)

(assert (=> d!1699004 (= (Exists!2082 lambda!266557) (choose!39400 lambda!266557))))

(declare-fun bs!1223385 () Bool)

(assert (= bs!1223385 d!1699004))

(declare-fun m!6317550 () Bool)

(assert (=> bs!1223385 m!6317550))

(assert (=> b!5278712 d!1699004))

(declare-fun b!5279585 () Bool)

(declare-fun e!3282922 () Option!15012)

(declare-fun e!3282921 () Option!15012)

(assert (=> b!5279585 (= e!3282922 e!3282921)))

(declare-fun c!915131 () Bool)

(assert (=> b!5279585 (= c!915131 ((_ is Nil!60878) s!2326))))

(declare-fun b!5279586 () Bool)

(assert (=> b!5279586 (= e!3282921 None!15011)))

(declare-fun b!5279587 () Bool)

(declare-fun e!3282920 () Bool)

(declare-fun lt!2158236 () Option!15012)

(declare-fun ++!13278 (List!61002 List!61002) List!61002)

(declare-fun get!20934 (Option!15012) tuple2!64200)

(assert (=> b!5279587 (= e!3282920 (= (++!13278 (_1!35403 (get!20934 lt!2158236)) (_2!35403 (get!20934 lt!2158236))) s!2326))))

(declare-fun b!5279588 () Bool)

(assert (=> b!5279588 (= e!3282922 (Some!15011 (tuple2!64201 Nil!60878 s!2326)))))

(declare-fun b!5279590 () Bool)

(declare-fun e!3282919 () Bool)

(assert (=> b!5279590 (= e!3282919 (not (isDefined!11715 lt!2158236)))))

(declare-fun b!5279591 () Bool)

(declare-fun e!3282923 () Bool)

(assert (=> b!5279591 (= e!3282923 (matchR!7086 (regTwo!30314 r!7292) s!2326))))

(declare-fun b!5279589 () Bool)

(declare-fun lt!2158234 () Unit!153122)

(declare-fun lt!2158235 () Unit!153122)

(assert (=> b!5279589 (= lt!2158234 lt!2158235)))

(assert (=> b!5279589 (= (++!13278 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1693 (List!61002 C!30072 List!61002 List!61002) Unit!153122)

(assert (=> b!5279589 (= lt!2158235 (lemmaMoveElementToOtherListKeepsConcatEq!1693 Nil!60878 (h!67326 s!2326) (t!374203 s!2326) s!2326))))

(assert (=> b!5279589 (= e!3282921 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326) s!2326))))

(declare-fun d!1699006 () Bool)

(assert (=> d!1699006 e!3282919))

(declare-fun res!2239181 () Bool)

(assert (=> d!1699006 (=> res!2239181 e!3282919)))

(assert (=> d!1699006 (= res!2239181 e!3282920)))

(declare-fun res!2239180 () Bool)

(assert (=> d!1699006 (=> (not res!2239180) (not e!3282920))))

(assert (=> d!1699006 (= res!2239180 (isDefined!11715 lt!2158236))))

(assert (=> d!1699006 (= lt!2158236 e!3282922)))

(declare-fun c!915130 () Bool)

(assert (=> d!1699006 (= c!915130 e!3282923)))

(declare-fun res!2239179 () Bool)

(assert (=> d!1699006 (=> (not res!2239179) (not e!3282923))))

(assert (=> d!1699006 (= res!2239179 (matchR!7086 (regOne!30314 r!7292) Nil!60878))))

(assert (=> d!1699006 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699006 (= (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326) lt!2158236)))

(declare-fun b!5279592 () Bool)

(declare-fun res!2239183 () Bool)

(assert (=> b!5279592 (=> (not res!2239183) (not e!3282920))))

(assert (=> b!5279592 (= res!2239183 (matchR!7086 (regTwo!30314 r!7292) (_2!35403 (get!20934 lt!2158236))))))

(declare-fun b!5279593 () Bool)

(declare-fun res!2239182 () Bool)

(assert (=> b!5279593 (=> (not res!2239182) (not e!3282920))))

(assert (=> b!5279593 (= res!2239182 (matchR!7086 (regOne!30314 r!7292) (_1!35403 (get!20934 lt!2158236))))))

(assert (= (and d!1699006 res!2239179) b!5279591))

(assert (= (and d!1699006 c!915130) b!5279588))

(assert (= (and d!1699006 (not c!915130)) b!5279585))

(assert (= (and b!5279585 c!915131) b!5279586))

(assert (= (and b!5279585 (not c!915131)) b!5279589))

(assert (= (and d!1699006 res!2239180) b!5279593))

(assert (= (and b!5279593 res!2239182) b!5279592))

(assert (= (and b!5279592 res!2239183) b!5279587))

(assert (= (and d!1699006 (not res!2239181)) b!5279590))

(declare-fun m!6317552 () Bool)

(assert (=> b!5279587 m!6317552))

(declare-fun m!6317554 () Bool)

(assert (=> b!5279587 m!6317554))

(assert (=> b!5279592 m!6317552))

(declare-fun m!6317556 () Bool)

(assert (=> b!5279592 m!6317556))

(declare-fun m!6317558 () Bool)

(assert (=> b!5279590 m!6317558))

(declare-fun m!6317560 () Bool)

(assert (=> b!5279591 m!6317560))

(declare-fun m!6317562 () Bool)

(assert (=> b!5279589 m!6317562))

(assert (=> b!5279589 m!6317562))

(declare-fun m!6317564 () Bool)

(assert (=> b!5279589 m!6317564))

(declare-fun m!6317566 () Bool)

(assert (=> b!5279589 m!6317566))

(assert (=> b!5279589 m!6317562))

(declare-fun m!6317568 () Bool)

(assert (=> b!5279589 m!6317568))

(assert (=> d!1699006 m!6317558))

(declare-fun m!6317570 () Bool)

(assert (=> d!1699006 m!6317570))

(declare-fun m!6317572 () Bool)

(assert (=> d!1699006 m!6317572))

(assert (=> b!5279593 m!6317552))

(declare-fun m!6317574 () Bool)

(assert (=> b!5279593 m!6317574))

(assert (=> b!5278712 d!1699006))

(declare-fun d!1699008 () Bool)

(assert (=> d!1699008 (= (Exists!2082 lambda!266556) (choose!39400 lambda!266556))))

(declare-fun bs!1223386 () Bool)

(assert (= bs!1223386 d!1699008))

(declare-fun m!6317576 () Bool)

(assert (=> bs!1223386 m!6317576))

(assert (=> b!5278712 d!1699008))

(declare-fun bs!1223387 () Bool)

(declare-fun d!1699010 () Bool)

(assert (= bs!1223387 (and d!1699010 b!5278712)))

(declare-fun lambda!266643 () Int)

(assert (=> bs!1223387 (= lambda!266643 lambda!266556)))

(assert (=> bs!1223387 (not (= lambda!266643 lambda!266557))))

(declare-fun bs!1223388 () Bool)

(assert (= bs!1223388 (and d!1699010 b!5279351)))

(assert (=> bs!1223388 (not (= lambda!266643 lambda!266621))))

(declare-fun bs!1223389 () Bool)

(assert (= bs!1223389 (and d!1699010 b!5279352)))

(assert (=> bs!1223389 (not (= lambda!266643 lambda!266622))))

(assert (=> d!1699010 true))

(assert (=> d!1699010 true))

(assert (=> d!1699010 true))

(assert (=> d!1699010 (= (isDefined!11715 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326)) (Exists!2082 lambda!266643))))

(declare-fun lt!2158239 () Unit!153122)

(declare-fun choose!39401 (Regex!14901 Regex!14901 List!61002) Unit!153122)

(assert (=> d!1699010 (= lt!2158239 (choose!39401 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326))))

(assert (=> d!1699010 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699010 (= (lemmaFindConcatSeparationEquivalentToExists!1190 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326) lt!2158239)))

(declare-fun bs!1223390 () Bool)

(assert (= bs!1223390 d!1699010))

(assert (=> bs!1223390 m!6316832))

(assert (=> bs!1223390 m!6316834))

(declare-fun m!6317578 () Bool)

(assert (=> bs!1223390 m!6317578))

(assert (=> bs!1223390 m!6317572))

(assert (=> bs!1223390 m!6316832))

(declare-fun m!6317580 () Bool)

(assert (=> bs!1223390 m!6317580))

(assert (=> b!5278712 d!1699010))

(declare-fun bs!1223391 () Bool)

(declare-fun d!1699012 () Bool)

(assert (= bs!1223391 (and d!1699012 b!5278712)))

(declare-fun lambda!266648 () Int)

(assert (=> bs!1223391 (not (= lambda!266648 lambda!266557))))

(declare-fun bs!1223392 () Bool)

(assert (= bs!1223392 (and d!1699012 b!5279352)))

(assert (=> bs!1223392 (not (= lambda!266648 lambda!266622))))

(assert (=> bs!1223391 (= lambda!266648 lambda!266556)))

(declare-fun bs!1223393 () Bool)

(assert (= bs!1223393 (and d!1699012 d!1699010)))

(assert (=> bs!1223393 (= lambda!266648 lambda!266643)))

(declare-fun bs!1223394 () Bool)

(assert (= bs!1223394 (and d!1699012 b!5279351)))

(assert (=> bs!1223394 (not (= lambda!266648 lambda!266621))))

(assert (=> d!1699012 true))

(assert (=> d!1699012 true))

(assert (=> d!1699012 true))

(declare-fun bs!1223395 () Bool)

(assert (= bs!1223395 d!1699012))

(declare-fun lambda!266649 () Int)

(assert (=> bs!1223395 (not (= lambda!266649 lambda!266648))))

(assert (=> bs!1223391 (= lambda!266649 lambda!266557)))

(assert (=> bs!1223392 (= lambda!266649 lambda!266622)))

(assert (=> bs!1223391 (not (= lambda!266649 lambda!266556))))

(assert (=> bs!1223393 (not (= lambda!266649 lambda!266643))))

(assert (=> bs!1223394 (not (= lambda!266649 lambda!266621))))

(assert (=> d!1699012 true))

(assert (=> d!1699012 true))

(assert (=> d!1699012 true))

(assert (=> d!1699012 (= (Exists!2082 lambda!266648) (Exists!2082 lambda!266649))))

(declare-fun lt!2158242 () Unit!153122)

(declare-fun choose!39402 (Regex!14901 Regex!14901 List!61002) Unit!153122)

(assert (=> d!1699012 (= lt!2158242 (choose!39402 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326))))

(assert (=> d!1699012 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699012 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!736 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326) lt!2158242)))

(declare-fun m!6317582 () Bool)

(assert (=> bs!1223395 m!6317582))

(declare-fun m!6317584 () Bool)

(assert (=> bs!1223395 m!6317584))

(declare-fun m!6317586 () Bool)

(assert (=> bs!1223395 m!6317586))

(assert (=> bs!1223395 m!6317572))

(assert (=> b!5278712 d!1699012))

(declare-fun d!1699014 () Bool)

(declare-fun isEmpty!32836 (Option!15012) Bool)

(assert (=> d!1699014 (= (isDefined!11715 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326)) (not (isEmpty!32836 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326))))))

(declare-fun bs!1223396 () Bool)

(assert (= bs!1223396 d!1699014))

(assert (=> bs!1223396 m!6316832))

(declare-fun m!6317588 () Bool)

(assert (=> bs!1223396 m!6317588))

(assert (=> b!5278712 d!1699014))

(assert (=> b!5278733 d!1698898))

(declare-fun d!1699016 () Bool)

(assert (=> d!1699016 (= (isEmpty!32831 (t!374204 (exprs!4785 (h!67328 zl!343)))) ((_ is Nil!60879) (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5278714 d!1699016))

(declare-fun b!5279618 () Bool)

(declare-fun e!3282932 () Bool)

(declare-fun tp!1474984 () Bool)

(assert (=> b!5279618 (= e!3282932 tp!1474984)))

(assert (=> b!5278710 (= tp!1474905 e!3282932)))

(declare-fun b!5279619 () Bool)

(declare-fun tp!1474983 () Bool)

(declare-fun tp!1474986 () Bool)

(assert (=> b!5279619 (= e!3282932 (and tp!1474983 tp!1474986))))

(declare-fun b!5279616 () Bool)

(assert (=> b!5279616 (= e!3282932 tp_is_empty!39055)))

(declare-fun b!5279617 () Bool)

(declare-fun tp!1474982 () Bool)

(declare-fun tp!1474985 () Bool)

(assert (=> b!5279617 (= e!3282932 (and tp!1474982 tp!1474985))))

(assert (= (and b!5278710 ((_ is ElementMatch!14901) (regOne!30315 r!7292))) b!5279616))

(assert (= (and b!5278710 ((_ is Concat!23746) (regOne!30315 r!7292))) b!5279617))

(assert (= (and b!5278710 ((_ is Star!14901) (regOne!30315 r!7292))) b!5279618))

(assert (= (and b!5278710 ((_ is Union!14901) (regOne!30315 r!7292))) b!5279619))

(declare-fun b!5279622 () Bool)

(declare-fun e!3282933 () Bool)

(declare-fun tp!1474989 () Bool)

(assert (=> b!5279622 (= e!3282933 tp!1474989)))

(assert (=> b!5278710 (= tp!1474907 e!3282933)))

(declare-fun b!5279623 () Bool)

(declare-fun tp!1474988 () Bool)

(declare-fun tp!1474991 () Bool)

(assert (=> b!5279623 (= e!3282933 (and tp!1474988 tp!1474991))))

(declare-fun b!5279620 () Bool)

(assert (=> b!5279620 (= e!3282933 tp_is_empty!39055)))

(declare-fun b!5279621 () Bool)

(declare-fun tp!1474987 () Bool)

(declare-fun tp!1474990 () Bool)

(assert (=> b!5279621 (= e!3282933 (and tp!1474987 tp!1474990))))

(assert (= (and b!5278710 ((_ is ElementMatch!14901) (regTwo!30315 r!7292))) b!5279620))

(assert (= (and b!5278710 ((_ is Concat!23746) (regTwo!30315 r!7292))) b!5279621))

(assert (= (and b!5278710 ((_ is Star!14901) (regTwo!30315 r!7292))) b!5279622))

(assert (= (and b!5278710 ((_ is Union!14901) (regTwo!30315 r!7292))) b!5279623))

(declare-fun b!5279628 () Bool)

(declare-fun e!3282936 () Bool)

(declare-fun tp!1474996 () Bool)

(declare-fun tp!1474997 () Bool)

(assert (=> b!5279628 (= e!3282936 (and tp!1474996 tp!1474997))))

(assert (=> b!5278739 (= tp!1474912 e!3282936)))

(assert (= (and b!5278739 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343)))) b!5279628))

(declare-fun b!5279629 () Bool)

(declare-fun e!3282937 () Bool)

(declare-fun tp!1474998 () Bool)

(declare-fun tp!1474999 () Bool)

(assert (=> b!5279629 (= e!3282937 (and tp!1474998 tp!1474999))))

(assert (=> b!5278726 (= tp!1474910 e!3282937)))

(assert (= (and b!5278726 ((_ is Cons!60879) (exprs!4785 setElem!33827))) b!5279629))

(declare-fun b!5279634 () Bool)

(declare-fun e!3282940 () Bool)

(declare-fun tp!1475002 () Bool)

(assert (=> b!5279634 (= e!3282940 (and tp_is_empty!39055 tp!1475002))))

(assert (=> b!5278706 (= tp!1474904 e!3282940)))

(assert (= (and b!5278706 ((_ is Cons!60878) (t!374203 s!2326))) b!5279634))

(declare-fun b!5279637 () Bool)

(declare-fun e!3282941 () Bool)

(declare-fun tp!1475005 () Bool)

(assert (=> b!5279637 (= e!3282941 tp!1475005)))

(assert (=> b!5278705 (= tp!1474906 e!3282941)))

(declare-fun b!5279638 () Bool)

(declare-fun tp!1475004 () Bool)

(declare-fun tp!1475007 () Bool)

(assert (=> b!5279638 (= e!3282941 (and tp!1475004 tp!1475007))))

(declare-fun b!5279635 () Bool)

(assert (=> b!5279635 (= e!3282941 tp_is_empty!39055)))

(declare-fun b!5279636 () Bool)

(declare-fun tp!1475003 () Bool)

(declare-fun tp!1475006 () Bool)

(assert (=> b!5279636 (= e!3282941 (and tp!1475003 tp!1475006))))

(assert (= (and b!5278705 ((_ is ElementMatch!14901) (reg!15230 r!7292))) b!5279635))

(assert (= (and b!5278705 ((_ is Concat!23746) (reg!15230 r!7292))) b!5279636))

(assert (= (and b!5278705 ((_ is Star!14901) (reg!15230 r!7292))) b!5279637))

(assert (= (and b!5278705 ((_ is Union!14901) (reg!15230 r!7292))) b!5279638))

(declare-fun b!5279646 () Bool)

(declare-fun e!3282947 () Bool)

(declare-fun tp!1475012 () Bool)

(assert (=> b!5279646 (= e!3282947 tp!1475012)))

(declare-fun tp!1475013 () Bool)

(declare-fun e!3282946 () Bool)

(declare-fun b!5279645 () Bool)

(assert (=> b!5279645 (= e!3282946 (and (inv!80499 (h!67328 (t!374205 zl!343))) e!3282947 tp!1475013))))

(assert (=> b!5278716 (= tp!1474908 e!3282946)))

(assert (= b!5279645 b!5279646))

(assert (= (and b!5278716 ((_ is Cons!60880) (t!374205 zl!343))) b!5279645))

(declare-fun m!6317590 () Bool)

(assert (=> b!5279645 m!6317590))

(declare-fun condSetEmpty!33833 () Bool)

(assert (=> setNonEmpty!33827 (= condSetEmpty!33833 (= setRest!33827 ((as const (Array Context!8570 Bool)) false)))))

(declare-fun setRes!33833 () Bool)

(assert (=> setNonEmpty!33827 (= tp!1474909 setRes!33833)))

(declare-fun setIsEmpty!33833 () Bool)

(assert (=> setIsEmpty!33833 setRes!33833))

(declare-fun tp!1475019 () Bool)

(declare-fun setElem!33833 () Context!8570)

(declare-fun e!3282950 () Bool)

(declare-fun setNonEmpty!33833 () Bool)

(assert (=> setNonEmpty!33833 (= setRes!33833 (and tp!1475019 (inv!80499 setElem!33833) e!3282950))))

(declare-fun setRest!33833 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33833 (= setRest!33827 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33833 true) setRest!33833))))

(declare-fun b!5279651 () Bool)

(declare-fun tp!1475018 () Bool)

(assert (=> b!5279651 (= e!3282950 tp!1475018)))

(assert (= (and setNonEmpty!33827 condSetEmpty!33833) setIsEmpty!33833))

(assert (= (and setNonEmpty!33827 (not condSetEmpty!33833)) setNonEmpty!33833))

(assert (= setNonEmpty!33833 b!5279651))

(declare-fun m!6317592 () Bool)

(assert (=> setNonEmpty!33833 m!6317592))

(declare-fun b!5279654 () Bool)

(declare-fun e!3282951 () Bool)

(declare-fun tp!1475022 () Bool)

(assert (=> b!5279654 (= e!3282951 tp!1475022)))

(assert (=> b!5278713 (= tp!1474913 e!3282951)))

(declare-fun b!5279655 () Bool)

(declare-fun tp!1475021 () Bool)

(declare-fun tp!1475024 () Bool)

(assert (=> b!5279655 (= e!3282951 (and tp!1475021 tp!1475024))))

(declare-fun b!5279652 () Bool)

(assert (=> b!5279652 (= e!3282951 tp_is_empty!39055)))

(declare-fun b!5279653 () Bool)

(declare-fun tp!1475020 () Bool)

(declare-fun tp!1475023 () Bool)

(assert (=> b!5279653 (= e!3282951 (and tp!1475020 tp!1475023))))

(assert (= (and b!5278713 ((_ is ElementMatch!14901) (regOne!30314 r!7292))) b!5279652))

(assert (= (and b!5278713 ((_ is Concat!23746) (regOne!30314 r!7292))) b!5279653))

(assert (= (and b!5278713 ((_ is Star!14901) (regOne!30314 r!7292))) b!5279654))

(assert (= (and b!5278713 ((_ is Union!14901) (regOne!30314 r!7292))) b!5279655))

(declare-fun b!5279658 () Bool)

(declare-fun e!3282952 () Bool)

(declare-fun tp!1475027 () Bool)

(assert (=> b!5279658 (= e!3282952 tp!1475027)))

(assert (=> b!5278713 (= tp!1474911 e!3282952)))

(declare-fun b!5279659 () Bool)

(declare-fun tp!1475026 () Bool)

(declare-fun tp!1475029 () Bool)

(assert (=> b!5279659 (= e!3282952 (and tp!1475026 tp!1475029))))

(declare-fun b!5279656 () Bool)

(assert (=> b!5279656 (= e!3282952 tp_is_empty!39055)))

(declare-fun b!5279657 () Bool)

(declare-fun tp!1475025 () Bool)

(declare-fun tp!1475028 () Bool)

(assert (=> b!5279657 (= e!3282952 (and tp!1475025 tp!1475028))))

(assert (= (and b!5278713 ((_ is ElementMatch!14901) (regTwo!30314 r!7292))) b!5279656))

(assert (= (and b!5278713 ((_ is Concat!23746) (regTwo!30314 r!7292))) b!5279657))

(assert (= (and b!5278713 ((_ is Star!14901) (regTwo!30314 r!7292))) b!5279658))

(assert (= (and b!5278713 ((_ is Union!14901) (regTwo!30314 r!7292))) b!5279659))

(declare-fun b_lambda!203669 () Bool)

(assert (= b_lambda!203665 (or b!5278704 b_lambda!203669)))

(declare-fun bs!1223397 () Bool)

(declare-fun d!1699018 () Bool)

(assert (= bs!1223397 (and d!1699018 b!5278704)))

(assert (=> bs!1223397 (= (dynLambda!24066 lambda!266558 lt!2158060) (derivationStepZipperUp!273 lt!2158060 (h!67326 s!2326)))))

(assert (=> bs!1223397 m!6316770))

(assert (=> d!1698972 d!1699018))

(declare-fun b_lambda!203671 () Bool)

(assert (= b_lambda!203663 (or b!5278704 b_lambda!203671)))

(declare-fun bs!1223398 () Bool)

(declare-fun d!1699020 () Bool)

(assert (= bs!1223398 (and d!1699020 b!5278704)))

(assert (=> bs!1223398 (= (dynLambda!24066 lambda!266558 lt!2158063) (derivationStepZipperUp!273 lt!2158063 (h!67326 s!2326)))))

(assert (=> bs!1223398 m!6316768))

(assert (=> d!1698940 d!1699020))

(declare-fun b_lambda!203673 () Bool)

(assert (= b_lambda!203667 (or b!5278732 b_lambda!203673)))

(declare-fun bs!1223399 () Bool)

(declare-fun d!1699022 () Bool)

(assert (= bs!1223399 (and d!1699022 b!5278732)))

(assert (=> bs!1223399 (= (dynLambda!24067 lambda!266559 (h!67327 lt!2158065)) (validRegex!6637 (h!67327 lt!2158065)))))

(declare-fun m!6317594 () Bool)

(assert (=> bs!1223399 m!6317594))

(assert (=> b!5279565 d!1699022))

(declare-fun b_lambda!203675 () Bool)

(assert (= b_lambda!203661 (or b!5278704 b_lambda!203675)))

(declare-fun bs!1223400 () Bool)

(declare-fun d!1699024 () Bool)

(assert (= bs!1223400 (and d!1699024 b!5278704)))

(assert (=> bs!1223400 (= (dynLambda!24066 lambda!266558 (h!67328 zl!343)) (derivationStepZipperUp!273 (h!67328 zl!343) (h!67326 s!2326)))))

(assert (=> bs!1223400 m!6316818))

(assert (=> d!1698908 d!1699024))

(check-sat (not b!5279505) (not d!1698948) (not b!5279637) (not b!5279558) (not b!5279589) (not b!5279245) (not b!5279550) (not setNonEmpty!33833) (not bs!1223399) (not bm!375827) (not b!5279628) (not b!5279507) (not b!5279349) (not d!1698898) (not b!5279658) (not b!5279444) (not b!5279536) (not bm!375835) (not b!5279385) (not b!5279306) (not b_lambda!203673) (not d!1698930) (not d!1698994) (not b!5279618) (not bm!375841) (not bm!375829) (not b!5279408) (not bm!375806) (not b!5279396) (not b!5279587) (not d!1699014) (not b!5279449) (not b!5279557) (not b!5279484) (not d!1698952) (not d!1698944) (not b!5279559) (not b!5279547) (not d!1698908) (not bm!375838) (not b!5279386) (not b!5279220) (not b_lambda!203671) (not b!5279419) (not d!1699008) (not b!5279458) (not b!5279636) (not d!1698978) (not b!5279347) (not d!1698992) (not b!5279553) (not bs!1223397) (not b!5279657) (not b!5279480) (not b!5279530) (not b!5279555) (not b!5279621) (not bs!1223398) (not bm!375828) (not b!5279534) (not d!1698900) (not d!1698932) tp_is_empty!39055 (not d!1698988) (not b!5279646) (not bm!375823) (not b!5279242) (not b!5279207) (not d!1698942) (not bm!375803) (not bm!375817) (not b!5279209) (not d!1699006) (not b!5279591) (not b!5279416) (not d!1698926) (not b!5279622) (not d!1698968) (not b!5279539) (not b!5279397) (not b!5279482) (not b!5279252) (not b!5279452) (not bm!375788) (not b!5279422) (not b!5279412) (not b!5279538) (not b!5279533) (not d!1698896) (not b!5279498) (not b!5279446) (not b!5279494) (not b!5279638) (not bm!375804) (not b!5279512) (not b!5279523) (not d!1698956) (not b!5279502) (not b!5279619) (not d!1698940) (not d!1698910) (not bs!1223400) (not b!5279496) (not b!5279549) (not b!5279486) (not b!5279554) (not d!1699004) (not b!5279655) (not b!5279499) (not b!5279208) (not b!5279247) (not d!1698902) (not b_lambda!203675) (not b!5279501) (not b!5279488) (not b!5279399) (not b!5279410) (not b!5279535) (not d!1698966) (not b!5279447) (not d!1698928) (not b!5279487) (not b!5279531) (not b!5279645) (not b!5279240) (not b!5279398) (not bm!375836) (not d!1698916) (not b!5279394) (not d!1698998) (not d!1699002) (not d!1699012) (not bm!375830) (not d!1698972) (not b!5279629) (not b!5279413) (not b!5279213) (not b!5279421) (not bm!375832) (not b!5279532) (not b!5279500) (not b!5279279) (not d!1698984) (not b!5279543) (not b!5279222) (not b!5279592) (not b!5279551) (not b!5279445) (not d!1698996) (not b_lambda!203669) (not d!1698954) (not b!5279225) (not b!5279450) (not b!5279483) (not b!5279403) (not b!5279623) (not d!1698986) (not b!5279227) (not bm!375790) (not d!1698934) (not bm!375789) (not b!5279653) (not d!1698950) (not b!5279250) (not bm!375826) (not bm!375815) (not b!5279654) (not b!5279651) (not b!5279590) (not b!5279659) (not b!5279402) (not b!5279593) (not bm!375822) (not b!5279423) (not d!1698974) (not b!5279390) (not b!5279566) (not b!5279617) (not d!1698990) (not b!5279634) (not b!5279210) (not d!1699010) (not d!1698976) (not d!1698964))
(check-sat)
(get-model)

(declare-fun bs!1223915 () Bool)

(declare-fun d!1699400 () Bool)

(assert (= bs!1223915 (and d!1699400 b!5279220)))

(declare-fun lambda!266713 () Int)

(assert (=> bs!1223915 (not (= lambda!266713 lambda!266612))))

(declare-fun bs!1223916 () Bool)

(assert (= bs!1223916 (and d!1699400 b!5279222)))

(assert (=> bs!1223916 (not (= lambda!266713 lambda!266613))))

(declare-fun bs!1223917 () Bool)

(assert (= bs!1223917 (and d!1699400 b!5279225)))

(assert (=> bs!1223917 (not (= lambda!266713 lambda!266615))))

(declare-fun bs!1223918 () Bool)

(assert (= bs!1223918 (and d!1699400 b!5279227)))

(assert (=> bs!1223918 (not (= lambda!266713 lambda!266616))))

(declare-fun exists!2001 ((InoxSet Context!8570) Int) Bool)

(assert (=> d!1699400 (= (nullableZipper!1298 lt!2158068) (exists!2001 lt!2158068 lambda!266713))))

(declare-fun bs!1223919 () Bool)

(assert (= bs!1223919 d!1699400))

(declare-fun m!6318354 () Bool)

(assert (=> bs!1223919 m!6318354))

(assert (=> b!5279209 d!1699400))

(assert (=> b!5279250 d!1698910))

(declare-fun bs!1223920 () Bool)

(declare-fun d!1699402 () Bool)

(assert (= bs!1223920 (and d!1699402 d!1699400)))

(declare-fun lambda!266714 () Int)

(assert (=> bs!1223920 (= lambda!266714 lambda!266713)))

(declare-fun bs!1223921 () Bool)

(assert (= bs!1223921 (and d!1699402 b!5279222)))

(assert (=> bs!1223921 (not (= lambda!266714 lambda!266613))))

(declare-fun bs!1223922 () Bool)

(assert (= bs!1223922 (and d!1699402 b!5279220)))

(assert (=> bs!1223922 (not (= lambda!266714 lambda!266612))))

(declare-fun bs!1223923 () Bool)

(assert (= bs!1223923 (and d!1699402 b!5279227)))

(assert (=> bs!1223923 (not (= lambda!266714 lambda!266616))))

(declare-fun bs!1223924 () Bool)

(assert (= bs!1223924 (and d!1699402 b!5279225)))

(assert (=> bs!1223924 (not (= lambda!266714 lambda!266615))))

(assert (=> d!1699402 (= (nullableZipper!1298 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326))) (exists!2001 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) lambda!266714))))

(declare-fun bs!1223925 () Bool)

(assert (= bs!1223925 d!1699402))

(assert (=> bs!1223925 m!6316864))

(declare-fun m!6318356 () Bool)

(assert (=> bs!1223925 m!6318356))

(assert (=> b!5279398 d!1699402))

(declare-fun d!1699404 () Bool)

(assert (=> d!1699404 (= (isConcat!356 lt!2158227) ((_ is Concat!23746) lt!2158227))))

(assert (=> b!5279551 d!1699404))

(assert (=> d!1698972 d!1698974))

(declare-fun d!1699406 () Bool)

(assert (=> d!1699406 (= (flatMap!628 lt!2158064 lambda!266558) (dynLambda!24066 lambda!266558 lt!2158060))))

(assert (=> d!1699406 true))

(declare-fun _$13!1858 () Unit!153122)

(assert (=> d!1699406 (= (choose!39395 lt!2158064 lt!2158060 lambda!266558) _$13!1858)))

(declare-fun b_lambda!203733 () Bool)

(assert (=> (not b_lambda!203733) (not d!1699406)))

(declare-fun bs!1223926 () Bool)

(assert (= bs!1223926 d!1699406))

(assert (=> bs!1223926 m!6316764))

(assert (=> bs!1223926 m!6317464))

(assert (=> d!1698972 d!1699406))

(declare-fun d!1699408 () Bool)

(assert (=> d!1699408 (= (isEmpty!32831 (t!374204 (unfocusZipperList!343 zl!343))) ((_ is Nil!60879) (t!374204 (unfocusZipperList!343 zl!343))))))

(assert (=> b!5279450 d!1699408))

(declare-fun b!5280399 () Bool)

(declare-fun e!3283374 () (InoxSet Context!8570))

(assert (=> b!5280399 (= e!3283374 (store ((as const (Array Context!8570 Bool)) false) (ite c!915027 lt!2158077 (Context!8571 call!375809)) true))))

(declare-fun b!5280400 () Bool)

(declare-fun e!3283375 () (InoxSet Context!8570))

(declare-fun call!375994 () (InoxSet Context!8570))

(assert (=> b!5280400 (= e!3283375 call!375994)))

(declare-fun b!5280401 () Bool)

(declare-fun e!3283377 () (InoxSet Context!8570))

(assert (=> b!5280401 (= e!3283377 e!3283375)))

(declare-fun c!915338 () Bool)

(assert (=> b!5280401 (= c!915338 ((_ is Concat!23746) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun bm!375986 () Bool)

(declare-fun call!375992 () List!61003)

(declare-fun c!915336 () Bool)

(declare-fun call!375995 () (InoxSet Context!8570))

(assert (=> bm!375986 (= call!375995 (derivationStepZipperDown!349 (ite c!915336 (regTwo!30315 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (regOne!30314 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))) (ite c!915336 (ite c!915027 lt!2158077 (Context!8571 call!375809)) (Context!8571 call!375992)) (h!67326 s!2326)))))

(declare-fun bm!375987 () Bool)

(declare-fun c!915337 () Bool)

(declare-fun call!375991 () List!61003)

(declare-fun call!375993 () (InoxSet Context!8570))

(assert (=> bm!375987 (= call!375993 (derivationStepZipperDown!349 (ite c!915336 (regOne!30315 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (ite c!915337 (regTwo!30314 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (ite c!915338 (regOne!30314 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (reg!15230 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))) (ite (or c!915336 c!915337) (ite c!915027 lt!2158077 (Context!8571 call!375809)) (Context!8571 call!375991)) (h!67326 s!2326)))))

(declare-fun b!5280402 () Bool)

(declare-fun e!3283372 () (InoxSet Context!8570))

(assert (=> b!5280402 (= e!3283372 ((_ map or) call!375993 call!375995))))

(declare-fun bm!375988 () Bool)

(assert (=> bm!375988 (= call!375991 call!375992)))

(declare-fun d!1699410 () Bool)

(declare-fun c!915335 () Bool)

(assert (=> d!1699410 (= c!915335 (and ((_ is ElementMatch!14901) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (= (c!914851 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (h!67326 s!2326))))))

(assert (=> d!1699410 (= (derivationStepZipperDown!349 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))) (ite c!915027 lt!2158077 (Context!8571 call!375809)) (h!67326 s!2326)) e!3283374)))

(declare-fun b!5280403 () Bool)

(declare-fun e!3283376 () Bool)

(assert (=> b!5280403 (= e!3283376 (nullable!5070 (regOne!30314 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun b!5280404 () Bool)

(assert (=> b!5280404 (= e!3283374 e!3283372)))

(assert (=> b!5280404 (= c!915336 ((_ is Union!14901) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5280405 () Bool)

(declare-fun call!375996 () (InoxSet Context!8570))

(assert (=> b!5280405 (= e!3283377 ((_ map or) call!375995 call!375996))))

(declare-fun b!5280406 () Bool)

(assert (=> b!5280406 (= c!915337 e!3283376)))

(declare-fun res!2239422 () Bool)

(assert (=> b!5280406 (=> (not res!2239422) (not e!3283376))))

(assert (=> b!5280406 (= res!2239422 ((_ is Concat!23746) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(assert (=> b!5280406 (= e!3283372 e!3283377)))

(declare-fun bm!375989 () Bool)

(assert (=> bm!375989 (= call!375992 ($colon$colon!1348 (exprs!4785 (ite c!915027 lt!2158077 (Context!8571 call!375809))) (ite (or c!915337 c!915338) (regTwo!30314 (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun b!5280407 () Bool)

(declare-fun e!3283373 () (InoxSet Context!8570))

(assert (=> b!5280407 (= e!3283373 call!375994)))

(declare-fun bm!375990 () Bool)

(assert (=> bm!375990 (= call!375996 call!375993)))

(declare-fun b!5280408 () Bool)

(assert (=> b!5280408 (= e!3283373 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280409 () Bool)

(declare-fun c!915339 () Bool)

(assert (=> b!5280409 (= c!915339 ((_ is Star!14901) (ite c!915027 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(assert (=> b!5280409 (= e!3283375 e!3283373)))

(declare-fun bm!375991 () Bool)

(assert (=> bm!375991 (= call!375994 call!375996)))

(assert (= (and d!1699410 c!915335) b!5280399))

(assert (= (and d!1699410 (not c!915335)) b!5280404))

(assert (= (and b!5280404 c!915336) b!5280402))

(assert (= (and b!5280404 (not c!915336)) b!5280406))

(assert (= (and b!5280406 res!2239422) b!5280403))

(assert (= (and b!5280406 c!915337) b!5280405))

(assert (= (and b!5280406 (not c!915337)) b!5280401))

(assert (= (and b!5280401 c!915338) b!5280400))

(assert (= (and b!5280401 (not c!915338)) b!5280409))

(assert (= (and b!5280409 c!915339) b!5280407))

(assert (= (and b!5280409 (not c!915339)) b!5280408))

(assert (= (or b!5280400 b!5280407) bm!375988))

(assert (= (or b!5280400 b!5280407) bm!375991))

(assert (= (or b!5280405 bm!375988) bm!375989))

(assert (= (or b!5280405 bm!375991) bm!375990))

(assert (= (or b!5280402 b!5280405) bm!375986))

(assert (= (or b!5280402 bm!375990) bm!375987))

(declare-fun m!6318358 () Bool)

(assert (=> bm!375987 m!6318358))

(declare-fun m!6318360 () Bool)

(assert (=> bm!375986 m!6318360))

(declare-fun m!6318362 () Bool)

(assert (=> b!5280399 m!6318362))

(declare-fun m!6318364 () Bool)

(assert (=> b!5280403 m!6318364))

(declare-fun m!6318366 () Bool)

(assert (=> bm!375989 m!6318366))

(assert (=> bm!375803 d!1699410))

(declare-fun d!1699412 () Bool)

(assert (=> d!1699412 (= (isDefined!11715 lt!2158236) (not (isEmpty!32836 lt!2158236)))))

(declare-fun bs!1223927 () Bool)

(assert (= bs!1223927 d!1699412))

(declare-fun m!6318368 () Bool)

(assert (=> bs!1223927 m!6318368))

(assert (=> d!1699006 d!1699412))

(declare-fun bm!375992 () Bool)

(declare-fun call!375997 () Bool)

(assert (=> bm!375992 (= call!375997 (isEmpty!32835 Nil!60878))))

(declare-fun b!5280410 () Bool)

(declare-fun res!2239425 () Bool)

(declare-fun e!3283382 () Bool)

(assert (=> b!5280410 (=> (not res!2239425) (not e!3283382))))

(assert (=> b!5280410 (= res!2239425 (not call!375997))))

(declare-fun b!5280411 () Bool)

(declare-fun e!3283383 () Bool)

(assert (=> b!5280411 (= e!3283383 (nullable!5070 (regOne!30314 r!7292)))))

(declare-fun b!5280412 () Bool)

(assert (=> b!5280412 (= e!3283383 (matchR!7086 (derivativeStep!4119 (regOne!30314 r!7292) (head!11314 Nil!60878)) (tail!10411 Nil!60878)))))

(declare-fun b!5280413 () Bool)

(declare-fun e!3283384 () Bool)

(declare-fun lt!2158305 () Bool)

(assert (=> b!5280413 (= e!3283384 (not lt!2158305))))

(declare-fun b!5280414 () Bool)

(declare-fun e!3283379 () Bool)

(declare-fun e!3283378 () Bool)

(assert (=> b!5280414 (= e!3283379 e!3283378)))

(declare-fun res!2239424 () Bool)

(assert (=> b!5280414 (=> (not res!2239424) (not e!3283378))))

(assert (=> b!5280414 (= res!2239424 (not lt!2158305))))

(declare-fun b!5280415 () Bool)

(declare-fun res!2239426 () Bool)

(assert (=> b!5280415 (=> res!2239426 e!3283379)))

(assert (=> b!5280415 (= res!2239426 e!3283382)))

(declare-fun res!2239429 () Bool)

(assert (=> b!5280415 (=> (not res!2239429) (not e!3283382))))

(assert (=> b!5280415 (= res!2239429 lt!2158305)))

(declare-fun b!5280416 () Bool)

(assert (=> b!5280416 (= e!3283382 (= (head!11314 Nil!60878) (c!914851 (regOne!30314 r!7292))))))

(declare-fun d!1699414 () Bool)

(declare-fun e!3283381 () Bool)

(assert (=> d!1699414 e!3283381))

(declare-fun c!915342 () Bool)

(assert (=> d!1699414 (= c!915342 ((_ is EmptyExpr!14901) (regOne!30314 r!7292)))))

(assert (=> d!1699414 (= lt!2158305 e!3283383)))

(declare-fun c!915341 () Bool)

(assert (=> d!1699414 (= c!915341 (isEmpty!32835 Nil!60878))))

(assert (=> d!1699414 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699414 (= (matchR!7086 (regOne!30314 r!7292) Nil!60878) lt!2158305)))

(declare-fun b!5280417 () Bool)

(assert (=> b!5280417 (= e!3283381 (= lt!2158305 call!375997))))

(declare-fun b!5280418 () Bool)

(declare-fun e!3283380 () Bool)

(assert (=> b!5280418 (= e!3283378 e!3283380)))

(declare-fun res!2239428 () Bool)

(assert (=> b!5280418 (=> res!2239428 e!3283380)))

(assert (=> b!5280418 (= res!2239428 call!375997)))

(declare-fun b!5280419 () Bool)

(declare-fun res!2239423 () Bool)

(assert (=> b!5280419 (=> res!2239423 e!3283379)))

(assert (=> b!5280419 (= res!2239423 (not ((_ is ElementMatch!14901) (regOne!30314 r!7292))))))

(assert (=> b!5280419 (= e!3283384 e!3283379)))

(declare-fun b!5280420 () Bool)

(declare-fun res!2239427 () Bool)

(assert (=> b!5280420 (=> (not res!2239427) (not e!3283382))))

(assert (=> b!5280420 (= res!2239427 (isEmpty!32835 (tail!10411 Nil!60878)))))

(declare-fun b!5280421 () Bool)

(assert (=> b!5280421 (= e!3283381 e!3283384)))

(declare-fun c!915340 () Bool)

(assert (=> b!5280421 (= c!915340 ((_ is EmptyLang!14901) (regOne!30314 r!7292)))))

(declare-fun b!5280422 () Bool)

(assert (=> b!5280422 (= e!3283380 (not (= (head!11314 Nil!60878) (c!914851 (regOne!30314 r!7292)))))))

(declare-fun b!5280423 () Bool)

(declare-fun res!2239430 () Bool)

(assert (=> b!5280423 (=> res!2239430 e!3283380)))

(assert (=> b!5280423 (= res!2239430 (not (isEmpty!32835 (tail!10411 Nil!60878))))))

(assert (= (and d!1699414 c!915341) b!5280411))

(assert (= (and d!1699414 (not c!915341)) b!5280412))

(assert (= (and d!1699414 c!915342) b!5280417))

(assert (= (and d!1699414 (not c!915342)) b!5280421))

(assert (= (and b!5280421 c!915340) b!5280413))

(assert (= (and b!5280421 (not c!915340)) b!5280419))

(assert (= (and b!5280419 (not res!2239423)) b!5280415))

(assert (= (and b!5280415 res!2239429) b!5280410))

(assert (= (and b!5280410 res!2239425) b!5280420))

(assert (= (and b!5280420 res!2239427) b!5280416))

(assert (= (and b!5280415 (not res!2239426)) b!5280414))

(assert (= (and b!5280414 res!2239424) b!5280418))

(assert (= (and b!5280418 (not res!2239428)) b!5280423))

(assert (= (and b!5280423 (not res!2239430)) b!5280422))

(assert (= (or b!5280417 b!5280410 b!5280418) bm!375992))

(declare-fun m!6318370 () Bool)

(assert (=> b!5280412 m!6318370))

(assert (=> b!5280412 m!6318370))

(declare-fun m!6318372 () Bool)

(assert (=> b!5280412 m!6318372))

(declare-fun m!6318374 () Bool)

(assert (=> b!5280412 m!6318374))

(assert (=> b!5280412 m!6318372))

(assert (=> b!5280412 m!6318374))

(declare-fun m!6318376 () Bool)

(assert (=> b!5280412 m!6318376))

(declare-fun m!6318378 () Bool)

(assert (=> d!1699414 m!6318378))

(assert (=> d!1699414 m!6317572))

(assert (=> bm!375992 m!6318378))

(declare-fun m!6318380 () Bool)

(assert (=> b!5280411 m!6318380))

(assert (=> b!5280422 m!6318370))

(assert (=> b!5280416 m!6318370))

(assert (=> b!5280423 m!6318374))

(assert (=> b!5280423 m!6318374))

(declare-fun m!6318382 () Bool)

(assert (=> b!5280423 m!6318382))

(assert (=> b!5280420 m!6318374))

(assert (=> b!5280420 m!6318374))

(assert (=> b!5280420 m!6318382))

(assert (=> d!1699006 d!1699414))

(declare-fun b!5280424 () Bool)

(declare-fun e!3283387 () Bool)

(declare-fun call!375998 () Bool)

(assert (=> b!5280424 (= e!3283387 call!375998)))

(declare-fun bm!375993 () Bool)

(declare-fun c!915343 () Bool)

(declare-fun call!376000 () Bool)

(declare-fun c!915344 () Bool)

(assert (=> bm!375993 (= call!376000 (validRegex!6637 (ite c!915343 (reg!15230 (regOne!30314 r!7292)) (ite c!915344 (regOne!30315 (regOne!30314 r!7292)) (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280425 () Bool)

(declare-fun res!2239435 () Bool)

(declare-fun e!3283388 () Bool)

(assert (=> b!5280425 (=> (not res!2239435) (not e!3283388))))

(declare-fun call!375999 () Bool)

(assert (=> b!5280425 (= res!2239435 call!375999)))

(declare-fun e!3283385 () Bool)

(assert (=> b!5280425 (= e!3283385 e!3283388)))

(declare-fun b!5280426 () Bool)

(declare-fun e!3283386 () Bool)

(declare-fun e!3283391 () Bool)

(assert (=> b!5280426 (= e!3283386 e!3283391)))

(declare-fun res!2239431 () Bool)

(assert (=> b!5280426 (= res!2239431 (not (nullable!5070 (reg!15230 (regOne!30314 r!7292)))))))

(assert (=> b!5280426 (=> (not res!2239431) (not e!3283391))))

(declare-fun b!5280427 () Bool)

(declare-fun res!2239433 () Bool)

(declare-fun e!3283390 () Bool)

(assert (=> b!5280427 (=> res!2239433 e!3283390)))

(assert (=> b!5280427 (= res!2239433 (not ((_ is Concat!23746) (regOne!30314 r!7292))))))

(assert (=> b!5280427 (= e!3283385 e!3283390)))

(declare-fun b!5280428 () Bool)

(assert (=> b!5280428 (= e!3283390 e!3283387)))

(declare-fun res!2239434 () Bool)

(assert (=> b!5280428 (=> (not res!2239434) (not e!3283387))))

(assert (=> b!5280428 (= res!2239434 call!375999)))

(declare-fun b!5280429 () Bool)

(assert (=> b!5280429 (= e!3283391 call!376000)))

(declare-fun b!5280430 () Bool)

(declare-fun e!3283389 () Bool)

(assert (=> b!5280430 (= e!3283389 e!3283386)))

(assert (=> b!5280430 (= c!915343 ((_ is Star!14901) (regOne!30314 r!7292)))))

(declare-fun b!5280431 () Bool)

(assert (=> b!5280431 (= e!3283388 call!375998)))

(declare-fun b!5280432 () Bool)

(assert (=> b!5280432 (= e!3283386 e!3283385)))

(assert (=> b!5280432 (= c!915344 ((_ is Union!14901) (regOne!30314 r!7292)))))

(declare-fun bm!375995 () Bool)

(assert (=> bm!375995 (= call!375998 (validRegex!6637 (ite c!915344 (regTwo!30315 (regOne!30314 r!7292)) (regTwo!30314 (regOne!30314 r!7292)))))))

(declare-fun d!1699416 () Bool)

(declare-fun res!2239432 () Bool)

(assert (=> d!1699416 (=> res!2239432 e!3283389)))

(assert (=> d!1699416 (= res!2239432 ((_ is ElementMatch!14901) (regOne!30314 r!7292)))))

(assert (=> d!1699416 (= (validRegex!6637 (regOne!30314 r!7292)) e!3283389)))

(declare-fun bm!375994 () Bool)

(assert (=> bm!375994 (= call!375999 call!376000)))

(assert (= (and d!1699416 (not res!2239432)) b!5280430))

(assert (= (and b!5280430 c!915343) b!5280426))

(assert (= (and b!5280430 (not c!915343)) b!5280432))

(assert (= (and b!5280426 res!2239431) b!5280429))

(assert (= (and b!5280432 c!915344) b!5280425))

(assert (= (and b!5280432 (not c!915344)) b!5280427))

(assert (= (and b!5280425 res!2239435) b!5280431))

(assert (= (and b!5280427 (not res!2239433)) b!5280428))

(assert (= (and b!5280428 res!2239434) b!5280424))

(assert (= (or b!5280431 b!5280424) bm!375995))

(assert (= (or b!5280425 b!5280428) bm!375994))

(assert (= (or b!5280429 bm!375994) bm!375993))

(declare-fun m!6318384 () Bool)

(assert (=> bm!375993 m!6318384))

(declare-fun m!6318386 () Bool)

(assert (=> b!5280426 m!6318386))

(declare-fun m!6318388 () Bool)

(assert (=> bm!375995 m!6318388))

(assert (=> d!1699006 d!1699416))

(declare-fun d!1699418 () Bool)

(assert (=> d!1699418 (= (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))) (nullableFct!1450 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun bs!1223928 () Bool)

(assert (= bs!1223928 d!1699418))

(declare-fun m!6318390 () Bool)

(assert (=> bs!1223928 m!6318390))

(assert (=> b!5279279 d!1699418))

(declare-fun d!1699420 () Bool)

(assert (=> d!1699420 (= (isEmpty!32835 (t!374203 s!2326)) ((_ is Nil!60878) (t!374203 s!2326)))))

(assert (=> d!1698986 d!1699420))

(declare-fun bs!1223929 () Bool)

(declare-fun d!1699422 () Bool)

(assert (= bs!1223929 (and d!1699422 b!5278732)))

(declare-fun lambda!266715 () Int)

(assert (=> bs!1223929 (= lambda!266715 lambda!266559)))

(declare-fun bs!1223930 () Bool)

(assert (= bs!1223930 (and d!1699422 d!1698954)))

(assert (=> bs!1223930 (= lambda!266715 lambda!266631)))

(declare-fun bs!1223931 () Bool)

(assert (= bs!1223931 (and d!1699422 d!1698998)))

(assert (=> bs!1223931 (= lambda!266715 lambda!266639)))

(declare-fun bs!1223932 () Bool)

(assert (= bs!1223932 (and d!1699422 d!1698990)))

(assert (=> bs!1223932 (= lambda!266715 lambda!266638)))

(declare-fun bs!1223933 () Bool)

(assert (= bs!1223933 (and d!1699422 d!1698956)))

(assert (=> bs!1223933 (= lambda!266715 lambda!266634)))

(declare-fun bs!1223934 () Bool)

(assert (= bs!1223934 (and d!1699422 d!1698952)))

(assert (=> bs!1223934 (= lambda!266715 lambda!266628)))

(declare-fun bs!1223935 () Bool)

(assert (= bs!1223935 (and d!1699422 d!1699002)))

(assert (=> bs!1223935 (= lambda!266715 lambda!266640)))

(declare-fun b!5280433 () Bool)

(declare-fun e!3283394 () Bool)

(declare-fun lt!2158306 () Regex!14901)

(assert (=> b!5280433 (= e!3283394 (isConcat!356 lt!2158306))))

(declare-fun b!5280434 () Bool)

(declare-fun e!3283392 () Regex!14901)

(declare-fun e!3283395 () Regex!14901)

(assert (=> b!5280434 (= e!3283392 e!3283395)))

(declare-fun c!915346 () Bool)

(assert (=> b!5280434 (= c!915346 ((_ is Cons!60879) (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280435 () Bool)

(assert (=> b!5280435 (= e!3283395 (Concat!23746 (h!67327 (t!374204 (exprs!4785 (h!67328 zl!343)))) (generalisedConcat!570 (t!374204 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun e!3283396 () Bool)

(assert (=> d!1699422 e!3283396))

(declare-fun res!2239437 () Bool)

(assert (=> d!1699422 (=> (not res!2239437) (not e!3283396))))

(assert (=> d!1699422 (= res!2239437 (validRegex!6637 lt!2158306))))

(assert (=> d!1699422 (= lt!2158306 e!3283392)))

(declare-fun c!915347 () Bool)

(declare-fun e!3283397 () Bool)

(assert (=> d!1699422 (= c!915347 e!3283397)))

(declare-fun res!2239436 () Bool)

(assert (=> d!1699422 (=> (not res!2239436) (not e!3283397))))

(assert (=> d!1699422 (= res!2239436 ((_ is Cons!60879) (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> d!1699422 (forall!14309 (t!374204 (exprs!4785 (h!67328 zl!343))) lambda!266715)))

(assert (=> d!1699422 (= (generalisedConcat!570 (t!374204 (exprs!4785 (h!67328 zl!343)))) lt!2158306)))

(declare-fun b!5280436 () Bool)

(declare-fun e!3283393 () Bool)

(assert (=> b!5280436 (= e!3283396 e!3283393)))

(declare-fun c!915345 () Bool)

(assert (=> b!5280436 (= c!915345 (isEmpty!32831 (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280437 () Bool)

(assert (=> b!5280437 (= e!3283393 (isEmptyExpr!833 lt!2158306))))

(declare-fun b!5280438 () Bool)

(assert (=> b!5280438 (= e!3283395 EmptyExpr!14901)))

(declare-fun b!5280439 () Bool)

(assert (=> b!5280439 (= e!3283394 (= lt!2158306 (head!11315 (t!374204 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5280440 () Bool)

(assert (=> b!5280440 (= e!3283393 e!3283394)))

(declare-fun c!915348 () Bool)

(assert (=> b!5280440 (= c!915348 (isEmpty!32831 (tail!10412 (t!374204 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5280441 () Bool)

(assert (=> b!5280441 (= e!3283397 (isEmpty!32831 (t!374204 (t!374204 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5280442 () Bool)

(assert (=> b!5280442 (= e!3283392 (h!67327 (t!374204 (exprs!4785 (h!67328 zl!343)))))))

(assert (= (and d!1699422 res!2239436) b!5280441))

(assert (= (and d!1699422 c!915347) b!5280442))

(assert (= (and d!1699422 (not c!915347)) b!5280434))

(assert (= (and b!5280434 c!915346) b!5280435))

(assert (= (and b!5280434 (not c!915346)) b!5280438))

(assert (= (and d!1699422 res!2239437) b!5280436))

(assert (= (and b!5280436 c!915345) b!5280437))

(assert (= (and b!5280436 (not c!915345)) b!5280440))

(assert (= (and b!5280440 c!915348) b!5280439))

(assert (= (and b!5280440 (not c!915348)) b!5280433))

(declare-fun m!6318392 () Bool)

(assert (=> b!5280435 m!6318392))

(declare-fun m!6318394 () Bool)

(assert (=> b!5280440 m!6318394))

(assert (=> b!5280440 m!6318394))

(declare-fun m!6318396 () Bool)

(assert (=> b!5280440 m!6318396))

(declare-fun m!6318398 () Bool)

(assert (=> d!1699422 m!6318398))

(declare-fun m!6318400 () Bool)

(assert (=> d!1699422 m!6318400))

(declare-fun m!6318402 () Bool)

(assert (=> b!5280441 m!6318402))

(declare-fun m!6318404 () Bool)

(assert (=> b!5280437 m!6318404))

(declare-fun m!6318406 () Bool)

(assert (=> b!5280439 m!6318406))

(assert (=> b!5280436 m!6316844))

(declare-fun m!6318408 () Bool)

(assert (=> b!5280433 m!6318408))

(assert (=> b!5279482 d!1699422))

(declare-fun d!1699424 () Bool)

(assert (=> d!1699424 (= (isEmpty!32835 (tail!10411 s!2326)) ((_ is Nil!60878) (tail!10411 s!2326)))))

(assert (=> b!5279547 d!1699424))

(declare-fun d!1699426 () Bool)

(assert (=> d!1699426 (= (tail!10411 s!2326) (t!374203 s!2326))))

(assert (=> b!5279547 d!1699426))

(declare-fun bs!1223936 () Bool)

(declare-fun d!1699428 () Bool)

(assert (= bs!1223936 (and d!1699428 d!1699402)))

(declare-fun lambda!266716 () Int)

(assert (=> bs!1223936 (= lambda!266716 lambda!266714)))

(declare-fun bs!1223937 () Bool)

(assert (= bs!1223937 (and d!1699428 d!1699400)))

(assert (=> bs!1223937 (= lambda!266716 lambda!266713)))

(declare-fun bs!1223938 () Bool)

(assert (= bs!1223938 (and d!1699428 b!5279222)))

(assert (=> bs!1223938 (not (= lambda!266716 lambda!266613))))

(declare-fun bs!1223939 () Bool)

(assert (= bs!1223939 (and d!1699428 b!5279220)))

(assert (=> bs!1223939 (not (= lambda!266716 lambda!266612))))

(declare-fun bs!1223940 () Bool)

(assert (= bs!1223940 (and d!1699428 b!5279227)))

(assert (=> bs!1223940 (not (= lambda!266716 lambda!266616))))

(declare-fun bs!1223941 () Bool)

(assert (= bs!1223941 (and d!1699428 b!5279225)))

(assert (=> bs!1223941 (not (= lambda!266716 lambda!266615))))

(assert (=> d!1699428 (= (nullableZipper!1298 lt!2158061) (exists!2001 lt!2158061 lambda!266716))))

(declare-fun bs!1223942 () Bool)

(assert (= bs!1223942 d!1699428))

(declare-fun m!6318410 () Bool)

(assert (=> bs!1223942 m!6318410))

(assert (=> b!5279499 d!1699428))

(assert (=> bs!1223398 d!1698946))

(declare-fun d!1699430 () Bool)

(declare-fun c!915349 () Bool)

(assert (=> d!1699430 (= c!915349 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283398 () Bool)

(assert (=> d!1699430 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158070 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283398)))

(declare-fun b!5280443 () Bool)

(assert (=> b!5280443 (= e!3283398 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158070 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280444 () Bool)

(assert (=> b!5280444 (= e!3283398 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158070 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699430 c!915349) b!5280443))

(assert (= (and d!1699430 (not c!915349)) b!5280444))

(assert (=> d!1699430 m!6317240))

(declare-fun m!6318412 () Bool)

(assert (=> d!1699430 m!6318412))

(assert (=> b!5280443 m!6317238))

(declare-fun m!6318414 () Bool)

(assert (=> b!5280443 m!6318414))

(assert (=> b!5280444 m!6317240))

(declare-fun m!6318416 () Bool)

(assert (=> b!5280444 m!6318416))

(assert (=> b!5280444 m!6317238))

(assert (=> b!5280444 m!6318416))

(declare-fun m!6318418 () Bool)

(assert (=> b!5280444 m!6318418))

(assert (=> b!5280444 m!6317240))

(declare-fun m!6318420 () Bool)

(assert (=> b!5280444 m!6318420))

(assert (=> b!5280444 m!6318418))

(assert (=> b!5280444 m!6318420))

(declare-fun m!6318422 () Bool)

(assert (=> b!5280444 m!6318422))

(assert (=> b!5279208 d!1699430))

(declare-fun bs!1223943 () Bool)

(declare-fun d!1699432 () Bool)

(assert (= bs!1223943 (and d!1699432 b!5278704)))

(declare-fun lambda!266717 () Int)

(assert (=> bs!1223943 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266717 lambda!266558))))

(declare-fun bs!1223944 () Bool)

(assert (= bs!1223944 (and d!1699432 d!1698932)))

(assert (=> bs!1223944 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266717 lambda!266625))))

(declare-fun bs!1223945 () Bool)

(assert (= bs!1223945 (and d!1699432 d!1698976)))

(assert (=> bs!1223945 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266717 lambda!266635))))

(assert (=> d!1699432 true))

(assert (=> d!1699432 (= (derivationStepZipper!1144 lt!2158070 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158070 lambda!266717))))

(declare-fun bs!1223946 () Bool)

(assert (= bs!1223946 d!1699432))

(declare-fun m!6318424 () Bool)

(assert (=> bs!1223946 m!6318424))

(assert (=> b!5279208 d!1699432))

(declare-fun d!1699434 () Bool)

(assert (=> d!1699434 (= (head!11314 (t!374203 s!2326)) (h!67326 (t!374203 s!2326)))))

(assert (=> b!5279208 d!1699434))

(declare-fun d!1699436 () Bool)

(assert (=> d!1699436 (= (tail!10411 (t!374203 s!2326)) (t!374203 (t!374203 s!2326)))))

(assert (=> b!5279208 d!1699436))

(declare-fun d!1699438 () Bool)

(assert (=> d!1699438 (= (isEmptyExpr!833 lt!2158227) ((_ is EmptyExpr!14901) lt!2158227))))

(assert (=> b!5279555 d!1699438))

(declare-fun d!1699440 () Bool)

(assert (=> d!1699440 (= (isEmpty!32831 (t!374204 lt!2158092)) ((_ is Nil!60879) (t!374204 lt!2158092)))))

(assert (=> b!5279559 d!1699440))

(declare-fun b!5280445 () Bool)

(declare-fun e!3283401 () (InoxSet Context!8570))

(assert (=> b!5280445 (= e!3283401 (store ((as const (Array Context!8570 Bool)) false) (ite c!915107 lt!2158077 (Context!8571 call!375835)) true))))

(declare-fun b!5280446 () Bool)

(declare-fun e!3283402 () (InoxSet Context!8570))

(declare-fun call!376004 () (InoxSet Context!8570))

(assert (=> b!5280446 (= e!3283402 call!376004)))

(declare-fun b!5280447 () Bool)

(declare-fun e!3283404 () (InoxSet Context!8570))

(assert (=> b!5280447 (= e!3283404 e!3283402)))

(declare-fun c!915353 () Bool)

(assert (=> b!5280447 (= c!915353 ((_ is Concat!23746) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))))))

(declare-fun bm!375996 () Bool)

(declare-fun c!915351 () Bool)

(declare-fun call!376002 () List!61003)

(declare-fun call!376005 () (InoxSet Context!8570))

(assert (=> bm!375996 (= call!376005 (derivationStepZipperDown!349 (ite c!915351 (regTwo!30315 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (regOne!30314 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))) (ite c!915351 (ite c!915107 lt!2158077 (Context!8571 call!375835)) (Context!8571 call!376002)) (h!67326 s!2326)))))

(declare-fun bm!375997 () Bool)

(declare-fun call!376003 () (InoxSet Context!8570))

(declare-fun call!376001 () List!61003)

(declare-fun c!915352 () Bool)

(assert (=> bm!375997 (= call!376003 (derivationStepZipperDown!349 (ite c!915351 (regOne!30315 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (ite c!915352 (regTwo!30314 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (ite c!915353 (regOne!30314 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (reg!15230 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))))) (ite (or c!915351 c!915352) (ite c!915107 lt!2158077 (Context!8571 call!375835)) (Context!8571 call!376001)) (h!67326 s!2326)))))

(declare-fun b!5280448 () Bool)

(declare-fun e!3283399 () (InoxSet Context!8570))

(assert (=> b!5280448 (= e!3283399 ((_ map or) call!376003 call!376005))))

(declare-fun bm!375998 () Bool)

(assert (=> bm!375998 (= call!376001 call!376002)))

(declare-fun d!1699442 () Bool)

(declare-fun c!915350 () Bool)

(assert (=> d!1699442 (= c!915350 (and ((_ is ElementMatch!14901) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (= (c!914851 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (h!67326 s!2326))))))

(assert (=> d!1699442 (= (derivationStepZipperDown!349 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))) (ite c!915107 lt!2158077 (Context!8571 call!375835)) (h!67326 s!2326)) e!3283401)))

(declare-fun b!5280449 () Bool)

(declare-fun e!3283403 () Bool)

(assert (=> b!5280449 (= e!3283403 (nullable!5070 (regOne!30314 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))))))

(declare-fun b!5280450 () Bool)

(assert (=> b!5280450 (= e!3283401 e!3283399)))

(assert (=> b!5280450 (= c!915351 ((_ is Union!14901) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280451 () Bool)

(declare-fun call!376006 () (InoxSet Context!8570))

(assert (=> b!5280451 (= e!3283404 ((_ map or) call!376005 call!376006))))

(declare-fun b!5280452 () Bool)

(assert (=> b!5280452 (= c!915352 e!3283403)))

(declare-fun res!2239438 () Bool)

(assert (=> b!5280452 (=> (not res!2239438) (not e!3283403))))

(assert (=> b!5280452 (= res!2239438 ((_ is Concat!23746) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))))))

(assert (=> b!5280452 (= e!3283399 e!3283404)))

(declare-fun bm!375999 () Bool)

(assert (=> bm!375999 (= call!376002 ($colon$colon!1348 (exprs!4785 (ite c!915107 lt!2158077 (Context!8571 call!375835))) (ite (or c!915352 c!915353) (regTwo!30314 (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))))))

(declare-fun b!5280453 () Bool)

(declare-fun e!3283400 () (InoxSet Context!8570))

(assert (=> b!5280453 (= e!3283400 call!376004)))

(declare-fun bm!376000 () Bool)

(assert (=> bm!376000 (= call!376006 call!376003)))

(declare-fun b!5280454 () Bool)

(assert (=> b!5280454 (= e!3283400 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280455 () Bool)

(declare-fun c!915354 () Bool)

(assert (=> b!5280455 (= c!915354 ((_ is Star!14901) (ite c!915107 (regTwo!30315 (regTwo!30314 (regOne!30314 r!7292))) (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))))))))

(assert (=> b!5280455 (= e!3283402 e!3283400)))

(declare-fun bm!376001 () Bool)

(assert (=> bm!376001 (= call!376004 call!376006)))

(assert (= (and d!1699442 c!915350) b!5280445))

(assert (= (and d!1699442 (not c!915350)) b!5280450))

(assert (= (and b!5280450 c!915351) b!5280448))

(assert (= (and b!5280450 (not c!915351)) b!5280452))

(assert (= (and b!5280452 res!2239438) b!5280449))

(assert (= (and b!5280452 c!915352) b!5280451))

(assert (= (and b!5280452 (not c!915352)) b!5280447))

(assert (= (and b!5280447 c!915353) b!5280446))

(assert (= (and b!5280447 (not c!915353)) b!5280455))

(assert (= (and b!5280455 c!915354) b!5280453))

(assert (= (and b!5280455 (not c!915354)) b!5280454))

(assert (= (or b!5280446 b!5280453) bm!375998))

(assert (= (or b!5280446 b!5280453) bm!376001))

(assert (= (or b!5280451 bm!375998) bm!375999))

(assert (= (or b!5280451 bm!376001) bm!376000))

(assert (= (or b!5280448 b!5280451) bm!375996))

(assert (= (or b!5280448 bm!376000) bm!375997))

(declare-fun m!6318426 () Bool)

(assert (=> bm!375997 m!6318426))

(declare-fun m!6318428 () Bool)

(assert (=> bm!375996 m!6318428))

(declare-fun m!6318430 () Bool)

(assert (=> b!5280445 m!6318430))

(declare-fun m!6318432 () Bool)

(assert (=> b!5280449 m!6318432))

(declare-fun m!6318434 () Bool)

(assert (=> bm!375999 m!6318434))

(assert (=> bm!375829 d!1699442))

(assert (=> b!5279410 d!1698962))

(declare-fun d!1699444 () Bool)

(declare-fun lt!2158307 () Int)

(assert (=> d!1699444 (>= lt!2158307 0)))

(declare-fun e!3283405 () Int)

(assert (=> d!1699444 (= lt!2158307 e!3283405)))

(declare-fun c!915355 () Bool)

(assert (=> d!1699444 (= c!915355 ((_ is Cons!60880) (t!374205 zl!343)))))

(assert (=> d!1699444 (= (zipperDepthTotal!62 (t!374205 zl!343)) lt!2158307)))

(declare-fun b!5280456 () Bool)

(assert (=> b!5280456 (= e!3283405 (+ (contextDepthTotal!42 (h!67328 (t!374205 zl!343))) (zipperDepthTotal!62 (t!374205 (t!374205 zl!343)))))))

(declare-fun b!5280457 () Bool)

(assert (=> b!5280457 (= e!3283405 0)))

(assert (= (and d!1699444 c!915355) b!5280456))

(assert (= (and d!1699444 (not c!915355)) b!5280457))

(declare-fun m!6318436 () Bool)

(assert (=> b!5280456 m!6318436))

(declare-fun m!6318438 () Bool)

(assert (=> b!5280456 m!6318438))

(assert (=> b!5279410 d!1699444))

(declare-fun d!1699446 () Bool)

(assert (=> d!1699446 (= ($colon$colon!1348 (exprs!4785 lt!2158077) (ite (or c!915028 c!915029) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67327 (exprs!4785 (h!67328 zl!343))))) (Cons!60879 (ite (or c!915028 c!915029) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67327 (exprs!4785 (h!67328 zl!343)))) (exprs!4785 lt!2158077)))))

(assert (=> bm!375806 d!1699446))

(declare-fun bs!1223947 () Bool)

(declare-fun b!5280464 () Bool)

(assert (= bs!1223947 (and b!5280464 b!5278732)))

(declare-fun lambda!266722 () Int)

(assert (=> bs!1223947 (not (= lambda!266722 lambda!266559))))

(declare-fun bs!1223948 () Bool)

(assert (= bs!1223948 (and b!5280464 d!1698954)))

(assert (=> bs!1223948 (not (= lambda!266722 lambda!266631))))

(declare-fun bs!1223949 () Bool)

(assert (= bs!1223949 (and b!5280464 d!1698998)))

(assert (=> bs!1223949 (not (= lambda!266722 lambda!266639))))

(declare-fun bs!1223950 () Bool)

(assert (= bs!1223950 (and b!5280464 d!1698990)))

(assert (=> bs!1223950 (not (= lambda!266722 lambda!266638))))

(declare-fun bs!1223951 () Bool)

(assert (= bs!1223951 (and b!5280464 d!1698952)))

(assert (=> bs!1223951 (not (= lambda!266722 lambda!266628))))

(declare-fun bs!1223952 () Bool)

(assert (= bs!1223952 (and b!5280464 d!1699002)))

(assert (=> bs!1223952 (not (= lambda!266722 lambda!266640))))

(declare-fun bs!1223953 () Bool)

(assert (= bs!1223953 (and b!5280464 d!1698956)))

(assert (=> bs!1223953 (not (= lambda!266722 lambda!266634))))

(declare-fun bs!1223954 () Bool)

(assert (= bs!1223954 (and b!5280464 d!1699422)))

(assert (=> bs!1223954 (not (= lambda!266722 lambda!266715))))

(assert (=> b!5280464 true))

(declare-fun bs!1223955 () Bool)

(declare-fun b!5280466 () Bool)

(assert (= bs!1223955 (and b!5280466 b!5278732)))

(declare-fun lambda!266723 () Int)

(assert (=> bs!1223955 (not (= lambda!266723 lambda!266559))))

(declare-fun bs!1223956 () Bool)

(assert (= bs!1223956 (and b!5280466 d!1698954)))

(assert (=> bs!1223956 (not (= lambda!266723 lambda!266631))))

(declare-fun bs!1223957 () Bool)

(assert (= bs!1223957 (and b!5280466 d!1698998)))

(assert (=> bs!1223957 (not (= lambda!266723 lambda!266639))))

(declare-fun bs!1223958 () Bool)

(assert (= bs!1223958 (and b!5280466 d!1698990)))

(assert (=> bs!1223958 (not (= lambda!266723 lambda!266638))))

(declare-fun bs!1223959 () Bool)

(assert (= bs!1223959 (and b!5280466 b!5280464)))

(declare-fun lt!2158316 () Int)

(declare-fun lt!2158318 () Int)

(assert (=> bs!1223959 (= (= lt!2158316 lt!2158318) (= lambda!266723 lambda!266722))))

(declare-fun bs!1223960 () Bool)

(assert (= bs!1223960 (and b!5280466 d!1698952)))

(assert (=> bs!1223960 (not (= lambda!266723 lambda!266628))))

(declare-fun bs!1223961 () Bool)

(assert (= bs!1223961 (and b!5280466 d!1699002)))

(assert (=> bs!1223961 (not (= lambda!266723 lambda!266640))))

(declare-fun bs!1223962 () Bool)

(assert (= bs!1223962 (and b!5280466 d!1698956)))

(assert (=> bs!1223962 (not (= lambda!266723 lambda!266634))))

(declare-fun bs!1223963 () Bool)

(assert (= bs!1223963 (and b!5280466 d!1699422)))

(assert (=> bs!1223963 (not (= lambda!266723 lambda!266715))))

(assert (=> b!5280466 true))

(declare-fun d!1699448 () Bool)

(declare-fun e!3283411 () Bool)

(assert (=> d!1699448 e!3283411))

(declare-fun res!2239441 () Bool)

(assert (=> d!1699448 (=> (not res!2239441) (not e!3283411))))

(assert (=> d!1699448 (= res!2239441 (>= lt!2158316 0))))

(declare-fun e!3283410 () Int)

(assert (=> d!1699448 (= lt!2158316 e!3283410)))

(declare-fun c!915359 () Bool)

(assert (=> d!1699448 (= c!915359 ((_ is Cons!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> d!1699448 (= (contextDepth!10 (h!67328 zl!343)) lt!2158316)))

(assert (=> b!5280464 (= e!3283410 lt!2158318)))

(declare-fun regexDepth!155 (Regex!14901) Int)

(assert (=> b!5280464 (= lt!2158318 (maxBigInt!0 (regexDepth!155 (h!67327 (exprs!4785 (h!67328 zl!343)))) (contextDepth!10 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun lt!2158319 () Unit!153122)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!4 (List!61003 Int Int) Unit!153122)

(assert (=> b!5280464 (= lt!2158319 (lemmaForallRegexDepthBiggerThanTransitive!4 (t!374204 (exprs!4785 (h!67328 zl!343))) lt!2158318 (contextDepth!10 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(assert (=> b!5280464 (forall!14309 (t!374204 (exprs!4785 (h!67328 zl!343))) lambda!266722)))

(declare-fun lt!2158317 () Unit!153122)

(assert (=> b!5280464 (= lt!2158317 lt!2158319)))

(declare-fun b!5280465 () Bool)

(assert (=> b!5280465 (= e!3283410 0)))

(assert (=> b!5280466 (= e!3283411 (forall!14309 (exprs!4785 (h!67328 zl!343)) lambda!266723))))

(assert (= (and d!1699448 c!915359) b!5280464))

(assert (= (and d!1699448 (not c!915359)) b!5280465))

(assert (= (and d!1699448 res!2239441) b!5280466))

(declare-fun m!6318440 () Bool)

(assert (=> b!5280464 m!6318440))

(declare-fun m!6318442 () Bool)

(assert (=> b!5280464 m!6318442))

(declare-fun m!6318444 () Bool)

(assert (=> b!5280464 m!6318444))

(assert (=> b!5280464 m!6318440))

(declare-fun m!6318446 () Bool)

(assert (=> b!5280464 m!6318446))

(assert (=> b!5280464 m!6318444))

(assert (=> b!5280464 m!6318440))

(declare-fun m!6318448 () Bool)

(assert (=> b!5280464 m!6318448))

(declare-fun m!6318450 () Bool)

(assert (=> b!5280466 m!6318450))

(assert (=> b!5279225 d!1699448))

(declare-fun bs!1223964 () Bool)

(declare-fun b!5280469 () Bool)

(assert (= bs!1223964 (and b!5280469 b!5279220)))

(declare-fun lambda!266724 () Int)

(assert (=> bs!1223964 (= lambda!266724 lambda!266611)))

(declare-fun bs!1223965 () Bool)

(assert (= bs!1223965 (and b!5280469 b!5279225)))

(assert (=> bs!1223965 (= lambda!266724 lambda!266614)))

(declare-fun bs!1223966 () Bool)

(assert (= bs!1223966 (and b!5280469 d!1699402)))

(declare-fun lambda!266725 () Int)

(assert (=> bs!1223966 (not (= lambda!266725 lambda!266714))))

(declare-fun bs!1223967 () Bool)

(assert (= bs!1223967 (and b!5280469 d!1699400)))

(assert (=> bs!1223967 (not (= lambda!266725 lambda!266713))))

(declare-fun bs!1223968 () Bool)

(assert (= bs!1223968 (and b!5280469 b!5279222)))

(declare-fun lt!2158322 () Int)

(assert (=> bs!1223968 (= (= lt!2158322 lt!2158185) (= lambda!266725 lambda!266613))))

(assert (=> bs!1223964 (= (= lt!2158322 lt!2158184) (= lambda!266725 lambda!266612))))

(declare-fun bs!1223969 () Bool)

(assert (= bs!1223969 (and b!5280469 b!5279227)))

(assert (=> bs!1223969 (= (= lt!2158322 lt!2158189) (= lambda!266725 lambda!266616))))

(assert (=> bs!1223965 (= (= lt!2158322 lt!2158188) (= lambda!266725 lambda!266615))))

(declare-fun bs!1223970 () Bool)

(assert (= bs!1223970 (and b!5280469 d!1699428)))

(assert (=> bs!1223970 (not (= lambda!266725 lambda!266716))))

(assert (=> b!5280469 true))

(declare-fun bs!1223971 () Bool)

(declare-fun b!5280471 () Bool)

(assert (= bs!1223971 (and b!5280471 d!1699402)))

(declare-fun lambda!266726 () Int)

(assert (=> bs!1223971 (not (= lambda!266726 lambda!266714))))

(declare-fun bs!1223972 () Bool)

(assert (= bs!1223972 (and b!5280471 d!1699400)))

(assert (=> bs!1223972 (not (= lambda!266726 lambda!266713))))

(declare-fun bs!1223973 () Bool)

(assert (= bs!1223973 (and b!5280471 b!5279222)))

(declare-fun lt!2158323 () Int)

(assert (=> bs!1223973 (= (= lt!2158323 lt!2158185) (= lambda!266726 lambda!266613))))

(declare-fun bs!1223974 () Bool)

(assert (= bs!1223974 (and b!5280471 b!5279220)))

(assert (=> bs!1223974 (= (= lt!2158323 lt!2158184) (= lambda!266726 lambda!266612))))

(declare-fun bs!1223975 () Bool)

(assert (= bs!1223975 (and b!5280471 b!5279227)))

(assert (=> bs!1223975 (= (= lt!2158323 lt!2158189) (= lambda!266726 lambda!266616))))

(declare-fun bs!1223976 () Bool)

(assert (= bs!1223976 (and b!5280471 b!5279225)))

(assert (=> bs!1223976 (= (= lt!2158323 lt!2158188) (= lambda!266726 lambda!266615))))

(declare-fun bs!1223977 () Bool)

(assert (= bs!1223977 (and b!5280471 d!1699428)))

(assert (=> bs!1223977 (not (= lambda!266726 lambda!266716))))

(declare-fun bs!1223978 () Bool)

(assert (= bs!1223978 (and b!5280471 b!5280469)))

(assert (=> bs!1223978 (= (= lt!2158323 lt!2158322) (= lambda!266726 lambda!266725))))

(assert (=> b!5280471 true))

(declare-fun d!1699450 () Bool)

(declare-fun e!3283413 () Bool)

(assert (=> d!1699450 e!3283413))

(declare-fun res!2239442 () Bool)

(assert (=> d!1699450 (=> (not res!2239442) (not e!3283413))))

(assert (=> d!1699450 (= res!2239442 (>= lt!2158323 0))))

(declare-fun e!3283412 () Int)

(assert (=> d!1699450 (= lt!2158323 e!3283412)))

(declare-fun c!915360 () Bool)

(assert (=> d!1699450 (= c!915360 ((_ is Cons!60880) (t!374205 zl!343)))))

(assert (=> d!1699450 (= (zipperDepth!18 (t!374205 zl!343)) lt!2158323)))

(assert (=> b!5280469 (= e!3283412 lt!2158322)))

(assert (=> b!5280469 (= lt!2158322 (maxBigInt!0 (contextDepth!10 (h!67328 (t!374205 zl!343))) (zipperDepth!18 (t!374205 (t!374205 zl!343)))))))

(declare-fun lt!2158321 () Unit!153122)

(assert (=> b!5280469 (= lt!2158321 (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 (t!374205 zl!343)) lt!2158322 (zipperDepth!18 (t!374205 (t!374205 zl!343))) lambda!266724))))

(assert (=> b!5280469 (forall!14311 (t!374205 (t!374205 zl!343)) lambda!266725)))

(declare-fun lt!2158320 () Unit!153122)

(assert (=> b!5280469 (= lt!2158320 lt!2158321)))

(declare-fun b!5280470 () Bool)

(assert (=> b!5280470 (= e!3283412 0)))

(assert (=> b!5280471 (= e!3283413 (forall!14311 (t!374205 zl!343) lambda!266726))))

(assert (= (and d!1699450 c!915360) b!5280469))

(assert (= (and d!1699450 (not c!915360)) b!5280470))

(assert (= (and d!1699450 res!2239442) b!5280471))

(declare-fun m!6318452 () Bool)

(assert (=> b!5280469 m!6318452))

(assert (=> b!5280469 m!6318452))

(declare-fun m!6318454 () Bool)

(assert (=> b!5280469 m!6318454))

(declare-fun m!6318456 () Bool)

(assert (=> b!5280469 m!6318456))

(assert (=> b!5280469 m!6318456))

(assert (=> b!5280469 m!6318452))

(declare-fun m!6318458 () Bool)

(assert (=> b!5280469 m!6318458))

(declare-fun m!6318460 () Bool)

(assert (=> b!5280469 m!6318460))

(declare-fun m!6318462 () Bool)

(assert (=> b!5280471 m!6318462))

(assert (=> b!5279225 d!1699450))

(declare-fun d!1699452 () Bool)

(assert (=> d!1699452 (= (maxBigInt!0 (contextDepth!10 (h!67328 zl!343)) (zipperDepth!18 (t!374205 zl!343))) (ite (>= (contextDepth!10 (h!67328 zl!343)) (zipperDepth!18 (t!374205 zl!343))) (contextDepth!10 (h!67328 zl!343)) (zipperDepth!18 (t!374205 zl!343))))))

(assert (=> b!5279225 d!1699452))

(declare-fun bs!1223979 () Bool)

(declare-fun d!1699454 () Bool)

(assert (= bs!1223979 (and d!1699454 d!1699402)))

(declare-fun lambda!266729 () Int)

(assert (=> bs!1223979 (not (= lambda!266729 lambda!266714))))

(declare-fun bs!1223980 () Bool)

(assert (= bs!1223980 (and d!1699454 d!1699400)))

(assert (=> bs!1223980 (not (= lambda!266729 lambda!266713))))

(declare-fun bs!1223981 () Bool)

(assert (= bs!1223981 (and d!1699454 b!5280471)))

(assert (=> bs!1223981 (not (= lambda!266729 lambda!266726))))

(declare-fun bs!1223982 () Bool)

(assert (= bs!1223982 (and d!1699454 b!5279222)))

(assert (=> bs!1223982 (not (= lambda!266729 lambda!266613))))

(declare-fun bs!1223983 () Bool)

(assert (= bs!1223983 (and d!1699454 b!5279220)))

(assert (=> bs!1223983 (not (= lambda!266729 lambda!266612))))

(declare-fun bs!1223984 () Bool)

(assert (= bs!1223984 (and d!1699454 b!5279227)))

(assert (=> bs!1223984 (not (= lambda!266729 lambda!266616))))

(declare-fun bs!1223985 () Bool)

(assert (= bs!1223985 (and d!1699454 b!5279225)))

(assert (=> bs!1223985 (not (= lambda!266729 lambda!266615))))

(declare-fun bs!1223986 () Bool)

(assert (= bs!1223986 (and d!1699454 d!1699428)))

(assert (=> bs!1223986 (not (= lambda!266729 lambda!266716))))

(declare-fun bs!1223987 () Bool)

(assert (= bs!1223987 (and d!1699454 b!5280469)))

(assert (=> bs!1223987 (not (= lambda!266729 lambda!266725))))

(assert (=> d!1699454 true))

(assert (=> d!1699454 true))

(declare-fun order!27063 () Int)

(declare-fun order!27065 () Int)

(declare-fun dynLambda!24071 (Int Int) Int)

(declare-fun dynLambda!24072 (Int Int) Int)

(assert (=> d!1699454 (< (dynLambda!24071 order!27063 lambda!266614) (dynLambda!24072 order!27065 lambda!266729))))

(assert (=> d!1699454 (forall!14311 (t!374205 zl!343) lambda!266729)))

(declare-fun lt!2158326 () Unit!153122)

(declare-fun choose!39405 (List!61004 Int Int Int) Unit!153122)

(assert (=> d!1699454 (= lt!2158326 (choose!39405 (t!374205 zl!343) lt!2158188 (zipperDepth!18 (t!374205 zl!343)) lambda!266614))))

(assert (=> d!1699454 (>= lt!2158188 (zipperDepth!18 (t!374205 zl!343)))))

(assert (=> d!1699454 (= (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 zl!343) lt!2158188 (zipperDepth!18 (t!374205 zl!343)) lambda!266614) lt!2158326)))

(declare-fun bs!1223988 () Bool)

(assert (= bs!1223988 d!1699454))

(declare-fun m!6318464 () Bool)

(assert (=> bs!1223988 m!6318464))

(assert (=> bs!1223988 m!6317270))

(declare-fun m!6318466 () Bool)

(assert (=> bs!1223988 m!6318466))

(assert (=> b!5279225 d!1699454))

(declare-fun d!1699456 () Bool)

(declare-fun res!2239447 () Bool)

(declare-fun e!3283418 () Bool)

(assert (=> d!1699456 (=> res!2239447 e!3283418)))

(assert (=> d!1699456 (= res!2239447 ((_ is Nil!60880) (t!374205 zl!343)))))

(assert (=> d!1699456 (= (forall!14311 (t!374205 zl!343) lambda!266615) e!3283418)))

(declare-fun b!5280480 () Bool)

(declare-fun e!3283419 () Bool)

(assert (=> b!5280480 (= e!3283418 e!3283419)))

(declare-fun res!2239448 () Bool)

(assert (=> b!5280480 (=> (not res!2239448) (not e!3283419))))

(declare-fun dynLambda!24073 (Int Context!8570) Bool)

(assert (=> b!5280480 (= res!2239448 (dynLambda!24073 lambda!266615 (h!67328 (t!374205 zl!343))))))

(declare-fun b!5280481 () Bool)

(assert (=> b!5280481 (= e!3283419 (forall!14311 (t!374205 (t!374205 zl!343)) lambda!266615))))

(assert (= (and d!1699456 (not res!2239447)) b!5280480))

(assert (= (and b!5280480 res!2239448) b!5280481))

(declare-fun b_lambda!203735 () Bool)

(assert (=> (not b_lambda!203735) (not b!5280480)))

(declare-fun m!6318468 () Bool)

(assert (=> b!5280480 m!6318468))

(declare-fun m!6318470 () Bool)

(assert (=> b!5280481 m!6318470))

(assert (=> b!5279225 d!1699456))

(declare-fun d!1699458 () Bool)

(declare-fun c!915363 () Bool)

(assert (=> d!1699458 (= c!915363 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283420 () Bool)

(assert (=> d!1699458 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158089 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283420)))

(declare-fun b!5280482 () Bool)

(assert (=> b!5280482 (= e!3283420 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158089 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280483 () Bool)

(assert (=> b!5280483 (= e!3283420 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158089 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699458 c!915363) b!5280482))

(assert (= (and d!1699458 (not c!915363)) b!5280483))

(assert (=> d!1699458 m!6317240))

(assert (=> d!1699458 m!6318412))

(assert (=> b!5280482 m!6317498))

(declare-fun m!6318472 () Bool)

(assert (=> b!5280482 m!6318472))

(assert (=> b!5280483 m!6317240))

(assert (=> b!5280483 m!6318416))

(assert (=> b!5280483 m!6317498))

(assert (=> b!5280483 m!6318416))

(declare-fun m!6318474 () Bool)

(assert (=> b!5280483 m!6318474))

(assert (=> b!5280483 m!6317240))

(assert (=> b!5280483 m!6318420))

(assert (=> b!5280483 m!6318474))

(assert (=> b!5280483 m!6318420))

(declare-fun m!6318476 () Bool)

(assert (=> b!5280483 m!6318476))

(assert (=> b!5279533 d!1699458))

(declare-fun bs!1223989 () Bool)

(declare-fun d!1699460 () Bool)

(assert (= bs!1223989 (and d!1699460 b!5278704)))

(declare-fun lambda!266730 () Int)

(assert (=> bs!1223989 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266730 lambda!266558))))

(declare-fun bs!1223990 () Bool)

(assert (= bs!1223990 (and d!1699460 d!1698932)))

(assert (=> bs!1223990 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266730 lambda!266625))))

(declare-fun bs!1223991 () Bool)

(assert (= bs!1223991 (and d!1699460 d!1698976)))

(assert (=> bs!1223991 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266730 lambda!266635))))

(declare-fun bs!1223992 () Bool)

(assert (= bs!1223992 (and d!1699460 d!1699432)))

(assert (=> bs!1223992 (= lambda!266730 lambda!266717)))

(assert (=> d!1699460 true))

(assert (=> d!1699460 (= (derivationStepZipper!1144 lt!2158089 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158089 lambda!266730))))

(declare-fun bs!1223993 () Bool)

(assert (= bs!1223993 d!1699460))

(declare-fun m!6318478 () Bool)

(assert (=> bs!1223993 m!6318478))

(assert (=> b!5279533 d!1699460))

(assert (=> b!5279533 d!1699434))

(assert (=> b!5279533 d!1699436))

(declare-fun d!1699462 () Bool)

(assert (=> d!1699462 (= (head!11315 (exprs!4785 (h!67328 zl!343))) (h!67327 (exprs!4785 (h!67328 zl!343))))))

(assert (=> b!5279486 d!1699462))

(assert (=> d!1698968 d!1699420))

(assert (=> d!1698896 d!1699420))

(declare-fun bs!1223994 () Bool)

(declare-fun d!1699464 () Bool)

(assert (= bs!1223994 (and d!1699464 b!5278732)))

(declare-fun lambda!266731 () Int)

(assert (=> bs!1223994 (= lambda!266731 lambda!266559)))

(declare-fun bs!1223995 () Bool)

(assert (= bs!1223995 (and d!1699464 d!1698954)))

(assert (=> bs!1223995 (= lambda!266731 lambda!266631)))

(declare-fun bs!1223996 () Bool)

(assert (= bs!1223996 (and d!1699464 d!1698998)))

(assert (=> bs!1223996 (= lambda!266731 lambda!266639)))

(declare-fun bs!1223997 () Bool)

(assert (= bs!1223997 (and d!1699464 b!5280464)))

(assert (=> bs!1223997 (not (= lambda!266731 lambda!266722))))

(declare-fun bs!1223998 () Bool)

(assert (= bs!1223998 (and d!1699464 d!1698952)))

(assert (=> bs!1223998 (= lambda!266731 lambda!266628)))

(declare-fun bs!1223999 () Bool)

(assert (= bs!1223999 (and d!1699464 d!1699002)))

(assert (=> bs!1223999 (= lambda!266731 lambda!266640)))

(declare-fun bs!1224000 () Bool)

(assert (= bs!1224000 (and d!1699464 b!5280466)))

(assert (=> bs!1224000 (not (= lambda!266731 lambda!266723))))

(declare-fun bs!1224001 () Bool)

(assert (= bs!1224001 (and d!1699464 d!1698990)))

(assert (=> bs!1224001 (= lambda!266731 lambda!266638)))

(declare-fun bs!1224002 () Bool)

(assert (= bs!1224002 (and d!1699464 d!1698956)))

(assert (=> bs!1224002 (= lambda!266731 lambda!266634)))

(declare-fun bs!1224003 () Bool)

(assert (= bs!1224003 (and d!1699464 d!1699422)))

(assert (=> bs!1224003 (= lambda!266731 lambda!266715)))

(assert (=> d!1699464 (= (inv!80499 setElem!33833) (forall!14309 (exprs!4785 setElem!33833) lambda!266731))))

(declare-fun bs!1224004 () Bool)

(assert (= bs!1224004 d!1699464))

(declare-fun m!6318480 () Bool)

(assert (=> bs!1224004 m!6318480))

(assert (=> setNonEmpty!33833 d!1699464))

(declare-fun b!5280484 () Bool)

(declare-fun e!3283423 () Bool)

(declare-fun call!376007 () Bool)

(assert (=> b!5280484 (= e!3283423 call!376007)))

(declare-fun c!915364 () Bool)

(declare-fun bm!376002 () Bool)

(declare-fun c!915365 () Bool)

(declare-fun call!376009 () Bool)

(assert (=> bm!376002 (= call!376009 (validRegex!6637 (ite c!915364 (reg!15230 lt!2158170) (ite c!915365 (regOne!30315 lt!2158170) (regOne!30314 lt!2158170)))))))

(declare-fun b!5280485 () Bool)

(declare-fun res!2239453 () Bool)

(declare-fun e!3283424 () Bool)

(assert (=> b!5280485 (=> (not res!2239453) (not e!3283424))))

(declare-fun call!376008 () Bool)

(assert (=> b!5280485 (= res!2239453 call!376008)))

(declare-fun e!3283421 () Bool)

(assert (=> b!5280485 (= e!3283421 e!3283424)))

(declare-fun b!5280486 () Bool)

(declare-fun e!3283422 () Bool)

(declare-fun e!3283427 () Bool)

(assert (=> b!5280486 (= e!3283422 e!3283427)))

(declare-fun res!2239449 () Bool)

(assert (=> b!5280486 (= res!2239449 (not (nullable!5070 (reg!15230 lt!2158170))))))

(assert (=> b!5280486 (=> (not res!2239449) (not e!3283427))))

(declare-fun b!5280487 () Bool)

(declare-fun res!2239451 () Bool)

(declare-fun e!3283426 () Bool)

(assert (=> b!5280487 (=> res!2239451 e!3283426)))

(assert (=> b!5280487 (= res!2239451 (not ((_ is Concat!23746) lt!2158170)))))

(assert (=> b!5280487 (= e!3283421 e!3283426)))

(declare-fun b!5280488 () Bool)

(assert (=> b!5280488 (= e!3283426 e!3283423)))

(declare-fun res!2239452 () Bool)

(assert (=> b!5280488 (=> (not res!2239452) (not e!3283423))))

(assert (=> b!5280488 (= res!2239452 call!376008)))

(declare-fun b!5280489 () Bool)

(assert (=> b!5280489 (= e!3283427 call!376009)))

(declare-fun b!5280490 () Bool)

(declare-fun e!3283425 () Bool)

(assert (=> b!5280490 (= e!3283425 e!3283422)))

(assert (=> b!5280490 (= c!915364 ((_ is Star!14901) lt!2158170))))

(declare-fun b!5280491 () Bool)

(assert (=> b!5280491 (= e!3283424 call!376007)))

(declare-fun b!5280492 () Bool)

(assert (=> b!5280492 (= e!3283422 e!3283421)))

(assert (=> b!5280492 (= c!915365 ((_ is Union!14901) lt!2158170))))

(declare-fun bm!376004 () Bool)

(assert (=> bm!376004 (= call!376007 (validRegex!6637 (ite c!915365 (regTwo!30315 lt!2158170) (regTwo!30314 lt!2158170))))))

(declare-fun d!1699466 () Bool)

(declare-fun res!2239450 () Bool)

(assert (=> d!1699466 (=> res!2239450 e!3283425)))

(assert (=> d!1699466 (= res!2239450 ((_ is ElementMatch!14901) lt!2158170))))

(assert (=> d!1699466 (= (validRegex!6637 lt!2158170) e!3283425)))

(declare-fun bm!376003 () Bool)

(assert (=> bm!376003 (= call!376008 call!376009)))

(assert (= (and d!1699466 (not res!2239450)) b!5280490))

(assert (= (and b!5280490 c!915364) b!5280486))

(assert (= (and b!5280490 (not c!915364)) b!5280492))

(assert (= (and b!5280486 res!2239449) b!5280489))

(assert (= (and b!5280492 c!915365) b!5280485))

(assert (= (and b!5280492 (not c!915365)) b!5280487))

(assert (= (and b!5280485 res!2239453) b!5280491))

(assert (= (and b!5280487 (not res!2239451)) b!5280488))

(assert (= (and b!5280488 res!2239452) b!5280484))

(assert (= (or b!5280491 b!5280484) bm!376004))

(assert (= (or b!5280485 b!5280488) bm!376003))

(assert (= (or b!5280489 bm!376003) bm!376002))

(declare-fun m!6318482 () Bool)

(assert (=> bm!376002 m!6318482))

(declare-fun m!6318484 () Bool)

(assert (=> b!5280486 m!6318484))

(declare-fun m!6318486 () Bool)

(assert (=> bm!376004 m!6318486))

(assert (=> d!1698900 d!1699466))

(assert (=> d!1698900 d!1698952))

(assert (=> d!1698900 d!1698954))

(declare-fun b!5280493 () Bool)

(declare-fun e!3283430 () (InoxSet Context!8570))

(assert (=> b!5280493 (= e!3283430 (store ((as const (Array Context!8570 Bool)) false) (Context!8571 (t!374204 (exprs!4785 lt!2158060))) true))))

(declare-fun b!5280494 () Bool)

(declare-fun e!3283431 () (InoxSet Context!8570))

(declare-fun call!376013 () (InoxSet Context!8570))

(assert (=> b!5280494 (= e!3283431 call!376013)))

(declare-fun b!5280495 () Bool)

(declare-fun e!3283433 () (InoxSet Context!8570))

(assert (=> b!5280495 (= e!3283433 e!3283431)))

(declare-fun c!915369 () Bool)

(assert (=> b!5280495 (= c!915369 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun c!915367 () Bool)

(declare-fun call!376014 () (InoxSet Context!8570))

(declare-fun call!376011 () List!61003)

(declare-fun bm!376005 () Bool)

(assert (=> bm!376005 (= call!376014 (derivationStepZipperDown!349 (ite c!915367 (regTwo!30315 (h!67327 (exprs!4785 lt!2158060))) (regOne!30314 (h!67327 (exprs!4785 lt!2158060)))) (ite c!915367 (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (Context!8571 call!376011)) (h!67326 s!2326)))))

(declare-fun call!376012 () (InoxSet Context!8570))

(declare-fun c!915368 () Bool)

(declare-fun call!376010 () List!61003)

(declare-fun bm!376006 () Bool)

(assert (=> bm!376006 (= call!376012 (derivationStepZipperDown!349 (ite c!915367 (regOne!30315 (h!67327 (exprs!4785 lt!2158060))) (ite c!915368 (regTwo!30314 (h!67327 (exprs!4785 lt!2158060))) (ite c!915369 (regOne!30314 (h!67327 (exprs!4785 lt!2158060))) (reg!15230 (h!67327 (exprs!4785 lt!2158060)))))) (ite (or c!915367 c!915368) (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (Context!8571 call!376010)) (h!67326 s!2326)))))

(declare-fun b!5280496 () Bool)

(declare-fun e!3283428 () (InoxSet Context!8570))

(assert (=> b!5280496 (= e!3283428 ((_ map or) call!376012 call!376014))))

(declare-fun bm!376007 () Bool)

(assert (=> bm!376007 (= call!376010 call!376011)))

(declare-fun d!1699468 () Bool)

(declare-fun c!915366 () Bool)

(assert (=> d!1699468 (= c!915366 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 lt!2158060))) (= (c!914851 (h!67327 (exprs!4785 lt!2158060))) (h!67326 s!2326))))))

(assert (=> d!1699468 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158060)) (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (h!67326 s!2326)) e!3283430)))

(declare-fun b!5280497 () Bool)

(declare-fun e!3283432 () Bool)

(assert (=> b!5280497 (= e!3283432 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 lt!2158060)))))))

(declare-fun b!5280498 () Bool)

(assert (=> b!5280498 (= e!3283430 e!3283428)))

(assert (=> b!5280498 (= c!915367 ((_ is Union!14901) (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun b!5280499 () Bool)

(declare-fun call!376015 () (InoxSet Context!8570))

(assert (=> b!5280499 (= e!3283433 ((_ map or) call!376014 call!376015))))

(declare-fun b!5280500 () Bool)

(assert (=> b!5280500 (= c!915368 e!3283432)))

(declare-fun res!2239454 () Bool)

(assert (=> b!5280500 (=> (not res!2239454) (not e!3283432))))

(assert (=> b!5280500 (= res!2239454 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158060))))))

(assert (=> b!5280500 (= e!3283428 e!3283433)))

(declare-fun bm!376008 () Bool)

(assert (=> bm!376008 (= call!376011 ($colon$colon!1348 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))) (ite (or c!915368 c!915369) (regTwo!30314 (h!67327 (exprs!4785 lt!2158060))) (h!67327 (exprs!4785 lt!2158060)))))))

(declare-fun b!5280501 () Bool)

(declare-fun e!3283429 () (InoxSet Context!8570))

(assert (=> b!5280501 (= e!3283429 call!376013)))

(declare-fun bm!376009 () Bool)

(assert (=> bm!376009 (= call!376015 call!376012)))

(declare-fun b!5280502 () Bool)

(assert (=> b!5280502 (= e!3283429 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280503 () Bool)

(declare-fun c!915370 () Bool)

(assert (=> b!5280503 (= c!915370 ((_ is Star!14901) (h!67327 (exprs!4785 lt!2158060))))))

(assert (=> b!5280503 (= e!3283431 e!3283429)))

(declare-fun bm!376010 () Bool)

(assert (=> bm!376010 (= call!376013 call!376015)))

(assert (= (and d!1699468 c!915366) b!5280493))

(assert (= (and d!1699468 (not c!915366)) b!5280498))

(assert (= (and b!5280498 c!915367) b!5280496))

(assert (= (and b!5280498 (not c!915367)) b!5280500))

(assert (= (and b!5280500 res!2239454) b!5280497))

(assert (= (and b!5280500 c!915368) b!5280499))

(assert (= (and b!5280500 (not c!915368)) b!5280495))

(assert (= (and b!5280495 c!915369) b!5280494))

(assert (= (and b!5280495 (not c!915369)) b!5280503))

(assert (= (and b!5280503 c!915370) b!5280501))

(assert (= (and b!5280503 (not c!915370)) b!5280502))

(assert (= (or b!5280494 b!5280501) bm!376007))

(assert (= (or b!5280494 b!5280501) bm!376010))

(assert (= (or b!5280499 bm!376007) bm!376008))

(assert (= (or b!5280499 bm!376010) bm!376009))

(assert (= (or b!5280496 b!5280499) bm!376005))

(assert (= (or b!5280496 bm!376009) bm!376006))

(declare-fun m!6318488 () Bool)

(assert (=> bm!376006 m!6318488))

(declare-fun m!6318490 () Bool)

(assert (=> bm!376005 m!6318490))

(declare-fun m!6318492 () Bool)

(assert (=> b!5280493 m!6318492))

(declare-fun m!6318494 () Bool)

(assert (=> b!5280497 m!6318494))

(declare-fun m!6318496 () Bool)

(assert (=> bm!376008 m!6318496))

(assert (=> bm!375828 d!1699468))

(declare-fun d!1699470 () Bool)

(assert (=> d!1699470 (= (flatMap!628 lt!2158087 lambda!266625) (choose!39396 lt!2158087 lambda!266625))))

(declare-fun bs!1224005 () Bool)

(assert (= bs!1224005 d!1699470))

(declare-fun m!6318498 () Bool)

(assert (=> bs!1224005 m!6318498))

(assert (=> d!1698932 d!1699470))

(declare-fun b!5280504 () Bool)

(declare-fun e!3283436 () (InoxSet Context!8570))

(assert (=> b!5280504 (= e!3283436 (store ((as const (Array Context!8570 Bool)) false) (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834)) true))))

(declare-fun b!5280505 () Bool)

(declare-fun e!3283437 () (InoxSet Context!8570))

(declare-fun call!376019 () (InoxSet Context!8570))

(assert (=> b!5280505 (= e!3283437 call!376019)))

(declare-fun b!5280506 () Bool)

(declare-fun e!3283439 () (InoxSet Context!8570))

(assert (=> b!5280506 (= e!3283439 e!3283437)))

(declare-fun c!915374 () Bool)

(assert (=> b!5280506 (= c!915374 ((_ is Concat!23746) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))))))

(declare-fun bm!376011 () Bool)

(declare-fun call!376017 () List!61003)

(declare-fun call!376020 () (InoxSet Context!8570))

(declare-fun c!915372 () Bool)

(assert (=> bm!376011 (= call!376020 (derivationStepZipperDown!349 (ite c!915372 (regTwo!30315 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (regOne!30314 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))))) (ite c!915372 (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834)) (Context!8571 call!376017)) (h!67326 s!2326)))))

(declare-fun c!915373 () Bool)

(declare-fun bm!376012 () Bool)

(declare-fun call!376018 () (InoxSet Context!8570))

(declare-fun call!376016 () List!61003)

(assert (=> bm!376012 (= call!376018 (derivationStepZipperDown!349 (ite c!915372 (regOne!30315 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (ite c!915373 (regTwo!30314 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (ite c!915374 (regOne!30314 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (reg!15230 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))))))) (ite (or c!915372 c!915373) (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834)) (Context!8571 call!376016)) (h!67326 s!2326)))))

(declare-fun b!5280507 () Bool)

(declare-fun e!3283434 () (InoxSet Context!8570))

(assert (=> b!5280507 (= e!3283434 ((_ map or) call!376018 call!376020))))

(declare-fun bm!376013 () Bool)

(assert (=> bm!376013 (= call!376016 call!376017)))

(declare-fun c!915371 () Bool)

(declare-fun d!1699472 () Bool)

(assert (=> d!1699472 (= c!915371 (and ((_ is ElementMatch!14901) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (= (c!914851 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (h!67326 s!2326))))))

(assert (=> d!1699472 (= (derivationStepZipperDown!349 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))) (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834)) (h!67326 s!2326)) e!3283436)))

(declare-fun b!5280508 () Bool)

(declare-fun e!3283438 () Bool)

(assert (=> b!5280508 (= e!3283438 (nullable!5070 (regOne!30314 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))))))))

(declare-fun b!5280509 () Bool)

(assert (=> b!5280509 (= e!3283436 e!3283434)))

(assert (=> b!5280509 (= c!915372 ((_ is Union!14901) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))))))

(declare-fun b!5280510 () Bool)

(declare-fun call!376021 () (InoxSet Context!8570))

(assert (=> b!5280510 (= e!3283439 ((_ map or) call!376020 call!376021))))

(declare-fun b!5280511 () Bool)

(assert (=> b!5280511 (= c!915373 e!3283438)))

(declare-fun res!2239455 () Bool)

(assert (=> b!5280511 (=> (not res!2239455) (not e!3283438))))

(assert (=> b!5280511 (= res!2239455 ((_ is Concat!23746) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))))))

(assert (=> b!5280511 (= e!3283434 e!3283439)))

(declare-fun bm!376014 () Bool)

(assert (=> bm!376014 (= call!376017 ($colon$colon!1348 (exprs!4785 (ite (or c!915107 c!915108) lt!2158077 (Context!8571 call!375834))) (ite (or c!915373 c!915374) (regTwo!30314 (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292)))))))))))

(declare-fun b!5280512 () Bool)

(declare-fun e!3283435 () (InoxSet Context!8570))

(assert (=> b!5280512 (= e!3283435 call!376019)))

(declare-fun bm!376015 () Bool)

(assert (=> bm!376015 (= call!376021 call!376018)))

(declare-fun b!5280513 () Bool)

(assert (=> b!5280513 (= e!3283435 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280514 () Bool)

(declare-fun c!915375 () Bool)

(assert (=> b!5280514 (= c!915375 ((_ is Star!14901) (ite c!915107 (regOne!30315 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915108 (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (ite c!915109 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292))) (reg!15230 (regTwo!30314 (regOne!30314 r!7292))))))))))

(assert (=> b!5280514 (= e!3283437 e!3283435)))

(declare-fun bm!376016 () Bool)

(assert (=> bm!376016 (= call!376019 call!376021)))

(assert (= (and d!1699472 c!915371) b!5280504))

(assert (= (and d!1699472 (not c!915371)) b!5280509))

(assert (= (and b!5280509 c!915372) b!5280507))

(assert (= (and b!5280509 (not c!915372)) b!5280511))

(assert (= (and b!5280511 res!2239455) b!5280508))

(assert (= (and b!5280511 c!915373) b!5280510))

(assert (= (and b!5280511 (not c!915373)) b!5280506))

(assert (= (and b!5280506 c!915374) b!5280505))

(assert (= (and b!5280506 (not c!915374)) b!5280514))

(assert (= (and b!5280514 c!915375) b!5280512))

(assert (= (and b!5280514 (not c!915375)) b!5280513))

(assert (= (or b!5280505 b!5280512) bm!376013))

(assert (= (or b!5280505 b!5280512) bm!376016))

(assert (= (or b!5280510 bm!376013) bm!376014))

(assert (= (or b!5280510 bm!376016) bm!376015))

(assert (= (or b!5280507 b!5280510) bm!376011))

(assert (= (or b!5280507 bm!376015) bm!376012))

(declare-fun m!6318500 () Bool)

(assert (=> bm!376012 m!6318500))

(declare-fun m!6318502 () Bool)

(assert (=> bm!376011 m!6318502))

(declare-fun m!6318504 () Bool)

(assert (=> b!5280504 m!6318504))

(declare-fun m!6318506 () Bool)

(assert (=> b!5280508 m!6318506))

(declare-fun m!6318508 () Bool)

(assert (=> bm!376014 m!6318508))

(assert (=> bm!375830 d!1699472))

(assert (=> b!5279397 d!1699424))

(assert (=> b!5279397 d!1699426))

(declare-fun b!5280515 () Bool)

(declare-fun e!3283440 () (InoxSet Context!8570))

(assert (=> b!5280515 (= e!3283440 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!376017 () Bool)

(declare-fun call!376022 () (InoxSet Context!8570))

(assert (=> bm!376017 (= call!376022 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))))) (h!67326 s!2326)))))

(declare-fun d!1699474 () Bool)

(declare-fun c!915376 () Bool)

(declare-fun e!3283441 () Bool)

(assert (=> d!1699474 (= c!915376 e!3283441)))

(declare-fun res!2239456 () Bool)

(assert (=> d!1699474 (=> (not res!2239456) (not e!3283441))))

(assert (=> d!1699474 (= res!2239456 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060))))))))

(declare-fun e!3283442 () (InoxSet Context!8570))

(assert (=> d!1699474 (= (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158060))) (h!67326 s!2326)) e!3283442)))

(declare-fun b!5280516 () Bool)

(assert (=> b!5280516 (= e!3283440 call!376022)))

(declare-fun b!5280517 () Bool)

(assert (=> b!5280517 (= e!3283441 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))))))))

(declare-fun b!5280518 () Bool)

(assert (=> b!5280518 (= e!3283442 e!3283440)))

(declare-fun c!915377 () Bool)

(assert (=> b!5280518 (= c!915377 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060))))))))

(declare-fun b!5280519 () Bool)

(assert (=> b!5280519 (= e!3283442 ((_ map or) call!376022 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))))) (h!67326 s!2326))))))

(assert (= (and d!1699474 res!2239456) b!5280517))

(assert (= (and d!1699474 c!915376) b!5280519))

(assert (= (and d!1699474 (not c!915376)) b!5280518))

(assert (= (and b!5280518 c!915377) b!5280516))

(assert (= (and b!5280518 (not c!915377)) b!5280515))

(assert (= (or b!5280519 b!5280516) bm!376017))

(declare-fun m!6318510 () Bool)

(assert (=> bm!376017 m!6318510))

(declare-fun m!6318512 () Bool)

(assert (=> b!5280517 m!6318512))

(declare-fun m!6318514 () Bool)

(assert (=> b!5280519 m!6318514))

(assert (=> b!5279507 d!1699474))

(declare-fun bs!1224006 () Bool)

(declare-fun d!1699476 () Bool)

(assert (= bs!1224006 (and d!1699476 d!1699402)))

(declare-fun lambda!266732 () Int)

(assert (=> bs!1224006 (= lambda!266732 lambda!266714)))

(declare-fun bs!1224007 () Bool)

(assert (= bs!1224007 (and d!1699476 d!1699400)))

(assert (=> bs!1224007 (= lambda!266732 lambda!266713)))

(declare-fun bs!1224008 () Bool)

(assert (= bs!1224008 (and d!1699476 b!5280471)))

(assert (=> bs!1224008 (not (= lambda!266732 lambda!266726))))

(declare-fun bs!1224009 () Bool)

(assert (= bs!1224009 (and d!1699476 b!5279222)))

(assert (=> bs!1224009 (not (= lambda!266732 lambda!266613))))

(declare-fun bs!1224010 () Bool)

(assert (= bs!1224010 (and d!1699476 d!1699454)))

(assert (=> bs!1224010 (not (= lambda!266732 lambda!266729))))

(declare-fun bs!1224011 () Bool)

(assert (= bs!1224011 (and d!1699476 b!5279220)))

(assert (=> bs!1224011 (not (= lambda!266732 lambda!266612))))

(declare-fun bs!1224012 () Bool)

(assert (= bs!1224012 (and d!1699476 b!5279227)))

(assert (=> bs!1224012 (not (= lambda!266732 lambda!266616))))

(declare-fun bs!1224013 () Bool)

(assert (= bs!1224013 (and d!1699476 b!5279225)))

(assert (=> bs!1224013 (not (= lambda!266732 lambda!266615))))

(declare-fun bs!1224014 () Bool)

(assert (= bs!1224014 (and d!1699476 d!1699428)))

(assert (=> bs!1224014 (= lambda!266732 lambda!266716)))

(declare-fun bs!1224015 () Bool)

(assert (= bs!1224015 (and d!1699476 b!5280469)))

(assert (=> bs!1224015 (not (= lambda!266732 lambda!266725))))

(assert (=> d!1699476 (= (nullableZipper!1298 lt!2158086) (exists!2001 lt!2158086 lambda!266732))))

(declare-fun bs!1224016 () Bool)

(assert (= bs!1224016 d!1699476))

(declare-fun m!6318516 () Bool)

(assert (=> bs!1224016 m!6318516))

(assert (=> b!5279402 d!1699476))

(assert (=> d!1698940 d!1698950))

(declare-fun d!1699478 () Bool)

(assert (=> d!1699478 (= (flatMap!628 lt!2158087 lambda!266558) (dynLambda!24066 lambda!266558 lt!2158063))))

(assert (=> d!1699478 true))

(declare-fun _$13!1859 () Unit!153122)

(assert (=> d!1699478 (= (choose!39395 lt!2158087 lt!2158063 lambda!266558) _$13!1859)))

(declare-fun b_lambda!203737 () Bool)

(assert (=> (not b_lambda!203737) (not d!1699478)))

(declare-fun bs!1224017 () Bool)

(assert (= bs!1224017 d!1699478))

(assert (=> bs!1224017 m!6316798))

(assert (=> bs!1224017 m!6317366))

(assert (=> d!1698940 d!1699478))

(assert (=> b!5279416 d!1698934))

(declare-fun d!1699480 () Bool)

(assert (=> d!1699480 (= (isEmpty!32835 s!2326) ((_ is Nil!60878) s!2326))))

(assert (=> d!1698926 d!1699480))

(assert (=> d!1698926 d!1698922))

(assert (=> d!1698984 d!1699420))

(declare-fun d!1699482 () Bool)

(declare-fun res!2239457 () Bool)

(declare-fun e!3283443 () Bool)

(assert (=> d!1699482 (=> res!2239457 e!3283443)))

(assert (=> d!1699482 (= res!2239457 ((_ is Nil!60880) lt!2158083))))

(assert (=> d!1699482 (= (forall!14311 lt!2158083 lambda!266613) e!3283443)))

(declare-fun b!5280520 () Bool)

(declare-fun e!3283444 () Bool)

(assert (=> b!5280520 (= e!3283443 e!3283444)))

(declare-fun res!2239458 () Bool)

(assert (=> b!5280520 (=> (not res!2239458) (not e!3283444))))

(assert (=> b!5280520 (= res!2239458 (dynLambda!24073 lambda!266613 (h!67328 lt!2158083)))))

(declare-fun b!5280521 () Bool)

(assert (=> b!5280521 (= e!3283444 (forall!14311 (t!374205 lt!2158083) lambda!266613))))

(assert (= (and d!1699482 (not res!2239457)) b!5280520))

(assert (= (and b!5280520 res!2239458) b!5280521))

(declare-fun b_lambda!203739 () Bool)

(assert (=> (not b_lambda!203739) (not b!5280520)))

(declare-fun m!6318518 () Bool)

(assert (=> b!5280520 m!6318518))

(declare-fun m!6318520 () Bool)

(assert (=> b!5280521 m!6318520))

(assert (=> b!5279222 d!1699482))

(declare-fun d!1699484 () Bool)

(assert (=> d!1699484 true))

(assert (=> d!1699484 true))

(declare-fun res!2239461 () Bool)

(assert (=> d!1699484 (= (choose!39400 lambda!266557) res!2239461)))

(assert (=> d!1699004 d!1699484))

(declare-fun d!1699486 () Bool)

(declare-fun c!915378 () Bool)

(assert (=> d!1699486 (= c!915378 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283445 () Bool)

(assert (=> d!1699486 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158088 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283445)))

(declare-fun b!5280522 () Bool)

(assert (=> b!5280522 (= e!3283445 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158088 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280523 () Bool)

(assert (=> b!5280523 (= e!3283445 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158088 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699486 c!915378) b!5280522))

(assert (= (and d!1699486 (not c!915378)) b!5280523))

(assert (=> d!1699486 m!6317240))

(assert (=> d!1699486 m!6318412))

(assert (=> b!5280522 m!6317492))

(declare-fun m!6318522 () Bool)

(assert (=> b!5280522 m!6318522))

(assert (=> b!5280523 m!6317240))

(assert (=> b!5280523 m!6318416))

(assert (=> b!5280523 m!6317492))

(assert (=> b!5280523 m!6318416))

(declare-fun m!6318524 () Bool)

(assert (=> b!5280523 m!6318524))

(assert (=> b!5280523 m!6317240))

(assert (=> b!5280523 m!6318420))

(assert (=> b!5280523 m!6318524))

(assert (=> b!5280523 m!6318420))

(declare-fun m!6318526 () Bool)

(assert (=> b!5280523 m!6318526))

(assert (=> b!5279531 d!1699486))

(declare-fun bs!1224018 () Bool)

(declare-fun d!1699488 () Bool)

(assert (= bs!1224018 (and d!1699488 d!1699460)))

(declare-fun lambda!266733 () Int)

(assert (=> bs!1224018 (= lambda!266733 lambda!266730)))

(declare-fun bs!1224019 () Bool)

(assert (= bs!1224019 (and d!1699488 b!5278704)))

(assert (=> bs!1224019 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266733 lambda!266558))))

(declare-fun bs!1224020 () Bool)

(assert (= bs!1224020 (and d!1699488 d!1698932)))

(assert (=> bs!1224020 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266733 lambda!266625))))

(declare-fun bs!1224021 () Bool)

(assert (= bs!1224021 (and d!1699488 d!1698976)))

(assert (=> bs!1224021 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266733 lambda!266635))))

(declare-fun bs!1224022 () Bool)

(assert (= bs!1224022 (and d!1699488 d!1699432)))

(assert (=> bs!1224022 (= lambda!266733 lambda!266717)))

(assert (=> d!1699488 true))

(assert (=> d!1699488 (= (derivationStepZipper!1144 lt!2158088 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158088 lambda!266733))))

(declare-fun bs!1224023 () Bool)

(assert (= bs!1224023 d!1699488))

(declare-fun m!6318528 () Bool)

(assert (=> bs!1224023 m!6318528))

(assert (=> b!5279531 d!1699488))

(assert (=> b!5279531 d!1699434))

(assert (=> b!5279531 d!1699436))

(declare-fun bs!1224024 () Bool)

(declare-fun d!1699490 () Bool)

(assert (= bs!1224024 (and d!1699490 b!5278732)))

(declare-fun lambda!266734 () Int)

(assert (=> bs!1224024 (= lambda!266734 lambda!266559)))

(declare-fun bs!1224025 () Bool)

(assert (= bs!1224025 (and d!1699490 d!1698954)))

(assert (=> bs!1224025 (= lambda!266734 lambda!266631)))

(declare-fun bs!1224026 () Bool)

(assert (= bs!1224026 (and d!1699490 d!1698998)))

(assert (=> bs!1224026 (= lambda!266734 lambda!266639)))

(declare-fun bs!1224027 () Bool)

(assert (= bs!1224027 (and d!1699490 d!1699464)))

(assert (=> bs!1224027 (= lambda!266734 lambda!266731)))

(declare-fun bs!1224028 () Bool)

(assert (= bs!1224028 (and d!1699490 b!5280464)))

(assert (=> bs!1224028 (not (= lambda!266734 lambda!266722))))

(declare-fun bs!1224029 () Bool)

(assert (= bs!1224029 (and d!1699490 d!1698952)))

(assert (=> bs!1224029 (= lambda!266734 lambda!266628)))

(declare-fun bs!1224030 () Bool)

(assert (= bs!1224030 (and d!1699490 d!1699002)))

(assert (=> bs!1224030 (= lambda!266734 lambda!266640)))

(declare-fun bs!1224031 () Bool)

(assert (= bs!1224031 (and d!1699490 b!5280466)))

(assert (=> bs!1224031 (not (= lambda!266734 lambda!266723))))

(declare-fun bs!1224032 () Bool)

(assert (= bs!1224032 (and d!1699490 d!1698990)))

(assert (=> bs!1224032 (= lambda!266734 lambda!266638)))

(declare-fun bs!1224033 () Bool)

(assert (= bs!1224033 (and d!1699490 d!1698956)))

(assert (=> bs!1224033 (= lambda!266734 lambda!266634)))

(declare-fun bs!1224034 () Bool)

(assert (= bs!1224034 (and d!1699490 d!1699422)))

(assert (=> bs!1224034 (= lambda!266734 lambda!266715)))

(assert (=> d!1699490 (= (inv!80499 (h!67328 (t!374205 zl!343))) (forall!14309 (exprs!4785 (h!67328 (t!374205 zl!343))) lambda!266734))))

(declare-fun bs!1224035 () Bool)

(assert (= bs!1224035 d!1699490))

(declare-fun m!6318530 () Bool)

(assert (=> bs!1224035 m!6318530))

(assert (=> b!5279645 d!1699490))

(assert (=> d!1698996 d!1698994))

(assert (=> d!1698996 d!1698992))

(declare-fun d!1699492 () Bool)

(assert (=> d!1699492 (= (matchR!7086 lt!2158076 s!2326) (matchZipper!1145 lt!2158064 s!2326))))

(assert (=> d!1699492 true))

(declare-fun _$44!1388 () Unit!153122)

(assert (=> d!1699492 (= (choose!39399 lt!2158064 lt!2158083 lt!2158076 s!2326) _$44!1388)))

(declare-fun bs!1224036 () Bool)

(assert (= bs!1224036 d!1699492))

(assert (=> bs!1224036 m!6316848))

(assert (=> bs!1224036 m!6316846))

(assert (=> d!1698996 d!1699492))

(declare-fun b!5280524 () Bool)

(declare-fun e!3283448 () Bool)

(declare-fun call!376023 () Bool)

(assert (=> b!5280524 (= e!3283448 call!376023)))

(declare-fun call!376025 () Bool)

(declare-fun c!915380 () Bool)

(declare-fun bm!376018 () Bool)

(declare-fun c!915379 () Bool)

(assert (=> bm!376018 (= call!376025 (validRegex!6637 (ite c!915379 (reg!15230 lt!2158076) (ite c!915380 (regOne!30315 lt!2158076) (regOne!30314 lt!2158076)))))))

(declare-fun b!5280525 () Bool)

(declare-fun res!2239466 () Bool)

(declare-fun e!3283449 () Bool)

(assert (=> b!5280525 (=> (not res!2239466) (not e!3283449))))

(declare-fun call!376024 () Bool)

(assert (=> b!5280525 (= res!2239466 call!376024)))

(declare-fun e!3283446 () Bool)

(assert (=> b!5280525 (= e!3283446 e!3283449)))

(declare-fun b!5280526 () Bool)

(declare-fun e!3283447 () Bool)

(declare-fun e!3283452 () Bool)

(assert (=> b!5280526 (= e!3283447 e!3283452)))

(declare-fun res!2239462 () Bool)

(assert (=> b!5280526 (= res!2239462 (not (nullable!5070 (reg!15230 lt!2158076))))))

(assert (=> b!5280526 (=> (not res!2239462) (not e!3283452))))

(declare-fun b!5280527 () Bool)

(declare-fun res!2239464 () Bool)

(declare-fun e!3283451 () Bool)

(assert (=> b!5280527 (=> res!2239464 e!3283451)))

(assert (=> b!5280527 (= res!2239464 (not ((_ is Concat!23746) lt!2158076)))))

(assert (=> b!5280527 (= e!3283446 e!3283451)))

(declare-fun b!5280528 () Bool)

(assert (=> b!5280528 (= e!3283451 e!3283448)))

(declare-fun res!2239465 () Bool)

(assert (=> b!5280528 (=> (not res!2239465) (not e!3283448))))

(assert (=> b!5280528 (= res!2239465 call!376024)))

(declare-fun b!5280529 () Bool)

(assert (=> b!5280529 (= e!3283452 call!376025)))

(declare-fun b!5280530 () Bool)

(declare-fun e!3283450 () Bool)

(assert (=> b!5280530 (= e!3283450 e!3283447)))

(assert (=> b!5280530 (= c!915379 ((_ is Star!14901) lt!2158076))))

(declare-fun b!5280531 () Bool)

(assert (=> b!5280531 (= e!3283449 call!376023)))

(declare-fun b!5280532 () Bool)

(assert (=> b!5280532 (= e!3283447 e!3283446)))

(assert (=> b!5280532 (= c!915380 ((_ is Union!14901) lt!2158076))))

(declare-fun bm!376020 () Bool)

(assert (=> bm!376020 (= call!376023 (validRegex!6637 (ite c!915380 (regTwo!30315 lt!2158076) (regTwo!30314 lt!2158076))))))

(declare-fun d!1699494 () Bool)

(declare-fun res!2239463 () Bool)

(assert (=> d!1699494 (=> res!2239463 e!3283450)))

(assert (=> d!1699494 (= res!2239463 ((_ is ElementMatch!14901) lt!2158076))))

(assert (=> d!1699494 (= (validRegex!6637 lt!2158076) e!3283450)))

(declare-fun bm!376019 () Bool)

(assert (=> bm!376019 (= call!376024 call!376025)))

(assert (= (and d!1699494 (not res!2239463)) b!5280530))

(assert (= (and b!5280530 c!915379) b!5280526))

(assert (= (and b!5280530 (not c!915379)) b!5280532))

(assert (= (and b!5280526 res!2239462) b!5280529))

(assert (= (and b!5280532 c!915380) b!5280525))

(assert (= (and b!5280532 (not c!915380)) b!5280527))

(assert (= (and b!5280525 res!2239466) b!5280531))

(assert (= (and b!5280527 (not res!2239464)) b!5280528))

(assert (= (and b!5280528 res!2239465) b!5280524))

(assert (= (or b!5280531 b!5280524) bm!376020))

(assert (= (or b!5280525 b!5280528) bm!376019))

(assert (= (or b!5280529 bm!376019) bm!376018))

(declare-fun m!6318532 () Bool)

(assert (=> bm!376018 m!6318532))

(declare-fun m!6318534 () Bool)

(assert (=> b!5280526 m!6318534))

(declare-fun m!6318536 () Bool)

(assert (=> bm!376020 m!6318536))

(assert (=> d!1698996 d!1699494))

(declare-fun d!1699496 () Bool)

(declare-fun c!915381 () Bool)

(assert (=> d!1699496 (= c!915381 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283453 () Bool)

(assert (=> d!1699496 (= (matchZipper!1145 (derivationStepZipper!1144 ((_ map or) lt!2158061 lt!2158070) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283453)))

(declare-fun b!5280533 () Bool)

(assert (=> b!5280533 (= e!3283453 (nullableZipper!1298 (derivationStepZipper!1144 ((_ map or) lt!2158061 lt!2158070) (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280534 () Bool)

(assert (=> b!5280534 (= e!3283453 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 ((_ map or) lt!2158061 lt!2158070) (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699496 c!915381) b!5280533))

(assert (= (and d!1699496 (not c!915381)) b!5280534))

(assert (=> d!1699496 m!6317240))

(assert (=> d!1699496 m!6318412))

(assert (=> b!5280533 m!6317454))

(declare-fun m!6318538 () Bool)

(assert (=> b!5280533 m!6318538))

(assert (=> b!5280534 m!6317240))

(assert (=> b!5280534 m!6318416))

(assert (=> b!5280534 m!6317454))

(assert (=> b!5280534 m!6318416))

(declare-fun m!6318540 () Bool)

(assert (=> b!5280534 m!6318540))

(assert (=> b!5280534 m!6317240))

(assert (=> b!5280534 m!6318420))

(assert (=> b!5280534 m!6318540))

(assert (=> b!5280534 m!6318420))

(declare-fun m!6318542 () Bool)

(assert (=> b!5280534 m!6318542))

(assert (=> b!5279502 d!1699496))

(declare-fun bs!1224037 () Bool)

(declare-fun d!1699498 () Bool)

(assert (= bs!1224037 (and d!1699498 d!1699460)))

(declare-fun lambda!266735 () Int)

(assert (=> bs!1224037 (= lambda!266735 lambda!266730)))

(declare-fun bs!1224038 () Bool)

(assert (= bs!1224038 (and d!1699498 d!1699488)))

(assert (=> bs!1224038 (= lambda!266735 lambda!266733)))

(declare-fun bs!1224039 () Bool)

(assert (= bs!1224039 (and d!1699498 b!5278704)))

(assert (=> bs!1224039 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266735 lambda!266558))))

(declare-fun bs!1224040 () Bool)

(assert (= bs!1224040 (and d!1699498 d!1698932)))

(assert (=> bs!1224040 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266735 lambda!266625))))

(declare-fun bs!1224041 () Bool)

(assert (= bs!1224041 (and d!1699498 d!1698976)))

(assert (=> bs!1224041 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266735 lambda!266635))))

(declare-fun bs!1224042 () Bool)

(assert (= bs!1224042 (and d!1699498 d!1699432)))

(assert (=> bs!1224042 (= lambda!266735 lambda!266717)))

(assert (=> d!1699498 true))

(assert (=> d!1699498 (= (derivationStepZipper!1144 ((_ map or) lt!2158061 lt!2158070) (head!11314 (t!374203 s!2326))) (flatMap!628 ((_ map or) lt!2158061 lt!2158070) lambda!266735))))

(declare-fun bs!1224043 () Bool)

(assert (= bs!1224043 d!1699498))

(declare-fun m!6318544 () Bool)

(assert (=> bs!1224043 m!6318544))

(assert (=> b!5279502 d!1699498))

(assert (=> b!5279502 d!1699434))

(assert (=> b!5279502 d!1699436))

(declare-fun bm!376021 () Bool)

(declare-fun call!376026 () Bool)

(assert (=> bm!376021 (= call!376026 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun b!5280535 () Bool)

(declare-fun res!2239469 () Bool)

(declare-fun e!3283458 () Bool)

(assert (=> b!5280535 (=> (not res!2239469) (not e!3283458))))

(assert (=> b!5280535 (= res!2239469 (not call!376026))))

(declare-fun b!5280536 () Bool)

(declare-fun e!3283459 () Bool)

(assert (=> b!5280536 (= e!3283459 (nullable!5070 (derivativeStep!4119 lt!2158076 (head!11314 s!2326))))))

(declare-fun b!5280537 () Bool)

(assert (=> b!5280537 (= e!3283459 (matchR!7086 (derivativeStep!4119 (derivativeStep!4119 lt!2158076 (head!11314 s!2326)) (head!11314 (tail!10411 s!2326))) (tail!10411 (tail!10411 s!2326))))))

(declare-fun b!5280538 () Bool)

(declare-fun e!3283460 () Bool)

(declare-fun lt!2158327 () Bool)

(assert (=> b!5280538 (= e!3283460 (not lt!2158327))))

(declare-fun b!5280539 () Bool)

(declare-fun e!3283455 () Bool)

(declare-fun e!3283454 () Bool)

(assert (=> b!5280539 (= e!3283455 e!3283454)))

(declare-fun res!2239468 () Bool)

(assert (=> b!5280539 (=> (not res!2239468) (not e!3283454))))

(assert (=> b!5280539 (= res!2239468 (not lt!2158327))))

(declare-fun b!5280540 () Bool)

(declare-fun res!2239470 () Bool)

(assert (=> b!5280540 (=> res!2239470 e!3283455)))

(assert (=> b!5280540 (= res!2239470 e!3283458)))

(declare-fun res!2239473 () Bool)

(assert (=> b!5280540 (=> (not res!2239473) (not e!3283458))))

(assert (=> b!5280540 (= res!2239473 lt!2158327)))

(declare-fun b!5280541 () Bool)

(assert (=> b!5280541 (= e!3283458 (= (head!11314 (tail!10411 s!2326)) (c!914851 (derivativeStep!4119 lt!2158076 (head!11314 s!2326)))))))

(declare-fun d!1699500 () Bool)

(declare-fun e!3283457 () Bool)

(assert (=> d!1699500 e!3283457))

(declare-fun c!915384 () Bool)

(assert (=> d!1699500 (= c!915384 ((_ is EmptyExpr!14901) (derivativeStep!4119 lt!2158076 (head!11314 s!2326))))))

(assert (=> d!1699500 (= lt!2158327 e!3283459)))

(declare-fun c!915383 () Bool)

(assert (=> d!1699500 (= c!915383 (isEmpty!32835 (tail!10411 s!2326)))))

(assert (=> d!1699500 (validRegex!6637 (derivativeStep!4119 lt!2158076 (head!11314 s!2326)))))

(assert (=> d!1699500 (= (matchR!7086 (derivativeStep!4119 lt!2158076 (head!11314 s!2326)) (tail!10411 s!2326)) lt!2158327)))

(declare-fun b!5280542 () Bool)

(assert (=> b!5280542 (= e!3283457 (= lt!2158327 call!376026))))

(declare-fun b!5280543 () Bool)

(declare-fun e!3283456 () Bool)

(assert (=> b!5280543 (= e!3283454 e!3283456)))

(declare-fun res!2239472 () Bool)

(assert (=> b!5280543 (=> res!2239472 e!3283456)))

(assert (=> b!5280543 (= res!2239472 call!376026)))

(declare-fun b!5280544 () Bool)

(declare-fun res!2239467 () Bool)

(assert (=> b!5280544 (=> res!2239467 e!3283455)))

(assert (=> b!5280544 (= res!2239467 (not ((_ is ElementMatch!14901) (derivativeStep!4119 lt!2158076 (head!11314 s!2326)))))))

(assert (=> b!5280544 (= e!3283460 e!3283455)))

(declare-fun b!5280545 () Bool)

(declare-fun res!2239471 () Bool)

(assert (=> b!5280545 (=> (not res!2239471) (not e!3283458))))

(assert (=> b!5280545 (= res!2239471 (isEmpty!32835 (tail!10411 (tail!10411 s!2326))))))

(declare-fun b!5280546 () Bool)

(assert (=> b!5280546 (= e!3283457 e!3283460)))

(declare-fun c!915382 () Bool)

(assert (=> b!5280546 (= c!915382 ((_ is EmptyLang!14901) (derivativeStep!4119 lt!2158076 (head!11314 s!2326))))))

(declare-fun b!5280547 () Bool)

(assert (=> b!5280547 (= e!3283456 (not (= (head!11314 (tail!10411 s!2326)) (c!914851 (derivativeStep!4119 lt!2158076 (head!11314 s!2326))))))))

(declare-fun b!5280548 () Bool)

(declare-fun res!2239474 () Bool)

(assert (=> b!5280548 (=> res!2239474 e!3283456)))

(assert (=> b!5280548 (= res!2239474 (not (isEmpty!32835 (tail!10411 (tail!10411 s!2326)))))))

(assert (= (and d!1699500 c!915383) b!5280536))

(assert (= (and d!1699500 (not c!915383)) b!5280537))

(assert (= (and d!1699500 c!915384) b!5280542))

(assert (= (and d!1699500 (not c!915384)) b!5280546))

(assert (= (and b!5280546 c!915382) b!5280538))

(assert (= (and b!5280546 (not c!915382)) b!5280544))

(assert (= (and b!5280544 (not res!2239467)) b!5280540))

(assert (= (and b!5280540 res!2239473) b!5280535))

(assert (= (and b!5280535 res!2239469) b!5280545))

(assert (= (and b!5280545 res!2239471) b!5280541))

(assert (= (and b!5280540 (not res!2239470)) b!5280539))

(assert (= (and b!5280539 res!2239468) b!5280543))

(assert (= (and b!5280543 (not res!2239472)) b!5280548))

(assert (= (and b!5280548 (not res!2239474)) b!5280547))

(assert (= (or b!5280542 b!5280535 b!5280543) bm!376021))

(assert (=> b!5280537 m!6317336))

(declare-fun m!6318546 () Bool)

(assert (=> b!5280537 m!6318546))

(assert (=> b!5280537 m!6317514))

(assert (=> b!5280537 m!6318546))

(declare-fun m!6318548 () Bool)

(assert (=> b!5280537 m!6318548))

(assert (=> b!5280537 m!6317336))

(declare-fun m!6318550 () Bool)

(assert (=> b!5280537 m!6318550))

(assert (=> b!5280537 m!6318548))

(assert (=> b!5280537 m!6318550))

(declare-fun m!6318552 () Bool)

(assert (=> b!5280537 m!6318552))

(assert (=> d!1699500 m!6317336))

(assert (=> d!1699500 m!6317342))

(assert (=> d!1699500 m!6317514))

(declare-fun m!6318554 () Bool)

(assert (=> d!1699500 m!6318554))

(assert (=> bm!376021 m!6317336))

(assert (=> bm!376021 m!6317342))

(assert (=> b!5280536 m!6317514))

(declare-fun m!6318556 () Bool)

(assert (=> b!5280536 m!6318556))

(assert (=> b!5280547 m!6317336))

(assert (=> b!5280547 m!6318546))

(assert (=> b!5280541 m!6317336))

(assert (=> b!5280541 m!6318546))

(assert (=> b!5280548 m!6317336))

(assert (=> b!5280548 m!6318550))

(assert (=> b!5280548 m!6318550))

(declare-fun m!6318558 () Bool)

(assert (=> b!5280548 m!6318558))

(assert (=> b!5280545 m!6317336))

(assert (=> b!5280545 m!6318550))

(assert (=> b!5280545 m!6318550))

(assert (=> b!5280545 m!6318558))

(assert (=> b!5279539 d!1699500))

(declare-fun b!5280569 () Bool)

(declare-fun c!915398 () Bool)

(assert (=> b!5280569 (= c!915398 (nullable!5070 (regOne!30314 lt!2158076)))))

(declare-fun e!3283472 () Regex!14901)

(declare-fun e!3283475 () Regex!14901)

(assert (=> b!5280569 (= e!3283472 e!3283475)))

(declare-fun b!5280570 () Bool)

(declare-fun e!3283471 () Regex!14901)

(assert (=> b!5280570 (= e!3283471 e!3283472)))

(declare-fun c!915396 () Bool)

(assert (=> b!5280570 (= c!915396 ((_ is Star!14901) lt!2158076))))

(declare-fun b!5280571 () Bool)

(declare-fun e!3283474 () Regex!14901)

(assert (=> b!5280571 (= e!3283474 EmptyLang!14901)))

(declare-fun d!1699502 () Bool)

(declare-fun lt!2158330 () Regex!14901)

(assert (=> d!1699502 (validRegex!6637 lt!2158330)))

(assert (=> d!1699502 (= lt!2158330 e!3283474)))

(declare-fun c!915399 () Bool)

(assert (=> d!1699502 (= c!915399 (or ((_ is EmptyExpr!14901) lt!2158076) ((_ is EmptyLang!14901) lt!2158076)))))

(assert (=> d!1699502 (validRegex!6637 lt!2158076)))

(assert (=> d!1699502 (= (derivativeStep!4119 lt!2158076 (head!11314 s!2326)) lt!2158330)))

(declare-fun bm!376030 () Bool)

(declare-fun call!376037 () Regex!14901)

(declare-fun call!376036 () Regex!14901)

(assert (=> bm!376030 (= call!376037 call!376036)))

(declare-fun bm!376031 () Bool)

(declare-fun c!915395 () Bool)

(declare-fun call!376038 () Regex!14901)

(assert (=> bm!376031 (= call!376038 (derivativeStep!4119 (ite c!915395 (regTwo!30315 lt!2158076) (regOne!30314 lt!2158076)) (head!11314 s!2326)))))

(declare-fun b!5280572 () Bool)

(declare-fun e!3283473 () Regex!14901)

(assert (=> b!5280572 (= e!3283473 (ite (= (head!11314 s!2326) (c!914851 lt!2158076)) EmptyExpr!14901 EmptyLang!14901))))

(declare-fun b!5280573 () Bool)

(assert (=> b!5280573 (= e!3283474 e!3283473)))

(declare-fun c!915397 () Bool)

(assert (=> b!5280573 (= c!915397 ((_ is ElementMatch!14901) lt!2158076))))

(declare-fun b!5280574 () Bool)

(declare-fun call!376035 () Regex!14901)

(assert (=> b!5280574 (= e!3283471 (Union!14901 call!376035 call!376038))))

(declare-fun b!5280575 () Bool)

(assert (=> b!5280575 (= c!915395 ((_ is Union!14901) lt!2158076))))

(assert (=> b!5280575 (= e!3283473 e!3283471)))

(declare-fun bm!376032 () Bool)

(assert (=> bm!376032 (= call!376035 (derivativeStep!4119 (ite c!915395 (regOne!30315 lt!2158076) (ite c!915396 (reg!15230 lt!2158076) (ite c!915398 (regTwo!30314 lt!2158076) (regOne!30314 lt!2158076)))) (head!11314 s!2326)))))

(declare-fun b!5280576 () Bool)

(assert (=> b!5280576 (= e!3283475 (Union!14901 (Concat!23746 call!376037 (regTwo!30314 lt!2158076)) EmptyLang!14901))))

(declare-fun b!5280577 () Bool)

(assert (=> b!5280577 (= e!3283475 (Union!14901 (Concat!23746 call!376038 (regTwo!30314 lt!2158076)) call!376037))))

(declare-fun bm!376033 () Bool)

(assert (=> bm!376033 (= call!376036 call!376035)))

(declare-fun b!5280578 () Bool)

(assert (=> b!5280578 (= e!3283472 (Concat!23746 call!376036 lt!2158076))))

(assert (= (and d!1699502 c!915399) b!5280571))

(assert (= (and d!1699502 (not c!915399)) b!5280573))

(assert (= (and b!5280573 c!915397) b!5280572))

(assert (= (and b!5280573 (not c!915397)) b!5280575))

(assert (= (and b!5280575 c!915395) b!5280574))

(assert (= (and b!5280575 (not c!915395)) b!5280570))

(assert (= (and b!5280570 c!915396) b!5280578))

(assert (= (and b!5280570 (not c!915396)) b!5280569))

(assert (= (and b!5280569 c!915398) b!5280577))

(assert (= (and b!5280569 (not c!915398)) b!5280576))

(assert (= (or b!5280577 b!5280576) bm!376030))

(assert (= (or b!5280578 bm!376030) bm!376033))

(assert (= (or b!5280574 b!5280577) bm!376031))

(assert (= (or b!5280574 bm!376033) bm!376032))

(declare-fun m!6318560 () Bool)

(assert (=> b!5280569 m!6318560))

(declare-fun m!6318562 () Bool)

(assert (=> d!1699502 m!6318562))

(assert (=> d!1699502 m!6317518))

(assert (=> bm!376031 m!6317332))

(declare-fun m!6318564 () Bool)

(assert (=> bm!376031 m!6318564))

(assert (=> bm!376032 m!6317332))

(declare-fun m!6318566 () Bool)

(assert (=> bm!376032 m!6318566))

(assert (=> b!5279539 d!1699502))

(declare-fun d!1699504 () Bool)

(assert (=> d!1699504 (= (head!11314 s!2326) (h!67326 s!2326))))

(assert (=> b!5279539 d!1699504))

(assert (=> b!5279539 d!1699426))

(declare-fun bm!376034 () Bool)

(declare-fun call!376039 () Bool)

(assert (=> bm!376034 (= call!376039 (isEmpty!32835 (_2!35403 (get!20934 lt!2158236))))))

(declare-fun b!5280579 () Bool)

(declare-fun res!2239477 () Bool)

(declare-fun e!3283480 () Bool)

(assert (=> b!5280579 (=> (not res!2239477) (not e!3283480))))

(assert (=> b!5280579 (= res!2239477 (not call!376039))))

(declare-fun b!5280580 () Bool)

(declare-fun e!3283481 () Bool)

(assert (=> b!5280580 (= e!3283481 (nullable!5070 (regTwo!30314 r!7292)))))

(declare-fun b!5280581 () Bool)

(assert (=> b!5280581 (= e!3283481 (matchR!7086 (derivativeStep!4119 (regTwo!30314 r!7292) (head!11314 (_2!35403 (get!20934 lt!2158236)))) (tail!10411 (_2!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280582 () Bool)

(declare-fun e!3283482 () Bool)

(declare-fun lt!2158331 () Bool)

(assert (=> b!5280582 (= e!3283482 (not lt!2158331))))

(declare-fun b!5280583 () Bool)

(declare-fun e!3283477 () Bool)

(declare-fun e!3283476 () Bool)

(assert (=> b!5280583 (= e!3283477 e!3283476)))

(declare-fun res!2239476 () Bool)

(assert (=> b!5280583 (=> (not res!2239476) (not e!3283476))))

(assert (=> b!5280583 (= res!2239476 (not lt!2158331))))

(declare-fun b!5280584 () Bool)

(declare-fun res!2239478 () Bool)

(assert (=> b!5280584 (=> res!2239478 e!3283477)))

(assert (=> b!5280584 (= res!2239478 e!3283480)))

(declare-fun res!2239481 () Bool)

(assert (=> b!5280584 (=> (not res!2239481) (not e!3283480))))

(assert (=> b!5280584 (= res!2239481 lt!2158331)))

(declare-fun b!5280585 () Bool)

(assert (=> b!5280585 (= e!3283480 (= (head!11314 (_2!35403 (get!20934 lt!2158236))) (c!914851 (regTwo!30314 r!7292))))))

(declare-fun d!1699506 () Bool)

(declare-fun e!3283479 () Bool)

(assert (=> d!1699506 e!3283479))

(declare-fun c!915402 () Bool)

(assert (=> d!1699506 (= c!915402 ((_ is EmptyExpr!14901) (regTwo!30314 r!7292)))))

(assert (=> d!1699506 (= lt!2158331 e!3283481)))

(declare-fun c!915401 () Bool)

(assert (=> d!1699506 (= c!915401 (isEmpty!32835 (_2!35403 (get!20934 lt!2158236))))))

(assert (=> d!1699506 (validRegex!6637 (regTwo!30314 r!7292))))

(assert (=> d!1699506 (= (matchR!7086 (regTwo!30314 r!7292) (_2!35403 (get!20934 lt!2158236))) lt!2158331)))

(declare-fun b!5280586 () Bool)

(assert (=> b!5280586 (= e!3283479 (= lt!2158331 call!376039))))

(declare-fun b!5280587 () Bool)

(declare-fun e!3283478 () Bool)

(assert (=> b!5280587 (= e!3283476 e!3283478)))

(declare-fun res!2239480 () Bool)

(assert (=> b!5280587 (=> res!2239480 e!3283478)))

(assert (=> b!5280587 (= res!2239480 call!376039)))

(declare-fun b!5280588 () Bool)

(declare-fun res!2239475 () Bool)

(assert (=> b!5280588 (=> res!2239475 e!3283477)))

(assert (=> b!5280588 (= res!2239475 (not ((_ is ElementMatch!14901) (regTwo!30314 r!7292))))))

(assert (=> b!5280588 (= e!3283482 e!3283477)))

(declare-fun b!5280589 () Bool)

(declare-fun res!2239479 () Bool)

(assert (=> b!5280589 (=> (not res!2239479) (not e!3283480))))

(assert (=> b!5280589 (= res!2239479 (isEmpty!32835 (tail!10411 (_2!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280590 () Bool)

(assert (=> b!5280590 (= e!3283479 e!3283482)))

(declare-fun c!915400 () Bool)

(assert (=> b!5280590 (= c!915400 ((_ is EmptyLang!14901) (regTwo!30314 r!7292)))))

(declare-fun b!5280591 () Bool)

(assert (=> b!5280591 (= e!3283478 (not (= (head!11314 (_2!35403 (get!20934 lt!2158236))) (c!914851 (regTwo!30314 r!7292)))))))

(declare-fun b!5280592 () Bool)

(declare-fun res!2239482 () Bool)

(assert (=> b!5280592 (=> res!2239482 e!3283478)))

(assert (=> b!5280592 (= res!2239482 (not (isEmpty!32835 (tail!10411 (_2!35403 (get!20934 lt!2158236))))))))

(assert (= (and d!1699506 c!915401) b!5280580))

(assert (= (and d!1699506 (not c!915401)) b!5280581))

(assert (= (and d!1699506 c!915402) b!5280586))

(assert (= (and d!1699506 (not c!915402)) b!5280590))

(assert (= (and b!5280590 c!915400) b!5280582))

(assert (= (and b!5280590 (not c!915400)) b!5280588))

(assert (= (and b!5280588 (not res!2239475)) b!5280584))

(assert (= (and b!5280584 res!2239481) b!5280579))

(assert (= (and b!5280579 res!2239477) b!5280589))

(assert (= (and b!5280589 res!2239479) b!5280585))

(assert (= (and b!5280584 (not res!2239478)) b!5280583))

(assert (= (and b!5280583 res!2239476) b!5280587))

(assert (= (and b!5280587 (not res!2239480)) b!5280592))

(assert (= (and b!5280592 (not res!2239482)) b!5280591))

(assert (= (or b!5280586 b!5280579 b!5280587) bm!376034))

(declare-fun m!6318568 () Bool)

(assert (=> b!5280581 m!6318568))

(assert (=> b!5280581 m!6318568))

(declare-fun m!6318570 () Bool)

(assert (=> b!5280581 m!6318570))

(declare-fun m!6318572 () Bool)

(assert (=> b!5280581 m!6318572))

(assert (=> b!5280581 m!6318570))

(assert (=> b!5280581 m!6318572))

(declare-fun m!6318574 () Bool)

(assert (=> b!5280581 m!6318574))

(declare-fun m!6318576 () Bool)

(assert (=> d!1699506 m!6318576))

(declare-fun m!6318578 () Bool)

(assert (=> d!1699506 m!6318578))

(assert (=> bm!376034 m!6318576))

(declare-fun m!6318580 () Bool)

(assert (=> b!5280580 m!6318580))

(assert (=> b!5280591 m!6318568))

(assert (=> b!5280585 m!6318568))

(assert (=> b!5280592 m!6318572))

(assert (=> b!5280592 m!6318572))

(declare-fun m!6318582 () Bool)

(assert (=> b!5280592 m!6318582))

(assert (=> b!5280589 m!6318572))

(assert (=> b!5280589 m!6318572))

(assert (=> b!5280589 m!6318582))

(assert (=> b!5279592 d!1699506))

(declare-fun d!1699508 () Bool)

(assert (=> d!1699508 (= (get!20934 lt!2158236) (v!51040 lt!2158236))))

(assert (=> b!5279592 d!1699508))

(declare-fun b!5280593 () Bool)

(declare-fun e!3283485 () Bool)

(declare-fun call!376040 () Bool)

(assert (=> b!5280593 (= e!3283485 call!376040)))

(declare-fun bm!376035 () Bool)

(declare-fun call!376042 () Bool)

(declare-fun c!915403 () Bool)

(declare-fun c!915404 () Bool)

(assert (=> bm!376035 (= call!376042 (validRegex!6637 (ite c!915403 (reg!15230 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))) (ite c!915404 (regOne!30315 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))) (regOne!30314 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292))))))))))

(declare-fun b!5280594 () Bool)

(declare-fun res!2239487 () Bool)

(declare-fun e!3283486 () Bool)

(assert (=> b!5280594 (=> (not res!2239487) (not e!3283486))))

(declare-fun call!376041 () Bool)

(assert (=> b!5280594 (= res!2239487 call!376041)))

(declare-fun e!3283483 () Bool)

(assert (=> b!5280594 (= e!3283483 e!3283486)))

(declare-fun b!5280595 () Bool)

(declare-fun e!3283484 () Bool)

(declare-fun e!3283489 () Bool)

(assert (=> b!5280595 (= e!3283484 e!3283489)))

(declare-fun res!2239483 () Bool)

(assert (=> b!5280595 (= res!2239483 (not (nullable!5070 (reg!15230 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))))

(assert (=> b!5280595 (=> (not res!2239483) (not e!3283489))))

(declare-fun b!5280596 () Bool)

(declare-fun res!2239485 () Bool)

(declare-fun e!3283488 () Bool)

(assert (=> b!5280596 (=> res!2239485 e!3283488)))

(assert (=> b!5280596 (= res!2239485 (not ((_ is Concat!23746) (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292))))))))

(assert (=> b!5280596 (= e!3283483 e!3283488)))

(declare-fun b!5280597 () Bool)

(assert (=> b!5280597 (= e!3283488 e!3283485)))

(declare-fun res!2239486 () Bool)

(assert (=> b!5280597 (=> (not res!2239486) (not e!3283485))))

(assert (=> b!5280597 (= res!2239486 call!376041)))

(declare-fun b!5280598 () Bool)

(assert (=> b!5280598 (= e!3283489 call!376042)))

(declare-fun b!5280599 () Bool)

(declare-fun e!3283487 () Bool)

(assert (=> b!5280599 (= e!3283487 e!3283484)))

(assert (=> b!5280599 (= c!915403 ((_ is Star!14901) (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))

(declare-fun b!5280600 () Bool)

(assert (=> b!5280600 (= e!3283486 call!376040)))

(declare-fun b!5280601 () Bool)

(assert (=> b!5280601 (= e!3283484 e!3283483)))

(assert (=> b!5280601 (= c!915404 ((_ is Union!14901) (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))

(declare-fun bm!376037 () Bool)

(assert (=> bm!376037 (= call!376040 (validRegex!6637 (ite c!915404 (regTwo!30315 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))) (regTwo!30314 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))))

(declare-fun d!1699510 () Bool)

(declare-fun res!2239484 () Bool)

(assert (=> d!1699510 (=> res!2239484 e!3283487)))

(assert (=> d!1699510 (= res!2239484 ((_ is ElementMatch!14901) (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))))))

(assert (=> d!1699510 (= (validRegex!6637 (ite c!915035 (reg!15230 r!7292) (ite c!915036 (regOne!30315 r!7292) (regOne!30314 r!7292)))) e!3283487)))

(declare-fun bm!376036 () Bool)

(assert (=> bm!376036 (= call!376041 call!376042)))

(assert (= (and d!1699510 (not res!2239484)) b!5280599))

(assert (= (and b!5280599 c!915403) b!5280595))

(assert (= (and b!5280599 (not c!915403)) b!5280601))

(assert (= (and b!5280595 res!2239483) b!5280598))

(assert (= (and b!5280601 c!915404) b!5280594))

(assert (= (and b!5280601 (not c!915404)) b!5280596))

(assert (= (and b!5280594 res!2239487) b!5280600))

(assert (= (and b!5280596 (not res!2239485)) b!5280597))

(assert (= (and b!5280597 res!2239486) b!5280593))

(assert (= (or b!5280600 b!5280593) bm!376037))

(assert (= (or b!5280594 b!5280597) bm!376036))

(assert (= (or b!5280598 bm!376036) bm!376035))

(declare-fun m!6318584 () Bool)

(assert (=> bm!376035 m!6318584))

(declare-fun m!6318586 () Bool)

(assert (=> b!5280595 m!6318586))

(declare-fun m!6318588 () Bool)

(assert (=> bm!376037 m!6318588))

(assert (=> bm!375815 d!1699510))

(assert (=> b!5279543 d!1699504))

(declare-fun d!1699512 () Bool)

(assert (=> d!1699512 (= (isEmptyLang!841 lt!2158209) ((_ is EmptyLang!14901) lt!2158209))))

(assert (=> b!5279446 d!1699512))

(assert (=> bm!375826 d!1699480))

(declare-fun bs!1224044 () Bool)

(declare-fun d!1699514 () Bool)

(assert (= bs!1224044 (and d!1699514 d!1699490)))

(declare-fun lambda!266736 () Int)

(assert (=> bs!1224044 (= lambda!266736 lambda!266734)))

(declare-fun bs!1224045 () Bool)

(assert (= bs!1224045 (and d!1699514 b!5278732)))

(assert (=> bs!1224045 (= lambda!266736 lambda!266559)))

(declare-fun bs!1224046 () Bool)

(assert (= bs!1224046 (and d!1699514 d!1698954)))

(assert (=> bs!1224046 (= lambda!266736 lambda!266631)))

(declare-fun bs!1224047 () Bool)

(assert (= bs!1224047 (and d!1699514 d!1698998)))

(assert (=> bs!1224047 (= lambda!266736 lambda!266639)))

(declare-fun bs!1224048 () Bool)

(assert (= bs!1224048 (and d!1699514 d!1699464)))

(assert (=> bs!1224048 (= lambda!266736 lambda!266731)))

(declare-fun bs!1224049 () Bool)

(assert (= bs!1224049 (and d!1699514 b!5280464)))

(assert (=> bs!1224049 (not (= lambda!266736 lambda!266722))))

(declare-fun bs!1224050 () Bool)

(assert (= bs!1224050 (and d!1699514 d!1698952)))

(assert (=> bs!1224050 (= lambda!266736 lambda!266628)))

(declare-fun bs!1224051 () Bool)

(assert (= bs!1224051 (and d!1699514 d!1699002)))

(assert (=> bs!1224051 (= lambda!266736 lambda!266640)))

(declare-fun bs!1224052 () Bool)

(assert (= bs!1224052 (and d!1699514 b!5280466)))

(assert (=> bs!1224052 (not (= lambda!266736 lambda!266723))))

(declare-fun bs!1224053 () Bool)

(assert (= bs!1224053 (and d!1699514 d!1698990)))

(assert (=> bs!1224053 (= lambda!266736 lambda!266638)))

(declare-fun bs!1224054 () Bool)

(assert (= bs!1224054 (and d!1699514 d!1698956)))

(assert (=> bs!1224054 (= lambda!266736 lambda!266634)))

(declare-fun bs!1224055 () Bool)

(assert (= bs!1224055 (and d!1699514 d!1699422)))

(assert (=> bs!1224055 (= lambda!266736 lambda!266715)))

(declare-fun e!3283493 () Bool)

(assert (=> d!1699514 e!3283493))

(declare-fun res!2239489 () Bool)

(assert (=> d!1699514 (=> (not res!2239489) (not e!3283493))))

(declare-fun lt!2158332 () Regex!14901)

(assert (=> d!1699514 (= res!2239489 (validRegex!6637 lt!2158332))))

(declare-fun e!3283492 () Regex!14901)

(assert (=> d!1699514 (= lt!2158332 e!3283492)))

(declare-fun c!915407 () Bool)

(declare-fun e!3283494 () Bool)

(assert (=> d!1699514 (= c!915407 e!3283494)))

(declare-fun res!2239488 () Bool)

(assert (=> d!1699514 (=> (not res!2239488) (not e!3283494))))

(assert (=> d!1699514 (= res!2239488 ((_ is Cons!60879) (t!374204 (unfocusZipperList!343 zl!343))))))

(assert (=> d!1699514 (forall!14309 (t!374204 (unfocusZipperList!343 zl!343)) lambda!266736)))

(assert (=> d!1699514 (= (generalisedUnion!830 (t!374204 (unfocusZipperList!343 zl!343))) lt!2158332)))

(declare-fun b!5280602 () Bool)

(declare-fun e!3283491 () Bool)

(assert (=> b!5280602 (= e!3283491 (= lt!2158332 (head!11315 (t!374204 (unfocusZipperList!343 zl!343)))))))

(declare-fun b!5280603 () Bool)

(assert (=> b!5280603 (= e!3283491 (isUnion!273 lt!2158332))))

(declare-fun b!5280604 () Bool)

(declare-fun e!3283490 () Bool)

(assert (=> b!5280604 (= e!3283490 (isEmptyLang!841 lt!2158332))))

(declare-fun b!5280605 () Bool)

(assert (=> b!5280605 (= e!3283493 e!3283490)))

(declare-fun c!915405 () Bool)

(assert (=> b!5280605 (= c!915405 (isEmpty!32831 (t!374204 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5280606 () Bool)

(declare-fun e!3283495 () Regex!14901)

(assert (=> b!5280606 (= e!3283495 EmptyLang!14901)))

(declare-fun b!5280607 () Bool)

(assert (=> b!5280607 (= e!3283495 (Union!14901 (h!67327 (t!374204 (unfocusZipperList!343 zl!343))) (generalisedUnion!830 (t!374204 (t!374204 (unfocusZipperList!343 zl!343))))))))

(declare-fun b!5280608 () Bool)

(assert (=> b!5280608 (= e!3283494 (isEmpty!32831 (t!374204 (t!374204 (unfocusZipperList!343 zl!343)))))))

(declare-fun b!5280609 () Bool)

(assert (=> b!5280609 (= e!3283492 e!3283495)))

(declare-fun c!915408 () Bool)

(assert (=> b!5280609 (= c!915408 ((_ is Cons!60879) (t!374204 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5280610 () Bool)

(assert (=> b!5280610 (= e!3283490 e!3283491)))

(declare-fun c!915406 () Bool)

(assert (=> b!5280610 (= c!915406 (isEmpty!32831 (tail!10412 (t!374204 (unfocusZipperList!343 zl!343)))))))

(declare-fun b!5280611 () Bool)

(assert (=> b!5280611 (= e!3283492 (h!67327 (t!374204 (unfocusZipperList!343 zl!343))))))

(assert (= (and d!1699514 res!2239488) b!5280608))

(assert (= (and d!1699514 c!915407) b!5280611))

(assert (= (and d!1699514 (not c!915407)) b!5280609))

(assert (= (and b!5280609 c!915408) b!5280607))

(assert (= (and b!5280609 (not c!915408)) b!5280606))

(assert (= (and d!1699514 res!2239489) b!5280605))

(assert (= (and b!5280605 c!915405) b!5280604))

(assert (= (and b!5280605 (not c!915405)) b!5280610))

(assert (= (and b!5280610 c!915406) b!5280602))

(assert (= (and b!5280610 (not c!915406)) b!5280603))

(assert (=> b!5280605 m!6317408))

(declare-fun m!6318590 () Bool)

(assert (=> d!1699514 m!6318590))

(declare-fun m!6318592 () Bool)

(assert (=> d!1699514 m!6318592))

(declare-fun m!6318594 () Bool)

(assert (=> b!5280603 m!6318594))

(declare-fun m!6318596 () Bool)

(assert (=> b!5280610 m!6318596))

(assert (=> b!5280610 m!6318596))

(declare-fun m!6318598 () Bool)

(assert (=> b!5280610 m!6318598))

(declare-fun m!6318600 () Bool)

(assert (=> b!5280604 m!6318600))

(declare-fun m!6318602 () Bool)

(assert (=> b!5280608 m!6318602))

(declare-fun m!6318604 () Bool)

(assert (=> b!5280602 m!6318604))

(declare-fun m!6318606 () Bool)

(assert (=> b!5280607 m!6318606))

(assert (=> b!5279449 d!1699514))

(declare-fun d!1699516 () Bool)

(declare-fun res!2239494 () Bool)

(declare-fun e!3283500 () Bool)

(assert (=> d!1699516 (=> res!2239494 e!3283500)))

(assert (=> d!1699516 (= res!2239494 ((_ is Nil!60880) lt!2158173))))

(assert (=> d!1699516 (= (noDuplicate!1253 lt!2158173) e!3283500)))

(declare-fun b!5280616 () Bool)

(declare-fun e!3283501 () Bool)

(assert (=> b!5280616 (= e!3283500 e!3283501)))

(declare-fun res!2239495 () Bool)

(assert (=> b!5280616 (=> (not res!2239495) (not e!3283501))))

(declare-fun contains!19701 (List!61004 Context!8570) Bool)

(assert (=> b!5280616 (= res!2239495 (not (contains!19701 (t!374205 lt!2158173) (h!67328 lt!2158173))))))

(declare-fun b!5280617 () Bool)

(assert (=> b!5280617 (= e!3283501 (noDuplicate!1253 (t!374205 lt!2158173)))))

(assert (= (and d!1699516 (not res!2239494)) b!5280616))

(assert (= (and b!5280616 res!2239495) b!5280617))

(declare-fun m!6318608 () Bool)

(assert (=> b!5280616 m!6318608))

(declare-fun m!6318610 () Bool)

(assert (=> b!5280617 m!6318610))

(assert (=> d!1698902 d!1699516))

(declare-fun d!1699518 () Bool)

(declare-fun e!3283508 () Bool)

(assert (=> d!1699518 e!3283508))

(declare-fun res!2239500 () Bool)

(assert (=> d!1699518 (=> (not res!2239500) (not e!3283508))))

(declare-fun res!2239501 () List!61004)

(assert (=> d!1699518 (= res!2239500 (noDuplicate!1253 res!2239501))))

(declare-fun e!3283510 () Bool)

(assert (=> d!1699518 e!3283510))

(assert (=> d!1699518 (= (choose!39394 z!1189) res!2239501)))

(declare-fun b!5280625 () Bool)

(declare-fun e!3283509 () Bool)

(declare-fun tp!1475199 () Bool)

(assert (=> b!5280625 (= e!3283509 tp!1475199)))

(declare-fun b!5280624 () Bool)

(declare-fun tp!1475198 () Bool)

(assert (=> b!5280624 (= e!3283510 (and (inv!80499 (h!67328 res!2239501)) e!3283509 tp!1475198))))

(declare-fun b!5280626 () Bool)

(assert (=> b!5280626 (= e!3283508 (= (content!10837 res!2239501) z!1189))))

(assert (= b!5280624 b!5280625))

(assert (= (and d!1699518 ((_ is Cons!60880) res!2239501)) b!5280624))

(assert (= (and d!1699518 res!2239500) b!5280626))

(declare-fun m!6318612 () Bool)

(assert (=> d!1699518 m!6318612))

(declare-fun m!6318614 () Bool)

(assert (=> b!5280624 m!6318614))

(declare-fun m!6318616 () Bool)

(assert (=> b!5280626 m!6318616))

(assert (=> d!1698902 d!1699518))

(declare-fun bs!1224056 () Bool)

(declare-fun d!1699520 () Bool)

(assert (= bs!1224056 (and d!1699520 d!1699402)))

(declare-fun lambda!266737 () Int)

(assert (=> bs!1224056 (= lambda!266737 lambda!266714)))

(declare-fun bs!1224057 () Bool)

(assert (= bs!1224057 (and d!1699520 d!1699400)))

(assert (=> bs!1224057 (= lambda!266737 lambda!266713)))

(declare-fun bs!1224058 () Bool)

(assert (= bs!1224058 (and d!1699520 b!5280471)))

(assert (=> bs!1224058 (not (= lambda!266737 lambda!266726))))

(declare-fun bs!1224059 () Bool)

(assert (= bs!1224059 (and d!1699520 b!5279222)))

(assert (=> bs!1224059 (not (= lambda!266737 lambda!266613))))

(declare-fun bs!1224060 () Bool)

(assert (= bs!1224060 (and d!1699520 d!1699454)))

(assert (=> bs!1224060 (not (= lambda!266737 lambda!266729))))

(declare-fun bs!1224061 () Bool)

(assert (= bs!1224061 (and d!1699520 b!5279220)))

(assert (=> bs!1224061 (not (= lambda!266737 lambda!266612))))

(declare-fun bs!1224062 () Bool)

(assert (= bs!1224062 (and d!1699520 b!5279227)))

(assert (=> bs!1224062 (not (= lambda!266737 lambda!266616))))

(declare-fun bs!1224063 () Bool)

(assert (= bs!1224063 (and d!1699520 b!5279225)))

(assert (=> bs!1224063 (not (= lambda!266737 lambda!266615))))

(declare-fun bs!1224064 () Bool)

(assert (= bs!1224064 (and d!1699520 d!1699428)))

(assert (=> bs!1224064 (= lambda!266737 lambda!266716)))

(declare-fun bs!1224065 () Bool)

(assert (= bs!1224065 (and d!1699520 b!5280469)))

(assert (=> bs!1224065 (not (= lambda!266737 lambda!266725))))

(declare-fun bs!1224066 () Bool)

(assert (= bs!1224066 (and d!1699520 d!1699476)))

(assert (=> bs!1224066 (= lambda!266737 lambda!266732)))

(assert (=> d!1699520 (= (nullableZipper!1298 lt!2158089) (exists!2001 lt!2158089 lambda!266737))))

(declare-fun bs!1224067 () Bool)

(assert (= bs!1224067 d!1699520))

(declare-fun m!6318618 () Bool)

(assert (=> bs!1224067 m!6318618))

(assert (=> b!5279532 d!1699520))

(declare-fun b!5280627 () Bool)

(declare-fun e!3283513 () (InoxSet Context!8570))

(assert (=> b!5280627 (= e!3283513 (store ((as const (Array Context!8570 Bool)) false) (Context!8571 (t!374204 (exprs!4785 lt!2158063))) true))))

(declare-fun b!5280628 () Bool)

(declare-fun e!3283514 () (InoxSet Context!8570))

(declare-fun call!376046 () (InoxSet Context!8570))

(assert (=> b!5280628 (= e!3283514 call!376046)))

(declare-fun b!5280629 () Bool)

(declare-fun e!3283516 () (InoxSet Context!8570))

(assert (=> b!5280629 (= e!3283516 e!3283514)))

(declare-fun c!915412 () Bool)

(assert (=> b!5280629 (= c!915412 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158063))))))

(declare-fun c!915410 () Bool)

(declare-fun call!376047 () (InoxSet Context!8570))

(declare-fun bm!376038 () Bool)

(declare-fun call!376044 () List!61003)

(assert (=> bm!376038 (= call!376047 (derivationStepZipperDown!349 (ite c!915410 (regTwo!30315 (h!67327 (exprs!4785 lt!2158063))) (regOne!30314 (h!67327 (exprs!4785 lt!2158063)))) (ite c!915410 (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (Context!8571 call!376044)) (h!67326 s!2326)))))

(declare-fun call!376045 () (InoxSet Context!8570))

(declare-fun c!915411 () Bool)

(declare-fun call!376043 () List!61003)

(declare-fun bm!376039 () Bool)

(assert (=> bm!376039 (= call!376045 (derivationStepZipperDown!349 (ite c!915410 (regOne!30315 (h!67327 (exprs!4785 lt!2158063))) (ite c!915411 (regTwo!30314 (h!67327 (exprs!4785 lt!2158063))) (ite c!915412 (regOne!30314 (h!67327 (exprs!4785 lt!2158063))) (reg!15230 (h!67327 (exprs!4785 lt!2158063)))))) (ite (or c!915410 c!915411) (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (Context!8571 call!376043)) (h!67326 s!2326)))))

(declare-fun b!5280630 () Bool)

(declare-fun e!3283511 () (InoxSet Context!8570))

(assert (=> b!5280630 (= e!3283511 ((_ map or) call!376045 call!376047))))

(declare-fun bm!376040 () Bool)

(assert (=> bm!376040 (= call!376043 call!376044)))

(declare-fun d!1699522 () Bool)

(declare-fun c!915409 () Bool)

(assert (=> d!1699522 (= c!915409 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 lt!2158063))) (= (c!914851 (h!67327 (exprs!4785 lt!2158063))) (h!67326 s!2326))))))

(assert (=> d!1699522 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158063)) (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (h!67326 s!2326)) e!3283513)))

(declare-fun b!5280631 () Bool)

(declare-fun e!3283515 () Bool)

(assert (=> b!5280631 (= e!3283515 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 lt!2158063)))))))

(declare-fun b!5280632 () Bool)

(assert (=> b!5280632 (= e!3283513 e!3283511)))

(assert (=> b!5280632 (= c!915410 ((_ is Union!14901) (h!67327 (exprs!4785 lt!2158063))))))

(declare-fun b!5280633 () Bool)

(declare-fun call!376048 () (InoxSet Context!8570))

(assert (=> b!5280633 (= e!3283516 ((_ map or) call!376047 call!376048))))

(declare-fun b!5280634 () Bool)

(assert (=> b!5280634 (= c!915411 e!3283515)))

(declare-fun res!2239502 () Bool)

(assert (=> b!5280634 (=> (not res!2239502) (not e!3283515))))

(assert (=> b!5280634 (= res!2239502 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158063))))))

(assert (=> b!5280634 (= e!3283511 e!3283516)))

(declare-fun bm!376041 () Bool)

(assert (=> bm!376041 (= call!376044 ($colon$colon!1348 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063)))) (ite (or c!915411 c!915412) (regTwo!30314 (h!67327 (exprs!4785 lt!2158063))) (h!67327 (exprs!4785 lt!2158063)))))))

(declare-fun b!5280635 () Bool)

(declare-fun e!3283512 () (InoxSet Context!8570))

(assert (=> b!5280635 (= e!3283512 call!376046)))

(declare-fun bm!376042 () Bool)

(assert (=> bm!376042 (= call!376048 call!376045)))

(declare-fun b!5280636 () Bool)

(assert (=> b!5280636 (= e!3283512 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280637 () Bool)

(declare-fun c!915413 () Bool)

(assert (=> b!5280637 (= c!915413 ((_ is Star!14901) (h!67327 (exprs!4785 lt!2158063))))))

(assert (=> b!5280637 (= e!3283514 e!3283512)))

(declare-fun bm!376043 () Bool)

(assert (=> bm!376043 (= call!376046 call!376048)))

(assert (= (and d!1699522 c!915409) b!5280627))

(assert (= (and d!1699522 (not c!915409)) b!5280632))

(assert (= (and b!5280632 c!915410) b!5280630))

(assert (= (and b!5280632 (not c!915410)) b!5280634))

(assert (= (and b!5280634 res!2239502) b!5280631))

(assert (= (and b!5280634 c!915411) b!5280633))

(assert (= (and b!5280634 (not c!915411)) b!5280629))

(assert (= (and b!5280629 c!915412) b!5280628))

(assert (= (and b!5280629 (not c!915412)) b!5280637))

(assert (= (and b!5280637 c!915413) b!5280635))

(assert (= (and b!5280637 (not c!915413)) b!5280636))

(assert (= (or b!5280628 b!5280635) bm!376040))

(assert (= (or b!5280628 b!5280635) bm!376043))

(assert (= (or b!5280633 bm!376040) bm!376041))

(assert (= (or b!5280633 bm!376043) bm!376042))

(assert (= (or b!5280630 b!5280633) bm!376038))

(assert (= (or b!5280630 bm!376042) bm!376039))

(declare-fun m!6318620 () Bool)

(assert (=> bm!376039 m!6318620))

(declare-fun m!6318622 () Bool)

(assert (=> bm!376038 m!6318622))

(declare-fun m!6318624 () Bool)

(assert (=> b!5280627 m!6318624))

(declare-fun m!6318626 () Bool)

(assert (=> b!5280631 m!6318626))

(declare-fun m!6318628 () Bool)

(assert (=> bm!376041 m!6318628))

(assert (=> bm!375827 d!1699522))

(assert (=> b!5279550 d!1699424))

(assert (=> b!5279550 d!1699426))

(declare-fun b!5280654 () Bool)

(declare-fun e!3283525 () Int)

(assert (=> b!5280654 (= e!3283525 1)))

(declare-fun b!5280655 () Bool)

(declare-fun c!915422 () Bool)

(assert (=> b!5280655 (= c!915422 ((_ is Union!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun e!3283528 () Int)

(declare-fun e!3283526 () Int)

(assert (=> b!5280655 (= e!3283528 e!3283526)))

(declare-fun b!5280656 () Bool)

(declare-fun e!3283527 () Int)

(declare-fun call!376055 () Int)

(declare-fun call!376056 () Int)

(assert (=> b!5280656 (= e!3283527 (+ 1 call!376055 call!376056))))

(declare-fun bm!376050 () Bool)

(declare-fun call!376057 () Int)

(assert (=> bm!376050 (= call!376055 call!376057)))

(declare-fun b!5280657 () Bool)

(assert (=> b!5280657 (= e!3283526 e!3283527)))

(declare-fun c!915423 () Bool)

(assert (=> b!5280657 (= c!915423 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun c!915424 () Bool)

(declare-fun bm!376051 () Bool)

(assert (=> bm!376051 (= call!376057 (regexDepthTotal!10 (ite c!915424 (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915422 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun b!5280658 () Bool)

(assert (=> b!5280658 (= e!3283528 (+ 1 call!376057))))

(declare-fun d!1699524 () Bool)

(declare-fun lt!2158335 () Int)

(assert (=> d!1699524 (> lt!2158335 0)))

(assert (=> d!1699524 (= lt!2158335 e!3283525)))

(declare-fun c!915425 () Bool)

(assert (=> d!1699524 (= c!915425 ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> d!1699524 (= (regexDepthTotal!10 (h!67327 (exprs!4785 (h!67328 zl!343)))) lt!2158335)))

(declare-fun b!5280659 () Bool)

(assert (=> b!5280659 (= e!3283527 1)))

(declare-fun b!5280660 () Bool)

(assert (=> b!5280660 (= e!3283525 e!3283528)))

(assert (=> b!5280660 (= c!915424 ((_ is Star!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280661 () Bool)

(assert (=> b!5280661 (= e!3283526 (+ 1 call!376055 call!376056))))

(declare-fun bm!376052 () Bool)

(assert (=> bm!376052 (= call!376056 (regexDepthTotal!10 (ite c!915422 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(assert (= (and d!1699524 c!915425) b!5280654))

(assert (= (and d!1699524 (not c!915425)) b!5280660))

(assert (= (and b!5280660 c!915424) b!5280658))

(assert (= (and b!5280660 (not c!915424)) b!5280655))

(assert (= (and b!5280655 c!915422) b!5280661))

(assert (= (and b!5280655 (not c!915422)) b!5280657))

(assert (= (and b!5280657 c!915423) b!5280656))

(assert (= (and b!5280657 (not c!915423)) b!5280659))

(assert (= (or b!5280661 b!5280656) bm!376052))

(assert (= (or b!5280661 b!5280656) bm!376050))

(assert (= (or b!5280658 bm!376050) bm!376051))

(declare-fun m!6318630 () Bool)

(assert (=> bm!376051 m!6318630))

(declare-fun m!6318632 () Bool)

(assert (=> bm!376052 m!6318632))

(assert (=> b!5279496 d!1699524))

(declare-fun d!1699526 () Bool)

(declare-fun lt!2158336 () Int)

(assert (=> d!1699526 (>= lt!2158336 0)))

(declare-fun e!3283529 () Int)

(assert (=> d!1699526 (= lt!2158336 e!3283529)))

(declare-fun c!915426 () Bool)

(assert (=> d!1699526 (= c!915426 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(assert (=> d!1699526 (= (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))) lt!2158336)))

(declare-fun b!5280662 () Bool)

(assert (=> b!5280662 (= e!3283529 (+ (regexDepthTotal!10 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))))) (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))))))))))

(declare-fun b!5280663 () Bool)

(assert (=> b!5280663 (= e!3283529 1)))

(assert (= (and d!1699526 c!915426) b!5280662))

(assert (= (and d!1699526 (not c!915426)) b!5280663))

(declare-fun m!6318634 () Bool)

(assert (=> b!5280662 m!6318634))

(declare-fun m!6318636 () Bool)

(assert (=> b!5280662 m!6318636))

(assert (=> b!5279496 d!1699526))

(declare-fun bs!1224068 () Bool)

(declare-fun d!1699528 () Bool)

(assert (= bs!1224068 (and d!1699528 d!1699402)))

(declare-fun lambda!266738 () Int)

(assert (=> bs!1224068 (= lambda!266738 lambda!266714)))

(declare-fun bs!1224069 () Bool)

(assert (= bs!1224069 (and d!1699528 d!1699400)))

(assert (=> bs!1224069 (= lambda!266738 lambda!266713)))

(declare-fun bs!1224070 () Bool)

(assert (= bs!1224070 (and d!1699528 b!5280471)))

(assert (=> bs!1224070 (not (= lambda!266738 lambda!266726))))

(declare-fun bs!1224071 () Bool)

(assert (= bs!1224071 (and d!1699528 b!5279222)))

(assert (=> bs!1224071 (not (= lambda!266738 lambda!266613))))

(declare-fun bs!1224072 () Bool)

(assert (= bs!1224072 (and d!1699528 d!1699454)))

(assert (=> bs!1224072 (not (= lambda!266738 lambda!266729))))

(declare-fun bs!1224073 () Bool)

(assert (= bs!1224073 (and d!1699528 b!5279220)))

(assert (=> bs!1224073 (not (= lambda!266738 lambda!266612))))

(declare-fun bs!1224074 () Bool)

(assert (= bs!1224074 (and d!1699528 b!5279225)))

(assert (=> bs!1224074 (not (= lambda!266738 lambda!266615))))

(declare-fun bs!1224075 () Bool)

(assert (= bs!1224075 (and d!1699528 d!1699428)))

(assert (=> bs!1224075 (= lambda!266738 lambda!266716)))

(declare-fun bs!1224076 () Bool)

(assert (= bs!1224076 (and d!1699528 b!5280469)))

(assert (=> bs!1224076 (not (= lambda!266738 lambda!266725))))

(declare-fun bs!1224077 () Bool)

(assert (= bs!1224077 (and d!1699528 d!1699476)))

(assert (=> bs!1224077 (= lambda!266738 lambda!266732)))

(declare-fun bs!1224078 () Bool)

(assert (= bs!1224078 (and d!1699528 b!5279227)))

(assert (=> bs!1224078 (not (= lambda!266738 lambda!266616))))

(declare-fun bs!1224079 () Bool)

(assert (= bs!1224079 (and d!1699528 d!1699520)))

(assert (=> bs!1224079 (= lambda!266738 lambda!266737)))

(assert (=> d!1699528 (= (nullableZipper!1298 lt!2158070) (exists!2001 lt!2158070 lambda!266738))))

(declare-fun bs!1224080 () Bool)

(assert (= bs!1224080 d!1699528))

(declare-fun m!6318638 () Bool)

(assert (=> bs!1224080 m!6318638))

(assert (=> b!5279207 d!1699528))

(declare-fun d!1699530 () Bool)

(assert (=> d!1699530 (= (isEmpty!32831 lt!2158092) ((_ is Nil!60879) lt!2158092))))

(assert (=> b!5279554 d!1699530))

(assert (=> d!1699010 d!1699006))

(assert (=> d!1699010 d!1699416))

(assert (=> d!1699010 d!1699014))

(declare-fun d!1699532 () Bool)

(assert (=> d!1699532 (= (Exists!2082 lambda!266643) (choose!39400 lambda!266643))))

(declare-fun bs!1224081 () Bool)

(assert (= bs!1224081 d!1699532))

(declare-fun m!6318640 () Bool)

(assert (=> bs!1224081 m!6318640))

(assert (=> d!1699010 d!1699532))

(declare-fun bs!1224082 () Bool)

(declare-fun d!1699534 () Bool)

(assert (= bs!1224082 (and d!1699534 d!1699012)))

(declare-fun lambda!266741 () Int)

(assert (=> bs!1224082 (= lambda!266741 lambda!266648)))

(declare-fun bs!1224083 () Bool)

(assert (= bs!1224083 (and d!1699534 b!5278712)))

(assert (=> bs!1224083 (not (= lambda!266741 lambda!266557))))

(declare-fun bs!1224084 () Bool)

(assert (= bs!1224084 (and d!1699534 b!5279352)))

(assert (=> bs!1224084 (not (= lambda!266741 lambda!266622))))

(assert (=> bs!1224083 (= lambda!266741 lambda!266556)))

(assert (=> bs!1224082 (not (= lambda!266741 lambda!266649))))

(declare-fun bs!1224085 () Bool)

(assert (= bs!1224085 (and d!1699534 d!1699010)))

(assert (=> bs!1224085 (= lambda!266741 lambda!266643)))

(declare-fun bs!1224086 () Bool)

(assert (= bs!1224086 (and d!1699534 b!5279351)))

(assert (=> bs!1224086 (not (= lambda!266741 lambda!266621))))

(assert (=> d!1699534 true))

(assert (=> d!1699534 true))

(assert (=> d!1699534 true))

(assert (=> d!1699534 (= (isDefined!11715 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326)) (Exists!2082 lambda!266741))))

(assert (=> d!1699534 true))

(declare-fun _$89!1490 () Unit!153122)

(assert (=> d!1699534 (= (choose!39401 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326) _$89!1490)))

(declare-fun bs!1224087 () Bool)

(assert (= bs!1224087 d!1699534))

(assert (=> bs!1224087 m!6316832))

(assert (=> bs!1224087 m!6316832))

(assert (=> bs!1224087 m!6316834))

(declare-fun m!6318642 () Bool)

(assert (=> bs!1224087 m!6318642))

(assert (=> d!1699010 d!1699534))

(declare-fun d!1699536 () Bool)

(assert (=> d!1699536 (= (isEmpty!32831 (tail!10412 lt!2158092)) ((_ is Nil!60879) (tail!10412 lt!2158092)))))

(assert (=> b!5279558 d!1699536))

(declare-fun d!1699538 () Bool)

(assert (=> d!1699538 (= (tail!10412 lt!2158092) (t!374204 lt!2158092))))

(assert (=> b!5279558 d!1699538))

(declare-fun b!5280668 () Bool)

(declare-fun e!3283534 () Bool)

(declare-fun call!376058 () Bool)

(assert (=> b!5280668 (= e!3283534 call!376058)))

(declare-fun bm!376053 () Bool)

(declare-fun call!376060 () Bool)

(declare-fun c!915428 () Bool)

(declare-fun c!915427 () Bool)

(assert (=> bm!376053 (= call!376060 (validRegex!6637 (ite c!915427 (reg!15230 lt!2158227) (ite c!915428 (regOne!30315 lt!2158227) (regOne!30314 lt!2158227)))))))

(declare-fun b!5280669 () Bool)

(declare-fun res!2239511 () Bool)

(declare-fun e!3283535 () Bool)

(assert (=> b!5280669 (=> (not res!2239511) (not e!3283535))))

(declare-fun call!376059 () Bool)

(assert (=> b!5280669 (= res!2239511 call!376059)))

(declare-fun e!3283532 () Bool)

(assert (=> b!5280669 (= e!3283532 e!3283535)))

(declare-fun b!5280670 () Bool)

(declare-fun e!3283533 () Bool)

(declare-fun e!3283538 () Bool)

(assert (=> b!5280670 (= e!3283533 e!3283538)))

(declare-fun res!2239507 () Bool)

(assert (=> b!5280670 (= res!2239507 (not (nullable!5070 (reg!15230 lt!2158227))))))

(assert (=> b!5280670 (=> (not res!2239507) (not e!3283538))))

(declare-fun b!5280671 () Bool)

(declare-fun res!2239509 () Bool)

(declare-fun e!3283537 () Bool)

(assert (=> b!5280671 (=> res!2239509 e!3283537)))

(assert (=> b!5280671 (= res!2239509 (not ((_ is Concat!23746) lt!2158227)))))

(assert (=> b!5280671 (= e!3283532 e!3283537)))

(declare-fun b!5280672 () Bool)

(assert (=> b!5280672 (= e!3283537 e!3283534)))

(declare-fun res!2239510 () Bool)

(assert (=> b!5280672 (=> (not res!2239510) (not e!3283534))))

(assert (=> b!5280672 (= res!2239510 call!376059)))

(declare-fun b!5280673 () Bool)

(assert (=> b!5280673 (= e!3283538 call!376060)))

(declare-fun b!5280674 () Bool)

(declare-fun e!3283536 () Bool)

(assert (=> b!5280674 (= e!3283536 e!3283533)))

(assert (=> b!5280674 (= c!915427 ((_ is Star!14901) lt!2158227))))

(declare-fun b!5280675 () Bool)

(assert (=> b!5280675 (= e!3283535 call!376058)))

(declare-fun b!5280676 () Bool)

(assert (=> b!5280676 (= e!3283533 e!3283532)))

(assert (=> b!5280676 (= c!915428 ((_ is Union!14901) lt!2158227))))

(declare-fun bm!376055 () Bool)

(assert (=> bm!376055 (= call!376058 (validRegex!6637 (ite c!915428 (regTwo!30315 lt!2158227) (regTwo!30314 lt!2158227))))))

(declare-fun d!1699540 () Bool)

(declare-fun res!2239508 () Bool)

(assert (=> d!1699540 (=> res!2239508 e!3283536)))

(assert (=> d!1699540 (= res!2239508 ((_ is ElementMatch!14901) lt!2158227))))

(assert (=> d!1699540 (= (validRegex!6637 lt!2158227) e!3283536)))

(declare-fun bm!376054 () Bool)

(assert (=> bm!376054 (= call!376059 call!376060)))

(assert (= (and d!1699540 (not res!2239508)) b!5280674))

(assert (= (and b!5280674 c!915427) b!5280670))

(assert (= (and b!5280674 (not c!915427)) b!5280676))

(assert (= (and b!5280670 res!2239507) b!5280673))

(assert (= (and b!5280676 c!915428) b!5280669))

(assert (= (and b!5280676 (not c!915428)) b!5280671))

(assert (= (and b!5280669 res!2239511) b!5280675))

(assert (= (and b!5280671 (not res!2239509)) b!5280672))

(assert (= (and b!5280672 res!2239510) b!5280668))

(assert (= (or b!5280675 b!5280668) bm!376055))

(assert (= (or b!5280669 b!5280672) bm!376054))

(assert (= (or b!5280673 bm!376054) bm!376053))

(declare-fun m!6318644 () Bool)

(assert (=> bm!376053 m!6318644))

(declare-fun m!6318646 () Bool)

(assert (=> b!5280670 m!6318646))

(declare-fun m!6318648 () Bool)

(assert (=> bm!376055 m!6318648))

(assert (=> d!1698998 d!1699540))

(declare-fun d!1699542 () Bool)

(declare-fun res!2239512 () Bool)

(declare-fun e!3283539 () Bool)

(assert (=> d!1699542 (=> res!2239512 e!3283539)))

(assert (=> d!1699542 (= res!2239512 ((_ is Nil!60879) lt!2158092))))

(assert (=> d!1699542 (= (forall!14309 lt!2158092 lambda!266639) e!3283539)))

(declare-fun b!5280677 () Bool)

(declare-fun e!3283540 () Bool)

(assert (=> b!5280677 (= e!3283539 e!3283540)))

(declare-fun res!2239513 () Bool)

(assert (=> b!5280677 (=> (not res!2239513) (not e!3283540))))

(assert (=> b!5280677 (= res!2239513 (dynLambda!24067 lambda!266639 (h!67327 lt!2158092)))))

(declare-fun b!5280678 () Bool)

(assert (=> b!5280678 (= e!3283540 (forall!14309 (t!374204 lt!2158092) lambda!266639))))

(assert (= (and d!1699542 (not res!2239512)) b!5280677))

(assert (= (and b!5280677 res!2239513) b!5280678))

(declare-fun b_lambda!203741 () Bool)

(assert (=> (not b_lambda!203741) (not b!5280677)))

(declare-fun m!6318650 () Bool)

(assert (=> b!5280677 m!6318650))

(declare-fun m!6318652 () Bool)

(assert (=> b!5280678 m!6318652))

(assert (=> d!1698998 d!1699542))

(declare-fun b!5280679 () Bool)

(declare-fun e!3283543 () Bool)

(declare-fun call!376061 () Bool)

(assert (=> b!5280679 (= e!3283543 call!376061)))

(declare-fun call!376063 () Bool)

(declare-fun c!915430 () Bool)

(declare-fun c!915429 () Bool)

(declare-fun bm!376056 () Bool)

(assert (=> bm!376056 (= call!376063 (validRegex!6637 (ite c!915429 (reg!15230 (h!67327 lt!2158065)) (ite c!915430 (regOne!30315 (h!67327 lt!2158065)) (regOne!30314 (h!67327 lt!2158065))))))))

(declare-fun b!5280680 () Bool)

(declare-fun res!2239518 () Bool)

(declare-fun e!3283544 () Bool)

(assert (=> b!5280680 (=> (not res!2239518) (not e!3283544))))

(declare-fun call!376062 () Bool)

(assert (=> b!5280680 (= res!2239518 call!376062)))

(declare-fun e!3283541 () Bool)

(assert (=> b!5280680 (= e!3283541 e!3283544)))

(declare-fun b!5280681 () Bool)

(declare-fun e!3283542 () Bool)

(declare-fun e!3283547 () Bool)

(assert (=> b!5280681 (= e!3283542 e!3283547)))

(declare-fun res!2239514 () Bool)

(assert (=> b!5280681 (= res!2239514 (not (nullable!5070 (reg!15230 (h!67327 lt!2158065)))))))

(assert (=> b!5280681 (=> (not res!2239514) (not e!3283547))))

(declare-fun b!5280682 () Bool)

(declare-fun res!2239516 () Bool)

(declare-fun e!3283546 () Bool)

(assert (=> b!5280682 (=> res!2239516 e!3283546)))

(assert (=> b!5280682 (= res!2239516 (not ((_ is Concat!23746) (h!67327 lt!2158065))))))

(assert (=> b!5280682 (= e!3283541 e!3283546)))

(declare-fun b!5280683 () Bool)

(assert (=> b!5280683 (= e!3283546 e!3283543)))

(declare-fun res!2239517 () Bool)

(assert (=> b!5280683 (=> (not res!2239517) (not e!3283543))))

(assert (=> b!5280683 (= res!2239517 call!376062)))

(declare-fun b!5280684 () Bool)

(assert (=> b!5280684 (= e!3283547 call!376063)))

(declare-fun b!5280685 () Bool)

(declare-fun e!3283545 () Bool)

(assert (=> b!5280685 (= e!3283545 e!3283542)))

(assert (=> b!5280685 (= c!915429 ((_ is Star!14901) (h!67327 lt!2158065)))))

(declare-fun b!5280686 () Bool)

(assert (=> b!5280686 (= e!3283544 call!376061)))

(declare-fun b!5280687 () Bool)

(assert (=> b!5280687 (= e!3283542 e!3283541)))

(assert (=> b!5280687 (= c!915430 ((_ is Union!14901) (h!67327 lt!2158065)))))

(declare-fun bm!376058 () Bool)

(assert (=> bm!376058 (= call!376061 (validRegex!6637 (ite c!915430 (regTwo!30315 (h!67327 lt!2158065)) (regTwo!30314 (h!67327 lt!2158065)))))))

(declare-fun d!1699544 () Bool)

(declare-fun res!2239515 () Bool)

(assert (=> d!1699544 (=> res!2239515 e!3283545)))

(assert (=> d!1699544 (= res!2239515 ((_ is ElementMatch!14901) (h!67327 lt!2158065)))))

(assert (=> d!1699544 (= (validRegex!6637 (h!67327 lt!2158065)) e!3283545)))

(declare-fun bm!376057 () Bool)

(assert (=> bm!376057 (= call!376062 call!376063)))

(assert (= (and d!1699544 (not res!2239515)) b!5280685))

(assert (= (and b!5280685 c!915429) b!5280681))

(assert (= (and b!5280685 (not c!915429)) b!5280687))

(assert (= (and b!5280681 res!2239514) b!5280684))

(assert (= (and b!5280687 c!915430) b!5280680))

(assert (= (and b!5280687 (not c!915430)) b!5280682))

(assert (= (and b!5280680 res!2239518) b!5280686))

(assert (= (and b!5280682 (not res!2239516)) b!5280683))

(assert (= (and b!5280683 res!2239517) b!5280679))

(assert (= (or b!5280686 b!5280679) bm!376058))

(assert (= (or b!5280680 b!5280683) bm!376057))

(assert (= (or b!5280684 bm!376057) bm!376056))

(declare-fun m!6318654 () Bool)

(assert (=> bm!376056 m!6318654))

(declare-fun m!6318656 () Bool)

(assert (=> b!5280681 m!6318656))

(declare-fun m!6318658 () Bool)

(assert (=> bm!376058 m!6318658))

(assert (=> bs!1223399 d!1699544))

(assert (=> b!5279458 d!1698956))

(declare-fun bs!1224088 () Bool)

(declare-fun d!1699546 () Bool)

(assert (= bs!1224088 (and d!1699546 d!1699490)))

(declare-fun lambda!266742 () Int)

(assert (=> bs!1224088 (= lambda!266742 lambda!266734)))

(declare-fun bs!1224089 () Bool)

(assert (= bs!1224089 (and d!1699546 b!5278732)))

(assert (=> bs!1224089 (= lambda!266742 lambda!266559)))

(declare-fun bs!1224090 () Bool)

(assert (= bs!1224090 (and d!1699546 d!1698954)))

(assert (=> bs!1224090 (= lambda!266742 lambda!266631)))

(declare-fun bs!1224091 () Bool)

(assert (= bs!1224091 (and d!1699546 d!1698998)))

(assert (=> bs!1224091 (= lambda!266742 lambda!266639)))

(declare-fun bs!1224092 () Bool)

(assert (= bs!1224092 (and d!1699546 d!1699464)))

(assert (=> bs!1224092 (= lambda!266742 lambda!266731)))

(declare-fun bs!1224093 () Bool)

(assert (= bs!1224093 (and d!1699546 d!1699514)))

(assert (=> bs!1224093 (= lambda!266742 lambda!266736)))

(declare-fun bs!1224094 () Bool)

(assert (= bs!1224094 (and d!1699546 b!5280464)))

(assert (=> bs!1224094 (not (= lambda!266742 lambda!266722))))

(declare-fun bs!1224095 () Bool)

(assert (= bs!1224095 (and d!1699546 d!1698952)))

(assert (=> bs!1224095 (= lambda!266742 lambda!266628)))

(declare-fun bs!1224096 () Bool)

(assert (= bs!1224096 (and d!1699546 d!1699002)))

(assert (=> bs!1224096 (= lambda!266742 lambda!266640)))

(declare-fun bs!1224097 () Bool)

(assert (= bs!1224097 (and d!1699546 b!5280466)))

(assert (=> bs!1224097 (not (= lambda!266742 lambda!266723))))

(declare-fun bs!1224098 () Bool)

(assert (= bs!1224098 (and d!1699546 d!1698990)))

(assert (=> bs!1224098 (= lambda!266742 lambda!266638)))

(declare-fun bs!1224099 () Bool)

(assert (= bs!1224099 (and d!1699546 d!1698956)))

(assert (=> bs!1224099 (= lambda!266742 lambda!266634)))

(declare-fun bs!1224100 () Bool)

(assert (= bs!1224100 (and d!1699546 d!1699422)))

(assert (=> bs!1224100 (= lambda!266742 lambda!266715)))

(declare-fun lt!2158337 () List!61003)

(assert (=> d!1699546 (forall!14309 lt!2158337 lambda!266742)))

(declare-fun e!3283548 () List!61003)

(assert (=> d!1699546 (= lt!2158337 e!3283548)))

(declare-fun c!915431 () Bool)

(assert (=> d!1699546 (= c!915431 ((_ is Cons!60880) (t!374205 zl!343)))))

(assert (=> d!1699546 (= (unfocusZipperList!343 (t!374205 zl!343)) lt!2158337)))

(declare-fun b!5280688 () Bool)

(assert (=> b!5280688 (= e!3283548 (Cons!60879 (generalisedConcat!570 (exprs!4785 (h!67328 (t!374205 zl!343)))) (unfocusZipperList!343 (t!374205 (t!374205 zl!343)))))))

(declare-fun b!5280689 () Bool)

(assert (=> b!5280689 (= e!3283548 Nil!60879)))

(assert (= (and d!1699546 c!915431) b!5280688))

(assert (= (and d!1699546 (not c!915431)) b!5280689))

(declare-fun m!6318660 () Bool)

(assert (=> d!1699546 m!6318660))

(declare-fun m!6318662 () Bool)

(assert (=> b!5280688 m!6318662))

(declare-fun m!6318664 () Bool)

(assert (=> b!5280688 m!6318664))

(assert (=> b!5279458 d!1699546))

(declare-fun bs!1224101 () Bool)

(declare-fun b!5280696 () Bool)

(assert (= bs!1224101 (and b!5280696 d!1699012)))

(declare-fun lambda!266743 () Int)

(assert (=> bs!1224101 (not (= lambda!266743 lambda!266648))))

(declare-fun bs!1224102 () Bool)

(assert (= bs!1224102 (and b!5280696 b!5278712)))

(assert (=> bs!1224102 (not (= lambda!266743 lambda!266557))))

(declare-fun bs!1224103 () Bool)

(assert (= bs!1224103 (and b!5280696 b!5279352)))

(assert (=> bs!1224103 (not (= lambda!266743 lambda!266622))))

(declare-fun bs!1224104 () Bool)

(assert (= bs!1224104 (and b!5280696 d!1699534)))

(assert (=> bs!1224104 (not (= lambda!266743 lambda!266741))))

(assert (=> bs!1224102 (not (= lambda!266743 lambda!266556))))

(assert (=> bs!1224101 (not (= lambda!266743 lambda!266649))))

(declare-fun bs!1224105 () Bool)

(assert (= bs!1224105 (and b!5280696 d!1699010)))

(assert (=> bs!1224105 (not (= lambda!266743 lambda!266643))))

(declare-fun bs!1224106 () Bool)

(assert (= bs!1224106 (and b!5280696 b!5279351)))

(assert (=> bs!1224106 (= (and (= (reg!15230 (regTwo!30315 r!7292)) (reg!15230 r!7292)) (= (regTwo!30315 r!7292) r!7292)) (= lambda!266743 lambda!266621))))

(assert (=> b!5280696 true))

(assert (=> b!5280696 true))

(declare-fun bs!1224107 () Bool)

(declare-fun b!5280697 () Bool)

(assert (= bs!1224107 (and b!5280697 d!1699012)))

(declare-fun lambda!266744 () Int)

(assert (=> bs!1224107 (not (= lambda!266744 lambda!266648))))

(declare-fun bs!1224108 () Bool)

(assert (= bs!1224108 (and b!5280697 b!5278712)))

(assert (=> bs!1224108 (= (and (= (regOne!30314 (regTwo!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regTwo!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266744 lambda!266557))))

(declare-fun bs!1224109 () Bool)

(assert (= bs!1224109 (and b!5280697 b!5279352)))

(assert (=> bs!1224109 (= (and (= (regOne!30314 (regTwo!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regTwo!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266744 lambda!266622))))

(declare-fun bs!1224110 () Bool)

(assert (= bs!1224110 (and b!5280697 d!1699534)))

(assert (=> bs!1224110 (not (= lambda!266744 lambda!266741))))

(assert (=> bs!1224108 (not (= lambda!266744 lambda!266556))))

(declare-fun bs!1224111 () Bool)

(assert (= bs!1224111 (and b!5280697 b!5280696)))

(assert (=> bs!1224111 (not (= lambda!266744 lambda!266743))))

(assert (=> bs!1224107 (= (and (= (regOne!30314 (regTwo!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regTwo!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266744 lambda!266649))))

(declare-fun bs!1224112 () Bool)

(assert (= bs!1224112 (and b!5280697 d!1699010)))

(assert (=> bs!1224112 (not (= lambda!266744 lambda!266643))))

(declare-fun bs!1224113 () Bool)

(assert (= bs!1224113 (and b!5280697 b!5279351)))

(assert (=> bs!1224113 (not (= lambda!266744 lambda!266621))))

(assert (=> b!5280697 true))

(assert (=> b!5280697 true))

(declare-fun b!5280690 () Bool)

(declare-fun e!3283553 () Bool)

(declare-fun e!3283552 () Bool)

(assert (=> b!5280690 (= e!3283553 e!3283552)))

(declare-fun c!915434 () Bool)

(assert (=> b!5280690 (= c!915434 ((_ is Star!14901) (regTwo!30315 r!7292)))))

(declare-fun b!5280691 () Bool)

(declare-fun c!915433 () Bool)

(assert (=> b!5280691 (= c!915433 ((_ is ElementMatch!14901) (regTwo!30315 r!7292)))))

(declare-fun e!3283554 () Bool)

(declare-fun e!3283549 () Bool)

(assert (=> b!5280691 (= e!3283554 e!3283549)))

(declare-fun b!5280692 () Bool)

(declare-fun e!3283551 () Bool)

(assert (=> b!5280692 (= e!3283553 e!3283551)))

(declare-fun res!2239520 () Bool)

(assert (=> b!5280692 (= res!2239520 (matchRSpec!2004 (regOne!30315 (regTwo!30315 r!7292)) s!2326))))

(assert (=> b!5280692 (=> res!2239520 e!3283551)))

(declare-fun bm!376059 () Bool)

(declare-fun call!376065 () Bool)

(assert (=> bm!376059 (= call!376065 (isEmpty!32835 s!2326))))

(declare-fun b!5280693 () Bool)

(declare-fun e!3283550 () Bool)

(assert (=> b!5280693 (= e!3283550 call!376065)))

(declare-fun b!5280694 () Bool)

(assert (=> b!5280694 (= e!3283551 (matchRSpec!2004 (regTwo!30315 (regTwo!30315 r!7292)) s!2326))))

(declare-fun d!1699548 () Bool)

(declare-fun c!915435 () Bool)

(assert (=> d!1699548 (= c!915435 ((_ is EmptyExpr!14901) (regTwo!30315 r!7292)))))

(assert (=> d!1699548 (= (matchRSpec!2004 (regTwo!30315 r!7292) s!2326) e!3283550)))

(declare-fun b!5280695 () Bool)

(assert (=> b!5280695 (= e!3283550 e!3283554)))

(declare-fun res!2239521 () Bool)

(assert (=> b!5280695 (= res!2239521 (not ((_ is EmptyLang!14901) (regTwo!30315 r!7292))))))

(assert (=> b!5280695 (=> (not res!2239521) (not e!3283554))))

(declare-fun e!3283555 () Bool)

(declare-fun call!376064 () Bool)

(assert (=> b!5280696 (= e!3283555 call!376064)))

(assert (=> b!5280697 (= e!3283552 call!376064)))

(declare-fun bm!376060 () Bool)

(assert (=> bm!376060 (= call!376064 (Exists!2082 (ite c!915434 lambda!266743 lambda!266744)))))

(declare-fun b!5280698 () Bool)

(assert (=> b!5280698 (= e!3283549 (= s!2326 (Cons!60878 (c!914851 (regTwo!30315 r!7292)) Nil!60878)))))

(declare-fun b!5280699 () Bool)

(declare-fun c!915432 () Bool)

(assert (=> b!5280699 (= c!915432 ((_ is Union!14901) (regTwo!30315 r!7292)))))

(assert (=> b!5280699 (= e!3283549 e!3283553)))

(declare-fun b!5280700 () Bool)

(declare-fun res!2239519 () Bool)

(assert (=> b!5280700 (=> res!2239519 e!3283555)))

(assert (=> b!5280700 (= res!2239519 call!376065)))

(assert (=> b!5280700 (= e!3283552 e!3283555)))

(assert (= (and d!1699548 c!915435) b!5280693))

(assert (= (and d!1699548 (not c!915435)) b!5280695))

(assert (= (and b!5280695 res!2239521) b!5280691))

(assert (= (and b!5280691 c!915433) b!5280698))

(assert (= (and b!5280691 (not c!915433)) b!5280699))

(assert (= (and b!5280699 c!915432) b!5280692))

(assert (= (and b!5280699 (not c!915432)) b!5280690))

(assert (= (and b!5280692 (not res!2239520)) b!5280694))

(assert (= (and b!5280690 c!915434) b!5280700))

(assert (= (and b!5280690 (not c!915434)) b!5280697))

(assert (= (and b!5280700 (not res!2239519)) b!5280696))

(assert (= (or b!5280696 b!5280697) bm!376060))

(assert (= (or b!5280693 b!5280700) bm!376059))

(declare-fun m!6318666 () Bool)

(assert (=> b!5280692 m!6318666))

(assert (=> bm!376059 m!6317326))

(declare-fun m!6318668 () Bool)

(assert (=> b!5280694 m!6318668))

(declare-fun m!6318670 () Bool)

(assert (=> bm!376060 m!6318670))

(assert (=> b!5279349 d!1699548))

(declare-fun b!5280701 () Bool)

(declare-fun e!3283558 () (InoxSet Context!8570))

(assert (=> b!5280701 (= e!3283558 (store ((as const (Array Context!8570 Bool)) false) (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840)) true))))

(declare-fun b!5280702 () Bool)

(declare-fun e!3283559 () (InoxSet Context!8570))

(declare-fun call!376069 () (InoxSet Context!8570))

(assert (=> b!5280702 (= e!3283559 call!376069)))

(declare-fun b!5280703 () Bool)

(declare-fun e!3283561 () (InoxSet Context!8570))

(assert (=> b!5280703 (= e!3283561 e!3283559)))

(declare-fun c!915439 () Bool)

(assert (=> b!5280703 (= c!915439 ((_ is Concat!23746) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))))))

(declare-fun bm!376061 () Bool)

(declare-fun c!915437 () Bool)

(declare-fun call!376067 () List!61003)

(declare-fun call!376070 () (InoxSet Context!8570))

(assert (=> bm!376061 (= call!376070 (derivationStepZipperDown!349 (ite c!915437 (regTwo!30315 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (regOne!30314 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))))) (ite c!915437 (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840)) (Context!8571 call!376067)) (h!67326 s!2326)))))

(declare-fun call!376068 () (InoxSet Context!8570))

(declare-fun call!376066 () List!61003)

(declare-fun bm!376062 () Bool)

(declare-fun c!915438 () Bool)

(assert (=> bm!376062 (= call!376068 (derivationStepZipperDown!349 (ite c!915437 (regOne!30315 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (ite c!915438 (regTwo!30314 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (ite c!915439 (regOne!30314 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (reg!15230 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))))))) (ite (or c!915437 c!915438) (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840)) (Context!8571 call!376066)) (h!67326 s!2326)))))

(declare-fun b!5280704 () Bool)

(declare-fun e!3283556 () (InoxSet Context!8570))

(assert (=> b!5280704 (= e!3283556 ((_ map or) call!376068 call!376070))))

(declare-fun bm!376063 () Bool)

(assert (=> bm!376063 (= call!376066 call!376067)))

(declare-fun c!915436 () Bool)

(declare-fun d!1699550 () Bool)

(assert (=> d!1699550 (= c!915436 (and ((_ is ElementMatch!14901) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (= (c!914851 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (h!67326 s!2326))))))

(assert (=> d!1699550 (= (derivationStepZipperDown!349 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))) (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840)) (h!67326 s!2326)) e!3283558)))

(declare-fun b!5280705 () Bool)

(declare-fun e!3283560 () Bool)

(assert (=> b!5280705 (= e!3283560 (nullable!5070 (regOne!30314 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))))))))

(declare-fun b!5280706 () Bool)

(assert (=> b!5280706 (= e!3283558 e!3283556)))

(assert (=> b!5280706 (= c!915437 ((_ is Union!14901) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))))))

(declare-fun b!5280707 () Bool)

(declare-fun call!376071 () (InoxSet Context!8570))

(assert (=> b!5280707 (= e!3283561 ((_ map or) call!376070 call!376071))))

(declare-fun b!5280708 () Bool)

(assert (=> b!5280708 (= c!915438 e!3283560)))

(declare-fun res!2239522 () Bool)

(assert (=> b!5280708 (=> (not res!2239522) (not e!3283560))))

(assert (=> b!5280708 (= res!2239522 ((_ is Concat!23746) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))))))

(assert (=> b!5280708 (= e!3283556 e!3283561)))

(declare-fun bm!376064 () Bool)

(assert (=> bm!376064 (= call!376067 ($colon$colon!1348 (exprs!4785 (ite (or c!915112 c!915113) lt!2158063 (Context!8571 call!375840))) (ite (or c!915438 c!915439) (regTwo!30314 (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292)))))))))))

(declare-fun b!5280709 () Bool)

(declare-fun e!3283557 () (InoxSet Context!8570))

(assert (=> b!5280709 (= e!3283557 call!376069)))

(declare-fun bm!376065 () Bool)

(assert (=> bm!376065 (= call!376071 call!376068)))

(declare-fun b!5280710 () Bool)

(assert (=> b!5280710 (= e!3283557 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280711 () Bool)

(declare-fun c!915440 () Bool)

(assert (=> b!5280711 (= c!915440 ((_ is Star!14901) (ite c!915112 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (ite c!915113 (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (ite c!915114 (regOne!30314 (regOne!30314 (regOne!30314 r!7292))) (reg!15230 (regOne!30314 (regOne!30314 r!7292))))))))))

(assert (=> b!5280711 (= e!3283559 e!3283557)))

(declare-fun bm!376066 () Bool)

(assert (=> bm!376066 (= call!376069 call!376071)))

(assert (= (and d!1699550 c!915436) b!5280701))

(assert (= (and d!1699550 (not c!915436)) b!5280706))

(assert (= (and b!5280706 c!915437) b!5280704))

(assert (= (and b!5280706 (not c!915437)) b!5280708))

(assert (= (and b!5280708 res!2239522) b!5280705))

(assert (= (and b!5280708 c!915438) b!5280707))

(assert (= (and b!5280708 (not c!915438)) b!5280703))

(assert (= (and b!5280703 c!915439) b!5280702))

(assert (= (and b!5280703 (not c!915439)) b!5280711))

(assert (= (and b!5280711 c!915440) b!5280709))

(assert (= (and b!5280711 (not c!915440)) b!5280710))

(assert (= (or b!5280702 b!5280709) bm!376063))

(assert (= (or b!5280702 b!5280709) bm!376066))

(assert (= (or b!5280707 bm!376063) bm!376064))

(assert (= (or b!5280707 bm!376066) bm!376065))

(assert (= (or b!5280704 b!5280707) bm!376061))

(assert (= (or b!5280704 bm!376065) bm!376062))

(declare-fun m!6318672 () Bool)

(assert (=> bm!376062 m!6318672))

(declare-fun m!6318674 () Bool)

(assert (=> bm!376061 m!6318674))

(declare-fun m!6318676 () Bool)

(assert (=> b!5280701 m!6318676))

(declare-fun m!6318678 () Bool)

(assert (=> b!5280705 m!6318678))

(declare-fun m!6318680 () Bool)

(assert (=> bm!376064 m!6318680))

(assert (=> bm!375836 d!1699550))

(declare-fun d!1699552 () Bool)

(assert (=> d!1699552 (= (nullable!5070 lt!2158076) (nullableFct!1450 lt!2158076))))

(declare-fun bs!1224114 () Bool)

(assert (= bs!1224114 d!1699552))

(declare-fun m!6318682 () Bool)

(assert (=> bs!1224114 m!6318682))

(assert (=> b!5279538 d!1699552))

(declare-fun d!1699554 () Bool)

(assert (=> d!1699554 (= (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (nullableFct!1450 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun bs!1224115 () Bool)

(assert (= bs!1224115 d!1699554))

(declare-fun m!6318684 () Bool)

(assert (=> bs!1224115 m!6318684))

(assert (=> b!5279240 d!1699554))

(assert (=> bs!1223400 d!1698918))

(declare-fun d!1699556 () Bool)

(assert (=> d!1699556 (= (nullable!5070 (h!67327 (exprs!4785 lt!2158077))) (nullableFct!1450 (h!67327 (exprs!4785 lt!2158077))))))

(declare-fun bs!1224116 () Bool)

(assert (= bs!1224116 d!1699556))

(declare-fun m!6318686 () Bool)

(assert (=> bs!1224116 m!6318686))

(assert (=> b!5279245 d!1699556))

(assert (=> b!5279396 d!1699504))

(declare-fun bs!1224117 () Bool)

(declare-fun d!1699558 () Bool)

(assert (= bs!1224117 (and d!1699558 d!1699402)))

(declare-fun lambda!266745 () Int)

(assert (=> bs!1224117 (= lambda!266745 lambda!266714)))

(declare-fun bs!1224118 () Bool)

(assert (= bs!1224118 (and d!1699558 d!1699400)))

(assert (=> bs!1224118 (= lambda!266745 lambda!266713)))

(declare-fun bs!1224119 () Bool)

(assert (= bs!1224119 (and d!1699558 b!5280471)))

(assert (=> bs!1224119 (not (= lambda!266745 lambda!266726))))

(declare-fun bs!1224120 () Bool)

(assert (= bs!1224120 (and d!1699558 b!5279222)))

(assert (=> bs!1224120 (not (= lambda!266745 lambda!266613))))

(declare-fun bs!1224121 () Bool)

(assert (= bs!1224121 (and d!1699558 d!1699454)))

(assert (=> bs!1224121 (not (= lambda!266745 lambda!266729))))

(declare-fun bs!1224122 () Bool)

(assert (= bs!1224122 (and d!1699558 b!5279220)))

(assert (=> bs!1224122 (not (= lambda!266745 lambda!266612))))

(declare-fun bs!1224123 () Bool)

(assert (= bs!1224123 (and d!1699558 d!1699528)))

(assert (=> bs!1224123 (= lambda!266745 lambda!266738)))

(declare-fun bs!1224124 () Bool)

(assert (= bs!1224124 (and d!1699558 b!5279225)))

(assert (=> bs!1224124 (not (= lambda!266745 lambda!266615))))

(declare-fun bs!1224125 () Bool)

(assert (= bs!1224125 (and d!1699558 d!1699428)))

(assert (=> bs!1224125 (= lambda!266745 lambda!266716)))

(declare-fun bs!1224126 () Bool)

(assert (= bs!1224126 (and d!1699558 b!5280469)))

(assert (=> bs!1224126 (not (= lambda!266745 lambda!266725))))

(declare-fun bs!1224127 () Bool)

(assert (= bs!1224127 (and d!1699558 d!1699476)))

(assert (=> bs!1224127 (= lambda!266745 lambda!266732)))

(declare-fun bs!1224128 () Bool)

(assert (= bs!1224128 (and d!1699558 b!5279227)))

(assert (=> bs!1224128 (not (= lambda!266745 lambda!266616))))

(declare-fun bs!1224129 () Bool)

(assert (= bs!1224129 (and d!1699558 d!1699520)))

(assert (=> bs!1224129 (= lambda!266745 lambda!266737)))

(assert (=> d!1699558 (= (nullableZipper!1298 ((_ map or) lt!2158061 lt!2158070)) (exists!2001 ((_ map or) lt!2158061 lt!2158070) lambda!266745))))

(declare-fun bs!1224130 () Bool)

(assert (= bs!1224130 d!1699558))

(declare-fun m!6318688 () Bool)

(assert (=> bs!1224130 m!6318688))

(assert (=> b!5279501 d!1699558))

(declare-fun d!1699560 () Bool)

(assert (=> d!1699560 (= (nullable!5070 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))) (nullableFct!1450 (regOne!30314 (regTwo!30314 (regOne!30314 r!7292)))))))

(declare-fun bs!1224131 () Bool)

(assert (= bs!1224131 d!1699560))

(declare-fun m!6318690 () Bool)

(assert (=> bs!1224131 m!6318690))

(assert (=> b!5279512 d!1699560))

(declare-fun d!1699562 () Bool)

(assert (=> d!1699562 (= (isEmpty!32836 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326)) (not ((_ is Some!15011) (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) Nil!60878 s!2326 s!2326))))))

(assert (=> d!1699014 d!1699562))

(declare-fun d!1699564 () Bool)

(assert (=> d!1699564 (= ($colon$colon!1348 (exprs!4785 lt!2158077) (ite (or c!915108 c!915109) (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (regTwo!30314 (regOne!30314 r!7292)))) (Cons!60879 (ite (or c!915108 c!915109) (regTwo!30314 (regTwo!30314 (regOne!30314 r!7292))) (regTwo!30314 (regOne!30314 r!7292))) (exprs!4785 lt!2158077)))))

(assert (=> bm!375832 d!1699564))

(declare-fun bs!1224132 () Bool)

(declare-fun d!1699566 () Bool)

(assert (= bs!1224132 (and d!1699566 d!1699402)))

(declare-fun lambda!266746 () Int)

(assert (=> bs!1224132 (= lambda!266746 lambda!266714)))

(declare-fun bs!1224133 () Bool)

(assert (= bs!1224133 (and d!1699566 d!1699400)))

(assert (=> bs!1224133 (= lambda!266746 lambda!266713)))

(declare-fun bs!1224134 () Bool)

(assert (= bs!1224134 (and d!1699566 b!5280471)))

(assert (=> bs!1224134 (not (= lambda!266746 lambda!266726))))

(declare-fun bs!1224135 () Bool)

(assert (= bs!1224135 (and d!1699566 d!1699454)))

(assert (=> bs!1224135 (not (= lambda!266746 lambda!266729))))

(declare-fun bs!1224136 () Bool)

(assert (= bs!1224136 (and d!1699566 b!5279220)))

(assert (=> bs!1224136 (not (= lambda!266746 lambda!266612))))

(declare-fun bs!1224137 () Bool)

(assert (= bs!1224137 (and d!1699566 d!1699528)))

(assert (=> bs!1224137 (= lambda!266746 lambda!266738)))

(declare-fun bs!1224138 () Bool)

(assert (= bs!1224138 (and d!1699566 b!5279225)))

(assert (=> bs!1224138 (not (= lambda!266746 lambda!266615))))

(declare-fun bs!1224139 () Bool)

(assert (= bs!1224139 (and d!1699566 d!1699428)))

(assert (=> bs!1224139 (= lambda!266746 lambda!266716)))

(declare-fun bs!1224140 () Bool)

(assert (= bs!1224140 (and d!1699566 b!5280469)))

(assert (=> bs!1224140 (not (= lambda!266746 lambda!266725))))

(declare-fun bs!1224141 () Bool)

(assert (= bs!1224141 (and d!1699566 d!1699476)))

(assert (=> bs!1224141 (= lambda!266746 lambda!266732)))

(declare-fun bs!1224142 () Bool)

(assert (= bs!1224142 (and d!1699566 d!1699558)))

(assert (=> bs!1224142 (= lambda!266746 lambda!266745)))

(declare-fun bs!1224143 () Bool)

(assert (= bs!1224143 (and d!1699566 b!5279222)))

(assert (=> bs!1224143 (not (= lambda!266746 lambda!266613))))

(declare-fun bs!1224144 () Bool)

(assert (= bs!1224144 (and d!1699566 b!5279227)))

(assert (=> bs!1224144 (not (= lambda!266746 lambda!266616))))

(declare-fun bs!1224145 () Bool)

(assert (= bs!1224145 (and d!1699566 d!1699520)))

(assert (=> bs!1224145 (= lambda!266746 lambda!266737)))

(assert (=> d!1699566 (= (nullableZipper!1298 lt!2158088) (exists!2001 lt!2158088 lambda!266746))))

(declare-fun bs!1224146 () Bool)

(assert (= bs!1224146 d!1699566))

(declare-fun m!6318692 () Bool)

(assert (=> bs!1224146 m!6318692))

(assert (=> b!5279530 d!1699566))

(declare-fun d!1699568 () Bool)

(assert (=> d!1699568 (= (Exists!2082 (ite c!915047 lambda!266621 lambda!266622)) (choose!39400 (ite c!915047 lambda!266621 lambda!266622)))))

(declare-fun bs!1224147 () Bool)

(assert (= bs!1224147 d!1699568))

(declare-fun m!6318694 () Bool)

(assert (=> bs!1224147 m!6318694))

(assert (=> bm!375823 d!1699568))

(declare-fun b!5280723 () Bool)

(declare-fun e!3283567 () Bool)

(declare-fun lt!2158340 () List!61002)

(assert (=> b!5280723 (= e!3283567 (or (not (= (_2!35403 (get!20934 lt!2158236)) Nil!60878)) (= lt!2158340 (_1!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280720 () Bool)

(declare-fun e!3283566 () List!61002)

(assert (=> b!5280720 (= e!3283566 (_2!35403 (get!20934 lt!2158236)))))

(declare-fun d!1699570 () Bool)

(assert (=> d!1699570 e!3283567))

(declare-fun res!2239527 () Bool)

(assert (=> d!1699570 (=> (not res!2239527) (not e!3283567))))

(declare-fun content!10839 (List!61002) (InoxSet C!30072))

(assert (=> d!1699570 (= res!2239527 (= (content!10839 lt!2158340) ((_ map or) (content!10839 (_1!35403 (get!20934 lt!2158236))) (content!10839 (_2!35403 (get!20934 lt!2158236))))))))

(assert (=> d!1699570 (= lt!2158340 e!3283566)))

(declare-fun c!915443 () Bool)

(assert (=> d!1699570 (= c!915443 ((_ is Nil!60878) (_1!35403 (get!20934 lt!2158236))))))

(assert (=> d!1699570 (= (++!13278 (_1!35403 (get!20934 lt!2158236)) (_2!35403 (get!20934 lt!2158236))) lt!2158340)))

(declare-fun b!5280721 () Bool)

(assert (=> b!5280721 (= e!3283566 (Cons!60878 (h!67326 (_1!35403 (get!20934 lt!2158236))) (++!13278 (t!374203 (_1!35403 (get!20934 lt!2158236))) (_2!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280722 () Bool)

(declare-fun res!2239528 () Bool)

(assert (=> b!5280722 (=> (not res!2239528) (not e!3283567))))

(declare-fun size!39755 (List!61002) Int)

(assert (=> b!5280722 (= res!2239528 (= (size!39755 lt!2158340) (+ (size!39755 (_1!35403 (get!20934 lt!2158236))) (size!39755 (_2!35403 (get!20934 lt!2158236))))))))

(assert (= (and d!1699570 c!915443) b!5280720))

(assert (= (and d!1699570 (not c!915443)) b!5280721))

(assert (= (and d!1699570 res!2239527) b!5280722))

(assert (= (and b!5280722 res!2239528) b!5280723))

(declare-fun m!6318696 () Bool)

(assert (=> d!1699570 m!6318696))

(declare-fun m!6318698 () Bool)

(assert (=> d!1699570 m!6318698))

(declare-fun m!6318700 () Bool)

(assert (=> d!1699570 m!6318700))

(declare-fun m!6318702 () Bool)

(assert (=> b!5280721 m!6318702))

(declare-fun m!6318704 () Bool)

(assert (=> b!5280722 m!6318704))

(declare-fun m!6318706 () Bool)

(assert (=> b!5280722 m!6318706))

(declare-fun m!6318708 () Bool)

(assert (=> b!5280722 m!6318708))

(assert (=> b!5279587 d!1699570))

(assert (=> b!5279587 d!1699508))

(declare-fun d!1699572 () Bool)

(declare-fun c!915444 () Bool)

(assert (=> d!1699572 (= c!915444 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3283568 () Bool)

(assert (=> d!1699572 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158068) (t!374203 s!2326)) e!3283568)))

(declare-fun b!5280724 () Bool)

(assert (=> b!5280724 (= e!3283568 (nullableZipper!1298 ((_ map or) lt!2158089 lt!2158068)))))

(declare-fun b!5280725 () Bool)

(assert (=> b!5280725 (= e!3283568 (matchZipper!1145 (derivationStepZipper!1144 ((_ map or) lt!2158089 lt!2158068) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1699572 c!915444) b!5280724))

(assert (= (and d!1699572 (not c!915444)) b!5280725))

(assert (=> d!1699572 m!6317232))

(declare-fun m!6318710 () Bool)

(assert (=> b!5280724 m!6318710))

(assert (=> b!5280725 m!6317236))

(assert (=> b!5280725 m!6317236))

(declare-fun m!6318712 () Bool)

(assert (=> b!5280725 m!6318712))

(assert (=> b!5280725 m!6317240))

(assert (=> b!5280725 m!6318712))

(assert (=> b!5280725 m!6317240))

(declare-fun m!6318714 () Bool)

(assert (=> b!5280725 m!6318714))

(assert (=> d!1698988 d!1699572))

(assert (=> d!1698988 d!1698986))

(declare-fun d!1699574 () Bool)

(declare-fun e!3283571 () Bool)

(assert (=> d!1699574 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158068) (t!374203 s!2326)) e!3283571)))

(declare-fun res!2239531 () Bool)

(assert (=> d!1699574 (=> res!2239531 e!3283571)))

(assert (=> d!1699574 (= res!2239531 (matchZipper!1145 lt!2158089 (t!374203 s!2326)))))

(assert (=> d!1699574 true))

(declare-fun _$48!964 () Unit!153122)

(assert (=> d!1699574 (= (choose!39398 lt!2158089 lt!2158068 (t!374203 s!2326)) _$48!964)))

(declare-fun b!5280728 () Bool)

(assert (=> b!5280728 (= e!3283571 (matchZipper!1145 lt!2158068 (t!374203 s!2326)))))

(assert (= (and d!1699574 (not res!2239531)) b!5280728))

(assert (=> d!1699574 m!6317502))

(assert (=> d!1699574 m!6316782))

(assert (=> b!5280728 m!6316742))

(assert (=> d!1698988 d!1699574))

(declare-fun bm!376067 () Bool)

(declare-fun call!376072 () Bool)

(assert (=> bm!376067 (= call!376072 (isEmpty!32835 s!2326))))

(declare-fun b!5280729 () Bool)

(declare-fun res!2239534 () Bool)

(declare-fun e!3283576 () Bool)

(assert (=> b!5280729 (=> (not res!2239534) (not e!3283576))))

(assert (=> b!5280729 (= res!2239534 (not call!376072))))

(declare-fun b!5280730 () Bool)

(declare-fun e!3283577 () Bool)

(assert (=> b!5280730 (= e!3283577 (nullable!5070 (regTwo!30314 r!7292)))))

(declare-fun b!5280731 () Bool)

(assert (=> b!5280731 (= e!3283577 (matchR!7086 (derivativeStep!4119 (regTwo!30314 r!7292) (head!11314 s!2326)) (tail!10411 s!2326)))))

(declare-fun b!5280732 () Bool)

(declare-fun e!3283578 () Bool)

(declare-fun lt!2158341 () Bool)

(assert (=> b!5280732 (= e!3283578 (not lt!2158341))))

(declare-fun b!5280733 () Bool)

(declare-fun e!3283573 () Bool)

(declare-fun e!3283572 () Bool)

(assert (=> b!5280733 (= e!3283573 e!3283572)))

(declare-fun res!2239533 () Bool)

(assert (=> b!5280733 (=> (not res!2239533) (not e!3283572))))

(assert (=> b!5280733 (= res!2239533 (not lt!2158341))))

(declare-fun b!5280734 () Bool)

(declare-fun res!2239535 () Bool)

(assert (=> b!5280734 (=> res!2239535 e!3283573)))

(assert (=> b!5280734 (= res!2239535 e!3283576)))

(declare-fun res!2239538 () Bool)

(assert (=> b!5280734 (=> (not res!2239538) (not e!3283576))))

(assert (=> b!5280734 (= res!2239538 lt!2158341)))

(declare-fun b!5280735 () Bool)

(assert (=> b!5280735 (= e!3283576 (= (head!11314 s!2326) (c!914851 (regTwo!30314 r!7292))))))

(declare-fun d!1699576 () Bool)

(declare-fun e!3283575 () Bool)

(assert (=> d!1699576 e!3283575))

(declare-fun c!915447 () Bool)

(assert (=> d!1699576 (= c!915447 ((_ is EmptyExpr!14901) (regTwo!30314 r!7292)))))

(assert (=> d!1699576 (= lt!2158341 e!3283577)))

(declare-fun c!915446 () Bool)

(assert (=> d!1699576 (= c!915446 (isEmpty!32835 s!2326))))

(assert (=> d!1699576 (validRegex!6637 (regTwo!30314 r!7292))))

(assert (=> d!1699576 (= (matchR!7086 (regTwo!30314 r!7292) s!2326) lt!2158341)))

(declare-fun b!5280736 () Bool)

(assert (=> b!5280736 (= e!3283575 (= lt!2158341 call!376072))))

(declare-fun b!5280737 () Bool)

(declare-fun e!3283574 () Bool)

(assert (=> b!5280737 (= e!3283572 e!3283574)))

(declare-fun res!2239537 () Bool)

(assert (=> b!5280737 (=> res!2239537 e!3283574)))

(assert (=> b!5280737 (= res!2239537 call!376072)))

(declare-fun b!5280738 () Bool)

(declare-fun res!2239532 () Bool)

(assert (=> b!5280738 (=> res!2239532 e!3283573)))

(assert (=> b!5280738 (= res!2239532 (not ((_ is ElementMatch!14901) (regTwo!30314 r!7292))))))

(assert (=> b!5280738 (= e!3283578 e!3283573)))

(declare-fun b!5280739 () Bool)

(declare-fun res!2239536 () Bool)

(assert (=> b!5280739 (=> (not res!2239536) (not e!3283576))))

(assert (=> b!5280739 (= res!2239536 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun b!5280740 () Bool)

(assert (=> b!5280740 (= e!3283575 e!3283578)))

(declare-fun c!915445 () Bool)

(assert (=> b!5280740 (= c!915445 ((_ is EmptyLang!14901) (regTwo!30314 r!7292)))))

(declare-fun b!5280741 () Bool)

(assert (=> b!5280741 (= e!3283574 (not (= (head!11314 s!2326) (c!914851 (regTwo!30314 r!7292)))))))

(declare-fun b!5280742 () Bool)

(declare-fun res!2239539 () Bool)

(assert (=> b!5280742 (=> res!2239539 e!3283574)))

(assert (=> b!5280742 (= res!2239539 (not (isEmpty!32835 (tail!10411 s!2326))))))

(assert (= (and d!1699576 c!915446) b!5280730))

(assert (= (and d!1699576 (not c!915446)) b!5280731))

(assert (= (and d!1699576 c!915447) b!5280736))

(assert (= (and d!1699576 (not c!915447)) b!5280740))

(assert (= (and b!5280740 c!915445) b!5280732))

(assert (= (and b!5280740 (not c!915445)) b!5280738))

(assert (= (and b!5280738 (not res!2239532)) b!5280734))

(assert (= (and b!5280734 res!2239538) b!5280729))

(assert (= (and b!5280729 res!2239534) b!5280739))

(assert (= (and b!5280739 res!2239536) b!5280735))

(assert (= (and b!5280734 (not res!2239535)) b!5280733))

(assert (= (and b!5280733 res!2239533) b!5280737))

(assert (= (and b!5280737 (not res!2239537)) b!5280742))

(assert (= (and b!5280742 (not res!2239539)) b!5280741))

(assert (= (or b!5280736 b!5280729 b!5280737) bm!376067))

(assert (=> b!5280731 m!6317332))

(assert (=> b!5280731 m!6317332))

(declare-fun m!6318716 () Bool)

(assert (=> b!5280731 m!6318716))

(assert (=> b!5280731 m!6317336))

(assert (=> b!5280731 m!6318716))

(assert (=> b!5280731 m!6317336))

(declare-fun m!6318718 () Bool)

(assert (=> b!5280731 m!6318718))

(assert (=> d!1699576 m!6317326))

(assert (=> d!1699576 m!6318578))

(assert (=> bm!376067 m!6317326))

(assert (=> b!5280730 m!6318580))

(assert (=> b!5280741 m!6317332))

(assert (=> b!5280735 m!6317332))

(assert (=> b!5280742 m!6317336))

(assert (=> b!5280742 m!6317336))

(assert (=> b!5280742 m!6317342))

(assert (=> b!5280739 m!6317336))

(assert (=> b!5280739 m!6317336))

(assert (=> b!5280739 m!6317342))

(assert (=> b!5279591 d!1699576))

(assert (=> b!5279534 d!1698898))

(declare-fun d!1699578 () Bool)

(assert (=> d!1699578 (= (isUnion!273 lt!2158209) ((_ is Union!14901) lt!2158209))))

(assert (=> b!5279445 d!1699578))

(declare-fun d!1699580 () Bool)

(assert (=> d!1699580 (= (isConcat!356 lt!2158215) ((_ is Concat!23746) lt!2158215))))

(assert (=> b!5279480 d!1699580))

(declare-fun d!1699582 () Bool)

(declare-fun c!915448 () Bool)

(assert (=> d!1699582 (= c!915448 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283579 () Bool)

(assert (=> d!1699582 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158080 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283579)))

(declare-fun b!5280743 () Bool)

(assert (=> b!5280743 (= e!3283579 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158080 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280744 () Bool)

(assert (=> b!5280744 (= e!3283579 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158080 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699582 c!915448) b!5280743))

(assert (= (and d!1699582 (not c!915448)) b!5280744))

(assert (=> d!1699582 m!6317240))

(assert (=> d!1699582 m!6318412))

(assert (=> b!5280743 m!6317388))

(declare-fun m!6318720 () Bool)

(assert (=> b!5280743 m!6318720))

(assert (=> b!5280744 m!6317240))

(assert (=> b!5280744 m!6318416))

(assert (=> b!5280744 m!6317388))

(assert (=> b!5280744 m!6318416))

(declare-fun m!6318722 () Bool)

(assert (=> b!5280744 m!6318722))

(assert (=> b!5280744 m!6317240))

(assert (=> b!5280744 m!6318420))

(assert (=> b!5280744 m!6318722))

(assert (=> b!5280744 m!6318420))

(declare-fun m!6318724 () Bool)

(assert (=> b!5280744 m!6318724))

(assert (=> b!5279423 d!1699582))

(declare-fun bs!1224148 () Bool)

(declare-fun d!1699584 () Bool)

(assert (= bs!1224148 (and d!1699584 d!1699460)))

(declare-fun lambda!266747 () Int)

(assert (=> bs!1224148 (= lambda!266747 lambda!266730)))

(declare-fun bs!1224149 () Bool)

(assert (= bs!1224149 (and d!1699584 d!1699498)))

(assert (=> bs!1224149 (= lambda!266747 lambda!266735)))

(declare-fun bs!1224150 () Bool)

(assert (= bs!1224150 (and d!1699584 d!1699488)))

(assert (=> bs!1224150 (= lambda!266747 lambda!266733)))

(declare-fun bs!1224151 () Bool)

(assert (= bs!1224151 (and d!1699584 b!5278704)))

(assert (=> bs!1224151 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266747 lambda!266558))))

(declare-fun bs!1224152 () Bool)

(assert (= bs!1224152 (and d!1699584 d!1698932)))

(assert (=> bs!1224152 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266747 lambda!266625))))

(declare-fun bs!1224153 () Bool)

(assert (= bs!1224153 (and d!1699584 d!1698976)))

(assert (=> bs!1224153 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266747 lambda!266635))))

(declare-fun bs!1224154 () Bool)

(assert (= bs!1224154 (and d!1699584 d!1699432)))

(assert (=> bs!1224154 (= lambda!266747 lambda!266717)))

(assert (=> d!1699584 true))

(assert (=> d!1699584 (= (derivationStepZipper!1144 lt!2158080 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158080 lambda!266747))))

(declare-fun bs!1224155 () Bool)

(assert (= bs!1224155 d!1699584))

(declare-fun m!6318726 () Bool)

(assert (=> bs!1224155 m!6318726))

(assert (=> b!5279423 d!1699584))

(assert (=> b!5279423 d!1699434))

(assert (=> b!5279423 d!1699436))

(assert (=> d!1698992 d!1699480))

(declare-fun d!1699586 () Bool)

(assert (=> d!1699586 (= (nullable!5070 (reg!15230 r!7292)) (nullableFct!1450 (reg!15230 r!7292)))))

(declare-fun bs!1224156 () Bool)

(assert (= bs!1224156 d!1699586))

(declare-fun m!6318728 () Bool)

(assert (=> bs!1224156 m!6318728))

(assert (=> b!5279306 d!1699586))

(declare-fun b!5280745 () Bool)

(declare-fun e!3283582 () (InoxSet Context!8570))

(assert (=> b!5280745 (= e!3283582 (store ((as const (Array Context!8570 Bool)) false) (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) true))))

(declare-fun b!5280746 () Bool)

(declare-fun e!3283583 () (InoxSet Context!8570))

(declare-fun call!376076 () (InoxSet Context!8570))

(assert (=> b!5280746 (= e!3283583 call!376076)))

(declare-fun b!5280747 () Bool)

(declare-fun e!3283585 () (InoxSet Context!8570))

(assert (=> b!5280747 (= e!3283585 e!3283583)))

(declare-fun c!915452 () Bool)

(assert (=> b!5280747 (= c!915452 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun c!915450 () Bool)

(declare-fun bm!376068 () Bool)

(declare-fun call!376074 () List!61003)

(declare-fun call!376077 () (InoxSet Context!8570))

(assert (=> bm!376068 (= call!376077 (derivationStepZipperDown!349 (ite c!915450 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))) (ite c!915450 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (Context!8571 call!376074)) (h!67326 s!2326)))))

(declare-fun bm!376069 () Bool)

(declare-fun c!915451 () Bool)

(declare-fun call!376075 () (InoxSet Context!8570))

(declare-fun call!376073 () List!61003)

(assert (=> bm!376069 (= call!376075 (derivationStepZipperDown!349 (ite c!915450 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915451 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915452 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))) (ite (or c!915450 c!915451) (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (Context!8571 call!376073)) (h!67326 s!2326)))))

(declare-fun b!5280748 () Bool)

(declare-fun e!3283580 () (InoxSet Context!8570))

(assert (=> b!5280748 (= e!3283580 ((_ map or) call!376075 call!376077))))

(declare-fun bm!376070 () Bool)

(assert (=> bm!376070 (= call!376073 call!376074)))

(declare-fun d!1699588 () Bool)

(declare-fun c!915449 () Bool)

(assert (=> d!1699588 (= c!915449 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))) (= (c!914851 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326))))))

(assert (=> d!1699588 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 (h!67328 zl!343))) (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326)) e!3283582)))

(declare-fun b!5280749 () Bool)

(declare-fun e!3283584 () Bool)

(assert (=> b!5280749 (= e!3283584 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5280750 () Bool)

(assert (=> b!5280750 (= e!3283582 e!3283580)))

(assert (=> b!5280750 (= c!915450 ((_ is Union!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280751 () Bool)

(declare-fun call!376078 () (InoxSet Context!8570))

(assert (=> b!5280751 (= e!3283585 ((_ map or) call!376077 call!376078))))

(declare-fun b!5280752 () Bool)

(assert (=> b!5280752 (= c!915451 e!3283584)))

(declare-fun res!2239540 () Bool)

(assert (=> b!5280752 (=> (not res!2239540) (not e!3283584))))

(assert (=> b!5280752 (= res!2239540 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5280752 (= e!3283580 e!3283585)))

(declare-fun bm!376071 () Bool)

(assert (=> bm!376071 (= call!376074 ($colon$colon!1348 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))) (ite (or c!915451 c!915452) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (h!67327 (exprs!4785 (h!67328 zl!343))))))))

(declare-fun b!5280753 () Bool)

(declare-fun e!3283581 () (InoxSet Context!8570))

(assert (=> b!5280753 (= e!3283581 call!376076)))

(declare-fun bm!376072 () Bool)

(assert (=> bm!376072 (= call!376078 call!376075)))

(declare-fun b!5280754 () Bool)

(assert (=> b!5280754 (= e!3283581 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280755 () Bool)

(declare-fun c!915453 () Bool)

(assert (=> b!5280755 (= c!915453 ((_ is Star!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5280755 (= e!3283583 e!3283581)))

(declare-fun bm!376073 () Bool)

(assert (=> bm!376073 (= call!376076 call!376078)))

(assert (= (and d!1699588 c!915449) b!5280745))

(assert (= (and d!1699588 (not c!915449)) b!5280750))

(assert (= (and b!5280750 c!915450) b!5280748))

(assert (= (and b!5280750 (not c!915450)) b!5280752))

(assert (= (and b!5280752 res!2239540) b!5280749))

(assert (= (and b!5280752 c!915451) b!5280751))

(assert (= (and b!5280752 (not c!915451)) b!5280747))

(assert (= (and b!5280747 c!915452) b!5280746))

(assert (= (and b!5280747 (not c!915452)) b!5280755))

(assert (= (and b!5280755 c!915453) b!5280753))

(assert (= (and b!5280755 (not c!915453)) b!5280754))

(assert (= (or b!5280746 b!5280753) bm!376070))

(assert (= (or b!5280746 b!5280753) bm!376073))

(assert (= (or b!5280751 bm!376070) bm!376071))

(assert (= (or b!5280751 bm!376073) bm!376072))

(assert (= (or b!5280748 b!5280751) bm!376068))

(assert (= (or b!5280748 bm!376072) bm!376069))

(declare-fun m!6318730 () Bool)

(assert (=> bm!376069 m!6318730))

(declare-fun m!6318732 () Bool)

(assert (=> bm!376068 m!6318732))

(declare-fun m!6318734 () Bool)

(assert (=> b!5280745 m!6318734))

(assert (=> b!5280749 m!6317314))

(declare-fun m!6318736 () Bool)

(assert (=> bm!376071 m!6318736))

(assert (=> bm!375790 d!1699588))

(declare-fun bm!376074 () Bool)

(declare-fun call!376079 () Bool)

(assert (=> bm!376074 (= call!376079 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun b!5280756 () Bool)

(declare-fun res!2239543 () Bool)

(declare-fun e!3283590 () Bool)

(assert (=> b!5280756 (=> (not res!2239543) (not e!3283590))))

(assert (=> b!5280756 (= res!2239543 (not call!376079))))

(declare-fun b!5280757 () Bool)

(declare-fun e!3283591 () Bool)

(assert (=> b!5280757 (= e!3283591 (nullable!5070 (derivativeStep!4119 r!7292 (head!11314 s!2326))))))

(declare-fun b!5280758 () Bool)

(assert (=> b!5280758 (= e!3283591 (matchR!7086 (derivativeStep!4119 (derivativeStep!4119 r!7292 (head!11314 s!2326)) (head!11314 (tail!10411 s!2326))) (tail!10411 (tail!10411 s!2326))))))

(declare-fun b!5280759 () Bool)

(declare-fun e!3283592 () Bool)

(declare-fun lt!2158342 () Bool)

(assert (=> b!5280759 (= e!3283592 (not lt!2158342))))

(declare-fun b!5280760 () Bool)

(declare-fun e!3283587 () Bool)

(declare-fun e!3283586 () Bool)

(assert (=> b!5280760 (= e!3283587 e!3283586)))

(declare-fun res!2239542 () Bool)

(assert (=> b!5280760 (=> (not res!2239542) (not e!3283586))))

(assert (=> b!5280760 (= res!2239542 (not lt!2158342))))

(declare-fun b!5280761 () Bool)

(declare-fun res!2239544 () Bool)

(assert (=> b!5280761 (=> res!2239544 e!3283587)))

(assert (=> b!5280761 (= res!2239544 e!3283590)))

(declare-fun res!2239547 () Bool)

(assert (=> b!5280761 (=> (not res!2239547) (not e!3283590))))

(assert (=> b!5280761 (= res!2239547 lt!2158342)))

(declare-fun b!5280762 () Bool)

(assert (=> b!5280762 (= e!3283590 (= (head!11314 (tail!10411 s!2326)) (c!914851 (derivativeStep!4119 r!7292 (head!11314 s!2326)))))))

(declare-fun d!1699590 () Bool)

(declare-fun e!3283589 () Bool)

(assert (=> d!1699590 e!3283589))

(declare-fun c!915456 () Bool)

(assert (=> d!1699590 (= c!915456 ((_ is EmptyExpr!14901) (derivativeStep!4119 r!7292 (head!11314 s!2326))))))

(assert (=> d!1699590 (= lt!2158342 e!3283591)))

(declare-fun c!915455 () Bool)

(assert (=> d!1699590 (= c!915455 (isEmpty!32835 (tail!10411 s!2326)))))

(assert (=> d!1699590 (validRegex!6637 (derivativeStep!4119 r!7292 (head!11314 s!2326)))))

(assert (=> d!1699590 (= (matchR!7086 (derivativeStep!4119 r!7292 (head!11314 s!2326)) (tail!10411 s!2326)) lt!2158342)))

(declare-fun b!5280763 () Bool)

(assert (=> b!5280763 (= e!3283589 (= lt!2158342 call!376079))))

(declare-fun b!5280764 () Bool)

(declare-fun e!3283588 () Bool)

(assert (=> b!5280764 (= e!3283586 e!3283588)))

(declare-fun res!2239546 () Bool)

(assert (=> b!5280764 (=> res!2239546 e!3283588)))

(assert (=> b!5280764 (= res!2239546 call!376079)))

(declare-fun b!5280765 () Bool)

(declare-fun res!2239541 () Bool)

(assert (=> b!5280765 (=> res!2239541 e!3283587)))

(assert (=> b!5280765 (= res!2239541 (not ((_ is ElementMatch!14901) (derivativeStep!4119 r!7292 (head!11314 s!2326)))))))

(assert (=> b!5280765 (= e!3283592 e!3283587)))

(declare-fun b!5280766 () Bool)

(declare-fun res!2239545 () Bool)

(assert (=> b!5280766 (=> (not res!2239545) (not e!3283590))))

(assert (=> b!5280766 (= res!2239545 (isEmpty!32835 (tail!10411 (tail!10411 s!2326))))))

(declare-fun b!5280767 () Bool)

(assert (=> b!5280767 (= e!3283589 e!3283592)))

(declare-fun c!915454 () Bool)

(assert (=> b!5280767 (= c!915454 ((_ is EmptyLang!14901) (derivativeStep!4119 r!7292 (head!11314 s!2326))))))

(declare-fun b!5280768 () Bool)

(assert (=> b!5280768 (= e!3283588 (not (= (head!11314 (tail!10411 s!2326)) (c!914851 (derivativeStep!4119 r!7292 (head!11314 s!2326))))))))

(declare-fun b!5280769 () Bool)

(declare-fun res!2239548 () Bool)

(assert (=> b!5280769 (=> res!2239548 e!3283588)))

(assert (=> b!5280769 (= res!2239548 (not (isEmpty!32835 (tail!10411 (tail!10411 s!2326)))))))

(assert (= (and d!1699590 c!915455) b!5280757))

(assert (= (and d!1699590 (not c!915455)) b!5280758))

(assert (= (and d!1699590 c!915456) b!5280763))

(assert (= (and d!1699590 (not c!915456)) b!5280767))

(assert (= (and b!5280767 c!915454) b!5280759))

(assert (= (and b!5280767 (not c!915454)) b!5280765))

(assert (= (and b!5280765 (not res!2239541)) b!5280761))

(assert (= (and b!5280761 res!2239547) b!5280756))

(assert (= (and b!5280756 res!2239543) b!5280766))

(assert (= (and b!5280766 res!2239545) b!5280762))

(assert (= (and b!5280761 (not res!2239544)) b!5280760))

(assert (= (and b!5280760 res!2239542) b!5280764))

(assert (= (and b!5280764 (not res!2239546)) b!5280769))

(assert (= (and b!5280769 (not res!2239548)) b!5280768))

(assert (= (or b!5280763 b!5280756 b!5280764) bm!376074))

(assert (=> b!5280758 m!6317336))

(assert (=> b!5280758 m!6318546))

(assert (=> b!5280758 m!6317334))

(assert (=> b!5280758 m!6318546))

(declare-fun m!6318738 () Bool)

(assert (=> b!5280758 m!6318738))

(assert (=> b!5280758 m!6317336))

(assert (=> b!5280758 m!6318550))

(assert (=> b!5280758 m!6318738))

(assert (=> b!5280758 m!6318550))

(declare-fun m!6318740 () Bool)

(assert (=> b!5280758 m!6318740))

(assert (=> d!1699590 m!6317336))

(assert (=> d!1699590 m!6317342))

(assert (=> d!1699590 m!6317334))

(declare-fun m!6318742 () Bool)

(assert (=> d!1699590 m!6318742))

(assert (=> bm!376074 m!6317336))

(assert (=> bm!376074 m!6317342))

(assert (=> b!5280757 m!6317334))

(declare-fun m!6318744 () Bool)

(assert (=> b!5280757 m!6318744))

(assert (=> b!5280768 m!6317336))

(assert (=> b!5280768 m!6318546))

(assert (=> b!5280762 m!6317336))

(assert (=> b!5280762 m!6318546))

(assert (=> b!5280769 m!6317336))

(assert (=> b!5280769 m!6318550))

(assert (=> b!5280769 m!6318550))

(assert (=> b!5280769 m!6318558))

(assert (=> b!5280766 m!6317336))

(assert (=> b!5280766 m!6318550))

(assert (=> b!5280766 m!6318550))

(assert (=> b!5280766 m!6318558))

(assert (=> b!5279386 d!1699590))

(declare-fun b!5280770 () Bool)

(declare-fun c!915460 () Bool)

(assert (=> b!5280770 (= c!915460 (nullable!5070 (regOne!30314 r!7292)))))

(declare-fun e!3283594 () Regex!14901)

(declare-fun e!3283597 () Regex!14901)

(assert (=> b!5280770 (= e!3283594 e!3283597)))

(declare-fun b!5280771 () Bool)

(declare-fun e!3283593 () Regex!14901)

(assert (=> b!5280771 (= e!3283593 e!3283594)))

(declare-fun c!915458 () Bool)

(assert (=> b!5280771 (= c!915458 ((_ is Star!14901) r!7292))))

(declare-fun b!5280772 () Bool)

(declare-fun e!3283596 () Regex!14901)

(assert (=> b!5280772 (= e!3283596 EmptyLang!14901)))

(declare-fun d!1699592 () Bool)

(declare-fun lt!2158343 () Regex!14901)

(assert (=> d!1699592 (validRegex!6637 lt!2158343)))

(assert (=> d!1699592 (= lt!2158343 e!3283596)))

(declare-fun c!915461 () Bool)

(assert (=> d!1699592 (= c!915461 (or ((_ is EmptyExpr!14901) r!7292) ((_ is EmptyLang!14901) r!7292)))))

(assert (=> d!1699592 (validRegex!6637 r!7292)))

(assert (=> d!1699592 (= (derivativeStep!4119 r!7292 (head!11314 s!2326)) lt!2158343)))

(declare-fun bm!376075 () Bool)

(declare-fun call!376082 () Regex!14901)

(declare-fun call!376081 () Regex!14901)

(assert (=> bm!376075 (= call!376082 call!376081)))

(declare-fun bm!376076 () Bool)

(declare-fun c!915457 () Bool)

(declare-fun call!376083 () Regex!14901)

(assert (=> bm!376076 (= call!376083 (derivativeStep!4119 (ite c!915457 (regTwo!30315 r!7292) (regOne!30314 r!7292)) (head!11314 s!2326)))))

(declare-fun b!5280773 () Bool)

(declare-fun e!3283595 () Regex!14901)

(assert (=> b!5280773 (= e!3283595 (ite (= (head!11314 s!2326) (c!914851 r!7292)) EmptyExpr!14901 EmptyLang!14901))))

(declare-fun b!5280774 () Bool)

(assert (=> b!5280774 (= e!3283596 e!3283595)))

(declare-fun c!915459 () Bool)

(assert (=> b!5280774 (= c!915459 ((_ is ElementMatch!14901) r!7292))))

(declare-fun b!5280775 () Bool)

(declare-fun call!376080 () Regex!14901)

(assert (=> b!5280775 (= e!3283593 (Union!14901 call!376080 call!376083))))

(declare-fun b!5280776 () Bool)

(assert (=> b!5280776 (= c!915457 ((_ is Union!14901) r!7292))))

(assert (=> b!5280776 (= e!3283595 e!3283593)))

(declare-fun bm!376077 () Bool)

(assert (=> bm!376077 (= call!376080 (derivativeStep!4119 (ite c!915457 (regOne!30315 r!7292) (ite c!915458 (reg!15230 r!7292) (ite c!915460 (regTwo!30314 r!7292) (regOne!30314 r!7292)))) (head!11314 s!2326)))))

(declare-fun b!5280777 () Bool)

(assert (=> b!5280777 (= e!3283597 (Union!14901 (Concat!23746 call!376082 (regTwo!30314 r!7292)) EmptyLang!14901))))

(declare-fun b!5280778 () Bool)

(assert (=> b!5280778 (= e!3283597 (Union!14901 (Concat!23746 call!376083 (regTwo!30314 r!7292)) call!376082))))

(declare-fun bm!376078 () Bool)

(assert (=> bm!376078 (= call!376081 call!376080)))

(declare-fun b!5280779 () Bool)

(assert (=> b!5280779 (= e!3283594 (Concat!23746 call!376081 r!7292))))

(assert (= (and d!1699592 c!915461) b!5280772))

(assert (= (and d!1699592 (not c!915461)) b!5280774))

(assert (= (and b!5280774 c!915459) b!5280773))

(assert (= (and b!5280774 (not c!915459)) b!5280776))

(assert (= (and b!5280776 c!915457) b!5280775))

(assert (= (and b!5280776 (not c!915457)) b!5280771))

(assert (= (and b!5280771 c!915458) b!5280779))

(assert (= (and b!5280771 (not c!915458)) b!5280770))

(assert (= (and b!5280770 c!915460) b!5280778))

(assert (= (and b!5280770 (not c!915460)) b!5280777))

(assert (= (or b!5280778 b!5280777) bm!376075))

(assert (= (or b!5280779 bm!376075) bm!376078))

(assert (= (or b!5280775 b!5280778) bm!376076))

(assert (= (or b!5280775 bm!376078) bm!376077))

(assert (=> b!5280770 m!6318380))

(declare-fun m!6318746 () Bool)

(assert (=> d!1699592 m!6318746))

(assert (=> d!1699592 m!6316810))

(assert (=> bm!376076 m!6317332))

(declare-fun m!6318748 () Bool)

(assert (=> bm!376076 m!6318748))

(assert (=> bm!376077 m!6317332))

(declare-fun m!6318750 () Bool)

(assert (=> bm!376077 m!6318750))

(assert (=> b!5279386 d!1699592))

(assert (=> b!5279386 d!1699504))

(assert (=> b!5279386 d!1699426))

(assert (=> b!5279549 d!1699504))

(declare-fun b!5280794 () Bool)

(declare-fun e!3283613 () Bool)

(declare-fun e!3283611 () Bool)

(assert (=> b!5280794 (= e!3283613 e!3283611)))

(declare-fun res!2239561 () Bool)

(declare-fun call!376088 () Bool)

(assert (=> b!5280794 (= res!2239561 call!376088)))

(assert (=> b!5280794 (=> (not res!2239561) (not e!3283611))))

(declare-fun bm!376083 () Bool)

(declare-fun c!915464 () Bool)

(assert (=> bm!376083 (= call!376088 (nullable!5070 (ite c!915464 (regOne!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280795 () Bool)

(declare-fun e!3283612 () Bool)

(assert (=> b!5280795 (= e!3283612 e!3283613)))

(assert (=> b!5280795 (= c!915464 ((_ is Union!14901) (regOne!30314 (regOne!30314 r!7292))))))

(declare-fun b!5280796 () Bool)

(declare-fun e!3283614 () Bool)

(assert (=> b!5280796 (= e!3283614 e!3283612)))

(declare-fun res!2239560 () Bool)

(assert (=> b!5280796 (=> res!2239560 e!3283612)))

(assert (=> b!5280796 (= res!2239560 ((_ is Star!14901) (regOne!30314 (regOne!30314 r!7292))))))

(declare-fun d!1699594 () Bool)

(declare-fun res!2239562 () Bool)

(declare-fun e!3283615 () Bool)

(assert (=> d!1699594 (=> res!2239562 e!3283615)))

(assert (=> d!1699594 (= res!2239562 ((_ is EmptyExpr!14901) (regOne!30314 (regOne!30314 r!7292))))))

(assert (=> d!1699594 (= (nullableFct!1450 (regOne!30314 (regOne!30314 r!7292))) e!3283615)))

(declare-fun b!5280797 () Bool)

(assert (=> b!5280797 (= e!3283615 e!3283614)))

(declare-fun res!2239559 () Bool)

(assert (=> b!5280797 (=> (not res!2239559) (not e!3283614))))

(assert (=> b!5280797 (= res!2239559 (and (not ((_ is EmptyLang!14901) (regOne!30314 (regOne!30314 r!7292)))) (not ((_ is ElementMatch!14901) (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280798 () Bool)

(declare-fun e!3283610 () Bool)

(assert (=> b!5280798 (= e!3283613 e!3283610)))

(declare-fun res!2239563 () Bool)

(assert (=> b!5280798 (= res!2239563 call!376088)))

(assert (=> b!5280798 (=> res!2239563 e!3283610)))

(declare-fun bm!376084 () Bool)

(declare-fun call!376089 () Bool)

(assert (=> bm!376084 (= call!376089 (nullable!5070 (ite c!915464 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280799 () Bool)

(assert (=> b!5280799 (= e!3283610 call!376089)))

(declare-fun b!5280800 () Bool)

(assert (=> b!5280800 (= e!3283611 call!376089)))

(assert (= (and d!1699594 (not res!2239562)) b!5280797))

(assert (= (and b!5280797 res!2239559) b!5280796))

(assert (= (and b!5280796 (not res!2239560)) b!5280795))

(assert (= (and b!5280795 c!915464) b!5280798))

(assert (= (and b!5280795 (not c!915464)) b!5280794))

(assert (= (and b!5280798 (not res!2239563)) b!5280799))

(assert (= (and b!5280794 res!2239561) b!5280800))

(assert (= (or b!5280799 b!5280800) bm!376084))

(assert (= (or b!5280798 b!5280794) bm!376083))

(declare-fun m!6318752 () Bool)

(assert (=> bm!376083 m!6318752))

(declare-fun m!6318754 () Bool)

(assert (=> bm!376084 m!6318754))

(assert (=> d!1698978 d!1699594))

(declare-fun b!5280801 () Bool)

(declare-fun e!3283616 () (InoxSet Context!8570))

(assert (=> b!5280801 (= e!3283616 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!376085 () Bool)

(declare-fun call!376090 () (InoxSet Context!8570))

(assert (=> bm!376085 (= call!376090 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))))) (h!67326 s!2326)))))

(declare-fun d!1699596 () Bool)

(declare-fun c!915465 () Bool)

(declare-fun e!3283617 () Bool)

(assert (=> d!1699596 (= c!915465 e!3283617)))

(declare-fun res!2239564 () Bool)

(assert (=> d!1699596 (=> (not res!2239564) (not e!3283617))))

(assert (=> d!1699596 (= res!2239564 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun e!3283618 () (InoxSet Context!8570))

(assert (=> d!1699596 (= (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))) (h!67326 s!2326)) e!3283618)))

(declare-fun b!5280802 () Bool)

(assert (=> b!5280802 (= e!3283616 call!376090)))

(declare-fun b!5280803 () Bool)

(assert (=> b!5280803 (= e!3283617 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))))))))

(declare-fun b!5280804 () Bool)

(assert (=> b!5280804 (= e!3283618 e!3283616)))

(declare-fun c!915466 () Bool)

(assert (=> b!5280804 (= c!915466 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5280805 () Bool)

(assert (=> b!5280805 (= e!3283618 ((_ map or) call!376090 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (h!67328 zl!343))))))) (h!67326 s!2326))))))

(assert (= (and d!1699596 res!2239564) b!5280803))

(assert (= (and d!1699596 c!915465) b!5280805))

(assert (= (and d!1699596 (not c!915465)) b!5280804))

(assert (= (and b!5280804 c!915466) b!5280802))

(assert (= (and b!5280804 (not c!915466)) b!5280801))

(assert (= (or b!5280805 b!5280802) bm!376085))

(declare-fun m!6318756 () Bool)

(assert (=> bm!376085 m!6318756))

(declare-fun m!6318758 () Bool)

(assert (=> b!5280803 m!6318758))

(declare-fun m!6318760 () Bool)

(assert (=> b!5280805 m!6318760))

(assert (=> b!5279252 d!1699596))

(declare-fun bs!1224157 () Bool)

(declare-fun d!1699598 () Bool)

(assert (= bs!1224157 (and d!1699598 d!1699490)))

(declare-fun lambda!266748 () Int)

(assert (=> bs!1224157 (= lambda!266748 lambda!266734)))

(declare-fun bs!1224158 () Bool)

(assert (= bs!1224158 (and d!1699598 b!5278732)))

(assert (=> bs!1224158 (= lambda!266748 lambda!266559)))

(declare-fun bs!1224159 () Bool)

(assert (= bs!1224159 (and d!1699598 d!1698954)))

(assert (=> bs!1224159 (= lambda!266748 lambda!266631)))

(declare-fun bs!1224160 () Bool)

(assert (= bs!1224160 (and d!1699598 d!1698998)))

(assert (=> bs!1224160 (= lambda!266748 lambda!266639)))

(declare-fun bs!1224161 () Bool)

(assert (= bs!1224161 (and d!1699598 d!1699464)))

(assert (=> bs!1224161 (= lambda!266748 lambda!266731)))

(declare-fun bs!1224162 () Bool)

(assert (= bs!1224162 (and d!1699598 d!1699514)))

(assert (=> bs!1224162 (= lambda!266748 lambda!266736)))

(declare-fun bs!1224163 () Bool)

(assert (= bs!1224163 (and d!1699598 b!5280464)))

(assert (=> bs!1224163 (not (= lambda!266748 lambda!266722))))

(declare-fun bs!1224164 () Bool)

(assert (= bs!1224164 (and d!1699598 d!1699546)))

(assert (=> bs!1224164 (= lambda!266748 lambda!266742)))

(declare-fun bs!1224165 () Bool)

(assert (= bs!1224165 (and d!1699598 d!1698952)))

(assert (=> bs!1224165 (= lambda!266748 lambda!266628)))

(declare-fun bs!1224166 () Bool)

(assert (= bs!1224166 (and d!1699598 d!1699002)))

(assert (=> bs!1224166 (= lambda!266748 lambda!266640)))

(declare-fun bs!1224167 () Bool)

(assert (= bs!1224167 (and d!1699598 b!5280466)))

(assert (=> bs!1224167 (not (= lambda!266748 lambda!266723))))

(declare-fun bs!1224168 () Bool)

(assert (= bs!1224168 (and d!1699598 d!1698990)))

(assert (=> bs!1224168 (= lambda!266748 lambda!266638)))

(declare-fun bs!1224169 () Bool)

(assert (= bs!1224169 (and d!1699598 d!1698956)))

(assert (=> bs!1224169 (= lambda!266748 lambda!266634)))

(declare-fun bs!1224170 () Bool)

(assert (= bs!1224170 (and d!1699598 d!1699422)))

(assert (=> bs!1224170 (= lambda!266748 lambda!266715)))

(declare-fun b!5280806 () Bool)

(declare-fun e!3283621 () Bool)

(declare-fun lt!2158344 () Regex!14901)

(assert (=> b!5280806 (= e!3283621 (isConcat!356 lt!2158344))))

(declare-fun b!5280807 () Bool)

(declare-fun e!3283619 () Regex!14901)

(declare-fun e!3283622 () Regex!14901)

(assert (=> b!5280807 (= e!3283619 e!3283622)))

(declare-fun c!915468 () Bool)

(assert (=> b!5280807 (= c!915468 ((_ is Cons!60879) (t!374204 lt!2158092)))))

(declare-fun b!5280808 () Bool)

(assert (=> b!5280808 (= e!3283622 (Concat!23746 (h!67327 (t!374204 lt!2158092)) (generalisedConcat!570 (t!374204 (t!374204 lt!2158092)))))))

(declare-fun e!3283623 () Bool)

(assert (=> d!1699598 e!3283623))

(declare-fun res!2239566 () Bool)

(assert (=> d!1699598 (=> (not res!2239566) (not e!3283623))))

(assert (=> d!1699598 (= res!2239566 (validRegex!6637 lt!2158344))))

(assert (=> d!1699598 (= lt!2158344 e!3283619)))

(declare-fun c!915469 () Bool)

(declare-fun e!3283624 () Bool)

(assert (=> d!1699598 (= c!915469 e!3283624)))

(declare-fun res!2239565 () Bool)

(assert (=> d!1699598 (=> (not res!2239565) (not e!3283624))))

(assert (=> d!1699598 (= res!2239565 ((_ is Cons!60879) (t!374204 lt!2158092)))))

(assert (=> d!1699598 (forall!14309 (t!374204 lt!2158092) lambda!266748)))

(assert (=> d!1699598 (= (generalisedConcat!570 (t!374204 lt!2158092)) lt!2158344)))

(declare-fun b!5280809 () Bool)

(declare-fun e!3283620 () Bool)

(assert (=> b!5280809 (= e!3283623 e!3283620)))

(declare-fun c!915467 () Bool)

(assert (=> b!5280809 (= c!915467 (isEmpty!32831 (t!374204 lt!2158092)))))

(declare-fun b!5280810 () Bool)

(assert (=> b!5280810 (= e!3283620 (isEmptyExpr!833 lt!2158344))))

(declare-fun b!5280811 () Bool)

(assert (=> b!5280811 (= e!3283622 EmptyExpr!14901)))

(declare-fun b!5280812 () Bool)

(assert (=> b!5280812 (= e!3283621 (= lt!2158344 (head!11315 (t!374204 lt!2158092))))))

(declare-fun b!5280813 () Bool)

(assert (=> b!5280813 (= e!3283620 e!3283621)))

(declare-fun c!915470 () Bool)

(assert (=> b!5280813 (= c!915470 (isEmpty!32831 (tail!10412 (t!374204 lt!2158092))))))

(declare-fun b!5280814 () Bool)

(assert (=> b!5280814 (= e!3283624 (isEmpty!32831 (t!374204 (t!374204 lt!2158092))))))

(declare-fun b!5280815 () Bool)

(assert (=> b!5280815 (= e!3283619 (h!67327 (t!374204 lt!2158092)))))

(assert (= (and d!1699598 res!2239565) b!5280814))

(assert (= (and d!1699598 c!915469) b!5280815))

(assert (= (and d!1699598 (not c!915469)) b!5280807))

(assert (= (and b!5280807 c!915468) b!5280808))

(assert (= (and b!5280807 (not c!915468)) b!5280811))

(assert (= (and d!1699598 res!2239566) b!5280809))

(assert (= (and b!5280809 c!915467) b!5280810))

(assert (= (and b!5280809 (not c!915467)) b!5280813))

(assert (= (and b!5280813 c!915470) b!5280812))

(assert (= (and b!5280813 (not c!915470)) b!5280806))

(declare-fun m!6318762 () Bool)

(assert (=> b!5280808 m!6318762))

(declare-fun m!6318764 () Bool)

(assert (=> b!5280813 m!6318764))

(assert (=> b!5280813 m!6318764))

(declare-fun m!6318766 () Bool)

(assert (=> b!5280813 m!6318766))

(declare-fun m!6318768 () Bool)

(assert (=> d!1699598 m!6318768))

(declare-fun m!6318770 () Bool)

(assert (=> d!1699598 m!6318770))

(declare-fun m!6318772 () Bool)

(assert (=> b!5280814 m!6318772))

(declare-fun m!6318774 () Bool)

(assert (=> b!5280810 m!6318774))

(declare-fun m!6318776 () Bool)

(assert (=> b!5280812 m!6318776))

(assert (=> b!5280809 m!6317534))

(declare-fun m!6318778 () Bool)

(assert (=> b!5280806 m!6318778))

(assert (=> b!5279553 d!1699598))

(declare-fun d!1699600 () Bool)

(assert (=> d!1699600 (= (isEmpty!32831 (tail!10412 (unfocusZipperList!343 zl!343))) ((_ is Nil!60879) (tail!10412 (unfocusZipperList!343 zl!343))))))

(assert (=> b!5279452 d!1699600))

(declare-fun d!1699602 () Bool)

(assert (=> d!1699602 (= (tail!10412 (unfocusZipperList!343 zl!343)) (t!374204 (unfocusZipperList!343 zl!343)))))

(assert (=> b!5279452 d!1699602))

(assert (=> d!1698942 d!1699420))

(declare-fun d!1699604 () Bool)

(declare-fun c!915471 () Bool)

(assert (=> d!1699604 (= c!915471 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283625 () Bool)

(assert (=> d!1699604 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158091 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283625)))

(declare-fun b!5280816 () Bool)

(assert (=> b!5280816 (= e!3283625 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158091 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280817 () Bool)

(assert (=> b!5280817 (= e!3283625 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158091 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699604 c!915471) b!5280816))

(assert (= (and d!1699604 (not c!915471)) b!5280817))

(assert (=> d!1699604 m!6317240))

(assert (=> d!1699604 m!6318412))

(assert (=> b!5280816 m!6317372))

(declare-fun m!6318780 () Bool)

(assert (=> b!5280816 m!6318780))

(assert (=> b!5280817 m!6317240))

(assert (=> b!5280817 m!6318416))

(assert (=> b!5280817 m!6317372))

(assert (=> b!5280817 m!6318416))

(declare-fun m!6318782 () Bool)

(assert (=> b!5280817 m!6318782))

(assert (=> b!5280817 m!6317240))

(assert (=> b!5280817 m!6318420))

(assert (=> b!5280817 m!6318782))

(assert (=> b!5280817 m!6318420))

(declare-fun m!6318784 () Bool)

(assert (=> b!5280817 m!6318784))

(assert (=> b!5279413 d!1699604))

(declare-fun bs!1224171 () Bool)

(declare-fun d!1699606 () Bool)

(assert (= bs!1224171 (and d!1699606 d!1699460)))

(declare-fun lambda!266749 () Int)

(assert (=> bs!1224171 (= lambda!266749 lambda!266730)))

(declare-fun bs!1224172 () Bool)

(assert (= bs!1224172 (and d!1699606 d!1699498)))

(assert (=> bs!1224172 (= lambda!266749 lambda!266735)))

(declare-fun bs!1224173 () Bool)

(assert (= bs!1224173 (and d!1699606 d!1699488)))

(assert (=> bs!1224173 (= lambda!266749 lambda!266733)))

(declare-fun bs!1224174 () Bool)

(assert (= bs!1224174 (and d!1699606 b!5278704)))

(assert (=> bs!1224174 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266749 lambda!266558))))

(declare-fun bs!1224175 () Bool)

(assert (= bs!1224175 (and d!1699606 d!1698932)))

(assert (=> bs!1224175 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266749 lambda!266625))))

(declare-fun bs!1224176 () Bool)

(assert (= bs!1224176 (and d!1699606 d!1698976)))

(assert (=> bs!1224176 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266749 lambda!266635))))

(declare-fun bs!1224177 () Bool)

(assert (= bs!1224177 (and d!1699606 d!1699432)))

(assert (=> bs!1224177 (= lambda!266749 lambda!266717)))

(declare-fun bs!1224178 () Bool)

(assert (= bs!1224178 (and d!1699606 d!1699584)))

(assert (=> bs!1224178 (= lambda!266749 lambda!266747)))

(assert (=> d!1699606 true))

(assert (=> d!1699606 (= (derivationStepZipper!1144 lt!2158091 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158091 lambda!266749))))

(declare-fun bs!1224179 () Bool)

(assert (= bs!1224179 d!1699606))

(declare-fun m!6318786 () Bool)

(assert (=> bs!1224179 m!6318786))

(assert (=> b!5279413 d!1699606))

(assert (=> b!5279413 d!1699434))

(assert (=> b!5279413 d!1699436))

(declare-fun d!1699608 () Bool)

(assert (=> d!1699608 (= (isEmptyExpr!833 lt!2158215) ((_ is EmptyExpr!14901) lt!2158215))))

(assert (=> b!5279484 d!1699608))

(declare-fun d!1699610 () Bool)

(assert (=> d!1699610 true))

(assert (=> d!1699610 true))

(declare-fun res!2239567 () Bool)

(assert (=> d!1699610 (= (choose!39400 lambda!266556) res!2239567)))

(assert (=> d!1699008 d!1699610))

(declare-fun d!1699612 () Bool)

(declare-fun c!915472 () Bool)

(assert (=> d!1699612 (= c!915472 (isEmpty!32835 (tail!10411 s!2326)))))

(declare-fun e!3283626 () Bool)

(assert (=> d!1699612 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158064 (head!11314 s!2326)) (tail!10411 s!2326)) e!3283626)))

(declare-fun b!5280818 () Bool)

(assert (=> b!5280818 (= e!3283626 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158064 (head!11314 s!2326))))))

(declare-fun b!5280819 () Bool)

(assert (=> b!5280819 (= e!3283626 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158064 (head!11314 s!2326)) (head!11314 (tail!10411 s!2326))) (tail!10411 (tail!10411 s!2326))))))

(assert (= (and d!1699612 c!915472) b!5280818))

(assert (= (and d!1699612 (not c!915472)) b!5280819))

(assert (=> d!1699612 m!6317336))

(assert (=> d!1699612 m!6317342))

(assert (=> b!5280818 m!6317510))

(declare-fun m!6318788 () Bool)

(assert (=> b!5280818 m!6318788))

(assert (=> b!5280819 m!6317336))

(assert (=> b!5280819 m!6318546))

(assert (=> b!5280819 m!6317510))

(assert (=> b!5280819 m!6318546))

(declare-fun m!6318790 () Bool)

(assert (=> b!5280819 m!6318790))

(assert (=> b!5280819 m!6317336))

(assert (=> b!5280819 m!6318550))

(assert (=> b!5280819 m!6318790))

(assert (=> b!5280819 m!6318550))

(declare-fun m!6318792 () Bool)

(assert (=> b!5280819 m!6318792))

(assert (=> b!5279536 d!1699612))

(declare-fun bs!1224180 () Bool)

(declare-fun d!1699614 () Bool)

(assert (= bs!1224180 (and d!1699614 d!1699606)))

(declare-fun lambda!266750 () Int)

(assert (=> bs!1224180 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266749))))

(declare-fun bs!1224181 () Bool)

(assert (= bs!1224181 (and d!1699614 d!1699460)))

(assert (=> bs!1224181 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266730))))

(declare-fun bs!1224182 () Bool)

(assert (= bs!1224182 (and d!1699614 d!1699498)))

(assert (=> bs!1224182 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266735))))

(declare-fun bs!1224183 () Bool)

(assert (= bs!1224183 (and d!1699614 d!1699488)))

(assert (=> bs!1224183 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266733))))

(declare-fun bs!1224184 () Bool)

(assert (= bs!1224184 (and d!1699614 b!5278704)))

(assert (=> bs!1224184 (= (= (head!11314 s!2326) (h!67326 s!2326)) (= lambda!266750 lambda!266558))))

(declare-fun bs!1224185 () Bool)

(assert (= bs!1224185 (and d!1699614 d!1698932)))

(assert (=> bs!1224185 (= (= (head!11314 s!2326) (h!67326 s!2326)) (= lambda!266750 lambda!266625))))

(declare-fun bs!1224186 () Bool)

(assert (= bs!1224186 (and d!1699614 d!1698976)))

(assert (=> bs!1224186 (= (= (head!11314 s!2326) (h!67326 s!2326)) (= lambda!266750 lambda!266635))))

(declare-fun bs!1224187 () Bool)

(assert (= bs!1224187 (and d!1699614 d!1699432)))

(assert (=> bs!1224187 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266717))))

(declare-fun bs!1224188 () Bool)

(assert (= bs!1224188 (and d!1699614 d!1699584)))

(assert (=> bs!1224188 (= (= (head!11314 s!2326) (head!11314 (t!374203 s!2326))) (= lambda!266750 lambda!266747))))

(assert (=> d!1699614 true))

(assert (=> d!1699614 (= (derivationStepZipper!1144 lt!2158064 (head!11314 s!2326)) (flatMap!628 lt!2158064 lambda!266750))))

(declare-fun bs!1224189 () Bool)

(assert (= bs!1224189 d!1699614))

(declare-fun m!6318794 () Bool)

(assert (=> bs!1224189 m!6318794))

(assert (=> b!5279536 d!1699614))

(assert (=> b!5279536 d!1699504))

(assert (=> b!5279536 d!1699426))

(declare-fun d!1699616 () Bool)

(declare-fun res!2239568 () Bool)

(declare-fun e!3283627 () Bool)

(assert (=> d!1699616 (=> res!2239568 e!3283627)))

(assert (=> d!1699616 (= res!2239568 ((_ is Nil!60880) zl!343))))

(assert (=> d!1699616 (= (forall!14311 zl!343 lambda!266616) e!3283627)))

(declare-fun b!5280820 () Bool)

(declare-fun e!3283628 () Bool)

(assert (=> b!5280820 (= e!3283627 e!3283628)))

(declare-fun res!2239569 () Bool)

(assert (=> b!5280820 (=> (not res!2239569) (not e!3283628))))

(assert (=> b!5280820 (= res!2239569 (dynLambda!24073 lambda!266616 (h!67328 zl!343)))))

(declare-fun b!5280821 () Bool)

(assert (=> b!5280821 (= e!3283628 (forall!14311 (t!374205 zl!343) lambda!266616))))

(assert (= (and d!1699616 (not res!2239568)) b!5280820))

(assert (= (and b!5280820 res!2239569) b!5280821))

(declare-fun b_lambda!203743 () Bool)

(assert (=> (not b_lambda!203743) (not b!5280820)))

(declare-fun m!6318796 () Bool)

(assert (=> b!5280820 m!6318796))

(declare-fun m!6318798 () Bool)

(assert (=> b!5280821 m!6318798))

(assert (=> b!5279227 d!1699616))

(assert (=> b!5279488 d!1699016))

(declare-fun d!1699618 () Bool)

(assert (=> d!1699618 true))

(declare-fun setRes!33842 () Bool)

(assert (=> d!1699618 setRes!33842))

(declare-fun condSetEmpty!33842 () Bool)

(declare-fun res!2239572 () (InoxSet Context!8570))

(assert (=> d!1699618 (= condSetEmpty!33842 (= res!2239572 ((as const (Array Context!8570 Bool)) false)))))

(assert (=> d!1699618 (= (choose!39396 lt!2158087 lambda!266558) res!2239572)))

(declare-fun setIsEmpty!33842 () Bool)

(assert (=> setIsEmpty!33842 setRes!33842))

(declare-fun e!3283631 () Bool)

(declare-fun setNonEmpty!33842 () Bool)

(declare-fun setElem!33842 () Context!8570)

(declare-fun tp!1475205 () Bool)

(assert (=> setNonEmpty!33842 (= setRes!33842 (and tp!1475205 (inv!80499 setElem!33842) e!3283631))))

(declare-fun setRest!33842 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33842 (= res!2239572 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33842 true) setRest!33842))))

(declare-fun b!5280824 () Bool)

(declare-fun tp!1475204 () Bool)

(assert (=> b!5280824 (= e!3283631 tp!1475204)))

(assert (= (and d!1699618 condSetEmpty!33842) setIsEmpty!33842))

(assert (= (and d!1699618 (not condSetEmpty!33842)) setNonEmpty!33842))

(assert (= setNonEmpty!33842 b!5280824))

(declare-fun m!6318800 () Bool)

(assert (=> setNonEmpty!33842 m!6318800))

(assert (=> d!1698950 d!1699618))

(assert (=> b!5279390 d!1699504))

(declare-fun b!5280825 () Bool)

(declare-fun e!3283634 () Bool)

(declare-fun call!376091 () Bool)

(assert (=> b!5280825 (= e!3283634 call!376091)))

(declare-fun bm!376086 () Bool)

(declare-fun call!376093 () Bool)

(declare-fun c!915473 () Bool)

(declare-fun c!915474 () Bool)

(assert (=> bm!376086 (= call!376093 (validRegex!6637 (ite c!915473 (reg!15230 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))) (ite c!915474 (regOne!30315 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))) (regOne!30314 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292)))))))))

(declare-fun b!5280826 () Bool)

(declare-fun res!2239577 () Bool)

(declare-fun e!3283635 () Bool)

(assert (=> b!5280826 (=> (not res!2239577) (not e!3283635))))

(declare-fun call!376092 () Bool)

(assert (=> b!5280826 (= res!2239577 call!376092)))

(declare-fun e!3283632 () Bool)

(assert (=> b!5280826 (= e!3283632 e!3283635)))

(declare-fun b!5280827 () Bool)

(declare-fun e!3283633 () Bool)

(declare-fun e!3283638 () Bool)

(assert (=> b!5280827 (= e!3283633 e!3283638)))

(declare-fun res!2239573 () Bool)

(assert (=> b!5280827 (= res!2239573 (not (nullable!5070 (reg!15230 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))))

(assert (=> b!5280827 (=> (not res!2239573) (not e!3283638))))

(declare-fun b!5280828 () Bool)

(declare-fun res!2239575 () Bool)

(declare-fun e!3283637 () Bool)

(assert (=> b!5280828 (=> res!2239575 e!3283637)))

(assert (=> b!5280828 (= res!2239575 (not ((_ is Concat!23746) (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292)))))))

(assert (=> b!5280828 (= e!3283632 e!3283637)))

(declare-fun b!5280829 () Bool)

(assert (=> b!5280829 (= e!3283637 e!3283634)))

(declare-fun res!2239576 () Bool)

(assert (=> b!5280829 (=> (not res!2239576) (not e!3283634))))

(assert (=> b!5280829 (= res!2239576 call!376092)))

(declare-fun b!5280830 () Bool)

(assert (=> b!5280830 (= e!3283638 call!376093)))

(declare-fun b!5280831 () Bool)

(declare-fun e!3283636 () Bool)

(assert (=> b!5280831 (= e!3283636 e!3283633)))

(assert (=> b!5280831 (= c!915473 ((_ is Star!14901) (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))

(declare-fun b!5280832 () Bool)

(assert (=> b!5280832 (= e!3283635 call!376091)))

(declare-fun b!5280833 () Bool)

(assert (=> b!5280833 (= e!3283633 e!3283632)))

(assert (=> b!5280833 (= c!915474 ((_ is Union!14901) (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))

(declare-fun bm!376088 () Bool)

(assert (=> bm!376088 (= call!376091 (validRegex!6637 (ite c!915474 (regTwo!30315 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))) (regTwo!30314 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))))

(declare-fun d!1699620 () Bool)

(declare-fun res!2239574 () Bool)

(assert (=> d!1699620 (=> res!2239574 e!3283636)))

(assert (=> d!1699620 (= res!2239574 ((_ is ElementMatch!14901) (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))))))

(assert (=> d!1699620 (= (validRegex!6637 (ite c!915036 (regTwo!30315 r!7292) (regTwo!30314 r!7292))) e!3283636)))

(declare-fun bm!376087 () Bool)

(assert (=> bm!376087 (= call!376092 call!376093)))

(assert (= (and d!1699620 (not res!2239574)) b!5280831))

(assert (= (and b!5280831 c!915473) b!5280827))

(assert (= (and b!5280831 (not c!915473)) b!5280833))

(assert (= (and b!5280827 res!2239573) b!5280830))

(assert (= (and b!5280833 c!915474) b!5280826))

(assert (= (and b!5280833 (not c!915474)) b!5280828))

(assert (= (and b!5280826 res!2239577) b!5280832))

(assert (= (and b!5280828 (not res!2239575)) b!5280829))

(assert (= (and b!5280829 res!2239576) b!5280825))

(assert (= (or b!5280832 b!5280825) bm!376088))

(assert (= (or b!5280826 b!5280829) bm!376087))

(assert (= (or b!5280830 bm!376087) bm!376086))

(declare-fun m!6318802 () Bool)

(assert (=> bm!376086 m!6318802))

(declare-fun m!6318804 () Bool)

(assert (=> b!5280827 m!6318804))

(declare-fun m!6318806 () Bool)

(assert (=> bm!376088 m!6318806))

(assert (=> bm!375817 d!1699620))

(assert (=> d!1698928 d!1698926))

(assert (=> d!1698928 d!1698924))

(declare-fun d!1699622 () Bool)

(assert (=> d!1699622 (= (matchR!7086 r!7292 s!2326) (matchRSpec!2004 r!7292 s!2326))))

(assert (=> d!1699622 true))

(declare-fun _$88!3586 () Unit!153122)

(assert (=> d!1699622 (= (choose!39397 r!7292 s!2326) _$88!3586)))

(declare-fun bs!1224190 () Bool)

(assert (= bs!1224190 d!1699622))

(assert (=> bs!1224190 m!6316790))

(assert (=> bs!1224190 m!6316788))

(assert (=> d!1698928 d!1699622))

(assert (=> d!1698928 d!1698922))

(declare-fun d!1699624 () Bool)

(declare-fun res!2239578 () Bool)

(declare-fun e!3283639 () Bool)

(assert (=> d!1699624 (=> res!2239578 e!3283639)))

(assert (=> d!1699624 (= res!2239578 ((_ is Nil!60879) lt!2158212))))

(assert (=> d!1699624 (= (forall!14309 lt!2158212 lambda!266631) e!3283639)))

(declare-fun b!5280834 () Bool)

(declare-fun e!3283640 () Bool)

(assert (=> b!5280834 (= e!3283639 e!3283640)))

(declare-fun res!2239579 () Bool)

(assert (=> b!5280834 (=> (not res!2239579) (not e!3283640))))

(assert (=> b!5280834 (= res!2239579 (dynLambda!24067 lambda!266631 (h!67327 lt!2158212)))))

(declare-fun b!5280835 () Bool)

(assert (=> b!5280835 (= e!3283640 (forall!14309 (t!374204 lt!2158212) lambda!266631))))

(assert (= (and d!1699624 (not res!2239578)) b!5280834))

(assert (= (and b!5280834 res!2239579) b!5280835))

(declare-fun b_lambda!203745 () Bool)

(assert (=> (not b_lambda!203745) (not b!5280834)))

(declare-fun m!6318808 () Bool)

(assert (=> b!5280834 m!6318808))

(declare-fun m!6318810 () Bool)

(assert (=> b!5280835 m!6318810))

(assert (=> d!1698954 d!1699624))

(declare-fun d!1699626 () Bool)

(assert (=> d!1699626 (= (head!11315 lt!2158092) (h!67327 lt!2158092))))

(assert (=> b!5279557 d!1699626))

(declare-fun e!3283643 () (InoxSet Context!8570))

(declare-fun b!5280836 () Bool)

(assert (=> b!5280836 (= e!3283643 (store ((as const (Array Context!8570 Bool)) false) (ite c!915112 lt!2158063 (Context!8571 call!375841)) true))))

(declare-fun b!5280837 () Bool)

(declare-fun e!3283644 () (InoxSet Context!8570))

(declare-fun call!376097 () (InoxSet Context!8570))

(assert (=> b!5280837 (= e!3283644 call!376097)))

(declare-fun b!5280838 () Bool)

(declare-fun e!3283646 () (InoxSet Context!8570))

(assert (=> b!5280838 (= e!3283646 e!3283644)))

(declare-fun c!915478 () Bool)

(assert (=> b!5280838 (= c!915478 ((_ is Concat!23746) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun call!376098 () (InoxSet Context!8570))

(declare-fun bm!376089 () Bool)

(declare-fun call!376095 () List!61003)

(declare-fun c!915476 () Bool)

(assert (=> bm!376089 (= call!376098 (derivationStepZipperDown!349 (ite c!915476 (regTwo!30315 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (regOne!30314 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))) (ite c!915476 (ite c!915112 lt!2158063 (Context!8571 call!375841)) (Context!8571 call!376095)) (h!67326 s!2326)))))

(declare-fun call!376094 () List!61003)

(declare-fun call!376096 () (InoxSet Context!8570))

(declare-fun c!915477 () Bool)

(declare-fun bm!376090 () Bool)

(assert (=> bm!376090 (= call!376096 (derivationStepZipperDown!349 (ite c!915476 (regOne!30315 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (ite c!915477 (regTwo!30314 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (ite c!915478 (regOne!30314 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (reg!15230 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))))) (ite (or c!915476 c!915477) (ite c!915112 lt!2158063 (Context!8571 call!375841)) (Context!8571 call!376094)) (h!67326 s!2326)))))

(declare-fun b!5280839 () Bool)

(declare-fun e!3283641 () (InoxSet Context!8570))

(assert (=> b!5280839 (= e!3283641 ((_ map or) call!376096 call!376098))))

(declare-fun bm!376091 () Bool)

(assert (=> bm!376091 (= call!376094 call!376095)))

(declare-fun d!1699628 () Bool)

(declare-fun c!915475 () Bool)

(assert (=> d!1699628 (= c!915475 (and ((_ is ElementMatch!14901) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (= (c!914851 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (h!67326 s!2326))))))

(assert (=> d!1699628 (= (derivationStepZipperDown!349 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))) (ite c!915112 lt!2158063 (Context!8571 call!375841)) (h!67326 s!2326)) e!3283643)))

(declare-fun b!5280840 () Bool)

(declare-fun e!3283645 () Bool)

(assert (=> b!5280840 (= e!3283645 (nullable!5070 (regOne!30314 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))))))

(declare-fun b!5280841 () Bool)

(assert (=> b!5280841 (= e!3283643 e!3283641)))

(assert (=> b!5280841 (= c!915476 ((_ is Union!14901) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(declare-fun b!5280842 () Bool)

(declare-fun call!376099 () (InoxSet Context!8570))

(assert (=> b!5280842 (= e!3283646 ((_ map or) call!376098 call!376099))))

(declare-fun b!5280843 () Bool)

(assert (=> b!5280843 (= c!915477 e!3283645)))

(declare-fun res!2239580 () Bool)

(assert (=> b!5280843 (=> (not res!2239580) (not e!3283645))))

(assert (=> b!5280843 (= res!2239580 ((_ is Concat!23746) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(assert (=> b!5280843 (= e!3283641 e!3283646)))

(declare-fun bm!376092 () Bool)

(assert (=> bm!376092 (= call!376095 ($colon$colon!1348 (exprs!4785 (ite c!915112 lt!2158063 (Context!8571 call!375841))) (ite (or c!915477 c!915478) (regTwo!30314 (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))))))

(declare-fun b!5280844 () Bool)

(declare-fun e!3283642 () (InoxSet Context!8570))

(assert (=> b!5280844 (= e!3283642 call!376097)))

(declare-fun bm!376093 () Bool)

(assert (=> bm!376093 (= call!376099 call!376096)))

(declare-fun b!5280845 () Bool)

(assert (=> b!5280845 (= e!3283642 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280846 () Bool)

(declare-fun c!915479 () Bool)

(assert (=> b!5280846 (= c!915479 ((_ is Star!14901) (ite c!915112 (regTwo!30315 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 (regOne!30314 r!7292))))))))

(assert (=> b!5280846 (= e!3283644 e!3283642)))

(declare-fun bm!376094 () Bool)

(assert (=> bm!376094 (= call!376097 call!376099)))

(assert (= (and d!1699628 c!915475) b!5280836))

(assert (= (and d!1699628 (not c!915475)) b!5280841))

(assert (= (and b!5280841 c!915476) b!5280839))

(assert (= (and b!5280841 (not c!915476)) b!5280843))

(assert (= (and b!5280843 res!2239580) b!5280840))

(assert (= (and b!5280843 c!915477) b!5280842))

(assert (= (and b!5280843 (not c!915477)) b!5280838))

(assert (= (and b!5280838 c!915478) b!5280837))

(assert (= (and b!5280838 (not c!915478)) b!5280846))

(assert (= (and b!5280846 c!915479) b!5280844))

(assert (= (and b!5280846 (not c!915479)) b!5280845))

(assert (= (or b!5280837 b!5280844) bm!376091))

(assert (= (or b!5280837 b!5280844) bm!376094))

(assert (= (or b!5280842 bm!376091) bm!376092))

(assert (= (or b!5280842 bm!376094) bm!376093))

(assert (= (or b!5280839 b!5280842) bm!376089))

(assert (= (or b!5280839 bm!376093) bm!376090))

(declare-fun m!6318812 () Bool)

(assert (=> bm!376090 m!6318812))

(declare-fun m!6318814 () Bool)

(assert (=> bm!376089 m!6318814))

(declare-fun m!6318816 () Bool)

(assert (=> b!5280836 m!6318816))

(declare-fun m!6318818 () Bool)

(assert (=> b!5280840 m!6318818))

(declare-fun m!6318820 () Bool)

(assert (=> bm!376092 m!6318820))

(assert (=> bm!375835 d!1699628))

(assert (=> d!1698908 d!1698916))

(declare-fun d!1699630 () Bool)

(assert (=> d!1699630 (= (flatMap!628 z!1189 lambda!266558) (dynLambda!24066 lambda!266558 (h!67328 zl!343)))))

(assert (=> d!1699630 true))

(declare-fun _$13!1860 () Unit!153122)

(assert (=> d!1699630 (= (choose!39395 z!1189 (h!67328 zl!343) lambda!266558) _$13!1860)))

(declare-fun b_lambda!203747 () Bool)

(assert (=> (not b_lambda!203747) (not d!1699630)))

(declare-fun bs!1224191 () Bool)

(assert (= bs!1224191 d!1699630))

(assert (=> bs!1224191 m!6316816))

(assert (=> bs!1224191 m!6317282))

(assert (=> d!1698908 d!1699630))

(declare-fun b!5280847 () Bool)

(declare-fun e!3283647 () (InoxSet Context!8570))

(assert (=> b!5280847 (= e!3283647 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!376095 () Bool)

(declare-fun call!376100 () (InoxSet Context!8570))

(assert (=> bm!376095 (= call!376100 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063)))))) (h!67326 s!2326)))))

(declare-fun d!1699632 () Bool)

(declare-fun c!915480 () Bool)

(declare-fun e!3283648 () Bool)

(assert (=> d!1699632 (= c!915480 e!3283648)))

(declare-fun res!2239581 () Bool)

(assert (=> d!1699632 (=> (not res!2239581) (not e!3283648))))

(assert (=> d!1699632 (= res!2239581 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063))))))))

(declare-fun e!3283649 () (InoxSet Context!8570))

(assert (=> d!1699632 (= (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158063))) (h!67326 s!2326)) e!3283649)))

(declare-fun b!5280848 () Bool)

(assert (=> b!5280848 (= e!3283647 call!376100)))

(declare-fun b!5280849 () Bool)

(assert (=> b!5280849 (= e!3283648 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063)))))))))

(declare-fun b!5280850 () Bool)

(assert (=> b!5280850 (= e!3283649 e!3283647)))

(declare-fun c!915481 () Bool)

(assert (=> b!5280850 (= c!915481 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063))))))))

(declare-fun b!5280851 () Bool)

(assert (=> b!5280851 (= e!3283649 ((_ map or) call!376100 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158063)))))) (h!67326 s!2326))))))

(assert (= (and d!1699632 res!2239581) b!5280849))

(assert (= (and d!1699632 c!915480) b!5280851))

(assert (= (and d!1699632 (not c!915480)) b!5280850))

(assert (= (and b!5280850 c!915481) b!5280848))

(assert (= (and b!5280850 (not c!915481)) b!5280847))

(assert (= (or b!5280851 b!5280848) bm!376095))

(declare-fun m!6318822 () Bool)

(assert (=> bm!376095 m!6318822))

(declare-fun m!6318824 () Bool)

(assert (=> b!5280849 m!6318824))

(declare-fun m!6318826 () Bool)

(assert (=> b!5280851 m!6318826))

(assert (=> b!5279421 d!1699632))

(declare-fun b!5280852 () Bool)

(declare-fun e!3283650 () Int)

(assert (=> b!5280852 (= e!3283650 1)))

(declare-fun b!5280853 () Bool)

(declare-fun c!915482 () Bool)

(assert (=> b!5280853 (= c!915482 ((_ is Union!14901) (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun e!3283653 () Int)

(declare-fun e!3283651 () Int)

(assert (=> b!5280853 (= e!3283653 e!3283651)))

(declare-fun b!5280854 () Bool)

(declare-fun e!3283652 () Int)

(declare-fun call!376101 () Int)

(declare-fun call!376102 () Int)

(assert (=> b!5280854 (= e!3283652 (+ 1 call!376101 call!376102))))

(declare-fun bm!376096 () Bool)

(declare-fun call!376103 () Int)

(assert (=> bm!376096 (= call!376101 call!376103)))

(declare-fun b!5280855 () Bool)

(assert (=> b!5280855 (= e!3283651 e!3283652)))

(declare-fun c!915483 () Bool)

(assert (=> b!5280855 (= c!915483 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun bm!376097 () Bool)

(declare-fun c!915484 () Bool)

(assert (=> bm!376097 (= call!376103 (regexDepthTotal!10 (ite c!915484 (reg!15230 (h!67327 (exprs!4785 lt!2158060))) (ite c!915482 (regOne!30315 (h!67327 (exprs!4785 lt!2158060))) (regOne!30314 (h!67327 (exprs!4785 lt!2158060)))))))))

(declare-fun b!5280856 () Bool)

(assert (=> b!5280856 (= e!3283653 (+ 1 call!376103))))

(declare-fun d!1699634 () Bool)

(declare-fun lt!2158345 () Int)

(assert (=> d!1699634 (> lt!2158345 0)))

(assert (=> d!1699634 (= lt!2158345 e!3283650)))

(declare-fun c!915485 () Bool)

(assert (=> d!1699634 (= c!915485 ((_ is ElementMatch!14901) (h!67327 (exprs!4785 lt!2158060))))))

(assert (=> d!1699634 (= (regexDepthTotal!10 (h!67327 (exprs!4785 lt!2158060))) lt!2158345)))

(declare-fun b!5280857 () Bool)

(assert (=> b!5280857 (= e!3283652 1)))

(declare-fun b!5280858 () Bool)

(assert (=> b!5280858 (= e!3283650 e!3283653)))

(assert (=> b!5280858 (= c!915484 ((_ is Star!14901) (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun b!5280859 () Bool)

(assert (=> b!5280859 (= e!3283651 (+ 1 call!376101 call!376102))))

(declare-fun bm!376098 () Bool)

(assert (=> bm!376098 (= call!376102 (regexDepthTotal!10 (ite c!915482 (regTwo!30315 (h!67327 (exprs!4785 lt!2158060))) (regTwo!30314 (h!67327 (exprs!4785 lt!2158060))))))))

(assert (= (and d!1699634 c!915485) b!5280852))

(assert (= (and d!1699634 (not c!915485)) b!5280858))

(assert (= (and b!5280858 c!915484) b!5280856))

(assert (= (and b!5280858 (not c!915484)) b!5280853))

(assert (= (and b!5280853 c!915482) b!5280859))

(assert (= (and b!5280853 (not c!915482)) b!5280855))

(assert (= (and b!5280855 c!915483) b!5280854))

(assert (= (and b!5280855 (not c!915483)) b!5280857))

(assert (= (or b!5280859 b!5280854) bm!376098))

(assert (= (or b!5280859 b!5280854) bm!376096))

(assert (= (or b!5280856 bm!376096) bm!376097))

(declare-fun m!6318828 () Bool)

(assert (=> bm!376097 m!6318828))

(declare-fun m!6318830 () Bool)

(assert (=> bm!376098 m!6318830))

(assert (=> b!5279494 d!1699634))

(declare-fun d!1699636 () Bool)

(declare-fun lt!2158346 () Int)

(assert (=> d!1699636 (>= lt!2158346 0)))

(declare-fun e!3283654 () Int)

(assert (=> d!1699636 (= lt!2158346 e!3283654)))

(declare-fun c!915486 () Bool)

(assert (=> d!1699636 (= c!915486 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060))))))))

(assert (=> d!1699636 (= (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))) lt!2158346)))

(declare-fun b!5280860 () Bool)

(assert (=> b!5280860 (= e!3283654 (+ (regexDepthTotal!10 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))))) (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158060)))))))))))

(declare-fun b!5280861 () Bool)

(assert (=> b!5280861 (= e!3283654 1)))

(assert (= (and d!1699636 c!915486) b!5280860))

(assert (= (and d!1699636 (not c!915486)) b!5280861))

(declare-fun m!6318832 () Bool)

(assert (=> b!5280860 m!6318832))

(declare-fun m!6318834 () Bool)

(assert (=> b!5280860 m!6318834))

(assert (=> b!5279494 d!1699636))

(declare-fun b!5280862 () Bool)

(declare-fun e!3283657 () Bool)

(declare-fun call!376104 () Bool)

(assert (=> b!5280862 (= e!3283657 call!376104)))

(declare-fun call!376106 () Bool)

(declare-fun c!915488 () Bool)

(declare-fun c!915487 () Bool)

(declare-fun bm!376099 () Bool)

(assert (=> bm!376099 (= call!376106 (validRegex!6637 (ite c!915487 (reg!15230 lt!2158209) (ite c!915488 (regOne!30315 lt!2158209) (regOne!30314 lt!2158209)))))))

(declare-fun b!5280863 () Bool)

(declare-fun res!2239586 () Bool)

(declare-fun e!3283658 () Bool)

(assert (=> b!5280863 (=> (not res!2239586) (not e!3283658))))

(declare-fun call!376105 () Bool)

(assert (=> b!5280863 (= res!2239586 call!376105)))

(declare-fun e!3283655 () Bool)

(assert (=> b!5280863 (= e!3283655 e!3283658)))

(declare-fun b!5280864 () Bool)

(declare-fun e!3283656 () Bool)

(declare-fun e!3283661 () Bool)

(assert (=> b!5280864 (= e!3283656 e!3283661)))

(declare-fun res!2239582 () Bool)

(assert (=> b!5280864 (= res!2239582 (not (nullable!5070 (reg!15230 lt!2158209))))))

(assert (=> b!5280864 (=> (not res!2239582) (not e!3283661))))

(declare-fun b!5280865 () Bool)

(declare-fun res!2239584 () Bool)

(declare-fun e!3283660 () Bool)

(assert (=> b!5280865 (=> res!2239584 e!3283660)))

(assert (=> b!5280865 (= res!2239584 (not ((_ is Concat!23746) lt!2158209)))))

(assert (=> b!5280865 (= e!3283655 e!3283660)))

(declare-fun b!5280866 () Bool)

(assert (=> b!5280866 (= e!3283660 e!3283657)))

(declare-fun res!2239585 () Bool)

(assert (=> b!5280866 (=> (not res!2239585) (not e!3283657))))

(assert (=> b!5280866 (= res!2239585 call!376105)))

(declare-fun b!5280867 () Bool)

(assert (=> b!5280867 (= e!3283661 call!376106)))

(declare-fun b!5280868 () Bool)

(declare-fun e!3283659 () Bool)

(assert (=> b!5280868 (= e!3283659 e!3283656)))

(assert (=> b!5280868 (= c!915487 ((_ is Star!14901) lt!2158209))))

(declare-fun b!5280869 () Bool)

(assert (=> b!5280869 (= e!3283658 call!376104)))

(declare-fun b!5280870 () Bool)

(assert (=> b!5280870 (= e!3283656 e!3283655)))

(assert (=> b!5280870 (= c!915488 ((_ is Union!14901) lt!2158209))))

(declare-fun bm!376101 () Bool)

(assert (=> bm!376101 (= call!376104 (validRegex!6637 (ite c!915488 (regTwo!30315 lt!2158209) (regTwo!30314 lt!2158209))))))

(declare-fun d!1699638 () Bool)

(declare-fun res!2239583 () Bool)

(assert (=> d!1699638 (=> res!2239583 e!3283659)))

(assert (=> d!1699638 (= res!2239583 ((_ is ElementMatch!14901) lt!2158209))))

(assert (=> d!1699638 (= (validRegex!6637 lt!2158209) e!3283659)))

(declare-fun bm!376100 () Bool)

(assert (=> bm!376100 (= call!376105 call!376106)))

(assert (= (and d!1699638 (not res!2239583)) b!5280868))

(assert (= (and b!5280868 c!915487) b!5280864))

(assert (= (and b!5280868 (not c!915487)) b!5280870))

(assert (= (and b!5280864 res!2239582) b!5280867))

(assert (= (and b!5280870 c!915488) b!5280863))

(assert (= (and b!5280870 (not c!915488)) b!5280865))

(assert (= (and b!5280863 res!2239586) b!5280869))

(assert (= (and b!5280865 (not res!2239584)) b!5280866))

(assert (= (and b!5280866 res!2239585) b!5280862))

(assert (= (or b!5280869 b!5280862) bm!376101))

(assert (= (or b!5280863 b!5280866) bm!376100))

(assert (= (or b!5280867 bm!376100) bm!376099))

(declare-fun m!6318836 () Bool)

(assert (=> bm!376099 m!6318836))

(declare-fun m!6318838 () Bool)

(assert (=> b!5280864 m!6318838))

(declare-fun m!6318840 () Bool)

(assert (=> bm!376101 m!6318840))

(assert (=> d!1698952 d!1699638))

(declare-fun d!1699640 () Bool)

(declare-fun res!2239587 () Bool)

(declare-fun e!3283662 () Bool)

(assert (=> d!1699640 (=> res!2239587 e!3283662)))

(assert (=> d!1699640 (= res!2239587 ((_ is Nil!60879) (unfocusZipperList!343 zl!343)))))

(assert (=> d!1699640 (= (forall!14309 (unfocusZipperList!343 zl!343) lambda!266628) e!3283662)))

(declare-fun b!5280871 () Bool)

(declare-fun e!3283663 () Bool)

(assert (=> b!5280871 (= e!3283662 e!3283663)))

(declare-fun res!2239588 () Bool)

(assert (=> b!5280871 (=> (not res!2239588) (not e!3283663))))

(assert (=> b!5280871 (= res!2239588 (dynLambda!24067 lambda!266628 (h!67327 (unfocusZipperList!343 zl!343))))))

(declare-fun b!5280872 () Bool)

(assert (=> b!5280872 (= e!3283663 (forall!14309 (t!374204 (unfocusZipperList!343 zl!343)) lambda!266628))))

(assert (= (and d!1699640 (not res!2239587)) b!5280871))

(assert (= (and b!5280871 res!2239588) b!5280872))

(declare-fun b_lambda!203749 () Bool)

(assert (=> (not b_lambda!203749) (not b!5280871)))

(declare-fun m!6318842 () Bool)

(assert (=> b!5280871 m!6318842))

(declare-fun m!6318844 () Bool)

(assert (=> b!5280872 m!6318844))

(assert (=> d!1698952 d!1699640))

(declare-fun d!1699642 () Bool)

(assert (=> d!1699642 (= (nullable!5070 (h!67327 (exprs!4785 lt!2158060))) (nullableFct!1450 (h!67327 (exprs!4785 lt!2158060))))))

(declare-fun bs!1224192 () Bool)

(assert (= bs!1224192 d!1699642))

(declare-fun m!6318846 () Bool)

(assert (=> bs!1224192 m!6318846))

(assert (=> b!5279505 d!1699642))

(declare-fun d!1699644 () Bool)

(assert (=> d!1699644 (= (head!11315 (unfocusZipperList!343 zl!343)) (h!67327 (unfocusZipperList!343 zl!343)))))

(assert (=> b!5279444 d!1699644))

(declare-fun d!1699646 () Bool)

(assert (=> d!1699646 (= (flatMap!628 lt!2158064 lambda!266635) (choose!39396 lt!2158064 lambda!266635))))

(declare-fun bs!1224193 () Bool)

(assert (= bs!1224193 d!1699646))

(declare-fun m!6318848 () Bool)

(assert (=> bs!1224193 m!6318848))

(assert (=> d!1698976 d!1699646))

(declare-fun d!1699648 () Bool)

(assert (=> d!1699648 (= (nullable!5070 (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))) (nullableFct!1450 (regOne!30314 (regOne!30314 (regOne!30314 r!7292)))))))

(declare-fun bs!1224194 () Bool)

(assert (= bs!1224194 d!1699648))

(declare-fun m!6318850 () Bool)

(assert (=> bs!1224194 m!6318850))

(assert (=> b!5279523 d!1699648))

(declare-fun bs!1224195 () Bool)

(declare-fun d!1699650 () Bool)

(assert (= bs!1224195 (and d!1699650 d!1699402)))

(declare-fun lambda!266751 () Int)

(assert (=> bs!1224195 (not (= lambda!266751 lambda!266714))))

(declare-fun bs!1224196 () Bool)

(assert (= bs!1224196 (and d!1699650 d!1699400)))

(assert (=> bs!1224196 (not (= lambda!266751 lambda!266713))))

(declare-fun bs!1224197 () Bool)

(assert (= bs!1224197 (and d!1699650 b!5280471)))

(assert (=> bs!1224197 (not (= lambda!266751 lambda!266726))))

(declare-fun bs!1224198 () Bool)

(assert (= bs!1224198 (and d!1699650 d!1699454)))

(assert (=> bs!1224198 (= (and (= lt!2158184 lt!2158188) (= lambda!266611 lambda!266614)) (= lambda!266751 lambda!266729))))

(declare-fun bs!1224199 () Bool)

(assert (= bs!1224199 (and d!1699650 b!5279220)))

(assert (=> bs!1224199 (not (= lambda!266751 lambda!266612))))

(declare-fun bs!1224200 () Bool)

(assert (= bs!1224200 (and d!1699650 d!1699528)))

(assert (=> bs!1224200 (not (= lambda!266751 lambda!266738))))

(declare-fun bs!1224201 () Bool)

(assert (= bs!1224201 (and d!1699650 b!5279225)))

(assert (=> bs!1224201 (not (= lambda!266751 lambda!266615))))

(declare-fun bs!1224202 () Bool)

(assert (= bs!1224202 (and d!1699650 d!1699566)))

(assert (=> bs!1224202 (not (= lambda!266751 lambda!266746))))

(declare-fun bs!1224203 () Bool)

(assert (= bs!1224203 (and d!1699650 d!1699428)))

(assert (=> bs!1224203 (not (= lambda!266751 lambda!266716))))

(declare-fun bs!1224204 () Bool)

(assert (= bs!1224204 (and d!1699650 b!5280469)))

(assert (=> bs!1224204 (not (= lambda!266751 lambda!266725))))

(declare-fun bs!1224205 () Bool)

(assert (= bs!1224205 (and d!1699650 d!1699476)))

(assert (=> bs!1224205 (not (= lambda!266751 lambda!266732))))

(declare-fun bs!1224206 () Bool)

(assert (= bs!1224206 (and d!1699650 d!1699558)))

(assert (=> bs!1224206 (not (= lambda!266751 lambda!266745))))

(declare-fun bs!1224207 () Bool)

(assert (= bs!1224207 (and d!1699650 b!5279222)))

(assert (=> bs!1224207 (not (= lambda!266751 lambda!266613))))

(declare-fun bs!1224208 () Bool)

(assert (= bs!1224208 (and d!1699650 b!5279227)))

(assert (=> bs!1224208 (not (= lambda!266751 lambda!266616))))

(declare-fun bs!1224209 () Bool)

(assert (= bs!1224209 (and d!1699650 d!1699520)))

(assert (=> bs!1224209 (not (= lambda!266751 lambda!266737))))

(assert (=> d!1699650 true))

(assert (=> d!1699650 true))

(assert (=> d!1699650 (< (dynLambda!24071 order!27063 lambda!266611) (dynLambda!24072 order!27065 lambda!266751))))

(assert (=> d!1699650 (forall!14311 (t!374205 lt!2158083) lambda!266751)))

(declare-fun lt!2158347 () Unit!153122)

(assert (=> d!1699650 (= lt!2158347 (choose!39405 (t!374205 lt!2158083) lt!2158184 (zipperDepth!18 (t!374205 lt!2158083)) lambda!266611))))

(assert (=> d!1699650 (>= lt!2158184 (zipperDepth!18 (t!374205 lt!2158083)))))

(assert (=> d!1699650 (= (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 lt!2158083) lt!2158184 (zipperDepth!18 (t!374205 lt!2158083)) lambda!266611) lt!2158347)))

(declare-fun bs!1224210 () Bool)

(assert (= bs!1224210 d!1699650))

(declare-fun m!6318852 () Bool)

(assert (=> bs!1224210 m!6318852))

(assert (=> bs!1224210 m!6317258))

(declare-fun m!6318854 () Bool)

(assert (=> bs!1224210 m!6318854))

(assert (=> b!5279220 d!1699650))

(declare-fun bs!1224211 () Bool)

(declare-fun b!5280873 () Bool)

(assert (= bs!1224211 (and b!5280873 d!1699490)))

(declare-fun lambda!266752 () Int)

(assert (=> bs!1224211 (not (= lambda!266752 lambda!266734))))

(declare-fun bs!1224212 () Bool)

(assert (= bs!1224212 (and b!5280873 b!5278732)))

(assert (=> bs!1224212 (not (= lambda!266752 lambda!266559))))

(declare-fun bs!1224213 () Bool)

(assert (= bs!1224213 (and b!5280873 d!1698954)))

(assert (=> bs!1224213 (not (= lambda!266752 lambda!266631))))

(declare-fun bs!1224214 () Bool)

(assert (= bs!1224214 (and b!5280873 d!1699598)))

(assert (=> bs!1224214 (not (= lambda!266752 lambda!266748))))

(declare-fun bs!1224215 () Bool)

(assert (= bs!1224215 (and b!5280873 d!1698998)))

(assert (=> bs!1224215 (not (= lambda!266752 lambda!266639))))

(declare-fun bs!1224216 () Bool)

(assert (= bs!1224216 (and b!5280873 d!1699464)))

(assert (=> bs!1224216 (not (= lambda!266752 lambda!266731))))

(declare-fun bs!1224217 () Bool)

(assert (= bs!1224217 (and b!5280873 d!1699514)))

(assert (=> bs!1224217 (not (= lambda!266752 lambda!266736))))

(declare-fun bs!1224218 () Bool)

(assert (= bs!1224218 (and b!5280873 b!5280464)))

(declare-fun lt!2158350 () Int)

(assert (=> bs!1224218 (= (= lt!2158350 lt!2158318) (= lambda!266752 lambda!266722))))

(declare-fun bs!1224219 () Bool)

(assert (= bs!1224219 (and b!5280873 d!1699546)))

(assert (=> bs!1224219 (not (= lambda!266752 lambda!266742))))

(declare-fun bs!1224220 () Bool)

(assert (= bs!1224220 (and b!5280873 d!1698952)))

(assert (=> bs!1224220 (not (= lambda!266752 lambda!266628))))

(declare-fun bs!1224221 () Bool)

(assert (= bs!1224221 (and b!5280873 d!1699002)))

(assert (=> bs!1224221 (not (= lambda!266752 lambda!266640))))

(declare-fun bs!1224222 () Bool)

(assert (= bs!1224222 (and b!5280873 b!5280466)))

(assert (=> bs!1224222 (= (= lt!2158350 lt!2158316) (= lambda!266752 lambda!266723))))

(declare-fun bs!1224223 () Bool)

(assert (= bs!1224223 (and b!5280873 d!1698990)))

(assert (=> bs!1224223 (not (= lambda!266752 lambda!266638))))

(declare-fun bs!1224224 () Bool)

(assert (= bs!1224224 (and b!5280873 d!1698956)))

(assert (=> bs!1224224 (not (= lambda!266752 lambda!266634))))

(declare-fun bs!1224225 () Bool)

(assert (= bs!1224225 (and b!5280873 d!1699422)))

(assert (=> bs!1224225 (not (= lambda!266752 lambda!266715))))

(assert (=> b!5280873 true))

(declare-fun bs!1224226 () Bool)

(declare-fun b!5280875 () Bool)

(assert (= bs!1224226 (and b!5280875 b!5280873)))

(declare-fun lt!2158348 () Int)

(declare-fun lambda!266753 () Int)

(assert (=> bs!1224226 (= (= lt!2158348 lt!2158350) (= lambda!266753 lambda!266752))))

(declare-fun bs!1224227 () Bool)

(assert (= bs!1224227 (and b!5280875 d!1699490)))

(assert (=> bs!1224227 (not (= lambda!266753 lambda!266734))))

(declare-fun bs!1224228 () Bool)

(assert (= bs!1224228 (and b!5280875 b!5278732)))

(assert (=> bs!1224228 (not (= lambda!266753 lambda!266559))))

(declare-fun bs!1224229 () Bool)

(assert (= bs!1224229 (and b!5280875 d!1698954)))

(assert (=> bs!1224229 (not (= lambda!266753 lambda!266631))))

(declare-fun bs!1224230 () Bool)

(assert (= bs!1224230 (and b!5280875 d!1699598)))

(assert (=> bs!1224230 (not (= lambda!266753 lambda!266748))))

(declare-fun bs!1224231 () Bool)

(assert (= bs!1224231 (and b!5280875 d!1698998)))

(assert (=> bs!1224231 (not (= lambda!266753 lambda!266639))))

(declare-fun bs!1224232 () Bool)

(assert (= bs!1224232 (and b!5280875 d!1699464)))

(assert (=> bs!1224232 (not (= lambda!266753 lambda!266731))))

(declare-fun bs!1224233 () Bool)

(assert (= bs!1224233 (and b!5280875 d!1699514)))

(assert (=> bs!1224233 (not (= lambda!266753 lambda!266736))))

(declare-fun bs!1224234 () Bool)

(assert (= bs!1224234 (and b!5280875 b!5280464)))

(assert (=> bs!1224234 (= (= lt!2158348 lt!2158318) (= lambda!266753 lambda!266722))))

(declare-fun bs!1224235 () Bool)

(assert (= bs!1224235 (and b!5280875 d!1699546)))

(assert (=> bs!1224235 (not (= lambda!266753 lambda!266742))))

(declare-fun bs!1224236 () Bool)

(assert (= bs!1224236 (and b!5280875 d!1698952)))

(assert (=> bs!1224236 (not (= lambda!266753 lambda!266628))))

(declare-fun bs!1224237 () Bool)

(assert (= bs!1224237 (and b!5280875 d!1699002)))

(assert (=> bs!1224237 (not (= lambda!266753 lambda!266640))))

(declare-fun bs!1224238 () Bool)

(assert (= bs!1224238 (and b!5280875 b!5280466)))

(assert (=> bs!1224238 (= (= lt!2158348 lt!2158316) (= lambda!266753 lambda!266723))))

(declare-fun bs!1224239 () Bool)

(assert (= bs!1224239 (and b!5280875 d!1698990)))

(assert (=> bs!1224239 (not (= lambda!266753 lambda!266638))))

(declare-fun bs!1224240 () Bool)

(assert (= bs!1224240 (and b!5280875 d!1698956)))

(assert (=> bs!1224240 (not (= lambda!266753 lambda!266634))))

(declare-fun bs!1224241 () Bool)

(assert (= bs!1224241 (and b!5280875 d!1699422)))

(assert (=> bs!1224241 (not (= lambda!266753 lambda!266715))))

(assert (=> b!5280875 true))

(declare-fun d!1699652 () Bool)

(declare-fun e!3283665 () Bool)

(assert (=> d!1699652 e!3283665))

(declare-fun res!2239589 () Bool)

(assert (=> d!1699652 (=> (not res!2239589) (not e!3283665))))

(assert (=> d!1699652 (= res!2239589 (>= lt!2158348 0))))

(declare-fun e!3283664 () Int)

(assert (=> d!1699652 (= lt!2158348 e!3283664)))

(declare-fun c!915489 () Bool)

(assert (=> d!1699652 (= c!915489 ((_ is Cons!60879) (exprs!4785 (h!67328 lt!2158083))))))

(assert (=> d!1699652 (= (contextDepth!10 (h!67328 lt!2158083)) lt!2158348)))

(assert (=> b!5280873 (= e!3283664 lt!2158350)))

(assert (=> b!5280873 (= lt!2158350 (maxBigInt!0 (regexDepth!155 (h!67327 (exprs!4785 (h!67328 lt!2158083)))) (contextDepth!10 (Context!8571 (t!374204 (exprs!4785 (h!67328 lt!2158083)))))))))

(declare-fun lt!2158351 () Unit!153122)

(assert (=> b!5280873 (= lt!2158351 (lemmaForallRegexDepthBiggerThanTransitive!4 (t!374204 (exprs!4785 (h!67328 lt!2158083))) lt!2158350 (contextDepth!10 (Context!8571 (t!374204 (exprs!4785 (h!67328 lt!2158083)))))))))

(assert (=> b!5280873 (forall!14309 (t!374204 (exprs!4785 (h!67328 lt!2158083))) lambda!266752)))

(declare-fun lt!2158349 () Unit!153122)

(assert (=> b!5280873 (= lt!2158349 lt!2158351)))

(declare-fun b!5280874 () Bool)

(assert (=> b!5280874 (= e!3283664 0)))

(assert (=> b!5280875 (= e!3283665 (forall!14309 (exprs!4785 (h!67328 lt!2158083)) lambda!266753))))

(assert (= (and d!1699652 c!915489) b!5280873))

(assert (= (and d!1699652 (not c!915489)) b!5280874))

(assert (= (and d!1699652 res!2239589) b!5280875))

(declare-fun m!6318856 () Bool)

(assert (=> b!5280873 m!6318856))

(declare-fun m!6318858 () Bool)

(assert (=> b!5280873 m!6318858))

(declare-fun m!6318860 () Bool)

(assert (=> b!5280873 m!6318860))

(assert (=> b!5280873 m!6318856))

(declare-fun m!6318862 () Bool)

(assert (=> b!5280873 m!6318862))

(assert (=> b!5280873 m!6318860))

(assert (=> b!5280873 m!6318856))

(declare-fun m!6318864 () Bool)

(assert (=> b!5280873 m!6318864))

(declare-fun m!6318866 () Bool)

(assert (=> b!5280875 m!6318866))

(assert (=> b!5279220 d!1699652))

(declare-fun d!1699654 () Bool)

(declare-fun res!2239590 () Bool)

(declare-fun e!3283666 () Bool)

(assert (=> d!1699654 (=> res!2239590 e!3283666)))

(assert (=> d!1699654 (= res!2239590 ((_ is Nil!60880) (t!374205 lt!2158083)))))

(assert (=> d!1699654 (= (forall!14311 (t!374205 lt!2158083) lambda!266612) e!3283666)))

(declare-fun b!5280876 () Bool)

(declare-fun e!3283667 () Bool)

(assert (=> b!5280876 (= e!3283666 e!3283667)))

(declare-fun res!2239591 () Bool)

(assert (=> b!5280876 (=> (not res!2239591) (not e!3283667))))

(assert (=> b!5280876 (= res!2239591 (dynLambda!24073 lambda!266612 (h!67328 (t!374205 lt!2158083))))))

(declare-fun b!5280877 () Bool)

(assert (=> b!5280877 (= e!3283667 (forall!14311 (t!374205 (t!374205 lt!2158083)) lambda!266612))))

(assert (= (and d!1699654 (not res!2239590)) b!5280876))

(assert (= (and b!5280876 res!2239591) b!5280877))

(declare-fun b_lambda!203751 () Bool)

(assert (=> (not b_lambda!203751) (not b!5280876)))

(declare-fun m!6318868 () Bool)

(assert (=> b!5280876 m!6318868))

(declare-fun m!6318870 () Bool)

(assert (=> b!5280877 m!6318870))

(assert (=> b!5279220 d!1699654))

(declare-fun d!1699656 () Bool)

(assert (=> d!1699656 (= (maxBigInt!0 (contextDepth!10 (h!67328 lt!2158083)) (zipperDepth!18 (t!374205 lt!2158083))) (ite (>= (contextDepth!10 (h!67328 lt!2158083)) (zipperDepth!18 (t!374205 lt!2158083))) (contextDepth!10 (h!67328 lt!2158083)) (zipperDepth!18 (t!374205 lt!2158083))))))

(assert (=> b!5279220 d!1699656))

(declare-fun bs!1224242 () Bool)

(declare-fun b!5280878 () Bool)

(assert (= bs!1224242 (and b!5280878 b!5279220)))

(declare-fun lambda!266754 () Int)

(assert (=> bs!1224242 (= lambda!266754 lambda!266611)))

(declare-fun bs!1224243 () Bool)

(assert (= bs!1224243 (and b!5280878 b!5279225)))

(assert (=> bs!1224243 (= lambda!266754 lambda!266614)))

(declare-fun bs!1224244 () Bool)

(assert (= bs!1224244 (and b!5280878 b!5280469)))

(assert (=> bs!1224244 (= lambda!266754 lambda!266724)))

(declare-fun bs!1224245 () Bool)

(assert (= bs!1224245 (and b!5280878 d!1699402)))

(declare-fun lambda!266755 () Int)

(assert (=> bs!1224245 (not (= lambda!266755 lambda!266714))))

(declare-fun bs!1224246 () Bool)

(assert (= bs!1224246 (and b!5280878 d!1699400)))

(assert (=> bs!1224246 (not (= lambda!266755 lambda!266713))))

(declare-fun bs!1224247 () Bool)

(assert (= bs!1224247 (and b!5280878 d!1699650)))

(assert (=> bs!1224247 (not (= lambda!266755 lambda!266751))))

(declare-fun bs!1224248 () Bool)

(assert (= bs!1224248 (and b!5280878 b!5280471)))

(declare-fun lt!2158354 () Int)

(assert (=> bs!1224248 (= (= lt!2158354 lt!2158323) (= lambda!266755 lambda!266726))))

(declare-fun bs!1224249 () Bool)

(assert (= bs!1224249 (and b!5280878 d!1699454)))

(assert (=> bs!1224249 (not (= lambda!266755 lambda!266729))))

(assert (=> bs!1224242 (= (= lt!2158354 lt!2158184) (= lambda!266755 lambda!266612))))

(declare-fun bs!1224250 () Bool)

(assert (= bs!1224250 (and b!5280878 d!1699528)))

(assert (=> bs!1224250 (not (= lambda!266755 lambda!266738))))

(assert (=> bs!1224243 (= (= lt!2158354 lt!2158188) (= lambda!266755 lambda!266615))))

(declare-fun bs!1224251 () Bool)

(assert (= bs!1224251 (and b!5280878 d!1699566)))

(assert (=> bs!1224251 (not (= lambda!266755 lambda!266746))))

(declare-fun bs!1224252 () Bool)

(assert (= bs!1224252 (and b!5280878 d!1699428)))

(assert (=> bs!1224252 (not (= lambda!266755 lambda!266716))))

(assert (=> bs!1224244 (= (= lt!2158354 lt!2158322) (= lambda!266755 lambda!266725))))

(declare-fun bs!1224253 () Bool)

(assert (= bs!1224253 (and b!5280878 d!1699476)))

(assert (=> bs!1224253 (not (= lambda!266755 lambda!266732))))

(declare-fun bs!1224254 () Bool)

(assert (= bs!1224254 (and b!5280878 d!1699558)))

(assert (=> bs!1224254 (not (= lambda!266755 lambda!266745))))

(declare-fun bs!1224255 () Bool)

(assert (= bs!1224255 (and b!5280878 b!5279222)))

(assert (=> bs!1224255 (= (= lt!2158354 lt!2158185) (= lambda!266755 lambda!266613))))

(declare-fun bs!1224256 () Bool)

(assert (= bs!1224256 (and b!5280878 b!5279227)))

(assert (=> bs!1224256 (= (= lt!2158354 lt!2158189) (= lambda!266755 lambda!266616))))

(declare-fun bs!1224257 () Bool)

(assert (= bs!1224257 (and b!5280878 d!1699520)))

(assert (=> bs!1224257 (not (= lambda!266755 lambda!266737))))

(assert (=> b!5280878 true))

(declare-fun bs!1224258 () Bool)

(declare-fun b!5280880 () Bool)

(assert (= bs!1224258 (and b!5280880 d!1699402)))

(declare-fun lambda!266756 () Int)

(assert (=> bs!1224258 (not (= lambda!266756 lambda!266714))))

(declare-fun bs!1224259 () Bool)

(assert (= bs!1224259 (and b!5280880 d!1699400)))

(assert (=> bs!1224259 (not (= lambda!266756 lambda!266713))))

(declare-fun bs!1224260 () Bool)

(assert (= bs!1224260 (and b!5280880 d!1699650)))

(assert (=> bs!1224260 (not (= lambda!266756 lambda!266751))))

(declare-fun bs!1224261 () Bool)

(assert (= bs!1224261 (and b!5280880 b!5280471)))

(declare-fun lt!2158355 () Int)

(assert (=> bs!1224261 (= (= lt!2158355 lt!2158323) (= lambda!266756 lambda!266726))))

(declare-fun bs!1224262 () Bool)

(assert (= bs!1224262 (and b!5280880 d!1699454)))

(assert (=> bs!1224262 (not (= lambda!266756 lambda!266729))))

(declare-fun bs!1224263 () Bool)

(assert (= bs!1224263 (and b!5280880 b!5279220)))

(assert (=> bs!1224263 (= (= lt!2158355 lt!2158184) (= lambda!266756 lambda!266612))))

(declare-fun bs!1224264 () Bool)

(assert (= bs!1224264 (and b!5280880 d!1699528)))

(assert (=> bs!1224264 (not (= lambda!266756 lambda!266738))))

(declare-fun bs!1224265 () Bool)

(assert (= bs!1224265 (and b!5280880 b!5279225)))

(assert (=> bs!1224265 (= (= lt!2158355 lt!2158188) (= lambda!266756 lambda!266615))))

(declare-fun bs!1224266 () Bool)

(assert (= bs!1224266 (and b!5280880 d!1699566)))

(assert (=> bs!1224266 (not (= lambda!266756 lambda!266746))))

(declare-fun bs!1224267 () Bool)

(assert (= bs!1224267 (and b!5280880 d!1699428)))

(assert (=> bs!1224267 (not (= lambda!266756 lambda!266716))))

(declare-fun bs!1224268 () Bool)

(assert (= bs!1224268 (and b!5280880 b!5280469)))

(assert (=> bs!1224268 (= (= lt!2158355 lt!2158322) (= lambda!266756 lambda!266725))))

(declare-fun bs!1224269 () Bool)

(assert (= bs!1224269 (and b!5280880 d!1699558)))

(assert (=> bs!1224269 (not (= lambda!266756 lambda!266745))))

(declare-fun bs!1224270 () Bool)

(assert (= bs!1224270 (and b!5280880 b!5279222)))

(assert (=> bs!1224270 (= (= lt!2158355 lt!2158185) (= lambda!266756 lambda!266613))))

(declare-fun bs!1224271 () Bool)

(assert (= bs!1224271 (and b!5280880 b!5279227)))

(assert (=> bs!1224271 (= (= lt!2158355 lt!2158189) (= lambda!266756 lambda!266616))))

(declare-fun bs!1224272 () Bool)

(assert (= bs!1224272 (and b!5280880 d!1699520)))

(assert (=> bs!1224272 (not (= lambda!266756 lambda!266737))))

(declare-fun bs!1224273 () Bool)

(assert (= bs!1224273 (and b!5280880 b!5280878)))

(assert (=> bs!1224273 (= (= lt!2158355 lt!2158354) (= lambda!266756 lambda!266755))))

(declare-fun bs!1224274 () Bool)

(assert (= bs!1224274 (and b!5280880 d!1699476)))

(assert (=> bs!1224274 (not (= lambda!266756 lambda!266732))))

(assert (=> b!5280880 true))

(declare-fun d!1699658 () Bool)

(declare-fun e!3283669 () Bool)

(assert (=> d!1699658 e!3283669))

(declare-fun res!2239592 () Bool)

(assert (=> d!1699658 (=> (not res!2239592) (not e!3283669))))

(assert (=> d!1699658 (= res!2239592 (>= lt!2158355 0))))

(declare-fun e!3283668 () Int)

(assert (=> d!1699658 (= lt!2158355 e!3283668)))

(declare-fun c!915490 () Bool)

(assert (=> d!1699658 (= c!915490 ((_ is Cons!60880) (t!374205 lt!2158083)))))

(assert (=> d!1699658 (= (zipperDepth!18 (t!374205 lt!2158083)) lt!2158355)))

(assert (=> b!5280878 (= e!3283668 lt!2158354)))

(assert (=> b!5280878 (= lt!2158354 (maxBigInt!0 (contextDepth!10 (h!67328 (t!374205 lt!2158083))) (zipperDepth!18 (t!374205 (t!374205 lt!2158083)))))))

(declare-fun lt!2158353 () Unit!153122)

(assert (=> b!5280878 (= lt!2158353 (lemmaForallContextDepthBiggerThanTransitive!4 (t!374205 (t!374205 lt!2158083)) lt!2158354 (zipperDepth!18 (t!374205 (t!374205 lt!2158083))) lambda!266754))))

(assert (=> b!5280878 (forall!14311 (t!374205 (t!374205 lt!2158083)) lambda!266755)))

(declare-fun lt!2158352 () Unit!153122)

(assert (=> b!5280878 (= lt!2158352 lt!2158353)))

(declare-fun b!5280879 () Bool)

(assert (=> b!5280879 (= e!3283668 0)))

(assert (=> b!5280880 (= e!3283669 (forall!14311 (t!374205 lt!2158083) lambda!266756))))

(assert (= (and d!1699658 c!915490) b!5280878))

(assert (= (and d!1699658 (not c!915490)) b!5280879))

(assert (= (and d!1699658 res!2239592) b!5280880))

(declare-fun m!6318872 () Bool)

(assert (=> b!5280878 m!6318872))

(assert (=> b!5280878 m!6318872))

(declare-fun m!6318874 () Bool)

(assert (=> b!5280878 m!6318874))

(declare-fun m!6318876 () Bool)

(assert (=> b!5280878 m!6318876))

(assert (=> b!5280878 m!6318876))

(assert (=> b!5280878 m!6318872))

(declare-fun m!6318878 () Bool)

(assert (=> b!5280878 m!6318878))

(declare-fun m!6318880 () Bool)

(assert (=> b!5280878 m!6318880))

(declare-fun m!6318882 () Bool)

(assert (=> b!5280880 m!6318882))

(assert (=> b!5279220 d!1699658))

(declare-fun d!1699660 () Bool)

(assert (=> d!1699660 (= ($colon$colon!1348 (exprs!4785 lt!2158063) (ite (or c!915113 c!915114) (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 r!7292)))) (Cons!60879 (ite (or c!915113 c!915114) (regTwo!30314 (regOne!30314 (regOne!30314 r!7292))) (regOne!30314 (regOne!30314 r!7292))) (exprs!4785 lt!2158063)))))

(assert (=> bm!375838 d!1699660))

(assert (=> d!1698948 d!1699420))

(assert (=> b!5279590 d!1699412))

(declare-fun e!3283672 () (InoxSet Context!8570))

(declare-fun b!5280881 () Bool)

(assert (=> b!5280881 (= e!3283672 (store ((as const (Array Context!8570 Bool)) false) (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808)) true))))

(declare-fun b!5280882 () Bool)

(declare-fun e!3283673 () (InoxSet Context!8570))

(declare-fun call!376110 () (InoxSet Context!8570))

(assert (=> b!5280882 (= e!3283673 call!376110)))

(declare-fun b!5280883 () Bool)

(declare-fun e!3283675 () (InoxSet Context!8570))

(assert (=> b!5280883 (= e!3283675 e!3283673)))

(declare-fun c!915494 () Bool)

(assert (=> b!5280883 (= c!915494 ((_ is Concat!23746) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun call!376108 () List!61003)

(declare-fun bm!376102 () Bool)

(declare-fun c!915492 () Bool)

(declare-fun call!376111 () (InoxSet Context!8570))

(assert (=> bm!376102 (= call!376111 (derivationStepZipperDown!349 (ite c!915492 (regTwo!30315 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (regOne!30314 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))))) (ite c!915492 (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808)) (Context!8571 call!376108)) (h!67326 s!2326)))))

(declare-fun call!376107 () List!61003)

(declare-fun c!915493 () Bool)

(declare-fun bm!376103 () Bool)

(declare-fun call!376109 () (InoxSet Context!8570))

(assert (=> bm!376103 (= call!376109 (derivationStepZipperDown!349 (ite c!915492 (regOne!30315 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (ite c!915493 (regTwo!30314 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (ite c!915494 (regOne!30314 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (reg!15230 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))) (ite (or c!915492 c!915493) (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808)) (Context!8571 call!376107)) (h!67326 s!2326)))))

(declare-fun b!5280884 () Bool)

(declare-fun e!3283670 () (InoxSet Context!8570))

(assert (=> b!5280884 (= e!3283670 ((_ map or) call!376109 call!376111))))

(declare-fun bm!376104 () Bool)

(assert (=> bm!376104 (= call!376107 call!376108)))

(declare-fun c!915491 () Bool)

(declare-fun d!1699662 () Bool)

(assert (=> d!1699662 (= c!915491 (and ((_ is ElementMatch!14901) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (= (c!914851 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326))))))

(assert (=> d!1699662 (= (derivationStepZipperDown!349 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))) (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808)) (h!67326 s!2326)) e!3283672)))

(declare-fun b!5280885 () Bool)

(declare-fun e!3283674 () Bool)

(assert (=> b!5280885 (= e!3283674 (nullable!5070 (regOne!30314 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))))

(declare-fun b!5280886 () Bool)

(assert (=> b!5280886 (= e!3283672 e!3283670)))

(assert (=> b!5280886 (= c!915492 ((_ is Union!14901) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun b!5280887 () Bool)

(declare-fun call!376112 () (InoxSet Context!8570))

(assert (=> b!5280887 (= e!3283675 ((_ map or) call!376111 call!376112))))

(declare-fun b!5280888 () Bool)

(assert (=> b!5280888 (= c!915493 e!3283674)))

(declare-fun res!2239593 () Bool)

(assert (=> b!5280888 (=> (not res!2239593) (not e!3283674))))

(assert (=> b!5280888 (= res!2239593 ((_ is Concat!23746) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))))

(assert (=> b!5280888 (= e!3283670 e!3283675)))

(declare-fun bm!376105 () Bool)

(assert (=> bm!376105 (= call!376108 ($colon$colon!1348 (exprs!4785 (ite (or c!915027 c!915028) lt!2158077 (Context!8571 call!375808))) (ite (or c!915493 c!915494) (regTwo!30314 (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343))))))))))))

(declare-fun b!5280889 () Bool)

(declare-fun e!3283671 () (InoxSet Context!8570))

(assert (=> b!5280889 (= e!3283671 call!376110)))

(declare-fun bm!376106 () Bool)

(assert (=> bm!376106 (= call!376112 call!376109)))

(declare-fun b!5280890 () Bool)

(assert (=> b!5280890 (= e!3283671 ((as const (Array Context!8570 Bool)) false))))

(declare-fun c!915495 () Bool)

(declare-fun b!5280891 () Bool)

(assert (=> b!5280891 (= c!915495 ((_ is Star!14901) (ite c!915027 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915028 (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (ite c!915029 (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))) (reg!15230 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))))

(assert (=> b!5280891 (= e!3283673 e!3283671)))

(declare-fun bm!376107 () Bool)

(assert (=> bm!376107 (= call!376110 call!376112)))

(assert (= (and d!1699662 c!915491) b!5280881))

(assert (= (and d!1699662 (not c!915491)) b!5280886))

(assert (= (and b!5280886 c!915492) b!5280884))

(assert (= (and b!5280886 (not c!915492)) b!5280888))

(assert (= (and b!5280888 res!2239593) b!5280885))

(assert (= (and b!5280888 c!915493) b!5280887))

(assert (= (and b!5280888 (not c!915493)) b!5280883))

(assert (= (and b!5280883 c!915494) b!5280882))

(assert (= (and b!5280883 (not c!915494)) b!5280891))

(assert (= (and b!5280891 c!915495) b!5280889))

(assert (= (and b!5280891 (not c!915495)) b!5280890))

(assert (= (or b!5280882 b!5280889) bm!376104))

(assert (= (or b!5280882 b!5280889) bm!376107))

(assert (= (or b!5280887 bm!376104) bm!376105))

(assert (= (or b!5280887 bm!376107) bm!376106))

(assert (= (or b!5280884 b!5280887) bm!376102))

(assert (= (or b!5280884 bm!376106) bm!376103))

(declare-fun m!6318884 () Bool)

(assert (=> bm!376103 m!6318884))

(declare-fun m!6318886 () Bool)

(assert (=> bm!376102 m!6318886))

(declare-fun m!6318888 () Bool)

(assert (=> b!5280881 m!6318888))

(declare-fun m!6318890 () Bool)

(assert (=> b!5280885 m!6318890))

(declare-fun m!6318892 () Bool)

(assert (=> bm!376105 m!6318892))

(assert (=> bm!375804 d!1699662))

(declare-fun bm!376108 () Bool)

(declare-fun call!376113 () Bool)

(assert (=> bm!376108 (= call!376113 (isEmpty!32835 (_1!35403 (get!20934 lt!2158236))))))

(declare-fun b!5280892 () Bool)

(declare-fun res!2239596 () Bool)

(declare-fun e!3283680 () Bool)

(assert (=> b!5280892 (=> (not res!2239596) (not e!3283680))))

(assert (=> b!5280892 (= res!2239596 (not call!376113))))

(declare-fun b!5280893 () Bool)

(declare-fun e!3283681 () Bool)

(assert (=> b!5280893 (= e!3283681 (nullable!5070 (regOne!30314 r!7292)))))

(declare-fun b!5280894 () Bool)

(assert (=> b!5280894 (= e!3283681 (matchR!7086 (derivativeStep!4119 (regOne!30314 r!7292) (head!11314 (_1!35403 (get!20934 lt!2158236)))) (tail!10411 (_1!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280895 () Bool)

(declare-fun e!3283682 () Bool)

(declare-fun lt!2158356 () Bool)

(assert (=> b!5280895 (= e!3283682 (not lt!2158356))))

(declare-fun b!5280896 () Bool)

(declare-fun e!3283677 () Bool)

(declare-fun e!3283676 () Bool)

(assert (=> b!5280896 (= e!3283677 e!3283676)))

(declare-fun res!2239595 () Bool)

(assert (=> b!5280896 (=> (not res!2239595) (not e!3283676))))

(assert (=> b!5280896 (= res!2239595 (not lt!2158356))))

(declare-fun b!5280897 () Bool)

(declare-fun res!2239597 () Bool)

(assert (=> b!5280897 (=> res!2239597 e!3283677)))

(assert (=> b!5280897 (= res!2239597 e!3283680)))

(declare-fun res!2239600 () Bool)

(assert (=> b!5280897 (=> (not res!2239600) (not e!3283680))))

(assert (=> b!5280897 (= res!2239600 lt!2158356)))

(declare-fun b!5280898 () Bool)

(assert (=> b!5280898 (= e!3283680 (= (head!11314 (_1!35403 (get!20934 lt!2158236))) (c!914851 (regOne!30314 r!7292))))))

(declare-fun d!1699664 () Bool)

(declare-fun e!3283679 () Bool)

(assert (=> d!1699664 e!3283679))

(declare-fun c!915498 () Bool)

(assert (=> d!1699664 (= c!915498 ((_ is EmptyExpr!14901) (regOne!30314 r!7292)))))

(assert (=> d!1699664 (= lt!2158356 e!3283681)))

(declare-fun c!915497 () Bool)

(assert (=> d!1699664 (= c!915497 (isEmpty!32835 (_1!35403 (get!20934 lt!2158236))))))

(assert (=> d!1699664 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699664 (= (matchR!7086 (regOne!30314 r!7292) (_1!35403 (get!20934 lt!2158236))) lt!2158356)))

(declare-fun b!5280899 () Bool)

(assert (=> b!5280899 (= e!3283679 (= lt!2158356 call!376113))))

(declare-fun b!5280900 () Bool)

(declare-fun e!3283678 () Bool)

(assert (=> b!5280900 (= e!3283676 e!3283678)))

(declare-fun res!2239599 () Bool)

(assert (=> b!5280900 (=> res!2239599 e!3283678)))

(assert (=> b!5280900 (= res!2239599 call!376113)))

(declare-fun b!5280901 () Bool)

(declare-fun res!2239594 () Bool)

(assert (=> b!5280901 (=> res!2239594 e!3283677)))

(assert (=> b!5280901 (= res!2239594 (not ((_ is ElementMatch!14901) (regOne!30314 r!7292))))))

(assert (=> b!5280901 (= e!3283682 e!3283677)))

(declare-fun b!5280902 () Bool)

(declare-fun res!2239598 () Bool)

(assert (=> b!5280902 (=> (not res!2239598) (not e!3283680))))

(assert (=> b!5280902 (= res!2239598 (isEmpty!32835 (tail!10411 (_1!35403 (get!20934 lt!2158236)))))))

(declare-fun b!5280903 () Bool)

(assert (=> b!5280903 (= e!3283679 e!3283682)))

(declare-fun c!915496 () Bool)

(assert (=> b!5280903 (= c!915496 ((_ is EmptyLang!14901) (regOne!30314 r!7292)))))

(declare-fun b!5280904 () Bool)

(assert (=> b!5280904 (= e!3283678 (not (= (head!11314 (_1!35403 (get!20934 lt!2158236))) (c!914851 (regOne!30314 r!7292)))))))

(declare-fun b!5280905 () Bool)

(declare-fun res!2239601 () Bool)

(assert (=> b!5280905 (=> res!2239601 e!3283678)))

(assert (=> b!5280905 (= res!2239601 (not (isEmpty!32835 (tail!10411 (_1!35403 (get!20934 lt!2158236))))))))

(assert (= (and d!1699664 c!915497) b!5280893))

(assert (= (and d!1699664 (not c!915497)) b!5280894))

(assert (= (and d!1699664 c!915498) b!5280899))

(assert (= (and d!1699664 (not c!915498)) b!5280903))

(assert (= (and b!5280903 c!915496) b!5280895))

(assert (= (and b!5280903 (not c!915496)) b!5280901))

(assert (= (and b!5280901 (not res!2239594)) b!5280897))

(assert (= (and b!5280897 res!2239600) b!5280892))

(assert (= (and b!5280892 res!2239596) b!5280902))

(assert (= (and b!5280902 res!2239598) b!5280898))

(assert (= (and b!5280897 (not res!2239597)) b!5280896))

(assert (= (and b!5280896 res!2239595) b!5280900))

(assert (= (and b!5280900 (not res!2239599)) b!5280905))

(assert (= (and b!5280905 (not res!2239601)) b!5280904))

(assert (= (or b!5280899 b!5280892 b!5280900) bm!376108))

(declare-fun m!6318894 () Bool)

(assert (=> b!5280894 m!6318894))

(assert (=> b!5280894 m!6318894))

(declare-fun m!6318896 () Bool)

(assert (=> b!5280894 m!6318896))

(declare-fun m!6318898 () Bool)

(assert (=> b!5280894 m!6318898))

(assert (=> b!5280894 m!6318896))

(assert (=> b!5280894 m!6318898))

(declare-fun m!6318900 () Bool)

(assert (=> b!5280894 m!6318900))

(declare-fun m!6318902 () Bool)

(assert (=> d!1699664 m!6318902))

(assert (=> d!1699664 m!6317572))

(assert (=> bm!376108 m!6318902))

(assert (=> b!5280893 m!6318380))

(assert (=> b!5280904 m!6318894))

(assert (=> b!5280898 m!6318894))

(assert (=> b!5280905 m!6318898))

(assert (=> b!5280905 m!6318898))

(declare-fun m!6318904 () Bool)

(assert (=> b!5280905 m!6318904))

(assert (=> b!5280902 m!6318898))

(assert (=> b!5280902 m!6318898))

(assert (=> b!5280902 m!6318904))

(assert (=> b!5279593 d!1699664))

(assert (=> b!5279593 d!1699508))

(declare-fun bs!1224275 () Bool)

(declare-fun d!1699666 () Bool)

(assert (= bs!1224275 (and d!1699666 d!1699402)))

(declare-fun lambda!266757 () Int)

(assert (=> bs!1224275 (= lambda!266757 lambda!266714)))

(declare-fun bs!1224276 () Bool)

(assert (= bs!1224276 (and d!1699666 d!1699400)))

(assert (=> bs!1224276 (= lambda!266757 lambda!266713)))

(declare-fun bs!1224277 () Bool)

(assert (= bs!1224277 (and d!1699666 d!1699650)))

(assert (=> bs!1224277 (not (= lambda!266757 lambda!266751))))

(declare-fun bs!1224278 () Bool)

(assert (= bs!1224278 (and d!1699666 b!5280471)))

(assert (=> bs!1224278 (not (= lambda!266757 lambda!266726))))

(declare-fun bs!1224279 () Bool)

(assert (= bs!1224279 (and d!1699666 d!1699454)))

(assert (=> bs!1224279 (not (= lambda!266757 lambda!266729))))

(declare-fun bs!1224280 () Bool)

(assert (= bs!1224280 (and d!1699666 b!5279220)))

(assert (=> bs!1224280 (not (= lambda!266757 lambda!266612))))

(declare-fun bs!1224281 () Bool)

(assert (= bs!1224281 (and d!1699666 d!1699528)))

(assert (=> bs!1224281 (= lambda!266757 lambda!266738)))

(declare-fun bs!1224282 () Bool)

(assert (= bs!1224282 (and d!1699666 d!1699566)))

(assert (=> bs!1224282 (= lambda!266757 lambda!266746)))

(declare-fun bs!1224283 () Bool)

(assert (= bs!1224283 (and d!1699666 d!1699428)))

(assert (=> bs!1224283 (= lambda!266757 lambda!266716)))

(declare-fun bs!1224284 () Bool)

(assert (= bs!1224284 (and d!1699666 b!5280469)))

(assert (=> bs!1224284 (not (= lambda!266757 lambda!266725))))

(declare-fun bs!1224285 () Bool)

(assert (= bs!1224285 (and d!1699666 d!1699558)))

(assert (=> bs!1224285 (= lambda!266757 lambda!266745)))

(declare-fun bs!1224286 () Bool)

(assert (= bs!1224286 (and d!1699666 b!5279222)))

(assert (=> bs!1224286 (not (= lambda!266757 lambda!266613))))

(declare-fun bs!1224287 () Bool)

(assert (= bs!1224287 (and d!1699666 b!5279227)))

(assert (=> bs!1224287 (not (= lambda!266757 lambda!266616))))

(declare-fun bs!1224288 () Bool)

(assert (= bs!1224288 (and d!1699666 d!1699520)))

(assert (=> bs!1224288 (= lambda!266757 lambda!266737)))

(declare-fun bs!1224289 () Bool)

(assert (= bs!1224289 (and d!1699666 b!5280880)))

(assert (=> bs!1224289 (not (= lambda!266757 lambda!266756))))

(declare-fun bs!1224290 () Bool)

(assert (= bs!1224290 (and d!1699666 b!5279225)))

(assert (=> bs!1224290 (not (= lambda!266757 lambda!266615))))

(declare-fun bs!1224291 () Bool)

(assert (= bs!1224291 (and d!1699666 b!5280878)))

(assert (=> bs!1224291 (not (= lambda!266757 lambda!266755))))

(declare-fun bs!1224292 () Bool)

(assert (= bs!1224292 (and d!1699666 d!1699476)))

(assert (=> bs!1224292 (= lambda!266757 lambda!266732)))

(assert (=> d!1699666 (= (nullableZipper!1298 lt!2158080) (exists!2001 lt!2158080 lambda!266757))))

(declare-fun bs!1224293 () Bool)

(assert (= bs!1224293 d!1699666))

(declare-fun m!6318906 () Bool)

(assert (=> bs!1224293 m!6318906))

(assert (=> b!5279422 d!1699666))

(assert (=> d!1698966 d!1699420))

(declare-fun bs!1224294 () Bool)

(declare-fun d!1699668 () Bool)

(assert (= bs!1224294 (and d!1699668 d!1699402)))

(declare-fun lambda!266758 () Int)

(assert (=> bs!1224294 (= lambda!266758 lambda!266714)))

(declare-fun bs!1224295 () Bool)

(assert (= bs!1224295 (and d!1699668 d!1699400)))

(assert (=> bs!1224295 (= lambda!266758 lambda!266713)))

(declare-fun bs!1224296 () Bool)

(assert (= bs!1224296 (and d!1699668 d!1699650)))

(assert (=> bs!1224296 (not (= lambda!266758 lambda!266751))))

(declare-fun bs!1224297 () Bool)

(assert (= bs!1224297 (and d!1699668 b!5280471)))

(assert (=> bs!1224297 (not (= lambda!266758 lambda!266726))))

(declare-fun bs!1224298 () Bool)

(assert (= bs!1224298 (and d!1699668 d!1699454)))

(assert (=> bs!1224298 (not (= lambda!266758 lambda!266729))))

(declare-fun bs!1224299 () Bool)

(assert (= bs!1224299 (and d!1699668 b!5279220)))

(assert (=> bs!1224299 (not (= lambda!266758 lambda!266612))))

(declare-fun bs!1224300 () Bool)

(assert (= bs!1224300 (and d!1699668 d!1699528)))

(assert (=> bs!1224300 (= lambda!266758 lambda!266738)))

(declare-fun bs!1224301 () Bool)

(assert (= bs!1224301 (and d!1699668 d!1699566)))

(assert (=> bs!1224301 (= lambda!266758 lambda!266746)))

(declare-fun bs!1224302 () Bool)

(assert (= bs!1224302 (and d!1699668 d!1699428)))

(assert (=> bs!1224302 (= lambda!266758 lambda!266716)))

(declare-fun bs!1224303 () Bool)

(assert (= bs!1224303 (and d!1699668 b!5280469)))

(assert (=> bs!1224303 (not (= lambda!266758 lambda!266725))))

(declare-fun bs!1224304 () Bool)

(assert (= bs!1224304 (and d!1699668 d!1699666)))

(assert (=> bs!1224304 (= lambda!266758 lambda!266757)))

(declare-fun bs!1224305 () Bool)

(assert (= bs!1224305 (and d!1699668 d!1699558)))

(assert (=> bs!1224305 (= lambda!266758 lambda!266745)))

(declare-fun bs!1224306 () Bool)

(assert (= bs!1224306 (and d!1699668 b!5279222)))

(assert (=> bs!1224306 (not (= lambda!266758 lambda!266613))))

(declare-fun bs!1224307 () Bool)

(assert (= bs!1224307 (and d!1699668 b!5279227)))

(assert (=> bs!1224307 (not (= lambda!266758 lambda!266616))))

(declare-fun bs!1224308 () Bool)

(assert (= bs!1224308 (and d!1699668 d!1699520)))

(assert (=> bs!1224308 (= lambda!266758 lambda!266737)))

(declare-fun bs!1224309 () Bool)

(assert (= bs!1224309 (and d!1699668 b!5280880)))

(assert (=> bs!1224309 (not (= lambda!266758 lambda!266756))))

(declare-fun bs!1224310 () Bool)

(assert (= bs!1224310 (and d!1699668 b!5279225)))

(assert (=> bs!1224310 (not (= lambda!266758 lambda!266615))))

(declare-fun bs!1224311 () Bool)

(assert (= bs!1224311 (and d!1699668 b!5280878)))

(assert (=> bs!1224311 (not (= lambda!266758 lambda!266755))))

(declare-fun bs!1224312 () Bool)

(assert (= bs!1224312 (and d!1699668 d!1699476)))

(assert (=> bs!1224312 (= lambda!266758 lambda!266732)))

(assert (=> d!1699668 (= (nullableZipper!1298 lt!2158064) (exists!2001 lt!2158064 lambda!266758))))

(declare-fun bs!1224313 () Bool)

(assert (= bs!1224313 d!1699668))

(declare-fun m!6318908 () Bool)

(assert (=> bs!1224313 m!6318908))

(assert (=> b!5279535 d!1699668))

(declare-fun d!1699670 () Bool)

(declare-fun res!2239602 () Bool)

(declare-fun e!3283683 () Bool)

(assert (=> d!1699670 (=> res!2239602 e!3283683)))

(assert (=> d!1699670 (= res!2239602 ((_ is Nil!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> d!1699670 (= (forall!14309 (exprs!4785 (h!67328 zl!343)) lambda!266638) e!3283683)))

(declare-fun b!5280906 () Bool)

(declare-fun e!3283684 () Bool)

(assert (=> b!5280906 (= e!3283683 e!3283684)))

(declare-fun res!2239603 () Bool)

(assert (=> b!5280906 (=> (not res!2239603) (not e!3283684))))

(assert (=> b!5280906 (= res!2239603 (dynLambda!24067 lambda!266638 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280907 () Bool)

(assert (=> b!5280907 (= e!3283684 (forall!14309 (t!374204 (exprs!4785 (h!67328 zl!343))) lambda!266638))))

(assert (= (and d!1699670 (not res!2239602)) b!5280906))

(assert (= (and b!5280906 res!2239603) b!5280907))

(declare-fun b_lambda!203753 () Bool)

(assert (=> (not b_lambda!203753) (not b!5280906)))

(declare-fun m!6318910 () Bool)

(assert (=> b!5280906 m!6318910))

(declare-fun m!6318912 () Bool)

(assert (=> b!5280907 m!6318912))

(assert (=> d!1698990 d!1699670))

(declare-fun d!1699672 () Bool)

(declare-fun c!915499 () Bool)

(assert (=> d!1699672 (= c!915499 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283685 () Bool)

(assert (=> d!1699672 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158061 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283685)))

(declare-fun b!5280908 () Bool)

(assert (=> b!5280908 (= e!3283685 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158061 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280909 () Bool)

(assert (=> b!5280909 (= e!3283685 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158061 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699672 c!915499) b!5280908))

(assert (= (and d!1699672 (not c!915499)) b!5280909))

(assert (=> d!1699672 m!6317240))

(assert (=> d!1699672 m!6318412))

(assert (=> b!5280908 m!6317448))

(declare-fun m!6318914 () Bool)

(assert (=> b!5280908 m!6318914))

(assert (=> b!5280909 m!6317240))

(assert (=> b!5280909 m!6318416))

(assert (=> b!5280909 m!6317448))

(assert (=> b!5280909 m!6318416))

(declare-fun m!6318916 () Bool)

(assert (=> b!5280909 m!6318916))

(assert (=> b!5280909 m!6317240))

(assert (=> b!5280909 m!6318420))

(assert (=> b!5280909 m!6318916))

(assert (=> b!5280909 m!6318420))

(declare-fun m!6318918 () Bool)

(assert (=> b!5280909 m!6318918))

(assert (=> b!5279500 d!1699672))

(declare-fun bs!1224314 () Bool)

(declare-fun d!1699674 () Bool)

(assert (= bs!1224314 (and d!1699674 d!1699606)))

(declare-fun lambda!266759 () Int)

(assert (=> bs!1224314 (= lambda!266759 lambda!266749)))

(declare-fun bs!1224315 () Bool)

(assert (= bs!1224315 (and d!1699674 d!1699460)))

(assert (=> bs!1224315 (= lambda!266759 lambda!266730)))

(declare-fun bs!1224316 () Bool)

(assert (= bs!1224316 (and d!1699674 d!1699498)))

(assert (=> bs!1224316 (= lambda!266759 lambda!266735)))

(declare-fun bs!1224317 () Bool)

(assert (= bs!1224317 (and d!1699674 d!1699488)))

(assert (=> bs!1224317 (= lambda!266759 lambda!266733)))

(declare-fun bs!1224318 () Bool)

(assert (= bs!1224318 (and d!1699674 b!5278704)))

(assert (=> bs!1224318 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266759 lambda!266558))))

(declare-fun bs!1224319 () Bool)

(assert (= bs!1224319 (and d!1699674 d!1698932)))

(assert (=> bs!1224319 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266759 lambda!266625))))

(declare-fun bs!1224320 () Bool)

(assert (= bs!1224320 (and d!1699674 d!1698976)))

(assert (=> bs!1224320 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266759 lambda!266635))))

(declare-fun bs!1224321 () Bool)

(assert (= bs!1224321 (and d!1699674 d!1699614)))

(assert (=> bs!1224321 (= (= (head!11314 (t!374203 s!2326)) (head!11314 s!2326)) (= lambda!266759 lambda!266750))))

(declare-fun bs!1224322 () Bool)

(assert (= bs!1224322 (and d!1699674 d!1699432)))

(assert (=> bs!1224322 (= lambda!266759 lambda!266717)))

(declare-fun bs!1224323 () Bool)

(assert (= bs!1224323 (and d!1699674 d!1699584)))

(assert (=> bs!1224323 (= lambda!266759 lambda!266747)))

(assert (=> d!1699674 true))

(assert (=> d!1699674 (= (derivationStepZipper!1144 lt!2158061 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158061 lambda!266759))))

(declare-fun bs!1224324 () Bool)

(assert (= bs!1224324 d!1699674))

(declare-fun m!6318920 () Bool)

(assert (=> bs!1224324 m!6318920))

(assert (=> b!5279500 d!1699674))

(assert (=> b!5279500 d!1699434))

(assert (=> b!5279500 d!1699436))

(declare-fun d!1699676 () Bool)

(assert (=> d!1699676 (= (nullable!5070 r!7292) (nullableFct!1450 r!7292))))

(declare-fun bs!1224325 () Bool)

(assert (= bs!1224325 d!1699676))

(declare-fun m!6318922 () Bool)

(assert (=> bs!1224325 m!6318922))

(assert (=> b!5279385 d!1699676))

(declare-fun d!1699678 () Bool)

(assert (=> d!1699678 true))

(declare-fun setRes!33843 () Bool)

(assert (=> d!1699678 setRes!33843))

(declare-fun condSetEmpty!33843 () Bool)

(declare-fun res!2239604 () (InoxSet Context!8570))

(assert (=> d!1699678 (= condSetEmpty!33843 (= res!2239604 ((as const (Array Context!8570 Bool)) false)))))

(assert (=> d!1699678 (= (choose!39396 z!1189 lambda!266558) res!2239604)))

(declare-fun setIsEmpty!33843 () Bool)

(assert (=> setIsEmpty!33843 setRes!33843))

(declare-fun setNonEmpty!33843 () Bool)

(declare-fun e!3283686 () Bool)

(declare-fun tp!1475207 () Bool)

(declare-fun setElem!33843 () Context!8570)

(assert (=> setNonEmpty!33843 (= setRes!33843 (and tp!1475207 (inv!80499 setElem!33843) e!3283686))))

(declare-fun setRest!33843 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33843 (= res!2239604 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33843 true) setRest!33843))))

(declare-fun b!5280910 () Bool)

(declare-fun tp!1475206 () Bool)

(assert (=> b!5280910 (= e!3283686 tp!1475206)))

(assert (= (and d!1699678 condSetEmpty!33843) setIsEmpty!33843))

(assert (= (and d!1699678 (not condSetEmpty!33843)) setNonEmpty!33843))

(assert (= setNonEmpty!33843 b!5280910))

(declare-fun m!6318924 () Bool)

(assert (=> setNonEmpty!33843 m!6318924))

(assert (=> d!1698916 d!1699678))

(declare-fun d!1699680 () Bool)

(declare-fun c!915500 () Bool)

(assert (=> d!1699680 (= c!915500 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283687 () Bool)

(assert (=> d!1699680 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158068 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283687)))

(declare-fun b!5280911 () Bool)

(assert (=> b!5280911 (= e!3283687 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158068 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280912 () Bool)

(assert (=> b!5280912 (= e!3283687 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158068 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699680 c!915500) b!5280911))

(assert (= (and d!1699680 (not c!915500)) b!5280912))

(assert (=> d!1699680 m!6317240))

(assert (=> d!1699680 m!6318412))

(assert (=> b!5280911 m!6317246))

(declare-fun m!6318926 () Bool)

(assert (=> b!5280911 m!6318926))

(assert (=> b!5280912 m!6317240))

(assert (=> b!5280912 m!6318416))

(assert (=> b!5280912 m!6317246))

(assert (=> b!5280912 m!6318416))

(declare-fun m!6318928 () Bool)

(assert (=> b!5280912 m!6318928))

(assert (=> b!5280912 m!6317240))

(assert (=> b!5280912 m!6318420))

(assert (=> b!5280912 m!6318928))

(assert (=> b!5280912 m!6318420))

(declare-fun m!6318930 () Bool)

(assert (=> b!5280912 m!6318930))

(assert (=> b!5279210 d!1699680))

(declare-fun bs!1224326 () Bool)

(declare-fun d!1699682 () Bool)

(assert (= bs!1224326 (and d!1699682 d!1699606)))

(declare-fun lambda!266760 () Int)

(assert (=> bs!1224326 (= lambda!266760 lambda!266749)))

(declare-fun bs!1224327 () Bool)

(assert (= bs!1224327 (and d!1699682 d!1699674)))

(assert (=> bs!1224327 (= lambda!266760 lambda!266759)))

(declare-fun bs!1224328 () Bool)

(assert (= bs!1224328 (and d!1699682 d!1699460)))

(assert (=> bs!1224328 (= lambda!266760 lambda!266730)))

(declare-fun bs!1224329 () Bool)

(assert (= bs!1224329 (and d!1699682 d!1699498)))

(assert (=> bs!1224329 (= lambda!266760 lambda!266735)))

(declare-fun bs!1224330 () Bool)

(assert (= bs!1224330 (and d!1699682 d!1699488)))

(assert (=> bs!1224330 (= lambda!266760 lambda!266733)))

(declare-fun bs!1224331 () Bool)

(assert (= bs!1224331 (and d!1699682 b!5278704)))

(assert (=> bs!1224331 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266760 lambda!266558))))

(declare-fun bs!1224332 () Bool)

(assert (= bs!1224332 (and d!1699682 d!1698932)))

(assert (=> bs!1224332 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266760 lambda!266625))))

(declare-fun bs!1224333 () Bool)

(assert (= bs!1224333 (and d!1699682 d!1698976)))

(assert (=> bs!1224333 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266760 lambda!266635))))

(declare-fun bs!1224334 () Bool)

(assert (= bs!1224334 (and d!1699682 d!1699614)))

(assert (=> bs!1224334 (= (= (head!11314 (t!374203 s!2326)) (head!11314 s!2326)) (= lambda!266760 lambda!266750))))

(declare-fun bs!1224335 () Bool)

(assert (= bs!1224335 (and d!1699682 d!1699432)))

(assert (=> bs!1224335 (= lambda!266760 lambda!266717)))

(declare-fun bs!1224336 () Bool)

(assert (= bs!1224336 (and d!1699682 d!1699584)))

(assert (=> bs!1224336 (= lambda!266760 lambda!266747)))

(assert (=> d!1699682 true))

(assert (=> d!1699682 (= (derivationStepZipper!1144 lt!2158068 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158068 lambda!266760))))

(declare-fun bs!1224337 () Bool)

(assert (= bs!1224337 d!1699682))

(declare-fun m!6318932 () Bool)

(assert (=> bs!1224337 m!6318932))

(assert (=> b!5279210 d!1699682))

(assert (=> b!5279210 d!1699434))

(assert (=> b!5279210 d!1699436))

(assert (=> bs!1223397 d!1698970))

(declare-fun d!1699684 () Bool)

(assert (=> d!1699684 (= (Exists!2082 lambda!266648) (choose!39400 lambda!266648))))

(declare-fun bs!1224338 () Bool)

(assert (= bs!1224338 d!1699684))

(declare-fun m!6318934 () Bool)

(assert (=> bs!1224338 m!6318934))

(assert (=> d!1699012 d!1699684))

(declare-fun d!1699686 () Bool)

(assert (=> d!1699686 (= (Exists!2082 lambda!266649) (choose!39400 lambda!266649))))

(declare-fun bs!1224339 () Bool)

(assert (= bs!1224339 d!1699686))

(declare-fun m!6318936 () Bool)

(assert (=> bs!1224339 m!6318936))

(assert (=> d!1699012 d!1699686))

(declare-fun bs!1224340 () Bool)

(declare-fun d!1699688 () Bool)

(assert (= bs!1224340 (and d!1699688 d!1699012)))

(declare-fun lambda!266765 () Int)

(assert (=> bs!1224340 (= lambda!266765 lambda!266648)))

(declare-fun bs!1224341 () Bool)

(assert (= bs!1224341 (and d!1699688 b!5278712)))

(assert (=> bs!1224341 (not (= lambda!266765 lambda!266557))))

(declare-fun bs!1224342 () Bool)

(assert (= bs!1224342 (and d!1699688 b!5279352)))

(assert (=> bs!1224342 (not (= lambda!266765 lambda!266622))))

(declare-fun bs!1224343 () Bool)

(assert (= bs!1224343 (and d!1699688 d!1699534)))

(assert (=> bs!1224343 (= lambda!266765 lambda!266741)))

(assert (=> bs!1224341 (= lambda!266765 lambda!266556)))

(declare-fun bs!1224344 () Bool)

(assert (= bs!1224344 (and d!1699688 b!5280696)))

(assert (=> bs!1224344 (not (= lambda!266765 lambda!266743))))

(assert (=> bs!1224340 (not (= lambda!266765 lambda!266649))))

(declare-fun bs!1224345 () Bool)

(assert (= bs!1224345 (and d!1699688 d!1699010)))

(assert (=> bs!1224345 (= lambda!266765 lambda!266643)))

(declare-fun bs!1224346 () Bool)

(assert (= bs!1224346 (and d!1699688 b!5280697)))

(assert (=> bs!1224346 (not (= lambda!266765 lambda!266744))))

(declare-fun bs!1224347 () Bool)

(assert (= bs!1224347 (and d!1699688 b!5279351)))

(assert (=> bs!1224347 (not (= lambda!266765 lambda!266621))))

(assert (=> d!1699688 true))

(assert (=> d!1699688 true))

(assert (=> d!1699688 true))

(declare-fun lambda!266766 () Int)

(assert (=> bs!1224340 (not (= lambda!266766 lambda!266648))))

(assert (=> bs!1224341 (= lambda!266766 lambda!266557)))

(assert (=> bs!1224342 (= lambda!266766 lambda!266622)))

(assert (=> bs!1224343 (not (= lambda!266766 lambda!266741))))

(assert (=> bs!1224341 (not (= lambda!266766 lambda!266556))))

(assert (=> bs!1224344 (not (= lambda!266766 lambda!266743))))

(declare-fun bs!1224348 () Bool)

(assert (= bs!1224348 d!1699688))

(assert (=> bs!1224348 (not (= lambda!266766 lambda!266765))))

(assert (=> bs!1224340 (= lambda!266766 lambda!266649)))

(assert (=> bs!1224345 (not (= lambda!266766 lambda!266643))))

(assert (=> bs!1224346 (= (and (= (regOne!30314 r!7292) (regOne!30314 (regTwo!30315 r!7292))) (= (regTwo!30314 r!7292) (regTwo!30314 (regTwo!30315 r!7292)))) (= lambda!266766 lambda!266744))))

(assert (=> bs!1224347 (not (= lambda!266766 lambda!266621))))

(assert (=> d!1699688 true))

(assert (=> d!1699688 true))

(assert (=> d!1699688 true))

(assert (=> d!1699688 (= (Exists!2082 lambda!266765) (Exists!2082 lambda!266766))))

(assert (=> d!1699688 true))

(declare-fun _$90!1114 () Unit!153122)

(assert (=> d!1699688 (= (choose!39402 (regOne!30314 r!7292) (regTwo!30314 r!7292) s!2326) _$90!1114)))

(declare-fun m!6318938 () Bool)

(assert (=> bs!1224348 m!6318938))

(declare-fun m!6318940 () Bool)

(assert (=> bs!1224348 m!6318940))

(assert (=> d!1699012 d!1699688))

(assert (=> d!1699012 d!1699416))

(declare-fun d!1699690 () Bool)

(declare-fun c!915501 () Bool)

(assert (=> d!1699690 (= c!915501 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283692 () Bool)

(assert (=> d!1699690 (= (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283692)))

(declare-fun b!5280921 () Bool)

(assert (=> b!5280921 (= e!3283692 (nullableZipper!1298 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280922 () Bool)

(assert (=> b!5280922 (= e!3283692 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699690 c!915501) b!5280921))

(assert (= (and d!1699690 (not c!915501)) b!5280922))

(assert (=> d!1699690 m!6317240))

(assert (=> d!1699690 m!6318412))

(assert (=> b!5280921 m!6317348))

(declare-fun m!6318942 () Bool)

(assert (=> b!5280921 m!6318942))

(assert (=> b!5280922 m!6317240))

(assert (=> b!5280922 m!6318416))

(assert (=> b!5280922 m!6317348))

(assert (=> b!5280922 m!6318416))

(declare-fun m!6318944 () Bool)

(assert (=> b!5280922 m!6318944))

(assert (=> b!5280922 m!6317240))

(assert (=> b!5280922 m!6318420))

(assert (=> b!5280922 m!6318944))

(assert (=> b!5280922 m!6318420))

(declare-fun m!6318946 () Bool)

(assert (=> b!5280922 m!6318946))

(assert (=> b!5279399 d!1699690))

(declare-fun bs!1224349 () Bool)

(declare-fun d!1699692 () Bool)

(assert (= bs!1224349 (and d!1699692 d!1699606)))

(declare-fun lambda!266767 () Int)

(assert (=> bs!1224349 (= lambda!266767 lambda!266749)))

(declare-fun bs!1224350 () Bool)

(assert (= bs!1224350 (and d!1699692 d!1699674)))

(assert (=> bs!1224350 (= lambda!266767 lambda!266759)))

(declare-fun bs!1224351 () Bool)

(assert (= bs!1224351 (and d!1699692 d!1699460)))

(assert (=> bs!1224351 (= lambda!266767 lambda!266730)))

(declare-fun bs!1224352 () Bool)

(assert (= bs!1224352 (and d!1699692 d!1699498)))

(assert (=> bs!1224352 (= lambda!266767 lambda!266735)))

(declare-fun bs!1224353 () Bool)

(assert (= bs!1224353 (and d!1699692 d!1699488)))

(assert (=> bs!1224353 (= lambda!266767 lambda!266733)))

(declare-fun bs!1224354 () Bool)

(assert (= bs!1224354 (and d!1699692 b!5278704)))

(assert (=> bs!1224354 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266767 lambda!266558))))

(declare-fun bs!1224355 () Bool)

(assert (= bs!1224355 (and d!1699692 d!1698932)))

(assert (=> bs!1224355 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266767 lambda!266625))))

(declare-fun bs!1224356 () Bool)

(assert (= bs!1224356 (and d!1699692 d!1698976)))

(assert (=> bs!1224356 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266767 lambda!266635))))

(declare-fun bs!1224357 () Bool)

(assert (= bs!1224357 (and d!1699692 d!1699432)))

(assert (=> bs!1224357 (= lambda!266767 lambda!266717)))

(declare-fun bs!1224358 () Bool)

(assert (= bs!1224358 (and d!1699692 d!1699584)))

(assert (=> bs!1224358 (= lambda!266767 lambda!266747)))

(declare-fun bs!1224359 () Bool)

(assert (= bs!1224359 (and d!1699692 d!1699682)))

(assert (=> bs!1224359 (= lambda!266767 lambda!266760)))

(declare-fun bs!1224360 () Bool)

(assert (= bs!1224360 (and d!1699692 d!1699614)))

(assert (=> bs!1224360 (= (= (head!11314 (t!374203 s!2326)) (head!11314 s!2326)) (= lambda!266767 lambda!266750))))

(assert (=> d!1699692 true))

(assert (=> d!1699692 (= (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) (head!11314 (t!374203 s!2326))) (flatMap!628 (derivationStepZipper!1144 lt!2158087 (h!67326 s!2326)) lambda!266767))))

(declare-fun bs!1224361 () Bool)

(assert (= bs!1224361 d!1699692))

(assert (=> bs!1224361 m!6316864))

(declare-fun m!6318948 () Bool)

(assert (=> bs!1224361 m!6318948))

(assert (=> b!5279399 d!1699692))

(assert (=> b!5279399 d!1699434))

(assert (=> b!5279399 d!1699436))

(declare-fun d!1699694 () Bool)

(declare-fun res!2239613 () Bool)

(declare-fun e!3283693 () Bool)

(assert (=> d!1699694 (=> res!2239613 e!3283693)))

(assert (=> d!1699694 (= res!2239613 ((_ is Nil!60879) (exprs!4785 setElem!33827)))))

(assert (=> d!1699694 (= (forall!14309 (exprs!4785 setElem!33827) lambda!266640) e!3283693)))

(declare-fun b!5280923 () Bool)

(declare-fun e!3283694 () Bool)

(assert (=> b!5280923 (= e!3283693 e!3283694)))

(declare-fun res!2239614 () Bool)

(assert (=> b!5280923 (=> (not res!2239614) (not e!3283694))))

(assert (=> b!5280923 (= res!2239614 (dynLambda!24067 lambda!266640 (h!67327 (exprs!4785 setElem!33827))))))

(declare-fun b!5280924 () Bool)

(assert (=> b!5280924 (= e!3283694 (forall!14309 (t!374204 (exprs!4785 setElem!33827)) lambda!266640))))

(assert (= (and d!1699694 (not res!2239613)) b!5280923))

(assert (= (and b!5280923 res!2239614) b!5280924))

(declare-fun b_lambda!203755 () Bool)

(assert (=> (not b_lambda!203755) (not b!5280923)))

(declare-fun m!6318950 () Bool)

(assert (=> b!5280923 m!6318950))

(declare-fun m!6318952 () Bool)

(assert (=> b!5280924 m!6318952))

(assert (=> d!1699002 d!1699694))

(declare-fun bs!1224362 () Bool)

(declare-fun d!1699696 () Bool)

(assert (= bs!1224362 (and d!1699696 d!1699402)))

(declare-fun lambda!266768 () Int)

(assert (=> bs!1224362 (= lambda!266768 lambda!266714)))

(declare-fun bs!1224363 () Bool)

(assert (= bs!1224363 (and d!1699696 d!1699400)))

(assert (=> bs!1224363 (= lambda!266768 lambda!266713)))

(declare-fun bs!1224364 () Bool)

(assert (= bs!1224364 (and d!1699696 d!1699650)))

(assert (=> bs!1224364 (not (= lambda!266768 lambda!266751))))

(declare-fun bs!1224365 () Bool)

(assert (= bs!1224365 (and d!1699696 b!5280471)))

(assert (=> bs!1224365 (not (= lambda!266768 lambda!266726))))

(declare-fun bs!1224366 () Bool)

(assert (= bs!1224366 (and d!1699696 d!1699454)))

(assert (=> bs!1224366 (not (= lambda!266768 lambda!266729))))

(declare-fun bs!1224367 () Bool)

(assert (= bs!1224367 (and d!1699696 b!5279220)))

(assert (=> bs!1224367 (not (= lambda!266768 lambda!266612))))

(declare-fun bs!1224368 () Bool)

(assert (= bs!1224368 (and d!1699696 d!1699566)))

(assert (=> bs!1224368 (= lambda!266768 lambda!266746)))

(declare-fun bs!1224369 () Bool)

(assert (= bs!1224369 (and d!1699696 d!1699428)))

(assert (=> bs!1224369 (= lambda!266768 lambda!266716)))

(declare-fun bs!1224370 () Bool)

(assert (= bs!1224370 (and d!1699696 b!5280469)))

(assert (=> bs!1224370 (not (= lambda!266768 lambda!266725))))

(declare-fun bs!1224371 () Bool)

(assert (= bs!1224371 (and d!1699696 d!1699666)))

(assert (=> bs!1224371 (= lambda!266768 lambda!266757)))

(declare-fun bs!1224372 () Bool)

(assert (= bs!1224372 (and d!1699696 d!1699558)))

(assert (=> bs!1224372 (= lambda!266768 lambda!266745)))

(declare-fun bs!1224373 () Bool)

(assert (= bs!1224373 (and d!1699696 b!5279222)))

(assert (=> bs!1224373 (not (= lambda!266768 lambda!266613))))

(declare-fun bs!1224374 () Bool)

(assert (= bs!1224374 (and d!1699696 b!5279227)))

(assert (=> bs!1224374 (not (= lambda!266768 lambda!266616))))

(declare-fun bs!1224375 () Bool)

(assert (= bs!1224375 (and d!1699696 d!1699520)))

(assert (=> bs!1224375 (= lambda!266768 lambda!266737)))

(declare-fun bs!1224376 () Bool)

(assert (= bs!1224376 (and d!1699696 d!1699668)))

(assert (=> bs!1224376 (= lambda!266768 lambda!266758)))

(declare-fun bs!1224377 () Bool)

(assert (= bs!1224377 (and d!1699696 d!1699528)))

(assert (=> bs!1224377 (= lambda!266768 lambda!266738)))

(declare-fun bs!1224378 () Bool)

(assert (= bs!1224378 (and d!1699696 b!5280880)))

(assert (=> bs!1224378 (not (= lambda!266768 lambda!266756))))

(declare-fun bs!1224379 () Bool)

(assert (= bs!1224379 (and d!1699696 b!5279225)))

(assert (=> bs!1224379 (not (= lambda!266768 lambda!266615))))

(declare-fun bs!1224380 () Bool)

(assert (= bs!1224380 (and d!1699696 b!5280878)))

(assert (=> bs!1224380 (not (= lambda!266768 lambda!266755))))

(declare-fun bs!1224381 () Bool)

(assert (= bs!1224381 (and d!1699696 d!1699476)))

(assert (=> bs!1224381 (= lambda!266768 lambda!266732)))

(assert (=> d!1699696 (= (nullableZipper!1298 lt!2158091) (exists!2001 lt!2158091 lambda!266768))))

(declare-fun bs!1224382 () Bool)

(assert (= bs!1224382 d!1699696))

(declare-fun m!6318954 () Bool)

(assert (=> bs!1224382 m!6318954))

(assert (=> b!5279412 d!1699696))

(declare-fun d!1699698 () Bool)

(assert (=> d!1699698 (= (isEmpty!32831 (exprs!4785 (h!67328 zl!343))) ((_ is Nil!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> b!5279483 d!1699698))

(declare-fun bs!1224383 () Bool)

(declare-fun b!5280931 () Bool)

(assert (= bs!1224383 (and b!5280931 d!1699012)))

(declare-fun lambda!266769 () Int)

(assert (=> bs!1224383 (not (= lambda!266769 lambda!266648))))

(declare-fun bs!1224384 () Bool)

(assert (= bs!1224384 (and b!5280931 b!5278712)))

(assert (=> bs!1224384 (not (= lambda!266769 lambda!266557))))

(declare-fun bs!1224385 () Bool)

(assert (= bs!1224385 (and b!5280931 d!1699688)))

(assert (=> bs!1224385 (not (= lambda!266769 lambda!266766))))

(declare-fun bs!1224386 () Bool)

(assert (= bs!1224386 (and b!5280931 b!5279352)))

(assert (=> bs!1224386 (not (= lambda!266769 lambda!266622))))

(declare-fun bs!1224387 () Bool)

(assert (= bs!1224387 (and b!5280931 d!1699534)))

(assert (=> bs!1224387 (not (= lambda!266769 lambda!266741))))

(assert (=> bs!1224384 (not (= lambda!266769 lambda!266556))))

(declare-fun bs!1224388 () Bool)

(assert (= bs!1224388 (and b!5280931 b!5280696)))

(assert (=> bs!1224388 (= (and (= (reg!15230 (regOne!30315 r!7292)) (reg!15230 (regTwo!30315 r!7292))) (= (regOne!30315 r!7292) (regTwo!30315 r!7292))) (= lambda!266769 lambda!266743))))

(assert (=> bs!1224385 (not (= lambda!266769 lambda!266765))))

(assert (=> bs!1224383 (not (= lambda!266769 lambda!266649))))

(declare-fun bs!1224389 () Bool)

(assert (= bs!1224389 (and b!5280931 d!1699010)))

(assert (=> bs!1224389 (not (= lambda!266769 lambda!266643))))

(declare-fun bs!1224390 () Bool)

(assert (= bs!1224390 (and b!5280931 b!5280697)))

(assert (=> bs!1224390 (not (= lambda!266769 lambda!266744))))

(declare-fun bs!1224391 () Bool)

(assert (= bs!1224391 (and b!5280931 b!5279351)))

(assert (=> bs!1224391 (= (and (= (reg!15230 (regOne!30315 r!7292)) (reg!15230 r!7292)) (= (regOne!30315 r!7292) r!7292)) (= lambda!266769 lambda!266621))))

(assert (=> b!5280931 true))

(assert (=> b!5280931 true))

(declare-fun bs!1224392 () Bool)

(declare-fun b!5280932 () Bool)

(assert (= bs!1224392 (and b!5280932 d!1699012)))

(declare-fun lambda!266770 () Int)

(assert (=> bs!1224392 (not (= lambda!266770 lambda!266648))))

(declare-fun bs!1224393 () Bool)

(assert (= bs!1224393 (and b!5280932 b!5278712)))

(assert (=> bs!1224393 (= (and (= (regOne!30314 (regOne!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regOne!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266770 lambda!266557))))

(declare-fun bs!1224394 () Bool)

(assert (= bs!1224394 (and b!5280932 d!1699688)))

(assert (=> bs!1224394 (= (and (= (regOne!30314 (regOne!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regOne!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266770 lambda!266766))))

(declare-fun bs!1224395 () Bool)

(assert (= bs!1224395 (and b!5280932 d!1699534)))

(assert (=> bs!1224395 (not (= lambda!266770 lambda!266741))))

(assert (=> bs!1224393 (not (= lambda!266770 lambda!266556))))

(declare-fun bs!1224396 () Bool)

(assert (= bs!1224396 (and b!5280932 b!5280696)))

(assert (=> bs!1224396 (not (= lambda!266770 lambda!266743))))

(assert (=> bs!1224394 (not (= lambda!266770 lambda!266765))))

(assert (=> bs!1224392 (= (and (= (regOne!30314 (regOne!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regOne!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266770 lambda!266649))))

(declare-fun bs!1224397 () Bool)

(assert (= bs!1224397 (and b!5280932 d!1699010)))

(assert (=> bs!1224397 (not (= lambda!266770 lambda!266643))))

(declare-fun bs!1224398 () Bool)

(assert (= bs!1224398 (and b!5280932 b!5280697)))

(assert (=> bs!1224398 (= (and (= (regOne!30314 (regOne!30315 r!7292)) (regOne!30314 (regTwo!30315 r!7292))) (= (regTwo!30314 (regOne!30315 r!7292)) (regTwo!30314 (regTwo!30315 r!7292)))) (= lambda!266770 lambda!266744))))

(declare-fun bs!1224399 () Bool)

(assert (= bs!1224399 (and b!5280932 b!5279351)))

(assert (=> bs!1224399 (not (= lambda!266770 lambda!266621))))

(declare-fun bs!1224400 () Bool)

(assert (= bs!1224400 (and b!5280932 b!5279352)))

(assert (=> bs!1224400 (= (and (= (regOne!30314 (regOne!30315 r!7292)) (regOne!30314 r!7292)) (= (regTwo!30314 (regOne!30315 r!7292)) (regTwo!30314 r!7292))) (= lambda!266770 lambda!266622))))

(declare-fun bs!1224401 () Bool)

(assert (= bs!1224401 (and b!5280932 b!5280931)))

(assert (=> bs!1224401 (not (= lambda!266770 lambda!266769))))

(assert (=> b!5280932 true))

(assert (=> b!5280932 true))

(declare-fun b!5280925 () Bool)

(declare-fun e!3283699 () Bool)

(declare-fun e!3283698 () Bool)

(assert (=> b!5280925 (= e!3283699 e!3283698)))

(declare-fun c!915504 () Bool)

(assert (=> b!5280925 (= c!915504 ((_ is Star!14901) (regOne!30315 r!7292)))))

(declare-fun b!5280926 () Bool)

(declare-fun c!915503 () Bool)

(assert (=> b!5280926 (= c!915503 ((_ is ElementMatch!14901) (regOne!30315 r!7292)))))

(declare-fun e!3283700 () Bool)

(declare-fun e!3283695 () Bool)

(assert (=> b!5280926 (= e!3283700 e!3283695)))

(declare-fun b!5280927 () Bool)

(declare-fun e!3283697 () Bool)

(assert (=> b!5280927 (= e!3283699 e!3283697)))

(declare-fun res!2239616 () Bool)

(assert (=> b!5280927 (= res!2239616 (matchRSpec!2004 (regOne!30315 (regOne!30315 r!7292)) s!2326))))

(assert (=> b!5280927 (=> res!2239616 e!3283697)))

(declare-fun bm!376109 () Bool)

(declare-fun call!376115 () Bool)

(assert (=> bm!376109 (= call!376115 (isEmpty!32835 s!2326))))

(declare-fun b!5280928 () Bool)

(declare-fun e!3283696 () Bool)

(assert (=> b!5280928 (= e!3283696 call!376115)))

(declare-fun b!5280929 () Bool)

(assert (=> b!5280929 (= e!3283697 (matchRSpec!2004 (regTwo!30315 (regOne!30315 r!7292)) s!2326))))

(declare-fun d!1699700 () Bool)

(declare-fun c!915505 () Bool)

(assert (=> d!1699700 (= c!915505 ((_ is EmptyExpr!14901) (regOne!30315 r!7292)))))

(assert (=> d!1699700 (= (matchRSpec!2004 (regOne!30315 r!7292) s!2326) e!3283696)))

(declare-fun b!5280930 () Bool)

(assert (=> b!5280930 (= e!3283696 e!3283700)))

(declare-fun res!2239617 () Bool)

(assert (=> b!5280930 (= res!2239617 (not ((_ is EmptyLang!14901) (regOne!30315 r!7292))))))

(assert (=> b!5280930 (=> (not res!2239617) (not e!3283700))))

(declare-fun e!3283701 () Bool)

(declare-fun call!376114 () Bool)

(assert (=> b!5280931 (= e!3283701 call!376114)))

(assert (=> b!5280932 (= e!3283698 call!376114)))

(declare-fun bm!376110 () Bool)

(assert (=> bm!376110 (= call!376114 (Exists!2082 (ite c!915504 lambda!266769 lambda!266770)))))

(declare-fun b!5280933 () Bool)

(assert (=> b!5280933 (= e!3283695 (= s!2326 (Cons!60878 (c!914851 (regOne!30315 r!7292)) Nil!60878)))))

(declare-fun b!5280934 () Bool)

(declare-fun c!915502 () Bool)

(assert (=> b!5280934 (= c!915502 ((_ is Union!14901) (regOne!30315 r!7292)))))

(assert (=> b!5280934 (= e!3283695 e!3283699)))

(declare-fun b!5280935 () Bool)

(declare-fun res!2239615 () Bool)

(assert (=> b!5280935 (=> res!2239615 e!3283701)))

(assert (=> b!5280935 (= res!2239615 call!376115)))

(assert (=> b!5280935 (= e!3283698 e!3283701)))

(assert (= (and d!1699700 c!915505) b!5280928))

(assert (= (and d!1699700 (not c!915505)) b!5280930))

(assert (= (and b!5280930 res!2239617) b!5280926))

(assert (= (and b!5280926 c!915503) b!5280933))

(assert (= (and b!5280926 (not c!915503)) b!5280934))

(assert (= (and b!5280934 c!915502) b!5280927))

(assert (= (and b!5280934 (not c!915502)) b!5280925))

(assert (= (and b!5280927 (not res!2239616)) b!5280929))

(assert (= (and b!5280925 c!915504) b!5280935))

(assert (= (and b!5280925 (not c!915504)) b!5280932))

(assert (= (and b!5280935 (not res!2239615)) b!5280931))

(assert (= (or b!5280931 b!5280932) bm!376110))

(assert (= (or b!5280928 b!5280935) bm!376109))

(declare-fun m!6318956 () Bool)

(assert (=> b!5280927 m!6318956))

(assert (=> bm!376109 m!6317326))

(declare-fun m!6318958 () Bool)

(assert (=> b!5280929 m!6318958))

(declare-fun m!6318960 () Bool)

(assert (=> bm!376110 m!6318960))

(assert (=> b!5279347 d!1699700))

(declare-fun d!1699702 () Bool)

(assert (=> d!1699702 (= (isEmpty!32831 (tail!10412 (exprs!4785 (h!67328 zl!343)))) ((_ is Nil!60879) (tail!10412 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> b!5279487 d!1699702))

(declare-fun d!1699704 () Bool)

(assert (=> d!1699704 (= (tail!10412 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))

(assert (=> b!5279487 d!1699704))

(declare-fun d!1699706 () Bool)

(assert (=> d!1699706 (= (nullable!5070 (h!67327 (exprs!4785 lt!2158063))) (nullableFct!1450 (h!67327 (exprs!4785 lt!2158063))))))

(declare-fun bs!1224402 () Bool)

(assert (= bs!1224402 d!1699706))

(declare-fun m!6318962 () Bool)

(assert (=> bs!1224402 m!6318962))

(assert (=> b!5279419 d!1699706))

(declare-fun b!5280936 () Bool)

(declare-fun e!3283705 () Bool)

(declare-fun e!3283703 () Bool)

(assert (=> b!5280936 (= e!3283705 e!3283703)))

(declare-fun res!2239620 () Bool)

(declare-fun call!376116 () Bool)

(assert (=> b!5280936 (= res!2239620 call!376116)))

(assert (=> b!5280936 (=> (not res!2239620) (not e!3283703))))

(declare-fun bm!376111 () Bool)

(declare-fun c!915506 () Bool)

(assert (=> bm!376111 (= call!376116 (nullable!5070 (ite c!915506 (regOne!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regOne!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5280937 () Bool)

(declare-fun e!3283704 () Bool)

(assert (=> b!5280937 (= e!3283704 e!3283705)))

(assert (=> b!5280937 (= c!915506 ((_ is Union!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5280938 () Bool)

(declare-fun e!3283706 () Bool)

(assert (=> b!5280938 (= e!3283706 e!3283704)))

(declare-fun res!2239619 () Bool)

(assert (=> b!5280938 (=> res!2239619 e!3283704)))

(assert (=> b!5280938 (= res!2239619 ((_ is Star!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun d!1699708 () Bool)

(declare-fun res!2239621 () Bool)

(declare-fun e!3283707 () Bool)

(assert (=> d!1699708 (=> res!2239621 e!3283707)))

(assert (=> d!1699708 (= res!2239621 ((_ is EmptyExpr!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> d!1699708 (= (nullableFct!1450 (h!67327 (exprs!4785 (h!67328 zl!343)))) e!3283707)))

(declare-fun b!5280939 () Bool)

(assert (=> b!5280939 (= e!3283707 e!3283706)))

(declare-fun res!2239618 () Bool)

(assert (=> b!5280939 (=> (not res!2239618) (not e!3283706))))

(assert (=> b!5280939 (= res!2239618 (and (not ((_ is EmptyLang!14901) (h!67327 (exprs!4785 (h!67328 zl!343))))) (not ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5280940 () Bool)

(declare-fun e!3283702 () Bool)

(assert (=> b!5280940 (= e!3283705 e!3283702)))

(declare-fun res!2239622 () Bool)

(assert (=> b!5280940 (= res!2239622 call!376116)))

(assert (=> b!5280940 (=> res!2239622 e!3283702)))

(declare-fun bm!376112 () Bool)

(declare-fun call!376117 () Bool)

(assert (=> bm!376112 (= call!376117 (nullable!5070 (ite c!915506 (regTwo!30315 (h!67327 (exprs!4785 (h!67328 zl!343)))) (regTwo!30314 (h!67327 (exprs!4785 (h!67328 zl!343)))))))))

(declare-fun b!5280941 () Bool)

(assert (=> b!5280941 (= e!3283702 call!376117)))

(declare-fun b!5280942 () Bool)

(assert (=> b!5280942 (= e!3283703 call!376117)))

(assert (= (and d!1699708 (not res!2239621)) b!5280939))

(assert (= (and b!5280939 res!2239618) b!5280938))

(assert (= (and b!5280938 (not res!2239619)) b!5280937))

(assert (= (and b!5280937 c!915506) b!5280940))

(assert (= (and b!5280937 (not c!915506)) b!5280936))

(assert (= (and b!5280940 (not res!2239622)) b!5280941))

(assert (= (and b!5280936 res!2239620) b!5280942))

(assert (= (or b!5280941 b!5280942) bm!376112))

(assert (= (or b!5280940 b!5280936) bm!376111))

(declare-fun m!6318964 () Bool)

(assert (=> bm!376111 m!6318964))

(declare-fun m!6318966 () Bool)

(assert (=> bm!376112 m!6318966))

(assert (=> d!1698910 d!1699708))

(declare-fun b!5280943 () Bool)

(declare-fun e!3283710 () (InoxSet Context!8570))

(assert (=> b!5280943 (= e!3283710 (store ((as const (Array Context!8570 Bool)) false) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) true))))

(declare-fun b!5280944 () Bool)

(declare-fun e!3283711 () (InoxSet Context!8570))

(declare-fun call!376121 () (InoxSet Context!8570))

(assert (=> b!5280944 (= e!3283711 call!376121)))

(declare-fun b!5280945 () Bool)

(declare-fun e!3283713 () (InoxSet Context!8570))

(assert (=> b!5280945 (= e!3283713 e!3283711)))

(declare-fun c!915510 () Bool)

(assert (=> b!5280945 (= c!915510 ((_ is Concat!23746) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun bm!376113 () Bool)

(declare-fun call!376122 () (InoxSet Context!8570))

(declare-fun call!376119 () List!61003)

(declare-fun c!915508 () Bool)

(assert (=> bm!376113 (= call!376122 (derivationStepZipperDown!349 (ite c!915508 (regTwo!30315 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (regOne!30314 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))) (ite c!915508 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (Context!8571 call!376119)) (h!67326 s!2326)))))

(declare-fun call!376120 () (InoxSet Context!8570))

(declare-fun call!376118 () List!61003)

(declare-fun bm!376114 () Bool)

(declare-fun c!915509 () Bool)

(assert (=> bm!376114 (= call!376120 (derivationStepZipperDown!349 (ite c!915508 (regOne!30315 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (ite c!915509 (regTwo!30314 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (ite c!915510 (regOne!30314 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (reg!15230 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))) (ite (or c!915508 c!915509) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (Context!8571 call!376118)) (h!67326 s!2326)))))

(declare-fun b!5280946 () Bool)

(declare-fun e!3283708 () (InoxSet Context!8570))

(assert (=> b!5280946 (= e!3283708 ((_ map or) call!376120 call!376122))))

(declare-fun bm!376115 () Bool)

(assert (=> bm!376115 (= call!376118 call!376119)))

(declare-fun d!1699710 () Bool)

(declare-fun c!915507 () Bool)

(assert (=> d!1699710 (= c!915507 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (= (c!914851 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326))))))

(assert (=> d!1699710 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326)) e!3283710)))

(declare-fun b!5280947 () Bool)

(declare-fun e!3283712 () Bool)

(assert (=> b!5280947 (= e!3283712 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))))

(declare-fun b!5280948 () Bool)

(assert (=> b!5280948 (= e!3283710 e!3283708)))

(assert (=> b!5280948 (= c!915508 ((_ is Union!14901) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(declare-fun b!5280949 () Bool)

(declare-fun call!376123 () (InoxSet Context!8570))

(assert (=> b!5280949 (= e!3283713 ((_ map or) call!376122 call!376123))))

(declare-fun b!5280950 () Bool)

(assert (=> b!5280950 (= c!915509 e!3283712)))

(declare-fun res!2239623 () Bool)

(assert (=> b!5280950 (=> (not res!2239623) (not e!3283712))))

(assert (=> b!5280950 (= res!2239623 ((_ is Concat!23746) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(assert (=> b!5280950 (= e!3283708 e!3283713)))

(declare-fun bm!376116 () Bool)

(assert (=> bm!376116 (= call!376119 ($colon$colon!1348 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))) (ite (or c!915509 c!915510) (regTwo!30314 (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))))

(declare-fun b!5280951 () Bool)

(declare-fun e!3283709 () (InoxSet Context!8570))

(assert (=> b!5280951 (= e!3283709 call!376121)))

(declare-fun bm!376117 () Bool)

(assert (=> bm!376117 (= call!376123 call!376120)))

(declare-fun b!5280952 () Bool)

(assert (=> b!5280952 (= e!3283709 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280953 () Bool)

(declare-fun c!915511 () Bool)

(assert (=> b!5280953 (= c!915511 ((_ is Star!14901) (h!67327 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))

(assert (=> b!5280953 (= e!3283711 e!3283709)))

(declare-fun bm!376118 () Bool)

(assert (=> bm!376118 (= call!376121 call!376123)))

(assert (= (and d!1699710 c!915507) b!5280943))

(assert (= (and d!1699710 (not c!915507)) b!5280948))

(assert (= (and b!5280948 c!915508) b!5280946))

(assert (= (and b!5280948 (not c!915508)) b!5280950))

(assert (= (and b!5280950 res!2239623) b!5280947))

(assert (= (and b!5280950 c!915509) b!5280949))

(assert (= (and b!5280950 (not c!915509)) b!5280945))

(assert (= (and b!5280945 c!915510) b!5280944))

(assert (= (and b!5280945 (not c!915510)) b!5280953))

(assert (= (and b!5280953 c!915511) b!5280951))

(assert (= (and b!5280953 (not c!915511)) b!5280952))

(assert (= (or b!5280944 b!5280951) bm!376115))

(assert (= (or b!5280944 b!5280951) bm!376118))

(assert (= (or b!5280949 bm!376115) bm!376116))

(assert (= (or b!5280949 bm!376118) bm!376117))

(assert (= (or b!5280946 b!5280949) bm!376113))

(assert (= (or b!5280946 bm!376117) bm!376114))

(declare-fun m!6318968 () Bool)

(assert (=> bm!376114 m!6318968))

(declare-fun m!6318970 () Bool)

(assert (=> bm!376113 m!6318970))

(declare-fun m!6318972 () Bool)

(assert (=> b!5280943 m!6318972))

(declare-fun m!6318974 () Bool)

(assert (=> b!5280947 m!6318974))

(declare-fun m!6318976 () Bool)

(assert (=> bm!376116 m!6318976))

(assert (=> bm!375788 d!1699710))

(declare-fun b!5280954 () Bool)

(declare-fun e!3283716 () (InoxSet Context!8570))

(assert (=> b!5280954 (= e!3283716 (store ((as const (Array Context!8570 Bool)) false) (Context!8571 (t!374204 (exprs!4785 lt!2158077))) true))))

(declare-fun b!5280955 () Bool)

(declare-fun e!3283717 () (InoxSet Context!8570))

(declare-fun call!376127 () (InoxSet Context!8570))

(assert (=> b!5280955 (= e!3283717 call!376127)))

(declare-fun b!5280956 () Bool)

(declare-fun e!3283719 () (InoxSet Context!8570))

(assert (=> b!5280956 (= e!3283719 e!3283717)))

(declare-fun c!915515 () Bool)

(assert (=> b!5280956 (= c!915515 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158077))))))

(declare-fun call!376128 () (InoxSet Context!8570))

(declare-fun call!376125 () List!61003)

(declare-fun bm!376119 () Bool)

(declare-fun c!915513 () Bool)

(assert (=> bm!376119 (= call!376128 (derivationStepZipperDown!349 (ite c!915513 (regTwo!30315 (h!67327 (exprs!4785 lt!2158077))) (regOne!30314 (h!67327 (exprs!4785 lt!2158077)))) (ite c!915513 (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (Context!8571 call!376125)) (h!67326 s!2326)))))

(declare-fun call!376126 () (InoxSet Context!8570))

(declare-fun bm!376120 () Bool)

(declare-fun c!915514 () Bool)

(declare-fun call!376124 () List!61003)

(assert (=> bm!376120 (= call!376126 (derivationStepZipperDown!349 (ite c!915513 (regOne!30315 (h!67327 (exprs!4785 lt!2158077))) (ite c!915514 (regTwo!30314 (h!67327 (exprs!4785 lt!2158077))) (ite c!915515 (regOne!30314 (h!67327 (exprs!4785 lt!2158077))) (reg!15230 (h!67327 (exprs!4785 lt!2158077)))))) (ite (or c!915513 c!915514) (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (Context!8571 call!376124)) (h!67326 s!2326)))))

(declare-fun b!5280957 () Bool)

(declare-fun e!3283714 () (InoxSet Context!8570))

(assert (=> b!5280957 (= e!3283714 ((_ map or) call!376126 call!376128))))

(declare-fun bm!376121 () Bool)

(assert (=> bm!376121 (= call!376124 call!376125)))

(declare-fun d!1699712 () Bool)

(declare-fun c!915512 () Bool)

(assert (=> d!1699712 (= c!915512 (and ((_ is ElementMatch!14901) (h!67327 (exprs!4785 lt!2158077))) (= (c!914851 (h!67327 (exprs!4785 lt!2158077))) (h!67326 s!2326))))))

(assert (=> d!1699712 (= (derivationStepZipperDown!349 (h!67327 (exprs!4785 lt!2158077)) (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (h!67326 s!2326)) e!3283716)))

(declare-fun b!5280958 () Bool)

(declare-fun e!3283718 () Bool)

(assert (=> b!5280958 (= e!3283718 (nullable!5070 (regOne!30314 (h!67327 (exprs!4785 lt!2158077)))))))

(declare-fun b!5280959 () Bool)

(assert (=> b!5280959 (= e!3283716 e!3283714)))

(assert (=> b!5280959 (= c!915513 ((_ is Union!14901) (h!67327 (exprs!4785 lt!2158077))))))

(declare-fun b!5280960 () Bool)

(declare-fun call!376129 () (InoxSet Context!8570))

(assert (=> b!5280960 (= e!3283719 ((_ map or) call!376128 call!376129))))

(declare-fun b!5280961 () Bool)

(assert (=> b!5280961 (= c!915514 e!3283718)))

(declare-fun res!2239624 () Bool)

(assert (=> b!5280961 (=> (not res!2239624) (not e!3283718))))

(assert (=> b!5280961 (= res!2239624 ((_ is Concat!23746) (h!67327 (exprs!4785 lt!2158077))))))

(assert (=> b!5280961 (= e!3283714 e!3283719)))

(declare-fun bm!376122 () Bool)

(assert (=> bm!376122 (= call!376125 ($colon$colon!1348 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077)))) (ite (or c!915514 c!915515) (regTwo!30314 (h!67327 (exprs!4785 lt!2158077))) (h!67327 (exprs!4785 lt!2158077)))))))

(declare-fun b!5280962 () Bool)

(declare-fun e!3283715 () (InoxSet Context!8570))

(assert (=> b!5280962 (= e!3283715 call!376127)))

(declare-fun bm!376123 () Bool)

(assert (=> bm!376123 (= call!376129 call!376126)))

(declare-fun b!5280963 () Bool)

(assert (=> b!5280963 (= e!3283715 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5280964 () Bool)

(declare-fun c!915516 () Bool)

(assert (=> b!5280964 (= c!915516 ((_ is Star!14901) (h!67327 (exprs!4785 lt!2158077))))))

(assert (=> b!5280964 (= e!3283717 e!3283715)))

(declare-fun bm!376124 () Bool)

(assert (=> bm!376124 (= call!376127 call!376129)))

(assert (= (and d!1699712 c!915512) b!5280954))

(assert (= (and d!1699712 (not c!915512)) b!5280959))

(assert (= (and b!5280959 c!915513) b!5280957))

(assert (= (and b!5280959 (not c!915513)) b!5280961))

(assert (= (and b!5280961 res!2239624) b!5280958))

(assert (= (and b!5280961 c!915514) b!5280960))

(assert (= (and b!5280961 (not c!915514)) b!5280956))

(assert (= (and b!5280956 c!915515) b!5280955))

(assert (= (and b!5280956 (not c!915515)) b!5280964))

(assert (= (and b!5280964 c!915516) b!5280962))

(assert (= (and b!5280964 (not c!915516)) b!5280963))

(assert (= (or b!5280955 b!5280962) bm!376121))

(assert (= (or b!5280955 b!5280962) bm!376124))

(assert (= (or b!5280960 bm!376121) bm!376122))

(assert (= (or b!5280960 bm!376124) bm!376123))

(assert (= (or b!5280957 b!5280960) bm!376119))

(assert (= (or b!5280957 bm!376123) bm!376120))

(declare-fun m!6318978 () Bool)

(assert (=> bm!376120 m!6318978))

(declare-fun m!6318980 () Bool)

(assert (=> bm!376119 m!6318980))

(declare-fun m!6318982 () Bool)

(assert (=> b!5280954 m!6318982))

(declare-fun m!6318984 () Bool)

(assert (=> b!5280958 m!6318984))

(declare-fun m!6318986 () Bool)

(assert (=> bm!376122 m!6318986))

(assert (=> bm!375789 d!1699712))

(assert (=> b!5279394 d!1699424))

(assert (=> b!5279394 d!1699426))

(declare-fun d!1699714 () Bool)

(assert (=> d!1699714 true))

(declare-fun setRes!33844 () Bool)

(assert (=> d!1699714 setRes!33844))

(declare-fun condSetEmpty!33844 () Bool)

(declare-fun res!2239625 () (InoxSet Context!8570))

(assert (=> d!1699714 (= condSetEmpty!33844 (= res!2239625 ((as const (Array Context!8570 Bool)) false)))))

(assert (=> d!1699714 (= (choose!39396 lt!2158064 lambda!266558) res!2239625)))

(declare-fun setIsEmpty!33844 () Bool)

(assert (=> setIsEmpty!33844 setRes!33844))

(declare-fun setNonEmpty!33844 () Bool)

(declare-fun tp!1475209 () Bool)

(declare-fun e!3283720 () Bool)

(declare-fun setElem!33844 () Context!8570)

(assert (=> setNonEmpty!33844 (= setRes!33844 (and tp!1475209 (inv!80499 setElem!33844) e!3283720))))

(declare-fun setRest!33844 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33844 (= res!2239625 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33844 true) setRest!33844))))

(declare-fun b!5280965 () Bool)

(declare-fun tp!1475208 () Bool)

(assert (=> b!5280965 (= e!3283720 tp!1475208)))

(assert (= (and d!1699714 condSetEmpty!33844) setIsEmpty!33844))

(assert (= (and d!1699714 (not condSetEmpty!33844)) setNonEmpty!33844))

(assert (= setNonEmpty!33844 b!5280965))

(declare-fun m!6318988 () Bool)

(assert (=> setNonEmpty!33844 m!6318988))

(assert (=> d!1698974 d!1699714))

(assert (=> d!1698934 d!1699420))

(assert (=> bm!375822 d!1699480))

(declare-fun d!1699716 () Bool)

(declare-fun c!915517 () Bool)

(assert (=> d!1699716 (= c!915517 (isEmpty!32835 (tail!10411 (t!374203 s!2326))))))

(declare-fun e!3283721 () Bool)

(assert (=> d!1699716 (= (matchZipper!1145 (derivationStepZipper!1144 lt!2158086 (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))) e!3283721)))

(declare-fun b!5280966 () Bool)

(assert (=> b!5280966 (= e!3283721 (nullableZipper!1298 (derivationStepZipper!1144 lt!2158086 (head!11314 (t!374203 s!2326)))))))

(declare-fun b!5280967 () Bool)

(assert (=> b!5280967 (= e!3283721 (matchZipper!1145 (derivationStepZipper!1144 (derivationStepZipper!1144 lt!2158086 (head!11314 (t!374203 s!2326))) (head!11314 (tail!10411 (t!374203 s!2326)))) (tail!10411 (tail!10411 (t!374203 s!2326)))))))

(assert (= (and d!1699716 c!915517) b!5280966))

(assert (= (and d!1699716 (not c!915517)) b!5280967))

(assert (=> d!1699716 m!6317240))

(assert (=> d!1699716 m!6318412))

(assert (=> b!5280966 m!6317356))

(declare-fun m!6318990 () Bool)

(assert (=> b!5280966 m!6318990))

(assert (=> b!5280967 m!6317240))

(assert (=> b!5280967 m!6318416))

(assert (=> b!5280967 m!6317356))

(assert (=> b!5280967 m!6318416))

(declare-fun m!6318992 () Bool)

(assert (=> b!5280967 m!6318992))

(assert (=> b!5280967 m!6317240))

(assert (=> b!5280967 m!6318420))

(assert (=> b!5280967 m!6318992))

(assert (=> b!5280967 m!6318420))

(declare-fun m!6318994 () Bool)

(assert (=> b!5280967 m!6318994))

(assert (=> b!5279403 d!1699716))

(declare-fun bs!1224403 () Bool)

(declare-fun d!1699718 () Bool)

(assert (= bs!1224403 (and d!1699718 d!1699606)))

(declare-fun lambda!266771 () Int)

(assert (=> bs!1224403 (= lambda!266771 lambda!266749)))

(declare-fun bs!1224404 () Bool)

(assert (= bs!1224404 (and d!1699718 d!1699674)))

(assert (=> bs!1224404 (= lambda!266771 lambda!266759)))

(declare-fun bs!1224405 () Bool)

(assert (= bs!1224405 (and d!1699718 d!1699460)))

(assert (=> bs!1224405 (= lambda!266771 lambda!266730)))

(declare-fun bs!1224406 () Bool)

(assert (= bs!1224406 (and d!1699718 d!1699498)))

(assert (=> bs!1224406 (= lambda!266771 lambda!266735)))

(declare-fun bs!1224407 () Bool)

(assert (= bs!1224407 (and d!1699718 d!1699488)))

(assert (=> bs!1224407 (= lambda!266771 lambda!266733)))

(declare-fun bs!1224408 () Bool)

(assert (= bs!1224408 (and d!1699718 b!5278704)))

(assert (=> bs!1224408 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266771 lambda!266558))))

(declare-fun bs!1224409 () Bool)

(assert (= bs!1224409 (and d!1699718 d!1698932)))

(assert (=> bs!1224409 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266771 lambda!266625))))

(declare-fun bs!1224410 () Bool)

(assert (= bs!1224410 (and d!1699718 d!1698976)))

(assert (=> bs!1224410 (= (= (head!11314 (t!374203 s!2326)) (h!67326 s!2326)) (= lambda!266771 lambda!266635))))

(declare-fun bs!1224411 () Bool)

(assert (= bs!1224411 (and d!1699718 d!1699692)))

(assert (=> bs!1224411 (= lambda!266771 lambda!266767)))

(declare-fun bs!1224412 () Bool)

(assert (= bs!1224412 (and d!1699718 d!1699432)))

(assert (=> bs!1224412 (= lambda!266771 lambda!266717)))

(declare-fun bs!1224413 () Bool)

(assert (= bs!1224413 (and d!1699718 d!1699584)))

(assert (=> bs!1224413 (= lambda!266771 lambda!266747)))

(declare-fun bs!1224414 () Bool)

(assert (= bs!1224414 (and d!1699718 d!1699682)))

(assert (=> bs!1224414 (= lambda!266771 lambda!266760)))

(declare-fun bs!1224415 () Bool)

(assert (= bs!1224415 (and d!1699718 d!1699614)))

(assert (=> bs!1224415 (= (= (head!11314 (t!374203 s!2326)) (head!11314 s!2326)) (= lambda!266771 lambda!266750))))

(assert (=> d!1699718 true))

(assert (=> d!1699718 (= (derivationStepZipper!1144 lt!2158086 (head!11314 (t!374203 s!2326))) (flatMap!628 lt!2158086 lambda!266771))))

(declare-fun bs!1224416 () Bool)

(assert (= bs!1224416 d!1699718))

(declare-fun m!6318996 () Bool)

(assert (=> bs!1224416 m!6318996))

(assert (=> b!5279403 d!1699718))

(assert (=> b!5279403 d!1699434))

(assert (=> b!5279403 d!1699436))

(declare-fun d!1699720 () Bool)

(declare-fun c!915518 () Bool)

(assert (=> d!1699720 (= c!915518 (isEmpty!32835 (t!374203 s!2326)))))

(declare-fun e!3283722 () Bool)

(assert (=> d!1699720 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158086) (t!374203 s!2326)) e!3283722)))

(declare-fun b!5280968 () Bool)

(assert (=> b!5280968 (= e!3283722 (nullableZipper!1298 ((_ map or) lt!2158089 lt!2158086)))))

(declare-fun b!5280969 () Bool)

(assert (=> b!5280969 (= e!3283722 (matchZipper!1145 (derivationStepZipper!1144 ((_ map or) lt!2158089 lt!2158086) (head!11314 (t!374203 s!2326))) (tail!10411 (t!374203 s!2326))))))

(assert (= (and d!1699720 c!915518) b!5280968))

(assert (= (and d!1699720 (not c!915518)) b!5280969))

(assert (=> d!1699720 m!6317232))

(declare-fun m!6318998 () Bool)

(assert (=> b!5280968 m!6318998))

(assert (=> b!5280969 m!6317236))

(assert (=> b!5280969 m!6317236))

(declare-fun m!6319000 () Bool)

(assert (=> b!5280969 m!6319000))

(assert (=> b!5280969 m!6317240))

(assert (=> b!5280969 m!6319000))

(assert (=> b!5280969 m!6317240))

(declare-fun m!6319002 () Bool)

(assert (=> b!5280969 m!6319002))

(assert (=> d!1698944 d!1699720))

(assert (=> d!1698944 d!1698986))

(declare-fun d!1699722 () Bool)

(declare-fun e!3283723 () Bool)

(assert (=> d!1699722 (= (matchZipper!1145 ((_ map or) lt!2158089 lt!2158086) (t!374203 s!2326)) e!3283723)))

(declare-fun res!2239626 () Bool)

(assert (=> d!1699722 (=> res!2239626 e!3283723)))

(assert (=> d!1699722 (= res!2239626 (matchZipper!1145 lt!2158089 (t!374203 s!2326)))))

(assert (=> d!1699722 true))

(declare-fun _$48!965 () Unit!153122)

(assert (=> d!1699722 (= (choose!39398 lt!2158089 lt!2158086 (t!374203 s!2326)) _$48!965)))

(declare-fun b!5280970 () Bool)

(assert (=> b!5280970 (= e!3283723 (matchZipper!1145 lt!2158086 (t!374203 s!2326)))))

(assert (= (and d!1699722 (not res!2239626)) b!5280970))

(assert (=> d!1699722 m!6317376))

(assert (=> d!1699722 m!6316782))

(assert (=> b!5280970 m!6316744))

(assert (=> d!1698944 d!1699722))

(assert (=> bm!375841 d!1699480))

(assert (=> d!1698964 d!1698968))

(assert (=> d!1698964 d!1698966))

(declare-fun d!1699724 () Bool)

(declare-fun e!3283724 () Bool)

(assert (=> d!1699724 (= (matchZipper!1145 ((_ map or) lt!2158061 lt!2158070) (t!374203 s!2326)) e!3283724)))

(declare-fun res!2239627 () Bool)

(assert (=> d!1699724 (=> res!2239627 e!3283724)))

(assert (=> d!1699724 (= res!2239627 (matchZipper!1145 lt!2158061 (t!374203 s!2326)))))

(assert (=> d!1699724 true))

(declare-fun _$48!966 () Unit!153122)

(assert (=> d!1699724 (= (choose!39398 lt!2158061 lt!2158070 (t!374203 s!2326)) _$48!966)))

(declare-fun b!5280971 () Bool)

(assert (=> b!5280971 (= e!3283724 (matchZipper!1145 lt!2158070 (t!374203 s!2326)))))

(assert (= (and d!1699724 (not res!2239627)) b!5280971))

(assert (=> d!1699724 m!6316750))

(assert (=> d!1699724 m!6316748))

(assert (=> b!5280971 m!6316794))

(assert (=> d!1698964 d!1699724))

(assert (=> d!1698994 d!1699480))

(assert (=> d!1698994 d!1699494))

(declare-fun b!5280975 () Bool)

(declare-fun e!3283726 () Bool)

(declare-fun lt!2158357 () List!61002)

(assert (=> b!5280975 (= e!3283726 (or (not (= (t!374203 s!2326) Nil!60878)) (= lt!2158357 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)))))))

(declare-fun b!5280972 () Bool)

(declare-fun e!3283725 () List!61002)

(assert (=> b!5280972 (= e!3283725 (t!374203 s!2326))))

(declare-fun d!1699726 () Bool)

(assert (=> d!1699726 e!3283726))

(declare-fun res!2239628 () Bool)

(assert (=> d!1699726 (=> (not res!2239628) (not e!3283726))))

(assert (=> d!1699726 (= res!2239628 (= (content!10839 lt!2158357) ((_ map or) (content!10839 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))) (content!10839 (t!374203 s!2326)))))))

(assert (=> d!1699726 (= lt!2158357 e!3283725)))

(declare-fun c!915519 () Bool)

(assert (=> d!1699726 (= c!915519 ((_ is Nil!60878) (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))))))

(assert (=> d!1699726 (= (++!13278 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326)) lt!2158357)))

(declare-fun b!5280973 () Bool)

(assert (=> b!5280973 (= e!3283725 (Cons!60878 (h!67326 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))) (++!13278 (t!374203 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))) (t!374203 s!2326))))))

(declare-fun b!5280974 () Bool)

(declare-fun res!2239629 () Bool)

(assert (=> b!5280974 (=> (not res!2239629) (not e!3283726))))

(assert (=> b!5280974 (= res!2239629 (= (size!39755 lt!2158357) (+ (size!39755 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))) (size!39755 (t!374203 s!2326)))))))

(assert (= (and d!1699726 c!915519) b!5280972))

(assert (= (and d!1699726 (not c!915519)) b!5280973))

(assert (= (and d!1699726 res!2239628) b!5280974))

(assert (= (and b!5280974 res!2239629) b!5280975))

(declare-fun m!6319004 () Bool)

(assert (=> d!1699726 m!6319004))

(assert (=> d!1699726 m!6317562))

(declare-fun m!6319006 () Bool)

(assert (=> d!1699726 m!6319006))

(declare-fun m!6319008 () Bool)

(assert (=> d!1699726 m!6319008))

(declare-fun m!6319010 () Bool)

(assert (=> b!5280973 m!6319010))

(declare-fun m!6319012 () Bool)

(assert (=> b!5280974 m!6319012))

(assert (=> b!5280974 m!6317562))

(declare-fun m!6319014 () Bool)

(assert (=> b!5280974 m!6319014))

(declare-fun m!6319016 () Bool)

(assert (=> b!5280974 m!6319016))

(assert (=> b!5279589 d!1699726))

(declare-fun b!5280979 () Bool)

(declare-fun e!3283728 () Bool)

(declare-fun lt!2158358 () List!61002)

(assert (=> b!5280979 (= e!3283728 (or (not (= (Cons!60878 (h!67326 s!2326) Nil!60878) Nil!60878)) (= lt!2158358 Nil!60878)))))

(declare-fun b!5280976 () Bool)

(declare-fun e!3283727 () List!61002)

(assert (=> b!5280976 (= e!3283727 (Cons!60878 (h!67326 s!2326) Nil!60878))))

(declare-fun d!1699728 () Bool)

(assert (=> d!1699728 e!3283728))

(declare-fun res!2239630 () Bool)

(assert (=> d!1699728 (=> (not res!2239630) (not e!3283728))))

(assert (=> d!1699728 (= res!2239630 (= (content!10839 lt!2158358) ((_ map or) (content!10839 Nil!60878) (content!10839 (Cons!60878 (h!67326 s!2326) Nil!60878)))))))

(assert (=> d!1699728 (= lt!2158358 e!3283727)))

(declare-fun c!915520 () Bool)

(assert (=> d!1699728 (= c!915520 ((_ is Nil!60878) Nil!60878))))

(assert (=> d!1699728 (= (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) lt!2158358)))

(declare-fun b!5280977 () Bool)

(assert (=> b!5280977 (= e!3283727 (Cons!60878 (h!67326 Nil!60878) (++!13278 (t!374203 Nil!60878) (Cons!60878 (h!67326 s!2326) Nil!60878))))))

(declare-fun b!5280978 () Bool)

(declare-fun res!2239631 () Bool)

(assert (=> b!5280978 (=> (not res!2239631) (not e!3283728))))

(assert (=> b!5280978 (= res!2239631 (= (size!39755 lt!2158358) (+ (size!39755 Nil!60878) (size!39755 (Cons!60878 (h!67326 s!2326) Nil!60878)))))))

(assert (= (and d!1699728 c!915520) b!5280976))

(assert (= (and d!1699728 (not c!915520)) b!5280977))

(assert (= (and d!1699728 res!2239630) b!5280978))

(assert (= (and b!5280978 res!2239631) b!5280979))

(declare-fun m!6319018 () Bool)

(assert (=> d!1699728 m!6319018))

(declare-fun m!6319020 () Bool)

(assert (=> d!1699728 m!6319020))

(declare-fun m!6319022 () Bool)

(assert (=> d!1699728 m!6319022))

(declare-fun m!6319024 () Bool)

(assert (=> b!5280977 m!6319024))

(declare-fun m!6319026 () Bool)

(assert (=> b!5280978 m!6319026))

(declare-fun m!6319028 () Bool)

(assert (=> b!5280978 m!6319028))

(declare-fun m!6319030 () Bool)

(assert (=> b!5280978 m!6319030))

(assert (=> b!5279589 d!1699728))

(declare-fun d!1699730 () Bool)

(assert (=> d!1699730 (= (++!13278 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326)) s!2326)))

(declare-fun lt!2158361 () Unit!153122)

(declare-fun choose!39406 (List!61002 C!30072 List!61002 List!61002) Unit!153122)

(assert (=> d!1699730 (= lt!2158361 (choose!39406 Nil!60878 (h!67326 s!2326) (t!374203 s!2326) s!2326))))

(assert (=> d!1699730 (= (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) (t!374203 s!2326))) s!2326)))

(assert (=> d!1699730 (= (lemmaMoveElementToOtherListKeepsConcatEq!1693 Nil!60878 (h!67326 s!2326) (t!374203 s!2326) s!2326) lt!2158361)))

(declare-fun bs!1224417 () Bool)

(assert (= bs!1224417 d!1699730))

(assert (=> bs!1224417 m!6317562))

(assert (=> bs!1224417 m!6317562))

(assert (=> bs!1224417 m!6317564))

(declare-fun m!6319032 () Bool)

(assert (=> bs!1224417 m!6319032))

(declare-fun m!6319034 () Bool)

(assert (=> bs!1224417 m!6319034))

(assert (=> b!5279589 d!1699730))

(declare-fun b!5280980 () Bool)

(declare-fun e!3283732 () Option!15012)

(declare-fun e!3283731 () Option!15012)

(assert (=> b!5280980 (= e!3283732 e!3283731)))

(declare-fun c!915522 () Bool)

(assert (=> b!5280980 (= c!915522 ((_ is Nil!60878) (t!374203 s!2326)))))

(declare-fun b!5280981 () Bool)

(assert (=> b!5280981 (= e!3283731 None!15011)))

(declare-fun b!5280982 () Bool)

(declare-fun e!3283730 () Bool)

(declare-fun lt!2158364 () Option!15012)

(assert (=> b!5280982 (= e!3283730 (= (++!13278 (_1!35403 (get!20934 lt!2158364)) (_2!35403 (get!20934 lt!2158364))) s!2326))))

(declare-fun b!5280983 () Bool)

(assert (=> b!5280983 (= e!3283732 (Some!15011 (tuple2!64201 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326))))))

(declare-fun b!5280985 () Bool)

(declare-fun e!3283729 () Bool)

(assert (=> b!5280985 (= e!3283729 (not (isDefined!11715 lt!2158364)))))

(declare-fun b!5280986 () Bool)

(declare-fun e!3283733 () Bool)

(assert (=> b!5280986 (= e!3283733 (matchR!7086 (regTwo!30314 r!7292) (t!374203 s!2326)))))

(declare-fun b!5280984 () Bool)

(declare-fun lt!2158362 () Unit!153122)

(declare-fun lt!2158363 () Unit!153122)

(assert (=> b!5280984 (= lt!2158362 lt!2158363)))

(assert (=> b!5280984 (= (++!13278 (++!13278 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (Cons!60878 (h!67326 (t!374203 s!2326)) Nil!60878)) (t!374203 (t!374203 s!2326))) s!2326)))

(assert (=> b!5280984 (= lt!2158363 (lemmaMoveElementToOtherListKeepsConcatEq!1693 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (h!67326 (t!374203 s!2326)) (t!374203 (t!374203 s!2326)) s!2326))))

(assert (=> b!5280984 (= e!3283731 (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) (++!13278 (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (Cons!60878 (h!67326 (t!374203 s!2326)) Nil!60878)) (t!374203 (t!374203 s!2326)) s!2326))))

(declare-fun d!1699732 () Bool)

(assert (=> d!1699732 e!3283729))

(declare-fun res!2239634 () Bool)

(assert (=> d!1699732 (=> res!2239634 e!3283729)))

(assert (=> d!1699732 (= res!2239634 e!3283730)))

(declare-fun res!2239633 () Bool)

(assert (=> d!1699732 (=> (not res!2239633) (not e!3283730))))

(assert (=> d!1699732 (= res!2239633 (isDefined!11715 lt!2158364))))

(assert (=> d!1699732 (= lt!2158364 e!3283732)))

(declare-fun c!915521 () Bool)

(assert (=> d!1699732 (= c!915521 e!3283733)))

(declare-fun res!2239632 () Bool)

(assert (=> d!1699732 (=> (not res!2239632) (not e!3283733))))

(assert (=> d!1699732 (= res!2239632 (matchR!7086 (regOne!30314 r!7292) (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878))))))

(assert (=> d!1699732 (validRegex!6637 (regOne!30314 r!7292))))

(assert (=> d!1699732 (= (findConcatSeparation!1426 (regOne!30314 r!7292) (regTwo!30314 r!7292) (++!13278 Nil!60878 (Cons!60878 (h!67326 s!2326) Nil!60878)) (t!374203 s!2326) s!2326) lt!2158364)))

(declare-fun b!5280987 () Bool)

(declare-fun res!2239636 () Bool)

(assert (=> b!5280987 (=> (not res!2239636) (not e!3283730))))

(assert (=> b!5280987 (= res!2239636 (matchR!7086 (regTwo!30314 r!7292) (_2!35403 (get!20934 lt!2158364))))))

(declare-fun b!5280988 () Bool)

(declare-fun res!2239635 () Bool)

(assert (=> b!5280988 (=> (not res!2239635) (not e!3283730))))

(assert (=> b!5280988 (= res!2239635 (matchR!7086 (regOne!30314 r!7292) (_1!35403 (get!20934 lt!2158364))))))

(assert (= (and d!1699732 res!2239632) b!5280986))

(assert (= (and d!1699732 c!915521) b!5280983))

(assert (= (and d!1699732 (not c!915521)) b!5280980))

(assert (= (and b!5280980 c!915522) b!5280981))

(assert (= (and b!5280980 (not c!915522)) b!5280984))

(assert (= (and d!1699732 res!2239633) b!5280988))

(assert (= (and b!5280988 res!2239635) b!5280987))

(assert (= (and b!5280987 res!2239636) b!5280982))

(assert (= (and d!1699732 (not res!2239634)) b!5280985))

(declare-fun m!6319036 () Bool)

(assert (=> b!5280982 m!6319036))

(declare-fun m!6319038 () Bool)

(assert (=> b!5280982 m!6319038))

(assert (=> b!5280987 m!6319036))

(declare-fun m!6319040 () Bool)

(assert (=> b!5280987 m!6319040))

(declare-fun m!6319042 () Bool)

(assert (=> b!5280985 m!6319042))

(declare-fun m!6319044 () Bool)

(assert (=> b!5280986 m!6319044))

(assert (=> b!5280984 m!6317562))

(declare-fun m!6319046 () Bool)

(assert (=> b!5280984 m!6319046))

(assert (=> b!5280984 m!6319046))

(declare-fun m!6319048 () Bool)

(assert (=> b!5280984 m!6319048))

(assert (=> b!5280984 m!6317562))

(declare-fun m!6319050 () Bool)

(assert (=> b!5280984 m!6319050))

(assert (=> b!5280984 m!6319046))

(declare-fun m!6319052 () Bool)

(assert (=> b!5280984 m!6319052))

(assert (=> d!1699732 m!6319042))

(assert (=> d!1699732 m!6317562))

(declare-fun m!6319054 () Bool)

(assert (=> d!1699732 m!6319054))

(assert (=> d!1699732 m!6317572))

(assert (=> b!5280988 m!6319036))

(declare-fun m!6319056 () Bool)

(assert (=> b!5280988 m!6319056))

(assert (=> b!5279589 d!1699732))

(assert (=> b!5279498 d!1698896))

(declare-fun b!5280989 () Bool)

(declare-fun e!3283734 () (InoxSet Context!8570))

(assert (=> b!5280989 (= e!3283734 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!376125 () Bool)

(declare-fun call!376130 () (InoxSet Context!8570))

(assert (=> bm!376125 (= call!376130 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))) (h!67326 s!2326)))))

(declare-fun d!1699734 () Bool)

(declare-fun c!915523 () Bool)

(declare-fun e!3283735 () Bool)

(assert (=> d!1699734 (= c!915523 e!3283735)))

(declare-fun res!2239637 () Bool)

(assert (=> d!1699734 (=> (not res!2239637) (not e!3283735))))

(assert (=> d!1699734 (= res!2239637 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))))

(declare-fun e!3283736 () (InoxSet Context!8570))

(assert (=> d!1699734 (= (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))) (h!67326 s!2326)) e!3283736)))

(declare-fun b!5280990 () Bool)

(assert (=> b!5280990 (= e!3283734 call!376130)))

(declare-fun b!5280991 () Bool)

(assert (=> b!5280991 (= e!3283735 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))))))

(declare-fun b!5280992 () Bool)

(assert (=> b!5280992 (= e!3283736 e!3283734)))

(declare-fun c!915524 () Bool)

(assert (=> b!5280992 (= c!915524 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343)))))))))))))

(declare-fun b!5280993 () Bool)

(assert (=> b!5280993 (= e!3283736 ((_ map or) call!376130 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (Cons!60879 (h!67327 (exprs!4785 (h!67328 zl!343))) (t!374204 (exprs!4785 (h!67328 zl!343))))))))))) (h!67326 s!2326))))))

(assert (= (and d!1699734 res!2239637) b!5280991))

(assert (= (and d!1699734 c!915523) b!5280993))

(assert (= (and d!1699734 (not c!915523)) b!5280992))

(assert (= (and b!5280992 c!915524) b!5280990))

(assert (= (and b!5280992 (not c!915524)) b!5280989))

(assert (= (or b!5280993 b!5280990) bm!376125))

(declare-fun m!6319058 () Bool)

(assert (=> bm!376125 m!6319058))

(declare-fun m!6319060 () Bool)

(assert (=> b!5280991 m!6319060))

(declare-fun m!6319062 () Bool)

(assert (=> b!5280993 m!6319062))

(assert (=> b!5279242 d!1699734))

(declare-fun b!5280994 () Bool)

(declare-fun e!3283737 () (InoxSet Context!8570))

(assert (=> b!5280994 (= e!3283737 ((as const (Array Context!8570 Bool)) false))))

(declare-fun bm!376126 () Bool)

(declare-fun call!376131 () (InoxSet Context!8570))

(assert (=> bm!376126 (= call!376131 (derivationStepZipperDown!349 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077))))) (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077)))))) (h!67326 s!2326)))))

(declare-fun d!1699736 () Bool)

(declare-fun c!915525 () Bool)

(declare-fun e!3283738 () Bool)

(assert (=> d!1699736 (= c!915525 e!3283738)))

(declare-fun res!2239638 () Bool)

(assert (=> d!1699736 (=> (not res!2239638) (not e!3283738))))

(assert (=> d!1699736 (= res!2239638 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077))))))))

(declare-fun e!3283739 () (InoxSet Context!8570))

(assert (=> d!1699736 (= (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 lt!2158077))) (h!67326 s!2326)) e!3283739)))

(declare-fun b!5280995 () Bool)

(assert (=> b!5280995 (= e!3283737 call!376131)))

(declare-fun b!5280996 () Bool)

(assert (=> b!5280996 (= e!3283738 (nullable!5070 (h!67327 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077)))))))))

(declare-fun b!5280997 () Bool)

(assert (=> b!5280997 (= e!3283739 e!3283737)))

(declare-fun c!915526 () Bool)

(assert (=> b!5280997 (= c!915526 ((_ is Cons!60879) (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077))))))))

(declare-fun b!5280998 () Bool)

(assert (=> b!5280998 (= e!3283739 ((_ map or) call!376131 (derivationStepZipperUp!273 (Context!8571 (t!374204 (exprs!4785 (Context!8571 (t!374204 (exprs!4785 lt!2158077)))))) (h!67326 s!2326))))))

(assert (= (and d!1699736 res!2239638) b!5280996))

(assert (= (and d!1699736 c!915525) b!5280998))

(assert (= (and d!1699736 (not c!915525)) b!5280997))

(assert (= (and b!5280997 c!915526) b!5280995))

(assert (= (and b!5280997 (not c!915526)) b!5280994))

(assert (= (or b!5280998 b!5280995) bm!376126))

(declare-fun m!6319064 () Bool)

(assert (=> bm!376126 m!6319064))

(declare-fun m!6319066 () Bool)

(assert (=> b!5280996 m!6319066))

(declare-fun m!6319068 () Bool)

(assert (=> b!5280998 m!6319068))

(assert (=> b!5279247 d!1699736))

(declare-fun d!1699738 () Bool)

(declare-fun c!915529 () Bool)

(assert (=> d!1699738 (= c!915529 ((_ is Nil!60880) lt!2158173))))

(declare-fun e!3283742 () (InoxSet Context!8570))

(assert (=> d!1699738 (= (content!10837 lt!2158173) e!3283742)))

(declare-fun b!5281003 () Bool)

(assert (=> b!5281003 (= e!3283742 ((as const (Array Context!8570 Bool)) false))))

(declare-fun b!5281004 () Bool)

(assert (=> b!5281004 (= e!3283742 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) (h!67328 lt!2158173) true) (content!10837 (t!374205 lt!2158173))))))

(assert (= (and d!1699738 c!915529) b!5281003))

(assert (= (and d!1699738 (not c!915529)) b!5281004))

(declare-fun m!6319070 () Bool)

(assert (=> b!5281004 m!6319070))

(declare-fun m!6319072 () Bool)

(assert (=> b!5281004 m!6319072))

(assert (=> b!5279213 d!1699738))

(declare-fun d!1699740 () Bool)

(assert (=> d!1699740 (= (isEmpty!32831 (unfocusZipperList!343 zl!343)) ((_ is Nil!60879) (unfocusZipperList!343 zl!343)))))

(assert (=> b!5279447 d!1699740))

(assert (=> d!1698898 d!1699420))

(assert (=> d!1698930 d!1699420))

(declare-fun d!1699742 () Bool)

(declare-fun lt!2158365 () Int)

(assert (=> d!1699742 (>= lt!2158365 0)))

(declare-fun e!3283743 () Int)

(assert (=> d!1699742 (= lt!2158365 e!3283743)))

(declare-fun c!915530 () Bool)

(assert (=> d!1699742 (= c!915530 ((_ is Cons!60879) (exprs!4785 (h!67328 lt!2158083))))))

(assert (=> d!1699742 (= (contextDepthTotal!42 (h!67328 lt!2158083)) lt!2158365)))

(declare-fun b!5281005 () Bool)

(assert (=> b!5281005 (= e!3283743 (+ (regexDepthTotal!10 (h!67327 (exprs!4785 (h!67328 lt!2158083)))) (contextDepthTotal!42 (Context!8571 (t!374204 (exprs!4785 (h!67328 lt!2158083)))))))))

(declare-fun b!5281006 () Bool)

(assert (=> b!5281006 (= e!3283743 1)))

(assert (= (and d!1699742 c!915530) b!5281005))

(assert (= (and d!1699742 (not c!915530)) b!5281006))

(declare-fun m!6319074 () Bool)

(assert (=> b!5281005 m!6319074))

(declare-fun m!6319076 () Bool)

(assert (=> b!5281005 m!6319076))

(assert (=> b!5279408 d!1699742))

(declare-fun d!1699744 () Bool)

(declare-fun lt!2158366 () Int)

(assert (=> d!1699744 (>= lt!2158366 0)))

(declare-fun e!3283744 () Int)

(assert (=> d!1699744 (= lt!2158366 e!3283744)))

(declare-fun c!915531 () Bool)

(assert (=> d!1699744 (= c!915531 ((_ is Cons!60880) (t!374205 lt!2158083)))))

(assert (=> d!1699744 (= (zipperDepthTotal!62 (t!374205 lt!2158083)) lt!2158366)))

(declare-fun b!5281007 () Bool)

(assert (=> b!5281007 (= e!3283744 (+ (contextDepthTotal!42 (h!67328 (t!374205 lt!2158083))) (zipperDepthTotal!62 (t!374205 (t!374205 lt!2158083)))))))

(declare-fun b!5281008 () Bool)

(assert (=> b!5281008 (= e!3283744 0)))

(assert (= (and d!1699744 c!915531) b!5281007))

(assert (= (and d!1699744 (not c!915531)) b!5281008))

(declare-fun m!6319078 () Bool)

(assert (=> b!5281007 m!6319078))

(declare-fun m!6319080 () Bool)

(assert (=> b!5281007 m!6319080))

(assert (=> b!5279408 d!1699744))

(declare-fun b!5281009 () Bool)

(declare-fun e!3283747 () Bool)

(declare-fun call!376132 () Bool)

(assert (=> b!5281009 (= e!3283747 call!376132)))

(declare-fun bm!376127 () Bool)

(declare-fun c!915533 () Bool)

(declare-fun call!376134 () Bool)

(declare-fun c!915532 () Bool)

(assert (=> bm!376127 (= call!376134 (validRegex!6637 (ite c!915532 (reg!15230 lt!2158215) (ite c!915533 (regOne!30315 lt!2158215) (regOne!30314 lt!2158215)))))))

(declare-fun b!5281010 () Bool)

(declare-fun res!2239643 () Bool)

(declare-fun e!3283748 () Bool)

(assert (=> b!5281010 (=> (not res!2239643) (not e!3283748))))

(declare-fun call!376133 () Bool)

(assert (=> b!5281010 (= res!2239643 call!376133)))

(declare-fun e!3283745 () Bool)

(assert (=> b!5281010 (= e!3283745 e!3283748)))

(declare-fun b!5281011 () Bool)

(declare-fun e!3283746 () Bool)

(declare-fun e!3283751 () Bool)

(assert (=> b!5281011 (= e!3283746 e!3283751)))

(declare-fun res!2239639 () Bool)

(assert (=> b!5281011 (= res!2239639 (not (nullable!5070 (reg!15230 lt!2158215))))))

(assert (=> b!5281011 (=> (not res!2239639) (not e!3283751))))

(declare-fun b!5281012 () Bool)

(declare-fun res!2239641 () Bool)

(declare-fun e!3283750 () Bool)

(assert (=> b!5281012 (=> res!2239641 e!3283750)))

(assert (=> b!5281012 (= res!2239641 (not ((_ is Concat!23746) lt!2158215)))))

(assert (=> b!5281012 (= e!3283745 e!3283750)))

(declare-fun b!5281013 () Bool)

(assert (=> b!5281013 (= e!3283750 e!3283747)))

(declare-fun res!2239642 () Bool)

(assert (=> b!5281013 (=> (not res!2239642) (not e!3283747))))

(assert (=> b!5281013 (= res!2239642 call!376133)))

(declare-fun b!5281014 () Bool)

(assert (=> b!5281014 (= e!3283751 call!376134)))

(declare-fun b!5281015 () Bool)

(declare-fun e!3283749 () Bool)

(assert (=> b!5281015 (= e!3283749 e!3283746)))

(assert (=> b!5281015 (= c!915532 ((_ is Star!14901) lt!2158215))))

(declare-fun b!5281016 () Bool)

(assert (=> b!5281016 (= e!3283748 call!376132)))

(declare-fun b!5281017 () Bool)

(assert (=> b!5281017 (= e!3283746 e!3283745)))

(assert (=> b!5281017 (= c!915533 ((_ is Union!14901) lt!2158215))))

(declare-fun bm!376129 () Bool)

(assert (=> bm!376129 (= call!376132 (validRegex!6637 (ite c!915533 (regTwo!30315 lt!2158215) (regTwo!30314 lt!2158215))))))

(declare-fun d!1699746 () Bool)

(declare-fun res!2239640 () Bool)

(assert (=> d!1699746 (=> res!2239640 e!3283749)))

(assert (=> d!1699746 (= res!2239640 ((_ is ElementMatch!14901) lt!2158215))))

(assert (=> d!1699746 (= (validRegex!6637 lt!2158215) e!3283749)))

(declare-fun bm!376128 () Bool)

(assert (=> bm!376128 (= call!376133 call!376134)))

(assert (= (and d!1699746 (not res!2239640)) b!5281015))

(assert (= (and b!5281015 c!915532) b!5281011))

(assert (= (and b!5281015 (not c!915532)) b!5281017))

(assert (= (and b!5281011 res!2239639) b!5281014))

(assert (= (and b!5281017 c!915533) b!5281010))

(assert (= (and b!5281017 (not c!915533)) b!5281012))

(assert (= (and b!5281010 res!2239643) b!5281016))

(assert (= (and b!5281012 (not res!2239641)) b!5281013))

(assert (= (and b!5281013 res!2239642) b!5281009))

(assert (= (or b!5281016 b!5281009) bm!376129))

(assert (= (or b!5281010 b!5281013) bm!376128))

(assert (= (or b!5281014 bm!376128) bm!376127))

(declare-fun m!6319082 () Bool)

(assert (=> bm!376127 m!6319082))

(declare-fun m!6319084 () Bool)

(assert (=> b!5281011 m!6319084))

(declare-fun m!6319086 () Bool)

(assert (=> bm!376129 m!6319086))

(assert (=> d!1698956 d!1699746))

(declare-fun d!1699748 () Bool)

(declare-fun res!2239644 () Bool)

(declare-fun e!3283752 () Bool)

(assert (=> d!1699748 (=> res!2239644 e!3283752)))

(assert (=> d!1699748 (= res!2239644 ((_ is Nil!60879) (exprs!4785 (h!67328 zl!343))))))

(assert (=> d!1699748 (= (forall!14309 (exprs!4785 (h!67328 zl!343)) lambda!266634) e!3283752)))

(declare-fun b!5281018 () Bool)

(declare-fun e!3283753 () Bool)

(assert (=> b!5281018 (= e!3283752 e!3283753)))

(declare-fun res!2239645 () Bool)

(assert (=> b!5281018 (=> (not res!2239645) (not e!3283753))))

(assert (=> b!5281018 (= res!2239645 (dynLambda!24067 lambda!266634 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun b!5281019 () Bool)

(assert (=> b!5281019 (= e!3283753 (forall!14309 (t!374204 (exprs!4785 (h!67328 zl!343))) lambda!266634))))

(assert (= (and d!1699748 (not res!2239644)) b!5281018))

(assert (= (and b!5281018 res!2239645) b!5281019))

(declare-fun b_lambda!203757 () Bool)

(assert (=> (not b_lambda!203757) (not b!5281018)))

(declare-fun m!6319088 () Bool)

(assert (=> b!5281018 m!6319088))

(declare-fun m!6319090 () Bool)

(assert (=> b!5281019 m!6319090))

(assert (=> d!1698956 d!1699748))

(declare-fun d!1699750 () Bool)

(declare-fun res!2239646 () Bool)

(declare-fun e!3283754 () Bool)

(assert (=> d!1699750 (=> res!2239646 e!3283754)))

(assert (=> d!1699750 (= res!2239646 ((_ is Nil!60879) (t!374204 lt!2158065)))))

(assert (=> d!1699750 (= (forall!14309 (t!374204 lt!2158065) lambda!266559) e!3283754)))

(declare-fun b!5281020 () Bool)

(declare-fun e!3283755 () Bool)

(assert (=> b!5281020 (= e!3283754 e!3283755)))

(declare-fun res!2239647 () Bool)

(assert (=> b!5281020 (=> (not res!2239647) (not e!3283755))))

(assert (=> b!5281020 (= res!2239647 (dynLambda!24067 lambda!266559 (h!67327 (t!374204 lt!2158065))))))

(declare-fun b!5281021 () Bool)

(assert (=> b!5281021 (= e!3283755 (forall!14309 (t!374204 (t!374204 lt!2158065)) lambda!266559))))

(assert (= (and d!1699750 (not res!2239646)) b!5281020))

(assert (= (and b!5281020 res!2239647) b!5281021))

(declare-fun b_lambda!203759 () Bool)

(assert (=> (not b_lambda!203759) (not b!5281020)))

(declare-fun m!6319092 () Bool)

(assert (=> b!5281020 m!6319092))

(declare-fun m!6319094 () Bool)

(assert (=> b!5281021 m!6319094))

(assert (=> b!5279566 d!1699750))

(declare-fun b!5281024 () Bool)

(declare-fun e!3283756 () Bool)

(declare-fun tp!1475212 () Bool)

(assert (=> b!5281024 (= e!3283756 tp!1475212)))

(assert (=> b!5279653 (= tp!1475020 e!3283756)))

(declare-fun b!5281025 () Bool)

(declare-fun tp!1475211 () Bool)

(declare-fun tp!1475214 () Bool)

(assert (=> b!5281025 (= e!3283756 (and tp!1475211 tp!1475214))))

(declare-fun b!5281022 () Bool)

(assert (=> b!5281022 (= e!3283756 tp_is_empty!39055)))

(declare-fun b!5281023 () Bool)

(declare-fun tp!1475210 () Bool)

(declare-fun tp!1475213 () Bool)

(assert (=> b!5281023 (= e!3283756 (and tp!1475210 tp!1475213))))

(assert (= (and b!5279653 ((_ is ElementMatch!14901) (regOne!30314 (regOne!30314 r!7292)))) b!5281022))

(assert (= (and b!5279653 ((_ is Concat!23746) (regOne!30314 (regOne!30314 r!7292)))) b!5281023))

(assert (= (and b!5279653 ((_ is Star!14901) (regOne!30314 (regOne!30314 r!7292)))) b!5281024))

(assert (= (and b!5279653 ((_ is Union!14901) (regOne!30314 (regOne!30314 r!7292)))) b!5281025))

(declare-fun b!5281028 () Bool)

(declare-fun e!3283757 () Bool)

(declare-fun tp!1475217 () Bool)

(assert (=> b!5281028 (= e!3283757 tp!1475217)))

(assert (=> b!5279653 (= tp!1475023 e!3283757)))

(declare-fun b!5281029 () Bool)

(declare-fun tp!1475216 () Bool)

(declare-fun tp!1475219 () Bool)

(assert (=> b!5281029 (= e!3283757 (and tp!1475216 tp!1475219))))

(declare-fun b!5281026 () Bool)

(assert (=> b!5281026 (= e!3283757 tp_is_empty!39055)))

(declare-fun b!5281027 () Bool)

(declare-fun tp!1475215 () Bool)

(declare-fun tp!1475218 () Bool)

(assert (=> b!5281027 (= e!3283757 (and tp!1475215 tp!1475218))))

(assert (= (and b!5279653 ((_ is ElementMatch!14901) (regTwo!30314 (regOne!30314 r!7292)))) b!5281026))

(assert (= (and b!5279653 ((_ is Concat!23746) (regTwo!30314 (regOne!30314 r!7292)))) b!5281027))

(assert (= (and b!5279653 ((_ is Star!14901) (regTwo!30314 (regOne!30314 r!7292)))) b!5281028))

(assert (= (and b!5279653 ((_ is Union!14901) (regTwo!30314 (regOne!30314 r!7292)))) b!5281029))

(declare-fun b!5281032 () Bool)

(declare-fun e!3283758 () Bool)

(declare-fun tp!1475222 () Bool)

(assert (=> b!5281032 (= e!3283758 tp!1475222)))

(assert (=> b!5279619 (= tp!1474983 e!3283758)))

(declare-fun b!5281033 () Bool)

(declare-fun tp!1475221 () Bool)

(declare-fun tp!1475224 () Bool)

(assert (=> b!5281033 (= e!3283758 (and tp!1475221 tp!1475224))))

(declare-fun b!5281030 () Bool)

(assert (=> b!5281030 (= e!3283758 tp_is_empty!39055)))

(declare-fun b!5281031 () Bool)

(declare-fun tp!1475220 () Bool)

(declare-fun tp!1475223 () Bool)

(assert (=> b!5281031 (= e!3283758 (and tp!1475220 tp!1475223))))

(assert (= (and b!5279619 ((_ is ElementMatch!14901) (regOne!30315 (regOne!30315 r!7292)))) b!5281030))

(assert (= (and b!5279619 ((_ is Concat!23746) (regOne!30315 (regOne!30315 r!7292)))) b!5281031))

(assert (= (and b!5279619 ((_ is Star!14901) (regOne!30315 (regOne!30315 r!7292)))) b!5281032))

(assert (= (and b!5279619 ((_ is Union!14901) (regOne!30315 (regOne!30315 r!7292)))) b!5281033))

(declare-fun b!5281036 () Bool)

(declare-fun e!3283759 () Bool)

(declare-fun tp!1475227 () Bool)

(assert (=> b!5281036 (= e!3283759 tp!1475227)))

(assert (=> b!5279619 (= tp!1474986 e!3283759)))

(declare-fun b!5281037 () Bool)

(declare-fun tp!1475226 () Bool)

(declare-fun tp!1475229 () Bool)

(assert (=> b!5281037 (= e!3283759 (and tp!1475226 tp!1475229))))

(declare-fun b!5281034 () Bool)

(assert (=> b!5281034 (= e!3283759 tp_is_empty!39055)))

(declare-fun b!5281035 () Bool)

(declare-fun tp!1475225 () Bool)

(declare-fun tp!1475228 () Bool)

(assert (=> b!5281035 (= e!3283759 (and tp!1475225 tp!1475228))))

(assert (= (and b!5279619 ((_ is ElementMatch!14901) (regTwo!30315 (regOne!30315 r!7292)))) b!5281034))

(assert (= (and b!5279619 ((_ is Concat!23746) (regTwo!30315 (regOne!30315 r!7292)))) b!5281035))

(assert (= (and b!5279619 ((_ is Star!14901) (regTwo!30315 (regOne!30315 r!7292)))) b!5281036))

(assert (= (and b!5279619 ((_ is Union!14901) (regTwo!30315 (regOne!30315 r!7292)))) b!5281037))

(declare-fun b!5281040 () Bool)

(declare-fun e!3283760 () Bool)

(declare-fun tp!1475232 () Bool)

(assert (=> b!5281040 (= e!3283760 tp!1475232)))

(assert (=> b!5279618 (= tp!1474984 e!3283760)))

(declare-fun b!5281041 () Bool)

(declare-fun tp!1475231 () Bool)

(declare-fun tp!1475234 () Bool)

(assert (=> b!5281041 (= e!3283760 (and tp!1475231 tp!1475234))))

(declare-fun b!5281038 () Bool)

(assert (=> b!5281038 (= e!3283760 tp_is_empty!39055)))

(declare-fun b!5281039 () Bool)

(declare-fun tp!1475230 () Bool)

(declare-fun tp!1475233 () Bool)

(assert (=> b!5281039 (= e!3283760 (and tp!1475230 tp!1475233))))

(assert (= (and b!5279618 ((_ is ElementMatch!14901) (reg!15230 (regOne!30315 r!7292)))) b!5281038))

(assert (= (and b!5279618 ((_ is Concat!23746) (reg!15230 (regOne!30315 r!7292)))) b!5281039))

(assert (= (and b!5279618 ((_ is Star!14901) (reg!15230 (regOne!30315 r!7292)))) b!5281040))

(assert (= (and b!5279618 ((_ is Union!14901) (reg!15230 (regOne!30315 r!7292)))) b!5281041))

(declare-fun b!5281044 () Bool)

(declare-fun e!3283761 () Bool)

(declare-fun tp!1475237 () Bool)

(assert (=> b!5281044 (= e!3283761 tp!1475237)))

(assert (=> b!5279655 (= tp!1475021 e!3283761)))

(declare-fun b!5281045 () Bool)

(declare-fun tp!1475236 () Bool)

(declare-fun tp!1475239 () Bool)

(assert (=> b!5281045 (= e!3283761 (and tp!1475236 tp!1475239))))

(declare-fun b!5281042 () Bool)

(assert (=> b!5281042 (= e!3283761 tp_is_empty!39055)))

(declare-fun b!5281043 () Bool)

(declare-fun tp!1475235 () Bool)

(declare-fun tp!1475238 () Bool)

(assert (=> b!5281043 (= e!3283761 (and tp!1475235 tp!1475238))))

(assert (= (and b!5279655 ((_ is ElementMatch!14901) (regOne!30315 (regOne!30314 r!7292)))) b!5281042))

(assert (= (and b!5279655 ((_ is Concat!23746) (regOne!30315 (regOne!30314 r!7292)))) b!5281043))

(assert (= (and b!5279655 ((_ is Star!14901) (regOne!30315 (regOne!30314 r!7292)))) b!5281044))

(assert (= (and b!5279655 ((_ is Union!14901) (regOne!30315 (regOne!30314 r!7292)))) b!5281045))

(declare-fun b!5281048 () Bool)

(declare-fun e!3283762 () Bool)

(declare-fun tp!1475242 () Bool)

(assert (=> b!5281048 (= e!3283762 tp!1475242)))

(assert (=> b!5279655 (= tp!1475024 e!3283762)))

(declare-fun b!5281049 () Bool)

(declare-fun tp!1475241 () Bool)

(declare-fun tp!1475244 () Bool)

(assert (=> b!5281049 (= e!3283762 (and tp!1475241 tp!1475244))))

(declare-fun b!5281046 () Bool)

(assert (=> b!5281046 (= e!3283762 tp_is_empty!39055)))

(declare-fun b!5281047 () Bool)

(declare-fun tp!1475240 () Bool)

(declare-fun tp!1475243 () Bool)

(assert (=> b!5281047 (= e!3283762 (and tp!1475240 tp!1475243))))

(assert (= (and b!5279655 ((_ is ElementMatch!14901) (regTwo!30315 (regOne!30314 r!7292)))) b!5281046))

(assert (= (and b!5279655 ((_ is Concat!23746) (regTwo!30315 (regOne!30314 r!7292)))) b!5281047))

(assert (= (and b!5279655 ((_ is Star!14901) (regTwo!30315 (regOne!30314 r!7292)))) b!5281048))

(assert (= (and b!5279655 ((_ is Union!14901) (regTwo!30315 (regOne!30314 r!7292)))) b!5281049))

(declare-fun b!5281052 () Bool)

(declare-fun e!3283763 () Bool)

(declare-fun tp!1475247 () Bool)

(assert (=> b!5281052 (= e!3283763 tp!1475247)))

(assert (=> b!5279654 (= tp!1475022 e!3283763)))

(declare-fun b!5281053 () Bool)

(declare-fun tp!1475246 () Bool)

(declare-fun tp!1475249 () Bool)

(assert (=> b!5281053 (= e!3283763 (and tp!1475246 tp!1475249))))

(declare-fun b!5281050 () Bool)

(assert (=> b!5281050 (= e!3283763 tp_is_empty!39055)))

(declare-fun b!5281051 () Bool)

(declare-fun tp!1475245 () Bool)

(declare-fun tp!1475248 () Bool)

(assert (=> b!5281051 (= e!3283763 (and tp!1475245 tp!1475248))))

(assert (= (and b!5279654 ((_ is ElementMatch!14901) (reg!15230 (regOne!30314 r!7292)))) b!5281050))

(assert (= (and b!5279654 ((_ is Concat!23746) (reg!15230 (regOne!30314 r!7292)))) b!5281051))

(assert (= (and b!5279654 ((_ is Star!14901) (reg!15230 (regOne!30314 r!7292)))) b!5281052))

(assert (= (and b!5279654 ((_ is Union!14901) (reg!15230 (regOne!30314 r!7292)))) b!5281053))

(declare-fun b!5281056 () Bool)

(declare-fun e!3283764 () Bool)

(declare-fun tp!1475252 () Bool)

(assert (=> b!5281056 (= e!3283764 tp!1475252)))

(assert (=> b!5279628 (= tp!1474996 e!3283764)))

(declare-fun b!5281057 () Bool)

(declare-fun tp!1475251 () Bool)

(declare-fun tp!1475254 () Bool)

(assert (=> b!5281057 (= e!3283764 (and tp!1475251 tp!1475254))))

(declare-fun b!5281054 () Bool)

(assert (=> b!5281054 (= e!3283764 tp_is_empty!39055)))

(declare-fun b!5281055 () Bool)

(declare-fun tp!1475250 () Bool)

(declare-fun tp!1475253 () Bool)

(assert (=> b!5281055 (= e!3283764 (and tp!1475250 tp!1475253))))

(assert (= (and b!5279628 ((_ is ElementMatch!14901) (h!67327 (exprs!4785 (h!67328 zl!343))))) b!5281054))

(assert (= (and b!5279628 ((_ is Concat!23746) (h!67327 (exprs!4785 (h!67328 zl!343))))) b!5281055))

(assert (= (and b!5279628 ((_ is Star!14901) (h!67327 (exprs!4785 (h!67328 zl!343))))) b!5281056))

(assert (= (and b!5279628 ((_ is Union!14901) (h!67327 (exprs!4785 (h!67328 zl!343))))) b!5281057))

(declare-fun b!5281058 () Bool)

(declare-fun e!3283765 () Bool)

(declare-fun tp!1475255 () Bool)

(declare-fun tp!1475256 () Bool)

(assert (=> b!5281058 (= e!3283765 (and tp!1475255 tp!1475256))))

(assert (=> b!5279628 (= tp!1474997 e!3283765)))

(assert (= (and b!5279628 ((_ is Cons!60879) (t!374204 (exprs!4785 (h!67328 zl!343))))) b!5281058))

(declare-fun b!5281059 () Bool)

(declare-fun e!3283766 () Bool)

(declare-fun tp!1475257 () Bool)

(assert (=> b!5281059 (= e!3283766 (and tp_is_empty!39055 tp!1475257))))

(assert (=> b!5279634 (= tp!1475002 e!3283766)))

(assert (= (and b!5279634 ((_ is Cons!60878) (t!374203 (t!374203 s!2326)))) b!5281059))

(declare-fun b!5281062 () Bool)

(declare-fun e!3283767 () Bool)

(declare-fun tp!1475260 () Bool)

(assert (=> b!5281062 (= e!3283767 tp!1475260)))

(assert (=> b!5279622 (= tp!1474989 e!3283767)))

(declare-fun b!5281063 () Bool)

(declare-fun tp!1475259 () Bool)

(declare-fun tp!1475262 () Bool)

(assert (=> b!5281063 (= e!3283767 (and tp!1475259 tp!1475262))))

(declare-fun b!5281060 () Bool)

(assert (=> b!5281060 (= e!3283767 tp_is_empty!39055)))

(declare-fun b!5281061 () Bool)

(declare-fun tp!1475258 () Bool)

(declare-fun tp!1475261 () Bool)

(assert (=> b!5281061 (= e!3283767 (and tp!1475258 tp!1475261))))

(assert (= (and b!5279622 ((_ is ElementMatch!14901) (reg!15230 (regTwo!30315 r!7292)))) b!5281060))

(assert (= (and b!5279622 ((_ is Concat!23746) (reg!15230 (regTwo!30315 r!7292)))) b!5281061))

(assert (= (and b!5279622 ((_ is Star!14901) (reg!15230 (regTwo!30315 r!7292)))) b!5281062))

(assert (= (and b!5279622 ((_ is Union!14901) (reg!15230 (regTwo!30315 r!7292)))) b!5281063))

(declare-fun b!5281066 () Bool)

(declare-fun e!3283768 () Bool)

(declare-fun tp!1475265 () Bool)

(assert (=> b!5281066 (= e!3283768 tp!1475265)))

(assert (=> b!5279621 (= tp!1474987 e!3283768)))

(declare-fun b!5281067 () Bool)

(declare-fun tp!1475264 () Bool)

(declare-fun tp!1475267 () Bool)

(assert (=> b!5281067 (= e!3283768 (and tp!1475264 tp!1475267))))

(declare-fun b!5281064 () Bool)

(assert (=> b!5281064 (= e!3283768 tp_is_empty!39055)))

(declare-fun b!5281065 () Bool)

(declare-fun tp!1475263 () Bool)

(declare-fun tp!1475266 () Bool)

(assert (=> b!5281065 (= e!3283768 (and tp!1475263 tp!1475266))))

(assert (= (and b!5279621 ((_ is ElementMatch!14901) (regOne!30314 (regTwo!30315 r!7292)))) b!5281064))

(assert (= (and b!5279621 ((_ is Concat!23746) (regOne!30314 (regTwo!30315 r!7292)))) b!5281065))

(assert (= (and b!5279621 ((_ is Star!14901) (regOne!30314 (regTwo!30315 r!7292)))) b!5281066))

(assert (= (and b!5279621 ((_ is Union!14901) (regOne!30314 (regTwo!30315 r!7292)))) b!5281067))

(declare-fun b!5281070 () Bool)

(declare-fun e!3283769 () Bool)

(declare-fun tp!1475270 () Bool)

(assert (=> b!5281070 (= e!3283769 tp!1475270)))

(assert (=> b!5279621 (= tp!1474990 e!3283769)))

(declare-fun b!5281071 () Bool)

(declare-fun tp!1475269 () Bool)

(declare-fun tp!1475272 () Bool)

(assert (=> b!5281071 (= e!3283769 (and tp!1475269 tp!1475272))))

(declare-fun b!5281068 () Bool)

(assert (=> b!5281068 (= e!3283769 tp_is_empty!39055)))

(declare-fun b!5281069 () Bool)

(declare-fun tp!1475268 () Bool)

(declare-fun tp!1475271 () Bool)

(assert (=> b!5281069 (= e!3283769 (and tp!1475268 tp!1475271))))

(assert (= (and b!5279621 ((_ is ElementMatch!14901) (regTwo!30314 (regTwo!30315 r!7292)))) b!5281068))

(assert (= (and b!5279621 ((_ is Concat!23746) (regTwo!30314 (regTwo!30315 r!7292)))) b!5281069))

(assert (= (and b!5279621 ((_ is Star!14901) (regTwo!30314 (regTwo!30315 r!7292)))) b!5281070))

(assert (= (and b!5279621 ((_ is Union!14901) (regTwo!30314 (regTwo!30315 r!7292)))) b!5281071))

(declare-fun b!5281074 () Bool)

(declare-fun e!3283770 () Bool)

(declare-fun tp!1475275 () Bool)

(assert (=> b!5281074 (= e!3283770 tp!1475275)))

(assert (=> b!5279658 (= tp!1475027 e!3283770)))

(declare-fun b!5281075 () Bool)

(declare-fun tp!1475274 () Bool)

(declare-fun tp!1475277 () Bool)

(assert (=> b!5281075 (= e!3283770 (and tp!1475274 tp!1475277))))

(declare-fun b!5281072 () Bool)

(assert (=> b!5281072 (= e!3283770 tp_is_empty!39055)))

(declare-fun b!5281073 () Bool)

(declare-fun tp!1475273 () Bool)

(declare-fun tp!1475276 () Bool)

(assert (=> b!5281073 (= e!3283770 (and tp!1475273 tp!1475276))))

(assert (= (and b!5279658 ((_ is ElementMatch!14901) (reg!15230 (regTwo!30314 r!7292)))) b!5281072))

(assert (= (and b!5279658 ((_ is Concat!23746) (reg!15230 (regTwo!30314 r!7292)))) b!5281073))

(assert (= (and b!5279658 ((_ is Star!14901) (reg!15230 (regTwo!30314 r!7292)))) b!5281074))

(assert (= (and b!5279658 ((_ is Union!14901) (reg!15230 (regTwo!30314 r!7292)))) b!5281075))

(declare-fun b!5281078 () Bool)

(declare-fun e!3283771 () Bool)

(declare-fun tp!1475280 () Bool)

(assert (=> b!5281078 (= e!3283771 tp!1475280)))

(assert (=> b!5279657 (= tp!1475025 e!3283771)))

(declare-fun b!5281079 () Bool)

(declare-fun tp!1475279 () Bool)

(declare-fun tp!1475282 () Bool)

(assert (=> b!5281079 (= e!3283771 (and tp!1475279 tp!1475282))))

(declare-fun b!5281076 () Bool)

(assert (=> b!5281076 (= e!3283771 tp_is_empty!39055)))

(declare-fun b!5281077 () Bool)

(declare-fun tp!1475278 () Bool)

(declare-fun tp!1475281 () Bool)

(assert (=> b!5281077 (= e!3283771 (and tp!1475278 tp!1475281))))

(assert (= (and b!5279657 ((_ is ElementMatch!14901) (regOne!30314 (regTwo!30314 r!7292)))) b!5281076))

(assert (= (and b!5279657 ((_ is Concat!23746) (regOne!30314 (regTwo!30314 r!7292)))) b!5281077))

(assert (= (and b!5279657 ((_ is Star!14901) (regOne!30314 (regTwo!30314 r!7292)))) b!5281078))

(assert (= (and b!5279657 ((_ is Union!14901) (regOne!30314 (regTwo!30314 r!7292)))) b!5281079))

(declare-fun b!5281082 () Bool)

(declare-fun e!3283772 () Bool)

(declare-fun tp!1475285 () Bool)

(assert (=> b!5281082 (= e!3283772 tp!1475285)))

(assert (=> b!5279657 (= tp!1475028 e!3283772)))

(declare-fun b!5281083 () Bool)

(declare-fun tp!1475284 () Bool)

(declare-fun tp!1475287 () Bool)

(assert (=> b!5281083 (= e!3283772 (and tp!1475284 tp!1475287))))

(declare-fun b!5281080 () Bool)

(assert (=> b!5281080 (= e!3283772 tp_is_empty!39055)))

(declare-fun b!5281081 () Bool)

(declare-fun tp!1475283 () Bool)

(declare-fun tp!1475286 () Bool)

(assert (=> b!5281081 (= e!3283772 (and tp!1475283 tp!1475286))))

(assert (= (and b!5279657 ((_ is ElementMatch!14901) (regTwo!30314 (regTwo!30314 r!7292)))) b!5281080))

(assert (= (and b!5279657 ((_ is Concat!23746) (regTwo!30314 (regTwo!30314 r!7292)))) b!5281081))

(assert (= (and b!5279657 ((_ is Star!14901) (regTwo!30314 (regTwo!30314 r!7292)))) b!5281082))

(assert (= (and b!5279657 ((_ is Union!14901) (regTwo!30314 (regTwo!30314 r!7292)))) b!5281083))

(declare-fun condSetEmpty!33845 () Bool)

(assert (=> setNonEmpty!33833 (= condSetEmpty!33845 (= setRest!33833 ((as const (Array Context!8570 Bool)) false)))))

(declare-fun setRes!33845 () Bool)

(assert (=> setNonEmpty!33833 (= tp!1475019 setRes!33845)))

(declare-fun setIsEmpty!33845 () Bool)

(assert (=> setIsEmpty!33845 setRes!33845))

(declare-fun setNonEmpty!33845 () Bool)

(declare-fun e!3283773 () Bool)

(declare-fun tp!1475289 () Bool)

(declare-fun setElem!33845 () Context!8570)

(assert (=> setNonEmpty!33845 (= setRes!33845 (and tp!1475289 (inv!80499 setElem!33845) e!3283773))))

(declare-fun setRest!33845 () (InoxSet Context!8570))

(assert (=> setNonEmpty!33845 (= setRest!33833 ((_ map or) (store ((as const (Array Context!8570 Bool)) false) setElem!33845 true) setRest!33845))))

(declare-fun b!5281084 () Bool)

(declare-fun tp!1475288 () Bool)

(assert (=> b!5281084 (= e!3283773 tp!1475288)))

(assert (= (and setNonEmpty!33833 condSetEmpty!33845) setIsEmpty!33845))

(assert (= (and setNonEmpty!33833 (not condSetEmpty!33845)) setNonEmpty!33845))

(assert (= setNonEmpty!33845 b!5281084))

(declare-fun m!6319096 () Bool)

(assert (=> setNonEmpty!33845 m!6319096))

(declare-fun b!5281087 () Bool)

(declare-fun e!3283774 () Bool)

(declare-fun tp!1475292 () Bool)

(assert (=> b!5281087 (= e!3283774 tp!1475292)))

(assert (=> b!5279629 (= tp!1474998 e!3283774)))

(declare-fun b!5281088 () Bool)

(declare-fun tp!1475291 () Bool)

(declare-fun tp!1475294 () Bool)

(assert (=> b!5281088 (= e!3283774 (and tp!1475291 tp!1475294))))

(declare-fun b!5281085 () Bool)

(assert (=> b!5281085 (= e!3283774 tp_is_empty!39055)))

(declare-fun b!5281086 () Bool)

(declare-fun tp!1475290 () Bool)

(declare-fun tp!1475293 () Bool)

(assert (=> b!5281086 (= e!3283774 (and tp!1475290 tp!1475293))))

(assert (= (and b!5279629 ((_ is ElementMatch!14901) (h!67327 (exprs!4785 setElem!33827)))) b!5281085))

(assert (= (and b!5279629 ((_ is Concat!23746) (h!67327 (exprs!4785 setElem!33827)))) b!5281086))

(assert (= (and b!5279629 ((_ is Star!14901) (h!67327 (exprs!4785 setElem!33827)))) b!5281087))

(assert (= (and b!5279629 ((_ is Union!14901) (h!67327 (exprs!4785 setElem!33827)))) b!5281088))

(declare-fun b!5281089 () Bool)

(declare-fun e!3283775 () Bool)

(declare-fun tp!1475295 () Bool)

(declare-fun tp!1475296 () Bool)

(assert (=> b!5281089 (= e!3283775 (and tp!1475295 tp!1475296))))

(assert (=> b!5279629 (= tp!1474999 e!3283775)))

(assert (= (and b!5279629 ((_ is Cons!60879) (t!374204 (exprs!4785 setElem!33827)))) b!5281089))

(declare-fun b!5281092 () Bool)

(declare-fun e!3283776 () Bool)

(declare-fun tp!1475299 () Bool)

(assert (=> b!5281092 (= e!3283776 tp!1475299)))

(assert (=> b!5279623 (= tp!1474988 e!3283776)))

(declare-fun b!5281093 () Bool)

(declare-fun tp!1475298 () Bool)

(declare-fun tp!1475301 () Bool)

(assert (=> b!5281093 (= e!3283776 (and tp!1475298 tp!1475301))))

(declare-fun b!5281090 () Bool)

(assert (=> b!5281090 (= e!3283776 tp_is_empty!39055)))

(declare-fun b!5281091 () Bool)

(declare-fun tp!1475297 () Bool)

(declare-fun tp!1475300 () Bool)

(assert (=> b!5281091 (= e!3283776 (and tp!1475297 tp!1475300))))

(assert (= (and b!5279623 ((_ is ElementMatch!14901) (regOne!30315 (regTwo!30315 r!7292)))) b!5281090))

(assert (= (and b!5279623 ((_ is Concat!23746) (regOne!30315 (regTwo!30315 r!7292)))) b!5281091))

(assert (= (and b!5279623 ((_ is Star!14901) (regOne!30315 (regTwo!30315 r!7292)))) b!5281092))

(assert (= (and b!5279623 ((_ is Union!14901) (regOne!30315 (regTwo!30315 r!7292)))) b!5281093))

(declare-fun b!5281096 () Bool)

(declare-fun e!3283777 () Bool)

(declare-fun tp!1475304 () Bool)

(assert (=> b!5281096 (= e!3283777 tp!1475304)))

(assert (=> b!5279623 (= tp!1474991 e!3283777)))

(declare-fun b!5281097 () Bool)

(declare-fun tp!1475303 () Bool)

(declare-fun tp!1475306 () Bool)

(assert (=> b!5281097 (= e!3283777 (and tp!1475303 tp!1475306))))

(declare-fun b!5281094 () Bool)

(assert (=> b!5281094 (= e!3283777 tp_is_empty!39055)))

(declare-fun b!5281095 () Bool)

(declare-fun tp!1475302 () Bool)

(declare-fun tp!1475305 () Bool)

(assert (=> b!5281095 (= e!3283777 (and tp!1475302 tp!1475305))))

(assert (= (and b!5279623 ((_ is ElementMatch!14901) (regTwo!30315 (regTwo!30315 r!7292)))) b!5281094))

(assert (= (and b!5279623 ((_ is Concat!23746) (regTwo!30315 (regTwo!30315 r!7292)))) b!5281095))

(assert (= (and b!5279623 ((_ is Star!14901) (regTwo!30315 (regTwo!30315 r!7292)))) b!5281096))

(assert (= (and b!5279623 ((_ is Union!14901) (regTwo!30315 (regTwo!30315 r!7292)))) b!5281097))

(declare-fun b!5281100 () Bool)

(declare-fun e!3283778 () Bool)

(declare-fun tp!1475309 () Bool)

(assert (=> b!5281100 (= e!3283778 tp!1475309)))

(assert (=> b!5279638 (= tp!1475004 e!3283778)))

(declare-fun b!5281101 () Bool)

(declare-fun tp!1475308 () Bool)

(declare-fun tp!1475311 () Bool)

(assert (=> b!5281101 (= e!3283778 (and tp!1475308 tp!1475311))))

(declare-fun b!5281098 () Bool)

(assert (=> b!5281098 (= e!3283778 tp_is_empty!39055)))

(declare-fun b!5281099 () Bool)

(declare-fun tp!1475307 () Bool)

(declare-fun tp!1475310 () Bool)

(assert (=> b!5281099 (= e!3283778 (and tp!1475307 tp!1475310))))

(assert (= (and b!5279638 ((_ is ElementMatch!14901) (regOne!30315 (reg!15230 r!7292)))) b!5281098))

(assert (= (and b!5279638 ((_ is Concat!23746) (regOne!30315 (reg!15230 r!7292)))) b!5281099))

(assert (= (and b!5279638 ((_ is Star!14901) (regOne!30315 (reg!15230 r!7292)))) b!5281100))

(assert (= (and b!5279638 ((_ is Union!14901) (regOne!30315 (reg!15230 r!7292)))) b!5281101))

(declare-fun b!5281104 () Bool)

(declare-fun e!3283779 () Bool)

(declare-fun tp!1475314 () Bool)

(assert (=> b!5281104 (= e!3283779 tp!1475314)))

(assert (=> b!5279638 (= tp!1475007 e!3283779)))

(declare-fun b!5281105 () Bool)

(declare-fun tp!1475313 () Bool)

(declare-fun tp!1475316 () Bool)

(assert (=> b!5281105 (= e!3283779 (and tp!1475313 tp!1475316))))

(declare-fun b!5281102 () Bool)

(assert (=> b!5281102 (= e!3283779 tp_is_empty!39055)))

(declare-fun b!5281103 () Bool)

(declare-fun tp!1475312 () Bool)

(declare-fun tp!1475315 () Bool)

(assert (=> b!5281103 (= e!3283779 (and tp!1475312 tp!1475315))))

(assert (= (and b!5279638 ((_ is ElementMatch!14901) (regTwo!30315 (reg!15230 r!7292)))) b!5281102))

(assert (= (and b!5279638 ((_ is Concat!23746) (regTwo!30315 (reg!15230 r!7292)))) b!5281103))

(assert (= (and b!5279638 ((_ is Star!14901) (regTwo!30315 (reg!15230 r!7292)))) b!5281104))

(assert (= (and b!5279638 ((_ is Union!14901) (regTwo!30315 (reg!15230 r!7292)))) b!5281105))

(declare-fun b!5281108 () Bool)

(declare-fun e!3283780 () Bool)

(declare-fun tp!1475319 () Bool)

(assert (=> b!5281108 (= e!3283780 tp!1475319)))

(assert (=> b!5279659 (= tp!1475026 e!3283780)))

(declare-fun b!5281109 () Bool)

(declare-fun tp!1475318 () Bool)

(declare-fun tp!1475321 () Bool)

(assert (=> b!5281109 (= e!3283780 (and tp!1475318 tp!1475321))))

(declare-fun b!5281106 () Bool)

(assert (=> b!5281106 (= e!3283780 tp_is_empty!39055)))

(declare-fun b!5281107 () Bool)

(declare-fun tp!1475317 () Bool)

(declare-fun tp!1475320 () Bool)

(assert (=> b!5281107 (= e!3283780 (and tp!1475317 tp!1475320))))

(assert (= (and b!5279659 ((_ is ElementMatch!14901) (regOne!30315 (regTwo!30314 r!7292)))) b!5281106))

(assert (= (and b!5279659 ((_ is Concat!23746) (regOne!30315 (regTwo!30314 r!7292)))) b!5281107))

(assert (= (and b!5279659 ((_ is Star!14901) (regOne!30315 (regTwo!30314 r!7292)))) b!5281108))

(assert (= (and b!5279659 ((_ is Union!14901) (regOne!30315 (regTwo!30314 r!7292)))) b!5281109))

(declare-fun b!5281112 () Bool)

(declare-fun e!3283781 () Bool)

(declare-fun tp!1475324 () Bool)

(assert (=> b!5281112 (= e!3283781 tp!1475324)))

(assert (=> b!5279659 (= tp!1475029 e!3283781)))

(declare-fun b!5281113 () Bool)

(declare-fun tp!1475323 () Bool)

(declare-fun tp!1475326 () Bool)

(assert (=> b!5281113 (= e!3283781 (and tp!1475323 tp!1475326))))

(declare-fun b!5281110 () Bool)

(assert (=> b!5281110 (= e!3283781 tp_is_empty!39055)))

(declare-fun b!5281111 () Bool)

(declare-fun tp!1475322 () Bool)

(declare-fun tp!1475325 () Bool)

(assert (=> b!5281111 (= e!3283781 (and tp!1475322 tp!1475325))))

(assert (= (and b!5279659 ((_ is ElementMatch!14901) (regTwo!30315 (regTwo!30314 r!7292)))) b!5281110))

(assert (= (and b!5279659 ((_ is Concat!23746) (regTwo!30315 (regTwo!30314 r!7292)))) b!5281111))

(assert (= (and b!5279659 ((_ is Star!14901) (regTwo!30315 (regTwo!30314 r!7292)))) b!5281112))

(assert (= (and b!5279659 ((_ is Union!14901) (regTwo!30315 (regTwo!30314 r!7292)))) b!5281113))

(declare-fun b!5281116 () Bool)

(declare-fun e!3283782 () Bool)

(declare-fun tp!1475329 () Bool)

(assert (=> b!5281116 (= e!3283782 tp!1475329)))

(assert (=> b!5279637 (= tp!1475005 e!3283782)))

(declare-fun b!5281117 () Bool)

(declare-fun tp!1475328 () Bool)

(declare-fun tp!1475331 () Bool)

(assert (=> b!5281117 (= e!3283782 (and tp!1475328 tp!1475331))))

(declare-fun b!5281114 () Bool)

(assert (=> b!5281114 (= e!3283782 tp_is_empty!39055)))

(declare-fun b!5281115 () Bool)

(declare-fun tp!1475327 () Bool)

(declare-fun tp!1475330 () Bool)

(assert (=> b!5281115 (= e!3283782 (and tp!1475327 tp!1475330))))

(assert (= (and b!5279637 ((_ is ElementMatch!14901) (reg!15230 (reg!15230 r!7292)))) b!5281114))

(assert (= (and b!5279637 ((_ is Concat!23746) (reg!15230 (reg!15230 r!7292)))) b!5281115))

(assert (= (and b!5279637 ((_ is Star!14901) (reg!15230 (reg!15230 r!7292)))) b!5281116))

(assert (= (and b!5279637 ((_ is Union!14901) (reg!15230 (reg!15230 r!7292)))) b!5281117))

(declare-fun b!5281118 () Bool)

(declare-fun e!3283783 () Bool)

(declare-fun tp!1475332 () Bool)

(declare-fun tp!1475333 () Bool)

(assert (=> b!5281118 (= e!3283783 (and tp!1475332 tp!1475333))))

(assert (=> b!5279651 (= tp!1475018 e!3283783)))

(assert (= (and b!5279651 ((_ is Cons!60879) (exprs!4785 setElem!33833))) b!5281118))

(declare-fun b!5281121 () Bool)

(declare-fun e!3283784 () Bool)

(declare-fun tp!1475336 () Bool)

(assert (=> b!5281121 (= e!3283784 tp!1475336)))

(assert (=> b!5279636 (= tp!1475003 e!3283784)))

(declare-fun b!5281122 () Bool)

(declare-fun tp!1475335 () Bool)

(declare-fun tp!1475338 () Bool)

(assert (=> b!5281122 (= e!3283784 (and tp!1475335 tp!1475338))))

(declare-fun b!5281119 () Bool)

(assert (=> b!5281119 (= e!3283784 tp_is_empty!39055)))

(declare-fun b!5281120 () Bool)

(declare-fun tp!1475334 () Bool)

(declare-fun tp!1475337 () Bool)

(assert (=> b!5281120 (= e!3283784 (and tp!1475334 tp!1475337))))

(assert (= (and b!5279636 ((_ is ElementMatch!14901) (regOne!30314 (reg!15230 r!7292)))) b!5281119))

(assert (= (and b!5279636 ((_ is Concat!23746) (regOne!30314 (reg!15230 r!7292)))) b!5281120))

(assert (= (and b!5279636 ((_ is Star!14901) (regOne!30314 (reg!15230 r!7292)))) b!5281121))

(assert (= (and b!5279636 ((_ is Union!14901) (regOne!30314 (reg!15230 r!7292)))) b!5281122))

(declare-fun b!5281125 () Bool)

(declare-fun e!3283785 () Bool)

(declare-fun tp!1475341 () Bool)

(assert (=> b!5281125 (= e!3283785 tp!1475341)))

(assert (=> b!5279636 (= tp!1475006 e!3283785)))

(declare-fun b!5281126 () Bool)

(declare-fun tp!1475340 () Bool)

(declare-fun tp!1475343 () Bool)

(assert (=> b!5281126 (= e!3283785 (and tp!1475340 tp!1475343))))

(declare-fun b!5281123 () Bool)

(assert (=> b!5281123 (= e!3283785 tp_is_empty!39055)))

(declare-fun b!5281124 () Bool)

(declare-fun tp!1475339 () Bool)

(declare-fun tp!1475342 () Bool)

(assert (=> b!5281124 (= e!3283785 (and tp!1475339 tp!1475342))))

(assert (= (and b!5279636 ((_ is ElementMatch!14901) (regTwo!30314 (reg!15230 r!7292)))) b!5281123))

(assert (= (and b!5279636 ((_ is Concat!23746) (regTwo!30314 (reg!15230 r!7292)))) b!5281124))

(assert (= (and b!5279636 ((_ is Star!14901) (regTwo!30314 (reg!15230 r!7292)))) b!5281125))

(assert (= (and b!5279636 ((_ is Union!14901) (regTwo!30314 (reg!15230 r!7292)))) b!5281126))

(declare-fun b!5281127 () Bool)

(declare-fun e!3283786 () Bool)

(declare-fun tp!1475344 () Bool)

(declare-fun tp!1475345 () Bool)

(assert (=> b!5281127 (= e!3283786 (and tp!1475344 tp!1475345))))

(assert (=> b!5279646 (= tp!1475012 e!3283786)))

(assert (= (and b!5279646 ((_ is Cons!60879) (exprs!4785 (h!67328 (t!374205 zl!343))))) b!5281127))

(declare-fun b!5281129 () Bool)

(declare-fun e!3283788 () Bool)

(declare-fun tp!1475346 () Bool)

(assert (=> b!5281129 (= e!3283788 tp!1475346)))

(declare-fun tp!1475347 () Bool)

(declare-fun e!3283787 () Bool)

(declare-fun b!5281128 () Bool)

(assert (=> b!5281128 (= e!3283787 (and (inv!80499 (h!67328 (t!374205 (t!374205 zl!343)))) e!3283788 tp!1475347))))

(assert (=> b!5279645 (= tp!1475013 e!3283787)))

(assert (= b!5281128 b!5281129))

(assert (= (and b!5279645 ((_ is Cons!60880) (t!374205 (t!374205 zl!343)))) b!5281128))

(declare-fun m!6319098 () Bool)

(assert (=> b!5281128 m!6319098))

(declare-fun b!5281132 () Bool)

(declare-fun e!3283789 () Bool)

(declare-fun tp!1475350 () Bool)

(assert (=> b!5281132 (= e!3283789 tp!1475350)))

(assert (=> b!5279617 (= tp!1474982 e!3283789)))

(declare-fun b!5281133 () Bool)

(declare-fun tp!1475349 () Bool)

(declare-fun tp!1475352 () Bool)

(assert (=> b!5281133 (= e!3283789 (and tp!1475349 tp!1475352))))

(declare-fun b!5281130 () Bool)

(assert (=> b!5281130 (= e!3283789 tp_is_empty!39055)))

(declare-fun b!5281131 () Bool)

(declare-fun tp!1475348 () Bool)

(declare-fun tp!1475351 () Bool)

(assert (=> b!5281131 (= e!3283789 (and tp!1475348 tp!1475351))))

(assert (= (and b!5279617 ((_ is ElementMatch!14901) (regOne!30314 (regOne!30315 r!7292)))) b!5281130))

(assert (= (and b!5279617 ((_ is Concat!23746) (regOne!30314 (regOne!30315 r!7292)))) b!5281131))

(assert (= (and b!5279617 ((_ is Star!14901) (regOne!30314 (regOne!30315 r!7292)))) b!5281132))

(assert (= (and b!5279617 ((_ is Union!14901) (regOne!30314 (regOne!30315 r!7292)))) b!5281133))

(declare-fun b!5281136 () Bool)

(declare-fun e!3283790 () Bool)

(declare-fun tp!1475355 () Bool)

(assert (=> b!5281136 (= e!3283790 tp!1475355)))

(assert (=> b!5279617 (= tp!1474985 e!3283790)))

(declare-fun b!5281137 () Bool)

(declare-fun tp!1475354 () Bool)

(declare-fun tp!1475357 () Bool)

(assert (=> b!5281137 (= e!3283790 (and tp!1475354 tp!1475357))))

(declare-fun b!5281134 () Bool)

(assert (=> b!5281134 (= e!3283790 tp_is_empty!39055)))

(declare-fun b!5281135 () Bool)

(declare-fun tp!1475353 () Bool)

(declare-fun tp!1475356 () Bool)

(assert (=> b!5281135 (= e!3283790 (and tp!1475353 tp!1475356))))

(assert (= (and b!5279617 ((_ is ElementMatch!14901) (regTwo!30314 (regOne!30315 r!7292)))) b!5281134))

(assert (= (and b!5279617 ((_ is Concat!23746) (regTwo!30314 (regOne!30315 r!7292)))) b!5281135))

(assert (= (and b!5279617 ((_ is Star!14901) (regTwo!30314 (regOne!30315 r!7292)))) b!5281136))

(assert (= (and b!5279617 ((_ is Union!14901) (regTwo!30314 (regOne!30315 r!7292)))) b!5281137))

(declare-fun b_lambda!203761 () Bool)

(assert (= b_lambda!203741 (or d!1698998 b_lambda!203761)))

(declare-fun bs!1224418 () Bool)

(declare-fun d!1699752 () Bool)

(assert (= bs!1224418 (and d!1699752 d!1698998)))

(assert (=> bs!1224418 (= (dynLambda!24067 lambda!266639 (h!67327 lt!2158092)) (validRegex!6637 (h!67327 lt!2158092)))))

(declare-fun m!6319100 () Bool)

(assert (=> bs!1224418 m!6319100))

(assert (=> b!5280677 d!1699752))

(declare-fun b_lambda!203763 () Bool)

(assert (= b_lambda!203737 (or b!5278704 b_lambda!203763)))

(assert (=> d!1699478 d!1699020))

(declare-fun b_lambda!203765 () Bool)

(assert (= b_lambda!203745 (or d!1698954 b_lambda!203765)))

(declare-fun bs!1224419 () Bool)

(declare-fun d!1699754 () Bool)

(assert (= bs!1224419 (and d!1699754 d!1698954)))

(assert (=> bs!1224419 (= (dynLambda!24067 lambda!266631 (h!67327 lt!2158212)) (validRegex!6637 (h!67327 lt!2158212)))))

(declare-fun m!6319102 () Bool)

(assert (=> bs!1224419 m!6319102))

(assert (=> b!5280834 d!1699754))

(declare-fun b_lambda!203767 () Bool)

(assert (= b_lambda!203753 (or d!1698990 b_lambda!203767)))

(declare-fun bs!1224420 () Bool)

(declare-fun d!1699756 () Bool)

(assert (= bs!1224420 (and d!1699756 d!1698990)))

(assert (=> bs!1224420 (= (dynLambda!24067 lambda!266638 (h!67327 (exprs!4785 (h!67328 zl!343)))) (validRegex!6637 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(declare-fun m!6319104 () Bool)

(assert (=> bs!1224420 m!6319104))

(assert (=> b!5280906 d!1699756))

(declare-fun b_lambda!203769 () Bool)

(assert (= b_lambda!203735 (or b!5279225 b_lambda!203769)))

(declare-fun bs!1224421 () Bool)

(declare-fun d!1699758 () Bool)

(assert (= bs!1224421 (and d!1699758 b!5279225)))

(assert (=> bs!1224421 (= (dynLambda!24073 lambda!266615 (h!67328 (t!374205 zl!343))) (>= lt!2158188 (contextDepth!10 (h!67328 (t!374205 zl!343)))))))

(assert (=> bs!1224421 m!6318456))

(assert (=> b!5280480 d!1699758))

(declare-fun b_lambda!203771 () Bool)

(assert (= b_lambda!203743 (or b!5279227 b_lambda!203771)))

(declare-fun bs!1224422 () Bool)

(declare-fun d!1699760 () Bool)

(assert (= bs!1224422 (and d!1699760 b!5279227)))

(assert (=> bs!1224422 (= (dynLambda!24073 lambda!266616 (h!67328 zl!343)) (>= lt!2158189 (contextDepth!10 (h!67328 zl!343))))))

(assert (=> bs!1224422 m!6317274))

(assert (=> b!5280820 d!1699760))

(declare-fun b_lambda!203773 () Bool)

(assert (= b_lambda!203749 (or d!1698952 b_lambda!203773)))

(declare-fun bs!1224423 () Bool)

(declare-fun d!1699762 () Bool)

(assert (= bs!1224423 (and d!1699762 d!1698952)))

(assert (=> bs!1224423 (= (dynLambda!24067 lambda!266628 (h!67327 (unfocusZipperList!343 zl!343))) (validRegex!6637 (h!67327 (unfocusZipperList!343 zl!343))))))

(declare-fun m!6319106 () Bool)

(assert (=> bs!1224423 m!6319106))

(assert (=> b!5280871 d!1699762))

(declare-fun b_lambda!203775 () Bool)

(assert (= b_lambda!203747 (or b!5278704 b_lambda!203775)))

(assert (=> d!1699630 d!1699024))

(declare-fun b_lambda!203777 () Bool)

(assert (= b_lambda!203759 (or b!5278732 b_lambda!203777)))

(declare-fun bs!1224424 () Bool)

(declare-fun d!1699764 () Bool)

(assert (= bs!1224424 (and d!1699764 b!5278732)))

(assert (=> bs!1224424 (= (dynLambda!24067 lambda!266559 (h!67327 (t!374204 lt!2158065))) (validRegex!6637 (h!67327 (t!374204 lt!2158065))))))

(declare-fun m!6319108 () Bool)

(assert (=> bs!1224424 m!6319108))

(assert (=> b!5281020 d!1699764))

(declare-fun b_lambda!203779 () Bool)

(assert (= b_lambda!203733 (or b!5278704 b_lambda!203779)))

(assert (=> d!1699406 d!1699018))

(declare-fun b_lambda!203781 () Bool)

(assert (= b_lambda!203751 (or b!5279220 b_lambda!203781)))

(declare-fun bs!1224425 () Bool)

(declare-fun d!1699766 () Bool)

(assert (= bs!1224425 (and d!1699766 b!5279220)))

(assert (=> bs!1224425 (= (dynLambda!24073 lambda!266612 (h!67328 (t!374205 lt!2158083))) (>= lt!2158184 (contextDepth!10 (h!67328 (t!374205 lt!2158083)))))))

(assert (=> bs!1224425 m!6318876))

(assert (=> b!5280876 d!1699766))

(declare-fun b_lambda!203783 () Bool)

(assert (= b_lambda!203755 (or d!1699002 b_lambda!203783)))

(declare-fun bs!1224426 () Bool)

(declare-fun d!1699768 () Bool)

(assert (= bs!1224426 (and d!1699768 d!1699002)))

(assert (=> bs!1224426 (= (dynLambda!24067 lambda!266640 (h!67327 (exprs!4785 setElem!33827))) (validRegex!6637 (h!67327 (exprs!4785 setElem!33827))))))

(declare-fun m!6319110 () Bool)

(assert (=> bs!1224426 m!6319110))

(assert (=> b!5280923 d!1699768))

(declare-fun b_lambda!203785 () Bool)

(assert (= b_lambda!203757 (or d!1698956 b_lambda!203785)))

(declare-fun bs!1224427 () Bool)

(declare-fun d!1699770 () Bool)

(assert (= bs!1224427 (and d!1699770 d!1698956)))

(assert (=> bs!1224427 (= (dynLambda!24067 lambda!266634 (h!67327 (exprs!4785 (h!67328 zl!343)))) (validRegex!6637 (h!67327 (exprs!4785 (h!67328 zl!343)))))))

(assert (=> bs!1224427 m!6319104))

(assert (=> b!5281018 d!1699770))

(declare-fun b_lambda!203787 () Bool)

(assert (= b_lambda!203739 (or b!5279222 b_lambda!203787)))

(declare-fun bs!1224428 () Bool)

(declare-fun d!1699772 () Bool)

(assert (= bs!1224428 (and d!1699772 b!5279222)))

(assert (=> bs!1224428 (= (dynLambda!24073 lambda!266613 (h!67328 lt!2158083)) (>= lt!2158185 (contextDepth!10 (h!67328 lt!2158083))))))

(assert (=> bs!1224428 m!6317262))

(assert (=> b!5280520 d!1699772))

(check-sat (not b!5280810) (not b!5281131) (not b!5280912) (not b!5280739) (not b!5280809) (not b!5280603) (not b!5280894) (not b!5281028) (not bm!376031) (not bm!375995) (not b!5280967) (not d!1699706) (not d!1699464) (not b!5280433) (not b!5281007) (not b!5281092) (not d!1699586) (not b!5281021) (not b_lambda!203767) (not b!5281065) (not b!5280909) (not bm!376113) (not b!5280517) (not bm!375993) (not b!5280548) (not d!1699458) (not b!5280592) (not bm!376018) (not bm!376085) (not b!5280805) (not setNonEmpty!33842) (not b!5280625) (not b!5280817) (not b!5281037) (not b!5280806) (not d!1699720) (not b!5280743) (not bm!376008) (not b!5280526) (not d!1699532) (not d!1699682) (not b!5280522) (not b!5281053) (not d!1699518) (not bm!376068) (not bm!376077) (not b!5281113) (not b!5280803) (not b!5280987) (not d!1699722) (not b!5280769) (not b!5280840) (not b!5280911) (not b_lambda!203673) (not b!5280770) (not b!5280624) (not b!5280610) (not b!5281052) (not b!5281066) (not b!5280893) (not bm!376014) (not b!5280814) (not b_lambda!203765) (not d!1699520) (not bm!376012) (not b!5281087) (not d!1699574) (not b!5280742) (not b!5280998) (not bm!376058) (not d!1699478) (not d!1699506) (not b_lambda!203785) (not b!5280662) (not b!5281075) (not b!5280908) (not d!1699412) (not b!5280818) (not b!5281078) (not bm!376032) (not b!5280469) (not b!5280970) (not b!5280533) (not b_lambda!203769) (not d!1699496) (not b!5280986) (not b!5281043) (not d!1699492) (not d!1699428) (not b!5280996) (not b!5280497) (not bm!376122) (not b!5280947) (not d!1699612) (not bm!376120) (not d!1699724) (not b!5280605) (not d!1699514) (not d!1699476) (not d!1699414) (not bs!1224425) (not b!5280757) (not b!5280569) (not b!5280437) (not bm!376039) (not bm!375996) (not bm!376004) (not b!5280591) (not b!5280426) (not b!5281036) (not b!5280766) (not b!5280758) (not bm!376055) (not d!1699686) (not b!5280985) (not b!5280827) (not bm!376052) (not b!5281099) (not d!1699630) (not b!5281105) (not b!5280403) (not b!5280519) (not d!1699498) (not b!5281073) (not b!5281118) (not b!5280441) (not b!5280604) (not b!5280864) (not b!5281045) (not b_lambda!203671) (not b!5281115) (not b!5281011) (not d!1699552) (not b!5280436) (not b!5281122) (not b!5281027) (not b!5280521) (not bm!375997) (not b!5281071) (not bm!376127) (not b!5280481) (not d!1699528) (not b!5281077) (not b!5281091) (not b!5280523) (not b!5281111) (not d!1699454) (not b!5280907) (not b!5280898) (not b!5280768) (not d!1699502) (not b!5280735) (not b!5281093) (not b!5281057) (not b!5280534) (not b!5280971) (not d!1699488) (not b!5281059) (not b_lambda!203761) (not b!5280616) (not d!1699590) (not b!5281104) (not b!5280678) tp_is_empty!39055 (not bm!376020) (not d!1699668) (not b!5281135) (not d!1699554) (not b!5281126) (not d!1699716) (not b_lambda!203781) (not b!5280443) (not b!5281024) (not d!1699490) (not d!1699546) (not d!1699646) (not b!5281120) (not b!5281029) (not bm!376064) (not d!1699650) (not bs!1224418) (not b!5281081) (not d!1699676) (not d!1699688) (not b!5281089) (not b!5280602) (not b!5280927) (not d!1699622) (not bm!376103) (not b!5280545) (not b!5281032) (not b!5281095) (not b!5281100) (not bm!376041) (not b!5280435) (not b!5281137) (not b!5280973) (not b!5281084) (not bm!376095) (not d!1699486) (not b!5280965) (not b!5280725) (not d!1699674) (not b_lambda!203771) (not b!5280456) (not b_lambda!203775) (not d!1699696) (not b!5280905) (not bm!376076) (not b!5280411) (not bs!1224428) (not b!5281005) (not bm!376002) (not bm!376105) (not b!5280929) (not b!5280849) (not bm!376069) (not b!5281058) (not b!5280589) (not d!1699560) (not b_lambda!203783) (not b!5280910) (not bm!376114) (not d!1699576) (not b!5281124) (not b!5280860) (not bm!376083) (not bm!376129) (not d!1699598) (not b!5281079) (not bm!375987) (not bm!376067) (not b!5280993) (not bs!1224422) (not b!5280749) (not b!5280466) (not b!5281121) (not d!1699690) (not b!5281033) (not d!1699558) (not bm!376005) (not bm!376084) (not bm!376059) (not bm!376021) (not b_lambda!203773) (not b!5281112) (not b!5281129) (not bm!376053) (not bm!376089) (not b!5280984) (not d!1699402) (not b!5280875) (not b!5281097) (not d!1699692) (not b!5281040) (not d!1699500) (not b!5281047) (not b!5281055) (not b!5281025) (not b!5280416) (not b!5280412) (not b!5281070) (not b!5280958) (not b!5280885) (not d!1699568) (not d!1699664) (not b!5280873) (not bm!376101) (not b!5280744) (not d!1699556) (not bm!376037) (not b!5280728) (not b!5280449) (not b!5281063) (not setNonEmpty!33845) (not bs!1224421) (not b!5281019) (not d!1699534) (not b!5281107) (not b!5280821) (not bm!376119) (not bm!375986) (not b!5280626) (not bm!376092) (not d!1699642) (not b!5280721) (not b!5280924) (not d!1699592) (not b_lambda!203675) (not bm!376112) (not bm!376038) (not b!5280878) (not bs!1224426) (not b!5281125) (not b!5280813) (not bm!376097) (not d!1699432) (not b!5281061) (not b!5280631) (not b!5281103) (not b_lambda!203787) (not b!5280991) (not d!1699604) (not b!5281051) (not b!5280877) (not bm!376086) (not b!5280536) (not d!1699460) (not b!5280439) (not d!1699666) (not bm!376061) (not bm!376126) (not b!5281132) (not bm!376060) (not setNonEmpty!33843) (not b!5281039) (not b!5280422) (not b!5281116) (not b!5280977) (not b!5280585) (not bm!376006) (not bm!376116) (not d!1699728) (not bm!376071) (not b!5281127) (not b!5280904) (not b!5281067) (not d!1699566) (not b!5281023) (not b!5280731) (not b!5280968) (not b!5280440) (not b!5280537) (not b!5281088) (not d!1699606) (not b!5280581) (not b!5280608) (not b!5280730) (not b!5281074) (not b!5281041) (not b!5281069) (not b!5281096) (not d!1699732) (not b!5280816) (not b!5281109) (not b!5281062) (not b!5281136) (not b!5281035) (not b!5280508) (not b!5280482) (not d!1699726) (not b_lambda!203669) (not bs!1224427) (not bm!376088) (not d!1699582) (not b!5280580) (not b!5280741) (not b!5280444) (not d!1699684) (not b!5281082) (not bm!376090) (not b!5280922) (not d!1699422) (not b!5280835) (not d!1699584) (not d!1699430) (not b!5280483) (not b!5280988) (not bm!376108) (not b!5281048) (not bm!376035) (not bm!376111) (not b!5280681) (not d!1699418) (not b!5280607) (not b!5280617) (not b!5280692) (not bs!1224423) (not b!5281004) (not bm!376017) (not bm!376102) (not bm!375989) (not bm!376074) (not b!5281108) (not b!5280921) (not bs!1224424) (not b!5280762) (not b!5281083) (not bm!376109) (not b!5280872) (not b!5280464) (not b!5280486) (not d!1699718) (not b!5280824) (not b!5280722) (not b_lambda!203777) (not b!5280851) (not d!1699730) (not bm!375992) (not d!1699470) (not b!5281117) (not b!5280978) (not b!5280420) (not bm!376099) (not b!5280974) (not d!1699572) (not setNonEmpty!33844) (not b!5280982) (not bs!1224420) (not bm!376125) (not b!5280595) (not b!5280880) (not b!5281128) (not b!5280688) (not bm!376051) (not b!5280808) (not b!5280423) (not b!5281049) (not b!5280812) (not d!1699406) (not b!5281101) (not b!5281031) (not b!5280471) (not b!5280819) (not b!5280902) (not b_lambda!203779) (not d!1699614) (not d!1699680) (not b!5281044) (not b!5280670) (not b!5280724) (not b!5281086) (not d!1699570) (not b!5281056) (not b!5280694) (not bm!376056) (not b!5280966) (not b!5280547) (not b_lambda!203763) (not b!5280969) (not bm!375999) (not bm!376011) (not b!5280541) (not b!5281133) (not b!5280705) (not bs!1224419) (not bm!376062) (not d!1699672) (not d!1699400) (not bm!376110) (not bm!376034) (not d!1699648) (not bm!376098))
(check-sat)
