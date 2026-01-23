; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570398 () Bool)

(assert start!570398)

(declare-fun b!5439206 () Bool)

(assert (=> b!5439206 true))

(assert (=> b!5439206 true))

(declare-fun lambda!286159 () Int)

(declare-fun lambda!286158 () Int)

(assert (=> b!5439206 (not (= lambda!286159 lambda!286158))))

(assert (=> b!5439206 true))

(assert (=> b!5439206 true))

(declare-fun b!5439217 () Bool)

(assert (=> b!5439217 true))

(declare-fun b!5439187 () Bool)

(declare-fun res!2315764 () Bool)

(declare-fun e!3369564 () Bool)

(assert (=> b!5439187 (=> (not res!2315764) (not e!3369564))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30784 0))(
  ( (C!30785 (val!25094 Int)) )
))
(declare-datatypes ((Regex!15257 0))(
  ( (ElementMatch!15257 (c!949049 C!30784)) (Concat!24102 (regOne!31026 Regex!15257) (regTwo!31026 Regex!15257)) (EmptyExpr!15257) (Star!15257 (reg!15586 Regex!15257)) (EmptyLang!15257) (Union!15257 (regOne!31027 Regex!15257) (regTwo!31027 Regex!15257)) )
))
(declare-datatypes ((List!62070 0))(
  ( (Nil!61946) (Cons!61946 (h!68394 Regex!15257) (t!375295 List!62070)) )
))
(declare-datatypes ((Context!9282 0))(
  ( (Context!9283 (exprs!5141 List!62070)) )
))
(declare-fun z!1189 () (InoxSet Context!9282))

(declare-datatypes ((List!62071 0))(
  ( (Nil!61947) (Cons!61947 (h!68395 Context!9282) (t!375296 List!62071)) )
))
(declare-fun zl!343 () List!62071)

(declare-fun toList!9041 ((InoxSet Context!9282)) List!62071)

(assert (=> b!5439187 (= res!2315764 (= (toList!9041 z!1189) zl!343))))

(declare-fun b!5439188 () Bool)

(declare-datatypes ((Unit!154570 0))(
  ( (Unit!154571) )
))
(declare-fun e!3369548 () Unit!154570)

(declare-fun Unit!154572 () Unit!154570)

(assert (=> b!5439188 (= e!3369548 Unit!154572)))

(declare-fun b!5439190 () Bool)

(declare-fun res!2315767 () Bool)

(declare-fun e!3369550 () Bool)

(assert (=> b!5439190 (=> res!2315767 e!3369550)))

(declare-fun isEmpty!33930 (List!62070) Bool)

(assert (=> b!5439190 (= res!2315767 (isEmpty!33930 (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5439191 () Bool)

(declare-fun e!3369562 () Bool)

(declare-fun tp_is_empty!39767 () Bool)

(assert (=> b!5439191 (= e!3369562 tp_is_empty!39767)))

(declare-fun b!5439192 () Bool)

(declare-fun res!2315771 () Bool)

(declare-fun e!3369554 () Bool)

(assert (=> b!5439192 (=> res!2315771 e!3369554)))

(declare-fun r!7292 () Regex!15257)

(get-info :version)

(assert (=> b!5439192 (= res!2315771 (or ((_ is EmptyExpr!15257) r!7292) ((_ is EmptyLang!15257) r!7292) ((_ is ElementMatch!15257) r!7292) ((_ is Union!15257) r!7292) (not ((_ is Concat!24102) r!7292))))))

(declare-fun b!5439193 () Bool)

(declare-fun e!3369549 () Bool)

(declare-fun e!3369553 () Bool)

(assert (=> b!5439193 (= e!3369549 e!3369553)))

(declare-fun res!2315779 () Bool)

(assert (=> b!5439193 (=> res!2315779 e!3369553)))

(declare-datatypes ((List!62072 0))(
  ( (Nil!61948) (Cons!61948 (h!68396 C!30784) (t!375297 List!62072)) )
))
(declare-fun s!2326 () List!62072)

(declare-fun lt!2218598 () (InoxSet Context!9282))

(declare-fun derivationStepZipper!1486 ((InoxSet Context!9282) C!30784) (InoxSet Context!9282))

(assert (=> b!5439193 (= res!2315779 (not (= (derivationStepZipper!1486 z!1189 (h!68396 s!2326)) lt!2218598)))))

(declare-fun lt!2218594 () (InoxSet Context!9282))

(declare-fun lt!2218611 () (InoxSet Context!9282))

(assert (=> b!5439193 (= lt!2218598 ((_ map or) lt!2218594 lt!2218611))))

(declare-fun b!5439194 () Bool)

(declare-fun e!3369557 () Bool)

(assert (=> b!5439194 (= e!3369557 e!3369549)))

(declare-fun res!2315761 () Bool)

(assert (=> b!5439194 (=> res!2315761 e!3369549)))

(declare-fun lt!2218597 () (InoxSet Context!9282))

(assert (=> b!5439194 (= res!2315761 (not (= lt!2218611 (derivationStepZipper!1486 lt!2218597 (h!68396 s!2326)))))))

(declare-fun lambda!286160 () Int)

(declare-fun lt!2218591 () Context!9282)

(declare-fun flatMap!984 ((InoxSet Context!9282) Int) (InoxSet Context!9282))

(declare-fun derivationStepZipperUp!629 (Context!9282 C!30784) (InoxSet Context!9282))

(assert (=> b!5439194 (= (flatMap!984 lt!2218597 lambda!286160) (derivationStepZipperUp!629 lt!2218591 (h!68396 s!2326)))))

(declare-fun lt!2218606 () Unit!154570)

(declare-fun lemmaFlatMapOnSingletonSet!516 ((InoxSet Context!9282) Context!9282 Int) Unit!154570)

(assert (=> b!5439194 (= lt!2218606 (lemmaFlatMapOnSingletonSet!516 lt!2218597 lt!2218591 lambda!286160))))

(assert (=> b!5439194 (= lt!2218597 (store ((as const (Array Context!9282 Bool)) false) lt!2218591 true))))

(declare-fun b!5439195 () Bool)

(declare-fun e!3369551 () Bool)

(assert (=> b!5439195 (= e!3369553 e!3369551)))

(declare-fun res!2315775 () Bool)

(assert (=> b!5439195 (=> res!2315775 e!3369551)))

(declare-fun lt!2218603 () Bool)

(declare-fun matchZipper!1501 ((InoxSet Context!9282) List!62072) Bool)

(assert (=> b!5439195 (= res!2315775 (not (= (matchZipper!1501 z!1189 s!2326) lt!2218603)))))

(declare-fun lt!2218599 () Bool)

(assert (=> b!5439195 (= lt!2218599 lt!2218603)))

(assert (=> b!5439195 (= lt!2218603 (matchZipper!1501 lt!2218611 (t!375297 s!2326)))))

(assert (=> b!5439195 (= lt!2218599 (matchZipper!1501 lt!2218598 (t!375297 s!2326)))))

(declare-fun lt!2218596 () Unit!154570)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!494 ((InoxSet Context!9282) (InoxSet Context!9282) List!62072) Unit!154570)

(assert (=> b!5439195 (= lt!2218596 (lemmaZipperConcatMatchesSameAsBothZippers!494 lt!2218594 lt!2218611 (t!375297 s!2326)))))

(declare-fun b!5439196 () Bool)

(declare-fun e!3369555 () Bool)

(declare-fun nullable!5426 (Regex!15257) Bool)

(assert (=> b!5439196 (= e!3369555 (nullable!5426 (regOne!31026 (regOne!31026 r!7292))))))

(declare-fun setNonEmpty!35553 () Bool)

(declare-fun tp!1499721 () Bool)

(declare-fun e!3369556 () Bool)

(declare-fun setRes!35553 () Bool)

(declare-fun setElem!35553 () Context!9282)

(declare-fun inv!81389 (Context!9282) Bool)

(assert (=> setNonEmpty!35553 (= setRes!35553 (and tp!1499721 (inv!81389 setElem!35553) e!3369556))))

(declare-fun setRest!35553 () (InoxSet Context!9282))

(assert (=> setNonEmpty!35553 (= z!1189 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) setElem!35553 true) setRest!35553))))

(declare-fun b!5439197 () Bool)

(declare-fun res!2315778 () Bool)

(assert (=> b!5439197 (=> res!2315778 e!3369554)))

(declare-fun isEmpty!33931 (List!62071) Bool)

(assert (=> b!5439197 (= res!2315778 (not (isEmpty!33931 (t!375296 zl!343))))))

(declare-fun setIsEmpty!35553 () Bool)

(assert (=> setIsEmpty!35553 setRes!35553))

(declare-fun b!5439198 () Bool)

(declare-fun tp!1499726 () Bool)

(assert (=> b!5439198 (= e!3369556 tp!1499726)))

(declare-fun b!5439199 () Bool)

(declare-fun e!3369561 () Bool)

(declare-fun e!3369558 () Bool)

(assert (=> b!5439199 (= e!3369561 e!3369558)))

(declare-fun res!2315773 () Bool)

(assert (=> b!5439199 (=> res!2315773 e!3369558)))

(assert (=> b!5439199 (= res!2315773 (or (not (= lt!2218594 ((as const (Array Context!9282 Bool)) false))) (not (= r!7292 (Concat!24102 (regOne!31026 r!7292) (regTwo!31026 r!7292)))) (not (= (regOne!31026 r!7292) EmptyExpr!15257))))))

(assert (=> b!5439199 (not (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(declare-fun lt!2218593 () Unit!154570)

(declare-fun lemmaEmptyZipperMatchesNothing!12 ((InoxSet Context!9282) List!62072) Unit!154570)

(assert (=> b!5439199 (= lt!2218593 (lemmaEmptyZipperMatchesNothing!12 lt!2218594 (t!375297 s!2326)))))

(declare-fun b!5439200 () Bool)

(declare-fun tp!1499728 () Bool)

(declare-fun tp!1499720 () Bool)

(assert (=> b!5439200 (= e!3369562 (and tp!1499728 tp!1499720))))

(declare-fun b!5439201 () Bool)

(assert (=> b!5439201 (= e!3369564 (not e!3369554))))

(declare-fun res!2315765 () Bool)

(assert (=> b!5439201 (=> res!2315765 e!3369554)))

(assert (=> b!5439201 (= res!2315765 (not ((_ is Cons!61947) zl!343)))))

(declare-fun lt!2218592 () Bool)

(declare-fun matchRSpec!2360 (Regex!15257 List!62072) Bool)

(assert (=> b!5439201 (= lt!2218592 (matchRSpec!2360 r!7292 s!2326))))

(declare-fun matchR!7442 (Regex!15257 List!62072) Bool)

(assert (=> b!5439201 (= lt!2218592 (matchR!7442 r!7292 s!2326))))

(declare-fun lt!2218610 () Unit!154570)

(declare-fun mainMatchTheorem!2360 (Regex!15257 List!62072) Unit!154570)

(assert (=> b!5439201 (= lt!2218610 (mainMatchTheorem!2360 r!7292 s!2326))))

(declare-fun b!5439202 () Bool)

(declare-fun res!2315770 () Bool)

(assert (=> b!5439202 (=> res!2315770 e!3369554)))

(declare-fun generalisedUnion!1186 (List!62070) Regex!15257)

(declare-fun unfocusZipperList!699 (List!62071) List!62070)

(assert (=> b!5439202 (= res!2315770 (not (= r!7292 (generalisedUnion!1186 (unfocusZipperList!699 zl!343)))))))

(declare-fun res!2315774 () Bool)

(assert (=> start!570398 (=> (not res!2315774) (not e!3369564))))

(declare-fun validRegex!6993 (Regex!15257) Bool)

(assert (=> start!570398 (= res!2315774 (validRegex!6993 r!7292))))

(assert (=> start!570398 e!3369564))

(assert (=> start!570398 e!3369562))

(declare-fun condSetEmpty!35553 () Bool)

(assert (=> start!570398 (= condSetEmpty!35553 (= z!1189 ((as const (Array Context!9282 Bool)) false)))))

(assert (=> start!570398 setRes!35553))

(declare-fun e!3369552 () Bool)

(assert (=> start!570398 e!3369552))

(declare-fun e!3369559 () Bool)

(assert (=> start!570398 e!3369559))

(declare-fun b!5439189 () Bool)

(declare-fun res!2315780 () Bool)

(assert (=> b!5439189 (=> res!2315780 e!3369554)))

(declare-fun generalisedConcat!926 (List!62070) Regex!15257)

(assert (=> b!5439189 (= res!2315780 (not (= r!7292 (generalisedConcat!926 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun b!5439203 () Bool)

(declare-fun tp!1499725 () Bool)

(declare-fun tp!1499723 () Bool)

(assert (=> b!5439203 (= e!3369562 (and tp!1499725 tp!1499723))))

(declare-fun b!5439204 () Bool)

(declare-fun res!2315762 () Bool)

(assert (=> b!5439204 (=> (not res!2315762) (not e!3369564))))

(declare-fun unfocusZipper!999 (List!62071) Regex!15257)

(assert (=> b!5439204 (= res!2315762 (= r!7292 (unfocusZipper!999 zl!343)))))

(declare-fun b!5439205 () Bool)

(declare-fun tp!1499722 () Bool)

(assert (=> b!5439205 (= e!3369559 (and tp_is_empty!39767 tp!1499722))))

(assert (=> b!5439206 (= e!3369554 e!3369550)))

(declare-fun res!2315763 () Bool)

(assert (=> b!5439206 (=> res!2315763 e!3369550)))

(declare-fun lt!2218600 () Bool)

(assert (=> b!5439206 (= res!2315763 (or (not (= lt!2218592 lt!2218600)) ((_ is Nil!61948) s!2326)))))

(declare-fun Exists!2438 (Int) Bool)

(assert (=> b!5439206 (= (Exists!2438 lambda!286158) (Exists!2438 lambda!286159))))

(declare-fun lt!2218595 () Unit!154570)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1092 (Regex!15257 Regex!15257 List!62072) Unit!154570)

(assert (=> b!5439206 (= lt!2218595 (lemmaExistCutMatchRandMatchRSpecEquivalent!1092 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326))))

(assert (=> b!5439206 (= lt!2218600 (Exists!2438 lambda!286158))))

(declare-datatypes ((tuple2!64912 0))(
  ( (tuple2!64913 (_1!35759 List!62072) (_2!35759 List!62072)) )
))
(declare-datatypes ((Option!15368 0))(
  ( (None!15367) (Some!15367 (v!51396 tuple2!64912)) )
))
(declare-fun isDefined!12071 (Option!15368) Bool)

(declare-fun findConcatSeparation!1782 (Regex!15257 Regex!15257 List!62072 List!62072 List!62072) Option!15368)

(assert (=> b!5439206 (= lt!2218600 (isDefined!12071 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326)))))

(declare-fun lt!2218604 () Unit!154570)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1546 (Regex!15257 Regex!15257 List!62072) Unit!154570)

(assert (=> b!5439206 (= lt!2218604 (lemmaFindConcatSeparationEquivalentToExists!1546 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326))))

(declare-fun b!5439207 () Bool)

(declare-fun Unit!154573 () Unit!154570)

(assert (=> b!5439207 (= e!3369548 Unit!154573)))

(declare-fun lt!2218607 () Unit!154570)

(assert (=> b!5439207 (= lt!2218607 (lemmaZipperConcatMatchesSameAsBothZippers!494 lt!2218594 lt!2218611 (t!375297 s!2326)))))

(declare-fun res!2315769 () Bool)

(assert (=> b!5439207 (= res!2315769 (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(declare-fun e!3369563 () Bool)

(assert (=> b!5439207 (=> res!2315769 e!3369563)))

(assert (=> b!5439207 (= (matchZipper!1501 ((_ map or) lt!2218594 lt!2218611) (t!375297 s!2326)) e!3369563)))

(declare-fun e!3369560 () Bool)

(declare-fun tp!1499729 () Bool)

(declare-fun b!5439208 () Bool)

(assert (=> b!5439208 (= e!3369552 (and (inv!81389 (h!68395 zl!343)) e!3369560 tp!1499729))))

(declare-fun b!5439209 () Bool)

(declare-fun tp!1499724 () Bool)

(assert (=> b!5439209 (= e!3369560 tp!1499724)))

(declare-fun b!5439210 () Bool)

(declare-fun res!2315781 () Bool)

(assert (=> b!5439210 (=> res!2315781 e!3369561)))

(assert (=> b!5439210 (= res!2315781 (or ((_ is Concat!24102) (regOne!31026 r!7292)) ((_ is Star!15257) (regOne!31026 r!7292)) (not ((_ is EmptyExpr!15257) (regOne!31026 r!7292)))))))

(declare-fun b!5439211 () Bool)

(declare-fun res!2315772 () Bool)

(assert (=> b!5439211 (=> res!2315772 e!3369554)))

(assert (=> b!5439211 (= res!2315772 (not ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5439212 () Bool)

(assert (=> b!5439212 (= e!3369558 e!3369557)))

(declare-fun res!2315766 () Bool)

(assert (=> b!5439212 (=> res!2315766 e!3369557)))

(declare-fun lt!2218601 () Bool)

(assert (=> b!5439212 (= res!2315766 (not (= lt!2218592 lt!2218601)))))

(assert (=> b!5439212 (= lt!2218601 (matchRSpec!2360 (regTwo!31026 r!7292) s!2326))))

(assert (=> b!5439212 (= lt!2218601 (matchR!7442 (regTwo!31026 r!7292) s!2326))))

(declare-fun lt!2218605 () Unit!154570)

(assert (=> b!5439212 (= lt!2218605 (mainMatchTheorem!2360 (regTwo!31026 r!7292) s!2326))))

(assert (=> b!5439212 (= (matchR!7442 (regOne!31026 r!7292) s!2326) (matchRSpec!2360 (regOne!31026 r!7292) s!2326))))

(declare-fun lt!2218612 () Unit!154570)

(assert (=> b!5439212 (= lt!2218612 (mainMatchTheorem!2360 (regOne!31026 r!7292) s!2326))))

(declare-fun b!5439213 () Bool)

(assert (=> b!5439213 (= e!3369563 (matchZipper!1501 lt!2218611 (t!375297 s!2326)))))

(declare-fun b!5439214 () Bool)

(declare-fun res!2315777 () Bool)

(assert (=> b!5439214 (=> res!2315777 e!3369561)))

(assert (=> b!5439214 (= res!2315777 e!3369555)))

(declare-fun res!2315768 () Bool)

(assert (=> b!5439214 (=> (not res!2315768) (not e!3369555))))

(assert (=> b!5439214 (= res!2315768 ((_ is Concat!24102) (regOne!31026 r!7292)))))

(declare-fun b!5439215 () Bool)

(declare-fun lambda!286161 () Int)

(declare-fun forall!14574 (List!62070 Int) Bool)

(assert (=> b!5439215 (= e!3369551 (forall!14574 (t!375295 (exprs!5141 (h!68395 zl!343))) lambda!286161))))

(declare-fun b!5439216 () Bool)

(declare-fun tp!1499727 () Bool)

(assert (=> b!5439216 (= e!3369562 tp!1499727)))

(assert (=> b!5439217 (= e!3369550 e!3369561)))

(declare-fun res!2315776 () Bool)

(assert (=> b!5439217 (=> res!2315776 e!3369561)))

(assert (=> b!5439217 (= res!2315776 (or (and ((_ is ElementMatch!15257) (regOne!31026 r!7292)) (= (c!949049 (regOne!31026 r!7292)) (h!68396 s!2326))) ((_ is Union!15257) (regOne!31026 r!7292))))))

(declare-fun lt!2218602 () Unit!154570)

(assert (=> b!5439217 (= lt!2218602 e!3369548)))

(declare-fun c!949048 () Bool)

(assert (=> b!5439217 (= c!949048 (nullable!5426 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> b!5439217 (= (flatMap!984 z!1189 lambda!286160) (derivationStepZipperUp!629 (h!68395 zl!343) (h!68396 s!2326)))))

(declare-fun lt!2218609 () Unit!154570)

(assert (=> b!5439217 (= lt!2218609 (lemmaFlatMapOnSingletonSet!516 z!1189 (h!68395 zl!343) lambda!286160))))

(assert (=> b!5439217 (= lt!2218611 (derivationStepZipperUp!629 lt!2218591 (h!68396 s!2326)))))

(declare-fun derivationStepZipperDown!705 (Regex!15257 Context!9282 C!30784) (InoxSet Context!9282))

(assert (=> b!5439217 (= lt!2218594 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (h!68395 zl!343))) lt!2218591 (h!68396 s!2326)))))

(assert (=> b!5439217 (= lt!2218591 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun lt!2218608 () (InoxSet Context!9282))

(assert (=> b!5439217 (= lt!2218608 (derivationStepZipperUp!629 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))) (h!68396 s!2326)))))

(assert (= (and start!570398 res!2315774) b!5439187))

(assert (= (and b!5439187 res!2315764) b!5439204))

(assert (= (and b!5439204 res!2315762) b!5439201))

(assert (= (and b!5439201 (not res!2315765)) b!5439197))

(assert (= (and b!5439197 (not res!2315778)) b!5439189))

(assert (= (and b!5439189 (not res!2315780)) b!5439211))

(assert (= (and b!5439211 (not res!2315772)) b!5439202))

(assert (= (and b!5439202 (not res!2315770)) b!5439192))

(assert (= (and b!5439192 (not res!2315771)) b!5439206))

(assert (= (and b!5439206 (not res!2315763)) b!5439190))

(assert (= (and b!5439190 (not res!2315767)) b!5439217))

(assert (= (and b!5439217 c!949048) b!5439207))

(assert (= (and b!5439217 (not c!949048)) b!5439188))

(assert (= (and b!5439207 (not res!2315769)) b!5439213))

(assert (= (and b!5439217 (not res!2315776)) b!5439214))

(assert (= (and b!5439214 res!2315768) b!5439196))

(assert (= (and b!5439214 (not res!2315777)) b!5439210))

(assert (= (and b!5439210 (not res!2315781)) b!5439199))

(assert (= (and b!5439199 (not res!2315773)) b!5439212))

(assert (= (and b!5439212 (not res!2315766)) b!5439194))

(assert (= (and b!5439194 (not res!2315761)) b!5439193))

(assert (= (and b!5439193 (not res!2315779)) b!5439195))

(assert (= (and b!5439195 (not res!2315775)) b!5439215))

(assert (= (and start!570398 ((_ is ElementMatch!15257) r!7292)) b!5439191))

(assert (= (and start!570398 ((_ is Concat!24102) r!7292)) b!5439200))

(assert (= (and start!570398 ((_ is Star!15257) r!7292)) b!5439216))

(assert (= (and start!570398 ((_ is Union!15257) r!7292)) b!5439203))

(assert (= (and start!570398 condSetEmpty!35553) setIsEmpty!35553))

(assert (= (and start!570398 (not condSetEmpty!35553)) setNonEmpty!35553))

(assert (= setNonEmpty!35553 b!5439198))

(assert (= b!5439208 b!5439209))

(assert (= (and start!570398 ((_ is Cons!61947) zl!343)) b!5439208))

(assert (= (and start!570398 ((_ is Cons!61948) s!2326)) b!5439205))

(declare-fun m!6460512 () Bool)

(assert (=> b!5439194 m!6460512))

(declare-fun m!6460514 () Bool)

(assert (=> b!5439194 m!6460514))

(declare-fun m!6460516 () Bool)

(assert (=> b!5439194 m!6460516))

(declare-fun m!6460518 () Bool)

(assert (=> b!5439194 m!6460518))

(declare-fun m!6460520 () Bool)

(assert (=> b!5439194 m!6460520))

(declare-fun m!6460522 () Bool)

(assert (=> b!5439213 m!6460522))

(declare-fun m!6460524 () Bool)

(assert (=> b!5439217 m!6460524))

(assert (=> b!5439217 m!6460514))

(declare-fun m!6460526 () Bool)

(assert (=> b!5439217 m!6460526))

(declare-fun m!6460528 () Bool)

(assert (=> b!5439217 m!6460528))

(declare-fun m!6460530 () Bool)

(assert (=> b!5439217 m!6460530))

(declare-fun m!6460532 () Bool)

(assert (=> b!5439217 m!6460532))

(declare-fun m!6460534 () Bool)

(assert (=> b!5439217 m!6460534))

(declare-fun m!6460536 () Bool)

(assert (=> b!5439204 m!6460536))

(declare-fun m!6460538 () Bool)

(assert (=> b!5439199 m!6460538))

(declare-fun m!6460540 () Bool)

(assert (=> b!5439199 m!6460540))

(declare-fun m!6460542 () Bool)

(assert (=> b!5439193 m!6460542))

(declare-fun m!6460544 () Bool)

(assert (=> b!5439207 m!6460544))

(assert (=> b!5439207 m!6460538))

(declare-fun m!6460546 () Bool)

(assert (=> b!5439207 m!6460546))

(declare-fun m!6460548 () Bool)

(assert (=> b!5439197 m!6460548))

(declare-fun m!6460550 () Bool)

(assert (=> b!5439195 m!6460550))

(assert (=> b!5439195 m!6460522))

(declare-fun m!6460552 () Bool)

(assert (=> b!5439195 m!6460552))

(assert (=> b!5439195 m!6460544))

(declare-fun m!6460554 () Bool)

(assert (=> b!5439201 m!6460554))

(declare-fun m!6460556 () Bool)

(assert (=> b!5439201 m!6460556))

(declare-fun m!6460558 () Bool)

(assert (=> b!5439201 m!6460558))

(declare-fun m!6460560 () Bool)

(assert (=> b!5439202 m!6460560))

(assert (=> b!5439202 m!6460560))

(declare-fun m!6460562 () Bool)

(assert (=> b!5439202 m!6460562))

(declare-fun m!6460564 () Bool)

(assert (=> b!5439187 m!6460564))

(declare-fun m!6460566 () Bool)

(assert (=> b!5439196 m!6460566))

(declare-fun m!6460568 () Bool)

(assert (=> b!5439190 m!6460568))

(declare-fun m!6460570 () Bool)

(assert (=> b!5439206 m!6460570))

(declare-fun m!6460572 () Bool)

(assert (=> b!5439206 m!6460572))

(declare-fun m!6460574 () Bool)

(assert (=> b!5439206 m!6460574))

(declare-fun m!6460576 () Bool)

(assert (=> b!5439206 m!6460576))

(declare-fun m!6460578 () Bool)

(assert (=> b!5439206 m!6460578))

(assert (=> b!5439206 m!6460570))

(assert (=> b!5439206 m!6460572))

(declare-fun m!6460580 () Bool)

(assert (=> b!5439206 m!6460580))

(declare-fun m!6460582 () Bool)

(assert (=> b!5439212 m!6460582))

(declare-fun m!6460584 () Bool)

(assert (=> b!5439212 m!6460584))

(declare-fun m!6460586 () Bool)

(assert (=> b!5439212 m!6460586))

(declare-fun m!6460588 () Bool)

(assert (=> b!5439212 m!6460588))

(declare-fun m!6460590 () Bool)

(assert (=> b!5439212 m!6460590))

(declare-fun m!6460592 () Bool)

(assert (=> b!5439212 m!6460592))

(declare-fun m!6460594 () Bool)

(assert (=> b!5439189 m!6460594))

(declare-fun m!6460596 () Bool)

(assert (=> start!570398 m!6460596))

(declare-fun m!6460598 () Bool)

(assert (=> setNonEmpty!35553 m!6460598))

(declare-fun m!6460600 () Bool)

(assert (=> b!5439208 m!6460600))

(declare-fun m!6460602 () Bool)

(assert (=> b!5439215 m!6460602))

(check-sat (not b!5439194) (not b!5439208) (not b!5439199) (not b!5439213) (not b!5439216) (not b!5439205) (not b!5439189) (not b!5439215) (not b!5439207) (not b!5439201) (not b!5439209) (not b!5439217) (not b!5439197) (not b!5439196) (not b!5439202) (not b!5439200) (not b!5439187) tp_is_empty!39767 (not b!5439190) (not b!5439212) (not start!570398) (not b!5439203) (not b!5439193) (not setNonEmpty!35553) (not b!5439198) (not b!5439195) (not b!5439204) (not b!5439206))
(check-sat)
(get-model)

(declare-fun bs!1255076 () Bool)

(declare-fun b!5439367 () Bool)

(assert (= bs!1255076 (and b!5439367 b!5439206)))

(declare-fun lambda!286184 () Int)

(assert (=> bs!1255076 (not (= lambda!286184 lambda!286158))))

(assert (=> bs!1255076 (not (= lambda!286184 lambda!286159))))

(assert (=> b!5439367 true))

(assert (=> b!5439367 true))

(declare-fun bs!1255077 () Bool)

(declare-fun b!5439371 () Bool)

(assert (= bs!1255077 (and b!5439371 b!5439206)))

(declare-fun lambda!286185 () Int)

(assert (=> bs!1255077 (not (= lambda!286185 lambda!286158))))

(assert (=> bs!1255077 (= lambda!286185 lambda!286159)))

(declare-fun bs!1255078 () Bool)

(assert (= bs!1255078 (and b!5439371 b!5439367)))

(assert (=> bs!1255078 (not (= lambda!286185 lambda!286184))))

(assert (=> b!5439371 true))

(assert (=> b!5439371 true))

(declare-fun e!3369648 () Bool)

(declare-fun call!390005 () Bool)

(assert (=> b!5439367 (= e!3369648 call!390005)))

(declare-fun b!5439369 () Bool)

(declare-fun res!2315831 () Bool)

(assert (=> b!5439369 (=> res!2315831 e!3369648)))

(declare-fun call!390004 () Bool)

(assert (=> b!5439369 (= res!2315831 call!390004)))

(declare-fun e!3369653 () Bool)

(assert (=> b!5439369 (= e!3369653 e!3369648)))

(declare-fun bm!389999 () Bool)

(declare-fun isEmpty!33933 (List!62072) Bool)

(assert (=> bm!389999 (= call!390004 (isEmpty!33933 s!2326))))

(declare-fun bm!390000 () Bool)

(declare-fun c!949101 () Bool)

(assert (=> bm!390000 (= call!390005 (Exists!2438 (ite c!949101 lambda!286184 lambda!286185)))))

(declare-fun b!5439370 () Bool)

(declare-fun c!949102 () Bool)

(assert (=> b!5439370 (= c!949102 ((_ is ElementMatch!15257) r!7292))))

(declare-fun e!3369650 () Bool)

(declare-fun e!3369647 () Bool)

(assert (=> b!5439370 (= e!3369650 e!3369647)))

(declare-fun d!1732522 () Bool)

(declare-fun c!949100 () Bool)

(assert (=> d!1732522 (= c!949100 ((_ is EmptyExpr!15257) r!7292))))

(declare-fun e!3369652 () Bool)

(assert (=> d!1732522 (= (matchRSpec!2360 r!7292 s!2326) e!3369652)))

(declare-fun b!5439368 () Bool)

(declare-fun e!3369649 () Bool)

(declare-fun e!3369651 () Bool)

(assert (=> b!5439368 (= e!3369649 e!3369651)))

(declare-fun res!2315829 () Bool)

(assert (=> b!5439368 (= res!2315829 (matchRSpec!2360 (regOne!31027 r!7292) s!2326))))

(assert (=> b!5439368 (=> res!2315829 e!3369651)))

(assert (=> b!5439371 (= e!3369653 call!390005)))

(declare-fun b!5439372 () Bool)

(declare-fun c!949099 () Bool)

(assert (=> b!5439372 (= c!949099 ((_ is Union!15257) r!7292))))

(assert (=> b!5439372 (= e!3369647 e!3369649)))

(declare-fun b!5439373 () Bool)

(assert (=> b!5439373 (= e!3369647 (= s!2326 (Cons!61948 (c!949049 r!7292) Nil!61948)))))

(declare-fun b!5439374 () Bool)

(assert (=> b!5439374 (= e!3369651 (matchRSpec!2360 (regTwo!31027 r!7292) s!2326))))

(declare-fun b!5439375 () Bool)

(assert (=> b!5439375 (= e!3369652 e!3369650)))

(declare-fun res!2315830 () Bool)

(assert (=> b!5439375 (= res!2315830 (not ((_ is EmptyLang!15257) r!7292)))))

(assert (=> b!5439375 (=> (not res!2315830) (not e!3369650))))

(declare-fun b!5439376 () Bool)

(assert (=> b!5439376 (= e!3369649 e!3369653)))

(assert (=> b!5439376 (= c!949101 ((_ is Star!15257) r!7292))))

(declare-fun b!5439377 () Bool)

(assert (=> b!5439377 (= e!3369652 call!390004)))

(assert (= (and d!1732522 c!949100) b!5439377))

(assert (= (and d!1732522 (not c!949100)) b!5439375))

(assert (= (and b!5439375 res!2315830) b!5439370))

(assert (= (and b!5439370 c!949102) b!5439373))

(assert (= (and b!5439370 (not c!949102)) b!5439372))

(assert (= (and b!5439372 c!949099) b!5439368))

(assert (= (and b!5439372 (not c!949099)) b!5439376))

(assert (= (and b!5439368 (not res!2315829)) b!5439374))

(assert (= (and b!5439376 c!949101) b!5439369))

(assert (= (and b!5439376 (not c!949101)) b!5439371))

(assert (= (and b!5439369 (not res!2315831)) b!5439367))

(assert (= (or b!5439367 b!5439371) bm!390000))

(assert (= (or b!5439377 b!5439369) bm!389999))

(declare-fun m!6460694 () Bool)

(assert (=> bm!389999 m!6460694))

(declare-fun m!6460696 () Bool)

(assert (=> bm!390000 m!6460696))

(declare-fun m!6460698 () Bool)

(assert (=> b!5439368 m!6460698))

(declare-fun m!6460700 () Bool)

(assert (=> b!5439374 m!6460700))

(assert (=> b!5439201 d!1732522))

(declare-fun b!5439475 () Bool)

(declare-fun e!3369712 () Bool)

(declare-fun lt!2218639 () Bool)

(assert (=> b!5439475 (= e!3369712 (not lt!2218639))))

(declare-fun b!5439476 () Bool)

(declare-fun res!2315890 () Bool)

(declare-fun e!3369716 () Bool)

(assert (=> b!5439476 (=> res!2315890 e!3369716)))

(assert (=> b!5439476 (= res!2315890 (not ((_ is ElementMatch!15257) r!7292)))))

(assert (=> b!5439476 (= e!3369712 e!3369716)))

(declare-fun b!5439477 () Bool)

(declare-fun res!2315893 () Bool)

(declare-fun e!3369710 () Bool)

(assert (=> b!5439477 (=> res!2315893 e!3369710)))

(declare-fun tail!10762 (List!62072) List!62072)

(assert (=> b!5439477 (= res!2315893 (not (isEmpty!33933 (tail!10762 s!2326))))))

(declare-fun b!5439478 () Bool)

(declare-fun e!3369714 () Bool)

(assert (=> b!5439478 (= e!3369714 (nullable!5426 r!7292))))

(declare-fun bm!390015 () Bool)

(declare-fun call!390020 () Bool)

(assert (=> bm!390015 (= call!390020 (isEmpty!33933 s!2326))))

(declare-fun b!5439479 () Bool)

(declare-fun res!2315887 () Bool)

(assert (=> b!5439479 (=> res!2315887 e!3369716)))

(declare-fun e!3369711 () Bool)

(assert (=> b!5439479 (= res!2315887 e!3369711)))

(declare-fun res!2315888 () Bool)

(assert (=> b!5439479 (=> (not res!2315888) (not e!3369711))))

(assert (=> b!5439479 (= res!2315888 lt!2218639)))

(declare-fun b!5439480 () Bool)

(declare-fun e!3369715 () Bool)

(assert (=> b!5439480 (= e!3369715 e!3369712)))

(declare-fun c!949126 () Bool)

(assert (=> b!5439480 (= c!949126 ((_ is EmptyLang!15257) r!7292))))

(declare-fun b!5439481 () Bool)

(declare-fun e!3369713 () Bool)

(assert (=> b!5439481 (= e!3369713 e!3369710)))

(declare-fun res!2315889 () Bool)

(assert (=> b!5439481 (=> res!2315889 e!3369710)))

(assert (=> b!5439481 (= res!2315889 call!390020)))

(declare-fun b!5439482 () Bool)

(declare-fun head!11665 (List!62072) C!30784)

(assert (=> b!5439482 (= e!3369710 (not (= (head!11665 s!2326) (c!949049 r!7292))))))

(declare-fun b!5439483 () Bool)

(declare-fun derivativeStep!4295 (Regex!15257 C!30784) Regex!15257)

(assert (=> b!5439483 (= e!3369714 (matchR!7442 (derivativeStep!4295 r!7292 (head!11665 s!2326)) (tail!10762 s!2326)))))

(declare-fun b!5439484 () Bool)

(assert (=> b!5439484 (= e!3369716 e!3369713)))

(declare-fun res!2315894 () Bool)

(assert (=> b!5439484 (=> (not res!2315894) (not e!3369713))))

(assert (=> b!5439484 (= res!2315894 (not lt!2218639))))

(declare-fun b!5439485 () Bool)

(assert (=> b!5439485 (= e!3369711 (= (head!11665 s!2326) (c!949049 r!7292)))))

(declare-fun b!5439487 () Bool)

(assert (=> b!5439487 (= e!3369715 (= lt!2218639 call!390020))))

(declare-fun b!5439488 () Bool)

(declare-fun res!2315891 () Bool)

(assert (=> b!5439488 (=> (not res!2315891) (not e!3369711))))

(assert (=> b!5439488 (= res!2315891 (not call!390020))))

(declare-fun d!1732536 () Bool)

(assert (=> d!1732536 e!3369715))

(declare-fun c!949125 () Bool)

(assert (=> d!1732536 (= c!949125 ((_ is EmptyExpr!15257) r!7292))))

(assert (=> d!1732536 (= lt!2218639 e!3369714)))

(declare-fun c!949124 () Bool)

(assert (=> d!1732536 (= c!949124 (isEmpty!33933 s!2326))))

(assert (=> d!1732536 (validRegex!6993 r!7292)))

(assert (=> d!1732536 (= (matchR!7442 r!7292 s!2326) lt!2218639)))

(declare-fun b!5439486 () Bool)

(declare-fun res!2315892 () Bool)

(assert (=> b!5439486 (=> (not res!2315892) (not e!3369711))))

(assert (=> b!5439486 (= res!2315892 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (= (and d!1732536 c!949124) b!5439478))

(assert (= (and d!1732536 (not c!949124)) b!5439483))

(assert (= (and d!1732536 c!949125) b!5439487))

(assert (= (and d!1732536 (not c!949125)) b!5439480))

(assert (= (and b!5439480 c!949126) b!5439475))

(assert (= (and b!5439480 (not c!949126)) b!5439476))

(assert (= (and b!5439476 (not res!2315890)) b!5439479))

(assert (= (and b!5439479 res!2315888) b!5439488))

(assert (= (and b!5439488 res!2315891) b!5439486))

(assert (= (and b!5439486 res!2315892) b!5439485))

(assert (= (and b!5439479 (not res!2315887)) b!5439484))

(assert (= (and b!5439484 res!2315894) b!5439481))

(assert (= (and b!5439481 (not res!2315889)) b!5439477))

(assert (= (and b!5439477 (not res!2315893)) b!5439482))

(assert (= (or b!5439487 b!5439488 b!5439481) bm!390015))

(declare-fun m!6460718 () Bool)

(assert (=> b!5439478 m!6460718))

(declare-fun m!6460720 () Bool)

(assert (=> b!5439477 m!6460720))

(assert (=> b!5439477 m!6460720))

(declare-fun m!6460722 () Bool)

(assert (=> b!5439477 m!6460722))

(assert (=> b!5439486 m!6460720))

(assert (=> b!5439486 m!6460720))

(assert (=> b!5439486 m!6460722))

(assert (=> bm!390015 m!6460694))

(declare-fun m!6460724 () Bool)

(assert (=> b!5439485 m!6460724))

(assert (=> b!5439482 m!6460724))

(assert (=> d!1732536 m!6460694))

(assert (=> d!1732536 m!6460596))

(assert (=> b!5439483 m!6460724))

(assert (=> b!5439483 m!6460724))

(declare-fun m!6460726 () Bool)

(assert (=> b!5439483 m!6460726))

(assert (=> b!5439483 m!6460720))

(assert (=> b!5439483 m!6460726))

(assert (=> b!5439483 m!6460720))

(declare-fun m!6460728 () Bool)

(assert (=> b!5439483 m!6460728))

(assert (=> b!5439201 d!1732536))

(declare-fun d!1732544 () Bool)

(assert (=> d!1732544 (= (matchR!7442 r!7292 s!2326) (matchRSpec!2360 r!7292 s!2326))))

(declare-fun lt!2218651 () Unit!154570)

(declare-fun choose!41261 (Regex!15257 List!62072) Unit!154570)

(assert (=> d!1732544 (= lt!2218651 (choose!41261 r!7292 s!2326))))

(assert (=> d!1732544 (validRegex!6993 r!7292)))

(assert (=> d!1732544 (= (mainMatchTheorem!2360 r!7292 s!2326) lt!2218651)))

(declare-fun bs!1255082 () Bool)

(assert (= bs!1255082 d!1732544))

(assert (=> bs!1255082 m!6460556))

(assert (=> bs!1255082 m!6460554))

(declare-fun m!6460756 () Bool)

(assert (=> bs!1255082 m!6460756))

(assert (=> bs!1255082 m!6460596))

(assert (=> b!5439201 d!1732544))

(declare-fun bs!1255083 () Bool)

(declare-fun d!1732552 () Bool)

(assert (= bs!1255083 (and d!1732552 b!5439217)))

(declare-fun lambda!286189 () Int)

(assert (=> bs!1255083 (= lambda!286189 lambda!286160)))

(assert (=> d!1732552 true))

(assert (=> d!1732552 (= (derivationStepZipper!1486 z!1189 (h!68396 s!2326)) (flatMap!984 z!1189 lambda!286189))))

(declare-fun bs!1255084 () Bool)

(assert (= bs!1255084 d!1732552))

(declare-fun m!6460758 () Bool)

(assert (=> bs!1255084 m!6460758))

(assert (=> b!5439193 d!1732552))

(declare-fun bs!1255087 () Bool)

(declare-fun b!5439522 () Bool)

(assert (= bs!1255087 (and b!5439522 b!5439206)))

(declare-fun lambda!286192 () Int)

(assert (=> bs!1255087 (not (= lambda!286192 lambda!286158))))

(assert (=> bs!1255087 (not (= lambda!286192 lambda!286159))))

(declare-fun bs!1255090 () Bool)

(assert (= bs!1255090 (and b!5439522 b!5439367)))

(assert (=> bs!1255090 (= (and (= (reg!15586 (regOne!31026 r!7292)) (reg!15586 r!7292)) (= (regOne!31026 r!7292) r!7292)) (= lambda!286192 lambda!286184))))

(declare-fun bs!1255091 () Bool)

(assert (= bs!1255091 (and b!5439522 b!5439371)))

(assert (=> bs!1255091 (not (= lambda!286192 lambda!286185))))

(assert (=> b!5439522 true))

(assert (=> b!5439522 true))

(declare-fun bs!1255092 () Bool)

(declare-fun b!5439526 () Bool)

(assert (= bs!1255092 (and b!5439526 b!5439522)))

(declare-fun lambda!286193 () Int)

(assert (=> bs!1255092 (not (= lambda!286193 lambda!286192))))

(declare-fun bs!1255093 () Bool)

(assert (= bs!1255093 (and b!5439526 b!5439206)))

(assert (=> bs!1255093 (not (= lambda!286193 lambda!286158))))

(declare-fun bs!1255094 () Bool)

(assert (= bs!1255094 (and b!5439526 b!5439367)))

(assert (=> bs!1255094 (not (= lambda!286193 lambda!286184))))

(declare-fun bs!1255095 () Bool)

(assert (= bs!1255095 (and b!5439526 b!5439371)))

(assert (=> bs!1255095 (= (and (= (regOne!31026 (regOne!31026 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286193 lambda!286185))))

(assert (=> bs!1255093 (= (and (= (regOne!31026 (regOne!31026 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286193 lambda!286159))))

(assert (=> b!5439526 true))

(assert (=> b!5439526 true))

(declare-fun e!3369735 () Bool)

(declare-fun call!390022 () Bool)

(assert (=> b!5439522 (= e!3369735 call!390022)))

(declare-fun b!5439524 () Bool)

(declare-fun res!2315916 () Bool)

(assert (=> b!5439524 (=> res!2315916 e!3369735)))

(declare-fun call!390021 () Bool)

(assert (=> b!5439524 (= res!2315916 call!390021)))

(declare-fun e!3369740 () Bool)

(assert (=> b!5439524 (= e!3369740 e!3369735)))

(declare-fun bm!390016 () Bool)

(assert (=> bm!390016 (= call!390021 (isEmpty!33933 s!2326))))

(declare-fun c!949137 () Bool)

(declare-fun bm!390017 () Bool)

(assert (=> bm!390017 (= call!390022 (Exists!2438 (ite c!949137 lambda!286192 lambda!286193)))))

(declare-fun b!5439525 () Bool)

(declare-fun c!949138 () Bool)

(assert (=> b!5439525 (= c!949138 ((_ is ElementMatch!15257) (regOne!31026 r!7292)))))

(declare-fun e!3369737 () Bool)

(declare-fun e!3369734 () Bool)

(assert (=> b!5439525 (= e!3369737 e!3369734)))

(declare-fun d!1732554 () Bool)

(declare-fun c!949136 () Bool)

(assert (=> d!1732554 (= c!949136 ((_ is EmptyExpr!15257) (regOne!31026 r!7292)))))

(declare-fun e!3369739 () Bool)

(assert (=> d!1732554 (= (matchRSpec!2360 (regOne!31026 r!7292) s!2326) e!3369739)))

(declare-fun b!5439523 () Bool)

(declare-fun e!3369736 () Bool)

(declare-fun e!3369738 () Bool)

(assert (=> b!5439523 (= e!3369736 e!3369738)))

(declare-fun res!2315914 () Bool)

(assert (=> b!5439523 (= res!2315914 (matchRSpec!2360 (regOne!31027 (regOne!31026 r!7292)) s!2326))))

(assert (=> b!5439523 (=> res!2315914 e!3369738)))

(assert (=> b!5439526 (= e!3369740 call!390022)))

(declare-fun b!5439527 () Bool)

(declare-fun c!949135 () Bool)

(assert (=> b!5439527 (= c!949135 ((_ is Union!15257) (regOne!31026 r!7292)))))

(assert (=> b!5439527 (= e!3369734 e!3369736)))

(declare-fun b!5439528 () Bool)

(assert (=> b!5439528 (= e!3369734 (= s!2326 (Cons!61948 (c!949049 (regOne!31026 r!7292)) Nil!61948)))))

(declare-fun b!5439529 () Bool)

(assert (=> b!5439529 (= e!3369738 (matchRSpec!2360 (regTwo!31027 (regOne!31026 r!7292)) s!2326))))

(declare-fun b!5439530 () Bool)

(assert (=> b!5439530 (= e!3369739 e!3369737)))

(declare-fun res!2315915 () Bool)

(assert (=> b!5439530 (= res!2315915 (not ((_ is EmptyLang!15257) (regOne!31026 r!7292))))))

(assert (=> b!5439530 (=> (not res!2315915) (not e!3369737))))

(declare-fun b!5439531 () Bool)

(assert (=> b!5439531 (= e!3369736 e!3369740)))

(assert (=> b!5439531 (= c!949137 ((_ is Star!15257) (regOne!31026 r!7292)))))

(declare-fun b!5439532 () Bool)

(assert (=> b!5439532 (= e!3369739 call!390021)))

(assert (= (and d!1732554 c!949136) b!5439532))

(assert (= (and d!1732554 (not c!949136)) b!5439530))

(assert (= (and b!5439530 res!2315915) b!5439525))

(assert (= (and b!5439525 c!949138) b!5439528))

(assert (= (and b!5439525 (not c!949138)) b!5439527))

(assert (= (and b!5439527 c!949135) b!5439523))

(assert (= (and b!5439527 (not c!949135)) b!5439531))

(assert (= (and b!5439523 (not res!2315914)) b!5439529))

(assert (= (and b!5439531 c!949137) b!5439524))

(assert (= (and b!5439531 (not c!949137)) b!5439526))

(assert (= (and b!5439524 (not res!2315916)) b!5439522))

(assert (= (or b!5439522 b!5439526) bm!390017))

(assert (= (or b!5439532 b!5439524) bm!390016))

(assert (=> bm!390016 m!6460694))

(declare-fun m!6460764 () Bool)

(assert (=> bm!390017 m!6460764))

(declare-fun m!6460766 () Bool)

(assert (=> b!5439523 m!6460766))

(declare-fun m!6460768 () Bool)

(assert (=> b!5439529 m!6460768))

(assert (=> b!5439212 d!1732554))

(declare-fun d!1732558 () Bool)

(assert (=> d!1732558 (= (matchR!7442 (regOne!31026 r!7292) s!2326) (matchRSpec!2360 (regOne!31026 r!7292) s!2326))))

(declare-fun lt!2218657 () Unit!154570)

(assert (=> d!1732558 (= lt!2218657 (choose!41261 (regOne!31026 r!7292) s!2326))))

(assert (=> d!1732558 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732558 (= (mainMatchTheorem!2360 (regOne!31026 r!7292) s!2326) lt!2218657)))

(declare-fun bs!1255096 () Bool)

(assert (= bs!1255096 d!1732558))

(assert (=> bs!1255096 m!6460588))

(assert (=> bs!1255096 m!6460590))

(declare-fun m!6460770 () Bool)

(assert (=> bs!1255096 m!6460770))

(declare-fun m!6460772 () Bool)

(assert (=> bs!1255096 m!6460772))

(assert (=> b!5439212 d!1732558))

(declare-fun b!5439533 () Bool)

(declare-fun e!3369743 () Bool)

(declare-fun lt!2218658 () Bool)

(assert (=> b!5439533 (= e!3369743 (not lt!2218658))))

(declare-fun b!5439534 () Bool)

(declare-fun res!2315920 () Bool)

(declare-fun e!3369747 () Bool)

(assert (=> b!5439534 (=> res!2315920 e!3369747)))

(assert (=> b!5439534 (= res!2315920 (not ((_ is ElementMatch!15257) (regOne!31026 r!7292))))))

(assert (=> b!5439534 (= e!3369743 e!3369747)))

(declare-fun b!5439535 () Bool)

(declare-fun res!2315923 () Bool)

(declare-fun e!3369741 () Bool)

(assert (=> b!5439535 (=> res!2315923 e!3369741)))

(assert (=> b!5439535 (= res!2315923 (not (isEmpty!33933 (tail!10762 s!2326))))))

(declare-fun b!5439536 () Bool)

(declare-fun e!3369745 () Bool)

(assert (=> b!5439536 (= e!3369745 (nullable!5426 (regOne!31026 r!7292)))))

(declare-fun bm!390018 () Bool)

(declare-fun call!390023 () Bool)

(assert (=> bm!390018 (= call!390023 (isEmpty!33933 s!2326))))

(declare-fun b!5439537 () Bool)

(declare-fun res!2315917 () Bool)

(assert (=> b!5439537 (=> res!2315917 e!3369747)))

(declare-fun e!3369742 () Bool)

(assert (=> b!5439537 (= res!2315917 e!3369742)))

(declare-fun res!2315918 () Bool)

(assert (=> b!5439537 (=> (not res!2315918) (not e!3369742))))

(assert (=> b!5439537 (= res!2315918 lt!2218658)))

(declare-fun b!5439538 () Bool)

(declare-fun e!3369746 () Bool)

(assert (=> b!5439538 (= e!3369746 e!3369743)))

(declare-fun c!949141 () Bool)

(assert (=> b!5439538 (= c!949141 ((_ is EmptyLang!15257) (regOne!31026 r!7292)))))

(declare-fun b!5439539 () Bool)

(declare-fun e!3369744 () Bool)

(assert (=> b!5439539 (= e!3369744 e!3369741)))

(declare-fun res!2315919 () Bool)

(assert (=> b!5439539 (=> res!2315919 e!3369741)))

(assert (=> b!5439539 (= res!2315919 call!390023)))

(declare-fun b!5439540 () Bool)

(assert (=> b!5439540 (= e!3369741 (not (= (head!11665 s!2326) (c!949049 (regOne!31026 r!7292)))))))

(declare-fun b!5439541 () Bool)

(assert (=> b!5439541 (= e!3369745 (matchR!7442 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)) (tail!10762 s!2326)))))

(declare-fun b!5439542 () Bool)

(assert (=> b!5439542 (= e!3369747 e!3369744)))

(declare-fun res!2315924 () Bool)

(assert (=> b!5439542 (=> (not res!2315924) (not e!3369744))))

(assert (=> b!5439542 (= res!2315924 (not lt!2218658))))

(declare-fun b!5439543 () Bool)

(assert (=> b!5439543 (= e!3369742 (= (head!11665 s!2326) (c!949049 (regOne!31026 r!7292))))))

(declare-fun b!5439545 () Bool)

(assert (=> b!5439545 (= e!3369746 (= lt!2218658 call!390023))))

(declare-fun b!5439546 () Bool)

(declare-fun res!2315921 () Bool)

(assert (=> b!5439546 (=> (not res!2315921) (not e!3369742))))

(assert (=> b!5439546 (= res!2315921 (not call!390023))))

(declare-fun d!1732560 () Bool)

(assert (=> d!1732560 e!3369746))

(declare-fun c!949140 () Bool)

(assert (=> d!1732560 (= c!949140 ((_ is EmptyExpr!15257) (regOne!31026 r!7292)))))

(assert (=> d!1732560 (= lt!2218658 e!3369745)))

(declare-fun c!949139 () Bool)

(assert (=> d!1732560 (= c!949139 (isEmpty!33933 s!2326))))

(assert (=> d!1732560 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732560 (= (matchR!7442 (regOne!31026 r!7292) s!2326) lt!2218658)))

(declare-fun b!5439544 () Bool)

(declare-fun res!2315922 () Bool)

(assert (=> b!5439544 (=> (not res!2315922) (not e!3369742))))

(assert (=> b!5439544 (= res!2315922 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (= (and d!1732560 c!949139) b!5439536))

(assert (= (and d!1732560 (not c!949139)) b!5439541))

(assert (= (and d!1732560 c!949140) b!5439545))

(assert (= (and d!1732560 (not c!949140)) b!5439538))

(assert (= (and b!5439538 c!949141) b!5439533))

(assert (= (and b!5439538 (not c!949141)) b!5439534))

(assert (= (and b!5439534 (not res!2315920)) b!5439537))

(assert (= (and b!5439537 res!2315918) b!5439546))

(assert (= (and b!5439546 res!2315921) b!5439544))

(assert (= (and b!5439544 res!2315922) b!5439543))

(assert (= (and b!5439537 (not res!2315917)) b!5439542))

(assert (= (and b!5439542 res!2315924) b!5439539))

(assert (= (and b!5439539 (not res!2315919)) b!5439535))

(assert (= (and b!5439535 (not res!2315923)) b!5439540))

(assert (= (or b!5439545 b!5439546 b!5439539) bm!390018))

(declare-fun m!6460774 () Bool)

(assert (=> b!5439536 m!6460774))

(assert (=> b!5439535 m!6460720))

(assert (=> b!5439535 m!6460720))

(assert (=> b!5439535 m!6460722))

(assert (=> b!5439544 m!6460720))

(assert (=> b!5439544 m!6460720))

(assert (=> b!5439544 m!6460722))

(assert (=> bm!390018 m!6460694))

(assert (=> b!5439543 m!6460724))

(assert (=> b!5439540 m!6460724))

(assert (=> d!1732560 m!6460694))

(assert (=> d!1732560 m!6460772))

(assert (=> b!5439541 m!6460724))

(assert (=> b!5439541 m!6460724))

(declare-fun m!6460776 () Bool)

(assert (=> b!5439541 m!6460776))

(assert (=> b!5439541 m!6460720))

(assert (=> b!5439541 m!6460776))

(assert (=> b!5439541 m!6460720))

(declare-fun m!6460778 () Bool)

(assert (=> b!5439541 m!6460778))

(assert (=> b!5439212 d!1732560))

(declare-fun bs!1255097 () Bool)

(declare-fun b!5439555 () Bool)

(assert (= bs!1255097 (and b!5439555 b!5439522)))

(declare-fun lambda!286198 () Int)

(assert (=> bs!1255097 (= (and (= (reg!15586 (regTwo!31026 r!7292)) (reg!15586 (regOne!31026 r!7292))) (= (regTwo!31026 r!7292) (regOne!31026 r!7292))) (= lambda!286198 lambda!286192))))

(declare-fun bs!1255100 () Bool)

(assert (= bs!1255100 (and b!5439555 b!5439526)))

(assert (=> bs!1255100 (not (= lambda!286198 lambda!286193))))

(declare-fun bs!1255103 () Bool)

(assert (= bs!1255103 (and b!5439555 b!5439206)))

(assert (=> bs!1255103 (not (= lambda!286198 lambda!286158))))

(declare-fun bs!1255104 () Bool)

(assert (= bs!1255104 (and b!5439555 b!5439367)))

(assert (=> bs!1255104 (= (and (= (reg!15586 (regTwo!31026 r!7292)) (reg!15586 r!7292)) (= (regTwo!31026 r!7292) r!7292)) (= lambda!286198 lambda!286184))))

(declare-fun bs!1255105 () Bool)

(assert (= bs!1255105 (and b!5439555 b!5439371)))

(assert (=> bs!1255105 (not (= lambda!286198 lambda!286185))))

(assert (=> bs!1255103 (not (= lambda!286198 lambda!286159))))

(assert (=> b!5439555 true))

(assert (=> b!5439555 true))

(declare-fun bs!1255108 () Bool)

(declare-fun b!5439559 () Bool)

(assert (= bs!1255108 (and b!5439559 b!5439522)))

(declare-fun lambda!286201 () Int)

(assert (=> bs!1255108 (not (= lambda!286201 lambda!286192))))

(declare-fun bs!1255109 () Bool)

(assert (= bs!1255109 (and b!5439559 b!5439206)))

(assert (=> bs!1255109 (not (= lambda!286201 lambda!286158))))

(declare-fun bs!1255110 () Bool)

(assert (= bs!1255110 (and b!5439559 b!5439367)))

(assert (=> bs!1255110 (not (= lambda!286201 lambda!286184))))

(declare-fun bs!1255113 () Bool)

(assert (= bs!1255113 (and b!5439559 b!5439371)))

(assert (=> bs!1255113 (= (and (= (regOne!31026 (regTwo!31026 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286201 lambda!286185))))

(assert (=> bs!1255109 (= (and (= (regOne!31026 (regTwo!31026 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286201 lambda!286159))))

(declare-fun bs!1255117 () Bool)

(assert (= bs!1255117 (and b!5439559 b!5439555)))

(assert (=> bs!1255117 (not (= lambda!286201 lambda!286198))))

(declare-fun bs!1255118 () Bool)

(assert (= bs!1255118 (and b!5439559 b!5439526)))

(assert (=> bs!1255118 (= (and (= (regOne!31026 (regTwo!31026 r!7292)) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regTwo!31026 r!7292)) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286201 lambda!286193))))

(assert (=> b!5439559 true))

(assert (=> b!5439559 true))

(declare-fun e!3369753 () Bool)

(declare-fun call!390025 () Bool)

(assert (=> b!5439555 (= e!3369753 call!390025)))

(declare-fun b!5439557 () Bool)

(declare-fun res!2315935 () Bool)

(assert (=> b!5439557 (=> res!2315935 e!3369753)))

(declare-fun call!390024 () Bool)

(assert (=> b!5439557 (= res!2315935 call!390024)))

(declare-fun e!3369758 () Bool)

(assert (=> b!5439557 (= e!3369758 e!3369753)))

(declare-fun bm!390019 () Bool)

(assert (=> bm!390019 (= call!390024 (isEmpty!33933 s!2326))))

(declare-fun bm!390020 () Bool)

(declare-fun c!949144 () Bool)

(assert (=> bm!390020 (= call!390025 (Exists!2438 (ite c!949144 lambda!286198 lambda!286201)))))

(declare-fun b!5439558 () Bool)

(declare-fun c!949145 () Bool)

(assert (=> b!5439558 (= c!949145 ((_ is ElementMatch!15257) (regTwo!31026 r!7292)))))

(declare-fun e!3369755 () Bool)

(declare-fun e!3369752 () Bool)

(assert (=> b!5439558 (= e!3369755 e!3369752)))

(declare-fun d!1732562 () Bool)

(declare-fun c!949143 () Bool)

(assert (=> d!1732562 (= c!949143 ((_ is EmptyExpr!15257) (regTwo!31026 r!7292)))))

(declare-fun e!3369757 () Bool)

(assert (=> d!1732562 (= (matchRSpec!2360 (regTwo!31026 r!7292) s!2326) e!3369757)))

(declare-fun b!5439556 () Bool)

(declare-fun e!3369754 () Bool)

(declare-fun e!3369756 () Bool)

(assert (=> b!5439556 (= e!3369754 e!3369756)))

(declare-fun res!2315933 () Bool)

(assert (=> b!5439556 (= res!2315933 (matchRSpec!2360 (regOne!31027 (regTwo!31026 r!7292)) s!2326))))

(assert (=> b!5439556 (=> res!2315933 e!3369756)))

(assert (=> b!5439559 (= e!3369758 call!390025)))

(declare-fun b!5439560 () Bool)

(declare-fun c!949142 () Bool)

(assert (=> b!5439560 (= c!949142 ((_ is Union!15257) (regTwo!31026 r!7292)))))

(assert (=> b!5439560 (= e!3369752 e!3369754)))

(declare-fun b!5439561 () Bool)

(assert (=> b!5439561 (= e!3369752 (= s!2326 (Cons!61948 (c!949049 (regTwo!31026 r!7292)) Nil!61948)))))

(declare-fun b!5439562 () Bool)

(assert (=> b!5439562 (= e!3369756 (matchRSpec!2360 (regTwo!31027 (regTwo!31026 r!7292)) s!2326))))

(declare-fun b!5439563 () Bool)

(assert (=> b!5439563 (= e!3369757 e!3369755)))

(declare-fun res!2315934 () Bool)

(assert (=> b!5439563 (= res!2315934 (not ((_ is EmptyLang!15257) (regTwo!31026 r!7292))))))

(assert (=> b!5439563 (=> (not res!2315934) (not e!3369755))))

(declare-fun b!5439564 () Bool)

(assert (=> b!5439564 (= e!3369754 e!3369758)))

(assert (=> b!5439564 (= c!949144 ((_ is Star!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5439565 () Bool)

(assert (=> b!5439565 (= e!3369757 call!390024)))

(assert (= (and d!1732562 c!949143) b!5439565))

(assert (= (and d!1732562 (not c!949143)) b!5439563))

(assert (= (and b!5439563 res!2315934) b!5439558))

(assert (= (and b!5439558 c!949145) b!5439561))

(assert (= (and b!5439558 (not c!949145)) b!5439560))

(assert (= (and b!5439560 c!949142) b!5439556))

(assert (= (and b!5439560 (not c!949142)) b!5439564))

(assert (= (and b!5439556 (not res!2315933)) b!5439562))

(assert (= (and b!5439564 c!949144) b!5439557))

(assert (= (and b!5439564 (not c!949144)) b!5439559))

(assert (= (and b!5439557 (not res!2315935)) b!5439555))

(assert (= (or b!5439555 b!5439559) bm!390020))

(assert (= (or b!5439565 b!5439557) bm!390019))

(assert (=> bm!390019 m!6460694))

(declare-fun m!6460788 () Bool)

(assert (=> bm!390020 m!6460788))

(declare-fun m!6460790 () Bool)

(assert (=> b!5439556 m!6460790))

(declare-fun m!6460792 () Bool)

(assert (=> b!5439562 m!6460792))

(assert (=> b!5439212 d!1732562))

(declare-fun b!5439577 () Bool)

(declare-fun e!3369768 () Bool)

(declare-fun lt!2218660 () Bool)

(assert (=> b!5439577 (= e!3369768 (not lt!2218660))))

(declare-fun b!5439578 () Bool)

(declare-fun res!2315942 () Bool)

(declare-fun e!3369772 () Bool)

(assert (=> b!5439578 (=> res!2315942 e!3369772)))

(assert (=> b!5439578 (= res!2315942 (not ((_ is ElementMatch!15257) (regTwo!31026 r!7292))))))

(assert (=> b!5439578 (= e!3369768 e!3369772)))

(declare-fun b!5439579 () Bool)

(declare-fun res!2315945 () Bool)

(declare-fun e!3369766 () Bool)

(assert (=> b!5439579 (=> res!2315945 e!3369766)))

(assert (=> b!5439579 (= res!2315945 (not (isEmpty!33933 (tail!10762 s!2326))))))

(declare-fun b!5439580 () Bool)

(declare-fun e!3369770 () Bool)

(assert (=> b!5439580 (= e!3369770 (nullable!5426 (regTwo!31026 r!7292)))))

(declare-fun bm!390023 () Bool)

(declare-fun call!390028 () Bool)

(assert (=> bm!390023 (= call!390028 (isEmpty!33933 s!2326))))

(declare-fun b!5439581 () Bool)

(declare-fun res!2315939 () Bool)

(assert (=> b!5439581 (=> res!2315939 e!3369772)))

(declare-fun e!3369767 () Bool)

(assert (=> b!5439581 (= res!2315939 e!3369767)))

(declare-fun res!2315940 () Bool)

(assert (=> b!5439581 (=> (not res!2315940) (not e!3369767))))

(assert (=> b!5439581 (= res!2315940 lt!2218660)))

(declare-fun b!5439582 () Bool)

(declare-fun e!3369771 () Bool)

(assert (=> b!5439582 (= e!3369771 e!3369768)))

(declare-fun c!949152 () Bool)

(assert (=> b!5439582 (= c!949152 ((_ is EmptyLang!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5439583 () Bool)

(declare-fun e!3369769 () Bool)

(assert (=> b!5439583 (= e!3369769 e!3369766)))

(declare-fun res!2315941 () Bool)

(assert (=> b!5439583 (=> res!2315941 e!3369766)))

(assert (=> b!5439583 (= res!2315941 call!390028)))

(declare-fun b!5439584 () Bool)

(assert (=> b!5439584 (= e!3369766 (not (= (head!11665 s!2326) (c!949049 (regTwo!31026 r!7292)))))))

(declare-fun b!5439585 () Bool)

(assert (=> b!5439585 (= e!3369770 (matchR!7442 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)) (tail!10762 s!2326)))))

(declare-fun b!5439586 () Bool)

(assert (=> b!5439586 (= e!3369772 e!3369769)))

(declare-fun res!2315946 () Bool)

(assert (=> b!5439586 (=> (not res!2315946) (not e!3369769))))

(assert (=> b!5439586 (= res!2315946 (not lt!2218660))))

(declare-fun b!5439587 () Bool)

(assert (=> b!5439587 (= e!3369767 (= (head!11665 s!2326) (c!949049 (regTwo!31026 r!7292))))))

(declare-fun b!5439589 () Bool)

(assert (=> b!5439589 (= e!3369771 (= lt!2218660 call!390028))))

(declare-fun b!5439590 () Bool)

(declare-fun res!2315943 () Bool)

(assert (=> b!5439590 (=> (not res!2315943) (not e!3369767))))

(assert (=> b!5439590 (= res!2315943 (not call!390028))))

(declare-fun d!1732568 () Bool)

(assert (=> d!1732568 e!3369771))

(declare-fun c!949151 () Bool)

(assert (=> d!1732568 (= c!949151 ((_ is EmptyExpr!15257) (regTwo!31026 r!7292)))))

(assert (=> d!1732568 (= lt!2218660 e!3369770)))

(declare-fun c!949150 () Bool)

(assert (=> d!1732568 (= c!949150 (isEmpty!33933 s!2326))))

(assert (=> d!1732568 (validRegex!6993 (regTwo!31026 r!7292))))

(assert (=> d!1732568 (= (matchR!7442 (regTwo!31026 r!7292) s!2326) lt!2218660)))

(declare-fun b!5439588 () Bool)

(declare-fun res!2315944 () Bool)

(assert (=> b!5439588 (=> (not res!2315944) (not e!3369767))))

(assert (=> b!5439588 (= res!2315944 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (= (and d!1732568 c!949150) b!5439580))

(assert (= (and d!1732568 (not c!949150)) b!5439585))

(assert (= (and d!1732568 c!949151) b!5439589))

(assert (= (and d!1732568 (not c!949151)) b!5439582))

(assert (= (and b!5439582 c!949152) b!5439577))

(assert (= (and b!5439582 (not c!949152)) b!5439578))

(assert (= (and b!5439578 (not res!2315942)) b!5439581))

(assert (= (and b!5439581 res!2315940) b!5439590))

(assert (= (and b!5439590 res!2315943) b!5439588))

(assert (= (and b!5439588 res!2315944) b!5439587))

(assert (= (and b!5439581 (not res!2315939)) b!5439586))

(assert (= (and b!5439586 res!2315946) b!5439583))

(assert (= (and b!5439583 (not res!2315941)) b!5439579))

(assert (= (and b!5439579 (not res!2315945)) b!5439584))

(assert (= (or b!5439589 b!5439590 b!5439583) bm!390023))

(declare-fun m!6460806 () Bool)

(assert (=> b!5439580 m!6460806))

(assert (=> b!5439579 m!6460720))

(assert (=> b!5439579 m!6460720))

(assert (=> b!5439579 m!6460722))

(assert (=> b!5439588 m!6460720))

(assert (=> b!5439588 m!6460720))

(assert (=> b!5439588 m!6460722))

(assert (=> bm!390023 m!6460694))

(assert (=> b!5439587 m!6460724))

(assert (=> b!5439584 m!6460724))

(assert (=> d!1732568 m!6460694))

(declare-fun m!6460810 () Bool)

(assert (=> d!1732568 m!6460810))

(assert (=> b!5439585 m!6460724))

(assert (=> b!5439585 m!6460724))

(declare-fun m!6460812 () Bool)

(assert (=> b!5439585 m!6460812))

(assert (=> b!5439585 m!6460720))

(assert (=> b!5439585 m!6460812))

(assert (=> b!5439585 m!6460720))

(declare-fun m!6460814 () Bool)

(assert (=> b!5439585 m!6460814))

(assert (=> b!5439212 d!1732568))

(declare-fun d!1732576 () Bool)

(assert (=> d!1732576 (= (matchR!7442 (regTwo!31026 r!7292) s!2326) (matchRSpec!2360 (regTwo!31026 r!7292) s!2326))))

(declare-fun lt!2218663 () Unit!154570)

(assert (=> d!1732576 (= lt!2218663 (choose!41261 (regTwo!31026 r!7292) s!2326))))

(assert (=> d!1732576 (validRegex!6993 (regTwo!31026 r!7292))))

(assert (=> d!1732576 (= (mainMatchTheorem!2360 (regTwo!31026 r!7292) s!2326) lt!2218663)))

(declare-fun bs!1255126 () Bool)

(assert (= bs!1255126 d!1732576))

(assert (=> bs!1255126 m!6460582))

(assert (=> bs!1255126 m!6460592))

(declare-fun m!6460816 () Bool)

(assert (=> bs!1255126 m!6460816))

(assert (=> bs!1255126 m!6460810))

(assert (=> b!5439212 d!1732576))

(declare-fun d!1732578 () Bool)

(declare-fun c!949165 () Bool)

(assert (=> d!1732578 (= c!949165 (isEmpty!33933 (t!375297 s!2326)))))

(declare-fun e!3369800 () Bool)

(assert (=> d!1732578 (= (matchZipper!1501 lt!2218611 (t!375297 s!2326)) e!3369800)))

(declare-fun b!5439638 () Bool)

(declare-fun nullableZipper!1474 ((InoxSet Context!9282)) Bool)

(assert (=> b!5439638 (= e!3369800 (nullableZipper!1474 lt!2218611))))

(declare-fun b!5439639 () Bool)

(assert (=> b!5439639 (= e!3369800 (matchZipper!1501 (derivationStepZipper!1486 lt!2218611 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))))))

(assert (= (and d!1732578 c!949165) b!5439638))

(assert (= (and d!1732578 (not c!949165)) b!5439639))

(declare-fun m!6460834 () Bool)

(assert (=> d!1732578 m!6460834))

(declare-fun m!6460836 () Bool)

(assert (=> b!5439638 m!6460836))

(declare-fun m!6460838 () Bool)

(assert (=> b!5439639 m!6460838))

(assert (=> b!5439639 m!6460838))

(declare-fun m!6460840 () Bool)

(assert (=> b!5439639 m!6460840))

(declare-fun m!6460842 () Bool)

(assert (=> b!5439639 m!6460842))

(assert (=> b!5439639 m!6460840))

(assert (=> b!5439639 m!6460842))

(declare-fun m!6460848 () Bool)

(assert (=> b!5439639 m!6460848))

(assert (=> b!5439213 d!1732578))

(declare-fun bs!1255159 () Bool)

(declare-fun d!1732588 () Bool)

(assert (= bs!1255159 (and d!1732588 b!5439215)))

(declare-fun lambda!286213 () Int)

(assert (=> bs!1255159 (= lambda!286213 lambda!286161)))

(declare-fun e!3369840 () Bool)

(assert (=> d!1732588 e!3369840))

(declare-fun res!2315986 () Bool)

(assert (=> d!1732588 (=> (not res!2315986) (not e!3369840))))

(declare-fun lt!2218675 () Regex!15257)

(assert (=> d!1732588 (= res!2315986 (validRegex!6993 lt!2218675))))

(declare-fun e!3369843 () Regex!15257)

(assert (=> d!1732588 (= lt!2218675 e!3369843)))

(declare-fun c!949191 () Bool)

(declare-fun e!3369841 () Bool)

(assert (=> d!1732588 (= c!949191 e!3369841)))

(declare-fun res!2315987 () Bool)

(assert (=> d!1732588 (=> (not res!2315987) (not e!3369841))))

(assert (=> d!1732588 (= res!2315987 ((_ is Cons!61946) (unfocusZipperList!699 zl!343)))))

(assert (=> d!1732588 (forall!14574 (unfocusZipperList!699 zl!343) lambda!286213)))

(assert (=> d!1732588 (= (generalisedUnion!1186 (unfocusZipperList!699 zl!343)) lt!2218675)))

(declare-fun b!5439700 () Bool)

(declare-fun e!3369842 () Regex!15257)

(assert (=> b!5439700 (= e!3369842 EmptyLang!15257)))

(declare-fun b!5439701 () Bool)

(declare-fun e!3369844 () Bool)

(assert (=> b!5439701 (= e!3369840 e!3369844)))

(declare-fun c!949190 () Bool)

(assert (=> b!5439701 (= c!949190 (isEmpty!33930 (unfocusZipperList!699 zl!343)))))

(declare-fun b!5439702 () Bool)

(assert (=> b!5439702 (= e!3369842 (Union!15257 (h!68394 (unfocusZipperList!699 zl!343)) (generalisedUnion!1186 (t!375295 (unfocusZipperList!699 zl!343)))))))

(declare-fun b!5439703 () Bool)

(assert (=> b!5439703 (= e!3369843 e!3369842)))

(declare-fun c!949189 () Bool)

(assert (=> b!5439703 (= c!949189 ((_ is Cons!61946) (unfocusZipperList!699 zl!343)))))

(declare-fun b!5439704 () Bool)

(declare-fun e!3369839 () Bool)

(declare-fun head!11666 (List!62070) Regex!15257)

(assert (=> b!5439704 (= e!3369839 (= lt!2218675 (head!11666 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5439705 () Bool)

(assert (=> b!5439705 (= e!3369844 e!3369839)))

(declare-fun c!949188 () Bool)

(declare-fun tail!10763 (List!62070) List!62070)

(assert (=> b!5439705 (= c!949188 (isEmpty!33930 (tail!10763 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5439706 () Bool)

(declare-fun isUnion!447 (Regex!15257) Bool)

(assert (=> b!5439706 (= e!3369839 (isUnion!447 lt!2218675))))

(declare-fun b!5439707 () Bool)

(declare-fun isEmptyLang!1015 (Regex!15257) Bool)

(assert (=> b!5439707 (= e!3369844 (isEmptyLang!1015 lt!2218675))))

(declare-fun b!5439708 () Bool)

(assert (=> b!5439708 (= e!3369841 (isEmpty!33930 (t!375295 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5439709 () Bool)

(assert (=> b!5439709 (= e!3369843 (h!68394 (unfocusZipperList!699 zl!343)))))

(assert (= (and d!1732588 res!2315987) b!5439708))

(assert (= (and d!1732588 c!949191) b!5439709))

(assert (= (and d!1732588 (not c!949191)) b!5439703))

(assert (= (and b!5439703 c!949189) b!5439702))

(assert (= (and b!5439703 (not c!949189)) b!5439700))

(assert (= (and d!1732588 res!2315986) b!5439701))

(assert (= (and b!5439701 c!949190) b!5439707))

(assert (= (and b!5439701 (not c!949190)) b!5439705))

(assert (= (and b!5439705 c!949188) b!5439704))

(assert (= (and b!5439705 (not c!949188)) b!5439706))

(declare-fun m!6460892 () Bool)

(assert (=> b!5439702 m!6460892))

(assert (=> b!5439704 m!6460560))

(declare-fun m!6460894 () Bool)

(assert (=> b!5439704 m!6460894))

(declare-fun m!6460896 () Bool)

(assert (=> b!5439706 m!6460896))

(declare-fun m!6460898 () Bool)

(assert (=> b!5439708 m!6460898))

(assert (=> b!5439705 m!6460560))

(declare-fun m!6460900 () Bool)

(assert (=> b!5439705 m!6460900))

(assert (=> b!5439705 m!6460900))

(declare-fun m!6460902 () Bool)

(assert (=> b!5439705 m!6460902))

(declare-fun m!6460904 () Bool)

(assert (=> d!1732588 m!6460904))

(assert (=> d!1732588 m!6460560))

(declare-fun m!6460906 () Bool)

(assert (=> d!1732588 m!6460906))

(declare-fun m!6460908 () Bool)

(assert (=> b!5439707 m!6460908))

(assert (=> b!5439701 m!6460560))

(declare-fun m!6460910 () Bool)

(assert (=> b!5439701 m!6460910))

(assert (=> b!5439202 d!1732588))

(declare-fun bs!1255160 () Bool)

(declare-fun d!1732610 () Bool)

(assert (= bs!1255160 (and d!1732610 b!5439215)))

(declare-fun lambda!286216 () Int)

(assert (=> bs!1255160 (= lambda!286216 lambda!286161)))

(declare-fun bs!1255161 () Bool)

(assert (= bs!1255161 (and d!1732610 d!1732588)))

(assert (=> bs!1255161 (= lambda!286216 lambda!286213)))

(declare-fun lt!2218678 () List!62070)

(assert (=> d!1732610 (forall!14574 lt!2218678 lambda!286216)))

(declare-fun e!3369859 () List!62070)

(assert (=> d!1732610 (= lt!2218678 e!3369859)))

(declare-fun c!949204 () Bool)

(assert (=> d!1732610 (= c!949204 ((_ is Cons!61947) zl!343))))

(assert (=> d!1732610 (= (unfocusZipperList!699 zl!343) lt!2218678)))

(declare-fun b!5439736 () Bool)

(assert (=> b!5439736 (= e!3369859 (Cons!61946 (generalisedConcat!926 (exprs!5141 (h!68395 zl!343))) (unfocusZipperList!699 (t!375296 zl!343))))))

(declare-fun b!5439737 () Bool)

(assert (=> b!5439737 (= e!3369859 Nil!61946)))

(assert (= (and d!1732610 c!949204) b!5439736))

(assert (= (and d!1732610 (not c!949204)) b!5439737))

(declare-fun m!6460912 () Bool)

(assert (=> d!1732610 m!6460912))

(assert (=> b!5439736 m!6460594))

(declare-fun m!6460914 () Bool)

(assert (=> b!5439736 m!6460914))

(assert (=> b!5439202 d!1732610))

(declare-fun bs!1255165 () Bool)

(declare-fun d!1732612 () Bool)

(assert (= bs!1255165 (and d!1732612 b!5439215)))

(declare-fun lambda!286219 () Int)

(assert (=> bs!1255165 (= lambda!286219 lambda!286161)))

(declare-fun bs!1255166 () Bool)

(assert (= bs!1255166 (and d!1732612 d!1732588)))

(assert (=> bs!1255166 (= lambda!286219 lambda!286213)))

(declare-fun bs!1255167 () Bool)

(assert (= bs!1255167 (and d!1732612 d!1732610)))

(assert (=> bs!1255167 (= lambda!286219 lambda!286216)))

(declare-fun b!5439830 () Bool)

(declare-fun e!3369910 () Bool)

(declare-fun lt!2218681 () Regex!15257)

(declare-fun isEmptyExpr!1006 (Regex!15257) Bool)

(assert (=> b!5439830 (= e!3369910 (isEmptyExpr!1006 lt!2218681))))

(declare-fun b!5439832 () Bool)

(declare-fun e!3369906 () Regex!15257)

(declare-fun e!3369908 () Regex!15257)

(assert (=> b!5439832 (= e!3369906 e!3369908)))

(declare-fun c!949224 () Bool)

(assert (=> b!5439832 (= c!949224 ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343))))))

(declare-fun b!5439833 () Bool)

(assert (=> b!5439833 (= e!3369908 EmptyExpr!15257)))

(declare-fun b!5439834 () Bool)

(declare-fun e!3369907 () Bool)

(assert (=> b!5439834 (= e!3369907 e!3369910)))

(declare-fun c!949223 () Bool)

(assert (=> b!5439834 (= c!949223 (isEmpty!33930 (exprs!5141 (h!68395 zl!343))))))

(declare-fun b!5439835 () Bool)

(declare-fun e!3369905 () Bool)

(declare-fun isConcat!529 (Regex!15257) Bool)

(assert (=> b!5439835 (= e!3369905 (isConcat!529 lt!2218681))))

(declare-fun b!5439836 () Bool)

(assert (=> b!5439836 (= e!3369905 (= lt!2218681 (head!11666 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5439837 () Bool)

(assert (=> b!5439837 (= e!3369908 (Concat!24102 (h!68394 (exprs!5141 (h!68395 zl!343))) (generalisedConcat!926 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun b!5439831 () Bool)

(declare-fun e!3369909 () Bool)

(assert (=> b!5439831 (= e!3369909 (isEmpty!33930 (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> d!1732612 e!3369907))

(declare-fun res!2315996 () Bool)

(assert (=> d!1732612 (=> (not res!2315996) (not e!3369907))))

(assert (=> d!1732612 (= res!2315996 (validRegex!6993 lt!2218681))))

(assert (=> d!1732612 (= lt!2218681 e!3369906)))

(declare-fun c!949221 () Bool)

(assert (=> d!1732612 (= c!949221 e!3369909)))

(declare-fun res!2315997 () Bool)

(assert (=> d!1732612 (=> (not res!2315997) (not e!3369909))))

(assert (=> d!1732612 (= res!2315997 ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343))))))

(assert (=> d!1732612 (forall!14574 (exprs!5141 (h!68395 zl!343)) lambda!286219)))

(assert (=> d!1732612 (= (generalisedConcat!926 (exprs!5141 (h!68395 zl!343))) lt!2218681)))

(declare-fun b!5439838 () Bool)

(assert (=> b!5439838 (= e!3369906 (h!68394 (exprs!5141 (h!68395 zl!343))))))

(declare-fun b!5439839 () Bool)

(assert (=> b!5439839 (= e!3369910 e!3369905)))

(declare-fun c!949222 () Bool)

(assert (=> b!5439839 (= c!949222 (isEmpty!33930 (tail!10763 (exprs!5141 (h!68395 zl!343)))))))

(assert (= (and d!1732612 res!2315997) b!5439831))

(assert (= (and d!1732612 c!949221) b!5439838))

(assert (= (and d!1732612 (not c!949221)) b!5439832))

(assert (= (and b!5439832 c!949224) b!5439837))

(assert (= (and b!5439832 (not c!949224)) b!5439833))

(assert (= (and d!1732612 res!2315996) b!5439834))

(assert (= (and b!5439834 c!949223) b!5439830))

(assert (= (and b!5439834 (not c!949223)) b!5439839))

(assert (= (and b!5439839 c!949222) b!5439836))

(assert (= (and b!5439839 (not c!949222)) b!5439835))

(declare-fun m!6460942 () Bool)

(assert (=> b!5439839 m!6460942))

(assert (=> b!5439839 m!6460942))

(declare-fun m!6460944 () Bool)

(assert (=> b!5439839 m!6460944))

(declare-fun m!6460946 () Bool)

(assert (=> b!5439834 m!6460946))

(declare-fun m!6460948 () Bool)

(assert (=> b!5439837 m!6460948))

(assert (=> b!5439831 m!6460568))

(declare-fun m!6460950 () Bool)

(assert (=> d!1732612 m!6460950))

(declare-fun m!6460952 () Bool)

(assert (=> d!1732612 m!6460952))

(declare-fun m!6460954 () Bool)

(assert (=> b!5439835 m!6460954))

(declare-fun m!6460956 () Bool)

(assert (=> b!5439830 m!6460956))

(declare-fun m!6460958 () Bool)

(assert (=> b!5439836 m!6460958))

(assert (=> b!5439189 d!1732612))

(declare-fun bs!1255168 () Bool)

(declare-fun d!1732624 () Bool)

(assert (= bs!1255168 (and d!1732624 b!5439215)))

(declare-fun lambda!286222 () Int)

(assert (=> bs!1255168 (= lambda!286222 lambda!286161)))

(declare-fun bs!1255169 () Bool)

(assert (= bs!1255169 (and d!1732624 d!1732588)))

(assert (=> bs!1255169 (= lambda!286222 lambda!286213)))

(declare-fun bs!1255170 () Bool)

(assert (= bs!1255170 (and d!1732624 d!1732610)))

(assert (=> bs!1255170 (= lambda!286222 lambda!286216)))

(declare-fun bs!1255171 () Bool)

(assert (= bs!1255171 (and d!1732624 d!1732612)))

(assert (=> bs!1255171 (= lambda!286222 lambda!286219)))

(assert (=> d!1732624 (= (inv!81389 (h!68395 zl!343)) (forall!14574 (exprs!5141 (h!68395 zl!343)) lambda!286222))))

(declare-fun bs!1255172 () Bool)

(assert (= bs!1255172 d!1732624))

(declare-fun m!6460960 () Bool)

(assert (=> bs!1255172 m!6460960))

(assert (=> b!5439208 d!1732624))

(declare-fun d!1732626 () Bool)

(declare-fun c!949225 () Bool)

(assert (=> d!1732626 (= c!949225 (isEmpty!33933 (t!375297 s!2326)))))

(declare-fun e!3369911 () Bool)

(assert (=> d!1732626 (= (matchZipper!1501 lt!2218594 (t!375297 s!2326)) e!3369911)))

(declare-fun b!5439840 () Bool)

(assert (=> b!5439840 (= e!3369911 (nullableZipper!1474 lt!2218594))))

(declare-fun b!5439841 () Bool)

(assert (=> b!5439841 (= e!3369911 (matchZipper!1501 (derivationStepZipper!1486 lt!2218594 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))))))

(assert (= (and d!1732626 c!949225) b!5439840))

(assert (= (and d!1732626 (not c!949225)) b!5439841))

(assert (=> d!1732626 m!6460834))

(declare-fun m!6460962 () Bool)

(assert (=> b!5439840 m!6460962))

(assert (=> b!5439841 m!6460838))

(assert (=> b!5439841 m!6460838))

(declare-fun m!6460964 () Bool)

(assert (=> b!5439841 m!6460964))

(assert (=> b!5439841 m!6460842))

(assert (=> b!5439841 m!6460964))

(assert (=> b!5439841 m!6460842))

(declare-fun m!6460966 () Bool)

(assert (=> b!5439841 m!6460966))

(assert (=> b!5439199 d!1732626))

(declare-fun d!1732628 () Bool)

(assert (=> d!1732628 (not (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(declare-fun lt!2218684 () Unit!154570)

(declare-fun choose!41263 ((InoxSet Context!9282) List!62072) Unit!154570)

(assert (=> d!1732628 (= lt!2218684 (choose!41263 lt!2218594 (t!375297 s!2326)))))

(assert (=> d!1732628 (= lt!2218594 ((as const (Array Context!9282 Bool)) false))))

(assert (=> d!1732628 (= (lemmaEmptyZipperMatchesNothing!12 lt!2218594 (t!375297 s!2326)) lt!2218684)))

(declare-fun bs!1255173 () Bool)

(assert (= bs!1255173 d!1732628))

(assert (=> bs!1255173 m!6460538))

(declare-fun m!6460968 () Bool)

(assert (=> bs!1255173 m!6460968))

(assert (=> b!5439199 d!1732628))

(declare-fun d!1732630 () Bool)

(assert (=> d!1732630 (= (isEmpty!33930 (t!375295 (exprs!5141 (h!68395 zl!343)))) ((_ is Nil!61946) (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> b!5439190 d!1732630))

(declare-fun bs!1255174 () Bool)

(declare-fun d!1732632 () Bool)

(assert (= bs!1255174 (and d!1732632 d!1732588)))

(declare-fun lambda!286223 () Int)

(assert (=> bs!1255174 (= lambda!286223 lambda!286213)))

(declare-fun bs!1255175 () Bool)

(assert (= bs!1255175 (and d!1732632 d!1732610)))

(assert (=> bs!1255175 (= lambda!286223 lambda!286216)))

(declare-fun bs!1255176 () Bool)

(assert (= bs!1255176 (and d!1732632 d!1732612)))

(assert (=> bs!1255176 (= lambda!286223 lambda!286219)))

(declare-fun bs!1255177 () Bool)

(assert (= bs!1255177 (and d!1732632 d!1732624)))

(assert (=> bs!1255177 (= lambda!286223 lambda!286222)))

(declare-fun bs!1255178 () Bool)

(assert (= bs!1255178 (and d!1732632 b!5439215)))

(assert (=> bs!1255178 (= lambda!286223 lambda!286161)))

(assert (=> d!1732632 (= (inv!81389 setElem!35553) (forall!14574 (exprs!5141 setElem!35553) lambda!286223))))

(declare-fun bs!1255179 () Bool)

(assert (= bs!1255179 d!1732632))

(declare-fun m!6460970 () Bool)

(assert (=> bs!1255179 m!6460970))

(assert (=> setNonEmpty!35553 d!1732632))

(declare-fun b!5439852 () Bool)

(declare-fun e!3369920 () Bool)

(assert (=> b!5439852 (= e!3369920 (nullable!5426 (h!68394 (exprs!5141 lt!2218591))))))

(declare-fun call!390055 () (InoxSet Context!9282))

(declare-fun b!5439853 () Bool)

(declare-fun e!3369918 () (InoxSet Context!9282))

(assert (=> b!5439853 (= e!3369918 ((_ map or) call!390055 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (h!68396 s!2326))))))

(declare-fun b!5439854 () Bool)

(declare-fun e!3369919 () (InoxSet Context!9282))

(assert (=> b!5439854 (= e!3369918 e!3369919)))

(declare-fun c!949230 () Bool)

(assert (=> b!5439854 (= c!949230 ((_ is Cons!61946) (exprs!5141 lt!2218591)))))

(declare-fun d!1732634 () Bool)

(declare-fun c!949231 () Bool)

(assert (=> d!1732634 (= c!949231 e!3369920)))

(declare-fun res!2316000 () Bool)

(assert (=> d!1732634 (=> (not res!2316000) (not e!3369920))))

(assert (=> d!1732634 (= res!2316000 ((_ is Cons!61946) (exprs!5141 lt!2218591)))))

(assert (=> d!1732634 (= (derivationStepZipperUp!629 lt!2218591 (h!68396 s!2326)) e!3369918)))

(declare-fun b!5439855 () Bool)

(assert (=> b!5439855 (= e!3369919 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390050 () Bool)

(assert (=> bm!390050 (= call!390055 (derivationStepZipperDown!705 (h!68394 (exprs!5141 lt!2218591)) (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (h!68396 s!2326)))))

(declare-fun b!5439856 () Bool)

(assert (=> b!5439856 (= e!3369919 call!390055)))

(assert (= (and d!1732634 res!2316000) b!5439852))

(assert (= (and d!1732634 c!949231) b!5439853))

(assert (= (and d!1732634 (not c!949231)) b!5439854))

(assert (= (and b!5439854 c!949230) b!5439856))

(assert (= (and b!5439854 (not c!949230)) b!5439855))

(assert (= (or b!5439853 b!5439856) bm!390050))

(declare-fun m!6460972 () Bool)

(assert (=> b!5439852 m!6460972))

(declare-fun m!6460974 () Bool)

(assert (=> b!5439853 m!6460974))

(declare-fun m!6460976 () Bool)

(assert (=> bm!390050 m!6460976))

(assert (=> b!5439217 d!1732634))

(declare-fun d!1732636 () Bool)

(declare-fun nullableFct!1625 (Regex!15257) Bool)

(assert (=> d!1732636 (= (nullable!5426 (h!68394 (exprs!5141 (h!68395 zl!343)))) (nullableFct!1625 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun bs!1255180 () Bool)

(assert (= bs!1255180 d!1732636))

(declare-fun m!6460978 () Bool)

(assert (=> bs!1255180 m!6460978))

(assert (=> b!5439217 d!1732636))

(declare-fun b!5439857 () Bool)

(declare-fun e!3369923 () Bool)

(assert (=> b!5439857 (= e!3369923 (nullable!5426 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun call!390056 () (InoxSet Context!9282))

(declare-fun b!5439858 () Bool)

(declare-fun e!3369921 () (InoxSet Context!9282))

(assert (=> b!5439858 (= e!3369921 ((_ map or) call!390056 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326))))))

(declare-fun b!5439859 () Bool)

(declare-fun e!3369922 () (InoxSet Context!9282))

(assert (=> b!5439859 (= e!3369921 e!3369922)))

(declare-fun c!949232 () Bool)

(assert (=> b!5439859 (= c!949232 ((_ is Cons!61946) (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))

(declare-fun d!1732638 () Bool)

(declare-fun c!949233 () Bool)

(assert (=> d!1732638 (= c!949233 e!3369923)))

(declare-fun res!2316001 () Bool)

(assert (=> d!1732638 (=> (not res!2316001) (not e!3369923))))

(assert (=> d!1732638 (= res!2316001 ((_ is Cons!61946) (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))

(assert (=> d!1732638 (= (derivationStepZipperUp!629 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))) (h!68396 s!2326)) e!3369921)))

(declare-fun b!5439860 () Bool)

(assert (=> b!5439860 (= e!3369922 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390051 () Bool)

(assert (=> bm!390051 (= call!390056 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326)))))

(declare-fun b!5439861 () Bool)

(assert (=> b!5439861 (= e!3369922 call!390056)))

(assert (= (and d!1732638 res!2316001) b!5439857))

(assert (= (and d!1732638 c!949233) b!5439858))

(assert (= (and d!1732638 (not c!949233)) b!5439859))

(assert (= (and b!5439859 c!949232) b!5439861))

(assert (= (and b!5439859 (not c!949232)) b!5439860))

(assert (= (or b!5439858 b!5439861) bm!390051))

(declare-fun m!6460980 () Bool)

(assert (=> b!5439857 m!6460980))

(declare-fun m!6460982 () Bool)

(assert (=> b!5439858 m!6460982))

(declare-fun m!6460984 () Bool)

(assert (=> bm!390051 m!6460984))

(assert (=> b!5439217 d!1732638))

(declare-fun d!1732640 () Bool)

(declare-fun dynLambda!24380 (Int Context!9282) (InoxSet Context!9282))

(assert (=> d!1732640 (= (flatMap!984 z!1189 lambda!286160) (dynLambda!24380 lambda!286160 (h!68395 zl!343)))))

(declare-fun lt!2218687 () Unit!154570)

(declare-fun choose!41264 ((InoxSet Context!9282) Context!9282 Int) Unit!154570)

(assert (=> d!1732640 (= lt!2218687 (choose!41264 z!1189 (h!68395 zl!343) lambda!286160))))

(assert (=> d!1732640 (= z!1189 (store ((as const (Array Context!9282 Bool)) false) (h!68395 zl!343) true))))

(assert (=> d!1732640 (= (lemmaFlatMapOnSingletonSet!516 z!1189 (h!68395 zl!343) lambda!286160) lt!2218687)))

(declare-fun b_lambda!207369 () Bool)

(assert (=> (not b_lambda!207369) (not d!1732640)))

(declare-fun bs!1255181 () Bool)

(assert (= bs!1255181 d!1732640))

(assert (=> bs!1255181 m!6460534))

(declare-fun m!6460986 () Bool)

(assert (=> bs!1255181 m!6460986))

(declare-fun m!6460988 () Bool)

(assert (=> bs!1255181 m!6460988))

(declare-fun m!6460990 () Bool)

(assert (=> bs!1255181 m!6460990))

(assert (=> b!5439217 d!1732640))

(declare-fun b!5439862 () Bool)

(declare-fun e!3369926 () Bool)

(assert (=> b!5439862 (= e!3369926 (nullable!5426 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5439863 () Bool)

(declare-fun e!3369924 () (InoxSet Context!9282))

(declare-fun call!390057 () (InoxSet Context!9282))

(assert (=> b!5439863 (= e!3369924 ((_ map or) call!390057 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326))))))

(declare-fun b!5439864 () Bool)

(declare-fun e!3369925 () (InoxSet Context!9282))

(assert (=> b!5439864 (= e!3369924 e!3369925)))

(declare-fun c!949234 () Bool)

(assert (=> b!5439864 (= c!949234 ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343))))))

(declare-fun d!1732642 () Bool)

(declare-fun c!949235 () Bool)

(assert (=> d!1732642 (= c!949235 e!3369926)))

(declare-fun res!2316002 () Bool)

(assert (=> d!1732642 (=> (not res!2316002) (not e!3369926))))

(assert (=> d!1732642 (= res!2316002 ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343))))))

(assert (=> d!1732642 (= (derivationStepZipperUp!629 (h!68395 zl!343) (h!68396 s!2326)) e!3369924)))

(declare-fun b!5439865 () Bool)

(assert (=> b!5439865 (= e!3369925 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390052 () Bool)

(assert (=> bm!390052 (= call!390057 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (h!68395 zl!343))) (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326)))))

(declare-fun b!5439866 () Bool)

(assert (=> b!5439866 (= e!3369925 call!390057)))

(assert (= (and d!1732642 res!2316002) b!5439862))

(assert (= (and d!1732642 c!949235) b!5439863))

(assert (= (and d!1732642 (not c!949235)) b!5439864))

(assert (= (and b!5439864 c!949234) b!5439866))

(assert (= (and b!5439864 (not c!949234)) b!5439865))

(assert (= (or b!5439863 b!5439866) bm!390052))

(assert (=> b!5439862 m!6460532))

(declare-fun m!6460992 () Bool)

(assert (=> b!5439863 m!6460992))

(declare-fun m!6460994 () Bool)

(assert (=> bm!390052 m!6460994))

(assert (=> b!5439217 d!1732642))

(declare-fun c!949248 () Bool)

(declare-fun bm!390065 () Bool)

(declare-fun call!390071 () List!62070)

(declare-fun c!949249 () Bool)

(declare-fun $colon$colon!1524 (List!62070 Regex!15257) List!62070)

(assert (=> bm!390065 (= call!390071 ($colon$colon!1524 (exprs!5141 lt!2218591) (ite (or c!949249 c!949248) (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68394 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun d!1732644 () Bool)

(declare-fun c!949247 () Bool)

(assert (=> d!1732644 (= c!949247 (and ((_ is ElementMatch!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))) (= (c!949049 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326))))))

(declare-fun e!3369943 () (InoxSet Context!9282))

(assert (=> d!1732644 (= (derivationStepZipperDown!705 (h!68394 (exprs!5141 (h!68395 zl!343))) lt!2218591 (h!68396 s!2326)) e!3369943)))

(declare-fun b!5439889 () Bool)

(declare-fun c!949250 () Bool)

(assert (=> b!5439889 (= c!949250 ((_ is Star!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun e!3369942 () (InoxSet Context!9282))

(declare-fun e!3369939 () (InoxSet Context!9282))

(assert (=> b!5439889 (= e!3369942 e!3369939)))

(declare-fun b!5439890 () Bool)

(declare-fun e!3369940 () (InoxSet Context!9282))

(assert (=> b!5439890 (= e!3369940 e!3369942)))

(assert (=> b!5439890 (= c!949248 ((_ is Concat!24102) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun bm!390066 () Bool)

(declare-fun call!390074 () (InoxSet Context!9282))

(declare-fun call!390070 () (InoxSet Context!9282))

(assert (=> bm!390066 (= call!390074 call!390070)))

(declare-fun b!5439891 () Bool)

(declare-fun call!390075 () (InoxSet Context!9282))

(assert (=> b!5439891 (= e!3369939 call!390075)))

(declare-fun c!949246 () Bool)

(declare-fun bm!390067 () Bool)

(declare-fun call!390073 () List!62070)

(assert (=> bm!390067 (= call!390070 (derivationStepZipperDown!705 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))) (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073)) (h!68396 s!2326)))))

(declare-fun b!5439892 () Bool)

(assert (=> b!5439892 (= e!3369943 (store ((as const (Array Context!9282 Bool)) false) lt!2218591 true))))

(declare-fun b!5439893 () Bool)

(assert (=> b!5439893 (= e!3369939 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5439894 () Bool)

(declare-fun e!3369944 () (InoxSet Context!9282))

(assert (=> b!5439894 (= e!3369943 e!3369944)))

(assert (=> b!5439894 (= c!949246 ((_ is Union!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun call!390072 () (InoxSet Context!9282))

(declare-fun bm!390068 () Bool)

(assert (=> bm!390068 (= call!390072 (derivationStepZipperDown!705 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))) (ite c!949246 lt!2218591 (Context!9283 call!390071)) (h!68396 s!2326)))))

(declare-fun bm!390069 () Bool)

(assert (=> bm!390069 (= call!390075 call!390074)))

(declare-fun b!5439895 () Bool)

(declare-fun e!3369941 () Bool)

(assert (=> b!5439895 (= c!949249 e!3369941)))

(declare-fun res!2316005 () Bool)

(assert (=> b!5439895 (=> (not res!2316005) (not e!3369941))))

(assert (=> b!5439895 (= res!2316005 ((_ is Concat!24102) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> b!5439895 (= e!3369944 e!3369940)))

(declare-fun bm!390070 () Bool)

(assert (=> bm!390070 (= call!390073 call!390071)))

(declare-fun b!5439896 () Bool)

(assert (=> b!5439896 (= e!3369944 ((_ map or) call!390070 call!390072))))

(declare-fun b!5439897 () Bool)

(assert (=> b!5439897 (= e!3369940 ((_ map or) call!390072 call!390074))))

(declare-fun b!5439898 () Bool)

(assert (=> b!5439898 (= e!3369942 call!390075)))

(declare-fun b!5439899 () Bool)

(assert (=> b!5439899 (= e!3369941 (nullable!5426 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))

(assert (= (and d!1732644 c!949247) b!5439892))

(assert (= (and d!1732644 (not c!949247)) b!5439894))

(assert (= (and b!5439894 c!949246) b!5439896))

(assert (= (and b!5439894 (not c!949246)) b!5439895))

(assert (= (and b!5439895 res!2316005) b!5439899))

(assert (= (and b!5439895 c!949249) b!5439897))

(assert (= (and b!5439895 (not c!949249)) b!5439890))

(assert (= (and b!5439890 c!949248) b!5439898))

(assert (= (and b!5439890 (not c!949248)) b!5439889))

(assert (= (and b!5439889 c!949250) b!5439891))

(assert (= (and b!5439889 (not c!949250)) b!5439893))

(assert (= (or b!5439898 b!5439891) bm!390070))

(assert (= (or b!5439898 b!5439891) bm!390069))

(assert (= (or b!5439897 bm!390070) bm!390065))

(assert (= (or b!5439897 bm!390069) bm!390066))

(assert (= (or b!5439896 b!5439897) bm!390068))

(assert (= (or b!5439896 bm!390066) bm!390067))

(declare-fun m!6460996 () Bool)

(assert (=> bm!390067 m!6460996))

(declare-fun m!6460998 () Bool)

(assert (=> bm!390068 m!6460998))

(assert (=> b!5439892 m!6460520))

(declare-fun m!6461000 () Bool)

(assert (=> bm!390065 m!6461000))

(declare-fun m!6461002 () Bool)

(assert (=> b!5439899 m!6461002))

(assert (=> b!5439217 d!1732644))

(declare-fun d!1732646 () Bool)

(declare-fun choose!41265 ((InoxSet Context!9282) Int) (InoxSet Context!9282))

(assert (=> d!1732646 (= (flatMap!984 z!1189 lambda!286160) (choose!41265 z!1189 lambda!286160))))

(declare-fun bs!1255182 () Bool)

(assert (= bs!1255182 d!1732646))

(declare-fun m!6461004 () Bool)

(assert (=> bs!1255182 m!6461004))

(assert (=> b!5439217 d!1732646))

(declare-fun d!1732648 () Bool)

(declare-fun e!3369947 () Bool)

(assert (=> d!1732648 e!3369947))

(declare-fun res!2316008 () Bool)

(assert (=> d!1732648 (=> (not res!2316008) (not e!3369947))))

(declare-fun lt!2218690 () List!62071)

(declare-fun noDuplicate!1424 (List!62071) Bool)

(assert (=> d!1732648 (= res!2316008 (noDuplicate!1424 lt!2218690))))

(declare-fun choose!41266 ((InoxSet Context!9282)) List!62071)

(assert (=> d!1732648 (= lt!2218690 (choose!41266 z!1189))))

(assert (=> d!1732648 (= (toList!9041 z!1189) lt!2218690)))

(declare-fun b!5439902 () Bool)

(declare-fun content!11141 (List!62071) (InoxSet Context!9282))

(assert (=> b!5439902 (= e!3369947 (= (content!11141 lt!2218690) z!1189))))

(assert (= (and d!1732648 res!2316008) b!5439902))

(declare-fun m!6461006 () Bool)

(assert (=> d!1732648 m!6461006))

(declare-fun m!6461008 () Bool)

(assert (=> d!1732648 m!6461008))

(declare-fun m!6461010 () Bool)

(assert (=> b!5439902 m!6461010))

(assert (=> b!5439187 d!1732648))

(declare-fun b!5439921 () Bool)

(declare-fun e!3369959 () Bool)

(declare-fun lt!2218697 () Option!15368)

(assert (=> b!5439921 (= e!3369959 (not (isDefined!12071 lt!2218697)))))

(declare-fun b!5439922 () Bool)

(declare-fun res!2316022 () Bool)

(declare-fun e!3369960 () Bool)

(assert (=> b!5439922 (=> (not res!2316022) (not e!3369960))))

(declare-fun get!21362 (Option!15368) tuple2!64912)

(assert (=> b!5439922 (= res!2316022 (matchR!7442 (regTwo!31026 r!7292) (_2!35759 (get!21362 lt!2218697))))))

(declare-fun b!5439923 () Bool)

(declare-fun e!3369962 () Option!15368)

(assert (=> b!5439923 (= e!3369962 (Some!15367 (tuple2!64913 Nil!61948 s!2326)))))

(declare-fun d!1732650 () Bool)

(assert (=> d!1732650 e!3369959))

(declare-fun res!2316021 () Bool)

(assert (=> d!1732650 (=> res!2316021 e!3369959)))

(assert (=> d!1732650 (= res!2316021 e!3369960)))

(declare-fun res!2316020 () Bool)

(assert (=> d!1732650 (=> (not res!2316020) (not e!3369960))))

(assert (=> d!1732650 (= res!2316020 (isDefined!12071 lt!2218697))))

(assert (=> d!1732650 (= lt!2218697 e!3369962)))

(declare-fun c!949256 () Bool)

(declare-fun e!3369958 () Bool)

(assert (=> d!1732650 (= c!949256 e!3369958)))

(declare-fun res!2316019 () Bool)

(assert (=> d!1732650 (=> (not res!2316019) (not e!3369958))))

(assert (=> d!1732650 (= res!2316019 (matchR!7442 (regOne!31026 r!7292) Nil!61948))))

(assert (=> d!1732650 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732650 (= (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326) lt!2218697)))

(declare-fun b!5439924 () Bool)

(assert (=> b!5439924 (= e!3369958 (matchR!7442 (regTwo!31026 r!7292) s!2326))))

(declare-fun b!5439925 () Bool)

(declare-fun lt!2218698 () Unit!154570)

(declare-fun lt!2218699 () Unit!154570)

(assert (=> b!5439925 (= lt!2218698 lt!2218699)))

(declare-fun ++!13622 (List!62072 List!62072) List!62072)

(assert (=> b!5439925 (= (++!13622 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1869 (List!62072 C!30784 List!62072 List!62072) Unit!154570)

(assert (=> b!5439925 (= lt!2218699 (lemmaMoveElementToOtherListKeepsConcatEq!1869 Nil!61948 (h!68396 s!2326) (t!375297 s!2326) s!2326))))

(declare-fun e!3369961 () Option!15368)

(assert (=> b!5439925 (= e!3369961 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326) s!2326))))

(declare-fun b!5439926 () Bool)

(assert (=> b!5439926 (= e!3369960 (= (++!13622 (_1!35759 (get!21362 lt!2218697)) (_2!35759 (get!21362 lt!2218697))) s!2326))))

(declare-fun b!5439927 () Bool)

(assert (=> b!5439927 (= e!3369961 None!15367)))

(declare-fun b!5439928 () Bool)

(assert (=> b!5439928 (= e!3369962 e!3369961)))

(declare-fun c!949255 () Bool)

(assert (=> b!5439928 (= c!949255 ((_ is Nil!61948) s!2326))))

(declare-fun b!5439929 () Bool)

(declare-fun res!2316023 () Bool)

(assert (=> b!5439929 (=> (not res!2316023) (not e!3369960))))

(assert (=> b!5439929 (= res!2316023 (matchR!7442 (regOne!31026 r!7292) (_1!35759 (get!21362 lt!2218697))))))

(assert (= (and d!1732650 res!2316019) b!5439924))

(assert (= (and d!1732650 c!949256) b!5439923))

(assert (= (and d!1732650 (not c!949256)) b!5439928))

(assert (= (and b!5439928 c!949255) b!5439927))

(assert (= (and b!5439928 (not c!949255)) b!5439925))

(assert (= (and d!1732650 res!2316020) b!5439929))

(assert (= (and b!5439929 res!2316023) b!5439922))

(assert (= (and b!5439922 res!2316022) b!5439926))

(assert (= (and d!1732650 (not res!2316021)) b!5439921))

(declare-fun m!6461012 () Bool)

(assert (=> b!5439926 m!6461012))

(declare-fun m!6461014 () Bool)

(assert (=> b!5439926 m!6461014))

(declare-fun m!6461016 () Bool)

(assert (=> b!5439925 m!6461016))

(assert (=> b!5439925 m!6461016))

(declare-fun m!6461018 () Bool)

(assert (=> b!5439925 m!6461018))

(declare-fun m!6461020 () Bool)

(assert (=> b!5439925 m!6461020))

(assert (=> b!5439925 m!6461016))

(declare-fun m!6461022 () Bool)

(assert (=> b!5439925 m!6461022))

(declare-fun m!6461024 () Bool)

(assert (=> d!1732650 m!6461024))

(declare-fun m!6461026 () Bool)

(assert (=> d!1732650 m!6461026))

(assert (=> d!1732650 m!6460772))

(assert (=> b!5439924 m!6460582))

(assert (=> b!5439929 m!6461012))

(declare-fun m!6461028 () Bool)

(assert (=> b!5439929 m!6461028))

(assert (=> b!5439921 m!6461024))

(assert (=> b!5439922 m!6461012))

(declare-fun m!6461030 () Bool)

(assert (=> b!5439922 m!6461030))

(assert (=> b!5439206 d!1732650))

(declare-fun d!1732652 () Bool)

(declare-fun choose!41267 (Int) Bool)

(assert (=> d!1732652 (= (Exists!2438 lambda!286158) (choose!41267 lambda!286158))))

(declare-fun bs!1255183 () Bool)

(assert (= bs!1255183 d!1732652))

(declare-fun m!6461032 () Bool)

(assert (=> bs!1255183 m!6461032))

(assert (=> b!5439206 d!1732652))

(declare-fun d!1732654 () Bool)

(assert (=> d!1732654 (= (Exists!2438 lambda!286159) (choose!41267 lambda!286159))))

(declare-fun bs!1255184 () Bool)

(assert (= bs!1255184 d!1732654))

(declare-fun m!6461034 () Bool)

(assert (=> bs!1255184 m!6461034))

(assert (=> b!5439206 d!1732654))

(declare-fun bs!1255185 () Bool)

(declare-fun d!1732656 () Bool)

(assert (= bs!1255185 (and d!1732656 b!5439522)))

(declare-fun lambda!286226 () Int)

(assert (=> bs!1255185 (not (= lambda!286226 lambda!286192))))

(declare-fun bs!1255186 () Bool)

(assert (= bs!1255186 (and d!1732656 b!5439206)))

(assert (=> bs!1255186 (= lambda!286226 lambda!286158)))

(declare-fun bs!1255187 () Bool)

(assert (= bs!1255187 (and d!1732656 b!5439559)))

(assert (=> bs!1255187 (not (= lambda!286226 lambda!286201))))

(declare-fun bs!1255188 () Bool)

(assert (= bs!1255188 (and d!1732656 b!5439367)))

(assert (=> bs!1255188 (not (= lambda!286226 lambda!286184))))

(declare-fun bs!1255189 () Bool)

(assert (= bs!1255189 (and d!1732656 b!5439371)))

(assert (=> bs!1255189 (not (= lambda!286226 lambda!286185))))

(assert (=> bs!1255186 (not (= lambda!286226 lambda!286159))))

(declare-fun bs!1255190 () Bool)

(assert (= bs!1255190 (and d!1732656 b!5439555)))

(assert (=> bs!1255190 (not (= lambda!286226 lambda!286198))))

(declare-fun bs!1255191 () Bool)

(assert (= bs!1255191 (and d!1732656 b!5439526)))

(assert (=> bs!1255191 (not (= lambda!286226 lambda!286193))))

(assert (=> d!1732656 true))

(assert (=> d!1732656 true))

(assert (=> d!1732656 true))

(assert (=> d!1732656 (= (isDefined!12071 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326)) (Exists!2438 lambda!286226))))

(declare-fun lt!2218702 () Unit!154570)

(declare-fun choose!41268 (Regex!15257 Regex!15257 List!62072) Unit!154570)

(assert (=> d!1732656 (= lt!2218702 (choose!41268 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326))))

(assert (=> d!1732656 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732656 (= (lemmaFindConcatSeparationEquivalentToExists!1546 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326) lt!2218702)))

(declare-fun bs!1255192 () Bool)

(assert (= bs!1255192 d!1732656))

(assert (=> bs!1255192 m!6460572))

(declare-fun m!6461036 () Bool)

(assert (=> bs!1255192 m!6461036))

(declare-fun m!6461038 () Bool)

(assert (=> bs!1255192 m!6461038))

(assert (=> bs!1255192 m!6460572))

(assert (=> bs!1255192 m!6460574))

(assert (=> bs!1255192 m!6460772))

(assert (=> b!5439206 d!1732656))

(declare-fun bs!1255193 () Bool)

(declare-fun d!1732658 () Bool)

(assert (= bs!1255193 (and d!1732658 b!5439522)))

(declare-fun lambda!286231 () Int)

(assert (=> bs!1255193 (not (= lambda!286231 lambda!286192))))

(declare-fun bs!1255194 () Bool)

(assert (= bs!1255194 (and d!1732658 b!5439206)))

(assert (=> bs!1255194 (= lambda!286231 lambda!286158)))

(declare-fun bs!1255195 () Bool)

(assert (= bs!1255195 (and d!1732658 b!5439559)))

(assert (=> bs!1255195 (not (= lambda!286231 lambda!286201))))

(declare-fun bs!1255196 () Bool)

(assert (= bs!1255196 (and d!1732658 b!5439367)))

(assert (=> bs!1255196 (not (= lambda!286231 lambda!286184))))

(declare-fun bs!1255197 () Bool)

(assert (= bs!1255197 (and d!1732658 b!5439371)))

(assert (=> bs!1255197 (not (= lambda!286231 lambda!286185))))

(declare-fun bs!1255198 () Bool)

(assert (= bs!1255198 (and d!1732658 d!1732656)))

(assert (=> bs!1255198 (= lambda!286231 lambda!286226)))

(assert (=> bs!1255194 (not (= lambda!286231 lambda!286159))))

(declare-fun bs!1255199 () Bool)

(assert (= bs!1255199 (and d!1732658 b!5439555)))

(assert (=> bs!1255199 (not (= lambda!286231 lambda!286198))))

(declare-fun bs!1255200 () Bool)

(assert (= bs!1255200 (and d!1732658 b!5439526)))

(assert (=> bs!1255200 (not (= lambda!286231 lambda!286193))))

(assert (=> d!1732658 true))

(assert (=> d!1732658 true))

(assert (=> d!1732658 true))

(declare-fun lambda!286232 () Int)

(assert (=> bs!1255193 (not (= lambda!286232 lambda!286192))))

(declare-fun bs!1255201 () Bool)

(assert (= bs!1255201 d!1732658))

(assert (=> bs!1255201 (not (= lambda!286232 lambda!286231))))

(assert (=> bs!1255194 (not (= lambda!286232 lambda!286158))))

(assert (=> bs!1255195 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286232 lambda!286201))))

(assert (=> bs!1255196 (not (= lambda!286232 lambda!286184))))

(assert (=> bs!1255197 (= lambda!286232 lambda!286185)))

(assert (=> bs!1255198 (not (= lambda!286232 lambda!286226))))

(assert (=> bs!1255194 (= lambda!286232 lambda!286159)))

(assert (=> bs!1255199 (not (= lambda!286232 lambda!286198))))

(assert (=> bs!1255200 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286232 lambda!286193))))

(assert (=> d!1732658 true))

(assert (=> d!1732658 true))

(assert (=> d!1732658 true))

(assert (=> d!1732658 (= (Exists!2438 lambda!286231) (Exists!2438 lambda!286232))))

(declare-fun lt!2218705 () Unit!154570)

(declare-fun choose!41269 (Regex!15257 Regex!15257 List!62072) Unit!154570)

(assert (=> d!1732658 (= lt!2218705 (choose!41269 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326))))

(assert (=> d!1732658 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732658 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1092 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326) lt!2218705)))

(declare-fun m!6461040 () Bool)

(assert (=> bs!1255201 m!6461040))

(declare-fun m!6461042 () Bool)

(assert (=> bs!1255201 m!6461042))

(declare-fun m!6461044 () Bool)

(assert (=> bs!1255201 m!6461044))

(assert (=> bs!1255201 m!6460772))

(assert (=> b!5439206 d!1732658))

(declare-fun d!1732660 () Bool)

(declare-fun isEmpty!33935 (Option!15368) Bool)

(assert (=> d!1732660 (= (isDefined!12071 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326)) (not (isEmpty!33935 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326))))))

(declare-fun bs!1255202 () Bool)

(assert (= bs!1255202 d!1732660))

(assert (=> bs!1255202 m!6460572))

(declare-fun m!6461046 () Bool)

(assert (=> bs!1255202 m!6461046))

(assert (=> b!5439206 d!1732660))

(declare-fun e!3369971 () Bool)

(declare-fun d!1732662 () Bool)

(assert (=> d!1732662 (= (matchZipper!1501 ((_ map or) lt!2218594 lt!2218611) (t!375297 s!2326)) e!3369971)))

(declare-fun res!2316038 () Bool)

(assert (=> d!1732662 (=> res!2316038 e!3369971)))

(assert (=> d!1732662 (= res!2316038 (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(declare-fun lt!2218708 () Unit!154570)

(declare-fun choose!41270 ((InoxSet Context!9282) (InoxSet Context!9282) List!62072) Unit!154570)

(assert (=> d!1732662 (= lt!2218708 (choose!41270 lt!2218594 lt!2218611 (t!375297 s!2326)))))

(assert (=> d!1732662 (= (lemmaZipperConcatMatchesSameAsBothZippers!494 lt!2218594 lt!2218611 (t!375297 s!2326)) lt!2218708)))

(declare-fun b!5439944 () Bool)

(assert (=> b!5439944 (= e!3369971 (matchZipper!1501 lt!2218611 (t!375297 s!2326)))))

(assert (= (and d!1732662 (not res!2316038)) b!5439944))

(assert (=> d!1732662 m!6460546))

(assert (=> d!1732662 m!6460538))

(declare-fun m!6461048 () Bool)

(assert (=> d!1732662 m!6461048))

(assert (=> b!5439944 m!6460522))

(assert (=> b!5439207 d!1732662))

(assert (=> b!5439207 d!1732626))

(declare-fun d!1732664 () Bool)

(declare-fun c!949257 () Bool)

(assert (=> d!1732664 (= c!949257 (isEmpty!33933 (t!375297 s!2326)))))

(declare-fun e!3369972 () Bool)

(assert (=> d!1732664 (= (matchZipper!1501 ((_ map or) lt!2218594 lt!2218611) (t!375297 s!2326)) e!3369972)))

(declare-fun b!5439945 () Bool)

(assert (=> b!5439945 (= e!3369972 (nullableZipper!1474 ((_ map or) lt!2218594 lt!2218611)))))

(declare-fun b!5439946 () Bool)

(assert (=> b!5439946 (= e!3369972 (matchZipper!1501 (derivationStepZipper!1486 ((_ map or) lt!2218594 lt!2218611) (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))))))

(assert (= (and d!1732664 c!949257) b!5439945))

(assert (= (and d!1732664 (not c!949257)) b!5439946))

(assert (=> d!1732664 m!6460834))

(declare-fun m!6461050 () Bool)

(assert (=> b!5439945 m!6461050))

(assert (=> b!5439946 m!6460838))

(assert (=> b!5439946 m!6460838))

(declare-fun m!6461052 () Bool)

(assert (=> b!5439946 m!6461052))

(assert (=> b!5439946 m!6460842))

(assert (=> b!5439946 m!6461052))

(assert (=> b!5439946 m!6460842))

(declare-fun m!6461054 () Bool)

(assert (=> b!5439946 m!6461054))

(assert (=> b!5439207 d!1732664))

(declare-fun d!1732666 () Bool)

(assert (=> d!1732666 (= (isEmpty!33931 (t!375296 zl!343)) ((_ is Nil!61947) (t!375296 zl!343)))))

(assert (=> b!5439197 d!1732666))

(declare-fun b!5439965 () Bool)

(declare-fun res!2316052 () Bool)

(declare-fun e!3369989 () Bool)

(assert (=> b!5439965 (=> res!2316052 e!3369989)))

(assert (=> b!5439965 (= res!2316052 (not ((_ is Concat!24102) r!7292)))))

(declare-fun e!3369990 () Bool)

(assert (=> b!5439965 (= e!3369990 e!3369989)))

(declare-fun c!949262 () Bool)

(declare-fun c!949263 () Bool)

(declare-fun bm!390077 () Bool)

(declare-fun call!390083 () Bool)

(assert (=> bm!390077 (= call!390083 (validRegex!6993 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))

(declare-fun b!5439966 () Bool)

(declare-fun e!3369992 () Bool)

(declare-fun call!390082 () Bool)

(assert (=> b!5439966 (= e!3369992 call!390082)))

(declare-fun b!5439967 () Bool)

(declare-fun e!3369993 () Bool)

(assert (=> b!5439967 (= e!3369993 call!390082)))

(declare-fun b!5439968 () Bool)

(assert (=> b!5439968 (= e!3369989 e!3369992)))

(declare-fun res!2316053 () Bool)

(assert (=> b!5439968 (=> (not res!2316053) (not e!3369992))))

(declare-fun call!390084 () Bool)

(assert (=> b!5439968 (= res!2316053 call!390084)))

(declare-fun b!5439969 () Bool)

(declare-fun e!3369987 () Bool)

(declare-fun e!3369991 () Bool)

(assert (=> b!5439969 (= e!3369987 e!3369991)))

(assert (=> b!5439969 (= c!949263 ((_ is Star!15257) r!7292))))

(declare-fun d!1732668 () Bool)

(declare-fun res!2316050 () Bool)

(assert (=> d!1732668 (=> res!2316050 e!3369987)))

(assert (=> d!1732668 (= res!2316050 ((_ is ElementMatch!15257) r!7292))))

(assert (=> d!1732668 (= (validRegex!6993 r!7292) e!3369987)))

(declare-fun bm!390078 () Bool)

(assert (=> bm!390078 (= call!390084 (validRegex!6993 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))

(declare-fun b!5439970 () Bool)

(declare-fun e!3369988 () Bool)

(assert (=> b!5439970 (= e!3369988 call!390083)))

(declare-fun bm!390079 () Bool)

(assert (=> bm!390079 (= call!390082 call!390083)))

(declare-fun b!5439971 () Bool)

(assert (=> b!5439971 (= e!3369991 e!3369990)))

(assert (=> b!5439971 (= c!949262 ((_ is Union!15257) r!7292))))

(declare-fun b!5439972 () Bool)

(assert (=> b!5439972 (= e!3369991 e!3369988)))

(declare-fun res!2316049 () Bool)

(assert (=> b!5439972 (= res!2316049 (not (nullable!5426 (reg!15586 r!7292))))))

(assert (=> b!5439972 (=> (not res!2316049) (not e!3369988))))

(declare-fun b!5439973 () Bool)

(declare-fun res!2316051 () Bool)

(assert (=> b!5439973 (=> (not res!2316051) (not e!3369993))))

(assert (=> b!5439973 (= res!2316051 call!390084)))

(assert (=> b!5439973 (= e!3369990 e!3369993)))

(assert (= (and d!1732668 (not res!2316050)) b!5439969))

(assert (= (and b!5439969 c!949263) b!5439972))

(assert (= (and b!5439969 (not c!949263)) b!5439971))

(assert (= (and b!5439972 res!2316049) b!5439970))

(assert (= (and b!5439971 c!949262) b!5439973))

(assert (= (and b!5439971 (not c!949262)) b!5439965))

(assert (= (and b!5439973 res!2316051) b!5439967))

(assert (= (and b!5439965 (not res!2316052)) b!5439968))

(assert (= (and b!5439968 res!2316053) b!5439966))

(assert (= (or b!5439967 b!5439966) bm!390079))

(assert (= (or b!5439973 b!5439968) bm!390078))

(assert (= (or b!5439970 bm!390079) bm!390077))

(declare-fun m!6461056 () Bool)

(assert (=> bm!390077 m!6461056))

(declare-fun m!6461058 () Bool)

(assert (=> bm!390078 m!6461058))

(declare-fun m!6461060 () Bool)

(assert (=> b!5439972 m!6461060))

(assert (=> start!570398 d!1732668))

(declare-fun bs!1255203 () Bool)

(declare-fun d!1732670 () Bool)

(assert (= bs!1255203 (and d!1732670 b!5439217)))

(declare-fun lambda!286233 () Int)

(assert (=> bs!1255203 (= lambda!286233 lambda!286160)))

(declare-fun bs!1255204 () Bool)

(assert (= bs!1255204 (and d!1732670 d!1732552)))

(assert (=> bs!1255204 (= lambda!286233 lambda!286189)))

(assert (=> d!1732670 true))

(assert (=> d!1732670 (= (derivationStepZipper!1486 lt!2218597 (h!68396 s!2326)) (flatMap!984 lt!2218597 lambda!286233))))

(declare-fun bs!1255205 () Bool)

(assert (= bs!1255205 d!1732670))

(declare-fun m!6461062 () Bool)

(assert (=> bs!1255205 m!6461062))

(assert (=> b!5439194 d!1732670))

(declare-fun d!1732672 () Bool)

(assert (=> d!1732672 (= (flatMap!984 lt!2218597 lambda!286160) (choose!41265 lt!2218597 lambda!286160))))

(declare-fun bs!1255206 () Bool)

(assert (= bs!1255206 d!1732672))

(declare-fun m!6461064 () Bool)

(assert (=> bs!1255206 m!6461064))

(assert (=> b!5439194 d!1732672))

(assert (=> b!5439194 d!1732634))

(declare-fun d!1732674 () Bool)

(assert (=> d!1732674 (= (flatMap!984 lt!2218597 lambda!286160) (dynLambda!24380 lambda!286160 lt!2218591))))

(declare-fun lt!2218709 () Unit!154570)

(assert (=> d!1732674 (= lt!2218709 (choose!41264 lt!2218597 lt!2218591 lambda!286160))))

(assert (=> d!1732674 (= lt!2218597 (store ((as const (Array Context!9282 Bool)) false) lt!2218591 true))))

(assert (=> d!1732674 (= (lemmaFlatMapOnSingletonSet!516 lt!2218597 lt!2218591 lambda!286160) lt!2218709)))

(declare-fun b_lambda!207371 () Bool)

(assert (=> (not b_lambda!207371) (not d!1732674)))

(declare-fun bs!1255207 () Bool)

(assert (= bs!1255207 d!1732674))

(assert (=> bs!1255207 m!6460512))

(declare-fun m!6461066 () Bool)

(assert (=> bs!1255207 m!6461066))

(declare-fun m!6461068 () Bool)

(assert (=> bs!1255207 m!6461068))

(assert (=> bs!1255207 m!6460520))

(assert (=> b!5439194 d!1732674))

(declare-fun d!1732676 () Bool)

(declare-fun c!949264 () Bool)

(assert (=> d!1732676 (= c!949264 (isEmpty!33933 s!2326))))

(declare-fun e!3369994 () Bool)

(assert (=> d!1732676 (= (matchZipper!1501 z!1189 s!2326) e!3369994)))

(declare-fun b!5439974 () Bool)

(assert (=> b!5439974 (= e!3369994 (nullableZipper!1474 z!1189))))

(declare-fun b!5439975 () Bool)

(assert (=> b!5439975 (= e!3369994 (matchZipper!1501 (derivationStepZipper!1486 z!1189 (head!11665 s!2326)) (tail!10762 s!2326)))))

(assert (= (and d!1732676 c!949264) b!5439974))

(assert (= (and d!1732676 (not c!949264)) b!5439975))

(assert (=> d!1732676 m!6460694))

(declare-fun m!6461070 () Bool)

(assert (=> b!5439974 m!6461070))

(assert (=> b!5439975 m!6460724))

(assert (=> b!5439975 m!6460724))

(declare-fun m!6461072 () Bool)

(assert (=> b!5439975 m!6461072))

(assert (=> b!5439975 m!6460720))

(assert (=> b!5439975 m!6461072))

(assert (=> b!5439975 m!6460720))

(declare-fun m!6461074 () Bool)

(assert (=> b!5439975 m!6461074))

(assert (=> b!5439195 d!1732676))

(assert (=> b!5439195 d!1732578))

(declare-fun d!1732678 () Bool)

(declare-fun c!949265 () Bool)

(assert (=> d!1732678 (= c!949265 (isEmpty!33933 (t!375297 s!2326)))))

(declare-fun e!3369995 () Bool)

(assert (=> d!1732678 (= (matchZipper!1501 lt!2218598 (t!375297 s!2326)) e!3369995)))

(declare-fun b!5439976 () Bool)

(assert (=> b!5439976 (= e!3369995 (nullableZipper!1474 lt!2218598))))

(declare-fun b!5439977 () Bool)

(assert (=> b!5439977 (= e!3369995 (matchZipper!1501 (derivationStepZipper!1486 lt!2218598 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))))))

(assert (= (and d!1732678 c!949265) b!5439976))

(assert (= (and d!1732678 (not c!949265)) b!5439977))

(assert (=> d!1732678 m!6460834))

(declare-fun m!6461076 () Bool)

(assert (=> b!5439976 m!6461076))

(assert (=> b!5439977 m!6460838))

(assert (=> b!5439977 m!6460838))

(declare-fun m!6461078 () Bool)

(assert (=> b!5439977 m!6461078))

(assert (=> b!5439977 m!6460842))

(assert (=> b!5439977 m!6461078))

(assert (=> b!5439977 m!6460842))

(declare-fun m!6461080 () Bool)

(assert (=> b!5439977 m!6461080))

(assert (=> b!5439195 d!1732678))

(assert (=> b!5439195 d!1732662))

(declare-fun d!1732680 () Bool)

(declare-fun res!2316058 () Bool)

(declare-fun e!3370000 () Bool)

(assert (=> d!1732680 (=> res!2316058 e!3370000)))

(assert (=> d!1732680 (= res!2316058 ((_ is Nil!61946) (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> d!1732680 (= (forall!14574 (t!375295 (exprs!5141 (h!68395 zl!343))) lambda!286161) e!3370000)))

(declare-fun b!5439982 () Bool)

(declare-fun e!3370001 () Bool)

(assert (=> b!5439982 (= e!3370000 e!3370001)))

(declare-fun res!2316059 () Bool)

(assert (=> b!5439982 (=> (not res!2316059) (not e!3370001))))

(declare-fun dynLambda!24381 (Int Regex!15257) Bool)

(assert (=> b!5439982 (= res!2316059 (dynLambda!24381 lambda!286161 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun b!5439983 () Bool)

(assert (=> b!5439983 (= e!3370001 (forall!14574 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))) lambda!286161))))

(assert (= (and d!1732680 (not res!2316058)) b!5439982))

(assert (= (and b!5439982 res!2316059) b!5439983))

(declare-fun b_lambda!207373 () Bool)

(assert (=> (not b_lambda!207373) (not b!5439982)))

(declare-fun m!6461082 () Bool)

(assert (=> b!5439982 m!6461082))

(declare-fun m!6461084 () Bool)

(assert (=> b!5439983 m!6461084))

(assert (=> b!5439215 d!1732680))

(declare-fun d!1732682 () Bool)

(declare-fun lt!2218712 () Regex!15257)

(assert (=> d!1732682 (validRegex!6993 lt!2218712)))

(assert (=> d!1732682 (= lt!2218712 (generalisedUnion!1186 (unfocusZipperList!699 zl!343)))))

(assert (=> d!1732682 (= (unfocusZipper!999 zl!343) lt!2218712)))

(declare-fun bs!1255208 () Bool)

(assert (= bs!1255208 d!1732682))

(declare-fun m!6461086 () Bool)

(assert (=> bs!1255208 m!6461086))

(assert (=> bs!1255208 m!6460560))

(assert (=> bs!1255208 m!6460560))

(assert (=> bs!1255208 m!6460562))

(assert (=> b!5439204 d!1732682))

(declare-fun d!1732684 () Bool)

(assert (=> d!1732684 (= (nullable!5426 (regOne!31026 (regOne!31026 r!7292))) (nullableFct!1625 (regOne!31026 (regOne!31026 r!7292))))))

(declare-fun bs!1255209 () Bool)

(assert (= bs!1255209 d!1732684))

(declare-fun m!6461088 () Bool)

(assert (=> bs!1255209 m!6461088))

(assert (=> b!5439196 d!1732684))

(declare-fun condSetEmpty!35559 () Bool)

(assert (=> setNonEmpty!35553 (= condSetEmpty!35559 (= setRest!35553 ((as const (Array Context!9282 Bool)) false)))))

(declare-fun setRes!35559 () Bool)

(assert (=> setNonEmpty!35553 (= tp!1499721 setRes!35559)))

(declare-fun setIsEmpty!35559 () Bool)

(assert (=> setIsEmpty!35559 setRes!35559))

(declare-fun setNonEmpty!35559 () Bool)

(declare-fun setElem!35559 () Context!9282)

(declare-fun tp!1499792 () Bool)

(declare-fun e!3370004 () Bool)

(assert (=> setNonEmpty!35559 (= setRes!35559 (and tp!1499792 (inv!81389 setElem!35559) e!3370004))))

(declare-fun setRest!35559 () (InoxSet Context!9282))

(assert (=> setNonEmpty!35559 (= setRest!35553 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) setElem!35559 true) setRest!35559))))

(declare-fun b!5439988 () Bool)

(declare-fun tp!1499793 () Bool)

(assert (=> b!5439988 (= e!3370004 tp!1499793)))

(assert (= (and setNonEmpty!35553 condSetEmpty!35559) setIsEmpty!35559))

(assert (= (and setNonEmpty!35553 (not condSetEmpty!35559)) setNonEmpty!35559))

(assert (= setNonEmpty!35559 b!5439988))

(declare-fun m!6461090 () Bool)

(assert (=> setNonEmpty!35559 m!6461090))

(declare-fun b!5439999 () Bool)

(declare-fun e!3370007 () Bool)

(assert (=> b!5439999 (= e!3370007 tp_is_empty!39767)))

(assert (=> b!5439216 (= tp!1499727 e!3370007)))

(declare-fun b!5440001 () Bool)

(declare-fun tp!1499807 () Bool)

(assert (=> b!5440001 (= e!3370007 tp!1499807)))

(declare-fun b!5440000 () Bool)

(declare-fun tp!1499804 () Bool)

(declare-fun tp!1499806 () Bool)

(assert (=> b!5440000 (= e!3370007 (and tp!1499804 tp!1499806))))

(declare-fun b!5440002 () Bool)

(declare-fun tp!1499805 () Bool)

(declare-fun tp!1499808 () Bool)

(assert (=> b!5440002 (= e!3370007 (and tp!1499805 tp!1499808))))

(assert (= (and b!5439216 ((_ is ElementMatch!15257) (reg!15586 r!7292))) b!5439999))

(assert (= (and b!5439216 ((_ is Concat!24102) (reg!15586 r!7292))) b!5440000))

(assert (= (and b!5439216 ((_ is Star!15257) (reg!15586 r!7292))) b!5440001))

(assert (= (and b!5439216 ((_ is Union!15257) (reg!15586 r!7292))) b!5440002))

(declare-fun b!5440003 () Bool)

(declare-fun e!3370008 () Bool)

(assert (=> b!5440003 (= e!3370008 tp_is_empty!39767)))

(assert (=> b!5439200 (= tp!1499728 e!3370008)))

(declare-fun b!5440005 () Bool)

(declare-fun tp!1499812 () Bool)

(assert (=> b!5440005 (= e!3370008 tp!1499812)))

(declare-fun b!5440004 () Bool)

(declare-fun tp!1499809 () Bool)

(declare-fun tp!1499811 () Bool)

(assert (=> b!5440004 (= e!3370008 (and tp!1499809 tp!1499811))))

(declare-fun b!5440006 () Bool)

(declare-fun tp!1499810 () Bool)

(declare-fun tp!1499813 () Bool)

(assert (=> b!5440006 (= e!3370008 (and tp!1499810 tp!1499813))))

(assert (= (and b!5439200 ((_ is ElementMatch!15257) (regOne!31026 r!7292))) b!5440003))

(assert (= (and b!5439200 ((_ is Concat!24102) (regOne!31026 r!7292))) b!5440004))

(assert (= (and b!5439200 ((_ is Star!15257) (regOne!31026 r!7292))) b!5440005))

(assert (= (and b!5439200 ((_ is Union!15257) (regOne!31026 r!7292))) b!5440006))

(declare-fun b!5440007 () Bool)

(declare-fun e!3370009 () Bool)

(assert (=> b!5440007 (= e!3370009 tp_is_empty!39767)))

(assert (=> b!5439200 (= tp!1499720 e!3370009)))

(declare-fun b!5440009 () Bool)

(declare-fun tp!1499817 () Bool)

(assert (=> b!5440009 (= e!3370009 tp!1499817)))

(declare-fun b!5440008 () Bool)

(declare-fun tp!1499814 () Bool)

(declare-fun tp!1499816 () Bool)

(assert (=> b!5440008 (= e!3370009 (and tp!1499814 tp!1499816))))

(declare-fun b!5440010 () Bool)

(declare-fun tp!1499815 () Bool)

(declare-fun tp!1499818 () Bool)

(assert (=> b!5440010 (= e!3370009 (and tp!1499815 tp!1499818))))

(assert (= (and b!5439200 ((_ is ElementMatch!15257) (regTwo!31026 r!7292))) b!5440007))

(assert (= (and b!5439200 ((_ is Concat!24102) (regTwo!31026 r!7292))) b!5440008))

(assert (= (and b!5439200 ((_ is Star!15257) (regTwo!31026 r!7292))) b!5440009))

(assert (= (and b!5439200 ((_ is Union!15257) (regTwo!31026 r!7292))) b!5440010))

(declare-fun b!5440011 () Bool)

(declare-fun e!3370010 () Bool)

(assert (=> b!5440011 (= e!3370010 tp_is_empty!39767)))

(assert (=> b!5439203 (= tp!1499725 e!3370010)))

(declare-fun b!5440013 () Bool)

(declare-fun tp!1499822 () Bool)

(assert (=> b!5440013 (= e!3370010 tp!1499822)))

(declare-fun b!5440012 () Bool)

(declare-fun tp!1499819 () Bool)

(declare-fun tp!1499821 () Bool)

(assert (=> b!5440012 (= e!3370010 (and tp!1499819 tp!1499821))))

(declare-fun b!5440014 () Bool)

(declare-fun tp!1499820 () Bool)

(declare-fun tp!1499823 () Bool)

(assert (=> b!5440014 (= e!3370010 (and tp!1499820 tp!1499823))))

(assert (= (and b!5439203 ((_ is ElementMatch!15257) (regOne!31027 r!7292))) b!5440011))

(assert (= (and b!5439203 ((_ is Concat!24102) (regOne!31027 r!7292))) b!5440012))

(assert (= (and b!5439203 ((_ is Star!15257) (regOne!31027 r!7292))) b!5440013))

(assert (= (and b!5439203 ((_ is Union!15257) (regOne!31027 r!7292))) b!5440014))

(declare-fun b!5440015 () Bool)

(declare-fun e!3370011 () Bool)

(assert (=> b!5440015 (= e!3370011 tp_is_empty!39767)))

(assert (=> b!5439203 (= tp!1499723 e!3370011)))

(declare-fun b!5440017 () Bool)

(declare-fun tp!1499827 () Bool)

(assert (=> b!5440017 (= e!3370011 tp!1499827)))

(declare-fun b!5440016 () Bool)

(declare-fun tp!1499824 () Bool)

(declare-fun tp!1499826 () Bool)

(assert (=> b!5440016 (= e!3370011 (and tp!1499824 tp!1499826))))

(declare-fun b!5440018 () Bool)

(declare-fun tp!1499825 () Bool)

(declare-fun tp!1499828 () Bool)

(assert (=> b!5440018 (= e!3370011 (and tp!1499825 tp!1499828))))

(assert (= (and b!5439203 ((_ is ElementMatch!15257) (regTwo!31027 r!7292))) b!5440015))

(assert (= (and b!5439203 ((_ is Concat!24102) (regTwo!31027 r!7292))) b!5440016))

(assert (= (and b!5439203 ((_ is Star!15257) (regTwo!31027 r!7292))) b!5440017))

(assert (= (and b!5439203 ((_ is Union!15257) (regTwo!31027 r!7292))) b!5440018))

(declare-fun b!5440026 () Bool)

(declare-fun e!3370017 () Bool)

(declare-fun tp!1499833 () Bool)

(assert (=> b!5440026 (= e!3370017 tp!1499833)))

(declare-fun tp!1499834 () Bool)

(declare-fun e!3370016 () Bool)

(declare-fun b!5440025 () Bool)

(assert (=> b!5440025 (= e!3370016 (and (inv!81389 (h!68395 (t!375296 zl!343))) e!3370017 tp!1499834))))

(assert (=> b!5439208 (= tp!1499729 e!3370016)))

(assert (= b!5440025 b!5440026))

(assert (= (and b!5439208 ((_ is Cons!61947) (t!375296 zl!343))) b!5440025))

(declare-fun m!6461092 () Bool)

(assert (=> b!5440025 m!6461092))

(declare-fun b!5440031 () Bool)

(declare-fun e!3370020 () Bool)

(declare-fun tp!1499839 () Bool)

(declare-fun tp!1499840 () Bool)

(assert (=> b!5440031 (= e!3370020 (and tp!1499839 tp!1499840))))

(assert (=> b!5439209 (= tp!1499724 e!3370020)))

(assert (= (and b!5439209 ((_ is Cons!61946) (exprs!5141 (h!68395 zl!343)))) b!5440031))

(declare-fun b!5440032 () Bool)

(declare-fun e!3370021 () Bool)

(declare-fun tp!1499841 () Bool)

(declare-fun tp!1499842 () Bool)

(assert (=> b!5440032 (= e!3370021 (and tp!1499841 tp!1499842))))

(assert (=> b!5439198 (= tp!1499726 e!3370021)))

(assert (= (and b!5439198 ((_ is Cons!61946) (exprs!5141 setElem!35553))) b!5440032))

(declare-fun b!5440037 () Bool)

(declare-fun e!3370024 () Bool)

(declare-fun tp!1499845 () Bool)

(assert (=> b!5440037 (= e!3370024 (and tp_is_empty!39767 tp!1499845))))

(assert (=> b!5439205 (= tp!1499722 e!3370024)))

(assert (= (and b!5439205 ((_ is Cons!61948) (t!375297 s!2326))) b!5440037))

(declare-fun b_lambda!207375 () Bool)

(assert (= b_lambda!207373 (or b!5439215 b_lambda!207375)))

(declare-fun bs!1255210 () Bool)

(declare-fun d!1732686 () Bool)

(assert (= bs!1255210 (and d!1732686 b!5439215)))

(assert (=> bs!1255210 (= (dynLambda!24381 lambda!286161 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))) (validRegex!6993 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun m!6461094 () Bool)

(assert (=> bs!1255210 m!6461094))

(assert (=> b!5439982 d!1732686))

(declare-fun b_lambda!207377 () Bool)

(assert (= b_lambda!207369 (or b!5439217 b_lambda!207377)))

(declare-fun bs!1255211 () Bool)

(declare-fun d!1732688 () Bool)

(assert (= bs!1255211 (and d!1732688 b!5439217)))

(assert (=> bs!1255211 (= (dynLambda!24380 lambda!286160 (h!68395 zl!343)) (derivationStepZipperUp!629 (h!68395 zl!343) (h!68396 s!2326)))))

(assert (=> bs!1255211 m!6460526))

(assert (=> d!1732640 d!1732688))

(declare-fun b_lambda!207379 () Bool)

(assert (= b_lambda!207371 (or b!5439217 b_lambda!207379)))

(declare-fun bs!1255212 () Bool)

(declare-fun d!1732690 () Bool)

(assert (= bs!1255212 (and d!1732690 b!5439217)))

(assert (=> bs!1255212 (= (dynLambda!24380 lambda!286160 lt!2218591) (derivationStepZipperUp!629 lt!2218591 (h!68396 s!2326)))))

(assert (=> bs!1255212 m!6460514))

(assert (=> d!1732674 d!1732690))

(check-sat (not b!5439704) (not b!5439862) (not b!5439852) (not b!5439925) (not b_lambda!207379) (not b_lambda!207377) (not b!5440010) (not bm!390067) (not b!5439556) (not bm!390051) (not d!1732660) (not b!5439544) tp_is_empty!39767 (not b!5439924) (not d!1732676) (not b!5440016) (not b!5440006) (not b_lambda!207375) (not b!5439929) (not b!5440037) (not bm!390019) (not b!5439485) (not b!5439707) (not d!1732650) (not b!5439837) (not b!5439588) (not d!1732588) (not bs!1255210) (not b!5440031) (not b!5439841) (not b!5439368) (not d!1732646) (not b!5439639) (not b!5440026) (not b!5439579) (not d!1732672) (not d!1732674) (not d!1732658) (not d!1732632) (not b!5440004) (not b!5440018) (not d!1732628) (not b!5439483) (not b!5439705) (not bm!390000) (not b!5440025) (not b!5439562) (not b!5440013) (not b!5440032) (not b!5439523) (not b!5439706) (not b!5439921) (not d!1732610) (not b!5439702) (not b!5440009) (not b!5439536) (not b!5440014) (not b!5439944) (not d!1732536) (not d!1732612) (not bm!390017) (not b!5439863) (not b!5440012) (not d!1732576) (not b!5439972) (not d!1732648) (not b!5439478) (not b!5439983) (not bm!390065) (not d!1732640) (not d!1732682) (not b!5439946) (not b!5439374) (not b!5439585) (not d!1732578) (not d!1732678) (not b!5439988) (not b!5439902) (not b!5439926) (not b!5439853) (not b!5440008) (not b!5439975) (not d!1732552) (not b!5439976) (not b!5440001) (not bm!390050) (not bm!390023) (not d!1732626) (not bs!1255212) (not b!5439587) (not bm!390018) (not b!5439486) (not d!1732654) (not b!5439840) (not d!1732652) (not d!1732568) (not bs!1255211) (not d!1732544) (not bm!390052) (not b!5440002) (not b!5439708) (not setNonEmpty!35559) (not bm!390015) (not b!5439836) (not b!5439736) (not d!1732684) (not b!5439540) (not b!5439543) (not bm!390068) (not d!1732636) (not b!5439529) (not b!5439701) (not b!5439899) (not d!1732664) (not b!5439830) (not b!5440017) (not d!1732560) (not b!5439834) (not bm!389999) (not b!5439857) (not b!5439580) (not b!5440000) (not bm!390016) (not d!1732670) (not b!5439835) (not b!5439839) (not b!5439482) (not b!5439922) (not b!5439541) (not d!1732558) (not b!5439977) (not b!5439945) (not b!5439858) (not b!5439974) (not b!5439831) (not b!5439535) (not b!5439477) (not b!5439584) (not b!5440005) (not bm!390078) (not d!1732662) (not bm!390077) (not d!1732656) (not b!5439638) (not bm!390020) (not d!1732624))
(check-sat)
(get-model)

(declare-fun d!1732812 () Bool)

(assert (=> d!1732812 (= (isEmpty!33933 (t!375297 s!2326)) ((_ is Nil!61948) (t!375297 s!2326)))))

(assert (=> d!1732626 d!1732812))

(declare-fun bs!1255373 () Bool)

(declare-fun d!1732818 () Bool)

(assert (= bs!1255373 (and d!1732818 d!1732588)))

(declare-fun lambda!286254 () Int)

(assert (=> bs!1255373 (= lambda!286254 lambda!286213)))

(declare-fun bs!1255374 () Bool)

(assert (= bs!1255374 (and d!1732818 d!1732610)))

(assert (=> bs!1255374 (= lambda!286254 lambda!286216)))

(declare-fun bs!1255375 () Bool)

(assert (= bs!1255375 (and d!1732818 d!1732632)))

(assert (=> bs!1255375 (= lambda!286254 lambda!286223)))

(declare-fun bs!1255376 () Bool)

(assert (= bs!1255376 (and d!1732818 d!1732612)))

(assert (=> bs!1255376 (= lambda!286254 lambda!286219)))

(declare-fun bs!1255377 () Bool)

(assert (= bs!1255377 (and d!1732818 d!1732624)))

(assert (=> bs!1255377 (= lambda!286254 lambda!286222)))

(declare-fun bs!1255378 () Bool)

(assert (= bs!1255378 (and d!1732818 b!5439215)))

(assert (=> bs!1255378 (= lambda!286254 lambda!286161)))

(assert (=> d!1732818 (= (inv!81389 setElem!35559) (forall!14574 (exprs!5141 setElem!35559) lambda!286254))))

(declare-fun bs!1255379 () Bool)

(assert (= bs!1255379 d!1732818))

(declare-fun m!6461414 () Bool)

(assert (=> bs!1255379 m!6461414))

(assert (=> setNonEmpty!35559 d!1732818))

(declare-fun d!1732820 () Bool)

(assert (=> d!1732820 (= (isEmpty!33933 s!2326) ((_ is Nil!61948) s!2326))))

(assert (=> d!1732560 d!1732820))

(declare-fun b!5440367 () Bool)

(declare-fun res!2316183 () Bool)

(declare-fun e!3370224 () Bool)

(assert (=> b!5440367 (=> res!2316183 e!3370224)))

(assert (=> b!5440367 (= res!2316183 (not ((_ is Concat!24102) (regOne!31026 r!7292))))))

(declare-fun e!3370225 () Bool)

(assert (=> b!5440367 (= e!3370225 e!3370224)))

(declare-fun bm!390152 () Bool)

(declare-fun c!949372 () Bool)

(declare-fun c!949371 () Bool)

(declare-fun call!390158 () Bool)

(assert (=> bm!390152 (= call!390158 (validRegex!6993 (ite c!949372 (reg!15586 (regOne!31026 r!7292)) (ite c!949371 (regTwo!31027 (regOne!31026 r!7292)) (regTwo!31026 (regOne!31026 r!7292))))))))

(declare-fun b!5440368 () Bool)

(declare-fun e!3370227 () Bool)

(declare-fun call!390157 () Bool)

(assert (=> b!5440368 (= e!3370227 call!390157)))

(declare-fun b!5440369 () Bool)

(declare-fun e!3370228 () Bool)

(assert (=> b!5440369 (= e!3370228 call!390157)))

(declare-fun b!5440370 () Bool)

(assert (=> b!5440370 (= e!3370224 e!3370227)))

(declare-fun res!2316184 () Bool)

(assert (=> b!5440370 (=> (not res!2316184) (not e!3370227))))

(declare-fun call!390159 () Bool)

(assert (=> b!5440370 (= res!2316184 call!390159)))

(declare-fun b!5440371 () Bool)

(declare-fun e!3370222 () Bool)

(declare-fun e!3370226 () Bool)

(assert (=> b!5440371 (= e!3370222 e!3370226)))

(assert (=> b!5440371 (= c!949372 ((_ is Star!15257) (regOne!31026 r!7292)))))

(declare-fun d!1732824 () Bool)

(declare-fun res!2316181 () Bool)

(assert (=> d!1732824 (=> res!2316181 e!3370222)))

(assert (=> d!1732824 (= res!2316181 ((_ is ElementMatch!15257) (regOne!31026 r!7292)))))

(assert (=> d!1732824 (= (validRegex!6993 (regOne!31026 r!7292)) e!3370222)))

(declare-fun bm!390153 () Bool)

(assert (=> bm!390153 (= call!390159 (validRegex!6993 (ite c!949371 (regOne!31027 (regOne!31026 r!7292)) (regOne!31026 (regOne!31026 r!7292)))))))

(declare-fun b!5440372 () Bool)

(declare-fun e!3370223 () Bool)

(assert (=> b!5440372 (= e!3370223 call!390158)))

(declare-fun bm!390154 () Bool)

(assert (=> bm!390154 (= call!390157 call!390158)))

(declare-fun b!5440373 () Bool)

(assert (=> b!5440373 (= e!3370226 e!3370225)))

(assert (=> b!5440373 (= c!949371 ((_ is Union!15257) (regOne!31026 r!7292)))))

(declare-fun b!5440374 () Bool)

(assert (=> b!5440374 (= e!3370226 e!3370223)))

(declare-fun res!2316180 () Bool)

(assert (=> b!5440374 (= res!2316180 (not (nullable!5426 (reg!15586 (regOne!31026 r!7292)))))))

(assert (=> b!5440374 (=> (not res!2316180) (not e!3370223))))

(declare-fun b!5440375 () Bool)

(declare-fun res!2316182 () Bool)

(assert (=> b!5440375 (=> (not res!2316182) (not e!3370228))))

(assert (=> b!5440375 (= res!2316182 call!390159)))

(assert (=> b!5440375 (= e!3370225 e!3370228)))

(assert (= (and d!1732824 (not res!2316181)) b!5440371))

(assert (= (and b!5440371 c!949372) b!5440374))

(assert (= (and b!5440371 (not c!949372)) b!5440373))

(assert (= (and b!5440374 res!2316180) b!5440372))

(assert (= (and b!5440373 c!949371) b!5440375))

(assert (= (and b!5440373 (not c!949371)) b!5440367))

(assert (= (and b!5440375 res!2316182) b!5440369))

(assert (= (and b!5440367 (not res!2316183)) b!5440370))

(assert (= (and b!5440370 res!2316184) b!5440368))

(assert (= (or b!5440369 b!5440368) bm!390154))

(assert (= (or b!5440375 b!5440370) bm!390153))

(assert (= (or b!5440372 bm!390154) bm!390152))

(declare-fun m!6461420 () Bool)

(assert (=> bm!390152 m!6461420))

(declare-fun m!6461422 () Bool)

(assert (=> bm!390153 m!6461422))

(declare-fun m!6461424 () Bool)

(assert (=> b!5440374 m!6461424))

(assert (=> d!1732560 d!1732824))

(declare-fun d!1732826 () Bool)

(assert (=> d!1732826 (= (isEmpty!33935 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326)) (not ((_ is Some!15367) (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326))))))

(assert (=> d!1732660 d!1732826))

(assert (=> b!5439862 d!1732636))

(declare-fun b!5440390 () Bool)

(declare-fun e!3370243 () Bool)

(declare-fun lt!2218737 () Bool)

(assert (=> b!5440390 (= e!3370243 (not lt!2218737))))

(declare-fun b!5440391 () Bool)

(declare-fun res!2316198 () Bool)

(declare-fun e!3370247 () Bool)

(assert (=> b!5440391 (=> res!2316198 e!3370247)))

(assert (=> b!5440391 (= res!2316198 (not ((_ is ElementMatch!15257) (regOne!31026 r!7292))))))

(assert (=> b!5440391 (= e!3370243 e!3370247)))

(declare-fun b!5440392 () Bool)

(declare-fun res!2316201 () Bool)

(declare-fun e!3370241 () Bool)

(assert (=> b!5440392 (=> res!2316201 e!3370241)))

(assert (=> b!5440392 (= res!2316201 (not (isEmpty!33933 (tail!10762 (_1!35759 (get!21362 lt!2218697))))))))

(declare-fun b!5440393 () Bool)

(declare-fun e!3370245 () Bool)

(assert (=> b!5440393 (= e!3370245 (nullable!5426 (regOne!31026 r!7292)))))

(declare-fun bm!390159 () Bool)

(declare-fun call!390164 () Bool)

(assert (=> bm!390159 (= call!390164 (isEmpty!33933 (_1!35759 (get!21362 lt!2218697))))))

(declare-fun b!5440394 () Bool)

(declare-fun res!2316195 () Bool)

(assert (=> b!5440394 (=> res!2316195 e!3370247)))

(declare-fun e!3370242 () Bool)

(assert (=> b!5440394 (= res!2316195 e!3370242)))

(declare-fun res!2316196 () Bool)

(assert (=> b!5440394 (=> (not res!2316196) (not e!3370242))))

(assert (=> b!5440394 (= res!2316196 lt!2218737)))

(declare-fun b!5440395 () Bool)

(declare-fun e!3370246 () Bool)

(assert (=> b!5440395 (= e!3370246 e!3370243)))

(declare-fun c!949377 () Bool)

(assert (=> b!5440395 (= c!949377 ((_ is EmptyLang!15257) (regOne!31026 r!7292)))))

(declare-fun b!5440396 () Bool)

(declare-fun e!3370244 () Bool)

(assert (=> b!5440396 (= e!3370244 e!3370241)))

(declare-fun res!2316197 () Bool)

(assert (=> b!5440396 (=> res!2316197 e!3370241)))

(assert (=> b!5440396 (= res!2316197 call!390164)))

(declare-fun b!5440397 () Bool)

(assert (=> b!5440397 (= e!3370241 (not (= (head!11665 (_1!35759 (get!21362 lt!2218697))) (c!949049 (regOne!31026 r!7292)))))))

(declare-fun b!5440398 () Bool)

(assert (=> b!5440398 (= e!3370245 (matchR!7442 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 (_1!35759 (get!21362 lt!2218697)))) (tail!10762 (_1!35759 (get!21362 lt!2218697)))))))

(declare-fun b!5440399 () Bool)

(assert (=> b!5440399 (= e!3370247 e!3370244)))

(declare-fun res!2316202 () Bool)

(assert (=> b!5440399 (=> (not res!2316202) (not e!3370244))))

(assert (=> b!5440399 (= res!2316202 (not lt!2218737))))

(declare-fun b!5440400 () Bool)

(assert (=> b!5440400 (= e!3370242 (= (head!11665 (_1!35759 (get!21362 lt!2218697))) (c!949049 (regOne!31026 r!7292))))))

(declare-fun b!5440402 () Bool)

(assert (=> b!5440402 (= e!3370246 (= lt!2218737 call!390164))))

(declare-fun b!5440403 () Bool)

(declare-fun res!2316199 () Bool)

(assert (=> b!5440403 (=> (not res!2316199) (not e!3370242))))

(assert (=> b!5440403 (= res!2316199 (not call!390164))))

(declare-fun d!1732828 () Bool)

(assert (=> d!1732828 e!3370246))

(declare-fun c!949376 () Bool)

(assert (=> d!1732828 (= c!949376 ((_ is EmptyExpr!15257) (regOne!31026 r!7292)))))

(assert (=> d!1732828 (= lt!2218737 e!3370245)))

(declare-fun c!949375 () Bool)

(assert (=> d!1732828 (= c!949375 (isEmpty!33933 (_1!35759 (get!21362 lt!2218697))))))

(assert (=> d!1732828 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1732828 (= (matchR!7442 (regOne!31026 r!7292) (_1!35759 (get!21362 lt!2218697))) lt!2218737)))

(declare-fun b!5440401 () Bool)

(declare-fun res!2316200 () Bool)

(assert (=> b!5440401 (=> (not res!2316200) (not e!3370242))))

(assert (=> b!5440401 (= res!2316200 (isEmpty!33933 (tail!10762 (_1!35759 (get!21362 lt!2218697)))))))

(assert (= (and d!1732828 c!949375) b!5440393))

(assert (= (and d!1732828 (not c!949375)) b!5440398))

(assert (= (and d!1732828 c!949376) b!5440402))

(assert (= (and d!1732828 (not c!949376)) b!5440395))

(assert (= (and b!5440395 c!949377) b!5440390))

(assert (= (and b!5440395 (not c!949377)) b!5440391))

(assert (= (and b!5440391 (not res!2316198)) b!5440394))

(assert (= (and b!5440394 res!2316196) b!5440403))

(assert (= (and b!5440403 res!2316199) b!5440401))

(assert (= (and b!5440401 res!2316200) b!5440400))

(assert (= (and b!5440394 (not res!2316195)) b!5440399))

(assert (= (and b!5440399 res!2316202) b!5440396))

(assert (= (and b!5440396 (not res!2316197)) b!5440392))

(assert (= (and b!5440392 (not res!2316201)) b!5440397))

(assert (= (or b!5440402 b!5440403 b!5440396) bm!390159))

(assert (=> b!5440393 m!6460774))

(declare-fun m!6461426 () Bool)

(assert (=> b!5440392 m!6461426))

(assert (=> b!5440392 m!6461426))

(declare-fun m!6461428 () Bool)

(assert (=> b!5440392 m!6461428))

(assert (=> b!5440401 m!6461426))

(assert (=> b!5440401 m!6461426))

(assert (=> b!5440401 m!6461428))

(declare-fun m!6461430 () Bool)

(assert (=> bm!390159 m!6461430))

(declare-fun m!6461432 () Bool)

(assert (=> b!5440400 m!6461432))

(assert (=> b!5440397 m!6461432))

(assert (=> d!1732828 m!6461430))

(assert (=> d!1732828 m!6460772))

(assert (=> b!5440398 m!6461432))

(assert (=> b!5440398 m!6461432))

(declare-fun m!6461434 () Bool)

(assert (=> b!5440398 m!6461434))

(assert (=> b!5440398 m!6461426))

(assert (=> b!5440398 m!6461434))

(assert (=> b!5440398 m!6461426))

(declare-fun m!6461440 () Bool)

(assert (=> b!5440398 m!6461440))

(assert (=> b!5439929 d!1732828))

(declare-fun d!1732832 () Bool)

(assert (=> d!1732832 (= (get!21362 lt!2218697) (v!51396 lt!2218697))))

(assert (=> b!5439929 d!1732832))

(declare-fun bs!1255380 () Bool)

(declare-fun b!5440411 () Bool)

(assert (= bs!1255380 (and b!5440411 b!5439522)))

(declare-fun lambda!286255 () Int)

(assert (=> bs!1255380 (= (and (= (reg!15586 (regTwo!31027 r!7292)) (reg!15586 (regOne!31026 r!7292))) (= (regTwo!31027 r!7292) (regOne!31026 r!7292))) (= lambda!286255 lambda!286192))))

(declare-fun bs!1255381 () Bool)

(assert (= bs!1255381 (and b!5440411 d!1732658)))

(assert (=> bs!1255381 (not (= lambda!286255 lambda!286231))))

(declare-fun bs!1255382 () Bool)

(assert (= bs!1255382 (and b!5440411 b!5439206)))

(assert (=> bs!1255382 (not (= lambda!286255 lambda!286158))))

(declare-fun bs!1255383 () Bool)

(assert (= bs!1255383 (and b!5440411 b!5439559)))

(assert (=> bs!1255383 (not (= lambda!286255 lambda!286201))))

(declare-fun bs!1255384 () Bool)

(assert (= bs!1255384 (and b!5440411 b!5439367)))

(assert (=> bs!1255384 (= (and (= (reg!15586 (regTwo!31027 r!7292)) (reg!15586 r!7292)) (= (regTwo!31027 r!7292) r!7292)) (= lambda!286255 lambda!286184))))

(declare-fun bs!1255385 () Bool)

(assert (= bs!1255385 (and b!5440411 b!5439371)))

(assert (=> bs!1255385 (not (= lambda!286255 lambda!286185))))

(declare-fun bs!1255386 () Bool)

(assert (= bs!1255386 (and b!5440411 d!1732656)))

(assert (=> bs!1255386 (not (= lambda!286255 lambda!286226))))

(declare-fun bs!1255387 () Bool)

(assert (= bs!1255387 (and b!5440411 b!5439555)))

(assert (=> bs!1255387 (= (and (= (reg!15586 (regTwo!31027 r!7292)) (reg!15586 (regTwo!31026 r!7292))) (= (regTwo!31027 r!7292) (regTwo!31026 r!7292))) (= lambda!286255 lambda!286198))))

(declare-fun bs!1255390 () Bool)

(assert (= bs!1255390 (and b!5440411 b!5439526)))

(assert (=> bs!1255390 (not (= lambda!286255 lambda!286193))))

(assert (=> bs!1255381 (not (= lambda!286255 lambda!286232))))

(assert (=> bs!1255382 (not (= lambda!286255 lambda!286159))))

(assert (=> b!5440411 true))

(assert (=> b!5440411 true))

(declare-fun bs!1255395 () Bool)

(declare-fun b!5440415 () Bool)

(assert (= bs!1255395 (and b!5440415 b!5439522)))

(declare-fun lambda!286257 () Int)

(assert (=> bs!1255395 (not (= lambda!286257 lambda!286192))))

(declare-fun bs!1255396 () Bool)

(assert (= bs!1255396 (and b!5440415 d!1732658)))

(assert (=> bs!1255396 (not (= lambda!286257 lambda!286231))))

(declare-fun bs!1255397 () Bool)

(assert (= bs!1255397 (and b!5440415 b!5439206)))

(assert (=> bs!1255397 (not (= lambda!286257 lambda!286158))))

(declare-fun bs!1255398 () Bool)

(assert (= bs!1255398 (and b!5440415 b!5440411)))

(assert (=> bs!1255398 (not (= lambda!286257 lambda!286255))))

(declare-fun bs!1255399 () Bool)

(assert (= bs!1255399 (and b!5440415 b!5439559)))

(assert (=> bs!1255399 (= (and (= (regOne!31026 (regTwo!31027 r!7292)) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 r!7292)) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286257 lambda!286201))))

(declare-fun bs!1255400 () Bool)

(assert (= bs!1255400 (and b!5440415 b!5439367)))

(assert (=> bs!1255400 (not (= lambda!286257 lambda!286184))))

(declare-fun bs!1255401 () Bool)

(assert (= bs!1255401 (and b!5440415 b!5439371)))

(assert (=> bs!1255401 (= (and (= (regOne!31026 (regTwo!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286257 lambda!286185))))

(declare-fun bs!1255402 () Bool)

(assert (= bs!1255402 (and b!5440415 d!1732656)))

(assert (=> bs!1255402 (not (= lambda!286257 lambda!286226))))

(declare-fun bs!1255403 () Bool)

(assert (= bs!1255403 (and b!5440415 b!5439555)))

(assert (=> bs!1255403 (not (= lambda!286257 lambda!286198))))

(declare-fun bs!1255404 () Bool)

(assert (= bs!1255404 (and b!5440415 b!5439526)))

(assert (=> bs!1255404 (= (and (= (regOne!31026 (regTwo!31027 r!7292)) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 r!7292)) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286257 lambda!286193))))

(assert (=> bs!1255396 (= (and (= (regOne!31026 (regTwo!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286257 lambda!286232))))

(assert (=> bs!1255397 (= (and (= (regOne!31026 (regTwo!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286257 lambda!286159))))

(assert (=> b!5440415 true))

(assert (=> b!5440415 true))

(declare-fun e!3370255 () Bool)

(declare-fun call!390168 () Bool)

(assert (=> b!5440411 (= e!3370255 call!390168)))

(declare-fun b!5440413 () Bool)

(declare-fun res!2316210 () Bool)

(assert (=> b!5440413 (=> res!2316210 e!3370255)))

(declare-fun call!390167 () Bool)

(assert (=> b!5440413 (= res!2316210 call!390167)))

(declare-fun e!3370260 () Bool)

(assert (=> b!5440413 (= e!3370260 e!3370255)))

(declare-fun bm!390162 () Bool)

(assert (=> bm!390162 (= call!390167 (isEmpty!33933 s!2326))))

(declare-fun c!949381 () Bool)

(declare-fun bm!390163 () Bool)

(assert (=> bm!390163 (= call!390168 (Exists!2438 (ite c!949381 lambda!286255 lambda!286257)))))

(declare-fun b!5440414 () Bool)

(declare-fun c!949382 () Bool)

(assert (=> b!5440414 (= c!949382 ((_ is ElementMatch!15257) (regTwo!31027 r!7292)))))

(declare-fun e!3370257 () Bool)

(declare-fun e!3370254 () Bool)

(assert (=> b!5440414 (= e!3370257 e!3370254)))

(declare-fun d!1732836 () Bool)

(declare-fun c!949380 () Bool)

(assert (=> d!1732836 (= c!949380 ((_ is EmptyExpr!15257) (regTwo!31027 r!7292)))))

(declare-fun e!3370259 () Bool)

(assert (=> d!1732836 (= (matchRSpec!2360 (regTwo!31027 r!7292) s!2326) e!3370259)))

(declare-fun b!5440412 () Bool)

(declare-fun e!3370256 () Bool)

(declare-fun e!3370258 () Bool)

(assert (=> b!5440412 (= e!3370256 e!3370258)))

(declare-fun res!2316208 () Bool)

(assert (=> b!5440412 (= res!2316208 (matchRSpec!2360 (regOne!31027 (regTwo!31027 r!7292)) s!2326))))

(assert (=> b!5440412 (=> res!2316208 e!3370258)))

(assert (=> b!5440415 (= e!3370260 call!390168)))

(declare-fun b!5440416 () Bool)

(declare-fun c!949379 () Bool)

(assert (=> b!5440416 (= c!949379 ((_ is Union!15257) (regTwo!31027 r!7292)))))

(assert (=> b!5440416 (= e!3370254 e!3370256)))

(declare-fun b!5440417 () Bool)

(assert (=> b!5440417 (= e!3370254 (= s!2326 (Cons!61948 (c!949049 (regTwo!31027 r!7292)) Nil!61948)))))

(declare-fun b!5440418 () Bool)

(assert (=> b!5440418 (= e!3370258 (matchRSpec!2360 (regTwo!31027 (regTwo!31027 r!7292)) s!2326))))

(declare-fun b!5440419 () Bool)

(assert (=> b!5440419 (= e!3370259 e!3370257)))

(declare-fun res!2316209 () Bool)

(assert (=> b!5440419 (= res!2316209 (not ((_ is EmptyLang!15257) (regTwo!31027 r!7292))))))

(assert (=> b!5440419 (=> (not res!2316209) (not e!3370257))))

(declare-fun b!5440420 () Bool)

(assert (=> b!5440420 (= e!3370256 e!3370260)))

(assert (=> b!5440420 (= c!949381 ((_ is Star!15257) (regTwo!31027 r!7292)))))

(declare-fun b!5440421 () Bool)

(assert (=> b!5440421 (= e!3370259 call!390167)))

(assert (= (and d!1732836 c!949380) b!5440421))

(assert (= (and d!1732836 (not c!949380)) b!5440419))

(assert (= (and b!5440419 res!2316209) b!5440414))

(assert (= (and b!5440414 c!949382) b!5440417))

(assert (= (and b!5440414 (not c!949382)) b!5440416))

(assert (= (and b!5440416 c!949379) b!5440412))

(assert (= (and b!5440416 (not c!949379)) b!5440420))

(assert (= (and b!5440412 (not res!2316208)) b!5440418))

(assert (= (and b!5440420 c!949381) b!5440413))

(assert (= (and b!5440420 (not c!949381)) b!5440415))

(assert (= (and b!5440413 (not res!2316210)) b!5440411))

(assert (= (or b!5440411 b!5440415) bm!390163))

(assert (= (or b!5440421 b!5440413) bm!390162))

(assert (=> bm!390162 m!6460694))

(declare-fun m!6461488 () Bool)

(assert (=> bm!390163 m!6461488))

(declare-fun m!6461490 () Bool)

(assert (=> b!5440412 m!6461490))

(declare-fun m!6461492 () Bool)

(assert (=> b!5440418 m!6461492))

(assert (=> b!5439374 d!1732836))

(declare-fun bs!1255406 () Bool)

(declare-fun b!5440459 () Bool)

(assert (= bs!1255406 (and b!5440459 b!5439522)))

(declare-fun lambda!286258 () Int)

(assert (=> bs!1255406 (= (and (= (reg!15586 (regTwo!31027 (regTwo!31026 r!7292))) (reg!15586 (regOne!31026 r!7292))) (= (regTwo!31027 (regTwo!31026 r!7292)) (regOne!31026 r!7292))) (= lambda!286258 lambda!286192))))

(declare-fun bs!1255408 () Bool)

(assert (= bs!1255408 (and b!5440459 d!1732658)))

(assert (=> bs!1255408 (not (= lambda!286258 lambda!286231))))

(declare-fun bs!1255410 () Bool)

(assert (= bs!1255410 (and b!5440459 b!5439206)))

(assert (=> bs!1255410 (not (= lambda!286258 lambda!286158))))

(declare-fun bs!1255413 () Bool)

(assert (= bs!1255413 (and b!5440459 b!5440415)))

(assert (=> bs!1255413 (not (= lambda!286258 lambda!286257))))

(declare-fun bs!1255415 () Bool)

(assert (= bs!1255415 (and b!5440459 b!5440411)))

(assert (=> bs!1255415 (= (and (= (reg!15586 (regTwo!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31027 r!7292))) (= (regTwo!31027 (regTwo!31026 r!7292)) (regTwo!31027 r!7292))) (= lambda!286258 lambda!286255))))

(declare-fun bs!1255417 () Bool)

(assert (= bs!1255417 (and b!5440459 b!5439559)))

(assert (=> bs!1255417 (not (= lambda!286258 lambda!286201))))

(declare-fun bs!1255418 () Bool)

(assert (= bs!1255418 (and b!5440459 b!5439367)))

(assert (=> bs!1255418 (= (and (= (reg!15586 (regTwo!31027 (regTwo!31026 r!7292))) (reg!15586 r!7292)) (= (regTwo!31027 (regTwo!31026 r!7292)) r!7292)) (= lambda!286258 lambda!286184))))

(declare-fun bs!1255420 () Bool)

(assert (= bs!1255420 (and b!5440459 b!5439371)))

(assert (=> bs!1255420 (not (= lambda!286258 lambda!286185))))

(declare-fun bs!1255422 () Bool)

(assert (= bs!1255422 (and b!5440459 d!1732656)))

(assert (=> bs!1255422 (not (= lambda!286258 lambda!286226))))

(declare-fun bs!1255424 () Bool)

(assert (= bs!1255424 (and b!5440459 b!5439555)))

(assert (=> bs!1255424 (= (and (= (reg!15586 (regTwo!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31026 r!7292))) (= (regTwo!31027 (regTwo!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286258 lambda!286198))))

(declare-fun bs!1255425 () Bool)

(assert (= bs!1255425 (and b!5440459 b!5439526)))

(assert (=> bs!1255425 (not (= lambda!286258 lambda!286193))))

(assert (=> bs!1255408 (not (= lambda!286258 lambda!286232))))

(assert (=> bs!1255410 (not (= lambda!286258 lambda!286159))))

(assert (=> b!5440459 true))

(assert (=> b!5440459 true))

(declare-fun bs!1255426 () Bool)

(declare-fun b!5440463 () Bool)

(assert (= bs!1255426 (and b!5440463 b!5439522)))

(declare-fun lambda!286260 () Int)

(assert (=> bs!1255426 (not (= lambda!286260 lambda!286192))))

(declare-fun bs!1255427 () Bool)

(assert (= bs!1255427 (and b!5440463 d!1732658)))

(assert (=> bs!1255427 (not (= lambda!286260 lambda!286231))))

(declare-fun bs!1255428 () Bool)

(assert (= bs!1255428 (and b!5440463 b!5439206)))

(assert (=> bs!1255428 (not (= lambda!286260 lambda!286158))))

(declare-fun bs!1255429 () Bool)

(assert (= bs!1255429 (and b!5440463 b!5440415)))

(assert (=> bs!1255429 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286260 lambda!286257))))

(declare-fun bs!1255430 () Bool)

(assert (= bs!1255430 (and b!5440463 b!5440411)))

(assert (=> bs!1255430 (not (= lambda!286260 lambda!286255))))

(declare-fun bs!1255431 () Bool)

(assert (= bs!1255431 (and b!5440463 b!5439559)))

(assert (=> bs!1255431 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286260 lambda!286201))))

(declare-fun bs!1255432 () Bool)

(assert (= bs!1255432 (and b!5440463 b!5439367)))

(assert (=> bs!1255432 (not (= lambda!286260 lambda!286184))))

(declare-fun bs!1255433 () Bool)

(assert (= bs!1255433 (and b!5440463 b!5439371)))

(assert (=> bs!1255433 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286260 lambda!286185))))

(declare-fun bs!1255434 () Bool)

(assert (= bs!1255434 (and b!5440463 b!5440459)))

(assert (=> bs!1255434 (not (= lambda!286260 lambda!286258))))

(declare-fun bs!1255435 () Bool)

(assert (= bs!1255435 (and b!5440463 d!1732656)))

(assert (=> bs!1255435 (not (= lambda!286260 lambda!286226))))

(declare-fun bs!1255436 () Bool)

(assert (= bs!1255436 (and b!5440463 b!5439555)))

(assert (=> bs!1255436 (not (= lambda!286260 lambda!286198))))

(declare-fun bs!1255437 () Bool)

(assert (= bs!1255437 (and b!5440463 b!5439526)))

(assert (=> bs!1255437 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286260 lambda!286193))))

(assert (=> bs!1255427 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286260 lambda!286232))))

(assert (=> bs!1255428 (= (and (= (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286260 lambda!286159))))

(assert (=> b!5440463 true))

(assert (=> b!5440463 true))

(declare-fun e!3370287 () Bool)

(declare-fun call!390181 () Bool)

(assert (=> b!5440459 (= e!3370287 call!390181)))

(declare-fun b!5440461 () Bool)

(declare-fun res!2316229 () Bool)

(assert (=> b!5440461 (=> res!2316229 e!3370287)))

(declare-fun call!390180 () Bool)

(assert (=> b!5440461 (= res!2316229 call!390180)))

(declare-fun e!3370292 () Bool)

(assert (=> b!5440461 (= e!3370292 e!3370287)))

(declare-fun bm!390175 () Bool)

(assert (=> bm!390175 (= call!390180 (isEmpty!33933 s!2326))))

(declare-fun c!949397 () Bool)

(declare-fun bm!390176 () Bool)

(assert (=> bm!390176 (= call!390181 (Exists!2438 (ite c!949397 lambda!286258 lambda!286260)))))

(declare-fun b!5440462 () Bool)

(declare-fun c!949398 () Bool)

(assert (=> b!5440462 (= c!949398 ((_ is ElementMatch!15257) (regTwo!31027 (regTwo!31026 r!7292))))))

(declare-fun e!3370289 () Bool)

(declare-fun e!3370286 () Bool)

(assert (=> b!5440462 (= e!3370289 e!3370286)))

(declare-fun d!1732860 () Bool)

(declare-fun c!949396 () Bool)

(assert (=> d!1732860 (= c!949396 ((_ is EmptyExpr!15257) (regTwo!31027 (regTwo!31026 r!7292))))))

(declare-fun e!3370291 () Bool)

(assert (=> d!1732860 (= (matchRSpec!2360 (regTwo!31027 (regTwo!31026 r!7292)) s!2326) e!3370291)))

(declare-fun b!5440460 () Bool)

(declare-fun e!3370288 () Bool)

(declare-fun e!3370290 () Bool)

(assert (=> b!5440460 (= e!3370288 e!3370290)))

(declare-fun res!2316227 () Bool)

(assert (=> b!5440460 (= res!2316227 (matchRSpec!2360 (regOne!31027 (regTwo!31027 (regTwo!31026 r!7292))) s!2326))))

(assert (=> b!5440460 (=> res!2316227 e!3370290)))

(assert (=> b!5440463 (= e!3370292 call!390181)))

(declare-fun b!5440464 () Bool)

(declare-fun c!949395 () Bool)

(assert (=> b!5440464 (= c!949395 ((_ is Union!15257) (regTwo!31027 (regTwo!31026 r!7292))))))

(assert (=> b!5440464 (= e!3370286 e!3370288)))

(declare-fun b!5440465 () Bool)

(assert (=> b!5440465 (= e!3370286 (= s!2326 (Cons!61948 (c!949049 (regTwo!31027 (regTwo!31026 r!7292))) Nil!61948)))))

(declare-fun b!5440466 () Bool)

(assert (=> b!5440466 (= e!3370290 (matchRSpec!2360 (regTwo!31027 (regTwo!31027 (regTwo!31026 r!7292))) s!2326))))

(declare-fun b!5440467 () Bool)

(assert (=> b!5440467 (= e!3370291 e!3370289)))

(declare-fun res!2316228 () Bool)

(assert (=> b!5440467 (= res!2316228 (not ((_ is EmptyLang!15257) (regTwo!31027 (regTwo!31026 r!7292)))))))

(assert (=> b!5440467 (=> (not res!2316228) (not e!3370289))))

(declare-fun b!5440468 () Bool)

(assert (=> b!5440468 (= e!3370288 e!3370292)))

(assert (=> b!5440468 (= c!949397 ((_ is Star!15257) (regTwo!31027 (regTwo!31026 r!7292))))))

(declare-fun b!5440469 () Bool)

(assert (=> b!5440469 (= e!3370291 call!390180)))

(assert (= (and d!1732860 c!949396) b!5440469))

(assert (= (and d!1732860 (not c!949396)) b!5440467))

(assert (= (and b!5440467 res!2316228) b!5440462))

(assert (= (and b!5440462 c!949398) b!5440465))

(assert (= (and b!5440462 (not c!949398)) b!5440464))

(assert (= (and b!5440464 c!949395) b!5440460))

(assert (= (and b!5440464 (not c!949395)) b!5440468))

(assert (= (and b!5440460 (not res!2316227)) b!5440466))

(assert (= (and b!5440468 c!949397) b!5440461))

(assert (= (and b!5440468 (not c!949397)) b!5440463))

(assert (= (and b!5440461 (not res!2316229)) b!5440459))

(assert (= (or b!5440459 b!5440463) bm!390176))

(assert (= (or b!5440469 b!5440461) bm!390175))

(assert (=> bm!390175 m!6460694))

(declare-fun m!6461514 () Bool)

(assert (=> bm!390176 m!6461514))

(declare-fun m!6461516 () Bool)

(assert (=> b!5440460 m!6461516))

(declare-fun m!6461518 () Bool)

(assert (=> b!5440466 m!6461518))

(assert (=> b!5439562 d!1732860))

(declare-fun d!1732876 () Bool)

(assert (=> d!1732876 (= (isEmpty!33930 (exprs!5141 (h!68395 zl!343))) ((_ is Nil!61946) (exprs!5141 (h!68395 zl!343))))))

(assert (=> b!5439834 d!1732876))

(declare-fun d!1732878 () Bool)

(declare-fun lambda!286265 () Int)

(declare-fun exists!2025 ((InoxSet Context!9282) Int) Bool)

(assert (=> d!1732878 (= (nullableZipper!1474 lt!2218598) (exists!2025 lt!2218598 lambda!286265))))

(declare-fun bs!1255438 () Bool)

(assert (= bs!1255438 d!1732878))

(declare-fun m!6461520 () Bool)

(assert (=> bs!1255438 m!6461520))

(assert (=> b!5439976 d!1732878))

(declare-fun b!5440480 () Bool)

(declare-fun e!3370300 () Bool)

(declare-fun lt!2218738 () Bool)

(assert (=> b!5440480 (= e!3370300 (not lt!2218738))))

(declare-fun b!5440481 () Bool)

(declare-fun res!2316241 () Bool)

(declare-fun e!3370304 () Bool)

(assert (=> b!5440481 (=> res!2316241 e!3370304)))

(assert (=> b!5440481 (= res!2316241 (not ((_ is ElementMatch!15257) (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)))))))

(assert (=> b!5440481 (= e!3370300 e!3370304)))

(declare-fun b!5440482 () Bool)

(declare-fun res!2316244 () Bool)

(declare-fun e!3370298 () Bool)

(assert (=> b!5440482 (=> res!2316244 e!3370298)))

(assert (=> b!5440482 (= res!2316244 (not (isEmpty!33933 (tail!10762 (tail!10762 s!2326)))))))

(declare-fun b!5440483 () Bool)

(declare-fun e!3370302 () Bool)

(assert (=> b!5440483 (= e!3370302 (nullable!5426 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326))))))

(declare-fun bm!390177 () Bool)

(declare-fun call!390182 () Bool)

(assert (=> bm!390177 (= call!390182 (isEmpty!33933 (tail!10762 s!2326)))))

(declare-fun b!5440484 () Bool)

(declare-fun res!2316238 () Bool)

(assert (=> b!5440484 (=> res!2316238 e!3370304)))

(declare-fun e!3370299 () Bool)

(assert (=> b!5440484 (= res!2316238 e!3370299)))

(declare-fun res!2316239 () Bool)

(assert (=> b!5440484 (=> (not res!2316239) (not e!3370299))))

(assert (=> b!5440484 (= res!2316239 lt!2218738)))

(declare-fun b!5440485 () Bool)

(declare-fun e!3370303 () Bool)

(assert (=> b!5440485 (= e!3370303 e!3370300)))

(declare-fun c!949404 () Bool)

(assert (=> b!5440485 (= c!949404 ((_ is EmptyLang!15257) (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326))))))

(declare-fun b!5440486 () Bool)

(declare-fun e!3370301 () Bool)

(assert (=> b!5440486 (= e!3370301 e!3370298)))

(declare-fun res!2316240 () Bool)

(assert (=> b!5440486 (=> res!2316240 e!3370298)))

(assert (=> b!5440486 (= res!2316240 call!390182)))

(declare-fun b!5440487 () Bool)

(assert (=> b!5440487 (= e!3370298 (not (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326))))))))

(declare-fun b!5440488 () Bool)

(assert (=> b!5440488 (= e!3370302 (matchR!7442 (derivativeStep!4295 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)) (head!11665 (tail!10762 s!2326))) (tail!10762 (tail!10762 s!2326))))))

(declare-fun b!5440489 () Bool)

(assert (=> b!5440489 (= e!3370304 e!3370301)))

(declare-fun res!2316245 () Bool)

(assert (=> b!5440489 (=> (not res!2316245) (not e!3370301))))

(assert (=> b!5440489 (= res!2316245 (not lt!2218738))))

(declare-fun b!5440490 () Bool)

(assert (=> b!5440490 (= e!3370299 (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)))))))

(declare-fun b!5440492 () Bool)

(assert (=> b!5440492 (= e!3370303 (= lt!2218738 call!390182))))

(declare-fun b!5440493 () Bool)

(declare-fun res!2316242 () Bool)

(assert (=> b!5440493 (=> (not res!2316242) (not e!3370299))))

(assert (=> b!5440493 (= res!2316242 (not call!390182))))

(declare-fun d!1732880 () Bool)

(assert (=> d!1732880 e!3370303))

(declare-fun c!949403 () Bool)

(assert (=> d!1732880 (= c!949403 ((_ is EmptyExpr!15257) (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326))))))

(assert (=> d!1732880 (= lt!2218738 e!3370302)))

(declare-fun c!949402 () Bool)

(assert (=> d!1732880 (= c!949402 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (=> d!1732880 (validRegex!6993 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)))))

(assert (=> d!1732880 (= (matchR!7442 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)) (tail!10762 s!2326)) lt!2218738)))

(declare-fun b!5440491 () Bool)

(declare-fun res!2316243 () Bool)

(assert (=> b!5440491 (=> (not res!2316243) (not e!3370299))))

(assert (=> b!5440491 (= res!2316243 (isEmpty!33933 (tail!10762 (tail!10762 s!2326))))))

(assert (= (and d!1732880 c!949402) b!5440483))

(assert (= (and d!1732880 (not c!949402)) b!5440488))

(assert (= (and d!1732880 c!949403) b!5440492))

(assert (= (and d!1732880 (not c!949403)) b!5440485))

(assert (= (and b!5440485 c!949404) b!5440480))

(assert (= (and b!5440485 (not c!949404)) b!5440481))

(assert (= (and b!5440481 (not res!2316241)) b!5440484))

(assert (= (and b!5440484 res!2316239) b!5440493))

(assert (= (and b!5440493 res!2316242) b!5440491))

(assert (= (and b!5440491 res!2316243) b!5440490))

(assert (= (and b!5440484 (not res!2316238)) b!5440489))

(assert (= (and b!5440489 res!2316245) b!5440486))

(assert (= (and b!5440486 (not res!2316240)) b!5440482))

(assert (= (and b!5440482 (not res!2316244)) b!5440487))

(assert (= (or b!5440492 b!5440493 b!5440486) bm!390177))

(assert (=> b!5440483 m!6460812))

(declare-fun m!6461522 () Bool)

(assert (=> b!5440483 m!6461522))

(assert (=> b!5440482 m!6460720))

(declare-fun m!6461524 () Bool)

(assert (=> b!5440482 m!6461524))

(assert (=> b!5440482 m!6461524))

(declare-fun m!6461526 () Bool)

(assert (=> b!5440482 m!6461526))

(assert (=> b!5440491 m!6460720))

(assert (=> b!5440491 m!6461524))

(assert (=> b!5440491 m!6461524))

(assert (=> b!5440491 m!6461526))

(assert (=> bm!390177 m!6460720))

(assert (=> bm!390177 m!6460722))

(assert (=> b!5440490 m!6460720))

(declare-fun m!6461528 () Bool)

(assert (=> b!5440490 m!6461528))

(assert (=> b!5440487 m!6460720))

(assert (=> b!5440487 m!6461528))

(assert (=> d!1732880 m!6460720))

(assert (=> d!1732880 m!6460722))

(assert (=> d!1732880 m!6460812))

(declare-fun m!6461530 () Bool)

(assert (=> d!1732880 m!6461530))

(assert (=> b!5440488 m!6460720))

(assert (=> b!5440488 m!6461528))

(assert (=> b!5440488 m!6460812))

(assert (=> b!5440488 m!6461528))

(declare-fun m!6461532 () Bool)

(assert (=> b!5440488 m!6461532))

(assert (=> b!5440488 m!6460720))

(assert (=> b!5440488 m!6461524))

(assert (=> b!5440488 m!6461532))

(assert (=> b!5440488 m!6461524))

(declare-fun m!6461534 () Bool)

(assert (=> b!5440488 m!6461534))

(assert (=> b!5439585 d!1732880))

(declare-fun b!5440532 () Bool)

(declare-fun e!3370328 () Regex!15257)

(assert (=> b!5440532 (= e!3370328 (ite (= (head!11665 s!2326) (c!949049 (regTwo!31026 r!7292))) EmptyExpr!15257 EmptyLang!15257))))

(declare-fun call!390198 () Regex!15257)

(declare-fun bm!390190 () Bool)

(declare-fun c!949420 () Bool)

(assert (=> bm!390190 (= call!390198 (derivativeStep!4295 (ite c!949420 (regOne!31027 (regTwo!31026 r!7292)) (regOne!31026 (regTwo!31026 r!7292))) (head!11665 s!2326)))))

(declare-fun bm!390191 () Bool)

(declare-fun call!390197 () Regex!15257)

(declare-fun call!390196 () Regex!15257)

(assert (=> bm!390191 (= call!390197 call!390196)))

(declare-fun b!5440533 () Bool)

(declare-fun e!3370330 () Regex!15257)

(assert (=> b!5440533 (= e!3370330 (Union!15257 (Concat!24102 call!390197 (regTwo!31026 (regTwo!31026 r!7292))) EmptyLang!15257))))

(declare-fun b!5440534 () Bool)

(declare-fun e!3370329 () Regex!15257)

(assert (=> b!5440534 (= e!3370329 e!3370328)))

(declare-fun c!949424 () Bool)

(assert (=> b!5440534 (= c!949424 ((_ is ElementMatch!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5440535 () Bool)

(declare-fun e!3370332 () Regex!15257)

(assert (=> b!5440535 (= e!3370332 (Concat!24102 call!390196 (regTwo!31026 r!7292)))))

(declare-fun b!5440536 () Bool)

(declare-fun e!3370331 () Regex!15257)

(declare-fun call!390195 () Regex!15257)

(assert (=> b!5440536 (= e!3370331 (Union!15257 call!390198 call!390195))))

(declare-fun b!5440537 () Bool)

(assert (=> b!5440537 (= e!3370329 EmptyLang!15257)))

(declare-fun d!1732882 () Bool)

(declare-fun lt!2218741 () Regex!15257)

(assert (=> d!1732882 (validRegex!6993 lt!2218741)))

(assert (=> d!1732882 (= lt!2218741 e!3370329)))

(declare-fun c!949421 () Bool)

(assert (=> d!1732882 (= c!949421 (or ((_ is EmptyExpr!15257) (regTwo!31026 r!7292)) ((_ is EmptyLang!15257) (regTwo!31026 r!7292))))))

(assert (=> d!1732882 (validRegex!6993 (regTwo!31026 r!7292))))

(assert (=> d!1732882 (= (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 s!2326)) lt!2218741)))

(declare-fun b!5440538 () Bool)

(assert (=> b!5440538 (= e!3370331 e!3370332)))

(declare-fun c!949423 () Bool)

(assert (=> b!5440538 (= c!949423 ((_ is Star!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5440539 () Bool)

(assert (=> b!5440539 (= e!3370330 (Union!15257 (Concat!24102 call!390198 (regTwo!31026 (regTwo!31026 r!7292))) call!390197))))

(declare-fun bm!390192 () Bool)

(assert (=> bm!390192 (= call!390196 call!390195)))

(declare-fun c!949422 () Bool)

(declare-fun bm!390193 () Bool)

(assert (=> bm!390193 (= call!390195 (derivativeStep!4295 (ite c!949420 (regTwo!31027 (regTwo!31026 r!7292)) (ite c!949423 (reg!15586 (regTwo!31026 r!7292)) (ite c!949422 (regTwo!31026 (regTwo!31026 r!7292)) (regOne!31026 (regTwo!31026 r!7292))))) (head!11665 s!2326)))))

(declare-fun b!5440540 () Bool)

(assert (=> b!5440540 (= c!949420 ((_ is Union!15257) (regTwo!31026 r!7292)))))

(assert (=> b!5440540 (= e!3370328 e!3370331)))

(declare-fun b!5440541 () Bool)

(assert (=> b!5440541 (= c!949422 (nullable!5426 (regOne!31026 (regTwo!31026 r!7292))))))

(assert (=> b!5440541 (= e!3370332 e!3370330)))

(assert (= (and d!1732882 c!949421) b!5440537))

(assert (= (and d!1732882 (not c!949421)) b!5440534))

(assert (= (and b!5440534 c!949424) b!5440532))

(assert (= (and b!5440534 (not c!949424)) b!5440540))

(assert (= (and b!5440540 c!949420) b!5440536))

(assert (= (and b!5440540 (not c!949420)) b!5440538))

(assert (= (and b!5440538 c!949423) b!5440535))

(assert (= (and b!5440538 (not c!949423)) b!5440541))

(assert (= (and b!5440541 c!949422) b!5440539))

(assert (= (and b!5440541 (not c!949422)) b!5440533))

(assert (= (or b!5440539 b!5440533) bm!390191))

(assert (= (or b!5440535 bm!390191) bm!390192))

(assert (= (or b!5440536 bm!390192) bm!390193))

(assert (= (or b!5440536 b!5440539) bm!390190))

(assert (=> bm!390190 m!6460724))

(declare-fun m!6461544 () Bool)

(assert (=> bm!390190 m!6461544))

(declare-fun m!6461546 () Bool)

(assert (=> d!1732882 m!6461546))

(assert (=> d!1732882 m!6460810))

(assert (=> bm!390193 m!6460724))

(declare-fun m!6461548 () Bool)

(assert (=> bm!390193 m!6461548))

(declare-fun m!6461550 () Bool)

(assert (=> b!5440541 m!6461550))

(assert (=> b!5439585 d!1732882))

(declare-fun d!1732888 () Bool)

(assert (=> d!1732888 (= (head!11665 s!2326) (h!68396 s!2326))))

(assert (=> b!5439585 d!1732888))

(declare-fun d!1732890 () Bool)

(assert (=> d!1732890 (= (tail!10762 s!2326) (t!375297 s!2326))))

(assert (=> b!5439585 d!1732890))

(assert (=> b!5439482 d!1732888))

(assert (=> d!1732664 d!1732812))

(assert (=> b!5439540 d!1732888))

(assert (=> d!1732662 d!1732664))

(assert (=> d!1732662 d!1732626))

(declare-fun e!3370335 () Bool)

(declare-fun d!1732892 () Bool)

(assert (=> d!1732892 (= (matchZipper!1501 ((_ map or) lt!2218594 lt!2218611) (t!375297 s!2326)) e!3370335)))

(declare-fun res!2316256 () Bool)

(assert (=> d!1732892 (=> res!2316256 e!3370335)))

(assert (=> d!1732892 (= res!2316256 (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(assert (=> d!1732892 true))

(declare-fun _$48!1039 () Unit!154570)

(assert (=> d!1732892 (= (choose!41270 lt!2218594 lt!2218611 (t!375297 s!2326)) _$48!1039)))

(declare-fun b!5440544 () Bool)

(assert (=> b!5440544 (= e!3370335 (matchZipper!1501 lt!2218611 (t!375297 s!2326)))))

(assert (= (and d!1732892 (not res!2316256)) b!5440544))

(assert (=> d!1732892 m!6460546))

(assert (=> d!1732892 m!6460538))

(assert (=> b!5440544 m!6460522))

(assert (=> d!1732662 d!1732892))

(assert (=> b!5439924 d!1732568))

(declare-fun d!1732900 () Bool)

(assert (=> d!1732900 true))

(declare-fun setRes!35565 () Bool)

(assert (=> d!1732900 setRes!35565))

(declare-fun condSetEmpty!35565 () Bool)

(declare-fun res!2316261 () (InoxSet Context!9282))

(assert (=> d!1732900 (= condSetEmpty!35565 (= res!2316261 ((as const (Array Context!9282 Bool)) false)))))

(assert (=> d!1732900 (= (choose!41265 lt!2218597 lambda!286160) res!2316261)))

(declare-fun setIsEmpty!35565 () Bool)

(assert (=> setIsEmpty!35565 setRes!35565))

(declare-fun e!3370340 () Bool)

(declare-fun setNonEmpty!35565 () Bool)

(declare-fun tp!1499863 () Bool)

(declare-fun setElem!35565 () Context!9282)

(assert (=> setNonEmpty!35565 (= setRes!35565 (and tp!1499863 (inv!81389 setElem!35565) e!3370340))))

(declare-fun setRest!35565 () (InoxSet Context!9282))

(assert (=> setNonEmpty!35565 (= res!2316261 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) setElem!35565 true) setRest!35565))))

(declare-fun b!5440549 () Bool)

(declare-fun tp!1499862 () Bool)

(assert (=> b!5440549 (= e!3370340 tp!1499862)))

(assert (= (and d!1732900 condSetEmpty!35565) setIsEmpty!35565))

(assert (= (and d!1732900 (not condSetEmpty!35565)) setNonEmpty!35565))

(assert (= setNonEmpty!35565 b!5440549))

(declare-fun m!6461560 () Bool)

(assert (=> setNonEmpty!35565 m!6461560))

(assert (=> d!1732672 d!1732900))

(declare-fun d!1732902 () Bool)

(assert (=> d!1732902 (= (Exists!2438 (ite c!949144 lambda!286198 lambda!286201)) (choose!41267 (ite c!949144 lambda!286198 lambda!286201)))))

(declare-fun bs!1255498 () Bool)

(assert (= bs!1255498 d!1732902))

(declare-fun m!6461562 () Bool)

(assert (=> bs!1255498 m!6461562))

(assert (=> bm!390020 d!1732902))

(declare-fun b!5440551 () Bool)

(declare-fun res!2316266 () Bool)

(declare-fun e!3370344 () Bool)

(assert (=> b!5440551 (=> res!2316266 e!3370344)))

(assert (=> b!5440551 (= res!2316266 (not ((_ is Concat!24102) lt!2218681)))))

(declare-fun e!3370345 () Bool)

(assert (=> b!5440551 (= e!3370345 e!3370344)))

(declare-fun c!949426 () Bool)

(declare-fun bm!390194 () Bool)

(declare-fun c!949425 () Bool)

(declare-fun call!390200 () Bool)

(assert (=> bm!390194 (= call!390200 (validRegex!6993 (ite c!949426 (reg!15586 lt!2218681) (ite c!949425 (regTwo!31027 lt!2218681) (regTwo!31026 lt!2218681)))))))

(declare-fun b!5440552 () Bool)

(declare-fun e!3370347 () Bool)

(declare-fun call!390199 () Bool)

(assert (=> b!5440552 (= e!3370347 call!390199)))

(declare-fun b!5440553 () Bool)

(declare-fun e!3370348 () Bool)

(assert (=> b!5440553 (= e!3370348 call!390199)))

(declare-fun b!5440554 () Bool)

(assert (=> b!5440554 (= e!3370344 e!3370347)))

(declare-fun res!2316267 () Bool)

(assert (=> b!5440554 (=> (not res!2316267) (not e!3370347))))

(declare-fun call!390201 () Bool)

(assert (=> b!5440554 (= res!2316267 call!390201)))

(declare-fun b!5440555 () Bool)

(declare-fun e!3370342 () Bool)

(declare-fun e!3370346 () Bool)

(assert (=> b!5440555 (= e!3370342 e!3370346)))

(assert (=> b!5440555 (= c!949426 ((_ is Star!15257) lt!2218681))))

(declare-fun d!1732904 () Bool)

(declare-fun res!2316264 () Bool)

(assert (=> d!1732904 (=> res!2316264 e!3370342)))

(assert (=> d!1732904 (= res!2316264 ((_ is ElementMatch!15257) lt!2218681))))

(assert (=> d!1732904 (= (validRegex!6993 lt!2218681) e!3370342)))

(declare-fun bm!390195 () Bool)

(assert (=> bm!390195 (= call!390201 (validRegex!6993 (ite c!949425 (regOne!31027 lt!2218681) (regOne!31026 lt!2218681))))))

(declare-fun b!5440556 () Bool)

(declare-fun e!3370343 () Bool)

(assert (=> b!5440556 (= e!3370343 call!390200)))

(declare-fun bm!390196 () Bool)

(assert (=> bm!390196 (= call!390199 call!390200)))

(declare-fun b!5440557 () Bool)

(assert (=> b!5440557 (= e!3370346 e!3370345)))

(assert (=> b!5440557 (= c!949425 ((_ is Union!15257) lt!2218681))))

(declare-fun b!5440558 () Bool)

(assert (=> b!5440558 (= e!3370346 e!3370343)))

(declare-fun res!2316263 () Bool)

(assert (=> b!5440558 (= res!2316263 (not (nullable!5426 (reg!15586 lt!2218681))))))

(assert (=> b!5440558 (=> (not res!2316263) (not e!3370343))))

(declare-fun b!5440559 () Bool)

(declare-fun res!2316265 () Bool)

(assert (=> b!5440559 (=> (not res!2316265) (not e!3370348))))

(assert (=> b!5440559 (= res!2316265 call!390201)))

(assert (=> b!5440559 (= e!3370345 e!3370348)))

(assert (= (and d!1732904 (not res!2316264)) b!5440555))

(assert (= (and b!5440555 c!949426) b!5440558))

(assert (= (and b!5440555 (not c!949426)) b!5440557))

(assert (= (and b!5440558 res!2316263) b!5440556))

(assert (= (and b!5440557 c!949425) b!5440559))

(assert (= (and b!5440557 (not c!949425)) b!5440551))

(assert (= (and b!5440559 res!2316265) b!5440553))

(assert (= (and b!5440551 (not res!2316266)) b!5440554))

(assert (= (and b!5440554 res!2316267) b!5440552))

(assert (= (or b!5440553 b!5440552) bm!390196))

(assert (= (or b!5440559 b!5440554) bm!390195))

(assert (= (or b!5440556 bm!390196) bm!390194))

(declare-fun m!6461566 () Bool)

(assert (=> bm!390194 m!6461566))

(declare-fun m!6461568 () Bool)

(assert (=> bm!390195 m!6461568))

(declare-fun m!6461570 () Bool)

(assert (=> b!5440558 m!6461570))

(assert (=> d!1732612 d!1732904))

(declare-fun d!1732910 () Bool)

(declare-fun res!2316273 () Bool)

(declare-fun e!3370356 () Bool)

(assert (=> d!1732910 (=> res!2316273 e!3370356)))

(assert (=> d!1732910 (= res!2316273 ((_ is Nil!61946) (exprs!5141 (h!68395 zl!343))))))

(assert (=> d!1732910 (= (forall!14574 (exprs!5141 (h!68395 zl!343)) lambda!286219) e!3370356)))

(declare-fun b!5440569 () Bool)

(declare-fun e!3370357 () Bool)

(assert (=> b!5440569 (= e!3370356 e!3370357)))

(declare-fun res!2316274 () Bool)

(assert (=> b!5440569 (=> (not res!2316274) (not e!3370357))))

(assert (=> b!5440569 (= res!2316274 (dynLambda!24381 lambda!286219 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440570 () Bool)

(assert (=> b!5440570 (= e!3370357 (forall!14574 (t!375295 (exprs!5141 (h!68395 zl!343))) lambda!286219))))

(assert (= (and d!1732910 (not res!2316273)) b!5440569))

(assert (= (and b!5440569 res!2316274) b!5440570))

(declare-fun b_lambda!207391 () Bool)

(assert (=> (not b_lambda!207391) (not b!5440569)))

(declare-fun m!6461578 () Bool)

(assert (=> b!5440569 m!6461578))

(declare-fun m!6461580 () Bool)

(assert (=> b!5440570 m!6461580))

(assert (=> d!1732612 d!1732910))

(declare-fun d!1732916 () Bool)

(assert (=> d!1732916 (= (Exists!2438 (ite c!949101 lambda!286184 lambda!286185)) (choose!41267 (ite c!949101 lambda!286184 lambda!286185)))))

(declare-fun bs!1255501 () Bool)

(assert (= bs!1255501 d!1732916))

(declare-fun m!6461584 () Bool)

(assert (=> bs!1255501 m!6461584))

(assert (=> bm!390000 d!1732916))

(declare-fun d!1732918 () Bool)

(declare-fun c!949432 () Bool)

(assert (=> d!1732918 (= c!949432 (isEmpty!33933 (tail!10762 (t!375297 s!2326))))))

(declare-fun e!3370365 () Bool)

(assert (=> d!1732918 (= (matchZipper!1501 (derivationStepZipper!1486 lt!2218611 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))) e!3370365)))

(declare-fun b!5440585 () Bool)

(assert (=> b!5440585 (= e!3370365 (nullableZipper!1474 (derivationStepZipper!1486 lt!2218611 (head!11665 (t!375297 s!2326)))))))

(declare-fun b!5440586 () Bool)

(assert (=> b!5440586 (= e!3370365 (matchZipper!1501 (derivationStepZipper!1486 (derivationStepZipper!1486 lt!2218611 (head!11665 (t!375297 s!2326))) (head!11665 (tail!10762 (t!375297 s!2326)))) (tail!10762 (tail!10762 (t!375297 s!2326)))))))

(assert (= (and d!1732918 c!949432) b!5440585))

(assert (= (and d!1732918 (not c!949432)) b!5440586))

(assert (=> d!1732918 m!6460842))

(declare-fun m!6461586 () Bool)

(assert (=> d!1732918 m!6461586))

(assert (=> b!5440585 m!6460840))

(declare-fun m!6461588 () Bool)

(assert (=> b!5440585 m!6461588))

(assert (=> b!5440586 m!6460842))

(declare-fun m!6461590 () Bool)

(assert (=> b!5440586 m!6461590))

(assert (=> b!5440586 m!6460840))

(assert (=> b!5440586 m!6461590))

(declare-fun m!6461592 () Bool)

(assert (=> b!5440586 m!6461592))

(assert (=> b!5440586 m!6460842))

(declare-fun m!6461594 () Bool)

(assert (=> b!5440586 m!6461594))

(assert (=> b!5440586 m!6461592))

(assert (=> b!5440586 m!6461594))

(declare-fun m!6461596 () Bool)

(assert (=> b!5440586 m!6461596))

(assert (=> b!5439639 d!1732918))

(declare-fun bs!1255502 () Bool)

(declare-fun d!1732920 () Bool)

(assert (= bs!1255502 (and d!1732920 b!5439217)))

(declare-fun lambda!286272 () Int)

(assert (=> bs!1255502 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286272 lambda!286160))))

(declare-fun bs!1255503 () Bool)

(assert (= bs!1255503 (and d!1732920 d!1732552)))

(assert (=> bs!1255503 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286272 lambda!286189))))

(declare-fun bs!1255504 () Bool)

(assert (= bs!1255504 (and d!1732920 d!1732670)))

(assert (=> bs!1255504 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286272 lambda!286233))))

(assert (=> d!1732920 true))

(assert (=> d!1732920 (= (derivationStepZipper!1486 lt!2218611 (head!11665 (t!375297 s!2326))) (flatMap!984 lt!2218611 lambda!286272))))

(declare-fun bs!1255505 () Bool)

(assert (= bs!1255505 d!1732920))

(declare-fun m!6461610 () Bool)

(assert (=> bs!1255505 m!6461610))

(assert (=> b!5439639 d!1732920))

(declare-fun d!1732922 () Bool)

(assert (=> d!1732922 (= (head!11665 (t!375297 s!2326)) (h!68396 (t!375297 s!2326)))))

(assert (=> b!5439639 d!1732922))

(declare-fun d!1732924 () Bool)

(assert (=> d!1732924 (= (tail!10762 (t!375297 s!2326)) (t!375297 (t!375297 s!2326)))))

(assert (=> b!5439639 d!1732924))

(assert (=> bm!390016 d!1732820))

(assert (=> d!1732628 d!1732626))

(declare-fun d!1732928 () Bool)

(assert (=> d!1732928 (not (matchZipper!1501 lt!2218594 (t!375297 s!2326)))))

(assert (=> d!1732928 true))

(declare-fun _$64!739 () Unit!154570)

(assert (=> d!1732928 (= (choose!41263 lt!2218594 (t!375297 s!2326)) _$64!739)))

(declare-fun bs!1255508 () Bool)

(assert (= bs!1255508 d!1732928))

(assert (=> bs!1255508 m!6460538))

(assert (=> d!1732628 d!1732928))

(declare-fun bm!390201 () Bool)

(declare-fun c!949437 () Bool)

(declare-fun c!949436 () Bool)

(declare-fun call!390207 () List!62070)

(assert (=> bm!390201 (= call!390207 ($colon$colon!1524 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343))))) (ite (or c!949437 c!949436) (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68394 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun d!1732940 () Bool)

(declare-fun c!949435 () Bool)

(assert (=> d!1732940 (= c!949435 (and ((_ is ElementMatch!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))) (= (c!949049 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326))))))

(declare-fun e!3370371 () (InoxSet Context!9282))

(assert (=> d!1732940 (= (derivationStepZipperDown!705 (h!68394 (exprs!5141 (h!68395 zl!343))) (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326)) e!3370371)))

(declare-fun b!5440589 () Bool)

(declare-fun c!949438 () Bool)

(assert (=> b!5440589 (= c!949438 ((_ is Star!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun e!3370370 () (InoxSet Context!9282))

(declare-fun e!3370367 () (InoxSet Context!9282))

(assert (=> b!5440589 (= e!3370370 e!3370367)))

(declare-fun b!5440590 () Bool)

(declare-fun e!3370368 () (InoxSet Context!9282))

(assert (=> b!5440590 (= e!3370368 e!3370370)))

(assert (=> b!5440590 (= c!949436 ((_ is Concat!24102) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun bm!390202 () Bool)

(declare-fun call!390210 () (InoxSet Context!9282))

(declare-fun call!390206 () (InoxSet Context!9282))

(assert (=> bm!390202 (= call!390210 call!390206)))

(declare-fun b!5440591 () Bool)

(declare-fun call!390211 () (InoxSet Context!9282))

(assert (=> b!5440591 (= e!3370367 call!390211)))

(declare-fun call!390209 () List!62070)

(declare-fun c!949434 () Bool)

(declare-fun bm!390203 () Bool)

(assert (=> bm!390203 (= call!390206 (derivationStepZipperDown!705 (ite c!949434 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949437 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949436 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))) (ite (or c!949434 c!949437) (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (Context!9283 call!390209)) (h!68396 s!2326)))))

(declare-fun b!5440592 () Bool)

(assert (=> b!5440592 (= e!3370371 (store ((as const (Array Context!9282 Bool)) false) (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) true))))

(declare-fun b!5440593 () Bool)

(assert (=> b!5440593 (= e!3370367 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440594 () Bool)

(declare-fun e!3370372 () (InoxSet Context!9282))

(assert (=> b!5440594 (= e!3370371 e!3370372)))

(assert (=> b!5440594 (= c!949434 ((_ is Union!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun call!390208 () (InoxSet Context!9282))

(declare-fun bm!390204 () Bool)

(assert (=> bm!390204 (= call!390208 (derivationStepZipperDown!705 (ite c!949434 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))) (ite c!949434 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (Context!9283 call!390207)) (h!68396 s!2326)))))

(declare-fun bm!390205 () Bool)

(assert (=> bm!390205 (= call!390211 call!390210)))

(declare-fun b!5440595 () Bool)

(declare-fun e!3370369 () Bool)

(assert (=> b!5440595 (= c!949437 e!3370369)))

(declare-fun res!2316283 () Bool)

(assert (=> b!5440595 (=> (not res!2316283) (not e!3370369))))

(assert (=> b!5440595 (= res!2316283 ((_ is Concat!24102) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> b!5440595 (= e!3370372 e!3370368)))

(declare-fun bm!390206 () Bool)

(assert (=> bm!390206 (= call!390209 call!390207)))

(declare-fun b!5440596 () Bool)

(assert (=> b!5440596 (= e!3370372 ((_ map or) call!390206 call!390208))))

(declare-fun b!5440597 () Bool)

(assert (=> b!5440597 (= e!3370368 ((_ map or) call!390208 call!390210))))

(declare-fun b!5440598 () Bool)

(assert (=> b!5440598 (= e!3370370 call!390211)))

(declare-fun b!5440599 () Bool)

(assert (=> b!5440599 (= e!3370369 (nullable!5426 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))

(assert (= (and d!1732940 c!949435) b!5440592))

(assert (= (and d!1732940 (not c!949435)) b!5440594))

(assert (= (and b!5440594 c!949434) b!5440596))

(assert (= (and b!5440594 (not c!949434)) b!5440595))

(assert (= (and b!5440595 res!2316283) b!5440599))

(assert (= (and b!5440595 c!949437) b!5440597))

(assert (= (and b!5440595 (not c!949437)) b!5440590))

(assert (= (and b!5440590 c!949436) b!5440598))

(assert (= (and b!5440590 (not c!949436)) b!5440589))

(assert (= (and b!5440589 c!949438) b!5440591))

(assert (= (and b!5440589 (not c!949438)) b!5440593))

(assert (= (or b!5440598 b!5440591) bm!390206))

(assert (= (or b!5440598 b!5440591) bm!390205))

(assert (= (or b!5440597 bm!390206) bm!390201))

(assert (= (or b!5440597 bm!390205) bm!390202))

(assert (= (or b!5440596 b!5440597) bm!390204))

(assert (= (or b!5440596 bm!390202) bm!390203))

(declare-fun m!6461626 () Bool)

(assert (=> bm!390203 m!6461626))

(declare-fun m!6461628 () Bool)

(assert (=> bm!390204 m!6461628))

(declare-fun m!6461630 () Bool)

(assert (=> b!5440592 m!6461630))

(declare-fun m!6461632 () Bool)

(assert (=> bm!390201 m!6461632))

(assert (=> b!5440599 m!6461002))

(assert (=> bm!390052 d!1732940))

(assert (=> bm!390015 d!1732820))

(declare-fun bm!390214 () Bool)

(declare-fun call!390220 () Bool)

(declare-fun c!949444 () Bool)

(assert (=> bm!390214 (= call!390220 (nullable!5426 (ite c!949444 (regOne!31027 (regOne!31026 (regOne!31026 r!7292))) (regOne!31026 (regOne!31026 (regOne!31026 r!7292))))))))

(declare-fun b!5440631 () Bool)

(declare-fun e!3370399 () Bool)

(declare-fun e!3370404 () Bool)

(assert (=> b!5440631 (= e!3370399 e!3370404)))

(declare-fun res!2316306 () Bool)

(assert (=> b!5440631 (=> (not res!2316306) (not e!3370404))))

(assert (=> b!5440631 (= res!2316306 (and (not ((_ is EmptyLang!15257) (regOne!31026 (regOne!31026 r!7292)))) (not ((_ is ElementMatch!15257) (regOne!31026 (regOne!31026 r!7292))))))))

(declare-fun b!5440633 () Bool)

(declare-fun e!3370402 () Bool)

(declare-fun e!3370400 () Bool)

(assert (=> b!5440633 (= e!3370402 e!3370400)))

(assert (=> b!5440633 (= c!949444 ((_ is Union!15257) (regOne!31026 (regOne!31026 r!7292))))))

(declare-fun b!5440634 () Bool)

(declare-fun e!3370403 () Bool)

(declare-fun call!390219 () Bool)

(assert (=> b!5440634 (= e!3370403 call!390219)))

(declare-fun b!5440635 () Bool)

(assert (=> b!5440635 (= e!3370400 e!3370403)))

(declare-fun res!2316309 () Bool)

(assert (=> b!5440635 (= res!2316309 call!390220)))

(assert (=> b!5440635 (=> res!2316309 e!3370403)))

(declare-fun b!5440636 () Bool)

(declare-fun e!3370401 () Bool)

(assert (=> b!5440636 (= e!3370401 call!390219)))

(declare-fun bm!390215 () Bool)

(assert (=> bm!390215 (= call!390219 (nullable!5426 (ite c!949444 (regTwo!31027 (regOne!31026 (regOne!31026 r!7292))) (regTwo!31026 (regOne!31026 (regOne!31026 r!7292))))))))

(declare-fun b!5440637 () Bool)

(assert (=> b!5440637 (= e!3370404 e!3370402)))

(declare-fun res!2316307 () Bool)

(assert (=> b!5440637 (=> res!2316307 e!3370402)))

(assert (=> b!5440637 (= res!2316307 ((_ is Star!15257) (regOne!31026 (regOne!31026 r!7292))))))

(declare-fun b!5440632 () Bool)

(assert (=> b!5440632 (= e!3370400 e!3370401)))

(declare-fun res!2316305 () Bool)

(assert (=> b!5440632 (= res!2316305 call!390220)))

(assert (=> b!5440632 (=> (not res!2316305) (not e!3370401))))

(declare-fun d!1732946 () Bool)

(declare-fun res!2316308 () Bool)

(assert (=> d!1732946 (=> res!2316308 e!3370399)))

(assert (=> d!1732946 (= res!2316308 ((_ is EmptyExpr!15257) (regOne!31026 (regOne!31026 r!7292))))))

(assert (=> d!1732946 (= (nullableFct!1625 (regOne!31026 (regOne!31026 r!7292))) e!3370399)))

(assert (= (and d!1732946 (not res!2316308)) b!5440631))

(assert (= (and b!5440631 res!2316306) b!5440637))

(assert (= (and b!5440637 (not res!2316307)) b!5440633))

(assert (= (and b!5440633 c!949444) b!5440635))

(assert (= (and b!5440633 (not c!949444)) b!5440632))

(assert (= (and b!5440635 (not res!2316309)) b!5440634))

(assert (= (and b!5440632 res!2316305) b!5440636))

(assert (= (or b!5440634 b!5440636) bm!390215))

(assert (= (or b!5440635 b!5440632) bm!390214))

(declare-fun m!6461662 () Bool)

(assert (=> bm!390214 m!6461662))

(declare-fun m!6461664 () Bool)

(assert (=> bm!390215 m!6461664))

(assert (=> d!1732684 d!1732946))

(declare-fun d!1732970 () Bool)

(assert (=> d!1732970 (= (isEmptyLang!1015 lt!2218675) ((_ is EmptyLang!15257) lt!2218675))))

(assert (=> b!5439707 d!1732970))

(declare-fun d!1732974 () Bool)

(declare-fun c!949445 () Bool)

(assert (=> d!1732974 (= c!949445 (isEmpty!33933 (tail!10762 (t!375297 s!2326))))))

(declare-fun e!3370406 () Bool)

(assert (=> d!1732974 (= (matchZipper!1501 (derivationStepZipper!1486 lt!2218594 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))) e!3370406)))

(declare-fun b!5440639 () Bool)

(assert (=> b!5440639 (= e!3370406 (nullableZipper!1474 (derivationStepZipper!1486 lt!2218594 (head!11665 (t!375297 s!2326)))))))

(declare-fun b!5440640 () Bool)

(assert (=> b!5440640 (= e!3370406 (matchZipper!1501 (derivationStepZipper!1486 (derivationStepZipper!1486 lt!2218594 (head!11665 (t!375297 s!2326))) (head!11665 (tail!10762 (t!375297 s!2326)))) (tail!10762 (tail!10762 (t!375297 s!2326)))))))

(assert (= (and d!1732974 c!949445) b!5440639))

(assert (= (and d!1732974 (not c!949445)) b!5440640))

(assert (=> d!1732974 m!6460842))

(assert (=> d!1732974 m!6461586))

(assert (=> b!5440639 m!6460964))

(declare-fun m!6461670 () Bool)

(assert (=> b!5440639 m!6461670))

(assert (=> b!5440640 m!6460842))

(assert (=> b!5440640 m!6461590))

(assert (=> b!5440640 m!6460964))

(assert (=> b!5440640 m!6461590))

(declare-fun m!6461672 () Bool)

(assert (=> b!5440640 m!6461672))

(assert (=> b!5440640 m!6460842))

(assert (=> b!5440640 m!6461594))

(assert (=> b!5440640 m!6461672))

(assert (=> b!5440640 m!6461594))

(declare-fun m!6461674 () Bool)

(assert (=> b!5440640 m!6461674))

(assert (=> b!5439841 d!1732974))

(declare-fun bs!1255555 () Bool)

(declare-fun d!1732978 () Bool)

(assert (= bs!1255555 (and d!1732978 b!5439217)))

(declare-fun lambda!286279 () Int)

(assert (=> bs!1255555 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286279 lambda!286160))))

(declare-fun bs!1255556 () Bool)

(assert (= bs!1255556 (and d!1732978 d!1732552)))

(assert (=> bs!1255556 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286279 lambda!286189))))

(declare-fun bs!1255557 () Bool)

(assert (= bs!1255557 (and d!1732978 d!1732670)))

(assert (=> bs!1255557 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286279 lambda!286233))))

(declare-fun bs!1255558 () Bool)

(assert (= bs!1255558 (and d!1732978 d!1732920)))

(assert (=> bs!1255558 (= lambda!286279 lambda!286272)))

(assert (=> d!1732978 true))

(assert (=> d!1732978 (= (derivationStepZipper!1486 lt!2218594 (head!11665 (t!375297 s!2326))) (flatMap!984 lt!2218594 lambda!286279))))

(declare-fun bs!1255560 () Bool)

(assert (= bs!1255560 d!1732978))

(declare-fun m!6461676 () Bool)

(assert (=> bs!1255560 m!6461676))

(assert (=> b!5439841 d!1732978))

(assert (=> b!5439841 d!1732922))

(assert (=> b!5439841 d!1732924))

(declare-fun d!1732980 () Bool)

(declare-fun res!2316314 () Bool)

(declare-fun e!3370414 () Bool)

(assert (=> d!1732980 (=> res!2316314 e!3370414)))

(assert (=> d!1732980 (= res!2316314 ((_ is Nil!61946) (exprs!5141 (h!68395 zl!343))))))

(assert (=> d!1732980 (= (forall!14574 (exprs!5141 (h!68395 zl!343)) lambda!286222) e!3370414)))

(declare-fun b!5440652 () Bool)

(declare-fun e!3370415 () Bool)

(assert (=> b!5440652 (= e!3370414 e!3370415)))

(declare-fun res!2316315 () Bool)

(assert (=> b!5440652 (=> (not res!2316315) (not e!3370415))))

(assert (=> b!5440652 (= res!2316315 (dynLambda!24381 lambda!286222 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440653 () Bool)

(assert (=> b!5440653 (= e!3370415 (forall!14574 (t!375295 (exprs!5141 (h!68395 zl!343))) lambda!286222))))

(assert (= (and d!1732980 (not res!2316314)) b!5440652))

(assert (= (and b!5440652 res!2316315) b!5440653))

(declare-fun b_lambda!207399 () Bool)

(assert (=> (not b_lambda!207399) (not b!5440652)))

(declare-fun m!6461678 () Bool)

(assert (=> b!5440652 m!6461678))

(declare-fun m!6461680 () Bool)

(assert (=> b!5440653 m!6461680))

(assert (=> d!1732624 d!1732980))

(declare-fun d!1732982 () Bool)

(assert (=> d!1732982 (= (isEmpty!33933 (tail!10762 s!2326)) ((_ is Nil!61948) (tail!10762 s!2326)))))

(assert (=> b!5439579 d!1732982))

(assert (=> b!5439579 d!1732890))

(assert (=> b!5439944 d!1732578))

(assert (=> bm!390018 d!1732820))

(declare-fun d!1732984 () Bool)

(assert (=> d!1732984 (= (flatMap!984 lt!2218597 lambda!286233) (choose!41265 lt!2218597 lambda!286233))))

(declare-fun bs!1255566 () Bool)

(assert (= bs!1255566 d!1732984))

(declare-fun m!6461682 () Bool)

(assert (=> bs!1255566 m!6461682))

(assert (=> d!1732670 d!1732984))

(declare-fun bs!1255569 () Bool)

(declare-fun d!1732986 () Bool)

(assert (= bs!1255569 (and d!1732986 d!1732588)))

(declare-fun lambda!286281 () Int)

(assert (=> bs!1255569 (= lambda!286281 lambda!286213)))

(declare-fun bs!1255571 () Bool)

(assert (= bs!1255571 (and d!1732986 d!1732610)))

(assert (=> bs!1255571 (= lambda!286281 lambda!286216)))

(declare-fun bs!1255573 () Bool)

(assert (= bs!1255573 (and d!1732986 d!1732632)))

(assert (=> bs!1255573 (= lambda!286281 lambda!286223)))

(declare-fun bs!1255575 () Bool)

(assert (= bs!1255575 (and d!1732986 d!1732612)))

(assert (=> bs!1255575 (= lambda!286281 lambda!286219)))

(declare-fun bs!1255576 () Bool)

(assert (= bs!1255576 (and d!1732986 d!1732818)))

(assert (=> bs!1255576 (= lambda!286281 lambda!286254)))

(declare-fun bs!1255578 () Bool)

(assert (= bs!1255578 (and d!1732986 d!1732624)))

(assert (=> bs!1255578 (= lambda!286281 lambda!286222)))

(declare-fun bs!1255579 () Bool)

(assert (= bs!1255579 (and d!1732986 b!5439215)))

(assert (=> bs!1255579 (= lambda!286281 lambda!286161)))

(declare-fun e!3370417 () Bool)

(assert (=> d!1732986 e!3370417))

(declare-fun res!2316316 () Bool)

(assert (=> d!1732986 (=> (not res!2316316) (not e!3370417))))

(declare-fun lt!2218743 () Regex!15257)

(assert (=> d!1732986 (= res!2316316 (validRegex!6993 lt!2218743))))

(declare-fun e!3370420 () Regex!15257)

(assert (=> d!1732986 (= lt!2218743 e!3370420)))

(declare-fun c!949453 () Bool)

(declare-fun e!3370418 () Bool)

(assert (=> d!1732986 (= c!949453 e!3370418)))

(declare-fun res!2316317 () Bool)

(assert (=> d!1732986 (=> (not res!2316317) (not e!3370418))))

(assert (=> d!1732986 (= res!2316317 ((_ is Cons!61946) (t!375295 (unfocusZipperList!699 zl!343))))))

(assert (=> d!1732986 (forall!14574 (t!375295 (unfocusZipperList!699 zl!343)) lambda!286281)))

(assert (=> d!1732986 (= (generalisedUnion!1186 (t!375295 (unfocusZipperList!699 zl!343))) lt!2218743)))

(declare-fun b!5440654 () Bool)

(declare-fun e!3370419 () Regex!15257)

(assert (=> b!5440654 (= e!3370419 EmptyLang!15257)))

(declare-fun b!5440655 () Bool)

(declare-fun e!3370421 () Bool)

(assert (=> b!5440655 (= e!3370417 e!3370421)))

(declare-fun c!949452 () Bool)

(assert (=> b!5440655 (= c!949452 (isEmpty!33930 (t!375295 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5440656 () Bool)

(assert (=> b!5440656 (= e!3370419 (Union!15257 (h!68394 (t!375295 (unfocusZipperList!699 zl!343))) (generalisedUnion!1186 (t!375295 (t!375295 (unfocusZipperList!699 zl!343))))))))

(declare-fun b!5440657 () Bool)

(assert (=> b!5440657 (= e!3370420 e!3370419)))

(declare-fun c!949451 () Bool)

(assert (=> b!5440657 (= c!949451 ((_ is Cons!61946) (t!375295 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5440658 () Bool)

(declare-fun e!3370416 () Bool)

(assert (=> b!5440658 (= e!3370416 (= lt!2218743 (head!11666 (t!375295 (unfocusZipperList!699 zl!343)))))))

(declare-fun b!5440659 () Bool)

(assert (=> b!5440659 (= e!3370421 e!3370416)))

(declare-fun c!949450 () Bool)

(assert (=> b!5440659 (= c!949450 (isEmpty!33930 (tail!10763 (t!375295 (unfocusZipperList!699 zl!343)))))))

(declare-fun b!5440660 () Bool)

(assert (=> b!5440660 (= e!3370416 (isUnion!447 lt!2218743))))

(declare-fun b!5440661 () Bool)

(assert (=> b!5440661 (= e!3370421 (isEmptyLang!1015 lt!2218743))))

(declare-fun b!5440662 () Bool)

(assert (=> b!5440662 (= e!3370418 (isEmpty!33930 (t!375295 (t!375295 (unfocusZipperList!699 zl!343)))))))

(declare-fun b!5440663 () Bool)

(assert (=> b!5440663 (= e!3370420 (h!68394 (t!375295 (unfocusZipperList!699 zl!343))))))

(assert (= (and d!1732986 res!2316317) b!5440662))

(assert (= (and d!1732986 c!949453) b!5440663))

(assert (= (and d!1732986 (not c!949453)) b!5440657))

(assert (= (and b!5440657 c!949451) b!5440656))

(assert (= (and b!5440657 (not c!949451)) b!5440654))

(assert (= (and d!1732986 res!2316316) b!5440655))

(assert (= (and b!5440655 c!949452) b!5440661))

(assert (= (and b!5440655 (not c!949452)) b!5440659))

(assert (= (and b!5440659 c!949450) b!5440658))

(assert (= (and b!5440659 (not c!949450)) b!5440660))

(declare-fun m!6461684 () Bool)

(assert (=> b!5440656 m!6461684))

(declare-fun m!6461686 () Bool)

(assert (=> b!5440658 m!6461686))

(declare-fun m!6461688 () Bool)

(assert (=> b!5440660 m!6461688))

(declare-fun m!6461690 () Bool)

(assert (=> b!5440662 m!6461690))

(declare-fun m!6461692 () Bool)

(assert (=> b!5440659 m!6461692))

(assert (=> b!5440659 m!6461692))

(declare-fun m!6461694 () Bool)

(assert (=> b!5440659 m!6461694))

(declare-fun m!6461696 () Bool)

(assert (=> d!1732986 m!6461696))

(declare-fun m!6461698 () Bool)

(assert (=> d!1732986 m!6461698))

(declare-fun m!6461700 () Bool)

(assert (=> b!5440661 m!6461700))

(assert (=> b!5440655 m!6460898))

(assert (=> b!5439702 d!1732986))

(declare-fun bs!1255589 () Bool)

(declare-fun d!1732988 () Bool)

(assert (= bs!1255589 (and d!1732988 d!1732588)))

(declare-fun lambda!286282 () Int)

(assert (=> bs!1255589 (= lambda!286282 lambda!286213)))

(declare-fun bs!1255590 () Bool)

(assert (= bs!1255590 (and d!1732988 d!1732610)))

(assert (=> bs!1255590 (= lambda!286282 lambda!286216)))

(declare-fun bs!1255591 () Bool)

(assert (= bs!1255591 (and d!1732988 d!1732632)))

(assert (=> bs!1255591 (= lambda!286282 lambda!286223)))

(declare-fun bs!1255592 () Bool)

(assert (= bs!1255592 (and d!1732988 d!1732986)))

(assert (=> bs!1255592 (= lambda!286282 lambda!286281)))

(declare-fun bs!1255593 () Bool)

(assert (= bs!1255593 (and d!1732988 d!1732612)))

(assert (=> bs!1255593 (= lambda!286282 lambda!286219)))

(declare-fun bs!1255594 () Bool)

(assert (= bs!1255594 (and d!1732988 d!1732818)))

(assert (=> bs!1255594 (= lambda!286282 lambda!286254)))

(declare-fun bs!1255595 () Bool)

(assert (= bs!1255595 (and d!1732988 d!1732624)))

(assert (=> bs!1255595 (= lambda!286282 lambda!286222)))

(declare-fun bs!1255596 () Bool)

(assert (= bs!1255596 (and d!1732988 b!5439215)))

(assert (=> bs!1255596 (= lambda!286282 lambda!286161)))

(declare-fun b!5440664 () Bool)

(declare-fun e!3370427 () Bool)

(declare-fun lt!2218744 () Regex!15257)

(assert (=> b!5440664 (= e!3370427 (isEmptyExpr!1006 lt!2218744))))

(declare-fun b!5440666 () Bool)

(declare-fun e!3370423 () Regex!15257)

(declare-fun e!3370425 () Regex!15257)

(assert (=> b!5440666 (= e!3370423 e!3370425)))

(declare-fun c!949457 () Bool)

(assert (=> b!5440666 (= c!949457 ((_ is Cons!61946) (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440667 () Bool)

(assert (=> b!5440667 (= e!3370425 EmptyExpr!15257)))

(declare-fun b!5440668 () Bool)

(declare-fun e!3370424 () Bool)

(assert (=> b!5440668 (= e!3370424 e!3370427)))

(declare-fun c!949456 () Bool)

(assert (=> b!5440668 (= c!949456 (isEmpty!33930 (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440669 () Bool)

(declare-fun e!3370422 () Bool)

(assert (=> b!5440669 (= e!3370422 (isConcat!529 lt!2218744))))

(declare-fun b!5440670 () Bool)

(assert (=> b!5440670 (= e!3370422 (= lt!2218744 (head!11666 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun b!5440671 () Bool)

(assert (=> b!5440671 (= e!3370425 (Concat!24102 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343)))) (generalisedConcat!926 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun b!5440665 () Bool)

(declare-fun e!3370426 () Bool)

(assert (=> b!5440665 (= e!3370426 (isEmpty!33930 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(assert (=> d!1732988 e!3370424))

(declare-fun res!2316318 () Bool)

(assert (=> d!1732988 (=> (not res!2316318) (not e!3370424))))

(assert (=> d!1732988 (= res!2316318 (validRegex!6993 lt!2218744))))

(assert (=> d!1732988 (= lt!2218744 e!3370423)))

(declare-fun c!949454 () Bool)

(assert (=> d!1732988 (= c!949454 e!3370426)))

(declare-fun res!2316319 () Bool)

(assert (=> d!1732988 (=> (not res!2316319) (not e!3370426))))

(assert (=> d!1732988 (= res!2316319 ((_ is Cons!61946) (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> d!1732988 (forall!14574 (t!375295 (exprs!5141 (h!68395 zl!343))) lambda!286282)))

(assert (=> d!1732988 (= (generalisedConcat!926 (t!375295 (exprs!5141 (h!68395 zl!343)))) lt!2218744)))

(declare-fun b!5440672 () Bool)

(assert (=> b!5440672 (= e!3370423 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440673 () Bool)

(assert (=> b!5440673 (= e!3370427 e!3370422)))

(declare-fun c!949455 () Bool)

(assert (=> b!5440673 (= c!949455 (isEmpty!33930 (tail!10763 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(assert (= (and d!1732988 res!2316319) b!5440665))

(assert (= (and d!1732988 c!949454) b!5440672))

(assert (= (and d!1732988 (not c!949454)) b!5440666))

(assert (= (and b!5440666 c!949457) b!5440671))

(assert (= (and b!5440666 (not c!949457)) b!5440667))

(assert (= (and d!1732988 res!2316318) b!5440668))

(assert (= (and b!5440668 c!949456) b!5440664))

(assert (= (and b!5440668 (not c!949456)) b!5440673))

(assert (= (and b!5440673 c!949455) b!5440670))

(assert (= (and b!5440673 (not c!949455)) b!5440669))

(declare-fun m!6461702 () Bool)

(assert (=> b!5440673 m!6461702))

(assert (=> b!5440673 m!6461702))

(declare-fun m!6461704 () Bool)

(assert (=> b!5440673 m!6461704))

(assert (=> b!5440668 m!6460568))

(declare-fun m!6461706 () Bool)

(assert (=> b!5440671 m!6461706))

(declare-fun m!6461708 () Bool)

(assert (=> b!5440665 m!6461708))

(declare-fun m!6461710 () Bool)

(assert (=> d!1732988 m!6461710))

(declare-fun m!6461712 () Bool)

(assert (=> d!1732988 m!6461712))

(declare-fun m!6461714 () Bool)

(assert (=> b!5440669 m!6461714))

(declare-fun m!6461716 () Bool)

(assert (=> b!5440664 m!6461716))

(declare-fun m!6461718 () Bool)

(assert (=> b!5440670 m!6461718))

(assert (=> b!5439837 d!1732988))

(assert (=> b!5439588 d!1732982))

(assert (=> b!5439588 d!1732890))

(declare-fun d!1732990 () Bool)

(assert (=> d!1732990 (= (isUnion!447 lt!2218675) ((_ is Union!15257) lt!2218675))))

(assert (=> b!5439706 d!1732990))

(declare-fun bs!1255608 () Bool)

(declare-fun d!1732992 () Bool)

(assert (= bs!1255608 (and d!1732992 d!1732878)))

(declare-fun lambda!286284 () Int)

(assert (=> bs!1255608 (= lambda!286284 lambda!286265)))

(assert (=> d!1732992 (= (nullableZipper!1474 lt!2218594) (exists!2025 lt!2218594 lambda!286284))))

(declare-fun bs!1255610 () Bool)

(assert (= bs!1255610 d!1732992))

(declare-fun m!6461720 () Bool)

(assert (=> bs!1255610 m!6461720))

(assert (=> b!5439840 d!1732992))

(assert (=> b!5439584 d!1732888))

(declare-fun d!1732994 () Bool)

(declare-fun c!949458 () Bool)

(assert (=> d!1732994 (= c!949458 (isEmpty!33933 (tail!10762 (t!375297 s!2326))))))

(declare-fun e!3370428 () Bool)

(assert (=> d!1732994 (= (matchZipper!1501 (derivationStepZipper!1486 ((_ map or) lt!2218594 lt!2218611) (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))) e!3370428)))

(declare-fun b!5440674 () Bool)

(assert (=> b!5440674 (= e!3370428 (nullableZipper!1474 (derivationStepZipper!1486 ((_ map or) lt!2218594 lt!2218611) (head!11665 (t!375297 s!2326)))))))

(declare-fun b!5440675 () Bool)

(assert (=> b!5440675 (= e!3370428 (matchZipper!1501 (derivationStepZipper!1486 (derivationStepZipper!1486 ((_ map or) lt!2218594 lt!2218611) (head!11665 (t!375297 s!2326))) (head!11665 (tail!10762 (t!375297 s!2326)))) (tail!10762 (tail!10762 (t!375297 s!2326)))))))

(assert (= (and d!1732994 c!949458) b!5440674))

(assert (= (and d!1732994 (not c!949458)) b!5440675))

(assert (=> d!1732994 m!6460842))

(assert (=> d!1732994 m!6461586))

(assert (=> b!5440674 m!6461052))

(declare-fun m!6461722 () Bool)

(assert (=> b!5440674 m!6461722))

(assert (=> b!5440675 m!6460842))

(assert (=> b!5440675 m!6461590))

(assert (=> b!5440675 m!6461052))

(assert (=> b!5440675 m!6461590))

(declare-fun m!6461724 () Bool)

(assert (=> b!5440675 m!6461724))

(assert (=> b!5440675 m!6460842))

(assert (=> b!5440675 m!6461594))

(assert (=> b!5440675 m!6461724))

(assert (=> b!5440675 m!6461594))

(declare-fun m!6461726 () Bool)

(assert (=> b!5440675 m!6461726))

(assert (=> b!5439946 d!1732994))

(declare-fun bs!1255618 () Bool)

(declare-fun d!1732996 () Bool)

(assert (= bs!1255618 (and d!1732996 d!1732978)))

(declare-fun lambda!286285 () Int)

(assert (=> bs!1255618 (= lambda!286285 lambda!286279)))

(declare-fun bs!1255620 () Bool)

(assert (= bs!1255620 (and d!1732996 d!1732552)))

(assert (=> bs!1255620 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286285 lambda!286189))))

(declare-fun bs!1255621 () Bool)

(assert (= bs!1255621 (and d!1732996 d!1732670)))

(assert (=> bs!1255621 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286285 lambda!286233))))

(declare-fun bs!1255623 () Bool)

(assert (= bs!1255623 (and d!1732996 b!5439217)))

(assert (=> bs!1255623 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286285 lambda!286160))))

(declare-fun bs!1255624 () Bool)

(assert (= bs!1255624 (and d!1732996 d!1732920)))

(assert (=> bs!1255624 (= lambda!286285 lambda!286272)))

(assert (=> d!1732996 true))

(assert (=> d!1732996 (= (derivationStepZipper!1486 ((_ map or) lt!2218594 lt!2218611) (head!11665 (t!375297 s!2326))) (flatMap!984 ((_ map or) lt!2218594 lt!2218611) lambda!286285))))

(declare-fun bs!1255626 () Bool)

(assert (= bs!1255626 d!1732996))

(declare-fun m!6461728 () Bool)

(assert (=> bs!1255626 m!6461728))

(assert (=> b!5439946 d!1732996))

(assert (=> b!5439946 d!1732922))

(assert (=> b!5439946 d!1732924))

(assert (=> b!5439544 d!1732982))

(assert (=> b!5439544 d!1732890))

(assert (=> d!1732544 d!1732536))

(assert (=> d!1732544 d!1732522))

(declare-fun d!1732998 () Bool)

(assert (=> d!1732998 (= (matchR!7442 r!7292 s!2326) (matchRSpec!2360 r!7292 s!2326))))

(assert (=> d!1732998 true))

(declare-fun _$88!3674 () Unit!154570)

(assert (=> d!1732998 (= (choose!41261 r!7292 s!2326) _$88!3674)))

(declare-fun bs!1255627 () Bool)

(assert (= bs!1255627 d!1732998))

(assert (=> bs!1255627 m!6460556))

(assert (=> bs!1255627 m!6460554))

(assert (=> d!1732544 d!1732998))

(assert (=> d!1732544 d!1732668))

(declare-fun d!1733008 () Bool)

(declare-fun res!2316326 () Bool)

(declare-fun e!3370439 () Bool)

(assert (=> d!1733008 (=> res!2316326 e!3370439)))

(assert (=> d!1733008 (= res!2316326 ((_ is Nil!61947) lt!2218690))))

(assert (=> d!1733008 (= (noDuplicate!1424 lt!2218690) e!3370439)))

(declare-fun b!5440691 () Bool)

(declare-fun e!3370440 () Bool)

(assert (=> b!5440691 (= e!3370439 e!3370440)))

(declare-fun res!2316327 () Bool)

(assert (=> b!5440691 (=> (not res!2316327) (not e!3370440))))

(declare-fun contains!19723 (List!62071 Context!9282) Bool)

(assert (=> b!5440691 (= res!2316327 (not (contains!19723 (t!375296 lt!2218690) (h!68395 lt!2218690))))))

(declare-fun b!5440692 () Bool)

(assert (=> b!5440692 (= e!3370440 (noDuplicate!1424 (t!375296 lt!2218690)))))

(assert (= (and d!1733008 (not res!2316326)) b!5440691))

(assert (= (and b!5440691 res!2316327) b!5440692))

(declare-fun m!6461748 () Bool)

(assert (=> b!5440691 m!6461748))

(declare-fun m!6461750 () Bool)

(assert (=> b!5440692 m!6461750))

(assert (=> d!1732648 d!1733008))

(declare-fun d!1733014 () Bool)

(declare-fun e!3370459 () Bool)

(assert (=> d!1733014 e!3370459))

(declare-fun res!2316332 () Bool)

(assert (=> d!1733014 (=> (not res!2316332) (not e!3370459))))

(declare-fun res!2316333 () List!62071)

(assert (=> d!1733014 (= res!2316332 (noDuplicate!1424 res!2316333))))

(declare-fun e!3370457 () Bool)

(assert (=> d!1733014 e!3370457))

(assert (=> d!1733014 (= (choose!41266 z!1189) res!2316333)))

(declare-fun b!5440738 () Bool)

(declare-fun e!3370460 () Bool)

(declare-fun tp!1499916 () Bool)

(assert (=> b!5440738 (= e!3370460 tp!1499916)))

(declare-fun b!5440737 () Bool)

(declare-fun tp!1499917 () Bool)

(assert (=> b!5440737 (= e!3370457 (and (inv!81389 (h!68395 res!2316333)) e!3370460 tp!1499917))))

(declare-fun b!5440739 () Bool)

(assert (=> b!5440739 (= e!3370459 (= (content!11141 res!2316333) z!1189))))

(assert (= b!5440737 b!5440738))

(assert (= (and d!1733014 ((_ is Cons!61947) res!2316333)) b!5440737))

(assert (= (and d!1733014 res!2316332) b!5440739))

(declare-fun m!6461752 () Bool)

(assert (=> d!1733014 m!6461752))

(declare-fun m!6461754 () Bool)

(assert (=> b!5440737 m!6461754))

(declare-fun m!6461756 () Bool)

(assert (=> b!5440739 m!6461756))

(assert (=> d!1732648 d!1733014))

(declare-fun b!5440751 () Bool)

(declare-fun e!3370466 () Bool)

(assert (=> b!5440751 (= e!3370466 (nullable!5426 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591)))))))))

(declare-fun e!3370463 () (InoxSet Context!9282))

(declare-fun b!5440753 () Bool)

(declare-fun call!390224 () (InoxSet Context!9282))

(assert (=> b!5440753 (= e!3370463 ((_ map or) call!390224 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591)))))) (h!68396 s!2326))))))

(declare-fun b!5440754 () Bool)

(declare-fun e!3370464 () (InoxSet Context!9282))

(assert (=> b!5440754 (= e!3370463 e!3370464)))

(declare-fun c!949464 () Bool)

(assert (=> b!5440754 (= c!949464 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591))))))))

(declare-fun d!1733016 () Bool)

(declare-fun c!949465 () Bool)

(assert (=> d!1733016 (= c!949465 e!3370466)))

(declare-fun res!2316334 () Bool)

(assert (=> d!1733016 (=> (not res!2316334) (not e!3370466))))

(assert (=> d!1733016 (= res!2316334 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591))))))))

(assert (=> d!1733016 (= (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (h!68396 s!2326)) e!3370463)))

(declare-fun b!5440755 () Bool)

(assert (=> b!5440755 (= e!3370464 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390219 () Bool)

(assert (=> bm!390219 (= call!390224 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591))))) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591)))))) (h!68396 s!2326)))))

(declare-fun b!5440756 () Bool)

(assert (=> b!5440756 (= e!3370464 call!390224)))

(assert (= (and d!1733016 res!2316334) b!5440751))

(assert (= (and d!1733016 c!949465) b!5440753))

(assert (= (and d!1733016 (not c!949465)) b!5440754))

(assert (= (and b!5440754 c!949464) b!5440756))

(assert (= (and b!5440754 (not c!949464)) b!5440755))

(assert (= (or b!5440753 b!5440756) bm!390219))

(declare-fun m!6461758 () Bool)

(assert (=> b!5440751 m!6461758))

(declare-fun m!6461760 () Bool)

(assert (=> b!5440753 m!6461760))

(declare-fun m!6461764 () Bool)

(assert (=> bm!390219 m!6461764))

(assert (=> b!5439853 d!1733016))

(assert (=> b!5439486 d!1732982))

(assert (=> b!5439486 d!1732890))

(declare-fun d!1733018 () Bool)

(assert (=> d!1733018 true))

(declare-fun setRes!35567 () Bool)

(assert (=> d!1733018 setRes!35567))

(declare-fun condSetEmpty!35567 () Bool)

(declare-fun res!2316335 () (InoxSet Context!9282))

(assert (=> d!1733018 (= condSetEmpty!35567 (= res!2316335 ((as const (Array Context!9282 Bool)) false)))))

(assert (=> d!1733018 (= (choose!41265 z!1189 lambda!286160) res!2316335)))

(declare-fun setIsEmpty!35567 () Bool)

(assert (=> setIsEmpty!35567 setRes!35567))

(declare-fun tp!1499948 () Bool)

(declare-fun e!3370471 () Bool)

(declare-fun setNonEmpty!35567 () Bool)

(declare-fun setElem!35567 () Context!9282)

(assert (=> setNonEmpty!35567 (= setRes!35567 (and tp!1499948 (inv!81389 setElem!35567) e!3370471))))

(declare-fun setRest!35567 () (InoxSet Context!9282))

(assert (=> setNonEmpty!35567 (= res!2316335 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) setElem!35567 true) setRest!35567))))

(declare-fun b!5440767 () Bool)

(declare-fun tp!1499947 () Bool)

(assert (=> b!5440767 (= e!3370471 tp!1499947)))

(assert (= (and d!1733018 condSetEmpty!35567) setIsEmpty!35567))

(assert (= (and d!1733018 (not condSetEmpty!35567)) setNonEmpty!35567))

(assert (= setNonEmpty!35567 b!5440767))

(declare-fun m!6461766 () Bool)

(assert (=> setNonEmpty!35567 m!6461766))

(assert (=> d!1732646 d!1733018))

(declare-fun call!390226 () List!62070)

(declare-fun c!949468 () Bool)

(declare-fun bm!390220 () Bool)

(declare-fun c!949469 () Bool)

(assert (=> bm!390220 (= call!390226 ($colon$colon!1524 (exprs!5141 (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073))) (ite (or c!949469 c!949468) (regTwo!31026 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))))))))

(declare-fun d!1733020 () Bool)

(declare-fun c!949467 () Bool)

(assert (=> d!1733020 (= c!949467 (and ((_ is ElementMatch!15257) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (= (c!949049 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326))))))

(declare-fun e!3370479 () (InoxSet Context!9282))

(assert (=> d!1733020 (= (derivationStepZipperDown!705 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))) (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073)) (h!68396 s!2326)) e!3370479)))

(declare-fun c!949470 () Bool)

(declare-fun b!5440780 () Bool)

(assert (=> b!5440780 (= c!949470 ((_ is Star!15257) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun e!3370478 () (InoxSet Context!9282))

(declare-fun e!3370475 () (InoxSet Context!9282))

(assert (=> b!5440780 (= e!3370478 e!3370475)))

(declare-fun b!5440781 () Bool)

(declare-fun e!3370476 () (InoxSet Context!9282))

(assert (=> b!5440781 (= e!3370476 e!3370478)))

(assert (=> b!5440781 (= c!949468 ((_ is Concat!24102) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun bm!390221 () Bool)

(declare-fun call!390229 () (InoxSet Context!9282))

(declare-fun call!390225 () (InoxSet Context!9282))

(assert (=> bm!390221 (= call!390229 call!390225)))

(declare-fun b!5440782 () Bool)

(declare-fun call!390230 () (InoxSet Context!9282))

(assert (=> b!5440782 (= e!3370475 call!390230)))

(declare-fun call!390228 () List!62070)

(declare-fun bm!390222 () Bool)

(declare-fun c!949466 () Bool)

(assert (=> bm!390222 (= call!390225 (derivationStepZipperDown!705 (ite c!949466 (regOne!31027 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (ite c!949469 (regTwo!31026 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (ite c!949468 (regOne!31026 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (reg!15586 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))))))) (ite (or c!949466 c!949469) (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073)) (Context!9283 call!390228)) (h!68396 s!2326)))))

(declare-fun b!5440783 () Bool)

(assert (=> b!5440783 (= e!3370479 (store ((as const (Array Context!9282 Bool)) false) (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073)) true))))

(declare-fun b!5440784 () Bool)

(assert (=> b!5440784 (= e!3370475 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440785 () Bool)

(declare-fun e!3370480 () (InoxSet Context!9282))

(assert (=> b!5440785 (= e!3370479 e!3370480)))

(assert (=> b!5440785 (= c!949466 ((_ is Union!15257) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun call!390227 () (InoxSet Context!9282))

(declare-fun bm!390223 () Bool)

(assert (=> bm!390223 (= call!390227 (derivationStepZipperDown!705 (ite c!949466 (regTwo!31027 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))) (regOne!31026 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))))) (ite c!949466 (ite (or c!949246 c!949249) lt!2218591 (Context!9283 call!390073)) (Context!9283 call!390226)) (h!68396 s!2326)))))

(declare-fun bm!390224 () Bool)

(assert (=> bm!390224 (= call!390230 call!390229)))

(declare-fun b!5440786 () Bool)

(declare-fun e!3370477 () Bool)

(assert (=> b!5440786 (= c!949469 e!3370477)))

(declare-fun res!2316336 () Bool)

(assert (=> b!5440786 (=> (not res!2316336) (not e!3370477))))

(assert (=> b!5440786 (= res!2316336 ((_ is Concat!24102) (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))))

(assert (=> b!5440786 (= e!3370480 e!3370476)))

(declare-fun bm!390225 () Bool)

(assert (=> bm!390225 (= call!390228 call!390226)))

(declare-fun b!5440787 () Bool)

(assert (=> b!5440787 (= e!3370480 ((_ map or) call!390225 call!390227))))

(declare-fun b!5440788 () Bool)

(assert (=> b!5440788 (= e!3370476 ((_ map or) call!390227 call!390229))))

(declare-fun b!5440789 () Bool)

(assert (=> b!5440789 (= e!3370478 call!390230)))

(declare-fun b!5440790 () Bool)

(assert (=> b!5440790 (= e!3370477 (nullable!5426 (regOne!31026 (ite c!949246 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949249 (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (ite c!949248 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (reg!15586 (h!68394 (exprs!5141 (h!68395 zl!343))))))))))))

(assert (= (and d!1733020 c!949467) b!5440783))

(assert (= (and d!1733020 (not c!949467)) b!5440785))

(assert (= (and b!5440785 c!949466) b!5440787))

(assert (= (and b!5440785 (not c!949466)) b!5440786))

(assert (= (and b!5440786 res!2316336) b!5440790))

(assert (= (and b!5440786 c!949469) b!5440788))

(assert (= (and b!5440786 (not c!949469)) b!5440781))

(assert (= (and b!5440781 c!949468) b!5440789))

(assert (= (and b!5440781 (not c!949468)) b!5440780))

(assert (= (and b!5440780 c!949470) b!5440782))

(assert (= (and b!5440780 (not c!949470)) b!5440784))

(assert (= (or b!5440789 b!5440782) bm!390225))

(assert (= (or b!5440789 b!5440782) bm!390224))

(assert (= (or b!5440788 bm!390225) bm!390220))

(assert (= (or b!5440788 bm!390224) bm!390221))

(assert (= (or b!5440787 b!5440788) bm!390223))

(assert (= (or b!5440787 bm!390221) bm!390222))

(declare-fun m!6461768 () Bool)

(assert (=> bm!390222 m!6461768))

(declare-fun m!6461770 () Bool)

(assert (=> bm!390223 m!6461770))

(declare-fun m!6461774 () Bool)

(assert (=> b!5440783 m!6461774))

(declare-fun m!6461776 () Bool)

(assert (=> bm!390220 m!6461776))

(declare-fun m!6461778 () Bool)

(assert (=> b!5440790 m!6461778))

(assert (=> bm!390067 d!1733020))

(declare-fun bm!390226 () Bool)

(declare-fun call!390232 () Bool)

(declare-fun c!949471 () Bool)

(assert (=> bm!390226 (= call!390232 (nullable!5426 (ite c!949471 (regOne!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun b!5440821 () Bool)

(declare-fun e!3370490 () Bool)

(declare-fun e!3370495 () Bool)

(assert (=> b!5440821 (= e!3370490 e!3370495)))

(declare-fun res!2316338 () Bool)

(assert (=> b!5440821 (=> (not res!2316338) (not e!3370495))))

(assert (=> b!5440821 (= res!2316338 (and (not ((_ is EmptyLang!15257) (h!68394 (exprs!5141 (h!68395 zl!343))))) (not ((_ is ElementMatch!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun b!5440823 () Bool)

(declare-fun e!3370493 () Bool)

(declare-fun e!3370491 () Bool)

(assert (=> b!5440823 (= e!3370493 e!3370491)))

(assert (=> b!5440823 (= c!949471 ((_ is Union!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440824 () Bool)

(declare-fun e!3370494 () Bool)

(declare-fun call!390231 () Bool)

(assert (=> b!5440824 (= e!3370494 call!390231)))

(declare-fun b!5440825 () Bool)

(assert (=> b!5440825 (= e!3370491 e!3370494)))

(declare-fun res!2316341 () Bool)

(assert (=> b!5440825 (= res!2316341 call!390232)))

(assert (=> b!5440825 (=> res!2316341 e!3370494)))

(declare-fun b!5440826 () Bool)

(declare-fun e!3370492 () Bool)

(assert (=> b!5440826 (= e!3370492 call!390231)))

(declare-fun bm!390227 () Bool)

(assert (=> bm!390227 (= call!390231 (nullable!5426 (ite c!949471 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun b!5440827 () Bool)

(assert (=> b!5440827 (= e!3370495 e!3370493)))

(declare-fun res!2316339 () Bool)

(assert (=> b!5440827 (=> res!2316339 e!3370493)))

(assert (=> b!5440827 (= res!2316339 ((_ is Star!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun b!5440822 () Bool)

(assert (=> b!5440822 (= e!3370491 e!3370492)))

(declare-fun res!2316337 () Bool)

(assert (=> b!5440822 (= res!2316337 call!390232)))

(assert (=> b!5440822 (=> (not res!2316337) (not e!3370492))))

(declare-fun d!1733022 () Bool)

(declare-fun res!2316340 () Bool)

(assert (=> d!1733022 (=> res!2316340 e!3370490)))

(assert (=> d!1733022 (= res!2316340 ((_ is EmptyExpr!15257) (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> d!1733022 (= (nullableFct!1625 (h!68394 (exprs!5141 (h!68395 zl!343)))) e!3370490)))

(assert (= (and d!1733022 (not res!2316340)) b!5440821))

(assert (= (and b!5440821 res!2316338) b!5440827))

(assert (= (and b!5440827 (not res!2316339)) b!5440823))

(assert (= (and b!5440823 c!949471) b!5440825))

(assert (= (and b!5440823 (not c!949471)) b!5440822))

(assert (= (and b!5440825 (not res!2316341)) b!5440824))

(assert (= (and b!5440822 res!2316337) b!5440826))

(assert (= (or b!5440824 b!5440826) bm!390227))

(assert (= (or b!5440825 b!5440822) bm!390226))

(declare-fun m!6461780 () Bool)

(assert (=> bm!390226 m!6461780))

(declare-fun m!6461782 () Bool)

(assert (=> bm!390227 m!6461782))

(assert (=> d!1732636 d!1733022))

(assert (=> b!5439543 d!1732888))

(declare-fun bs!1255629 () Bool)

(declare-fun d!1733024 () Bool)

(assert (= bs!1255629 (and d!1733024 d!1732878)))

(declare-fun lambda!286286 () Int)

(assert (=> bs!1255629 (= lambda!286286 lambda!286265)))

(declare-fun bs!1255630 () Bool)

(assert (= bs!1255630 (and d!1733024 d!1732992)))

(assert (=> bs!1255630 (= lambda!286286 lambda!286284)))

(assert (=> d!1733024 (= (nullableZipper!1474 ((_ map or) lt!2218594 lt!2218611)) (exists!2025 ((_ map or) lt!2218594 lt!2218611) lambda!286286))))

(declare-fun bs!1255631 () Bool)

(assert (= bs!1255631 d!1733024))

(declare-fun m!6461784 () Bool)

(assert (=> bs!1255631 m!6461784))

(assert (=> b!5439945 d!1733024))

(assert (=> bm!390019 d!1732820))

(declare-fun d!1733026 () Bool)

(assert (=> d!1733026 (= (nullable!5426 (reg!15586 r!7292)) (nullableFct!1625 (reg!15586 r!7292)))))

(declare-fun bs!1255632 () Bool)

(assert (= bs!1255632 d!1733026))

(declare-fun m!6461786 () Bool)

(assert (=> bs!1255632 m!6461786))

(assert (=> b!5439972 d!1733026))

(declare-fun bs!1255633 () Bool)

(declare-fun d!1733028 () Bool)

(assert (= bs!1255633 (and d!1733028 d!1732878)))

(declare-fun lambda!286287 () Int)

(assert (=> bs!1255633 (= lambda!286287 lambda!286265)))

(declare-fun bs!1255634 () Bool)

(assert (= bs!1255634 (and d!1733028 d!1732992)))

(assert (=> bs!1255634 (= lambda!286287 lambda!286284)))

(declare-fun bs!1255636 () Bool)

(assert (= bs!1255636 (and d!1733028 d!1733024)))

(assert (=> bs!1255636 (= lambda!286287 lambda!286286)))

(assert (=> d!1733028 (= (nullableZipper!1474 lt!2218611) (exists!2025 lt!2218611 lambda!286287))))

(declare-fun bs!1255637 () Bool)

(assert (= bs!1255637 d!1733028))

(declare-fun m!6461790 () Bool)

(assert (=> bs!1255637 m!6461790))

(assert (=> b!5439638 d!1733028))

(declare-fun d!1733034 () Bool)

(assert (=> d!1733034 (= (nullable!5426 (regOne!31026 r!7292)) (nullableFct!1625 (regOne!31026 r!7292)))))

(declare-fun bs!1255639 () Bool)

(assert (= bs!1255639 d!1733034))

(declare-fun m!6461794 () Bool)

(assert (=> bs!1255639 m!6461794))

(assert (=> b!5439536 d!1733034))

(declare-fun d!1733038 () Bool)

(assert (=> d!1733038 (= (nullable!5426 r!7292) (nullableFct!1625 r!7292))))

(declare-fun bs!1255641 () Bool)

(assert (= bs!1255641 d!1733038))

(declare-fun m!6461798 () Bool)

(assert (=> bs!1255641 m!6461798))

(assert (=> b!5439478 d!1733038))

(assert (=> d!1732576 d!1732568))

(assert (=> d!1732576 d!1732562))

(declare-fun d!1733042 () Bool)

(assert (=> d!1733042 (= (matchR!7442 (regTwo!31026 r!7292) s!2326) (matchRSpec!2360 (regTwo!31026 r!7292) s!2326))))

(assert (=> d!1733042 true))

(declare-fun _$88!3675 () Unit!154570)

(assert (=> d!1733042 (= (choose!41261 (regTwo!31026 r!7292) s!2326) _$88!3675)))

(declare-fun bs!1255644 () Bool)

(assert (= bs!1255644 d!1733042))

(assert (=> bs!1255644 m!6460582))

(assert (=> bs!1255644 m!6460592))

(assert (=> d!1732576 d!1733042))

(declare-fun b!5440842 () Bool)

(declare-fun res!2316345 () Bool)

(declare-fun e!3370503 () Bool)

(assert (=> b!5440842 (=> res!2316345 e!3370503)))

(assert (=> b!5440842 (= res!2316345 (not ((_ is Concat!24102) (regTwo!31026 r!7292))))))

(declare-fun e!3370504 () Bool)

(assert (=> b!5440842 (= e!3370504 e!3370503)))

(declare-fun bm!390228 () Bool)

(declare-fun c!949472 () Bool)

(declare-fun c!949473 () Bool)

(declare-fun call!390234 () Bool)

(assert (=> bm!390228 (= call!390234 (validRegex!6993 (ite c!949473 (reg!15586 (regTwo!31026 r!7292)) (ite c!949472 (regTwo!31027 (regTwo!31026 r!7292)) (regTwo!31026 (regTwo!31026 r!7292))))))))

(declare-fun b!5440843 () Bool)

(declare-fun e!3370506 () Bool)

(declare-fun call!390233 () Bool)

(assert (=> b!5440843 (= e!3370506 call!390233)))

(declare-fun b!5440844 () Bool)

(declare-fun e!3370507 () Bool)

(assert (=> b!5440844 (= e!3370507 call!390233)))

(declare-fun b!5440845 () Bool)

(assert (=> b!5440845 (= e!3370503 e!3370506)))

(declare-fun res!2316346 () Bool)

(assert (=> b!5440845 (=> (not res!2316346) (not e!3370506))))

(declare-fun call!390235 () Bool)

(assert (=> b!5440845 (= res!2316346 call!390235)))

(declare-fun b!5440846 () Bool)

(declare-fun e!3370501 () Bool)

(declare-fun e!3370505 () Bool)

(assert (=> b!5440846 (= e!3370501 e!3370505)))

(assert (=> b!5440846 (= c!949473 ((_ is Star!15257) (regTwo!31026 r!7292)))))

(declare-fun d!1733048 () Bool)

(declare-fun res!2316343 () Bool)

(assert (=> d!1733048 (=> res!2316343 e!3370501)))

(assert (=> d!1733048 (= res!2316343 ((_ is ElementMatch!15257) (regTwo!31026 r!7292)))))

(assert (=> d!1733048 (= (validRegex!6993 (regTwo!31026 r!7292)) e!3370501)))

(declare-fun bm!390229 () Bool)

(assert (=> bm!390229 (= call!390235 (validRegex!6993 (ite c!949472 (regOne!31027 (regTwo!31026 r!7292)) (regOne!31026 (regTwo!31026 r!7292)))))))

(declare-fun b!5440847 () Bool)

(declare-fun e!3370502 () Bool)

(assert (=> b!5440847 (= e!3370502 call!390234)))

(declare-fun bm!390230 () Bool)

(assert (=> bm!390230 (= call!390233 call!390234)))

(declare-fun b!5440848 () Bool)

(assert (=> b!5440848 (= e!3370505 e!3370504)))

(assert (=> b!5440848 (= c!949472 ((_ is Union!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5440849 () Bool)

(assert (=> b!5440849 (= e!3370505 e!3370502)))

(declare-fun res!2316342 () Bool)

(assert (=> b!5440849 (= res!2316342 (not (nullable!5426 (reg!15586 (regTwo!31026 r!7292)))))))

(assert (=> b!5440849 (=> (not res!2316342) (not e!3370502))))

(declare-fun b!5440850 () Bool)

(declare-fun res!2316344 () Bool)

(assert (=> b!5440850 (=> (not res!2316344) (not e!3370507))))

(assert (=> b!5440850 (= res!2316344 call!390235)))

(assert (=> b!5440850 (= e!3370504 e!3370507)))

(assert (= (and d!1733048 (not res!2316343)) b!5440846))

(assert (= (and b!5440846 c!949473) b!5440849))

(assert (= (and b!5440846 (not c!949473)) b!5440848))

(assert (= (and b!5440849 res!2316342) b!5440847))

(assert (= (and b!5440848 c!949472) b!5440850))

(assert (= (and b!5440848 (not c!949472)) b!5440842))

(assert (= (and b!5440850 res!2316344) b!5440844))

(assert (= (and b!5440842 (not res!2316345)) b!5440845))

(assert (= (and b!5440845 res!2316346) b!5440843))

(assert (= (or b!5440844 b!5440843) bm!390230))

(assert (= (or b!5440850 b!5440845) bm!390229))

(assert (= (or b!5440847 bm!390230) bm!390228))

(declare-fun m!6461804 () Bool)

(assert (=> bm!390228 m!6461804))

(declare-fun m!6461806 () Bool)

(assert (=> bm!390229 m!6461806))

(declare-fun m!6461808 () Bool)

(assert (=> b!5440849 m!6461808))

(assert (=> d!1732576 d!1733048))

(declare-fun b!5440851 () Bool)

(declare-fun e!3370510 () Bool)

(assert (=> b!5440851 (= e!3370510 (nullable!5426 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))))))

(declare-fun b!5440852 () Bool)

(declare-fun e!3370508 () (InoxSet Context!9282))

(declare-fun call!390236 () (InoxSet Context!9282))

(assert (=> b!5440852 (= e!3370508 ((_ map or) call!390236 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))) (h!68396 s!2326))))))

(declare-fun b!5440853 () Bool)

(declare-fun e!3370509 () (InoxSet Context!9282))

(assert (=> b!5440853 (= e!3370508 e!3370509)))

(declare-fun c!949474 () Bool)

(assert (=> b!5440853 (= c!949474 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))))

(declare-fun d!1733050 () Bool)

(declare-fun c!949475 () Bool)

(assert (=> d!1733050 (= c!949475 e!3370510)))

(declare-fun res!2316347 () Bool)

(assert (=> d!1733050 (=> (not res!2316347) (not e!3370510))))

(assert (=> d!1733050 (= res!2316347 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))))

(assert (=> d!1733050 (= (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326)) e!3370508)))

(declare-fun b!5440854 () Bool)

(assert (=> b!5440854 (= e!3370509 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390231 () Bool)

(assert (=> bm!390231 (= call!390236 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))) (h!68396 s!2326)))))

(declare-fun b!5440855 () Bool)

(assert (=> b!5440855 (= e!3370509 call!390236)))

(assert (= (and d!1733050 res!2316347) b!5440851))

(assert (= (and d!1733050 c!949475) b!5440852))

(assert (= (and d!1733050 (not c!949475)) b!5440853))

(assert (= (and b!5440853 c!949474) b!5440855))

(assert (= (and b!5440853 (not c!949474)) b!5440854))

(assert (= (or b!5440852 b!5440855) bm!390231))

(declare-fun m!6461810 () Bool)

(assert (=> b!5440851 m!6461810))

(declare-fun m!6461812 () Bool)

(assert (=> b!5440852 m!6461812))

(declare-fun m!6461814 () Bool)

(assert (=> bm!390231 m!6461814))

(assert (=> b!5439858 d!1733050))

(assert (=> bm!389999 d!1732820))

(declare-fun b!5440856 () Bool)

(declare-fun res!2316351 () Bool)

(declare-fun e!3370513 () Bool)

(assert (=> b!5440856 (=> res!2316351 e!3370513)))

(assert (=> b!5440856 (= res!2316351 (not ((_ is Concat!24102) (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292)))))))

(declare-fun e!3370514 () Bool)

(assert (=> b!5440856 (= e!3370514 e!3370513)))

(declare-fun c!949477 () Bool)

(declare-fun c!949476 () Bool)

(declare-fun bm!390232 () Bool)

(declare-fun call!390238 () Bool)

(assert (=> bm!390232 (= call!390238 (validRegex!6993 (ite c!949477 (reg!15586 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))) (ite c!949476 (regTwo!31027 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))) (regTwo!31026 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292)))))))))

(declare-fun b!5440857 () Bool)

(declare-fun e!3370516 () Bool)

(declare-fun call!390237 () Bool)

(assert (=> b!5440857 (= e!3370516 call!390237)))

(declare-fun b!5440858 () Bool)

(declare-fun e!3370517 () Bool)

(assert (=> b!5440858 (= e!3370517 call!390237)))

(declare-fun b!5440859 () Bool)

(assert (=> b!5440859 (= e!3370513 e!3370516)))

(declare-fun res!2316352 () Bool)

(assert (=> b!5440859 (=> (not res!2316352) (not e!3370516))))

(declare-fun call!390239 () Bool)

(assert (=> b!5440859 (= res!2316352 call!390239)))

(declare-fun b!5440860 () Bool)

(declare-fun e!3370511 () Bool)

(declare-fun e!3370515 () Bool)

(assert (=> b!5440860 (= e!3370511 e!3370515)))

(assert (=> b!5440860 (= c!949477 ((_ is Star!15257) (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))

(declare-fun d!1733052 () Bool)

(declare-fun res!2316349 () Bool)

(assert (=> d!1733052 (=> res!2316349 e!3370511)))

(assert (=> d!1733052 (= res!2316349 ((_ is ElementMatch!15257) (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))

(assert (=> d!1733052 (= (validRegex!6993 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))) e!3370511)))

(declare-fun bm!390233 () Bool)

(assert (=> bm!390233 (= call!390239 (validRegex!6993 (ite c!949476 (regOne!31027 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))) (regOne!31026 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))))

(declare-fun b!5440861 () Bool)

(declare-fun e!3370512 () Bool)

(assert (=> b!5440861 (= e!3370512 call!390238)))

(declare-fun bm!390234 () Bool)

(assert (=> bm!390234 (= call!390237 call!390238)))

(declare-fun b!5440862 () Bool)

(assert (=> b!5440862 (= e!3370515 e!3370514)))

(assert (=> b!5440862 (= c!949476 ((_ is Union!15257) (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))

(declare-fun b!5440863 () Bool)

(assert (=> b!5440863 (= e!3370515 e!3370512)))

(declare-fun res!2316348 () Bool)

(assert (=> b!5440863 (= res!2316348 (not (nullable!5426 (reg!15586 (ite c!949262 (regOne!31027 r!7292) (regOne!31026 r!7292))))))))

(assert (=> b!5440863 (=> (not res!2316348) (not e!3370512))))

(declare-fun b!5440864 () Bool)

(declare-fun res!2316350 () Bool)

(assert (=> b!5440864 (=> (not res!2316350) (not e!3370517))))

(assert (=> b!5440864 (= res!2316350 call!390239)))

(assert (=> b!5440864 (= e!3370514 e!3370517)))

(assert (= (and d!1733052 (not res!2316349)) b!5440860))

(assert (= (and b!5440860 c!949477) b!5440863))

(assert (= (and b!5440860 (not c!949477)) b!5440862))

(assert (= (and b!5440863 res!2316348) b!5440861))

(assert (= (and b!5440862 c!949476) b!5440864))

(assert (= (and b!5440862 (not c!949476)) b!5440856))

(assert (= (and b!5440864 res!2316350) b!5440858))

(assert (= (and b!5440856 (not res!2316351)) b!5440859))

(assert (= (and b!5440859 res!2316352) b!5440857))

(assert (= (or b!5440858 b!5440857) bm!390234))

(assert (= (or b!5440864 b!5440859) bm!390233))

(assert (= (or b!5440861 bm!390234) bm!390232))

(declare-fun m!6461816 () Bool)

(assert (=> bm!390232 m!6461816))

(declare-fun m!6461818 () Bool)

(assert (=> bm!390233 m!6461818))

(declare-fun m!6461820 () Bool)

(assert (=> b!5440863 m!6461820))

(assert (=> bm!390078 d!1733052))

(declare-fun bm!390235 () Bool)

(declare-fun c!949480 () Bool)

(declare-fun c!949481 () Bool)

(declare-fun call!390241 () List!62070)

(assert (=> bm!390235 (= call!390241 ($colon$colon!1524 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 lt!2218591)))) (ite (or c!949481 c!949480) (regTwo!31026 (h!68394 (exprs!5141 lt!2218591))) (h!68394 (exprs!5141 lt!2218591)))))))

(declare-fun d!1733054 () Bool)

(declare-fun c!949479 () Bool)

(assert (=> d!1733054 (= c!949479 (and ((_ is ElementMatch!15257) (h!68394 (exprs!5141 lt!2218591))) (= (c!949049 (h!68394 (exprs!5141 lt!2218591))) (h!68396 s!2326))))))

(declare-fun e!3370522 () (InoxSet Context!9282))

(assert (=> d!1733054 (= (derivationStepZipperDown!705 (h!68394 (exprs!5141 lt!2218591)) (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (h!68396 s!2326)) e!3370522)))

(declare-fun b!5440865 () Bool)

(declare-fun c!949482 () Bool)

(assert (=> b!5440865 (= c!949482 ((_ is Star!15257) (h!68394 (exprs!5141 lt!2218591))))))

(declare-fun e!3370521 () (InoxSet Context!9282))

(declare-fun e!3370518 () (InoxSet Context!9282))

(assert (=> b!5440865 (= e!3370521 e!3370518)))

(declare-fun b!5440866 () Bool)

(declare-fun e!3370519 () (InoxSet Context!9282))

(assert (=> b!5440866 (= e!3370519 e!3370521)))

(assert (=> b!5440866 (= c!949480 ((_ is Concat!24102) (h!68394 (exprs!5141 lt!2218591))))))

(declare-fun bm!390236 () Bool)

(declare-fun call!390244 () (InoxSet Context!9282))

(declare-fun call!390240 () (InoxSet Context!9282))

(assert (=> bm!390236 (= call!390244 call!390240)))

(declare-fun b!5440867 () Bool)

(declare-fun call!390245 () (InoxSet Context!9282))

(assert (=> b!5440867 (= e!3370518 call!390245)))

(declare-fun c!949478 () Bool)

(declare-fun call!390243 () List!62070)

(declare-fun bm!390237 () Bool)

(assert (=> bm!390237 (= call!390240 (derivationStepZipperDown!705 (ite c!949478 (regOne!31027 (h!68394 (exprs!5141 lt!2218591))) (ite c!949481 (regTwo!31026 (h!68394 (exprs!5141 lt!2218591))) (ite c!949480 (regOne!31026 (h!68394 (exprs!5141 lt!2218591))) (reg!15586 (h!68394 (exprs!5141 lt!2218591)))))) (ite (or c!949478 c!949481) (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (Context!9283 call!390243)) (h!68396 s!2326)))))

(declare-fun b!5440868 () Bool)

(assert (=> b!5440868 (= e!3370522 (store ((as const (Array Context!9282 Bool)) false) (Context!9283 (t!375295 (exprs!5141 lt!2218591))) true))))

(declare-fun b!5440869 () Bool)

(assert (=> b!5440869 (= e!3370518 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440870 () Bool)

(declare-fun e!3370523 () (InoxSet Context!9282))

(assert (=> b!5440870 (= e!3370522 e!3370523)))

(assert (=> b!5440870 (= c!949478 ((_ is Union!15257) (h!68394 (exprs!5141 lt!2218591))))))

(declare-fun call!390242 () (InoxSet Context!9282))

(declare-fun bm!390238 () Bool)

(assert (=> bm!390238 (= call!390242 (derivationStepZipperDown!705 (ite c!949478 (regTwo!31027 (h!68394 (exprs!5141 lt!2218591))) (regOne!31026 (h!68394 (exprs!5141 lt!2218591)))) (ite c!949478 (Context!9283 (t!375295 (exprs!5141 lt!2218591))) (Context!9283 call!390241)) (h!68396 s!2326)))))

(declare-fun bm!390239 () Bool)

(assert (=> bm!390239 (= call!390245 call!390244)))

(declare-fun b!5440871 () Bool)

(declare-fun e!3370520 () Bool)

(assert (=> b!5440871 (= c!949481 e!3370520)))

(declare-fun res!2316353 () Bool)

(assert (=> b!5440871 (=> (not res!2316353) (not e!3370520))))

(assert (=> b!5440871 (= res!2316353 ((_ is Concat!24102) (h!68394 (exprs!5141 lt!2218591))))))

(assert (=> b!5440871 (= e!3370523 e!3370519)))

(declare-fun bm!390240 () Bool)

(assert (=> bm!390240 (= call!390243 call!390241)))

(declare-fun b!5440872 () Bool)

(assert (=> b!5440872 (= e!3370523 ((_ map or) call!390240 call!390242))))

(declare-fun b!5440873 () Bool)

(assert (=> b!5440873 (= e!3370519 ((_ map or) call!390242 call!390244))))

(declare-fun b!5440874 () Bool)

(assert (=> b!5440874 (= e!3370521 call!390245)))

(declare-fun b!5440875 () Bool)

(assert (=> b!5440875 (= e!3370520 (nullable!5426 (regOne!31026 (h!68394 (exprs!5141 lt!2218591)))))))

(assert (= (and d!1733054 c!949479) b!5440868))

(assert (= (and d!1733054 (not c!949479)) b!5440870))

(assert (= (and b!5440870 c!949478) b!5440872))

(assert (= (and b!5440870 (not c!949478)) b!5440871))

(assert (= (and b!5440871 res!2316353) b!5440875))

(assert (= (and b!5440871 c!949481) b!5440873))

(assert (= (and b!5440871 (not c!949481)) b!5440866))

(assert (= (and b!5440866 c!949480) b!5440874))

(assert (= (and b!5440866 (not c!949480)) b!5440865))

(assert (= (and b!5440865 c!949482) b!5440867))

(assert (= (and b!5440865 (not c!949482)) b!5440869))

(assert (= (or b!5440874 b!5440867) bm!390240))

(assert (= (or b!5440874 b!5440867) bm!390239))

(assert (= (or b!5440873 bm!390240) bm!390235))

(assert (= (or b!5440873 bm!390239) bm!390236))

(assert (= (or b!5440872 b!5440873) bm!390238))

(assert (= (or b!5440872 bm!390236) bm!390237))

(declare-fun m!6461822 () Bool)

(assert (=> bm!390237 m!6461822))

(declare-fun m!6461824 () Bool)

(assert (=> bm!390238 m!6461824))

(declare-fun m!6461826 () Bool)

(assert (=> b!5440868 m!6461826))

(declare-fun m!6461828 () Bool)

(assert (=> bm!390235 m!6461828))

(declare-fun m!6461830 () Bool)

(assert (=> b!5440875 m!6461830))

(assert (=> bm!390050 d!1733054))

(declare-fun d!1733056 () Bool)

(assert (=> d!1733056 (= (head!11666 (exprs!5141 (h!68395 zl!343))) (h!68394 (exprs!5141 (h!68395 zl!343))))))

(assert (=> b!5439836 d!1733056))

(declare-fun b!5440876 () Bool)

(declare-fun res!2316357 () Bool)

(declare-fun e!3370526 () Bool)

(assert (=> b!5440876 (=> res!2316357 e!3370526)))

(assert (=> b!5440876 (= res!2316357 (not ((_ is Concat!24102) (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292))))))))

(declare-fun e!3370527 () Bool)

(assert (=> b!5440876 (= e!3370527 e!3370526)))

(declare-fun c!949484 () Bool)

(declare-fun c!949483 () Bool)

(declare-fun bm!390241 () Bool)

(declare-fun call!390247 () Bool)

(assert (=> bm!390241 (= call!390247 (validRegex!6993 (ite c!949484 (reg!15586 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))) (ite c!949483 (regTwo!31027 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))) (regTwo!31026 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292))))))))))

(declare-fun b!5440877 () Bool)

(declare-fun e!3370529 () Bool)

(declare-fun call!390246 () Bool)

(assert (=> b!5440877 (= e!3370529 call!390246)))

(declare-fun b!5440878 () Bool)

(declare-fun e!3370530 () Bool)

(assert (=> b!5440878 (= e!3370530 call!390246)))

(declare-fun b!5440879 () Bool)

(assert (=> b!5440879 (= e!3370526 e!3370529)))

(declare-fun res!2316358 () Bool)

(assert (=> b!5440879 (=> (not res!2316358) (not e!3370529))))

(declare-fun call!390248 () Bool)

(assert (=> b!5440879 (= res!2316358 call!390248)))

(declare-fun b!5440880 () Bool)

(declare-fun e!3370524 () Bool)

(declare-fun e!3370528 () Bool)

(assert (=> b!5440880 (= e!3370524 e!3370528)))

(assert (=> b!5440880 (= c!949484 ((_ is Star!15257) (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))

(declare-fun d!1733058 () Bool)

(declare-fun res!2316355 () Bool)

(assert (=> d!1733058 (=> res!2316355 e!3370524)))

(assert (=> d!1733058 (= res!2316355 ((_ is ElementMatch!15257) (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))

(assert (=> d!1733058 (= (validRegex!6993 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))) e!3370524)))

(declare-fun bm!390242 () Bool)

(assert (=> bm!390242 (= call!390248 (validRegex!6993 (ite c!949483 (regOne!31027 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))) (regOne!31026 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))))

(declare-fun b!5440881 () Bool)

(declare-fun e!3370525 () Bool)

(assert (=> b!5440881 (= e!3370525 call!390247)))

(declare-fun bm!390243 () Bool)

(assert (=> bm!390243 (= call!390246 call!390247)))

(declare-fun b!5440882 () Bool)

(assert (=> b!5440882 (= e!3370528 e!3370527)))

(assert (=> b!5440882 (= c!949483 ((_ is Union!15257) (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))

(declare-fun b!5440883 () Bool)

(assert (=> b!5440883 (= e!3370528 e!3370525)))

(declare-fun res!2316354 () Bool)

(assert (=> b!5440883 (= res!2316354 (not (nullable!5426 (reg!15586 (ite c!949263 (reg!15586 r!7292) (ite c!949262 (regTwo!31027 r!7292) (regTwo!31026 r!7292)))))))))

(assert (=> b!5440883 (=> (not res!2316354) (not e!3370525))))

(declare-fun b!5440884 () Bool)

(declare-fun res!2316356 () Bool)

(assert (=> b!5440884 (=> (not res!2316356) (not e!3370530))))

(assert (=> b!5440884 (= res!2316356 call!390248)))

(assert (=> b!5440884 (= e!3370527 e!3370530)))

(assert (= (and d!1733058 (not res!2316355)) b!5440880))

(assert (= (and b!5440880 c!949484) b!5440883))

(assert (= (and b!5440880 (not c!949484)) b!5440882))

(assert (= (and b!5440883 res!2316354) b!5440881))

(assert (= (and b!5440882 c!949483) b!5440884))

(assert (= (and b!5440882 (not c!949483)) b!5440876))

(assert (= (and b!5440884 res!2316356) b!5440878))

(assert (= (and b!5440876 (not res!2316357)) b!5440879))

(assert (= (and b!5440879 res!2316358) b!5440877))

(assert (= (or b!5440878 b!5440877) bm!390243))

(assert (= (or b!5440884 b!5440879) bm!390242))

(assert (= (or b!5440881 bm!390243) bm!390241))

(declare-fun m!6461832 () Bool)

(assert (=> bm!390241 m!6461832))

(declare-fun m!6461834 () Bool)

(assert (=> bm!390242 m!6461834))

(declare-fun m!6461836 () Bool)

(assert (=> b!5440883 m!6461836))

(assert (=> bm!390077 d!1733058))

(assert (=> d!1732568 d!1732820))

(assert (=> d!1732568 d!1733048))

(assert (=> d!1732676 d!1732820))

(declare-fun d!1733060 () Bool)

(assert (=> d!1733060 (= (isEmpty!33930 (tail!10763 (unfocusZipperList!699 zl!343))) ((_ is Nil!61946) (tail!10763 (unfocusZipperList!699 zl!343))))))

(assert (=> b!5439705 d!1733060))

(declare-fun d!1733062 () Bool)

(assert (=> d!1733062 (= (tail!10763 (unfocusZipperList!699 zl!343)) (t!375295 (unfocusZipperList!699 zl!343)))))

(assert (=> b!5439705 d!1733062))

(declare-fun bs!1255646 () Bool)

(declare-fun d!1733064 () Bool)

(assert (= bs!1255646 (and d!1733064 d!1732588)))

(declare-fun lambda!286288 () Int)

(assert (=> bs!1255646 (= lambda!286288 lambda!286213)))

(declare-fun bs!1255647 () Bool)

(assert (= bs!1255647 (and d!1733064 d!1732610)))

(assert (=> bs!1255647 (= lambda!286288 lambda!286216)))

(declare-fun bs!1255648 () Bool)

(assert (= bs!1255648 (and d!1733064 d!1732632)))

(assert (=> bs!1255648 (= lambda!286288 lambda!286223)))

(declare-fun bs!1255649 () Bool)

(assert (= bs!1255649 (and d!1733064 d!1732988)))

(assert (=> bs!1255649 (= lambda!286288 lambda!286282)))

(declare-fun bs!1255650 () Bool)

(assert (= bs!1255650 (and d!1733064 d!1732986)))

(assert (=> bs!1255650 (= lambda!286288 lambda!286281)))

(declare-fun bs!1255651 () Bool)

(assert (= bs!1255651 (and d!1733064 d!1732612)))

(assert (=> bs!1255651 (= lambda!286288 lambda!286219)))

(declare-fun bs!1255652 () Bool)

(assert (= bs!1255652 (and d!1733064 d!1732818)))

(assert (=> bs!1255652 (= lambda!286288 lambda!286254)))

(declare-fun bs!1255653 () Bool)

(assert (= bs!1255653 (and d!1733064 d!1732624)))

(assert (=> bs!1255653 (= lambda!286288 lambda!286222)))

(declare-fun bs!1255654 () Bool)

(assert (= bs!1255654 (and d!1733064 b!5439215)))

(assert (=> bs!1255654 (= lambda!286288 lambda!286161)))

(assert (=> d!1733064 (= (inv!81389 (h!68395 (t!375296 zl!343))) (forall!14574 (exprs!5141 (h!68395 (t!375296 zl!343))) lambda!286288))))

(declare-fun bs!1255655 () Bool)

(assert (= bs!1255655 d!1733064))

(declare-fun m!6461838 () Bool)

(assert (=> bs!1255655 m!6461838))

(assert (=> b!5440025 d!1733064))

(declare-fun d!1733066 () Bool)

(declare-fun res!2316359 () Bool)

(declare-fun e!3370531 () Bool)

(assert (=> d!1733066 (=> res!2316359 e!3370531)))

(assert (=> d!1733066 (= res!2316359 ((_ is Nil!61946) lt!2218678))))

(assert (=> d!1733066 (= (forall!14574 lt!2218678 lambda!286216) e!3370531)))

(declare-fun b!5440885 () Bool)

(declare-fun e!3370532 () Bool)

(assert (=> b!5440885 (= e!3370531 e!3370532)))

(declare-fun res!2316360 () Bool)

(assert (=> b!5440885 (=> (not res!2316360) (not e!3370532))))

(assert (=> b!5440885 (= res!2316360 (dynLambda!24381 lambda!286216 (h!68394 lt!2218678)))))

(declare-fun b!5440886 () Bool)

(assert (=> b!5440886 (= e!3370532 (forall!14574 (t!375295 lt!2218678) lambda!286216))))

(assert (= (and d!1733066 (not res!2316359)) b!5440885))

(assert (= (and b!5440885 res!2316360) b!5440886))

(declare-fun b_lambda!207417 () Bool)

(assert (=> (not b_lambda!207417) (not b!5440885)))

(declare-fun m!6461840 () Bool)

(assert (=> b!5440885 m!6461840))

(declare-fun m!6461842 () Bool)

(assert (=> b!5440886 m!6461842))

(assert (=> d!1732610 d!1733066))

(declare-fun c!949487 () Bool)

(declare-fun bm!390244 () Bool)

(declare-fun call!390250 () List!62070)

(declare-fun c!949488 () Bool)

(assert (=> bm!390244 (= call!390250 ($colon$colon!1524 (exprs!5141 (ite c!949246 lt!2218591 (Context!9283 call!390071))) (ite (or c!949488 c!949487) (regTwo!31026 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))))

(declare-fun c!949486 () Bool)

(declare-fun d!1733068 () Bool)

(assert (=> d!1733068 (= c!949486 (and ((_ is ElementMatch!15257) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (= (c!949049 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (h!68396 s!2326))))))

(declare-fun e!3370537 () (InoxSet Context!9282))

(assert (=> d!1733068 (= (derivationStepZipperDown!705 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))) (ite c!949246 lt!2218591 (Context!9283 call!390071)) (h!68396 s!2326)) e!3370537)))

(declare-fun b!5440887 () Bool)

(declare-fun c!949489 () Bool)

(assert (=> b!5440887 (= c!949489 ((_ is Star!15257) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun e!3370536 () (InoxSet Context!9282))

(declare-fun e!3370533 () (InoxSet Context!9282))

(assert (=> b!5440887 (= e!3370536 e!3370533)))

(declare-fun b!5440888 () Bool)

(declare-fun e!3370534 () (InoxSet Context!9282))

(assert (=> b!5440888 (= e!3370534 e!3370536)))

(assert (=> b!5440888 (= c!949487 ((_ is Concat!24102) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun bm!390245 () Bool)

(declare-fun call!390253 () (InoxSet Context!9282))

(declare-fun call!390249 () (InoxSet Context!9282))

(assert (=> bm!390245 (= call!390253 call!390249)))

(declare-fun b!5440889 () Bool)

(declare-fun call!390254 () (InoxSet Context!9282))

(assert (=> b!5440889 (= e!3370533 call!390254)))

(declare-fun call!390252 () List!62070)

(declare-fun c!949485 () Bool)

(declare-fun bm!390246 () Bool)

(assert (=> bm!390246 (= call!390249 (derivationStepZipperDown!705 (ite c!949485 (regOne!31027 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (ite c!949488 (regTwo!31026 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (ite c!949487 (regOne!31026 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (reg!15586 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))) (ite (or c!949485 c!949488) (ite c!949246 lt!2218591 (Context!9283 call!390071)) (Context!9283 call!390252)) (h!68396 s!2326)))))

(declare-fun b!5440890 () Bool)

(assert (=> b!5440890 (= e!3370537 (store ((as const (Array Context!9282 Bool)) false) (ite c!949246 lt!2218591 (Context!9283 call!390071)) true))))

(declare-fun b!5440891 () Bool)

(assert (=> b!5440891 (= e!3370533 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440892 () Bool)

(declare-fun e!3370538 () (InoxSet Context!9282))

(assert (=> b!5440892 (= e!3370537 e!3370538)))

(assert (=> b!5440892 (= c!949485 ((_ is Union!15257) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun call!390251 () (InoxSet Context!9282))

(declare-fun bm!390247 () Bool)

(assert (=> bm!390247 (= call!390251 (derivationStepZipperDown!705 (ite c!949485 (regTwo!31027 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))) (regOne!31026 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))) (ite c!949485 (ite c!949246 lt!2218591 (Context!9283 call!390071)) (Context!9283 call!390250)) (h!68396 s!2326)))))

(declare-fun bm!390248 () Bool)

(assert (=> bm!390248 (= call!390254 call!390253)))

(declare-fun b!5440893 () Bool)

(declare-fun e!3370535 () Bool)

(assert (=> b!5440893 (= c!949488 e!3370535)))

(declare-fun res!2316361 () Bool)

(assert (=> b!5440893 (=> (not res!2316361) (not e!3370535))))

(assert (=> b!5440893 (= res!2316361 ((_ is Concat!24102) (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))))))))

(assert (=> b!5440893 (= e!3370538 e!3370534)))

(declare-fun bm!390249 () Bool)

(assert (=> bm!390249 (= call!390252 call!390250)))

(declare-fun b!5440894 () Bool)

(assert (=> b!5440894 (= e!3370538 ((_ map or) call!390249 call!390251))))

(declare-fun b!5440895 () Bool)

(assert (=> b!5440895 (= e!3370534 ((_ map or) call!390251 call!390253))))

(declare-fun b!5440896 () Bool)

(assert (=> b!5440896 (= e!3370536 call!390254)))

(declare-fun b!5440897 () Bool)

(assert (=> b!5440897 (= e!3370535 (nullable!5426 (regOne!31026 (ite c!949246 (regTwo!31027 (h!68394 (exprs!5141 (h!68395 zl!343)))) (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))))

(assert (= (and d!1733068 c!949486) b!5440890))

(assert (= (and d!1733068 (not c!949486)) b!5440892))

(assert (= (and b!5440892 c!949485) b!5440894))

(assert (= (and b!5440892 (not c!949485)) b!5440893))

(assert (= (and b!5440893 res!2316361) b!5440897))

(assert (= (and b!5440893 c!949488) b!5440895))

(assert (= (and b!5440893 (not c!949488)) b!5440888))

(assert (= (and b!5440888 c!949487) b!5440896))

(assert (= (and b!5440888 (not c!949487)) b!5440887))

(assert (= (and b!5440887 c!949489) b!5440889))

(assert (= (and b!5440887 (not c!949489)) b!5440891))

(assert (= (or b!5440896 b!5440889) bm!390249))

(assert (= (or b!5440896 b!5440889) bm!390248))

(assert (= (or b!5440895 bm!390249) bm!390244))

(assert (= (or b!5440895 bm!390248) bm!390245))

(assert (= (or b!5440894 b!5440895) bm!390247))

(assert (= (or b!5440894 bm!390245) bm!390246))

(declare-fun m!6461844 () Bool)

(assert (=> bm!390246 m!6461844))

(declare-fun m!6461846 () Bool)

(assert (=> bm!390247 m!6461846))

(declare-fun m!6461848 () Bool)

(assert (=> b!5440890 m!6461848))

(declare-fun m!6461850 () Bool)

(assert (=> bm!390244 m!6461850))

(declare-fun m!6461852 () Bool)

(assert (=> b!5440897 m!6461852))

(assert (=> bm!390068 d!1733068))

(declare-fun d!1733070 () Bool)

(assert (=> d!1733070 (= (isEmpty!33930 (unfocusZipperList!699 zl!343)) ((_ is Nil!61946) (unfocusZipperList!699 zl!343)))))

(assert (=> b!5439701 d!1733070))

(declare-fun b!5440898 () Bool)

(declare-fun res!2316365 () Bool)

(declare-fun e!3370541 () Bool)

(assert (=> b!5440898 (=> res!2316365 e!3370541)))

(assert (=> b!5440898 (= res!2316365 (not ((_ is Concat!24102) lt!2218675)))))

(declare-fun e!3370542 () Bool)

(assert (=> b!5440898 (= e!3370542 e!3370541)))

(declare-fun c!949490 () Bool)

(declare-fun bm!390250 () Bool)

(declare-fun call!390256 () Bool)

(declare-fun c!949491 () Bool)

(assert (=> bm!390250 (= call!390256 (validRegex!6993 (ite c!949491 (reg!15586 lt!2218675) (ite c!949490 (regTwo!31027 lt!2218675) (regTwo!31026 lt!2218675)))))))

(declare-fun b!5440899 () Bool)

(declare-fun e!3370544 () Bool)

(declare-fun call!390255 () Bool)

(assert (=> b!5440899 (= e!3370544 call!390255)))

(declare-fun b!5440900 () Bool)

(declare-fun e!3370545 () Bool)

(assert (=> b!5440900 (= e!3370545 call!390255)))

(declare-fun b!5440901 () Bool)

(assert (=> b!5440901 (= e!3370541 e!3370544)))

(declare-fun res!2316366 () Bool)

(assert (=> b!5440901 (=> (not res!2316366) (not e!3370544))))

(declare-fun call!390257 () Bool)

(assert (=> b!5440901 (= res!2316366 call!390257)))

(declare-fun b!5440902 () Bool)

(declare-fun e!3370539 () Bool)

(declare-fun e!3370543 () Bool)

(assert (=> b!5440902 (= e!3370539 e!3370543)))

(assert (=> b!5440902 (= c!949491 ((_ is Star!15257) lt!2218675))))

(declare-fun d!1733072 () Bool)

(declare-fun res!2316363 () Bool)

(assert (=> d!1733072 (=> res!2316363 e!3370539)))

(assert (=> d!1733072 (= res!2316363 ((_ is ElementMatch!15257) lt!2218675))))

(assert (=> d!1733072 (= (validRegex!6993 lt!2218675) e!3370539)))

(declare-fun bm!390251 () Bool)

(assert (=> bm!390251 (= call!390257 (validRegex!6993 (ite c!949490 (regOne!31027 lt!2218675) (regOne!31026 lt!2218675))))))

(declare-fun b!5440903 () Bool)

(declare-fun e!3370540 () Bool)

(assert (=> b!5440903 (= e!3370540 call!390256)))

(declare-fun bm!390252 () Bool)

(assert (=> bm!390252 (= call!390255 call!390256)))

(declare-fun b!5440904 () Bool)

(assert (=> b!5440904 (= e!3370543 e!3370542)))

(assert (=> b!5440904 (= c!949490 ((_ is Union!15257) lt!2218675))))

(declare-fun b!5440905 () Bool)

(assert (=> b!5440905 (= e!3370543 e!3370540)))

(declare-fun res!2316362 () Bool)

(assert (=> b!5440905 (= res!2316362 (not (nullable!5426 (reg!15586 lt!2218675))))))

(assert (=> b!5440905 (=> (not res!2316362) (not e!3370540))))

(declare-fun b!5440906 () Bool)

(declare-fun res!2316364 () Bool)

(assert (=> b!5440906 (=> (not res!2316364) (not e!3370545))))

(assert (=> b!5440906 (= res!2316364 call!390257)))

(assert (=> b!5440906 (= e!3370542 e!3370545)))

(assert (= (and d!1733072 (not res!2316363)) b!5440902))

(assert (= (and b!5440902 c!949491) b!5440905))

(assert (= (and b!5440902 (not c!949491)) b!5440904))

(assert (= (and b!5440905 res!2316362) b!5440903))

(assert (= (and b!5440904 c!949490) b!5440906))

(assert (= (and b!5440904 (not c!949490)) b!5440898))

(assert (= (and b!5440906 res!2316364) b!5440900))

(assert (= (and b!5440898 (not res!2316365)) b!5440901))

(assert (= (and b!5440901 res!2316366) b!5440899))

(assert (= (or b!5440900 b!5440899) bm!390252))

(assert (= (or b!5440906 b!5440901) bm!390251))

(assert (= (or b!5440903 bm!390252) bm!390250))

(declare-fun m!6461854 () Bool)

(assert (=> bm!390250 m!6461854))

(declare-fun m!6461856 () Bool)

(assert (=> bm!390251 m!6461856))

(declare-fun m!6461858 () Bool)

(assert (=> b!5440905 m!6461858))

(assert (=> d!1732588 d!1733072))

(declare-fun d!1733074 () Bool)

(declare-fun res!2316367 () Bool)

(declare-fun e!3370546 () Bool)

(assert (=> d!1733074 (=> res!2316367 e!3370546)))

(assert (=> d!1733074 (= res!2316367 ((_ is Nil!61946) (unfocusZipperList!699 zl!343)))))

(assert (=> d!1733074 (= (forall!14574 (unfocusZipperList!699 zl!343) lambda!286213) e!3370546)))

(declare-fun b!5440907 () Bool)

(declare-fun e!3370547 () Bool)

(assert (=> b!5440907 (= e!3370546 e!3370547)))

(declare-fun res!2316368 () Bool)

(assert (=> b!5440907 (=> (not res!2316368) (not e!3370547))))

(assert (=> b!5440907 (= res!2316368 (dynLambda!24381 lambda!286213 (h!68394 (unfocusZipperList!699 zl!343))))))

(declare-fun b!5440908 () Bool)

(assert (=> b!5440908 (= e!3370547 (forall!14574 (t!375295 (unfocusZipperList!699 zl!343)) lambda!286213))))

(assert (= (and d!1733074 (not res!2316367)) b!5440907))

(assert (= (and b!5440907 res!2316368) b!5440908))

(declare-fun b_lambda!207419 () Bool)

(assert (=> (not b_lambda!207419) (not b!5440907)))

(declare-fun m!6461860 () Bool)

(assert (=> b!5440907 m!6461860))

(declare-fun m!6461862 () Bool)

(assert (=> b!5440908 m!6461862))

(assert (=> d!1732588 d!1733074))

(assert (=> b!5439485 d!1732888))

(assert (=> b!5439587 d!1732888))

(declare-fun d!1733076 () Bool)

(assert (=> d!1733076 (= (nullable!5426 (h!68394 (exprs!5141 lt!2218591))) (nullableFct!1625 (h!68394 (exprs!5141 lt!2218591))))))

(declare-fun bs!1255656 () Bool)

(assert (= bs!1255656 d!1733076))

(declare-fun m!6461864 () Bool)

(assert (=> bs!1255656 m!6461864))

(assert (=> b!5439852 d!1733076))

(assert (=> d!1732640 d!1732646))

(declare-fun d!1733078 () Bool)

(assert (=> d!1733078 (= (flatMap!984 z!1189 lambda!286160) (dynLambda!24380 lambda!286160 (h!68395 zl!343)))))

(assert (=> d!1733078 true))

(declare-fun _$13!1963 () Unit!154570)

(assert (=> d!1733078 (= (choose!41264 z!1189 (h!68395 zl!343) lambda!286160) _$13!1963)))

(declare-fun b_lambda!207421 () Bool)

(assert (=> (not b_lambda!207421) (not d!1733078)))

(declare-fun bs!1255657 () Bool)

(assert (= bs!1255657 d!1733078))

(assert (=> bs!1255657 m!6460534))

(assert (=> bs!1255657 m!6460986))

(assert (=> d!1732640 d!1733078))

(declare-fun bs!1255658 () Bool)

(declare-fun b!5440909 () Bool)

(assert (= bs!1255658 (and b!5440909 b!5439522)))

(declare-fun lambda!286289 () Int)

(assert (=> bs!1255658 (= (and (= (reg!15586 (regOne!31027 (regOne!31026 r!7292))) (reg!15586 (regOne!31026 r!7292))) (= (regOne!31027 (regOne!31026 r!7292)) (regOne!31026 r!7292))) (= lambda!286289 lambda!286192))))

(declare-fun bs!1255659 () Bool)

(assert (= bs!1255659 (and b!5440909 d!1732658)))

(assert (=> bs!1255659 (not (= lambda!286289 lambda!286231))))

(declare-fun bs!1255660 () Bool)

(assert (= bs!1255660 (and b!5440909 b!5440463)))

(assert (=> bs!1255660 (not (= lambda!286289 lambda!286260))))

(declare-fun bs!1255661 () Bool)

(assert (= bs!1255661 (and b!5440909 b!5439206)))

(assert (=> bs!1255661 (not (= lambda!286289 lambda!286158))))

(declare-fun bs!1255662 () Bool)

(assert (= bs!1255662 (and b!5440909 b!5440415)))

(assert (=> bs!1255662 (not (= lambda!286289 lambda!286257))))

(declare-fun bs!1255663 () Bool)

(assert (= bs!1255663 (and b!5440909 b!5440411)))

(assert (=> bs!1255663 (= (and (= (reg!15586 (regOne!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31027 r!7292))) (= (regOne!31027 (regOne!31026 r!7292)) (regTwo!31027 r!7292))) (= lambda!286289 lambda!286255))))

(declare-fun bs!1255664 () Bool)

(assert (= bs!1255664 (and b!5440909 b!5439559)))

(assert (=> bs!1255664 (not (= lambda!286289 lambda!286201))))

(declare-fun bs!1255665 () Bool)

(assert (= bs!1255665 (and b!5440909 b!5439367)))

(assert (=> bs!1255665 (= (and (= (reg!15586 (regOne!31027 (regOne!31026 r!7292))) (reg!15586 r!7292)) (= (regOne!31027 (regOne!31026 r!7292)) r!7292)) (= lambda!286289 lambda!286184))))

(declare-fun bs!1255666 () Bool)

(assert (= bs!1255666 (and b!5440909 b!5439371)))

(assert (=> bs!1255666 (not (= lambda!286289 lambda!286185))))

(declare-fun bs!1255667 () Bool)

(assert (= bs!1255667 (and b!5440909 b!5440459)))

(assert (=> bs!1255667 (= (and (= (reg!15586 (regOne!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regOne!31027 (regOne!31026 r!7292)) (regTwo!31027 (regTwo!31026 r!7292)))) (= lambda!286289 lambda!286258))))

(declare-fun bs!1255668 () Bool)

(assert (= bs!1255668 (and b!5440909 d!1732656)))

(assert (=> bs!1255668 (not (= lambda!286289 lambda!286226))))

(declare-fun bs!1255669 () Bool)

(assert (= bs!1255669 (and b!5440909 b!5439555)))

(assert (=> bs!1255669 (= (and (= (reg!15586 (regOne!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31026 r!7292))) (= (regOne!31027 (regOne!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286289 lambda!286198))))

(declare-fun bs!1255670 () Bool)

(assert (= bs!1255670 (and b!5440909 b!5439526)))

(assert (=> bs!1255670 (not (= lambda!286289 lambda!286193))))

(assert (=> bs!1255659 (not (= lambda!286289 lambda!286232))))

(assert (=> bs!1255661 (not (= lambda!286289 lambda!286159))))

(assert (=> b!5440909 true))

(assert (=> b!5440909 true))

(declare-fun bs!1255671 () Bool)

(declare-fun b!5440913 () Bool)

(assert (= bs!1255671 (and b!5440913 b!5439522)))

(declare-fun lambda!286290 () Int)

(assert (=> bs!1255671 (not (= lambda!286290 lambda!286192))))

(declare-fun bs!1255672 () Bool)

(assert (= bs!1255672 (and b!5440913 b!5440909)))

(assert (=> bs!1255672 (not (= lambda!286290 lambda!286289))))

(declare-fun bs!1255673 () Bool)

(assert (= bs!1255673 (and b!5440913 d!1732658)))

(assert (=> bs!1255673 (not (= lambda!286290 lambda!286231))))

(declare-fun bs!1255674 () Bool)

(assert (= bs!1255674 (and b!5440913 b!5440463)))

(assert (=> bs!1255674 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))))) (= lambda!286290 lambda!286260))))

(declare-fun bs!1255675 () Bool)

(assert (= bs!1255675 (and b!5440913 b!5439206)))

(assert (=> bs!1255675 (not (= lambda!286290 lambda!286158))))

(declare-fun bs!1255676 () Bool)

(assert (= bs!1255676 (and b!5440913 b!5440415)))

(assert (=> bs!1255676 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286290 lambda!286257))))

(declare-fun bs!1255677 () Bool)

(assert (= bs!1255677 (and b!5440913 b!5440411)))

(assert (=> bs!1255677 (not (= lambda!286290 lambda!286255))))

(declare-fun bs!1255678 () Bool)

(assert (= bs!1255678 (and b!5440913 b!5439559)))

(assert (=> bs!1255678 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286290 lambda!286201))))

(declare-fun bs!1255679 () Bool)

(assert (= bs!1255679 (and b!5440913 b!5439367)))

(assert (=> bs!1255679 (not (= lambda!286290 lambda!286184))))

(declare-fun bs!1255680 () Bool)

(assert (= bs!1255680 (and b!5440913 b!5439371)))

(assert (=> bs!1255680 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286290 lambda!286185))))

(declare-fun bs!1255681 () Bool)

(assert (= bs!1255681 (and b!5440913 b!5440459)))

(assert (=> bs!1255681 (not (= lambda!286290 lambda!286258))))

(declare-fun bs!1255682 () Bool)

(assert (= bs!1255682 (and b!5440913 d!1732656)))

(assert (=> bs!1255682 (not (= lambda!286290 lambda!286226))))

(declare-fun bs!1255683 () Bool)

(assert (= bs!1255683 (and b!5440913 b!5439555)))

(assert (=> bs!1255683 (not (= lambda!286290 lambda!286198))))

(declare-fun bs!1255684 () Bool)

(assert (= bs!1255684 (and b!5440913 b!5439526)))

(assert (=> bs!1255684 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286290 lambda!286193))))

(assert (=> bs!1255673 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286290 lambda!286232))))

(assert (=> bs!1255675 (= (and (= (regOne!31026 (regOne!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286290 lambda!286159))))

(assert (=> b!5440913 true))

(assert (=> b!5440913 true))

(declare-fun e!3370549 () Bool)

(declare-fun call!390259 () Bool)

(assert (=> b!5440909 (= e!3370549 call!390259)))

(declare-fun b!5440911 () Bool)

(declare-fun res!2316371 () Bool)

(assert (=> b!5440911 (=> res!2316371 e!3370549)))

(declare-fun call!390258 () Bool)

(assert (=> b!5440911 (= res!2316371 call!390258)))

(declare-fun e!3370554 () Bool)

(assert (=> b!5440911 (= e!3370554 e!3370549)))

(declare-fun bm!390253 () Bool)

(assert (=> bm!390253 (= call!390258 (isEmpty!33933 s!2326))))

(declare-fun bm!390254 () Bool)

(declare-fun c!949494 () Bool)

(assert (=> bm!390254 (= call!390259 (Exists!2438 (ite c!949494 lambda!286289 lambda!286290)))))

(declare-fun b!5440912 () Bool)

(declare-fun c!949495 () Bool)

(assert (=> b!5440912 (= c!949495 ((_ is ElementMatch!15257) (regOne!31027 (regOne!31026 r!7292))))))

(declare-fun e!3370551 () Bool)

(declare-fun e!3370548 () Bool)

(assert (=> b!5440912 (= e!3370551 e!3370548)))

(declare-fun d!1733080 () Bool)

(declare-fun c!949493 () Bool)

(assert (=> d!1733080 (= c!949493 ((_ is EmptyExpr!15257) (regOne!31027 (regOne!31026 r!7292))))))

(declare-fun e!3370553 () Bool)

(assert (=> d!1733080 (= (matchRSpec!2360 (regOne!31027 (regOne!31026 r!7292)) s!2326) e!3370553)))

(declare-fun b!5440910 () Bool)

(declare-fun e!3370550 () Bool)

(declare-fun e!3370552 () Bool)

(assert (=> b!5440910 (= e!3370550 e!3370552)))

(declare-fun res!2316369 () Bool)

(assert (=> b!5440910 (= res!2316369 (matchRSpec!2360 (regOne!31027 (regOne!31027 (regOne!31026 r!7292))) s!2326))))

(assert (=> b!5440910 (=> res!2316369 e!3370552)))

(assert (=> b!5440913 (= e!3370554 call!390259)))

(declare-fun b!5440914 () Bool)

(declare-fun c!949492 () Bool)

(assert (=> b!5440914 (= c!949492 ((_ is Union!15257) (regOne!31027 (regOne!31026 r!7292))))))

(assert (=> b!5440914 (= e!3370548 e!3370550)))

(declare-fun b!5440915 () Bool)

(assert (=> b!5440915 (= e!3370548 (= s!2326 (Cons!61948 (c!949049 (regOne!31027 (regOne!31026 r!7292))) Nil!61948)))))

(declare-fun b!5440916 () Bool)

(assert (=> b!5440916 (= e!3370552 (matchRSpec!2360 (regTwo!31027 (regOne!31027 (regOne!31026 r!7292))) s!2326))))

(declare-fun b!5440917 () Bool)

(assert (=> b!5440917 (= e!3370553 e!3370551)))

(declare-fun res!2316370 () Bool)

(assert (=> b!5440917 (= res!2316370 (not ((_ is EmptyLang!15257) (regOne!31027 (regOne!31026 r!7292)))))))

(assert (=> b!5440917 (=> (not res!2316370) (not e!3370551))))

(declare-fun b!5440918 () Bool)

(assert (=> b!5440918 (= e!3370550 e!3370554)))

(assert (=> b!5440918 (= c!949494 ((_ is Star!15257) (regOne!31027 (regOne!31026 r!7292))))))

(declare-fun b!5440919 () Bool)

(assert (=> b!5440919 (= e!3370553 call!390258)))

(assert (= (and d!1733080 c!949493) b!5440919))

(assert (= (and d!1733080 (not c!949493)) b!5440917))

(assert (= (and b!5440917 res!2316370) b!5440912))

(assert (= (and b!5440912 c!949495) b!5440915))

(assert (= (and b!5440912 (not c!949495)) b!5440914))

(assert (= (and b!5440914 c!949492) b!5440910))

(assert (= (and b!5440914 (not c!949492)) b!5440918))

(assert (= (and b!5440910 (not res!2316369)) b!5440916))

(assert (= (and b!5440918 c!949494) b!5440911))

(assert (= (and b!5440918 (not c!949494)) b!5440913))

(assert (= (and b!5440911 (not res!2316371)) b!5440909))

(assert (= (or b!5440909 b!5440913) bm!390254))

(assert (= (or b!5440919 b!5440911) bm!390253))

(assert (=> bm!390253 m!6460694))

(declare-fun m!6461866 () Bool)

(assert (=> bm!390254 m!6461866))

(declare-fun m!6461868 () Bool)

(assert (=> b!5440910 m!6461868))

(declare-fun m!6461870 () Bool)

(assert (=> b!5440916 m!6461870))

(assert (=> b!5439523 d!1733080))

(assert (=> bm!390023 d!1732820))

(declare-fun d!1733082 () Bool)

(declare-fun res!2316372 () Bool)

(declare-fun e!3370555 () Bool)

(assert (=> d!1733082 (=> res!2316372 e!3370555)))

(assert (=> d!1733082 (= res!2316372 ((_ is Nil!61946) (exprs!5141 setElem!35553)))))

(assert (=> d!1733082 (= (forall!14574 (exprs!5141 setElem!35553) lambda!286223) e!3370555)))

(declare-fun b!5440920 () Bool)

(declare-fun e!3370556 () Bool)

(assert (=> b!5440920 (= e!3370555 e!3370556)))

(declare-fun res!2316373 () Bool)

(assert (=> b!5440920 (=> (not res!2316373) (not e!3370556))))

(assert (=> b!5440920 (= res!2316373 (dynLambda!24381 lambda!286223 (h!68394 (exprs!5141 setElem!35553))))))

(declare-fun b!5440921 () Bool)

(assert (=> b!5440921 (= e!3370556 (forall!14574 (t!375295 (exprs!5141 setElem!35553)) lambda!286223))))

(assert (= (and d!1733082 (not res!2316372)) b!5440920))

(assert (= (and b!5440920 res!2316373) b!5440921))

(declare-fun b_lambda!207423 () Bool)

(assert (=> (not b_lambda!207423) (not b!5440920)))

(declare-fun m!6461872 () Bool)

(assert (=> b!5440920 m!6461872))

(declare-fun m!6461874 () Bool)

(assert (=> b!5440921 m!6461874))

(assert (=> d!1732632 d!1733082))

(declare-fun d!1733084 () Bool)

(declare-fun c!949498 () Bool)

(assert (=> d!1733084 (= c!949498 ((_ is Nil!61947) lt!2218690))))

(declare-fun e!3370559 () (InoxSet Context!9282))

(assert (=> d!1733084 (= (content!11141 lt!2218690) e!3370559)))

(declare-fun b!5440926 () Bool)

(assert (=> b!5440926 (= e!3370559 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440927 () Bool)

(assert (=> b!5440927 (= e!3370559 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) (h!68395 lt!2218690) true) (content!11141 (t!375296 lt!2218690))))))

(assert (= (and d!1733084 c!949498) b!5440926))

(assert (= (and d!1733084 (not c!949498)) b!5440927))

(declare-fun m!6461876 () Bool)

(assert (=> b!5440927 m!6461876))

(declare-fun m!6461878 () Bool)

(assert (=> b!5440927 m!6461878))

(assert (=> b!5439902 d!1733084))

(declare-fun b!5440928 () Bool)

(declare-fun res!2316377 () Bool)

(declare-fun e!3370562 () Bool)

(assert (=> b!5440928 (=> res!2316377 e!3370562)))

(assert (=> b!5440928 (= res!2316377 (not ((_ is Concat!24102) lt!2218712)))))

(declare-fun e!3370563 () Bool)

(assert (=> b!5440928 (= e!3370563 e!3370562)))

(declare-fun c!949499 () Bool)

(declare-fun bm!390255 () Bool)

(declare-fun call!390261 () Bool)

(declare-fun c!949500 () Bool)

(assert (=> bm!390255 (= call!390261 (validRegex!6993 (ite c!949500 (reg!15586 lt!2218712) (ite c!949499 (regTwo!31027 lt!2218712) (regTwo!31026 lt!2218712)))))))

(declare-fun b!5440929 () Bool)

(declare-fun e!3370565 () Bool)

(declare-fun call!390260 () Bool)

(assert (=> b!5440929 (= e!3370565 call!390260)))

(declare-fun b!5440930 () Bool)

(declare-fun e!3370566 () Bool)

(assert (=> b!5440930 (= e!3370566 call!390260)))

(declare-fun b!5440931 () Bool)

(assert (=> b!5440931 (= e!3370562 e!3370565)))

(declare-fun res!2316378 () Bool)

(assert (=> b!5440931 (=> (not res!2316378) (not e!3370565))))

(declare-fun call!390262 () Bool)

(assert (=> b!5440931 (= res!2316378 call!390262)))

(declare-fun b!5440932 () Bool)

(declare-fun e!3370560 () Bool)

(declare-fun e!3370564 () Bool)

(assert (=> b!5440932 (= e!3370560 e!3370564)))

(assert (=> b!5440932 (= c!949500 ((_ is Star!15257) lt!2218712))))

(declare-fun d!1733086 () Bool)

(declare-fun res!2316375 () Bool)

(assert (=> d!1733086 (=> res!2316375 e!3370560)))

(assert (=> d!1733086 (= res!2316375 ((_ is ElementMatch!15257) lt!2218712))))

(assert (=> d!1733086 (= (validRegex!6993 lt!2218712) e!3370560)))

(declare-fun bm!390256 () Bool)

(assert (=> bm!390256 (= call!390262 (validRegex!6993 (ite c!949499 (regOne!31027 lt!2218712) (regOne!31026 lt!2218712))))))

(declare-fun b!5440933 () Bool)

(declare-fun e!3370561 () Bool)

(assert (=> b!5440933 (= e!3370561 call!390261)))

(declare-fun bm!390257 () Bool)

(assert (=> bm!390257 (= call!390260 call!390261)))

(declare-fun b!5440934 () Bool)

(assert (=> b!5440934 (= e!3370564 e!3370563)))

(assert (=> b!5440934 (= c!949499 ((_ is Union!15257) lt!2218712))))

(declare-fun b!5440935 () Bool)

(assert (=> b!5440935 (= e!3370564 e!3370561)))

(declare-fun res!2316374 () Bool)

(assert (=> b!5440935 (= res!2316374 (not (nullable!5426 (reg!15586 lt!2218712))))))

(assert (=> b!5440935 (=> (not res!2316374) (not e!3370561))))

(declare-fun b!5440936 () Bool)

(declare-fun res!2316376 () Bool)

(assert (=> b!5440936 (=> (not res!2316376) (not e!3370566))))

(assert (=> b!5440936 (= res!2316376 call!390262)))

(assert (=> b!5440936 (= e!3370563 e!3370566)))

(assert (= (and d!1733086 (not res!2316375)) b!5440932))

(assert (= (and b!5440932 c!949500) b!5440935))

(assert (= (and b!5440932 (not c!949500)) b!5440934))

(assert (= (and b!5440935 res!2316374) b!5440933))

(assert (= (and b!5440934 c!949499) b!5440936))

(assert (= (and b!5440934 (not c!949499)) b!5440928))

(assert (= (and b!5440936 res!2316376) b!5440930))

(assert (= (and b!5440928 (not res!2316377)) b!5440931))

(assert (= (and b!5440931 res!2316378) b!5440929))

(assert (= (or b!5440930 b!5440929) bm!390257))

(assert (= (or b!5440936 b!5440931) bm!390256))

(assert (= (or b!5440933 bm!390257) bm!390255))

(declare-fun m!6461880 () Bool)

(assert (=> bm!390255 m!6461880))

(declare-fun m!6461882 () Bool)

(assert (=> bm!390256 m!6461882))

(declare-fun m!6461884 () Bool)

(assert (=> b!5440935 m!6461884))

(assert (=> d!1732682 d!1733086))

(assert (=> d!1732682 d!1732588))

(assert (=> d!1732682 d!1732610))

(assert (=> d!1732578 d!1732812))

(declare-fun b!5440947 () Bool)

(declare-fun res!2316383 () Bool)

(declare-fun e!3370572 () Bool)

(assert (=> b!5440947 (=> (not res!2316383) (not e!3370572))))

(declare-fun lt!2218747 () List!62072)

(declare-fun size!39888 (List!62072) Int)

(assert (=> b!5440947 (= res!2316383 (= (size!39888 lt!2218747) (+ (size!39888 (_1!35759 (get!21362 lt!2218697))) (size!39888 (_2!35759 (get!21362 lt!2218697))))))))

(declare-fun b!5440948 () Bool)

(assert (=> b!5440948 (= e!3370572 (or (not (= (_2!35759 (get!21362 lt!2218697)) Nil!61948)) (= lt!2218747 (_1!35759 (get!21362 lt!2218697)))))))

(declare-fun b!5440945 () Bool)

(declare-fun e!3370571 () List!62072)

(assert (=> b!5440945 (= e!3370571 (_2!35759 (get!21362 lt!2218697)))))

(declare-fun b!5440946 () Bool)

(assert (=> b!5440946 (= e!3370571 (Cons!61948 (h!68396 (_1!35759 (get!21362 lt!2218697))) (++!13622 (t!375297 (_1!35759 (get!21362 lt!2218697))) (_2!35759 (get!21362 lt!2218697)))))))

(declare-fun d!1733088 () Bool)

(assert (=> d!1733088 e!3370572))

(declare-fun res!2316384 () Bool)

(assert (=> d!1733088 (=> (not res!2316384) (not e!3370572))))

(declare-fun content!11143 (List!62072) (InoxSet C!30784))

(assert (=> d!1733088 (= res!2316384 (= (content!11143 lt!2218747) ((_ map or) (content!11143 (_1!35759 (get!21362 lt!2218697))) (content!11143 (_2!35759 (get!21362 lt!2218697))))))))

(assert (=> d!1733088 (= lt!2218747 e!3370571)))

(declare-fun c!949503 () Bool)

(assert (=> d!1733088 (= c!949503 ((_ is Nil!61948) (_1!35759 (get!21362 lt!2218697))))))

(assert (=> d!1733088 (= (++!13622 (_1!35759 (get!21362 lt!2218697)) (_2!35759 (get!21362 lt!2218697))) lt!2218747)))

(assert (= (and d!1733088 c!949503) b!5440945))

(assert (= (and d!1733088 (not c!949503)) b!5440946))

(assert (= (and d!1733088 res!2316384) b!5440947))

(assert (= (and b!5440947 res!2316383) b!5440948))

(declare-fun m!6461886 () Bool)

(assert (=> b!5440947 m!6461886))

(declare-fun m!6461888 () Bool)

(assert (=> b!5440947 m!6461888))

(declare-fun m!6461890 () Bool)

(assert (=> b!5440947 m!6461890))

(declare-fun m!6461892 () Bool)

(assert (=> b!5440946 m!6461892))

(declare-fun m!6461894 () Bool)

(assert (=> d!1733088 m!6461894))

(declare-fun m!6461896 () Bool)

(assert (=> d!1733088 m!6461896))

(declare-fun m!6461898 () Bool)

(assert (=> d!1733088 m!6461898))

(assert (=> b!5439926 d!1733088))

(assert (=> b!5439926 d!1732832))

(declare-fun d!1733090 () Bool)

(assert (=> d!1733090 (= ($colon$colon!1524 (exprs!5141 lt!2218591) (ite (or c!949249 c!949248) (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68394 (exprs!5141 (h!68395 zl!343))))) (Cons!61946 (ite (or c!949249 c!949248) (regTwo!31026 (h!68394 (exprs!5141 (h!68395 zl!343)))) (h!68394 (exprs!5141 (h!68395 zl!343)))) (exprs!5141 lt!2218591)))))

(assert (=> bm!390065 d!1733090))

(declare-fun d!1733092 () Bool)

(declare-fun res!2316385 () Bool)

(declare-fun e!3370573 () Bool)

(assert (=> d!1733092 (=> res!2316385 e!3370573)))

(assert (=> d!1733092 (= res!2316385 ((_ is Nil!61946) (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(assert (=> d!1733092 (= (forall!14574 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))) lambda!286161) e!3370573)))

(declare-fun b!5440949 () Bool)

(declare-fun e!3370574 () Bool)

(assert (=> b!5440949 (= e!3370573 e!3370574)))

(declare-fun res!2316386 () Bool)

(assert (=> b!5440949 (=> (not res!2316386) (not e!3370574))))

(assert (=> b!5440949 (= res!2316386 (dynLambda!24381 lambda!286161 (h!68394 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun b!5440950 () Bool)

(assert (=> b!5440950 (= e!3370574 (forall!14574 (t!375295 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343))))) lambda!286161))))

(assert (= (and d!1733092 (not res!2316385)) b!5440949))

(assert (= (and b!5440949 res!2316386) b!5440950))

(declare-fun b_lambda!207425 () Bool)

(assert (=> (not b_lambda!207425) (not b!5440949)))

(declare-fun m!6461900 () Bool)

(assert (=> b!5440949 m!6461900))

(declare-fun m!6461902 () Bool)

(assert (=> b!5440950 m!6461902))

(assert (=> b!5439983 d!1733092))

(assert (=> b!5439535 d!1732982))

(assert (=> b!5439535 d!1732890))

(assert (=> b!5439736 d!1732612))

(declare-fun bs!1255685 () Bool)

(declare-fun d!1733094 () Bool)

(assert (= bs!1255685 (and d!1733094 d!1732588)))

(declare-fun lambda!286291 () Int)

(assert (=> bs!1255685 (= lambda!286291 lambda!286213)))

(declare-fun bs!1255686 () Bool)

(assert (= bs!1255686 (and d!1733094 d!1732610)))

(assert (=> bs!1255686 (= lambda!286291 lambda!286216)))

(declare-fun bs!1255687 () Bool)

(assert (= bs!1255687 (and d!1733094 d!1732632)))

(assert (=> bs!1255687 (= lambda!286291 lambda!286223)))

(declare-fun bs!1255688 () Bool)

(assert (= bs!1255688 (and d!1733094 d!1732988)))

(assert (=> bs!1255688 (= lambda!286291 lambda!286282)))

(declare-fun bs!1255689 () Bool)

(assert (= bs!1255689 (and d!1733094 d!1732986)))

(assert (=> bs!1255689 (= lambda!286291 lambda!286281)))

(declare-fun bs!1255690 () Bool)

(assert (= bs!1255690 (and d!1733094 d!1732612)))

(assert (=> bs!1255690 (= lambda!286291 lambda!286219)))

(declare-fun bs!1255691 () Bool)

(assert (= bs!1255691 (and d!1733094 d!1732818)))

(assert (=> bs!1255691 (= lambda!286291 lambda!286254)))

(declare-fun bs!1255692 () Bool)

(assert (= bs!1255692 (and d!1733094 d!1733064)))

(assert (=> bs!1255692 (= lambda!286291 lambda!286288)))

(declare-fun bs!1255693 () Bool)

(assert (= bs!1255693 (and d!1733094 d!1732624)))

(assert (=> bs!1255693 (= lambda!286291 lambda!286222)))

(declare-fun bs!1255694 () Bool)

(assert (= bs!1255694 (and d!1733094 b!5439215)))

(assert (=> bs!1255694 (= lambda!286291 lambda!286161)))

(declare-fun lt!2218748 () List!62070)

(assert (=> d!1733094 (forall!14574 lt!2218748 lambda!286291)))

(declare-fun e!3370575 () List!62070)

(assert (=> d!1733094 (= lt!2218748 e!3370575)))

(declare-fun c!949504 () Bool)

(assert (=> d!1733094 (= c!949504 ((_ is Cons!61947) (t!375296 zl!343)))))

(assert (=> d!1733094 (= (unfocusZipperList!699 (t!375296 zl!343)) lt!2218748)))

(declare-fun b!5440951 () Bool)

(assert (=> b!5440951 (= e!3370575 (Cons!61946 (generalisedConcat!926 (exprs!5141 (h!68395 (t!375296 zl!343)))) (unfocusZipperList!699 (t!375296 (t!375296 zl!343)))))))

(declare-fun b!5440952 () Bool)

(assert (=> b!5440952 (= e!3370575 Nil!61946)))

(assert (= (and d!1733094 c!949504) b!5440951))

(assert (= (and d!1733094 (not c!949504)) b!5440952))

(declare-fun m!6461904 () Bool)

(assert (=> d!1733094 m!6461904))

(declare-fun m!6461906 () Bool)

(assert (=> b!5440951 m!6461906))

(declare-fun m!6461908 () Bool)

(assert (=> b!5440951 m!6461908))

(assert (=> b!5439736 d!1733094))

(declare-fun d!1733096 () Bool)

(assert (=> d!1733096 (= (nullable!5426 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (nullableFct!1625 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun bs!1255695 () Bool)

(assert (= bs!1255695 d!1733096))

(declare-fun m!6461910 () Bool)

(assert (=> bs!1255695 m!6461910))

(assert (=> b!5439857 d!1733096))

(declare-fun b!5440953 () Bool)

(declare-fun e!3370578 () Bool)

(declare-fun lt!2218749 () Bool)

(assert (=> b!5440953 (= e!3370578 (not lt!2218749))))

(declare-fun b!5440954 () Bool)

(declare-fun res!2316390 () Bool)

(declare-fun e!3370582 () Bool)

(assert (=> b!5440954 (=> res!2316390 e!3370582)))

(assert (=> b!5440954 (= res!2316390 (not ((_ is ElementMatch!15257) (regTwo!31026 r!7292))))))

(assert (=> b!5440954 (= e!3370578 e!3370582)))

(declare-fun b!5440955 () Bool)

(declare-fun res!2316393 () Bool)

(declare-fun e!3370576 () Bool)

(assert (=> b!5440955 (=> res!2316393 e!3370576)))

(assert (=> b!5440955 (= res!2316393 (not (isEmpty!33933 (tail!10762 (_2!35759 (get!21362 lt!2218697))))))))

(declare-fun b!5440956 () Bool)

(declare-fun e!3370580 () Bool)

(assert (=> b!5440956 (= e!3370580 (nullable!5426 (regTwo!31026 r!7292)))))

(declare-fun bm!390258 () Bool)

(declare-fun call!390263 () Bool)

(assert (=> bm!390258 (= call!390263 (isEmpty!33933 (_2!35759 (get!21362 lt!2218697))))))

(declare-fun b!5440957 () Bool)

(declare-fun res!2316387 () Bool)

(assert (=> b!5440957 (=> res!2316387 e!3370582)))

(declare-fun e!3370577 () Bool)

(assert (=> b!5440957 (= res!2316387 e!3370577)))

(declare-fun res!2316388 () Bool)

(assert (=> b!5440957 (=> (not res!2316388) (not e!3370577))))

(assert (=> b!5440957 (= res!2316388 lt!2218749)))

(declare-fun b!5440958 () Bool)

(declare-fun e!3370581 () Bool)

(assert (=> b!5440958 (= e!3370581 e!3370578)))

(declare-fun c!949507 () Bool)

(assert (=> b!5440958 (= c!949507 ((_ is EmptyLang!15257) (regTwo!31026 r!7292)))))

(declare-fun b!5440959 () Bool)

(declare-fun e!3370579 () Bool)

(assert (=> b!5440959 (= e!3370579 e!3370576)))

(declare-fun res!2316389 () Bool)

(assert (=> b!5440959 (=> res!2316389 e!3370576)))

(assert (=> b!5440959 (= res!2316389 call!390263)))

(declare-fun b!5440960 () Bool)

(assert (=> b!5440960 (= e!3370576 (not (= (head!11665 (_2!35759 (get!21362 lt!2218697))) (c!949049 (regTwo!31026 r!7292)))))))

(declare-fun b!5440961 () Bool)

(assert (=> b!5440961 (= e!3370580 (matchR!7442 (derivativeStep!4295 (regTwo!31026 r!7292) (head!11665 (_2!35759 (get!21362 lt!2218697)))) (tail!10762 (_2!35759 (get!21362 lt!2218697)))))))

(declare-fun b!5440962 () Bool)

(assert (=> b!5440962 (= e!3370582 e!3370579)))

(declare-fun res!2316394 () Bool)

(assert (=> b!5440962 (=> (not res!2316394) (not e!3370579))))

(assert (=> b!5440962 (= res!2316394 (not lt!2218749))))

(declare-fun b!5440963 () Bool)

(assert (=> b!5440963 (= e!3370577 (= (head!11665 (_2!35759 (get!21362 lt!2218697))) (c!949049 (regTwo!31026 r!7292))))))

(declare-fun b!5440965 () Bool)

(assert (=> b!5440965 (= e!3370581 (= lt!2218749 call!390263))))

(declare-fun b!5440966 () Bool)

(declare-fun res!2316391 () Bool)

(assert (=> b!5440966 (=> (not res!2316391) (not e!3370577))))

(assert (=> b!5440966 (= res!2316391 (not call!390263))))

(declare-fun d!1733098 () Bool)

(assert (=> d!1733098 e!3370581))

(declare-fun c!949506 () Bool)

(assert (=> d!1733098 (= c!949506 ((_ is EmptyExpr!15257) (regTwo!31026 r!7292)))))

(assert (=> d!1733098 (= lt!2218749 e!3370580)))

(declare-fun c!949505 () Bool)

(assert (=> d!1733098 (= c!949505 (isEmpty!33933 (_2!35759 (get!21362 lt!2218697))))))

(assert (=> d!1733098 (validRegex!6993 (regTwo!31026 r!7292))))

(assert (=> d!1733098 (= (matchR!7442 (regTwo!31026 r!7292) (_2!35759 (get!21362 lt!2218697))) lt!2218749)))

(declare-fun b!5440964 () Bool)

(declare-fun res!2316392 () Bool)

(assert (=> b!5440964 (=> (not res!2316392) (not e!3370577))))

(assert (=> b!5440964 (= res!2316392 (isEmpty!33933 (tail!10762 (_2!35759 (get!21362 lt!2218697)))))))

(assert (= (and d!1733098 c!949505) b!5440956))

(assert (= (and d!1733098 (not c!949505)) b!5440961))

(assert (= (and d!1733098 c!949506) b!5440965))

(assert (= (and d!1733098 (not c!949506)) b!5440958))

(assert (= (and b!5440958 c!949507) b!5440953))

(assert (= (and b!5440958 (not c!949507)) b!5440954))

(assert (= (and b!5440954 (not res!2316390)) b!5440957))

(assert (= (and b!5440957 res!2316388) b!5440966))

(assert (= (and b!5440966 res!2316391) b!5440964))

(assert (= (and b!5440964 res!2316392) b!5440963))

(assert (= (and b!5440957 (not res!2316387)) b!5440962))

(assert (= (and b!5440962 res!2316394) b!5440959))

(assert (= (and b!5440959 (not res!2316389)) b!5440955))

(assert (= (and b!5440955 (not res!2316393)) b!5440960))

(assert (= (or b!5440965 b!5440966 b!5440959) bm!390258))

(assert (=> b!5440956 m!6460806))

(declare-fun m!6461912 () Bool)

(assert (=> b!5440955 m!6461912))

(assert (=> b!5440955 m!6461912))

(declare-fun m!6461914 () Bool)

(assert (=> b!5440955 m!6461914))

(assert (=> b!5440964 m!6461912))

(assert (=> b!5440964 m!6461912))

(assert (=> b!5440964 m!6461914))

(declare-fun m!6461916 () Bool)

(assert (=> bm!390258 m!6461916))

(declare-fun m!6461918 () Bool)

(assert (=> b!5440963 m!6461918))

(assert (=> b!5440960 m!6461918))

(assert (=> d!1733098 m!6461916))

(assert (=> d!1733098 m!6460810))

(assert (=> b!5440961 m!6461918))

(assert (=> b!5440961 m!6461918))

(declare-fun m!6461920 () Bool)

(assert (=> b!5440961 m!6461920))

(assert (=> b!5440961 m!6461912))

(assert (=> b!5440961 m!6461920))

(assert (=> b!5440961 m!6461912))

(declare-fun m!6461922 () Bool)

(assert (=> b!5440961 m!6461922))

(assert (=> b!5439922 d!1733098))

(assert (=> b!5439922 d!1732832))

(declare-fun bm!390259 () Bool)

(declare-fun c!949510 () Bool)

(declare-fun call!390265 () List!62070)

(declare-fun c!949511 () Bool)

(assert (=> bm!390259 (= call!390265 ($colon$colon!1524 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))) (ite (or c!949511 c!949510) (regTwo!31026 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))))

(declare-fun d!1733100 () Bool)

(declare-fun c!949509 () Bool)

(assert (=> d!1733100 (= c!949509 (and ((_ is ElementMatch!15257) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (= (c!949049 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326))))))

(declare-fun e!3370587 () (InoxSet Context!9282))

(assert (=> d!1733100 (= (derivationStepZipperDown!705 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (h!68396 s!2326)) e!3370587)))

(declare-fun b!5440967 () Bool)

(declare-fun c!949512 () Bool)

(assert (=> b!5440967 (= c!949512 ((_ is Star!15257) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun e!3370586 () (InoxSet Context!9282))

(declare-fun e!3370583 () (InoxSet Context!9282))

(assert (=> b!5440967 (= e!3370586 e!3370583)))

(declare-fun b!5440968 () Bool)

(declare-fun e!3370584 () (InoxSet Context!9282))

(assert (=> b!5440968 (= e!3370584 e!3370586)))

(assert (=> b!5440968 (= c!949510 ((_ is Concat!24102) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun bm!390260 () Bool)

(declare-fun call!390268 () (InoxSet Context!9282))

(declare-fun call!390264 () (InoxSet Context!9282))

(assert (=> bm!390260 (= call!390268 call!390264)))

(declare-fun b!5440969 () Bool)

(declare-fun call!390269 () (InoxSet Context!9282))

(assert (=> b!5440969 (= e!3370583 call!390269)))

(declare-fun bm!390261 () Bool)

(declare-fun c!949508 () Bool)

(declare-fun call!390267 () List!62070)

(assert (=> bm!390261 (= call!390264 (derivationStepZipperDown!705 (ite c!949508 (regOne!31027 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (ite c!949511 (regTwo!31026 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (ite c!949510 (regOne!31026 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (reg!15586 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))) (ite (or c!949508 c!949511) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (Context!9283 call!390267)) (h!68396 s!2326)))))

(declare-fun b!5440970 () Bool)

(assert (=> b!5440970 (= e!3370587 (store ((as const (Array Context!9282 Bool)) false) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) true))))

(declare-fun b!5440971 () Bool)

(assert (=> b!5440971 (= e!3370583 ((as const (Array Context!9282 Bool)) false))))

(declare-fun b!5440972 () Bool)

(declare-fun e!3370588 () (InoxSet Context!9282))

(assert (=> b!5440972 (= e!3370587 e!3370588)))

(assert (=> b!5440972 (= c!949508 ((_ is Union!15257) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun bm!390262 () Bool)

(declare-fun call!390266 () (InoxSet Context!9282))

(assert (=> bm!390262 (= call!390266 (derivationStepZipperDown!705 (ite c!949508 (regTwo!31027 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (regOne!31026 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))) (ite c!949508 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))) (Context!9283 call!390265)) (h!68396 s!2326)))))

(declare-fun bm!390263 () Bool)

(assert (=> bm!390263 (= call!390269 call!390268)))

(declare-fun b!5440973 () Bool)

(declare-fun e!3370585 () Bool)

(assert (=> b!5440973 (= c!949511 e!3370585)))

(declare-fun res!2316395 () Bool)

(assert (=> b!5440973 (=> (not res!2316395) (not e!3370585))))

(assert (=> b!5440973 (= res!2316395 ((_ is Concat!24102) (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(assert (=> b!5440973 (= e!3370588 e!3370584)))

(declare-fun bm!390264 () Bool)

(assert (=> bm!390264 (= call!390267 call!390265)))

(declare-fun b!5440974 () Bool)

(assert (=> b!5440974 (= e!3370588 ((_ map or) call!390264 call!390266))))

(declare-fun b!5440975 () Bool)

(assert (=> b!5440975 (= e!3370584 ((_ map or) call!390266 call!390268))))

(declare-fun b!5440976 () Bool)

(assert (=> b!5440976 (= e!3370586 call!390269)))

(declare-fun b!5440977 () Bool)

(assert (=> b!5440977 (= e!3370585 (nullable!5426 (regOne!31026 (h!68394 (exprs!5141 (Context!9283 (Cons!61946 (h!68394 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))))))))

(assert (= (and d!1733100 c!949509) b!5440970))

(assert (= (and d!1733100 (not c!949509)) b!5440972))

(assert (= (and b!5440972 c!949508) b!5440974))

(assert (= (and b!5440972 (not c!949508)) b!5440973))

(assert (= (and b!5440973 res!2316395) b!5440977))

(assert (= (and b!5440973 c!949511) b!5440975))

(assert (= (and b!5440973 (not c!949511)) b!5440968))

(assert (= (and b!5440968 c!949510) b!5440976))

(assert (= (and b!5440968 (not c!949510)) b!5440967))

(assert (= (and b!5440967 c!949512) b!5440969))

(assert (= (and b!5440967 (not c!949512)) b!5440971))

(assert (= (or b!5440976 b!5440969) bm!390264))

(assert (= (or b!5440976 b!5440969) bm!390263))

(assert (= (or b!5440975 bm!390264) bm!390259))

(assert (= (or b!5440975 bm!390263) bm!390260))

(assert (= (or b!5440974 b!5440975) bm!390262))

(assert (= (or b!5440974 bm!390260) bm!390261))

(declare-fun m!6461924 () Bool)

(assert (=> bm!390261 m!6461924))

(declare-fun m!6461926 () Bool)

(assert (=> bm!390262 m!6461926))

(declare-fun m!6461928 () Bool)

(assert (=> b!5440970 m!6461928))

(declare-fun m!6461930 () Bool)

(assert (=> bm!390259 m!6461930))

(declare-fun m!6461932 () Bool)

(assert (=> b!5440977 m!6461932))

(assert (=> bm!390051 d!1733100))

(assert (=> d!1732656 d!1732650))

(assert (=> d!1732656 d!1732824))

(assert (=> d!1732656 d!1732660))

(declare-fun d!1733102 () Bool)

(assert (=> d!1733102 (= (Exists!2438 lambda!286226) (choose!41267 lambda!286226))))

(declare-fun bs!1255696 () Bool)

(assert (= bs!1255696 d!1733102))

(declare-fun m!6461934 () Bool)

(assert (=> bs!1255696 m!6461934))

(assert (=> d!1732656 d!1733102))

(declare-fun bs!1255697 () Bool)

(declare-fun d!1733104 () Bool)

(assert (= bs!1255697 (and d!1733104 b!5439522)))

(declare-fun lambda!286294 () Int)

(assert (=> bs!1255697 (not (= lambda!286294 lambda!286192))))

(declare-fun bs!1255698 () Bool)

(assert (= bs!1255698 (and d!1733104 b!5440909)))

(assert (=> bs!1255698 (not (= lambda!286294 lambda!286289))))

(declare-fun bs!1255699 () Bool)

(assert (= bs!1255699 (and d!1733104 d!1732658)))

(assert (=> bs!1255699 (= lambda!286294 lambda!286231)))

(declare-fun bs!1255700 () Bool)

(assert (= bs!1255700 (and d!1733104 b!5440463)))

(assert (=> bs!1255700 (not (= lambda!286294 lambda!286260))))

(declare-fun bs!1255701 () Bool)

(assert (= bs!1255701 (and d!1733104 b!5439206)))

(assert (=> bs!1255701 (= lambda!286294 lambda!286158)))

(declare-fun bs!1255702 () Bool)

(assert (= bs!1255702 (and d!1733104 b!5440411)))

(assert (=> bs!1255702 (not (= lambda!286294 lambda!286255))))

(declare-fun bs!1255703 () Bool)

(assert (= bs!1255703 (and d!1733104 b!5439559)))

(assert (=> bs!1255703 (not (= lambda!286294 lambda!286201))))

(declare-fun bs!1255704 () Bool)

(assert (= bs!1255704 (and d!1733104 b!5439367)))

(assert (=> bs!1255704 (not (= lambda!286294 lambda!286184))))

(declare-fun bs!1255705 () Bool)

(assert (= bs!1255705 (and d!1733104 b!5439371)))

(assert (=> bs!1255705 (not (= lambda!286294 lambda!286185))))

(declare-fun bs!1255706 () Bool)

(assert (= bs!1255706 (and d!1733104 b!5440459)))

(assert (=> bs!1255706 (not (= lambda!286294 lambda!286258))))

(declare-fun bs!1255707 () Bool)

(assert (= bs!1255707 (and d!1733104 d!1732656)))

(assert (=> bs!1255707 (= lambda!286294 lambda!286226)))

(declare-fun bs!1255708 () Bool)

(assert (= bs!1255708 (and d!1733104 b!5439555)))

(assert (=> bs!1255708 (not (= lambda!286294 lambda!286198))))

(declare-fun bs!1255709 () Bool)

(assert (= bs!1255709 (and d!1733104 b!5439526)))

(assert (=> bs!1255709 (not (= lambda!286294 lambda!286193))))

(declare-fun bs!1255710 () Bool)

(assert (= bs!1255710 (and d!1733104 b!5440913)))

(assert (=> bs!1255710 (not (= lambda!286294 lambda!286290))))

(declare-fun bs!1255711 () Bool)

(assert (= bs!1255711 (and d!1733104 b!5440415)))

(assert (=> bs!1255711 (not (= lambda!286294 lambda!286257))))

(assert (=> bs!1255699 (not (= lambda!286294 lambda!286232))))

(assert (=> bs!1255701 (not (= lambda!286294 lambda!286159))))

(assert (=> d!1733104 true))

(assert (=> d!1733104 true))

(assert (=> d!1733104 true))

(assert (=> d!1733104 (= (isDefined!12071 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) Nil!61948 s!2326 s!2326)) (Exists!2438 lambda!286294))))

(assert (=> d!1733104 true))

(declare-fun _$89!1568 () Unit!154570)

(assert (=> d!1733104 (= (choose!41268 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326) _$89!1568)))

(declare-fun bs!1255712 () Bool)

(assert (= bs!1255712 d!1733104))

(assert (=> bs!1255712 m!6460572))

(assert (=> bs!1255712 m!6460572))

(assert (=> bs!1255712 m!6460574))

(declare-fun m!6461936 () Bool)

(assert (=> bs!1255712 m!6461936))

(assert (=> d!1732656 d!1733104))

(assert (=> bs!1255211 d!1732642))

(assert (=> b!5439477 d!1732982))

(assert (=> b!5439477 d!1732890))

(declare-fun d!1733106 () Bool)

(declare-fun c!949513 () Bool)

(assert (=> d!1733106 (= c!949513 (isEmpty!33933 (tail!10762 s!2326)))))

(declare-fun e!3370591 () Bool)

(assert (=> d!1733106 (= (matchZipper!1501 (derivationStepZipper!1486 z!1189 (head!11665 s!2326)) (tail!10762 s!2326)) e!3370591)))

(declare-fun b!5440982 () Bool)

(assert (=> b!5440982 (= e!3370591 (nullableZipper!1474 (derivationStepZipper!1486 z!1189 (head!11665 s!2326))))))

(declare-fun b!5440983 () Bool)

(assert (=> b!5440983 (= e!3370591 (matchZipper!1501 (derivationStepZipper!1486 (derivationStepZipper!1486 z!1189 (head!11665 s!2326)) (head!11665 (tail!10762 s!2326))) (tail!10762 (tail!10762 s!2326))))))

(assert (= (and d!1733106 c!949513) b!5440982))

(assert (= (and d!1733106 (not c!949513)) b!5440983))

(assert (=> d!1733106 m!6460720))

(assert (=> d!1733106 m!6460722))

(assert (=> b!5440982 m!6461072))

(declare-fun m!6461938 () Bool)

(assert (=> b!5440982 m!6461938))

(assert (=> b!5440983 m!6460720))

(assert (=> b!5440983 m!6461528))

(assert (=> b!5440983 m!6461072))

(assert (=> b!5440983 m!6461528))

(declare-fun m!6461940 () Bool)

(assert (=> b!5440983 m!6461940))

(assert (=> b!5440983 m!6460720))

(assert (=> b!5440983 m!6461524))

(assert (=> b!5440983 m!6461940))

(assert (=> b!5440983 m!6461524))

(declare-fun m!6461942 () Bool)

(assert (=> b!5440983 m!6461942))

(assert (=> b!5439975 d!1733106))

(declare-fun bs!1255713 () Bool)

(declare-fun d!1733108 () Bool)

(assert (= bs!1255713 (and d!1733108 d!1732996)))

(declare-fun lambda!286295 () Int)

(assert (=> bs!1255713 (= (= (head!11665 s!2326) (head!11665 (t!375297 s!2326))) (= lambda!286295 lambda!286285))))

(declare-fun bs!1255714 () Bool)

(assert (= bs!1255714 (and d!1733108 d!1732978)))

(assert (=> bs!1255714 (= (= (head!11665 s!2326) (head!11665 (t!375297 s!2326))) (= lambda!286295 lambda!286279))))

(declare-fun bs!1255715 () Bool)

(assert (= bs!1255715 (and d!1733108 d!1732552)))

(assert (=> bs!1255715 (= (= (head!11665 s!2326) (h!68396 s!2326)) (= lambda!286295 lambda!286189))))

(declare-fun bs!1255716 () Bool)

(assert (= bs!1255716 (and d!1733108 d!1732670)))

(assert (=> bs!1255716 (= (= (head!11665 s!2326) (h!68396 s!2326)) (= lambda!286295 lambda!286233))))

(declare-fun bs!1255717 () Bool)

(assert (= bs!1255717 (and d!1733108 b!5439217)))

(assert (=> bs!1255717 (= (= (head!11665 s!2326) (h!68396 s!2326)) (= lambda!286295 lambda!286160))))

(declare-fun bs!1255718 () Bool)

(assert (= bs!1255718 (and d!1733108 d!1732920)))

(assert (=> bs!1255718 (= (= (head!11665 s!2326) (head!11665 (t!375297 s!2326))) (= lambda!286295 lambda!286272))))

(assert (=> d!1733108 true))

(assert (=> d!1733108 (= (derivationStepZipper!1486 z!1189 (head!11665 s!2326)) (flatMap!984 z!1189 lambda!286295))))

(declare-fun bs!1255719 () Bool)

(assert (= bs!1255719 d!1733108))

(declare-fun m!6461944 () Bool)

(assert (=> bs!1255719 m!6461944))

(assert (=> b!5439975 d!1733108))

(assert (=> b!5439975 d!1732888))

(assert (=> b!5439975 d!1732890))

(declare-fun d!1733110 () Bool)

(assert (=> d!1733110 (= (nullable!5426 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))) (nullableFct!1625 (regOne!31026 (h!68394 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun bs!1255720 () Bool)

(assert (= bs!1255720 d!1733110))

(declare-fun m!6461946 () Bool)

(assert (=> bs!1255720 m!6461946))

(assert (=> b!5439899 d!1733110))

(declare-fun d!1733112 () Bool)

(assert (=> d!1733112 (= (isDefined!12071 lt!2218697) (not (isEmpty!33935 lt!2218697)))))

(declare-fun bs!1255721 () Bool)

(assert (= bs!1255721 d!1733112))

(declare-fun m!6461948 () Bool)

(assert (=> bs!1255721 m!6461948))

(assert (=> d!1732650 d!1733112))

(declare-fun b!5440984 () Bool)

(declare-fun e!3370594 () Bool)

(declare-fun lt!2218750 () Bool)

(assert (=> b!5440984 (= e!3370594 (not lt!2218750))))

(declare-fun b!5440985 () Bool)

(declare-fun res!2316403 () Bool)

(declare-fun e!3370598 () Bool)

(assert (=> b!5440985 (=> res!2316403 e!3370598)))

(assert (=> b!5440985 (= res!2316403 (not ((_ is ElementMatch!15257) (regOne!31026 r!7292))))))

(assert (=> b!5440985 (= e!3370594 e!3370598)))

(declare-fun b!5440986 () Bool)

(declare-fun res!2316406 () Bool)

(declare-fun e!3370592 () Bool)

(assert (=> b!5440986 (=> res!2316406 e!3370592)))

(assert (=> b!5440986 (= res!2316406 (not (isEmpty!33933 (tail!10762 Nil!61948))))))

(declare-fun b!5440987 () Bool)

(declare-fun e!3370596 () Bool)

(assert (=> b!5440987 (= e!3370596 (nullable!5426 (regOne!31026 r!7292)))))

(declare-fun bm!390265 () Bool)

(declare-fun call!390270 () Bool)

(assert (=> bm!390265 (= call!390270 (isEmpty!33933 Nil!61948))))

(declare-fun b!5440988 () Bool)

(declare-fun res!2316400 () Bool)

(assert (=> b!5440988 (=> res!2316400 e!3370598)))

(declare-fun e!3370593 () Bool)

(assert (=> b!5440988 (= res!2316400 e!3370593)))

(declare-fun res!2316401 () Bool)

(assert (=> b!5440988 (=> (not res!2316401) (not e!3370593))))

(assert (=> b!5440988 (= res!2316401 lt!2218750)))

(declare-fun b!5440989 () Bool)

(declare-fun e!3370597 () Bool)

(assert (=> b!5440989 (= e!3370597 e!3370594)))

(declare-fun c!949516 () Bool)

(assert (=> b!5440989 (= c!949516 ((_ is EmptyLang!15257) (regOne!31026 r!7292)))))

(declare-fun b!5440990 () Bool)

(declare-fun e!3370595 () Bool)

(assert (=> b!5440990 (= e!3370595 e!3370592)))

(declare-fun res!2316402 () Bool)

(assert (=> b!5440990 (=> res!2316402 e!3370592)))

(assert (=> b!5440990 (= res!2316402 call!390270)))

(declare-fun b!5440991 () Bool)

(assert (=> b!5440991 (= e!3370592 (not (= (head!11665 Nil!61948) (c!949049 (regOne!31026 r!7292)))))))

(declare-fun b!5440992 () Bool)

(assert (=> b!5440992 (= e!3370596 (matchR!7442 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 Nil!61948)) (tail!10762 Nil!61948)))))

(declare-fun b!5440993 () Bool)

(assert (=> b!5440993 (= e!3370598 e!3370595)))

(declare-fun res!2316407 () Bool)

(assert (=> b!5440993 (=> (not res!2316407) (not e!3370595))))

(assert (=> b!5440993 (= res!2316407 (not lt!2218750))))

(declare-fun b!5440994 () Bool)

(assert (=> b!5440994 (= e!3370593 (= (head!11665 Nil!61948) (c!949049 (regOne!31026 r!7292))))))

(declare-fun b!5440996 () Bool)

(assert (=> b!5440996 (= e!3370597 (= lt!2218750 call!390270))))

(declare-fun b!5440997 () Bool)

(declare-fun res!2316404 () Bool)

(assert (=> b!5440997 (=> (not res!2316404) (not e!3370593))))

(assert (=> b!5440997 (= res!2316404 (not call!390270))))

(declare-fun d!1733114 () Bool)

(assert (=> d!1733114 e!3370597))

(declare-fun c!949515 () Bool)

(assert (=> d!1733114 (= c!949515 ((_ is EmptyExpr!15257) (regOne!31026 r!7292)))))

(assert (=> d!1733114 (= lt!2218750 e!3370596)))

(declare-fun c!949514 () Bool)

(assert (=> d!1733114 (= c!949514 (isEmpty!33933 Nil!61948))))

(assert (=> d!1733114 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1733114 (= (matchR!7442 (regOne!31026 r!7292) Nil!61948) lt!2218750)))

(declare-fun b!5440995 () Bool)

(declare-fun res!2316405 () Bool)

(assert (=> b!5440995 (=> (not res!2316405) (not e!3370593))))

(assert (=> b!5440995 (= res!2316405 (isEmpty!33933 (tail!10762 Nil!61948)))))

(assert (= (and d!1733114 c!949514) b!5440987))

(assert (= (and d!1733114 (not c!949514)) b!5440992))

(assert (= (and d!1733114 c!949515) b!5440996))

(assert (= (and d!1733114 (not c!949515)) b!5440989))

(assert (= (and b!5440989 c!949516) b!5440984))

(assert (= (and b!5440989 (not c!949516)) b!5440985))

(assert (= (and b!5440985 (not res!2316403)) b!5440988))

(assert (= (and b!5440988 res!2316401) b!5440997))

(assert (= (and b!5440997 res!2316404) b!5440995))

(assert (= (and b!5440995 res!2316405) b!5440994))

(assert (= (and b!5440988 (not res!2316400)) b!5440993))

(assert (= (and b!5440993 res!2316407) b!5440990))

(assert (= (and b!5440990 (not res!2316402)) b!5440986))

(assert (= (and b!5440986 (not res!2316406)) b!5440991))

(assert (= (or b!5440996 b!5440997 b!5440990) bm!390265))

(assert (=> b!5440987 m!6460774))

(declare-fun m!6461950 () Bool)

(assert (=> b!5440986 m!6461950))

(assert (=> b!5440986 m!6461950))

(declare-fun m!6461952 () Bool)

(assert (=> b!5440986 m!6461952))

(assert (=> b!5440995 m!6461950))

(assert (=> b!5440995 m!6461950))

(assert (=> b!5440995 m!6461952))

(declare-fun m!6461954 () Bool)

(assert (=> bm!390265 m!6461954))

(declare-fun m!6461956 () Bool)

(assert (=> b!5440994 m!6461956))

(assert (=> b!5440991 m!6461956))

(assert (=> d!1733114 m!6461954))

(assert (=> d!1733114 m!6460772))

(assert (=> b!5440992 m!6461956))

(assert (=> b!5440992 m!6461956))

(declare-fun m!6461958 () Bool)

(assert (=> b!5440992 m!6461958))

(assert (=> b!5440992 m!6461950))

(assert (=> b!5440992 m!6461958))

(assert (=> b!5440992 m!6461950))

(declare-fun m!6461960 () Bool)

(assert (=> b!5440992 m!6461960))

(assert (=> d!1732650 d!1733114))

(assert (=> d!1732650 d!1732824))

(declare-fun b!5440998 () Bool)

(declare-fun e!3370601 () Bool)

(assert (=> b!5440998 (= e!3370601 (nullable!5426 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343))))))))))

(declare-fun b!5440999 () Bool)

(declare-fun call!390271 () (InoxSet Context!9282))

(declare-fun e!3370599 () (InoxSet Context!9282))

(assert (=> b!5440999 (= e!3370599 ((_ map or) call!390271 (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343))))))) (h!68396 s!2326))))))

(declare-fun b!5441000 () Bool)

(declare-fun e!3370600 () (InoxSet Context!9282))

(assert (=> b!5441000 (= e!3370599 e!3370600)))

(declare-fun c!949517 () Bool)

(assert (=> b!5441000 (= c!949517 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun d!1733116 () Bool)

(declare-fun c!949518 () Bool)

(assert (=> d!1733116 (= c!949518 e!3370601)))

(declare-fun res!2316408 () Bool)

(assert (=> d!1733116 (=> (not res!2316408) (not e!3370601))))

(assert (=> d!1733116 (= res!2316408 ((_ is Cons!61946) (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(assert (=> d!1733116 (= (derivationStepZipperUp!629 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))) (h!68396 s!2326)) e!3370599)))

(declare-fun b!5441001 () Bool)

(assert (=> b!5441001 (= e!3370600 ((as const (Array Context!9282 Bool)) false))))

(declare-fun bm!390266 () Bool)

(assert (=> bm!390266 (= call!390271 (derivationStepZipperDown!705 (h!68394 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343)))))) (Context!9283 (t!375295 (exprs!5141 (Context!9283 (t!375295 (exprs!5141 (h!68395 zl!343))))))) (h!68396 s!2326)))))

(declare-fun b!5441002 () Bool)

(assert (=> b!5441002 (= e!3370600 call!390271)))

(assert (= (and d!1733116 res!2316408) b!5440998))

(assert (= (and d!1733116 c!949518) b!5440999))

(assert (= (and d!1733116 (not c!949518)) b!5441000))

(assert (= (and b!5441000 c!949517) b!5441002))

(assert (= (and b!5441000 (not c!949517)) b!5441001))

(assert (= (or b!5440999 b!5441002) bm!390266))

(declare-fun m!6461962 () Bool)

(assert (=> b!5440998 m!6461962))

(declare-fun m!6461964 () Bool)

(assert (=> b!5440999 m!6461964))

(declare-fun m!6461966 () Bool)

(assert (=> bm!390266 m!6461966))

(assert (=> b!5439863 d!1733116))

(declare-fun d!1733118 () Bool)

(assert (=> d!1733118 true))

(assert (=> d!1733118 true))

(declare-fun res!2316411 () Bool)

(assert (=> d!1733118 (= (choose!41267 lambda!286159) res!2316411)))

(assert (=> d!1732654 d!1733118))

(declare-fun d!1733120 () Bool)

(assert (=> d!1733120 (= (head!11666 (unfocusZipperList!699 zl!343)) (h!68394 (unfocusZipperList!699 zl!343)))))

(assert (=> b!5439704 d!1733120))

(declare-fun d!1733122 () Bool)

(assert (=> d!1733122 (= (isEmpty!33930 (tail!10763 (exprs!5141 (h!68395 zl!343)))) ((_ is Nil!61946) (tail!10763 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> b!5439839 d!1733122))

(declare-fun d!1733124 () Bool)

(assert (=> d!1733124 (= (tail!10763 (exprs!5141 (h!68395 zl!343))) (t!375295 (exprs!5141 (h!68395 zl!343))))))

(assert (=> b!5439839 d!1733124))

(declare-fun b!5441003 () Bool)

(declare-fun res!2316415 () Bool)

(declare-fun e!3370604 () Bool)

(assert (=> b!5441003 (=> res!2316415 e!3370604)))

(assert (=> b!5441003 (= res!2316415 (not ((_ is Concat!24102) (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun e!3370605 () Bool)

(assert (=> b!5441003 (= e!3370605 e!3370604)))

(declare-fun call!390273 () Bool)

(declare-fun bm!390267 () Bool)

(declare-fun c!949520 () Bool)

(declare-fun c!949519 () Bool)

(assert (=> bm!390267 (= call!390273 (validRegex!6993 (ite c!949520 (reg!15586 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))) (ite c!949519 (regTwo!31027 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))) (regTwo!31026 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))))

(declare-fun b!5441004 () Bool)

(declare-fun e!3370607 () Bool)

(declare-fun call!390272 () Bool)

(assert (=> b!5441004 (= e!3370607 call!390272)))

(declare-fun b!5441005 () Bool)

(declare-fun e!3370608 () Bool)

(assert (=> b!5441005 (= e!3370608 call!390272)))

(declare-fun b!5441006 () Bool)

(assert (=> b!5441006 (= e!3370604 e!3370607)))

(declare-fun res!2316416 () Bool)

(assert (=> b!5441006 (=> (not res!2316416) (not e!3370607))))

(declare-fun call!390274 () Bool)

(assert (=> b!5441006 (= res!2316416 call!390274)))

(declare-fun b!5441007 () Bool)

(declare-fun e!3370602 () Bool)

(declare-fun e!3370606 () Bool)

(assert (=> b!5441007 (= e!3370602 e!3370606)))

(assert (=> b!5441007 (= c!949520 ((_ is Star!15257) (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun d!1733126 () Bool)

(declare-fun res!2316413 () Bool)

(assert (=> d!1733126 (=> res!2316413 e!3370602)))

(assert (=> d!1733126 (= res!2316413 ((_ is ElementMatch!15257) (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(assert (=> d!1733126 (= (validRegex!6993 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))) e!3370602)))

(declare-fun bm!390268 () Bool)

(assert (=> bm!390268 (= call!390274 (validRegex!6993 (ite c!949519 (regOne!31027 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))) (regOne!31026 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))))

(declare-fun b!5441008 () Bool)

(declare-fun e!3370603 () Bool)

(assert (=> b!5441008 (= e!3370603 call!390273)))

(declare-fun bm!390269 () Bool)

(assert (=> bm!390269 (= call!390272 call!390273)))

(declare-fun b!5441009 () Bool)

(assert (=> b!5441009 (= e!3370606 e!3370605)))

(assert (=> b!5441009 (= c!949519 ((_ is Union!15257) (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))

(declare-fun b!5441010 () Bool)

(assert (=> b!5441010 (= e!3370606 e!3370603)))

(declare-fun res!2316412 () Bool)

(assert (=> b!5441010 (= res!2316412 (not (nullable!5426 (reg!15586 (h!68394 (t!375295 (exprs!5141 (h!68395 zl!343))))))))))

(assert (=> b!5441010 (=> (not res!2316412) (not e!3370603))))

(declare-fun b!5441011 () Bool)

(declare-fun res!2316414 () Bool)

(assert (=> b!5441011 (=> (not res!2316414) (not e!3370608))))

(assert (=> b!5441011 (= res!2316414 call!390274)))

(assert (=> b!5441011 (= e!3370605 e!3370608)))

(assert (= (and d!1733126 (not res!2316413)) b!5441007))

(assert (= (and b!5441007 c!949520) b!5441010))

(assert (= (and b!5441007 (not c!949520)) b!5441009))

(assert (= (and b!5441010 res!2316412) b!5441008))

(assert (= (and b!5441009 c!949519) b!5441011))

(assert (= (and b!5441009 (not c!949519)) b!5441003))

(assert (= (and b!5441011 res!2316414) b!5441005))

(assert (= (and b!5441003 (not res!2316415)) b!5441006))

(assert (= (and b!5441006 res!2316416) b!5441004))

(assert (= (or b!5441005 b!5441004) bm!390269))

(assert (= (or b!5441011 b!5441006) bm!390268))

(assert (= (or b!5441008 bm!390269) bm!390267))

(declare-fun m!6461968 () Bool)

(assert (=> bm!390267 m!6461968))

(declare-fun m!6461970 () Bool)

(assert (=> bm!390268 m!6461970))

(declare-fun m!6461972 () Bool)

(assert (=> b!5441010 m!6461972))

(assert (=> bs!1255210 d!1733126))

(declare-fun d!1733128 () Bool)

(assert (=> d!1733128 true))

(assert (=> d!1733128 true))

(declare-fun res!2316417 () Bool)

(assert (=> d!1733128 (= (choose!41267 lambda!286158) res!2316417)))

(assert (=> d!1732652 d!1733128))

(assert (=> b!5439831 d!1732630))

(assert (=> d!1732678 d!1732812))

(declare-fun bs!1255722 () Bool)

(declare-fun b!5441012 () Bool)

(assert (= bs!1255722 (and b!5441012 b!5439522)))

(declare-fun lambda!286296 () Int)

(assert (=> bs!1255722 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 (regOne!31026 r!7292))) (= (regTwo!31027 (regOne!31026 r!7292)) (regOne!31026 r!7292))) (= lambda!286296 lambda!286192))))

(declare-fun bs!1255723 () Bool)

(assert (= bs!1255723 (and b!5441012 b!5440909)))

(assert (=> bs!1255723 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 (regOne!31027 (regOne!31026 r!7292)))) (= (regTwo!31027 (regOne!31026 r!7292)) (regOne!31027 (regOne!31026 r!7292)))) (= lambda!286296 lambda!286289))))

(declare-fun bs!1255724 () Bool)

(assert (= bs!1255724 (and b!5441012 d!1733104)))

(assert (=> bs!1255724 (not (= lambda!286296 lambda!286294))))

(declare-fun bs!1255725 () Bool)

(assert (= bs!1255725 (and b!5441012 d!1732658)))

(assert (=> bs!1255725 (not (= lambda!286296 lambda!286231))))

(declare-fun bs!1255726 () Bool)

(assert (= bs!1255726 (and b!5441012 b!5440463)))

(assert (=> bs!1255726 (not (= lambda!286296 lambda!286260))))

(declare-fun bs!1255727 () Bool)

(assert (= bs!1255727 (and b!5441012 b!5439206)))

(assert (=> bs!1255727 (not (= lambda!286296 lambda!286158))))

(declare-fun bs!1255728 () Bool)

(assert (= bs!1255728 (and b!5441012 b!5440411)))

(assert (=> bs!1255728 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31027 r!7292))) (= (regTwo!31027 (regOne!31026 r!7292)) (regTwo!31027 r!7292))) (= lambda!286296 lambda!286255))))

(declare-fun bs!1255729 () Bool)

(assert (= bs!1255729 (and b!5441012 b!5439559)))

(assert (=> bs!1255729 (not (= lambda!286296 lambda!286201))))

(declare-fun bs!1255730 () Bool)

(assert (= bs!1255730 (and b!5441012 b!5439367)))

(assert (=> bs!1255730 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 r!7292)) (= (regTwo!31027 (regOne!31026 r!7292)) r!7292)) (= lambda!286296 lambda!286184))))

(declare-fun bs!1255731 () Bool)

(assert (= bs!1255731 (and b!5441012 b!5439371)))

(assert (=> bs!1255731 (not (= lambda!286296 lambda!286185))))

(declare-fun bs!1255732 () Bool)

(assert (= bs!1255732 (and b!5441012 b!5440459)))

(assert (=> bs!1255732 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31027 (regOne!31026 r!7292)) (regTwo!31027 (regTwo!31026 r!7292)))) (= lambda!286296 lambda!286258))))

(declare-fun bs!1255733 () Bool)

(assert (= bs!1255733 (and b!5441012 d!1732656)))

(assert (=> bs!1255733 (not (= lambda!286296 lambda!286226))))

(declare-fun bs!1255734 () Bool)

(assert (= bs!1255734 (and b!5441012 b!5439555)))

(assert (=> bs!1255734 (= (and (= (reg!15586 (regTwo!31027 (regOne!31026 r!7292))) (reg!15586 (regTwo!31026 r!7292))) (= (regTwo!31027 (regOne!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286296 lambda!286198))))

(declare-fun bs!1255735 () Bool)

(assert (= bs!1255735 (and b!5441012 b!5439526)))

(assert (=> bs!1255735 (not (= lambda!286296 lambda!286193))))

(declare-fun bs!1255736 () Bool)

(assert (= bs!1255736 (and b!5441012 b!5440913)))

(assert (=> bs!1255736 (not (= lambda!286296 lambda!286290))))

(declare-fun bs!1255737 () Bool)

(assert (= bs!1255737 (and b!5441012 b!5440415)))

(assert (=> bs!1255737 (not (= lambda!286296 lambda!286257))))

(assert (=> bs!1255725 (not (= lambda!286296 lambda!286232))))

(assert (=> bs!1255727 (not (= lambda!286296 lambda!286159))))

(assert (=> b!5441012 true))

(assert (=> b!5441012 true))

(declare-fun bs!1255738 () Bool)

(declare-fun b!5441016 () Bool)

(assert (= bs!1255738 (and b!5441016 b!5439522)))

(declare-fun lambda!286297 () Int)

(assert (=> bs!1255738 (not (= lambda!286297 lambda!286192))))

(declare-fun bs!1255739 () Bool)

(assert (= bs!1255739 (and b!5441016 b!5440909)))

(assert (=> bs!1255739 (not (= lambda!286297 lambda!286289))))

(declare-fun bs!1255740 () Bool)

(assert (= bs!1255740 (and b!5441016 d!1733104)))

(assert (=> bs!1255740 (not (= lambda!286297 lambda!286294))))

(declare-fun bs!1255741 () Bool)

(assert (= bs!1255741 (and b!5441016 d!1732658)))

(assert (=> bs!1255741 (not (= lambda!286297 lambda!286231))))

(declare-fun bs!1255742 () Bool)

(assert (= bs!1255742 (and b!5441016 b!5440463)))

(assert (=> bs!1255742 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))))) (= lambda!286297 lambda!286260))))

(declare-fun bs!1255743 () Bool)

(assert (= bs!1255743 (and b!5441016 b!5439206)))

(assert (=> bs!1255743 (not (= lambda!286297 lambda!286158))))

(declare-fun bs!1255744 () Bool)

(assert (= bs!1255744 (and b!5441016 b!5440411)))

(assert (=> bs!1255744 (not (= lambda!286297 lambda!286255))))

(declare-fun bs!1255745 () Bool)

(assert (= bs!1255745 (and b!5441016 b!5439559)))

(assert (=> bs!1255745 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286297 lambda!286201))))

(declare-fun bs!1255746 () Bool)

(assert (= bs!1255746 (and b!5441016 b!5439367)))

(assert (=> bs!1255746 (not (= lambda!286297 lambda!286184))))

(declare-fun bs!1255747 () Bool)

(assert (= bs!1255747 (and b!5441016 b!5439371)))

(assert (=> bs!1255747 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286297 lambda!286185))))

(declare-fun bs!1255748 () Bool)

(assert (= bs!1255748 (and b!5441016 b!5440459)))

(assert (=> bs!1255748 (not (= lambda!286297 lambda!286258))))

(declare-fun bs!1255749 () Bool)

(assert (= bs!1255749 (and b!5441016 d!1732656)))

(assert (=> bs!1255749 (not (= lambda!286297 lambda!286226))))

(declare-fun bs!1255750 () Bool)

(assert (= bs!1255750 (and b!5441016 b!5439555)))

(assert (=> bs!1255750 (not (= lambda!286297 lambda!286198))))

(declare-fun bs!1255751 () Bool)

(assert (= bs!1255751 (and b!5441016 b!5439526)))

(assert (=> bs!1255751 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286297 lambda!286193))))

(declare-fun bs!1255752 () Bool)

(assert (= bs!1255752 (and b!5441016 b!5440913)))

(assert (=> bs!1255752 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 (regOne!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))))) (= lambda!286297 lambda!286290))))

(declare-fun bs!1255753 () Bool)

(assert (= bs!1255753 (and b!5441016 b!5440415)))

(assert (=> bs!1255753 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286297 lambda!286257))))

(assert (=> bs!1255741 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286297 lambda!286232))))

(declare-fun bs!1255754 () Bool)

(assert (= bs!1255754 (and b!5441016 b!5441012)))

(assert (=> bs!1255754 (not (= lambda!286297 lambda!286296))))

(assert (=> bs!1255743 (= (and (= (regOne!31026 (regTwo!31027 (regOne!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286297 lambda!286159))))

(assert (=> b!5441016 true))

(assert (=> b!5441016 true))

(declare-fun e!3370610 () Bool)

(declare-fun call!390276 () Bool)

(assert (=> b!5441012 (= e!3370610 call!390276)))

(declare-fun b!5441014 () Bool)

(declare-fun res!2316420 () Bool)

(assert (=> b!5441014 (=> res!2316420 e!3370610)))

(declare-fun call!390275 () Bool)

(assert (=> b!5441014 (= res!2316420 call!390275)))

(declare-fun e!3370615 () Bool)

(assert (=> b!5441014 (= e!3370615 e!3370610)))

(declare-fun bm!390270 () Bool)

(assert (=> bm!390270 (= call!390275 (isEmpty!33933 s!2326))))

(declare-fun c!949523 () Bool)

(declare-fun bm!390271 () Bool)

(assert (=> bm!390271 (= call!390276 (Exists!2438 (ite c!949523 lambda!286296 lambda!286297)))))

(declare-fun b!5441015 () Bool)

(declare-fun c!949524 () Bool)

(assert (=> b!5441015 (= c!949524 ((_ is ElementMatch!15257) (regTwo!31027 (regOne!31026 r!7292))))))

(declare-fun e!3370612 () Bool)

(declare-fun e!3370609 () Bool)

(assert (=> b!5441015 (= e!3370612 e!3370609)))

(declare-fun d!1733130 () Bool)

(declare-fun c!949522 () Bool)

(assert (=> d!1733130 (= c!949522 ((_ is EmptyExpr!15257) (regTwo!31027 (regOne!31026 r!7292))))))

(declare-fun e!3370614 () Bool)

(assert (=> d!1733130 (= (matchRSpec!2360 (regTwo!31027 (regOne!31026 r!7292)) s!2326) e!3370614)))

(declare-fun b!5441013 () Bool)

(declare-fun e!3370611 () Bool)

(declare-fun e!3370613 () Bool)

(assert (=> b!5441013 (= e!3370611 e!3370613)))

(declare-fun res!2316418 () Bool)

(assert (=> b!5441013 (= res!2316418 (matchRSpec!2360 (regOne!31027 (regTwo!31027 (regOne!31026 r!7292))) s!2326))))

(assert (=> b!5441013 (=> res!2316418 e!3370613)))

(assert (=> b!5441016 (= e!3370615 call!390276)))

(declare-fun b!5441017 () Bool)

(declare-fun c!949521 () Bool)

(assert (=> b!5441017 (= c!949521 ((_ is Union!15257) (regTwo!31027 (regOne!31026 r!7292))))))

(assert (=> b!5441017 (= e!3370609 e!3370611)))

(declare-fun b!5441018 () Bool)

(assert (=> b!5441018 (= e!3370609 (= s!2326 (Cons!61948 (c!949049 (regTwo!31027 (regOne!31026 r!7292))) Nil!61948)))))

(declare-fun b!5441019 () Bool)

(assert (=> b!5441019 (= e!3370613 (matchRSpec!2360 (regTwo!31027 (regTwo!31027 (regOne!31026 r!7292))) s!2326))))

(declare-fun b!5441020 () Bool)

(assert (=> b!5441020 (= e!3370614 e!3370612)))

(declare-fun res!2316419 () Bool)

(assert (=> b!5441020 (= res!2316419 (not ((_ is EmptyLang!15257) (regTwo!31027 (regOne!31026 r!7292)))))))

(assert (=> b!5441020 (=> (not res!2316419) (not e!3370612))))

(declare-fun b!5441021 () Bool)

(assert (=> b!5441021 (= e!3370611 e!3370615)))

(assert (=> b!5441021 (= c!949523 ((_ is Star!15257) (regTwo!31027 (regOne!31026 r!7292))))))

(declare-fun b!5441022 () Bool)

(assert (=> b!5441022 (= e!3370614 call!390275)))

(assert (= (and d!1733130 c!949522) b!5441022))

(assert (= (and d!1733130 (not c!949522)) b!5441020))

(assert (= (and b!5441020 res!2316419) b!5441015))

(assert (= (and b!5441015 c!949524) b!5441018))

(assert (= (and b!5441015 (not c!949524)) b!5441017))

(assert (= (and b!5441017 c!949521) b!5441013))

(assert (= (and b!5441017 (not c!949521)) b!5441021))

(assert (= (and b!5441013 (not res!2316418)) b!5441019))

(assert (= (and b!5441021 c!949523) b!5441014))

(assert (= (and b!5441021 (not c!949523)) b!5441016))

(assert (= (and b!5441014 (not res!2316420)) b!5441012))

(assert (= (or b!5441012 b!5441016) bm!390271))

(assert (= (or b!5441022 b!5441014) bm!390270))

(assert (=> bm!390270 m!6460694))

(declare-fun m!6461974 () Bool)

(assert (=> bm!390271 m!6461974))

(declare-fun m!6461976 () Bool)

(assert (=> b!5441013 m!6461976))

(declare-fun m!6461978 () Bool)

(assert (=> b!5441019 m!6461978))

(assert (=> b!5439529 d!1733130))

(declare-fun d!1733132 () Bool)

(assert (=> d!1733132 (= (isConcat!529 lt!2218681) ((_ is Concat!24102) lt!2218681))))

(assert (=> b!5439835 d!1733132))

(declare-fun d!1733134 () Bool)

(declare-fun c!949525 () Bool)

(assert (=> d!1733134 (= c!949525 (isEmpty!33933 (tail!10762 (t!375297 s!2326))))))

(declare-fun e!3370616 () Bool)

(assert (=> d!1733134 (= (matchZipper!1501 (derivationStepZipper!1486 lt!2218598 (head!11665 (t!375297 s!2326))) (tail!10762 (t!375297 s!2326))) e!3370616)))

(declare-fun b!5441023 () Bool)

(assert (=> b!5441023 (= e!3370616 (nullableZipper!1474 (derivationStepZipper!1486 lt!2218598 (head!11665 (t!375297 s!2326)))))))

(declare-fun b!5441024 () Bool)

(assert (=> b!5441024 (= e!3370616 (matchZipper!1501 (derivationStepZipper!1486 (derivationStepZipper!1486 lt!2218598 (head!11665 (t!375297 s!2326))) (head!11665 (tail!10762 (t!375297 s!2326)))) (tail!10762 (tail!10762 (t!375297 s!2326)))))))

(assert (= (and d!1733134 c!949525) b!5441023))

(assert (= (and d!1733134 (not c!949525)) b!5441024))

(assert (=> d!1733134 m!6460842))

(assert (=> d!1733134 m!6461586))

(assert (=> b!5441023 m!6461078))

(declare-fun m!6461980 () Bool)

(assert (=> b!5441023 m!6461980))

(assert (=> b!5441024 m!6460842))

(assert (=> b!5441024 m!6461590))

(assert (=> b!5441024 m!6461078))

(assert (=> b!5441024 m!6461590))

(declare-fun m!6461982 () Bool)

(assert (=> b!5441024 m!6461982))

(assert (=> b!5441024 m!6460842))

(assert (=> b!5441024 m!6461594))

(assert (=> b!5441024 m!6461982))

(assert (=> b!5441024 m!6461594))

(declare-fun m!6461984 () Bool)

(assert (=> b!5441024 m!6461984))

(assert (=> b!5439977 d!1733134))

(declare-fun bs!1255755 () Bool)

(declare-fun d!1733136 () Bool)

(assert (= bs!1255755 (and d!1733136 d!1733108)))

(declare-fun lambda!286298 () Int)

(assert (=> bs!1255755 (= (= (head!11665 (t!375297 s!2326)) (head!11665 s!2326)) (= lambda!286298 lambda!286295))))

(declare-fun bs!1255756 () Bool)

(assert (= bs!1255756 (and d!1733136 d!1732996)))

(assert (=> bs!1255756 (= lambda!286298 lambda!286285)))

(declare-fun bs!1255757 () Bool)

(assert (= bs!1255757 (and d!1733136 d!1732978)))

(assert (=> bs!1255757 (= lambda!286298 lambda!286279)))

(declare-fun bs!1255758 () Bool)

(assert (= bs!1255758 (and d!1733136 d!1732552)))

(assert (=> bs!1255758 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286298 lambda!286189))))

(declare-fun bs!1255759 () Bool)

(assert (= bs!1255759 (and d!1733136 d!1732670)))

(assert (=> bs!1255759 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286298 lambda!286233))))

(declare-fun bs!1255760 () Bool)

(assert (= bs!1255760 (and d!1733136 b!5439217)))

(assert (=> bs!1255760 (= (= (head!11665 (t!375297 s!2326)) (h!68396 s!2326)) (= lambda!286298 lambda!286160))))

(declare-fun bs!1255761 () Bool)

(assert (= bs!1255761 (and d!1733136 d!1732920)))

(assert (=> bs!1255761 (= lambda!286298 lambda!286272)))

(assert (=> d!1733136 true))

(assert (=> d!1733136 (= (derivationStepZipper!1486 lt!2218598 (head!11665 (t!375297 s!2326))) (flatMap!984 lt!2218598 lambda!286298))))

(declare-fun bs!1255762 () Bool)

(assert (= bs!1255762 d!1733136))

(declare-fun m!6461986 () Bool)

(assert (=> bs!1255762 m!6461986))

(assert (=> b!5439977 d!1733136))

(assert (=> b!5439977 d!1732922))

(assert (=> b!5439977 d!1732924))

(declare-fun bs!1255763 () Bool)

(declare-fun b!5441025 () Bool)

(assert (= bs!1255763 (and b!5441025 b!5440909)))

(declare-fun lambda!286299 () Int)

(assert (=> bs!1255763 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regOne!31027 (regOne!31026 r!7292)))) (= (regOne!31027 (regTwo!31026 r!7292)) (regOne!31027 (regOne!31026 r!7292)))) (= lambda!286299 lambda!286289))))

(declare-fun bs!1255764 () Bool)

(assert (= bs!1255764 (and b!5441025 d!1733104)))

(assert (=> bs!1255764 (not (= lambda!286299 lambda!286294))))

(declare-fun bs!1255765 () Bool)

(assert (= bs!1255765 (and b!5441025 d!1732658)))

(assert (=> bs!1255765 (not (= lambda!286299 lambda!286231))))

(declare-fun bs!1255766 () Bool)

(assert (= bs!1255766 (and b!5441025 b!5440463)))

(assert (=> bs!1255766 (not (= lambda!286299 lambda!286260))))

(declare-fun bs!1255767 () Bool)

(assert (= bs!1255767 (and b!5441025 b!5439206)))

(assert (=> bs!1255767 (not (= lambda!286299 lambda!286158))))

(declare-fun bs!1255768 () Bool)

(assert (= bs!1255768 (and b!5441025 b!5440411)))

(assert (=> bs!1255768 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31027 r!7292))) (= (regOne!31027 (regTwo!31026 r!7292)) (regTwo!31027 r!7292))) (= lambda!286299 lambda!286255))))

(declare-fun bs!1255769 () Bool)

(assert (= bs!1255769 (and b!5441025 b!5439559)))

(assert (=> bs!1255769 (not (= lambda!286299 lambda!286201))))

(declare-fun bs!1255770 () Bool)

(assert (= bs!1255770 (and b!5441025 b!5439367)))

(assert (=> bs!1255770 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 r!7292)) (= (regOne!31027 (regTwo!31026 r!7292)) r!7292)) (= lambda!286299 lambda!286184))))

(declare-fun bs!1255771 () Bool)

(assert (= bs!1255771 (and b!5441025 b!5439371)))

(assert (=> bs!1255771 (not (= lambda!286299 lambda!286185))))

(declare-fun bs!1255772 () Bool)

(assert (= bs!1255772 (and b!5441025 b!5440459)))

(assert (=> bs!1255772 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regOne!31027 (regTwo!31026 r!7292)) (regTwo!31027 (regTwo!31026 r!7292)))) (= lambda!286299 lambda!286258))))

(declare-fun bs!1255773 () Bool)

(assert (= bs!1255773 (and b!5441025 d!1732656)))

(assert (=> bs!1255773 (not (= lambda!286299 lambda!286226))))

(declare-fun bs!1255774 () Bool)

(assert (= bs!1255774 (and b!5441025 b!5441016)))

(assert (=> bs!1255774 (not (= lambda!286299 lambda!286297))))

(declare-fun bs!1255775 () Bool)

(assert (= bs!1255775 (and b!5441025 b!5439522)))

(assert (=> bs!1255775 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regOne!31026 r!7292))) (= (regOne!31027 (regTwo!31026 r!7292)) (regOne!31026 r!7292))) (= lambda!286299 lambda!286192))))

(declare-fun bs!1255776 () Bool)

(assert (= bs!1255776 (and b!5441025 b!5439555)))

(assert (=> bs!1255776 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31026 r!7292))) (= (regOne!31027 (regTwo!31026 r!7292)) (regTwo!31026 r!7292))) (= lambda!286299 lambda!286198))))

(declare-fun bs!1255777 () Bool)

(assert (= bs!1255777 (and b!5441025 b!5439526)))

(assert (=> bs!1255777 (not (= lambda!286299 lambda!286193))))

(declare-fun bs!1255778 () Bool)

(assert (= bs!1255778 (and b!5441025 b!5440913)))

(assert (=> bs!1255778 (not (= lambda!286299 lambda!286290))))

(declare-fun bs!1255779 () Bool)

(assert (= bs!1255779 (and b!5441025 b!5440415)))

(assert (=> bs!1255779 (not (= lambda!286299 lambda!286257))))

(assert (=> bs!1255765 (not (= lambda!286299 lambda!286232))))

(declare-fun bs!1255780 () Bool)

(assert (= bs!1255780 (and b!5441025 b!5441012)))

(assert (=> bs!1255780 (= (and (= (reg!15586 (regOne!31027 (regTwo!31026 r!7292))) (reg!15586 (regTwo!31027 (regOne!31026 r!7292)))) (= (regOne!31027 (regTwo!31026 r!7292)) (regTwo!31027 (regOne!31026 r!7292)))) (= lambda!286299 lambda!286296))))

(assert (=> bs!1255767 (not (= lambda!286299 lambda!286159))))

(assert (=> b!5441025 true))

(assert (=> b!5441025 true))

(declare-fun bs!1255781 () Bool)

(declare-fun b!5441029 () Bool)

(assert (= bs!1255781 (and b!5441029 b!5440909)))

(declare-fun lambda!286300 () Int)

(assert (=> bs!1255781 (not (= lambda!286300 lambda!286289))))

(declare-fun bs!1255782 () Bool)

(assert (= bs!1255782 (and b!5441029 d!1733104)))

(assert (=> bs!1255782 (not (= lambda!286300 lambda!286294))))

(declare-fun bs!1255783 () Bool)

(assert (= bs!1255783 (and b!5441029 d!1732658)))

(assert (=> bs!1255783 (not (= lambda!286300 lambda!286231))))

(declare-fun bs!1255784 () Bool)

(assert (= bs!1255784 (and b!5441029 b!5440463)))

(assert (=> bs!1255784 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))))) (= lambda!286300 lambda!286260))))

(declare-fun bs!1255785 () Bool)

(assert (= bs!1255785 (and b!5441029 b!5439206)))

(assert (=> bs!1255785 (not (= lambda!286300 lambda!286158))))

(declare-fun bs!1255786 () Bool)

(assert (= bs!1255786 (and b!5441029 b!5440411)))

(assert (=> bs!1255786 (not (= lambda!286300 lambda!286255))))

(declare-fun bs!1255787 () Bool)

(assert (= bs!1255787 (and b!5441029 b!5439559)))

(assert (=> bs!1255787 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286300 lambda!286201))))

(declare-fun bs!1255788 () Bool)

(assert (= bs!1255788 (and b!5441029 b!5439367)))

(assert (=> bs!1255788 (not (= lambda!286300 lambda!286184))))

(declare-fun bs!1255789 () Bool)

(assert (= bs!1255789 (and b!5441029 b!5439371)))

(assert (=> bs!1255789 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286300 lambda!286185))))

(declare-fun bs!1255790 () Bool)

(assert (= bs!1255790 (and b!5441029 b!5440459)))

(assert (=> bs!1255790 (not (= lambda!286300 lambda!286258))))

(declare-fun bs!1255791 () Bool)

(assert (= bs!1255791 (and b!5441029 b!5441016)))

(assert (=> bs!1255791 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))))) (= lambda!286300 lambda!286297))))

(declare-fun bs!1255792 () Bool)

(assert (= bs!1255792 (and b!5441029 b!5439522)))

(assert (=> bs!1255792 (not (= lambda!286300 lambda!286192))))

(declare-fun bs!1255793 () Bool)

(assert (= bs!1255793 (and b!5441029 b!5439555)))

(assert (=> bs!1255793 (not (= lambda!286300 lambda!286198))))

(declare-fun bs!1255794 () Bool)

(assert (= bs!1255794 (and b!5441029 b!5439526)))

(assert (=> bs!1255794 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286300 lambda!286193))))

(declare-fun bs!1255795 () Bool)

(assert (= bs!1255795 (and b!5441029 b!5440913)))

(assert (=> bs!1255795 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regOne!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))))) (= lambda!286300 lambda!286290))))

(declare-fun bs!1255796 () Bool)

(assert (= bs!1255796 (and b!5441029 b!5440415)))

(assert (=> bs!1255796 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286300 lambda!286257))))

(declare-fun bs!1255797 () Bool)

(assert (= bs!1255797 (and b!5441029 b!5441025)))

(assert (=> bs!1255797 (not (= lambda!286300 lambda!286299))))

(declare-fun bs!1255798 () Bool)

(assert (= bs!1255798 (and b!5441029 d!1732656)))

(assert (=> bs!1255798 (not (= lambda!286300 lambda!286226))))

(assert (=> bs!1255783 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286300 lambda!286232))))

(declare-fun bs!1255799 () Bool)

(assert (= bs!1255799 (and b!5441029 b!5441012)))

(assert (=> bs!1255799 (not (= lambda!286300 lambda!286296))))

(assert (=> bs!1255785 (= (and (= (regOne!31026 (regOne!31027 (regTwo!31026 r!7292))) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))) (regTwo!31026 r!7292))) (= lambda!286300 lambda!286159))))

(assert (=> b!5441029 true))

(assert (=> b!5441029 true))

(declare-fun e!3370618 () Bool)

(declare-fun call!390278 () Bool)

(assert (=> b!5441025 (= e!3370618 call!390278)))

(declare-fun b!5441027 () Bool)

(declare-fun res!2316423 () Bool)

(assert (=> b!5441027 (=> res!2316423 e!3370618)))

(declare-fun call!390277 () Bool)

(assert (=> b!5441027 (= res!2316423 call!390277)))

(declare-fun e!3370623 () Bool)

(assert (=> b!5441027 (= e!3370623 e!3370618)))

(declare-fun bm!390272 () Bool)

(assert (=> bm!390272 (= call!390277 (isEmpty!33933 s!2326))))

(declare-fun c!949528 () Bool)

(declare-fun bm!390273 () Bool)

(assert (=> bm!390273 (= call!390278 (Exists!2438 (ite c!949528 lambda!286299 lambda!286300)))))

(declare-fun b!5441028 () Bool)

(declare-fun c!949529 () Bool)

(assert (=> b!5441028 (= c!949529 ((_ is ElementMatch!15257) (regOne!31027 (regTwo!31026 r!7292))))))

(declare-fun e!3370620 () Bool)

(declare-fun e!3370617 () Bool)

(assert (=> b!5441028 (= e!3370620 e!3370617)))

(declare-fun d!1733138 () Bool)

(declare-fun c!949527 () Bool)

(assert (=> d!1733138 (= c!949527 ((_ is EmptyExpr!15257) (regOne!31027 (regTwo!31026 r!7292))))))

(declare-fun e!3370622 () Bool)

(assert (=> d!1733138 (= (matchRSpec!2360 (regOne!31027 (regTwo!31026 r!7292)) s!2326) e!3370622)))

(declare-fun b!5441026 () Bool)

(declare-fun e!3370619 () Bool)

(declare-fun e!3370621 () Bool)

(assert (=> b!5441026 (= e!3370619 e!3370621)))

(declare-fun res!2316421 () Bool)

(assert (=> b!5441026 (= res!2316421 (matchRSpec!2360 (regOne!31027 (regOne!31027 (regTwo!31026 r!7292))) s!2326))))

(assert (=> b!5441026 (=> res!2316421 e!3370621)))

(assert (=> b!5441029 (= e!3370623 call!390278)))

(declare-fun b!5441030 () Bool)

(declare-fun c!949526 () Bool)

(assert (=> b!5441030 (= c!949526 ((_ is Union!15257) (regOne!31027 (regTwo!31026 r!7292))))))

(assert (=> b!5441030 (= e!3370617 e!3370619)))

(declare-fun b!5441031 () Bool)

(assert (=> b!5441031 (= e!3370617 (= s!2326 (Cons!61948 (c!949049 (regOne!31027 (regTwo!31026 r!7292))) Nil!61948)))))

(declare-fun b!5441032 () Bool)

(assert (=> b!5441032 (= e!3370621 (matchRSpec!2360 (regTwo!31027 (regOne!31027 (regTwo!31026 r!7292))) s!2326))))

(declare-fun b!5441033 () Bool)

(assert (=> b!5441033 (= e!3370622 e!3370620)))

(declare-fun res!2316422 () Bool)

(assert (=> b!5441033 (= res!2316422 (not ((_ is EmptyLang!15257) (regOne!31027 (regTwo!31026 r!7292)))))))

(assert (=> b!5441033 (=> (not res!2316422) (not e!3370620))))

(declare-fun b!5441034 () Bool)

(assert (=> b!5441034 (= e!3370619 e!3370623)))

(assert (=> b!5441034 (= c!949528 ((_ is Star!15257) (regOne!31027 (regTwo!31026 r!7292))))))

(declare-fun b!5441035 () Bool)

(assert (=> b!5441035 (= e!3370622 call!390277)))

(assert (= (and d!1733138 c!949527) b!5441035))

(assert (= (and d!1733138 (not c!949527)) b!5441033))

(assert (= (and b!5441033 res!2316422) b!5441028))

(assert (= (and b!5441028 c!949529) b!5441031))

(assert (= (and b!5441028 (not c!949529)) b!5441030))

(assert (= (and b!5441030 c!949526) b!5441026))

(assert (= (and b!5441030 (not c!949526)) b!5441034))

(assert (= (and b!5441026 (not res!2316421)) b!5441032))

(assert (= (and b!5441034 c!949528) b!5441027))

(assert (= (and b!5441034 (not c!949528)) b!5441029))

(assert (= (and b!5441027 (not res!2316423)) b!5441025))

(assert (= (or b!5441025 b!5441029) bm!390273))

(assert (= (or b!5441035 b!5441027) bm!390272))

(assert (=> bm!390272 m!6460694))

(declare-fun m!6461988 () Bool)

(assert (=> bm!390273 m!6461988))

(declare-fun m!6461990 () Bool)

(assert (=> b!5441026 m!6461990))

(declare-fun m!6461992 () Bool)

(assert (=> b!5441032 m!6461992))

(assert (=> b!5439556 d!1733138))

(declare-fun b!5441036 () Bool)

(declare-fun e!3370626 () Bool)

(declare-fun lt!2218751 () Bool)

(assert (=> b!5441036 (= e!3370626 (not lt!2218751))))

(declare-fun b!5441037 () Bool)

(declare-fun res!2316427 () Bool)

(declare-fun e!3370630 () Bool)

(assert (=> b!5441037 (=> res!2316427 e!3370630)))

(assert (=> b!5441037 (= res!2316427 (not ((_ is ElementMatch!15257) (derivativeStep!4295 r!7292 (head!11665 s!2326)))))))

(assert (=> b!5441037 (= e!3370626 e!3370630)))

(declare-fun b!5441038 () Bool)

(declare-fun res!2316430 () Bool)

(declare-fun e!3370624 () Bool)

(assert (=> b!5441038 (=> res!2316430 e!3370624)))

(assert (=> b!5441038 (= res!2316430 (not (isEmpty!33933 (tail!10762 (tail!10762 s!2326)))))))

(declare-fun b!5441039 () Bool)

(declare-fun e!3370628 () Bool)

(assert (=> b!5441039 (= e!3370628 (nullable!5426 (derivativeStep!4295 r!7292 (head!11665 s!2326))))))

(declare-fun bm!390274 () Bool)

(declare-fun call!390279 () Bool)

(assert (=> bm!390274 (= call!390279 (isEmpty!33933 (tail!10762 s!2326)))))

(declare-fun b!5441040 () Bool)

(declare-fun res!2316424 () Bool)

(assert (=> b!5441040 (=> res!2316424 e!3370630)))

(declare-fun e!3370625 () Bool)

(assert (=> b!5441040 (= res!2316424 e!3370625)))

(declare-fun res!2316425 () Bool)

(assert (=> b!5441040 (=> (not res!2316425) (not e!3370625))))

(assert (=> b!5441040 (= res!2316425 lt!2218751)))

(declare-fun b!5441041 () Bool)

(declare-fun e!3370629 () Bool)

(assert (=> b!5441041 (= e!3370629 e!3370626)))

(declare-fun c!949532 () Bool)

(assert (=> b!5441041 (= c!949532 ((_ is EmptyLang!15257) (derivativeStep!4295 r!7292 (head!11665 s!2326))))))

(declare-fun b!5441042 () Bool)

(declare-fun e!3370627 () Bool)

(assert (=> b!5441042 (= e!3370627 e!3370624)))

(declare-fun res!2316426 () Bool)

(assert (=> b!5441042 (=> res!2316426 e!3370624)))

(assert (=> b!5441042 (= res!2316426 call!390279)))

(declare-fun b!5441043 () Bool)

(assert (=> b!5441043 (= e!3370624 (not (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 r!7292 (head!11665 s!2326))))))))

(declare-fun b!5441044 () Bool)

(assert (=> b!5441044 (= e!3370628 (matchR!7442 (derivativeStep!4295 (derivativeStep!4295 r!7292 (head!11665 s!2326)) (head!11665 (tail!10762 s!2326))) (tail!10762 (tail!10762 s!2326))))))

(declare-fun b!5441045 () Bool)

(assert (=> b!5441045 (= e!3370630 e!3370627)))

(declare-fun res!2316431 () Bool)

(assert (=> b!5441045 (=> (not res!2316431) (not e!3370627))))

(assert (=> b!5441045 (= res!2316431 (not lt!2218751))))

(declare-fun b!5441046 () Bool)

(assert (=> b!5441046 (= e!3370625 (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 r!7292 (head!11665 s!2326)))))))

(declare-fun b!5441048 () Bool)

(assert (=> b!5441048 (= e!3370629 (= lt!2218751 call!390279))))

(declare-fun b!5441049 () Bool)

(declare-fun res!2316428 () Bool)

(assert (=> b!5441049 (=> (not res!2316428) (not e!3370625))))

(assert (=> b!5441049 (= res!2316428 (not call!390279))))

(declare-fun d!1733140 () Bool)

(assert (=> d!1733140 e!3370629))

(declare-fun c!949531 () Bool)

(assert (=> d!1733140 (= c!949531 ((_ is EmptyExpr!15257) (derivativeStep!4295 r!7292 (head!11665 s!2326))))))

(assert (=> d!1733140 (= lt!2218751 e!3370628)))

(declare-fun c!949530 () Bool)

(assert (=> d!1733140 (= c!949530 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (=> d!1733140 (validRegex!6993 (derivativeStep!4295 r!7292 (head!11665 s!2326)))))

(assert (=> d!1733140 (= (matchR!7442 (derivativeStep!4295 r!7292 (head!11665 s!2326)) (tail!10762 s!2326)) lt!2218751)))

(declare-fun b!5441047 () Bool)

(declare-fun res!2316429 () Bool)

(assert (=> b!5441047 (=> (not res!2316429) (not e!3370625))))

(assert (=> b!5441047 (= res!2316429 (isEmpty!33933 (tail!10762 (tail!10762 s!2326))))))

(assert (= (and d!1733140 c!949530) b!5441039))

(assert (= (and d!1733140 (not c!949530)) b!5441044))

(assert (= (and d!1733140 c!949531) b!5441048))

(assert (= (and d!1733140 (not c!949531)) b!5441041))

(assert (= (and b!5441041 c!949532) b!5441036))

(assert (= (and b!5441041 (not c!949532)) b!5441037))

(assert (= (and b!5441037 (not res!2316427)) b!5441040))

(assert (= (and b!5441040 res!2316425) b!5441049))

(assert (= (and b!5441049 res!2316428) b!5441047))

(assert (= (and b!5441047 res!2316429) b!5441046))

(assert (= (and b!5441040 (not res!2316424)) b!5441045))

(assert (= (and b!5441045 res!2316431) b!5441042))

(assert (= (and b!5441042 (not res!2316426)) b!5441038))

(assert (= (and b!5441038 (not res!2316430)) b!5441043))

(assert (= (or b!5441048 b!5441049 b!5441042) bm!390274))

(assert (=> b!5441039 m!6460726))

(declare-fun m!6461994 () Bool)

(assert (=> b!5441039 m!6461994))

(assert (=> b!5441038 m!6460720))

(assert (=> b!5441038 m!6461524))

(assert (=> b!5441038 m!6461524))

(assert (=> b!5441038 m!6461526))

(assert (=> b!5441047 m!6460720))

(assert (=> b!5441047 m!6461524))

(assert (=> b!5441047 m!6461524))

(assert (=> b!5441047 m!6461526))

(assert (=> bm!390274 m!6460720))

(assert (=> bm!390274 m!6460722))

(assert (=> b!5441046 m!6460720))

(assert (=> b!5441046 m!6461528))

(assert (=> b!5441043 m!6460720))

(assert (=> b!5441043 m!6461528))

(assert (=> d!1733140 m!6460720))

(assert (=> d!1733140 m!6460722))

(assert (=> d!1733140 m!6460726))

(declare-fun m!6461996 () Bool)

(assert (=> d!1733140 m!6461996))

(assert (=> b!5441044 m!6460720))

(assert (=> b!5441044 m!6461528))

(assert (=> b!5441044 m!6460726))

(assert (=> b!5441044 m!6461528))

(declare-fun m!6461998 () Bool)

(assert (=> b!5441044 m!6461998))

(assert (=> b!5441044 m!6460720))

(assert (=> b!5441044 m!6461524))

(assert (=> b!5441044 m!6461998))

(assert (=> b!5441044 m!6461524))

(declare-fun m!6462000 () Bool)

(assert (=> b!5441044 m!6462000))

(assert (=> b!5439483 d!1733140))

(declare-fun b!5441050 () Bool)

(declare-fun e!3370631 () Regex!15257)

(assert (=> b!5441050 (= e!3370631 (ite (= (head!11665 s!2326) (c!949049 r!7292)) EmptyExpr!15257 EmptyLang!15257))))

(declare-fun bm!390275 () Bool)

(declare-fun c!949533 () Bool)

(declare-fun call!390283 () Regex!15257)

(assert (=> bm!390275 (= call!390283 (derivativeStep!4295 (ite c!949533 (regOne!31027 r!7292) (regOne!31026 r!7292)) (head!11665 s!2326)))))

(declare-fun bm!390276 () Bool)

(declare-fun call!390282 () Regex!15257)

(declare-fun call!390281 () Regex!15257)

(assert (=> bm!390276 (= call!390282 call!390281)))

(declare-fun b!5441051 () Bool)

(declare-fun e!3370633 () Regex!15257)

(assert (=> b!5441051 (= e!3370633 (Union!15257 (Concat!24102 call!390282 (regTwo!31026 r!7292)) EmptyLang!15257))))

(declare-fun b!5441052 () Bool)

(declare-fun e!3370632 () Regex!15257)

(assert (=> b!5441052 (= e!3370632 e!3370631)))

(declare-fun c!949537 () Bool)

(assert (=> b!5441052 (= c!949537 ((_ is ElementMatch!15257) r!7292))))

(declare-fun b!5441053 () Bool)

(declare-fun e!3370635 () Regex!15257)

(assert (=> b!5441053 (= e!3370635 (Concat!24102 call!390281 r!7292))))

(declare-fun b!5441054 () Bool)

(declare-fun e!3370634 () Regex!15257)

(declare-fun call!390280 () Regex!15257)

(assert (=> b!5441054 (= e!3370634 (Union!15257 call!390283 call!390280))))

(declare-fun b!5441055 () Bool)

(assert (=> b!5441055 (= e!3370632 EmptyLang!15257)))

(declare-fun d!1733142 () Bool)

(declare-fun lt!2218752 () Regex!15257)

(assert (=> d!1733142 (validRegex!6993 lt!2218752)))

(assert (=> d!1733142 (= lt!2218752 e!3370632)))

(declare-fun c!949534 () Bool)

(assert (=> d!1733142 (= c!949534 (or ((_ is EmptyExpr!15257) r!7292) ((_ is EmptyLang!15257) r!7292)))))

(assert (=> d!1733142 (validRegex!6993 r!7292)))

(assert (=> d!1733142 (= (derivativeStep!4295 r!7292 (head!11665 s!2326)) lt!2218752)))

(declare-fun b!5441056 () Bool)

(assert (=> b!5441056 (= e!3370634 e!3370635)))

(declare-fun c!949536 () Bool)

(assert (=> b!5441056 (= c!949536 ((_ is Star!15257) r!7292))))

(declare-fun b!5441057 () Bool)

(assert (=> b!5441057 (= e!3370633 (Union!15257 (Concat!24102 call!390283 (regTwo!31026 r!7292)) call!390282))))

(declare-fun bm!390277 () Bool)

(assert (=> bm!390277 (= call!390281 call!390280)))

(declare-fun c!949535 () Bool)

(declare-fun bm!390278 () Bool)

(assert (=> bm!390278 (= call!390280 (derivativeStep!4295 (ite c!949533 (regTwo!31027 r!7292) (ite c!949536 (reg!15586 r!7292) (ite c!949535 (regTwo!31026 r!7292) (regOne!31026 r!7292)))) (head!11665 s!2326)))))

(declare-fun b!5441058 () Bool)

(assert (=> b!5441058 (= c!949533 ((_ is Union!15257) r!7292))))

(assert (=> b!5441058 (= e!3370631 e!3370634)))

(declare-fun b!5441059 () Bool)

(assert (=> b!5441059 (= c!949535 (nullable!5426 (regOne!31026 r!7292)))))

(assert (=> b!5441059 (= e!3370635 e!3370633)))

(assert (= (and d!1733142 c!949534) b!5441055))

(assert (= (and d!1733142 (not c!949534)) b!5441052))

(assert (= (and b!5441052 c!949537) b!5441050))

(assert (= (and b!5441052 (not c!949537)) b!5441058))

(assert (= (and b!5441058 c!949533) b!5441054))

(assert (= (and b!5441058 (not c!949533)) b!5441056))

(assert (= (and b!5441056 c!949536) b!5441053))

(assert (= (and b!5441056 (not c!949536)) b!5441059))

(assert (= (and b!5441059 c!949535) b!5441057))

(assert (= (and b!5441059 (not c!949535)) b!5441051))

(assert (= (or b!5441057 b!5441051) bm!390276))

(assert (= (or b!5441053 bm!390276) bm!390277))

(assert (= (or b!5441054 bm!390277) bm!390278))

(assert (= (or b!5441054 b!5441057) bm!390275))

(assert (=> bm!390275 m!6460724))

(declare-fun m!6462002 () Bool)

(assert (=> bm!390275 m!6462002))

(declare-fun m!6462004 () Bool)

(assert (=> d!1733142 m!6462004))

(assert (=> d!1733142 m!6460596))

(assert (=> bm!390278 m!6460724))

(declare-fun m!6462006 () Bool)

(assert (=> bm!390278 m!6462006))

(assert (=> b!5441059 m!6460774))

(assert (=> b!5439483 d!1733142))

(assert (=> b!5439483 d!1732888))

(assert (=> b!5439483 d!1732890))

(declare-fun d!1733144 () Bool)

(assert (=> d!1733144 (= (flatMap!984 z!1189 lambda!286189) (choose!41265 z!1189 lambda!286189))))

(declare-fun bs!1255800 () Bool)

(assert (= bs!1255800 d!1733144))

(declare-fun m!6462008 () Bool)

(assert (=> bs!1255800 m!6462008))

(assert (=> d!1732552 d!1733144))

(declare-fun b!5441062 () Bool)

(declare-fun res!2316432 () Bool)

(declare-fun e!3370637 () Bool)

(assert (=> b!5441062 (=> (not res!2316432) (not e!3370637))))

(declare-fun lt!2218753 () List!62072)

(assert (=> b!5441062 (= res!2316432 (= (size!39888 lt!2218753) (+ (size!39888 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))) (size!39888 (t!375297 s!2326)))))))

(declare-fun b!5441063 () Bool)

(assert (=> b!5441063 (= e!3370637 (or (not (= (t!375297 s!2326) Nil!61948)) (= lt!2218753 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)))))))

(declare-fun b!5441060 () Bool)

(declare-fun e!3370636 () List!62072)

(assert (=> b!5441060 (= e!3370636 (t!375297 s!2326))))

(declare-fun b!5441061 () Bool)

(assert (=> b!5441061 (= e!3370636 (Cons!61948 (h!68396 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))) (++!13622 (t!375297 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))) (t!375297 s!2326))))))

(declare-fun d!1733146 () Bool)

(assert (=> d!1733146 e!3370637))

(declare-fun res!2316433 () Bool)

(assert (=> d!1733146 (=> (not res!2316433) (not e!3370637))))

(assert (=> d!1733146 (= res!2316433 (= (content!11143 lt!2218753) ((_ map or) (content!11143 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))) (content!11143 (t!375297 s!2326)))))))

(assert (=> d!1733146 (= lt!2218753 e!3370636)))

(declare-fun c!949538 () Bool)

(assert (=> d!1733146 (= c!949538 ((_ is Nil!61948) (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))))))

(assert (=> d!1733146 (= (++!13622 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326)) lt!2218753)))

(assert (= (and d!1733146 c!949538) b!5441060))

(assert (= (and d!1733146 (not c!949538)) b!5441061))

(assert (= (and d!1733146 res!2316433) b!5441062))

(assert (= (and b!5441062 res!2316432) b!5441063))

(declare-fun m!6462010 () Bool)

(assert (=> b!5441062 m!6462010))

(assert (=> b!5441062 m!6461016))

(declare-fun m!6462012 () Bool)

(assert (=> b!5441062 m!6462012))

(declare-fun m!6462014 () Bool)

(assert (=> b!5441062 m!6462014))

(declare-fun m!6462016 () Bool)

(assert (=> b!5441061 m!6462016))

(declare-fun m!6462018 () Bool)

(assert (=> d!1733146 m!6462018))

(assert (=> d!1733146 m!6461016))

(declare-fun m!6462020 () Bool)

(assert (=> d!1733146 m!6462020))

(declare-fun m!6462022 () Bool)

(assert (=> d!1733146 m!6462022))

(assert (=> b!5439925 d!1733146))

(declare-fun b!5441066 () Bool)

(declare-fun res!2316434 () Bool)

(declare-fun e!3370639 () Bool)

(assert (=> b!5441066 (=> (not res!2316434) (not e!3370639))))

(declare-fun lt!2218754 () List!62072)

(assert (=> b!5441066 (= res!2316434 (= (size!39888 lt!2218754) (+ (size!39888 Nil!61948) (size!39888 (Cons!61948 (h!68396 s!2326) Nil!61948)))))))

(declare-fun b!5441067 () Bool)

(assert (=> b!5441067 (= e!3370639 (or (not (= (Cons!61948 (h!68396 s!2326) Nil!61948) Nil!61948)) (= lt!2218754 Nil!61948)))))

(declare-fun b!5441064 () Bool)

(declare-fun e!3370638 () List!62072)

(assert (=> b!5441064 (= e!3370638 (Cons!61948 (h!68396 s!2326) Nil!61948))))

(declare-fun b!5441065 () Bool)

(assert (=> b!5441065 (= e!3370638 (Cons!61948 (h!68396 Nil!61948) (++!13622 (t!375297 Nil!61948) (Cons!61948 (h!68396 s!2326) Nil!61948))))))

(declare-fun d!1733148 () Bool)

(assert (=> d!1733148 e!3370639))

(declare-fun res!2316435 () Bool)

(assert (=> d!1733148 (=> (not res!2316435) (not e!3370639))))

(assert (=> d!1733148 (= res!2316435 (= (content!11143 lt!2218754) ((_ map or) (content!11143 Nil!61948) (content!11143 (Cons!61948 (h!68396 s!2326) Nil!61948)))))))

(assert (=> d!1733148 (= lt!2218754 e!3370638)))

(declare-fun c!949539 () Bool)

(assert (=> d!1733148 (= c!949539 ((_ is Nil!61948) Nil!61948))))

(assert (=> d!1733148 (= (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) lt!2218754)))

(assert (= (and d!1733148 c!949539) b!5441064))

(assert (= (and d!1733148 (not c!949539)) b!5441065))

(assert (= (and d!1733148 res!2316435) b!5441066))

(assert (= (and b!5441066 res!2316434) b!5441067))

(declare-fun m!6462024 () Bool)

(assert (=> b!5441066 m!6462024))

(declare-fun m!6462026 () Bool)

(assert (=> b!5441066 m!6462026))

(declare-fun m!6462028 () Bool)

(assert (=> b!5441066 m!6462028))

(declare-fun m!6462030 () Bool)

(assert (=> b!5441065 m!6462030))

(declare-fun m!6462032 () Bool)

(assert (=> d!1733148 m!6462032))

(declare-fun m!6462034 () Bool)

(assert (=> d!1733148 m!6462034))

(declare-fun m!6462036 () Bool)

(assert (=> d!1733148 m!6462036))

(assert (=> b!5439925 d!1733148))

(declare-fun d!1733150 () Bool)

(assert (=> d!1733150 (= (++!13622 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326)) s!2326)))

(declare-fun lt!2218757 () Unit!154570)

(declare-fun choose!41272 (List!62072 C!30784 List!62072 List!62072) Unit!154570)

(assert (=> d!1733150 (= lt!2218757 (choose!41272 Nil!61948 (h!68396 s!2326) (t!375297 s!2326) s!2326))))

(assert (=> d!1733150 (= (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) (t!375297 s!2326))) s!2326)))

(assert (=> d!1733150 (= (lemmaMoveElementToOtherListKeepsConcatEq!1869 Nil!61948 (h!68396 s!2326) (t!375297 s!2326) s!2326) lt!2218757)))

(declare-fun bs!1255801 () Bool)

(assert (= bs!1255801 d!1733150))

(assert (=> bs!1255801 m!6461016))

(assert (=> bs!1255801 m!6461016))

(assert (=> bs!1255801 m!6461018))

(declare-fun m!6462038 () Bool)

(assert (=> bs!1255801 m!6462038))

(declare-fun m!6462040 () Bool)

(assert (=> bs!1255801 m!6462040))

(assert (=> b!5439925 d!1733150))

(declare-fun b!5441068 () Bool)

(declare-fun e!3370641 () Bool)

(declare-fun lt!2218758 () Option!15368)

(assert (=> b!5441068 (= e!3370641 (not (isDefined!12071 lt!2218758)))))

(declare-fun b!5441069 () Bool)

(declare-fun res!2316439 () Bool)

(declare-fun e!3370642 () Bool)

(assert (=> b!5441069 (=> (not res!2316439) (not e!3370642))))

(assert (=> b!5441069 (= res!2316439 (matchR!7442 (regTwo!31026 r!7292) (_2!35759 (get!21362 lt!2218758))))))

(declare-fun b!5441070 () Bool)

(declare-fun e!3370644 () Option!15368)

(assert (=> b!5441070 (= e!3370644 (Some!15367 (tuple2!64913 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326))))))

(declare-fun d!1733152 () Bool)

(assert (=> d!1733152 e!3370641))

(declare-fun res!2316438 () Bool)

(assert (=> d!1733152 (=> res!2316438 e!3370641)))

(assert (=> d!1733152 (= res!2316438 e!3370642)))

(declare-fun res!2316437 () Bool)

(assert (=> d!1733152 (=> (not res!2316437) (not e!3370642))))

(assert (=> d!1733152 (= res!2316437 (isDefined!12071 lt!2218758))))

(assert (=> d!1733152 (= lt!2218758 e!3370644)))

(declare-fun c!949541 () Bool)

(declare-fun e!3370640 () Bool)

(assert (=> d!1733152 (= c!949541 e!3370640)))

(declare-fun res!2316436 () Bool)

(assert (=> d!1733152 (=> (not res!2316436) (not e!3370640))))

(assert (=> d!1733152 (= res!2316436 (matchR!7442 (regOne!31026 r!7292) (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948))))))

(assert (=> d!1733152 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1733152 (= (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (t!375297 s!2326) s!2326) lt!2218758)))

(declare-fun b!5441071 () Bool)

(assert (=> b!5441071 (= e!3370640 (matchR!7442 (regTwo!31026 r!7292) (t!375297 s!2326)))))

(declare-fun b!5441072 () Bool)

(declare-fun lt!2218759 () Unit!154570)

(declare-fun lt!2218760 () Unit!154570)

(assert (=> b!5441072 (= lt!2218759 lt!2218760)))

(assert (=> b!5441072 (= (++!13622 (++!13622 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (Cons!61948 (h!68396 (t!375297 s!2326)) Nil!61948)) (t!375297 (t!375297 s!2326))) s!2326)))

(assert (=> b!5441072 (= lt!2218760 (lemmaMoveElementToOtherListKeepsConcatEq!1869 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (h!68396 (t!375297 s!2326)) (t!375297 (t!375297 s!2326)) s!2326))))

(declare-fun e!3370643 () Option!15368)

(assert (=> b!5441072 (= e!3370643 (findConcatSeparation!1782 (regOne!31026 r!7292) (regTwo!31026 r!7292) (++!13622 (++!13622 Nil!61948 (Cons!61948 (h!68396 s!2326) Nil!61948)) (Cons!61948 (h!68396 (t!375297 s!2326)) Nil!61948)) (t!375297 (t!375297 s!2326)) s!2326))))

(declare-fun b!5441073 () Bool)

(assert (=> b!5441073 (= e!3370642 (= (++!13622 (_1!35759 (get!21362 lt!2218758)) (_2!35759 (get!21362 lt!2218758))) s!2326))))

(declare-fun b!5441074 () Bool)

(assert (=> b!5441074 (= e!3370643 None!15367)))

(declare-fun b!5441075 () Bool)

(assert (=> b!5441075 (= e!3370644 e!3370643)))

(declare-fun c!949540 () Bool)

(assert (=> b!5441075 (= c!949540 ((_ is Nil!61948) (t!375297 s!2326)))))

(declare-fun b!5441076 () Bool)

(declare-fun res!2316440 () Bool)

(assert (=> b!5441076 (=> (not res!2316440) (not e!3370642))))

(assert (=> b!5441076 (= res!2316440 (matchR!7442 (regOne!31026 r!7292) (_1!35759 (get!21362 lt!2218758))))))

(assert (= (and d!1733152 res!2316436) b!5441071))

(assert (= (and d!1733152 c!949541) b!5441070))

(assert (= (and d!1733152 (not c!949541)) b!5441075))

(assert (= (and b!5441075 c!949540) b!5441074))

(assert (= (and b!5441075 (not c!949540)) b!5441072))

(assert (= (and d!1733152 res!2316437) b!5441076))

(assert (= (and b!5441076 res!2316440) b!5441069))

(assert (= (and b!5441069 res!2316439) b!5441073))

(assert (= (and d!1733152 (not res!2316438)) b!5441068))

(declare-fun m!6462042 () Bool)

(assert (=> b!5441073 m!6462042))

(declare-fun m!6462044 () Bool)

(assert (=> b!5441073 m!6462044))

(assert (=> b!5441072 m!6461016))

(declare-fun m!6462046 () Bool)

(assert (=> b!5441072 m!6462046))

(assert (=> b!5441072 m!6462046))

(declare-fun m!6462048 () Bool)

(assert (=> b!5441072 m!6462048))

(assert (=> b!5441072 m!6461016))

(declare-fun m!6462050 () Bool)

(assert (=> b!5441072 m!6462050))

(assert (=> b!5441072 m!6462046))

(declare-fun m!6462052 () Bool)

(assert (=> b!5441072 m!6462052))

(declare-fun m!6462054 () Bool)

(assert (=> d!1733152 m!6462054))

(assert (=> d!1733152 m!6461016))

(declare-fun m!6462056 () Bool)

(assert (=> d!1733152 m!6462056))

(assert (=> d!1733152 m!6460772))

(declare-fun m!6462058 () Bool)

(assert (=> b!5441071 m!6462058))

(assert (=> b!5441076 m!6462042))

(declare-fun m!6462060 () Bool)

(assert (=> b!5441076 m!6462060))

(assert (=> b!5441068 m!6462054))

(assert (=> b!5441069 m!6462042))

(declare-fun m!6462062 () Bool)

(assert (=> b!5441069 m!6462062))

(assert (=> b!5439925 d!1733152))

(assert (=> d!1732536 d!1732820))

(assert (=> d!1732536 d!1732668))

(declare-fun d!1733154 () Bool)

(assert (=> d!1733154 (= (nullable!5426 (regTwo!31026 r!7292)) (nullableFct!1625 (regTwo!31026 r!7292)))))

(declare-fun bs!1255802 () Bool)

(assert (= bs!1255802 d!1733154))

(declare-fun m!6462064 () Bool)

(assert (=> bs!1255802 m!6462064))

(assert (=> b!5439580 d!1733154))

(assert (=> bs!1255212 d!1732634))

(declare-fun d!1733156 () Bool)

(assert (=> d!1733156 (= (isEmptyExpr!1006 lt!2218681) ((_ is EmptyExpr!15257) lt!2218681))))

(assert (=> b!5439830 d!1733156))

(assert (=> d!1732674 d!1732672))

(declare-fun d!1733158 () Bool)

(assert (=> d!1733158 (= (flatMap!984 lt!2218597 lambda!286160) (dynLambda!24380 lambda!286160 lt!2218591))))

(assert (=> d!1733158 true))

(declare-fun _$13!1964 () Unit!154570)

(assert (=> d!1733158 (= (choose!41264 lt!2218597 lt!2218591 lambda!286160) _$13!1964)))

(declare-fun b_lambda!207427 () Bool)

(assert (=> (not b_lambda!207427) (not d!1733158)))

(declare-fun bs!1255803 () Bool)

(assert (= bs!1255803 d!1733158))

(assert (=> bs!1255803 m!6460512))

(assert (=> bs!1255803 m!6461066))

(assert (=> d!1732674 d!1733158))

(declare-fun d!1733160 () Bool)

(assert (=> d!1733160 (= (Exists!2438 (ite c!949137 lambda!286192 lambda!286193)) (choose!41267 (ite c!949137 lambda!286192 lambda!286193)))))

(declare-fun bs!1255804 () Bool)

(assert (= bs!1255804 d!1733160))

(declare-fun m!6462066 () Bool)

(assert (=> bs!1255804 m!6462066))

(assert (=> bm!390017 d!1733160))

(declare-fun b!5441077 () Bool)

(declare-fun e!3370647 () Bool)

(declare-fun lt!2218761 () Bool)

(assert (=> b!5441077 (= e!3370647 (not lt!2218761))))

(declare-fun b!5441078 () Bool)

(declare-fun res!2316444 () Bool)

(declare-fun e!3370651 () Bool)

(assert (=> b!5441078 (=> res!2316444 e!3370651)))

(assert (=> b!5441078 (= res!2316444 (not ((_ is ElementMatch!15257) (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)))))))

(assert (=> b!5441078 (= e!3370647 e!3370651)))

(declare-fun b!5441079 () Bool)

(declare-fun res!2316447 () Bool)

(declare-fun e!3370645 () Bool)

(assert (=> b!5441079 (=> res!2316447 e!3370645)))

(assert (=> b!5441079 (= res!2316447 (not (isEmpty!33933 (tail!10762 (tail!10762 s!2326)))))))

(declare-fun b!5441080 () Bool)

(declare-fun e!3370649 () Bool)

(assert (=> b!5441080 (= e!3370649 (nullable!5426 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326))))))

(declare-fun bm!390279 () Bool)

(declare-fun call!390284 () Bool)

(assert (=> bm!390279 (= call!390284 (isEmpty!33933 (tail!10762 s!2326)))))

(declare-fun b!5441081 () Bool)

(declare-fun res!2316441 () Bool)

(assert (=> b!5441081 (=> res!2316441 e!3370651)))

(declare-fun e!3370646 () Bool)

(assert (=> b!5441081 (= res!2316441 e!3370646)))

(declare-fun res!2316442 () Bool)

(assert (=> b!5441081 (=> (not res!2316442) (not e!3370646))))

(assert (=> b!5441081 (= res!2316442 lt!2218761)))

(declare-fun b!5441082 () Bool)

(declare-fun e!3370650 () Bool)

(assert (=> b!5441082 (= e!3370650 e!3370647)))

(declare-fun c!949544 () Bool)

(assert (=> b!5441082 (= c!949544 ((_ is EmptyLang!15257) (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326))))))

(declare-fun b!5441083 () Bool)

(declare-fun e!3370648 () Bool)

(assert (=> b!5441083 (= e!3370648 e!3370645)))

(declare-fun res!2316443 () Bool)

(assert (=> b!5441083 (=> res!2316443 e!3370645)))

(assert (=> b!5441083 (= res!2316443 call!390284)))

(declare-fun b!5441084 () Bool)

(assert (=> b!5441084 (= e!3370645 (not (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326))))))))

(declare-fun b!5441085 () Bool)

(assert (=> b!5441085 (= e!3370649 (matchR!7442 (derivativeStep!4295 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)) (head!11665 (tail!10762 s!2326))) (tail!10762 (tail!10762 s!2326))))))

(declare-fun b!5441086 () Bool)

(assert (=> b!5441086 (= e!3370651 e!3370648)))

(declare-fun res!2316448 () Bool)

(assert (=> b!5441086 (=> (not res!2316448) (not e!3370648))))

(assert (=> b!5441086 (= res!2316448 (not lt!2218761))))

(declare-fun b!5441087 () Bool)

(assert (=> b!5441087 (= e!3370646 (= (head!11665 (tail!10762 s!2326)) (c!949049 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)))))))

(declare-fun b!5441089 () Bool)

(assert (=> b!5441089 (= e!3370650 (= lt!2218761 call!390284))))

(declare-fun b!5441090 () Bool)

(declare-fun res!2316445 () Bool)

(assert (=> b!5441090 (=> (not res!2316445) (not e!3370646))))

(assert (=> b!5441090 (= res!2316445 (not call!390284))))

(declare-fun d!1733162 () Bool)

(assert (=> d!1733162 e!3370650))

(declare-fun c!949543 () Bool)

(assert (=> d!1733162 (= c!949543 ((_ is EmptyExpr!15257) (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326))))))

(assert (=> d!1733162 (= lt!2218761 e!3370649)))

(declare-fun c!949542 () Bool)

(assert (=> d!1733162 (= c!949542 (isEmpty!33933 (tail!10762 s!2326)))))

(assert (=> d!1733162 (validRegex!6993 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)))))

(assert (=> d!1733162 (= (matchR!7442 (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)) (tail!10762 s!2326)) lt!2218761)))

(declare-fun b!5441088 () Bool)

(declare-fun res!2316446 () Bool)

(assert (=> b!5441088 (=> (not res!2316446) (not e!3370646))))

(assert (=> b!5441088 (= res!2316446 (isEmpty!33933 (tail!10762 (tail!10762 s!2326))))))

(assert (= (and d!1733162 c!949542) b!5441080))

(assert (= (and d!1733162 (not c!949542)) b!5441085))

(assert (= (and d!1733162 c!949543) b!5441089))

(assert (= (and d!1733162 (not c!949543)) b!5441082))

(assert (= (and b!5441082 c!949544) b!5441077))

(assert (= (and b!5441082 (not c!949544)) b!5441078))

(assert (= (and b!5441078 (not res!2316444)) b!5441081))

(assert (= (and b!5441081 res!2316442) b!5441090))

(assert (= (and b!5441090 res!2316445) b!5441088))

(assert (= (and b!5441088 res!2316446) b!5441087))

(assert (= (and b!5441081 (not res!2316441)) b!5441086))

(assert (= (and b!5441086 res!2316448) b!5441083))

(assert (= (and b!5441083 (not res!2316443)) b!5441079))

(assert (= (and b!5441079 (not res!2316447)) b!5441084))

(assert (= (or b!5441089 b!5441090 b!5441083) bm!390279))

(assert (=> b!5441080 m!6460776))

(declare-fun m!6462068 () Bool)

(assert (=> b!5441080 m!6462068))

(assert (=> b!5441079 m!6460720))

(assert (=> b!5441079 m!6461524))

(assert (=> b!5441079 m!6461524))

(assert (=> b!5441079 m!6461526))

(assert (=> b!5441088 m!6460720))

(assert (=> b!5441088 m!6461524))

(assert (=> b!5441088 m!6461524))

(assert (=> b!5441088 m!6461526))

(assert (=> bm!390279 m!6460720))

(assert (=> bm!390279 m!6460722))

(assert (=> b!5441087 m!6460720))

(assert (=> b!5441087 m!6461528))

(assert (=> b!5441084 m!6460720))

(assert (=> b!5441084 m!6461528))

(assert (=> d!1733162 m!6460720))

(assert (=> d!1733162 m!6460722))

(assert (=> d!1733162 m!6460776))

(declare-fun m!6462070 () Bool)

(assert (=> d!1733162 m!6462070))

(assert (=> b!5441085 m!6460720))

(assert (=> b!5441085 m!6461528))

(assert (=> b!5441085 m!6460776))

(assert (=> b!5441085 m!6461528))

(declare-fun m!6462072 () Bool)

(assert (=> b!5441085 m!6462072))

(assert (=> b!5441085 m!6460720))

(assert (=> b!5441085 m!6461524))

(assert (=> b!5441085 m!6462072))

(assert (=> b!5441085 m!6461524))

(declare-fun m!6462074 () Bool)

(assert (=> b!5441085 m!6462074))

(assert (=> b!5439541 d!1733162))

(declare-fun b!5441091 () Bool)

(declare-fun e!3370652 () Regex!15257)

(assert (=> b!5441091 (= e!3370652 (ite (= (head!11665 s!2326) (c!949049 (regOne!31026 r!7292))) EmptyExpr!15257 EmptyLang!15257))))

(declare-fun bm!390280 () Bool)

(declare-fun call!390288 () Regex!15257)

(declare-fun c!949545 () Bool)

(assert (=> bm!390280 (= call!390288 (derivativeStep!4295 (ite c!949545 (regOne!31027 (regOne!31026 r!7292)) (regOne!31026 (regOne!31026 r!7292))) (head!11665 s!2326)))))

(declare-fun bm!390281 () Bool)

(declare-fun call!390287 () Regex!15257)

(declare-fun call!390286 () Regex!15257)

(assert (=> bm!390281 (= call!390287 call!390286)))

(declare-fun b!5441092 () Bool)

(declare-fun e!3370654 () Regex!15257)

(assert (=> b!5441092 (= e!3370654 (Union!15257 (Concat!24102 call!390287 (regTwo!31026 (regOne!31026 r!7292))) EmptyLang!15257))))

(declare-fun b!5441093 () Bool)

(declare-fun e!3370653 () Regex!15257)

(assert (=> b!5441093 (= e!3370653 e!3370652)))

(declare-fun c!949549 () Bool)

(assert (=> b!5441093 (= c!949549 ((_ is ElementMatch!15257) (regOne!31026 r!7292)))))

(declare-fun b!5441094 () Bool)

(declare-fun e!3370656 () Regex!15257)

(assert (=> b!5441094 (= e!3370656 (Concat!24102 call!390286 (regOne!31026 r!7292)))))

(declare-fun b!5441095 () Bool)

(declare-fun e!3370655 () Regex!15257)

(declare-fun call!390285 () Regex!15257)

(assert (=> b!5441095 (= e!3370655 (Union!15257 call!390288 call!390285))))

(declare-fun b!5441096 () Bool)

(assert (=> b!5441096 (= e!3370653 EmptyLang!15257)))

(declare-fun d!1733164 () Bool)

(declare-fun lt!2218762 () Regex!15257)

(assert (=> d!1733164 (validRegex!6993 lt!2218762)))

(assert (=> d!1733164 (= lt!2218762 e!3370653)))

(declare-fun c!949546 () Bool)

(assert (=> d!1733164 (= c!949546 (or ((_ is EmptyExpr!15257) (regOne!31026 r!7292)) ((_ is EmptyLang!15257) (regOne!31026 r!7292))))))

(assert (=> d!1733164 (validRegex!6993 (regOne!31026 r!7292))))

(assert (=> d!1733164 (= (derivativeStep!4295 (regOne!31026 r!7292) (head!11665 s!2326)) lt!2218762)))

(declare-fun b!5441097 () Bool)

(assert (=> b!5441097 (= e!3370655 e!3370656)))

(declare-fun c!949548 () Bool)

(assert (=> b!5441097 (= c!949548 ((_ is Star!15257) (regOne!31026 r!7292)))))

(declare-fun b!5441098 () Bool)

(assert (=> b!5441098 (= e!3370654 (Union!15257 (Concat!24102 call!390288 (regTwo!31026 (regOne!31026 r!7292))) call!390287))))

(declare-fun bm!390282 () Bool)

(assert (=> bm!390282 (= call!390286 call!390285)))

(declare-fun c!949547 () Bool)

(declare-fun bm!390283 () Bool)

(assert (=> bm!390283 (= call!390285 (derivativeStep!4295 (ite c!949545 (regTwo!31027 (regOne!31026 r!7292)) (ite c!949548 (reg!15586 (regOne!31026 r!7292)) (ite c!949547 (regTwo!31026 (regOne!31026 r!7292)) (regOne!31026 (regOne!31026 r!7292))))) (head!11665 s!2326)))))

(declare-fun b!5441099 () Bool)

(assert (=> b!5441099 (= c!949545 ((_ is Union!15257) (regOne!31026 r!7292)))))

(assert (=> b!5441099 (= e!3370652 e!3370655)))

(declare-fun b!5441100 () Bool)

(assert (=> b!5441100 (= c!949547 (nullable!5426 (regOne!31026 (regOne!31026 r!7292))))))

(assert (=> b!5441100 (= e!3370656 e!3370654)))

(assert (= (and d!1733164 c!949546) b!5441096))

(assert (= (and d!1733164 (not c!949546)) b!5441093))

(assert (= (and b!5441093 c!949549) b!5441091))

(assert (= (and b!5441093 (not c!949549)) b!5441099))

(assert (= (and b!5441099 c!949545) b!5441095))

(assert (= (and b!5441099 (not c!949545)) b!5441097))

(assert (= (and b!5441097 c!949548) b!5441094))

(assert (= (and b!5441097 (not c!949548)) b!5441100))

(assert (= (and b!5441100 c!949547) b!5441098))

(assert (= (and b!5441100 (not c!949547)) b!5441092))

(assert (= (or b!5441098 b!5441092) bm!390281))

(assert (= (or b!5441094 bm!390281) bm!390282))

(assert (= (or b!5441095 bm!390282) bm!390283))

(assert (= (or b!5441095 b!5441098) bm!390280))

(assert (=> bm!390280 m!6460724))

(declare-fun m!6462076 () Bool)

(assert (=> bm!390280 m!6462076))

(declare-fun m!6462078 () Bool)

(assert (=> d!1733164 m!6462078))

(assert (=> d!1733164 m!6460772))

(assert (=> bm!390283 m!6460724))

(declare-fun m!6462080 () Bool)

(assert (=> bm!390283 m!6462080))

(assert (=> b!5441100 m!6460566))

(assert (=> b!5439541 d!1733164))

(assert (=> b!5439541 d!1732888))

(assert (=> b!5439541 d!1732890))

(declare-fun bs!1255805 () Bool)

(declare-fun b!5441101 () Bool)

(assert (= bs!1255805 (and b!5441101 b!5441029)))

(declare-fun lambda!286301 () Int)

(assert (=> bs!1255805 (not (= lambda!286301 lambda!286300))))

(declare-fun bs!1255806 () Bool)

(assert (= bs!1255806 (and b!5441101 b!5440909)))

(assert (=> bs!1255806 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regOne!31027 (regOne!31026 r!7292)))) (= (regOne!31027 r!7292) (regOne!31027 (regOne!31026 r!7292)))) (= lambda!286301 lambda!286289))))

(declare-fun bs!1255807 () Bool)

(assert (= bs!1255807 (and b!5441101 d!1733104)))

(assert (=> bs!1255807 (not (= lambda!286301 lambda!286294))))

(declare-fun bs!1255808 () Bool)

(assert (= bs!1255808 (and b!5441101 d!1732658)))

(assert (=> bs!1255808 (not (= lambda!286301 lambda!286231))))

(declare-fun bs!1255809 () Bool)

(assert (= bs!1255809 (and b!5441101 b!5440463)))

(assert (=> bs!1255809 (not (= lambda!286301 lambda!286260))))

(declare-fun bs!1255810 () Bool)

(assert (= bs!1255810 (and b!5441101 b!5439206)))

(assert (=> bs!1255810 (not (= lambda!286301 lambda!286158))))

(declare-fun bs!1255811 () Bool)

(assert (= bs!1255811 (and b!5441101 b!5440411)))

(assert (=> bs!1255811 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regTwo!31027 r!7292))) (= (regOne!31027 r!7292) (regTwo!31027 r!7292))) (= lambda!286301 lambda!286255))))

(declare-fun bs!1255812 () Bool)

(assert (= bs!1255812 (and b!5441101 b!5439559)))

(assert (=> bs!1255812 (not (= lambda!286301 lambda!286201))))

(declare-fun bs!1255813 () Bool)

(assert (= bs!1255813 (and b!5441101 b!5439367)))

(assert (=> bs!1255813 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 r!7292)) (= (regOne!31027 r!7292) r!7292)) (= lambda!286301 lambda!286184))))

(declare-fun bs!1255814 () Bool)

(assert (= bs!1255814 (and b!5441101 b!5439371)))

(assert (=> bs!1255814 (not (= lambda!286301 lambda!286185))))

(declare-fun bs!1255815 () Bool)

(assert (= bs!1255815 (and b!5441101 b!5440459)))

(assert (=> bs!1255815 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regOne!31027 r!7292) (regTwo!31027 (regTwo!31026 r!7292)))) (= lambda!286301 lambda!286258))))

(declare-fun bs!1255816 () Bool)

(assert (= bs!1255816 (and b!5441101 b!5441016)))

(assert (=> bs!1255816 (not (= lambda!286301 lambda!286297))))

(declare-fun bs!1255817 () Bool)

(assert (= bs!1255817 (and b!5441101 b!5439522)))

(assert (=> bs!1255817 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regOne!31026 r!7292))) (= (regOne!31027 r!7292) (regOne!31026 r!7292))) (= lambda!286301 lambda!286192))))

(declare-fun bs!1255818 () Bool)

(assert (= bs!1255818 (and b!5441101 b!5439555)))

(assert (=> bs!1255818 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regTwo!31026 r!7292))) (= (regOne!31027 r!7292) (regTwo!31026 r!7292))) (= lambda!286301 lambda!286198))))

(declare-fun bs!1255819 () Bool)

(assert (= bs!1255819 (and b!5441101 b!5439526)))

(assert (=> bs!1255819 (not (= lambda!286301 lambda!286193))))

(declare-fun bs!1255820 () Bool)

(assert (= bs!1255820 (and b!5441101 b!5440913)))

(assert (=> bs!1255820 (not (= lambda!286301 lambda!286290))))

(declare-fun bs!1255821 () Bool)

(assert (= bs!1255821 (and b!5441101 b!5440415)))

(assert (=> bs!1255821 (not (= lambda!286301 lambda!286257))))

(declare-fun bs!1255822 () Bool)

(assert (= bs!1255822 (and b!5441101 b!5441025)))

(assert (=> bs!1255822 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regOne!31027 (regTwo!31026 r!7292)))) (= (regOne!31027 r!7292) (regOne!31027 (regTwo!31026 r!7292)))) (= lambda!286301 lambda!286299))))

(declare-fun bs!1255823 () Bool)

(assert (= bs!1255823 (and b!5441101 d!1732656)))

(assert (=> bs!1255823 (not (= lambda!286301 lambda!286226))))

(assert (=> bs!1255808 (not (= lambda!286301 lambda!286232))))

(declare-fun bs!1255824 () Bool)

(assert (= bs!1255824 (and b!5441101 b!5441012)))

(assert (=> bs!1255824 (= (and (= (reg!15586 (regOne!31027 r!7292)) (reg!15586 (regTwo!31027 (regOne!31026 r!7292)))) (= (regOne!31027 r!7292) (regTwo!31027 (regOne!31026 r!7292)))) (= lambda!286301 lambda!286296))))

(assert (=> bs!1255810 (not (= lambda!286301 lambda!286159))))

(assert (=> b!5441101 true))

(assert (=> b!5441101 true))

(declare-fun bs!1255825 () Bool)

(declare-fun b!5441105 () Bool)

(assert (= bs!1255825 (and b!5441105 b!5441029)))

(declare-fun lambda!286302 () Int)

(assert (=> bs!1255825 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regOne!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))))) (= lambda!286302 lambda!286300))))

(declare-fun bs!1255826 () Bool)

(assert (= bs!1255826 (and b!5441105 b!5440909)))

(assert (=> bs!1255826 (not (= lambda!286302 lambda!286289))))

(declare-fun bs!1255827 () Bool)

(assert (= bs!1255827 (and b!5441105 d!1733104)))

(assert (=> bs!1255827 (not (= lambda!286302 lambda!286294))))

(declare-fun bs!1255828 () Bool)

(assert (= bs!1255828 (and b!5441105 d!1732658)))

(assert (=> bs!1255828 (not (= lambda!286302 lambda!286231))))

(declare-fun bs!1255829 () Bool)

(assert (= bs!1255829 (and b!5441105 b!5440463)))

(assert (=> bs!1255829 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))))) (= lambda!286302 lambda!286260))))

(declare-fun bs!1255830 () Bool)

(assert (= bs!1255830 (and b!5441105 b!5441101)))

(assert (=> bs!1255830 (not (= lambda!286302 lambda!286301))))

(declare-fun bs!1255831 () Bool)

(assert (= bs!1255831 (and b!5441105 b!5439206)))

(assert (=> bs!1255831 (not (= lambda!286302 lambda!286158))))

(declare-fun bs!1255832 () Bool)

(assert (= bs!1255832 (and b!5441105 b!5440411)))

(assert (=> bs!1255832 (not (= lambda!286302 lambda!286255))))

(declare-fun bs!1255833 () Bool)

(assert (= bs!1255833 (and b!5441105 b!5439559)))

(assert (=> bs!1255833 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286302 lambda!286201))))

(declare-fun bs!1255834 () Bool)

(assert (= bs!1255834 (and b!5441105 b!5439367)))

(assert (=> bs!1255834 (not (= lambda!286302 lambda!286184))))

(declare-fun bs!1255835 () Bool)

(assert (= bs!1255835 (and b!5441105 b!5439371)))

(assert (=> bs!1255835 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286302 lambda!286185))))

(declare-fun bs!1255836 () Bool)

(assert (= bs!1255836 (and b!5441105 b!5440459)))

(assert (=> bs!1255836 (not (= lambda!286302 lambda!286258))))

(declare-fun bs!1255837 () Bool)

(assert (= bs!1255837 (and b!5441105 b!5441016)))

(assert (=> bs!1255837 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regTwo!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))))) (= lambda!286302 lambda!286297))))

(declare-fun bs!1255838 () Bool)

(assert (= bs!1255838 (and b!5441105 b!5439522)))

(assert (=> bs!1255838 (not (= lambda!286302 lambda!286192))))

(declare-fun bs!1255839 () Bool)

(assert (= bs!1255839 (and b!5441105 b!5439555)))

(assert (=> bs!1255839 (not (= lambda!286302 lambda!286198))))

(declare-fun bs!1255840 () Bool)

(assert (= bs!1255840 (and b!5441105 b!5439526)))

(assert (=> bs!1255840 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286302 lambda!286193))))

(declare-fun bs!1255841 () Bool)

(assert (= bs!1255841 (and b!5441105 b!5440913)))

(assert (=> bs!1255841 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regOne!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))))) (= lambda!286302 lambda!286290))))

(declare-fun bs!1255842 () Bool)

(assert (= bs!1255842 (and b!5441105 b!5440415)))

(assert (=> bs!1255842 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286302 lambda!286257))))

(declare-fun bs!1255843 () Bool)

(assert (= bs!1255843 (and b!5441105 b!5441025)))

(assert (=> bs!1255843 (not (= lambda!286302 lambda!286299))))

(declare-fun bs!1255844 () Bool)

(assert (= bs!1255844 (and b!5441105 d!1732656)))

(assert (=> bs!1255844 (not (= lambda!286302 lambda!286226))))

(assert (=> bs!1255828 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286302 lambda!286232))))

(declare-fun bs!1255845 () Bool)

(assert (= bs!1255845 (and b!5441105 b!5441012)))

(assert (=> bs!1255845 (not (= lambda!286302 lambda!286296))))

(assert (=> bs!1255831 (= (and (= (regOne!31026 (regOne!31027 r!7292)) (regOne!31026 r!7292)) (= (regTwo!31026 (regOne!31027 r!7292)) (regTwo!31026 r!7292))) (= lambda!286302 lambda!286159))))

(assert (=> b!5441105 true))

(assert (=> b!5441105 true))

(declare-fun e!3370658 () Bool)

(declare-fun call!390290 () Bool)

(assert (=> b!5441101 (= e!3370658 call!390290)))

(declare-fun b!5441103 () Bool)

(declare-fun res!2316451 () Bool)

(assert (=> b!5441103 (=> res!2316451 e!3370658)))

(declare-fun call!390289 () Bool)

(assert (=> b!5441103 (= res!2316451 call!390289)))

(declare-fun e!3370663 () Bool)

(assert (=> b!5441103 (= e!3370663 e!3370658)))

(declare-fun bm!390284 () Bool)

(assert (=> bm!390284 (= call!390289 (isEmpty!33933 s!2326))))

(declare-fun bm!390285 () Bool)

(declare-fun c!949552 () Bool)

(assert (=> bm!390285 (= call!390290 (Exists!2438 (ite c!949552 lambda!286301 lambda!286302)))))

(declare-fun b!5441104 () Bool)

(declare-fun c!949553 () Bool)

(assert (=> b!5441104 (= c!949553 ((_ is ElementMatch!15257) (regOne!31027 r!7292)))))

(declare-fun e!3370660 () Bool)

(declare-fun e!3370657 () Bool)

(assert (=> b!5441104 (= e!3370660 e!3370657)))

(declare-fun d!1733166 () Bool)

(declare-fun c!949551 () Bool)

(assert (=> d!1733166 (= c!949551 ((_ is EmptyExpr!15257) (regOne!31027 r!7292)))))

(declare-fun e!3370662 () Bool)

(assert (=> d!1733166 (= (matchRSpec!2360 (regOne!31027 r!7292) s!2326) e!3370662)))

(declare-fun b!5441102 () Bool)

(declare-fun e!3370659 () Bool)

(declare-fun e!3370661 () Bool)

(assert (=> b!5441102 (= e!3370659 e!3370661)))

(declare-fun res!2316449 () Bool)

(assert (=> b!5441102 (= res!2316449 (matchRSpec!2360 (regOne!31027 (regOne!31027 r!7292)) s!2326))))

(assert (=> b!5441102 (=> res!2316449 e!3370661)))

(assert (=> b!5441105 (= e!3370663 call!390290)))

(declare-fun b!5441106 () Bool)

(declare-fun c!949550 () Bool)

(assert (=> b!5441106 (= c!949550 ((_ is Union!15257) (regOne!31027 r!7292)))))

(assert (=> b!5441106 (= e!3370657 e!3370659)))

(declare-fun b!5441107 () Bool)

(assert (=> b!5441107 (= e!3370657 (= s!2326 (Cons!61948 (c!949049 (regOne!31027 r!7292)) Nil!61948)))))

(declare-fun b!5441108 () Bool)

(assert (=> b!5441108 (= e!3370661 (matchRSpec!2360 (regTwo!31027 (regOne!31027 r!7292)) s!2326))))

(declare-fun b!5441109 () Bool)

(assert (=> b!5441109 (= e!3370662 e!3370660)))

(declare-fun res!2316450 () Bool)

(assert (=> b!5441109 (= res!2316450 (not ((_ is EmptyLang!15257) (regOne!31027 r!7292))))))

(assert (=> b!5441109 (=> (not res!2316450) (not e!3370660))))

(declare-fun b!5441110 () Bool)

(assert (=> b!5441110 (= e!3370659 e!3370663)))

(assert (=> b!5441110 (= c!949552 ((_ is Star!15257) (regOne!31027 r!7292)))))

(declare-fun b!5441111 () Bool)

(assert (=> b!5441111 (= e!3370662 call!390289)))

(assert (= (and d!1733166 c!949551) b!5441111))

(assert (= (and d!1733166 (not c!949551)) b!5441109))

(assert (= (and b!5441109 res!2316450) b!5441104))

(assert (= (and b!5441104 c!949553) b!5441107))

(assert (= (and b!5441104 (not c!949553)) b!5441106))

(assert (= (and b!5441106 c!949550) b!5441102))

(assert (= (and b!5441106 (not c!949550)) b!5441110))

(assert (= (and b!5441102 (not res!2316449)) b!5441108))

(assert (= (and b!5441110 c!949552) b!5441103))

(assert (= (and b!5441110 (not c!949552)) b!5441105))

(assert (= (and b!5441103 (not res!2316451)) b!5441101))

(assert (= (or b!5441101 b!5441105) bm!390285))

(assert (= (or b!5441111 b!5441103) bm!390284))

(assert (=> bm!390284 m!6460694))

(declare-fun m!6462082 () Bool)

(assert (=> bm!390285 m!6462082))

(declare-fun m!6462084 () Bool)

(assert (=> b!5441102 m!6462084))

(declare-fun m!6462086 () Bool)

(assert (=> b!5441108 m!6462086))

(assert (=> b!5439368 d!1733166))

(declare-fun bs!1255846 () Bool)

(declare-fun d!1733168 () Bool)

(assert (= bs!1255846 (and d!1733168 d!1732878)))

(declare-fun lambda!286303 () Int)

(assert (=> bs!1255846 (= lambda!286303 lambda!286265)))

(declare-fun bs!1255847 () Bool)

(assert (= bs!1255847 (and d!1733168 d!1732992)))

(assert (=> bs!1255847 (= lambda!286303 lambda!286284)))

(declare-fun bs!1255848 () Bool)

(assert (= bs!1255848 (and d!1733168 d!1733024)))

(assert (=> bs!1255848 (= lambda!286303 lambda!286286)))

(declare-fun bs!1255849 () Bool)

(assert (= bs!1255849 (and d!1733168 d!1733028)))

(assert (=> bs!1255849 (= lambda!286303 lambda!286287)))

(assert (=> d!1733168 (= (nullableZipper!1474 z!1189) (exists!2025 z!1189 lambda!286303))))

(declare-fun bs!1255850 () Bool)

(assert (= bs!1255850 d!1733168))

(declare-fun m!6462088 () Bool)

(assert (=> bs!1255850 m!6462088))

(assert (=> b!5439974 d!1733168))

(declare-fun d!1733170 () Bool)

(assert (=> d!1733170 (= (isEmpty!33930 (t!375295 (unfocusZipperList!699 zl!343))) ((_ is Nil!61946) (t!375295 (unfocusZipperList!699 zl!343))))))

(assert (=> b!5439708 d!1733170))

(declare-fun d!1733172 () Bool)

(assert (=> d!1733172 (= (Exists!2438 lambda!286231) (choose!41267 lambda!286231))))

(declare-fun bs!1255851 () Bool)

(assert (= bs!1255851 d!1733172))

(declare-fun m!6462090 () Bool)

(assert (=> bs!1255851 m!6462090))

(assert (=> d!1732658 d!1733172))

(declare-fun d!1733174 () Bool)

(assert (=> d!1733174 (= (Exists!2438 lambda!286232) (choose!41267 lambda!286232))))

(declare-fun bs!1255852 () Bool)

(assert (= bs!1255852 d!1733174))

(declare-fun m!6462092 () Bool)

(assert (=> bs!1255852 m!6462092))

(assert (=> d!1732658 d!1733174))

(declare-fun bs!1255853 () Bool)

(declare-fun d!1733176 () Bool)

(assert (= bs!1255853 (and d!1733176 b!5441029)))

(declare-fun lambda!286308 () Int)

(assert (=> bs!1255853 (not (= lambda!286308 lambda!286300))))

(declare-fun bs!1255854 () Bool)

(assert (= bs!1255854 (and d!1733176 b!5440909)))

(assert (=> bs!1255854 (not (= lambda!286308 lambda!286289))))

(declare-fun bs!1255855 () Bool)

(assert (= bs!1255855 (and d!1733176 d!1733104)))

(assert (=> bs!1255855 (= lambda!286308 lambda!286294)))

(declare-fun bs!1255856 () Bool)

(assert (= bs!1255856 (and d!1733176 d!1732658)))

(assert (=> bs!1255856 (= lambda!286308 lambda!286231)))

(declare-fun bs!1255857 () Bool)

(assert (= bs!1255857 (and d!1733176 b!5441101)))

(assert (=> bs!1255857 (not (= lambda!286308 lambda!286301))))

(declare-fun bs!1255858 () Bool)

(assert (= bs!1255858 (and d!1733176 b!5439206)))

(assert (=> bs!1255858 (= lambda!286308 lambda!286158)))

(declare-fun bs!1255859 () Bool)

(assert (= bs!1255859 (and d!1733176 b!5440411)))

(assert (=> bs!1255859 (not (= lambda!286308 lambda!286255))))

(declare-fun bs!1255860 () Bool)

(assert (= bs!1255860 (and d!1733176 b!5439559)))

(assert (=> bs!1255860 (not (= lambda!286308 lambda!286201))))

(declare-fun bs!1255861 () Bool)

(assert (= bs!1255861 (and d!1733176 b!5439367)))

(assert (=> bs!1255861 (not (= lambda!286308 lambda!286184))))

(declare-fun bs!1255862 () Bool)

(assert (= bs!1255862 (and d!1733176 b!5439371)))

(assert (=> bs!1255862 (not (= lambda!286308 lambda!286185))))

(declare-fun bs!1255863 () Bool)

(assert (= bs!1255863 (and d!1733176 b!5440459)))

(assert (=> bs!1255863 (not (= lambda!286308 lambda!286258))))

(declare-fun bs!1255864 () Bool)

(assert (= bs!1255864 (and d!1733176 b!5441016)))

(assert (=> bs!1255864 (not (= lambda!286308 lambda!286297))))

(declare-fun bs!1255865 () Bool)

(assert (= bs!1255865 (and d!1733176 b!5439522)))

(assert (=> bs!1255865 (not (= lambda!286308 lambda!286192))))

(declare-fun bs!1255866 () Bool)

(assert (= bs!1255866 (and d!1733176 b!5439555)))

(assert (=> bs!1255866 (not (= lambda!286308 lambda!286198))))

(declare-fun bs!1255867 () Bool)

(assert (= bs!1255867 (and d!1733176 b!5439526)))

(assert (=> bs!1255867 (not (= lambda!286308 lambda!286193))))

(declare-fun bs!1255868 () Bool)

(assert (= bs!1255868 (and d!1733176 b!5440463)))

(assert (=> bs!1255868 (not (= lambda!286308 lambda!286260))))

(declare-fun bs!1255869 () Bool)

(assert (= bs!1255869 (and d!1733176 b!5441105)))

(assert (=> bs!1255869 (not (= lambda!286308 lambda!286302))))

(declare-fun bs!1255870 () Bool)

(assert (= bs!1255870 (and d!1733176 b!5440913)))

(assert (=> bs!1255870 (not (= lambda!286308 lambda!286290))))

(declare-fun bs!1255871 () Bool)

(assert (= bs!1255871 (and d!1733176 b!5440415)))

(assert (=> bs!1255871 (not (= lambda!286308 lambda!286257))))

(declare-fun bs!1255872 () Bool)

(assert (= bs!1255872 (and d!1733176 b!5441025)))

(assert (=> bs!1255872 (not (= lambda!286308 lambda!286299))))

(declare-fun bs!1255873 () Bool)

(assert (= bs!1255873 (and d!1733176 d!1732656)))

(assert (=> bs!1255873 (= lambda!286308 lambda!286226)))

(assert (=> bs!1255856 (not (= lambda!286308 lambda!286232))))

(declare-fun bs!1255874 () Bool)

(assert (= bs!1255874 (and d!1733176 b!5441012)))

(assert (=> bs!1255874 (not (= lambda!286308 lambda!286296))))

(assert (=> bs!1255858 (not (= lambda!286308 lambda!286159))))

(assert (=> d!1733176 true))

(assert (=> d!1733176 true))

(assert (=> d!1733176 true))

(declare-fun lambda!286309 () Int)

(assert (=> bs!1255853 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regOne!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 r!7292) (regTwo!31026 (regOne!31027 (regTwo!31026 r!7292))))) (= lambda!286309 lambda!286300))))

(assert (=> bs!1255854 (not (= lambda!286309 lambda!286289))))

(assert (=> bs!1255855 (not (= lambda!286309 lambda!286294))))

(assert (=> bs!1255856 (not (= lambda!286309 lambda!286231))))

(assert (=> bs!1255857 (not (= lambda!286309 lambda!286301))))

(declare-fun bs!1255875 () Bool)

(assert (= bs!1255875 d!1733176))

(assert (=> bs!1255875 (not (= lambda!286309 lambda!286308))))

(assert (=> bs!1255858 (not (= lambda!286309 lambda!286158))))

(assert (=> bs!1255859 (not (= lambda!286309 lambda!286255))))

(assert (=> bs!1255860 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regTwo!31026 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regTwo!31026 r!7292)))) (= lambda!286309 lambda!286201))))

(assert (=> bs!1255861 (not (= lambda!286309 lambda!286184))))

(assert (=> bs!1255862 (= lambda!286309 lambda!286185)))

(assert (=> bs!1255863 (not (= lambda!286309 lambda!286258))))

(assert (=> bs!1255864 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regTwo!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 r!7292) (regTwo!31026 (regTwo!31027 (regOne!31026 r!7292))))) (= lambda!286309 lambda!286297))))

(assert (=> bs!1255865 (not (= lambda!286309 lambda!286192))))

(assert (=> bs!1255866 (not (= lambda!286309 lambda!286198))))

(assert (=> bs!1255867 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regOne!31026 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regOne!31026 r!7292)))) (= lambda!286309 lambda!286193))))

(assert (=> bs!1255868 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regTwo!31027 (regTwo!31026 r!7292)))) (= (regTwo!31026 r!7292) (regTwo!31026 (regTwo!31027 (regTwo!31026 r!7292))))) (= lambda!286309 lambda!286260))))

(assert (=> bs!1255869 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regOne!31027 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regOne!31027 r!7292)))) (= lambda!286309 lambda!286302))))

(assert (=> bs!1255870 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regOne!31027 (regOne!31026 r!7292)))) (= (regTwo!31026 r!7292) (regTwo!31026 (regOne!31027 (regOne!31026 r!7292))))) (= lambda!286309 lambda!286290))))

(assert (=> bs!1255871 (= (and (= (regOne!31026 r!7292) (regOne!31026 (regTwo!31027 r!7292))) (= (regTwo!31026 r!7292) (regTwo!31026 (regTwo!31027 r!7292)))) (= lambda!286309 lambda!286257))))

(assert (=> bs!1255872 (not (= lambda!286309 lambda!286299))))

(assert (=> bs!1255873 (not (= lambda!286309 lambda!286226))))

(assert (=> bs!1255856 (= lambda!286309 lambda!286232)))

(assert (=> bs!1255874 (not (= lambda!286309 lambda!286296))))

(assert (=> bs!1255858 (= lambda!286309 lambda!286159)))

(assert (=> d!1733176 true))

(assert (=> d!1733176 true))

(assert (=> d!1733176 true))

(assert (=> d!1733176 (= (Exists!2438 lambda!286308) (Exists!2438 lambda!286309))))

(assert (=> d!1733176 true))

(declare-fun _$90!1192 () Unit!154570)

(assert (=> d!1733176 (= (choose!41269 (regOne!31026 r!7292) (regTwo!31026 r!7292) s!2326) _$90!1192)))

(declare-fun m!6462094 () Bool)

(assert (=> bs!1255875 m!6462094))

(declare-fun m!6462096 () Bool)

(assert (=> bs!1255875 m!6462096))

(assert (=> d!1732658 d!1733176))

(assert (=> d!1732658 d!1732824))

(assert (=> d!1732558 d!1732560))

(assert (=> d!1732558 d!1732554))

(declare-fun d!1733178 () Bool)

(assert (=> d!1733178 (= (matchR!7442 (regOne!31026 r!7292) s!2326) (matchRSpec!2360 (regOne!31026 r!7292) s!2326))))

(assert (=> d!1733178 true))

(declare-fun _$88!3676 () Unit!154570)

(assert (=> d!1733178 (= (choose!41261 (regOne!31026 r!7292) s!2326) _$88!3676)))

(declare-fun bs!1255876 () Bool)

(assert (= bs!1255876 d!1733178))

(assert (=> bs!1255876 m!6460588))

(assert (=> bs!1255876 m!6460590))

(assert (=> d!1732558 d!1733178))

(assert (=> d!1732558 d!1732824))

(assert (=> b!5439921 d!1733112))

(declare-fun b!5441120 () Bool)

(declare-fun e!3370668 () Bool)

(declare-fun tp!1500022 () Bool)

(declare-fun tp!1500023 () Bool)

(assert (=> b!5441120 (= e!3370668 (and tp!1500022 tp!1500023))))

(assert (=> b!5439988 (= tp!1499793 e!3370668)))

(assert (= (and b!5439988 ((_ is Cons!61946) (exprs!5141 setElem!35559))) b!5441120))

(declare-fun b!5441121 () Bool)

(declare-fun e!3370669 () Bool)

(assert (=> b!5441121 (= e!3370669 tp_is_empty!39767)))

(assert (=> b!5440032 (= tp!1499841 e!3370669)))

(declare-fun b!5441123 () Bool)

(declare-fun tp!1500027 () Bool)

(assert (=> b!5441123 (= e!3370669 tp!1500027)))

(declare-fun b!5441122 () Bool)

(declare-fun tp!1500024 () Bool)

(declare-fun tp!1500026 () Bool)

(assert (=> b!5441122 (= e!3370669 (and tp!1500024 tp!1500026))))

(declare-fun b!5441124 () Bool)

(declare-fun tp!1500025 () Bool)

(declare-fun tp!1500028 () Bool)

(assert (=> b!5441124 (= e!3370669 (and tp!1500025 tp!1500028))))

(assert (= (and b!5440032 ((_ is ElementMatch!15257) (h!68394 (exprs!5141 setElem!35553)))) b!5441121))

(assert (= (and b!5440032 ((_ is Concat!24102) (h!68394 (exprs!5141 setElem!35553)))) b!5441122))

(assert (= (and b!5440032 ((_ is Star!15257) (h!68394 (exprs!5141 setElem!35553)))) b!5441123))

(assert (= (and b!5440032 ((_ is Union!15257) (h!68394 (exprs!5141 setElem!35553)))) b!5441124))

(declare-fun b!5441125 () Bool)

(declare-fun e!3370670 () Bool)

(declare-fun tp!1500029 () Bool)

(declare-fun tp!1500030 () Bool)

(assert (=> b!5441125 (= e!3370670 (and tp!1500029 tp!1500030))))

(assert (=> b!5440032 (= tp!1499842 e!3370670)))

(assert (= (and b!5440032 ((_ is Cons!61946) (t!375295 (exprs!5141 setElem!35553)))) b!5441125))

(declare-fun condSetEmpty!35569 () Bool)

(assert (=> setNonEmpty!35559 (= condSetEmpty!35569 (= setRest!35559 ((as const (Array Context!9282 Bool)) false)))))

(declare-fun setRes!35569 () Bool)

(assert (=> setNonEmpty!35559 (= tp!1499792 setRes!35569)))

(declare-fun setIsEmpty!35569 () Bool)

(assert (=> setIsEmpty!35569 setRes!35569))

(declare-fun setNonEmpty!35569 () Bool)

(declare-fun tp!1500031 () Bool)

(declare-fun e!3370671 () Bool)

(declare-fun setElem!35569 () Context!9282)

(assert (=> setNonEmpty!35569 (= setRes!35569 (and tp!1500031 (inv!81389 setElem!35569) e!3370671))))

(declare-fun setRest!35569 () (InoxSet Context!9282))

(assert (=> setNonEmpty!35569 (= setRest!35559 ((_ map or) (store ((as const (Array Context!9282 Bool)) false) setElem!35569 true) setRest!35569))))

(declare-fun b!5441126 () Bool)

(declare-fun tp!1500032 () Bool)

(assert (=> b!5441126 (= e!3370671 tp!1500032)))

(assert (= (and setNonEmpty!35559 condSetEmpty!35569) setIsEmpty!35569))

(assert (= (and setNonEmpty!35559 (not condSetEmpty!35569)) setNonEmpty!35569))

(assert (= setNonEmpty!35569 b!5441126))

(declare-fun m!6462098 () Bool)

(assert (=> setNonEmpty!35569 m!6462098))

(declare-fun b!5441127 () Bool)

(declare-fun e!3370672 () Bool)

(assert (=> b!5441127 (= e!3370672 tp_is_empty!39767)))

(assert (=> b!5440012 (= tp!1499819 e!3370672)))

(declare-fun b!5441129 () Bool)

(declare-fun tp!1500036 () Bool)

(assert (=> b!5441129 (= e!3370672 tp!1500036)))

(declare-fun b!5441128 () Bool)

(declare-fun tp!1500033 () Bool)

(declare-fun tp!1500035 () Bool)

(assert (=> b!5441128 (= e!3370672 (and tp!1500033 tp!1500035))))

(declare-fun b!5441130 () Bool)

(declare-fun tp!1500034 () Bool)

(declare-fun tp!1500037 () Bool)

(assert (=> b!5441130 (= e!3370672 (and tp!1500034 tp!1500037))))

(assert (= (and b!5440012 ((_ is ElementMatch!15257) (regOne!31026 (regOne!31027 r!7292)))) b!5441127))

(assert (= (and b!5440012 ((_ is Concat!24102) (regOne!31026 (regOne!31027 r!7292)))) b!5441128))

(assert (= (and b!5440012 ((_ is Star!15257) (regOne!31026 (regOne!31027 r!7292)))) b!5441129))

(assert (= (and b!5440012 ((_ is Union!15257) (regOne!31026 (regOne!31027 r!7292)))) b!5441130))

(declare-fun b!5441131 () Bool)

(declare-fun e!3370673 () Bool)

(assert (=> b!5441131 (= e!3370673 tp_is_empty!39767)))

(assert (=> b!5440012 (= tp!1499821 e!3370673)))

(declare-fun b!5441133 () Bool)

(declare-fun tp!1500041 () Bool)

(assert (=> b!5441133 (= e!3370673 tp!1500041)))

(declare-fun b!5441132 () Bool)

(declare-fun tp!1500038 () Bool)

(declare-fun tp!1500040 () Bool)

(assert (=> b!5441132 (= e!3370673 (and tp!1500038 tp!1500040))))

(declare-fun b!5441134 () Bool)

(declare-fun tp!1500039 () Bool)

(declare-fun tp!1500042 () Bool)

(assert (=> b!5441134 (= e!3370673 (and tp!1500039 tp!1500042))))

(assert (= (and b!5440012 ((_ is ElementMatch!15257) (regTwo!31026 (regOne!31027 r!7292)))) b!5441131))

(assert (= (and b!5440012 ((_ is Concat!24102) (regTwo!31026 (regOne!31027 r!7292)))) b!5441132))

(assert (= (and b!5440012 ((_ is Star!15257) (regTwo!31026 (regOne!31027 r!7292)))) b!5441133))

(assert (= (and b!5440012 ((_ is Union!15257) (regTwo!31026 (regOne!31027 r!7292)))) b!5441134))

(declare-fun b!5441135 () Bool)

(declare-fun e!3370674 () Bool)

(assert (=> b!5441135 (= e!3370674 tp_is_empty!39767)))

(assert (=> b!5440000 (= tp!1499804 e!3370674)))

(declare-fun b!5441137 () Bool)

(declare-fun tp!1500046 () Bool)

(assert (=> b!5441137 (= e!3370674 tp!1500046)))

(declare-fun b!5441136 () Bool)

(declare-fun tp!1500043 () Bool)

(declare-fun tp!1500045 () Bool)

(assert (=> b!5441136 (= e!3370674 (and tp!1500043 tp!1500045))))

(declare-fun b!5441138 () Bool)

(declare-fun tp!1500044 () Bool)

(declare-fun tp!1500047 () Bool)

(assert (=> b!5441138 (= e!3370674 (and tp!1500044 tp!1500047))))

(assert (= (and b!5440000 ((_ is ElementMatch!15257) (regOne!31026 (reg!15586 r!7292)))) b!5441135))

(assert (= (and b!5440000 ((_ is Concat!24102) (regOne!31026 (reg!15586 r!7292)))) b!5441136))

(assert (= (and b!5440000 ((_ is Star!15257) (regOne!31026 (reg!15586 r!7292)))) b!5441137))

(assert (= (and b!5440000 ((_ is Union!15257) (regOne!31026 (reg!15586 r!7292)))) b!5441138))

(declare-fun b!5441139 () Bool)

(declare-fun e!3370675 () Bool)

(assert (=> b!5441139 (= e!3370675 tp_is_empty!39767)))

(assert (=> b!5440000 (= tp!1499806 e!3370675)))

(declare-fun b!5441141 () Bool)

(declare-fun tp!1500051 () Bool)

(assert (=> b!5441141 (= e!3370675 tp!1500051)))

(declare-fun b!5441140 () Bool)

(declare-fun tp!1500048 () Bool)

(declare-fun tp!1500050 () Bool)

(assert (=> b!5441140 (= e!3370675 (and tp!1500048 tp!1500050))))

(declare-fun b!5441142 () Bool)

(declare-fun tp!1500049 () Bool)

(declare-fun tp!1500052 () Bool)

(assert (=> b!5441142 (= e!3370675 (and tp!1500049 tp!1500052))))

(assert (= (and b!5440000 ((_ is ElementMatch!15257) (regTwo!31026 (reg!15586 r!7292)))) b!5441139))

(assert (= (and b!5440000 ((_ is Concat!24102) (regTwo!31026 (reg!15586 r!7292)))) b!5441140))

(assert (= (and b!5440000 ((_ is Star!15257) (regTwo!31026 (reg!15586 r!7292)))) b!5441141))

(assert (= (and b!5440000 ((_ is Union!15257) (regTwo!31026 (reg!15586 r!7292)))) b!5441142))

(declare-fun b!5441144 () Bool)

(declare-fun e!3370677 () Bool)

(declare-fun tp!1500053 () Bool)

(assert (=> b!5441144 (= e!3370677 tp!1500053)))

(declare-fun b!5441143 () Bool)

(declare-fun e!3370676 () Bool)

(declare-fun tp!1500054 () Bool)

(assert (=> b!5441143 (= e!3370676 (and (inv!81389 (h!68395 (t!375296 (t!375296 zl!343)))) e!3370677 tp!1500054))))

(assert (=> b!5440025 (= tp!1499834 e!3370676)))

(assert (= b!5441143 b!5441144))

(assert (= (and b!5440025 ((_ is Cons!61947) (t!375296 (t!375296 zl!343)))) b!5441143))

(declare-fun m!6462100 () Bool)

(assert (=> b!5441143 m!6462100))

(declare-fun b!5441145 () Bool)

(declare-fun e!3370678 () Bool)

(assert (=> b!5441145 (= e!3370678 tp_is_empty!39767)))

(assert (=> b!5440001 (= tp!1499807 e!3370678)))

(declare-fun b!5441147 () Bool)

(declare-fun tp!1500058 () Bool)

(assert (=> b!5441147 (= e!3370678 tp!1500058)))

(declare-fun b!5441146 () Bool)

(declare-fun tp!1500055 () Bool)

(declare-fun tp!1500057 () Bool)

(assert (=> b!5441146 (= e!3370678 (and tp!1500055 tp!1500057))))

(declare-fun b!5441148 () Bool)

(declare-fun tp!1500056 () Bool)

(declare-fun tp!1500059 () Bool)

(assert (=> b!5441148 (= e!3370678 (and tp!1500056 tp!1500059))))

(assert (= (and b!5440001 ((_ is ElementMatch!15257) (reg!15586 (reg!15586 r!7292)))) b!5441145))

(assert (= (and b!5440001 ((_ is Concat!24102) (reg!15586 (reg!15586 r!7292)))) b!5441146))

(assert (= (and b!5440001 ((_ is Star!15257) (reg!15586 (reg!15586 r!7292)))) b!5441147))

(assert (= (and b!5440001 ((_ is Union!15257) (reg!15586 (reg!15586 r!7292)))) b!5441148))

(declare-fun b!5441149 () Bool)

(declare-fun e!3370679 () Bool)

(assert (=> b!5441149 (= e!3370679 tp_is_empty!39767)))

(assert (=> b!5440010 (= tp!1499815 e!3370679)))

(declare-fun b!5441151 () Bool)

(declare-fun tp!1500063 () Bool)

(assert (=> b!5441151 (= e!3370679 tp!1500063)))

(declare-fun b!5441150 () Bool)

(declare-fun tp!1500060 () Bool)

(declare-fun tp!1500062 () Bool)

(assert (=> b!5441150 (= e!3370679 (and tp!1500060 tp!1500062))))

(declare-fun b!5441152 () Bool)

(declare-fun tp!1500061 () Bool)

(declare-fun tp!1500064 () Bool)

(assert (=> b!5441152 (= e!3370679 (and tp!1500061 tp!1500064))))

(assert (= (and b!5440010 ((_ is ElementMatch!15257) (regOne!31027 (regTwo!31026 r!7292)))) b!5441149))

(assert (= (and b!5440010 ((_ is Concat!24102) (regOne!31027 (regTwo!31026 r!7292)))) b!5441150))

(assert (= (and b!5440010 ((_ is Star!15257) (regOne!31027 (regTwo!31026 r!7292)))) b!5441151))

(assert (= (and b!5440010 ((_ is Union!15257) (regOne!31027 (regTwo!31026 r!7292)))) b!5441152))

(declare-fun b!5441153 () Bool)

(declare-fun e!3370680 () Bool)

(assert (=> b!5441153 (= e!3370680 tp_is_empty!39767)))

(assert (=> b!5440010 (= tp!1499818 e!3370680)))

(declare-fun b!5441155 () Bool)

(declare-fun tp!1500068 () Bool)

(assert (=> b!5441155 (= e!3370680 tp!1500068)))

(declare-fun b!5441154 () Bool)

(declare-fun tp!1500065 () Bool)

(declare-fun tp!1500067 () Bool)

(assert (=> b!5441154 (= e!3370680 (and tp!1500065 tp!1500067))))

(declare-fun b!5441156 () Bool)

(declare-fun tp!1500066 () Bool)

(declare-fun tp!1500069 () Bool)

(assert (=> b!5441156 (= e!3370680 (and tp!1500066 tp!1500069))))

(assert (= (and b!5440010 ((_ is ElementMatch!15257) (regTwo!31027 (regTwo!31026 r!7292)))) b!5441153))

(assert (= (and b!5440010 ((_ is Concat!24102) (regTwo!31027 (regTwo!31026 r!7292)))) b!5441154))

(assert (= (and b!5440010 ((_ is Star!15257) (regTwo!31027 (regTwo!31026 r!7292)))) b!5441155))

(assert (= (and b!5440010 ((_ is Union!15257) (regTwo!31027 (regTwo!31026 r!7292)))) b!5441156))

(declare-fun b!5441157 () Bool)

(declare-fun e!3370681 () Bool)

(assert (=> b!5441157 (= e!3370681 tp_is_empty!39767)))

(assert (=> b!5440031 (= tp!1499839 e!3370681)))

(declare-fun b!5441159 () Bool)

(declare-fun tp!1500073 () Bool)

(assert (=> b!5441159 (= e!3370681 tp!1500073)))

(declare-fun b!5441158 () Bool)

(declare-fun tp!1500070 () Bool)

(declare-fun tp!1500072 () Bool)

(assert (=> b!5441158 (= e!3370681 (and tp!1500070 tp!1500072))))

(declare-fun b!5441160 () Bool)

(declare-fun tp!1500071 () Bool)

(declare-fun tp!1500074 () Bool)

(assert (=> b!5441160 (= e!3370681 (and tp!1500071 tp!1500074))))

(assert (= (and b!5440031 ((_ is ElementMatch!15257) (h!68394 (exprs!5141 (h!68395 zl!343))))) b!5441157))

(assert (= (and b!5440031 ((_ is Concat!24102) (h!68394 (exprs!5141 (h!68395 zl!343))))) b!5441158))

(assert (= (and b!5440031 ((_ is Star!15257) (h!68394 (exprs!5141 (h!68395 zl!343))))) b!5441159))

(assert (= (and b!5440031 ((_ is Union!15257) (h!68394 (exprs!5141 (h!68395 zl!343))))) b!5441160))

(declare-fun b!5441161 () Bool)

(declare-fun e!3370682 () Bool)

(declare-fun tp!1500075 () Bool)

(declare-fun tp!1500076 () Bool)

(assert (=> b!5441161 (= e!3370682 (and tp!1500075 tp!1500076))))

(assert (=> b!5440031 (= tp!1499840 e!3370682)))

(assert (= (and b!5440031 ((_ is Cons!61946) (t!375295 (exprs!5141 (h!68395 zl!343))))) b!5441161))

(declare-fun b!5441162 () Bool)

(declare-fun e!3370683 () Bool)

(assert (=> b!5441162 (= e!3370683 tp_is_empty!39767)))

(assert (=> b!5440008 (= tp!1499814 e!3370683)))

(declare-fun b!5441164 () Bool)

(declare-fun tp!1500080 () Bool)

(assert (=> b!5441164 (= e!3370683 tp!1500080)))

(declare-fun b!5441163 () Bool)

(declare-fun tp!1500077 () Bool)

(declare-fun tp!1500079 () Bool)

(assert (=> b!5441163 (= e!3370683 (and tp!1500077 tp!1500079))))

(declare-fun b!5441165 () Bool)

(declare-fun tp!1500078 () Bool)

(declare-fun tp!1500081 () Bool)

(assert (=> b!5441165 (= e!3370683 (and tp!1500078 tp!1500081))))

(assert (= (and b!5440008 ((_ is ElementMatch!15257) (regOne!31026 (regTwo!31026 r!7292)))) b!5441162))

(assert (= (and b!5440008 ((_ is Concat!24102) (regOne!31026 (regTwo!31026 r!7292)))) b!5441163))

(assert (= (and b!5440008 ((_ is Star!15257) (regOne!31026 (regTwo!31026 r!7292)))) b!5441164))

(assert (= (and b!5440008 ((_ is Union!15257) (regOne!31026 (regTwo!31026 r!7292)))) b!5441165))

(declare-fun b!5441166 () Bool)

(declare-fun e!3370684 () Bool)

(assert (=> b!5441166 (= e!3370684 tp_is_empty!39767)))

(assert (=> b!5440008 (= tp!1499816 e!3370684)))

(declare-fun b!5441168 () Bool)

(declare-fun tp!1500085 () Bool)

(assert (=> b!5441168 (= e!3370684 tp!1500085)))

(declare-fun b!5441167 () Bool)

(declare-fun tp!1500082 () Bool)

(declare-fun tp!1500084 () Bool)

(assert (=> b!5441167 (= e!3370684 (and tp!1500082 tp!1500084))))

(declare-fun b!5441169 () Bool)

(declare-fun tp!1500083 () Bool)

(declare-fun tp!1500086 () Bool)

(assert (=> b!5441169 (= e!3370684 (and tp!1500083 tp!1500086))))

(assert (= (and b!5440008 ((_ is ElementMatch!15257) (regTwo!31026 (regTwo!31026 r!7292)))) b!5441166))

(assert (= (and b!5440008 ((_ is Concat!24102) (regTwo!31026 (regTwo!31026 r!7292)))) b!5441167))

(assert (= (and b!5440008 ((_ is Star!15257) (regTwo!31026 (regTwo!31026 r!7292)))) b!5441168))

(assert (= (and b!5440008 ((_ is Union!15257) (regTwo!31026 (regTwo!31026 r!7292)))) b!5441169))

(declare-fun b!5441170 () Bool)

(declare-fun e!3370685 () Bool)

(assert (=> b!5441170 (= e!3370685 tp_is_empty!39767)))

(assert (=> b!5440009 (= tp!1499817 e!3370685)))

(declare-fun b!5441172 () Bool)

(declare-fun tp!1500090 () Bool)

(assert (=> b!5441172 (= e!3370685 tp!1500090)))

(declare-fun b!5441171 () Bool)

(declare-fun tp!1500087 () Bool)

(declare-fun tp!1500089 () Bool)

(assert (=> b!5441171 (= e!3370685 (and tp!1500087 tp!1500089))))

(declare-fun b!5441173 () Bool)

(declare-fun tp!1500088 () Bool)

(declare-fun tp!1500091 () Bool)

(assert (=> b!5441173 (= e!3370685 (and tp!1500088 tp!1500091))))

(assert (= (and b!5440009 ((_ is ElementMatch!15257) (reg!15586 (regTwo!31026 r!7292)))) b!5441170))

(assert (= (and b!5440009 ((_ is Concat!24102) (reg!15586 (regTwo!31026 r!7292)))) b!5441171))

(assert (= (and b!5440009 ((_ is Star!15257) (reg!15586 (regTwo!31026 r!7292)))) b!5441172))

(assert (= (and b!5440009 ((_ is Union!15257) (reg!15586 (regTwo!31026 r!7292)))) b!5441173))

(declare-fun b!5441174 () Bool)

(declare-fun e!3370686 () Bool)

(assert (=> b!5441174 (= e!3370686 tp_is_empty!39767)))

(assert (=> b!5440018 (= tp!1499825 e!3370686)))

(declare-fun b!5441176 () Bool)

(declare-fun tp!1500095 () Bool)

(assert (=> b!5441176 (= e!3370686 tp!1500095)))

(declare-fun b!5441175 () Bool)

(declare-fun tp!1500092 () Bool)

(declare-fun tp!1500094 () Bool)

(assert (=> b!5441175 (= e!3370686 (and tp!1500092 tp!1500094))))

(declare-fun b!5441177 () Bool)

(declare-fun tp!1500093 () Bool)

(declare-fun tp!1500096 () Bool)

(assert (=> b!5441177 (= e!3370686 (and tp!1500093 tp!1500096))))

(assert (= (and b!5440018 ((_ is ElementMatch!15257) (regOne!31027 (regTwo!31027 r!7292)))) b!5441174))

(assert (= (and b!5440018 ((_ is Concat!24102) (regOne!31027 (regTwo!31027 r!7292)))) b!5441175))

(assert (= (and b!5440018 ((_ is Star!15257) (regOne!31027 (regTwo!31027 r!7292)))) b!5441176))

(assert (= (and b!5440018 ((_ is Union!15257) (regOne!31027 (regTwo!31027 r!7292)))) b!5441177))

(declare-fun b!5441178 () Bool)

(declare-fun e!3370687 () Bool)

(assert (=> b!5441178 (= e!3370687 tp_is_empty!39767)))

(assert (=> b!5440018 (= tp!1499828 e!3370687)))

(declare-fun b!5441180 () Bool)

(declare-fun tp!1500100 () Bool)

(assert (=> b!5441180 (= e!3370687 tp!1500100)))

(declare-fun b!5441179 () Bool)

(declare-fun tp!1500097 () Bool)

(declare-fun tp!1500099 () Bool)

(assert (=> b!5441179 (= e!3370687 (and tp!1500097 tp!1500099))))

(declare-fun b!5441181 () Bool)

(declare-fun tp!1500098 () Bool)

(declare-fun tp!1500101 () Bool)

(assert (=> b!5441181 (= e!3370687 (and tp!1500098 tp!1500101))))

(assert (= (and b!5440018 ((_ is ElementMatch!15257) (regTwo!31027 (regTwo!31027 r!7292)))) b!5441178))

(assert (= (and b!5440018 ((_ is Concat!24102) (regTwo!31027 (regTwo!31027 r!7292)))) b!5441179))

(assert (= (and b!5440018 ((_ is Star!15257) (regTwo!31027 (regTwo!31027 r!7292)))) b!5441180))

(assert (= (and b!5440018 ((_ is Union!15257) (regTwo!31027 (regTwo!31027 r!7292)))) b!5441181))

(declare-fun b!5441182 () Bool)

(declare-fun e!3370688 () Bool)

(declare-fun tp!1500102 () Bool)

(declare-fun tp!1500103 () Bool)

(assert (=> b!5441182 (= e!3370688 (and tp!1500102 tp!1500103))))

(assert (=> b!5440026 (= tp!1499833 e!3370688)))

(assert (= (and b!5440026 ((_ is Cons!61946) (exprs!5141 (h!68395 (t!375296 zl!343))))) b!5441182))

(declare-fun b!5441183 () Bool)

(declare-fun e!3370689 () Bool)

(assert (=> b!5441183 (= e!3370689 tp_is_empty!39767)))

(assert (=> b!5440002 (= tp!1499805 e!3370689)))

(declare-fun b!5441185 () Bool)

(declare-fun tp!1500107 () Bool)

(assert (=> b!5441185 (= e!3370689 tp!1500107)))

(declare-fun b!5441184 () Bool)

(declare-fun tp!1500104 () Bool)

(declare-fun tp!1500106 () Bool)

(assert (=> b!5441184 (= e!3370689 (and tp!1500104 tp!1500106))))

(declare-fun b!5441186 () Bool)

(declare-fun tp!1500105 () Bool)

(declare-fun tp!1500108 () Bool)

(assert (=> b!5441186 (= e!3370689 (and tp!1500105 tp!1500108))))

(assert (= (and b!5440002 ((_ is ElementMatch!15257) (regOne!31027 (reg!15586 r!7292)))) b!5441183))

(assert (= (and b!5440002 ((_ is Concat!24102) (regOne!31027 (reg!15586 r!7292)))) b!5441184))

(assert (= (and b!5440002 ((_ is Star!15257) (regOne!31027 (reg!15586 r!7292)))) b!5441185))

(assert (= (and b!5440002 ((_ is Union!15257) (regOne!31027 (reg!15586 r!7292)))) b!5441186))

(declare-fun b!5441187 () Bool)

(declare-fun e!3370690 () Bool)

(assert (=> b!5441187 (= e!3370690 tp_is_empty!39767)))

(assert (=> b!5440002 (= tp!1499808 e!3370690)))

(declare-fun b!5441189 () Bool)

(declare-fun tp!1500112 () Bool)

(assert (=> b!5441189 (= e!3370690 tp!1500112)))

(declare-fun b!5441188 () Bool)

(declare-fun tp!1500109 () Bool)

(declare-fun tp!1500111 () Bool)

(assert (=> b!5441188 (= e!3370690 (and tp!1500109 tp!1500111))))

(declare-fun b!5441190 () Bool)

(declare-fun tp!1500110 () Bool)

(declare-fun tp!1500113 () Bool)

(assert (=> b!5441190 (= e!3370690 (and tp!1500110 tp!1500113))))

(assert (= (and b!5440002 ((_ is ElementMatch!15257) (regTwo!31027 (reg!15586 r!7292)))) b!5441187))

(assert (= (and b!5440002 ((_ is Concat!24102) (regTwo!31027 (reg!15586 r!7292)))) b!5441188))

(assert (= (and b!5440002 ((_ is Star!15257) (regTwo!31027 (reg!15586 r!7292)))) b!5441189))

(assert (= (and b!5440002 ((_ is Union!15257) (regTwo!31027 (reg!15586 r!7292)))) b!5441190))

(declare-fun b!5441191 () Bool)

(declare-fun e!3370691 () Bool)

(assert (=> b!5441191 (= e!3370691 tp_is_empty!39767)))

(assert (=> b!5440016 (= tp!1499824 e!3370691)))

(declare-fun b!5441193 () Bool)

(declare-fun tp!1500117 () Bool)

(assert (=> b!5441193 (= e!3370691 tp!1500117)))

(declare-fun b!5441192 () Bool)

(declare-fun tp!1500114 () Bool)

(declare-fun tp!1500116 () Bool)

(assert (=> b!5441192 (= e!3370691 (and tp!1500114 tp!1500116))))

(declare-fun b!5441194 () Bool)

(declare-fun tp!1500115 () Bool)

(declare-fun tp!1500118 () Bool)

(assert (=> b!5441194 (= e!3370691 (and tp!1500115 tp!1500118))))

(assert (= (and b!5440016 ((_ is ElementMatch!15257) (regOne!31026 (regTwo!31027 r!7292)))) b!5441191))

(assert (= (and b!5440016 ((_ is Concat!24102) (regOne!31026 (regTwo!31027 r!7292)))) b!5441192))

(assert (= (and b!5440016 ((_ is Star!15257) (regOne!31026 (regTwo!31027 r!7292)))) b!5441193))

(assert (= (and b!5440016 ((_ is Union!15257) (regOne!31026 (regTwo!31027 r!7292)))) b!5441194))

(declare-fun b!5441195 () Bool)

(declare-fun e!3370692 () Bool)

(assert (=> b!5441195 (= e!3370692 tp_is_empty!39767)))

(assert (=> b!5440016 (= tp!1499826 e!3370692)))

(declare-fun b!5441197 () Bool)

(declare-fun tp!1500122 () Bool)

(assert (=> b!5441197 (= e!3370692 tp!1500122)))

(declare-fun b!5441196 () Bool)

(declare-fun tp!1500119 () Bool)

(declare-fun tp!1500121 () Bool)

(assert (=> b!5441196 (= e!3370692 (and tp!1500119 tp!1500121))))

(declare-fun b!5441198 () Bool)

(declare-fun tp!1500120 () Bool)

(declare-fun tp!1500123 () Bool)

(assert (=> b!5441198 (= e!3370692 (and tp!1500120 tp!1500123))))

(assert (= (and b!5440016 ((_ is ElementMatch!15257) (regTwo!31026 (regTwo!31027 r!7292)))) b!5441195))

(assert (= (and b!5440016 ((_ is Concat!24102) (regTwo!31026 (regTwo!31027 r!7292)))) b!5441196))

(assert (= (and b!5440016 ((_ is Star!15257) (regTwo!31026 (regTwo!31027 r!7292)))) b!5441197))

(assert (= (and b!5440016 ((_ is Union!15257) (regTwo!31026 (regTwo!31027 r!7292)))) b!5441198))

(declare-fun b!5441199 () Bool)

(declare-fun e!3370693 () Bool)

(assert (=> b!5441199 (= e!3370693 tp_is_empty!39767)))

(assert (=> b!5440017 (= tp!1499827 e!3370693)))

(declare-fun b!5441201 () Bool)

(declare-fun tp!1500127 () Bool)

(assert (=> b!5441201 (= e!3370693 tp!1500127)))

(declare-fun b!5441200 () Bool)

(declare-fun tp!1500124 () Bool)

(declare-fun tp!1500126 () Bool)

(assert (=> b!5441200 (= e!3370693 (and tp!1500124 tp!1500126))))

(declare-fun b!5441202 () Bool)

(declare-fun tp!1500125 () Bool)

(declare-fun tp!1500128 () Bool)

(assert (=> b!5441202 (= e!3370693 (and tp!1500125 tp!1500128))))

(assert (= (and b!5440017 ((_ is ElementMatch!15257) (reg!15586 (regTwo!31027 r!7292)))) b!5441199))

(assert (= (and b!5440017 ((_ is Concat!24102) (reg!15586 (regTwo!31027 r!7292)))) b!5441200))

(assert (= (and b!5440017 ((_ is Star!15257) (reg!15586 (regTwo!31027 r!7292)))) b!5441201))

(assert (= (and b!5440017 ((_ is Union!15257) (reg!15586 (regTwo!31027 r!7292)))) b!5441202))

(declare-fun b!5441203 () Bool)

(declare-fun e!3370694 () Bool)

(declare-fun tp!1500129 () Bool)

(assert (=> b!5441203 (= e!3370694 (and tp_is_empty!39767 tp!1500129))))

(assert (=> b!5440037 (= tp!1499845 e!3370694)))

(assert (= (and b!5440037 ((_ is Cons!61948) (t!375297 (t!375297 s!2326)))) b!5441203))

(declare-fun b!5441204 () Bool)

(declare-fun e!3370695 () Bool)

(assert (=> b!5441204 (= e!3370695 tp_is_empty!39767)))

(assert (=> b!5440005 (= tp!1499812 e!3370695)))

(declare-fun b!5441206 () Bool)

(declare-fun tp!1500133 () Bool)

(assert (=> b!5441206 (= e!3370695 tp!1500133)))

(declare-fun b!5441205 () Bool)

(declare-fun tp!1500130 () Bool)

(declare-fun tp!1500132 () Bool)

(assert (=> b!5441205 (= e!3370695 (and tp!1500130 tp!1500132))))

(declare-fun b!5441207 () Bool)

(declare-fun tp!1500131 () Bool)

(declare-fun tp!1500134 () Bool)

(assert (=> b!5441207 (= e!3370695 (and tp!1500131 tp!1500134))))

(assert (= (and b!5440005 ((_ is ElementMatch!15257) (reg!15586 (regOne!31026 r!7292)))) b!5441204))

(assert (= (and b!5440005 ((_ is Concat!24102) (reg!15586 (regOne!31026 r!7292)))) b!5441205))

(assert (= (and b!5440005 ((_ is Star!15257) (reg!15586 (regOne!31026 r!7292)))) b!5441206))

(assert (= (and b!5440005 ((_ is Union!15257) (reg!15586 (regOne!31026 r!7292)))) b!5441207))

(declare-fun b!5441208 () Bool)

(declare-fun e!3370696 () Bool)

(assert (=> b!5441208 (= e!3370696 tp_is_empty!39767)))

(assert (=> b!5440014 (= tp!1499820 e!3370696)))

(declare-fun b!5441210 () Bool)

(declare-fun tp!1500138 () Bool)

(assert (=> b!5441210 (= e!3370696 tp!1500138)))

(declare-fun b!5441209 () Bool)

(declare-fun tp!1500135 () Bool)

(declare-fun tp!1500137 () Bool)

(assert (=> b!5441209 (= e!3370696 (and tp!1500135 tp!1500137))))

(declare-fun b!5441211 () Bool)

(declare-fun tp!1500136 () Bool)

(declare-fun tp!1500139 () Bool)

(assert (=> b!5441211 (= e!3370696 (and tp!1500136 tp!1500139))))

(assert (= (and b!5440014 ((_ is ElementMatch!15257) (regOne!31027 (regOne!31027 r!7292)))) b!5441208))

(assert (= (and b!5440014 ((_ is Concat!24102) (regOne!31027 (regOne!31027 r!7292)))) b!5441209))

(assert (= (and b!5440014 ((_ is Star!15257) (regOne!31027 (regOne!31027 r!7292)))) b!5441210))

(assert (= (and b!5440014 ((_ is Union!15257) (regOne!31027 (regOne!31027 r!7292)))) b!5441211))

(declare-fun b!5441212 () Bool)

(declare-fun e!3370697 () Bool)

(assert (=> b!5441212 (= e!3370697 tp_is_empty!39767)))

(assert (=> b!5440014 (= tp!1499823 e!3370697)))

(declare-fun b!5441214 () Bool)

(declare-fun tp!1500143 () Bool)

(assert (=> b!5441214 (= e!3370697 tp!1500143)))

(declare-fun b!5441213 () Bool)

(declare-fun tp!1500140 () Bool)

(declare-fun tp!1500142 () Bool)

(assert (=> b!5441213 (= e!3370697 (and tp!1500140 tp!1500142))))

(declare-fun b!5441215 () Bool)

(declare-fun tp!1500141 () Bool)

(declare-fun tp!1500144 () Bool)

(assert (=> b!5441215 (= e!3370697 (and tp!1500141 tp!1500144))))

(assert (= (and b!5440014 ((_ is ElementMatch!15257) (regTwo!31027 (regOne!31027 r!7292)))) b!5441212))

(assert (= (and b!5440014 ((_ is Concat!24102) (regTwo!31027 (regOne!31027 r!7292)))) b!5441213))

(assert (= (and b!5440014 ((_ is Star!15257) (regTwo!31027 (regOne!31027 r!7292)))) b!5441214))

(assert (= (and b!5440014 ((_ is Union!15257) (regTwo!31027 (regOne!31027 r!7292)))) b!5441215))

(declare-fun b!5441216 () Bool)

(declare-fun e!3370698 () Bool)

(assert (=> b!5441216 (= e!3370698 tp_is_empty!39767)))

(assert (=> b!5440013 (= tp!1499822 e!3370698)))

(declare-fun b!5441218 () Bool)

(declare-fun tp!1500148 () Bool)

(assert (=> b!5441218 (= e!3370698 tp!1500148)))

(declare-fun b!5441217 () Bool)

(declare-fun tp!1500145 () Bool)

(declare-fun tp!1500147 () Bool)

(assert (=> b!5441217 (= e!3370698 (and tp!1500145 tp!1500147))))

(declare-fun b!5441219 () Bool)

(declare-fun tp!1500146 () Bool)

(declare-fun tp!1500149 () Bool)

(assert (=> b!5441219 (= e!3370698 (and tp!1500146 tp!1500149))))

(assert (= (and b!5440013 ((_ is ElementMatch!15257) (reg!15586 (regOne!31027 r!7292)))) b!5441216))

(assert (= (and b!5440013 ((_ is Concat!24102) (reg!15586 (regOne!31027 r!7292)))) b!5441217))

(assert (= (and b!5440013 ((_ is Star!15257) (reg!15586 (regOne!31027 r!7292)))) b!5441218))

(assert (= (and b!5440013 ((_ is Union!15257) (reg!15586 (regOne!31027 r!7292)))) b!5441219))

(declare-fun b!5441220 () Bool)

(declare-fun e!3370699 () Bool)

(assert (=> b!5441220 (= e!3370699 tp_is_empty!39767)))

(assert (=> b!5440004 (= tp!1499809 e!3370699)))

(declare-fun b!5441222 () Bool)

(declare-fun tp!1500153 () Bool)

(assert (=> b!5441222 (= e!3370699 tp!1500153)))

(declare-fun b!5441221 () Bool)

(declare-fun tp!1500150 () Bool)

(declare-fun tp!1500152 () Bool)

(assert (=> b!5441221 (= e!3370699 (and tp!1500150 tp!1500152))))

(declare-fun b!5441223 () Bool)

(declare-fun tp!1500151 () Bool)

(declare-fun tp!1500154 () Bool)

(assert (=> b!5441223 (= e!3370699 (and tp!1500151 tp!1500154))))

(assert (= (and b!5440004 ((_ is ElementMatch!15257) (regOne!31026 (regOne!31026 r!7292)))) b!5441220))

(assert (= (and b!5440004 ((_ is Concat!24102) (regOne!31026 (regOne!31026 r!7292)))) b!5441221))

(assert (= (and b!5440004 ((_ is Star!15257) (regOne!31026 (regOne!31026 r!7292)))) b!5441222))

(assert (= (and b!5440004 ((_ is Union!15257) (regOne!31026 (regOne!31026 r!7292)))) b!5441223))

(declare-fun b!5441224 () Bool)

(declare-fun e!3370700 () Bool)

(assert (=> b!5441224 (= e!3370700 tp_is_empty!39767)))

(assert (=> b!5440004 (= tp!1499811 e!3370700)))

(declare-fun b!5441226 () Bool)

(declare-fun tp!1500158 () Bool)

(assert (=> b!5441226 (= e!3370700 tp!1500158)))

(declare-fun b!5441225 () Bool)

(declare-fun tp!1500155 () Bool)

(declare-fun tp!1500157 () Bool)

(assert (=> b!5441225 (= e!3370700 (and tp!1500155 tp!1500157))))

(declare-fun b!5441227 () Bool)

(declare-fun tp!1500156 () Bool)

(declare-fun tp!1500159 () Bool)

(assert (=> b!5441227 (= e!3370700 (and tp!1500156 tp!1500159))))

(assert (= (and b!5440004 ((_ is ElementMatch!15257) (regTwo!31026 (regOne!31026 r!7292)))) b!5441224))

(assert (= (and b!5440004 ((_ is Concat!24102) (regTwo!31026 (regOne!31026 r!7292)))) b!5441225))

(assert (= (and b!5440004 ((_ is Star!15257) (regTwo!31026 (regOne!31026 r!7292)))) b!5441226))

(assert (= (and b!5440004 ((_ is Union!15257) (regTwo!31026 (regOne!31026 r!7292)))) b!5441227))

(declare-fun b!5441228 () Bool)

(declare-fun e!3370701 () Bool)

(assert (=> b!5441228 (= e!3370701 tp_is_empty!39767)))

(assert (=> b!5440006 (= tp!1499810 e!3370701)))

(declare-fun b!5441230 () Bool)

(declare-fun tp!1500163 () Bool)

(assert (=> b!5441230 (= e!3370701 tp!1500163)))

(declare-fun b!5441229 () Bool)

(declare-fun tp!1500160 () Bool)

(declare-fun tp!1500162 () Bool)

(assert (=> b!5441229 (= e!3370701 (and tp!1500160 tp!1500162))))

(declare-fun b!5441231 () Bool)

(declare-fun tp!1500161 () Bool)

(declare-fun tp!1500164 () Bool)

(assert (=> b!5441231 (= e!3370701 (and tp!1500161 tp!1500164))))

(assert (= (and b!5440006 ((_ is ElementMatch!15257) (regOne!31027 (regOne!31026 r!7292)))) b!5441228))

(assert (= (and b!5440006 ((_ is Concat!24102) (regOne!31027 (regOne!31026 r!7292)))) b!5441229))

(assert (= (and b!5440006 ((_ is Star!15257) (regOne!31027 (regOne!31026 r!7292)))) b!5441230))

(assert (= (and b!5440006 ((_ is Union!15257) (regOne!31027 (regOne!31026 r!7292)))) b!5441231))

(declare-fun b!5441232 () Bool)

(declare-fun e!3370702 () Bool)

(assert (=> b!5441232 (= e!3370702 tp_is_empty!39767)))

(assert (=> b!5440006 (= tp!1499813 e!3370702)))

(declare-fun b!5441234 () Bool)

(declare-fun tp!1500168 () Bool)

(assert (=> b!5441234 (= e!3370702 tp!1500168)))

(declare-fun b!5441233 () Bool)

(declare-fun tp!1500165 () Bool)

(declare-fun tp!1500167 () Bool)

(assert (=> b!5441233 (= e!3370702 (and tp!1500165 tp!1500167))))

(declare-fun b!5441235 () Bool)

(declare-fun tp!1500166 () Bool)

(declare-fun tp!1500169 () Bool)

(assert (=> b!5441235 (= e!3370702 (and tp!1500166 tp!1500169))))

(assert (= (and b!5440006 ((_ is ElementMatch!15257) (regTwo!31027 (regOne!31026 r!7292)))) b!5441232))

(assert (= (and b!5440006 ((_ is Concat!24102) (regTwo!31027 (regOne!31026 r!7292)))) b!5441233))

(assert (= (and b!5440006 ((_ is Star!15257) (regTwo!31027 (regOne!31026 r!7292)))) b!5441234))

(assert (= (and b!5440006 ((_ is Union!15257) (regTwo!31027 (regOne!31026 r!7292)))) b!5441235))

(declare-fun b_lambda!207429 () Bool)

(assert (= b_lambda!207427 (or b!5439217 b_lambda!207429)))

(assert (=> d!1733158 d!1732690))

(declare-fun b_lambda!207431 () Bool)

(assert (= b_lambda!207417 (or d!1732610 b_lambda!207431)))

(declare-fun bs!1255877 () Bool)

(declare-fun d!1733180 () Bool)

(assert (= bs!1255877 (and d!1733180 d!1732610)))

(assert (=> bs!1255877 (= (dynLambda!24381 lambda!286216 (h!68394 lt!2218678)) (validRegex!6993 (h!68394 lt!2218678)))))

(declare-fun m!6462102 () Bool)

(assert (=> bs!1255877 m!6462102))

(assert (=> b!5440885 d!1733180))

(declare-fun b_lambda!207433 () Bool)

(assert (= b_lambda!207391 (or d!1732612 b_lambda!207433)))

(declare-fun bs!1255878 () Bool)

(declare-fun d!1733182 () Bool)

(assert (= bs!1255878 (and d!1733182 d!1732612)))

(assert (=> bs!1255878 (= (dynLambda!24381 lambda!286219 (h!68394 (exprs!5141 (h!68395 zl!343)))) (validRegex!6993 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(declare-fun m!6462104 () Bool)

(assert (=> bs!1255878 m!6462104))

(assert (=> b!5440569 d!1733182))

(declare-fun b_lambda!207435 () Bool)

(assert (= b_lambda!207423 (or d!1732632 b_lambda!207435)))

(declare-fun bs!1255879 () Bool)

(declare-fun d!1733184 () Bool)

(assert (= bs!1255879 (and d!1733184 d!1732632)))

(assert (=> bs!1255879 (= (dynLambda!24381 lambda!286223 (h!68394 (exprs!5141 setElem!35553))) (validRegex!6993 (h!68394 (exprs!5141 setElem!35553))))))

(declare-fun m!6462106 () Bool)

(assert (=> bs!1255879 m!6462106))

(assert (=> b!5440920 d!1733184))

(declare-fun b_lambda!207437 () Bool)

(assert (= b_lambda!207425 (or b!5439215 b_lambda!207437)))

(declare-fun bs!1255880 () Bool)

(declare-fun d!1733186 () Bool)

(assert (= bs!1255880 (and d!1733186 b!5439215)))

(assert (=> bs!1255880 (= (dynLambda!24381 lambda!286161 (h!68394 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))))) (validRegex!6993 (h!68394 (t!375295 (t!375295 (exprs!5141 (h!68395 zl!343)))))))))

(declare-fun m!6462108 () Bool)

(assert (=> bs!1255880 m!6462108))

(assert (=> b!5440949 d!1733186))

(declare-fun b_lambda!207439 () Bool)

(assert (= b_lambda!207419 (or d!1732588 b_lambda!207439)))

(declare-fun bs!1255881 () Bool)

(declare-fun d!1733188 () Bool)

(assert (= bs!1255881 (and d!1733188 d!1732588)))

(assert (=> bs!1255881 (= (dynLambda!24381 lambda!286213 (h!68394 (unfocusZipperList!699 zl!343))) (validRegex!6993 (h!68394 (unfocusZipperList!699 zl!343))))))

(declare-fun m!6462110 () Bool)

(assert (=> bs!1255881 m!6462110))

(assert (=> b!5440907 d!1733188))

(declare-fun b_lambda!207441 () Bool)

(assert (= b_lambda!207421 (or b!5439217 b_lambda!207441)))

(assert (=> d!1733078 d!1732688))

(declare-fun b_lambda!207443 () Bool)

(assert (= b_lambda!207399 (or d!1732624 b_lambda!207443)))

(declare-fun bs!1255882 () Bool)

(declare-fun d!1733190 () Bool)

(assert (= bs!1255882 (and d!1733190 d!1732624)))

(assert (=> bs!1255882 (= (dynLambda!24381 lambda!286222 (h!68394 (exprs!5141 (h!68395 zl!343)))) (validRegex!6993 (h!68394 (exprs!5141 (h!68395 zl!343)))))))

(assert (=> bs!1255882 m!6462104))

(assert (=> b!5440652 d!1733190))

(check-sat (not b!5440950) (not bm!390244) (not b!5440400) (not b!5440910) (not bm!390261) (not b_lambda!207379) (not b_lambda!207377) (not b!5440670) (not bm!390266) (not b!5440487) (not bm!390232) (not bm!390152) (not b!5440660) (not b!5441189) (not b!5441141) (not bs!1255879) (not b!5441024) (not d!1732918) (not b!5440863) (not b!5440674) (not b!5441235) (not b!5441152) tp_is_empty!39767 (not b!5440691) (not d!1733038) (not b_lambda!207437) (not bm!390271) (not b!5440671) (not d!1733024) (not b!5441179) (not b!5440659) (not b!5441175) (not b!5440585) (not b!5441206) (not d!1733140) (not d!1733096) (not d!1732828) (not b_lambda!207375) (not b!5441039) (not b!5441167) (not b!5440558) (not b!5441044) (not bm!390203) (not b!5441194) (not b!5440916) (not b!5441143) (not b!5440661) (not bm!390258) (not b!5441136) (not b!5441172) (not b_lambda!207443) (not b!5440851) (not b!5440586) (not bm!390246) (not d!1733088) (not setNonEmpty!35567) (not b!5441068) (not b!5440908) (not b!5440739) (not b!5440668) (not b!5441161) (not d!1733014) (not b!5441169) (not b!5441013) (not b!5440418) (not b!5441155) (not b!5441076) (not b!5441129) (not bs!1255881) (not b!5440466) (not b!5441209) (not bm!390272) (not d!1732920) (not b!5441125) (not b!5441181) (not b!5441230) (not bm!390235) (not b!5440897) (not d!1732902) (not b_lambda!207441) (not d!1732892) (not bm!390256) (not d!1733134) (not b!5441188) (not b!5441171) (not b!5441150) (not b!5441180) (not bm!390241) (not b!5441219) (not b!5441177) (not d!1732994) (not b!5441217) (not bm!390204) (not b!5441065) (not b!5441223) (not b!5441182) (not d!1732986) (not b!5441168) (not b_lambda!207429) (not bs!1255878) (not b!5440491) (not d!1733094) (not b!5441173) (not b!5441148) (not b!5440767) (not b!5440994) (not b!5441215) (not bm!390284) (not d!1733136) (not b!5441165) (not d!1733104) (not b!5440392) (not b!5441088) (not d!1733106) (not d!1732974) (not b!5441201) (not bm!390251) (not d!1733076) (not b!5440673) (not b!5440886) (not b!5441071) (not d!1733098) (not bm!390159) (not b!5441159) (not b!5441233) (not bm!390274) (not b!5441019) (not b!5441222) (not b!5440482) (not d!1733064) (not b!5441202) (not d!1732996) (not b!5440401) (not b!5441084) (not bm!390177) (not b!5441108) (not b!5440883) (not bm!390227) (not bm!390242) (not b!5440987) (not b!5440665) (not b!5440963) (not b!5440956) (not setNonEmpty!35565) (not b!5440398) (not b!5441073) (not b!5440656) (not b!5441160) (not d!1733158) (not b!5441100) (not bm!390285) (not b!5441227) (not d!1733028) (not b!5441197) (not bm!390219) (not d!1733144) (not bm!390231) (not b!5440639) (not d!1733162) (not b!5441164) (not b_lambda!207431) (not b!5441137) (not b!5441185) (not d!1733114) (not d!1733102) (not b!5441026) (not bm!390195) (not b!5440675) (not b!5441079) (not bm!390247) (not b!5441062) (not b!5440977) (not b!5440658) (not bm!390262) (not b!5441176) (not b_lambda!207435) (not b!5441133) (not d!1733108) (not b!5440964) (not b!5441123) (not bm!390163) (not d!1733042) (not b!5440488) (not b!5441213) (not d!1732992) (not b!5440751) (not b!5440921) (not b!5441032) (not bm!390223) (not d!1733174) (not bm!390267) (not b!5440460) (not bm!390233) (not d!1733178) (not b!5440412) (not b!5441226) (not d!1733152) (not d!1733148) (not b!5440875) (not b!5440541) (not d!1733172) (not bm!390226) (not b!5440999) (not b!5440599) (not b!5441151) (not b!5441193) (not d!1733078) (not b!5440986) (not b!5441120) (not b!5441184) (not bm!390229) (not b!5441061) (not b!5440753) (not b!5441144) (not b!5440655) (not b!5440738) (not bm!390254) (not b!5440998) (not b!5441023) (not b!5440852) (not b!5440737) (not b!5441138) (not b!5440927) (not b!5440992) (not b!5441102) (not b!5441214) (not b!5441154) (not d!1733110) (not bm!390283) (not b!5440849) (not bm!390250) (not b!5440947) (not b!5440905) (not b!5441046) (not bm!390275) (not b!5441225) (not b!5441210) (not b!5440960) (not b!5440669) (not b!5441140) (not bm!390201) (not d!1732878) (not d!1733034) (not bm!390162) (not d!1733146) (not b!5440640) (not b!5441156) (not bm!390153) (not b!5440946) (not bm!390214) (not b!5441087) (not bm!390215) (not b!5440544) (not d!1733164) (not bm!390259) (not b!5440935) (not bm!390238) (not d!1733176) (not b!5440570) (not bs!1255880) (not d!1732880) (not b!5441234) (not b!5441207) (not b!5441047) (not bm!390193) (not b!5440692) (not d!1732988) (not b!5441231) (not bm!390176) (not b!5440393) (not b!5440982) (not d!1733154) (not bm!390220) (not b!5440961) (not b!5441203) (not b!5441134) (not b!5441066) (not d!1732984) (not bm!390190) (not d!1732882) (not bm!390279) (not b!5441130) (not b!5441163) (not b!5441126) (not b!5441147) (not b!5441192) (not b!5440397) (not b!5441122) (not setNonEmpty!35569) (not bm!390255) (not bm!390270) (not b!5441211) (not b!5440549) (not b!5441190) (not b!5441038) (not b!5441132) (not bm!390280) (not d!1732916) (not d!1732978) (not b!5440995) (not d!1733112) (not d!1732818) (not bm!390278) (not bm!390268) (not b!5441072) (not d!1733160) (not b!5441085) (not b!5441221) (not b_lambda!207433) (not b!5441158) (not b!5441229) (not b!5441205) (not d!1733168) (not b!5440991) (not b!5440374) (not b!5440653) (not b!5441218) (not d!1732928) (not b_lambda!207439) (not b!5441043) (not b!5440664) (not bm!390175) (not b!5441186) (not d!1733142) (not bm!390237) (not b!5440951) (not bm!390194) (not bs!1255877) (not b!5441069) (not b!5441146) (not bm!390265) (not b!5440490) (not b!5441196) (not bm!390273) (not b!5441080) (not b!5440790) (not bm!390228) (not d!1732998) (not bm!390222) (not b!5440483) (not bm!390253) (not d!1733150) (not b!5440955) (not b!5441198) (not b!5440662) (not b!5441128) (not bs!1255882) (not b!5441124) (not b!5441142) (not b!5440983) (not b!5441200) (not b!5441010) (not d!1733026) (not b!5441059))
(check-sat)
