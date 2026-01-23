; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558162 () Bool)

(assert start!558162)

(declare-fun b!5287706 () Bool)

(assert (=> b!5287706 true))

(assert (=> b!5287706 true))

(declare-fun lambda!267545 () Int)

(declare-fun lambda!267544 () Int)

(assert (=> b!5287706 (not (= lambda!267545 lambda!267544))))

(assert (=> b!5287706 true))

(assert (=> b!5287706 true))

(declare-fun b!5287682 () Bool)

(assert (=> b!5287682 true))

(declare-fun bs!1225196 () Bool)

(declare-fun b!5287700 () Bool)

(assert (= bs!1225196 (and b!5287700 b!5287706)))

(declare-datatypes ((C!30112 0))(
  ( (C!30113 (val!24758 Int)) )
))
(declare-datatypes ((Regex!14921 0))(
  ( (ElementMatch!14921 (c!916969 C!30112)) (Concat!23766 (regOne!30354 Regex!14921) (regTwo!30354 Regex!14921)) (EmptyExpr!14921) (Star!14921 (reg!15250 Regex!14921)) (EmptyLang!14921) (Union!14921 (regOne!30355 Regex!14921) (regTwo!30355 Regex!14921)) )
))
(declare-fun r!7292 () Regex!14921)

(declare-fun lambda!267547 () Int)

(declare-fun lt!2161300 () Regex!14921)

(assert (=> bs!1225196 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267547 lambda!267544))))

(assert (=> bs!1225196 (not (= lambda!267547 lambda!267545))))

(assert (=> b!5287700 true))

(assert (=> b!5287700 true))

(assert (=> b!5287700 true))

(declare-fun lambda!267548 () Int)

(assert (=> bs!1225196 (not (= lambda!267548 lambda!267544))))

(assert (=> bs!1225196 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267548 lambda!267545))))

(assert (=> b!5287700 (not (= lambda!267548 lambda!267547))))

(assert (=> b!5287700 true))

(assert (=> b!5287700 true))

(assert (=> b!5287700 true))

(declare-fun e!3287374 () Bool)

(declare-fun e!3287386 () Bool)

(assert (=> b!5287682 (= e!3287374 e!3287386)))

(declare-fun res!2242744 () Bool)

(assert (=> b!5287682 (=> res!2242744 e!3287386)))

(declare-datatypes ((List!61062 0))(
  ( (Nil!60938) (Cons!60938 (h!67386 C!30112) (t!374265 List!61062)) )
))
(declare-fun s!2326 () List!61062)

(get-info :version)

(assert (=> b!5287682 (= res!2242744 (or (and ((_ is ElementMatch!14921) (regOne!30354 r!7292)) (= (c!916969 (regOne!30354 r!7292)) (h!67386 s!2326))) ((_ is Union!14921) (regOne!30354 r!7292)) (not ((_ is Concat!23766) (regOne!30354 r!7292)))))))

(declare-datatypes ((Unit!153202 0))(
  ( (Unit!153203) )
))
(declare-fun lt!2161304 () Unit!153202)

(declare-fun e!3287372 () Unit!153202)

(assert (=> b!5287682 (= lt!2161304 e!3287372)))

(declare-fun c!916968 () Bool)

(declare-datatypes ((List!61063 0))(
  ( (Nil!60939) (Cons!60939 (h!67387 Regex!14921) (t!374266 List!61063)) )
))
(declare-datatypes ((Context!8610 0))(
  ( (Context!8611 (exprs!4805 List!61063)) )
))
(declare-datatypes ((List!61064 0))(
  ( (Nil!60940) (Cons!60940 (h!67388 Context!8610) (t!374267 List!61064)) )
))
(declare-fun zl!343 () List!61064)

(declare-fun nullable!5090 (Regex!14921) Bool)

(assert (=> b!5287682 (= c!916968 (nullable!5090 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8610))

(declare-fun lambda!267546 () Int)

(declare-fun flatMap!648 ((InoxSet Context!8610) Int) (InoxSet Context!8610))

(declare-fun derivationStepZipperUp!293 (Context!8610 C!30112) (InoxSet Context!8610))

(assert (=> b!5287682 (= (flatMap!648 z!1189 lambda!267546) (derivationStepZipperUp!293 (h!67388 zl!343) (h!67386 s!2326)))))

(declare-fun lt!2161310 () Unit!153202)

(declare-fun lemmaFlatMapOnSingletonSet!180 ((InoxSet Context!8610) Context!8610 Int) Unit!153202)

(assert (=> b!5287682 (= lt!2161310 (lemmaFlatMapOnSingletonSet!180 z!1189 (h!67388 zl!343) lambda!267546))))

(declare-fun lt!2161307 () (InoxSet Context!8610))

(declare-fun lt!2161302 () Context!8610)

(assert (=> b!5287682 (= lt!2161307 (derivationStepZipperUp!293 lt!2161302 (h!67386 s!2326)))))

(declare-fun lt!2161309 () (InoxSet Context!8610))

(declare-fun derivationStepZipperDown!369 (Regex!14921 Context!8610 C!30112) (InoxSet Context!8610))

(assert (=> b!5287682 (= lt!2161309 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (h!67388 zl!343))) lt!2161302 (h!67386 s!2326)))))

(assert (=> b!5287682 (= lt!2161302 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun lt!2161277 () (InoxSet Context!8610))

(assert (=> b!5287682 (= lt!2161277 (derivationStepZipperUp!293 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))) (h!67386 s!2326)))))

(declare-fun b!5287683 () Bool)

(declare-fun e!3287377 () Bool)

(declare-fun tp_is_empty!39095 () Bool)

(assert (=> b!5287683 (= e!3287377 tp_is_empty!39095)))

(declare-fun b!5287684 () Bool)

(declare-fun res!2242751 () Bool)

(declare-fun e!3287380 () Bool)

(assert (=> b!5287684 (=> (not res!2242751) (not e!3287380))))

(declare-fun unfocusZipper!663 (List!61064) Regex!14921)

(assert (=> b!5287684 (= res!2242751 (= r!7292 (unfocusZipper!663 zl!343)))))

(declare-fun setNonEmpty!33929 () Bool)

(declare-fun e!3287373 () Bool)

(declare-fun setRes!33929 () Bool)

(declare-fun setElem!33929 () Context!8610)

(declare-fun tp!1476417 () Bool)

(declare-fun inv!80549 (Context!8610) Bool)

(assert (=> setNonEmpty!33929 (= setRes!33929 (and tp!1476417 (inv!80549 setElem!33929) e!3287373))))

(declare-fun setRest!33929 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33929 (= z!1189 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33929 true) setRest!33929))))

(declare-fun b!5287686 () Bool)

(declare-fun tp!1476420 () Bool)

(declare-fun tp!1476421 () Bool)

(assert (=> b!5287686 (= e!3287377 (and tp!1476420 tp!1476421))))

(declare-fun b!5287687 () Bool)

(declare-fun e!3287381 () Bool)

(declare-fun lt!2161298 () (InoxSet Context!8610))

(declare-fun matchZipper!1165 ((InoxSet Context!8610) List!61062) Bool)

(assert (=> b!5287687 (= e!3287381 (not (matchZipper!1165 lt!2161298 (t!374265 s!2326))))))

(declare-fun b!5287688 () Bool)

(declare-fun tp!1476419 () Bool)

(declare-fun tp!1476414 () Bool)

(assert (=> b!5287688 (= e!3287377 (and tp!1476419 tp!1476414))))

(declare-fun b!5287689 () Bool)

(declare-fun e!3287375 () Bool)

(declare-fun e!3287387 () Bool)

(assert (=> b!5287689 (= e!3287375 e!3287387)))

(declare-fun res!2242759 () Bool)

(assert (=> b!5287689 (=> res!2242759 e!3287387)))

(declare-fun lt!2161292 () (InoxSet Context!8610))

(declare-fun lt!2161305 () (InoxSet Context!8610))

(assert (=> b!5287689 (= res!2242759 (not (= lt!2161292 lt!2161305)))))

(declare-fun lt!2161296 () (InoxSet Context!8610))

(declare-fun lt!2161293 () (InoxSet Context!8610))

(assert (=> b!5287689 (= lt!2161305 ((_ map or) lt!2161296 lt!2161293))))

(declare-fun lt!2161287 () Context!8610)

(assert (=> b!5287689 (= lt!2161293 (derivationStepZipperUp!293 lt!2161287 (h!67386 s!2326)))))

(declare-fun lt!2161283 () (InoxSet Context!8610))

(declare-fun lt!2161279 () Context!8610)

(assert (=> b!5287689 (= (flatMap!648 lt!2161283 lambda!267546) (derivationStepZipperUp!293 lt!2161279 (h!67386 s!2326)))))

(declare-fun lt!2161288 () Unit!153202)

(assert (=> b!5287689 (= lt!2161288 (lemmaFlatMapOnSingletonSet!180 lt!2161283 lt!2161279 lambda!267546))))

(declare-fun lt!2161284 () (InoxSet Context!8610))

(assert (=> b!5287689 (= lt!2161284 (derivationStepZipperUp!293 lt!2161279 (h!67386 s!2326)))))

(declare-fun derivationStepZipper!1164 ((InoxSet Context!8610) C!30112) (InoxSet Context!8610))

(assert (=> b!5287689 (= lt!2161292 (derivationStepZipper!1164 lt!2161283 (h!67386 s!2326)))))

(declare-fun lt!2161312 () (InoxSet Context!8610))

(assert (=> b!5287689 (= lt!2161312 (store ((as const (Array Context!8610 Bool)) false) lt!2161287 true))))

(assert (=> b!5287689 (= lt!2161283 (store ((as const (Array Context!8610 Bool)) false) lt!2161279 true))))

(declare-fun lt!2161306 () List!61063)

(assert (=> b!5287689 (= lt!2161279 (Context!8611 lt!2161306))))

(declare-fun lt!2161282 () List!61063)

(assert (=> b!5287689 (= lt!2161306 (Cons!60939 (regOne!30354 (regOne!30354 r!7292)) lt!2161282))))

(declare-fun b!5287690 () Bool)

(declare-fun res!2242755 () Bool)

(declare-fun e!3287385 () Bool)

(assert (=> b!5287690 (=> res!2242755 e!3287385)))

(declare-fun contextDepthTotal!62 (Context!8610) Int)

(assert (=> b!5287690 (= res!2242755 (>= (contextDepthTotal!62 lt!2161279) (contextDepthTotal!62 (h!67388 zl!343))))))

(declare-fun b!5287691 () Bool)

(declare-fun res!2242750 () Bool)

(assert (=> b!5287691 (=> (not res!2242750) (not e!3287380))))

(declare-fun toList!8705 ((InoxSet Context!8610)) List!61064)

(assert (=> b!5287691 (= res!2242750 (= (toList!8705 z!1189) zl!343))))

(declare-fun b!5287692 () Bool)

(declare-fun e!3287378 () Bool)

(assert (=> b!5287692 (= e!3287378 (matchZipper!1165 lt!2161293 (t!374265 s!2326)))))

(declare-fun b!5287693 () Bool)

(declare-fun e!3287388 () Bool)

(declare-fun e!3287376 () Bool)

(declare-fun tp!1476415 () Bool)

(assert (=> b!5287693 (= e!3287376 (and (inv!80549 (h!67388 zl!343)) e!3287388 tp!1476415))))

(declare-fun b!5287694 () Bool)

(declare-fun res!2242747 () Bool)

(declare-fun e!3287390 () Bool)

(assert (=> b!5287694 (=> res!2242747 e!3287390)))

(declare-fun lt!2161303 () List!61064)

(declare-fun zipperDepth!38 (List!61064) Int)

(assert (=> b!5287694 (= res!2242747 (> (zipperDepth!38 lt!2161303) (zipperDepth!38 zl!343)))))

(declare-fun b!5287695 () Bool)

(declare-fun e!3287371 () Bool)

(assert (=> b!5287695 (= e!3287371 e!3287375)))

(declare-fun res!2242757 () Bool)

(assert (=> b!5287695 (=> res!2242757 e!3287375)))

(assert (=> b!5287695 (= res!2242757 e!3287381)))

(declare-fun res!2242743 () Bool)

(assert (=> b!5287695 (=> (not res!2242743) (not e!3287381))))

(declare-fun lt!2161285 () Bool)

(declare-fun lt!2161290 () Bool)

(assert (=> b!5287695 (= res!2242743 (not (= lt!2161285 lt!2161290)))))

(assert (=> b!5287695 (= lt!2161285 (matchZipper!1165 lt!2161309 (t!374265 s!2326)))))

(declare-fun lt!2161314 () (InoxSet Context!8610))

(declare-fun e!3287383 () Bool)

(assert (=> b!5287695 (= (matchZipper!1165 lt!2161314 (t!374265 s!2326)) e!3287383)))

(declare-fun res!2242756 () Bool)

(assert (=> b!5287695 (=> res!2242756 e!3287383)))

(assert (=> b!5287695 (= res!2242756 lt!2161290)))

(assert (=> b!5287695 (= lt!2161290 (matchZipper!1165 lt!2161296 (t!374265 s!2326)))))

(declare-fun lt!2161317 () Unit!153202)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!158 ((InoxSet Context!8610) (InoxSet Context!8610) List!61062) Unit!153202)

(assert (=> b!5287695 (= lt!2161317 (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161296 lt!2161298 (t!374265 s!2326)))))

(declare-fun b!5287696 () Bool)

(declare-fun res!2242761 () Bool)

(assert (=> b!5287696 (=> res!2242761 e!3287385)))

(assert (=> b!5287696 (= res!2242761 (not (= (exprs!4805 (h!67388 zl!343)) (Cons!60939 (Concat!23766 (regOne!30354 (regOne!30354 r!7292)) (regTwo!30354 (regOne!30354 r!7292))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun setIsEmpty!33929 () Bool)

(assert (=> setIsEmpty!33929 setRes!33929))

(declare-fun b!5287697 () Bool)

(declare-fun Unit!153204 () Unit!153202)

(assert (=> b!5287697 (= e!3287372 Unit!153204)))

(declare-fun lt!2161316 () Unit!153202)

(assert (=> b!5287697 (= lt!2161316 (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161309 lt!2161307 (t!374265 s!2326)))))

(declare-fun res!2242739 () Bool)

(assert (=> b!5287697 (= res!2242739 (matchZipper!1165 lt!2161309 (t!374265 s!2326)))))

(declare-fun e!3287384 () Bool)

(assert (=> b!5287697 (=> res!2242739 e!3287384)))

(assert (=> b!5287697 (= (matchZipper!1165 ((_ map or) lt!2161309 lt!2161307) (t!374265 s!2326)) e!3287384)))

(declare-fun b!5287698 () Bool)

(declare-fun res!2242736 () Bool)

(declare-fun e!3287379 () Bool)

(assert (=> b!5287698 (=> res!2242736 e!3287379)))

(assert (=> b!5287698 (= res!2242736 (not ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343)))))))

(declare-fun res!2242758 () Bool)

(assert (=> start!558162 (=> (not res!2242758) (not e!3287380))))

(declare-fun validRegex!6657 (Regex!14921) Bool)

(assert (=> start!558162 (= res!2242758 (validRegex!6657 r!7292))))

(assert (=> start!558162 e!3287380))

(assert (=> start!558162 e!3287377))

(declare-fun condSetEmpty!33929 () Bool)

(assert (=> start!558162 (= condSetEmpty!33929 (= z!1189 ((as const (Array Context!8610 Bool)) false)))))

(assert (=> start!558162 setRes!33929))

(assert (=> start!558162 e!3287376))

(declare-fun e!3287382 () Bool)

(assert (=> start!558162 e!3287382))

(declare-fun b!5287685 () Bool)

(declare-fun res!2242742 () Bool)

(assert (=> b!5287685 (=> res!2242742 e!3287379)))

(declare-fun generalisedUnion!850 (List!61063) Regex!14921)

(declare-fun unfocusZipperList!363 (List!61064) List!61063)

(assert (=> b!5287685 (= res!2242742 (not (= r!7292 (generalisedUnion!850 (unfocusZipperList!363 zl!343)))))))

(declare-fun b!5287699 () Bool)

(assert (=> b!5287699 (= e!3287380 (not e!3287379))))

(declare-fun res!2242737 () Bool)

(assert (=> b!5287699 (=> res!2242737 e!3287379)))

(assert (=> b!5287699 (= res!2242737 (not ((_ is Cons!60940) zl!343)))))

(declare-fun lt!2161286 () Bool)

(declare-fun matchRSpec!2024 (Regex!14921 List!61062) Bool)

(assert (=> b!5287699 (= lt!2161286 (matchRSpec!2024 r!7292 s!2326))))

(declare-fun matchR!7106 (Regex!14921 List!61062) Bool)

(assert (=> b!5287699 (= lt!2161286 (matchR!7106 r!7292 s!2326))))

(declare-fun lt!2161301 () Unit!153202)

(declare-fun mainMatchTheorem!2024 (Regex!14921 List!61062) Unit!153202)

(assert (=> b!5287699 (= lt!2161301 (mainMatchTheorem!2024 r!7292 s!2326))))

(declare-fun lambda!267549 () Int)

(declare-fun forall!14329 (List!61063 Int) Bool)

(assert (=> b!5287700 (= e!3287390 (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267549))))

(declare-fun lt!2161297 () Bool)

(assert (=> b!5287700 (= lt!2161297 (matchRSpec!2024 lt!2161300 s!2326))))

(declare-fun lt!2161311 () Unit!153202)

(assert (=> b!5287700 (= lt!2161311 (mainMatchTheorem!2024 lt!2161300 s!2326))))

(declare-fun Exists!2102 (Int) Bool)

(assert (=> b!5287700 (= (Exists!2102 lambda!267547) (Exists!2102 lambda!267548))))

(declare-fun lt!2161315 () Unit!153202)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!756 (Regex!14921 Regex!14921 List!61062) Unit!153202)

(assert (=> b!5287700 (= lt!2161315 (lemmaExistCutMatchRandMatchRSpecEquivalent!756 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326))))

(declare-datatypes ((tuple2!64240 0))(
  ( (tuple2!64241 (_1!35423 List!61062) (_2!35423 List!61062)) )
))
(declare-datatypes ((Option!15032 0))(
  ( (None!15031) (Some!15031 (v!51060 tuple2!64240)) )
))
(declare-fun isDefined!11735 (Option!15032) Bool)

(declare-fun findConcatSeparation!1446 (Regex!14921 Regex!14921 List!61062 List!61062 List!61062) Option!15032)

(assert (=> b!5287700 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326)) (Exists!2102 lambda!267547))))

(declare-fun lt!2161291 () Unit!153202)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1210 (Regex!14921 Regex!14921 List!61062) Unit!153202)

(assert (=> b!5287700 (= lt!2161291 (lemmaFindConcatSeparationEquivalentToExists!1210 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326))))

(declare-fun lt!2161280 () Bool)

(declare-fun lt!2161294 () Regex!14921)

(assert (=> b!5287700 (= lt!2161280 (matchRSpec!2024 lt!2161294 s!2326))))

(declare-fun lt!2161295 () Unit!153202)

(assert (=> b!5287700 (= lt!2161295 (mainMatchTheorem!2024 lt!2161294 s!2326))))

(assert (=> b!5287700 (= lt!2161297 (matchZipper!1165 lt!2161312 s!2326))))

(assert (=> b!5287700 (= lt!2161297 (matchR!7106 lt!2161300 s!2326))))

(declare-fun lt!2161299 () Unit!153202)

(declare-fun theoremZipperRegexEquiv!331 ((InoxSet Context!8610) List!61064 Regex!14921 List!61062) Unit!153202)

(assert (=> b!5287700 (= lt!2161299 (theoremZipperRegexEquiv!331 lt!2161312 (Cons!60940 lt!2161287 Nil!60940) lt!2161300 s!2326))))

(declare-fun generalisedConcat!590 (List!61063) Regex!14921)

(assert (=> b!5287700 (= lt!2161300 (generalisedConcat!590 lt!2161282))))

(assert (=> b!5287700 (= lt!2161280 (matchZipper!1165 lt!2161283 s!2326))))

(assert (=> b!5287700 (= lt!2161280 (matchR!7106 lt!2161294 s!2326))))

(declare-fun lt!2161308 () Unit!153202)

(assert (=> b!5287700 (= lt!2161308 (theoremZipperRegexEquiv!331 lt!2161283 lt!2161303 lt!2161294 s!2326))))

(assert (=> b!5287700 (= lt!2161294 (generalisedConcat!590 lt!2161306))))

(declare-fun b!5287701 () Bool)

(assert (=> b!5287701 (= e!3287384 (matchZipper!1165 lt!2161307 (t!374265 s!2326)))))

(declare-fun b!5287702 () Bool)

(declare-fun res!2242760 () Bool)

(assert (=> b!5287702 (=> res!2242760 e!3287379)))

(assert (=> b!5287702 (= res!2242760 (or ((_ is EmptyExpr!14921) r!7292) ((_ is EmptyLang!14921) r!7292) ((_ is ElementMatch!14921) r!7292) ((_ is Union!14921) r!7292) (not ((_ is Concat!23766) r!7292))))))

(declare-fun b!5287703 () Bool)

(declare-fun e!3287389 () Bool)

(assert (=> b!5287703 (= e!3287389 (not (matchZipper!1165 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (t!374265 s!2326))))))

(declare-fun b!5287704 () Bool)

(declare-fun res!2242740 () Bool)

(assert (=> b!5287704 (=> res!2242740 e!3287379)))

(declare-fun isEmpty!32891 (List!61064) Bool)

(assert (=> b!5287704 (= res!2242740 (not (isEmpty!32891 (t!374267 zl!343))))))

(declare-fun b!5287705 () Bool)

(declare-fun tp!1476416 () Bool)

(assert (=> b!5287705 (= e!3287377 tp!1476416)))

(assert (=> b!5287706 (= e!3287379 e!3287374)))

(declare-fun res!2242749 () Bool)

(assert (=> b!5287706 (=> res!2242749 e!3287374)))

(declare-fun lt!2161278 () Bool)

(assert (=> b!5287706 (= res!2242749 (or (not (= lt!2161286 lt!2161278)) ((_ is Nil!60938) s!2326)))))

(assert (=> b!5287706 (= (Exists!2102 lambda!267544) (Exists!2102 lambda!267545))))

(declare-fun lt!2161313 () Unit!153202)

(assert (=> b!5287706 (= lt!2161313 (lemmaExistCutMatchRandMatchRSpecEquivalent!756 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326))))

(assert (=> b!5287706 (= lt!2161278 (Exists!2102 lambda!267544))))

(assert (=> b!5287706 (= lt!2161278 (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326)))))

(declare-fun lt!2161289 () Unit!153202)

(assert (=> b!5287706 (= lt!2161289 (lemmaFindConcatSeparationEquivalentToExists!1210 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326))))

(declare-fun b!5287707 () Bool)

(declare-fun tp!1476413 () Bool)

(assert (=> b!5287707 (= e!3287373 tp!1476413)))

(declare-fun b!5287708 () Bool)

(declare-fun tp!1476412 () Bool)

(assert (=> b!5287708 (= e!3287388 tp!1476412)))

(declare-fun b!5287709 () Bool)

(declare-fun res!2242746 () Bool)

(assert (=> b!5287709 (=> res!2242746 e!3287374)))

(declare-fun isEmpty!32892 (List!61063) Bool)

(assert (=> b!5287709 (= res!2242746 (isEmpty!32892 (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5287710 () Bool)

(assert (=> b!5287710 (= e!3287387 e!3287385)))

(declare-fun res!2242753 () Bool)

(assert (=> b!5287710 (=> res!2242753 e!3287385)))

(assert (=> b!5287710 (= res!2242753 e!3287389)))

(declare-fun res!2242745 () Bool)

(assert (=> b!5287710 (=> (not res!2242745) (not e!3287389))))

(assert (=> b!5287710 (= res!2242745 (not (= lt!2161285 (matchZipper!1165 lt!2161292 (t!374265 s!2326)))))))

(assert (=> b!5287710 (= (matchZipper!1165 lt!2161305 (t!374265 s!2326)) e!3287378)))

(declare-fun res!2242754 () Bool)

(assert (=> b!5287710 (=> res!2242754 e!3287378)))

(assert (=> b!5287710 (= res!2242754 lt!2161290)))

(declare-fun lt!2161281 () Unit!153202)

(assert (=> b!5287710 (= lt!2161281 (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161296 lt!2161293 (t!374265 s!2326)))))

(assert (=> b!5287710 (= (flatMap!648 lt!2161312 lambda!267546) (derivationStepZipperUp!293 lt!2161287 (h!67386 s!2326)))))

(declare-fun lt!2161318 () Unit!153202)

(assert (=> b!5287710 (= lt!2161318 (lemmaFlatMapOnSingletonSet!180 lt!2161312 lt!2161287 lambda!267546))))

(declare-fun b!5287711 () Bool)

(declare-fun res!2242752 () Bool)

(assert (=> b!5287711 (=> res!2242752 e!3287379)))

(assert (=> b!5287711 (= res!2242752 (not (= r!7292 (generalisedConcat!590 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5287712 () Bool)

(declare-fun Unit!153205 () Unit!153202)

(assert (=> b!5287712 (= e!3287372 Unit!153205)))

(declare-fun b!5287713 () Bool)

(declare-fun res!2242748 () Bool)

(assert (=> b!5287713 (=> res!2242748 e!3287386)))

(assert (=> b!5287713 (= res!2242748 (not (nullable!5090 (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun b!5287714 () Bool)

(assert (=> b!5287714 (= e!3287383 (matchZipper!1165 lt!2161298 (t!374265 s!2326)))))

(declare-fun b!5287715 () Bool)

(assert (=> b!5287715 (= e!3287386 e!3287371)))

(declare-fun res!2242738 () Bool)

(assert (=> b!5287715 (=> res!2242738 e!3287371)))

(assert (=> b!5287715 (= res!2242738 (not (= lt!2161309 lt!2161314)))))

(assert (=> b!5287715 (= lt!2161314 ((_ map or) lt!2161296 lt!2161298))))

(assert (=> b!5287715 (= lt!2161298 (derivationStepZipperDown!369 (regTwo!30354 (regOne!30354 r!7292)) lt!2161302 (h!67386 s!2326)))))

(assert (=> b!5287715 (= lt!2161296 (derivationStepZipperDown!369 (regOne!30354 (regOne!30354 r!7292)) lt!2161287 (h!67386 s!2326)))))

(assert (=> b!5287715 (= lt!2161287 (Context!8611 lt!2161282))))

(assert (=> b!5287715 (= lt!2161282 (Cons!60939 (regTwo!30354 (regOne!30354 r!7292)) (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5287716 () Bool)

(assert (=> b!5287716 (= e!3287385 e!3287390)))

(declare-fun res!2242741 () Bool)

(assert (=> b!5287716 (=> res!2242741 e!3287390)))

(declare-fun zipperDepthTotal!82 (List!61064) Int)

(assert (=> b!5287716 (= res!2242741 (>= (zipperDepthTotal!82 lt!2161303) (zipperDepthTotal!82 zl!343)))))

(assert (=> b!5287716 (= lt!2161303 (Cons!60940 lt!2161279 Nil!60940))))

(declare-fun b!5287717 () Bool)

(declare-fun tp!1476418 () Bool)

(assert (=> b!5287717 (= e!3287382 (and tp_is_empty!39095 tp!1476418))))

(assert (= (and start!558162 res!2242758) b!5287691))

(assert (= (and b!5287691 res!2242750) b!5287684))

(assert (= (and b!5287684 res!2242751) b!5287699))

(assert (= (and b!5287699 (not res!2242737)) b!5287704))

(assert (= (and b!5287704 (not res!2242740)) b!5287711))

(assert (= (and b!5287711 (not res!2242752)) b!5287698))

(assert (= (and b!5287698 (not res!2242736)) b!5287685))

(assert (= (and b!5287685 (not res!2242742)) b!5287702))

(assert (= (and b!5287702 (not res!2242760)) b!5287706))

(assert (= (and b!5287706 (not res!2242749)) b!5287709))

(assert (= (and b!5287709 (not res!2242746)) b!5287682))

(assert (= (and b!5287682 c!916968) b!5287697))

(assert (= (and b!5287682 (not c!916968)) b!5287712))

(assert (= (and b!5287697 (not res!2242739)) b!5287701))

(assert (= (and b!5287682 (not res!2242744)) b!5287713))

(assert (= (and b!5287713 (not res!2242748)) b!5287715))

(assert (= (and b!5287715 (not res!2242738)) b!5287695))

(assert (= (and b!5287695 (not res!2242756)) b!5287714))

(assert (= (and b!5287695 res!2242743) b!5287687))

(assert (= (and b!5287695 (not res!2242757)) b!5287689))

(assert (= (and b!5287689 (not res!2242759)) b!5287710))

(assert (= (and b!5287710 (not res!2242754)) b!5287692))

(assert (= (and b!5287710 res!2242745) b!5287703))

(assert (= (and b!5287710 (not res!2242753)) b!5287696))

(assert (= (and b!5287696 (not res!2242761)) b!5287690))

(assert (= (and b!5287690 (not res!2242755)) b!5287716))

(assert (= (and b!5287716 (not res!2242741)) b!5287694))

(assert (= (and b!5287694 (not res!2242747)) b!5287700))

(assert (= (and start!558162 ((_ is ElementMatch!14921) r!7292)) b!5287683))

(assert (= (and start!558162 ((_ is Concat!23766) r!7292)) b!5287688))

(assert (= (and start!558162 ((_ is Star!14921) r!7292)) b!5287705))

(assert (= (and start!558162 ((_ is Union!14921) r!7292)) b!5287686))

(assert (= (and start!558162 condSetEmpty!33929) setIsEmpty!33929))

(assert (= (and start!558162 (not condSetEmpty!33929)) setNonEmpty!33929))

(assert (= setNonEmpty!33929 b!5287707))

(assert (= b!5287693 b!5287708))

(assert (= (and start!558162 ((_ is Cons!60940) zl!343)) b!5287693))

(assert (= (and start!558162 ((_ is Cons!60938) s!2326)) b!5287717))

(declare-fun m!6325146 () Bool)

(assert (=> setNonEmpty!33929 m!6325146))

(declare-fun m!6325148 () Bool)

(assert (=> b!5287684 m!6325148))

(declare-fun m!6325150 () Bool)

(assert (=> b!5287685 m!6325150))

(assert (=> b!5287685 m!6325150))

(declare-fun m!6325152 () Bool)

(assert (=> b!5287685 m!6325152))

(declare-fun m!6325154 () Bool)

(assert (=> b!5287711 m!6325154))

(declare-fun m!6325156 () Bool)

(assert (=> b!5287715 m!6325156))

(declare-fun m!6325158 () Bool)

(assert (=> b!5287715 m!6325158))

(declare-fun m!6325160 () Bool)

(assert (=> b!5287691 m!6325160))

(declare-fun m!6325162 () Bool)

(assert (=> b!5287716 m!6325162))

(declare-fun m!6325164 () Bool)

(assert (=> b!5287716 m!6325164))

(declare-fun m!6325166 () Bool)

(assert (=> b!5287693 m!6325166))

(declare-fun m!6325168 () Bool)

(assert (=> b!5287687 m!6325168))

(declare-fun m!6325170 () Bool)

(assert (=> b!5287701 m!6325170))

(declare-fun m!6325172 () Bool)

(assert (=> b!5287709 m!6325172))

(declare-fun m!6325174 () Bool)

(assert (=> b!5287695 m!6325174))

(declare-fun m!6325176 () Bool)

(assert (=> b!5287695 m!6325176))

(declare-fun m!6325178 () Bool)

(assert (=> b!5287695 m!6325178))

(declare-fun m!6325180 () Bool)

(assert (=> b!5287695 m!6325180))

(declare-fun m!6325182 () Bool)

(assert (=> b!5287700 m!6325182))

(declare-fun m!6325184 () Bool)

(assert (=> b!5287700 m!6325184))

(declare-fun m!6325186 () Bool)

(assert (=> b!5287700 m!6325186))

(declare-fun m!6325188 () Bool)

(assert (=> b!5287700 m!6325188))

(declare-fun m!6325190 () Bool)

(assert (=> b!5287700 m!6325190))

(declare-fun m!6325192 () Bool)

(assert (=> b!5287700 m!6325192))

(declare-fun m!6325194 () Bool)

(assert (=> b!5287700 m!6325194))

(declare-fun m!6325196 () Bool)

(assert (=> b!5287700 m!6325196))

(declare-fun m!6325198 () Bool)

(assert (=> b!5287700 m!6325198))

(declare-fun m!6325200 () Bool)

(assert (=> b!5287700 m!6325200))

(declare-fun m!6325202 () Bool)

(assert (=> b!5287700 m!6325202))

(assert (=> b!5287700 m!6325196))

(declare-fun m!6325204 () Bool)

(assert (=> b!5287700 m!6325204))

(declare-fun m!6325206 () Bool)

(assert (=> b!5287700 m!6325206))

(declare-fun m!6325208 () Bool)

(assert (=> b!5287700 m!6325208))

(declare-fun m!6325210 () Bool)

(assert (=> b!5287700 m!6325210))

(declare-fun m!6325212 () Bool)

(assert (=> b!5287700 m!6325212))

(assert (=> b!5287700 m!6325188))

(declare-fun m!6325214 () Bool)

(assert (=> b!5287700 m!6325214))

(declare-fun m!6325216 () Bool)

(assert (=> b!5287700 m!6325216))

(declare-fun m!6325218 () Bool)

(assert (=> b!5287700 m!6325218))

(declare-fun m!6325220 () Bool)

(assert (=> b!5287706 m!6325220))

(declare-fun m!6325222 () Bool)

(assert (=> b!5287706 m!6325222))

(declare-fun m!6325224 () Bool)

(assert (=> b!5287706 m!6325224))

(declare-fun m!6325226 () Bool)

(assert (=> b!5287706 m!6325226))

(assert (=> b!5287706 m!6325222))

(declare-fun m!6325228 () Bool)

(assert (=> b!5287706 m!6325228))

(assert (=> b!5287706 m!6325220))

(declare-fun m!6325230 () Bool)

(assert (=> b!5287706 m!6325230))

(declare-fun m!6325232 () Bool)

(assert (=> b!5287710 m!6325232))

(declare-fun m!6325234 () Bool)

(assert (=> b!5287710 m!6325234))

(declare-fun m!6325236 () Bool)

(assert (=> b!5287710 m!6325236))

(declare-fun m!6325238 () Bool)

(assert (=> b!5287710 m!6325238))

(declare-fun m!6325240 () Bool)

(assert (=> b!5287710 m!6325240))

(declare-fun m!6325242 () Bool)

(assert (=> b!5287710 m!6325242))

(declare-fun m!6325244 () Bool)

(assert (=> b!5287692 m!6325244))

(declare-fun m!6325246 () Bool)

(assert (=> b!5287704 m!6325246))

(declare-fun m!6325248 () Bool)

(assert (=> b!5287699 m!6325248))

(declare-fun m!6325250 () Bool)

(assert (=> b!5287699 m!6325250))

(declare-fun m!6325252 () Bool)

(assert (=> b!5287699 m!6325252))

(declare-fun m!6325254 () Bool)

(assert (=> start!558162 m!6325254))

(declare-fun m!6325256 () Bool)

(assert (=> b!5287682 m!6325256))

(declare-fun m!6325258 () Bool)

(assert (=> b!5287682 m!6325258))

(declare-fun m!6325260 () Bool)

(assert (=> b!5287682 m!6325260))

(declare-fun m!6325262 () Bool)

(assert (=> b!5287682 m!6325262))

(declare-fun m!6325264 () Bool)

(assert (=> b!5287682 m!6325264))

(declare-fun m!6325266 () Bool)

(assert (=> b!5287682 m!6325266))

(declare-fun m!6325268 () Bool)

(assert (=> b!5287682 m!6325268))

(declare-fun m!6325270 () Bool)

(assert (=> b!5287713 m!6325270))

(declare-fun m!6325272 () Bool)

(assert (=> b!5287690 m!6325272))

(declare-fun m!6325274 () Bool)

(assert (=> b!5287690 m!6325274))

(assert (=> b!5287714 m!6325168))

(declare-fun m!6325276 () Bool)

(assert (=> b!5287703 m!6325276))

(assert (=> b!5287703 m!6325276))

(declare-fun m!6325278 () Bool)

(assert (=> b!5287703 m!6325278))

(declare-fun m!6325280 () Bool)

(assert (=> b!5287697 m!6325280))

(assert (=> b!5287697 m!6325174))

(declare-fun m!6325282 () Bool)

(assert (=> b!5287697 m!6325282))

(declare-fun m!6325284 () Bool)

(assert (=> b!5287694 m!6325284))

(declare-fun m!6325286 () Bool)

(assert (=> b!5287694 m!6325286))

(declare-fun m!6325288 () Bool)

(assert (=> b!5287689 m!6325288))

(assert (=> b!5287689 m!6325234))

(declare-fun m!6325290 () Bool)

(assert (=> b!5287689 m!6325290))

(declare-fun m!6325292 () Bool)

(assert (=> b!5287689 m!6325292))

(declare-fun m!6325294 () Bool)

(assert (=> b!5287689 m!6325294))

(declare-fun m!6325296 () Bool)

(assert (=> b!5287689 m!6325296))

(declare-fun m!6325298 () Bool)

(assert (=> b!5287689 m!6325298))

(check-sat (not b!5287711) (not b!5287692) (not b!5287690) (not b!5287706) (not b!5287713) (not b!5287689) (not b!5287708) (not b!5287700) (not b!5287695) (not b!5287715) (not b!5287682) (not b!5287710) (not start!558162) (not b!5287707) (not b!5287705) (not b!5287684) (not b!5287716) (not b!5287694) (not b!5287709) (not b!5287693) (not b!5287687) (not b!5287699) (not b!5287686) (not b!5287697) (not b!5287701) (not b!5287688) (not b!5287704) (not b!5287685) (not setNonEmpty!33929) (not b!5287714) (not b!5287717) (not b!5287703) (not b!5287691) tp_is_empty!39095)
(check-sat)
(get-model)

(declare-fun b!5287892 () Bool)

(declare-fun e!3287486 () (InoxSet Context!8610))

(declare-fun call!376643 () (InoxSet Context!8610))

(assert (=> b!5287892 (= e!3287486 call!376643)))

(declare-fun bm!376635 () Bool)

(declare-fun c!917041 () Bool)

(declare-fun call!376642 () (InoxSet Context!8610))

(declare-fun call!376644 () List!61063)

(assert (=> bm!376635 (= call!376642 (derivationStepZipperDown!369 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))) (ite c!917041 lt!2161302 (Context!8611 call!376644)) (h!67386 s!2326)))))

(declare-fun b!5287893 () Bool)

(declare-fun e!3287487 () (InoxSet Context!8610))

(assert (=> b!5287893 (= e!3287487 call!376643)))

(declare-fun bm!376636 () Bool)

(declare-fun c!917039 () Bool)

(declare-fun c!917040 () Bool)

(declare-fun $colon$colon!1358 (List!61063 Regex!14921) List!61063)

(assert (=> bm!376636 (= call!376644 ($colon$colon!1358 (exprs!4805 lt!2161302) (ite (or c!917040 c!917039) (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (regTwo!30354 (regOne!30354 r!7292)))))))

(declare-fun bm!376637 () Bool)

(declare-fun call!376641 () List!61063)

(declare-fun call!376640 () (InoxSet Context!8610))

(assert (=> bm!376637 (= call!376640 (derivationStepZipperDown!369 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))) (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641)) (h!67386 s!2326)))))

(declare-fun bm!376638 () Bool)

(declare-fun call!376645 () (InoxSet Context!8610))

(assert (=> bm!376638 (= call!376643 call!376645)))

(declare-fun bm!376639 () Bool)

(assert (=> bm!376639 (= call!376645 call!376640)))

(declare-fun b!5287894 () Bool)

(declare-fun e!3287485 () Bool)

(assert (=> b!5287894 (= c!917040 e!3287485)))

(declare-fun res!2242808 () Bool)

(assert (=> b!5287894 (=> (not res!2242808) (not e!3287485))))

(assert (=> b!5287894 (= res!2242808 ((_ is Concat!23766) (regTwo!30354 (regOne!30354 r!7292))))))

(declare-fun e!3287489 () (InoxSet Context!8610))

(declare-fun e!3287488 () (InoxSet Context!8610))

(assert (=> b!5287894 (= e!3287489 e!3287488)))

(declare-fun d!1701002 () Bool)

(declare-fun c!917038 () Bool)

(assert (=> d!1701002 (= c!917038 (and ((_ is ElementMatch!14921) (regTwo!30354 (regOne!30354 r!7292))) (= (c!916969 (regTwo!30354 (regOne!30354 r!7292))) (h!67386 s!2326))))))

(declare-fun e!3287484 () (InoxSet Context!8610))

(assert (=> d!1701002 (= (derivationStepZipperDown!369 (regTwo!30354 (regOne!30354 r!7292)) lt!2161302 (h!67386 s!2326)) e!3287484)))

(declare-fun bm!376640 () Bool)

(assert (=> bm!376640 (= call!376641 call!376644)))

(declare-fun b!5287895 () Bool)

(assert (=> b!5287895 (= e!3287489 ((_ map or) call!376640 call!376642))))

(declare-fun b!5287896 () Bool)

(assert (=> b!5287896 (= e!3287484 e!3287489)))

(assert (=> b!5287896 (= c!917041 ((_ is Union!14921) (regTwo!30354 (regOne!30354 r!7292))))))

(declare-fun b!5287897 () Bool)

(declare-fun c!917042 () Bool)

(assert (=> b!5287897 (= c!917042 ((_ is Star!14921) (regTwo!30354 (regOne!30354 r!7292))))))

(assert (=> b!5287897 (= e!3287487 e!3287486)))

(declare-fun b!5287898 () Bool)

(assert (=> b!5287898 (= e!3287486 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5287899 () Bool)

(assert (=> b!5287899 (= e!3287488 ((_ map or) call!376642 call!376645))))

(declare-fun b!5287900 () Bool)

(assert (=> b!5287900 (= e!3287485 (nullable!5090 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))))

(declare-fun b!5287901 () Bool)

(assert (=> b!5287901 (= e!3287484 (store ((as const (Array Context!8610 Bool)) false) lt!2161302 true))))

(declare-fun b!5287902 () Bool)

(assert (=> b!5287902 (= e!3287488 e!3287487)))

(assert (=> b!5287902 (= c!917039 ((_ is Concat!23766) (regTwo!30354 (regOne!30354 r!7292))))))

(assert (= (and d!1701002 c!917038) b!5287901))

(assert (= (and d!1701002 (not c!917038)) b!5287896))

(assert (= (and b!5287896 c!917041) b!5287895))

(assert (= (and b!5287896 (not c!917041)) b!5287894))

(assert (= (and b!5287894 res!2242808) b!5287900))

(assert (= (and b!5287894 c!917040) b!5287899))

(assert (= (and b!5287894 (not c!917040)) b!5287902))

(assert (= (and b!5287902 c!917039) b!5287893))

(assert (= (and b!5287902 (not c!917039)) b!5287897))

(assert (= (and b!5287897 c!917042) b!5287892))

(assert (= (and b!5287897 (not c!917042)) b!5287898))

(assert (= (or b!5287893 b!5287892) bm!376640))

(assert (= (or b!5287893 b!5287892) bm!376638))

(assert (= (or b!5287899 bm!376640) bm!376636))

(assert (= (or b!5287899 bm!376638) bm!376639))

(assert (= (or b!5287895 b!5287899) bm!376635))

(assert (= (or b!5287895 bm!376639) bm!376637))

(declare-fun m!6325464 () Bool)

(assert (=> b!5287901 m!6325464))

(declare-fun m!6325466 () Bool)

(assert (=> bm!376636 m!6325466))

(declare-fun m!6325468 () Bool)

(assert (=> bm!376637 m!6325468))

(declare-fun m!6325470 () Bool)

(assert (=> b!5287900 m!6325470))

(declare-fun m!6325472 () Bool)

(assert (=> bm!376635 m!6325472))

(assert (=> b!5287715 d!1701002))

(declare-fun b!5287903 () Bool)

(declare-fun e!3287492 () (InoxSet Context!8610))

(declare-fun call!376649 () (InoxSet Context!8610))

(assert (=> b!5287903 (= e!3287492 call!376649)))

(declare-fun bm!376641 () Bool)

(declare-fun call!376650 () List!61063)

(declare-fun call!376648 () (InoxSet Context!8610))

(declare-fun c!917046 () Bool)

(assert (=> bm!376641 (= call!376648 (derivationStepZipperDown!369 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))) (ite c!917046 lt!2161287 (Context!8611 call!376650)) (h!67386 s!2326)))))

(declare-fun b!5287904 () Bool)

(declare-fun e!3287493 () (InoxSet Context!8610))

(assert (=> b!5287904 (= e!3287493 call!376649)))

(declare-fun bm!376642 () Bool)

(declare-fun c!917044 () Bool)

(declare-fun c!917045 () Bool)

(assert (=> bm!376642 (= call!376650 ($colon$colon!1358 (exprs!4805 lt!2161287) (ite (or c!917045 c!917044) (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun call!376647 () List!61063)

(declare-fun call!376646 () (InoxSet Context!8610))

(declare-fun bm!376643 () Bool)

(assert (=> bm!376643 (= call!376646 (derivationStepZipperDown!369 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))) (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647)) (h!67386 s!2326)))))

(declare-fun bm!376644 () Bool)

(declare-fun call!376651 () (InoxSet Context!8610))

(assert (=> bm!376644 (= call!376649 call!376651)))

(declare-fun bm!376645 () Bool)

(assert (=> bm!376645 (= call!376651 call!376646)))

(declare-fun b!5287905 () Bool)

(declare-fun e!3287491 () Bool)

(assert (=> b!5287905 (= c!917045 e!3287491)))

(declare-fun res!2242809 () Bool)

(assert (=> b!5287905 (=> (not res!2242809) (not e!3287491))))

(assert (=> b!5287905 (= res!2242809 ((_ is Concat!23766) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun e!3287495 () (InoxSet Context!8610))

(declare-fun e!3287494 () (InoxSet Context!8610))

(assert (=> b!5287905 (= e!3287495 e!3287494)))

(declare-fun d!1701014 () Bool)

(declare-fun c!917043 () Bool)

(assert (=> d!1701014 (= c!917043 (and ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292))) (= (c!916969 (regOne!30354 (regOne!30354 r!7292))) (h!67386 s!2326))))))

(declare-fun e!3287490 () (InoxSet Context!8610))

(assert (=> d!1701014 (= (derivationStepZipperDown!369 (regOne!30354 (regOne!30354 r!7292)) lt!2161287 (h!67386 s!2326)) e!3287490)))

(declare-fun bm!376646 () Bool)

(assert (=> bm!376646 (= call!376647 call!376650)))

(declare-fun b!5287906 () Bool)

(assert (=> b!5287906 (= e!3287495 ((_ map or) call!376646 call!376648))))

(declare-fun b!5287907 () Bool)

(assert (=> b!5287907 (= e!3287490 e!3287495)))

(assert (=> b!5287907 (= c!917046 ((_ is Union!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun b!5287908 () Bool)

(declare-fun c!917047 () Bool)

(assert (=> b!5287908 (= c!917047 ((_ is Star!14921) (regOne!30354 (regOne!30354 r!7292))))))

(assert (=> b!5287908 (= e!3287493 e!3287492)))

(declare-fun b!5287909 () Bool)

(assert (=> b!5287909 (= e!3287492 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5287910 () Bool)

(assert (=> b!5287910 (= e!3287494 ((_ map or) call!376648 call!376651))))

(declare-fun b!5287911 () Bool)

(assert (=> b!5287911 (= e!3287491 (nullable!5090 (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun b!5287912 () Bool)

(assert (=> b!5287912 (= e!3287490 (store ((as const (Array Context!8610 Bool)) false) lt!2161287 true))))

(declare-fun b!5287913 () Bool)

(assert (=> b!5287913 (= e!3287494 e!3287493)))

(assert (=> b!5287913 (= c!917044 ((_ is Concat!23766) (regOne!30354 (regOne!30354 r!7292))))))

(assert (= (and d!1701014 c!917043) b!5287912))

(assert (= (and d!1701014 (not c!917043)) b!5287907))

(assert (= (and b!5287907 c!917046) b!5287906))

(assert (= (and b!5287907 (not c!917046)) b!5287905))

(assert (= (and b!5287905 res!2242809) b!5287911))

(assert (= (and b!5287905 c!917045) b!5287910))

(assert (= (and b!5287905 (not c!917045)) b!5287913))

(assert (= (and b!5287913 c!917044) b!5287904))

(assert (= (and b!5287913 (not c!917044)) b!5287908))

(assert (= (and b!5287908 c!917047) b!5287903))

(assert (= (and b!5287908 (not c!917047)) b!5287909))

(assert (= (or b!5287904 b!5287903) bm!376646))

(assert (= (or b!5287904 b!5287903) bm!376644))

(assert (= (or b!5287910 bm!376646) bm!376642))

(assert (= (or b!5287910 bm!376644) bm!376645))

(assert (= (or b!5287906 b!5287910) bm!376641))

(assert (= (or b!5287906 bm!376645) bm!376643))

(assert (=> b!5287912 m!6325294))

(declare-fun m!6325476 () Bool)

(assert (=> bm!376642 m!6325476))

(declare-fun m!6325478 () Bool)

(assert (=> bm!376643 m!6325478))

(declare-fun m!6325480 () Bool)

(assert (=> b!5287911 m!6325480))

(declare-fun m!6325482 () Bool)

(assert (=> bm!376641 m!6325482))

(assert (=> b!5287715 d!1701014))

(declare-fun d!1701018 () Bool)

(declare-fun c!917058 () Bool)

(declare-fun isEmpty!32895 (List!61062) Bool)

(assert (=> d!1701018 (= c!917058 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287510 () Bool)

(assert (=> d!1701018 (= (matchZipper!1165 lt!2161309 (t!374265 s!2326)) e!3287510)))

(declare-fun b!5287938 () Bool)

(declare-fun nullableZipper!1308 ((InoxSet Context!8610)) Bool)

(assert (=> b!5287938 (= e!3287510 (nullableZipper!1308 lt!2161309))))

(declare-fun b!5287939 () Bool)

(declare-fun head!11334 (List!61062) C!30112)

(declare-fun tail!10430 (List!61062) List!61062)

(assert (=> b!5287939 (= e!3287510 (matchZipper!1165 (derivationStepZipper!1164 lt!2161309 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701018 c!917058) b!5287938))

(assert (= (and d!1701018 (not c!917058)) b!5287939))

(declare-fun m!6325484 () Bool)

(assert (=> d!1701018 m!6325484))

(declare-fun m!6325486 () Bool)

(assert (=> b!5287938 m!6325486))

(declare-fun m!6325488 () Bool)

(assert (=> b!5287939 m!6325488))

(assert (=> b!5287939 m!6325488))

(declare-fun m!6325490 () Bool)

(assert (=> b!5287939 m!6325490))

(declare-fun m!6325492 () Bool)

(assert (=> b!5287939 m!6325492))

(assert (=> b!5287939 m!6325490))

(assert (=> b!5287939 m!6325492))

(declare-fun m!6325494 () Bool)

(assert (=> b!5287939 m!6325494))

(assert (=> b!5287695 d!1701018))

(declare-fun d!1701020 () Bool)

(declare-fun c!917059 () Bool)

(assert (=> d!1701020 (= c!917059 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287511 () Bool)

(assert (=> d!1701020 (= (matchZipper!1165 lt!2161314 (t!374265 s!2326)) e!3287511)))

(declare-fun b!5287940 () Bool)

(assert (=> b!5287940 (= e!3287511 (nullableZipper!1308 lt!2161314))))

(declare-fun b!5287941 () Bool)

(assert (=> b!5287941 (= e!3287511 (matchZipper!1165 (derivationStepZipper!1164 lt!2161314 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701020 c!917059) b!5287940))

(assert (= (and d!1701020 (not c!917059)) b!5287941))

(assert (=> d!1701020 m!6325484))

(declare-fun m!6325496 () Bool)

(assert (=> b!5287940 m!6325496))

(assert (=> b!5287941 m!6325488))

(assert (=> b!5287941 m!6325488))

(declare-fun m!6325498 () Bool)

(assert (=> b!5287941 m!6325498))

(assert (=> b!5287941 m!6325492))

(assert (=> b!5287941 m!6325498))

(assert (=> b!5287941 m!6325492))

(declare-fun m!6325500 () Bool)

(assert (=> b!5287941 m!6325500))

(assert (=> b!5287695 d!1701020))

(declare-fun d!1701022 () Bool)

(declare-fun c!917060 () Bool)

(assert (=> d!1701022 (= c!917060 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287512 () Bool)

(assert (=> d!1701022 (= (matchZipper!1165 lt!2161296 (t!374265 s!2326)) e!3287512)))

(declare-fun b!5287942 () Bool)

(assert (=> b!5287942 (= e!3287512 (nullableZipper!1308 lt!2161296))))

(declare-fun b!5287943 () Bool)

(assert (=> b!5287943 (= e!3287512 (matchZipper!1165 (derivationStepZipper!1164 lt!2161296 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701022 c!917060) b!5287942))

(assert (= (and d!1701022 (not c!917060)) b!5287943))

(assert (=> d!1701022 m!6325484))

(declare-fun m!6325502 () Bool)

(assert (=> b!5287942 m!6325502))

(assert (=> b!5287943 m!6325488))

(assert (=> b!5287943 m!6325488))

(declare-fun m!6325504 () Bool)

(assert (=> b!5287943 m!6325504))

(assert (=> b!5287943 m!6325492))

(assert (=> b!5287943 m!6325504))

(assert (=> b!5287943 m!6325492))

(declare-fun m!6325506 () Bool)

(assert (=> b!5287943 m!6325506))

(assert (=> b!5287695 d!1701022))

(declare-fun e!3287527 () Bool)

(declare-fun d!1701024 () Bool)

(assert (=> d!1701024 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161298) (t!374265 s!2326)) e!3287527)))

(declare-fun res!2242820 () Bool)

(assert (=> d!1701024 (=> res!2242820 e!3287527)))

(assert (=> d!1701024 (= res!2242820 (matchZipper!1165 lt!2161296 (t!374265 s!2326)))))

(declare-fun lt!2161370 () Unit!153202)

(declare-fun choose!39485 ((InoxSet Context!8610) (InoxSet Context!8610) List!61062) Unit!153202)

(assert (=> d!1701024 (= lt!2161370 (choose!39485 lt!2161296 lt!2161298 (t!374265 s!2326)))))

(assert (=> d!1701024 (= (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161296 lt!2161298 (t!374265 s!2326)) lt!2161370)))

(declare-fun b!5287966 () Bool)

(assert (=> b!5287966 (= e!3287527 (matchZipper!1165 lt!2161298 (t!374265 s!2326)))))

(assert (= (and d!1701024 (not res!2242820)) b!5287966))

(declare-fun m!6325546 () Bool)

(assert (=> d!1701024 m!6325546))

(assert (=> d!1701024 m!6325178))

(declare-fun m!6325548 () Bool)

(assert (=> d!1701024 m!6325548))

(assert (=> b!5287966 m!6325168))

(assert (=> b!5287695 d!1701024))

(declare-fun bs!1225231 () Bool)

(declare-fun d!1701030 () Bool)

(assert (= bs!1225231 (and d!1701030 b!5287700)))

(declare-fun lambda!267584 () Int)

(assert (=> bs!1225231 (= lambda!267584 lambda!267549)))

(assert (=> d!1701030 (= (inv!80549 (h!67388 zl!343)) (forall!14329 (exprs!4805 (h!67388 zl!343)) lambda!267584))))

(declare-fun bs!1225232 () Bool)

(assert (= bs!1225232 d!1701030))

(declare-fun m!6325550 () Bool)

(assert (=> bs!1225232 m!6325550))

(assert (=> b!5287693 d!1701030))

(declare-fun b!5288013 () Bool)

(assert (=> b!5288013 true))

(declare-fun bs!1225238 () Bool)

(declare-fun b!5288015 () Bool)

(assert (= bs!1225238 (and b!5288015 b!5288013)))

(declare-fun lambda!267598 () Int)

(declare-fun lambda!267595 () Int)

(declare-fun lt!2161384 () Int)

(declare-fun lt!2161386 () Int)

(assert (=> bs!1225238 (= (= lt!2161384 lt!2161386) (= lambda!267598 lambda!267595))))

(assert (=> b!5288015 true))

(declare-fun d!1701032 () Bool)

(declare-fun e!3287555 () Bool)

(assert (=> d!1701032 e!3287555))

(declare-fun res!2242837 () Bool)

(assert (=> d!1701032 (=> (not res!2242837) (not e!3287555))))

(assert (=> d!1701032 (= res!2242837 (>= lt!2161384 0))))

(declare-fun e!3287556 () Int)

(assert (=> d!1701032 (= lt!2161384 e!3287556)))

(declare-fun c!917090 () Bool)

(assert (=> d!1701032 (= c!917090 ((_ is Cons!60940) lt!2161303))))

(assert (=> d!1701032 (= (zipperDepth!38 lt!2161303) lt!2161384)))

(assert (=> b!5288013 (= e!3287556 lt!2161386)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!20 (Context!8610) Int)

(assert (=> b!5288013 (= lt!2161386 (maxBigInt!0 (contextDepth!20 (h!67388 lt!2161303)) (zipperDepth!38 (t!374267 lt!2161303))))))

(declare-fun lambda!267594 () Int)

(declare-fun lt!2161383 () Unit!153202)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!14 (List!61064 Int Int Int) Unit!153202)

(assert (=> b!5288013 (= lt!2161383 (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 lt!2161303) lt!2161386 (zipperDepth!38 (t!374267 lt!2161303)) lambda!267594))))

(declare-fun forall!14331 (List!61064 Int) Bool)

(assert (=> b!5288013 (forall!14331 (t!374267 lt!2161303) lambda!267595)))

(declare-fun lt!2161385 () Unit!153202)

(assert (=> b!5288013 (= lt!2161385 lt!2161383)))

(declare-fun b!5288014 () Bool)

(assert (=> b!5288014 (= e!3287556 0)))

(assert (=> b!5288015 (= e!3287555 (forall!14331 lt!2161303 lambda!267598))))

(assert (= (and d!1701032 c!917090) b!5288013))

(assert (= (and d!1701032 (not c!917090)) b!5288014))

(assert (= (and d!1701032 res!2242837) b!5288015))

(declare-fun m!6325588 () Bool)

(assert (=> b!5288013 m!6325588))

(assert (=> b!5288013 m!6325588))

(declare-fun m!6325590 () Bool)

(assert (=> b!5288013 m!6325590))

(declare-fun m!6325592 () Bool)

(assert (=> b!5288013 m!6325592))

(assert (=> b!5288013 m!6325590))

(declare-fun m!6325594 () Bool)

(assert (=> b!5288013 m!6325594))

(declare-fun m!6325596 () Bool)

(assert (=> b!5288013 m!6325596))

(assert (=> b!5288013 m!6325590))

(declare-fun m!6325598 () Bool)

(assert (=> b!5288015 m!6325598))

(assert (=> b!5287694 d!1701032))

(declare-fun bs!1225239 () Bool)

(declare-fun b!5288022 () Bool)

(assert (= bs!1225239 (and b!5288022 b!5288013)))

(declare-fun lambda!267599 () Int)

(assert (=> bs!1225239 (= lambda!267599 lambda!267594)))

(declare-fun lt!2161390 () Int)

(declare-fun lambda!267600 () Int)

(assert (=> bs!1225239 (= (= lt!2161390 lt!2161386) (= lambda!267600 lambda!267595))))

(declare-fun bs!1225240 () Bool)

(assert (= bs!1225240 (and b!5288022 b!5288015)))

(assert (=> bs!1225240 (= (= lt!2161390 lt!2161384) (= lambda!267600 lambda!267598))))

(assert (=> b!5288022 true))

(declare-fun bs!1225241 () Bool)

(declare-fun b!5288024 () Bool)

(assert (= bs!1225241 (and b!5288024 b!5288013)))

(declare-fun lt!2161388 () Int)

(declare-fun lambda!267601 () Int)

(assert (=> bs!1225241 (= (= lt!2161388 lt!2161386) (= lambda!267601 lambda!267595))))

(declare-fun bs!1225242 () Bool)

(assert (= bs!1225242 (and b!5288024 b!5288015)))

(assert (=> bs!1225242 (= (= lt!2161388 lt!2161384) (= lambda!267601 lambda!267598))))

(declare-fun bs!1225243 () Bool)

(assert (= bs!1225243 (and b!5288024 b!5288022)))

(assert (=> bs!1225243 (= (= lt!2161388 lt!2161390) (= lambda!267601 lambda!267600))))

(assert (=> b!5288024 true))

(declare-fun d!1701040 () Bool)

(declare-fun e!3287559 () Bool)

(assert (=> d!1701040 e!3287559))

(declare-fun res!2242842 () Bool)

(assert (=> d!1701040 (=> (not res!2242842) (not e!3287559))))

(assert (=> d!1701040 (= res!2242842 (>= lt!2161388 0))))

(declare-fun e!3287560 () Int)

(assert (=> d!1701040 (= lt!2161388 e!3287560)))

(declare-fun c!917091 () Bool)

(assert (=> d!1701040 (= c!917091 ((_ is Cons!60940) zl!343))))

(assert (=> d!1701040 (= (zipperDepth!38 zl!343) lt!2161388)))

(assert (=> b!5288022 (= e!3287560 lt!2161390)))

(assert (=> b!5288022 (= lt!2161390 (maxBigInt!0 (contextDepth!20 (h!67388 zl!343)) (zipperDepth!38 (t!374267 zl!343))))))

(declare-fun lt!2161387 () Unit!153202)

(assert (=> b!5288022 (= lt!2161387 (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 zl!343) lt!2161390 (zipperDepth!38 (t!374267 zl!343)) lambda!267599))))

(assert (=> b!5288022 (forall!14331 (t!374267 zl!343) lambda!267600)))

(declare-fun lt!2161389 () Unit!153202)

(assert (=> b!5288022 (= lt!2161389 lt!2161387)))

(declare-fun b!5288023 () Bool)

(assert (=> b!5288023 (= e!3287560 0)))

(assert (=> b!5288024 (= e!3287559 (forall!14331 zl!343 lambda!267601))))

(assert (= (and d!1701040 c!917091) b!5288022))

(assert (= (and d!1701040 (not c!917091)) b!5288023))

(assert (= (and d!1701040 res!2242842) b!5288024))

(declare-fun m!6325600 () Bool)

(assert (=> b!5288022 m!6325600))

(assert (=> b!5288022 m!6325600))

(declare-fun m!6325602 () Bool)

(assert (=> b!5288022 m!6325602))

(declare-fun m!6325604 () Bool)

(assert (=> b!5288022 m!6325604))

(assert (=> b!5288022 m!6325602))

(declare-fun m!6325606 () Bool)

(assert (=> b!5288022 m!6325606))

(declare-fun m!6325608 () Bool)

(assert (=> b!5288022 m!6325608))

(assert (=> b!5288022 m!6325602))

(declare-fun m!6325610 () Bool)

(assert (=> b!5288024 m!6325610))

(assert (=> b!5287694 d!1701040))

(declare-fun d!1701042 () Bool)

(declare-fun c!917092 () Bool)

(assert (=> d!1701042 (= c!917092 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287561 () Bool)

(assert (=> d!1701042 (= (matchZipper!1165 lt!2161298 (t!374265 s!2326)) e!3287561)))

(declare-fun b!5288025 () Bool)

(assert (=> b!5288025 (= e!3287561 (nullableZipper!1308 lt!2161298))))

(declare-fun b!5288026 () Bool)

(assert (=> b!5288026 (= e!3287561 (matchZipper!1165 (derivationStepZipper!1164 lt!2161298 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701042 c!917092) b!5288025))

(assert (= (and d!1701042 (not c!917092)) b!5288026))

(assert (=> d!1701042 m!6325484))

(declare-fun m!6325612 () Bool)

(assert (=> b!5288025 m!6325612))

(assert (=> b!5288026 m!6325488))

(assert (=> b!5288026 m!6325488))

(declare-fun m!6325614 () Bool)

(assert (=> b!5288026 m!6325614))

(assert (=> b!5288026 m!6325492))

(assert (=> b!5288026 m!6325614))

(assert (=> b!5288026 m!6325492))

(declare-fun m!6325616 () Bool)

(assert (=> b!5288026 m!6325616))

(assert (=> b!5287714 d!1701042))

(declare-fun b!5288056 () Bool)

(declare-fun res!2242859 () Bool)

(declare-fun e!3287585 () Bool)

(assert (=> b!5288056 (=> (not res!2242859) (not e!3287585))))

(declare-fun call!376664 () Bool)

(assert (=> b!5288056 (= res!2242859 call!376664)))

(declare-fun e!3287589 () Bool)

(assert (=> b!5288056 (= e!3287589 e!3287585)))

(declare-fun b!5288057 () Bool)

(declare-fun e!3287588 () Bool)

(declare-fun e!3287584 () Bool)

(assert (=> b!5288057 (= e!3287588 e!3287584)))

(declare-fun res!2242856 () Bool)

(assert (=> b!5288057 (= res!2242856 (not (nullable!5090 (reg!15250 r!7292))))))

(assert (=> b!5288057 (=> (not res!2242856) (not e!3287584))))

(declare-fun b!5288058 () Bool)

(assert (=> b!5288058 (= e!3287588 e!3287589)))

(declare-fun c!917101 () Bool)

(assert (=> b!5288058 (= c!917101 ((_ is Union!14921) r!7292))))

(declare-fun b!5288059 () Bool)

(declare-fun e!3287586 () Bool)

(assert (=> b!5288059 (= e!3287586 e!3287588)))

(declare-fun c!917102 () Bool)

(assert (=> b!5288059 (= c!917102 ((_ is Star!14921) r!7292))))

(declare-fun d!1701044 () Bool)

(declare-fun res!2242860 () Bool)

(assert (=> d!1701044 (=> res!2242860 e!3287586)))

(assert (=> d!1701044 (= res!2242860 ((_ is ElementMatch!14921) r!7292))))

(assert (=> d!1701044 (= (validRegex!6657 r!7292) e!3287586)))

(declare-fun b!5288060 () Bool)

(declare-fun res!2242858 () Bool)

(declare-fun e!3287587 () Bool)

(assert (=> b!5288060 (=> res!2242858 e!3287587)))

(assert (=> b!5288060 (= res!2242858 (not ((_ is Concat!23766) r!7292)))))

(assert (=> b!5288060 (= e!3287589 e!3287587)))

(declare-fun b!5288061 () Bool)

(declare-fun call!376666 () Bool)

(assert (=> b!5288061 (= e!3287584 call!376666)))

(declare-fun bm!376659 () Bool)

(assert (=> bm!376659 (= call!376664 (validRegex!6657 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))

(declare-fun bm!376660 () Bool)

(assert (=> bm!376660 (= call!376666 (validRegex!6657 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))

(declare-fun b!5288062 () Bool)

(declare-fun call!376665 () Bool)

(assert (=> b!5288062 (= e!3287585 call!376665)))

(declare-fun bm!376661 () Bool)

(assert (=> bm!376661 (= call!376665 call!376666)))

(declare-fun b!5288063 () Bool)

(declare-fun e!3287583 () Bool)

(assert (=> b!5288063 (= e!3287587 e!3287583)))

(declare-fun res!2242857 () Bool)

(assert (=> b!5288063 (=> (not res!2242857) (not e!3287583))))

(assert (=> b!5288063 (= res!2242857 call!376664)))

(declare-fun b!5288064 () Bool)

(assert (=> b!5288064 (= e!3287583 call!376665)))

(assert (= (and d!1701044 (not res!2242860)) b!5288059))

(assert (= (and b!5288059 c!917102) b!5288057))

(assert (= (and b!5288059 (not c!917102)) b!5288058))

(assert (= (and b!5288057 res!2242856) b!5288061))

(assert (= (and b!5288058 c!917101) b!5288056))

(assert (= (and b!5288058 (not c!917101)) b!5288060))

(assert (= (and b!5288056 res!2242859) b!5288062))

(assert (= (and b!5288060 (not res!2242858)) b!5288063))

(assert (= (and b!5288063 res!2242857) b!5288064))

(assert (= (or b!5288062 b!5288064) bm!376661))

(assert (= (or b!5288056 b!5288063) bm!376659))

(assert (= (or b!5288061 bm!376661) bm!376660))

(declare-fun m!6325624 () Bool)

(assert (=> b!5288057 m!6325624))

(declare-fun m!6325626 () Bool)

(assert (=> bm!376659 m!6325626))

(declare-fun m!6325628 () Bool)

(assert (=> bm!376660 m!6325628))

(assert (=> start!558162 d!1701044))

(declare-fun d!1701048 () Bool)

(declare-fun c!917103 () Bool)

(assert (=> d!1701048 (= c!917103 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287590 () Bool)

(assert (=> d!1701048 (= (matchZipper!1165 lt!2161293 (t!374265 s!2326)) e!3287590)))

(declare-fun b!5288065 () Bool)

(assert (=> b!5288065 (= e!3287590 (nullableZipper!1308 lt!2161293))))

(declare-fun b!5288066 () Bool)

(assert (=> b!5288066 (= e!3287590 (matchZipper!1165 (derivationStepZipper!1164 lt!2161293 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701048 c!917103) b!5288065))

(assert (= (and d!1701048 (not c!917103)) b!5288066))

(assert (=> d!1701048 m!6325484))

(declare-fun m!6325630 () Bool)

(assert (=> b!5288065 m!6325630))

(assert (=> b!5288066 m!6325488))

(assert (=> b!5288066 m!6325488))

(declare-fun m!6325632 () Bool)

(assert (=> b!5288066 m!6325632))

(assert (=> b!5288066 m!6325492))

(assert (=> b!5288066 m!6325632))

(assert (=> b!5288066 m!6325492))

(declare-fun m!6325634 () Bool)

(assert (=> b!5288066 m!6325634))

(assert (=> b!5287692 d!1701048))

(declare-fun d!1701050 () Bool)

(declare-fun nullableFct!1460 (Regex!14921) Bool)

(assert (=> d!1701050 (= (nullable!5090 (regOne!30354 (regOne!30354 r!7292))) (nullableFct!1460 (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun bs!1225260 () Bool)

(assert (= bs!1225260 d!1701050))

(declare-fun m!6325650 () Bool)

(assert (=> bs!1225260 m!6325650))

(assert (=> b!5287713 d!1701050))

(declare-fun bs!1225289 () Bool)

(declare-fun d!1701056 () Bool)

(assert (= bs!1225289 (and d!1701056 b!5287700)))

(declare-fun lambda!267611 () Int)

(assert (=> bs!1225289 (= lambda!267611 lambda!267549)))

(declare-fun bs!1225290 () Bool)

(assert (= bs!1225290 (and d!1701056 d!1701030)))

(assert (=> bs!1225290 (= lambda!267611 lambda!267584)))

(declare-fun e!3287613 () Bool)

(assert (=> d!1701056 e!3287613))

(declare-fun res!2242869 () Bool)

(assert (=> d!1701056 (=> (not res!2242869) (not e!3287613))))

(declare-fun lt!2161399 () Regex!14921)

(assert (=> d!1701056 (= res!2242869 (validRegex!6657 lt!2161399))))

(declare-fun e!3287614 () Regex!14921)

(assert (=> d!1701056 (= lt!2161399 e!3287614)))

(declare-fun c!917118 () Bool)

(declare-fun e!3287611 () Bool)

(assert (=> d!1701056 (= c!917118 e!3287611)))

(declare-fun res!2242868 () Bool)

(assert (=> d!1701056 (=> (not res!2242868) (not e!3287611))))

(assert (=> d!1701056 (= res!2242868 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701056 (forall!14329 (exprs!4805 (h!67388 zl!343)) lambda!267611)))

(assert (=> d!1701056 (= (generalisedConcat!590 (exprs!4805 (h!67388 zl!343))) lt!2161399)))

(declare-fun b!5288100 () Bool)

(declare-fun e!3287615 () Regex!14921)

(assert (=> b!5288100 (= e!3287615 (Concat!23766 (h!67387 (exprs!4805 (h!67388 zl!343))) (generalisedConcat!590 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5288101 () Bool)

(assert (=> b!5288101 (= e!3287614 e!3287615)))

(declare-fun c!917117 () Bool)

(assert (=> b!5288101 (= c!917117 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(declare-fun b!5288102 () Bool)

(declare-fun e!3287616 () Bool)

(declare-fun e!3287612 () Bool)

(assert (=> b!5288102 (= e!3287616 e!3287612)))

(declare-fun c!917119 () Bool)

(declare-fun tail!10432 (List!61063) List!61063)

(assert (=> b!5288102 (= c!917119 (isEmpty!32892 (tail!10432 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5288103 () Bool)

(assert (=> b!5288103 (= e!3287614 (h!67387 (exprs!4805 (h!67388 zl!343))))))

(declare-fun b!5288104 () Bool)

(declare-fun isEmptyExpr!843 (Regex!14921) Bool)

(assert (=> b!5288104 (= e!3287616 (isEmptyExpr!843 lt!2161399))))

(declare-fun b!5288105 () Bool)

(declare-fun isConcat!366 (Regex!14921) Bool)

(assert (=> b!5288105 (= e!3287612 (isConcat!366 lt!2161399))))

(declare-fun b!5288106 () Bool)

(assert (=> b!5288106 (= e!3287613 e!3287616)))

(declare-fun c!917120 () Bool)

(assert (=> b!5288106 (= c!917120 (isEmpty!32892 (exprs!4805 (h!67388 zl!343))))))

(declare-fun b!5288107 () Bool)

(assert (=> b!5288107 (= e!3287611 (isEmpty!32892 (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5288108 () Bool)

(assert (=> b!5288108 (= e!3287615 EmptyExpr!14921)))

(declare-fun b!5288109 () Bool)

(declare-fun head!11335 (List!61063) Regex!14921)

(assert (=> b!5288109 (= e!3287612 (= lt!2161399 (head!11335 (exprs!4805 (h!67388 zl!343)))))))

(assert (= (and d!1701056 res!2242868) b!5288107))

(assert (= (and d!1701056 c!917118) b!5288103))

(assert (= (and d!1701056 (not c!917118)) b!5288101))

(assert (= (and b!5288101 c!917117) b!5288100))

(assert (= (and b!5288101 (not c!917117)) b!5288108))

(assert (= (and d!1701056 res!2242869) b!5288106))

(assert (= (and b!5288106 c!917120) b!5288104))

(assert (= (and b!5288106 (not c!917120)) b!5288102))

(assert (= (and b!5288102 c!917119) b!5288109))

(assert (= (and b!5288102 (not c!917119)) b!5288105))

(declare-fun m!6325670 () Bool)

(assert (=> b!5288105 m!6325670))

(declare-fun m!6325672 () Bool)

(assert (=> b!5288104 m!6325672))

(assert (=> b!5288107 m!6325172))

(declare-fun m!6325674 () Bool)

(assert (=> d!1701056 m!6325674))

(declare-fun m!6325676 () Bool)

(assert (=> d!1701056 m!6325676))

(declare-fun m!6325678 () Bool)

(assert (=> b!5288109 m!6325678))

(declare-fun m!6325680 () Bool)

(assert (=> b!5288102 m!6325680))

(assert (=> b!5288102 m!6325680))

(declare-fun m!6325682 () Bool)

(assert (=> b!5288102 m!6325682))

(declare-fun m!6325684 () Bool)

(assert (=> b!5288106 m!6325684))

(declare-fun m!6325686 () Bool)

(assert (=> b!5288100 m!6325686))

(assert (=> b!5287711 d!1701056))

(declare-fun d!1701068 () Bool)

(declare-fun e!3287628 () Bool)

(assert (=> d!1701068 e!3287628))

(declare-fun res!2242881 () Bool)

(assert (=> d!1701068 (=> (not res!2242881) (not e!3287628))))

(declare-fun lt!2161405 () List!61064)

(declare-fun noDuplicate!1262 (List!61064) Bool)

(assert (=> d!1701068 (= res!2242881 (noDuplicate!1262 lt!2161405))))

(declare-fun choose!39487 ((InoxSet Context!8610)) List!61064)

(assert (=> d!1701068 (= lt!2161405 (choose!39487 z!1189))))

(assert (=> d!1701068 (= (toList!8705 z!1189) lt!2161405)))

(declare-fun b!5288125 () Bool)

(declare-fun content!10848 (List!61064) (InoxSet Context!8610))

(assert (=> b!5288125 (= e!3287628 (= (content!10848 lt!2161405) z!1189))))

(assert (= (and d!1701068 res!2242881) b!5288125))

(declare-fun m!6325702 () Bool)

(assert (=> d!1701068 m!6325702))

(declare-fun m!6325704 () Bool)

(assert (=> d!1701068 m!6325704))

(declare-fun m!6325706 () Bool)

(assert (=> b!5288125 m!6325706))

(assert (=> b!5287691 d!1701068))

(declare-fun d!1701072 () Bool)

(declare-fun choose!39488 ((InoxSet Context!8610) Int) (InoxSet Context!8610))

(assert (=> d!1701072 (= (flatMap!648 lt!2161283 lambda!267546) (choose!39488 lt!2161283 lambda!267546))))

(declare-fun bs!1225291 () Bool)

(assert (= bs!1225291 d!1701072))

(declare-fun m!6325712 () Bool)

(assert (=> bs!1225291 m!6325712))

(assert (=> b!5287689 d!1701072))

(declare-fun d!1701076 () Bool)

(declare-fun dynLambda!24091 (Int Context!8610) (InoxSet Context!8610))

(assert (=> d!1701076 (= (flatMap!648 lt!2161283 lambda!267546) (dynLambda!24091 lambda!267546 lt!2161279))))

(declare-fun lt!2161408 () Unit!153202)

(declare-fun choose!39489 ((InoxSet Context!8610) Context!8610 Int) Unit!153202)

(assert (=> d!1701076 (= lt!2161408 (choose!39489 lt!2161283 lt!2161279 lambda!267546))))

(assert (=> d!1701076 (= lt!2161283 (store ((as const (Array Context!8610 Bool)) false) lt!2161279 true))))

(assert (=> d!1701076 (= (lemmaFlatMapOnSingletonSet!180 lt!2161283 lt!2161279 lambda!267546) lt!2161408)))

(declare-fun b_lambda!203923 () Bool)

(assert (=> (not b_lambda!203923) (not d!1701076)))

(declare-fun bs!1225292 () Bool)

(assert (= bs!1225292 d!1701076))

(assert (=> bs!1225292 m!6325298))

(declare-fun m!6325714 () Bool)

(assert (=> bs!1225292 m!6325714))

(declare-fun m!6325716 () Bool)

(assert (=> bs!1225292 m!6325716))

(assert (=> bs!1225292 m!6325288))

(assert (=> b!5287689 d!1701076))

(declare-fun b!5288166 () Bool)

(declare-fun call!376671 () (InoxSet Context!8610))

(declare-fun e!3287652 () (InoxSet Context!8610))

(assert (=> b!5288166 (= e!3287652 ((_ map or) call!376671 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (h!67386 s!2326))))))

(declare-fun b!5288167 () Bool)

(declare-fun e!3287653 () Bool)

(assert (=> b!5288167 (= e!3287653 (nullable!5090 (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun b!5288168 () Bool)

(declare-fun e!3287651 () (InoxSet Context!8610))

(assert (=> b!5288168 (= e!3287651 call!376671)))

(declare-fun b!5288169 () Bool)

(assert (=> b!5288169 (= e!3287652 e!3287651)))

(declare-fun c!917133 () Bool)

(assert (=> b!5288169 (= c!917133 ((_ is Cons!60939) (exprs!4805 lt!2161279)))))

(declare-fun b!5288170 () Bool)

(assert (=> b!5288170 (= e!3287651 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701078 () Bool)

(declare-fun c!917134 () Bool)

(assert (=> d!1701078 (= c!917134 e!3287653)))

(declare-fun res!2242902 () Bool)

(assert (=> d!1701078 (=> (not res!2242902) (not e!3287653))))

(assert (=> d!1701078 (= res!2242902 ((_ is Cons!60939) (exprs!4805 lt!2161279)))))

(assert (=> d!1701078 (= (derivationStepZipperUp!293 lt!2161279 (h!67386 s!2326)) e!3287652)))

(declare-fun bm!376666 () Bool)

(assert (=> bm!376666 (= call!376671 (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161279)) (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (h!67386 s!2326)))))

(assert (= (and d!1701078 res!2242902) b!5288167))

(assert (= (and d!1701078 c!917134) b!5288166))

(assert (= (and d!1701078 (not c!917134)) b!5288169))

(assert (= (and b!5288169 c!917133) b!5288168))

(assert (= (and b!5288169 (not c!917133)) b!5288170))

(assert (= (or b!5288166 b!5288168) bm!376666))

(declare-fun m!6325718 () Bool)

(assert (=> b!5288166 m!6325718))

(declare-fun m!6325720 () Bool)

(assert (=> b!5288167 m!6325720))

(declare-fun m!6325722 () Bool)

(assert (=> bm!376666 m!6325722))

(assert (=> b!5287689 d!1701078))

(declare-fun bs!1225293 () Bool)

(declare-fun d!1701080 () Bool)

(assert (= bs!1225293 (and d!1701080 b!5287682)))

(declare-fun lambda!267614 () Int)

(assert (=> bs!1225293 (= lambda!267614 lambda!267546)))

(assert (=> d!1701080 true))

(assert (=> d!1701080 (= (derivationStepZipper!1164 lt!2161283 (h!67386 s!2326)) (flatMap!648 lt!2161283 lambda!267614))))

(declare-fun bs!1225294 () Bool)

(assert (= bs!1225294 d!1701080))

(declare-fun m!6325724 () Bool)

(assert (=> bs!1225294 m!6325724))

(assert (=> b!5287689 d!1701080))

(declare-fun b!5288173 () Bool)

(declare-fun e!3287655 () (InoxSet Context!8610))

(declare-fun call!376674 () (InoxSet Context!8610))

(assert (=> b!5288173 (= e!3287655 ((_ map or) call!376674 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (h!67386 s!2326))))))

(declare-fun b!5288174 () Bool)

(declare-fun e!3287656 () Bool)

(assert (=> b!5288174 (= e!3287656 (nullable!5090 (h!67387 (exprs!4805 lt!2161287))))))

(declare-fun b!5288175 () Bool)

(declare-fun e!3287654 () (InoxSet Context!8610))

(assert (=> b!5288175 (= e!3287654 call!376674)))

(declare-fun b!5288176 () Bool)

(assert (=> b!5288176 (= e!3287655 e!3287654)))

(declare-fun c!917137 () Bool)

(assert (=> b!5288176 (= c!917137 ((_ is Cons!60939) (exprs!4805 lt!2161287)))))

(declare-fun b!5288177 () Bool)

(assert (=> b!5288177 (= e!3287654 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701082 () Bool)

(declare-fun c!917138 () Bool)

(assert (=> d!1701082 (= c!917138 e!3287656)))

(declare-fun res!2242903 () Bool)

(assert (=> d!1701082 (=> (not res!2242903) (not e!3287656))))

(assert (=> d!1701082 (= res!2242903 ((_ is Cons!60939) (exprs!4805 lt!2161287)))))

(assert (=> d!1701082 (= (derivationStepZipperUp!293 lt!2161287 (h!67386 s!2326)) e!3287655)))

(declare-fun bm!376669 () Bool)

(assert (=> bm!376669 (= call!376674 (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161287)) (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (h!67386 s!2326)))))

(assert (= (and d!1701082 res!2242903) b!5288174))

(assert (= (and d!1701082 c!917138) b!5288173))

(assert (= (and d!1701082 (not c!917138)) b!5288176))

(assert (= (and b!5288176 c!917137) b!5288175))

(assert (= (and b!5288176 (not c!917137)) b!5288177))

(assert (= (or b!5288173 b!5288175) bm!376669))

(declare-fun m!6325726 () Bool)

(assert (=> b!5288173 m!6325726))

(declare-fun m!6325728 () Bool)

(assert (=> b!5288174 m!6325728))

(declare-fun m!6325730 () Bool)

(assert (=> bm!376669 m!6325730))

(assert (=> b!5287689 d!1701082))

(declare-fun d!1701084 () Bool)

(declare-fun lt!2161415 () Int)

(assert (=> d!1701084 (>= lt!2161415 0)))

(declare-fun e!3287673 () Int)

(assert (=> d!1701084 (= lt!2161415 e!3287673)))

(declare-fun c!917148 () Bool)

(assert (=> d!1701084 (= c!917148 ((_ is Cons!60939) (exprs!4805 lt!2161279)))))

(assert (=> d!1701084 (= (contextDepthTotal!62 lt!2161279) lt!2161415)))

(declare-fun b!5288210 () Bool)

(declare-fun regexDepthTotal!20 (Regex!14921) Int)

(assert (=> b!5288210 (= e!3287673 (+ (regexDepthTotal!20 (h!67387 (exprs!4805 lt!2161279))) (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 lt!2161279))))))))

(declare-fun b!5288211 () Bool)

(assert (=> b!5288211 (= e!3287673 1)))

(assert (= (and d!1701084 c!917148) b!5288210))

(assert (= (and d!1701084 (not c!917148)) b!5288211))

(declare-fun m!6325746 () Bool)

(assert (=> b!5288210 m!6325746))

(declare-fun m!6325748 () Bool)

(assert (=> b!5288210 m!6325748))

(assert (=> b!5287690 d!1701084))

(declare-fun d!1701090 () Bool)

(declare-fun lt!2161416 () Int)

(assert (=> d!1701090 (>= lt!2161416 0)))

(declare-fun e!3287674 () Int)

(assert (=> d!1701090 (= lt!2161416 e!3287674)))

(declare-fun c!917149 () Bool)

(assert (=> d!1701090 (= c!917149 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701090 (= (contextDepthTotal!62 (h!67388 zl!343)) lt!2161416)))

(declare-fun b!5288212 () Bool)

(assert (=> b!5288212 (= e!3287674 (+ (regexDepthTotal!20 (h!67387 (exprs!4805 (h!67388 zl!343)))) (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5288213 () Bool)

(assert (=> b!5288213 (= e!3287674 1)))

(assert (= (and d!1701090 c!917149) b!5288212))

(assert (= (and d!1701090 (not c!917149)) b!5288213))

(declare-fun m!6325752 () Bool)

(assert (=> b!5288212 m!6325752))

(declare-fun m!6325754 () Bool)

(assert (=> b!5288212 m!6325754))

(assert (=> b!5287690 d!1701090))

(declare-fun d!1701094 () Bool)

(declare-fun c!917150 () Bool)

(assert (=> d!1701094 (= c!917150 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287675 () Bool)

(assert (=> d!1701094 (= (matchZipper!1165 lt!2161292 (t!374265 s!2326)) e!3287675)))

(declare-fun b!5288214 () Bool)

(assert (=> b!5288214 (= e!3287675 (nullableZipper!1308 lt!2161292))))

(declare-fun b!5288215 () Bool)

(assert (=> b!5288215 (= e!3287675 (matchZipper!1165 (derivationStepZipper!1164 lt!2161292 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701094 c!917150) b!5288214))

(assert (= (and d!1701094 (not c!917150)) b!5288215))

(assert (=> d!1701094 m!6325484))

(declare-fun m!6325760 () Bool)

(assert (=> b!5288214 m!6325760))

(assert (=> b!5288215 m!6325488))

(assert (=> b!5288215 m!6325488))

(declare-fun m!6325762 () Bool)

(assert (=> b!5288215 m!6325762))

(assert (=> b!5288215 m!6325492))

(assert (=> b!5288215 m!6325762))

(assert (=> b!5288215 m!6325492))

(declare-fun m!6325764 () Bool)

(assert (=> b!5288215 m!6325764))

(assert (=> b!5287710 d!1701094))

(declare-fun d!1701100 () Bool)

(declare-fun c!917151 () Bool)

(assert (=> d!1701100 (= c!917151 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287677 () Bool)

(assert (=> d!1701100 (= (matchZipper!1165 lt!2161305 (t!374265 s!2326)) e!3287677)))

(declare-fun b!5288217 () Bool)

(assert (=> b!5288217 (= e!3287677 (nullableZipper!1308 lt!2161305))))

(declare-fun b!5288218 () Bool)

(assert (=> b!5288218 (= e!3287677 (matchZipper!1165 (derivationStepZipper!1164 lt!2161305 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701100 c!917151) b!5288217))

(assert (= (and d!1701100 (not c!917151)) b!5288218))

(assert (=> d!1701100 m!6325484))

(declare-fun m!6325770 () Bool)

(assert (=> b!5288217 m!6325770))

(assert (=> b!5288218 m!6325488))

(assert (=> b!5288218 m!6325488))

(declare-fun m!6325774 () Bool)

(assert (=> b!5288218 m!6325774))

(assert (=> b!5288218 m!6325492))

(assert (=> b!5288218 m!6325774))

(assert (=> b!5288218 m!6325492))

(declare-fun m!6325776 () Bool)

(assert (=> b!5288218 m!6325776))

(assert (=> b!5287710 d!1701100))

(declare-fun d!1701106 () Bool)

(assert (=> d!1701106 (= (flatMap!648 lt!2161312 lambda!267546) (dynLambda!24091 lambda!267546 lt!2161287))))

(declare-fun lt!2161419 () Unit!153202)

(assert (=> d!1701106 (= lt!2161419 (choose!39489 lt!2161312 lt!2161287 lambda!267546))))

(assert (=> d!1701106 (= lt!2161312 (store ((as const (Array Context!8610 Bool)) false) lt!2161287 true))))

(assert (=> d!1701106 (= (lemmaFlatMapOnSingletonSet!180 lt!2161312 lt!2161287 lambda!267546) lt!2161419)))

(declare-fun b_lambda!203925 () Bool)

(assert (=> (not b_lambda!203925) (not d!1701106)))

(declare-fun bs!1225299 () Bool)

(assert (= bs!1225299 d!1701106))

(assert (=> bs!1225299 m!6325240))

(declare-fun m!6325782 () Bool)

(assert (=> bs!1225299 m!6325782))

(declare-fun m!6325786 () Bool)

(assert (=> bs!1225299 m!6325786))

(assert (=> bs!1225299 m!6325294))

(assert (=> b!5287710 d!1701106))

(assert (=> b!5287710 d!1701082))

(declare-fun d!1701110 () Bool)

(assert (=> d!1701110 (= (flatMap!648 lt!2161312 lambda!267546) (choose!39488 lt!2161312 lambda!267546))))

(declare-fun bs!1225300 () Bool)

(assert (= bs!1225300 d!1701110))

(declare-fun m!6325788 () Bool)

(assert (=> bs!1225300 m!6325788))

(assert (=> b!5287710 d!1701110))

(declare-fun e!3287680 () Bool)

(declare-fun d!1701112 () Bool)

(assert (=> d!1701112 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161293) (t!374265 s!2326)) e!3287680)))

(declare-fun res!2242921 () Bool)

(assert (=> d!1701112 (=> res!2242921 e!3287680)))

(assert (=> d!1701112 (= res!2242921 (matchZipper!1165 lt!2161296 (t!374265 s!2326)))))

(declare-fun lt!2161420 () Unit!153202)

(assert (=> d!1701112 (= lt!2161420 (choose!39485 lt!2161296 lt!2161293 (t!374265 s!2326)))))

(assert (=> d!1701112 (= (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161296 lt!2161293 (t!374265 s!2326)) lt!2161420)))

(declare-fun b!5288223 () Bool)

(assert (=> b!5288223 (= e!3287680 (matchZipper!1165 lt!2161293 (t!374265 s!2326)))))

(assert (= (and d!1701112 (not res!2242921)) b!5288223))

(declare-fun m!6325796 () Bool)

(assert (=> d!1701112 m!6325796))

(assert (=> d!1701112 m!6325178))

(declare-fun m!6325798 () Bool)

(assert (=> d!1701112 m!6325798))

(assert (=> b!5288223 m!6325244))

(assert (=> b!5287710 d!1701112))

(declare-fun d!1701116 () Bool)

(assert (=> d!1701116 (= (isEmpty!32892 (t!374266 (exprs!4805 (h!67388 zl!343)))) ((_ is Nil!60939) (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> b!5287709 d!1701116))

(assert (=> b!5287687 d!1701042))

(declare-fun bs!1225302 () Bool)

(declare-fun d!1701120 () Bool)

(assert (= bs!1225302 (and d!1701120 b!5287700)))

(declare-fun lambda!267615 () Int)

(assert (=> bs!1225302 (= lambda!267615 lambda!267549)))

(declare-fun bs!1225303 () Bool)

(assert (= bs!1225303 (and d!1701120 d!1701030)))

(assert (=> bs!1225303 (= lambda!267615 lambda!267584)))

(declare-fun bs!1225304 () Bool)

(assert (= bs!1225304 (and d!1701120 d!1701056)))

(assert (=> bs!1225304 (= lambda!267615 lambda!267611)))

(assert (=> d!1701120 (= (inv!80549 setElem!33929) (forall!14329 (exprs!4805 setElem!33929) lambda!267615))))

(declare-fun bs!1225305 () Bool)

(assert (= bs!1225305 d!1701120))

(declare-fun m!6325804 () Bool)

(assert (=> bs!1225305 m!6325804))

(assert (=> setNonEmpty!33929 d!1701120))

(declare-fun d!1701122 () Bool)

(declare-fun e!3287739 () Bool)

(assert (=> d!1701122 e!3287739))

(declare-fun res!2242956 () Bool)

(assert (=> d!1701122 (=> res!2242956 e!3287739)))

(declare-fun e!3287738 () Bool)

(assert (=> d!1701122 (= res!2242956 e!3287738)))

(declare-fun res!2242957 () Bool)

(assert (=> d!1701122 (=> (not res!2242957) (not e!3287738))))

(declare-fun lt!2161433 () Option!15032)

(assert (=> d!1701122 (= res!2242957 (isDefined!11735 lt!2161433))))

(declare-fun e!3287742 () Option!15032)

(assert (=> d!1701122 (= lt!2161433 e!3287742)))

(declare-fun c!917182 () Bool)

(declare-fun e!3287740 () Bool)

(assert (=> d!1701122 (= c!917182 e!3287740)))

(declare-fun res!2242959 () Bool)

(assert (=> d!1701122 (=> (not res!2242959) (not e!3287740))))

(assert (=> d!1701122 (= res!2242959 (matchR!7106 (regOne!30354 r!7292) Nil!60938))))

(assert (=> d!1701122 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1701122 (= (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326) lt!2161433)))

(declare-fun b!5288312 () Bool)

(declare-fun ++!13288 (List!61062 List!61062) List!61062)

(declare-fun get!20954 (Option!15032) tuple2!64240)

(assert (=> b!5288312 (= e!3287738 (= (++!13288 (_1!35423 (get!20954 lt!2161433)) (_2!35423 (get!20954 lt!2161433))) s!2326))))

(declare-fun b!5288313 () Bool)

(declare-fun e!3287741 () Option!15032)

(assert (=> b!5288313 (= e!3287741 None!15031)))

(declare-fun b!5288314 () Bool)

(declare-fun lt!2161432 () Unit!153202)

(declare-fun lt!2161434 () Unit!153202)

(assert (=> b!5288314 (= lt!2161432 lt!2161434)))

(assert (=> b!5288314 (= (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1703 (List!61062 C!30112 List!61062 List!61062) Unit!153202)

(assert (=> b!5288314 (= lt!2161434 (lemmaMoveElementToOtherListKeepsConcatEq!1703 Nil!60938 (h!67386 s!2326) (t!374265 s!2326) s!2326))))

(assert (=> b!5288314 (= e!3287741 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326) s!2326))))

(declare-fun b!5288315 () Bool)

(assert (=> b!5288315 (= e!3287739 (not (isDefined!11735 lt!2161433)))))

(declare-fun b!5288316 () Bool)

(assert (=> b!5288316 (= e!3287740 (matchR!7106 (regTwo!30354 r!7292) s!2326))))

(declare-fun b!5288317 () Bool)

(declare-fun res!2242958 () Bool)

(assert (=> b!5288317 (=> (not res!2242958) (not e!3287738))))

(assert (=> b!5288317 (= res!2242958 (matchR!7106 (regTwo!30354 r!7292) (_2!35423 (get!20954 lt!2161433))))))

(declare-fun b!5288318 () Bool)

(assert (=> b!5288318 (= e!3287742 (Some!15031 (tuple2!64241 Nil!60938 s!2326)))))

(declare-fun b!5288319 () Bool)

(assert (=> b!5288319 (= e!3287742 e!3287741)))

(declare-fun c!917181 () Bool)

(assert (=> b!5288319 (= c!917181 ((_ is Nil!60938) s!2326))))

(declare-fun b!5288320 () Bool)

(declare-fun res!2242960 () Bool)

(assert (=> b!5288320 (=> (not res!2242960) (not e!3287738))))

(assert (=> b!5288320 (= res!2242960 (matchR!7106 (regOne!30354 r!7292) (_1!35423 (get!20954 lt!2161433))))))

(assert (= (and d!1701122 res!2242959) b!5288316))

(assert (= (and d!1701122 c!917182) b!5288318))

(assert (= (and d!1701122 (not c!917182)) b!5288319))

(assert (= (and b!5288319 c!917181) b!5288313))

(assert (= (and b!5288319 (not c!917181)) b!5288314))

(assert (= (and d!1701122 res!2242957) b!5288320))

(assert (= (and b!5288320 res!2242960) b!5288317))

(assert (= (and b!5288317 res!2242958) b!5288312))

(assert (= (and d!1701122 (not res!2242956)) b!5288315))

(declare-fun m!6325856 () Bool)

(assert (=> b!5288320 m!6325856))

(declare-fun m!6325858 () Bool)

(assert (=> b!5288320 m!6325858))

(assert (=> b!5288312 m!6325856))

(declare-fun m!6325860 () Bool)

(assert (=> b!5288312 m!6325860))

(declare-fun m!6325862 () Bool)

(assert (=> b!5288316 m!6325862))

(declare-fun m!6325864 () Bool)

(assert (=> d!1701122 m!6325864))

(declare-fun m!6325866 () Bool)

(assert (=> d!1701122 m!6325866))

(declare-fun m!6325868 () Bool)

(assert (=> d!1701122 m!6325868))

(assert (=> b!5288315 m!6325864))

(declare-fun m!6325870 () Bool)

(assert (=> b!5288314 m!6325870))

(assert (=> b!5288314 m!6325870))

(declare-fun m!6325872 () Bool)

(assert (=> b!5288314 m!6325872))

(declare-fun m!6325874 () Bool)

(assert (=> b!5288314 m!6325874))

(assert (=> b!5288314 m!6325870))

(declare-fun m!6325876 () Bool)

(assert (=> b!5288314 m!6325876))

(assert (=> b!5288317 m!6325856))

(declare-fun m!6325878 () Bool)

(assert (=> b!5288317 m!6325878))

(assert (=> b!5287706 d!1701122))

(declare-fun d!1701142 () Bool)

(declare-fun choose!39491 (Int) Bool)

(assert (=> d!1701142 (= (Exists!2102 lambda!267545) (choose!39491 lambda!267545))))

(declare-fun bs!1225323 () Bool)

(assert (= bs!1225323 d!1701142))

(declare-fun m!6325880 () Bool)

(assert (=> bs!1225323 m!6325880))

(assert (=> b!5287706 d!1701142))

(declare-fun d!1701144 () Bool)

(assert (=> d!1701144 (= (Exists!2102 lambda!267544) (choose!39491 lambda!267544))))

(declare-fun bs!1225325 () Bool)

(assert (= bs!1225325 d!1701144))

(declare-fun m!6325882 () Bool)

(assert (=> bs!1225325 m!6325882))

(assert (=> b!5287706 d!1701144))

(declare-fun bs!1225337 () Bool)

(declare-fun d!1701146 () Bool)

(assert (= bs!1225337 (and d!1701146 b!5287706)))

(declare-fun lambda!267621 () Int)

(assert (=> bs!1225337 (= lambda!267621 lambda!267544)))

(assert (=> bs!1225337 (not (= lambda!267621 lambda!267545))))

(declare-fun bs!1225338 () Bool)

(assert (= bs!1225338 (and d!1701146 b!5287700)))

(assert (=> bs!1225338 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267621 lambda!267547))))

(assert (=> bs!1225338 (not (= lambda!267621 lambda!267548))))

(assert (=> d!1701146 true))

(assert (=> d!1701146 true))

(assert (=> d!1701146 true))

(assert (=> d!1701146 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326)) (Exists!2102 lambda!267621))))

(declare-fun lt!2161443 () Unit!153202)

(declare-fun choose!39492 (Regex!14921 Regex!14921 List!61062) Unit!153202)

(assert (=> d!1701146 (= lt!2161443 (choose!39492 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326))))

(assert (=> d!1701146 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1701146 (= (lemmaFindConcatSeparationEquivalentToExists!1210 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326) lt!2161443)))

(declare-fun bs!1225339 () Bool)

(assert (= bs!1225339 d!1701146))

(declare-fun m!6325914 () Bool)

(assert (=> bs!1225339 m!6325914))

(assert (=> bs!1225339 m!6325222))

(assert (=> bs!1225339 m!6325222))

(assert (=> bs!1225339 m!6325224))

(assert (=> bs!1225339 m!6325868))

(declare-fun m!6325916 () Bool)

(assert (=> bs!1225339 m!6325916))

(assert (=> b!5287706 d!1701146))

(declare-fun bs!1225346 () Bool)

(declare-fun d!1701166 () Bool)

(assert (= bs!1225346 (and d!1701166 d!1701146)))

(declare-fun lambda!267629 () Int)

(assert (=> bs!1225346 (= lambda!267629 lambda!267621)))

(declare-fun bs!1225347 () Bool)

(assert (= bs!1225347 (and d!1701166 b!5287706)))

(assert (=> bs!1225347 (not (= lambda!267629 lambda!267545))))

(assert (=> bs!1225347 (= lambda!267629 lambda!267544)))

(declare-fun bs!1225348 () Bool)

(assert (= bs!1225348 (and d!1701166 b!5287700)))

(assert (=> bs!1225348 (not (= lambda!267629 lambda!267548))))

(assert (=> bs!1225348 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267629 lambda!267547))))

(assert (=> d!1701166 true))

(assert (=> d!1701166 true))

(assert (=> d!1701166 true))

(declare-fun bs!1225353 () Bool)

(assert (= bs!1225353 d!1701166))

(declare-fun lambda!267633 () Int)

(assert (=> bs!1225353 (not (= lambda!267633 lambda!267629))))

(assert (=> bs!1225346 (not (= lambda!267633 lambda!267621))))

(assert (=> bs!1225347 (= lambda!267633 lambda!267545)))

(assert (=> bs!1225347 (not (= lambda!267633 lambda!267544))))

(assert (=> bs!1225348 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267633 lambda!267548))))

(assert (=> bs!1225348 (not (= lambda!267633 lambda!267547))))

(assert (=> d!1701166 true))

(assert (=> d!1701166 true))

(assert (=> d!1701166 true))

(assert (=> d!1701166 (= (Exists!2102 lambda!267629) (Exists!2102 lambda!267633))))

(declare-fun lt!2161449 () Unit!153202)

(declare-fun choose!39493 (Regex!14921 Regex!14921 List!61062) Unit!153202)

(assert (=> d!1701166 (= lt!2161449 (choose!39493 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326))))

(assert (=> d!1701166 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1701166 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!756 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326) lt!2161449)))

(declare-fun m!6325942 () Bool)

(assert (=> bs!1225353 m!6325942))

(declare-fun m!6325944 () Bool)

(assert (=> bs!1225353 m!6325944))

(declare-fun m!6325946 () Bool)

(assert (=> bs!1225353 m!6325946))

(assert (=> bs!1225353 m!6325868))

(assert (=> b!5287706 d!1701166))

(declare-fun d!1701170 () Bool)

(declare-fun isEmpty!32896 (Option!15032) Bool)

(assert (=> d!1701170 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326)) (not (isEmpty!32896 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326))))))

(declare-fun bs!1225357 () Bool)

(assert (= bs!1225357 d!1701170))

(assert (=> bs!1225357 m!6325222))

(declare-fun m!6325948 () Bool)

(assert (=> bs!1225357 m!6325948))

(assert (=> b!5287706 d!1701170))

(declare-fun bs!1225362 () Bool)

(declare-fun d!1701172 () Bool)

(assert (= bs!1225362 (and d!1701172 b!5287700)))

(declare-fun lambda!267636 () Int)

(assert (=> bs!1225362 (= lambda!267636 lambda!267549)))

(declare-fun bs!1225363 () Bool)

(assert (= bs!1225363 (and d!1701172 d!1701030)))

(assert (=> bs!1225363 (= lambda!267636 lambda!267584)))

(declare-fun bs!1225364 () Bool)

(assert (= bs!1225364 (and d!1701172 d!1701056)))

(assert (=> bs!1225364 (= lambda!267636 lambda!267611)))

(declare-fun bs!1225365 () Bool)

(assert (= bs!1225365 (and d!1701172 d!1701120)))

(assert (=> bs!1225365 (= lambda!267636 lambda!267615)))

(declare-fun b!5288467 () Bool)

(declare-fun e!3287819 () Bool)

(declare-fun lt!2161455 () Regex!14921)

(assert (=> b!5288467 (= e!3287819 (= lt!2161455 (head!11335 (unfocusZipperList!363 zl!343))))))

(declare-fun e!3287822 () Bool)

(assert (=> d!1701172 e!3287822))

(declare-fun res!2242992 () Bool)

(assert (=> d!1701172 (=> (not res!2242992) (not e!3287822))))

(assert (=> d!1701172 (= res!2242992 (validRegex!6657 lt!2161455))))

(declare-fun e!3287821 () Regex!14921)

(assert (=> d!1701172 (= lt!2161455 e!3287821)))

(declare-fun c!917215 () Bool)

(declare-fun e!3287818 () Bool)

(assert (=> d!1701172 (= c!917215 e!3287818)))

(declare-fun res!2242991 () Bool)

(assert (=> d!1701172 (=> (not res!2242991) (not e!3287818))))

(assert (=> d!1701172 (= res!2242991 ((_ is Cons!60939) (unfocusZipperList!363 zl!343)))))

(assert (=> d!1701172 (forall!14329 (unfocusZipperList!363 zl!343) lambda!267636)))

(assert (=> d!1701172 (= (generalisedUnion!850 (unfocusZipperList!363 zl!343)) lt!2161455)))

(declare-fun b!5288468 () Bool)

(assert (=> b!5288468 (= e!3287818 (isEmpty!32892 (t!374266 (unfocusZipperList!363 zl!343))))))

(declare-fun b!5288469 () Bool)

(declare-fun e!3287817 () Bool)

(declare-fun isEmptyLang!850 (Regex!14921) Bool)

(assert (=> b!5288469 (= e!3287817 (isEmptyLang!850 lt!2161455))))

(declare-fun b!5288470 () Bool)

(assert (=> b!5288470 (= e!3287822 e!3287817)))

(declare-fun c!917216 () Bool)

(assert (=> b!5288470 (= c!917216 (isEmpty!32892 (unfocusZipperList!363 zl!343)))))

(declare-fun b!5288471 () Bool)

(assert (=> b!5288471 (= e!3287817 e!3287819)))

(declare-fun c!917214 () Bool)

(assert (=> b!5288471 (= c!917214 (isEmpty!32892 (tail!10432 (unfocusZipperList!363 zl!343))))))

(declare-fun b!5288472 () Bool)

(declare-fun e!3287820 () Regex!14921)

(assert (=> b!5288472 (= e!3287820 EmptyLang!14921)))

(declare-fun b!5288473 () Bool)

(assert (=> b!5288473 (= e!3287820 (Union!14921 (h!67387 (unfocusZipperList!363 zl!343)) (generalisedUnion!850 (t!374266 (unfocusZipperList!363 zl!343)))))))

(declare-fun b!5288474 () Bool)

(declare-fun isUnion!282 (Regex!14921) Bool)

(assert (=> b!5288474 (= e!3287819 (isUnion!282 lt!2161455))))

(declare-fun b!5288475 () Bool)

(assert (=> b!5288475 (= e!3287821 e!3287820)))

(declare-fun c!917217 () Bool)

(assert (=> b!5288475 (= c!917217 ((_ is Cons!60939) (unfocusZipperList!363 zl!343)))))

(declare-fun b!5288476 () Bool)

(assert (=> b!5288476 (= e!3287821 (h!67387 (unfocusZipperList!363 zl!343)))))

(assert (= (and d!1701172 res!2242991) b!5288468))

(assert (= (and d!1701172 c!917215) b!5288476))

(assert (= (and d!1701172 (not c!917215)) b!5288475))

(assert (= (and b!5288475 c!917217) b!5288473))

(assert (= (and b!5288475 (not c!917217)) b!5288472))

(assert (= (and d!1701172 res!2242992) b!5288470))

(assert (= (and b!5288470 c!917216) b!5288469))

(assert (= (and b!5288470 (not c!917216)) b!5288471))

(assert (= (and b!5288471 c!917214) b!5288467))

(assert (= (and b!5288471 (not c!917214)) b!5288474))

(assert (=> b!5288470 m!6325150))

(declare-fun m!6325956 () Bool)

(assert (=> b!5288470 m!6325956))

(declare-fun m!6325958 () Bool)

(assert (=> b!5288474 m!6325958))

(assert (=> b!5288471 m!6325150))

(declare-fun m!6325960 () Bool)

(assert (=> b!5288471 m!6325960))

(assert (=> b!5288471 m!6325960))

(declare-fun m!6325962 () Bool)

(assert (=> b!5288471 m!6325962))

(declare-fun m!6325964 () Bool)

(assert (=> b!5288473 m!6325964))

(declare-fun m!6325966 () Bool)

(assert (=> b!5288469 m!6325966))

(declare-fun m!6325968 () Bool)

(assert (=> d!1701172 m!6325968))

(assert (=> d!1701172 m!6325150))

(declare-fun m!6325970 () Bool)

(assert (=> d!1701172 m!6325970))

(assert (=> b!5288467 m!6325150))

(declare-fun m!6325972 () Bool)

(assert (=> b!5288467 m!6325972))

(declare-fun m!6325974 () Bool)

(assert (=> b!5288468 m!6325974))

(assert (=> b!5287685 d!1701172))

(declare-fun bs!1225366 () Bool)

(declare-fun d!1701182 () Bool)

(assert (= bs!1225366 (and d!1701182 b!5287700)))

(declare-fun lambda!267639 () Int)

(assert (=> bs!1225366 (= lambda!267639 lambda!267549)))

(declare-fun bs!1225367 () Bool)

(assert (= bs!1225367 (and d!1701182 d!1701120)))

(assert (=> bs!1225367 (= lambda!267639 lambda!267615)))

(declare-fun bs!1225368 () Bool)

(assert (= bs!1225368 (and d!1701182 d!1701030)))

(assert (=> bs!1225368 (= lambda!267639 lambda!267584)))

(declare-fun bs!1225369 () Bool)

(assert (= bs!1225369 (and d!1701182 d!1701056)))

(assert (=> bs!1225369 (= lambda!267639 lambda!267611)))

(declare-fun bs!1225370 () Bool)

(assert (= bs!1225370 (and d!1701182 d!1701172)))

(assert (=> bs!1225370 (= lambda!267639 lambda!267636)))

(declare-fun lt!2161458 () List!61063)

(assert (=> d!1701182 (forall!14329 lt!2161458 lambda!267639)))

(declare-fun e!3287825 () List!61063)

(assert (=> d!1701182 (= lt!2161458 e!3287825)))

(declare-fun c!917220 () Bool)

(assert (=> d!1701182 (= c!917220 ((_ is Cons!60940) zl!343))))

(assert (=> d!1701182 (= (unfocusZipperList!363 zl!343) lt!2161458)))

(declare-fun b!5288481 () Bool)

(assert (=> b!5288481 (= e!3287825 (Cons!60939 (generalisedConcat!590 (exprs!4805 (h!67388 zl!343))) (unfocusZipperList!363 (t!374267 zl!343))))))

(declare-fun b!5288482 () Bool)

(assert (=> b!5288482 (= e!3287825 Nil!60939)))

(assert (= (and d!1701182 c!917220) b!5288481))

(assert (= (and d!1701182 (not c!917220)) b!5288482))

(declare-fun m!6325976 () Bool)

(assert (=> d!1701182 m!6325976))

(assert (=> b!5288481 m!6325154))

(declare-fun m!6325978 () Bool)

(assert (=> b!5288481 m!6325978))

(assert (=> b!5287685 d!1701182))

(declare-fun d!1701184 () Bool)

(assert (=> d!1701184 (= (isEmpty!32891 (t!374267 zl!343)) ((_ is Nil!60940) (t!374267 zl!343)))))

(assert (=> b!5287704 d!1701184))

(declare-fun d!1701186 () Bool)

(declare-fun c!917221 () Bool)

(assert (=> d!1701186 (= c!917221 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287826 () Bool)

(assert (=> d!1701186 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (t!374265 s!2326)) e!3287826)))

(declare-fun b!5288483 () Bool)

(assert (=> b!5288483 (= e!3287826 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326))))))

(declare-fun b!5288484 () Bool)

(assert (=> b!5288484 (= e!3287826 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701186 c!917221) b!5288483))

(assert (= (and d!1701186 (not c!917221)) b!5288484))

(assert (=> d!1701186 m!6325484))

(assert (=> b!5288483 m!6325276))

(declare-fun m!6325980 () Bool)

(assert (=> b!5288483 m!6325980))

(assert (=> b!5288484 m!6325488))

(assert (=> b!5288484 m!6325276))

(assert (=> b!5288484 m!6325488))

(declare-fun m!6325982 () Bool)

(assert (=> b!5288484 m!6325982))

(assert (=> b!5288484 m!6325492))

(assert (=> b!5288484 m!6325982))

(assert (=> b!5288484 m!6325492))

(declare-fun m!6325984 () Bool)

(assert (=> b!5288484 m!6325984))

(assert (=> b!5287703 d!1701186))

(declare-fun bs!1225371 () Bool)

(declare-fun d!1701188 () Bool)

(assert (= bs!1225371 (and d!1701188 b!5287682)))

(declare-fun lambda!267640 () Int)

(assert (=> bs!1225371 (= lambda!267640 lambda!267546)))

(declare-fun bs!1225372 () Bool)

(assert (= bs!1225372 (and d!1701188 d!1701080)))

(assert (=> bs!1225372 (= lambda!267640 lambda!267614)))

(assert (=> d!1701188 true))

(assert (=> d!1701188 (= (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (flatMap!648 lt!2161312 lambda!267640))))

(declare-fun bs!1225373 () Bool)

(assert (= bs!1225373 d!1701188))

(declare-fun m!6325986 () Bool)

(assert (=> bs!1225373 m!6325986))

(assert (=> b!5287703 d!1701188))

(declare-fun d!1701190 () Bool)

(declare-fun lt!2161461 () Regex!14921)

(assert (=> d!1701190 (validRegex!6657 lt!2161461)))

(assert (=> d!1701190 (= lt!2161461 (generalisedUnion!850 (unfocusZipperList!363 zl!343)))))

(assert (=> d!1701190 (= (unfocusZipper!663 zl!343) lt!2161461)))

(declare-fun bs!1225374 () Bool)

(assert (= bs!1225374 d!1701190))

(declare-fun m!6325988 () Bool)

(assert (=> bs!1225374 m!6325988))

(assert (=> bs!1225374 m!6325150))

(assert (=> bs!1225374 m!6325150))

(assert (=> bs!1225374 m!6325152))

(assert (=> b!5287684 d!1701190))

(declare-fun b!5288485 () Bool)

(declare-fun call!376701 () (InoxSet Context!8610))

(declare-fun e!3287828 () (InoxSet Context!8610))

(assert (=> b!5288485 (= e!3287828 ((_ map or) call!376701 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (h!67386 s!2326))))))

(declare-fun b!5288486 () Bool)

(declare-fun e!3287829 () Bool)

(assert (=> b!5288486 (= e!3287829 (nullable!5090 (h!67387 (exprs!4805 lt!2161302))))))

(declare-fun b!5288487 () Bool)

(declare-fun e!3287827 () (InoxSet Context!8610))

(assert (=> b!5288487 (= e!3287827 call!376701)))

(declare-fun b!5288488 () Bool)

(assert (=> b!5288488 (= e!3287828 e!3287827)))

(declare-fun c!917222 () Bool)

(assert (=> b!5288488 (= c!917222 ((_ is Cons!60939) (exprs!4805 lt!2161302)))))

(declare-fun b!5288489 () Bool)

(assert (=> b!5288489 (= e!3287827 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701192 () Bool)

(declare-fun c!917223 () Bool)

(assert (=> d!1701192 (= c!917223 e!3287829)))

(declare-fun res!2242993 () Bool)

(assert (=> d!1701192 (=> (not res!2242993) (not e!3287829))))

(assert (=> d!1701192 (= res!2242993 ((_ is Cons!60939) (exprs!4805 lt!2161302)))))

(assert (=> d!1701192 (= (derivationStepZipperUp!293 lt!2161302 (h!67386 s!2326)) e!3287828)))

(declare-fun bm!376696 () Bool)

(assert (=> bm!376696 (= call!376701 (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161302)) (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (h!67386 s!2326)))))

(assert (= (and d!1701192 res!2242993) b!5288486))

(assert (= (and d!1701192 c!917223) b!5288485))

(assert (= (and d!1701192 (not c!917223)) b!5288488))

(assert (= (and b!5288488 c!917222) b!5288487))

(assert (= (and b!5288488 (not c!917222)) b!5288489))

(assert (= (or b!5288485 b!5288487) bm!376696))

(declare-fun m!6325990 () Bool)

(assert (=> b!5288485 m!6325990))

(declare-fun m!6325992 () Bool)

(assert (=> b!5288486 m!6325992))

(declare-fun m!6325994 () Bool)

(assert (=> bm!376696 m!6325994))

(assert (=> b!5287682 d!1701192))

(declare-fun d!1701194 () Bool)

(assert (=> d!1701194 (= (nullable!5090 (h!67387 (exprs!4805 (h!67388 zl!343)))) (nullableFct!1460 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun bs!1225375 () Bool)

(assert (= bs!1225375 d!1701194))

(declare-fun m!6325996 () Bool)

(assert (=> bs!1225375 m!6325996))

(assert (=> b!5287682 d!1701194))

(declare-fun b!5288490 () Bool)

(declare-fun e!3287831 () (InoxSet Context!8610))

(declare-fun call!376702 () (InoxSet Context!8610))

(assert (=> b!5288490 (= e!3287831 ((_ map or) call!376702 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326))))))

(declare-fun b!5288491 () Bool)

(declare-fun e!3287832 () Bool)

(assert (=> b!5288491 (= e!3287832 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun b!5288492 () Bool)

(declare-fun e!3287830 () (InoxSet Context!8610))

(assert (=> b!5288492 (= e!3287830 call!376702)))

(declare-fun b!5288493 () Bool)

(assert (=> b!5288493 (= e!3287831 e!3287830)))

(declare-fun c!917224 () Bool)

(assert (=> b!5288493 (= c!917224 ((_ is Cons!60939) (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun b!5288494 () Bool)

(assert (=> b!5288494 (= e!3287830 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701196 () Bool)

(declare-fun c!917225 () Bool)

(assert (=> d!1701196 (= c!917225 e!3287832)))

(declare-fun res!2242994 () Bool)

(assert (=> d!1701196 (=> (not res!2242994) (not e!3287832))))

(assert (=> d!1701196 (= res!2242994 ((_ is Cons!60939) (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))

(assert (=> d!1701196 (= (derivationStepZipperUp!293 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))) (h!67386 s!2326)) e!3287831)))

(declare-fun bm!376697 () Bool)

(assert (=> bm!376697 (= call!376702 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326)))))

(assert (= (and d!1701196 res!2242994) b!5288491))

(assert (= (and d!1701196 c!917225) b!5288490))

(assert (= (and d!1701196 (not c!917225)) b!5288493))

(assert (= (and b!5288493 c!917224) b!5288492))

(assert (= (and b!5288493 (not c!917224)) b!5288494))

(assert (= (or b!5288490 b!5288492) bm!376697))

(declare-fun m!6325998 () Bool)

(assert (=> b!5288490 m!6325998))

(declare-fun m!6326000 () Bool)

(assert (=> b!5288491 m!6326000))

(declare-fun m!6326002 () Bool)

(assert (=> bm!376697 m!6326002))

(assert (=> b!5287682 d!1701196))

(declare-fun b!5288495 () Bool)

(declare-fun e!3287835 () (InoxSet Context!8610))

(declare-fun call!376706 () (InoxSet Context!8610))

(assert (=> b!5288495 (= e!3287835 call!376706)))

(declare-fun c!917229 () Bool)

(declare-fun call!376705 () (InoxSet Context!8610))

(declare-fun call!376707 () List!61063)

(declare-fun bm!376698 () Bool)

(assert (=> bm!376698 (= call!376705 (derivationStepZipperDown!369 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))) (ite c!917229 lt!2161302 (Context!8611 call!376707)) (h!67386 s!2326)))))

(declare-fun b!5288496 () Bool)

(declare-fun e!3287836 () (InoxSet Context!8610))

(assert (=> b!5288496 (= e!3287836 call!376706)))

(declare-fun bm!376699 () Bool)

(declare-fun c!917228 () Bool)

(declare-fun c!917227 () Bool)

(assert (=> bm!376699 (= call!376707 ($colon$colon!1358 (exprs!4805 lt!2161302) (ite (or c!917228 c!917227) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67387 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun call!376704 () List!61063)

(declare-fun call!376703 () (InoxSet Context!8610))

(declare-fun bm!376700 () Bool)

(assert (=> bm!376700 (= call!376703 (derivationStepZipperDown!369 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))) (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704)) (h!67386 s!2326)))))

(declare-fun bm!376701 () Bool)

(declare-fun call!376708 () (InoxSet Context!8610))

(assert (=> bm!376701 (= call!376706 call!376708)))

(declare-fun bm!376702 () Bool)

(assert (=> bm!376702 (= call!376708 call!376703)))

(declare-fun b!5288497 () Bool)

(declare-fun e!3287834 () Bool)

(assert (=> b!5288497 (= c!917228 e!3287834)))

(declare-fun res!2242995 () Bool)

(assert (=> b!5288497 (=> (not res!2242995) (not e!3287834))))

(assert (=> b!5288497 (= res!2242995 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun e!3287838 () (InoxSet Context!8610))

(declare-fun e!3287837 () (InoxSet Context!8610))

(assert (=> b!5288497 (= e!3287838 e!3287837)))

(declare-fun d!1701198 () Bool)

(declare-fun c!917226 () Bool)

(assert (=> d!1701198 (= c!917226 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))) (= (c!916969 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326))))))

(declare-fun e!3287833 () (InoxSet Context!8610))

(assert (=> d!1701198 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 (h!67388 zl!343))) lt!2161302 (h!67386 s!2326)) e!3287833)))

(declare-fun bm!376703 () Bool)

(assert (=> bm!376703 (= call!376704 call!376707)))

(declare-fun b!5288498 () Bool)

(assert (=> b!5288498 (= e!3287838 ((_ map or) call!376703 call!376705))))

(declare-fun b!5288499 () Bool)

(assert (=> b!5288499 (= e!3287833 e!3287838)))

(assert (=> b!5288499 (= c!917229 ((_ is Union!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5288500 () Bool)

(declare-fun c!917230 () Bool)

(assert (=> b!5288500 (= c!917230 ((_ is Star!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> b!5288500 (= e!3287836 e!3287835)))

(declare-fun b!5288501 () Bool)

(assert (=> b!5288501 (= e!3287835 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5288502 () Bool)

(assert (=> b!5288502 (= e!3287837 ((_ map or) call!376705 call!376708))))

(declare-fun b!5288503 () Bool)

(assert (=> b!5288503 (= e!3287834 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5288504 () Bool)

(assert (=> b!5288504 (= e!3287833 (store ((as const (Array Context!8610 Bool)) false) lt!2161302 true))))

(declare-fun b!5288505 () Bool)

(assert (=> b!5288505 (= e!3287837 e!3287836)))

(assert (=> b!5288505 (= c!917227 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (= (and d!1701198 c!917226) b!5288504))

(assert (= (and d!1701198 (not c!917226)) b!5288499))

(assert (= (and b!5288499 c!917229) b!5288498))

(assert (= (and b!5288499 (not c!917229)) b!5288497))

(assert (= (and b!5288497 res!2242995) b!5288503))

(assert (= (and b!5288497 c!917228) b!5288502))

(assert (= (and b!5288497 (not c!917228)) b!5288505))

(assert (= (and b!5288505 c!917227) b!5288496))

(assert (= (and b!5288505 (not c!917227)) b!5288500))

(assert (= (and b!5288500 c!917230) b!5288495))

(assert (= (and b!5288500 (not c!917230)) b!5288501))

(assert (= (or b!5288496 b!5288495) bm!376703))

(assert (= (or b!5288496 b!5288495) bm!376701))

(assert (= (or b!5288502 bm!376703) bm!376699))

(assert (= (or b!5288502 bm!376701) bm!376702))

(assert (= (or b!5288498 b!5288502) bm!376698))

(assert (= (or b!5288498 bm!376702) bm!376700))

(assert (=> b!5288504 m!6325464))

(declare-fun m!6326004 () Bool)

(assert (=> bm!376699 m!6326004))

(declare-fun m!6326006 () Bool)

(assert (=> bm!376700 m!6326006))

(declare-fun m!6326008 () Bool)

(assert (=> b!5288503 m!6326008))

(declare-fun m!6326010 () Bool)

(assert (=> bm!376698 m!6326010))

(assert (=> b!5287682 d!1701198))

(declare-fun d!1701200 () Bool)

(assert (=> d!1701200 (= (flatMap!648 z!1189 lambda!267546) (dynLambda!24091 lambda!267546 (h!67388 zl!343)))))

(declare-fun lt!2161462 () Unit!153202)

(assert (=> d!1701200 (= lt!2161462 (choose!39489 z!1189 (h!67388 zl!343) lambda!267546))))

(assert (=> d!1701200 (= z!1189 (store ((as const (Array Context!8610 Bool)) false) (h!67388 zl!343) true))))

(assert (=> d!1701200 (= (lemmaFlatMapOnSingletonSet!180 z!1189 (h!67388 zl!343) lambda!267546) lt!2161462)))

(declare-fun b_lambda!203937 () Bool)

(assert (=> (not b_lambda!203937) (not d!1701200)))

(declare-fun bs!1225376 () Bool)

(assert (= bs!1225376 d!1701200))

(assert (=> bs!1225376 m!6325262))

(declare-fun m!6326012 () Bool)

(assert (=> bs!1225376 m!6326012))

(declare-fun m!6326014 () Bool)

(assert (=> bs!1225376 m!6326014))

(declare-fun m!6326016 () Bool)

(assert (=> bs!1225376 m!6326016))

(assert (=> b!5287682 d!1701200))

(declare-fun b!5288506 () Bool)

(declare-fun e!3287840 () (InoxSet Context!8610))

(declare-fun call!376709 () (InoxSet Context!8610))

(assert (=> b!5288506 (= e!3287840 ((_ map or) call!376709 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326))))))

(declare-fun b!5288507 () Bool)

(declare-fun e!3287841 () Bool)

(assert (=> b!5288507 (= e!3287841 (nullable!5090 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5288508 () Bool)

(declare-fun e!3287839 () (InoxSet Context!8610))

(assert (=> b!5288508 (= e!3287839 call!376709)))

(declare-fun b!5288509 () Bool)

(assert (=> b!5288509 (= e!3287840 e!3287839)))

(declare-fun c!917231 () Bool)

(assert (=> b!5288509 (= c!917231 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(declare-fun b!5288510 () Bool)

(assert (=> b!5288510 (= e!3287839 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701202 () Bool)

(declare-fun c!917232 () Bool)

(assert (=> d!1701202 (= c!917232 e!3287841)))

(declare-fun res!2242996 () Bool)

(assert (=> d!1701202 (=> (not res!2242996) (not e!3287841))))

(assert (=> d!1701202 (= res!2242996 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701202 (= (derivationStepZipperUp!293 (h!67388 zl!343) (h!67386 s!2326)) e!3287840)))

(declare-fun bm!376704 () Bool)

(assert (=> bm!376704 (= call!376709 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (h!67388 zl!343))) (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326)))))

(assert (= (and d!1701202 res!2242996) b!5288507))

(assert (= (and d!1701202 c!917232) b!5288506))

(assert (= (and d!1701202 (not c!917232)) b!5288509))

(assert (= (and b!5288509 c!917231) b!5288508))

(assert (= (and b!5288509 (not c!917231)) b!5288510))

(assert (= (or b!5288506 b!5288508) bm!376704))

(declare-fun m!6326018 () Bool)

(assert (=> b!5288506 m!6326018))

(assert (=> b!5288507 m!6325264))

(declare-fun m!6326020 () Bool)

(assert (=> bm!376704 m!6326020))

(assert (=> b!5287682 d!1701202))

(declare-fun d!1701204 () Bool)

(assert (=> d!1701204 (= (flatMap!648 z!1189 lambda!267546) (choose!39488 z!1189 lambda!267546))))

(declare-fun bs!1225377 () Bool)

(assert (= bs!1225377 d!1701204))

(declare-fun m!6326022 () Bool)

(assert (=> bs!1225377 m!6326022))

(assert (=> b!5287682 d!1701204))

(declare-fun d!1701206 () Bool)

(assert (=> d!1701206 (= (Exists!2102 lambda!267547) (choose!39491 lambda!267547))))

(declare-fun bs!1225378 () Bool)

(assert (= bs!1225378 d!1701206))

(declare-fun m!6326024 () Bool)

(assert (=> bs!1225378 m!6326024))

(assert (=> b!5287700 d!1701206))

(declare-fun bs!1225379 () Bool)

(declare-fun b!5288548 () Bool)

(assert (= bs!1225379 (and b!5288548 d!1701166)))

(declare-fun lambda!267645 () Int)

(assert (=> bs!1225379 (not (= lambda!267645 lambda!267629))))

(declare-fun bs!1225380 () Bool)

(assert (= bs!1225380 (and b!5288548 d!1701146)))

(assert (=> bs!1225380 (not (= lambda!267645 lambda!267621))))

(declare-fun bs!1225381 () Bool)

(assert (= bs!1225381 (and b!5288548 b!5287706)))

(assert (=> bs!1225381 (not (= lambda!267645 lambda!267545))))

(assert (=> bs!1225381 (not (= lambda!267645 lambda!267544))))

(declare-fun bs!1225382 () Bool)

(assert (= bs!1225382 (and b!5288548 b!5287700)))

(assert (=> bs!1225382 (not (= lambda!267645 lambda!267548))))

(assert (=> bs!1225379 (not (= lambda!267645 lambda!267633))))

(assert (=> bs!1225382 (not (= lambda!267645 lambda!267547))))

(assert (=> b!5288548 true))

(assert (=> b!5288548 true))

(declare-fun bs!1225383 () Bool)

(declare-fun b!5288547 () Bool)

(assert (= bs!1225383 (and b!5288547 d!1701166)))

(declare-fun lambda!267646 () Int)

(assert (=> bs!1225383 (not (= lambda!267646 lambda!267629))))

(declare-fun bs!1225384 () Bool)

(assert (= bs!1225384 (and b!5288547 d!1701146)))

(assert (=> bs!1225384 (not (= lambda!267646 lambda!267621))))

(declare-fun bs!1225385 () Bool)

(assert (= bs!1225385 (and b!5288547 b!5287706)))

(assert (=> bs!1225385 (= (and (= (regOne!30354 lt!2161300) (regOne!30354 r!7292)) (= (regTwo!30354 lt!2161300) (regTwo!30354 r!7292))) (= lambda!267646 lambda!267545))))

(assert (=> bs!1225385 (not (= lambda!267646 lambda!267544))))

(declare-fun bs!1225386 () Bool)

(assert (= bs!1225386 (and b!5288547 b!5287700)))

(assert (=> bs!1225386 (= (and (= (regOne!30354 lt!2161300) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 lt!2161300) lt!2161300)) (= lambda!267646 lambda!267548))))

(assert (=> bs!1225383 (= (and (= (regOne!30354 lt!2161300) (regOne!30354 r!7292)) (= (regTwo!30354 lt!2161300) (regTwo!30354 r!7292))) (= lambda!267646 lambda!267633))))

(assert (=> bs!1225386 (not (= lambda!267646 lambda!267547))))

(declare-fun bs!1225387 () Bool)

(assert (= bs!1225387 (and b!5288547 b!5288548)))

(assert (=> bs!1225387 (not (= lambda!267646 lambda!267645))))

(assert (=> b!5288547 true))

(assert (=> b!5288547 true))

(declare-fun b!5288543 () Bool)

(declare-fun e!3287863 () Bool)

(declare-fun e!3287862 () Bool)

(assert (=> b!5288543 (= e!3287863 e!3287862)))

(declare-fun c!917241 () Bool)

(assert (=> b!5288543 (= c!917241 ((_ is Star!14921) lt!2161300))))

(declare-fun b!5288544 () Bool)

(declare-fun c!917244 () Bool)

(assert (=> b!5288544 (= c!917244 ((_ is Union!14921) lt!2161300))))

(declare-fun e!3287860 () Bool)

(assert (=> b!5288544 (= e!3287860 e!3287863)))

(declare-fun b!5288546 () Bool)

(assert (=> b!5288546 (= e!3287860 (= s!2326 (Cons!60938 (c!916969 lt!2161300) Nil!60938)))))

(declare-fun call!376715 () Bool)

(assert (=> b!5288547 (= e!3287862 call!376715)))

(declare-fun e!3287865 () Bool)

(assert (=> b!5288548 (= e!3287865 call!376715)))

(declare-fun b!5288549 () Bool)

(declare-fun e!3287864 () Bool)

(declare-fun e!3287866 () Bool)

(assert (=> b!5288549 (= e!3287864 e!3287866)))

(declare-fun res!2243015 () Bool)

(assert (=> b!5288549 (= res!2243015 (not ((_ is EmptyLang!14921) lt!2161300)))))

(assert (=> b!5288549 (=> (not res!2243015) (not e!3287866))))

(declare-fun bm!376709 () Bool)

(declare-fun call!376714 () Bool)

(assert (=> bm!376709 (= call!376714 (isEmpty!32895 s!2326))))

(declare-fun d!1701208 () Bool)

(declare-fun c!917243 () Bool)

(assert (=> d!1701208 (= c!917243 ((_ is EmptyExpr!14921) lt!2161300))))

(assert (=> d!1701208 (= (matchRSpec!2024 lt!2161300 s!2326) e!3287864)))

(declare-fun b!5288545 () Bool)

(declare-fun e!3287861 () Bool)

(assert (=> b!5288545 (= e!3287863 e!3287861)))

(declare-fun res!2243014 () Bool)

(assert (=> b!5288545 (= res!2243014 (matchRSpec!2024 (regOne!30355 lt!2161300) s!2326))))

(assert (=> b!5288545 (=> res!2243014 e!3287861)))

(declare-fun b!5288550 () Bool)

(declare-fun c!917242 () Bool)

(assert (=> b!5288550 (= c!917242 ((_ is ElementMatch!14921) lt!2161300))))

(assert (=> b!5288550 (= e!3287866 e!3287860)))

(declare-fun b!5288551 () Bool)

(declare-fun res!2243013 () Bool)

(assert (=> b!5288551 (=> res!2243013 e!3287865)))

(assert (=> b!5288551 (= res!2243013 call!376714)))

(assert (=> b!5288551 (= e!3287862 e!3287865)))

(declare-fun b!5288552 () Bool)

(assert (=> b!5288552 (= e!3287864 call!376714)))

(declare-fun bm!376710 () Bool)

(assert (=> bm!376710 (= call!376715 (Exists!2102 (ite c!917241 lambda!267645 lambda!267646)))))

(declare-fun b!5288553 () Bool)

(assert (=> b!5288553 (= e!3287861 (matchRSpec!2024 (regTwo!30355 lt!2161300) s!2326))))

(assert (= (and d!1701208 c!917243) b!5288552))

(assert (= (and d!1701208 (not c!917243)) b!5288549))

(assert (= (and b!5288549 res!2243015) b!5288550))

(assert (= (and b!5288550 c!917242) b!5288546))

(assert (= (and b!5288550 (not c!917242)) b!5288544))

(assert (= (and b!5288544 c!917244) b!5288545))

(assert (= (and b!5288544 (not c!917244)) b!5288543))

(assert (= (and b!5288545 (not res!2243014)) b!5288553))

(assert (= (and b!5288543 c!917241) b!5288551))

(assert (= (and b!5288543 (not c!917241)) b!5288547))

(assert (= (and b!5288551 (not res!2243013)) b!5288548))

(assert (= (or b!5288548 b!5288547) bm!376710))

(assert (= (or b!5288552 b!5288551) bm!376709))

(declare-fun m!6326026 () Bool)

(assert (=> bm!376709 m!6326026))

(declare-fun m!6326028 () Bool)

(assert (=> b!5288545 m!6326028))

(declare-fun m!6326030 () Bool)

(assert (=> bm!376710 m!6326030))

(declare-fun m!6326032 () Bool)

(assert (=> b!5288553 m!6326032))

(assert (=> b!5287700 d!1701208))

(declare-fun d!1701210 () Bool)

(assert (=> d!1701210 (= (matchR!7106 lt!2161294 s!2326) (matchRSpec!2024 lt!2161294 s!2326))))

(declare-fun lt!2161465 () Unit!153202)

(declare-fun choose!39494 (Regex!14921 List!61062) Unit!153202)

(assert (=> d!1701210 (= lt!2161465 (choose!39494 lt!2161294 s!2326))))

(assert (=> d!1701210 (validRegex!6657 lt!2161294)))

(assert (=> d!1701210 (= (mainMatchTheorem!2024 lt!2161294 s!2326) lt!2161465)))

(declare-fun bs!1225388 () Bool)

(assert (= bs!1225388 d!1701210))

(assert (=> bs!1225388 m!6325184))

(assert (=> bs!1225388 m!6325210))

(declare-fun m!6326034 () Bool)

(assert (=> bs!1225388 m!6326034))

(declare-fun m!6326036 () Bool)

(assert (=> bs!1225388 m!6326036))

(assert (=> b!5287700 d!1701210))

(declare-fun bs!1225389 () Bool)

(declare-fun d!1701212 () Bool)

(assert (= bs!1225389 (and d!1701212 b!5287700)))

(declare-fun lambda!267647 () Int)

(assert (=> bs!1225389 (= lambda!267647 lambda!267549)))

(declare-fun bs!1225390 () Bool)

(assert (= bs!1225390 (and d!1701212 d!1701120)))

(assert (=> bs!1225390 (= lambda!267647 lambda!267615)))

(declare-fun bs!1225391 () Bool)

(assert (= bs!1225391 (and d!1701212 d!1701030)))

(assert (=> bs!1225391 (= lambda!267647 lambda!267584)))

(declare-fun bs!1225392 () Bool)

(assert (= bs!1225392 (and d!1701212 d!1701056)))

(assert (=> bs!1225392 (= lambda!267647 lambda!267611)))

(declare-fun bs!1225393 () Bool)

(assert (= bs!1225393 (and d!1701212 d!1701172)))

(assert (=> bs!1225393 (= lambda!267647 lambda!267636)))

(declare-fun bs!1225394 () Bool)

(assert (= bs!1225394 (and d!1701212 d!1701182)))

(assert (=> bs!1225394 (= lambda!267647 lambda!267639)))

(declare-fun e!3287869 () Bool)

(assert (=> d!1701212 e!3287869))

(declare-fun res!2243017 () Bool)

(assert (=> d!1701212 (=> (not res!2243017) (not e!3287869))))

(declare-fun lt!2161466 () Regex!14921)

(assert (=> d!1701212 (= res!2243017 (validRegex!6657 lt!2161466))))

(declare-fun e!3287870 () Regex!14921)

(assert (=> d!1701212 (= lt!2161466 e!3287870)))

(declare-fun c!917246 () Bool)

(declare-fun e!3287867 () Bool)

(assert (=> d!1701212 (= c!917246 e!3287867)))

(declare-fun res!2243016 () Bool)

(assert (=> d!1701212 (=> (not res!2243016) (not e!3287867))))

(assert (=> d!1701212 (= res!2243016 ((_ is Cons!60939) lt!2161282))))

(assert (=> d!1701212 (forall!14329 lt!2161282 lambda!267647)))

(assert (=> d!1701212 (= (generalisedConcat!590 lt!2161282) lt!2161466)))

(declare-fun b!5288554 () Bool)

(declare-fun e!3287871 () Regex!14921)

(assert (=> b!5288554 (= e!3287871 (Concat!23766 (h!67387 lt!2161282) (generalisedConcat!590 (t!374266 lt!2161282))))))

(declare-fun b!5288555 () Bool)

(assert (=> b!5288555 (= e!3287870 e!3287871)))

(declare-fun c!917245 () Bool)

(assert (=> b!5288555 (= c!917245 ((_ is Cons!60939) lt!2161282))))

(declare-fun b!5288556 () Bool)

(declare-fun e!3287872 () Bool)

(declare-fun e!3287868 () Bool)

(assert (=> b!5288556 (= e!3287872 e!3287868)))

(declare-fun c!917247 () Bool)

(assert (=> b!5288556 (= c!917247 (isEmpty!32892 (tail!10432 lt!2161282)))))

(declare-fun b!5288557 () Bool)

(assert (=> b!5288557 (= e!3287870 (h!67387 lt!2161282))))

(declare-fun b!5288558 () Bool)

(assert (=> b!5288558 (= e!3287872 (isEmptyExpr!843 lt!2161466))))

(declare-fun b!5288559 () Bool)

(assert (=> b!5288559 (= e!3287868 (isConcat!366 lt!2161466))))

(declare-fun b!5288560 () Bool)

(assert (=> b!5288560 (= e!3287869 e!3287872)))

(declare-fun c!917248 () Bool)

(assert (=> b!5288560 (= c!917248 (isEmpty!32892 lt!2161282))))

(declare-fun b!5288561 () Bool)

(assert (=> b!5288561 (= e!3287867 (isEmpty!32892 (t!374266 lt!2161282)))))

(declare-fun b!5288562 () Bool)

(assert (=> b!5288562 (= e!3287871 EmptyExpr!14921)))

(declare-fun b!5288563 () Bool)

(assert (=> b!5288563 (= e!3287868 (= lt!2161466 (head!11335 lt!2161282)))))

(assert (= (and d!1701212 res!2243016) b!5288561))

(assert (= (and d!1701212 c!917246) b!5288557))

(assert (= (and d!1701212 (not c!917246)) b!5288555))

(assert (= (and b!5288555 c!917245) b!5288554))

(assert (= (and b!5288555 (not c!917245)) b!5288562))

(assert (= (and d!1701212 res!2243017) b!5288560))

(assert (= (and b!5288560 c!917248) b!5288558))

(assert (= (and b!5288560 (not c!917248)) b!5288556))

(assert (= (and b!5288556 c!917247) b!5288563))

(assert (= (and b!5288556 (not c!917247)) b!5288559))

(declare-fun m!6326038 () Bool)

(assert (=> b!5288559 m!6326038))

(declare-fun m!6326040 () Bool)

(assert (=> b!5288558 m!6326040))

(declare-fun m!6326042 () Bool)

(assert (=> b!5288561 m!6326042))

(declare-fun m!6326044 () Bool)

(assert (=> d!1701212 m!6326044))

(declare-fun m!6326046 () Bool)

(assert (=> d!1701212 m!6326046))

(declare-fun m!6326048 () Bool)

(assert (=> b!5288563 m!6326048))

(declare-fun m!6326050 () Bool)

(assert (=> b!5288556 m!6326050))

(assert (=> b!5288556 m!6326050))

(declare-fun m!6326052 () Bool)

(assert (=> b!5288556 m!6326052))

(declare-fun m!6326054 () Bool)

(assert (=> b!5288560 m!6326054))

(declare-fun m!6326056 () Bool)

(assert (=> b!5288554 m!6326056))

(assert (=> b!5287700 d!1701212))

(declare-fun d!1701214 () Bool)

(declare-fun e!3287874 () Bool)

(assert (=> d!1701214 e!3287874))

(declare-fun res!2243018 () Bool)

(assert (=> d!1701214 (=> res!2243018 e!3287874)))

(declare-fun e!3287873 () Bool)

(assert (=> d!1701214 (= res!2243018 e!3287873)))

(declare-fun res!2243019 () Bool)

(assert (=> d!1701214 (=> (not res!2243019) (not e!3287873))))

(declare-fun lt!2161468 () Option!15032)

(assert (=> d!1701214 (= res!2243019 (isDefined!11735 lt!2161468))))

(declare-fun e!3287877 () Option!15032)

(assert (=> d!1701214 (= lt!2161468 e!3287877)))

(declare-fun c!917250 () Bool)

(declare-fun e!3287875 () Bool)

(assert (=> d!1701214 (= c!917250 e!3287875)))

(declare-fun res!2243021 () Bool)

(assert (=> d!1701214 (=> (not res!2243021) (not e!3287875))))

(assert (=> d!1701214 (= res!2243021 (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) Nil!60938))))

(assert (=> d!1701214 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1701214 (= (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326) lt!2161468)))

(declare-fun b!5288564 () Bool)

(assert (=> b!5288564 (= e!3287873 (= (++!13288 (_1!35423 (get!20954 lt!2161468)) (_2!35423 (get!20954 lt!2161468))) s!2326))))

(declare-fun b!5288565 () Bool)

(declare-fun e!3287876 () Option!15032)

(assert (=> b!5288565 (= e!3287876 None!15031)))

(declare-fun b!5288566 () Bool)

(declare-fun lt!2161467 () Unit!153202)

(declare-fun lt!2161469 () Unit!153202)

(assert (=> b!5288566 (= lt!2161467 lt!2161469)))

(assert (=> b!5288566 (= (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326)) s!2326)))

(assert (=> b!5288566 (= lt!2161469 (lemmaMoveElementToOtherListKeepsConcatEq!1703 Nil!60938 (h!67386 s!2326) (t!374265 s!2326) s!2326))))

(assert (=> b!5288566 (= e!3287876 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326) s!2326))))

(declare-fun b!5288567 () Bool)

(assert (=> b!5288567 (= e!3287874 (not (isDefined!11735 lt!2161468)))))

(declare-fun b!5288568 () Bool)

(assert (=> b!5288568 (= e!3287875 (matchR!7106 lt!2161300 s!2326))))

(declare-fun b!5288569 () Bool)

(declare-fun res!2243020 () Bool)

(assert (=> b!5288569 (=> (not res!2243020) (not e!3287873))))

(assert (=> b!5288569 (= res!2243020 (matchR!7106 lt!2161300 (_2!35423 (get!20954 lt!2161468))))))

(declare-fun b!5288570 () Bool)

(assert (=> b!5288570 (= e!3287877 (Some!15031 (tuple2!64241 Nil!60938 s!2326)))))

(declare-fun b!5288571 () Bool)

(assert (=> b!5288571 (= e!3287877 e!3287876)))

(declare-fun c!917249 () Bool)

(assert (=> b!5288571 (= c!917249 ((_ is Nil!60938) s!2326))))

(declare-fun b!5288572 () Bool)

(declare-fun res!2243022 () Bool)

(assert (=> b!5288572 (=> (not res!2243022) (not e!3287873))))

(assert (=> b!5288572 (= res!2243022 (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) (_1!35423 (get!20954 lt!2161468))))))

(assert (= (and d!1701214 res!2243021) b!5288568))

(assert (= (and d!1701214 c!917250) b!5288570))

(assert (= (and d!1701214 (not c!917250)) b!5288571))

(assert (= (and b!5288571 c!917249) b!5288565))

(assert (= (and b!5288571 (not c!917249)) b!5288566))

(assert (= (and d!1701214 res!2243019) b!5288572))

(assert (= (and b!5288572 res!2243022) b!5288569))

(assert (= (and b!5288569 res!2243020) b!5288564))

(assert (= (and d!1701214 (not res!2243018)) b!5288567))

(declare-fun m!6326058 () Bool)

(assert (=> b!5288572 m!6326058))

(declare-fun m!6326060 () Bool)

(assert (=> b!5288572 m!6326060))

(assert (=> b!5288564 m!6326058))

(declare-fun m!6326062 () Bool)

(assert (=> b!5288564 m!6326062))

(assert (=> b!5288568 m!6325206))

(declare-fun m!6326064 () Bool)

(assert (=> d!1701214 m!6326064))

(declare-fun m!6326066 () Bool)

(assert (=> d!1701214 m!6326066))

(declare-fun m!6326068 () Bool)

(assert (=> d!1701214 m!6326068))

(assert (=> b!5288567 m!6326064))

(assert (=> b!5288566 m!6325870))

(assert (=> b!5288566 m!6325870))

(assert (=> b!5288566 m!6325872))

(assert (=> b!5288566 m!6325874))

(assert (=> b!5288566 m!6325870))

(declare-fun m!6326070 () Bool)

(assert (=> b!5288566 m!6326070))

(assert (=> b!5288569 m!6326058))

(declare-fun m!6326072 () Bool)

(assert (=> b!5288569 m!6326072))

(assert (=> b!5287700 d!1701214))

(declare-fun d!1701216 () Bool)

(declare-fun c!917251 () Bool)

(assert (=> d!1701216 (= c!917251 (isEmpty!32895 s!2326))))

(declare-fun e!3287878 () Bool)

(assert (=> d!1701216 (= (matchZipper!1165 lt!2161312 s!2326) e!3287878)))

(declare-fun b!5288573 () Bool)

(assert (=> b!5288573 (= e!3287878 (nullableZipper!1308 lt!2161312))))

(declare-fun b!5288574 () Bool)

(assert (=> b!5288574 (= e!3287878 (matchZipper!1165 (derivationStepZipper!1164 lt!2161312 (head!11334 s!2326)) (tail!10430 s!2326)))))

(assert (= (and d!1701216 c!917251) b!5288573))

(assert (= (and d!1701216 (not c!917251)) b!5288574))

(assert (=> d!1701216 m!6326026))

(declare-fun m!6326074 () Bool)

(assert (=> b!5288573 m!6326074))

(declare-fun m!6326076 () Bool)

(assert (=> b!5288574 m!6326076))

(assert (=> b!5288574 m!6326076))

(declare-fun m!6326078 () Bool)

(assert (=> b!5288574 m!6326078))

(declare-fun m!6326080 () Bool)

(assert (=> b!5288574 m!6326080))

(assert (=> b!5288574 m!6326078))

(assert (=> b!5288574 m!6326080))

(declare-fun m!6326082 () Bool)

(assert (=> b!5288574 m!6326082))

(assert (=> b!5287700 d!1701216))

(declare-fun d!1701218 () Bool)

(assert (=> d!1701218 (= (Exists!2102 lambda!267548) (choose!39491 lambda!267548))))

(declare-fun bs!1225395 () Bool)

(assert (= bs!1225395 d!1701218))

(declare-fun m!6326084 () Bool)

(assert (=> bs!1225395 m!6326084))

(assert (=> b!5287700 d!1701218))

(declare-fun d!1701220 () Bool)

(assert (=> d!1701220 (= (matchR!7106 lt!2161294 s!2326) (matchZipper!1165 lt!2161283 s!2326))))

(declare-fun lt!2161472 () Unit!153202)

(declare-fun choose!39495 ((InoxSet Context!8610) List!61064 Regex!14921 List!61062) Unit!153202)

(assert (=> d!1701220 (= lt!2161472 (choose!39495 lt!2161283 lt!2161303 lt!2161294 s!2326))))

(assert (=> d!1701220 (validRegex!6657 lt!2161294)))

(assert (=> d!1701220 (= (theoremZipperRegexEquiv!331 lt!2161283 lt!2161303 lt!2161294 s!2326) lt!2161472)))

(declare-fun bs!1225396 () Bool)

(assert (= bs!1225396 d!1701220))

(assert (=> bs!1225396 m!6325184))

(assert (=> bs!1225396 m!6325208))

(declare-fun m!6326086 () Bool)

(assert (=> bs!1225396 m!6326086))

(assert (=> bs!1225396 m!6326036))

(assert (=> b!5287700 d!1701220))

(declare-fun bs!1225397 () Bool)

(declare-fun b!5288580 () Bool)

(assert (= bs!1225397 (and b!5288580 d!1701166)))

(declare-fun lambda!267648 () Int)

(assert (=> bs!1225397 (not (= lambda!267648 lambda!267629))))

(declare-fun bs!1225398 () Bool)

(assert (= bs!1225398 (and b!5288580 d!1701146)))

(assert (=> bs!1225398 (not (= lambda!267648 lambda!267621))))

(declare-fun bs!1225399 () Bool)

(assert (= bs!1225399 (and b!5288580 b!5287706)))

(assert (=> bs!1225399 (not (= lambda!267648 lambda!267545))))

(assert (=> bs!1225399 (not (= lambda!267648 lambda!267544))))

(declare-fun bs!1225400 () Bool)

(assert (= bs!1225400 (and b!5288580 b!5287700)))

(assert (=> bs!1225400 (not (= lambda!267648 lambda!267548))))

(assert (=> bs!1225400 (not (= lambda!267648 lambda!267547))))

(declare-fun bs!1225401 () Bool)

(assert (= bs!1225401 (and b!5288580 b!5288548)))

(assert (=> bs!1225401 (= (and (= (reg!15250 lt!2161294) (reg!15250 lt!2161300)) (= lt!2161294 lt!2161300)) (= lambda!267648 lambda!267645))))

(declare-fun bs!1225402 () Bool)

(assert (= bs!1225402 (and b!5288580 b!5288547)))

(assert (=> bs!1225402 (not (= lambda!267648 lambda!267646))))

(assert (=> bs!1225397 (not (= lambda!267648 lambda!267633))))

(assert (=> b!5288580 true))

(assert (=> b!5288580 true))

(declare-fun bs!1225403 () Bool)

(declare-fun b!5288579 () Bool)

(assert (= bs!1225403 (and b!5288579 d!1701166)))

(declare-fun lambda!267649 () Int)

(assert (=> bs!1225403 (not (= lambda!267649 lambda!267629))))

(declare-fun bs!1225404 () Bool)

(assert (= bs!1225404 (and b!5288579 d!1701146)))

(assert (=> bs!1225404 (not (= lambda!267649 lambda!267621))))

(declare-fun bs!1225405 () Bool)

(assert (= bs!1225405 (and b!5288579 b!5287706)))

(assert (=> bs!1225405 (= (and (= (regOne!30354 lt!2161294) (regOne!30354 r!7292)) (= (regTwo!30354 lt!2161294) (regTwo!30354 r!7292))) (= lambda!267649 lambda!267545))))

(assert (=> bs!1225405 (not (= lambda!267649 lambda!267544))))

(declare-fun bs!1225406 () Bool)

(assert (= bs!1225406 (and b!5288579 b!5287700)))

(assert (=> bs!1225406 (= (and (= (regOne!30354 lt!2161294) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 lt!2161294) lt!2161300)) (= lambda!267649 lambda!267548))))

(declare-fun bs!1225407 () Bool)

(assert (= bs!1225407 (and b!5288579 b!5288580)))

(assert (=> bs!1225407 (not (= lambda!267649 lambda!267648))))

(assert (=> bs!1225406 (not (= lambda!267649 lambda!267547))))

(declare-fun bs!1225408 () Bool)

(assert (= bs!1225408 (and b!5288579 b!5288548)))

(assert (=> bs!1225408 (not (= lambda!267649 lambda!267645))))

(declare-fun bs!1225409 () Bool)

(assert (= bs!1225409 (and b!5288579 b!5288547)))

(assert (=> bs!1225409 (= (and (= (regOne!30354 lt!2161294) (regOne!30354 lt!2161300)) (= (regTwo!30354 lt!2161294) (regTwo!30354 lt!2161300))) (= lambda!267649 lambda!267646))))

(assert (=> bs!1225403 (= (and (= (regOne!30354 lt!2161294) (regOne!30354 r!7292)) (= (regTwo!30354 lt!2161294) (regTwo!30354 r!7292))) (= lambda!267649 lambda!267633))))

(assert (=> b!5288579 true))

(assert (=> b!5288579 true))

(declare-fun b!5288575 () Bool)

(declare-fun e!3287882 () Bool)

(declare-fun e!3287881 () Bool)

(assert (=> b!5288575 (= e!3287882 e!3287881)))

(declare-fun c!917252 () Bool)

(assert (=> b!5288575 (= c!917252 ((_ is Star!14921) lt!2161294))))

(declare-fun b!5288576 () Bool)

(declare-fun c!917255 () Bool)

(assert (=> b!5288576 (= c!917255 ((_ is Union!14921) lt!2161294))))

(declare-fun e!3287879 () Bool)

(assert (=> b!5288576 (= e!3287879 e!3287882)))

(declare-fun b!5288578 () Bool)

(assert (=> b!5288578 (= e!3287879 (= s!2326 (Cons!60938 (c!916969 lt!2161294) Nil!60938)))))

(declare-fun call!376717 () Bool)

(assert (=> b!5288579 (= e!3287881 call!376717)))

(declare-fun e!3287884 () Bool)

(assert (=> b!5288580 (= e!3287884 call!376717)))

(declare-fun b!5288581 () Bool)

(declare-fun e!3287883 () Bool)

(declare-fun e!3287885 () Bool)

(assert (=> b!5288581 (= e!3287883 e!3287885)))

(declare-fun res!2243025 () Bool)

(assert (=> b!5288581 (= res!2243025 (not ((_ is EmptyLang!14921) lt!2161294)))))

(assert (=> b!5288581 (=> (not res!2243025) (not e!3287885))))

(declare-fun bm!376711 () Bool)

(declare-fun call!376716 () Bool)

(assert (=> bm!376711 (= call!376716 (isEmpty!32895 s!2326))))

(declare-fun d!1701222 () Bool)

(declare-fun c!917254 () Bool)

(assert (=> d!1701222 (= c!917254 ((_ is EmptyExpr!14921) lt!2161294))))

(assert (=> d!1701222 (= (matchRSpec!2024 lt!2161294 s!2326) e!3287883)))

(declare-fun b!5288577 () Bool)

(declare-fun e!3287880 () Bool)

(assert (=> b!5288577 (= e!3287882 e!3287880)))

(declare-fun res!2243024 () Bool)

(assert (=> b!5288577 (= res!2243024 (matchRSpec!2024 (regOne!30355 lt!2161294) s!2326))))

(assert (=> b!5288577 (=> res!2243024 e!3287880)))

(declare-fun b!5288582 () Bool)

(declare-fun c!917253 () Bool)

(assert (=> b!5288582 (= c!917253 ((_ is ElementMatch!14921) lt!2161294))))

(assert (=> b!5288582 (= e!3287885 e!3287879)))

(declare-fun b!5288583 () Bool)

(declare-fun res!2243023 () Bool)

(assert (=> b!5288583 (=> res!2243023 e!3287884)))

(assert (=> b!5288583 (= res!2243023 call!376716)))

(assert (=> b!5288583 (= e!3287881 e!3287884)))

(declare-fun b!5288584 () Bool)

(assert (=> b!5288584 (= e!3287883 call!376716)))

(declare-fun bm!376712 () Bool)

(assert (=> bm!376712 (= call!376717 (Exists!2102 (ite c!917252 lambda!267648 lambda!267649)))))

(declare-fun b!5288585 () Bool)

(assert (=> b!5288585 (= e!3287880 (matchRSpec!2024 (regTwo!30355 lt!2161294) s!2326))))

(assert (= (and d!1701222 c!917254) b!5288584))

(assert (= (and d!1701222 (not c!917254)) b!5288581))

(assert (= (and b!5288581 res!2243025) b!5288582))

(assert (= (and b!5288582 c!917253) b!5288578))

(assert (= (and b!5288582 (not c!917253)) b!5288576))

(assert (= (and b!5288576 c!917255) b!5288577))

(assert (= (and b!5288576 (not c!917255)) b!5288575))

(assert (= (and b!5288577 (not res!2243024)) b!5288585))

(assert (= (and b!5288575 c!917252) b!5288583))

(assert (= (and b!5288575 (not c!917252)) b!5288579))

(assert (= (and b!5288583 (not res!2243023)) b!5288580))

(assert (= (or b!5288580 b!5288579) bm!376712))

(assert (= (or b!5288584 b!5288583) bm!376711))

(assert (=> bm!376711 m!6326026))

(declare-fun m!6326088 () Bool)

(assert (=> b!5288577 m!6326088))

(declare-fun m!6326090 () Bool)

(assert (=> bm!376712 m!6326090))

(declare-fun m!6326092 () Bool)

(assert (=> b!5288585 m!6326092))

(assert (=> b!5287700 d!1701222))

(declare-fun d!1701224 () Bool)

(declare-fun c!917256 () Bool)

(assert (=> d!1701224 (= c!917256 (isEmpty!32895 s!2326))))

(declare-fun e!3287886 () Bool)

(assert (=> d!1701224 (= (matchZipper!1165 lt!2161283 s!2326) e!3287886)))

(declare-fun b!5288586 () Bool)

(assert (=> b!5288586 (= e!3287886 (nullableZipper!1308 lt!2161283))))

(declare-fun b!5288587 () Bool)

(assert (=> b!5288587 (= e!3287886 (matchZipper!1165 (derivationStepZipper!1164 lt!2161283 (head!11334 s!2326)) (tail!10430 s!2326)))))

(assert (= (and d!1701224 c!917256) b!5288586))

(assert (= (and d!1701224 (not c!917256)) b!5288587))

(assert (=> d!1701224 m!6326026))

(declare-fun m!6326094 () Bool)

(assert (=> b!5288586 m!6326094))

(assert (=> b!5288587 m!6326076))

(assert (=> b!5288587 m!6326076))

(declare-fun m!6326096 () Bool)

(assert (=> b!5288587 m!6326096))

(assert (=> b!5288587 m!6326080))

(assert (=> b!5288587 m!6326096))

(assert (=> b!5288587 m!6326080))

(declare-fun m!6326098 () Bool)

(assert (=> b!5288587 m!6326098))

(assert (=> b!5287700 d!1701224))

(declare-fun b!5288616 () Bool)

(declare-fun e!3287902 () Bool)

(assert (=> b!5288616 (= e!3287902 (not (= (head!11334 s!2326) (c!916969 lt!2161294))))))

(declare-fun b!5288617 () Bool)

(declare-fun e!3287901 () Bool)

(assert (=> b!5288617 (= e!3287901 (nullable!5090 lt!2161294))))

(declare-fun d!1701226 () Bool)

(declare-fun e!3287906 () Bool)

(assert (=> d!1701226 e!3287906))

(declare-fun c!917264 () Bool)

(assert (=> d!1701226 (= c!917264 ((_ is EmptyExpr!14921) lt!2161294))))

(declare-fun lt!2161475 () Bool)

(assert (=> d!1701226 (= lt!2161475 e!3287901)))

(declare-fun c!917263 () Bool)

(assert (=> d!1701226 (= c!917263 (isEmpty!32895 s!2326))))

(assert (=> d!1701226 (validRegex!6657 lt!2161294)))

(assert (=> d!1701226 (= (matchR!7106 lt!2161294 s!2326) lt!2161475)))

(declare-fun b!5288618 () Bool)

(declare-fun e!3287907 () Bool)

(assert (=> b!5288618 (= e!3287907 (= (head!11334 s!2326) (c!916969 lt!2161294)))))

(declare-fun b!5288619 () Bool)

(declare-fun e!3287905 () Bool)

(assert (=> b!5288619 (= e!3287906 e!3287905)))

(declare-fun c!917265 () Bool)

(assert (=> b!5288619 (= c!917265 ((_ is EmptyLang!14921) lt!2161294))))

(declare-fun b!5288620 () Bool)

(declare-fun derivativeStep!4129 (Regex!14921 C!30112) Regex!14921)

(assert (=> b!5288620 (= e!3287901 (matchR!7106 (derivativeStep!4129 lt!2161294 (head!11334 s!2326)) (tail!10430 s!2326)))))

(declare-fun b!5288621 () Bool)

(declare-fun res!2243049 () Bool)

(assert (=> b!5288621 (=> (not res!2243049) (not e!3287907))))

(assert (=> b!5288621 (= res!2243049 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5288622 () Bool)

(declare-fun e!3287903 () Bool)

(declare-fun e!3287904 () Bool)

(assert (=> b!5288622 (= e!3287903 e!3287904)))

(declare-fun res!2243048 () Bool)

(assert (=> b!5288622 (=> (not res!2243048) (not e!3287904))))

(assert (=> b!5288622 (= res!2243048 (not lt!2161475))))

(declare-fun b!5288623 () Bool)

(declare-fun res!2243046 () Bool)

(assert (=> b!5288623 (=> res!2243046 e!3287903)))

(assert (=> b!5288623 (= res!2243046 e!3287907)))

(declare-fun res!2243047 () Bool)

(assert (=> b!5288623 (=> (not res!2243047) (not e!3287907))))

(assert (=> b!5288623 (= res!2243047 lt!2161475)))

(declare-fun b!5288624 () Bool)

(declare-fun call!376720 () Bool)

(assert (=> b!5288624 (= e!3287906 (= lt!2161475 call!376720))))

(declare-fun b!5288625 () Bool)

(assert (=> b!5288625 (= e!3287904 e!3287902)))

(declare-fun res!2243042 () Bool)

(assert (=> b!5288625 (=> res!2243042 e!3287902)))

(assert (=> b!5288625 (= res!2243042 call!376720)))

(declare-fun bm!376715 () Bool)

(assert (=> bm!376715 (= call!376720 (isEmpty!32895 s!2326))))

(declare-fun b!5288626 () Bool)

(declare-fun res!2243043 () Bool)

(assert (=> b!5288626 (=> res!2243043 e!3287903)))

(assert (=> b!5288626 (= res!2243043 (not ((_ is ElementMatch!14921) lt!2161294)))))

(assert (=> b!5288626 (= e!3287905 e!3287903)))

(declare-fun b!5288627 () Bool)

(declare-fun res!2243045 () Bool)

(assert (=> b!5288627 (=> res!2243045 e!3287902)))

(assert (=> b!5288627 (= res!2243045 (not (isEmpty!32895 (tail!10430 s!2326))))))

(declare-fun b!5288628 () Bool)

(declare-fun res!2243044 () Bool)

(assert (=> b!5288628 (=> (not res!2243044) (not e!3287907))))

(assert (=> b!5288628 (= res!2243044 (not call!376720))))

(declare-fun b!5288629 () Bool)

(assert (=> b!5288629 (= e!3287905 (not lt!2161475))))

(assert (= (and d!1701226 c!917263) b!5288617))

(assert (= (and d!1701226 (not c!917263)) b!5288620))

(assert (= (and d!1701226 c!917264) b!5288624))

(assert (= (and d!1701226 (not c!917264)) b!5288619))

(assert (= (and b!5288619 c!917265) b!5288629))

(assert (= (and b!5288619 (not c!917265)) b!5288626))

(assert (= (and b!5288626 (not res!2243043)) b!5288623))

(assert (= (and b!5288623 res!2243047) b!5288628))

(assert (= (and b!5288628 res!2243044) b!5288621))

(assert (= (and b!5288621 res!2243049) b!5288618))

(assert (= (and b!5288623 (not res!2243046)) b!5288622))

(assert (= (and b!5288622 res!2243048) b!5288625))

(assert (= (and b!5288625 (not res!2243042)) b!5288627))

(assert (= (and b!5288627 (not res!2243045)) b!5288616))

(assert (= (or b!5288624 b!5288625 b!5288628) bm!376715))

(assert (=> b!5288618 m!6326076))

(assert (=> b!5288627 m!6326080))

(assert (=> b!5288627 m!6326080))

(declare-fun m!6326100 () Bool)

(assert (=> b!5288627 m!6326100))

(assert (=> b!5288621 m!6326080))

(assert (=> b!5288621 m!6326080))

(assert (=> b!5288621 m!6326100))

(assert (=> b!5288616 m!6326076))

(declare-fun m!6326102 () Bool)

(assert (=> b!5288617 m!6326102))

(assert (=> bm!376715 m!6326026))

(assert (=> b!5288620 m!6326076))

(assert (=> b!5288620 m!6326076))

(declare-fun m!6326104 () Bool)

(assert (=> b!5288620 m!6326104))

(assert (=> b!5288620 m!6326080))

(assert (=> b!5288620 m!6326104))

(assert (=> b!5288620 m!6326080))

(declare-fun m!6326106 () Bool)

(assert (=> b!5288620 m!6326106))

(assert (=> d!1701226 m!6326026))

(assert (=> d!1701226 m!6326036))

(assert (=> b!5287700 d!1701226))

(declare-fun d!1701228 () Bool)

(declare-fun res!2243054 () Bool)

(declare-fun e!3287912 () Bool)

(assert (=> d!1701228 (=> res!2243054 e!3287912)))

(assert (=> d!1701228 (= res!2243054 ((_ is Nil!60939) (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> d!1701228 (= (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267549) e!3287912)))

(declare-fun b!5288634 () Bool)

(declare-fun e!3287913 () Bool)

(assert (=> b!5288634 (= e!3287912 e!3287913)))

(declare-fun res!2243055 () Bool)

(assert (=> b!5288634 (=> (not res!2243055) (not e!3287913))))

(declare-fun dynLambda!24093 (Int Regex!14921) Bool)

(assert (=> b!5288634 (= res!2243055 (dynLambda!24093 lambda!267549 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5288635 () Bool)

(assert (=> b!5288635 (= e!3287913 (forall!14329 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))) lambda!267549))))

(assert (= (and d!1701228 (not res!2243054)) b!5288634))

(assert (= (and b!5288634 res!2243055) b!5288635))

(declare-fun b_lambda!203939 () Bool)

(assert (=> (not b_lambda!203939) (not b!5288634)))

(declare-fun m!6326108 () Bool)

(assert (=> b!5288634 m!6326108))

(declare-fun m!6326110 () Bool)

(assert (=> b!5288635 m!6326110))

(assert (=> b!5287700 d!1701228))

(declare-fun bs!1225410 () Bool)

(declare-fun d!1701230 () Bool)

(assert (= bs!1225410 (and d!1701230 b!5287700)))

(declare-fun lambda!267650 () Int)

(assert (=> bs!1225410 (= lambda!267650 lambda!267549)))

(declare-fun bs!1225411 () Bool)

(assert (= bs!1225411 (and d!1701230 d!1701120)))

(assert (=> bs!1225411 (= lambda!267650 lambda!267615)))

(declare-fun bs!1225412 () Bool)

(assert (= bs!1225412 (and d!1701230 d!1701030)))

(assert (=> bs!1225412 (= lambda!267650 lambda!267584)))

(declare-fun bs!1225413 () Bool)

(assert (= bs!1225413 (and d!1701230 d!1701056)))

(assert (=> bs!1225413 (= lambda!267650 lambda!267611)))

(declare-fun bs!1225414 () Bool)

(assert (= bs!1225414 (and d!1701230 d!1701212)))

(assert (=> bs!1225414 (= lambda!267650 lambda!267647)))

(declare-fun bs!1225415 () Bool)

(assert (= bs!1225415 (and d!1701230 d!1701172)))

(assert (=> bs!1225415 (= lambda!267650 lambda!267636)))

(declare-fun bs!1225416 () Bool)

(assert (= bs!1225416 (and d!1701230 d!1701182)))

(assert (=> bs!1225416 (= lambda!267650 lambda!267639)))

(declare-fun e!3287916 () Bool)

(assert (=> d!1701230 e!3287916))

(declare-fun res!2243057 () Bool)

(assert (=> d!1701230 (=> (not res!2243057) (not e!3287916))))

(declare-fun lt!2161476 () Regex!14921)

(assert (=> d!1701230 (= res!2243057 (validRegex!6657 lt!2161476))))

(declare-fun e!3287917 () Regex!14921)

(assert (=> d!1701230 (= lt!2161476 e!3287917)))

(declare-fun c!917267 () Bool)

(declare-fun e!3287914 () Bool)

(assert (=> d!1701230 (= c!917267 e!3287914)))

(declare-fun res!2243056 () Bool)

(assert (=> d!1701230 (=> (not res!2243056) (not e!3287914))))

(assert (=> d!1701230 (= res!2243056 ((_ is Cons!60939) lt!2161306))))

(assert (=> d!1701230 (forall!14329 lt!2161306 lambda!267650)))

(assert (=> d!1701230 (= (generalisedConcat!590 lt!2161306) lt!2161476)))

(declare-fun b!5288636 () Bool)

(declare-fun e!3287918 () Regex!14921)

(assert (=> b!5288636 (= e!3287918 (Concat!23766 (h!67387 lt!2161306) (generalisedConcat!590 (t!374266 lt!2161306))))))

(declare-fun b!5288637 () Bool)

(assert (=> b!5288637 (= e!3287917 e!3287918)))

(declare-fun c!917266 () Bool)

(assert (=> b!5288637 (= c!917266 ((_ is Cons!60939) lt!2161306))))

(declare-fun b!5288638 () Bool)

(declare-fun e!3287919 () Bool)

(declare-fun e!3287915 () Bool)

(assert (=> b!5288638 (= e!3287919 e!3287915)))

(declare-fun c!917268 () Bool)

(assert (=> b!5288638 (= c!917268 (isEmpty!32892 (tail!10432 lt!2161306)))))

(declare-fun b!5288639 () Bool)

(assert (=> b!5288639 (= e!3287917 (h!67387 lt!2161306))))

(declare-fun b!5288640 () Bool)

(assert (=> b!5288640 (= e!3287919 (isEmptyExpr!843 lt!2161476))))

(declare-fun b!5288641 () Bool)

(assert (=> b!5288641 (= e!3287915 (isConcat!366 lt!2161476))))

(declare-fun b!5288642 () Bool)

(assert (=> b!5288642 (= e!3287916 e!3287919)))

(declare-fun c!917269 () Bool)

(assert (=> b!5288642 (= c!917269 (isEmpty!32892 lt!2161306))))

(declare-fun b!5288643 () Bool)

(assert (=> b!5288643 (= e!3287914 (isEmpty!32892 (t!374266 lt!2161306)))))

(declare-fun b!5288644 () Bool)

(assert (=> b!5288644 (= e!3287918 EmptyExpr!14921)))

(declare-fun b!5288645 () Bool)

(assert (=> b!5288645 (= e!3287915 (= lt!2161476 (head!11335 lt!2161306)))))

(assert (= (and d!1701230 res!2243056) b!5288643))

(assert (= (and d!1701230 c!917267) b!5288639))

(assert (= (and d!1701230 (not c!917267)) b!5288637))

(assert (= (and b!5288637 c!917266) b!5288636))

(assert (= (and b!5288637 (not c!917266)) b!5288644))

(assert (= (and d!1701230 res!2243057) b!5288642))

(assert (= (and b!5288642 c!917269) b!5288640))

(assert (= (and b!5288642 (not c!917269)) b!5288638))

(assert (= (and b!5288638 c!917268) b!5288645))

(assert (= (and b!5288638 (not c!917268)) b!5288641))

(declare-fun m!6326112 () Bool)

(assert (=> b!5288641 m!6326112))

(declare-fun m!6326114 () Bool)

(assert (=> b!5288640 m!6326114))

(declare-fun m!6326116 () Bool)

(assert (=> b!5288643 m!6326116))

(declare-fun m!6326118 () Bool)

(assert (=> d!1701230 m!6326118))

(declare-fun m!6326120 () Bool)

(assert (=> d!1701230 m!6326120))

(declare-fun m!6326122 () Bool)

(assert (=> b!5288645 m!6326122))

(declare-fun m!6326124 () Bool)

(assert (=> b!5288638 m!6326124))

(assert (=> b!5288638 m!6326124))

(declare-fun m!6326126 () Bool)

(assert (=> b!5288638 m!6326126))

(declare-fun m!6326128 () Bool)

(assert (=> b!5288642 m!6326128))

(declare-fun m!6326130 () Bool)

(assert (=> b!5288636 m!6326130))

(assert (=> b!5287700 d!1701230))

(declare-fun d!1701232 () Bool)

(assert (=> d!1701232 (= (matchR!7106 lt!2161300 s!2326) (matchZipper!1165 lt!2161312 s!2326))))

(declare-fun lt!2161477 () Unit!153202)

(assert (=> d!1701232 (= lt!2161477 (choose!39495 lt!2161312 (Cons!60940 lt!2161287 Nil!60940) lt!2161300 s!2326))))

(assert (=> d!1701232 (validRegex!6657 lt!2161300)))

(assert (=> d!1701232 (= (theoremZipperRegexEquiv!331 lt!2161312 (Cons!60940 lt!2161287 Nil!60940) lt!2161300 s!2326) lt!2161477)))

(declare-fun bs!1225417 () Bool)

(assert (= bs!1225417 d!1701232))

(assert (=> bs!1225417 m!6325206))

(assert (=> bs!1225417 m!6325182))

(declare-fun m!6326132 () Bool)

(assert (=> bs!1225417 m!6326132))

(declare-fun m!6326134 () Bool)

(assert (=> bs!1225417 m!6326134))

(assert (=> b!5287700 d!1701232))

(declare-fun bs!1225418 () Bool)

(declare-fun d!1701234 () Bool)

(assert (= bs!1225418 (and d!1701234 b!5288579)))

(declare-fun lambda!267651 () Int)

(assert (=> bs!1225418 (not (= lambda!267651 lambda!267649))))

(declare-fun bs!1225419 () Bool)

(assert (= bs!1225419 (and d!1701234 d!1701166)))

(assert (=> bs!1225419 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267651 lambda!267629))))

(declare-fun bs!1225420 () Bool)

(assert (= bs!1225420 (and d!1701234 d!1701146)))

(assert (=> bs!1225420 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267651 lambda!267621))))

(declare-fun bs!1225421 () Bool)

(assert (= bs!1225421 (and d!1701234 b!5287706)))

(assert (=> bs!1225421 (not (= lambda!267651 lambda!267545))))

(assert (=> bs!1225421 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267651 lambda!267544))))

(declare-fun bs!1225422 () Bool)

(assert (= bs!1225422 (and d!1701234 b!5287700)))

(assert (=> bs!1225422 (not (= lambda!267651 lambda!267548))))

(declare-fun bs!1225423 () Bool)

(assert (= bs!1225423 (and d!1701234 b!5288580)))

(assert (=> bs!1225423 (not (= lambda!267651 lambda!267648))))

(assert (=> bs!1225422 (= lambda!267651 lambda!267547)))

(declare-fun bs!1225424 () Bool)

(assert (= bs!1225424 (and d!1701234 b!5288548)))

(assert (=> bs!1225424 (not (= lambda!267651 lambda!267645))))

(declare-fun bs!1225425 () Bool)

(assert (= bs!1225425 (and d!1701234 b!5288547)))

(assert (=> bs!1225425 (not (= lambda!267651 lambda!267646))))

(assert (=> bs!1225419 (not (= lambda!267651 lambda!267633))))

(assert (=> d!1701234 true))

(assert (=> d!1701234 true))

(assert (=> d!1701234 true))

(assert (=> d!1701234 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326)) (Exists!2102 lambda!267651))))

(declare-fun lt!2161478 () Unit!153202)

(assert (=> d!1701234 (= lt!2161478 (choose!39492 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326))))

(assert (=> d!1701234 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1701234 (= (lemmaFindConcatSeparationEquivalentToExists!1210 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326) lt!2161478)))

(declare-fun bs!1225426 () Bool)

(assert (= bs!1225426 d!1701234))

(declare-fun m!6326136 () Bool)

(assert (=> bs!1225426 m!6326136))

(assert (=> bs!1225426 m!6325188))

(assert (=> bs!1225426 m!6325188))

(assert (=> bs!1225426 m!6325190))

(assert (=> bs!1225426 m!6326068))

(declare-fun m!6326138 () Bool)

(assert (=> bs!1225426 m!6326138))

(assert (=> b!5287700 d!1701234))

(declare-fun d!1701236 () Bool)

(assert (=> d!1701236 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326)) (not (isEmpty!32896 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326))))))

(declare-fun bs!1225427 () Bool)

(assert (= bs!1225427 d!1701236))

(assert (=> bs!1225427 m!6325188))

(declare-fun m!6326140 () Bool)

(assert (=> bs!1225427 m!6326140))

(assert (=> b!5287700 d!1701236))

(declare-fun bs!1225428 () Bool)

(declare-fun d!1701238 () Bool)

(assert (= bs!1225428 (and d!1701238 b!5288579)))

(declare-fun lambda!267652 () Int)

(assert (=> bs!1225428 (not (= lambda!267652 lambda!267649))))

(declare-fun bs!1225429 () Bool)

(assert (= bs!1225429 (and d!1701238 d!1701166)))

(assert (=> bs!1225429 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267652 lambda!267629))))

(declare-fun bs!1225430 () Bool)

(assert (= bs!1225430 (and d!1701238 d!1701146)))

(assert (=> bs!1225430 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267652 lambda!267621))))

(declare-fun bs!1225431 () Bool)

(assert (= bs!1225431 (and d!1701238 b!5287706)))

(assert (=> bs!1225431 (not (= lambda!267652 lambda!267545))))

(declare-fun bs!1225432 () Bool)

(assert (= bs!1225432 (and d!1701238 d!1701234)))

(assert (=> bs!1225432 (= lambda!267652 lambda!267651)))

(assert (=> bs!1225431 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267652 lambda!267544))))

(declare-fun bs!1225433 () Bool)

(assert (= bs!1225433 (and d!1701238 b!5287700)))

(assert (=> bs!1225433 (not (= lambda!267652 lambda!267548))))

(declare-fun bs!1225434 () Bool)

(assert (= bs!1225434 (and d!1701238 b!5288580)))

(assert (=> bs!1225434 (not (= lambda!267652 lambda!267648))))

(assert (=> bs!1225433 (= lambda!267652 lambda!267547)))

(declare-fun bs!1225435 () Bool)

(assert (= bs!1225435 (and d!1701238 b!5288548)))

(assert (=> bs!1225435 (not (= lambda!267652 lambda!267645))))

(declare-fun bs!1225436 () Bool)

(assert (= bs!1225436 (and d!1701238 b!5288547)))

(assert (=> bs!1225436 (not (= lambda!267652 lambda!267646))))

(assert (=> bs!1225429 (not (= lambda!267652 lambda!267633))))

(assert (=> d!1701238 true))

(assert (=> d!1701238 true))

(assert (=> d!1701238 true))

(declare-fun lambda!267653 () Int)

(assert (=> bs!1225428 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 lt!2161294)) (= lt!2161300 (regTwo!30354 lt!2161294))) (= lambda!267653 lambda!267649))))

(assert (=> bs!1225429 (not (= lambda!267653 lambda!267629))))

(assert (=> bs!1225430 (not (= lambda!267653 lambda!267621))))

(assert (=> bs!1225431 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267653 lambda!267545))))

(assert (=> bs!1225431 (not (= lambda!267653 lambda!267544))))

(assert (=> bs!1225433 (= lambda!267653 lambda!267548)))

(assert (=> bs!1225434 (not (= lambda!267653 lambda!267648))))

(assert (=> bs!1225433 (not (= lambda!267653 lambda!267547))))

(assert (=> bs!1225435 (not (= lambda!267653 lambda!267645))))

(declare-fun bs!1225437 () Bool)

(assert (= bs!1225437 d!1701238))

(assert (=> bs!1225437 (not (= lambda!267653 lambda!267652))))

(assert (=> bs!1225432 (not (= lambda!267653 lambda!267651))))

(assert (=> bs!1225436 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 lt!2161300)) (= lt!2161300 (regTwo!30354 lt!2161300))) (= lambda!267653 lambda!267646))))

(assert (=> bs!1225429 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267653 lambda!267633))))

(assert (=> d!1701238 true))

(assert (=> d!1701238 true))

(assert (=> d!1701238 true))

(assert (=> d!1701238 (= (Exists!2102 lambda!267652) (Exists!2102 lambda!267653))))

(declare-fun lt!2161479 () Unit!153202)

(assert (=> d!1701238 (= lt!2161479 (choose!39493 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326))))

(assert (=> d!1701238 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1701238 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!756 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326) lt!2161479)))

(declare-fun m!6326142 () Bool)

(assert (=> bs!1225437 m!6326142))

(declare-fun m!6326144 () Bool)

(assert (=> bs!1225437 m!6326144))

(declare-fun m!6326146 () Bool)

(assert (=> bs!1225437 m!6326146))

(assert (=> bs!1225437 m!6326068))

(assert (=> b!5287700 d!1701238))

(declare-fun b!5288646 () Bool)

(declare-fun e!3287921 () Bool)

(assert (=> b!5288646 (= e!3287921 (not (= (head!11334 s!2326) (c!916969 lt!2161300))))))

(declare-fun b!5288647 () Bool)

(declare-fun e!3287920 () Bool)

(assert (=> b!5288647 (= e!3287920 (nullable!5090 lt!2161300))))

(declare-fun d!1701240 () Bool)

(declare-fun e!3287925 () Bool)

(assert (=> d!1701240 e!3287925))

(declare-fun c!917271 () Bool)

(assert (=> d!1701240 (= c!917271 ((_ is EmptyExpr!14921) lt!2161300))))

(declare-fun lt!2161480 () Bool)

(assert (=> d!1701240 (= lt!2161480 e!3287920)))

(declare-fun c!917270 () Bool)

(assert (=> d!1701240 (= c!917270 (isEmpty!32895 s!2326))))

(assert (=> d!1701240 (validRegex!6657 lt!2161300)))

(assert (=> d!1701240 (= (matchR!7106 lt!2161300 s!2326) lt!2161480)))

(declare-fun b!5288648 () Bool)

(declare-fun e!3287926 () Bool)

(assert (=> b!5288648 (= e!3287926 (= (head!11334 s!2326) (c!916969 lt!2161300)))))

(declare-fun b!5288649 () Bool)

(declare-fun e!3287924 () Bool)

(assert (=> b!5288649 (= e!3287925 e!3287924)))

(declare-fun c!917272 () Bool)

(assert (=> b!5288649 (= c!917272 ((_ is EmptyLang!14921) lt!2161300))))

(declare-fun b!5288650 () Bool)

(assert (=> b!5288650 (= e!3287920 (matchR!7106 (derivativeStep!4129 lt!2161300 (head!11334 s!2326)) (tail!10430 s!2326)))))

(declare-fun b!5288651 () Bool)

(declare-fun res!2243065 () Bool)

(assert (=> b!5288651 (=> (not res!2243065) (not e!3287926))))

(assert (=> b!5288651 (= res!2243065 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5288652 () Bool)

(declare-fun e!3287922 () Bool)

(declare-fun e!3287923 () Bool)

(assert (=> b!5288652 (= e!3287922 e!3287923)))

(declare-fun res!2243064 () Bool)

(assert (=> b!5288652 (=> (not res!2243064) (not e!3287923))))

(assert (=> b!5288652 (= res!2243064 (not lt!2161480))))

(declare-fun b!5288653 () Bool)

(declare-fun res!2243062 () Bool)

(assert (=> b!5288653 (=> res!2243062 e!3287922)))

(assert (=> b!5288653 (= res!2243062 e!3287926)))

(declare-fun res!2243063 () Bool)

(assert (=> b!5288653 (=> (not res!2243063) (not e!3287926))))

(assert (=> b!5288653 (= res!2243063 lt!2161480)))

(declare-fun b!5288654 () Bool)

(declare-fun call!376721 () Bool)

(assert (=> b!5288654 (= e!3287925 (= lt!2161480 call!376721))))

(declare-fun b!5288655 () Bool)

(assert (=> b!5288655 (= e!3287923 e!3287921)))

(declare-fun res!2243058 () Bool)

(assert (=> b!5288655 (=> res!2243058 e!3287921)))

(assert (=> b!5288655 (= res!2243058 call!376721)))

(declare-fun bm!376716 () Bool)

(assert (=> bm!376716 (= call!376721 (isEmpty!32895 s!2326))))

(declare-fun b!5288656 () Bool)

(declare-fun res!2243059 () Bool)

(assert (=> b!5288656 (=> res!2243059 e!3287922)))

(assert (=> b!5288656 (= res!2243059 (not ((_ is ElementMatch!14921) lt!2161300)))))

(assert (=> b!5288656 (= e!3287924 e!3287922)))

(declare-fun b!5288657 () Bool)

(declare-fun res!2243061 () Bool)

(assert (=> b!5288657 (=> res!2243061 e!3287921)))

(assert (=> b!5288657 (= res!2243061 (not (isEmpty!32895 (tail!10430 s!2326))))))

(declare-fun b!5288658 () Bool)

(declare-fun res!2243060 () Bool)

(assert (=> b!5288658 (=> (not res!2243060) (not e!3287926))))

(assert (=> b!5288658 (= res!2243060 (not call!376721))))

(declare-fun b!5288659 () Bool)

(assert (=> b!5288659 (= e!3287924 (not lt!2161480))))

(assert (= (and d!1701240 c!917270) b!5288647))

(assert (= (and d!1701240 (not c!917270)) b!5288650))

(assert (= (and d!1701240 c!917271) b!5288654))

(assert (= (and d!1701240 (not c!917271)) b!5288649))

(assert (= (and b!5288649 c!917272) b!5288659))

(assert (= (and b!5288649 (not c!917272)) b!5288656))

(assert (= (and b!5288656 (not res!2243059)) b!5288653))

(assert (= (and b!5288653 res!2243063) b!5288658))

(assert (= (and b!5288658 res!2243060) b!5288651))

(assert (= (and b!5288651 res!2243065) b!5288648))

(assert (= (and b!5288653 (not res!2243062)) b!5288652))

(assert (= (and b!5288652 res!2243064) b!5288655))

(assert (= (and b!5288655 (not res!2243058)) b!5288657))

(assert (= (and b!5288657 (not res!2243061)) b!5288646))

(assert (= (or b!5288654 b!5288655 b!5288658) bm!376716))

(assert (=> b!5288648 m!6326076))

(assert (=> b!5288657 m!6326080))

(assert (=> b!5288657 m!6326080))

(assert (=> b!5288657 m!6326100))

(assert (=> b!5288651 m!6326080))

(assert (=> b!5288651 m!6326080))

(assert (=> b!5288651 m!6326100))

(assert (=> b!5288646 m!6326076))

(declare-fun m!6326148 () Bool)

(assert (=> b!5288647 m!6326148))

(assert (=> bm!376716 m!6326026))

(assert (=> b!5288650 m!6326076))

(assert (=> b!5288650 m!6326076))

(declare-fun m!6326150 () Bool)

(assert (=> b!5288650 m!6326150))

(assert (=> b!5288650 m!6326080))

(assert (=> b!5288650 m!6326150))

(assert (=> b!5288650 m!6326080))

(declare-fun m!6326152 () Bool)

(assert (=> b!5288650 m!6326152))

(assert (=> d!1701240 m!6326026))

(assert (=> d!1701240 m!6326134))

(assert (=> b!5287700 d!1701240))

(declare-fun d!1701242 () Bool)

(assert (=> d!1701242 (= (matchR!7106 lt!2161300 s!2326) (matchRSpec!2024 lt!2161300 s!2326))))

(declare-fun lt!2161481 () Unit!153202)

(assert (=> d!1701242 (= lt!2161481 (choose!39494 lt!2161300 s!2326))))

(assert (=> d!1701242 (validRegex!6657 lt!2161300)))

(assert (=> d!1701242 (= (mainMatchTheorem!2024 lt!2161300 s!2326) lt!2161481)))

(declare-fun bs!1225438 () Bool)

(assert (= bs!1225438 d!1701242))

(assert (=> bs!1225438 m!6325206))

(assert (=> bs!1225438 m!6325212))

(declare-fun m!6326154 () Bool)

(assert (=> bs!1225438 m!6326154))

(assert (=> bs!1225438 m!6326134))

(assert (=> b!5287700 d!1701242))

(declare-fun d!1701244 () Bool)

(declare-fun c!917273 () Bool)

(assert (=> d!1701244 (= c!917273 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287927 () Bool)

(assert (=> d!1701244 (= (matchZipper!1165 lt!2161307 (t!374265 s!2326)) e!3287927)))

(declare-fun b!5288660 () Bool)

(assert (=> b!5288660 (= e!3287927 (nullableZipper!1308 lt!2161307))))

(declare-fun b!5288661 () Bool)

(assert (=> b!5288661 (= e!3287927 (matchZipper!1165 (derivationStepZipper!1164 lt!2161307 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701244 c!917273) b!5288660))

(assert (= (and d!1701244 (not c!917273)) b!5288661))

(assert (=> d!1701244 m!6325484))

(declare-fun m!6326156 () Bool)

(assert (=> b!5288660 m!6326156))

(assert (=> b!5288661 m!6325488))

(assert (=> b!5288661 m!6325488))

(declare-fun m!6326158 () Bool)

(assert (=> b!5288661 m!6326158))

(assert (=> b!5288661 m!6325492))

(assert (=> b!5288661 m!6326158))

(assert (=> b!5288661 m!6325492))

(declare-fun m!6326160 () Bool)

(assert (=> b!5288661 m!6326160))

(assert (=> b!5287701 d!1701244))

(declare-fun bs!1225439 () Bool)

(declare-fun b!5288667 () Bool)

(assert (= bs!1225439 (and b!5288667 b!5288579)))

(declare-fun lambda!267654 () Int)

(assert (=> bs!1225439 (not (= lambda!267654 lambda!267649))))

(declare-fun bs!1225440 () Bool)

(assert (= bs!1225440 (and b!5288667 d!1701166)))

(assert (=> bs!1225440 (not (= lambda!267654 lambda!267629))))

(declare-fun bs!1225441 () Bool)

(assert (= bs!1225441 (and b!5288667 d!1701146)))

(assert (=> bs!1225441 (not (= lambda!267654 lambda!267621))))

(declare-fun bs!1225442 () Bool)

(assert (= bs!1225442 (and b!5288667 b!5287706)))

(assert (=> bs!1225442 (not (= lambda!267654 lambda!267545))))

(assert (=> bs!1225442 (not (= lambda!267654 lambda!267544))))

(declare-fun bs!1225443 () Bool)

(assert (= bs!1225443 (and b!5288667 d!1701238)))

(assert (=> bs!1225443 (not (= lambda!267654 lambda!267653))))

(declare-fun bs!1225444 () Bool)

(assert (= bs!1225444 (and b!5288667 b!5287700)))

(assert (=> bs!1225444 (not (= lambda!267654 lambda!267548))))

(declare-fun bs!1225445 () Bool)

(assert (= bs!1225445 (and b!5288667 b!5288580)))

(assert (=> bs!1225445 (= (and (= (reg!15250 r!7292) (reg!15250 lt!2161294)) (= r!7292 lt!2161294)) (= lambda!267654 lambda!267648))))

(assert (=> bs!1225444 (not (= lambda!267654 lambda!267547))))

(declare-fun bs!1225446 () Bool)

(assert (= bs!1225446 (and b!5288667 b!5288548)))

(assert (=> bs!1225446 (= (and (= (reg!15250 r!7292) (reg!15250 lt!2161300)) (= r!7292 lt!2161300)) (= lambda!267654 lambda!267645))))

(assert (=> bs!1225443 (not (= lambda!267654 lambda!267652))))

(declare-fun bs!1225447 () Bool)

(assert (= bs!1225447 (and b!5288667 d!1701234)))

(assert (=> bs!1225447 (not (= lambda!267654 lambda!267651))))

(declare-fun bs!1225448 () Bool)

(assert (= bs!1225448 (and b!5288667 b!5288547)))

(assert (=> bs!1225448 (not (= lambda!267654 lambda!267646))))

(assert (=> bs!1225440 (not (= lambda!267654 lambda!267633))))

(assert (=> b!5288667 true))

(assert (=> b!5288667 true))

(declare-fun bs!1225449 () Bool)

(declare-fun b!5288666 () Bool)

(assert (= bs!1225449 (and b!5288666 b!5288579)))

(declare-fun lambda!267655 () Int)

(assert (=> bs!1225449 (= (and (= (regOne!30354 r!7292) (regOne!30354 lt!2161294)) (= (regTwo!30354 r!7292) (regTwo!30354 lt!2161294))) (= lambda!267655 lambda!267649))))

(declare-fun bs!1225450 () Bool)

(assert (= bs!1225450 (and b!5288666 d!1701166)))

(assert (=> bs!1225450 (not (= lambda!267655 lambda!267629))))

(declare-fun bs!1225451 () Bool)

(assert (= bs!1225451 (and b!5288666 d!1701146)))

(assert (=> bs!1225451 (not (= lambda!267655 lambda!267621))))

(declare-fun bs!1225452 () Bool)

(assert (= bs!1225452 (and b!5288666 b!5287706)))

(assert (=> bs!1225452 (= lambda!267655 lambda!267545)))

(assert (=> bs!1225452 (not (= lambda!267655 lambda!267544))))

(declare-fun bs!1225453 () Bool)

(assert (= bs!1225453 (and b!5288666 b!5288667)))

(assert (=> bs!1225453 (not (= lambda!267655 lambda!267654))))

(declare-fun bs!1225454 () Bool)

(assert (= bs!1225454 (and b!5288666 d!1701238)))

(assert (=> bs!1225454 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267655 lambda!267653))))

(declare-fun bs!1225455 () Bool)

(assert (= bs!1225455 (and b!5288666 b!5287700)))

(assert (=> bs!1225455 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267655 lambda!267548))))

(declare-fun bs!1225456 () Bool)

(assert (= bs!1225456 (and b!5288666 b!5288580)))

(assert (=> bs!1225456 (not (= lambda!267655 lambda!267648))))

(assert (=> bs!1225455 (not (= lambda!267655 lambda!267547))))

(declare-fun bs!1225457 () Bool)

(assert (= bs!1225457 (and b!5288666 b!5288548)))

(assert (=> bs!1225457 (not (= lambda!267655 lambda!267645))))

(assert (=> bs!1225454 (not (= lambda!267655 lambda!267652))))

(declare-fun bs!1225458 () Bool)

(assert (= bs!1225458 (and b!5288666 d!1701234)))

(assert (=> bs!1225458 (not (= lambda!267655 lambda!267651))))

(declare-fun bs!1225459 () Bool)

(assert (= bs!1225459 (and b!5288666 b!5288547)))

(assert (=> bs!1225459 (= (and (= (regOne!30354 r!7292) (regOne!30354 lt!2161300)) (= (regTwo!30354 r!7292) (regTwo!30354 lt!2161300))) (= lambda!267655 lambda!267646))))

(assert (=> bs!1225450 (= lambda!267655 lambda!267633)))

(assert (=> b!5288666 true))

(assert (=> b!5288666 true))

(declare-fun b!5288662 () Bool)

(declare-fun e!3287931 () Bool)

(declare-fun e!3287930 () Bool)

(assert (=> b!5288662 (= e!3287931 e!3287930)))

(declare-fun c!917274 () Bool)

(assert (=> b!5288662 (= c!917274 ((_ is Star!14921) r!7292))))

(declare-fun b!5288663 () Bool)

(declare-fun c!917277 () Bool)

(assert (=> b!5288663 (= c!917277 ((_ is Union!14921) r!7292))))

(declare-fun e!3287928 () Bool)

(assert (=> b!5288663 (= e!3287928 e!3287931)))

(declare-fun b!5288665 () Bool)

(assert (=> b!5288665 (= e!3287928 (= s!2326 (Cons!60938 (c!916969 r!7292) Nil!60938)))))

(declare-fun call!376723 () Bool)

(assert (=> b!5288666 (= e!3287930 call!376723)))

(declare-fun e!3287933 () Bool)

(assert (=> b!5288667 (= e!3287933 call!376723)))

(declare-fun b!5288668 () Bool)

(declare-fun e!3287932 () Bool)

(declare-fun e!3287934 () Bool)

(assert (=> b!5288668 (= e!3287932 e!3287934)))

(declare-fun res!2243068 () Bool)

(assert (=> b!5288668 (= res!2243068 (not ((_ is EmptyLang!14921) r!7292)))))

(assert (=> b!5288668 (=> (not res!2243068) (not e!3287934))))

(declare-fun bm!376717 () Bool)

(declare-fun call!376722 () Bool)

(assert (=> bm!376717 (= call!376722 (isEmpty!32895 s!2326))))

(declare-fun d!1701246 () Bool)

(declare-fun c!917276 () Bool)

(assert (=> d!1701246 (= c!917276 ((_ is EmptyExpr!14921) r!7292))))

(assert (=> d!1701246 (= (matchRSpec!2024 r!7292 s!2326) e!3287932)))

(declare-fun b!5288664 () Bool)

(declare-fun e!3287929 () Bool)

(assert (=> b!5288664 (= e!3287931 e!3287929)))

(declare-fun res!2243067 () Bool)

(assert (=> b!5288664 (= res!2243067 (matchRSpec!2024 (regOne!30355 r!7292) s!2326))))

(assert (=> b!5288664 (=> res!2243067 e!3287929)))

(declare-fun b!5288669 () Bool)

(declare-fun c!917275 () Bool)

(assert (=> b!5288669 (= c!917275 ((_ is ElementMatch!14921) r!7292))))

(assert (=> b!5288669 (= e!3287934 e!3287928)))

(declare-fun b!5288670 () Bool)

(declare-fun res!2243066 () Bool)

(assert (=> b!5288670 (=> res!2243066 e!3287933)))

(assert (=> b!5288670 (= res!2243066 call!376722)))

(assert (=> b!5288670 (= e!3287930 e!3287933)))

(declare-fun b!5288671 () Bool)

(assert (=> b!5288671 (= e!3287932 call!376722)))

(declare-fun bm!376718 () Bool)

(assert (=> bm!376718 (= call!376723 (Exists!2102 (ite c!917274 lambda!267654 lambda!267655)))))

(declare-fun b!5288672 () Bool)

(assert (=> b!5288672 (= e!3287929 (matchRSpec!2024 (regTwo!30355 r!7292) s!2326))))

(assert (= (and d!1701246 c!917276) b!5288671))

(assert (= (and d!1701246 (not c!917276)) b!5288668))

(assert (= (and b!5288668 res!2243068) b!5288669))

(assert (= (and b!5288669 c!917275) b!5288665))

(assert (= (and b!5288669 (not c!917275)) b!5288663))

(assert (= (and b!5288663 c!917277) b!5288664))

(assert (= (and b!5288663 (not c!917277)) b!5288662))

(assert (= (and b!5288664 (not res!2243067)) b!5288672))

(assert (= (and b!5288662 c!917274) b!5288670))

(assert (= (and b!5288662 (not c!917274)) b!5288666))

(assert (= (and b!5288670 (not res!2243066)) b!5288667))

(assert (= (or b!5288667 b!5288666) bm!376718))

(assert (= (or b!5288671 b!5288670) bm!376717))

(assert (=> bm!376717 m!6326026))

(declare-fun m!6326162 () Bool)

(assert (=> b!5288664 m!6326162))

(declare-fun m!6326164 () Bool)

(assert (=> bm!376718 m!6326164))

(declare-fun m!6326166 () Bool)

(assert (=> b!5288672 m!6326166))

(assert (=> b!5287699 d!1701246))

(declare-fun b!5288673 () Bool)

(declare-fun e!3287936 () Bool)

(assert (=> b!5288673 (= e!3287936 (not (= (head!11334 s!2326) (c!916969 r!7292))))))

(declare-fun b!5288674 () Bool)

(declare-fun e!3287935 () Bool)

(assert (=> b!5288674 (= e!3287935 (nullable!5090 r!7292))))

(declare-fun d!1701248 () Bool)

(declare-fun e!3287940 () Bool)

(assert (=> d!1701248 e!3287940))

(declare-fun c!917279 () Bool)

(assert (=> d!1701248 (= c!917279 ((_ is EmptyExpr!14921) r!7292))))

(declare-fun lt!2161482 () Bool)

(assert (=> d!1701248 (= lt!2161482 e!3287935)))

(declare-fun c!917278 () Bool)

(assert (=> d!1701248 (= c!917278 (isEmpty!32895 s!2326))))

(assert (=> d!1701248 (validRegex!6657 r!7292)))

(assert (=> d!1701248 (= (matchR!7106 r!7292 s!2326) lt!2161482)))

(declare-fun b!5288675 () Bool)

(declare-fun e!3287941 () Bool)

(assert (=> b!5288675 (= e!3287941 (= (head!11334 s!2326) (c!916969 r!7292)))))

(declare-fun b!5288676 () Bool)

(declare-fun e!3287939 () Bool)

(assert (=> b!5288676 (= e!3287940 e!3287939)))

(declare-fun c!917280 () Bool)

(assert (=> b!5288676 (= c!917280 ((_ is EmptyLang!14921) r!7292))))

(declare-fun b!5288677 () Bool)

(assert (=> b!5288677 (= e!3287935 (matchR!7106 (derivativeStep!4129 r!7292 (head!11334 s!2326)) (tail!10430 s!2326)))))

(declare-fun b!5288678 () Bool)

(declare-fun res!2243076 () Bool)

(assert (=> b!5288678 (=> (not res!2243076) (not e!3287941))))

(assert (=> b!5288678 (= res!2243076 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5288679 () Bool)

(declare-fun e!3287937 () Bool)

(declare-fun e!3287938 () Bool)

(assert (=> b!5288679 (= e!3287937 e!3287938)))

(declare-fun res!2243075 () Bool)

(assert (=> b!5288679 (=> (not res!2243075) (not e!3287938))))

(assert (=> b!5288679 (= res!2243075 (not lt!2161482))))

(declare-fun b!5288680 () Bool)

(declare-fun res!2243073 () Bool)

(assert (=> b!5288680 (=> res!2243073 e!3287937)))

(assert (=> b!5288680 (= res!2243073 e!3287941)))

(declare-fun res!2243074 () Bool)

(assert (=> b!5288680 (=> (not res!2243074) (not e!3287941))))

(assert (=> b!5288680 (= res!2243074 lt!2161482)))

(declare-fun b!5288681 () Bool)

(declare-fun call!376724 () Bool)

(assert (=> b!5288681 (= e!3287940 (= lt!2161482 call!376724))))

(declare-fun b!5288682 () Bool)

(assert (=> b!5288682 (= e!3287938 e!3287936)))

(declare-fun res!2243069 () Bool)

(assert (=> b!5288682 (=> res!2243069 e!3287936)))

(assert (=> b!5288682 (= res!2243069 call!376724)))

(declare-fun bm!376719 () Bool)

(assert (=> bm!376719 (= call!376724 (isEmpty!32895 s!2326))))

(declare-fun b!5288683 () Bool)

(declare-fun res!2243070 () Bool)

(assert (=> b!5288683 (=> res!2243070 e!3287937)))

(assert (=> b!5288683 (= res!2243070 (not ((_ is ElementMatch!14921) r!7292)))))

(assert (=> b!5288683 (= e!3287939 e!3287937)))

(declare-fun b!5288684 () Bool)

(declare-fun res!2243072 () Bool)

(assert (=> b!5288684 (=> res!2243072 e!3287936)))

(assert (=> b!5288684 (= res!2243072 (not (isEmpty!32895 (tail!10430 s!2326))))))

(declare-fun b!5288685 () Bool)

(declare-fun res!2243071 () Bool)

(assert (=> b!5288685 (=> (not res!2243071) (not e!3287941))))

(assert (=> b!5288685 (= res!2243071 (not call!376724))))

(declare-fun b!5288686 () Bool)

(assert (=> b!5288686 (= e!3287939 (not lt!2161482))))

(assert (= (and d!1701248 c!917278) b!5288674))

(assert (= (and d!1701248 (not c!917278)) b!5288677))

(assert (= (and d!1701248 c!917279) b!5288681))

(assert (= (and d!1701248 (not c!917279)) b!5288676))

(assert (= (and b!5288676 c!917280) b!5288686))

(assert (= (and b!5288676 (not c!917280)) b!5288683))

(assert (= (and b!5288683 (not res!2243070)) b!5288680))

(assert (= (and b!5288680 res!2243074) b!5288685))

(assert (= (and b!5288685 res!2243071) b!5288678))

(assert (= (and b!5288678 res!2243076) b!5288675))

(assert (= (and b!5288680 (not res!2243073)) b!5288679))

(assert (= (and b!5288679 res!2243075) b!5288682))

(assert (= (and b!5288682 (not res!2243069)) b!5288684))

(assert (= (and b!5288684 (not res!2243072)) b!5288673))

(assert (= (or b!5288681 b!5288682 b!5288685) bm!376719))

(assert (=> b!5288675 m!6326076))

(assert (=> b!5288684 m!6326080))

(assert (=> b!5288684 m!6326080))

(assert (=> b!5288684 m!6326100))

(assert (=> b!5288678 m!6326080))

(assert (=> b!5288678 m!6326080))

(assert (=> b!5288678 m!6326100))

(assert (=> b!5288673 m!6326076))

(declare-fun m!6326168 () Bool)

(assert (=> b!5288674 m!6326168))

(assert (=> bm!376719 m!6326026))

(assert (=> b!5288677 m!6326076))

(assert (=> b!5288677 m!6326076))

(declare-fun m!6326170 () Bool)

(assert (=> b!5288677 m!6326170))

(assert (=> b!5288677 m!6326080))

(assert (=> b!5288677 m!6326170))

(assert (=> b!5288677 m!6326080))

(declare-fun m!6326172 () Bool)

(assert (=> b!5288677 m!6326172))

(assert (=> d!1701248 m!6326026))

(assert (=> d!1701248 m!6325254))

(assert (=> b!5287699 d!1701248))

(declare-fun d!1701250 () Bool)

(assert (=> d!1701250 (= (matchR!7106 r!7292 s!2326) (matchRSpec!2024 r!7292 s!2326))))

(declare-fun lt!2161483 () Unit!153202)

(assert (=> d!1701250 (= lt!2161483 (choose!39494 r!7292 s!2326))))

(assert (=> d!1701250 (validRegex!6657 r!7292)))

(assert (=> d!1701250 (= (mainMatchTheorem!2024 r!7292 s!2326) lt!2161483)))

(declare-fun bs!1225460 () Bool)

(assert (= bs!1225460 d!1701250))

(assert (=> bs!1225460 m!6325250))

(assert (=> bs!1225460 m!6325248))

(declare-fun m!6326174 () Bool)

(assert (=> bs!1225460 m!6326174))

(assert (=> bs!1225460 m!6325254))

(assert (=> b!5287699 d!1701250))

(declare-fun e!3287942 () Bool)

(declare-fun d!1701252 () Bool)

(assert (=> d!1701252 (= (matchZipper!1165 ((_ map or) lt!2161309 lt!2161307) (t!374265 s!2326)) e!3287942)))

(declare-fun res!2243077 () Bool)

(assert (=> d!1701252 (=> res!2243077 e!3287942)))

(assert (=> d!1701252 (= res!2243077 (matchZipper!1165 lt!2161309 (t!374265 s!2326)))))

(declare-fun lt!2161484 () Unit!153202)

(assert (=> d!1701252 (= lt!2161484 (choose!39485 lt!2161309 lt!2161307 (t!374265 s!2326)))))

(assert (=> d!1701252 (= (lemmaZipperConcatMatchesSameAsBothZippers!158 lt!2161309 lt!2161307 (t!374265 s!2326)) lt!2161484)))

(declare-fun b!5288687 () Bool)

(assert (=> b!5288687 (= e!3287942 (matchZipper!1165 lt!2161307 (t!374265 s!2326)))))

(assert (= (and d!1701252 (not res!2243077)) b!5288687))

(assert (=> d!1701252 m!6325282))

(assert (=> d!1701252 m!6325174))

(declare-fun m!6326176 () Bool)

(assert (=> d!1701252 m!6326176))

(assert (=> b!5288687 m!6325170))

(assert (=> b!5287697 d!1701252))

(assert (=> b!5287697 d!1701018))

(declare-fun d!1701254 () Bool)

(declare-fun c!917281 () Bool)

(assert (=> d!1701254 (= c!917281 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3287943 () Bool)

(assert (=> d!1701254 (= (matchZipper!1165 ((_ map or) lt!2161309 lt!2161307) (t!374265 s!2326)) e!3287943)))

(declare-fun b!5288688 () Bool)

(assert (=> b!5288688 (= e!3287943 (nullableZipper!1308 ((_ map or) lt!2161309 lt!2161307)))))

(declare-fun b!5288689 () Bool)

(assert (=> b!5288689 (= e!3287943 (matchZipper!1165 (derivationStepZipper!1164 ((_ map or) lt!2161309 lt!2161307) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701254 c!917281) b!5288688))

(assert (= (and d!1701254 (not c!917281)) b!5288689))

(assert (=> d!1701254 m!6325484))

(declare-fun m!6326178 () Bool)

(assert (=> b!5288688 m!6326178))

(assert (=> b!5288689 m!6325488))

(assert (=> b!5288689 m!6325488))

(declare-fun m!6326180 () Bool)

(assert (=> b!5288689 m!6326180))

(assert (=> b!5288689 m!6325492))

(assert (=> b!5288689 m!6326180))

(assert (=> b!5288689 m!6325492))

(declare-fun m!6326182 () Bool)

(assert (=> b!5288689 m!6326182))

(assert (=> b!5287697 d!1701254))

(declare-fun d!1701256 () Bool)

(declare-fun lt!2161487 () Int)

(assert (=> d!1701256 (>= lt!2161487 0)))

(declare-fun e!3287946 () Int)

(assert (=> d!1701256 (= lt!2161487 e!3287946)))

(declare-fun c!917284 () Bool)

(assert (=> d!1701256 (= c!917284 ((_ is Cons!60940) lt!2161303))))

(assert (=> d!1701256 (= (zipperDepthTotal!82 lt!2161303) lt!2161487)))

(declare-fun b!5288694 () Bool)

(assert (=> b!5288694 (= e!3287946 (+ (contextDepthTotal!62 (h!67388 lt!2161303)) (zipperDepthTotal!82 (t!374267 lt!2161303))))))

(declare-fun b!5288695 () Bool)

(assert (=> b!5288695 (= e!3287946 0)))

(assert (= (and d!1701256 c!917284) b!5288694))

(assert (= (and d!1701256 (not c!917284)) b!5288695))

(declare-fun m!6326184 () Bool)

(assert (=> b!5288694 m!6326184))

(declare-fun m!6326186 () Bool)

(assert (=> b!5288694 m!6326186))

(assert (=> b!5287716 d!1701256))

(declare-fun d!1701258 () Bool)

(declare-fun lt!2161488 () Int)

(assert (=> d!1701258 (>= lt!2161488 0)))

(declare-fun e!3287947 () Int)

(assert (=> d!1701258 (= lt!2161488 e!3287947)))

(declare-fun c!917285 () Bool)

(assert (=> d!1701258 (= c!917285 ((_ is Cons!60940) zl!343))))

(assert (=> d!1701258 (= (zipperDepthTotal!82 zl!343) lt!2161488)))

(declare-fun b!5288696 () Bool)

(assert (=> b!5288696 (= e!3287947 (+ (contextDepthTotal!62 (h!67388 zl!343)) (zipperDepthTotal!82 (t!374267 zl!343))))))

(declare-fun b!5288697 () Bool)

(assert (=> b!5288697 (= e!3287947 0)))

(assert (= (and d!1701258 c!917285) b!5288696))

(assert (= (and d!1701258 (not c!917285)) b!5288697))

(assert (=> b!5288696 m!6325274))

(declare-fun m!6326188 () Bool)

(assert (=> b!5288696 m!6326188))

(assert (=> b!5287716 d!1701258))

(declare-fun b!5288711 () Bool)

(declare-fun e!3287950 () Bool)

(declare-fun tp!1476490 () Bool)

(declare-fun tp!1476491 () Bool)

(assert (=> b!5288711 (= e!3287950 (and tp!1476490 tp!1476491))))

(declare-fun b!5288710 () Bool)

(declare-fun tp!1476492 () Bool)

(assert (=> b!5288710 (= e!3287950 tp!1476492)))

(assert (=> b!5287705 (= tp!1476416 e!3287950)))

(declare-fun b!5288709 () Bool)

(declare-fun tp!1476494 () Bool)

(declare-fun tp!1476493 () Bool)

(assert (=> b!5288709 (= e!3287950 (and tp!1476494 tp!1476493))))

(declare-fun b!5288708 () Bool)

(assert (=> b!5288708 (= e!3287950 tp_is_empty!39095)))

(assert (= (and b!5287705 ((_ is ElementMatch!14921) (reg!15250 r!7292))) b!5288708))

(assert (= (and b!5287705 ((_ is Concat!23766) (reg!15250 r!7292))) b!5288709))

(assert (= (and b!5287705 ((_ is Star!14921) (reg!15250 r!7292))) b!5288710))

(assert (= (and b!5287705 ((_ is Union!14921) (reg!15250 r!7292))) b!5288711))

(declare-fun b!5288715 () Bool)

(declare-fun e!3287951 () Bool)

(declare-fun tp!1476495 () Bool)

(declare-fun tp!1476496 () Bool)

(assert (=> b!5288715 (= e!3287951 (and tp!1476495 tp!1476496))))

(declare-fun b!5288714 () Bool)

(declare-fun tp!1476497 () Bool)

(assert (=> b!5288714 (= e!3287951 tp!1476497)))

(assert (=> b!5287688 (= tp!1476419 e!3287951)))

(declare-fun b!5288713 () Bool)

(declare-fun tp!1476499 () Bool)

(declare-fun tp!1476498 () Bool)

(assert (=> b!5288713 (= e!3287951 (and tp!1476499 tp!1476498))))

(declare-fun b!5288712 () Bool)

(assert (=> b!5288712 (= e!3287951 tp_is_empty!39095)))

(assert (= (and b!5287688 ((_ is ElementMatch!14921) (regOne!30354 r!7292))) b!5288712))

(assert (= (and b!5287688 ((_ is Concat!23766) (regOne!30354 r!7292))) b!5288713))

(assert (= (and b!5287688 ((_ is Star!14921) (regOne!30354 r!7292))) b!5288714))

(assert (= (and b!5287688 ((_ is Union!14921) (regOne!30354 r!7292))) b!5288715))

(declare-fun b!5288719 () Bool)

(declare-fun e!3287952 () Bool)

(declare-fun tp!1476500 () Bool)

(declare-fun tp!1476501 () Bool)

(assert (=> b!5288719 (= e!3287952 (and tp!1476500 tp!1476501))))

(declare-fun b!5288718 () Bool)

(declare-fun tp!1476502 () Bool)

(assert (=> b!5288718 (= e!3287952 tp!1476502)))

(assert (=> b!5287688 (= tp!1476414 e!3287952)))

(declare-fun b!5288717 () Bool)

(declare-fun tp!1476504 () Bool)

(declare-fun tp!1476503 () Bool)

(assert (=> b!5288717 (= e!3287952 (and tp!1476504 tp!1476503))))

(declare-fun b!5288716 () Bool)

(assert (=> b!5288716 (= e!3287952 tp_is_empty!39095)))

(assert (= (and b!5287688 ((_ is ElementMatch!14921) (regTwo!30354 r!7292))) b!5288716))

(assert (= (and b!5287688 ((_ is Concat!23766) (regTwo!30354 r!7292))) b!5288717))

(assert (= (and b!5287688 ((_ is Star!14921) (regTwo!30354 r!7292))) b!5288718))

(assert (= (and b!5287688 ((_ is Union!14921) (regTwo!30354 r!7292))) b!5288719))

(declare-fun b!5288727 () Bool)

(declare-fun e!3287958 () Bool)

(declare-fun tp!1476509 () Bool)

(assert (=> b!5288727 (= e!3287958 tp!1476509)))

(declare-fun tp!1476510 () Bool)

(declare-fun b!5288726 () Bool)

(declare-fun e!3287957 () Bool)

(assert (=> b!5288726 (= e!3287957 (and (inv!80549 (h!67388 (t!374267 zl!343))) e!3287958 tp!1476510))))

(assert (=> b!5287693 (= tp!1476415 e!3287957)))

(assert (= b!5288726 b!5288727))

(assert (= (and b!5287693 ((_ is Cons!60940) (t!374267 zl!343))) b!5288726))

(declare-fun m!6326190 () Bool)

(assert (=> b!5288726 m!6326190))

(declare-fun b!5288732 () Bool)

(declare-fun e!3287961 () Bool)

(declare-fun tp!1476515 () Bool)

(declare-fun tp!1476516 () Bool)

(assert (=> b!5288732 (= e!3287961 (and tp!1476515 tp!1476516))))

(assert (=> b!5287708 (= tp!1476412 e!3287961)))

(assert (= (and b!5287708 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343)))) b!5288732))

(declare-fun b!5288733 () Bool)

(declare-fun e!3287962 () Bool)

(declare-fun tp!1476517 () Bool)

(declare-fun tp!1476518 () Bool)

(assert (=> b!5288733 (= e!3287962 (and tp!1476517 tp!1476518))))

(assert (=> b!5287707 (= tp!1476413 e!3287962)))

(assert (= (and b!5287707 ((_ is Cons!60939) (exprs!4805 setElem!33929))) b!5288733))

(declare-fun condSetEmpty!33935 () Bool)

(assert (=> setNonEmpty!33929 (= condSetEmpty!33935 (= setRest!33929 ((as const (Array Context!8610 Bool)) false)))))

(declare-fun setRes!33935 () Bool)

(assert (=> setNonEmpty!33929 (= tp!1476417 setRes!33935)))

(declare-fun setIsEmpty!33935 () Bool)

(assert (=> setIsEmpty!33935 setRes!33935))

(declare-fun setNonEmpty!33935 () Bool)

(declare-fun tp!1476524 () Bool)

(declare-fun e!3287965 () Bool)

(declare-fun setElem!33935 () Context!8610)

(assert (=> setNonEmpty!33935 (= setRes!33935 (and tp!1476524 (inv!80549 setElem!33935) e!3287965))))

(declare-fun setRest!33935 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33935 (= setRest!33929 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33935 true) setRest!33935))))

(declare-fun b!5288738 () Bool)

(declare-fun tp!1476523 () Bool)

(assert (=> b!5288738 (= e!3287965 tp!1476523)))

(assert (= (and setNonEmpty!33929 condSetEmpty!33935) setIsEmpty!33935))

(assert (= (and setNonEmpty!33929 (not condSetEmpty!33935)) setNonEmpty!33935))

(assert (= setNonEmpty!33935 b!5288738))

(declare-fun m!6326192 () Bool)

(assert (=> setNonEmpty!33935 m!6326192))

(declare-fun b!5288743 () Bool)

(declare-fun e!3287968 () Bool)

(declare-fun tp!1476527 () Bool)

(assert (=> b!5288743 (= e!3287968 (and tp_is_empty!39095 tp!1476527))))

(assert (=> b!5287717 (= tp!1476418 e!3287968)))

(assert (= (and b!5287717 ((_ is Cons!60938) (t!374265 s!2326))) b!5288743))

(declare-fun b!5288747 () Bool)

(declare-fun e!3287969 () Bool)

(declare-fun tp!1476528 () Bool)

(declare-fun tp!1476529 () Bool)

(assert (=> b!5288747 (= e!3287969 (and tp!1476528 tp!1476529))))

(declare-fun b!5288746 () Bool)

(declare-fun tp!1476530 () Bool)

(assert (=> b!5288746 (= e!3287969 tp!1476530)))

(assert (=> b!5287686 (= tp!1476420 e!3287969)))

(declare-fun b!5288745 () Bool)

(declare-fun tp!1476532 () Bool)

(declare-fun tp!1476531 () Bool)

(assert (=> b!5288745 (= e!3287969 (and tp!1476532 tp!1476531))))

(declare-fun b!5288744 () Bool)

(assert (=> b!5288744 (= e!3287969 tp_is_empty!39095)))

(assert (= (and b!5287686 ((_ is ElementMatch!14921) (regOne!30355 r!7292))) b!5288744))

(assert (= (and b!5287686 ((_ is Concat!23766) (regOne!30355 r!7292))) b!5288745))

(assert (= (and b!5287686 ((_ is Star!14921) (regOne!30355 r!7292))) b!5288746))

(assert (= (and b!5287686 ((_ is Union!14921) (regOne!30355 r!7292))) b!5288747))

(declare-fun b!5288751 () Bool)

(declare-fun e!3287970 () Bool)

(declare-fun tp!1476533 () Bool)

(declare-fun tp!1476534 () Bool)

(assert (=> b!5288751 (= e!3287970 (and tp!1476533 tp!1476534))))

(declare-fun b!5288750 () Bool)

(declare-fun tp!1476535 () Bool)

(assert (=> b!5288750 (= e!3287970 tp!1476535)))

(assert (=> b!5287686 (= tp!1476421 e!3287970)))

(declare-fun b!5288749 () Bool)

(declare-fun tp!1476537 () Bool)

(declare-fun tp!1476536 () Bool)

(assert (=> b!5288749 (= e!3287970 (and tp!1476537 tp!1476536))))

(declare-fun b!5288748 () Bool)

(assert (=> b!5288748 (= e!3287970 tp_is_empty!39095)))

(assert (= (and b!5287686 ((_ is ElementMatch!14921) (regTwo!30355 r!7292))) b!5288748))

(assert (= (and b!5287686 ((_ is Concat!23766) (regTwo!30355 r!7292))) b!5288749))

(assert (= (and b!5287686 ((_ is Star!14921) (regTwo!30355 r!7292))) b!5288750))

(assert (= (and b!5287686 ((_ is Union!14921) (regTwo!30355 r!7292))) b!5288751))

(declare-fun b_lambda!203941 () Bool)

(assert (= b_lambda!203937 (or b!5287682 b_lambda!203941)))

(declare-fun bs!1225461 () Bool)

(declare-fun d!1701260 () Bool)

(assert (= bs!1225461 (and d!1701260 b!5287682)))

(assert (=> bs!1225461 (= (dynLambda!24091 lambda!267546 (h!67388 zl!343)) (derivationStepZipperUp!293 (h!67388 zl!343) (h!67386 s!2326)))))

(assert (=> bs!1225461 m!6325258))

(assert (=> d!1701200 d!1701260))

(declare-fun b_lambda!203943 () Bool)

(assert (= b_lambda!203923 (or b!5287682 b_lambda!203943)))

(declare-fun bs!1225462 () Bool)

(declare-fun d!1701262 () Bool)

(assert (= bs!1225462 (and d!1701262 b!5287682)))

(assert (=> bs!1225462 (= (dynLambda!24091 lambda!267546 lt!2161279) (derivationStepZipperUp!293 lt!2161279 (h!67386 s!2326)))))

(assert (=> bs!1225462 m!6325292))

(assert (=> d!1701076 d!1701262))

(declare-fun b_lambda!203945 () Bool)

(assert (= b_lambda!203939 (or b!5287700 b_lambda!203945)))

(declare-fun bs!1225463 () Bool)

(declare-fun d!1701264 () Bool)

(assert (= bs!1225463 (and d!1701264 b!5287700)))

(assert (=> bs!1225463 (= (dynLambda!24093 lambda!267549 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))) (validRegex!6657 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun m!6326194 () Bool)

(assert (=> bs!1225463 m!6326194))

(assert (=> b!5288634 d!1701264))

(declare-fun b_lambda!203947 () Bool)

(assert (= b_lambda!203925 (or b!5287682 b_lambda!203947)))

(declare-fun bs!1225464 () Bool)

(declare-fun d!1701266 () Bool)

(assert (= bs!1225464 (and d!1701266 b!5287682)))

(assert (=> bs!1225464 (= (dynLambda!24091 lambda!267546 lt!2161287) (derivationStepZipperUp!293 lt!2161287 (h!67386 s!2326)))))

(assert (=> bs!1225464 m!6325234))

(assert (=> d!1701106 d!1701266))

(check-sat (not b!5287966) (not b!5288717) (not b!5288125) (not d!1701194) (not bm!376716) (not d!1701210) (not b!5288569) (not b!5288217) (not d!1701216) (not b!5288640) (not bm!376718) (not b!5288688) (not d!1701094) (not b!5288558) (not b!5288673) (not b!5288484) (not b_lambda!203945) (not b!5287940) (not d!1701188) (not d!1701236) (not b!5288718) (not d!1701252) (not b!5288714) (not b!5288660) (not b!5288506) (not b!5288650) (not d!1701024) (not b!5288746) (not b!5287911) (not b!5288564) (not bm!376717) (not b!5288481) (not d!1701242) (not d!1701122) (not d!1701170) (not d!1701238) (not d!1701080) (not b!5288733) (not b!5288627) (not d!1701244) (not b!5288709) (not d!1701232) (not bm!376709) (not b!5288320) (not b!5288651) (not bs!1225461) (not b!5288645) (not b!5288065) (not b!5288572) (not b!5288689) (not b!5288173) (not b!5288025) (not b!5288107) (not b!5288678) (not b!5288474) (not b!5288732) (not d!1701106) (not d!1701230) (not b!5288317) (not bm!376712) (not bm!376659) (not bm!376635) (not d!1701142) (not b!5288470) (not b_lambda!203941) (not b!5288566) (not b!5288568) (not d!1701050) (not d!1701048) (not b!5288621) (not b!5288738) (not b!5288567) (not b!5288648) (not d!1701068) (not d!1701146) (not b!5288166) (not b!5288214) (not b!5288013) (not d!1701248) (not bs!1225462) (not d!1701030) (not b!5288573) (not b!5288715) (not b!5288585) (not b!5288675) (not bm!376715) (not d!1701110) (not d!1701076) (not b_lambda!203943) (not b!5288635) (not b!5288545) (not setNonEmpty!33935) (not b!5288312) (not b!5288616) (not b!5288553) (not d!1701072) (not b!5288316) (not b!5288617) (not b!5287942) (not b!5288672) (not b!5288174) (not b!5288561) (not b!5288024) (not d!1701240) (not b!5288469) (not b!5288719) (not b!5288554) (not b!5288636) (not b!5288694) (not b!5288560) (not bm!376704) (not bm!376710) (not d!1701186) (not bm!376641) (not d!1701020) (not b!5288713) (not b!5288104) (not bs!1225464) (not d!1701018) (not b!5288057) (not bs!1225463) (not b!5288743) (not b!5288638) (not b!5288026) (not b!5288587) (not bm!376666) (not d!1701234) (not b!5287938) (not b!5288109) (not b!5288483) (not b!5288473) (not b!5288643) (not b!5288710) (not b!5288490) (not b!5288556) (not b!5288661) (not b!5288687) (not b!5288745) (not b!5288491) (not d!1701206) (not b!5288559) (not b!5288215) (not b!5288022) (not d!1701120) (not b!5288664) (not b_lambda!203947) (not d!1701226) (not b!5288066) (not b!5288314) (not bm!376696) (not bm!376698) (not bm!376642) (not d!1701144) (not d!1701250) (not d!1701220) (not b!5288747) (not d!1701190) (not d!1701218) (not bm!376697) (not b!5288315) (not bm!376669) (not b!5288503) (not b!5288684) (not d!1701224) (not d!1701166) (not b!5288727) (not d!1701254) (not b!5288641) (not b!5288574) (not b!5288577) (not b!5288210) (not d!1701100) (not bm!376699) (not b!5287900) (not bm!376711) (not b!5288563) (not b!5288647) (not b!5288471) (not d!1701212) (not bm!376636) (not b!5288100) (not b!5288223) (not b!5288711) (not b!5288646) (not b!5288618) (not d!1701204) (not b!5288677) (not b!5288485) (not b!5288586) (not b!5287941) (not b!5288620) (not bm!376643) (not b!5288696) tp_is_empty!39095 (not d!1701056) (not b!5288467) (not d!1701182) (not b!5288106) (not b!5288212) (not bm!376637) (not d!1701022) (not b!5288674) (not b!5288750) (not b!5287943) (not b!5288486) (not b!5288657) (not b!5288015) (not d!1701172) (not b!5288751) (not b!5288642) (not d!1701214) (not b!5288507) (not d!1701042) (not b!5287939) (not b!5288105) (not b!5288102) (not bm!376660) (not bm!376719) (not b!5288468) (not b!5288218) (not b!5288749) (not bm!376700) (not b!5288726) (not b!5288167) (not d!1701112) (not d!1701200))
(check-sat)
(get-model)

(declare-fun d!1701344 () Bool)

(assert (=> d!1701344 (= (nullable!5090 (h!67387 (exprs!4805 lt!2161287))) (nullableFct!1460 (h!67387 (exprs!4805 lt!2161287))))))

(declare-fun bs!1225528 () Bool)

(assert (= bs!1225528 d!1701344))

(declare-fun m!6326352 () Bool)

(assert (=> bs!1225528 m!6326352))

(assert (=> b!5288174 d!1701344))

(declare-fun bs!1225533 () Bool)

(declare-fun d!1701348 () Bool)

(assert (= bs!1225533 (and d!1701348 b!5288013)))

(declare-fun lambda!267677 () Int)

(assert (=> bs!1225533 (not (= lambda!267677 lambda!267595))))

(declare-fun bs!1225535 () Bool)

(assert (= bs!1225535 (and d!1701348 b!5288015)))

(assert (=> bs!1225535 (not (= lambda!267677 lambda!267598))))

(declare-fun bs!1225537 () Bool)

(assert (= bs!1225537 (and d!1701348 b!5288022)))

(assert (=> bs!1225537 (not (= lambda!267677 lambda!267600))))

(declare-fun bs!1225539 () Bool)

(assert (= bs!1225539 (and d!1701348 b!5288024)))

(assert (=> bs!1225539 (not (= lambda!267677 lambda!267601))))

(declare-fun exists!2003 ((InoxSet Context!8610) Int) Bool)

(assert (=> d!1701348 (= (nullableZipper!1308 lt!2161314) (exists!2003 lt!2161314 lambda!267677))))

(declare-fun bs!1225543 () Bool)

(assert (= bs!1225543 d!1701348))

(declare-fun m!6326378 () Bool)

(assert (=> bs!1225543 m!6326378))

(assert (=> b!5287940 d!1701348))

(declare-fun d!1701352 () Bool)

(assert (=> d!1701352 (= (isEmpty!32895 s!2326) ((_ is Nil!60938) s!2326))))

(assert (=> bm!376716 d!1701352))

(declare-fun d!1701362 () Bool)

(declare-fun c!917342 () Bool)

(assert (=> d!1701362 (= c!917342 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288059 () Bool)

(assert (=> d!1701362 (= (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288059)))

(declare-fun b!5288901 () Bool)

(assert (=> b!5288901 (= e!3288059 (nullableZipper!1308 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5288903 () Bool)

(assert (=> b!5288903 (= e!3288059 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701362 c!917342) b!5288901))

(assert (= (and d!1701362 (not c!917342)) b!5288903))

(assert (=> d!1701362 m!6325492))

(declare-fun m!6326388 () Bool)

(assert (=> d!1701362 m!6326388))

(assert (=> b!5288901 m!6325982))

(declare-fun m!6326390 () Bool)

(assert (=> b!5288901 m!6326390))

(assert (=> b!5288903 m!6325492))

(declare-fun m!6326392 () Bool)

(assert (=> b!5288903 m!6326392))

(assert (=> b!5288903 m!6325982))

(assert (=> b!5288903 m!6326392))

(declare-fun m!6326394 () Bool)

(assert (=> b!5288903 m!6326394))

(assert (=> b!5288903 m!6325492))

(declare-fun m!6326396 () Bool)

(assert (=> b!5288903 m!6326396))

(assert (=> b!5288903 m!6326394))

(assert (=> b!5288903 m!6326396))

(declare-fun m!6326398 () Bool)

(assert (=> b!5288903 m!6326398))

(assert (=> b!5288484 d!1701362))

(declare-fun bs!1225545 () Bool)

(declare-fun d!1701364 () Bool)

(assert (= bs!1225545 (and d!1701364 b!5287682)))

(declare-fun lambda!267678 () Int)

(assert (=> bs!1225545 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267678 lambda!267546))))

(declare-fun bs!1225546 () Bool)

(assert (= bs!1225546 (and d!1701364 d!1701080)))

(assert (=> bs!1225546 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267678 lambda!267614))))

(declare-fun bs!1225547 () Bool)

(assert (= bs!1225547 (and d!1701364 d!1701188)))

(assert (=> bs!1225547 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267678 lambda!267640))))

(assert (=> d!1701364 true))

(assert (=> d!1701364 (= (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) (head!11334 (t!374265 s!2326))) (flatMap!648 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) lambda!267678))))

(declare-fun bs!1225548 () Bool)

(assert (= bs!1225548 d!1701364))

(assert (=> bs!1225548 m!6325276))

(declare-fun m!6326402 () Bool)

(assert (=> bs!1225548 m!6326402))

(assert (=> b!5288484 d!1701364))

(declare-fun d!1701366 () Bool)

(assert (=> d!1701366 (= (head!11334 (t!374265 s!2326)) (h!67386 (t!374265 s!2326)))))

(assert (=> b!5288484 d!1701366))

(declare-fun d!1701370 () Bool)

(assert (=> d!1701370 (= (tail!10430 (t!374265 s!2326)) (t!374265 (t!374265 s!2326)))))

(assert (=> b!5288484 d!1701370))

(declare-fun b!5288911 () Bool)

(declare-fun e!3288061 () Bool)

(assert (=> b!5288911 (= e!3288061 (not (= (head!11334 (_2!35423 (get!20954 lt!2161468))) (c!916969 lt!2161300))))))

(declare-fun b!5288912 () Bool)

(declare-fun e!3288060 () Bool)

(assert (=> b!5288912 (= e!3288060 (nullable!5090 lt!2161300))))

(declare-fun d!1701376 () Bool)

(declare-fun e!3288065 () Bool)

(assert (=> d!1701376 e!3288065))

(declare-fun c!917344 () Bool)

(assert (=> d!1701376 (= c!917344 ((_ is EmptyExpr!14921) lt!2161300))))

(declare-fun lt!2161525 () Bool)

(assert (=> d!1701376 (= lt!2161525 e!3288060)))

(declare-fun c!917343 () Bool)

(assert (=> d!1701376 (= c!917343 (isEmpty!32895 (_2!35423 (get!20954 lt!2161468))))))

(assert (=> d!1701376 (validRegex!6657 lt!2161300)))

(assert (=> d!1701376 (= (matchR!7106 lt!2161300 (_2!35423 (get!20954 lt!2161468))) lt!2161525)))

(declare-fun b!5288913 () Bool)

(declare-fun e!3288066 () Bool)

(assert (=> b!5288913 (= e!3288066 (= (head!11334 (_2!35423 (get!20954 lt!2161468))) (c!916969 lt!2161300)))))

(declare-fun b!5288914 () Bool)

(declare-fun e!3288064 () Bool)

(assert (=> b!5288914 (= e!3288065 e!3288064)))

(declare-fun c!917345 () Bool)

(assert (=> b!5288914 (= c!917345 ((_ is EmptyLang!14921) lt!2161300))))

(declare-fun b!5288915 () Bool)

(assert (=> b!5288915 (= e!3288060 (matchR!7106 (derivativeStep!4129 lt!2161300 (head!11334 (_2!35423 (get!20954 lt!2161468)))) (tail!10430 (_2!35423 (get!20954 lt!2161468)))))))

(declare-fun b!5288916 () Bool)

(declare-fun res!2243138 () Bool)

(assert (=> b!5288916 (=> (not res!2243138) (not e!3288066))))

(assert (=> b!5288916 (= res!2243138 (isEmpty!32895 (tail!10430 (_2!35423 (get!20954 lt!2161468)))))))

(declare-fun b!5288917 () Bool)

(declare-fun e!3288062 () Bool)

(declare-fun e!3288063 () Bool)

(assert (=> b!5288917 (= e!3288062 e!3288063)))

(declare-fun res!2243137 () Bool)

(assert (=> b!5288917 (=> (not res!2243137) (not e!3288063))))

(assert (=> b!5288917 (= res!2243137 (not lt!2161525))))

(declare-fun b!5288918 () Bool)

(declare-fun res!2243135 () Bool)

(assert (=> b!5288918 (=> res!2243135 e!3288062)))

(assert (=> b!5288918 (= res!2243135 e!3288066)))

(declare-fun res!2243136 () Bool)

(assert (=> b!5288918 (=> (not res!2243136) (not e!3288066))))

(assert (=> b!5288918 (= res!2243136 lt!2161525)))

(declare-fun b!5288919 () Bool)

(declare-fun call!376755 () Bool)

(assert (=> b!5288919 (= e!3288065 (= lt!2161525 call!376755))))

(declare-fun b!5288920 () Bool)

(assert (=> b!5288920 (= e!3288063 e!3288061)))

(declare-fun res!2243131 () Bool)

(assert (=> b!5288920 (=> res!2243131 e!3288061)))

(assert (=> b!5288920 (= res!2243131 call!376755)))

(declare-fun bm!376750 () Bool)

(assert (=> bm!376750 (= call!376755 (isEmpty!32895 (_2!35423 (get!20954 lt!2161468))))))

(declare-fun b!5288921 () Bool)

(declare-fun res!2243132 () Bool)

(assert (=> b!5288921 (=> res!2243132 e!3288062)))

(assert (=> b!5288921 (= res!2243132 (not ((_ is ElementMatch!14921) lt!2161300)))))

(assert (=> b!5288921 (= e!3288064 e!3288062)))

(declare-fun b!5288922 () Bool)

(declare-fun res!2243134 () Bool)

(assert (=> b!5288922 (=> res!2243134 e!3288061)))

(assert (=> b!5288922 (= res!2243134 (not (isEmpty!32895 (tail!10430 (_2!35423 (get!20954 lt!2161468))))))))

(declare-fun b!5288923 () Bool)

(declare-fun res!2243133 () Bool)

(assert (=> b!5288923 (=> (not res!2243133) (not e!3288066))))

(assert (=> b!5288923 (= res!2243133 (not call!376755))))

(declare-fun b!5288924 () Bool)

(assert (=> b!5288924 (= e!3288064 (not lt!2161525))))

(assert (= (and d!1701376 c!917343) b!5288912))

(assert (= (and d!1701376 (not c!917343)) b!5288915))

(assert (= (and d!1701376 c!917344) b!5288919))

(assert (= (and d!1701376 (not c!917344)) b!5288914))

(assert (= (and b!5288914 c!917345) b!5288924))

(assert (= (and b!5288914 (not c!917345)) b!5288921))

(assert (= (and b!5288921 (not res!2243132)) b!5288918))

(assert (= (and b!5288918 res!2243136) b!5288923))

(assert (= (and b!5288923 res!2243133) b!5288916))

(assert (= (and b!5288916 res!2243138) b!5288913))

(assert (= (and b!5288918 (not res!2243135)) b!5288917))

(assert (= (and b!5288917 res!2243137) b!5288920))

(assert (= (and b!5288920 (not res!2243131)) b!5288922))

(assert (= (and b!5288922 (not res!2243134)) b!5288911))

(assert (= (or b!5288919 b!5288920 b!5288923) bm!376750))

(declare-fun m!6326412 () Bool)

(assert (=> b!5288913 m!6326412))

(declare-fun m!6326414 () Bool)

(assert (=> b!5288922 m!6326414))

(assert (=> b!5288922 m!6326414))

(declare-fun m!6326416 () Bool)

(assert (=> b!5288922 m!6326416))

(assert (=> b!5288916 m!6326414))

(assert (=> b!5288916 m!6326414))

(assert (=> b!5288916 m!6326416))

(assert (=> b!5288911 m!6326412))

(assert (=> b!5288912 m!6326148))

(declare-fun m!6326418 () Bool)

(assert (=> bm!376750 m!6326418))

(assert (=> b!5288915 m!6326412))

(assert (=> b!5288915 m!6326412))

(declare-fun m!6326420 () Bool)

(assert (=> b!5288915 m!6326420))

(assert (=> b!5288915 m!6326414))

(assert (=> b!5288915 m!6326420))

(assert (=> b!5288915 m!6326414))

(declare-fun m!6326422 () Bool)

(assert (=> b!5288915 m!6326422))

(assert (=> d!1701376 m!6326418))

(assert (=> d!1701376 m!6326134))

(assert (=> b!5288569 d!1701376))

(declare-fun d!1701378 () Bool)

(assert (=> d!1701378 (= (get!20954 lt!2161468) (v!51060 lt!2161468))))

(assert (=> b!5288569 d!1701378))

(declare-fun bs!1225549 () Bool)

(declare-fun b!5288946 () Bool)

(assert (= bs!1225549 (and b!5288946 b!5288579)))

(declare-fun lambda!267679 () Int)

(assert (=> bs!1225549 (not (= lambda!267679 lambda!267649))))

(declare-fun bs!1225550 () Bool)

(assert (= bs!1225550 (and b!5288946 d!1701166)))

(assert (=> bs!1225550 (not (= lambda!267679 lambda!267629))))

(declare-fun bs!1225551 () Bool)

(assert (= bs!1225551 (and b!5288946 d!1701146)))

(assert (=> bs!1225551 (not (= lambda!267679 lambda!267621))))

(declare-fun bs!1225552 () Bool)

(assert (= bs!1225552 (and b!5288946 b!5287706)))

(assert (=> bs!1225552 (not (= lambda!267679 lambda!267545))))

(assert (=> bs!1225552 (not (= lambda!267679 lambda!267544))))

(declare-fun bs!1225553 () Bool)

(assert (= bs!1225553 (and b!5288946 b!5288667)))

(assert (=> bs!1225553 (= (and (= (reg!15250 (regTwo!30355 r!7292)) (reg!15250 r!7292)) (= (regTwo!30355 r!7292) r!7292)) (= lambda!267679 lambda!267654))))

(declare-fun bs!1225554 () Bool)

(assert (= bs!1225554 (and b!5288946 d!1701238)))

(assert (=> bs!1225554 (not (= lambda!267679 lambda!267653))))

(declare-fun bs!1225555 () Bool)

(assert (= bs!1225555 (and b!5288946 b!5287700)))

(assert (=> bs!1225555 (not (= lambda!267679 lambda!267548))))

(declare-fun bs!1225556 () Bool)

(assert (= bs!1225556 (and b!5288946 b!5288580)))

(assert (=> bs!1225556 (= (and (= (reg!15250 (regTwo!30355 r!7292)) (reg!15250 lt!2161294)) (= (regTwo!30355 r!7292) lt!2161294)) (= lambda!267679 lambda!267648))))

(declare-fun bs!1225557 () Bool)

(assert (= bs!1225557 (and b!5288946 b!5288666)))

(assert (=> bs!1225557 (not (= lambda!267679 lambda!267655))))

(assert (=> bs!1225555 (not (= lambda!267679 lambda!267547))))

(declare-fun bs!1225558 () Bool)

(assert (= bs!1225558 (and b!5288946 b!5288548)))

(assert (=> bs!1225558 (= (and (= (reg!15250 (regTwo!30355 r!7292)) (reg!15250 lt!2161300)) (= (regTwo!30355 r!7292) lt!2161300)) (= lambda!267679 lambda!267645))))

(assert (=> bs!1225554 (not (= lambda!267679 lambda!267652))))

(declare-fun bs!1225559 () Bool)

(assert (= bs!1225559 (and b!5288946 d!1701234)))

(assert (=> bs!1225559 (not (= lambda!267679 lambda!267651))))

(declare-fun bs!1225560 () Bool)

(assert (= bs!1225560 (and b!5288946 b!5288547)))

(assert (=> bs!1225560 (not (= lambda!267679 lambda!267646))))

(assert (=> bs!1225550 (not (= lambda!267679 lambda!267633))))

(assert (=> b!5288946 true))

(assert (=> b!5288946 true))

(declare-fun bs!1225561 () Bool)

(declare-fun b!5288945 () Bool)

(assert (= bs!1225561 (and b!5288945 b!5288579)))

(declare-fun lambda!267680 () Int)

(assert (=> bs!1225561 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regTwo!30355 r!7292)) (regTwo!30354 lt!2161294))) (= lambda!267680 lambda!267649))))

(declare-fun bs!1225562 () Bool)

(assert (= bs!1225562 (and b!5288945 d!1701166)))

(assert (=> bs!1225562 (not (= lambda!267680 lambda!267629))))

(declare-fun bs!1225563 () Bool)

(assert (= bs!1225563 (and b!5288945 d!1701146)))

(assert (=> bs!1225563 (not (= lambda!267680 lambda!267621))))

(declare-fun bs!1225564 () Bool)

(assert (= bs!1225564 (and b!5288945 b!5287706)))

(assert (=> bs!1225564 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267680 lambda!267545))))

(assert (=> bs!1225564 (not (= lambda!267680 lambda!267544))))

(declare-fun bs!1225565 () Bool)

(assert (= bs!1225565 (and b!5288945 b!5288667)))

(assert (=> bs!1225565 (not (= lambda!267680 lambda!267654))))

(declare-fun bs!1225566 () Bool)

(assert (= bs!1225566 (and b!5288945 d!1701238)))

(assert (=> bs!1225566 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 r!7292)) lt!2161300)) (= lambda!267680 lambda!267653))))

(declare-fun bs!1225567 () Bool)

(assert (= bs!1225567 (and b!5288945 b!5287700)))

(assert (=> bs!1225567 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 r!7292)) lt!2161300)) (= lambda!267680 lambda!267548))))

(declare-fun bs!1225568 () Bool)

(assert (= bs!1225568 (and b!5288945 b!5288580)))

(assert (=> bs!1225568 (not (= lambda!267680 lambda!267648))))

(declare-fun bs!1225569 () Bool)

(assert (= bs!1225569 (and b!5288945 b!5288666)))

(assert (=> bs!1225569 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267680 lambda!267655))))

(assert (=> bs!1225567 (not (= lambda!267680 lambda!267547))))

(declare-fun bs!1225570 () Bool)

(assert (= bs!1225570 (and b!5288945 b!5288946)))

(assert (=> bs!1225570 (not (= lambda!267680 lambda!267679))))

(declare-fun bs!1225571 () Bool)

(assert (= bs!1225571 (and b!5288945 b!5288548)))

(assert (=> bs!1225571 (not (= lambda!267680 lambda!267645))))

(assert (=> bs!1225566 (not (= lambda!267680 lambda!267652))))

(declare-fun bs!1225572 () Bool)

(assert (= bs!1225572 (and b!5288945 d!1701234)))

(assert (=> bs!1225572 (not (= lambda!267680 lambda!267651))))

(declare-fun bs!1225573 () Bool)

(assert (= bs!1225573 (and b!5288945 b!5288547)))

(assert (=> bs!1225573 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regTwo!30355 r!7292)) (regTwo!30354 lt!2161300))) (= lambda!267680 lambda!267646))))

(assert (=> bs!1225562 (= (and (= (regOne!30354 (regTwo!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267680 lambda!267633))))

(assert (=> b!5288945 true))

(assert (=> b!5288945 true))

(declare-fun b!5288941 () Bool)

(declare-fun e!3288078 () Bool)

(declare-fun e!3288077 () Bool)

(assert (=> b!5288941 (= e!3288078 e!3288077)))

(declare-fun c!917354 () Bool)

(assert (=> b!5288941 (= c!917354 ((_ is Star!14921) (regTwo!30355 r!7292)))))

(declare-fun b!5288942 () Bool)

(declare-fun c!917357 () Bool)

(assert (=> b!5288942 (= c!917357 ((_ is Union!14921) (regTwo!30355 r!7292)))))

(declare-fun e!3288075 () Bool)

(assert (=> b!5288942 (= e!3288075 e!3288078)))

(declare-fun b!5288944 () Bool)

(assert (=> b!5288944 (= e!3288075 (= s!2326 (Cons!60938 (c!916969 (regTwo!30355 r!7292)) Nil!60938)))))

(declare-fun call!376757 () Bool)

(assert (=> b!5288945 (= e!3288077 call!376757)))

(declare-fun e!3288080 () Bool)

(assert (=> b!5288946 (= e!3288080 call!376757)))

(declare-fun b!5288947 () Bool)

(declare-fun e!3288079 () Bool)

(declare-fun e!3288081 () Bool)

(assert (=> b!5288947 (= e!3288079 e!3288081)))

(declare-fun res!2243141 () Bool)

(assert (=> b!5288947 (= res!2243141 (not ((_ is EmptyLang!14921) (regTwo!30355 r!7292))))))

(assert (=> b!5288947 (=> (not res!2243141) (not e!3288081))))

(declare-fun bm!376751 () Bool)

(declare-fun call!376756 () Bool)

(assert (=> bm!376751 (= call!376756 (isEmpty!32895 s!2326))))

(declare-fun d!1701380 () Bool)

(declare-fun c!917356 () Bool)

(assert (=> d!1701380 (= c!917356 ((_ is EmptyExpr!14921) (regTwo!30355 r!7292)))))

(assert (=> d!1701380 (= (matchRSpec!2024 (regTwo!30355 r!7292) s!2326) e!3288079)))

(declare-fun b!5288943 () Bool)

(declare-fun e!3288076 () Bool)

(assert (=> b!5288943 (= e!3288078 e!3288076)))

(declare-fun res!2243140 () Bool)

(assert (=> b!5288943 (= res!2243140 (matchRSpec!2024 (regOne!30355 (regTwo!30355 r!7292)) s!2326))))

(assert (=> b!5288943 (=> res!2243140 e!3288076)))

(declare-fun b!5288948 () Bool)

(declare-fun c!917355 () Bool)

(assert (=> b!5288948 (= c!917355 ((_ is ElementMatch!14921) (regTwo!30355 r!7292)))))

(assert (=> b!5288948 (= e!3288081 e!3288075)))

(declare-fun b!5288949 () Bool)

(declare-fun res!2243139 () Bool)

(assert (=> b!5288949 (=> res!2243139 e!3288080)))

(assert (=> b!5288949 (= res!2243139 call!376756)))

(assert (=> b!5288949 (= e!3288077 e!3288080)))

(declare-fun b!5288950 () Bool)

(assert (=> b!5288950 (= e!3288079 call!376756)))

(declare-fun bm!376752 () Bool)

(assert (=> bm!376752 (= call!376757 (Exists!2102 (ite c!917354 lambda!267679 lambda!267680)))))

(declare-fun b!5288951 () Bool)

(assert (=> b!5288951 (= e!3288076 (matchRSpec!2024 (regTwo!30355 (regTwo!30355 r!7292)) s!2326))))

(assert (= (and d!1701380 c!917356) b!5288950))

(assert (= (and d!1701380 (not c!917356)) b!5288947))

(assert (= (and b!5288947 res!2243141) b!5288948))

(assert (= (and b!5288948 c!917355) b!5288944))

(assert (= (and b!5288948 (not c!917355)) b!5288942))

(assert (= (and b!5288942 c!917357) b!5288943))

(assert (= (and b!5288942 (not c!917357)) b!5288941))

(assert (= (and b!5288943 (not res!2243140)) b!5288951))

(assert (= (and b!5288941 c!917354) b!5288949))

(assert (= (and b!5288941 (not c!917354)) b!5288945))

(assert (= (and b!5288949 (not res!2243139)) b!5288946))

(assert (= (or b!5288946 b!5288945) bm!376752))

(assert (= (or b!5288950 b!5288949) bm!376751))

(assert (=> bm!376751 m!6326026))

(declare-fun m!6326442 () Bool)

(assert (=> b!5288943 m!6326442))

(declare-fun m!6326446 () Bool)

(assert (=> bm!376752 m!6326446))

(declare-fun m!6326450 () Bool)

(assert (=> b!5288951 m!6326450))

(assert (=> b!5288672 d!1701380))

(declare-fun d!1701390 () Bool)

(assert (=> d!1701390 (= (isConcat!366 lt!2161399) ((_ is Concat!23766) lt!2161399))))

(assert (=> b!5288105 d!1701390))

(declare-fun d!1701396 () Bool)

(assert (=> d!1701396 (= (head!11334 s!2326) (h!67386 s!2326))))

(assert (=> b!5288648 d!1701396))

(assert (=> bm!376711 d!1701352))

(declare-fun d!1701398 () Bool)

(assert (=> d!1701398 (= (isEmpty!32892 (t!374266 lt!2161306)) ((_ is Nil!60939) (t!374266 lt!2161306)))))

(assert (=> b!5288643 d!1701398))

(declare-fun d!1701402 () Bool)

(assert (=> d!1701402 (= ($colon$colon!1358 (exprs!4805 lt!2161302) (ite (or c!917040 c!917039) (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (regTwo!30354 (regOne!30354 r!7292)))) (Cons!60939 (ite (or c!917040 c!917039) (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (regTwo!30354 (regOne!30354 r!7292))) (exprs!4805 lt!2161302)))))

(assert (=> bm!376636 d!1701402))

(declare-fun d!1701404 () Bool)

(declare-fun res!2243165 () Bool)

(declare-fun e!3288116 () Bool)

(assert (=> d!1701404 (=> res!2243165 e!3288116)))

(assert (=> d!1701404 (= res!2243165 ((_ is Nil!60940) lt!2161405))))

(assert (=> d!1701404 (= (noDuplicate!1262 lt!2161405) e!3288116)))

(declare-fun b!5288997 () Bool)

(declare-fun e!3288117 () Bool)

(assert (=> b!5288997 (= e!3288116 e!3288117)))

(declare-fun res!2243166 () Bool)

(assert (=> b!5288997 (=> (not res!2243166) (not e!3288117))))

(declare-fun contains!19702 (List!61064 Context!8610) Bool)

(assert (=> b!5288997 (= res!2243166 (not (contains!19702 (t!374267 lt!2161405) (h!67388 lt!2161405))))))

(declare-fun b!5288998 () Bool)

(assert (=> b!5288998 (= e!3288117 (noDuplicate!1262 (t!374267 lt!2161405)))))

(assert (= (and d!1701404 (not res!2243165)) b!5288997))

(assert (= (and b!5288997 res!2243166) b!5288998))

(declare-fun m!6326466 () Bool)

(assert (=> b!5288997 m!6326466))

(declare-fun m!6326468 () Bool)

(assert (=> b!5288998 m!6326468))

(assert (=> d!1701068 d!1701404))

(declare-fun d!1701408 () Bool)

(declare-fun e!3288124 () Bool)

(assert (=> d!1701408 e!3288124))

(declare-fun res!2243171 () Bool)

(assert (=> d!1701408 (=> (not res!2243171) (not e!3288124))))

(declare-fun res!2243172 () List!61064)

(assert (=> d!1701408 (= res!2243171 (noDuplicate!1262 res!2243172))))

(declare-fun e!3288125 () Bool)

(assert (=> d!1701408 e!3288125))

(assert (=> d!1701408 (= (choose!39487 z!1189) res!2243172)))

(declare-fun b!5289006 () Bool)

(declare-fun e!3288126 () Bool)

(declare-fun tp!1476551 () Bool)

(assert (=> b!5289006 (= e!3288126 tp!1476551)))

(declare-fun tp!1476550 () Bool)

(declare-fun b!5289005 () Bool)

(assert (=> b!5289005 (= e!3288125 (and (inv!80549 (h!67388 res!2243172)) e!3288126 tp!1476550))))

(declare-fun b!5289007 () Bool)

(assert (=> b!5289007 (= e!3288124 (= (content!10848 res!2243172) z!1189))))

(assert (= b!5289005 b!5289006))

(assert (= (and d!1701408 ((_ is Cons!60940) res!2243172)) b!5289005))

(assert (= (and d!1701408 res!2243171) b!5289007))

(declare-fun m!6326470 () Bool)

(assert (=> d!1701408 m!6326470))

(declare-fun m!6326472 () Bool)

(assert (=> b!5289005 m!6326472))

(declare-fun m!6326474 () Bool)

(assert (=> b!5289007 m!6326474))

(assert (=> d!1701068 d!1701408))

(assert (=> d!1701250 d!1701248))

(assert (=> d!1701250 d!1701246))

(declare-fun d!1701410 () Bool)

(assert (=> d!1701410 (= (matchR!7106 r!7292 s!2326) (matchRSpec!2024 r!7292 s!2326))))

(assert (=> d!1701410 true))

(declare-fun _$88!3589 () Unit!153202)

(assert (=> d!1701410 (= (choose!39494 r!7292 s!2326) _$88!3589)))

(declare-fun bs!1225575 () Bool)

(assert (= bs!1225575 d!1701410))

(assert (=> bs!1225575 m!6325250))

(assert (=> bs!1225575 m!6325248))

(assert (=> d!1701250 d!1701410))

(assert (=> d!1701250 d!1701044))

(declare-fun d!1701412 () Bool)

(assert (=> d!1701412 (= (isEmpty!32892 (tail!10432 (unfocusZipperList!363 zl!343))) ((_ is Nil!60939) (tail!10432 (unfocusZipperList!363 zl!343))))))

(assert (=> b!5288471 d!1701412))

(declare-fun d!1701414 () Bool)

(assert (=> d!1701414 (= (tail!10432 (unfocusZipperList!363 zl!343)) (t!374266 (unfocusZipperList!363 zl!343)))))

(assert (=> b!5288471 d!1701414))

(declare-fun d!1701416 () Bool)

(assert (=> d!1701416 (= (isEmpty!32895 (t!374265 s!2326)) ((_ is Nil!60938) (t!374265 s!2326)))))

(assert (=> d!1701022 d!1701416))

(declare-fun d!1701418 () Bool)

(declare-fun res!2243181 () Bool)

(declare-fun e!3288133 () Bool)

(assert (=> d!1701418 (=> res!2243181 e!3288133)))

(assert (=> d!1701418 (= res!2243181 ((_ is Nil!60940) (t!374267 lt!2161303)))))

(assert (=> d!1701418 (= (forall!14331 (t!374267 lt!2161303) lambda!267595) e!3288133)))

(declare-fun b!5289016 () Bool)

(declare-fun e!3288134 () Bool)

(assert (=> b!5289016 (= e!3288133 e!3288134)))

(declare-fun res!2243182 () Bool)

(assert (=> b!5289016 (=> (not res!2243182) (not e!3288134))))

(declare-fun dynLambda!24097 (Int Context!8610) Bool)

(assert (=> b!5289016 (= res!2243182 (dynLambda!24097 lambda!267595 (h!67388 (t!374267 lt!2161303))))))

(declare-fun b!5289017 () Bool)

(assert (=> b!5289017 (= e!3288134 (forall!14331 (t!374267 (t!374267 lt!2161303)) lambda!267595))))

(assert (= (and d!1701418 (not res!2243181)) b!5289016))

(assert (= (and b!5289016 res!2243182) b!5289017))

(declare-fun b_lambda!203959 () Bool)

(assert (=> (not b_lambda!203959) (not b!5289016)))

(declare-fun m!6326478 () Bool)

(assert (=> b!5289016 m!6326478))

(declare-fun m!6326480 () Bool)

(assert (=> b!5289017 m!6326480))

(assert (=> b!5288013 d!1701418))

(declare-fun bs!1225602 () Bool)

(declare-fun d!1701422 () Bool)

(assert (= bs!1225602 (and d!1701422 d!1701348)))

(declare-fun lambda!267688 () Int)

(assert (=> bs!1225602 (not (= lambda!267688 lambda!267677))))

(declare-fun bs!1225603 () Bool)

(assert (= bs!1225603 (and d!1701422 b!5288015)))

(assert (=> bs!1225603 (not (= lambda!267688 lambda!267598))))

(declare-fun bs!1225604 () Bool)

(assert (= bs!1225604 (and d!1701422 b!5288013)))

(assert (=> bs!1225604 (not (= lambda!267688 lambda!267595))))

(declare-fun bs!1225605 () Bool)

(assert (= bs!1225605 (and d!1701422 b!5288022)))

(assert (=> bs!1225605 (not (= lambda!267688 lambda!267600))))

(declare-fun bs!1225606 () Bool)

(assert (= bs!1225606 (and d!1701422 b!5288024)))

(assert (=> bs!1225606 (not (= lambda!267688 lambda!267601))))

(assert (=> d!1701422 true))

(assert (=> d!1701422 true))

(declare-fun order!27071 () Int)

(declare-fun order!27073 () Int)

(declare-fun dynLambda!24098 (Int Int) Int)

(declare-fun dynLambda!24099 (Int Int) Int)

(assert (=> d!1701422 (< (dynLambda!24098 order!27071 lambda!267594) (dynLambda!24099 order!27073 lambda!267688))))

(assert (=> d!1701422 (forall!14331 (t!374267 lt!2161303) lambda!267688)))

(declare-fun lt!2161532 () Unit!153202)

(declare-fun choose!39499 (List!61064 Int Int Int) Unit!153202)

(assert (=> d!1701422 (= lt!2161532 (choose!39499 (t!374267 lt!2161303) lt!2161386 (zipperDepth!38 (t!374267 lt!2161303)) lambda!267594))))

(assert (=> d!1701422 (>= lt!2161386 (zipperDepth!38 (t!374267 lt!2161303)))))

(assert (=> d!1701422 (= (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 lt!2161303) lt!2161386 (zipperDepth!38 (t!374267 lt!2161303)) lambda!267594) lt!2161532)))

(declare-fun bs!1225607 () Bool)

(assert (= bs!1225607 d!1701422))

(declare-fun m!6326498 () Bool)

(assert (=> bs!1225607 m!6326498))

(assert (=> bs!1225607 m!6325590))

(declare-fun m!6326500 () Bool)

(assert (=> bs!1225607 m!6326500))

(assert (=> b!5288013 d!1701422))

(declare-fun d!1701434 () Bool)

(assert (=> d!1701434 (= (maxBigInt!0 (contextDepth!20 (h!67388 lt!2161303)) (zipperDepth!38 (t!374267 lt!2161303))) (ite (>= (contextDepth!20 (h!67388 lt!2161303)) (zipperDepth!38 (t!374267 lt!2161303))) (contextDepth!20 (h!67388 lt!2161303)) (zipperDepth!38 (t!374267 lt!2161303))))))

(assert (=> b!5288013 d!1701434))

(declare-fun bs!1225637 () Bool)

(declare-fun b!5289082 () Bool)

(assert (= bs!1225637 (and b!5289082 b!5287700)))

(declare-fun lambda!267695 () Int)

(assert (=> bs!1225637 (not (= lambda!267695 lambda!267549))))

(declare-fun bs!1225638 () Bool)

(assert (= bs!1225638 (and b!5289082 d!1701120)))

(assert (=> bs!1225638 (not (= lambda!267695 lambda!267615))))

(declare-fun bs!1225639 () Bool)

(assert (= bs!1225639 (and b!5289082 d!1701030)))

(assert (=> bs!1225639 (not (= lambda!267695 lambda!267584))))

(declare-fun bs!1225640 () Bool)

(assert (= bs!1225640 (and b!5289082 d!1701056)))

(assert (=> bs!1225640 (not (= lambda!267695 lambda!267611))))

(declare-fun bs!1225641 () Bool)

(assert (= bs!1225641 (and b!5289082 d!1701212)))

(assert (=> bs!1225641 (not (= lambda!267695 lambda!267647))))

(declare-fun bs!1225642 () Bool)

(assert (= bs!1225642 (and b!5289082 d!1701230)))

(assert (=> bs!1225642 (not (= lambda!267695 lambda!267650))))

(declare-fun bs!1225643 () Bool)

(assert (= bs!1225643 (and b!5289082 d!1701172)))

(assert (=> bs!1225643 (not (= lambda!267695 lambda!267636))))

(declare-fun bs!1225644 () Bool)

(assert (= bs!1225644 (and b!5289082 d!1701182)))

(assert (=> bs!1225644 (not (= lambda!267695 lambda!267639))))

(assert (=> b!5289082 true))

(declare-fun bs!1225645 () Bool)

(declare-fun b!5289084 () Bool)

(assert (= bs!1225645 (and b!5289084 b!5287700)))

(declare-fun lambda!267696 () Int)

(assert (=> bs!1225645 (not (= lambda!267696 lambda!267549))))

(declare-fun bs!1225646 () Bool)

(assert (= bs!1225646 (and b!5289084 b!5289082)))

(declare-fun lt!2161547 () Int)

(declare-fun lt!2161545 () Int)

(assert (=> bs!1225646 (= (= lt!2161547 lt!2161545) (= lambda!267696 lambda!267695))))

(declare-fun bs!1225647 () Bool)

(assert (= bs!1225647 (and b!5289084 d!1701120)))

(assert (=> bs!1225647 (not (= lambda!267696 lambda!267615))))

(declare-fun bs!1225648 () Bool)

(assert (= bs!1225648 (and b!5289084 d!1701030)))

(assert (=> bs!1225648 (not (= lambda!267696 lambda!267584))))

(declare-fun bs!1225649 () Bool)

(assert (= bs!1225649 (and b!5289084 d!1701056)))

(assert (=> bs!1225649 (not (= lambda!267696 lambda!267611))))

(declare-fun bs!1225650 () Bool)

(assert (= bs!1225650 (and b!5289084 d!1701212)))

(assert (=> bs!1225650 (not (= lambda!267696 lambda!267647))))

(declare-fun bs!1225651 () Bool)

(assert (= bs!1225651 (and b!5289084 d!1701230)))

(assert (=> bs!1225651 (not (= lambda!267696 lambda!267650))))

(declare-fun bs!1225652 () Bool)

(assert (= bs!1225652 (and b!5289084 d!1701172)))

(assert (=> bs!1225652 (not (= lambda!267696 lambda!267636))))

(declare-fun bs!1225653 () Bool)

(assert (= bs!1225653 (and b!5289084 d!1701182)))

(assert (=> bs!1225653 (not (= lambda!267696 lambda!267639))))

(assert (=> b!5289084 true))

(declare-fun d!1701436 () Bool)

(declare-fun e!3288172 () Bool)

(assert (=> d!1701436 e!3288172))

(declare-fun res!2243205 () Bool)

(assert (=> d!1701436 (=> (not res!2243205) (not e!3288172))))

(assert (=> d!1701436 (= res!2243205 (>= lt!2161547 0))))

(declare-fun e!3288171 () Int)

(assert (=> d!1701436 (= lt!2161547 e!3288171)))

(declare-fun c!917391 () Bool)

(assert (=> d!1701436 (= c!917391 ((_ is Cons!60939) (exprs!4805 (h!67388 lt!2161303))))))

(assert (=> d!1701436 (= (contextDepth!20 (h!67388 lt!2161303)) lt!2161547)))

(assert (=> b!5289082 (= e!3288171 lt!2161545)))

(declare-fun regexDepth!157 (Regex!14921) Int)

(assert (=> b!5289082 (= lt!2161545 (maxBigInt!0 (regexDepth!157 (h!67387 (exprs!4805 (h!67388 lt!2161303)))) (contextDepth!20 (Context!8611 (t!374266 (exprs!4805 (h!67388 lt!2161303)))))))))

(declare-fun lt!2161546 () Unit!153202)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!6 (List!61063 Int Int) Unit!153202)

(assert (=> b!5289082 (= lt!2161546 (lemmaForallRegexDepthBiggerThanTransitive!6 (t!374266 (exprs!4805 (h!67388 lt!2161303))) lt!2161545 (contextDepth!20 (Context!8611 (t!374266 (exprs!4805 (h!67388 lt!2161303)))))))))

(assert (=> b!5289082 (forall!14329 (t!374266 (exprs!4805 (h!67388 lt!2161303))) lambda!267695)))

(declare-fun lt!2161544 () Unit!153202)

(assert (=> b!5289082 (= lt!2161544 lt!2161546)))

(declare-fun b!5289083 () Bool)

(assert (=> b!5289083 (= e!3288171 0)))

(assert (=> b!5289084 (= e!3288172 (forall!14329 (exprs!4805 (h!67388 lt!2161303)) lambda!267696))))

(assert (= (and d!1701436 c!917391) b!5289082))

(assert (= (and d!1701436 (not c!917391)) b!5289083))

(assert (= (and d!1701436 res!2243205) b!5289084))

(declare-fun m!6326556 () Bool)

(assert (=> b!5289082 m!6326556))

(declare-fun m!6326558 () Bool)

(assert (=> b!5289082 m!6326558))

(declare-fun m!6326560 () Bool)

(assert (=> b!5289082 m!6326560))

(declare-fun m!6326562 () Bool)

(assert (=> b!5289082 m!6326562))

(assert (=> b!5289082 m!6326560))

(assert (=> b!5289082 m!6326558))

(assert (=> b!5289082 m!6326560))

(declare-fun m!6326564 () Bool)

(assert (=> b!5289082 m!6326564))

(declare-fun m!6326566 () Bool)

(assert (=> b!5289084 m!6326566))

(assert (=> b!5288013 d!1701436))

(declare-fun bs!1225661 () Bool)

(declare-fun b!5289107 () Bool)

(assert (= bs!1225661 (and b!5289107 b!5288013)))

(declare-fun lambda!267698 () Int)

(assert (=> bs!1225661 (= lambda!267698 lambda!267594)))

(declare-fun bs!1225663 () Bool)

(assert (= bs!1225663 (and b!5289107 b!5288022)))

(assert (=> bs!1225663 (= lambda!267698 lambda!267599)))

(declare-fun bs!1225665 () Bool)

(assert (= bs!1225665 (and b!5289107 d!1701348)))

(declare-fun lambda!267699 () Int)

(assert (=> bs!1225665 (not (= lambda!267699 lambda!267677))))

(declare-fun bs!1225667 () Bool)

(assert (= bs!1225667 (and b!5289107 b!5288015)))

(declare-fun lt!2161551 () Int)

(assert (=> bs!1225667 (= (= lt!2161551 lt!2161384) (= lambda!267699 lambda!267598))))

(declare-fun bs!1225668 () Bool)

(assert (= bs!1225668 (and b!5289107 d!1701422)))

(assert (=> bs!1225668 (not (= lambda!267699 lambda!267688))))

(assert (=> bs!1225661 (= (= lt!2161551 lt!2161386) (= lambda!267699 lambda!267595))))

(assert (=> bs!1225663 (= (= lt!2161551 lt!2161390) (= lambda!267699 lambda!267600))))

(declare-fun bs!1225671 () Bool)

(assert (= bs!1225671 (and b!5289107 b!5288024)))

(assert (=> bs!1225671 (= (= lt!2161551 lt!2161388) (= lambda!267699 lambda!267601))))

(assert (=> b!5289107 true))

(declare-fun bs!1225673 () Bool)

(declare-fun b!5289109 () Bool)

(assert (= bs!1225673 (and b!5289109 d!1701348)))

(declare-fun lambda!267700 () Int)

(assert (=> bs!1225673 (not (= lambda!267700 lambda!267677))))

(declare-fun bs!1225674 () Bool)

(assert (= bs!1225674 (and b!5289109 b!5288015)))

(declare-fun lt!2161549 () Int)

(assert (=> bs!1225674 (= (= lt!2161549 lt!2161384) (= lambda!267700 lambda!267598))))

(declare-fun bs!1225675 () Bool)

(assert (= bs!1225675 (and b!5289109 d!1701422)))

(assert (=> bs!1225675 (not (= lambda!267700 lambda!267688))))

(declare-fun bs!1225677 () Bool)

(assert (= bs!1225677 (and b!5289109 b!5288013)))

(assert (=> bs!1225677 (= (= lt!2161549 lt!2161386) (= lambda!267700 lambda!267595))))

(declare-fun bs!1225679 () Bool)

(assert (= bs!1225679 (and b!5289109 b!5289107)))

(assert (=> bs!1225679 (= (= lt!2161549 lt!2161551) (= lambda!267700 lambda!267699))))

(declare-fun bs!1225680 () Bool)

(assert (= bs!1225680 (and b!5289109 b!5288022)))

(assert (=> bs!1225680 (= (= lt!2161549 lt!2161390) (= lambda!267700 lambda!267600))))

(declare-fun bs!1225681 () Bool)

(assert (= bs!1225681 (and b!5289109 b!5288024)))

(assert (=> bs!1225681 (= (= lt!2161549 lt!2161388) (= lambda!267700 lambda!267601))))

(assert (=> b!5289109 true))

(declare-fun d!1701468 () Bool)

(declare-fun e!3288187 () Bool)

(assert (=> d!1701468 e!3288187))

(declare-fun res!2243214 () Bool)

(assert (=> d!1701468 (=> (not res!2243214) (not e!3288187))))

(assert (=> d!1701468 (= res!2243214 (>= lt!2161549 0))))

(declare-fun e!3288188 () Int)

(assert (=> d!1701468 (= lt!2161549 e!3288188)))

(declare-fun c!917398 () Bool)

(assert (=> d!1701468 (= c!917398 ((_ is Cons!60940) (t!374267 lt!2161303)))))

(assert (=> d!1701468 (= (zipperDepth!38 (t!374267 lt!2161303)) lt!2161549)))

(assert (=> b!5289107 (= e!3288188 lt!2161551)))

(assert (=> b!5289107 (= lt!2161551 (maxBigInt!0 (contextDepth!20 (h!67388 (t!374267 lt!2161303))) (zipperDepth!38 (t!374267 (t!374267 lt!2161303)))))))

(declare-fun lt!2161548 () Unit!153202)

(assert (=> b!5289107 (= lt!2161548 (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 (t!374267 lt!2161303)) lt!2161551 (zipperDepth!38 (t!374267 (t!374267 lt!2161303))) lambda!267698))))

(assert (=> b!5289107 (forall!14331 (t!374267 (t!374267 lt!2161303)) lambda!267699)))

(declare-fun lt!2161550 () Unit!153202)

(assert (=> b!5289107 (= lt!2161550 lt!2161548)))

(declare-fun b!5289108 () Bool)

(assert (=> b!5289108 (= e!3288188 0)))

(assert (=> b!5289109 (= e!3288187 (forall!14331 (t!374267 lt!2161303) lambda!267700))))

(assert (= (and d!1701468 c!917398) b!5289107))

(assert (= (and d!1701468 (not c!917398)) b!5289108))

(assert (= (and d!1701468 res!2243214) b!5289109))

(declare-fun m!6326568 () Bool)

(assert (=> b!5289107 m!6326568))

(assert (=> b!5289107 m!6326568))

(declare-fun m!6326570 () Bool)

(assert (=> b!5289107 m!6326570))

(declare-fun m!6326572 () Bool)

(assert (=> b!5289107 m!6326572))

(assert (=> b!5289107 m!6326570))

(declare-fun m!6326574 () Bool)

(assert (=> b!5289107 m!6326574))

(declare-fun m!6326576 () Bool)

(assert (=> b!5289107 m!6326576))

(assert (=> b!5289107 m!6326570))

(declare-fun m!6326578 () Bool)

(assert (=> b!5289109 m!6326578))

(assert (=> b!5288013 d!1701468))

(assert (=> d!1701106 d!1701110))

(declare-fun d!1701470 () Bool)

(assert (=> d!1701470 (= (flatMap!648 lt!2161312 lambda!267546) (dynLambda!24091 lambda!267546 lt!2161287))))

(assert (=> d!1701470 true))

(declare-fun _$13!1867 () Unit!153202)

(assert (=> d!1701470 (= (choose!39489 lt!2161312 lt!2161287 lambda!267546) _$13!1867)))

(declare-fun b_lambda!203965 () Bool)

(assert (=> (not b_lambda!203965) (not d!1701470)))

(declare-fun bs!1225692 () Bool)

(assert (= bs!1225692 d!1701470))

(assert (=> bs!1225692 m!6325240))

(assert (=> bs!1225692 m!6325782))

(assert (=> d!1701106 d!1701470))

(declare-fun b!5289110 () Bool)

(declare-fun res!2243218 () Bool)

(declare-fun e!3288191 () Bool)

(assert (=> b!5289110 (=> (not res!2243218) (not e!3288191))))

(declare-fun call!376791 () Bool)

(assert (=> b!5289110 (= res!2243218 call!376791)))

(declare-fun e!3288195 () Bool)

(assert (=> b!5289110 (= e!3288195 e!3288191)))

(declare-fun b!5289111 () Bool)

(declare-fun e!3288194 () Bool)

(declare-fun e!3288190 () Bool)

(assert (=> b!5289111 (= e!3288194 e!3288190)))

(declare-fun res!2243215 () Bool)

(assert (=> b!5289111 (= res!2243215 (not (nullable!5090 (reg!15250 lt!2161455))))))

(assert (=> b!5289111 (=> (not res!2243215) (not e!3288190))))

(declare-fun b!5289112 () Bool)

(assert (=> b!5289112 (= e!3288194 e!3288195)))

(declare-fun c!917399 () Bool)

(assert (=> b!5289112 (= c!917399 ((_ is Union!14921) lt!2161455))))

(declare-fun b!5289113 () Bool)

(declare-fun e!3288192 () Bool)

(assert (=> b!5289113 (= e!3288192 e!3288194)))

(declare-fun c!917400 () Bool)

(assert (=> b!5289113 (= c!917400 ((_ is Star!14921) lt!2161455))))

(declare-fun d!1701472 () Bool)

(declare-fun res!2243219 () Bool)

(assert (=> d!1701472 (=> res!2243219 e!3288192)))

(assert (=> d!1701472 (= res!2243219 ((_ is ElementMatch!14921) lt!2161455))))

(assert (=> d!1701472 (= (validRegex!6657 lt!2161455) e!3288192)))

(declare-fun b!5289114 () Bool)

(declare-fun res!2243217 () Bool)

(declare-fun e!3288193 () Bool)

(assert (=> b!5289114 (=> res!2243217 e!3288193)))

(assert (=> b!5289114 (= res!2243217 (not ((_ is Concat!23766) lt!2161455)))))

(assert (=> b!5289114 (= e!3288195 e!3288193)))

(declare-fun b!5289115 () Bool)

(declare-fun call!376793 () Bool)

(assert (=> b!5289115 (= e!3288190 call!376793)))

(declare-fun bm!376786 () Bool)

(assert (=> bm!376786 (= call!376791 (validRegex!6657 (ite c!917399 (regOne!30355 lt!2161455) (regOne!30354 lt!2161455))))))

(declare-fun bm!376787 () Bool)

(assert (=> bm!376787 (= call!376793 (validRegex!6657 (ite c!917400 (reg!15250 lt!2161455) (ite c!917399 (regTwo!30355 lt!2161455) (regTwo!30354 lt!2161455)))))))

(declare-fun b!5289116 () Bool)

(declare-fun call!376792 () Bool)

(assert (=> b!5289116 (= e!3288191 call!376792)))

(declare-fun bm!376788 () Bool)

(assert (=> bm!376788 (= call!376792 call!376793)))

(declare-fun b!5289117 () Bool)

(declare-fun e!3288189 () Bool)

(assert (=> b!5289117 (= e!3288193 e!3288189)))

(declare-fun res!2243216 () Bool)

(assert (=> b!5289117 (=> (not res!2243216) (not e!3288189))))

(assert (=> b!5289117 (= res!2243216 call!376791)))

(declare-fun b!5289118 () Bool)

(assert (=> b!5289118 (= e!3288189 call!376792)))

(assert (= (and d!1701472 (not res!2243219)) b!5289113))

(assert (= (and b!5289113 c!917400) b!5289111))

(assert (= (and b!5289113 (not c!917400)) b!5289112))

(assert (= (and b!5289111 res!2243215) b!5289115))

(assert (= (and b!5289112 c!917399) b!5289110))

(assert (= (and b!5289112 (not c!917399)) b!5289114))

(assert (= (and b!5289110 res!2243218) b!5289116))

(assert (= (and b!5289114 (not res!2243217)) b!5289117))

(assert (= (and b!5289117 res!2243216) b!5289118))

(assert (= (or b!5289116 b!5289118) bm!376788))

(assert (= (or b!5289110 b!5289117) bm!376786))

(assert (= (or b!5289115 bm!376788) bm!376787))

(declare-fun m!6326580 () Bool)

(assert (=> b!5289111 m!6326580))

(declare-fun m!6326582 () Bool)

(assert (=> bm!376786 m!6326582))

(declare-fun m!6326584 () Bool)

(assert (=> bm!376787 m!6326584))

(assert (=> d!1701172 d!1701472))

(declare-fun d!1701474 () Bool)

(declare-fun res!2243220 () Bool)

(declare-fun e!3288196 () Bool)

(assert (=> d!1701474 (=> res!2243220 e!3288196)))

(assert (=> d!1701474 (= res!2243220 ((_ is Nil!60939) (unfocusZipperList!363 zl!343)))))

(assert (=> d!1701474 (= (forall!14329 (unfocusZipperList!363 zl!343) lambda!267636) e!3288196)))

(declare-fun b!5289119 () Bool)

(declare-fun e!3288197 () Bool)

(assert (=> b!5289119 (= e!3288196 e!3288197)))

(declare-fun res!2243221 () Bool)

(assert (=> b!5289119 (=> (not res!2243221) (not e!3288197))))

(assert (=> b!5289119 (= res!2243221 (dynLambda!24093 lambda!267636 (h!67387 (unfocusZipperList!363 zl!343))))))

(declare-fun b!5289120 () Bool)

(assert (=> b!5289120 (= e!3288197 (forall!14329 (t!374266 (unfocusZipperList!363 zl!343)) lambda!267636))))

(assert (= (and d!1701474 (not res!2243220)) b!5289119))

(assert (= (and b!5289119 res!2243221) b!5289120))

(declare-fun b_lambda!203967 () Bool)

(assert (=> (not b_lambda!203967) (not b!5289119)))

(declare-fun m!6326586 () Bool)

(assert (=> b!5289119 m!6326586))

(declare-fun m!6326588 () Bool)

(assert (=> b!5289120 m!6326588))

(assert (=> d!1701172 d!1701474))

(declare-fun bs!1225699 () Bool)

(declare-fun d!1701476 () Bool)

(assert (= bs!1225699 (and d!1701476 d!1701348)))

(declare-fun lambda!267702 () Int)

(assert (=> bs!1225699 (= lambda!267702 lambda!267677)))

(declare-fun bs!1225700 () Bool)

(assert (= bs!1225700 (and d!1701476 b!5288015)))

(assert (=> bs!1225700 (not (= lambda!267702 lambda!267598))))

(declare-fun bs!1225701 () Bool)

(assert (= bs!1225701 (and d!1701476 d!1701422)))

(assert (=> bs!1225701 (not (= lambda!267702 lambda!267688))))

(declare-fun bs!1225702 () Bool)

(assert (= bs!1225702 (and d!1701476 b!5288013)))

(assert (=> bs!1225702 (not (= lambda!267702 lambda!267595))))

(declare-fun bs!1225703 () Bool)

(assert (= bs!1225703 (and d!1701476 b!5289107)))

(assert (=> bs!1225703 (not (= lambda!267702 lambda!267699))))

(declare-fun bs!1225704 () Bool)

(assert (= bs!1225704 (and d!1701476 b!5288022)))

(assert (=> bs!1225704 (not (= lambda!267702 lambda!267600))))

(declare-fun bs!1225705 () Bool)

(assert (= bs!1225705 (and d!1701476 b!5288024)))

(assert (=> bs!1225705 (not (= lambda!267702 lambda!267601))))

(declare-fun bs!1225706 () Bool)

(assert (= bs!1225706 (and d!1701476 b!5289109)))

(assert (=> bs!1225706 (not (= lambda!267702 lambda!267700))))

(assert (=> d!1701476 (= (nullableZipper!1308 ((_ map or) lt!2161309 lt!2161307)) (exists!2003 ((_ map or) lt!2161309 lt!2161307) lambda!267702))))

(declare-fun bs!1225707 () Bool)

(assert (= bs!1225707 d!1701476))

(declare-fun m!6326600 () Bool)

(assert (=> bs!1225707 m!6326600))

(assert (=> b!5288688 d!1701476))

(declare-fun bs!1225708 () Bool)

(declare-fun d!1701482 () Bool)

(assert (= bs!1225708 (and d!1701482 d!1701348)))

(declare-fun lambda!267703 () Int)

(assert (=> bs!1225708 (= lambda!267703 lambda!267677)))

(declare-fun bs!1225709 () Bool)

(assert (= bs!1225709 (and d!1701482 b!5288015)))

(assert (=> bs!1225709 (not (= lambda!267703 lambda!267598))))

(declare-fun bs!1225710 () Bool)

(assert (= bs!1225710 (and d!1701482 d!1701422)))

(assert (=> bs!1225710 (not (= lambda!267703 lambda!267688))))

(declare-fun bs!1225711 () Bool)

(assert (= bs!1225711 (and d!1701482 b!5288013)))

(assert (=> bs!1225711 (not (= lambda!267703 lambda!267595))))

(declare-fun bs!1225712 () Bool)

(assert (= bs!1225712 (and d!1701482 b!5289107)))

(assert (=> bs!1225712 (not (= lambda!267703 lambda!267699))))

(declare-fun bs!1225713 () Bool)

(assert (= bs!1225713 (and d!1701482 b!5288022)))

(assert (=> bs!1225713 (not (= lambda!267703 lambda!267600))))

(declare-fun bs!1225714 () Bool)

(assert (= bs!1225714 (and d!1701482 d!1701476)))

(assert (=> bs!1225714 (= lambda!267703 lambda!267702)))

(declare-fun bs!1225715 () Bool)

(assert (= bs!1225715 (and d!1701482 b!5288024)))

(assert (=> bs!1225715 (not (= lambda!267703 lambda!267601))))

(declare-fun bs!1225716 () Bool)

(assert (= bs!1225716 (and d!1701482 b!5289109)))

(assert (=> bs!1225716 (not (= lambda!267703 lambda!267700))))

(assert (=> d!1701482 (= (nullableZipper!1308 lt!2161312) (exists!2003 lt!2161312 lambda!267703))))

(declare-fun bs!1225717 () Bool)

(assert (= bs!1225717 d!1701482))

(declare-fun m!6326610 () Bool)

(assert (=> bs!1225717 m!6326610))

(assert (=> b!5288573 d!1701482))

(assert (=> b!5288616 d!1701396))

(declare-fun d!1701488 () Bool)

(declare-fun c!917404 () Bool)

(assert (=> d!1701488 (= c!917404 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288202 () Bool)

(assert (=> d!1701488 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161314 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288202)))

(declare-fun b!5289129 () Bool)

(assert (=> b!5289129 (= e!3288202 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161314 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5289130 () Bool)

(assert (=> b!5289130 (= e!3288202 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161314 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701488 c!917404) b!5289129))

(assert (= (and d!1701488 (not c!917404)) b!5289130))

(assert (=> d!1701488 m!6325492))

(assert (=> d!1701488 m!6326388))

(assert (=> b!5289129 m!6325498))

(declare-fun m!6326622 () Bool)

(assert (=> b!5289129 m!6326622))

(assert (=> b!5289130 m!6325492))

(assert (=> b!5289130 m!6326392))

(assert (=> b!5289130 m!6325498))

(assert (=> b!5289130 m!6326392))

(declare-fun m!6326624 () Bool)

(assert (=> b!5289130 m!6326624))

(assert (=> b!5289130 m!6325492))

(assert (=> b!5289130 m!6326396))

(assert (=> b!5289130 m!6326624))

(assert (=> b!5289130 m!6326396))

(declare-fun m!6326626 () Bool)

(assert (=> b!5289130 m!6326626))

(assert (=> b!5287941 d!1701488))

(declare-fun bs!1225726 () Bool)

(declare-fun d!1701496 () Bool)

(assert (= bs!1225726 (and d!1701496 b!5287682)))

(declare-fun lambda!267705 () Int)

(assert (=> bs!1225726 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267705 lambda!267546))))

(declare-fun bs!1225728 () Bool)

(assert (= bs!1225728 (and d!1701496 d!1701080)))

(assert (=> bs!1225728 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267705 lambda!267614))))

(declare-fun bs!1225729 () Bool)

(assert (= bs!1225729 (and d!1701496 d!1701188)))

(assert (=> bs!1225729 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267705 lambda!267640))))

(declare-fun bs!1225731 () Bool)

(assert (= bs!1225731 (and d!1701496 d!1701364)))

(assert (=> bs!1225731 (= lambda!267705 lambda!267678)))

(assert (=> d!1701496 true))

(assert (=> d!1701496 (= (derivationStepZipper!1164 lt!2161314 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161314 lambda!267705))))

(declare-fun bs!1225733 () Bool)

(assert (= bs!1225733 d!1701496))

(declare-fun m!6326632 () Bool)

(assert (=> bs!1225733 m!6326632))

(assert (=> b!5287941 d!1701496))

(assert (=> b!5287941 d!1701366))

(assert (=> b!5287941 d!1701370))

(declare-fun d!1701502 () Bool)

(assert (=> d!1701502 (= (isEmpty!32892 (tail!10432 lt!2161282)) ((_ is Nil!60939) (tail!10432 lt!2161282)))))

(assert (=> b!5288556 d!1701502))

(declare-fun d!1701506 () Bool)

(assert (=> d!1701506 (= (tail!10432 lt!2161282) (t!374266 lt!2161282))))

(assert (=> b!5288556 d!1701506))

(assert (=> d!1701094 d!1701416))

(assert (=> d!1701244 d!1701416))

(declare-fun b!5289131 () Bool)

(declare-fun e!3288205 () (InoxSet Context!8610))

(declare-fun call!376797 () (InoxSet Context!8610))

(assert (=> b!5289131 (= e!3288205 call!376797)))

(declare-fun bm!376789 () Bool)

(declare-fun call!376798 () List!61063)

(declare-fun c!917408 () Bool)

(declare-fun call!376796 () (InoxSet Context!8610))

(assert (=> bm!376789 (= call!376796 (derivationStepZipperDown!369 (ite c!917408 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))) (ite c!917408 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (Context!8611 call!376798)) (h!67386 s!2326)))))

(declare-fun b!5289132 () Bool)

(declare-fun e!3288206 () (InoxSet Context!8610))

(assert (=> b!5289132 (= e!3288206 call!376797)))

(declare-fun c!917407 () Bool)

(declare-fun c!917406 () Bool)

(declare-fun bm!376790 () Bool)

(assert (=> bm!376790 (= call!376798 ($colon$colon!1358 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))) (ite (or c!917407 c!917406) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67387 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun call!376795 () List!61063)

(declare-fun bm!376791 () Bool)

(declare-fun call!376794 () (InoxSet Context!8610))

(assert (=> bm!376791 (= call!376794 (derivationStepZipperDown!369 (ite c!917408 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917407 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917406 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))) (ite (or c!917408 c!917407) (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (Context!8611 call!376795)) (h!67386 s!2326)))))

(declare-fun bm!376792 () Bool)

(declare-fun call!376799 () (InoxSet Context!8610))

(assert (=> bm!376792 (= call!376797 call!376799)))

(declare-fun bm!376793 () Bool)

(assert (=> bm!376793 (= call!376799 call!376794)))

(declare-fun b!5289133 () Bool)

(declare-fun e!3288204 () Bool)

(assert (=> b!5289133 (= c!917407 e!3288204)))

(declare-fun res!2243224 () Bool)

(assert (=> b!5289133 (=> (not res!2243224) (not e!3288204))))

(assert (=> b!5289133 (= res!2243224 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun e!3288208 () (InoxSet Context!8610))

(declare-fun e!3288207 () (InoxSet Context!8610))

(assert (=> b!5289133 (= e!3288208 e!3288207)))

(declare-fun d!1701508 () Bool)

(declare-fun c!917405 () Bool)

(assert (=> d!1701508 (= c!917405 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))) (= (c!916969 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326))))))

(declare-fun e!3288203 () (InoxSet Context!8610))

(assert (=> d!1701508 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 (h!67388 zl!343))) (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326)) e!3288203)))

(declare-fun bm!376794 () Bool)

(assert (=> bm!376794 (= call!376795 call!376798)))

(declare-fun b!5289134 () Bool)

(assert (=> b!5289134 (= e!3288208 ((_ map or) call!376794 call!376796))))

(declare-fun b!5289135 () Bool)

(assert (=> b!5289135 (= e!3288203 e!3288208)))

(assert (=> b!5289135 (= c!917408 ((_ is Union!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5289136 () Bool)

(declare-fun c!917409 () Bool)

(assert (=> b!5289136 (= c!917409 ((_ is Star!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> b!5289136 (= e!3288206 e!3288205)))

(declare-fun b!5289137 () Bool)

(assert (=> b!5289137 (= e!3288205 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289138 () Bool)

(assert (=> b!5289138 (= e!3288207 ((_ map or) call!376796 call!376799))))

(declare-fun b!5289139 () Bool)

(assert (=> b!5289139 (= e!3288204 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5289140 () Bool)

(assert (=> b!5289140 (= e!3288203 (store ((as const (Array Context!8610 Bool)) false) (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) true))))

(declare-fun b!5289141 () Bool)

(assert (=> b!5289141 (= e!3288207 e!3288206)))

(assert (=> b!5289141 (= c!917406 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (= (and d!1701508 c!917405) b!5289140))

(assert (= (and d!1701508 (not c!917405)) b!5289135))

(assert (= (and b!5289135 c!917408) b!5289134))

(assert (= (and b!5289135 (not c!917408)) b!5289133))

(assert (= (and b!5289133 res!2243224) b!5289139))

(assert (= (and b!5289133 c!917407) b!5289138))

(assert (= (and b!5289133 (not c!917407)) b!5289141))

(assert (= (and b!5289141 c!917406) b!5289132))

(assert (= (and b!5289141 (not c!917406)) b!5289136))

(assert (= (and b!5289136 c!917409) b!5289131))

(assert (= (and b!5289136 (not c!917409)) b!5289137))

(assert (= (or b!5289132 b!5289131) bm!376794))

(assert (= (or b!5289132 b!5289131) bm!376792))

(assert (= (or b!5289138 bm!376794) bm!376790))

(assert (= (or b!5289138 bm!376792) bm!376793))

(assert (= (or b!5289134 b!5289138) bm!376789))

(assert (= (or b!5289134 bm!376793) bm!376791))

(declare-fun m!6326636 () Bool)

(assert (=> b!5289140 m!6326636))

(declare-fun m!6326638 () Bool)

(assert (=> bm!376790 m!6326638))

(declare-fun m!6326640 () Bool)

(assert (=> bm!376791 m!6326640))

(assert (=> b!5289139 m!6326008))

(declare-fun m!6326642 () Bool)

(assert (=> bm!376789 m!6326642))

(assert (=> bm!376704 d!1701508))

(declare-fun d!1701510 () Bool)

(assert (=> d!1701510 (= ($colon$colon!1358 (exprs!4805 lt!2161287) (ite (or c!917045 c!917044) (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 r!7292)))) (Cons!60939 (ite (or c!917045 c!917044) (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 r!7292))) (exprs!4805 lt!2161287)))))

(assert (=> bm!376642 d!1701510))

(declare-fun d!1701512 () Bool)

(assert (=> d!1701512 true))

(assert (=> d!1701512 true))

(declare-fun res!2243227 () Bool)

(assert (=> d!1701512 (= (choose!39491 lambda!267545) res!2243227)))

(assert (=> d!1701142 d!1701512))

(declare-fun d!1701514 () Bool)

(assert (=> d!1701514 (= (isEmpty!32892 (exprs!4805 (h!67388 zl!343))) ((_ is Nil!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> b!5288106 d!1701514))

(declare-fun b!5289142 () Bool)

(declare-fun e!3288210 () (InoxSet Context!8610))

(declare-fun call!376800 () (InoxSet Context!8610))

(assert (=> b!5289142 (= e!3288210 ((_ map or) call!376800 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302)))))) (h!67386 s!2326))))))

(declare-fun b!5289143 () Bool)

(declare-fun e!3288211 () Bool)

(assert (=> b!5289143 (= e!3288211 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302)))))))))

(declare-fun b!5289144 () Bool)

(declare-fun e!3288209 () (InoxSet Context!8610))

(assert (=> b!5289144 (= e!3288209 call!376800)))

(declare-fun b!5289145 () Bool)

(assert (=> b!5289145 (= e!3288210 e!3288209)))

(declare-fun c!917410 () Bool)

(assert (=> b!5289145 (= c!917410 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302))))))))

(declare-fun b!5289146 () Bool)

(assert (=> b!5289146 (= e!3288209 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701516 () Bool)

(declare-fun c!917411 () Bool)

(assert (=> d!1701516 (= c!917411 e!3288211)))

(declare-fun res!2243228 () Bool)

(assert (=> d!1701516 (=> (not res!2243228) (not e!3288211))))

(assert (=> d!1701516 (= res!2243228 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302))))))))

(assert (=> d!1701516 (= (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (h!67386 s!2326)) e!3288210)))

(declare-fun bm!376795 () Bool)

(assert (=> bm!376795 (= call!376800 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302)))))) (h!67386 s!2326)))))

(assert (= (and d!1701516 res!2243228) b!5289143))

(assert (= (and d!1701516 c!917411) b!5289142))

(assert (= (and d!1701516 (not c!917411)) b!5289145))

(assert (= (and b!5289145 c!917410) b!5289144))

(assert (= (and b!5289145 (not c!917410)) b!5289146))

(assert (= (or b!5289142 b!5289144) bm!376795))

(declare-fun m!6326644 () Bool)

(assert (=> b!5289142 m!6326644))

(declare-fun m!6326646 () Bool)

(assert (=> b!5289143 m!6326646))

(declare-fun m!6326648 () Bool)

(assert (=> bm!376795 m!6326648))

(assert (=> b!5288485 d!1701516))

(declare-fun d!1701518 () Bool)

(declare-fun lt!2161555 () Int)

(assert (=> d!1701518 (>= lt!2161555 0)))

(declare-fun e!3288212 () Int)

(assert (=> d!1701518 (= lt!2161555 e!3288212)))

(declare-fun c!917412 () Bool)

(assert (=> d!1701518 (= c!917412 ((_ is Cons!60939) (exprs!4805 (h!67388 lt!2161303))))))

(assert (=> d!1701518 (= (contextDepthTotal!62 (h!67388 lt!2161303)) lt!2161555)))

(declare-fun b!5289147 () Bool)

(assert (=> b!5289147 (= e!3288212 (+ (regexDepthTotal!20 (h!67387 (exprs!4805 (h!67388 lt!2161303)))) (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 (h!67388 lt!2161303)))))))))

(declare-fun b!5289148 () Bool)

(assert (=> b!5289148 (= e!3288212 1)))

(assert (= (and d!1701518 c!917412) b!5289147))

(assert (= (and d!1701518 (not c!917412)) b!5289148))

(declare-fun m!6326650 () Bool)

(assert (=> b!5289147 m!6326650))

(declare-fun m!6326652 () Bool)

(assert (=> b!5289147 m!6326652))

(assert (=> b!5288694 d!1701518))

(declare-fun d!1701520 () Bool)

(declare-fun lt!2161556 () Int)

(assert (=> d!1701520 (>= lt!2161556 0)))

(declare-fun e!3288213 () Int)

(assert (=> d!1701520 (= lt!2161556 e!3288213)))

(declare-fun c!917413 () Bool)

(assert (=> d!1701520 (= c!917413 ((_ is Cons!60940) (t!374267 lt!2161303)))))

(assert (=> d!1701520 (= (zipperDepthTotal!82 (t!374267 lt!2161303)) lt!2161556)))

(declare-fun b!5289149 () Bool)

(assert (=> b!5289149 (= e!3288213 (+ (contextDepthTotal!62 (h!67388 (t!374267 lt!2161303))) (zipperDepthTotal!82 (t!374267 (t!374267 lt!2161303)))))))

(declare-fun b!5289150 () Bool)

(assert (=> b!5289150 (= e!3288213 0)))

(assert (= (and d!1701520 c!917413) b!5289149))

(assert (= (and d!1701520 (not c!917413)) b!5289150))

(declare-fun m!6326654 () Bool)

(assert (=> b!5289149 m!6326654))

(declare-fun m!6326656 () Bool)

(assert (=> b!5289149 m!6326656))

(assert (=> b!5288694 d!1701520))

(declare-fun b!5289151 () Bool)

(declare-fun e!3288216 () (InoxSet Context!8610))

(declare-fun call!376804 () (InoxSet Context!8610))

(assert (=> b!5289151 (= e!3288216 call!376804)))

(declare-fun bm!376796 () Bool)

(declare-fun call!376803 () (InoxSet Context!8610))

(declare-fun c!917417 () Bool)

(declare-fun call!376805 () List!61063)

(assert (=> bm!376796 (= call!376803 (derivationStepZipperDown!369 (ite c!917417 (regTwo!30355 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (regOne!30354 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))))) (ite c!917417 (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641)) (Context!8611 call!376805)) (h!67386 s!2326)))))

(declare-fun b!5289152 () Bool)

(declare-fun e!3288217 () (InoxSet Context!8610))

(assert (=> b!5289152 (= e!3288217 call!376804)))

(declare-fun c!917415 () Bool)

(declare-fun bm!376797 () Bool)

(declare-fun c!917416 () Bool)

(assert (=> bm!376797 (= call!376805 ($colon$colon!1358 (exprs!4805 (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641))) (ite (or c!917416 c!917415) (regTwo!30354 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))))))))

(declare-fun call!376801 () (InoxSet Context!8610))

(declare-fun bm!376798 () Bool)

(declare-fun call!376802 () List!61063)

(assert (=> bm!376798 (= call!376801 (derivationStepZipperDown!369 (ite c!917417 (regOne!30355 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (ite c!917416 (regTwo!30354 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (ite c!917415 (regOne!30354 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (reg!15250 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))))))) (ite (or c!917417 c!917416) (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641)) (Context!8611 call!376802)) (h!67386 s!2326)))))

(declare-fun bm!376799 () Bool)

(declare-fun call!376806 () (InoxSet Context!8610))

(assert (=> bm!376799 (= call!376804 call!376806)))

(declare-fun bm!376800 () Bool)

(assert (=> bm!376800 (= call!376806 call!376801)))

(declare-fun b!5289153 () Bool)

(declare-fun e!3288215 () Bool)

(assert (=> b!5289153 (= c!917416 e!3288215)))

(declare-fun res!2243229 () Bool)

(assert (=> b!5289153 (=> (not res!2243229) (not e!3288215))))

(assert (=> b!5289153 (= res!2243229 ((_ is Concat!23766) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))))))

(declare-fun e!3288219 () (InoxSet Context!8610))

(declare-fun e!3288218 () (InoxSet Context!8610))

(assert (=> b!5289153 (= e!3288219 e!3288218)))

(declare-fun c!917414 () Bool)

(declare-fun d!1701522 () Bool)

(assert (=> d!1701522 (= c!917414 (and ((_ is ElementMatch!14921) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (= (c!916969 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))) (h!67386 s!2326))))))

(declare-fun e!3288214 () (InoxSet Context!8610))

(assert (=> d!1701522 (= (derivationStepZipperDown!369 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))) (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641)) (h!67386 s!2326)) e!3288214)))

(declare-fun bm!376801 () Bool)

(assert (=> bm!376801 (= call!376802 call!376805)))

(declare-fun b!5289154 () Bool)

(assert (=> b!5289154 (= e!3288219 ((_ map or) call!376801 call!376803))))

(declare-fun b!5289155 () Bool)

(assert (=> b!5289155 (= e!3288214 e!3288219)))

(assert (=> b!5289155 (= c!917417 ((_ is Union!14921) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))))))

(declare-fun b!5289156 () Bool)

(declare-fun c!917418 () Bool)

(assert (=> b!5289156 (= c!917418 ((_ is Star!14921) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))))))

(assert (=> b!5289156 (= e!3288217 e!3288216)))

(declare-fun b!5289157 () Bool)

(assert (=> b!5289157 (= e!3288216 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289158 () Bool)

(assert (=> b!5289158 (= e!3288218 ((_ map or) call!376803 call!376806))))

(declare-fun b!5289159 () Bool)

(assert (=> b!5289159 (= e!3288215 (nullable!5090 (regOne!30354 (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292)))))))))))

(declare-fun b!5289160 () Bool)

(assert (=> b!5289160 (= e!3288214 (store ((as const (Array Context!8610 Bool)) false) (ite (or c!917041 c!917040) lt!2161302 (Context!8611 call!376641)) true))))

(declare-fun b!5289161 () Bool)

(assert (=> b!5289161 (= e!3288218 e!3288217)))

(assert (=> b!5289161 (= c!917415 ((_ is Concat!23766) (ite c!917041 (regOne!30355 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917040 (regTwo!30354 (regTwo!30354 (regOne!30354 r!7292))) (ite c!917039 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))) (reg!15250 (regTwo!30354 (regOne!30354 r!7292))))))))))

(assert (= (and d!1701522 c!917414) b!5289160))

(assert (= (and d!1701522 (not c!917414)) b!5289155))

(assert (= (and b!5289155 c!917417) b!5289154))

(assert (= (and b!5289155 (not c!917417)) b!5289153))

(assert (= (and b!5289153 res!2243229) b!5289159))

(assert (= (and b!5289153 c!917416) b!5289158))

(assert (= (and b!5289153 (not c!917416)) b!5289161))

(assert (= (and b!5289161 c!917415) b!5289152))

(assert (= (and b!5289161 (not c!917415)) b!5289156))

(assert (= (and b!5289156 c!917418) b!5289151))

(assert (= (and b!5289156 (not c!917418)) b!5289157))

(assert (= (or b!5289152 b!5289151) bm!376801))

(assert (= (or b!5289152 b!5289151) bm!376799))

(assert (= (or b!5289158 bm!376801) bm!376797))

(assert (= (or b!5289158 bm!376799) bm!376800))

(assert (= (or b!5289154 b!5289158) bm!376796))

(assert (= (or b!5289154 bm!376800) bm!376798))

(declare-fun m!6326658 () Bool)

(assert (=> b!5289160 m!6326658))

(declare-fun m!6326660 () Bool)

(assert (=> bm!376797 m!6326660))

(declare-fun m!6326662 () Bool)

(assert (=> bm!376798 m!6326662))

(declare-fun m!6326664 () Bool)

(assert (=> b!5289159 m!6326664))

(declare-fun m!6326666 () Bool)

(assert (=> bm!376796 m!6326666))

(assert (=> bm!376637 d!1701522))

(assert (=> d!1701200 d!1701204))

(declare-fun d!1701524 () Bool)

(assert (=> d!1701524 (= (flatMap!648 z!1189 lambda!267546) (dynLambda!24091 lambda!267546 (h!67388 zl!343)))))

(assert (=> d!1701524 true))

(declare-fun _$13!1868 () Unit!153202)

(assert (=> d!1701524 (= (choose!39489 z!1189 (h!67388 zl!343) lambda!267546) _$13!1868)))

(declare-fun b_lambda!203969 () Bool)

(assert (=> (not b_lambda!203969) (not d!1701524)))

(declare-fun bs!1225735 () Bool)

(assert (= bs!1225735 d!1701524))

(assert (=> bs!1225735 m!6325262))

(assert (=> bs!1225735 m!6326012))

(assert (=> d!1701200 d!1701524))

(declare-fun bs!1225736 () Bool)

(declare-fun d!1701526 () Bool)

(assert (= bs!1225736 (and d!1701526 d!1701348)))

(declare-fun lambda!267708 () Int)

(assert (=> bs!1225736 (= lambda!267708 lambda!267677)))

(declare-fun bs!1225737 () Bool)

(assert (= bs!1225737 (and d!1701526 d!1701482)))

(assert (=> bs!1225737 (= lambda!267708 lambda!267703)))

(declare-fun bs!1225738 () Bool)

(assert (= bs!1225738 (and d!1701526 b!5288015)))

(assert (=> bs!1225738 (not (= lambda!267708 lambda!267598))))

(declare-fun bs!1225739 () Bool)

(assert (= bs!1225739 (and d!1701526 d!1701422)))

(assert (=> bs!1225739 (not (= lambda!267708 lambda!267688))))

(declare-fun bs!1225740 () Bool)

(assert (= bs!1225740 (and d!1701526 b!5288013)))

(assert (=> bs!1225740 (not (= lambda!267708 lambda!267595))))

(declare-fun bs!1225741 () Bool)

(assert (= bs!1225741 (and d!1701526 b!5289107)))

(assert (=> bs!1225741 (not (= lambda!267708 lambda!267699))))

(declare-fun bs!1225742 () Bool)

(assert (= bs!1225742 (and d!1701526 b!5288022)))

(assert (=> bs!1225742 (not (= lambda!267708 lambda!267600))))

(declare-fun bs!1225743 () Bool)

(assert (= bs!1225743 (and d!1701526 d!1701476)))

(assert (=> bs!1225743 (= lambda!267708 lambda!267702)))

(declare-fun bs!1225744 () Bool)

(assert (= bs!1225744 (and d!1701526 b!5288024)))

(assert (=> bs!1225744 (not (= lambda!267708 lambda!267601))))

(declare-fun bs!1225745 () Bool)

(assert (= bs!1225745 (and d!1701526 b!5289109)))

(assert (=> bs!1225745 (not (= lambda!267708 lambda!267700))))

(assert (=> d!1701526 (= (nullableZipper!1308 lt!2161298) (exists!2003 lt!2161298 lambda!267708))))

(declare-fun bs!1225746 () Bool)

(assert (= bs!1225746 d!1701526))

(declare-fun m!6326668 () Bool)

(assert (=> bs!1225746 m!6326668))

(assert (=> b!5288025 d!1701526))

(declare-fun b!5289170 () Bool)

(declare-fun res!2243241 () Bool)

(declare-fun e!3288226 () Bool)

(assert (=> b!5289170 (=> (not res!2243241) (not e!3288226))))

(declare-fun call!376807 () Bool)

(assert (=> b!5289170 (= res!2243241 call!376807)))

(declare-fun e!3288230 () Bool)

(assert (=> b!5289170 (= e!3288230 e!3288226)))

(declare-fun b!5289171 () Bool)

(declare-fun e!3288229 () Bool)

(declare-fun e!3288225 () Bool)

(assert (=> b!5289171 (= e!3288229 e!3288225)))

(declare-fun res!2243238 () Bool)

(assert (=> b!5289171 (= res!2243238 (not (nullable!5090 (reg!15250 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))))

(assert (=> b!5289171 (=> (not res!2243238) (not e!3288225))))

(declare-fun b!5289172 () Bool)

(assert (=> b!5289172 (= e!3288229 e!3288230)))

(declare-fun c!917419 () Bool)

(assert (=> b!5289172 (= c!917419 ((_ is Union!14921) (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))

(declare-fun b!5289173 () Bool)

(declare-fun e!3288227 () Bool)

(assert (=> b!5289173 (= e!3288227 e!3288229)))

(declare-fun c!917420 () Bool)

(assert (=> b!5289173 (= c!917420 ((_ is Star!14921) (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))

(declare-fun d!1701528 () Bool)

(declare-fun res!2243242 () Bool)

(assert (=> d!1701528 (=> res!2243242 e!3288227)))

(assert (=> d!1701528 (= res!2243242 ((_ is ElementMatch!14921) (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))

(assert (=> d!1701528 (= (validRegex!6657 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))) e!3288227)))

(declare-fun b!5289174 () Bool)

(declare-fun res!2243240 () Bool)

(declare-fun e!3288228 () Bool)

(assert (=> b!5289174 (=> res!2243240 e!3288228)))

(assert (=> b!5289174 (= res!2243240 (not ((_ is Concat!23766) (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292)))))))

(assert (=> b!5289174 (= e!3288230 e!3288228)))

(declare-fun b!5289175 () Bool)

(declare-fun call!376809 () Bool)

(assert (=> b!5289175 (= e!3288225 call!376809)))

(declare-fun bm!376802 () Bool)

(assert (=> bm!376802 (= call!376807 (validRegex!6657 (ite c!917419 (regOne!30355 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))) (regOne!30354 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))))))))

(declare-fun bm!376803 () Bool)

(assert (=> bm!376803 (= call!376809 (validRegex!6657 (ite c!917420 (reg!15250 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))) (ite c!917419 (regTwo!30355 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292))) (regTwo!30354 (ite c!917101 (regOne!30355 r!7292) (regOne!30354 r!7292)))))))))

(declare-fun b!5289176 () Bool)

(declare-fun call!376808 () Bool)

(assert (=> b!5289176 (= e!3288226 call!376808)))

(declare-fun bm!376804 () Bool)

(assert (=> bm!376804 (= call!376808 call!376809)))

(declare-fun b!5289177 () Bool)

(declare-fun e!3288224 () Bool)

(assert (=> b!5289177 (= e!3288228 e!3288224)))

(declare-fun res!2243239 () Bool)

(assert (=> b!5289177 (=> (not res!2243239) (not e!3288224))))

(assert (=> b!5289177 (= res!2243239 call!376807)))

(declare-fun b!5289178 () Bool)

(assert (=> b!5289178 (= e!3288224 call!376808)))

(assert (= (and d!1701528 (not res!2243242)) b!5289173))

(assert (= (and b!5289173 c!917420) b!5289171))

(assert (= (and b!5289173 (not c!917420)) b!5289172))

(assert (= (and b!5289171 res!2243238) b!5289175))

(assert (= (and b!5289172 c!917419) b!5289170))

(assert (= (and b!5289172 (not c!917419)) b!5289174))

(assert (= (and b!5289170 res!2243241) b!5289176))

(assert (= (and b!5289174 (not res!2243240)) b!5289177))

(assert (= (and b!5289177 res!2243239) b!5289178))

(assert (= (or b!5289176 b!5289178) bm!376804))

(assert (= (or b!5289170 b!5289177) bm!376802))

(assert (= (or b!5289175 bm!376804) bm!376803))

(declare-fun m!6326670 () Bool)

(assert (=> b!5289171 m!6326670))

(declare-fun m!6326672 () Bool)

(assert (=> bm!376802 m!6326672))

(declare-fun m!6326674 () Bool)

(assert (=> bm!376803 m!6326674))

(assert (=> bm!376659 d!1701528))

(declare-fun b!5289179 () Bool)

(declare-fun e!3288233 () (InoxSet Context!8610))

(declare-fun call!376813 () (InoxSet Context!8610))

(assert (=> b!5289179 (= e!3288233 call!376813)))

(declare-fun call!376814 () List!61063)

(declare-fun c!917424 () Bool)

(declare-fun call!376812 () (InoxSet Context!8610))

(declare-fun bm!376805 () Bool)

(assert (=> bm!376805 (= call!376812 (derivationStepZipperDown!369 (ite c!917424 (regTwo!30355 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (regOne!30354 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))) (ite c!917424 (ite c!917229 lt!2161302 (Context!8611 call!376707)) (Context!8611 call!376814)) (h!67386 s!2326)))))

(declare-fun b!5289180 () Bool)

(declare-fun e!3288234 () (InoxSet Context!8610))

(assert (=> b!5289180 (= e!3288234 call!376813)))

(declare-fun c!917423 () Bool)

(declare-fun bm!376806 () Bool)

(declare-fun c!917422 () Bool)

(assert (=> bm!376806 (= call!376814 ($colon$colon!1358 (exprs!4805 (ite c!917229 lt!2161302 (Context!8611 call!376707))) (ite (or c!917423 c!917422) (regTwo!30354 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun bm!376807 () Bool)

(declare-fun call!376810 () (InoxSet Context!8610))

(declare-fun call!376811 () List!61063)

(assert (=> bm!376807 (= call!376810 (derivationStepZipperDown!369 (ite c!917424 (regOne!30355 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (ite c!917423 (regTwo!30354 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (ite c!917422 (regOne!30354 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (reg!15250 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))) (ite (or c!917424 c!917423) (ite c!917229 lt!2161302 (Context!8611 call!376707)) (Context!8611 call!376811)) (h!67386 s!2326)))))

(declare-fun bm!376808 () Bool)

(declare-fun call!376815 () (InoxSet Context!8610))

(assert (=> bm!376808 (= call!376813 call!376815)))

(declare-fun bm!376809 () Bool)

(assert (=> bm!376809 (= call!376815 call!376810)))

(declare-fun b!5289181 () Bool)

(declare-fun e!3288232 () Bool)

(assert (=> b!5289181 (= c!917423 e!3288232)))

(declare-fun res!2243243 () Bool)

(assert (=> b!5289181 (=> (not res!2243243) (not e!3288232))))

(assert (=> b!5289181 (= res!2243243 ((_ is Concat!23766) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun e!3288236 () (InoxSet Context!8610))

(declare-fun e!3288235 () (InoxSet Context!8610))

(assert (=> b!5289181 (= e!3288236 e!3288235)))

(declare-fun c!917421 () Bool)

(declare-fun d!1701530 () Bool)

(assert (=> d!1701530 (= c!917421 (and ((_ is ElementMatch!14921) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (= (c!916969 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))) (h!67386 s!2326))))))

(declare-fun e!3288231 () (InoxSet Context!8610))

(assert (=> d!1701530 (= (derivationStepZipperDown!369 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))) (ite c!917229 lt!2161302 (Context!8611 call!376707)) (h!67386 s!2326)) e!3288231)))

(declare-fun bm!376810 () Bool)

(assert (=> bm!376810 (= call!376811 call!376814)))

(declare-fun b!5289182 () Bool)

(assert (=> b!5289182 (= e!3288236 ((_ map or) call!376810 call!376812))))

(declare-fun b!5289183 () Bool)

(assert (=> b!5289183 (= e!3288231 e!3288236)))

(assert (=> b!5289183 (= c!917424 ((_ is Union!14921) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5289184 () Bool)

(declare-fun c!917425 () Bool)

(assert (=> b!5289184 (= c!917425 ((_ is Star!14921) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(assert (=> b!5289184 (= e!3288234 e!3288233)))

(declare-fun b!5289185 () Bool)

(assert (=> b!5289185 (= e!3288233 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289186 () Bool)

(assert (=> b!5289186 (= e!3288235 ((_ map or) call!376812 call!376815))))

(declare-fun b!5289187 () Bool)

(assert (=> b!5289187 (= e!3288232 (nullable!5090 (regOne!30354 (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun b!5289188 () Bool)

(assert (=> b!5289188 (= e!3288231 (store ((as const (Array Context!8610 Bool)) false) (ite c!917229 lt!2161302 (Context!8611 call!376707)) true))))

(declare-fun b!5289189 () Bool)

(assert (=> b!5289189 (= e!3288235 e!3288234)))

(assert (=> b!5289189 (= c!917422 ((_ is Concat!23766) (ite c!917229 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(assert (= (and d!1701530 c!917421) b!5289188))

(assert (= (and d!1701530 (not c!917421)) b!5289183))

(assert (= (and b!5289183 c!917424) b!5289182))

(assert (= (and b!5289183 (not c!917424)) b!5289181))

(assert (= (and b!5289181 res!2243243) b!5289187))

(assert (= (and b!5289181 c!917423) b!5289186))

(assert (= (and b!5289181 (not c!917423)) b!5289189))

(assert (= (and b!5289189 c!917422) b!5289180))

(assert (= (and b!5289189 (not c!917422)) b!5289184))

(assert (= (and b!5289184 c!917425) b!5289179))

(assert (= (and b!5289184 (not c!917425)) b!5289185))

(assert (= (or b!5289180 b!5289179) bm!376810))

(assert (= (or b!5289180 b!5289179) bm!376808))

(assert (= (or b!5289186 bm!376810) bm!376806))

(assert (= (or b!5289186 bm!376808) bm!376809))

(assert (= (or b!5289182 b!5289186) bm!376805))

(assert (= (or b!5289182 bm!376809) bm!376807))

(declare-fun m!6326676 () Bool)

(assert (=> b!5289188 m!6326676))

(declare-fun m!6326678 () Bool)

(assert (=> bm!376806 m!6326678))

(declare-fun m!6326680 () Bool)

(assert (=> bm!376807 m!6326680))

(declare-fun m!6326682 () Bool)

(assert (=> b!5289187 m!6326682))

(declare-fun m!6326684 () Bool)

(assert (=> bm!376805 m!6326684))

(assert (=> bm!376698 d!1701530))

(declare-fun bs!1225757 () Bool)

(declare-fun d!1701532 () Bool)

(assert (= bs!1225757 (and d!1701532 d!1701348)))

(declare-fun lambda!267712 () Int)

(assert (=> bs!1225757 (= lambda!267712 lambda!267677)))

(declare-fun bs!1225758 () Bool)

(assert (= bs!1225758 (and d!1701532 d!1701482)))

(assert (=> bs!1225758 (= lambda!267712 lambda!267703)))

(declare-fun bs!1225759 () Bool)

(assert (= bs!1225759 (and d!1701532 b!5288015)))

(assert (=> bs!1225759 (not (= lambda!267712 lambda!267598))))

(declare-fun bs!1225761 () Bool)

(assert (= bs!1225761 (and d!1701532 b!5288013)))

(assert (=> bs!1225761 (not (= lambda!267712 lambda!267595))))

(declare-fun bs!1225762 () Bool)

(assert (= bs!1225762 (and d!1701532 b!5289107)))

(assert (=> bs!1225762 (not (= lambda!267712 lambda!267699))))

(declare-fun bs!1225764 () Bool)

(assert (= bs!1225764 (and d!1701532 b!5288022)))

(assert (=> bs!1225764 (not (= lambda!267712 lambda!267600))))

(declare-fun bs!1225766 () Bool)

(assert (= bs!1225766 (and d!1701532 d!1701476)))

(assert (=> bs!1225766 (= lambda!267712 lambda!267702)))

(declare-fun bs!1225767 () Bool)

(assert (= bs!1225767 (and d!1701532 b!5288024)))

(assert (=> bs!1225767 (not (= lambda!267712 lambda!267601))))

(declare-fun bs!1225769 () Bool)

(assert (= bs!1225769 (and d!1701532 b!5289109)))

(assert (=> bs!1225769 (not (= lambda!267712 lambda!267700))))

(declare-fun bs!1225770 () Bool)

(assert (= bs!1225770 (and d!1701532 d!1701422)))

(assert (=> bs!1225770 (not (= lambda!267712 lambda!267688))))

(declare-fun bs!1225772 () Bool)

(assert (= bs!1225772 (and d!1701532 d!1701526)))

(assert (=> bs!1225772 (= lambda!267712 lambda!267708)))

(assert (=> d!1701532 (= (nullableZipper!1308 lt!2161293) (exists!2003 lt!2161293 lambda!267712))))

(declare-fun bs!1225773 () Bool)

(assert (= bs!1225773 d!1701532))

(declare-fun m!6326686 () Bool)

(assert (=> bs!1225773 m!6326686))

(assert (=> b!5288065 d!1701532))

(declare-fun b!5289190 () Bool)

(declare-fun res!2243247 () Bool)

(declare-fun e!3288239 () Bool)

(assert (=> b!5289190 (=> (not res!2243247) (not e!3288239))))

(declare-fun call!376816 () Bool)

(assert (=> b!5289190 (= res!2243247 call!376816)))

(declare-fun e!3288243 () Bool)

(assert (=> b!5289190 (= e!3288243 e!3288239)))

(declare-fun b!5289191 () Bool)

(declare-fun e!3288242 () Bool)

(declare-fun e!3288238 () Bool)

(assert (=> b!5289191 (= e!3288242 e!3288238)))

(declare-fun res!2243244 () Bool)

(assert (=> b!5289191 (= res!2243244 (not (nullable!5090 (reg!15250 lt!2161466))))))

(assert (=> b!5289191 (=> (not res!2243244) (not e!3288238))))

(declare-fun b!5289192 () Bool)

(assert (=> b!5289192 (= e!3288242 e!3288243)))

(declare-fun c!917426 () Bool)

(assert (=> b!5289192 (= c!917426 ((_ is Union!14921) lt!2161466))))

(declare-fun b!5289193 () Bool)

(declare-fun e!3288240 () Bool)

(assert (=> b!5289193 (= e!3288240 e!3288242)))

(declare-fun c!917427 () Bool)

(assert (=> b!5289193 (= c!917427 ((_ is Star!14921) lt!2161466))))

(declare-fun d!1701534 () Bool)

(declare-fun res!2243248 () Bool)

(assert (=> d!1701534 (=> res!2243248 e!3288240)))

(assert (=> d!1701534 (= res!2243248 ((_ is ElementMatch!14921) lt!2161466))))

(assert (=> d!1701534 (= (validRegex!6657 lt!2161466) e!3288240)))

(declare-fun b!5289194 () Bool)

(declare-fun res!2243246 () Bool)

(declare-fun e!3288241 () Bool)

(assert (=> b!5289194 (=> res!2243246 e!3288241)))

(assert (=> b!5289194 (= res!2243246 (not ((_ is Concat!23766) lt!2161466)))))

(assert (=> b!5289194 (= e!3288243 e!3288241)))

(declare-fun b!5289195 () Bool)

(declare-fun call!376818 () Bool)

(assert (=> b!5289195 (= e!3288238 call!376818)))

(declare-fun bm!376811 () Bool)

(assert (=> bm!376811 (= call!376816 (validRegex!6657 (ite c!917426 (regOne!30355 lt!2161466) (regOne!30354 lt!2161466))))))

(declare-fun bm!376812 () Bool)

(assert (=> bm!376812 (= call!376818 (validRegex!6657 (ite c!917427 (reg!15250 lt!2161466) (ite c!917426 (regTwo!30355 lt!2161466) (regTwo!30354 lt!2161466)))))))

(declare-fun b!5289196 () Bool)

(declare-fun call!376817 () Bool)

(assert (=> b!5289196 (= e!3288239 call!376817)))

(declare-fun bm!376813 () Bool)

(assert (=> bm!376813 (= call!376817 call!376818)))

(declare-fun b!5289197 () Bool)

(declare-fun e!3288237 () Bool)

(assert (=> b!5289197 (= e!3288241 e!3288237)))

(declare-fun res!2243245 () Bool)

(assert (=> b!5289197 (=> (not res!2243245) (not e!3288237))))

(assert (=> b!5289197 (= res!2243245 call!376816)))

(declare-fun b!5289198 () Bool)

(assert (=> b!5289198 (= e!3288237 call!376817)))

(assert (= (and d!1701534 (not res!2243248)) b!5289193))

(assert (= (and b!5289193 c!917427) b!5289191))

(assert (= (and b!5289193 (not c!917427)) b!5289192))

(assert (= (and b!5289191 res!2243244) b!5289195))

(assert (= (and b!5289192 c!917426) b!5289190))

(assert (= (and b!5289192 (not c!917426)) b!5289194))

(assert (= (and b!5289190 res!2243247) b!5289196))

(assert (= (and b!5289194 (not res!2243246)) b!5289197))

(assert (= (and b!5289197 res!2243245) b!5289198))

(assert (= (or b!5289196 b!5289198) bm!376813))

(assert (= (or b!5289190 b!5289197) bm!376811))

(assert (= (or b!5289195 bm!376813) bm!376812))

(declare-fun m!6326688 () Bool)

(assert (=> b!5289191 m!6326688))

(declare-fun m!6326690 () Bool)

(assert (=> bm!376811 m!6326690))

(declare-fun m!6326692 () Bool)

(assert (=> bm!376812 m!6326692))

(assert (=> d!1701212 d!1701534))

(declare-fun d!1701536 () Bool)

(declare-fun res!2243249 () Bool)

(declare-fun e!3288244 () Bool)

(assert (=> d!1701536 (=> res!2243249 e!3288244)))

(assert (=> d!1701536 (= res!2243249 ((_ is Nil!60939) lt!2161282))))

(assert (=> d!1701536 (= (forall!14329 lt!2161282 lambda!267647) e!3288244)))

(declare-fun b!5289199 () Bool)

(declare-fun e!3288245 () Bool)

(assert (=> b!5289199 (= e!3288244 e!3288245)))

(declare-fun res!2243250 () Bool)

(assert (=> b!5289199 (=> (not res!2243250) (not e!3288245))))

(assert (=> b!5289199 (= res!2243250 (dynLambda!24093 lambda!267647 (h!67387 lt!2161282)))))

(declare-fun b!5289200 () Bool)

(assert (=> b!5289200 (= e!3288245 (forall!14329 (t!374266 lt!2161282) lambda!267647))))

(assert (= (and d!1701536 (not res!2243249)) b!5289199))

(assert (= (and b!5289199 res!2243250) b!5289200))

(declare-fun b_lambda!203971 () Bool)

(assert (=> (not b_lambda!203971) (not b!5289199)))

(declare-fun m!6326694 () Bool)

(assert (=> b!5289199 m!6326694))

(declare-fun m!6326696 () Bool)

(assert (=> b!5289200 m!6326696))

(assert (=> d!1701212 d!1701536))

(assert (=> bm!376709 d!1701352))

(declare-fun bs!1225776 () Bool)

(declare-fun d!1701538 () Bool)

(assert (= bs!1225776 (and d!1701538 d!1701348)))

(declare-fun lambda!267714 () Int)

(assert (=> bs!1225776 (= lambda!267714 lambda!267677)))

(declare-fun bs!1225777 () Bool)

(assert (= bs!1225777 (and d!1701538 d!1701532)))

(assert (=> bs!1225777 (= lambda!267714 lambda!267712)))

(declare-fun bs!1225778 () Bool)

(assert (= bs!1225778 (and d!1701538 d!1701482)))

(assert (=> bs!1225778 (= lambda!267714 lambda!267703)))

(declare-fun bs!1225779 () Bool)

(assert (= bs!1225779 (and d!1701538 b!5288015)))

(assert (=> bs!1225779 (not (= lambda!267714 lambda!267598))))

(declare-fun bs!1225780 () Bool)

(assert (= bs!1225780 (and d!1701538 b!5288013)))

(assert (=> bs!1225780 (not (= lambda!267714 lambda!267595))))

(declare-fun bs!1225781 () Bool)

(assert (= bs!1225781 (and d!1701538 b!5289107)))

(assert (=> bs!1225781 (not (= lambda!267714 lambda!267699))))

(declare-fun bs!1225782 () Bool)

(assert (= bs!1225782 (and d!1701538 b!5288022)))

(assert (=> bs!1225782 (not (= lambda!267714 lambda!267600))))

(declare-fun bs!1225783 () Bool)

(assert (= bs!1225783 (and d!1701538 d!1701476)))

(assert (=> bs!1225783 (= lambda!267714 lambda!267702)))

(declare-fun bs!1225784 () Bool)

(assert (= bs!1225784 (and d!1701538 b!5288024)))

(assert (=> bs!1225784 (not (= lambda!267714 lambda!267601))))

(declare-fun bs!1225785 () Bool)

(assert (= bs!1225785 (and d!1701538 b!5289109)))

(assert (=> bs!1225785 (not (= lambda!267714 lambda!267700))))

(declare-fun bs!1225786 () Bool)

(assert (= bs!1225786 (and d!1701538 d!1701422)))

(assert (=> bs!1225786 (not (= lambda!267714 lambda!267688))))

(declare-fun bs!1225787 () Bool)

(assert (= bs!1225787 (and d!1701538 d!1701526)))

(assert (=> bs!1225787 (= lambda!267714 lambda!267708)))

(assert (=> d!1701538 (= (nullableZipper!1308 lt!2161292) (exists!2003 lt!2161292 lambda!267714))))

(declare-fun bs!1225788 () Bool)

(assert (= bs!1225788 d!1701538))

(declare-fun m!6326698 () Bool)

(assert (=> bs!1225788 m!6326698))

(assert (=> b!5288214 d!1701538))

(declare-fun bs!1225789 () Bool)

(declare-fun d!1701540 () Bool)

(assert (= bs!1225789 (and d!1701540 d!1701532)))

(declare-fun lambda!267715 () Int)

(assert (=> bs!1225789 (= lambda!267715 lambda!267712)))

(declare-fun bs!1225790 () Bool)

(assert (= bs!1225790 (and d!1701540 d!1701482)))

(assert (=> bs!1225790 (= lambda!267715 lambda!267703)))

(declare-fun bs!1225791 () Bool)

(assert (= bs!1225791 (and d!1701540 b!5288015)))

(assert (=> bs!1225791 (not (= lambda!267715 lambda!267598))))

(declare-fun bs!1225793 () Bool)

(assert (= bs!1225793 (and d!1701540 b!5288013)))

(assert (=> bs!1225793 (not (= lambda!267715 lambda!267595))))

(declare-fun bs!1225794 () Bool)

(assert (= bs!1225794 (and d!1701540 b!5289107)))

(assert (=> bs!1225794 (not (= lambda!267715 lambda!267699))))

(declare-fun bs!1225795 () Bool)

(assert (= bs!1225795 (and d!1701540 b!5288022)))

(assert (=> bs!1225795 (not (= lambda!267715 lambda!267600))))

(declare-fun bs!1225796 () Bool)

(assert (= bs!1225796 (and d!1701540 d!1701476)))

(assert (=> bs!1225796 (= lambda!267715 lambda!267702)))

(declare-fun bs!1225797 () Bool)

(assert (= bs!1225797 (and d!1701540 b!5288024)))

(assert (=> bs!1225797 (not (= lambda!267715 lambda!267601))))

(declare-fun bs!1225798 () Bool)

(assert (= bs!1225798 (and d!1701540 b!5289109)))

(assert (=> bs!1225798 (not (= lambda!267715 lambda!267700))))

(declare-fun bs!1225799 () Bool)

(assert (= bs!1225799 (and d!1701540 d!1701538)))

(assert (=> bs!1225799 (= lambda!267715 lambda!267714)))

(declare-fun bs!1225800 () Bool)

(assert (= bs!1225800 (and d!1701540 d!1701348)))

(assert (=> bs!1225800 (= lambda!267715 lambda!267677)))

(declare-fun bs!1225801 () Bool)

(assert (= bs!1225801 (and d!1701540 d!1701422)))

(assert (=> bs!1225801 (not (= lambda!267715 lambda!267688))))

(declare-fun bs!1225802 () Bool)

(assert (= bs!1225802 (and d!1701540 d!1701526)))

(assert (=> bs!1225802 (= lambda!267715 lambda!267708)))

(assert (=> d!1701540 (= (nullableZipper!1308 lt!2161283) (exists!2003 lt!2161283 lambda!267715))))

(declare-fun bs!1225803 () Bool)

(assert (= bs!1225803 d!1701540))

(declare-fun m!6326700 () Bool)

(assert (=> bs!1225803 m!6326700))

(assert (=> b!5288586 d!1701540))

(declare-fun bm!376821 () Bool)

(declare-fun call!376826 () Bool)

(declare-fun c!917434 () Bool)

(assert (=> bm!376821 (= call!376826 (nullable!5090 (ite c!917434 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5289223 () Bool)

(declare-fun e!3288267 () Bool)

(declare-fun e!3288262 () Bool)

(assert (=> b!5289223 (= e!3288267 e!3288262)))

(declare-fun res!2243261 () Bool)

(declare-fun call!376827 () Bool)

(assert (=> b!5289223 (= res!2243261 call!376827)))

(assert (=> b!5289223 (=> (not res!2243261) (not e!3288262))))

(declare-fun b!5289224 () Bool)

(assert (=> b!5289224 (= e!3288262 call!376826)))

(declare-fun b!5289225 () Bool)

(declare-fun e!3288265 () Bool)

(assert (=> b!5289225 (= e!3288265 call!376826)))

(declare-fun b!5289226 () Bool)

(declare-fun e!3288266 () Bool)

(declare-fun e!3288264 () Bool)

(assert (=> b!5289226 (= e!3288266 e!3288264)))

(declare-fun res!2243265 () Bool)

(assert (=> b!5289226 (=> (not res!2243265) (not e!3288264))))

(assert (=> b!5289226 (= res!2243265 (and (not ((_ is EmptyLang!14921) (h!67387 (exprs!4805 (h!67388 zl!343))))) (not ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun d!1701542 () Bool)

(declare-fun res!2243264 () Bool)

(assert (=> d!1701542 (=> res!2243264 e!3288266)))

(assert (=> d!1701542 (= res!2243264 ((_ is EmptyExpr!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> d!1701542 (= (nullableFct!1460 (h!67387 (exprs!4805 (h!67388 zl!343)))) e!3288266)))

(declare-fun b!5289227 () Bool)

(assert (=> b!5289227 (= e!3288267 e!3288265)))

(declare-fun res!2243263 () Bool)

(assert (=> b!5289227 (= res!2243263 call!376827)))

(assert (=> b!5289227 (=> res!2243263 e!3288265)))

(declare-fun b!5289228 () Bool)

(declare-fun e!3288263 () Bool)

(assert (=> b!5289228 (= e!3288264 e!3288263)))

(declare-fun res!2243262 () Bool)

(assert (=> b!5289228 (=> res!2243262 e!3288263)))

(assert (=> b!5289228 (= res!2243262 ((_ is Star!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5289229 () Bool)

(assert (=> b!5289229 (= e!3288263 e!3288267)))

(assert (=> b!5289229 (= c!917434 ((_ is Union!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun bm!376822 () Bool)

(assert (=> bm!376822 (= call!376827 (nullable!5090 (ite c!917434 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(assert (= (and d!1701542 (not res!2243264)) b!5289226))

(assert (= (and b!5289226 res!2243265) b!5289228))

(assert (= (and b!5289228 (not res!2243262)) b!5289229))

(assert (= (and b!5289229 c!917434) b!5289227))

(assert (= (and b!5289229 (not c!917434)) b!5289223))

(assert (= (and b!5289227 (not res!2243263)) b!5289225))

(assert (= (and b!5289223 res!2243261) b!5289224))

(assert (= (or b!5289225 b!5289224) bm!376821))

(assert (= (or b!5289227 b!5289223) bm!376822))

(declare-fun m!6326712 () Bool)

(assert (=> bm!376821 m!6326712))

(declare-fun m!6326716 () Bool)

(assert (=> bm!376822 m!6326716))

(assert (=> d!1701194 d!1701542))

(declare-fun d!1701552 () Bool)

(assert (=> d!1701552 (= (isEmpty!32892 (t!374266 (unfocusZipperList!363 zl!343))) ((_ is Nil!60939) (t!374266 (unfocusZipperList!363 zl!343))))))

(assert (=> b!5288468 d!1701552))

(assert (=> d!1701254 d!1701416))

(assert (=> d!1701018 d!1701416))

(declare-fun d!1701554 () Bool)

(declare-fun res!2243266 () Bool)

(declare-fun e!3288269 () Bool)

(assert (=> d!1701554 (=> res!2243266 e!3288269)))

(assert (=> d!1701554 (= res!2243266 ((_ is Nil!60940) zl!343))))

(assert (=> d!1701554 (= (forall!14331 zl!343 lambda!267601) e!3288269)))

(declare-fun b!5289232 () Bool)

(declare-fun e!3288270 () Bool)

(assert (=> b!5289232 (= e!3288269 e!3288270)))

(declare-fun res!2243267 () Bool)

(assert (=> b!5289232 (=> (not res!2243267) (not e!3288270))))

(assert (=> b!5289232 (= res!2243267 (dynLambda!24097 lambda!267601 (h!67388 zl!343)))))

(declare-fun b!5289233 () Bool)

(assert (=> b!5289233 (= e!3288270 (forall!14331 (t!374267 zl!343) lambda!267601))))

(assert (= (and d!1701554 (not res!2243266)) b!5289232))

(assert (= (and b!5289232 res!2243267) b!5289233))

(declare-fun b_lambda!203973 () Bool)

(assert (=> (not b_lambda!203973) (not b!5289232)))

(declare-fun m!6326718 () Bool)

(assert (=> b!5289232 m!6326718))

(declare-fun m!6326720 () Bool)

(assert (=> b!5289233 m!6326720))

(assert (=> b!5288024 d!1701554))

(assert (=> d!1701048 d!1701416))

(declare-fun d!1701556 () Bool)

(assert (=> d!1701556 (= (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))) (nullableFct!1460 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun bs!1225814 () Bool)

(assert (= bs!1225814 d!1701556))

(declare-fun m!6326722 () Bool)

(assert (=> bs!1225814 m!6326722))

(assert (=> b!5288503 d!1701556))

(declare-fun b!5289234 () Bool)

(declare-fun e!3288272 () Bool)

(assert (=> b!5289234 (= e!3288272 (not (= (head!11334 s!2326) (c!916969 (regTwo!30354 r!7292)))))))

(declare-fun b!5289235 () Bool)

(declare-fun e!3288271 () Bool)

(assert (=> b!5289235 (= e!3288271 (nullable!5090 (regTwo!30354 r!7292)))))

(declare-fun d!1701558 () Bool)

(declare-fun e!3288276 () Bool)

(assert (=> d!1701558 e!3288276))

(declare-fun c!917437 () Bool)

(assert (=> d!1701558 (= c!917437 ((_ is EmptyExpr!14921) (regTwo!30354 r!7292)))))

(declare-fun lt!2161559 () Bool)

(assert (=> d!1701558 (= lt!2161559 e!3288271)))

(declare-fun c!917436 () Bool)

(assert (=> d!1701558 (= c!917436 (isEmpty!32895 s!2326))))

(assert (=> d!1701558 (validRegex!6657 (regTwo!30354 r!7292))))

(assert (=> d!1701558 (= (matchR!7106 (regTwo!30354 r!7292) s!2326) lt!2161559)))

(declare-fun b!5289236 () Bool)

(declare-fun e!3288277 () Bool)

(assert (=> b!5289236 (= e!3288277 (= (head!11334 s!2326) (c!916969 (regTwo!30354 r!7292))))))

(declare-fun b!5289237 () Bool)

(declare-fun e!3288275 () Bool)

(assert (=> b!5289237 (= e!3288276 e!3288275)))

(declare-fun c!917438 () Bool)

(assert (=> b!5289237 (= c!917438 ((_ is EmptyLang!14921) (regTwo!30354 r!7292)))))

(declare-fun b!5289238 () Bool)

(assert (=> b!5289238 (= e!3288271 (matchR!7106 (derivativeStep!4129 (regTwo!30354 r!7292) (head!11334 s!2326)) (tail!10430 s!2326)))))

(declare-fun b!5289239 () Bool)

(declare-fun res!2243275 () Bool)

(assert (=> b!5289239 (=> (not res!2243275) (not e!3288277))))

(assert (=> b!5289239 (= res!2243275 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5289240 () Bool)

(declare-fun e!3288273 () Bool)

(declare-fun e!3288274 () Bool)

(assert (=> b!5289240 (= e!3288273 e!3288274)))

(declare-fun res!2243274 () Bool)

(assert (=> b!5289240 (=> (not res!2243274) (not e!3288274))))

(assert (=> b!5289240 (= res!2243274 (not lt!2161559))))

(declare-fun b!5289241 () Bool)

(declare-fun res!2243272 () Bool)

(assert (=> b!5289241 (=> res!2243272 e!3288273)))

(assert (=> b!5289241 (= res!2243272 e!3288277)))

(declare-fun res!2243273 () Bool)

(assert (=> b!5289241 (=> (not res!2243273) (not e!3288277))))

(assert (=> b!5289241 (= res!2243273 lt!2161559)))

(declare-fun b!5289242 () Bool)

(declare-fun call!376828 () Bool)

(assert (=> b!5289242 (= e!3288276 (= lt!2161559 call!376828))))

(declare-fun b!5289243 () Bool)

(assert (=> b!5289243 (= e!3288274 e!3288272)))

(declare-fun res!2243268 () Bool)

(assert (=> b!5289243 (=> res!2243268 e!3288272)))

(assert (=> b!5289243 (= res!2243268 call!376828)))

(declare-fun bm!376823 () Bool)

(assert (=> bm!376823 (= call!376828 (isEmpty!32895 s!2326))))

(declare-fun b!5289244 () Bool)

(declare-fun res!2243269 () Bool)

(assert (=> b!5289244 (=> res!2243269 e!3288273)))

(assert (=> b!5289244 (= res!2243269 (not ((_ is ElementMatch!14921) (regTwo!30354 r!7292))))))

(assert (=> b!5289244 (= e!3288275 e!3288273)))

(declare-fun b!5289245 () Bool)

(declare-fun res!2243271 () Bool)

(assert (=> b!5289245 (=> res!2243271 e!3288272)))

(assert (=> b!5289245 (= res!2243271 (not (isEmpty!32895 (tail!10430 s!2326))))))

(declare-fun b!5289246 () Bool)

(declare-fun res!2243270 () Bool)

(assert (=> b!5289246 (=> (not res!2243270) (not e!3288277))))

(assert (=> b!5289246 (= res!2243270 (not call!376828))))

(declare-fun b!5289247 () Bool)

(assert (=> b!5289247 (= e!3288275 (not lt!2161559))))

(assert (= (and d!1701558 c!917436) b!5289235))

(assert (= (and d!1701558 (not c!917436)) b!5289238))

(assert (= (and d!1701558 c!917437) b!5289242))

(assert (= (and d!1701558 (not c!917437)) b!5289237))

(assert (= (and b!5289237 c!917438) b!5289247))

(assert (= (and b!5289237 (not c!917438)) b!5289244))

(assert (= (and b!5289244 (not res!2243269)) b!5289241))

(assert (= (and b!5289241 res!2243273) b!5289246))

(assert (= (and b!5289246 res!2243270) b!5289239))

(assert (= (and b!5289239 res!2243275) b!5289236))

(assert (= (and b!5289241 (not res!2243272)) b!5289240))

(assert (= (and b!5289240 res!2243274) b!5289243))

(assert (= (and b!5289243 (not res!2243268)) b!5289245))

(assert (= (and b!5289245 (not res!2243271)) b!5289234))

(assert (= (or b!5289242 b!5289243 b!5289246) bm!376823))

(assert (=> b!5289236 m!6326076))

(assert (=> b!5289245 m!6326080))

(assert (=> b!5289245 m!6326080))

(assert (=> b!5289245 m!6326100))

(assert (=> b!5289239 m!6326080))

(assert (=> b!5289239 m!6326080))

(assert (=> b!5289239 m!6326100))

(assert (=> b!5289234 m!6326076))

(declare-fun m!6326728 () Bool)

(assert (=> b!5289235 m!6326728))

(assert (=> bm!376823 m!6326026))

(assert (=> b!5289238 m!6326076))

(assert (=> b!5289238 m!6326076))

(declare-fun m!6326730 () Bool)

(assert (=> b!5289238 m!6326730))

(assert (=> b!5289238 m!6326080))

(assert (=> b!5289238 m!6326730))

(assert (=> b!5289238 m!6326080))

(declare-fun m!6326732 () Bool)

(assert (=> b!5289238 m!6326732))

(assert (=> d!1701558 m!6326026))

(declare-fun m!6326734 () Bool)

(assert (=> d!1701558 m!6326734))

(assert (=> b!5288316 d!1701558))

(declare-fun b!5289262 () Bool)

(declare-fun e!3288287 () (InoxSet Context!8610))

(declare-fun call!376833 () (InoxSet Context!8610))

(assert (=> b!5289262 (= e!3288287 call!376833)))

(declare-fun bm!376825 () Bool)

(declare-fun call!376832 () (InoxSet Context!8610))

(declare-fun call!376834 () List!61063)

(declare-fun c!917445 () Bool)

(assert (=> bm!376825 (= call!376832 (derivationStepZipperDown!369 (ite c!917445 (regTwo!30355 (h!67387 (exprs!4805 lt!2161302))) (regOne!30354 (h!67387 (exprs!4805 lt!2161302)))) (ite c!917445 (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (Context!8611 call!376834)) (h!67386 s!2326)))))

(declare-fun b!5289263 () Bool)

(declare-fun e!3288288 () (InoxSet Context!8610))

(assert (=> b!5289263 (= e!3288288 call!376833)))

(declare-fun c!917444 () Bool)

(declare-fun c!917443 () Bool)

(declare-fun bm!376826 () Bool)

(assert (=> bm!376826 (= call!376834 ($colon$colon!1358 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161302)))) (ite (or c!917444 c!917443) (regTwo!30354 (h!67387 (exprs!4805 lt!2161302))) (h!67387 (exprs!4805 lt!2161302)))))))

(declare-fun call!376830 () (InoxSet Context!8610))

(declare-fun call!376831 () List!61063)

(declare-fun bm!376827 () Bool)

(assert (=> bm!376827 (= call!376830 (derivationStepZipperDown!369 (ite c!917445 (regOne!30355 (h!67387 (exprs!4805 lt!2161302))) (ite c!917444 (regTwo!30354 (h!67387 (exprs!4805 lt!2161302))) (ite c!917443 (regOne!30354 (h!67387 (exprs!4805 lt!2161302))) (reg!15250 (h!67387 (exprs!4805 lt!2161302)))))) (ite (or c!917445 c!917444) (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (Context!8611 call!376831)) (h!67386 s!2326)))))

(declare-fun bm!376828 () Bool)

(declare-fun call!376835 () (InoxSet Context!8610))

(assert (=> bm!376828 (= call!376833 call!376835)))

(declare-fun bm!376829 () Bool)

(assert (=> bm!376829 (= call!376835 call!376830)))

(declare-fun b!5289264 () Bool)

(declare-fun e!3288286 () Bool)

(assert (=> b!5289264 (= c!917444 e!3288286)))

(declare-fun res!2243284 () Bool)

(assert (=> b!5289264 (=> (not res!2243284) (not e!3288286))))

(assert (=> b!5289264 (= res!2243284 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161302))))))

(declare-fun e!3288290 () (InoxSet Context!8610))

(declare-fun e!3288289 () (InoxSet Context!8610))

(assert (=> b!5289264 (= e!3288290 e!3288289)))

(declare-fun d!1701566 () Bool)

(declare-fun c!917442 () Bool)

(assert (=> d!1701566 (= c!917442 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 lt!2161302))) (= (c!916969 (h!67387 (exprs!4805 lt!2161302))) (h!67386 s!2326))))))

(declare-fun e!3288285 () (InoxSet Context!8610))

(assert (=> d!1701566 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161302)) (Context!8611 (t!374266 (exprs!4805 lt!2161302))) (h!67386 s!2326)) e!3288285)))

(declare-fun bm!376830 () Bool)

(assert (=> bm!376830 (= call!376831 call!376834)))

(declare-fun b!5289265 () Bool)

(assert (=> b!5289265 (= e!3288290 ((_ map or) call!376830 call!376832))))

(declare-fun b!5289266 () Bool)

(assert (=> b!5289266 (= e!3288285 e!3288290)))

(assert (=> b!5289266 (= c!917445 ((_ is Union!14921) (h!67387 (exprs!4805 lt!2161302))))))

(declare-fun b!5289267 () Bool)

(declare-fun c!917446 () Bool)

(assert (=> b!5289267 (= c!917446 ((_ is Star!14921) (h!67387 (exprs!4805 lt!2161302))))))

(assert (=> b!5289267 (= e!3288288 e!3288287)))

(declare-fun b!5289268 () Bool)

(assert (=> b!5289268 (= e!3288287 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289269 () Bool)

(assert (=> b!5289269 (= e!3288289 ((_ map or) call!376832 call!376835))))

(declare-fun b!5289270 () Bool)

(assert (=> b!5289270 (= e!3288286 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 lt!2161302)))))))

(declare-fun b!5289271 () Bool)

(assert (=> b!5289271 (= e!3288285 (store ((as const (Array Context!8610 Bool)) false) (Context!8611 (t!374266 (exprs!4805 lt!2161302))) true))))

(declare-fun b!5289272 () Bool)

(assert (=> b!5289272 (= e!3288289 e!3288288)))

(assert (=> b!5289272 (= c!917443 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161302))))))

(assert (= (and d!1701566 c!917442) b!5289271))

(assert (= (and d!1701566 (not c!917442)) b!5289266))

(assert (= (and b!5289266 c!917445) b!5289265))

(assert (= (and b!5289266 (not c!917445)) b!5289264))

(assert (= (and b!5289264 res!2243284) b!5289270))

(assert (= (and b!5289264 c!917444) b!5289269))

(assert (= (and b!5289264 (not c!917444)) b!5289272))

(assert (= (and b!5289272 c!917443) b!5289263))

(assert (= (and b!5289272 (not c!917443)) b!5289267))

(assert (= (and b!5289267 c!917446) b!5289262))

(assert (= (and b!5289267 (not c!917446)) b!5289268))

(assert (= (or b!5289263 b!5289262) bm!376830))

(assert (= (or b!5289263 b!5289262) bm!376828))

(assert (= (or b!5289269 bm!376830) bm!376826))

(assert (= (or b!5289269 bm!376828) bm!376829))

(assert (= (or b!5289265 b!5289269) bm!376825))

(assert (= (or b!5289265 bm!376829) bm!376827))

(declare-fun m!6326748 () Bool)

(assert (=> b!5289271 m!6326748))

(declare-fun m!6326750 () Bool)

(assert (=> bm!376826 m!6326750))

(declare-fun m!6326758 () Bool)

(assert (=> bm!376827 m!6326758))

(declare-fun m!6326760 () Bool)

(assert (=> b!5289270 m!6326760))

(declare-fun m!6326762 () Bool)

(assert (=> bm!376825 m!6326762))

(assert (=> bm!376696 d!1701566))

(assert (=> d!1701216 d!1701352))

(declare-fun d!1701572 () Bool)

(assert (=> d!1701572 (= (isEmpty!32895 (tail!10430 s!2326)) ((_ is Nil!60938) (tail!10430 s!2326)))))

(assert (=> b!5288684 d!1701572))

(declare-fun d!1701574 () Bool)

(assert (=> d!1701574 (= (tail!10430 s!2326) (t!374265 s!2326))))

(assert (=> b!5288684 d!1701574))

(declare-fun d!1701576 () Bool)

(assert (=> d!1701576 true))

(assert (=> d!1701576 true))

(declare-fun res!2243290 () Bool)

(assert (=> d!1701576 (= (choose!39491 lambda!267548) res!2243290)))

(assert (=> d!1701218 d!1701576))

(assert (=> d!1701252 d!1701254))

(assert (=> d!1701252 d!1701018))

(declare-fun e!3288307 () Bool)

(declare-fun d!1701578 () Bool)

(assert (=> d!1701578 (= (matchZipper!1165 ((_ map or) lt!2161309 lt!2161307) (t!374265 s!2326)) e!3288307)))

(declare-fun res!2243301 () Bool)

(assert (=> d!1701578 (=> res!2243301 e!3288307)))

(assert (=> d!1701578 (= res!2243301 (matchZipper!1165 lt!2161309 (t!374265 s!2326)))))

(assert (=> d!1701578 true))

(declare-fun _$48!969 () Unit!153202)

(assert (=> d!1701578 (= (choose!39485 lt!2161309 lt!2161307 (t!374265 s!2326)) _$48!969)))

(declare-fun b!5289298 () Bool)

(assert (=> b!5289298 (= e!3288307 (matchZipper!1165 lt!2161307 (t!374265 s!2326)))))

(assert (= (and d!1701578 (not res!2243301)) b!5289298))

(assert (=> d!1701578 m!6325282))

(assert (=> d!1701578 m!6325174))

(assert (=> b!5289298 m!6325170))

(assert (=> d!1701252 d!1701578))

(assert (=> b!5288223 d!1701048))

(declare-fun d!1701584 () Bool)

(assert (=> d!1701584 (= (isDefined!11735 lt!2161468) (not (isEmpty!32896 lt!2161468)))))

(declare-fun bs!1225830 () Bool)

(assert (= bs!1225830 d!1701584))

(declare-fun m!6326778 () Bool)

(assert (=> bs!1225830 m!6326778))

(assert (=> b!5288567 d!1701584))

(declare-fun bs!1225833 () Bool)

(declare-fun b!5289304 () Bool)

(assert (= bs!1225833 (and b!5289304 b!5288579)))

(declare-fun lambda!267718 () Int)

(assert (=> bs!1225833 (not (= lambda!267718 lambda!267649))))

(declare-fun bs!1225834 () Bool)

(assert (= bs!1225834 (and b!5289304 d!1701166)))

(assert (=> bs!1225834 (not (= lambda!267718 lambda!267629))))

(declare-fun bs!1225836 () Bool)

(assert (= bs!1225836 (and b!5289304 d!1701146)))

(assert (=> bs!1225836 (not (= lambda!267718 lambda!267621))))

(declare-fun bs!1225838 () Bool)

(assert (= bs!1225838 (and b!5289304 b!5287706)))

(assert (=> bs!1225838 (not (= lambda!267718 lambda!267545))))

(declare-fun bs!1225840 () Bool)

(assert (= bs!1225840 (and b!5289304 b!5288945)))

(assert (=> bs!1225840 (not (= lambda!267718 lambda!267680))))

(assert (=> bs!1225838 (not (= lambda!267718 lambda!267544))))

(declare-fun bs!1225843 () Bool)

(assert (= bs!1225843 (and b!5289304 b!5288667)))

(assert (=> bs!1225843 (= (and (= (reg!15250 (regTwo!30355 lt!2161300)) (reg!15250 r!7292)) (= (regTwo!30355 lt!2161300) r!7292)) (= lambda!267718 lambda!267654))))

(declare-fun bs!1225845 () Bool)

(assert (= bs!1225845 (and b!5289304 d!1701238)))

(assert (=> bs!1225845 (not (= lambda!267718 lambda!267653))))

(declare-fun bs!1225847 () Bool)

(assert (= bs!1225847 (and b!5289304 b!5287700)))

(assert (=> bs!1225847 (not (= lambda!267718 lambda!267548))))

(declare-fun bs!1225849 () Bool)

(assert (= bs!1225849 (and b!5289304 b!5288580)))

(assert (=> bs!1225849 (= (and (= (reg!15250 (regTwo!30355 lt!2161300)) (reg!15250 lt!2161294)) (= (regTwo!30355 lt!2161300) lt!2161294)) (= lambda!267718 lambda!267648))))

(declare-fun bs!1225850 () Bool)

(assert (= bs!1225850 (and b!5289304 b!5288666)))

(assert (=> bs!1225850 (not (= lambda!267718 lambda!267655))))

(assert (=> bs!1225847 (not (= lambda!267718 lambda!267547))))

(declare-fun bs!1225852 () Bool)

(assert (= bs!1225852 (and b!5289304 b!5288946)))

(assert (=> bs!1225852 (= (and (= (reg!15250 (regTwo!30355 lt!2161300)) (reg!15250 (regTwo!30355 r!7292))) (= (regTwo!30355 lt!2161300) (regTwo!30355 r!7292))) (= lambda!267718 lambda!267679))))

(declare-fun bs!1225855 () Bool)

(assert (= bs!1225855 (and b!5289304 b!5288548)))

(assert (=> bs!1225855 (= (and (= (reg!15250 (regTwo!30355 lt!2161300)) (reg!15250 lt!2161300)) (= (regTwo!30355 lt!2161300) lt!2161300)) (= lambda!267718 lambda!267645))))

(assert (=> bs!1225845 (not (= lambda!267718 lambda!267652))))

(declare-fun bs!1225858 () Bool)

(assert (= bs!1225858 (and b!5289304 d!1701234)))

(assert (=> bs!1225858 (not (= lambda!267718 lambda!267651))))

(declare-fun bs!1225860 () Bool)

(assert (= bs!1225860 (and b!5289304 b!5288547)))

(assert (=> bs!1225860 (not (= lambda!267718 lambda!267646))))

(assert (=> bs!1225834 (not (= lambda!267718 lambda!267633))))

(assert (=> b!5289304 true))

(assert (=> b!5289304 true))

(declare-fun bs!1225865 () Bool)

(declare-fun b!5289303 () Bool)

(assert (= bs!1225865 (and b!5289303 b!5288579)))

(declare-fun lambda!267720 () Int)

(assert (=> bs!1225865 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 lt!2161294))) (= lambda!267720 lambda!267649))))

(declare-fun bs!1225866 () Bool)

(assert (= bs!1225866 (and b!5289303 d!1701166)))

(assert (=> bs!1225866 (not (= lambda!267720 lambda!267629))))

(declare-fun bs!1225868 () Bool)

(assert (= bs!1225868 (and b!5289303 d!1701146)))

(assert (=> bs!1225868 (not (= lambda!267720 lambda!267621))))

(declare-fun bs!1225869 () Bool)

(assert (= bs!1225869 (and b!5289303 b!5287706)))

(assert (=> bs!1225869 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267720 lambda!267545))))

(declare-fun bs!1225871 () Bool)

(assert (= bs!1225871 (and b!5289303 b!5288945)))

(assert (=> bs!1225871 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267720 lambda!267680))))

(assert (=> bs!1225869 (not (= lambda!267720 lambda!267544))))

(declare-fun bs!1225872 () Bool)

(assert (= bs!1225872 (and b!5289303 b!5288667)))

(assert (=> bs!1225872 (not (= lambda!267720 lambda!267654))))

(declare-fun bs!1225873 () Bool)

(assert (= bs!1225873 (and b!5289303 d!1701238)))

(assert (=> bs!1225873 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161300)) lt!2161300)) (= lambda!267720 lambda!267653))))

(declare-fun bs!1225875 () Bool)

(assert (= bs!1225875 (and b!5289303 b!5287700)))

(assert (=> bs!1225875 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161300)) lt!2161300)) (= lambda!267720 lambda!267548))))

(declare-fun bs!1225877 () Bool)

(assert (= bs!1225877 (and b!5289303 b!5288580)))

(assert (=> bs!1225877 (not (= lambda!267720 lambda!267648))))

(declare-fun bs!1225880 () Bool)

(assert (= bs!1225880 (and b!5289303 b!5288666)))

(assert (=> bs!1225880 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267720 lambda!267655))))

(assert (=> bs!1225875 (not (= lambda!267720 lambda!267547))))

(declare-fun bs!1225884 () Bool)

(assert (= bs!1225884 (and b!5289303 b!5288946)))

(assert (=> bs!1225884 (not (= lambda!267720 lambda!267679))))

(declare-fun bs!1225887 () Bool)

(assert (= bs!1225887 (and b!5289303 b!5288548)))

(assert (=> bs!1225887 (not (= lambda!267720 lambda!267645))))

(assert (=> bs!1225873 (not (= lambda!267720 lambda!267652))))

(declare-fun bs!1225890 () Bool)

(assert (= bs!1225890 (and b!5289303 d!1701234)))

(assert (=> bs!1225890 (not (= lambda!267720 lambda!267651))))

(declare-fun bs!1225891 () Bool)

(assert (= bs!1225891 (and b!5289303 b!5289304)))

(assert (=> bs!1225891 (not (= lambda!267720 lambda!267718))))

(declare-fun bs!1225892 () Bool)

(assert (= bs!1225892 (and b!5289303 b!5288547)))

(assert (=> bs!1225892 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 lt!2161300))) (= lambda!267720 lambda!267646))))

(assert (=> bs!1225866 (= (and (= (regOne!30354 (regTwo!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267720 lambda!267633))))

(assert (=> b!5289303 true))

(assert (=> b!5289303 true))

(declare-fun b!5289299 () Bool)

(declare-fun e!3288311 () Bool)

(declare-fun e!3288310 () Bool)

(assert (=> b!5289299 (= e!3288311 e!3288310)))

(declare-fun c!917452 () Bool)

(assert (=> b!5289299 (= c!917452 ((_ is Star!14921) (regTwo!30355 lt!2161300)))))

(declare-fun b!5289300 () Bool)

(declare-fun c!917455 () Bool)

(assert (=> b!5289300 (= c!917455 ((_ is Union!14921) (regTwo!30355 lt!2161300)))))

(declare-fun e!3288308 () Bool)

(assert (=> b!5289300 (= e!3288308 e!3288311)))

(declare-fun b!5289302 () Bool)

(assert (=> b!5289302 (= e!3288308 (= s!2326 (Cons!60938 (c!916969 (regTwo!30355 lt!2161300)) Nil!60938)))))

(declare-fun call!376841 () Bool)

(assert (=> b!5289303 (= e!3288310 call!376841)))

(declare-fun e!3288313 () Bool)

(assert (=> b!5289304 (= e!3288313 call!376841)))

(declare-fun b!5289305 () Bool)

(declare-fun e!3288312 () Bool)

(declare-fun e!3288314 () Bool)

(assert (=> b!5289305 (= e!3288312 e!3288314)))

(declare-fun res!2243304 () Bool)

(assert (=> b!5289305 (= res!2243304 (not ((_ is EmptyLang!14921) (regTwo!30355 lt!2161300))))))

(assert (=> b!5289305 (=> (not res!2243304) (not e!3288314))))

(declare-fun bm!376835 () Bool)

(declare-fun call!376840 () Bool)

(assert (=> bm!376835 (= call!376840 (isEmpty!32895 s!2326))))

(declare-fun d!1701586 () Bool)

(declare-fun c!917454 () Bool)

(assert (=> d!1701586 (= c!917454 ((_ is EmptyExpr!14921) (regTwo!30355 lt!2161300)))))

(assert (=> d!1701586 (= (matchRSpec!2024 (regTwo!30355 lt!2161300) s!2326) e!3288312)))

(declare-fun b!5289301 () Bool)

(declare-fun e!3288309 () Bool)

(assert (=> b!5289301 (= e!3288311 e!3288309)))

(declare-fun res!2243303 () Bool)

(assert (=> b!5289301 (= res!2243303 (matchRSpec!2024 (regOne!30355 (regTwo!30355 lt!2161300)) s!2326))))

(assert (=> b!5289301 (=> res!2243303 e!3288309)))

(declare-fun b!5289306 () Bool)

(declare-fun c!917453 () Bool)

(assert (=> b!5289306 (= c!917453 ((_ is ElementMatch!14921) (regTwo!30355 lt!2161300)))))

(assert (=> b!5289306 (= e!3288314 e!3288308)))

(declare-fun b!5289307 () Bool)

(declare-fun res!2243302 () Bool)

(assert (=> b!5289307 (=> res!2243302 e!3288313)))

(assert (=> b!5289307 (= res!2243302 call!376840)))

(assert (=> b!5289307 (= e!3288310 e!3288313)))

(declare-fun b!5289308 () Bool)

(assert (=> b!5289308 (= e!3288312 call!376840)))

(declare-fun bm!376836 () Bool)

(assert (=> bm!376836 (= call!376841 (Exists!2102 (ite c!917452 lambda!267718 lambda!267720)))))

(declare-fun b!5289309 () Bool)

(assert (=> b!5289309 (= e!3288309 (matchRSpec!2024 (regTwo!30355 (regTwo!30355 lt!2161300)) s!2326))))

(assert (= (and d!1701586 c!917454) b!5289308))

(assert (= (and d!1701586 (not c!917454)) b!5289305))

(assert (= (and b!5289305 res!2243304) b!5289306))

(assert (= (and b!5289306 c!917453) b!5289302))

(assert (= (and b!5289306 (not c!917453)) b!5289300))

(assert (= (and b!5289300 c!917455) b!5289301))

(assert (= (and b!5289300 (not c!917455)) b!5289299))

(assert (= (and b!5289301 (not res!2243303)) b!5289309))

(assert (= (and b!5289299 c!917452) b!5289307))

(assert (= (and b!5289299 (not c!917452)) b!5289303))

(assert (= (and b!5289307 (not res!2243302)) b!5289304))

(assert (= (or b!5289304 b!5289303) bm!376836))

(assert (= (or b!5289308 b!5289307) bm!376835))

(assert (=> bm!376835 m!6326026))

(declare-fun m!6326804 () Bool)

(assert (=> b!5289301 m!6326804))

(declare-fun m!6326806 () Bool)

(assert (=> bm!376836 m!6326806))

(declare-fun m!6326808 () Bool)

(assert (=> b!5289309 m!6326808))

(assert (=> b!5288553 d!1701586))

(assert (=> b!5288646 d!1701396))

(assert (=> d!1701226 d!1701352))

(declare-fun b!5289322 () Bool)

(declare-fun res!2243310 () Bool)

(declare-fun e!3288324 () Bool)

(assert (=> b!5289322 (=> (not res!2243310) (not e!3288324))))

(declare-fun call!376842 () Bool)

(assert (=> b!5289322 (= res!2243310 call!376842)))

(declare-fun e!3288328 () Bool)

(assert (=> b!5289322 (= e!3288328 e!3288324)))

(declare-fun b!5289323 () Bool)

(declare-fun e!3288327 () Bool)

(declare-fun e!3288323 () Bool)

(assert (=> b!5289323 (= e!3288327 e!3288323)))

(declare-fun res!2243307 () Bool)

(assert (=> b!5289323 (= res!2243307 (not (nullable!5090 (reg!15250 lt!2161294))))))

(assert (=> b!5289323 (=> (not res!2243307) (not e!3288323))))

(declare-fun b!5289324 () Bool)

(assert (=> b!5289324 (= e!3288327 e!3288328)))

(declare-fun c!917461 () Bool)

(assert (=> b!5289324 (= c!917461 ((_ is Union!14921) lt!2161294))))

(declare-fun b!5289325 () Bool)

(declare-fun e!3288325 () Bool)

(assert (=> b!5289325 (= e!3288325 e!3288327)))

(declare-fun c!917462 () Bool)

(assert (=> b!5289325 (= c!917462 ((_ is Star!14921) lt!2161294))))

(declare-fun d!1701600 () Bool)

(declare-fun res!2243311 () Bool)

(assert (=> d!1701600 (=> res!2243311 e!3288325)))

(assert (=> d!1701600 (= res!2243311 ((_ is ElementMatch!14921) lt!2161294))))

(assert (=> d!1701600 (= (validRegex!6657 lt!2161294) e!3288325)))

(declare-fun b!5289326 () Bool)

(declare-fun res!2243309 () Bool)

(declare-fun e!3288326 () Bool)

(assert (=> b!5289326 (=> res!2243309 e!3288326)))

(assert (=> b!5289326 (= res!2243309 (not ((_ is Concat!23766) lt!2161294)))))

(assert (=> b!5289326 (= e!3288328 e!3288326)))

(declare-fun b!5289327 () Bool)

(declare-fun call!376844 () Bool)

(assert (=> b!5289327 (= e!3288323 call!376844)))

(declare-fun bm!376837 () Bool)

(assert (=> bm!376837 (= call!376842 (validRegex!6657 (ite c!917461 (regOne!30355 lt!2161294) (regOne!30354 lt!2161294))))))

(declare-fun bm!376838 () Bool)

(assert (=> bm!376838 (= call!376844 (validRegex!6657 (ite c!917462 (reg!15250 lt!2161294) (ite c!917461 (regTwo!30355 lt!2161294) (regTwo!30354 lt!2161294)))))))

(declare-fun b!5289328 () Bool)

(declare-fun call!376843 () Bool)

(assert (=> b!5289328 (= e!3288324 call!376843)))

(declare-fun bm!376839 () Bool)

(assert (=> bm!376839 (= call!376843 call!376844)))

(declare-fun b!5289329 () Bool)

(declare-fun e!3288322 () Bool)

(assert (=> b!5289329 (= e!3288326 e!3288322)))

(declare-fun res!2243308 () Bool)

(assert (=> b!5289329 (=> (not res!2243308) (not e!3288322))))

(assert (=> b!5289329 (= res!2243308 call!376842)))

(declare-fun b!5289330 () Bool)

(assert (=> b!5289330 (= e!3288322 call!376843)))

(assert (= (and d!1701600 (not res!2243311)) b!5289325))

(assert (= (and b!5289325 c!917462) b!5289323))

(assert (= (and b!5289325 (not c!917462)) b!5289324))

(assert (= (and b!5289323 res!2243307) b!5289327))

(assert (= (and b!5289324 c!917461) b!5289322))

(assert (= (and b!5289324 (not c!917461)) b!5289326))

(assert (= (and b!5289322 res!2243310) b!5289328))

(assert (= (and b!5289326 (not res!2243309)) b!5289329))

(assert (= (and b!5289329 res!2243308) b!5289330))

(assert (= (or b!5289328 b!5289330) bm!376839))

(assert (= (or b!5289322 b!5289329) bm!376837))

(assert (= (or b!5289327 bm!376839) bm!376838))

(declare-fun m!6326816 () Bool)

(assert (=> b!5289323 m!6326816))

(declare-fun m!6326818 () Bool)

(assert (=> bm!376837 m!6326818))

(declare-fun m!6326820 () Bool)

(assert (=> bm!376838 m!6326820))

(assert (=> d!1701226 d!1701600))

(declare-fun d!1701604 () Bool)

(assert (=> d!1701604 true))

(assert (=> d!1701604 true))

(declare-fun res!2243312 () Bool)

(assert (=> d!1701604 (= (choose!39491 lambda!267544) res!2243312)))

(assert (=> d!1701144 d!1701604))

(declare-fun b!5289331 () Bool)

(declare-fun res!2243316 () Bool)

(declare-fun e!3288331 () Bool)

(assert (=> b!5289331 (=> (not res!2243316) (not e!3288331))))

(declare-fun call!376845 () Bool)

(assert (=> b!5289331 (= res!2243316 call!376845)))

(declare-fun e!3288335 () Bool)

(assert (=> b!5289331 (= e!3288335 e!3288331)))

(declare-fun b!5289332 () Bool)

(declare-fun e!3288334 () Bool)

(declare-fun e!3288330 () Bool)

(assert (=> b!5289332 (= e!3288334 e!3288330)))

(declare-fun res!2243313 () Bool)

(assert (=> b!5289332 (= res!2243313 (not (nullable!5090 (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))))

(assert (=> b!5289332 (=> (not res!2243313) (not e!3288330))))

(declare-fun b!5289333 () Bool)

(assert (=> b!5289333 (= e!3288334 e!3288335)))

(declare-fun c!917463 () Bool)

(assert (=> b!5289333 (= c!917463 ((_ is Union!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun b!5289334 () Bool)

(declare-fun e!3288332 () Bool)

(assert (=> b!5289334 (= e!3288332 e!3288334)))

(declare-fun c!917464 () Bool)

(assert (=> b!5289334 (= c!917464 ((_ is Star!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun d!1701606 () Bool)

(declare-fun res!2243317 () Bool)

(assert (=> d!1701606 (=> res!2243317 e!3288332)))

(assert (=> d!1701606 (= res!2243317 ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292))))))

(assert (=> d!1701606 (= (validRegex!6657 (regOne!30354 (regOne!30354 r!7292))) e!3288332)))

(declare-fun b!5289335 () Bool)

(declare-fun res!2243315 () Bool)

(declare-fun e!3288333 () Bool)

(assert (=> b!5289335 (=> res!2243315 e!3288333)))

(assert (=> b!5289335 (= res!2243315 (not ((_ is Concat!23766) (regOne!30354 (regOne!30354 r!7292)))))))

(assert (=> b!5289335 (= e!3288335 e!3288333)))

(declare-fun b!5289336 () Bool)

(declare-fun call!376847 () Bool)

(assert (=> b!5289336 (= e!3288330 call!376847)))

(declare-fun bm!376840 () Bool)

(assert (=> bm!376840 (= call!376845 (validRegex!6657 (ite c!917463 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun bm!376841 () Bool)

(assert (=> bm!376841 (= call!376847 (validRegex!6657 (ite c!917464 (reg!15250 (regOne!30354 (regOne!30354 r!7292))) (ite c!917463 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regTwo!30354 (regOne!30354 (regOne!30354 r!7292)))))))))

(declare-fun b!5289337 () Bool)

(declare-fun call!376846 () Bool)

(assert (=> b!5289337 (= e!3288331 call!376846)))

(declare-fun bm!376842 () Bool)

(assert (=> bm!376842 (= call!376846 call!376847)))

(declare-fun b!5289338 () Bool)

(declare-fun e!3288329 () Bool)

(assert (=> b!5289338 (= e!3288333 e!3288329)))

(declare-fun res!2243314 () Bool)

(assert (=> b!5289338 (=> (not res!2243314) (not e!3288329))))

(assert (=> b!5289338 (= res!2243314 call!376845)))

(declare-fun b!5289339 () Bool)

(assert (=> b!5289339 (= e!3288329 call!376846)))

(assert (= (and d!1701606 (not res!2243317)) b!5289334))

(assert (= (and b!5289334 c!917464) b!5289332))

(assert (= (and b!5289334 (not c!917464)) b!5289333))

(assert (= (and b!5289332 res!2243313) b!5289336))

(assert (= (and b!5289333 c!917463) b!5289331))

(assert (= (and b!5289333 (not c!917463)) b!5289335))

(assert (= (and b!5289331 res!2243316) b!5289337))

(assert (= (and b!5289335 (not res!2243315)) b!5289338))

(assert (= (and b!5289338 res!2243314) b!5289339))

(assert (= (or b!5289337 b!5289339) bm!376842))

(assert (= (or b!5289331 b!5289338) bm!376840))

(assert (= (or b!5289336 bm!376842) bm!376841))

(declare-fun m!6326824 () Bool)

(assert (=> b!5289332 m!6326824))

(declare-fun m!6326826 () Bool)

(assert (=> bm!376840 m!6326826))

(declare-fun m!6326828 () Bool)

(assert (=> bm!376841 m!6326828))

(assert (=> d!1701234 d!1701606))

(declare-fun d!1701610 () Bool)

(assert (=> d!1701610 (= (Exists!2102 lambda!267651) (choose!39491 lambda!267651))))

(declare-fun bs!1225903 () Bool)

(assert (= bs!1225903 d!1701610))

(declare-fun m!6326830 () Bool)

(assert (=> bs!1225903 m!6326830))

(assert (=> d!1701234 d!1701610))

(assert (=> d!1701234 d!1701236))

(declare-fun bs!1225939 () Bool)

(declare-fun d!1701612 () Bool)

(assert (= bs!1225939 (and d!1701612 b!5288579)))

(declare-fun lambda!267728 () Int)

(assert (=> bs!1225939 (not (= lambda!267728 lambda!267649))))

(declare-fun bs!1225940 () Bool)

(assert (= bs!1225940 (and d!1701612 d!1701146)))

(assert (=> bs!1225940 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267728 lambda!267621))))

(declare-fun bs!1225941 () Bool)

(assert (= bs!1225941 (and d!1701612 b!5287706)))

(assert (=> bs!1225941 (not (= lambda!267728 lambda!267545))))

(declare-fun bs!1225942 () Bool)

(assert (= bs!1225942 (and d!1701612 b!5288945)))

(assert (=> bs!1225942 (not (= lambda!267728 lambda!267680))))

(assert (=> bs!1225941 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267728 lambda!267544))))

(declare-fun bs!1225943 () Bool)

(assert (= bs!1225943 (and d!1701612 b!5288667)))

(assert (=> bs!1225943 (not (= lambda!267728 lambda!267654))))

(declare-fun bs!1225946 () Bool)

(assert (= bs!1225946 (and d!1701612 d!1701238)))

(assert (=> bs!1225946 (not (= lambda!267728 lambda!267653))))

(declare-fun bs!1225948 () Bool)

(assert (= bs!1225948 (and d!1701612 b!5287700)))

(assert (=> bs!1225948 (not (= lambda!267728 lambda!267548))))

(declare-fun bs!1225951 () Bool)

(assert (= bs!1225951 (and d!1701612 b!5288580)))

(assert (=> bs!1225951 (not (= lambda!267728 lambda!267648))))

(declare-fun bs!1225954 () Bool)

(assert (= bs!1225954 (and d!1701612 b!5288666)))

(assert (=> bs!1225954 (not (= lambda!267728 lambda!267655))))

(assert (=> bs!1225948 (= lambda!267728 lambda!267547)))

(declare-fun bs!1225957 () Bool)

(assert (= bs!1225957 (and d!1701612 b!5288946)))

(assert (=> bs!1225957 (not (= lambda!267728 lambda!267679))))

(declare-fun bs!1225959 () Bool)

(assert (= bs!1225959 (and d!1701612 b!5288548)))

(assert (=> bs!1225959 (not (= lambda!267728 lambda!267645))))

(declare-fun bs!1225960 () Bool)

(assert (= bs!1225960 (and d!1701612 d!1701166)))

(assert (=> bs!1225960 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267728 lambda!267629))))

(declare-fun bs!1225961 () Bool)

(assert (= bs!1225961 (and d!1701612 b!5289303)))

(assert (=> bs!1225961 (not (= lambda!267728 lambda!267720))))

(assert (=> bs!1225946 (= lambda!267728 lambda!267652)))

(declare-fun bs!1225962 () Bool)

(assert (= bs!1225962 (and d!1701612 d!1701234)))

(assert (=> bs!1225962 (= lambda!267728 lambda!267651)))

(declare-fun bs!1225963 () Bool)

(assert (= bs!1225963 (and d!1701612 b!5289304)))

(assert (=> bs!1225963 (not (= lambda!267728 lambda!267718))))

(declare-fun bs!1225964 () Bool)

(assert (= bs!1225964 (and d!1701612 b!5288547)))

(assert (=> bs!1225964 (not (= lambda!267728 lambda!267646))))

(assert (=> bs!1225960 (not (= lambda!267728 lambda!267633))))

(assert (=> d!1701612 true))

(assert (=> d!1701612 true))

(assert (=> d!1701612 true))

(assert (=> d!1701612 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326)) (Exists!2102 lambda!267728))))

(assert (=> d!1701612 true))

(declare-fun _$89!1497 () Unit!153202)

(assert (=> d!1701612 (= (choose!39492 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326) _$89!1497)))

(declare-fun bs!1225968 () Bool)

(assert (= bs!1225968 d!1701612))

(assert (=> bs!1225968 m!6325188))

(assert (=> bs!1225968 m!6325188))

(assert (=> bs!1225968 m!6325190))

(declare-fun m!6326878 () Bool)

(assert (=> bs!1225968 m!6326878))

(assert (=> d!1701234 d!1701612))

(assert (=> d!1701234 d!1701214))

(declare-fun b!5289371 () Bool)

(declare-fun e!3288354 () Bool)

(assert (=> b!5289371 (= e!3288354 (not (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 r!7292 (head!11334 s!2326))))))))

(declare-fun b!5289372 () Bool)

(declare-fun e!3288353 () Bool)

(assert (=> b!5289372 (= e!3288353 (nullable!5090 (derivativeStep!4129 r!7292 (head!11334 s!2326))))))

(declare-fun d!1701638 () Bool)

(declare-fun e!3288358 () Bool)

(assert (=> d!1701638 e!3288358))

(declare-fun c!917478 () Bool)

(assert (=> d!1701638 (= c!917478 ((_ is EmptyExpr!14921) (derivativeStep!4129 r!7292 (head!11334 s!2326))))))

(declare-fun lt!2161563 () Bool)

(assert (=> d!1701638 (= lt!2161563 e!3288353)))

(declare-fun c!917477 () Bool)

(assert (=> d!1701638 (= c!917477 (isEmpty!32895 (tail!10430 s!2326)))))

(assert (=> d!1701638 (validRegex!6657 (derivativeStep!4129 r!7292 (head!11334 s!2326)))))

(assert (=> d!1701638 (= (matchR!7106 (derivativeStep!4129 r!7292 (head!11334 s!2326)) (tail!10430 s!2326)) lt!2161563)))

(declare-fun b!5289373 () Bool)

(declare-fun e!3288359 () Bool)

(assert (=> b!5289373 (= e!3288359 (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 r!7292 (head!11334 s!2326)))))))

(declare-fun b!5289374 () Bool)

(declare-fun e!3288357 () Bool)

(assert (=> b!5289374 (= e!3288358 e!3288357)))

(declare-fun c!917479 () Bool)

(assert (=> b!5289374 (= c!917479 ((_ is EmptyLang!14921) (derivativeStep!4129 r!7292 (head!11334 s!2326))))))

(declare-fun b!5289375 () Bool)

(assert (=> b!5289375 (= e!3288353 (matchR!7106 (derivativeStep!4129 (derivativeStep!4129 r!7292 (head!11334 s!2326)) (head!11334 (tail!10430 s!2326))) (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5289376 () Bool)

(declare-fun res!2243332 () Bool)

(assert (=> b!5289376 (=> (not res!2243332) (not e!3288359))))

(assert (=> b!5289376 (= res!2243332 (isEmpty!32895 (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5289377 () Bool)

(declare-fun e!3288355 () Bool)

(declare-fun e!3288356 () Bool)

(assert (=> b!5289377 (= e!3288355 e!3288356)))

(declare-fun res!2243331 () Bool)

(assert (=> b!5289377 (=> (not res!2243331) (not e!3288356))))

(assert (=> b!5289377 (= res!2243331 (not lt!2161563))))

(declare-fun b!5289378 () Bool)

(declare-fun res!2243329 () Bool)

(assert (=> b!5289378 (=> res!2243329 e!3288355)))

(assert (=> b!5289378 (= res!2243329 e!3288359)))

(declare-fun res!2243330 () Bool)

(assert (=> b!5289378 (=> (not res!2243330) (not e!3288359))))

(assert (=> b!5289378 (= res!2243330 lt!2161563)))

(declare-fun b!5289379 () Bool)

(declare-fun call!376856 () Bool)

(assert (=> b!5289379 (= e!3288358 (= lt!2161563 call!376856))))

(declare-fun b!5289380 () Bool)

(assert (=> b!5289380 (= e!3288356 e!3288354)))

(declare-fun res!2243325 () Bool)

(assert (=> b!5289380 (=> res!2243325 e!3288354)))

(assert (=> b!5289380 (= res!2243325 call!376856)))

(declare-fun bm!376851 () Bool)

(assert (=> bm!376851 (= call!376856 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5289381 () Bool)

(declare-fun res!2243326 () Bool)

(assert (=> b!5289381 (=> res!2243326 e!3288355)))

(assert (=> b!5289381 (= res!2243326 (not ((_ is ElementMatch!14921) (derivativeStep!4129 r!7292 (head!11334 s!2326)))))))

(assert (=> b!5289381 (= e!3288357 e!3288355)))

(declare-fun b!5289382 () Bool)

(declare-fun res!2243328 () Bool)

(assert (=> b!5289382 (=> res!2243328 e!3288354)))

(assert (=> b!5289382 (= res!2243328 (not (isEmpty!32895 (tail!10430 (tail!10430 s!2326)))))))

(declare-fun b!5289383 () Bool)

(declare-fun res!2243327 () Bool)

(assert (=> b!5289383 (=> (not res!2243327) (not e!3288359))))

(assert (=> b!5289383 (= res!2243327 (not call!376856))))

(declare-fun b!5289384 () Bool)

(assert (=> b!5289384 (= e!3288357 (not lt!2161563))))

(assert (= (and d!1701638 c!917477) b!5289372))

(assert (= (and d!1701638 (not c!917477)) b!5289375))

(assert (= (and d!1701638 c!917478) b!5289379))

(assert (= (and d!1701638 (not c!917478)) b!5289374))

(assert (= (and b!5289374 c!917479) b!5289384))

(assert (= (and b!5289374 (not c!917479)) b!5289381))

(assert (= (and b!5289381 (not res!2243326)) b!5289378))

(assert (= (and b!5289378 res!2243330) b!5289383))

(assert (= (and b!5289383 res!2243327) b!5289376))

(assert (= (and b!5289376 res!2243332) b!5289373))

(assert (= (and b!5289378 (not res!2243329)) b!5289377))

(assert (= (and b!5289377 res!2243331) b!5289380))

(assert (= (and b!5289380 (not res!2243325)) b!5289382))

(assert (= (and b!5289382 (not res!2243328)) b!5289371))

(assert (= (or b!5289379 b!5289380 b!5289383) bm!376851))

(assert (=> b!5289373 m!6326080))

(declare-fun m!6326884 () Bool)

(assert (=> b!5289373 m!6326884))

(assert (=> b!5289382 m!6326080))

(declare-fun m!6326886 () Bool)

(assert (=> b!5289382 m!6326886))

(assert (=> b!5289382 m!6326886))

(declare-fun m!6326888 () Bool)

(assert (=> b!5289382 m!6326888))

(assert (=> b!5289376 m!6326080))

(assert (=> b!5289376 m!6326886))

(assert (=> b!5289376 m!6326886))

(assert (=> b!5289376 m!6326888))

(assert (=> b!5289371 m!6326080))

(assert (=> b!5289371 m!6326884))

(assert (=> b!5289372 m!6326170))

(declare-fun m!6326890 () Bool)

(assert (=> b!5289372 m!6326890))

(assert (=> bm!376851 m!6326080))

(assert (=> bm!376851 m!6326100))

(assert (=> b!5289375 m!6326080))

(assert (=> b!5289375 m!6326884))

(assert (=> b!5289375 m!6326170))

(assert (=> b!5289375 m!6326884))

(declare-fun m!6326892 () Bool)

(assert (=> b!5289375 m!6326892))

(assert (=> b!5289375 m!6326080))

(assert (=> b!5289375 m!6326886))

(assert (=> b!5289375 m!6326892))

(assert (=> b!5289375 m!6326886))

(declare-fun m!6326896 () Bool)

(assert (=> b!5289375 m!6326896))

(assert (=> d!1701638 m!6326080))

(assert (=> d!1701638 m!6326100))

(assert (=> d!1701638 m!6326170))

(declare-fun m!6326898 () Bool)

(assert (=> d!1701638 m!6326898))

(assert (=> b!5288677 d!1701638))

(declare-fun b!5289444 () Bool)

(declare-fun e!3288397 () Regex!14921)

(declare-fun e!3288400 () Regex!14921)

(assert (=> b!5289444 (= e!3288397 e!3288400)))

(declare-fun c!917506 () Bool)

(assert (=> b!5289444 (= c!917506 ((_ is ElementMatch!14921) r!7292))))

(declare-fun call!376874 () Regex!14921)

(declare-fun bm!376866 () Bool)

(declare-fun c!917503 () Bool)

(declare-fun c!917502 () Bool)

(assert (=> bm!376866 (= call!376874 (derivativeStep!4129 (ite c!917503 (regTwo!30355 r!7292) (ite c!917502 (reg!15250 r!7292) (regOne!30354 r!7292))) (head!11334 s!2326)))))

(declare-fun d!1701646 () Bool)

(declare-fun lt!2161567 () Regex!14921)

(assert (=> d!1701646 (validRegex!6657 lt!2161567)))

(assert (=> d!1701646 (= lt!2161567 e!3288397)))

(declare-fun c!917504 () Bool)

(assert (=> d!1701646 (= c!917504 (or ((_ is EmptyExpr!14921) r!7292) ((_ is EmptyLang!14921) r!7292)))))

(assert (=> d!1701646 (validRegex!6657 r!7292)))

(assert (=> d!1701646 (= (derivativeStep!4129 r!7292 (head!11334 s!2326)) lt!2161567)))

(declare-fun bm!376867 () Bool)

(declare-fun call!376873 () Regex!14921)

(declare-fun call!376871 () Regex!14921)

(assert (=> bm!376867 (= call!376873 call!376871)))

(declare-fun b!5289445 () Bool)

(declare-fun e!3288401 () Regex!14921)

(declare-fun call!376872 () Regex!14921)

(assert (=> b!5289445 (= e!3288401 (Concat!23766 call!376872 r!7292))))

(declare-fun bm!376868 () Bool)

(declare-fun c!917505 () Bool)

(assert (=> bm!376868 (= call!376871 (derivativeStep!4129 (ite c!917503 (regOne!30355 r!7292) (ite c!917505 (regTwo!30354 r!7292) (regOne!30354 r!7292))) (head!11334 s!2326)))))

(declare-fun b!5289446 () Bool)

(assert (=> b!5289446 (= e!3288400 (ite (= (head!11334 s!2326) (c!916969 r!7292)) EmptyExpr!14921 EmptyLang!14921))))

(declare-fun bm!376869 () Bool)

(assert (=> bm!376869 (= call!376872 call!376874)))

(declare-fun b!5289447 () Bool)

(declare-fun e!3288398 () Regex!14921)

(assert (=> b!5289447 (= e!3288398 (Union!14921 call!376871 call!376874))))

(declare-fun b!5289448 () Bool)

(assert (=> b!5289448 (= c!917503 ((_ is Union!14921) r!7292))))

(assert (=> b!5289448 (= e!3288400 e!3288398)))

(declare-fun e!3288399 () Regex!14921)

(declare-fun b!5289449 () Bool)

(assert (=> b!5289449 (= e!3288399 (Union!14921 (Concat!23766 call!376872 (regTwo!30354 r!7292)) call!376873))))

(declare-fun b!5289450 () Bool)

(assert (=> b!5289450 (= e!3288397 EmptyLang!14921)))

(declare-fun b!5289451 () Bool)

(assert (=> b!5289451 (= e!3288399 (Union!14921 (Concat!23766 call!376873 (regTwo!30354 r!7292)) EmptyLang!14921))))

(declare-fun b!5289452 () Bool)

(assert (=> b!5289452 (= e!3288398 e!3288401)))

(assert (=> b!5289452 (= c!917502 ((_ is Star!14921) r!7292))))

(declare-fun b!5289453 () Bool)

(assert (=> b!5289453 (= c!917505 (nullable!5090 (regOne!30354 r!7292)))))

(assert (=> b!5289453 (= e!3288401 e!3288399)))

(assert (= (and d!1701646 c!917504) b!5289450))

(assert (= (and d!1701646 (not c!917504)) b!5289444))

(assert (= (and b!5289444 c!917506) b!5289446))

(assert (= (and b!5289444 (not c!917506)) b!5289448))

(assert (= (and b!5289448 c!917503) b!5289447))

(assert (= (and b!5289448 (not c!917503)) b!5289452))

(assert (= (and b!5289452 c!917502) b!5289445))

(assert (= (and b!5289452 (not c!917502)) b!5289453))

(assert (= (and b!5289453 c!917505) b!5289449))

(assert (= (and b!5289453 (not c!917505)) b!5289451))

(assert (= (or b!5289449 b!5289451) bm!376867))

(assert (= (or b!5289445 b!5289449) bm!376869))

(assert (= (or b!5289447 bm!376869) bm!376866))

(assert (= (or b!5289447 bm!376867) bm!376868))

(assert (=> bm!376866 m!6326076))

(declare-fun m!6326958 () Bool)

(assert (=> bm!376866 m!6326958))

(declare-fun m!6326960 () Bool)

(assert (=> d!1701646 m!6326960))

(assert (=> d!1701646 m!6325254))

(assert (=> bm!376868 m!6326076))

(declare-fun m!6326962 () Bool)

(assert (=> bm!376868 m!6326962))

(declare-fun m!6326964 () Bool)

(assert (=> b!5289453 m!6326964))

(assert (=> b!5288677 d!1701646))

(assert (=> b!5288677 d!1701396))

(assert (=> b!5288677 d!1701574))

(declare-fun d!1701676 () Bool)

(assert (=> d!1701676 (= (isConcat!366 lt!2161476) ((_ is Concat!23766) lt!2161476))))

(assert (=> b!5288641 d!1701676))

(assert (=> bs!1225464 d!1701082))

(declare-fun d!1701678 () Bool)

(assert (=> d!1701678 (= (isEmptyLang!850 lt!2161455) ((_ is EmptyLang!14921) lt!2161455))))

(assert (=> b!5288469 d!1701678))

(declare-fun b!5289467 () Bool)

(declare-fun e!3288413 () (InoxSet Context!8610))

(declare-fun call!376880 () (InoxSet Context!8610))

(assert (=> b!5289467 (= e!3288413 call!376880)))

(declare-fun c!917514 () Bool)

(declare-fun call!376881 () List!61063)

(declare-fun bm!376872 () Bool)

(declare-fun call!376879 () (InoxSet Context!8610))

(assert (=> bm!376872 (= call!376879 (derivationStepZipperDown!369 (ite c!917514 (regTwo!30355 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (regOne!30354 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))) (ite c!917514 (ite c!917041 lt!2161302 (Context!8611 call!376644)) (Context!8611 call!376881)) (h!67386 s!2326)))))

(declare-fun b!5289468 () Bool)

(declare-fun e!3288414 () (InoxSet Context!8610))

(assert (=> b!5289468 (= e!3288414 call!376880)))

(declare-fun c!917512 () Bool)

(declare-fun c!917513 () Bool)

(declare-fun bm!376873 () Bool)

(assert (=> bm!376873 (= call!376881 ($colon$colon!1358 (exprs!4805 (ite c!917041 lt!2161302 (Context!8611 call!376644))) (ite (or c!917513 c!917512) (regTwo!30354 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))))))

(declare-fun call!376878 () List!61063)

(declare-fun call!376877 () (InoxSet Context!8610))

(declare-fun bm!376874 () Bool)

(assert (=> bm!376874 (= call!376877 (derivationStepZipperDown!369 (ite c!917514 (regOne!30355 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (ite c!917513 (regTwo!30354 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (ite c!917512 (regOne!30354 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (reg!15250 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))))) (ite (or c!917514 c!917513) (ite c!917041 lt!2161302 (Context!8611 call!376644)) (Context!8611 call!376878)) (h!67386 s!2326)))))

(declare-fun bm!376875 () Bool)

(declare-fun call!376882 () (InoxSet Context!8610))

(assert (=> bm!376875 (= call!376880 call!376882)))

(declare-fun bm!376876 () Bool)

(assert (=> bm!376876 (= call!376882 call!376877)))

(declare-fun b!5289469 () Bool)

(declare-fun e!3288412 () Bool)

(assert (=> b!5289469 (= c!917513 e!3288412)))

(declare-fun res!2243356 () Bool)

(assert (=> b!5289469 (=> (not res!2243356) (not e!3288412))))

(assert (=> b!5289469 (= res!2243356 ((_ is Concat!23766) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))))))

(declare-fun e!3288416 () (InoxSet Context!8610))

(declare-fun e!3288415 () (InoxSet Context!8610))

(assert (=> b!5289469 (= e!3288416 e!3288415)))

(declare-fun d!1701680 () Bool)

(declare-fun c!917511 () Bool)

(assert (=> d!1701680 (= c!917511 (and ((_ is ElementMatch!14921) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (= (c!916969 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))) (h!67386 s!2326))))))

(declare-fun e!3288411 () (InoxSet Context!8610))

(assert (=> d!1701680 (= (derivationStepZipperDown!369 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))) (ite c!917041 lt!2161302 (Context!8611 call!376644)) (h!67386 s!2326)) e!3288411)))

(declare-fun bm!376877 () Bool)

(assert (=> bm!376877 (= call!376878 call!376881)))

(declare-fun b!5289470 () Bool)

(assert (=> b!5289470 (= e!3288416 ((_ map or) call!376877 call!376879))))

(declare-fun b!5289471 () Bool)

(assert (=> b!5289471 (= e!3288411 e!3288416)))

(assert (=> b!5289471 (= c!917514 ((_ is Union!14921) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5289472 () Bool)

(declare-fun c!917515 () Bool)

(assert (=> b!5289472 (= c!917515 ((_ is Star!14921) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))))))

(assert (=> b!5289472 (= e!3288414 e!3288413)))

(declare-fun b!5289473 () Bool)

(assert (=> b!5289473 (= e!3288413 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289474 () Bool)

(assert (=> b!5289474 (= e!3288415 ((_ map or) call!376879 call!376882))))

(declare-fun b!5289475 () Bool)

(assert (=> b!5289475 (= e!3288412 (nullable!5090 (regOne!30354 (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))))))

(declare-fun b!5289476 () Bool)

(assert (=> b!5289476 (= e!3288411 (store ((as const (Array Context!8610 Bool)) false) (ite c!917041 lt!2161302 (Context!8611 call!376644)) true))))

(declare-fun b!5289477 () Bool)

(assert (=> b!5289477 (= e!3288415 e!3288414)))

(assert (=> b!5289477 (= c!917512 ((_ is Concat!23766) (ite c!917041 (regTwo!30355 (regTwo!30354 (regOne!30354 r!7292))) (regOne!30354 (regTwo!30354 (regOne!30354 r!7292))))))))

(assert (= (and d!1701680 c!917511) b!5289476))

(assert (= (and d!1701680 (not c!917511)) b!5289471))

(assert (= (and b!5289471 c!917514) b!5289470))

(assert (= (and b!5289471 (not c!917514)) b!5289469))

(assert (= (and b!5289469 res!2243356) b!5289475))

(assert (= (and b!5289469 c!917513) b!5289474))

(assert (= (and b!5289469 (not c!917513)) b!5289477))

(assert (= (and b!5289477 c!917512) b!5289468))

(assert (= (and b!5289477 (not c!917512)) b!5289472))

(assert (= (and b!5289472 c!917515) b!5289467))

(assert (= (and b!5289472 (not c!917515)) b!5289473))

(assert (= (or b!5289468 b!5289467) bm!376877))

(assert (= (or b!5289468 b!5289467) bm!376875))

(assert (= (or b!5289474 bm!376877) bm!376873))

(assert (= (or b!5289474 bm!376875) bm!376876))

(assert (= (or b!5289470 b!5289474) bm!376872))

(assert (= (or b!5289470 bm!376876) bm!376874))

(declare-fun m!6326966 () Bool)

(assert (=> b!5289476 m!6326966))

(declare-fun m!6326968 () Bool)

(assert (=> bm!376873 m!6326968))

(declare-fun m!6326970 () Bool)

(assert (=> bm!376874 m!6326970))

(declare-fun m!6326972 () Bool)

(assert (=> b!5289475 m!6326972))

(declare-fun m!6326974 () Bool)

(assert (=> bm!376872 m!6326974))

(assert (=> bm!376635 d!1701680))

(assert (=> d!1701042 d!1701416))

(assert (=> d!1701248 d!1701352))

(assert (=> d!1701248 d!1701044))

(assert (=> b!5287966 d!1701042))

(declare-fun bs!1226052 () Bool)

(declare-fun b!5289483 () Bool)

(assert (= bs!1226052 (and b!5289483 b!5288579)))

(declare-fun lambda!267736 () Int)

(assert (=> bs!1226052 (not (= lambda!267736 lambda!267649))))

(declare-fun bs!1226053 () Bool)

(assert (= bs!1226053 (and b!5289483 d!1701146)))

(assert (=> bs!1226053 (not (= lambda!267736 lambda!267621))))

(declare-fun bs!1226054 () Bool)

(assert (= bs!1226054 (and b!5289483 b!5287706)))

(assert (=> bs!1226054 (not (= lambda!267736 lambda!267545))))

(declare-fun bs!1226056 () Bool)

(assert (= bs!1226056 (and b!5289483 b!5288945)))

(assert (=> bs!1226056 (not (= lambda!267736 lambda!267680))))

(assert (=> bs!1226054 (not (= lambda!267736 lambda!267544))))

(declare-fun bs!1226058 () Bool)

(assert (= bs!1226058 (and b!5289483 b!5288667)))

(assert (=> bs!1226058 (= (and (= (reg!15250 (regOne!30355 r!7292)) (reg!15250 r!7292)) (= (regOne!30355 r!7292) r!7292)) (= lambda!267736 lambda!267654))))

(declare-fun bs!1226059 () Bool)

(assert (= bs!1226059 (and b!5289483 d!1701238)))

(assert (=> bs!1226059 (not (= lambda!267736 lambda!267653))))

(declare-fun bs!1226060 () Bool)

(assert (= bs!1226060 (and b!5289483 b!5287700)))

(assert (=> bs!1226060 (not (= lambda!267736 lambda!267548))))

(declare-fun bs!1226061 () Bool)

(assert (= bs!1226061 (and b!5289483 b!5288580)))

(assert (=> bs!1226061 (= (and (= (reg!15250 (regOne!30355 r!7292)) (reg!15250 lt!2161294)) (= (regOne!30355 r!7292) lt!2161294)) (= lambda!267736 lambda!267648))))

(declare-fun bs!1226062 () Bool)

(assert (= bs!1226062 (and b!5289483 d!1701612)))

(assert (=> bs!1226062 (not (= lambda!267736 lambda!267728))))

(declare-fun bs!1226063 () Bool)

(assert (= bs!1226063 (and b!5289483 b!5288666)))

(assert (=> bs!1226063 (not (= lambda!267736 lambda!267655))))

(assert (=> bs!1226060 (not (= lambda!267736 lambda!267547))))

(declare-fun bs!1226066 () Bool)

(assert (= bs!1226066 (and b!5289483 b!5288946)))

(assert (=> bs!1226066 (= (and (= (reg!15250 (regOne!30355 r!7292)) (reg!15250 (regTwo!30355 r!7292))) (= (regOne!30355 r!7292) (regTwo!30355 r!7292))) (= lambda!267736 lambda!267679))))

(declare-fun bs!1226068 () Bool)

(assert (= bs!1226068 (and b!5289483 b!5288548)))

(assert (=> bs!1226068 (= (and (= (reg!15250 (regOne!30355 r!7292)) (reg!15250 lt!2161300)) (= (regOne!30355 r!7292) lt!2161300)) (= lambda!267736 lambda!267645))))

(declare-fun bs!1226070 () Bool)

(assert (= bs!1226070 (and b!5289483 d!1701166)))

(assert (=> bs!1226070 (not (= lambda!267736 lambda!267629))))

(declare-fun bs!1226072 () Bool)

(assert (= bs!1226072 (and b!5289483 b!5289303)))

(assert (=> bs!1226072 (not (= lambda!267736 lambda!267720))))

(assert (=> bs!1226059 (not (= lambda!267736 lambda!267652))))

(declare-fun bs!1226075 () Bool)

(assert (= bs!1226075 (and b!5289483 d!1701234)))

(assert (=> bs!1226075 (not (= lambda!267736 lambda!267651))))

(declare-fun bs!1226077 () Bool)

(assert (= bs!1226077 (and b!5289483 b!5289304)))

(assert (=> bs!1226077 (= (and (= (reg!15250 (regOne!30355 r!7292)) (reg!15250 (regTwo!30355 lt!2161300))) (= (regOne!30355 r!7292) (regTwo!30355 lt!2161300))) (= lambda!267736 lambda!267718))))

(declare-fun bs!1226079 () Bool)

(assert (= bs!1226079 (and b!5289483 b!5288547)))

(assert (=> bs!1226079 (not (= lambda!267736 lambda!267646))))

(assert (=> bs!1226070 (not (= lambda!267736 lambda!267633))))

(assert (=> b!5289483 true))

(assert (=> b!5289483 true))

(declare-fun bs!1226086 () Bool)

(declare-fun b!5289482 () Bool)

(assert (= bs!1226086 (and b!5289482 b!5288579)))

(declare-fun lambda!267738 () Int)

(assert (=> bs!1226086 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 lt!2161294))) (= lambda!267738 lambda!267649))))

(declare-fun bs!1226088 () Bool)

(assert (= bs!1226088 (and b!5289482 d!1701146)))

(assert (=> bs!1226088 (not (= lambda!267738 lambda!267621))))

(declare-fun bs!1226090 () Bool)

(assert (= bs!1226090 (and b!5289482 b!5287706)))

(assert (=> bs!1226090 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267738 lambda!267545))))

(declare-fun bs!1226092 () Bool)

(assert (= bs!1226092 (and b!5289482 b!5288945)))

(assert (=> bs!1226092 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267738 lambda!267680))))

(assert (=> bs!1226090 (not (= lambda!267738 lambda!267544))))

(declare-fun bs!1226093 () Bool)

(assert (= bs!1226093 (and b!5289482 b!5288667)))

(assert (=> bs!1226093 (not (= lambda!267738 lambda!267654))))

(declare-fun bs!1226095 () Bool)

(assert (= bs!1226095 (and b!5289482 d!1701238)))

(assert (=> bs!1226095 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 r!7292)) lt!2161300)) (= lambda!267738 lambda!267653))))

(declare-fun bs!1226097 () Bool)

(assert (= bs!1226097 (and b!5289482 b!5287700)))

(assert (=> bs!1226097 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 r!7292)) lt!2161300)) (= lambda!267738 lambda!267548))))

(declare-fun bs!1226098 () Bool)

(assert (= bs!1226098 (and b!5289482 b!5288580)))

(assert (=> bs!1226098 (not (= lambda!267738 lambda!267648))))

(declare-fun bs!1226099 () Bool)

(assert (= bs!1226099 (and b!5289482 b!5289483)))

(assert (=> bs!1226099 (not (= lambda!267738 lambda!267736))))

(declare-fun bs!1226100 () Bool)

(assert (= bs!1226100 (and b!5289482 d!1701612)))

(assert (=> bs!1226100 (not (= lambda!267738 lambda!267728))))

(declare-fun bs!1226101 () Bool)

(assert (= bs!1226101 (and b!5289482 b!5288666)))

(assert (=> bs!1226101 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267738 lambda!267655))))

(assert (=> bs!1226097 (not (= lambda!267738 lambda!267547))))

(declare-fun bs!1226102 () Bool)

(assert (= bs!1226102 (and b!5289482 b!5288946)))

(assert (=> bs!1226102 (not (= lambda!267738 lambda!267679))))

(declare-fun bs!1226103 () Bool)

(assert (= bs!1226103 (and b!5289482 b!5288548)))

(assert (=> bs!1226103 (not (= lambda!267738 lambda!267645))))

(declare-fun bs!1226104 () Bool)

(assert (= bs!1226104 (and b!5289482 d!1701166)))

(assert (=> bs!1226104 (not (= lambda!267738 lambda!267629))))

(declare-fun bs!1226105 () Bool)

(assert (= bs!1226105 (and b!5289482 b!5289303)))

(assert (=> bs!1226105 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 (regTwo!30355 lt!2161300))) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267738 lambda!267720))))

(assert (=> bs!1226095 (not (= lambda!267738 lambda!267652))))

(declare-fun bs!1226106 () Bool)

(assert (= bs!1226106 (and b!5289482 d!1701234)))

(assert (=> bs!1226106 (not (= lambda!267738 lambda!267651))))

(declare-fun bs!1226107 () Bool)

(assert (= bs!1226107 (and b!5289482 b!5289304)))

(assert (=> bs!1226107 (not (= lambda!267738 lambda!267718))))

(declare-fun bs!1226108 () Bool)

(assert (= bs!1226108 (and b!5289482 b!5288547)))

(assert (=> bs!1226108 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 lt!2161300))) (= lambda!267738 lambda!267646))))

(assert (=> bs!1226104 (= (and (= (regOne!30354 (regOne!30355 r!7292)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 r!7292)) (regTwo!30354 r!7292))) (= lambda!267738 lambda!267633))))

(assert (=> b!5289482 true))

(assert (=> b!5289482 true))

(declare-fun b!5289478 () Bool)

(declare-fun e!3288420 () Bool)

(declare-fun e!3288419 () Bool)

(assert (=> b!5289478 (= e!3288420 e!3288419)))

(declare-fun c!917516 () Bool)

(assert (=> b!5289478 (= c!917516 ((_ is Star!14921) (regOne!30355 r!7292)))))

(declare-fun b!5289479 () Bool)

(declare-fun c!917519 () Bool)

(assert (=> b!5289479 (= c!917519 ((_ is Union!14921) (regOne!30355 r!7292)))))

(declare-fun e!3288417 () Bool)

(assert (=> b!5289479 (= e!3288417 e!3288420)))

(declare-fun b!5289481 () Bool)

(assert (=> b!5289481 (= e!3288417 (= s!2326 (Cons!60938 (c!916969 (regOne!30355 r!7292)) Nil!60938)))))

(declare-fun call!376884 () Bool)

(assert (=> b!5289482 (= e!3288419 call!376884)))

(declare-fun e!3288422 () Bool)

(assert (=> b!5289483 (= e!3288422 call!376884)))

(declare-fun b!5289484 () Bool)

(declare-fun e!3288421 () Bool)

(declare-fun e!3288423 () Bool)

(assert (=> b!5289484 (= e!3288421 e!3288423)))

(declare-fun res!2243359 () Bool)

(assert (=> b!5289484 (= res!2243359 (not ((_ is EmptyLang!14921) (regOne!30355 r!7292))))))

(assert (=> b!5289484 (=> (not res!2243359) (not e!3288423))))

(declare-fun bm!376878 () Bool)

(declare-fun call!376883 () Bool)

(assert (=> bm!376878 (= call!376883 (isEmpty!32895 s!2326))))

(declare-fun d!1701682 () Bool)

(declare-fun c!917518 () Bool)

(assert (=> d!1701682 (= c!917518 ((_ is EmptyExpr!14921) (regOne!30355 r!7292)))))

(assert (=> d!1701682 (= (matchRSpec!2024 (regOne!30355 r!7292) s!2326) e!3288421)))

(declare-fun b!5289480 () Bool)

(declare-fun e!3288418 () Bool)

(assert (=> b!5289480 (= e!3288420 e!3288418)))

(declare-fun res!2243358 () Bool)

(assert (=> b!5289480 (= res!2243358 (matchRSpec!2024 (regOne!30355 (regOne!30355 r!7292)) s!2326))))

(assert (=> b!5289480 (=> res!2243358 e!3288418)))

(declare-fun b!5289485 () Bool)

(declare-fun c!917517 () Bool)

(assert (=> b!5289485 (= c!917517 ((_ is ElementMatch!14921) (regOne!30355 r!7292)))))

(assert (=> b!5289485 (= e!3288423 e!3288417)))

(declare-fun b!5289486 () Bool)

(declare-fun res!2243357 () Bool)

(assert (=> b!5289486 (=> res!2243357 e!3288422)))

(assert (=> b!5289486 (= res!2243357 call!376883)))

(assert (=> b!5289486 (= e!3288419 e!3288422)))

(declare-fun b!5289487 () Bool)

(assert (=> b!5289487 (= e!3288421 call!376883)))

(declare-fun bm!376879 () Bool)

(assert (=> bm!376879 (= call!376884 (Exists!2102 (ite c!917516 lambda!267736 lambda!267738)))))

(declare-fun b!5289488 () Bool)

(assert (=> b!5289488 (= e!3288418 (matchRSpec!2024 (regTwo!30355 (regOne!30355 r!7292)) s!2326))))

(assert (= (and d!1701682 c!917518) b!5289487))

(assert (= (and d!1701682 (not c!917518)) b!5289484))

(assert (= (and b!5289484 res!2243359) b!5289485))

(assert (= (and b!5289485 c!917517) b!5289481))

(assert (= (and b!5289485 (not c!917517)) b!5289479))

(assert (= (and b!5289479 c!917519) b!5289480))

(assert (= (and b!5289479 (not c!917519)) b!5289478))

(assert (= (and b!5289480 (not res!2243358)) b!5289488))

(assert (= (and b!5289478 c!917516) b!5289486))

(assert (= (and b!5289478 (not c!917516)) b!5289482))

(assert (= (and b!5289486 (not res!2243357)) b!5289483))

(assert (= (or b!5289483 b!5289482) bm!376879))

(assert (= (or b!5289487 b!5289486) bm!376878))

(assert (=> bm!376878 m!6326026))

(declare-fun m!6326988 () Bool)

(assert (=> b!5289480 m!6326988))

(declare-fun m!6326990 () Bool)

(assert (=> bm!376879 m!6326990))

(declare-fun m!6326992 () Bool)

(assert (=> b!5289488 m!6326992))

(assert (=> b!5288664 d!1701682))

(declare-fun b!5289491 () Bool)

(declare-fun e!3288427 () (InoxSet Context!8610))

(declare-fun call!376888 () (InoxSet Context!8610))

(assert (=> b!5289491 (= e!3288427 call!376888)))

(declare-fun c!917524 () Bool)

(declare-fun call!376889 () List!61063)

(declare-fun call!376887 () (InoxSet Context!8610))

(declare-fun bm!376880 () Bool)

(assert (=> bm!376880 (= call!376887 (derivationStepZipperDown!369 (ite c!917524 (regTwo!30355 (h!67387 (exprs!4805 lt!2161279))) (regOne!30354 (h!67387 (exprs!4805 lt!2161279)))) (ite c!917524 (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (Context!8611 call!376889)) (h!67386 s!2326)))))

(declare-fun b!5289492 () Bool)

(declare-fun e!3288428 () (InoxSet Context!8610))

(assert (=> b!5289492 (= e!3288428 call!376888)))

(declare-fun c!917522 () Bool)

(declare-fun bm!376881 () Bool)

(declare-fun c!917523 () Bool)

(assert (=> bm!376881 (= call!376889 ($colon$colon!1358 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))) (ite (or c!917523 c!917522) (regTwo!30354 (h!67387 (exprs!4805 lt!2161279))) (h!67387 (exprs!4805 lt!2161279)))))))

(declare-fun call!376885 () (InoxSet Context!8610))

(declare-fun call!376886 () List!61063)

(declare-fun bm!376882 () Bool)

(assert (=> bm!376882 (= call!376885 (derivationStepZipperDown!369 (ite c!917524 (regOne!30355 (h!67387 (exprs!4805 lt!2161279))) (ite c!917523 (regTwo!30354 (h!67387 (exprs!4805 lt!2161279))) (ite c!917522 (regOne!30354 (h!67387 (exprs!4805 lt!2161279))) (reg!15250 (h!67387 (exprs!4805 lt!2161279)))))) (ite (or c!917524 c!917523) (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (Context!8611 call!376886)) (h!67386 s!2326)))))

(declare-fun bm!376883 () Bool)

(declare-fun call!376890 () (InoxSet Context!8610))

(assert (=> bm!376883 (= call!376888 call!376890)))

(declare-fun bm!376884 () Bool)

(assert (=> bm!376884 (= call!376890 call!376885)))

(declare-fun b!5289493 () Bool)

(declare-fun e!3288426 () Bool)

(assert (=> b!5289493 (= c!917523 e!3288426)))

(declare-fun res!2243361 () Bool)

(assert (=> b!5289493 (=> (not res!2243361) (not e!3288426))))

(assert (=> b!5289493 (= res!2243361 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun e!3288430 () (InoxSet Context!8610))

(declare-fun e!3288429 () (InoxSet Context!8610))

(assert (=> b!5289493 (= e!3288430 e!3288429)))

(declare-fun d!1701690 () Bool)

(declare-fun c!917521 () Bool)

(assert (=> d!1701690 (= c!917521 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 lt!2161279))) (= (c!916969 (h!67387 (exprs!4805 lt!2161279))) (h!67386 s!2326))))))

(declare-fun e!3288425 () (InoxSet Context!8610))

(assert (=> d!1701690 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161279)) (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (h!67386 s!2326)) e!3288425)))

(declare-fun bm!376885 () Bool)

(assert (=> bm!376885 (= call!376886 call!376889)))

(declare-fun b!5289494 () Bool)

(assert (=> b!5289494 (= e!3288430 ((_ map or) call!376885 call!376887))))

(declare-fun b!5289495 () Bool)

(assert (=> b!5289495 (= e!3288425 e!3288430)))

(assert (=> b!5289495 (= c!917524 ((_ is Union!14921) (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun b!5289496 () Bool)

(declare-fun c!917525 () Bool)

(assert (=> b!5289496 (= c!917525 ((_ is Star!14921) (h!67387 (exprs!4805 lt!2161279))))))

(assert (=> b!5289496 (= e!3288428 e!3288427)))

(declare-fun b!5289497 () Bool)

(assert (=> b!5289497 (= e!3288427 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289498 () Bool)

(assert (=> b!5289498 (= e!3288429 ((_ map or) call!376887 call!376890))))

(declare-fun b!5289499 () Bool)

(assert (=> b!5289499 (= e!3288426 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 lt!2161279)))))))

(declare-fun b!5289500 () Bool)

(assert (=> b!5289500 (= e!3288425 (store ((as const (Array Context!8610 Bool)) false) (Context!8611 (t!374266 (exprs!4805 lt!2161279))) true))))

(declare-fun b!5289501 () Bool)

(assert (=> b!5289501 (= e!3288429 e!3288428)))

(assert (=> b!5289501 (= c!917522 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161279))))))

(assert (= (and d!1701690 c!917521) b!5289500))

(assert (= (and d!1701690 (not c!917521)) b!5289495))

(assert (= (and b!5289495 c!917524) b!5289494))

(assert (= (and b!5289495 (not c!917524)) b!5289493))

(assert (= (and b!5289493 res!2243361) b!5289499))

(assert (= (and b!5289493 c!917523) b!5289498))

(assert (= (and b!5289493 (not c!917523)) b!5289501))

(assert (= (and b!5289501 c!917522) b!5289492))

(assert (= (and b!5289501 (not c!917522)) b!5289496))

(assert (= (and b!5289496 c!917525) b!5289491))

(assert (= (and b!5289496 (not c!917525)) b!5289497))

(assert (= (or b!5289492 b!5289491) bm!376885))

(assert (= (or b!5289492 b!5289491) bm!376883))

(assert (= (or b!5289498 bm!376885) bm!376881))

(assert (= (or b!5289498 bm!376883) bm!376884))

(assert (= (or b!5289494 b!5289498) bm!376880))

(assert (= (or b!5289494 bm!376884) bm!376882))

(declare-fun m!6326996 () Bool)

(assert (=> b!5289500 m!6326996))

(declare-fun m!6326998 () Bool)

(assert (=> bm!376881 m!6326998))

(declare-fun m!6327000 () Bool)

(assert (=> bm!376882 m!6327000))

(declare-fun m!6327002 () Bool)

(assert (=> b!5289499 m!6327002))

(declare-fun m!6327004 () Bool)

(assert (=> bm!376880 m!6327004))

(assert (=> bm!376666 d!1701690))

(declare-fun bs!1226122 () Bool)

(declare-fun d!1701694 () Bool)

(assert (= bs!1226122 (and d!1701694 d!1701532)))

(declare-fun lambda!267740 () Int)

(assert (=> bs!1226122 (= lambda!267740 lambda!267712)))

(declare-fun bs!1226123 () Bool)

(assert (= bs!1226123 (and d!1701694 d!1701482)))

(assert (=> bs!1226123 (= lambda!267740 lambda!267703)))

(declare-fun bs!1226124 () Bool)

(assert (= bs!1226124 (and d!1701694 b!5288015)))

(assert (=> bs!1226124 (not (= lambda!267740 lambda!267598))))

(declare-fun bs!1226125 () Bool)

(assert (= bs!1226125 (and d!1701694 d!1701540)))

(assert (=> bs!1226125 (= lambda!267740 lambda!267715)))

(declare-fun bs!1226126 () Bool)

(assert (= bs!1226126 (and d!1701694 b!5288013)))

(assert (=> bs!1226126 (not (= lambda!267740 lambda!267595))))

(declare-fun bs!1226127 () Bool)

(assert (= bs!1226127 (and d!1701694 b!5289107)))

(assert (=> bs!1226127 (not (= lambda!267740 lambda!267699))))

(declare-fun bs!1226128 () Bool)

(assert (= bs!1226128 (and d!1701694 b!5288022)))

(assert (=> bs!1226128 (not (= lambda!267740 lambda!267600))))

(declare-fun bs!1226129 () Bool)

(assert (= bs!1226129 (and d!1701694 d!1701476)))

(assert (=> bs!1226129 (= lambda!267740 lambda!267702)))

(declare-fun bs!1226130 () Bool)

(assert (= bs!1226130 (and d!1701694 b!5288024)))

(assert (=> bs!1226130 (not (= lambda!267740 lambda!267601))))

(declare-fun bs!1226131 () Bool)

(assert (= bs!1226131 (and d!1701694 b!5289109)))

(assert (=> bs!1226131 (not (= lambda!267740 lambda!267700))))

(declare-fun bs!1226132 () Bool)

(assert (= bs!1226132 (and d!1701694 d!1701538)))

(assert (=> bs!1226132 (= lambda!267740 lambda!267714)))

(declare-fun bs!1226133 () Bool)

(assert (= bs!1226133 (and d!1701694 d!1701348)))

(assert (=> bs!1226133 (= lambda!267740 lambda!267677)))

(declare-fun bs!1226134 () Bool)

(assert (= bs!1226134 (and d!1701694 d!1701422)))

(assert (=> bs!1226134 (not (= lambda!267740 lambda!267688))))

(declare-fun bs!1226135 () Bool)

(assert (= bs!1226135 (and d!1701694 d!1701526)))

(assert (=> bs!1226135 (= lambda!267740 lambda!267708)))

(assert (=> d!1701694 (= (nullableZipper!1308 lt!2161309) (exists!2003 lt!2161309 lambda!267740))))

(declare-fun bs!1226136 () Bool)

(assert (= bs!1226136 d!1701694))

(declare-fun m!6327016 () Bool)

(assert (=> bs!1226136 m!6327016))

(assert (=> b!5287938 d!1701694))

(declare-fun call!376898 () (InoxSet Context!8610))

(declare-fun e!3288445 () (InoxSet Context!8610))

(declare-fun b!5289527 () Bool)

(assert (=> b!5289527 (= e!3288445 ((_ map or) call!376898 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287)))))) (h!67386 s!2326))))))

(declare-fun b!5289528 () Bool)

(declare-fun e!3288446 () Bool)

(assert (=> b!5289528 (= e!3288446 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287)))))))))

(declare-fun b!5289529 () Bool)

(declare-fun e!3288444 () (InoxSet Context!8610))

(assert (=> b!5289529 (= e!3288444 call!376898)))

(declare-fun b!5289530 () Bool)

(assert (=> b!5289530 (= e!3288445 e!3288444)))

(declare-fun c!917534 () Bool)

(assert (=> b!5289530 (= c!917534 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287))))))))

(declare-fun b!5289531 () Bool)

(assert (=> b!5289531 (= e!3288444 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701698 () Bool)

(declare-fun c!917535 () Bool)

(assert (=> d!1701698 (= c!917535 e!3288446)))

(declare-fun res!2243371 () Bool)

(assert (=> d!1701698 (=> (not res!2243371) (not e!3288446))))

(assert (=> d!1701698 (= res!2243371 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287))))))))

(assert (=> d!1701698 (= (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (h!67386 s!2326)) e!3288445)))

(declare-fun bm!376893 () Bool)

(assert (=> bm!376893 (= call!376898 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287)))))) (h!67386 s!2326)))))

(assert (= (and d!1701698 res!2243371) b!5289528))

(assert (= (and d!1701698 c!917535) b!5289527))

(assert (= (and d!1701698 (not c!917535)) b!5289530))

(assert (= (and b!5289530 c!917534) b!5289529))

(assert (= (and b!5289530 (not c!917534)) b!5289531))

(assert (= (or b!5289527 b!5289529) bm!376893))

(declare-fun m!6327028 () Bool)

(assert (=> b!5289527 m!6327028))

(declare-fun m!6327030 () Bool)

(assert (=> b!5289528 m!6327030))

(declare-fun m!6327034 () Bool)

(assert (=> bm!376893 m!6327034))

(assert (=> b!5288173 d!1701698))

(declare-fun d!1701700 () Bool)

(declare-fun c!917536 () Bool)

(assert (=> d!1701700 (= c!917536 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288447 () Bool)

(assert (=> d!1701700 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161292 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288447)))

(declare-fun b!5289532 () Bool)

(assert (=> b!5289532 (= e!3288447 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161292 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5289533 () Bool)

(assert (=> b!5289533 (= e!3288447 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161292 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701700 c!917536) b!5289532))

(assert (= (and d!1701700 (not c!917536)) b!5289533))

(assert (=> d!1701700 m!6325492))

(assert (=> d!1701700 m!6326388))

(assert (=> b!5289532 m!6325762))

(declare-fun m!6327036 () Bool)

(assert (=> b!5289532 m!6327036))

(assert (=> b!5289533 m!6325492))

(assert (=> b!5289533 m!6326392))

(assert (=> b!5289533 m!6325762))

(assert (=> b!5289533 m!6326392))

(declare-fun m!6327038 () Bool)

(assert (=> b!5289533 m!6327038))

(assert (=> b!5289533 m!6325492))

(assert (=> b!5289533 m!6326396))

(assert (=> b!5289533 m!6327038))

(assert (=> b!5289533 m!6326396))

(declare-fun m!6327040 () Bool)

(assert (=> b!5289533 m!6327040))

(assert (=> b!5288215 d!1701700))

(declare-fun bs!1226137 () Bool)

(declare-fun d!1701704 () Bool)

(assert (= bs!1226137 (and d!1701704 d!1701188)))

(declare-fun lambda!267741 () Int)

(assert (=> bs!1226137 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267741 lambda!267640))))

(declare-fun bs!1226138 () Bool)

(assert (= bs!1226138 (and d!1701704 b!5287682)))

(assert (=> bs!1226138 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267741 lambda!267546))))

(declare-fun bs!1226139 () Bool)

(assert (= bs!1226139 (and d!1701704 d!1701364)))

(assert (=> bs!1226139 (= lambda!267741 lambda!267678)))

(declare-fun bs!1226140 () Bool)

(assert (= bs!1226140 (and d!1701704 d!1701080)))

(assert (=> bs!1226140 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267741 lambda!267614))))

(declare-fun bs!1226141 () Bool)

(assert (= bs!1226141 (and d!1701704 d!1701496)))

(assert (=> bs!1226141 (= lambda!267741 lambda!267705)))

(assert (=> d!1701704 true))

(assert (=> d!1701704 (= (derivationStepZipper!1164 lt!2161292 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161292 lambda!267741))))

(declare-fun bs!1226142 () Bool)

(assert (= bs!1226142 d!1701704))

(declare-fun m!6327042 () Bool)

(assert (=> bs!1226142 m!6327042))

(assert (=> b!5288215 d!1701704))

(assert (=> b!5288215 d!1701366))

(assert (=> b!5288215 d!1701370))

(declare-fun d!1701706 () Bool)

(declare-fun c!917537 () Bool)

(assert (=> d!1701706 (= c!917537 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun e!3288448 () Bool)

(assert (=> d!1701706 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161283 (head!11334 s!2326)) (tail!10430 s!2326)) e!3288448)))

(declare-fun b!5289534 () Bool)

(assert (=> b!5289534 (= e!3288448 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161283 (head!11334 s!2326))))))

(declare-fun b!5289535 () Bool)

(assert (=> b!5289535 (= e!3288448 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161283 (head!11334 s!2326)) (head!11334 (tail!10430 s!2326))) (tail!10430 (tail!10430 s!2326))))))

(assert (= (and d!1701706 c!917537) b!5289534))

(assert (= (and d!1701706 (not c!917537)) b!5289535))

(assert (=> d!1701706 m!6326080))

(assert (=> d!1701706 m!6326100))

(assert (=> b!5289534 m!6326096))

(declare-fun m!6327044 () Bool)

(assert (=> b!5289534 m!6327044))

(assert (=> b!5289535 m!6326080))

(assert (=> b!5289535 m!6326884))

(assert (=> b!5289535 m!6326096))

(assert (=> b!5289535 m!6326884))

(declare-fun m!6327046 () Bool)

(assert (=> b!5289535 m!6327046))

(assert (=> b!5289535 m!6326080))

(assert (=> b!5289535 m!6326886))

(assert (=> b!5289535 m!6327046))

(assert (=> b!5289535 m!6326886))

(declare-fun m!6327048 () Bool)

(assert (=> b!5289535 m!6327048))

(assert (=> b!5288587 d!1701706))

(declare-fun bs!1226143 () Bool)

(declare-fun d!1701708 () Bool)

(assert (= bs!1226143 (and d!1701708 d!1701188)))

(declare-fun lambda!267742 () Int)

(assert (=> bs!1226143 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267742 lambda!267640))))

(declare-fun bs!1226144 () Bool)

(assert (= bs!1226144 (and d!1701708 b!5287682)))

(assert (=> bs!1226144 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267742 lambda!267546))))

(declare-fun bs!1226145 () Bool)

(assert (= bs!1226145 (and d!1701708 d!1701704)))

(assert (=> bs!1226145 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267742 lambda!267741))))

(declare-fun bs!1226146 () Bool)

(assert (= bs!1226146 (and d!1701708 d!1701364)))

(assert (=> bs!1226146 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267742 lambda!267678))))

(declare-fun bs!1226147 () Bool)

(assert (= bs!1226147 (and d!1701708 d!1701080)))

(assert (=> bs!1226147 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267742 lambda!267614))))

(declare-fun bs!1226148 () Bool)

(assert (= bs!1226148 (and d!1701708 d!1701496)))

(assert (=> bs!1226148 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267742 lambda!267705))))

(assert (=> d!1701708 true))

(assert (=> d!1701708 (= (derivationStepZipper!1164 lt!2161283 (head!11334 s!2326)) (flatMap!648 lt!2161283 lambda!267742))))

(declare-fun bs!1226149 () Bool)

(assert (= bs!1226149 d!1701708))

(declare-fun m!6327050 () Bool)

(assert (=> bs!1226149 m!6327050))

(assert (=> b!5288587 d!1701708))

(assert (=> b!5288587 d!1701396))

(assert (=> b!5288587 d!1701574))

(declare-fun b!5289550 () Bool)

(declare-fun e!3288462 () Bool)

(assert (=> b!5289550 (= e!3288462 (not (= (head!11334 (_2!35423 (get!20954 lt!2161433))) (c!916969 (regTwo!30354 r!7292)))))))

(declare-fun b!5289551 () Bool)

(declare-fun e!3288461 () Bool)

(assert (=> b!5289551 (= e!3288461 (nullable!5090 (regTwo!30354 r!7292)))))

(declare-fun d!1701710 () Bool)

(declare-fun e!3288466 () Bool)

(assert (=> d!1701710 e!3288466))

(declare-fun c!917541 () Bool)

(assert (=> d!1701710 (= c!917541 ((_ is EmptyExpr!14921) (regTwo!30354 r!7292)))))

(declare-fun lt!2161569 () Bool)

(assert (=> d!1701710 (= lt!2161569 e!3288461)))

(declare-fun c!917540 () Bool)

(assert (=> d!1701710 (= c!917540 (isEmpty!32895 (_2!35423 (get!20954 lt!2161433))))))

(assert (=> d!1701710 (validRegex!6657 (regTwo!30354 r!7292))))

(assert (=> d!1701710 (= (matchR!7106 (regTwo!30354 r!7292) (_2!35423 (get!20954 lt!2161433))) lt!2161569)))

(declare-fun b!5289552 () Bool)

(declare-fun e!3288467 () Bool)

(assert (=> b!5289552 (= e!3288467 (= (head!11334 (_2!35423 (get!20954 lt!2161433))) (c!916969 (regTwo!30354 r!7292))))))

(declare-fun b!5289553 () Bool)

(declare-fun e!3288465 () Bool)

(assert (=> b!5289553 (= e!3288466 e!3288465)))

(declare-fun c!917542 () Bool)

(assert (=> b!5289553 (= c!917542 ((_ is EmptyLang!14921) (regTwo!30354 r!7292)))))

(declare-fun b!5289554 () Bool)

(assert (=> b!5289554 (= e!3288461 (matchR!7106 (derivativeStep!4129 (regTwo!30354 r!7292) (head!11334 (_2!35423 (get!20954 lt!2161433)))) (tail!10430 (_2!35423 (get!20954 lt!2161433)))))))

(declare-fun b!5289555 () Bool)

(declare-fun res!2243389 () Bool)

(assert (=> b!5289555 (=> (not res!2243389) (not e!3288467))))

(assert (=> b!5289555 (= res!2243389 (isEmpty!32895 (tail!10430 (_2!35423 (get!20954 lt!2161433)))))))

(declare-fun b!5289556 () Bool)

(declare-fun e!3288463 () Bool)

(declare-fun e!3288464 () Bool)

(assert (=> b!5289556 (= e!3288463 e!3288464)))

(declare-fun res!2243388 () Bool)

(assert (=> b!5289556 (=> (not res!2243388) (not e!3288464))))

(assert (=> b!5289556 (= res!2243388 (not lt!2161569))))

(declare-fun b!5289557 () Bool)

(declare-fun res!2243386 () Bool)

(assert (=> b!5289557 (=> res!2243386 e!3288463)))

(assert (=> b!5289557 (= res!2243386 e!3288467)))

(declare-fun res!2243387 () Bool)

(assert (=> b!5289557 (=> (not res!2243387) (not e!3288467))))

(assert (=> b!5289557 (= res!2243387 lt!2161569)))

(declare-fun b!5289558 () Bool)

(declare-fun call!376903 () Bool)

(assert (=> b!5289558 (= e!3288466 (= lt!2161569 call!376903))))

(declare-fun b!5289559 () Bool)

(assert (=> b!5289559 (= e!3288464 e!3288462)))

(declare-fun res!2243382 () Bool)

(assert (=> b!5289559 (=> res!2243382 e!3288462)))

(assert (=> b!5289559 (= res!2243382 call!376903)))

(declare-fun bm!376898 () Bool)

(assert (=> bm!376898 (= call!376903 (isEmpty!32895 (_2!35423 (get!20954 lt!2161433))))))

(declare-fun b!5289560 () Bool)

(declare-fun res!2243383 () Bool)

(assert (=> b!5289560 (=> res!2243383 e!3288463)))

(assert (=> b!5289560 (= res!2243383 (not ((_ is ElementMatch!14921) (regTwo!30354 r!7292))))))

(assert (=> b!5289560 (= e!3288465 e!3288463)))

(declare-fun b!5289561 () Bool)

(declare-fun res!2243385 () Bool)

(assert (=> b!5289561 (=> res!2243385 e!3288462)))

(assert (=> b!5289561 (= res!2243385 (not (isEmpty!32895 (tail!10430 (_2!35423 (get!20954 lt!2161433))))))))

(declare-fun b!5289562 () Bool)

(declare-fun res!2243384 () Bool)

(assert (=> b!5289562 (=> (not res!2243384) (not e!3288467))))

(assert (=> b!5289562 (= res!2243384 (not call!376903))))

(declare-fun b!5289563 () Bool)

(assert (=> b!5289563 (= e!3288465 (not lt!2161569))))

(assert (= (and d!1701710 c!917540) b!5289551))

(assert (= (and d!1701710 (not c!917540)) b!5289554))

(assert (= (and d!1701710 c!917541) b!5289558))

(assert (= (and d!1701710 (not c!917541)) b!5289553))

(assert (= (and b!5289553 c!917542) b!5289563))

(assert (= (and b!5289553 (not c!917542)) b!5289560))

(assert (= (and b!5289560 (not res!2243383)) b!5289557))

(assert (= (and b!5289557 res!2243387) b!5289562))

(assert (= (and b!5289562 res!2243384) b!5289555))

(assert (= (and b!5289555 res!2243389) b!5289552))

(assert (= (and b!5289557 (not res!2243386)) b!5289556))

(assert (= (and b!5289556 res!2243388) b!5289559))

(assert (= (and b!5289559 (not res!2243382)) b!5289561))

(assert (= (and b!5289561 (not res!2243385)) b!5289550))

(assert (= (or b!5289558 b!5289559 b!5289562) bm!376898))

(declare-fun m!6327052 () Bool)

(assert (=> b!5289552 m!6327052))

(declare-fun m!6327054 () Bool)

(assert (=> b!5289561 m!6327054))

(assert (=> b!5289561 m!6327054))

(declare-fun m!6327056 () Bool)

(assert (=> b!5289561 m!6327056))

(assert (=> b!5289555 m!6327054))

(assert (=> b!5289555 m!6327054))

(assert (=> b!5289555 m!6327056))

(assert (=> b!5289550 m!6327052))

(assert (=> b!5289551 m!6326728))

(declare-fun m!6327058 () Bool)

(assert (=> bm!376898 m!6327058))

(assert (=> b!5289554 m!6327052))

(assert (=> b!5289554 m!6327052))

(declare-fun m!6327060 () Bool)

(assert (=> b!5289554 m!6327060))

(assert (=> b!5289554 m!6327054))

(assert (=> b!5289554 m!6327060))

(assert (=> b!5289554 m!6327054))

(declare-fun m!6327062 () Bool)

(assert (=> b!5289554 m!6327062))

(assert (=> d!1701710 m!6327058))

(assert (=> d!1701710 m!6326734))

(assert (=> b!5288317 d!1701710))

(declare-fun d!1701712 () Bool)

(assert (=> d!1701712 (= (get!20954 lt!2161433) (v!51060 lt!2161433))))

(assert (=> b!5288317 d!1701712))

(assert (=> d!1701100 d!1701416))

(declare-fun b!5289564 () Bool)

(declare-fun res!2243393 () Bool)

(declare-fun e!3288470 () Bool)

(assert (=> b!5289564 (=> (not res!2243393) (not e!3288470))))

(declare-fun call!376904 () Bool)

(assert (=> b!5289564 (= res!2243393 call!376904)))

(declare-fun e!3288474 () Bool)

(assert (=> b!5289564 (= e!3288474 e!3288470)))

(declare-fun b!5289565 () Bool)

(declare-fun e!3288473 () Bool)

(declare-fun e!3288469 () Bool)

(assert (=> b!5289565 (= e!3288473 e!3288469)))

(declare-fun res!2243390 () Bool)

(assert (=> b!5289565 (= res!2243390 (not (nullable!5090 (reg!15250 lt!2161399))))))

(assert (=> b!5289565 (=> (not res!2243390) (not e!3288469))))

(declare-fun b!5289566 () Bool)

(assert (=> b!5289566 (= e!3288473 e!3288474)))

(declare-fun c!917543 () Bool)

(assert (=> b!5289566 (= c!917543 ((_ is Union!14921) lt!2161399))))

(declare-fun b!5289567 () Bool)

(declare-fun e!3288471 () Bool)

(assert (=> b!5289567 (= e!3288471 e!3288473)))

(declare-fun c!917544 () Bool)

(assert (=> b!5289567 (= c!917544 ((_ is Star!14921) lt!2161399))))

(declare-fun d!1701714 () Bool)

(declare-fun res!2243394 () Bool)

(assert (=> d!1701714 (=> res!2243394 e!3288471)))

(assert (=> d!1701714 (= res!2243394 ((_ is ElementMatch!14921) lt!2161399))))

(assert (=> d!1701714 (= (validRegex!6657 lt!2161399) e!3288471)))

(declare-fun b!5289568 () Bool)

(declare-fun res!2243392 () Bool)

(declare-fun e!3288472 () Bool)

(assert (=> b!5289568 (=> res!2243392 e!3288472)))

(assert (=> b!5289568 (= res!2243392 (not ((_ is Concat!23766) lt!2161399)))))

(assert (=> b!5289568 (= e!3288474 e!3288472)))

(declare-fun b!5289569 () Bool)

(declare-fun call!376906 () Bool)

(assert (=> b!5289569 (= e!3288469 call!376906)))

(declare-fun bm!376899 () Bool)

(assert (=> bm!376899 (= call!376904 (validRegex!6657 (ite c!917543 (regOne!30355 lt!2161399) (regOne!30354 lt!2161399))))))

(declare-fun bm!376900 () Bool)

(assert (=> bm!376900 (= call!376906 (validRegex!6657 (ite c!917544 (reg!15250 lt!2161399) (ite c!917543 (regTwo!30355 lt!2161399) (regTwo!30354 lt!2161399)))))))

(declare-fun b!5289570 () Bool)

(declare-fun call!376905 () Bool)

(assert (=> b!5289570 (= e!3288470 call!376905)))

(declare-fun bm!376901 () Bool)

(assert (=> bm!376901 (= call!376905 call!376906)))

(declare-fun b!5289571 () Bool)

(declare-fun e!3288468 () Bool)

(assert (=> b!5289571 (= e!3288472 e!3288468)))

(declare-fun res!2243391 () Bool)

(assert (=> b!5289571 (=> (not res!2243391) (not e!3288468))))

(assert (=> b!5289571 (= res!2243391 call!376904)))

(declare-fun b!5289572 () Bool)

(assert (=> b!5289572 (= e!3288468 call!376905)))

(assert (= (and d!1701714 (not res!2243394)) b!5289567))

(assert (= (and b!5289567 c!917544) b!5289565))

(assert (= (and b!5289567 (not c!917544)) b!5289566))

(assert (= (and b!5289565 res!2243390) b!5289569))

(assert (= (and b!5289566 c!917543) b!5289564))

(assert (= (and b!5289566 (not c!917543)) b!5289568))

(assert (= (and b!5289564 res!2243393) b!5289570))

(assert (= (and b!5289568 (not res!2243392)) b!5289571))

(assert (= (and b!5289571 res!2243391) b!5289572))

(assert (= (or b!5289570 b!5289572) bm!376901))

(assert (= (or b!5289564 b!5289571) bm!376899))

(assert (= (or b!5289569 bm!376901) bm!376900))

(declare-fun m!6327064 () Bool)

(assert (=> b!5289565 m!6327064))

(declare-fun m!6327066 () Bool)

(assert (=> bm!376899 m!6327066))

(declare-fun m!6327070 () Bool)

(assert (=> bm!376900 m!6327070))

(assert (=> d!1701056 d!1701714))

(declare-fun d!1701716 () Bool)

(declare-fun res!2243400 () Bool)

(declare-fun e!3288481 () Bool)

(assert (=> d!1701716 (=> res!2243400 e!3288481)))

(assert (=> d!1701716 (= res!2243400 ((_ is Nil!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701716 (= (forall!14329 (exprs!4805 (h!67388 zl!343)) lambda!267611) e!3288481)))

(declare-fun b!5289580 () Bool)

(declare-fun e!3288482 () Bool)

(assert (=> b!5289580 (= e!3288481 e!3288482)))

(declare-fun res!2243401 () Bool)

(assert (=> b!5289580 (=> (not res!2243401) (not e!3288482))))

(assert (=> b!5289580 (= res!2243401 (dynLambda!24093 lambda!267611 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5289581 () Bool)

(assert (=> b!5289581 (= e!3288482 (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267611))))

(assert (= (and d!1701716 (not res!2243400)) b!5289580))

(assert (= (and b!5289580 res!2243401) b!5289581))

(declare-fun b_lambda!203979 () Bool)

(assert (=> (not b_lambda!203979) (not b!5289580)))

(declare-fun m!6327074 () Bool)

(assert (=> b!5289580 m!6327074))

(declare-fun m!6327076 () Bool)

(assert (=> b!5289581 m!6327076))

(assert (=> d!1701056 d!1701716))

(assert (=> d!1701232 d!1701240))

(assert (=> d!1701232 d!1701216))

(declare-fun d!1701720 () Bool)

(assert (=> d!1701720 (= (matchR!7106 lt!2161300 s!2326) (matchZipper!1165 lt!2161312 s!2326))))

(assert (=> d!1701720 true))

(declare-fun _$44!1394 () Unit!153202)

(assert (=> d!1701720 (= (choose!39495 lt!2161312 (Cons!60940 lt!2161287 Nil!60940) lt!2161300 s!2326) _$44!1394)))

(declare-fun bs!1226165 () Bool)

(assert (= bs!1226165 d!1701720))

(assert (=> bs!1226165 m!6325206))

(assert (=> bs!1226165 m!6325182))

(assert (=> d!1701232 d!1701720))

(declare-fun b!5289604 () Bool)

(declare-fun res!2243409 () Bool)

(declare-fun e!3288498 () Bool)

(assert (=> b!5289604 (=> (not res!2243409) (not e!3288498))))

(declare-fun call!376917 () Bool)

(assert (=> b!5289604 (= res!2243409 call!376917)))

(declare-fun e!3288502 () Bool)

(assert (=> b!5289604 (= e!3288502 e!3288498)))

(declare-fun b!5289605 () Bool)

(declare-fun e!3288501 () Bool)

(declare-fun e!3288497 () Bool)

(assert (=> b!5289605 (= e!3288501 e!3288497)))

(declare-fun res!2243406 () Bool)

(assert (=> b!5289605 (= res!2243406 (not (nullable!5090 (reg!15250 lt!2161300))))))

(assert (=> b!5289605 (=> (not res!2243406) (not e!3288497))))

(declare-fun b!5289606 () Bool)

(assert (=> b!5289606 (= e!3288501 e!3288502)))

(declare-fun c!917555 () Bool)

(assert (=> b!5289606 (= c!917555 ((_ is Union!14921) lt!2161300))))

(declare-fun b!5289607 () Bool)

(declare-fun e!3288499 () Bool)

(assert (=> b!5289607 (= e!3288499 e!3288501)))

(declare-fun c!917556 () Bool)

(assert (=> b!5289607 (= c!917556 ((_ is Star!14921) lt!2161300))))

(declare-fun d!1701724 () Bool)

(declare-fun res!2243410 () Bool)

(assert (=> d!1701724 (=> res!2243410 e!3288499)))

(assert (=> d!1701724 (= res!2243410 ((_ is ElementMatch!14921) lt!2161300))))

(assert (=> d!1701724 (= (validRegex!6657 lt!2161300) e!3288499)))

(declare-fun b!5289608 () Bool)

(declare-fun res!2243408 () Bool)

(declare-fun e!3288500 () Bool)

(assert (=> b!5289608 (=> res!2243408 e!3288500)))

(assert (=> b!5289608 (= res!2243408 (not ((_ is Concat!23766) lt!2161300)))))

(assert (=> b!5289608 (= e!3288502 e!3288500)))

(declare-fun b!5289609 () Bool)

(declare-fun call!376919 () Bool)

(assert (=> b!5289609 (= e!3288497 call!376919)))

(declare-fun bm!376912 () Bool)

(assert (=> bm!376912 (= call!376917 (validRegex!6657 (ite c!917555 (regOne!30355 lt!2161300) (regOne!30354 lt!2161300))))))

(declare-fun bm!376913 () Bool)

(assert (=> bm!376913 (= call!376919 (validRegex!6657 (ite c!917556 (reg!15250 lt!2161300) (ite c!917555 (regTwo!30355 lt!2161300) (regTwo!30354 lt!2161300)))))))

(declare-fun b!5289610 () Bool)

(declare-fun call!376918 () Bool)

(assert (=> b!5289610 (= e!3288498 call!376918)))

(declare-fun bm!376914 () Bool)

(assert (=> bm!376914 (= call!376918 call!376919)))

(declare-fun b!5289611 () Bool)

(declare-fun e!3288496 () Bool)

(assert (=> b!5289611 (= e!3288500 e!3288496)))

(declare-fun res!2243407 () Bool)

(assert (=> b!5289611 (=> (not res!2243407) (not e!3288496))))

(assert (=> b!5289611 (= res!2243407 call!376917)))

(declare-fun b!5289612 () Bool)

(assert (=> b!5289612 (= e!3288496 call!376918)))

(assert (= (and d!1701724 (not res!2243410)) b!5289607))

(assert (= (and b!5289607 c!917556) b!5289605))

(assert (= (and b!5289607 (not c!917556)) b!5289606))

(assert (= (and b!5289605 res!2243406) b!5289609))

(assert (= (and b!5289606 c!917555) b!5289604))

(assert (= (and b!5289606 (not c!917555)) b!5289608))

(assert (= (and b!5289604 res!2243409) b!5289610))

(assert (= (and b!5289608 (not res!2243408)) b!5289611))

(assert (= (and b!5289611 res!2243407) b!5289612))

(assert (= (or b!5289610 b!5289612) bm!376914))

(assert (= (or b!5289604 b!5289611) bm!376912))

(assert (= (or b!5289609 bm!376914) bm!376913))

(declare-fun m!6327088 () Bool)

(assert (=> b!5289605 m!6327088))

(declare-fun m!6327090 () Bool)

(assert (=> bm!376912 m!6327090))

(declare-fun m!6327092 () Bool)

(assert (=> bm!376913 m!6327092))

(assert (=> d!1701232 d!1701724))

(assert (=> bs!1225462 d!1701078))

(declare-fun d!1701726 () Bool)

(assert (=> d!1701726 true))

(declare-fun setRes!33943 () Bool)

(assert (=> d!1701726 setRes!33943))

(declare-fun condSetEmpty!33943 () Bool)

(declare-fun res!2243413 () (InoxSet Context!8610))

(assert (=> d!1701726 (= condSetEmpty!33943 (= res!2243413 ((as const (Array Context!8610 Bool)) false)))))

(assert (=> d!1701726 (= (choose!39488 z!1189 lambda!267546) res!2243413)))

(declare-fun setIsEmpty!33943 () Bool)

(assert (=> setIsEmpty!33943 setRes!33943))

(declare-fun setNonEmpty!33943 () Bool)

(declare-fun tp!1476559 () Bool)

(declare-fun e!3288505 () Bool)

(declare-fun setElem!33943 () Context!8610)

(assert (=> setNonEmpty!33943 (= setRes!33943 (and tp!1476559 (inv!80549 setElem!33943) e!3288505))))

(declare-fun setRest!33943 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33943 (= res!2243413 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33943 true) setRest!33943))))

(declare-fun b!5289615 () Bool)

(declare-fun tp!1476558 () Bool)

(assert (=> b!5289615 (= e!3288505 tp!1476558)))

(assert (= (and d!1701726 condSetEmpty!33943) setIsEmpty!33943))

(assert (= (and d!1701726 (not condSetEmpty!33943)) setNonEmpty!33943))

(assert (= setNonEmpty!33943 b!5289615))

(declare-fun m!6327094 () Bool)

(assert (=> setNonEmpty!33943 m!6327094))

(assert (=> d!1701204 d!1701726))

(declare-fun d!1701728 () Bool)

(declare-fun res!2243414 () Bool)

(declare-fun e!3288506 () Bool)

(assert (=> d!1701728 (=> res!2243414 e!3288506)))

(assert (=> d!1701728 (= res!2243414 ((_ is Nil!60939) lt!2161458))))

(assert (=> d!1701728 (= (forall!14329 lt!2161458 lambda!267639) e!3288506)))

(declare-fun b!5289616 () Bool)

(declare-fun e!3288507 () Bool)

(assert (=> b!5289616 (= e!3288506 e!3288507)))

(declare-fun res!2243415 () Bool)

(assert (=> b!5289616 (=> (not res!2243415) (not e!3288507))))

(assert (=> b!5289616 (= res!2243415 (dynLambda!24093 lambda!267639 (h!67387 lt!2161458)))))

(declare-fun b!5289617 () Bool)

(assert (=> b!5289617 (= e!3288507 (forall!14329 (t!374266 lt!2161458) lambda!267639))))

(assert (= (and d!1701728 (not res!2243414)) b!5289616))

(assert (= (and b!5289616 res!2243415) b!5289617))

(declare-fun b_lambda!203981 () Bool)

(assert (=> (not b_lambda!203981) (not b!5289616)))

(declare-fun m!6327096 () Bool)

(assert (=> b!5289616 m!6327096))

(declare-fun m!6327098 () Bool)

(assert (=> b!5289617 m!6327098))

(assert (=> d!1701182 d!1701728))

(declare-fun b!5289618 () Bool)

(declare-fun e!3288510 () (InoxSet Context!8610))

(declare-fun call!376923 () (InoxSet Context!8610))

(assert (=> b!5289618 (= e!3288510 call!376923)))

(declare-fun call!376924 () List!61063)

(declare-fun call!376922 () (InoxSet Context!8610))

(declare-fun bm!376915 () Bool)

(declare-fun c!917560 () Bool)

(assert (=> bm!376915 (= call!376922 (derivationStepZipperDown!369 (ite c!917560 (regTwo!30355 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (regOne!30354 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))) (ite c!917560 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (Context!8611 call!376924)) (h!67386 s!2326)))))

(declare-fun b!5289619 () Bool)

(declare-fun e!3288511 () (InoxSet Context!8610))

(assert (=> b!5289619 (= e!3288511 call!376923)))

(declare-fun c!917559 () Bool)

(declare-fun c!917558 () Bool)

(declare-fun bm!376916 () Bool)

(assert (=> bm!376916 (= call!376924 ($colon$colon!1358 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))) (ite (or c!917559 c!917558) (regTwo!30354 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))))

(declare-fun call!376921 () List!61063)

(declare-fun bm!376917 () Bool)

(declare-fun call!376920 () (InoxSet Context!8610))

(assert (=> bm!376917 (= call!376920 (derivationStepZipperDown!369 (ite c!917560 (regOne!30355 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (ite c!917559 (regTwo!30354 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (ite c!917558 (regOne!30354 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (reg!15250 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))) (ite (or c!917560 c!917559) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (Context!8611 call!376921)) (h!67386 s!2326)))))

(declare-fun bm!376918 () Bool)

(declare-fun call!376925 () (InoxSet Context!8610))

(assert (=> bm!376918 (= call!376923 call!376925)))

(declare-fun bm!376919 () Bool)

(assert (=> bm!376919 (= call!376925 call!376920)))

(declare-fun b!5289620 () Bool)

(declare-fun e!3288509 () Bool)

(assert (=> b!5289620 (= c!917559 e!3288509)))

(declare-fun res!2243416 () Bool)

(assert (=> b!5289620 (=> (not res!2243416) (not e!3288509))))

(assert (=> b!5289620 (= res!2243416 ((_ is Concat!23766) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun e!3288513 () (InoxSet Context!8610))

(declare-fun e!3288512 () (InoxSet Context!8610))

(assert (=> b!5289620 (= e!3288513 e!3288512)))

(declare-fun d!1701730 () Bool)

(declare-fun c!917557 () Bool)

(assert (=> d!1701730 (= c!917557 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (= (c!916969 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326))))))

(declare-fun e!3288508 () (InoxSet Context!8610))

(assert (=> d!1701730 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326)) e!3288508)))

(declare-fun bm!376920 () Bool)

(assert (=> bm!376920 (= call!376921 call!376924)))

(declare-fun b!5289621 () Bool)

(assert (=> b!5289621 (= e!3288513 ((_ map or) call!376920 call!376922))))

(declare-fun b!5289622 () Bool)

(assert (=> b!5289622 (= e!3288508 e!3288513)))

(assert (=> b!5289622 (= c!917560 ((_ is Union!14921) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun b!5289623 () Bool)

(declare-fun c!917561 () Bool)

(assert (=> b!5289623 (= c!917561 ((_ is Star!14921) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(assert (=> b!5289623 (= e!3288511 e!3288510)))

(declare-fun b!5289624 () Bool)

(assert (=> b!5289624 (= e!3288510 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289625 () Bool)

(assert (=> b!5289625 (= e!3288512 ((_ map or) call!376922 call!376925))))

(declare-fun b!5289626 () Bool)

(assert (=> b!5289626 (= e!3288509 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))))

(declare-fun b!5289627 () Bool)

(assert (=> b!5289627 (= e!3288508 (store ((as const (Array Context!8610 Bool)) false) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) true))))

(declare-fun b!5289628 () Bool)

(assert (=> b!5289628 (= e!3288512 e!3288511)))

(assert (=> b!5289628 (= c!917558 ((_ is Concat!23766) (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(assert (= (and d!1701730 c!917557) b!5289627))

(assert (= (and d!1701730 (not c!917557)) b!5289622))

(assert (= (and b!5289622 c!917560) b!5289621))

(assert (= (and b!5289622 (not c!917560)) b!5289620))

(assert (= (and b!5289620 res!2243416) b!5289626))

(assert (= (and b!5289620 c!917559) b!5289625))

(assert (= (and b!5289620 (not c!917559)) b!5289628))

(assert (= (and b!5289628 c!917558) b!5289619))

(assert (= (and b!5289628 (not c!917558)) b!5289623))

(assert (= (and b!5289623 c!917561) b!5289618))

(assert (= (and b!5289623 (not c!917561)) b!5289624))

(assert (= (or b!5289619 b!5289618) bm!376920))

(assert (= (or b!5289619 b!5289618) bm!376918))

(assert (= (or b!5289625 bm!376920) bm!376916))

(assert (= (or b!5289625 bm!376918) bm!376919))

(assert (= (or b!5289621 b!5289625) bm!376915))

(assert (= (or b!5289621 bm!376919) bm!376917))

(declare-fun m!6327100 () Bool)

(assert (=> b!5289627 m!6327100))

(declare-fun m!6327102 () Bool)

(assert (=> bm!376916 m!6327102))

(declare-fun m!6327104 () Bool)

(assert (=> bm!376917 m!6327104))

(declare-fun m!6327106 () Bool)

(assert (=> b!5289626 m!6327106))

(declare-fun m!6327108 () Bool)

(assert (=> bm!376915 m!6327108))

(assert (=> bm!376697 d!1701730))

(declare-fun bs!1226194 () Bool)

(declare-fun d!1701732 () Bool)

(assert (= bs!1226194 (and d!1701732 b!5287700)))

(declare-fun lambda!267745 () Int)

(assert (=> bs!1226194 (= lambda!267745 lambda!267549)))

(declare-fun bs!1226195 () Bool)

(assert (= bs!1226195 (and d!1701732 b!5289082)))

(assert (=> bs!1226195 (not (= lambda!267745 lambda!267695))))

(declare-fun bs!1226196 () Bool)

(assert (= bs!1226196 (and d!1701732 d!1701120)))

(assert (=> bs!1226196 (= lambda!267745 lambda!267615)))

(declare-fun bs!1226197 () Bool)

(assert (= bs!1226197 (and d!1701732 d!1701030)))

(assert (=> bs!1226197 (= lambda!267745 lambda!267584)))

(declare-fun bs!1226198 () Bool)

(assert (= bs!1226198 (and d!1701732 d!1701056)))

(assert (=> bs!1226198 (= lambda!267745 lambda!267611)))

(declare-fun bs!1226199 () Bool)

(assert (= bs!1226199 (and d!1701732 d!1701212)))

(assert (=> bs!1226199 (= lambda!267745 lambda!267647)))

(declare-fun bs!1226200 () Bool)

(assert (= bs!1226200 (and d!1701732 d!1701230)))

(assert (=> bs!1226200 (= lambda!267745 lambda!267650)))

(declare-fun bs!1226201 () Bool)

(assert (= bs!1226201 (and d!1701732 d!1701182)))

(assert (=> bs!1226201 (= lambda!267745 lambda!267639)))

(declare-fun bs!1226202 () Bool)

(assert (= bs!1226202 (and d!1701732 b!5289084)))

(assert (=> bs!1226202 (not (= lambda!267745 lambda!267696))))

(declare-fun bs!1226203 () Bool)

(assert (= bs!1226203 (and d!1701732 d!1701172)))

(assert (=> bs!1226203 (= lambda!267745 lambda!267636)))

(declare-fun e!3288516 () Bool)

(assert (=> d!1701732 e!3288516))

(declare-fun res!2243418 () Bool)

(assert (=> d!1701732 (=> (not res!2243418) (not e!3288516))))

(declare-fun lt!2161570 () Regex!14921)

(assert (=> d!1701732 (= res!2243418 (validRegex!6657 lt!2161570))))

(declare-fun e!3288517 () Regex!14921)

(assert (=> d!1701732 (= lt!2161570 e!3288517)))

(declare-fun c!917563 () Bool)

(declare-fun e!3288514 () Bool)

(assert (=> d!1701732 (= c!917563 e!3288514)))

(declare-fun res!2243417 () Bool)

(assert (=> d!1701732 (=> (not res!2243417) (not e!3288514))))

(assert (=> d!1701732 (= res!2243417 ((_ is Cons!60939) (t!374266 lt!2161282)))))

(assert (=> d!1701732 (forall!14329 (t!374266 lt!2161282) lambda!267745)))

(assert (=> d!1701732 (= (generalisedConcat!590 (t!374266 lt!2161282)) lt!2161570)))

(declare-fun b!5289629 () Bool)

(declare-fun e!3288518 () Regex!14921)

(assert (=> b!5289629 (= e!3288518 (Concat!23766 (h!67387 (t!374266 lt!2161282)) (generalisedConcat!590 (t!374266 (t!374266 lt!2161282)))))))

(declare-fun b!5289630 () Bool)

(assert (=> b!5289630 (= e!3288517 e!3288518)))

(declare-fun c!917562 () Bool)

(assert (=> b!5289630 (= c!917562 ((_ is Cons!60939) (t!374266 lt!2161282)))))

(declare-fun b!5289631 () Bool)

(declare-fun e!3288519 () Bool)

(declare-fun e!3288515 () Bool)

(assert (=> b!5289631 (= e!3288519 e!3288515)))

(declare-fun c!917564 () Bool)

(assert (=> b!5289631 (= c!917564 (isEmpty!32892 (tail!10432 (t!374266 lt!2161282))))))

(declare-fun b!5289632 () Bool)

(assert (=> b!5289632 (= e!3288517 (h!67387 (t!374266 lt!2161282)))))

(declare-fun b!5289633 () Bool)

(assert (=> b!5289633 (= e!3288519 (isEmptyExpr!843 lt!2161570))))

(declare-fun b!5289634 () Bool)

(assert (=> b!5289634 (= e!3288515 (isConcat!366 lt!2161570))))

(declare-fun b!5289635 () Bool)

(assert (=> b!5289635 (= e!3288516 e!3288519)))

(declare-fun c!917565 () Bool)

(assert (=> b!5289635 (= c!917565 (isEmpty!32892 (t!374266 lt!2161282)))))

(declare-fun b!5289636 () Bool)

(assert (=> b!5289636 (= e!3288514 (isEmpty!32892 (t!374266 (t!374266 lt!2161282))))))

(declare-fun b!5289637 () Bool)

(assert (=> b!5289637 (= e!3288518 EmptyExpr!14921)))

(declare-fun b!5289638 () Bool)

(assert (=> b!5289638 (= e!3288515 (= lt!2161570 (head!11335 (t!374266 lt!2161282))))))

(assert (= (and d!1701732 res!2243417) b!5289636))

(assert (= (and d!1701732 c!917563) b!5289632))

(assert (= (and d!1701732 (not c!917563)) b!5289630))

(assert (= (and b!5289630 c!917562) b!5289629))

(assert (= (and b!5289630 (not c!917562)) b!5289637))

(assert (= (and d!1701732 res!2243418) b!5289635))

(assert (= (and b!5289635 c!917565) b!5289633))

(assert (= (and b!5289635 (not c!917565)) b!5289631))

(assert (= (and b!5289631 c!917564) b!5289638))

(assert (= (and b!5289631 (not c!917564)) b!5289634))

(declare-fun m!6327118 () Bool)

(assert (=> b!5289634 m!6327118))

(declare-fun m!6327120 () Bool)

(assert (=> b!5289633 m!6327120))

(declare-fun m!6327124 () Bool)

(assert (=> b!5289636 m!6327124))

(declare-fun m!6327126 () Bool)

(assert (=> d!1701732 m!6327126))

(declare-fun m!6327128 () Bool)

(assert (=> d!1701732 m!6327128))

(declare-fun m!6327132 () Bool)

(assert (=> b!5289638 m!6327132))

(declare-fun m!6327136 () Bool)

(assert (=> b!5289631 m!6327136))

(assert (=> b!5289631 m!6327136))

(declare-fun m!6327138 () Bool)

(assert (=> b!5289631 m!6327138))

(assert (=> b!5289635 m!6326042))

(declare-fun m!6327140 () Bool)

(assert (=> b!5289629 m!6327140))

(assert (=> b!5288554 d!1701732))

(declare-fun d!1701740 () Bool)

(assert (=> d!1701740 (= (Exists!2102 (ite c!917274 lambda!267654 lambda!267655)) (choose!39491 (ite c!917274 lambda!267654 lambda!267655)))))

(declare-fun bs!1226204 () Bool)

(assert (= bs!1226204 d!1701740))

(declare-fun m!6327144 () Bool)

(assert (=> bs!1226204 m!6327144))

(assert (=> bm!376718 d!1701740))

(declare-fun bs!1226205 () Bool)

(declare-fun d!1701744 () Bool)

(assert (= bs!1226205 (and d!1701744 d!1701532)))

(declare-fun lambda!267746 () Int)

(assert (=> bs!1226205 (= lambda!267746 lambda!267712)))

(declare-fun bs!1226206 () Bool)

(assert (= bs!1226206 (and d!1701744 d!1701482)))

(assert (=> bs!1226206 (= lambda!267746 lambda!267703)))

(declare-fun bs!1226208 () Bool)

(assert (= bs!1226208 (and d!1701744 b!5288015)))

(assert (=> bs!1226208 (not (= lambda!267746 lambda!267598))))

(declare-fun bs!1226209 () Bool)

(assert (= bs!1226209 (and d!1701744 d!1701540)))

(assert (=> bs!1226209 (= lambda!267746 lambda!267715)))

(declare-fun bs!1226210 () Bool)

(assert (= bs!1226210 (and d!1701744 b!5288013)))

(assert (=> bs!1226210 (not (= lambda!267746 lambda!267595))))

(declare-fun bs!1226211 () Bool)

(assert (= bs!1226211 (and d!1701744 b!5289107)))

(assert (=> bs!1226211 (not (= lambda!267746 lambda!267699))))

(declare-fun bs!1226212 () Bool)

(assert (= bs!1226212 (and d!1701744 b!5288022)))

(assert (=> bs!1226212 (not (= lambda!267746 lambda!267600))))

(declare-fun bs!1226213 () Bool)

(assert (= bs!1226213 (and d!1701744 d!1701694)))

(assert (=> bs!1226213 (= lambda!267746 lambda!267740)))

(declare-fun bs!1226214 () Bool)

(assert (= bs!1226214 (and d!1701744 d!1701476)))

(assert (=> bs!1226214 (= lambda!267746 lambda!267702)))

(declare-fun bs!1226215 () Bool)

(assert (= bs!1226215 (and d!1701744 b!5288024)))

(assert (=> bs!1226215 (not (= lambda!267746 lambda!267601))))

(declare-fun bs!1226217 () Bool)

(assert (= bs!1226217 (and d!1701744 b!5289109)))

(assert (=> bs!1226217 (not (= lambda!267746 lambda!267700))))

(declare-fun bs!1226218 () Bool)

(assert (= bs!1226218 (and d!1701744 d!1701538)))

(assert (=> bs!1226218 (= lambda!267746 lambda!267714)))

(declare-fun bs!1226220 () Bool)

(assert (= bs!1226220 (and d!1701744 d!1701348)))

(assert (=> bs!1226220 (= lambda!267746 lambda!267677)))

(declare-fun bs!1226222 () Bool)

(assert (= bs!1226222 (and d!1701744 d!1701422)))

(assert (=> bs!1226222 (not (= lambda!267746 lambda!267688))))

(declare-fun bs!1226224 () Bool)

(assert (= bs!1226224 (and d!1701744 d!1701526)))

(assert (=> bs!1226224 (= lambda!267746 lambda!267708)))

(assert (=> d!1701744 (= (nullableZipper!1308 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326))) (exists!2003 (derivationStepZipper!1164 lt!2161312 (h!67386 s!2326)) lambda!267746))))

(declare-fun bs!1226227 () Bool)

(assert (= bs!1226227 d!1701744))

(assert (=> bs!1226227 m!6325276))

(declare-fun m!6327146 () Bool)

(assert (=> bs!1226227 m!6327146))

(assert (=> b!5288483 d!1701744))

(declare-fun d!1701750 () Bool)

(assert (=> d!1701750 (= (nullable!5090 lt!2161300) (nullableFct!1460 lt!2161300))))

(declare-fun bs!1226231 () Bool)

(assert (= bs!1226231 d!1701750))

(declare-fun m!6327148 () Bool)

(assert (=> bs!1226231 m!6327148))

(assert (=> b!5288647 d!1701750))

(declare-fun b!5289660 () Bool)

(declare-fun res!2243426 () Bool)

(declare-fun e!3288534 () Bool)

(assert (=> b!5289660 (=> (not res!2243426) (not e!3288534))))

(declare-fun call!376932 () Bool)

(assert (=> b!5289660 (= res!2243426 call!376932)))

(declare-fun e!3288538 () Bool)

(assert (=> b!5289660 (= e!3288538 e!3288534)))

(declare-fun b!5289661 () Bool)

(declare-fun e!3288537 () Bool)

(declare-fun e!3288533 () Bool)

(assert (=> b!5289661 (= e!3288537 e!3288533)))

(declare-fun res!2243423 () Bool)

(assert (=> b!5289661 (= res!2243423 (not (nullable!5090 (reg!15250 lt!2161461))))))

(assert (=> b!5289661 (=> (not res!2243423) (not e!3288533))))

(declare-fun b!5289662 () Bool)

(assert (=> b!5289662 (= e!3288537 e!3288538)))

(declare-fun c!917575 () Bool)

(assert (=> b!5289662 (= c!917575 ((_ is Union!14921) lt!2161461))))

(declare-fun b!5289663 () Bool)

(declare-fun e!3288535 () Bool)

(assert (=> b!5289663 (= e!3288535 e!3288537)))

(declare-fun c!917576 () Bool)

(assert (=> b!5289663 (= c!917576 ((_ is Star!14921) lt!2161461))))

(declare-fun d!1701752 () Bool)

(declare-fun res!2243427 () Bool)

(assert (=> d!1701752 (=> res!2243427 e!3288535)))

(assert (=> d!1701752 (= res!2243427 ((_ is ElementMatch!14921) lt!2161461))))

(assert (=> d!1701752 (= (validRegex!6657 lt!2161461) e!3288535)))

(declare-fun b!5289664 () Bool)

(declare-fun res!2243425 () Bool)

(declare-fun e!3288536 () Bool)

(assert (=> b!5289664 (=> res!2243425 e!3288536)))

(assert (=> b!5289664 (= res!2243425 (not ((_ is Concat!23766) lt!2161461)))))

(assert (=> b!5289664 (= e!3288538 e!3288536)))

(declare-fun b!5289665 () Bool)

(declare-fun call!376934 () Bool)

(assert (=> b!5289665 (= e!3288533 call!376934)))

(declare-fun bm!376927 () Bool)

(assert (=> bm!376927 (= call!376932 (validRegex!6657 (ite c!917575 (regOne!30355 lt!2161461) (regOne!30354 lt!2161461))))))

(declare-fun bm!376928 () Bool)

(assert (=> bm!376928 (= call!376934 (validRegex!6657 (ite c!917576 (reg!15250 lt!2161461) (ite c!917575 (regTwo!30355 lt!2161461) (regTwo!30354 lt!2161461)))))))

(declare-fun b!5289666 () Bool)

(declare-fun call!376933 () Bool)

(assert (=> b!5289666 (= e!3288534 call!376933)))

(declare-fun bm!376929 () Bool)

(assert (=> bm!376929 (= call!376933 call!376934)))

(declare-fun b!5289667 () Bool)

(declare-fun e!3288532 () Bool)

(assert (=> b!5289667 (= e!3288536 e!3288532)))

(declare-fun res!2243424 () Bool)

(assert (=> b!5289667 (=> (not res!2243424) (not e!3288532))))

(assert (=> b!5289667 (= res!2243424 call!376932)))

(declare-fun b!5289668 () Bool)

(assert (=> b!5289668 (= e!3288532 call!376933)))

(assert (= (and d!1701752 (not res!2243427)) b!5289663))

(assert (= (and b!5289663 c!917576) b!5289661))

(assert (= (and b!5289663 (not c!917576)) b!5289662))

(assert (= (and b!5289661 res!2243423) b!5289665))

(assert (= (and b!5289662 c!917575) b!5289660))

(assert (= (and b!5289662 (not c!917575)) b!5289664))

(assert (= (and b!5289660 res!2243426) b!5289666))

(assert (= (and b!5289664 (not res!2243425)) b!5289667))

(assert (= (and b!5289667 res!2243424) b!5289668))

(assert (= (or b!5289666 b!5289668) bm!376929))

(assert (= (or b!5289660 b!5289667) bm!376927))

(assert (= (or b!5289665 bm!376929) bm!376928))

(declare-fun m!6327150 () Bool)

(assert (=> b!5289661 m!6327150))

(declare-fun m!6327152 () Bool)

(assert (=> bm!376927 m!6327152))

(declare-fun m!6327154 () Bool)

(assert (=> bm!376928 m!6327154))

(assert (=> d!1701190 d!1701752))

(assert (=> d!1701190 d!1701172))

(assert (=> d!1701190 d!1701182))

(assert (=> b!5288568 d!1701240))

(declare-fun d!1701754 () Bool)

(assert (=> d!1701754 (= (isEmpty!32892 lt!2161306) ((_ is Nil!60939) lt!2161306))))

(assert (=> b!5288642 d!1701754))

(assert (=> b!5288678 d!1701572))

(assert (=> b!5288678 d!1701574))

(declare-fun d!1701756 () Bool)

(assert (=> d!1701756 (= (isEmptyExpr!843 lt!2161399) ((_ is EmptyExpr!14921) lt!2161399))))

(assert (=> b!5288104 d!1701756))

(declare-fun b!5289671 () Bool)

(declare-fun e!3288542 () (InoxSet Context!8610))

(declare-fun call!376938 () (InoxSet Context!8610))

(assert (=> b!5289671 (= e!3288542 call!376938)))

(declare-fun bm!376930 () Bool)

(declare-fun call!376937 () (InoxSet Context!8610))

(declare-fun call!376939 () List!61063)

(declare-fun c!917581 () Bool)

(assert (=> bm!376930 (= call!376937 (derivationStepZipperDown!369 (ite c!917581 (regTwo!30355 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (regOne!30354 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))) (ite c!917581 (ite c!917046 lt!2161287 (Context!8611 call!376650)) (Context!8611 call!376939)) (h!67386 s!2326)))))

(declare-fun b!5289672 () Bool)

(declare-fun e!3288543 () (InoxSet Context!8610))

(assert (=> b!5289672 (= e!3288543 call!376938)))

(declare-fun c!917580 () Bool)

(declare-fun bm!376931 () Bool)

(declare-fun c!917579 () Bool)

(assert (=> bm!376931 (= call!376939 ($colon$colon!1358 (exprs!4805 (ite c!917046 lt!2161287 (Context!8611 call!376650))) (ite (or c!917580 c!917579) (regTwo!30354 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))))))

(declare-fun call!376936 () List!61063)

(declare-fun bm!376932 () Bool)

(declare-fun call!376935 () (InoxSet Context!8610))

(assert (=> bm!376932 (= call!376935 (derivationStepZipperDown!369 (ite c!917581 (regOne!30355 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (ite c!917580 (regTwo!30354 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (ite c!917579 (regOne!30354 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (reg!15250 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))))) (ite (or c!917581 c!917580) (ite c!917046 lt!2161287 (Context!8611 call!376650)) (Context!8611 call!376936)) (h!67386 s!2326)))))

(declare-fun bm!376933 () Bool)

(declare-fun call!376940 () (InoxSet Context!8610))

(assert (=> bm!376933 (= call!376938 call!376940)))

(declare-fun bm!376934 () Bool)

(assert (=> bm!376934 (= call!376940 call!376935)))

(declare-fun b!5289673 () Bool)

(declare-fun e!3288541 () Bool)

(assert (=> b!5289673 (= c!917580 e!3288541)))

(declare-fun res!2243428 () Bool)

(assert (=> b!5289673 (=> (not res!2243428) (not e!3288541))))

(assert (=> b!5289673 (= res!2243428 ((_ is Concat!23766) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun e!3288545 () (InoxSet Context!8610))

(declare-fun e!3288544 () (InoxSet Context!8610))

(assert (=> b!5289673 (= e!3288545 e!3288544)))

(declare-fun c!917578 () Bool)

(declare-fun d!1701760 () Bool)

(assert (=> d!1701760 (= c!917578 (and ((_ is ElementMatch!14921) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (= (c!916969 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))) (h!67386 s!2326))))))

(declare-fun e!3288540 () (InoxSet Context!8610))

(assert (=> d!1701760 (= (derivationStepZipperDown!369 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))) (ite c!917046 lt!2161287 (Context!8611 call!376650)) (h!67386 s!2326)) e!3288540)))

(declare-fun bm!376935 () Bool)

(assert (=> bm!376935 (= call!376936 call!376939)))

(declare-fun b!5289674 () Bool)

(assert (=> b!5289674 (= e!3288545 ((_ map or) call!376935 call!376937))))

(declare-fun b!5289675 () Bool)

(assert (=> b!5289675 (= e!3288540 e!3288545)))

(assert (=> b!5289675 (= c!917581 ((_ is Union!14921) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5289676 () Bool)

(declare-fun c!917582 () Bool)

(assert (=> b!5289676 (= c!917582 ((_ is Star!14921) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(assert (=> b!5289676 (= e!3288543 e!3288542)))

(declare-fun b!5289677 () Bool)

(assert (=> b!5289677 (= e!3288542 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289678 () Bool)

(assert (=> b!5289678 (= e!3288544 ((_ map or) call!376937 call!376940))))

(declare-fun b!5289679 () Bool)

(assert (=> b!5289679 (= e!3288541 (nullable!5090 (regOne!30354 (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))))))

(declare-fun b!5289680 () Bool)

(assert (=> b!5289680 (= e!3288540 (store ((as const (Array Context!8610 Bool)) false) (ite c!917046 lt!2161287 (Context!8611 call!376650)) true))))

(declare-fun b!5289681 () Bool)

(assert (=> b!5289681 (= e!3288544 e!3288543)))

(assert (=> b!5289681 (= c!917579 ((_ is Concat!23766) (ite c!917046 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(assert (= (and d!1701760 c!917578) b!5289680))

(assert (= (and d!1701760 (not c!917578)) b!5289675))

(assert (= (and b!5289675 c!917581) b!5289674))

(assert (= (and b!5289675 (not c!917581)) b!5289673))

(assert (= (and b!5289673 res!2243428) b!5289679))

(assert (= (and b!5289673 c!917580) b!5289678))

(assert (= (and b!5289673 (not c!917580)) b!5289681))

(assert (= (and b!5289681 c!917579) b!5289672))

(assert (= (and b!5289681 (not c!917579)) b!5289676))

(assert (= (and b!5289676 c!917582) b!5289671))

(assert (= (and b!5289676 (not c!917582)) b!5289677))

(assert (= (or b!5289672 b!5289671) bm!376935))

(assert (= (or b!5289672 b!5289671) bm!376933))

(assert (= (or b!5289678 bm!376935) bm!376931))

(assert (= (or b!5289678 bm!376933) bm!376934))

(assert (= (or b!5289674 b!5289678) bm!376930))

(assert (= (or b!5289674 bm!376934) bm!376932))

(declare-fun m!6327180 () Bool)

(assert (=> b!5289680 m!6327180))

(declare-fun m!6327182 () Bool)

(assert (=> bm!376931 m!6327182))

(declare-fun m!6327184 () Bool)

(assert (=> bm!376932 m!6327184))

(declare-fun m!6327186 () Bool)

(assert (=> b!5289679 m!6327186))

(declare-fun m!6327188 () Bool)

(assert (=> bm!376930 m!6327188))

(assert (=> bm!376641 d!1701760))

(declare-fun d!1701764 () Bool)

(assert (=> d!1701764 (= (head!11335 lt!2161282) (h!67387 lt!2161282))))

(assert (=> b!5288563 d!1701764))

(declare-fun d!1701768 () Bool)

(assert (=> d!1701768 (= (flatMap!648 lt!2161312 lambda!267640) (choose!39488 lt!2161312 lambda!267640))))

(declare-fun bs!1226250 () Bool)

(assert (= bs!1226250 d!1701768))

(declare-fun m!6327192 () Bool)

(assert (=> bs!1226250 m!6327192))

(assert (=> d!1701188 d!1701768))

(declare-fun d!1701770 () Bool)

(assert (=> d!1701770 (= (isEmpty!32896 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326)) (not ((_ is Some!15031) (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 Nil!60938 s!2326 s!2326))))))

(assert (=> d!1701236 d!1701770))

(declare-fun d!1701774 () Bool)

(declare-fun c!917584 () Bool)

(assert (=> d!1701774 (= c!917584 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288547 () Bool)

(assert (=> d!1701774 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161309 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288547)))

(declare-fun b!5289684 () Bool)

(assert (=> b!5289684 (= e!3288547 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161309 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5289685 () Bool)

(assert (=> b!5289685 (= e!3288547 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161309 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701774 c!917584) b!5289684))

(assert (= (and d!1701774 (not c!917584)) b!5289685))

(assert (=> d!1701774 m!6325492))

(assert (=> d!1701774 m!6326388))

(assert (=> b!5289684 m!6325490))

(declare-fun m!6327200 () Bool)

(assert (=> b!5289684 m!6327200))

(assert (=> b!5289685 m!6325492))

(assert (=> b!5289685 m!6326392))

(assert (=> b!5289685 m!6325490))

(assert (=> b!5289685 m!6326392))

(declare-fun m!6327202 () Bool)

(assert (=> b!5289685 m!6327202))

(assert (=> b!5289685 m!6325492))

(assert (=> b!5289685 m!6326396))

(assert (=> b!5289685 m!6327202))

(assert (=> b!5289685 m!6326396))

(declare-fun m!6327204 () Bool)

(assert (=> b!5289685 m!6327204))

(assert (=> b!5287939 d!1701774))

(declare-fun bs!1226265 () Bool)

(declare-fun d!1701776 () Bool)

(assert (= bs!1226265 (and d!1701776 d!1701188)))

(declare-fun lambda!267750 () Int)

(assert (=> bs!1226265 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267750 lambda!267640))))

(declare-fun bs!1226266 () Bool)

(assert (= bs!1226266 (and d!1701776 b!5287682)))

(assert (=> bs!1226266 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267750 lambda!267546))))

(declare-fun bs!1226268 () Bool)

(assert (= bs!1226268 (and d!1701776 d!1701704)))

(assert (=> bs!1226268 (= lambda!267750 lambda!267741)))

(declare-fun bs!1226269 () Bool)

(assert (= bs!1226269 (and d!1701776 d!1701708)))

(assert (=> bs!1226269 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267750 lambda!267742))))

(declare-fun bs!1226270 () Bool)

(assert (= bs!1226270 (and d!1701776 d!1701364)))

(assert (=> bs!1226270 (= lambda!267750 lambda!267678)))

(declare-fun bs!1226271 () Bool)

(assert (= bs!1226271 (and d!1701776 d!1701080)))

(assert (=> bs!1226271 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267750 lambda!267614))))

(declare-fun bs!1226272 () Bool)

(assert (= bs!1226272 (and d!1701776 d!1701496)))

(assert (=> bs!1226272 (= lambda!267750 lambda!267705)))

(assert (=> d!1701776 true))

(assert (=> d!1701776 (= (derivationStepZipper!1164 lt!2161309 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161309 lambda!267750))))

(declare-fun bs!1226273 () Bool)

(assert (= bs!1226273 d!1701776))

(declare-fun m!6327208 () Bool)

(assert (=> bs!1226273 m!6327208))

(assert (=> b!5287939 d!1701776))

(assert (=> b!5287939 d!1701366))

(assert (=> b!5287939 d!1701370))

(declare-fun d!1701782 () Bool)

(assert (=> d!1701782 (= (isEmpty!32892 (unfocusZipperList!363 zl!343)) ((_ is Nil!60939) (unfocusZipperList!363 zl!343)))))

(assert (=> b!5288470 d!1701782))

(declare-fun d!1701784 () Bool)

(assert (=> d!1701784 true))

(assert (=> d!1701784 true))

(declare-fun res!2243434 () Bool)

(assert (=> d!1701784 (= (choose!39491 lambda!267547) res!2243434)))

(assert (=> d!1701206 d!1701784))

(declare-fun d!1701786 () Bool)

(assert (=> d!1701786 (= (isDefined!11735 lt!2161433) (not (isEmpty!32896 lt!2161433)))))

(declare-fun bs!1226274 () Bool)

(assert (= bs!1226274 d!1701786))

(declare-fun m!6327210 () Bool)

(assert (=> bs!1226274 m!6327210))

(assert (=> d!1701122 d!1701786))

(declare-fun b!5289695 () Bool)

(declare-fun e!3288556 () Bool)

(assert (=> b!5289695 (= e!3288556 (not (= (head!11334 Nil!60938) (c!916969 (regOne!30354 r!7292)))))))

(declare-fun b!5289696 () Bool)

(declare-fun e!3288555 () Bool)

(assert (=> b!5289696 (= e!3288555 (nullable!5090 (regOne!30354 r!7292)))))

(declare-fun d!1701788 () Bool)

(declare-fun e!3288560 () Bool)

(assert (=> d!1701788 e!3288560))

(declare-fun c!917588 () Bool)

(assert (=> d!1701788 (= c!917588 ((_ is EmptyExpr!14921) (regOne!30354 r!7292)))))

(declare-fun lt!2161572 () Bool)

(assert (=> d!1701788 (= lt!2161572 e!3288555)))

(declare-fun c!917587 () Bool)

(assert (=> d!1701788 (= c!917587 (isEmpty!32895 Nil!60938))))

(assert (=> d!1701788 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1701788 (= (matchR!7106 (regOne!30354 r!7292) Nil!60938) lt!2161572)))

(declare-fun b!5289697 () Bool)

(declare-fun e!3288561 () Bool)

(assert (=> b!5289697 (= e!3288561 (= (head!11334 Nil!60938) (c!916969 (regOne!30354 r!7292))))))

(declare-fun b!5289698 () Bool)

(declare-fun e!3288559 () Bool)

(assert (=> b!5289698 (= e!3288560 e!3288559)))

(declare-fun c!917589 () Bool)

(assert (=> b!5289698 (= c!917589 ((_ is EmptyLang!14921) (regOne!30354 r!7292)))))

(declare-fun b!5289699 () Bool)

(assert (=> b!5289699 (= e!3288555 (matchR!7106 (derivativeStep!4129 (regOne!30354 r!7292) (head!11334 Nil!60938)) (tail!10430 Nil!60938)))))

(declare-fun b!5289700 () Bool)

(declare-fun res!2243442 () Bool)

(assert (=> b!5289700 (=> (not res!2243442) (not e!3288561))))

(assert (=> b!5289700 (= res!2243442 (isEmpty!32895 (tail!10430 Nil!60938)))))

(declare-fun b!5289701 () Bool)

(declare-fun e!3288557 () Bool)

(declare-fun e!3288558 () Bool)

(assert (=> b!5289701 (= e!3288557 e!3288558)))

(declare-fun res!2243441 () Bool)

(assert (=> b!5289701 (=> (not res!2243441) (not e!3288558))))

(assert (=> b!5289701 (= res!2243441 (not lt!2161572))))

(declare-fun b!5289702 () Bool)

(declare-fun res!2243439 () Bool)

(assert (=> b!5289702 (=> res!2243439 e!3288557)))

(assert (=> b!5289702 (= res!2243439 e!3288561)))

(declare-fun res!2243440 () Bool)

(assert (=> b!5289702 (=> (not res!2243440) (not e!3288561))))

(assert (=> b!5289702 (= res!2243440 lt!2161572)))

(declare-fun b!5289703 () Bool)

(declare-fun call!376944 () Bool)

(assert (=> b!5289703 (= e!3288560 (= lt!2161572 call!376944))))

(declare-fun b!5289704 () Bool)

(assert (=> b!5289704 (= e!3288558 e!3288556)))

(declare-fun res!2243435 () Bool)

(assert (=> b!5289704 (=> res!2243435 e!3288556)))

(assert (=> b!5289704 (= res!2243435 call!376944)))

(declare-fun bm!376939 () Bool)

(assert (=> bm!376939 (= call!376944 (isEmpty!32895 Nil!60938))))

(declare-fun b!5289705 () Bool)

(declare-fun res!2243436 () Bool)

(assert (=> b!5289705 (=> res!2243436 e!3288557)))

(assert (=> b!5289705 (= res!2243436 (not ((_ is ElementMatch!14921) (regOne!30354 r!7292))))))

(assert (=> b!5289705 (= e!3288559 e!3288557)))

(declare-fun b!5289706 () Bool)

(declare-fun res!2243438 () Bool)

(assert (=> b!5289706 (=> res!2243438 e!3288556)))

(assert (=> b!5289706 (= res!2243438 (not (isEmpty!32895 (tail!10430 Nil!60938))))))

(declare-fun b!5289707 () Bool)

(declare-fun res!2243437 () Bool)

(assert (=> b!5289707 (=> (not res!2243437) (not e!3288561))))

(assert (=> b!5289707 (= res!2243437 (not call!376944))))

(declare-fun b!5289708 () Bool)

(assert (=> b!5289708 (= e!3288559 (not lt!2161572))))

(assert (= (and d!1701788 c!917587) b!5289696))

(assert (= (and d!1701788 (not c!917587)) b!5289699))

(assert (= (and d!1701788 c!917588) b!5289703))

(assert (= (and d!1701788 (not c!917588)) b!5289698))

(assert (= (and b!5289698 c!917589) b!5289708))

(assert (= (and b!5289698 (not c!917589)) b!5289705))

(assert (= (and b!5289705 (not res!2243436)) b!5289702))

(assert (= (and b!5289702 res!2243440) b!5289707))

(assert (= (and b!5289707 res!2243437) b!5289700))

(assert (= (and b!5289700 res!2243442) b!5289697))

(assert (= (and b!5289702 (not res!2243439)) b!5289701))

(assert (= (and b!5289701 res!2243441) b!5289704))

(assert (= (and b!5289704 (not res!2243435)) b!5289706))

(assert (= (and b!5289706 (not res!2243438)) b!5289695))

(assert (= (or b!5289703 b!5289704 b!5289707) bm!376939))

(declare-fun m!6327218 () Bool)

(assert (=> b!5289697 m!6327218))

(declare-fun m!6327220 () Bool)

(assert (=> b!5289706 m!6327220))

(assert (=> b!5289706 m!6327220))

(declare-fun m!6327222 () Bool)

(assert (=> b!5289706 m!6327222))

(assert (=> b!5289700 m!6327220))

(assert (=> b!5289700 m!6327220))

(assert (=> b!5289700 m!6327222))

(assert (=> b!5289695 m!6327218))

(assert (=> b!5289696 m!6326964))

(declare-fun m!6327224 () Bool)

(assert (=> bm!376939 m!6327224))

(assert (=> b!5289699 m!6327218))

(assert (=> b!5289699 m!6327218))

(declare-fun m!6327226 () Bool)

(assert (=> b!5289699 m!6327226))

(assert (=> b!5289699 m!6327220))

(assert (=> b!5289699 m!6327226))

(assert (=> b!5289699 m!6327220))

(declare-fun m!6327228 () Bool)

(assert (=> b!5289699 m!6327228))

(assert (=> d!1701788 m!6327224))

(assert (=> d!1701788 m!6325868))

(assert (=> d!1701122 d!1701788))

(declare-fun b!5289709 () Bool)

(declare-fun res!2243446 () Bool)

(declare-fun e!3288564 () Bool)

(assert (=> b!5289709 (=> (not res!2243446) (not e!3288564))))

(declare-fun call!376945 () Bool)

(assert (=> b!5289709 (= res!2243446 call!376945)))

(declare-fun e!3288568 () Bool)

(assert (=> b!5289709 (= e!3288568 e!3288564)))

(declare-fun b!5289710 () Bool)

(declare-fun e!3288567 () Bool)

(declare-fun e!3288563 () Bool)

(assert (=> b!5289710 (= e!3288567 e!3288563)))

(declare-fun res!2243443 () Bool)

(assert (=> b!5289710 (= res!2243443 (not (nullable!5090 (reg!15250 (regOne!30354 r!7292)))))))

(assert (=> b!5289710 (=> (not res!2243443) (not e!3288563))))

(declare-fun b!5289711 () Bool)

(assert (=> b!5289711 (= e!3288567 e!3288568)))

(declare-fun c!917590 () Bool)

(assert (=> b!5289711 (= c!917590 ((_ is Union!14921) (regOne!30354 r!7292)))))

(declare-fun b!5289712 () Bool)

(declare-fun e!3288565 () Bool)

(assert (=> b!5289712 (= e!3288565 e!3288567)))

(declare-fun c!917591 () Bool)

(assert (=> b!5289712 (= c!917591 ((_ is Star!14921) (regOne!30354 r!7292)))))

(declare-fun d!1701792 () Bool)

(declare-fun res!2243447 () Bool)

(assert (=> d!1701792 (=> res!2243447 e!3288565)))

(assert (=> d!1701792 (= res!2243447 ((_ is ElementMatch!14921) (regOne!30354 r!7292)))))

(assert (=> d!1701792 (= (validRegex!6657 (regOne!30354 r!7292)) e!3288565)))

(declare-fun b!5289713 () Bool)

(declare-fun res!2243445 () Bool)

(declare-fun e!3288566 () Bool)

(assert (=> b!5289713 (=> res!2243445 e!3288566)))

(assert (=> b!5289713 (= res!2243445 (not ((_ is Concat!23766) (regOne!30354 r!7292))))))

(assert (=> b!5289713 (= e!3288568 e!3288566)))

(declare-fun b!5289714 () Bool)

(declare-fun call!376947 () Bool)

(assert (=> b!5289714 (= e!3288563 call!376947)))

(declare-fun bm!376940 () Bool)

(assert (=> bm!376940 (= call!376945 (validRegex!6657 (ite c!917590 (regOne!30355 (regOne!30354 r!7292)) (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun bm!376941 () Bool)

(assert (=> bm!376941 (= call!376947 (validRegex!6657 (ite c!917591 (reg!15250 (regOne!30354 r!7292)) (ite c!917590 (regTwo!30355 (regOne!30354 r!7292)) (regTwo!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5289715 () Bool)

(declare-fun call!376946 () Bool)

(assert (=> b!5289715 (= e!3288564 call!376946)))

(declare-fun bm!376942 () Bool)

(assert (=> bm!376942 (= call!376946 call!376947)))

(declare-fun b!5289716 () Bool)

(declare-fun e!3288562 () Bool)

(assert (=> b!5289716 (= e!3288566 e!3288562)))

(declare-fun res!2243444 () Bool)

(assert (=> b!5289716 (=> (not res!2243444) (not e!3288562))))

(assert (=> b!5289716 (= res!2243444 call!376945)))

(declare-fun b!5289717 () Bool)

(assert (=> b!5289717 (= e!3288562 call!376946)))

(assert (= (and d!1701792 (not res!2243447)) b!5289712))

(assert (= (and b!5289712 c!917591) b!5289710))

(assert (= (and b!5289712 (not c!917591)) b!5289711))

(assert (= (and b!5289710 res!2243443) b!5289714))

(assert (= (and b!5289711 c!917590) b!5289709))

(assert (= (and b!5289711 (not c!917590)) b!5289713))

(assert (= (and b!5289709 res!2243446) b!5289715))

(assert (= (and b!5289713 (not res!2243445)) b!5289716))

(assert (= (and b!5289716 res!2243444) b!5289717))

(assert (= (or b!5289715 b!5289717) bm!376942))

(assert (= (or b!5289709 b!5289716) bm!376940))

(assert (= (or b!5289714 bm!376942) bm!376941))

(declare-fun m!6327230 () Bool)

(assert (=> b!5289710 m!6327230))

(declare-fun m!6327232 () Bool)

(assert (=> bm!376940 m!6327232))

(declare-fun m!6327234 () Bool)

(assert (=> bm!376941 m!6327234))

(assert (=> d!1701122 d!1701792))

(declare-fun bs!1226275 () Bool)

(declare-fun d!1701794 () Bool)

(assert (= bs!1226275 (and d!1701794 d!1701532)))

(declare-fun lambda!267751 () Int)

(assert (=> bs!1226275 (= lambda!267751 lambda!267712)))

(declare-fun bs!1226276 () Bool)

(assert (= bs!1226276 (and d!1701794 d!1701482)))

(assert (=> bs!1226276 (= lambda!267751 lambda!267703)))

(declare-fun bs!1226277 () Bool)

(assert (= bs!1226277 (and d!1701794 b!5288015)))

(assert (=> bs!1226277 (not (= lambda!267751 lambda!267598))))

(declare-fun bs!1226278 () Bool)

(assert (= bs!1226278 (and d!1701794 d!1701540)))

(assert (=> bs!1226278 (= lambda!267751 lambda!267715)))

(declare-fun bs!1226279 () Bool)

(assert (= bs!1226279 (and d!1701794 b!5288013)))

(assert (=> bs!1226279 (not (= lambda!267751 lambda!267595))))

(declare-fun bs!1226280 () Bool)

(assert (= bs!1226280 (and d!1701794 b!5289107)))

(assert (=> bs!1226280 (not (= lambda!267751 lambda!267699))))

(declare-fun bs!1226281 () Bool)

(assert (= bs!1226281 (and d!1701794 b!5288022)))

(assert (=> bs!1226281 (not (= lambda!267751 lambda!267600))))

(declare-fun bs!1226282 () Bool)

(assert (= bs!1226282 (and d!1701794 d!1701694)))

(assert (=> bs!1226282 (= lambda!267751 lambda!267740)))

(declare-fun bs!1226283 () Bool)

(assert (= bs!1226283 (and d!1701794 d!1701744)))

(assert (=> bs!1226283 (= lambda!267751 lambda!267746)))

(declare-fun bs!1226284 () Bool)

(assert (= bs!1226284 (and d!1701794 d!1701476)))

(assert (=> bs!1226284 (= lambda!267751 lambda!267702)))

(declare-fun bs!1226285 () Bool)

(assert (= bs!1226285 (and d!1701794 b!5288024)))

(assert (=> bs!1226285 (not (= lambda!267751 lambda!267601))))

(declare-fun bs!1226286 () Bool)

(assert (= bs!1226286 (and d!1701794 b!5289109)))

(assert (=> bs!1226286 (not (= lambda!267751 lambda!267700))))

(declare-fun bs!1226287 () Bool)

(assert (= bs!1226287 (and d!1701794 d!1701538)))

(assert (=> bs!1226287 (= lambda!267751 lambda!267714)))

(declare-fun bs!1226288 () Bool)

(assert (= bs!1226288 (and d!1701794 d!1701348)))

(assert (=> bs!1226288 (= lambda!267751 lambda!267677)))

(declare-fun bs!1226289 () Bool)

(assert (= bs!1226289 (and d!1701794 d!1701422)))

(assert (=> bs!1226289 (not (= lambda!267751 lambda!267688))))

(declare-fun bs!1226290 () Bool)

(assert (= bs!1226290 (and d!1701794 d!1701526)))

(assert (=> bs!1226290 (= lambda!267751 lambda!267708)))

(assert (=> d!1701794 (= (nullableZipper!1308 lt!2161305) (exists!2003 lt!2161305 lambda!267751))))

(declare-fun bs!1226291 () Bool)

(assert (= bs!1226291 d!1701794))

(declare-fun m!6327236 () Bool)

(assert (=> bs!1226291 m!6327236))

(assert (=> b!5288217 d!1701794))

(declare-fun d!1701796 () Bool)

(assert (=> d!1701796 (= (isConcat!366 lt!2161466) ((_ is Concat!23766) lt!2161466))))

(assert (=> b!5288559 d!1701796))

(declare-fun d!1701798 () Bool)

(assert (=> d!1701798 (= (nullable!5090 (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))) (nullableFct!1460 (regOne!30354 (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun bs!1226292 () Bool)

(assert (= bs!1226292 d!1701798))

(declare-fun m!6327238 () Bool)

(assert (=> bs!1226292 m!6327238))

(assert (=> b!5287911 d!1701798))

(declare-fun bs!1226293 () Bool)

(declare-fun d!1701802 () Bool)

(assert (= bs!1226293 (and d!1701802 d!1701532)))

(declare-fun lambda!267752 () Int)

(assert (=> bs!1226293 (= lambda!267752 lambda!267712)))

(declare-fun bs!1226294 () Bool)

(assert (= bs!1226294 (and d!1701802 d!1701482)))

(assert (=> bs!1226294 (= lambda!267752 lambda!267703)))

(declare-fun bs!1226295 () Bool)

(assert (= bs!1226295 (and d!1701802 b!5288015)))

(assert (=> bs!1226295 (not (= lambda!267752 lambda!267598))))

(declare-fun bs!1226297 () Bool)

(assert (= bs!1226297 (and d!1701802 d!1701540)))

(assert (=> bs!1226297 (= lambda!267752 lambda!267715)))

(declare-fun bs!1226298 () Bool)

(assert (= bs!1226298 (and d!1701802 d!1701794)))

(assert (=> bs!1226298 (= lambda!267752 lambda!267751)))

(declare-fun bs!1226299 () Bool)

(assert (= bs!1226299 (and d!1701802 b!5288013)))

(assert (=> bs!1226299 (not (= lambda!267752 lambda!267595))))

(declare-fun bs!1226300 () Bool)

(assert (= bs!1226300 (and d!1701802 b!5289107)))

(assert (=> bs!1226300 (not (= lambda!267752 lambda!267699))))

(declare-fun bs!1226301 () Bool)

(assert (= bs!1226301 (and d!1701802 b!5288022)))

(assert (=> bs!1226301 (not (= lambda!267752 lambda!267600))))

(declare-fun bs!1226303 () Bool)

(assert (= bs!1226303 (and d!1701802 d!1701694)))

(assert (=> bs!1226303 (= lambda!267752 lambda!267740)))

(declare-fun bs!1226304 () Bool)

(assert (= bs!1226304 (and d!1701802 d!1701744)))

(assert (=> bs!1226304 (= lambda!267752 lambda!267746)))

(declare-fun bs!1226305 () Bool)

(assert (= bs!1226305 (and d!1701802 d!1701476)))

(assert (=> bs!1226305 (= lambda!267752 lambda!267702)))

(declare-fun bs!1226306 () Bool)

(assert (= bs!1226306 (and d!1701802 b!5288024)))

(assert (=> bs!1226306 (not (= lambda!267752 lambda!267601))))

(declare-fun bs!1226307 () Bool)

(assert (= bs!1226307 (and d!1701802 b!5289109)))

(assert (=> bs!1226307 (not (= lambda!267752 lambda!267700))))

(declare-fun bs!1226308 () Bool)

(assert (= bs!1226308 (and d!1701802 d!1701538)))

(assert (=> bs!1226308 (= lambda!267752 lambda!267714)))

(declare-fun bs!1226309 () Bool)

(assert (= bs!1226309 (and d!1701802 d!1701348)))

(assert (=> bs!1226309 (= lambda!267752 lambda!267677)))

(declare-fun bs!1226310 () Bool)

(assert (= bs!1226310 (and d!1701802 d!1701422)))

(assert (=> bs!1226310 (not (= lambda!267752 lambda!267688))))

(declare-fun bs!1226311 () Bool)

(assert (= bs!1226311 (and d!1701802 d!1701526)))

(assert (=> bs!1226311 (= lambda!267752 lambda!267708)))

(assert (=> d!1701802 (= (nullableZipper!1308 lt!2161307) (exists!2003 lt!2161307 lambda!267752))))

(declare-fun bs!1226312 () Bool)

(assert (= bs!1226312 d!1701802))

(declare-fun m!6327242 () Bool)

(assert (=> bs!1226312 m!6327242))

(assert (=> b!5288660 d!1701802))

(declare-fun d!1701812 () Bool)

(declare-fun c!917597 () Bool)

(assert (=> d!1701812 (= c!917597 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3288578 () Bool)

(assert (=> d!1701812 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161298) (t!374265 s!2326)) e!3288578)))

(declare-fun b!5289732 () Bool)

(assert (=> b!5289732 (= e!3288578 (nullableZipper!1308 ((_ map or) lt!2161296 lt!2161298)))))

(declare-fun b!5289733 () Bool)

(assert (=> b!5289733 (= e!3288578 (matchZipper!1165 (derivationStepZipper!1164 ((_ map or) lt!2161296 lt!2161298) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1701812 c!917597) b!5289732))

(assert (= (and d!1701812 (not c!917597)) b!5289733))

(assert (=> d!1701812 m!6325484))

(declare-fun m!6327244 () Bool)

(assert (=> b!5289732 m!6327244))

(assert (=> b!5289733 m!6325488))

(assert (=> b!5289733 m!6325488))

(declare-fun m!6327246 () Bool)

(assert (=> b!5289733 m!6327246))

(assert (=> b!5289733 m!6325492))

(assert (=> b!5289733 m!6327246))

(assert (=> b!5289733 m!6325492))

(declare-fun m!6327248 () Bool)

(assert (=> b!5289733 m!6327248))

(assert (=> d!1701024 d!1701812))

(assert (=> d!1701024 d!1701022))

(declare-fun d!1701814 () Bool)

(declare-fun e!3288579 () Bool)

(assert (=> d!1701814 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161298) (t!374265 s!2326)) e!3288579)))

(declare-fun res!2243452 () Bool)

(assert (=> d!1701814 (=> res!2243452 e!3288579)))

(assert (=> d!1701814 (= res!2243452 (matchZipper!1165 lt!2161296 (t!374265 s!2326)))))

(assert (=> d!1701814 true))

(declare-fun _$48!973 () Unit!153202)

(assert (=> d!1701814 (= (choose!39485 lt!2161296 lt!2161298 (t!374265 s!2326)) _$48!973)))

(declare-fun b!5289734 () Bool)

(assert (=> b!5289734 (= e!3288579 (matchZipper!1165 lt!2161298 (t!374265 s!2326)))))

(assert (= (and d!1701814 (not res!2243452)) b!5289734))

(assert (=> d!1701814 m!6325546))

(assert (=> d!1701814 m!6325178))

(assert (=> b!5289734 m!6325168))

(assert (=> d!1701024 d!1701814))

(declare-fun bs!1226313 () Bool)

(declare-fun b!5289735 () Bool)

(assert (= bs!1226313 (and b!5289735 b!5287700)))

(declare-fun lambda!267753 () Int)

(assert (=> bs!1226313 (not (= lambda!267753 lambda!267549))))

(declare-fun bs!1226314 () Bool)

(assert (= bs!1226314 (and b!5289735 b!5289082)))

(declare-fun lt!2161574 () Int)

(assert (=> bs!1226314 (= (= lt!2161574 lt!2161545) (= lambda!267753 lambda!267695))))

(declare-fun bs!1226315 () Bool)

(assert (= bs!1226315 (and b!5289735 d!1701120)))

(assert (=> bs!1226315 (not (= lambda!267753 lambda!267615))))

(declare-fun bs!1226316 () Bool)

(assert (= bs!1226316 (and b!5289735 d!1701030)))

(assert (=> bs!1226316 (not (= lambda!267753 lambda!267584))))

(declare-fun bs!1226317 () Bool)

(assert (= bs!1226317 (and b!5289735 d!1701056)))

(assert (=> bs!1226317 (not (= lambda!267753 lambda!267611))))

(declare-fun bs!1226318 () Bool)

(assert (= bs!1226318 (and b!5289735 d!1701212)))

(assert (=> bs!1226318 (not (= lambda!267753 lambda!267647))))

(declare-fun bs!1226319 () Bool)

(assert (= bs!1226319 (and b!5289735 d!1701732)))

(assert (=> bs!1226319 (not (= lambda!267753 lambda!267745))))

(declare-fun bs!1226320 () Bool)

(assert (= bs!1226320 (and b!5289735 d!1701230)))

(assert (=> bs!1226320 (not (= lambda!267753 lambda!267650))))

(declare-fun bs!1226321 () Bool)

(assert (= bs!1226321 (and b!5289735 d!1701182)))

(assert (=> bs!1226321 (not (= lambda!267753 lambda!267639))))

(declare-fun bs!1226322 () Bool)

(assert (= bs!1226322 (and b!5289735 b!5289084)))

(assert (=> bs!1226322 (= (= lt!2161574 lt!2161547) (= lambda!267753 lambda!267696))))

(declare-fun bs!1226323 () Bool)

(assert (= bs!1226323 (and b!5289735 d!1701172)))

(assert (=> bs!1226323 (not (= lambda!267753 lambda!267636))))

(assert (=> b!5289735 true))

(declare-fun bs!1226324 () Bool)

(declare-fun b!5289737 () Bool)

(assert (= bs!1226324 (and b!5289737 b!5287700)))

(declare-fun lambda!267754 () Int)

(assert (=> bs!1226324 (not (= lambda!267754 lambda!267549))))

(declare-fun bs!1226325 () Bool)

(assert (= bs!1226325 (and b!5289737 b!5289082)))

(declare-fun lt!2161576 () Int)

(assert (=> bs!1226325 (= (= lt!2161576 lt!2161545) (= lambda!267754 lambda!267695))))

(declare-fun bs!1226326 () Bool)

(assert (= bs!1226326 (and b!5289737 d!1701120)))

(assert (=> bs!1226326 (not (= lambda!267754 lambda!267615))))

(declare-fun bs!1226327 () Bool)

(assert (= bs!1226327 (and b!5289737 d!1701030)))

(assert (=> bs!1226327 (not (= lambda!267754 lambda!267584))))

(declare-fun bs!1226328 () Bool)

(assert (= bs!1226328 (and b!5289737 d!1701056)))

(assert (=> bs!1226328 (not (= lambda!267754 lambda!267611))))

(declare-fun bs!1226329 () Bool)

(assert (= bs!1226329 (and b!5289737 d!1701212)))

(assert (=> bs!1226329 (not (= lambda!267754 lambda!267647))))

(declare-fun bs!1226330 () Bool)

(assert (= bs!1226330 (and b!5289737 d!1701732)))

(assert (=> bs!1226330 (not (= lambda!267754 lambda!267745))))

(declare-fun bs!1226331 () Bool)

(assert (= bs!1226331 (and b!5289737 d!1701230)))

(assert (=> bs!1226331 (not (= lambda!267754 lambda!267650))))

(declare-fun bs!1226332 () Bool)

(assert (= bs!1226332 (and b!5289737 d!1701182)))

(assert (=> bs!1226332 (not (= lambda!267754 lambda!267639))))

(declare-fun bs!1226333 () Bool)

(assert (= bs!1226333 (and b!5289737 b!5289084)))

(assert (=> bs!1226333 (= (= lt!2161576 lt!2161547) (= lambda!267754 lambda!267696))))

(declare-fun bs!1226334 () Bool)

(assert (= bs!1226334 (and b!5289737 d!1701172)))

(assert (=> bs!1226334 (not (= lambda!267754 lambda!267636))))

(declare-fun bs!1226335 () Bool)

(assert (= bs!1226335 (and b!5289737 b!5289735)))

(assert (=> bs!1226335 (= (= lt!2161576 lt!2161574) (= lambda!267754 lambda!267753))))

(assert (=> b!5289737 true))

(declare-fun d!1701816 () Bool)

(declare-fun e!3288581 () Bool)

(assert (=> d!1701816 e!3288581))

(declare-fun res!2243453 () Bool)

(assert (=> d!1701816 (=> (not res!2243453) (not e!3288581))))

(assert (=> d!1701816 (= res!2243453 (>= lt!2161576 0))))

(declare-fun e!3288580 () Int)

(assert (=> d!1701816 (= lt!2161576 e!3288580)))

(declare-fun c!917598 () Bool)

(assert (=> d!1701816 (= c!917598 ((_ is Cons!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701816 (= (contextDepth!20 (h!67388 zl!343)) lt!2161576)))

(assert (=> b!5289735 (= e!3288580 lt!2161574)))

(assert (=> b!5289735 (= lt!2161574 (maxBigInt!0 (regexDepth!157 (h!67387 (exprs!4805 (h!67388 zl!343)))) (contextDepth!20 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun lt!2161575 () Unit!153202)

(assert (=> b!5289735 (= lt!2161575 (lemmaForallRegexDepthBiggerThanTransitive!6 (t!374266 (exprs!4805 (h!67388 zl!343))) lt!2161574 (contextDepth!20 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(assert (=> b!5289735 (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267753)))

(declare-fun lt!2161573 () Unit!153202)

(assert (=> b!5289735 (= lt!2161573 lt!2161575)))

(declare-fun b!5289736 () Bool)

(assert (=> b!5289736 (= e!3288580 0)))

(assert (=> b!5289737 (= e!3288581 (forall!14329 (exprs!4805 (h!67388 zl!343)) lambda!267754))))

(assert (= (and d!1701816 c!917598) b!5289735))

(assert (= (and d!1701816 (not c!917598)) b!5289736))

(assert (= (and d!1701816 res!2243453) b!5289737))

(declare-fun m!6327270 () Bool)

(assert (=> b!5289735 m!6327270))

(declare-fun m!6327272 () Bool)

(assert (=> b!5289735 m!6327272))

(declare-fun m!6327274 () Bool)

(assert (=> b!5289735 m!6327274))

(declare-fun m!6327276 () Bool)

(assert (=> b!5289735 m!6327276))

(assert (=> b!5289735 m!6327274))

(assert (=> b!5289735 m!6327272))

(assert (=> b!5289735 m!6327274))

(declare-fun m!6327278 () Bool)

(assert (=> b!5289735 m!6327278))

(declare-fun m!6327280 () Bool)

(assert (=> b!5289737 m!6327280))

(assert (=> b!5288022 d!1701816))

(declare-fun bs!1226336 () Bool)

(declare-fun b!5289758 () Bool)

(assert (= bs!1226336 (and b!5289758 b!5288013)))

(declare-fun lambda!267755 () Int)

(assert (=> bs!1226336 (= lambda!267755 lambda!267594)))

(declare-fun bs!1226337 () Bool)

(assert (= bs!1226337 (and b!5289758 b!5288022)))

(assert (=> bs!1226337 (= lambda!267755 lambda!267599)))

(declare-fun bs!1226338 () Bool)

(assert (= bs!1226338 (and b!5289758 b!5289107)))

(assert (=> bs!1226338 (= lambda!267755 lambda!267698)))

(declare-fun bs!1226339 () Bool)

(assert (= bs!1226339 (and b!5289758 d!1701532)))

(declare-fun lambda!267756 () Int)

(assert (=> bs!1226339 (not (= lambda!267756 lambda!267712))))

(declare-fun bs!1226340 () Bool)

(assert (= bs!1226340 (and b!5289758 d!1701482)))

(assert (=> bs!1226340 (not (= lambda!267756 lambda!267703))))

(declare-fun bs!1226341 () Bool)

(assert (= bs!1226341 (and b!5289758 b!5288015)))

(declare-fun lt!2161583 () Int)

(assert (=> bs!1226341 (= (= lt!2161583 lt!2161384) (= lambda!267756 lambda!267598))))

(declare-fun bs!1226342 () Bool)

(assert (= bs!1226342 (and b!5289758 d!1701540)))

(assert (=> bs!1226342 (not (= lambda!267756 lambda!267715))))

(declare-fun bs!1226343 () Bool)

(assert (= bs!1226343 (and b!5289758 d!1701794)))

(assert (=> bs!1226343 (not (= lambda!267756 lambda!267751))))

(assert (=> bs!1226336 (= (= lt!2161583 lt!2161386) (= lambda!267756 lambda!267595))))

(assert (=> bs!1226338 (= (= lt!2161583 lt!2161551) (= lambda!267756 lambda!267699))))

(assert (=> bs!1226337 (= (= lt!2161583 lt!2161390) (= lambda!267756 lambda!267600))))

(declare-fun bs!1226344 () Bool)

(assert (= bs!1226344 (and b!5289758 d!1701694)))

(assert (=> bs!1226344 (not (= lambda!267756 lambda!267740))))

(declare-fun bs!1226345 () Bool)

(assert (= bs!1226345 (and b!5289758 d!1701744)))

(assert (=> bs!1226345 (not (= lambda!267756 lambda!267746))))

(declare-fun bs!1226346 () Bool)

(assert (= bs!1226346 (and b!5289758 d!1701476)))

(assert (=> bs!1226346 (not (= lambda!267756 lambda!267702))))

(declare-fun bs!1226347 () Bool)

(assert (= bs!1226347 (and b!5289758 b!5289109)))

(assert (=> bs!1226347 (= (= lt!2161583 lt!2161549) (= lambda!267756 lambda!267700))))

(declare-fun bs!1226348 () Bool)

(assert (= bs!1226348 (and b!5289758 d!1701538)))

(assert (=> bs!1226348 (not (= lambda!267756 lambda!267714))))

(declare-fun bs!1226349 () Bool)

(assert (= bs!1226349 (and b!5289758 d!1701348)))

(assert (=> bs!1226349 (not (= lambda!267756 lambda!267677))))

(declare-fun bs!1226350 () Bool)

(assert (= bs!1226350 (and b!5289758 d!1701422)))

(assert (=> bs!1226350 (not (= lambda!267756 lambda!267688))))

(declare-fun bs!1226351 () Bool)

(assert (= bs!1226351 (and b!5289758 d!1701526)))

(assert (=> bs!1226351 (not (= lambda!267756 lambda!267708))))

(declare-fun bs!1226352 () Bool)

(assert (= bs!1226352 (and b!5289758 d!1701802)))

(assert (=> bs!1226352 (not (= lambda!267756 lambda!267752))))

(declare-fun bs!1226353 () Bool)

(assert (= bs!1226353 (and b!5289758 b!5288024)))

(assert (=> bs!1226353 (= (= lt!2161583 lt!2161388) (= lambda!267756 lambda!267601))))

(assert (=> b!5289758 true))

(declare-fun bs!1226354 () Bool)

(declare-fun b!5289760 () Bool)

(assert (= bs!1226354 (and b!5289760 d!1701532)))

(declare-fun lambda!267757 () Int)

(assert (=> bs!1226354 (not (= lambda!267757 lambda!267712))))

(declare-fun bs!1226355 () Bool)

(assert (= bs!1226355 (and b!5289760 d!1701482)))

(assert (=> bs!1226355 (not (= lambda!267757 lambda!267703))))

(declare-fun bs!1226356 () Bool)

(assert (= bs!1226356 (and b!5289760 b!5288015)))

(declare-fun lt!2161581 () Int)

(assert (=> bs!1226356 (= (= lt!2161581 lt!2161384) (= lambda!267757 lambda!267598))))

(declare-fun bs!1226357 () Bool)

(assert (= bs!1226357 (and b!5289760 d!1701540)))

(assert (=> bs!1226357 (not (= lambda!267757 lambda!267715))))

(declare-fun bs!1226358 () Bool)

(assert (= bs!1226358 (and b!5289760 d!1701794)))

(assert (=> bs!1226358 (not (= lambda!267757 lambda!267751))))

(declare-fun bs!1226359 () Bool)

(assert (= bs!1226359 (and b!5289760 b!5289758)))

(assert (=> bs!1226359 (= (= lt!2161581 lt!2161583) (= lambda!267757 lambda!267756))))

(declare-fun bs!1226360 () Bool)

(assert (= bs!1226360 (and b!5289760 b!5288013)))

(assert (=> bs!1226360 (= (= lt!2161581 lt!2161386) (= lambda!267757 lambda!267595))))

(declare-fun bs!1226361 () Bool)

(assert (= bs!1226361 (and b!5289760 b!5289107)))

(assert (=> bs!1226361 (= (= lt!2161581 lt!2161551) (= lambda!267757 lambda!267699))))

(declare-fun bs!1226362 () Bool)

(assert (= bs!1226362 (and b!5289760 b!5288022)))

(assert (=> bs!1226362 (= (= lt!2161581 lt!2161390) (= lambda!267757 lambda!267600))))

(declare-fun bs!1226363 () Bool)

(assert (= bs!1226363 (and b!5289760 d!1701694)))

(assert (=> bs!1226363 (not (= lambda!267757 lambda!267740))))

(declare-fun bs!1226364 () Bool)

(assert (= bs!1226364 (and b!5289760 d!1701744)))

(assert (=> bs!1226364 (not (= lambda!267757 lambda!267746))))

(declare-fun bs!1226365 () Bool)

(assert (= bs!1226365 (and b!5289760 d!1701476)))

(assert (=> bs!1226365 (not (= lambda!267757 lambda!267702))))

(declare-fun bs!1226366 () Bool)

(assert (= bs!1226366 (and b!5289760 b!5289109)))

(assert (=> bs!1226366 (= (= lt!2161581 lt!2161549) (= lambda!267757 lambda!267700))))

(declare-fun bs!1226368 () Bool)

(assert (= bs!1226368 (and b!5289760 d!1701538)))

(assert (=> bs!1226368 (not (= lambda!267757 lambda!267714))))

(declare-fun bs!1226370 () Bool)

(assert (= bs!1226370 (and b!5289760 d!1701348)))

(assert (=> bs!1226370 (not (= lambda!267757 lambda!267677))))

(declare-fun bs!1226372 () Bool)

(assert (= bs!1226372 (and b!5289760 d!1701422)))

(assert (=> bs!1226372 (not (= lambda!267757 lambda!267688))))

(declare-fun bs!1226374 () Bool)

(assert (= bs!1226374 (and b!5289760 d!1701526)))

(assert (=> bs!1226374 (not (= lambda!267757 lambda!267708))))

(declare-fun bs!1226376 () Bool)

(assert (= bs!1226376 (and b!5289760 d!1701802)))

(assert (=> bs!1226376 (not (= lambda!267757 lambda!267752))))

(declare-fun bs!1226378 () Bool)

(assert (= bs!1226378 (and b!5289760 b!5288024)))

(assert (=> bs!1226378 (= (= lt!2161581 lt!2161388) (= lambda!267757 lambda!267601))))

(assert (=> b!5289760 true))

(declare-fun d!1701822 () Bool)

(declare-fun e!3288593 () Bool)

(assert (=> d!1701822 e!3288593))

(declare-fun res!2243460 () Bool)

(assert (=> d!1701822 (=> (not res!2243460) (not e!3288593))))

(assert (=> d!1701822 (= res!2243460 (>= lt!2161581 0))))

(declare-fun e!3288594 () Int)

(assert (=> d!1701822 (= lt!2161581 e!3288594)))

(declare-fun c!917606 () Bool)

(assert (=> d!1701822 (= c!917606 ((_ is Cons!60940) (t!374267 zl!343)))))

(assert (=> d!1701822 (= (zipperDepth!38 (t!374267 zl!343)) lt!2161581)))

(assert (=> b!5289758 (= e!3288594 lt!2161583)))

(assert (=> b!5289758 (= lt!2161583 (maxBigInt!0 (contextDepth!20 (h!67388 (t!374267 zl!343))) (zipperDepth!38 (t!374267 (t!374267 zl!343)))))))

(declare-fun lt!2161580 () Unit!153202)

(assert (=> b!5289758 (= lt!2161580 (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 (t!374267 zl!343)) lt!2161583 (zipperDepth!38 (t!374267 (t!374267 zl!343))) lambda!267755))))

(assert (=> b!5289758 (forall!14331 (t!374267 (t!374267 zl!343)) lambda!267756)))

(declare-fun lt!2161582 () Unit!153202)

(assert (=> b!5289758 (= lt!2161582 lt!2161580)))

(declare-fun b!5289759 () Bool)

(assert (=> b!5289759 (= e!3288594 0)))

(assert (=> b!5289760 (= e!3288593 (forall!14331 (t!374267 zl!343) lambda!267757))))

(assert (= (and d!1701822 c!917606) b!5289758))

(assert (= (and d!1701822 (not c!917606)) b!5289759))

(assert (= (and d!1701822 res!2243460) b!5289760))

(declare-fun m!6327308 () Bool)

(assert (=> b!5289758 m!6327308))

(assert (=> b!5289758 m!6327308))

(declare-fun m!6327310 () Bool)

(assert (=> b!5289758 m!6327310))

(declare-fun m!6327312 () Bool)

(assert (=> b!5289758 m!6327312))

(assert (=> b!5289758 m!6327310))

(declare-fun m!6327316 () Bool)

(assert (=> b!5289758 m!6327316))

(declare-fun m!6327318 () Bool)

(assert (=> b!5289758 m!6327318))

(assert (=> b!5289758 m!6327310))

(declare-fun m!6327320 () Bool)

(assert (=> b!5289760 m!6327320))

(assert (=> b!5288022 d!1701822))

(declare-fun d!1701832 () Bool)

(declare-fun res!2243479 () Bool)

(declare-fun e!3288615 () Bool)

(assert (=> d!1701832 (=> res!2243479 e!3288615)))

(assert (=> d!1701832 (= res!2243479 ((_ is Nil!60940) (t!374267 zl!343)))))

(assert (=> d!1701832 (= (forall!14331 (t!374267 zl!343) lambda!267600) e!3288615)))

(declare-fun b!5289791 () Bool)

(declare-fun e!3288616 () Bool)

(assert (=> b!5289791 (= e!3288615 e!3288616)))

(declare-fun res!2243480 () Bool)

(assert (=> b!5289791 (=> (not res!2243480) (not e!3288616))))

(assert (=> b!5289791 (= res!2243480 (dynLambda!24097 lambda!267600 (h!67388 (t!374267 zl!343))))))

(declare-fun b!5289792 () Bool)

(assert (=> b!5289792 (= e!3288616 (forall!14331 (t!374267 (t!374267 zl!343)) lambda!267600))))

(assert (= (and d!1701832 (not res!2243479)) b!5289791))

(assert (= (and b!5289791 res!2243480) b!5289792))

(declare-fun b_lambda!203985 () Bool)

(assert (=> (not b_lambda!203985) (not b!5289791)))

(declare-fun m!6327322 () Bool)

(assert (=> b!5289791 m!6327322))

(declare-fun m!6327324 () Bool)

(assert (=> b!5289792 m!6327324))

(assert (=> b!5288022 d!1701832))

(declare-fun bs!1226388 () Bool)

(declare-fun d!1701834 () Bool)

(assert (= bs!1226388 (and d!1701834 d!1701532)))

(declare-fun lambda!267759 () Int)

(assert (=> bs!1226388 (not (= lambda!267759 lambda!267712))))

(declare-fun bs!1226389 () Bool)

(assert (= bs!1226389 (and d!1701834 d!1701482)))

(assert (=> bs!1226389 (not (= lambda!267759 lambda!267703))))

(declare-fun bs!1226390 () Bool)

(assert (= bs!1226390 (and d!1701834 b!5288015)))

(assert (=> bs!1226390 (not (= lambda!267759 lambda!267598))))

(declare-fun bs!1226391 () Bool)

(assert (= bs!1226391 (and d!1701834 b!5289760)))

(assert (=> bs!1226391 (not (= lambda!267759 lambda!267757))))

(declare-fun bs!1226392 () Bool)

(assert (= bs!1226392 (and d!1701834 d!1701540)))

(assert (=> bs!1226392 (not (= lambda!267759 lambda!267715))))

(declare-fun bs!1226393 () Bool)

(assert (= bs!1226393 (and d!1701834 d!1701794)))

(assert (=> bs!1226393 (not (= lambda!267759 lambda!267751))))

(declare-fun bs!1226394 () Bool)

(assert (= bs!1226394 (and d!1701834 b!5289758)))

(assert (=> bs!1226394 (not (= lambda!267759 lambda!267756))))

(declare-fun bs!1226395 () Bool)

(assert (= bs!1226395 (and d!1701834 b!5288013)))

(assert (=> bs!1226395 (not (= lambda!267759 lambda!267595))))

(declare-fun bs!1226396 () Bool)

(assert (= bs!1226396 (and d!1701834 b!5289107)))

(assert (=> bs!1226396 (not (= lambda!267759 lambda!267699))))

(declare-fun bs!1226397 () Bool)

(assert (= bs!1226397 (and d!1701834 b!5288022)))

(assert (=> bs!1226397 (not (= lambda!267759 lambda!267600))))

(declare-fun bs!1226398 () Bool)

(assert (= bs!1226398 (and d!1701834 d!1701694)))

(assert (=> bs!1226398 (not (= lambda!267759 lambda!267740))))

(declare-fun bs!1226399 () Bool)

(assert (= bs!1226399 (and d!1701834 d!1701744)))

(assert (=> bs!1226399 (not (= lambda!267759 lambda!267746))))

(declare-fun bs!1226400 () Bool)

(assert (= bs!1226400 (and d!1701834 d!1701476)))

(assert (=> bs!1226400 (not (= lambda!267759 lambda!267702))))

(declare-fun bs!1226401 () Bool)

(assert (= bs!1226401 (and d!1701834 b!5289109)))

(assert (=> bs!1226401 (not (= lambda!267759 lambda!267700))))

(declare-fun bs!1226402 () Bool)

(assert (= bs!1226402 (and d!1701834 d!1701538)))

(assert (=> bs!1226402 (not (= lambda!267759 lambda!267714))))

(declare-fun bs!1226403 () Bool)

(assert (= bs!1226403 (and d!1701834 d!1701348)))

(assert (=> bs!1226403 (not (= lambda!267759 lambda!267677))))

(declare-fun bs!1226404 () Bool)

(assert (= bs!1226404 (and d!1701834 d!1701422)))

(assert (=> bs!1226404 (= (and (= lt!2161390 lt!2161386) (= lambda!267599 lambda!267594)) (= lambda!267759 lambda!267688))))

(declare-fun bs!1226405 () Bool)

(assert (= bs!1226405 (and d!1701834 d!1701526)))

(assert (=> bs!1226405 (not (= lambda!267759 lambda!267708))))

(declare-fun bs!1226406 () Bool)

(assert (= bs!1226406 (and d!1701834 d!1701802)))

(assert (=> bs!1226406 (not (= lambda!267759 lambda!267752))))

(declare-fun bs!1226407 () Bool)

(assert (= bs!1226407 (and d!1701834 b!5288024)))

(assert (=> bs!1226407 (not (= lambda!267759 lambda!267601))))

(assert (=> d!1701834 true))

(assert (=> d!1701834 true))

(assert (=> d!1701834 (< (dynLambda!24098 order!27071 lambda!267599) (dynLambda!24099 order!27073 lambda!267759))))

(assert (=> d!1701834 (forall!14331 (t!374267 zl!343) lambda!267759)))

(declare-fun lt!2161585 () Unit!153202)

(assert (=> d!1701834 (= lt!2161585 (choose!39499 (t!374267 zl!343) lt!2161390 (zipperDepth!38 (t!374267 zl!343)) lambda!267599))))

(assert (=> d!1701834 (>= lt!2161390 (zipperDepth!38 (t!374267 zl!343)))))

(assert (=> d!1701834 (= (lemmaForallContextDepthBiggerThanTransitive!14 (t!374267 zl!343) lt!2161390 (zipperDepth!38 (t!374267 zl!343)) lambda!267599) lt!2161585)))

(declare-fun bs!1226408 () Bool)

(assert (= bs!1226408 d!1701834))

(declare-fun m!6327334 () Bool)

(assert (=> bs!1226408 m!6327334))

(assert (=> bs!1226408 m!6325602))

(declare-fun m!6327336 () Bool)

(assert (=> bs!1226408 m!6327336))

(assert (=> b!5288022 d!1701834))

(declare-fun d!1701838 () Bool)

(assert (=> d!1701838 (= (maxBigInt!0 (contextDepth!20 (h!67388 zl!343)) (zipperDepth!38 (t!374267 zl!343))) (ite (>= (contextDepth!20 (h!67388 zl!343)) (zipperDepth!38 (t!374267 zl!343))) (contextDepth!20 (h!67388 zl!343)) (zipperDepth!38 (t!374267 zl!343))))))

(assert (=> b!5288022 d!1701838))

(declare-fun b!5289825 () Bool)

(declare-fun e!3288633 () Bool)

(declare-fun lt!2161589 () List!61062)

(assert (=> b!5289825 (= e!3288633 (or (not (= (t!374265 s!2326) Nil!60938)) (= lt!2161589 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)))))))

(declare-fun d!1701840 () Bool)

(assert (=> d!1701840 e!3288633))

(declare-fun res!2243488 () Bool)

(assert (=> d!1701840 (=> (not res!2243488) (not e!3288633))))

(declare-fun content!10851 (List!61062) (InoxSet C!30112))

(assert (=> d!1701840 (= res!2243488 (= (content!10851 lt!2161589) ((_ map or) (content!10851 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))) (content!10851 (t!374265 s!2326)))))))

(declare-fun e!3288634 () List!61062)

(assert (=> d!1701840 (= lt!2161589 e!3288634)))

(declare-fun c!917624 () Bool)

(assert (=> d!1701840 (= c!917624 ((_ is Nil!60938) (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))))))

(assert (=> d!1701840 (= (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326)) lt!2161589)))

(declare-fun b!5289822 () Bool)

(assert (=> b!5289822 (= e!3288634 (t!374265 s!2326))))

(declare-fun b!5289824 () Bool)

(declare-fun res!2243489 () Bool)

(assert (=> b!5289824 (=> (not res!2243489) (not e!3288633))))

(declare-fun size!39757 (List!61062) Int)

(assert (=> b!5289824 (= res!2243489 (= (size!39757 lt!2161589) (+ (size!39757 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))) (size!39757 (t!374265 s!2326)))))))

(declare-fun b!5289823 () Bool)

(assert (=> b!5289823 (= e!3288634 (Cons!60938 (h!67386 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))) (++!13288 (t!374265 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))) (t!374265 s!2326))))))

(assert (= (and d!1701840 c!917624) b!5289822))

(assert (= (and d!1701840 (not c!917624)) b!5289823))

(assert (= (and d!1701840 res!2243488) b!5289824))

(assert (= (and b!5289824 res!2243489) b!5289825))

(declare-fun m!6327348 () Bool)

(assert (=> d!1701840 m!6327348))

(assert (=> d!1701840 m!6325870))

(declare-fun m!6327350 () Bool)

(assert (=> d!1701840 m!6327350))

(declare-fun m!6327352 () Bool)

(assert (=> d!1701840 m!6327352))

(declare-fun m!6327354 () Bool)

(assert (=> b!5289824 m!6327354))

(assert (=> b!5289824 m!6325870))

(declare-fun m!6327356 () Bool)

(assert (=> b!5289824 m!6327356))

(declare-fun m!6327358 () Bool)

(assert (=> b!5289824 m!6327358))

(declare-fun m!6327360 () Bool)

(assert (=> b!5289823 m!6327360))

(assert (=> b!5288314 d!1701840))

(declare-fun b!5289829 () Bool)

(declare-fun e!3288635 () Bool)

(declare-fun lt!2161590 () List!61062)

(assert (=> b!5289829 (= e!3288635 (or (not (= (Cons!60938 (h!67386 s!2326) Nil!60938) Nil!60938)) (= lt!2161590 Nil!60938)))))

(declare-fun d!1701846 () Bool)

(assert (=> d!1701846 e!3288635))

(declare-fun res!2243490 () Bool)

(assert (=> d!1701846 (=> (not res!2243490) (not e!3288635))))

(assert (=> d!1701846 (= res!2243490 (= (content!10851 lt!2161590) ((_ map or) (content!10851 Nil!60938) (content!10851 (Cons!60938 (h!67386 s!2326) Nil!60938)))))))

(declare-fun e!3288636 () List!61062)

(assert (=> d!1701846 (= lt!2161590 e!3288636)))

(declare-fun c!917625 () Bool)

(assert (=> d!1701846 (= c!917625 ((_ is Nil!60938) Nil!60938))))

(assert (=> d!1701846 (= (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) lt!2161590)))

(declare-fun b!5289826 () Bool)

(assert (=> b!5289826 (= e!3288636 (Cons!60938 (h!67386 s!2326) Nil!60938))))

(declare-fun b!5289828 () Bool)

(declare-fun res!2243491 () Bool)

(assert (=> b!5289828 (=> (not res!2243491) (not e!3288635))))

(assert (=> b!5289828 (= res!2243491 (= (size!39757 lt!2161590) (+ (size!39757 Nil!60938) (size!39757 (Cons!60938 (h!67386 s!2326) Nil!60938)))))))

(declare-fun b!5289827 () Bool)

(assert (=> b!5289827 (= e!3288636 (Cons!60938 (h!67386 Nil!60938) (++!13288 (t!374265 Nil!60938) (Cons!60938 (h!67386 s!2326) Nil!60938))))))

(assert (= (and d!1701846 c!917625) b!5289826))

(assert (= (and d!1701846 (not c!917625)) b!5289827))

(assert (= (and d!1701846 res!2243490) b!5289828))

(assert (= (and b!5289828 res!2243491) b!5289829))

(declare-fun m!6327362 () Bool)

(assert (=> d!1701846 m!6327362))

(declare-fun m!6327364 () Bool)

(assert (=> d!1701846 m!6327364))

(declare-fun m!6327366 () Bool)

(assert (=> d!1701846 m!6327366))

(declare-fun m!6327368 () Bool)

(assert (=> b!5289828 m!6327368))

(declare-fun m!6327370 () Bool)

(assert (=> b!5289828 m!6327370))

(declare-fun m!6327372 () Bool)

(assert (=> b!5289828 m!6327372))

(declare-fun m!6327374 () Bool)

(assert (=> b!5289827 m!6327374))

(assert (=> b!5288314 d!1701846))

(declare-fun d!1701848 () Bool)

(assert (=> d!1701848 (= (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326)) s!2326)))

(declare-fun lt!2161593 () Unit!153202)

(declare-fun choose!39500 (List!61062 C!30112 List!61062 List!61062) Unit!153202)

(assert (=> d!1701848 (= lt!2161593 (choose!39500 Nil!60938 (h!67386 s!2326) (t!374265 s!2326) s!2326))))

(assert (=> d!1701848 (= (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) (t!374265 s!2326))) s!2326)))

(assert (=> d!1701848 (= (lemmaMoveElementToOtherListKeepsConcatEq!1703 Nil!60938 (h!67386 s!2326) (t!374265 s!2326) s!2326) lt!2161593)))

(declare-fun bs!1226457 () Bool)

(assert (= bs!1226457 d!1701848))

(assert (=> bs!1226457 m!6325870))

(assert (=> bs!1226457 m!6325870))

(assert (=> bs!1226457 m!6325872))

(declare-fun m!6327376 () Bool)

(assert (=> bs!1226457 m!6327376))

(declare-fun m!6327380 () Bool)

(assert (=> bs!1226457 m!6327380))

(assert (=> b!5288314 d!1701848))

(declare-fun d!1701850 () Bool)

(declare-fun e!3288638 () Bool)

(assert (=> d!1701850 e!3288638))

(declare-fun res!2243492 () Bool)

(assert (=> d!1701850 (=> res!2243492 e!3288638)))

(declare-fun e!3288637 () Bool)

(assert (=> d!1701850 (= res!2243492 e!3288637)))

(declare-fun res!2243493 () Bool)

(assert (=> d!1701850 (=> (not res!2243493) (not e!3288637))))

(declare-fun lt!2161595 () Option!15032)

(assert (=> d!1701850 (= res!2243493 (isDefined!11735 lt!2161595))))

(declare-fun e!3288641 () Option!15032)

(assert (=> d!1701850 (= lt!2161595 e!3288641)))

(declare-fun c!917627 () Bool)

(declare-fun e!3288639 () Bool)

(assert (=> d!1701850 (= c!917627 e!3288639)))

(declare-fun res!2243495 () Bool)

(assert (=> d!1701850 (=> (not res!2243495) (not e!3288639))))

(assert (=> d!1701850 (= res!2243495 (matchR!7106 (regOne!30354 r!7292) (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))))))

(assert (=> d!1701850 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1701850 (= (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326) s!2326) lt!2161595)))

(declare-fun b!5289830 () Bool)

(assert (=> b!5289830 (= e!3288637 (= (++!13288 (_1!35423 (get!20954 lt!2161595)) (_2!35423 (get!20954 lt!2161595))) s!2326))))

(declare-fun b!5289831 () Bool)

(declare-fun e!3288640 () Option!15032)

(assert (=> b!5289831 (= e!3288640 None!15031)))

(declare-fun b!5289832 () Bool)

(declare-fun lt!2161594 () Unit!153202)

(declare-fun lt!2161596 () Unit!153202)

(assert (=> b!5289832 (= lt!2161594 lt!2161596)))

(assert (=> b!5289832 (= (++!13288 (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (Cons!60938 (h!67386 (t!374265 s!2326)) Nil!60938)) (t!374265 (t!374265 s!2326))) s!2326)))

(assert (=> b!5289832 (= lt!2161596 (lemmaMoveElementToOtherListKeepsConcatEq!1703 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (h!67386 (t!374265 s!2326)) (t!374265 (t!374265 s!2326)) s!2326))))

(assert (=> b!5289832 (= e!3288640 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (Cons!60938 (h!67386 (t!374265 s!2326)) Nil!60938)) (t!374265 (t!374265 s!2326)) s!2326))))

(declare-fun b!5289833 () Bool)

(assert (=> b!5289833 (= e!3288638 (not (isDefined!11735 lt!2161595)))))

(declare-fun b!5289834 () Bool)

(assert (=> b!5289834 (= e!3288639 (matchR!7106 (regTwo!30354 r!7292) (t!374265 s!2326)))))

(declare-fun b!5289835 () Bool)

(declare-fun res!2243494 () Bool)

(assert (=> b!5289835 (=> (not res!2243494) (not e!3288637))))

(assert (=> b!5289835 (= res!2243494 (matchR!7106 (regTwo!30354 r!7292) (_2!35423 (get!20954 lt!2161595))))))

(declare-fun b!5289836 () Bool)

(assert (=> b!5289836 (= e!3288641 (Some!15031 (tuple2!64241 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326))))))

(declare-fun b!5289837 () Bool)

(assert (=> b!5289837 (= e!3288641 e!3288640)))

(declare-fun c!917626 () Bool)

(assert (=> b!5289837 (= c!917626 ((_ is Nil!60938) (t!374265 s!2326)))))

(declare-fun b!5289838 () Bool)

(declare-fun res!2243496 () Bool)

(assert (=> b!5289838 (=> (not res!2243496) (not e!3288637))))

(assert (=> b!5289838 (= res!2243496 (matchR!7106 (regOne!30354 r!7292) (_1!35423 (get!20954 lt!2161595))))))

(assert (= (and d!1701850 res!2243495) b!5289834))

(assert (= (and d!1701850 c!917627) b!5289836))

(assert (= (and d!1701850 (not c!917627)) b!5289837))

(assert (= (and b!5289837 c!917626) b!5289831))

(assert (= (and b!5289837 (not c!917626)) b!5289832))

(assert (= (and d!1701850 res!2243493) b!5289838))

(assert (= (and b!5289838 res!2243496) b!5289835))

(assert (= (and b!5289835 res!2243494) b!5289830))

(assert (= (and d!1701850 (not res!2243492)) b!5289833))

(declare-fun m!6327390 () Bool)

(assert (=> b!5289838 m!6327390))

(declare-fun m!6327394 () Bool)

(assert (=> b!5289838 m!6327394))

(assert (=> b!5289830 m!6327390))

(declare-fun m!6327396 () Bool)

(assert (=> b!5289830 m!6327396))

(declare-fun m!6327398 () Bool)

(assert (=> b!5289834 m!6327398))

(declare-fun m!6327400 () Bool)

(assert (=> d!1701850 m!6327400))

(assert (=> d!1701850 m!6325870))

(declare-fun m!6327402 () Bool)

(assert (=> d!1701850 m!6327402))

(assert (=> d!1701850 m!6325868))

(assert (=> b!5289833 m!6327400))

(assert (=> b!5289832 m!6325870))

(declare-fun m!6327404 () Bool)

(assert (=> b!5289832 m!6327404))

(assert (=> b!5289832 m!6327404))

(declare-fun m!6327406 () Bool)

(assert (=> b!5289832 m!6327406))

(assert (=> b!5289832 m!6325870))

(declare-fun m!6327408 () Bool)

(assert (=> b!5289832 m!6327408))

(assert (=> b!5289832 m!6327404))

(declare-fun m!6327410 () Bool)

(assert (=> b!5289832 m!6327410))

(assert (=> b!5289835 m!6327390))

(declare-fun m!6327412 () Bool)

(assert (=> b!5289835 m!6327412))

(assert (=> b!5288314 d!1701850))

(declare-fun d!1701860 () Bool)

(assert (=> d!1701860 (= (Exists!2102 (ite c!917252 lambda!267648 lambda!267649)) (choose!39491 (ite c!917252 lambda!267648 lambda!267649)))))

(declare-fun bs!1226459 () Bool)

(assert (= bs!1226459 d!1701860))

(declare-fun m!6327414 () Bool)

(assert (=> bs!1226459 m!6327414))

(assert (=> bm!376712 d!1701860))

(assert (=> b!5288696 d!1701090))

(declare-fun d!1701862 () Bool)

(declare-fun lt!2161598 () Int)

(assert (=> d!1701862 (>= lt!2161598 0)))

(declare-fun e!3288655 () Int)

(assert (=> d!1701862 (= lt!2161598 e!3288655)))

(declare-fun c!917636 () Bool)

(assert (=> d!1701862 (= c!917636 ((_ is Cons!60940) (t!374267 zl!343)))))

(assert (=> d!1701862 (= (zipperDepthTotal!82 (t!374267 zl!343)) lt!2161598)))

(declare-fun b!5289864 () Bool)

(assert (=> b!5289864 (= e!3288655 (+ (contextDepthTotal!62 (h!67388 (t!374267 zl!343))) (zipperDepthTotal!82 (t!374267 (t!374267 zl!343)))))))

(declare-fun b!5289865 () Bool)

(assert (=> b!5289865 (= e!3288655 0)))

(assert (= (and d!1701862 c!917636) b!5289864))

(assert (= (and d!1701862 (not c!917636)) b!5289865))

(declare-fun m!6327416 () Bool)

(assert (=> b!5289864 m!6327416))

(declare-fun m!6327418 () Bool)

(assert (=> b!5289864 m!6327418))

(assert (=> b!5288696 d!1701862))

(assert (=> bs!1225461 d!1701202))

(assert (=> d!1701220 d!1701226))

(assert (=> d!1701220 d!1701224))

(declare-fun d!1701864 () Bool)

(assert (=> d!1701864 (= (matchR!7106 lt!2161294 s!2326) (matchZipper!1165 lt!2161283 s!2326))))

(assert (=> d!1701864 true))

(declare-fun _$44!1396 () Unit!153202)

(assert (=> d!1701864 (= (choose!39495 lt!2161283 lt!2161303 lt!2161294 s!2326) _$44!1396)))

(declare-fun bs!1226460 () Bool)

(assert (= bs!1226460 d!1701864))

(assert (=> bs!1226460 m!6325184))

(assert (=> bs!1226460 m!6325208))

(assert (=> d!1701220 d!1701864))

(assert (=> d!1701220 d!1701600))

(declare-fun d!1701866 () Bool)

(assert (=> d!1701866 (= (isEmpty!32896 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326)) (not ((_ is Some!15031) (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326))))))

(assert (=> d!1701170 d!1701866))

(assert (=> bm!376719 d!1701352))

(declare-fun bm!376974 () Bool)

(declare-fun call!376979 () Bool)

(declare-fun c!917637 () Bool)

(assert (=> bm!376974 (= call!376979 (nullable!5090 (ite c!917637 (regTwo!30355 (regOne!30354 (regOne!30354 r!7292))) (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5289866 () Bool)

(declare-fun e!3288661 () Bool)

(declare-fun e!3288656 () Bool)

(assert (=> b!5289866 (= e!3288661 e!3288656)))

(declare-fun res!2243506 () Bool)

(declare-fun call!376980 () Bool)

(assert (=> b!5289866 (= res!2243506 call!376980)))

(assert (=> b!5289866 (=> (not res!2243506) (not e!3288656))))

(declare-fun b!5289867 () Bool)

(assert (=> b!5289867 (= e!3288656 call!376979)))

(declare-fun b!5289868 () Bool)

(declare-fun e!3288659 () Bool)

(assert (=> b!5289868 (= e!3288659 call!376979)))

(declare-fun b!5289869 () Bool)

(declare-fun e!3288660 () Bool)

(declare-fun e!3288658 () Bool)

(assert (=> b!5289869 (= e!3288660 e!3288658)))

(declare-fun res!2243510 () Bool)

(assert (=> b!5289869 (=> (not res!2243510) (not e!3288658))))

(assert (=> b!5289869 (= res!2243510 (and (not ((_ is EmptyLang!14921) (regOne!30354 (regOne!30354 r!7292)))) (not ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun d!1701868 () Bool)

(declare-fun res!2243509 () Bool)

(assert (=> d!1701868 (=> res!2243509 e!3288660)))

(assert (=> d!1701868 (= res!2243509 ((_ is EmptyExpr!14921) (regOne!30354 (regOne!30354 r!7292))))))

(assert (=> d!1701868 (= (nullableFct!1460 (regOne!30354 (regOne!30354 r!7292))) e!3288660)))

(declare-fun b!5289870 () Bool)

(assert (=> b!5289870 (= e!3288661 e!3288659)))

(declare-fun res!2243508 () Bool)

(assert (=> b!5289870 (= res!2243508 call!376980)))

(assert (=> b!5289870 (=> res!2243508 e!3288659)))

(declare-fun b!5289871 () Bool)

(declare-fun e!3288657 () Bool)

(assert (=> b!5289871 (= e!3288658 e!3288657)))

(declare-fun res!2243507 () Bool)

(assert (=> b!5289871 (=> res!2243507 e!3288657)))

(assert (=> b!5289871 (= res!2243507 ((_ is Star!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun b!5289872 () Bool)

(assert (=> b!5289872 (= e!3288657 e!3288661)))

(assert (=> b!5289872 (= c!917637 ((_ is Union!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun bm!376975 () Bool)

(assert (=> bm!376975 (= call!376980 (nullable!5090 (ite c!917637 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (regOne!30354 (regOne!30354 (regOne!30354 r!7292))))))))

(assert (= (and d!1701868 (not res!2243509)) b!5289869))

(assert (= (and b!5289869 res!2243510) b!5289871))

(assert (= (and b!5289871 (not res!2243507)) b!5289872))

(assert (= (and b!5289872 c!917637) b!5289870))

(assert (= (and b!5289872 (not c!917637)) b!5289866))

(assert (= (and b!5289870 (not res!2243508)) b!5289868))

(assert (= (and b!5289866 res!2243506) b!5289867))

(assert (= (or b!5289868 b!5289867) bm!376974))

(assert (= (or b!5289870 b!5289866) bm!376975))

(declare-fun m!6327430 () Bool)

(assert (=> bm!376974 m!6327430))

(declare-fun m!6327432 () Bool)

(assert (=> bm!376975 m!6327432))

(assert (=> d!1701050 d!1701868))

(assert (=> d!1701214 d!1701584))

(declare-fun b!5289875 () Bool)

(declare-fun e!3288665 () Bool)

(assert (=> b!5289875 (= e!3288665 (not (= (head!11334 Nil!60938) (c!916969 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5289876 () Bool)

(declare-fun e!3288664 () Bool)

(assert (=> b!5289876 (= e!3288664 (nullable!5090 (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun d!1701874 () Bool)

(declare-fun e!3288669 () Bool)

(assert (=> d!1701874 e!3288669))

(declare-fun c!917639 () Bool)

(assert (=> d!1701874 (= c!917639 ((_ is EmptyExpr!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun lt!2161599 () Bool)

(assert (=> d!1701874 (= lt!2161599 e!3288664)))

(declare-fun c!917638 () Bool)

(assert (=> d!1701874 (= c!917638 (isEmpty!32895 Nil!60938))))

(assert (=> d!1701874 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1701874 (= (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) Nil!60938) lt!2161599)))

(declare-fun b!5289877 () Bool)

(declare-fun e!3288670 () Bool)

(assert (=> b!5289877 (= e!3288670 (= (head!11334 Nil!60938) (c!916969 (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun b!5289878 () Bool)

(declare-fun e!3288668 () Bool)

(assert (=> b!5289878 (= e!3288669 e!3288668)))

(declare-fun c!917640 () Bool)

(assert (=> b!5289878 (= c!917640 ((_ is EmptyLang!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun b!5289879 () Bool)

(assert (=> b!5289879 (= e!3288664 (matchR!7106 (derivativeStep!4129 (regOne!30354 (regOne!30354 r!7292)) (head!11334 Nil!60938)) (tail!10430 Nil!60938)))))

(declare-fun b!5289880 () Bool)

(declare-fun res!2243520 () Bool)

(assert (=> b!5289880 (=> (not res!2243520) (not e!3288670))))

(assert (=> b!5289880 (= res!2243520 (isEmpty!32895 (tail!10430 Nil!60938)))))

(declare-fun b!5289881 () Bool)

(declare-fun e!3288666 () Bool)

(declare-fun e!3288667 () Bool)

(assert (=> b!5289881 (= e!3288666 e!3288667)))

(declare-fun res!2243519 () Bool)

(assert (=> b!5289881 (=> (not res!2243519) (not e!3288667))))

(assert (=> b!5289881 (= res!2243519 (not lt!2161599))))

(declare-fun b!5289882 () Bool)

(declare-fun res!2243517 () Bool)

(assert (=> b!5289882 (=> res!2243517 e!3288666)))

(assert (=> b!5289882 (= res!2243517 e!3288670)))

(declare-fun res!2243518 () Bool)

(assert (=> b!5289882 (=> (not res!2243518) (not e!3288670))))

(assert (=> b!5289882 (= res!2243518 lt!2161599)))

(declare-fun b!5289883 () Bool)

(declare-fun call!376981 () Bool)

(assert (=> b!5289883 (= e!3288669 (= lt!2161599 call!376981))))

(declare-fun b!5289884 () Bool)

(assert (=> b!5289884 (= e!3288667 e!3288665)))

(declare-fun res!2243513 () Bool)

(assert (=> b!5289884 (=> res!2243513 e!3288665)))

(assert (=> b!5289884 (= res!2243513 call!376981)))

(declare-fun bm!376976 () Bool)

(assert (=> bm!376976 (= call!376981 (isEmpty!32895 Nil!60938))))

(declare-fun b!5289885 () Bool)

(declare-fun res!2243514 () Bool)

(assert (=> b!5289885 (=> res!2243514 e!3288666)))

(assert (=> b!5289885 (= res!2243514 (not ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292)))))))

(assert (=> b!5289885 (= e!3288668 e!3288666)))

(declare-fun b!5289886 () Bool)

(declare-fun res!2243516 () Bool)

(assert (=> b!5289886 (=> res!2243516 e!3288665)))

(assert (=> b!5289886 (= res!2243516 (not (isEmpty!32895 (tail!10430 Nil!60938))))))

(declare-fun b!5289887 () Bool)

(declare-fun res!2243515 () Bool)

(assert (=> b!5289887 (=> (not res!2243515) (not e!3288670))))

(assert (=> b!5289887 (= res!2243515 (not call!376981))))

(declare-fun b!5289888 () Bool)

(assert (=> b!5289888 (= e!3288668 (not lt!2161599))))

(assert (= (and d!1701874 c!917638) b!5289876))

(assert (= (and d!1701874 (not c!917638)) b!5289879))

(assert (= (and d!1701874 c!917639) b!5289883))

(assert (= (and d!1701874 (not c!917639)) b!5289878))

(assert (= (and b!5289878 c!917640) b!5289888))

(assert (= (and b!5289878 (not c!917640)) b!5289885))

(assert (= (and b!5289885 (not res!2243514)) b!5289882))

(assert (= (and b!5289882 res!2243518) b!5289887))

(assert (= (and b!5289887 res!2243515) b!5289880))

(assert (= (and b!5289880 res!2243520) b!5289877))

(assert (= (and b!5289882 (not res!2243517)) b!5289881))

(assert (= (and b!5289881 res!2243519) b!5289884))

(assert (= (and b!5289884 (not res!2243513)) b!5289886))

(assert (= (and b!5289886 (not res!2243516)) b!5289875))

(assert (= (or b!5289883 b!5289884 b!5289887) bm!376976))

(assert (=> b!5289877 m!6327218))

(assert (=> b!5289886 m!6327220))

(assert (=> b!5289886 m!6327220))

(assert (=> b!5289886 m!6327222))

(assert (=> b!5289880 m!6327220))

(assert (=> b!5289880 m!6327220))

(assert (=> b!5289880 m!6327222))

(assert (=> b!5289875 m!6327218))

(assert (=> b!5289876 m!6325270))

(assert (=> bm!376976 m!6327224))

(assert (=> b!5289879 m!6327218))

(assert (=> b!5289879 m!6327218))

(declare-fun m!6327438 () Bool)

(assert (=> b!5289879 m!6327438))

(assert (=> b!5289879 m!6327220))

(assert (=> b!5289879 m!6327438))

(assert (=> b!5289879 m!6327220))

(declare-fun m!6327440 () Bool)

(assert (=> b!5289879 m!6327440))

(assert (=> d!1701874 m!6327224))

(assert (=> d!1701874 m!6326068))

(assert (=> d!1701214 d!1701874))

(assert (=> d!1701214 d!1701606))

(declare-fun d!1701878 () Bool)

(assert (=> d!1701878 (= (head!11335 (exprs!4805 (h!67388 zl!343))) (h!67387 (exprs!4805 (h!67388 zl!343))))))

(assert (=> b!5288109 d!1701878))

(assert (=> d!1701146 d!1701122))

(declare-fun d!1701880 () Bool)

(assert (=> d!1701880 (= (Exists!2102 lambda!267621) (choose!39491 lambda!267621))))

(declare-fun bs!1226478 () Bool)

(assert (= bs!1226478 d!1701880))

(declare-fun m!6327442 () Bool)

(assert (=> bs!1226478 m!6327442))

(assert (=> d!1701146 d!1701880))

(assert (=> d!1701146 d!1701792))

(assert (=> d!1701146 d!1701170))

(declare-fun bs!1226493 () Bool)

(declare-fun d!1701882 () Bool)

(assert (= bs!1226493 (and d!1701882 b!5288579)))

(declare-fun lambda!267764 () Int)

(assert (=> bs!1226493 (not (= lambda!267764 lambda!267649))))

(declare-fun bs!1226494 () Bool)

(assert (= bs!1226494 (and d!1701882 d!1701146)))

(assert (=> bs!1226494 (= lambda!267764 lambda!267621)))

(declare-fun bs!1226495 () Bool)

(assert (= bs!1226495 (and d!1701882 b!5287706)))

(assert (=> bs!1226495 (not (= lambda!267764 lambda!267545))))

(declare-fun bs!1226496 () Bool)

(assert (= bs!1226496 (and d!1701882 b!5288945)))

(assert (=> bs!1226496 (not (= lambda!267764 lambda!267680))))

(assert (=> bs!1226495 (= lambda!267764 lambda!267544)))

(declare-fun bs!1226497 () Bool)

(assert (= bs!1226497 (and d!1701882 b!5288667)))

(assert (=> bs!1226497 (not (= lambda!267764 lambda!267654))))

(declare-fun bs!1226498 () Bool)

(assert (= bs!1226498 (and d!1701882 d!1701238)))

(assert (=> bs!1226498 (not (= lambda!267764 lambda!267653))))

(declare-fun bs!1226499 () Bool)

(assert (= bs!1226499 (and d!1701882 b!5287700)))

(assert (=> bs!1226499 (not (= lambda!267764 lambda!267548))))

(declare-fun bs!1226500 () Bool)

(assert (= bs!1226500 (and d!1701882 b!5288580)))

(assert (=> bs!1226500 (not (= lambda!267764 lambda!267648))))

(declare-fun bs!1226501 () Bool)

(assert (= bs!1226501 (and d!1701882 b!5289483)))

(assert (=> bs!1226501 (not (= lambda!267764 lambda!267736))))

(declare-fun bs!1226502 () Bool)

(assert (= bs!1226502 (and d!1701882 b!5288666)))

(assert (=> bs!1226502 (not (= lambda!267764 lambda!267655))))

(assert (=> bs!1226499 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267764 lambda!267547))))

(declare-fun bs!1226506 () Bool)

(assert (= bs!1226506 (and d!1701882 b!5288946)))

(assert (=> bs!1226506 (not (= lambda!267764 lambda!267679))))

(declare-fun bs!1226507 () Bool)

(assert (= bs!1226507 (and d!1701882 b!5288548)))

(assert (=> bs!1226507 (not (= lambda!267764 lambda!267645))))

(declare-fun bs!1226508 () Bool)

(assert (= bs!1226508 (and d!1701882 d!1701166)))

(assert (=> bs!1226508 (= lambda!267764 lambda!267629)))

(declare-fun bs!1226511 () Bool)

(assert (= bs!1226511 (and d!1701882 b!5289303)))

(assert (=> bs!1226511 (not (= lambda!267764 lambda!267720))))

(assert (=> bs!1226498 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267764 lambda!267652))))

(declare-fun bs!1226514 () Bool)

(assert (= bs!1226514 (and d!1701882 d!1701234)))

(assert (=> bs!1226514 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267764 lambda!267651))))

(declare-fun bs!1226517 () Bool)

(assert (= bs!1226517 (and d!1701882 b!5289304)))

(assert (=> bs!1226517 (not (= lambda!267764 lambda!267718))))

(declare-fun bs!1226518 () Bool)

(assert (= bs!1226518 (and d!1701882 b!5288547)))

(assert (=> bs!1226518 (not (= lambda!267764 lambda!267646))))

(assert (=> bs!1226508 (not (= lambda!267764 lambda!267633))))

(declare-fun bs!1226521 () Bool)

(assert (= bs!1226521 (and d!1701882 d!1701612)))

(assert (=> bs!1226521 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267764 lambda!267728))))

(declare-fun bs!1226524 () Bool)

(assert (= bs!1226524 (and d!1701882 b!5289482)))

(assert (=> bs!1226524 (not (= lambda!267764 lambda!267738))))

(assert (=> d!1701882 true))

(assert (=> d!1701882 true))

(assert (=> d!1701882 true))

(assert (=> d!1701882 (= (isDefined!11735 (findConcatSeparation!1446 (regOne!30354 r!7292) (regTwo!30354 r!7292) Nil!60938 s!2326 s!2326)) (Exists!2102 lambda!267764))))

(assert (=> d!1701882 true))

(declare-fun _$89!1498 () Unit!153202)

(assert (=> d!1701882 (= (choose!39492 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326) _$89!1498)))

(declare-fun bs!1226528 () Bool)

(assert (= bs!1226528 d!1701882))

(assert (=> bs!1226528 m!6325222))

(assert (=> bs!1226528 m!6325222))

(assert (=> bs!1226528 m!6325224))

(declare-fun m!6327456 () Bool)

(assert (=> bs!1226528 m!6327456))

(assert (=> d!1701146 d!1701882))

(declare-fun d!1701886 () Bool)

(declare-fun c!917643 () Bool)

(assert (=> d!1701886 (= c!917643 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288675 () Bool)

(assert (=> d!1701886 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161296 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288675)))

(declare-fun b!5289895 () Bool)

(assert (=> b!5289895 (= e!3288675 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161296 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5289896 () Bool)

(assert (=> b!5289896 (= e!3288675 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161296 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701886 c!917643) b!5289895))

(assert (= (and d!1701886 (not c!917643)) b!5289896))

(assert (=> d!1701886 m!6325492))

(assert (=> d!1701886 m!6326388))

(assert (=> b!5289895 m!6325504))

(declare-fun m!6327458 () Bool)

(assert (=> b!5289895 m!6327458))

(assert (=> b!5289896 m!6325492))

(assert (=> b!5289896 m!6326392))

(assert (=> b!5289896 m!6325504))

(assert (=> b!5289896 m!6326392))

(declare-fun m!6327460 () Bool)

(assert (=> b!5289896 m!6327460))

(assert (=> b!5289896 m!6325492))

(assert (=> b!5289896 m!6326396))

(assert (=> b!5289896 m!6327460))

(assert (=> b!5289896 m!6326396))

(declare-fun m!6327462 () Bool)

(assert (=> b!5289896 m!6327462))

(assert (=> b!5287943 d!1701886))

(declare-fun bs!1226541 () Bool)

(declare-fun d!1701888 () Bool)

(assert (= bs!1226541 (and d!1701888 d!1701188)))

(declare-fun lambda!267768 () Int)

(assert (=> bs!1226541 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267768 lambda!267640))))

(declare-fun bs!1226543 () Bool)

(assert (= bs!1226543 (and d!1701888 b!5287682)))

(assert (=> bs!1226543 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267768 lambda!267546))))

(declare-fun bs!1226545 () Bool)

(assert (= bs!1226545 (and d!1701888 d!1701704)))

(assert (=> bs!1226545 (= lambda!267768 lambda!267741)))

(declare-fun bs!1226547 () Bool)

(assert (= bs!1226547 (and d!1701888 d!1701708)))

(assert (=> bs!1226547 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267768 lambda!267742))))

(declare-fun bs!1226549 () Bool)

(assert (= bs!1226549 (and d!1701888 d!1701364)))

(assert (=> bs!1226549 (= lambda!267768 lambda!267678)))

(declare-fun bs!1226551 () Bool)

(assert (= bs!1226551 (and d!1701888 d!1701776)))

(assert (=> bs!1226551 (= lambda!267768 lambda!267750)))

(declare-fun bs!1226552 () Bool)

(assert (= bs!1226552 (and d!1701888 d!1701080)))

(assert (=> bs!1226552 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267768 lambda!267614))))

(declare-fun bs!1226553 () Bool)

(assert (= bs!1226553 (and d!1701888 d!1701496)))

(assert (=> bs!1226553 (= lambda!267768 lambda!267705)))

(assert (=> d!1701888 true))

(assert (=> d!1701888 (= (derivationStepZipper!1164 lt!2161296 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161296 lambda!267768))))

(declare-fun bs!1226554 () Bool)

(assert (= bs!1226554 d!1701888))

(declare-fun m!6327464 () Bool)

(assert (=> bs!1226554 m!6327464))

(assert (=> b!5287943 d!1701888))

(assert (=> b!5287943 d!1701366))

(assert (=> b!5287943 d!1701370))

(assert (=> d!1701186 d!1701416))

(declare-fun d!1701890 () Bool)

(declare-fun res!2243523 () Bool)

(declare-fun e!3288676 () Bool)

(assert (=> d!1701890 (=> res!2243523 e!3288676)))

(assert (=> d!1701890 (= res!2243523 ((_ is Nil!60939) (exprs!4805 (h!67388 zl!343))))))

(assert (=> d!1701890 (= (forall!14329 (exprs!4805 (h!67388 zl!343)) lambda!267584) e!3288676)))

(declare-fun b!5289897 () Bool)

(declare-fun e!3288677 () Bool)

(assert (=> b!5289897 (= e!3288676 e!3288677)))

(declare-fun res!2243524 () Bool)

(assert (=> b!5289897 (=> (not res!2243524) (not e!3288677))))

(assert (=> b!5289897 (= res!2243524 (dynLambda!24093 lambda!267584 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5289898 () Bool)

(assert (=> b!5289898 (= e!3288677 (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267584))))

(assert (= (and d!1701890 (not res!2243523)) b!5289897))

(assert (= (and b!5289897 res!2243524) b!5289898))

(declare-fun b_lambda!203989 () Bool)

(assert (=> (not b_lambda!203989) (not b!5289897)))

(declare-fun m!6327478 () Bool)

(assert (=> b!5289897 m!6327478))

(declare-fun m!6327480 () Bool)

(assert (=> b!5289898 m!6327480))

(assert (=> d!1701030 d!1701890))

(declare-fun b!5289899 () Bool)

(declare-fun res!2243528 () Bool)

(declare-fun e!3288680 () Bool)

(assert (=> b!5289899 (=> (not res!2243528) (not e!3288680))))

(declare-fun call!376982 () Bool)

(assert (=> b!5289899 (= res!2243528 call!376982)))

(declare-fun e!3288684 () Bool)

(assert (=> b!5289899 (= e!3288684 e!3288680)))

(declare-fun b!5289900 () Bool)

(declare-fun e!3288683 () Bool)

(declare-fun e!3288679 () Bool)

(assert (=> b!5289900 (= e!3288683 e!3288679)))

(declare-fun res!2243525 () Bool)

(assert (=> b!5289900 (= res!2243525 (not (nullable!5090 (reg!15250 lt!2161476))))))

(assert (=> b!5289900 (=> (not res!2243525) (not e!3288679))))

(declare-fun b!5289901 () Bool)

(assert (=> b!5289901 (= e!3288683 e!3288684)))

(declare-fun c!917644 () Bool)

(assert (=> b!5289901 (= c!917644 ((_ is Union!14921) lt!2161476))))

(declare-fun b!5289902 () Bool)

(declare-fun e!3288681 () Bool)

(assert (=> b!5289902 (= e!3288681 e!3288683)))

(declare-fun c!917645 () Bool)

(assert (=> b!5289902 (= c!917645 ((_ is Star!14921) lt!2161476))))

(declare-fun d!1701894 () Bool)

(declare-fun res!2243529 () Bool)

(assert (=> d!1701894 (=> res!2243529 e!3288681)))

(assert (=> d!1701894 (= res!2243529 ((_ is ElementMatch!14921) lt!2161476))))

(assert (=> d!1701894 (= (validRegex!6657 lt!2161476) e!3288681)))

(declare-fun b!5289903 () Bool)

(declare-fun res!2243527 () Bool)

(declare-fun e!3288682 () Bool)

(assert (=> b!5289903 (=> res!2243527 e!3288682)))

(assert (=> b!5289903 (= res!2243527 (not ((_ is Concat!23766) lt!2161476)))))

(assert (=> b!5289903 (= e!3288684 e!3288682)))

(declare-fun b!5289904 () Bool)

(declare-fun call!376984 () Bool)

(assert (=> b!5289904 (= e!3288679 call!376984)))

(declare-fun bm!376977 () Bool)

(assert (=> bm!376977 (= call!376982 (validRegex!6657 (ite c!917644 (regOne!30355 lt!2161476) (regOne!30354 lt!2161476))))))

(declare-fun bm!376978 () Bool)

(assert (=> bm!376978 (= call!376984 (validRegex!6657 (ite c!917645 (reg!15250 lt!2161476) (ite c!917644 (regTwo!30355 lt!2161476) (regTwo!30354 lt!2161476)))))))

(declare-fun b!5289905 () Bool)

(declare-fun call!376983 () Bool)

(assert (=> b!5289905 (= e!3288680 call!376983)))

(declare-fun bm!376979 () Bool)

(assert (=> bm!376979 (= call!376983 call!376984)))

(declare-fun b!5289906 () Bool)

(declare-fun e!3288678 () Bool)

(assert (=> b!5289906 (= e!3288682 e!3288678)))

(declare-fun res!2243526 () Bool)

(assert (=> b!5289906 (=> (not res!2243526) (not e!3288678))))

(assert (=> b!5289906 (= res!2243526 call!376982)))

(declare-fun b!5289907 () Bool)

(assert (=> b!5289907 (= e!3288678 call!376983)))

(assert (= (and d!1701894 (not res!2243529)) b!5289902))

(assert (= (and b!5289902 c!917645) b!5289900))

(assert (= (and b!5289902 (not c!917645)) b!5289901))

(assert (= (and b!5289900 res!2243525) b!5289904))

(assert (= (and b!5289901 c!917644) b!5289899))

(assert (= (and b!5289901 (not c!917644)) b!5289903))

(assert (= (and b!5289899 res!2243528) b!5289905))

(assert (= (and b!5289903 (not res!2243527)) b!5289906))

(assert (= (and b!5289906 res!2243526) b!5289907))

(assert (= (or b!5289905 b!5289907) bm!376979))

(assert (= (or b!5289899 b!5289906) bm!376977))

(assert (= (or b!5289904 bm!376979) bm!376978))

(declare-fun m!6327482 () Bool)

(assert (=> b!5289900 m!6327482))

(declare-fun m!6327484 () Bool)

(assert (=> bm!376977 m!6327484))

(declare-fun m!6327486 () Bool)

(assert (=> bm!376978 m!6327486))

(assert (=> d!1701230 d!1701894))

(declare-fun d!1701898 () Bool)

(declare-fun res!2243530 () Bool)

(declare-fun e!3288685 () Bool)

(assert (=> d!1701898 (=> res!2243530 e!3288685)))

(assert (=> d!1701898 (= res!2243530 ((_ is Nil!60939) lt!2161306))))

(assert (=> d!1701898 (= (forall!14329 lt!2161306 lambda!267650) e!3288685)))

(declare-fun b!5289908 () Bool)

(declare-fun e!3288686 () Bool)

(assert (=> b!5289908 (= e!3288685 e!3288686)))

(declare-fun res!2243531 () Bool)

(assert (=> b!5289908 (=> (not res!2243531) (not e!3288686))))

(assert (=> b!5289908 (= res!2243531 (dynLambda!24093 lambda!267650 (h!67387 lt!2161306)))))

(declare-fun b!5289909 () Bool)

(assert (=> b!5289909 (= e!3288686 (forall!14329 (t!374266 lt!2161306) lambda!267650))))

(assert (= (and d!1701898 (not res!2243530)) b!5289908))

(assert (= (and b!5289908 res!2243531) b!5289909))

(declare-fun b_lambda!203991 () Bool)

(assert (=> (not b_lambda!203991) (not b!5289908)))

(declare-fun m!6327488 () Bool)

(assert (=> b!5289908 m!6327488))

(declare-fun m!6327490 () Bool)

(assert (=> b!5289909 m!6327490))

(assert (=> d!1701230 d!1701898))

(assert (=> b!5288627 d!1701572))

(assert (=> b!5288627 d!1701574))

(declare-fun b!5289910 () Bool)

(declare-fun e!3288688 () (InoxSet Context!8610))

(declare-fun call!376985 () (InoxSet Context!8610))

(assert (=> b!5289910 (= e!3288688 ((_ map or) call!376985 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))))) (h!67386 s!2326))))))

(declare-fun b!5289911 () Bool)

(declare-fun e!3288689 () Bool)

(assert (=> b!5289911 (= e!3288689 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun b!5289912 () Bool)

(declare-fun e!3288687 () (InoxSet Context!8610))

(assert (=> b!5289912 (= e!3288687 call!376985)))

(declare-fun b!5289913 () Bool)

(assert (=> b!5289913 (= e!3288688 e!3288687)))

(declare-fun c!917646 () Bool)

(assert (=> b!5289913 (= c!917646 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5289914 () Bool)

(assert (=> b!5289914 (= e!3288687 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1701900 () Bool)

(declare-fun c!917647 () Bool)

(assert (=> d!1701900 (= c!917647 e!3288689)))

(declare-fun res!2243532 () Bool)

(assert (=> d!1701900 (=> (not res!2243532) (not e!3288689))))

(assert (=> d!1701900 (= res!2243532 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(assert (=> d!1701900 (= (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))) (h!67386 s!2326)) e!3288688)))

(declare-fun bm!376980 () Bool)

(assert (=> bm!376980 (= call!376985 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))))) (h!67386 s!2326)))))

(assert (= (and d!1701900 res!2243532) b!5289911))

(assert (= (and d!1701900 c!917647) b!5289910))

(assert (= (and d!1701900 (not c!917647)) b!5289913))

(assert (= (and b!5289913 c!917646) b!5289912))

(assert (= (and b!5289913 (not c!917646)) b!5289914))

(assert (= (or b!5289910 b!5289912) bm!376980))

(declare-fun m!6327492 () Bool)

(assert (=> b!5289910 m!6327492))

(declare-fun m!6327494 () Bool)

(assert (=> b!5289911 m!6327494))

(declare-fun m!6327496 () Bool)

(assert (=> bm!376980 m!6327496))

(assert (=> b!5288506 d!1701900))

(assert (=> b!5288675 d!1701396))

(declare-fun b!5289915 () Bool)

(declare-fun e!3288692 () (InoxSet Context!8610))

(declare-fun call!376989 () (InoxSet Context!8610))

(assert (=> b!5289915 (= e!3288692 call!376989)))

(declare-fun call!376988 () (InoxSet Context!8610))

(declare-fun c!917651 () Bool)

(declare-fun bm!376981 () Bool)

(declare-fun call!376990 () List!61063)

(assert (=> bm!376981 (= call!376988 (derivationStepZipperDown!369 (ite c!917651 (regTwo!30355 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (regOne!30354 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))))) (ite c!917651 (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704)) (Context!8611 call!376990)) (h!67386 s!2326)))))

(declare-fun b!5289916 () Bool)

(declare-fun e!3288693 () (InoxSet Context!8610))

(assert (=> b!5289916 (= e!3288693 call!376989)))

(declare-fun c!917649 () Bool)

(declare-fun c!917650 () Bool)

(declare-fun bm!376982 () Bool)

(assert (=> bm!376982 (= call!376990 ($colon$colon!1358 (exprs!4805 (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704))) (ite (or c!917650 c!917649) (regTwo!30354 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))))

(declare-fun call!376987 () List!61063)

(declare-fun call!376986 () (InoxSet Context!8610))

(declare-fun bm!376983 () Bool)

(assert (=> bm!376983 (= call!376986 (derivationStepZipperDown!369 (ite c!917651 (regOne!30355 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (ite c!917650 (regTwo!30354 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (ite c!917649 (regOne!30354 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (reg!15250 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))) (ite (or c!917651 c!917650) (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704)) (Context!8611 call!376987)) (h!67386 s!2326)))))

(declare-fun bm!376984 () Bool)

(declare-fun call!376991 () (InoxSet Context!8610))

(assert (=> bm!376984 (= call!376989 call!376991)))

(declare-fun bm!376985 () Bool)

(assert (=> bm!376985 (= call!376991 call!376986)))

(declare-fun b!5289917 () Bool)

(declare-fun e!3288691 () Bool)

(assert (=> b!5289917 (= c!917650 e!3288691)))

(declare-fun res!2243533 () Bool)

(assert (=> b!5289917 (=> (not res!2243533) (not e!3288691))))

(assert (=> b!5289917 (= res!2243533 ((_ is Concat!23766) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun e!3288695 () (InoxSet Context!8610))

(declare-fun e!3288694 () (InoxSet Context!8610))

(assert (=> b!5289917 (= e!3288695 e!3288694)))

(declare-fun d!1701902 () Bool)

(declare-fun c!917648 () Bool)

(assert (=> d!1701902 (= c!917648 (and ((_ is ElementMatch!14921) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (= (c!916969 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326))))))

(declare-fun e!3288690 () (InoxSet Context!8610))

(assert (=> d!1701902 (= (derivationStepZipperDown!369 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))) (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704)) (h!67386 s!2326)) e!3288690)))

(declare-fun bm!376986 () Bool)

(assert (=> bm!376986 (= call!376987 call!376990)))

(declare-fun b!5289918 () Bool)

(assert (=> b!5289918 (= e!3288695 ((_ map or) call!376986 call!376988))))

(declare-fun b!5289919 () Bool)

(assert (=> b!5289919 (= e!3288690 e!3288695)))

(assert (=> b!5289919 (= c!917651 ((_ is Union!14921) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun b!5289920 () Bool)

(declare-fun c!917652 () Bool)

(assert (=> b!5289920 (= c!917652 ((_ is Star!14921) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))))

(assert (=> b!5289920 (= e!3288693 e!3288692)))

(declare-fun b!5289921 () Bool)

(assert (=> b!5289921 (= e!3288692 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5289922 () Bool)

(assert (=> b!5289922 (= e!3288694 ((_ map or) call!376988 call!376991))))

(declare-fun b!5289923 () Bool)

(assert (=> b!5289923 (= e!3288691 (nullable!5090 (regOne!30354 (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))))

(declare-fun b!5289924 () Bool)

(assert (=> b!5289924 (= e!3288690 (store ((as const (Array Context!8610 Bool)) false) (ite (or c!917229 c!917228) lt!2161302 (Context!8611 call!376704)) true))))

(declare-fun b!5289925 () Bool)

(assert (=> b!5289925 (= e!3288694 e!3288693)))

(assert (=> b!5289925 (= c!917649 ((_ is Concat!23766) (ite c!917229 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917228 (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917227 (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))))

(assert (= (and d!1701902 c!917648) b!5289924))

(assert (= (and d!1701902 (not c!917648)) b!5289919))

(assert (= (and b!5289919 c!917651) b!5289918))

(assert (= (and b!5289919 (not c!917651)) b!5289917))

(assert (= (and b!5289917 res!2243533) b!5289923))

(assert (= (and b!5289917 c!917650) b!5289922))

(assert (= (and b!5289917 (not c!917650)) b!5289925))

(assert (= (and b!5289925 c!917649) b!5289916))

(assert (= (and b!5289925 (not c!917649)) b!5289920))

(assert (= (and b!5289920 c!917652) b!5289915))

(assert (= (and b!5289920 (not c!917652)) b!5289921))

(assert (= (or b!5289916 b!5289915) bm!376986))

(assert (= (or b!5289916 b!5289915) bm!376984))

(assert (= (or b!5289922 bm!376986) bm!376982))

(assert (= (or b!5289922 bm!376984) bm!376985))

(assert (= (or b!5289918 b!5289922) bm!376981))

(assert (= (or b!5289918 bm!376985) bm!376983))

(declare-fun m!6327506 () Bool)

(assert (=> b!5289924 m!6327506))

(declare-fun m!6327508 () Bool)

(assert (=> bm!376982 m!6327508))

(declare-fun m!6327510 () Bool)

(assert (=> bm!376983 m!6327510))

(declare-fun m!6327512 () Bool)

(assert (=> b!5289923 m!6327512))

(declare-fun m!6327514 () Bool)

(assert (=> bm!376981 m!6327514))

(assert (=> bm!376700 d!1701902))

(declare-fun d!1701910 () Bool)

(declare-fun c!917653 () Bool)

(assert (=> d!1701910 (= c!917653 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288696 () Bool)

(assert (=> d!1701910 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161305 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288696)))

(declare-fun b!5289926 () Bool)

(assert (=> b!5289926 (= e!3288696 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161305 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5289927 () Bool)

(assert (=> b!5289927 (= e!3288696 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161305 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701910 c!917653) b!5289926))

(assert (= (and d!1701910 (not c!917653)) b!5289927))

(assert (=> d!1701910 m!6325492))

(assert (=> d!1701910 m!6326388))

(assert (=> b!5289926 m!6325774))

(declare-fun m!6327516 () Bool)

(assert (=> b!5289926 m!6327516))

(assert (=> b!5289927 m!6325492))

(assert (=> b!5289927 m!6326392))

(assert (=> b!5289927 m!6325774))

(assert (=> b!5289927 m!6326392))

(declare-fun m!6327518 () Bool)

(assert (=> b!5289927 m!6327518))

(assert (=> b!5289927 m!6325492))

(assert (=> b!5289927 m!6326396))

(assert (=> b!5289927 m!6327518))

(assert (=> b!5289927 m!6326396))

(declare-fun m!6327520 () Bool)

(assert (=> b!5289927 m!6327520))

(assert (=> b!5288218 d!1701910))

(declare-fun bs!1226590 () Bool)

(declare-fun d!1701912 () Bool)

(assert (= bs!1226590 (and d!1701912 d!1701188)))

(declare-fun lambda!267771 () Int)

(assert (=> bs!1226590 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267771 lambda!267640))))

(declare-fun bs!1226592 () Bool)

(assert (= bs!1226592 (and d!1701912 b!5287682)))

(assert (=> bs!1226592 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267771 lambda!267546))))

(declare-fun bs!1226594 () Bool)

(assert (= bs!1226594 (and d!1701912 d!1701704)))

(assert (=> bs!1226594 (= lambda!267771 lambda!267741)))

(declare-fun bs!1226596 () Bool)

(assert (= bs!1226596 (and d!1701912 d!1701708)))

(assert (=> bs!1226596 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267771 lambda!267742))))

(declare-fun bs!1226597 () Bool)

(assert (= bs!1226597 (and d!1701912 d!1701888)))

(assert (=> bs!1226597 (= lambda!267771 lambda!267768)))

(declare-fun bs!1226599 () Bool)

(assert (= bs!1226599 (and d!1701912 d!1701364)))

(assert (=> bs!1226599 (= lambda!267771 lambda!267678)))

(declare-fun bs!1226600 () Bool)

(assert (= bs!1226600 (and d!1701912 d!1701776)))

(assert (=> bs!1226600 (= lambda!267771 lambda!267750)))

(declare-fun bs!1226601 () Bool)

(assert (= bs!1226601 (and d!1701912 d!1701080)))

(assert (=> bs!1226601 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267771 lambda!267614))))

(declare-fun bs!1226603 () Bool)

(assert (= bs!1226603 (and d!1701912 d!1701496)))

(assert (=> bs!1226603 (= lambda!267771 lambda!267705)))

(assert (=> d!1701912 true))

(assert (=> d!1701912 (= (derivationStepZipper!1164 lt!2161305 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161305 lambda!267771))))

(declare-fun bs!1226605 () Bool)

(assert (= bs!1226605 d!1701912))

(declare-fun m!6327522 () Bool)

(assert (=> bs!1226605 m!6327522))

(assert (=> b!5288218 d!1701912))

(assert (=> b!5288218 d!1701366))

(assert (=> b!5288218 d!1701370))

(declare-fun d!1701914 () Bool)

(assert (=> d!1701914 (= (isEmpty!32892 lt!2161282) ((_ is Nil!60939) lt!2161282))))

(assert (=> b!5288560 d!1701914))

(declare-fun d!1701916 () Bool)

(assert (=> d!1701916 (= (Exists!2102 lambda!267629) (choose!39491 lambda!267629))))

(declare-fun bs!1226608 () Bool)

(assert (= bs!1226608 d!1701916))

(declare-fun m!6327524 () Bool)

(assert (=> bs!1226608 m!6327524))

(assert (=> d!1701166 d!1701916))

(declare-fun d!1701918 () Bool)

(assert (=> d!1701918 (= (Exists!2102 lambda!267633) (choose!39491 lambda!267633))))

(declare-fun bs!1226609 () Bool)

(assert (= bs!1226609 d!1701918))

(declare-fun m!6327526 () Bool)

(assert (=> bs!1226609 m!6327526))

(assert (=> d!1701166 d!1701918))

(declare-fun bs!1226616 () Bool)

(declare-fun d!1701920 () Bool)

(assert (= bs!1226616 (and d!1701920 b!5288579)))

(declare-fun lambda!267777 () Int)

(assert (=> bs!1226616 (not (= lambda!267777 lambda!267649))))

(declare-fun bs!1226617 () Bool)

(assert (= bs!1226617 (and d!1701920 d!1701146)))

(assert (=> bs!1226617 (= lambda!267777 lambda!267621)))

(declare-fun bs!1226618 () Bool)

(assert (= bs!1226618 (and d!1701920 b!5288945)))

(assert (=> bs!1226618 (not (= lambda!267777 lambda!267680))))

(declare-fun bs!1226619 () Bool)

(assert (= bs!1226619 (and d!1701920 b!5287706)))

(assert (=> bs!1226619 (= lambda!267777 lambda!267544)))

(declare-fun bs!1226620 () Bool)

(assert (= bs!1226620 (and d!1701920 b!5288667)))

(assert (=> bs!1226620 (not (= lambda!267777 lambda!267654))))

(declare-fun bs!1226621 () Bool)

(assert (= bs!1226621 (and d!1701920 d!1701238)))

(assert (=> bs!1226621 (not (= lambda!267777 lambda!267653))))

(declare-fun bs!1226622 () Bool)

(assert (= bs!1226622 (and d!1701920 b!5287700)))

(assert (=> bs!1226622 (not (= lambda!267777 lambda!267548))))

(declare-fun bs!1226623 () Bool)

(assert (= bs!1226623 (and d!1701920 b!5288580)))

(assert (=> bs!1226623 (not (= lambda!267777 lambda!267648))))

(declare-fun bs!1226624 () Bool)

(assert (= bs!1226624 (and d!1701920 b!5289483)))

(assert (=> bs!1226624 (not (= lambda!267777 lambda!267736))))

(declare-fun bs!1226625 () Bool)

(assert (= bs!1226625 (and d!1701920 b!5288666)))

(assert (=> bs!1226625 (not (= lambda!267777 lambda!267655))))

(assert (=> bs!1226622 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267777 lambda!267547))))

(declare-fun bs!1226626 () Bool)

(assert (= bs!1226626 (and d!1701920 b!5288946)))

(assert (=> bs!1226626 (not (= lambda!267777 lambda!267679))))

(declare-fun bs!1226627 () Bool)

(assert (= bs!1226627 (and d!1701920 b!5288548)))

(assert (=> bs!1226627 (not (= lambda!267777 lambda!267645))))

(declare-fun bs!1226628 () Bool)

(assert (= bs!1226628 (and d!1701920 d!1701166)))

(assert (=> bs!1226628 (= lambda!267777 lambda!267629)))

(declare-fun bs!1226629 () Bool)

(assert (= bs!1226629 (and d!1701920 b!5289303)))

(assert (=> bs!1226629 (not (= lambda!267777 lambda!267720))))

(assert (=> bs!1226619 (not (= lambda!267777 lambda!267545))))

(declare-fun bs!1226630 () Bool)

(assert (= bs!1226630 (and d!1701920 d!1701882)))

(assert (=> bs!1226630 (= lambda!267777 lambda!267764)))

(assert (=> bs!1226621 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267777 lambda!267652))))

(declare-fun bs!1226631 () Bool)

(assert (= bs!1226631 (and d!1701920 d!1701234)))

(assert (=> bs!1226631 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267777 lambda!267651))))

(declare-fun bs!1226632 () Bool)

(assert (= bs!1226632 (and d!1701920 b!5289304)))

(assert (=> bs!1226632 (not (= lambda!267777 lambda!267718))))

(declare-fun bs!1226633 () Bool)

(assert (= bs!1226633 (and d!1701920 b!5288547)))

(assert (=> bs!1226633 (not (= lambda!267777 lambda!267646))))

(assert (=> bs!1226628 (not (= lambda!267777 lambda!267633))))

(declare-fun bs!1226634 () Bool)

(assert (= bs!1226634 (and d!1701920 d!1701612)))

(assert (=> bs!1226634 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267777 lambda!267728))))

(declare-fun bs!1226635 () Bool)

(assert (= bs!1226635 (and d!1701920 b!5289482)))

(assert (=> bs!1226635 (not (= lambda!267777 lambda!267738))))

(assert (=> d!1701920 true))

(assert (=> d!1701920 true))

(assert (=> d!1701920 true))

(declare-fun lambda!267778 () Int)

(assert (=> bs!1226616 (= (and (= (regOne!30354 r!7292) (regOne!30354 lt!2161294)) (= (regTwo!30354 r!7292) (regTwo!30354 lt!2161294))) (= lambda!267778 lambda!267649))))

(assert (=> bs!1226617 (not (= lambda!267778 lambda!267621))))

(assert (=> bs!1226618 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 r!7292) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267778 lambda!267680))))

(declare-fun bs!1226636 () Bool)

(assert (= bs!1226636 d!1701920))

(assert (=> bs!1226636 (not (= lambda!267778 lambda!267777))))

(assert (=> bs!1226619 (not (= lambda!267778 lambda!267544))))

(assert (=> bs!1226620 (not (= lambda!267778 lambda!267654))))

(assert (=> bs!1226621 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267778 lambda!267653))))

(assert (=> bs!1226622 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 r!7292) lt!2161300)) (= lambda!267778 lambda!267548))))

(assert (=> bs!1226623 (not (= lambda!267778 lambda!267648))))

(assert (=> bs!1226624 (not (= lambda!267778 lambda!267736))))

(assert (=> bs!1226625 (= lambda!267778 lambda!267655)))

(assert (=> bs!1226622 (not (= lambda!267778 lambda!267547))))

(assert (=> bs!1226626 (not (= lambda!267778 lambda!267679))))

(assert (=> bs!1226627 (not (= lambda!267778 lambda!267645))))

(assert (=> bs!1226628 (not (= lambda!267778 lambda!267629))))

(assert (=> bs!1226629 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regTwo!30355 lt!2161300))) (= (regTwo!30354 r!7292) (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267778 lambda!267720))))

(assert (=> bs!1226619 (= lambda!267778 lambda!267545)))

(assert (=> bs!1226630 (not (= lambda!267778 lambda!267764))))

(assert (=> bs!1226621 (not (= lambda!267778 lambda!267652))))

(assert (=> bs!1226631 (not (= lambda!267778 lambda!267651))))

(assert (=> bs!1226632 (not (= lambda!267778 lambda!267718))))

(assert (=> bs!1226633 (= (and (= (regOne!30354 r!7292) (regOne!30354 lt!2161300)) (= (regTwo!30354 r!7292) (regTwo!30354 lt!2161300))) (= lambda!267778 lambda!267646))))

(assert (=> bs!1226628 (= lambda!267778 lambda!267633)))

(assert (=> bs!1226634 (not (= lambda!267778 lambda!267728))))

(assert (=> bs!1226635 (= (and (= (regOne!30354 r!7292) (regOne!30354 (regOne!30355 r!7292))) (= (regTwo!30354 r!7292) (regTwo!30354 (regOne!30355 r!7292)))) (= lambda!267778 lambda!267738))))

(assert (=> d!1701920 true))

(assert (=> d!1701920 true))

(assert (=> d!1701920 true))

(assert (=> d!1701920 (= (Exists!2102 lambda!267777) (Exists!2102 lambda!267778))))

(assert (=> d!1701920 true))

(declare-fun _$90!1121 () Unit!153202)

(assert (=> d!1701920 (= (choose!39493 (regOne!30354 r!7292) (regTwo!30354 r!7292) s!2326) _$90!1121)))

(declare-fun m!6327602 () Bool)

(assert (=> bs!1226636 m!6327602))

(declare-fun m!6327604 () Bool)

(assert (=> bs!1226636 m!6327604))

(assert (=> d!1701166 d!1701920))

(assert (=> d!1701166 d!1701792))

(declare-fun d!1701958 () Bool)

(assert (=> d!1701958 (= (nullable!5090 (reg!15250 r!7292)) (nullableFct!1460 (reg!15250 r!7292)))))

(declare-fun bs!1226641 () Bool)

(assert (= bs!1226641 d!1701958))

(declare-fun m!6327606 () Bool)

(assert (=> bs!1226641 m!6327606))

(assert (=> b!5288057 d!1701958))

(declare-fun d!1701960 () Bool)

(declare-fun res!2243575 () Bool)

(declare-fun e!3288741 () Bool)

(assert (=> d!1701960 (=> res!2243575 e!3288741)))

(assert (=> d!1701960 (= res!2243575 ((_ is Nil!60939) (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(assert (=> d!1701960 (= (forall!14329 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))) lambda!267549) e!3288741)))

(declare-fun b!5290000 () Bool)

(declare-fun e!3288742 () Bool)

(assert (=> b!5290000 (= e!3288741 e!3288742)))

(declare-fun res!2243576 () Bool)

(assert (=> b!5290000 (=> (not res!2243576) (not e!3288742))))

(assert (=> b!5290000 (= res!2243576 (dynLambda!24093 lambda!267549 (h!67387 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5290001 () Bool)

(assert (=> b!5290001 (= e!3288742 (forall!14329 (t!374266 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343))))) lambda!267549))))

(assert (= (and d!1701960 (not res!2243575)) b!5290000))

(assert (= (and b!5290000 res!2243576) b!5290001))

(declare-fun b_lambda!204001 () Bool)

(assert (=> (not b_lambda!204001) (not b!5290000)))

(declare-fun m!6327608 () Bool)

(assert (=> b!5290000 m!6327608))

(declare-fun m!6327610 () Bool)

(assert (=> b!5290001 m!6327610))

(assert (=> b!5288635 d!1701960))

(declare-fun d!1701962 () Bool)

(assert (=> d!1701962 (= (head!11335 (unfocusZipperList!363 zl!343)) (h!67387 (unfocusZipperList!363 zl!343)))))

(assert (=> b!5288467 d!1701962))

(declare-fun b!5290002 () Bool)

(declare-fun e!3288744 () Bool)

(assert (=> b!5290002 (= e!3288744 (not (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 lt!2161294 (head!11334 s!2326))))))))

(declare-fun b!5290003 () Bool)

(declare-fun e!3288743 () Bool)

(assert (=> b!5290003 (= e!3288743 (nullable!5090 (derivativeStep!4129 lt!2161294 (head!11334 s!2326))))))

(declare-fun d!1701964 () Bool)

(declare-fun e!3288748 () Bool)

(assert (=> d!1701964 e!3288748))

(declare-fun c!917671 () Bool)

(assert (=> d!1701964 (= c!917671 ((_ is EmptyExpr!14921) (derivativeStep!4129 lt!2161294 (head!11334 s!2326))))))

(declare-fun lt!2161611 () Bool)

(assert (=> d!1701964 (= lt!2161611 e!3288743)))

(declare-fun c!917670 () Bool)

(assert (=> d!1701964 (= c!917670 (isEmpty!32895 (tail!10430 s!2326)))))

(assert (=> d!1701964 (validRegex!6657 (derivativeStep!4129 lt!2161294 (head!11334 s!2326)))))

(assert (=> d!1701964 (= (matchR!7106 (derivativeStep!4129 lt!2161294 (head!11334 s!2326)) (tail!10430 s!2326)) lt!2161611)))

(declare-fun b!5290004 () Bool)

(declare-fun e!3288749 () Bool)

(assert (=> b!5290004 (= e!3288749 (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 lt!2161294 (head!11334 s!2326)))))))

(declare-fun b!5290005 () Bool)

(declare-fun e!3288747 () Bool)

(assert (=> b!5290005 (= e!3288748 e!3288747)))

(declare-fun c!917672 () Bool)

(assert (=> b!5290005 (= c!917672 ((_ is EmptyLang!14921) (derivativeStep!4129 lt!2161294 (head!11334 s!2326))))))

(declare-fun b!5290006 () Bool)

(assert (=> b!5290006 (= e!3288743 (matchR!7106 (derivativeStep!4129 (derivativeStep!4129 lt!2161294 (head!11334 s!2326)) (head!11334 (tail!10430 s!2326))) (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5290007 () Bool)

(declare-fun res!2243584 () Bool)

(assert (=> b!5290007 (=> (not res!2243584) (not e!3288749))))

(assert (=> b!5290007 (= res!2243584 (isEmpty!32895 (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5290008 () Bool)

(declare-fun e!3288745 () Bool)

(declare-fun e!3288746 () Bool)

(assert (=> b!5290008 (= e!3288745 e!3288746)))

(declare-fun res!2243583 () Bool)

(assert (=> b!5290008 (=> (not res!2243583) (not e!3288746))))

(assert (=> b!5290008 (= res!2243583 (not lt!2161611))))

(declare-fun b!5290009 () Bool)

(declare-fun res!2243581 () Bool)

(assert (=> b!5290009 (=> res!2243581 e!3288745)))

(assert (=> b!5290009 (= res!2243581 e!3288749)))

(declare-fun res!2243582 () Bool)

(assert (=> b!5290009 (=> (not res!2243582) (not e!3288749))))

(assert (=> b!5290009 (= res!2243582 lt!2161611)))

(declare-fun b!5290010 () Bool)

(declare-fun call!377004 () Bool)

(assert (=> b!5290010 (= e!3288748 (= lt!2161611 call!377004))))

(declare-fun b!5290011 () Bool)

(assert (=> b!5290011 (= e!3288746 e!3288744)))

(declare-fun res!2243577 () Bool)

(assert (=> b!5290011 (=> res!2243577 e!3288744)))

(assert (=> b!5290011 (= res!2243577 call!377004)))

(declare-fun bm!376999 () Bool)

(assert (=> bm!376999 (= call!377004 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5290012 () Bool)

(declare-fun res!2243578 () Bool)

(assert (=> b!5290012 (=> res!2243578 e!3288745)))

(assert (=> b!5290012 (= res!2243578 (not ((_ is ElementMatch!14921) (derivativeStep!4129 lt!2161294 (head!11334 s!2326)))))))

(assert (=> b!5290012 (= e!3288747 e!3288745)))

(declare-fun b!5290013 () Bool)

(declare-fun res!2243580 () Bool)

(assert (=> b!5290013 (=> res!2243580 e!3288744)))

(assert (=> b!5290013 (= res!2243580 (not (isEmpty!32895 (tail!10430 (tail!10430 s!2326)))))))

(declare-fun b!5290014 () Bool)

(declare-fun res!2243579 () Bool)

(assert (=> b!5290014 (=> (not res!2243579) (not e!3288749))))

(assert (=> b!5290014 (= res!2243579 (not call!377004))))

(declare-fun b!5290015 () Bool)

(assert (=> b!5290015 (= e!3288747 (not lt!2161611))))

(assert (= (and d!1701964 c!917670) b!5290003))

(assert (= (and d!1701964 (not c!917670)) b!5290006))

(assert (= (and d!1701964 c!917671) b!5290010))

(assert (= (and d!1701964 (not c!917671)) b!5290005))

(assert (= (and b!5290005 c!917672) b!5290015))

(assert (= (and b!5290005 (not c!917672)) b!5290012))

(assert (= (and b!5290012 (not res!2243578)) b!5290009))

(assert (= (and b!5290009 res!2243582) b!5290014))

(assert (= (and b!5290014 res!2243579) b!5290007))

(assert (= (and b!5290007 res!2243584) b!5290004))

(assert (= (and b!5290009 (not res!2243581)) b!5290008))

(assert (= (and b!5290008 res!2243583) b!5290011))

(assert (= (and b!5290011 (not res!2243577)) b!5290013))

(assert (= (and b!5290013 (not res!2243580)) b!5290002))

(assert (= (or b!5290010 b!5290011 b!5290014) bm!376999))

(assert (=> b!5290004 m!6326080))

(assert (=> b!5290004 m!6326884))

(assert (=> b!5290013 m!6326080))

(assert (=> b!5290013 m!6326886))

(assert (=> b!5290013 m!6326886))

(assert (=> b!5290013 m!6326888))

(assert (=> b!5290007 m!6326080))

(assert (=> b!5290007 m!6326886))

(assert (=> b!5290007 m!6326886))

(assert (=> b!5290007 m!6326888))

(assert (=> b!5290002 m!6326080))

(assert (=> b!5290002 m!6326884))

(assert (=> b!5290003 m!6326104))

(declare-fun m!6327614 () Bool)

(assert (=> b!5290003 m!6327614))

(assert (=> bm!376999 m!6326080))

(assert (=> bm!376999 m!6326100))

(assert (=> b!5290006 m!6326080))

(assert (=> b!5290006 m!6326884))

(assert (=> b!5290006 m!6326104))

(assert (=> b!5290006 m!6326884))

(declare-fun m!6327616 () Bool)

(assert (=> b!5290006 m!6327616))

(assert (=> b!5290006 m!6326080))

(assert (=> b!5290006 m!6326886))

(assert (=> b!5290006 m!6327616))

(assert (=> b!5290006 m!6326886))

(declare-fun m!6327618 () Bool)

(assert (=> b!5290006 m!6327618))

(assert (=> d!1701964 m!6326080))

(assert (=> d!1701964 m!6326100))

(assert (=> d!1701964 m!6326104))

(declare-fun m!6327620 () Bool)

(assert (=> d!1701964 m!6327620))

(assert (=> b!5288620 d!1701964))

(declare-fun b!5290016 () Bool)

(declare-fun e!3288750 () Regex!14921)

(declare-fun e!3288753 () Regex!14921)

(assert (=> b!5290016 (= e!3288750 e!3288753)))

(declare-fun c!917677 () Bool)

(assert (=> b!5290016 (= c!917677 ((_ is ElementMatch!14921) lt!2161294))))

(declare-fun bm!377000 () Bool)

(declare-fun c!917673 () Bool)

(declare-fun c!917674 () Bool)

(declare-fun call!377008 () Regex!14921)

(assert (=> bm!377000 (= call!377008 (derivativeStep!4129 (ite c!917674 (regTwo!30355 lt!2161294) (ite c!917673 (reg!15250 lt!2161294) (regOne!30354 lt!2161294))) (head!11334 s!2326)))))

(declare-fun d!1701968 () Bool)

(declare-fun lt!2161612 () Regex!14921)

(assert (=> d!1701968 (validRegex!6657 lt!2161612)))

(assert (=> d!1701968 (= lt!2161612 e!3288750)))

(declare-fun c!917675 () Bool)

(assert (=> d!1701968 (= c!917675 (or ((_ is EmptyExpr!14921) lt!2161294) ((_ is EmptyLang!14921) lt!2161294)))))

(assert (=> d!1701968 (validRegex!6657 lt!2161294)))

(assert (=> d!1701968 (= (derivativeStep!4129 lt!2161294 (head!11334 s!2326)) lt!2161612)))

(declare-fun bm!377001 () Bool)

(declare-fun call!377007 () Regex!14921)

(declare-fun call!377005 () Regex!14921)

(assert (=> bm!377001 (= call!377007 call!377005)))

(declare-fun b!5290017 () Bool)

(declare-fun e!3288754 () Regex!14921)

(declare-fun call!377006 () Regex!14921)

(assert (=> b!5290017 (= e!3288754 (Concat!23766 call!377006 lt!2161294))))

(declare-fun c!917676 () Bool)

(declare-fun bm!377002 () Bool)

(assert (=> bm!377002 (= call!377005 (derivativeStep!4129 (ite c!917674 (regOne!30355 lt!2161294) (ite c!917676 (regTwo!30354 lt!2161294) (regOne!30354 lt!2161294))) (head!11334 s!2326)))))

(declare-fun b!5290018 () Bool)

(assert (=> b!5290018 (= e!3288753 (ite (= (head!11334 s!2326) (c!916969 lt!2161294)) EmptyExpr!14921 EmptyLang!14921))))

(declare-fun bm!377003 () Bool)

(assert (=> bm!377003 (= call!377006 call!377008)))

(declare-fun b!5290019 () Bool)

(declare-fun e!3288751 () Regex!14921)

(assert (=> b!5290019 (= e!3288751 (Union!14921 call!377005 call!377008))))

(declare-fun b!5290020 () Bool)

(assert (=> b!5290020 (= c!917674 ((_ is Union!14921) lt!2161294))))

(assert (=> b!5290020 (= e!3288753 e!3288751)))

(declare-fun b!5290021 () Bool)

(declare-fun e!3288752 () Regex!14921)

(assert (=> b!5290021 (= e!3288752 (Union!14921 (Concat!23766 call!377006 (regTwo!30354 lt!2161294)) call!377007))))

(declare-fun b!5290022 () Bool)

(assert (=> b!5290022 (= e!3288750 EmptyLang!14921)))

(declare-fun b!5290023 () Bool)

(assert (=> b!5290023 (= e!3288752 (Union!14921 (Concat!23766 call!377007 (regTwo!30354 lt!2161294)) EmptyLang!14921))))

(declare-fun b!5290024 () Bool)

(assert (=> b!5290024 (= e!3288751 e!3288754)))

(assert (=> b!5290024 (= c!917673 ((_ is Star!14921) lt!2161294))))

(declare-fun b!5290025 () Bool)

(assert (=> b!5290025 (= c!917676 (nullable!5090 (regOne!30354 lt!2161294)))))

(assert (=> b!5290025 (= e!3288754 e!3288752)))

(assert (= (and d!1701968 c!917675) b!5290022))

(assert (= (and d!1701968 (not c!917675)) b!5290016))

(assert (= (and b!5290016 c!917677) b!5290018))

(assert (= (and b!5290016 (not c!917677)) b!5290020))

(assert (= (and b!5290020 c!917674) b!5290019))

(assert (= (and b!5290020 (not c!917674)) b!5290024))

(assert (= (and b!5290024 c!917673) b!5290017))

(assert (= (and b!5290024 (not c!917673)) b!5290025))

(assert (= (and b!5290025 c!917676) b!5290021))

(assert (= (and b!5290025 (not c!917676)) b!5290023))

(assert (= (or b!5290021 b!5290023) bm!377001))

(assert (= (or b!5290017 b!5290021) bm!377003))

(assert (= (or b!5290019 bm!377003) bm!377000))

(assert (= (or b!5290019 bm!377001) bm!377002))

(assert (=> bm!377000 m!6326076))

(declare-fun m!6327624 () Bool)

(assert (=> bm!377000 m!6327624))

(declare-fun m!6327626 () Bool)

(assert (=> d!1701968 m!6327626))

(assert (=> d!1701968 m!6326036))

(assert (=> bm!377002 m!6326076))

(declare-fun m!6327628 () Bool)

(assert (=> bm!377002 m!6327628))

(declare-fun m!6327630 () Bool)

(assert (=> b!5290025 m!6327630))

(assert (=> b!5288620 d!1701968))

(assert (=> b!5288620 d!1701396))

(assert (=> b!5288620 d!1701574))

(declare-fun d!1701972 () Bool)

(declare-fun c!917682 () Bool)

(assert (=> d!1701972 (= c!917682 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288761 () Bool)

(assert (=> d!1701972 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161307 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288761)))

(declare-fun b!5290036 () Bool)

(assert (=> b!5290036 (= e!3288761 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161307 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5290037 () Bool)

(assert (=> b!5290037 (= e!3288761 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161307 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1701972 c!917682) b!5290036))

(assert (= (and d!1701972 (not c!917682)) b!5290037))

(assert (=> d!1701972 m!6325492))

(assert (=> d!1701972 m!6326388))

(assert (=> b!5290036 m!6326158))

(declare-fun m!6327632 () Bool)

(assert (=> b!5290036 m!6327632))

(assert (=> b!5290037 m!6325492))

(assert (=> b!5290037 m!6326392))

(assert (=> b!5290037 m!6326158))

(assert (=> b!5290037 m!6326392))

(declare-fun m!6327634 () Bool)

(assert (=> b!5290037 m!6327634))

(assert (=> b!5290037 m!6325492))

(assert (=> b!5290037 m!6326396))

(assert (=> b!5290037 m!6327634))

(assert (=> b!5290037 m!6326396))

(declare-fun m!6327636 () Bool)

(assert (=> b!5290037 m!6327636))

(assert (=> b!5288661 d!1701972))

(declare-fun bs!1226694 () Bool)

(declare-fun d!1701974 () Bool)

(assert (= bs!1226694 (and d!1701974 d!1701188)))

(declare-fun lambda!267782 () Int)

(assert (=> bs!1226694 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267782 lambda!267640))))

(declare-fun bs!1226695 () Bool)

(assert (= bs!1226695 (and d!1701974 b!5287682)))

(assert (=> bs!1226695 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267782 lambda!267546))))

(declare-fun bs!1226696 () Bool)

(assert (= bs!1226696 (and d!1701974 d!1701704)))

(assert (=> bs!1226696 (= lambda!267782 lambda!267741)))

(declare-fun bs!1226697 () Bool)

(assert (= bs!1226697 (and d!1701974 d!1701708)))

(assert (=> bs!1226697 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267782 lambda!267742))))

(declare-fun bs!1226698 () Bool)

(assert (= bs!1226698 (and d!1701974 d!1701912)))

(assert (=> bs!1226698 (= lambda!267782 lambda!267771)))

(declare-fun bs!1226699 () Bool)

(assert (= bs!1226699 (and d!1701974 d!1701888)))

(assert (=> bs!1226699 (= lambda!267782 lambda!267768)))

(declare-fun bs!1226700 () Bool)

(assert (= bs!1226700 (and d!1701974 d!1701364)))

(assert (=> bs!1226700 (= lambda!267782 lambda!267678)))

(declare-fun bs!1226701 () Bool)

(assert (= bs!1226701 (and d!1701974 d!1701776)))

(assert (=> bs!1226701 (= lambda!267782 lambda!267750)))

(declare-fun bs!1226702 () Bool)

(assert (= bs!1226702 (and d!1701974 d!1701080)))

(assert (=> bs!1226702 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267782 lambda!267614))))

(declare-fun bs!1226703 () Bool)

(assert (= bs!1226703 (and d!1701974 d!1701496)))

(assert (=> bs!1226703 (= lambda!267782 lambda!267705)))

(assert (=> d!1701974 true))

(assert (=> d!1701974 (= (derivationStepZipper!1164 lt!2161307 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161307 lambda!267782))))

(declare-fun bs!1226704 () Bool)

(assert (= bs!1226704 d!1701974))

(declare-fun m!6327656 () Bool)

(assert (=> bs!1226704 m!6327656))

(assert (=> b!5288661 d!1701974))

(assert (=> b!5288661 d!1701366))

(assert (=> b!5288661 d!1701370))

(declare-fun bs!1226705 () Bool)

(declare-fun b!5290043 () Bool)

(assert (= bs!1226705 (and b!5290043 b!5288579)))

(declare-fun lambda!267783 () Int)

(assert (=> bs!1226705 (not (= lambda!267783 lambda!267649))))

(declare-fun bs!1226706 () Bool)

(assert (= bs!1226706 (and b!5290043 d!1701146)))

(assert (=> bs!1226706 (not (= lambda!267783 lambda!267621))))

(declare-fun bs!1226707 () Bool)

(assert (= bs!1226707 (and b!5290043 b!5288945)))

(assert (=> bs!1226707 (not (= lambda!267783 lambda!267680))))

(declare-fun bs!1226708 () Bool)

(assert (= bs!1226708 (and b!5290043 d!1701920)))

(assert (=> bs!1226708 (not (= lambda!267783 lambda!267777))))

(declare-fun bs!1226709 () Bool)

(assert (= bs!1226709 (and b!5290043 b!5287706)))

(assert (=> bs!1226709 (not (= lambda!267783 lambda!267544))))

(declare-fun bs!1226710 () Bool)

(assert (= bs!1226710 (and b!5290043 b!5288667)))

(assert (=> bs!1226710 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 r!7292)) (= (regOne!30355 lt!2161300) r!7292)) (= lambda!267783 lambda!267654))))

(declare-fun bs!1226711 () Bool)

(assert (= bs!1226711 (and b!5290043 d!1701238)))

(assert (=> bs!1226711 (not (= lambda!267783 lambda!267653))))

(declare-fun bs!1226712 () Bool)

(assert (= bs!1226712 (and b!5290043 b!5287700)))

(assert (=> bs!1226712 (not (= lambda!267783 lambda!267548))))

(declare-fun bs!1226713 () Bool)

(assert (= bs!1226713 (and b!5290043 b!5288580)))

(assert (=> bs!1226713 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 lt!2161294)) (= (regOne!30355 lt!2161300) lt!2161294)) (= lambda!267783 lambda!267648))))

(declare-fun bs!1226714 () Bool)

(assert (= bs!1226714 (and b!5290043 b!5289483)))

(assert (=> bs!1226714 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 (regOne!30355 r!7292))) (= (regOne!30355 lt!2161300) (regOne!30355 r!7292))) (= lambda!267783 lambda!267736))))

(declare-fun bs!1226715 () Bool)

(assert (= bs!1226715 (and b!5290043 b!5288666)))

(assert (=> bs!1226715 (not (= lambda!267783 lambda!267655))))

(assert (=> bs!1226712 (not (= lambda!267783 lambda!267547))))

(declare-fun bs!1226716 () Bool)

(assert (= bs!1226716 (and b!5290043 b!5288946)))

(assert (=> bs!1226716 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 (regTwo!30355 r!7292))) (= (regOne!30355 lt!2161300) (regTwo!30355 r!7292))) (= lambda!267783 lambda!267679))))

(assert (=> bs!1226708 (not (= lambda!267783 lambda!267778))))

(declare-fun bs!1226717 () Bool)

(assert (= bs!1226717 (and b!5290043 b!5288548)))

(assert (=> bs!1226717 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 lt!2161300)) (= (regOne!30355 lt!2161300) lt!2161300)) (= lambda!267783 lambda!267645))))

(declare-fun bs!1226718 () Bool)

(assert (= bs!1226718 (and b!5290043 d!1701166)))

(assert (=> bs!1226718 (not (= lambda!267783 lambda!267629))))

(declare-fun bs!1226719 () Bool)

(assert (= bs!1226719 (and b!5290043 b!5289303)))

(assert (=> bs!1226719 (not (= lambda!267783 lambda!267720))))

(assert (=> bs!1226709 (not (= lambda!267783 lambda!267545))))

(declare-fun bs!1226720 () Bool)

(assert (= bs!1226720 (and b!5290043 d!1701882)))

(assert (=> bs!1226720 (not (= lambda!267783 lambda!267764))))

(assert (=> bs!1226711 (not (= lambda!267783 lambda!267652))))

(declare-fun bs!1226721 () Bool)

(assert (= bs!1226721 (and b!5290043 d!1701234)))

(assert (=> bs!1226721 (not (= lambda!267783 lambda!267651))))

(declare-fun bs!1226722 () Bool)

(assert (= bs!1226722 (and b!5290043 b!5289304)))

(assert (=> bs!1226722 (= (and (= (reg!15250 (regOne!30355 lt!2161300)) (reg!15250 (regTwo!30355 lt!2161300))) (= (regOne!30355 lt!2161300) (regTwo!30355 lt!2161300))) (= lambda!267783 lambda!267718))))

(declare-fun bs!1226723 () Bool)

(assert (= bs!1226723 (and b!5290043 b!5288547)))

(assert (=> bs!1226723 (not (= lambda!267783 lambda!267646))))

(assert (=> bs!1226718 (not (= lambda!267783 lambda!267633))))

(declare-fun bs!1226724 () Bool)

(assert (= bs!1226724 (and b!5290043 d!1701612)))

(assert (=> bs!1226724 (not (= lambda!267783 lambda!267728))))

(declare-fun bs!1226725 () Bool)

(assert (= bs!1226725 (and b!5290043 b!5289482)))

(assert (=> bs!1226725 (not (= lambda!267783 lambda!267738))))

(assert (=> b!5290043 true))

(assert (=> b!5290043 true))

(declare-fun bs!1226726 () Bool)

(declare-fun b!5290042 () Bool)

(assert (= bs!1226726 (and b!5290042 b!5288579)))

(declare-fun lambda!267784 () Int)

(assert (=> bs!1226726 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 lt!2161294))) (= lambda!267784 lambda!267649))))

(declare-fun bs!1226727 () Bool)

(assert (= bs!1226727 (and b!5290042 d!1701146)))

(assert (=> bs!1226727 (not (= lambda!267784 lambda!267621))))

(declare-fun bs!1226728 () Bool)

(assert (= bs!1226728 (and b!5290042 b!5288945)))

(assert (=> bs!1226728 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267784 lambda!267680))))

(declare-fun bs!1226730 () Bool)

(assert (= bs!1226730 (and b!5290042 d!1701920)))

(assert (=> bs!1226730 (not (= lambda!267784 lambda!267777))))

(declare-fun bs!1226731 () Bool)

(assert (= bs!1226731 (and b!5290042 b!5287706)))

(assert (=> bs!1226731 (not (= lambda!267784 lambda!267544))))

(declare-fun bs!1226732 () Bool)

(assert (= bs!1226732 (and b!5290042 d!1701238)))

(assert (=> bs!1226732 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161300)) lt!2161300)) (= lambda!267784 lambda!267653))))

(declare-fun bs!1226733 () Bool)

(assert (= bs!1226733 (and b!5290042 b!5287700)))

(assert (=> bs!1226733 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161300)) lt!2161300)) (= lambda!267784 lambda!267548))))

(declare-fun bs!1226734 () Bool)

(assert (= bs!1226734 (and b!5290042 b!5288580)))

(assert (=> bs!1226734 (not (= lambda!267784 lambda!267648))))

(declare-fun bs!1226735 () Bool)

(assert (= bs!1226735 (and b!5290042 b!5289483)))

(assert (=> bs!1226735 (not (= lambda!267784 lambda!267736))))

(declare-fun bs!1226736 () Bool)

(assert (= bs!1226736 (and b!5290042 b!5288666)))

(assert (=> bs!1226736 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267784 lambda!267655))))

(assert (=> bs!1226733 (not (= lambda!267784 lambda!267547))))

(declare-fun bs!1226737 () Bool)

(assert (= bs!1226737 (and b!5290042 b!5288946)))

(assert (=> bs!1226737 (not (= lambda!267784 lambda!267679))))

(assert (=> bs!1226730 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267784 lambda!267778))))

(declare-fun bs!1226738 () Bool)

(assert (= bs!1226738 (and b!5290042 b!5288548)))

(assert (=> bs!1226738 (not (= lambda!267784 lambda!267645))))

(declare-fun bs!1226739 () Bool)

(assert (= bs!1226739 (and b!5290042 d!1701166)))

(assert (=> bs!1226739 (not (= lambda!267784 lambda!267629))))

(declare-fun bs!1226740 () Bool)

(assert (= bs!1226740 (and b!5290042 b!5289303)))

(assert (=> bs!1226740 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 (regTwo!30355 lt!2161300))) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267784 lambda!267720))))

(assert (=> bs!1226731 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267784 lambda!267545))))

(declare-fun bs!1226741 () Bool)

(assert (= bs!1226741 (and b!5290042 d!1701882)))

(assert (=> bs!1226741 (not (= lambda!267784 lambda!267764))))

(assert (=> bs!1226732 (not (= lambda!267784 lambda!267652))))

(declare-fun bs!1226742 () Bool)

(assert (= bs!1226742 (and b!5290042 d!1701234)))

(assert (=> bs!1226742 (not (= lambda!267784 lambda!267651))))

(declare-fun bs!1226743 () Bool)

(assert (= bs!1226743 (and b!5290042 b!5289304)))

(assert (=> bs!1226743 (not (= lambda!267784 lambda!267718))))

(declare-fun bs!1226744 () Bool)

(assert (= bs!1226744 (and b!5290042 b!5288667)))

(assert (=> bs!1226744 (not (= lambda!267784 lambda!267654))))

(declare-fun bs!1226745 () Bool)

(assert (= bs!1226745 (and b!5290042 b!5290043)))

(assert (=> bs!1226745 (not (= lambda!267784 lambda!267783))))

(declare-fun bs!1226746 () Bool)

(assert (= bs!1226746 (and b!5290042 b!5288547)))

(assert (=> bs!1226746 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 lt!2161300))) (= lambda!267784 lambda!267646))))

(assert (=> bs!1226739 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 r!7292))) (= lambda!267784 lambda!267633))))

(declare-fun bs!1226749 () Bool)

(assert (= bs!1226749 (and b!5290042 d!1701612)))

(assert (=> bs!1226749 (not (= lambda!267784 lambda!267728))))

(declare-fun bs!1226751 () Bool)

(assert (= bs!1226751 (and b!5290042 b!5289482)))

(assert (=> bs!1226751 (= (and (= (regOne!30354 (regOne!30355 lt!2161300)) (regOne!30354 (regOne!30355 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161300)) (regTwo!30354 (regOne!30355 r!7292)))) (= lambda!267784 lambda!267738))))

(assert (=> b!5290042 true))

(assert (=> b!5290042 true))

(declare-fun b!5290038 () Bool)

(declare-fun e!3288765 () Bool)

(declare-fun e!3288764 () Bool)

(assert (=> b!5290038 (= e!3288765 e!3288764)))

(declare-fun c!917683 () Bool)

(assert (=> b!5290038 (= c!917683 ((_ is Star!14921) (regOne!30355 lt!2161300)))))

(declare-fun b!5290039 () Bool)

(declare-fun c!917686 () Bool)

(assert (=> b!5290039 (= c!917686 ((_ is Union!14921) (regOne!30355 lt!2161300)))))

(declare-fun e!3288762 () Bool)

(assert (=> b!5290039 (= e!3288762 e!3288765)))

(declare-fun b!5290041 () Bool)

(assert (=> b!5290041 (= e!3288762 (= s!2326 (Cons!60938 (c!916969 (regOne!30355 lt!2161300)) Nil!60938)))))

(declare-fun call!377010 () Bool)

(assert (=> b!5290042 (= e!3288764 call!377010)))

(declare-fun e!3288767 () Bool)

(assert (=> b!5290043 (= e!3288767 call!377010)))

(declare-fun b!5290044 () Bool)

(declare-fun e!3288766 () Bool)

(declare-fun e!3288768 () Bool)

(assert (=> b!5290044 (= e!3288766 e!3288768)))

(declare-fun res!2243589 () Bool)

(assert (=> b!5290044 (= res!2243589 (not ((_ is EmptyLang!14921) (regOne!30355 lt!2161300))))))

(assert (=> b!5290044 (=> (not res!2243589) (not e!3288768))))

(declare-fun bm!377004 () Bool)

(declare-fun call!377009 () Bool)

(assert (=> bm!377004 (= call!377009 (isEmpty!32895 s!2326))))

(declare-fun d!1701978 () Bool)

(declare-fun c!917685 () Bool)

(assert (=> d!1701978 (= c!917685 ((_ is EmptyExpr!14921) (regOne!30355 lt!2161300)))))

(assert (=> d!1701978 (= (matchRSpec!2024 (regOne!30355 lt!2161300) s!2326) e!3288766)))

(declare-fun b!5290040 () Bool)

(declare-fun e!3288763 () Bool)

(assert (=> b!5290040 (= e!3288765 e!3288763)))

(declare-fun res!2243588 () Bool)

(assert (=> b!5290040 (= res!2243588 (matchRSpec!2024 (regOne!30355 (regOne!30355 lt!2161300)) s!2326))))

(assert (=> b!5290040 (=> res!2243588 e!3288763)))

(declare-fun b!5290045 () Bool)

(declare-fun c!917684 () Bool)

(assert (=> b!5290045 (= c!917684 ((_ is ElementMatch!14921) (regOne!30355 lt!2161300)))))

(assert (=> b!5290045 (= e!3288768 e!3288762)))

(declare-fun b!5290046 () Bool)

(declare-fun res!2243587 () Bool)

(assert (=> b!5290046 (=> res!2243587 e!3288767)))

(assert (=> b!5290046 (= res!2243587 call!377009)))

(assert (=> b!5290046 (= e!3288764 e!3288767)))

(declare-fun b!5290047 () Bool)

(assert (=> b!5290047 (= e!3288766 call!377009)))

(declare-fun bm!377005 () Bool)

(assert (=> bm!377005 (= call!377010 (Exists!2102 (ite c!917683 lambda!267783 lambda!267784)))))

(declare-fun b!5290048 () Bool)

(assert (=> b!5290048 (= e!3288763 (matchRSpec!2024 (regTwo!30355 (regOne!30355 lt!2161300)) s!2326))))

(assert (= (and d!1701978 c!917685) b!5290047))

(assert (= (and d!1701978 (not c!917685)) b!5290044))

(assert (= (and b!5290044 res!2243589) b!5290045))

(assert (= (and b!5290045 c!917684) b!5290041))

(assert (= (and b!5290045 (not c!917684)) b!5290039))

(assert (= (and b!5290039 c!917686) b!5290040))

(assert (= (and b!5290039 (not c!917686)) b!5290038))

(assert (= (and b!5290040 (not res!2243588)) b!5290048))

(assert (= (and b!5290038 c!917683) b!5290046))

(assert (= (and b!5290038 (not c!917683)) b!5290042))

(assert (= (and b!5290046 (not res!2243587)) b!5290043))

(assert (= (or b!5290043 b!5290042) bm!377005))

(assert (= (or b!5290047 b!5290046) bm!377004))

(assert (=> bm!377004 m!6326026))

(declare-fun m!6327680 () Bool)

(assert (=> b!5290040 m!6327680))

(declare-fun m!6327682 () Bool)

(assert (=> bm!377005 m!6327682))

(declare-fun m!6327684 () Bool)

(assert (=> b!5290048 m!6327684))

(assert (=> b!5288545 d!1701978))

(declare-fun d!1701992 () Bool)

(assert (=> d!1701992 true))

(declare-fun setRes!33944 () Bool)

(assert (=> d!1701992 setRes!33944))

(declare-fun condSetEmpty!33944 () Bool)

(declare-fun res!2243603 () (InoxSet Context!8610))

(assert (=> d!1701992 (= condSetEmpty!33944 (= res!2243603 ((as const (Array Context!8610 Bool)) false)))))

(assert (=> d!1701992 (= (choose!39488 lt!2161283 lambda!267546) res!2243603)))

(declare-fun setIsEmpty!33944 () Bool)

(assert (=> setIsEmpty!33944 setRes!33944))

(declare-fun e!3288790 () Bool)

(declare-fun setNonEmpty!33944 () Bool)

(declare-fun setElem!33944 () Context!8610)

(declare-fun tp!1476567 () Bool)

(assert (=> setNonEmpty!33944 (= setRes!33944 (and tp!1476567 (inv!80549 setElem!33944) e!3288790))))

(declare-fun setRest!33944 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33944 (= res!2243603 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33944 true) setRest!33944))))

(declare-fun b!5290075 () Bool)

(declare-fun tp!1476566 () Bool)

(assert (=> b!5290075 (= e!3288790 tp!1476566)))

(assert (= (and d!1701992 condSetEmpty!33944) setIsEmpty!33944))

(assert (= (and d!1701992 (not condSetEmpty!33944)) setNonEmpty!33944))

(assert (= setNonEmpty!33944 b!5290075))

(declare-fun m!6327688 () Bool)

(assert (=> setNonEmpty!33944 m!6327688))

(assert (=> d!1701072 d!1701992))

(declare-fun bs!1226771 () Bool)

(declare-fun b!5290092 () Bool)

(assert (= bs!1226771 (and b!5290092 b!5288579)))

(declare-fun lambda!267787 () Int)

(assert (=> bs!1226771 (not (= lambda!267787 lambda!267649))))

(declare-fun bs!1226773 () Bool)

(assert (= bs!1226773 (and b!5290092 d!1701146)))

(assert (=> bs!1226773 (not (= lambda!267787 lambda!267621))))

(declare-fun bs!1226775 () Bool)

(assert (= bs!1226775 (and b!5290092 b!5288945)))

(assert (=> bs!1226775 (not (= lambda!267787 lambda!267680))))

(declare-fun bs!1226777 () Bool)

(assert (= bs!1226777 (and b!5290092 d!1701920)))

(assert (=> bs!1226777 (not (= lambda!267787 lambda!267777))))

(declare-fun bs!1226779 () Bool)

(assert (= bs!1226779 (and b!5290092 b!5287706)))

(assert (=> bs!1226779 (not (= lambda!267787 lambda!267544))))

(declare-fun bs!1226781 () Bool)

(assert (= bs!1226781 (and b!5290092 d!1701238)))

(assert (=> bs!1226781 (not (= lambda!267787 lambda!267653))))

(declare-fun bs!1226783 () Bool)

(assert (= bs!1226783 (and b!5290092 b!5287700)))

(assert (=> bs!1226783 (not (= lambda!267787 lambda!267548))))

(declare-fun bs!1226785 () Bool)

(assert (= bs!1226785 (and b!5290092 b!5288580)))

(assert (=> bs!1226785 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 lt!2161294)) (= (regTwo!30355 lt!2161294) lt!2161294)) (= lambda!267787 lambda!267648))))

(declare-fun bs!1226787 () Bool)

(assert (= bs!1226787 (and b!5290092 b!5290042)))

(assert (=> bs!1226787 (not (= lambda!267787 lambda!267784))))

(declare-fun bs!1226788 () Bool)

(assert (= bs!1226788 (and b!5290092 b!5289483)))

(assert (=> bs!1226788 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 (regOne!30355 r!7292))) (= (regTwo!30355 lt!2161294) (regOne!30355 r!7292))) (= lambda!267787 lambda!267736))))

(declare-fun bs!1226790 () Bool)

(assert (= bs!1226790 (and b!5290092 b!5288666)))

(assert (=> bs!1226790 (not (= lambda!267787 lambda!267655))))

(assert (=> bs!1226783 (not (= lambda!267787 lambda!267547))))

(declare-fun bs!1226792 () Bool)

(assert (= bs!1226792 (and b!5290092 b!5288946)))

(assert (=> bs!1226792 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 (regTwo!30355 r!7292))) (= (regTwo!30355 lt!2161294) (regTwo!30355 r!7292))) (= lambda!267787 lambda!267679))))

(assert (=> bs!1226777 (not (= lambda!267787 lambda!267778))))

(declare-fun bs!1226795 () Bool)

(assert (= bs!1226795 (and b!5290092 b!5288548)))

(assert (=> bs!1226795 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 lt!2161300)) (= (regTwo!30355 lt!2161294) lt!2161300)) (= lambda!267787 lambda!267645))))

(declare-fun bs!1226797 () Bool)

(assert (= bs!1226797 (and b!5290092 d!1701166)))

(assert (=> bs!1226797 (not (= lambda!267787 lambda!267629))))

(declare-fun bs!1226799 () Bool)

(assert (= bs!1226799 (and b!5290092 b!5289303)))

(assert (=> bs!1226799 (not (= lambda!267787 lambda!267720))))

(assert (=> bs!1226779 (not (= lambda!267787 lambda!267545))))

(declare-fun bs!1226802 () Bool)

(assert (= bs!1226802 (and b!5290092 d!1701882)))

(assert (=> bs!1226802 (not (= lambda!267787 lambda!267764))))

(assert (=> bs!1226781 (not (= lambda!267787 lambda!267652))))

(declare-fun bs!1226804 () Bool)

(assert (= bs!1226804 (and b!5290092 d!1701234)))

(assert (=> bs!1226804 (not (= lambda!267787 lambda!267651))))

(declare-fun bs!1226806 () Bool)

(assert (= bs!1226806 (and b!5290092 b!5289304)))

(assert (=> bs!1226806 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 (regTwo!30355 lt!2161300))) (= (regTwo!30355 lt!2161294) (regTwo!30355 lt!2161300))) (= lambda!267787 lambda!267718))))

(declare-fun bs!1226808 () Bool)

(assert (= bs!1226808 (and b!5290092 b!5288667)))

(assert (=> bs!1226808 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 r!7292)) (= (regTwo!30355 lt!2161294) r!7292)) (= lambda!267787 lambda!267654))))

(declare-fun bs!1226809 () Bool)

(assert (= bs!1226809 (and b!5290092 b!5290043)))

(assert (=> bs!1226809 (= (and (= (reg!15250 (regTwo!30355 lt!2161294)) (reg!15250 (regOne!30355 lt!2161300))) (= (regTwo!30355 lt!2161294) (regOne!30355 lt!2161300))) (= lambda!267787 lambda!267783))))

(declare-fun bs!1226811 () Bool)

(assert (= bs!1226811 (and b!5290092 b!5288547)))

(assert (=> bs!1226811 (not (= lambda!267787 lambda!267646))))

(assert (=> bs!1226797 (not (= lambda!267787 lambda!267633))))

(declare-fun bs!1226814 () Bool)

(assert (= bs!1226814 (and b!5290092 d!1701612)))

(assert (=> bs!1226814 (not (= lambda!267787 lambda!267728))))

(declare-fun bs!1226815 () Bool)

(assert (= bs!1226815 (and b!5290092 b!5289482)))

(assert (=> bs!1226815 (not (= lambda!267787 lambda!267738))))

(assert (=> b!5290092 true))

(assert (=> b!5290092 true))

(declare-fun bs!1226819 () Bool)

(declare-fun b!5290091 () Bool)

(assert (= bs!1226819 (and b!5290091 b!5288579)))

(declare-fun lambda!267788 () Int)

(assert (=> bs!1226819 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 lt!2161294))) (= lambda!267788 lambda!267649))))

(declare-fun bs!1226820 () Bool)

(assert (= bs!1226820 (and b!5290091 d!1701146)))

(assert (=> bs!1226820 (not (= lambda!267788 lambda!267621))))

(declare-fun bs!1226821 () Bool)

(assert (= bs!1226821 (and b!5290091 b!5288945)))

(assert (=> bs!1226821 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267788 lambda!267680))))

(declare-fun bs!1226822 () Bool)

(assert (= bs!1226822 (and b!5290091 d!1701920)))

(assert (=> bs!1226822 (not (= lambda!267788 lambda!267777))))

(declare-fun bs!1226824 () Bool)

(assert (= bs!1226824 (and b!5290091 b!5287706)))

(assert (=> bs!1226824 (not (= lambda!267788 lambda!267544))))

(declare-fun bs!1226826 () Bool)

(assert (= bs!1226826 (and b!5290091 d!1701238)))

(assert (=> bs!1226826 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) lt!2161300)) (= lambda!267788 lambda!267653))))

(declare-fun bs!1226828 () Bool)

(assert (= bs!1226828 (and b!5290091 b!5287700)))

(assert (=> bs!1226828 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) lt!2161300)) (= lambda!267788 lambda!267548))))

(declare-fun bs!1226830 () Bool)

(assert (= bs!1226830 (and b!5290091 b!5288580)))

(assert (=> bs!1226830 (not (= lambda!267788 lambda!267648))))

(declare-fun bs!1226832 () Bool)

(assert (= bs!1226832 (and b!5290091 b!5290042)))

(assert (=> bs!1226832 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regOne!30355 lt!2161300))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 (regOne!30355 lt!2161300)))) (= lambda!267788 lambda!267784))))

(declare-fun bs!1226834 () Bool)

(assert (= bs!1226834 (and b!5290091 b!5289483)))

(assert (=> bs!1226834 (not (= lambda!267788 lambda!267736))))

(declare-fun bs!1226836 () Bool)

(assert (= bs!1226836 (and b!5290091 b!5290092)))

(assert (=> bs!1226836 (not (= lambda!267788 lambda!267787))))

(declare-fun bs!1226838 () Bool)

(assert (= bs!1226838 (and b!5290091 b!5288666)))

(assert (=> bs!1226838 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267788 lambda!267655))))

(assert (=> bs!1226828 (not (= lambda!267788 lambda!267547))))

(declare-fun bs!1226840 () Bool)

(assert (= bs!1226840 (and b!5290091 b!5288946)))

(assert (=> bs!1226840 (not (= lambda!267788 lambda!267679))))

(assert (=> bs!1226822 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267788 lambda!267778))))

(declare-fun bs!1226842 () Bool)

(assert (= bs!1226842 (and b!5290091 b!5288548)))

(assert (=> bs!1226842 (not (= lambda!267788 lambda!267645))))

(declare-fun bs!1226844 () Bool)

(assert (= bs!1226844 (and b!5290091 d!1701166)))

(assert (=> bs!1226844 (not (= lambda!267788 lambda!267629))))

(declare-fun bs!1226846 () Bool)

(assert (= bs!1226846 (and b!5290091 b!5289303)))

(assert (=> bs!1226846 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regTwo!30355 lt!2161300))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267788 lambda!267720))))

(assert (=> bs!1226824 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267788 lambda!267545))))

(declare-fun bs!1226849 () Bool)

(assert (= bs!1226849 (and b!5290091 d!1701882)))

(assert (=> bs!1226849 (not (= lambda!267788 lambda!267764))))

(assert (=> bs!1226826 (not (= lambda!267788 lambda!267652))))

(declare-fun bs!1226852 () Bool)

(assert (= bs!1226852 (and b!5290091 d!1701234)))

(assert (=> bs!1226852 (not (= lambda!267788 lambda!267651))))

(declare-fun bs!1226854 () Bool)

(assert (= bs!1226854 (and b!5290091 b!5289304)))

(assert (=> bs!1226854 (not (= lambda!267788 lambda!267718))))

(declare-fun bs!1226856 () Bool)

(assert (= bs!1226856 (and b!5290091 b!5288667)))

(assert (=> bs!1226856 (not (= lambda!267788 lambda!267654))))

(declare-fun bs!1226858 () Bool)

(assert (= bs!1226858 (and b!5290091 b!5290043)))

(assert (=> bs!1226858 (not (= lambda!267788 lambda!267783))))

(declare-fun bs!1226859 () Bool)

(assert (= bs!1226859 (and b!5290091 b!5288547)))

(assert (=> bs!1226859 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 lt!2161300))) (= lambda!267788 lambda!267646))))

(assert (=> bs!1226844 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267788 lambda!267633))))

(declare-fun bs!1226862 () Bool)

(assert (= bs!1226862 (and b!5290091 d!1701612)))

(assert (=> bs!1226862 (not (= lambda!267788 lambda!267728))))

(declare-fun bs!1226863 () Bool)

(assert (= bs!1226863 (and b!5290091 b!5289482)))

(assert (=> bs!1226863 (= (and (= (regOne!30354 (regTwo!30355 lt!2161294)) (regOne!30354 (regOne!30355 r!7292))) (= (regTwo!30354 (regTwo!30355 lt!2161294)) (regTwo!30354 (regOne!30355 r!7292)))) (= lambda!267788 lambda!267738))))

(assert (=> b!5290091 true))

(assert (=> b!5290091 true))

(declare-fun b!5290087 () Bool)

(declare-fun e!3288801 () Bool)

(declare-fun e!3288800 () Bool)

(assert (=> b!5290087 (= e!3288801 e!3288800)))

(declare-fun c!917696 () Bool)

(assert (=> b!5290087 (= c!917696 ((_ is Star!14921) (regTwo!30355 lt!2161294)))))

(declare-fun b!5290088 () Bool)

(declare-fun c!917699 () Bool)

(assert (=> b!5290088 (= c!917699 ((_ is Union!14921) (regTwo!30355 lt!2161294)))))

(declare-fun e!3288798 () Bool)

(assert (=> b!5290088 (= e!3288798 e!3288801)))

(declare-fun b!5290090 () Bool)

(assert (=> b!5290090 (= e!3288798 (= s!2326 (Cons!60938 (c!916969 (regTwo!30355 lt!2161294)) Nil!60938)))))

(declare-fun call!377020 () Bool)

(assert (=> b!5290091 (= e!3288800 call!377020)))

(declare-fun e!3288803 () Bool)

(assert (=> b!5290092 (= e!3288803 call!377020)))

(declare-fun b!5290093 () Bool)

(declare-fun e!3288802 () Bool)

(declare-fun e!3288804 () Bool)

(assert (=> b!5290093 (= e!3288802 e!3288804)))

(declare-fun res!2243609 () Bool)

(assert (=> b!5290093 (= res!2243609 (not ((_ is EmptyLang!14921) (regTwo!30355 lt!2161294))))))

(assert (=> b!5290093 (=> (not res!2243609) (not e!3288804))))

(declare-fun bm!377014 () Bool)

(declare-fun call!377019 () Bool)

(assert (=> bm!377014 (= call!377019 (isEmpty!32895 s!2326))))

(declare-fun d!1701996 () Bool)

(declare-fun c!917698 () Bool)

(assert (=> d!1701996 (= c!917698 ((_ is EmptyExpr!14921) (regTwo!30355 lt!2161294)))))

(assert (=> d!1701996 (= (matchRSpec!2024 (regTwo!30355 lt!2161294) s!2326) e!3288802)))

(declare-fun b!5290089 () Bool)

(declare-fun e!3288799 () Bool)

(assert (=> b!5290089 (= e!3288801 e!3288799)))

(declare-fun res!2243608 () Bool)

(assert (=> b!5290089 (= res!2243608 (matchRSpec!2024 (regOne!30355 (regTwo!30355 lt!2161294)) s!2326))))

(assert (=> b!5290089 (=> res!2243608 e!3288799)))

(declare-fun b!5290094 () Bool)

(declare-fun c!917697 () Bool)

(assert (=> b!5290094 (= c!917697 ((_ is ElementMatch!14921) (regTwo!30355 lt!2161294)))))

(assert (=> b!5290094 (= e!3288804 e!3288798)))

(declare-fun b!5290095 () Bool)

(declare-fun res!2243607 () Bool)

(assert (=> b!5290095 (=> res!2243607 e!3288803)))

(assert (=> b!5290095 (= res!2243607 call!377019)))

(assert (=> b!5290095 (= e!3288800 e!3288803)))

(declare-fun b!5290096 () Bool)

(assert (=> b!5290096 (= e!3288802 call!377019)))

(declare-fun bm!377015 () Bool)

(assert (=> bm!377015 (= call!377020 (Exists!2102 (ite c!917696 lambda!267787 lambda!267788)))))

(declare-fun b!5290097 () Bool)

(assert (=> b!5290097 (= e!3288799 (matchRSpec!2024 (regTwo!30355 (regTwo!30355 lt!2161294)) s!2326))))

(assert (= (and d!1701996 c!917698) b!5290096))

(assert (= (and d!1701996 (not c!917698)) b!5290093))

(assert (= (and b!5290093 res!2243609) b!5290094))

(assert (= (and b!5290094 c!917697) b!5290090))

(assert (= (and b!5290094 (not c!917697)) b!5290088))

(assert (= (and b!5290088 c!917699) b!5290089))

(assert (= (and b!5290088 (not c!917699)) b!5290087))

(assert (= (and b!5290089 (not res!2243608)) b!5290097))

(assert (= (and b!5290087 c!917696) b!5290095))

(assert (= (and b!5290087 (not c!917696)) b!5290091))

(assert (= (and b!5290095 (not res!2243607)) b!5290092))

(assert (= (or b!5290092 b!5290091) bm!377015))

(assert (= (or b!5290096 b!5290095) bm!377014))

(assert (=> bm!377014 m!6326026))

(declare-fun m!6327690 () Bool)

(assert (=> b!5290089 m!6327690))

(declare-fun m!6327692 () Bool)

(assert (=> bm!377015 m!6327692))

(declare-fun m!6327694 () Bool)

(assert (=> b!5290097 m!6327694))

(assert (=> b!5288585 d!1701996))

(assert (=> b!5288315 d!1701786))

(assert (=> d!1701020 d!1701416))

(assert (=> b!5288566 d!1701840))

(assert (=> b!5288566 d!1701846))

(assert (=> b!5288566 d!1701848))

(declare-fun d!1701998 () Bool)

(declare-fun e!3288806 () Bool)

(assert (=> d!1701998 e!3288806))

(declare-fun res!2243610 () Bool)

(assert (=> d!1701998 (=> res!2243610 e!3288806)))

(declare-fun e!3288805 () Bool)

(assert (=> d!1701998 (= res!2243610 e!3288805)))

(declare-fun res!2243611 () Bool)

(assert (=> d!1701998 (=> (not res!2243611) (not e!3288805))))

(declare-fun lt!2161615 () Option!15032)

(assert (=> d!1701998 (= res!2243611 (isDefined!11735 lt!2161615))))

(declare-fun e!3288809 () Option!15032)

(assert (=> d!1701998 (= lt!2161615 e!3288809)))

(declare-fun c!917701 () Bool)

(declare-fun e!3288807 () Bool)

(assert (=> d!1701998 (= c!917701 e!3288807)))

(declare-fun res!2243613 () Bool)

(assert (=> d!1701998 (=> (not res!2243613) (not e!3288807))))

(assert (=> d!1701998 (= res!2243613 (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938))))))

(assert (=> d!1701998 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1701998 (= (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326) s!2326) lt!2161615)))

(declare-fun b!5290098 () Bool)

(assert (=> b!5290098 (= e!3288805 (= (++!13288 (_1!35423 (get!20954 lt!2161615)) (_2!35423 (get!20954 lt!2161615))) s!2326))))

(declare-fun b!5290099 () Bool)

(declare-fun e!3288808 () Option!15032)

(assert (=> b!5290099 (= e!3288808 None!15031)))

(declare-fun b!5290100 () Bool)

(declare-fun lt!2161614 () Unit!153202)

(declare-fun lt!2161616 () Unit!153202)

(assert (=> b!5290100 (= lt!2161614 lt!2161616)))

(assert (=> b!5290100 (= (++!13288 (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (Cons!60938 (h!67386 (t!374265 s!2326)) Nil!60938)) (t!374265 (t!374265 s!2326))) s!2326)))

(assert (=> b!5290100 (= lt!2161616 (lemmaMoveElementToOtherListKeepsConcatEq!1703 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (h!67386 (t!374265 s!2326)) (t!374265 (t!374265 s!2326)) s!2326))))

(assert (=> b!5290100 (= e!3288808 (findConcatSeparation!1446 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 (++!13288 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (Cons!60938 (h!67386 (t!374265 s!2326)) Nil!60938)) (t!374265 (t!374265 s!2326)) s!2326))))

(declare-fun b!5290101 () Bool)

(assert (=> b!5290101 (= e!3288806 (not (isDefined!11735 lt!2161615)))))

(declare-fun b!5290102 () Bool)

(assert (=> b!5290102 (= e!3288807 (matchR!7106 lt!2161300 (t!374265 s!2326)))))

(declare-fun b!5290103 () Bool)

(declare-fun res!2243612 () Bool)

(assert (=> b!5290103 (=> (not res!2243612) (not e!3288805))))

(assert (=> b!5290103 (= res!2243612 (matchR!7106 lt!2161300 (_2!35423 (get!20954 lt!2161615))))))

(declare-fun b!5290104 () Bool)

(assert (=> b!5290104 (= e!3288809 (Some!15031 (tuple2!64241 (++!13288 Nil!60938 (Cons!60938 (h!67386 s!2326) Nil!60938)) (t!374265 s!2326))))))

(declare-fun b!5290105 () Bool)

(assert (=> b!5290105 (= e!3288809 e!3288808)))

(declare-fun c!917700 () Bool)

(assert (=> b!5290105 (= c!917700 ((_ is Nil!60938) (t!374265 s!2326)))))

(declare-fun b!5290106 () Bool)

(declare-fun res!2243614 () Bool)

(assert (=> b!5290106 (=> (not res!2243614) (not e!3288805))))

(assert (=> b!5290106 (= res!2243614 (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) (_1!35423 (get!20954 lt!2161615))))))

(assert (= (and d!1701998 res!2243613) b!5290102))

(assert (= (and d!1701998 c!917701) b!5290104))

(assert (= (and d!1701998 (not c!917701)) b!5290105))

(assert (= (and b!5290105 c!917700) b!5290099))

(assert (= (and b!5290105 (not c!917700)) b!5290100))

(assert (= (and d!1701998 res!2243611) b!5290106))

(assert (= (and b!5290106 res!2243614) b!5290103))

(assert (= (and b!5290103 res!2243612) b!5290098))

(assert (= (and d!1701998 (not res!2243610)) b!5290101))

(declare-fun m!6327704 () Bool)

(assert (=> b!5290106 m!6327704))

(declare-fun m!6327706 () Bool)

(assert (=> b!5290106 m!6327706))

(assert (=> b!5290098 m!6327704))

(declare-fun m!6327708 () Bool)

(assert (=> b!5290098 m!6327708))

(declare-fun m!6327710 () Bool)

(assert (=> b!5290102 m!6327710))

(declare-fun m!6327712 () Bool)

(assert (=> d!1701998 m!6327712))

(assert (=> d!1701998 m!6325870))

(declare-fun m!6327714 () Bool)

(assert (=> d!1701998 m!6327714))

(assert (=> d!1701998 m!6326068))

(assert (=> b!5290101 m!6327712))

(assert (=> b!5290100 m!6325870))

(assert (=> b!5290100 m!6327404))

(assert (=> b!5290100 m!6327404))

(assert (=> b!5290100 m!6327406))

(assert (=> b!5290100 m!6325870))

(assert (=> b!5290100 m!6327408))

(assert (=> b!5290100 m!6327404))

(declare-fun m!6327716 () Bool)

(assert (=> b!5290100 m!6327716))

(assert (=> b!5290103 m!6327704))

(declare-fun m!6327718 () Bool)

(assert (=> b!5290103 m!6327718))

(assert (=> b!5288566 d!1701998))

(declare-fun bs!1226891 () Bool)

(declare-fun d!1702004 () Bool)

(assert (= bs!1226891 (and d!1702004 b!5287700)))

(declare-fun lambda!267791 () Int)

(assert (=> bs!1226891 (= lambda!267791 lambda!267549)))

(declare-fun bs!1226893 () Bool)

(assert (= bs!1226893 (and d!1702004 b!5289082)))

(assert (=> bs!1226893 (not (= lambda!267791 lambda!267695))))

(declare-fun bs!1226894 () Bool)

(assert (= bs!1226894 (and d!1702004 d!1701120)))

(assert (=> bs!1226894 (= lambda!267791 lambda!267615)))

(declare-fun bs!1226896 () Bool)

(assert (= bs!1226896 (and d!1702004 d!1701030)))

(assert (=> bs!1226896 (= lambda!267791 lambda!267584)))

(declare-fun bs!1226897 () Bool)

(assert (= bs!1226897 (and d!1702004 d!1701056)))

(assert (=> bs!1226897 (= lambda!267791 lambda!267611)))

(declare-fun bs!1226898 () Bool)

(assert (= bs!1226898 (and d!1702004 d!1701212)))

(assert (=> bs!1226898 (= lambda!267791 lambda!267647)))

(declare-fun bs!1226899 () Bool)

(assert (= bs!1226899 (and d!1702004 d!1701732)))

(assert (=> bs!1226899 (= lambda!267791 lambda!267745)))

(declare-fun bs!1226901 () Bool)

(assert (= bs!1226901 (and d!1702004 d!1701230)))

(assert (=> bs!1226901 (= lambda!267791 lambda!267650)))

(declare-fun bs!1226902 () Bool)

(assert (= bs!1226902 (and d!1702004 d!1701182)))

(assert (=> bs!1226902 (= lambda!267791 lambda!267639)))

(declare-fun bs!1226904 () Bool)

(assert (= bs!1226904 (and d!1702004 b!5289737)))

(assert (=> bs!1226904 (not (= lambda!267791 lambda!267754))))

(declare-fun bs!1226905 () Bool)

(assert (= bs!1226905 (and d!1702004 b!5289084)))

(assert (=> bs!1226905 (not (= lambda!267791 lambda!267696))))

(declare-fun bs!1226906 () Bool)

(assert (= bs!1226906 (and d!1702004 d!1701172)))

(assert (=> bs!1226906 (= lambda!267791 lambda!267636)))

(declare-fun bs!1226907 () Bool)

(assert (= bs!1226907 (and d!1702004 b!5289735)))

(assert (=> bs!1226907 (not (= lambda!267791 lambda!267753))))

(assert (=> d!1702004 (= (inv!80549 setElem!33935) (forall!14329 (exprs!4805 setElem!33935) lambda!267791))))

(declare-fun bs!1226908 () Bool)

(assert (= bs!1226908 d!1702004))

(declare-fun m!6327728 () Bool)

(assert (=> bs!1226908 m!6327728))

(assert (=> setNonEmpty!33935 d!1702004))

(declare-fun d!1702012 () Bool)

(assert (=> d!1702012 (= (isEmpty!32892 (tail!10432 (exprs!4805 (h!67388 zl!343)))) ((_ is Nil!60939) (tail!10432 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> b!5288102 d!1702012))

(declare-fun d!1702014 () Bool)

(assert (=> d!1702014 (= (tail!10432 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))

(assert (=> b!5288102 d!1702014))

(declare-fun d!1702018 () Bool)

(assert (=> d!1702018 (= (Exists!2102 (ite c!917241 lambda!267645 lambda!267646)) (choose!39491 (ite c!917241 lambda!267645 lambda!267646)))))

(declare-fun bs!1226909 () Bool)

(assert (= bs!1226909 d!1702018))

(declare-fun m!6327734 () Bool)

(assert (=> bs!1226909 m!6327734))

(assert (=> bm!376710 d!1702018))

(declare-fun d!1702020 () Bool)

(declare-fun c!917707 () Bool)

(assert (=> d!1702020 (= c!917707 ((_ is Nil!60940) lt!2161405))))

(declare-fun e!3288817 () (InoxSet Context!8610))

(assert (=> d!1702020 (= (content!10848 lt!2161405) e!3288817)))

(declare-fun b!5290119 () Bool)

(assert (=> b!5290119 (= e!3288817 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5290120 () Bool)

(assert (=> b!5290120 (= e!3288817 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) (h!67388 lt!2161405) true) (content!10848 (t!374267 lt!2161405))))))

(assert (= (and d!1702020 c!917707) b!5290119))

(assert (= (and d!1702020 (not c!917707)) b!5290120))

(declare-fun m!6327744 () Bool)

(assert (=> b!5290120 m!6327744))

(declare-fun m!6327746 () Bool)

(assert (=> b!5290120 m!6327746))

(assert (=> b!5288125 d!1702020))

(declare-fun d!1702026 () Bool)

(assert (=> d!1702026 (= (Exists!2102 lambda!267652) (choose!39491 lambda!267652))))

(declare-fun bs!1226911 () Bool)

(assert (= bs!1226911 d!1702026))

(declare-fun m!6327748 () Bool)

(assert (=> bs!1226911 m!6327748))

(assert (=> d!1701238 d!1702026))

(declare-fun d!1702028 () Bool)

(assert (=> d!1702028 (= (Exists!2102 lambda!267653) (choose!39491 lambda!267653))))

(declare-fun bs!1226912 () Bool)

(assert (= bs!1226912 d!1702028))

(declare-fun m!6327750 () Bool)

(assert (=> bs!1226912 m!6327750))

(assert (=> d!1701238 d!1702028))

(declare-fun bs!1226913 () Bool)

(declare-fun d!1702030 () Bool)

(assert (= bs!1226913 (and d!1702030 b!5288579)))

(declare-fun lambda!267792 () Int)

(assert (=> bs!1226913 (not (= lambda!267792 lambda!267649))))

(declare-fun bs!1226914 () Bool)

(assert (= bs!1226914 (and d!1702030 d!1701146)))

(assert (=> bs!1226914 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267792 lambda!267621))))

(declare-fun bs!1226915 () Bool)

(assert (= bs!1226915 (and d!1702030 b!5288945)))

(assert (=> bs!1226915 (not (= lambda!267792 lambda!267680))))

(declare-fun bs!1226916 () Bool)

(assert (= bs!1226916 (and d!1702030 d!1701920)))

(assert (=> bs!1226916 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267792 lambda!267777))))

(declare-fun bs!1226917 () Bool)

(assert (= bs!1226917 (and d!1702030 b!5287706)))

(assert (=> bs!1226917 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267792 lambda!267544))))

(declare-fun bs!1226918 () Bool)

(assert (= bs!1226918 (and d!1702030 d!1701238)))

(assert (=> bs!1226918 (not (= lambda!267792 lambda!267653))))

(declare-fun bs!1226919 () Bool)

(assert (= bs!1226919 (and d!1702030 b!5287700)))

(assert (=> bs!1226919 (not (= lambda!267792 lambda!267548))))

(declare-fun bs!1226920 () Bool)

(assert (= bs!1226920 (and d!1702030 b!5290042)))

(assert (=> bs!1226920 (not (= lambda!267792 lambda!267784))))

(declare-fun bs!1226921 () Bool)

(assert (= bs!1226921 (and d!1702030 b!5289483)))

(assert (=> bs!1226921 (not (= lambda!267792 lambda!267736))))

(declare-fun bs!1226922 () Bool)

(assert (= bs!1226922 (and d!1702030 b!5290092)))

(assert (=> bs!1226922 (not (= lambda!267792 lambda!267787))))

(declare-fun bs!1226923 () Bool)

(assert (= bs!1226923 (and d!1702030 b!5288666)))

(assert (=> bs!1226923 (not (= lambda!267792 lambda!267655))))

(assert (=> bs!1226919 (= lambda!267792 lambda!267547)))

(declare-fun bs!1226924 () Bool)

(assert (= bs!1226924 (and d!1702030 b!5288946)))

(assert (=> bs!1226924 (not (= lambda!267792 lambda!267679))))

(assert (=> bs!1226916 (not (= lambda!267792 lambda!267778))))

(declare-fun bs!1226925 () Bool)

(assert (= bs!1226925 (and d!1702030 b!5288548)))

(assert (=> bs!1226925 (not (= lambda!267792 lambda!267645))))

(declare-fun bs!1226926 () Bool)

(assert (= bs!1226926 (and d!1702030 d!1701166)))

(assert (=> bs!1226926 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267792 lambda!267629))))

(declare-fun bs!1226927 () Bool)

(assert (= bs!1226927 (and d!1702030 b!5289303)))

(assert (=> bs!1226927 (not (= lambda!267792 lambda!267720))))

(assert (=> bs!1226917 (not (= lambda!267792 lambda!267545))))

(declare-fun bs!1226928 () Bool)

(assert (= bs!1226928 (and d!1702030 d!1701882)))

(assert (=> bs!1226928 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267792 lambda!267764))))

(assert (=> bs!1226918 (= lambda!267792 lambda!267652)))

(declare-fun bs!1226929 () Bool)

(assert (= bs!1226929 (and d!1702030 d!1701234)))

(assert (=> bs!1226929 (= lambda!267792 lambda!267651)))

(declare-fun bs!1226930 () Bool)

(assert (= bs!1226930 (and d!1702030 b!5289304)))

(assert (=> bs!1226930 (not (= lambda!267792 lambda!267718))))

(declare-fun bs!1226931 () Bool)

(assert (= bs!1226931 (and d!1702030 b!5288667)))

(assert (=> bs!1226931 (not (= lambda!267792 lambda!267654))))

(declare-fun bs!1226932 () Bool)

(assert (= bs!1226932 (and d!1702030 b!5290043)))

(assert (=> bs!1226932 (not (= lambda!267792 lambda!267783))))

(declare-fun bs!1226933 () Bool)

(assert (= bs!1226933 (and d!1702030 b!5290091)))

(assert (=> bs!1226933 (not (= lambda!267792 lambda!267788))))

(declare-fun bs!1226934 () Bool)

(assert (= bs!1226934 (and d!1702030 b!5288580)))

(assert (=> bs!1226934 (not (= lambda!267792 lambda!267648))))

(declare-fun bs!1226935 () Bool)

(assert (= bs!1226935 (and d!1702030 b!5288547)))

(assert (=> bs!1226935 (not (= lambda!267792 lambda!267646))))

(assert (=> bs!1226926 (not (= lambda!267792 lambda!267633))))

(declare-fun bs!1226936 () Bool)

(assert (= bs!1226936 (and d!1702030 d!1701612)))

(assert (=> bs!1226936 (= lambda!267792 lambda!267728)))

(declare-fun bs!1226937 () Bool)

(assert (= bs!1226937 (and d!1702030 b!5289482)))

(assert (=> bs!1226937 (not (= lambda!267792 lambda!267738))))

(assert (=> d!1702030 true))

(assert (=> d!1702030 true))

(assert (=> d!1702030 true))

(declare-fun lambda!267793 () Int)

(assert (=> bs!1226913 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 lt!2161294)) (= lt!2161300 (regTwo!30354 lt!2161294))) (= lambda!267793 lambda!267649))))

(assert (=> bs!1226914 (not (= lambda!267793 lambda!267621))))

(assert (=> bs!1226915 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 (regTwo!30355 r!7292))) (= lt!2161300 (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267793 lambda!267680))))

(assert (=> bs!1226916 (not (= lambda!267793 lambda!267777))))

(assert (=> bs!1226917 (not (= lambda!267793 lambda!267544))))

(assert (=> bs!1226918 (= lambda!267793 lambda!267653)))

(assert (=> bs!1226919 (= lambda!267793 lambda!267548)))

(assert (=> bs!1226920 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 (regOne!30355 lt!2161300))) (= lt!2161300 (regTwo!30354 (regOne!30355 lt!2161300)))) (= lambda!267793 lambda!267784))))

(assert (=> bs!1226921 (not (= lambda!267793 lambda!267736))))

(assert (=> bs!1226922 (not (= lambda!267793 lambda!267787))))

(assert (=> bs!1226923 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267793 lambda!267655))))

(assert (=> bs!1226919 (not (= lambda!267793 lambda!267547))))

(assert (=> bs!1226916 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267793 lambda!267778))))

(assert (=> bs!1226925 (not (= lambda!267793 lambda!267645))))

(assert (=> bs!1226926 (not (= lambda!267793 lambda!267629))))

(assert (=> bs!1226927 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 (regTwo!30355 lt!2161300))) (= lt!2161300 (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267793 lambda!267720))))

(assert (=> bs!1226917 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267793 lambda!267545))))

(assert (=> bs!1226928 (not (= lambda!267793 lambda!267764))))

(assert (=> bs!1226918 (not (= lambda!267793 lambda!267652))))

(assert (=> bs!1226929 (not (= lambda!267793 lambda!267651))))

(assert (=> bs!1226930 (not (= lambda!267793 lambda!267718))))

(assert (=> bs!1226931 (not (= lambda!267793 lambda!267654))))

(assert (=> bs!1226932 (not (= lambda!267793 lambda!267783))))

(assert (=> bs!1226933 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 (regTwo!30355 lt!2161294))) (= lt!2161300 (regTwo!30354 (regTwo!30355 lt!2161294)))) (= lambda!267793 lambda!267788))))

(assert (=> bs!1226934 (not (= lambda!267793 lambda!267648))))

(assert (=> bs!1226935 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 lt!2161300)) (= lt!2161300 (regTwo!30354 lt!2161300))) (= lambda!267793 lambda!267646))))

(assert (=> bs!1226926 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 r!7292)) (= lt!2161300 (regTwo!30354 r!7292))) (= lambda!267793 lambda!267633))))

(assert (=> bs!1226936 (not (= lambda!267793 lambda!267728))))

(assert (=> bs!1226937 (= (and (= (regOne!30354 (regOne!30354 r!7292)) (regOne!30354 (regOne!30355 r!7292))) (= lt!2161300 (regTwo!30354 (regOne!30355 r!7292)))) (= lambda!267793 lambda!267738))))

(declare-fun bs!1226950 () Bool)

(assert (= bs!1226950 d!1702030))

(assert (=> bs!1226950 (not (= lambda!267793 lambda!267792))))

(assert (=> bs!1226924 (not (= lambda!267793 lambda!267679))))

(assert (=> d!1702030 true))

(assert (=> d!1702030 true))

(assert (=> d!1702030 true))

(assert (=> d!1702030 (= (Exists!2102 lambda!267792) (Exists!2102 lambda!267793))))

(assert (=> d!1702030 true))

(declare-fun _$90!1122 () Unit!153202)

(assert (=> d!1702030 (= (choose!39493 (regOne!30354 (regOne!30354 r!7292)) lt!2161300 s!2326) _$90!1122)))

(declare-fun m!6327770 () Bool)

(assert (=> bs!1226950 m!6327770))

(declare-fun m!6327772 () Bool)

(assert (=> bs!1226950 m!6327772))

(assert (=> d!1701238 d!1702030))

(assert (=> d!1701238 d!1701606))

(declare-fun d!1702056 () Bool)

(assert (=> d!1702056 (= (isEmptyExpr!843 lt!2161476) ((_ is EmptyExpr!14921) lt!2161476))))

(assert (=> b!5288640 d!1702056))

(assert (=> b!5288507 d!1701194))

(declare-fun d!1702058 () Bool)

(assert (=> d!1702058 true))

(declare-fun setRes!33946 () Bool)

(assert (=> d!1702058 setRes!33946))

(declare-fun condSetEmpty!33946 () Bool)

(declare-fun res!2243617 () (InoxSet Context!8610))

(assert (=> d!1702058 (= condSetEmpty!33946 (= res!2243617 ((as const (Array Context!8610 Bool)) false)))))

(assert (=> d!1702058 (= (choose!39488 lt!2161312 lambda!267546) res!2243617)))

(declare-fun setIsEmpty!33946 () Bool)

(assert (=> setIsEmpty!33946 setRes!33946))

(declare-fun e!3288853 () Bool)

(declare-fun setElem!33946 () Context!8610)

(declare-fun tp!1476717 () Bool)

(declare-fun setNonEmpty!33946 () Bool)

(assert (=> setNonEmpty!33946 (= setRes!33946 (and tp!1476717 (inv!80549 setElem!33946) e!3288853))))

(declare-fun setRest!33946 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33946 (= res!2243617 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33946 true) setRest!33946))))

(declare-fun b!5290237 () Bool)

(declare-fun tp!1476716 () Bool)

(assert (=> b!5290237 (= e!3288853 tp!1476716)))

(assert (= (and d!1702058 condSetEmpty!33946) setIsEmpty!33946))

(assert (= (and d!1702058 (not condSetEmpty!33946)) setNonEmpty!33946))

(assert (= setNonEmpty!33946 b!5290237))

(declare-fun m!6327774 () Bool)

(assert (=> setNonEmpty!33946 m!6327774))

(assert (=> d!1701110 d!1702058))

(declare-fun d!1702060 () Bool)

(assert (=> d!1702060 (= (isEmpty!32892 (t!374266 lt!2161282)) ((_ is Nil!60939) (t!374266 lt!2161282)))))

(assert (=> b!5288561 d!1702060))

(assert (=> b!5288621 d!1701572))

(assert (=> b!5288621 d!1701574))

(assert (=> b!5288657 d!1701572))

(assert (=> b!5288657 d!1701574))

(declare-fun b!5290238 () Bool)

(declare-fun e!3288855 () Bool)

(assert (=> b!5290238 (= e!3288855 (not (= (head!11334 (_1!35423 (get!20954 lt!2161433))) (c!916969 (regOne!30354 r!7292)))))))

(declare-fun b!5290239 () Bool)

(declare-fun e!3288854 () Bool)

(assert (=> b!5290239 (= e!3288854 (nullable!5090 (regOne!30354 r!7292)))))

(declare-fun d!1702062 () Bool)

(declare-fun e!3288859 () Bool)

(assert (=> d!1702062 e!3288859))

(declare-fun c!917709 () Bool)

(assert (=> d!1702062 (= c!917709 ((_ is EmptyExpr!14921) (regOne!30354 r!7292)))))

(declare-fun lt!2161617 () Bool)

(assert (=> d!1702062 (= lt!2161617 e!3288854)))

(declare-fun c!917708 () Bool)

(assert (=> d!1702062 (= c!917708 (isEmpty!32895 (_1!35423 (get!20954 lt!2161433))))))

(assert (=> d!1702062 (validRegex!6657 (regOne!30354 r!7292))))

(assert (=> d!1702062 (= (matchR!7106 (regOne!30354 r!7292) (_1!35423 (get!20954 lt!2161433))) lt!2161617)))

(declare-fun b!5290240 () Bool)

(declare-fun e!3288860 () Bool)

(assert (=> b!5290240 (= e!3288860 (= (head!11334 (_1!35423 (get!20954 lt!2161433))) (c!916969 (regOne!30354 r!7292))))))

(declare-fun b!5290241 () Bool)

(declare-fun e!3288858 () Bool)

(assert (=> b!5290241 (= e!3288859 e!3288858)))

(declare-fun c!917710 () Bool)

(assert (=> b!5290241 (= c!917710 ((_ is EmptyLang!14921) (regOne!30354 r!7292)))))

(declare-fun b!5290242 () Bool)

(assert (=> b!5290242 (= e!3288854 (matchR!7106 (derivativeStep!4129 (regOne!30354 r!7292) (head!11334 (_1!35423 (get!20954 lt!2161433)))) (tail!10430 (_1!35423 (get!20954 lt!2161433)))))))

(declare-fun b!5290243 () Bool)

(declare-fun res!2243625 () Bool)

(assert (=> b!5290243 (=> (not res!2243625) (not e!3288860))))

(assert (=> b!5290243 (= res!2243625 (isEmpty!32895 (tail!10430 (_1!35423 (get!20954 lt!2161433)))))))

(declare-fun b!5290244 () Bool)

(declare-fun e!3288856 () Bool)

(declare-fun e!3288857 () Bool)

(assert (=> b!5290244 (= e!3288856 e!3288857)))

(declare-fun res!2243624 () Bool)

(assert (=> b!5290244 (=> (not res!2243624) (not e!3288857))))

(assert (=> b!5290244 (= res!2243624 (not lt!2161617))))

(declare-fun b!5290245 () Bool)

(declare-fun res!2243622 () Bool)

(assert (=> b!5290245 (=> res!2243622 e!3288856)))

(assert (=> b!5290245 (= res!2243622 e!3288860)))

(declare-fun res!2243623 () Bool)

(assert (=> b!5290245 (=> (not res!2243623) (not e!3288860))))

(assert (=> b!5290245 (= res!2243623 lt!2161617)))

(declare-fun b!5290246 () Bool)

(declare-fun call!377022 () Bool)

(assert (=> b!5290246 (= e!3288859 (= lt!2161617 call!377022))))

(declare-fun b!5290247 () Bool)

(assert (=> b!5290247 (= e!3288857 e!3288855)))

(declare-fun res!2243618 () Bool)

(assert (=> b!5290247 (=> res!2243618 e!3288855)))

(assert (=> b!5290247 (= res!2243618 call!377022)))

(declare-fun bm!377017 () Bool)

(assert (=> bm!377017 (= call!377022 (isEmpty!32895 (_1!35423 (get!20954 lt!2161433))))))

(declare-fun b!5290248 () Bool)

(declare-fun res!2243619 () Bool)

(assert (=> b!5290248 (=> res!2243619 e!3288856)))

(assert (=> b!5290248 (= res!2243619 (not ((_ is ElementMatch!14921) (regOne!30354 r!7292))))))

(assert (=> b!5290248 (= e!3288858 e!3288856)))

(declare-fun b!5290249 () Bool)

(declare-fun res!2243621 () Bool)

(assert (=> b!5290249 (=> res!2243621 e!3288855)))

(assert (=> b!5290249 (= res!2243621 (not (isEmpty!32895 (tail!10430 (_1!35423 (get!20954 lt!2161433))))))))

(declare-fun b!5290250 () Bool)

(declare-fun res!2243620 () Bool)

(assert (=> b!5290250 (=> (not res!2243620) (not e!3288860))))

(assert (=> b!5290250 (= res!2243620 (not call!377022))))

(declare-fun b!5290251 () Bool)

(assert (=> b!5290251 (= e!3288858 (not lt!2161617))))

(assert (= (and d!1702062 c!917708) b!5290239))

(assert (= (and d!1702062 (not c!917708)) b!5290242))

(assert (= (and d!1702062 c!917709) b!5290246))

(assert (= (and d!1702062 (not c!917709)) b!5290241))

(assert (= (and b!5290241 c!917710) b!5290251))

(assert (= (and b!5290241 (not c!917710)) b!5290248))

(assert (= (and b!5290248 (not res!2243619)) b!5290245))

(assert (= (and b!5290245 res!2243623) b!5290250))

(assert (= (and b!5290250 res!2243620) b!5290243))

(assert (= (and b!5290243 res!2243625) b!5290240))

(assert (= (and b!5290245 (not res!2243622)) b!5290244))

(assert (= (and b!5290244 res!2243624) b!5290247))

(assert (= (and b!5290247 (not res!2243618)) b!5290249))

(assert (= (and b!5290249 (not res!2243621)) b!5290238))

(assert (= (or b!5290246 b!5290247 b!5290250) bm!377017))

(declare-fun m!6327776 () Bool)

(assert (=> b!5290240 m!6327776))

(declare-fun m!6327778 () Bool)

(assert (=> b!5290249 m!6327778))

(assert (=> b!5290249 m!6327778))

(declare-fun m!6327780 () Bool)

(assert (=> b!5290249 m!6327780))

(assert (=> b!5290243 m!6327778))

(assert (=> b!5290243 m!6327778))

(assert (=> b!5290243 m!6327780))

(assert (=> b!5290238 m!6327776))

(assert (=> b!5290239 m!6326964))

(declare-fun m!6327782 () Bool)

(assert (=> bm!377017 m!6327782))

(assert (=> b!5290242 m!6327776))

(assert (=> b!5290242 m!6327776))

(declare-fun m!6327784 () Bool)

(assert (=> b!5290242 m!6327784))

(assert (=> b!5290242 m!6327778))

(assert (=> b!5290242 m!6327784))

(assert (=> b!5290242 m!6327778))

(declare-fun m!6327786 () Bool)

(assert (=> b!5290242 m!6327786))

(assert (=> d!1702062 m!6327782))

(assert (=> d!1702062 m!6325868))

(assert (=> b!5288320 d!1702062))

(assert (=> b!5288320 d!1701712))

(declare-fun bs!1226951 () Bool)

(declare-fun d!1702064 () Bool)

(assert (= bs!1226951 (and d!1702064 b!5287700)))

(declare-fun lambda!267794 () Int)

(assert (=> bs!1226951 (= lambda!267794 lambda!267549)))

(declare-fun bs!1226952 () Bool)

(assert (= bs!1226952 (and d!1702064 b!5289082)))

(assert (=> bs!1226952 (not (= lambda!267794 lambda!267695))))

(declare-fun bs!1226953 () Bool)

(assert (= bs!1226953 (and d!1702064 d!1701030)))

(assert (=> bs!1226953 (= lambda!267794 lambda!267584)))

(declare-fun bs!1226954 () Bool)

(assert (= bs!1226954 (and d!1702064 d!1701056)))

(assert (=> bs!1226954 (= lambda!267794 lambda!267611)))

(declare-fun bs!1226955 () Bool)

(assert (= bs!1226955 (and d!1702064 d!1701212)))

(assert (=> bs!1226955 (= lambda!267794 lambda!267647)))

(declare-fun bs!1226956 () Bool)

(assert (= bs!1226956 (and d!1702064 d!1701732)))

(assert (=> bs!1226956 (= lambda!267794 lambda!267745)))

(declare-fun bs!1226957 () Bool)

(assert (= bs!1226957 (and d!1702064 d!1701230)))

(assert (=> bs!1226957 (= lambda!267794 lambda!267650)))

(declare-fun bs!1226958 () Bool)

(assert (= bs!1226958 (and d!1702064 d!1701182)))

(assert (=> bs!1226958 (= lambda!267794 lambda!267639)))

(declare-fun bs!1226959 () Bool)

(assert (= bs!1226959 (and d!1702064 b!5289737)))

(assert (=> bs!1226959 (not (= lambda!267794 lambda!267754))))

(declare-fun bs!1226960 () Bool)

(assert (= bs!1226960 (and d!1702064 d!1701120)))

(assert (=> bs!1226960 (= lambda!267794 lambda!267615)))

(declare-fun bs!1226961 () Bool)

(assert (= bs!1226961 (and d!1702064 d!1702004)))

(assert (=> bs!1226961 (= lambda!267794 lambda!267791)))

(declare-fun bs!1226962 () Bool)

(assert (= bs!1226962 (and d!1702064 b!5289084)))

(assert (=> bs!1226962 (not (= lambda!267794 lambda!267696))))

(declare-fun bs!1226963 () Bool)

(assert (= bs!1226963 (and d!1702064 d!1701172)))

(assert (=> bs!1226963 (= lambda!267794 lambda!267636)))

(declare-fun bs!1226964 () Bool)

(assert (= bs!1226964 (and d!1702064 b!5289735)))

(assert (=> bs!1226964 (not (= lambda!267794 lambda!267753))))

(declare-fun e!3288863 () Bool)

(assert (=> d!1702064 e!3288863))

(declare-fun res!2243627 () Bool)

(assert (=> d!1702064 (=> (not res!2243627) (not e!3288863))))

(declare-fun lt!2161618 () Regex!14921)

(assert (=> d!1702064 (= res!2243627 (validRegex!6657 lt!2161618))))

(declare-fun e!3288864 () Regex!14921)

(assert (=> d!1702064 (= lt!2161618 e!3288864)))

(declare-fun c!917712 () Bool)

(declare-fun e!3288861 () Bool)

(assert (=> d!1702064 (= c!917712 e!3288861)))

(declare-fun res!2243626 () Bool)

(assert (=> d!1702064 (=> (not res!2243626) (not e!3288861))))

(assert (=> d!1702064 (= res!2243626 ((_ is Cons!60939) (t!374266 lt!2161306)))))

(assert (=> d!1702064 (forall!14329 (t!374266 lt!2161306) lambda!267794)))

(assert (=> d!1702064 (= (generalisedConcat!590 (t!374266 lt!2161306)) lt!2161618)))

(declare-fun b!5290252 () Bool)

(declare-fun e!3288865 () Regex!14921)

(assert (=> b!5290252 (= e!3288865 (Concat!23766 (h!67387 (t!374266 lt!2161306)) (generalisedConcat!590 (t!374266 (t!374266 lt!2161306)))))))

(declare-fun b!5290253 () Bool)

(assert (=> b!5290253 (= e!3288864 e!3288865)))

(declare-fun c!917711 () Bool)

(assert (=> b!5290253 (= c!917711 ((_ is Cons!60939) (t!374266 lt!2161306)))))

(declare-fun b!5290254 () Bool)

(declare-fun e!3288866 () Bool)

(declare-fun e!3288862 () Bool)

(assert (=> b!5290254 (= e!3288866 e!3288862)))

(declare-fun c!917713 () Bool)

(assert (=> b!5290254 (= c!917713 (isEmpty!32892 (tail!10432 (t!374266 lt!2161306))))))

(declare-fun b!5290255 () Bool)

(assert (=> b!5290255 (= e!3288864 (h!67387 (t!374266 lt!2161306)))))

(declare-fun b!5290256 () Bool)

(assert (=> b!5290256 (= e!3288866 (isEmptyExpr!843 lt!2161618))))

(declare-fun b!5290257 () Bool)

(assert (=> b!5290257 (= e!3288862 (isConcat!366 lt!2161618))))

(declare-fun b!5290258 () Bool)

(assert (=> b!5290258 (= e!3288863 e!3288866)))

(declare-fun c!917714 () Bool)

(assert (=> b!5290258 (= c!917714 (isEmpty!32892 (t!374266 lt!2161306)))))

(declare-fun b!5290259 () Bool)

(assert (=> b!5290259 (= e!3288861 (isEmpty!32892 (t!374266 (t!374266 lt!2161306))))))

(declare-fun b!5290260 () Bool)

(assert (=> b!5290260 (= e!3288865 EmptyExpr!14921)))

(declare-fun b!5290261 () Bool)

(assert (=> b!5290261 (= e!3288862 (= lt!2161618 (head!11335 (t!374266 lt!2161306))))))

(assert (= (and d!1702064 res!2243626) b!5290259))

(assert (= (and d!1702064 c!917712) b!5290255))

(assert (= (and d!1702064 (not c!917712)) b!5290253))

(assert (= (and b!5290253 c!917711) b!5290252))

(assert (= (and b!5290253 (not c!917711)) b!5290260))

(assert (= (and d!1702064 res!2243627) b!5290258))

(assert (= (and b!5290258 c!917714) b!5290256))

(assert (= (and b!5290258 (not c!917714)) b!5290254))

(assert (= (and b!5290254 c!917713) b!5290261))

(assert (= (and b!5290254 (not c!917713)) b!5290257))

(declare-fun m!6327788 () Bool)

(assert (=> b!5290257 m!6327788))

(declare-fun m!6327790 () Bool)

(assert (=> b!5290256 m!6327790))

(declare-fun m!6327792 () Bool)

(assert (=> b!5290259 m!6327792))

(declare-fun m!6327794 () Bool)

(assert (=> d!1702064 m!6327794))

(declare-fun m!6327796 () Bool)

(assert (=> d!1702064 m!6327796))

(declare-fun m!6327798 () Bool)

(assert (=> b!5290261 m!6327798))

(declare-fun m!6327800 () Bool)

(assert (=> b!5290254 m!6327800))

(assert (=> b!5290254 m!6327800))

(declare-fun m!6327802 () Bool)

(assert (=> b!5290254 m!6327802))

(assert (=> b!5290258 m!6326116))

(declare-fun m!6327804 () Bool)

(assert (=> b!5290252 m!6327804))

(assert (=> b!5288636 d!1702064))

(declare-fun b!5290262 () Bool)

(declare-fun res!2243631 () Bool)

(declare-fun e!3288869 () Bool)

(assert (=> b!5290262 (=> (not res!2243631) (not e!3288869))))

(declare-fun call!377023 () Bool)

(assert (=> b!5290262 (= res!2243631 call!377023)))

(declare-fun e!3288873 () Bool)

(assert (=> b!5290262 (= e!3288873 e!3288869)))

(declare-fun b!5290263 () Bool)

(declare-fun e!3288872 () Bool)

(declare-fun e!3288868 () Bool)

(assert (=> b!5290263 (= e!3288872 e!3288868)))

(declare-fun res!2243628 () Bool)

(assert (=> b!5290263 (= res!2243628 (not (nullable!5090 (reg!15250 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))))

(assert (=> b!5290263 (=> (not res!2243628) (not e!3288868))))

(declare-fun b!5290264 () Bool)

(assert (=> b!5290264 (= e!3288872 e!3288873)))

(declare-fun c!917715 () Bool)

(assert (=> b!5290264 (= c!917715 ((_ is Union!14921) (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5290265 () Bool)

(declare-fun e!3288870 () Bool)

(assert (=> b!5290265 (= e!3288870 e!3288872)))

(declare-fun c!917716 () Bool)

(assert (=> b!5290265 (= c!917716 ((_ is Star!14921) (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun d!1702066 () Bool)

(declare-fun res!2243632 () Bool)

(assert (=> d!1702066 (=> res!2243632 e!3288870)))

(assert (=> d!1702066 (= res!2243632 ((_ is ElementMatch!14921) (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(assert (=> d!1702066 (= (validRegex!6657 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))) e!3288870)))

(declare-fun b!5290266 () Bool)

(declare-fun res!2243630 () Bool)

(declare-fun e!3288871 () Bool)

(assert (=> b!5290266 (=> res!2243630 e!3288871)))

(assert (=> b!5290266 (= res!2243630 (not ((_ is Concat!23766) (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(assert (=> b!5290266 (= e!3288873 e!3288871)))

(declare-fun b!5290267 () Bool)

(declare-fun call!377025 () Bool)

(assert (=> b!5290267 (= e!3288868 call!377025)))

(declare-fun bm!377018 () Bool)

(assert (=> bm!377018 (= call!377023 (validRegex!6657 (ite c!917715 (regOne!30355 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))) (regOne!30354 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun bm!377019 () Bool)

(assert (=> bm!377019 (= call!377025 (validRegex!6657 (ite c!917716 (reg!15250 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))) (ite c!917715 (regTwo!30355 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343))))) (regTwo!30354 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun b!5290268 () Bool)

(declare-fun call!377024 () Bool)

(assert (=> b!5290268 (= e!3288869 call!377024)))

(declare-fun bm!377020 () Bool)

(assert (=> bm!377020 (= call!377024 call!377025)))

(declare-fun b!5290269 () Bool)

(declare-fun e!3288867 () Bool)

(assert (=> b!5290269 (= e!3288871 e!3288867)))

(declare-fun res!2243629 () Bool)

(assert (=> b!5290269 (=> (not res!2243629) (not e!3288867))))

(assert (=> b!5290269 (= res!2243629 call!377023)))

(declare-fun b!5290270 () Bool)

(assert (=> b!5290270 (= e!3288867 call!377024)))

(assert (= (and d!1702066 (not res!2243632)) b!5290265))

(assert (= (and b!5290265 c!917716) b!5290263))

(assert (= (and b!5290265 (not c!917716)) b!5290264))

(assert (= (and b!5290263 res!2243628) b!5290267))

(assert (= (and b!5290264 c!917715) b!5290262))

(assert (= (and b!5290264 (not c!917715)) b!5290266))

(assert (= (and b!5290262 res!2243631) b!5290268))

(assert (= (and b!5290266 (not res!2243630)) b!5290269))

(assert (= (and b!5290269 res!2243629) b!5290270))

(assert (= (or b!5290268 b!5290270) bm!377020))

(assert (= (or b!5290262 b!5290269) bm!377018))

(assert (= (or b!5290267 bm!377020) bm!377019))

(declare-fun m!6327806 () Bool)

(assert (=> b!5290263 m!6327806))

(declare-fun m!6327808 () Bool)

(assert (=> bm!377018 m!6327808))

(declare-fun m!6327810 () Bool)

(assert (=> bm!377019 m!6327810))

(assert (=> bs!1225463 d!1702066))

(declare-fun d!1702068 () Bool)

(declare-fun c!917717 () Bool)

(assert (=> d!1702068 (= c!917717 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288874 () Bool)

(assert (=> d!1702068 (= (matchZipper!1165 (derivationStepZipper!1164 ((_ map or) lt!2161309 lt!2161307) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288874)))

(declare-fun b!5290271 () Bool)

(assert (=> b!5290271 (= e!3288874 (nullableZipper!1308 (derivationStepZipper!1164 ((_ map or) lt!2161309 lt!2161307) (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5290272 () Bool)

(assert (=> b!5290272 (= e!3288874 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 ((_ map or) lt!2161309 lt!2161307) (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1702068 c!917717) b!5290271))

(assert (= (and d!1702068 (not c!917717)) b!5290272))

(assert (=> d!1702068 m!6325492))

(assert (=> d!1702068 m!6326388))

(assert (=> b!5290271 m!6326180))

(declare-fun m!6327812 () Bool)

(assert (=> b!5290271 m!6327812))

(assert (=> b!5290272 m!6325492))

(assert (=> b!5290272 m!6326392))

(assert (=> b!5290272 m!6326180))

(assert (=> b!5290272 m!6326392))

(declare-fun m!6327814 () Bool)

(assert (=> b!5290272 m!6327814))

(assert (=> b!5290272 m!6325492))

(assert (=> b!5290272 m!6326396))

(assert (=> b!5290272 m!6327814))

(assert (=> b!5290272 m!6326396))

(declare-fun m!6327816 () Bool)

(assert (=> b!5290272 m!6327816))

(assert (=> b!5288689 d!1702068))

(declare-fun bs!1226965 () Bool)

(declare-fun d!1702070 () Bool)

(assert (= bs!1226965 (and d!1702070 d!1701188)))

(declare-fun lambda!267795 () Int)

(assert (=> bs!1226965 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267795 lambda!267640))))

(declare-fun bs!1226966 () Bool)

(assert (= bs!1226966 (and d!1702070 b!5287682)))

(assert (=> bs!1226966 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267795 lambda!267546))))

(declare-fun bs!1226967 () Bool)

(assert (= bs!1226967 (and d!1702070 d!1701974)))

(assert (=> bs!1226967 (= lambda!267795 lambda!267782)))

(declare-fun bs!1226968 () Bool)

(assert (= bs!1226968 (and d!1702070 d!1701704)))

(assert (=> bs!1226968 (= lambda!267795 lambda!267741)))

(declare-fun bs!1226969 () Bool)

(assert (= bs!1226969 (and d!1702070 d!1701708)))

(assert (=> bs!1226969 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267795 lambda!267742))))

(declare-fun bs!1226970 () Bool)

(assert (= bs!1226970 (and d!1702070 d!1701912)))

(assert (=> bs!1226970 (= lambda!267795 lambda!267771)))

(declare-fun bs!1226971 () Bool)

(assert (= bs!1226971 (and d!1702070 d!1701888)))

(assert (=> bs!1226971 (= lambda!267795 lambda!267768)))

(declare-fun bs!1226972 () Bool)

(assert (= bs!1226972 (and d!1702070 d!1701364)))

(assert (=> bs!1226972 (= lambda!267795 lambda!267678)))

(declare-fun bs!1226973 () Bool)

(assert (= bs!1226973 (and d!1702070 d!1701776)))

(assert (=> bs!1226973 (= lambda!267795 lambda!267750)))

(declare-fun bs!1226974 () Bool)

(assert (= bs!1226974 (and d!1702070 d!1701080)))

(assert (=> bs!1226974 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267795 lambda!267614))))

(declare-fun bs!1226975 () Bool)

(assert (= bs!1226975 (and d!1702070 d!1701496)))

(assert (=> bs!1226975 (= lambda!267795 lambda!267705)))

(assert (=> d!1702070 true))

(assert (=> d!1702070 (= (derivationStepZipper!1164 ((_ map or) lt!2161309 lt!2161307) (head!11334 (t!374265 s!2326))) (flatMap!648 ((_ map or) lt!2161309 lt!2161307) lambda!267795))))

(declare-fun bs!1226976 () Bool)

(assert (= bs!1226976 d!1702070))

(declare-fun m!6327818 () Bool)

(assert (=> bs!1226976 m!6327818))

(assert (=> b!5288689 d!1702070))

(assert (=> b!5288689 d!1701366))

(assert (=> b!5288689 d!1701370))

(declare-fun d!1702072 () Bool)

(declare-fun c!917718 () Bool)

(assert (=> d!1702072 (= c!917718 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun e!3288875 () Bool)

(assert (=> d!1702072 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161312 (head!11334 s!2326)) (tail!10430 s!2326)) e!3288875)))

(declare-fun b!5290273 () Bool)

(assert (=> b!5290273 (= e!3288875 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161312 (head!11334 s!2326))))))

(declare-fun b!5290274 () Bool)

(assert (=> b!5290274 (= e!3288875 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161312 (head!11334 s!2326)) (head!11334 (tail!10430 s!2326))) (tail!10430 (tail!10430 s!2326))))))

(assert (= (and d!1702072 c!917718) b!5290273))

(assert (= (and d!1702072 (not c!917718)) b!5290274))

(assert (=> d!1702072 m!6326080))

(assert (=> d!1702072 m!6326100))

(assert (=> b!5290273 m!6326078))

(declare-fun m!6327820 () Bool)

(assert (=> b!5290273 m!6327820))

(assert (=> b!5290274 m!6326080))

(assert (=> b!5290274 m!6326884))

(assert (=> b!5290274 m!6326078))

(assert (=> b!5290274 m!6326884))

(declare-fun m!6327822 () Bool)

(assert (=> b!5290274 m!6327822))

(assert (=> b!5290274 m!6326080))

(assert (=> b!5290274 m!6326886))

(assert (=> b!5290274 m!6327822))

(assert (=> b!5290274 m!6326886))

(declare-fun m!6327824 () Bool)

(assert (=> b!5290274 m!6327824))

(assert (=> b!5288574 d!1702072))

(declare-fun bs!1226977 () Bool)

(declare-fun d!1702074 () Bool)

(assert (= bs!1226977 (and d!1702074 d!1701188)))

(declare-fun lambda!267796 () Int)

(assert (=> bs!1226977 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267796 lambda!267640))))

(declare-fun bs!1226978 () Bool)

(assert (= bs!1226978 (and d!1702074 b!5287682)))

(assert (=> bs!1226978 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267796 lambda!267546))))

(declare-fun bs!1226979 () Bool)

(assert (= bs!1226979 (and d!1702074 d!1701974)))

(assert (=> bs!1226979 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267782))))

(declare-fun bs!1226980 () Bool)

(assert (= bs!1226980 (and d!1702074 d!1701704)))

(assert (=> bs!1226980 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267741))))

(declare-fun bs!1226981 () Bool)

(assert (= bs!1226981 (and d!1702074 d!1701708)))

(assert (=> bs!1226981 (= lambda!267796 lambda!267742)))

(declare-fun bs!1226982 () Bool)

(assert (= bs!1226982 (and d!1702074 d!1701912)))

(assert (=> bs!1226982 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267771))))

(declare-fun bs!1226983 () Bool)

(assert (= bs!1226983 (and d!1702074 d!1701888)))

(assert (=> bs!1226983 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267768))))

(declare-fun bs!1226984 () Bool)

(assert (= bs!1226984 (and d!1702074 d!1701364)))

(assert (=> bs!1226984 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267678))))

(declare-fun bs!1226985 () Bool)

(assert (= bs!1226985 (and d!1702074 d!1701776)))

(assert (=> bs!1226985 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267750))))

(declare-fun bs!1226986 () Bool)

(assert (= bs!1226986 (and d!1702074 d!1702070)))

(assert (=> bs!1226986 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267795))))

(declare-fun bs!1226987 () Bool)

(assert (= bs!1226987 (and d!1702074 d!1701080)))

(assert (=> bs!1226987 (= (= (head!11334 s!2326) (h!67386 s!2326)) (= lambda!267796 lambda!267614))))

(declare-fun bs!1226988 () Bool)

(assert (= bs!1226988 (and d!1702074 d!1701496)))

(assert (=> bs!1226988 (= (= (head!11334 s!2326) (head!11334 (t!374265 s!2326))) (= lambda!267796 lambda!267705))))

(assert (=> d!1702074 true))

(assert (=> d!1702074 (= (derivationStepZipper!1164 lt!2161312 (head!11334 s!2326)) (flatMap!648 lt!2161312 lambda!267796))))

(declare-fun bs!1226989 () Bool)

(assert (= bs!1226989 d!1702074))

(declare-fun m!6327826 () Bool)

(assert (=> bs!1226989 m!6327826))

(assert (=> b!5288574 d!1702074))

(assert (=> b!5288574 d!1701396))

(assert (=> b!5288574 d!1701574))

(declare-fun d!1702076 () Bool)

(assert (=> d!1702076 (= (nullable!5090 lt!2161294) (nullableFct!1460 lt!2161294))))

(declare-fun bs!1226990 () Bool)

(assert (= bs!1226990 d!1702076))

(declare-fun m!6327828 () Bool)

(assert (=> bs!1226990 m!6327828))

(assert (=> b!5288617 d!1702076))

(declare-fun call!377026 () (InoxSet Context!8610))

(declare-fun e!3288877 () (InoxSet Context!8610))

(declare-fun b!5290275 () Bool)

(assert (=> b!5290275 (= e!3288877 ((_ map or) call!377026 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))))) (h!67386 s!2326))))))

(declare-fun b!5290276 () Bool)

(declare-fun e!3288878 () Bool)

(assert (=> b!5290276 (= e!3288878 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))))))))

(declare-fun b!5290277 () Bool)

(declare-fun e!3288876 () (InoxSet Context!8610))

(assert (=> b!5290277 (= e!3288876 call!377026)))

(declare-fun b!5290278 () Bool)

(assert (=> b!5290278 (= e!3288877 e!3288876)))

(declare-fun c!917719 () Bool)

(assert (=> b!5290278 (= c!917719 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279))))))))

(declare-fun b!5290279 () Bool)

(assert (=> b!5290279 (= e!3288876 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1702078 () Bool)

(declare-fun c!917720 () Bool)

(assert (=> d!1702078 (= c!917720 e!3288878)))

(declare-fun res!2243633 () Bool)

(assert (=> d!1702078 (=> (not res!2243633) (not e!3288878))))

(assert (=> d!1702078 (= res!2243633 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279))))))))

(assert (=> d!1702078 (= (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 lt!2161279))) (h!67386 s!2326)) e!3288877)))

(declare-fun bm!377021 () Bool)

(assert (=> bm!377021 (= call!377026 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))))) (h!67386 s!2326)))))

(assert (= (and d!1702078 res!2243633) b!5290276))

(assert (= (and d!1702078 c!917720) b!5290275))

(assert (= (and d!1702078 (not c!917720)) b!5290278))

(assert (= (and b!5290278 c!917719) b!5290277))

(assert (= (and b!5290278 (not c!917719)) b!5290279))

(assert (= (or b!5290275 b!5290277) bm!377021))

(declare-fun m!6327830 () Bool)

(assert (=> b!5290275 m!6327830))

(declare-fun m!6327832 () Bool)

(assert (=> b!5290276 m!6327832))

(declare-fun m!6327834 () Bool)

(assert (=> bm!377021 m!6327834))

(assert (=> b!5288166 d!1702078))

(declare-fun b!5290280 () Bool)

(declare-fun e!3288880 () Bool)

(assert (=> b!5290280 (= e!3288880 (not (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 lt!2161300 (head!11334 s!2326))))))))

(declare-fun b!5290281 () Bool)

(declare-fun e!3288879 () Bool)

(assert (=> b!5290281 (= e!3288879 (nullable!5090 (derivativeStep!4129 lt!2161300 (head!11334 s!2326))))))

(declare-fun d!1702080 () Bool)

(declare-fun e!3288884 () Bool)

(assert (=> d!1702080 e!3288884))

(declare-fun c!917722 () Bool)

(assert (=> d!1702080 (= c!917722 ((_ is EmptyExpr!14921) (derivativeStep!4129 lt!2161300 (head!11334 s!2326))))))

(declare-fun lt!2161619 () Bool)

(assert (=> d!1702080 (= lt!2161619 e!3288879)))

(declare-fun c!917721 () Bool)

(assert (=> d!1702080 (= c!917721 (isEmpty!32895 (tail!10430 s!2326)))))

(assert (=> d!1702080 (validRegex!6657 (derivativeStep!4129 lt!2161300 (head!11334 s!2326)))))

(assert (=> d!1702080 (= (matchR!7106 (derivativeStep!4129 lt!2161300 (head!11334 s!2326)) (tail!10430 s!2326)) lt!2161619)))

(declare-fun b!5290282 () Bool)

(declare-fun e!3288885 () Bool)

(assert (=> b!5290282 (= e!3288885 (= (head!11334 (tail!10430 s!2326)) (c!916969 (derivativeStep!4129 lt!2161300 (head!11334 s!2326)))))))

(declare-fun b!5290283 () Bool)

(declare-fun e!3288883 () Bool)

(assert (=> b!5290283 (= e!3288884 e!3288883)))

(declare-fun c!917723 () Bool)

(assert (=> b!5290283 (= c!917723 ((_ is EmptyLang!14921) (derivativeStep!4129 lt!2161300 (head!11334 s!2326))))))

(declare-fun b!5290284 () Bool)

(assert (=> b!5290284 (= e!3288879 (matchR!7106 (derivativeStep!4129 (derivativeStep!4129 lt!2161300 (head!11334 s!2326)) (head!11334 (tail!10430 s!2326))) (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5290285 () Bool)

(declare-fun res!2243641 () Bool)

(assert (=> b!5290285 (=> (not res!2243641) (not e!3288885))))

(assert (=> b!5290285 (= res!2243641 (isEmpty!32895 (tail!10430 (tail!10430 s!2326))))))

(declare-fun b!5290286 () Bool)

(declare-fun e!3288881 () Bool)

(declare-fun e!3288882 () Bool)

(assert (=> b!5290286 (= e!3288881 e!3288882)))

(declare-fun res!2243640 () Bool)

(assert (=> b!5290286 (=> (not res!2243640) (not e!3288882))))

(assert (=> b!5290286 (= res!2243640 (not lt!2161619))))

(declare-fun b!5290287 () Bool)

(declare-fun res!2243638 () Bool)

(assert (=> b!5290287 (=> res!2243638 e!3288881)))

(assert (=> b!5290287 (= res!2243638 e!3288885)))

(declare-fun res!2243639 () Bool)

(assert (=> b!5290287 (=> (not res!2243639) (not e!3288885))))

(assert (=> b!5290287 (= res!2243639 lt!2161619)))

(declare-fun b!5290288 () Bool)

(declare-fun call!377027 () Bool)

(assert (=> b!5290288 (= e!3288884 (= lt!2161619 call!377027))))

(declare-fun b!5290289 () Bool)

(assert (=> b!5290289 (= e!3288882 e!3288880)))

(declare-fun res!2243634 () Bool)

(assert (=> b!5290289 (=> res!2243634 e!3288880)))

(assert (=> b!5290289 (= res!2243634 call!377027)))

(declare-fun bm!377022 () Bool)

(assert (=> bm!377022 (= call!377027 (isEmpty!32895 (tail!10430 s!2326)))))

(declare-fun b!5290290 () Bool)

(declare-fun res!2243635 () Bool)

(assert (=> b!5290290 (=> res!2243635 e!3288881)))

(assert (=> b!5290290 (= res!2243635 (not ((_ is ElementMatch!14921) (derivativeStep!4129 lt!2161300 (head!11334 s!2326)))))))

(assert (=> b!5290290 (= e!3288883 e!3288881)))

(declare-fun b!5290291 () Bool)

(declare-fun res!2243637 () Bool)

(assert (=> b!5290291 (=> res!2243637 e!3288880)))

(assert (=> b!5290291 (= res!2243637 (not (isEmpty!32895 (tail!10430 (tail!10430 s!2326)))))))

(declare-fun b!5290292 () Bool)

(declare-fun res!2243636 () Bool)

(assert (=> b!5290292 (=> (not res!2243636) (not e!3288885))))

(assert (=> b!5290292 (= res!2243636 (not call!377027))))

(declare-fun b!5290293 () Bool)

(assert (=> b!5290293 (= e!3288883 (not lt!2161619))))

(assert (= (and d!1702080 c!917721) b!5290281))

(assert (= (and d!1702080 (not c!917721)) b!5290284))

(assert (= (and d!1702080 c!917722) b!5290288))

(assert (= (and d!1702080 (not c!917722)) b!5290283))

(assert (= (and b!5290283 c!917723) b!5290293))

(assert (= (and b!5290283 (not c!917723)) b!5290290))

(assert (= (and b!5290290 (not res!2243635)) b!5290287))

(assert (= (and b!5290287 res!2243639) b!5290292))

(assert (= (and b!5290292 res!2243636) b!5290285))

(assert (= (and b!5290285 res!2243641) b!5290282))

(assert (= (and b!5290287 (not res!2243638)) b!5290286))

(assert (= (and b!5290286 res!2243640) b!5290289))

(assert (= (and b!5290289 (not res!2243634)) b!5290291))

(assert (= (and b!5290291 (not res!2243637)) b!5290280))

(assert (= (or b!5290288 b!5290289 b!5290292) bm!377022))

(assert (=> b!5290282 m!6326080))

(assert (=> b!5290282 m!6326884))

(assert (=> b!5290291 m!6326080))

(assert (=> b!5290291 m!6326886))

(assert (=> b!5290291 m!6326886))

(assert (=> b!5290291 m!6326888))

(assert (=> b!5290285 m!6326080))

(assert (=> b!5290285 m!6326886))

(assert (=> b!5290285 m!6326886))

(assert (=> b!5290285 m!6326888))

(assert (=> b!5290280 m!6326080))

(assert (=> b!5290280 m!6326884))

(assert (=> b!5290281 m!6326150))

(declare-fun m!6327836 () Bool)

(assert (=> b!5290281 m!6327836))

(assert (=> bm!377022 m!6326080))

(assert (=> bm!377022 m!6326100))

(assert (=> b!5290284 m!6326080))

(assert (=> b!5290284 m!6326884))

(assert (=> b!5290284 m!6326150))

(assert (=> b!5290284 m!6326884))

(declare-fun m!6327838 () Bool)

(assert (=> b!5290284 m!6327838))

(assert (=> b!5290284 m!6326080))

(assert (=> b!5290284 m!6326886))

(assert (=> b!5290284 m!6327838))

(assert (=> b!5290284 m!6326886))

(declare-fun m!6327840 () Bool)

(assert (=> b!5290284 m!6327840))

(assert (=> d!1702080 m!6326080))

(assert (=> d!1702080 m!6326100))

(assert (=> d!1702080 m!6326150))

(declare-fun m!6327842 () Bool)

(assert (=> d!1702080 m!6327842))

(assert (=> b!5288650 d!1702080))

(declare-fun b!5290294 () Bool)

(declare-fun e!3288886 () Regex!14921)

(declare-fun e!3288889 () Regex!14921)

(assert (=> b!5290294 (= e!3288886 e!3288889)))

(declare-fun c!917728 () Bool)

(assert (=> b!5290294 (= c!917728 ((_ is ElementMatch!14921) lt!2161300))))

(declare-fun c!917724 () Bool)

(declare-fun call!377031 () Regex!14921)

(declare-fun bm!377023 () Bool)

(declare-fun c!917725 () Bool)

(assert (=> bm!377023 (= call!377031 (derivativeStep!4129 (ite c!917725 (regTwo!30355 lt!2161300) (ite c!917724 (reg!15250 lt!2161300) (regOne!30354 lt!2161300))) (head!11334 s!2326)))))

(declare-fun d!1702082 () Bool)

(declare-fun lt!2161620 () Regex!14921)

(assert (=> d!1702082 (validRegex!6657 lt!2161620)))

(assert (=> d!1702082 (= lt!2161620 e!3288886)))

(declare-fun c!917726 () Bool)

(assert (=> d!1702082 (= c!917726 (or ((_ is EmptyExpr!14921) lt!2161300) ((_ is EmptyLang!14921) lt!2161300)))))

(assert (=> d!1702082 (validRegex!6657 lt!2161300)))

(assert (=> d!1702082 (= (derivativeStep!4129 lt!2161300 (head!11334 s!2326)) lt!2161620)))

(declare-fun bm!377024 () Bool)

(declare-fun call!377030 () Regex!14921)

(declare-fun call!377028 () Regex!14921)

(assert (=> bm!377024 (= call!377030 call!377028)))

(declare-fun b!5290295 () Bool)

(declare-fun e!3288890 () Regex!14921)

(declare-fun call!377029 () Regex!14921)

(assert (=> b!5290295 (= e!3288890 (Concat!23766 call!377029 lt!2161300))))

(declare-fun c!917727 () Bool)

(declare-fun bm!377025 () Bool)

(assert (=> bm!377025 (= call!377028 (derivativeStep!4129 (ite c!917725 (regOne!30355 lt!2161300) (ite c!917727 (regTwo!30354 lt!2161300) (regOne!30354 lt!2161300))) (head!11334 s!2326)))))

(declare-fun b!5290296 () Bool)

(assert (=> b!5290296 (= e!3288889 (ite (= (head!11334 s!2326) (c!916969 lt!2161300)) EmptyExpr!14921 EmptyLang!14921))))

(declare-fun bm!377026 () Bool)

(assert (=> bm!377026 (= call!377029 call!377031)))

(declare-fun b!5290297 () Bool)

(declare-fun e!3288887 () Regex!14921)

(assert (=> b!5290297 (= e!3288887 (Union!14921 call!377028 call!377031))))

(declare-fun b!5290298 () Bool)

(assert (=> b!5290298 (= c!917725 ((_ is Union!14921) lt!2161300))))

(assert (=> b!5290298 (= e!3288889 e!3288887)))

(declare-fun e!3288888 () Regex!14921)

(declare-fun b!5290299 () Bool)

(assert (=> b!5290299 (= e!3288888 (Union!14921 (Concat!23766 call!377029 (regTwo!30354 lt!2161300)) call!377030))))

(declare-fun b!5290300 () Bool)

(assert (=> b!5290300 (= e!3288886 EmptyLang!14921)))

(declare-fun b!5290301 () Bool)

(assert (=> b!5290301 (= e!3288888 (Union!14921 (Concat!23766 call!377030 (regTwo!30354 lt!2161300)) EmptyLang!14921))))

(declare-fun b!5290302 () Bool)

(assert (=> b!5290302 (= e!3288887 e!3288890)))

(assert (=> b!5290302 (= c!917724 ((_ is Star!14921) lt!2161300))))

(declare-fun b!5290303 () Bool)

(assert (=> b!5290303 (= c!917727 (nullable!5090 (regOne!30354 lt!2161300)))))

(assert (=> b!5290303 (= e!3288890 e!3288888)))

(assert (= (and d!1702082 c!917726) b!5290300))

(assert (= (and d!1702082 (not c!917726)) b!5290294))

(assert (= (and b!5290294 c!917728) b!5290296))

(assert (= (and b!5290294 (not c!917728)) b!5290298))

(assert (= (and b!5290298 c!917725) b!5290297))

(assert (= (and b!5290298 (not c!917725)) b!5290302))

(assert (= (and b!5290302 c!917724) b!5290295))

(assert (= (and b!5290302 (not c!917724)) b!5290303))

(assert (= (and b!5290303 c!917727) b!5290299))

(assert (= (and b!5290303 (not c!917727)) b!5290301))

(assert (= (or b!5290299 b!5290301) bm!377024))

(assert (= (or b!5290295 b!5290299) bm!377026))

(assert (= (or b!5290297 bm!377026) bm!377023))

(assert (= (or b!5290297 bm!377024) bm!377025))

(assert (=> bm!377023 m!6326076))

(declare-fun m!6327844 () Bool)

(assert (=> bm!377023 m!6327844))

(declare-fun m!6327846 () Bool)

(assert (=> d!1702082 m!6327846))

(assert (=> d!1702082 m!6326134))

(assert (=> bm!377025 m!6326076))

(declare-fun m!6327848 () Bool)

(assert (=> bm!377025 m!6327848))

(declare-fun m!6327850 () Bool)

(assert (=> b!5290303 m!6327850))

(assert (=> b!5288650 d!1702082))

(assert (=> b!5288650 d!1701396))

(assert (=> b!5288650 d!1701574))

(declare-fun b!5290307 () Bool)

(declare-fun e!3288891 () Bool)

(declare-fun lt!2161621 () List!61062)

(assert (=> b!5290307 (= e!3288891 (or (not (= (_2!35423 (get!20954 lt!2161433)) Nil!60938)) (= lt!2161621 (_1!35423 (get!20954 lt!2161433)))))))

(declare-fun d!1702084 () Bool)

(assert (=> d!1702084 e!3288891))

(declare-fun res!2243642 () Bool)

(assert (=> d!1702084 (=> (not res!2243642) (not e!3288891))))

(assert (=> d!1702084 (= res!2243642 (= (content!10851 lt!2161621) ((_ map or) (content!10851 (_1!35423 (get!20954 lt!2161433))) (content!10851 (_2!35423 (get!20954 lt!2161433))))))))

(declare-fun e!3288892 () List!61062)

(assert (=> d!1702084 (= lt!2161621 e!3288892)))

(declare-fun c!917729 () Bool)

(assert (=> d!1702084 (= c!917729 ((_ is Nil!60938) (_1!35423 (get!20954 lt!2161433))))))

(assert (=> d!1702084 (= (++!13288 (_1!35423 (get!20954 lt!2161433)) (_2!35423 (get!20954 lt!2161433))) lt!2161621)))

(declare-fun b!5290304 () Bool)

(assert (=> b!5290304 (= e!3288892 (_2!35423 (get!20954 lt!2161433)))))

(declare-fun b!5290306 () Bool)

(declare-fun res!2243643 () Bool)

(assert (=> b!5290306 (=> (not res!2243643) (not e!3288891))))

(assert (=> b!5290306 (= res!2243643 (= (size!39757 lt!2161621) (+ (size!39757 (_1!35423 (get!20954 lt!2161433))) (size!39757 (_2!35423 (get!20954 lt!2161433))))))))

(declare-fun b!5290305 () Bool)

(assert (=> b!5290305 (= e!3288892 (Cons!60938 (h!67386 (_1!35423 (get!20954 lt!2161433))) (++!13288 (t!374265 (_1!35423 (get!20954 lt!2161433))) (_2!35423 (get!20954 lt!2161433)))))))

(assert (= (and d!1702084 c!917729) b!5290304))

(assert (= (and d!1702084 (not c!917729)) b!5290305))

(assert (= (and d!1702084 res!2243642) b!5290306))

(assert (= (and b!5290306 res!2243643) b!5290307))

(declare-fun m!6327852 () Bool)

(assert (=> d!1702084 m!6327852))

(declare-fun m!6327854 () Bool)

(assert (=> d!1702084 m!6327854))

(declare-fun m!6327856 () Bool)

(assert (=> d!1702084 m!6327856))

(declare-fun m!6327858 () Bool)

(assert (=> b!5290306 m!6327858))

(declare-fun m!6327860 () Bool)

(assert (=> b!5290306 m!6327860))

(declare-fun m!6327862 () Bool)

(assert (=> b!5290306 m!6327862))

(declare-fun m!6327864 () Bool)

(assert (=> b!5290305 m!6327864))

(assert (=> b!5288312 d!1702084))

(assert (=> b!5288312 d!1701712))

(declare-fun b!5290308 () Bool)

(declare-fun call!377032 () (InoxSet Context!8610))

(declare-fun e!3288894 () (InoxSet Context!8610))

(assert (=> b!5290308 (= e!3288894 ((_ map or) call!377032 (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))) (h!67386 s!2326))))))

(declare-fun b!5290309 () Bool)

(declare-fun e!3288895 () Bool)

(assert (=> b!5290309 (= e!3288895 (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))))))

(declare-fun b!5290310 () Bool)

(declare-fun e!3288893 () (InoxSet Context!8610))

(assert (=> b!5290310 (= e!3288893 call!377032)))

(declare-fun b!5290311 () Bool)

(assert (=> b!5290311 (= e!3288894 e!3288893)))

(declare-fun c!917730 () Bool)

(assert (=> b!5290311 (= c!917730 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))))

(declare-fun b!5290312 () Bool)

(assert (=> b!5290312 (= e!3288893 ((as const (Array Context!8610 Bool)) false))))

(declare-fun d!1702086 () Bool)

(declare-fun c!917731 () Bool)

(assert (=> d!1702086 (= c!917731 e!3288895)))

(declare-fun res!2243644 () Bool)

(assert (=> d!1702086 (=> (not res!2243644) (not e!3288895))))

(assert (=> d!1702086 (= res!2243644 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))))

(assert (=> d!1702086 (= (derivationStepZipperUp!293 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (h!67386 s!2326)) e!3288894)))

(declare-fun bm!377027 () Bool)

(assert (=> bm!377027 (= call!377032 (derivationStepZipperDown!369 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))) (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343))))))))))) (h!67386 s!2326)))))

(assert (= (and d!1702086 res!2243644) b!5290309))

(assert (= (and d!1702086 c!917731) b!5290308))

(assert (= (and d!1702086 (not c!917731)) b!5290311))

(assert (= (and b!5290311 c!917730) b!5290310))

(assert (= (and b!5290311 (not c!917730)) b!5290312))

(assert (= (or b!5290308 b!5290310) bm!377027))

(declare-fun m!6327866 () Bool)

(assert (=> b!5290308 m!6327866))

(declare-fun m!6327868 () Bool)

(assert (=> b!5290309 m!6327868))

(declare-fun m!6327870 () Bool)

(assert (=> bm!377027 m!6327870))

(assert (=> b!5288490 d!1702086))

(assert (=> b!5288687 d!1701244))

(declare-fun d!1702088 () Bool)

(assert (=> d!1702088 (= (head!11335 lt!2161306) (h!67387 lt!2161306))))

(assert (=> b!5288645 d!1702088))

(assert (=> b!5288107 d!1701116))

(declare-fun d!1702090 () Bool)

(assert (=> d!1702090 (= (flatMap!648 lt!2161283 lambda!267614) (choose!39488 lt!2161283 lambda!267614))))

(declare-fun bs!1226991 () Bool)

(assert (= bs!1226991 d!1702090))

(declare-fun m!6327872 () Bool)

(assert (=> bs!1226991 m!6327872))

(assert (=> d!1701080 d!1702090))

(declare-fun b!5290313 () Bool)

(declare-fun e!3288898 () (InoxSet Context!8610))

(declare-fun call!377036 () (InoxSet Context!8610))

(assert (=> b!5290313 (= e!3288898 call!377036)))

(declare-fun bm!377028 () Bool)

(declare-fun call!377037 () List!61063)

(declare-fun call!377035 () (InoxSet Context!8610))

(declare-fun c!917735 () Bool)

(assert (=> bm!377028 (= call!377035 (derivationStepZipperDown!369 (ite c!917735 (regTwo!30355 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (regOne!30354 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))))) (ite c!917735 (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647)) (Context!8611 call!377037)) (h!67386 s!2326)))))

(declare-fun b!5290314 () Bool)

(declare-fun e!3288899 () (InoxSet Context!8610))

(assert (=> b!5290314 (= e!3288899 call!377036)))

(declare-fun c!917733 () Bool)

(declare-fun bm!377029 () Bool)

(declare-fun c!917734 () Bool)

(assert (=> bm!377029 (= call!377037 ($colon$colon!1358 (exprs!4805 (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647))) (ite (or c!917734 c!917733) (regTwo!30354 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))))))))

(declare-fun call!377033 () (InoxSet Context!8610))

(declare-fun bm!377030 () Bool)

(declare-fun call!377034 () List!61063)

(assert (=> bm!377030 (= call!377033 (derivationStepZipperDown!369 (ite c!917735 (regOne!30355 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (ite c!917734 (regTwo!30354 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (ite c!917733 (regOne!30354 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (reg!15250 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))))))) (ite (or c!917735 c!917734) (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647)) (Context!8611 call!377034)) (h!67386 s!2326)))))

(declare-fun bm!377031 () Bool)

(declare-fun call!377038 () (InoxSet Context!8610))

(assert (=> bm!377031 (= call!377036 call!377038)))

(declare-fun bm!377032 () Bool)

(assert (=> bm!377032 (= call!377038 call!377033)))

(declare-fun b!5290315 () Bool)

(declare-fun e!3288897 () Bool)

(assert (=> b!5290315 (= c!917734 e!3288897)))

(declare-fun res!2243645 () Bool)

(assert (=> b!5290315 (=> (not res!2243645) (not e!3288897))))

(assert (=> b!5290315 (= res!2243645 ((_ is Concat!23766) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))))))

(declare-fun e!3288901 () (InoxSet Context!8610))

(declare-fun e!3288900 () (InoxSet Context!8610))

(assert (=> b!5290315 (= e!3288901 e!3288900)))

(declare-fun c!917732 () Bool)

(declare-fun d!1702092 () Bool)

(assert (=> d!1702092 (= c!917732 (and ((_ is ElementMatch!14921) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (= (c!916969 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))) (h!67386 s!2326))))))

(declare-fun e!3288896 () (InoxSet Context!8610))

(assert (=> d!1702092 (= (derivationStepZipperDown!369 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))) (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647)) (h!67386 s!2326)) e!3288896)))

(declare-fun bm!377033 () Bool)

(assert (=> bm!377033 (= call!377034 call!377037)))

(declare-fun b!5290316 () Bool)

(assert (=> b!5290316 (= e!3288901 ((_ map or) call!377033 call!377035))))

(declare-fun b!5290317 () Bool)

(assert (=> b!5290317 (= e!3288896 e!3288901)))

(assert (=> b!5290317 (= c!917735 ((_ is Union!14921) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))))))

(declare-fun b!5290318 () Bool)

(declare-fun c!917736 () Bool)

(assert (=> b!5290318 (= c!917736 ((_ is Star!14921) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))))))

(assert (=> b!5290318 (= e!3288899 e!3288898)))

(declare-fun b!5290319 () Bool)

(assert (=> b!5290319 (= e!3288898 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5290320 () Bool)

(assert (=> b!5290320 (= e!3288900 ((_ map or) call!377035 call!377038))))

(declare-fun b!5290321 () Bool)

(assert (=> b!5290321 (= e!3288897 (nullable!5090 (regOne!30354 (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292)))))))))))

(declare-fun b!5290322 () Bool)

(assert (=> b!5290322 (= e!3288896 (store ((as const (Array Context!8610 Bool)) false) (ite (or c!917046 c!917045) lt!2161287 (Context!8611 call!376647)) true))))

(declare-fun b!5290323 () Bool)

(assert (=> b!5290323 (= e!3288900 e!3288899)))

(assert (=> b!5290323 (= c!917733 ((_ is Concat!23766) (ite c!917046 (regOne!30355 (regOne!30354 (regOne!30354 r!7292))) (ite c!917045 (regTwo!30354 (regOne!30354 (regOne!30354 r!7292))) (ite c!917044 (regOne!30354 (regOne!30354 (regOne!30354 r!7292))) (reg!15250 (regOne!30354 (regOne!30354 r!7292))))))))))

(assert (= (and d!1702092 c!917732) b!5290322))

(assert (= (and d!1702092 (not c!917732)) b!5290317))

(assert (= (and b!5290317 c!917735) b!5290316))

(assert (= (and b!5290317 (not c!917735)) b!5290315))

(assert (= (and b!5290315 res!2243645) b!5290321))

(assert (= (and b!5290315 c!917734) b!5290320))

(assert (= (and b!5290315 (not c!917734)) b!5290323))

(assert (= (and b!5290323 c!917733) b!5290314))

(assert (= (and b!5290323 (not c!917733)) b!5290318))

(assert (= (and b!5290318 c!917736) b!5290313))

(assert (= (and b!5290318 (not c!917736)) b!5290319))

(assert (= (or b!5290314 b!5290313) bm!377033))

(assert (= (or b!5290314 b!5290313) bm!377031))

(assert (= (or b!5290320 bm!377033) bm!377029))

(assert (= (or b!5290320 bm!377031) bm!377032))

(assert (= (or b!5290316 b!5290320) bm!377028))

(assert (= (or b!5290316 bm!377032) bm!377030))

(declare-fun m!6327874 () Bool)

(assert (=> b!5290322 m!6327874))

(declare-fun m!6327876 () Bool)

(assert (=> bm!377029 m!6327876))

(declare-fun m!6327878 () Bool)

(assert (=> bm!377030 m!6327878))

(declare-fun m!6327880 () Bool)

(assert (=> b!5290321 m!6327880))

(declare-fun m!6327882 () Bool)

(assert (=> bm!377028 m!6327882))

(assert (=> bm!376643 d!1702092))

(assert (=> bm!376715 d!1701352))

(declare-fun d!1702094 () Bool)

(declare-fun c!917737 () Bool)

(assert (=> d!1702094 (= c!917737 (isEmpty!32895 (t!374265 s!2326)))))

(declare-fun e!3288902 () Bool)

(assert (=> d!1702094 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161293) (t!374265 s!2326)) e!3288902)))

(declare-fun b!5290324 () Bool)

(assert (=> b!5290324 (= e!3288902 (nullableZipper!1308 ((_ map or) lt!2161296 lt!2161293)))))

(declare-fun b!5290325 () Bool)

(assert (=> b!5290325 (= e!3288902 (matchZipper!1165 (derivationStepZipper!1164 ((_ map or) lt!2161296 lt!2161293) (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))))))

(assert (= (and d!1702094 c!917737) b!5290324))

(assert (= (and d!1702094 (not c!917737)) b!5290325))

(assert (=> d!1702094 m!6325484))

(declare-fun m!6327884 () Bool)

(assert (=> b!5290324 m!6327884))

(assert (=> b!5290325 m!6325488))

(assert (=> b!5290325 m!6325488))

(declare-fun m!6327886 () Bool)

(assert (=> b!5290325 m!6327886))

(assert (=> b!5290325 m!6325492))

(assert (=> b!5290325 m!6327886))

(assert (=> b!5290325 m!6325492))

(declare-fun m!6327888 () Bool)

(assert (=> b!5290325 m!6327888))

(assert (=> d!1701112 d!1702094))

(assert (=> d!1701112 d!1701022))

(declare-fun d!1702096 () Bool)

(declare-fun e!3288903 () Bool)

(assert (=> d!1702096 (= (matchZipper!1165 ((_ map or) lt!2161296 lt!2161293) (t!374265 s!2326)) e!3288903)))

(declare-fun res!2243646 () Bool)

(assert (=> d!1702096 (=> res!2243646 e!3288903)))

(assert (=> d!1702096 (= res!2243646 (matchZipper!1165 lt!2161296 (t!374265 s!2326)))))

(assert (=> d!1702096 true))

(declare-fun _$48!976 () Unit!153202)

(assert (=> d!1702096 (= (choose!39485 lt!2161296 lt!2161293 (t!374265 s!2326)) _$48!976)))

(declare-fun b!5290326 () Bool)

(assert (=> b!5290326 (= e!3288903 (matchZipper!1165 lt!2161293 (t!374265 s!2326)))))

(assert (= (and d!1702096 (not res!2243646)) b!5290326))

(assert (=> d!1702096 m!6325796))

(assert (=> d!1702096 m!6325178))

(assert (=> b!5290326 m!6325244))

(assert (=> d!1701112 d!1702096))

(declare-fun b!5290327 () Bool)

(declare-fun res!2243650 () Bool)

(declare-fun e!3288906 () Bool)

(assert (=> b!5290327 (=> (not res!2243650) (not e!3288906))))

(declare-fun call!377039 () Bool)

(assert (=> b!5290327 (= res!2243650 call!377039)))

(declare-fun e!3288910 () Bool)

(assert (=> b!5290327 (= e!3288910 e!3288906)))

(declare-fun b!5290328 () Bool)

(declare-fun e!3288909 () Bool)

(declare-fun e!3288905 () Bool)

(assert (=> b!5290328 (= e!3288909 e!3288905)))

(declare-fun res!2243647 () Bool)

(assert (=> b!5290328 (= res!2243647 (not (nullable!5090 (reg!15250 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))))

(assert (=> b!5290328 (=> (not res!2243647) (not e!3288905))))

(declare-fun b!5290329 () Bool)

(assert (=> b!5290329 (= e!3288909 e!3288910)))

(declare-fun c!917738 () Bool)

(assert (=> b!5290329 (= c!917738 ((_ is Union!14921) (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))

(declare-fun b!5290330 () Bool)

(declare-fun e!3288907 () Bool)

(assert (=> b!5290330 (= e!3288907 e!3288909)))

(declare-fun c!917739 () Bool)

(assert (=> b!5290330 (= c!917739 ((_ is Star!14921) (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))

(declare-fun d!1702098 () Bool)

(declare-fun res!2243651 () Bool)

(assert (=> d!1702098 (=> res!2243651 e!3288907)))

(assert (=> d!1702098 (= res!2243651 ((_ is ElementMatch!14921) (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))

(assert (=> d!1702098 (= (validRegex!6657 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))) e!3288907)))

(declare-fun b!5290331 () Bool)

(declare-fun res!2243649 () Bool)

(declare-fun e!3288908 () Bool)

(assert (=> b!5290331 (=> res!2243649 e!3288908)))

(assert (=> b!5290331 (= res!2243649 (not ((_ is Concat!23766) (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292))))))))

(assert (=> b!5290331 (= e!3288910 e!3288908)))

(declare-fun b!5290332 () Bool)

(declare-fun call!377041 () Bool)

(assert (=> b!5290332 (= e!3288905 call!377041)))

(declare-fun bm!377034 () Bool)

(assert (=> bm!377034 (= call!377039 (validRegex!6657 (ite c!917738 (regOne!30355 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))) (regOne!30354 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))))))))

(declare-fun bm!377035 () Bool)

(assert (=> bm!377035 (= call!377041 (validRegex!6657 (ite c!917739 (reg!15250 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))) (ite c!917738 (regTwo!30355 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292)))) (regTwo!30354 (ite c!917102 (reg!15250 r!7292) (ite c!917101 (regTwo!30355 r!7292) (regTwo!30354 r!7292))))))))))

(declare-fun b!5290333 () Bool)

(declare-fun call!377040 () Bool)

(assert (=> b!5290333 (= e!3288906 call!377040)))

(declare-fun bm!377036 () Bool)

(assert (=> bm!377036 (= call!377040 call!377041)))

(declare-fun b!5290334 () Bool)

(declare-fun e!3288904 () Bool)

(assert (=> b!5290334 (= e!3288908 e!3288904)))

(declare-fun res!2243648 () Bool)

(assert (=> b!5290334 (=> (not res!2243648) (not e!3288904))))

(assert (=> b!5290334 (= res!2243648 call!377039)))

(declare-fun b!5290335 () Bool)

(assert (=> b!5290335 (= e!3288904 call!377040)))

(assert (= (and d!1702098 (not res!2243651)) b!5290330))

(assert (= (and b!5290330 c!917739) b!5290328))

(assert (= (and b!5290330 (not c!917739)) b!5290329))

(assert (= (and b!5290328 res!2243647) b!5290332))

(assert (= (and b!5290329 c!917738) b!5290327))

(assert (= (and b!5290329 (not c!917738)) b!5290331))

(assert (= (and b!5290327 res!2243650) b!5290333))

(assert (= (and b!5290331 (not res!2243649)) b!5290334))

(assert (= (and b!5290334 res!2243648) b!5290335))

(assert (= (or b!5290333 b!5290335) bm!377036))

(assert (= (or b!5290327 b!5290334) bm!377034))

(assert (= (or b!5290332 bm!377036) bm!377035))

(declare-fun m!6327890 () Bool)

(assert (=> b!5290328 m!6327890))

(declare-fun m!6327892 () Bool)

(assert (=> bm!377034 m!6327892))

(declare-fun m!6327894 () Bool)

(assert (=> bm!377035 m!6327894))

(assert (=> bm!376660 d!1702098))

(declare-fun d!1702100 () Bool)

(declare-fun res!2243652 () Bool)

(declare-fun e!3288911 () Bool)

(assert (=> d!1702100 (=> res!2243652 e!3288911)))

(assert (=> d!1702100 (= res!2243652 ((_ is Nil!60940) lt!2161303))))

(assert (=> d!1702100 (= (forall!14331 lt!2161303 lambda!267598) e!3288911)))

(declare-fun b!5290336 () Bool)

(declare-fun e!3288912 () Bool)

(assert (=> b!5290336 (= e!3288911 e!3288912)))

(declare-fun res!2243653 () Bool)

(assert (=> b!5290336 (=> (not res!2243653) (not e!3288912))))

(assert (=> b!5290336 (= res!2243653 (dynLambda!24097 lambda!267598 (h!67388 lt!2161303)))))

(declare-fun b!5290337 () Bool)

(assert (=> b!5290337 (= e!3288912 (forall!14331 (t!374267 lt!2161303) lambda!267598))))

(assert (= (and d!1702100 (not res!2243652)) b!5290336))

(assert (= (and b!5290336 res!2243653) b!5290337))

(declare-fun b_lambda!204033 () Bool)

(assert (=> (not b_lambda!204033) (not b!5290336)))

(declare-fun m!6327896 () Bool)

(assert (=> b!5290336 m!6327896))

(declare-fun m!6327898 () Bool)

(assert (=> b!5290337 m!6327898))

(assert (=> b!5288015 d!1702100))

(declare-fun d!1702102 () Bool)

(assert (=> d!1702102 (= (nullable!5090 (h!67387 (exprs!4805 lt!2161302))) (nullableFct!1460 (h!67387 (exprs!4805 lt!2161302))))))

(declare-fun bs!1226992 () Bool)

(assert (= bs!1226992 d!1702102))

(declare-fun m!6327900 () Bool)

(assert (=> bs!1226992 m!6327900))

(assert (=> b!5288486 d!1702102))

(assert (=> d!1701240 d!1701352))

(assert (=> d!1701240 d!1701724))

(declare-fun d!1702104 () Bool)

(declare-fun c!917740 () Bool)

(assert (=> d!1702104 (= c!917740 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288913 () Bool)

(assert (=> d!1702104 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161298 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288913)))

(declare-fun b!5290338 () Bool)

(assert (=> b!5290338 (= e!3288913 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161298 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5290339 () Bool)

(assert (=> b!5290339 (= e!3288913 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161298 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1702104 c!917740) b!5290338))

(assert (= (and d!1702104 (not c!917740)) b!5290339))

(assert (=> d!1702104 m!6325492))

(assert (=> d!1702104 m!6326388))

(assert (=> b!5290338 m!6325614))

(declare-fun m!6327902 () Bool)

(assert (=> b!5290338 m!6327902))

(assert (=> b!5290339 m!6325492))

(assert (=> b!5290339 m!6326392))

(assert (=> b!5290339 m!6325614))

(assert (=> b!5290339 m!6326392))

(declare-fun m!6327904 () Bool)

(assert (=> b!5290339 m!6327904))

(assert (=> b!5290339 m!6325492))

(assert (=> b!5290339 m!6326396))

(assert (=> b!5290339 m!6327904))

(assert (=> b!5290339 m!6326396))

(declare-fun m!6327906 () Bool)

(assert (=> b!5290339 m!6327906))

(assert (=> b!5288026 d!1702104))

(declare-fun bs!1226993 () Bool)

(declare-fun d!1702106 () Bool)

(assert (= bs!1226993 (and d!1702106 d!1701188)))

(declare-fun lambda!267797 () Int)

(assert (=> bs!1226993 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267797 lambda!267640))))

(declare-fun bs!1226994 () Bool)

(assert (= bs!1226994 (and d!1702106 b!5287682)))

(assert (=> bs!1226994 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267797 lambda!267546))))

(declare-fun bs!1226995 () Bool)

(assert (= bs!1226995 (and d!1702106 d!1702074)))

(assert (=> bs!1226995 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267797 lambda!267796))))

(declare-fun bs!1226996 () Bool)

(assert (= bs!1226996 (and d!1702106 d!1701974)))

(assert (=> bs!1226996 (= lambda!267797 lambda!267782)))

(declare-fun bs!1226997 () Bool)

(assert (= bs!1226997 (and d!1702106 d!1701704)))

(assert (=> bs!1226997 (= lambda!267797 lambda!267741)))

(declare-fun bs!1226998 () Bool)

(assert (= bs!1226998 (and d!1702106 d!1701708)))

(assert (=> bs!1226998 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267797 lambda!267742))))

(declare-fun bs!1226999 () Bool)

(assert (= bs!1226999 (and d!1702106 d!1701912)))

(assert (=> bs!1226999 (= lambda!267797 lambda!267771)))

(declare-fun bs!1227000 () Bool)

(assert (= bs!1227000 (and d!1702106 d!1701888)))

(assert (=> bs!1227000 (= lambda!267797 lambda!267768)))

(declare-fun bs!1227001 () Bool)

(assert (= bs!1227001 (and d!1702106 d!1701364)))

(assert (=> bs!1227001 (= lambda!267797 lambda!267678)))

(declare-fun bs!1227002 () Bool)

(assert (= bs!1227002 (and d!1702106 d!1701776)))

(assert (=> bs!1227002 (= lambda!267797 lambda!267750)))

(declare-fun bs!1227003 () Bool)

(assert (= bs!1227003 (and d!1702106 d!1702070)))

(assert (=> bs!1227003 (= lambda!267797 lambda!267795)))

(declare-fun bs!1227004 () Bool)

(assert (= bs!1227004 (and d!1702106 d!1701080)))

(assert (=> bs!1227004 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267797 lambda!267614))))

(declare-fun bs!1227005 () Bool)

(assert (= bs!1227005 (and d!1702106 d!1701496)))

(assert (=> bs!1227005 (= lambda!267797 lambda!267705)))

(assert (=> d!1702106 true))

(assert (=> d!1702106 (= (derivationStepZipper!1164 lt!2161298 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161298 lambda!267797))))

(declare-fun bs!1227006 () Bool)

(assert (= bs!1227006 d!1702106))

(declare-fun m!6327908 () Bool)

(assert (=> bs!1227006 m!6327908))

(assert (=> b!5288026 d!1702106))

(assert (=> b!5288026 d!1701366))

(assert (=> b!5288026 d!1701370))

(declare-fun bs!1227007 () Bool)

(declare-fun d!1702108 () Bool)

(assert (= bs!1227007 (and d!1702108 b!5287700)))

(declare-fun lambda!267798 () Int)

(assert (=> bs!1227007 (= lambda!267798 lambda!267549)))

(declare-fun bs!1227008 () Bool)

(assert (= bs!1227008 (and d!1702108 b!5289082)))

(assert (=> bs!1227008 (not (= lambda!267798 lambda!267695))))

(declare-fun bs!1227009 () Bool)

(assert (= bs!1227009 (and d!1702108 d!1701030)))

(assert (=> bs!1227009 (= lambda!267798 lambda!267584)))

(declare-fun bs!1227010 () Bool)

(assert (= bs!1227010 (and d!1702108 d!1701056)))

(assert (=> bs!1227010 (= lambda!267798 lambda!267611)))

(declare-fun bs!1227011 () Bool)

(assert (= bs!1227011 (and d!1702108 d!1701212)))

(assert (=> bs!1227011 (= lambda!267798 lambda!267647)))

(declare-fun bs!1227012 () Bool)

(assert (= bs!1227012 (and d!1702108 d!1701732)))

(assert (=> bs!1227012 (= lambda!267798 lambda!267745)))

(declare-fun bs!1227013 () Bool)

(assert (= bs!1227013 (and d!1702108 d!1701230)))

(assert (=> bs!1227013 (= lambda!267798 lambda!267650)))

(declare-fun bs!1227014 () Bool)

(assert (= bs!1227014 (and d!1702108 d!1701182)))

(assert (=> bs!1227014 (= lambda!267798 lambda!267639)))

(declare-fun bs!1227015 () Bool)

(assert (= bs!1227015 (and d!1702108 b!5289737)))

(assert (=> bs!1227015 (not (= lambda!267798 lambda!267754))))

(declare-fun bs!1227016 () Bool)

(assert (= bs!1227016 (and d!1702108 d!1702064)))

(assert (=> bs!1227016 (= lambda!267798 lambda!267794)))

(declare-fun bs!1227017 () Bool)

(assert (= bs!1227017 (and d!1702108 d!1701120)))

(assert (=> bs!1227017 (= lambda!267798 lambda!267615)))

(declare-fun bs!1227018 () Bool)

(assert (= bs!1227018 (and d!1702108 d!1702004)))

(assert (=> bs!1227018 (= lambda!267798 lambda!267791)))

(declare-fun bs!1227019 () Bool)

(assert (= bs!1227019 (and d!1702108 b!5289084)))

(assert (=> bs!1227019 (not (= lambda!267798 lambda!267696))))

(declare-fun bs!1227020 () Bool)

(assert (= bs!1227020 (and d!1702108 d!1701172)))

(assert (=> bs!1227020 (= lambda!267798 lambda!267636)))

(declare-fun bs!1227021 () Bool)

(assert (= bs!1227021 (and d!1702108 b!5289735)))

(assert (=> bs!1227021 (not (= lambda!267798 lambda!267753))))

(declare-fun b!5290340 () Bool)

(declare-fun e!3288916 () Bool)

(declare-fun lt!2161622 () Regex!14921)

(assert (=> b!5290340 (= e!3288916 (= lt!2161622 (head!11335 (t!374266 (unfocusZipperList!363 zl!343)))))))

(declare-fun e!3288919 () Bool)

(assert (=> d!1702108 e!3288919))

(declare-fun res!2243655 () Bool)

(assert (=> d!1702108 (=> (not res!2243655) (not e!3288919))))

(assert (=> d!1702108 (= res!2243655 (validRegex!6657 lt!2161622))))

(declare-fun e!3288918 () Regex!14921)

(assert (=> d!1702108 (= lt!2161622 e!3288918)))

(declare-fun c!917742 () Bool)

(declare-fun e!3288915 () Bool)

(assert (=> d!1702108 (= c!917742 e!3288915)))

(declare-fun res!2243654 () Bool)

(assert (=> d!1702108 (=> (not res!2243654) (not e!3288915))))

(assert (=> d!1702108 (= res!2243654 ((_ is Cons!60939) (t!374266 (unfocusZipperList!363 zl!343))))))

(assert (=> d!1702108 (forall!14329 (t!374266 (unfocusZipperList!363 zl!343)) lambda!267798)))

(assert (=> d!1702108 (= (generalisedUnion!850 (t!374266 (unfocusZipperList!363 zl!343))) lt!2161622)))

(declare-fun b!5290341 () Bool)

(assert (=> b!5290341 (= e!3288915 (isEmpty!32892 (t!374266 (t!374266 (unfocusZipperList!363 zl!343)))))))

(declare-fun b!5290342 () Bool)

(declare-fun e!3288914 () Bool)

(assert (=> b!5290342 (= e!3288914 (isEmptyLang!850 lt!2161622))))

(declare-fun b!5290343 () Bool)

(assert (=> b!5290343 (= e!3288919 e!3288914)))

(declare-fun c!917743 () Bool)

(assert (=> b!5290343 (= c!917743 (isEmpty!32892 (t!374266 (unfocusZipperList!363 zl!343))))))

(declare-fun b!5290344 () Bool)

(assert (=> b!5290344 (= e!3288914 e!3288916)))

(declare-fun c!917741 () Bool)

(assert (=> b!5290344 (= c!917741 (isEmpty!32892 (tail!10432 (t!374266 (unfocusZipperList!363 zl!343)))))))

(declare-fun b!5290345 () Bool)

(declare-fun e!3288917 () Regex!14921)

(assert (=> b!5290345 (= e!3288917 EmptyLang!14921)))

(declare-fun b!5290346 () Bool)

(assert (=> b!5290346 (= e!3288917 (Union!14921 (h!67387 (t!374266 (unfocusZipperList!363 zl!343))) (generalisedUnion!850 (t!374266 (t!374266 (unfocusZipperList!363 zl!343))))))))

(declare-fun b!5290347 () Bool)

(assert (=> b!5290347 (= e!3288916 (isUnion!282 lt!2161622))))

(declare-fun b!5290348 () Bool)

(assert (=> b!5290348 (= e!3288918 e!3288917)))

(declare-fun c!917744 () Bool)

(assert (=> b!5290348 (= c!917744 ((_ is Cons!60939) (t!374266 (unfocusZipperList!363 zl!343))))))

(declare-fun b!5290349 () Bool)

(assert (=> b!5290349 (= e!3288918 (h!67387 (t!374266 (unfocusZipperList!363 zl!343))))))

(assert (= (and d!1702108 res!2243654) b!5290341))

(assert (= (and d!1702108 c!917742) b!5290349))

(assert (= (and d!1702108 (not c!917742)) b!5290348))

(assert (= (and b!5290348 c!917744) b!5290346))

(assert (= (and b!5290348 (not c!917744)) b!5290345))

(assert (= (and d!1702108 res!2243655) b!5290343))

(assert (= (and b!5290343 c!917743) b!5290342))

(assert (= (and b!5290343 (not c!917743)) b!5290344))

(assert (= (and b!5290344 c!917741) b!5290340))

(assert (= (and b!5290344 (not c!917741)) b!5290347))

(assert (=> b!5290343 m!6325974))

(declare-fun m!6327910 () Bool)

(assert (=> b!5290347 m!6327910))

(declare-fun m!6327912 () Bool)

(assert (=> b!5290344 m!6327912))

(assert (=> b!5290344 m!6327912))

(declare-fun m!6327914 () Bool)

(assert (=> b!5290344 m!6327914))

(declare-fun m!6327916 () Bool)

(assert (=> b!5290346 m!6327916))

(declare-fun m!6327918 () Bool)

(assert (=> b!5290342 m!6327918))

(declare-fun m!6327920 () Bool)

(assert (=> d!1702108 m!6327920))

(declare-fun m!6327922 () Bool)

(assert (=> d!1702108 m!6327922))

(declare-fun m!6327924 () Bool)

(assert (=> b!5290340 m!6327924))

(declare-fun m!6327926 () Bool)

(assert (=> b!5290341 m!6327926))

(assert (=> b!5288473 d!1702108))

(assert (=> b!5288673 d!1701396))

(declare-fun d!1702110 () Bool)

(declare-fun c!917745 () Bool)

(assert (=> d!1702110 (= c!917745 (isEmpty!32895 (tail!10430 (t!374265 s!2326))))))

(declare-fun e!3288920 () Bool)

(assert (=> d!1702110 (= (matchZipper!1165 (derivationStepZipper!1164 lt!2161293 (head!11334 (t!374265 s!2326))) (tail!10430 (t!374265 s!2326))) e!3288920)))

(declare-fun b!5290350 () Bool)

(assert (=> b!5290350 (= e!3288920 (nullableZipper!1308 (derivationStepZipper!1164 lt!2161293 (head!11334 (t!374265 s!2326)))))))

(declare-fun b!5290351 () Bool)

(assert (=> b!5290351 (= e!3288920 (matchZipper!1165 (derivationStepZipper!1164 (derivationStepZipper!1164 lt!2161293 (head!11334 (t!374265 s!2326))) (head!11334 (tail!10430 (t!374265 s!2326)))) (tail!10430 (tail!10430 (t!374265 s!2326)))))))

(assert (= (and d!1702110 c!917745) b!5290350))

(assert (= (and d!1702110 (not c!917745)) b!5290351))

(assert (=> d!1702110 m!6325492))

(assert (=> d!1702110 m!6326388))

(assert (=> b!5290350 m!6325632))

(declare-fun m!6327928 () Bool)

(assert (=> b!5290350 m!6327928))

(assert (=> b!5290351 m!6325492))

(assert (=> b!5290351 m!6326392))

(assert (=> b!5290351 m!6325632))

(assert (=> b!5290351 m!6326392))

(declare-fun m!6327930 () Bool)

(assert (=> b!5290351 m!6327930))

(assert (=> b!5290351 m!6325492))

(assert (=> b!5290351 m!6326396))

(assert (=> b!5290351 m!6327930))

(assert (=> b!5290351 m!6326396))

(declare-fun m!6327932 () Bool)

(assert (=> b!5290351 m!6327932))

(assert (=> b!5288066 d!1702110))

(declare-fun bs!1227022 () Bool)

(declare-fun d!1702112 () Bool)

(assert (= bs!1227022 (and d!1702112 d!1701188)))

(declare-fun lambda!267799 () Int)

(assert (=> bs!1227022 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267799 lambda!267640))))

(declare-fun bs!1227023 () Bool)

(assert (= bs!1227023 (and d!1702112 b!5287682)))

(assert (=> bs!1227023 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267799 lambda!267546))))

(declare-fun bs!1227024 () Bool)

(assert (= bs!1227024 (and d!1702112 d!1702074)))

(assert (=> bs!1227024 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267799 lambda!267796))))

(declare-fun bs!1227025 () Bool)

(assert (= bs!1227025 (and d!1702112 d!1701974)))

(assert (=> bs!1227025 (= lambda!267799 lambda!267782)))

(declare-fun bs!1227026 () Bool)

(assert (= bs!1227026 (and d!1702112 d!1702106)))

(assert (=> bs!1227026 (= lambda!267799 lambda!267797)))

(declare-fun bs!1227027 () Bool)

(assert (= bs!1227027 (and d!1702112 d!1701704)))

(assert (=> bs!1227027 (= lambda!267799 lambda!267741)))

(declare-fun bs!1227028 () Bool)

(assert (= bs!1227028 (and d!1702112 d!1701708)))

(assert (=> bs!1227028 (= (= (head!11334 (t!374265 s!2326)) (head!11334 s!2326)) (= lambda!267799 lambda!267742))))

(declare-fun bs!1227029 () Bool)

(assert (= bs!1227029 (and d!1702112 d!1701912)))

(assert (=> bs!1227029 (= lambda!267799 lambda!267771)))

(declare-fun bs!1227030 () Bool)

(assert (= bs!1227030 (and d!1702112 d!1701888)))

(assert (=> bs!1227030 (= lambda!267799 lambda!267768)))

(declare-fun bs!1227031 () Bool)

(assert (= bs!1227031 (and d!1702112 d!1701364)))

(assert (=> bs!1227031 (= lambda!267799 lambda!267678)))

(declare-fun bs!1227032 () Bool)

(assert (= bs!1227032 (and d!1702112 d!1701776)))

(assert (=> bs!1227032 (= lambda!267799 lambda!267750)))

(declare-fun bs!1227033 () Bool)

(assert (= bs!1227033 (and d!1702112 d!1702070)))

(assert (=> bs!1227033 (= lambda!267799 lambda!267795)))

(declare-fun bs!1227034 () Bool)

(assert (= bs!1227034 (and d!1702112 d!1701080)))

(assert (=> bs!1227034 (= (= (head!11334 (t!374265 s!2326)) (h!67386 s!2326)) (= lambda!267799 lambda!267614))))

(declare-fun bs!1227035 () Bool)

(assert (= bs!1227035 (and d!1702112 d!1701496)))

(assert (=> bs!1227035 (= lambda!267799 lambda!267705)))

(assert (=> d!1702112 true))

(assert (=> d!1702112 (= (derivationStepZipper!1164 lt!2161293 (head!11334 (t!374265 s!2326))) (flatMap!648 lt!2161293 lambda!267799))))

(declare-fun bs!1227036 () Bool)

(assert (= bs!1227036 d!1702112))

(declare-fun m!6327934 () Bool)

(assert (=> bs!1227036 m!6327934))

(assert (=> b!5288066 d!1702112))

(assert (=> b!5288066 d!1701366))

(assert (=> b!5288066 d!1701370))

(assert (=> b!5288618 d!1701396))

(declare-fun d!1702114 () Bool)

(assert (=> d!1702114 (= (isEmptyExpr!843 lt!2161466) ((_ is EmptyExpr!14921) lt!2161466))))

(assert (=> b!5288558 d!1702114))

(declare-fun bm!377043 () Bool)

(declare-fun call!377048 () Int)

(declare-fun call!377050 () Int)

(assert (=> bm!377043 (= call!377048 call!377050)))

(declare-fun c!917756 () Bool)

(declare-fun bm!377044 () Bool)

(declare-fun c!917755 () Bool)

(assert (=> bm!377044 (= call!377050 (regexDepthTotal!20 (ite c!917756 (reg!15250 (h!67387 (exprs!4805 (h!67388 zl!343)))) (ite c!917755 (regTwo!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343))))))))))

(declare-fun b!5290368 () Bool)

(declare-fun e!3288931 () Int)

(assert (=> b!5290368 (= e!3288931 1)))

(declare-fun b!5290369 () Bool)

(declare-fun e!3288932 () Int)

(assert (=> b!5290369 (= e!3288932 e!3288931)))

(declare-fun c!917754 () Bool)

(assert (=> b!5290369 (= c!917754 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun d!1702116 () Bool)

(declare-fun lt!2161625 () Int)

(assert (=> d!1702116 (> lt!2161625 0)))

(declare-fun e!3288929 () Int)

(assert (=> d!1702116 (= lt!2161625 e!3288929)))

(declare-fun c!917757 () Bool)

(assert (=> d!1702116 (= c!917757 ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> d!1702116 (= (regexDepthTotal!20 (h!67387 (exprs!4805 (h!67388 zl!343)))) lt!2161625)))

(declare-fun b!5290370 () Bool)

(declare-fun call!377049 () Int)

(assert (=> b!5290370 (= e!3288931 (+ 1 call!377049 call!377048))))

(declare-fun b!5290371 () Bool)

(assert (=> b!5290371 (= c!917755 ((_ is Union!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun e!3288930 () Int)

(assert (=> b!5290371 (= e!3288930 e!3288932)))

(declare-fun b!5290372 () Bool)

(assert (=> b!5290372 (= e!3288930 (+ 1 call!377050))))

(declare-fun b!5290373 () Bool)

(assert (=> b!5290373 (= e!3288929 1)))

(declare-fun bm!377045 () Bool)

(assert (=> bm!377045 (= call!377049 (regexDepthTotal!20 (ite c!917755 (regOne!30355 (h!67387 (exprs!4805 (h!67388 zl!343)))) (regOne!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5290374 () Bool)

(assert (=> b!5290374 (= e!3288932 (+ 1 call!377049 call!377048))))

(declare-fun b!5290375 () Bool)

(assert (=> b!5290375 (= e!3288929 e!3288930)))

(assert (=> b!5290375 (= c!917756 ((_ is Star!14921) (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (= (and d!1702116 c!917757) b!5290373))

(assert (= (and d!1702116 (not c!917757)) b!5290375))

(assert (= (and b!5290375 c!917756) b!5290372))

(assert (= (and b!5290375 (not c!917756)) b!5290371))

(assert (= (and b!5290371 c!917755) b!5290374))

(assert (= (and b!5290371 (not c!917755)) b!5290369))

(assert (= (and b!5290369 c!917754) b!5290370))

(assert (= (and b!5290369 (not c!917754)) b!5290368))

(assert (= (or b!5290374 b!5290370) bm!377043))

(assert (= (or b!5290374 b!5290370) bm!377045))

(assert (= (or b!5290372 bm!377043) bm!377044))

(declare-fun m!6327936 () Bool)

(assert (=> bm!377044 m!6327936))

(declare-fun m!6327938 () Bool)

(assert (=> bm!377045 m!6327938))

(assert (=> b!5288212 d!1702116))

(declare-fun d!1702118 () Bool)

(declare-fun lt!2161626 () Int)

(assert (=> d!1702118 (>= lt!2161626 0)))

(declare-fun e!3288933 () Int)

(assert (=> d!1702118 (= lt!2161626 e!3288933)))

(declare-fun c!917758 () Bool)

(assert (=> d!1702118 (= c!917758 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(assert (=> d!1702118 (= (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))) lt!2161626)))

(declare-fun b!5290376 () Bool)

(assert (=> b!5290376 (= e!3288933 (+ (regexDepthTotal!20 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))))) (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 (h!67388 zl!343))))))))))))

(declare-fun b!5290377 () Bool)

(assert (=> b!5290377 (= e!3288933 1)))

(assert (= (and d!1702118 c!917758) b!5290376))

(assert (= (and d!1702118 (not c!917758)) b!5290377))

(declare-fun m!6327940 () Bool)

(assert (=> b!5290376 m!6327940))

(declare-fun m!6327942 () Bool)

(assert (=> b!5290376 m!6327942))

(assert (=> b!5288212 d!1702118))

(assert (=> d!1701224 d!1701352))

(assert (=> d!1701076 d!1701072))

(declare-fun d!1702120 () Bool)

(assert (=> d!1702120 (= (flatMap!648 lt!2161283 lambda!267546) (dynLambda!24091 lambda!267546 lt!2161279))))

(assert (=> d!1702120 true))

(declare-fun _$13!1870 () Unit!153202)

(assert (=> d!1702120 (= (choose!39489 lt!2161283 lt!2161279 lambda!267546) _$13!1870)))

(declare-fun b_lambda!204035 () Bool)

(assert (=> (not b_lambda!204035) (not d!1702120)))

(declare-fun bs!1227037 () Bool)

(assert (= bs!1227037 d!1702120))

(assert (=> bs!1227037 m!6325298))

(assert (=> bs!1227037 m!6325714))

(assert (=> d!1701076 d!1702120))

(declare-fun d!1702122 () Bool)

(assert (=> d!1702122 (= (nullable!5090 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))) (nullableFct!1460 (regOne!30354 (regTwo!30354 (regOne!30354 r!7292)))))))

(declare-fun bs!1227038 () Bool)

(assert (= bs!1227038 d!1702122))

(declare-fun m!6327944 () Bool)

(assert (=> bs!1227038 m!6327944))

(assert (=> b!5287900 d!1702122))

(declare-fun b!5290378 () Bool)

(declare-fun e!3288935 () Bool)

(assert (=> b!5290378 (= e!3288935 (not (= (head!11334 (_1!35423 (get!20954 lt!2161468))) (c!916969 (regOne!30354 (regOne!30354 r!7292))))))))

(declare-fun b!5290379 () Bool)

(declare-fun e!3288934 () Bool)

(assert (=> b!5290379 (= e!3288934 (nullable!5090 (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun d!1702124 () Bool)

(declare-fun e!3288939 () Bool)

(assert (=> d!1702124 e!3288939))

(declare-fun c!917760 () Bool)

(assert (=> d!1702124 (= c!917760 ((_ is EmptyExpr!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun lt!2161627 () Bool)

(assert (=> d!1702124 (= lt!2161627 e!3288934)))

(declare-fun c!917759 () Bool)

(assert (=> d!1702124 (= c!917759 (isEmpty!32895 (_1!35423 (get!20954 lt!2161468))))))

(assert (=> d!1702124 (validRegex!6657 (regOne!30354 (regOne!30354 r!7292)))))

(assert (=> d!1702124 (= (matchR!7106 (regOne!30354 (regOne!30354 r!7292)) (_1!35423 (get!20954 lt!2161468))) lt!2161627)))

(declare-fun b!5290380 () Bool)

(declare-fun e!3288940 () Bool)

(assert (=> b!5290380 (= e!3288940 (= (head!11334 (_1!35423 (get!20954 lt!2161468))) (c!916969 (regOne!30354 (regOne!30354 r!7292)))))))

(declare-fun b!5290381 () Bool)

(declare-fun e!3288938 () Bool)

(assert (=> b!5290381 (= e!3288939 e!3288938)))

(declare-fun c!917761 () Bool)

(assert (=> b!5290381 (= c!917761 ((_ is EmptyLang!14921) (regOne!30354 (regOne!30354 r!7292))))))

(declare-fun b!5290382 () Bool)

(assert (=> b!5290382 (= e!3288934 (matchR!7106 (derivativeStep!4129 (regOne!30354 (regOne!30354 r!7292)) (head!11334 (_1!35423 (get!20954 lt!2161468)))) (tail!10430 (_1!35423 (get!20954 lt!2161468)))))))

(declare-fun b!5290383 () Bool)

(declare-fun res!2243663 () Bool)

(assert (=> b!5290383 (=> (not res!2243663) (not e!3288940))))

(assert (=> b!5290383 (= res!2243663 (isEmpty!32895 (tail!10430 (_1!35423 (get!20954 lt!2161468)))))))

(declare-fun b!5290384 () Bool)

(declare-fun e!3288936 () Bool)

(declare-fun e!3288937 () Bool)

(assert (=> b!5290384 (= e!3288936 e!3288937)))

(declare-fun res!2243662 () Bool)

(assert (=> b!5290384 (=> (not res!2243662) (not e!3288937))))

(assert (=> b!5290384 (= res!2243662 (not lt!2161627))))

(declare-fun b!5290385 () Bool)

(declare-fun res!2243660 () Bool)

(assert (=> b!5290385 (=> res!2243660 e!3288936)))

(assert (=> b!5290385 (= res!2243660 e!3288940)))

(declare-fun res!2243661 () Bool)

(assert (=> b!5290385 (=> (not res!2243661) (not e!3288940))))

(assert (=> b!5290385 (= res!2243661 lt!2161627)))

(declare-fun b!5290386 () Bool)

(declare-fun call!377051 () Bool)

(assert (=> b!5290386 (= e!3288939 (= lt!2161627 call!377051))))

(declare-fun b!5290387 () Bool)

(assert (=> b!5290387 (= e!3288937 e!3288935)))

(declare-fun res!2243656 () Bool)

(assert (=> b!5290387 (=> res!2243656 e!3288935)))

(assert (=> b!5290387 (= res!2243656 call!377051)))

(declare-fun bm!377046 () Bool)

(assert (=> bm!377046 (= call!377051 (isEmpty!32895 (_1!35423 (get!20954 lt!2161468))))))

(declare-fun b!5290388 () Bool)

(declare-fun res!2243657 () Bool)

(assert (=> b!5290388 (=> res!2243657 e!3288936)))

(assert (=> b!5290388 (= res!2243657 (not ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292)))))))

(assert (=> b!5290388 (= e!3288938 e!3288936)))

(declare-fun b!5290389 () Bool)

(declare-fun res!2243659 () Bool)

(assert (=> b!5290389 (=> res!2243659 e!3288935)))

(assert (=> b!5290389 (= res!2243659 (not (isEmpty!32895 (tail!10430 (_1!35423 (get!20954 lt!2161468))))))))

(declare-fun b!5290390 () Bool)

(declare-fun res!2243658 () Bool)

(assert (=> b!5290390 (=> (not res!2243658) (not e!3288940))))

(assert (=> b!5290390 (= res!2243658 (not call!377051))))

(declare-fun b!5290391 () Bool)

(assert (=> b!5290391 (= e!3288938 (not lt!2161627))))

(assert (= (and d!1702124 c!917759) b!5290379))

(assert (= (and d!1702124 (not c!917759)) b!5290382))

(assert (= (and d!1702124 c!917760) b!5290386))

(assert (= (and d!1702124 (not c!917760)) b!5290381))

(assert (= (and b!5290381 c!917761) b!5290391))

(assert (= (and b!5290381 (not c!917761)) b!5290388))

(assert (= (and b!5290388 (not res!2243657)) b!5290385))

(assert (= (and b!5290385 res!2243661) b!5290390))

(assert (= (and b!5290390 res!2243658) b!5290383))

(assert (= (and b!5290383 res!2243663) b!5290380))

(assert (= (and b!5290385 (not res!2243660)) b!5290384))

(assert (= (and b!5290384 res!2243662) b!5290387))

(assert (= (and b!5290387 (not res!2243656)) b!5290389))

(assert (= (and b!5290389 (not res!2243659)) b!5290378))

(assert (= (or b!5290386 b!5290387 b!5290390) bm!377046))

(declare-fun m!6327946 () Bool)

(assert (=> b!5290380 m!6327946))

(declare-fun m!6327948 () Bool)

(assert (=> b!5290389 m!6327948))

(assert (=> b!5290389 m!6327948))

(declare-fun m!6327950 () Bool)

(assert (=> b!5290389 m!6327950))

(assert (=> b!5290383 m!6327948))

(assert (=> b!5290383 m!6327948))

(assert (=> b!5290383 m!6327950))

(assert (=> b!5290378 m!6327946))

(assert (=> b!5290379 m!6325270))

(declare-fun m!6327952 () Bool)

(assert (=> bm!377046 m!6327952))

(assert (=> b!5290382 m!6327946))

(assert (=> b!5290382 m!6327946))

(declare-fun m!6327954 () Bool)

(assert (=> b!5290382 m!6327954))

(assert (=> b!5290382 m!6327948))

(assert (=> b!5290382 m!6327954))

(assert (=> b!5290382 m!6327948))

(declare-fun m!6327956 () Bool)

(assert (=> b!5290382 m!6327956))

(assert (=> d!1702124 m!6327952))

(assert (=> d!1702124 m!6326068))

(assert (=> b!5288572 d!1702124))

(assert (=> b!5288572 d!1701378))

(declare-fun d!1702126 () Bool)

(assert (=> d!1702126 (= (nullable!5090 (h!67387 (exprs!4805 lt!2161279))) (nullableFct!1460 (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun bs!1227039 () Bool)

(assert (= bs!1227039 d!1702126))

(declare-fun m!6327958 () Bool)

(assert (=> bs!1227039 m!6327958))

(assert (=> b!5288167 d!1702126))

(declare-fun d!1702128 () Bool)

(assert (=> d!1702128 (= (nullable!5090 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))) (nullableFct!1460 (h!67387 (exprs!4805 (Context!8611 (Cons!60939 (h!67387 (exprs!4805 (h!67388 zl!343))) (t!374266 (exprs!4805 (h!67388 zl!343)))))))))))

(declare-fun bs!1227040 () Bool)

(assert (= bs!1227040 d!1702128))

(declare-fun m!6327960 () Bool)

(assert (=> bs!1227040 m!6327960))

(assert (=> b!5288491 d!1702128))

(declare-fun bs!1227041 () Bool)

(declare-fun d!1702130 () Bool)

(assert (= bs!1227041 (and d!1702130 b!5287700)))

(declare-fun lambda!267800 () Int)

(assert (=> bs!1227041 (= lambda!267800 lambda!267549)))

(declare-fun bs!1227042 () Bool)

(assert (= bs!1227042 (and d!1702130 b!5289082)))

(assert (=> bs!1227042 (not (= lambda!267800 lambda!267695))))

(declare-fun bs!1227043 () Bool)

(assert (= bs!1227043 (and d!1702130 d!1701030)))

(assert (=> bs!1227043 (= lambda!267800 lambda!267584)))

(declare-fun bs!1227044 () Bool)

(assert (= bs!1227044 (and d!1702130 d!1702108)))

(assert (=> bs!1227044 (= lambda!267800 lambda!267798)))

(declare-fun bs!1227045 () Bool)

(assert (= bs!1227045 (and d!1702130 d!1701056)))

(assert (=> bs!1227045 (= lambda!267800 lambda!267611)))

(declare-fun bs!1227046 () Bool)

(assert (= bs!1227046 (and d!1702130 d!1701212)))

(assert (=> bs!1227046 (= lambda!267800 lambda!267647)))

(declare-fun bs!1227047 () Bool)

(assert (= bs!1227047 (and d!1702130 d!1701732)))

(assert (=> bs!1227047 (= lambda!267800 lambda!267745)))

(declare-fun bs!1227048 () Bool)

(assert (= bs!1227048 (and d!1702130 d!1701230)))

(assert (=> bs!1227048 (= lambda!267800 lambda!267650)))

(declare-fun bs!1227049 () Bool)

(assert (= bs!1227049 (and d!1702130 d!1701182)))

(assert (=> bs!1227049 (= lambda!267800 lambda!267639)))

(declare-fun bs!1227050 () Bool)

(assert (= bs!1227050 (and d!1702130 b!5289737)))

(assert (=> bs!1227050 (not (= lambda!267800 lambda!267754))))

(declare-fun bs!1227051 () Bool)

(assert (= bs!1227051 (and d!1702130 d!1702064)))

(assert (=> bs!1227051 (= lambda!267800 lambda!267794)))

(declare-fun bs!1227052 () Bool)

(assert (= bs!1227052 (and d!1702130 d!1701120)))

(assert (=> bs!1227052 (= lambda!267800 lambda!267615)))

(declare-fun bs!1227053 () Bool)

(assert (= bs!1227053 (and d!1702130 d!1702004)))

(assert (=> bs!1227053 (= lambda!267800 lambda!267791)))

(declare-fun bs!1227054 () Bool)

(assert (= bs!1227054 (and d!1702130 b!5289084)))

(assert (=> bs!1227054 (not (= lambda!267800 lambda!267696))))

(declare-fun bs!1227055 () Bool)

(assert (= bs!1227055 (and d!1702130 d!1701172)))

(assert (=> bs!1227055 (= lambda!267800 lambda!267636)))

(declare-fun bs!1227056 () Bool)

(assert (= bs!1227056 (and d!1702130 b!5289735)))

(assert (=> bs!1227056 (not (= lambda!267800 lambda!267753))))

(assert (=> d!1702130 (= (inv!80549 (h!67388 (t!374267 zl!343))) (forall!14329 (exprs!4805 (h!67388 (t!374267 zl!343))) lambda!267800))))

(declare-fun bs!1227057 () Bool)

(assert (= bs!1227057 d!1702130))

(declare-fun m!6327962 () Bool)

(assert (=> bs!1227057 m!6327962))

(assert (=> b!5288726 d!1702130))

(assert (=> b!5288481 d!1701056))

(declare-fun bs!1227058 () Bool)

(declare-fun d!1702132 () Bool)

(assert (= bs!1227058 (and d!1702132 b!5287700)))

(declare-fun lambda!267801 () Int)

(assert (=> bs!1227058 (= lambda!267801 lambda!267549)))

(declare-fun bs!1227059 () Bool)

(assert (= bs!1227059 (and d!1702132 b!5289082)))

(assert (=> bs!1227059 (not (= lambda!267801 lambda!267695))))

(declare-fun bs!1227060 () Bool)

(assert (= bs!1227060 (and d!1702132 d!1701030)))

(assert (=> bs!1227060 (= lambda!267801 lambda!267584)))

(declare-fun bs!1227061 () Bool)

(assert (= bs!1227061 (and d!1702132 d!1702108)))

(assert (=> bs!1227061 (= lambda!267801 lambda!267798)))

(declare-fun bs!1227062 () Bool)

(assert (= bs!1227062 (and d!1702132 d!1701056)))

(assert (=> bs!1227062 (= lambda!267801 lambda!267611)))

(declare-fun bs!1227063 () Bool)

(assert (= bs!1227063 (and d!1702132 d!1701212)))

(assert (=> bs!1227063 (= lambda!267801 lambda!267647)))

(declare-fun bs!1227064 () Bool)

(assert (= bs!1227064 (and d!1702132 d!1701732)))

(assert (=> bs!1227064 (= lambda!267801 lambda!267745)))

(declare-fun bs!1227065 () Bool)

(assert (= bs!1227065 (and d!1702132 d!1701230)))

(assert (=> bs!1227065 (= lambda!267801 lambda!267650)))

(declare-fun bs!1227066 () Bool)

(assert (= bs!1227066 (and d!1702132 d!1701182)))

(assert (=> bs!1227066 (= lambda!267801 lambda!267639)))

(declare-fun bs!1227067 () Bool)

(assert (= bs!1227067 (and d!1702132 d!1702064)))

(assert (=> bs!1227067 (= lambda!267801 lambda!267794)))

(declare-fun bs!1227068 () Bool)

(assert (= bs!1227068 (and d!1702132 d!1701120)))

(assert (=> bs!1227068 (= lambda!267801 lambda!267615)))

(declare-fun bs!1227069 () Bool)

(assert (= bs!1227069 (and d!1702132 d!1702004)))

(assert (=> bs!1227069 (= lambda!267801 lambda!267791)))

(declare-fun bs!1227070 () Bool)

(assert (= bs!1227070 (and d!1702132 b!5289084)))

(assert (=> bs!1227070 (not (= lambda!267801 lambda!267696))))

(declare-fun bs!1227071 () Bool)

(assert (= bs!1227071 (and d!1702132 d!1701172)))

(assert (=> bs!1227071 (= lambda!267801 lambda!267636)))

(declare-fun bs!1227072 () Bool)

(assert (= bs!1227072 (and d!1702132 b!5289735)))

(assert (=> bs!1227072 (not (= lambda!267801 lambda!267753))))

(declare-fun bs!1227073 () Bool)

(assert (= bs!1227073 (and d!1702132 b!5289737)))

(assert (=> bs!1227073 (not (= lambda!267801 lambda!267754))))

(declare-fun bs!1227074 () Bool)

(assert (= bs!1227074 (and d!1702132 d!1702130)))

(assert (=> bs!1227074 (= lambda!267801 lambda!267800)))

(declare-fun lt!2161628 () List!61063)

(assert (=> d!1702132 (forall!14329 lt!2161628 lambda!267801)))

(declare-fun e!3288941 () List!61063)

(assert (=> d!1702132 (= lt!2161628 e!3288941)))

(declare-fun c!917762 () Bool)

(assert (=> d!1702132 (= c!917762 ((_ is Cons!60940) (t!374267 zl!343)))))

(assert (=> d!1702132 (= (unfocusZipperList!363 (t!374267 zl!343)) lt!2161628)))

(declare-fun b!5290392 () Bool)

(assert (=> b!5290392 (= e!3288941 (Cons!60939 (generalisedConcat!590 (exprs!4805 (h!67388 (t!374267 zl!343)))) (unfocusZipperList!363 (t!374267 (t!374267 zl!343)))))))

(declare-fun b!5290393 () Bool)

(assert (=> b!5290393 (= e!3288941 Nil!60939)))

(assert (= (and d!1702132 c!917762) b!5290392))

(assert (= (and d!1702132 (not c!917762)) b!5290393))

(declare-fun m!6327964 () Bool)

(assert (=> d!1702132 m!6327964))

(declare-fun m!6327966 () Bool)

(assert (=> b!5290392 m!6327966))

(declare-fun m!6327968 () Bool)

(assert (=> b!5290392 m!6327968))

(assert (=> b!5288481 d!1702132))

(assert (=> b!5288651 d!1701572))

(assert (=> b!5288651 d!1701574))

(declare-fun bs!1227075 () Bool)

(declare-fun d!1702134 () Bool)

(assert (= bs!1227075 (and d!1702134 d!1701532)))

(declare-fun lambda!267802 () Int)

(assert (=> bs!1227075 (= lambda!267802 lambda!267712)))

(declare-fun bs!1227076 () Bool)

(assert (= bs!1227076 (and d!1702134 d!1701482)))

(assert (=> bs!1227076 (= lambda!267802 lambda!267703)))

(declare-fun bs!1227077 () Bool)

(assert (= bs!1227077 (and d!1702134 b!5288015)))

(assert (=> bs!1227077 (not (= lambda!267802 lambda!267598))))

(declare-fun bs!1227078 () Bool)

(assert (= bs!1227078 (and d!1702134 d!1701540)))

(assert (=> bs!1227078 (= lambda!267802 lambda!267715)))

(declare-fun bs!1227079 () Bool)

(assert (= bs!1227079 (and d!1702134 d!1701794)))

(assert (=> bs!1227079 (= lambda!267802 lambda!267751)))

(declare-fun bs!1227080 () Bool)

(assert (= bs!1227080 (and d!1702134 b!5289758)))

(assert (=> bs!1227080 (not (= lambda!267802 lambda!267756))))

(declare-fun bs!1227081 () Bool)

(assert (= bs!1227081 (and d!1702134 b!5288013)))

(assert (=> bs!1227081 (not (= lambda!267802 lambda!267595))))

(declare-fun bs!1227082 () Bool)

(assert (= bs!1227082 (and d!1702134 b!5289107)))

(assert (=> bs!1227082 (not (= lambda!267802 lambda!267699))))

(declare-fun bs!1227083 () Bool)

(assert (= bs!1227083 (and d!1702134 b!5288022)))

(assert (=> bs!1227083 (not (= lambda!267802 lambda!267600))))

(declare-fun bs!1227084 () Bool)

(assert (= bs!1227084 (and d!1702134 d!1701694)))

(assert (=> bs!1227084 (= lambda!267802 lambda!267740)))

(declare-fun bs!1227085 () Bool)

(assert (= bs!1227085 (and d!1702134 d!1701744)))

(assert (=> bs!1227085 (= lambda!267802 lambda!267746)))

(declare-fun bs!1227086 () Bool)

(assert (= bs!1227086 (and d!1702134 d!1701476)))

(assert (=> bs!1227086 (= lambda!267802 lambda!267702)))

(declare-fun bs!1227087 () Bool)

(assert (= bs!1227087 (and d!1702134 b!5289109)))

(assert (=> bs!1227087 (not (= lambda!267802 lambda!267700))))

(declare-fun bs!1227088 () Bool)

(assert (= bs!1227088 (and d!1702134 d!1701538)))

(assert (=> bs!1227088 (= lambda!267802 lambda!267714)))

(declare-fun bs!1227089 () Bool)

(assert (= bs!1227089 (and d!1702134 d!1701348)))

(assert (=> bs!1227089 (= lambda!267802 lambda!267677)))

(declare-fun bs!1227090 () Bool)

(assert (= bs!1227090 (and d!1702134 d!1701422)))

(assert (=> bs!1227090 (not (= lambda!267802 lambda!267688))))

(declare-fun bs!1227091 () Bool)

(assert (= bs!1227091 (and d!1702134 d!1701526)))

(assert (=> bs!1227091 (= lambda!267802 lambda!267708)))

(declare-fun bs!1227092 () Bool)

(assert (= bs!1227092 (and d!1702134 b!5289760)))

(assert (=> bs!1227092 (not (= lambda!267802 lambda!267757))))

(declare-fun bs!1227093 () Bool)

(assert (= bs!1227093 (and d!1702134 d!1701834)))

(assert (=> bs!1227093 (not (= lambda!267802 lambda!267759))))

(declare-fun bs!1227094 () Bool)

(assert (= bs!1227094 (and d!1702134 d!1701802)))

(assert (=> bs!1227094 (= lambda!267802 lambda!267752)))

(declare-fun bs!1227095 () Bool)

(assert (= bs!1227095 (and d!1702134 b!5288024)))

(assert (=> bs!1227095 (not (= lambda!267802 lambda!267601))))

(assert (=> d!1702134 (= (nullableZipper!1308 lt!2161296) (exists!2003 lt!2161296 lambda!267802))))

(declare-fun bs!1227096 () Bool)

(assert (= bs!1227096 d!1702134))

(declare-fun m!6327970 () Bool)

(assert (=> bs!1227096 m!6327970))

(assert (=> b!5287942 d!1702134))

(declare-fun d!1702136 () Bool)

(declare-fun res!2243664 () Bool)

(declare-fun e!3288942 () Bool)

(assert (=> d!1702136 (=> res!2243664 e!3288942)))

(assert (=> d!1702136 (= res!2243664 ((_ is Nil!60939) (exprs!4805 setElem!33929)))))

(assert (=> d!1702136 (= (forall!14329 (exprs!4805 setElem!33929) lambda!267615) e!3288942)))

(declare-fun b!5290394 () Bool)

(declare-fun e!3288943 () Bool)

(assert (=> b!5290394 (= e!3288942 e!3288943)))

(declare-fun res!2243665 () Bool)

(assert (=> b!5290394 (=> (not res!2243665) (not e!3288943))))

(assert (=> b!5290394 (= res!2243665 (dynLambda!24093 lambda!267615 (h!67387 (exprs!4805 setElem!33929))))))

(declare-fun b!5290395 () Bool)

(assert (=> b!5290395 (= e!3288943 (forall!14329 (t!374266 (exprs!4805 setElem!33929)) lambda!267615))))

(assert (= (and d!1702136 (not res!2243664)) b!5290394))

(assert (= (and b!5290394 res!2243665) b!5290395))

(declare-fun b_lambda!204037 () Bool)

(assert (=> (not b_lambda!204037) (not b!5290394)))

(declare-fun m!6327972 () Bool)

(assert (=> b!5290394 m!6327972))

(declare-fun m!6327974 () Bool)

(assert (=> b!5290395 m!6327974))

(assert (=> d!1701120 d!1702136))

(declare-fun b!5290399 () Bool)

(declare-fun e!3288944 () Bool)

(declare-fun lt!2161629 () List!61062)

(assert (=> b!5290399 (= e!3288944 (or (not (= (_2!35423 (get!20954 lt!2161468)) Nil!60938)) (= lt!2161629 (_1!35423 (get!20954 lt!2161468)))))))

(declare-fun d!1702138 () Bool)

(assert (=> d!1702138 e!3288944))

(declare-fun res!2243666 () Bool)

(assert (=> d!1702138 (=> (not res!2243666) (not e!3288944))))

(assert (=> d!1702138 (= res!2243666 (= (content!10851 lt!2161629) ((_ map or) (content!10851 (_1!35423 (get!20954 lt!2161468))) (content!10851 (_2!35423 (get!20954 lt!2161468))))))))

(declare-fun e!3288945 () List!61062)

(assert (=> d!1702138 (= lt!2161629 e!3288945)))

(declare-fun c!917763 () Bool)

(assert (=> d!1702138 (= c!917763 ((_ is Nil!60938) (_1!35423 (get!20954 lt!2161468))))))

(assert (=> d!1702138 (= (++!13288 (_1!35423 (get!20954 lt!2161468)) (_2!35423 (get!20954 lt!2161468))) lt!2161629)))

(declare-fun b!5290396 () Bool)

(assert (=> b!5290396 (= e!3288945 (_2!35423 (get!20954 lt!2161468)))))

(declare-fun b!5290398 () Bool)

(declare-fun res!2243667 () Bool)

(assert (=> b!5290398 (=> (not res!2243667) (not e!3288944))))

(assert (=> b!5290398 (= res!2243667 (= (size!39757 lt!2161629) (+ (size!39757 (_1!35423 (get!20954 lt!2161468))) (size!39757 (_2!35423 (get!20954 lt!2161468))))))))

(declare-fun b!5290397 () Bool)

(assert (=> b!5290397 (= e!3288945 (Cons!60938 (h!67386 (_1!35423 (get!20954 lt!2161468))) (++!13288 (t!374265 (_1!35423 (get!20954 lt!2161468))) (_2!35423 (get!20954 lt!2161468)))))))

(assert (= (and d!1702138 c!917763) b!5290396))

(assert (= (and d!1702138 (not c!917763)) b!5290397))

(assert (= (and d!1702138 res!2243666) b!5290398))

(assert (= (and b!5290398 res!2243667) b!5290399))

(declare-fun m!6327976 () Bool)

(assert (=> d!1702138 m!6327976))

(declare-fun m!6327978 () Bool)

(assert (=> d!1702138 m!6327978))

(declare-fun m!6327980 () Bool)

(assert (=> d!1702138 m!6327980))

(declare-fun m!6327982 () Bool)

(assert (=> b!5290398 m!6327982))

(declare-fun m!6327984 () Bool)

(assert (=> b!5290398 m!6327984))

(declare-fun m!6327986 () Bool)

(assert (=> b!5290398 m!6327986))

(declare-fun m!6327988 () Bool)

(assert (=> b!5290397 m!6327988))

(assert (=> b!5288564 d!1702138))

(assert (=> b!5288564 d!1701378))

(declare-fun d!1702140 () Bool)

(assert (=> d!1702140 (= (isUnion!282 lt!2161455) ((_ is Union!14921) lt!2161455))))

(assert (=> b!5288474 d!1702140))

(assert (=> bm!376717 d!1701352))

(assert (=> d!1701210 d!1701226))

(assert (=> d!1701210 d!1701222))

(declare-fun d!1702142 () Bool)

(assert (=> d!1702142 (= (matchR!7106 lt!2161294 s!2326) (matchRSpec!2024 lt!2161294 s!2326))))

(assert (=> d!1702142 true))

(declare-fun _$88!3595 () Unit!153202)

(assert (=> d!1702142 (= (choose!39494 lt!2161294 s!2326) _$88!3595)))

(declare-fun bs!1227097 () Bool)

(assert (= bs!1227097 d!1702142))

(assert (=> bs!1227097 m!6325184))

(assert (=> bs!1227097 m!6325210))

(assert (=> d!1701210 d!1702142))

(assert (=> d!1701210 d!1701600))

(assert (=> d!1701242 d!1701240))

(assert (=> d!1701242 d!1701208))

(declare-fun d!1702144 () Bool)

(assert (=> d!1702144 (= (matchR!7106 lt!2161300 s!2326) (matchRSpec!2024 lt!2161300 s!2326))))

(assert (=> d!1702144 true))

(declare-fun _$88!3596 () Unit!153202)

(assert (=> d!1702144 (= (choose!39494 lt!2161300 s!2326) _$88!3596)))

(declare-fun bs!1227098 () Bool)

(assert (= bs!1227098 d!1702144))

(assert (=> bs!1227098 m!6325206))

(assert (=> bs!1227098 m!6325212))

(assert (=> d!1701242 d!1702144))

(assert (=> d!1701242 d!1701724))

(declare-fun bs!1227099 () Bool)

(declare-fun d!1702146 () Bool)

(assert (= bs!1227099 (and d!1702146 b!5287700)))

(declare-fun lambda!267803 () Int)

(assert (=> bs!1227099 (= lambda!267803 lambda!267549)))

(declare-fun bs!1227100 () Bool)

(assert (= bs!1227100 (and d!1702146 b!5289082)))

(assert (=> bs!1227100 (not (= lambda!267803 lambda!267695))))

(declare-fun bs!1227101 () Bool)

(assert (= bs!1227101 (and d!1702146 d!1701030)))

(assert (=> bs!1227101 (= lambda!267803 lambda!267584)))

(declare-fun bs!1227102 () Bool)

(assert (= bs!1227102 (and d!1702146 d!1702108)))

(assert (=> bs!1227102 (= lambda!267803 lambda!267798)))

(declare-fun bs!1227103 () Bool)

(assert (= bs!1227103 (and d!1702146 d!1701056)))

(assert (=> bs!1227103 (= lambda!267803 lambda!267611)))

(declare-fun bs!1227104 () Bool)

(assert (= bs!1227104 (and d!1702146 d!1701212)))

(assert (=> bs!1227104 (= lambda!267803 lambda!267647)))

(declare-fun bs!1227105 () Bool)

(assert (= bs!1227105 (and d!1702146 d!1701732)))

(assert (=> bs!1227105 (= lambda!267803 lambda!267745)))

(declare-fun bs!1227106 () Bool)

(assert (= bs!1227106 (and d!1702146 d!1701230)))

(assert (=> bs!1227106 (= lambda!267803 lambda!267650)))

(declare-fun bs!1227107 () Bool)

(assert (= bs!1227107 (and d!1702146 d!1701182)))

(assert (=> bs!1227107 (= lambda!267803 lambda!267639)))

(declare-fun bs!1227108 () Bool)

(assert (= bs!1227108 (and d!1702146 d!1702064)))

(assert (=> bs!1227108 (= lambda!267803 lambda!267794)))

(declare-fun bs!1227109 () Bool)

(assert (= bs!1227109 (and d!1702146 d!1701120)))

(assert (=> bs!1227109 (= lambda!267803 lambda!267615)))

(declare-fun bs!1227110 () Bool)

(assert (= bs!1227110 (and d!1702146 d!1702004)))

(assert (=> bs!1227110 (= lambda!267803 lambda!267791)))

(declare-fun bs!1227111 () Bool)

(assert (= bs!1227111 (and d!1702146 d!1702132)))

(assert (=> bs!1227111 (= lambda!267803 lambda!267801)))

(declare-fun bs!1227112 () Bool)

(assert (= bs!1227112 (and d!1702146 b!5289084)))

(assert (=> bs!1227112 (not (= lambda!267803 lambda!267696))))

(declare-fun bs!1227113 () Bool)

(assert (= bs!1227113 (and d!1702146 d!1701172)))

(assert (=> bs!1227113 (= lambda!267803 lambda!267636)))

(declare-fun bs!1227114 () Bool)

(assert (= bs!1227114 (and d!1702146 b!5289735)))

(assert (=> bs!1227114 (not (= lambda!267803 lambda!267753))))

(declare-fun bs!1227115 () Bool)

(assert (= bs!1227115 (and d!1702146 b!5289737)))

(assert (=> bs!1227115 (not (= lambda!267803 lambda!267754))))

(declare-fun bs!1227116 () Bool)

(assert (= bs!1227116 (and d!1702146 d!1702130)))

(assert (=> bs!1227116 (= lambda!267803 lambda!267800)))

(declare-fun e!3288948 () Bool)

(assert (=> d!1702146 e!3288948))

(declare-fun res!2243669 () Bool)

(assert (=> d!1702146 (=> (not res!2243669) (not e!3288948))))

(declare-fun lt!2161630 () Regex!14921)

(assert (=> d!1702146 (= res!2243669 (validRegex!6657 lt!2161630))))

(declare-fun e!3288949 () Regex!14921)

(assert (=> d!1702146 (= lt!2161630 e!3288949)))

(declare-fun c!917765 () Bool)

(declare-fun e!3288946 () Bool)

(assert (=> d!1702146 (= c!917765 e!3288946)))

(declare-fun res!2243668 () Bool)

(assert (=> d!1702146 (=> (not res!2243668) (not e!3288946))))

(assert (=> d!1702146 (= res!2243668 ((_ is Cons!60939) (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> d!1702146 (forall!14329 (t!374266 (exprs!4805 (h!67388 zl!343))) lambda!267803)))

(assert (=> d!1702146 (= (generalisedConcat!590 (t!374266 (exprs!4805 (h!67388 zl!343)))) lt!2161630)))

(declare-fun b!5290400 () Bool)

(declare-fun e!3288950 () Regex!14921)

(assert (=> b!5290400 (= e!3288950 (Concat!23766 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343)))) (generalisedConcat!590 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun b!5290401 () Bool)

(assert (=> b!5290401 (= e!3288949 e!3288950)))

(declare-fun c!917764 () Bool)

(assert (=> b!5290401 (= c!917764 ((_ is Cons!60939) (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5290402 () Bool)

(declare-fun e!3288951 () Bool)

(declare-fun e!3288947 () Bool)

(assert (=> b!5290402 (= e!3288951 e!3288947)))

(declare-fun c!917766 () Bool)

(assert (=> b!5290402 (= c!917766 (isEmpty!32892 (tail!10432 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5290403 () Bool)

(assert (=> b!5290403 (= e!3288949 (h!67387 (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5290404 () Bool)

(assert (=> b!5290404 (= e!3288951 (isEmptyExpr!843 lt!2161630))))

(declare-fun b!5290405 () Bool)

(assert (=> b!5290405 (= e!3288947 (isConcat!366 lt!2161630))))

(declare-fun b!5290406 () Bool)

(assert (=> b!5290406 (= e!3288948 e!3288951)))

(declare-fun c!917767 () Bool)

(assert (=> b!5290406 (= c!917767 (isEmpty!32892 (t!374266 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun b!5290407 () Bool)

(assert (=> b!5290407 (= e!3288946 (isEmpty!32892 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(declare-fun b!5290408 () Bool)

(assert (=> b!5290408 (= e!3288950 EmptyExpr!14921)))

(declare-fun b!5290409 () Bool)

(assert (=> b!5290409 (= e!3288947 (= lt!2161630 (head!11335 (t!374266 (exprs!4805 (h!67388 zl!343))))))))

(assert (= (and d!1702146 res!2243668) b!5290407))

(assert (= (and d!1702146 c!917765) b!5290403))

(assert (= (and d!1702146 (not c!917765)) b!5290401))

(assert (= (and b!5290401 c!917764) b!5290400))

(assert (= (and b!5290401 (not c!917764)) b!5290408))

(assert (= (and d!1702146 res!2243669) b!5290406))

(assert (= (and b!5290406 c!917767) b!5290404))

(assert (= (and b!5290406 (not c!917767)) b!5290402))

(assert (= (and b!5290402 c!917766) b!5290409))

(assert (= (and b!5290402 (not c!917766)) b!5290405))

(declare-fun m!6327990 () Bool)

(assert (=> b!5290405 m!6327990))

(declare-fun m!6327992 () Bool)

(assert (=> b!5290404 m!6327992))

(declare-fun m!6327994 () Bool)

(assert (=> b!5290407 m!6327994))

(declare-fun m!6327996 () Bool)

(assert (=> d!1702146 m!6327996))

(declare-fun m!6327998 () Bool)

(assert (=> d!1702146 m!6327998))

(declare-fun m!6328000 () Bool)

(assert (=> b!5290409 m!6328000))

(declare-fun m!6328002 () Bool)

(assert (=> b!5290402 m!6328002))

(assert (=> b!5290402 m!6328002))

(declare-fun m!6328004 () Bool)

(assert (=> b!5290402 m!6328004))

(assert (=> b!5290406 m!6325172))

(declare-fun m!6328006 () Bool)

(assert (=> b!5290400 m!6328006))

(assert (=> b!5288100 d!1702146))

(declare-fun d!1702148 () Bool)

(assert (=> d!1702148 (= ($colon$colon!1358 (exprs!4805 lt!2161302) (ite (or c!917228 c!917227) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67387 (exprs!4805 (h!67388 zl!343))))) (Cons!60939 (ite (or c!917228 c!917227) (regTwo!30354 (h!67387 (exprs!4805 (h!67388 zl!343)))) (h!67387 (exprs!4805 (h!67388 zl!343)))) (exprs!4805 lt!2161302)))))

(assert (=> bm!376699 d!1702148))

(declare-fun bm!377047 () Bool)

(declare-fun call!377052 () Int)

(declare-fun call!377054 () Int)

(assert (=> bm!377047 (= call!377052 call!377054)))

(declare-fun c!917770 () Bool)

(declare-fun bm!377048 () Bool)

(declare-fun c!917769 () Bool)

(assert (=> bm!377048 (= call!377054 (regexDepthTotal!20 (ite c!917770 (reg!15250 (h!67387 (exprs!4805 lt!2161279))) (ite c!917769 (regTwo!30355 (h!67387 (exprs!4805 lt!2161279))) (regTwo!30354 (h!67387 (exprs!4805 lt!2161279)))))))))

(declare-fun b!5290410 () Bool)

(declare-fun e!3288954 () Int)

(assert (=> b!5290410 (= e!3288954 1)))

(declare-fun b!5290411 () Bool)

(declare-fun e!3288955 () Int)

(assert (=> b!5290411 (= e!3288955 e!3288954)))

(declare-fun c!917768 () Bool)

(assert (=> b!5290411 (= c!917768 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun d!1702150 () Bool)

(declare-fun lt!2161631 () Int)

(assert (=> d!1702150 (> lt!2161631 0)))

(declare-fun e!3288952 () Int)

(assert (=> d!1702150 (= lt!2161631 e!3288952)))

(declare-fun c!917771 () Bool)

(assert (=> d!1702150 (= c!917771 ((_ is ElementMatch!14921) (h!67387 (exprs!4805 lt!2161279))))))

(assert (=> d!1702150 (= (regexDepthTotal!20 (h!67387 (exprs!4805 lt!2161279))) lt!2161631)))

(declare-fun b!5290412 () Bool)

(declare-fun call!377053 () Int)

(assert (=> b!5290412 (= e!3288954 (+ 1 call!377053 call!377052))))

(declare-fun b!5290413 () Bool)

(assert (=> b!5290413 (= c!917769 ((_ is Union!14921) (h!67387 (exprs!4805 lt!2161279))))))

(declare-fun e!3288953 () Int)

(assert (=> b!5290413 (= e!3288953 e!3288955)))

(declare-fun b!5290414 () Bool)

(assert (=> b!5290414 (= e!3288953 (+ 1 call!377054))))

(declare-fun b!5290415 () Bool)

(assert (=> b!5290415 (= e!3288952 1)))

(declare-fun bm!377049 () Bool)

(assert (=> bm!377049 (= call!377053 (regexDepthTotal!20 (ite c!917769 (regOne!30355 (h!67387 (exprs!4805 lt!2161279))) (regOne!30354 (h!67387 (exprs!4805 lt!2161279))))))))

(declare-fun b!5290416 () Bool)

(assert (=> b!5290416 (= e!3288955 (+ 1 call!377053 call!377052))))

(declare-fun b!5290417 () Bool)

(assert (=> b!5290417 (= e!3288952 e!3288953)))

(assert (=> b!5290417 (= c!917770 ((_ is Star!14921) (h!67387 (exprs!4805 lt!2161279))))))

(assert (= (and d!1702150 c!917771) b!5290415))

(assert (= (and d!1702150 (not c!917771)) b!5290417))

(assert (= (and b!5290417 c!917770) b!5290414))

(assert (= (and b!5290417 (not c!917770)) b!5290413))

(assert (= (and b!5290413 c!917769) b!5290416))

(assert (= (and b!5290413 (not c!917769)) b!5290411))

(assert (= (and b!5290411 c!917768) b!5290412))

(assert (= (and b!5290411 (not c!917768)) b!5290410))

(assert (= (or b!5290416 b!5290412) bm!377047))

(assert (= (or b!5290416 b!5290412) bm!377049))

(assert (= (or b!5290414 bm!377047) bm!377048))

(declare-fun m!6328008 () Bool)

(assert (=> bm!377048 m!6328008))

(declare-fun m!6328010 () Bool)

(assert (=> bm!377049 m!6328010))

(assert (=> b!5288210 d!1702150))

(declare-fun d!1702152 () Bool)

(declare-fun lt!2161632 () Int)

(assert (=> d!1702152 (>= lt!2161632 0)))

(declare-fun e!3288956 () Int)

(assert (=> d!1702152 (= lt!2161632 e!3288956)))

(declare-fun c!917772 () Bool)

(assert (=> d!1702152 (= c!917772 ((_ is Cons!60939) (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279))))))))

(assert (=> d!1702152 (= (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))) lt!2161632)))

(declare-fun b!5290418 () Bool)

(assert (=> b!5290418 (= e!3288956 (+ (regexDepthTotal!20 (h!67387 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))))) (contextDepthTotal!62 (Context!8611 (t!374266 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161279)))))))))))

(declare-fun b!5290419 () Bool)

(assert (=> b!5290419 (= e!3288956 1)))

(assert (= (and d!1702152 c!917772) b!5290418))

(assert (= (and d!1702152 (not c!917772)) b!5290419))

(declare-fun m!6328012 () Bool)

(assert (=> b!5290418 m!6328012))

(declare-fun m!6328014 () Bool)

(assert (=> b!5290418 m!6328014))

(assert (=> b!5288210 d!1702152))

(declare-fun bs!1227117 () Bool)

(declare-fun b!5290425 () Bool)

(assert (= bs!1227117 (and b!5290425 b!5288579)))

(declare-fun lambda!267804 () Int)

(assert (=> bs!1227117 (not (= lambda!267804 lambda!267649))))

(declare-fun bs!1227118 () Bool)

(assert (= bs!1227118 (and b!5290425 d!1701146)))

(assert (=> bs!1227118 (not (= lambda!267804 lambda!267621))))

(declare-fun bs!1227119 () Bool)

(assert (= bs!1227119 (and b!5290425 b!5288945)))

(assert (=> bs!1227119 (not (= lambda!267804 lambda!267680))))

(declare-fun bs!1227120 () Bool)

(assert (= bs!1227120 (and b!5290425 d!1701920)))

(assert (=> bs!1227120 (not (= lambda!267804 lambda!267777))))

(declare-fun bs!1227121 () Bool)

(assert (= bs!1227121 (and b!5290425 b!5287706)))

(assert (=> bs!1227121 (not (= lambda!267804 lambda!267544))))

(declare-fun bs!1227122 () Bool)

(assert (= bs!1227122 (and b!5290425 d!1701238)))

(assert (=> bs!1227122 (not (= lambda!267804 lambda!267653))))

(declare-fun bs!1227123 () Bool)

(assert (= bs!1227123 (and b!5290425 b!5287700)))

(assert (=> bs!1227123 (not (= lambda!267804 lambda!267548))))

(declare-fun bs!1227124 () Bool)

(assert (= bs!1227124 (and b!5290425 b!5289483)))

(assert (=> bs!1227124 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 (regOne!30355 r!7292))) (= (regOne!30355 lt!2161294) (regOne!30355 r!7292))) (= lambda!267804 lambda!267736))))

(declare-fun bs!1227125 () Bool)

(assert (= bs!1227125 (and b!5290425 b!5290092)))

(assert (=> bs!1227125 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 (regTwo!30355 lt!2161294))) (= (regOne!30355 lt!2161294) (regTwo!30355 lt!2161294))) (= lambda!267804 lambda!267787))))

(declare-fun bs!1227126 () Bool)

(assert (= bs!1227126 (and b!5290425 b!5288666)))

(assert (=> bs!1227126 (not (= lambda!267804 lambda!267655))))

(assert (=> bs!1227123 (not (= lambda!267804 lambda!267547))))

(assert (=> bs!1227120 (not (= lambda!267804 lambda!267778))))

(declare-fun bs!1227127 () Bool)

(assert (= bs!1227127 (and b!5290425 b!5288548)))

(assert (=> bs!1227127 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 lt!2161300)) (= (regOne!30355 lt!2161294) lt!2161300)) (= lambda!267804 lambda!267645))))

(declare-fun bs!1227128 () Bool)

(assert (= bs!1227128 (and b!5290425 d!1701166)))

(assert (=> bs!1227128 (not (= lambda!267804 lambda!267629))))

(declare-fun bs!1227129 () Bool)

(assert (= bs!1227129 (and b!5290425 b!5289303)))

(assert (=> bs!1227129 (not (= lambda!267804 lambda!267720))))

(assert (=> bs!1227121 (not (= lambda!267804 lambda!267545))))

(declare-fun bs!1227130 () Bool)

(assert (= bs!1227130 (and b!5290425 d!1701882)))

(assert (=> bs!1227130 (not (= lambda!267804 lambda!267764))))

(assert (=> bs!1227122 (not (= lambda!267804 lambda!267652))))

(declare-fun bs!1227131 () Bool)

(assert (= bs!1227131 (and b!5290425 d!1701234)))

(assert (=> bs!1227131 (not (= lambda!267804 lambda!267651))))

(declare-fun bs!1227132 () Bool)

(assert (= bs!1227132 (and b!5290425 b!5289304)))

(assert (=> bs!1227132 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 (regTwo!30355 lt!2161300))) (= (regOne!30355 lt!2161294) (regTwo!30355 lt!2161300))) (= lambda!267804 lambda!267718))))

(declare-fun bs!1227133 () Bool)

(assert (= bs!1227133 (and b!5290425 b!5288667)))

(assert (=> bs!1227133 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 r!7292)) (= (regOne!30355 lt!2161294) r!7292)) (= lambda!267804 lambda!267654))))

(declare-fun bs!1227134 () Bool)

(assert (= bs!1227134 (and b!5290425 b!5290043)))

(assert (=> bs!1227134 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 (regOne!30355 lt!2161300))) (= (regOne!30355 lt!2161294) (regOne!30355 lt!2161300))) (= lambda!267804 lambda!267783))))

(declare-fun bs!1227135 () Bool)

(assert (= bs!1227135 (and b!5290425 b!5290091)))

(assert (=> bs!1227135 (not (= lambda!267804 lambda!267788))))

(declare-fun bs!1227136 () Bool)

(assert (= bs!1227136 (and b!5290425 b!5288580)))

(assert (=> bs!1227136 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 lt!2161294)) (= (regOne!30355 lt!2161294) lt!2161294)) (= lambda!267804 lambda!267648))))

(declare-fun bs!1227137 () Bool)

(assert (= bs!1227137 (and b!5290425 b!5288547)))

(assert (=> bs!1227137 (not (= lambda!267804 lambda!267646))))

(assert (=> bs!1227128 (not (= lambda!267804 lambda!267633))))

(declare-fun bs!1227138 () Bool)

(assert (= bs!1227138 (and b!5290425 b!5290042)))

(assert (=> bs!1227138 (not (= lambda!267804 lambda!267784))))

(declare-fun bs!1227139 () Bool)

(assert (= bs!1227139 (and b!5290425 d!1702030)))

(assert (=> bs!1227139 (not (= lambda!267804 lambda!267793))))

(declare-fun bs!1227140 () Bool)

(assert (= bs!1227140 (and b!5290425 d!1701612)))

(assert (=> bs!1227140 (not (= lambda!267804 lambda!267728))))

(declare-fun bs!1227141 () Bool)

(assert (= bs!1227141 (and b!5290425 b!5289482)))

(assert (=> bs!1227141 (not (= lambda!267804 lambda!267738))))

(assert (=> bs!1227139 (not (= lambda!267804 lambda!267792))))

(declare-fun bs!1227142 () Bool)

(assert (= bs!1227142 (and b!5290425 b!5288946)))

(assert (=> bs!1227142 (= (and (= (reg!15250 (regOne!30355 lt!2161294)) (reg!15250 (regTwo!30355 r!7292))) (= (regOne!30355 lt!2161294) (regTwo!30355 r!7292))) (= lambda!267804 lambda!267679))))

(assert (=> b!5290425 true))

(assert (=> b!5290425 true))

(declare-fun bs!1227143 () Bool)

(declare-fun b!5290424 () Bool)

(assert (= bs!1227143 (and b!5290424 b!5288579)))

(declare-fun lambda!267805 () Int)

(assert (=> bs!1227143 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 lt!2161294)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 lt!2161294))) (= lambda!267805 lambda!267649))))

(declare-fun bs!1227144 () Bool)

(assert (= bs!1227144 (and b!5290424 d!1701146)))

(assert (=> bs!1227144 (not (= lambda!267805 lambda!267621))))

(declare-fun bs!1227145 () Bool)

(assert (= bs!1227145 (and b!5290424 b!5288945)))

(assert (=> bs!1227145 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regTwo!30355 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 (regTwo!30355 r!7292)))) (= lambda!267805 lambda!267680))))

(declare-fun bs!1227146 () Bool)

(assert (= bs!1227146 (and b!5290424 d!1701920)))

(assert (=> bs!1227146 (not (= lambda!267805 lambda!267777))))

(declare-fun bs!1227147 () Bool)

(assert (= bs!1227147 (and b!5290424 b!5287706)))

(assert (=> bs!1227147 (not (= lambda!267805 lambda!267544))))

(declare-fun bs!1227148 () Bool)

(assert (= bs!1227148 (and b!5290424 d!1701238)))

(assert (=> bs!1227148 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161294)) lt!2161300)) (= lambda!267805 lambda!267653))))

(declare-fun bs!1227149 () Bool)

(assert (= bs!1227149 (and b!5290424 b!5287700)))

(assert (=> bs!1227149 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161294)) lt!2161300)) (= lambda!267805 lambda!267548))))

(declare-fun bs!1227150 () Bool)

(assert (= bs!1227150 (and b!5290424 b!5289483)))

(assert (=> bs!1227150 (not (= lambda!267805 lambda!267736))))

(declare-fun bs!1227151 () Bool)

(assert (= bs!1227151 (and b!5290424 b!5290092)))

(assert (=> bs!1227151 (not (= lambda!267805 lambda!267787))))

(declare-fun bs!1227152 () Bool)

(assert (= bs!1227152 (and b!5290424 b!5288666)))

(assert (=> bs!1227152 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267805 lambda!267655))))

(assert (=> bs!1227149 (not (= lambda!267805 lambda!267547))))

(assert (=> bs!1227146 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267805 lambda!267778))))

(declare-fun bs!1227153 () Bool)

(assert (= bs!1227153 (and b!5290424 b!5288548)))

(assert (=> bs!1227153 (not (= lambda!267805 lambda!267645))))

(declare-fun bs!1227154 () Bool)

(assert (= bs!1227154 (and b!5290424 d!1701166)))

(assert (=> bs!1227154 (not (= lambda!267805 lambda!267629))))

(declare-fun bs!1227155 () Bool)

(assert (= bs!1227155 (and b!5290424 b!5289303)))

(assert (=> bs!1227155 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regTwo!30355 lt!2161300))) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 (regTwo!30355 lt!2161300)))) (= lambda!267805 lambda!267720))))

(assert (=> bs!1227147 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267805 lambda!267545))))

(declare-fun bs!1227156 () Bool)

(assert (= bs!1227156 (and b!5290424 d!1701882)))

(assert (=> bs!1227156 (not (= lambda!267805 lambda!267764))))

(assert (=> bs!1227148 (not (= lambda!267805 lambda!267652))))

(declare-fun bs!1227157 () Bool)

(assert (= bs!1227157 (and b!5290424 d!1701234)))

(assert (=> bs!1227157 (not (= lambda!267805 lambda!267651))))

(declare-fun bs!1227158 () Bool)

(assert (= bs!1227158 (and b!5290424 b!5289304)))

(assert (=> bs!1227158 (not (= lambda!267805 lambda!267718))))

(declare-fun bs!1227159 () Bool)

(assert (= bs!1227159 (and b!5290424 b!5288667)))

(assert (=> bs!1227159 (not (= lambda!267805 lambda!267654))))

(declare-fun bs!1227160 () Bool)

(assert (= bs!1227160 (and b!5290424 b!5290043)))

(assert (=> bs!1227160 (not (= lambda!267805 lambda!267783))))

(declare-fun bs!1227161 () Bool)

(assert (= bs!1227161 (and b!5290424 b!5290091)))

(assert (=> bs!1227161 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regTwo!30355 lt!2161294))) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 (regTwo!30355 lt!2161294)))) (= lambda!267805 lambda!267788))))

(declare-fun bs!1227162 () Bool)

(assert (= bs!1227162 (and b!5290424 b!5288580)))

(assert (=> bs!1227162 (not (= lambda!267805 lambda!267648))))

(declare-fun bs!1227163 () Bool)

(assert (= bs!1227163 (and b!5290424 b!5288547)))

(assert (=> bs!1227163 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 lt!2161300)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 lt!2161300))) (= lambda!267805 lambda!267646))))

(assert (=> bs!1227154 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 r!7292)) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 r!7292))) (= lambda!267805 lambda!267633))))

(declare-fun bs!1227164 () Bool)

(assert (= bs!1227164 (and b!5290424 b!5290042)))

(assert (=> bs!1227164 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regOne!30355 lt!2161300))) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 (regOne!30355 lt!2161300)))) (= lambda!267805 lambda!267784))))

(declare-fun bs!1227165 () Bool)

(assert (= bs!1227165 (and b!5290424 d!1702030)))

(assert (=> bs!1227165 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regOne!30354 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161294)) lt!2161300)) (= lambda!267805 lambda!267793))))

(declare-fun bs!1227166 () Bool)

(assert (= bs!1227166 (and b!5290424 b!5290425)))

(assert (=> bs!1227166 (not (= lambda!267805 lambda!267804))))

(declare-fun bs!1227167 () Bool)

(assert (= bs!1227167 (and b!5290424 d!1701612)))

(assert (=> bs!1227167 (not (= lambda!267805 lambda!267728))))

(declare-fun bs!1227168 () Bool)

(assert (= bs!1227168 (and b!5290424 b!5289482)))

(assert (=> bs!1227168 (= (and (= (regOne!30354 (regOne!30355 lt!2161294)) (regOne!30354 (regOne!30355 r!7292))) (= (regTwo!30354 (regOne!30355 lt!2161294)) (regTwo!30354 (regOne!30355 r!7292)))) (= lambda!267805 lambda!267738))))

(assert (=> bs!1227165 (not (= lambda!267805 lambda!267792))))

(declare-fun bs!1227169 () Bool)

(assert (= bs!1227169 (and b!5290424 b!5288946)))

(assert (=> bs!1227169 (not (= lambda!267805 lambda!267679))))

(assert (=> b!5290424 true))

(assert (=> b!5290424 true))

(declare-fun b!5290420 () Bool)

(declare-fun e!3288960 () Bool)

(declare-fun e!3288959 () Bool)

(assert (=> b!5290420 (= e!3288960 e!3288959)))

(declare-fun c!917773 () Bool)

(assert (=> b!5290420 (= c!917773 ((_ is Star!14921) (regOne!30355 lt!2161294)))))

(declare-fun b!5290421 () Bool)

(declare-fun c!917776 () Bool)

(assert (=> b!5290421 (= c!917776 ((_ is Union!14921) (regOne!30355 lt!2161294)))))

(declare-fun e!3288957 () Bool)

(assert (=> b!5290421 (= e!3288957 e!3288960)))

(declare-fun b!5290423 () Bool)

(assert (=> b!5290423 (= e!3288957 (= s!2326 (Cons!60938 (c!916969 (regOne!30355 lt!2161294)) Nil!60938)))))

(declare-fun call!377056 () Bool)

(assert (=> b!5290424 (= e!3288959 call!377056)))

(declare-fun e!3288962 () Bool)

(assert (=> b!5290425 (= e!3288962 call!377056)))

(declare-fun b!5290426 () Bool)

(declare-fun e!3288961 () Bool)

(declare-fun e!3288963 () Bool)

(assert (=> b!5290426 (= e!3288961 e!3288963)))

(declare-fun res!2243672 () Bool)

(assert (=> b!5290426 (= res!2243672 (not ((_ is EmptyLang!14921) (regOne!30355 lt!2161294))))))

(assert (=> b!5290426 (=> (not res!2243672) (not e!3288963))))

(declare-fun bm!377050 () Bool)

(declare-fun call!377055 () Bool)

(assert (=> bm!377050 (= call!377055 (isEmpty!32895 s!2326))))

(declare-fun d!1702154 () Bool)

(declare-fun c!917775 () Bool)

(assert (=> d!1702154 (= c!917775 ((_ is EmptyExpr!14921) (regOne!30355 lt!2161294)))))

(assert (=> d!1702154 (= (matchRSpec!2024 (regOne!30355 lt!2161294) s!2326) e!3288961)))

(declare-fun b!5290422 () Bool)

(declare-fun e!3288958 () Bool)

(assert (=> b!5290422 (= e!3288960 e!3288958)))

(declare-fun res!2243671 () Bool)

(assert (=> b!5290422 (= res!2243671 (matchRSpec!2024 (regOne!30355 (regOne!30355 lt!2161294)) s!2326))))

(assert (=> b!5290422 (=> res!2243671 e!3288958)))

(declare-fun b!5290427 () Bool)

(declare-fun c!917774 () Bool)

(assert (=> b!5290427 (= c!917774 ((_ is ElementMatch!14921) (regOne!30355 lt!2161294)))))

(assert (=> b!5290427 (= e!3288963 e!3288957)))

(declare-fun b!5290428 () Bool)

(declare-fun res!2243670 () Bool)

(assert (=> b!5290428 (=> res!2243670 e!3288962)))

(assert (=> b!5290428 (= res!2243670 call!377055)))

(assert (=> b!5290428 (= e!3288959 e!3288962)))

(declare-fun b!5290429 () Bool)

(assert (=> b!5290429 (= e!3288961 call!377055)))

(declare-fun bm!377051 () Bool)

(assert (=> bm!377051 (= call!377056 (Exists!2102 (ite c!917773 lambda!267804 lambda!267805)))))

(declare-fun b!5290430 () Bool)

(assert (=> b!5290430 (= e!3288958 (matchRSpec!2024 (regTwo!30355 (regOne!30355 lt!2161294)) s!2326))))

(assert (= (and d!1702154 c!917775) b!5290429))

(assert (= (and d!1702154 (not c!917775)) b!5290426))

(assert (= (and b!5290426 res!2243672) b!5290427))

(assert (= (and b!5290427 c!917774) b!5290423))

(assert (= (and b!5290427 (not c!917774)) b!5290421))

(assert (= (and b!5290421 c!917776) b!5290422))

(assert (= (and b!5290421 (not c!917776)) b!5290420))

(assert (= (and b!5290422 (not res!2243671)) b!5290430))

(assert (= (and b!5290420 c!917773) b!5290428))

(assert (= (and b!5290420 (not c!917773)) b!5290424))

(assert (= (and b!5290428 (not res!2243670)) b!5290425))

(assert (= (or b!5290425 b!5290424) bm!377051))

(assert (= (or b!5290429 b!5290428) bm!377050))

(assert (=> bm!377050 m!6326026))

(declare-fun m!6328016 () Bool)

(assert (=> b!5290422 m!6328016))

(declare-fun m!6328018 () Bool)

(assert (=> bm!377051 m!6328018))

(declare-fun m!6328020 () Bool)

(assert (=> b!5290430 m!6328020))

(assert (=> b!5288577 d!1702154))

(declare-fun b!5290431 () Bool)

(declare-fun e!3288966 () (InoxSet Context!8610))

(declare-fun call!377060 () (InoxSet Context!8610))

(assert (=> b!5290431 (= e!3288966 call!377060)))

(declare-fun call!377061 () List!61063)

(declare-fun c!917780 () Bool)

(declare-fun bm!377052 () Bool)

(declare-fun call!377059 () (InoxSet Context!8610))

(assert (=> bm!377052 (= call!377059 (derivationStepZipperDown!369 (ite c!917780 (regTwo!30355 (h!67387 (exprs!4805 lt!2161287))) (regOne!30354 (h!67387 (exprs!4805 lt!2161287)))) (ite c!917780 (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (Context!8611 call!377061)) (h!67386 s!2326)))))

(declare-fun b!5290432 () Bool)

(declare-fun e!3288967 () (InoxSet Context!8610))

(assert (=> b!5290432 (= e!3288967 call!377060)))

(declare-fun bm!377053 () Bool)

(declare-fun c!917779 () Bool)

(declare-fun c!917778 () Bool)

(assert (=> bm!377053 (= call!377061 ($colon$colon!1358 (exprs!4805 (Context!8611 (t!374266 (exprs!4805 lt!2161287)))) (ite (or c!917779 c!917778) (regTwo!30354 (h!67387 (exprs!4805 lt!2161287))) (h!67387 (exprs!4805 lt!2161287)))))))

(declare-fun call!377057 () (InoxSet Context!8610))

(declare-fun bm!377054 () Bool)

(declare-fun call!377058 () List!61063)

(assert (=> bm!377054 (= call!377057 (derivationStepZipperDown!369 (ite c!917780 (regOne!30355 (h!67387 (exprs!4805 lt!2161287))) (ite c!917779 (regTwo!30354 (h!67387 (exprs!4805 lt!2161287))) (ite c!917778 (regOne!30354 (h!67387 (exprs!4805 lt!2161287))) (reg!15250 (h!67387 (exprs!4805 lt!2161287)))))) (ite (or c!917780 c!917779) (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (Context!8611 call!377058)) (h!67386 s!2326)))))

(declare-fun bm!377055 () Bool)

(declare-fun call!377062 () (InoxSet Context!8610))

(assert (=> bm!377055 (= call!377060 call!377062)))

(declare-fun bm!377056 () Bool)

(assert (=> bm!377056 (= call!377062 call!377057)))

(declare-fun b!5290433 () Bool)

(declare-fun e!3288965 () Bool)

(assert (=> b!5290433 (= c!917779 e!3288965)))

(declare-fun res!2243673 () Bool)

(assert (=> b!5290433 (=> (not res!2243673) (not e!3288965))))

(assert (=> b!5290433 (= res!2243673 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161287))))))

(declare-fun e!3288969 () (InoxSet Context!8610))

(declare-fun e!3288968 () (InoxSet Context!8610))

(assert (=> b!5290433 (= e!3288969 e!3288968)))

(declare-fun d!1702156 () Bool)

(declare-fun c!917777 () Bool)

(assert (=> d!1702156 (= c!917777 (and ((_ is ElementMatch!14921) (h!67387 (exprs!4805 lt!2161287))) (= (c!916969 (h!67387 (exprs!4805 lt!2161287))) (h!67386 s!2326))))))

(declare-fun e!3288964 () (InoxSet Context!8610))

(assert (=> d!1702156 (= (derivationStepZipperDown!369 (h!67387 (exprs!4805 lt!2161287)) (Context!8611 (t!374266 (exprs!4805 lt!2161287))) (h!67386 s!2326)) e!3288964)))

(declare-fun bm!377057 () Bool)

(assert (=> bm!377057 (= call!377058 call!377061)))

(declare-fun b!5290434 () Bool)

(assert (=> b!5290434 (= e!3288969 ((_ map or) call!377057 call!377059))))

(declare-fun b!5290435 () Bool)

(assert (=> b!5290435 (= e!3288964 e!3288969)))

(assert (=> b!5290435 (= c!917780 ((_ is Union!14921) (h!67387 (exprs!4805 lt!2161287))))))

(declare-fun b!5290436 () Bool)

(declare-fun c!917781 () Bool)

(assert (=> b!5290436 (= c!917781 ((_ is Star!14921) (h!67387 (exprs!4805 lt!2161287))))))

(assert (=> b!5290436 (= e!3288967 e!3288966)))

(declare-fun b!5290437 () Bool)

(assert (=> b!5290437 (= e!3288966 ((as const (Array Context!8610 Bool)) false))))

(declare-fun b!5290438 () Bool)

(assert (=> b!5290438 (= e!3288968 ((_ map or) call!377059 call!377062))))

(declare-fun b!5290439 () Bool)

(assert (=> b!5290439 (= e!3288965 (nullable!5090 (regOne!30354 (h!67387 (exprs!4805 lt!2161287)))))))

(declare-fun b!5290440 () Bool)

(assert (=> b!5290440 (= e!3288964 (store ((as const (Array Context!8610 Bool)) false) (Context!8611 (t!374266 (exprs!4805 lt!2161287))) true))))

(declare-fun b!5290441 () Bool)

(assert (=> b!5290441 (= e!3288968 e!3288967)))

(assert (=> b!5290441 (= c!917778 ((_ is Concat!23766) (h!67387 (exprs!4805 lt!2161287))))))

(assert (= (and d!1702156 c!917777) b!5290440))

(assert (= (and d!1702156 (not c!917777)) b!5290435))

(assert (= (and b!5290435 c!917780) b!5290434))

(assert (= (and b!5290435 (not c!917780)) b!5290433))

(assert (= (and b!5290433 res!2243673) b!5290439))

(assert (= (and b!5290433 c!917779) b!5290438))

(assert (= (and b!5290433 (not c!917779)) b!5290441))

(assert (= (and b!5290441 c!917778) b!5290432))

(assert (= (and b!5290441 (not c!917778)) b!5290436))

(assert (= (and b!5290436 c!917781) b!5290431))

(assert (= (and b!5290436 (not c!917781)) b!5290437))

(assert (= (or b!5290432 b!5290431) bm!377057))

(assert (= (or b!5290432 b!5290431) bm!377055))

(assert (= (or b!5290438 bm!377057) bm!377053))

(assert (= (or b!5290438 bm!377055) bm!377056))

(assert (= (or b!5290434 b!5290438) bm!377052))

(assert (= (or b!5290434 bm!377056) bm!377054))

(declare-fun m!6328022 () Bool)

(assert (=> b!5290440 m!6328022))

(declare-fun m!6328024 () Bool)

(assert (=> bm!377053 m!6328024))

(declare-fun m!6328026 () Bool)

(assert (=> bm!377054 m!6328026))

(declare-fun m!6328028 () Bool)

(assert (=> b!5290439 m!6328028))

(declare-fun m!6328030 () Bool)

(assert (=> bm!377052 m!6328030))

(assert (=> bm!376669 d!1702156))

(declare-fun d!1702158 () Bool)

(assert (=> d!1702158 (= (isEmpty!32892 (tail!10432 lt!2161306)) ((_ is Nil!60939) (tail!10432 lt!2161306)))))

(assert (=> b!5288638 d!1702158))

(declare-fun d!1702160 () Bool)

(assert (=> d!1702160 (= (tail!10432 lt!2161306) (t!374266 lt!2161306))))

(assert (=> b!5288638 d!1702160))

(declare-fun d!1702162 () Bool)

(assert (=> d!1702162 (= (nullable!5090 r!7292) (nullableFct!1460 r!7292))))

(declare-fun bs!1227170 () Bool)

(assert (= bs!1227170 d!1702162))

(declare-fun m!6328032 () Bool)

(assert (=> bs!1227170 m!6328032))

(assert (=> b!5288674 d!1702162))

(declare-fun b!5290445 () Bool)

(declare-fun e!3288970 () Bool)

(declare-fun tp!1476718 () Bool)

(declare-fun tp!1476719 () Bool)

(assert (=> b!5290445 (= e!3288970 (and tp!1476718 tp!1476719))))

(declare-fun b!5290444 () Bool)

(declare-fun tp!1476720 () Bool)

(assert (=> b!5290444 (= e!3288970 tp!1476720)))

(assert (=> b!5288714 (= tp!1476497 e!3288970)))

(declare-fun b!5290443 () Bool)

(declare-fun tp!1476722 () Bool)

(declare-fun tp!1476721 () Bool)

(assert (=> b!5290443 (= e!3288970 (and tp!1476722 tp!1476721))))

(declare-fun b!5290442 () Bool)

(assert (=> b!5290442 (= e!3288970 tp_is_empty!39095)))

(assert (= (and b!5288714 ((_ is ElementMatch!14921) (reg!15250 (regOne!30354 r!7292)))) b!5290442))

(assert (= (and b!5288714 ((_ is Concat!23766) (reg!15250 (regOne!30354 r!7292)))) b!5290443))

(assert (= (and b!5288714 ((_ is Star!14921) (reg!15250 (regOne!30354 r!7292)))) b!5290444))

(assert (= (and b!5288714 ((_ is Union!14921) (reg!15250 (regOne!30354 r!7292)))) b!5290445))

(declare-fun b!5290449 () Bool)

(declare-fun e!3288971 () Bool)

(declare-fun tp!1476723 () Bool)

(declare-fun tp!1476724 () Bool)

(assert (=> b!5290449 (= e!3288971 (and tp!1476723 tp!1476724))))

(declare-fun b!5290448 () Bool)

(declare-fun tp!1476725 () Bool)

(assert (=> b!5290448 (= e!3288971 tp!1476725)))

(assert (=> b!5288715 (= tp!1476495 e!3288971)))

(declare-fun b!5290447 () Bool)

(declare-fun tp!1476727 () Bool)

(declare-fun tp!1476726 () Bool)

(assert (=> b!5290447 (= e!3288971 (and tp!1476727 tp!1476726))))

(declare-fun b!5290446 () Bool)

(assert (=> b!5290446 (= e!3288971 tp_is_empty!39095)))

(assert (= (and b!5288715 ((_ is ElementMatch!14921) (regOne!30355 (regOne!30354 r!7292)))) b!5290446))

(assert (= (and b!5288715 ((_ is Concat!23766) (regOne!30355 (regOne!30354 r!7292)))) b!5290447))

(assert (= (and b!5288715 ((_ is Star!14921) (regOne!30355 (regOne!30354 r!7292)))) b!5290448))

(assert (= (and b!5288715 ((_ is Union!14921) (regOne!30355 (regOne!30354 r!7292)))) b!5290449))

(declare-fun b!5290453 () Bool)

(declare-fun e!3288972 () Bool)

(declare-fun tp!1476728 () Bool)

(declare-fun tp!1476729 () Bool)

(assert (=> b!5290453 (= e!3288972 (and tp!1476728 tp!1476729))))

(declare-fun b!5290452 () Bool)

(declare-fun tp!1476730 () Bool)

(assert (=> b!5290452 (= e!3288972 tp!1476730)))

(assert (=> b!5288715 (= tp!1476496 e!3288972)))

(declare-fun b!5290451 () Bool)

(declare-fun tp!1476732 () Bool)

(declare-fun tp!1476731 () Bool)

(assert (=> b!5290451 (= e!3288972 (and tp!1476732 tp!1476731))))

(declare-fun b!5290450 () Bool)

(assert (=> b!5290450 (= e!3288972 tp_is_empty!39095)))

(assert (= (and b!5288715 ((_ is ElementMatch!14921) (regTwo!30355 (regOne!30354 r!7292)))) b!5290450))

(assert (= (and b!5288715 ((_ is Concat!23766) (regTwo!30355 (regOne!30354 r!7292)))) b!5290451))

(assert (= (and b!5288715 ((_ is Star!14921) (regTwo!30355 (regOne!30354 r!7292)))) b!5290452))

(assert (= (and b!5288715 ((_ is Union!14921) (regTwo!30355 (regOne!30354 r!7292)))) b!5290453))

(declare-fun b!5290457 () Bool)

(declare-fun e!3288973 () Bool)

(declare-fun tp!1476733 () Bool)

(declare-fun tp!1476734 () Bool)

(assert (=> b!5290457 (= e!3288973 (and tp!1476733 tp!1476734))))

(declare-fun b!5290456 () Bool)

(declare-fun tp!1476735 () Bool)

(assert (=> b!5290456 (= e!3288973 tp!1476735)))

(assert (=> b!5288733 (= tp!1476517 e!3288973)))

(declare-fun b!5290455 () Bool)

(declare-fun tp!1476737 () Bool)

(declare-fun tp!1476736 () Bool)

(assert (=> b!5290455 (= e!3288973 (and tp!1476737 tp!1476736))))

(declare-fun b!5290454 () Bool)

(assert (=> b!5290454 (= e!3288973 tp_is_empty!39095)))

(assert (= (and b!5288733 ((_ is ElementMatch!14921) (h!67387 (exprs!4805 setElem!33929)))) b!5290454))

(assert (= (and b!5288733 ((_ is Concat!23766) (h!67387 (exprs!4805 setElem!33929)))) b!5290455))

(assert (= (and b!5288733 ((_ is Star!14921) (h!67387 (exprs!4805 setElem!33929)))) b!5290456))

(assert (= (and b!5288733 ((_ is Union!14921) (h!67387 (exprs!4805 setElem!33929)))) b!5290457))

(declare-fun b!5290458 () Bool)

(declare-fun e!3288974 () Bool)

(declare-fun tp!1476738 () Bool)

(declare-fun tp!1476739 () Bool)

(assert (=> b!5290458 (= e!3288974 (and tp!1476738 tp!1476739))))

(assert (=> b!5288733 (= tp!1476518 e!3288974)))

(assert (= (and b!5288733 ((_ is Cons!60939) (t!374266 (exprs!4805 setElem!33929)))) b!5290458))

(declare-fun b!5290462 () Bool)

(declare-fun e!3288975 () Bool)

(declare-fun tp!1476740 () Bool)

(declare-fun tp!1476741 () Bool)

(assert (=> b!5290462 (= e!3288975 (and tp!1476740 tp!1476741))))

(declare-fun b!5290461 () Bool)

(declare-fun tp!1476742 () Bool)

(assert (=> b!5290461 (= e!3288975 tp!1476742)))

(assert (=> b!5288713 (= tp!1476499 e!3288975)))

(declare-fun b!5290460 () Bool)

(declare-fun tp!1476744 () Bool)

(declare-fun tp!1476743 () Bool)

(assert (=> b!5290460 (= e!3288975 (and tp!1476744 tp!1476743))))

(declare-fun b!5290459 () Bool)

(assert (=> b!5290459 (= e!3288975 tp_is_empty!39095)))

(assert (= (and b!5288713 ((_ is ElementMatch!14921) (regOne!30354 (regOne!30354 r!7292)))) b!5290459))

(assert (= (and b!5288713 ((_ is Concat!23766) (regOne!30354 (regOne!30354 r!7292)))) b!5290460))

(assert (= (and b!5288713 ((_ is Star!14921) (regOne!30354 (regOne!30354 r!7292)))) b!5290461))

(assert (= (and b!5288713 ((_ is Union!14921) (regOne!30354 (regOne!30354 r!7292)))) b!5290462))

(declare-fun b!5290466 () Bool)

(declare-fun e!3288976 () Bool)

(declare-fun tp!1476745 () Bool)

(declare-fun tp!1476746 () Bool)

(assert (=> b!5290466 (= e!3288976 (and tp!1476745 tp!1476746))))

(declare-fun b!5290465 () Bool)

(declare-fun tp!1476747 () Bool)

(assert (=> b!5290465 (= e!3288976 tp!1476747)))

(assert (=> b!5288713 (= tp!1476498 e!3288976)))

(declare-fun b!5290464 () Bool)

(declare-fun tp!1476749 () Bool)

(declare-fun tp!1476748 () Bool)

(assert (=> b!5290464 (= e!3288976 (and tp!1476749 tp!1476748))))

(declare-fun b!5290463 () Bool)

(assert (=> b!5290463 (= e!3288976 tp_is_empty!39095)))

(assert (= (and b!5288713 ((_ is ElementMatch!14921) (regTwo!30354 (regOne!30354 r!7292)))) b!5290463))

(assert (= (and b!5288713 ((_ is Concat!23766) (regTwo!30354 (regOne!30354 r!7292)))) b!5290464))

(assert (= (and b!5288713 ((_ is Star!14921) (regTwo!30354 (regOne!30354 r!7292)))) b!5290465))

(assert (= (and b!5288713 ((_ is Union!14921) (regTwo!30354 (regOne!30354 r!7292)))) b!5290466))

(declare-fun b!5290470 () Bool)

(declare-fun e!3288977 () Bool)

(declare-fun tp!1476750 () Bool)

(declare-fun tp!1476751 () Bool)

(assert (=> b!5290470 (= e!3288977 (and tp!1476750 tp!1476751))))

(declare-fun b!5290469 () Bool)

(declare-fun tp!1476752 () Bool)

(assert (=> b!5290469 (= e!3288977 tp!1476752)))

(assert (=> b!5288745 (= tp!1476532 e!3288977)))

(declare-fun b!5290468 () Bool)

(declare-fun tp!1476754 () Bool)

(declare-fun tp!1476753 () Bool)

(assert (=> b!5290468 (= e!3288977 (and tp!1476754 tp!1476753))))

(declare-fun b!5290467 () Bool)

(assert (=> b!5290467 (= e!3288977 tp_is_empty!39095)))

(assert (= (and b!5288745 ((_ is ElementMatch!14921) (regOne!30354 (regOne!30355 r!7292)))) b!5290467))

(assert (= (and b!5288745 ((_ is Concat!23766) (regOne!30354 (regOne!30355 r!7292)))) b!5290468))

(assert (= (and b!5288745 ((_ is Star!14921) (regOne!30354 (regOne!30355 r!7292)))) b!5290469))

(assert (= (and b!5288745 ((_ is Union!14921) (regOne!30354 (regOne!30355 r!7292)))) b!5290470))

(declare-fun b!5290474 () Bool)

(declare-fun e!3288978 () Bool)

(declare-fun tp!1476755 () Bool)

(declare-fun tp!1476756 () Bool)

(assert (=> b!5290474 (= e!3288978 (and tp!1476755 tp!1476756))))

(declare-fun b!5290473 () Bool)

(declare-fun tp!1476757 () Bool)

(assert (=> b!5290473 (= e!3288978 tp!1476757)))

(assert (=> b!5288745 (= tp!1476531 e!3288978)))

(declare-fun b!5290472 () Bool)

(declare-fun tp!1476759 () Bool)

(declare-fun tp!1476758 () Bool)

(assert (=> b!5290472 (= e!3288978 (and tp!1476759 tp!1476758))))

(declare-fun b!5290471 () Bool)

(assert (=> b!5290471 (= e!3288978 tp_is_empty!39095)))

(assert (= (and b!5288745 ((_ is ElementMatch!14921) (regTwo!30354 (regOne!30355 r!7292)))) b!5290471))

(assert (= (and b!5288745 ((_ is Concat!23766) (regTwo!30354 (regOne!30355 r!7292)))) b!5290472))

(assert (= (and b!5288745 ((_ is Star!14921) (regTwo!30354 (regOne!30355 r!7292)))) b!5290473))

(assert (= (and b!5288745 ((_ is Union!14921) (regTwo!30354 (regOne!30355 r!7292)))) b!5290474))

(declare-fun b!5290478 () Bool)

(declare-fun e!3288979 () Bool)

(declare-fun tp!1476760 () Bool)

(declare-fun tp!1476761 () Bool)

(assert (=> b!5290478 (= e!3288979 (and tp!1476760 tp!1476761))))

(declare-fun b!5290477 () Bool)

(declare-fun tp!1476762 () Bool)

(assert (=> b!5290477 (= e!3288979 tp!1476762)))

(assert (=> b!5288746 (= tp!1476530 e!3288979)))

(declare-fun b!5290476 () Bool)

(declare-fun tp!1476764 () Bool)

(declare-fun tp!1476763 () Bool)

(assert (=> b!5290476 (= e!3288979 (and tp!1476764 tp!1476763))))

(declare-fun b!5290475 () Bool)

(assert (=> b!5290475 (= e!3288979 tp_is_empty!39095)))

(assert (= (and b!5288746 ((_ is ElementMatch!14921) (reg!15250 (regOne!30355 r!7292)))) b!5290475))

(assert (= (and b!5288746 ((_ is Concat!23766) (reg!15250 (regOne!30355 r!7292)))) b!5290476))

(assert (= (and b!5288746 ((_ is Star!14921) (reg!15250 (regOne!30355 r!7292)))) b!5290477))

(assert (= (and b!5288746 ((_ is Union!14921) (reg!15250 (regOne!30355 r!7292)))) b!5290478))

(declare-fun b!5290482 () Bool)

(declare-fun e!3288980 () Bool)

(declare-fun tp!1476765 () Bool)

(declare-fun tp!1476766 () Bool)

(assert (=> b!5290482 (= e!3288980 (and tp!1476765 tp!1476766))))

(declare-fun b!5290481 () Bool)

(declare-fun tp!1476767 () Bool)

(assert (=> b!5290481 (= e!3288980 tp!1476767)))

(assert (=> b!5288747 (= tp!1476528 e!3288980)))

(declare-fun b!5290480 () Bool)

(declare-fun tp!1476769 () Bool)

(declare-fun tp!1476768 () Bool)

(assert (=> b!5290480 (= e!3288980 (and tp!1476769 tp!1476768))))

(declare-fun b!5290479 () Bool)

(assert (=> b!5290479 (= e!3288980 tp_is_empty!39095)))

(assert (= (and b!5288747 ((_ is ElementMatch!14921) (regOne!30355 (regOne!30355 r!7292)))) b!5290479))

(assert (= (and b!5288747 ((_ is Concat!23766) (regOne!30355 (regOne!30355 r!7292)))) b!5290480))

(assert (= (and b!5288747 ((_ is Star!14921) (regOne!30355 (regOne!30355 r!7292)))) b!5290481))

(assert (= (and b!5288747 ((_ is Union!14921) (regOne!30355 (regOne!30355 r!7292)))) b!5290482))

(declare-fun b!5290486 () Bool)

(declare-fun e!3288981 () Bool)

(declare-fun tp!1476770 () Bool)

(declare-fun tp!1476771 () Bool)

(assert (=> b!5290486 (= e!3288981 (and tp!1476770 tp!1476771))))

(declare-fun b!5290485 () Bool)

(declare-fun tp!1476772 () Bool)

(assert (=> b!5290485 (= e!3288981 tp!1476772)))

(assert (=> b!5288747 (= tp!1476529 e!3288981)))

(declare-fun b!5290484 () Bool)

(declare-fun tp!1476774 () Bool)

(declare-fun tp!1476773 () Bool)

(assert (=> b!5290484 (= e!3288981 (and tp!1476774 tp!1476773))))

(declare-fun b!5290483 () Bool)

(assert (=> b!5290483 (= e!3288981 tp_is_empty!39095)))

(assert (= (and b!5288747 ((_ is ElementMatch!14921) (regTwo!30355 (regOne!30355 r!7292)))) b!5290483))

(assert (= (and b!5288747 ((_ is Concat!23766) (regTwo!30355 (regOne!30355 r!7292)))) b!5290484))

(assert (= (and b!5288747 ((_ is Star!14921) (regTwo!30355 (regOne!30355 r!7292)))) b!5290485))

(assert (= (and b!5288747 ((_ is Union!14921) (regTwo!30355 (regOne!30355 r!7292)))) b!5290486))

(declare-fun b!5290488 () Bool)

(declare-fun e!3288983 () Bool)

(declare-fun tp!1476775 () Bool)

(assert (=> b!5290488 (= e!3288983 tp!1476775)))

(declare-fun e!3288982 () Bool)

(declare-fun tp!1476776 () Bool)

(declare-fun b!5290487 () Bool)

(assert (=> b!5290487 (= e!3288982 (and (inv!80549 (h!67388 (t!374267 (t!374267 zl!343)))) e!3288983 tp!1476776))))

(assert (=> b!5288726 (= tp!1476510 e!3288982)))

(assert (= b!5290487 b!5290488))

(assert (= (and b!5288726 ((_ is Cons!60940) (t!374267 (t!374267 zl!343)))) b!5290487))

(declare-fun m!6328034 () Bool)

(assert (=> b!5290487 m!6328034))

(declare-fun b!5290492 () Bool)

(declare-fun e!3288984 () Bool)

(declare-fun tp!1476777 () Bool)

(declare-fun tp!1476778 () Bool)

(assert (=> b!5290492 (= e!3288984 (and tp!1476777 tp!1476778))))

(declare-fun b!5290491 () Bool)

(declare-fun tp!1476779 () Bool)

(assert (=> b!5290491 (= e!3288984 tp!1476779)))

(assert (=> b!5288732 (= tp!1476515 e!3288984)))

(declare-fun b!5290490 () Bool)

(declare-fun tp!1476781 () Bool)

(declare-fun tp!1476780 () Bool)

(assert (=> b!5290490 (= e!3288984 (and tp!1476781 tp!1476780))))

(declare-fun b!5290489 () Bool)

(assert (=> b!5290489 (= e!3288984 tp_is_empty!39095)))

(assert (= (and b!5288732 ((_ is ElementMatch!14921) (h!67387 (exprs!4805 (h!67388 zl!343))))) b!5290489))

(assert (= (and b!5288732 ((_ is Concat!23766) (h!67387 (exprs!4805 (h!67388 zl!343))))) b!5290490))

(assert (= (and b!5288732 ((_ is Star!14921) (h!67387 (exprs!4805 (h!67388 zl!343))))) b!5290491))

(assert (= (and b!5288732 ((_ is Union!14921) (h!67387 (exprs!4805 (h!67388 zl!343))))) b!5290492))

(declare-fun b!5290493 () Bool)

(declare-fun e!3288985 () Bool)

(declare-fun tp!1476782 () Bool)

(declare-fun tp!1476783 () Bool)

(assert (=> b!5290493 (= e!3288985 (and tp!1476782 tp!1476783))))

(assert (=> b!5288732 (= tp!1476516 e!3288985)))

(assert (= (and b!5288732 ((_ is Cons!60939) (t!374266 (exprs!4805 (h!67388 zl!343))))) b!5290493))

(declare-fun b!5290494 () Bool)

(declare-fun e!3288986 () Bool)

(declare-fun tp!1476784 () Bool)

(declare-fun tp!1476785 () Bool)

(assert (=> b!5290494 (= e!3288986 (and tp!1476784 tp!1476785))))

(assert (=> b!5288727 (= tp!1476509 e!3288986)))

(assert (= (and b!5288727 ((_ is Cons!60939) (exprs!4805 (h!67388 (t!374267 zl!343))))) b!5290494))

(declare-fun b!5290498 () Bool)

(declare-fun e!3288987 () Bool)

(declare-fun tp!1476786 () Bool)

(declare-fun tp!1476787 () Bool)

(assert (=> b!5290498 (= e!3288987 (and tp!1476786 tp!1476787))))

(declare-fun b!5290497 () Bool)

(declare-fun tp!1476788 () Bool)

(assert (=> b!5290497 (= e!3288987 tp!1476788)))

(assert (=> b!5288709 (= tp!1476494 e!3288987)))

(declare-fun b!5290496 () Bool)

(declare-fun tp!1476790 () Bool)

(declare-fun tp!1476789 () Bool)

(assert (=> b!5290496 (= e!3288987 (and tp!1476790 tp!1476789))))

(declare-fun b!5290495 () Bool)

(assert (=> b!5290495 (= e!3288987 tp_is_empty!39095)))

(assert (= (and b!5288709 ((_ is ElementMatch!14921) (regOne!30354 (reg!15250 r!7292)))) b!5290495))

(assert (= (and b!5288709 ((_ is Concat!23766) (regOne!30354 (reg!15250 r!7292)))) b!5290496))

(assert (= (and b!5288709 ((_ is Star!14921) (regOne!30354 (reg!15250 r!7292)))) b!5290497))

(assert (= (and b!5288709 ((_ is Union!14921) (regOne!30354 (reg!15250 r!7292)))) b!5290498))

(declare-fun b!5290502 () Bool)

(declare-fun e!3288988 () Bool)

(declare-fun tp!1476791 () Bool)

(declare-fun tp!1476792 () Bool)

(assert (=> b!5290502 (= e!3288988 (and tp!1476791 tp!1476792))))

(declare-fun b!5290501 () Bool)

(declare-fun tp!1476793 () Bool)

(assert (=> b!5290501 (= e!3288988 tp!1476793)))

(assert (=> b!5288709 (= tp!1476493 e!3288988)))

(declare-fun b!5290500 () Bool)

(declare-fun tp!1476795 () Bool)

(declare-fun tp!1476794 () Bool)

(assert (=> b!5290500 (= e!3288988 (and tp!1476795 tp!1476794))))

(declare-fun b!5290499 () Bool)

(assert (=> b!5290499 (= e!3288988 tp_is_empty!39095)))

(assert (= (and b!5288709 ((_ is ElementMatch!14921) (regTwo!30354 (reg!15250 r!7292)))) b!5290499))

(assert (= (and b!5288709 ((_ is Concat!23766) (regTwo!30354 (reg!15250 r!7292)))) b!5290500))

(assert (= (and b!5288709 ((_ is Star!14921) (regTwo!30354 (reg!15250 r!7292)))) b!5290501))

(assert (= (and b!5288709 ((_ is Union!14921) (regTwo!30354 (reg!15250 r!7292)))) b!5290502))

(declare-fun b!5290506 () Bool)

(declare-fun e!3288989 () Bool)

(declare-fun tp!1476796 () Bool)

(declare-fun tp!1476797 () Bool)

(assert (=> b!5290506 (= e!3288989 (and tp!1476796 tp!1476797))))

(declare-fun b!5290505 () Bool)

(declare-fun tp!1476798 () Bool)

(assert (=> b!5290505 (= e!3288989 tp!1476798)))

(assert (=> b!5288717 (= tp!1476504 e!3288989)))

(declare-fun b!5290504 () Bool)

(declare-fun tp!1476800 () Bool)

(declare-fun tp!1476799 () Bool)

(assert (=> b!5290504 (= e!3288989 (and tp!1476800 tp!1476799))))

(declare-fun b!5290503 () Bool)

(assert (=> b!5290503 (= e!3288989 tp_is_empty!39095)))

(assert (= (and b!5288717 ((_ is ElementMatch!14921) (regOne!30354 (regTwo!30354 r!7292)))) b!5290503))

(assert (= (and b!5288717 ((_ is Concat!23766) (regOne!30354 (regTwo!30354 r!7292)))) b!5290504))

(assert (= (and b!5288717 ((_ is Star!14921) (regOne!30354 (regTwo!30354 r!7292)))) b!5290505))

(assert (= (and b!5288717 ((_ is Union!14921) (regOne!30354 (regTwo!30354 r!7292)))) b!5290506))

(declare-fun b!5290510 () Bool)

(declare-fun e!3288990 () Bool)

(declare-fun tp!1476801 () Bool)

(declare-fun tp!1476802 () Bool)

(assert (=> b!5290510 (= e!3288990 (and tp!1476801 tp!1476802))))

(declare-fun b!5290509 () Bool)

(declare-fun tp!1476803 () Bool)

(assert (=> b!5290509 (= e!3288990 tp!1476803)))

(assert (=> b!5288717 (= tp!1476503 e!3288990)))

(declare-fun b!5290508 () Bool)

(declare-fun tp!1476805 () Bool)

(declare-fun tp!1476804 () Bool)

(assert (=> b!5290508 (= e!3288990 (and tp!1476805 tp!1476804))))

(declare-fun b!5290507 () Bool)

(assert (=> b!5290507 (= e!3288990 tp_is_empty!39095)))

(assert (= (and b!5288717 ((_ is ElementMatch!14921) (regTwo!30354 (regTwo!30354 r!7292)))) b!5290507))

(assert (= (and b!5288717 ((_ is Concat!23766) (regTwo!30354 (regTwo!30354 r!7292)))) b!5290508))

(assert (= (and b!5288717 ((_ is Star!14921) (regTwo!30354 (regTwo!30354 r!7292)))) b!5290509))

(assert (= (and b!5288717 ((_ is Union!14921) (regTwo!30354 (regTwo!30354 r!7292)))) b!5290510))

(declare-fun b!5290514 () Bool)

(declare-fun e!3288991 () Bool)

(declare-fun tp!1476806 () Bool)

(declare-fun tp!1476807 () Bool)

(assert (=> b!5290514 (= e!3288991 (and tp!1476806 tp!1476807))))

(declare-fun b!5290513 () Bool)

(declare-fun tp!1476808 () Bool)

(assert (=> b!5290513 (= e!3288991 tp!1476808)))

(assert (=> b!5288718 (= tp!1476502 e!3288991)))

(declare-fun b!5290512 () Bool)

(declare-fun tp!1476810 () Bool)

(declare-fun tp!1476809 () Bool)

(assert (=> b!5290512 (= e!3288991 (and tp!1476810 tp!1476809))))

(declare-fun b!5290511 () Bool)

(assert (=> b!5290511 (= e!3288991 tp_is_empty!39095)))

(assert (= (and b!5288718 ((_ is ElementMatch!14921) (reg!15250 (regTwo!30354 r!7292)))) b!5290511))

(assert (= (and b!5288718 ((_ is Concat!23766) (reg!15250 (regTwo!30354 r!7292)))) b!5290512))

(assert (= (and b!5288718 ((_ is Star!14921) (reg!15250 (regTwo!30354 r!7292)))) b!5290513))

(assert (= (and b!5288718 ((_ is Union!14921) (reg!15250 (regTwo!30354 r!7292)))) b!5290514))

(declare-fun condSetEmpty!33947 () Bool)

(assert (=> setNonEmpty!33935 (= condSetEmpty!33947 (= setRest!33935 ((as const (Array Context!8610 Bool)) false)))))

(declare-fun setRes!33947 () Bool)

(assert (=> setNonEmpty!33935 (= tp!1476524 setRes!33947)))

(declare-fun setIsEmpty!33947 () Bool)

(assert (=> setIsEmpty!33947 setRes!33947))

(declare-fun setNonEmpty!33947 () Bool)

(declare-fun setElem!33947 () Context!8610)

(declare-fun e!3288992 () Bool)

(declare-fun tp!1476812 () Bool)

(assert (=> setNonEmpty!33947 (= setRes!33947 (and tp!1476812 (inv!80549 setElem!33947) e!3288992))))

(declare-fun setRest!33947 () (InoxSet Context!8610))

(assert (=> setNonEmpty!33947 (= setRest!33935 ((_ map or) (store ((as const (Array Context!8610 Bool)) false) setElem!33947 true) setRest!33947))))

(declare-fun b!5290515 () Bool)

(declare-fun tp!1476811 () Bool)

(assert (=> b!5290515 (= e!3288992 tp!1476811)))

(assert (= (and setNonEmpty!33935 condSetEmpty!33947) setIsEmpty!33947))

(assert (= (and setNonEmpty!33935 (not condSetEmpty!33947)) setNonEmpty!33947))

(assert (= setNonEmpty!33947 b!5290515))

(declare-fun m!6328036 () Bool)

(assert (=> setNonEmpty!33947 m!6328036))

(declare-fun b!5290516 () Bool)

(declare-fun e!3288993 () Bool)

(declare-fun tp!1476813 () Bool)

(declare-fun tp!1476814 () Bool)

(assert (=> b!5290516 (= e!3288993 (and tp!1476813 tp!1476814))))

(assert (=> b!5288738 (= tp!1476523 e!3288993)))

(assert (= (and b!5288738 ((_ is Cons!60939) (exprs!4805 setElem!33935))) b!5290516))

(declare-fun b!5290520 () Bool)

(declare-fun e!3288994 () Bool)

(declare-fun tp!1476815 () Bool)

(declare-fun tp!1476816 () Bool)

(assert (=> b!5290520 (= e!3288994 (and tp!1476815 tp!1476816))))

(declare-fun b!5290519 () Bool)

(declare-fun tp!1476817 () Bool)

(assert (=> b!5290519 (= e!3288994 tp!1476817)))

(assert (=> b!5288710 (= tp!1476492 e!3288994)))

(declare-fun b!5290518 () Bool)

(declare-fun tp!1476819 () Bool)

(declare-fun tp!1476818 () Bool)

(assert (=> b!5290518 (= e!3288994 (and tp!1476819 tp!1476818))))

(declare-fun b!5290517 () Bool)

(assert (=> b!5290517 (= e!3288994 tp_is_empty!39095)))

(assert (= (and b!5288710 ((_ is ElementMatch!14921) (reg!15250 (reg!15250 r!7292)))) b!5290517))

(assert (= (and b!5288710 ((_ is Concat!23766) (reg!15250 (reg!15250 r!7292)))) b!5290518))

(assert (= (and b!5288710 ((_ is Star!14921) (reg!15250 (reg!15250 r!7292)))) b!5290519))

(assert (= (and b!5288710 ((_ is Union!14921) (reg!15250 (reg!15250 r!7292)))) b!5290520))

(declare-fun b!5290524 () Bool)

(declare-fun e!3288995 () Bool)

(declare-fun tp!1476820 () Bool)

(declare-fun tp!1476821 () Bool)

(assert (=> b!5290524 (= e!3288995 (and tp!1476820 tp!1476821))))

(declare-fun b!5290523 () Bool)

(declare-fun tp!1476822 () Bool)

(assert (=> b!5290523 (= e!3288995 tp!1476822)))

(assert (=> b!5288711 (= tp!1476490 e!3288995)))

(declare-fun b!5290522 () Bool)

(declare-fun tp!1476824 () Bool)

(declare-fun tp!1476823 () Bool)

(assert (=> b!5290522 (= e!3288995 (and tp!1476824 tp!1476823))))

(declare-fun b!5290521 () Bool)

(assert (=> b!5290521 (= e!3288995 tp_is_empty!39095)))

(assert (= (and b!5288711 ((_ is ElementMatch!14921) (regOne!30355 (reg!15250 r!7292)))) b!5290521))

(assert (= (and b!5288711 ((_ is Concat!23766) (regOne!30355 (reg!15250 r!7292)))) b!5290522))

(assert (= (and b!5288711 ((_ is Star!14921) (regOne!30355 (reg!15250 r!7292)))) b!5290523))

(assert (= (and b!5288711 ((_ is Union!14921) (regOne!30355 (reg!15250 r!7292)))) b!5290524))

(declare-fun b!5290528 () Bool)

(declare-fun e!3288996 () Bool)

(declare-fun tp!1476825 () Bool)

(declare-fun tp!1476826 () Bool)

(assert (=> b!5290528 (= e!3288996 (and tp!1476825 tp!1476826))))

(declare-fun b!5290527 () Bool)

(declare-fun tp!1476827 () Bool)

(assert (=> b!5290527 (= e!3288996 tp!1476827)))

(assert (=> b!5288711 (= tp!1476491 e!3288996)))

(declare-fun b!5290526 () Bool)

(declare-fun tp!1476829 () Bool)

(declare-fun tp!1476828 () Bool)

(assert (=> b!5290526 (= e!3288996 (and tp!1476829 tp!1476828))))

(declare-fun b!5290525 () Bool)

(assert (=> b!5290525 (= e!3288996 tp_is_empty!39095)))

(assert (= (and b!5288711 ((_ is ElementMatch!14921) (regTwo!30355 (reg!15250 r!7292)))) b!5290525))

(assert (= (and b!5288711 ((_ is Concat!23766) (regTwo!30355 (reg!15250 r!7292)))) b!5290526))

(assert (= (and b!5288711 ((_ is Star!14921) (regTwo!30355 (reg!15250 r!7292)))) b!5290527))

(assert (= (and b!5288711 ((_ is Union!14921) (regTwo!30355 (reg!15250 r!7292)))) b!5290528))

(declare-fun b!5290532 () Bool)

(declare-fun e!3288997 () Bool)

(declare-fun tp!1476830 () Bool)

(declare-fun tp!1476831 () Bool)

(assert (=> b!5290532 (= e!3288997 (and tp!1476830 tp!1476831))))

(declare-fun b!5290531 () Bool)

(declare-fun tp!1476832 () Bool)

(assert (=> b!5290531 (= e!3288997 tp!1476832)))

(assert (=> b!5288719 (= tp!1476500 e!3288997)))

(declare-fun b!5290530 () Bool)

(declare-fun tp!1476834 () Bool)

(declare-fun tp!1476833 () Bool)

(assert (=> b!5290530 (= e!3288997 (and tp!1476834 tp!1476833))))

(declare-fun b!5290529 () Bool)

(assert (=> b!5290529 (= e!3288997 tp_is_empty!39095)))

(assert (= (and b!5288719 ((_ is ElementMatch!14921) (regOne!30355 (regTwo!30354 r!7292)))) b!5290529))

(assert (= (and b!5288719 ((_ is Concat!23766) (regOne!30355 (regTwo!30354 r!7292)))) b!5290530))

(assert (= (and b!5288719 ((_ is Star!14921) (regOne!30355 (regTwo!30354 r!7292)))) b!5290531))

(assert (= (and b!5288719 ((_ is Union!14921) (regOne!30355 (regTwo!30354 r!7292)))) b!5290532))

(declare-fun b!5290536 () Bool)

(declare-fun e!3288998 () Bool)

(declare-fun tp!1476835 () Bool)

(declare-fun tp!1476836 () Bool)

(assert (=> b!5290536 (= e!3288998 (and tp!1476835 tp!1476836))))

(declare-fun b!5290535 () Bool)

(declare-fun tp!1476837 () Bool)

(assert (=> b!5290535 (= e!3288998 tp!1476837)))

(assert (=> b!5288719 (= tp!1476501 e!3288998)))

(declare-fun b!5290534 () Bool)

(declare-fun tp!1476839 () Bool)

(declare-fun tp!1476838 () Bool)

(assert (=> b!5290534 (= e!3288998 (and tp!1476839 tp!1476838))))

(declare-fun b!5290533 () Bool)

(assert (=> b!5290533 (= e!3288998 tp_is_empty!39095)))

(assert (= (and b!5288719 ((_ is ElementMatch!14921) (regTwo!30355 (regTwo!30354 r!7292)))) b!5290533))

(assert (= (and b!5288719 ((_ is Concat!23766) (regTwo!30355 (regTwo!30354 r!7292)))) b!5290534))

(assert (= (and b!5288719 ((_ is Star!14921) (regTwo!30355 (regTwo!30354 r!7292)))) b!5290535))

(assert (= (and b!5288719 ((_ is Union!14921) (regTwo!30355 (regTwo!30354 r!7292)))) b!5290536))

(declare-fun b!5290537 () Bool)

(declare-fun e!3288999 () Bool)

(declare-fun tp!1476840 () Bool)

(assert (=> b!5290537 (= e!3288999 (and tp_is_empty!39095 tp!1476840))))

(assert (=> b!5288743 (= tp!1476527 e!3288999)))

(assert (= (and b!5288743 ((_ is Cons!60938) (t!374265 (t!374265 s!2326)))) b!5290537))

(declare-fun b!5290541 () Bool)

(declare-fun e!3289000 () Bool)

(declare-fun tp!1476841 () Bool)

(declare-fun tp!1476842 () Bool)

(assert (=> b!5290541 (= e!3289000 (and tp!1476841 tp!1476842))))

(declare-fun b!5290540 () Bool)

(declare-fun tp!1476843 () Bool)

(assert (=> b!5290540 (= e!3289000 tp!1476843)))

(assert (=> b!5288750 (= tp!1476535 e!3289000)))

(declare-fun b!5290539 () Bool)

(declare-fun tp!1476845 () Bool)

(declare-fun tp!1476844 () Bool)

(assert (=> b!5290539 (= e!3289000 (and tp!1476845 tp!1476844))))

(declare-fun b!5290538 () Bool)

(assert (=> b!5290538 (= e!3289000 tp_is_empty!39095)))

(assert (= (and b!5288750 ((_ is ElementMatch!14921) (reg!15250 (regTwo!30355 r!7292)))) b!5290538))

(assert (= (and b!5288750 ((_ is Concat!23766) (reg!15250 (regTwo!30355 r!7292)))) b!5290539))

(assert (= (and b!5288750 ((_ is Star!14921) (reg!15250 (regTwo!30355 r!7292)))) b!5290540))

(assert (= (and b!5288750 ((_ is Union!14921) (reg!15250 (regTwo!30355 r!7292)))) b!5290541))

(declare-fun b!5290545 () Bool)

(declare-fun e!3289001 () Bool)

(declare-fun tp!1476846 () Bool)

(declare-fun tp!1476847 () Bool)

(assert (=> b!5290545 (= e!3289001 (and tp!1476846 tp!1476847))))

(declare-fun b!5290544 () Bool)

(declare-fun tp!1476848 () Bool)

(assert (=> b!5290544 (= e!3289001 tp!1476848)))

(assert (=> b!5288751 (= tp!1476533 e!3289001)))

(declare-fun b!5290543 () Bool)

(declare-fun tp!1476850 () Bool)

(declare-fun tp!1476849 () Bool)

(assert (=> b!5290543 (= e!3289001 (and tp!1476850 tp!1476849))))

(declare-fun b!5290542 () Bool)

(assert (=> b!5290542 (= e!3289001 tp_is_empty!39095)))

(assert (= (and b!5288751 ((_ is ElementMatch!14921) (regOne!30355 (regTwo!30355 r!7292)))) b!5290542))

(assert (= (and b!5288751 ((_ is Concat!23766) (regOne!30355 (regTwo!30355 r!7292)))) b!5290543))

(assert (= (and b!5288751 ((_ is Star!14921) (regOne!30355 (regTwo!30355 r!7292)))) b!5290544))

(assert (= (and b!5288751 ((_ is Union!14921) (regOne!30355 (regTwo!30355 r!7292)))) b!5290545))

(declare-fun b!5290549 () Bool)

(declare-fun e!3289002 () Bool)

(declare-fun tp!1476851 () Bool)

(declare-fun tp!1476852 () Bool)

(assert (=> b!5290549 (= e!3289002 (and tp!1476851 tp!1476852))))

(declare-fun b!5290548 () Bool)

(declare-fun tp!1476853 () Bool)

(assert (=> b!5290548 (= e!3289002 tp!1476853)))

(assert (=> b!5288751 (= tp!1476534 e!3289002)))

(declare-fun b!5290547 () Bool)

(declare-fun tp!1476855 () Bool)

(declare-fun tp!1476854 () Bool)

(assert (=> b!5290547 (= e!3289002 (and tp!1476855 tp!1476854))))

(declare-fun b!5290546 () Bool)

(assert (=> b!5290546 (= e!3289002 tp_is_empty!39095)))

(assert (= (and b!5288751 ((_ is ElementMatch!14921) (regTwo!30355 (regTwo!30355 r!7292)))) b!5290546))

(assert (= (and b!5288751 ((_ is Concat!23766) (regTwo!30355 (regTwo!30355 r!7292)))) b!5290547))

(assert (= (and b!5288751 ((_ is Star!14921) (regTwo!30355 (regTwo!30355 r!7292)))) b!5290548))

(assert (= (and b!5288751 ((_ is Union!14921) (regTwo!30355 (regTwo!30355 r!7292)))) b!5290549))

(declare-fun b!5290553 () Bool)

(declare-fun e!3289003 () Bool)

(declare-fun tp!1476856 () Bool)

(declare-fun tp!1476857 () Bool)

(assert (=> b!5290553 (= e!3289003 (and tp!1476856 tp!1476857))))

(declare-fun b!5290552 () Bool)

(declare-fun tp!1476858 () Bool)

(assert (=> b!5290552 (= e!3289003 tp!1476858)))

(assert (=> b!5288749 (= tp!1476537 e!3289003)))

(declare-fun b!5290551 () Bool)

(declare-fun tp!1476860 () Bool)

(declare-fun tp!1476859 () Bool)

(assert (=> b!5290551 (= e!3289003 (and tp!1476860 tp!1476859))))

(declare-fun b!5290550 () Bool)

(assert (=> b!5290550 (= e!3289003 tp_is_empty!39095)))

(assert (= (and b!5288749 ((_ is ElementMatch!14921) (regOne!30354 (regTwo!30355 r!7292)))) b!5290550))

(assert (= (and b!5288749 ((_ is Concat!23766) (regOne!30354 (regTwo!30355 r!7292)))) b!5290551))

(assert (= (and b!5288749 ((_ is Star!14921) (regOne!30354 (regTwo!30355 r!7292)))) b!5290552))

(assert (= (and b!5288749 ((_ is Union!14921) (regOne!30354 (regTwo!30355 r!7292)))) b!5290553))

(declare-fun b!5290557 () Bool)

(declare-fun e!3289004 () Bool)

(declare-fun tp!1476861 () Bool)

(declare-fun tp!1476862 () Bool)

(assert (=> b!5290557 (= e!3289004 (and tp!1476861 tp!1476862))))

(declare-fun b!5290556 () Bool)

(declare-fun tp!1476863 () Bool)

(assert (=> b!5290556 (= e!3289004 tp!1476863)))

(assert (=> b!5288749 (= tp!1476536 e!3289004)))

(declare-fun b!5290555 () Bool)

(declare-fun tp!1476865 () Bool)

(declare-fun tp!1476864 () Bool)

(assert (=> b!5290555 (= e!3289004 (and tp!1476865 tp!1476864))))

(declare-fun b!5290554 () Bool)

(assert (=> b!5290554 (= e!3289004 tp_is_empty!39095)))

(assert (= (and b!5288749 ((_ is ElementMatch!14921) (regTwo!30354 (regTwo!30355 r!7292)))) b!5290554))

(assert (= (and b!5288749 ((_ is Concat!23766) (regTwo!30354 (regTwo!30355 r!7292)))) b!5290555))

(assert (= (and b!5288749 ((_ is Star!14921) (regTwo!30354 (regTwo!30355 r!7292)))) b!5290556))

(assert (= (and b!5288749 ((_ is Union!14921) (regTwo!30354 (regTwo!30355 r!7292)))) b!5290557))

(declare-fun b_lambda!204039 () Bool)

(assert (= b_lambda!204037 (or d!1701120 b_lambda!204039)))

(declare-fun bs!1227171 () Bool)

(declare-fun d!1702164 () Bool)

(assert (= bs!1227171 (and d!1702164 d!1701120)))

(assert (=> bs!1227171 (= (dynLambda!24093 lambda!267615 (h!67387 (exprs!4805 setElem!33929))) (validRegex!6657 (h!67387 (exprs!4805 setElem!33929))))))

(declare-fun m!6328038 () Bool)

(assert (=> bs!1227171 m!6328038))

(assert (=> b!5290394 d!1702164))

(declare-fun b_lambda!204041 () Bool)

(assert (= b_lambda!203979 (or d!1701056 b_lambda!204041)))

(declare-fun bs!1227172 () Bool)

(declare-fun d!1702166 () Bool)

(assert (= bs!1227172 (and d!1702166 d!1701056)))

(assert (=> bs!1227172 (= (dynLambda!24093 lambda!267611 (h!67387 (exprs!4805 (h!67388 zl!343)))) (validRegex!6657 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(declare-fun m!6328040 () Bool)

(assert (=> bs!1227172 m!6328040))

(assert (=> b!5289580 d!1702166))

(declare-fun b_lambda!204043 () Bool)

(assert (= b_lambda!203981 (or d!1701182 b_lambda!204043)))

(declare-fun bs!1227173 () Bool)

(declare-fun d!1702168 () Bool)

(assert (= bs!1227173 (and d!1702168 d!1701182)))

(assert (=> bs!1227173 (= (dynLambda!24093 lambda!267639 (h!67387 lt!2161458)) (validRegex!6657 (h!67387 lt!2161458)))))

(declare-fun m!6328042 () Bool)

(assert (=> bs!1227173 m!6328042))

(assert (=> b!5289616 d!1702168))

(declare-fun b_lambda!204045 () Bool)

(assert (= b_lambda!203967 (or d!1701172 b_lambda!204045)))

(declare-fun bs!1227174 () Bool)

(declare-fun d!1702170 () Bool)

(assert (= bs!1227174 (and d!1702170 d!1701172)))

(assert (=> bs!1227174 (= (dynLambda!24093 lambda!267636 (h!67387 (unfocusZipperList!363 zl!343))) (validRegex!6657 (h!67387 (unfocusZipperList!363 zl!343))))))

(declare-fun m!6328044 () Bool)

(assert (=> bs!1227174 m!6328044))

(assert (=> b!5289119 d!1702170))

(declare-fun b_lambda!204047 () Bool)

(assert (= b_lambda!203959 (or b!5288013 b_lambda!204047)))

(declare-fun bs!1227175 () Bool)

(declare-fun d!1702172 () Bool)

(assert (= bs!1227175 (and d!1702172 b!5288013)))

(assert (=> bs!1227175 (= (dynLambda!24097 lambda!267595 (h!67388 (t!374267 lt!2161303))) (>= lt!2161386 (contextDepth!20 (h!67388 (t!374267 lt!2161303)))))))

(assert (=> bs!1227175 m!6326568))

(assert (=> b!5289016 d!1702172))

(declare-fun b_lambda!204049 () Bool)

(assert (= b_lambda!203971 (or d!1701212 b_lambda!204049)))

(declare-fun bs!1227176 () Bool)

(declare-fun d!1702174 () Bool)

(assert (= bs!1227176 (and d!1702174 d!1701212)))

(assert (=> bs!1227176 (= (dynLambda!24093 lambda!267647 (h!67387 lt!2161282)) (validRegex!6657 (h!67387 lt!2161282)))))

(declare-fun m!6328046 () Bool)

(assert (=> bs!1227176 m!6328046))

(assert (=> b!5289199 d!1702174))

(declare-fun b_lambda!204051 () Bool)

(assert (= b_lambda!203985 (or b!5288022 b_lambda!204051)))

(declare-fun bs!1227177 () Bool)

(declare-fun d!1702176 () Bool)

(assert (= bs!1227177 (and d!1702176 b!5288022)))

(assert (=> bs!1227177 (= (dynLambda!24097 lambda!267600 (h!67388 (t!374267 zl!343))) (>= lt!2161390 (contextDepth!20 (h!67388 (t!374267 zl!343)))))))

(assert (=> bs!1227177 m!6327308))

(assert (=> b!5289791 d!1702176))

(declare-fun b_lambda!204053 () Bool)

(assert (= b_lambda!203965 (or b!5287682 b_lambda!204053)))

(assert (=> d!1701470 d!1701266))

(declare-fun b_lambda!204055 () Bool)

(assert (= b_lambda!203973 (or b!5288024 b_lambda!204055)))

(declare-fun bs!1227178 () Bool)

(declare-fun d!1702178 () Bool)

(assert (= bs!1227178 (and d!1702178 b!5288024)))

(assert (=> bs!1227178 (= (dynLambda!24097 lambda!267601 (h!67388 zl!343)) (>= lt!2161388 (contextDepth!20 (h!67388 zl!343))))))

(assert (=> bs!1227178 m!6325600))

(assert (=> b!5289232 d!1702178))

(declare-fun b_lambda!204057 () Bool)

(assert (= b_lambda!203989 (or d!1701030 b_lambda!204057)))

(declare-fun bs!1227179 () Bool)

(declare-fun d!1702180 () Bool)

(assert (= bs!1227179 (and d!1702180 d!1701030)))

(assert (=> bs!1227179 (= (dynLambda!24093 lambda!267584 (h!67387 (exprs!4805 (h!67388 zl!343)))) (validRegex!6657 (h!67387 (exprs!4805 (h!67388 zl!343)))))))

(assert (=> bs!1227179 m!6328040))

(assert (=> b!5289897 d!1702180))

(declare-fun b_lambda!204059 () Bool)

(assert (= b_lambda!203969 (or b!5287682 b_lambda!204059)))

(assert (=> d!1701524 d!1701260))

(declare-fun b_lambda!204061 () Bool)

(assert (= b_lambda!204035 (or b!5287682 b_lambda!204061)))

(assert (=> d!1702120 d!1701262))

(declare-fun b_lambda!204063 () Bool)

(assert (= b_lambda!204033 (or b!5288015 b_lambda!204063)))

(declare-fun bs!1227180 () Bool)

(declare-fun d!1702182 () Bool)

(assert (= bs!1227180 (and d!1702182 b!5288015)))

(assert (=> bs!1227180 (= (dynLambda!24097 lambda!267598 (h!67388 lt!2161303)) (>= lt!2161384 (contextDepth!20 (h!67388 lt!2161303))))))

(assert (=> bs!1227180 m!6325588))

(assert (=> b!5290336 d!1702182))

(declare-fun b_lambda!204065 () Bool)

(assert (= b_lambda!203991 (or d!1701230 b_lambda!204065)))

(declare-fun bs!1227181 () Bool)

(declare-fun d!1702184 () Bool)

(assert (= bs!1227181 (and d!1702184 d!1701230)))

(assert (=> bs!1227181 (= (dynLambda!24093 lambda!267650 (h!67387 lt!2161306)) (validRegex!6657 (h!67387 lt!2161306)))))

(declare-fun m!6328048 () Bool)

(assert (=> bs!1227181 m!6328048))

(assert (=> b!5289908 d!1702184))

(declare-fun b_lambda!204067 () Bool)

(assert (= b_lambda!204001 (or b!5287700 b_lambda!204067)))

(declare-fun bs!1227182 () Bool)

(declare-fun d!1702186 () Bool)

(assert (= bs!1227182 (and d!1702186 b!5287700)))

(assert (=> bs!1227182 (= (dynLambda!24093 lambda!267549 (h!67387 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))))) (validRegex!6657 (h!67387 (t!374266 (t!374266 (exprs!4805 (h!67388 zl!343)))))))))

(declare-fun m!6328050 () Bool)

(assert (=> bs!1227182 m!6328050))

(assert (=> b!5290000 d!1702186))

(check-sat (not d!1701744) (not b!5289827) (not b!5290306) (not b!5290282) (not bm!377004) (not bm!376879) (not b!5290474) (not d!1701704) (not b!5290242) (not b!5290491) (not b!5290541) (not b!5290404) (not b!5289238) (not d!1702138) (not b!5290453) (not b!5290343) (not b!5289309) (not b!5288903) (not bm!376978) (not b!5290395) (not b!5289561) (not bm!376791) (not bm!376872) (not d!1702004) (not b!5290539) (not b!5290500) (not b!5290522) (not bm!376802) (not b!5290506) (not d!1701732) (not d!1701882) (not bm!377025) (not b!5290509) (not b!5289900) (not b!5290325) (not bm!376898) (not d!1701920) (not b!5290482) (not bm!376823) (not b!5290444) (not bm!377000) (not bm!376797) (not b!5290397) (not b!5290328) (not bm!376752) (not b!5290351) (not b!5289565) (not b_lambda!204061) (not d!1701558) (not bm!377014) (not bs!1227179) (not b_lambda!203945) (not b_lambda!204057) (not d!1701912) (not d!1701834) (not d!1701794) (not b!5290383) (not b!5290273) (not b!5290456) (not b!5290502) (not b!5290534) (not b!5290514) (not b!5290347) (not b!5289475) (not b!5290515) (not d!1702106) (not d!1701774) (not b!5289007) (not bm!376873) (not setNonEmpty!33946) (not d!1702112) (not d!1702130) (not b!5289535) (not bm!376893) (not bm!376866) (not b!5289684) (not b!5290285) (not d!1702122) (not b!5290524) (not bm!377021) (not d!1701880) (not bm!377051) (not b!5289824) (not b!5289301) (not b!5290494) (not b!5290510) (not b!5290504) (not b!5289734) (not b!5289700) (not bm!377028) (not d!1702076) (not b!5288922) (not d!1701708) (not b!5290528) (not d!1701584) (not b!5289699) (not d!1701910) (not b!5289635) (not b!5290326) (not d!1701496) (not d!1701888) (not bs!1227180) (not d!1702080) (not bm!377030) (not b!5290003) (not b!5290120) (not b!5289927) (not b!5290478) (not b!5289245) (not b!5288943) (not bm!377005) (not b!5290263) (not b!5290492) (not b!5290276) (not b!5290237) (not b!5290449) (not b!5290398) (not bm!377029) (not b!5290338) (not b!5289084) (not b!5290259) (not d!1701798) (not b!5289332) (not b_lambda!204055) (not bm!376983) (not bs!1227175) (not b!5289130) (not b!5290430) (not d!1701874) (not b!5290308) (not d!1701470) (not b!5290337) (not bm!376821) (not b!5288913) (not b!5289706) (not bs!1227177) (not bm!376980) (not b!5290258) (not b!5289910) (not d!1701706) (not b!5290405) (not b!5290501) (not d!1701526) (not b!5289187) (not b!5290346) (not d!1701422) (not d!1702120) (not b!5290451) (not b!5290025) (not b!5290548) (not d!1701802) (not b!5289129) (not d!1701612) (not d!1701638) (not b!5290284) (not d!1701646) (not b!5290036) (not b!5290535) (not b!5288915) (not b!5289838) (not bm!376882) (not bs!1227173) (not d!1701488) (not b_lambda!203941) (not b!5290303) (not d!1702072) (not d!1702146) (not b!5290553) (not d!1701348) (not d!1701740) (not b!5289480) (not b!5289554) (not b!5290465) (not d!1702144) (not d!1701524) (not b!5289833) (not b!5289107) (not d!1701786) (not b!5289143) (not d!1702018) (not b!5290544) (not b!5290530) (not bm!376880) (not b!5290340) (not b!5290350) (not b!5290477) (not b!5289633) (not bm!376812) (not bm!377035) (not b!5289149) (not bm!376982) (not b!5290400) (not b!5290407) (not b!5290379) (not b!5290240) (not b!5290101) (not bm!376915) (not b!5290040) (not bm!377044) (not b!5290075) (not b!5290555) (not bm!376798) (not b!5289533) (not b!5290526) (not b!5290552) (not d!1701918) (not b!5290536) (not b!5289830) (not bm!376789) (not bs!1227172) (not bm!377050) (not b!5290002) (not d!1701344) (not b!5289909) (not b!5289200) (not b!5290445) (not b!5290272) (not bm!377019) (not d!1701410) (not b!5289082) (not b!5290013) (not b!5289382) (not b!5289733) (not d!1702126) (not b_lambda!203943) (not b!5290439) (not b!5290493) (not b!5289638) (not bm!376827) (not b!5289372) (not d!1701578) (not b!5289792) (not b!5290469) (not b!5289735) (not b_lambda!204045) (not b!5289634) (not b!5290339) (not b!5290476) (not b!5289298) (not b!5290505) (not b!5290523) (not d!1702142) (not b!5289732) (not b!5289896) (not d!1702082) (not b!5289017) (not bm!376851) (not d!1702110) (not d!1702030) (not b!5290480) (not bm!376787) (not b_lambda!204039) (not b!5290458) (not d!1702026) (not bm!376840) (not bm!376912) (not b!5290409) (not d!1702124) (not bm!376822) (not b!5290556) (not b!5290470) (not bm!376881) (not b!5289605) (not b!5289828) (not d!1701998) (not bm!376913) (not b!5289737) (not bm!376900) (not bs!1227171) (not b!5289109) (not b!5289760) (not b!5290257) (not d!1701710) (not b!5290305) (not bm!377027) (not b_lambda!204065) (not b!5290007) (not b!5290448) (not b!5289879) (not b!5290376) (not b!5288911) (not setNonEmpty!33947) (not b!5289581) (not bm!377054) (not d!1701532) (not b!5290004) (not d!1702102) (not bm!376940) (not b!5290447) (not d!1701700) (not d!1702134) (not bm!376825) (not b!5289532) (not bm!376976) (not bm!376941) (not b!5290006) (not bm!376917) (not d!1702062) (not b!5290540) (not d!1702068) (not bm!376811) (not bs!1227176) (not bm!377018) (not b!5289171) (not b!5290462) (not d!1701694) (not b!5289823) (not b!5290344) (not b!5290488) (not bm!376939) (not b!5290389) (not bm!376751) (not d!1702104) (not bm!376790) (not bm!376977) (not b!5289005) (not d!1701364) (not b!5289528) (not b!5290406) (not bm!376927) (not b!5288916) (not b!5290485) (not b!5289895) (not b!5289631) (not b!5290532) (not d!1702132) (not bm!376795) (not b!5289239) (not b!5290497) (not bs!1227182) (not d!1702090) (not b!5289373) (not d!1701848) (not bm!377034) (not d!1701958) (not d!1701812) (not b!5289534) (not bm!377022) (not d!1701768) (not bm!376878) (not d!1701886) (not b!5290557) (not b!5290443) (not b!5290378) (not b!5289191) (not b!5290048) (not d!1702064) (not b!5289233) (not b!5290518) (not b_lambda!203947) (not b!5290089) (not b!5290324) (not setNonEmpty!33944) (not b!5289758) (not b!5289834) (not bm!377045) (not bm!377048) (not b!5290239) (not b_lambda!204041) (not bm!376803) (not b!5290402) (not d!1701864) (not b!5290261) (not b!5290291) (not b!5289142) (not b!5289875) (not b!5289911) (not bm!376807) (not bm!377053) (not b_lambda!204063) (not b!5290498) (not b!5290238) (not b!5289552) (not bs!1227181) (not b!5290418) (not d!1701362) (not b!5289147) (not b!5288997) (not b!5289006) (not b!5289876) (not b!5289886) (not bm!377017) (not b!5289835) (not b!5289832) (not b!5290455) (not bm!377015) (not bm!376916) (not bm!376931) (not b!5290487) (not b!5290551) (not b_lambda!204047) (not d!1702096) (not d!1701408) (not b!5290106) (not b!5290097) (not b!5290280) (not d!1702108) (not b!5290473) (not b!5289139) (not b!5289626) (not bs!1227174) (not b!5288998) (not b!5289617) (not bm!376932) (not b!5290486) (not b!5290481) (not b!5290037) (not d!1701916) (not b!5290484) (not b!5289615) (not b!5289697) (not bm!377052) (not bm!376899) (not d!1702084) (not d!1701972) (not b!5290380) (not b!5289120) (not bm!376750) (not b!5289159) (not bm!377049) (not b!5289499) (not bm!377002) (not b!5289550) (not d!1702070) (not b!5290271) (not d!1701556) (not b!5290549) (not b!5289685) (not b!5290382) (not b!5289375) (not b!5290252) (not b!5290512) (not bm!376837) (not bm!377023) (not b!5289923) (not b!5290102) (not b!5290392) (not b!5289376) (not b!5290508) (not b!5290457) (not bm!376930) (not bm!376975) (not b_lambda!204067) (not b!5289898) (not b!5289235) (not b!5289877) (not b_lambda!204049) (not d!1701776) (not d!1701538) (not d!1701482) (not d!1702028) (not b!5289234) (not d!1701610) (not bm!376796) (not d!1701720) tp_is_empty!39095 (not d!1701974) (not d!1701850) (not b!5290468) (not b!5289880) (not d!1701846) (not b!5290422) (not b!5289270) (not b!5289695) (not b!5290275) (not b!5290274) (not d!1701814) (not bm!376981) (not b!5289527) (not b!5290001) (not b!5290249) (not d!1701540) (not b!5289323) (not bm!376836) (not setNonEmpty!33943) (not b!5289696) (not b!5289488) (not b!5289453) (not d!1701476) (not b!5290281) (not b!5290527) (not b!5290472) (not b!5290341) (not d!1701840) (not bm!376841) (not b!5289661) (not b!5290254) (not b!5289236) (not b!5289551) (not bm!376928) (not b!5290490) (not b!5290537) (not d!1701750) (not b_lambda!204043) (not b!5290531) (not d!1702162) (not b!5290513) (not b!5290464) (not b!5290520) (not d!1701964) (not b!5290519) (not b!5290256) (not b!5290452) (not b!5288901) (not b!5289555) (not d!1702074) (not b!5289371) (not b!5290460) (not b!5290321) (not bs!1227178) (not b!5290547) (not b!5288912) (not d!1702094) (not b!5290103) (not d!1702128) (not b!5290243) (not b!5289636) (not bm!376835) (not d!1701788) (not b!5290342) (not bm!376868) (not b!5289710) (not b_lambda!204053) (not b!5288951) (not b!5289926) (not bm!376974) (not b!5290461) (not b_lambda!204059) (not b!5290309) (not b!5289864) (not b!5290516) (not b!5290496) (not d!1701968) (not b_lambda!204051) (not bm!377046) (not bm!376826) (not bm!376805) (not bm!376806) (not b!5290098) (not bm!376838) (not bm!376999) (not d!1701860) (not b!5289629) (not b!5290466) (not b!5290543) (not b!5290545) (not b!5289679) (not bm!376786) (not b!5290100) (not b!5289111) (not d!1701376) (not bm!376874))
(check-sat)
