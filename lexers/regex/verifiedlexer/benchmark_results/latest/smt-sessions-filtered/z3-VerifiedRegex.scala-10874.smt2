; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561718 () Bool)

(assert start!561718)

(declare-fun b!5329078 () Bool)

(assert (=> b!5329078 true))

(assert (=> b!5329078 true))

(declare-fun lambda!272254 () Int)

(declare-fun lambda!272253 () Int)

(assert (=> b!5329078 (not (= lambda!272254 lambda!272253))))

(assert (=> b!5329078 true))

(assert (=> b!5329078 true))

(declare-fun b!5329060 () Bool)

(assert (=> b!5329060 true))

(declare-fun bs!1235088 () Bool)

(declare-fun b!5329063 () Bool)

(assert (= bs!1235088 (and b!5329063 b!5329078)))

(declare-datatypes ((C!30260 0))(
  ( (C!30261 (val!24832 Int)) )
))
(declare-datatypes ((Regex!14995 0))(
  ( (ElementMatch!14995 (c!926631 C!30260)) (Concat!23840 (regOne!30502 Regex!14995) (regTwo!30502 Regex!14995)) (EmptyExpr!14995) (Star!14995 (reg!15324 Regex!14995)) (EmptyLang!14995) (Union!14995 (regOne!30503 Regex!14995) (regTwo!30503 Regex!14995)) )
))
(declare-fun r!7292 () Regex!14995)

(declare-fun lambda!272256 () Int)

(declare-fun lt!2174145 () Regex!14995)

(assert (=> bs!1235088 (= (and (= (regOne!30502 (regOne!30502 r!7292)) (regOne!30502 r!7292)) (= lt!2174145 (regTwo!30502 r!7292))) (= lambda!272256 lambda!272253))))

(assert (=> bs!1235088 (not (= lambda!272256 lambda!272254))))

(assert (=> b!5329063 true))

(assert (=> b!5329063 true))

(assert (=> b!5329063 true))

(declare-fun lambda!272257 () Int)

(assert (=> bs!1235088 (not (= lambda!272257 lambda!272253))))

(assert (=> bs!1235088 (= (and (= (regOne!30502 (regOne!30502 r!7292)) (regOne!30502 r!7292)) (= lt!2174145 (regTwo!30502 r!7292))) (= lambda!272257 lambda!272254))))

(assert (=> b!5329063 (not (= lambda!272257 lambda!272256))))

(assert (=> b!5329063 true))

(assert (=> b!5329063 true))

(assert (=> b!5329063 true))

(declare-fun b!5329052 () Bool)

(declare-fun e!3310053 () Bool)

(declare-fun e!3310047 () Bool)

(assert (=> b!5329052 (= e!3310053 e!3310047)))

(declare-fun res!2260383 () Bool)

(assert (=> b!5329052 (=> res!2260383 e!3310047)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61284 0))(
  ( (Nil!61160) (Cons!61160 (h!67608 Regex!14995) (t!374499 List!61284)) )
))
(declare-datatypes ((Context!8758 0))(
  ( (Context!8759 (exprs!4879 List!61284)) )
))
(declare-fun lt!2174138 () (InoxSet Context!8758))

(declare-fun lt!2174132 () (InoxSet Context!8758))

(assert (=> b!5329052 (= res!2260383 (not (= lt!2174138 lt!2174132)))))

(declare-datatypes ((List!61285 0))(
  ( (Nil!61161) (Cons!61161 (h!67609 C!30260) (t!374500 List!61285)) )
))
(declare-fun s!2326 () List!61285)

(declare-fun lt!2174148 () (InoxSet Context!8758))

(declare-fun lt!2174136 () Context!8758)

(declare-fun lambda!272255 () Int)

(declare-fun flatMap!722 ((InoxSet Context!8758) Int) (InoxSet Context!8758))

(declare-fun derivationStepZipperUp!367 (Context!8758 C!30260) (InoxSet Context!8758))

(assert (=> b!5329052 (= (flatMap!722 lt!2174148 lambda!272255) (derivationStepZipperUp!367 lt!2174136 (h!67609 s!2326)))))

(declare-datatypes ((Unit!153498 0))(
  ( (Unit!153499) )
))
(declare-fun lt!2174137 () Unit!153498)

(declare-fun lemmaFlatMapOnSingletonSet!254 ((InoxSet Context!8758) Context!8758 Int) Unit!153498)

(assert (=> b!5329052 (= lt!2174137 (lemmaFlatMapOnSingletonSet!254 lt!2174148 lt!2174136 lambda!272255))))

(declare-fun lt!2174128 () (InoxSet Context!8758))

(assert (=> b!5329052 (= lt!2174128 (derivationStepZipperUp!367 lt!2174136 (h!67609 s!2326)))))

(declare-fun derivationStepZipper!1236 ((InoxSet Context!8758) C!30260) (InoxSet Context!8758))

(assert (=> b!5329052 (= lt!2174138 (derivationStepZipper!1236 lt!2174148 (h!67609 s!2326)))))

(assert (=> b!5329052 (= lt!2174148 (store ((as const (Array Context!8758 Bool)) false) lt!2174136 true))))

(declare-fun lt!2174130 () List!61284)

(assert (=> b!5329052 (= lt!2174136 (Context!8759 lt!2174130))))

(declare-fun lt!2174123 () List!61284)

(assert (=> b!5329052 (= lt!2174130 (Cons!61160 (regOne!30502 (regOne!30502 r!7292)) lt!2174123))))

(declare-fun b!5329053 () Bool)

(declare-fun e!3310052 () Unit!153498)

(declare-fun Unit!153500 () Unit!153498)

(assert (=> b!5329053 (= e!3310052 Unit!153500)))

(declare-fun b!5329055 () Bool)

(declare-fun e!3310049 () Bool)

(declare-fun tp_is_empty!39243 () Bool)

(assert (=> b!5329055 (= e!3310049 tp_is_empty!39243)))

(declare-fun b!5329056 () Bool)

(declare-fun res!2260379 () Bool)

(declare-fun e!3310058 () Bool)

(assert (=> b!5329056 (=> res!2260379 e!3310058)))

(declare-datatypes ((List!61286 0))(
  ( (Nil!61162) (Cons!61162 (h!67610 Context!8758) (t!374501 List!61286)) )
))
(declare-fun zl!343 () List!61286)

(declare-fun isEmpty!33131 (List!61284) Bool)

(assert (=> b!5329056 (= res!2260379 (isEmpty!33131 (t!374499 (exprs!4879 (h!67610 zl!343)))))))

(declare-fun b!5329057 () Bool)

(declare-fun tp!1483249 () Bool)

(declare-fun tp!1483248 () Bool)

(assert (=> b!5329057 (= e!3310049 (and tp!1483249 tp!1483248))))

(declare-fun b!5329058 () Bool)

(declare-fun e!3310055 () Bool)

(declare-fun tp!1483247 () Bool)

(assert (=> b!5329058 (= e!3310055 tp!1483247)))

(declare-fun b!5329059 () Bool)

(declare-fun e!3310045 () Bool)

(declare-fun tp!1483244 () Bool)

(assert (=> b!5329059 (= e!3310045 tp!1483244)))

(declare-fun e!3310051 () Bool)

(assert (=> b!5329060 (= e!3310058 e!3310051)))

(declare-fun res!2260389 () Bool)

(assert (=> b!5329060 (=> res!2260389 e!3310051)))

(get-info :version)

(assert (=> b!5329060 (= res!2260389 (or (and ((_ is ElementMatch!14995) (regOne!30502 r!7292)) (= (c!926631 (regOne!30502 r!7292)) (h!67609 s!2326))) ((_ is Union!14995) (regOne!30502 r!7292))))))

(declare-fun lt!2174131 () Unit!153498)

(assert (=> b!5329060 (= lt!2174131 e!3310052)))

(declare-fun c!926630 () Bool)

(declare-fun nullable!5164 (Regex!14995) Bool)

(assert (=> b!5329060 (= c!926630 (nullable!5164 (h!67608 (exprs!4879 (h!67610 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8758))

(assert (=> b!5329060 (= (flatMap!722 z!1189 lambda!272255) (derivationStepZipperUp!367 (h!67610 zl!343) (h!67609 s!2326)))))

(declare-fun lt!2174125 () Unit!153498)

(assert (=> b!5329060 (= lt!2174125 (lemmaFlatMapOnSingletonSet!254 z!1189 (h!67610 zl!343) lambda!272255))))

(declare-fun lt!2174142 () (InoxSet Context!8758))

(declare-fun lt!2174150 () Context!8758)

(assert (=> b!5329060 (= lt!2174142 (derivationStepZipperUp!367 lt!2174150 (h!67609 s!2326)))))

(declare-fun lt!2174126 () (InoxSet Context!8758))

(declare-fun derivationStepZipperDown!443 (Regex!14995 Context!8758 C!30260) (InoxSet Context!8758))

(assert (=> b!5329060 (= lt!2174126 (derivationStepZipperDown!443 (h!67608 (exprs!4879 (h!67610 zl!343))) lt!2174150 (h!67609 s!2326)))))

(assert (=> b!5329060 (= lt!2174150 (Context!8759 (t!374499 (exprs!4879 (h!67610 zl!343)))))))

(declare-fun lt!2174124 () (InoxSet Context!8758))

(assert (=> b!5329060 (= lt!2174124 (derivationStepZipperUp!367 (Context!8759 (Cons!61160 (h!67608 (exprs!4879 (h!67610 zl!343))) (t!374499 (exprs!4879 (h!67610 zl!343))))) (h!67609 s!2326)))))

(declare-fun setIsEmpty!34347 () Bool)

(declare-fun setRes!34347 () Bool)

(assert (=> setIsEmpty!34347 setRes!34347))

(declare-fun b!5329061 () Bool)

(declare-fun res!2260386 () Bool)

(declare-fun e!3310048 () Bool)

(assert (=> b!5329061 (=> res!2260386 e!3310048)))

(declare-fun generalisedConcat!664 (List!61284) Regex!14995)

(assert (=> b!5329061 (= res!2260386 (not (= r!7292 (generalisedConcat!664 (exprs!4879 (h!67610 zl!343))))))))

(declare-fun b!5329062 () Bool)

(declare-fun res!2260373 () Bool)

(assert (=> b!5329062 (=> res!2260373 e!3310048)))

(assert (=> b!5329062 (= res!2260373 (not ((_ is Cons!61160) (exprs!4879 (h!67610 zl!343)))))))

(declare-fun res!2260392 () Bool)

(declare-fun e!3310059 () Bool)

(assert (=> start!561718 (=> (not res!2260392) (not e!3310059))))

(declare-fun validRegex!6731 (Regex!14995) Bool)

(assert (=> start!561718 (= res!2260392 (validRegex!6731 r!7292))))

(assert (=> start!561718 e!3310059))

(assert (=> start!561718 e!3310049))

(declare-fun condSetEmpty!34347 () Bool)

(assert (=> start!561718 (= condSetEmpty!34347 (= z!1189 ((as const (Array Context!8758 Bool)) false)))))

(assert (=> start!561718 setRes!34347))

(declare-fun e!3310046 () Bool)

(assert (=> start!561718 e!3310046))

(declare-fun e!3310057 () Bool)

(assert (=> start!561718 e!3310057))

(declare-fun b!5329054 () Bool)

(declare-fun res!2260372 () Bool)

(assert (=> b!5329054 (=> res!2260372 e!3310048)))

(assert (=> b!5329054 (= res!2260372 (or ((_ is EmptyExpr!14995) r!7292) ((_ is EmptyLang!14995) r!7292) ((_ is ElementMatch!14995) r!7292) ((_ is Union!14995) r!7292) (not ((_ is Concat!23840) r!7292))))))

(declare-fun e!3310050 () Bool)

(assert (=> b!5329063 (= e!3310050 true)))

(declare-fun Exists!2176 (Int) Bool)

(assert (=> b!5329063 (= (Exists!2176 lambda!272256) (Exists!2176 lambda!272257))))

(declare-fun lt!2174139 () Unit!153498)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!830 (Regex!14995 Regex!14995 List!61285) Unit!153498)

(assert (=> b!5329063 (= lt!2174139 (lemmaExistCutMatchRandMatchRSpecEquivalent!830 (regOne!30502 (regOne!30502 r!7292)) lt!2174145 s!2326))))

(declare-datatypes ((tuple2!64388 0))(
  ( (tuple2!64389 (_1!35497 List!61285) (_2!35497 List!61285)) )
))
(declare-datatypes ((Option!15106 0))(
  ( (None!15105) (Some!15105 (v!51134 tuple2!64388)) )
))
(declare-fun isDefined!11809 (Option!15106) Bool)

(declare-fun findConcatSeparation!1520 (Regex!14995 Regex!14995 List!61285 List!61285 List!61285) Option!15106)

(assert (=> b!5329063 (= (isDefined!11809 (findConcatSeparation!1520 (regOne!30502 (regOne!30502 r!7292)) lt!2174145 Nil!61161 s!2326 s!2326)) (Exists!2176 lambda!272256))))

(declare-fun lt!2174141 () Unit!153498)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1284 (Regex!14995 Regex!14995 List!61285) Unit!153498)

(assert (=> b!5329063 (= lt!2174141 (lemmaFindConcatSeparationEquivalentToExists!1284 (regOne!30502 (regOne!30502 r!7292)) lt!2174145 s!2326))))

(assert (=> b!5329063 (= lt!2174145 (generalisedConcat!664 lt!2174123))))

(declare-fun lt!2174135 () Bool)

(declare-fun lt!2174146 () Regex!14995)

(declare-fun matchRSpec!2098 (Regex!14995 List!61285) Bool)

(assert (=> b!5329063 (= lt!2174135 (matchRSpec!2098 lt!2174146 s!2326))))

(declare-fun lt!2174149 () Unit!153498)

(declare-fun mainMatchTheorem!2098 (Regex!14995 List!61285) Unit!153498)

(assert (=> b!5329063 (= lt!2174149 (mainMatchTheorem!2098 lt!2174146 s!2326))))

(declare-fun matchZipper!1239 ((InoxSet Context!8758) List!61285) Bool)

(assert (=> b!5329063 (= lt!2174135 (matchZipper!1239 lt!2174148 s!2326))))

(declare-fun matchR!7180 (Regex!14995 List!61285) Bool)

(assert (=> b!5329063 (= lt!2174135 (matchR!7180 lt!2174146 s!2326))))

(declare-fun lt!2174144 () List!61286)

(declare-fun lt!2174127 () Unit!153498)

(declare-fun theoremZipperRegexEquiv!393 ((InoxSet Context!8758) List!61286 Regex!14995 List!61285) Unit!153498)

(assert (=> b!5329063 (= lt!2174127 (theoremZipperRegexEquiv!393 lt!2174148 lt!2174144 lt!2174146 s!2326))))

(assert (=> b!5329063 (= lt!2174146 (generalisedConcat!664 lt!2174130))))

(declare-fun b!5329064 () Bool)

(declare-fun e!3310060 () Bool)

(assert (=> b!5329064 (= e!3310060 (matchZipper!1239 lt!2174142 (t!374500 s!2326)))))

(declare-fun b!5329065 () Bool)

(declare-fun res!2260381 () Bool)

(assert (=> b!5329065 (=> res!2260381 e!3310051)))

(declare-fun e!3310054 () Bool)

(assert (=> b!5329065 (= res!2260381 e!3310054)))

(declare-fun res!2260387 () Bool)

(assert (=> b!5329065 (=> (not res!2260387) (not e!3310054))))

(assert (=> b!5329065 (= res!2260387 ((_ is Concat!23840) (regOne!30502 r!7292)))))

(declare-fun b!5329066 () Bool)

(declare-fun res!2260384 () Bool)

(assert (=> b!5329066 (=> res!2260384 e!3310047)))

(assert (=> b!5329066 (= res!2260384 (not (= (exprs!4879 (h!67610 zl!343)) (Cons!61160 (Concat!23840 (regOne!30502 (regOne!30502 r!7292)) (regTwo!30502 (regOne!30502 r!7292))) (t!374499 (exprs!4879 (h!67610 zl!343)))))))))

(declare-fun b!5329067 () Bool)

(declare-fun res!2260377 () Bool)

(assert (=> b!5329067 (=> res!2260377 e!3310050)))

(declare-fun zipperDepth!104 (List!61286) Int)

(assert (=> b!5329067 (= res!2260377 (> (zipperDepth!104 lt!2174144) (zipperDepth!104 zl!343)))))

(declare-fun b!5329068 () Bool)

(assert (=> b!5329068 (= e!3310047 e!3310050)))

(declare-fun res!2260391 () Bool)

(assert (=> b!5329068 (=> res!2260391 e!3310050)))

(declare-fun zipperDepthTotal!148 (List!61286) Int)

(assert (=> b!5329068 (= res!2260391 (>= (zipperDepthTotal!148 lt!2174144) (zipperDepthTotal!148 zl!343)))))

(assert (=> b!5329068 (= lt!2174144 (Cons!61162 lt!2174136 Nil!61162))))

(declare-fun b!5329069 () Bool)

(declare-fun Unit!153501 () Unit!153498)

(assert (=> b!5329069 (= e!3310052 Unit!153501)))

(declare-fun lt!2174147 () Unit!153498)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!232 ((InoxSet Context!8758) (InoxSet Context!8758) List!61285) Unit!153498)

(assert (=> b!5329069 (= lt!2174147 (lemmaZipperConcatMatchesSameAsBothZippers!232 lt!2174126 lt!2174142 (t!374500 s!2326)))))

(declare-fun res!2260380 () Bool)

(assert (=> b!5329069 (= res!2260380 (matchZipper!1239 lt!2174126 (t!374500 s!2326)))))

(assert (=> b!5329069 (=> res!2260380 e!3310060)))

(assert (=> b!5329069 (= (matchZipper!1239 ((_ map or) lt!2174126 lt!2174142) (t!374500 s!2326)) e!3310060)))

(declare-fun tp!1483243 () Bool)

(declare-fun b!5329070 () Bool)

(declare-fun inv!80734 (Context!8758) Bool)

(assert (=> b!5329070 (= e!3310046 (and (inv!80734 (h!67610 zl!343)) e!3310045 tp!1483243))))

(declare-fun b!5329071 () Bool)

(declare-fun res!2260375 () Bool)

(assert (=> b!5329071 (=> (not res!2260375) (not e!3310059))))

(declare-fun toList!8779 ((InoxSet Context!8758)) List!61286)

(assert (=> b!5329071 (= res!2260375 (= (toList!8779 z!1189) zl!343))))

(declare-fun setElem!34347 () Context!8758)

(declare-fun setNonEmpty!34347 () Bool)

(declare-fun tp!1483240 () Bool)

(assert (=> setNonEmpty!34347 (= setRes!34347 (and tp!1483240 (inv!80734 setElem!34347) e!3310055))))

(declare-fun setRest!34347 () (InoxSet Context!8758))

(assert (=> setNonEmpty!34347 (= z!1189 ((_ map or) (store ((as const (Array Context!8758 Bool)) false) setElem!34347 true) setRest!34347))))

(declare-fun b!5329072 () Bool)

(declare-fun res!2260371 () Bool)

(assert (=> b!5329072 (=> res!2260371 e!3310048)))

(declare-fun isEmpty!33132 (List!61286) Bool)

(assert (=> b!5329072 (= res!2260371 (not (isEmpty!33132 (t!374501 zl!343))))))

(declare-fun b!5329073 () Bool)

(declare-fun tp!1483242 () Bool)

(assert (=> b!5329073 (= e!3310057 (and tp_is_empty!39243 tp!1483242))))

(declare-fun b!5329074 () Bool)

(declare-fun res!2260370 () Bool)

(assert (=> b!5329074 (=> res!2260370 e!3310051)))

(assert (=> b!5329074 (= res!2260370 (not ((_ is Concat!23840) (regOne!30502 r!7292))))))

(declare-fun b!5329075 () Bool)

(assert (=> b!5329075 (= e!3310054 (nullable!5164 (regOne!30502 (regOne!30502 r!7292))))))

(declare-fun b!5329076 () Bool)

(declare-fun tp!1483245 () Bool)

(declare-fun tp!1483246 () Bool)

(assert (=> b!5329076 (= e!3310049 (and tp!1483245 tp!1483246))))

(declare-fun b!5329077 () Bool)

(declare-fun res!2260378 () Bool)

(assert (=> b!5329077 (=> res!2260378 e!3310047)))

(declare-fun contextDepthTotal!128 (Context!8758) Int)

(assert (=> b!5329077 (= res!2260378 (>= (contextDepthTotal!128 lt!2174136) (contextDepthTotal!128 (h!67610 zl!343))))))

(assert (=> b!5329078 (= e!3310048 e!3310058)))

(declare-fun res!2260376 () Bool)

(assert (=> b!5329078 (=> res!2260376 e!3310058)))

(declare-fun lt!2174143 () Bool)

(declare-fun lt!2174122 () Bool)

(assert (=> b!5329078 (= res!2260376 (or (not (= lt!2174143 lt!2174122)) ((_ is Nil!61161) s!2326)))))

(assert (=> b!5329078 (= (Exists!2176 lambda!272253) (Exists!2176 lambda!272254))))

(declare-fun lt!2174134 () Unit!153498)

(assert (=> b!5329078 (= lt!2174134 (lemmaExistCutMatchRandMatchRSpecEquivalent!830 (regOne!30502 r!7292) (regTwo!30502 r!7292) s!2326))))

(assert (=> b!5329078 (= lt!2174122 (Exists!2176 lambda!272253))))

(assert (=> b!5329078 (= lt!2174122 (isDefined!11809 (findConcatSeparation!1520 (regOne!30502 r!7292) (regTwo!30502 r!7292) Nil!61161 s!2326 s!2326)))))

(declare-fun lt!2174133 () Unit!153498)

(assert (=> b!5329078 (= lt!2174133 (lemmaFindConcatSeparationEquivalentToExists!1284 (regOne!30502 r!7292) (regTwo!30502 r!7292) s!2326))))

(declare-fun b!5329079 () Bool)

(declare-fun tp!1483241 () Bool)

(assert (=> b!5329079 (= e!3310049 tp!1483241)))

(declare-fun b!5329080 () Bool)

(declare-fun e!3310056 () Bool)

(assert (=> b!5329080 (= e!3310051 e!3310056)))

(declare-fun res!2260393 () Bool)

(assert (=> b!5329080 (=> res!2260393 e!3310056)))

(assert (=> b!5329080 (= res!2260393 (not (= lt!2174126 lt!2174132)))))

(assert (=> b!5329080 (= lt!2174132 (derivationStepZipperDown!443 (regOne!30502 (regOne!30502 r!7292)) (Context!8759 lt!2174123) (h!67609 s!2326)))))

(assert (=> b!5329080 (= lt!2174123 (Cons!61160 (regTwo!30502 (regOne!30502 r!7292)) (t!374499 (exprs!4879 (h!67610 zl!343)))))))

(declare-fun b!5329081 () Bool)

(declare-fun res!2260390 () Bool)

(assert (=> b!5329081 (=> (not res!2260390) (not e!3310059))))

(declare-fun unfocusZipper!737 (List!61286) Regex!14995)

(assert (=> b!5329081 (= res!2260390 (= r!7292 (unfocusZipper!737 zl!343)))))

(declare-fun b!5329082 () Bool)

(declare-fun res!2260388 () Bool)

(assert (=> b!5329082 (=> res!2260388 e!3310048)))

(declare-fun generalisedUnion!924 (List!61284) Regex!14995)

(declare-fun unfocusZipperList!437 (List!61286) List!61284)

(assert (=> b!5329082 (= res!2260388 (not (= r!7292 (generalisedUnion!924 (unfocusZipperList!437 zl!343)))))))

(declare-fun b!5329083 () Bool)

(assert (=> b!5329083 (= e!3310056 e!3310053)))

(declare-fun res!2260374 () Bool)

(assert (=> b!5329083 (=> res!2260374 e!3310053)))

(declare-fun lt!2174129 () Bool)

(assert (=> b!5329083 (= res!2260374 (not (= lt!2174129 (matchZipper!1239 lt!2174132 (t!374500 s!2326)))))))

(assert (=> b!5329083 (= lt!2174129 (matchZipper!1239 lt!2174126 (t!374500 s!2326)))))

(declare-fun b!5329084 () Bool)

(assert (=> b!5329084 (= e!3310059 (not e!3310048))))

(declare-fun res!2260385 () Bool)

(assert (=> b!5329084 (=> res!2260385 e!3310048)))

(assert (=> b!5329084 (= res!2260385 (not ((_ is Cons!61162) zl!343)))))

(assert (=> b!5329084 (= lt!2174143 (matchRSpec!2098 r!7292 s!2326))))

(assert (=> b!5329084 (= lt!2174143 (matchR!7180 r!7292 s!2326))))

(declare-fun lt!2174140 () Unit!153498)

(assert (=> b!5329084 (= lt!2174140 (mainMatchTheorem!2098 r!7292 s!2326))))

(declare-fun b!5329085 () Bool)

(declare-fun res!2260382 () Bool)

(assert (=> b!5329085 (=> res!2260382 e!3310047)))

(assert (=> b!5329085 (= res!2260382 (not (= lt!2174129 (matchZipper!1239 lt!2174138 (t!374500 s!2326)))))))

(assert (= (and start!561718 res!2260392) b!5329071))

(assert (= (and b!5329071 res!2260375) b!5329081))

(assert (= (and b!5329081 res!2260390) b!5329084))

(assert (= (and b!5329084 (not res!2260385)) b!5329072))

(assert (= (and b!5329072 (not res!2260371)) b!5329061))

(assert (= (and b!5329061 (not res!2260386)) b!5329062))

(assert (= (and b!5329062 (not res!2260373)) b!5329082))

(assert (= (and b!5329082 (not res!2260388)) b!5329054))

(assert (= (and b!5329054 (not res!2260372)) b!5329078))

(assert (= (and b!5329078 (not res!2260376)) b!5329056))

(assert (= (and b!5329056 (not res!2260379)) b!5329060))

(assert (= (and b!5329060 c!926630) b!5329069))

(assert (= (and b!5329060 (not c!926630)) b!5329053))

(assert (= (and b!5329069 (not res!2260380)) b!5329064))

(assert (= (and b!5329060 (not res!2260389)) b!5329065))

(assert (= (and b!5329065 res!2260387) b!5329075))

(assert (= (and b!5329065 (not res!2260381)) b!5329074))

(assert (= (and b!5329074 (not res!2260370)) b!5329080))

(assert (= (and b!5329080 (not res!2260393)) b!5329083))

(assert (= (and b!5329083 (not res!2260374)) b!5329052))

(assert (= (and b!5329052 (not res!2260383)) b!5329085))

(assert (= (and b!5329085 (not res!2260382)) b!5329066))

(assert (= (and b!5329066 (not res!2260384)) b!5329077))

(assert (= (and b!5329077 (not res!2260378)) b!5329068))

(assert (= (and b!5329068 (not res!2260391)) b!5329067))

(assert (= (and b!5329067 (not res!2260377)) b!5329063))

(assert (= (and start!561718 ((_ is ElementMatch!14995) r!7292)) b!5329055))

(assert (= (and start!561718 ((_ is Concat!23840) r!7292)) b!5329057))

(assert (= (and start!561718 ((_ is Star!14995) r!7292)) b!5329079))

(assert (= (and start!561718 ((_ is Union!14995) r!7292)) b!5329076))

(assert (= (and start!561718 condSetEmpty!34347) setIsEmpty!34347))

(assert (= (and start!561718 (not condSetEmpty!34347)) setNonEmpty!34347))

(assert (= setNonEmpty!34347 b!5329058))

(assert (= b!5329070 b!5329059))

(assert (= (and start!561718 ((_ is Cons!61162) zl!343)) b!5329070))

(assert (= (and start!561718 ((_ is Cons!61161) s!2326)) b!5329073))

(declare-fun m!6362636 () Bool)

(assert (=> b!5329067 m!6362636))

(declare-fun m!6362638 () Bool)

(assert (=> b!5329067 m!6362638))

(declare-fun m!6362640 () Bool)

(assert (=> b!5329082 m!6362640))

(assert (=> b!5329082 m!6362640))

(declare-fun m!6362642 () Bool)

(assert (=> b!5329082 m!6362642))

(declare-fun m!6362644 () Bool)

(assert (=> b!5329081 m!6362644))

(declare-fun m!6362646 () Bool)

(assert (=> b!5329072 m!6362646))

(declare-fun m!6362648 () Bool)

(assert (=> setNonEmpty!34347 m!6362648))

(declare-fun m!6362650 () Bool)

(assert (=> b!5329063 m!6362650))

(declare-fun m!6362652 () Bool)

(assert (=> b!5329063 m!6362652))

(declare-fun m!6362654 () Bool)

(assert (=> b!5329063 m!6362654))

(declare-fun m!6362656 () Bool)

(assert (=> b!5329063 m!6362656))

(declare-fun m!6362658 () Bool)

(assert (=> b!5329063 m!6362658))

(declare-fun m!6362660 () Bool)

(assert (=> b!5329063 m!6362660))

(declare-fun m!6362662 () Bool)

(assert (=> b!5329063 m!6362662))

(declare-fun m!6362664 () Bool)

(assert (=> b!5329063 m!6362664))

(assert (=> b!5329063 m!6362650))

(declare-fun m!6362666 () Bool)

(assert (=> b!5329063 m!6362666))

(declare-fun m!6362668 () Bool)

(assert (=> b!5329063 m!6362668))

(assert (=> b!5329063 m!6362664))

(declare-fun m!6362670 () Bool)

(assert (=> b!5329063 m!6362670))

(declare-fun m!6362672 () Bool)

(assert (=> b!5329063 m!6362672))

(declare-fun m!6362674 () Bool)

(assert (=> b!5329063 m!6362674))

(declare-fun m!6362676 () Bool)

(assert (=> b!5329075 m!6362676))

(declare-fun m!6362678 () Bool)

(assert (=> b!5329060 m!6362678))

(declare-fun m!6362680 () Bool)

(assert (=> b!5329060 m!6362680))

(declare-fun m!6362682 () Bool)

(assert (=> b!5329060 m!6362682))

(declare-fun m!6362684 () Bool)

(assert (=> b!5329060 m!6362684))

(declare-fun m!6362686 () Bool)

(assert (=> b!5329060 m!6362686))

(declare-fun m!6362688 () Bool)

(assert (=> b!5329060 m!6362688))

(declare-fun m!6362690 () Bool)

(assert (=> b!5329060 m!6362690))

(declare-fun m!6362692 () Bool)

(assert (=> b!5329084 m!6362692))

(declare-fun m!6362694 () Bool)

(assert (=> b!5329084 m!6362694))

(declare-fun m!6362696 () Bool)

(assert (=> b!5329084 m!6362696))

(declare-fun m!6362698 () Bool)

(assert (=> start!561718 m!6362698))

(declare-fun m!6362700 () Bool)

(assert (=> b!5329071 m!6362700))

(declare-fun m!6362702 () Bool)

(assert (=> b!5329069 m!6362702))

(declare-fun m!6362704 () Bool)

(assert (=> b!5329069 m!6362704))

(declare-fun m!6362706 () Bool)

(assert (=> b!5329069 m!6362706))

(declare-fun m!6362708 () Bool)

(assert (=> b!5329068 m!6362708))

(declare-fun m!6362710 () Bool)

(assert (=> b!5329068 m!6362710))

(declare-fun m!6362712 () Bool)

(assert (=> b!5329077 m!6362712))

(declare-fun m!6362714 () Bool)

(assert (=> b!5329077 m!6362714))

(declare-fun m!6362716 () Bool)

(assert (=> b!5329056 m!6362716))

(declare-fun m!6362718 () Bool)

(assert (=> b!5329085 m!6362718))

(declare-fun m!6362720 () Bool)

(assert (=> b!5329070 m!6362720))

(declare-fun m!6362722 () Bool)

(assert (=> b!5329083 m!6362722))

(assert (=> b!5329083 m!6362704))

(declare-fun m!6362724 () Bool)

(assert (=> b!5329080 m!6362724))

(declare-fun m!6362726 () Bool)

(assert (=> b!5329064 m!6362726))

(declare-fun m!6362728 () Bool)

(assert (=> b!5329061 m!6362728))

(declare-fun m!6362730 () Bool)

(assert (=> b!5329052 m!6362730))

(declare-fun m!6362732 () Bool)

(assert (=> b!5329052 m!6362732))

(declare-fun m!6362734 () Bool)

(assert (=> b!5329052 m!6362734))

(declare-fun m!6362736 () Bool)

(assert (=> b!5329052 m!6362736))

(declare-fun m!6362738 () Bool)

(assert (=> b!5329052 m!6362738))

(declare-fun m!6362740 () Bool)

(assert (=> b!5329078 m!6362740))

(declare-fun m!6362742 () Bool)

(assert (=> b!5329078 m!6362742))

(declare-fun m!6362744 () Bool)

(assert (=> b!5329078 m!6362744))

(assert (=> b!5329078 m!6362744))

(declare-fun m!6362746 () Bool)

(assert (=> b!5329078 m!6362746))

(declare-fun m!6362748 () Bool)

(assert (=> b!5329078 m!6362748))

(assert (=> b!5329078 m!6362740))

(declare-fun m!6362750 () Bool)

(assert (=> b!5329078 m!6362750))

(check-sat (not b!5329059) (not setNonEmpty!34347) (not b!5329078) (not b!5329070) (not b!5329082) (not start!561718) (not b!5329057) (not b!5329060) (not b!5329085) (not b!5329071) (not b!5329056) (not b!5329084) (not b!5329069) (not b!5329072) (not b!5329064) (not b!5329080) (not b!5329063) (not b!5329079) (not b!5329075) (not b!5329076) (not b!5329061) (not b!5329081) tp_is_empty!39243 (not b!5329052) (not b!5329077) (not b!5329067) (not b!5329058) (not b!5329083) (not b!5329068) (not b!5329073))
(check-sat)
