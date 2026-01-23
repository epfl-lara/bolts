; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562358 () Bool)

(assert start!562358)

(declare-fun b!5337009 () Bool)

(assert (=> b!5337009 true))

(assert (=> b!5337009 true))

(declare-fun lambda!273244 () Int)

(declare-fun lambda!273243 () Int)

(assert (=> b!5337009 (not (= lambda!273244 lambda!273243))))

(assert (=> b!5337009 true))

(assert (=> b!5337009 true))

(declare-fun b!5337013 () Bool)

(assert (=> b!5337013 true))

(declare-fun bs!1237628 () Bool)

(declare-fun b!5337012 () Bool)

(assert (= bs!1237628 (and b!5337012 b!5337009)))

(declare-datatypes ((C!30292 0))(
  ( (C!30293 (val!24848 Int)) )
))
(declare-datatypes ((Regex!15011 0))(
  ( (ElementMatch!15011 (c!928425 C!30292)) (Concat!23856 (regOne!30534 Regex!15011) (regTwo!30534 Regex!15011)) (EmptyExpr!15011) (Star!15011 (reg!15340 Regex!15011)) (EmptyLang!15011) (Union!15011 (regOne!30535 Regex!15011) (regTwo!30535 Regex!15011)) )
))
(declare-fun r!7292 () Regex!15011)

(declare-fun lt!2176535 () Regex!15011)

(declare-fun lambda!273246 () Int)

(assert (=> bs!1237628 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176535 (regTwo!30534 r!7292))) (= lambda!273246 lambda!273243))))

(assert (=> bs!1237628 (not (= lambda!273246 lambda!273244))))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(declare-fun lambda!273247 () Int)

(assert (=> bs!1237628 (not (= lambda!273247 lambda!273243))))

(assert (=> bs!1237628 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176535 (regTwo!30534 r!7292))) (= lambda!273247 lambda!273244))))

(assert (=> b!5337012 (not (= lambda!273247 lambda!273246))))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(declare-fun lt!2176521 () Regex!15011)

(declare-fun lambda!273248 () Int)

(assert (=> bs!1237628 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176521 (regTwo!30534 r!7292))) (= lambda!273248 lambda!273243))))

(assert (=> bs!1237628 (not (= lambda!273248 lambda!273244))))

(assert (=> b!5337012 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273248 lambda!273246))))

(assert (=> b!5337012 (not (= lambda!273248 lambda!273247))))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(declare-fun lambda!273249 () Int)

(assert (=> bs!1237628 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176521 (regTwo!30534 r!7292))) (= lambda!273249 lambda!273244))))

(assert (=> b!5337012 (not (= lambda!273249 lambda!273248))))

(assert (=> b!5337012 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273249 lambda!273247))))

(assert (=> bs!1237628 (not (= lambda!273249 lambda!273243))))

(assert (=> b!5337012 (not (= lambda!273249 lambda!273246))))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(assert (=> b!5337012 true))

(declare-fun b!5336985 () Bool)

(declare-fun e!3314304 () Bool)

(declare-fun tp_is_empty!39275 () Bool)

(assert (=> b!5336985 (= e!3314304 tp_is_empty!39275)))

(declare-fun b!5336986 () Bool)

(declare-datatypes ((Unit!153562 0))(
  ( (Unit!153563) )
))
(declare-fun e!3314317 () Unit!153562)

(declare-fun Unit!153564 () Unit!153562)

(assert (=> b!5336986 (= e!3314317 Unit!153564)))

(declare-fun lt!2176548 () Unit!153562)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61332 0))(
  ( (Nil!61208) (Cons!61208 (h!67656 Regex!15011) (t!374549 List!61332)) )
))
(declare-datatypes ((Context!8790 0))(
  ( (Context!8791 (exprs!4895 List!61332)) )
))
(declare-fun lt!2176525 () (InoxSet Context!8790))

(declare-fun lt!2176516 () (InoxSet Context!8790))

(declare-datatypes ((List!61333 0))(
  ( (Nil!61209) (Cons!61209 (h!67657 C!30292) (t!374550 List!61333)) )
))
(declare-fun s!2326 () List!61333)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!248 ((InoxSet Context!8790) (InoxSet Context!8790) List!61333) Unit!153562)

(assert (=> b!5336986 (= lt!2176548 (lemmaZipperConcatMatchesSameAsBothZippers!248 lt!2176525 lt!2176516 (t!374550 s!2326)))))

(declare-fun res!2263905 () Bool)

(declare-fun matchZipper!1255 ((InoxSet Context!8790) List!61333) Bool)

(assert (=> b!5336986 (= res!2263905 (matchZipper!1255 lt!2176525 (t!374550 s!2326)))))

(declare-fun e!3314320 () Bool)

(assert (=> b!5336986 (=> res!2263905 e!3314320)))

(assert (=> b!5336986 (= (matchZipper!1255 ((_ map or) lt!2176525 lt!2176516) (t!374550 s!2326)) e!3314320)))

(declare-fun b!5336987 () Bool)

(declare-fun e!3314308 () Bool)

(declare-fun tp!1484514 () Bool)

(assert (=> b!5336987 (= e!3314308 (and tp_is_empty!39275 tp!1484514))))

(declare-fun b!5336988 () Bool)

(declare-fun res!2263907 () Bool)

(declare-fun e!3314313 () Bool)

(assert (=> b!5336988 (=> (not res!2263907) (not e!3314313))))

(declare-fun z!1189 () (InoxSet Context!8790))

(declare-datatypes ((List!61334 0))(
  ( (Nil!61210) (Cons!61210 (h!67658 Context!8790) (t!374551 List!61334)) )
))
(declare-fun zl!343 () List!61334)

(declare-fun toList!8795 ((InoxSet Context!8790)) List!61334)

(assert (=> b!5336988 (= res!2263907 (= (toList!8795 z!1189) zl!343))))

(declare-fun b!5336989 () Bool)

(declare-fun res!2263895 () Bool)

(declare-fun e!3314310 () Bool)

(assert (=> b!5336989 (=> res!2263895 e!3314310)))

(declare-fun isEmpty!33179 (List!61332) Bool)

(assert (=> b!5336989 (= res!2263895 (isEmpty!33179 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5336990 () Bool)

(declare-fun res!2263892 () Bool)

(declare-fun e!3314305 () Bool)

(assert (=> b!5336990 (=> res!2263892 e!3314305)))

(declare-fun generalisedUnion!940 (List!61332) Regex!15011)

(declare-fun unfocusZipperList!453 (List!61334) List!61332)

(assert (=> b!5336990 (= res!2263892 (not (= r!7292 (generalisedUnion!940 (unfocusZipperList!453 zl!343)))))))

(declare-fun b!5336991 () Bool)

(declare-fun e!3314309 () Bool)

(declare-fun e!3314319 () Bool)

(assert (=> b!5336991 (= e!3314309 e!3314319)))

(declare-fun res!2263908 () Bool)

(assert (=> b!5336991 (=> res!2263908 e!3314319)))

(declare-fun lt!2176536 () (InoxSet Context!8790))

(assert (=> b!5336991 (= res!2263908 (not (= lt!2176525 lt!2176536)))))

(declare-fun lt!2176514 () List!61332)

(declare-fun derivationStepZipperDown!459 (Regex!15011 Context!8790 C!30292) (InoxSet Context!8790))

(assert (=> b!5336991 (= lt!2176536 (derivationStepZipperDown!459 (regOne!30534 (regOne!30534 r!7292)) (Context!8791 lt!2176514) (h!67657 s!2326)))))

(assert (=> b!5336991 (= lt!2176514 (Cons!61208 (regTwo!30534 (regOne!30534 r!7292)) (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5336992 () Bool)

(declare-fun res!2263897 () Bool)

(assert (=> b!5336992 (=> res!2263897 e!3314305)))

(declare-fun generalisedConcat!680 (List!61332) Regex!15011)

(assert (=> b!5336992 (= res!2263897 (not (= r!7292 (generalisedConcat!680 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5336993 () Bool)

(assert (=> b!5336993 (= e!3314313 (not e!3314305))))

(declare-fun res!2263896 () Bool)

(assert (=> b!5336993 (=> res!2263896 e!3314305)))

(get-info :version)

(assert (=> b!5336993 (= res!2263896 (not ((_ is Cons!61210) zl!343)))))

(declare-fun lt!2176538 () Bool)

(declare-fun matchRSpec!2114 (Regex!15011 List!61333) Bool)

(assert (=> b!5336993 (= lt!2176538 (matchRSpec!2114 r!7292 s!2326))))

(declare-fun matchR!7196 (Regex!15011 List!61333) Bool)

(assert (=> b!5336993 (= lt!2176538 (matchR!7196 r!7292 s!2326))))

(declare-fun lt!2176532 () Unit!153562)

(declare-fun mainMatchTheorem!2114 (Regex!15011 List!61333) Unit!153562)

(assert (=> b!5336993 (= lt!2176532 (mainMatchTheorem!2114 r!7292 s!2326))))

(declare-fun b!5336994 () Bool)

(declare-fun res!2263900 () Bool)

(declare-fun e!3314311 () Bool)

(assert (=> b!5336994 (=> res!2263900 e!3314311)))

(assert (=> b!5336994 (= res!2263900 (not (= (exprs!4895 (h!67658 zl!343)) (Cons!61208 (Concat!23856 (regOne!30534 (regOne!30534 r!7292)) (regTwo!30534 (regOne!30534 r!7292))) (t!374549 (exprs!4895 (h!67658 zl!343)))))))))

(declare-fun b!5336995 () Bool)

(declare-fun tp!1484508 () Bool)

(assert (=> b!5336995 (= e!3314304 tp!1484508)))

(declare-fun b!5336996 () Bool)

(declare-fun res!2263898 () Bool)

(assert (=> b!5336996 (=> res!2263898 e!3314305)))

(assert (=> b!5336996 (= res!2263898 (or ((_ is EmptyExpr!15011) r!7292) ((_ is EmptyLang!15011) r!7292) ((_ is ElementMatch!15011) r!7292) ((_ is Union!15011) r!7292) (not ((_ is Concat!23856) r!7292))))))

(declare-fun b!5336997 () Bool)

(declare-fun e!3314316 () Bool)

(declare-fun tp!1484513 () Bool)

(assert (=> b!5336997 (= e!3314316 tp!1484513)))

(declare-fun b!5336998 () Bool)

(declare-fun e!3314307 () Bool)

(declare-fun tp!1484511 () Bool)

(assert (=> b!5336998 (= e!3314307 tp!1484511)))

(declare-fun b!5336999 () Bool)

(declare-fun Unit!153565 () Unit!153562)

(assert (=> b!5336999 (= e!3314317 Unit!153565)))

(declare-fun b!5337000 () Bool)

(declare-fun res!2263909 () Bool)

(assert (=> b!5337000 (=> res!2263909 e!3314305)))

(assert (=> b!5337000 (= res!2263909 (not ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337001 () Bool)

(declare-fun e!3314315 () Bool)

(assert (=> b!5337001 (= e!3314311 e!3314315)))

(declare-fun res!2263912 () Bool)

(assert (=> b!5337001 (=> res!2263912 e!3314315)))

(declare-fun lt!2176539 () List!61334)

(declare-fun zipperDepthTotal!164 (List!61334) Int)

(assert (=> b!5337001 (= res!2263912 (>= (zipperDepthTotal!164 lt!2176539) (zipperDepthTotal!164 zl!343)))))

(declare-fun lt!2176531 () Context!8790)

(assert (=> b!5337001 (= lt!2176539 (Cons!61210 lt!2176531 Nil!61210))))

(declare-fun b!5337002 () Bool)

(declare-fun res!2263910 () Bool)

(assert (=> b!5337002 (=> res!2263910 e!3314309)))

(assert (=> b!5337002 (= res!2263910 (not ((_ is Concat!23856) (regOne!30534 r!7292))))))

(declare-fun b!5337003 () Bool)

(declare-fun res!2263903 () Bool)

(assert (=> b!5337003 (=> res!2263903 e!3314305)))

(declare-fun isEmpty!33180 (List!61334) Bool)

(assert (=> b!5337003 (= res!2263903 (not (isEmpty!33180 (t!374551 zl!343))))))

(declare-fun res!2263894 () Bool)

(assert (=> start!562358 (=> (not res!2263894) (not e!3314313))))

(declare-fun validRegex!6747 (Regex!15011) Bool)

(assert (=> start!562358 (= res!2263894 (validRegex!6747 r!7292))))

(assert (=> start!562358 e!3314313))

(assert (=> start!562358 e!3314304))

(declare-fun condSetEmpty!34429 () Bool)

(assert (=> start!562358 (= condSetEmpty!34429 (= z!1189 ((as const (Array Context!8790 Bool)) false)))))

(declare-fun setRes!34429 () Bool)

(assert (=> start!562358 setRes!34429))

(declare-fun e!3314314 () Bool)

(assert (=> start!562358 e!3314314))

(assert (=> start!562358 e!3314308))

(declare-fun setIsEmpty!34429 () Bool)

(assert (=> setIsEmpty!34429 setRes!34429))

(declare-fun b!5337004 () Bool)

(declare-fun e!3314318 () Bool)

(assert (=> b!5337004 (= e!3314318 e!3314311)))

(declare-fun res!2263889 () Bool)

(assert (=> b!5337004 (=> res!2263889 e!3314311)))

(declare-fun lt!2176527 () (InoxSet Context!8790))

(assert (=> b!5337004 (= res!2263889 (not (= lt!2176527 lt!2176536)))))

(declare-fun lambda!273245 () Int)

(declare-fun lt!2176523 () (InoxSet Context!8790))

(declare-fun flatMap!738 ((InoxSet Context!8790) Int) (InoxSet Context!8790))

(declare-fun derivationStepZipperUp!383 (Context!8790 C!30292) (InoxSet Context!8790))

(assert (=> b!5337004 (= (flatMap!738 lt!2176523 lambda!273245) (derivationStepZipperUp!383 lt!2176531 (h!67657 s!2326)))))

(declare-fun lt!2176530 () Unit!153562)

(declare-fun lemmaFlatMapOnSingletonSet!270 ((InoxSet Context!8790) Context!8790 Int) Unit!153562)

(assert (=> b!5337004 (= lt!2176530 (lemmaFlatMapOnSingletonSet!270 lt!2176523 lt!2176531 lambda!273245))))

(declare-fun lt!2176547 () (InoxSet Context!8790))

(assert (=> b!5337004 (= lt!2176547 (derivationStepZipperUp!383 lt!2176531 (h!67657 s!2326)))))

(declare-fun derivationStepZipper!1252 ((InoxSet Context!8790) C!30292) (InoxSet Context!8790))

(assert (=> b!5337004 (= lt!2176527 (derivationStepZipper!1252 lt!2176523 (h!67657 s!2326)))))

(assert (=> b!5337004 (= lt!2176523 (store ((as const (Array Context!8790 Bool)) false) lt!2176531 true))))

(declare-fun lt!2176533 () List!61332)

(assert (=> b!5337004 (= lt!2176531 (Context!8791 lt!2176533))))

(assert (=> b!5337004 (= lt!2176533 (Cons!61208 (regOne!30534 (regOne!30534 r!7292)) lt!2176514))))

(declare-fun b!5337005 () Bool)

(declare-fun e!3314312 () Bool)

(assert (=> b!5337005 (= e!3314312 (validRegex!6747 (regOne!30534 r!7292)))))

(declare-fun b!5337006 () Bool)

(assert (=> b!5337006 (= e!3314320 (matchZipper!1255 lt!2176516 (t!374550 s!2326)))))

(declare-fun tp!1484509 () Bool)

(declare-fun setNonEmpty!34429 () Bool)

(declare-fun setElem!34429 () Context!8790)

(declare-fun inv!80774 (Context!8790) Bool)

(assert (=> setNonEmpty!34429 (= setRes!34429 (and tp!1484509 (inv!80774 setElem!34429) e!3314316))))

(declare-fun setRest!34429 () (InoxSet Context!8790))

(assert (=> setNonEmpty!34429 (= z!1189 ((_ map or) (store ((as const (Array Context!8790 Bool)) false) setElem!34429 true) setRest!34429))))

(declare-fun b!5337007 () Bool)

(declare-fun e!3314306 () Bool)

(declare-fun nullable!5180 (Regex!15011) Bool)

(assert (=> b!5337007 (= e!3314306 (nullable!5180 (regOne!30534 (regOne!30534 r!7292))))))

(declare-fun b!5337008 () Bool)

(declare-fun res!2263891 () Bool)

(assert (=> b!5337008 (=> res!2263891 e!3314311)))

(declare-fun lt!2176529 () Bool)

(assert (=> b!5337008 (= res!2263891 (not (= lt!2176529 (matchZipper!1255 lt!2176527 (t!374550 s!2326)))))))

(assert (=> b!5337009 (= e!3314305 e!3314310)))

(declare-fun res!2263902 () Bool)

(assert (=> b!5337009 (=> res!2263902 e!3314310)))

(declare-fun lt!2176540 () Bool)

(assert (=> b!5337009 (= res!2263902 (or (not (= lt!2176538 lt!2176540)) ((_ is Nil!61209) s!2326)))))

(declare-fun Exists!2192 (Int) Bool)

(assert (=> b!5337009 (= (Exists!2192 lambda!273243) (Exists!2192 lambda!273244))))

(declare-fun lt!2176517 () Unit!153562)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!846 (Regex!15011 Regex!15011 List!61333) Unit!153562)

(assert (=> b!5337009 (= lt!2176517 (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326))))

(assert (=> b!5337009 (= lt!2176540 (Exists!2192 lambda!273243))))

(declare-datatypes ((tuple2!64420 0))(
  ( (tuple2!64421 (_1!35513 List!61333) (_2!35513 List!61333)) )
))
(declare-datatypes ((Option!15122 0))(
  ( (None!15121) (Some!15121 (v!51150 tuple2!64420)) )
))
(declare-fun isDefined!11825 (Option!15122) Bool)

(declare-fun findConcatSeparation!1536 (Regex!15011 Regex!15011 List!61333 List!61333 List!61333) Option!15122)

(assert (=> b!5337009 (= lt!2176540 (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) Nil!61209 s!2326 s!2326)))))

(declare-fun lt!2176518 () Unit!153562)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1300 (Regex!15011 Regex!15011 List!61333) Unit!153562)

(assert (=> b!5337009 (= lt!2176518 (lemmaFindConcatSeparationEquivalentToExists!1300 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326))))

(declare-fun b!5337010 () Bool)

(declare-fun res!2263913 () Bool)

(assert (=> b!5337010 (=> res!2263913 e!3314315)))

(declare-fun zipperDepth!120 (List!61334) Int)

(assert (=> b!5337010 (= res!2263913 (> (zipperDepth!120 lt!2176539) (zipperDepth!120 zl!343)))))

(declare-fun b!5337011 () Bool)

(declare-fun res!2263899 () Bool)

(assert (=> b!5337011 (=> (not res!2263899) (not e!3314313))))

(declare-fun unfocusZipper!753 (List!61334) Regex!15011)

(assert (=> b!5337011 (= res!2263899 (= r!7292 (unfocusZipper!753 zl!343)))))

(assert (=> b!5337012 (= e!3314315 e!3314312)))

(declare-fun res!2263904 () Bool)

(assert (=> b!5337012 (=> res!2263904 e!3314312)))

(declare-fun lt!2176524 () Bool)

(declare-fun lt!2176537 () Bool)

(declare-fun lt!2176544 () Bool)

(assert (=> b!5337012 (= res!2263904 (or (not (= lt!2176524 lt!2176537)) (not (= lt!2176524 lt!2176544))))))

(assert (=> b!5337012 (= lt!2176524 (matchZipper!1255 z!1189 s!2326))))

(assert (=> b!5337012 (= (Exists!2192 lambda!273248) (Exists!2192 lambda!273249))))

(declare-fun lt!2176542 () Unit!153562)

(assert (=> b!5337012 (= lt!2176542 (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326))))

(assert (=> b!5337012 (= (isDefined!11825 (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 Nil!61209 s!2326 s!2326)) (Exists!2192 lambda!273248))))

(declare-fun lt!2176519 () Unit!153562)

(assert (=> b!5337012 (= lt!2176519 (lemmaFindConcatSeparationEquivalentToExists!1300 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326))))

(assert (=> b!5337012 (= lt!2176521 (generalisedConcat!680 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> b!5337012 (= (matchR!7196 lt!2176535 s!2326) (matchRSpec!2114 lt!2176535 s!2326))))

(declare-fun lt!2176546 () Unit!153562)

(assert (=> b!5337012 (= lt!2176546 (mainMatchTheorem!2114 lt!2176535 s!2326))))

(assert (=> b!5337012 (= (Exists!2192 lambda!273246) (Exists!2192 lambda!273247))))

(declare-fun lt!2176520 () Unit!153562)

(assert (=> b!5337012 (= lt!2176520 (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326))))

(assert (=> b!5337012 (= (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 Nil!61209 s!2326 s!2326)) (Exists!2192 lambda!273246))))

(declare-fun lt!2176528 () Unit!153562)

(assert (=> b!5337012 (= lt!2176528 (lemmaFindConcatSeparationEquivalentToExists!1300 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326))))

(assert (=> b!5337012 (= lt!2176535 (generalisedConcat!680 lt!2176514))))

(declare-fun lt!2176522 () Regex!15011)

(assert (=> b!5337012 (= lt!2176544 (matchRSpec!2114 lt!2176522 s!2326))))

(declare-fun lt!2176534 () Unit!153562)

(assert (=> b!5337012 (= lt!2176534 (mainMatchTheorem!2114 lt!2176522 s!2326))))

(assert (=> b!5337012 (= lt!2176544 lt!2176537)))

(assert (=> b!5337012 (= lt!2176537 (matchZipper!1255 lt!2176523 s!2326))))

(assert (=> b!5337012 (= lt!2176544 (matchR!7196 lt!2176522 s!2326))))

(declare-fun lt!2176515 () Unit!153562)

(declare-fun theoremZipperRegexEquiv!409 ((InoxSet Context!8790) List!61334 Regex!15011 List!61333) Unit!153562)

(assert (=> b!5337012 (= lt!2176515 (theoremZipperRegexEquiv!409 lt!2176523 lt!2176539 lt!2176522 s!2326))))

(assert (=> b!5337012 (= lt!2176522 (generalisedConcat!680 lt!2176533))))

(assert (=> b!5337013 (= e!3314310 e!3314309)))

(declare-fun res!2263911 () Bool)

(assert (=> b!5337013 (=> res!2263911 e!3314309)))

(assert (=> b!5337013 (= res!2263911 (or (and ((_ is ElementMatch!15011) (regOne!30534 r!7292)) (= (c!928425 (regOne!30534 r!7292)) (h!67657 s!2326))) ((_ is Union!15011) (regOne!30534 r!7292))))))

(declare-fun lt!2176526 () Unit!153562)

(assert (=> b!5337013 (= lt!2176526 e!3314317)))

(declare-fun c!928424 () Bool)

(assert (=> b!5337013 (= c!928424 (nullable!5180 (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> b!5337013 (= (flatMap!738 z!1189 lambda!273245) (derivationStepZipperUp!383 (h!67658 zl!343) (h!67657 s!2326)))))

(declare-fun lt!2176545 () Unit!153562)

(assert (=> b!5337013 (= lt!2176545 (lemmaFlatMapOnSingletonSet!270 z!1189 (h!67658 zl!343) lambda!273245))))

(declare-fun lt!2176541 () Context!8790)

(assert (=> b!5337013 (= lt!2176516 (derivationStepZipperUp!383 lt!2176541 (h!67657 s!2326)))))

(assert (=> b!5337013 (= lt!2176525 (derivationStepZipperDown!459 (h!67656 (exprs!4895 (h!67658 zl!343))) lt!2176541 (h!67657 s!2326)))))

(assert (=> b!5337013 (= lt!2176541 (Context!8791 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun lt!2176543 () (InoxSet Context!8790))

(assert (=> b!5337013 (= lt!2176543 (derivationStepZipperUp!383 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343))))) (h!67657 s!2326)))))

(declare-fun tp!1484515 () Bool)

(declare-fun b!5337014 () Bool)

(assert (=> b!5337014 (= e!3314314 (and (inv!80774 (h!67658 zl!343)) e!3314307 tp!1484515))))

(declare-fun b!5337015 () Bool)

(declare-fun tp!1484510 () Bool)

(declare-fun tp!1484516 () Bool)

(assert (=> b!5337015 (= e!3314304 (and tp!1484510 tp!1484516))))

(declare-fun b!5337016 () Bool)

(assert (=> b!5337016 (= e!3314319 e!3314318)))

(declare-fun res!2263906 () Bool)

(assert (=> b!5337016 (=> res!2263906 e!3314318)))

(assert (=> b!5337016 (= res!2263906 (not (= lt!2176529 (matchZipper!1255 lt!2176536 (t!374550 s!2326)))))))

(assert (=> b!5337016 (= lt!2176529 (matchZipper!1255 lt!2176525 (t!374550 s!2326)))))

(declare-fun b!5337017 () Bool)

(declare-fun res!2263890 () Bool)

(assert (=> b!5337017 (=> res!2263890 e!3314311)))

(declare-fun contextDepthTotal!144 (Context!8790) Int)

(assert (=> b!5337017 (= res!2263890 (>= (contextDepthTotal!144 lt!2176531) (contextDepthTotal!144 (h!67658 zl!343))))))

(declare-fun b!5337018 () Bool)

(declare-fun tp!1484517 () Bool)

(declare-fun tp!1484512 () Bool)

(assert (=> b!5337018 (= e!3314304 (and tp!1484517 tp!1484512))))

(declare-fun b!5337019 () Bool)

(declare-fun res!2263901 () Bool)

(assert (=> b!5337019 (=> res!2263901 e!3314309)))

(assert (=> b!5337019 (= res!2263901 e!3314306)))

(declare-fun res!2263893 () Bool)

(assert (=> b!5337019 (=> (not res!2263893) (not e!3314306))))

(assert (=> b!5337019 (= res!2263893 ((_ is Concat!23856) (regOne!30534 r!7292)))))

(assert (= (and start!562358 res!2263894) b!5336988))

(assert (= (and b!5336988 res!2263907) b!5337011))

(assert (= (and b!5337011 res!2263899) b!5336993))

(assert (= (and b!5336993 (not res!2263896)) b!5337003))

(assert (= (and b!5337003 (not res!2263903)) b!5336992))

(assert (= (and b!5336992 (not res!2263897)) b!5337000))

(assert (= (and b!5337000 (not res!2263909)) b!5336990))

(assert (= (and b!5336990 (not res!2263892)) b!5336996))

(assert (= (and b!5336996 (not res!2263898)) b!5337009))

(assert (= (and b!5337009 (not res!2263902)) b!5336989))

(assert (= (and b!5336989 (not res!2263895)) b!5337013))

(assert (= (and b!5337013 c!928424) b!5336986))

(assert (= (and b!5337013 (not c!928424)) b!5336999))

(assert (= (and b!5336986 (not res!2263905)) b!5337006))

(assert (= (and b!5337013 (not res!2263911)) b!5337019))

(assert (= (and b!5337019 res!2263893) b!5337007))

(assert (= (and b!5337019 (not res!2263901)) b!5337002))

(assert (= (and b!5337002 (not res!2263910)) b!5336991))

(assert (= (and b!5336991 (not res!2263908)) b!5337016))

(assert (= (and b!5337016 (not res!2263906)) b!5337004))

(assert (= (and b!5337004 (not res!2263889)) b!5337008))

(assert (= (and b!5337008 (not res!2263891)) b!5336994))

(assert (= (and b!5336994 (not res!2263900)) b!5337017))

(assert (= (and b!5337017 (not res!2263890)) b!5337001))

(assert (= (and b!5337001 (not res!2263912)) b!5337010))

(assert (= (and b!5337010 (not res!2263913)) b!5337012))

(assert (= (and b!5337012 (not res!2263904)) b!5337005))

(assert (= (and start!562358 ((_ is ElementMatch!15011) r!7292)) b!5336985))

(assert (= (and start!562358 ((_ is Concat!23856) r!7292)) b!5337018))

(assert (= (and start!562358 ((_ is Star!15011) r!7292)) b!5336995))

(assert (= (and start!562358 ((_ is Union!15011) r!7292)) b!5337015))

(assert (= (and start!562358 condSetEmpty!34429) setIsEmpty!34429))

(assert (= (and start!562358 (not condSetEmpty!34429)) setNonEmpty!34429))

(assert (= setNonEmpty!34429 b!5336997))

(assert (= b!5337014 b!5336998))

(assert (= (and start!562358 ((_ is Cons!61210) zl!343)) b!5337014))

(assert (= (and start!562358 ((_ is Cons!61209) s!2326)) b!5336987))

(declare-fun m!6369740 () Bool)

(assert (=> b!5337001 m!6369740))

(declare-fun m!6369742 () Bool)

(assert (=> b!5337001 m!6369742))

(declare-fun m!6369744 () Bool)

(assert (=> b!5337016 m!6369744))

(declare-fun m!6369746 () Bool)

(assert (=> b!5337016 m!6369746))

(declare-fun m!6369748 () Bool)

(assert (=> b!5337017 m!6369748))

(declare-fun m!6369750 () Bool)

(assert (=> b!5337017 m!6369750))

(declare-fun m!6369752 () Bool)

(assert (=> setNonEmpty!34429 m!6369752))

(declare-fun m!6369754 () Bool)

(assert (=> b!5336988 m!6369754))

(declare-fun m!6369756 () Bool)

(assert (=> b!5337007 m!6369756))

(declare-fun m!6369758 () Bool)

(assert (=> b!5337010 m!6369758))

(declare-fun m!6369760 () Bool)

(assert (=> b!5337010 m!6369760))

(declare-fun m!6369762 () Bool)

(assert (=> b!5337009 m!6369762))

(declare-fun m!6369764 () Bool)

(assert (=> b!5337009 m!6369764))

(declare-fun m!6369766 () Bool)

(assert (=> b!5337009 m!6369766))

(declare-fun m!6369768 () Bool)

(assert (=> b!5337009 m!6369768))

(declare-fun m!6369770 () Bool)

(assert (=> b!5337009 m!6369770))

(assert (=> b!5337009 m!6369762))

(declare-fun m!6369772 () Bool)

(assert (=> b!5337009 m!6369772))

(assert (=> b!5337009 m!6369770))

(declare-fun m!6369774 () Bool)

(assert (=> b!5336986 m!6369774))

(assert (=> b!5336986 m!6369746))

(declare-fun m!6369776 () Bool)

(assert (=> b!5336986 m!6369776))

(declare-fun m!6369778 () Bool)

(assert (=> b!5337014 m!6369778))

(declare-fun m!6369780 () Bool)

(assert (=> b!5336990 m!6369780))

(assert (=> b!5336990 m!6369780))

(declare-fun m!6369782 () Bool)

(assert (=> b!5336990 m!6369782))

(declare-fun m!6369784 () Bool)

(assert (=> b!5337011 m!6369784))

(declare-fun m!6369786 () Bool)

(assert (=> b!5336991 m!6369786))

(declare-fun m!6369788 () Bool)

(assert (=> b!5336992 m!6369788))

(declare-fun m!6369790 () Bool)

(assert (=> b!5337004 m!6369790))

(declare-fun m!6369792 () Bool)

(assert (=> b!5337004 m!6369792))

(declare-fun m!6369794 () Bool)

(assert (=> b!5337004 m!6369794))

(declare-fun m!6369796 () Bool)

(assert (=> b!5337004 m!6369796))

(declare-fun m!6369798 () Bool)

(assert (=> b!5337004 m!6369798))

(declare-fun m!6369800 () Bool)

(assert (=> b!5337012 m!6369800))

(declare-fun m!6369802 () Bool)

(assert (=> b!5337012 m!6369802))

(declare-fun m!6369804 () Bool)

(assert (=> b!5337012 m!6369804))

(declare-fun m!6369806 () Bool)

(assert (=> b!5337012 m!6369806))

(declare-fun m!6369808 () Bool)

(assert (=> b!5337012 m!6369808))

(declare-fun m!6369810 () Bool)

(assert (=> b!5337012 m!6369810))

(declare-fun m!6369812 () Bool)

(assert (=> b!5337012 m!6369812))

(assert (=> b!5337012 m!6369800))

(declare-fun m!6369814 () Bool)

(assert (=> b!5337012 m!6369814))

(declare-fun m!6369816 () Bool)

(assert (=> b!5337012 m!6369816))

(declare-fun m!6369818 () Bool)

(assert (=> b!5337012 m!6369818))

(declare-fun m!6369820 () Bool)

(assert (=> b!5337012 m!6369820))

(declare-fun m!6369822 () Bool)

(assert (=> b!5337012 m!6369822))

(declare-fun m!6369824 () Bool)

(assert (=> b!5337012 m!6369824))

(declare-fun m!6369826 () Bool)

(assert (=> b!5337012 m!6369826))

(declare-fun m!6369828 () Bool)

(assert (=> b!5337012 m!6369828))

(declare-fun m!6369830 () Bool)

(assert (=> b!5337012 m!6369830))

(declare-fun m!6369832 () Bool)

(assert (=> b!5337012 m!6369832))

(declare-fun m!6369834 () Bool)

(assert (=> b!5337012 m!6369834))

(assert (=> b!5337012 m!6369810))

(declare-fun m!6369836 () Bool)

(assert (=> b!5337012 m!6369836))

(declare-fun m!6369838 () Bool)

(assert (=> b!5337012 m!6369838))

(declare-fun m!6369840 () Bool)

(assert (=> b!5337012 m!6369840))

(declare-fun m!6369842 () Bool)

(assert (=> b!5337012 m!6369842))

(declare-fun m!6369844 () Bool)

(assert (=> b!5337012 m!6369844))

(assert (=> b!5337012 m!6369830))

(declare-fun m!6369846 () Bool)

(assert (=> b!5337012 m!6369846))

(assert (=> b!5337012 m!6369816))

(declare-fun m!6369848 () Bool)

(assert (=> b!5337006 m!6369848))

(declare-fun m!6369850 () Bool)

(assert (=> b!5336989 m!6369850))

(declare-fun m!6369852 () Bool)

(assert (=> b!5337013 m!6369852))

(declare-fun m!6369854 () Bool)

(assert (=> b!5337013 m!6369854))

(declare-fun m!6369856 () Bool)

(assert (=> b!5337013 m!6369856))

(declare-fun m!6369858 () Bool)

(assert (=> b!5337013 m!6369858))

(declare-fun m!6369860 () Bool)

(assert (=> b!5337013 m!6369860))

(declare-fun m!6369862 () Bool)

(assert (=> b!5337013 m!6369862))

(declare-fun m!6369864 () Bool)

(assert (=> b!5337013 m!6369864))

(declare-fun m!6369866 () Bool)

(assert (=> b!5337003 m!6369866))

(declare-fun m!6369868 () Bool)

(assert (=> b!5336993 m!6369868))

(declare-fun m!6369870 () Bool)

(assert (=> b!5336993 m!6369870))

(declare-fun m!6369872 () Bool)

(assert (=> b!5336993 m!6369872))

(declare-fun m!6369874 () Bool)

(assert (=> b!5337005 m!6369874))

(declare-fun m!6369876 () Bool)

(assert (=> start!562358 m!6369876))

(declare-fun m!6369878 () Bool)

(assert (=> b!5337008 m!6369878))

(check-sat (not b!5337011) (not b!5336992) (not b!5336987) (not b!5337013) (not b!5337018) (not b!5337015) (not b!5337014) (not setNonEmpty!34429) (not b!5337016) tp_is_empty!39275 (not b!5336993) (not b!5337010) (not b!5337006) (not b!5336990) (not b!5336986) (not b!5337004) (not b!5337008) (not b!5337012) (not b!5337003) (not b!5336998) (not b!5337001) (not b!5337009) (not b!5337005) (not b!5336988) (not b!5336995) (not b!5336997) (not b!5336991) (not b!5336989) (not b!5337017) (not start!562358) (not b!5337007))
(check-sat)
(get-model)

(declare-fun d!1713045 () Bool)

(declare-fun lt!2176554 () Int)

(assert (=> d!1713045 (>= lt!2176554 0)))

(declare-fun e!3314344 () Int)

(assert (=> d!1713045 (= lt!2176554 e!3314344)))

(declare-fun c!928443 () Bool)

(assert (=> d!1713045 (= c!928443 ((_ is Cons!61210) lt!2176539))))

(assert (=> d!1713045 (= (zipperDepthTotal!164 lt!2176539) lt!2176554)))

(declare-fun b!5337066 () Bool)

(assert (=> b!5337066 (= e!3314344 (+ (contextDepthTotal!144 (h!67658 lt!2176539)) (zipperDepthTotal!164 (t!374551 lt!2176539))))))

(declare-fun b!5337067 () Bool)

(assert (=> b!5337067 (= e!3314344 0)))

(assert (= (and d!1713045 c!928443) b!5337066))

(assert (= (and d!1713045 (not c!928443)) b!5337067))

(declare-fun m!6369914 () Bool)

(assert (=> b!5337066 m!6369914))

(declare-fun m!6369916 () Bool)

(assert (=> b!5337066 m!6369916))

(assert (=> b!5337001 d!1713045))

(declare-fun d!1713053 () Bool)

(declare-fun lt!2176555 () Int)

(assert (=> d!1713053 (>= lt!2176555 0)))

(declare-fun e!3314345 () Int)

(assert (=> d!1713053 (= lt!2176555 e!3314345)))

(declare-fun c!928444 () Bool)

(assert (=> d!1713053 (= c!928444 ((_ is Cons!61210) zl!343))))

(assert (=> d!1713053 (= (zipperDepthTotal!164 zl!343) lt!2176555)))

(declare-fun b!5337068 () Bool)

(assert (=> b!5337068 (= e!3314345 (+ (contextDepthTotal!144 (h!67658 zl!343)) (zipperDepthTotal!164 (t!374551 zl!343))))))

(declare-fun b!5337069 () Bool)

(assert (=> b!5337069 (= e!3314345 0)))

(assert (= (and d!1713053 c!928444) b!5337068))

(assert (= (and d!1713053 (not c!928444)) b!5337069))

(assert (=> b!5337068 m!6369750))

(declare-fun m!6369918 () Bool)

(assert (=> b!5337068 m!6369918))

(assert (=> b!5337001 d!1713053))

(declare-fun d!1713055 () Bool)

(declare-fun lambda!273255 () Int)

(declare-fun forall!14431 (List!61332 Int) Bool)

(assert (=> d!1713055 (= (inv!80774 setElem!34429) (forall!14431 (exprs!4895 setElem!34429) lambda!273255))))

(declare-fun bs!1237631 () Bool)

(assert (= bs!1237631 d!1713055))

(declare-fun m!6369920 () Bool)

(assert (=> bs!1237631 m!6369920))

(assert (=> setNonEmpty!34429 d!1713055))

(declare-fun d!1713057 () Bool)

(declare-fun e!3314366 () Bool)

(assert (=> d!1713057 (= (matchZipper!1255 ((_ map or) lt!2176525 lt!2176516) (t!374550 s!2326)) e!3314366)))

(declare-fun res!2263938 () Bool)

(assert (=> d!1713057 (=> res!2263938 e!3314366)))

(assert (=> d!1713057 (= res!2263938 (matchZipper!1255 lt!2176525 (t!374550 s!2326)))))

(declare-fun lt!2176558 () Unit!153562)

(declare-fun choose!39986 ((InoxSet Context!8790) (InoxSet Context!8790) List!61333) Unit!153562)

(assert (=> d!1713057 (= lt!2176558 (choose!39986 lt!2176525 lt!2176516 (t!374550 s!2326)))))

(assert (=> d!1713057 (= (lemmaZipperConcatMatchesSameAsBothZippers!248 lt!2176525 lt!2176516 (t!374550 s!2326)) lt!2176558)))

(declare-fun b!5337104 () Bool)

(assert (=> b!5337104 (= e!3314366 (matchZipper!1255 lt!2176516 (t!374550 s!2326)))))

(assert (= (and d!1713057 (not res!2263938)) b!5337104))

(assert (=> d!1713057 m!6369776))

(assert (=> d!1713057 m!6369746))

(declare-fun m!6369922 () Bool)

(assert (=> d!1713057 m!6369922))

(assert (=> b!5337104 m!6369848))

(assert (=> b!5336986 d!1713057))

(declare-fun d!1713059 () Bool)

(declare-fun c!928463 () Bool)

(declare-fun isEmpty!33183 (List!61333) Bool)

(assert (=> d!1713059 (= c!928463 (isEmpty!33183 (t!374550 s!2326)))))

(declare-fun e!3314382 () Bool)

(assert (=> d!1713059 (= (matchZipper!1255 lt!2176525 (t!374550 s!2326)) e!3314382)))

(declare-fun b!5337130 () Bool)

(declare-fun nullableZipper!1362 ((InoxSet Context!8790)) Bool)

(assert (=> b!5337130 (= e!3314382 (nullableZipper!1362 lt!2176525))))

(declare-fun b!5337131 () Bool)

(declare-fun head!11442 (List!61333) C!30292)

(declare-fun tail!10539 (List!61333) List!61333)

(assert (=> b!5337131 (= e!3314382 (matchZipper!1255 (derivationStepZipper!1252 lt!2176525 (head!11442 (t!374550 s!2326))) (tail!10539 (t!374550 s!2326))))))

(assert (= (and d!1713059 c!928463) b!5337130))

(assert (= (and d!1713059 (not c!928463)) b!5337131))

(declare-fun m!6369950 () Bool)

(assert (=> d!1713059 m!6369950))

(declare-fun m!6369952 () Bool)

(assert (=> b!5337130 m!6369952))

(declare-fun m!6369954 () Bool)

(assert (=> b!5337131 m!6369954))

(assert (=> b!5337131 m!6369954))

(declare-fun m!6369956 () Bool)

(assert (=> b!5337131 m!6369956))

(declare-fun m!6369960 () Bool)

(assert (=> b!5337131 m!6369960))

(assert (=> b!5337131 m!6369956))

(assert (=> b!5337131 m!6369960))

(declare-fun m!6369962 () Bool)

(assert (=> b!5337131 m!6369962))

(assert (=> b!5336986 d!1713059))

(declare-fun d!1713067 () Bool)

(declare-fun c!928464 () Bool)

(assert (=> d!1713067 (= c!928464 (isEmpty!33183 (t!374550 s!2326)))))

(declare-fun e!3314383 () Bool)

(assert (=> d!1713067 (= (matchZipper!1255 ((_ map or) lt!2176525 lt!2176516) (t!374550 s!2326)) e!3314383)))

(declare-fun b!5337132 () Bool)

(assert (=> b!5337132 (= e!3314383 (nullableZipper!1362 ((_ map or) lt!2176525 lt!2176516)))))

(declare-fun b!5337133 () Bool)

(assert (=> b!5337133 (= e!3314383 (matchZipper!1255 (derivationStepZipper!1252 ((_ map or) lt!2176525 lt!2176516) (head!11442 (t!374550 s!2326))) (tail!10539 (t!374550 s!2326))))))

(assert (= (and d!1713067 c!928464) b!5337132))

(assert (= (and d!1713067 (not c!928464)) b!5337133))

(assert (=> d!1713067 m!6369950))

(declare-fun m!6369964 () Bool)

(assert (=> b!5337132 m!6369964))

(assert (=> b!5337133 m!6369954))

(assert (=> b!5337133 m!6369954))

(declare-fun m!6369966 () Bool)

(assert (=> b!5337133 m!6369966))

(assert (=> b!5337133 m!6369960))

(assert (=> b!5337133 m!6369966))

(assert (=> b!5337133 m!6369960))

(declare-fun m!6369968 () Bool)

(assert (=> b!5337133 m!6369968))

(assert (=> b!5336986 d!1713067))

(declare-fun d!1713069 () Bool)

(declare-fun c!928465 () Bool)

(assert (=> d!1713069 (= c!928465 (isEmpty!33183 (t!374550 s!2326)))))

(declare-fun e!3314384 () Bool)

(assert (=> d!1713069 (= (matchZipper!1255 lt!2176516 (t!374550 s!2326)) e!3314384)))

(declare-fun b!5337134 () Bool)

(assert (=> b!5337134 (= e!3314384 (nullableZipper!1362 lt!2176516))))

(declare-fun b!5337135 () Bool)

(assert (=> b!5337135 (= e!3314384 (matchZipper!1255 (derivationStepZipper!1252 lt!2176516 (head!11442 (t!374550 s!2326))) (tail!10539 (t!374550 s!2326))))))

(assert (= (and d!1713069 c!928465) b!5337134))

(assert (= (and d!1713069 (not c!928465)) b!5337135))

(assert (=> d!1713069 m!6369950))

(declare-fun m!6369970 () Bool)

(assert (=> b!5337134 m!6369970))

(assert (=> b!5337135 m!6369954))

(assert (=> b!5337135 m!6369954))

(declare-fun m!6369972 () Bool)

(assert (=> b!5337135 m!6369972))

(assert (=> b!5337135 m!6369960))

(assert (=> b!5337135 m!6369972))

(assert (=> b!5337135 m!6369960))

(declare-fun m!6369974 () Bool)

(assert (=> b!5337135 m!6369974))

(assert (=> b!5337006 d!1713069))

(declare-fun b!5337162 () Bool)

(declare-fun e!3314406 () Bool)

(declare-fun e!3314407 () Bool)

(assert (=> b!5337162 (= e!3314406 e!3314407)))

(declare-fun res!2263965 () Bool)

(assert (=> b!5337162 (=> (not res!2263965) (not e!3314407))))

(declare-fun call!381473 () Bool)

(assert (=> b!5337162 (= res!2263965 call!381473)))

(declare-fun b!5337163 () Bool)

(declare-fun e!3314409 () Bool)

(declare-fun e!3314404 () Bool)

(assert (=> b!5337163 (= e!3314409 e!3314404)))

(declare-fun c!928470 () Bool)

(assert (=> b!5337163 (= c!928470 ((_ is Union!15011) (regOne!30534 r!7292)))))

(declare-fun b!5337164 () Bool)

(declare-fun res!2263964 () Bool)

(assert (=> b!5337164 (=> res!2263964 e!3314406)))

(assert (=> b!5337164 (= res!2263964 (not ((_ is Concat!23856) (regOne!30534 r!7292))))))

(assert (=> b!5337164 (= e!3314404 e!3314406)))

(declare-fun b!5337165 () Bool)

(declare-fun e!3314405 () Bool)

(assert (=> b!5337165 (= e!3314405 e!3314409)))

(declare-fun c!928471 () Bool)

(assert (=> b!5337165 (= c!928471 ((_ is Star!15011) (regOne!30534 r!7292)))))

(declare-fun d!1713071 () Bool)

(declare-fun res!2263962 () Bool)

(assert (=> d!1713071 (=> res!2263962 e!3314405)))

(assert (=> d!1713071 (= res!2263962 ((_ is ElementMatch!15011) (regOne!30534 r!7292)))))

(assert (=> d!1713071 (= (validRegex!6747 (regOne!30534 r!7292)) e!3314405)))

(declare-fun call!381475 () Bool)

(declare-fun bm!381468 () Bool)

(assert (=> bm!381468 (= call!381475 (validRegex!6747 (ite c!928471 (reg!15340 (regOne!30534 r!7292)) (ite c!928470 (regOne!30535 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))))))))

(declare-fun b!5337166 () Bool)

(declare-fun e!3314408 () Bool)

(assert (=> b!5337166 (= e!3314409 e!3314408)))

(declare-fun res!2263966 () Bool)

(assert (=> b!5337166 (= res!2263966 (not (nullable!5180 (reg!15340 (regOne!30534 r!7292)))))))

(assert (=> b!5337166 (=> (not res!2263966) (not e!3314408))))

(declare-fun b!5337167 () Bool)

(assert (=> b!5337167 (= e!3314408 call!381475)))

(declare-fun b!5337168 () Bool)

(declare-fun e!3314403 () Bool)

(declare-fun call!381474 () Bool)

(assert (=> b!5337168 (= e!3314403 call!381474)))

(declare-fun b!5337169 () Bool)

(declare-fun res!2263963 () Bool)

(assert (=> b!5337169 (=> (not res!2263963) (not e!3314403))))

(assert (=> b!5337169 (= res!2263963 call!381473)))

(assert (=> b!5337169 (= e!3314404 e!3314403)))

(declare-fun bm!381469 () Bool)

(assert (=> bm!381469 (= call!381474 (validRegex!6747 (ite c!928470 (regTwo!30535 (regOne!30534 r!7292)) (regTwo!30534 (regOne!30534 r!7292)))))))

(declare-fun b!5337170 () Bool)

(assert (=> b!5337170 (= e!3314407 call!381474)))

(declare-fun bm!381470 () Bool)

(assert (=> bm!381470 (= call!381473 call!381475)))

(assert (= (and d!1713071 (not res!2263962)) b!5337165))

(assert (= (and b!5337165 c!928471) b!5337166))

(assert (= (and b!5337165 (not c!928471)) b!5337163))

(assert (= (and b!5337166 res!2263966) b!5337167))

(assert (= (and b!5337163 c!928470) b!5337169))

(assert (= (and b!5337163 (not c!928470)) b!5337164))

(assert (= (and b!5337169 res!2263963) b!5337168))

(assert (= (and b!5337164 (not res!2263964)) b!5337162))

(assert (= (and b!5337162 res!2263965) b!5337170))

(assert (= (or b!5337168 b!5337170) bm!381469))

(assert (= (or b!5337169 b!5337162) bm!381470))

(assert (= (or b!5337167 bm!381470) bm!381468))

(declare-fun m!6369976 () Bool)

(assert (=> bm!381468 m!6369976))

(declare-fun m!6369978 () Bool)

(assert (=> b!5337166 m!6369978))

(declare-fun m!6369980 () Bool)

(assert (=> bm!381469 m!6369980))

(assert (=> b!5337005 d!1713071))

(declare-fun d!1713073 () Bool)

(declare-fun choose!39987 ((InoxSet Context!8790) Int) (InoxSet Context!8790))

(assert (=> d!1713073 (= (flatMap!738 lt!2176523 lambda!273245) (choose!39987 lt!2176523 lambda!273245))))

(declare-fun bs!1237644 () Bool)

(assert (= bs!1237644 d!1713073))

(declare-fun m!6369990 () Bool)

(assert (=> bs!1237644 m!6369990))

(assert (=> b!5337004 d!1713073))

(declare-fun b!5337209 () Bool)

(declare-fun e!3314431 () (InoxSet Context!8790))

(assert (=> b!5337209 (= e!3314431 ((as const (Array Context!8790 Bool)) false))))

(declare-fun e!3314430 () (InoxSet Context!8790))

(declare-fun call!381480 () (InoxSet Context!8790))

(declare-fun b!5337210 () Bool)

(assert (=> b!5337210 (= e!3314430 ((_ map or) call!381480 (derivationStepZipperUp!383 (Context!8791 (t!374549 (exprs!4895 lt!2176531))) (h!67657 s!2326))))))

(declare-fun bm!381475 () Bool)

(assert (=> bm!381475 (= call!381480 (derivationStepZipperDown!459 (h!67656 (exprs!4895 lt!2176531)) (Context!8791 (t!374549 (exprs!4895 lt!2176531))) (h!67657 s!2326)))))

(declare-fun b!5337211 () Bool)

(declare-fun e!3314432 () Bool)

(assert (=> b!5337211 (= e!3314432 (nullable!5180 (h!67656 (exprs!4895 lt!2176531))))))

(declare-fun b!5337212 () Bool)

(assert (=> b!5337212 (= e!3314431 call!381480)))

(declare-fun b!5337213 () Bool)

(assert (=> b!5337213 (= e!3314430 e!3314431)))

(declare-fun c!928483 () Bool)

(assert (=> b!5337213 (= c!928483 ((_ is Cons!61208) (exprs!4895 lt!2176531)))))

(declare-fun d!1713077 () Bool)

(declare-fun c!928482 () Bool)

(assert (=> d!1713077 (= c!928482 e!3314432)))

(declare-fun res!2263985 () Bool)

(assert (=> d!1713077 (=> (not res!2263985) (not e!3314432))))

(assert (=> d!1713077 (= res!2263985 ((_ is Cons!61208) (exprs!4895 lt!2176531)))))

(assert (=> d!1713077 (= (derivationStepZipperUp!383 lt!2176531 (h!67657 s!2326)) e!3314430)))

(assert (= (and d!1713077 res!2263985) b!5337211))

(assert (= (and d!1713077 c!928482) b!5337210))

(assert (= (and d!1713077 (not c!928482)) b!5337213))

(assert (= (and b!5337213 c!928483) b!5337212))

(assert (= (and b!5337213 (not c!928483)) b!5337209))

(assert (= (or b!5337210 b!5337212) bm!381475))

(declare-fun m!6369992 () Bool)

(assert (=> b!5337210 m!6369992))

(declare-fun m!6369994 () Bool)

(assert (=> bm!381475 m!6369994))

(declare-fun m!6369996 () Bool)

(assert (=> b!5337211 m!6369996))

(assert (=> b!5337004 d!1713077))

(declare-fun d!1713079 () Bool)

(declare-fun dynLambda!24204 (Int Context!8790) (InoxSet Context!8790))

(assert (=> d!1713079 (= (flatMap!738 lt!2176523 lambda!273245) (dynLambda!24204 lambda!273245 lt!2176531))))

(declare-fun lt!2176569 () Unit!153562)

(declare-fun choose!39989 ((InoxSet Context!8790) Context!8790 Int) Unit!153562)

(assert (=> d!1713079 (= lt!2176569 (choose!39989 lt!2176523 lt!2176531 lambda!273245))))

(assert (=> d!1713079 (= lt!2176523 (store ((as const (Array Context!8790 Bool)) false) lt!2176531 true))))

(assert (=> d!1713079 (= (lemmaFlatMapOnSingletonSet!270 lt!2176523 lt!2176531 lambda!273245) lt!2176569)))

(declare-fun b_lambda!205157 () Bool)

(assert (=> (not b_lambda!205157) (not d!1713079)))

(declare-fun bs!1237648 () Bool)

(assert (= bs!1237648 d!1713079))

(assert (=> bs!1237648 m!6369790))

(declare-fun m!6370008 () Bool)

(assert (=> bs!1237648 m!6370008))

(declare-fun m!6370010 () Bool)

(assert (=> bs!1237648 m!6370010))

(assert (=> bs!1237648 m!6369798))

(assert (=> b!5337004 d!1713079))

(declare-fun bs!1237652 () Bool)

(declare-fun d!1713083 () Bool)

(assert (= bs!1237652 (and d!1713083 b!5337013)))

(declare-fun lambda!273273 () Int)

(assert (=> bs!1237652 (= lambda!273273 lambda!273245)))

(assert (=> d!1713083 true))

(assert (=> d!1713083 (= (derivationStepZipper!1252 lt!2176523 (h!67657 s!2326)) (flatMap!738 lt!2176523 lambda!273273))))

(declare-fun bs!1237653 () Bool)

(assert (= bs!1237653 d!1713083))

(declare-fun m!6370020 () Bool)

(assert (=> bs!1237653 m!6370020))

(assert (=> b!5337004 d!1713083))

(declare-fun d!1713087 () Bool)

(assert (=> d!1713087 (= (isEmpty!33180 (t!374551 zl!343)) ((_ is Nil!61210) (t!374551 zl!343)))))

(assert (=> b!5337003 d!1713087))

(declare-fun bs!1237655 () Bool)

(declare-fun d!1713089 () Bool)

(assert (= bs!1237655 (and d!1713089 d!1713055)))

(declare-fun lambda!273276 () Int)

(assert (=> bs!1237655 (= lambda!273276 lambda!273255)))

(declare-fun e!3314459 () Bool)

(assert (=> d!1713089 e!3314459))

(declare-fun res!2264000 () Bool)

(assert (=> d!1713089 (=> (not res!2264000) (not e!3314459))))

(declare-fun lt!2176581 () Regex!15011)

(assert (=> d!1713089 (= res!2264000 (validRegex!6747 lt!2176581))))

(declare-fun e!3314463 () Regex!15011)

(assert (=> d!1713089 (= lt!2176581 e!3314463)))

(declare-fun c!928501 () Bool)

(declare-fun e!3314461 () Bool)

(assert (=> d!1713089 (= c!928501 e!3314461)))

(declare-fun res!2264001 () Bool)

(assert (=> d!1713089 (=> (not res!2264001) (not e!3314461))))

(assert (=> d!1713089 (= res!2264001 ((_ is Cons!61208) lt!2176514))))

(assert (=> d!1713089 (forall!14431 lt!2176514 lambda!273276)))

(assert (=> d!1713089 (= (generalisedConcat!680 lt!2176514) lt!2176581)))

(declare-fun b!5337260 () Bool)

(declare-fun e!3314458 () Bool)

(declare-fun head!11443 (List!61332) Regex!15011)

(assert (=> b!5337260 (= e!3314458 (= lt!2176581 (head!11443 lt!2176514)))))

(declare-fun b!5337261 () Bool)

(declare-fun e!3314462 () Bool)

(assert (=> b!5337261 (= e!3314462 e!3314458)))

(declare-fun c!928504 () Bool)

(declare-fun tail!10540 (List!61332) List!61332)

(assert (=> b!5337261 (= c!928504 (isEmpty!33179 (tail!10540 lt!2176514)))))

(declare-fun b!5337262 () Bool)

(declare-fun isEmptyExpr!897 (Regex!15011) Bool)

(assert (=> b!5337262 (= e!3314462 (isEmptyExpr!897 lt!2176581))))

(declare-fun b!5337263 () Bool)

(declare-fun e!3314460 () Regex!15011)

(assert (=> b!5337263 (= e!3314460 (Concat!23856 (h!67656 lt!2176514) (generalisedConcat!680 (t!374549 lt!2176514))))))

(declare-fun b!5337264 () Bool)

(assert (=> b!5337264 (= e!3314460 EmptyExpr!15011)))

(declare-fun b!5337265 () Bool)

(declare-fun isConcat!420 (Regex!15011) Bool)

(assert (=> b!5337265 (= e!3314458 (isConcat!420 lt!2176581))))

(declare-fun b!5337266 () Bool)

(assert (=> b!5337266 (= e!3314463 e!3314460)))

(declare-fun c!928502 () Bool)

(assert (=> b!5337266 (= c!928502 ((_ is Cons!61208) lt!2176514))))

(declare-fun b!5337267 () Bool)

(assert (=> b!5337267 (= e!3314459 e!3314462)))

(declare-fun c!928503 () Bool)

(assert (=> b!5337267 (= c!928503 (isEmpty!33179 lt!2176514))))

(declare-fun b!5337268 () Bool)

(assert (=> b!5337268 (= e!3314461 (isEmpty!33179 (t!374549 lt!2176514)))))

(declare-fun b!5337269 () Bool)

(assert (=> b!5337269 (= e!3314463 (h!67656 lt!2176514))))

(assert (= (and d!1713089 res!2264001) b!5337268))

(assert (= (and d!1713089 c!928501) b!5337269))

(assert (= (and d!1713089 (not c!928501)) b!5337266))

(assert (= (and b!5337266 c!928502) b!5337263))

(assert (= (and b!5337266 (not c!928502)) b!5337264))

(assert (= (and d!1713089 res!2264000) b!5337267))

(assert (= (and b!5337267 c!928503) b!5337262))

(assert (= (and b!5337267 (not c!928503)) b!5337261))

(assert (= (and b!5337261 c!928504) b!5337260))

(assert (= (and b!5337261 (not c!928504)) b!5337265))

(declare-fun m!6370024 () Bool)

(assert (=> b!5337263 m!6370024))

(declare-fun m!6370026 () Bool)

(assert (=> b!5337268 m!6370026))

(declare-fun m!6370028 () Bool)

(assert (=> b!5337261 m!6370028))

(assert (=> b!5337261 m!6370028))

(declare-fun m!6370030 () Bool)

(assert (=> b!5337261 m!6370030))

(declare-fun m!6370032 () Bool)

(assert (=> d!1713089 m!6370032))

(declare-fun m!6370034 () Bool)

(assert (=> d!1713089 m!6370034))

(declare-fun m!6370036 () Bool)

(assert (=> b!5337267 m!6370036))

(declare-fun m!6370038 () Bool)

(assert (=> b!5337265 m!6370038))

(declare-fun m!6370040 () Bool)

(assert (=> b!5337260 m!6370040))

(declare-fun m!6370042 () Bool)

(assert (=> b!5337262 m!6370042))

(assert (=> b!5337012 d!1713089))

(declare-fun d!1713093 () Bool)

(declare-fun choose!39991 (Int) Bool)

(assert (=> d!1713093 (= (Exists!2192 lambda!273246) (choose!39991 lambda!273246))))

(declare-fun bs!1237656 () Bool)

(assert (= bs!1237656 d!1713093))

(declare-fun m!6370044 () Bool)

(assert (=> bs!1237656 m!6370044))

(assert (=> b!5337012 d!1713093))

(declare-fun d!1713095 () Bool)

(assert (=> d!1713095 (= (matchR!7196 lt!2176522 s!2326) (matchZipper!1255 lt!2176523 s!2326))))

(declare-fun lt!2176587 () Unit!153562)

(declare-fun choose!39992 ((InoxSet Context!8790) List!61334 Regex!15011 List!61333) Unit!153562)

(assert (=> d!1713095 (= lt!2176587 (choose!39992 lt!2176523 lt!2176539 lt!2176522 s!2326))))

(assert (=> d!1713095 (validRegex!6747 lt!2176522)))

(assert (=> d!1713095 (= (theoremZipperRegexEquiv!409 lt!2176523 lt!2176539 lt!2176522 s!2326) lt!2176587)))

(declare-fun bs!1237657 () Bool)

(assert (= bs!1237657 d!1713095))

(assert (=> bs!1237657 m!6369846))

(assert (=> bs!1237657 m!6369834))

(declare-fun m!6370068 () Bool)

(assert (=> bs!1237657 m!6370068))

(declare-fun m!6370070 () Bool)

(assert (=> bs!1237657 m!6370070))

(assert (=> b!5337012 d!1713095))

(declare-fun d!1713099 () Bool)

(assert (=> d!1713099 (= (Exists!2192 lambda!273248) (choose!39991 lambda!273248))))

(declare-fun bs!1237658 () Bool)

(assert (= bs!1237658 d!1713099))

(declare-fun m!6370072 () Bool)

(assert (=> bs!1237658 m!6370072))

(assert (=> b!5337012 d!1713099))

(declare-fun d!1713101 () Bool)

(assert (=> d!1713101 (= (matchR!7196 lt!2176535 s!2326) (matchRSpec!2114 lt!2176535 s!2326))))

(declare-fun lt!2176593 () Unit!153562)

(declare-fun choose!39993 (Regex!15011 List!61333) Unit!153562)

(assert (=> d!1713101 (= lt!2176593 (choose!39993 lt!2176535 s!2326))))

(assert (=> d!1713101 (validRegex!6747 lt!2176535)))

(assert (=> d!1713101 (= (mainMatchTheorem!2114 lt!2176535 s!2326) lt!2176593)))

(declare-fun bs!1237660 () Bool)

(assert (= bs!1237660 d!1713101))

(assert (=> bs!1237660 m!6369808))

(assert (=> bs!1237660 m!6369836))

(declare-fun m!6370078 () Bool)

(assert (=> bs!1237660 m!6370078))

(declare-fun m!6370080 () Bool)

(assert (=> bs!1237660 m!6370080))

(assert (=> b!5337012 d!1713101))

(declare-fun bs!1237683 () Bool)

(declare-fun b!5337345 () Bool)

(assert (= bs!1237683 (and b!5337345 b!5337009)))

(declare-fun lambda!273287 () Int)

(assert (=> bs!1237683 (not (= lambda!273287 lambda!273244))))

(declare-fun bs!1237685 () Bool)

(assert (= bs!1237685 (and b!5337345 b!5337012)))

(assert (=> bs!1237685 (not (= lambda!273287 lambda!273248))))

(assert (=> bs!1237685 (not (= lambda!273287 lambda!273247))))

(assert (=> bs!1237683 (not (= lambda!273287 lambda!273243))))

(assert (=> bs!1237685 (not (= lambda!273287 lambda!273249))))

(assert (=> bs!1237685 (not (= lambda!273287 lambda!273246))))

(assert (=> b!5337345 true))

(assert (=> b!5337345 true))

(declare-fun bs!1237689 () Bool)

(declare-fun b!5337348 () Bool)

(assert (= bs!1237689 (and b!5337348 b!5337009)))

(declare-fun lambda!273288 () Int)

(assert (=> bs!1237689 (= (and (= (regOne!30534 lt!2176522) (regOne!30534 r!7292)) (= (regTwo!30534 lt!2176522) (regTwo!30534 r!7292))) (= lambda!273288 lambda!273244))))

(declare-fun bs!1237690 () Bool)

(assert (= bs!1237690 (and b!5337348 b!5337012)))

(assert (=> bs!1237690 (not (= lambda!273288 lambda!273248))))

(assert (=> bs!1237690 (= (and (= (regOne!30534 lt!2176522) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 lt!2176522) lt!2176535)) (= lambda!273288 lambda!273247))))

(declare-fun bs!1237691 () Bool)

(assert (= bs!1237691 (and b!5337348 b!5337345)))

(assert (=> bs!1237691 (not (= lambda!273288 lambda!273287))))

(assert (=> bs!1237689 (not (= lambda!273288 lambda!273243))))

(assert (=> bs!1237690 (= (and (= (regOne!30534 lt!2176522) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 lt!2176522) lt!2176521)) (= lambda!273288 lambda!273249))))

(assert (=> bs!1237690 (not (= lambda!273288 lambda!273246))))

(assert (=> b!5337348 true))

(assert (=> b!5337348 true))

(declare-fun b!5337344 () Bool)

(declare-fun e!3314510 () Bool)

(assert (=> b!5337344 (= e!3314510 (= s!2326 (Cons!61209 (c!928425 lt!2176522) Nil!61209)))))

(declare-fun e!3314507 () Bool)

(declare-fun call!381488 () Bool)

(assert (=> b!5337345 (= e!3314507 call!381488)))

(declare-fun b!5337346 () Bool)

(declare-fun res!2264042 () Bool)

(assert (=> b!5337346 (=> res!2264042 e!3314507)))

(declare-fun call!381489 () Bool)

(assert (=> b!5337346 (= res!2264042 call!381489)))

(declare-fun e!3314506 () Bool)

(assert (=> b!5337346 (= e!3314506 e!3314507)))

(declare-fun b!5337347 () Bool)

(declare-fun c!928526 () Bool)

(assert (=> b!5337347 (= c!928526 ((_ is ElementMatch!15011) lt!2176522))))

(declare-fun e!3314508 () Bool)

(assert (=> b!5337347 (= e!3314508 e!3314510)))

(declare-fun bm!381483 () Bool)

(assert (=> bm!381483 (= call!381489 (isEmpty!33183 s!2326))))

(assert (=> b!5337348 (= e!3314506 call!381488)))

(declare-fun b!5337349 () Bool)

(declare-fun e!3314509 () Bool)

(assert (=> b!5337349 (= e!3314509 (matchRSpec!2114 (regTwo!30535 lt!2176522) s!2326))))

(declare-fun d!1713105 () Bool)

(declare-fun c!928523 () Bool)

(assert (=> d!1713105 (= c!928523 ((_ is EmptyExpr!15011) lt!2176522))))

(declare-fun e!3314512 () Bool)

(assert (=> d!1713105 (= (matchRSpec!2114 lt!2176522 s!2326) e!3314512)))

(declare-fun c!928525 () Bool)

(declare-fun bm!381484 () Bool)

(assert (=> bm!381484 (= call!381488 (Exists!2192 (ite c!928525 lambda!273287 lambda!273288)))))

(declare-fun b!5337350 () Bool)

(declare-fun e!3314511 () Bool)

(assert (=> b!5337350 (= e!3314511 e!3314506)))

(assert (=> b!5337350 (= c!928525 ((_ is Star!15011) lt!2176522))))

(declare-fun b!5337351 () Bool)

(assert (=> b!5337351 (= e!3314511 e!3314509)))

(declare-fun res!2264041 () Bool)

(assert (=> b!5337351 (= res!2264041 (matchRSpec!2114 (regOne!30535 lt!2176522) s!2326))))

(assert (=> b!5337351 (=> res!2264041 e!3314509)))

(declare-fun b!5337352 () Bool)

(assert (=> b!5337352 (= e!3314512 call!381489)))

(declare-fun b!5337353 () Bool)

(declare-fun c!928524 () Bool)

(assert (=> b!5337353 (= c!928524 ((_ is Union!15011) lt!2176522))))

(assert (=> b!5337353 (= e!3314510 e!3314511)))

(declare-fun b!5337354 () Bool)

(assert (=> b!5337354 (= e!3314512 e!3314508)))

(declare-fun res!2264040 () Bool)

(assert (=> b!5337354 (= res!2264040 (not ((_ is EmptyLang!15011) lt!2176522)))))

(assert (=> b!5337354 (=> (not res!2264040) (not e!3314508))))

(assert (= (and d!1713105 c!928523) b!5337352))

(assert (= (and d!1713105 (not c!928523)) b!5337354))

(assert (= (and b!5337354 res!2264040) b!5337347))

(assert (= (and b!5337347 c!928526) b!5337344))

(assert (= (and b!5337347 (not c!928526)) b!5337353))

(assert (= (and b!5337353 c!928524) b!5337351))

(assert (= (and b!5337353 (not c!928524)) b!5337350))

(assert (= (and b!5337351 (not res!2264041)) b!5337349))

(assert (= (and b!5337350 c!928525) b!5337346))

(assert (= (and b!5337350 (not c!928525)) b!5337348))

(assert (= (and b!5337346 (not res!2264042)) b!5337345))

(assert (= (or b!5337345 b!5337348) bm!381484))

(assert (= (or b!5337352 b!5337346) bm!381483))

(declare-fun m!6370124 () Bool)

(assert (=> bm!381483 m!6370124))

(declare-fun m!6370126 () Bool)

(assert (=> b!5337349 m!6370126))

(declare-fun m!6370128 () Bool)

(assert (=> bm!381484 m!6370128))

(declare-fun m!6370130 () Bool)

(assert (=> b!5337351 m!6370130))

(assert (=> b!5337012 d!1713105))

(declare-fun b!5337408 () Bool)

(declare-fun res!2264075 () Bool)

(declare-fun e!3314545 () Bool)

(assert (=> b!5337408 (=> res!2264075 e!3314545)))

(assert (=> b!5337408 (= res!2264075 (not (isEmpty!33183 (tail!10539 s!2326))))))

(declare-fun b!5337409 () Bool)

(declare-fun e!3314546 () Bool)

(assert (=> b!5337409 (= e!3314546 e!3314545)))

(declare-fun res!2264072 () Bool)

(assert (=> b!5337409 (=> res!2264072 e!3314545)))

(declare-fun call!381493 () Bool)

(assert (=> b!5337409 (= res!2264072 call!381493)))

(declare-fun b!5337410 () Bool)

(declare-fun e!3314543 () Bool)

(declare-fun derivativeStep!4183 (Regex!15011 C!30292) Regex!15011)

(assert (=> b!5337410 (= e!3314543 (matchR!7196 (derivativeStep!4183 lt!2176522 (head!11442 s!2326)) (tail!10539 s!2326)))))

(declare-fun d!1713121 () Bool)

(declare-fun e!3314540 () Bool)

(assert (=> d!1713121 e!3314540))

(declare-fun c!928539 () Bool)

(assert (=> d!1713121 (= c!928539 ((_ is EmptyExpr!15011) lt!2176522))))

(declare-fun lt!2176606 () Bool)

(assert (=> d!1713121 (= lt!2176606 e!3314543)))

(declare-fun c!928541 () Bool)

(assert (=> d!1713121 (= c!928541 (isEmpty!33183 s!2326))))

(assert (=> d!1713121 (validRegex!6747 lt!2176522)))

(assert (=> d!1713121 (= (matchR!7196 lt!2176522 s!2326) lt!2176606)))

(declare-fun b!5337411 () Bool)

(declare-fun res!2264076 () Bool)

(declare-fun e!3314542 () Bool)

(assert (=> b!5337411 (=> res!2264076 e!3314542)))

(assert (=> b!5337411 (= res!2264076 (not ((_ is ElementMatch!15011) lt!2176522)))))

(declare-fun e!3314544 () Bool)

(assert (=> b!5337411 (= e!3314544 e!3314542)))

(declare-fun b!5337412 () Bool)

(assert (=> b!5337412 (= e!3314545 (not (= (head!11442 s!2326) (c!928425 lt!2176522))))))

(declare-fun b!5337413 () Bool)

(assert (=> b!5337413 (= e!3314540 (= lt!2176606 call!381493))))

(declare-fun b!5337414 () Bool)

(assert (=> b!5337414 (= e!3314542 e!3314546)))

(declare-fun res!2264077 () Bool)

(assert (=> b!5337414 (=> (not res!2264077) (not e!3314546))))

(assert (=> b!5337414 (= res!2264077 (not lt!2176606))))

(declare-fun b!5337415 () Bool)

(declare-fun e!3314541 () Bool)

(assert (=> b!5337415 (= e!3314541 (= (head!11442 s!2326) (c!928425 lt!2176522)))))

(declare-fun b!5337416 () Bool)

(assert (=> b!5337416 (= e!3314543 (nullable!5180 lt!2176522))))

(declare-fun b!5337417 () Bool)

(declare-fun res!2264074 () Bool)

(assert (=> b!5337417 (=> res!2264074 e!3314542)))

(assert (=> b!5337417 (= res!2264074 e!3314541)))

(declare-fun res!2264079 () Bool)

(assert (=> b!5337417 (=> (not res!2264079) (not e!3314541))))

(assert (=> b!5337417 (= res!2264079 lt!2176606)))

(declare-fun bm!381488 () Bool)

(assert (=> bm!381488 (= call!381493 (isEmpty!33183 s!2326))))

(declare-fun b!5337418 () Bool)

(declare-fun res!2264073 () Bool)

(assert (=> b!5337418 (=> (not res!2264073) (not e!3314541))))

(assert (=> b!5337418 (= res!2264073 (not call!381493))))

(declare-fun b!5337419 () Bool)

(assert (=> b!5337419 (= e!3314544 (not lt!2176606))))

(declare-fun b!5337420 () Bool)

(assert (=> b!5337420 (= e!3314540 e!3314544)))

(declare-fun c!928540 () Bool)

(assert (=> b!5337420 (= c!928540 ((_ is EmptyLang!15011) lt!2176522))))

(declare-fun b!5337421 () Bool)

(declare-fun res!2264078 () Bool)

(assert (=> b!5337421 (=> (not res!2264078) (not e!3314541))))

(assert (=> b!5337421 (= res!2264078 (isEmpty!33183 (tail!10539 s!2326)))))

(assert (= (and d!1713121 c!928541) b!5337416))

(assert (= (and d!1713121 (not c!928541)) b!5337410))

(assert (= (and d!1713121 c!928539) b!5337413))

(assert (= (and d!1713121 (not c!928539)) b!5337420))

(assert (= (and b!5337420 c!928540) b!5337419))

(assert (= (and b!5337420 (not c!928540)) b!5337411))

(assert (= (and b!5337411 (not res!2264076)) b!5337417))

(assert (= (and b!5337417 res!2264079) b!5337418))

(assert (= (and b!5337418 res!2264073) b!5337421))

(assert (= (and b!5337421 res!2264078) b!5337415))

(assert (= (and b!5337417 (not res!2264074)) b!5337414))

(assert (= (and b!5337414 res!2264077) b!5337409))

(assert (= (and b!5337409 (not res!2264072)) b!5337408))

(assert (= (and b!5337408 (not res!2264075)) b!5337412))

(assert (= (or b!5337413 b!5337409 b!5337418) bm!381488))

(declare-fun m!6370160 () Bool)

(assert (=> b!5337410 m!6370160))

(assert (=> b!5337410 m!6370160))

(declare-fun m!6370162 () Bool)

(assert (=> b!5337410 m!6370162))

(declare-fun m!6370164 () Bool)

(assert (=> b!5337410 m!6370164))

(assert (=> b!5337410 m!6370162))

(assert (=> b!5337410 m!6370164))

(declare-fun m!6370166 () Bool)

(assert (=> b!5337410 m!6370166))

(assert (=> b!5337421 m!6370164))

(assert (=> b!5337421 m!6370164))

(declare-fun m!6370168 () Bool)

(assert (=> b!5337421 m!6370168))

(assert (=> bm!381488 m!6370124))

(assert (=> b!5337412 m!6370160))

(assert (=> b!5337408 m!6370164))

(assert (=> b!5337408 m!6370164))

(assert (=> b!5337408 m!6370168))

(declare-fun m!6370170 () Bool)

(assert (=> b!5337416 m!6370170))

(assert (=> d!1713121 m!6370124))

(assert (=> d!1713121 m!6370070))

(assert (=> b!5337415 m!6370160))

(assert (=> b!5337012 d!1713121))

(declare-fun bs!1237714 () Bool)

(declare-fun d!1713133 () Bool)

(assert (= bs!1237714 (and d!1713133 b!5337009)))

(declare-fun lambda!273309 () Int)

(assert (=> bs!1237714 (not (= lambda!273309 lambda!273244))))

(declare-fun bs!1237715 () Bool)

(assert (= bs!1237715 (and d!1713133 b!5337012)))

(assert (=> bs!1237715 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regTwo!30534 (regOne!30534 r!7292))) (= lt!2176535 lt!2176521)) (= lambda!273309 lambda!273248))))

(declare-fun bs!1237716 () Bool)

(assert (= bs!1237716 (and d!1713133 b!5337348)))

(assert (=> bs!1237716 (not (= lambda!273309 lambda!273288))))

(assert (=> bs!1237715 (not (= lambda!273309 lambda!273247))))

(declare-fun bs!1237717 () Bool)

(assert (= bs!1237717 (and d!1713133 b!5337345)))

(assert (=> bs!1237717 (not (= lambda!273309 lambda!273287))))

(assert (=> bs!1237714 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176535 (regTwo!30534 r!7292))) (= lambda!273309 lambda!273243))))

(assert (=> bs!1237715 (not (= lambda!273309 lambda!273249))))

(assert (=> bs!1237715 (= lambda!273309 lambda!273246)))

(assert (=> d!1713133 true))

(assert (=> d!1713133 true))

(assert (=> d!1713133 true))

(declare-fun lambda!273310 () Int)

(assert (=> bs!1237714 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176535 (regTwo!30534 r!7292))) (= lambda!273310 lambda!273244))))

(assert (=> bs!1237715 (not (= lambda!273310 lambda!273248))))

(assert (=> bs!1237716 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 lt!2176522)) (= lt!2176535 (regTwo!30534 lt!2176522))) (= lambda!273310 lambda!273288))))

(declare-fun bs!1237718 () Bool)

(assert (= bs!1237718 d!1713133))

(assert (=> bs!1237718 (not (= lambda!273310 lambda!273309))))

(assert (=> bs!1237715 (= lambda!273310 lambda!273247)))

(assert (=> bs!1237717 (not (= lambda!273310 lambda!273287))))

(assert (=> bs!1237714 (not (= lambda!273310 lambda!273243))))

(assert (=> bs!1237715 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regTwo!30534 (regOne!30534 r!7292))) (= lt!2176535 lt!2176521)) (= lambda!273310 lambda!273249))))

(assert (=> bs!1237715 (not (= lambda!273310 lambda!273246))))

(assert (=> d!1713133 true))

(assert (=> d!1713133 true))

(assert (=> d!1713133 true))

(assert (=> d!1713133 (= (Exists!2192 lambda!273309) (Exists!2192 lambda!273310))))

(declare-fun lt!2176625 () Unit!153562)

(declare-fun choose!39994 (Regex!15011 Regex!15011 List!61333) Unit!153562)

(assert (=> d!1713133 (= lt!2176625 (choose!39994 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326))))

(assert (=> d!1713133 (validRegex!6747 (regOne!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713133 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326) lt!2176625)))

(declare-fun m!6370196 () Bool)

(assert (=> bs!1237718 m!6370196))

(declare-fun m!6370198 () Bool)

(assert (=> bs!1237718 m!6370198))

(declare-fun m!6370200 () Bool)

(assert (=> bs!1237718 m!6370200))

(declare-fun m!6370202 () Bool)

(assert (=> bs!1237718 m!6370202))

(assert (=> b!5337012 d!1713133))

(declare-fun bs!1237719 () Bool)

(declare-fun d!1713139 () Bool)

(assert (= bs!1237719 (and d!1713139 d!1713133)))

(declare-fun lambda!273313 () Int)

(assert (=> bs!1237719 (not (= lambda!273313 lambda!273310))))

(declare-fun bs!1237720 () Bool)

(assert (= bs!1237720 (and d!1713139 b!5337009)))

(assert (=> bs!1237720 (not (= lambda!273313 lambda!273244))))

(declare-fun bs!1237721 () Bool)

(assert (= bs!1237721 (and d!1713139 b!5337012)))

(assert (=> bs!1237721 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regTwo!30534 (regOne!30534 r!7292))) (= lt!2176535 lt!2176521)) (= lambda!273313 lambda!273248))))

(declare-fun bs!1237722 () Bool)

(assert (= bs!1237722 (and d!1713139 b!5337348)))

(assert (=> bs!1237722 (not (= lambda!273313 lambda!273288))))

(assert (=> bs!1237719 (= lambda!273313 lambda!273309)))

(assert (=> bs!1237721 (not (= lambda!273313 lambda!273247))))

(declare-fun bs!1237723 () Bool)

(assert (= bs!1237723 (and d!1713139 b!5337345)))

(assert (=> bs!1237723 (not (= lambda!273313 lambda!273287))))

(assert (=> bs!1237720 (= (and (= (regOne!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176535 (regTwo!30534 r!7292))) (= lambda!273313 lambda!273243))))

(assert (=> bs!1237721 (not (= lambda!273313 lambda!273249))))

(assert (=> bs!1237721 (= lambda!273313 lambda!273246)))

(assert (=> d!1713139 true))

(assert (=> d!1713139 true))

(assert (=> d!1713139 true))

(assert (=> d!1713139 (= (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 Nil!61209 s!2326 s!2326)) (Exists!2192 lambda!273313))))

(declare-fun lt!2176628 () Unit!153562)

(declare-fun choose!39996 (Regex!15011 Regex!15011 List!61333) Unit!153562)

(assert (=> d!1713139 (= lt!2176628 (choose!39996 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326))))

(assert (=> d!1713139 (validRegex!6747 (regOne!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713139 (= (lemmaFindConcatSeparationEquivalentToExists!1300 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 s!2326) lt!2176628)))

(declare-fun bs!1237724 () Bool)

(assert (= bs!1237724 d!1713139))

(declare-fun m!6370214 () Bool)

(assert (=> bs!1237724 m!6370214))

(assert (=> bs!1237724 m!6370202))

(assert (=> bs!1237724 m!6369816))

(declare-fun m!6370216 () Bool)

(assert (=> bs!1237724 m!6370216))

(assert (=> bs!1237724 m!6369816))

(assert (=> bs!1237724 m!6369818))

(assert (=> b!5337012 d!1713139))

(declare-fun d!1713143 () Bool)

(assert (=> d!1713143 (= (matchR!7196 lt!2176522 s!2326) (matchRSpec!2114 lt!2176522 s!2326))))

(declare-fun lt!2176629 () Unit!153562)

(assert (=> d!1713143 (= lt!2176629 (choose!39993 lt!2176522 s!2326))))

(assert (=> d!1713143 (validRegex!6747 lt!2176522)))

(assert (=> d!1713143 (= (mainMatchTheorem!2114 lt!2176522 s!2326) lt!2176629)))

(declare-fun bs!1237725 () Bool)

(assert (= bs!1237725 d!1713143))

(assert (=> bs!1237725 m!6369846))

(assert (=> bs!1237725 m!6369844))

(declare-fun m!6370218 () Bool)

(assert (=> bs!1237725 m!6370218))

(assert (=> bs!1237725 m!6370070))

(assert (=> b!5337012 d!1713143))

(declare-fun bs!1237726 () Bool)

(declare-fun b!5337492 () Bool)

(assert (= bs!1237726 (and b!5337492 d!1713133)))

(declare-fun lambda!273314 () Int)

(assert (=> bs!1237726 (not (= lambda!273314 lambda!273310))))

(declare-fun bs!1237727 () Bool)

(assert (= bs!1237727 (and b!5337492 b!5337009)))

(assert (=> bs!1237727 (not (= lambda!273314 lambda!273244))))

(declare-fun bs!1237728 () Bool)

(assert (= bs!1237728 (and b!5337492 b!5337012)))

(assert (=> bs!1237728 (not (= lambda!273314 lambda!273248))))

(declare-fun bs!1237729 () Bool)

(assert (= bs!1237729 (and b!5337492 b!5337348)))

(assert (=> bs!1237729 (not (= lambda!273314 lambda!273288))))

(assert (=> bs!1237726 (not (= lambda!273314 lambda!273309))))

(assert (=> bs!1237728 (not (= lambda!273314 lambda!273247))))

(declare-fun bs!1237730 () Bool)

(assert (= bs!1237730 (and b!5337492 b!5337345)))

(assert (=> bs!1237730 (= (and (= (reg!15340 lt!2176535) (reg!15340 lt!2176522)) (= lt!2176535 lt!2176522)) (= lambda!273314 lambda!273287))))

(assert (=> bs!1237727 (not (= lambda!273314 lambda!273243))))

(declare-fun bs!1237731 () Bool)

(assert (= bs!1237731 (and b!5337492 d!1713139)))

(assert (=> bs!1237731 (not (= lambda!273314 lambda!273313))))

(assert (=> bs!1237728 (not (= lambda!273314 lambda!273249))))

(assert (=> bs!1237728 (not (= lambda!273314 lambda!273246))))

(assert (=> b!5337492 true))

(assert (=> b!5337492 true))

(declare-fun bs!1237733 () Bool)

(declare-fun b!5337495 () Bool)

(assert (= bs!1237733 (and b!5337495 b!5337009)))

(declare-fun lambda!273315 () Int)

(assert (=> bs!1237733 (= (and (= (regOne!30534 lt!2176535) (regOne!30534 r!7292)) (= (regTwo!30534 lt!2176535) (regTwo!30534 r!7292))) (= lambda!273315 lambda!273244))))

(declare-fun bs!1237734 () Bool)

(assert (= bs!1237734 (and b!5337495 b!5337012)))

(assert (=> bs!1237734 (not (= lambda!273315 lambda!273248))))

(declare-fun bs!1237735 () Bool)

(assert (= bs!1237735 (and b!5337495 b!5337348)))

(assert (=> bs!1237735 (= (and (= (regOne!30534 lt!2176535) (regOne!30534 lt!2176522)) (= (regTwo!30534 lt!2176535) (regTwo!30534 lt!2176522))) (= lambda!273315 lambda!273288))))

(declare-fun bs!1237736 () Bool)

(assert (= bs!1237736 (and b!5337495 d!1713133)))

(assert (=> bs!1237736 (not (= lambda!273315 lambda!273309))))

(assert (=> bs!1237734 (= (and (= (regOne!30534 lt!2176535) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 lt!2176535) lt!2176535)) (= lambda!273315 lambda!273247))))

(declare-fun bs!1237737 () Bool)

(assert (= bs!1237737 (and b!5337495 b!5337345)))

(assert (=> bs!1237737 (not (= lambda!273315 lambda!273287))))

(assert (=> bs!1237733 (not (= lambda!273315 lambda!273243))))

(declare-fun bs!1237738 () Bool)

(assert (= bs!1237738 (and b!5337495 d!1713139)))

(assert (=> bs!1237738 (not (= lambda!273315 lambda!273313))))

(assert (=> bs!1237734 (= (and (= (regOne!30534 lt!2176535) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 lt!2176535) lt!2176521)) (= lambda!273315 lambda!273249))))

(assert (=> bs!1237734 (not (= lambda!273315 lambda!273246))))

(assert (=> bs!1237736 (= (and (= (regOne!30534 lt!2176535) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 lt!2176535) lt!2176535)) (= lambda!273315 lambda!273310))))

(declare-fun bs!1237739 () Bool)

(assert (= bs!1237739 (and b!5337495 b!5337492)))

(assert (=> bs!1237739 (not (= lambda!273315 lambda!273314))))

(assert (=> b!5337495 true))

(assert (=> b!5337495 true))

(declare-fun b!5337491 () Bool)

(declare-fun e!3314589 () Bool)

(assert (=> b!5337491 (= e!3314589 (= s!2326 (Cons!61209 (c!928425 lt!2176535) Nil!61209)))))

(declare-fun e!3314586 () Bool)

(declare-fun call!381514 () Bool)

(assert (=> b!5337492 (= e!3314586 call!381514)))

(declare-fun b!5337493 () Bool)

(declare-fun res!2264103 () Bool)

(assert (=> b!5337493 (=> res!2264103 e!3314586)))

(declare-fun call!381515 () Bool)

(assert (=> b!5337493 (= res!2264103 call!381515)))

(declare-fun e!3314585 () Bool)

(assert (=> b!5337493 (= e!3314585 e!3314586)))

(declare-fun b!5337494 () Bool)

(declare-fun c!928574 () Bool)

(assert (=> b!5337494 (= c!928574 ((_ is ElementMatch!15011) lt!2176535))))

(declare-fun e!3314587 () Bool)

(assert (=> b!5337494 (= e!3314587 e!3314589)))

(declare-fun bm!381509 () Bool)

(assert (=> bm!381509 (= call!381515 (isEmpty!33183 s!2326))))

(assert (=> b!5337495 (= e!3314585 call!381514)))

(declare-fun b!5337496 () Bool)

(declare-fun e!3314588 () Bool)

(assert (=> b!5337496 (= e!3314588 (matchRSpec!2114 (regTwo!30535 lt!2176535) s!2326))))

(declare-fun d!1713145 () Bool)

(declare-fun c!928571 () Bool)

(assert (=> d!1713145 (= c!928571 ((_ is EmptyExpr!15011) lt!2176535))))

(declare-fun e!3314591 () Bool)

(assert (=> d!1713145 (= (matchRSpec!2114 lt!2176535 s!2326) e!3314591)))

(declare-fun bm!381510 () Bool)

(declare-fun c!928573 () Bool)

(assert (=> bm!381510 (= call!381514 (Exists!2192 (ite c!928573 lambda!273314 lambda!273315)))))

(declare-fun b!5337497 () Bool)

(declare-fun e!3314590 () Bool)

(assert (=> b!5337497 (= e!3314590 e!3314585)))

(assert (=> b!5337497 (= c!928573 ((_ is Star!15011) lt!2176535))))

(declare-fun b!5337498 () Bool)

(assert (=> b!5337498 (= e!3314590 e!3314588)))

(declare-fun res!2264102 () Bool)

(assert (=> b!5337498 (= res!2264102 (matchRSpec!2114 (regOne!30535 lt!2176535) s!2326))))

(assert (=> b!5337498 (=> res!2264102 e!3314588)))

(declare-fun b!5337499 () Bool)

(assert (=> b!5337499 (= e!3314591 call!381515)))

(declare-fun b!5337500 () Bool)

(declare-fun c!928572 () Bool)

(assert (=> b!5337500 (= c!928572 ((_ is Union!15011) lt!2176535))))

(assert (=> b!5337500 (= e!3314589 e!3314590)))

(declare-fun b!5337501 () Bool)

(assert (=> b!5337501 (= e!3314591 e!3314587)))

(declare-fun res!2264101 () Bool)

(assert (=> b!5337501 (= res!2264101 (not ((_ is EmptyLang!15011) lt!2176535)))))

(assert (=> b!5337501 (=> (not res!2264101) (not e!3314587))))

(assert (= (and d!1713145 c!928571) b!5337499))

(assert (= (and d!1713145 (not c!928571)) b!5337501))

(assert (= (and b!5337501 res!2264101) b!5337494))

(assert (= (and b!5337494 c!928574) b!5337491))

(assert (= (and b!5337494 (not c!928574)) b!5337500))

(assert (= (and b!5337500 c!928572) b!5337498))

(assert (= (and b!5337500 (not c!928572)) b!5337497))

(assert (= (and b!5337498 (not res!2264102)) b!5337496))

(assert (= (and b!5337497 c!928573) b!5337493))

(assert (= (and b!5337497 (not c!928573)) b!5337495))

(assert (= (and b!5337493 (not res!2264103)) b!5337492))

(assert (= (or b!5337492 b!5337495) bm!381510))

(assert (= (or b!5337499 b!5337493) bm!381509))

(assert (=> bm!381509 m!6370124))

(declare-fun m!6370228 () Bool)

(assert (=> b!5337496 m!6370228))

(declare-fun m!6370230 () Bool)

(assert (=> bm!381510 m!6370230))

(declare-fun m!6370232 () Bool)

(assert (=> b!5337498 m!6370232))

(assert (=> b!5337012 d!1713145))

(declare-fun d!1713151 () Bool)

(declare-fun isEmpty!33184 (Option!15122) Bool)

(assert (=> d!1713151 (= (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 Nil!61209 s!2326 s!2326)) (not (isEmpty!33184 (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 Nil!61209 s!2326 s!2326))))))

(declare-fun bs!1237741 () Bool)

(assert (= bs!1237741 d!1713151))

(assert (=> bs!1237741 m!6369816))

(declare-fun m!6370240 () Bool)

(assert (=> bs!1237741 m!6370240))

(assert (=> b!5337012 d!1713151))

(declare-fun bs!1237743 () Bool)

(declare-fun d!1713155 () Bool)

(assert (= bs!1237743 (and d!1713155 d!1713055)))

(declare-fun lambda!273316 () Int)

(assert (=> bs!1237743 (= lambda!273316 lambda!273255)))

(declare-fun bs!1237744 () Bool)

(assert (= bs!1237744 (and d!1713155 d!1713089)))

(assert (=> bs!1237744 (= lambda!273316 lambda!273276)))

(declare-fun e!3314596 () Bool)

(assert (=> d!1713155 e!3314596))

(declare-fun res!2264105 () Bool)

(assert (=> d!1713155 (=> (not res!2264105) (not e!3314596))))

(declare-fun lt!2176633 () Regex!15011)

(assert (=> d!1713155 (= res!2264105 (validRegex!6747 lt!2176633))))

(declare-fun e!3314600 () Regex!15011)

(assert (=> d!1713155 (= lt!2176633 e!3314600)))

(declare-fun c!928577 () Bool)

(declare-fun e!3314598 () Bool)

(assert (=> d!1713155 (= c!928577 e!3314598)))

(declare-fun res!2264106 () Bool)

(assert (=> d!1713155 (=> (not res!2264106) (not e!3314598))))

(assert (=> d!1713155 (= res!2264106 ((_ is Cons!61208) lt!2176533))))

(assert (=> d!1713155 (forall!14431 lt!2176533 lambda!273316)))

(assert (=> d!1713155 (= (generalisedConcat!680 lt!2176533) lt!2176633)))

(declare-fun b!5337507 () Bool)

(declare-fun e!3314595 () Bool)

(assert (=> b!5337507 (= e!3314595 (= lt!2176633 (head!11443 lt!2176533)))))

(declare-fun b!5337508 () Bool)

(declare-fun e!3314599 () Bool)

(assert (=> b!5337508 (= e!3314599 e!3314595)))

(declare-fun c!928580 () Bool)

(assert (=> b!5337508 (= c!928580 (isEmpty!33179 (tail!10540 lt!2176533)))))

(declare-fun b!5337509 () Bool)

(assert (=> b!5337509 (= e!3314599 (isEmptyExpr!897 lt!2176633))))

(declare-fun b!5337510 () Bool)

(declare-fun e!3314597 () Regex!15011)

(assert (=> b!5337510 (= e!3314597 (Concat!23856 (h!67656 lt!2176533) (generalisedConcat!680 (t!374549 lt!2176533))))))

(declare-fun b!5337511 () Bool)

(assert (=> b!5337511 (= e!3314597 EmptyExpr!15011)))

(declare-fun b!5337512 () Bool)

(assert (=> b!5337512 (= e!3314595 (isConcat!420 lt!2176633))))

(declare-fun b!5337513 () Bool)

(assert (=> b!5337513 (= e!3314600 e!3314597)))

(declare-fun c!928578 () Bool)

(assert (=> b!5337513 (= c!928578 ((_ is Cons!61208) lt!2176533))))

(declare-fun b!5337514 () Bool)

(assert (=> b!5337514 (= e!3314596 e!3314599)))

(declare-fun c!928579 () Bool)

(assert (=> b!5337514 (= c!928579 (isEmpty!33179 lt!2176533))))

(declare-fun b!5337515 () Bool)

(assert (=> b!5337515 (= e!3314598 (isEmpty!33179 (t!374549 lt!2176533)))))

(declare-fun b!5337516 () Bool)

(assert (=> b!5337516 (= e!3314600 (h!67656 lt!2176533))))

(assert (= (and d!1713155 res!2264106) b!5337515))

(assert (= (and d!1713155 c!928577) b!5337516))

(assert (= (and d!1713155 (not c!928577)) b!5337513))

(assert (= (and b!5337513 c!928578) b!5337510))

(assert (= (and b!5337513 (not c!928578)) b!5337511))

(assert (= (and d!1713155 res!2264105) b!5337514))

(assert (= (and b!5337514 c!928579) b!5337509))

(assert (= (and b!5337514 (not c!928579)) b!5337508))

(assert (= (and b!5337508 c!928580) b!5337507))

(assert (= (and b!5337508 (not c!928580)) b!5337512))

(declare-fun m!6370250 () Bool)

(assert (=> b!5337510 m!6370250))

(declare-fun m!6370252 () Bool)

(assert (=> b!5337515 m!6370252))

(declare-fun m!6370254 () Bool)

(assert (=> b!5337508 m!6370254))

(assert (=> b!5337508 m!6370254))

(declare-fun m!6370256 () Bool)

(assert (=> b!5337508 m!6370256))

(declare-fun m!6370258 () Bool)

(assert (=> d!1713155 m!6370258))

(declare-fun m!6370260 () Bool)

(assert (=> d!1713155 m!6370260))

(declare-fun m!6370262 () Bool)

(assert (=> b!5337514 m!6370262))

(declare-fun m!6370264 () Bool)

(assert (=> b!5337512 m!6370264))

(declare-fun m!6370266 () Bool)

(assert (=> b!5337507 m!6370266))

(declare-fun m!6370268 () Bool)

(assert (=> b!5337509 m!6370268))

(assert (=> b!5337012 d!1713155))

(declare-fun b!5337564 () Bool)

(declare-fun e!3314633 () Bool)

(declare-fun lt!2176650 () Option!15122)

(assert (=> b!5337564 (= e!3314633 (not (isDefined!11825 lt!2176650)))))

(declare-fun b!5337565 () Bool)

(declare-fun res!2264128 () Bool)

(declare-fun e!3314632 () Bool)

(assert (=> b!5337565 (=> (not res!2264128) (not e!3314632))))

(declare-fun get!21053 (Option!15122) tuple2!64420)

(assert (=> b!5337565 (= res!2264128 (matchR!7196 (regOne!30534 (regOne!30534 r!7292)) (_1!35513 (get!21053 lt!2176650))))))

(declare-fun b!5337566 () Bool)

(declare-fun e!3314629 () Option!15122)

(declare-fun e!3314631 () Option!15122)

(assert (=> b!5337566 (= e!3314629 e!3314631)))

(declare-fun c!928596 () Bool)

(assert (=> b!5337566 (= c!928596 ((_ is Nil!61209) s!2326))))

(declare-fun b!5337567 () Bool)

(assert (=> b!5337567 (= e!3314629 (Some!15121 (tuple2!64421 Nil!61209 s!2326)))))

(declare-fun b!5337568 () Bool)

(declare-fun res!2264130 () Bool)

(assert (=> b!5337568 (=> (not res!2264130) (not e!3314632))))

(assert (=> b!5337568 (= res!2264130 (matchR!7196 lt!2176535 (_2!35513 (get!21053 lt!2176650))))))

(declare-fun b!5337569 () Bool)

(declare-fun e!3314630 () Bool)

(assert (=> b!5337569 (= e!3314630 (matchR!7196 lt!2176535 s!2326))))

(declare-fun b!5337570 () Bool)

(declare-fun lt!2176651 () Unit!153562)

(declare-fun lt!2176652 () Unit!153562)

(assert (=> b!5337570 (= lt!2176651 lt!2176652)))

(declare-fun ++!13342 (List!61333 List!61333) List!61333)

(assert (=> b!5337570 (= (++!13342 (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1757 (List!61333 C!30292 List!61333 List!61333) Unit!153562)

(assert (=> b!5337570 (= lt!2176652 (lemmaMoveElementToOtherListKeepsConcatEq!1757 Nil!61209 (h!67657 s!2326) (t!374550 s!2326) s!2326))))

(assert (=> b!5337570 (= e!3314631 (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326) s!2326))))

(declare-fun b!5337571 () Bool)

(assert (=> b!5337571 (= e!3314631 None!15121)))

(declare-fun d!1713161 () Bool)

(assert (=> d!1713161 e!3314633))

(declare-fun res!2264129 () Bool)

(assert (=> d!1713161 (=> res!2264129 e!3314633)))

(assert (=> d!1713161 (= res!2264129 e!3314632)))

(declare-fun res!2264126 () Bool)

(assert (=> d!1713161 (=> (not res!2264126) (not e!3314632))))

(assert (=> d!1713161 (= res!2264126 (isDefined!11825 lt!2176650))))

(assert (=> d!1713161 (= lt!2176650 e!3314629)))

(declare-fun c!928597 () Bool)

(assert (=> d!1713161 (= c!928597 e!3314630)))

(declare-fun res!2264127 () Bool)

(assert (=> d!1713161 (=> (not res!2264127) (not e!3314630))))

(assert (=> d!1713161 (= res!2264127 (matchR!7196 (regOne!30534 (regOne!30534 r!7292)) Nil!61209))))

(assert (=> d!1713161 (validRegex!6747 (regOne!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713161 (= (findConcatSeparation!1536 (regOne!30534 (regOne!30534 r!7292)) lt!2176535 Nil!61209 s!2326 s!2326) lt!2176650)))

(declare-fun b!5337572 () Bool)

(assert (=> b!5337572 (= e!3314632 (= (++!13342 (_1!35513 (get!21053 lt!2176650)) (_2!35513 (get!21053 lt!2176650))) s!2326))))

(assert (= (and d!1713161 res!2264127) b!5337569))

(assert (= (and d!1713161 c!928597) b!5337567))

(assert (= (and d!1713161 (not c!928597)) b!5337566))

(assert (= (and b!5337566 c!928596) b!5337571))

(assert (= (and b!5337566 (not c!928596)) b!5337570))

(assert (= (and d!1713161 res!2264126) b!5337565))

(assert (= (and b!5337565 res!2264128) b!5337568))

(assert (= (and b!5337568 res!2264130) b!5337572))

(assert (= (and d!1713161 (not res!2264129)) b!5337564))

(declare-fun m!6370322 () Bool)

(assert (=> d!1713161 m!6370322))

(declare-fun m!6370324 () Bool)

(assert (=> d!1713161 m!6370324))

(assert (=> d!1713161 m!6370202))

(declare-fun m!6370326 () Bool)

(assert (=> b!5337568 m!6370326))

(declare-fun m!6370328 () Bool)

(assert (=> b!5337568 m!6370328))

(declare-fun m!6370330 () Bool)

(assert (=> b!5337570 m!6370330))

(assert (=> b!5337570 m!6370330))

(declare-fun m!6370332 () Bool)

(assert (=> b!5337570 m!6370332))

(declare-fun m!6370334 () Bool)

(assert (=> b!5337570 m!6370334))

(assert (=> b!5337570 m!6370330))

(declare-fun m!6370336 () Bool)

(assert (=> b!5337570 m!6370336))

(assert (=> b!5337572 m!6370326))

(declare-fun m!6370338 () Bool)

(assert (=> b!5337572 m!6370338))

(assert (=> b!5337564 m!6370322))

(assert (=> b!5337565 m!6370326))

(declare-fun m!6370340 () Bool)

(assert (=> b!5337565 m!6370340))

(assert (=> b!5337569 m!6369808))

(assert (=> b!5337012 d!1713161))

(declare-fun bs!1237750 () Bool)

(declare-fun d!1713187 () Bool)

(assert (= bs!1237750 (and d!1713187 b!5337009)))

(declare-fun lambda!273320 () Int)

(assert (=> bs!1237750 (not (= lambda!273320 lambda!273244))))

(declare-fun bs!1237751 () Bool)

(assert (= bs!1237751 (and d!1713187 b!5337012)))

(assert (=> bs!1237751 (= lambda!273320 lambda!273248)))

(declare-fun bs!1237752 () Bool)

(assert (= bs!1237752 (and d!1713187 b!5337348)))

(assert (=> bs!1237752 (not (= lambda!273320 lambda!273288))))

(declare-fun bs!1237753 () Bool)

(assert (= bs!1237753 (and d!1713187 d!1713133)))

(assert (=> bs!1237753 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273320 lambda!273309))))

(assert (=> bs!1237751 (not (= lambda!273320 lambda!273247))))

(declare-fun bs!1237754 () Bool)

(assert (= bs!1237754 (and d!1713187 b!5337345)))

(assert (=> bs!1237754 (not (= lambda!273320 lambda!273287))))

(declare-fun bs!1237755 () Bool)

(assert (= bs!1237755 (and d!1713187 b!5337495)))

(assert (=> bs!1237755 (not (= lambda!273320 lambda!273315))))

(assert (=> bs!1237750 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176521 (regTwo!30534 r!7292))) (= lambda!273320 lambda!273243))))

(declare-fun bs!1237756 () Bool)

(assert (= bs!1237756 (and d!1713187 d!1713139)))

(assert (=> bs!1237756 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273320 lambda!273313))))

(assert (=> bs!1237751 (not (= lambda!273320 lambda!273249))))

(assert (=> bs!1237751 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273320 lambda!273246))))

(assert (=> bs!1237753 (not (= lambda!273320 lambda!273310))))

(declare-fun bs!1237757 () Bool)

(assert (= bs!1237757 (and d!1713187 b!5337492)))

(assert (=> bs!1237757 (not (= lambda!273320 lambda!273314))))

(assert (=> d!1713187 true))

(assert (=> d!1713187 true))

(assert (=> d!1713187 true))

(declare-fun lambda!273321 () Int)

(assert (=> bs!1237750 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176521 (regTwo!30534 r!7292))) (= lambda!273321 lambda!273244))))

(assert (=> bs!1237751 (not (= lambda!273321 lambda!273248))))

(assert (=> bs!1237753 (not (= lambda!273321 lambda!273309))))

(assert (=> bs!1237751 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273321 lambda!273247))))

(assert (=> bs!1237754 (not (= lambda!273321 lambda!273287))))

(assert (=> bs!1237755 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 lt!2176535)) (= lt!2176521 (regTwo!30534 lt!2176535))) (= lambda!273321 lambda!273315))))

(assert (=> bs!1237750 (not (= lambda!273321 lambda!273243))))

(assert (=> bs!1237756 (not (= lambda!273321 lambda!273313))))

(assert (=> bs!1237751 (= lambda!273321 lambda!273249)))

(assert (=> bs!1237751 (not (= lambda!273321 lambda!273246))))

(assert (=> bs!1237753 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273321 lambda!273310))))

(assert (=> bs!1237757 (not (= lambda!273321 lambda!273314))))

(assert (=> bs!1237752 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 lt!2176522)) (= lt!2176521 (regTwo!30534 lt!2176522))) (= lambda!273321 lambda!273288))))

(declare-fun bs!1237758 () Bool)

(assert (= bs!1237758 d!1713187))

(assert (=> bs!1237758 (not (= lambda!273321 lambda!273320))))

(assert (=> d!1713187 true))

(assert (=> d!1713187 true))

(assert (=> d!1713187 true))

(assert (=> d!1713187 (= (Exists!2192 lambda!273320) (Exists!2192 lambda!273321))))

(declare-fun lt!2176655 () Unit!153562)

(assert (=> d!1713187 (= lt!2176655 (choose!39994 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326))))

(assert (=> d!1713187 (validRegex!6747 (regTwo!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713187 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326) lt!2176655)))

(declare-fun m!6370350 () Bool)

(assert (=> bs!1237758 m!6370350))

(declare-fun m!6370352 () Bool)

(assert (=> bs!1237758 m!6370352))

(declare-fun m!6370354 () Bool)

(assert (=> bs!1237758 m!6370354))

(declare-fun m!6370356 () Bool)

(assert (=> bs!1237758 m!6370356))

(assert (=> b!5337012 d!1713187))

(declare-fun d!1713193 () Bool)

(declare-fun c!928607 () Bool)

(assert (=> d!1713193 (= c!928607 (isEmpty!33183 s!2326))))

(declare-fun e!3314652 () Bool)

(assert (=> d!1713193 (= (matchZipper!1255 lt!2176523 s!2326) e!3314652)))

(declare-fun b!5337599 () Bool)

(assert (=> b!5337599 (= e!3314652 (nullableZipper!1362 lt!2176523))))

(declare-fun b!5337600 () Bool)

(assert (=> b!5337600 (= e!3314652 (matchZipper!1255 (derivationStepZipper!1252 lt!2176523 (head!11442 s!2326)) (tail!10539 s!2326)))))

(assert (= (and d!1713193 c!928607) b!5337599))

(assert (= (and d!1713193 (not c!928607)) b!5337600))

(assert (=> d!1713193 m!6370124))

(declare-fun m!6370358 () Bool)

(assert (=> b!5337599 m!6370358))

(assert (=> b!5337600 m!6370160))

(assert (=> b!5337600 m!6370160))

(declare-fun m!6370360 () Bool)

(assert (=> b!5337600 m!6370360))

(assert (=> b!5337600 m!6370164))

(assert (=> b!5337600 m!6370360))

(assert (=> b!5337600 m!6370164))

(declare-fun m!6370362 () Bool)

(assert (=> b!5337600 m!6370362))

(assert (=> b!5337012 d!1713193))

(declare-fun bs!1237759 () Bool)

(declare-fun d!1713195 () Bool)

(assert (= bs!1237759 (and d!1713195 d!1713055)))

(declare-fun lambda!273322 () Int)

(assert (=> bs!1237759 (= lambda!273322 lambda!273255)))

(declare-fun bs!1237760 () Bool)

(assert (= bs!1237760 (and d!1713195 d!1713089)))

(assert (=> bs!1237760 (= lambda!273322 lambda!273276)))

(declare-fun bs!1237761 () Bool)

(assert (= bs!1237761 (and d!1713195 d!1713155)))

(assert (=> bs!1237761 (= lambda!273322 lambda!273316)))

(declare-fun e!3314654 () Bool)

(assert (=> d!1713195 e!3314654))

(declare-fun res!2264141 () Bool)

(assert (=> d!1713195 (=> (not res!2264141) (not e!3314654))))

(declare-fun lt!2176658 () Regex!15011)

(assert (=> d!1713195 (= res!2264141 (validRegex!6747 lt!2176658))))

(declare-fun e!3314658 () Regex!15011)

(assert (=> d!1713195 (= lt!2176658 e!3314658)))

(declare-fun c!928608 () Bool)

(declare-fun e!3314656 () Bool)

(assert (=> d!1713195 (= c!928608 e!3314656)))

(declare-fun res!2264142 () Bool)

(assert (=> d!1713195 (=> (not res!2264142) (not e!3314656))))

(assert (=> d!1713195 (= res!2264142 ((_ is Cons!61208) (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> d!1713195 (forall!14431 (t!374549 (exprs!4895 (h!67658 zl!343))) lambda!273322)))

(assert (=> d!1713195 (= (generalisedConcat!680 (t!374549 (exprs!4895 (h!67658 zl!343)))) lt!2176658)))

(declare-fun b!5337601 () Bool)

(declare-fun e!3314653 () Bool)

(assert (=> b!5337601 (= e!3314653 (= lt!2176658 (head!11443 (t!374549 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337602 () Bool)

(declare-fun e!3314657 () Bool)

(assert (=> b!5337602 (= e!3314657 e!3314653)))

(declare-fun c!928611 () Bool)

(assert (=> b!5337602 (= c!928611 (isEmpty!33179 (tail!10540 (t!374549 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337603 () Bool)

(assert (=> b!5337603 (= e!3314657 (isEmptyExpr!897 lt!2176658))))

(declare-fun b!5337604 () Bool)

(declare-fun e!3314655 () Regex!15011)

(assert (=> b!5337604 (= e!3314655 (Concat!23856 (h!67656 (t!374549 (exprs!4895 (h!67658 zl!343)))) (generalisedConcat!680 (t!374549 (t!374549 (exprs!4895 (h!67658 zl!343)))))))))

(declare-fun b!5337605 () Bool)

(assert (=> b!5337605 (= e!3314655 EmptyExpr!15011)))

(declare-fun b!5337606 () Bool)

(assert (=> b!5337606 (= e!3314653 (isConcat!420 lt!2176658))))

(declare-fun b!5337607 () Bool)

(assert (=> b!5337607 (= e!3314658 e!3314655)))

(declare-fun c!928609 () Bool)

(assert (=> b!5337607 (= c!928609 ((_ is Cons!61208) (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337608 () Bool)

(assert (=> b!5337608 (= e!3314654 e!3314657)))

(declare-fun c!928610 () Bool)

(assert (=> b!5337608 (= c!928610 (isEmpty!33179 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337609 () Bool)

(assert (=> b!5337609 (= e!3314656 (isEmpty!33179 (t!374549 (t!374549 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337610 () Bool)

(assert (=> b!5337610 (= e!3314658 (h!67656 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(assert (= (and d!1713195 res!2264142) b!5337609))

(assert (= (and d!1713195 c!928608) b!5337610))

(assert (= (and d!1713195 (not c!928608)) b!5337607))

(assert (= (and b!5337607 c!928609) b!5337604))

(assert (= (and b!5337607 (not c!928609)) b!5337605))

(assert (= (and d!1713195 res!2264141) b!5337608))

(assert (= (and b!5337608 c!928610) b!5337603))

(assert (= (and b!5337608 (not c!928610)) b!5337602))

(assert (= (and b!5337602 c!928611) b!5337601))

(assert (= (and b!5337602 (not c!928611)) b!5337606))

(declare-fun m!6370364 () Bool)

(assert (=> b!5337604 m!6370364))

(declare-fun m!6370366 () Bool)

(assert (=> b!5337609 m!6370366))

(declare-fun m!6370368 () Bool)

(assert (=> b!5337602 m!6370368))

(assert (=> b!5337602 m!6370368))

(declare-fun m!6370370 () Bool)

(assert (=> b!5337602 m!6370370))

(declare-fun m!6370372 () Bool)

(assert (=> d!1713195 m!6370372))

(declare-fun m!6370374 () Bool)

(assert (=> d!1713195 m!6370374))

(assert (=> b!5337608 m!6369850))

(declare-fun m!6370376 () Bool)

(assert (=> b!5337606 m!6370376))

(declare-fun m!6370378 () Bool)

(assert (=> b!5337601 m!6370378))

(declare-fun m!6370380 () Bool)

(assert (=> b!5337603 m!6370380))

(assert (=> b!5337012 d!1713195))

(declare-fun d!1713197 () Bool)

(assert (=> d!1713197 (= (isDefined!11825 (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 Nil!61209 s!2326 s!2326)) (not (isEmpty!33184 (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 Nil!61209 s!2326 s!2326))))))

(declare-fun bs!1237762 () Bool)

(assert (= bs!1237762 d!1713197))

(assert (=> bs!1237762 m!6369830))

(declare-fun m!6370382 () Bool)

(assert (=> bs!1237762 m!6370382))

(assert (=> b!5337012 d!1713197))

(declare-fun d!1713199 () Bool)

(declare-fun c!928612 () Bool)

(assert (=> d!1713199 (= c!928612 (isEmpty!33183 s!2326))))

(declare-fun e!3314659 () Bool)

(assert (=> d!1713199 (= (matchZipper!1255 z!1189 s!2326) e!3314659)))

(declare-fun b!5337611 () Bool)

(assert (=> b!5337611 (= e!3314659 (nullableZipper!1362 z!1189))))

(declare-fun b!5337612 () Bool)

(assert (=> b!5337612 (= e!3314659 (matchZipper!1255 (derivationStepZipper!1252 z!1189 (head!11442 s!2326)) (tail!10539 s!2326)))))

(assert (= (and d!1713199 c!928612) b!5337611))

(assert (= (and d!1713199 (not c!928612)) b!5337612))

(assert (=> d!1713199 m!6370124))

(declare-fun m!6370384 () Bool)

(assert (=> b!5337611 m!6370384))

(assert (=> b!5337612 m!6370160))

(assert (=> b!5337612 m!6370160))

(declare-fun m!6370386 () Bool)

(assert (=> b!5337612 m!6370386))

(assert (=> b!5337612 m!6370164))

(assert (=> b!5337612 m!6370386))

(assert (=> b!5337612 m!6370164))

(declare-fun m!6370388 () Bool)

(assert (=> b!5337612 m!6370388))

(assert (=> b!5337012 d!1713199))

(declare-fun d!1713201 () Bool)

(assert (=> d!1713201 (= (Exists!2192 lambda!273247) (choose!39991 lambda!273247))))

(declare-fun bs!1237763 () Bool)

(assert (= bs!1237763 d!1713201))

(declare-fun m!6370390 () Bool)

(assert (=> bs!1237763 m!6370390))

(assert (=> b!5337012 d!1713201))

(declare-fun bs!1237764 () Bool)

(declare-fun d!1713203 () Bool)

(assert (= bs!1237764 (and d!1713203 b!5337009)))

(declare-fun lambda!273323 () Int)

(assert (=> bs!1237764 (not (= lambda!273323 lambda!273244))))

(declare-fun bs!1237765 () Bool)

(assert (= bs!1237765 (and d!1713203 b!5337012)))

(assert (=> bs!1237765 (= lambda!273323 lambda!273248)))

(declare-fun bs!1237766 () Bool)

(assert (= bs!1237766 (and d!1713203 d!1713133)))

(assert (=> bs!1237766 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273323 lambda!273309))))

(assert (=> bs!1237765 (not (= lambda!273323 lambda!273247))))

(declare-fun bs!1237767 () Bool)

(assert (= bs!1237767 (and d!1713203 b!5337345)))

(assert (=> bs!1237767 (not (= lambda!273323 lambda!273287))))

(declare-fun bs!1237768 () Bool)

(assert (= bs!1237768 (and d!1713203 b!5337495)))

(assert (=> bs!1237768 (not (= lambda!273323 lambda!273315))))

(assert (=> bs!1237764 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 r!7292)) (= lt!2176521 (regTwo!30534 r!7292))) (= lambda!273323 lambda!273243))))

(declare-fun bs!1237769 () Bool)

(assert (= bs!1237769 (and d!1713203 d!1713139)))

(assert (=> bs!1237769 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273323 lambda!273313))))

(assert (=> bs!1237765 (not (= lambda!273323 lambda!273249))))

(declare-fun bs!1237770 () Bool)

(assert (= bs!1237770 (and d!1713203 d!1713187)))

(assert (=> bs!1237770 (not (= lambda!273323 lambda!273321))))

(assert (=> bs!1237765 (= (and (= (regTwo!30534 (regOne!30534 r!7292)) (regOne!30534 (regOne!30534 r!7292))) (= lt!2176521 lt!2176535)) (= lambda!273323 lambda!273246))))

(assert (=> bs!1237766 (not (= lambda!273323 lambda!273310))))

(declare-fun bs!1237771 () Bool)

(assert (= bs!1237771 (and d!1713203 b!5337492)))

(assert (=> bs!1237771 (not (= lambda!273323 lambda!273314))))

(declare-fun bs!1237772 () Bool)

(assert (= bs!1237772 (and d!1713203 b!5337348)))

(assert (=> bs!1237772 (not (= lambda!273323 lambda!273288))))

(assert (=> bs!1237770 (= lambda!273323 lambda!273320)))

(assert (=> d!1713203 true))

(assert (=> d!1713203 true))

(assert (=> d!1713203 true))

(assert (=> d!1713203 (= (isDefined!11825 (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 Nil!61209 s!2326 s!2326)) (Exists!2192 lambda!273323))))

(declare-fun lt!2176659 () Unit!153562)

(assert (=> d!1713203 (= lt!2176659 (choose!39996 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326))))

(assert (=> d!1713203 (validRegex!6747 (regTwo!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713203 (= (lemmaFindConcatSeparationEquivalentToExists!1300 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 s!2326) lt!2176659)))

(declare-fun bs!1237773 () Bool)

(assert (= bs!1237773 d!1713203))

(declare-fun m!6370398 () Bool)

(assert (=> bs!1237773 m!6370398))

(assert (=> bs!1237773 m!6370356))

(assert (=> bs!1237773 m!6369830))

(declare-fun m!6370400 () Bool)

(assert (=> bs!1237773 m!6370400))

(assert (=> bs!1237773 m!6369830))

(assert (=> bs!1237773 m!6369832))

(assert (=> b!5337012 d!1713203))

(declare-fun b!5337622 () Bool)

(declare-fun e!3314671 () Bool)

(declare-fun lt!2176660 () Option!15122)

(assert (=> b!5337622 (= e!3314671 (not (isDefined!11825 lt!2176660)))))

(declare-fun b!5337623 () Bool)

(declare-fun res!2264150 () Bool)

(declare-fun e!3314670 () Bool)

(assert (=> b!5337623 (=> (not res!2264150) (not e!3314670))))

(assert (=> b!5337623 (= res!2264150 (matchR!7196 (regTwo!30534 (regOne!30534 r!7292)) (_1!35513 (get!21053 lt!2176660))))))

(declare-fun b!5337624 () Bool)

(declare-fun e!3314667 () Option!15122)

(declare-fun e!3314669 () Option!15122)

(assert (=> b!5337624 (= e!3314667 e!3314669)))

(declare-fun c!928615 () Bool)

(assert (=> b!5337624 (= c!928615 ((_ is Nil!61209) s!2326))))

(declare-fun b!5337625 () Bool)

(assert (=> b!5337625 (= e!3314667 (Some!15121 (tuple2!64421 Nil!61209 s!2326)))))

(declare-fun b!5337626 () Bool)

(declare-fun res!2264152 () Bool)

(assert (=> b!5337626 (=> (not res!2264152) (not e!3314670))))

(assert (=> b!5337626 (= res!2264152 (matchR!7196 lt!2176521 (_2!35513 (get!21053 lt!2176660))))))

(declare-fun b!5337627 () Bool)

(declare-fun e!3314668 () Bool)

(assert (=> b!5337627 (= e!3314668 (matchR!7196 lt!2176521 s!2326))))

(declare-fun b!5337628 () Bool)

(declare-fun lt!2176661 () Unit!153562)

(declare-fun lt!2176662 () Unit!153562)

(assert (=> b!5337628 (= lt!2176661 lt!2176662)))

(assert (=> b!5337628 (= (++!13342 (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326)) s!2326)))

(assert (=> b!5337628 (= lt!2176662 (lemmaMoveElementToOtherListKeepsConcatEq!1757 Nil!61209 (h!67657 s!2326) (t!374550 s!2326) s!2326))))

(assert (=> b!5337628 (= e!3314669 (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326) s!2326))))

(declare-fun b!5337629 () Bool)

(assert (=> b!5337629 (= e!3314669 None!15121)))

(declare-fun d!1713207 () Bool)

(assert (=> d!1713207 e!3314671))

(declare-fun res!2264151 () Bool)

(assert (=> d!1713207 (=> res!2264151 e!3314671)))

(assert (=> d!1713207 (= res!2264151 e!3314670)))

(declare-fun res!2264148 () Bool)

(assert (=> d!1713207 (=> (not res!2264148) (not e!3314670))))

(assert (=> d!1713207 (= res!2264148 (isDefined!11825 lt!2176660))))

(assert (=> d!1713207 (= lt!2176660 e!3314667)))

(declare-fun c!928616 () Bool)

(assert (=> d!1713207 (= c!928616 e!3314668)))

(declare-fun res!2264149 () Bool)

(assert (=> d!1713207 (=> (not res!2264149) (not e!3314668))))

(assert (=> d!1713207 (= res!2264149 (matchR!7196 (regTwo!30534 (regOne!30534 r!7292)) Nil!61209))))

(assert (=> d!1713207 (validRegex!6747 (regTwo!30534 (regOne!30534 r!7292)))))

(assert (=> d!1713207 (= (findConcatSeparation!1536 (regTwo!30534 (regOne!30534 r!7292)) lt!2176521 Nil!61209 s!2326 s!2326) lt!2176660)))

(declare-fun b!5337630 () Bool)

(assert (=> b!5337630 (= e!3314670 (= (++!13342 (_1!35513 (get!21053 lt!2176660)) (_2!35513 (get!21053 lt!2176660))) s!2326))))

(assert (= (and d!1713207 res!2264149) b!5337627))

(assert (= (and d!1713207 c!928616) b!5337625))

(assert (= (and d!1713207 (not c!928616)) b!5337624))

(assert (= (and b!5337624 c!928615) b!5337629))

(assert (= (and b!5337624 (not c!928615)) b!5337628))

(assert (= (and d!1713207 res!2264148) b!5337623))

(assert (= (and b!5337623 res!2264150) b!5337626))

(assert (= (and b!5337626 res!2264152) b!5337630))

(assert (= (and d!1713207 (not res!2264151)) b!5337622))

(declare-fun m!6370402 () Bool)

(assert (=> d!1713207 m!6370402))

(declare-fun m!6370404 () Bool)

(assert (=> d!1713207 m!6370404))

(assert (=> d!1713207 m!6370356))

(declare-fun m!6370406 () Bool)

(assert (=> b!5337626 m!6370406))

(declare-fun m!6370408 () Bool)

(assert (=> b!5337626 m!6370408))

(assert (=> b!5337628 m!6370330))

(assert (=> b!5337628 m!6370330))

(assert (=> b!5337628 m!6370332))

(assert (=> b!5337628 m!6370334))

(assert (=> b!5337628 m!6370330))

(declare-fun m!6370410 () Bool)

(assert (=> b!5337628 m!6370410))

(assert (=> b!5337630 m!6370406))

(declare-fun m!6370412 () Bool)

(assert (=> b!5337630 m!6370412))

(assert (=> b!5337622 m!6370402))

(assert (=> b!5337623 m!6370406))

(declare-fun m!6370414 () Bool)

(assert (=> b!5337623 m!6370414))

(declare-fun m!6370416 () Bool)

(assert (=> b!5337627 m!6370416))

(assert (=> b!5337012 d!1713207))

(declare-fun b!5337633 () Bool)

(declare-fun res!2264156 () Bool)

(declare-fun e!3314677 () Bool)

(assert (=> b!5337633 (=> res!2264156 e!3314677)))

(assert (=> b!5337633 (= res!2264156 (not (isEmpty!33183 (tail!10539 s!2326))))))

(declare-fun b!5337634 () Bool)

(declare-fun e!3314678 () Bool)

(assert (=> b!5337634 (= e!3314678 e!3314677)))

(declare-fun res!2264153 () Bool)

(assert (=> b!5337634 (=> res!2264153 e!3314677)))

(declare-fun call!381529 () Bool)

(assert (=> b!5337634 (= res!2264153 call!381529)))

(declare-fun b!5337635 () Bool)

(declare-fun e!3314675 () Bool)

(assert (=> b!5337635 (= e!3314675 (matchR!7196 (derivativeStep!4183 lt!2176535 (head!11442 s!2326)) (tail!10539 s!2326)))))

(declare-fun d!1713209 () Bool)

(declare-fun e!3314672 () Bool)

(assert (=> d!1713209 e!3314672))

(declare-fun c!928617 () Bool)

(assert (=> d!1713209 (= c!928617 ((_ is EmptyExpr!15011) lt!2176535))))

(declare-fun lt!2176665 () Bool)

(assert (=> d!1713209 (= lt!2176665 e!3314675)))

(declare-fun c!928619 () Bool)

(assert (=> d!1713209 (= c!928619 (isEmpty!33183 s!2326))))

(assert (=> d!1713209 (validRegex!6747 lt!2176535)))

(assert (=> d!1713209 (= (matchR!7196 lt!2176535 s!2326) lt!2176665)))

(declare-fun b!5337636 () Bool)

(declare-fun res!2264157 () Bool)

(declare-fun e!3314674 () Bool)

(assert (=> b!5337636 (=> res!2264157 e!3314674)))

(assert (=> b!5337636 (= res!2264157 (not ((_ is ElementMatch!15011) lt!2176535)))))

(declare-fun e!3314676 () Bool)

(assert (=> b!5337636 (= e!3314676 e!3314674)))

(declare-fun b!5337637 () Bool)

(assert (=> b!5337637 (= e!3314677 (not (= (head!11442 s!2326) (c!928425 lt!2176535))))))

(declare-fun b!5337638 () Bool)

(assert (=> b!5337638 (= e!3314672 (= lt!2176665 call!381529))))

(declare-fun b!5337639 () Bool)

(assert (=> b!5337639 (= e!3314674 e!3314678)))

(declare-fun res!2264158 () Bool)

(assert (=> b!5337639 (=> (not res!2264158) (not e!3314678))))

(assert (=> b!5337639 (= res!2264158 (not lt!2176665))))

(declare-fun b!5337640 () Bool)

(declare-fun e!3314673 () Bool)

(assert (=> b!5337640 (= e!3314673 (= (head!11442 s!2326) (c!928425 lt!2176535)))))

(declare-fun b!5337641 () Bool)

(assert (=> b!5337641 (= e!3314675 (nullable!5180 lt!2176535))))

(declare-fun b!5337643 () Bool)

(declare-fun res!2264155 () Bool)

(assert (=> b!5337643 (=> res!2264155 e!3314674)))

(assert (=> b!5337643 (= res!2264155 e!3314673)))

(declare-fun res!2264160 () Bool)

(assert (=> b!5337643 (=> (not res!2264160) (not e!3314673))))

(assert (=> b!5337643 (= res!2264160 lt!2176665)))

(declare-fun bm!381524 () Bool)

(assert (=> bm!381524 (= call!381529 (isEmpty!33183 s!2326))))

(declare-fun b!5337645 () Bool)

(declare-fun res!2264154 () Bool)

(assert (=> b!5337645 (=> (not res!2264154) (not e!3314673))))

(assert (=> b!5337645 (= res!2264154 (not call!381529))))

(declare-fun b!5337646 () Bool)

(assert (=> b!5337646 (= e!3314676 (not lt!2176665))))

(declare-fun b!5337647 () Bool)

(assert (=> b!5337647 (= e!3314672 e!3314676)))

(declare-fun c!928618 () Bool)

(assert (=> b!5337647 (= c!928618 ((_ is EmptyLang!15011) lt!2176535))))

(declare-fun b!5337648 () Bool)

(declare-fun res!2264159 () Bool)

(assert (=> b!5337648 (=> (not res!2264159) (not e!3314673))))

(assert (=> b!5337648 (= res!2264159 (isEmpty!33183 (tail!10539 s!2326)))))

(assert (= (and d!1713209 c!928619) b!5337641))

(assert (= (and d!1713209 (not c!928619)) b!5337635))

(assert (= (and d!1713209 c!928617) b!5337638))

(assert (= (and d!1713209 (not c!928617)) b!5337647))

(assert (= (and b!5337647 c!928618) b!5337646))

(assert (= (and b!5337647 (not c!928618)) b!5337636))

(assert (= (and b!5337636 (not res!2264157)) b!5337643))

(assert (= (and b!5337643 res!2264160) b!5337645))

(assert (= (and b!5337645 res!2264154) b!5337648))

(assert (= (and b!5337648 res!2264159) b!5337640))

(assert (= (and b!5337643 (not res!2264155)) b!5337639))

(assert (= (and b!5337639 res!2264158) b!5337634))

(assert (= (and b!5337634 (not res!2264153)) b!5337633))

(assert (= (and b!5337633 (not res!2264156)) b!5337637))

(assert (= (or b!5337638 b!5337634 b!5337645) bm!381524))

(assert (=> b!5337635 m!6370160))

(assert (=> b!5337635 m!6370160))

(declare-fun m!6370418 () Bool)

(assert (=> b!5337635 m!6370418))

(assert (=> b!5337635 m!6370164))

(assert (=> b!5337635 m!6370418))

(assert (=> b!5337635 m!6370164))

(declare-fun m!6370420 () Bool)

(assert (=> b!5337635 m!6370420))

(assert (=> b!5337648 m!6370164))

(assert (=> b!5337648 m!6370164))

(assert (=> b!5337648 m!6370168))

(assert (=> bm!381524 m!6370124))

(assert (=> b!5337637 m!6370160))

(assert (=> b!5337633 m!6370164))

(assert (=> b!5337633 m!6370164))

(assert (=> b!5337633 m!6370168))

(declare-fun m!6370422 () Bool)

(assert (=> b!5337641 m!6370422))

(assert (=> d!1713209 m!6370124))

(assert (=> d!1713209 m!6370080))

(assert (=> b!5337640 m!6370160))

(assert (=> b!5337012 d!1713209))

(declare-fun d!1713211 () Bool)

(assert (=> d!1713211 (= (Exists!2192 lambda!273249) (choose!39991 lambda!273249))))

(declare-fun bs!1237774 () Bool)

(assert (= bs!1237774 d!1713211))

(declare-fun m!6370424 () Bool)

(assert (=> bs!1237774 m!6370424))

(assert (=> b!5337012 d!1713211))

(declare-fun b!5337665 () Bool)

(declare-fun e!3314694 () Bool)

(declare-fun e!3314695 () Bool)

(assert (=> b!5337665 (= e!3314694 e!3314695)))

(declare-fun res!2264168 () Bool)

(assert (=> b!5337665 (=> (not res!2264168) (not e!3314695))))

(declare-fun call!381530 () Bool)

(assert (=> b!5337665 (= res!2264168 call!381530)))

(declare-fun b!5337666 () Bool)

(declare-fun e!3314697 () Bool)

(declare-fun e!3314692 () Bool)

(assert (=> b!5337666 (= e!3314697 e!3314692)))

(declare-fun c!928628 () Bool)

(assert (=> b!5337666 (= c!928628 ((_ is Union!15011) r!7292))))

(declare-fun b!5337667 () Bool)

(declare-fun res!2264167 () Bool)

(assert (=> b!5337667 (=> res!2264167 e!3314694)))

(assert (=> b!5337667 (= res!2264167 (not ((_ is Concat!23856) r!7292)))))

(assert (=> b!5337667 (= e!3314692 e!3314694)))

(declare-fun b!5337668 () Bool)

(declare-fun e!3314693 () Bool)

(assert (=> b!5337668 (= e!3314693 e!3314697)))

(declare-fun c!928629 () Bool)

(assert (=> b!5337668 (= c!928629 ((_ is Star!15011) r!7292))))

(declare-fun d!1713213 () Bool)

(declare-fun res!2264165 () Bool)

(assert (=> d!1713213 (=> res!2264165 e!3314693)))

(assert (=> d!1713213 (= res!2264165 ((_ is ElementMatch!15011) r!7292))))

(assert (=> d!1713213 (= (validRegex!6747 r!7292) e!3314693)))

(declare-fun call!381532 () Bool)

(declare-fun bm!381525 () Bool)

(assert (=> bm!381525 (= call!381532 (validRegex!6747 (ite c!928629 (reg!15340 r!7292) (ite c!928628 (regOne!30535 r!7292) (regOne!30534 r!7292)))))))

(declare-fun b!5337669 () Bool)

(declare-fun e!3314696 () Bool)

(assert (=> b!5337669 (= e!3314697 e!3314696)))

(declare-fun res!2264169 () Bool)

(assert (=> b!5337669 (= res!2264169 (not (nullable!5180 (reg!15340 r!7292))))))

(assert (=> b!5337669 (=> (not res!2264169) (not e!3314696))))

(declare-fun b!5337670 () Bool)

(assert (=> b!5337670 (= e!3314696 call!381532)))

(declare-fun b!5337671 () Bool)

(declare-fun e!3314691 () Bool)

(declare-fun call!381531 () Bool)

(assert (=> b!5337671 (= e!3314691 call!381531)))

(declare-fun b!5337672 () Bool)

(declare-fun res!2264166 () Bool)

(assert (=> b!5337672 (=> (not res!2264166) (not e!3314691))))

(assert (=> b!5337672 (= res!2264166 call!381530)))

(assert (=> b!5337672 (= e!3314692 e!3314691)))

(declare-fun bm!381526 () Bool)

(assert (=> bm!381526 (= call!381531 (validRegex!6747 (ite c!928628 (regTwo!30535 r!7292) (regTwo!30534 r!7292))))))

(declare-fun b!5337673 () Bool)

(assert (=> b!5337673 (= e!3314695 call!381531)))

(declare-fun bm!381527 () Bool)

(assert (=> bm!381527 (= call!381530 call!381532)))

(assert (= (and d!1713213 (not res!2264165)) b!5337668))

(assert (= (and b!5337668 c!928629) b!5337669))

(assert (= (and b!5337668 (not c!928629)) b!5337666))

(assert (= (and b!5337669 res!2264169) b!5337670))

(assert (= (and b!5337666 c!928628) b!5337672))

(assert (= (and b!5337666 (not c!928628)) b!5337667))

(assert (= (and b!5337672 res!2264166) b!5337671))

(assert (= (and b!5337667 (not res!2264167)) b!5337665))

(assert (= (and b!5337665 res!2264168) b!5337673))

(assert (= (or b!5337671 b!5337673) bm!381526))

(assert (= (or b!5337672 b!5337665) bm!381527))

(assert (= (or b!5337670 bm!381527) bm!381525))

(declare-fun m!6370426 () Bool)

(assert (=> bm!381525 m!6370426))

(declare-fun m!6370428 () Bool)

(assert (=> b!5337669 m!6370428))

(declare-fun m!6370430 () Bool)

(assert (=> bm!381526 m!6370430))

(assert (=> start!562358 d!1713213))

(declare-fun b!5337729 () Bool)

(declare-fun e!3314735 () (InoxSet Context!8790))

(assert (=> b!5337729 (= e!3314735 ((as const (Array Context!8790 Bool)) false))))

(declare-fun bm!381543 () Bool)

(declare-fun call!381552 () (InoxSet Context!8790))

(declare-fun call!381551 () (InoxSet Context!8790))

(assert (=> bm!381543 (= call!381552 call!381551)))

(declare-fun d!1713215 () Bool)

(declare-fun c!928654 () Bool)

(assert (=> d!1713215 (= c!928654 (and ((_ is ElementMatch!15011) (regOne!30534 (regOne!30534 r!7292))) (= (c!928425 (regOne!30534 (regOne!30534 r!7292))) (h!67657 s!2326))))))

(declare-fun e!3314731 () (InoxSet Context!8790))

(assert (=> d!1713215 (= (derivationStepZipperDown!459 (regOne!30534 (regOne!30534 r!7292)) (Context!8791 lt!2176514) (h!67657 s!2326)) e!3314731)))

(declare-fun b!5337730 () Bool)

(declare-fun e!3314732 () (InoxSet Context!8790))

(declare-fun e!3314730 () (InoxSet Context!8790))

(assert (=> b!5337730 (= e!3314732 e!3314730)))

(declare-fun c!928655 () Bool)

(assert (=> b!5337730 (= c!928655 ((_ is Concat!23856) (regOne!30534 (regOne!30534 r!7292))))))

(declare-fun b!5337731 () Bool)

(declare-fun e!3314733 () (InoxSet Context!8790))

(assert (=> b!5337731 (= e!3314731 e!3314733)))

(declare-fun c!928656 () Bool)

(assert (=> b!5337731 (= c!928656 ((_ is Union!15011) (regOne!30534 (regOne!30534 r!7292))))))

(declare-fun b!5337732 () Bool)

(declare-fun call!381548 () (InoxSet Context!8790))

(assert (=> b!5337732 (= e!3314730 call!381548)))

(declare-fun bm!381544 () Bool)

(declare-fun call!381549 () List!61332)

(declare-fun call!381553 () List!61332)

(assert (=> bm!381544 (= call!381549 call!381553)))

(declare-fun bm!381545 () Bool)

(declare-fun c!928653 () Bool)

(assert (=> bm!381545 (= call!381551 (derivationStepZipperDown!459 (ite c!928656 (regOne!30535 (regOne!30534 (regOne!30534 r!7292))) (ite c!928653 (regTwo!30534 (regOne!30534 (regOne!30534 r!7292))) (ite c!928655 (regOne!30534 (regOne!30534 (regOne!30534 r!7292))) (reg!15340 (regOne!30534 (regOne!30534 r!7292)))))) (ite (or c!928656 c!928653) (Context!8791 lt!2176514) (Context!8791 call!381549)) (h!67657 s!2326)))))

(declare-fun bm!381546 () Bool)

(declare-fun $colon$colon!1412 (List!61332 Regex!15011) List!61332)

(assert (=> bm!381546 (= call!381553 ($colon$colon!1412 (exprs!4895 (Context!8791 lt!2176514)) (ite (or c!928653 c!928655) (regTwo!30534 (regOne!30534 (regOne!30534 r!7292))) (regOne!30534 (regOne!30534 r!7292)))))))

(declare-fun b!5337733 () Bool)

(declare-fun e!3314734 () Bool)

(assert (=> b!5337733 (= c!928653 e!3314734)))

(declare-fun res!2264179 () Bool)

(assert (=> b!5337733 (=> (not res!2264179) (not e!3314734))))

(assert (=> b!5337733 (= res!2264179 ((_ is Concat!23856) (regOne!30534 (regOne!30534 r!7292))))))

(assert (=> b!5337733 (= e!3314733 e!3314732)))

(declare-fun b!5337734 () Bool)

(assert (=> b!5337734 (= e!3314734 (nullable!5180 (regOne!30534 (regOne!30534 (regOne!30534 r!7292)))))))

(declare-fun b!5337735 () Bool)

(assert (=> b!5337735 (= e!3314731 (store ((as const (Array Context!8790 Bool)) false) (Context!8791 lt!2176514) true))))

(declare-fun bm!381547 () Bool)

(assert (=> bm!381547 (= call!381548 call!381552)))

(declare-fun call!381550 () (InoxSet Context!8790))

(declare-fun bm!381548 () Bool)

(assert (=> bm!381548 (= call!381550 (derivationStepZipperDown!459 (ite c!928656 (regTwo!30535 (regOne!30534 (regOne!30534 r!7292))) (regOne!30534 (regOne!30534 (regOne!30534 r!7292)))) (ite c!928656 (Context!8791 lt!2176514) (Context!8791 call!381553)) (h!67657 s!2326)))))

(declare-fun b!5337736 () Bool)

(assert (=> b!5337736 (= e!3314735 call!381548)))

(declare-fun b!5337737 () Bool)

(assert (=> b!5337737 (= e!3314733 ((_ map or) call!381551 call!381550))))

(declare-fun b!5337738 () Bool)

(assert (=> b!5337738 (= e!3314732 ((_ map or) call!381550 call!381552))))

(declare-fun b!5337739 () Bool)

(declare-fun c!928657 () Bool)

(assert (=> b!5337739 (= c!928657 ((_ is Star!15011) (regOne!30534 (regOne!30534 r!7292))))))

(assert (=> b!5337739 (= e!3314730 e!3314735)))

(assert (= (and d!1713215 c!928654) b!5337735))

(assert (= (and d!1713215 (not c!928654)) b!5337731))

(assert (= (and b!5337731 c!928656) b!5337737))

(assert (= (and b!5337731 (not c!928656)) b!5337733))

(assert (= (and b!5337733 res!2264179) b!5337734))

(assert (= (and b!5337733 c!928653) b!5337738))

(assert (= (and b!5337733 (not c!928653)) b!5337730))

(assert (= (and b!5337730 c!928655) b!5337732))

(assert (= (and b!5337730 (not c!928655)) b!5337739))

(assert (= (and b!5337739 c!928657) b!5337736))

(assert (= (and b!5337739 (not c!928657)) b!5337729))

(assert (= (or b!5337732 b!5337736) bm!381544))

(assert (= (or b!5337732 b!5337736) bm!381547))

(assert (= (or b!5337738 bm!381544) bm!381546))

(assert (= (or b!5337738 bm!381547) bm!381543))

(assert (= (or b!5337737 b!5337738) bm!381548))

(assert (= (or b!5337737 bm!381543) bm!381545))

(declare-fun m!6370478 () Bool)

(assert (=> b!5337734 m!6370478))

(declare-fun m!6370480 () Bool)

(assert (=> bm!381546 m!6370480))

(declare-fun m!6370482 () Bool)

(assert (=> b!5337735 m!6370482))

(declare-fun m!6370484 () Bool)

(assert (=> bm!381548 m!6370484))

(declare-fun m!6370486 () Bool)

(assert (=> bm!381545 m!6370486))

(assert (=> b!5336991 d!1713215))

(declare-fun d!1713235 () Bool)

(declare-fun lt!2176677 () Regex!15011)

(assert (=> d!1713235 (validRegex!6747 lt!2176677)))

(assert (=> d!1713235 (= lt!2176677 (generalisedUnion!940 (unfocusZipperList!453 zl!343)))))

(assert (=> d!1713235 (= (unfocusZipper!753 zl!343) lt!2176677)))

(declare-fun bs!1237803 () Bool)

(assert (= bs!1237803 d!1713235))

(declare-fun m!6370504 () Bool)

(assert (=> bs!1237803 m!6370504))

(assert (=> bs!1237803 m!6369780))

(assert (=> bs!1237803 m!6369780))

(assert (=> bs!1237803 m!6369782))

(assert (=> b!5337011 d!1713235))

(declare-fun bs!1237822 () Bool)

(declare-fun d!1713239 () Bool)

(assert (= bs!1237822 (and d!1713239 d!1713055)))

(declare-fun lambda!273336 () Int)

(assert (=> bs!1237822 (= lambda!273336 lambda!273255)))

(declare-fun bs!1237823 () Bool)

(assert (= bs!1237823 (and d!1713239 d!1713089)))

(assert (=> bs!1237823 (= lambda!273336 lambda!273276)))

(declare-fun bs!1237824 () Bool)

(assert (= bs!1237824 (and d!1713239 d!1713155)))

(assert (=> bs!1237824 (= lambda!273336 lambda!273316)))

(declare-fun bs!1237825 () Bool)

(assert (= bs!1237825 (and d!1713239 d!1713195)))

(assert (=> bs!1237825 (= lambda!273336 lambda!273322)))

(declare-fun b!5337806 () Bool)

(declare-fun e!3314779 () Regex!15011)

(assert (=> b!5337806 (= e!3314779 EmptyLang!15011)))

(declare-fun e!3314776 () Bool)

(assert (=> d!1713239 e!3314776))

(declare-fun res!2264202 () Bool)

(assert (=> d!1713239 (=> (not res!2264202) (not e!3314776))))

(declare-fun lt!2176685 () Regex!15011)

(assert (=> d!1713239 (= res!2264202 (validRegex!6747 lt!2176685))))

(declare-fun e!3314774 () Regex!15011)

(assert (=> d!1713239 (= lt!2176685 e!3314774)))

(declare-fun c!928681 () Bool)

(declare-fun e!3314777 () Bool)

(assert (=> d!1713239 (= c!928681 e!3314777)))

(declare-fun res!2264203 () Bool)

(assert (=> d!1713239 (=> (not res!2264203) (not e!3314777))))

(assert (=> d!1713239 (= res!2264203 ((_ is Cons!61208) (unfocusZipperList!453 zl!343)))))

(assert (=> d!1713239 (forall!14431 (unfocusZipperList!453 zl!343) lambda!273336)))

(assert (=> d!1713239 (= (generalisedUnion!940 (unfocusZipperList!453 zl!343)) lt!2176685)))

(declare-fun b!5337807 () Bool)

(assert (=> b!5337807 (= e!3314777 (isEmpty!33179 (t!374549 (unfocusZipperList!453 zl!343))))))

(declare-fun b!5337808 () Bool)

(declare-fun e!3314775 () Bool)

(declare-fun isUnion!336 (Regex!15011) Bool)

(assert (=> b!5337808 (= e!3314775 (isUnion!336 lt!2176685))))

(declare-fun b!5337809 () Bool)

(declare-fun e!3314778 () Bool)

(assert (=> b!5337809 (= e!3314778 e!3314775)))

(declare-fun c!928682 () Bool)

(assert (=> b!5337809 (= c!928682 (isEmpty!33179 (tail!10540 (unfocusZipperList!453 zl!343))))))

(declare-fun b!5337810 () Bool)

(assert (=> b!5337810 (= e!3314774 (h!67656 (unfocusZipperList!453 zl!343)))))

(declare-fun b!5337811 () Bool)

(assert (=> b!5337811 (= e!3314776 e!3314778)))

(declare-fun c!928680 () Bool)

(assert (=> b!5337811 (= c!928680 (isEmpty!33179 (unfocusZipperList!453 zl!343)))))

(declare-fun b!5337812 () Bool)

(declare-fun isEmptyLang!904 (Regex!15011) Bool)

(assert (=> b!5337812 (= e!3314778 (isEmptyLang!904 lt!2176685))))

(declare-fun b!5337813 () Bool)

(assert (=> b!5337813 (= e!3314774 e!3314779)))

(declare-fun c!928683 () Bool)

(assert (=> b!5337813 (= c!928683 ((_ is Cons!61208) (unfocusZipperList!453 zl!343)))))

(declare-fun b!5337814 () Bool)

(assert (=> b!5337814 (= e!3314775 (= lt!2176685 (head!11443 (unfocusZipperList!453 zl!343))))))

(declare-fun b!5337815 () Bool)

(assert (=> b!5337815 (= e!3314779 (Union!15011 (h!67656 (unfocusZipperList!453 zl!343)) (generalisedUnion!940 (t!374549 (unfocusZipperList!453 zl!343)))))))

(assert (= (and d!1713239 res!2264203) b!5337807))

(assert (= (and d!1713239 c!928681) b!5337810))

(assert (= (and d!1713239 (not c!928681)) b!5337813))

(assert (= (and b!5337813 c!928683) b!5337815))

(assert (= (and b!5337813 (not c!928683)) b!5337806))

(assert (= (and d!1713239 res!2264202) b!5337811))

(assert (= (and b!5337811 c!928680) b!5337812))

(assert (= (and b!5337811 (not c!928680)) b!5337809))

(assert (= (and b!5337809 c!928682) b!5337814))

(assert (= (and b!5337809 (not c!928682)) b!5337808))

(declare-fun m!6370540 () Bool)

(assert (=> b!5337807 m!6370540))

(declare-fun m!6370542 () Bool)

(assert (=> b!5337808 m!6370542))

(declare-fun m!6370544 () Bool)

(assert (=> d!1713239 m!6370544))

(assert (=> d!1713239 m!6369780))

(declare-fun m!6370546 () Bool)

(assert (=> d!1713239 m!6370546))

(declare-fun m!6370548 () Bool)

(assert (=> b!5337812 m!6370548))

(assert (=> b!5337811 m!6369780))

(declare-fun m!6370550 () Bool)

(assert (=> b!5337811 m!6370550))

(declare-fun m!6370552 () Bool)

(assert (=> b!5337815 m!6370552))

(assert (=> b!5337809 m!6369780))

(declare-fun m!6370554 () Bool)

(assert (=> b!5337809 m!6370554))

(assert (=> b!5337809 m!6370554))

(declare-fun m!6370556 () Bool)

(assert (=> b!5337809 m!6370556))

(assert (=> b!5337814 m!6369780))

(declare-fun m!6370558 () Bool)

(assert (=> b!5337814 m!6370558))

(assert (=> b!5336990 d!1713239))

(declare-fun bs!1237845 () Bool)

(declare-fun d!1713253 () Bool)

(assert (= bs!1237845 (and d!1713253 d!1713155)))

(declare-fun lambda!273341 () Int)

(assert (=> bs!1237845 (= lambda!273341 lambda!273316)))

(declare-fun bs!1237847 () Bool)

(assert (= bs!1237847 (and d!1713253 d!1713089)))

(assert (=> bs!1237847 (= lambda!273341 lambda!273276)))

(declare-fun bs!1237849 () Bool)

(assert (= bs!1237849 (and d!1713253 d!1713055)))

(assert (=> bs!1237849 (= lambda!273341 lambda!273255)))

(declare-fun bs!1237850 () Bool)

(assert (= bs!1237850 (and d!1713253 d!1713239)))

(assert (=> bs!1237850 (= lambda!273341 lambda!273336)))

(declare-fun bs!1237851 () Bool)

(assert (= bs!1237851 (and d!1713253 d!1713195)))

(assert (=> bs!1237851 (= lambda!273341 lambda!273322)))

(declare-fun lt!2176690 () List!61332)

(assert (=> d!1713253 (forall!14431 lt!2176690 lambda!273341)))

(declare-fun e!3314782 () List!61332)

(assert (=> d!1713253 (= lt!2176690 e!3314782)))

(declare-fun c!928686 () Bool)

(assert (=> d!1713253 (= c!928686 ((_ is Cons!61210) zl!343))))

(assert (=> d!1713253 (= (unfocusZipperList!453 zl!343) lt!2176690)))

(declare-fun b!5337820 () Bool)

(assert (=> b!5337820 (= e!3314782 (Cons!61208 (generalisedConcat!680 (exprs!4895 (h!67658 zl!343))) (unfocusZipperList!453 (t!374551 zl!343))))))

(declare-fun b!5337821 () Bool)

(assert (=> b!5337821 (= e!3314782 Nil!61208)))

(assert (= (and d!1713253 c!928686) b!5337820))

(assert (= (and d!1713253 (not c!928686)) b!5337821))

(declare-fun m!6370564 () Bool)

(assert (=> d!1713253 m!6370564))

(assert (=> b!5337820 m!6369788))

(declare-fun m!6370566 () Bool)

(assert (=> b!5337820 m!6370566))

(assert (=> b!5336990 d!1713253))

(declare-fun b!5337870 () Bool)

(assert (=> b!5337870 true))

(declare-fun bs!1237861 () Bool)

(declare-fun b!5337872 () Bool)

(assert (= bs!1237861 (and b!5337872 b!5337870)))

(declare-fun lambda!273351 () Int)

(declare-fun lt!2176699 () Int)

(declare-fun lt!2176702 () Int)

(declare-fun lambda!273350 () Int)

(assert (=> bs!1237861 (= (= lt!2176702 lt!2176699) (= lambda!273351 lambda!273350))))

(assert (=> b!5337872 true))

(declare-fun d!1713257 () Bool)

(declare-fun e!3314806 () Bool)

(assert (=> d!1713257 e!3314806))

(declare-fun res!2264207 () Bool)

(assert (=> d!1713257 (=> (not res!2264207) (not e!3314806))))

(assert (=> d!1713257 (= res!2264207 (>= lt!2176702 0))))

(declare-fun e!3314807 () Int)

(assert (=> d!1713257 (= lt!2176702 e!3314807)))

(declare-fun c!928701 () Bool)

(assert (=> d!1713257 (= c!928701 ((_ is Cons!61210) lt!2176539))))

(assert (=> d!1713257 (= (zipperDepth!120 lt!2176539) lt!2176702)))

(assert (=> b!5337870 (= e!3314807 lt!2176699)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!68 (Context!8790) Int)

(assert (=> b!5337870 (= lt!2176699 (maxBigInt!0 (contextDepth!68 (h!67658 lt!2176539)) (zipperDepth!120 (t!374551 lt!2176539))))))

(declare-fun lt!2176701 () Unit!153562)

(declare-fun lambda!273349 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!62 (List!61334 Int Int Int) Unit!153562)

(assert (=> b!5337870 (= lt!2176701 (lemmaForallContextDepthBiggerThanTransitive!62 (t!374551 lt!2176539) lt!2176699 (zipperDepth!120 (t!374551 lt!2176539)) lambda!273349))))

(declare-fun forall!14433 (List!61334 Int) Bool)

(assert (=> b!5337870 (forall!14433 (t!374551 lt!2176539) lambda!273350)))

(declare-fun lt!2176700 () Unit!153562)

(assert (=> b!5337870 (= lt!2176700 lt!2176701)))

(declare-fun b!5337871 () Bool)

(assert (=> b!5337871 (= e!3314807 0)))

(assert (=> b!5337872 (= e!3314806 (forall!14433 lt!2176539 lambda!273351))))

(assert (= (and d!1713257 c!928701) b!5337870))

(assert (= (and d!1713257 (not c!928701)) b!5337871))

(assert (= (and d!1713257 res!2264207) b!5337872))

(declare-fun m!6370596 () Bool)

(assert (=> b!5337870 m!6370596))

(declare-fun m!6370598 () Bool)

(assert (=> b!5337870 m!6370598))

(assert (=> b!5337870 m!6370596))

(declare-fun m!6370600 () Bool)

(assert (=> b!5337870 m!6370600))

(assert (=> b!5337870 m!6370596))

(declare-fun m!6370602 () Bool)

(assert (=> b!5337870 m!6370602))

(assert (=> b!5337870 m!6370600))

(declare-fun m!6370604 () Bool)

(assert (=> b!5337870 m!6370604))

(declare-fun m!6370606 () Bool)

(assert (=> b!5337872 m!6370606))

(assert (=> b!5337010 d!1713257))

(declare-fun bs!1237862 () Bool)

(declare-fun b!5337896 () Bool)

(assert (= bs!1237862 (and b!5337896 b!5337870)))

(declare-fun lambda!273352 () Int)

(assert (=> bs!1237862 (= lambda!273352 lambda!273349)))

(declare-fun lambda!273353 () Int)

(declare-fun lt!2176703 () Int)

(assert (=> bs!1237862 (= (= lt!2176703 lt!2176699) (= lambda!273353 lambda!273350))))

(declare-fun bs!1237864 () Bool)

(assert (= bs!1237864 (and b!5337896 b!5337872)))

(assert (=> bs!1237864 (= (= lt!2176703 lt!2176702) (= lambda!273353 lambda!273351))))

(assert (=> b!5337896 true))

(declare-fun bs!1237866 () Bool)

(declare-fun b!5337898 () Bool)

(assert (= bs!1237866 (and b!5337898 b!5337870)))

(declare-fun lt!2176706 () Int)

(declare-fun lambda!273354 () Int)

(assert (=> bs!1237866 (= (= lt!2176706 lt!2176699) (= lambda!273354 lambda!273350))))

(declare-fun bs!1237867 () Bool)

(assert (= bs!1237867 (and b!5337898 b!5337872)))

(assert (=> bs!1237867 (= (= lt!2176706 lt!2176702) (= lambda!273354 lambda!273351))))

(declare-fun bs!1237868 () Bool)

(assert (= bs!1237868 (and b!5337898 b!5337896)))

(assert (=> bs!1237868 (= (= lt!2176706 lt!2176703) (= lambda!273354 lambda!273353))))

(assert (=> b!5337898 true))

(declare-fun d!1713265 () Bool)

(declare-fun e!3314818 () Bool)

(assert (=> d!1713265 e!3314818))

(declare-fun res!2264208 () Bool)

(assert (=> d!1713265 (=> (not res!2264208) (not e!3314818))))

(assert (=> d!1713265 (= res!2264208 (>= lt!2176706 0))))

(declare-fun e!3314819 () Int)

(assert (=> d!1713265 (= lt!2176706 e!3314819)))

(declare-fun c!928702 () Bool)

(assert (=> d!1713265 (= c!928702 ((_ is Cons!61210) zl!343))))

(assert (=> d!1713265 (= (zipperDepth!120 zl!343) lt!2176706)))

(assert (=> b!5337896 (= e!3314819 lt!2176703)))

(assert (=> b!5337896 (= lt!2176703 (maxBigInt!0 (contextDepth!68 (h!67658 zl!343)) (zipperDepth!120 (t!374551 zl!343))))))

(declare-fun lt!2176705 () Unit!153562)

(assert (=> b!5337896 (= lt!2176705 (lemmaForallContextDepthBiggerThanTransitive!62 (t!374551 zl!343) lt!2176703 (zipperDepth!120 (t!374551 zl!343)) lambda!273352))))

(assert (=> b!5337896 (forall!14433 (t!374551 zl!343) lambda!273353)))

(declare-fun lt!2176704 () Unit!153562)

(assert (=> b!5337896 (= lt!2176704 lt!2176705)))

(declare-fun b!5337897 () Bool)

(assert (=> b!5337897 (= e!3314819 0)))

(assert (=> b!5337898 (= e!3314818 (forall!14433 zl!343 lambda!273354))))

(assert (= (and d!1713265 c!928702) b!5337896))

(assert (= (and d!1713265 (not c!928702)) b!5337897))

(assert (= (and d!1713265 res!2264208) b!5337898))

(declare-fun m!6370608 () Bool)

(assert (=> b!5337896 m!6370608))

(declare-fun m!6370610 () Bool)

(assert (=> b!5337896 m!6370610))

(assert (=> b!5337896 m!6370608))

(declare-fun m!6370612 () Bool)

(assert (=> b!5337896 m!6370612))

(assert (=> b!5337896 m!6370608))

(declare-fun m!6370614 () Bool)

(assert (=> b!5337896 m!6370614))

(assert (=> b!5337896 m!6370612))

(declare-fun m!6370616 () Bool)

(assert (=> b!5337896 m!6370616))

(declare-fun m!6370618 () Bool)

(assert (=> b!5337898 m!6370618))

(assert (=> b!5337010 d!1713265))

(declare-fun d!1713271 () Bool)

(assert (=> d!1713271 (= (isEmpty!33179 (t!374549 (exprs!4895 (h!67658 zl!343)))) ((_ is Nil!61208) (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> b!5336989 d!1713271))

(declare-fun d!1713273 () Bool)

(assert (=> d!1713273 (= (Exists!2192 lambda!273244) (choose!39991 lambda!273244))))

(declare-fun bs!1237869 () Bool)

(assert (= bs!1237869 d!1713273))

(declare-fun m!6370620 () Bool)

(assert (=> bs!1237869 m!6370620))

(assert (=> b!5337009 d!1713273))

(declare-fun bs!1237870 () Bool)

(declare-fun d!1713275 () Bool)

(assert (= bs!1237870 (and d!1713275 b!5337009)))

(declare-fun lambda!273355 () Int)

(assert (=> bs!1237870 (not (= lambda!273355 lambda!273244))))

(declare-fun bs!1237871 () Bool)

(assert (= bs!1237871 (and d!1713275 b!5337012)))

(assert (=> bs!1237871 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273355 lambda!273248))))

(declare-fun bs!1237872 () Bool)

(assert (= bs!1237872 (and d!1713275 d!1713133)))

(assert (=> bs!1237872 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273355 lambda!273309))))

(assert (=> bs!1237871 (not (= lambda!273355 lambda!273247))))

(declare-fun bs!1237873 () Bool)

(assert (= bs!1237873 (and d!1713275 b!5337345)))

(assert (=> bs!1237873 (not (= lambda!273355 lambda!273287))))

(declare-fun bs!1237874 () Bool)

(assert (= bs!1237874 (and d!1713275 d!1713203)))

(assert (=> bs!1237874 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273355 lambda!273323))))

(declare-fun bs!1237875 () Bool)

(assert (= bs!1237875 (and d!1713275 b!5337495)))

(assert (=> bs!1237875 (not (= lambda!273355 lambda!273315))))

(assert (=> bs!1237870 (= lambda!273355 lambda!273243)))

(declare-fun bs!1237876 () Bool)

(assert (= bs!1237876 (and d!1713275 d!1713139)))

(assert (=> bs!1237876 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273355 lambda!273313))))

(assert (=> bs!1237871 (not (= lambda!273355 lambda!273249))))

(declare-fun bs!1237877 () Bool)

(assert (= bs!1237877 (and d!1713275 d!1713187)))

(assert (=> bs!1237877 (not (= lambda!273355 lambda!273321))))

(assert (=> bs!1237871 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273355 lambda!273246))))

(assert (=> bs!1237872 (not (= lambda!273355 lambda!273310))))

(declare-fun bs!1237878 () Bool)

(assert (= bs!1237878 (and d!1713275 b!5337492)))

(assert (=> bs!1237878 (not (= lambda!273355 lambda!273314))))

(declare-fun bs!1237879 () Bool)

(assert (= bs!1237879 (and d!1713275 b!5337348)))

(assert (=> bs!1237879 (not (= lambda!273355 lambda!273288))))

(assert (=> bs!1237877 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273355 lambda!273320))))

(assert (=> d!1713275 true))

(assert (=> d!1713275 true))

(assert (=> d!1713275 true))

(assert (=> d!1713275 (= (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) Nil!61209 s!2326 s!2326)) (Exists!2192 lambda!273355))))

(declare-fun lt!2176707 () Unit!153562)

(assert (=> d!1713275 (= lt!2176707 (choose!39996 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326))))

(assert (=> d!1713275 (validRegex!6747 (regOne!30534 r!7292))))

(assert (=> d!1713275 (= (lemmaFindConcatSeparationEquivalentToExists!1300 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326) lt!2176707)))

(declare-fun bs!1237880 () Bool)

(assert (= bs!1237880 d!1713275))

(declare-fun m!6370622 () Bool)

(assert (=> bs!1237880 m!6370622))

(assert (=> bs!1237880 m!6369874))

(assert (=> bs!1237880 m!6369762))

(declare-fun m!6370624 () Bool)

(assert (=> bs!1237880 m!6370624))

(assert (=> bs!1237880 m!6369762))

(assert (=> bs!1237880 m!6369764))

(assert (=> b!5337009 d!1713275))

(declare-fun d!1713277 () Bool)

(assert (=> d!1713277 (= (Exists!2192 lambda!273243) (choose!39991 lambda!273243))))

(declare-fun bs!1237881 () Bool)

(assert (= bs!1237881 d!1713277))

(declare-fun m!6370626 () Bool)

(assert (=> bs!1237881 m!6370626))

(assert (=> b!5337009 d!1713277))

(declare-fun b!5337903 () Bool)

(declare-fun e!3314825 () Bool)

(declare-fun lt!2176708 () Option!15122)

(assert (=> b!5337903 (= e!3314825 (not (isDefined!11825 lt!2176708)))))

(declare-fun b!5337904 () Bool)

(declare-fun res!2264211 () Bool)

(declare-fun e!3314824 () Bool)

(assert (=> b!5337904 (=> (not res!2264211) (not e!3314824))))

(assert (=> b!5337904 (= res!2264211 (matchR!7196 (regOne!30534 r!7292) (_1!35513 (get!21053 lt!2176708))))))

(declare-fun b!5337905 () Bool)

(declare-fun e!3314821 () Option!15122)

(declare-fun e!3314823 () Option!15122)

(assert (=> b!5337905 (= e!3314821 e!3314823)))

(declare-fun c!928703 () Bool)

(assert (=> b!5337905 (= c!928703 ((_ is Nil!61209) s!2326))))

(declare-fun b!5337906 () Bool)

(assert (=> b!5337906 (= e!3314821 (Some!15121 (tuple2!64421 Nil!61209 s!2326)))))

(declare-fun b!5337907 () Bool)

(declare-fun res!2264213 () Bool)

(assert (=> b!5337907 (=> (not res!2264213) (not e!3314824))))

(assert (=> b!5337907 (= res!2264213 (matchR!7196 (regTwo!30534 r!7292) (_2!35513 (get!21053 lt!2176708))))))

(declare-fun b!5337908 () Bool)

(declare-fun e!3314822 () Bool)

(assert (=> b!5337908 (= e!3314822 (matchR!7196 (regTwo!30534 r!7292) s!2326))))

(declare-fun b!5337909 () Bool)

(declare-fun lt!2176709 () Unit!153562)

(declare-fun lt!2176710 () Unit!153562)

(assert (=> b!5337909 (= lt!2176709 lt!2176710)))

(assert (=> b!5337909 (= (++!13342 (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326)) s!2326)))

(assert (=> b!5337909 (= lt!2176710 (lemmaMoveElementToOtherListKeepsConcatEq!1757 Nil!61209 (h!67657 s!2326) (t!374550 s!2326) s!2326))))

(assert (=> b!5337909 (= e!3314823 (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) (++!13342 Nil!61209 (Cons!61209 (h!67657 s!2326) Nil!61209)) (t!374550 s!2326) s!2326))))

(declare-fun b!5337910 () Bool)

(assert (=> b!5337910 (= e!3314823 None!15121)))

(declare-fun d!1713279 () Bool)

(assert (=> d!1713279 e!3314825))

(declare-fun res!2264212 () Bool)

(assert (=> d!1713279 (=> res!2264212 e!3314825)))

(assert (=> d!1713279 (= res!2264212 e!3314824)))

(declare-fun res!2264209 () Bool)

(assert (=> d!1713279 (=> (not res!2264209) (not e!3314824))))

(assert (=> d!1713279 (= res!2264209 (isDefined!11825 lt!2176708))))

(assert (=> d!1713279 (= lt!2176708 e!3314821)))

(declare-fun c!928704 () Bool)

(assert (=> d!1713279 (= c!928704 e!3314822)))

(declare-fun res!2264210 () Bool)

(assert (=> d!1713279 (=> (not res!2264210) (not e!3314822))))

(assert (=> d!1713279 (= res!2264210 (matchR!7196 (regOne!30534 r!7292) Nil!61209))))

(assert (=> d!1713279 (validRegex!6747 (regOne!30534 r!7292))))

(assert (=> d!1713279 (= (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) Nil!61209 s!2326 s!2326) lt!2176708)))

(declare-fun b!5337911 () Bool)

(assert (=> b!5337911 (= e!3314824 (= (++!13342 (_1!35513 (get!21053 lt!2176708)) (_2!35513 (get!21053 lt!2176708))) s!2326))))

(assert (= (and d!1713279 res!2264210) b!5337908))

(assert (= (and d!1713279 c!928704) b!5337906))

(assert (= (and d!1713279 (not c!928704)) b!5337905))

(assert (= (and b!5337905 c!928703) b!5337910))

(assert (= (and b!5337905 (not c!928703)) b!5337909))

(assert (= (and d!1713279 res!2264209) b!5337904))

(assert (= (and b!5337904 res!2264211) b!5337907))

(assert (= (and b!5337907 res!2264213) b!5337911))

(assert (= (and d!1713279 (not res!2264212)) b!5337903))

(declare-fun m!6370628 () Bool)

(assert (=> d!1713279 m!6370628))

(declare-fun m!6370630 () Bool)

(assert (=> d!1713279 m!6370630))

(assert (=> d!1713279 m!6369874))

(declare-fun m!6370632 () Bool)

(assert (=> b!5337907 m!6370632))

(declare-fun m!6370634 () Bool)

(assert (=> b!5337907 m!6370634))

(assert (=> b!5337909 m!6370330))

(assert (=> b!5337909 m!6370330))

(assert (=> b!5337909 m!6370332))

(assert (=> b!5337909 m!6370334))

(assert (=> b!5337909 m!6370330))

(declare-fun m!6370636 () Bool)

(assert (=> b!5337909 m!6370636))

(assert (=> b!5337911 m!6370632))

(declare-fun m!6370638 () Bool)

(assert (=> b!5337911 m!6370638))

(assert (=> b!5337903 m!6370628))

(assert (=> b!5337904 m!6370632))

(declare-fun m!6370640 () Bool)

(assert (=> b!5337904 m!6370640))

(declare-fun m!6370642 () Bool)

(assert (=> b!5337908 m!6370642))

(assert (=> b!5337009 d!1713279))

(declare-fun bs!1237882 () Bool)

(declare-fun d!1713281 () Bool)

(assert (= bs!1237882 (and d!1713281 b!5337009)))

(declare-fun lambda!273356 () Int)

(assert (=> bs!1237882 (not (= lambda!273356 lambda!273244))))

(declare-fun bs!1237883 () Bool)

(assert (= bs!1237883 (and d!1713281 b!5337012)))

(assert (=> bs!1237883 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273356 lambda!273248))))

(declare-fun bs!1237884 () Bool)

(assert (= bs!1237884 (and d!1713281 d!1713133)))

(assert (=> bs!1237884 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273356 lambda!273309))))

(assert (=> bs!1237883 (not (= lambda!273356 lambda!273247))))

(declare-fun bs!1237885 () Bool)

(assert (= bs!1237885 (and d!1713281 b!5337345)))

(assert (=> bs!1237885 (not (= lambda!273356 lambda!273287))))

(declare-fun bs!1237886 () Bool)

(assert (= bs!1237886 (and d!1713281 b!5337495)))

(assert (=> bs!1237886 (not (= lambda!273356 lambda!273315))))

(assert (=> bs!1237882 (= lambda!273356 lambda!273243)))

(declare-fun bs!1237887 () Bool)

(assert (= bs!1237887 (and d!1713281 d!1713139)))

(assert (=> bs!1237887 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273356 lambda!273313))))

(assert (=> bs!1237883 (not (= lambda!273356 lambda!273249))))

(declare-fun bs!1237888 () Bool)

(assert (= bs!1237888 (and d!1713281 d!1713187)))

(assert (=> bs!1237888 (not (= lambda!273356 lambda!273321))))

(assert (=> bs!1237883 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273356 lambda!273246))))

(assert (=> bs!1237884 (not (= lambda!273356 lambda!273310))))

(declare-fun bs!1237889 () Bool)

(assert (= bs!1237889 (and d!1713281 b!5337492)))

(assert (=> bs!1237889 (not (= lambda!273356 lambda!273314))))

(declare-fun bs!1237890 () Bool)

(assert (= bs!1237890 (and d!1713281 b!5337348)))

(assert (=> bs!1237890 (not (= lambda!273356 lambda!273288))))

(assert (=> bs!1237888 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273356 lambda!273320))))

(declare-fun bs!1237891 () Bool)

(assert (= bs!1237891 (and d!1713281 d!1713275)))

(assert (=> bs!1237891 (= lambda!273356 lambda!273355)))

(declare-fun bs!1237892 () Bool)

(assert (= bs!1237892 (and d!1713281 d!1713203)))

(assert (=> bs!1237892 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273356 lambda!273323))))

(assert (=> d!1713281 true))

(assert (=> d!1713281 true))

(assert (=> d!1713281 true))

(declare-fun lambda!273357 () Int)

(assert (=> bs!1237882 (= lambda!273357 lambda!273244)))

(assert (=> bs!1237883 (not (= lambda!273357 lambda!273248))))

(assert (=> bs!1237884 (not (= lambda!273357 lambda!273309))))

(assert (=> bs!1237883 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273357 lambda!273247))))

(assert (=> bs!1237885 (not (= lambda!273357 lambda!273287))))

(assert (=> bs!1237886 (= (and (= (regOne!30534 r!7292) (regOne!30534 lt!2176535)) (= (regTwo!30534 r!7292) (regTwo!30534 lt!2176535))) (= lambda!273357 lambda!273315))))

(assert (=> bs!1237882 (not (= lambda!273357 lambda!273243))))

(assert (=> bs!1237887 (not (= lambda!273357 lambda!273313))))

(assert (=> bs!1237888 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273357 lambda!273321))))

(assert (=> bs!1237883 (not (= lambda!273357 lambda!273246))))

(assert (=> bs!1237884 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273357 lambda!273310))))

(assert (=> bs!1237889 (not (= lambda!273357 lambda!273314))))

(assert (=> bs!1237890 (= (and (= (regOne!30534 r!7292) (regOne!30534 lt!2176522)) (= (regTwo!30534 r!7292) (regTwo!30534 lt!2176522))) (= lambda!273357 lambda!273288))))

(assert (=> bs!1237888 (not (= lambda!273357 lambda!273320))))

(assert (=> bs!1237891 (not (= lambda!273357 lambda!273355))))

(assert (=> bs!1237892 (not (= lambda!273357 lambda!273323))))

(declare-fun bs!1237893 () Bool)

(assert (= bs!1237893 d!1713281))

(assert (=> bs!1237893 (not (= lambda!273357 lambda!273356))))

(assert (=> bs!1237883 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273357 lambda!273249))))

(assert (=> d!1713281 true))

(assert (=> d!1713281 true))

(assert (=> d!1713281 true))

(assert (=> d!1713281 (= (Exists!2192 lambda!273356) (Exists!2192 lambda!273357))))

(declare-fun lt!2176711 () Unit!153562)

(assert (=> d!1713281 (= lt!2176711 (choose!39994 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326))))

(assert (=> d!1713281 (validRegex!6747 (regOne!30534 r!7292))))

(assert (=> d!1713281 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!846 (regOne!30534 r!7292) (regTwo!30534 r!7292) s!2326) lt!2176711)))

(declare-fun m!6370644 () Bool)

(assert (=> bs!1237893 m!6370644))

(declare-fun m!6370646 () Bool)

(assert (=> bs!1237893 m!6370646))

(declare-fun m!6370648 () Bool)

(assert (=> bs!1237893 m!6370648))

(assert (=> bs!1237893 m!6369874))

(assert (=> b!5337009 d!1713281))

(declare-fun d!1713283 () Bool)

(assert (=> d!1713283 (= (isDefined!11825 (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) Nil!61209 s!2326 s!2326)) (not (isEmpty!33184 (findConcatSeparation!1536 (regOne!30534 r!7292) (regTwo!30534 r!7292) Nil!61209 s!2326 s!2326))))))

(declare-fun bs!1237894 () Bool)

(assert (= bs!1237894 d!1713283))

(assert (=> bs!1237894 m!6369762))

(declare-fun m!6370650 () Bool)

(assert (=> bs!1237894 m!6370650))

(assert (=> b!5337009 d!1713283))

(declare-fun d!1713285 () Bool)

(declare-fun e!3314828 () Bool)

(assert (=> d!1713285 e!3314828))

(declare-fun res!2264216 () Bool)

(assert (=> d!1713285 (=> (not res!2264216) (not e!3314828))))

(declare-fun lt!2176714 () List!61334)

(declare-fun noDuplicate!1317 (List!61334) Bool)

(assert (=> d!1713285 (= res!2264216 (noDuplicate!1317 lt!2176714))))

(declare-fun choose!40001 ((InoxSet Context!8790)) List!61334)

(assert (=> d!1713285 (= lt!2176714 (choose!40001 z!1189))))

(assert (=> d!1713285 (= (toList!8795 z!1189) lt!2176714)))

(declare-fun b!5337914 () Bool)

(declare-fun content!10919 (List!61334) (InoxSet Context!8790))

(assert (=> b!5337914 (= e!3314828 (= (content!10919 lt!2176714) z!1189))))

(assert (= (and d!1713285 res!2264216) b!5337914))

(declare-fun m!6370652 () Bool)

(assert (=> d!1713285 m!6370652))

(declare-fun m!6370654 () Bool)

(assert (=> d!1713285 m!6370654))

(declare-fun m!6370656 () Bool)

(assert (=> b!5337914 m!6370656))

(assert (=> b!5336988 d!1713285))

(declare-fun d!1713287 () Bool)

(declare-fun c!928705 () Bool)

(assert (=> d!1713287 (= c!928705 (isEmpty!33183 (t!374550 s!2326)))))

(declare-fun e!3314829 () Bool)

(assert (=> d!1713287 (= (matchZipper!1255 lt!2176527 (t!374550 s!2326)) e!3314829)))

(declare-fun b!5337915 () Bool)

(assert (=> b!5337915 (= e!3314829 (nullableZipper!1362 lt!2176527))))

(declare-fun b!5337916 () Bool)

(assert (=> b!5337916 (= e!3314829 (matchZipper!1255 (derivationStepZipper!1252 lt!2176527 (head!11442 (t!374550 s!2326))) (tail!10539 (t!374550 s!2326))))))

(assert (= (and d!1713287 c!928705) b!5337915))

(assert (= (and d!1713287 (not c!928705)) b!5337916))

(assert (=> d!1713287 m!6369950))

(declare-fun m!6370658 () Bool)

(assert (=> b!5337915 m!6370658))

(assert (=> b!5337916 m!6369954))

(assert (=> b!5337916 m!6369954))

(declare-fun m!6370660 () Bool)

(assert (=> b!5337916 m!6370660))

(assert (=> b!5337916 m!6369960))

(assert (=> b!5337916 m!6370660))

(assert (=> b!5337916 m!6369960))

(declare-fun m!6370662 () Bool)

(assert (=> b!5337916 m!6370662))

(assert (=> b!5337008 d!1713287))

(declare-fun d!1713289 () Bool)

(declare-fun nullableFct!1514 (Regex!15011) Bool)

(assert (=> d!1713289 (= (nullable!5180 (regOne!30534 (regOne!30534 r!7292))) (nullableFct!1514 (regOne!30534 (regOne!30534 r!7292))))))

(declare-fun bs!1237895 () Bool)

(assert (= bs!1237895 d!1713289))

(declare-fun m!6370664 () Bool)

(assert (=> bs!1237895 m!6370664))

(assert (=> b!5337007 d!1713289))

(declare-fun d!1713291 () Bool)

(declare-fun lt!2176717 () Int)

(assert (=> d!1713291 (>= lt!2176717 0)))

(declare-fun e!3314832 () Int)

(assert (=> d!1713291 (= lt!2176717 e!3314832)))

(declare-fun c!928709 () Bool)

(assert (=> d!1713291 (= c!928709 ((_ is Cons!61208) (exprs!4895 lt!2176531)))))

(assert (=> d!1713291 (= (contextDepthTotal!144 lt!2176531) lt!2176717)))

(declare-fun b!5337921 () Bool)

(declare-fun regexDepthTotal!67 (Regex!15011) Int)

(assert (=> b!5337921 (= e!3314832 (+ (regexDepthTotal!67 (h!67656 (exprs!4895 lt!2176531))) (contextDepthTotal!144 (Context!8791 (t!374549 (exprs!4895 lt!2176531))))))))

(declare-fun b!5337922 () Bool)

(assert (=> b!5337922 (= e!3314832 1)))

(assert (= (and d!1713291 c!928709) b!5337921))

(assert (= (and d!1713291 (not c!928709)) b!5337922))

(declare-fun m!6370666 () Bool)

(assert (=> b!5337921 m!6370666))

(declare-fun m!6370668 () Bool)

(assert (=> b!5337921 m!6370668))

(assert (=> b!5337017 d!1713291))

(declare-fun d!1713293 () Bool)

(declare-fun lt!2176718 () Int)

(assert (=> d!1713293 (>= lt!2176718 0)))

(declare-fun e!3314833 () Int)

(assert (=> d!1713293 (= lt!2176718 e!3314833)))

(declare-fun c!928710 () Bool)

(assert (=> d!1713293 (= c!928710 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343))))))

(assert (=> d!1713293 (= (contextDepthTotal!144 (h!67658 zl!343)) lt!2176718)))

(declare-fun b!5337923 () Bool)

(assert (=> b!5337923 (= e!3314833 (+ (regexDepthTotal!67 (h!67656 (exprs!4895 (h!67658 zl!343)))) (contextDepthTotal!144 (Context!8791 (t!374549 (exprs!4895 (h!67658 zl!343)))))))))

(declare-fun b!5337924 () Bool)

(assert (=> b!5337924 (= e!3314833 1)))

(assert (= (and d!1713293 c!928710) b!5337923))

(assert (= (and d!1713293 (not c!928710)) b!5337924))

(declare-fun m!6370670 () Bool)

(assert (=> b!5337923 m!6370670))

(declare-fun m!6370672 () Bool)

(assert (=> b!5337923 m!6370672))

(assert (=> b!5337017 d!1713293))

(declare-fun d!1713295 () Bool)

(declare-fun c!928711 () Bool)

(assert (=> d!1713295 (= c!928711 (isEmpty!33183 (t!374550 s!2326)))))

(declare-fun e!3314834 () Bool)

(assert (=> d!1713295 (= (matchZipper!1255 lt!2176536 (t!374550 s!2326)) e!3314834)))

(declare-fun b!5337925 () Bool)

(assert (=> b!5337925 (= e!3314834 (nullableZipper!1362 lt!2176536))))

(declare-fun b!5337926 () Bool)

(assert (=> b!5337926 (= e!3314834 (matchZipper!1255 (derivationStepZipper!1252 lt!2176536 (head!11442 (t!374550 s!2326))) (tail!10539 (t!374550 s!2326))))))

(assert (= (and d!1713295 c!928711) b!5337925))

(assert (= (and d!1713295 (not c!928711)) b!5337926))

(assert (=> d!1713295 m!6369950))

(declare-fun m!6370674 () Bool)

(assert (=> b!5337925 m!6370674))

(assert (=> b!5337926 m!6369954))

(assert (=> b!5337926 m!6369954))

(declare-fun m!6370676 () Bool)

(assert (=> b!5337926 m!6370676))

(assert (=> b!5337926 m!6369960))

(assert (=> b!5337926 m!6370676))

(assert (=> b!5337926 m!6369960))

(declare-fun m!6370678 () Bool)

(assert (=> b!5337926 m!6370678))

(assert (=> b!5337016 d!1713295))

(assert (=> b!5337016 d!1713059))

(declare-fun bs!1237896 () Bool)

(declare-fun d!1713297 () Bool)

(assert (= bs!1237896 (and d!1713297 d!1713253)))

(declare-fun lambda!273358 () Int)

(assert (=> bs!1237896 (= lambda!273358 lambda!273341)))

(declare-fun bs!1237897 () Bool)

(assert (= bs!1237897 (and d!1713297 d!1713155)))

(assert (=> bs!1237897 (= lambda!273358 lambda!273316)))

(declare-fun bs!1237898 () Bool)

(assert (= bs!1237898 (and d!1713297 d!1713089)))

(assert (=> bs!1237898 (= lambda!273358 lambda!273276)))

(declare-fun bs!1237899 () Bool)

(assert (= bs!1237899 (and d!1713297 d!1713055)))

(assert (=> bs!1237899 (= lambda!273358 lambda!273255)))

(declare-fun bs!1237900 () Bool)

(assert (= bs!1237900 (and d!1713297 d!1713239)))

(assert (=> bs!1237900 (= lambda!273358 lambda!273336)))

(declare-fun bs!1237901 () Bool)

(assert (= bs!1237901 (and d!1713297 d!1713195)))

(assert (=> bs!1237901 (= lambda!273358 lambda!273322)))

(assert (=> d!1713297 (= (inv!80774 (h!67658 zl!343)) (forall!14431 (exprs!4895 (h!67658 zl!343)) lambda!273358))))

(declare-fun bs!1237902 () Bool)

(assert (= bs!1237902 d!1713297))

(declare-fun m!6370680 () Bool)

(assert (=> bs!1237902 m!6370680))

(assert (=> b!5337014 d!1713297))

(declare-fun bs!1237903 () Bool)

(declare-fun b!5337928 () Bool)

(assert (= bs!1237903 (and b!5337928 b!5337009)))

(declare-fun lambda!273359 () Int)

(assert (=> bs!1237903 (not (= lambda!273359 lambda!273244))))

(declare-fun bs!1237904 () Bool)

(assert (= bs!1237904 (and b!5337928 b!5337012)))

(assert (=> bs!1237904 (not (= lambda!273359 lambda!273248))))

(declare-fun bs!1237905 () Bool)

(assert (= bs!1237905 (and b!5337928 d!1713281)))

(assert (=> bs!1237905 (not (= lambda!273359 lambda!273357))))

(declare-fun bs!1237906 () Bool)

(assert (= bs!1237906 (and b!5337928 d!1713133)))

(assert (=> bs!1237906 (not (= lambda!273359 lambda!273309))))

(assert (=> bs!1237904 (not (= lambda!273359 lambda!273247))))

(declare-fun bs!1237907 () Bool)

(assert (= bs!1237907 (and b!5337928 b!5337345)))

(assert (=> bs!1237907 (= (and (= (reg!15340 r!7292) (reg!15340 lt!2176522)) (= r!7292 lt!2176522)) (= lambda!273359 lambda!273287))))

(declare-fun bs!1237908 () Bool)

(assert (= bs!1237908 (and b!5337928 b!5337495)))

(assert (=> bs!1237908 (not (= lambda!273359 lambda!273315))))

(assert (=> bs!1237903 (not (= lambda!273359 lambda!273243))))

(declare-fun bs!1237909 () Bool)

(assert (= bs!1237909 (and b!5337928 d!1713139)))

(assert (=> bs!1237909 (not (= lambda!273359 lambda!273313))))

(declare-fun bs!1237910 () Bool)

(assert (= bs!1237910 (and b!5337928 d!1713187)))

(assert (=> bs!1237910 (not (= lambda!273359 lambda!273321))))

(assert (=> bs!1237904 (not (= lambda!273359 lambda!273246))))

(assert (=> bs!1237906 (not (= lambda!273359 lambda!273310))))

(declare-fun bs!1237911 () Bool)

(assert (= bs!1237911 (and b!5337928 b!5337492)))

(assert (=> bs!1237911 (= (and (= (reg!15340 r!7292) (reg!15340 lt!2176535)) (= r!7292 lt!2176535)) (= lambda!273359 lambda!273314))))

(declare-fun bs!1237912 () Bool)

(assert (= bs!1237912 (and b!5337928 b!5337348)))

(assert (=> bs!1237912 (not (= lambda!273359 lambda!273288))))

(assert (=> bs!1237910 (not (= lambda!273359 lambda!273320))))

(declare-fun bs!1237913 () Bool)

(assert (= bs!1237913 (and b!5337928 d!1713275)))

(assert (=> bs!1237913 (not (= lambda!273359 lambda!273355))))

(declare-fun bs!1237914 () Bool)

(assert (= bs!1237914 (and b!5337928 d!1713203)))

(assert (=> bs!1237914 (not (= lambda!273359 lambda!273323))))

(assert (=> bs!1237905 (not (= lambda!273359 lambda!273356))))

(assert (=> bs!1237904 (not (= lambda!273359 lambda!273249))))

(assert (=> b!5337928 true))

(assert (=> b!5337928 true))

(declare-fun bs!1237915 () Bool)

(declare-fun b!5337931 () Bool)

(assert (= bs!1237915 (and b!5337931 b!5337009)))

(declare-fun lambda!273360 () Int)

(assert (=> bs!1237915 (= lambda!273360 lambda!273244)))

(declare-fun bs!1237916 () Bool)

(assert (= bs!1237916 (and b!5337931 b!5337012)))

(assert (=> bs!1237916 (not (= lambda!273360 lambda!273248))))

(declare-fun bs!1237917 () Bool)

(assert (= bs!1237917 (and b!5337931 d!1713281)))

(assert (=> bs!1237917 (= lambda!273360 lambda!273357)))

(assert (=> bs!1237916 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273360 lambda!273247))))

(declare-fun bs!1237918 () Bool)

(assert (= bs!1237918 (and b!5337931 b!5337345)))

(assert (=> bs!1237918 (not (= lambda!273360 lambda!273287))))

(declare-fun bs!1237919 () Bool)

(assert (= bs!1237919 (and b!5337931 b!5337495)))

(assert (=> bs!1237919 (= (and (= (regOne!30534 r!7292) (regOne!30534 lt!2176535)) (= (regTwo!30534 r!7292) (regTwo!30534 lt!2176535))) (= lambda!273360 lambda!273315))))

(assert (=> bs!1237915 (not (= lambda!273360 lambda!273243))))

(declare-fun bs!1237920 () Bool)

(assert (= bs!1237920 (and b!5337931 d!1713139)))

(assert (=> bs!1237920 (not (= lambda!273360 lambda!273313))))

(declare-fun bs!1237921 () Bool)

(assert (= bs!1237921 (and b!5337931 d!1713187)))

(assert (=> bs!1237921 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273360 lambda!273321))))

(assert (=> bs!1237916 (not (= lambda!273360 lambda!273246))))

(declare-fun bs!1237922 () Bool)

(assert (= bs!1237922 (and b!5337931 d!1713133)))

(assert (=> bs!1237922 (= (and (= (regOne!30534 r!7292) (regOne!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176535)) (= lambda!273360 lambda!273310))))

(declare-fun bs!1237923 () Bool)

(assert (= bs!1237923 (and b!5337931 b!5337492)))

(assert (=> bs!1237923 (not (= lambda!273360 lambda!273314))))

(declare-fun bs!1237924 () Bool)

(assert (= bs!1237924 (and b!5337931 b!5337348)))

(assert (=> bs!1237924 (= (and (= (regOne!30534 r!7292) (regOne!30534 lt!2176522)) (= (regTwo!30534 r!7292) (regTwo!30534 lt!2176522))) (= lambda!273360 lambda!273288))))

(assert (=> bs!1237921 (not (= lambda!273360 lambda!273320))))

(assert (=> bs!1237922 (not (= lambda!273360 lambda!273309))))

(declare-fun bs!1237925 () Bool)

(assert (= bs!1237925 (and b!5337931 b!5337928)))

(assert (=> bs!1237925 (not (= lambda!273360 lambda!273359))))

(declare-fun bs!1237926 () Bool)

(assert (= bs!1237926 (and b!5337931 d!1713275)))

(assert (=> bs!1237926 (not (= lambda!273360 lambda!273355))))

(declare-fun bs!1237927 () Bool)

(assert (= bs!1237927 (and b!5337931 d!1713203)))

(assert (=> bs!1237927 (not (= lambda!273360 lambda!273323))))

(assert (=> bs!1237917 (not (= lambda!273360 lambda!273356))))

(assert (=> bs!1237916 (= (and (= (regOne!30534 r!7292) (regTwo!30534 (regOne!30534 r!7292))) (= (regTwo!30534 r!7292) lt!2176521)) (= lambda!273360 lambda!273249))))

(assert (=> b!5337931 true))

(assert (=> b!5337931 true))

(declare-fun b!5337927 () Bool)

(declare-fun e!3314839 () Bool)

(assert (=> b!5337927 (= e!3314839 (= s!2326 (Cons!61209 (c!928425 r!7292) Nil!61209)))))

(declare-fun e!3314836 () Bool)

(declare-fun call!381563 () Bool)

(assert (=> b!5337928 (= e!3314836 call!381563)))

(declare-fun b!5337929 () Bool)

(declare-fun res!2264219 () Bool)

(assert (=> b!5337929 (=> res!2264219 e!3314836)))

(declare-fun call!381564 () Bool)

(assert (=> b!5337929 (= res!2264219 call!381564)))

(declare-fun e!3314835 () Bool)

(assert (=> b!5337929 (= e!3314835 e!3314836)))

(declare-fun b!5337930 () Bool)

(declare-fun c!928715 () Bool)

(assert (=> b!5337930 (= c!928715 ((_ is ElementMatch!15011) r!7292))))

(declare-fun e!3314837 () Bool)

(assert (=> b!5337930 (= e!3314837 e!3314839)))

(declare-fun bm!381558 () Bool)

(assert (=> bm!381558 (= call!381564 (isEmpty!33183 s!2326))))

(assert (=> b!5337931 (= e!3314835 call!381563)))

(declare-fun b!5337932 () Bool)

(declare-fun e!3314838 () Bool)

(assert (=> b!5337932 (= e!3314838 (matchRSpec!2114 (regTwo!30535 r!7292) s!2326))))

(declare-fun d!1713299 () Bool)

(declare-fun c!928712 () Bool)

(assert (=> d!1713299 (= c!928712 ((_ is EmptyExpr!15011) r!7292))))

(declare-fun e!3314841 () Bool)

(assert (=> d!1713299 (= (matchRSpec!2114 r!7292 s!2326) e!3314841)))

(declare-fun c!928714 () Bool)

(declare-fun bm!381559 () Bool)

(assert (=> bm!381559 (= call!381563 (Exists!2192 (ite c!928714 lambda!273359 lambda!273360)))))

(declare-fun b!5337933 () Bool)

(declare-fun e!3314840 () Bool)

(assert (=> b!5337933 (= e!3314840 e!3314835)))

(assert (=> b!5337933 (= c!928714 ((_ is Star!15011) r!7292))))

(declare-fun b!5337934 () Bool)

(assert (=> b!5337934 (= e!3314840 e!3314838)))

(declare-fun res!2264218 () Bool)

(assert (=> b!5337934 (= res!2264218 (matchRSpec!2114 (regOne!30535 r!7292) s!2326))))

(assert (=> b!5337934 (=> res!2264218 e!3314838)))

(declare-fun b!5337935 () Bool)

(assert (=> b!5337935 (= e!3314841 call!381564)))

(declare-fun b!5337936 () Bool)

(declare-fun c!928713 () Bool)

(assert (=> b!5337936 (= c!928713 ((_ is Union!15011) r!7292))))

(assert (=> b!5337936 (= e!3314839 e!3314840)))

(declare-fun b!5337937 () Bool)

(assert (=> b!5337937 (= e!3314841 e!3314837)))

(declare-fun res!2264217 () Bool)

(assert (=> b!5337937 (= res!2264217 (not ((_ is EmptyLang!15011) r!7292)))))

(assert (=> b!5337937 (=> (not res!2264217) (not e!3314837))))

(assert (= (and d!1713299 c!928712) b!5337935))

(assert (= (and d!1713299 (not c!928712)) b!5337937))

(assert (= (and b!5337937 res!2264217) b!5337930))

(assert (= (and b!5337930 c!928715) b!5337927))

(assert (= (and b!5337930 (not c!928715)) b!5337936))

(assert (= (and b!5337936 c!928713) b!5337934))

(assert (= (and b!5337936 (not c!928713)) b!5337933))

(assert (= (and b!5337934 (not res!2264218)) b!5337932))

(assert (= (and b!5337933 c!928714) b!5337929))

(assert (= (and b!5337933 (not c!928714)) b!5337931))

(assert (= (and b!5337929 (not res!2264219)) b!5337928))

(assert (= (or b!5337928 b!5337931) bm!381559))

(assert (= (or b!5337935 b!5337929) bm!381558))

(assert (=> bm!381558 m!6370124))

(declare-fun m!6370682 () Bool)

(assert (=> b!5337932 m!6370682))

(declare-fun m!6370684 () Bool)

(assert (=> bm!381559 m!6370684))

(declare-fun m!6370686 () Bool)

(assert (=> b!5337934 m!6370686))

(assert (=> b!5336993 d!1713299))

(declare-fun b!5337938 () Bool)

(declare-fun res!2264223 () Bool)

(declare-fun e!3314847 () Bool)

(assert (=> b!5337938 (=> res!2264223 e!3314847)))

(assert (=> b!5337938 (= res!2264223 (not (isEmpty!33183 (tail!10539 s!2326))))))

(declare-fun b!5337939 () Bool)

(declare-fun e!3314848 () Bool)

(assert (=> b!5337939 (= e!3314848 e!3314847)))

(declare-fun res!2264220 () Bool)

(assert (=> b!5337939 (=> res!2264220 e!3314847)))

(declare-fun call!381565 () Bool)

(assert (=> b!5337939 (= res!2264220 call!381565)))

(declare-fun b!5337940 () Bool)

(declare-fun e!3314845 () Bool)

(assert (=> b!5337940 (= e!3314845 (matchR!7196 (derivativeStep!4183 r!7292 (head!11442 s!2326)) (tail!10539 s!2326)))))

(declare-fun d!1713301 () Bool)

(declare-fun e!3314842 () Bool)

(assert (=> d!1713301 e!3314842))

(declare-fun c!928716 () Bool)

(assert (=> d!1713301 (= c!928716 ((_ is EmptyExpr!15011) r!7292))))

(declare-fun lt!2176719 () Bool)

(assert (=> d!1713301 (= lt!2176719 e!3314845)))

(declare-fun c!928718 () Bool)

(assert (=> d!1713301 (= c!928718 (isEmpty!33183 s!2326))))

(assert (=> d!1713301 (validRegex!6747 r!7292)))

(assert (=> d!1713301 (= (matchR!7196 r!7292 s!2326) lt!2176719)))

(declare-fun b!5337941 () Bool)

(declare-fun res!2264224 () Bool)

(declare-fun e!3314844 () Bool)

(assert (=> b!5337941 (=> res!2264224 e!3314844)))

(assert (=> b!5337941 (= res!2264224 (not ((_ is ElementMatch!15011) r!7292)))))

(declare-fun e!3314846 () Bool)

(assert (=> b!5337941 (= e!3314846 e!3314844)))

(declare-fun b!5337942 () Bool)

(assert (=> b!5337942 (= e!3314847 (not (= (head!11442 s!2326) (c!928425 r!7292))))))

(declare-fun b!5337943 () Bool)

(assert (=> b!5337943 (= e!3314842 (= lt!2176719 call!381565))))

(declare-fun b!5337944 () Bool)

(assert (=> b!5337944 (= e!3314844 e!3314848)))

(declare-fun res!2264225 () Bool)

(assert (=> b!5337944 (=> (not res!2264225) (not e!3314848))))

(assert (=> b!5337944 (= res!2264225 (not lt!2176719))))

(declare-fun b!5337945 () Bool)

(declare-fun e!3314843 () Bool)

(assert (=> b!5337945 (= e!3314843 (= (head!11442 s!2326) (c!928425 r!7292)))))

(declare-fun b!5337946 () Bool)

(assert (=> b!5337946 (= e!3314845 (nullable!5180 r!7292))))

(declare-fun b!5337947 () Bool)

(declare-fun res!2264222 () Bool)

(assert (=> b!5337947 (=> res!2264222 e!3314844)))

(assert (=> b!5337947 (= res!2264222 e!3314843)))

(declare-fun res!2264227 () Bool)

(assert (=> b!5337947 (=> (not res!2264227) (not e!3314843))))

(assert (=> b!5337947 (= res!2264227 lt!2176719)))

(declare-fun bm!381560 () Bool)

(assert (=> bm!381560 (= call!381565 (isEmpty!33183 s!2326))))

(declare-fun b!5337948 () Bool)

(declare-fun res!2264221 () Bool)

(assert (=> b!5337948 (=> (not res!2264221) (not e!3314843))))

(assert (=> b!5337948 (= res!2264221 (not call!381565))))

(declare-fun b!5337949 () Bool)

(assert (=> b!5337949 (= e!3314846 (not lt!2176719))))

(declare-fun b!5337950 () Bool)

(assert (=> b!5337950 (= e!3314842 e!3314846)))

(declare-fun c!928717 () Bool)

(assert (=> b!5337950 (= c!928717 ((_ is EmptyLang!15011) r!7292))))

(declare-fun b!5337951 () Bool)

(declare-fun res!2264226 () Bool)

(assert (=> b!5337951 (=> (not res!2264226) (not e!3314843))))

(assert (=> b!5337951 (= res!2264226 (isEmpty!33183 (tail!10539 s!2326)))))

(assert (= (and d!1713301 c!928718) b!5337946))

(assert (= (and d!1713301 (not c!928718)) b!5337940))

(assert (= (and d!1713301 c!928716) b!5337943))

(assert (= (and d!1713301 (not c!928716)) b!5337950))

(assert (= (and b!5337950 c!928717) b!5337949))

(assert (= (and b!5337950 (not c!928717)) b!5337941))

(assert (= (and b!5337941 (not res!2264224)) b!5337947))

(assert (= (and b!5337947 res!2264227) b!5337948))

(assert (= (and b!5337948 res!2264221) b!5337951))

(assert (= (and b!5337951 res!2264226) b!5337945))

(assert (= (and b!5337947 (not res!2264222)) b!5337944))

(assert (= (and b!5337944 res!2264225) b!5337939))

(assert (= (and b!5337939 (not res!2264220)) b!5337938))

(assert (= (and b!5337938 (not res!2264223)) b!5337942))

(assert (= (or b!5337943 b!5337939 b!5337948) bm!381560))

(assert (=> b!5337940 m!6370160))

(assert (=> b!5337940 m!6370160))

(declare-fun m!6370688 () Bool)

(assert (=> b!5337940 m!6370688))

(assert (=> b!5337940 m!6370164))

(assert (=> b!5337940 m!6370688))

(assert (=> b!5337940 m!6370164))

(declare-fun m!6370690 () Bool)

(assert (=> b!5337940 m!6370690))

(assert (=> b!5337951 m!6370164))

(assert (=> b!5337951 m!6370164))

(assert (=> b!5337951 m!6370168))

(assert (=> bm!381560 m!6370124))

(assert (=> b!5337942 m!6370160))

(assert (=> b!5337938 m!6370164))

(assert (=> b!5337938 m!6370164))

(assert (=> b!5337938 m!6370168))

(declare-fun m!6370692 () Bool)

(assert (=> b!5337946 m!6370692))

(assert (=> d!1713301 m!6370124))

(assert (=> d!1713301 m!6369876))

(assert (=> b!5337945 m!6370160))

(assert (=> b!5336993 d!1713301))

(declare-fun d!1713303 () Bool)

(assert (=> d!1713303 (= (matchR!7196 r!7292 s!2326) (matchRSpec!2114 r!7292 s!2326))))

(declare-fun lt!2176720 () Unit!153562)

(assert (=> d!1713303 (= lt!2176720 (choose!39993 r!7292 s!2326))))

(assert (=> d!1713303 (validRegex!6747 r!7292)))

(assert (=> d!1713303 (= (mainMatchTheorem!2114 r!7292 s!2326) lt!2176720)))

(declare-fun bs!1237928 () Bool)

(assert (= bs!1237928 d!1713303))

(assert (=> bs!1237928 m!6369870))

(assert (=> bs!1237928 m!6369868))

(declare-fun m!6370694 () Bool)

(assert (=> bs!1237928 m!6370694))

(assert (=> bs!1237928 m!6369876))

(assert (=> b!5336993 d!1713303))

(declare-fun b!5337952 () Bool)

(declare-fun e!3314850 () (InoxSet Context!8790))

(assert (=> b!5337952 (= e!3314850 ((as const (Array Context!8790 Bool)) false))))

(declare-fun b!5337953 () Bool)

(declare-fun e!3314849 () (InoxSet Context!8790))

(declare-fun call!381566 () (InoxSet Context!8790))

(assert (=> b!5337953 (= e!3314849 ((_ map or) call!381566 (derivationStepZipperUp!383 (Context!8791 (t!374549 (exprs!4895 lt!2176541))) (h!67657 s!2326))))))

(declare-fun bm!381561 () Bool)

(assert (=> bm!381561 (= call!381566 (derivationStepZipperDown!459 (h!67656 (exprs!4895 lt!2176541)) (Context!8791 (t!374549 (exprs!4895 lt!2176541))) (h!67657 s!2326)))))

(declare-fun b!5337954 () Bool)

(declare-fun e!3314851 () Bool)

(assert (=> b!5337954 (= e!3314851 (nullable!5180 (h!67656 (exprs!4895 lt!2176541))))))

(declare-fun b!5337955 () Bool)

(assert (=> b!5337955 (= e!3314850 call!381566)))

(declare-fun b!5337956 () Bool)

(assert (=> b!5337956 (= e!3314849 e!3314850)))

(declare-fun c!928720 () Bool)

(assert (=> b!5337956 (= c!928720 ((_ is Cons!61208) (exprs!4895 lt!2176541)))))

(declare-fun d!1713305 () Bool)

(declare-fun c!928719 () Bool)

(assert (=> d!1713305 (= c!928719 e!3314851)))

(declare-fun res!2264228 () Bool)

(assert (=> d!1713305 (=> (not res!2264228) (not e!3314851))))

(assert (=> d!1713305 (= res!2264228 ((_ is Cons!61208) (exprs!4895 lt!2176541)))))

(assert (=> d!1713305 (= (derivationStepZipperUp!383 lt!2176541 (h!67657 s!2326)) e!3314849)))

(assert (= (and d!1713305 res!2264228) b!5337954))

(assert (= (and d!1713305 c!928719) b!5337953))

(assert (= (and d!1713305 (not c!928719)) b!5337956))

(assert (= (and b!5337956 c!928720) b!5337955))

(assert (= (and b!5337956 (not c!928720)) b!5337952))

(assert (= (or b!5337953 b!5337955) bm!381561))

(declare-fun m!6370696 () Bool)

(assert (=> b!5337953 m!6370696))

(declare-fun m!6370698 () Bool)

(assert (=> bm!381561 m!6370698))

(declare-fun m!6370700 () Bool)

(assert (=> b!5337954 m!6370700))

(assert (=> b!5337013 d!1713305))

(declare-fun d!1713307 () Bool)

(assert (=> d!1713307 (= (flatMap!738 z!1189 lambda!273245) (dynLambda!24204 lambda!273245 (h!67658 zl!343)))))

(declare-fun lt!2176721 () Unit!153562)

(assert (=> d!1713307 (= lt!2176721 (choose!39989 z!1189 (h!67658 zl!343) lambda!273245))))

(assert (=> d!1713307 (= z!1189 (store ((as const (Array Context!8790 Bool)) false) (h!67658 zl!343) true))))

(assert (=> d!1713307 (= (lemmaFlatMapOnSingletonSet!270 z!1189 (h!67658 zl!343) lambda!273245) lt!2176721)))

(declare-fun b_lambda!205167 () Bool)

(assert (=> (not b_lambda!205167) (not d!1713307)))

(declare-fun bs!1237929 () Bool)

(assert (= bs!1237929 d!1713307))

(assert (=> bs!1237929 m!6369860))

(declare-fun m!6370702 () Bool)

(assert (=> bs!1237929 m!6370702))

(declare-fun m!6370704 () Bool)

(assert (=> bs!1237929 m!6370704))

(declare-fun m!6370706 () Bool)

(assert (=> bs!1237929 m!6370706))

(assert (=> b!5337013 d!1713307))

(declare-fun d!1713309 () Bool)

(assert (=> d!1713309 (= (nullable!5180 (h!67656 (exprs!4895 (h!67658 zl!343)))) (nullableFct!1514 (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun bs!1237930 () Bool)

(assert (= bs!1237930 d!1713309))

(declare-fun m!6370708 () Bool)

(assert (=> bs!1237930 m!6370708))

(assert (=> b!5337013 d!1713309))

(declare-fun b!5337957 () Bool)

(declare-fun e!3314853 () (InoxSet Context!8790))

(assert (=> b!5337957 (= e!3314853 ((as const (Array Context!8790 Bool)) false))))

(declare-fun b!5337958 () Bool)

(declare-fun e!3314852 () (InoxSet Context!8790))

(declare-fun call!381567 () (InoxSet Context!8790))

(assert (=> b!5337958 (= e!3314852 ((_ map or) call!381567 (derivationStepZipperUp!383 (Context!8791 (t!374549 (exprs!4895 (h!67658 zl!343)))) (h!67657 s!2326))))))

(declare-fun bm!381562 () Bool)

(assert (=> bm!381562 (= call!381567 (derivationStepZipperDown!459 (h!67656 (exprs!4895 (h!67658 zl!343))) (Context!8791 (t!374549 (exprs!4895 (h!67658 zl!343)))) (h!67657 s!2326)))))

(declare-fun b!5337959 () Bool)

(declare-fun e!3314854 () Bool)

(assert (=> b!5337959 (= e!3314854 (nullable!5180 (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337960 () Bool)

(assert (=> b!5337960 (= e!3314853 call!381567)))

(declare-fun b!5337961 () Bool)

(assert (=> b!5337961 (= e!3314852 e!3314853)))

(declare-fun c!928722 () Bool)

(assert (=> b!5337961 (= c!928722 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343))))))

(declare-fun d!1713311 () Bool)

(declare-fun c!928721 () Bool)

(assert (=> d!1713311 (= c!928721 e!3314854)))

(declare-fun res!2264229 () Bool)

(assert (=> d!1713311 (=> (not res!2264229) (not e!3314854))))

(assert (=> d!1713311 (= res!2264229 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343))))))

(assert (=> d!1713311 (= (derivationStepZipperUp!383 (h!67658 zl!343) (h!67657 s!2326)) e!3314852)))

(assert (= (and d!1713311 res!2264229) b!5337959))

(assert (= (and d!1713311 c!928721) b!5337958))

(assert (= (and d!1713311 (not c!928721)) b!5337961))

(assert (= (and b!5337961 c!928722) b!5337960))

(assert (= (and b!5337961 (not c!928722)) b!5337957))

(assert (= (or b!5337958 b!5337960) bm!381562))

(declare-fun m!6370710 () Bool)

(assert (=> b!5337958 m!6370710))

(declare-fun m!6370712 () Bool)

(assert (=> bm!381562 m!6370712))

(assert (=> b!5337959 m!6369858))

(assert (=> b!5337013 d!1713311))

(declare-fun b!5337962 () Bool)

(declare-fun e!3314860 () (InoxSet Context!8790))

(assert (=> b!5337962 (= e!3314860 ((as const (Array Context!8790 Bool)) false))))

(declare-fun bm!381563 () Bool)

(declare-fun call!381572 () (InoxSet Context!8790))

(declare-fun call!381571 () (InoxSet Context!8790))

(assert (=> bm!381563 (= call!381572 call!381571)))

(declare-fun d!1713313 () Bool)

(declare-fun c!928724 () Bool)

(assert (=> d!1713313 (= c!928724 (and ((_ is ElementMatch!15011) (h!67656 (exprs!4895 (h!67658 zl!343)))) (= (c!928425 (h!67656 (exprs!4895 (h!67658 zl!343)))) (h!67657 s!2326))))))

(declare-fun e!3314856 () (InoxSet Context!8790))

(assert (=> d!1713313 (= (derivationStepZipperDown!459 (h!67656 (exprs!4895 (h!67658 zl!343))) lt!2176541 (h!67657 s!2326)) e!3314856)))

(declare-fun b!5337963 () Bool)

(declare-fun e!3314857 () (InoxSet Context!8790))

(declare-fun e!3314855 () (InoxSet Context!8790))

(assert (=> b!5337963 (= e!3314857 e!3314855)))

(declare-fun c!928725 () Bool)

(assert (=> b!5337963 (= c!928725 ((_ is Concat!23856) (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337964 () Bool)

(declare-fun e!3314858 () (InoxSet Context!8790))

(assert (=> b!5337964 (= e!3314856 e!3314858)))

(declare-fun c!928726 () Bool)

(assert (=> b!5337964 (= c!928726 ((_ is Union!15011) (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337965 () Bool)

(declare-fun call!381568 () (InoxSet Context!8790))

(assert (=> b!5337965 (= e!3314855 call!381568)))

(declare-fun bm!381564 () Bool)

(declare-fun call!381569 () List!61332)

(declare-fun call!381573 () List!61332)

(assert (=> bm!381564 (= call!381569 call!381573)))

(declare-fun bm!381565 () Bool)

(declare-fun c!928723 () Bool)

(assert (=> bm!381565 (= call!381571 (derivationStepZipperDown!459 (ite c!928726 (regOne!30535 (h!67656 (exprs!4895 (h!67658 zl!343)))) (ite c!928723 (regTwo!30534 (h!67656 (exprs!4895 (h!67658 zl!343)))) (ite c!928725 (regOne!30534 (h!67656 (exprs!4895 (h!67658 zl!343)))) (reg!15340 (h!67656 (exprs!4895 (h!67658 zl!343))))))) (ite (or c!928726 c!928723) lt!2176541 (Context!8791 call!381569)) (h!67657 s!2326)))))

(declare-fun bm!381566 () Bool)

(assert (=> bm!381566 (= call!381573 ($colon$colon!1412 (exprs!4895 lt!2176541) (ite (or c!928723 c!928725) (regTwo!30534 (h!67656 (exprs!4895 (h!67658 zl!343)))) (h!67656 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337966 () Bool)

(declare-fun e!3314859 () Bool)

(assert (=> b!5337966 (= c!928723 e!3314859)))

(declare-fun res!2264230 () Bool)

(assert (=> b!5337966 (=> (not res!2264230) (not e!3314859))))

(assert (=> b!5337966 (= res!2264230 ((_ is Concat!23856) (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> b!5337966 (= e!3314858 e!3314857)))

(declare-fun b!5337967 () Bool)

(assert (=> b!5337967 (= e!3314859 (nullable!5180 (regOne!30534 (h!67656 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337968 () Bool)

(assert (=> b!5337968 (= e!3314856 (store ((as const (Array Context!8790 Bool)) false) lt!2176541 true))))

(declare-fun bm!381567 () Bool)

(assert (=> bm!381567 (= call!381568 call!381572)))

(declare-fun bm!381568 () Bool)

(declare-fun call!381570 () (InoxSet Context!8790))

(assert (=> bm!381568 (= call!381570 (derivationStepZipperDown!459 (ite c!928726 (regTwo!30535 (h!67656 (exprs!4895 (h!67658 zl!343)))) (regOne!30534 (h!67656 (exprs!4895 (h!67658 zl!343))))) (ite c!928726 lt!2176541 (Context!8791 call!381573)) (h!67657 s!2326)))))

(declare-fun b!5337969 () Bool)

(assert (=> b!5337969 (= e!3314860 call!381568)))

(declare-fun b!5337970 () Bool)

(assert (=> b!5337970 (= e!3314858 ((_ map or) call!381571 call!381570))))

(declare-fun b!5337971 () Bool)

(assert (=> b!5337971 (= e!3314857 ((_ map or) call!381570 call!381572))))

(declare-fun b!5337972 () Bool)

(declare-fun c!928727 () Bool)

(assert (=> b!5337972 (= c!928727 ((_ is Star!15011) (h!67656 (exprs!4895 (h!67658 zl!343)))))))

(assert (=> b!5337972 (= e!3314855 e!3314860)))

(assert (= (and d!1713313 c!928724) b!5337968))

(assert (= (and d!1713313 (not c!928724)) b!5337964))

(assert (= (and b!5337964 c!928726) b!5337970))

(assert (= (and b!5337964 (not c!928726)) b!5337966))

(assert (= (and b!5337966 res!2264230) b!5337967))

(assert (= (and b!5337966 c!928723) b!5337971))

(assert (= (and b!5337966 (not c!928723)) b!5337963))

(assert (= (and b!5337963 c!928725) b!5337965))

(assert (= (and b!5337963 (not c!928725)) b!5337972))

(assert (= (and b!5337972 c!928727) b!5337969))

(assert (= (and b!5337972 (not c!928727)) b!5337962))

(assert (= (or b!5337965 b!5337969) bm!381564))

(assert (= (or b!5337965 b!5337969) bm!381567))

(assert (= (or b!5337971 bm!381564) bm!381566))

(assert (= (or b!5337971 bm!381567) bm!381563))

(assert (= (or b!5337970 b!5337971) bm!381568))

(assert (= (or b!5337970 bm!381563) bm!381565))

(declare-fun m!6370714 () Bool)

(assert (=> b!5337967 m!6370714))

(declare-fun m!6370716 () Bool)

(assert (=> bm!381566 m!6370716))

(declare-fun m!6370718 () Bool)

(assert (=> b!5337968 m!6370718))

(declare-fun m!6370720 () Bool)

(assert (=> bm!381568 m!6370720))

(declare-fun m!6370722 () Bool)

(assert (=> bm!381565 m!6370722))

(assert (=> b!5337013 d!1713313))

(declare-fun d!1713315 () Bool)

(assert (=> d!1713315 (= (flatMap!738 z!1189 lambda!273245) (choose!39987 z!1189 lambda!273245))))

(declare-fun bs!1237931 () Bool)

(assert (= bs!1237931 d!1713315))

(declare-fun m!6370724 () Bool)

(assert (=> bs!1237931 m!6370724))

(assert (=> b!5337013 d!1713315))

(declare-fun b!5337973 () Bool)

(declare-fun e!3314862 () (InoxSet Context!8790))

(assert (=> b!5337973 (= e!3314862 ((as const (Array Context!8790 Bool)) false))))

(declare-fun e!3314861 () (InoxSet Context!8790))

(declare-fun b!5337974 () Bool)

(declare-fun call!381574 () (InoxSet Context!8790))

(assert (=> b!5337974 (= e!3314861 ((_ map or) call!381574 (derivationStepZipperUp!383 (Context!8791 (t!374549 (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343)))))))) (h!67657 s!2326))))))

(declare-fun bm!381569 () Bool)

(assert (=> bm!381569 (= call!381574 (derivationStepZipperDown!459 (h!67656 (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343))))))) (Context!8791 (t!374549 (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343)))))))) (h!67657 s!2326)))))

(declare-fun b!5337975 () Bool)

(declare-fun e!3314863 () Bool)

(assert (=> b!5337975 (= e!3314863 (nullable!5180 (h!67656 (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343)))))))))))

(declare-fun b!5337976 () Bool)

(assert (=> b!5337976 (= e!3314862 call!381574)))

(declare-fun b!5337977 () Bool)

(assert (=> b!5337977 (= e!3314861 e!3314862)))

(declare-fun c!928729 () Bool)

(assert (=> b!5337977 (= c!928729 ((_ is Cons!61208) (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343))))))))))

(declare-fun d!1713317 () Bool)

(declare-fun c!928728 () Bool)

(assert (=> d!1713317 (= c!928728 e!3314863)))

(declare-fun res!2264231 () Bool)

(assert (=> d!1713317 (=> (not res!2264231) (not e!3314863))))

(assert (=> d!1713317 (= res!2264231 ((_ is Cons!61208) (exprs!4895 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343))))))))))

(assert (=> d!1713317 (= (derivationStepZipperUp!383 (Context!8791 (Cons!61208 (h!67656 (exprs!4895 (h!67658 zl!343))) (t!374549 (exprs!4895 (h!67658 zl!343))))) (h!67657 s!2326)) e!3314861)))

(assert (= (and d!1713317 res!2264231) b!5337975))

(assert (= (and d!1713317 c!928728) b!5337974))

(assert (= (and d!1713317 (not c!928728)) b!5337977))

(assert (= (and b!5337977 c!928729) b!5337976))

(assert (= (and b!5337977 (not c!928729)) b!5337973))

(assert (= (or b!5337974 b!5337976) bm!381569))

(declare-fun m!6370726 () Bool)

(assert (=> b!5337974 m!6370726))

(declare-fun m!6370728 () Bool)

(assert (=> bm!381569 m!6370728))

(declare-fun m!6370730 () Bool)

(assert (=> b!5337975 m!6370730))

(assert (=> b!5337013 d!1713317))

(declare-fun bs!1237932 () Bool)

(declare-fun d!1713319 () Bool)

(assert (= bs!1237932 (and d!1713319 d!1713253)))

(declare-fun lambda!273361 () Int)

(assert (=> bs!1237932 (= lambda!273361 lambda!273341)))

(declare-fun bs!1237933 () Bool)

(assert (= bs!1237933 (and d!1713319 d!1713297)))

(assert (=> bs!1237933 (= lambda!273361 lambda!273358)))

(declare-fun bs!1237934 () Bool)

(assert (= bs!1237934 (and d!1713319 d!1713155)))

(assert (=> bs!1237934 (= lambda!273361 lambda!273316)))

(declare-fun bs!1237935 () Bool)

(assert (= bs!1237935 (and d!1713319 d!1713089)))

(assert (=> bs!1237935 (= lambda!273361 lambda!273276)))

(declare-fun bs!1237936 () Bool)

(assert (= bs!1237936 (and d!1713319 d!1713055)))

(assert (=> bs!1237936 (= lambda!273361 lambda!273255)))

(declare-fun bs!1237937 () Bool)

(assert (= bs!1237937 (and d!1713319 d!1713239)))

(assert (=> bs!1237937 (= lambda!273361 lambda!273336)))

(declare-fun bs!1237938 () Bool)

(assert (= bs!1237938 (and d!1713319 d!1713195)))

(assert (=> bs!1237938 (= lambda!273361 lambda!273322)))

(declare-fun e!3314865 () Bool)

(assert (=> d!1713319 e!3314865))

(declare-fun res!2264232 () Bool)

(assert (=> d!1713319 (=> (not res!2264232) (not e!3314865))))

(declare-fun lt!2176722 () Regex!15011)

(assert (=> d!1713319 (= res!2264232 (validRegex!6747 lt!2176722))))

(declare-fun e!3314869 () Regex!15011)

(assert (=> d!1713319 (= lt!2176722 e!3314869)))

(declare-fun c!928730 () Bool)

(declare-fun e!3314867 () Bool)

(assert (=> d!1713319 (= c!928730 e!3314867)))

(declare-fun res!2264233 () Bool)

(assert (=> d!1713319 (=> (not res!2264233) (not e!3314867))))

(assert (=> d!1713319 (= res!2264233 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343))))))

(assert (=> d!1713319 (forall!14431 (exprs!4895 (h!67658 zl!343)) lambda!273361)))

(assert (=> d!1713319 (= (generalisedConcat!680 (exprs!4895 (h!67658 zl!343))) lt!2176722)))

(declare-fun b!5337978 () Bool)

(declare-fun e!3314864 () Bool)

(assert (=> b!5337978 (= e!3314864 (= lt!2176722 (head!11443 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337979 () Bool)

(declare-fun e!3314868 () Bool)

(assert (=> b!5337979 (= e!3314868 e!3314864)))

(declare-fun c!928733 () Bool)

(assert (=> b!5337979 (= c!928733 (isEmpty!33179 (tail!10540 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337980 () Bool)

(assert (=> b!5337980 (= e!3314868 (isEmptyExpr!897 lt!2176722))))

(declare-fun b!5337981 () Bool)

(declare-fun e!3314866 () Regex!15011)

(assert (=> b!5337981 (= e!3314866 (Concat!23856 (h!67656 (exprs!4895 (h!67658 zl!343))) (generalisedConcat!680 (t!374549 (exprs!4895 (h!67658 zl!343))))))))

(declare-fun b!5337982 () Bool)

(assert (=> b!5337982 (= e!3314866 EmptyExpr!15011)))

(declare-fun b!5337983 () Bool)

(assert (=> b!5337983 (= e!3314864 (isConcat!420 lt!2176722))))

(declare-fun b!5337984 () Bool)

(assert (=> b!5337984 (= e!3314869 e!3314866)))

(declare-fun c!928731 () Bool)

(assert (=> b!5337984 (= c!928731 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343))))))

(declare-fun b!5337985 () Bool)

(assert (=> b!5337985 (= e!3314865 e!3314868)))

(declare-fun c!928732 () Bool)

(assert (=> b!5337985 (= c!928732 (isEmpty!33179 (exprs!4895 (h!67658 zl!343))))))

(declare-fun b!5337986 () Bool)

(assert (=> b!5337986 (= e!3314867 (isEmpty!33179 (t!374549 (exprs!4895 (h!67658 zl!343)))))))

(declare-fun b!5337987 () Bool)

(assert (=> b!5337987 (= e!3314869 (h!67656 (exprs!4895 (h!67658 zl!343))))))

(assert (= (and d!1713319 res!2264233) b!5337986))

(assert (= (and d!1713319 c!928730) b!5337987))

(assert (= (and d!1713319 (not c!928730)) b!5337984))

(assert (= (and b!5337984 c!928731) b!5337981))

(assert (= (and b!5337984 (not c!928731)) b!5337982))

(assert (= (and d!1713319 res!2264232) b!5337985))

(assert (= (and b!5337985 c!928732) b!5337980))

(assert (= (and b!5337985 (not c!928732)) b!5337979))

(assert (= (and b!5337979 c!928733) b!5337978))

(assert (= (and b!5337979 (not c!928733)) b!5337983))

(assert (=> b!5337981 m!6369820))

(assert (=> b!5337986 m!6369850))

(declare-fun m!6370732 () Bool)

(assert (=> b!5337979 m!6370732))

(assert (=> b!5337979 m!6370732))

(declare-fun m!6370734 () Bool)

(assert (=> b!5337979 m!6370734))

(declare-fun m!6370736 () Bool)

(assert (=> d!1713319 m!6370736))

(declare-fun m!6370738 () Bool)

(assert (=> d!1713319 m!6370738))

(declare-fun m!6370740 () Bool)

(assert (=> b!5337985 m!6370740))

(declare-fun m!6370742 () Bool)

(assert (=> b!5337983 m!6370742))

(declare-fun m!6370744 () Bool)

(assert (=> b!5337978 m!6370744))

(declare-fun m!6370746 () Bool)

(assert (=> b!5337980 m!6370746))

(assert (=> b!5336992 d!1713319))

(declare-fun b!5337992 () Bool)

(declare-fun e!3314872 () Bool)

(declare-fun tp!1484580 () Bool)

(declare-fun tp!1484581 () Bool)

(assert (=> b!5337992 (= e!3314872 (and tp!1484580 tp!1484581))))

(assert (=> b!5336997 (= tp!1484513 e!3314872)))

(assert (= (and b!5336997 ((_ is Cons!61208) (exprs!4895 setElem!34429))) b!5337992))

(declare-fun condSetEmpty!34435 () Bool)

(assert (=> setNonEmpty!34429 (= condSetEmpty!34435 (= setRest!34429 ((as const (Array Context!8790 Bool)) false)))))

(declare-fun setRes!34435 () Bool)

(assert (=> setNonEmpty!34429 (= tp!1484509 setRes!34435)))

(declare-fun setIsEmpty!34435 () Bool)

(assert (=> setIsEmpty!34435 setRes!34435))

(declare-fun tp!1484586 () Bool)

(declare-fun e!3314875 () Bool)

(declare-fun setElem!34435 () Context!8790)

(declare-fun setNonEmpty!34435 () Bool)

(assert (=> setNonEmpty!34435 (= setRes!34435 (and tp!1484586 (inv!80774 setElem!34435) e!3314875))))

(declare-fun setRest!34435 () (InoxSet Context!8790))

(assert (=> setNonEmpty!34435 (= setRest!34429 ((_ map or) (store ((as const (Array Context!8790 Bool)) false) setElem!34435 true) setRest!34435))))

(declare-fun b!5337997 () Bool)

(declare-fun tp!1484587 () Bool)

(assert (=> b!5337997 (= e!3314875 tp!1484587)))

(assert (= (and setNonEmpty!34429 condSetEmpty!34435) setIsEmpty!34435))

(assert (= (and setNonEmpty!34429 (not condSetEmpty!34435)) setNonEmpty!34435))

(assert (= setNonEmpty!34435 b!5337997))

(declare-fun m!6370748 () Bool)

(assert (=> setNonEmpty!34435 m!6370748))

(declare-fun b!5338010 () Bool)

(declare-fun e!3314878 () Bool)

(declare-fun tp!1484601 () Bool)

(assert (=> b!5338010 (= e!3314878 tp!1484601)))

(declare-fun b!5338011 () Bool)

(declare-fun tp!1484602 () Bool)

(declare-fun tp!1484600 () Bool)

(assert (=> b!5338011 (= e!3314878 (and tp!1484602 tp!1484600))))

(declare-fun b!5338009 () Bool)

(declare-fun tp!1484599 () Bool)

(declare-fun tp!1484598 () Bool)

(assert (=> b!5338009 (= e!3314878 (and tp!1484599 tp!1484598))))

(declare-fun b!5338008 () Bool)

(assert (=> b!5338008 (= e!3314878 tp_is_empty!39275)))

(assert (=> b!5336995 (= tp!1484508 e!3314878)))

(assert (= (and b!5336995 ((_ is ElementMatch!15011) (reg!15340 r!7292))) b!5338008))

(assert (= (and b!5336995 ((_ is Concat!23856) (reg!15340 r!7292))) b!5338009))

(assert (= (and b!5336995 ((_ is Star!15011) (reg!15340 r!7292))) b!5338010))

(assert (= (and b!5336995 ((_ is Union!15011) (reg!15340 r!7292))) b!5338011))

(declare-fun b!5338014 () Bool)

(declare-fun e!3314879 () Bool)

(declare-fun tp!1484606 () Bool)

(assert (=> b!5338014 (= e!3314879 tp!1484606)))

(declare-fun b!5338015 () Bool)

(declare-fun tp!1484607 () Bool)

(declare-fun tp!1484605 () Bool)

(assert (=> b!5338015 (= e!3314879 (and tp!1484607 tp!1484605))))

(declare-fun b!5338013 () Bool)

(declare-fun tp!1484604 () Bool)

(declare-fun tp!1484603 () Bool)

(assert (=> b!5338013 (= e!3314879 (and tp!1484604 tp!1484603))))

(declare-fun b!5338012 () Bool)

(assert (=> b!5338012 (= e!3314879 tp_is_empty!39275)))

(assert (=> b!5337015 (= tp!1484510 e!3314879)))

(assert (= (and b!5337015 ((_ is ElementMatch!15011) (regOne!30535 r!7292))) b!5338012))

(assert (= (and b!5337015 ((_ is Concat!23856) (regOne!30535 r!7292))) b!5338013))

(assert (= (and b!5337015 ((_ is Star!15011) (regOne!30535 r!7292))) b!5338014))

(assert (= (and b!5337015 ((_ is Union!15011) (regOne!30535 r!7292))) b!5338015))

(declare-fun b!5338018 () Bool)

(declare-fun e!3314880 () Bool)

(declare-fun tp!1484611 () Bool)

(assert (=> b!5338018 (= e!3314880 tp!1484611)))

(declare-fun b!5338019 () Bool)

(declare-fun tp!1484612 () Bool)

(declare-fun tp!1484610 () Bool)

(assert (=> b!5338019 (= e!3314880 (and tp!1484612 tp!1484610))))

(declare-fun b!5338017 () Bool)

(declare-fun tp!1484609 () Bool)

(declare-fun tp!1484608 () Bool)

(assert (=> b!5338017 (= e!3314880 (and tp!1484609 tp!1484608))))

(declare-fun b!5338016 () Bool)

(assert (=> b!5338016 (= e!3314880 tp_is_empty!39275)))

(assert (=> b!5337015 (= tp!1484516 e!3314880)))

(assert (= (and b!5337015 ((_ is ElementMatch!15011) (regTwo!30535 r!7292))) b!5338016))

(assert (= (and b!5337015 ((_ is Concat!23856) (regTwo!30535 r!7292))) b!5338017))

(assert (= (and b!5337015 ((_ is Star!15011) (regTwo!30535 r!7292))) b!5338018))

(assert (= (and b!5337015 ((_ is Union!15011) (regTwo!30535 r!7292))) b!5338019))

(declare-fun b!5338027 () Bool)

(declare-fun e!3314886 () Bool)

(declare-fun tp!1484617 () Bool)

(assert (=> b!5338027 (= e!3314886 tp!1484617)))

(declare-fun b!5338026 () Bool)

(declare-fun tp!1484618 () Bool)

(declare-fun e!3314885 () Bool)

(assert (=> b!5338026 (= e!3314885 (and (inv!80774 (h!67658 (t!374551 zl!343))) e!3314886 tp!1484618))))

(assert (=> b!5337014 (= tp!1484515 e!3314885)))

(assert (= b!5338026 b!5338027))

(assert (= (and b!5337014 ((_ is Cons!61210) (t!374551 zl!343))) b!5338026))

(declare-fun m!6370750 () Bool)

(assert (=> b!5338026 m!6370750))

(declare-fun b!5338028 () Bool)

(declare-fun e!3314887 () Bool)

(declare-fun tp!1484619 () Bool)

(declare-fun tp!1484620 () Bool)

(assert (=> b!5338028 (= e!3314887 (and tp!1484619 tp!1484620))))

(assert (=> b!5336998 (= tp!1484511 e!3314887)))

(assert (= (and b!5336998 ((_ is Cons!61208) (exprs!4895 (h!67658 zl!343)))) b!5338028))

(declare-fun b!5338031 () Bool)

(declare-fun e!3314888 () Bool)

(declare-fun tp!1484624 () Bool)

(assert (=> b!5338031 (= e!3314888 tp!1484624)))

(declare-fun b!5338032 () Bool)

(declare-fun tp!1484625 () Bool)

(declare-fun tp!1484623 () Bool)

(assert (=> b!5338032 (= e!3314888 (and tp!1484625 tp!1484623))))

(declare-fun b!5338030 () Bool)

(declare-fun tp!1484622 () Bool)

(declare-fun tp!1484621 () Bool)

(assert (=> b!5338030 (= e!3314888 (and tp!1484622 tp!1484621))))

(declare-fun b!5338029 () Bool)

(assert (=> b!5338029 (= e!3314888 tp_is_empty!39275)))

(assert (=> b!5337018 (= tp!1484517 e!3314888)))

(assert (= (and b!5337018 ((_ is ElementMatch!15011) (regOne!30534 r!7292))) b!5338029))

(assert (= (and b!5337018 ((_ is Concat!23856) (regOne!30534 r!7292))) b!5338030))

(assert (= (and b!5337018 ((_ is Star!15011) (regOne!30534 r!7292))) b!5338031))

(assert (= (and b!5337018 ((_ is Union!15011) (regOne!30534 r!7292))) b!5338032))

(declare-fun b!5338035 () Bool)

(declare-fun e!3314889 () Bool)

(declare-fun tp!1484629 () Bool)

(assert (=> b!5338035 (= e!3314889 tp!1484629)))

(declare-fun b!5338036 () Bool)

(declare-fun tp!1484630 () Bool)

(declare-fun tp!1484628 () Bool)

(assert (=> b!5338036 (= e!3314889 (and tp!1484630 tp!1484628))))

(declare-fun b!5338034 () Bool)

(declare-fun tp!1484627 () Bool)

(declare-fun tp!1484626 () Bool)

(assert (=> b!5338034 (= e!3314889 (and tp!1484627 tp!1484626))))

(declare-fun b!5338033 () Bool)

(assert (=> b!5338033 (= e!3314889 tp_is_empty!39275)))

(assert (=> b!5337018 (= tp!1484512 e!3314889)))

(assert (= (and b!5337018 ((_ is ElementMatch!15011) (regTwo!30534 r!7292))) b!5338033))

(assert (= (and b!5337018 ((_ is Concat!23856) (regTwo!30534 r!7292))) b!5338034))

(assert (= (and b!5337018 ((_ is Star!15011) (regTwo!30534 r!7292))) b!5338035))

(assert (= (and b!5337018 ((_ is Union!15011) (regTwo!30534 r!7292))) b!5338036))

(declare-fun b!5338041 () Bool)

(declare-fun e!3314892 () Bool)

(declare-fun tp!1484633 () Bool)

(assert (=> b!5338041 (= e!3314892 (and tp_is_empty!39275 tp!1484633))))

(assert (=> b!5336987 (= tp!1484514 e!3314892)))

(assert (= (and b!5336987 ((_ is Cons!61209) (t!374550 s!2326))) b!5338041))

(declare-fun b_lambda!205169 () Bool)

(assert (= b_lambda!205167 (or b!5337013 b_lambda!205169)))

(declare-fun bs!1237939 () Bool)

(declare-fun d!1713321 () Bool)

(assert (= bs!1237939 (and d!1713321 b!5337013)))

(assert (=> bs!1237939 (= (dynLambda!24204 lambda!273245 (h!67658 zl!343)) (derivationStepZipperUp!383 (h!67658 zl!343) (h!67657 s!2326)))))

(assert (=> bs!1237939 m!6369864))

(assert (=> d!1713307 d!1713321))

(declare-fun b_lambda!205171 () Bool)

(assert (= b_lambda!205157 (or b!5337013 b_lambda!205171)))

(declare-fun bs!1237940 () Bool)

(declare-fun d!1713323 () Bool)

(assert (= bs!1237940 (and d!1713323 b!5337013)))

(assert (=> bs!1237940 (= (dynLambda!24204 lambda!273245 lt!2176531) (derivationStepZipperUp!383 lt!2176531 (h!67657 s!2326)))))

(assert (=> bs!1237940 m!6369792))

(assert (=> d!1713079 d!1713323))

(check-sat (not b!5337975) (not b!5337945) (not d!1713133) (not b!5337568) (not b!5337916) (not b!5337986) (not b!5337925) (not b!5337923) (not bm!381561) (not b!5337734) (not b!5337907) (not bm!381524) (not b!5337637) (not b!5337508) (not d!1713139) (not b!5337565) (not bm!381483) (not b!5337633) (not b!5337569) (not b!5338011) (not b!5337512) (not d!1713277) (not bm!381558) (not b!5338026) (not b!5338032) (not d!1713101) (not b!5337942) (not b!5337946) (not b!5337570) (not bm!381562) (not b!5337623) (not b!5337130) (not b!5337211) (not b!5337979) (not d!1713303) (not b!5338030) (not b!5337572) (not b!5337820) (not b!5337603) (not b!5337131) (not b!5338034) (not d!1713285) (not d!1713095) (not d!1713209) (not b!5337808) (not b!5337904) (not b!5337263) (not b_lambda!205169) (not d!1713279) (not b!5337268) (not b!5337349) (not b!5337627) (not d!1713093) (not b!5337416) (not b!5337814) (not d!1713289) (not b!5337951) (not b!5338018) (not d!1713235) (not bm!381509) (not b!5337648) (not b!5337974) (not d!1713187) (not bm!381468) (not b!5337981) (not d!1713083) (not b!5337507) (not b!5337985) (not b!5338015) (not b!5337911) (not d!1713193) (not bm!381560) (not b!5337940) (not b!5338041) (not b!5337953) (not b!5338019) (not bm!381566) (not b!5337958) (not b!5337609) (not b!5337515) (not b!5337809) (not bm!381488) (not b!5337612) (not bm!381525) (not b!5338036) (not d!1713307) (not d!1713073) (not d!1713067) (not d!1713287) (not d!1713295) (not b!5337261) (not b!5337898) (not b!5337066) (not b!5337135) (not b!5337967) (not b!5337934) (not b!5337908) (not b!5337166) (not d!1713207) (not b!5337812) (not b!5337630) (not b!5337564) (not bm!381484) (not b!5337068) (not b!5337509) (not b!5337896) (not d!1713201) (not b!5337622) (not d!1713319) (not b!5338013) (not bm!381475) (not b!5338014) (not b!5337267) (not d!1713253) (not d!1713239) (not b!5337604) (not b!5337870) (not b!5337412) (not d!1713203) (not d!1713151) (not b!5338027) (not b!5337134) (not b_lambda!205171) (not d!1713143) (not d!1713079) (not d!1713211) (not b!5337978) (not bm!381526) (not b!5337903) (not d!1713301) (not bm!381545) (not d!1713273) (not d!1713099) tp_is_empty!39275 (not b!5337932) (not d!1713155) (not b!5337498) (not b!5338031) (not b!5337599) (not b!5337872) (not bm!381569) (not bm!381559) (not bm!381568) (not b!5337421) (not b!5337611) (not b!5337980) (not b!5337415) (not bs!1237940) (not d!1713089) (not bm!381548) (not b!5337915) (not bm!381565) (not b!5337811) (not d!1713055) (not d!1713281) (not b!5337628) (not b!5337815) (not b!5337635) (not b!5337992) (not b!5337600) (not b!5337510) (not d!1713197) (not b!5337262) (not b!5337496) (not b!5337926) (not b!5337997) (not d!1713309) (not b!5337983) (not b!5337914) (not d!1713297) (not d!1713161) (not b!5338017) (not b!5338009) (not b!5337351) (not b!5337959) (not b!5337807) (not b!5337921) (not b!5337104) (not d!1713121) (not b!5337641) (not b!5337909) (not bm!381510) (not b!5337514) (not bm!381546) (not b!5337938) (not b!5337408) (not d!1713283) (not b!5337669) (not b!5337954) (not d!1713275) (not b!5337265) (not d!1713315) (not b!5337410) (not bm!381469) (not b!5337132) (not b!5337602) (not b!5337626) (not b!5338028) (not b!5337640) (not b!5337133) (not b!5338035) (not b!5337601) (not setNonEmpty!34435) (not d!1713057) (not b!5337606) (not d!1713059) (not bs!1237939) (not b!5337608) (not d!1713195) (not d!1713069) (not d!1713199) (not b!5338010) (not b!5337210) (not b!5337260))
(check-sat)
