; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564054 () Bool)

(assert start!564054)

(declare-fun b!5358071 () Bool)

(assert (=> b!5358071 true))

(assert (=> b!5358071 true))

(declare-fun lambda!275748 () Int)

(declare-fun lambda!275747 () Int)

(assert (=> b!5358071 (not (= lambda!275748 lambda!275747))))

(assert (=> b!5358071 true))

(assert (=> b!5358071 true))

(declare-fun b!5358084 () Bool)

(assert (=> b!5358084 true))

(declare-fun bs!1241370 () Bool)

(declare-fun b!5358058 () Bool)

(assert (= bs!1241370 (and b!5358058 b!5358071)))

(declare-datatypes ((C!30392 0))(
  ( (C!30393 (val!24898 Int)) )
))
(declare-datatypes ((Regex!15061 0))(
  ( (ElementMatch!15061 (c!932915 C!30392)) (Concat!23906 (regOne!30634 Regex!15061) (regTwo!30634 Regex!15061)) (EmptyExpr!15061) (Star!15061 (reg!15390 Regex!15061)) (EmptyLang!15061) (Union!15061 (regOne!30635 Regex!15061) (regTwo!30635 Regex!15061)) )
))
(declare-fun r!7292 () Regex!15061)

(declare-fun lt!2183365 () Regex!15061)

(declare-fun lambda!275750 () Int)

(assert (=> bs!1241370 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275750 lambda!275747))))

(assert (=> bs!1241370 (not (= lambda!275750 lambda!275748))))

(assert (=> b!5358058 true))

(assert (=> b!5358058 true))

(assert (=> b!5358058 true))

(declare-fun lambda!275751 () Int)

(assert (=> bs!1241370 (not (= lambda!275751 lambda!275747))))

(assert (=> bs!1241370 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275751 lambda!275748))))

(assert (=> b!5358058 (not (= lambda!275751 lambda!275750))))

(assert (=> b!5358058 true))

(assert (=> b!5358058 true))

(assert (=> b!5358058 true))

(declare-fun b!5358049 () Bool)

(declare-fun res!2273699 () Bool)

(declare-fun e!3325567 () Bool)

(assert (=> b!5358049 (=> res!2273699 e!3325567)))

(get-info :version)

(assert (=> b!5358049 (= res!2273699 (or ((_ is EmptyExpr!15061) r!7292) ((_ is EmptyLang!15061) r!7292) ((_ is ElementMatch!15061) r!7292) ((_ is Union!15061) r!7292) (not ((_ is Concat!23906) r!7292))))))

(declare-fun b!5358050 () Bool)

(declare-fun e!3325573 () Bool)

(declare-fun tp!1488047 () Bool)

(assert (=> b!5358050 (= e!3325573 tp!1488047)))

(declare-fun b!5358051 () Bool)

(declare-fun res!2273690 () Bool)

(declare-fun e!3325574 () Bool)

(assert (=> b!5358051 (=> (not res!2273690) (not e!3325574))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61482 0))(
  ( (Nil!61358) (Cons!61358 (h!67806 Regex!15061) (t!374703 List!61482)) )
))
(declare-datatypes ((Context!8890 0))(
  ( (Context!8891 (exprs!4945 List!61482)) )
))
(declare-fun z!1189 () (InoxSet Context!8890))

(declare-datatypes ((List!61483 0))(
  ( (Nil!61359) (Cons!61359 (h!67807 Context!8890) (t!374704 List!61483)) )
))
(declare-fun zl!343 () List!61483)

(declare-fun toList!8845 ((InoxSet Context!8890)) List!61483)

(assert (=> b!5358051 (= res!2273690 (= (toList!8845 z!1189) zl!343))))

(declare-fun b!5358052 () Bool)

(declare-fun res!2273706 () Bool)

(declare-fun e!3325576 () Bool)

(assert (=> b!5358052 (=> res!2273706 e!3325576)))

(declare-fun lt!2183378 () Context!8890)

(declare-fun lt!2183383 () Regex!15061)

(declare-fun unfocusZipper!803 (List!61483) Regex!15061)

(assert (=> b!5358052 (= res!2273706 (not (= (unfocusZipper!803 (Cons!61359 lt!2183378 Nil!61359)) lt!2183383)))))

(declare-fun b!5358053 () Bool)

(declare-datatypes ((Unit!153762 0))(
  ( (Unit!153763) )
))
(declare-fun e!3325581 () Unit!153762)

(declare-fun Unit!153764 () Unit!153762)

(assert (=> b!5358053 (= e!3325581 Unit!153764)))

(declare-fun lt!2183379 () (InoxSet Context!8890))

(declare-fun lt!2183357 () (InoxSet Context!8890))

(declare-fun lt!2183360 () Unit!153762)

(declare-datatypes ((List!61484 0))(
  ( (Nil!61360) (Cons!61360 (h!67808 C!30392) (t!374705 List!61484)) )
))
(declare-fun s!2326 () List!61484)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!298 ((InoxSet Context!8890) (InoxSet Context!8890) List!61484) Unit!153762)

(assert (=> b!5358053 (= lt!2183360 (lemmaZipperConcatMatchesSameAsBothZippers!298 lt!2183357 lt!2183379 (t!374705 s!2326)))))

(declare-fun res!2273710 () Bool)

(declare-fun matchZipper!1305 ((InoxSet Context!8890) List!61484) Bool)

(assert (=> b!5358053 (= res!2273710 (matchZipper!1305 lt!2183357 (t!374705 s!2326)))))

(declare-fun e!3325568 () Bool)

(assert (=> b!5358053 (=> res!2273710 e!3325568)))

(assert (=> b!5358053 (= (matchZipper!1305 ((_ map or) lt!2183357 lt!2183379) (t!374705 s!2326)) e!3325568)))

(declare-fun b!5358055 () Bool)

(declare-fun e!3325583 () Bool)

(declare-fun tp!1488053 () Bool)

(assert (=> b!5358055 (= e!3325583 tp!1488053)))

(declare-fun b!5358056 () Bool)

(declare-fun res!2273695 () Bool)

(declare-fun e!3325577 () Bool)

(assert (=> b!5358056 (=> res!2273695 e!3325577)))

(declare-fun e!3325578 () Bool)

(assert (=> b!5358056 (= res!2273695 e!3325578)))

(declare-fun res!2273691 () Bool)

(assert (=> b!5358056 (=> (not res!2273691) (not e!3325578))))

(assert (=> b!5358056 (= res!2273691 ((_ is Concat!23906) (regOne!30634 r!7292)))))

(declare-fun b!5358057 () Bool)

(declare-fun res!2273705 () Bool)

(assert (=> b!5358057 (=> res!2273705 e!3325567)))

(declare-fun generalisedConcat!730 (List!61482) Regex!15061)

(assert (=> b!5358057 (= res!2273705 (not (= r!7292 (generalisedConcat!730 (exprs!4945 (h!67807 zl!343))))))))

(declare-fun e!3325575 () Bool)

(declare-fun e!3325570 () Bool)

(assert (=> b!5358058 (= e!3325575 e!3325570)))

(declare-fun res!2273703 () Bool)

(assert (=> b!5358058 (=> res!2273703 e!3325570)))

(declare-fun validRegex!6797 (Regex!15061) Bool)

(assert (=> b!5358058 (= res!2273703 (not (validRegex!6797 lt!2183365)))))

(declare-fun Exists!2242 (Int) Bool)

(assert (=> b!5358058 (= (Exists!2242 lambda!275750) (Exists!2242 lambda!275751))))

(declare-fun lt!2183367 () Unit!153762)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!896 (Regex!15061 Regex!15061 List!61484) Unit!153762)

(assert (=> b!5358058 (= lt!2183367 (lemmaExistCutMatchRandMatchRSpecEquivalent!896 lt!2183365 (regTwo!30634 r!7292) s!2326))))

(declare-datatypes ((tuple2!64520 0))(
  ( (tuple2!64521 (_1!35563 List!61484) (_2!35563 List!61484)) )
))
(declare-datatypes ((Option!15172 0))(
  ( (None!15171) (Some!15171 (v!51200 tuple2!64520)) )
))
(declare-fun isDefined!11875 (Option!15172) Bool)

(declare-fun findConcatSeparation!1586 (Regex!15061 Regex!15061 List!61484 List!61484 List!61484) Option!15172)

(assert (=> b!5358058 (= (isDefined!11875 (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)) (Exists!2242 lambda!275750))))

(declare-fun lt!2183366 () Unit!153762)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1350 (Regex!15061 Regex!15061 List!61484) Unit!153762)

(assert (=> b!5358058 (= lt!2183366 (lemmaFindConcatSeparationEquivalentToExists!1350 lt!2183365 (regTwo!30634 r!7292) s!2326))))

(declare-fun b!5358059 () Bool)

(declare-fun res!2273700 () Bool)

(assert (=> b!5358059 (=> res!2273700 e!3325567)))

(declare-fun isEmpty!33327 (List!61483) Bool)

(assert (=> b!5358059 (= res!2273700 (not (isEmpty!33327 (t!374704 zl!343))))))

(declare-fun b!5358060 () Bool)

(declare-fun Unit!153765 () Unit!153762)

(assert (=> b!5358060 (= e!3325581 Unit!153765)))

(declare-fun b!5358061 () Bool)

(declare-fun e!3325580 () Bool)

(assert (=> b!5358061 (= e!3325574 e!3325580)))

(declare-fun res!2273697 () Bool)

(assert (=> b!5358061 (=> (not res!2273697) (not e!3325580))))

(declare-fun lt!2183386 () Regex!15061)

(assert (=> b!5358061 (= res!2273697 (= r!7292 lt!2183386))))

(assert (=> b!5358061 (= lt!2183386 (unfocusZipper!803 zl!343))))

(declare-fun b!5358062 () Bool)

(declare-fun e!3325565 () Bool)

(assert (=> b!5358062 (= e!3325565 e!3325576)))

(declare-fun res!2273709 () Bool)

(assert (=> b!5358062 (=> res!2273709 e!3325576)))

(declare-fun lt!2183382 () Context!8890)

(assert (=> b!5358062 (= res!2273709 (not (= (unfocusZipper!803 (Cons!61359 lt!2183382 Nil!61359)) (reg!15390 (regOne!30634 r!7292)))))))

(declare-fun lambda!275749 () Int)

(declare-fun lt!2183354 () (InoxSet Context!8890))

(declare-fun flatMap!788 ((InoxSet Context!8890) Int) (InoxSet Context!8890))

(declare-fun derivationStepZipperUp!433 (Context!8890 C!30392) (InoxSet Context!8890))

(assert (=> b!5358062 (= (flatMap!788 lt!2183354 lambda!275749) (derivationStepZipperUp!433 lt!2183378 (h!67808 s!2326)))))

(declare-fun lt!2183380 () Unit!153762)

(declare-fun lemmaFlatMapOnSingletonSet!320 ((InoxSet Context!8890) Context!8890 Int) Unit!153762)

(assert (=> b!5358062 (= lt!2183380 (lemmaFlatMapOnSingletonSet!320 lt!2183354 lt!2183378 lambda!275749))))

(declare-fun lt!2183355 () (InoxSet Context!8890))

(assert (=> b!5358062 (= (flatMap!788 lt!2183355 lambda!275749) (derivationStepZipperUp!433 lt!2183382 (h!67808 s!2326)))))

(declare-fun lt!2183352 () Unit!153762)

(assert (=> b!5358062 (= lt!2183352 (lemmaFlatMapOnSingletonSet!320 lt!2183355 lt!2183382 lambda!275749))))

(declare-fun lt!2183381 () (InoxSet Context!8890))

(assert (=> b!5358062 (= lt!2183381 (derivationStepZipperUp!433 lt!2183378 (h!67808 s!2326)))))

(declare-fun lt!2183373 () (InoxSet Context!8890))

(assert (=> b!5358062 (= lt!2183373 (derivationStepZipperUp!433 lt!2183382 (h!67808 s!2326)))))

(assert (=> b!5358062 (= lt!2183354 (store ((as const (Array Context!8890 Bool)) false) lt!2183378 true))))

(assert (=> b!5358062 (= lt!2183355 (store ((as const (Array Context!8890 Bool)) false) lt!2183382 true))))

(assert (=> b!5358062 (= lt!2183382 (Context!8891 (Cons!61358 (reg!15390 (regOne!30634 r!7292)) Nil!61358)))))

(declare-fun b!5358063 () Bool)

(declare-fun e!3325582 () Bool)

(assert (=> b!5358063 (= e!3325582 e!3325565)))

(declare-fun res!2273696 () Bool)

(assert (=> b!5358063 (=> res!2273696 e!3325565)))

(declare-fun lt!2183371 () Context!8890)

(declare-fun lt!2183384 () Regex!15061)

(assert (=> b!5358063 (= res!2273696 (not (= (unfocusZipper!803 (Cons!61359 lt!2183371 Nil!61359)) lt!2183384)))))

(assert (=> b!5358063 (= lt!2183384 (Concat!23906 (reg!15390 (regOne!30634 r!7292)) lt!2183383))))

(declare-fun b!5358064 () Bool)

(declare-fun tp!1488050 () Bool)

(declare-fun tp!1488044 () Bool)

(assert (=> b!5358064 (= e!3325583 (and tp!1488050 tp!1488044))))

(declare-fun b!5358065 () Bool)

(assert (=> b!5358065 (= e!3325576 e!3325575)))

(declare-fun res!2273708 () Bool)

(assert (=> b!5358065 (=> res!2273708 e!3325575)))

(declare-fun lt!2183363 () Bool)

(assert (=> b!5358065 (= res!2273708 (not lt!2183363))))

(declare-fun e!3325569 () Bool)

(assert (=> b!5358065 e!3325569))

(declare-fun res!2273707 () Bool)

(assert (=> b!5358065 (=> (not res!2273707) (not e!3325569))))

(declare-fun matchR!7246 (Regex!15061 List!61484) Bool)

(declare-fun matchRSpec!2164 (Regex!15061 List!61484) Bool)

(assert (=> b!5358065 (= res!2273707 (= (matchR!7246 lt!2183384 s!2326) (matchRSpec!2164 lt!2183384 s!2326)))))

(declare-fun lt!2183385 () Unit!153762)

(declare-fun mainMatchTheorem!2164 (Regex!15061 List!61484) Unit!153762)

(assert (=> b!5358065 (= lt!2183385 (mainMatchTheorem!2164 lt!2183384 s!2326))))

(declare-fun setIsEmpty!34669 () Bool)

(declare-fun setRes!34669 () Bool)

(assert (=> setIsEmpty!34669 setRes!34669))

(declare-fun b!5358066 () Bool)

(assert (=> b!5358066 (= e!3325580 (not e!3325567))))

(declare-fun res!2273702 () Bool)

(assert (=> b!5358066 (=> res!2273702 e!3325567)))

(assert (=> b!5358066 (= res!2273702 (not ((_ is Cons!61359) zl!343)))))

(declare-fun lt!2183364 () Bool)

(assert (=> b!5358066 (= lt!2183363 lt!2183364)))

(assert (=> b!5358066 (= lt!2183364 (matchRSpec!2164 r!7292 s!2326))))

(assert (=> b!5358066 (= lt!2183363 (matchR!7246 r!7292 s!2326))))

(declare-fun lt!2183368 () Unit!153762)

(assert (=> b!5358066 (= lt!2183368 (mainMatchTheorem!2164 r!7292 s!2326))))

(declare-fun b!5358054 () Bool)

(declare-fun e!3325571 () Bool)

(declare-fun e!3325584 () Bool)

(assert (=> b!5358054 (= e!3325571 e!3325584)))

(declare-fun res!2273687 () Bool)

(assert (=> b!5358054 (=> res!2273687 e!3325584)))

(declare-fun lt!2183372 () (InoxSet Context!8890))

(declare-fun lt!2183353 () (InoxSet Context!8890))

(assert (=> b!5358054 (= res!2273687 (not (= lt!2183372 lt!2183353)))))

(declare-fun lt!2183358 () (InoxSet Context!8890))

(assert (=> b!5358054 (= (flatMap!788 lt!2183358 lambda!275749) (derivationStepZipperUp!433 lt!2183371 (h!67808 s!2326)))))

(declare-fun lt!2183359 () Unit!153762)

(assert (=> b!5358054 (= lt!2183359 (lemmaFlatMapOnSingletonSet!320 lt!2183358 lt!2183371 lambda!275749))))

(declare-fun lt!2183361 () (InoxSet Context!8890))

(assert (=> b!5358054 (= lt!2183361 (derivationStepZipperUp!433 lt!2183371 (h!67808 s!2326)))))

(declare-fun derivationStepZipper!1300 ((InoxSet Context!8890) C!30392) (InoxSet Context!8890))

(assert (=> b!5358054 (= lt!2183372 (derivationStepZipper!1300 lt!2183358 (h!67808 s!2326)))))

(assert (=> b!5358054 (= lt!2183358 (store ((as const (Array Context!8890 Bool)) false) lt!2183371 true))))

(declare-fun lt!2183370 () List!61482)

(assert (=> b!5358054 (= lt!2183371 (Context!8891 (Cons!61358 (reg!15390 (regOne!30634 r!7292)) lt!2183370)))))

(declare-fun res!2273688 () Bool)

(assert (=> start!564054 (=> (not res!2273688) (not e!3325574))))

(assert (=> start!564054 (= res!2273688 (validRegex!6797 r!7292))))

(assert (=> start!564054 e!3325574))

(assert (=> start!564054 e!3325583))

(declare-fun condSetEmpty!34669 () Bool)

(assert (=> start!564054 (= condSetEmpty!34669 (= z!1189 ((as const (Array Context!8890 Bool)) false)))))

(assert (=> start!564054 setRes!34669))

(declare-fun e!3325566 () Bool)

(assert (=> start!564054 e!3325566))

(declare-fun e!3325579 () Bool)

(assert (=> start!564054 e!3325579))

(declare-fun b!5358067 () Bool)

(assert (=> b!5358067 (= e!3325577 e!3325571)))

(declare-fun res!2273711 () Bool)

(assert (=> b!5358067 (=> res!2273711 e!3325571)))

(assert (=> b!5358067 (= res!2273711 (not (= lt!2183357 lt!2183353)))))

(declare-fun derivationStepZipperDown!509 (Regex!15061 Context!8890 C!30392) (InoxSet Context!8890))

(assert (=> b!5358067 (= lt!2183353 (derivationStepZipperDown!509 (reg!15390 (regOne!30634 r!7292)) lt!2183378 (h!67808 s!2326)))))

(assert (=> b!5358067 (= lt!2183378 (Context!8891 lt!2183370))))

(assert (=> b!5358067 (= lt!2183370 (Cons!61358 lt!2183365 (t!374703 (exprs!4945 (h!67807 zl!343)))))))

(assert (=> b!5358067 (= lt!2183365 (Star!15061 (reg!15390 (regOne!30634 r!7292))))))

(declare-fun b!5358068 () Bool)

(assert (=> b!5358068 (= e!3325569 (or (not lt!2183363) lt!2183364))))

(declare-fun b!5358069 () Bool)

(declare-fun tp!1488051 () Bool)

(declare-fun tp!1488045 () Bool)

(assert (=> b!5358069 (= e!3325583 (and tp!1488051 tp!1488045))))

(declare-fun b!5358070 () Bool)

(declare-fun tp_is_empty!39375 () Bool)

(declare-fun tp!1488046 () Bool)

(assert (=> b!5358070 (= e!3325579 (and tp_is_empty!39375 tp!1488046))))

(declare-fun e!3325572 () Bool)

(assert (=> b!5358071 (= e!3325567 e!3325572)))

(declare-fun res!2273692 () Bool)

(assert (=> b!5358071 (=> res!2273692 e!3325572)))

(declare-fun lt!2183377 () Bool)

(assert (=> b!5358071 (= res!2273692 (or (not (= lt!2183363 lt!2183377)) ((_ is Nil!61360) s!2326)))))

(assert (=> b!5358071 (= (Exists!2242 lambda!275747) (Exists!2242 lambda!275748))))

(declare-fun lt!2183369 () Unit!153762)

(assert (=> b!5358071 (= lt!2183369 (lemmaExistCutMatchRandMatchRSpecEquivalent!896 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326))))

(assert (=> b!5358071 (= lt!2183377 (Exists!2242 lambda!275747))))

(assert (=> b!5358071 (= lt!2183377 (isDefined!11875 (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)))))

(declare-fun lt!2183362 () Unit!153762)

(assert (=> b!5358071 (= lt!2183362 (lemmaFindConcatSeparationEquivalentToExists!1350 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326))))

(declare-fun b!5358072 () Bool)

(assert (=> b!5358072 (= e!3325583 tp_is_empty!39375)))

(declare-fun b!5358073 () Bool)

(declare-fun res!2273701 () Bool)

(assert (=> b!5358073 (=> res!2273701 e!3325584)))

(assert (=> b!5358073 (= res!2273701 (not (= lt!2183386 r!7292)))))

(declare-fun b!5358074 () Bool)

(declare-fun res!2273704 () Bool)

(assert (=> b!5358074 (=> res!2273704 e!3325572)))

(declare-fun isEmpty!33328 (List!61482) Bool)

(assert (=> b!5358074 (= res!2273704 (isEmpty!33328 (t!374703 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun b!5358075 () Bool)

(assert (=> b!5358075 (= e!3325568 (matchZipper!1305 lt!2183379 (t!374705 s!2326)))))

(declare-fun b!5358076 () Bool)

(declare-fun e!3325564 () Bool)

(declare-fun tp!1488049 () Bool)

(assert (=> b!5358076 (= e!3325564 tp!1488049)))

(declare-fun b!5358077 () Bool)

(declare-fun res!2273694 () Bool)

(assert (=> b!5358077 (=> res!2273694 e!3325584)))

(assert (=> b!5358077 (= res!2273694 (not (= (matchZipper!1305 lt!2183358 s!2326) (matchZipper!1305 lt!2183372 (t!374705 s!2326)))))))

(declare-fun b!5358078 () Bool)

(declare-fun nullable!5230 (Regex!15061) Bool)

(assert (=> b!5358078 (= e!3325578 (nullable!5230 (regOne!30634 (regOne!30634 r!7292))))))

(declare-fun b!5358079 () Bool)

(assert (=> b!5358079 (= e!3325570 (validRegex!6797 (regTwo!30634 r!7292)))))

(declare-fun b!5358080 () Bool)

(assert (=> b!5358080 (= e!3325584 e!3325582)))

(declare-fun res!2273693 () Bool)

(assert (=> b!5358080 (=> res!2273693 e!3325582)))

(assert (=> b!5358080 (= res!2273693 (not (= r!7292 lt!2183383)))))

(assert (=> b!5358080 (= lt!2183383 (Concat!23906 lt!2183365 (regTwo!30634 r!7292)))))

(declare-fun tp!1488048 () Bool)

(declare-fun b!5358081 () Bool)

(declare-fun inv!80899 (Context!8890) Bool)

(assert (=> b!5358081 (= e!3325566 (and (inv!80899 (h!67807 zl!343)) e!3325564 tp!1488048))))

(declare-fun b!5358082 () Bool)

(declare-fun res!2273689 () Bool)

(assert (=> b!5358082 (=> res!2273689 e!3325577)))

(assert (=> b!5358082 (= res!2273689 (or ((_ is Concat!23906) (regOne!30634 r!7292)) (not ((_ is Star!15061) (regOne!30634 r!7292)))))))

(declare-fun setElem!34669 () Context!8890)

(declare-fun tp!1488052 () Bool)

(declare-fun setNonEmpty!34669 () Bool)

(assert (=> setNonEmpty!34669 (= setRes!34669 (and tp!1488052 (inv!80899 setElem!34669) e!3325573))))

(declare-fun setRest!34669 () (InoxSet Context!8890))

(assert (=> setNonEmpty!34669 (= z!1189 ((_ map or) (store ((as const (Array Context!8890 Bool)) false) setElem!34669 true) setRest!34669))))

(declare-fun b!5358083 () Bool)

(declare-fun res!2273698 () Bool)

(assert (=> b!5358083 (=> res!2273698 e!3325567)))

(declare-fun generalisedUnion!990 (List!61482) Regex!15061)

(declare-fun unfocusZipperList!503 (List!61483) List!61482)

(assert (=> b!5358083 (= res!2273698 (not (= r!7292 (generalisedUnion!990 (unfocusZipperList!503 zl!343)))))))

(assert (=> b!5358084 (= e!3325572 e!3325577)))

(declare-fun res!2273686 () Bool)

(assert (=> b!5358084 (=> res!2273686 e!3325577)))

(assert (=> b!5358084 (= res!2273686 (or (and ((_ is ElementMatch!15061) (regOne!30634 r!7292)) (= (c!932915 (regOne!30634 r!7292)) (h!67808 s!2326))) ((_ is Union!15061) (regOne!30634 r!7292))))))

(declare-fun lt!2183375 () Unit!153762)

(assert (=> b!5358084 (= lt!2183375 e!3325581)))

(declare-fun c!932914 () Bool)

(assert (=> b!5358084 (= c!932914 (nullable!5230 (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(assert (=> b!5358084 (= (flatMap!788 z!1189 lambda!275749) (derivationStepZipperUp!433 (h!67807 zl!343) (h!67808 s!2326)))))

(declare-fun lt!2183356 () Unit!153762)

(assert (=> b!5358084 (= lt!2183356 (lemmaFlatMapOnSingletonSet!320 z!1189 (h!67807 zl!343) lambda!275749))))

(declare-fun lt!2183376 () Context!8890)

(assert (=> b!5358084 (= lt!2183379 (derivationStepZipperUp!433 lt!2183376 (h!67808 s!2326)))))

(assert (=> b!5358084 (= lt!2183357 (derivationStepZipperDown!509 (h!67806 (exprs!4945 (h!67807 zl!343))) lt!2183376 (h!67808 s!2326)))))

(assert (=> b!5358084 (= lt!2183376 (Context!8891 (t!374703 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun lt!2183374 () (InoxSet Context!8890))

(assert (=> b!5358084 (= lt!2183374 (derivationStepZipperUp!433 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343))))) (h!67808 s!2326)))))

(declare-fun b!5358085 () Bool)

(declare-fun res!2273685 () Bool)

(assert (=> b!5358085 (=> res!2273685 e!3325567)))

(assert (=> b!5358085 (= res!2273685 (not ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343)))))))

(assert (= (and start!564054 res!2273688) b!5358051))

(assert (= (and b!5358051 res!2273690) b!5358061))

(assert (= (and b!5358061 res!2273697) b!5358066))

(assert (= (and b!5358066 (not res!2273702)) b!5358059))

(assert (= (and b!5358059 (not res!2273700)) b!5358057))

(assert (= (and b!5358057 (not res!2273705)) b!5358085))

(assert (= (and b!5358085 (not res!2273685)) b!5358083))

(assert (= (and b!5358083 (not res!2273698)) b!5358049))

(assert (= (and b!5358049 (not res!2273699)) b!5358071))

(assert (= (and b!5358071 (not res!2273692)) b!5358074))

(assert (= (and b!5358074 (not res!2273704)) b!5358084))

(assert (= (and b!5358084 c!932914) b!5358053))

(assert (= (and b!5358084 (not c!932914)) b!5358060))

(assert (= (and b!5358053 (not res!2273710)) b!5358075))

(assert (= (and b!5358084 (not res!2273686)) b!5358056))

(assert (= (and b!5358056 res!2273691) b!5358078))

(assert (= (and b!5358056 (not res!2273695)) b!5358082))

(assert (= (and b!5358082 (not res!2273689)) b!5358067))

(assert (= (and b!5358067 (not res!2273711)) b!5358054))

(assert (= (and b!5358054 (not res!2273687)) b!5358077))

(assert (= (and b!5358077 (not res!2273694)) b!5358073))

(assert (= (and b!5358073 (not res!2273701)) b!5358080))

(assert (= (and b!5358080 (not res!2273693)) b!5358063))

(assert (= (and b!5358063 (not res!2273696)) b!5358062))

(assert (= (and b!5358062 (not res!2273709)) b!5358052))

(assert (= (and b!5358052 (not res!2273706)) b!5358065))

(assert (= (and b!5358065 res!2273707) b!5358068))

(assert (= (and b!5358065 (not res!2273708)) b!5358058))

(assert (= (and b!5358058 (not res!2273703)) b!5358079))

(assert (= (and start!564054 ((_ is ElementMatch!15061) r!7292)) b!5358072))

(assert (= (and start!564054 ((_ is Concat!23906) r!7292)) b!5358064))

(assert (= (and start!564054 ((_ is Star!15061) r!7292)) b!5358055))

(assert (= (and start!564054 ((_ is Union!15061) r!7292)) b!5358069))

(assert (= (and start!564054 condSetEmpty!34669) setIsEmpty!34669))

(assert (= (and start!564054 (not condSetEmpty!34669)) setNonEmpty!34669))

(assert (= setNonEmpty!34669 b!5358050))

(assert (= b!5358081 b!5358076))

(assert (= (and start!564054 ((_ is Cons!61359) zl!343)) b!5358081))

(assert (= (and start!564054 ((_ is Cons!61360) s!2326)) b!5358070))

(declare-fun m!6387414 () Bool)

(assert (=> b!5358065 m!6387414))

(declare-fun m!6387416 () Bool)

(assert (=> b!5358065 m!6387416))

(declare-fun m!6387418 () Bool)

(assert (=> b!5358065 m!6387418))

(declare-fun m!6387420 () Bool)

(assert (=> b!5358075 m!6387420))

(declare-fun m!6387422 () Bool)

(assert (=> b!5358057 m!6387422))

(declare-fun m!6387424 () Bool)

(assert (=> b!5358059 m!6387424))

(declare-fun m!6387426 () Bool)

(assert (=> b!5358052 m!6387426))

(declare-fun m!6387428 () Bool)

(assert (=> b!5358081 m!6387428))

(declare-fun m!6387430 () Bool)

(assert (=> b!5358078 m!6387430))

(declare-fun m!6387432 () Bool)

(assert (=> b!5358066 m!6387432))

(declare-fun m!6387434 () Bool)

(assert (=> b!5358066 m!6387434))

(declare-fun m!6387436 () Bool)

(assert (=> b!5358066 m!6387436))

(declare-fun m!6387438 () Bool)

(assert (=> b!5358083 m!6387438))

(assert (=> b!5358083 m!6387438))

(declare-fun m!6387440 () Bool)

(assert (=> b!5358083 m!6387440))

(declare-fun m!6387442 () Bool)

(assert (=> b!5358071 m!6387442))

(declare-fun m!6387444 () Bool)

(assert (=> b!5358071 m!6387444))

(declare-fun m!6387446 () Bool)

(assert (=> b!5358071 m!6387446))

(declare-fun m!6387448 () Bool)

(assert (=> b!5358071 m!6387448))

(assert (=> b!5358071 m!6387446))

(declare-fun m!6387450 () Bool)

(assert (=> b!5358071 m!6387450))

(assert (=> b!5358071 m!6387442))

(declare-fun m!6387452 () Bool)

(assert (=> b!5358071 m!6387452))

(declare-fun m!6387454 () Bool)

(assert (=> b!5358067 m!6387454))

(declare-fun m!6387456 () Bool)

(assert (=> b!5358053 m!6387456))

(declare-fun m!6387458 () Bool)

(assert (=> b!5358053 m!6387458))

(declare-fun m!6387460 () Bool)

(assert (=> b!5358053 m!6387460))

(declare-fun m!6387462 () Bool)

(assert (=> start!564054 m!6387462))

(declare-fun m!6387464 () Bool)

(assert (=> b!5358063 m!6387464))

(declare-fun m!6387466 () Bool)

(assert (=> b!5358079 m!6387466))

(declare-fun m!6387468 () Bool)

(assert (=> setNonEmpty!34669 m!6387468))

(declare-fun m!6387470 () Bool)

(assert (=> b!5358051 m!6387470))

(declare-fun m!6387472 () Bool)

(assert (=> b!5358054 m!6387472))

(declare-fun m!6387474 () Bool)

(assert (=> b!5358054 m!6387474))

(declare-fun m!6387476 () Bool)

(assert (=> b!5358054 m!6387476))

(declare-fun m!6387478 () Bool)

(assert (=> b!5358054 m!6387478))

(declare-fun m!6387480 () Bool)

(assert (=> b!5358054 m!6387480))

(declare-fun m!6387482 () Bool)

(assert (=> b!5358077 m!6387482))

(declare-fun m!6387484 () Bool)

(assert (=> b!5358077 m!6387484))

(declare-fun m!6387486 () Bool)

(assert (=> b!5358074 m!6387486))

(declare-fun m!6387488 () Bool)

(assert (=> b!5358058 m!6387488))

(declare-fun m!6387490 () Bool)

(assert (=> b!5358058 m!6387490))

(declare-fun m!6387492 () Bool)

(assert (=> b!5358058 m!6387492))

(assert (=> b!5358058 m!6387490))

(declare-fun m!6387494 () Bool)

(assert (=> b!5358058 m!6387494))

(declare-fun m!6387496 () Bool)

(assert (=> b!5358058 m!6387496))

(declare-fun m!6387498 () Bool)

(assert (=> b!5358058 m!6387498))

(declare-fun m!6387500 () Bool)

(assert (=> b!5358058 m!6387500))

(assert (=> b!5358058 m!6387498))

(declare-fun m!6387502 () Bool)

(assert (=> b!5358084 m!6387502))

(declare-fun m!6387504 () Bool)

(assert (=> b!5358084 m!6387504))

(declare-fun m!6387506 () Bool)

(assert (=> b!5358084 m!6387506))

(declare-fun m!6387508 () Bool)

(assert (=> b!5358084 m!6387508))

(declare-fun m!6387510 () Bool)

(assert (=> b!5358084 m!6387510))

(declare-fun m!6387512 () Bool)

(assert (=> b!5358084 m!6387512))

(declare-fun m!6387514 () Bool)

(assert (=> b!5358084 m!6387514))

(declare-fun m!6387516 () Bool)

(assert (=> b!5358062 m!6387516))

(declare-fun m!6387518 () Bool)

(assert (=> b!5358062 m!6387518))

(declare-fun m!6387520 () Bool)

(assert (=> b!5358062 m!6387520))

(declare-fun m!6387522 () Bool)

(assert (=> b!5358062 m!6387522))

(declare-fun m!6387524 () Bool)

(assert (=> b!5358062 m!6387524))

(declare-fun m!6387526 () Bool)

(assert (=> b!5358062 m!6387526))

(declare-fun m!6387528 () Bool)

(assert (=> b!5358062 m!6387528))

(declare-fun m!6387530 () Bool)

(assert (=> b!5358062 m!6387530))

(declare-fun m!6387532 () Bool)

(assert (=> b!5358062 m!6387532))

(declare-fun m!6387534 () Bool)

(assert (=> b!5358061 m!6387534))

(check-sat (not b!5358070) (not b!5358074) (not b!5358058) (not b!5358059) (not b!5358055) (not b!5358061) (not b!5358081) (not setNonEmpty!34669) (not start!564054) (not b!5358051) (not b!5358062) (not b!5358053) (not b!5358057) (not b!5358066) (not b!5358067) tp_is_empty!39375 (not b!5358076) (not b!5358065) (not b!5358054) (not b!5358052) (not b!5358063) (not b!5358083) (not b!5358077) (not b!5358079) (not b!5358071) (not b!5358064) (not b!5358078) (not b!5358050) (not b!5358075) (not b!5358069) (not b!5358084))
(check-sat)
(get-model)

(declare-fun b!5358187 () Bool)

(declare-fun res!2273769 () Bool)

(declare-fun e!3325648 () Bool)

(assert (=> b!5358187 (=> (not res!2273769) (not e!3325648))))

(declare-fun lt!2183409 () Option!15172)

(declare-fun get!21102 (Option!15172) tuple2!64520)

(assert (=> b!5358187 (= res!2273769 (matchR!7246 (regTwo!30634 r!7292) (_2!35563 (get!21102 lt!2183409))))))

(declare-fun b!5358188 () Bool)

(declare-fun ++!13366 (List!61484 List!61484) List!61484)

(assert (=> b!5358188 (= e!3325648 (= (++!13366 (_1!35563 (get!21102 lt!2183409)) (_2!35563 (get!21102 lt!2183409))) s!2326))))

(declare-fun b!5358189 () Bool)

(declare-fun e!3325647 () Option!15172)

(declare-fun e!3325650 () Option!15172)

(assert (=> b!5358189 (= e!3325647 e!3325650)))

(declare-fun c!932937 () Bool)

(assert (=> b!5358189 (= c!932937 ((_ is Nil!61360) s!2326))))

(declare-fun b!5358190 () Bool)

(declare-fun res!2273771 () Bool)

(assert (=> b!5358190 (=> (not res!2273771) (not e!3325648))))

(assert (=> b!5358190 (= res!2273771 (matchR!7246 (regOne!30634 r!7292) (_1!35563 (get!21102 lt!2183409))))))

(declare-fun b!5358191 () Bool)

(declare-fun lt!2183410 () Unit!153762)

(declare-fun lt!2183408 () Unit!153762)

(assert (=> b!5358191 (= lt!2183410 lt!2183408)))

(assert (=> b!5358191 (= (++!13366 (++!13366 Nil!61360 (Cons!61360 (h!67808 s!2326) Nil!61360)) (t!374705 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1781 (List!61484 C!30392 List!61484 List!61484) Unit!153762)

(assert (=> b!5358191 (= lt!2183408 (lemmaMoveElementToOtherListKeepsConcatEq!1781 Nil!61360 (h!67808 s!2326) (t!374705 s!2326) s!2326))))

(assert (=> b!5358191 (= e!3325650 (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) (++!13366 Nil!61360 (Cons!61360 (h!67808 s!2326) Nil!61360)) (t!374705 s!2326) s!2326))))

(declare-fun b!5358192 () Bool)

(declare-fun e!3325646 () Bool)

(assert (=> b!5358192 (= e!3325646 (not (isDefined!11875 lt!2183409)))))

(declare-fun b!5358193 () Bool)

(declare-fun e!3325649 () Bool)

(assert (=> b!5358193 (= e!3325649 (matchR!7246 (regTwo!30634 r!7292) s!2326))))

(declare-fun b!5358195 () Bool)

(assert (=> b!5358195 (= e!3325650 None!15171)))

(declare-fun b!5358194 () Bool)

(assert (=> b!5358194 (= e!3325647 (Some!15171 (tuple2!64521 Nil!61360 s!2326)))))

(declare-fun d!1717112 () Bool)

(assert (=> d!1717112 e!3325646))

(declare-fun res!2273767 () Bool)

(assert (=> d!1717112 (=> res!2273767 e!3325646)))

(assert (=> d!1717112 (= res!2273767 e!3325648)))

(declare-fun res!2273770 () Bool)

(assert (=> d!1717112 (=> (not res!2273770) (not e!3325648))))

(assert (=> d!1717112 (= res!2273770 (isDefined!11875 lt!2183409))))

(assert (=> d!1717112 (= lt!2183409 e!3325647)))

(declare-fun c!932936 () Bool)

(assert (=> d!1717112 (= c!932936 e!3325649)))

(declare-fun res!2273768 () Bool)

(assert (=> d!1717112 (=> (not res!2273768) (not e!3325649))))

(assert (=> d!1717112 (= res!2273768 (matchR!7246 (regOne!30634 r!7292) Nil!61360))))

(assert (=> d!1717112 (validRegex!6797 (regOne!30634 r!7292))))

(assert (=> d!1717112 (= (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326) lt!2183409)))

(assert (= (and d!1717112 res!2273768) b!5358193))

(assert (= (and d!1717112 c!932936) b!5358194))

(assert (= (and d!1717112 (not c!932936)) b!5358189))

(assert (= (and b!5358189 c!932937) b!5358195))

(assert (= (and b!5358189 (not c!932937)) b!5358191))

(assert (= (and d!1717112 res!2273770) b!5358190))

(assert (= (and b!5358190 res!2273771) b!5358187))

(assert (= (and b!5358187 res!2273769) b!5358188))

(assert (= (and d!1717112 (not res!2273767)) b!5358192))

(declare-fun m!6387588 () Bool)

(assert (=> b!5358193 m!6387588))

(declare-fun m!6387590 () Bool)

(assert (=> b!5358190 m!6387590))

(declare-fun m!6387598 () Bool)

(assert (=> b!5358190 m!6387598))

(declare-fun m!6387602 () Bool)

(assert (=> d!1717112 m!6387602))

(declare-fun m!6387604 () Bool)

(assert (=> d!1717112 m!6387604))

(declare-fun m!6387608 () Bool)

(assert (=> d!1717112 m!6387608))

(assert (=> b!5358187 m!6387590))

(declare-fun m!6387616 () Bool)

(assert (=> b!5358187 m!6387616))

(assert (=> b!5358192 m!6387602))

(declare-fun m!6387622 () Bool)

(assert (=> b!5358191 m!6387622))

(assert (=> b!5358191 m!6387622))

(declare-fun m!6387626 () Bool)

(assert (=> b!5358191 m!6387626))

(declare-fun m!6387628 () Bool)

(assert (=> b!5358191 m!6387628))

(assert (=> b!5358191 m!6387622))

(declare-fun m!6387636 () Bool)

(assert (=> b!5358191 m!6387636))

(assert (=> b!5358188 m!6387590))

(declare-fun m!6387644 () Bool)

(assert (=> b!5358188 m!6387644))

(assert (=> b!5358071 d!1717112))

(declare-fun d!1717130 () Bool)

(declare-fun choose!40206 (Int) Bool)

(assert (=> d!1717130 (= (Exists!2242 lambda!275747) (choose!40206 lambda!275747))))

(declare-fun bs!1241384 () Bool)

(assert (= bs!1241384 d!1717130))

(declare-fun m!6387658 () Bool)

(assert (=> bs!1241384 m!6387658))

(assert (=> b!5358071 d!1717130))

(declare-fun d!1717136 () Bool)

(assert (=> d!1717136 (= (Exists!2242 lambda!275748) (choose!40206 lambda!275748))))

(declare-fun bs!1241385 () Bool)

(assert (= bs!1241385 d!1717136))

(declare-fun m!6387660 () Bool)

(assert (=> bs!1241385 m!6387660))

(assert (=> b!5358071 d!1717136))

(declare-fun bs!1241402 () Bool)

(declare-fun d!1717138 () Bool)

(assert (= bs!1241402 (and d!1717138 b!5358071)))

(declare-fun lambda!275770 () Int)

(assert (=> bs!1241402 (= lambda!275770 lambda!275747)))

(assert (=> bs!1241402 (not (= lambda!275770 lambda!275748))))

(declare-fun bs!1241403 () Bool)

(assert (= bs!1241403 (and d!1717138 b!5358058)))

(assert (=> bs!1241403 (= (= (regOne!30634 r!7292) lt!2183365) (= lambda!275770 lambda!275750))))

(assert (=> bs!1241403 (not (= lambda!275770 lambda!275751))))

(assert (=> d!1717138 true))

(assert (=> d!1717138 true))

(assert (=> d!1717138 true))

(assert (=> d!1717138 (= (isDefined!11875 (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)) (Exists!2242 lambda!275770))))

(declare-fun lt!2183426 () Unit!153762)

(declare-fun choose!40207 (Regex!15061 Regex!15061 List!61484) Unit!153762)

(assert (=> d!1717138 (= lt!2183426 (choose!40207 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326))))

(assert (=> d!1717138 (validRegex!6797 (regOne!30634 r!7292))))

(assert (=> d!1717138 (= (lemmaFindConcatSeparationEquivalentToExists!1350 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326) lt!2183426)))

(declare-fun bs!1241404 () Bool)

(assert (= bs!1241404 d!1717138))

(declare-fun m!6387702 () Bool)

(assert (=> bs!1241404 m!6387702))

(declare-fun m!6387704 () Bool)

(assert (=> bs!1241404 m!6387704))

(assert (=> bs!1241404 m!6387608))

(assert (=> bs!1241404 m!6387442))

(assert (=> bs!1241404 m!6387442))

(assert (=> bs!1241404 m!6387444))

(assert (=> b!5358071 d!1717138))

(declare-fun bs!1241419 () Bool)

(declare-fun d!1717160 () Bool)

(assert (= bs!1241419 (and d!1717160 d!1717138)))

(declare-fun lambda!275781 () Int)

(assert (=> bs!1241419 (= lambda!275781 lambda!275770)))

(declare-fun bs!1241420 () Bool)

(assert (= bs!1241420 (and d!1717160 b!5358071)))

(assert (=> bs!1241420 (= lambda!275781 lambda!275747)))

(assert (=> bs!1241420 (not (= lambda!275781 lambda!275748))))

(declare-fun bs!1241423 () Bool)

(assert (= bs!1241423 (and d!1717160 b!5358058)))

(assert (=> bs!1241423 (= (= (regOne!30634 r!7292) lt!2183365) (= lambda!275781 lambda!275750))))

(assert (=> bs!1241423 (not (= lambda!275781 lambda!275751))))

(assert (=> d!1717160 true))

(assert (=> d!1717160 true))

(assert (=> d!1717160 true))

(declare-fun lambda!275782 () Int)

(assert (=> bs!1241419 (not (= lambda!275782 lambda!275770))))

(assert (=> bs!1241420 (not (= lambda!275782 lambda!275747))))

(assert (=> bs!1241420 (= lambda!275782 lambda!275748)))

(assert (=> bs!1241423 (not (= lambda!275782 lambda!275750))))

(assert (=> bs!1241423 (= (= (regOne!30634 r!7292) lt!2183365) (= lambda!275782 lambda!275751))))

(declare-fun bs!1241425 () Bool)

(assert (= bs!1241425 d!1717160))

(assert (=> bs!1241425 (not (= lambda!275782 lambda!275781))))

(assert (=> d!1717160 true))

(assert (=> d!1717160 true))

(assert (=> d!1717160 true))

(assert (=> d!1717160 (= (Exists!2242 lambda!275781) (Exists!2242 lambda!275782))))

(declare-fun lt!2183430 () Unit!153762)

(declare-fun choose!40208 (Regex!15061 Regex!15061 List!61484) Unit!153762)

(assert (=> d!1717160 (= lt!2183430 (choose!40208 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326))))

(assert (=> d!1717160 (validRegex!6797 (regOne!30634 r!7292))))

(assert (=> d!1717160 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!896 (regOne!30634 r!7292) (regTwo!30634 r!7292) s!2326) lt!2183430)))

(declare-fun m!6387736 () Bool)

(assert (=> bs!1241425 m!6387736))

(declare-fun m!6387738 () Bool)

(assert (=> bs!1241425 m!6387738))

(declare-fun m!6387740 () Bool)

(assert (=> bs!1241425 m!6387740))

(assert (=> bs!1241425 m!6387608))

(assert (=> b!5358071 d!1717160))

(declare-fun d!1717174 () Bool)

(declare-fun isEmpty!33331 (Option!15172) Bool)

(assert (=> d!1717174 (= (isDefined!11875 (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)) (not (isEmpty!33331 (findConcatSeparation!1586 (regOne!30634 r!7292) (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326))))))

(declare-fun bs!1241426 () Bool)

(assert (= bs!1241426 d!1717174))

(assert (=> bs!1241426 m!6387442))

(declare-fun m!6387742 () Bool)

(assert (=> bs!1241426 m!6387742))

(assert (=> b!5358071 d!1717174))

(declare-fun bs!1241439 () Bool)

(declare-fun b!5358448 () Bool)

(assert (= bs!1241439 (and b!5358448 d!1717138)))

(declare-fun lambda!275796 () Int)

(assert (=> bs!1241439 (not (= lambda!275796 lambda!275770))))

(declare-fun bs!1241440 () Bool)

(assert (= bs!1241440 (and b!5358448 b!5358071)))

(assert (=> bs!1241440 (not (= lambda!275796 lambda!275747))))

(assert (=> bs!1241440 (not (= lambda!275796 lambda!275748))))

(declare-fun bs!1241441 () Bool)

(assert (= bs!1241441 (and b!5358448 b!5358058)))

(assert (=> bs!1241441 (not (= lambda!275796 lambda!275750))))

(declare-fun bs!1241442 () Bool)

(assert (= bs!1241442 (and b!5358448 d!1717160)))

(assert (=> bs!1241442 (not (= lambda!275796 lambda!275782))))

(assert (=> bs!1241441 (not (= lambda!275796 lambda!275751))))

(assert (=> bs!1241442 (not (= lambda!275796 lambda!275781))))

(assert (=> b!5358448 true))

(assert (=> b!5358448 true))

(declare-fun bs!1241443 () Bool)

(declare-fun b!5358444 () Bool)

(assert (= bs!1241443 (and b!5358444 d!1717138)))

(declare-fun lambda!275797 () Int)

(assert (=> bs!1241443 (not (= lambda!275797 lambda!275770))))

(declare-fun bs!1241444 () Bool)

(assert (= bs!1241444 (and b!5358444 b!5358071)))

(assert (=> bs!1241444 (= lambda!275797 lambda!275748)))

(declare-fun bs!1241445 () Bool)

(assert (= bs!1241445 (and b!5358444 b!5358058)))

(assert (=> bs!1241445 (not (= lambda!275797 lambda!275750))))

(declare-fun bs!1241446 () Bool)

(assert (= bs!1241446 (and b!5358444 d!1717160)))

(assert (=> bs!1241446 (= lambda!275797 lambda!275782)))

(assert (=> bs!1241445 (= (= (regOne!30634 r!7292) lt!2183365) (= lambda!275797 lambda!275751))))

(assert (=> bs!1241446 (not (= lambda!275797 lambda!275781))))

(declare-fun bs!1241447 () Bool)

(assert (= bs!1241447 (and b!5358444 b!5358448)))

(assert (=> bs!1241447 (not (= lambda!275797 lambda!275796))))

(assert (=> bs!1241444 (not (= lambda!275797 lambda!275747))))

(assert (=> b!5358444 true))

(assert (=> b!5358444 true))

(declare-fun d!1717176 () Bool)

(declare-fun c!933012 () Bool)

(assert (=> d!1717176 (= c!933012 ((_ is EmptyExpr!15061) r!7292))))

(declare-fun e!3325790 () Bool)

(assert (=> d!1717176 (= (matchRSpec!2164 r!7292 s!2326) e!3325790)))

(declare-fun b!5358440 () Bool)

(declare-fun call!383236 () Bool)

(assert (=> b!5358440 (= e!3325790 call!383236)))

(declare-fun b!5358441 () Bool)

(declare-fun e!3325795 () Bool)

(declare-fun e!3325792 () Bool)

(assert (=> b!5358441 (= e!3325795 e!3325792)))

(declare-fun res!2273875 () Bool)

(assert (=> b!5358441 (= res!2273875 (matchRSpec!2164 (regOne!30635 r!7292) s!2326))))

(assert (=> b!5358441 (=> res!2273875 e!3325792)))

(declare-fun b!5358442 () Bool)

(assert (=> b!5358442 (= e!3325792 (matchRSpec!2164 (regTwo!30635 r!7292) s!2326))))

(declare-fun b!5358443 () Bool)

(declare-fun e!3325796 () Bool)

(assert (=> b!5358443 (= e!3325796 (= s!2326 (Cons!61360 (c!932915 r!7292) Nil!61360)))))

(declare-fun e!3325791 () Bool)

(declare-fun call!383235 () Bool)

(assert (=> b!5358444 (= e!3325791 call!383235)))

(declare-fun b!5358445 () Bool)

(declare-fun c!933011 () Bool)

(assert (=> b!5358445 (= c!933011 ((_ is ElementMatch!15061) r!7292))))

(declare-fun e!3325794 () Bool)

(assert (=> b!5358445 (= e!3325794 e!3325796)))

(declare-fun b!5358446 () Bool)

(declare-fun res!2273876 () Bool)

(declare-fun e!3325793 () Bool)

(assert (=> b!5358446 (=> res!2273876 e!3325793)))

(assert (=> b!5358446 (= res!2273876 call!383236)))

(assert (=> b!5358446 (= e!3325791 e!3325793)))

(declare-fun b!5358447 () Bool)

(declare-fun c!933009 () Bool)

(assert (=> b!5358447 (= c!933009 ((_ is Union!15061) r!7292))))

(assert (=> b!5358447 (= e!3325796 e!3325795)))

(declare-fun c!933010 () Bool)

(declare-fun bm!383230 () Bool)

(assert (=> bm!383230 (= call!383235 (Exists!2242 (ite c!933010 lambda!275796 lambda!275797)))))

(assert (=> b!5358448 (= e!3325793 call!383235)))

(declare-fun b!5358449 () Bool)

(assert (=> b!5358449 (= e!3325790 e!3325794)))

(declare-fun res!2273874 () Bool)

(assert (=> b!5358449 (= res!2273874 (not ((_ is EmptyLang!15061) r!7292)))))

(assert (=> b!5358449 (=> (not res!2273874) (not e!3325794))))

(declare-fun bm!383231 () Bool)

(declare-fun isEmpty!33332 (List!61484) Bool)

(assert (=> bm!383231 (= call!383236 (isEmpty!33332 s!2326))))

(declare-fun b!5358450 () Bool)

(assert (=> b!5358450 (= e!3325795 e!3325791)))

(assert (=> b!5358450 (= c!933010 ((_ is Star!15061) r!7292))))

(assert (= (and d!1717176 c!933012) b!5358440))

(assert (= (and d!1717176 (not c!933012)) b!5358449))

(assert (= (and b!5358449 res!2273874) b!5358445))

(assert (= (and b!5358445 c!933011) b!5358443))

(assert (= (and b!5358445 (not c!933011)) b!5358447))

(assert (= (and b!5358447 c!933009) b!5358441))

(assert (= (and b!5358447 (not c!933009)) b!5358450))

(assert (= (and b!5358441 (not res!2273875)) b!5358442))

(assert (= (and b!5358450 c!933010) b!5358446))

(assert (= (and b!5358450 (not c!933010)) b!5358444))

(assert (= (and b!5358446 (not res!2273876)) b!5358448))

(assert (= (or b!5358448 b!5358444) bm!383230))

(assert (= (or b!5358440 b!5358446) bm!383231))

(declare-fun m!6387806 () Bool)

(assert (=> b!5358441 m!6387806))

(declare-fun m!6387808 () Bool)

(assert (=> b!5358442 m!6387808))

(declare-fun m!6387810 () Bool)

(assert (=> bm!383230 m!6387810))

(declare-fun m!6387812 () Bool)

(assert (=> bm!383231 m!6387812))

(assert (=> b!5358066 d!1717176))

(declare-fun b!5358574 () Bool)

(declare-fun e!3325861 () Bool)

(declare-fun head!11489 (List!61484) C!30392)

(assert (=> b!5358574 (= e!3325861 (not (= (head!11489 s!2326) (c!932915 r!7292))))))

(declare-fun b!5358575 () Bool)

(declare-fun e!3325867 () Bool)

(assert (=> b!5358575 (= e!3325867 (nullable!5230 r!7292))))

(declare-fun b!5358576 () Bool)

(declare-fun e!3325866 () Bool)

(declare-fun e!3325863 () Bool)

(assert (=> b!5358576 (= e!3325866 e!3325863)))

(declare-fun c!933058 () Bool)

(assert (=> b!5358576 (= c!933058 ((_ is EmptyLang!15061) r!7292))))

(declare-fun b!5358577 () Bool)

(declare-fun e!3325860 () Bool)

(declare-fun e!3325869 () Bool)

(assert (=> b!5358577 (= e!3325860 e!3325869)))

(declare-fun res!2273913 () Bool)

(assert (=> b!5358577 (=> (not res!2273913) (not e!3325869))))

(declare-fun lt!2183456 () Bool)

(assert (=> b!5358577 (= res!2273913 (not lt!2183456))))

(declare-fun b!5358578 () Bool)

(declare-fun res!2273914 () Bool)

(assert (=> b!5358578 (=> res!2273914 e!3325861)))

(declare-fun tail!10586 (List!61484) List!61484)

(assert (=> b!5358578 (= res!2273914 (not (isEmpty!33332 (tail!10586 s!2326))))))

(declare-fun b!5358579 () Bool)

(declare-fun res!2273915 () Bool)

(declare-fun e!3325868 () Bool)

(assert (=> b!5358579 (=> (not res!2273915) (not e!3325868))))

(declare-fun call!383270 () Bool)

(assert (=> b!5358579 (= res!2273915 (not call!383270))))

(declare-fun b!5358580 () Bool)

(declare-fun res!2273911 () Bool)

(assert (=> b!5358580 (=> res!2273911 e!3325860)))

(assert (=> b!5358580 (= res!2273911 e!3325868)))

(declare-fun res!2273917 () Bool)

(assert (=> b!5358580 (=> (not res!2273917) (not e!3325868))))

(assert (=> b!5358580 (= res!2273917 lt!2183456)))

(declare-fun bm!383265 () Bool)

(assert (=> bm!383265 (= call!383270 (isEmpty!33332 s!2326))))

(declare-fun b!5358581 () Bool)

(assert (=> b!5358581 (= e!3325866 (= lt!2183456 call!383270))))

(declare-fun b!5358582 () Bool)

(assert (=> b!5358582 (= e!3325863 (not lt!2183456))))

(declare-fun b!5358583 () Bool)

(assert (=> b!5358583 (= e!3325868 (= (head!11489 s!2326) (c!932915 r!7292)))))

(declare-fun b!5358584 () Bool)

(declare-fun derivativeStep!4207 (Regex!15061 C!30392) Regex!15061)

(assert (=> b!5358584 (= e!3325867 (matchR!7246 (derivativeStep!4207 r!7292 (head!11489 s!2326)) (tail!10586 s!2326)))))

(declare-fun d!1717194 () Bool)

(assert (=> d!1717194 e!3325866))

(declare-fun c!933060 () Bool)

(assert (=> d!1717194 (= c!933060 ((_ is EmptyExpr!15061) r!7292))))

(assert (=> d!1717194 (= lt!2183456 e!3325867)))

(declare-fun c!933059 () Bool)

(assert (=> d!1717194 (= c!933059 (isEmpty!33332 s!2326))))

(assert (=> d!1717194 (validRegex!6797 r!7292)))

(assert (=> d!1717194 (= (matchR!7246 r!7292 s!2326) lt!2183456)))

(declare-fun b!5358585 () Bool)

(assert (=> b!5358585 (= e!3325869 e!3325861)))

(declare-fun res!2273918 () Bool)

(assert (=> b!5358585 (=> res!2273918 e!3325861)))

(assert (=> b!5358585 (= res!2273918 call!383270)))

(declare-fun b!5358586 () Bool)

(declare-fun res!2273919 () Bool)

(assert (=> b!5358586 (=> res!2273919 e!3325860)))

(assert (=> b!5358586 (= res!2273919 (not ((_ is ElementMatch!15061) r!7292)))))

(assert (=> b!5358586 (= e!3325863 e!3325860)))

(declare-fun b!5358587 () Bool)

(declare-fun res!2273916 () Bool)

(assert (=> b!5358587 (=> (not res!2273916) (not e!3325868))))

(assert (=> b!5358587 (= res!2273916 (isEmpty!33332 (tail!10586 s!2326)))))

(assert (= (and d!1717194 c!933059) b!5358575))

(assert (= (and d!1717194 (not c!933059)) b!5358584))

(assert (= (and d!1717194 c!933060) b!5358581))

(assert (= (and d!1717194 (not c!933060)) b!5358576))

(assert (= (and b!5358576 c!933058) b!5358582))

(assert (= (and b!5358576 (not c!933058)) b!5358586))

(assert (= (and b!5358586 (not res!2273919)) b!5358580))

(assert (= (and b!5358580 res!2273917) b!5358579))

(assert (= (and b!5358579 res!2273915) b!5358587))

(assert (= (and b!5358587 res!2273916) b!5358583))

(assert (= (and b!5358580 (not res!2273911)) b!5358577))

(assert (= (and b!5358577 res!2273913) b!5358585))

(assert (= (and b!5358585 (not res!2273918)) b!5358578))

(assert (= (and b!5358578 (not res!2273914)) b!5358574))

(assert (= (or b!5358581 b!5358585 b!5358579) bm!383265))

(assert (=> bm!383265 m!6387812))

(declare-fun m!6387898 () Bool)

(assert (=> b!5358583 m!6387898))

(assert (=> d!1717194 m!6387812))

(assert (=> d!1717194 m!6387462))

(declare-fun m!6387900 () Bool)

(assert (=> b!5358575 m!6387900))

(assert (=> b!5358574 m!6387898))

(declare-fun m!6387902 () Bool)

(assert (=> b!5358587 m!6387902))

(assert (=> b!5358587 m!6387902))

(declare-fun m!6387904 () Bool)

(assert (=> b!5358587 m!6387904))

(assert (=> b!5358584 m!6387898))

(assert (=> b!5358584 m!6387898))

(declare-fun m!6387906 () Bool)

(assert (=> b!5358584 m!6387906))

(assert (=> b!5358584 m!6387902))

(assert (=> b!5358584 m!6387906))

(assert (=> b!5358584 m!6387902))

(declare-fun m!6387908 () Bool)

(assert (=> b!5358584 m!6387908))

(assert (=> b!5358578 m!6387902))

(assert (=> b!5358578 m!6387902))

(assert (=> b!5358578 m!6387904))

(assert (=> b!5358066 d!1717194))

(declare-fun d!1717230 () Bool)

(assert (=> d!1717230 (= (matchR!7246 r!7292 s!2326) (matchRSpec!2164 r!7292 s!2326))))

(declare-fun lt!2183462 () Unit!153762)

(declare-fun choose!40209 (Regex!15061 List!61484) Unit!153762)

(assert (=> d!1717230 (= lt!2183462 (choose!40209 r!7292 s!2326))))

(assert (=> d!1717230 (validRegex!6797 r!7292)))

(assert (=> d!1717230 (= (mainMatchTheorem!2164 r!7292 s!2326) lt!2183462)))

(declare-fun bs!1241474 () Bool)

(assert (= bs!1241474 d!1717230))

(assert (=> bs!1241474 m!6387434))

(assert (=> bs!1241474 m!6387432))

(declare-fun m!6387920 () Bool)

(assert (=> bs!1241474 m!6387920))

(assert (=> bs!1241474 m!6387462))

(assert (=> b!5358066 d!1717230))

(declare-fun b!5358667 () Bool)

(declare-fun e!3325913 () Bool)

(assert (=> b!5358667 (= e!3325913 (nullable!5230 (regOne!30634 (reg!15390 (regOne!30634 r!7292)))))))

(declare-fun bm!383278 () Bool)

(declare-fun c!933073 () Bool)

(declare-fun call!383288 () (InoxSet Context!8890))

(declare-fun c!933075 () Bool)

(declare-fun c!933074 () Bool)

(declare-fun call!383283 () List!61482)

(assert (=> bm!383278 (= call!383288 (derivationStepZipperDown!509 (ite c!933074 (regOne!30635 (reg!15390 (regOne!30634 r!7292))) (ite c!933075 (regTwo!30634 (reg!15390 (regOne!30634 r!7292))) (ite c!933073 (regOne!30634 (reg!15390 (regOne!30634 r!7292))) (reg!15390 (reg!15390 (regOne!30634 r!7292)))))) (ite (or c!933074 c!933075) lt!2183378 (Context!8891 call!383283)) (h!67808 s!2326)))))

(declare-fun b!5358668 () Bool)

(declare-fun e!3325908 () (InoxSet Context!8890))

(declare-fun e!3325910 () (InoxSet Context!8890))

(assert (=> b!5358668 (= e!3325908 e!3325910)))

(assert (=> b!5358668 (= c!933074 ((_ is Union!15061) (reg!15390 (regOne!30634 r!7292))))))

(declare-fun bm!383279 () Bool)

(declare-fun call!383286 () (InoxSet Context!8890))

(assert (=> bm!383279 (= call!383286 call!383288)))

(declare-fun b!5358669 () Bool)

(assert (=> b!5358669 (= e!3325908 (store ((as const (Array Context!8890 Bool)) false) lt!2183378 true))))

(declare-fun bm!383280 () Bool)

(declare-fun call!383285 () (InoxSet Context!8890))

(declare-fun call!383284 () List!61482)

(assert (=> bm!383280 (= call!383285 (derivationStepZipperDown!509 (ite c!933074 (regTwo!30635 (reg!15390 (regOne!30634 r!7292))) (regOne!30634 (reg!15390 (regOne!30634 r!7292)))) (ite c!933074 lt!2183378 (Context!8891 call!383284)) (h!67808 s!2326)))))

(declare-fun b!5358670 () Bool)

(declare-fun e!3325912 () (InoxSet Context!8890))

(declare-fun call!383287 () (InoxSet Context!8890))

(assert (=> b!5358670 (= e!3325912 call!383287)))

(declare-fun bm!383281 () Bool)

(assert (=> bm!383281 (= call!383283 call!383284)))

(declare-fun b!5358671 () Bool)

(declare-fun e!3325911 () (InoxSet Context!8890))

(assert (=> b!5358671 (= e!3325911 ((as const (Array Context!8890 Bool)) false))))

(declare-fun b!5358672 () Bool)

(declare-fun e!3325909 () (InoxSet Context!8890))

(assert (=> b!5358672 (= e!3325909 ((_ map or) call!383285 call!383286))))

(declare-fun b!5358673 () Bool)

(assert (=> b!5358673 (= c!933075 e!3325913)))

(declare-fun res!2273925 () Bool)

(assert (=> b!5358673 (=> (not res!2273925) (not e!3325913))))

(assert (=> b!5358673 (= res!2273925 ((_ is Concat!23906) (reg!15390 (regOne!30634 r!7292))))))

(assert (=> b!5358673 (= e!3325910 e!3325909)))

(declare-fun b!5358674 () Bool)

(assert (=> b!5358674 (= e!3325910 ((_ map or) call!383288 call!383285))))

(declare-fun b!5358675 () Bool)

(assert (=> b!5358675 (= e!3325909 e!3325912)))

(assert (=> b!5358675 (= c!933073 ((_ is Concat!23906) (reg!15390 (regOne!30634 r!7292))))))

(declare-fun b!5358676 () Bool)

(assert (=> b!5358676 (= e!3325911 call!383287)))

(declare-fun b!5358677 () Bool)

(declare-fun c!933072 () Bool)

(assert (=> b!5358677 (= c!933072 ((_ is Star!15061) (reg!15390 (regOne!30634 r!7292))))))

(assert (=> b!5358677 (= e!3325912 e!3325911)))

(declare-fun bm!383283 () Bool)

(declare-fun $colon$colon!1435 (List!61482 Regex!15061) List!61482)

(assert (=> bm!383283 (= call!383284 ($colon$colon!1435 (exprs!4945 lt!2183378) (ite (or c!933075 c!933073) (regTwo!30634 (reg!15390 (regOne!30634 r!7292))) (reg!15390 (regOne!30634 r!7292)))))))

(declare-fun d!1717232 () Bool)

(declare-fun c!933071 () Bool)

(assert (=> d!1717232 (= c!933071 (and ((_ is ElementMatch!15061) (reg!15390 (regOne!30634 r!7292))) (= (c!932915 (reg!15390 (regOne!30634 r!7292))) (h!67808 s!2326))))))

(assert (=> d!1717232 (= (derivationStepZipperDown!509 (reg!15390 (regOne!30634 r!7292)) lt!2183378 (h!67808 s!2326)) e!3325908)))

(declare-fun bm!383282 () Bool)

(assert (=> bm!383282 (= call!383287 call!383286)))

(assert (= (and d!1717232 c!933071) b!5358669))

(assert (= (and d!1717232 (not c!933071)) b!5358668))

(assert (= (and b!5358668 c!933074) b!5358674))

(assert (= (and b!5358668 (not c!933074)) b!5358673))

(assert (= (and b!5358673 res!2273925) b!5358667))

(assert (= (and b!5358673 c!933075) b!5358672))

(assert (= (and b!5358673 (not c!933075)) b!5358675))

(assert (= (and b!5358675 c!933073) b!5358670))

(assert (= (and b!5358675 (not c!933073)) b!5358677))

(assert (= (and b!5358677 c!933072) b!5358676))

(assert (= (and b!5358677 (not c!933072)) b!5358671))

(assert (= (or b!5358670 b!5358676) bm!383281))

(assert (= (or b!5358670 b!5358676) bm!383282))

(assert (= (or b!5358672 bm!383281) bm!383283))

(assert (= (or b!5358672 bm!383282) bm!383279))

(assert (= (or b!5358674 b!5358672) bm!383280))

(assert (= (or b!5358674 bm!383279) bm!383278))

(declare-fun m!6387922 () Bool)

(assert (=> bm!383280 m!6387922))

(declare-fun m!6387924 () Bool)

(assert (=> bm!383283 m!6387924))

(declare-fun m!6387926 () Bool)

(assert (=> b!5358667 m!6387926))

(assert (=> b!5358669 m!6387516))

(declare-fun m!6387928 () Bool)

(assert (=> bm!383278 m!6387928))

(assert (=> b!5358067 d!1717232))

(declare-fun b!5358696 () Bool)

(declare-fun res!2273939 () Bool)

(declare-fun e!3325933 () Bool)

(assert (=> b!5358696 (=> (not res!2273939) (not e!3325933))))

(declare-fun call!383297 () Bool)

(assert (=> b!5358696 (= res!2273939 call!383297)))

(declare-fun e!3325931 () Bool)

(assert (=> b!5358696 (= e!3325931 e!3325933)))

(declare-fun b!5358697 () Bool)

(declare-fun call!383296 () Bool)

(assert (=> b!5358697 (= e!3325933 call!383296)))

(declare-fun bm!383290 () Bool)

(declare-fun call!383295 () Bool)

(assert (=> bm!383290 (= call!383297 call!383295)))

(declare-fun b!5358698 () Bool)

(declare-fun res!2273936 () Bool)

(declare-fun e!3325934 () Bool)

(assert (=> b!5358698 (=> res!2273936 e!3325934)))

(assert (=> b!5358698 (= res!2273936 (not ((_ is Concat!23906) r!7292)))))

(assert (=> b!5358698 (= e!3325931 e!3325934)))

(declare-fun d!1717242 () Bool)

(declare-fun res!2273937 () Bool)

(declare-fun e!3325928 () Bool)

(assert (=> d!1717242 (=> res!2273937 e!3325928)))

(assert (=> d!1717242 (= res!2273937 ((_ is ElementMatch!15061) r!7292))))

(assert (=> d!1717242 (= (validRegex!6797 r!7292) e!3325928)))

(declare-fun c!933081 () Bool)

(declare-fun bm!383291 () Bool)

(declare-fun c!933080 () Bool)

(assert (=> bm!383291 (= call!383295 (validRegex!6797 (ite c!933081 (reg!15390 r!7292) (ite c!933080 (regOne!30635 r!7292) (regOne!30634 r!7292)))))))

(declare-fun bm!383292 () Bool)

(assert (=> bm!383292 (= call!383296 (validRegex!6797 (ite c!933080 (regTwo!30635 r!7292) (regTwo!30634 r!7292))))))

(declare-fun b!5358699 () Bool)

(declare-fun e!3325929 () Bool)

(assert (=> b!5358699 (= e!3325928 e!3325929)))

(assert (=> b!5358699 (= c!933081 ((_ is Star!15061) r!7292))))

(declare-fun b!5358700 () Bool)

(declare-fun e!3325932 () Bool)

(assert (=> b!5358700 (= e!3325932 call!383295)))

(declare-fun b!5358701 () Bool)

(assert (=> b!5358701 (= e!3325929 e!3325931)))

(assert (=> b!5358701 (= c!933080 ((_ is Union!15061) r!7292))))

(declare-fun b!5358702 () Bool)

(assert (=> b!5358702 (= e!3325929 e!3325932)))

(declare-fun res!2273940 () Bool)

(assert (=> b!5358702 (= res!2273940 (not (nullable!5230 (reg!15390 r!7292))))))

(assert (=> b!5358702 (=> (not res!2273940) (not e!3325932))))

(declare-fun b!5358703 () Bool)

(declare-fun e!3325930 () Bool)

(assert (=> b!5358703 (= e!3325930 call!383296)))

(declare-fun b!5358704 () Bool)

(assert (=> b!5358704 (= e!3325934 e!3325930)))

(declare-fun res!2273938 () Bool)

(assert (=> b!5358704 (=> (not res!2273938) (not e!3325930))))

(assert (=> b!5358704 (= res!2273938 call!383297)))

(assert (= (and d!1717242 (not res!2273937)) b!5358699))

(assert (= (and b!5358699 c!933081) b!5358702))

(assert (= (and b!5358699 (not c!933081)) b!5358701))

(assert (= (and b!5358702 res!2273940) b!5358700))

(assert (= (and b!5358701 c!933080) b!5358696))

(assert (= (and b!5358701 (not c!933080)) b!5358698))

(assert (= (and b!5358696 res!2273939) b!5358697))

(assert (= (and b!5358698 (not res!2273936)) b!5358704))

(assert (= (and b!5358704 res!2273938) b!5358703))

(assert (= (or b!5358697 b!5358703) bm!383292))

(assert (= (or b!5358696 b!5358704) bm!383290))

(assert (= (or b!5358700 bm!383290) bm!383291))

(declare-fun m!6387930 () Bool)

(assert (=> bm!383291 m!6387930))

(declare-fun m!6387932 () Bool)

(assert (=> bm!383292 m!6387932))

(declare-fun m!6387934 () Bool)

(assert (=> b!5358702 m!6387934))

(assert (=> start!564054 d!1717242))

(declare-fun d!1717244 () Bool)

(assert (=> d!1717244 (= (isEmpty!33328 (t!374703 (exprs!4945 (h!67807 zl!343)))) ((_ is Nil!61358) (t!374703 (exprs!4945 (h!67807 zl!343)))))))

(assert (=> b!5358074 d!1717244))

(declare-fun d!1717246 () Bool)

(declare-fun choose!40213 ((InoxSet Context!8890) Int) (InoxSet Context!8890))

(assert (=> d!1717246 (= (flatMap!788 lt!2183358 lambda!275749) (choose!40213 lt!2183358 lambda!275749))))

(declare-fun bs!1241479 () Bool)

(assert (= bs!1241479 d!1717246))

(declare-fun m!6387936 () Bool)

(assert (=> bs!1241479 m!6387936))

(assert (=> b!5358054 d!1717246))

(declare-fun b!5358715 () Bool)

(declare-fun e!3325943 () (InoxSet Context!8890))

(assert (=> b!5358715 (= e!3325943 ((as const (Array Context!8890 Bool)) false))))

(declare-fun e!3325941 () (InoxSet Context!8890))

(declare-fun call!383300 () (InoxSet Context!8890))

(declare-fun b!5358716 () Bool)

(assert (=> b!5358716 (= e!3325941 ((_ map or) call!383300 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 lt!2183371))) (h!67808 s!2326))))))

(declare-fun b!5358717 () Bool)

(declare-fun e!3325942 () Bool)

(assert (=> b!5358717 (= e!3325942 (nullable!5230 (h!67806 (exprs!4945 lt!2183371))))))

(declare-fun bm!383295 () Bool)

(assert (=> bm!383295 (= call!383300 (derivationStepZipperDown!509 (h!67806 (exprs!4945 lt!2183371)) (Context!8891 (t!374703 (exprs!4945 lt!2183371))) (h!67808 s!2326)))))

(declare-fun b!5358719 () Bool)

(assert (=> b!5358719 (= e!3325941 e!3325943)))

(declare-fun c!933087 () Bool)

(assert (=> b!5358719 (= c!933087 ((_ is Cons!61358) (exprs!4945 lt!2183371)))))

(declare-fun d!1717248 () Bool)

(declare-fun c!933086 () Bool)

(assert (=> d!1717248 (= c!933086 e!3325942)))

(declare-fun res!2273943 () Bool)

(assert (=> d!1717248 (=> (not res!2273943) (not e!3325942))))

(assert (=> d!1717248 (= res!2273943 ((_ is Cons!61358) (exprs!4945 lt!2183371)))))

(assert (=> d!1717248 (= (derivationStepZipperUp!433 lt!2183371 (h!67808 s!2326)) e!3325941)))

(declare-fun b!5358718 () Bool)

(assert (=> b!5358718 (= e!3325943 call!383300)))

(assert (= (and d!1717248 res!2273943) b!5358717))

(assert (= (and d!1717248 c!933086) b!5358716))

(assert (= (and d!1717248 (not c!933086)) b!5358719))

(assert (= (and b!5358719 c!933087) b!5358718))

(assert (= (and b!5358719 (not c!933087)) b!5358715))

(assert (= (or b!5358716 b!5358718) bm!383295))

(declare-fun m!6387938 () Bool)

(assert (=> b!5358716 m!6387938))

(declare-fun m!6387940 () Bool)

(assert (=> b!5358717 m!6387940))

(declare-fun m!6387942 () Bool)

(assert (=> bm!383295 m!6387942))

(assert (=> b!5358054 d!1717248))

(declare-fun d!1717250 () Bool)

(declare-fun dynLambda!24239 (Int Context!8890) (InoxSet Context!8890))

(assert (=> d!1717250 (= (flatMap!788 lt!2183358 lambda!275749) (dynLambda!24239 lambda!275749 lt!2183371))))

(declare-fun lt!2183465 () Unit!153762)

(declare-fun choose!40214 ((InoxSet Context!8890) Context!8890 Int) Unit!153762)

(assert (=> d!1717250 (= lt!2183465 (choose!40214 lt!2183358 lt!2183371 lambda!275749))))

(assert (=> d!1717250 (= lt!2183358 (store ((as const (Array Context!8890 Bool)) false) lt!2183371 true))))

(assert (=> d!1717250 (= (lemmaFlatMapOnSingletonSet!320 lt!2183358 lt!2183371 lambda!275749) lt!2183465)))

(declare-fun b_lambda!205501 () Bool)

(assert (=> (not b_lambda!205501) (not d!1717250)))

(declare-fun bs!1241480 () Bool)

(assert (= bs!1241480 d!1717250))

(assert (=> bs!1241480 m!6387478))

(declare-fun m!6387944 () Bool)

(assert (=> bs!1241480 m!6387944))

(declare-fun m!6387946 () Bool)

(assert (=> bs!1241480 m!6387946))

(assert (=> bs!1241480 m!6387480))

(assert (=> b!5358054 d!1717250))

(declare-fun bs!1241481 () Bool)

(declare-fun d!1717252 () Bool)

(assert (= bs!1241481 (and d!1717252 b!5358084)))

(declare-fun lambda!275805 () Int)

(assert (=> bs!1241481 (= lambda!275805 lambda!275749)))

(assert (=> d!1717252 true))

(assert (=> d!1717252 (= (derivationStepZipper!1300 lt!2183358 (h!67808 s!2326)) (flatMap!788 lt!2183358 lambda!275805))))

(declare-fun bs!1241482 () Bool)

(assert (= bs!1241482 d!1717252))

(declare-fun m!6387948 () Bool)

(assert (=> bs!1241482 m!6387948))

(assert (=> b!5358054 d!1717252))

(declare-fun d!1717254 () Bool)

(declare-fun c!933092 () Bool)

(assert (=> d!1717254 (= c!933092 (isEmpty!33332 (t!374705 s!2326)))))

(declare-fun e!3325946 () Bool)

(assert (=> d!1717254 (= (matchZipper!1305 lt!2183379 (t!374705 s!2326)) e!3325946)))

(declare-fun b!5358726 () Bool)

(declare-fun nullableZipper!1386 ((InoxSet Context!8890)) Bool)

(assert (=> b!5358726 (= e!3325946 (nullableZipper!1386 lt!2183379))))

(declare-fun b!5358727 () Bool)

(assert (=> b!5358727 (= e!3325946 (matchZipper!1305 (derivationStepZipper!1300 lt!2183379 (head!11489 (t!374705 s!2326))) (tail!10586 (t!374705 s!2326))))))

(assert (= (and d!1717254 c!933092) b!5358726))

(assert (= (and d!1717254 (not c!933092)) b!5358727))

(declare-fun m!6387950 () Bool)

(assert (=> d!1717254 m!6387950))

(declare-fun m!6387952 () Bool)

(assert (=> b!5358726 m!6387952))

(declare-fun m!6387954 () Bool)

(assert (=> b!5358727 m!6387954))

(assert (=> b!5358727 m!6387954))

(declare-fun m!6387956 () Bool)

(assert (=> b!5358727 m!6387956))

(declare-fun m!6387958 () Bool)

(assert (=> b!5358727 m!6387958))

(assert (=> b!5358727 m!6387956))

(assert (=> b!5358727 m!6387958))

(declare-fun m!6387960 () Bool)

(assert (=> b!5358727 m!6387960))

(assert (=> b!5358075 d!1717254))

(declare-fun d!1717256 () Bool)

(declare-fun e!3325949 () Bool)

(assert (=> d!1717256 (= (matchZipper!1305 ((_ map or) lt!2183357 lt!2183379) (t!374705 s!2326)) e!3325949)))

(declare-fun res!2273946 () Bool)

(assert (=> d!1717256 (=> res!2273946 e!3325949)))

(assert (=> d!1717256 (= res!2273946 (matchZipper!1305 lt!2183357 (t!374705 s!2326)))))

(declare-fun lt!2183468 () Unit!153762)

(declare-fun choose!40215 ((InoxSet Context!8890) (InoxSet Context!8890) List!61484) Unit!153762)

(assert (=> d!1717256 (= lt!2183468 (choose!40215 lt!2183357 lt!2183379 (t!374705 s!2326)))))

(assert (=> d!1717256 (= (lemmaZipperConcatMatchesSameAsBothZippers!298 lt!2183357 lt!2183379 (t!374705 s!2326)) lt!2183468)))

(declare-fun b!5358730 () Bool)

(assert (=> b!5358730 (= e!3325949 (matchZipper!1305 lt!2183379 (t!374705 s!2326)))))

(assert (= (and d!1717256 (not res!2273946)) b!5358730))

(assert (=> d!1717256 m!6387460))

(assert (=> d!1717256 m!6387458))

(declare-fun m!6387962 () Bool)

(assert (=> d!1717256 m!6387962))

(assert (=> b!5358730 m!6387420))

(assert (=> b!5358053 d!1717256))

(declare-fun d!1717258 () Bool)

(declare-fun c!933093 () Bool)

(assert (=> d!1717258 (= c!933093 (isEmpty!33332 (t!374705 s!2326)))))

(declare-fun e!3325950 () Bool)

(assert (=> d!1717258 (= (matchZipper!1305 lt!2183357 (t!374705 s!2326)) e!3325950)))

(declare-fun b!5358731 () Bool)

(assert (=> b!5358731 (= e!3325950 (nullableZipper!1386 lt!2183357))))

(declare-fun b!5358732 () Bool)

(assert (=> b!5358732 (= e!3325950 (matchZipper!1305 (derivationStepZipper!1300 lt!2183357 (head!11489 (t!374705 s!2326))) (tail!10586 (t!374705 s!2326))))))

(assert (= (and d!1717258 c!933093) b!5358731))

(assert (= (and d!1717258 (not c!933093)) b!5358732))

(assert (=> d!1717258 m!6387950))

(declare-fun m!6387964 () Bool)

(assert (=> b!5358731 m!6387964))

(assert (=> b!5358732 m!6387954))

(assert (=> b!5358732 m!6387954))

(declare-fun m!6387966 () Bool)

(assert (=> b!5358732 m!6387966))

(assert (=> b!5358732 m!6387958))

(assert (=> b!5358732 m!6387966))

(assert (=> b!5358732 m!6387958))

(declare-fun m!6387968 () Bool)

(assert (=> b!5358732 m!6387968))

(assert (=> b!5358053 d!1717258))

(declare-fun d!1717260 () Bool)

(declare-fun c!933094 () Bool)

(assert (=> d!1717260 (= c!933094 (isEmpty!33332 (t!374705 s!2326)))))

(declare-fun e!3325951 () Bool)

(assert (=> d!1717260 (= (matchZipper!1305 ((_ map or) lt!2183357 lt!2183379) (t!374705 s!2326)) e!3325951)))

(declare-fun b!5358733 () Bool)

(assert (=> b!5358733 (= e!3325951 (nullableZipper!1386 ((_ map or) lt!2183357 lt!2183379)))))

(declare-fun b!5358734 () Bool)

(assert (=> b!5358734 (= e!3325951 (matchZipper!1305 (derivationStepZipper!1300 ((_ map or) lt!2183357 lt!2183379) (head!11489 (t!374705 s!2326))) (tail!10586 (t!374705 s!2326))))))

(assert (= (and d!1717260 c!933094) b!5358733))

(assert (= (and d!1717260 (not c!933094)) b!5358734))

(assert (=> d!1717260 m!6387950))

(declare-fun m!6387970 () Bool)

(assert (=> b!5358733 m!6387970))

(assert (=> b!5358734 m!6387954))

(assert (=> b!5358734 m!6387954))

(declare-fun m!6387972 () Bool)

(assert (=> b!5358734 m!6387972))

(assert (=> b!5358734 m!6387958))

(assert (=> b!5358734 m!6387972))

(assert (=> b!5358734 m!6387958))

(declare-fun m!6387974 () Bool)

(assert (=> b!5358734 m!6387974))

(assert (=> b!5358053 d!1717260))

(declare-fun d!1717262 () Bool)

(declare-fun e!3325954 () Bool)

(assert (=> d!1717262 e!3325954))

(declare-fun res!2273949 () Bool)

(assert (=> d!1717262 (=> (not res!2273949) (not e!3325954))))

(declare-fun lt!2183471 () List!61483)

(declare-fun noDuplicate!1339 (List!61483) Bool)

(assert (=> d!1717262 (= res!2273949 (noDuplicate!1339 lt!2183471))))

(declare-fun choose!40216 ((InoxSet Context!8890)) List!61483)

(assert (=> d!1717262 (= lt!2183471 (choose!40216 z!1189))))

(assert (=> d!1717262 (= (toList!8845 z!1189) lt!2183471)))

(declare-fun b!5358737 () Bool)

(declare-fun content!10947 (List!61483) (InoxSet Context!8890))

(assert (=> b!5358737 (= e!3325954 (= (content!10947 lt!2183471) z!1189))))

(assert (= (and d!1717262 res!2273949) b!5358737))

(declare-fun m!6387976 () Bool)

(assert (=> d!1717262 m!6387976))

(declare-fun m!6387978 () Bool)

(assert (=> d!1717262 m!6387978))

(declare-fun m!6387980 () Bool)

(assert (=> b!5358737 m!6387980))

(assert (=> b!5358051 d!1717262))

(declare-fun d!1717264 () Bool)

(declare-fun lt!2183474 () Regex!15061)

(assert (=> d!1717264 (validRegex!6797 lt!2183474)))

(assert (=> d!1717264 (= lt!2183474 (generalisedUnion!990 (unfocusZipperList!503 (Cons!61359 lt!2183378 Nil!61359))))))

(assert (=> d!1717264 (= (unfocusZipper!803 (Cons!61359 lt!2183378 Nil!61359)) lt!2183474)))

(declare-fun bs!1241483 () Bool)

(assert (= bs!1241483 d!1717264))

(declare-fun m!6387982 () Bool)

(assert (=> bs!1241483 m!6387982))

(declare-fun m!6387984 () Bool)

(assert (=> bs!1241483 m!6387984))

(assert (=> bs!1241483 m!6387984))

(declare-fun m!6387986 () Bool)

(assert (=> bs!1241483 m!6387986))

(assert (=> b!5358052 d!1717264))

(declare-fun d!1717266 () Bool)

(declare-fun lambda!275808 () Int)

(declare-fun forall!14473 (List!61482 Int) Bool)

(assert (=> d!1717266 (= (inv!80899 (h!67807 zl!343)) (forall!14473 (exprs!4945 (h!67807 zl!343)) lambda!275808))))

(declare-fun bs!1241484 () Bool)

(assert (= bs!1241484 d!1717266))

(declare-fun m!6387988 () Bool)

(assert (=> bs!1241484 m!6387988))

(assert (=> b!5358081 d!1717266))

(declare-fun d!1717268 () Bool)

(declare-fun lt!2183475 () Regex!15061)

(assert (=> d!1717268 (validRegex!6797 lt!2183475)))

(assert (=> d!1717268 (= lt!2183475 (generalisedUnion!990 (unfocusZipperList!503 zl!343)))))

(assert (=> d!1717268 (= (unfocusZipper!803 zl!343) lt!2183475)))

(declare-fun bs!1241485 () Bool)

(assert (= bs!1241485 d!1717268))

(declare-fun m!6387990 () Bool)

(assert (=> bs!1241485 m!6387990))

(assert (=> bs!1241485 m!6387438))

(assert (=> bs!1241485 m!6387438))

(assert (=> bs!1241485 m!6387440))

(assert (=> b!5358061 d!1717268))

(declare-fun d!1717270 () Bool)

(assert (=> d!1717270 (= (isEmpty!33327 (t!374704 zl!343)) ((_ is Nil!61359) (t!374704 zl!343)))))

(assert (=> b!5358059 d!1717270))

(declare-fun d!1717272 () Bool)

(declare-fun nullableFct!1538 (Regex!15061) Bool)

(assert (=> d!1717272 (= (nullable!5230 (regOne!30634 (regOne!30634 r!7292))) (nullableFct!1538 (regOne!30634 (regOne!30634 r!7292))))))

(declare-fun bs!1241486 () Bool)

(assert (= bs!1241486 d!1717272))

(declare-fun m!6387992 () Bool)

(assert (=> bs!1241486 m!6387992))

(assert (=> b!5358078 d!1717272))

(declare-fun d!1717274 () Bool)

(assert (=> d!1717274 (= (Exists!2242 lambda!275751) (choose!40206 lambda!275751))))

(declare-fun bs!1241487 () Bool)

(assert (= bs!1241487 d!1717274))

(declare-fun m!6387994 () Bool)

(assert (=> bs!1241487 m!6387994))

(assert (=> b!5358058 d!1717274))

(declare-fun d!1717276 () Bool)

(assert (=> d!1717276 (= (Exists!2242 lambda!275750) (choose!40206 lambda!275750))))

(declare-fun bs!1241488 () Bool)

(assert (= bs!1241488 d!1717276))

(declare-fun m!6387996 () Bool)

(assert (=> bs!1241488 m!6387996))

(assert (=> b!5358058 d!1717276))

(declare-fun bs!1241489 () Bool)

(declare-fun d!1717278 () Bool)

(assert (= bs!1241489 (and d!1717278 b!5358444)))

(declare-fun lambda!275809 () Int)

(assert (=> bs!1241489 (not (= lambda!275809 lambda!275797))))

(declare-fun bs!1241490 () Bool)

(assert (= bs!1241490 (and d!1717278 d!1717138)))

(assert (=> bs!1241490 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275809 lambda!275770))))

(declare-fun bs!1241491 () Bool)

(assert (= bs!1241491 (and d!1717278 b!5358071)))

(assert (=> bs!1241491 (not (= lambda!275809 lambda!275748))))

(declare-fun bs!1241492 () Bool)

(assert (= bs!1241492 (and d!1717278 b!5358058)))

(assert (=> bs!1241492 (= lambda!275809 lambda!275750)))

(declare-fun bs!1241493 () Bool)

(assert (= bs!1241493 (and d!1717278 d!1717160)))

(assert (=> bs!1241493 (not (= lambda!275809 lambda!275782))))

(assert (=> bs!1241492 (not (= lambda!275809 lambda!275751))))

(assert (=> bs!1241493 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275809 lambda!275781))))

(declare-fun bs!1241494 () Bool)

(assert (= bs!1241494 (and d!1717278 b!5358448)))

(assert (=> bs!1241494 (not (= lambda!275809 lambda!275796))))

(assert (=> bs!1241491 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275809 lambda!275747))))

(assert (=> d!1717278 true))

(assert (=> d!1717278 true))

(assert (=> d!1717278 true))

(assert (=> d!1717278 (= (isDefined!11875 (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)) (Exists!2242 lambda!275809))))

(declare-fun lt!2183476 () Unit!153762)

(assert (=> d!1717278 (= lt!2183476 (choose!40207 lt!2183365 (regTwo!30634 r!7292) s!2326))))

(assert (=> d!1717278 (validRegex!6797 lt!2183365)))

(assert (=> d!1717278 (= (lemmaFindConcatSeparationEquivalentToExists!1350 lt!2183365 (regTwo!30634 r!7292) s!2326) lt!2183476)))

(declare-fun bs!1241495 () Bool)

(assert (= bs!1241495 d!1717278))

(declare-fun m!6387998 () Bool)

(assert (=> bs!1241495 m!6387998))

(declare-fun m!6388000 () Bool)

(assert (=> bs!1241495 m!6388000))

(assert (=> bs!1241495 m!6387496))

(assert (=> bs!1241495 m!6387498))

(assert (=> bs!1241495 m!6387498))

(assert (=> bs!1241495 m!6387500))

(assert (=> b!5358058 d!1717278))

(declare-fun b!5358738 () Bool)

(declare-fun res!2273953 () Bool)

(declare-fun e!3325960 () Bool)

(assert (=> b!5358738 (=> (not res!2273953) (not e!3325960))))

(declare-fun call!383303 () Bool)

(assert (=> b!5358738 (= res!2273953 call!383303)))

(declare-fun e!3325958 () Bool)

(assert (=> b!5358738 (= e!3325958 e!3325960)))

(declare-fun b!5358739 () Bool)

(declare-fun call!383302 () Bool)

(assert (=> b!5358739 (= e!3325960 call!383302)))

(declare-fun bm!383296 () Bool)

(declare-fun call!383301 () Bool)

(assert (=> bm!383296 (= call!383303 call!383301)))

(declare-fun b!5358740 () Bool)

(declare-fun res!2273950 () Bool)

(declare-fun e!3325961 () Bool)

(assert (=> b!5358740 (=> res!2273950 e!3325961)))

(assert (=> b!5358740 (= res!2273950 (not ((_ is Concat!23906) lt!2183365)))))

(assert (=> b!5358740 (= e!3325958 e!3325961)))

(declare-fun d!1717280 () Bool)

(declare-fun res!2273951 () Bool)

(declare-fun e!3325955 () Bool)

(assert (=> d!1717280 (=> res!2273951 e!3325955)))

(assert (=> d!1717280 (= res!2273951 ((_ is ElementMatch!15061) lt!2183365))))

(assert (=> d!1717280 (= (validRegex!6797 lt!2183365) e!3325955)))

(declare-fun c!933095 () Bool)

(declare-fun bm!383297 () Bool)

(declare-fun c!933096 () Bool)

(assert (=> bm!383297 (= call!383301 (validRegex!6797 (ite c!933096 (reg!15390 lt!2183365) (ite c!933095 (regOne!30635 lt!2183365) (regOne!30634 lt!2183365)))))))

(declare-fun bm!383298 () Bool)

(assert (=> bm!383298 (= call!383302 (validRegex!6797 (ite c!933095 (regTwo!30635 lt!2183365) (regTwo!30634 lt!2183365))))))

(declare-fun b!5358741 () Bool)

(declare-fun e!3325956 () Bool)

(assert (=> b!5358741 (= e!3325955 e!3325956)))

(assert (=> b!5358741 (= c!933096 ((_ is Star!15061) lt!2183365))))

(declare-fun b!5358742 () Bool)

(declare-fun e!3325959 () Bool)

(assert (=> b!5358742 (= e!3325959 call!383301)))

(declare-fun b!5358743 () Bool)

(assert (=> b!5358743 (= e!3325956 e!3325958)))

(assert (=> b!5358743 (= c!933095 ((_ is Union!15061) lt!2183365))))

(declare-fun b!5358744 () Bool)

(assert (=> b!5358744 (= e!3325956 e!3325959)))

(declare-fun res!2273954 () Bool)

(assert (=> b!5358744 (= res!2273954 (not (nullable!5230 (reg!15390 lt!2183365))))))

(assert (=> b!5358744 (=> (not res!2273954) (not e!3325959))))

(declare-fun b!5358745 () Bool)

(declare-fun e!3325957 () Bool)

(assert (=> b!5358745 (= e!3325957 call!383302)))

(declare-fun b!5358746 () Bool)

(assert (=> b!5358746 (= e!3325961 e!3325957)))

(declare-fun res!2273952 () Bool)

(assert (=> b!5358746 (=> (not res!2273952) (not e!3325957))))

(assert (=> b!5358746 (= res!2273952 call!383303)))

(assert (= (and d!1717280 (not res!2273951)) b!5358741))

(assert (= (and b!5358741 c!933096) b!5358744))

(assert (= (and b!5358741 (not c!933096)) b!5358743))

(assert (= (and b!5358744 res!2273954) b!5358742))

(assert (= (and b!5358743 c!933095) b!5358738))

(assert (= (and b!5358743 (not c!933095)) b!5358740))

(assert (= (and b!5358738 res!2273953) b!5358739))

(assert (= (and b!5358740 (not res!2273950)) b!5358746))

(assert (= (and b!5358746 res!2273952) b!5358745))

(assert (= (or b!5358739 b!5358745) bm!383298))

(assert (= (or b!5358738 b!5358746) bm!383296))

(assert (= (or b!5358742 bm!383296) bm!383297))

(declare-fun m!6388002 () Bool)

(assert (=> bm!383297 m!6388002))

(declare-fun m!6388004 () Bool)

(assert (=> bm!383298 m!6388004))

(declare-fun m!6388006 () Bool)

(assert (=> b!5358744 m!6388006))

(assert (=> b!5358058 d!1717280))

(declare-fun d!1717282 () Bool)

(assert (=> d!1717282 (= (isDefined!11875 (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326)) (not (isEmpty!33331 (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326))))))

(declare-fun bs!1241496 () Bool)

(assert (= bs!1241496 d!1717282))

(assert (=> bs!1241496 m!6387498))

(declare-fun m!6388008 () Bool)

(assert (=> bs!1241496 m!6388008))

(assert (=> b!5358058 d!1717282))

(declare-fun b!5358747 () Bool)

(declare-fun res!2273957 () Bool)

(declare-fun e!3325964 () Bool)

(assert (=> b!5358747 (=> (not res!2273957) (not e!3325964))))

(declare-fun lt!2183478 () Option!15172)

(assert (=> b!5358747 (= res!2273957 (matchR!7246 (regTwo!30634 r!7292) (_2!35563 (get!21102 lt!2183478))))))

(declare-fun b!5358748 () Bool)

(assert (=> b!5358748 (= e!3325964 (= (++!13366 (_1!35563 (get!21102 lt!2183478)) (_2!35563 (get!21102 lt!2183478))) s!2326))))

(declare-fun b!5358749 () Bool)

(declare-fun e!3325963 () Option!15172)

(declare-fun e!3325966 () Option!15172)

(assert (=> b!5358749 (= e!3325963 e!3325966)))

(declare-fun c!933098 () Bool)

(assert (=> b!5358749 (= c!933098 ((_ is Nil!61360) s!2326))))

(declare-fun b!5358750 () Bool)

(declare-fun res!2273959 () Bool)

(assert (=> b!5358750 (=> (not res!2273959) (not e!3325964))))

(assert (=> b!5358750 (= res!2273959 (matchR!7246 lt!2183365 (_1!35563 (get!21102 lt!2183478))))))

(declare-fun b!5358751 () Bool)

(declare-fun lt!2183479 () Unit!153762)

(declare-fun lt!2183477 () Unit!153762)

(assert (=> b!5358751 (= lt!2183479 lt!2183477)))

(assert (=> b!5358751 (= (++!13366 (++!13366 Nil!61360 (Cons!61360 (h!67808 s!2326) Nil!61360)) (t!374705 s!2326)) s!2326)))

(assert (=> b!5358751 (= lt!2183477 (lemmaMoveElementToOtherListKeepsConcatEq!1781 Nil!61360 (h!67808 s!2326) (t!374705 s!2326) s!2326))))

(assert (=> b!5358751 (= e!3325966 (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) (++!13366 Nil!61360 (Cons!61360 (h!67808 s!2326) Nil!61360)) (t!374705 s!2326) s!2326))))

(declare-fun b!5358752 () Bool)

(declare-fun e!3325962 () Bool)

(assert (=> b!5358752 (= e!3325962 (not (isDefined!11875 lt!2183478)))))

(declare-fun b!5358753 () Bool)

(declare-fun e!3325965 () Bool)

(assert (=> b!5358753 (= e!3325965 (matchR!7246 (regTwo!30634 r!7292) s!2326))))

(declare-fun b!5358755 () Bool)

(assert (=> b!5358755 (= e!3325966 None!15171)))

(declare-fun b!5358754 () Bool)

(assert (=> b!5358754 (= e!3325963 (Some!15171 (tuple2!64521 Nil!61360 s!2326)))))

(declare-fun d!1717284 () Bool)

(assert (=> d!1717284 e!3325962))

(declare-fun res!2273955 () Bool)

(assert (=> d!1717284 (=> res!2273955 e!3325962)))

(assert (=> d!1717284 (= res!2273955 e!3325964)))

(declare-fun res!2273958 () Bool)

(assert (=> d!1717284 (=> (not res!2273958) (not e!3325964))))

(assert (=> d!1717284 (= res!2273958 (isDefined!11875 lt!2183478))))

(assert (=> d!1717284 (= lt!2183478 e!3325963)))

(declare-fun c!933097 () Bool)

(assert (=> d!1717284 (= c!933097 e!3325965)))

(declare-fun res!2273956 () Bool)

(assert (=> d!1717284 (=> (not res!2273956) (not e!3325965))))

(assert (=> d!1717284 (= res!2273956 (matchR!7246 lt!2183365 Nil!61360))))

(assert (=> d!1717284 (validRegex!6797 lt!2183365)))

(assert (=> d!1717284 (= (findConcatSeparation!1586 lt!2183365 (regTwo!30634 r!7292) Nil!61360 s!2326 s!2326) lt!2183478)))

(assert (= (and d!1717284 res!2273956) b!5358753))

(assert (= (and d!1717284 c!933097) b!5358754))

(assert (= (and d!1717284 (not c!933097)) b!5358749))

(assert (= (and b!5358749 c!933098) b!5358755))

(assert (= (and b!5358749 (not c!933098)) b!5358751))

(assert (= (and d!1717284 res!2273958) b!5358750))

(assert (= (and b!5358750 res!2273959) b!5358747))

(assert (= (and b!5358747 res!2273957) b!5358748))

(assert (= (and d!1717284 (not res!2273955)) b!5358752))

(assert (=> b!5358753 m!6387588))

(declare-fun m!6388010 () Bool)

(assert (=> b!5358750 m!6388010))

(declare-fun m!6388012 () Bool)

(assert (=> b!5358750 m!6388012))

(declare-fun m!6388014 () Bool)

(assert (=> d!1717284 m!6388014))

(declare-fun m!6388016 () Bool)

(assert (=> d!1717284 m!6388016))

(assert (=> d!1717284 m!6387496))

(assert (=> b!5358747 m!6388010))

(declare-fun m!6388018 () Bool)

(assert (=> b!5358747 m!6388018))

(assert (=> b!5358752 m!6388014))

(assert (=> b!5358751 m!6387622))

(assert (=> b!5358751 m!6387622))

(assert (=> b!5358751 m!6387626))

(assert (=> b!5358751 m!6387628))

(assert (=> b!5358751 m!6387622))

(declare-fun m!6388020 () Bool)

(assert (=> b!5358751 m!6388020))

(assert (=> b!5358748 m!6388010))

(declare-fun m!6388022 () Bool)

(assert (=> b!5358748 m!6388022))

(assert (=> b!5358058 d!1717284))

(declare-fun bs!1241497 () Bool)

(declare-fun d!1717286 () Bool)

(assert (= bs!1241497 (and d!1717286 b!5358444)))

(declare-fun lambda!275810 () Int)

(assert (=> bs!1241497 (not (= lambda!275810 lambda!275797))))

(declare-fun bs!1241498 () Bool)

(assert (= bs!1241498 (and d!1717286 d!1717138)))

(assert (=> bs!1241498 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275810 lambda!275770))))

(declare-fun bs!1241499 () Bool)

(assert (= bs!1241499 (and d!1717286 b!5358071)))

(assert (=> bs!1241499 (not (= lambda!275810 lambda!275748))))

(declare-fun bs!1241500 () Bool)

(assert (= bs!1241500 (and d!1717286 b!5358058)))

(assert (=> bs!1241500 (= lambda!275810 lambda!275750)))

(declare-fun bs!1241501 () Bool)

(assert (= bs!1241501 (and d!1717286 d!1717278)))

(assert (=> bs!1241501 (= lambda!275810 lambda!275809)))

(declare-fun bs!1241502 () Bool)

(assert (= bs!1241502 (and d!1717286 d!1717160)))

(assert (=> bs!1241502 (not (= lambda!275810 lambda!275782))))

(assert (=> bs!1241500 (not (= lambda!275810 lambda!275751))))

(assert (=> bs!1241502 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275810 lambda!275781))))

(declare-fun bs!1241503 () Bool)

(assert (= bs!1241503 (and d!1717286 b!5358448)))

(assert (=> bs!1241503 (not (= lambda!275810 lambda!275796))))

(assert (=> bs!1241499 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275810 lambda!275747))))

(assert (=> d!1717286 true))

(assert (=> d!1717286 true))

(assert (=> d!1717286 true))

(declare-fun lambda!275811 () Int)

(assert (=> bs!1241497 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275811 lambda!275797))))

(assert (=> bs!1241498 (not (= lambda!275811 lambda!275770))))

(assert (=> bs!1241499 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275811 lambda!275748))))

(declare-fun bs!1241504 () Bool)

(assert (= bs!1241504 d!1717286))

(assert (=> bs!1241504 (not (= lambda!275811 lambda!275810))))

(assert (=> bs!1241500 (not (= lambda!275811 lambda!275750))))

(assert (=> bs!1241501 (not (= lambda!275811 lambda!275809))))

(assert (=> bs!1241502 (= (= lt!2183365 (regOne!30634 r!7292)) (= lambda!275811 lambda!275782))))

(assert (=> bs!1241500 (= lambda!275811 lambda!275751)))

(assert (=> bs!1241502 (not (= lambda!275811 lambda!275781))))

(assert (=> bs!1241503 (not (= lambda!275811 lambda!275796))))

(assert (=> bs!1241499 (not (= lambda!275811 lambda!275747))))

(assert (=> d!1717286 true))

(assert (=> d!1717286 true))

(assert (=> d!1717286 true))

(assert (=> d!1717286 (= (Exists!2242 lambda!275810) (Exists!2242 lambda!275811))))

(declare-fun lt!2183480 () Unit!153762)

(assert (=> d!1717286 (= lt!2183480 (choose!40208 lt!2183365 (regTwo!30634 r!7292) s!2326))))

(assert (=> d!1717286 (validRegex!6797 lt!2183365)))

(assert (=> d!1717286 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!896 lt!2183365 (regTwo!30634 r!7292) s!2326) lt!2183480)))

(declare-fun m!6388024 () Bool)

(assert (=> bs!1241504 m!6388024))

(declare-fun m!6388026 () Bool)

(assert (=> bs!1241504 m!6388026))

(declare-fun m!6388028 () Bool)

(assert (=> bs!1241504 m!6388028))

(assert (=> bs!1241504 m!6387496))

(assert (=> b!5358058 d!1717286))

(declare-fun b!5358756 () Bool)

(declare-fun res!2273963 () Bool)

(declare-fun e!3325972 () Bool)

(assert (=> b!5358756 (=> (not res!2273963) (not e!3325972))))

(declare-fun call!383306 () Bool)

(assert (=> b!5358756 (= res!2273963 call!383306)))

(declare-fun e!3325970 () Bool)

(assert (=> b!5358756 (= e!3325970 e!3325972)))

(declare-fun b!5358757 () Bool)

(declare-fun call!383305 () Bool)

(assert (=> b!5358757 (= e!3325972 call!383305)))

(declare-fun bm!383299 () Bool)

(declare-fun call!383304 () Bool)

(assert (=> bm!383299 (= call!383306 call!383304)))

(declare-fun b!5358758 () Bool)

(declare-fun res!2273960 () Bool)

(declare-fun e!3325973 () Bool)

(assert (=> b!5358758 (=> res!2273960 e!3325973)))

(assert (=> b!5358758 (= res!2273960 (not ((_ is Concat!23906) (regTwo!30634 r!7292))))))

(assert (=> b!5358758 (= e!3325970 e!3325973)))

(declare-fun d!1717288 () Bool)

(declare-fun res!2273961 () Bool)

(declare-fun e!3325967 () Bool)

(assert (=> d!1717288 (=> res!2273961 e!3325967)))

(assert (=> d!1717288 (= res!2273961 ((_ is ElementMatch!15061) (regTwo!30634 r!7292)))))

(assert (=> d!1717288 (= (validRegex!6797 (regTwo!30634 r!7292)) e!3325967)))

(declare-fun c!933100 () Bool)

(declare-fun c!933099 () Bool)

(declare-fun bm!383300 () Bool)

(assert (=> bm!383300 (= call!383304 (validRegex!6797 (ite c!933100 (reg!15390 (regTwo!30634 r!7292)) (ite c!933099 (regOne!30635 (regTwo!30634 r!7292)) (regOne!30634 (regTwo!30634 r!7292))))))))

(declare-fun bm!383301 () Bool)

(assert (=> bm!383301 (= call!383305 (validRegex!6797 (ite c!933099 (regTwo!30635 (regTwo!30634 r!7292)) (regTwo!30634 (regTwo!30634 r!7292)))))))

(declare-fun b!5358759 () Bool)

(declare-fun e!3325968 () Bool)

(assert (=> b!5358759 (= e!3325967 e!3325968)))

(assert (=> b!5358759 (= c!933100 ((_ is Star!15061) (regTwo!30634 r!7292)))))

(declare-fun b!5358760 () Bool)

(declare-fun e!3325971 () Bool)

(assert (=> b!5358760 (= e!3325971 call!383304)))

(declare-fun b!5358761 () Bool)

(assert (=> b!5358761 (= e!3325968 e!3325970)))

(assert (=> b!5358761 (= c!933099 ((_ is Union!15061) (regTwo!30634 r!7292)))))

(declare-fun b!5358762 () Bool)

(assert (=> b!5358762 (= e!3325968 e!3325971)))

(declare-fun res!2273964 () Bool)

(assert (=> b!5358762 (= res!2273964 (not (nullable!5230 (reg!15390 (regTwo!30634 r!7292)))))))

(assert (=> b!5358762 (=> (not res!2273964) (not e!3325971))))

(declare-fun b!5358763 () Bool)

(declare-fun e!3325969 () Bool)

(assert (=> b!5358763 (= e!3325969 call!383305)))

(declare-fun b!5358764 () Bool)

(assert (=> b!5358764 (= e!3325973 e!3325969)))

(declare-fun res!2273962 () Bool)

(assert (=> b!5358764 (=> (not res!2273962) (not e!3325969))))

(assert (=> b!5358764 (= res!2273962 call!383306)))

(assert (= (and d!1717288 (not res!2273961)) b!5358759))

(assert (= (and b!5358759 c!933100) b!5358762))

(assert (= (and b!5358759 (not c!933100)) b!5358761))

(assert (= (and b!5358762 res!2273964) b!5358760))

(assert (= (and b!5358761 c!933099) b!5358756))

(assert (= (and b!5358761 (not c!933099)) b!5358758))

(assert (= (and b!5358756 res!2273963) b!5358757))

(assert (= (and b!5358758 (not res!2273960)) b!5358764))

(assert (= (and b!5358764 res!2273962) b!5358763))

(assert (= (or b!5358757 b!5358763) bm!383301))

(assert (= (or b!5358756 b!5358764) bm!383299))

(assert (= (or b!5358760 bm!383299) bm!383300))

(declare-fun m!6388030 () Bool)

(assert (=> bm!383300 m!6388030))

(declare-fun m!6388032 () Bool)

(assert (=> bm!383301 m!6388032))

(declare-fun m!6388034 () Bool)

(assert (=> b!5358762 m!6388034))

(assert (=> b!5358079 d!1717288))

(declare-fun d!1717290 () Bool)

(declare-fun c!933101 () Bool)

(assert (=> d!1717290 (= c!933101 (isEmpty!33332 s!2326))))

(declare-fun e!3325974 () Bool)

(assert (=> d!1717290 (= (matchZipper!1305 lt!2183358 s!2326) e!3325974)))

(declare-fun b!5358765 () Bool)

(assert (=> b!5358765 (= e!3325974 (nullableZipper!1386 lt!2183358))))

(declare-fun b!5358766 () Bool)

(assert (=> b!5358766 (= e!3325974 (matchZipper!1305 (derivationStepZipper!1300 lt!2183358 (head!11489 s!2326)) (tail!10586 s!2326)))))

(assert (= (and d!1717290 c!933101) b!5358765))

(assert (= (and d!1717290 (not c!933101)) b!5358766))

(assert (=> d!1717290 m!6387812))

(declare-fun m!6388036 () Bool)

(assert (=> b!5358765 m!6388036))

(assert (=> b!5358766 m!6387898))

(assert (=> b!5358766 m!6387898))

(declare-fun m!6388038 () Bool)

(assert (=> b!5358766 m!6388038))

(assert (=> b!5358766 m!6387902))

(assert (=> b!5358766 m!6388038))

(assert (=> b!5358766 m!6387902))

(declare-fun m!6388040 () Bool)

(assert (=> b!5358766 m!6388040))

(assert (=> b!5358077 d!1717290))

(declare-fun d!1717292 () Bool)

(declare-fun c!933102 () Bool)

(assert (=> d!1717292 (= c!933102 (isEmpty!33332 (t!374705 s!2326)))))

(declare-fun e!3325975 () Bool)

(assert (=> d!1717292 (= (matchZipper!1305 lt!2183372 (t!374705 s!2326)) e!3325975)))

(declare-fun b!5358767 () Bool)

(assert (=> b!5358767 (= e!3325975 (nullableZipper!1386 lt!2183372))))

(declare-fun b!5358768 () Bool)

(assert (=> b!5358768 (= e!3325975 (matchZipper!1305 (derivationStepZipper!1300 lt!2183372 (head!11489 (t!374705 s!2326))) (tail!10586 (t!374705 s!2326))))))

(assert (= (and d!1717292 c!933102) b!5358767))

(assert (= (and d!1717292 (not c!933102)) b!5358768))

(assert (=> d!1717292 m!6387950))

(declare-fun m!6388042 () Bool)

(assert (=> b!5358767 m!6388042))

(assert (=> b!5358768 m!6387954))

(assert (=> b!5358768 m!6387954))

(declare-fun m!6388044 () Bool)

(assert (=> b!5358768 m!6388044))

(assert (=> b!5358768 m!6387958))

(assert (=> b!5358768 m!6388044))

(assert (=> b!5358768 m!6387958))

(declare-fun m!6388046 () Bool)

(assert (=> b!5358768 m!6388046))

(assert (=> b!5358077 d!1717292))

(declare-fun bs!1241505 () Bool)

(declare-fun d!1717294 () Bool)

(assert (= bs!1241505 (and d!1717294 d!1717266)))

(declare-fun lambda!275814 () Int)

(assert (=> bs!1241505 (= lambda!275814 lambda!275808)))

(declare-fun b!5358789 () Bool)

(declare-fun e!3325993 () Bool)

(assert (=> b!5358789 (= e!3325993 (isEmpty!33328 (t!374703 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun b!5358790 () Bool)

(declare-fun e!3325992 () Bool)

(declare-fun lt!2183483 () Regex!15061)

(declare-fun head!11491 (List!61482) Regex!15061)

(assert (=> b!5358790 (= e!3325992 (= lt!2183483 (head!11491 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun b!5358791 () Bool)

(declare-fun e!3325988 () Regex!15061)

(assert (=> b!5358791 (= e!3325988 EmptyExpr!15061)))

(declare-fun b!5358792 () Bool)

(declare-fun e!3325991 () Bool)

(declare-fun isEmptyExpr!921 (Regex!15061) Bool)

(assert (=> b!5358792 (= e!3325991 (isEmptyExpr!921 lt!2183483))))

(declare-fun b!5358793 () Bool)

(assert (=> b!5358793 (= e!3325991 e!3325992)))

(declare-fun c!933114 () Bool)

(declare-fun tail!10588 (List!61482) List!61482)

(assert (=> b!5358793 (= c!933114 (isEmpty!33328 (tail!10588 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun b!5358794 () Bool)

(declare-fun e!3325989 () Regex!15061)

(assert (=> b!5358794 (= e!3325989 e!3325988)))

(declare-fun c!933112 () Bool)

(assert (=> b!5358794 (= c!933112 ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343))))))

(declare-fun b!5358795 () Bool)

(declare-fun e!3325990 () Bool)

(assert (=> b!5358795 (= e!3325990 e!3325991)))

(declare-fun c!933111 () Bool)

(assert (=> b!5358795 (= c!933111 (isEmpty!33328 (exprs!4945 (h!67807 zl!343))))))

(declare-fun b!5358796 () Bool)

(assert (=> b!5358796 (= e!3325989 (h!67806 (exprs!4945 (h!67807 zl!343))))))

(assert (=> d!1717294 e!3325990))

(declare-fun res!2273969 () Bool)

(assert (=> d!1717294 (=> (not res!2273969) (not e!3325990))))

(assert (=> d!1717294 (= res!2273969 (validRegex!6797 lt!2183483))))

(assert (=> d!1717294 (= lt!2183483 e!3325989)))

(declare-fun c!933113 () Bool)

(assert (=> d!1717294 (= c!933113 e!3325993)))

(declare-fun res!2273970 () Bool)

(assert (=> d!1717294 (=> (not res!2273970) (not e!3325993))))

(assert (=> d!1717294 (= res!2273970 ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343))))))

(assert (=> d!1717294 (forall!14473 (exprs!4945 (h!67807 zl!343)) lambda!275814)))

(assert (=> d!1717294 (= (generalisedConcat!730 (exprs!4945 (h!67807 zl!343))) lt!2183483)))

(declare-fun b!5358797 () Bool)

(assert (=> b!5358797 (= e!3325988 (Concat!23906 (h!67806 (exprs!4945 (h!67807 zl!343))) (generalisedConcat!730 (t!374703 (exprs!4945 (h!67807 zl!343))))))))

(declare-fun b!5358798 () Bool)

(declare-fun isConcat!444 (Regex!15061) Bool)

(assert (=> b!5358798 (= e!3325992 (isConcat!444 lt!2183483))))

(assert (= (and d!1717294 res!2273970) b!5358789))

(assert (= (and d!1717294 c!933113) b!5358796))

(assert (= (and d!1717294 (not c!933113)) b!5358794))

(assert (= (and b!5358794 c!933112) b!5358797))

(assert (= (and b!5358794 (not c!933112)) b!5358791))

(assert (= (and d!1717294 res!2273969) b!5358795))

(assert (= (and b!5358795 c!933111) b!5358792))

(assert (= (and b!5358795 (not c!933111)) b!5358793))

(assert (= (and b!5358793 c!933114) b!5358790))

(assert (= (and b!5358793 (not c!933114)) b!5358798))

(declare-fun m!6388048 () Bool)

(assert (=> b!5358798 m!6388048))

(declare-fun m!6388050 () Bool)

(assert (=> b!5358795 m!6388050))

(declare-fun m!6388052 () Bool)

(assert (=> d!1717294 m!6388052))

(declare-fun m!6388054 () Bool)

(assert (=> d!1717294 m!6388054))

(declare-fun m!6388056 () Bool)

(assert (=> b!5358797 m!6388056))

(assert (=> b!5358789 m!6387486))

(declare-fun m!6388058 () Bool)

(assert (=> b!5358792 m!6388058))

(declare-fun m!6388060 () Bool)

(assert (=> b!5358793 m!6388060))

(assert (=> b!5358793 m!6388060))

(declare-fun m!6388062 () Bool)

(assert (=> b!5358793 m!6388062))

(declare-fun m!6388064 () Bool)

(assert (=> b!5358790 m!6388064))

(assert (=> b!5358057 d!1717294))

(declare-fun b!5358799 () Bool)

(declare-fun e!3325999 () Bool)

(assert (=> b!5358799 (= e!3325999 (nullable!5230 (regOne!30634 (h!67806 (exprs!4945 (h!67807 zl!343))))))))

(declare-fun call!383312 () (InoxSet Context!8890))

(declare-fun c!933117 () Bool)

(declare-fun call!383307 () List!61482)

(declare-fun c!933119 () Bool)

(declare-fun bm!383302 () Bool)

(declare-fun c!933118 () Bool)

(assert (=> bm!383302 (= call!383312 (derivationStepZipperDown!509 (ite c!933118 (regOne!30635 (h!67806 (exprs!4945 (h!67807 zl!343)))) (ite c!933119 (regTwo!30634 (h!67806 (exprs!4945 (h!67807 zl!343)))) (ite c!933117 (regOne!30634 (h!67806 (exprs!4945 (h!67807 zl!343)))) (reg!15390 (h!67806 (exprs!4945 (h!67807 zl!343))))))) (ite (or c!933118 c!933119) lt!2183376 (Context!8891 call!383307)) (h!67808 s!2326)))))

(declare-fun b!5358800 () Bool)

(declare-fun e!3325994 () (InoxSet Context!8890))

(declare-fun e!3325996 () (InoxSet Context!8890))

(assert (=> b!5358800 (= e!3325994 e!3325996)))

(assert (=> b!5358800 (= c!933118 ((_ is Union!15061) (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun bm!383303 () Bool)

(declare-fun call!383310 () (InoxSet Context!8890))

(assert (=> bm!383303 (= call!383310 call!383312)))

(declare-fun b!5358801 () Bool)

(assert (=> b!5358801 (= e!3325994 (store ((as const (Array Context!8890 Bool)) false) lt!2183376 true))))

(declare-fun call!383308 () List!61482)

(declare-fun call!383309 () (InoxSet Context!8890))

(declare-fun bm!383304 () Bool)

(assert (=> bm!383304 (= call!383309 (derivationStepZipperDown!509 (ite c!933118 (regTwo!30635 (h!67806 (exprs!4945 (h!67807 zl!343)))) (regOne!30634 (h!67806 (exprs!4945 (h!67807 zl!343))))) (ite c!933118 lt!2183376 (Context!8891 call!383308)) (h!67808 s!2326)))))

(declare-fun b!5358802 () Bool)

(declare-fun e!3325998 () (InoxSet Context!8890))

(declare-fun call!383311 () (InoxSet Context!8890))

(assert (=> b!5358802 (= e!3325998 call!383311)))

(declare-fun bm!383305 () Bool)

(assert (=> bm!383305 (= call!383307 call!383308)))

(declare-fun b!5358803 () Bool)

(declare-fun e!3325997 () (InoxSet Context!8890))

(assert (=> b!5358803 (= e!3325997 ((as const (Array Context!8890 Bool)) false))))

(declare-fun b!5358804 () Bool)

(declare-fun e!3325995 () (InoxSet Context!8890))

(assert (=> b!5358804 (= e!3325995 ((_ map or) call!383309 call!383310))))

(declare-fun b!5358805 () Bool)

(assert (=> b!5358805 (= c!933119 e!3325999)))

(declare-fun res!2273971 () Bool)

(assert (=> b!5358805 (=> (not res!2273971) (not e!3325999))))

(assert (=> b!5358805 (= res!2273971 ((_ is Concat!23906) (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(assert (=> b!5358805 (= e!3325996 e!3325995)))

(declare-fun b!5358806 () Bool)

(assert (=> b!5358806 (= e!3325996 ((_ map or) call!383312 call!383309))))

(declare-fun b!5358807 () Bool)

(assert (=> b!5358807 (= e!3325995 e!3325998)))

(assert (=> b!5358807 (= c!933117 ((_ is Concat!23906) (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun b!5358808 () Bool)

(assert (=> b!5358808 (= e!3325997 call!383311)))

(declare-fun b!5358809 () Bool)

(declare-fun c!933116 () Bool)

(assert (=> b!5358809 (= c!933116 ((_ is Star!15061) (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(assert (=> b!5358809 (= e!3325998 e!3325997)))

(declare-fun bm!383307 () Bool)

(assert (=> bm!383307 (= call!383308 ($colon$colon!1435 (exprs!4945 lt!2183376) (ite (or c!933119 c!933117) (regTwo!30634 (h!67806 (exprs!4945 (h!67807 zl!343)))) (h!67806 (exprs!4945 (h!67807 zl!343))))))))

(declare-fun d!1717296 () Bool)

(declare-fun c!933115 () Bool)

(assert (=> d!1717296 (= c!933115 (and ((_ is ElementMatch!15061) (h!67806 (exprs!4945 (h!67807 zl!343)))) (= (c!932915 (h!67806 (exprs!4945 (h!67807 zl!343)))) (h!67808 s!2326))))))

(assert (=> d!1717296 (= (derivationStepZipperDown!509 (h!67806 (exprs!4945 (h!67807 zl!343))) lt!2183376 (h!67808 s!2326)) e!3325994)))

(declare-fun bm!383306 () Bool)

(assert (=> bm!383306 (= call!383311 call!383310)))

(assert (= (and d!1717296 c!933115) b!5358801))

(assert (= (and d!1717296 (not c!933115)) b!5358800))

(assert (= (and b!5358800 c!933118) b!5358806))

(assert (= (and b!5358800 (not c!933118)) b!5358805))

(assert (= (and b!5358805 res!2273971) b!5358799))

(assert (= (and b!5358805 c!933119) b!5358804))

(assert (= (and b!5358805 (not c!933119)) b!5358807))

(assert (= (and b!5358807 c!933117) b!5358802))

(assert (= (and b!5358807 (not c!933117)) b!5358809))

(assert (= (and b!5358809 c!933116) b!5358808))

(assert (= (and b!5358809 (not c!933116)) b!5358803))

(assert (= (or b!5358802 b!5358808) bm!383305))

(assert (= (or b!5358802 b!5358808) bm!383306))

(assert (= (or b!5358804 bm!383305) bm!383307))

(assert (= (or b!5358804 bm!383306) bm!383303))

(assert (= (or b!5358806 b!5358804) bm!383304))

(assert (= (or b!5358806 bm!383303) bm!383302))

(declare-fun m!6388066 () Bool)

(assert (=> bm!383304 m!6388066))

(declare-fun m!6388068 () Bool)

(assert (=> bm!383307 m!6388068))

(declare-fun m!6388070 () Bool)

(assert (=> b!5358799 m!6388070))

(declare-fun m!6388072 () Bool)

(assert (=> b!5358801 m!6388072))

(declare-fun m!6388074 () Bool)

(assert (=> bm!383302 m!6388074))

(assert (=> b!5358084 d!1717296))

(declare-fun b!5358810 () Bool)

(declare-fun e!3326002 () (InoxSet Context!8890))

(assert (=> b!5358810 (= e!3326002 ((as const (Array Context!8890 Bool)) false))))

(declare-fun e!3326000 () (InoxSet Context!8890))

(declare-fun b!5358811 () Bool)

(declare-fun call!383313 () (InoxSet Context!8890))

(assert (=> b!5358811 (= e!3326000 ((_ map or) call!383313 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 lt!2183376))) (h!67808 s!2326))))))

(declare-fun b!5358812 () Bool)

(declare-fun e!3326001 () Bool)

(assert (=> b!5358812 (= e!3326001 (nullable!5230 (h!67806 (exprs!4945 lt!2183376))))))

(declare-fun bm!383308 () Bool)

(assert (=> bm!383308 (= call!383313 (derivationStepZipperDown!509 (h!67806 (exprs!4945 lt!2183376)) (Context!8891 (t!374703 (exprs!4945 lt!2183376))) (h!67808 s!2326)))))

(declare-fun b!5358814 () Bool)

(assert (=> b!5358814 (= e!3326000 e!3326002)))

(declare-fun c!933121 () Bool)

(assert (=> b!5358814 (= c!933121 ((_ is Cons!61358) (exprs!4945 lt!2183376)))))

(declare-fun d!1717298 () Bool)

(declare-fun c!933120 () Bool)

(assert (=> d!1717298 (= c!933120 e!3326001)))

(declare-fun res!2273972 () Bool)

(assert (=> d!1717298 (=> (not res!2273972) (not e!3326001))))

(assert (=> d!1717298 (= res!2273972 ((_ is Cons!61358) (exprs!4945 lt!2183376)))))

(assert (=> d!1717298 (= (derivationStepZipperUp!433 lt!2183376 (h!67808 s!2326)) e!3326000)))

(declare-fun b!5358813 () Bool)

(assert (=> b!5358813 (= e!3326002 call!383313)))

(assert (= (and d!1717298 res!2273972) b!5358812))

(assert (= (and d!1717298 c!933120) b!5358811))

(assert (= (and d!1717298 (not c!933120)) b!5358814))

(assert (= (and b!5358814 c!933121) b!5358813))

(assert (= (and b!5358814 (not c!933121)) b!5358810))

(assert (= (or b!5358811 b!5358813) bm!383308))

(declare-fun m!6388076 () Bool)

(assert (=> b!5358811 m!6388076))

(declare-fun m!6388078 () Bool)

(assert (=> b!5358812 m!6388078))

(declare-fun m!6388080 () Bool)

(assert (=> bm!383308 m!6388080))

(assert (=> b!5358084 d!1717298))

(declare-fun d!1717300 () Bool)

(assert (=> d!1717300 (= (nullable!5230 (h!67806 (exprs!4945 (h!67807 zl!343)))) (nullableFct!1538 (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun bs!1241506 () Bool)

(assert (= bs!1241506 d!1717300))

(declare-fun m!6388082 () Bool)

(assert (=> bs!1241506 m!6388082))

(assert (=> b!5358084 d!1717300))

(declare-fun b!5358815 () Bool)

(declare-fun e!3326005 () (InoxSet Context!8890))

(assert (=> b!5358815 (= e!3326005 ((as const (Array Context!8890 Bool)) false))))

(declare-fun call!383314 () (InoxSet Context!8890))

(declare-fun e!3326003 () (InoxSet Context!8890))

(declare-fun b!5358816 () Bool)

(assert (=> b!5358816 (= e!3326003 ((_ map or) call!383314 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 (h!67807 zl!343)))) (h!67808 s!2326))))))

(declare-fun b!5358817 () Bool)

(declare-fun e!3326004 () Bool)

(assert (=> b!5358817 (= e!3326004 (nullable!5230 (h!67806 (exprs!4945 (h!67807 zl!343)))))))

(declare-fun bm!383309 () Bool)

(assert (=> bm!383309 (= call!383314 (derivationStepZipperDown!509 (h!67806 (exprs!4945 (h!67807 zl!343))) (Context!8891 (t!374703 (exprs!4945 (h!67807 zl!343)))) (h!67808 s!2326)))))

(declare-fun b!5358819 () Bool)

(assert (=> b!5358819 (= e!3326003 e!3326005)))

(declare-fun c!933123 () Bool)

(assert (=> b!5358819 (= c!933123 ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343))))))

(declare-fun d!1717302 () Bool)

(declare-fun c!933122 () Bool)

(assert (=> d!1717302 (= c!933122 e!3326004)))

(declare-fun res!2273973 () Bool)

(assert (=> d!1717302 (=> (not res!2273973) (not e!3326004))))

(assert (=> d!1717302 (= res!2273973 ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343))))))

(assert (=> d!1717302 (= (derivationStepZipperUp!433 (h!67807 zl!343) (h!67808 s!2326)) e!3326003)))

(declare-fun b!5358818 () Bool)

(assert (=> b!5358818 (= e!3326005 call!383314)))

(assert (= (and d!1717302 res!2273973) b!5358817))

(assert (= (and d!1717302 c!933122) b!5358816))

(assert (= (and d!1717302 (not c!933122)) b!5358819))

(assert (= (and b!5358819 c!933123) b!5358818))

(assert (= (and b!5358819 (not c!933123)) b!5358815))

(assert (= (or b!5358816 b!5358818) bm!383309))

(declare-fun m!6388084 () Bool)

(assert (=> b!5358816 m!6388084))

(assert (=> b!5358817 m!6387510))

(declare-fun m!6388086 () Bool)

(assert (=> bm!383309 m!6388086))

(assert (=> b!5358084 d!1717302))

(declare-fun d!1717304 () Bool)

(assert (=> d!1717304 (= (flatMap!788 z!1189 lambda!275749) (choose!40213 z!1189 lambda!275749))))

(declare-fun bs!1241507 () Bool)

(assert (= bs!1241507 d!1717304))

(declare-fun m!6388088 () Bool)

(assert (=> bs!1241507 m!6388088))

(assert (=> b!5358084 d!1717304))

(declare-fun d!1717306 () Bool)

(assert (=> d!1717306 (= (flatMap!788 z!1189 lambda!275749) (dynLambda!24239 lambda!275749 (h!67807 zl!343)))))

(declare-fun lt!2183484 () Unit!153762)

(assert (=> d!1717306 (= lt!2183484 (choose!40214 z!1189 (h!67807 zl!343) lambda!275749))))

(assert (=> d!1717306 (= z!1189 (store ((as const (Array Context!8890 Bool)) false) (h!67807 zl!343) true))))

(assert (=> d!1717306 (= (lemmaFlatMapOnSingletonSet!320 z!1189 (h!67807 zl!343) lambda!275749) lt!2183484)))

(declare-fun b_lambda!205503 () Bool)

(assert (=> (not b_lambda!205503) (not d!1717306)))

(declare-fun bs!1241508 () Bool)

(assert (= bs!1241508 d!1717306))

(assert (=> bs!1241508 m!6387514))

(declare-fun m!6388090 () Bool)

(assert (=> bs!1241508 m!6388090))

(declare-fun m!6388092 () Bool)

(assert (=> bs!1241508 m!6388092))

(declare-fun m!6388094 () Bool)

(assert (=> bs!1241508 m!6388094))

(assert (=> b!5358084 d!1717306))

(declare-fun b!5358820 () Bool)

(declare-fun e!3326008 () (InoxSet Context!8890))

(assert (=> b!5358820 (= e!3326008 ((as const (Array Context!8890 Bool)) false))))

(declare-fun call!383315 () (InoxSet Context!8890))

(declare-fun b!5358821 () Bool)

(declare-fun e!3326006 () (InoxSet Context!8890))

(assert (=> b!5358821 (= e!3326006 ((_ map or) call!383315 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343)))))))) (h!67808 s!2326))))))

(declare-fun b!5358822 () Bool)

(declare-fun e!3326007 () Bool)

(assert (=> b!5358822 (= e!3326007 (nullable!5230 (h!67806 (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343)))))))))))

(declare-fun bm!383310 () Bool)

(assert (=> bm!383310 (= call!383315 (derivationStepZipperDown!509 (h!67806 (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343))))))) (Context!8891 (t!374703 (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343)))))))) (h!67808 s!2326)))))

(declare-fun b!5358824 () Bool)

(assert (=> b!5358824 (= e!3326006 e!3326008)))

(declare-fun c!933125 () Bool)

(assert (=> b!5358824 (= c!933125 ((_ is Cons!61358) (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343))))))))))

(declare-fun d!1717308 () Bool)

(declare-fun c!933124 () Bool)

(assert (=> d!1717308 (= c!933124 e!3326007)))

(declare-fun res!2273974 () Bool)

(assert (=> d!1717308 (=> (not res!2273974) (not e!3326007))))

(assert (=> d!1717308 (= res!2273974 ((_ is Cons!61358) (exprs!4945 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343))))))))))

(assert (=> d!1717308 (= (derivationStepZipperUp!433 (Context!8891 (Cons!61358 (h!67806 (exprs!4945 (h!67807 zl!343))) (t!374703 (exprs!4945 (h!67807 zl!343))))) (h!67808 s!2326)) e!3326006)))

(declare-fun b!5358823 () Bool)

(assert (=> b!5358823 (= e!3326008 call!383315)))

(assert (= (and d!1717308 res!2273974) b!5358822))

(assert (= (and d!1717308 c!933124) b!5358821))

(assert (= (and d!1717308 (not c!933124)) b!5358824))

(assert (= (and b!5358824 c!933125) b!5358823))

(assert (= (and b!5358824 (not c!933125)) b!5358820))

(assert (= (or b!5358821 b!5358823) bm!383310))

(declare-fun m!6388096 () Bool)

(assert (=> b!5358821 m!6388096))

(declare-fun m!6388098 () Bool)

(assert (=> b!5358822 m!6388098))

(declare-fun m!6388100 () Bool)

(assert (=> bm!383310 m!6388100))

(assert (=> b!5358084 d!1717308))

(declare-fun b!5358825 () Bool)

(declare-fun e!3326010 () Bool)

(assert (=> b!5358825 (= e!3326010 (not (= (head!11489 s!2326) (c!932915 lt!2183384))))))

(declare-fun b!5358826 () Bool)

(declare-fun e!3326013 () Bool)

(assert (=> b!5358826 (= e!3326013 (nullable!5230 lt!2183384))))

(declare-fun b!5358827 () Bool)

(declare-fun e!3326012 () Bool)

(declare-fun e!3326011 () Bool)

(assert (=> b!5358827 (= e!3326012 e!3326011)))

(declare-fun c!933126 () Bool)

(assert (=> b!5358827 (= c!933126 ((_ is EmptyLang!15061) lt!2183384))))

(declare-fun b!5358828 () Bool)

(declare-fun e!3326009 () Bool)

(declare-fun e!3326015 () Bool)

(assert (=> b!5358828 (= e!3326009 e!3326015)))

(declare-fun res!2273976 () Bool)

(assert (=> b!5358828 (=> (not res!2273976) (not e!3326015))))

(declare-fun lt!2183485 () Bool)

(assert (=> b!5358828 (= res!2273976 (not lt!2183485))))

(declare-fun b!5358829 () Bool)

(declare-fun res!2273977 () Bool)

(assert (=> b!5358829 (=> res!2273977 e!3326010)))

(assert (=> b!5358829 (= res!2273977 (not (isEmpty!33332 (tail!10586 s!2326))))))

(declare-fun b!5358830 () Bool)

(declare-fun res!2273978 () Bool)

(declare-fun e!3326014 () Bool)

(assert (=> b!5358830 (=> (not res!2273978) (not e!3326014))))

(declare-fun call!383316 () Bool)

(assert (=> b!5358830 (= res!2273978 (not call!383316))))

(declare-fun b!5358831 () Bool)

(declare-fun res!2273975 () Bool)

(assert (=> b!5358831 (=> res!2273975 e!3326009)))

(assert (=> b!5358831 (= res!2273975 e!3326014)))

(declare-fun res!2273980 () Bool)

(assert (=> b!5358831 (=> (not res!2273980) (not e!3326014))))

(assert (=> b!5358831 (= res!2273980 lt!2183485)))

(declare-fun bm!383311 () Bool)

(assert (=> bm!383311 (= call!383316 (isEmpty!33332 s!2326))))

(declare-fun b!5358832 () Bool)

(assert (=> b!5358832 (= e!3326012 (= lt!2183485 call!383316))))

(declare-fun b!5358833 () Bool)

(assert (=> b!5358833 (= e!3326011 (not lt!2183485))))

(declare-fun b!5358834 () Bool)

(assert (=> b!5358834 (= e!3326014 (= (head!11489 s!2326) (c!932915 lt!2183384)))))

(declare-fun b!5358835 () Bool)

(assert (=> b!5358835 (= e!3326013 (matchR!7246 (derivativeStep!4207 lt!2183384 (head!11489 s!2326)) (tail!10586 s!2326)))))

(declare-fun d!1717310 () Bool)

(assert (=> d!1717310 e!3326012))

(declare-fun c!933128 () Bool)

(assert (=> d!1717310 (= c!933128 ((_ is EmptyExpr!15061) lt!2183384))))

(assert (=> d!1717310 (= lt!2183485 e!3326013)))

(declare-fun c!933127 () Bool)

(assert (=> d!1717310 (= c!933127 (isEmpty!33332 s!2326))))

(assert (=> d!1717310 (validRegex!6797 lt!2183384)))

(assert (=> d!1717310 (= (matchR!7246 lt!2183384 s!2326) lt!2183485)))

(declare-fun b!5358836 () Bool)

(assert (=> b!5358836 (= e!3326015 e!3326010)))

(declare-fun res!2273981 () Bool)

(assert (=> b!5358836 (=> res!2273981 e!3326010)))

(assert (=> b!5358836 (= res!2273981 call!383316)))

(declare-fun b!5358837 () Bool)

(declare-fun res!2273982 () Bool)

(assert (=> b!5358837 (=> res!2273982 e!3326009)))

(assert (=> b!5358837 (= res!2273982 (not ((_ is ElementMatch!15061) lt!2183384)))))

(assert (=> b!5358837 (= e!3326011 e!3326009)))

(declare-fun b!5358838 () Bool)

(declare-fun res!2273979 () Bool)

(assert (=> b!5358838 (=> (not res!2273979) (not e!3326014))))

(assert (=> b!5358838 (= res!2273979 (isEmpty!33332 (tail!10586 s!2326)))))

(assert (= (and d!1717310 c!933127) b!5358826))

(assert (= (and d!1717310 (not c!933127)) b!5358835))

(assert (= (and d!1717310 c!933128) b!5358832))

(assert (= (and d!1717310 (not c!933128)) b!5358827))

(assert (= (and b!5358827 c!933126) b!5358833))

(assert (= (and b!5358827 (not c!933126)) b!5358837))

(assert (= (and b!5358837 (not res!2273982)) b!5358831))

(assert (= (and b!5358831 res!2273980) b!5358830))

(assert (= (and b!5358830 res!2273978) b!5358838))

(assert (= (and b!5358838 res!2273979) b!5358834))

(assert (= (and b!5358831 (not res!2273975)) b!5358828))

(assert (= (and b!5358828 res!2273976) b!5358836))

(assert (= (and b!5358836 (not res!2273981)) b!5358829))

(assert (= (and b!5358829 (not res!2273977)) b!5358825))

(assert (= (or b!5358832 b!5358836 b!5358830) bm!383311))

(assert (=> bm!383311 m!6387812))

(assert (=> b!5358834 m!6387898))

(assert (=> d!1717310 m!6387812))

(declare-fun m!6388102 () Bool)

(assert (=> d!1717310 m!6388102))

(declare-fun m!6388104 () Bool)

(assert (=> b!5358826 m!6388104))

(assert (=> b!5358825 m!6387898))

(assert (=> b!5358838 m!6387902))

(assert (=> b!5358838 m!6387902))

(assert (=> b!5358838 m!6387904))

(assert (=> b!5358835 m!6387898))

(assert (=> b!5358835 m!6387898))

(declare-fun m!6388106 () Bool)

(assert (=> b!5358835 m!6388106))

(assert (=> b!5358835 m!6387902))

(assert (=> b!5358835 m!6388106))

(assert (=> b!5358835 m!6387902))

(declare-fun m!6388108 () Bool)

(assert (=> b!5358835 m!6388108))

(assert (=> b!5358829 m!6387902))

(assert (=> b!5358829 m!6387902))

(assert (=> b!5358829 m!6387904))

(assert (=> b!5358065 d!1717310))

(declare-fun bs!1241509 () Bool)

(declare-fun b!5358847 () Bool)

(assert (= bs!1241509 (and b!5358847 b!5358444)))

(declare-fun lambda!275815 () Int)

(assert (=> bs!1241509 (not (= lambda!275815 lambda!275797))))

(declare-fun bs!1241510 () Bool)

(assert (= bs!1241510 (and b!5358847 d!1717138)))

(assert (=> bs!1241510 (not (= lambda!275815 lambda!275770))))

(declare-fun bs!1241511 () Bool)

(assert (= bs!1241511 (and b!5358847 b!5358071)))

(assert (=> bs!1241511 (not (= lambda!275815 lambda!275748))))

(declare-fun bs!1241512 () Bool)

(assert (= bs!1241512 (and b!5358847 d!1717286)))

(assert (=> bs!1241512 (not (= lambda!275815 lambda!275810))))

(declare-fun bs!1241513 () Bool)

(assert (= bs!1241513 (and b!5358847 b!5358058)))

(assert (=> bs!1241513 (not (= lambda!275815 lambda!275750))))

(declare-fun bs!1241514 () Bool)

(assert (= bs!1241514 (and b!5358847 d!1717278)))

(assert (=> bs!1241514 (not (= lambda!275815 lambda!275809))))

(declare-fun bs!1241515 () Bool)

(assert (= bs!1241515 (and b!5358847 d!1717160)))

(assert (=> bs!1241515 (not (= lambda!275815 lambda!275782))))

(assert (=> bs!1241512 (not (= lambda!275815 lambda!275811))))

(assert (=> bs!1241513 (not (= lambda!275815 lambda!275751))))

(assert (=> bs!1241515 (not (= lambda!275815 lambda!275781))))

(declare-fun bs!1241516 () Bool)

(assert (= bs!1241516 (and b!5358847 b!5358448)))

(assert (=> bs!1241516 (= (and (= (reg!15390 lt!2183384) (reg!15390 r!7292)) (= lt!2183384 r!7292)) (= lambda!275815 lambda!275796))))

(assert (=> bs!1241511 (not (= lambda!275815 lambda!275747))))

(assert (=> b!5358847 true))

(assert (=> b!5358847 true))

(declare-fun bs!1241517 () Bool)

(declare-fun b!5358843 () Bool)

(assert (= bs!1241517 (and b!5358843 d!1717138)))

(declare-fun lambda!275816 () Int)

(assert (=> bs!1241517 (not (= lambda!275816 lambda!275770))))

(declare-fun bs!1241518 () Bool)

(assert (= bs!1241518 (and b!5358843 b!5358071)))

(assert (=> bs!1241518 (= (and (= (regOne!30634 lt!2183384) (regOne!30634 r!7292)) (= (regTwo!30634 lt!2183384) (regTwo!30634 r!7292))) (= lambda!275816 lambda!275748))))

(declare-fun bs!1241519 () Bool)

(assert (= bs!1241519 (and b!5358843 d!1717286)))

(assert (=> bs!1241519 (not (= lambda!275816 lambda!275810))))

(declare-fun bs!1241520 () Bool)

(assert (= bs!1241520 (and b!5358843 b!5358058)))

(assert (=> bs!1241520 (not (= lambda!275816 lambda!275750))))

(declare-fun bs!1241521 () Bool)

(assert (= bs!1241521 (and b!5358843 d!1717278)))

(assert (=> bs!1241521 (not (= lambda!275816 lambda!275809))))

(declare-fun bs!1241522 () Bool)

(assert (= bs!1241522 (and b!5358843 d!1717160)))

(assert (=> bs!1241522 (= (and (= (regOne!30634 lt!2183384) (regOne!30634 r!7292)) (= (regTwo!30634 lt!2183384) (regTwo!30634 r!7292))) (= lambda!275816 lambda!275782))))

(assert (=> bs!1241519 (= (and (= (regOne!30634 lt!2183384) lt!2183365) (= (regTwo!30634 lt!2183384) (regTwo!30634 r!7292))) (= lambda!275816 lambda!275811))))

(assert (=> bs!1241520 (= (and (= (regOne!30634 lt!2183384) lt!2183365) (= (regTwo!30634 lt!2183384) (regTwo!30634 r!7292))) (= lambda!275816 lambda!275751))))

(assert (=> bs!1241522 (not (= lambda!275816 lambda!275781))))

(declare-fun bs!1241523 () Bool)

(assert (= bs!1241523 (and b!5358843 b!5358444)))

(assert (=> bs!1241523 (= (and (= (regOne!30634 lt!2183384) (regOne!30634 r!7292)) (= (regTwo!30634 lt!2183384) (regTwo!30634 r!7292))) (= lambda!275816 lambda!275797))))

(declare-fun bs!1241524 () Bool)

(assert (= bs!1241524 (and b!5358843 b!5358847)))

(assert (=> bs!1241524 (not (= lambda!275816 lambda!275815))))

(declare-fun bs!1241525 () Bool)

(assert (= bs!1241525 (and b!5358843 b!5358448)))

(assert (=> bs!1241525 (not (= lambda!275816 lambda!275796))))

(assert (=> bs!1241518 (not (= lambda!275816 lambda!275747))))

(assert (=> b!5358843 true))

(assert (=> b!5358843 true))

(declare-fun d!1717312 () Bool)

(declare-fun c!933132 () Bool)

(assert (=> d!1717312 (= c!933132 ((_ is EmptyExpr!15061) lt!2183384))))

(declare-fun e!3326016 () Bool)

(assert (=> d!1717312 (= (matchRSpec!2164 lt!2183384 s!2326) e!3326016)))

(declare-fun b!5358839 () Bool)

(declare-fun call!383318 () Bool)

(assert (=> b!5358839 (= e!3326016 call!383318)))

(declare-fun b!5358840 () Bool)

(declare-fun e!3326021 () Bool)

(declare-fun e!3326018 () Bool)

(assert (=> b!5358840 (= e!3326021 e!3326018)))

(declare-fun res!2273984 () Bool)

(assert (=> b!5358840 (= res!2273984 (matchRSpec!2164 (regOne!30635 lt!2183384) s!2326))))

(assert (=> b!5358840 (=> res!2273984 e!3326018)))

(declare-fun b!5358841 () Bool)

(assert (=> b!5358841 (= e!3326018 (matchRSpec!2164 (regTwo!30635 lt!2183384) s!2326))))

(declare-fun b!5358842 () Bool)

(declare-fun e!3326022 () Bool)

(assert (=> b!5358842 (= e!3326022 (= s!2326 (Cons!61360 (c!932915 lt!2183384) Nil!61360)))))

(declare-fun e!3326017 () Bool)

(declare-fun call!383317 () Bool)

(assert (=> b!5358843 (= e!3326017 call!383317)))

(declare-fun b!5358844 () Bool)

(declare-fun c!933131 () Bool)

(assert (=> b!5358844 (= c!933131 ((_ is ElementMatch!15061) lt!2183384))))

(declare-fun e!3326020 () Bool)

(assert (=> b!5358844 (= e!3326020 e!3326022)))

(declare-fun b!5358845 () Bool)

(declare-fun res!2273985 () Bool)

(declare-fun e!3326019 () Bool)

(assert (=> b!5358845 (=> res!2273985 e!3326019)))

(assert (=> b!5358845 (= res!2273985 call!383318)))

(assert (=> b!5358845 (= e!3326017 e!3326019)))

(declare-fun b!5358846 () Bool)

(declare-fun c!933129 () Bool)

(assert (=> b!5358846 (= c!933129 ((_ is Union!15061) lt!2183384))))

(assert (=> b!5358846 (= e!3326022 e!3326021)))

(declare-fun bm!383312 () Bool)

(declare-fun c!933130 () Bool)

(assert (=> bm!383312 (= call!383317 (Exists!2242 (ite c!933130 lambda!275815 lambda!275816)))))

(assert (=> b!5358847 (= e!3326019 call!383317)))

(declare-fun b!5358848 () Bool)

(assert (=> b!5358848 (= e!3326016 e!3326020)))

(declare-fun res!2273983 () Bool)

(assert (=> b!5358848 (= res!2273983 (not ((_ is EmptyLang!15061) lt!2183384)))))

(assert (=> b!5358848 (=> (not res!2273983) (not e!3326020))))

(declare-fun bm!383313 () Bool)

(assert (=> bm!383313 (= call!383318 (isEmpty!33332 s!2326))))

(declare-fun b!5358849 () Bool)

(assert (=> b!5358849 (= e!3326021 e!3326017)))

(assert (=> b!5358849 (= c!933130 ((_ is Star!15061) lt!2183384))))

(assert (= (and d!1717312 c!933132) b!5358839))

(assert (= (and d!1717312 (not c!933132)) b!5358848))

(assert (= (and b!5358848 res!2273983) b!5358844))

(assert (= (and b!5358844 c!933131) b!5358842))

(assert (= (and b!5358844 (not c!933131)) b!5358846))

(assert (= (and b!5358846 c!933129) b!5358840))

(assert (= (and b!5358846 (not c!933129)) b!5358849))

(assert (= (and b!5358840 (not res!2273984)) b!5358841))

(assert (= (and b!5358849 c!933130) b!5358845))

(assert (= (and b!5358849 (not c!933130)) b!5358843))

(assert (= (and b!5358845 (not res!2273985)) b!5358847))

(assert (= (or b!5358847 b!5358843) bm!383312))

(assert (= (or b!5358839 b!5358845) bm!383313))

(declare-fun m!6388110 () Bool)

(assert (=> b!5358840 m!6388110))

(declare-fun m!6388112 () Bool)

(assert (=> b!5358841 m!6388112))

(declare-fun m!6388114 () Bool)

(assert (=> bm!383312 m!6388114))

(assert (=> bm!383313 m!6387812))

(assert (=> b!5358065 d!1717312))

(declare-fun d!1717314 () Bool)

(assert (=> d!1717314 (= (matchR!7246 lt!2183384 s!2326) (matchRSpec!2164 lt!2183384 s!2326))))

(declare-fun lt!2183486 () Unit!153762)

(assert (=> d!1717314 (= lt!2183486 (choose!40209 lt!2183384 s!2326))))

(assert (=> d!1717314 (validRegex!6797 lt!2183384)))

(assert (=> d!1717314 (= (mainMatchTheorem!2164 lt!2183384 s!2326) lt!2183486)))

(declare-fun bs!1241526 () Bool)

(assert (= bs!1241526 d!1717314))

(assert (=> bs!1241526 m!6387414))

(assert (=> bs!1241526 m!6387416))

(declare-fun m!6388116 () Bool)

(assert (=> bs!1241526 m!6388116))

(assert (=> bs!1241526 m!6388102))

(assert (=> b!5358065 d!1717314))

(declare-fun d!1717316 () Bool)

(declare-fun lt!2183487 () Regex!15061)

(assert (=> d!1717316 (validRegex!6797 lt!2183487)))

(assert (=> d!1717316 (= lt!2183487 (generalisedUnion!990 (unfocusZipperList!503 (Cons!61359 lt!2183371 Nil!61359))))))

(assert (=> d!1717316 (= (unfocusZipper!803 (Cons!61359 lt!2183371 Nil!61359)) lt!2183487)))

(declare-fun bs!1241527 () Bool)

(assert (= bs!1241527 d!1717316))

(declare-fun m!6388118 () Bool)

(assert (=> bs!1241527 m!6388118))

(declare-fun m!6388120 () Bool)

(assert (=> bs!1241527 m!6388120))

(assert (=> bs!1241527 m!6388120))

(declare-fun m!6388122 () Bool)

(assert (=> bs!1241527 m!6388122))

(assert (=> b!5358063 d!1717316))

(declare-fun bs!1241528 () Bool)

(declare-fun d!1717318 () Bool)

(assert (= bs!1241528 (and d!1717318 d!1717266)))

(declare-fun lambda!275819 () Int)

(assert (=> bs!1241528 (= lambda!275819 lambda!275808)))

(declare-fun bs!1241529 () Bool)

(assert (= bs!1241529 (and d!1717318 d!1717294)))

(assert (=> bs!1241529 (= lambda!275819 lambda!275814)))

(declare-fun b!5358870 () Bool)

(declare-fun e!3326036 () Bool)

(declare-fun lt!2183490 () Regex!15061)

(declare-fun isEmptyLang!929 (Regex!15061) Bool)

(assert (=> b!5358870 (= e!3326036 (isEmptyLang!929 lt!2183490))))

(declare-fun b!5358871 () Bool)

(declare-fun e!3326035 () Bool)

(assert (=> b!5358871 (= e!3326036 e!3326035)))

(declare-fun c!933141 () Bool)

(assert (=> b!5358871 (= c!933141 (isEmpty!33328 (tail!10588 (unfocusZipperList!503 zl!343))))))

(declare-fun b!5358873 () Bool)

(declare-fun e!3326038 () Regex!15061)

(declare-fun e!3326037 () Regex!15061)

(assert (=> b!5358873 (= e!3326038 e!3326037)))

(declare-fun c!933144 () Bool)

(assert (=> b!5358873 (= c!933144 ((_ is Cons!61358) (unfocusZipperList!503 zl!343)))))

(declare-fun b!5358874 () Bool)

(assert (=> b!5358874 (= e!3326035 (= lt!2183490 (head!11491 (unfocusZipperList!503 zl!343))))))

(declare-fun b!5358872 () Bool)

(declare-fun e!3326040 () Bool)

(assert (=> b!5358872 (= e!3326040 (isEmpty!33328 (t!374703 (unfocusZipperList!503 zl!343))))))

(declare-fun e!3326039 () Bool)

(assert (=> d!1717318 e!3326039))

(declare-fun res!2273991 () Bool)

(assert (=> d!1717318 (=> (not res!2273991) (not e!3326039))))

(assert (=> d!1717318 (= res!2273991 (validRegex!6797 lt!2183490))))

(assert (=> d!1717318 (= lt!2183490 e!3326038)))

(declare-fun c!933143 () Bool)

(assert (=> d!1717318 (= c!933143 e!3326040)))

(declare-fun res!2273990 () Bool)

(assert (=> d!1717318 (=> (not res!2273990) (not e!3326040))))

(assert (=> d!1717318 (= res!2273990 ((_ is Cons!61358) (unfocusZipperList!503 zl!343)))))

(assert (=> d!1717318 (forall!14473 (unfocusZipperList!503 zl!343) lambda!275819)))

(assert (=> d!1717318 (= (generalisedUnion!990 (unfocusZipperList!503 zl!343)) lt!2183490)))

(declare-fun b!5358875 () Bool)

(assert (=> b!5358875 (= e!3326039 e!3326036)))

(declare-fun c!933142 () Bool)

(assert (=> b!5358875 (= c!933142 (isEmpty!33328 (unfocusZipperList!503 zl!343)))))

(declare-fun b!5358876 () Bool)

(declare-fun isUnion!361 (Regex!15061) Bool)

(assert (=> b!5358876 (= e!3326035 (isUnion!361 lt!2183490))))

(declare-fun b!5358877 () Bool)

(assert (=> b!5358877 (= e!3326037 (Union!15061 (h!67806 (unfocusZipperList!503 zl!343)) (generalisedUnion!990 (t!374703 (unfocusZipperList!503 zl!343)))))))

(declare-fun b!5358878 () Bool)

(assert (=> b!5358878 (= e!3326038 (h!67806 (unfocusZipperList!503 zl!343)))))

(declare-fun b!5358879 () Bool)

(assert (=> b!5358879 (= e!3326037 EmptyLang!15061)))

(assert (= (and d!1717318 res!2273990) b!5358872))

(assert (= (and d!1717318 c!933143) b!5358878))

(assert (= (and d!1717318 (not c!933143)) b!5358873))

(assert (= (and b!5358873 c!933144) b!5358877))

(assert (= (and b!5358873 (not c!933144)) b!5358879))

(assert (= (and d!1717318 res!2273991) b!5358875))

(assert (= (and b!5358875 c!933142) b!5358870))

(assert (= (and b!5358875 (not c!933142)) b!5358871))

(assert (= (and b!5358871 c!933141) b!5358874))

(assert (= (and b!5358871 (not c!933141)) b!5358876))

(declare-fun m!6388124 () Bool)

(assert (=> b!5358877 m!6388124))

(declare-fun m!6388126 () Bool)

(assert (=> b!5358870 m!6388126))

(assert (=> b!5358875 m!6387438))

(declare-fun m!6388128 () Bool)

(assert (=> b!5358875 m!6388128))

(declare-fun m!6388130 () Bool)

(assert (=> b!5358876 m!6388130))

(declare-fun m!6388132 () Bool)

(assert (=> b!5358872 m!6388132))

(assert (=> b!5358874 m!6387438))

(declare-fun m!6388134 () Bool)

(assert (=> b!5358874 m!6388134))

(declare-fun m!6388136 () Bool)

(assert (=> d!1717318 m!6388136))

(assert (=> d!1717318 m!6387438))

(declare-fun m!6388138 () Bool)

(assert (=> d!1717318 m!6388138))

(assert (=> b!5358871 m!6387438))

(declare-fun m!6388140 () Bool)

(assert (=> b!5358871 m!6388140))

(assert (=> b!5358871 m!6388140))

(declare-fun m!6388142 () Bool)

(assert (=> b!5358871 m!6388142))

(assert (=> b!5358083 d!1717318))

(declare-fun bs!1241530 () Bool)

(declare-fun d!1717320 () Bool)

(assert (= bs!1241530 (and d!1717320 d!1717266)))

(declare-fun lambda!275822 () Int)

(assert (=> bs!1241530 (= lambda!275822 lambda!275808)))

(declare-fun bs!1241531 () Bool)

(assert (= bs!1241531 (and d!1717320 d!1717294)))

(assert (=> bs!1241531 (= lambda!275822 lambda!275814)))

(declare-fun bs!1241532 () Bool)

(assert (= bs!1241532 (and d!1717320 d!1717318)))

(assert (=> bs!1241532 (= lambda!275822 lambda!275819)))

(declare-fun lt!2183493 () List!61482)

(assert (=> d!1717320 (forall!14473 lt!2183493 lambda!275822)))

(declare-fun e!3326043 () List!61482)

(assert (=> d!1717320 (= lt!2183493 e!3326043)))

(declare-fun c!933147 () Bool)

(assert (=> d!1717320 (= c!933147 ((_ is Cons!61359) zl!343))))

(assert (=> d!1717320 (= (unfocusZipperList!503 zl!343) lt!2183493)))

(declare-fun b!5358884 () Bool)

(assert (=> b!5358884 (= e!3326043 (Cons!61358 (generalisedConcat!730 (exprs!4945 (h!67807 zl!343))) (unfocusZipperList!503 (t!374704 zl!343))))))

(declare-fun b!5358885 () Bool)

(assert (=> b!5358885 (= e!3326043 Nil!61358)))

(assert (= (and d!1717320 c!933147) b!5358884))

(assert (= (and d!1717320 (not c!933147)) b!5358885))

(declare-fun m!6388144 () Bool)

(assert (=> d!1717320 m!6388144))

(assert (=> b!5358884 m!6387422))

(declare-fun m!6388146 () Bool)

(assert (=> b!5358884 m!6388146))

(assert (=> b!5358083 d!1717320))

(declare-fun d!1717322 () Bool)

(assert (=> d!1717322 (= (flatMap!788 lt!2183355 lambda!275749) (choose!40213 lt!2183355 lambda!275749))))

(declare-fun bs!1241533 () Bool)

(assert (= bs!1241533 d!1717322))

(declare-fun m!6388148 () Bool)

(assert (=> bs!1241533 m!6388148))

(assert (=> b!5358062 d!1717322))

(declare-fun d!1717324 () Bool)

(assert (=> d!1717324 (= (flatMap!788 lt!2183354 lambda!275749) (dynLambda!24239 lambda!275749 lt!2183378))))

(declare-fun lt!2183494 () Unit!153762)

(assert (=> d!1717324 (= lt!2183494 (choose!40214 lt!2183354 lt!2183378 lambda!275749))))

(assert (=> d!1717324 (= lt!2183354 (store ((as const (Array Context!8890 Bool)) false) lt!2183378 true))))

(assert (=> d!1717324 (= (lemmaFlatMapOnSingletonSet!320 lt!2183354 lt!2183378 lambda!275749) lt!2183494)))

(declare-fun b_lambda!205505 () Bool)

(assert (=> (not b_lambda!205505) (not d!1717324)))

(declare-fun bs!1241534 () Bool)

(assert (= bs!1241534 d!1717324))

(assert (=> bs!1241534 m!6387532))

(declare-fun m!6388150 () Bool)

(assert (=> bs!1241534 m!6388150))

(declare-fun m!6388152 () Bool)

(assert (=> bs!1241534 m!6388152))

(assert (=> bs!1241534 m!6387516))

(assert (=> b!5358062 d!1717324))

(declare-fun d!1717326 () Bool)

(declare-fun lt!2183495 () Regex!15061)

(assert (=> d!1717326 (validRegex!6797 lt!2183495)))

(assert (=> d!1717326 (= lt!2183495 (generalisedUnion!990 (unfocusZipperList!503 (Cons!61359 lt!2183382 Nil!61359))))))

(assert (=> d!1717326 (= (unfocusZipper!803 (Cons!61359 lt!2183382 Nil!61359)) lt!2183495)))

(declare-fun bs!1241535 () Bool)

(assert (= bs!1241535 d!1717326))

(declare-fun m!6388154 () Bool)

(assert (=> bs!1241535 m!6388154))

(declare-fun m!6388156 () Bool)

(assert (=> bs!1241535 m!6388156))

(assert (=> bs!1241535 m!6388156))

(declare-fun m!6388158 () Bool)

(assert (=> bs!1241535 m!6388158))

(assert (=> b!5358062 d!1717326))

(declare-fun b!5358886 () Bool)

(declare-fun e!3326046 () (InoxSet Context!8890))

(assert (=> b!5358886 (= e!3326046 ((as const (Array Context!8890 Bool)) false))))

(declare-fun b!5358887 () Bool)

(declare-fun e!3326044 () (InoxSet Context!8890))

(declare-fun call!383319 () (InoxSet Context!8890))

(assert (=> b!5358887 (= e!3326044 ((_ map or) call!383319 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 lt!2183378))) (h!67808 s!2326))))))

(declare-fun b!5358888 () Bool)

(declare-fun e!3326045 () Bool)

(assert (=> b!5358888 (= e!3326045 (nullable!5230 (h!67806 (exprs!4945 lt!2183378))))))

(declare-fun bm!383314 () Bool)

(assert (=> bm!383314 (= call!383319 (derivationStepZipperDown!509 (h!67806 (exprs!4945 lt!2183378)) (Context!8891 (t!374703 (exprs!4945 lt!2183378))) (h!67808 s!2326)))))

(declare-fun b!5358890 () Bool)

(assert (=> b!5358890 (= e!3326044 e!3326046)))

(declare-fun c!933149 () Bool)

(assert (=> b!5358890 (= c!933149 ((_ is Cons!61358) (exprs!4945 lt!2183378)))))

(declare-fun d!1717328 () Bool)

(declare-fun c!933148 () Bool)

(assert (=> d!1717328 (= c!933148 e!3326045)))

(declare-fun res!2273992 () Bool)

(assert (=> d!1717328 (=> (not res!2273992) (not e!3326045))))

(assert (=> d!1717328 (= res!2273992 ((_ is Cons!61358) (exprs!4945 lt!2183378)))))

(assert (=> d!1717328 (= (derivationStepZipperUp!433 lt!2183378 (h!67808 s!2326)) e!3326044)))

(declare-fun b!5358889 () Bool)

(assert (=> b!5358889 (= e!3326046 call!383319)))

(assert (= (and d!1717328 res!2273992) b!5358888))

(assert (= (and d!1717328 c!933148) b!5358887))

(assert (= (and d!1717328 (not c!933148)) b!5358890))

(assert (= (and b!5358890 c!933149) b!5358889))

(assert (= (and b!5358890 (not c!933149)) b!5358886))

(assert (= (or b!5358887 b!5358889) bm!383314))

(declare-fun m!6388160 () Bool)

(assert (=> b!5358887 m!6388160))

(declare-fun m!6388162 () Bool)

(assert (=> b!5358888 m!6388162))

(declare-fun m!6388164 () Bool)

(assert (=> bm!383314 m!6388164))

(assert (=> b!5358062 d!1717328))

(declare-fun d!1717330 () Bool)

(assert (=> d!1717330 (= (flatMap!788 lt!2183355 lambda!275749) (dynLambda!24239 lambda!275749 lt!2183382))))

(declare-fun lt!2183496 () Unit!153762)

(assert (=> d!1717330 (= lt!2183496 (choose!40214 lt!2183355 lt!2183382 lambda!275749))))

(assert (=> d!1717330 (= lt!2183355 (store ((as const (Array Context!8890 Bool)) false) lt!2183382 true))))

(assert (=> d!1717330 (= (lemmaFlatMapOnSingletonSet!320 lt!2183355 lt!2183382 lambda!275749) lt!2183496)))

(declare-fun b_lambda!205507 () Bool)

(assert (=> (not b_lambda!205507) (not d!1717330)))

(declare-fun bs!1241536 () Bool)

(assert (= bs!1241536 d!1717330))

(assert (=> bs!1241536 m!6387524))

(declare-fun m!6388166 () Bool)

(assert (=> bs!1241536 m!6388166))

(declare-fun m!6388168 () Bool)

(assert (=> bs!1241536 m!6388168))

(assert (=> bs!1241536 m!6387528))

(assert (=> b!5358062 d!1717330))

(declare-fun b!5358891 () Bool)

(declare-fun e!3326049 () (InoxSet Context!8890))

(assert (=> b!5358891 (= e!3326049 ((as const (Array Context!8890 Bool)) false))))

(declare-fun b!5358892 () Bool)

(declare-fun e!3326047 () (InoxSet Context!8890))

(declare-fun call!383320 () (InoxSet Context!8890))

(assert (=> b!5358892 (= e!3326047 ((_ map or) call!383320 (derivationStepZipperUp!433 (Context!8891 (t!374703 (exprs!4945 lt!2183382))) (h!67808 s!2326))))))

(declare-fun b!5358893 () Bool)

(declare-fun e!3326048 () Bool)

(assert (=> b!5358893 (= e!3326048 (nullable!5230 (h!67806 (exprs!4945 lt!2183382))))))

(declare-fun bm!383315 () Bool)

(assert (=> bm!383315 (= call!383320 (derivationStepZipperDown!509 (h!67806 (exprs!4945 lt!2183382)) (Context!8891 (t!374703 (exprs!4945 lt!2183382))) (h!67808 s!2326)))))

(declare-fun b!5358895 () Bool)

(assert (=> b!5358895 (= e!3326047 e!3326049)))

(declare-fun c!933151 () Bool)

(assert (=> b!5358895 (= c!933151 ((_ is Cons!61358) (exprs!4945 lt!2183382)))))

(declare-fun d!1717332 () Bool)

(declare-fun c!933150 () Bool)

(assert (=> d!1717332 (= c!933150 e!3326048)))

(declare-fun res!2273993 () Bool)

(assert (=> d!1717332 (=> (not res!2273993) (not e!3326048))))

(assert (=> d!1717332 (= res!2273993 ((_ is Cons!61358) (exprs!4945 lt!2183382)))))

(assert (=> d!1717332 (= (derivationStepZipperUp!433 lt!2183382 (h!67808 s!2326)) e!3326047)))

(declare-fun b!5358894 () Bool)

(assert (=> b!5358894 (= e!3326049 call!383320)))

(assert (= (and d!1717332 res!2273993) b!5358893))

(assert (= (and d!1717332 c!933150) b!5358892))

(assert (= (and d!1717332 (not c!933150)) b!5358895))

(assert (= (and b!5358895 c!933151) b!5358894))

(assert (= (and b!5358895 (not c!933151)) b!5358891))

(assert (= (or b!5358892 b!5358894) bm!383315))

(declare-fun m!6388170 () Bool)

(assert (=> b!5358892 m!6388170))

(declare-fun m!6388172 () Bool)

(assert (=> b!5358893 m!6388172))

(declare-fun m!6388174 () Bool)

(assert (=> bm!383315 m!6388174))

(assert (=> b!5358062 d!1717332))

(declare-fun d!1717334 () Bool)

(assert (=> d!1717334 (= (flatMap!788 lt!2183354 lambda!275749) (choose!40213 lt!2183354 lambda!275749))))

(declare-fun bs!1241537 () Bool)

(assert (= bs!1241537 d!1717334))

(declare-fun m!6388176 () Bool)

(assert (=> bs!1241537 m!6388176))

(assert (=> b!5358062 d!1717334))

(declare-fun bs!1241538 () Bool)

(declare-fun d!1717336 () Bool)

(assert (= bs!1241538 (and d!1717336 d!1717266)))

(declare-fun lambda!275823 () Int)

(assert (=> bs!1241538 (= lambda!275823 lambda!275808)))

(declare-fun bs!1241539 () Bool)

(assert (= bs!1241539 (and d!1717336 d!1717294)))

(assert (=> bs!1241539 (= lambda!275823 lambda!275814)))

(declare-fun bs!1241540 () Bool)

(assert (= bs!1241540 (and d!1717336 d!1717318)))

(assert (=> bs!1241540 (= lambda!275823 lambda!275819)))

(declare-fun bs!1241541 () Bool)

(assert (= bs!1241541 (and d!1717336 d!1717320)))

(assert (=> bs!1241541 (= lambda!275823 lambda!275822)))

(assert (=> d!1717336 (= (inv!80899 setElem!34669) (forall!14473 (exprs!4945 setElem!34669) lambda!275823))))

(declare-fun bs!1241542 () Bool)

(assert (= bs!1241542 d!1717336))

(declare-fun m!6388178 () Bool)

(assert (=> bs!1241542 m!6388178))

(assert (=> setNonEmpty!34669 d!1717336))

(declare-fun b!5358900 () Bool)

(declare-fun e!3326052 () Bool)

(declare-fun tp!1488114 () Bool)

(assert (=> b!5358900 (= e!3326052 (and tp_is_empty!39375 tp!1488114))))

(assert (=> b!5358070 (= tp!1488046 e!3326052)))

(assert (= (and b!5358070 ((_ is Cons!61360) (t!374705 s!2326))) b!5358900))

(declare-fun b!5358912 () Bool)

(declare-fun e!3326055 () Bool)

(declare-fun tp!1488128 () Bool)

(declare-fun tp!1488129 () Bool)

(assert (=> b!5358912 (= e!3326055 (and tp!1488128 tp!1488129))))

(assert (=> b!5358055 (= tp!1488053 e!3326055)))

(declare-fun b!5358913 () Bool)

(declare-fun tp!1488126 () Bool)

(assert (=> b!5358913 (= e!3326055 tp!1488126)))

(declare-fun b!5358914 () Bool)

(declare-fun tp!1488125 () Bool)

(declare-fun tp!1488127 () Bool)

(assert (=> b!5358914 (= e!3326055 (and tp!1488125 tp!1488127))))

(declare-fun b!5358911 () Bool)

(assert (=> b!5358911 (= e!3326055 tp_is_empty!39375)))

(assert (= (and b!5358055 ((_ is ElementMatch!15061) (reg!15390 r!7292))) b!5358911))

(assert (= (and b!5358055 ((_ is Concat!23906) (reg!15390 r!7292))) b!5358912))

(assert (= (and b!5358055 ((_ is Star!15061) (reg!15390 r!7292))) b!5358913))

(assert (= (and b!5358055 ((_ is Union!15061) (reg!15390 r!7292))) b!5358914))

(declare-fun b!5358922 () Bool)

(declare-fun e!3326061 () Bool)

(declare-fun tp!1488134 () Bool)

(assert (=> b!5358922 (= e!3326061 tp!1488134)))

(declare-fun b!5358921 () Bool)

(declare-fun tp!1488135 () Bool)

(declare-fun e!3326060 () Bool)

(assert (=> b!5358921 (= e!3326060 (and (inv!80899 (h!67807 (t!374704 zl!343))) e!3326061 tp!1488135))))

(assert (=> b!5358081 (= tp!1488048 e!3326060)))

(assert (= b!5358921 b!5358922))

(assert (= (and b!5358081 ((_ is Cons!61359) (t!374704 zl!343))) b!5358921))

(declare-fun m!6388180 () Bool)

(assert (=> b!5358921 m!6388180))

(declare-fun b!5358927 () Bool)

(declare-fun e!3326064 () Bool)

(declare-fun tp!1488140 () Bool)

(declare-fun tp!1488141 () Bool)

(assert (=> b!5358927 (= e!3326064 (and tp!1488140 tp!1488141))))

(assert (=> b!5358050 (= tp!1488047 e!3326064)))

(assert (= (and b!5358050 ((_ is Cons!61358) (exprs!4945 setElem!34669))) b!5358927))

(declare-fun b!5358928 () Bool)

(declare-fun e!3326065 () Bool)

(declare-fun tp!1488142 () Bool)

(declare-fun tp!1488143 () Bool)

(assert (=> b!5358928 (= e!3326065 (and tp!1488142 tp!1488143))))

(assert (=> b!5358076 (= tp!1488049 e!3326065)))

(assert (= (and b!5358076 ((_ is Cons!61358) (exprs!4945 (h!67807 zl!343)))) b!5358928))

(declare-fun b!5358930 () Bool)

(declare-fun e!3326066 () Bool)

(declare-fun tp!1488147 () Bool)

(declare-fun tp!1488148 () Bool)

(assert (=> b!5358930 (= e!3326066 (and tp!1488147 tp!1488148))))

(assert (=> b!5358069 (= tp!1488051 e!3326066)))

(declare-fun b!5358931 () Bool)

(declare-fun tp!1488145 () Bool)

(assert (=> b!5358931 (= e!3326066 tp!1488145)))

(declare-fun b!5358932 () Bool)

(declare-fun tp!1488144 () Bool)

(declare-fun tp!1488146 () Bool)

(assert (=> b!5358932 (= e!3326066 (and tp!1488144 tp!1488146))))

(declare-fun b!5358929 () Bool)

(assert (=> b!5358929 (= e!3326066 tp_is_empty!39375)))

(assert (= (and b!5358069 ((_ is ElementMatch!15061) (regOne!30635 r!7292))) b!5358929))

(assert (= (and b!5358069 ((_ is Concat!23906) (regOne!30635 r!7292))) b!5358930))

(assert (= (and b!5358069 ((_ is Star!15061) (regOne!30635 r!7292))) b!5358931))

(assert (= (and b!5358069 ((_ is Union!15061) (regOne!30635 r!7292))) b!5358932))

(declare-fun b!5358934 () Bool)

(declare-fun e!3326067 () Bool)

(declare-fun tp!1488152 () Bool)

(declare-fun tp!1488153 () Bool)

(assert (=> b!5358934 (= e!3326067 (and tp!1488152 tp!1488153))))

(assert (=> b!5358069 (= tp!1488045 e!3326067)))

(declare-fun b!5358935 () Bool)

(declare-fun tp!1488150 () Bool)

(assert (=> b!5358935 (= e!3326067 tp!1488150)))

(declare-fun b!5358936 () Bool)

(declare-fun tp!1488149 () Bool)

(declare-fun tp!1488151 () Bool)

(assert (=> b!5358936 (= e!3326067 (and tp!1488149 tp!1488151))))

(declare-fun b!5358933 () Bool)

(assert (=> b!5358933 (= e!3326067 tp_is_empty!39375)))

(assert (= (and b!5358069 ((_ is ElementMatch!15061) (regTwo!30635 r!7292))) b!5358933))

(assert (= (and b!5358069 ((_ is Concat!23906) (regTwo!30635 r!7292))) b!5358934))

(assert (= (and b!5358069 ((_ is Star!15061) (regTwo!30635 r!7292))) b!5358935))

(assert (= (and b!5358069 ((_ is Union!15061) (regTwo!30635 r!7292))) b!5358936))

(declare-fun b!5358938 () Bool)

(declare-fun e!3326068 () Bool)

(declare-fun tp!1488157 () Bool)

(declare-fun tp!1488158 () Bool)

(assert (=> b!5358938 (= e!3326068 (and tp!1488157 tp!1488158))))

(assert (=> b!5358064 (= tp!1488050 e!3326068)))

(declare-fun b!5358939 () Bool)

(declare-fun tp!1488155 () Bool)

(assert (=> b!5358939 (= e!3326068 tp!1488155)))

(declare-fun b!5358940 () Bool)

(declare-fun tp!1488154 () Bool)

(declare-fun tp!1488156 () Bool)

(assert (=> b!5358940 (= e!3326068 (and tp!1488154 tp!1488156))))

(declare-fun b!5358937 () Bool)

(assert (=> b!5358937 (= e!3326068 tp_is_empty!39375)))

(assert (= (and b!5358064 ((_ is ElementMatch!15061) (regOne!30634 r!7292))) b!5358937))

(assert (= (and b!5358064 ((_ is Concat!23906) (regOne!30634 r!7292))) b!5358938))

(assert (= (and b!5358064 ((_ is Star!15061) (regOne!30634 r!7292))) b!5358939))

(assert (= (and b!5358064 ((_ is Union!15061) (regOne!30634 r!7292))) b!5358940))

(declare-fun b!5358942 () Bool)

(declare-fun e!3326069 () Bool)

(declare-fun tp!1488162 () Bool)

(declare-fun tp!1488163 () Bool)

(assert (=> b!5358942 (= e!3326069 (and tp!1488162 tp!1488163))))

(assert (=> b!5358064 (= tp!1488044 e!3326069)))

(declare-fun b!5358943 () Bool)

(declare-fun tp!1488160 () Bool)

(assert (=> b!5358943 (= e!3326069 tp!1488160)))

(declare-fun b!5358944 () Bool)

(declare-fun tp!1488159 () Bool)

(declare-fun tp!1488161 () Bool)

(assert (=> b!5358944 (= e!3326069 (and tp!1488159 tp!1488161))))

(declare-fun b!5358941 () Bool)

(assert (=> b!5358941 (= e!3326069 tp_is_empty!39375)))

(assert (= (and b!5358064 ((_ is ElementMatch!15061) (regTwo!30634 r!7292))) b!5358941))

(assert (= (and b!5358064 ((_ is Concat!23906) (regTwo!30634 r!7292))) b!5358942))

(assert (= (and b!5358064 ((_ is Star!15061) (regTwo!30634 r!7292))) b!5358943))

(assert (= (and b!5358064 ((_ is Union!15061) (regTwo!30634 r!7292))) b!5358944))

(declare-fun condSetEmpty!34675 () Bool)

(assert (=> setNonEmpty!34669 (= condSetEmpty!34675 (= setRest!34669 ((as const (Array Context!8890 Bool)) false)))))

(declare-fun setRes!34675 () Bool)

(assert (=> setNonEmpty!34669 (= tp!1488052 setRes!34675)))

(declare-fun setIsEmpty!34675 () Bool)

(assert (=> setIsEmpty!34675 setRes!34675))

(declare-fun setNonEmpty!34675 () Bool)

(declare-fun e!3326072 () Bool)

(declare-fun setElem!34675 () Context!8890)

(declare-fun tp!1488168 () Bool)

(assert (=> setNonEmpty!34675 (= setRes!34675 (and tp!1488168 (inv!80899 setElem!34675) e!3326072))))

(declare-fun setRest!34675 () (InoxSet Context!8890))

(assert (=> setNonEmpty!34675 (= setRest!34669 ((_ map or) (store ((as const (Array Context!8890 Bool)) false) setElem!34675 true) setRest!34675))))

(declare-fun b!5358949 () Bool)

(declare-fun tp!1488169 () Bool)

(assert (=> b!5358949 (= e!3326072 tp!1488169)))

(assert (= (and setNonEmpty!34669 condSetEmpty!34675) setIsEmpty!34675))

(assert (= (and setNonEmpty!34669 (not condSetEmpty!34675)) setNonEmpty!34675))

(assert (= setNonEmpty!34675 b!5358949))

(declare-fun m!6388182 () Bool)

(assert (=> setNonEmpty!34675 m!6388182))

(declare-fun b_lambda!205509 () Bool)

(assert (= b_lambda!205507 (or b!5358084 b_lambda!205509)))

(declare-fun bs!1241543 () Bool)

(declare-fun d!1717338 () Bool)

(assert (= bs!1241543 (and d!1717338 b!5358084)))

(assert (=> bs!1241543 (= (dynLambda!24239 lambda!275749 lt!2183382) (derivationStepZipperUp!433 lt!2183382 (h!67808 s!2326)))))

(assert (=> bs!1241543 m!6387520))

(assert (=> d!1717330 d!1717338))

(declare-fun b_lambda!205511 () Bool)

(assert (= b_lambda!205503 (or b!5358084 b_lambda!205511)))

(declare-fun bs!1241544 () Bool)

(declare-fun d!1717340 () Bool)

(assert (= bs!1241544 (and d!1717340 b!5358084)))

(assert (=> bs!1241544 (= (dynLambda!24239 lambda!275749 (h!67807 zl!343)) (derivationStepZipperUp!433 (h!67807 zl!343) (h!67808 s!2326)))))

(assert (=> bs!1241544 m!6387506))

(assert (=> d!1717306 d!1717340))

(declare-fun b_lambda!205513 () Bool)

(assert (= b_lambda!205505 (or b!5358084 b_lambda!205513)))

(declare-fun bs!1241545 () Bool)

(declare-fun d!1717342 () Bool)

(assert (= bs!1241545 (and d!1717342 b!5358084)))

(assert (=> bs!1241545 (= (dynLambda!24239 lambda!275749 lt!2183378) (derivationStepZipperUp!433 lt!2183378 (h!67808 s!2326)))))

(assert (=> bs!1241545 m!6387522))

(assert (=> d!1717324 d!1717342))

(declare-fun b_lambda!205515 () Bool)

(assert (= b_lambda!205501 (or b!5358084 b_lambda!205515)))

(declare-fun bs!1241546 () Bool)

(declare-fun d!1717344 () Bool)

(assert (= bs!1241546 (and d!1717344 b!5358084)))

(assert (=> bs!1241546 (= (dynLambda!24239 lambda!275749 lt!2183371) (derivationStepZipperUp!433 lt!2183371 (h!67808 s!2326)))))

(assert (=> bs!1241546 m!6387476))

(assert (=> d!1717250 d!1717344))

(check-sat (not d!1717294) (not d!1717268) (not d!1717334) (not bm!383313) (not d!1717278) (not bm!383265) (not b!5358717) (not bm!383300) (not b!5358892) (not d!1717300) (not b!5358744) (not b!5358826) (not b!5358574) (not b!5358872) (not b!5358799) (not bs!1241543) (not d!1717254) (not b!5358765) (not b!5358798) (not b!5358768) (not bm!383315) (not b!5358792) (not b!5358939) tp_is_empty!39375 (not d!1717292) (not b!5358812) (not b!5358874) (not b!5358940) (not d!1717290) (not b!5358949) (not b!5358914) (not b!5358875) (not d!1717326) (not b!5358942) (not b!5358822) (not bm!383230) (not b!5358935) (not bm!383309) (not b!5358751) (not d!1717276) (not b!5358191) (not bm!383295) (not b!5358441) (not bs!1241545) (not d!1717274) (not d!1717230) (not b!5358938) (not b!5358702) (not b!5358922) (not b!5358900) (not b!5358192) (not d!1717174) (not b_lambda!205513) (not b!5358921) (not b_lambda!205509) (not b_lambda!205511) (not bm!383297) (not b!5358726) (not bm!383302) (not b!5358811) (not b!5358734) (not d!1717262) (not bm!383307) (not b!5358790) (not b!5358789) (not b!5358188) (not b!5358730) (not b!5358817) (not bm!383310) (not b!5358762) (not b!5358733) (not b!5358584) (not b!5358913) (not b!5358797) (not d!1717246) (not d!1717260) (not b!5358912) (not d!1717282) (not bm!383308) (not bm!383312) (not b!5358731) (not setNonEmpty!34675) (not bm!383280) (not d!1717314) (not d!1717252) (not b_lambda!205515) (not d!1717320) (not d!1717310) (not d!1717266) (not d!1717284) (not bm!383278) (not b!5358793) (not b!5358928) (not b!5358932) (not b!5358887) (not d!1717160) (not d!1717306) (not d!1717330) (not b!5358752) (not bm!383231) (not d!1717304) (not bm!383292) (not b!5358871) (not b!5358795) (not b!5358829) (not b!5358737) (not b!5358667) (not b!5358838) (not b!5358934) (not b!5358748) (not bs!1241544) (not d!1717130) (not d!1717250) (not b!5358187) (not d!1717256) (not b!5358835) (not b!5358587) (not d!1717194) (not b!5358930) (not bm!383311) (not b!5358841) (not b!5358766) (not b!5358732) (not d!1717112) (not d!1717272) (not bm!383314) (not b!5358767) (not b!5358877) (not b!5358575) (not b!5358190) (not b!5358840) (not bm!383298) (not d!1717336) (not b!5358750) (not b!5358931) (not d!1717318) (not b!5358727) (not d!1717258) (not b!5358816) (not b!5358821) (not d!1717138) (not b!5358193) (not b!5358870) (not b!5358578) (not b!5358583) (not d!1717136) (not b!5358943) (not d!1717264) (not b!5358884) (not bm!383304) (not b!5358753) (not b!5358876) (not b!5358927) (not b!5358442) (not d!1717324) (not b!5358834) (not bm!383301) (not bs!1241546) (not d!1717322) (not d!1717316) (not b!5358893) (not d!1717286) (not b!5358716) (not b!5358747) (not b!5358944) (not bm!383283) (not b!5358888) (not b!5358936) (not bm!383291) (not b!5358825))
(check-sat)
