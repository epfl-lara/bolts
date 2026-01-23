; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558034 () Bool)

(assert start!558034)

(declare-fun b!5286157 () Bool)

(assert (=> b!5286157 true))

(assert (=> b!5286157 true))

(declare-fun lambda!267345 () Int)

(declare-fun lambda!267344 () Int)

(assert (=> b!5286157 (not (= lambda!267345 lambda!267344))))

(assert (=> b!5286157 true))

(assert (=> b!5286157 true))

(declare-fun b!5286144 () Bool)

(assert (=> b!5286144 true))

(declare-fun bs!1224964 () Bool)

(declare-fun b!5286143 () Bool)

(assert (= bs!1224964 (and b!5286143 b!5286157)))

(declare-datatypes ((C!30104 0))(
  ( (C!30105 (val!24754 Int)) )
))
(declare-datatypes ((Regex!14917 0))(
  ( (ElementMatch!14917 (c!916617 C!30104)) (Concat!23762 (regOne!30346 Regex!14917) (regTwo!30346 Regex!14917)) (EmptyExpr!14917) (Star!14917 (reg!15246 Regex!14917)) (EmptyLang!14917) (Union!14917 (regOne!30347 Regex!14917) (regTwo!30347 Regex!14917)) )
))
(declare-fun r!7292 () Regex!14917)

(declare-fun lambda!267347 () Int)

(declare-fun lt!2160632 () Regex!14917)

(assert (=> bs!1224964 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267347 lambda!267344))))

(assert (=> bs!1224964 (not (= lambda!267347 lambda!267345))))

(assert (=> b!5286143 true))

(assert (=> b!5286143 true))

(assert (=> b!5286143 true))

(declare-fun lambda!267348 () Int)

(assert (=> bs!1224964 (not (= lambda!267348 lambda!267344))))

(assert (=> bs!1224964 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267348 lambda!267345))))

(assert (=> b!5286143 (not (= lambda!267348 lambda!267347))))

(assert (=> b!5286143 true))

(assert (=> b!5286143 true))

(assert (=> b!5286143 true))

(declare-fun b!5286124 () Bool)

(declare-fun res!2242024 () Bool)

(declare-fun e!3286528 () Bool)

(assert (=> b!5286124 (=> (not res!2242024) (not e!3286528))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61050 0))(
  ( (Nil!60926) (Cons!60926 (h!67374 Regex!14917) (t!374253 List!61050)) )
))
(declare-datatypes ((Context!8602 0))(
  ( (Context!8603 (exprs!4801 List!61050)) )
))
(declare-fun z!1189 () (InoxSet Context!8602))

(declare-datatypes ((List!61051 0))(
  ( (Nil!60927) (Cons!60927 (h!67375 Context!8602) (t!374254 List!61051)) )
))
(declare-fun zl!343 () List!61051)

(declare-fun toList!8701 ((InoxSet Context!8602)) List!61051)

(assert (=> b!5286124 (= res!2242024 (= (toList!8701 z!1189) zl!343))))

(declare-fun b!5286125 () Bool)

(declare-fun e!3286534 () Bool)

(declare-fun tp!1476177 () Bool)

(declare-fun tp!1476181 () Bool)

(assert (=> b!5286125 (= e!3286534 (and tp!1476177 tp!1476181))))

(declare-fun b!5286126 () Bool)

(declare-fun res!2242032 () Bool)

(declare-fun e!3286526 () Bool)

(assert (=> b!5286126 (=> res!2242032 e!3286526)))

(get-info :version)

(assert (=> b!5286126 (= res!2242032 (not ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5286127 () Bool)

(declare-fun res!2242027 () Bool)

(declare-fun e!3286535 () Bool)

(assert (=> b!5286127 (=> res!2242027 e!3286535)))

(declare-fun nullable!5086 (Regex!14917) Bool)

(assert (=> b!5286127 (= res!2242027 (not (nullable!5086 (regOne!30346 (regOne!30346 r!7292)))))))

(declare-fun b!5286128 () Bool)

(declare-fun e!3286527 () Bool)

(declare-fun e!3286525 () Bool)

(assert (=> b!5286128 (= e!3286527 e!3286525)))

(declare-fun res!2242022 () Bool)

(assert (=> b!5286128 (=> res!2242022 e!3286525)))

(declare-fun lt!2160649 () (InoxSet Context!8602))

(declare-fun lt!2160623 () (InoxSet Context!8602))

(assert (=> b!5286128 (= res!2242022 (not (= lt!2160649 lt!2160623)))))

(declare-fun lt!2160620 () (InoxSet Context!8602))

(declare-fun lt!2160631 () (InoxSet Context!8602))

(assert (=> b!5286128 (= lt!2160623 ((_ map or) lt!2160620 lt!2160631))))

(declare-fun lt!2160657 () Context!8602)

(declare-datatypes ((List!61052 0))(
  ( (Nil!60928) (Cons!60928 (h!67376 C!30104) (t!374255 List!61052)) )
))
(declare-fun s!2326 () List!61052)

(declare-fun derivationStepZipperUp!289 (Context!8602 C!30104) (InoxSet Context!8602))

(assert (=> b!5286128 (= lt!2160631 (derivationStepZipperUp!289 lt!2160657 (h!67376 s!2326)))))

(declare-fun lambda!267346 () Int)

(declare-fun lt!2160645 () (InoxSet Context!8602))

(declare-fun lt!2160653 () Context!8602)

(declare-fun flatMap!644 ((InoxSet Context!8602) Int) (InoxSet Context!8602))

(assert (=> b!5286128 (= (flatMap!644 lt!2160645 lambda!267346) (derivationStepZipperUp!289 lt!2160653 (h!67376 s!2326)))))

(declare-datatypes ((Unit!153186 0))(
  ( (Unit!153187) )
))
(declare-fun lt!2160627 () Unit!153186)

(declare-fun lemmaFlatMapOnSingletonSet!176 ((InoxSet Context!8602) Context!8602 Int) Unit!153186)

(assert (=> b!5286128 (= lt!2160627 (lemmaFlatMapOnSingletonSet!176 lt!2160645 lt!2160653 lambda!267346))))

(declare-fun lt!2160636 () (InoxSet Context!8602))

(assert (=> b!5286128 (= lt!2160636 (derivationStepZipperUp!289 lt!2160653 (h!67376 s!2326)))))

(declare-fun derivationStepZipper!1160 ((InoxSet Context!8602) C!30104) (InoxSet Context!8602))

(assert (=> b!5286128 (= lt!2160649 (derivationStepZipper!1160 lt!2160645 (h!67376 s!2326)))))

(declare-fun lt!2160654 () (InoxSet Context!8602))

(assert (=> b!5286128 (= lt!2160654 (store ((as const (Array Context!8602 Bool)) false) lt!2160657 true))))

(assert (=> b!5286128 (= lt!2160645 (store ((as const (Array Context!8602 Bool)) false) lt!2160653 true))))

(declare-fun lt!2160641 () List!61050)

(assert (=> b!5286128 (= lt!2160653 (Context!8603 lt!2160641))))

(declare-fun lt!2160642 () List!61050)

(assert (=> b!5286128 (= lt!2160641 (Cons!60926 (regOne!30346 (regOne!30346 r!7292)) lt!2160642))))

(declare-fun b!5286129 () Bool)

(declare-fun e!3286529 () Bool)

(assert (=> b!5286129 (= e!3286535 e!3286529)))

(declare-fun res!2242029 () Bool)

(assert (=> b!5286129 (=> res!2242029 e!3286529)))

(declare-fun lt!2160625 () (InoxSet Context!8602))

(declare-fun lt!2160658 () (InoxSet Context!8602))

(assert (=> b!5286129 (= res!2242029 (not (= lt!2160625 lt!2160658)))))

(declare-fun lt!2160651 () (InoxSet Context!8602))

(assert (=> b!5286129 (= lt!2160658 ((_ map or) lt!2160620 lt!2160651))))

(declare-fun lt!2160634 () Context!8602)

(declare-fun derivationStepZipperDown!365 (Regex!14917 Context!8602 C!30104) (InoxSet Context!8602))

(assert (=> b!5286129 (= lt!2160651 (derivationStepZipperDown!365 (regTwo!30346 (regOne!30346 r!7292)) lt!2160634 (h!67376 s!2326)))))

(assert (=> b!5286129 (= lt!2160620 (derivationStepZipperDown!365 (regOne!30346 (regOne!30346 r!7292)) lt!2160657 (h!67376 s!2326)))))

(assert (=> b!5286129 (= lt!2160657 (Context!8603 lt!2160642))))

(assert (=> b!5286129 (= lt!2160642 (Cons!60926 (regTwo!30346 (regOne!30346 r!7292)) (t!374253 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5286130 () Bool)

(assert (=> b!5286130 (= e!3286529 e!3286527)))

(declare-fun res!2242031 () Bool)

(assert (=> b!5286130 (=> res!2242031 e!3286527)))

(declare-fun e!3286531 () Bool)

(assert (=> b!5286130 (= res!2242031 e!3286531)))

(declare-fun res!2242030 () Bool)

(assert (=> b!5286130 (=> (not res!2242030) (not e!3286531))))

(declare-fun lt!2160647 () Bool)

(declare-fun lt!2160630 () Bool)

(assert (=> b!5286130 (= res!2242030 (not (= lt!2160647 lt!2160630)))))

(declare-fun matchZipper!1161 ((InoxSet Context!8602) List!61052) Bool)

(assert (=> b!5286130 (= lt!2160647 (matchZipper!1161 lt!2160625 (t!374255 s!2326)))))

(declare-fun e!3286521 () Bool)

(assert (=> b!5286130 (= (matchZipper!1161 lt!2160658 (t!374255 s!2326)) e!3286521)))

(declare-fun res!2242019 () Bool)

(assert (=> b!5286130 (=> res!2242019 e!3286521)))

(assert (=> b!5286130 (= res!2242019 lt!2160630)))

(assert (=> b!5286130 (= lt!2160630 (matchZipper!1161 lt!2160620 (t!374255 s!2326)))))

(declare-fun lt!2160621 () Unit!153186)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!154 ((InoxSet Context!8602) (InoxSet Context!8602) List!61052) Unit!153186)

(assert (=> b!5286130 (= lt!2160621 (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160620 lt!2160651 (t!374255 s!2326)))))

(declare-fun b!5286131 () Bool)

(declare-fun e!3286519 () Bool)

(assert (=> b!5286131 (= e!3286525 e!3286519)))

(declare-fun res!2242021 () Bool)

(assert (=> b!5286131 (=> res!2242021 e!3286519)))

(declare-fun e!3286523 () Bool)

(assert (=> b!5286131 (= res!2242021 e!3286523)))

(declare-fun res!2242035 () Bool)

(assert (=> b!5286131 (=> (not res!2242035) (not e!3286523))))

(assert (=> b!5286131 (= res!2242035 (not (= lt!2160647 (matchZipper!1161 lt!2160649 (t!374255 s!2326)))))))

(declare-fun e!3286522 () Bool)

(assert (=> b!5286131 (= (matchZipper!1161 lt!2160623 (t!374255 s!2326)) e!3286522)))

(declare-fun res!2242041 () Bool)

(assert (=> b!5286131 (=> res!2242041 e!3286522)))

(assert (=> b!5286131 (= res!2242041 lt!2160630)))

(declare-fun lt!2160639 () Unit!153186)

(assert (=> b!5286131 (= lt!2160639 (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160620 lt!2160631 (t!374255 s!2326)))))

(assert (=> b!5286131 (= (flatMap!644 lt!2160654 lambda!267346) (derivationStepZipperUp!289 lt!2160657 (h!67376 s!2326)))))

(declare-fun lt!2160644 () Unit!153186)

(assert (=> b!5286131 (= lt!2160644 (lemmaFlatMapOnSingletonSet!176 lt!2160654 lt!2160657 lambda!267346))))

(declare-fun b!5286132 () Bool)

(assert (=> b!5286132 (= e!3286523 (not (matchZipper!1161 (derivationStepZipper!1160 lt!2160654 (h!67376 s!2326)) (t!374255 s!2326))))))

(declare-fun b!5286133 () Bool)

(assert (=> b!5286133 (= e!3286531 (not (matchZipper!1161 lt!2160651 (t!374255 s!2326))))))

(declare-fun b!5286134 () Bool)

(declare-fun tp!1476184 () Bool)

(assert (=> b!5286134 (= e!3286534 tp!1476184)))

(declare-fun b!5286135 () Bool)

(declare-fun tp!1476176 () Bool)

(declare-fun tp!1476182 () Bool)

(assert (=> b!5286135 (= e!3286534 (and tp!1476176 tp!1476182))))

(declare-fun b!5286136 () Bool)

(declare-fun res!2242036 () Bool)

(declare-fun e!3286518 () Bool)

(assert (=> b!5286136 (=> res!2242036 e!3286518)))

(declare-fun lt!2160626 () List!61051)

(declare-fun zipperDepth!34 (List!61051) Int)

(assert (=> b!5286136 (= res!2242036 (> (zipperDepth!34 lt!2160626) (zipperDepth!34 zl!343)))))

(declare-fun b!5286137 () Bool)

(declare-fun res!2242028 () Bool)

(assert (=> b!5286137 (=> res!2242028 e!3286519)))

(declare-fun contextDepthTotal!58 (Context!8602) Int)

(assert (=> b!5286137 (= res!2242028 (>= (contextDepthTotal!58 lt!2160653) (contextDepthTotal!58 (h!67375 zl!343))))))

(declare-fun b!5286138 () Bool)

(declare-fun e!3286530 () Bool)

(declare-fun tp!1476183 () Bool)

(assert (=> b!5286138 (= e!3286530 tp!1476183)))

(declare-fun b!5286139 () Bool)

(declare-fun res!2242039 () Bool)

(declare-fun e!3286524 () Bool)

(assert (=> b!5286139 (=> res!2242039 e!3286524)))

(declare-fun isEmpty!32879 (List!61050) Bool)

(assert (=> b!5286139 (= res!2242039 (isEmpty!32879 (t!374253 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5286140 () Bool)

(declare-fun e!3286520 () Bool)

(declare-fun tp!1476179 () Bool)

(assert (=> b!5286140 (= e!3286520 tp!1476179)))

(declare-fun setIsEmpty!33911 () Bool)

(declare-fun setRes!33911 () Bool)

(assert (=> setIsEmpty!33911 setRes!33911))

(declare-fun b!5286141 () Bool)

(declare-fun res!2242037 () Bool)

(assert (=> b!5286141 (=> res!2242037 e!3286519)))

(assert (=> b!5286141 (= res!2242037 (not (= (exprs!4801 (h!67375 zl!343)) (Cons!60926 (Concat!23762 (regOne!30346 (regOne!30346 r!7292)) (regTwo!30346 (regOne!30346 r!7292))) (t!374253 (exprs!4801 (h!67375 zl!343)))))))))

(declare-fun b!5286142 () Bool)

(declare-fun res!2242018 () Bool)

(assert (=> b!5286142 (=> res!2242018 e!3286526)))

(declare-fun generalisedConcat!586 (List!61050) Regex!14917)

(assert (=> b!5286142 (= res!2242018 (not (= r!7292 (generalisedConcat!586 (exprs!4801 (h!67375 zl!343))))))))

(declare-fun lambda!267349 () Int)

(declare-fun forall!14325 (List!61050 Int) Bool)

(assert (=> b!5286143 (= e!3286518 (forall!14325 lt!2160642 lambda!267349))))

(declare-fun Exists!2098 (Int) Bool)

(assert (=> b!5286143 (= (Exists!2098 lambda!267347) (Exists!2098 lambda!267348))))

(declare-fun lt!2160655 () Unit!153186)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!752 (Regex!14917 Regex!14917 List!61052) Unit!153186)

(assert (=> b!5286143 (= lt!2160655 (lemmaExistCutMatchRandMatchRSpecEquivalent!752 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326))))

(declare-datatypes ((tuple2!64232 0))(
  ( (tuple2!64233 (_1!35419 List!61052) (_2!35419 List!61052)) )
))
(declare-datatypes ((Option!15028 0))(
  ( (None!15027) (Some!15027 (v!51056 tuple2!64232)) )
))
(declare-fun isDefined!11731 (Option!15028) Bool)

(declare-fun findConcatSeparation!1442 (Regex!14917 Regex!14917 List!61052 List!61052 List!61052) Option!15028)

(assert (=> b!5286143 (= (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 Nil!60928 s!2326 s!2326)) (Exists!2098 lambda!267347))))

(declare-fun lt!2160629 () Unit!153186)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1206 (Regex!14917 Regex!14917 List!61052) Unit!153186)

(assert (=> b!5286143 (= lt!2160629 (lemmaFindConcatSeparationEquivalentToExists!1206 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326))))

(declare-fun lt!2160619 () Bool)

(declare-fun lt!2160633 () Regex!14917)

(declare-fun matchRSpec!2020 (Regex!14917 List!61052) Bool)

(assert (=> b!5286143 (= lt!2160619 (matchRSpec!2020 lt!2160633 s!2326))))

(declare-fun lt!2160652 () Unit!153186)

(declare-fun mainMatchTheorem!2020 (Regex!14917 List!61052) Unit!153186)

(assert (=> b!5286143 (= lt!2160652 (mainMatchTheorem!2020 lt!2160633 s!2326))))

(declare-fun matchR!7102 (Regex!14917 List!61052) Bool)

(assert (=> b!5286143 (= (matchR!7102 lt!2160632 s!2326) (matchZipper!1161 lt!2160654 s!2326))))

(declare-fun lt!2160646 () Unit!153186)

(declare-fun theoremZipperRegexEquiv!327 ((InoxSet Context!8602) List!61051 Regex!14917 List!61052) Unit!153186)

(assert (=> b!5286143 (= lt!2160646 (theoremZipperRegexEquiv!327 lt!2160654 (Cons!60927 lt!2160657 Nil!60927) lt!2160632 s!2326))))

(assert (=> b!5286143 (= lt!2160632 (generalisedConcat!586 lt!2160642))))

(assert (=> b!5286143 (= lt!2160619 (matchZipper!1161 lt!2160645 s!2326))))

(assert (=> b!5286143 (= lt!2160619 (matchR!7102 lt!2160633 s!2326))))

(declare-fun lt!2160656 () Unit!153186)

(assert (=> b!5286143 (= lt!2160656 (theoremZipperRegexEquiv!327 lt!2160645 lt!2160626 lt!2160633 s!2326))))

(assert (=> b!5286143 (= lt!2160633 (generalisedConcat!586 lt!2160641))))

(assert (=> b!5286144 (= e!3286524 e!3286535)))

(declare-fun res!2242038 () Bool)

(assert (=> b!5286144 (=> res!2242038 e!3286535)))

(assert (=> b!5286144 (= res!2242038 (or (and ((_ is ElementMatch!14917) (regOne!30346 r!7292)) (= (c!916617 (regOne!30346 r!7292)) (h!67376 s!2326))) ((_ is Union!14917) (regOne!30346 r!7292)) (not ((_ is Concat!23762) (regOne!30346 r!7292)))))))

(declare-fun lt!2160628 () Unit!153186)

(declare-fun e!3286532 () Unit!153186)

(assert (=> b!5286144 (= lt!2160628 e!3286532)))

(declare-fun c!916616 () Bool)

(assert (=> b!5286144 (= c!916616 (nullable!5086 (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(assert (=> b!5286144 (= (flatMap!644 z!1189 lambda!267346) (derivationStepZipperUp!289 (h!67375 zl!343) (h!67376 s!2326)))))

(declare-fun lt!2160643 () Unit!153186)

(assert (=> b!5286144 (= lt!2160643 (lemmaFlatMapOnSingletonSet!176 z!1189 (h!67375 zl!343) lambda!267346))))

(declare-fun lt!2160624 () (InoxSet Context!8602))

(assert (=> b!5286144 (= lt!2160624 (derivationStepZipperUp!289 lt!2160634 (h!67376 s!2326)))))

(assert (=> b!5286144 (= lt!2160625 (derivationStepZipperDown!365 (h!67374 (exprs!4801 (h!67375 zl!343))) lt!2160634 (h!67376 s!2326)))))

(assert (=> b!5286144 (= lt!2160634 (Context!8603 (t!374253 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun lt!2160622 () (InoxSet Context!8602))

(assert (=> b!5286144 (= lt!2160622 (derivationStepZipperUp!289 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343))))) (h!67376 s!2326)))))

(declare-fun tp!1476180 () Bool)

(declare-fun b!5286145 () Bool)

(declare-fun e!3286517 () Bool)

(declare-fun inv!80539 (Context!8602) Bool)

(assert (=> b!5286145 (= e!3286517 (and (inv!80539 (h!67375 zl!343)) e!3286530 tp!1476180))))

(declare-fun b!5286146 () Bool)

(declare-fun res!2242033 () Bool)

(assert (=> b!5286146 (=> res!2242033 e!3286526)))

(declare-fun generalisedUnion!846 (List!61050) Regex!14917)

(declare-fun unfocusZipperList!359 (List!61051) List!61050)

(assert (=> b!5286146 (= res!2242033 (not (= r!7292 (generalisedUnion!846 (unfocusZipperList!359 zl!343)))))))

(declare-fun b!5286147 () Bool)

(declare-fun tp_is_empty!39087 () Bool)

(assert (=> b!5286147 (= e!3286534 tp_is_empty!39087)))

(declare-fun b!5286148 () Bool)

(assert (=> b!5286148 (= e!3286519 e!3286518)))

(declare-fun res!2242026 () Bool)

(assert (=> b!5286148 (=> res!2242026 e!3286518)))

(declare-fun zipperDepthTotal!78 (List!61051) Int)

(assert (=> b!5286148 (= res!2242026 (>= (zipperDepthTotal!78 lt!2160626) (zipperDepthTotal!78 zl!343)))))

(assert (=> b!5286148 (= lt!2160626 (Cons!60927 lt!2160653 Nil!60927))))

(declare-fun b!5286149 () Bool)

(declare-fun Unit!153188 () Unit!153186)

(assert (=> b!5286149 (= e!3286532 Unit!153188)))

(declare-fun lt!2160648 () Unit!153186)

(assert (=> b!5286149 (= lt!2160648 (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160625 lt!2160624 (t!374255 s!2326)))))

(declare-fun res!2242042 () Bool)

(assert (=> b!5286149 (= res!2242042 (matchZipper!1161 lt!2160625 (t!374255 s!2326)))))

(declare-fun e!3286533 () Bool)

(assert (=> b!5286149 (=> res!2242042 e!3286533)))

(assert (=> b!5286149 (= (matchZipper!1161 ((_ map or) lt!2160625 lt!2160624) (t!374255 s!2326)) e!3286533)))

(declare-fun b!5286150 () Bool)

(assert (=> b!5286150 (= e!3286533 (matchZipper!1161 lt!2160624 (t!374255 s!2326)))))

(declare-fun b!5286151 () Bool)

(declare-fun res!2242025 () Bool)

(assert (=> b!5286151 (=> res!2242025 e!3286526)))

(assert (=> b!5286151 (= res!2242025 (or ((_ is EmptyExpr!14917) r!7292) ((_ is EmptyLang!14917) r!7292) ((_ is ElementMatch!14917) r!7292) ((_ is Union!14917) r!7292) (not ((_ is Concat!23762) r!7292))))))

(declare-fun b!5286152 () Bool)

(declare-fun res!2242043 () Bool)

(assert (=> b!5286152 (=> (not res!2242043) (not e!3286528))))

(declare-fun unfocusZipper!659 (List!61051) Regex!14917)

(assert (=> b!5286152 (= res!2242043 (= r!7292 (unfocusZipper!659 zl!343)))))

(declare-fun b!5286153 () Bool)

(assert (=> b!5286153 (= e!3286528 (not e!3286526))))

(declare-fun res!2242040 () Bool)

(assert (=> b!5286153 (=> res!2242040 e!3286526)))

(assert (=> b!5286153 (= res!2242040 (not ((_ is Cons!60927) zl!343)))))

(declare-fun lt!2160637 () Bool)

(assert (=> b!5286153 (= lt!2160637 (matchRSpec!2020 r!7292 s!2326))))

(assert (=> b!5286153 (= lt!2160637 (matchR!7102 r!7292 s!2326))))

(declare-fun lt!2160638 () Unit!153186)

(assert (=> b!5286153 (= lt!2160638 (mainMatchTheorem!2020 r!7292 s!2326))))

(declare-fun b!5286154 () Bool)

(declare-fun res!2242034 () Bool)

(assert (=> b!5286154 (=> res!2242034 e!3286526)))

(declare-fun isEmpty!32880 (List!61051) Bool)

(assert (=> b!5286154 (= res!2242034 (not (isEmpty!32880 (t!374254 zl!343))))))

(declare-fun b!5286155 () Bool)

(assert (=> b!5286155 (= e!3286522 (matchZipper!1161 lt!2160631 (t!374255 s!2326)))))

(declare-fun b!5286156 () Bool)

(declare-fun e!3286536 () Bool)

(declare-fun tp!1476185 () Bool)

(assert (=> b!5286156 (= e!3286536 (and tp_is_empty!39087 tp!1476185))))

(assert (=> b!5286157 (= e!3286526 e!3286524)))

(declare-fun res!2242023 () Bool)

(assert (=> b!5286157 (=> res!2242023 e!3286524)))

(declare-fun lt!2160650 () Bool)

(assert (=> b!5286157 (= res!2242023 (or (not (= lt!2160637 lt!2160650)) ((_ is Nil!60928) s!2326)))))

(assert (=> b!5286157 (= (Exists!2098 lambda!267344) (Exists!2098 lambda!267345))))

(declare-fun lt!2160640 () Unit!153186)

(assert (=> b!5286157 (= lt!2160640 (lemmaExistCutMatchRandMatchRSpecEquivalent!752 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326))))

(assert (=> b!5286157 (= lt!2160650 (Exists!2098 lambda!267344))))

(assert (=> b!5286157 (= lt!2160650 (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) Nil!60928 s!2326 s!2326)))))

(declare-fun lt!2160635 () Unit!153186)

(assert (=> b!5286157 (= lt!2160635 (lemmaFindConcatSeparationEquivalentToExists!1206 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326))))

(declare-fun setElem!33911 () Context!8602)

(declare-fun setNonEmpty!33911 () Bool)

(declare-fun tp!1476178 () Bool)

(assert (=> setNonEmpty!33911 (= setRes!33911 (and tp!1476178 (inv!80539 setElem!33911) e!3286520))))

(declare-fun setRest!33911 () (InoxSet Context!8602))

(assert (=> setNonEmpty!33911 (= z!1189 ((_ map or) (store ((as const (Array Context!8602 Bool)) false) setElem!33911 true) setRest!33911))))

(declare-fun res!2242020 () Bool)

(assert (=> start!558034 (=> (not res!2242020) (not e!3286528))))

(declare-fun validRegex!6653 (Regex!14917) Bool)

(assert (=> start!558034 (= res!2242020 (validRegex!6653 r!7292))))

(assert (=> start!558034 e!3286528))

(assert (=> start!558034 e!3286534))

(declare-fun condSetEmpty!33911 () Bool)

(assert (=> start!558034 (= condSetEmpty!33911 (= z!1189 ((as const (Array Context!8602 Bool)) false)))))

(assert (=> start!558034 setRes!33911))

(assert (=> start!558034 e!3286517))

(assert (=> start!558034 e!3286536))

(declare-fun b!5286158 () Bool)

(declare-fun Unit!153189 () Unit!153186)

(assert (=> b!5286158 (= e!3286532 Unit!153189)))

(declare-fun b!5286159 () Bool)

(assert (=> b!5286159 (= e!3286521 (matchZipper!1161 lt!2160651 (t!374255 s!2326)))))

(assert (= (and start!558034 res!2242020) b!5286124))

(assert (= (and b!5286124 res!2242024) b!5286152))

(assert (= (and b!5286152 res!2242043) b!5286153))

(assert (= (and b!5286153 (not res!2242040)) b!5286154))

(assert (= (and b!5286154 (not res!2242034)) b!5286142))

(assert (= (and b!5286142 (not res!2242018)) b!5286126))

(assert (= (and b!5286126 (not res!2242032)) b!5286146))

(assert (= (and b!5286146 (not res!2242033)) b!5286151))

(assert (= (and b!5286151 (not res!2242025)) b!5286157))

(assert (= (and b!5286157 (not res!2242023)) b!5286139))

(assert (= (and b!5286139 (not res!2242039)) b!5286144))

(assert (= (and b!5286144 c!916616) b!5286149))

(assert (= (and b!5286144 (not c!916616)) b!5286158))

(assert (= (and b!5286149 (not res!2242042)) b!5286150))

(assert (= (and b!5286144 (not res!2242038)) b!5286127))

(assert (= (and b!5286127 (not res!2242027)) b!5286129))

(assert (= (and b!5286129 (not res!2242029)) b!5286130))

(assert (= (and b!5286130 (not res!2242019)) b!5286159))

(assert (= (and b!5286130 res!2242030) b!5286133))

(assert (= (and b!5286130 (not res!2242031)) b!5286128))

(assert (= (and b!5286128 (not res!2242022)) b!5286131))

(assert (= (and b!5286131 (not res!2242041)) b!5286155))

(assert (= (and b!5286131 res!2242035) b!5286132))

(assert (= (and b!5286131 (not res!2242021)) b!5286141))

(assert (= (and b!5286141 (not res!2242037)) b!5286137))

(assert (= (and b!5286137 (not res!2242028)) b!5286148))

(assert (= (and b!5286148 (not res!2242026)) b!5286136))

(assert (= (and b!5286136 (not res!2242036)) b!5286143))

(assert (= (and start!558034 ((_ is ElementMatch!14917) r!7292)) b!5286147))

(assert (= (and start!558034 ((_ is Concat!23762) r!7292)) b!5286125))

(assert (= (and start!558034 ((_ is Star!14917) r!7292)) b!5286134))

(assert (= (and start!558034 ((_ is Union!14917) r!7292)) b!5286135))

(assert (= (and start!558034 condSetEmpty!33911) setIsEmpty!33911))

(assert (= (and start!558034 (not condSetEmpty!33911)) setNonEmpty!33911))

(assert (= setNonEmpty!33911 b!5286140))

(assert (= b!5286145 b!5286138))

(assert (= (and start!558034 ((_ is Cons!60927) zl!343)) b!5286145))

(assert (= (and start!558034 ((_ is Cons!60928) s!2326)) b!5286156))

(declare-fun m!6323666 () Bool)

(assert (=> b!5286143 m!6323666))

(declare-fun m!6323668 () Bool)

(assert (=> b!5286143 m!6323668))

(declare-fun m!6323670 () Bool)

(assert (=> b!5286143 m!6323670))

(declare-fun m!6323672 () Bool)

(assert (=> b!5286143 m!6323672))

(declare-fun m!6323674 () Bool)

(assert (=> b!5286143 m!6323674))

(declare-fun m!6323676 () Bool)

(assert (=> b!5286143 m!6323676))

(declare-fun m!6323678 () Bool)

(assert (=> b!5286143 m!6323678))

(assert (=> b!5286143 m!6323668))

(declare-fun m!6323680 () Bool)

(assert (=> b!5286143 m!6323680))

(assert (=> b!5286143 m!6323670))

(declare-fun m!6323682 () Bool)

(assert (=> b!5286143 m!6323682))

(declare-fun m!6323684 () Bool)

(assert (=> b!5286143 m!6323684))

(declare-fun m!6323686 () Bool)

(assert (=> b!5286143 m!6323686))

(declare-fun m!6323688 () Bool)

(assert (=> b!5286143 m!6323688))

(declare-fun m!6323690 () Bool)

(assert (=> b!5286143 m!6323690))

(declare-fun m!6323692 () Bool)

(assert (=> b!5286143 m!6323692))

(declare-fun m!6323694 () Bool)

(assert (=> b!5286143 m!6323694))

(declare-fun m!6323696 () Bool)

(assert (=> b!5286143 m!6323696))

(declare-fun m!6323698 () Bool)

(assert (=> b!5286143 m!6323698))

(declare-fun m!6323700 () Bool)

(assert (=> b!5286128 m!6323700))

(declare-fun m!6323702 () Bool)

(assert (=> b!5286128 m!6323702))

(declare-fun m!6323704 () Bool)

(assert (=> b!5286128 m!6323704))

(declare-fun m!6323706 () Bool)

(assert (=> b!5286128 m!6323706))

(declare-fun m!6323708 () Bool)

(assert (=> b!5286128 m!6323708))

(declare-fun m!6323710 () Bool)

(assert (=> b!5286128 m!6323710))

(declare-fun m!6323712 () Bool)

(assert (=> b!5286128 m!6323712))

(declare-fun m!6323714 () Bool)

(assert (=> b!5286144 m!6323714))

(declare-fun m!6323716 () Bool)

(assert (=> b!5286144 m!6323716))

(declare-fun m!6323718 () Bool)

(assert (=> b!5286144 m!6323718))

(declare-fun m!6323720 () Bool)

(assert (=> b!5286144 m!6323720))

(declare-fun m!6323722 () Bool)

(assert (=> b!5286144 m!6323722))

(declare-fun m!6323724 () Bool)

(assert (=> b!5286144 m!6323724))

(declare-fun m!6323726 () Bool)

(assert (=> b!5286144 m!6323726))

(declare-fun m!6323728 () Bool)

(assert (=> b!5286148 m!6323728))

(declare-fun m!6323730 () Bool)

(assert (=> b!5286148 m!6323730))

(declare-fun m!6323732 () Bool)

(assert (=> b!5286139 m!6323732))

(declare-fun m!6323734 () Bool)

(assert (=> b!5286133 m!6323734))

(assert (=> b!5286159 m!6323734))

(declare-fun m!6323736 () Bool)

(assert (=> b!5286152 m!6323736))

(declare-fun m!6323738 () Bool)

(assert (=> b!5286131 m!6323738))

(assert (=> b!5286131 m!6323706))

(declare-fun m!6323740 () Bool)

(assert (=> b!5286131 m!6323740))

(declare-fun m!6323742 () Bool)

(assert (=> b!5286131 m!6323742))

(declare-fun m!6323744 () Bool)

(assert (=> b!5286131 m!6323744))

(declare-fun m!6323746 () Bool)

(assert (=> b!5286131 m!6323746))

(declare-fun m!6323748 () Bool)

(assert (=> b!5286157 m!6323748))

(declare-fun m!6323750 () Bool)

(assert (=> b!5286157 m!6323750))

(declare-fun m!6323752 () Bool)

(assert (=> b!5286157 m!6323752))

(assert (=> b!5286157 m!6323748))

(declare-fun m!6323754 () Bool)

(assert (=> b!5286157 m!6323754))

(declare-fun m!6323756 () Bool)

(assert (=> b!5286157 m!6323756))

(assert (=> b!5286157 m!6323750))

(declare-fun m!6323758 () Bool)

(assert (=> b!5286157 m!6323758))

(declare-fun m!6323760 () Bool)

(assert (=> b!5286132 m!6323760))

(assert (=> b!5286132 m!6323760))

(declare-fun m!6323762 () Bool)

(assert (=> b!5286132 m!6323762))

(declare-fun m!6323764 () Bool)

(assert (=> b!5286149 m!6323764))

(declare-fun m!6323766 () Bool)

(assert (=> b!5286149 m!6323766))

(declare-fun m!6323768 () Bool)

(assert (=> b!5286149 m!6323768))

(declare-fun m!6323770 () Bool)

(assert (=> b!5286150 m!6323770))

(declare-fun m!6323772 () Bool)

(assert (=> setNonEmpty!33911 m!6323772))

(declare-fun m!6323774 () Bool)

(assert (=> b!5286146 m!6323774))

(assert (=> b!5286146 m!6323774))

(declare-fun m!6323776 () Bool)

(assert (=> b!5286146 m!6323776))

(declare-fun m!6323778 () Bool)

(assert (=> b!5286145 m!6323778))

(declare-fun m!6323780 () Bool)

(assert (=> b!5286124 m!6323780))

(declare-fun m!6323782 () Bool)

(assert (=> b!5286129 m!6323782))

(declare-fun m!6323784 () Bool)

(assert (=> b!5286129 m!6323784))

(declare-fun m!6323786 () Bool)

(assert (=> b!5286155 m!6323786))

(declare-fun m!6323788 () Bool)

(assert (=> start!558034 m!6323788))

(declare-fun m!6323790 () Bool)

(assert (=> b!5286142 m!6323790))

(declare-fun m!6323792 () Bool)

(assert (=> b!5286153 m!6323792))

(declare-fun m!6323794 () Bool)

(assert (=> b!5286153 m!6323794))

(declare-fun m!6323796 () Bool)

(assert (=> b!5286153 m!6323796))

(declare-fun m!6323798 () Bool)

(assert (=> b!5286154 m!6323798))

(declare-fun m!6323800 () Bool)

(assert (=> b!5286137 m!6323800))

(declare-fun m!6323802 () Bool)

(assert (=> b!5286137 m!6323802))

(assert (=> b!5286130 m!6323766))

(declare-fun m!6323804 () Bool)

(assert (=> b!5286130 m!6323804))

(declare-fun m!6323806 () Bool)

(assert (=> b!5286130 m!6323806))

(declare-fun m!6323808 () Bool)

(assert (=> b!5286130 m!6323808))

(declare-fun m!6323810 () Bool)

(assert (=> b!5286127 m!6323810))

(declare-fun m!6323812 () Bool)

(assert (=> b!5286136 m!6323812))

(declare-fun m!6323814 () Bool)

(assert (=> b!5286136 m!6323814))

(check-sat (not b!5286133) (not b!5286124) (not b!5286150) (not b!5286140) tp_is_empty!39087 (not b!5286142) (not b!5286159) (not b!5286137) (not b!5286128) (not b!5286135) (not b!5286139) (not b!5286157) (not b!5286132) (not b!5286156) (not start!558034) (not setNonEmpty!33911) (not b!5286143) (not b!5286152) (not b!5286155) (not b!5286153) (not b!5286145) (not b!5286154) (not b!5286125) (not b!5286138) (not b!5286144) (not b!5286130) (not b!5286134) (not b!5286131) (not b!5286149) (not b!5286148) (not b!5286129) (not b!5286127) (not b!5286146) (not b!5286136))
(check-sat)
(get-model)

(declare-fun bs!1225056 () Bool)

(declare-fun d!1700764 () Bool)

(assert (= bs!1225056 (and d!1700764 b!5286143)))

(declare-fun lambda!267396 () Int)

(assert (=> bs!1225056 (= lambda!267396 lambda!267349)))

(assert (=> d!1700764 (= (inv!80539 setElem!33911) (forall!14325 (exprs!4801 setElem!33911) lambda!267396))))

(declare-fun bs!1225057 () Bool)

(assert (= bs!1225057 d!1700764))

(declare-fun m!6324194 () Bool)

(assert (=> bs!1225057 m!6324194))

(assert (=> setNonEmpty!33911 d!1700764))

(declare-fun bs!1225079 () Bool)

(declare-fun b!5286702 () Bool)

(assert (= bs!1225079 (and b!5286702 b!5286157)))

(declare-fun lambda!267408 () Int)

(assert (=> bs!1225079 (not (= lambda!267408 lambda!267344))))

(assert (=> bs!1225079 (not (= lambda!267408 lambda!267345))))

(declare-fun bs!1225080 () Bool)

(assert (= bs!1225080 (and b!5286702 b!5286143)))

(assert (=> bs!1225080 (not (= lambda!267408 lambda!267347))))

(assert (=> bs!1225080 (not (= lambda!267408 lambda!267348))))

(assert (=> b!5286702 true))

(assert (=> b!5286702 true))

(declare-fun bs!1225081 () Bool)

(declare-fun b!5286706 () Bool)

(assert (= bs!1225081 (and b!5286706 b!5286143)))

(declare-fun lambda!267409 () Int)

(assert (=> bs!1225081 (= (and (= (regOne!30346 r!7292) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 r!7292) lt!2160632)) (= lambda!267409 lambda!267348))))

(declare-fun bs!1225082 () Bool)

(assert (= bs!1225082 (and b!5286706 b!5286702)))

(assert (=> bs!1225082 (not (= lambda!267409 lambda!267408))))

(assert (=> bs!1225081 (not (= lambda!267409 lambda!267347))))

(declare-fun bs!1225083 () Bool)

(assert (= bs!1225083 (and b!5286706 b!5286157)))

(assert (=> bs!1225083 (= lambda!267409 lambda!267345)))

(assert (=> bs!1225083 (not (= lambda!267409 lambda!267344))))

(assert (=> b!5286706 true))

(assert (=> b!5286706 true))

(declare-fun b!5286701 () Bool)

(declare-fun e!3286839 () Bool)

(declare-fun e!3286844 () Bool)

(assert (=> b!5286701 (= e!3286839 e!3286844)))

(declare-fun res!2242215 () Bool)

(assert (=> b!5286701 (= res!2242215 (matchRSpec!2020 (regOne!30347 r!7292) s!2326))))

(assert (=> b!5286701 (=> res!2242215 e!3286844)))

(declare-fun e!3286841 () Bool)

(declare-fun call!376548 () Bool)

(assert (=> b!5286702 (= e!3286841 call!376548)))

(declare-fun b!5286703 () Bool)

(declare-fun e!3286838 () Bool)

(declare-fun call!376549 () Bool)

(assert (=> b!5286703 (= e!3286838 call!376549)))

(declare-fun b!5286704 () Bool)

(declare-fun c!916783 () Bool)

(assert (=> b!5286704 (= c!916783 ((_ is Union!14917) r!7292))))

(declare-fun e!3286842 () Bool)

(assert (=> b!5286704 (= e!3286842 e!3286839)))

(declare-fun b!5286705 () Bool)

(declare-fun res!2242217 () Bool)

(assert (=> b!5286705 (=> res!2242217 e!3286841)))

(assert (=> b!5286705 (= res!2242217 call!376549)))

(declare-fun e!3286840 () Bool)

(assert (=> b!5286705 (= e!3286840 e!3286841)))

(declare-fun b!5286707 () Bool)

(declare-fun e!3286843 () Bool)

(assert (=> b!5286707 (= e!3286838 e!3286843)))

(declare-fun res!2242216 () Bool)

(assert (=> b!5286707 (= res!2242216 (not ((_ is EmptyLang!14917) r!7292)))))

(assert (=> b!5286707 (=> (not res!2242216) (not e!3286843))))

(declare-fun b!5286708 () Bool)

(assert (=> b!5286708 (= e!3286842 (= s!2326 (Cons!60928 (c!916617 r!7292) Nil!60928)))))

(declare-fun bm!376543 () Bool)

(declare-fun c!916780 () Bool)

(assert (=> bm!376543 (= call!376548 (Exists!2098 (ite c!916780 lambda!267408 lambda!267409)))))

(declare-fun b!5286709 () Bool)

(assert (=> b!5286709 (= e!3286844 (matchRSpec!2020 (regTwo!30347 r!7292) s!2326))))

(declare-fun b!5286710 () Bool)

(declare-fun c!916782 () Bool)

(assert (=> b!5286710 (= c!916782 ((_ is ElementMatch!14917) r!7292))))

(assert (=> b!5286710 (= e!3286843 e!3286842)))

(declare-fun bm!376544 () Bool)

(declare-fun isEmpty!32883 (List!61052) Bool)

(assert (=> bm!376544 (= call!376549 (isEmpty!32883 s!2326))))

(declare-fun b!5286711 () Bool)

(assert (=> b!5286711 (= e!3286839 e!3286840)))

(assert (=> b!5286711 (= c!916780 ((_ is Star!14917) r!7292))))

(declare-fun d!1700774 () Bool)

(declare-fun c!916781 () Bool)

(assert (=> d!1700774 (= c!916781 ((_ is EmptyExpr!14917) r!7292))))

(assert (=> d!1700774 (= (matchRSpec!2020 r!7292 s!2326) e!3286838)))

(assert (=> b!5286706 (= e!3286840 call!376548)))

(assert (= (and d!1700774 c!916781) b!5286703))

(assert (= (and d!1700774 (not c!916781)) b!5286707))

(assert (= (and b!5286707 res!2242216) b!5286710))

(assert (= (and b!5286710 c!916782) b!5286708))

(assert (= (and b!5286710 (not c!916782)) b!5286704))

(assert (= (and b!5286704 c!916783) b!5286701))

(assert (= (and b!5286704 (not c!916783)) b!5286711))

(assert (= (and b!5286701 (not res!2242215)) b!5286709))

(assert (= (and b!5286711 c!916780) b!5286705))

(assert (= (and b!5286711 (not c!916780)) b!5286706))

(assert (= (and b!5286705 (not res!2242217)) b!5286702))

(assert (= (or b!5286702 b!5286706) bm!376543))

(assert (= (or b!5286703 b!5286705) bm!376544))

(declare-fun m!6324258 () Bool)

(assert (=> b!5286701 m!6324258))

(declare-fun m!6324260 () Bool)

(assert (=> bm!376543 m!6324260))

(declare-fun m!6324262 () Bool)

(assert (=> b!5286709 m!6324262))

(declare-fun m!6324264 () Bool)

(assert (=> bm!376544 m!6324264))

(assert (=> b!5286153 d!1700774))

(declare-fun b!5286740 () Bool)

(declare-fun res!2242234 () Bool)

(declare-fun e!3286863 () Bool)

(assert (=> b!5286740 (=> (not res!2242234) (not e!3286863))))

(declare-fun call!376552 () Bool)

(assert (=> b!5286740 (= res!2242234 (not call!376552))))

(declare-fun d!1700800 () Bool)

(declare-fun e!3286862 () Bool)

(assert (=> d!1700800 e!3286862))

(declare-fun c!916792 () Bool)

(assert (=> d!1700800 (= c!916792 ((_ is EmptyExpr!14917) r!7292))))

(declare-fun lt!2160745 () Bool)

(declare-fun e!3286864 () Bool)

(assert (=> d!1700800 (= lt!2160745 e!3286864)))

(declare-fun c!916791 () Bool)

(assert (=> d!1700800 (= c!916791 (isEmpty!32883 s!2326))))

(assert (=> d!1700800 (validRegex!6653 r!7292)))

(assert (=> d!1700800 (= (matchR!7102 r!7292 s!2326) lt!2160745)))

(declare-fun b!5286741 () Bool)

(declare-fun e!3286859 () Bool)

(assert (=> b!5286741 (= e!3286859 (not lt!2160745))))

(declare-fun b!5286742 () Bool)

(declare-fun res!2242236 () Bool)

(assert (=> b!5286742 (=> (not res!2242236) (not e!3286863))))

(declare-fun tail!10427 (List!61052) List!61052)

(assert (=> b!5286742 (= res!2242236 (isEmpty!32883 (tail!10427 s!2326)))))

(declare-fun b!5286743 () Bool)

(assert (=> b!5286743 (= e!3286862 (= lt!2160745 call!376552))))

(declare-fun b!5286744 () Bool)

(declare-fun head!11330 (List!61052) C!30104)

(assert (=> b!5286744 (= e!3286863 (= (head!11330 s!2326) (c!916617 r!7292)))))

(declare-fun b!5286745 () Bool)

(declare-fun derivativeStep!4127 (Regex!14917 C!30104) Regex!14917)

(assert (=> b!5286745 (= e!3286864 (matchR!7102 (derivativeStep!4127 r!7292 (head!11330 s!2326)) (tail!10427 s!2326)))))

(declare-fun b!5286746 () Bool)

(assert (=> b!5286746 (= e!3286864 (nullable!5086 r!7292))))

(declare-fun b!5286747 () Bool)

(declare-fun e!3286865 () Bool)

(declare-fun e!3286861 () Bool)

(assert (=> b!5286747 (= e!3286865 e!3286861)))

(declare-fun res!2242240 () Bool)

(assert (=> b!5286747 (=> res!2242240 e!3286861)))

(assert (=> b!5286747 (= res!2242240 call!376552)))

(declare-fun b!5286748 () Bool)

(assert (=> b!5286748 (= e!3286862 e!3286859)))

(declare-fun c!916790 () Bool)

(assert (=> b!5286748 (= c!916790 ((_ is EmptyLang!14917) r!7292))))

(declare-fun b!5286749 () Bool)

(declare-fun res!2242238 () Bool)

(assert (=> b!5286749 (=> res!2242238 e!3286861)))

(assert (=> b!5286749 (= res!2242238 (not (isEmpty!32883 (tail!10427 s!2326))))))

(declare-fun b!5286750 () Bool)

(declare-fun res!2242239 () Bool)

(declare-fun e!3286860 () Bool)

(assert (=> b!5286750 (=> res!2242239 e!3286860)))

(assert (=> b!5286750 (= res!2242239 (not ((_ is ElementMatch!14917) r!7292)))))

(assert (=> b!5286750 (= e!3286859 e!3286860)))

(declare-fun b!5286751 () Bool)

(assert (=> b!5286751 (= e!3286860 e!3286865)))

(declare-fun res!2242241 () Bool)

(assert (=> b!5286751 (=> (not res!2242241) (not e!3286865))))

(assert (=> b!5286751 (= res!2242241 (not lt!2160745))))

(declare-fun b!5286752 () Bool)

(declare-fun res!2242235 () Bool)

(assert (=> b!5286752 (=> res!2242235 e!3286860)))

(assert (=> b!5286752 (= res!2242235 e!3286863)))

(declare-fun res!2242237 () Bool)

(assert (=> b!5286752 (=> (not res!2242237) (not e!3286863))))

(assert (=> b!5286752 (= res!2242237 lt!2160745)))

(declare-fun bm!376547 () Bool)

(assert (=> bm!376547 (= call!376552 (isEmpty!32883 s!2326))))

(declare-fun b!5286753 () Bool)

(assert (=> b!5286753 (= e!3286861 (not (= (head!11330 s!2326) (c!916617 r!7292))))))

(assert (= (and d!1700800 c!916791) b!5286746))

(assert (= (and d!1700800 (not c!916791)) b!5286745))

(assert (= (and d!1700800 c!916792) b!5286743))

(assert (= (and d!1700800 (not c!916792)) b!5286748))

(assert (= (and b!5286748 c!916790) b!5286741))

(assert (= (and b!5286748 (not c!916790)) b!5286750))

(assert (= (and b!5286750 (not res!2242239)) b!5286752))

(assert (= (and b!5286752 res!2242237) b!5286740))

(assert (= (and b!5286740 res!2242234) b!5286742))

(assert (= (and b!5286742 res!2242236) b!5286744))

(assert (= (and b!5286752 (not res!2242235)) b!5286751))

(assert (= (and b!5286751 res!2242241) b!5286747))

(assert (= (and b!5286747 (not res!2242240)) b!5286749))

(assert (= (and b!5286749 (not res!2242238)) b!5286753))

(assert (= (or b!5286743 b!5286740 b!5286747) bm!376547))

(assert (=> d!1700800 m!6324264))

(assert (=> d!1700800 m!6323788))

(declare-fun m!6324266 () Bool)

(assert (=> b!5286742 m!6324266))

(assert (=> b!5286742 m!6324266))

(declare-fun m!6324268 () Bool)

(assert (=> b!5286742 m!6324268))

(assert (=> b!5286749 m!6324266))

(assert (=> b!5286749 m!6324266))

(assert (=> b!5286749 m!6324268))

(declare-fun m!6324270 () Bool)

(assert (=> b!5286746 m!6324270))

(declare-fun m!6324272 () Bool)

(assert (=> b!5286744 m!6324272))

(assert (=> b!5286753 m!6324272))

(assert (=> b!5286745 m!6324272))

(assert (=> b!5286745 m!6324272))

(declare-fun m!6324274 () Bool)

(assert (=> b!5286745 m!6324274))

(assert (=> b!5286745 m!6324266))

(assert (=> b!5286745 m!6324274))

(assert (=> b!5286745 m!6324266))

(declare-fun m!6324276 () Bool)

(assert (=> b!5286745 m!6324276))

(assert (=> bm!376547 m!6324264))

(assert (=> b!5286153 d!1700800))

(declare-fun d!1700802 () Bool)

(assert (=> d!1700802 (= (matchR!7102 r!7292 s!2326) (matchRSpec!2020 r!7292 s!2326))))

(declare-fun lt!2160748 () Unit!153186)

(declare-fun choose!39469 (Regex!14917 List!61052) Unit!153186)

(assert (=> d!1700802 (= lt!2160748 (choose!39469 r!7292 s!2326))))

(assert (=> d!1700802 (validRegex!6653 r!7292)))

(assert (=> d!1700802 (= (mainMatchTheorem!2020 r!7292 s!2326) lt!2160748)))

(declare-fun bs!1225084 () Bool)

(assert (= bs!1225084 d!1700802))

(assert (=> bs!1225084 m!6323794))

(assert (=> bs!1225084 m!6323792))

(declare-fun m!6324278 () Bool)

(assert (=> bs!1225084 m!6324278))

(assert (=> bs!1225084 m!6323788))

(assert (=> b!5286153 d!1700802))

(declare-fun d!1700804 () Bool)

(assert (=> d!1700804 (= (isEmpty!32880 (t!374254 zl!343)) ((_ is Nil!60927) (t!374254 zl!343)))))

(assert (=> b!5286154 d!1700804))

(declare-fun d!1700806 () Bool)

(declare-fun lt!2160751 () Regex!14917)

(assert (=> d!1700806 (validRegex!6653 lt!2160751)))

(assert (=> d!1700806 (= lt!2160751 (generalisedUnion!846 (unfocusZipperList!359 zl!343)))))

(assert (=> d!1700806 (= (unfocusZipper!659 zl!343) lt!2160751)))

(declare-fun bs!1225085 () Bool)

(assert (= bs!1225085 d!1700806))

(declare-fun m!6324280 () Bool)

(assert (=> bs!1225085 m!6324280))

(assert (=> bs!1225085 m!6323774))

(assert (=> bs!1225085 m!6323774))

(assert (=> bs!1225085 m!6323776))

(assert (=> b!5286152 d!1700806))

(declare-fun d!1700808 () Bool)

(declare-fun c!916795 () Bool)

(assert (=> d!1700808 (= c!916795 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3286868 () Bool)

(assert (=> d!1700808 (= (matchZipper!1161 lt!2160651 (t!374255 s!2326)) e!3286868)))

(declare-fun b!5286758 () Bool)

(declare-fun nullableZipper!1306 ((InoxSet Context!8602)) Bool)

(assert (=> b!5286758 (= e!3286868 (nullableZipper!1306 lt!2160651))))

(declare-fun b!5286759 () Bool)

(assert (=> b!5286759 (= e!3286868 (matchZipper!1161 (derivationStepZipper!1160 lt!2160651 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700808 c!916795) b!5286758))

(assert (= (and d!1700808 (not c!916795)) b!5286759))

(declare-fun m!6324282 () Bool)

(assert (=> d!1700808 m!6324282))

(declare-fun m!6324284 () Bool)

(assert (=> b!5286758 m!6324284))

(declare-fun m!6324286 () Bool)

(assert (=> b!5286759 m!6324286))

(assert (=> b!5286759 m!6324286))

(declare-fun m!6324288 () Bool)

(assert (=> b!5286759 m!6324288))

(declare-fun m!6324290 () Bool)

(assert (=> b!5286759 m!6324290))

(assert (=> b!5286759 m!6324288))

(assert (=> b!5286759 m!6324290))

(declare-fun m!6324292 () Bool)

(assert (=> b!5286759 m!6324292))

(assert (=> b!5286133 d!1700808))

(declare-fun b!5286766 () Bool)

(assert (=> b!5286766 true))

(declare-fun bs!1225086 () Bool)

(declare-fun b!5286768 () Bool)

(assert (= bs!1225086 (and b!5286768 b!5286766)))

(declare-fun lambda!267418 () Int)

(declare-fun lt!2160763 () Int)

(declare-fun lambda!267417 () Int)

(declare-fun lt!2160762 () Int)

(assert (=> bs!1225086 (= (= lt!2160762 lt!2160763) (= lambda!267418 lambda!267417))))

(assert (=> b!5286768 true))

(declare-fun d!1700810 () Bool)

(declare-fun e!3286874 () Bool)

(assert (=> d!1700810 e!3286874))

(declare-fun res!2242244 () Bool)

(assert (=> d!1700810 (=> (not res!2242244) (not e!3286874))))

(assert (=> d!1700810 (= res!2242244 (>= lt!2160762 0))))

(declare-fun e!3286873 () Int)

(assert (=> d!1700810 (= lt!2160762 e!3286873)))

(declare-fun c!916804 () Bool)

(assert (=> d!1700810 (= c!916804 ((_ is Cons!60927) lt!2160626))))

(assert (=> d!1700810 (= (zipperDepth!34 lt!2160626) lt!2160762)))

(assert (=> b!5286766 (= e!3286873 lt!2160763)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!18 (Context!8602) Int)

(assert (=> b!5286766 (= lt!2160763 (maxBigInt!0 (contextDepth!18 (h!67375 lt!2160626)) (zipperDepth!34 (t!374254 lt!2160626))))))

(declare-fun lambda!267416 () Int)

(declare-fun lt!2160761 () Unit!153186)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!12 (List!61051 Int Int Int) Unit!153186)

(assert (=> b!5286766 (= lt!2160761 (lemmaForallContextDepthBiggerThanTransitive!12 (t!374254 lt!2160626) lt!2160763 (zipperDepth!34 (t!374254 lt!2160626)) lambda!267416))))

(declare-fun forall!14327 (List!61051 Int) Bool)

(assert (=> b!5286766 (forall!14327 (t!374254 lt!2160626) lambda!267417)))

(declare-fun lt!2160760 () Unit!153186)

(assert (=> b!5286766 (= lt!2160760 lt!2160761)))

(declare-fun b!5286767 () Bool)

(assert (=> b!5286767 (= e!3286873 0)))

(assert (=> b!5286768 (= e!3286874 (forall!14327 lt!2160626 lambda!267418))))

(assert (= (and d!1700810 c!916804) b!5286766))

(assert (= (and d!1700810 (not c!916804)) b!5286767))

(assert (= (and d!1700810 res!2242244) b!5286768))

(declare-fun m!6324294 () Bool)

(assert (=> b!5286766 m!6324294))

(declare-fun m!6324296 () Bool)

(assert (=> b!5286766 m!6324296))

(assert (=> b!5286766 m!6324294))

(declare-fun m!6324298 () Bool)

(assert (=> b!5286766 m!6324298))

(assert (=> b!5286766 m!6324296))

(assert (=> b!5286766 m!6324294))

(declare-fun m!6324300 () Bool)

(assert (=> b!5286766 m!6324300))

(declare-fun m!6324302 () Bool)

(assert (=> b!5286766 m!6324302))

(declare-fun m!6324304 () Bool)

(assert (=> b!5286768 m!6324304))

(assert (=> b!5286136 d!1700810))

(declare-fun bs!1225087 () Bool)

(declare-fun b!5286771 () Bool)

(assert (= bs!1225087 (and b!5286771 b!5286766)))

(declare-fun lambda!267419 () Int)

(assert (=> bs!1225087 (= lambda!267419 lambda!267416)))

(declare-fun lt!2160767 () Int)

(declare-fun lambda!267420 () Int)

(assert (=> bs!1225087 (= (= lt!2160767 lt!2160763) (= lambda!267420 lambda!267417))))

(declare-fun bs!1225088 () Bool)

(assert (= bs!1225088 (and b!5286771 b!5286768)))

(assert (=> bs!1225088 (= (= lt!2160767 lt!2160762) (= lambda!267420 lambda!267418))))

(assert (=> b!5286771 true))

(declare-fun bs!1225089 () Bool)

(declare-fun b!5286773 () Bool)

(assert (= bs!1225089 (and b!5286773 b!5286766)))

(declare-fun lt!2160766 () Int)

(declare-fun lambda!267421 () Int)

(assert (=> bs!1225089 (= (= lt!2160766 lt!2160763) (= lambda!267421 lambda!267417))))

(declare-fun bs!1225090 () Bool)

(assert (= bs!1225090 (and b!5286773 b!5286768)))

(assert (=> bs!1225090 (= (= lt!2160766 lt!2160762) (= lambda!267421 lambda!267418))))

(declare-fun bs!1225091 () Bool)

(assert (= bs!1225091 (and b!5286773 b!5286771)))

(assert (=> bs!1225091 (= (= lt!2160766 lt!2160767) (= lambda!267421 lambda!267420))))

(assert (=> b!5286773 true))

(declare-fun d!1700812 () Bool)

(declare-fun e!3286876 () Bool)

(assert (=> d!1700812 e!3286876))

(declare-fun res!2242245 () Bool)

(assert (=> d!1700812 (=> (not res!2242245) (not e!3286876))))

(assert (=> d!1700812 (= res!2242245 (>= lt!2160766 0))))

(declare-fun e!3286875 () Int)

(assert (=> d!1700812 (= lt!2160766 e!3286875)))

(declare-fun c!916805 () Bool)

(assert (=> d!1700812 (= c!916805 ((_ is Cons!60927) zl!343))))

(assert (=> d!1700812 (= (zipperDepth!34 zl!343) lt!2160766)))

(assert (=> b!5286771 (= e!3286875 lt!2160767)))

(assert (=> b!5286771 (= lt!2160767 (maxBigInt!0 (contextDepth!18 (h!67375 zl!343)) (zipperDepth!34 (t!374254 zl!343))))))

(declare-fun lt!2160765 () Unit!153186)

(assert (=> b!5286771 (= lt!2160765 (lemmaForallContextDepthBiggerThanTransitive!12 (t!374254 zl!343) lt!2160767 (zipperDepth!34 (t!374254 zl!343)) lambda!267419))))

(assert (=> b!5286771 (forall!14327 (t!374254 zl!343) lambda!267420)))

(declare-fun lt!2160764 () Unit!153186)

(assert (=> b!5286771 (= lt!2160764 lt!2160765)))

(declare-fun b!5286772 () Bool)

(assert (=> b!5286772 (= e!3286875 0)))

(assert (=> b!5286773 (= e!3286876 (forall!14327 zl!343 lambda!267421))))

(assert (= (and d!1700812 c!916805) b!5286771))

(assert (= (and d!1700812 (not c!916805)) b!5286772))

(assert (= (and d!1700812 res!2242245) b!5286773))

(declare-fun m!6324306 () Bool)

(assert (=> b!5286771 m!6324306))

(declare-fun m!6324308 () Bool)

(assert (=> b!5286771 m!6324308))

(assert (=> b!5286771 m!6324306))

(declare-fun m!6324310 () Bool)

(assert (=> b!5286771 m!6324310))

(assert (=> b!5286771 m!6324308))

(assert (=> b!5286771 m!6324306))

(declare-fun m!6324312 () Bool)

(assert (=> b!5286771 m!6324312))

(declare-fun m!6324314 () Bool)

(assert (=> b!5286771 m!6324314))

(declare-fun m!6324316 () Bool)

(assert (=> b!5286773 m!6324316))

(assert (=> b!5286136 d!1700812))

(declare-fun d!1700814 () Bool)

(declare-fun c!916806 () Bool)

(assert (=> d!1700814 (= c!916806 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3286877 () Bool)

(assert (=> d!1700814 (= (matchZipper!1161 lt!2160631 (t!374255 s!2326)) e!3286877)))

(declare-fun b!5286774 () Bool)

(assert (=> b!5286774 (= e!3286877 (nullableZipper!1306 lt!2160631))))

(declare-fun b!5286775 () Bool)

(assert (=> b!5286775 (= e!3286877 (matchZipper!1161 (derivationStepZipper!1160 lt!2160631 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700814 c!916806) b!5286774))

(assert (= (and d!1700814 (not c!916806)) b!5286775))

(assert (=> d!1700814 m!6324282))

(declare-fun m!6324318 () Bool)

(assert (=> b!5286774 m!6324318))

(assert (=> b!5286775 m!6324286))

(assert (=> b!5286775 m!6324286))

(declare-fun m!6324320 () Bool)

(assert (=> b!5286775 m!6324320))

(assert (=> b!5286775 m!6324290))

(assert (=> b!5286775 m!6324320))

(assert (=> b!5286775 m!6324290))

(declare-fun m!6324322 () Bool)

(assert (=> b!5286775 m!6324322))

(assert (=> b!5286155 d!1700814))

(declare-fun d!1700816 () Bool)

(assert (=> d!1700816 (= (isEmpty!32879 (t!374253 (exprs!4801 (h!67375 zl!343)))) ((_ is Nil!60926) (t!374253 (exprs!4801 (h!67375 zl!343)))))))

(assert (=> b!5286139 d!1700816))

(assert (=> b!5286159 d!1700808))

(declare-fun d!1700818 () Bool)

(declare-fun lt!2160770 () Int)

(assert (=> d!1700818 (>= lt!2160770 0)))

(declare-fun e!3286880 () Int)

(assert (=> d!1700818 (= lt!2160770 e!3286880)))

(declare-fun c!916810 () Bool)

(assert (=> d!1700818 (= c!916810 ((_ is Cons!60926) (exprs!4801 lt!2160653)))))

(assert (=> d!1700818 (= (contextDepthTotal!58 lt!2160653) lt!2160770)))

(declare-fun b!5286780 () Bool)

(declare-fun regexDepthTotal!18 (Regex!14917) Int)

(assert (=> b!5286780 (= e!3286880 (+ (regexDepthTotal!18 (h!67374 (exprs!4801 lt!2160653))) (contextDepthTotal!58 (Context!8603 (t!374253 (exprs!4801 lt!2160653))))))))

(declare-fun b!5286781 () Bool)

(assert (=> b!5286781 (= e!3286880 1)))

(assert (= (and d!1700818 c!916810) b!5286780))

(assert (= (and d!1700818 (not c!916810)) b!5286781))

(declare-fun m!6324324 () Bool)

(assert (=> b!5286780 m!6324324))

(declare-fun m!6324326 () Bool)

(assert (=> b!5286780 m!6324326))

(assert (=> b!5286137 d!1700818))

(declare-fun d!1700820 () Bool)

(declare-fun lt!2160771 () Int)

(assert (=> d!1700820 (>= lt!2160771 0)))

(declare-fun e!3286881 () Int)

(assert (=> d!1700820 (= lt!2160771 e!3286881)))

(declare-fun c!916811 () Bool)

(assert (=> d!1700820 (= c!916811 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343))))))

(assert (=> d!1700820 (= (contextDepthTotal!58 (h!67375 zl!343)) lt!2160771)))

(declare-fun b!5286782 () Bool)

(assert (=> b!5286782 (= e!3286881 (+ (regexDepthTotal!18 (h!67374 (exprs!4801 (h!67375 zl!343)))) (contextDepthTotal!58 (Context!8603 (t!374253 (exprs!4801 (h!67375 zl!343)))))))))

(declare-fun b!5286783 () Bool)

(assert (=> b!5286783 (= e!3286881 1)))

(assert (= (and d!1700820 c!916811) b!5286782))

(assert (= (and d!1700820 (not c!916811)) b!5286783))

(declare-fun m!6324328 () Bool)

(assert (=> b!5286782 m!6324328))

(declare-fun m!6324330 () Bool)

(assert (=> b!5286782 m!6324330))

(assert (=> b!5286137 d!1700820))

(declare-fun b!5286802 () Bool)

(declare-fun e!3286895 () Option!15028)

(assert (=> b!5286802 (= e!3286895 (Some!15027 (tuple2!64233 Nil!60928 s!2326)))))

(declare-fun b!5286803 () Bool)

(declare-fun e!3286892 () Bool)

(declare-fun lt!2160779 () Option!15028)

(assert (=> b!5286803 (= e!3286892 (not (isDefined!11731 lt!2160779)))))

(declare-fun b!5286804 () Bool)

(declare-fun res!2242256 () Bool)

(declare-fun e!3286894 () Bool)

(assert (=> b!5286804 (=> (not res!2242256) (not e!3286894))))

(declare-fun get!20950 (Option!15028) tuple2!64232)

(assert (=> b!5286804 (= res!2242256 (matchR!7102 (regOne!30346 r!7292) (_1!35419 (get!20950 lt!2160779))))))

(declare-fun d!1700822 () Bool)

(assert (=> d!1700822 e!3286892))

(declare-fun res!2242258 () Bool)

(assert (=> d!1700822 (=> res!2242258 e!3286892)))

(assert (=> d!1700822 (= res!2242258 e!3286894)))

(declare-fun res!2242259 () Bool)

(assert (=> d!1700822 (=> (not res!2242259) (not e!3286894))))

(assert (=> d!1700822 (= res!2242259 (isDefined!11731 lt!2160779))))

(assert (=> d!1700822 (= lt!2160779 e!3286895)))

(declare-fun c!916817 () Bool)

(declare-fun e!3286896 () Bool)

(assert (=> d!1700822 (= c!916817 e!3286896)))

(declare-fun res!2242260 () Bool)

(assert (=> d!1700822 (=> (not res!2242260) (not e!3286896))))

(assert (=> d!1700822 (= res!2242260 (matchR!7102 (regOne!30346 r!7292) Nil!60928))))

(assert (=> d!1700822 (validRegex!6653 (regOne!30346 r!7292))))

(assert (=> d!1700822 (= (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) Nil!60928 s!2326 s!2326) lt!2160779)))

(declare-fun b!5286805 () Bool)

(declare-fun ++!13286 (List!61052 List!61052) List!61052)

(assert (=> b!5286805 (= e!3286894 (= (++!13286 (_1!35419 (get!20950 lt!2160779)) (_2!35419 (get!20950 lt!2160779))) s!2326))))

(declare-fun b!5286806 () Bool)

(declare-fun lt!2160780 () Unit!153186)

(declare-fun lt!2160778 () Unit!153186)

(assert (=> b!5286806 (= lt!2160780 lt!2160778)))

(assert (=> b!5286806 (= (++!13286 (++!13286 Nil!60928 (Cons!60928 (h!67376 s!2326) Nil!60928)) (t!374255 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1701 (List!61052 C!30104 List!61052 List!61052) Unit!153186)

(assert (=> b!5286806 (= lt!2160778 (lemmaMoveElementToOtherListKeepsConcatEq!1701 Nil!60928 (h!67376 s!2326) (t!374255 s!2326) s!2326))))

(declare-fun e!3286893 () Option!15028)

(assert (=> b!5286806 (= e!3286893 (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) (++!13286 Nil!60928 (Cons!60928 (h!67376 s!2326) Nil!60928)) (t!374255 s!2326) s!2326))))

(declare-fun b!5286807 () Bool)

(assert (=> b!5286807 (= e!3286896 (matchR!7102 (regTwo!30346 r!7292) s!2326))))

(declare-fun b!5286808 () Bool)

(declare-fun res!2242257 () Bool)

(assert (=> b!5286808 (=> (not res!2242257) (not e!3286894))))

(assert (=> b!5286808 (= res!2242257 (matchR!7102 (regTwo!30346 r!7292) (_2!35419 (get!20950 lt!2160779))))))

(declare-fun b!5286809 () Bool)

(assert (=> b!5286809 (= e!3286895 e!3286893)))

(declare-fun c!916816 () Bool)

(assert (=> b!5286809 (= c!916816 ((_ is Nil!60928) s!2326))))

(declare-fun b!5286810 () Bool)

(assert (=> b!5286810 (= e!3286893 None!15027)))

(assert (= (and d!1700822 res!2242260) b!5286807))

(assert (= (and d!1700822 c!916817) b!5286802))

(assert (= (and d!1700822 (not c!916817)) b!5286809))

(assert (= (and b!5286809 c!916816) b!5286810))

(assert (= (and b!5286809 (not c!916816)) b!5286806))

(assert (= (and d!1700822 res!2242259) b!5286804))

(assert (= (and b!5286804 res!2242256) b!5286808))

(assert (= (and b!5286808 res!2242257) b!5286805))

(assert (= (and d!1700822 (not res!2242258)) b!5286803))

(declare-fun m!6324332 () Bool)

(assert (=> b!5286806 m!6324332))

(assert (=> b!5286806 m!6324332))

(declare-fun m!6324334 () Bool)

(assert (=> b!5286806 m!6324334))

(declare-fun m!6324336 () Bool)

(assert (=> b!5286806 m!6324336))

(assert (=> b!5286806 m!6324332))

(declare-fun m!6324338 () Bool)

(assert (=> b!5286806 m!6324338))

(declare-fun m!6324340 () Bool)

(assert (=> b!5286807 m!6324340))

(declare-fun m!6324342 () Bool)

(assert (=> b!5286804 m!6324342))

(declare-fun m!6324344 () Bool)

(assert (=> b!5286804 m!6324344))

(declare-fun m!6324346 () Bool)

(assert (=> d!1700822 m!6324346))

(declare-fun m!6324348 () Bool)

(assert (=> d!1700822 m!6324348))

(declare-fun m!6324350 () Bool)

(assert (=> d!1700822 m!6324350))

(assert (=> b!5286803 m!6324346))

(assert (=> b!5286805 m!6324342))

(declare-fun m!6324352 () Bool)

(assert (=> b!5286805 m!6324352))

(assert (=> b!5286808 m!6324342))

(declare-fun m!6324354 () Bool)

(assert (=> b!5286808 m!6324354))

(assert (=> b!5286157 d!1700822))

(declare-fun d!1700824 () Bool)

(declare-fun choose!39470 (Int) Bool)

(assert (=> d!1700824 (= (Exists!2098 lambda!267345) (choose!39470 lambda!267345))))

(declare-fun bs!1225092 () Bool)

(assert (= bs!1225092 d!1700824))

(declare-fun m!6324356 () Bool)

(assert (=> bs!1225092 m!6324356))

(assert (=> b!5286157 d!1700824))

(declare-fun d!1700826 () Bool)

(assert (=> d!1700826 (= (Exists!2098 lambda!267344) (choose!39470 lambda!267344))))

(declare-fun bs!1225093 () Bool)

(assert (= bs!1225093 d!1700826))

(declare-fun m!6324358 () Bool)

(assert (=> bs!1225093 m!6324358))

(assert (=> b!5286157 d!1700826))

(declare-fun bs!1225094 () Bool)

(declare-fun d!1700828 () Bool)

(assert (= bs!1225094 (and d!1700828 b!5286706)))

(declare-fun lambda!267424 () Int)

(assert (=> bs!1225094 (not (= lambda!267424 lambda!267409))))

(declare-fun bs!1225095 () Bool)

(assert (= bs!1225095 (and d!1700828 b!5286143)))

(assert (=> bs!1225095 (not (= lambda!267424 lambda!267348))))

(declare-fun bs!1225096 () Bool)

(assert (= bs!1225096 (and d!1700828 b!5286702)))

(assert (=> bs!1225096 (not (= lambda!267424 lambda!267408))))

(assert (=> bs!1225095 (= (and (= (regOne!30346 r!7292) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 r!7292) lt!2160632)) (= lambda!267424 lambda!267347))))

(declare-fun bs!1225097 () Bool)

(assert (= bs!1225097 (and d!1700828 b!5286157)))

(assert (=> bs!1225097 (not (= lambda!267424 lambda!267345))))

(assert (=> bs!1225097 (= lambda!267424 lambda!267344)))

(assert (=> d!1700828 true))

(assert (=> d!1700828 true))

(assert (=> d!1700828 true))

(assert (=> d!1700828 (= (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) Nil!60928 s!2326 s!2326)) (Exists!2098 lambda!267424))))

(declare-fun lt!2160783 () Unit!153186)

(declare-fun choose!39471 (Regex!14917 Regex!14917 List!61052) Unit!153186)

(assert (=> d!1700828 (= lt!2160783 (choose!39471 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326))))

(assert (=> d!1700828 (validRegex!6653 (regOne!30346 r!7292))))

(assert (=> d!1700828 (= (lemmaFindConcatSeparationEquivalentToExists!1206 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326) lt!2160783)))

(declare-fun bs!1225098 () Bool)

(assert (= bs!1225098 d!1700828))

(assert (=> bs!1225098 m!6324350))

(declare-fun m!6324360 () Bool)

(assert (=> bs!1225098 m!6324360))

(assert (=> bs!1225098 m!6323750))

(declare-fun m!6324362 () Bool)

(assert (=> bs!1225098 m!6324362))

(assert (=> bs!1225098 m!6323750))

(assert (=> bs!1225098 m!6323752))

(assert (=> b!5286157 d!1700828))

(declare-fun bs!1225099 () Bool)

(declare-fun d!1700830 () Bool)

(assert (= bs!1225099 (and d!1700830 b!5286706)))

(declare-fun lambda!267429 () Int)

(assert (=> bs!1225099 (not (= lambda!267429 lambda!267409))))

(declare-fun bs!1225100 () Bool)

(assert (= bs!1225100 (and d!1700830 b!5286143)))

(assert (=> bs!1225100 (not (= lambda!267429 lambda!267348))))

(declare-fun bs!1225101 () Bool)

(assert (= bs!1225101 (and d!1700830 b!5286702)))

(assert (=> bs!1225101 (not (= lambda!267429 lambda!267408))))

(assert (=> bs!1225100 (= (and (= (regOne!30346 r!7292) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 r!7292) lt!2160632)) (= lambda!267429 lambda!267347))))

(declare-fun bs!1225102 () Bool)

(assert (= bs!1225102 (and d!1700830 b!5286157)))

(assert (=> bs!1225102 (not (= lambda!267429 lambda!267345))))

(declare-fun bs!1225103 () Bool)

(assert (= bs!1225103 (and d!1700830 d!1700828)))

(assert (=> bs!1225103 (= lambda!267429 lambda!267424)))

(assert (=> bs!1225102 (= lambda!267429 lambda!267344)))

(assert (=> d!1700830 true))

(assert (=> d!1700830 true))

(assert (=> d!1700830 true))

(declare-fun lambda!267430 () Int)

(assert (=> bs!1225099 (= lambda!267430 lambda!267409)))

(assert (=> bs!1225100 (= (and (= (regOne!30346 r!7292) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 r!7292) lt!2160632)) (= lambda!267430 lambda!267348))))

(assert (=> bs!1225101 (not (= lambda!267430 lambda!267408))))

(assert (=> bs!1225100 (not (= lambda!267430 lambda!267347))))

(assert (=> bs!1225102 (= lambda!267430 lambda!267345)))

(assert (=> bs!1225103 (not (= lambda!267430 lambda!267424))))

(assert (=> bs!1225102 (not (= lambda!267430 lambda!267344))))

(declare-fun bs!1225104 () Bool)

(assert (= bs!1225104 d!1700830))

(assert (=> bs!1225104 (not (= lambda!267430 lambda!267429))))

(assert (=> d!1700830 true))

(assert (=> d!1700830 true))

(assert (=> d!1700830 true))

(assert (=> d!1700830 (= (Exists!2098 lambda!267429) (Exists!2098 lambda!267430))))

(declare-fun lt!2160786 () Unit!153186)

(declare-fun choose!39472 (Regex!14917 Regex!14917 List!61052) Unit!153186)

(assert (=> d!1700830 (= lt!2160786 (choose!39472 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326))))

(assert (=> d!1700830 (validRegex!6653 (regOne!30346 r!7292))))

(assert (=> d!1700830 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!752 (regOne!30346 r!7292) (regTwo!30346 r!7292) s!2326) lt!2160786)))

(declare-fun m!6324364 () Bool)

(assert (=> bs!1225104 m!6324364))

(declare-fun m!6324366 () Bool)

(assert (=> bs!1225104 m!6324366))

(declare-fun m!6324368 () Bool)

(assert (=> bs!1225104 m!6324368))

(assert (=> bs!1225104 m!6324350))

(assert (=> b!5286157 d!1700830))

(declare-fun d!1700832 () Bool)

(declare-fun isEmpty!32884 (Option!15028) Bool)

(assert (=> d!1700832 (= (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) Nil!60928 s!2326 s!2326)) (not (isEmpty!32884 (findConcatSeparation!1442 (regOne!30346 r!7292) (regTwo!30346 r!7292) Nil!60928 s!2326 s!2326))))))

(declare-fun bs!1225105 () Bool)

(assert (= bs!1225105 d!1700832))

(assert (=> bs!1225105 m!6323750))

(declare-fun m!6324370 () Bool)

(assert (=> bs!1225105 m!6324370))

(assert (=> b!5286157 d!1700832))

(declare-fun b!5286841 () Bool)

(declare-fun e!3286917 () Bool)

(declare-fun e!3286920 () Bool)

(assert (=> b!5286841 (= e!3286917 e!3286920)))

(declare-fun res!2242284 () Bool)

(assert (=> b!5286841 (=> (not res!2242284) (not e!3286920))))

(declare-fun call!376561 () Bool)

(assert (=> b!5286841 (= res!2242284 call!376561)))

(declare-fun b!5286842 () Bool)

(declare-fun e!3286921 () Bool)

(declare-fun e!3286918 () Bool)

(assert (=> b!5286842 (= e!3286921 e!3286918)))

(declare-fun c!916822 () Bool)

(assert (=> b!5286842 (= c!916822 ((_ is Star!14917) r!7292))))

(declare-fun b!5286843 () Bool)

(declare-fun e!3286919 () Bool)

(assert (=> b!5286843 (= e!3286918 e!3286919)))

(declare-fun c!916823 () Bool)

(assert (=> b!5286843 (= c!916823 ((_ is Union!14917) r!7292))))

(declare-fun bm!376554 () Bool)

(declare-fun call!376560 () Bool)

(assert (=> bm!376554 (= call!376560 (validRegex!6653 (ite c!916822 (reg!15246 r!7292) (ite c!916823 (regTwo!30347 r!7292) (regTwo!30346 r!7292)))))))

(declare-fun b!5286844 () Bool)

(declare-fun e!3286923 () Bool)

(assert (=> b!5286844 (= e!3286918 e!3286923)))

(declare-fun res!2242283 () Bool)

(assert (=> b!5286844 (= res!2242283 (not (nullable!5086 (reg!15246 r!7292))))))

(assert (=> b!5286844 (=> (not res!2242283) (not e!3286923))))

(declare-fun b!5286845 () Bool)

(declare-fun call!376559 () Bool)

(assert (=> b!5286845 (= e!3286920 call!376559)))

(declare-fun b!5286846 () Bool)

(assert (=> b!5286846 (= e!3286923 call!376560)))

(declare-fun b!5286847 () Bool)

(declare-fun e!3286922 () Bool)

(assert (=> b!5286847 (= e!3286922 call!376559)))

(declare-fun b!5286848 () Bool)

(declare-fun res!2242287 () Bool)

(assert (=> b!5286848 (=> (not res!2242287) (not e!3286922))))

(assert (=> b!5286848 (= res!2242287 call!376561)))

(assert (=> b!5286848 (= e!3286919 e!3286922)))

(declare-fun d!1700834 () Bool)

(declare-fun res!2242286 () Bool)

(assert (=> d!1700834 (=> res!2242286 e!3286921)))

(assert (=> d!1700834 (= res!2242286 ((_ is ElementMatch!14917) r!7292))))

(assert (=> d!1700834 (= (validRegex!6653 r!7292) e!3286921)))

(declare-fun bm!376555 () Bool)

(assert (=> bm!376555 (= call!376559 call!376560)))

(declare-fun b!5286849 () Bool)

(declare-fun res!2242285 () Bool)

(assert (=> b!5286849 (=> res!2242285 e!3286917)))

(assert (=> b!5286849 (= res!2242285 (not ((_ is Concat!23762) r!7292)))))

(assert (=> b!5286849 (= e!3286919 e!3286917)))

(declare-fun bm!376556 () Bool)

(assert (=> bm!376556 (= call!376561 (validRegex!6653 (ite c!916823 (regOne!30347 r!7292) (regOne!30346 r!7292))))))

(assert (= (and d!1700834 (not res!2242286)) b!5286842))

(assert (= (and b!5286842 c!916822) b!5286844))

(assert (= (and b!5286842 (not c!916822)) b!5286843))

(assert (= (and b!5286844 res!2242283) b!5286846))

(assert (= (and b!5286843 c!916823) b!5286848))

(assert (= (and b!5286843 (not c!916823)) b!5286849))

(assert (= (and b!5286848 res!2242287) b!5286847))

(assert (= (and b!5286849 (not res!2242285)) b!5286841))

(assert (= (and b!5286841 res!2242284) b!5286845))

(assert (= (or b!5286847 b!5286845) bm!376555))

(assert (= (or b!5286848 b!5286841) bm!376556))

(assert (= (or b!5286846 bm!376555) bm!376554))

(declare-fun m!6324372 () Bool)

(assert (=> bm!376554 m!6324372))

(declare-fun m!6324374 () Bool)

(assert (=> b!5286844 m!6324374))

(declare-fun m!6324376 () Bool)

(assert (=> bm!376556 m!6324376))

(assert (=> start!558034 d!1700834))

(declare-fun d!1700836 () Bool)

(declare-fun e!3286926 () Bool)

(assert (=> d!1700836 e!3286926))

(declare-fun res!2242290 () Bool)

(assert (=> d!1700836 (=> (not res!2242290) (not e!3286926))))

(declare-fun lt!2160789 () List!61051)

(declare-fun noDuplicate!1260 (List!61051) Bool)

(assert (=> d!1700836 (= res!2242290 (noDuplicate!1260 lt!2160789))))

(declare-fun choose!39473 ((InoxSet Context!8602)) List!61051)

(assert (=> d!1700836 (= lt!2160789 (choose!39473 z!1189))))

(assert (=> d!1700836 (= (toList!8701 z!1189) lt!2160789)))

(declare-fun b!5286852 () Bool)

(declare-fun content!10846 (List!61051) (InoxSet Context!8602))

(assert (=> b!5286852 (= e!3286926 (= (content!10846 lt!2160789) z!1189))))

(assert (= (and d!1700836 res!2242290) b!5286852))

(declare-fun m!6324378 () Bool)

(assert (=> d!1700836 m!6324378))

(declare-fun m!6324380 () Bool)

(assert (=> d!1700836 m!6324380))

(declare-fun m!6324382 () Bool)

(assert (=> b!5286852 m!6324382))

(assert (=> b!5286124 d!1700836))

(declare-fun b!5286853 () Bool)

(declare-fun res!2242291 () Bool)

(declare-fun e!3286931 () Bool)

(assert (=> b!5286853 (=> (not res!2242291) (not e!3286931))))

(declare-fun call!376562 () Bool)

(assert (=> b!5286853 (= res!2242291 (not call!376562))))

(declare-fun d!1700838 () Bool)

(declare-fun e!3286930 () Bool)

(assert (=> d!1700838 e!3286930))

(declare-fun c!916826 () Bool)

(assert (=> d!1700838 (= c!916826 ((_ is EmptyExpr!14917) lt!2160633))))

(declare-fun lt!2160790 () Bool)

(declare-fun e!3286932 () Bool)

(assert (=> d!1700838 (= lt!2160790 e!3286932)))

(declare-fun c!916825 () Bool)

(assert (=> d!1700838 (= c!916825 (isEmpty!32883 s!2326))))

(assert (=> d!1700838 (validRegex!6653 lt!2160633)))

(assert (=> d!1700838 (= (matchR!7102 lt!2160633 s!2326) lt!2160790)))

(declare-fun b!5286854 () Bool)

(declare-fun e!3286927 () Bool)

(assert (=> b!5286854 (= e!3286927 (not lt!2160790))))

(declare-fun b!5286855 () Bool)

(declare-fun res!2242293 () Bool)

(assert (=> b!5286855 (=> (not res!2242293) (not e!3286931))))

(assert (=> b!5286855 (= res!2242293 (isEmpty!32883 (tail!10427 s!2326)))))

(declare-fun b!5286856 () Bool)

(assert (=> b!5286856 (= e!3286930 (= lt!2160790 call!376562))))

(declare-fun b!5286857 () Bool)

(assert (=> b!5286857 (= e!3286931 (= (head!11330 s!2326) (c!916617 lt!2160633)))))

(declare-fun b!5286858 () Bool)

(assert (=> b!5286858 (= e!3286932 (matchR!7102 (derivativeStep!4127 lt!2160633 (head!11330 s!2326)) (tail!10427 s!2326)))))

(declare-fun b!5286859 () Bool)

(assert (=> b!5286859 (= e!3286932 (nullable!5086 lt!2160633))))

(declare-fun b!5286860 () Bool)

(declare-fun e!3286933 () Bool)

(declare-fun e!3286929 () Bool)

(assert (=> b!5286860 (= e!3286933 e!3286929)))

(declare-fun res!2242297 () Bool)

(assert (=> b!5286860 (=> res!2242297 e!3286929)))

(assert (=> b!5286860 (= res!2242297 call!376562)))

(declare-fun b!5286861 () Bool)

(assert (=> b!5286861 (= e!3286930 e!3286927)))

(declare-fun c!916824 () Bool)

(assert (=> b!5286861 (= c!916824 ((_ is EmptyLang!14917) lt!2160633))))

(declare-fun b!5286862 () Bool)

(declare-fun res!2242295 () Bool)

(assert (=> b!5286862 (=> res!2242295 e!3286929)))

(assert (=> b!5286862 (= res!2242295 (not (isEmpty!32883 (tail!10427 s!2326))))))

(declare-fun b!5286863 () Bool)

(declare-fun res!2242296 () Bool)

(declare-fun e!3286928 () Bool)

(assert (=> b!5286863 (=> res!2242296 e!3286928)))

(assert (=> b!5286863 (= res!2242296 (not ((_ is ElementMatch!14917) lt!2160633)))))

(assert (=> b!5286863 (= e!3286927 e!3286928)))

(declare-fun b!5286864 () Bool)

(assert (=> b!5286864 (= e!3286928 e!3286933)))

(declare-fun res!2242298 () Bool)

(assert (=> b!5286864 (=> (not res!2242298) (not e!3286933))))

(assert (=> b!5286864 (= res!2242298 (not lt!2160790))))

(declare-fun b!5286865 () Bool)

(declare-fun res!2242292 () Bool)

(assert (=> b!5286865 (=> res!2242292 e!3286928)))

(assert (=> b!5286865 (= res!2242292 e!3286931)))

(declare-fun res!2242294 () Bool)

(assert (=> b!5286865 (=> (not res!2242294) (not e!3286931))))

(assert (=> b!5286865 (= res!2242294 lt!2160790)))

(declare-fun bm!376557 () Bool)

(assert (=> bm!376557 (= call!376562 (isEmpty!32883 s!2326))))

(declare-fun b!5286866 () Bool)

(assert (=> b!5286866 (= e!3286929 (not (= (head!11330 s!2326) (c!916617 lt!2160633))))))

(assert (= (and d!1700838 c!916825) b!5286859))

(assert (= (and d!1700838 (not c!916825)) b!5286858))

(assert (= (and d!1700838 c!916826) b!5286856))

(assert (= (and d!1700838 (not c!916826)) b!5286861))

(assert (= (and b!5286861 c!916824) b!5286854))

(assert (= (and b!5286861 (not c!916824)) b!5286863))

(assert (= (and b!5286863 (not res!2242296)) b!5286865))

(assert (= (and b!5286865 res!2242294) b!5286853))

(assert (= (and b!5286853 res!2242291) b!5286855))

(assert (= (and b!5286855 res!2242293) b!5286857))

(assert (= (and b!5286865 (not res!2242292)) b!5286864))

(assert (= (and b!5286864 res!2242298) b!5286860))

(assert (= (and b!5286860 (not res!2242297)) b!5286862))

(assert (= (and b!5286862 (not res!2242295)) b!5286866))

(assert (= (or b!5286856 b!5286853 b!5286860) bm!376557))

(assert (=> d!1700838 m!6324264))

(declare-fun m!6324384 () Bool)

(assert (=> d!1700838 m!6324384))

(assert (=> b!5286855 m!6324266))

(assert (=> b!5286855 m!6324266))

(assert (=> b!5286855 m!6324268))

(assert (=> b!5286862 m!6324266))

(assert (=> b!5286862 m!6324266))

(assert (=> b!5286862 m!6324268))

(declare-fun m!6324386 () Bool)

(assert (=> b!5286859 m!6324386))

(assert (=> b!5286857 m!6324272))

(assert (=> b!5286866 m!6324272))

(assert (=> b!5286858 m!6324272))

(assert (=> b!5286858 m!6324272))

(declare-fun m!6324388 () Bool)

(assert (=> b!5286858 m!6324388))

(assert (=> b!5286858 m!6324266))

(assert (=> b!5286858 m!6324388))

(assert (=> b!5286858 m!6324266))

(declare-fun m!6324390 () Bool)

(assert (=> b!5286858 m!6324390))

(assert (=> bm!376557 m!6324264))

(assert (=> b!5286143 d!1700838))

(declare-fun d!1700840 () Bool)

(assert (=> d!1700840 (= (Exists!2098 lambda!267348) (choose!39470 lambda!267348))))

(declare-fun bs!1225106 () Bool)

(assert (= bs!1225106 d!1700840))

(declare-fun m!6324392 () Bool)

(assert (=> bs!1225106 m!6324392))

(assert (=> b!5286143 d!1700840))

(declare-fun bs!1225107 () Bool)

(declare-fun d!1700842 () Bool)

(assert (= bs!1225107 (and d!1700842 b!5286706)))

(declare-fun lambda!267431 () Int)

(assert (=> bs!1225107 (not (= lambda!267431 lambda!267409))))

(declare-fun bs!1225108 () Bool)

(assert (= bs!1225108 (and d!1700842 b!5286143)))

(assert (=> bs!1225108 (not (= lambda!267431 lambda!267348))))

(declare-fun bs!1225109 () Bool)

(assert (= bs!1225109 (and d!1700842 b!5286702)))

(assert (=> bs!1225109 (not (= lambda!267431 lambda!267408))))

(assert (=> bs!1225108 (= lambda!267431 lambda!267347)))

(declare-fun bs!1225110 () Bool)

(assert (= bs!1225110 (and d!1700842 d!1700830)))

(assert (=> bs!1225110 (not (= lambda!267431 lambda!267430))))

(declare-fun bs!1225111 () Bool)

(assert (= bs!1225111 (and d!1700842 b!5286157)))

(assert (=> bs!1225111 (not (= lambda!267431 lambda!267345))))

(declare-fun bs!1225112 () Bool)

(assert (= bs!1225112 (and d!1700842 d!1700828)))

(assert (=> bs!1225112 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267431 lambda!267424))))

(assert (=> bs!1225111 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267431 lambda!267344))))

(assert (=> bs!1225110 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267431 lambda!267429))))

(assert (=> d!1700842 true))

(assert (=> d!1700842 true))

(assert (=> d!1700842 true))

(declare-fun lambda!267432 () Int)

(assert (=> bs!1225107 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267432 lambda!267409))))

(assert (=> bs!1225109 (not (= lambda!267432 lambda!267408))))

(assert (=> bs!1225108 (not (= lambda!267432 lambda!267347))))

(assert (=> bs!1225110 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267432 lambda!267430))))

(assert (=> bs!1225111 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267432 lambda!267345))))

(assert (=> bs!1225112 (not (= lambda!267432 lambda!267424))))

(assert (=> bs!1225111 (not (= lambda!267432 lambda!267344))))

(assert (=> bs!1225110 (not (= lambda!267432 lambda!267429))))

(assert (=> bs!1225108 (= lambda!267432 lambda!267348)))

(declare-fun bs!1225113 () Bool)

(assert (= bs!1225113 d!1700842))

(assert (=> bs!1225113 (not (= lambda!267432 lambda!267431))))

(assert (=> d!1700842 true))

(assert (=> d!1700842 true))

(assert (=> d!1700842 true))

(assert (=> d!1700842 (= (Exists!2098 lambda!267431) (Exists!2098 lambda!267432))))

(declare-fun lt!2160791 () Unit!153186)

(assert (=> d!1700842 (= lt!2160791 (choose!39472 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326))))

(assert (=> d!1700842 (validRegex!6653 (regOne!30346 (regOne!30346 r!7292)))))

(assert (=> d!1700842 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!752 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326) lt!2160791)))

(declare-fun m!6324394 () Bool)

(assert (=> bs!1225113 m!6324394))

(declare-fun m!6324396 () Bool)

(assert (=> bs!1225113 m!6324396))

(declare-fun m!6324398 () Bool)

(assert (=> bs!1225113 m!6324398))

(declare-fun m!6324400 () Bool)

(assert (=> bs!1225113 m!6324400))

(assert (=> b!5286143 d!1700842))

(declare-fun d!1700844 () Bool)

(assert (=> d!1700844 (= (matchR!7102 lt!2160633 s!2326) (matchRSpec!2020 lt!2160633 s!2326))))

(declare-fun lt!2160792 () Unit!153186)

(assert (=> d!1700844 (= lt!2160792 (choose!39469 lt!2160633 s!2326))))

(assert (=> d!1700844 (validRegex!6653 lt!2160633)))

(assert (=> d!1700844 (= (mainMatchTheorem!2020 lt!2160633 s!2326) lt!2160792)))

(declare-fun bs!1225114 () Bool)

(assert (= bs!1225114 d!1700844))

(assert (=> bs!1225114 m!6323682))

(assert (=> bs!1225114 m!6323684))

(declare-fun m!6324402 () Bool)

(assert (=> bs!1225114 m!6324402))

(assert (=> bs!1225114 m!6324384))

(assert (=> b!5286143 d!1700844))

(declare-fun d!1700846 () Bool)

(assert (=> d!1700846 (= (matchR!7102 lt!2160633 s!2326) (matchZipper!1161 lt!2160645 s!2326))))

(declare-fun lt!2160795 () Unit!153186)

(declare-fun choose!39474 ((InoxSet Context!8602) List!61051 Regex!14917 List!61052) Unit!153186)

(assert (=> d!1700846 (= lt!2160795 (choose!39474 lt!2160645 lt!2160626 lt!2160633 s!2326))))

(assert (=> d!1700846 (validRegex!6653 lt!2160633)))

(assert (=> d!1700846 (= (theoremZipperRegexEquiv!327 lt!2160645 lt!2160626 lt!2160633 s!2326) lt!2160795)))

(declare-fun bs!1225115 () Bool)

(assert (= bs!1225115 d!1700846))

(assert (=> bs!1225115 m!6323682))

(assert (=> bs!1225115 m!6323678))

(declare-fun m!6324404 () Bool)

(assert (=> bs!1225115 m!6324404))

(assert (=> bs!1225115 m!6324384))

(assert (=> b!5286143 d!1700846))

(declare-fun bs!1225116 () Bool)

(declare-fun d!1700848 () Bool)

(assert (= bs!1225116 (and d!1700848 b!5286143)))

(declare-fun lambda!267435 () Int)

(assert (=> bs!1225116 (= lambda!267435 lambda!267349)))

(declare-fun bs!1225117 () Bool)

(assert (= bs!1225117 (and d!1700848 d!1700764)))

(assert (=> bs!1225117 (= lambda!267435 lambda!267396)))

(declare-fun b!5286887 () Bool)

(declare-fun e!3286950 () Regex!14917)

(assert (=> b!5286887 (= e!3286950 (h!67374 lt!2160641))))

(declare-fun b!5286888 () Bool)

(declare-fun e!3286947 () Bool)

(declare-fun e!3286949 () Bool)

(assert (=> b!5286888 (= e!3286947 e!3286949)))

(declare-fun c!916836 () Bool)

(assert (=> b!5286888 (= c!916836 (isEmpty!32879 lt!2160641))))

(declare-fun b!5286889 () Bool)

(declare-fun lt!2160798 () Regex!14917)

(declare-fun isEmptyExpr!841 (Regex!14917) Bool)

(assert (=> b!5286889 (= e!3286949 (isEmptyExpr!841 lt!2160798))))

(declare-fun b!5286890 () Bool)

(declare-fun e!3286946 () Bool)

(declare-fun head!11331 (List!61050) Regex!14917)

(assert (=> b!5286890 (= e!3286946 (= lt!2160798 (head!11331 lt!2160641)))))

(declare-fun b!5286891 () Bool)

(declare-fun e!3286948 () Regex!14917)

(assert (=> b!5286891 (= e!3286950 e!3286948)))

(declare-fun c!916838 () Bool)

(assert (=> b!5286891 (= c!916838 ((_ is Cons!60926) lt!2160641))))

(declare-fun b!5286892 () Bool)

(assert (=> b!5286892 (= e!3286948 (Concat!23762 (h!67374 lt!2160641) (generalisedConcat!586 (t!374253 lt!2160641))))))

(assert (=> d!1700848 e!3286947))

(declare-fun res!2242304 () Bool)

(assert (=> d!1700848 (=> (not res!2242304) (not e!3286947))))

(assert (=> d!1700848 (= res!2242304 (validRegex!6653 lt!2160798))))

(assert (=> d!1700848 (= lt!2160798 e!3286950)))

(declare-fun c!916837 () Bool)

(declare-fun e!3286951 () Bool)

(assert (=> d!1700848 (= c!916837 e!3286951)))

(declare-fun res!2242303 () Bool)

(assert (=> d!1700848 (=> (not res!2242303) (not e!3286951))))

(assert (=> d!1700848 (= res!2242303 ((_ is Cons!60926) lt!2160641))))

(assert (=> d!1700848 (forall!14325 lt!2160641 lambda!267435)))

(assert (=> d!1700848 (= (generalisedConcat!586 lt!2160641) lt!2160798)))

(declare-fun b!5286893 () Bool)

(assert (=> b!5286893 (= e!3286948 EmptyExpr!14917)))

(declare-fun b!5286894 () Bool)

(declare-fun isConcat!364 (Regex!14917) Bool)

(assert (=> b!5286894 (= e!3286946 (isConcat!364 lt!2160798))))

(declare-fun b!5286895 () Bool)

(assert (=> b!5286895 (= e!3286949 e!3286946)))

(declare-fun c!916835 () Bool)

(declare-fun tail!10428 (List!61050) List!61050)

(assert (=> b!5286895 (= c!916835 (isEmpty!32879 (tail!10428 lt!2160641)))))

(declare-fun b!5286896 () Bool)

(assert (=> b!5286896 (= e!3286951 (isEmpty!32879 (t!374253 lt!2160641)))))

(assert (= (and d!1700848 res!2242303) b!5286896))

(assert (= (and d!1700848 c!916837) b!5286887))

(assert (= (and d!1700848 (not c!916837)) b!5286891))

(assert (= (and b!5286891 c!916838) b!5286892))

(assert (= (and b!5286891 (not c!916838)) b!5286893))

(assert (= (and d!1700848 res!2242304) b!5286888))

(assert (= (and b!5286888 c!916836) b!5286889))

(assert (= (and b!5286888 (not c!916836)) b!5286895))

(assert (= (and b!5286895 c!916835) b!5286890))

(assert (= (and b!5286895 (not c!916835)) b!5286894))

(declare-fun m!6324406 () Bool)

(assert (=> d!1700848 m!6324406))

(declare-fun m!6324408 () Bool)

(assert (=> d!1700848 m!6324408))

(declare-fun m!6324410 () Bool)

(assert (=> b!5286895 m!6324410))

(assert (=> b!5286895 m!6324410))

(declare-fun m!6324412 () Bool)

(assert (=> b!5286895 m!6324412))

(declare-fun m!6324414 () Bool)

(assert (=> b!5286889 m!6324414))

(declare-fun m!6324416 () Bool)

(assert (=> b!5286892 m!6324416))

(declare-fun m!6324418 () Bool)

(assert (=> b!5286888 m!6324418))

(declare-fun m!6324420 () Bool)

(assert (=> b!5286896 m!6324420))

(declare-fun m!6324422 () Bool)

(assert (=> b!5286894 m!6324422))

(declare-fun m!6324424 () Bool)

(assert (=> b!5286890 m!6324424))

(assert (=> b!5286143 d!1700848))

(declare-fun b!5286897 () Bool)

(declare-fun res!2242305 () Bool)

(declare-fun e!3286956 () Bool)

(assert (=> b!5286897 (=> (not res!2242305) (not e!3286956))))

(declare-fun call!376563 () Bool)

(assert (=> b!5286897 (= res!2242305 (not call!376563))))

(declare-fun d!1700850 () Bool)

(declare-fun e!3286955 () Bool)

(assert (=> d!1700850 e!3286955))

(declare-fun c!916841 () Bool)

(assert (=> d!1700850 (= c!916841 ((_ is EmptyExpr!14917) lt!2160632))))

(declare-fun lt!2160799 () Bool)

(declare-fun e!3286957 () Bool)

(assert (=> d!1700850 (= lt!2160799 e!3286957)))

(declare-fun c!916840 () Bool)

(assert (=> d!1700850 (= c!916840 (isEmpty!32883 s!2326))))

(assert (=> d!1700850 (validRegex!6653 lt!2160632)))

(assert (=> d!1700850 (= (matchR!7102 lt!2160632 s!2326) lt!2160799)))

(declare-fun b!5286898 () Bool)

(declare-fun e!3286952 () Bool)

(assert (=> b!5286898 (= e!3286952 (not lt!2160799))))

(declare-fun b!5286899 () Bool)

(declare-fun res!2242307 () Bool)

(assert (=> b!5286899 (=> (not res!2242307) (not e!3286956))))

(assert (=> b!5286899 (= res!2242307 (isEmpty!32883 (tail!10427 s!2326)))))

(declare-fun b!5286900 () Bool)

(assert (=> b!5286900 (= e!3286955 (= lt!2160799 call!376563))))

(declare-fun b!5286901 () Bool)

(assert (=> b!5286901 (= e!3286956 (= (head!11330 s!2326) (c!916617 lt!2160632)))))

(declare-fun b!5286902 () Bool)

(assert (=> b!5286902 (= e!3286957 (matchR!7102 (derivativeStep!4127 lt!2160632 (head!11330 s!2326)) (tail!10427 s!2326)))))

(declare-fun b!5286903 () Bool)

(assert (=> b!5286903 (= e!3286957 (nullable!5086 lt!2160632))))

(declare-fun b!5286904 () Bool)

(declare-fun e!3286958 () Bool)

(declare-fun e!3286954 () Bool)

(assert (=> b!5286904 (= e!3286958 e!3286954)))

(declare-fun res!2242311 () Bool)

(assert (=> b!5286904 (=> res!2242311 e!3286954)))

(assert (=> b!5286904 (= res!2242311 call!376563)))

(declare-fun b!5286905 () Bool)

(assert (=> b!5286905 (= e!3286955 e!3286952)))

(declare-fun c!916839 () Bool)

(assert (=> b!5286905 (= c!916839 ((_ is EmptyLang!14917) lt!2160632))))

(declare-fun b!5286906 () Bool)

(declare-fun res!2242309 () Bool)

(assert (=> b!5286906 (=> res!2242309 e!3286954)))

(assert (=> b!5286906 (= res!2242309 (not (isEmpty!32883 (tail!10427 s!2326))))))

(declare-fun b!5286907 () Bool)

(declare-fun res!2242310 () Bool)

(declare-fun e!3286953 () Bool)

(assert (=> b!5286907 (=> res!2242310 e!3286953)))

(assert (=> b!5286907 (= res!2242310 (not ((_ is ElementMatch!14917) lt!2160632)))))

(assert (=> b!5286907 (= e!3286952 e!3286953)))

(declare-fun b!5286908 () Bool)

(assert (=> b!5286908 (= e!3286953 e!3286958)))

(declare-fun res!2242312 () Bool)

(assert (=> b!5286908 (=> (not res!2242312) (not e!3286958))))

(assert (=> b!5286908 (= res!2242312 (not lt!2160799))))

(declare-fun b!5286909 () Bool)

(declare-fun res!2242306 () Bool)

(assert (=> b!5286909 (=> res!2242306 e!3286953)))

(assert (=> b!5286909 (= res!2242306 e!3286956)))

(declare-fun res!2242308 () Bool)

(assert (=> b!5286909 (=> (not res!2242308) (not e!3286956))))

(assert (=> b!5286909 (= res!2242308 lt!2160799)))

(declare-fun bm!376558 () Bool)

(assert (=> bm!376558 (= call!376563 (isEmpty!32883 s!2326))))

(declare-fun b!5286910 () Bool)

(assert (=> b!5286910 (= e!3286954 (not (= (head!11330 s!2326) (c!916617 lt!2160632))))))

(assert (= (and d!1700850 c!916840) b!5286903))

(assert (= (and d!1700850 (not c!916840)) b!5286902))

(assert (= (and d!1700850 c!916841) b!5286900))

(assert (= (and d!1700850 (not c!916841)) b!5286905))

(assert (= (and b!5286905 c!916839) b!5286898))

(assert (= (and b!5286905 (not c!916839)) b!5286907))

(assert (= (and b!5286907 (not res!2242310)) b!5286909))

(assert (= (and b!5286909 res!2242308) b!5286897))

(assert (= (and b!5286897 res!2242305) b!5286899))

(assert (= (and b!5286899 res!2242307) b!5286901))

(assert (= (and b!5286909 (not res!2242306)) b!5286908))

(assert (= (and b!5286908 res!2242312) b!5286904))

(assert (= (and b!5286904 (not res!2242311)) b!5286906))

(assert (= (and b!5286906 (not res!2242309)) b!5286910))

(assert (= (or b!5286900 b!5286897 b!5286904) bm!376558))

(assert (=> d!1700850 m!6324264))

(declare-fun m!6324426 () Bool)

(assert (=> d!1700850 m!6324426))

(assert (=> b!5286899 m!6324266))

(assert (=> b!5286899 m!6324266))

(assert (=> b!5286899 m!6324268))

(assert (=> b!5286906 m!6324266))

(assert (=> b!5286906 m!6324266))

(assert (=> b!5286906 m!6324268))

(declare-fun m!6324428 () Bool)

(assert (=> b!5286903 m!6324428))

(assert (=> b!5286901 m!6324272))

(assert (=> b!5286910 m!6324272))

(assert (=> b!5286902 m!6324272))

(assert (=> b!5286902 m!6324272))

(declare-fun m!6324430 () Bool)

(assert (=> b!5286902 m!6324430))

(assert (=> b!5286902 m!6324266))

(assert (=> b!5286902 m!6324430))

(assert (=> b!5286902 m!6324266))

(declare-fun m!6324432 () Bool)

(assert (=> b!5286902 m!6324432))

(assert (=> bm!376558 m!6324264))

(assert (=> b!5286143 d!1700850))

(declare-fun d!1700852 () Bool)

(assert (=> d!1700852 (= (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 Nil!60928 s!2326 s!2326)) (not (isEmpty!32884 (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 Nil!60928 s!2326 s!2326))))))

(declare-fun bs!1225118 () Bool)

(assert (= bs!1225118 d!1700852))

(assert (=> bs!1225118 m!6323668))

(declare-fun m!6324434 () Bool)

(assert (=> bs!1225118 m!6324434))

(assert (=> b!5286143 d!1700852))

(declare-fun d!1700854 () Bool)

(declare-fun c!916842 () Bool)

(assert (=> d!1700854 (= c!916842 (isEmpty!32883 s!2326))))

(declare-fun e!3286959 () Bool)

(assert (=> d!1700854 (= (matchZipper!1161 lt!2160645 s!2326) e!3286959)))

(declare-fun b!5286911 () Bool)

(assert (=> b!5286911 (= e!3286959 (nullableZipper!1306 lt!2160645))))

(declare-fun b!5286912 () Bool)

(assert (=> b!5286912 (= e!3286959 (matchZipper!1161 (derivationStepZipper!1160 lt!2160645 (head!11330 s!2326)) (tail!10427 s!2326)))))

(assert (= (and d!1700854 c!916842) b!5286911))

(assert (= (and d!1700854 (not c!916842)) b!5286912))

(assert (=> d!1700854 m!6324264))

(declare-fun m!6324436 () Bool)

(assert (=> b!5286911 m!6324436))

(assert (=> b!5286912 m!6324272))

(assert (=> b!5286912 m!6324272))

(declare-fun m!6324438 () Bool)

(assert (=> b!5286912 m!6324438))

(assert (=> b!5286912 m!6324266))

(assert (=> b!5286912 m!6324438))

(assert (=> b!5286912 m!6324266))

(declare-fun m!6324440 () Bool)

(assert (=> b!5286912 m!6324440))

(assert (=> b!5286143 d!1700854))

(declare-fun b!5286913 () Bool)

(declare-fun e!3286963 () Option!15028)

(assert (=> b!5286913 (= e!3286963 (Some!15027 (tuple2!64233 Nil!60928 s!2326)))))

(declare-fun b!5286914 () Bool)

(declare-fun e!3286960 () Bool)

(declare-fun lt!2160801 () Option!15028)

(assert (=> b!5286914 (= e!3286960 (not (isDefined!11731 lt!2160801)))))

(declare-fun b!5286915 () Bool)

(declare-fun res!2242313 () Bool)

(declare-fun e!3286962 () Bool)

(assert (=> b!5286915 (=> (not res!2242313) (not e!3286962))))

(assert (=> b!5286915 (= res!2242313 (matchR!7102 (regOne!30346 (regOne!30346 r!7292)) (_1!35419 (get!20950 lt!2160801))))))

(declare-fun d!1700856 () Bool)

(assert (=> d!1700856 e!3286960))

(declare-fun res!2242315 () Bool)

(assert (=> d!1700856 (=> res!2242315 e!3286960)))

(assert (=> d!1700856 (= res!2242315 e!3286962)))

(declare-fun res!2242316 () Bool)

(assert (=> d!1700856 (=> (not res!2242316) (not e!3286962))))

(assert (=> d!1700856 (= res!2242316 (isDefined!11731 lt!2160801))))

(assert (=> d!1700856 (= lt!2160801 e!3286963)))

(declare-fun c!916844 () Bool)

(declare-fun e!3286964 () Bool)

(assert (=> d!1700856 (= c!916844 e!3286964)))

(declare-fun res!2242317 () Bool)

(assert (=> d!1700856 (=> (not res!2242317) (not e!3286964))))

(assert (=> d!1700856 (= res!2242317 (matchR!7102 (regOne!30346 (regOne!30346 r!7292)) Nil!60928))))

(assert (=> d!1700856 (validRegex!6653 (regOne!30346 (regOne!30346 r!7292)))))

(assert (=> d!1700856 (= (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 Nil!60928 s!2326 s!2326) lt!2160801)))

(declare-fun b!5286916 () Bool)

(assert (=> b!5286916 (= e!3286962 (= (++!13286 (_1!35419 (get!20950 lt!2160801)) (_2!35419 (get!20950 lt!2160801))) s!2326))))

(declare-fun b!5286917 () Bool)

(declare-fun lt!2160802 () Unit!153186)

(declare-fun lt!2160800 () Unit!153186)

(assert (=> b!5286917 (= lt!2160802 lt!2160800)))

(assert (=> b!5286917 (= (++!13286 (++!13286 Nil!60928 (Cons!60928 (h!67376 s!2326) Nil!60928)) (t!374255 s!2326)) s!2326)))

(assert (=> b!5286917 (= lt!2160800 (lemmaMoveElementToOtherListKeepsConcatEq!1701 Nil!60928 (h!67376 s!2326) (t!374255 s!2326) s!2326))))

(declare-fun e!3286961 () Option!15028)

(assert (=> b!5286917 (= e!3286961 (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 (++!13286 Nil!60928 (Cons!60928 (h!67376 s!2326) Nil!60928)) (t!374255 s!2326) s!2326))))

(declare-fun b!5286918 () Bool)

(assert (=> b!5286918 (= e!3286964 (matchR!7102 lt!2160632 s!2326))))

(declare-fun b!5286919 () Bool)

(declare-fun res!2242314 () Bool)

(assert (=> b!5286919 (=> (not res!2242314) (not e!3286962))))

(assert (=> b!5286919 (= res!2242314 (matchR!7102 lt!2160632 (_2!35419 (get!20950 lt!2160801))))))

(declare-fun b!5286920 () Bool)

(assert (=> b!5286920 (= e!3286963 e!3286961)))

(declare-fun c!916843 () Bool)

(assert (=> b!5286920 (= c!916843 ((_ is Nil!60928) s!2326))))

(declare-fun b!5286921 () Bool)

(assert (=> b!5286921 (= e!3286961 None!15027)))

(assert (= (and d!1700856 res!2242317) b!5286918))

(assert (= (and d!1700856 c!916844) b!5286913))

(assert (= (and d!1700856 (not c!916844)) b!5286920))

(assert (= (and b!5286920 c!916843) b!5286921))

(assert (= (and b!5286920 (not c!916843)) b!5286917))

(assert (= (and d!1700856 res!2242316) b!5286915))

(assert (= (and b!5286915 res!2242313) b!5286919))

(assert (= (and b!5286919 res!2242314) b!5286916))

(assert (= (and d!1700856 (not res!2242315)) b!5286914))

(assert (=> b!5286917 m!6324332))

(assert (=> b!5286917 m!6324332))

(assert (=> b!5286917 m!6324334))

(assert (=> b!5286917 m!6324336))

(assert (=> b!5286917 m!6324332))

(declare-fun m!6324442 () Bool)

(assert (=> b!5286917 m!6324442))

(assert (=> b!5286918 m!6323666))

(declare-fun m!6324444 () Bool)

(assert (=> b!5286915 m!6324444))

(declare-fun m!6324446 () Bool)

(assert (=> b!5286915 m!6324446))

(declare-fun m!6324448 () Bool)

(assert (=> d!1700856 m!6324448))

(declare-fun m!6324450 () Bool)

(assert (=> d!1700856 m!6324450))

(assert (=> d!1700856 m!6324400))

(assert (=> b!5286914 m!6324448))

(assert (=> b!5286916 m!6324444))

(declare-fun m!6324452 () Bool)

(assert (=> b!5286916 m!6324452))

(assert (=> b!5286919 m!6324444))

(declare-fun m!6324454 () Bool)

(assert (=> b!5286919 m!6324454))

(assert (=> b!5286143 d!1700856))

(declare-fun d!1700858 () Bool)

(assert (=> d!1700858 (= (Exists!2098 lambda!267347) (choose!39470 lambda!267347))))

(declare-fun bs!1225119 () Bool)

(assert (= bs!1225119 d!1700858))

(declare-fun m!6324456 () Bool)

(assert (=> bs!1225119 m!6324456))

(assert (=> b!5286143 d!1700858))

(declare-fun bs!1225120 () Bool)

(declare-fun d!1700860 () Bool)

(assert (= bs!1225120 (and d!1700860 b!5286143)))

(declare-fun lambda!267436 () Int)

(assert (=> bs!1225120 (= lambda!267436 lambda!267349)))

(declare-fun bs!1225121 () Bool)

(assert (= bs!1225121 (and d!1700860 d!1700764)))

(assert (=> bs!1225121 (= lambda!267436 lambda!267396)))

(declare-fun bs!1225122 () Bool)

(assert (= bs!1225122 (and d!1700860 d!1700848)))

(assert (=> bs!1225122 (= lambda!267436 lambda!267435)))

(declare-fun b!5286922 () Bool)

(declare-fun e!3286969 () Regex!14917)

(assert (=> b!5286922 (= e!3286969 (h!67374 lt!2160642))))

(declare-fun b!5286923 () Bool)

(declare-fun e!3286966 () Bool)

(declare-fun e!3286968 () Bool)

(assert (=> b!5286923 (= e!3286966 e!3286968)))

(declare-fun c!916846 () Bool)

(assert (=> b!5286923 (= c!916846 (isEmpty!32879 lt!2160642))))

(declare-fun b!5286924 () Bool)

(declare-fun lt!2160803 () Regex!14917)

(assert (=> b!5286924 (= e!3286968 (isEmptyExpr!841 lt!2160803))))

(declare-fun b!5286925 () Bool)

(declare-fun e!3286965 () Bool)

(assert (=> b!5286925 (= e!3286965 (= lt!2160803 (head!11331 lt!2160642)))))

(declare-fun b!5286926 () Bool)

(declare-fun e!3286967 () Regex!14917)

(assert (=> b!5286926 (= e!3286969 e!3286967)))

(declare-fun c!916848 () Bool)

(assert (=> b!5286926 (= c!916848 ((_ is Cons!60926) lt!2160642))))

(declare-fun b!5286927 () Bool)

(assert (=> b!5286927 (= e!3286967 (Concat!23762 (h!67374 lt!2160642) (generalisedConcat!586 (t!374253 lt!2160642))))))

(assert (=> d!1700860 e!3286966))

(declare-fun res!2242319 () Bool)

(assert (=> d!1700860 (=> (not res!2242319) (not e!3286966))))

(assert (=> d!1700860 (= res!2242319 (validRegex!6653 lt!2160803))))

(assert (=> d!1700860 (= lt!2160803 e!3286969)))

(declare-fun c!916847 () Bool)

(declare-fun e!3286970 () Bool)

(assert (=> d!1700860 (= c!916847 e!3286970)))

(declare-fun res!2242318 () Bool)

(assert (=> d!1700860 (=> (not res!2242318) (not e!3286970))))

(assert (=> d!1700860 (= res!2242318 ((_ is Cons!60926) lt!2160642))))

(assert (=> d!1700860 (forall!14325 lt!2160642 lambda!267436)))

(assert (=> d!1700860 (= (generalisedConcat!586 lt!2160642) lt!2160803)))

(declare-fun b!5286928 () Bool)

(assert (=> b!5286928 (= e!3286967 EmptyExpr!14917)))

(declare-fun b!5286929 () Bool)

(assert (=> b!5286929 (= e!3286965 (isConcat!364 lt!2160803))))

(declare-fun b!5286930 () Bool)

(assert (=> b!5286930 (= e!3286968 e!3286965)))

(declare-fun c!916845 () Bool)

(assert (=> b!5286930 (= c!916845 (isEmpty!32879 (tail!10428 lt!2160642)))))

(declare-fun b!5286931 () Bool)

(assert (=> b!5286931 (= e!3286970 (isEmpty!32879 (t!374253 lt!2160642)))))

(assert (= (and d!1700860 res!2242318) b!5286931))

(assert (= (and d!1700860 c!916847) b!5286922))

(assert (= (and d!1700860 (not c!916847)) b!5286926))

(assert (= (and b!5286926 c!916848) b!5286927))

(assert (= (and b!5286926 (not c!916848)) b!5286928))

(assert (= (and d!1700860 res!2242319) b!5286923))

(assert (= (and b!5286923 c!916846) b!5286924))

(assert (= (and b!5286923 (not c!916846)) b!5286930))

(assert (= (and b!5286930 c!916845) b!5286925))

(assert (= (and b!5286930 (not c!916845)) b!5286929))

(declare-fun m!6324458 () Bool)

(assert (=> d!1700860 m!6324458))

(declare-fun m!6324460 () Bool)

(assert (=> d!1700860 m!6324460))

(declare-fun m!6324462 () Bool)

(assert (=> b!5286930 m!6324462))

(assert (=> b!5286930 m!6324462))

(declare-fun m!6324464 () Bool)

(assert (=> b!5286930 m!6324464))

(declare-fun m!6324466 () Bool)

(assert (=> b!5286924 m!6324466))

(declare-fun m!6324468 () Bool)

(assert (=> b!5286927 m!6324468))

(declare-fun m!6324470 () Bool)

(assert (=> b!5286923 m!6324470))

(declare-fun m!6324472 () Bool)

(assert (=> b!5286931 m!6324472))

(declare-fun m!6324474 () Bool)

(assert (=> b!5286929 m!6324474))

(declare-fun m!6324476 () Bool)

(assert (=> b!5286925 m!6324476))

(assert (=> b!5286143 d!1700860))

(declare-fun d!1700862 () Bool)

(declare-fun res!2242324 () Bool)

(declare-fun e!3286975 () Bool)

(assert (=> d!1700862 (=> res!2242324 e!3286975)))

(assert (=> d!1700862 (= res!2242324 ((_ is Nil!60926) lt!2160642))))

(assert (=> d!1700862 (= (forall!14325 lt!2160642 lambda!267349) e!3286975)))

(declare-fun b!5286936 () Bool)

(declare-fun e!3286976 () Bool)

(assert (=> b!5286936 (= e!3286975 e!3286976)))

(declare-fun res!2242325 () Bool)

(assert (=> b!5286936 (=> (not res!2242325) (not e!3286976))))

(declare-fun dynLambda!24088 (Int Regex!14917) Bool)

(assert (=> b!5286936 (= res!2242325 (dynLambda!24088 lambda!267349 (h!67374 lt!2160642)))))

(declare-fun b!5286937 () Bool)

(assert (=> b!5286937 (= e!3286976 (forall!14325 (t!374253 lt!2160642) lambda!267349))))

(assert (= (and d!1700862 (not res!2242324)) b!5286936))

(assert (= (and b!5286936 res!2242325) b!5286937))

(declare-fun b_lambda!203901 () Bool)

(assert (=> (not b_lambda!203901) (not b!5286936)))

(declare-fun m!6324478 () Bool)

(assert (=> b!5286936 m!6324478))

(declare-fun m!6324480 () Bool)

(assert (=> b!5286937 m!6324480))

(assert (=> b!5286143 d!1700862))

(declare-fun bs!1225123 () Bool)

(declare-fun d!1700864 () Bool)

(assert (= bs!1225123 (and d!1700864 b!5286706)))

(declare-fun lambda!267437 () Int)

(assert (=> bs!1225123 (not (= lambda!267437 lambda!267409))))

(declare-fun bs!1225124 () Bool)

(assert (= bs!1225124 (and d!1700864 b!5286143)))

(assert (=> bs!1225124 (= lambda!267437 lambda!267347)))

(declare-fun bs!1225125 () Bool)

(assert (= bs!1225125 (and d!1700864 d!1700830)))

(assert (=> bs!1225125 (not (= lambda!267437 lambda!267430))))

(declare-fun bs!1225126 () Bool)

(assert (= bs!1225126 (and d!1700864 b!5286157)))

(assert (=> bs!1225126 (not (= lambda!267437 lambda!267345))))

(declare-fun bs!1225127 () Bool)

(assert (= bs!1225127 (and d!1700864 d!1700828)))

(assert (=> bs!1225127 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267437 lambda!267424))))

(assert (=> bs!1225126 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267437 lambda!267344))))

(assert (=> bs!1225125 (= (and (= (regOne!30346 (regOne!30346 r!7292)) (regOne!30346 r!7292)) (= lt!2160632 (regTwo!30346 r!7292))) (= lambda!267437 lambda!267429))))

(assert (=> bs!1225124 (not (= lambda!267437 lambda!267348))))

(declare-fun bs!1225128 () Bool)

(assert (= bs!1225128 (and d!1700864 d!1700842)))

(assert (=> bs!1225128 (= lambda!267437 lambda!267431)))

(declare-fun bs!1225129 () Bool)

(assert (= bs!1225129 (and d!1700864 b!5286702)))

(assert (=> bs!1225129 (not (= lambda!267437 lambda!267408))))

(assert (=> bs!1225128 (not (= lambda!267437 lambda!267432))))

(assert (=> d!1700864 true))

(assert (=> d!1700864 true))

(assert (=> d!1700864 true))

(assert (=> d!1700864 (= (isDefined!11731 (findConcatSeparation!1442 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 Nil!60928 s!2326 s!2326)) (Exists!2098 lambda!267437))))

(declare-fun lt!2160804 () Unit!153186)

(assert (=> d!1700864 (= lt!2160804 (choose!39471 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326))))

(assert (=> d!1700864 (validRegex!6653 (regOne!30346 (regOne!30346 r!7292)))))

(assert (=> d!1700864 (= (lemmaFindConcatSeparationEquivalentToExists!1206 (regOne!30346 (regOne!30346 r!7292)) lt!2160632 s!2326) lt!2160804)))

(declare-fun bs!1225130 () Bool)

(assert (= bs!1225130 d!1700864))

(assert (=> bs!1225130 m!6324400))

(declare-fun m!6324482 () Bool)

(assert (=> bs!1225130 m!6324482))

(assert (=> bs!1225130 m!6323668))

(declare-fun m!6324484 () Bool)

(assert (=> bs!1225130 m!6324484))

(assert (=> bs!1225130 m!6323668))

(assert (=> bs!1225130 m!6323680))

(assert (=> b!5286143 d!1700864))

(declare-fun d!1700866 () Bool)

(declare-fun c!916849 () Bool)

(assert (=> d!1700866 (= c!916849 (isEmpty!32883 s!2326))))

(declare-fun e!3286977 () Bool)

(assert (=> d!1700866 (= (matchZipper!1161 lt!2160654 s!2326) e!3286977)))

(declare-fun b!5286938 () Bool)

(assert (=> b!5286938 (= e!3286977 (nullableZipper!1306 lt!2160654))))

(declare-fun b!5286939 () Bool)

(assert (=> b!5286939 (= e!3286977 (matchZipper!1161 (derivationStepZipper!1160 lt!2160654 (head!11330 s!2326)) (tail!10427 s!2326)))))

(assert (= (and d!1700866 c!916849) b!5286938))

(assert (= (and d!1700866 (not c!916849)) b!5286939))

(assert (=> d!1700866 m!6324264))

(declare-fun m!6324486 () Bool)

(assert (=> b!5286938 m!6324486))

(assert (=> b!5286939 m!6324272))

(assert (=> b!5286939 m!6324272))

(declare-fun m!6324488 () Bool)

(assert (=> b!5286939 m!6324488))

(assert (=> b!5286939 m!6324266))

(assert (=> b!5286939 m!6324488))

(assert (=> b!5286939 m!6324266))

(declare-fun m!6324490 () Bool)

(assert (=> b!5286939 m!6324490))

(assert (=> b!5286143 d!1700866))

(declare-fun d!1700868 () Bool)

(assert (=> d!1700868 (= (matchR!7102 lt!2160632 s!2326) (matchZipper!1161 lt!2160654 s!2326))))

(declare-fun lt!2160805 () Unit!153186)

(assert (=> d!1700868 (= lt!2160805 (choose!39474 lt!2160654 (Cons!60927 lt!2160657 Nil!60927) lt!2160632 s!2326))))

(assert (=> d!1700868 (validRegex!6653 lt!2160632)))

(assert (=> d!1700868 (= (theoremZipperRegexEquiv!327 lt!2160654 (Cons!60927 lt!2160657 Nil!60927) lt!2160632 s!2326) lt!2160805)))

(declare-fun bs!1225131 () Bool)

(assert (= bs!1225131 d!1700868))

(assert (=> bs!1225131 m!6323666))

(assert (=> bs!1225131 m!6323672))

(declare-fun m!6324492 () Bool)

(assert (=> bs!1225131 m!6324492))

(assert (=> bs!1225131 m!6324426))

(assert (=> b!5286143 d!1700868))

(declare-fun bs!1225132 () Bool)

(declare-fun b!5286941 () Bool)

(assert (= bs!1225132 (and b!5286941 b!5286706)))

(declare-fun lambda!267438 () Int)

(assert (=> bs!1225132 (not (= lambda!267438 lambda!267409))))

(declare-fun bs!1225133 () Bool)

(assert (= bs!1225133 (and b!5286941 d!1700864)))

(assert (=> bs!1225133 (not (= lambda!267438 lambda!267437))))

(declare-fun bs!1225134 () Bool)

(assert (= bs!1225134 (and b!5286941 b!5286143)))

(assert (=> bs!1225134 (not (= lambda!267438 lambda!267347))))

(declare-fun bs!1225135 () Bool)

(assert (= bs!1225135 (and b!5286941 d!1700830)))

(assert (=> bs!1225135 (not (= lambda!267438 lambda!267430))))

(declare-fun bs!1225136 () Bool)

(assert (= bs!1225136 (and b!5286941 b!5286157)))

(assert (=> bs!1225136 (not (= lambda!267438 lambda!267345))))

(declare-fun bs!1225137 () Bool)

(assert (= bs!1225137 (and b!5286941 d!1700828)))

(assert (=> bs!1225137 (not (= lambda!267438 lambda!267424))))

(assert (=> bs!1225136 (not (= lambda!267438 lambda!267344))))

(assert (=> bs!1225135 (not (= lambda!267438 lambda!267429))))

(assert (=> bs!1225134 (not (= lambda!267438 lambda!267348))))

(declare-fun bs!1225138 () Bool)

(assert (= bs!1225138 (and b!5286941 d!1700842)))

(assert (=> bs!1225138 (not (= lambda!267438 lambda!267431))))

(declare-fun bs!1225139 () Bool)

(assert (= bs!1225139 (and b!5286941 b!5286702)))

(assert (=> bs!1225139 (= (and (= (reg!15246 lt!2160633) (reg!15246 r!7292)) (= lt!2160633 r!7292)) (= lambda!267438 lambda!267408))))

(assert (=> bs!1225138 (not (= lambda!267438 lambda!267432))))

(assert (=> b!5286941 true))

(assert (=> b!5286941 true))

(declare-fun bs!1225140 () Bool)

(declare-fun b!5286945 () Bool)

(assert (= bs!1225140 (and b!5286945 b!5286706)))

(declare-fun lambda!267439 () Int)

(assert (=> bs!1225140 (= (and (= (regOne!30346 lt!2160633) (regOne!30346 r!7292)) (= (regTwo!30346 lt!2160633) (regTwo!30346 r!7292))) (= lambda!267439 lambda!267409))))

(declare-fun bs!1225141 () Bool)

(assert (= bs!1225141 (and b!5286945 d!1700864)))

(assert (=> bs!1225141 (not (= lambda!267439 lambda!267437))))

(declare-fun bs!1225142 () Bool)

(assert (= bs!1225142 (and b!5286945 b!5286143)))

(assert (=> bs!1225142 (not (= lambda!267439 lambda!267347))))

(declare-fun bs!1225143 () Bool)

(assert (= bs!1225143 (and b!5286945 d!1700830)))

(assert (=> bs!1225143 (= (and (= (regOne!30346 lt!2160633) (regOne!30346 r!7292)) (= (regTwo!30346 lt!2160633) (regTwo!30346 r!7292))) (= lambda!267439 lambda!267430))))

(declare-fun bs!1225144 () Bool)

(assert (= bs!1225144 (and b!5286945 b!5286157)))

(assert (=> bs!1225144 (= (and (= (regOne!30346 lt!2160633) (regOne!30346 r!7292)) (= (regTwo!30346 lt!2160633) (regTwo!30346 r!7292))) (= lambda!267439 lambda!267345))))

(declare-fun bs!1225145 () Bool)

(assert (= bs!1225145 (and b!5286945 d!1700828)))

(assert (=> bs!1225145 (not (= lambda!267439 lambda!267424))))

(declare-fun bs!1225146 () Bool)

(assert (= bs!1225146 (and b!5286945 b!5286941)))

(assert (=> bs!1225146 (not (= lambda!267439 lambda!267438))))

(assert (=> bs!1225144 (not (= lambda!267439 lambda!267344))))

(assert (=> bs!1225143 (not (= lambda!267439 lambda!267429))))

(assert (=> bs!1225142 (= (and (= (regOne!30346 lt!2160633) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 lt!2160633) lt!2160632)) (= lambda!267439 lambda!267348))))

(declare-fun bs!1225147 () Bool)

(assert (= bs!1225147 (and b!5286945 d!1700842)))

(assert (=> bs!1225147 (not (= lambda!267439 lambda!267431))))

(declare-fun bs!1225148 () Bool)

(assert (= bs!1225148 (and b!5286945 b!5286702)))

(assert (=> bs!1225148 (not (= lambda!267439 lambda!267408))))

(assert (=> bs!1225147 (= (and (= (regOne!30346 lt!2160633) (regOne!30346 (regOne!30346 r!7292))) (= (regTwo!30346 lt!2160633) lt!2160632)) (= lambda!267439 lambda!267432))))

(assert (=> b!5286945 true))

(assert (=> b!5286945 true))

(declare-fun b!5286940 () Bool)

(declare-fun e!3286979 () Bool)

(declare-fun e!3286984 () Bool)

(assert (=> b!5286940 (= e!3286979 e!3286984)))

(declare-fun res!2242326 () Bool)

(assert (=> b!5286940 (= res!2242326 (matchRSpec!2020 (regOne!30347 lt!2160633) s!2326))))

(assert (=> b!5286940 (=> res!2242326 e!3286984)))

(declare-fun e!3286981 () Bool)

(declare-fun call!376564 () Bool)

(assert (=> b!5286941 (= e!3286981 call!376564)))

(declare-fun b!5286942 () Bool)

(declare-fun e!3286978 () Bool)

(declare-fun call!376565 () Bool)

(assert (=> b!5286942 (= e!3286978 call!376565)))

(declare-fun b!5286943 () Bool)

(declare-fun c!916853 () Bool)

(assert (=> b!5286943 (= c!916853 ((_ is Union!14917) lt!2160633))))

(declare-fun e!3286982 () Bool)

(assert (=> b!5286943 (= e!3286982 e!3286979)))

(declare-fun b!5286944 () Bool)

(declare-fun res!2242328 () Bool)

(assert (=> b!5286944 (=> res!2242328 e!3286981)))

(assert (=> b!5286944 (= res!2242328 call!376565)))

(declare-fun e!3286980 () Bool)

(assert (=> b!5286944 (= e!3286980 e!3286981)))

(declare-fun b!5286946 () Bool)

(declare-fun e!3286983 () Bool)

(assert (=> b!5286946 (= e!3286978 e!3286983)))

(declare-fun res!2242327 () Bool)

(assert (=> b!5286946 (= res!2242327 (not ((_ is EmptyLang!14917) lt!2160633)))))

(assert (=> b!5286946 (=> (not res!2242327) (not e!3286983))))

(declare-fun b!5286947 () Bool)

(assert (=> b!5286947 (= e!3286982 (= s!2326 (Cons!60928 (c!916617 lt!2160633) Nil!60928)))))

(declare-fun bm!376559 () Bool)

(declare-fun c!916850 () Bool)

(assert (=> bm!376559 (= call!376564 (Exists!2098 (ite c!916850 lambda!267438 lambda!267439)))))

(declare-fun b!5286948 () Bool)

(assert (=> b!5286948 (= e!3286984 (matchRSpec!2020 (regTwo!30347 lt!2160633) s!2326))))

(declare-fun b!5286949 () Bool)

(declare-fun c!916852 () Bool)

(assert (=> b!5286949 (= c!916852 ((_ is ElementMatch!14917) lt!2160633))))

(assert (=> b!5286949 (= e!3286983 e!3286982)))

(declare-fun bm!376560 () Bool)

(assert (=> bm!376560 (= call!376565 (isEmpty!32883 s!2326))))

(declare-fun b!5286950 () Bool)

(assert (=> b!5286950 (= e!3286979 e!3286980)))

(assert (=> b!5286950 (= c!916850 ((_ is Star!14917) lt!2160633))))

(declare-fun d!1700870 () Bool)

(declare-fun c!916851 () Bool)

(assert (=> d!1700870 (= c!916851 ((_ is EmptyExpr!14917) lt!2160633))))

(assert (=> d!1700870 (= (matchRSpec!2020 lt!2160633 s!2326) e!3286978)))

(assert (=> b!5286945 (= e!3286980 call!376564)))

(assert (= (and d!1700870 c!916851) b!5286942))

(assert (= (and d!1700870 (not c!916851)) b!5286946))

(assert (= (and b!5286946 res!2242327) b!5286949))

(assert (= (and b!5286949 c!916852) b!5286947))

(assert (= (and b!5286949 (not c!916852)) b!5286943))

(assert (= (and b!5286943 c!916853) b!5286940))

(assert (= (and b!5286943 (not c!916853)) b!5286950))

(assert (= (and b!5286940 (not res!2242326)) b!5286948))

(assert (= (and b!5286950 c!916850) b!5286944))

(assert (= (and b!5286950 (not c!916850)) b!5286945))

(assert (= (and b!5286944 (not res!2242328)) b!5286941))

(assert (= (or b!5286941 b!5286945) bm!376559))

(assert (= (or b!5286942 b!5286944) bm!376560))

(declare-fun m!6324494 () Bool)

(assert (=> b!5286940 m!6324494))

(declare-fun m!6324496 () Bool)

(assert (=> bm!376559 m!6324496))

(declare-fun m!6324498 () Bool)

(assert (=> b!5286948 m!6324498))

(assert (=> bm!376560 m!6324264))

(assert (=> b!5286143 d!1700870))

(declare-fun bs!1225149 () Bool)

(declare-fun d!1700872 () Bool)

(assert (= bs!1225149 (and d!1700872 b!5286143)))

(declare-fun lambda!267440 () Int)

(assert (=> bs!1225149 (= lambda!267440 lambda!267349)))

(declare-fun bs!1225150 () Bool)

(assert (= bs!1225150 (and d!1700872 d!1700764)))

(assert (=> bs!1225150 (= lambda!267440 lambda!267396)))

(declare-fun bs!1225151 () Bool)

(assert (= bs!1225151 (and d!1700872 d!1700848)))

(assert (=> bs!1225151 (= lambda!267440 lambda!267435)))

(declare-fun bs!1225152 () Bool)

(assert (= bs!1225152 (and d!1700872 d!1700860)))

(assert (=> bs!1225152 (= lambda!267440 lambda!267436)))

(declare-fun b!5286951 () Bool)

(declare-fun e!3286989 () Regex!14917)

(assert (=> b!5286951 (= e!3286989 (h!67374 (exprs!4801 (h!67375 zl!343))))))

(declare-fun b!5286952 () Bool)

(declare-fun e!3286986 () Bool)

(declare-fun e!3286988 () Bool)

(assert (=> b!5286952 (= e!3286986 e!3286988)))

(declare-fun c!916855 () Bool)

(assert (=> b!5286952 (= c!916855 (isEmpty!32879 (exprs!4801 (h!67375 zl!343))))))

(declare-fun b!5286953 () Bool)

(declare-fun lt!2160806 () Regex!14917)

(assert (=> b!5286953 (= e!3286988 (isEmptyExpr!841 lt!2160806))))

(declare-fun b!5286954 () Bool)

(declare-fun e!3286985 () Bool)

(assert (=> b!5286954 (= e!3286985 (= lt!2160806 (head!11331 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5286955 () Bool)

(declare-fun e!3286987 () Regex!14917)

(assert (=> b!5286955 (= e!3286989 e!3286987)))

(declare-fun c!916857 () Bool)

(assert (=> b!5286955 (= c!916857 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343))))))

(declare-fun b!5286956 () Bool)

(assert (=> b!5286956 (= e!3286987 (Concat!23762 (h!67374 (exprs!4801 (h!67375 zl!343))) (generalisedConcat!586 (t!374253 (exprs!4801 (h!67375 zl!343))))))))

(assert (=> d!1700872 e!3286986))

(declare-fun res!2242330 () Bool)

(assert (=> d!1700872 (=> (not res!2242330) (not e!3286986))))

(assert (=> d!1700872 (= res!2242330 (validRegex!6653 lt!2160806))))

(assert (=> d!1700872 (= lt!2160806 e!3286989)))

(declare-fun c!916856 () Bool)

(declare-fun e!3286990 () Bool)

(assert (=> d!1700872 (= c!916856 e!3286990)))

(declare-fun res!2242329 () Bool)

(assert (=> d!1700872 (=> (not res!2242329) (not e!3286990))))

(assert (=> d!1700872 (= res!2242329 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343))))))

(assert (=> d!1700872 (forall!14325 (exprs!4801 (h!67375 zl!343)) lambda!267440)))

(assert (=> d!1700872 (= (generalisedConcat!586 (exprs!4801 (h!67375 zl!343))) lt!2160806)))

(declare-fun b!5286957 () Bool)

(assert (=> b!5286957 (= e!3286987 EmptyExpr!14917)))

(declare-fun b!5286958 () Bool)

(assert (=> b!5286958 (= e!3286985 (isConcat!364 lt!2160806))))

(declare-fun b!5286959 () Bool)

(assert (=> b!5286959 (= e!3286988 e!3286985)))

(declare-fun c!916854 () Bool)

(assert (=> b!5286959 (= c!916854 (isEmpty!32879 (tail!10428 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5286960 () Bool)

(assert (=> b!5286960 (= e!3286990 (isEmpty!32879 (t!374253 (exprs!4801 (h!67375 zl!343)))))))

(assert (= (and d!1700872 res!2242329) b!5286960))

(assert (= (and d!1700872 c!916856) b!5286951))

(assert (= (and d!1700872 (not c!916856)) b!5286955))

(assert (= (and b!5286955 c!916857) b!5286956))

(assert (= (and b!5286955 (not c!916857)) b!5286957))

(assert (= (and d!1700872 res!2242330) b!5286952))

(assert (= (and b!5286952 c!916855) b!5286953))

(assert (= (and b!5286952 (not c!916855)) b!5286959))

(assert (= (and b!5286959 c!916854) b!5286954))

(assert (= (and b!5286959 (not c!916854)) b!5286958))

(declare-fun m!6324500 () Bool)

(assert (=> d!1700872 m!6324500))

(declare-fun m!6324502 () Bool)

(assert (=> d!1700872 m!6324502))

(declare-fun m!6324504 () Bool)

(assert (=> b!5286959 m!6324504))

(assert (=> b!5286959 m!6324504))

(declare-fun m!6324506 () Bool)

(assert (=> b!5286959 m!6324506))

(declare-fun m!6324508 () Bool)

(assert (=> b!5286953 m!6324508))

(declare-fun m!6324510 () Bool)

(assert (=> b!5286956 m!6324510))

(declare-fun m!6324512 () Bool)

(assert (=> b!5286952 m!6324512))

(assert (=> b!5286960 m!6323732))

(declare-fun m!6324514 () Bool)

(assert (=> b!5286958 m!6324514))

(declare-fun m!6324516 () Bool)

(assert (=> b!5286954 m!6324516))

(assert (=> b!5286142 d!1700872))

(declare-fun bs!1225153 () Bool)

(declare-fun d!1700874 () Bool)

(assert (= bs!1225153 (and d!1700874 d!1700860)))

(declare-fun lambda!267441 () Int)

(assert (=> bs!1225153 (= lambda!267441 lambda!267436)))

(declare-fun bs!1225154 () Bool)

(assert (= bs!1225154 (and d!1700874 d!1700848)))

(assert (=> bs!1225154 (= lambda!267441 lambda!267435)))

(declare-fun bs!1225155 () Bool)

(assert (= bs!1225155 (and d!1700874 d!1700872)))

(assert (=> bs!1225155 (= lambda!267441 lambda!267440)))

(declare-fun bs!1225156 () Bool)

(assert (= bs!1225156 (and d!1700874 b!5286143)))

(assert (=> bs!1225156 (= lambda!267441 lambda!267349)))

(declare-fun bs!1225157 () Bool)

(assert (= bs!1225157 (and d!1700874 d!1700764)))

(assert (=> bs!1225157 (= lambda!267441 lambda!267396)))

(assert (=> d!1700874 (= (inv!80539 (h!67375 zl!343)) (forall!14325 (exprs!4801 (h!67375 zl!343)) lambda!267441))))

(declare-fun bs!1225158 () Bool)

(assert (= bs!1225158 d!1700874))

(declare-fun m!6324518 () Bool)

(assert (=> bs!1225158 m!6324518))

(assert (=> b!5286145 d!1700874))

(declare-fun bs!1225159 () Bool)

(declare-fun d!1700876 () Bool)

(assert (= bs!1225159 (and d!1700876 d!1700860)))

(declare-fun lambda!267444 () Int)

(assert (=> bs!1225159 (= lambda!267444 lambda!267436)))

(declare-fun bs!1225160 () Bool)

(assert (= bs!1225160 (and d!1700876 d!1700848)))

(assert (=> bs!1225160 (= lambda!267444 lambda!267435)))

(declare-fun bs!1225161 () Bool)

(assert (= bs!1225161 (and d!1700876 d!1700872)))

(assert (=> bs!1225161 (= lambda!267444 lambda!267440)))

(declare-fun bs!1225162 () Bool)

(assert (= bs!1225162 (and d!1700876 d!1700874)))

(assert (=> bs!1225162 (= lambda!267444 lambda!267441)))

(declare-fun bs!1225163 () Bool)

(assert (= bs!1225163 (and d!1700876 b!5286143)))

(assert (=> bs!1225163 (= lambda!267444 lambda!267349)))

(declare-fun bs!1225164 () Bool)

(assert (= bs!1225164 (and d!1700876 d!1700764)))

(assert (=> bs!1225164 (= lambda!267444 lambda!267396)))

(declare-fun b!5286981 () Bool)

(declare-fun e!3287003 () Bool)

(declare-fun lt!2160809 () Regex!14917)

(declare-fun isEmptyLang!849 (Regex!14917) Bool)

(assert (=> b!5286981 (= e!3287003 (isEmptyLang!849 lt!2160809))))

(declare-fun e!3287006 () Bool)

(assert (=> d!1700876 e!3287006))

(declare-fun res!2242335 () Bool)

(assert (=> d!1700876 (=> (not res!2242335) (not e!3287006))))

(assert (=> d!1700876 (= res!2242335 (validRegex!6653 lt!2160809))))

(declare-fun e!3287004 () Regex!14917)

(assert (=> d!1700876 (= lt!2160809 e!3287004)))

(declare-fun c!916867 () Bool)

(declare-fun e!3287007 () Bool)

(assert (=> d!1700876 (= c!916867 e!3287007)))

(declare-fun res!2242336 () Bool)

(assert (=> d!1700876 (=> (not res!2242336) (not e!3287007))))

(assert (=> d!1700876 (= res!2242336 ((_ is Cons!60926) (unfocusZipperList!359 zl!343)))))

(assert (=> d!1700876 (forall!14325 (unfocusZipperList!359 zl!343) lambda!267444)))

(assert (=> d!1700876 (= (generalisedUnion!846 (unfocusZipperList!359 zl!343)) lt!2160809)))

(declare-fun b!5286982 () Bool)

(declare-fun e!3287005 () Bool)

(declare-fun isUnion!281 (Regex!14917) Bool)

(assert (=> b!5286982 (= e!3287005 (isUnion!281 lt!2160809))))

(declare-fun b!5286983 () Bool)

(assert (=> b!5286983 (= e!3287005 (= lt!2160809 (head!11331 (unfocusZipperList!359 zl!343))))))

(declare-fun b!5286984 () Bool)

(assert (=> b!5286984 (= e!3287006 e!3287003)))

(declare-fun c!916866 () Bool)

(assert (=> b!5286984 (= c!916866 (isEmpty!32879 (unfocusZipperList!359 zl!343)))))

(declare-fun b!5286985 () Bool)

(declare-fun e!3287008 () Regex!14917)

(assert (=> b!5286985 (= e!3287008 EmptyLang!14917)))

(declare-fun b!5286986 () Bool)

(assert (=> b!5286986 (= e!3287008 (Union!14917 (h!67374 (unfocusZipperList!359 zl!343)) (generalisedUnion!846 (t!374253 (unfocusZipperList!359 zl!343)))))))

(declare-fun b!5286987 () Bool)

(assert (=> b!5286987 (= e!3287007 (isEmpty!32879 (t!374253 (unfocusZipperList!359 zl!343))))))

(declare-fun b!5286988 () Bool)

(assert (=> b!5286988 (= e!3287004 e!3287008)))

(declare-fun c!916869 () Bool)

(assert (=> b!5286988 (= c!916869 ((_ is Cons!60926) (unfocusZipperList!359 zl!343)))))

(declare-fun b!5286989 () Bool)

(assert (=> b!5286989 (= e!3287003 e!3287005)))

(declare-fun c!916868 () Bool)

(assert (=> b!5286989 (= c!916868 (isEmpty!32879 (tail!10428 (unfocusZipperList!359 zl!343))))))

(declare-fun b!5286990 () Bool)

(assert (=> b!5286990 (= e!3287004 (h!67374 (unfocusZipperList!359 zl!343)))))

(assert (= (and d!1700876 res!2242336) b!5286987))

(assert (= (and d!1700876 c!916867) b!5286990))

(assert (= (and d!1700876 (not c!916867)) b!5286988))

(assert (= (and b!5286988 c!916869) b!5286986))

(assert (= (and b!5286988 (not c!916869)) b!5286985))

(assert (= (and d!1700876 res!2242335) b!5286984))

(assert (= (and b!5286984 c!916866) b!5286981))

(assert (= (and b!5286984 (not c!916866)) b!5286989))

(assert (= (and b!5286989 c!916868) b!5286983))

(assert (= (and b!5286989 (not c!916868)) b!5286982))

(declare-fun m!6324520 () Bool)

(assert (=> b!5286987 m!6324520))

(declare-fun m!6324522 () Bool)

(assert (=> b!5286986 m!6324522))

(declare-fun m!6324524 () Bool)

(assert (=> b!5286982 m!6324524))

(declare-fun m!6324526 () Bool)

(assert (=> b!5286981 m!6324526))

(declare-fun m!6324528 () Bool)

(assert (=> d!1700876 m!6324528))

(assert (=> d!1700876 m!6323774))

(declare-fun m!6324530 () Bool)

(assert (=> d!1700876 m!6324530))

(assert (=> b!5286983 m!6323774))

(declare-fun m!6324532 () Bool)

(assert (=> b!5286983 m!6324532))

(assert (=> b!5286989 m!6323774))

(declare-fun m!6324534 () Bool)

(assert (=> b!5286989 m!6324534))

(assert (=> b!5286989 m!6324534))

(declare-fun m!6324536 () Bool)

(assert (=> b!5286989 m!6324536))

(assert (=> b!5286984 m!6323774))

(declare-fun m!6324538 () Bool)

(assert (=> b!5286984 m!6324538))

(assert (=> b!5286146 d!1700876))

(declare-fun bs!1225165 () Bool)

(declare-fun d!1700878 () Bool)

(assert (= bs!1225165 (and d!1700878 d!1700860)))

(declare-fun lambda!267447 () Int)

(assert (=> bs!1225165 (= lambda!267447 lambda!267436)))

(declare-fun bs!1225166 () Bool)

(assert (= bs!1225166 (and d!1700878 d!1700848)))

(assert (=> bs!1225166 (= lambda!267447 lambda!267435)))

(declare-fun bs!1225167 () Bool)

(assert (= bs!1225167 (and d!1700878 d!1700876)))

(assert (=> bs!1225167 (= lambda!267447 lambda!267444)))

(declare-fun bs!1225168 () Bool)

(assert (= bs!1225168 (and d!1700878 d!1700872)))

(assert (=> bs!1225168 (= lambda!267447 lambda!267440)))

(declare-fun bs!1225169 () Bool)

(assert (= bs!1225169 (and d!1700878 d!1700874)))

(assert (=> bs!1225169 (= lambda!267447 lambda!267441)))

(declare-fun bs!1225170 () Bool)

(assert (= bs!1225170 (and d!1700878 b!5286143)))

(assert (=> bs!1225170 (= lambda!267447 lambda!267349)))

(declare-fun bs!1225171 () Bool)

(assert (= bs!1225171 (and d!1700878 d!1700764)))

(assert (=> bs!1225171 (= lambda!267447 lambda!267396)))

(declare-fun lt!2160812 () List!61050)

(assert (=> d!1700878 (forall!14325 lt!2160812 lambda!267447)))

(declare-fun e!3287011 () List!61050)

(assert (=> d!1700878 (= lt!2160812 e!3287011)))

(declare-fun c!916872 () Bool)

(assert (=> d!1700878 (= c!916872 ((_ is Cons!60927) zl!343))))

(assert (=> d!1700878 (= (unfocusZipperList!359 zl!343) lt!2160812)))

(declare-fun b!5286995 () Bool)

(assert (=> b!5286995 (= e!3287011 (Cons!60926 (generalisedConcat!586 (exprs!4801 (h!67375 zl!343))) (unfocusZipperList!359 (t!374254 zl!343))))))

(declare-fun b!5286996 () Bool)

(assert (=> b!5286996 (= e!3287011 Nil!60926)))

(assert (= (and d!1700878 c!916872) b!5286995))

(assert (= (and d!1700878 (not c!916872)) b!5286996))

(declare-fun m!6324540 () Bool)

(assert (=> d!1700878 m!6324540))

(assert (=> b!5286995 m!6323790))

(declare-fun m!6324542 () Bool)

(assert (=> b!5286995 m!6324542))

(assert (=> b!5286146 d!1700878))

(declare-fun d!1700880 () Bool)

(declare-fun dynLambda!24089 (Int Context!8602) (InoxSet Context!8602))

(assert (=> d!1700880 (= (flatMap!644 z!1189 lambda!267346) (dynLambda!24089 lambda!267346 (h!67375 zl!343)))))

(declare-fun lt!2160815 () Unit!153186)

(declare-fun choose!39476 ((InoxSet Context!8602) Context!8602 Int) Unit!153186)

(assert (=> d!1700880 (= lt!2160815 (choose!39476 z!1189 (h!67375 zl!343) lambda!267346))))

(assert (=> d!1700880 (= z!1189 (store ((as const (Array Context!8602 Bool)) false) (h!67375 zl!343) true))))

(assert (=> d!1700880 (= (lemmaFlatMapOnSingletonSet!176 z!1189 (h!67375 zl!343) lambda!267346) lt!2160815)))

(declare-fun b_lambda!203903 () Bool)

(assert (=> (not b_lambda!203903) (not d!1700880)))

(declare-fun bs!1225172 () Bool)

(assert (= bs!1225172 d!1700880))

(assert (=> bs!1225172 m!6323726))

(declare-fun m!6324544 () Bool)

(assert (=> bs!1225172 m!6324544))

(declare-fun m!6324546 () Bool)

(assert (=> bs!1225172 m!6324546))

(declare-fun m!6324548 () Bool)

(assert (=> bs!1225172 m!6324548))

(assert (=> b!5286144 d!1700880))

(declare-fun d!1700882 () Bool)

(declare-fun nullableFct!1458 (Regex!14917) Bool)

(assert (=> d!1700882 (= (nullable!5086 (h!67374 (exprs!4801 (h!67375 zl!343)))) (nullableFct!1458 (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun bs!1225173 () Bool)

(assert (= bs!1225173 d!1700882))

(declare-fun m!6324550 () Bool)

(assert (=> bs!1225173 m!6324550))

(assert (=> b!5286144 d!1700882))

(declare-fun b!5287007 () Bool)

(declare-fun e!3287020 () (InoxSet Context!8602))

(declare-fun call!376568 () (InoxSet Context!8602))

(assert (=> b!5287007 (= e!3287020 call!376568)))

(declare-fun d!1700884 () Bool)

(declare-fun c!916878 () Bool)

(declare-fun e!3287019 () Bool)

(assert (=> d!1700884 (= c!916878 e!3287019)))

(declare-fun res!2242339 () Bool)

(assert (=> d!1700884 (=> (not res!2242339) (not e!3287019))))

(assert (=> d!1700884 (= res!2242339 ((_ is Cons!60926) (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343))))))))))

(declare-fun e!3287018 () (InoxSet Context!8602))

(assert (=> d!1700884 (= (derivationStepZipperUp!289 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343))))) (h!67376 s!2326)) e!3287018)))

(declare-fun b!5287008 () Bool)

(assert (=> b!5287008 (= e!3287020 ((as const (Array Context!8602 Bool)) false))))

(declare-fun b!5287009 () Bool)

(assert (=> b!5287009 (= e!3287019 (nullable!5086 (h!67374 (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343)))))))))))

(declare-fun b!5287010 () Bool)

(assert (=> b!5287010 (= e!3287018 e!3287020)))

(declare-fun c!916877 () Bool)

(assert (=> b!5287010 (= c!916877 ((_ is Cons!60926) (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343))))))))))

(declare-fun b!5287011 () Bool)

(assert (=> b!5287011 (= e!3287018 ((_ map or) call!376568 (derivationStepZipperUp!289 (Context!8603 (t!374253 (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343)))))))) (h!67376 s!2326))))))

(declare-fun bm!376563 () Bool)

(assert (=> bm!376563 (= call!376568 (derivationStepZipperDown!365 (h!67374 (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343))))))) (Context!8603 (t!374253 (exprs!4801 (Context!8603 (Cons!60926 (h!67374 (exprs!4801 (h!67375 zl!343))) (t!374253 (exprs!4801 (h!67375 zl!343)))))))) (h!67376 s!2326)))))

(assert (= (and d!1700884 res!2242339) b!5287009))

(assert (= (and d!1700884 c!916878) b!5287011))

(assert (= (and d!1700884 (not c!916878)) b!5287010))

(assert (= (and b!5287010 c!916877) b!5287007))

(assert (= (and b!5287010 (not c!916877)) b!5287008))

(assert (= (or b!5287011 b!5287007) bm!376563))

(declare-fun m!6324552 () Bool)

(assert (=> b!5287009 m!6324552))

(declare-fun m!6324554 () Bool)

(assert (=> b!5287011 m!6324554))

(declare-fun m!6324556 () Bool)

(assert (=> bm!376563 m!6324556))

(assert (=> b!5286144 d!1700884))

(declare-fun b!5287012 () Bool)

(declare-fun e!3287023 () (InoxSet Context!8602))

(declare-fun call!376569 () (InoxSet Context!8602))

(assert (=> b!5287012 (= e!3287023 call!376569)))

(declare-fun d!1700886 () Bool)

(declare-fun c!916880 () Bool)

(declare-fun e!3287022 () Bool)

(assert (=> d!1700886 (= c!916880 e!3287022)))

(declare-fun res!2242340 () Bool)

(assert (=> d!1700886 (=> (not res!2242340) (not e!3287022))))

(assert (=> d!1700886 (= res!2242340 ((_ is Cons!60926) (exprs!4801 lt!2160634)))))

(declare-fun e!3287021 () (InoxSet Context!8602))

(assert (=> d!1700886 (= (derivationStepZipperUp!289 lt!2160634 (h!67376 s!2326)) e!3287021)))

(declare-fun b!5287013 () Bool)

(assert (=> b!5287013 (= e!3287023 ((as const (Array Context!8602 Bool)) false))))

(declare-fun b!5287014 () Bool)

(assert (=> b!5287014 (= e!3287022 (nullable!5086 (h!67374 (exprs!4801 lt!2160634))))))

(declare-fun b!5287015 () Bool)

(assert (=> b!5287015 (= e!3287021 e!3287023)))

(declare-fun c!916879 () Bool)

(assert (=> b!5287015 (= c!916879 ((_ is Cons!60926) (exprs!4801 lt!2160634)))))

(declare-fun b!5287016 () Bool)

(assert (=> b!5287016 (= e!3287021 ((_ map or) call!376569 (derivationStepZipperUp!289 (Context!8603 (t!374253 (exprs!4801 lt!2160634))) (h!67376 s!2326))))))

(declare-fun bm!376564 () Bool)

(assert (=> bm!376564 (= call!376569 (derivationStepZipperDown!365 (h!67374 (exprs!4801 lt!2160634)) (Context!8603 (t!374253 (exprs!4801 lt!2160634))) (h!67376 s!2326)))))

(assert (= (and d!1700886 res!2242340) b!5287014))

(assert (= (and d!1700886 c!916880) b!5287016))

(assert (= (and d!1700886 (not c!916880)) b!5287015))

(assert (= (and b!5287015 c!916879) b!5287012))

(assert (= (and b!5287015 (not c!916879)) b!5287013))

(assert (= (or b!5287016 b!5287012) bm!376564))

(declare-fun m!6324558 () Bool)

(assert (=> b!5287014 m!6324558))

(declare-fun m!6324560 () Bool)

(assert (=> b!5287016 m!6324560))

(declare-fun m!6324562 () Bool)

(assert (=> bm!376564 m!6324562))

(assert (=> b!5286144 d!1700886))

(declare-fun b!5287039 () Bool)

(declare-fun e!3287040 () (InoxSet Context!8602))

(declare-fun call!376587 () (InoxSet Context!8602))

(declare-fun call!376585 () (InoxSet Context!8602))

(assert (=> b!5287039 (= e!3287040 ((_ map or) call!376587 call!376585))))

(declare-fun b!5287040 () Bool)

(declare-fun e!3287039 () (InoxSet Context!8602))

(declare-fun e!3287038 () (InoxSet Context!8602))

(assert (=> b!5287040 (= e!3287039 e!3287038)))

(declare-fun c!916892 () Bool)

(assert (=> b!5287040 (= c!916892 ((_ is Union!14917) (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun bm!376577 () Bool)

(declare-fun call!376586 () List!61050)

(declare-fun call!376582 () List!61050)

(assert (=> bm!376577 (= call!376586 call!376582)))

(declare-fun bm!376578 () Bool)

(assert (=> bm!376578 (= call!376587 (derivationStepZipperDown!365 (ite c!916892 (regOne!30347 (h!67374 (exprs!4801 (h!67375 zl!343)))) (regOne!30346 (h!67374 (exprs!4801 (h!67375 zl!343))))) (ite c!916892 lt!2160634 (Context!8603 call!376582)) (h!67376 s!2326)))))

(declare-fun b!5287041 () Bool)

(assert (=> b!5287041 (= e!3287039 (store ((as const (Array Context!8602 Bool)) false) lt!2160634 true))))

(declare-fun b!5287042 () Bool)

(declare-fun c!916891 () Bool)

(assert (=> b!5287042 (= c!916891 ((_ is Star!14917) (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun e!3287037 () (InoxSet Context!8602))

(declare-fun e!3287036 () (InoxSet Context!8602))

(assert (=> b!5287042 (= e!3287037 e!3287036)))

(declare-fun b!5287043 () Bool)

(declare-fun call!376584 () (InoxSet Context!8602))

(assert (=> b!5287043 (= e!3287036 call!376584)))

(declare-fun b!5287044 () Bool)

(assert (=> b!5287044 (= e!3287037 call!376584)))

(declare-fun bm!376580 () Bool)

(assert (=> bm!376580 (= call!376584 call!376585)))

(declare-fun b!5287045 () Bool)

(declare-fun c!916894 () Bool)

(declare-fun e!3287041 () Bool)

(assert (=> b!5287045 (= c!916894 e!3287041)))

(declare-fun res!2242343 () Bool)

(assert (=> b!5287045 (=> (not res!2242343) (not e!3287041))))

(assert (=> b!5287045 (= res!2242343 ((_ is Concat!23762) (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(assert (=> b!5287045 (= e!3287038 e!3287040)))

(declare-fun c!916893 () Bool)

(declare-fun bm!376581 () Bool)

(declare-fun $colon$colon!1356 (List!61050 Regex!14917) List!61050)

(assert (=> bm!376581 (= call!376582 ($colon$colon!1356 (exprs!4801 lt!2160634) (ite (or c!916894 c!916893) (regTwo!30346 (h!67374 (exprs!4801 (h!67375 zl!343)))) (h!67374 (exprs!4801 (h!67375 zl!343))))))))

(declare-fun b!5287046 () Bool)

(assert (=> b!5287046 (= e!3287036 ((as const (Array Context!8602 Bool)) false))))

(declare-fun bm!376582 () Bool)

(declare-fun call!376583 () (InoxSet Context!8602))

(assert (=> bm!376582 (= call!376583 (derivationStepZipperDown!365 (ite c!916892 (regTwo!30347 (h!67374 (exprs!4801 (h!67375 zl!343)))) (ite c!916894 (regTwo!30346 (h!67374 (exprs!4801 (h!67375 zl!343)))) (ite c!916893 (regOne!30346 (h!67374 (exprs!4801 (h!67375 zl!343)))) (reg!15246 (h!67374 (exprs!4801 (h!67375 zl!343))))))) (ite (or c!916892 c!916894) lt!2160634 (Context!8603 call!376586)) (h!67376 s!2326)))))

(declare-fun b!5287047 () Bool)

(assert (=> b!5287047 (= e!3287041 (nullable!5086 (regOne!30346 (h!67374 (exprs!4801 (h!67375 zl!343))))))))

(declare-fun b!5287048 () Bool)

(assert (=> b!5287048 (= e!3287038 ((_ map or) call!376587 call!376583))))

(declare-fun b!5287049 () Bool)

(assert (=> b!5287049 (= e!3287040 e!3287037)))

(assert (=> b!5287049 (= c!916893 ((_ is Concat!23762) (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun bm!376579 () Bool)

(assert (=> bm!376579 (= call!376585 call!376583)))

(declare-fun d!1700888 () Bool)

(declare-fun c!916895 () Bool)

(assert (=> d!1700888 (= c!916895 (and ((_ is ElementMatch!14917) (h!67374 (exprs!4801 (h!67375 zl!343)))) (= (c!916617 (h!67374 (exprs!4801 (h!67375 zl!343)))) (h!67376 s!2326))))))

(assert (=> d!1700888 (= (derivationStepZipperDown!365 (h!67374 (exprs!4801 (h!67375 zl!343))) lt!2160634 (h!67376 s!2326)) e!3287039)))

(assert (= (and d!1700888 c!916895) b!5287041))

(assert (= (and d!1700888 (not c!916895)) b!5287040))

(assert (= (and b!5287040 c!916892) b!5287048))

(assert (= (and b!5287040 (not c!916892)) b!5287045))

(assert (= (and b!5287045 res!2242343) b!5287047))

(assert (= (and b!5287045 c!916894) b!5287039))

(assert (= (and b!5287045 (not c!916894)) b!5287049))

(assert (= (and b!5287049 c!916893) b!5287044))

(assert (= (and b!5287049 (not c!916893)) b!5287042))

(assert (= (and b!5287042 c!916891) b!5287043))

(assert (= (and b!5287042 (not c!916891)) b!5287046))

(assert (= (or b!5287044 b!5287043) bm!376577))

(assert (= (or b!5287044 b!5287043) bm!376580))

(assert (= (or b!5287039 bm!376577) bm!376581))

(assert (= (or b!5287039 bm!376580) bm!376579))

(assert (= (or b!5287048 bm!376579) bm!376582))

(assert (= (or b!5287048 b!5287039) bm!376578))

(declare-fun m!6324564 () Bool)

(assert (=> bm!376582 m!6324564))

(declare-fun m!6324566 () Bool)

(assert (=> b!5287041 m!6324566))

(declare-fun m!6324568 () Bool)

(assert (=> b!5287047 m!6324568))

(declare-fun m!6324570 () Bool)

(assert (=> bm!376578 m!6324570))

(declare-fun m!6324572 () Bool)

(assert (=> bm!376581 m!6324572))

(assert (=> b!5286144 d!1700888))

(declare-fun d!1700890 () Bool)

(declare-fun choose!39477 ((InoxSet Context!8602) Int) (InoxSet Context!8602))

(assert (=> d!1700890 (= (flatMap!644 z!1189 lambda!267346) (choose!39477 z!1189 lambda!267346))))

(declare-fun bs!1225174 () Bool)

(assert (= bs!1225174 d!1700890))

(declare-fun m!6324574 () Bool)

(assert (=> bs!1225174 m!6324574))

(assert (=> b!5286144 d!1700890))

(declare-fun b!5287050 () Bool)

(declare-fun e!3287044 () (InoxSet Context!8602))

(declare-fun call!376588 () (InoxSet Context!8602))

(assert (=> b!5287050 (= e!3287044 call!376588)))

(declare-fun d!1700892 () Bool)

(declare-fun c!916897 () Bool)

(declare-fun e!3287043 () Bool)

(assert (=> d!1700892 (= c!916897 e!3287043)))

(declare-fun res!2242344 () Bool)

(assert (=> d!1700892 (=> (not res!2242344) (not e!3287043))))

(assert (=> d!1700892 (= res!2242344 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343))))))

(declare-fun e!3287042 () (InoxSet Context!8602))

(assert (=> d!1700892 (= (derivationStepZipperUp!289 (h!67375 zl!343) (h!67376 s!2326)) e!3287042)))

(declare-fun b!5287051 () Bool)

(assert (=> b!5287051 (= e!3287044 ((as const (Array Context!8602 Bool)) false))))

(declare-fun b!5287052 () Bool)

(assert (=> b!5287052 (= e!3287043 (nullable!5086 (h!67374 (exprs!4801 (h!67375 zl!343)))))))

(declare-fun b!5287053 () Bool)

(assert (=> b!5287053 (= e!3287042 e!3287044)))

(declare-fun c!916896 () Bool)

(assert (=> b!5287053 (= c!916896 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343))))))

(declare-fun b!5287054 () Bool)

(assert (=> b!5287054 (= e!3287042 ((_ map or) call!376588 (derivationStepZipperUp!289 (Context!8603 (t!374253 (exprs!4801 (h!67375 zl!343)))) (h!67376 s!2326))))))

(declare-fun bm!376583 () Bool)

(assert (=> bm!376583 (= call!376588 (derivationStepZipperDown!365 (h!67374 (exprs!4801 (h!67375 zl!343))) (Context!8603 (t!374253 (exprs!4801 (h!67375 zl!343)))) (h!67376 s!2326)))))

(assert (= (and d!1700892 res!2242344) b!5287052))

(assert (= (and d!1700892 c!916897) b!5287054))

(assert (= (and d!1700892 (not c!916897)) b!5287053))

(assert (= (and b!5287053 c!916896) b!5287050))

(assert (= (and b!5287053 (not c!916896)) b!5287051))

(assert (= (or b!5287054 b!5287050) bm!376583))

(assert (=> b!5287052 m!6323720))

(declare-fun m!6324576 () Bool)

(assert (=> b!5287054 m!6324576))

(declare-fun m!6324578 () Bool)

(assert (=> bm!376583 m!6324578))

(assert (=> b!5286144 d!1700892))

(declare-fun d!1700894 () Bool)

(declare-fun lt!2160818 () Int)

(assert (=> d!1700894 (>= lt!2160818 0)))

(declare-fun e!3287047 () Int)

(assert (=> d!1700894 (= lt!2160818 e!3287047)))

(declare-fun c!916900 () Bool)

(assert (=> d!1700894 (= c!916900 ((_ is Cons!60927) lt!2160626))))

(assert (=> d!1700894 (= (zipperDepthTotal!78 lt!2160626) lt!2160818)))

(declare-fun b!5287059 () Bool)

(assert (=> b!5287059 (= e!3287047 (+ (contextDepthTotal!58 (h!67375 lt!2160626)) (zipperDepthTotal!78 (t!374254 lt!2160626))))))

(declare-fun b!5287060 () Bool)

(assert (=> b!5287060 (= e!3287047 0)))

(assert (= (and d!1700894 c!916900) b!5287059))

(assert (= (and d!1700894 (not c!916900)) b!5287060))

(declare-fun m!6324580 () Bool)

(assert (=> b!5287059 m!6324580))

(declare-fun m!6324582 () Bool)

(assert (=> b!5287059 m!6324582))

(assert (=> b!5286148 d!1700894))

(declare-fun d!1700896 () Bool)

(declare-fun lt!2160819 () Int)

(assert (=> d!1700896 (>= lt!2160819 0)))

(declare-fun e!3287048 () Int)

(assert (=> d!1700896 (= lt!2160819 e!3287048)))

(declare-fun c!916901 () Bool)

(assert (=> d!1700896 (= c!916901 ((_ is Cons!60927) zl!343))))

(assert (=> d!1700896 (= (zipperDepthTotal!78 zl!343) lt!2160819)))

(declare-fun b!5287061 () Bool)

(assert (=> b!5287061 (= e!3287048 (+ (contextDepthTotal!58 (h!67375 zl!343)) (zipperDepthTotal!78 (t!374254 zl!343))))))

(declare-fun b!5287062 () Bool)

(assert (=> b!5287062 (= e!3287048 0)))

(assert (= (and d!1700896 c!916901) b!5287061))

(assert (= (and d!1700896 (not c!916901)) b!5287062))

(assert (=> b!5287061 m!6323802))

(declare-fun m!6324584 () Bool)

(assert (=> b!5287061 m!6324584))

(assert (=> b!5286148 d!1700896))

(declare-fun b!5287063 () Bool)

(declare-fun e!3287053 () (InoxSet Context!8602))

(declare-fun call!376594 () (InoxSet Context!8602))

(declare-fun call!376592 () (InoxSet Context!8602))

(assert (=> b!5287063 (= e!3287053 ((_ map or) call!376594 call!376592))))

(declare-fun b!5287064 () Bool)

(declare-fun e!3287052 () (InoxSet Context!8602))

(declare-fun e!3287051 () (InoxSet Context!8602))

(assert (=> b!5287064 (= e!3287052 e!3287051)))

(declare-fun c!916903 () Bool)

(assert (=> b!5287064 (= c!916903 ((_ is Union!14917) (regTwo!30346 (regOne!30346 r!7292))))))

(declare-fun bm!376584 () Bool)

(declare-fun call!376593 () List!61050)

(declare-fun call!376589 () List!61050)

(assert (=> bm!376584 (= call!376593 call!376589)))

(declare-fun bm!376585 () Bool)

(assert (=> bm!376585 (= call!376594 (derivationStepZipperDown!365 (ite c!916903 (regOne!30347 (regTwo!30346 (regOne!30346 r!7292))) (regOne!30346 (regTwo!30346 (regOne!30346 r!7292)))) (ite c!916903 lt!2160634 (Context!8603 call!376589)) (h!67376 s!2326)))))

(declare-fun b!5287065 () Bool)

(assert (=> b!5287065 (= e!3287052 (store ((as const (Array Context!8602 Bool)) false) lt!2160634 true))))

(declare-fun b!5287066 () Bool)

(declare-fun c!916902 () Bool)

(assert (=> b!5287066 (= c!916902 ((_ is Star!14917) (regTwo!30346 (regOne!30346 r!7292))))))

(declare-fun e!3287050 () (InoxSet Context!8602))

(declare-fun e!3287049 () (InoxSet Context!8602))

(assert (=> b!5287066 (= e!3287050 e!3287049)))

(declare-fun b!5287067 () Bool)

(declare-fun call!376591 () (InoxSet Context!8602))

(assert (=> b!5287067 (= e!3287049 call!376591)))

(declare-fun b!5287068 () Bool)

(assert (=> b!5287068 (= e!3287050 call!376591)))

(declare-fun bm!376587 () Bool)

(assert (=> bm!376587 (= call!376591 call!376592)))

(declare-fun b!5287069 () Bool)

(declare-fun c!916905 () Bool)

(declare-fun e!3287054 () Bool)

(assert (=> b!5287069 (= c!916905 e!3287054)))

(declare-fun res!2242345 () Bool)

(assert (=> b!5287069 (=> (not res!2242345) (not e!3287054))))

(assert (=> b!5287069 (= res!2242345 ((_ is Concat!23762) (regTwo!30346 (regOne!30346 r!7292))))))

(assert (=> b!5287069 (= e!3287051 e!3287053)))

(declare-fun bm!376588 () Bool)

(declare-fun c!916904 () Bool)

(assert (=> bm!376588 (= call!376589 ($colon$colon!1356 (exprs!4801 lt!2160634) (ite (or c!916905 c!916904) (regTwo!30346 (regTwo!30346 (regOne!30346 r!7292))) (regTwo!30346 (regOne!30346 r!7292)))))))

(declare-fun b!5287070 () Bool)

(assert (=> b!5287070 (= e!3287049 ((as const (Array Context!8602 Bool)) false))))

(declare-fun call!376590 () (InoxSet Context!8602))

(declare-fun bm!376589 () Bool)

(assert (=> bm!376589 (= call!376590 (derivationStepZipperDown!365 (ite c!916903 (regTwo!30347 (regTwo!30346 (regOne!30346 r!7292))) (ite c!916905 (regTwo!30346 (regTwo!30346 (regOne!30346 r!7292))) (ite c!916904 (regOne!30346 (regTwo!30346 (regOne!30346 r!7292))) (reg!15246 (regTwo!30346 (regOne!30346 r!7292)))))) (ite (or c!916903 c!916905) lt!2160634 (Context!8603 call!376593)) (h!67376 s!2326)))))

(declare-fun b!5287071 () Bool)

(assert (=> b!5287071 (= e!3287054 (nullable!5086 (regOne!30346 (regTwo!30346 (regOne!30346 r!7292)))))))

(declare-fun b!5287072 () Bool)

(assert (=> b!5287072 (= e!3287051 ((_ map or) call!376594 call!376590))))

(declare-fun b!5287073 () Bool)

(assert (=> b!5287073 (= e!3287053 e!3287050)))

(assert (=> b!5287073 (= c!916904 ((_ is Concat!23762) (regTwo!30346 (regOne!30346 r!7292))))))

(declare-fun bm!376586 () Bool)

(assert (=> bm!376586 (= call!376592 call!376590)))

(declare-fun d!1700898 () Bool)

(declare-fun c!916906 () Bool)

(assert (=> d!1700898 (= c!916906 (and ((_ is ElementMatch!14917) (regTwo!30346 (regOne!30346 r!7292))) (= (c!916617 (regTwo!30346 (regOne!30346 r!7292))) (h!67376 s!2326))))))

(assert (=> d!1700898 (= (derivationStepZipperDown!365 (regTwo!30346 (regOne!30346 r!7292)) lt!2160634 (h!67376 s!2326)) e!3287052)))

(assert (= (and d!1700898 c!916906) b!5287065))

(assert (= (and d!1700898 (not c!916906)) b!5287064))

(assert (= (and b!5287064 c!916903) b!5287072))

(assert (= (and b!5287064 (not c!916903)) b!5287069))

(assert (= (and b!5287069 res!2242345) b!5287071))

(assert (= (and b!5287069 c!916905) b!5287063))

(assert (= (and b!5287069 (not c!916905)) b!5287073))

(assert (= (and b!5287073 c!916904) b!5287068))

(assert (= (and b!5287073 (not c!916904)) b!5287066))

(assert (= (and b!5287066 c!916902) b!5287067))

(assert (= (and b!5287066 (not c!916902)) b!5287070))

(assert (= (or b!5287068 b!5287067) bm!376584))

(assert (= (or b!5287068 b!5287067) bm!376587))

(assert (= (or b!5287063 bm!376584) bm!376588))

(assert (= (or b!5287063 bm!376587) bm!376586))

(assert (= (or b!5287072 bm!376586) bm!376589))

(assert (= (or b!5287072 b!5287063) bm!376585))

(declare-fun m!6324586 () Bool)

(assert (=> bm!376589 m!6324586))

(assert (=> b!5287065 m!6324566))

(declare-fun m!6324588 () Bool)

(assert (=> b!5287071 m!6324588))

(declare-fun m!6324590 () Bool)

(assert (=> bm!376585 m!6324590))

(declare-fun m!6324592 () Bool)

(assert (=> bm!376588 m!6324592))

(assert (=> b!5286129 d!1700898))

(declare-fun b!5287074 () Bool)

(declare-fun e!3287059 () (InoxSet Context!8602))

(declare-fun call!376600 () (InoxSet Context!8602))

(declare-fun call!376598 () (InoxSet Context!8602))

(assert (=> b!5287074 (= e!3287059 ((_ map or) call!376600 call!376598))))

(declare-fun b!5287075 () Bool)

(declare-fun e!3287058 () (InoxSet Context!8602))

(declare-fun e!3287057 () (InoxSet Context!8602))

(assert (=> b!5287075 (= e!3287058 e!3287057)))

(declare-fun c!916908 () Bool)

(assert (=> b!5287075 (= c!916908 ((_ is Union!14917) (regOne!30346 (regOne!30346 r!7292))))))

(declare-fun bm!376590 () Bool)

(declare-fun call!376599 () List!61050)

(declare-fun call!376595 () List!61050)

(assert (=> bm!376590 (= call!376599 call!376595)))

(declare-fun bm!376591 () Bool)

(assert (=> bm!376591 (= call!376600 (derivationStepZipperDown!365 (ite c!916908 (regOne!30347 (regOne!30346 (regOne!30346 r!7292))) (regOne!30346 (regOne!30346 (regOne!30346 r!7292)))) (ite c!916908 lt!2160657 (Context!8603 call!376595)) (h!67376 s!2326)))))

(declare-fun b!5287076 () Bool)

(assert (=> b!5287076 (= e!3287058 (store ((as const (Array Context!8602 Bool)) false) lt!2160657 true))))

(declare-fun b!5287077 () Bool)

(declare-fun c!916907 () Bool)

(assert (=> b!5287077 (= c!916907 ((_ is Star!14917) (regOne!30346 (regOne!30346 r!7292))))))

(declare-fun e!3287056 () (InoxSet Context!8602))

(declare-fun e!3287055 () (InoxSet Context!8602))

(assert (=> b!5287077 (= e!3287056 e!3287055)))

(declare-fun b!5287078 () Bool)

(declare-fun call!376597 () (InoxSet Context!8602))

(assert (=> b!5287078 (= e!3287055 call!376597)))

(declare-fun b!5287079 () Bool)

(assert (=> b!5287079 (= e!3287056 call!376597)))

(declare-fun bm!376593 () Bool)

(assert (=> bm!376593 (= call!376597 call!376598)))

(declare-fun b!5287080 () Bool)

(declare-fun c!916910 () Bool)

(declare-fun e!3287060 () Bool)

(assert (=> b!5287080 (= c!916910 e!3287060)))

(declare-fun res!2242346 () Bool)

(assert (=> b!5287080 (=> (not res!2242346) (not e!3287060))))

(assert (=> b!5287080 (= res!2242346 ((_ is Concat!23762) (regOne!30346 (regOne!30346 r!7292))))))

(assert (=> b!5287080 (= e!3287057 e!3287059)))

(declare-fun c!916909 () Bool)

(declare-fun bm!376594 () Bool)

(assert (=> bm!376594 (= call!376595 ($colon$colon!1356 (exprs!4801 lt!2160657) (ite (or c!916910 c!916909) (regTwo!30346 (regOne!30346 (regOne!30346 r!7292))) (regOne!30346 (regOne!30346 r!7292)))))))

(declare-fun b!5287081 () Bool)

(assert (=> b!5287081 (= e!3287055 ((as const (Array Context!8602 Bool)) false))))

(declare-fun bm!376595 () Bool)

(declare-fun call!376596 () (InoxSet Context!8602))

(assert (=> bm!376595 (= call!376596 (derivationStepZipperDown!365 (ite c!916908 (regTwo!30347 (regOne!30346 (regOne!30346 r!7292))) (ite c!916910 (regTwo!30346 (regOne!30346 (regOne!30346 r!7292))) (ite c!916909 (regOne!30346 (regOne!30346 (regOne!30346 r!7292))) (reg!15246 (regOne!30346 (regOne!30346 r!7292)))))) (ite (or c!916908 c!916910) lt!2160657 (Context!8603 call!376599)) (h!67376 s!2326)))))

(declare-fun b!5287082 () Bool)

(assert (=> b!5287082 (= e!3287060 (nullable!5086 (regOne!30346 (regOne!30346 (regOne!30346 r!7292)))))))

(declare-fun b!5287083 () Bool)

(assert (=> b!5287083 (= e!3287057 ((_ map or) call!376600 call!376596))))

(declare-fun b!5287084 () Bool)

(assert (=> b!5287084 (= e!3287059 e!3287056)))

(assert (=> b!5287084 (= c!916909 ((_ is Concat!23762) (regOne!30346 (regOne!30346 r!7292))))))

(declare-fun bm!376592 () Bool)

(assert (=> bm!376592 (= call!376598 call!376596)))

(declare-fun d!1700900 () Bool)

(declare-fun c!916911 () Bool)

(assert (=> d!1700900 (= c!916911 (and ((_ is ElementMatch!14917) (regOne!30346 (regOne!30346 r!7292))) (= (c!916617 (regOne!30346 (regOne!30346 r!7292))) (h!67376 s!2326))))))

(assert (=> d!1700900 (= (derivationStepZipperDown!365 (regOne!30346 (regOne!30346 r!7292)) lt!2160657 (h!67376 s!2326)) e!3287058)))

(assert (= (and d!1700900 c!916911) b!5287076))

(assert (= (and d!1700900 (not c!916911)) b!5287075))

(assert (= (and b!5287075 c!916908) b!5287083))

(assert (= (and b!5287075 (not c!916908)) b!5287080))

(assert (= (and b!5287080 res!2242346) b!5287082))

(assert (= (and b!5287080 c!916910) b!5287074))

(assert (= (and b!5287080 (not c!916910)) b!5287084))

(assert (= (and b!5287084 c!916909) b!5287079))

(assert (= (and b!5287084 (not c!916909)) b!5287077))

(assert (= (and b!5287077 c!916907) b!5287078))

(assert (= (and b!5287077 (not c!916907)) b!5287081))

(assert (= (or b!5287079 b!5287078) bm!376590))

(assert (= (or b!5287079 b!5287078) bm!376593))

(assert (= (or b!5287074 bm!376590) bm!376594))

(assert (= (or b!5287074 bm!376593) bm!376592))

(assert (= (or b!5287083 bm!376592) bm!376595))

(assert (= (or b!5287083 b!5287074) bm!376591))

(declare-fun m!6324594 () Bool)

(assert (=> bm!376595 m!6324594))

(assert (=> b!5287076 m!6323702))

(declare-fun m!6324596 () Bool)

(assert (=> b!5287082 m!6324596))

(declare-fun m!6324598 () Bool)

(assert (=> bm!376591 m!6324598))

(declare-fun m!6324600 () Bool)

(assert (=> bm!376594 m!6324600))

(assert (=> b!5286129 d!1700900))

(declare-fun d!1700902 () Bool)

(assert (=> d!1700902 (= (nullable!5086 (regOne!30346 (regOne!30346 r!7292))) (nullableFct!1458 (regOne!30346 (regOne!30346 r!7292))))))

(declare-fun bs!1225175 () Bool)

(assert (= bs!1225175 d!1700902))

(declare-fun m!6324602 () Bool)

(assert (=> bs!1225175 m!6324602))

(assert (=> b!5286127 d!1700902))

(declare-fun d!1700904 () Bool)

(assert (=> d!1700904 (= (flatMap!644 lt!2160645 lambda!267346) (dynLambda!24089 lambda!267346 lt!2160653))))

(declare-fun lt!2160820 () Unit!153186)

(assert (=> d!1700904 (= lt!2160820 (choose!39476 lt!2160645 lt!2160653 lambda!267346))))

(assert (=> d!1700904 (= lt!2160645 (store ((as const (Array Context!8602 Bool)) false) lt!2160653 true))))

(assert (=> d!1700904 (= (lemmaFlatMapOnSingletonSet!176 lt!2160645 lt!2160653 lambda!267346) lt!2160820)))

(declare-fun b_lambda!203905 () Bool)

(assert (=> (not b_lambda!203905) (not d!1700904)))

(declare-fun bs!1225176 () Bool)

(assert (= bs!1225176 d!1700904))

(assert (=> bs!1225176 m!6323704))

(declare-fun m!6324604 () Bool)

(assert (=> bs!1225176 m!6324604))

(declare-fun m!6324606 () Bool)

(assert (=> bs!1225176 m!6324606))

(assert (=> bs!1225176 m!6323710))

(assert (=> b!5286128 d!1700904))

(declare-fun bs!1225177 () Bool)

(declare-fun d!1700906 () Bool)

(assert (= bs!1225177 (and d!1700906 b!5286144)))

(declare-fun lambda!267450 () Int)

(assert (=> bs!1225177 (= lambda!267450 lambda!267346)))

(assert (=> d!1700906 true))

(assert (=> d!1700906 (= (derivationStepZipper!1160 lt!2160645 (h!67376 s!2326)) (flatMap!644 lt!2160645 lambda!267450))))

(declare-fun bs!1225178 () Bool)

(assert (= bs!1225178 d!1700906))

(declare-fun m!6324608 () Bool)

(assert (=> bs!1225178 m!6324608))

(assert (=> b!5286128 d!1700906))

(declare-fun d!1700908 () Bool)

(assert (=> d!1700908 (= (flatMap!644 lt!2160645 lambda!267346) (choose!39477 lt!2160645 lambda!267346))))

(declare-fun bs!1225179 () Bool)

(assert (= bs!1225179 d!1700908))

(declare-fun m!6324610 () Bool)

(assert (=> bs!1225179 m!6324610))

(assert (=> b!5286128 d!1700908))

(declare-fun b!5287087 () Bool)

(declare-fun e!3287063 () (InoxSet Context!8602))

(declare-fun call!376601 () (InoxSet Context!8602))

(assert (=> b!5287087 (= e!3287063 call!376601)))

(declare-fun d!1700910 () Bool)

(declare-fun c!916915 () Bool)

(declare-fun e!3287062 () Bool)

(assert (=> d!1700910 (= c!916915 e!3287062)))

(declare-fun res!2242347 () Bool)

(assert (=> d!1700910 (=> (not res!2242347) (not e!3287062))))

(assert (=> d!1700910 (= res!2242347 ((_ is Cons!60926) (exprs!4801 lt!2160657)))))

(declare-fun e!3287061 () (InoxSet Context!8602))

(assert (=> d!1700910 (= (derivationStepZipperUp!289 lt!2160657 (h!67376 s!2326)) e!3287061)))

(declare-fun b!5287088 () Bool)

(assert (=> b!5287088 (= e!3287063 ((as const (Array Context!8602 Bool)) false))))

(declare-fun b!5287089 () Bool)

(assert (=> b!5287089 (= e!3287062 (nullable!5086 (h!67374 (exprs!4801 lt!2160657))))))

(declare-fun b!5287090 () Bool)

(assert (=> b!5287090 (= e!3287061 e!3287063)))

(declare-fun c!916914 () Bool)

(assert (=> b!5287090 (= c!916914 ((_ is Cons!60926) (exprs!4801 lt!2160657)))))

(declare-fun b!5287091 () Bool)

(assert (=> b!5287091 (= e!3287061 ((_ map or) call!376601 (derivationStepZipperUp!289 (Context!8603 (t!374253 (exprs!4801 lt!2160657))) (h!67376 s!2326))))))

(declare-fun bm!376596 () Bool)

(assert (=> bm!376596 (= call!376601 (derivationStepZipperDown!365 (h!67374 (exprs!4801 lt!2160657)) (Context!8603 (t!374253 (exprs!4801 lt!2160657))) (h!67376 s!2326)))))

(assert (= (and d!1700910 res!2242347) b!5287089))

(assert (= (and d!1700910 c!916915) b!5287091))

(assert (= (and d!1700910 (not c!916915)) b!5287090))

(assert (= (and b!5287090 c!916914) b!5287087))

(assert (= (and b!5287090 (not c!916914)) b!5287088))

(assert (= (or b!5287091 b!5287087) bm!376596))

(declare-fun m!6324612 () Bool)

(assert (=> b!5287089 m!6324612))

(declare-fun m!6324614 () Bool)

(assert (=> b!5287091 m!6324614))

(declare-fun m!6324616 () Bool)

(assert (=> bm!376596 m!6324616))

(assert (=> b!5286128 d!1700910))

(declare-fun b!5287092 () Bool)

(declare-fun e!3287066 () (InoxSet Context!8602))

(declare-fun call!376602 () (InoxSet Context!8602))

(assert (=> b!5287092 (= e!3287066 call!376602)))

(declare-fun d!1700912 () Bool)

(declare-fun c!916917 () Bool)

(declare-fun e!3287065 () Bool)

(assert (=> d!1700912 (= c!916917 e!3287065)))

(declare-fun res!2242348 () Bool)

(assert (=> d!1700912 (=> (not res!2242348) (not e!3287065))))

(assert (=> d!1700912 (= res!2242348 ((_ is Cons!60926) (exprs!4801 lt!2160653)))))

(declare-fun e!3287064 () (InoxSet Context!8602))

(assert (=> d!1700912 (= (derivationStepZipperUp!289 lt!2160653 (h!67376 s!2326)) e!3287064)))

(declare-fun b!5287093 () Bool)

(assert (=> b!5287093 (= e!3287066 ((as const (Array Context!8602 Bool)) false))))

(declare-fun b!5287094 () Bool)

(assert (=> b!5287094 (= e!3287065 (nullable!5086 (h!67374 (exprs!4801 lt!2160653))))))

(declare-fun b!5287095 () Bool)

(assert (=> b!5287095 (= e!3287064 e!3287066)))

(declare-fun c!916916 () Bool)

(assert (=> b!5287095 (= c!916916 ((_ is Cons!60926) (exprs!4801 lt!2160653)))))

(declare-fun b!5287096 () Bool)

(assert (=> b!5287096 (= e!3287064 ((_ map or) call!376602 (derivationStepZipperUp!289 (Context!8603 (t!374253 (exprs!4801 lt!2160653))) (h!67376 s!2326))))))

(declare-fun bm!376597 () Bool)

(assert (=> bm!376597 (= call!376602 (derivationStepZipperDown!365 (h!67374 (exprs!4801 lt!2160653)) (Context!8603 (t!374253 (exprs!4801 lt!2160653))) (h!67376 s!2326)))))

(assert (= (and d!1700912 res!2242348) b!5287094))

(assert (= (and d!1700912 c!916917) b!5287096))

(assert (= (and d!1700912 (not c!916917)) b!5287095))

(assert (= (and b!5287095 c!916916) b!5287092))

(assert (= (and b!5287095 (not c!916916)) b!5287093))

(assert (= (or b!5287096 b!5287092) bm!376597))

(declare-fun m!6324618 () Bool)

(assert (=> b!5287094 m!6324618))

(declare-fun m!6324620 () Bool)

(assert (=> b!5287096 m!6324620))

(declare-fun m!6324622 () Bool)

(assert (=> bm!376597 m!6324622))

(assert (=> b!5286128 d!1700912))

(declare-fun d!1700914 () Bool)

(assert (=> d!1700914 (= (flatMap!644 lt!2160654 lambda!267346) (dynLambda!24089 lambda!267346 lt!2160657))))

(declare-fun lt!2160821 () Unit!153186)

(assert (=> d!1700914 (= lt!2160821 (choose!39476 lt!2160654 lt!2160657 lambda!267346))))

(assert (=> d!1700914 (= lt!2160654 (store ((as const (Array Context!8602 Bool)) false) lt!2160657 true))))

(assert (=> d!1700914 (= (lemmaFlatMapOnSingletonSet!176 lt!2160654 lt!2160657 lambda!267346) lt!2160821)))

(declare-fun b_lambda!203907 () Bool)

(assert (=> (not b_lambda!203907) (not d!1700914)))

(declare-fun bs!1225180 () Bool)

(assert (= bs!1225180 d!1700914))

(assert (=> bs!1225180 m!6323738))

(declare-fun m!6324624 () Bool)

(assert (=> bs!1225180 m!6324624))

(declare-fun m!6324626 () Bool)

(assert (=> bs!1225180 m!6324626))

(assert (=> bs!1225180 m!6323702))

(assert (=> b!5286131 d!1700914))

(declare-fun d!1700916 () Bool)

(declare-fun c!916918 () Bool)

(assert (=> d!1700916 (= c!916918 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287067 () Bool)

(assert (=> d!1700916 (= (matchZipper!1161 lt!2160623 (t!374255 s!2326)) e!3287067)))

(declare-fun b!5287097 () Bool)

(assert (=> b!5287097 (= e!3287067 (nullableZipper!1306 lt!2160623))))

(declare-fun b!5287098 () Bool)

(assert (=> b!5287098 (= e!3287067 (matchZipper!1161 (derivationStepZipper!1160 lt!2160623 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700916 c!916918) b!5287097))

(assert (= (and d!1700916 (not c!916918)) b!5287098))

(assert (=> d!1700916 m!6324282))

(declare-fun m!6324628 () Bool)

(assert (=> b!5287097 m!6324628))

(assert (=> b!5287098 m!6324286))

(assert (=> b!5287098 m!6324286))

(declare-fun m!6324630 () Bool)

(assert (=> b!5287098 m!6324630))

(assert (=> b!5287098 m!6324290))

(assert (=> b!5287098 m!6324630))

(assert (=> b!5287098 m!6324290))

(declare-fun m!6324632 () Bool)

(assert (=> b!5287098 m!6324632))

(assert (=> b!5286131 d!1700916))

(assert (=> b!5286131 d!1700910))

(declare-fun d!1700918 () Bool)

(assert (=> d!1700918 (= (flatMap!644 lt!2160654 lambda!267346) (choose!39477 lt!2160654 lambda!267346))))

(declare-fun bs!1225181 () Bool)

(assert (= bs!1225181 d!1700918))

(declare-fun m!6324634 () Bool)

(assert (=> bs!1225181 m!6324634))

(assert (=> b!5286131 d!1700918))

(declare-fun d!1700920 () Bool)

(declare-fun e!3287070 () Bool)

(assert (=> d!1700920 (= (matchZipper!1161 ((_ map or) lt!2160620 lt!2160631) (t!374255 s!2326)) e!3287070)))

(declare-fun res!2242351 () Bool)

(assert (=> d!1700920 (=> res!2242351 e!3287070)))

(assert (=> d!1700920 (= res!2242351 (matchZipper!1161 lt!2160620 (t!374255 s!2326)))))

(declare-fun lt!2160824 () Unit!153186)

(declare-fun choose!39478 ((InoxSet Context!8602) (InoxSet Context!8602) List!61052) Unit!153186)

(assert (=> d!1700920 (= lt!2160824 (choose!39478 lt!2160620 lt!2160631 (t!374255 s!2326)))))

(assert (=> d!1700920 (= (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160620 lt!2160631 (t!374255 s!2326)) lt!2160824)))

(declare-fun b!5287101 () Bool)

(assert (=> b!5287101 (= e!3287070 (matchZipper!1161 lt!2160631 (t!374255 s!2326)))))

(assert (= (and d!1700920 (not res!2242351)) b!5287101))

(declare-fun m!6324636 () Bool)

(assert (=> d!1700920 m!6324636))

(assert (=> d!1700920 m!6323806))

(declare-fun m!6324638 () Bool)

(assert (=> d!1700920 m!6324638))

(assert (=> b!5287101 m!6323786))

(assert (=> b!5286131 d!1700920))

(declare-fun d!1700922 () Bool)

(declare-fun c!916919 () Bool)

(assert (=> d!1700922 (= c!916919 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287071 () Bool)

(assert (=> d!1700922 (= (matchZipper!1161 lt!2160649 (t!374255 s!2326)) e!3287071)))

(declare-fun b!5287102 () Bool)

(assert (=> b!5287102 (= e!3287071 (nullableZipper!1306 lt!2160649))))

(declare-fun b!5287103 () Bool)

(assert (=> b!5287103 (= e!3287071 (matchZipper!1161 (derivationStepZipper!1160 lt!2160649 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700922 c!916919) b!5287102))

(assert (= (and d!1700922 (not c!916919)) b!5287103))

(assert (=> d!1700922 m!6324282))

(declare-fun m!6324640 () Bool)

(assert (=> b!5287102 m!6324640))

(assert (=> b!5287103 m!6324286))

(assert (=> b!5287103 m!6324286))

(declare-fun m!6324642 () Bool)

(assert (=> b!5287103 m!6324642))

(assert (=> b!5287103 m!6324290))

(assert (=> b!5287103 m!6324642))

(assert (=> b!5287103 m!6324290))

(declare-fun m!6324644 () Bool)

(assert (=> b!5287103 m!6324644))

(assert (=> b!5286131 d!1700922))

(declare-fun d!1700924 () Bool)

(declare-fun c!916920 () Bool)

(assert (=> d!1700924 (= c!916920 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287072 () Bool)

(assert (=> d!1700924 (= (matchZipper!1161 (derivationStepZipper!1160 lt!2160654 (h!67376 s!2326)) (t!374255 s!2326)) e!3287072)))

(declare-fun b!5287104 () Bool)

(assert (=> b!5287104 (= e!3287072 (nullableZipper!1306 (derivationStepZipper!1160 lt!2160654 (h!67376 s!2326))))))

(declare-fun b!5287105 () Bool)

(assert (=> b!5287105 (= e!3287072 (matchZipper!1161 (derivationStepZipper!1160 (derivationStepZipper!1160 lt!2160654 (h!67376 s!2326)) (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700924 c!916920) b!5287104))

(assert (= (and d!1700924 (not c!916920)) b!5287105))

(assert (=> d!1700924 m!6324282))

(assert (=> b!5287104 m!6323760))

(declare-fun m!6324646 () Bool)

(assert (=> b!5287104 m!6324646))

(assert (=> b!5287105 m!6324286))

(assert (=> b!5287105 m!6323760))

(assert (=> b!5287105 m!6324286))

(declare-fun m!6324648 () Bool)

(assert (=> b!5287105 m!6324648))

(assert (=> b!5287105 m!6324290))

(assert (=> b!5287105 m!6324648))

(assert (=> b!5287105 m!6324290))

(declare-fun m!6324650 () Bool)

(assert (=> b!5287105 m!6324650))

(assert (=> b!5286132 d!1700924))

(declare-fun bs!1225182 () Bool)

(declare-fun d!1700926 () Bool)

(assert (= bs!1225182 (and d!1700926 b!5286144)))

(declare-fun lambda!267451 () Int)

(assert (=> bs!1225182 (= lambda!267451 lambda!267346)))

(declare-fun bs!1225183 () Bool)

(assert (= bs!1225183 (and d!1700926 d!1700906)))

(assert (=> bs!1225183 (= lambda!267451 lambda!267450)))

(assert (=> d!1700926 true))

(assert (=> d!1700926 (= (derivationStepZipper!1160 lt!2160654 (h!67376 s!2326)) (flatMap!644 lt!2160654 lambda!267451))))

(declare-fun bs!1225184 () Bool)

(assert (= bs!1225184 d!1700926))

(declare-fun m!6324652 () Bool)

(assert (=> bs!1225184 m!6324652))

(assert (=> b!5286132 d!1700926))

(declare-fun d!1700928 () Bool)

(declare-fun c!916921 () Bool)

(assert (=> d!1700928 (= c!916921 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287073 () Bool)

(assert (=> d!1700928 (= (matchZipper!1161 lt!2160625 (t!374255 s!2326)) e!3287073)))

(declare-fun b!5287106 () Bool)

(assert (=> b!5287106 (= e!3287073 (nullableZipper!1306 lt!2160625))))

(declare-fun b!5287107 () Bool)

(assert (=> b!5287107 (= e!3287073 (matchZipper!1161 (derivationStepZipper!1160 lt!2160625 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700928 c!916921) b!5287106))

(assert (= (and d!1700928 (not c!916921)) b!5287107))

(assert (=> d!1700928 m!6324282))

(declare-fun m!6324654 () Bool)

(assert (=> b!5287106 m!6324654))

(assert (=> b!5287107 m!6324286))

(assert (=> b!5287107 m!6324286))

(declare-fun m!6324656 () Bool)

(assert (=> b!5287107 m!6324656))

(assert (=> b!5287107 m!6324290))

(assert (=> b!5287107 m!6324656))

(assert (=> b!5287107 m!6324290))

(declare-fun m!6324658 () Bool)

(assert (=> b!5287107 m!6324658))

(assert (=> b!5286130 d!1700928))

(declare-fun d!1700930 () Bool)

(declare-fun c!916922 () Bool)

(assert (=> d!1700930 (= c!916922 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287074 () Bool)

(assert (=> d!1700930 (= (matchZipper!1161 lt!2160658 (t!374255 s!2326)) e!3287074)))

(declare-fun b!5287108 () Bool)

(assert (=> b!5287108 (= e!3287074 (nullableZipper!1306 lt!2160658))))

(declare-fun b!5287109 () Bool)

(assert (=> b!5287109 (= e!3287074 (matchZipper!1161 (derivationStepZipper!1160 lt!2160658 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700930 c!916922) b!5287108))

(assert (= (and d!1700930 (not c!916922)) b!5287109))

(assert (=> d!1700930 m!6324282))

(declare-fun m!6324660 () Bool)

(assert (=> b!5287108 m!6324660))

(assert (=> b!5287109 m!6324286))

(assert (=> b!5287109 m!6324286))

(declare-fun m!6324662 () Bool)

(assert (=> b!5287109 m!6324662))

(assert (=> b!5287109 m!6324290))

(assert (=> b!5287109 m!6324662))

(assert (=> b!5287109 m!6324290))

(declare-fun m!6324664 () Bool)

(assert (=> b!5287109 m!6324664))

(assert (=> b!5286130 d!1700930))

(declare-fun d!1700932 () Bool)

(declare-fun c!916923 () Bool)

(assert (=> d!1700932 (= c!916923 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287075 () Bool)

(assert (=> d!1700932 (= (matchZipper!1161 lt!2160620 (t!374255 s!2326)) e!3287075)))

(declare-fun b!5287110 () Bool)

(assert (=> b!5287110 (= e!3287075 (nullableZipper!1306 lt!2160620))))

(declare-fun b!5287111 () Bool)

(assert (=> b!5287111 (= e!3287075 (matchZipper!1161 (derivationStepZipper!1160 lt!2160620 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700932 c!916923) b!5287110))

(assert (= (and d!1700932 (not c!916923)) b!5287111))

(assert (=> d!1700932 m!6324282))

(declare-fun m!6324666 () Bool)

(assert (=> b!5287110 m!6324666))

(assert (=> b!5287111 m!6324286))

(assert (=> b!5287111 m!6324286))

(declare-fun m!6324668 () Bool)

(assert (=> b!5287111 m!6324668))

(assert (=> b!5287111 m!6324290))

(assert (=> b!5287111 m!6324668))

(assert (=> b!5287111 m!6324290))

(declare-fun m!6324670 () Bool)

(assert (=> b!5287111 m!6324670))

(assert (=> b!5286130 d!1700932))

(declare-fun d!1700934 () Bool)

(declare-fun e!3287076 () Bool)

(assert (=> d!1700934 (= (matchZipper!1161 ((_ map or) lt!2160620 lt!2160651) (t!374255 s!2326)) e!3287076)))

(declare-fun res!2242352 () Bool)

(assert (=> d!1700934 (=> res!2242352 e!3287076)))

(assert (=> d!1700934 (= res!2242352 (matchZipper!1161 lt!2160620 (t!374255 s!2326)))))

(declare-fun lt!2160825 () Unit!153186)

(assert (=> d!1700934 (= lt!2160825 (choose!39478 lt!2160620 lt!2160651 (t!374255 s!2326)))))

(assert (=> d!1700934 (= (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160620 lt!2160651 (t!374255 s!2326)) lt!2160825)))

(declare-fun b!5287112 () Bool)

(assert (=> b!5287112 (= e!3287076 (matchZipper!1161 lt!2160651 (t!374255 s!2326)))))

(assert (= (and d!1700934 (not res!2242352)) b!5287112))

(declare-fun m!6324672 () Bool)

(assert (=> d!1700934 m!6324672))

(assert (=> d!1700934 m!6323806))

(declare-fun m!6324674 () Bool)

(assert (=> d!1700934 m!6324674))

(assert (=> b!5287112 m!6323734))

(assert (=> b!5286130 d!1700934))

(declare-fun e!3287077 () Bool)

(declare-fun d!1700936 () Bool)

(assert (=> d!1700936 (= (matchZipper!1161 ((_ map or) lt!2160625 lt!2160624) (t!374255 s!2326)) e!3287077)))

(declare-fun res!2242353 () Bool)

(assert (=> d!1700936 (=> res!2242353 e!3287077)))

(assert (=> d!1700936 (= res!2242353 (matchZipper!1161 lt!2160625 (t!374255 s!2326)))))

(declare-fun lt!2160826 () Unit!153186)

(assert (=> d!1700936 (= lt!2160826 (choose!39478 lt!2160625 lt!2160624 (t!374255 s!2326)))))

(assert (=> d!1700936 (= (lemmaZipperConcatMatchesSameAsBothZippers!154 lt!2160625 lt!2160624 (t!374255 s!2326)) lt!2160826)))

(declare-fun b!5287113 () Bool)

(assert (=> b!5287113 (= e!3287077 (matchZipper!1161 lt!2160624 (t!374255 s!2326)))))

(assert (= (and d!1700936 (not res!2242353)) b!5287113))

(assert (=> d!1700936 m!6323768))

(assert (=> d!1700936 m!6323766))

(declare-fun m!6324676 () Bool)

(assert (=> d!1700936 m!6324676))

(assert (=> b!5287113 m!6323770))

(assert (=> b!5286149 d!1700936))

(assert (=> b!5286149 d!1700928))

(declare-fun d!1700938 () Bool)

(declare-fun c!916924 () Bool)

(assert (=> d!1700938 (= c!916924 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287078 () Bool)

(assert (=> d!1700938 (= (matchZipper!1161 ((_ map or) lt!2160625 lt!2160624) (t!374255 s!2326)) e!3287078)))

(declare-fun b!5287114 () Bool)

(assert (=> b!5287114 (= e!3287078 (nullableZipper!1306 ((_ map or) lt!2160625 lt!2160624)))))

(declare-fun b!5287115 () Bool)

(assert (=> b!5287115 (= e!3287078 (matchZipper!1161 (derivationStepZipper!1160 ((_ map or) lt!2160625 lt!2160624) (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700938 c!916924) b!5287114))

(assert (= (and d!1700938 (not c!916924)) b!5287115))

(assert (=> d!1700938 m!6324282))

(declare-fun m!6324678 () Bool)

(assert (=> b!5287114 m!6324678))

(assert (=> b!5287115 m!6324286))

(assert (=> b!5287115 m!6324286))

(declare-fun m!6324680 () Bool)

(assert (=> b!5287115 m!6324680))

(assert (=> b!5287115 m!6324290))

(assert (=> b!5287115 m!6324680))

(assert (=> b!5287115 m!6324290))

(declare-fun m!6324682 () Bool)

(assert (=> b!5287115 m!6324682))

(assert (=> b!5286149 d!1700938))

(declare-fun d!1700940 () Bool)

(declare-fun c!916925 () Bool)

(assert (=> d!1700940 (= c!916925 (isEmpty!32883 (t!374255 s!2326)))))

(declare-fun e!3287079 () Bool)

(assert (=> d!1700940 (= (matchZipper!1161 lt!2160624 (t!374255 s!2326)) e!3287079)))

(declare-fun b!5287116 () Bool)

(assert (=> b!5287116 (= e!3287079 (nullableZipper!1306 lt!2160624))))

(declare-fun b!5287117 () Bool)

(assert (=> b!5287117 (= e!3287079 (matchZipper!1161 (derivationStepZipper!1160 lt!2160624 (head!11330 (t!374255 s!2326))) (tail!10427 (t!374255 s!2326))))))

(assert (= (and d!1700940 c!916925) b!5287116))

(assert (= (and d!1700940 (not c!916925)) b!5287117))

(assert (=> d!1700940 m!6324282))

(declare-fun m!6324684 () Bool)

(assert (=> b!5287116 m!6324684))

(assert (=> b!5287117 m!6324286))

(assert (=> b!5287117 m!6324286))

(declare-fun m!6324686 () Bool)

(assert (=> b!5287117 m!6324686))

(assert (=> b!5287117 m!6324290))

(assert (=> b!5287117 m!6324686))

(assert (=> b!5287117 m!6324290))

(declare-fun m!6324688 () Bool)

(assert (=> b!5287117 m!6324688))

(assert (=> b!5286150 d!1700940))

(declare-fun condSetEmpty!33917 () Bool)

(assert (=> setNonEmpty!33911 (= condSetEmpty!33917 (= setRest!33911 ((as const (Array Context!8602 Bool)) false)))))

(declare-fun setRes!33917 () Bool)

(assert (=> setNonEmpty!33911 (= tp!1476178 setRes!33917)))

(declare-fun setIsEmpty!33917 () Bool)

(assert (=> setIsEmpty!33917 setRes!33917))

(declare-fun tp!1476248 () Bool)

(declare-fun setNonEmpty!33917 () Bool)

(declare-fun e!3287082 () Bool)

(declare-fun setElem!33917 () Context!8602)

(assert (=> setNonEmpty!33917 (= setRes!33917 (and tp!1476248 (inv!80539 setElem!33917) e!3287082))))

(declare-fun setRest!33917 () (InoxSet Context!8602))

(assert (=> setNonEmpty!33917 (= setRest!33911 ((_ map or) (store ((as const (Array Context!8602 Bool)) false) setElem!33917 true) setRest!33917))))

(declare-fun b!5287122 () Bool)

(declare-fun tp!1476249 () Bool)

(assert (=> b!5287122 (= e!3287082 tp!1476249)))

(assert (= (and setNonEmpty!33911 condSetEmpty!33917) setIsEmpty!33917))

(assert (= (and setNonEmpty!33911 (not condSetEmpty!33917)) setNonEmpty!33917))

(assert (= setNonEmpty!33917 b!5287122))

(declare-fun m!6324690 () Bool)

(assert (=> setNonEmpty!33917 m!6324690))

(declare-fun b!5287127 () Bool)

(declare-fun e!3287085 () Bool)

(declare-fun tp!1476254 () Bool)

(declare-fun tp!1476255 () Bool)

(assert (=> b!5287127 (= e!3287085 (and tp!1476254 tp!1476255))))

(assert (=> b!5286138 (= tp!1476183 e!3287085)))

(assert (= (and b!5286138 ((_ is Cons!60926) (exprs!4801 (h!67375 zl!343)))) b!5287127))

(declare-fun b!5287132 () Bool)

(declare-fun e!3287088 () Bool)

(declare-fun tp!1476258 () Bool)

(assert (=> b!5287132 (= e!3287088 (and tp_is_empty!39087 tp!1476258))))

(assert (=> b!5286156 (= tp!1476185 e!3287088)))

(assert (= (and b!5286156 ((_ is Cons!60928) (t!374255 s!2326))) b!5287132))

(declare-fun b!5287140 () Bool)

(declare-fun e!3287094 () Bool)

(declare-fun tp!1476263 () Bool)

(assert (=> b!5287140 (= e!3287094 tp!1476263)))

(declare-fun b!5287139 () Bool)

(declare-fun e!3287093 () Bool)

(declare-fun tp!1476264 () Bool)

(assert (=> b!5287139 (= e!3287093 (and (inv!80539 (h!67375 (t!374254 zl!343))) e!3287094 tp!1476264))))

(assert (=> b!5286145 (= tp!1476180 e!3287093)))

(assert (= b!5287139 b!5287140))

(assert (= (and b!5286145 ((_ is Cons!60927) (t!374254 zl!343))) b!5287139))

(declare-fun m!6324692 () Bool)

(assert (=> b!5287139 m!6324692))

(declare-fun b!5287153 () Bool)

(declare-fun e!3287097 () Bool)

(declare-fun tp!1476279 () Bool)

(assert (=> b!5287153 (= e!3287097 tp!1476279)))

(declare-fun b!5287151 () Bool)

(assert (=> b!5287151 (= e!3287097 tp_is_empty!39087)))

(assert (=> b!5286134 (= tp!1476184 e!3287097)))

(declare-fun b!5287152 () Bool)

(declare-fun tp!1476278 () Bool)

(declare-fun tp!1476277 () Bool)

(assert (=> b!5287152 (= e!3287097 (and tp!1476278 tp!1476277))))

(declare-fun b!5287154 () Bool)

(declare-fun tp!1476275 () Bool)

(declare-fun tp!1476276 () Bool)

(assert (=> b!5287154 (= e!3287097 (and tp!1476275 tp!1476276))))

(assert (= (and b!5286134 ((_ is ElementMatch!14917) (reg!15246 r!7292))) b!5287151))

(assert (= (and b!5286134 ((_ is Concat!23762) (reg!15246 r!7292))) b!5287152))

(assert (= (and b!5286134 ((_ is Star!14917) (reg!15246 r!7292))) b!5287153))

(assert (= (and b!5286134 ((_ is Union!14917) (reg!15246 r!7292))) b!5287154))

(declare-fun b!5287157 () Bool)

(declare-fun e!3287098 () Bool)

(declare-fun tp!1476284 () Bool)

(assert (=> b!5287157 (= e!3287098 tp!1476284)))

(declare-fun b!5287155 () Bool)

(assert (=> b!5287155 (= e!3287098 tp_is_empty!39087)))

(assert (=> b!5286135 (= tp!1476176 e!3287098)))

(declare-fun b!5287156 () Bool)

(declare-fun tp!1476283 () Bool)

(declare-fun tp!1476282 () Bool)

(assert (=> b!5287156 (= e!3287098 (and tp!1476283 tp!1476282))))

(declare-fun b!5287158 () Bool)

(declare-fun tp!1476280 () Bool)

(declare-fun tp!1476281 () Bool)

(assert (=> b!5287158 (= e!3287098 (and tp!1476280 tp!1476281))))

(assert (= (and b!5286135 ((_ is ElementMatch!14917) (regOne!30347 r!7292))) b!5287155))

(assert (= (and b!5286135 ((_ is Concat!23762) (regOne!30347 r!7292))) b!5287156))

(assert (= (and b!5286135 ((_ is Star!14917) (regOne!30347 r!7292))) b!5287157))

(assert (= (and b!5286135 ((_ is Union!14917) (regOne!30347 r!7292))) b!5287158))

(declare-fun b!5287161 () Bool)

(declare-fun e!3287099 () Bool)

(declare-fun tp!1476289 () Bool)

(assert (=> b!5287161 (= e!3287099 tp!1476289)))

(declare-fun b!5287159 () Bool)

(assert (=> b!5287159 (= e!3287099 tp_is_empty!39087)))

(assert (=> b!5286135 (= tp!1476182 e!3287099)))

(declare-fun b!5287160 () Bool)

(declare-fun tp!1476288 () Bool)

(declare-fun tp!1476287 () Bool)

(assert (=> b!5287160 (= e!3287099 (and tp!1476288 tp!1476287))))

(declare-fun b!5287162 () Bool)

(declare-fun tp!1476285 () Bool)

(declare-fun tp!1476286 () Bool)

(assert (=> b!5287162 (= e!3287099 (and tp!1476285 tp!1476286))))

(assert (= (and b!5286135 ((_ is ElementMatch!14917) (regTwo!30347 r!7292))) b!5287159))

(assert (= (and b!5286135 ((_ is Concat!23762) (regTwo!30347 r!7292))) b!5287160))

(assert (= (and b!5286135 ((_ is Star!14917) (regTwo!30347 r!7292))) b!5287161))

(assert (= (and b!5286135 ((_ is Union!14917) (regTwo!30347 r!7292))) b!5287162))

(declare-fun b!5287165 () Bool)

(declare-fun e!3287100 () Bool)

(declare-fun tp!1476294 () Bool)

(assert (=> b!5287165 (= e!3287100 tp!1476294)))

(declare-fun b!5287163 () Bool)

(assert (=> b!5287163 (= e!3287100 tp_is_empty!39087)))

(assert (=> b!5286125 (= tp!1476177 e!3287100)))

(declare-fun b!5287164 () Bool)

(declare-fun tp!1476293 () Bool)

(declare-fun tp!1476292 () Bool)

(assert (=> b!5287164 (= e!3287100 (and tp!1476293 tp!1476292))))

(declare-fun b!5287166 () Bool)

(declare-fun tp!1476290 () Bool)

(declare-fun tp!1476291 () Bool)

(assert (=> b!5287166 (= e!3287100 (and tp!1476290 tp!1476291))))

(assert (= (and b!5286125 ((_ is ElementMatch!14917) (regOne!30346 r!7292))) b!5287163))

(assert (= (and b!5286125 ((_ is Concat!23762) (regOne!30346 r!7292))) b!5287164))

(assert (= (and b!5286125 ((_ is Star!14917) (regOne!30346 r!7292))) b!5287165))

(assert (= (and b!5286125 ((_ is Union!14917) (regOne!30346 r!7292))) b!5287166))

(declare-fun b!5287169 () Bool)

(declare-fun e!3287101 () Bool)

(declare-fun tp!1476299 () Bool)

(assert (=> b!5287169 (= e!3287101 tp!1476299)))

(declare-fun b!5287167 () Bool)

(assert (=> b!5287167 (= e!3287101 tp_is_empty!39087)))

(assert (=> b!5286125 (= tp!1476181 e!3287101)))

(declare-fun b!5287168 () Bool)

(declare-fun tp!1476298 () Bool)

(declare-fun tp!1476297 () Bool)

(assert (=> b!5287168 (= e!3287101 (and tp!1476298 tp!1476297))))

(declare-fun b!5287170 () Bool)

(declare-fun tp!1476295 () Bool)

(declare-fun tp!1476296 () Bool)

(assert (=> b!5287170 (= e!3287101 (and tp!1476295 tp!1476296))))

(assert (= (and b!5286125 ((_ is ElementMatch!14917) (regTwo!30346 r!7292))) b!5287167))

(assert (= (and b!5286125 ((_ is Concat!23762) (regTwo!30346 r!7292))) b!5287168))

(assert (= (and b!5286125 ((_ is Star!14917) (regTwo!30346 r!7292))) b!5287169))

(assert (= (and b!5286125 ((_ is Union!14917) (regTwo!30346 r!7292))) b!5287170))

(declare-fun b!5287171 () Bool)

(declare-fun e!3287102 () Bool)

(declare-fun tp!1476300 () Bool)

(declare-fun tp!1476301 () Bool)

(assert (=> b!5287171 (= e!3287102 (and tp!1476300 tp!1476301))))

(assert (=> b!5286140 (= tp!1476179 e!3287102)))

(assert (= (and b!5286140 ((_ is Cons!60926) (exprs!4801 setElem!33911))) b!5287171))

(declare-fun b_lambda!203909 () Bool)

(assert (= b_lambda!203903 (or b!5286144 b_lambda!203909)))

(declare-fun bs!1225185 () Bool)

(declare-fun d!1700942 () Bool)

(assert (= bs!1225185 (and d!1700942 b!5286144)))

(assert (=> bs!1225185 (= (dynLambda!24089 lambda!267346 (h!67375 zl!343)) (derivationStepZipperUp!289 (h!67375 zl!343) (h!67376 s!2326)))))

(assert (=> bs!1225185 m!6323716))

(assert (=> d!1700880 d!1700942))

(declare-fun b_lambda!203911 () Bool)

(assert (= b_lambda!203907 (or b!5286144 b_lambda!203911)))

(declare-fun bs!1225186 () Bool)

(declare-fun d!1700944 () Bool)

(assert (= bs!1225186 (and d!1700944 b!5286144)))

(assert (=> bs!1225186 (= (dynLambda!24089 lambda!267346 lt!2160657) (derivationStepZipperUp!289 lt!2160657 (h!67376 s!2326)))))

(assert (=> bs!1225186 m!6323706))

(assert (=> d!1700914 d!1700944))

(declare-fun b_lambda!203913 () Bool)

(assert (= b_lambda!203905 (or b!5286144 b_lambda!203913)))

(declare-fun bs!1225187 () Bool)

(declare-fun d!1700946 () Bool)

(assert (= bs!1225187 (and d!1700946 b!5286144)))

(assert (=> bs!1225187 (= (dynLambda!24089 lambda!267346 lt!2160653) (derivationStepZipperUp!289 lt!2160653 (h!67376 s!2326)))))

(assert (=> bs!1225187 m!6323712))

(assert (=> d!1700904 d!1700946))

(declare-fun b_lambda!203915 () Bool)

(assert (= b_lambda!203901 (or b!5286143 b_lambda!203915)))

(declare-fun bs!1225188 () Bool)

(declare-fun d!1700948 () Bool)

(assert (= bs!1225188 (and d!1700948 b!5286143)))

(assert (=> bs!1225188 (= (dynLambda!24088 lambda!267349 (h!67374 lt!2160642)) (validRegex!6653 (h!67374 lt!2160642)))))

(declare-fun m!6324694 () Bool)

(assert (=> bs!1225188 m!6324694))

(assert (=> b!5286936 d!1700948))

(check-sat (not b!5286915) (not b!5286896) (not b!5286855) (not b!5286984) (not d!1700842) (not b!5287054) (not b!5287098) (not b!5287111) (not b!5287014) (not b!5286919) (not b!5287139) (not b!5286938) (not b!5287110) (not b!5286983) (not bm!376596) (not b!5287108) (not b_lambda!203915) (not b!5286954) (not b!5286895) (not d!1700764) (not b!5287170) (not b!5287122) (not d!1700914) (not b!5287106) (not d!1700852) (not d!1700908) (not b!5286953) (not b!5286773) (not b!5286749) (not b!5287112) (not bm!376591) (not b!5287162) (not d!1700932) (not b!5286857) (not b!5287171) (not b!5286862) (not b!5287165) (not b!5286929) (not d!1700866) (not b!5287115) (not b!5287102) (not d!1700846) (not bm!376582) (not b!5286858) (not b!5286952) (not b_lambda!203911) (not b!5287107) (not b!5287161) (not b!5287166) (not b!5287157) (not b!5287158) (not d!1700890) (not d!1700882) (not b!5287153) (not b!5286889) (not d!1700872) (not bm!376543) (not b!5286805) (not d!1700868) (not b!5286927) (not b!5287059) (not d!1700848) (not b!5286911) (not bm!376556) (not b!5287094) (not bm!376597) (not bm!376560) (not b!5287132) (not d!1700924) (not b!5287089) (not bm!376544) (not b!5286746) (not b!5287016) (not b!5287105) (not b!5287109) (not b!5286768) (not b!5286910) (not bm!376594) (not b!5286890) (not d!1700856) (not bm!376585) (not bs!1225188) (not b!5287140) (not bm!376581) (not b!5286892) (not b!5287114) (not b!5286948) (not d!1700926) (not bs!1225187) (not d!1700840) (not b!5286745) (not b!5287160) (not d!1700802) (not d!1700836) (not b!5287096) (not b!5286774) (not b!5286866) (not bm!376563) (not b!5286744) tp_is_empty!39087 (not b!5286775) (not d!1700880) (not b!5286766) (not b!5286937) (not d!1700844) (not b!5286888) (not bs!1225185) (not d!1700928) (not b!5286780) (not b!5286924) (not d!1700822) (not b!5287097) (not b!5286782) (not d!1700808) (not b!5286758) (not b!5286742) (not b!5287164) (not b!5286803) (not d!1700830) (not d!1700874) (not b!5286852) (not d!1700920) (not b!5286914) (not d!1700828) (not b!5286925) (not d!1700938) (not d!1700878) (not b!5286986) (not bm!376578) (not bm!376588) (not bm!376554) (not d!1700858) (not b!5286771) (not b!5287103) (not b!5286981) (not bm!376583) (not b!5286753) (not b!5286930) (not b!5286916) (not setNonEmpty!33917) (not d!1700850) (not b!5286959) (not b!5286903) (not b_lambda!203913) (not d!1700918) (not d!1700826) (not b!5286701) (not bm!376558) (not bm!376547) (not b!5287091) (not d!1700934) (not b!5286899) (not b!5286912) (not d!1700916) (not b!5286806) (not b!5286960) (not b!5287052) (not b!5287127) (not b!5286931) (not b!5286759) (not b!5286917) (not b!5286709) (not bs!1225186) (not b!5287047) (not b!5286923) (not b!5287116) (not d!1700940) (not b!5286901) (not b!5287011) (not b!5286808) (not b!5287101) (not b!5287168) (not b!5286918) (not b!5286902) (not bm!376595) (not b!5287009) (not b!5286956) (not d!1700824) (not b!5287113) (not b!5286989) (not d!1700904) (not b!5287117) (not bm!376557) (not b!5287154) (not d!1700838) (not d!1700876) (not b!5287156) (not d!1700832) (not b!5286939) (not b!5286859) (not d!1700806) (not d!1700854) (not d!1700860) (not d!1700930) (not b!5287082) (not b!5286894) (not bm!376589) (not d!1700864) (not b!5287071) (not d!1700800) (not d!1700936) (not bm!376559) (not b!5286844) (not d!1700922) (not b_lambda!203909) (not d!1700814) (not b!5286906) (not bm!376564) (not d!1700902) (not b!5287152) (not b!5286958) (not b!5287169) (not b!5286987) (not b!5286982) (not b!5286807) (not b!5286995) (not b!5287061) (not b!5286804) (not b!5286940) (not b!5287104) (not d!1700906))
(check-sat)
