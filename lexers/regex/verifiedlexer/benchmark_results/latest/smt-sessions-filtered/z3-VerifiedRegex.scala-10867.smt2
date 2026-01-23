; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561078 () Bool)

(assert start!561078)

(declare-fun b!5322330 () Bool)

(assert (=> b!5322330 true))

(assert (=> b!5322330 true))

(declare-fun lambda!271525 () Int)

(declare-fun lambda!271524 () Int)

(assert (=> b!5322330 (not (= lambda!271525 lambda!271524))))

(assert (=> b!5322330 true))

(assert (=> b!5322330 true))

(declare-fun b!5322348 () Bool)

(assert (=> b!5322348 true))

(declare-fun b!5322322 () Bool)

(declare-datatypes ((Unit!153442 0))(
  ( (Unit!153443) )
))
(declare-fun e!3306447 () Unit!153442)

(declare-fun Unit!153444 () Unit!153442)

(assert (=> b!5322322 (= e!3306447 Unit!153444)))

(declare-fun b!5322323 () Bool)

(declare-fun e!3306451 () Bool)

(declare-fun tp_is_empty!39215 () Bool)

(assert (=> b!5322323 (= e!3306451 tp_is_empty!39215)))

(declare-fun b!5322324 () Bool)

(declare-fun res!2257572 () Bool)

(declare-fun e!3306453 () Bool)

(assert (=> b!5322324 (=> res!2257572 e!3306453)))

(declare-datatypes ((C!30232 0))(
  ( (C!30233 (val!24818 Int)) )
))
(declare-datatypes ((Regex!14981 0))(
  ( (ElementMatch!14981 (c!925063 C!30232)) (Concat!23826 (regOne!30474 Regex!14981) (regTwo!30474 Regex!14981)) (EmptyExpr!14981) (Star!14981 (reg!15310 Regex!14981)) (EmptyLang!14981) (Union!14981 (regOne!30475 Regex!14981) (regTwo!30475 Regex!14981)) )
))
(declare-fun r!7292 () Regex!14981)

(get-info :version)

(assert (=> b!5322324 (= res!2257572 (or ((_ is EmptyExpr!14981) r!7292) ((_ is EmptyLang!14981) r!7292) ((_ is ElementMatch!14981) r!7292) ((_ is Union!14981) r!7292) (not ((_ is Concat!23826) r!7292))))))

(declare-fun b!5322325 () Bool)

(declare-fun e!3306450 () Bool)

(assert (=> b!5322325 (= e!3306450 (not e!3306453))))

(declare-fun res!2257578 () Bool)

(assert (=> b!5322325 (=> res!2257578 e!3306453)))

(declare-datatypes ((List!61242 0))(
  ( (Nil!61118) (Cons!61118 (h!67566 Regex!14981) (t!374455 List!61242)) )
))
(declare-datatypes ((Context!8730 0))(
  ( (Context!8731 (exprs!4865 List!61242)) )
))
(declare-datatypes ((List!61243 0))(
  ( (Nil!61119) (Cons!61119 (h!67567 Context!8730) (t!374456 List!61243)) )
))
(declare-fun zl!343 () List!61243)

(assert (=> b!5322325 (= res!2257578 (not ((_ is Cons!61119) zl!343)))))

(declare-fun lt!2172254 () Bool)

(declare-datatypes ((List!61244 0))(
  ( (Nil!61120) (Cons!61120 (h!67568 C!30232) (t!374457 List!61244)) )
))
(declare-fun s!2326 () List!61244)

(declare-fun matchRSpec!2084 (Regex!14981 List!61244) Bool)

(assert (=> b!5322325 (= lt!2172254 (matchRSpec!2084 r!7292 s!2326))))

(declare-fun matchR!7166 (Regex!14981 List!61244) Bool)

(assert (=> b!5322325 (= lt!2172254 (matchR!7166 r!7292 s!2326))))

(declare-fun lt!2172255 () Unit!153442)

(declare-fun mainMatchTheorem!2084 (Regex!14981 List!61244) Unit!153442)

(assert (=> b!5322325 (= lt!2172255 (mainMatchTheorem!2084 r!7292 s!2326))))

(declare-fun b!5322326 () Bool)

(declare-fun res!2257592 () Bool)

(declare-fun e!3306439 () Bool)

(assert (=> b!5322326 (=> res!2257592 e!3306439)))

(assert (=> b!5322326 (= res!2257592 (not ((_ is Concat!23826) (regOne!30474 r!7292))))))

(declare-fun b!5322327 () Bool)

(declare-fun e!3306454 () Bool)

(declare-fun e!3306442 () Bool)

(assert (=> b!5322327 (= e!3306454 e!3306442)))

(declare-fun res!2257590 () Bool)

(assert (=> b!5322327 (=> res!2257590 e!3306442)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2172272 () (InoxSet Context!8730))

(declare-fun lt!2172275 () (InoxSet Context!8730))

(assert (=> b!5322327 (= res!2257590 (not (= lt!2172272 lt!2172275)))))

(declare-fun lambda!271526 () Int)

(declare-fun lt!2172256 () Context!8730)

(declare-fun lt!2172271 () (InoxSet Context!8730))

(declare-fun flatMap!708 ((InoxSet Context!8730) Int) (InoxSet Context!8730))

(declare-fun derivationStepZipperUp!353 (Context!8730 C!30232) (InoxSet Context!8730))

(assert (=> b!5322327 (= (flatMap!708 lt!2172271 lambda!271526) (derivationStepZipperUp!353 lt!2172256 (h!67568 s!2326)))))

(declare-fun lt!2172263 () Unit!153442)

(declare-fun lemmaFlatMapOnSingletonSet!240 ((InoxSet Context!8730) Context!8730 Int) Unit!153442)

(assert (=> b!5322327 (= lt!2172263 (lemmaFlatMapOnSingletonSet!240 lt!2172271 lt!2172256 lambda!271526))))

(declare-fun lt!2172266 () (InoxSet Context!8730))

(assert (=> b!5322327 (= lt!2172266 (derivationStepZipperUp!353 lt!2172256 (h!67568 s!2326)))))

(declare-fun derivationStepZipper!1222 ((InoxSet Context!8730) C!30232) (InoxSet Context!8730))

(assert (=> b!5322327 (= lt!2172272 (derivationStepZipper!1222 lt!2172271 (h!67568 s!2326)))))

(assert (=> b!5322327 (= lt!2172271 (store ((as const (Array Context!8730 Bool)) false) lt!2172256 true))))

(declare-fun lt!2172257 () List!61242)

(assert (=> b!5322327 (= lt!2172256 (Context!8731 lt!2172257))))

(declare-fun lt!2172265 () List!61242)

(assert (=> b!5322327 (= lt!2172257 (Cons!61118 (regOne!30474 (regOne!30474 r!7292)) lt!2172265))))

(declare-fun b!5322328 () Bool)

(declare-fun e!3306452 () Bool)

(declare-fun tp!1482040 () Bool)

(assert (=> b!5322328 (= e!3306452 tp!1482040)))

(declare-fun b!5322329 () Bool)

(declare-fun res!2257570 () Bool)

(assert (=> b!5322329 (=> res!2257570 e!3306453)))

(declare-fun isEmpty!33087 (List!61243) Bool)

(assert (=> b!5322329 (= res!2257570 (not (isEmpty!33087 (t!374456 zl!343))))))

(declare-fun e!3306444 () Bool)

(assert (=> b!5322330 (= e!3306453 e!3306444)))

(declare-fun res!2257588 () Bool)

(assert (=> b!5322330 (=> res!2257588 e!3306444)))

(declare-fun lt!2172269 () Bool)

(assert (=> b!5322330 (= res!2257588 (or (not (= lt!2172254 lt!2172269)) ((_ is Nil!61120) s!2326)))))

(declare-fun Exists!2162 (Int) Bool)

(assert (=> b!5322330 (= (Exists!2162 lambda!271524) (Exists!2162 lambda!271525))))

(declare-fun lt!2172258 () Unit!153442)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!816 (Regex!14981 Regex!14981 List!61244) Unit!153442)

(assert (=> b!5322330 (= lt!2172258 (lemmaExistCutMatchRandMatchRSpecEquivalent!816 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326))))

(assert (=> b!5322330 (= lt!2172269 (Exists!2162 lambda!271524))))

(declare-datatypes ((tuple2!64360 0))(
  ( (tuple2!64361 (_1!35483 List!61244) (_2!35483 List!61244)) )
))
(declare-datatypes ((Option!15092 0))(
  ( (None!15091) (Some!15091 (v!51120 tuple2!64360)) )
))
(declare-fun isDefined!11795 (Option!15092) Bool)

(declare-fun findConcatSeparation!1506 (Regex!14981 Regex!14981 List!61244 List!61244 List!61244) Option!15092)

(assert (=> b!5322330 (= lt!2172269 (isDefined!11795 (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) Nil!61120 s!2326 s!2326)))))

(declare-fun lt!2172264 () Unit!153442)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1270 (Regex!14981 Regex!14981 List!61244) Unit!153442)

(assert (=> b!5322330 (= lt!2172264 (lemmaFindConcatSeparationEquivalentToExists!1270 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326))))

(declare-fun b!5322331 () Bool)

(declare-fun tp!1482041 () Bool)

(declare-fun tp!1482038 () Bool)

(assert (=> b!5322331 (= e!3306451 (and tp!1482041 tp!1482038))))

(declare-fun res!2257571 () Bool)

(assert (=> start!561078 (=> (not res!2257571) (not e!3306450))))

(declare-fun validRegex!6717 (Regex!14981) Bool)

(assert (=> start!561078 (= res!2257571 (validRegex!6717 r!7292))))

(assert (=> start!561078 e!3306450))

(assert (=> start!561078 e!3306451))

(declare-fun condSetEmpty!34271 () Bool)

(declare-fun z!1189 () (InoxSet Context!8730))

(assert (=> start!561078 (= condSetEmpty!34271 (= z!1189 ((as const (Array Context!8730 Bool)) false)))))

(declare-fun setRes!34271 () Bool)

(assert (=> start!561078 setRes!34271))

(declare-fun e!3306440 () Bool)

(assert (=> start!561078 e!3306440))

(declare-fun e!3306445 () Bool)

(assert (=> start!561078 e!3306445))

(declare-fun b!5322332 () Bool)

(declare-fun e!3306449 () Bool)

(declare-fun lambda!271527 () Int)

(declare-fun forall!14399 (List!61242 Int) Bool)

(assert (=> b!5322332 (= e!3306449 (forall!14399 lt!2172257 lambda!271527))))

(declare-fun lt!2172260 () Regex!14981)

(declare-fun matchZipper!1225 ((InoxSet Context!8730) List!61244) Bool)

(assert (=> b!5322332 (= (matchR!7166 lt!2172260 s!2326) (matchZipper!1225 lt!2172271 s!2326))))

(declare-fun lt!2172274 () Unit!153442)

(declare-fun lt!2172276 () List!61243)

(declare-fun theoremZipperRegexEquiv!379 ((InoxSet Context!8730) List!61243 Regex!14981 List!61244) Unit!153442)

(assert (=> b!5322332 (= lt!2172274 (theoremZipperRegexEquiv!379 lt!2172271 lt!2172276 lt!2172260 s!2326))))

(declare-fun generalisedConcat!650 (List!61242) Regex!14981)

(assert (=> b!5322332 (= lt!2172260 (generalisedConcat!650 lt!2172257))))

(declare-fun b!5322333 () Bool)

(declare-fun res!2257579 () Bool)

(assert (=> b!5322333 (=> res!2257579 e!3306449)))

(declare-fun zipperDepth!90 (List!61243) Int)

(assert (=> b!5322333 (= res!2257579 (> (zipperDepth!90 lt!2172276) (zipperDepth!90 zl!343)))))

(declare-fun b!5322334 () Bool)

(declare-fun tp!1482032 () Bool)

(assert (=> b!5322334 (= e!3306445 (and tp_is_empty!39215 tp!1482032))))

(declare-fun b!5322335 () Bool)

(declare-fun e!3306446 () Bool)

(declare-fun tp!1482034 () Bool)

(assert (=> b!5322335 (= e!3306446 tp!1482034)))

(declare-fun b!5322336 () Bool)

(declare-fun e!3306441 () Bool)

(declare-fun lt!2172261 () (InoxSet Context!8730))

(assert (=> b!5322336 (= e!3306441 (matchZipper!1225 lt!2172261 (t!374457 s!2326)))))

(declare-fun b!5322337 () Bool)

(declare-fun tp!1482039 () Bool)

(assert (=> b!5322337 (= e!3306451 tp!1482039)))

(declare-fun b!5322338 () Bool)

(declare-fun res!2257573 () Bool)

(assert (=> b!5322338 (=> res!2257573 e!3306444)))

(declare-fun isEmpty!33088 (List!61242) Bool)

(assert (=> b!5322338 (= res!2257573 (isEmpty!33088 (t!374455 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322339 () Bool)

(declare-fun res!2257577 () Bool)

(assert (=> b!5322339 (=> res!2257577 e!3306453)))

(declare-fun generalisedUnion!910 (List!61242) Regex!14981)

(declare-fun unfocusZipperList!423 (List!61243) List!61242)

(assert (=> b!5322339 (= res!2257577 (not (= r!7292 (generalisedUnion!910 (unfocusZipperList!423 zl!343)))))))

(declare-fun b!5322340 () Bool)

(declare-fun res!2257585 () Bool)

(assert (=> b!5322340 (=> (not res!2257585) (not e!3306450))))

(declare-fun unfocusZipper!723 (List!61243) Regex!14981)

(assert (=> b!5322340 (= res!2257585 (= r!7292 (unfocusZipper!723 zl!343)))))

(declare-fun b!5322341 () Bool)

(declare-fun res!2257574 () Bool)

(assert (=> b!5322341 (=> res!2257574 e!3306439)))

(declare-fun e!3306443 () Bool)

(assert (=> b!5322341 (= res!2257574 e!3306443)))

(declare-fun res!2257575 () Bool)

(assert (=> b!5322341 (=> (not res!2257575) (not e!3306443))))

(assert (=> b!5322341 (= res!2257575 ((_ is Concat!23826) (regOne!30474 r!7292)))))

(declare-fun b!5322342 () Bool)

(declare-fun res!2257580 () Bool)

(assert (=> b!5322342 (=> (not res!2257580) (not e!3306450))))

(declare-fun toList!8765 ((InoxSet Context!8730)) List!61243)

(assert (=> b!5322342 (= res!2257580 (= (toList!8765 z!1189) zl!343))))

(declare-fun setIsEmpty!34271 () Bool)

(assert (=> setIsEmpty!34271 setRes!34271))

(declare-fun b!5322343 () Bool)

(declare-fun e!3306448 () Bool)

(assert (=> b!5322343 (= e!3306448 e!3306454)))

(declare-fun res!2257584 () Bool)

(assert (=> b!5322343 (=> res!2257584 e!3306454)))

(declare-fun lt!2172270 () Bool)

(assert (=> b!5322343 (= res!2257584 (not (= lt!2172270 (matchZipper!1225 lt!2172275 (t!374457 s!2326)))))))

(declare-fun lt!2172262 () (InoxSet Context!8730))

(assert (=> b!5322343 (= lt!2172270 (matchZipper!1225 lt!2172262 (t!374457 s!2326)))))

(declare-fun tp!1482036 () Bool)

(declare-fun b!5322344 () Bool)

(declare-fun inv!80699 (Context!8730) Bool)

(assert (=> b!5322344 (= e!3306440 (and (inv!80699 (h!67567 zl!343)) e!3306446 tp!1482036))))

(declare-fun b!5322345 () Bool)

(declare-fun nullable!5150 (Regex!14981) Bool)

(assert (=> b!5322345 (= e!3306443 (nullable!5150 (regOne!30474 (regOne!30474 r!7292))))))

(declare-fun b!5322346 () Bool)

(declare-fun tp!1482033 () Bool)

(declare-fun tp!1482035 () Bool)

(assert (=> b!5322346 (= e!3306451 (and tp!1482033 tp!1482035))))

(declare-fun b!5322347 () Bool)

(declare-fun res!2257582 () Bool)

(assert (=> b!5322347 (=> res!2257582 e!3306453)))

(assert (=> b!5322347 (= res!2257582 (not ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343)))))))

(assert (=> b!5322348 (= e!3306444 e!3306439)))

(declare-fun res!2257583 () Bool)

(assert (=> b!5322348 (=> res!2257583 e!3306439)))

(assert (=> b!5322348 (= res!2257583 (or (and ((_ is ElementMatch!14981) (regOne!30474 r!7292)) (= (c!925063 (regOne!30474 r!7292)) (h!67568 s!2326))) ((_ is Union!14981) (regOne!30474 r!7292))))))

(declare-fun lt!2172268 () Unit!153442)

(assert (=> b!5322348 (= lt!2172268 e!3306447)))

(declare-fun c!925062 () Bool)

(assert (=> b!5322348 (= c!925062 (nullable!5150 (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(assert (=> b!5322348 (= (flatMap!708 z!1189 lambda!271526) (derivationStepZipperUp!353 (h!67567 zl!343) (h!67568 s!2326)))))

(declare-fun lt!2172259 () Unit!153442)

(assert (=> b!5322348 (= lt!2172259 (lemmaFlatMapOnSingletonSet!240 z!1189 (h!67567 zl!343) lambda!271526))))

(declare-fun lt!2172253 () Context!8730)

(assert (=> b!5322348 (= lt!2172261 (derivationStepZipperUp!353 lt!2172253 (h!67568 s!2326)))))

(declare-fun derivationStepZipperDown!429 (Regex!14981 Context!8730 C!30232) (InoxSet Context!8730))

(assert (=> b!5322348 (= lt!2172262 (derivationStepZipperDown!429 (h!67566 (exprs!4865 (h!67567 zl!343))) lt!2172253 (h!67568 s!2326)))))

(assert (=> b!5322348 (= lt!2172253 (Context!8731 (t!374455 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun lt!2172273 () (InoxSet Context!8730))

(assert (=> b!5322348 (= lt!2172273 (derivationStepZipperUp!353 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343))))) (h!67568 s!2326)))))

(declare-fun b!5322349 () Bool)

(declare-fun res!2257586 () Bool)

(assert (=> b!5322349 (=> res!2257586 e!3306453)))

(assert (=> b!5322349 (= res!2257586 (not (= r!7292 (generalisedConcat!650 (exprs!4865 (h!67567 zl!343))))))))

(declare-fun b!5322350 () Bool)

(declare-fun res!2257593 () Bool)

(assert (=> b!5322350 (=> res!2257593 e!3306442)))

(declare-fun contextDepthTotal!114 (Context!8730) Int)

(assert (=> b!5322350 (= res!2257593 (>= (contextDepthTotal!114 lt!2172256) (contextDepthTotal!114 (h!67567 zl!343))))))

(declare-fun b!5322351 () Bool)

(declare-fun res!2257589 () Bool)

(assert (=> b!5322351 (=> res!2257589 e!3306442)))

(assert (=> b!5322351 (= res!2257589 (not (= (exprs!4865 (h!67567 zl!343)) (Cons!61118 (Concat!23826 (regOne!30474 (regOne!30474 r!7292)) (regTwo!30474 (regOne!30474 r!7292))) (t!374455 (exprs!4865 (h!67567 zl!343)))))))))

(declare-fun setNonEmpty!34271 () Bool)

(declare-fun tp!1482037 () Bool)

(declare-fun setElem!34271 () Context!8730)

(assert (=> setNonEmpty!34271 (= setRes!34271 (and tp!1482037 (inv!80699 setElem!34271) e!3306452))))

(declare-fun setRest!34271 () (InoxSet Context!8730))

(assert (=> setNonEmpty!34271 (= z!1189 ((_ map or) (store ((as const (Array Context!8730 Bool)) false) setElem!34271 true) setRest!34271))))

(declare-fun b!5322352 () Bool)

(declare-fun Unit!153445 () Unit!153442)

(assert (=> b!5322352 (= e!3306447 Unit!153445)))

(declare-fun lt!2172267 () Unit!153442)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!218 ((InoxSet Context!8730) (InoxSet Context!8730) List!61244) Unit!153442)

(assert (=> b!5322352 (= lt!2172267 (lemmaZipperConcatMatchesSameAsBothZippers!218 lt!2172262 lt!2172261 (t!374457 s!2326)))))

(declare-fun res!2257581 () Bool)

(assert (=> b!5322352 (= res!2257581 (matchZipper!1225 lt!2172262 (t!374457 s!2326)))))

(assert (=> b!5322352 (=> res!2257581 e!3306441)))

(assert (=> b!5322352 (= (matchZipper!1225 ((_ map or) lt!2172262 lt!2172261) (t!374457 s!2326)) e!3306441)))

(declare-fun b!5322353 () Bool)

(declare-fun res!2257576 () Bool)

(assert (=> b!5322353 (=> res!2257576 e!3306442)))

(assert (=> b!5322353 (= res!2257576 (not (= lt!2172270 (matchZipper!1225 lt!2172272 (t!374457 s!2326)))))))

(declare-fun b!5322354 () Bool)

(assert (=> b!5322354 (= e!3306439 e!3306448)))

(declare-fun res!2257587 () Bool)

(assert (=> b!5322354 (=> res!2257587 e!3306448)))

(assert (=> b!5322354 (= res!2257587 (not (= lt!2172262 lt!2172275)))))

(assert (=> b!5322354 (= lt!2172275 (derivationStepZipperDown!429 (regOne!30474 (regOne!30474 r!7292)) (Context!8731 lt!2172265) (h!67568 s!2326)))))

(assert (=> b!5322354 (= lt!2172265 (Cons!61118 (regTwo!30474 (regOne!30474 r!7292)) (t!374455 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322355 () Bool)

(assert (=> b!5322355 (= e!3306442 e!3306449)))

(declare-fun res!2257591 () Bool)

(assert (=> b!5322355 (=> res!2257591 e!3306449)))

(declare-fun zipperDepthTotal!134 (List!61243) Int)

(assert (=> b!5322355 (= res!2257591 (>= (zipperDepthTotal!134 lt!2172276) (zipperDepthTotal!134 zl!343)))))

(assert (=> b!5322355 (= lt!2172276 (Cons!61119 lt!2172256 Nil!61119))))

(assert (= (and start!561078 res!2257571) b!5322342))

(assert (= (and b!5322342 res!2257580) b!5322340))

(assert (= (and b!5322340 res!2257585) b!5322325))

(assert (= (and b!5322325 (not res!2257578)) b!5322329))

(assert (= (and b!5322329 (not res!2257570)) b!5322349))

(assert (= (and b!5322349 (not res!2257586)) b!5322347))

(assert (= (and b!5322347 (not res!2257582)) b!5322339))

(assert (= (and b!5322339 (not res!2257577)) b!5322324))

(assert (= (and b!5322324 (not res!2257572)) b!5322330))

(assert (= (and b!5322330 (not res!2257588)) b!5322338))

(assert (= (and b!5322338 (not res!2257573)) b!5322348))

(assert (= (and b!5322348 c!925062) b!5322352))

(assert (= (and b!5322348 (not c!925062)) b!5322322))

(assert (= (and b!5322352 (not res!2257581)) b!5322336))

(assert (= (and b!5322348 (not res!2257583)) b!5322341))

(assert (= (and b!5322341 res!2257575) b!5322345))

(assert (= (and b!5322341 (not res!2257574)) b!5322326))

(assert (= (and b!5322326 (not res!2257592)) b!5322354))

(assert (= (and b!5322354 (not res!2257587)) b!5322343))

(assert (= (and b!5322343 (not res!2257584)) b!5322327))

(assert (= (and b!5322327 (not res!2257590)) b!5322353))

(assert (= (and b!5322353 (not res!2257576)) b!5322351))

(assert (= (and b!5322351 (not res!2257589)) b!5322350))

(assert (= (and b!5322350 (not res!2257593)) b!5322355))

(assert (= (and b!5322355 (not res!2257591)) b!5322333))

(assert (= (and b!5322333 (not res!2257579)) b!5322332))

(assert (= (and start!561078 ((_ is ElementMatch!14981) r!7292)) b!5322323))

(assert (= (and start!561078 ((_ is Concat!23826) r!7292)) b!5322331))

(assert (= (and start!561078 ((_ is Star!14981) r!7292)) b!5322337))

(assert (= (and start!561078 ((_ is Union!14981) r!7292)) b!5322346))

(assert (= (and start!561078 condSetEmpty!34271) setIsEmpty!34271))

(assert (= (and start!561078 (not condSetEmpty!34271)) setNonEmpty!34271))

(assert (= setNonEmpty!34271 b!5322328))

(assert (= b!5322344 b!5322335))

(assert (= (and start!561078 ((_ is Cons!61119) zl!343)) b!5322344))

(assert (= (and start!561078 ((_ is Cons!61120) s!2326)) b!5322334))

(declare-fun m!6357092 () Bool)

(assert (=> b!5322348 m!6357092))

(declare-fun m!6357094 () Bool)

(assert (=> b!5322348 m!6357094))

(declare-fun m!6357096 () Bool)

(assert (=> b!5322348 m!6357096))

(declare-fun m!6357098 () Bool)

(assert (=> b!5322348 m!6357098))

(declare-fun m!6357100 () Bool)

(assert (=> b!5322348 m!6357100))

(declare-fun m!6357102 () Bool)

(assert (=> b!5322348 m!6357102))

(declare-fun m!6357104 () Bool)

(assert (=> b!5322348 m!6357104))

(declare-fun m!6357106 () Bool)

(assert (=> b!5322336 m!6357106))

(declare-fun m!6357108 () Bool)

(assert (=> b!5322342 m!6357108))

(declare-fun m!6357110 () Bool)

(assert (=> b!5322329 m!6357110))

(declare-fun m!6357112 () Bool)

(assert (=> b!5322332 m!6357112))

(declare-fun m!6357114 () Bool)

(assert (=> b!5322332 m!6357114))

(declare-fun m!6357116 () Bool)

(assert (=> b!5322332 m!6357116))

(declare-fun m!6357118 () Bool)

(assert (=> b!5322332 m!6357118))

(declare-fun m!6357120 () Bool)

(assert (=> b!5322332 m!6357120))

(declare-fun m!6357122 () Bool)

(assert (=> b!5322330 m!6357122))

(declare-fun m!6357124 () Bool)

(assert (=> b!5322330 m!6357124))

(declare-fun m!6357126 () Bool)

(assert (=> b!5322330 m!6357126))

(declare-fun m!6357128 () Bool)

(assert (=> b!5322330 m!6357128))

(assert (=> b!5322330 m!6357122))

(declare-fun m!6357130 () Bool)

(assert (=> b!5322330 m!6357130))

(assert (=> b!5322330 m!6357124))

(declare-fun m!6357132 () Bool)

(assert (=> b!5322330 m!6357132))

(declare-fun m!6357134 () Bool)

(assert (=> b!5322355 m!6357134))

(declare-fun m!6357136 () Bool)

(assert (=> b!5322355 m!6357136))

(declare-fun m!6357138 () Bool)

(assert (=> start!561078 m!6357138))

(declare-fun m!6357140 () Bool)

(assert (=> b!5322350 m!6357140))

(declare-fun m!6357142 () Bool)

(assert (=> b!5322350 m!6357142))

(declare-fun m!6357144 () Bool)

(assert (=> b!5322349 m!6357144))

(declare-fun m!6357146 () Bool)

(assert (=> b!5322339 m!6357146))

(assert (=> b!5322339 m!6357146))

(declare-fun m!6357148 () Bool)

(assert (=> b!5322339 m!6357148))

(declare-fun m!6357150 () Bool)

(assert (=> b!5322352 m!6357150))

(declare-fun m!6357152 () Bool)

(assert (=> b!5322352 m!6357152))

(declare-fun m!6357154 () Bool)

(assert (=> b!5322352 m!6357154))

(declare-fun m!6357156 () Bool)

(assert (=> b!5322327 m!6357156))

(declare-fun m!6357158 () Bool)

(assert (=> b!5322327 m!6357158))

(declare-fun m!6357160 () Bool)

(assert (=> b!5322327 m!6357160))

(declare-fun m!6357162 () Bool)

(assert (=> b!5322327 m!6357162))

(declare-fun m!6357164 () Bool)

(assert (=> b!5322327 m!6357164))

(declare-fun m!6357166 () Bool)

(assert (=> b!5322345 m!6357166))

(declare-fun m!6357168 () Bool)

(assert (=> b!5322333 m!6357168))

(declare-fun m!6357170 () Bool)

(assert (=> b!5322333 m!6357170))

(declare-fun m!6357172 () Bool)

(assert (=> b!5322344 m!6357172))

(declare-fun m!6357174 () Bool)

(assert (=> b!5322343 m!6357174))

(assert (=> b!5322343 m!6357152))

(declare-fun m!6357176 () Bool)

(assert (=> setNonEmpty!34271 m!6357176))

(declare-fun m!6357178 () Bool)

(assert (=> b!5322338 m!6357178))

(declare-fun m!6357180 () Bool)

(assert (=> b!5322340 m!6357180))

(declare-fun m!6357182 () Bool)

(assert (=> b!5322325 m!6357182))

(declare-fun m!6357184 () Bool)

(assert (=> b!5322325 m!6357184))

(declare-fun m!6357186 () Bool)

(assert (=> b!5322325 m!6357186))

(declare-fun m!6357188 () Bool)

(assert (=> b!5322354 m!6357188))

(declare-fun m!6357190 () Bool)

(assert (=> b!5322353 m!6357190))

(check-sat (not b!5322332) (not b!5322333) (not b!5322328) (not b!5322339) (not b!5322349) (not b!5322354) (not b!5322346) (not b!5322337) (not b!5322329) (not b!5322335) (not b!5322334) (not b!5322345) (not b!5322340) (not b!5322336) (not b!5322325) (not b!5322353) (not setNonEmpty!34271) (not b!5322327) tp_is_empty!39215 (not start!561078) (not b!5322348) (not b!5322338) (not b!5322350) (not b!5322343) (not b!5322355) (not b!5322330) (not b!5322352) (not b!5322342) (not b!5322344) (not b!5322331))
(check-sat)
(get-model)

(declare-fun bs!1233590 () Bool)

(declare-fun d!1709624 () Bool)

(assert (= bs!1233590 (and d!1709624 b!5322332)))

(declare-fun lambda!271545 () Int)

(assert (=> bs!1233590 (= lambda!271545 lambda!271527)))

(declare-fun b!5322551 () Bool)

(declare-fun e!3306572 () Regex!14981)

(assert (=> b!5322551 (= e!3306572 (Union!14981 (h!67566 (unfocusZipperList!423 zl!343)) (generalisedUnion!910 (t!374455 (unfocusZipperList!423 zl!343)))))))

(declare-fun b!5322552 () Bool)

(declare-fun e!3306573 () Bool)

(declare-fun e!3306575 () Bool)

(assert (=> b!5322552 (= e!3306573 e!3306575)))

(declare-fun c!925135 () Bool)

(declare-fun tail!10507 (List!61242) List!61242)

(assert (=> b!5322552 (= c!925135 (isEmpty!33088 (tail!10507 (unfocusZipperList!423 zl!343))))))

(declare-fun b!5322553 () Bool)

(declare-fun lt!2172317 () Regex!14981)

(declare-fun head!11410 (List!61242) Regex!14981)

(assert (=> b!5322553 (= e!3306575 (= lt!2172317 (head!11410 (unfocusZipperList!423 zl!343))))))

(declare-fun e!3306570 () Bool)

(assert (=> d!1709624 e!3306570))

(declare-fun res!2257649 () Bool)

(assert (=> d!1709624 (=> (not res!2257649) (not e!3306570))))

(assert (=> d!1709624 (= res!2257649 (validRegex!6717 lt!2172317))))

(declare-fun e!3306574 () Regex!14981)

(assert (=> d!1709624 (= lt!2172317 e!3306574)))

(declare-fun c!925136 () Bool)

(declare-fun e!3306571 () Bool)

(assert (=> d!1709624 (= c!925136 e!3306571)))

(declare-fun res!2257650 () Bool)

(assert (=> d!1709624 (=> (not res!2257650) (not e!3306571))))

(assert (=> d!1709624 (= res!2257650 ((_ is Cons!61118) (unfocusZipperList!423 zl!343)))))

(assert (=> d!1709624 (forall!14399 (unfocusZipperList!423 zl!343) lambda!271545)))

(assert (=> d!1709624 (= (generalisedUnion!910 (unfocusZipperList!423 zl!343)) lt!2172317)))

(declare-fun b!5322554 () Bool)

(assert (=> b!5322554 (= e!3306574 (h!67566 (unfocusZipperList!423 zl!343)))))

(declare-fun b!5322555 () Bool)

(assert (=> b!5322555 (= e!3306572 EmptyLang!14981)))

(declare-fun b!5322556 () Bool)

(assert (=> b!5322556 (= e!3306570 e!3306573)))

(declare-fun c!925134 () Bool)

(assert (=> b!5322556 (= c!925134 (isEmpty!33088 (unfocusZipperList!423 zl!343)))))

(declare-fun b!5322557 () Bool)

(assert (=> b!5322557 (= e!3306574 e!3306572)))

(declare-fun c!925133 () Bool)

(assert (=> b!5322557 (= c!925133 ((_ is Cons!61118) (unfocusZipperList!423 zl!343)))))

(declare-fun b!5322558 () Bool)

(assert (=> b!5322558 (= e!3306571 (isEmpty!33088 (t!374455 (unfocusZipperList!423 zl!343))))))

(declare-fun b!5322559 () Bool)

(declare-fun isUnion!321 (Regex!14981) Bool)

(assert (=> b!5322559 (= e!3306575 (isUnion!321 lt!2172317))))

(declare-fun b!5322560 () Bool)

(declare-fun isEmptyLang!889 (Regex!14981) Bool)

(assert (=> b!5322560 (= e!3306573 (isEmptyLang!889 lt!2172317))))

(assert (= (and d!1709624 res!2257650) b!5322558))

(assert (= (and d!1709624 c!925136) b!5322554))

(assert (= (and d!1709624 (not c!925136)) b!5322557))

(assert (= (and b!5322557 c!925133) b!5322551))

(assert (= (and b!5322557 (not c!925133)) b!5322555))

(assert (= (and d!1709624 res!2257649) b!5322556))

(assert (= (and b!5322556 c!925134) b!5322560))

(assert (= (and b!5322556 (not c!925134)) b!5322552))

(assert (= (and b!5322552 c!925135) b!5322553))

(assert (= (and b!5322552 (not c!925135)) b!5322559))

(assert (=> b!5322552 m!6357146))

(declare-fun m!6357334 () Bool)

(assert (=> b!5322552 m!6357334))

(assert (=> b!5322552 m!6357334))

(declare-fun m!6357336 () Bool)

(assert (=> b!5322552 m!6357336))

(declare-fun m!6357338 () Bool)

(assert (=> b!5322559 m!6357338))

(assert (=> b!5322556 m!6357146))

(declare-fun m!6357340 () Bool)

(assert (=> b!5322556 m!6357340))

(declare-fun m!6357342 () Bool)

(assert (=> b!5322551 m!6357342))

(declare-fun m!6357344 () Bool)

(assert (=> d!1709624 m!6357344))

(assert (=> d!1709624 m!6357146))

(declare-fun m!6357346 () Bool)

(assert (=> d!1709624 m!6357346))

(declare-fun m!6357348 () Bool)

(assert (=> b!5322560 m!6357348))

(declare-fun m!6357350 () Bool)

(assert (=> b!5322558 m!6357350))

(assert (=> b!5322553 m!6357146))

(declare-fun m!6357352 () Bool)

(assert (=> b!5322553 m!6357352))

(assert (=> b!5322339 d!1709624))

(declare-fun bs!1233593 () Bool)

(declare-fun d!1709634 () Bool)

(assert (= bs!1233593 (and d!1709634 b!5322332)))

(declare-fun lambda!271553 () Int)

(assert (=> bs!1233593 (= lambda!271553 lambda!271527)))

(declare-fun bs!1233594 () Bool)

(assert (= bs!1233594 (and d!1709634 d!1709624)))

(assert (=> bs!1233594 (= lambda!271553 lambda!271545)))

(declare-fun lt!2172325 () List!61242)

(assert (=> d!1709634 (forall!14399 lt!2172325 lambda!271553)))

(declare-fun e!3306582 () List!61242)

(assert (=> d!1709634 (= lt!2172325 e!3306582)))

(declare-fun c!925139 () Bool)

(assert (=> d!1709634 (= c!925139 ((_ is Cons!61119) zl!343))))

(assert (=> d!1709634 (= (unfocusZipperList!423 zl!343) lt!2172325)))

(declare-fun b!5322573 () Bool)

(assert (=> b!5322573 (= e!3306582 (Cons!61118 (generalisedConcat!650 (exprs!4865 (h!67567 zl!343))) (unfocusZipperList!423 (t!374456 zl!343))))))

(declare-fun b!5322574 () Bool)

(assert (=> b!5322574 (= e!3306582 Nil!61118)))

(assert (= (and d!1709634 c!925139) b!5322573))

(assert (= (and d!1709634 (not c!925139)) b!5322574))

(declare-fun m!6357358 () Bool)

(assert (=> d!1709634 m!6357358))

(assert (=> b!5322573 m!6357144))

(declare-fun m!6357360 () Bool)

(assert (=> b!5322573 m!6357360))

(assert (=> b!5322339 d!1709634))

(declare-fun bs!1233613 () Bool)

(declare-fun d!1709638 () Bool)

(assert (= bs!1233613 (and d!1709638 b!5322332)))

(declare-fun lambda!271573 () Int)

(assert (=> bs!1233613 (= lambda!271573 lambda!271527)))

(declare-fun bs!1233614 () Bool)

(assert (= bs!1233614 (and d!1709638 d!1709624)))

(assert (=> bs!1233614 (= lambda!271573 lambda!271545)))

(declare-fun bs!1233615 () Bool)

(assert (= bs!1233615 (and d!1709638 d!1709634)))

(assert (=> bs!1233615 (= lambda!271573 lambda!271553)))

(declare-fun b!5322618 () Bool)

(declare-fun e!3306609 () Regex!14981)

(assert (=> b!5322618 (= e!3306609 EmptyExpr!14981)))

(declare-fun b!5322619 () Bool)

(declare-fun e!3306612 () Regex!14981)

(assert (=> b!5322619 (= e!3306612 e!3306609)))

(declare-fun c!925163 () Bool)

(assert (=> b!5322619 (= c!925163 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343))))))

(declare-fun e!3306611 () Bool)

(assert (=> d!1709638 e!3306611))

(declare-fun res!2257673 () Bool)

(assert (=> d!1709638 (=> (not res!2257673) (not e!3306611))))

(declare-fun lt!2172346 () Regex!14981)

(assert (=> d!1709638 (= res!2257673 (validRegex!6717 lt!2172346))))

(assert (=> d!1709638 (= lt!2172346 e!3306612)))

(declare-fun c!925162 () Bool)

(declare-fun e!3306608 () Bool)

(assert (=> d!1709638 (= c!925162 e!3306608)))

(declare-fun res!2257672 () Bool)

(assert (=> d!1709638 (=> (not res!2257672) (not e!3306608))))

(assert (=> d!1709638 (= res!2257672 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343))))))

(assert (=> d!1709638 (forall!14399 (exprs!4865 (h!67567 zl!343)) lambda!271573)))

(assert (=> d!1709638 (= (generalisedConcat!650 (exprs!4865 (h!67567 zl!343))) lt!2172346)))

(declare-fun b!5322620 () Bool)

(assert (=> b!5322620 (= e!3306608 (isEmpty!33088 (t!374455 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322621 () Bool)

(declare-fun e!3306610 () Bool)

(assert (=> b!5322621 (= e!3306611 e!3306610)))

(declare-fun c!925160 () Bool)

(assert (=> b!5322621 (= c!925160 (isEmpty!33088 (exprs!4865 (h!67567 zl!343))))))

(declare-fun b!5322622 () Bool)

(declare-fun e!3306613 () Bool)

(declare-fun isConcat!404 (Regex!14981) Bool)

(assert (=> b!5322622 (= e!3306613 (isConcat!404 lt!2172346))))

(declare-fun b!5322623 () Bool)

(declare-fun isEmptyExpr!881 (Regex!14981) Bool)

(assert (=> b!5322623 (= e!3306610 (isEmptyExpr!881 lt!2172346))))

(declare-fun b!5322624 () Bool)

(assert (=> b!5322624 (= e!3306610 e!3306613)))

(declare-fun c!925161 () Bool)

(assert (=> b!5322624 (= c!925161 (isEmpty!33088 (tail!10507 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322625 () Bool)

(assert (=> b!5322625 (= e!3306612 (h!67566 (exprs!4865 (h!67567 zl!343))))))

(declare-fun b!5322626 () Bool)

(assert (=> b!5322626 (= e!3306609 (Concat!23826 (h!67566 (exprs!4865 (h!67567 zl!343))) (generalisedConcat!650 (t!374455 (exprs!4865 (h!67567 zl!343))))))))

(declare-fun b!5322627 () Bool)

(assert (=> b!5322627 (= e!3306613 (= lt!2172346 (head!11410 (exprs!4865 (h!67567 zl!343)))))))

(assert (= (and d!1709638 res!2257672) b!5322620))

(assert (= (and d!1709638 c!925162) b!5322625))

(assert (= (and d!1709638 (not c!925162)) b!5322619))

(assert (= (and b!5322619 c!925163) b!5322626))

(assert (= (and b!5322619 (not c!925163)) b!5322618))

(assert (= (and d!1709638 res!2257673) b!5322621))

(assert (= (and b!5322621 c!925160) b!5322623))

(assert (= (and b!5322621 (not c!925160)) b!5322624))

(assert (= (and b!5322624 c!925161) b!5322627))

(assert (= (and b!5322624 (not c!925161)) b!5322622))

(declare-fun m!6357410 () Bool)

(assert (=> b!5322626 m!6357410))

(declare-fun m!6357412 () Bool)

(assert (=> b!5322622 m!6357412))

(declare-fun m!6357414 () Bool)

(assert (=> b!5322623 m!6357414))

(declare-fun m!6357416 () Bool)

(assert (=> d!1709638 m!6357416))

(declare-fun m!6357418 () Bool)

(assert (=> d!1709638 m!6357418))

(declare-fun m!6357420 () Bool)

(assert (=> b!5322621 m!6357420))

(assert (=> b!5322620 m!6357178))

(declare-fun m!6357422 () Bool)

(assert (=> b!5322627 m!6357422))

(declare-fun m!6357424 () Bool)

(assert (=> b!5322624 m!6357424))

(assert (=> b!5322624 m!6357424))

(declare-fun m!6357426 () Bool)

(assert (=> b!5322624 m!6357426))

(assert (=> b!5322349 d!1709638))

(declare-fun b!5322681 () Bool)

(declare-fun e!3306644 () (InoxSet Context!8730))

(declare-fun e!3306646 () (InoxSet Context!8730))

(assert (=> b!5322681 (= e!3306644 e!3306646)))

(declare-fun c!925187 () Bool)

(assert (=> b!5322681 (= c!925187 ((_ is Cons!61118) (exprs!4865 lt!2172253)))))

(declare-fun b!5322682 () Bool)

(declare-fun call!380096 () (InoxSet Context!8730))

(assert (=> b!5322682 (= e!3306646 call!380096)))

(declare-fun b!5322683 () Bool)

(declare-fun e!3306645 () Bool)

(assert (=> b!5322683 (= e!3306645 (nullable!5150 (h!67566 (exprs!4865 lt!2172253))))))

(declare-fun b!5322684 () Bool)

(assert (=> b!5322684 (= e!3306644 ((_ map or) call!380096 (derivationStepZipperUp!353 (Context!8731 (t!374455 (exprs!4865 lt!2172253))) (h!67568 s!2326))))))

(declare-fun bm!380091 () Bool)

(assert (=> bm!380091 (= call!380096 (derivationStepZipperDown!429 (h!67566 (exprs!4865 lt!2172253)) (Context!8731 (t!374455 (exprs!4865 lt!2172253))) (h!67568 s!2326)))))

(declare-fun b!5322685 () Bool)

(assert (=> b!5322685 (= e!3306646 ((as const (Array Context!8730 Bool)) false))))

(declare-fun d!1709656 () Bool)

(declare-fun c!925188 () Bool)

(assert (=> d!1709656 (= c!925188 e!3306645)))

(declare-fun res!2257681 () Bool)

(assert (=> d!1709656 (=> (not res!2257681) (not e!3306645))))

(assert (=> d!1709656 (= res!2257681 ((_ is Cons!61118) (exprs!4865 lt!2172253)))))

(assert (=> d!1709656 (= (derivationStepZipperUp!353 lt!2172253 (h!67568 s!2326)) e!3306644)))

(assert (= (and d!1709656 res!2257681) b!5322683))

(assert (= (and d!1709656 c!925188) b!5322684))

(assert (= (and d!1709656 (not c!925188)) b!5322681))

(assert (= (and b!5322681 c!925187) b!5322682))

(assert (= (and b!5322681 (not c!925187)) b!5322685))

(assert (= (or b!5322684 b!5322682) bm!380091))

(declare-fun m!6357450 () Bool)

(assert (=> b!5322683 m!6357450))

(declare-fun m!6357452 () Bool)

(assert (=> b!5322684 m!6357452))

(declare-fun m!6357454 () Bool)

(assert (=> bm!380091 m!6357454))

(assert (=> b!5322348 d!1709656))

(declare-fun d!1709666 () Bool)

(declare-fun nullableFct!1498 (Regex!14981) Bool)

(assert (=> d!1709666 (= (nullable!5150 (h!67566 (exprs!4865 (h!67567 zl!343)))) (nullableFct!1498 (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun bs!1233618 () Bool)

(assert (= bs!1233618 d!1709666))

(declare-fun m!6357472 () Bool)

(assert (=> bs!1233618 m!6357472))

(assert (=> b!5322348 d!1709666))

(declare-fun b!5322688 () Bool)

(declare-fun e!3306648 () (InoxSet Context!8730))

(declare-fun e!3306650 () (InoxSet Context!8730))

(assert (=> b!5322688 (= e!3306648 e!3306650)))

(declare-fun c!925190 () Bool)

(assert (=> b!5322688 (= c!925190 ((_ is Cons!61118) (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343))))))))))

(declare-fun b!5322689 () Bool)

(declare-fun call!380097 () (InoxSet Context!8730))

(assert (=> b!5322689 (= e!3306650 call!380097)))

(declare-fun b!5322690 () Bool)

(declare-fun e!3306649 () Bool)

(assert (=> b!5322690 (= e!3306649 (nullable!5150 (h!67566 (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343)))))))))))

(declare-fun b!5322691 () Bool)

(assert (=> b!5322691 (= e!3306648 ((_ map or) call!380097 (derivationStepZipperUp!353 (Context!8731 (t!374455 (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343)))))))) (h!67568 s!2326))))))

(declare-fun bm!380092 () Bool)

(assert (=> bm!380092 (= call!380097 (derivationStepZipperDown!429 (h!67566 (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343))))))) (Context!8731 (t!374455 (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343)))))))) (h!67568 s!2326)))))

(declare-fun b!5322692 () Bool)

(assert (=> b!5322692 (= e!3306650 ((as const (Array Context!8730 Bool)) false))))

(declare-fun d!1709672 () Bool)

(declare-fun c!925191 () Bool)

(assert (=> d!1709672 (= c!925191 e!3306649)))

(declare-fun res!2257682 () Bool)

(assert (=> d!1709672 (=> (not res!2257682) (not e!3306649))))

(assert (=> d!1709672 (= res!2257682 ((_ is Cons!61118) (exprs!4865 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343))))))))))

(assert (=> d!1709672 (= (derivationStepZipperUp!353 (Context!8731 (Cons!61118 (h!67566 (exprs!4865 (h!67567 zl!343))) (t!374455 (exprs!4865 (h!67567 zl!343))))) (h!67568 s!2326)) e!3306648)))

(assert (= (and d!1709672 res!2257682) b!5322690))

(assert (= (and d!1709672 c!925191) b!5322691))

(assert (= (and d!1709672 (not c!925191)) b!5322688))

(assert (= (and b!5322688 c!925190) b!5322689))

(assert (= (and b!5322688 (not c!925190)) b!5322692))

(assert (= (or b!5322691 b!5322689) bm!380092))

(declare-fun m!6357474 () Bool)

(assert (=> b!5322690 m!6357474))

(declare-fun m!6357476 () Bool)

(assert (=> b!5322691 m!6357476))

(declare-fun m!6357478 () Bool)

(assert (=> bm!380092 m!6357478))

(assert (=> b!5322348 d!1709672))

(declare-fun d!1709674 () Bool)

(declare-fun choose!39840 ((InoxSet Context!8730) Int) (InoxSet Context!8730))

(assert (=> d!1709674 (= (flatMap!708 z!1189 lambda!271526) (choose!39840 z!1189 lambda!271526))))

(declare-fun bs!1233619 () Bool)

(assert (= bs!1233619 d!1709674))

(declare-fun m!6357480 () Bool)

(assert (=> bs!1233619 m!6357480))

(assert (=> b!5322348 d!1709674))

(declare-fun d!1709676 () Bool)

(declare-fun dynLambda!24163 (Int Context!8730) (InoxSet Context!8730))

(assert (=> d!1709676 (= (flatMap!708 z!1189 lambda!271526) (dynLambda!24163 lambda!271526 (h!67567 zl!343)))))

(declare-fun lt!2172354 () Unit!153442)

(declare-fun choose!39841 ((InoxSet Context!8730) Context!8730 Int) Unit!153442)

(assert (=> d!1709676 (= lt!2172354 (choose!39841 z!1189 (h!67567 zl!343) lambda!271526))))

(assert (=> d!1709676 (= z!1189 (store ((as const (Array Context!8730 Bool)) false) (h!67567 zl!343) true))))

(assert (=> d!1709676 (= (lemmaFlatMapOnSingletonSet!240 z!1189 (h!67567 zl!343) lambda!271526) lt!2172354)))

(declare-fun b_lambda!204761 () Bool)

(assert (=> (not b_lambda!204761) (not d!1709676)))

(declare-fun bs!1233620 () Bool)

(assert (= bs!1233620 d!1709676))

(assert (=> bs!1233620 m!6357104))

(declare-fun m!6357482 () Bool)

(assert (=> bs!1233620 m!6357482))

(declare-fun m!6357484 () Bool)

(assert (=> bs!1233620 m!6357484))

(declare-fun m!6357486 () Bool)

(assert (=> bs!1233620 m!6357486))

(assert (=> b!5322348 d!1709676))

(declare-fun b!5322721 () Bool)

(declare-fun e!3306665 () (InoxSet Context!8730))

(declare-fun e!3306667 () (InoxSet Context!8730))

(assert (=> b!5322721 (= e!3306665 e!3306667)))

(declare-fun c!925198 () Bool)

(assert (=> b!5322721 (= c!925198 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343))))))

(declare-fun b!5322722 () Bool)

(declare-fun call!380100 () (InoxSet Context!8730))

(assert (=> b!5322722 (= e!3306667 call!380100)))

(declare-fun b!5322723 () Bool)

(declare-fun e!3306666 () Bool)

(assert (=> b!5322723 (= e!3306666 (nullable!5150 (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322724 () Bool)

(assert (=> b!5322724 (= e!3306665 ((_ map or) call!380100 (derivationStepZipperUp!353 (Context!8731 (t!374455 (exprs!4865 (h!67567 zl!343)))) (h!67568 s!2326))))))

(declare-fun bm!380095 () Bool)

(assert (=> bm!380095 (= call!380100 (derivationStepZipperDown!429 (h!67566 (exprs!4865 (h!67567 zl!343))) (Context!8731 (t!374455 (exprs!4865 (h!67567 zl!343)))) (h!67568 s!2326)))))

(declare-fun b!5322725 () Bool)

(assert (=> b!5322725 (= e!3306667 ((as const (Array Context!8730 Bool)) false))))

(declare-fun d!1709678 () Bool)

(declare-fun c!925199 () Bool)

(assert (=> d!1709678 (= c!925199 e!3306666)))

(declare-fun res!2257699 () Bool)

(assert (=> d!1709678 (=> (not res!2257699) (not e!3306666))))

(assert (=> d!1709678 (= res!2257699 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343))))))

(assert (=> d!1709678 (= (derivationStepZipperUp!353 (h!67567 zl!343) (h!67568 s!2326)) e!3306665)))

(assert (= (and d!1709678 res!2257699) b!5322723))

(assert (= (and d!1709678 c!925199) b!5322724))

(assert (= (and d!1709678 (not c!925199)) b!5322721))

(assert (= (and b!5322721 c!925198) b!5322722))

(assert (= (and b!5322721 (not c!925198)) b!5322725))

(assert (= (or b!5322724 b!5322722) bm!380095))

(assert (=> b!5322723 m!6357102))

(declare-fun m!6357488 () Bool)

(assert (=> b!5322724 m!6357488))

(declare-fun m!6357490 () Bool)

(assert (=> bm!380095 m!6357490))

(assert (=> b!5322348 d!1709678))

(declare-fun b!5322812 () Bool)

(declare-fun c!925230 () Bool)

(assert (=> b!5322812 (= c!925230 ((_ is Star!14981) (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun e!3306718 () (InoxSet Context!8730))

(declare-fun e!3306721 () (InoxSet Context!8730))

(assert (=> b!5322812 (= e!3306718 e!3306721)))

(declare-fun b!5322813 () Bool)

(declare-fun e!3306722 () (InoxSet Context!8730))

(declare-fun e!3306720 () (InoxSet Context!8730))

(assert (=> b!5322813 (= e!3306722 e!3306720)))

(declare-fun c!925226 () Bool)

(assert (=> b!5322813 (= c!925226 ((_ is Union!14981) (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322814 () Bool)

(declare-fun call!380123 () (InoxSet Context!8730))

(assert (=> b!5322814 (= e!3306718 call!380123)))

(declare-fun b!5322815 () Bool)

(declare-fun e!3306719 () (InoxSet Context!8730))

(assert (=> b!5322815 (= e!3306719 e!3306718)))

(declare-fun c!925228 () Bool)

(assert (=> b!5322815 (= c!925228 ((_ is Concat!23826) (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(declare-fun b!5322816 () Bool)

(assert (=> b!5322816 (= e!3306722 (store ((as const (Array Context!8730 Bool)) false) lt!2172253 true))))

(declare-fun c!925229 () Bool)

(declare-fun bm!380113 () Bool)

(declare-fun call!380118 () List!61242)

(declare-fun $colon$colon!1396 (List!61242 Regex!14981) List!61242)

(assert (=> bm!380113 (= call!380118 ($colon$colon!1396 (exprs!4865 lt!2172253) (ite (or c!925229 c!925228) (regTwo!30474 (h!67566 (exprs!4865 (h!67567 zl!343)))) (h!67566 (exprs!4865 (h!67567 zl!343))))))))

(declare-fun b!5322817 () Bool)

(assert (=> b!5322817 (= e!3306721 call!380123)))

(declare-fun b!5322818 () Bool)

(declare-fun e!3306723 () Bool)

(assert (=> b!5322818 (= c!925229 e!3306723)))

(declare-fun res!2257734 () Bool)

(assert (=> b!5322818 (=> (not res!2257734) (not e!3306723))))

(assert (=> b!5322818 (= res!2257734 ((_ is Concat!23826) (h!67566 (exprs!4865 (h!67567 zl!343)))))))

(assert (=> b!5322818 (= e!3306720 e!3306719)))

(declare-fun b!5322819 () Bool)

(assert (=> b!5322819 (= e!3306721 ((as const (Array Context!8730 Bool)) false))))

(declare-fun b!5322820 () Bool)

(declare-fun call!380119 () (InoxSet Context!8730))

(declare-fun call!380122 () (InoxSet Context!8730))

(assert (=> b!5322820 (= e!3306719 ((_ map or) call!380119 call!380122))))

(declare-fun bm!380114 () Bool)

(assert (=> bm!380114 (= call!380123 call!380122)))

(declare-fun b!5322821 () Bool)

(declare-fun call!380121 () (InoxSet Context!8730))

(assert (=> b!5322821 (= e!3306720 ((_ map or) call!380121 call!380119))))

(declare-fun bm!380115 () Bool)

(assert (=> bm!380115 (= call!380122 call!380121)))

(declare-fun b!5322822 () Bool)

(assert (=> b!5322822 (= e!3306723 (nullable!5150 (regOne!30474 (h!67566 (exprs!4865 (h!67567 zl!343))))))))

(declare-fun bm!380116 () Bool)

(declare-fun call!380120 () List!61242)

(assert (=> bm!380116 (= call!380120 call!380118)))

(declare-fun bm!380117 () Bool)

(assert (=> bm!380117 (= call!380119 (derivationStepZipperDown!429 (ite c!925226 (regTwo!30475 (h!67566 (exprs!4865 (h!67567 zl!343)))) (regOne!30474 (h!67566 (exprs!4865 (h!67567 zl!343))))) (ite c!925226 lt!2172253 (Context!8731 call!380118)) (h!67568 s!2326)))))

(declare-fun bm!380118 () Bool)

(assert (=> bm!380118 (= call!380121 (derivationStepZipperDown!429 (ite c!925226 (regOne!30475 (h!67566 (exprs!4865 (h!67567 zl!343)))) (ite c!925229 (regTwo!30474 (h!67566 (exprs!4865 (h!67567 zl!343)))) (ite c!925228 (regOne!30474 (h!67566 (exprs!4865 (h!67567 zl!343)))) (reg!15310 (h!67566 (exprs!4865 (h!67567 zl!343))))))) (ite (or c!925226 c!925229) lt!2172253 (Context!8731 call!380120)) (h!67568 s!2326)))))

(declare-fun d!1709680 () Bool)

(declare-fun c!925227 () Bool)

(assert (=> d!1709680 (= c!925227 (and ((_ is ElementMatch!14981) (h!67566 (exprs!4865 (h!67567 zl!343)))) (= (c!925063 (h!67566 (exprs!4865 (h!67567 zl!343)))) (h!67568 s!2326))))))

(assert (=> d!1709680 (= (derivationStepZipperDown!429 (h!67566 (exprs!4865 (h!67567 zl!343))) lt!2172253 (h!67568 s!2326)) e!3306722)))

(assert (= (and d!1709680 c!925227) b!5322816))

(assert (= (and d!1709680 (not c!925227)) b!5322813))

(assert (= (and b!5322813 c!925226) b!5322821))

(assert (= (and b!5322813 (not c!925226)) b!5322818))

(assert (= (and b!5322818 res!2257734) b!5322822))

(assert (= (and b!5322818 c!925229) b!5322820))

(assert (= (and b!5322818 (not c!925229)) b!5322815))

(assert (= (and b!5322815 c!925228) b!5322814))

(assert (= (and b!5322815 (not c!925228)) b!5322812))

(assert (= (and b!5322812 c!925230) b!5322817))

(assert (= (and b!5322812 (not c!925230)) b!5322819))

(assert (= (or b!5322814 b!5322817) bm!380116))

(assert (= (or b!5322814 b!5322817) bm!380114))

(assert (= (or b!5322820 bm!380116) bm!380113))

(assert (= (or b!5322820 bm!380114) bm!380115))

(assert (= (or b!5322821 b!5322820) bm!380117))

(assert (= (or b!5322821 bm!380115) bm!380118))

(declare-fun m!6357530 () Bool)

(assert (=> b!5322822 m!6357530))

(declare-fun m!6357532 () Bool)

(assert (=> bm!380117 m!6357532))

(declare-fun m!6357534 () Bool)

(assert (=> b!5322816 m!6357534))

(declare-fun m!6357536 () Bool)

(assert (=> bm!380113 m!6357536))

(declare-fun m!6357538 () Bool)

(assert (=> bm!380118 m!6357538))

(assert (=> b!5322348 d!1709680))

(declare-fun d!1709690 () Bool)

(assert (=> d!1709690 (= (flatMap!708 lt!2172271 lambda!271526) (choose!39840 lt!2172271 lambda!271526))))

(declare-fun bs!1233629 () Bool)

(assert (= bs!1233629 d!1709690))

(declare-fun m!6357540 () Bool)

(assert (=> bs!1233629 m!6357540))

(assert (=> b!5322327 d!1709690))

(declare-fun b!5322834 () Bool)

(declare-fun e!3306731 () (InoxSet Context!8730))

(declare-fun e!3306733 () (InoxSet Context!8730))

(assert (=> b!5322834 (= e!3306731 e!3306733)))

(declare-fun c!925235 () Bool)

(assert (=> b!5322834 (= c!925235 ((_ is Cons!61118) (exprs!4865 lt!2172256)))))

(declare-fun b!5322835 () Bool)

(declare-fun call!380126 () (InoxSet Context!8730))

(assert (=> b!5322835 (= e!3306733 call!380126)))

(declare-fun b!5322836 () Bool)

(declare-fun e!3306732 () Bool)

(assert (=> b!5322836 (= e!3306732 (nullable!5150 (h!67566 (exprs!4865 lt!2172256))))))

(declare-fun b!5322837 () Bool)

(assert (=> b!5322837 (= e!3306731 ((_ map or) call!380126 (derivationStepZipperUp!353 (Context!8731 (t!374455 (exprs!4865 lt!2172256))) (h!67568 s!2326))))))

(declare-fun bm!380121 () Bool)

(assert (=> bm!380121 (= call!380126 (derivationStepZipperDown!429 (h!67566 (exprs!4865 lt!2172256)) (Context!8731 (t!374455 (exprs!4865 lt!2172256))) (h!67568 s!2326)))))

(declare-fun b!5322838 () Bool)

(assert (=> b!5322838 (= e!3306733 ((as const (Array Context!8730 Bool)) false))))

(declare-fun d!1709692 () Bool)

(declare-fun c!925236 () Bool)

(assert (=> d!1709692 (= c!925236 e!3306732)))

(declare-fun res!2257738 () Bool)

(assert (=> d!1709692 (=> (not res!2257738) (not e!3306732))))

(assert (=> d!1709692 (= res!2257738 ((_ is Cons!61118) (exprs!4865 lt!2172256)))))

(assert (=> d!1709692 (= (derivationStepZipperUp!353 lt!2172256 (h!67568 s!2326)) e!3306731)))

(assert (= (and d!1709692 res!2257738) b!5322836))

(assert (= (and d!1709692 c!925236) b!5322837))

(assert (= (and d!1709692 (not c!925236)) b!5322834))

(assert (= (and b!5322834 c!925235) b!5322835))

(assert (= (and b!5322834 (not c!925235)) b!5322838))

(assert (= (or b!5322837 b!5322835) bm!380121))

(declare-fun m!6357542 () Bool)

(assert (=> b!5322836 m!6357542))

(declare-fun m!6357544 () Bool)

(assert (=> b!5322837 m!6357544))

(declare-fun m!6357546 () Bool)

(assert (=> bm!380121 m!6357546))

(assert (=> b!5322327 d!1709692))

(declare-fun d!1709694 () Bool)

(assert (=> d!1709694 (= (flatMap!708 lt!2172271 lambda!271526) (dynLambda!24163 lambda!271526 lt!2172256))))

(declare-fun lt!2172357 () Unit!153442)

(assert (=> d!1709694 (= lt!2172357 (choose!39841 lt!2172271 lt!2172256 lambda!271526))))

(assert (=> d!1709694 (= lt!2172271 (store ((as const (Array Context!8730 Bool)) false) lt!2172256 true))))

(assert (=> d!1709694 (= (lemmaFlatMapOnSingletonSet!240 lt!2172271 lt!2172256 lambda!271526) lt!2172357)))

(declare-fun b_lambda!204765 () Bool)

(assert (=> (not b_lambda!204765) (not d!1709694)))

(declare-fun bs!1233634 () Bool)

(assert (= bs!1233634 d!1709694))

(assert (=> bs!1233634 m!6357160))

(declare-fun m!6357548 () Bool)

(assert (=> bs!1233634 m!6357548))

(declare-fun m!6357550 () Bool)

(assert (=> bs!1233634 m!6357550))

(assert (=> bs!1233634 m!6357162))

(assert (=> b!5322327 d!1709694))

(declare-fun bs!1233636 () Bool)

(declare-fun d!1709696 () Bool)

(assert (= bs!1233636 (and d!1709696 b!5322348)))

(declare-fun lambda!271583 () Int)

(assert (=> bs!1233636 (= lambda!271583 lambda!271526)))

(assert (=> d!1709696 true))

(assert (=> d!1709696 (= (derivationStepZipper!1222 lt!2172271 (h!67568 s!2326)) (flatMap!708 lt!2172271 lambda!271583))))

(declare-fun bs!1233637 () Bool)

(assert (= bs!1233637 d!1709696))

(declare-fun m!6357564 () Bool)

(assert (=> bs!1233637 m!6357564))

(assert (=> b!5322327 d!1709696))

(declare-fun d!1709702 () Bool)

(assert (=> d!1709702 (= (isEmpty!33088 (t!374455 (exprs!4865 (h!67567 zl!343)))) ((_ is Nil!61118) (t!374455 (exprs!4865 (h!67567 zl!343)))))))

(assert (=> b!5322338 d!1709702))

(declare-fun b!5322940 () Bool)

(declare-fun res!2257761 () Bool)

(declare-fun e!3306788 () Bool)

(assert (=> b!5322940 (=> (not res!2257761) (not e!3306788))))

(declare-fun call!380140 () Bool)

(assert (=> b!5322940 (= res!2257761 call!380140)))

(declare-fun e!3306787 () Bool)

(assert (=> b!5322940 (= e!3306787 e!3306788)))

(declare-fun bm!380135 () Bool)

(declare-fun call!380142 () Bool)

(declare-fun call!380141 () Bool)

(assert (=> bm!380135 (= call!380142 call!380141)))

(declare-fun b!5322941 () Bool)

(declare-fun e!3306789 () Bool)

(declare-fun e!3306786 () Bool)

(assert (=> b!5322941 (= e!3306789 e!3306786)))

(declare-fun c!925253 () Bool)

(assert (=> b!5322941 (= c!925253 ((_ is Star!14981) r!7292))))

(declare-fun b!5322942 () Bool)

(declare-fun res!2257759 () Bool)

(declare-fun e!3306791 () Bool)

(assert (=> b!5322942 (=> res!2257759 e!3306791)))

(assert (=> b!5322942 (= res!2257759 (not ((_ is Concat!23826) r!7292)))))

(assert (=> b!5322942 (= e!3306787 e!3306791)))

(declare-fun bm!380136 () Bool)

(declare-fun c!925252 () Bool)

(assert (=> bm!380136 (= call!380140 (validRegex!6717 (ite c!925252 (regOne!30475 r!7292) (regOne!30474 r!7292))))))

(declare-fun b!5322943 () Bool)

(declare-fun e!3306785 () Bool)

(assert (=> b!5322943 (= e!3306791 e!3306785)))

(declare-fun res!2257760 () Bool)

(assert (=> b!5322943 (=> (not res!2257760) (not e!3306785))))

(assert (=> b!5322943 (= res!2257760 call!380140)))

(declare-fun b!5322945 () Bool)

(assert (=> b!5322945 (= e!3306785 call!380142)))

(declare-fun b!5322946 () Bool)

(assert (=> b!5322946 (= e!3306786 e!3306787)))

(assert (=> b!5322946 (= c!925252 ((_ is Union!14981) r!7292))))

(declare-fun bm!380137 () Bool)

(assert (=> bm!380137 (= call!380141 (validRegex!6717 (ite c!925253 (reg!15310 r!7292) (ite c!925252 (regTwo!30475 r!7292) (regTwo!30474 r!7292)))))))

(declare-fun b!5322947 () Bool)

(assert (=> b!5322947 (= e!3306788 call!380142)))

(declare-fun b!5322948 () Bool)

(declare-fun e!3306790 () Bool)

(assert (=> b!5322948 (= e!3306790 call!380141)))

(declare-fun d!1709704 () Bool)

(declare-fun res!2257758 () Bool)

(assert (=> d!1709704 (=> res!2257758 e!3306789)))

(assert (=> d!1709704 (= res!2257758 ((_ is ElementMatch!14981) r!7292))))

(assert (=> d!1709704 (= (validRegex!6717 r!7292) e!3306789)))

(declare-fun b!5322944 () Bool)

(assert (=> b!5322944 (= e!3306786 e!3306790)))

(declare-fun res!2257762 () Bool)

(assert (=> b!5322944 (= res!2257762 (not (nullable!5150 (reg!15310 r!7292))))))

(assert (=> b!5322944 (=> (not res!2257762) (not e!3306790))))

(assert (= (and d!1709704 (not res!2257758)) b!5322941))

(assert (= (and b!5322941 c!925253) b!5322944))

(assert (= (and b!5322941 (not c!925253)) b!5322946))

(assert (= (and b!5322944 res!2257762) b!5322948))

(assert (= (and b!5322946 c!925252) b!5322940))

(assert (= (and b!5322946 (not c!925252)) b!5322942))

(assert (= (and b!5322940 res!2257761) b!5322947))

(assert (= (and b!5322942 (not res!2257759)) b!5322943))

(assert (= (and b!5322943 res!2257760) b!5322945))

(assert (= (or b!5322947 b!5322945) bm!380135))

(assert (= (or b!5322940 b!5322943) bm!380136))

(assert (= (or b!5322948 bm!380135) bm!380137))

(declare-fun m!6357590 () Bool)

(assert (=> bm!380136 m!6357590))

(declare-fun m!6357592 () Bool)

(assert (=> bm!380137 m!6357592))

(declare-fun m!6357594 () Bool)

(assert (=> b!5322944 m!6357594))

(assert (=> start!561078 d!1709704))

(declare-fun d!1709718 () Bool)

(declare-fun e!3306794 () Bool)

(assert (=> d!1709718 e!3306794))

(declare-fun res!2257765 () Bool)

(assert (=> d!1709718 (=> (not res!2257765) (not e!3306794))))

(declare-fun lt!2172364 () List!61243)

(declare-fun noDuplicate!1301 (List!61243) Bool)

(assert (=> d!1709718 (= res!2257765 (noDuplicate!1301 lt!2172364))))

(declare-fun choose!39842 ((InoxSet Context!8730)) List!61243)

(assert (=> d!1709718 (= lt!2172364 (choose!39842 z!1189))))

(assert (=> d!1709718 (= (toList!8765 z!1189) lt!2172364)))

(declare-fun b!5322951 () Bool)

(declare-fun content!10899 (List!61243) (InoxSet Context!8730))

(assert (=> b!5322951 (= e!3306794 (= (content!10899 lt!2172364) z!1189))))

(assert (= (and d!1709718 res!2257765) b!5322951))

(declare-fun m!6357596 () Bool)

(assert (=> d!1709718 m!6357596))

(declare-fun m!6357598 () Bool)

(assert (=> d!1709718 m!6357598))

(declare-fun m!6357600 () Bool)

(assert (=> b!5322951 m!6357600))

(assert (=> b!5322342 d!1709718))

(declare-fun d!1709720 () Bool)

(declare-fun lt!2172367 () Int)

(assert (=> d!1709720 (>= lt!2172367 0)))

(declare-fun e!3306797 () Int)

(assert (=> d!1709720 (= lt!2172367 e!3306797)))

(declare-fun c!925257 () Bool)

(assert (=> d!1709720 (= c!925257 ((_ is Cons!61118) (exprs!4865 lt!2172256)))))

(assert (=> d!1709720 (= (contextDepthTotal!114 lt!2172256) lt!2172367)))

(declare-fun b!5322956 () Bool)

(declare-fun regexDepthTotal!51 (Regex!14981) Int)

(assert (=> b!5322956 (= e!3306797 (+ (regexDepthTotal!51 (h!67566 (exprs!4865 lt!2172256))) (contextDepthTotal!114 (Context!8731 (t!374455 (exprs!4865 lt!2172256))))))))

(declare-fun b!5322957 () Bool)

(assert (=> b!5322957 (= e!3306797 1)))

(assert (= (and d!1709720 c!925257) b!5322956))

(assert (= (and d!1709720 (not c!925257)) b!5322957))

(declare-fun m!6357602 () Bool)

(assert (=> b!5322956 m!6357602))

(declare-fun m!6357604 () Bool)

(assert (=> b!5322956 m!6357604))

(assert (=> b!5322350 d!1709720))

(declare-fun d!1709722 () Bool)

(declare-fun lt!2172368 () Int)

(assert (=> d!1709722 (>= lt!2172368 0)))

(declare-fun e!3306798 () Int)

(assert (=> d!1709722 (= lt!2172368 e!3306798)))

(declare-fun c!925258 () Bool)

(assert (=> d!1709722 (= c!925258 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343))))))

(assert (=> d!1709722 (= (contextDepthTotal!114 (h!67567 zl!343)) lt!2172368)))

(declare-fun b!5322958 () Bool)

(assert (=> b!5322958 (= e!3306798 (+ (regexDepthTotal!51 (h!67566 (exprs!4865 (h!67567 zl!343)))) (contextDepthTotal!114 (Context!8731 (t!374455 (exprs!4865 (h!67567 zl!343)))))))))

(declare-fun b!5322959 () Bool)

(assert (=> b!5322959 (= e!3306798 1)))

(assert (= (and d!1709722 c!925258) b!5322958))

(assert (= (and d!1709722 (not c!925258)) b!5322959))

(declare-fun m!6357606 () Bool)

(assert (=> b!5322958 m!6357606))

(declare-fun m!6357608 () Bool)

(assert (=> b!5322958 m!6357608))

(assert (=> b!5322350 d!1709722))

(declare-fun d!1709724 () Bool)

(declare-fun choose!39843 (Int) Bool)

(assert (=> d!1709724 (= (Exists!2162 lambda!271525) (choose!39843 lambda!271525))))

(declare-fun bs!1233642 () Bool)

(assert (= bs!1233642 d!1709724))

(declare-fun m!6357610 () Bool)

(assert (=> bs!1233642 m!6357610))

(assert (=> b!5322330 d!1709724))

(declare-fun b!5322978 () Bool)

(declare-fun e!3306813 () Bool)

(declare-fun lt!2172375 () Option!15092)

(declare-fun ++!13326 (List!61244 List!61244) List!61244)

(declare-fun get!21022 (Option!15092) tuple2!64360)

(assert (=> b!5322978 (= e!3306813 (= (++!13326 (_1!35483 (get!21022 lt!2172375)) (_2!35483 (get!21022 lt!2172375))) s!2326))))

(declare-fun b!5322979 () Bool)

(declare-fun e!3306811 () Option!15092)

(declare-fun e!3306809 () Option!15092)

(assert (=> b!5322979 (= e!3306811 e!3306809)))

(declare-fun c!925263 () Bool)

(assert (=> b!5322979 (= c!925263 ((_ is Nil!61120) s!2326))))

(declare-fun b!5322980 () Bool)

(assert (=> b!5322980 (= e!3306809 None!15091)))

(declare-fun b!5322981 () Bool)

(declare-fun res!2257776 () Bool)

(assert (=> b!5322981 (=> (not res!2257776) (not e!3306813))))

(assert (=> b!5322981 (= res!2257776 (matchR!7166 (regTwo!30474 r!7292) (_2!35483 (get!21022 lt!2172375))))))

(declare-fun b!5322982 () Bool)

(declare-fun lt!2172377 () Unit!153442)

(declare-fun lt!2172376 () Unit!153442)

(assert (=> b!5322982 (= lt!2172377 lt!2172376)))

(assert (=> b!5322982 (= (++!13326 (++!13326 Nil!61120 (Cons!61120 (h!67568 s!2326) Nil!61120)) (t!374457 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1741 (List!61244 C!30232 List!61244 List!61244) Unit!153442)

(assert (=> b!5322982 (= lt!2172376 (lemmaMoveElementToOtherListKeepsConcatEq!1741 Nil!61120 (h!67568 s!2326) (t!374457 s!2326) s!2326))))

(assert (=> b!5322982 (= e!3306809 (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) (++!13326 Nil!61120 (Cons!61120 (h!67568 s!2326) Nil!61120)) (t!374457 s!2326) s!2326))))

(declare-fun b!5322983 () Bool)

(declare-fun res!2257778 () Bool)

(assert (=> b!5322983 (=> (not res!2257778) (not e!3306813))))

(assert (=> b!5322983 (= res!2257778 (matchR!7166 (regOne!30474 r!7292) (_1!35483 (get!21022 lt!2172375))))))

(declare-fun d!1709726 () Bool)

(declare-fun e!3306812 () Bool)

(assert (=> d!1709726 e!3306812))

(declare-fun res!2257777 () Bool)

(assert (=> d!1709726 (=> res!2257777 e!3306812)))

(assert (=> d!1709726 (= res!2257777 e!3306813)))

(declare-fun res!2257779 () Bool)

(assert (=> d!1709726 (=> (not res!2257779) (not e!3306813))))

(assert (=> d!1709726 (= res!2257779 (isDefined!11795 lt!2172375))))

(assert (=> d!1709726 (= lt!2172375 e!3306811)))

(declare-fun c!925264 () Bool)

(declare-fun e!3306810 () Bool)

(assert (=> d!1709726 (= c!925264 e!3306810)))

(declare-fun res!2257780 () Bool)

(assert (=> d!1709726 (=> (not res!2257780) (not e!3306810))))

(assert (=> d!1709726 (= res!2257780 (matchR!7166 (regOne!30474 r!7292) Nil!61120))))

(assert (=> d!1709726 (validRegex!6717 (regOne!30474 r!7292))))

(assert (=> d!1709726 (= (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) Nil!61120 s!2326 s!2326) lt!2172375)))

(declare-fun b!5322984 () Bool)

(assert (=> b!5322984 (= e!3306810 (matchR!7166 (regTwo!30474 r!7292) s!2326))))

(declare-fun b!5322985 () Bool)

(assert (=> b!5322985 (= e!3306812 (not (isDefined!11795 lt!2172375)))))

(declare-fun b!5322986 () Bool)

(assert (=> b!5322986 (= e!3306811 (Some!15091 (tuple2!64361 Nil!61120 s!2326)))))

(assert (= (and d!1709726 res!2257780) b!5322984))

(assert (= (and d!1709726 c!925264) b!5322986))

(assert (= (and d!1709726 (not c!925264)) b!5322979))

(assert (= (and b!5322979 c!925263) b!5322980))

(assert (= (and b!5322979 (not c!925263)) b!5322982))

(assert (= (and d!1709726 res!2257779) b!5322983))

(assert (= (and b!5322983 res!2257778) b!5322981))

(assert (= (and b!5322981 res!2257776) b!5322978))

(assert (= (and d!1709726 (not res!2257777)) b!5322985))

(declare-fun m!6357612 () Bool)

(assert (=> d!1709726 m!6357612))

(declare-fun m!6357614 () Bool)

(assert (=> d!1709726 m!6357614))

(declare-fun m!6357616 () Bool)

(assert (=> d!1709726 m!6357616))

(declare-fun m!6357618 () Bool)

(assert (=> b!5322983 m!6357618))

(declare-fun m!6357620 () Bool)

(assert (=> b!5322983 m!6357620))

(declare-fun m!6357622 () Bool)

(assert (=> b!5322984 m!6357622))

(assert (=> b!5322985 m!6357612))

(assert (=> b!5322978 m!6357618))

(declare-fun m!6357624 () Bool)

(assert (=> b!5322978 m!6357624))

(declare-fun m!6357626 () Bool)

(assert (=> b!5322982 m!6357626))

(assert (=> b!5322982 m!6357626))

(declare-fun m!6357628 () Bool)

(assert (=> b!5322982 m!6357628))

(declare-fun m!6357630 () Bool)

(assert (=> b!5322982 m!6357630))

(assert (=> b!5322982 m!6357626))

(declare-fun m!6357632 () Bool)

(assert (=> b!5322982 m!6357632))

(assert (=> b!5322981 m!6357618))

(declare-fun m!6357634 () Bool)

(assert (=> b!5322981 m!6357634))

(assert (=> b!5322330 d!1709726))

(declare-fun bs!1233643 () Bool)

(declare-fun d!1709728 () Bool)

(assert (= bs!1233643 (and d!1709728 b!5322330)))

(declare-fun lambda!271588 () Int)

(assert (=> bs!1233643 (= lambda!271588 lambda!271524)))

(assert (=> bs!1233643 (not (= lambda!271588 lambda!271525))))

(assert (=> d!1709728 true))

(assert (=> d!1709728 true))

(assert (=> d!1709728 true))

(declare-fun lambda!271589 () Int)

(assert (=> bs!1233643 (not (= lambda!271589 lambda!271524))))

(assert (=> bs!1233643 (= lambda!271589 lambda!271525)))

(declare-fun bs!1233644 () Bool)

(assert (= bs!1233644 d!1709728))

(assert (=> bs!1233644 (not (= lambda!271589 lambda!271588))))

(assert (=> d!1709728 true))

(assert (=> d!1709728 true))

(assert (=> d!1709728 true))

(assert (=> d!1709728 (= (Exists!2162 lambda!271588) (Exists!2162 lambda!271589))))

(declare-fun lt!2172380 () Unit!153442)

(declare-fun choose!39845 (Regex!14981 Regex!14981 List!61244) Unit!153442)

(assert (=> d!1709728 (= lt!2172380 (choose!39845 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326))))

(assert (=> d!1709728 (validRegex!6717 (regOne!30474 r!7292))))

(assert (=> d!1709728 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!816 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326) lt!2172380)))

(declare-fun m!6357636 () Bool)

(assert (=> bs!1233644 m!6357636))

(declare-fun m!6357638 () Bool)

(assert (=> bs!1233644 m!6357638))

(declare-fun m!6357640 () Bool)

(assert (=> bs!1233644 m!6357640))

(assert (=> bs!1233644 m!6357616))

(assert (=> b!5322330 d!1709728))

(declare-fun d!1709730 () Bool)

(declare-fun isEmpty!33091 (Option!15092) Bool)

(assert (=> d!1709730 (= (isDefined!11795 (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) Nil!61120 s!2326 s!2326)) (not (isEmpty!33091 (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) Nil!61120 s!2326 s!2326))))))

(declare-fun bs!1233645 () Bool)

(assert (= bs!1233645 d!1709730))

(assert (=> bs!1233645 m!6357124))

(declare-fun m!6357642 () Bool)

(assert (=> bs!1233645 m!6357642))

(assert (=> b!5322330 d!1709730))

(declare-fun bs!1233646 () Bool)

(declare-fun d!1709732 () Bool)

(assert (= bs!1233646 (and d!1709732 b!5322330)))

(declare-fun lambda!271592 () Int)

(assert (=> bs!1233646 (= lambda!271592 lambda!271524)))

(assert (=> bs!1233646 (not (= lambda!271592 lambda!271525))))

(declare-fun bs!1233647 () Bool)

(assert (= bs!1233647 (and d!1709732 d!1709728)))

(assert (=> bs!1233647 (= lambda!271592 lambda!271588)))

(assert (=> bs!1233647 (not (= lambda!271592 lambda!271589))))

(assert (=> d!1709732 true))

(assert (=> d!1709732 true))

(assert (=> d!1709732 true))

(assert (=> d!1709732 (= (isDefined!11795 (findConcatSeparation!1506 (regOne!30474 r!7292) (regTwo!30474 r!7292) Nil!61120 s!2326 s!2326)) (Exists!2162 lambda!271592))))

(declare-fun lt!2172383 () Unit!153442)

(declare-fun choose!39846 (Regex!14981 Regex!14981 List!61244) Unit!153442)

(assert (=> d!1709732 (= lt!2172383 (choose!39846 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326))))

(assert (=> d!1709732 (validRegex!6717 (regOne!30474 r!7292))))

(assert (=> d!1709732 (= (lemmaFindConcatSeparationEquivalentToExists!1270 (regOne!30474 r!7292) (regTwo!30474 r!7292) s!2326) lt!2172383)))

(declare-fun bs!1233648 () Bool)

(assert (= bs!1233648 d!1709732))

(declare-fun m!6357644 () Bool)

(assert (=> bs!1233648 m!6357644))

(assert (=> bs!1233648 m!6357616))

(assert (=> bs!1233648 m!6357124))

(assert (=> bs!1233648 m!6357124))

(assert (=> bs!1233648 m!6357126))

(declare-fun m!6357646 () Bool)

(assert (=> bs!1233648 m!6357646))

(assert (=> b!5322330 d!1709732))

(declare-fun d!1709734 () Bool)

(assert (=> d!1709734 (= (Exists!2162 lambda!271524) (choose!39843 lambda!271524))))

(declare-fun bs!1233649 () Bool)

(assert (= bs!1233649 d!1709734))

(declare-fun m!6357648 () Bool)

(assert (=> bs!1233649 m!6357648))

(assert (=> b!5322330 d!1709734))

(declare-fun d!1709736 () Bool)

(assert (=> d!1709736 (= (isEmpty!33087 (t!374456 zl!343)) ((_ is Nil!61119) (t!374456 zl!343)))))

(assert (=> b!5322329 d!1709736))

(declare-fun d!1709738 () Bool)

(declare-fun lt!2172386 () Regex!14981)

(assert (=> d!1709738 (validRegex!6717 lt!2172386)))

(assert (=> d!1709738 (= lt!2172386 (generalisedUnion!910 (unfocusZipperList!423 zl!343)))))

(assert (=> d!1709738 (= (unfocusZipper!723 zl!343) lt!2172386)))

(declare-fun bs!1233650 () Bool)

(assert (= bs!1233650 d!1709738))

(declare-fun m!6357650 () Bool)

(assert (=> bs!1233650 m!6357650))

(assert (=> bs!1233650 m!6357146))

(assert (=> bs!1233650 m!6357146))

(assert (=> bs!1233650 m!6357148))

(assert (=> b!5322340 d!1709738))

(declare-fun d!1709740 () Bool)

(declare-fun c!925267 () Bool)

(declare-fun isEmpty!33092 (List!61244) Bool)

(assert (=> d!1709740 (= c!925267 (isEmpty!33092 (t!374457 s!2326)))))

(declare-fun e!3306822 () Bool)

(assert (=> d!1709740 (= (matchZipper!1225 lt!2172272 (t!374457 s!2326)) e!3306822)))

(declare-fun b!5323003 () Bool)

(declare-fun nullableZipper!1346 ((InoxSet Context!8730)) Bool)

(assert (=> b!5323003 (= e!3306822 (nullableZipper!1346 lt!2172272))))

(declare-fun b!5323004 () Bool)

(declare-fun head!11411 (List!61244) C!30232)

(declare-fun tail!10508 (List!61244) List!61244)

(assert (=> b!5323004 (= e!3306822 (matchZipper!1225 (derivationStepZipper!1222 lt!2172272 (head!11411 (t!374457 s!2326))) (tail!10508 (t!374457 s!2326))))))

(assert (= (and d!1709740 c!925267) b!5323003))

(assert (= (and d!1709740 (not c!925267)) b!5323004))

(declare-fun m!6357652 () Bool)

(assert (=> d!1709740 m!6357652))

(declare-fun m!6357654 () Bool)

(assert (=> b!5323003 m!6357654))

(declare-fun m!6357656 () Bool)

(assert (=> b!5323004 m!6357656))

(assert (=> b!5323004 m!6357656))

(declare-fun m!6357658 () Bool)

(assert (=> b!5323004 m!6357658))

(declare-fun m!6357660 () Bool)

(assert (=> b!5323004 m!6357660))

(assert (=> b!5323004 m!6357658))

(assert (=> b!5323004 m!6357660))

(declare-fun m!6357662 () Bool)

(assert (=> b!5323004 m!6357662))

(assert (=> b!5322353 d!1709740))

(declare-fun b!5323011 () Bool)

(assert (=> b!5323011 true))

(declare-fun bs!1233651 () Bool)

(declare-fun b!5323013 () Bool)

(assert (= bs!1233651 (and b!5323013 b!5323011)))

(declare-fun lt!2172397 () Int)

(declare-fun lambda!271600 () Int)

(declare-fun lambda!271601 () Int)

(declare-fun lt!2172398 () Int)

(assert (=> bs!1233651 (= (= lt!2172397 lt!2172398) (= lambda!271601 lambda!271600))))

(assert (=> b!5323013 true))

(declare-fun d!1709742 () Bool)

(declare-fun e!3306827 () Bool)

(assert (=> d!1709742 e!3306827))

(declare-fun res!2257795 () Bool)

(assert (=> d!1709742 (=> (not res!2257795) (not e!3306827))))

(assert (=> d!1709742 (= res!2257795 (>= lt!2172397 0))))

(declare-fun e!3306828 () Int)

(assert (=> d!1709742 (= lt!2172397 e!3306828)))

(declare-fun c!925276 () Bool)

(assert (=> d!1709742 (= c!925276 ((_ is Cons!61119) lt!2172276))))

(assert (=> d!1709742 (= (zipperDepth!90 lt!2172276) lt!2172397)))

(assert (=> b!5323011 (= e!3306828 lt!2172398)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!52 (Context!8730) Int)

(assert (=> b!5323011 (= lt!2172398 (maxBigInt!0 (contextDepth!52 (h!67567 lt!2172276)) (zipperDepth!90 (t!374456 lt!2172276))))))

(declare-fun lambda!271599 () Int)

(declare-fun lt!2172396 () Unit!153442)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!46 (List!61243 Int Int Int) Unit!153442)

(assert (=> b!5323011 (= lt!2172396 (lemmaForallContextDepthBiggerThanTransitive!46 (t!374456 lt!2172276) lt!2172398 (zipperDepth!90 (t!374456 lt!2172276)) lambda!271599))))

(declare-fun forall!14401 (List!61243 Int) Bool)

(assert (=> b!5323011 (forall!14401 (t!374456 lt!2172276) lambda!271600)))

(declare-fun lt!2172395 () Unit!153442)

(assert (=> b!5323011 (= lt!2172395 lt!2172396)))

(declare-fun b!5323012 () Bool)

(assert (=> b!5323012 (= e!3306828 0)))

(assert (=> b!5323013 (= e!3306827 (forall!14401 lt!2172276 lambda!271601))))

(assert (= (and d!1709742 c!925276) b!5323011))

(assert (= (and d!1709742 (not c!925276)) b!5323012))

(assert (= (and d!1709742 res!2257795) b!5323013))

(declare-fun m!6357664 () Bool)

(assert (=> b!5323011 m!6357664))

(declare-fun m!6357666 () Bool)

(assert (=> b!5323011 m!6357666))

(declare-fun m!6357668 () Bool)

(assert (=> b!5323011 m!6357668))

(assert (=> b!5323011 m!6357664))

(assert (=> b!5323011 m!6357668))

(declare-fun m!6357670 () Bool)

(assert (=> b!5323011 m!6357670))

(assert (=> b!5323011 m!6357668))

(declare-fun m!6357672 () Bool)

(assert (=> b!5323011 m!6357672))

(declare-fun m!6357674 () Bool)

(assert (=> b!5323013 m!6357674))

(assert (=> b!5322333 d!1709742))

(declare-fun bs!1233652 () Bool)

(declare-fun b!5323016 () Bool)

(assert (= bs!1233652 (and b!5323016 b!5323011)))

(declare-fun lambda!271602 () Int)

(assert (=> bs!1233652 (= lambda!271602 lambda!271599)))

(declare-fun lt!2172402 () Int)

(declare-fun lambda!271603 () Int)

(assert (=> bs!1233652 (= (= lt!2172402 lt!2172398) (= lambda!271603 lambda!271600))))

(declare-fun bs!1233653 () Bool)

(assert (= bs!1233653 (and b!5323016 b!5323013)))

(assert (=> bs!1233653 (= (= lt!2172402 lt!2172397) (= lambda!271603 lambda!271601))))

(assert (=> b!5323016 true))

(declare-fun bs!1233654 () Bool)

(declare-fun b!5323018 () Bool)

(assert (= bs!1233654 (and b!5323018 b!5323011)))

(declare-fun lt!2172401 () Int)

(declare-fun lambda!271604 () Int)

(assert (=> bs!1233654 (= (= lt!2172401 lt!2172398) (= lambda!271604 lambda!271600))))

(declare-fun bs!1233655 () Bool)

(assert (= bs!1233655 (and b!5323018 b!5323013)))

(assert (=> bs!1233655 (= (= lt!2172401 lt!2172397) (= lambda!271604 lambda!271601))))

(declare-fun bs!1233656 () Bool)

(assert (= bs!1233656 (and b!5323018 b!5323016)))

(assert (=> bs!1233656 (= (= lt!2172401 lt!2172402) (= lambda!271604 lambda!271603))))

(assert (=> b!5323018 true))

(declare-fun d!1709744 () Bool)

(declare-fun e!3306829 () Bool)

(assert (=> d!1709744 e!3306829))

(declare-fun res!2257796 () Bool)

(assert (=> d!1709744 (=> (not res!2257796) (not e!3306829))))

(assert (=> d!1709744 (= res!2257796 (>= lt!2172401 0))))

(declare-fun e!3306830 () Int)

(assert (=> d!1709744 (= lt!2172401 e!3306830)))

(declare-fun c!925277 () Bool)

(assert (=> d!1709744 (= c!925277 ((_ is Cons!61119) zl!343))))

(assert (=> d!1709744 (= (zipperDepth!90 zl!343) lt!2172401)))

(assert (=> b!5323016 (= e!3306830 lt!2172402)))

(assert (=> b!5323016 (= lt!2172402 (maxBigInt!0 (contextDepth!52 (h!67567 zl!343)) (zipperDepth!90 (t!374456 zl!343))))))

(declare-fun lt!2172400 () Unit!153442)

(assert (=> b!5323016 (= lt!2172400 (lemmaForallContextDepthBiggerThanTransitive!46 (t!374456 zl!343) lt!2172402 (zipperDepth!90 (t!374456 zl!343)) lambda!271602))))

(assert (=> b!5323016 (forall!14401 (t!374456 zl!343) lambda!271603)))

(declare-fun lt!2172399 () Unit!153442)

(assert (=> b!5323016 (= lt!2172399 lt!2172400)))

(declare-fun b!5323017 () Bool)

(assert (=> b!5323017 (= e!3306830 0)))

(assert (=> b!5323018 (= e!3306829 (forall!14401 zl!343 lambda!271604))))

(assert (= (and d!1709744 c!925277) b!5323016))

(assert (= (and d!1709744 (not c!925277)) b!5323017))

(assert (= (and d!1709744 res!2257796) b!5323018))

(declare-fun m!6357676 () Bool)

(assert (=> b!5323016 m!6357676))

(declare-fun m!6357678 () Bool)

(assert (=> b!5323016 m!6357678))

(declare-fun m!6357680 () Bool)

(assert (=> b!5323016 m!6357680))

(assert (=> b!5323016 m!6357676))

(assert (=> b!5323016 m!6357680))

(declare-fun m!6357682 () Bool)

(assert (=> b!5323016 m!6357682))

(assert (=> b!5323016 m!6357680))

(declare-fun m!6357684 () Bool)

(assert (=> b!5323016 m!6357684))

(declare-fun m!6357686 () Bool)

(assert (=> b!5323018 m!6357686))

(assert (=> b!5322333 d!1709744))

(declare-fun d!1709746 () Bool)

(declare-fun c!925278 () Bool)

(assert (=> d!1709746 (= c!925278 (isEmpty!33092 (t!374457 s!2326)))))

(declare-fun e!3306831 () Bool)

(assert (=> d!1709746 (= (matchZipper!1225 lt!2172275 (t!374457 s!2326)) e!3306831)))

(declare-fun b!5323019 () Bool)

(assert (=> b!5323019 (= e!3306831 (nullableZipper!1346 lt!2172275))))

(declare-fun b!5323020 () Bool)

(assert (=> b!5323020 (= e!3306831 (matchZipper!1225 (derivationStepZipper!1222 lt!2172275 (head!11411 (t!374457 s!2326))) (tail!10508 (t!374457 s!2326))))))

(assert (= (and d!1709746 c!925278) b!5323019))

(assert (= (and d!1709746 (not c!925278)) b!5323020))

(assert (=> d!1709746 m!6357652))

(declare-fun m!6357688 () Bool)

(assert (=> b!5323019 m!6357688))

(assert (=> b!5323020 m!6357656))

(assert (=> b!5323020 m!6357656))

(declare-fun m!6357690 () Bool)

(assert (=> b!5323020 m!6357690))

(assert (=> b!5323020 m!6357660))

(assert (=> b!5323020 m!6357690))

(assert (=> b!5323020 m!6357660))

(declare-fun m!6357692 () Bool)

(assert (=> b!5323020 m!6357692))

(assert (=> b!5322343 d!1709746))

(declare-fun d!1709748 () Bool)

(declare-fun c!925279 () Bool)

(assert (=> d!1709748 (= c!925279 (isEmpty!33092 (t!374457 s!2326)))))

(declare-fun e!3306832 () Bool)

(assert (=> d!1709748 (= (matchZipper!1225 lt!2172262 (t!374457 s!2326)) e!3306832)))

(declare-fun b!5323021 () Bool)

(assert (=> b!5323021 (= e!3306832 (nullableZipper!1346 lt!2172262))))

(declare-fun b!5323022 () Bool)

(assert (=> b!5323022 (= e!3306832 (matchZipper!1225 (derivationStepZipper!1222 lt!2172262 (head!11411 (t!374457 s!2326))) (tail!10508 (t!374457 s!2326))))))

(assert (= (and d!1709748 c!925279) b!5323021))

(assert (= (and d!1709748 (not c!925279)) b!5323022))

(assert (=> d!1709748 m!6357652))

(declare-fun m!6357694 () Bool)

(assert (=> b!5323021 m!6357694))

(assert (=> b!5323022 m!6357656))

(assert (=> b!5323022 m!6357656))

(declare-fun m!6357696 () Bool)

(assert (=> b!5323022 m!6357696))

(assert (=> b!5323022 m!6357660))

(assert (=> b!5323022 m!6357696))

(assert (=> b!5323022 m!6357660))

(declare-fun m!6357698 () Bool)

(assert (=> b!5323022 m!6357698))

(assert (=> b!5322343 d!1709748))

(declare-fun e!3306835 () Bool)

(declare-fun d!1709750 () Bool)

(assert (=> d!1709750 (= (matchZipper!1225 ((_ map or) lt!2172262 lt!2172261) (t!374457 s!2326)) e!3306835)))

(declare-fun res!2257799 () Bool)

(assert (=> d!1709750 (=> res!2257799 e!3306835)))

(assert (=> d!1709750 (= res!2257799 (matchZipper!1225 lt!2172262 (t!374457 s!2326)))))

(declare-fun lt!2172405 () Unit!153442)

(declare-fun choose!39847 ((InoxSet Context!8730) (InoxSet Context!8730) List!61244) Unit!153442)

(assert (=> d!1709750 (= lt!2172405 (choose!39847 lt!2172262 lt!2172261 (t!374457 s!2326)))))

(assert (=> d!1709750 (= (lemmaZipperConcatMatchesSameAsBothZippers!218 lt!2172262 lt!2172261 (t!374457 s!2326)) lt!2172405)))

(declare-fun b!5323025 () Bool)

(assert (=> b!5323025 (= e!3306835 (matchZipper!1225 lt!2172261 (t!374457 s!2326)))))

(assert (= (and d!1709750 (not res!2257799)) b!5323025))

(assert (=> d!1709750 m!6357154))

(assert (=> d!1709750 m!6357152))

(declare-fun m!6357700 () Bool)

(assert (=> d!1709750 m!6357700))

(assert (=> b!5323025 m!6357106))

(assert (=> b!5322352 d!1709750))

(assert (=> b!5322352 d!1709748))

(declare-fun d!1709752 () Bool)

(declare-fun c!925280 () Bool)

(assert (=> d!1709752 (= c!925280 (isEmpty!33092 (t!374457 s!2326)))))

(declare-fun e!3306836 () Bool)

(assert (=> d!1709752 (= (matchZipper!1225 ((_ map or) lt!2172262 lt!2172261) (t!374457 s!2326)) e!3306836)))

(declare-fun b!5323026 () Bool)

(assert (=> b!5323026 (= e!3306836 (nullableZipper!1346 ((_ map or) lt!2172262 lt!2172261)))))

(declare-fun b!5323027 () Bool)

(assert (=> b!5323027 (= e!3306836 (matchZipper!1225 (derivationStepZipper!1222 ((_ map or) lt!2172262 lt!2172261) (head!11411 (t!374457 s!2326))) (tail!10508 (t!374457 s!2326))))))

(assert (= (and d!1709752 c!925280) b!5323026))

(assert (= (and d!1709752 (not c!925280)) b!5323027))

(assert (=> d!1709752 m!6357652))

(declare-fun m!6357702 () Bool)

(assert (=> b!5323026 m!6357702))

(assert (=> b!5323027 m!6357656))

(assert (=> b!5323027 m!6357656))

(declare-fun m!6357704 () Bool)

(assert (=> b!5323027 m!6357704))

(assert (=> b!5323027 m!6357660))

(assert (=> b!5323027 m!6357704))

(assert (=> b!5323027 m!6357660))

(declare-fun m!6357706 () Bool)

(assert (=> b!5323027 m!6357706))

(assert (=> b!5322352 d!1709752))

(declare-fun bs!1233657 () Bool)

(declare-fun d!1709754 () Bool)

(assert (= bs!1233657 (and d!1709754 b!5322332)))

(declare-fun lambda!271607 () Int)

(assert (=> bs!1233657 (= lambda!271607 lambda!271527)))

(declare-fun bs!1233658 () Bool)

(assert (= bs!1233658 (and d!1709754 d!1709624)))

(assert (=> bs!1233658 (= lambda!271607 lambda!271545)))

(declare-fun bs!1233659 () Bool)

(assert (= bs!1233659 (and d!1709754 d!1709634)))

(assert (=> bs!1233659 (= lambda!271607 lambda!271553)))

(declare-fun bs!1233660 () Bool)

(assert (= bs!1233660 (and d!1709754 d!1709638)))

(assert (=> bs!1233660 (= lambda!271607 lambda!271573)))

(assert (=> d!1709754 (= (inv!80699 setElem!34271) (forall!14399 (exprs!4865 setElem!34271) lambda!271607))))

(declare-fun bs!1233661 () Bool)

(assert (= bs!1233661 d!1709754))

(declare-fun m!6357708 () Bool)

(assert (=> bs!1233661 m!6357708))

(assert (=> setNonEmpty!34271 d!1709754))

(declare-fun d!1709756 () Bool)

(assert (=> d!1709756 (= (matchR!7166 lt!2172260 s!2326) (matchZipper!1225 lt!2172271 s!2326))))

(declare-fun lt!2172408 () Unit!153442)

(declare-fun choose!39848 ((InoxSet Context!8730) List!61243 Regex!14981 List!61244) Unit!153442)

(assert (=> d!1709756 (= lt!2172408 (choose!39848 lt!2172271 lt!2172276 lt!2172260 s!2326))))

(assert (=> d!1709756 (validRegex!6717 lt!2172260)))

(assert (=> d!1709756 (= (theoremZipperRegexEquiv!379 lt!2172271 lt!2172276 lt!2172260 s!2326) lt!2172408)))

(declare-fun bs!1233662 () Bool)

(assert (= bs!1233662 d!1709756))

(assert (=> bs!1233662 m!6357112))

(assert (=> bs!1233662 m!6357120))

(declare-fun m!6357710 () Bool)

(assert (=> bs!1233662 m!6357710))

(declare-fun m!6357712 () Bool)

(assert (=> bs!1233662 m!6357712))

(assert (=> b!5322332 d!1709756))

(declare-fun b!5323056 () Bool)

(declare-fun e!3306854 () Bool)

(declare-fun lt!2172411 () Bool)

(assert (=> b!5323056 (= e!3306854 (not lt!2172411))))

(declare-fun b!5323057 () Bool)

(declare-fun e!3306853 () Bool)

(declare-fun e!3306856 () Bool)

(assert (=> b!5323057 (= e!3306853 e!3306856)))

(declare-fun res!2257820 () Bool)

(assert (=> b!5323057 (=> (not res!2257820) (not e!3306856))))

(assert (=> b!5323057 (= res!2257820 (not lt!2172411))))

(declare-fun b!5323058 () Bool)

(declare-fun e!3306857 () Bool)

(assert (=> b!5323058 (= e!3306857 e!3306854)))

(declare-fun c!925289 () Bool)

(assert (=> b!5323058 (= c!925289 ((_ is EmptyLang!14981) lt!2172260))))

(declare-fun b!5323059 () Bool)

(declare-fun e!3306851 () Bool)

(assert (=> b!5323059 (= e!3306856 e!3306851)))

(declare-fun res!2257817 () Bool)

(assert (=> b!5323059 (=> res!2257817 e!3306851)))

(declare-fun call!380145 () Bool)

(assert (=> b!5323059 (= res!2257817 call!380145)))

(declare-fun bm!380140 () Bool)

(assert (=> bm!380140 (= call!380145 (isEmpty!33092 s!2326))))

(declare-fun b!5323060 () Bool)

(declare-fun e!3306852 () Bool)

(assert (=> b!5323060 (= e!3306852 (nullable!5150 lt!2172260))))

(declare-fun b!5323061 () Bool)

(assert (=> b!5323061 (= e!3306851 (not (= (head!11411 s!2326) (c!925063 lt!2172260))))))

(declare-fun b!5323062 () Bool)

(declare-fun res!2257821 () Bool)

(assert (=> b!5323062 (=> res!2257821 e!3306851)))

(assert (=> b!5323062 (= res!2257821 (not (isEmpty!33092 (tail!10508 s!2326))))))

(declare-fun b!5323063 () Bool)

(assert (=> b!5323063 (= e!3306857 (= lt!2172411 call!380145))))

(declare-fun b!5323064 () Bool)

(declare-fun e!3306855 () Bool)

(assert (=> b!5323064 (= e!3306855 (= (head!11411 s!2326) (c!925063 lt!2172260)))))

(declare-fun d!1709758 () Bool)

(assert (=> d!1709758 e!3306857))

(declare-fun c!925287 () Bool)

(assert (=> d!1709758 (= c!925287 ((_ is EmptyExpr!14981) lt!2172260))))

(assert (=> d!1709758 (= lt!2172411 e!3306852)))

(declare-fun c!925288 () Bool)

(assert (=> d!1709758 (= c!925288 (isEmpty!33092 s!2326))))

(assert (=> d!1709758 (validRegex!6717 lt!2172260)))

(assert (=> d!1709758 (= (matchR!7166 lt!2172260 s!2326) lt!2172411)))

(declare-fun b!5323065 () Bool)

(declare-fun res!2257818 () Bool)

(assert (=> b!5323065 (=> (not res!2257818) (not e!3306855))))

(assert (=> b!5323065 (= res!2257818 (isEmpty!33092 (tail!10508 s!2326)))))

(declare-fun b!5323066 () Bool)

(declare-fun res!2257823 () Bool)

(assert (=> b!5323066 (=> res!2257823 e!3306853)))

(assert (=> b!5323066 (= res!2257823 (not ((_ is ElementMatch!14981) lt!2172260)))))

(assert (=> b!5323066 (= e!3306854 e!3306853)))

(declare-fun b!5323067 () Bool)

(declare-fun res!2257819 () Bool)

(assert (=> b!5323067 (=> res!2257819 e!3306853)))

(assert (=> b!5323067 (= res!2257819 e!3306855)))

(declare-fun res!2257822 () Bool)

(assert (=> b!5323067 (=> (not res!2257822) (not e!3306855))))

(assert (=> b!5323067 (= res!2257822 lt!2172411)))

(declare-fun b!5323068 () Bool)

(declare-fun res!2257816 () Bool)

(assert (=> b!5323068 (=> (not res!2257816) (not e!3306855))))

(assert (=> b!5323068 (= res!2257816 (not call!380145))))

(declare-fun b!5323069 () Bool)

(declare-fun derivativeStep!4167 (Regex!14981 C!30232) Regex!14981)

(assert (=> b!5323069 (= e!3306852 (matchR!7166 (derivativeStep!4167 lt!2172260 (head!11411 s!2326)) (tail!10508 s!2326)))))

(assert (= (and d!1709758 c!925288) b!5323060))

(assert (= (and d!1709758 (not c!925288)) b!5323069))

(assert (= (and d!1709758 c!925287) b!5323063))

(assert (= (and d!1709758 (not c!925287)) b!5323058))

(assert (= (and b!5323058 c!925289) b!5323056))

(assert (= (and b!5323058 (not c!925289)) b!5323066))

(assert (= (and b!5323066 (not res!2257823)) b!5323067))

(assert (= (and b!5323067 res!2257822) b!5323068))

(assert (= (and b!5323068 res!2257816) b!5323065))

(assert (= (and b!5323065 res!2257818) b!5323064))

(assert (= (and b!5323067 (not res!2257819)) b!5323057))

(assert (= (and b!5323057 res!2257820) b!5323059))

(assert (= (and b!5323059 (not res!2257817)) b!5323062))

(assert (= (and b!5323062 (not res!2257821)) b!5323061))

(assert (= (or b!5323063 b!5323059 b!5323068) bm!380140))

(declare-fun m!6357714 () Bool)

(assert (=> b!5323064 m!6357714))

(declare-fun m!6357716 () Bool)

(assert (=> bm!380140 m!6357716))

(assert (=> b!5323069 m!6357714))

(assert (=> b!5323069 m!6357714))

(declare-fun m!6357718 () Bool)

(assert (=> b!5323069 m!6357718))

(declare-fun m!6357720 () Bool)

(assert (=> b!5323069 m!6357720))

(assert (=> b!5323069 m!6357718))

(assert (=> b!5323069 m!6357720))

(declare-fun m!6357722 () Bool)

(assert (=> b!5323069 m!6357722))

(assert (=> b!5323065 m!6357720))

(assert (=> b!5323065 m!6357720))

(declare-fun m!6357724 () Bool)

(assert (=> b!5323065 m!6357724))

(assert (=> b!5323061 m!6357714))

(assert (=> d!1709758 m!6357716))

(assert (=> d!1709758 m!6357712))

(assert (=> b!5323062 m!6357720))

(assert (=> b!5323062 m!6357720))

(assert (=> b!5323062 m!6357724))

(declare-fun m!6357726 () Bool)

(assert (=> b!5323060 m!6357726))

(assert (=> b!5322332 d!1709758))

(declare-fun bs!1233663 () Bool)

(declare-fun d!1709760 () Bool)

(assert (= bs!1233663 (and d!1709760 d!1709638)))

(declare-fun lambda!271608 () Int)

(assert (=> bs!1233663 (= lambda!271608 lambda!271573)))

(declare-fun bs!1233664 () Bool)

(assert (= bs!1233664 (and d!1709760 b!5322332)))

(assert (=> bs!1233664 (= lambda!271608 lambda!271527)))

(declare-fun bs!1233665 () Bool)

(assert (= bs!1233665 (and d!1709760 d!1709634)))

(assert (=> bs!1233665 (= lambda!271608 lambda!271553)))

(declare-fun bs!1233666 () Bool)

(assert (= bs!1233666 (and d!1709760 d!1709624)))

(assert (=> bs!1233666 (= lambda!271608 lambda!271545)))

(declare-fun bs!1233667 () Bool)

(assert (= bs!1233667 (and d!1709760 d!1709754)))

(assert (=> bs!1233667 (= lambda!271608 lambda!271607)))

(declare-fun b!5323070 () Bool)

(declare-fun e!3306859 () Regex!14981)

(assert (=> b!5323070 (= e!3306859 EmptyExpr!14981)))

(declare-fun b!5323071 () Bool)

(declare-fun e!3306862 () Regex!14981)

(assert (=> b!5323071 (= e!3306862 e!3306859)))

(declare-fun c!925293 () Bool)

(assert (=> b!5323071 (= c!925293 ((_ is Cons!61118) lt!2172257))))

(declare-fun e!3306861 () Bool)

(assert (=> d!1709760 e!3306861))

(declare-fun res!2257825 () Bool)

(assert (=> d!1709760 (=> (not res!2257825) (not e!3306861))))

(declare-fun lt!2172412 () Regex!14981)

(assert (=> d!1709760 (= res!2257825 (validRegex!6717 lt!2172412))))

(assert (=> d!1709760 (= lt!2172412 e!3306862)))

(declare-fun c!925292 () Bool)

(declare-fun e!3306858 () Bool)

(assert (=> d!1709760 (= c!925292 e!3306858)))

(declare-fun res!2257824 () Bool)

(assert (=> d!1709760 (=> (not res!2257824) (not e!3306858))))

(assert (=> d!1709760 (= res!2257824 ((_ is Cons!61118) lt!2172257))))

(assert (=> d!1709760 (forall!14399 lt!2172257 lambda!271608)))

(assert (=> d!1709760 (= (generalisedConcat!650 lt!2172257) lt!2172412)))

(declare-fun b!5323072 () Bool)

(assert (=> b!5323072 (= e!3306858 (isEmpty!33088 (t!374455 lt!2172257)))))

(declare-fun b!5323073 () Bool)

(declare-fun e!3306860 () Bool)

(assert (=> b!5323073 (= e!3306861 e!3306860)))

(declare-fun c!925290 () Bool)

(assert (=> b!5323073 (= c!925290 (isEmpty!33088 lt!2172257))))

(declare-fun b!5323074 () Bool)

(declare-fun e!3306863 () Bool)

(assert (=> b!5323074 (= e!3306863 (isConcat!404 lt!2172412))))

(declare-fun b!5323075 () Bool)

(assert (=> b!5323075 (= e!3306860 (isEmptyExpr!881 lt!2172412))))

(declare-fun b!5323076 () Bool)

(assert (=> b!5323076 (= e!3306860 e!3306863)))

(declare-fun c!925291 () Bool)

(assert (=> b!5323076 (= c!925291 (isEmpty!33088 (tail!10507 lt!2172257)))))

(declare-fun b!5323077 () Bool)

(assert (=> b!5323077 (= e!3306862 (h!67566 lt!2172257))))

(declare-fun b!5323078 () Bool)

(assert (=> b!5323078 (= e!3306859 (Concat!23826 (h!67566 lt!2172257) (generalisedConcat!650 (t!374455 lt!2172257))))))

(declare-fun b!5323079 () Bool)

(assert (=> b!5323079 (= e!3306863 (= lt!2172412 (head!11410 lt!2172257)))))

(assert (= (and d!1709760 res!2257824) b!5323072))

(assert (= (and d!1709760 c!925292) b!5323077))

(assert (= (and d!1709760 (not c!925292)) b!5323071))

(assert (= (and b!5323071 c!925293) b!5323078))

(assert (= (and b!5323071 (not c!925293)) b!5323070))

(assert (= (and d!1709760 res!2257825) b!5323073))

(assert (= (and b!5323073 c!925290) b!5323075))

(assert (= (and b!5323073 (not c!925290)) b!5323076))

(assert (= (and b!5323076 c!925291) b!5323079))

(assert (= (and b!5323076 (not c!925291)) b!5323074))

(declare-fun m!6357728 () Bool)

(assert (=> b!5323078 m!6357728))

(declare-fun m!6357730 () Bool)

(assert (=> b!5323074 m!6357730))

(declare-fun m!6357732 () Bool)

(assert (=> b!5323075 m!6357732))

(declare-fun m!6357734 () Bool)

(assert (=> d!1709760 m!6357734))

(declare-fun m!6357736 () Bool)

(assert (=> d!1709760 m!6357736))

(declare-fun m!6357738 () Bool)

(assert (=> b!5323073 m!6357738))

(declare-fun m!6357740 () Bool)

(assert (=> b!5323072 m!6357740))

(declare-fun m!6357742 () Bool)

(assert (=> b!5323079 m!6357742))

(declare-fun m!6357744 () Bool)

(assert (=> b!5323076 m!6357744))

(assert (=> b!5323076 m!6357744))

(declare-fun m!6357746 () Bool)

(assert (=> b!5323076 m!6357746))

(assert (=> b!5322332 d!1709760))

(declare-fun d!1709762 () Bool)

(declare-fun res!2257830 () Bool)

(declare-fun e!3306868 () Bool)

(assert (=> d!1709762 (=> res!2257830 e!3306868)))

(assert (=> d!1709762 (= res!2257830 ((_ is Nil!61118) lt!2172257))))

(assert (=> d!1709762 (= (forall!14399 lt!2172257 lambda!271527) e!3306868)))

(declare-fun b!5323084 () Bool)

(declare-fun e!3306869 () Bool)

(assert (=> b!5323084 (= e!3306868 e!3306869)))

(declare-fun res!2257831 () Bool)

(assert (=> b!5323084 (=> (not res!2257831) (not e!3306869))))

(declare-fun dynLambda!24165 (Int Regex!14981) Bool)

(assert (=> b!5323084 (= res!2257831 (dynLambda!24165 lambda!271527 (h!67566 lt!2172257)))))

(declare-fun b!5323085 () Bool)

(assert (=> b!5323085 (= e!3306869 (forall!14399 (t!374455 lt!2172257) lambda!271527))))

(assert (= (and d!1709762 (not res!2257830)) b!5323084))

(assert (= (and b!5323084 res!2257831) b!5323085))

(declare-fun b_lambda!204773 () Bool)

(assert (=> (not b_lambda!204773) (not b!5323084)))

(declare-fun m!6357748 () Bool)

(assert (=> b!5323084 m!6357748))

(declare-fun m!6357750 () Bool)

(assert (=> b!5323085 m!6357750))

(assert (=> b!5322332 d!1709762))

(declare-fun d!1709764 () Bool)

(declare-fun c!925294 () Bool)

(assert (=> d!1709764 (= c!925294 (isEmpty!33092 s!2326))))

(declare-fun e!3306870 () Bool)

(assert (=> d!1709764 (= (matchZipper!1225 lt!2172271 s!2326) e!3306870)))

(declare-fun b!5323086 () Bool)

(assert (=> b!5323086 (= e!3306870 (nullableZipper!1346 lt!2172271))))

(declare-fun b!5323087 () Bool)

(assert (=> b!5323087 (= e!3306870 (matchZipper!1225 (derivationStepZipper!1222 lt!2172271 (head!11411 s!2326)) (tail!10508 s!2326)))))

(assert (= (and d!1709764 c!925294) b!5323086))

(assert (= (and d!1709764 (not c!925294)) b!5323087))

(assert (=> d!1709764 m!6357716))

(declare-fun m!6357752 () Bool)

(assert (=> b!5323086 m!6357752))

(assert (=> b!5323087 m!6357714))

(assert (=> b!5323087 m!6357714))

(declare-fun m!6357754 () Bool)

(assert (=> b!5323087 m!6357754))

(assert (=> b!5323087 m!6357720))

(assert (=> b!5323087 m!6357754))

(assert (=> b!5323087 m!6357720))

(declare-fun m!6357756 () Bool)

(assert (=> b!5323087 m!6357756))

(assert (=> b!5322332 d!1709764))

(declare-fun bs!1233668 () Bool)

(declare-fun b!5323126 () Bool)

(assert (= bs!1233668 (and b!5323126 d!1709728)))

(declare-fun lambda!271613 () Int)

(assert (=> bs!1233668 (not (= lambda!271613 lambda!271589))))

(declare-fun bs!1233669 () Bool)

(assert (= bs!1233669 (and b!5323126 d!1709732)))

(assert (=> bs!1233669 (not (= lambda!271613 lambda!271592))))

(declare-fun bs!1233670 () Bool)

(assert (= bs!1233670 (and b!5323126 b!5322330)))

(assert (=> bs!1233670 (not (= lambda!271613 lambda!271524))))

(assert (=> bs!1233670 (not (= lambda!271613 lambda!271525))))

(assert (=> bs!1233668 (not (= lambda!271613 lambda!271588))))

(assert (=> b!5323126 true))

(assert (=> b!5323126 true))

(declare-fun bs!1233671 () Bool)

(declare-fun b!5323130 () Bool)

(assert (= bs!1233671 (and b!5323130 d!1709728)))

(declare-fun lambda!271614 () Int)

(assert (=> bs!1233671 (= lambda!271614 lambda!271589)))

(declare-fun bs!1233672 () Bool)

(assert (= bs!1233672 (and b!5323130 b!5323126)))

(assert (=> bs!1233672 (not (= lambda!271614 lambda!271613))))

(declare-fun bs!1233673 () Bool)

(assert (= bs!1233673 (and b!5323130 d!1709732)))

(assert (=> bs!1233673 (not (= lambda!271614 lambda!271592))))

(declare-fun bs!1233674 () Bool)

(assert (= bs!1233674 (and b!5323130 b!5322330)))

(assert (=> bs!1233674 (not (= lambda!271614 lambda!271524))))

(assert (=> bs!1233674 (= lambda!271614 lambda!271525)))

(assert (=> bs!1233671 (not (= lambda!271614 lambda!271588))))

(assert (=> b!5323130 true))

(assert (=> b!5323130 true))

(declare-fun b!5323120 () Bool)

(declare-fun e!3306894 () Bool)

(declare-fun e!3306892 () Bool)

(assert (=> b!5323120 (= e!3306894 e!3306892)))

(declare-fun c!925306 () Bool)

(assert (=> b!5323120 (= c!925306 ((_ is Star!14981) r!7292))))

(declare-fun b!5323121 () Bool)

(declare-fun c!925303 () Bool)

(assert (=> b!5323121 (= c!925303 ((_ is Union!14981) r!7292))))

(declare-fun e!3306893 () Bool)

(assert (=> b!5323121 (= e!3306893 e!3306894)))

(declare-fun b!5323122 () Bool)

(declare-fun e!3306895 () Bool)

(assert (=> b!5323122 (= e!3306895 (matchRSpec!2084 (regTwo!30475 r!7292) s!2326))))

(declare-fun b!5323123 () Bool)

(declare-fun e!3306891 () Bool)

(declare-fun e!3306889 () Bool)

(assert (=> b!5323123 (= e!3306891 e!3306889)))

(declare-fun res!2257850 () Bool)

(assert (=> b!5323123 (= res!2257850 (not ((_ is EmptyLang!14981) r!7292)))))

(assert (=> b!5323123 (=> (not res!2257850) (not e!3306889))))

(declare-fun b!5323124 () Bool)

(declare-fun res!2257849 () Bool)

(declare-fun e!3306890 () Bool)

(assert (=> b!5323124 (=> res!2257849 e!3306890)))

(declare-fun call!380151 () Bool)

(assert (=> b!5323124 (= res!2257849 call!380151)))

(assert (=> b!5323124 (= e!3306892 e!3306890)))

(declare-fun bm!380145 () Bool)

(declare-fun call!380150 () Bool)

(assert (=> bm!380145 (= call!380150 (Exists!2162 (ite c!925306 lambda!271613 lambda!271614)))))

(declare-fun bm!380146 () Bool)

(assert (=> bm!380146 (= call!380151 (isEmpty!33092 s!2326))))

(declare-fun b!5323125 () Bool)

(declare-fun c!925304 () Bool)

(assert (=> b!5323125 (= c!925304 ((_ is ElementMatch!14981) r!7292))))

(assert (=> b!5323125 (= e!3306889 e!3306893)))

(assert (=> b!5323126 (= e!3306890 call!380150)))

(declare-fun d!1709766 () Bool)

(declare-fun c!925305 () Bool)

(assert (=> d!1709766 (= c!925305 ((_ is EmptyExpr!14981) r!7292))))

(assert (=> d!1709766 (= (matchRSpec!2084 r!7292 s!2326) e!3306891)))

(declare-fun b!5323127 () Bool)

(assert (=> b!5323127 (= e!3306894 e!3306895)))

(declare-fun res!2257848 () Bool)

(assert (=> b!5323127 (= res!2257848 (matchRSpec!2084 (regOne!30475 r!7292) s!2326))))

(assert (=> b!5323127 (=> res!2257848 e!3306895)))

(declare-fun b!5323128 () Bool)

(assert (=> b!5323128 (= e!3306891 call!380151)))

(declare-fun b!5323129 () Bool)

(assert (=> b!5323129 (= e!3306893 (= s!2326 (Cons!61120 (c!925063 r!7292) Nil!61120)))))

(assert (=> b!5323130 (= e!3306892 call!380150)))

(assert (= (and d!1709766 c!925305) b!5323128))

(assert (= (and d!1709766 (not c!925305)) b!5323123))

(assert (= (and b!5323123 res!2257850) b!5323125))

(assert (= (and b!5323125 c!925304) b!5323129))

(assert (= (and b!5323125 (not c!925304)) b!5323121))

(assert (= (and b!5323121 c!925303) b!5323127))

(assert (= (and b!5323121 (not c!925303)) b!5323120))

(assert (= (and b!5323127 (not res!2257848)) b!5323122))

(assert (= (and b!5323120 c!925306) b!5323124))

(assert (= (and b!5323120 (not c!925306)) b!5323130))

(assert (= (and b!5323124 (not res!2257849)) b!5323126))

(assert (= (or b!5323126 b!5323130) bm!380145))

(assert (= (or b!5323128 b!5323124) bm!380146))

(declare-fun m!6357758 () Bool)

(assert (=> b!5323122 m!6357758))

(declare-fun m!6357760 () Bool)

(assert (=> bm!380145 m!6357760))

(assert (=> bm!380146 m!6357716))

(declare-fun m!6357762 () Bool)

(assert (=> b!5323127 m!6357762))

(assert (=> b!5322325 d!1709766))

(declare-fun b!5323131 () Bool)

(declare-fun e!3306899 () Bool)

(declare-fun lt!2172413 () Bool)

(assert (=> b!5323131 (= e!3306899 (not lt!2172413))))

(declare-fun b!5323132 () Bool)

(declare-fun e!3306898 () Bool)

(declare-fun e!3306901 () Bool)

(assert (=> b!5323132 (= e!3306898 e!3306901)))

(declare-fun res!2257855 () Bool)

(assert (=> b!5323132 (=> (not res!2257855) (not e!3306901))))

(assert (=> b!5323132 (= res!2257855 (not lt!2172413))))

(declare-fun b!5323133 () Bool)

(declare-fun e!3306902 () Bool)

(assert (=> b!5323133 (= e!3306902 e!3306899)))

(declare-fun c!925309 () Bool)

(assert (=> b!5323133 (= c!925309 ((_ is EmptyLang!14981) r!7292))))

(declare-fun b!5323134 () Bool)

(declare-fun e!3306896 () Bool)

(assert (=> b!5323134 (= e!3306901 e!3306896)))

(declare-fun res!2257852 () Bool)

(assert (=> b!5323134 (=> res!2257852 e!3306896)))

(declare-fun call!380152 () Bool)

(assert (=> b!5323134 (= res!2257852 call!380152)))

(declare-fun bm!380147 () Bool)

(assert (=> bm!380147 (= call!380152 (isEmpty!33092 s!2326))))

(declare-fun b!5323135 () Bool)

(declare-fun e!3306897 () Bool)

(assert (=> b!5323135 (= e!3306897 (nullable!5150 r!7292))))

(declare-fun b!5323136 () Bool)

(assert (=> b!5323136 (= e!3306896 (not (= (head!11411 s!2326) (c!925063 r!7292))))))

(declare-fun b!5323137 () Bool)

(declare-fun res!2257856 () Bool)

(assert (=> b!5323137 (=> res!2257856 e!3306896)))

(assert (=> b!5323137 (= res!2257856 (not (isEmpty!33092 (tail!10508 s!2326))))))

(declare-fun b!5323138 () Bool)

(assert (=> b!5323138 (= e!3306902 (= lt!2172413 call!380152))))

(declare-fun b!5323139 () Bool)

(declare-fun e!3306900 () Bool)

(assert (=> b!5323139 (= e!3306900 (= (head!11411 s!2326) (c!925063 r!7292)))))

(declare-fun d!1709768 () Bool)

(assert (=> d!1709768 e!3306902))

(declare-fun c!925307 () Bool)

(assert (=> d!1709768 (= c!925307 ((_ is EmptyExpr!14981) r!7292))))

(assert (=> d!1709768 (= lt!2172413 e!3306897)))

(declare-fun c!925308 () Bool)

(assert (=> d!1709768 (= c!925308 (isEmpty!33092 s!2326))))

(assert (=> d!1709768 (validRegex!6717 r!7292)))

(assert (=> d!1709768 (= (matchR!7166 r!7292 s!2326) lt!2172413)))

(declare-fun b!5323140 () Bool)

(declare-fun res!2257853 () Bool)

(assert (=> b!5323140 (=> (not res!2257853) (not e!3306900))))

(assert (=> b!5323140 (= res!2257853 (isEmpty!33092 (tail!10508 s!2326)))))

(declare-fun b!5323141 () Bool)

(declare-fun res!2257858 () Bool)

(assert (=> b!5323141 (=> res!2257858 e!3306898)))

(assert (=> b!5323141 (= res!2257858 (not ((_ is ElementMatch!14981) r!7292)))))

(assert (=> b!5323141 (= e!3306899 e!3306898)))

(declare-fun b!5323142 () Bool)

(declare-fun res!2257854 () Bool)

(assert (=> b!5323142 (=> res!2257854 e!3306898)))

(assert (=> b!5323142 (= res!2257854 e!3306900)))

(declare-fun res!2257857 () Bool)

(assert (=> b!5323142 (=> (not res!2257857) (not e!3306900))))

(assert (=> b!5323142 (= res!2257857 lt!2172413)))

(declare-fun b!5323143 () Bool)

(declare-fun res!2257851 () Bool)

(assert (=> b!5323143 (=> (not res!2257851) (not e!3306900))))

(assert (=> b!5323143 (= res!2257851 (not call!380152))))

(declare-fun b!5323144 () Bool)

(assert (=> b!5323144 (= e!3306897 (matchR!7166 (derivativeStep!4167 r!7292 (head!11411 s!2326)) (tail!10508 s!2326)))))

(assert (= (and d!1709768 c!925308) b!5323135))

(assert (= (and d!1709768 (not c!925308)) b!5323144))

(assert (= (and d!1709768 c!925307) b!5323138))

(assert (= (and d!1709768 (not c!925307)) b!5323133))

(assert (= (and b!5323133 c!925309) b!5323131))

(assert (= (and b!5323133 (not c!925309)) b!5323141))

(assert (= (and b!5323141 (not res!2257858)) b!5323142))

(assert (= (and b!5323142 res!2257857) b!5323143))

(assert (= (and b!5323143 res!2257851) b!5323140))

(assert (= (and b!5323140 res!2257853) b!5323139))

(assert (= (and b!5323142 (not res!2257854)) b!5323132))

(assert (= (and b!5323132 res!2257855) b!5323134))

(assert (= (and b!5323134 (not res!2257852)) b!5323137))

(assert (= (and b!5323137 (not res!2257856)) b!5323136))

(assert (= (or b!5323138 b!5323134 b!5323143) bm!380147))

(assert (=> b!5323139 m!6357714))

(assert (=> bm!380147 m!6357716))

(assert (=> b!5323144 m!6357714))

(assert (=> b!5323144 m!6357714))

(declare-fun m!6357764 () Bool)

(assert (=> b!5323144 m!6357764))

(assert (=> b!5323144 m!6357720))

(assert (=> b!5323144 m!6357764))

(assert (=> b!5323144 m!6357720))

(declare-fun m!6357766 () Bool)

(assert (=> b!5323144 m!6357766))

(assert (=> b!5323140 m!6357720))

(assert (=> b!5323140 m!6357720))

(assert (=> b!5323140 m!6357724))

(assert (=> b!5323136 m!6357714))

(assert (=> d!1709768 m!6357716))

(assert (=> d!1709768 m!6357138))

(assert (=> b!5323137 m!6357720))

(assert (=> b!5323137 m!6357720))

(assert (=> b!5323137 m!6357724))

(declare-fun m!6357768 () Bool)

(assert (=> b!5323135 m!6357768))

(assert (=> b!5322325 d!1709768))

(declare-fun d!1709770 () Bool)

(assert (=> d!1709770 (= (matchR!7166 r!7292 s!2326) (matchRSpec!2084 r!7292 s!2326))))

(declare-fun lt!2172416 () Unit!153442)

(declare-fun choose!39849 (Regex!14981 List!61244) Unit!153442)

(assert (=> d!1709770 (= lt!2172416 (choose!39849 r!7292 s!2326))))

(assert (=> d!1709770 (validRegex!6717 r!7292)))

(assert (=> d!1709770 (= (mainMatchTheorem!2084 r!7292 s!2326) lt!2172416)))

(declare-fun bs!1233675 () Bool)

(assert (= bs!1233675 d!1709770))

(assert (=> bs!1233675 m!6357184))

(assert (=> bs!1233675 m!6357182))

(declare-fun m!6357770 () Bool)

(assert (=> bs!1233675 m!6357770))

(assert (=> bs!1233675 m!6357138))

(assert (=> b!5322325 d!1709770))

(declare-fun d!1709772 () Bool)

(declare-fun lt!2172419 () Int)

(assert (=> d!1709772 (>= lt!2172419 0)))

(declare-fun e!3306905 () Int)

(assert (=> d!1709772 (= lt!2172419 e!3306905)))

(declare-fun c!925312 () Bool)

(assert (=> d!1709772 (= c!925312 ((_ is Cons!61119) lt!2172276))))

(assert (=> d!1709772 (= (zipperDepthTotal!134 lt!2172276) lt!2172419)))

(declare-fun b!5323149 () Bool)

(assert (=> b!5323149 (= e!3306905 (+ (contextDepthTotal!114 (h!67567 lt!2172276)) (zipperDepthTotal!134 (t!374456 lt!2172276))))))

(declare-fun b!5323150 () Bool)

(assert (=> b!5323150 (= e!3306905 0)))

(assert (= (and d!1709772 c!925312) b!5323149))

(assert (= (and d!1709772 (not c!925312)) b!5323150))

(declare-fun m!6357772 () Bool)

(assert (=> b!5323149 m!6357772))

(declare-fun m!6357774 () Bool)

(assert (=> b!5323149 m!6357774))

(assert (=> b!5322355 d!1709772))

(declare-fun d!1709774 () Bool)

(declare-fun lt!2172420 () Int)

(assert (=> d!1709774 (>= lt!2172420 0)))

(declare-fun e!3306906 () Int)

(assert (=> d!1709774 (= lt!2172420 e!3306906)))

(declare-fun c!925313 () Bool)

(assert (=> d!1709774 (= c!925313 ((_ is Cons!61119) zl!343))))

(assert (=> d!1709774 (= (zipperDepthTotal!134 zl!343) lt!2172420)))

(declare-fun b!5323151 () Bool)

(assert (=> b!5323151 (= e!3306906 (+ (contextDepthTotal!114 (h!67567 zl!343)) (zipperDepthTotal!134 (t!374456 zl!343))))))

(declare-fun b!5323152 () Bool)

(assert (=> b!5323152 (= e!3306906 0)))

(assert (= (and d!1709774 c!925313) b!5323151))

(assert (= (and d!1709774 (not c!925313)) b!5323152))

(assert (=> b!5323151 m!6357142))

(declare-fun m!6357776 () Bool)

(assert (=> b!5323151 m!6357776))

(assert (=> b!5322355 d!1709774))

(declare-fun d!1709776 () Bool)

(declare-fun c!925314 () Bool)

(assert (=> d!1709776 (= c!925314 (isEmpty!33092 (t!374457 s!2326)))))

(declare-fun e!3306907 () Bool)

(assert (=> d!1709776 (= (matchZipper!1225 lt!2172261 (t!374457 s!2326)) e!3306907)))

(declare-fun b!5323153 () Bool)

(assert (=> b!5323153 (= e!3306907 (nullableZipper!1346 lt!2172261))))

(declare-fun b!5323154 () Bool)

(assert (=> b!5323154 (= e!3306907 (matchZipper!1225 (derivationStepZipper!1222 lt!2172261 (head!11411 (t!374457 s!2326))) (tail!10508 (t!374457 s!2326))))))

(assert (= (and d!1709776 c!925314) b!5323153))

(assert (= (and d!1709776 (not c!925314)) b!5323154))

(assert (=> d!1709776 m!6357652))

(declare-fun m!6357778 () Bool)

(assert (=> b!5323153 m!6357778))

(assert (=> b!5323154 m!6357656))

(assert (=> b!5323154 m!6357656))

(declare-fun m!6357780 () Bool)

(assert (=> b!5323154 m!6357780))

(assert (=> b!5323154 m!6357660))

(assert (=> b!5323154 m!6357780))

(assert (=> b!5323154 m!6357660))

(declare-fun m!6357782 () Bool)

(assert (=> b!5323154 m!6357782))

(assert (=> b!5322336 d!1709776))

(declare-fun d!1709778 () Bool)

(assert (=> d!1709778 (= (nullable!5150 (regOne!30474 (regOne!30474 r!7292))) (nullableFct!1498 (regOne!30474 (regOne!30474 r!7292))))))

(declare-fun bs!1233676 () Bool)

(assert (= bs!1233676 d!1709778))

(declare-fun m!6357784 () Bool)

(assert (=> bs!1233676 m!6357784))

(assert (=> b!5322345 d!1709778))

(declare-fun bs!1233677 () Bool)

(declare-fun d!1709780 () Bool)

(assert (= bs!1233677 (and d!1709780 d!1709638)))

(declare-fun lambda!271615 () Int)

(assert (=> bs!1233677 (= lambda!271615 lambda!271573)))

(declare-fun bs!1233678 () Bool)

(assert (= bs!1233678 (and d!1709780 b!5322332)))

(assert (=> bs!1233678 (= lambda!271615 lambda!271527)))

(declare-fun bs!1233679 () Bool)

(assert (= bs!1233679 (and d!1709780 d!1709634)))

(assert (=> bs!1233679 (= lambda!271615 lambda!271553)))

(declare-fun bs!1233680 () Bool)

(assert (= bs!1233680 (and d!1709780 d!1709760)))

(assert (=> bs!1233680 (= lambda!271615 lambda!271608)))

(declare-fun bs!1233681 () Bool)

(assert (= bs!1233681 (and d!1709780 d!1709624)))

(assert (=> bs!1233681 (= lambda!271615 lambda!271545)))

(declare-fun bs!1233682 () Bool)

(assert (= bs!1233682 (and d!1709780 d!1709754)))

(assert (=> bs!1233682 (= lambda!271615 lambda!271607)))

(assert (=> d!1709780 (= (inv!80699 (h!67567 zl!343)) (forall!14399 (exprs!4865 (h!67567 zl!343)) lambda!271615))))

(declare-fun bs!1233683 () Bool)

(assert (= bs!1233683 d!1709780))

(declare-fun m!6357786 () Bool)

(assert (=> bs!1233683 m!6357786))

(assert (=> b!5322344 d!1709780))

(declare-fun b!5323155 () Bool)

(declare-fun c!925319 () Bool)

(assert (=> b!5323155 (= c!925319 ((_ is Star!14981) (regOne!30474 (regOne!30474 r!7292))))))

(declare-fun e!3306908 () (InoxSet Context!8730))

(declare-fun e!3306911 () (InoxSet Context!8730))

(assert (=> b!5323155 (= e!3306908 e!3306911)))

(declare-fun b!5323156 () Bool)

(declare-fun e!3306912 () (InoxSet Context!8730))

(declare-fun e!3306910 () (InoxSet Context!8730))

(assert (=> b!5323156 (= e!3306912 e!3306910)))

(declare-fun c!925315 () Bool)

(assert (=> b!5323156 (= c!925315 ((_ is Union!14981) (regOne!30474 (regOne!30474 r!7292))))))

(declare-fun b!5323157 () Bool)

(declare-fun call!380158 () (InoxSet Context!8730))

(assert (=> b!5323157 (= e!3306908 call!380158)))

(declare-fun b!5323158 () Bool)

(declare-fun e!3306909 () (InoxSet Context!8730))

(assert (=> b!5323158 (= e!3306909 e!3306908)))

(declare-fun c!925317 () Bool)

(assert (=> b!5323158 (= c!925317 ((_ is Concat!23826) (regOne!30474 (regOne!30474 r!7292))))))

(declare-fun b!5323159 () Bool)

(assert (=> b!5323159 (= e!3306912 (store ((as const (Array Context!8730 Bool)) false) (Context!8731 lt!2172265) true))))

(declare-fun call!380153 () List!61242)

(declare-fun bm!380148 () Bool)

(declare-fun c!925318 () Bool)

(assert (=> bm!380148 (= call!380153 ($colon$colon!1396 (exprs!4865 (Context!8731 lt!2172265)) (ite (or c!925318 c!925317) (regTwo!30474 (regOne!30474 (regOne!30474 r!7292))) (regOne!30474 (regOne!30474 r!7292)))))))

(declare-fun b!5323160 () Bool)

(assert (=> b!5323160 (= e!3306911 call!380158)))

(declare-fun b!5323161 () Bool)

(declare-fun e!3306913 () Bool)

(assert (=> b!5323161 (= c!925318 e!3306913)))

(declare-fun res!2257859 () Bool)

(assert (=> b!5323161 (=> (not res!2257859) (not e!3306913))))

(assert (=> b!5323161 (= res!2257859 ((_ is Concat!23826) (regOne!30474 (regOne!30474 r!7292))))))

(assert (=> b!5323161 (= e!3306910 e!3306909)))

(declare-fun b!5323162 () Bool)

(assert (=> b!5323162 (= e!3306911 ((as const (Array Context!8730 Bool)) false))))

(declare-fun b!5323163 () Bool)

(declare-fun call!380154 () (InoxSet Context!8730))

(declare-fun call!380157 () (InoxSet Context!8730))

(assert (=> b!5323163 (= e!3306909 ((_ map or) call!380154 call!380157))))

(declare-fun bm!380149 () Bool)

(assert (=> bm!380149 (= call!380158 call!380157)))

(declare-fun b!5323164 () Bool)

(declare-fun call!380156 () (InoxSet Context!8730))

(assert (=> b!5323164 (= e!3306910 ((_ map or) call!380156 call!380154))))

(declare-fun bm!380150 () Bool)

(assert (=> bm!380150 (= call!380157 call!380156)))

(declare-fun b!5323165 () Bool)

(assert (=> b!5323165 (= e!3306913 (nullable!5150 (regOne!30474 (regOne!30474 (regOne!30474 r!7292)))))))

(declare-fun bm!380151 () Bool)

(declare-fun call!380155 () List!61242)

(assert (=> bm!380151 (= call!380155 call!380153)))

(declare-fun bm!380152 () Bool)

(assert (=> bm!380152 (= call!380154 (derivationStepZipperDown!429 (ite c!925315 (regTwo!30475 (regOne!30474 (regOne!30474 r!7292))) (regOne!30474 (regOne!30474 (regOne!30474 r!7292)))) (ite c!925315 (Context!8731 lt!2172265) (Context!8731 call!380153)) (h!67568 s!2326)))))

(declare-fun bm!380153 () Bool)

(assert (=> bm!380153 (= call!380156 (derivationStepZipperDown!429 (ite c!925315 (regOne!30475 (regOne!30474 (regOne!30474 r!7292))) (ite c!925318 (regTwo!30474 (regOne!30474 (regOne!30474 r!7292))) (ite c!925317 (regOne!30474 (regOne!30474 (regOne!30474 r!7292))) (reg!15310 (regOne!30474 (regOne!30474 r!7292)))))) (ite (or c!925315 c!925318) (Context!8731 lt!2172265) (Context!8731 call!380155)) (h!67568 s!2326)))))

(declare-fun d!1709782 () Bool)

(declare-fun c!925316 () Bool)

(assert (=> d!1709782 (= c!925316 (and ((_ is ElementMatch!14981) (regOne!30474 (regOne!30474 r!7292))) (= (c!925063 (regOne!30474 (regOne!30474 r!7292))) (h!67568 s!2326))))))

(assert (=> d!1709782 (= (derivationStepZipperDown!429 (regOne!30474 (regOne!30474 r!7292)) (Context!8731 lt!2172265) (h!67568 s!2326)) e!3306912)))

(assert (= (and d!1709782 c!925316) b!5323159))

(assert (= (and d!1709782 (not c!925316)) b!5323156))

(assert (= (and b!5323156 c!925315) b!5323164))

(assert (= (and b!5323156 (not c!925315)) b!5323161))

(assert (= (and b!5323161 res!2257859) b!5323165))

(assert (= (and b!5323161 c!925318) b!5323163))

(assert (= (and b!5323161 (not c!925318)) b!5323158))

(assert (= (and b!5323158 c!925317) b!5323157))

(assert (= (and b!5323158 (not c!925317)) b!5323155))

(assert (= (and b!5323155 c!925319) b!5323160))

(assert (= (and b!5323155 (not c!925319)) b!5323162))

(assert (= (or b!5323157 b!5323160) bm!380151))

(assert (= (or b!5323157 b!5323160) bm!380149))

(assert (= (or b!5323163 bm!380151) bm!380148))

(assert (= (or b!5323163 bm!380149) bm!380150))

(assert (= (or b!5323164 b!5323163) bm!380152))

(assert (= (or b!5323164 bm!380150) bm!380153))

(declare-fun m!6357788 () Bool)

(assert (=> b!5323165 m!6357788))

(declare-fun m!6357790 () Bool)

(assert (=> bm!380152 m!6357790))

(declare-fun m!6357792 () Bool)

(assert (=> b!5323159 m!6357792))

(declare-fun m!6357794 () Bool)

(assert (=> bm!380148 m!6357794))

(declare-fun m!6357796 () Bool)

(assert (=> bm!380153 m!6357796))

(assert (=> b!5322354 d!1709782))

(declare-fun b!5323170 () Bool)

(declare-fun e!3306916 () Bool)

(declare-fun tp!1482102 () Bool)

(assert (=> b!5323170 (= e!3306916 (and tp_is_empty!39215 tp!1482102))))

(assert (=> b!5322334 (= tp!1482032 e!3306916)))

(assert (= (and b!5322334 ((_ is Cons!61120) (t!374457 s!2326))) b!5323170))

(declare-fun b!5323175 () Bool)

(declare-fun e!3306919 () Bool)

(declare-fun tp!1482107 () Bool)

(declare-fun tp!1482108 () Bool)

(assert (=> b!5323175 (= e!3306919 (and tp!1482107 tp!1482108))))

(assert (=> b!5322328 (= tp!1482040 e!3306919)))

(assert (= (and b!5322328 ((_ is Cons!61118) (exprs!4865 setElem!34271))) b!5323175))

(declare-fun b!5323186 () Bool)

(declare-fun e!3306922 () Bool)

(assert (=> b!5323186 (= e!3306922 tp_is_empty!39215)))

(declare-fun b!5323188 () Bool)

(declare-fun tp!1482119 () Bool)

(assert (=> b!5323188 (= e!3306922 tp!1482119)))

(declare-fun b!5323189 () Bool)

(declare-fun tp!1482121 () Bool)

(declare-fun tp!1482120 () Bool)

(assert (=> b!5323189 (= e!3306922 (and tp!1482121 tp!1482120))))

(assert (=> b!5322337 (= tp!1482039 e!3306922)))

(declare-fun b!5323187 () Bool)

(declare-fun tp!1482122 () Bool)

(declare-fun tp!1482123 () Bool)

(assert (=> b!5323187 (= e!3306922 (and tp!1482122 tp!1482123))))

(assert (= (and b!5322337 ((_ is ElementMatch!14981) (reg!15310 r!7292))) b!5323186))

(assert (= (and b!5322337 ((_ is Concat!23826) (reg!15310 r!7292))) b!5323187))

(assert (= (and b!5322337 ((_ is Star!14981) (reg!15310 r!7292))) b!5323188))

(assert (= (and b!5322337 ((_ is Union!14981) (reg!15310 r!7292))) b!5323189))

(declare-fun condSetEmpty!34277 () Bool)

(assert (=> setNonEmpty!34271 (= condSetEmpty!34277 (= setRest!34271 ((as const (Array Context!8730 Bool)) false)))))

(declare-fun setRes!34277 () Bool)

(assert (=> setNonEmpty!34271 (= tp!1482037 setRes!34277)))

(declare-fun setIsEmpty!34277 () Bool)

(assert (=> setIsEmpty!34277 setRes!34277))

(declare-fun setNonEmpty!34277 () Bool)

(declare-fun setElem!34277 () Context!8730)

(declare-fun tp!1482128 () Bool)

(declare-fun e!3306925 () Bool)

(assert (=> setNonEmpty!34277 (= setRes!34277 (and tp!1482128 (inv!80699 setElem!34277) e!3306925))))

(declare-fun setRest!34277 () (InoxSet Context!8730))

(assert (=> setNonEmpty!34277 (= setRest!34271 ((_ map or) (store ((as const (Array Context!8730 Bool)) false) setElem!34277 true) setRest!34277))))

(declare-fun b!5323194 () Bool)

(declare-fun tp!1482129 () Bool)

(assert (=> b!5323194 (= e!3306925 tp!1482129)))

(assert (= (and setNonEmpty!34271 condSetEmpty!34277) setIsEmpty!34277))

(assert (= (and setNonEmpty!34271 (not condSetEmpty!34277)) setNonEmpty!34277))

(assert (= setNonEmpty!34277 b!5323194))

(declare-fun m!6357798 () Bool)

(assert (=> setNonEmpty!34277 m!6357798))

(declare-fun b!5323195 () Bool)

(declare-fun e!3306926 () Bool)

(assert (=> b!5323195 (= e!3306926 tp_is_empty!39215)))

(declare-fun b!5323197 () Bool)

(declare-fun tp!1482130 () Bool)

(assert (=> b!5323197 (= e!3306926 tp!1482130)))

(declare-fun b!5323198 () Bool)

(declare-fun tp!1482132 () Bool)

(declare-fun tp!1482131 () Bool)

(assert (=> b!5323198 (= e!3306926 (and tp!1482132 tp!1482131))))

(assert (=> b!5322331 (= tp!1482041 e!3306926)))

(declare-fun b!5323196 () Bool)

(declare-fun tp!1482133 () Bool)

(declare-fun tp!1482134 () Bool)

(assert (=> b!5323196 (= e!3306926 (and tp!1482133 tp!1482134))))

(assert (= (and b!5322331 ((_ is ElementMatch!14981) (regOne!30474 r!7292))) b!5323195))

(assert (= (and b!5322331 ((_ is Concat!23826) (regOne!30474 r!7292))) b!5323196))

(assert (= (and b!5322331 ((_ is Star!14981) (regOne!30474 r!7292))) b!5323197))

(assert (= (and b!5322331 ((_ is Union!14981) (regOne!30474 r!7292))) b!5323198))

(declare-fun b!5323199 () Bool)

(declare-fun e!3306927 () Bool)

(assert (=> b!5323199 (= e!3306927 tp_is_empty!39215)))

(declare-fun b!5323201 () Bool)

(declare-fun tp!1482135 () Bool)

(assert (=> b!5323201 (= e!3306927 tp!1482135)))

(declare-fun b!5323202 () Bool)

(declare-fun tp!1482137 () Bool)

(declare-fun tp!1482136 () Bool)

(assert (=> b!5323202 (= e!3306927 (and tp!1482137 tp!1482136))))

(assert (=> b!5322331 (= tp!1482038 e!3306927)))

(declare-fun b!5323200 () Bool)

(declare-fun tp!1482138 () Bool)

(declare-fun tp!1482139 () Bool)

(assert (=> b!5323200 (= e!3306927 (and tp!1482138 tp!1482139))))

(assert (= (and b!5322331 ((_ is ElementMatch!14981) (regTwo!30474 r!7292))) b!5323199))

(assert (= (and b!5322331 ((_ is Concat!23826) (regTwo!30474 r!7292))) b!5323200))

(assert (= (and b!5322331 ((_ is Star!14981) (regTwo!30474 r!7292))) b!5323201))

(assert (= (and b!5322331 ((_ is Union!14981) (regTwo!30474 r!7292))) b!5323202))

(declare-fun b!5323203 () Bool)

(declare-fun e!3306928 () Bool)

(assert (=> b!5323203 (= e!3306928 tp_is_empty!39215)))

(declare-fun b!5323205 () Bool)

(declare-fun tp!1482140 () Bool)

(assert (=> b!5323205 (= e!3306928 tp!1482140)))

(declare-fun b!5323206 () Bool)

(declare-fun tp!1482142 () Bool)

(declare-fun tp!1482141 () Bool)

(assert (=> b!5323206 (= e!3306928 (and tp!1482142 tp!1482141))))

(assert (=> b!5322346 (= tp!1482033 e!3306928)))

(declare-fun b!5323204 () Bool)

(declare-fun tp!1482143 () Bool)

(declare-fun tp!1482144 () Bool)

(assert (=> b!5323204 (= e!3306928 (and tp!1482143 tp!1482144))))

(assert (= (and b!5322346 ((_ is ElementMatch!14981) (regOne!30475 r!7292))) b!5323203))

(assert (= (and b!5322346 ((_ is Concat!23826) (regOne!30475 r!7292))) b!5323204))

(assert (= (and b!5322346 ((_ is Star!14981) (regOne!30475 r!7292))) b!5323205))

(assert (= (and b!5322346 ((_ is Union!14981) (regOne!30475 r!7292))) b!5323206))

(declare-fun b!5323207 () Bool)

(declare-fun e!3306929 () Bool)

(assert (=> b!5323207 (= e!3306929 tp_is_empty!39215)))

(declare-fun b!5323209 () Bool)

(declare-fun tp!1482145 () Bool)

(assert (=> b!5323209 (= e!3306929 tp!1482145)))

(declare-fun b!5323210 () Bool)

(declare-fun tp!1482147 () Bool)

(declare-fun tp!1482146 () Bool)

(assert (=> b!5323210 (= e!3306929 (and tp!1482147 tp!1482146))))

(assert (=> b!5322346 (= tp!1482035 e!3306929)))

(declare-fun b!5323208 () Bool)

(declare-fun tp!1482148 () Bool)

(declare-fun tp!1482149 () Bool)

(assert (=> b!5323208 (= e!3306929 (and tp!1482148 tp!1482149))))

(assert (= (and b!5322346 ((_ is ElementMatch!14981) (regTwo!30475 r!7292))) b!5323207))

(assert (= (and b!5322346 ((_ is Concat!23826) (regTwo!30475 r!7292))) b!5323208))

(assert (= (and b!5322346 ((_ is Star!14981) (regTwo!30475 r!7292))) b!5323209))

(assert (= (and b!5322346 ((_ is Union!14981) (regTwo!30475 r!7292))) b!5323210))

(declare-fun b!5323211 () Bool)

(declare-fun e!3306930 () Bool)

(declare-fun tp!1482150 () Bool)

(declare-fun tp!1482151 () Bool)

(assert (=> b!5323211 (= e!3306930 (and tp!1482150 tp!1482151))))

(assert (=> b!5322335 (= tp!1482034 e!3306930)))

(assert (= (and b!5322335 ((_ is Cons!61118) (exprs!4865 (h!67567 zl!343)))) b!5323211))

(declare-fun b!5323219 () Bool)

(declare-fun e!3306936 () Bool)

(declare-fun tp!1482156 () Bool)

(assert (=> b!5323219 (= e!3306936 tp!1482156)))

(declare-fun tp!1482157 () Bool)

(declare-fun b!5323218 () Bool)

(declare-fun e!3306935 () Bool)

(assert (=> b!5323218 (= e!3306935 (and (inv!80699 (h!67567 (t!374456 zl!343))) e!3306936 tp!1482157))))

(assert (=> b!5322344 (= tp!1482036 e!3306935)))

(assert (= b!5323218 b!5323219))

(assert (= (and b!5322344 ((_ is Cons!61119) (t!374456 zl!343))) b!5323218))

(declare-fun m!6357800 () Bool)

(assert (=> b!5323218 m!6357800))

(declare-fun b_lambda!204775 () Bool)

(assert (= b_lambda!204765 (or b!5322348 b_lambda!204775)))

(declare-fun bs!1233684 () Bool)

(declare-fun d!1709784 () Bool)

(assert (= bs!1233684 (and d!1709784 b!5322348)))

(assert (=> bs!1233684 (= (dynLambda!24163 lambda!271526 lt!2172256) (derivationStepZipperUp!353 lt!2172256 (h!67568 s!2326)))))

(assert (=> bs!1233684 m!6357156))

(assert (=> d!1709694 d!1709784))

(declare-fun b_lambda!204777 () Bool)

(assert (= b_lambda!204761 (or b!5322348 b_lambda!204777)))

(declare-fun bs!1233685 () Bool)

(declare-fun d!1709786 () Bool)

(assert (= bs!1233685 (and d!1709786 b!5322348)))

(assert (=> bs!1233685 (= (dynLambda!24163 lambda!271526 (h!67567 zl!343)) (derivationStepZipperUp!353 (h!67567 zl!343) (h!67568 s!2326)))))

(assert (=> bs!1233685 m!6357096))

(assert (=> d!1709676 d!1709786))

(declare-fun b_lambda!204779 () Bool)

(assert (= b_lambda!204773 (or b!5322332 b_lambda!204779)))

(declare-fun bs!1233686 () Bool)

(declare-fun d!1709788 () Bool)

(assert (= bs!1233686 (and d!1709788 b!5322332)))

(assert (=> bs!1233686 (= (dynLambda!24165 lambda!271527 (h!67566 lt!2172257)) (validRegex!6717 (h!67566 lt!2172257)))))

(declare-fun m!6357802 () Bool)

(assert (=> bs!1233686 m!6357802))

(assert (=> b!5323084 d!1709788))

(check-sat (not b!5323154) (not b!5323144) (not b!5322621) (not b!5323074) (not d!1709666) (not b!5323136) (not b!5323206) (not b!5323139) (not d!1709752) (not b!5322956) (not d!1709758) (not b!5323153) (not b!5323060) (not b!5323061) (not d!1709718) (not b!5323020) (not b!5323188) (not b!5323078) (not d!1709780) (not b!5322627) (not b!5322683) (not d!1709674) (not b!5322551) (not bm!380147) (not b!5322684) (not b!5323013) (not b!5323018) (not b!5323004) (not b!5323079) (not b!5323140) (not b_lambda!204779) (not b!5323025) (not b!5322983) (not b!5322626) (not d!1709770) (not b!5323200) (not bm!380148) (not b!5323027) (not bm!380136) (not b!5323201) (not d!1709756) (not b!5322690) (not b!5322951) (not b!5323209) (not b!5323062) (not b!5323202) (not b!5323016) (not b!5323076) (not b!5323069) (not bm!380121) (not b!5323149) (not bm!380145) (not b!5323003) (not d!1709776) (not d!1709754) (not b_lambda!204775) (not b!5323011) (not b!5323085) (not b!5323073) (not b!5323197) (not b!5322723) (not b!5322558) (not b!5323026) (not b!5322624) (not b!5322622) (not d!1709676) (not bs!1233686) (not b!5323187) (not b!5323170) (not b!5323065) (not b!5323204) tp_is_empty!39215 (not bm!380118) (not b!5322944) (not d!1709764) (not b!5323137) (not b!5323087) (not b!5322559) (not b!5323194) (not b!5322620) (not b!5323064) (not d!1709634) (not b!5323019) (not b!5322556) (not bs!1233685) (not b!5323072) (not bm!380113) (not b!5323211) (not d!1709730) (not b!5323122) (not bm!380140) (not d!1709734) (not b!5323196) (not d!1709760) (not b!5322724) (not b!5322836) (not d!1709750) (not b_lambda!204777) (not d!1709738) (not b!5323086) (not b!5323021) (not bm!380117) (not b!5322837) (not bm!380153) (not b!5322573) (not d!1709726) (not b!5322822) (not bm!380095) (not b!5322982) (not d!1709724) (not b!5323218) (not b!5322985) (not b!5323022) (not b!5322623) (not b!5322552) (not d!1709638) (not bm!380091) (not bm!380092) (not b!5323127) (not d!1709746) (not b!5323075) (not b!5323198) (not b!5323151) (not b!5322984) (not d!1709778) (not b!5322560) (not d!1709694) (not bm!380152) (not b!5322958) (not d!1709768) (not b!5322981) (not bs!1233684) (not d!1709696) (not b!5322553) (not bm!380146) (not b!5323175) (not b!5322691) (not b!5323165) (not setNonEmpty!34277) (not b!5323219) (not d!1709740) (not b!5323205) (not d!1709624) (not d!1709690) (not bm!380137) (not b!5323135) (not d!1709732) (not b!5322978) (not b!5323189) (not d!1709728) (not b!5323210) (not d!1709748) (not b!5323208))
(check-sat)
