; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557902 () Bool)

(assert start!557902)

(declare-fun b!5284341 () Bool)

(assert (=> b!5284341 true))

(assert (=> b!5284341 true))

(declare-fun lambda!267120 () Int)

(declare-fun lambda!267119 () Int)

(assert (=> b!5284341 (not (= lambda!267120 lambda!267119))))

(assert (=> b!5284341 true))

(assert (=> b!5284341 true))

(declare-fun b!5284328 () Bool)

(assert (=> b!5284328 true))

(declare-fun b!5284322 () Bool)

(declare-fun e!3285547 () Bool)

(declare-fun e!3285539 () Bool)

(assert (=> b!5284322 (= e!3285547 e!3285539)))

(declare-fun res!2241142 () Bool)

(assert (=> b!5284322 (=> res!2241142 e!3285539)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30092 0))(
  ( (C!30093 (val!24748 Int)) )
))
(declare-datatypes ((Regex!14911 0))(
  ( (ElementMatch!14911 (c!916243 C!30092)) (Concat!23756 (regOne!30334 Regex!14911) (regTwo!30334 Regex!14911)) (EmptyExpr!14911) (Star!14911 (reg!15240 Regex!14911)) (EmptyLang!14911) (Union!14911 (regOne!30335 Regex!14911) (regTwo!30335 Regex!14911)) )
))
(declare-datatypes ((List!61032 0))(
  ( (Nil!60908) (Cons!60908 (h!67356 Regex!14911) (t!374235 List!61032)) )
))
(declare-datatypes ((Context!8590 0))(
  ( (Context!8591 (exprs!4795 List!61032)) )
))
(declare-fun lt!2159760 () (InoxSet Context!8590))

(declare-fun lt!2159763 () (InoxSet Context!8590))

(assert (=> b!5284322 (= res!2241142 (not (= lt!2159760 lt!2159763)))))

(declare-fun lt!2159771 () (InoxSet Context!8590))

(declare-fun lt!2159749 () (InoxSet Context!8590))

(assert (=> b!5284322 (= lt!2159763 ((_ map or) lt!2159771 lt!2159749))))

(declare-fun r!7292 () Regex!14911)

(declare-datatypes ((List!61033 0))(
  ( (Nil!60909) (Cons!60909 (h!67357 C!30092) (t!374236 List!61033)) )
))
(declare-fun s!2326 () List!61033)

(declare-fun lt!2159748 () Context!8590)

(declare-fun derivationStepZipperDown!359 (Regex!14911 Context!8590 C!30092) (InoxSet Context!8590))

(assert (=> b!5284322 (= lt!2159749 (derivationStepZipperDown!359 (regTwo!30334 (regOne!30334 r!7292)) lt!2159748 (h!67357 s!2326)))))

(declare-fun lt!2159781 () Context!8590)

(assert (=> b!5284322 (= lt!2159771 (derivationStepZipperDown!359 (regOne!30334 (regOne!30334 r!7292)) lt!2159781 (h!67357 s!2326)))))

(declare-fun lt!2159747 () List!61032)

(assert (=> b!5284322 (= lt!2159781 (Context!8591 lt!2159747))))

(declare-datatypes ((List!61034 0))(
  ( (Nil!60910) (Cons!60910 (h!67358 Context!8590) (t!374237 List!61034)) )
))
(declare-fun zl!343 () List!61034)

(assert (=> b!5284322 (= lt!2159747 (Cons!60908 (regTwo!30334 (regOne!30334 r!7292)) (t!374235 (exprs!4795 (h!67358 zl!343)))))))

(declare-fun b!5284323 () Bool)

(declare-fun e!3285538 () Bool)

(declare-fun lt!2159775 () (InoxSet Context!8590))

(declare-fun matchZipper!1155 ((InoxSet Context!8590) List!61033) Bool)

(declare-fun derivationStepZipper!1154 ((InoxSet Context!8590) C!30092) (InoxSet Context!8590))

(assert (=> b!5284323 (= e!3285538 (not (matchZipper!1155 (derivationStepZipper!1154 lt!2159775 (h!67357 s!2326)) (t!374236 s!2326))))))

(declare-fun b!5284324 () Bool)

(declare-fun e!3285548 () Bool)

(declare-fun tp!1475885 () Bool)

(assert (=> b!5284324 (= e!3285548 tp!1475885)))

(declare-fun b!5284325 () Bool)

(declare-fun tp_is_empty!39075 () Bool)

(assert (=> b!5284325 (= e!3285548 tp_is_empty!39075)))

(declare-fun b!5284326 () Bool)

(declare-fun e!3285546 () Bool)

(declare-fun e!3285540 () Bool)

(assert (=> b!5284326 (= e!3285546 e!3285540)))

(declare-fun res!2241140 () Bool)

(assert (=> b!5284326 (=> res!2241140 e!3285540)))

(declare-fun lt!2159773 () List!61034)

(declare-fun zipperDepthTotal!72 (List!61034) Int)

(assert (=> b!5284326 (= res!2241140 (>= (zipperDepthTotal!72 lt!2159773) (zipperDepthTotal!72 zl!343)))))

(declare-fun lt!2159768 () Context!8590)

(assert (=> b!5284326 (= lt!2159773 (Cons!60910 lt!2159768 Nil!60910))))

(declare-fun b!5284327 () Bool)

(declare-fun res!2241130 () Bool)

(declare-fun e!3285549 () Bool)

(assert (=> b!5284327 (=> (not res!2241130) (not e!3285549))))

(declare-fun z!1189 () (InoxSet Context!8590))

(declare-fun toList!8695 ((InoxSet Context!8590)) List!61034)

(assert (=> b!5284327 (= res!2241130 (= (toList!8695 z!1189) zl!343))))

(declare-fun e!3285554 () Bool)

(assert (=> b!5284328 (= e!3285554 e!3285547)))

(declare-fun res!2241145 () Bool)

(assert (=> b!5284328 (=> res!2241145 e!3285547)))

(get-info :version)

(assert (=> b!5284328 (= res!2241145 (or (and ((_ is ElementMatch!14911) (regOne!30334 r!7292)) (= (c!916243 (regOne!30334 r!7292)) (h!67357 s!2326))) ((_ is Union!14911) (regOne!30334 r!7292)) (not ((_ is Concat!23756) (regOne!30334 r!7292)))))))

(declare-datatypes ((Unit!153162 0))(
  ( (Unit!153163) )
))
(declare-fun lt!2159776 () Unit!153162)

(declare-fun e!3285542 () Unit!153162)

(assert (=> b!5284328 (= lt!2159776 e!3285542)))

(declare-fun c!916242 () Bool)

(declare-fun nullable!5080 (Regex!14911) Bool)

(assert (=> b!5284328 (= c!916242 (nullable!5080 (h!67356 (exprs!4795 (h!67358 zl!343)))))))

(declare-fun lambda!267121 () Int)

(declare-fun flatMap!638 ((InoxSet Context!8590) Int) (InoxSet Context!8590))

(declare-fun derivationStepZipperUp!283 (Context!8590 C!30092) (InoxSet Context!8590))

(assert (=> b!5284328 (= (flatMap!638 z!1189 lambda!267121) (derivationStepZipperUp!283 (h!67358 zl!343) (h!67357 s!2326)))))

(declare-fun lt!2159753 () Unit!153162)

(declare-fun lemmaFlatMapOnSingletonSet!170 ((InoxSet Context!8590) Context!8590 Int) Unit!153162)

(assert (=> b!5284328 (= lt!2159753 (lemmaFlatMapOnSingletonSet!170 z!1189 (h!67358 zl!343) lambda!267121))))

(declare-fun lt!2159761 () (InoxSet Context!8590))

(assert (=> b!5284328 (= lt!2159761 (derivationStepZipperUp!283 lt!2159748 (h!67357 s!2326)))))

(assert (=> b!5284328 (= lt!2159760 (derivationStepZipperDown!359 (h!67356 (exprs!4795 (h!67358 zl!343))) lt!2159748 (h!67357 s!2326)))))

(assert (=> b!5284328 (= lt!2159748 (Context!8591 (t!374235 (exprs!4795 (h!67358 zl!343)))))))

(declare-fun lt!2159770 () (InoxSet Context!8590))

(assert (=> b!5284328 (= lt!2159770 (derivationStepZipperUp!283 (Context!8591 (Cons!60908 (h!67356 (exprs!4795 (h!67358 zl!343))) (t!374235 (exprs!4795 (h!67358 zl!343))))) (h!67357 s!2326)))))

(declare-fun b!5284329 () Bool)

(declare-fun res!2241128 () Bool)

(declare-fun e!3285544 () Bool)

(assert (=> b!5284329 (=> res!2241128 e!3285544)))

(declare-fun generalisedUnion!840 (List!61032) Regex!14911)

(declare-fun unfocusZipperList!353 (List!61034) List!61032)

(assert (=> b!5284329 (= res!2241128 (not (= r!7292 (generalisedUnion!840 (unfocusZipperList!353 zl!343)))))))

(declare-fun b!5284330 () Bool)

(declare-fun tp!1475884 () Bool)

(declare-fun tp!1475887 () Bool)

(assert (=> b!5284330 (= e!3285548 (and tp!1475884 tp!1475887))))

(declare-fun b!5284331 () Bool)

(declare-fun res!2241136 () Bool)

(assert (=> b!5284331 (=> res!2241136 e!3285547)))

(assert (=> b!5284331 (= res!2241136 (not (nullable!5080 (regOne!30334 (regOne!30334 r!7292)))))))

(declare-fun b!5284332 () Bool)

(declare-fun e!3285552 () Bool)

(declare-fun tp!1475888 () Bool)

(assert (=> b!5284332 (= e!3285552 tp!1475888)))

(declare-fun b!5284333 () Bool)

(declare-fun e!3285551 () Bool)

(assert (=> b!5284333 (= e!3285551 (matchZipper!1155 lt!2159749 (t!374236 s!2326)))))

(declare-fun b!5284334 () Bool)

(declare-fun e!3285541 () Bool)

(declare-fun tp!1475882 () Bool)

(assert (=> b!5284334 (= e!3285541 tp!1475882)))

(declare-fun res!2241131 () Bool)

(assert (=> start!557902 (=> (not res!2241131) (not e!3285549))))

(declare-fun validRegex!6647 (Regex!14911) Bool)

(assert (=> start!557902 (= res!2241131 (validRegex!6647 r!7292))))

(assert (=> start!557902 e!3285549))

(assert (=> start!557902 e!3285548))

(declare-fun condSetEmpty!33887 () Bool)

(assert (=> start!557902 (= condSetEmpty!33887 (= z!1189 ((as const (Array Context!8590 Bool)) false)))))

(declare-fun setRes!33887 () Bool)

(assert (=> start!557902 setRes!33887))

(declare-fun e!3285553 () Bool)

(assert (=> start!557902 e!3285553))

(declare-fun e!3285545 () Bool)

(assert (=> start!557902 e!3285545))

(declare-fun b!5284335 () Bool)

(declare-fun res!2241147 () Bool)

(assert (=> b!5284335 (=> res!2241147 e!3285546)))

(assert (=> b!5284335 (= res!2241147 (not (= (exprs!4795 (h!67358 zl!343)) (Cons!60908 (Concat!23756 (regOne!30334 (regOne!30334 r!7292)) (regTwo!30334 (regOne!30334 r!7292))) (t!374235 (exprs!4795 (h!67358 zl!343)))))))))

(declare-fun b!5284336 () Bool)

(declare-fun res!2241152 () Bool)

(assert (=> b!5284336 (=> res!2241152 e!3285554)))

(declare-fun isEmpty!32863 (List!61032) Bool)

(assert (=> b!5284336 (= res!2241152 (isEmpty!32863 (t!374235 (exprs!4795 (h!67358 zl!343)))))))

(declare-fun b!5284337 () Bool)

(declare-fun res!2241132 () Bool)

(assert (=> b!5284337 (=> res!2241132 e!3285544)))

(assert (=> b!5284337 (= res!2241132 (or ((_ is EmptyExpr!14911) r!7292) ((_ is EmptyLang!14911) r!7292) ((_ is ElementMatch!14911) r!7292) ((_ is Union!14911) r!7292) (not ((_ is Concat!23756) r!7292))))))

(declare-fun b!5284338 () Bool)

(declare-fun Unit!153164 () Unit!153162)

(assert (=> b!5284338 (= e!3285542 Unit!153164)))

(declare-fun b!5284339 () Bool)

(declare-fun e!3285543 () Bool)

(assert (=> b!5284339 (= e!3285543 e!3285546)))

(declare-fun res!2241141 () Bool)

(assert (=> b!5284339 (=> res!2241141 e!3285546)))

(assert (=> b!5284339 (= res!2241141 e!3285538)))

(declare-fun res!2241133 () Bool)

(assert (=> b!5284339 (=> (not res!2241133) (not e!3285538))))

(declare-fun lt!2159764 () Bool)

(declare-fun lt!2159784 () (InoxSet Context!8590))

(assert (=> b!5284339 (= res!2241133 (not (= lt!2159764 (matchZipper!1155 lt!2159784 (t!374236 s!2326)))))))

(declare-fun lt!2159772 () (InoxSet Context!8590))

(declare-fun e!3285535 () Bool)

(assert (=> b!5284339 (= (matchZipper!1155 lt!2159772 (t!374236 s!2326)) e!3285535)))

(declare-fun res!2241129 () Bool)

(assert (=> b!5284339 (=> res!2241129 e!3285535)))

(declare-fun lt!2159766 () Bool)

(assert (=> b!5284339 (= res!2241129 lt!2159766)))

(declare-fun lt!2159769 () (InoxSet Context!8590))

(declare-fun lt!2159783 () Unit!153162)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!148 ((InoxSet Context!8590) (InoxSet Context!8590) List!61033) Unit!153162)

(assert (=> b!5284339 (= lt!2159783 (lemmaZipperConcatMatchesSameAsBothZippers!148 lt!2159771 lt!2159769 (t!374236 s!2326)))))

(assert (=> b!5284339 (= (flatMap!638 lt!2159775 lambda!267121) (derivationStepZipperUp!283 lt!2159781 (h!67357 s!2326)))))

(declare-fun lt!2159774 () Unit!153162)

(assert (=> b!5284339 (= lt!2159774 (lemmaFlatMapOnSingletonSet!170 lt!2159775 lt!2159781 lambda!267121))))

(declare-fun b!5284340 () Bool)

(declare-fun res!2241143 () Bool)

(assert (=> b!5284340 (=> res!2241143 e!3285544)))

(declare-fun generalisedConcat!580 (List!61032) Regex!14911)

(assert (=> b!5284340 (= res!2241143 (not (= r!7292 (generalisedConcat!580 (exprs!4795 (h!67358 zl!343))))))))

(assert (=> b!5284341 (= e!3285544 e!3285554)))

(declare-fun res!2241137 () Bool)

(assert (=> b!5284341 (=> res!2241137 e!3285554)))

(declare-fun lt!2159757 () Bool)

(declare-fun lt!2159765 () Bool)

(assert (=> b!5284341 (= res!2241137 (or (not (= lt!2159757 lt!2159765)) ((_ is Nil!60909) s!2326)))))

(declare-fun Exists!2092 (Int) Bool)

(assert (=> b!5284341 (= (Exists!2092 lambda!267119) (Exists!2092 lambda!267120))))

(declare-fun lt!2159780 () Unit!153162)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!746 (Regex!14911 Regex!14911 List!61033) Unit!153162)

(assert (=> b!5284341 (= lt!2159780 (lemmaExistCutMatchRandMatchRSpecEquivalent!746 (regOne!30334 r!7292) (regTwo!30334 r!7292) s!2326))))

(assert (=> b!5284341 (= lt!2159765 (Exists!2092 lambda!267119))))

(declare-datatypes ((tuple2!64220 0))(
  ( (tuple2!64221 (_1!35413 List!61033) (_2!35413 List!61033)) )
))
(declare-datatypes ((Option!15022 0))(
  ( (None!15021) (Some!15021 (v!51050 tuple2!64220)) )
))
(declare-fun isDefined!11725 (Option!15022) Bool)

(declare-fun findConcatSeparation!1436 (Regex!14911 Regex!14911 List!61033 List!61033 List!61033) Option!15022)

(assert (=> b!5284341 (= lt!2159765 (isDefined!11725 (findConcatSeparation!1436 (regOne!30334 r!7292) (regTwo!30334 r!7292) Nil!60909 s!2326 s!2326)))))

(declare-fun lt!2159762 () Unit!153162)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1200 (Regex!14911 Regex!14911 List!61033) Unit!153162)

(assert (=> b!5284341 (= lt!2159762 (lemmaFindConcatSeparationEquivalentToExists!1200 (regOne!30334 r!7292) (regTwo!30334 r!7292) s!2326))))

(declare-fun b!5284342 () Bool)

(declare-fun res!2241148 () Bool)

(assert (=> b!5284342 (=> res!2241148 e!3285544)))

(declare-fun isEmpty!32864 (List!61034) Bool)

(assert (=> b!5284342 (= res!2241148 (not (isEmpty!32864 (t!374237 zl!343))))))

(declare-fun b!5284343 () Bool)

(declare-fun e!3285537 () Bool)

(assert (=> b!5284343 (= e!3285537 (matchZipper!1155 lt!2159761 (t!374236 s!2326)))))

(declare-fun b!5284344 () Bool)

(declare-fun e!3285550 () Bool)

(assert (=> b!5284344 (= e!3285550 e!3285543)))

(declare-fun res!2241153 () Bool)

(assert (=> b!5284344 (=> res!2241153 e!3285543)))

(assert (=> b!5284344 (= res!2241153 (not (= lt!2159784 lt!2159772)))))

(assert (=> b!5284344 (= lt!2159772 ((_ map or) lt!2159771 lt!2159769))))

(assert (=> b!5284344 (= lt!2159769 (derivationStepZipperUp!283 lt!2159781 (h!67357 s!2326)))))

(declare-fun lt!2159754 () (InoxSet Context!8590))

(assert (=> b!5284344 (= (flatMap!638 lt!2159754 lambda!267121) (derivationStepZipperUp!283 lt!2159768 (h!67357 s!2326)))))

(declare-fun lt!2159777 () Unit!153162)

(assert (=> b!5284344 (= lt!2159777 (lemmaFlatMapOnSingletonSet!170 lt!2159754 lt!2159768 lambda!267121))))

(declare-fun lt!2159755 () (InoxSet Context!8590))

(assert (=> b!5284344 (= lt!2159755 (derivationStepZipperUp!283 lt!2159768 (h!67357 s!2326)))))

(assert (=> b!5284344 (= lt!2159784 (derivationStepZipper!1154 lt!2159754 (h!67357 s!2326)))))

(assert (=> b!5284344 (= lt!2159775 (store ((as const (Array Context!8590 Bool)) false) lt!2159781 true))))

(assert (=> b!5284344 (= lt!2159754 (store ((as const (Array Context!8590 Bool)) false) lt!2159768 true))))

(declare-fun lt!2159779 () List!61032)

(assert (=> b!5284344 (= lt!2159768 (Context!8591 lt!2159779))))

(assert (=> b!5284344 (= lt!2159779 (Cons!60908 (regOne!30334 (regOne!30334 r!7292)) lt!2159747))))

(declare-fun b!5284345 () Bool)

(declare-fun Unit!153165 () Unit!153162)

(assert (=> b!5284345 (= e!3285542 Unit!153165)))

(declare-fun lt!2159778 () Unit!153162)

(assert (=> b!5284345 (= lt!2159778 (lemmaZipperConcatMatchesSameAsBothZippers!148 lt!2159760 lt!2159761 (t!374236 s!2326)))))

(declare-fun res!2241134 () Bool)

(assert (=> b!5284345 (= res!2241134 (matchZipper!1155 lt!2159760 (t!374236 s!2326)))))

(assert (=> b!5284345 (=> res!2241134 e!3285537)))

(assert (=> b!5284345 (= (matchZipper!1155 ((_ map or) lt!2159760 lt!2159761) (t!374236 s!2326)) e!3285537)))

(declare-fun b!5284346 () Bool)

(assert (=> b!5284346 (= e!3285540 true)))

(declare-fun lt!2159751 () Bool)

(declare-fun lt!2159758 () Regex!14911)

(declare-fun matchRSpec!2014 (Regex!14911 List!61033) Bool)

(assert (=> b!5284346 (= lt!2159751 (matchRSpec!2014 lt!2159758 s!2326))))

(declare-fun lt!2159767 () Unit!153162)

(declare-fun mainMatchTheorem!2014 (Regex!14911 List!61033) Unit!153162)

(assert (=> b!5284346 (= lt!2159767 (mainMatchTheorem!2014 lt!2159758 s!2326))))

(declare-fun lt!2159782 () Regex!14911)

(declare-fun matchR!7096 (Regex!14911 List!61033) Bool)

(assert (=> b!5284346 (= (matchR!7096 lt!2159782 s!2326) (matchZipper!1155 lt!2159775 s!2326))))

(declare-fun lt!2159750 () Unit!153162)

(declare-fun theoremZipperRegexEquiv!321 ((InoxSet Context!8590) List!61034 Regex!14911 List!61033) Unit!153162)

(assert (=> b!5284346 (= lt!2159750 (theoremZipperRegexEquiv!321 lt!2159775 (Cons!60910 lt!2159781 Nil!60910) lt!2159782 s!2326))))

(assert (=> b!5284346 (= lt!2159782 (generalisedConcat!580 lt!2159747))))

(assert (=> b!5284346 (= lt!2159751 (matchZipper!1155 lt!2159754 s!2326))))

(assert (=> b!5284346 (= lt!2159751 (matchR!7096 lt!2159758 s!2326))))

(declare-fun lt!2159759 () Unit!153162)

(assert (=> b!5284346 (= lt!2159759 (theoremZipperRegexEquiv!321 lt!2159754 lt!2159773 lt!2159758 s!2326))))

(assert (=> b!5284346 (= lt!2159758 (generalisedConcat!580 lt!2159779))))

(declare-fun b!5284347 () Bool)

(declare-fun res!2241146 () Bool)

(assert (=> b!5284347 (=> (not res!2241146) (not e!3285549))))

(declare-fun unfocusZipper!653 (List!61034) Regex!14911)

(assert (=> b!5284347 (= res!2241146 (= r!7292 (unfocusZipper!653 zl!343)))))

(declare-fun setIsEmpty!33887 () Bool)

(assert (=> setIsEmpty!33887 setRes!33887))

(declare-fun b!5284348 () Bool)

(assert (=> b!5284348 (= e!3285539 e!3285550)))

(declare-fun res!2241150 () Bool)

(assert (=> b!5284348 (=> res!2241150 e!3285550)))

(declare-fun e!3285536 () Bool)

(assert (=> b!5284348 (= res!2241150 e!3285536)))

(declare-fun res!2241138 () Bool)

(assert (=> b!5284348 (=> (not res!2241138) (not e!3285536))))

(assert (=> b!5284348 (= res!2241138 (not (= lt!2159764 lt!2159766)))))

(assert (=> b!5284348 (= lt!2159764 (matchZipper!1155 lt!2159760 (t!374236 s!2326)))))

(assert (=> b!5284348 (= (matchZipper!1155 lt!2159763 (t!374236 s!2326)) e!3285551)))

(declare-fun res!2241144 () Bool)

(assert (=> b!5284348 (=> res!2241144 e!3285551)))

(assert (=> b!5284348 (= res!2241144 lt!2159766)))

(assert (=> b!5284348 (= lt!2159766 (matchZipper!1155 lt!2159771 (t!374236 s!2326)))))

(declare-fun lt!2159756 () Unit!153162)

(assert (=> b!5284348 (= lt!2159756 (lemmaZipperConcatMatchesSameAsBothZippers!148 lt!2159771 lt!2159749 (t!374236 s!2326)))))

(declare-fun tp!1475880 () Bool)

(declare-fun b!5284349 () Bool)

(declare-fun inv!80524 (Context!8590) Bool)

(assert (=> b!5284349 (= e!3285553 (and (inv!80524 (h!67358 zl!343)) e!3285552 tp!1475880))))

(declare-fun b!5284350 () Bool)

(declare-fun res!2241149 () Bool)

(assert (=> b!5284350 (=> res!2241149 e!3285546)))

(declare-fun contextDepthTotal!52 (Context!8590) Int)

(assert (=> b!5284350 (= res!2241149 (>= (contextDepthTotal!52 lt!2159768) (contextDepthTotal!52 (h!67358 zl!343))))))

(declare-fun b!5284351 () Bool)

(declare-fun res!2241139 () Bool)

(assert (=> b!5284351 (=> res!2241139 e!3285540)))

(declare-fun zipperDepth!28 (List!61034) Int)

(assert (=> b!5284351 (= res!2241139 (> (zipperDepth!28 lt!2159773) (zipperDepth!28 zl!343)))))

(declare-fun b!5284352 () Bool)

(declare-fun res!2241151 () Bool)

(assert (=> b!5284352 (=> res!2241151 e!3285544)))

(assert (=> b!5284352 (= res!2241151 (not ((_ is Cons!60908) (exprs!4795 (h!67358 zl!343)))))))

(declare-fun b!5284353 () Bool)

(assert (=> b!5284353 (= e!3285549 (not e!3285544))))

(declare-fun res!2241135 () Bool)

(assert (=> b!5284353 (=> res!2241135 e!3285544)))

(assert (=> b!5284353 (= res!2241135 (not ((_ is Cons!60910) zl!343)))))

(assert (=> b!5284353 (= lt!2159757 (matchRSpec!2014 r!7292 s!2326))))

(assert (=> b!5284353 (= lt!2159757 (matchR!7096 r!7292 s!2326))))

(declare-fun lt!2159752 () Unit!153162)

(assert (=> b!5284353 (= lt!2159752 (mainMatchTheorem!2014 r!7292 s!2326))))

(declare-fun b!5284354 () Bool)

(assert (=> b!5284354 (= e!3285535 (matchZipper!1155 lt!2159769 (t!374236 s!2326)))))

(declare-fun b!5284355 () Bool)

(declare-fun tp!1475883 () Bool)

(declare-fun tp!1475889 () Bool)

(assert (=> b!5284355 (= e!3285548 (and tp!1475883 tp!1475889))))

(declare-fun b!5284356 () Bool)

(declare-fun tp!1475886 () Bool)

(assert (=> b!5284356 (= e!3285545 (and tp_is_empty!39075 tp!1475886))))

(declare-fun tp!1475881 () Bool)

(declare-fun setNonEmpty!33887 () Bool)

(declare-fun setElem!33887 () Context!8590)

(assert (=> setNonEmpty!33887 (= setRes!33887 (and tp!1475881 (inv!80524 setElem!33887) e!3285541))))

(declare-fun setRest!33887 () (InoxSet Context!8590))

(assert (=> setNonEmpty!33887 (= z!1189 ((_ map or) (store ((as const (Array Context!8590 Bool)) false) setElem!33887 true) setRest!33887))))

(declare-fun b!5284357 () Bool)

(assert (=> b!5284357 (= e!3285536 (not (matchZipper!1155 lt!2159749 (t!374236 s!2326))))))

(assert (= (and start!557902 res!2241131) b!5284327))

(assert (= (and b!5284327 res!2241130) b!5284347))

(assert (= (and b!5284347 res!2241146) b!5284353))

(assert (= (and b!5284353 (not res!2241135)) b!5284342))

(assert (= (and b!5284342 (not res!2241148)) b!5284340))

(assert (= (and b!5284340 (not res!2241143)) b!5284352))

(assert (= (and b!5284352 (not res!2241151)) b!5284329))

(assert (= (and b!5284329 (not res!2241128)) b!5284337))

(assert (= (and b!5284337 (not res!2241132)) b!5284341))

(assert (= (and b!5284341 (not res!2241137)) b!5284336))

(assert (= (and b!5284336 (not res!2241152)) b!5284328))

(assert (= (and b!5284328 c!916242) b!5284345))

(assert (= (and b!5284328 (not c!916242)) b!5284338))

(assert (= (and b!5284345 (not res!2241134)) b!5284343))

(assert (= (and b!5284328 (not res!2241145)) b!5284331))

(assert (= (and b!5284331 (not res!2241136)) b!5284322))

(assert (= (and b!5284322 (not res!2241142)) b!5284348))

(assert (= (and b!5284348 (not res!2241144)) b!5284333))

(assert (= (and b!5284348 res!2241138) b!5284357))

(assert (= (and b!5284348 (not res!2241150)) b!5284344))

(assert (= (and b!5284344 (not res!2241153)) b!5284339))

(assert (= (and b!5284339 (not res!2241129)) b!5284354))

(assert (= (and b!5284339 res!2241133) b!5284323))

(assert (= (and b!5284339 (not res!2241141)) b!5284335))

(assert (= (and b!5284335 (not res!2241147)) b!5284350))

(assert (= (and b!5284350 (not res!2241149)) b!5284326))

(assert (= (and b!5284326 (not res!2241140)) b!5284351))

(assert (= (and b!5284351 (not res!2241139)) b!5284346))

(assert (= (and start!557902 ((_ is ElementMatch!14911) r!7292)) b!5284325))

(assert (= (and start!557902 ((_ is Concat!23756) r!7292)) b!5284355))

(assert (= (and start!557902 ((_ is Star!14911) r!7292)) b!5284324))

(assert (= (and start!557902 ((_ is Union!14911) r!7292)) b!5284330))

(assert (= (and start!557902 condSetEmpty!33887) setIsEmpty!33887))

(assert (= (and start!557902 (not condSetEmpty!33887)) setNonEmpty!33887))

(assert (= setNonEmpty!33887 b!5284334))

(assert (= b!5284349 b!5284332))

(assert (= (and start!557902 ((_ is Cons!60910) zl!343)) b!5284349))

(assert (= (and start!557902 ((_ is Cons!60909) s!2326)) b!5284356))

(declare-fun m!6321936 () Bool)

(assert (=> b!5284327 m!6321936))

(declare-fun m!6321938 () Bool)

(assert (=> b!5284353 m!6321938))

(declare-fun m!6321940 () Bool)

(assert (=> b!5284353 m!6321940))

(declare-fun m!6321942 () Bool)

(assert (=> b!5284353 m!6321942))

(declare-fun m!6321944 () Bool)

(assert (=> b!5284346 m!6321944))

(declare-fun m!6321946 () Bool)

(assert (=> b!5284346 m!6321946))

(declare-fun m!6321948 () Bool)

(assert (=> b!5284346 m!6321948))

(declare-fun m!6321950 () Bool)

(assert (=> b!5284346 m!6321950))

(declare-fun m!6321952 () Bool)

(assert (=> b!5284346 m!6321952))

(declare-fun m!6321954 () Bool)

(assert (=> b!5284346 m!6321954))

(declare-fun m!6321956 () Bool)

(assert (=> b!5284346 m!6321956))

(declare-fun m!6321958 () Bool)

(assert (=> b!5284346 m!6321958))

(declare-fun m!6321960 () Bool)

(assert (=> b!5284346 m!6321960))

(declare-fun m!6321962 () Bool)

(assert (=> b!5284346 m!6321962))

(declare-fun m!6321964 () Bool)

(assert (=> b!5284340 m!6321964))

(declare-fun m!6321966 () Bool)

(assert (=> b!5284357 m!6321966))

(declare-fun m!6321968 () Bool)

(assert (=> b!5284322 m!6321968))

(declare-fun m!6321970 () Bool)

(assert (=> b!5284322 m!6321970))

(declare-fun m!6321972 () Bool)

(assert (=> b!5284350 m!6321972))

(declare-fun m!6321974 () Bool)

(assert (=> b!5284350 m!6321974))

(declare-fun m!6321976 () Bool)

(assert (=> start!557902 m!6321976))

(declare-fun m!6321978 () Bool)

(assert (=> b!5284351 m!6321978))

(declare-fun m!6321980 () Bool)

(assert (=> b!5284351 m!6321980))

(declare-fun m!6321982 () Bool)

(assert (=> b!5284341 m!6321982))

(declare-fun m!6321984 () Bool)

(assert (=> b!5284341 m!6321984))

(declare-fun m!6321986 () Bool)

(assert (=> b!5284341 m!6321986))

(assert (=> b!5284341 m!6321982))

(declare-fun m!6321988 () Bool)

(assert (=> b!5284341 m!6321988))

(declare-fun m!6321990 () Bool)

(assert (=> b!5284341 m!6321990))

(assert (=> b!5284341 m!6321984))

(declare-fun m!6321992 () Bool)

(assert (=> b!5284341 m!6321992))

(declare-fun m!6321994 () Bool)

(assert (=> b!5284329 m!6321994))

(assert (=> b!5284329 m!6321994))

(declare-fun m!6321996 () Bool)

(assert (=> b!5284329 m!6321996))

(declare-fun m!6321998 () Bool)

(assert (=> b!5284336 m!6321998))

(declare-fun m!6322000 () Bool)

(assert (=> b!5284342 m!6322000))

(declare-fun m!6322002 () Bool)

(assert (=> b!5284344 m!6322002))

(declare-fun m!6322004 () Bool)

(assert (=> b!5284344 m!6322004))

(declare-fun m!6322006 () Bool)

(assert (=> b!5284344 m!6322006))

(declare-fun m!6322008 () Bool)

(assert (=> b!5284344 m!6322008))

(declare-fun m!6322010 () Bool)

(assert (=> b!5284344 m!6322010))

(declare-fun m!6322012 () Bool)

(assert (=> b!5284344 m!6322012))

(declare-fun m!6322014 () Bool)

(assert (=> b!5284344 m!6322014))

(declare-fun m!6322016 () Bool)

(assert (=> b!5284328 m!6322016))

(declare-fun m!6322018 () Bool)

(assert (=> b!5284328 m!6322018))

(declare-fun m!6322020 () Bool)

(assert (=> b!5284328 m!6322020))

(declare-fun m!6322022 () Bool)

(assert (=> b!5284328 m!6322022))

(declare-fun m!6322024 () Bool)

(assert (=> b!5284328 m!6322024))

(declare-fun m!6322026 () Bool)

(assert (=> b!5284328 m!6322026))

(declare-fun m!6322028 () Bool)

(assert (=> b!5284328 m!6322028))

(declare-fun m!6322030 () Bool)

(assert (=> setNonEmpty!33887 m!6322030))

(declare-fun m!6322032 () Bool)

(assert (=> b!5284345 m!6322032))

(declare-fun m!6322034 () Bool)

(assert (=> b!5284345 m!6322034))

(declare-fun m!6322036 () Bool)

(assert (=> b!5284345 m!6322036))

(declare-fun m!6322038 () Bool)

(assert (=> b!5284323 m!6322038))

(assert (=> b!5284323 m!6322038))

(declare-fun m!6322040 () Bool)

(assert (=> b!5284323 m!6322040))

(declare-fun m!6322042 () Bool)

(assert (=> b!5284347 m!6322042))

(declare-fun m!6322044 () Bool)

(assert (=> b!5284343 m!6322044))

(assert (=> b!5284348 m!6322034))

(declare-fun m!6322046 () Bool)

(assert (=> b!5284348 m!6322046))

(declare-fun m!6322048 () Bool)

(assert (=> b!5284348 m!6322048))

(declare-fun m!6322050 () Bool)

(assert (=> b!5284348 m!6322050))

(declare-fun m!6322052 () Bool)

(assert (=> b!5284331 m!6322052))

(declare-fun m!6322054 () Bool)

(assert (=> b!5284339 m!6322054))

(declare-fun m!6322056 () Bool)

(assert (=> b!5284339 m!6322056))

(declare-fun m!6322058 () Bool)

(assert (=> b!5284339 m!6322058))

(assert (=> b!5284339 m!6322008))

(declare-fun m!6322060 () Bool)

(assert (=> b!5284339 m!6322060))

(declare-fun m!6322062 () Bool)

(assert (=> b!5284339 m!6322062))

(declare-fun m!6322064 () Bool)

(assert (=> b!5284349 m!6322064))

(declare-fun m!6322066 () Bool)

(assert (=> b!5284354 m!6322066))

(declare-fun m!6322068 () Bool)

(assert (=> b!5284326 m!6322068))

(declare-fun m!6322070 () Bool)

(assert (=> b!5284326 m!6322070))

(assert (=> b!5284333 m!6321966))

(check-sat (not b!5284351) (not b!5284329) (not b!5284331) (not b!5284336) (not b!5284332) (not b!5284322) (not b!5284349) (not setNonEmpty!33887) (not b!5284345) (not b!5284328) (not b!5284340) (not b!5284339) (not b!5284333) (not b!5284342) (not b!5284327) (not b!5284334) (not b!5284357) (not b!5284323) (not b!5284341) (not b!5284343) (not b!5284326) tp_is_empty!39075 (not b!5284324) (not b!5284330) (not b!5284348) (not start!557902) (not b!5284353) (not b!5284354) (not b!5284346) (not b!5284347) (not b!5284350) (not b!5284355) (not b!5284344) (not b!5284356))
(check-sat)
