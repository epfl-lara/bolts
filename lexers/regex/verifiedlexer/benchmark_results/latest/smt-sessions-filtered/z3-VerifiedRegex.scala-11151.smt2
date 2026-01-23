; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!578934 () Bool)

(assert start!578934)

(declare-fun b!5572935 () Bool)

(assert (=> b!5572935 true))

(assert (=> b!5572935 true))

(declare-fun lambda!298627 () Int)

(declare-fun lambda!298626 () Int)

(assert (=> b!5572935 (not (= lambda!298627 lambda!298626))))

(assert (=> b!5572935 true))

(assert (=> b!5572935 true))

(declare-fun b!5572945 () Bool)

(assert (=> b!5572945 true))

(declare-fun b!5572930 () Bool)

(declare-fun e!3439194 () Bool)

(declare-fun tp!1542570 () Bool)

(assert (=> b!5572930 (= e!3439194 tp!1542570)))

(declare-fun b!5572931 () Bool)

(declare-fun res!2365481 () Bool)

(declare-fun e!3439193 () Bool)

(assert (=> b!5572931 (=> (not res!2365481) (not e!3439193))))

(declare-datatypes ((C!31368 0))(
  ( (C!31369 (val!25386 Int)) )
))
(declare-datatypes ((Regex!15549 0))(
  ( (ElementMatch!15549 (c!975388 C!31368)) (Concat!24394 (regOne!31610 Regex!15549) (regTwo!31610 Regex!15549)) (EmptyExpr!15549) (Star!15549 (reg!15878 Regex!15549)) (EmptyLang!15549) (Union!15549 (regOne!31611 Regex!15549) (regTwo!31611 Regex!15549)) )
))
(declare-fun r!7292 () Regex!15549)

(declare-datatypes ((List!62946 0))(
  ( (Nil!62822) (Cons!62822 (h!69270 Regex!15549) (t!376215 List!62946)) )
))
(declare-datatypes ((Context!9866 0))(
  ( (Context!9867 (exprs!5433 List!62946)) )
))
(declare-datatypes ((List!62947 0))(
  ( (Nil!62823) (Cons!62823 (h!69271 Context!9866) (t!376216 List!62947)) )
))
(declare-fun zl!343 () List!62947)

(declare-fun unfocusZipper!1291 (List!62947) Regex!15549)

(assert (=> b!5572931 (= res!2365481 (= r!7292 (unfocusZipper!1291 zl!343)))))

(declare-fun b!5572933 () Bool)

(declare-fun e!3439201 () Bool)

(assert (=> b!5572933 (= e!3439193 (not e!3439201))))

(declare-fun res!2365486 () Bool)

(assert (=> b!5572933 (=> res!2365486 e!3439201)))

(get-info :version)

(assert (=> b!5572933 (= res!2365486 (not ((_ is Cons!62823) zl!343)))))

(declare-fun lt!2251935 () Bool)

(declare-datatypes ((List!62948 0))(
  ( (Nil!62824) (Cons!62824 (h!69272 C!31368) (t!376217 List!62948)) )
))
(declare-fun s!2326 () List!62948)

(declare-fun matchRSpec!2652 (Regex!15549 List!62948) Bool)

(assert (=> b!5572933 (= lt!2251935 (matchRSpec!2652 r!7292 s!2326))))

(declare-fun matchR!7734 (Regex!15549 List!62948) Bool)

(assert (=> b!5572933 (= lt!2251935 (matchR!7734 r!7292 s!2326))))

(declare-datatypes ((Unit!155568 0))(
  ( (Unit!155569) )
))
(declare-fun lt!2251943 () Unit!155568)

(declare-fun mainMatchTheorem!2652 (Regex!15549 List!62948) Unit!155568)

(assert (=> b!5572933 (= lt!2251943 (mainMatchTheorem!2652 r!7292 s!2326))))

(declare-fun b!5572934 () Bool)

(declare-fun e!3439203 () Bool)

(declare-fun tp!1542569 () Bool)

(declare-fun tp!1542566 () Bool)

(assert (=> b!5572934 (= e!3439203 (and tp!1542569 tp!1542566))))

(declare-fun setNonEmpty!37049 () Bool)

(declare-fun e!3439200 () Bool)

(declare-fun setRes!37049 () Bool)

(declare-fun tp!1542565 () Bool)

(declare-fun setElem!37049 () Context!9866)

(declare-fun inv!82119 (Context!9866) Bool)

(assert (=> setNonEmpty!37049 (= setRes!37049 (and tp!1542565 (inv!82119 setElem!37049) e!3439200))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9866))

(declare-fun setRest!37049 () (InoxSet Context!9866))

(assert (=> setNonEmpty!37049 (= z!1189 ((_ map or) (store ((as const (Array Context!9866 Bool)) false) setElem!37049 true) setRest!37049))))

(declare-fun e!3439198 () Bool)

(assert (=> b!5572935 (= e!3439201 e!3439198)))

(declare-fun res!2365483 () Bool)

(assert (=> b!5572935 (=> res!2365483 e!3439198)))

(declare-fun lt!2251936 () Bool)

(assert (=> b!5572935 (= res!2365483 (or (not (= lt!2251935 lt!2251936)) ((_ is Nil!62824) s!2326)))))

(declare-fun Exists!2649 (Int) Bool)

(assert (=> b!5572935 (= (Exists!2649 lambda!298626) (Exists!2649 lambda!298627))))

(declare-fun lt!2251941 () Unit!155568)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1278 (Regex!15549 Regex!15549 List!62948) Unit!155568)

(assert (=> b!5572935 (= lt!2251941 (lemmaExistCutMatchRandMatchRSpecEquivalent!1278 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326))))

(assert (=> b!5572935 (= lt!2251936 (Exists!2649 lambda!298626))))

(declare-datatypes ((tuple2!65292 0))(
  ( (tuple2!65293 (_1!35949 List!62948) (_2!35949 List!62948)) )
))
(declare-datatypes ((Option!15558 0))(
  ( (None!15557) (Some!15557 (v!51598 tuple2!65292)) )
))
(declare-fun isDefined!12261 (Option!15558) Bool)

(declare-fun findConcatSeparation!1972 (Regex!15549 Regex!15549 List!62948 List!62948 List!62948) Option!15558)

(assert (=> b!5572935 (= lt!2251936 (isDefined!12261 (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) Nil!62824 s!2326 s!2326)))))

(declare-fun lt!2251938 () Unit!155568)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1736 (Regex!15549 Regex!15549 List!62948) Unit!155568)

(assert (=> b!5572935 (= lt!2251938 (lemmaFindConcatSeparationEquivalentToExists!1736 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326))))

(declare-fun b!5572936 () Bool)

(declare-fun res!2365474 () Bool)

(assert (=> b!5572936 (=> res!2365474 e!3439201)))

(assert (=> b!5572936 (= res!2365474 (not ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5572937 () Bool)

(declare-fun e!3439199 () Bool)

(declare-fun lt!2251945 () (InoxSet Context!9866))

(declare-fun matchZipper!1687 ((InoxSet Context!9866) List!62948) Bool)

(assert (=> b!5572937 (= e!3439199 (matchZipper!1687 lt!2251945 (t!376217 s!2326)))))

(declare-fun b!5572938 () Bool)

(declare-fun res!2365479 () Bool)

(assert (=> b!5572938 (=> res!2365479 e!3439201)))

(declare-fun generalisedUnion!1412 (List!62946) Regex!15549)

(declare-fun unfocusZipperList!977 (List!62947) List!62946)

(assert (=> b!5572938 (= res!2365479 (not (= r!7292 (generalisedUnion!1412 (unfocusZipperList!977 zl!343)))))))

(declare-fun tp!1542562 () Bool)

(declare-fun e!3439196 () Bool)

(declare-fun b!5572939 () Bool)

(assert (=> b!5572939 (= e!3439196 (and (inv!82119 (h!69271 zl!343)) e!3439194 tp!1542562))))

(declare-fun b!5572940 () Bool)

(declare-fun res!2365485 () Bool)

(assert (=> b!5572940 (=> res!2365485 e!3439198)))

(declare-fun isEmpty!34624 (List!62946) Bool)

(assert (=> b!5572940 (= res!2365485 (isEmpty!34624 (t!376215 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5572941 () Bool)

(declare-fun e!3439195 () Unit!155568)

(declare-fun Unit!155570 () Unit!155568)

(assert (=> b!5572941 (= e!3439195 Unit!155570)))

(declare-fun lt!2251940 () Unit!155568)

(declare-fun lt!2251944 () (InoxSet Context!9866))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!574 ((InoxSet Context!9866) (InoxSet Context!9866) List!62948) Unit!155568)

(assert (=> b!5572941 (= lt!2251940 (lemmaZipperConcatMatchesSameAsBothZippers!574 lt!2251944 lt!2251945 (t!376217 s!2326)))))

(declare-fun res!2365477 () Bool)

(assert (=> b!5572941 (= res!2365477 (matchZipper!1687 lt!2251944 (t!376217 s!2326)))))

(assert (=> b!5572941 (=> res!2365477 e!3439199)))

(assert (=> b!5572941 (= (matchZipper!1687 ((_ map or) lt!2251944 lt!2251945) (t!376217 s!2326)) e!3439199)))

(declare-fun res!2365480 () Bool)

(assert (=> start!578934 (=> (not res!2365480) (not e!3439193))))

(declare-fun validRegex!7285 (Regex!15549) Bool)

(assert (=> start!578934 (= res!2365480 (validRegex!7285 r!7292))))

(assert (=> start!578934 e!3439193))

(assert (=> start!578934 e!3439203))

(declare-fun condSetEmpty!37049 () Bool)

(assert (=> start!578934 (= condSetEmpty!37049 (= z!1189 ((as const (Array Context!9866 Bool)) false)))))

(assert (=> start!578934 setRes!37049))

(assert (=> start!578934 e!3439196))

(declare-fun e!3439202 () Bool)

(assert (=> start!578934 e!3439202))

(declare-fun b!5572932 () Bool)

(declare-fun tp!1542564 () Bool)

(assert (=> b!5572932 (= e!3439203 tp!1542564)))

(declare-fun b!5572942 () Bool)

(declare-fun tp!1542563 () Bool)

(assert (=> b!5572942 (= e!3439200 tp!1542563)))

(declare-fun setIsEmpty!37049 () Bool)

(assert (=> setIsEmpty!37049 setRes!37049))

(declare-fun b!5572943 () Bool)

(declare-fun tp_is_empty!40351 () Bool)

(assert (=> b!5572943 (= e!3439203 tp_is_empty!40351)))

(declare-fun b!5572944 () Bool)

(declare-fun res!2365484 () Bool)

(assert (=> b!5572944 (=> (not res!2365484) (not e!3439193))))

(declare-fun toList!9333 ((InoxSet Context!9866)) List!62947)

(assert (=> b!5572944 (= res!2365484 (= (toList!9333 z!1189) zl!343))))

(declare-fun e!3439197 () Bool)

(assert (=> b!5572945 (= e!3439198 e!3439197)))

(declare-fun res!2365482 () Bool)

(assert (=> b!5572945 (=> res!2365482 e!3439197)))

(assert (=> b!5572945 (= res!2365482 (or (and ((_ is ElementMatch!15549) (regOne!31610 r!7292)) (= (c!975388 (regOne!31610 r!7292)) (h!69272 s!2326))) (not ((_ is Union!15549) (regOne!31610 r!7292)))))))

(declare-fun lt!2251946 () Unit!155568)

(assert (=> b!5572945 (= lt!2251946 e!3439195)))

(declare-fun c!975387 () Bool)

(declare-fun nullable!5581 (Regex!15549) Bool)

(assert (=> b!5572945 (= c!975387 (nullable!5581 (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun lambda!298628 () Int)

(declare-fun flatMap!1162 ((InoxSet Context!9866) Int) (InoxSet Context!9866))

(declare-fun derivationStepZipperUp!817 (Context!9866 C!31368) (InoxSet Context!9866))

(assert (=> b!5572945 (= (flatMap!1162 z!1189 lambda!298628) (derivationStepZipperUp!817 (h!69271 zl!343) (h!69272 s!2326)))))

(declare-fun lt!2251942 () Unit!155568)

(declare-fun lemmaFlatMapOnSingletonSet!694 ((InoxSet Context!9866) Context!9866 Int) Unit!155568)

(assert (=> b!5572945 (= lt!2251942 (lemmaFlatMapOnSingletonSet!694 z!1189 (h!69271 zl!343) lambda!298628))))

(declare-fun lt!2251937 () Context!9866)

(assert (=> b!5572945 (= lt!2251945 (derivationStepZipperUp!817 lt!2251937 (h!69272 s!2326)))))

(declare-fun derivationStepZipperDown!891 (Regex!15549 Context!9866 C!31368) (InoxSet Context!9866))

(assert (=> b!5572945 (= lt!2251944 (derivationStepZipperDown!891 (h!69270 (exprs!5433 (h!69271 zl!343))) lt!2251937 (h!69272 s!2326)))))

(assert (=> b!5572945 (= lt!2251937 (Context!9867 (t!376215 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun lt!2251939 () (InoxSet Context!9866))

(assert (=> b!5572945 (= lt!2251939 (derivationStepZipperUp!817 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343))))) (h!69272 s!2326)))))

(declare-fun b!5572946 () Bool)

(assert (=> b!5572946 (= e!3439197 (= lt!2251944 ((_ map or) (derivationStepZipperDown!891 (regOne!31611 (regOne!31610 r!7292)) lt!2251937 (h!69272 s!2326)) (derivationStepZipperDown!891 (regTwo!31611 (regOne!31610 r!7292)) lt!2251937 (h!69272 s!2326)))))))

(declare-fun b!5572947 () Bool)

(declare-fun res!2365478 () Bool)

(assert (=> b!5572947 (=> res!2365478 e!3439201)))

(declare-fun generalisedConcat!1164 (List!62946) Regex!15549)

(assert (=> b!5572947 (= res!2365478 (not (= r!7292 (generalisedConcat!1164 (exprs!5433 (h!69271 zl!343))))))))

(declare-fun b!5572948 () Bool)

(declare-fun res!2365475 () Bool)

(assert (=> b!5572948 (=> res!2365475 e!3439201)))

(assert (=> b!5572948 (= res!2365475 (or ((_ is EmptyExpr!15549) r!7292) ((_ is EmptyLang!15549) r!7292) ((_ is ElementMatch!15549) r!7292) ((_ is Union!15549) r!7292) (not ((_ is Concat!24394) r!7292))))))

(declare-fun b!5572949 () Bool)

(declare-fun tp!1542568 () Bool)

(declare-fun tp!1542571 () Bool)

(assert (=> b!5572949 (= e!3439203 (and tp!1542568 tp!1542571))))

(declare-fun b!5572950 () Bool)

(declare-fun tp!1542567 () Bool)

(assert (=> b!5572950 (= e!3439202 (and tp_is_empty!40351 tp!1542567))))

(declare-fun b!5572951 () Bool)

(declare-fun Unit!155571 () Unit!155568)

(assert (=> b!5572951 (= e!3439195 Unit!155571)))

(declare-fun b!5572952 () Bool)

(declare-fun res!2365476 () Bool)

(assert (=> b!5572952 (=> res!2365476 e!3439201)))

(declare-fun isEmpty!34625 (List!62947) Bool)

(assert (=> b!5572952 (= res!2365476 (not (isEmpty!34625 (t!376216 zl!343))))))

(assert (= (and start!578934 res!2365480) b!5572944))

(assert (= (and b!5572944 res!2365484) b!5572931))

(assert (= (and b!5572931 res!2365481) b!5572933))

(assert (= (and b!5572933 (not res!2365486)) b!5572952))

(assert (= (and b!5572952 (not res!2365476)) b!5572947))

(assert (= (and b!5572947 (not res!2365478)) b!5572936))

(assert (= (and b!5572936 (not res!2365474)) b!5572938))

(assert (= (and b!5572938 (not res!2365479)) b!5572948))

(assert (= (and b!5572948 (not res!2365475)) b!5572935))

(assert (= (and b!5572935 (not res!2365483)) b!5572940))

(assert (= (and b!5572940 (not res!2365485)) b!5572945))

(assert (= (and b!5572945 c!975387) b!5572941))

(assert (= (and b!5572945 (not c!975387)) b!5572951))

(assert (= (and b!5572941 (not res!2365477)) b!5572937))

(assert (= (and b!5572945 (not res!2365482)) b!5572946))

(assert (= (and start!578934 ((_ is ElementMatch!15549) r!7292)) b!5572943))

(assert (= (and start!578934 ((_ is Concat!24394) r!7292)) b!5572934))

(assert (= (and start!578934 ((_ is Star!15549) r!7292)) b!5572932))

(assert (= (and start!578934 ((_ is Union!15549) r!7292)) b!5572949))

(assert (= (and start!578934 condSetEmpty!37049) setIsEmpty!37049))

(assert (= (and start!578934 (not condSetEmpty!37049)) setNonEmpty!37049))

(assert (= setNonEmpty!37049 b!5572942))

(assert (= b!5572939 b!5572930))

(assert (= (and start!578934 ((_ is Cons!62823) zl!343)) b!5572939))

(assert (= (and start!578934 ((_ is Cons!62824) s!2326)) b!5572950))

(declare-fun m!6557074 () Bool)

(assert (=> b!5572935 m!6557074))

(declare-fun m!6557076 () Bool)

(assert (=> b!5572935 m!6557076))

(declare-fun m!6557078 () Bool)

(assert (=> b!5572935 m!6557078))

(declare-fun m!6557080 () Bool)

(assert (=> b!5572935 m!6557080))

(declare-fun m!6557082 () Bool)

(assert (=> b!5572935 m!6557082))

(assert (=> b!5572935 m!6557074))

(assert (=> b!5572935 m!6557076))

(declare-fun m!6557084 () Bool)

(assert (=> b!5572935 m!6557084))

(declare-fun m!6557086 () Bool)

(assert (=> b!5572939 m!6557086))

(declare-fun m!6557088 () Bool)

(assert (=> setNonEmpty!37049 m!6557088))

(declare-fun m!6557090 () Bool)

(assert (=> b!5572931 m!6557090))

(declare-fun m!6557092 () Bool)

(assert (=> b!5572938 m!6557092))

(assert (=> b!5572938 m!6557092))

(declare-fun m!6557094 () Bool)

(assert (=> b!5572938 m!6557094))

(declare-fun m!6557096 () Bool)

(assert (=> b!5572941 m!6557096))

(declare-fun m!6557098 () Bool)

(assert (=> b!5572941 m!6557098))

(declare-fun m!6557100 () Bool)

(assert (=> b!5572941 m!6557100))

(declare-fun m!6557102 () Bool)

(assert (=> b!5572952 m!6557102))

(declare-fun m!6557104 () Bool)

(assert (=> b!5572944 m!6557104))

(declare-fun m!6557106 () Bool)

(assert (=> b!5572937 m!6557106))

(declare-fun m!6557108 () Bool)

(assert (=> b!5572946 m!6557108))

(declare-fun m!6557110 () Bool)

(assert (=> b!5572946 m!6557110))

(declare-fun m!6557112 () Bool)

(assert (=> b!5572940 m!6557112))

(declare-fun m!6557114 () Bool)

(assert (=> b!5572947 m!6557114))

(declare-fun m!6557116 () Bool)

(assert (=> b!5572945 m!6557116))

(declare-fun m!6557118 () Bool)

(assert (=> b!5572945 m!6557118))

(declare-fun m!6557120 () Bool)

(assert (=> b!5572945 m!6557120))

(declare-fun m!6557122 () Bool)

(assert (=> b!5572945 m!6557122))

(declare-fun m!6557124 () Bool)

(assert (=> b!5572945 m!6557124))

(declare-fun m!6557126 () Bool)

(assert (=> b!5572945 m!6557126))

(declare-fun m!6557128 () Bool)

(assert (=> b!5572945 m!6557128))

(declare-fun m!6557130 () Bool)

(assert (=> start!578934 m!6557130))

(declare-fun m!6557132 () Bool)

(assert (=> b!5572933 m!6557132))

(declare-fun m!6557134 () Bool)

(assert (=> b!5572933 m!6557134))

(declare-fun m!6557136 () Bool)

(assert (=> b!5572933 m!6557136))

(check-sat (not b!5572931) (not b!5572935) (not b!5572933) (not start!578934) (not b!5572950) (not b!5572945) (not b!5572932) (not b!5572942) (not b!5572938) (not b!5572939) (not b!5572947) (not b!5572930) (not b!5572946) (not b!5572937) (not setNonEmpty!37049) tp_is_empty!40351 (not b!5572940) (not b!5572934) (not b!5572944) (not b!5572949) (not b!5572941) (not b!5572952))
(check-sat)
(get-model)

(declare-fun d!1762452 () Bool)

(declare-fun c!975412 () Bool)

(declare-fun isEmpty!34628 (List!62948) Bool)

(assert (=> d!1762452 (= c!975412 (isEmpty!34628 (t!376217 s!2326)))))

(declare-fun e!3439252 () Bool)

(assert (=> d!1762452 (= (matchZipper!1687 lt!2251945 (t!376217 s!2326)) e!3439252)))

(declare-fun b!5573048 () Bool)

(declare-fun nullableZipper!1551 ((InoxSet Context!9866)) Bool)

(assert (=> b!5573048 (= e!3439252 (nullableZipper!1551 lt!2251945))))

(declare-fun b!5573049 () Bool)

(declare-fun derivationStepZipper!1650 ((InoxSet Context!9866) C!31368) (InoxSet Context!9866))

(declare-fun head!11881 (List!62948) C!31368)

(declare-fun tail!10976 (List!62948) List!62948)

(assert (=> b!5573049 (= e!3439252 (matchZipper!1687 (derivationStepZipper!1650 lt!2251945 (head!11881 (t!376217 s!2326))) (tail!10976 (t!376217 s!2326))))))

(assert (= (and d!1762452 c!975412) b!5573048))

(assert (= (and d!1762452 (not c!975412)) b!5573049))

(declare-fun m!6557162 () Bool)

(assert (=> d!1762452 m!6557162))

(declare-fun m!6557164 () Bool)

(assert (=> b!5573048 m!6557164))

(declare-fun m!6557166 () Bool)

(assert (=> b!5573049 m!6557166))

(assert (=> b!5573049 m!6557166))

(declare-fun m!6557168 () Bool)

(assert (=> b!5573049 m!6557168))

(declare-fun m!6557170 () Bool)

(assert (=> b!5573049 m!6557170))

(assert (=> b!5573049 m!6557168))

(assert (=> b!5573049 m!6557170))

(declare-fun m!6557172 () Bool)

(assert (=> b!5573049 m!6557172))

(assert (=> b!5572937 d!1762452))

(declare-fun b!5573111 () Bool)

(declare-fun e!3439288 () (InoxSet Context!9866))

(declare-fun call!416421 () (InoxSet Context!9866))

(declare-fun call!416416 () (InoxSet Context!9866))

(assert (=> b!5573111 (= e!3439288 ((_ map or) call!416421 call!416416))))

(declare-fun b!5573112 () Bool)

(declare-fun e!3439291 () (InoxSet Context!9866))

(assert (=> b!5573112 (= e!3439291 e!3439288)))

(declare-fun c!975433 () Bool)

(assert (=> b!5573112 (= c!975433 ((_ is Union!15549) (regOne!31611 (regOne!31610 r!7292))))))

(declare-fun d!1762458 () Bool)

(declare-fun c!975430 () Bool)

(assert (=> d!1762458 (= c!975430 (and ((_ is ElementMatch!15549) (regOne!31611 (regOne!31610 r!7292))) (= (c!975388 (regOne!31611 (regOne!31610 r!7292))) (h!69272 s!2326))))))

(assert (=> d!1762458 (= (derivationStepZipperDown!891 (regOne!31611 (regOne!31610 r!7292)) lt!2251937 (h!69272 s!2326)) e!3439291)))

(declare-fun b!5573113 () Bool)

(declare-fun e!3439290 () (InoxSet Context!9866))

(declare-fun call!416419 () (InoxSet Context!9866))

(assert (=> b!5573113 (= e!3439290 ((_ map or) call!416421 call!416419))))

(declare-fun call!416418 () List!62946)

(declare-fun bm!416411 () Bool)

(declare-fun c!975432 () Bool)

(declare-fun c!975431 () Bool)

(declare-fun $colon$colon!1618 (List!62946 Regex!15549) List!62946)

(assert (=> bm!416411 (= call!416418 ($colon$colon!1618 (exprs!5433 lt!2251937) (ite (or c!975431 c!975432) (regTwo!31610 (regOne!31611 (regOne!31610 r!7292))) (regOne!31611 (regOne!31610 r!7292)))))))

(declare-fun b!5573114 () Bool)

(declare-fun e!3439287 () (InoxSet Context!9866))

(declare-fun call!416417 () (InoxSet Context!9866))

(assert (=> b!5573114 (= e!3439287 call!416417)))

(declare-fun b!5573115 () Bool)

(assert (=> b!5573115 (= e!3439287 ((as const (Array Context!9866 Bool)) false))))

(declare-fun bm!416412 () Bool)

(declare-fun call!416420 () List!62946)

(assert (=> bm!416412 (= call!416420 call!416418)))

(declare-fun b!5573116 () Bool)

(declare-fun c!975429 () Bool)

(assert (=> b!5573116 (= c!975429 ((_ is Star!15549) (regOne!31611 (regOne!31610 r!7292))))))

(declare-fun e!3439289 () (InoxSet Context!9866))

(assert (=> b!5573116 (= e!3439289 e!3439287)))

(declare-fun bm!416413 () Bool)

(assert (=> bm!416413 (= call!416416 (derivationStepZipperDown!891 (ite c!975433 (regTwo!31611 (regOne!31611 (regOne!31610 r!7292))) (ite c!975431 (regTwo!31610 (regOne!31611 (regOne!31610 r!7292))) (ite c!975432 (regOne!31610 (regOne!31611 (regOne!31610 r!7292))) (reg!15878 (regOne!31611 (regOne!31610 r!7292)))))) (ite (or c!975433 c!975431) lt!2251937 (Context!9867 call!416420)) (h!69272 s!2326)))))

(declare-fun b!5573117 () Bool)

(declare-fun e!3439286 () Bool)

(assert (=> b!5573117 (= c!975431 e!3439286)))

(declare-fun res!2365559 () Bool)

(assert (=> b!5573117 (=> (not res!2365559) (not e!3439286))))

(assert (=> b!5573117 (= res!2365559 ((_ is Concat!24394) (regOne!31611 (regOne!31610 r!7292))))))

(assert (=> b!5573117 (= e!3439288 e!3439290)))

(declare-fun bm!416414 () Bool)

(assert (=> bm!416414 (= call!416417 call!416419)))

(declare-fun bm!416415 () Bool)

(assert (=> bm!416415 (= call!416419 call!416416)))

(declare-fun b!5573118 () Bool)

(assert (=> b!5573118 (= e!3439291 (store ((as const (Array Context!9866 Bool)) false) lt!2251937 true))))

(declare-fun b!5573119 () Bool)

(assert (=> b!5573119 (= e!3439290 e!3439289)))

(assert (=> b!5573119 (= c!975432 ((_ is Concat!24394) (regOne!31611 (regOne!31610 r!7292))))))

(declare-fun bm!416416 () Bool)

(assert (=> bm!416416 (= call!416421 (derivationStepZipperDown!891 (ite c!975433 (regOne!31611 (regOne!31611 (regOne!31610 r!7292))) (regOne!31610 (regOne!31611 (regOne!31610 r!7292)))) (ite c!975433 lt!2251937 (Context!9867 call!416418)) (h!69272 s!2326)))))

(declare-fun b!5573120 () Bool)

(assert (=> b!5573120 (= e!3439289 call!416417)))

(declare-fun b!5573121 () Bool)

(assert (=> b!5573121 (= e!3439286 (nullable!5581 (regOne!31610 (regOne!31611 (regOne!31610 r!7292)))))))

(assert (= (and d!1762458 c!975430) b!5573118))

(assert (= (and d!1762458 (not c!975430)) b!5573112))

(assert (= (and b!5573112 c!975433) b!5573111))

(assert (= (and b!5573112 (not c!975433)) b!5573117))

(assert (= (and b!5573117 res!2365559) b!5573121))

(assert (= (and b!5573117 c!975431) b!5573113))

(assert (= (and b!5573117 (not c!975431)) b!5573119))

(assert (= (and b!5573119 c!975432) b!5573120))

(assert (= (and b!5573119 (not c!975432)) b!5573116))

(assert (= (and b!5573116 c!975429) b!5573114))

(assert (= (and b!5573116 (not c!975429)) b!5573115))

(assert (= (or b!5573120 b!5573114) bm!416412))

(assert (= (or b!5573120 b!5573114) bm!416414))

(assert (= (or b!5573113 bm!416412) bm!416411))

(assert (= (or b!5573113 bm!416414) bm!416415))

(assert (= (or b!5573111 bm!416415) bm!416413))

(assert (= (or b!5573111 b!5573113) bm!416416))

(declare-fun m!6557204 () Bool)

(assert (=> bm!416411 m!6557204))

(declare-fun m!6557206 () Bool)

(assert (=> b!5573118 m!6557206))

(declare-fun m!6557208 () Bool)

(assert (=> b!5573121 m!6557208))

(declare-fun m!6557210 () Bool)

(assert (=> bm!416416 m!6557210))

(declare-fun m!6557212 () Bool)

(assert (=> bm!416413 m!6557212))

(assert (=> b!5572946 d!1762458))

(declare-fun b!5573122 () Bool)

(declare-fun e!3439294 () (InoxSet Context!9866))

(declare-fun call!416427 () (InoxSet Context!9866))

(declare-fun call!416422 () (InoxSet Context!9866))

(assert (=> b!5573122 (= e!3439294 ((_ map or) call!416427 call!416422))))

(declare-fun b!5573123 () Bool)

(declare-fun e!3439297 () (InoxSet Context!9866))

(assert (=> b!5573123 (= e!3439297 e!3439294)))

(declare-fun c!975438 () Bool)

(assert (=> b!5573123 (= c!975438 ((_ is Union!15549) (regTwo!31611 (regOne!31610 r!7292))))))

(declare-fun d!1762466 () Bool)

(declare-fun c!975435 () Bool)

(assert (=> d!1762466 (= c!975435 (and ((_ is ElementMatch!15549) (regTwo!31611 (regOne!31610 r!7292))) (= (c!975388 (regTwo!31611 (regOne!31610 r!7292))) (h!69272 s!2326))))))

(assert (=> d!1762466 (= (derivationStepZipperDown!891 (regTwo!31611 (regOne!31610 r!7292)) lt!2251937 (h!69272 s!2326)) e!3439297)))

(declare-fun b!5573124 () Bool)

(declare-fun e!3439296 () (InoxSet Context!9866))

(declare-fun call!416425 () (InoxSet Context!9866))

(assert (=> b!5573124 (= e!3439296 ((_ map or) call!416427 call!416425))))

(declare-fun bm!416417 () Bool)

(declare-fun c!975436 () Bool)

(declare-fun c!975437 () Bool)

(declare-fun call!416424 () List!62946)

(assert (=> bm!416417 (= call!416424 ($colon$colon!1618 (exprs!5433 lt!2251937) (ite (or c!975436 c!975437) (regTwo!31610 (regTwo!31611 (regOne!31610 r!7292))) (regTwo!31611 (regOne!31610 r!7292)))))))

(declare-fun b!5573125 () Bool)

(declare-fun e!3439293 () (InoxSet Context!9866))

(declare-fun call!416423 () (InoxSet Context!9866))

(assert (=> b!5573125 (= e!3439293 call!416423)))

(declare-fun b!5573126 () Bool)

(assert (=> b!5573126 (= e!3439293 ((as const (Array Context!9866 Bool)) false))))

(declare-fun bm!416418 () Bool)

(declare-fun call!416426 () List!62946)

(assert (=> bm!416418 (= call!416426 call!416424)))

(declare-fun b!5573127 () Bool)

(declare-fun c!975434 () Bool)

(assert (=> b!5573127 (= c!975434 ((_ is Star!15549) (regTwo!31611 (regOne!31610 r!7292))))))

(declare-fun e!3439295 () (InoxSet Context!9866))

(assert (=> b!5573127 (= e!3439295 e!3439293)))

(declare-fun bm!416419 () Bool)

(assert (=> bm!416419 (= call!416422 (derivationStepZipperDown!891 (ite c!975438 (regTwo!31611 (regTwo!31611 (regOne!31610 r!7292))) (ite c!975436 (regTwo!31610 (regTwo!31611 (regOne!31610 r!7292))) (ite c!975437 (regOne!31610 (regTwo!31611 (regOne!31610 r!7292))) (reg!15878 (regTwo!31611 (regOne!31610 r!7292)))))) (ite (or c!975438 c!975436) lt!2251937 (Context!9867 call!416426)) (h!69272 s!2326)))))

(declare-fun b!5573128 () Bool)

(declare-fun e!3439292 () Bool)

(assert (=> b!5573128 (= c!975436 e!3439292)))

(declare-fun res!2365560 () Bool)

(assert (=> b!5573128 (=> (not res!2365560) (not e!3439292))))

(assert (=> b!5573128 (= res!2365560 ((_ is Concat!24394) (regTwo!31611 (regOne!31610 r!7292))))))

(assert (=> b!5573128 (= e!3439294 e!3439296)))

(declare-fun bm!416420 () Bool)

(assert (=> bm!416420 (= call!416423 call!416425)))

(declare-fun bm!416421 () Bool)

(assert (=> bm!416421 (= call!416425 call!416422)))

(declare-fun b!5573129 () Bool)

(assert (=> b!5573129 (= e!3439297 (store ((as const (Array Context!9866 Bool)) false) lt!2251937 true))))

(declare-fun b!5573130 () Bool)

(assert (=> b!5573130 (= e!3439296 e!3439295)))

(assert (=> b!5573130 (= c!975437 ((_ is Concat!24394) (regTwo!31611 (regOne!31610 r!7292))))))

(declare-fun bm!416422 () Bool)

(assert (=> bm!416422 (= call!416427 (derivationStepZipperDown!891 (ite c!975438 (regOne!31611 (regTwo!31611 (regOne!31610 r!7292))) (regOne!31610 (regTwo!31611 (regOne!31610 r!7292)))) (ite c!975438 lt!2251937 (Context!9867 call!416424)) (h!69272 s!2326)))))

(declare-fun b!5573131 () Bool)

(assert (=> b!5573131 (= e!3439295 call!416423)))

(declare-fun b!5573132 () Bool)

(assert (=> b!5573132 (= e!3439292 (nullable!5581 (regOne!31610 (regTwo!31611 (regOne!31610 r!7292)))))))

(assert (= (and d!1762466 c!975435) b!5573129))

(assert (= (and d!1762466 (not c!975435)) b!5573123))

(assert (= (and b!5573123 c!975438) b!5573122))

(assert (= (and b!5573123 (not c!975438)) b!5573128))

(assert (= (and b!5573128 res!2365560) b!5573132))

(assert (= (and b!5573128 c!975436) b!5573124))

(assert (= (and b!5573128 (not c!975436)) b!5573130))

(assert (= (and b!5573130 c!975437) b!5573131))

(assert (= (and b!5573130 (not c!975437)) b!5573127))

(assert (= (and b!5573127 c!975434) b!5573125))

(assert (= (and b!5573127 (not c!975434)) b!5573126))

(assert (= (or b!5573131 b!5573125) bm!416418))

(assert (= (or b!5573131 b!5573125) bm!416420))

(assert (= (or b!5573124 bm!416418) bm!416417))

(assert (= (or b!5573124 bm!416420) bm!416421))

(assert (= (or b!5573122 bm!416421) bm!416419))

(assert (= (or b!5573122 b!5573124) bm!416422))

(declare-fun m!6557224 () Bool)

(assert (=> bm!416417 m!6557224))

(assert (=> b!5573129 m!6557206))

(declare-fun m!6557226 () Bool)

(assert (=> b!5573132 m!6557226))

(declare-fun m!6557228 () Bool)

(assert (=> bm!416422 m!6557228))

(declare-fun m!6557230 () Bool)

(assert (=> bm!416419 m!6557230))

(assert (=> b!5572946 d!1762466))

(declare-fun d!1762476 () Bool)

(declare-fun dynLambda!24573 (Int Context!9866) (InoxSet Context!9866))

(assert (=> d!1762476 (= (flatMap!1162 z!1189 lambda!298628) (dynLambda!24573 lambda!298628 (h!69271 zl!343)))))

(declare-fun lt!2251970 () Unit!155568)

(declare-fun choose!42209 ((InoxSet Context!9866) Context!9866 Int) Unit!155568)

(assert (=> d!1762476 (= lt!2251970 (choose!42209 z!1189 (h!69271 zl!343) lambda!298628))))

(assert (=> d!1762476 (= z!1189 (store ((as const (Array Context!9866 Bool)) false) (h!69271 zl!343) true))))

(assert (=> d!1762476 (= (lemmaFlatMapOnSingletonSet!694 z!1189 (h!69271 zl!343) lambda!298628) lt!2251970)))

(declare-fun b_lambda!211347 () Bool)

(assert (=> (not b_lambda!211347) (not d!1762476)))

(declare-fun bs!1290055 () Bool)

(assert (= bs!1290055 d!1762476))

(assert (=> bs!1290055 m!6557128))

(declare-fun m!6557244 () Bool)

(assert (=> bs!1290055 m!6557244))

(declare-fun m!6557246 () Bool)

(assert (=> bs!1290055 m!6557246))

(declare-fun m!6557248 () Bool)

(assert (=> bs!1290055 m!6557248))

(assert (=> b!5572945 d!1762476))

(declare-fun d!1762480 () Bool)

(declare-fun nullableFct!1697 (Regex!15549) Bool)

(assert (=> d!1762480 (= (nullable!5581 (h!69270 (exprs!5433 (h!69271 zl!343)))) (nullableFct!1697 (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun bs!1290056 () Bool)

(assert (= bs!1290056 d!1762480))

(declare-fun m!6557250 () Bool)

(assert (=> bs!1290056 m!6557250))

(assert (=> b!5572945 d!1762480))

(declare-fun b!5573193 () Bool)

(declare-fun e!3439331 () (InoxSet Context!9866))

(assert (=> b!5573193 (= e!3439331 ((as const (Array Context!9866 Bool)) false))))

(declare-fun b!5573194 () Bool)

(declare-fun e!3439332 () (InoxSet Context!9866))

(assert (=> b!5573194 (= e!3439332 e!3439331)))

(declare-fun c!975467 () Bool)

(assert (=> b!5573194 (= c!975467 ((_ is Cons!62822) (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343))))))))))

(declare-fun d!1762482 () Bool)

(declare-fun c!975466 () Bool)

(declare-fun e!3439333 () Bool)

(assert (=> d!1762482 (= c!975466 e!3439333)))

(declare-fun res!2365567 () Bool)

(assert (=> d!1762482 (=> (not res!2365567) (not e!3439333))))

(assert (=> d!1762482 (= res!2365567 ((_ is Cons!62822) (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343))))))))))

(assert (=> d!1762482 (= (derivationStepZipperUp!817 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343))))) (h!69272 s!2326)) e!3439332)))

(declare-fun call!416454 () (InoxSet Context!9866))

(declare-fun b!5573195 () Bool)

(assert (=> b!5573195 (= e!3439332 ((_ map or) call!416454 (derivationStepZipperUp!817 (Context!9867 (t!376215 (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343)))))))) (h!69272 s!2326))))))

(declare-fun bm!416449 () Bool)

(assert (=> bm!416449 (= call!416454 (derivationStepZipperDown!891 (h!69270 (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343))))))) (Context!9867 (t!376215 (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343)))))))) (h!69272 s!2326)))))

(declare-fun b!5573196 () Bool)

(assert (=> b!5573196 (= e!3439333 (nullable!5581 (h!69270 (exprs!5433 (Context!9867 (Cons!62822 (h!69270 (exprs!5433 (h!69271 zl!343))) (t!376215 (exprs!5433 (h!69271 zl!343)))))))))))

(declare-fun b!5573197 () Bool)

(assert (=> b!5573197 (= e!3439331 call!416454)))

(assert (= (and d!1762482 res!2365567) b!5573196))

(assert (= (and d!1762482 c!975466) b!5573195))

(assert (= (and d!1762482 (not c!975466)) b!5573194))

(assert (= (and b!5573194 c!975467) b!5573197))

(assert (= (and b!5573194 (not c!975467)) b!5573193))

(assert (= (or b!5573195 b!5573197) bm!416449))

(declare-fun m!6557270 () Bool)

(assert (=> b!5573195 m!6557270))

(declare-fun m!6557272 () Bool)

(assert (=> bm!416449 m!6557272))

(declare-fun m!6557274 () Bool)

(assert (=> b!5573196 m!6557274))

(assert (=> b!5572945 d!1762482))

(declare-fun b!5573198 () Bool)

(declare-fun e!3439336 () (InoxSet Context!9866))

(declare-fun call!416460 () (InoxSet Context!9866))

(declare-fun call!416455 () (InoxSet Context!9866))

(assert (=> b!5573198 (= e!3439336 ((_ map or) call!416460 call!416455))))

(declare-fun b!5573199 () Bool)

(declare-fun e!3439339 () (InoxSet Context!9866))

(assert (=> b!5573199 (= e!3439339 e!3439336)))

(declare-fun c!975472 () Bool)

(assert (=> b!5573199 (= c!975472 ((_ is Union!15549) (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun d!1762488 () Bool)

(declare-fun c!975469 () Bool)

(assert (=> d!1762488 (= c!975469 (and ((_ is ElementMatch!15549) (h!69270 (exprs!5433 (h!69271 zl!343)))) (= (c!975388 (h!69270 (exprs!5433 (h!69271 zl!343)))) (h!69272 s!2326))))))

(assert (=> d!1762488 (= (derivationStepZipperDown!891 (h!69270 (exprs!5433 (h!69271 zl!343))) lt!2251937 (h!69272 s!2326)) e!3439339)))

(declare-fun b!5573200 () Bool)

(declare-fun e!3439338 () (InoxSet Context!9866))

(declare-fun call!416458 () (InoxSet Context!9866))

(assert (=> b!5573200 (= e!3439338 ((_ map or) call!416460 call!416458))))

(declare-fun bm!416450 () Bool)

(declare-fun call!416457 () List!62946)

(declare-fun c!975471 () Bool)

(declare-fun c!975470 () Bool)

(assert (=> bm!416450 (= call!416457 ($colon$colon!1618 (exprs!5433 lt!2251937) (ite (or c!975470 c!975471) (regTwo!31610 (h!69270 (exprs!5433 (h!69271 zl!343)))) (h!69270 (exprs!5433 (h!69271 zl!343))))))))

(declare-fun b!5573201 () Bool)

(declare-fun e!3439335 () (InoxSet Context!9866))

(declare-fun call!416456 () (InoxSet Context!9866))

(assert (=> b!5573201 (= e!3439335 call!416456)))

(declare-fun b!5573202 () Bool)

(assert (=> b!5573202 (= e!3439335 ((as const (Array Context!9866 Bool)) false))))

(declare-fun bm!416451 () Bool)

(declare-fun call!416459 () List!62946)

(assert (=> bm!416451 (= call!416459 call!416457)))

(declare-fun b!5573205 () Bool)

(declare-fun c!975468 () Bool)

(assert (=> b!5573205 (= c!975468 ((_ is Star!15549) (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun e!3439337 () (InoxSet Context!9866))

(assert (=> b!5573205 (= e!3439337 e!3439335)))

(declare-fun bm!416452 () Bool)

(assert (=> bm!416452 (= call!416455 (derivationStepZipperDown!891 (ite c!975472 (regTwo!31611 (h!69270 (exprs!5433 (h!69271 zl!343)))) (ite c!975470 (regTwo!31610 (h!69270 (exprs!5433 (h!69271 zl!343)))) (ite c!975471 (regOne!31610 (h!69270 (exprs!5433 (h!69271 zl!343)))) (reg!15878 (h!69270 (exprs!5433 (h!69271 zl!343))))))) (ite (or c!975472 c!975470) lt!2251937 (Context!9867 call!416459)) (h!69272 s!2326)))))

(declare-fun b!5573206 () Bool)

(declare-fun e!3439334 () Bool)

(assert (=> b!5573206 (= c!975470 e!3439334)))

(declare-fun res!2365568 () Bool)

(assert (=> b!5573206 (=> (not res!2365568) (not e!3439334))))

(assert (=> b!5573206 (= res!2365568 ((_ is Concat!24394) (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(assert (=> b!5573206 (= e!3439336 e!3439338)))

(declare-fun bm!416453 () Bool)

(assert (=> bm!416453 (= call!416456 call!416458)))

(declare-fun bm!416454 () Bool)

(assert (=> bm!416454 (= call!416458 call!416455)))

(declare-fun b!5573207 () Bool)

(assert (=> b!5573207 (= e!3439339 (store ((as const (Array Context!9866 Bool)) false) lt!2251937 true))))

(declare-fun b!5573208 () Bool)

(assert (=> b!5573208 (= e!3439338 e!3439337)))

(assert (=> b!5573208 (= c!975471 ((_ is Concat!24394) (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun bm!416455 () Bool)

(assert (=> bm!416455 (= call!416460 (derivationStepZipperDown!891 (ite c!975472 (regOne!31611 (h!69270 (exprs!5433 (h!69271 zl!343)))) (regOne!31610 (h!69270 (exprs!5433 (h!69271 zl!343))))) (ite c!975472 lt!2251937 (Context!9867 call!416457)) (h!69272 s!2326)))))

(declare-fun b!5573209 () Bool)

(assert (=> b!5573209 (= e!3439337 call!416456)))

(declare-fun b!5573210 () Bool)

(assert (=> b!5573210 (= e!3439334 (nullable!5581 (regOne!31610 (h!69270 (exprs!5433 (h!69271 zl!343))))))))

(assert (= (and d!1762488 c!975469) b!5573207))

(assert (= (and d!1762488 (not c!975469)) b!5573199))

(assert (= (and b!5573199 c!975472) b!5573198))

(assert (= (and b!5573199 (not c!975472)) b!5573206))

(assert (= (and b!5573206 res!2365568) b!5573210))

(assert (= (and b!5573206 c!975470) b!5573200))

(assert (= (and b!5573206 (not c!975470)) b!5573208))

(assert (= (and b!5573208 c!975471) b!5573209))

(assert (= (and b!5573208 (not c!975471)) b!5573205))

(assert (= (and b!5573205 c!975468) b!5573201))

(assert (= (and b!5573205 (not c!975468)) b!5573202))

(assert (= (or b!5573209 b!5573201) bm!416451))

(assert (= (or b!5573209 b!5573201) bm!416453))

(assert (= (or b!5573200 bm!416451) bm!416450))

(assert (= (or b!5573200 bm!416453) bm!416454))

(assert (= (or b!5573198 bm!416454) bm!416452))

(assert (= (or b!5573198 b!5573200) bm!416455))

(declare-fun m!6557288 () Bool)

(assert (=> bm!416450 m!6557288))

(assert (=> b!5573207 m!6557206))

(declare-fun m!6557292 () Bool)

(assert (=> b!5573210 m!6557292))

(declare-fun m!6557294 () Bool)

(assert (=> bm!416455 m!6557294))

(declare-fun m!6557296 () Bool)

(assert (=> bm!416452 m!6557296))

(assert (=> b!5572945 d!1762488))

(declare-fun d!1762496 () Bool)

(declare-fun choose!42211 ((InoxSet Context!9866) Int) (InoxSet Context!9866))

(assert (=> d!1762496 (= (flatMap!1162 z!1189 lambda!298628) (choose!42211 z!1189 lambda!298628))))

(declare-fun bs!1290057 () Bool)

(assert (= bs!1290057 d!1762496))

(declare-fun m!6557298 () Bool)

(assert (=> bs!1290057 m!6557298))

(assert (=> b!5572945 d!1762496))

(declare-fun b!5573216 () Bool)

(declare-fun e!3439345 () (InoxSet Context!9866))

(assert (=> b!5573216 (= e!3439345 ((as const (Array Context!9866 Bool)) false))))

(declare-fun b!5573217 () Bool)

(declare-fun e!3439346 () (InoxSet Context!9866))

(assert (=> b!5573217 (= e!3439346 e!3439345)))

(declare-fun c!975476 () Bool)

(assert (=> b!5573217 (= c!975476 ((_ is Cons!62822) (exprs!5433 lt!2251937)))))

(declare-fun d!1762498 () Bool)

(declare-fun c!975475 () Bool)

(declare-fun e!3439347 () Bool)

(assert (=> d!1762498 (= c!975475 e!3439347)))

(declare-fun res!2365572 () Bool)

(assert (=> d!1762498 (=> (not res!2365572) (not e!3439347))))

(assert (=> d!1762498 (= res!2365572 ((_ is Cons!62822) (exprs!5433 lt!2251937)))))

(assert (=> d!1762498 (= (derivationStepZipperUp!817 lt!2251937 (h!69272 s!2326)) e!3439346)))

(declare-fun call!416461 () (InoxSet Context!9866))

(declare-fun b!5573218 () Bool)

(assert (=> b!5573218 (= e!3439346 ((_ map or) call!416461 (derivationStepZipperUp!817 (Context!9867 (t!376215 (exprs!5433 lt!2251937))) (h!69272 s!2326))))))

(declare-fun bm!416456 () Bool)

(assert (=> bm!416456 (= call!416461 (derivationStepZipperDown!891 (h!69270 (exprs!5433 lt!2251937)) (Context!9867 (t!376215 (exprs!5433 lt!2251937))) (h!69272 s!2326)))))

(declare-fun b!5573219 () Bool)

(assert (=> b!5573219 (= e!3439347 (nullable!5581 (h!69270 (exprs!5433 lt!2251937))))))

(declare-fun b!5573220 () Bool)

(assert (=> b!5573220 (= e!3439345 call!416461)))

(assert (= (and d!1762498 res!2365572) b!5573219))

(assert (= (and d!1762498 c!975475) b!5573218))

(assert (= (and d!1762498 (not c!975475)) b!5573217))

(assert (= (and b!5573217 c!975476) b!5573220))

(assert (= (and b!5573217 (not c!975476)) b!5573216))

(assert (= (or b!5573218 b!5573220) bm!416456))

(declare-fun m!6557300 () Bool)

(assert (=> b!5573218 m!6557300))

(declare-fun m!6557302 () Bool)

(assert (=> bm!416456 m!6557302))

(declare-fun m!6557304 () Bool)

(assert (=> b!5573219 m!6557304))

(assert (=> b!5572945 d!1762498))

(declare-fun b!5573221 () Bool)

(declare-fun e!3439348 () (InoxSet Context!9866))

(assert (=> b!5573221 (= e!3439348 ((as const (Array Context!9866 Bool)) false))))

(declare-fun b!5573222 () Bool)

(declare-fun e!3439349 () (InoxSet Context!9866))

(assert (=> b!5573222 (= e!3439349 e!3439348)))

(declare-fun c!975478 () Bool)

(assert (=> b!5573222 (= c!975478 ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343))))))

(declare-fun d!1762500 () Bool)

(declare-fun c!975477 () Bool)

(declare-fun e!3439350 () Bool)

(assert (=> d!1762500 (= c!975477 e!3439350)))

(declare-fun res!2365573 () Bool)

(assert (=> d!1762500 (=> (not res!2365573) (not e!3439350))))

(assert (=> d!1762500 (= res!2365573 ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343))))))

(assert (=> d!1762500 (= (derivationStepZipperUp!817 (h!69271 zl!343) (h!69272 s!2326)) e!3439349)))

(declare-fun b!5573223 () Bool)

(declare-fun call!416462 () (InoxSet Context!9866))

(assert (=> b!5573223 (= e!3439349 ((_ map or) call!416462 (derivationStepZipperUp!817 (Context!9867 (t!376215 (exprs!5433 (h!69271 zl!343)))) (h!69272 s!2326))))))

(declare-fun bm!416457 () Bool)

(assert (=> bm!416457 (= call!416462 (derivationStepZipperDown!891 (h!69270 (exprs!5433 (h!69271 zl!343))) (Context!9867 (t!376215 (exprs!5433 (h!69271 zl!343)))) (h!69272 s!2326)))))

(declare-fun b!5573224 () Bool)

(assert (=> b!5573224 (= e!3439350 (nullable!5581 (h!69270 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5573225 () Bool)

(assert (=> b!5573225 (= e!3439348 call!416462)))

(assert (= (and d!1762500 res!2365573) b!5573224))

(assert (= (and d!1762500 c!975477) b!5573223))

(assert (= (and d!1762500 (not c!975477)) b!5573222))

(assert (= (and b!5573222 c!975478) b!5573225))

(assert (= (and b!5573222 (not c!975478)) b!5573221))

(assert (= (or b!5573223 b!5573225) bm!416457))

(declare-fun m!6557306 () Bool)

(assert (=> b!5573223 m!6557306))

(declare-fun m!6557308 () Bool)

(assert (=> bm!416457 m!6557308))

(assert (=> b!5573224 m!6557124))

(assert (=> b!5572945 d!1762500))

(declare-fun bm!416468 () Bool)

(declare-fun call!416473 () Bool)

(declare-fun c!975503 () Bool)

(assert (=> bm!416468 (= call!416473 (validRegex!7285 (ite c!975503 (regTwo!31611 r!7292) (regTwo!31610 r!7292))))))

(declare-fun b!5573294 () Bool)

(declare-fun res!2365594 () Bool)

(declare-fun e!3439401 () Bool)

(assert (=> b!5573294 (=> (not res!2365594) (not e!3439401))))

(declare-fun call!416475 () Bool)

(assert (=> b!5573294 (= res!2365594 call!416475)))

(declare-fun e!3439396 () Bool)

(assert (=> b!5573294 (= e!3439396 e!3439401)))

(declare-fun b!5573295 () Bool)

(declare-fun e!3439395 () Bool)

(declare-fun e!3439397 () Bool)

(assert (=> b!5573295 (= e!3439395 e!3439397)))

(declare-fun c!975504 () Bool)

(assert (=> b!5573295 (= c!975504 ((_ is Star!15549) r!7292))))

(declare-fun d!1762502 () Bool)

(declare-fun res!2365598 () Bool)

(assert (=> d!1762502 (=> res!2365598 e!3439395)))

(assert (=> d!1762502 (= res!2365598 ((_ is ElementMatch!15549) r!7292))))

(assert (=> d!1762502 (= (validRegex!7285 r!7292) e!3439395)))

(declare-fun b!5573296 () Bool)

(declare-fun e!3439399 () Bool)

(assert (=> b!5573296 (= e!3439397 e!3439399)))

(declare-fun res!2365597 () Bool)

(assert (=> b!5573296 (= res!2365597 (not (nullable!5581 (reg!15878 r!7292))))))

(assert (=> b!5573296 (=> (not res!2365597) (not e!3439399))))

(declare-fun b!5573297 () Bool)

(declare-fun e!3439400 () Bool)

(assert (=> b!5573297 (= e!3439400 call!416473)))

(declare-fun b!5573298 () Bool)

(declare-fun e!3439398 () Bool)

(assert (=> b!5573298 (= e!3439398 e!3439400)))

(declare-fun res!2365595 () Bool)

(assert (=> b!5573298 (=> (not res!2365595) (not e!3439400))))

(assert (=> b!5573298 (= res!2365595 call!416475)))

(declare-fun b!5573299 () Bool)

(assert (=> b!5573299 (= e!3439397 e!3439396)))

(assert (=> b!5573299 (= c!975503 ((_ is Union!15549) r!7292))))

(declare-fun bm!416469 () Bool)

(declare-fun call!416474 () Bool)

(assert (=> bm!416469 (= call!416475 call!416474)))

(declare-fun b!5573300 () Bool)

(assert (=> b!5573300 (= e!3439399 call!416474)))

(declare-fun b!5573301 () Bool)

(declare-fun res!2365596 () Bool)

(assert (=> b!5573301 (=> res!2365596 e!3439398)))

(assert (=> b!5573301 (= res!2365596 (not ((_ is Concat!24394) r!7292)))))

(assert (=> b!5573301 (= e!3439396 e!3439398)))

(declare-fun bm!416470 () Bool)

(assert (=> bm!416470 (= call!416474 (validRegex!7285 (ite c!975504 (reg!15878 r!7292) (ite c!975503 (regOne!31611 r!7292) (regOne!31610 r!7292)))))))

(declare-fun b!5573302 () Bool)

(assert (=> b!5573302 (= e!3439401 call!416473)))

(assert (= (and d!1762502 (not res!2365598)) b!5573295))

(assert (= (and b!5573295 c!975504) b!5573296))

(assert (= (and b!5573295 (not c!975504)) b!5573299))

(assert (= (and b!5573296 res!2365597) b!5573300))

(assert (= (and b!5573299 c!975503) b!5573294))

(assert (= (and b!5573299 (not c!975503)) b!5573301))

(assert (= (and b!5573294 res!2365594) b!5573302))

(assert (= (and b!5573301 (not res!2365596)) b!5573298))

(assert (= (and b!5573298 res!2365595) b!5573297))

(assert (= (or b!5573302 b!5573297) bm!416468))

(assert (= (or b!5573294 b!5573298) bm!416469))

(assert (= (or b!5573300 bm!416469) bm!416470))

(declare-fun m!6557346 () Bool)

(assert (=> bm!416468 m!6557346))

(declare-fun m!6557348 () Bool)

(assert (=> b!5573296 m!6557348))

(declare-fun m!6557350 () Bool)

(assert (=> bm!416470 m!6557350))

(assert (=> start!578934 d!1762502))

(declare-fun b!5573423 () Bool)

(declare-fun e!3439475 () Bool)

(declare-fun lt!2252000 () Option!15558)

(declare-fun ++!13786 (List!62948 List!62948) List!62948)

(declare-fun get!21628 (Option!15558) tuple2!65292)

(assert (=> b!5573423 (= e!3439475 (= (++!13786 (_1!35949 (get!21628 lt!2252000)) (_2!35949 (get!21628 lt!2252000))) s!2326))))

(declare-fun d!1762516 () Bool)

(declare-fun e!3439477 () Bool)

(assert (=> d!1762516 e!3439477))

(declare-fun res!2365637 () Bool)

(assert (=> d!1762516 (=> res!2365637 e!3439477)))

(assert (=> d!1762516 (= res!2365637 e!3439475)))

(declare-fun res!2365636 () Bool)

(assert (=> d!1762516 (=> (not res!2365636) (not e!3439475))))

(assert (=> d!1762516 (= res!2365636 (isDefined!12261 lt!2252000))))

(declare-fun e!3439476 () Option!15558)

(assert (=> d!1762516 (= lt!2252000 e!3439476)))

(declare-fun c!975538 () Bool)

(declare-fun e!3439474 () Bool)

(assert (=> d!1762516 (= c!975538 e!3439474)))

(declare-fun res!2365638 () Bool)

(assert (=> d!1762516 (=> (not res!2365638) (not e!3439474))))

(assert (=> d!1762516 (= res!2365638 (matchR!7734 (regOne!31610 r!7292) Nil!62824))))

(assert (=> d!1762516 (validRegex!7285 (regOne!31610 r!7292))))

(assert (=> d!1762516 (= (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) Nil!62824 s!2326 s!2326) lt!2252000)))

(declare-fun b!5573424 () Bool)

(assert (=> b!5573424 (= e!3439474 (matchR!7734 (regTwo!31610 r!7292) s!2326))))

(declare-fun b!5573425 () Bool)

(declare-fun res!2365635 () Bool)

(assert (=> b!5573425 (=> (not res!2365635) (not e!3439475))))

(assert (=> b!5573425 (= res!2365635 (matchR!7734 (regOne!31610 r!7292) (_1!35949 (get!21628 lt!2252000))))))

(declare-fun b!5573426 () Bool)

(declare-fun e!3439478 () Option!15558)

(assert (=> b!5573426 (= e!3439478 None!15557)))

(declare-fun b!5573427 () Bool)

(assert (=> b!5573427 (= e!3439476 e!3439478)))

(declare-fun c!975537 () Bool)

(assert (=> b!5573427 (= c!975537 ((_ is Nil!62824) s!2326))))

(declare-fun b!5573428 () Bool)

(declare-fun res!2365639 () Bool)

(assert (=> b!5573428 (=> (not res!2365639) (not e!3439475))))

(assert (=> b!5573428 (= res!2365639 (matchR!7734 (regTwo!31610 r!7292) (_2!35949 (get!21628 lt!2252000))))))

(declare-fun b!5573429 () Bool)

(assert (=> b!5573429 (= e!3439476 (Some!15557 (tuple2!65293 Nil!62824 s!2326)))))

(declare-fun b!5573430 () Bool)

(assert (=> b!5573430 (= e!3439477 (not (isDefined!12261 lt!2252000)))))

(declare-fun b!5573431 () Bool)

(declare-fun lt!2251999 () Unit!155568)

(declare-fun lt!2251998 () Unit!155568)

(assert (=> b!5573431 (= lt!2251999 lt!2251998)))

(assert (=> b!5573431 (= (++!13786 (++!13786 Nil!62824 (Cons!62824 (h!69272 s!2326) Nil!62824)) (t!376217 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1955 (List!62948 C!31368 List!62948 List!62948) Unit!155568)

(assert (=> b!5573431 (= lt!2251998 (lemmaMoveElementToOtherListKeepsConcatEq!1955 Nil!62824 (h!69272 s!2326) (t!376217 s!2326) s!2326))))

(assert (=> b!5573431 (= e!3439478 (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) (++!13786 Nil!62824 (Cons!62824 (h!69272 s!2326) Nil!62824)) (t!376217 s!2326) s!2326))))

(assert (= (and d!1762516 res!2365638) b!5573424))

(assert (= (and d!1762516 c!975538) b!5573429))

(assert (= (and d!1762516 (not c!975538)) b!5573427))

(assert (= (and b!5573427 c!975537) b!5573426))

(assert (= (and b!5573427 (not c!975537)) b!5573431))

(assert (= (and d!1762516 res!2365636) b!5573425))

(assert (= (and b!5573425 res!2365635) b!5573428))

(assert (= (and b!5573428 res!2365639) b!5573423))

(assert (= (and d!1762516 (not res!2365637)) b!5573430))

(declare-fun m!6557410 () Bool)

(assert (=> b!5573430 m!6557410))

(assert (=> d!1762516 m!6557410))

(declare-fun m!6557412 () Bool)

(assert (=> d!1762516 m!6557412))

(declare-fun m!6557414 () Bool)

(assert (=> d!1762516 m!6557414))

(declare-fun m!6557416 () Bool)

(assert (=> b!5573424 m!6557416))

(declare-fun m!6557418 () Bool)

(assert (=> b!5573428 m!6557418))

(declare-fun m!6557420 () Bool)

(assert (=> b!5573428 m!6557420))

(assert (=> b!5573425 m!6557418))

(declare-fun m!6557424 () Bool)

(assert (=> b!5573425 m!6557424))

(assert (=> b!5573423 m!6557418))

(declare-fun m!6557426 () Bool)

(assert (=> b!5573423 m!6557426))

(declare-fun m!6557428 () Bool)

(assert (=> b!5573431 m!6557428))

(assert (=> b!5573431 m!6557428))

(declare-fun m!6557430 () Bool)

(assert (=> b!5573431 m!6557430))

(declare-fun m!6557432 () Bool)

(assert (=> b!5573431 m!6557432))

(assert (=> b!5573431 m!6557428))

(declare-fun m!6557434 () Bool)

(assert (=> b!5573431 m!6557434))

(assert (=> b!5572935 d!1762516))

(declare-fun d!1762532 () Bool)

(declare-fun choose!42212 (Int) Bool)

(assert (=> d!1762532 (= (Exists!2649 lambda!298627) (choose!42212 lambda!298627))))

(declare-fun bs!1290074 () Bool)

(assert (= bs!1290074 d!1762532))

(declare-fun m!6557436 () Bool)

(assert (=> bs!1290074 m!6557436))

(assert (=> b!5572935 d!1762532))

(declare-fun d!1762536 () Bool)

(assert (=> d!1762536 (= (Exists!2649 lambda!298626) (choose!42212 lambda!298626))))

(declare-fun bs!1290075 () Bool)

(assert (= bs!1290075 d!1762536))

(declare-fun m!6557438 () Bool)

(assert (=> bs!1290075 m!6557438))

(assert (=> b!5572935 d!1762536))

(declare-fun bs!1290076 () Bool)

(declare-fun d!1762538 () Bool)

(assert (= bs!1290076 (and d!1762538 b!5572935)))

(declare-fun lambda!298659 () Int)

(assert (=> bs!1290076 (= lambda!298659 lambda!298626)))

(assert (=> bs!1290076 (not (= lambda!298659 lambda!298627))))

(assert (=> d!1762538 true))

(assert (=> d!1762538 true))

(assert (=> d!1762538 true))

(assert (=> d!1762538 (= (isDefined!12261 (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) Nil!62824 s!2326 s!2326)) (Exists!2649 lambda!298659))))

(declare-fun lt!2252003 () Unit!155568)

(declare-fun choose!42213 (Regex!15549 Regex!15549 List!62948) Unit!155568)

(assert (=> d!1762538 (= lt!2252003 (choose!42213 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326))))

(assert (=> d!1762538 (validRegex!7285 (regOne!31610 r!7292))))

(assert (=> d!1762538 (= (lemmaFindConcatSeparationEquivalentToExists!1736 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326) lt!2252003)))

(declare-fun bs!1290077 () Bool)

(assert (= bs!1290077 d!1762538))

(assert (=> bs!1290077 m!6557076))

(assert (=> bs!1290077 m!6557078))

(declare-fun m!6557440 () Bool)

(assert (=> bs!1290077 m!6557440))

(assert (=> bs!1290077 m!6557414))

(declare-fun m!6557442 () Bool)

(assert (=> bs!1290077 m!6557442))

(assert (=> bs!1290077 m!6557076))

(assert (=> b!5572935 d!1762538))

(declare-fun bs!1290078 () Bool)

(declare-fun d!1762540 () Bool)

(assert (= bs!1290078 (and d!1762540 b!5572935)))

(declare-fun lambda!298664 () Int)

(assert (=> bs!1290078 (= lambda!298664 lambda!298626)))

(assert (=> bs!1290078 (not (= lambda!298664 lambda!298627))))

(declare-fun bs!1290079 () Bool)

(assert (= bs!1290079 (and d!1762540 d!1762538)))

(assert (=> bs!1290079 (= lambda!298664 lambda!298659)))

(assert (=> d!1762540 true))

(assert (=> d!1762540 true))

(assert (=> d!1762540 true))

(declare-fun lambda!298665 () Int)

(assert (=> bs!1290078 (not (= lambda!298665 lambda!298626))))

(assert (=> bs!1290078 (= lambda!298665 lambda!298627)))

(assert (=> bs!1290079 (not (= lambda!298665 lambda!298659))))

(declare-fun bs!1290080 () Bool)

(assert (= bs!1290080 d!1762540))

(assert (=> bs!1290080 (not (= lambda!298665 lambda!298664))))

(assert (=> d!1762540 true))

(assert (=> d!1762540 true))

(assert (=> d!1762540 true))

(assert (=> d!1762540 (= (Exists!2649 lambda!298664) (Exists!2649 lambda!298665))))

(declare-fun lt!2252006 () Unit!155568)

(declare-fun choose!42214 (Regex!15549 Regex!15549 List!62948) Unit!155568)

(assert (=> d!1762540 (= lt!2252006 (choose!42214 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326))))

(assert (=> d!1762540 (validRegex!7285 (regOne!31610 r!7292))))

(assert (=> d!1762540 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1278 (regOne!31610 r!7292) (regTwo!31610 r!7292) s!2326) lt!2252006)))

(declare-fun m!6557444 () Bool)

(assert (=> bs!1290080 m!6557444))

(declare-fun m!6557446 () Bool)

(assert (=> bs!1290080 m!6557446))

(declare-fun m!6557448 () Bool)

(assert (=> bs!1290080 m!6557448))

(assert (=> bs!1290080 m!6557414))

(assert (=> b!5572935 d!1762540))

(declare-fun d!1762542 () Bool)

(declare-fun isEmpty!34629 (Option!15558) Bool)

(assert (=> d!1762542 (= (isDefined!12261 (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) Nil!62824 s!2326 s!2326)) (not (isEmpty!34629 (findConcatSeparation!1972 (regOne!31610 r!7292) (regTwo!31610 r!7292) Nil!62824 s!2326 s!2326))))))

(declare-fun bs!1290081 () Bool)

(assert (= bs!1290081 d!1762542))

(assert (=> bs!1290081 m!6557076))

(declare-fun m!6557450 () Bool)

(assert (=> bs!1290081 m!6557450))

(assert (=> b!5572935 d!1762542))

(declare-fun d!1762544 () Bool)

(declare-fun lambda!298668 () Int)

(declare-fun forall!14722 (List!62946 Int) Bool)

(assert (=> d!1762544 (= (inv!82119 setElem!37049) (forall!14722 (exprs!5433 setElem!37049) lambda!298668))))

(declare-fun bs!1290082 () Bool)

(assert (= bs!1290082 d!1762544))

(declare-fun m!6557452 () Bool)

(assert (=> bs!1290082 m!6557452))

(assert (=> setNonEmpty!37049 d!1762544))

(declare-fun d!1762546 () Bool)

(declare-fun e!3439502 () Bool)

(assert (=> d!1762546 e!3439502))

(declare-fun res!2365654 () Bool)

(assert (=> d!1762546 (=> (not res!2365654) (not e!3439502))))

(declare-fun lt!2252009 () List!62947)

(declare-fun noDuplicate!1532 (List!62947) Bool)

(assert (=> d!1762546 (= res!2365654 (noDuplicate!1532 lt!2252009))))

(declare-fun choose!42215 ((InoxSet Context!9866)) List!62947)

(assert (=> d!1762546 (= lt!2252009 (choose!42215 z!1189))))

(assert (=> d!1762546 (= (toList!9333 z!1189) lt!2252009)))

(declare-fun b!5573480 () Bool)

(declare-fun content!11320 (List!62947) (InoxSet Context!9866))

(assert (=> b!5573480 (= e!3439502 (= (content!11320 lt!2252009) z!1189))))

(assert (= (and d!1762546 res!2365654) b!5573480))

(declare-fun m!6557454 () Bool)

(assert (=> d!1762546 m!6557454))

(declare-fun m!6557456 () Bool)

(assert (=> d!1762546 m!6557456))

(declare-fun m!6557458 () Bool)

(assert (=> b!5573480 m!6557458))

(assert (=> b!5572944 d!1762546))

(declare-fun bs!1290083 () Bool)

(declare-fun b!5573515 () Bool)

(assert (= bs!1290083 (and b!5573515 d!1762540)))

(declare-fun lambda!298673 () Int)

(assert (=> bs!1290083 (not (= lambda!298673 lambda!298664))))

(assert (=> bs!1290083 (not (= lambda!298673 lambda!298665))))

(declare-fun bs!1290084 () Bool)

(assert (= bs!1290084 (and b!5573515 b!5572935)))

(assert (=> bs!1290084 (not (= lambda!298673 lambda!298626))))

(assert (=> bs!1290084 (not (= lambda!298673 lambda!298627))))

(declare-fun bs!1290085 () Bool)

(assert (= bs!1290085 (and b!5573515 d!1762538)))

(assert (=> bs!1290085 (not (= lambda!298673 lambda!298659))))

(assert (=> b!5573515 true))

(assert (=> b!5573515 true))

(declare-fun bs!1290086 () Bool)

(declare-fun b!5573516 () Bool)

(assert (= bs!1290086 (and b!5573516 d!1762540)))

(declare-fun lambda!298674 () Int)

(assert (=> bs!1290086 (not (= lambda!298674 lambda!298664))))

(assert (=> bs!1290086 (= lambda!298674 lambda!298665)))

(declare-fun bs!1290087 () Bool)

(assert (= bs!1290087 (and b!5573516 b!5572935)))

(assert (=> bs!1290087 (not (= lambda!298674 lambda!298626))))

(assert (=> bs!1290087 (= lambda!298674 lambda!298627)))

(declare-fun bs!1290088 () Bool)

(assert (= bs!1290088 (and b!5573516 b!5573515)))

(assert (=> bs!1290088 (not (= lambda!298674 lambda!298673))))

(declare-fun bs!1290089 () Bool)

(assert (= bs!1290089 (and b!5573516 d!1762538)))

(assert (=> bs!1290089 (not (= lambda!298674 lambda!298659))))

(assert (=> b!5573516 true))

(assert (=> b!5573516 true))

(declare-fun b!5573513 () Bool)

(declare-fun c!975550 () Bool)

(assert (=> b!5573513 (= c!975550 ((_ is Union!15549) r!7292))))

(declare-fun e!3439526 () Bool)

(declare-fun e!3439524 () Bool)

(assert (=> b!5573513 (= e!3439526 e!3439524)))

(declare-fun b!5573514 () Bool)

(assert (=> b!5573514 (= e!3439526 (= s!2326 (Cons!62824 (c!975388 r!7292) Nil!62824)))))

(declare-fun bm!416491 () Bool)

(declare-fun call!416496 () Bool)

(assert (=> bm!416491 (= call!416496 (isEmpty!34628 s!2326))))

(declare-fun e!3439521 () Bool)

(declare-fun call!416497 () Bool)

(assert (=> b!5573515 (= e!3439521 call!416497)))

(declare-fun e!3439522 () Bool)

(assert (=> b!5573516 (= e!3439522 call!416497)))

(declare-fun b!5573517 () Bool)

(declare-fun c!975547 () Bool)

(assert (=> b!5573517 (= c!975547 ((_ is ElementMatch!15549) r!7292))))

(declare-fun e!3439523 () Bool)

(assert (=> b!5573517 (= e!3439523 e!3439526)))

(declare-fun b!5573518 () Bool)

(declare-fun res!2365671 () Bool)

(assert (=> b!5573518 (=> res!2365671 e!3439521)))

(assert (=> b!5573518 (= res!2365671 call!416496)))

(assert (=> b!5573518 (= e!3439522 e!3439521)))

(declare-fun b!5573519 () Bool)

(assert (=> b!5573519 (= e!3439524 e!3439522)))

(declare-fun c!975548 () Bool)

(assert (=> b!5573519 (= c!975548 ((_ is Star!15549) r!7292))))

(declare-fun b!5573520 () Bool)

(declare-fun e!3439527 () Bool)

(assert (=> b!5573520 (= e!3439527 e!3439523)))

(declare-fun res!2365673 () Bool)

(assert (=> b!5573520 (= res!2365673 (not ((_ is EmptyLang!15549) r!7292)))))

(assert (=> b!5573520 (=> (not res!2365673) (not e!3439523))))

(declare-fun d!1762548 () Bool)

(declare-fun c!975549 () Bool)

(assert (=> d!1762548 (= c!975549 ((_ is EmptyExpr!15549) r!7292))))

(assert (=> d!1762548 (= (matchRSpec!2652 r!7292 s!2326) e!3439527)))

(declare-fun b!5573521 () Bool)

(declare-fun e!3439525 () Bool)

(assert (=> b!5573521 (= e!3439524 e!3439525)))

(declare-fun res!2365672 () Bool)

(assert (=> b!5573521 (= res!2365672 (matchRSpec!2652 (regOne!31611 r!7292) s!2326))))

(assert (=> b!5573521 (=> res!2365672 e!3439525)))

(declare-fun bm!416492 () Bool)

(assert (=> bm!416492 (= call!416497 (Exists!2649 (ite c!975548 lambda!298673 lambda!298674)))))

(declare-fun b!5573522 () Bool)

(assert (=> b!5573522 (= e!3439525 (matchRSpec!2652 (regTwo!31611 r!7292) s!2326))))

(declare-fun b!5573523 () Bool)

(assert (=> b!5573523 (= e!3439527 call!416496)))

(assert (= (and d!1762548 c!975549) b!5573523))

(assert (= (and d!1762548 (not c!975549)) b!5573520))

(assert (= (and b!5573520 res!2365673) b!5573517))

(assert (= (and b!5573517 c!975547) b!5573514))

(assert (= (and b!5573517 (not c!975547)) b!5573513))

(assert (= (and b!5573513 c!975550) b!5573521))

(assert (= (and b!5573513 (not c!975550)) b!5573519))

(assert (= (and b!5573521 (not res!2365672)) b!5573522))

(assert (= (and b!5573519 c!975548) b!5573518))

(assert (= (and b!5573519 (not c!975548)) b!5573516))

(assert (= (and b!5573518 (not res!2365671)) b!5573515))

(assert (= (or b!5573515 b!5573516) bm!416492))

(assert (= (or b!5573523 b!5573518) bm!416491))

(declare-fun m!6557460 () Bool)

(assert (=> bm!416491 m!6557460))

(declare-fun m!6557462 () Bool)

(assert (=> b!5573521 m!6557462))

(declare-fun m!6557464 () Bool)

(assert (=> bm!416492 m!6557464))

(declare-fun m!6557466 () Bool)

(assert (=> b!5573522 m!6557466))

(assert (=> b!5572933 d!1762548))

(declare-fun b!5573552 () Bool)

(declare-fun e!3439545 () Bool)

(declare-fun lt!2252012 () Bool)

(assert (=> b!5573552 (= e!3439545 (not lt!2252012))))

(declare-fun b!5573553 () Bool)

(declare-fun e!3439547 () Bool)

(assert (=> b!5573553 (= e!3439547 (= (head!11881 s!2326) (c!975388 r!7292)))))

(declare-fun b!5573554 () Bool)

(declare-fun e!3439544 () Bool)

(declare-fun e!3439542 () Bool)

(assert (=> b!5573554 (= e!3439544 e!3439542)))

(declare-fun res!2365691 () Bool)

(assert (=> b!5573554 (=> res!2365691 e!3439542)))

(declare-fun call!416500 () Bool)

(assert (=> b!5573554 (= res!2365691 call!416500)))

(declare-fun b!5573555 () Bool)

(declare-fun e!3439548 () Bool)

(declare-fun derivativeStep!4404 (Regex!15549 C!31368) Regex!15549)

(assert (=> b!5573555 (= e!3439548 (matchR!7734 (derivativeStep!4404 r!7292 (head!11881 s!2326)) (tail!10976 s!2326)))))

(declare-fun b!5573556 () Bool)

(declare-fun res!2365695 () Bool)

(declare-fun e!3439546 () Bool)

(assert (=> b!5573556 (=> res!2365695 e!3439546)))

(assert (=> b!5573556 (= res!2365695 e!3439547)))

(declare-fun res!2365692 () Bool)

(assert (=> b!5573556 (=> (not res!2365692) (not e!3439547))))

(assert (=> b!5573556 (= res!2365692 lt!2252012)))

(declare-fun b!5573557 () Bool)

(declare-fun e!3439543 () Bool)

(assert (=> b!5573557 (= e!3439543 e!3439545)))

(declare-fun c!975558 () Bool)

(assert (=> b!5573557 (= c!975558 ((_ is EmptyLang!15549) r!7292))))

(declare-fun b!5573558 () Bool)

(declare-fun res!2365697 () Bool)

(assert (=> b!5573558 (=> res!2365697 e!3439542)))

(assert (=> b!5573558 (= res!2365697 (not (isEmpty!34628 (tail!10976 s!2326))))))

(declare-fun d!1762550 () Bool)

(assert (=> d!1762550 e!3439543))

(declare-fun c!975557 () Bool)

(assert (=> d!1762550 (= c!975557 ((_ is EmptyExpr!15549) r!7292))))

(assert (=> d!1762550 (= lt!2252012 e!3439548)))

(declare-fun c!975559 () Bool)

(assert (=> d!1762550 (= c!975559 (isEmpty!34628 s!2326))))

(assert (=> d!1762550 (validRegex!7285 r!7292)))

(assert (=> d!1762550 (= (matchR!7734 r!7292 s!2326) lt!2252012)))

(declare-fun b!5573559 () Bool)

(assert (=> b!5573559 (= e!3439542 (not (= (head!11881 s!2326) (c!975388 r!7292))))))

(declare-fun b!5573560 () Bool)

(declare-fun res!2365694 () Bool)

(assert (=> b!5573560 (=> (not res!2365694) (not e!3439547))))

(assert (=> b!5573560 (= res!2365694 (isEmpty!34628 (tail!10976 s!2326)))))

(declare-fun b!5573561 () Bool)

(assert (=> b!5573561 (= e!3439548 (nullable!5581 r!7292))))

(declare-fun b!5573562 () Bool)

(assert (=> b!5573562 (= e!3439543 (= lt!2252012 call!416500))))

(declare-fun b!5573563 () Bool)

(declare-fun res!2365693 () Bool)

(assert (=> b!5573563 (=> (not res!2365693) (not e!3439547))))

(assert (=> b!5573563 (= res!2365693 (not call!416500))))

(declare-fun b!5573564 () Bool)

(assert (=> b!5573564 (= e!3439546 e!3439544)))

(declare-fun res!2365696 () Bool)

(assert (=> b!5573564 (=> (not res!2365696) (not e!3439544))))

(assert (=> b!5573564 (= res!2365696 (not lt!2252012))))

(declare-fun b!5573565 () Bool)

(declare-fun res!2365690 () Bool)

(assert (=> b!5573565 (=> res!2365690 e!3439546)))

(assert (=> b!5573565 (= res!2365690 (not ((_ is ElementMatch!15549) r!7292)))))

(assert (=> b!5573565 (= e!3439545 e!3439546)))

(declare-fun bm!416495 () Bool)

(assert (=> bm!416495 (= call!416500 (isEmpty!34628 s!2326))))

(assert (= (and d!1762550 c!975559) b!5573561))

(assert (= (and d!1762550 (not c!975559)) b!5573555))

(assert (= (and d!1762550 c!975557) b!5573562))

(assert (= (and d!1762550 (not c!975557)) b!5573557))

(assert (= (and b!5573557 c!975558) b!5573552))

(assert (= (and b!5573557 (not c!975558)) b!5573565))

(assert (= (and b!5573565 (not res!2365690)) b!5573556))

(assert (= (and b!5573556 res!2365692) b!5573563))

(assert (= (and b!5573563 res!2365693) b!5573560))

(assert (= (and b!5573560 res!2365694) b!5573553))

(assert (= (and b!5573556 (not res!2365695)) b!5573564))

(assert (= (and b!5573564 res!2365696) b!5573554))

(assert (= (and b!5573554 (not res!2365691)) b!5573558))

(assert (= (and b!5573558 (not res!2365697)) b!5573559))

(assert (= (or b!5573562 b!5573554 b!5573563) bm!416495))

(declare-fun m!6557468 () Bool)

(assert (=> b!5573558 m!6557468))

(assert (=> b!5573558 m!6557468))

(declare-fun m!6557470 () Bool)

(assert (=> b!5573558 m!6557470))

(declare-fun m!6557472 () Bool)

(assert (=> b!5573559 m!6557472))

(assert (=> b!5573555 m!6557472))

(assert (=> b!5573555 m!6557472))

(declare-fun m!6557474 () Bool)

(assert (=> b!5573555 m!6557474))

(assert (=> b!5573555 m!6557468))

(assert (=> b!5573555 m!6557474))

(assert (=> b!5573555 m!6557468))

(declare-fun m!6557476 () Bool)

(assert (=> b!5573555 m!6557476))

(declare-fun m!6557478 () Bool)

(assert (=> b!5573561 m!6557478))

(assert (=> d!1762550 m!6557460))

(assert (=> d!1762550 m!6557130))

(assert (=> bm!416495 m!6557460))

(assert (=> b!5573553 m!6557472))

(assert (=> b!5573560 m!6557468))

(assert (=> b!5573560 m!6557468))

(assert (=> b!5573560 m!6557470))

(assert (=> b!5572933 d!1762550))

(declare-fun d!1762552 () Bool)

(assert (=> d!1762552 (= (matchR!7734 r!7292 s!2326) (matchRSpec!2652 r!7292 s!2326))))

(declare-fun lt!2252015 () Unit!155568)

(declare-fun choose!42216 (Regex!15549 List!62948) Unit!155568)

(assert (=> d!1762552 (= lt!2252015 (choose!42216 r!7292 s!2326))))

(assert (=> d!1762552 (validRegex!7285 r!7292)))

(assert (=> d!1762552 (= (mainMatchTheorem!2652 r!7292 s!2326) lt!2252015)))

(declare-fun bs!1290090 () Bool)

(assert (= bs!1290090 d!1762552))

(assert (=> bs!1290090 m!6557134))

(assert (=> bs!1290090 m!6557132))

(declare-fun m!6557480 () Bool)

(assert (=> bs!1290090 m!6557480))

(assert (=> bs!1290090 m!6557130))

(assert (=> b!5572933 d!1762552))

(declare-fun d!1762554 () Bool)

(assert (=> d!1762554 (= (isEmpty!34625 (t!376216 zl!343)) ((_ is Nil!62823) (t!376216 zl!343)))))

(assert (=> b!5572952 d!1762554))

(declare-fun d!1762556 () Bool)

(declare-fun lt!2252018 () Regex!15549)

(assert (=> d!1762556 (validRegex!7285 lt!2252018)))

(assert (=> d!1762556 (= lt!2252018 (generalisedUnion!1412 (unfocusZipperList!977 zl!343)))))

(assert (=> d!1762556 (= (unfocusZipper!1291 zl!343) lt!2252018)))

(declare-fun bs!1290091 () Bool)

(assert (= bs!1290091 d!1762556))

(declare-fun m!6557482 () Bool)

(assert (=> bs!1290091 m!6557482))

(assert (=> bs!1290091 m!6557092))

(assert (=> bs!1290091 m!6557092))

(assert (=> bs!1290091 m!6557094))

(assert (=> b!5572931 d!1762556))

(declare-fun d!1762558 () Bool)

(declare-fun e!3439551 () Bool)

(assert (=> d!1762558 (= (matchZipper!1687 ((_ map or) lt!2251944 lt!2251945) (t!376217 s!2326)) e!3439551)))

(declare-fun res!2365700 () Bool)

(assert (=> d!1762558 (=> res!2365700 e!3439551)))

(assert (=> d!1762558 (= res!2365700 (matchZipper!1687 lt!2251944 (t!376217 s!2326)))))

(declare-fun lt!2252021 () Unit!155568)

(declare-fun choose!42217 ((InoxSet Context!9866) (InoxSet Context!9866) List!62948) Unit!155568)

(assert (=> d!1762558 (= lt!2252021 (choose!42217 lt!2251944 lt!2251945 (t!376217 s!2326)))))

(assert (=> d!1762558 (= (lemmaZipperConcatMatchesSameAsBothZippers!574 lt!2251944 lt!2251945 (t!376217 s!2326)) lt!2252021)))

(declare-fun b!5573568 () Bool)

(assert (=> b!5573568 (= e!3439551 (matchZipper!1687 lt!2251945 (t!376217 s!2326)))))

(assert (= (and d!1762558 (not res!2365700)) b!5573568))

(assert (=> d!1762558 m!6557100))

(assert (=> d!1762558 m!6557098))

(declare-fun m!6557484 () Bool)

(assert (=> d!1762558 m!6557484))

(assert (=> b!5573568 m!6557106))

(assert (=> b!5572941 d!1762558))

(declare-fun d!1762560 () Bool)

(declare-fun c!975560 () Bool)

(assert (=> d!1762560 (= c!975560 (isEmpty!34628 (t!376217 s!2326)))))

(declare-fun e!3439552 () Bool)

(assert (=> d!1762560 (= (matchZipper!1687 lt!2251944 (t!376217 s!2326)) e!3439552)))

(declare-fun b!5573569 () Bool)

(assert (=> b!5573569 (= e!3439552 (nullableZipper!1551 lt!2251944))))

(declare-fun b!5573570 () Bool)

(assert (=> b!5573570 (= e!3439552 (matchZipper!1687 (derivationStepZipper!1650 lt!2251944 (head!11881 (t!376217 s!2326))) (tail!10976 (t!376217 s!2326))))))

(assert (= (and d!1762560 c!975560) b!5573569))

(assert (= (and d!1762560 (not c!975560)) b!5573570))

(assert (=> d!1762560 m!6557162))

(declare-fun m!6557486 () Bool)

(assert (=> b!5573569 m!6557486))

(assert (=> b!5573570 m!6557166))

(assert (=> b!5573570 m!6557166))

(declare-fun m!6557488 () Bool)

(assert (=> b!5573570 m!6557488))

(assert (=> b!5573570 m!6557170))

(assert (=> b!5573570 m!6557488))

(assert (=> b!5573570 m!6557170))

(declare-fun m!6557490 () Bool)

(assert (=> b!5573570 m!6557490))

(assert (=> b!5572941 d!1762560))

(declare-fun d!1762562 () Bool)

(declare-fun c!975561 () Bool)

(assert (=> d!1762562 (= c!975561 (isEmpty!34628 (t!376217 s!2326)))))

(declare-fun e!3439553 () Bool)

(assert (=> d!1762562 (= (matchZipper!1687 ((_ map or) lt!2251944 lt!2251945) (t!376217 s!2326)) e!3439553)))

(declare-fun b!5573571 () Bool)

(assert (=> b!5573571 (= e!3439553 (nullableZipper!1551 ((_ map or) lt!2251944 lt!2251945)))))

(declare-fun b!5573572 () Bool)

(assert (=> b!5573572 (= e!3439553 (matchZipper!1687 (derivationStepZipper!1650 ((_ map or) lt!2251944 lt!2251945) (head!11881 (t!376217 s!2326))) (tail!10976 (t!376217 s!2326))))))

(assert (= (and d!1762562 c!975561) b!5573571))

(assert (= (and d!1762562 (not c!975561)) b!5573572))

(assert (=> d!1762562 m!6557162))

(declare-fun m!6557492 () Bool)

(assert (=> b!5573571 m!6557492))

(assert (=> b!5573572 m!6557166))

(assert (=> b!5573572 m!6557166))

(declare-fun m!6557494 () Bool)

(assert (=> b!5573572 m!6557494))

(assert (=> b!5573572 m!6557170))

(assert (=> b!5573572 m!6557494))

(assert (=> b!5573572 m!6557170))

(declare-fun m!6557496 () Bool)

(assert (=> b!5573572 m!6557496))

(assert (=> b!5572941 d!1762562))

(declare-fun d!1762564 () Bool)

(assert (=> d!1762564 (= (isEmpty!34624 (t!376215 (exprs!5433 (h!69271 zl!343)))) ((_ is Nil!62822) (t!376215 (exprs!5433 (h!69271 zl!343)))))))

(assert (=> b!5572940 d!1762564))

(declare-fun bs!1290092 () Bool)

(declare-fun d!1762566 () Bool)

(assert (= bs!1290092 (and d!1762566 d!1762544)))

(declare-fun lambda!298675 () Int)

(assert (=> bs!1290092 (= lambda!298675 lambda!298668)))

(assert (=> d!1762566 (= (inv!82119 (h!69271 zl!343)) (forall!14722 (exprs!5433 (h!69271 zl!343)) lambda!298675))))

(declare-fun bs!1290093 () Bool)

(assert (= bs!1290093 d!1762566))

(declare-fun m!6557498 () Bool)

(assert (=> bs!1290093 m!6557498))

(assert (=> b!5572939 d!1762566))

(declare-fun bs!1290094 () Bool)

(declare-fun d!1762568 () Bool)

(assert (= bs!1290094 (and d!1762568 d!1762544)))

(declare-fun lambda!298678 () Int)

(assert (=> bs!1290094 (= lambda!298678 lambda!298668)))

(declare-fun bs!1290095 () Bool)

(assert (= bs!1290095 (and d!1762568 d!1762566)))

(assert (=> bs!1290095 (= lambda!298678 lambda!298675)))

(declare-fun b!5573593 () Bool)

(declare-fun e!3439567 () Regex!15549)

(assert (=> b!5573593 (= e!3439567 (h!69270 (unfocusZipperList!977 zl!343)))))

(declare-fun b!5573594 () Bool)

(declare-fun e!3439569 () Bool)

(declare-fun lt!2252024 () Regex!15549)

(declare-fun isEmptyLang!1122 (Regex!15549) Bool)

(assert (=> b!5573594 (= e!3439569 (isEmptyLang!1122 lt!2252024))))

(declare-fun b!5573595 () Bool)

(declare-fun e!3439571 () Regex!15549)

(assert (=> b!5573595 (= e!3439571 EmptyLang!15549)))

(declare-fun b!5573596 () Bool)

(declare-fun e!3439568 () Bool)

(assert (=> b!5573596 (= e!3439568 e!3439569)))

(declare-fun c!975573 () Bool)

(assert (=> b!5573596 (= c!975573 (isEmpty!34624 (unfocusZipperList!977 zl!343)))))

(declare-fun b!5573597 () Bool)

(declare-fun e!3439566 () Bool)

(assert (=> b!5573597 (= e!3439566 (isEmpty!34624 (t!376215 (unfocusZipperList!977 zl!343))))))

(declare-fun b!5573598 () Bool)

(declare-fun e!3439570 () Bool)

(declare-fun isUnion!552 (Regex!15549) Bool)

(assert (=> b!5573598 (= e!3439570 (isUnion!552 lt!2252024))))

(declare-fun b!5573599 () Bool)

(assert (=> b!5573599 (= e!3439569 e!3439570)))

(declare-fun c!975571 () Bool)

(declare-fun tail!10977 (List!62946) List!62946)

(assert (=> b!5573599 (= c!975571 (isEmpty!34624 (tail!10977 (unfocusZipperList!977 zl!343))))))

(declare-fun b!5573600 () Bool)

(declare-fun head!11882 (List!62946) Regex!15549)

(assert (=> b!5573600 (= e!3439570 (= lt!2252024 (head!11882 (unfocusZipperList!977 zl!343))))))

(declare-fun b!5573601 () Bool)

(assert (=> b!5573601 (= e!3439571 (Union!15549 (h!69270 (unfocusZipperList!977 zl!343)) (generalisedUnion!1412 (t!376215 (unfocusZipperList!977 zl!343)))))))

(assert (=> d!1762568 e!3439568))

(declare-fun res!2365706 () Bool)

(assert (=> d!1762568 (=> (not res!2365706) (not e!3439568))))

(assert (=> d!1762568 (= res!2365706 (validRegex!7285 lt!2252024))))

(assert (=> d!1762568 (= lt!2252024 e!3439567)))

(declare-fun c!975570 () Bool)

(assert (=> d!1762568 (= c!975570 e!3439566)))

(declare-fun res!2365705 () Bool)

(assert (=> d!1762568 (=> (not res!2365705) (not e!3439566))))

(assert (=> d!1762568 (= res!2365705 ((_ is Cons!62822) (unfocusZipperList!977 zl!343)))))

(assert (=> d!1762568 (forall!14722 (unfocusZipperList!977 zl!343) lambda!298678)))

(assert (=> d!1762568 (= (generalisedUnion!1412 (unfocusZipperList!977 zl!343)) lt!2252024)))

(declare-fun b!5573602 () Bool)

(assert (=> b!5573602 (= e!3439567 e!3439571)))

(declare-fun c!975572 () Bool)

(assert (=> b!5573602 (= c!975572 ((_ is Cons!62822) (unfocusZipperList!977 zl!343)))))

(assert (= (and d!1762568 res!2365705) b!5573597))

(assert (= (and d!1762568 c!975570) b!5573593))

(assert (= (and d!1762568 (not c!975570)) b!5573602))

(assert (= (and b!5573602 c!975572) b!5573601))

(assert (= (and b!5573602 (not c!975572)) b!5573595))

(assert (= (and d!1762568 res!2365706) b!5573596))

(assert (= (and b!5573596 c!975573) b!5573594))

(assert (= (and b!5573596 (not c!975573)) b!5573599))

(assert (= (and b!5573599 c!975571) b!5573600))

(assert (= (and b!5573599 (not c!975571)) b!5573598))

(declare-fun m!6557500 () Bool)

(assert (=> b!5573597 m!6557500))

(assert (=> b!5573599 m!6557092))

(declare-fun m!6557502 () Bool)

(assert (=> b!5573599 m!6557502))

(assert (=> b!5573599 m!6557502))

(declare-fun m!6557504 () Bool)

(assert (=> b!5573599 m!6557504))

(declare-fun m!6557506 () Bool)

(assert (=> b!5573601 m!6557506))

(declare-fun m!6557508 () Bool)

(assert (=> b!5573594 m!6557508))

(assert (=> b!5573600 m!6557092))

(declare-fun m!6557510 () Bool)

(assert (=> b!5573600 m!6557510))

(declare-fun m!6557512 () Bool)

(assert (=> d!1762568 m!6557512))

(assert (=> d!1762568 m!6557092))

(declare-fun m!6557514 () Bool)

(assert (=> d!1762568 m!6557514))

(assert (=> b!5573596 m!6557092))

(declare-fun m!6557516 () Bool)

(assert (=> b!5573596 m!6557516))

(declare-fun m!6557518 () Bool)

(assert (=> b!5573598 m!6557518))

(assert (=> b!5572938 d!1762568))

(declare-fun bs!1290096 () Bool)

(declare-fun d!1762570 () Bool)

(assert (= bs!1290096 (and d!1762570 d!1762544)))

(declare-fun lambda!298681 () Int)

(assert (=> bs!1290096 (= lambda!298681 lambda!298668)))

(declare-fun bs!1290097 () Bool)

(assert (= bs!1290097 (and d!1762570 d!1762566)))

(assert (=> bs!1290097 (= lambda!298681 lambda!298675)))

(declare-fun bs!1290098 () Bool)

(assert (= bs!1290098 (and d!1762570 d!1762568)))

(assert (=> bs!1290098 (= lambda!298681 lambda!298678)))

(declare-fun lt!2252027 () List!62946)

(assert (=> d!1762570 (forall!14722 lt!2252027 lambda!298681)))

(declare-fun e!3439574 () List!62946)

(assert (=> d!1762570 (= lt!2252027 e!3439574)))

(declare-fun c!975576 () Bool)

(assert (=> d!1762570 (= c!975576 ((_ is Cons!62823) zl!343))))

(assert (=> d!1762570 (= (unfocusZipperList!977 zl!343) lt!2252027)))

(declare-fun b!5573607 () Bool)

(assert (=> b!5573607 (= e!3439574 (Cons!62822 (generalisedConcat!1164 (exprs!5433 (h!69271 zl!343))) (unfocusZipperList!977 (t!376216 zl!343))))))

(declare-fun b!5573608 () Bool)

(assert (=> b!5573608 (= e!3439574 Nil!62822)))

(assert (= (and d!1762570 c!975576) b!5573607))

(assert (= (and d!1762570 (not c!975576)) b!5573608))

(declare-fun m!6557520 () Bool)

(assert (=> d!1762570 m!6557520))

(assert (=> b!5573607 m!6557114))

(declare-fun m!6557522 () Bool)

(assert (=> b!5573607 m!6557522))

(assert (=> b!5572938 d!1762570))

(declare-fun bs!1290099 () Bool)

(declare-fun d!1762572 () Bool)

(assert (= bs!1290099 (and d!1762572 d!1762544)))

(declare-fun lambda!298684 () Int)

(assert (=> bs!1290099 (= lambda!298684 lambda!298668)))

(declare-fun bs!1290100 () Bool)

(assert (= bs!1290100 (and d!1762572 d!1762566)))

(assert (=> bs!1290100 (= lambda!298684 lambda!298675)))

(declare-fun bs!1290101 () Bool)

(assert (= bs!1290101 (and d!1762572 d!1762568)))

(assert (=> bs!1290101 (= lambda!298684 lambda!298678)))

(declare-fun bs!1290102 () Bool)

(assert (= bs!1290102 (and d!1762572 d!1762570)))

(assert (=> bs!1290102 (= lambda!298684 lambda!298681)))

(declare-fun b!5573629 () Bool)

(declare-fun e!3439590 () Bool)

(declare-fun e!3439592 () Bool)

(assert (=> b!5573629 (= e!3439590 e!3439592)))

(declare-fun c!975586 () Bool)

(assert (=> b!5573629 (= c!975586 (isEmpty!34624 (tail!10977 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5573630 () Bool)

(declare-fun e!3439591 () Bool)

(assert (=> b!5573630 (= e!3439591 (isEmpty!34624 (t!376215 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5573631 () Bool)

(declare-fun e!3439589 () Bool)

(assert (=> b!5573631 (= e!3439589 e!3439590)))

(declare-fun c!975585 () Bool)

(assert (=> b!5573631 (= c!975585 (isEmpty!34624 (exprs!5433 (h!69271 zl!343))))))

(assert (=> d!1762572 e!3439589))

(declare-fun res!2365711 () Bool)

(assert (=> d!1762572 (=> (not res!2365711) (not e!3439589))))

(declare-fun lt!2252030 () Regex!15549)

(assert (=> d!1762572 (= res!2365711 (validRegex!7285 lt!2252030))))

(declare-fun e!3439588 () Regex!15549)

(assert (=> d!1762572 (= lt!2252030 e!3439588)))

(declare-fun c!975587 () Bool)

(assert (=> d!1762572 (= c!975587 e!3439591)))

(declare-fun res!2365712 () Bool)

(assert (=> d!1762572 (=> (not res!2365712) (not e!3439591))))

(assert (=> d!1762572 (= res!2365712 ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343))))))

(assert (=> d!1762572 (forall!14722 (exprs!5433 (h!69271 zl!343)) lambda!298684)))

(assert (=> d!1762572 (= (generalisedConcat!1164 (exprs!5433 (h!69271 zl!343))) lt!2252030)))

(declare-fun b!5573632 () Bool)

(declare-fun e!3439587 () Regex!15549)

(assert (=> b!5573632 (= e!3439587 EmptyExpr!15549)))

(declare-fun b!5573633 () Bool)

(assert (=> b!5573633 (= e!3439592 (= lt!2252030 (head!11882 (exprs!5433 (h!69271 zl!343)))))))

(declare-fun b!5573634 () Bool)

(assert (=> b!5573634 (= e!3439588 e!3439587)))

(declare-fun c!975588 () Bool)

(assert (=> b!5573634 (= c!975588 ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343))))))

(declare-fun b!5573635 () Bool)

(assert (=> b!5573635 (= e!3439587 (Concat!24394 (h!69270 (exprs!5433 (h!69271 zl!343))) (generalisedConcat!1164 (t!376215 (exprs!5433 (h!69271 zl!343))))))))

(declare-fun b!5573636 () Bool)

(declare-fun isConcat!634 (Regex!15549) Bool)

(assert (=> b!5573636 (= e!3439592 (isConcat!634 lt!2252030))))

(declare-fun b!5573637 () Bool)

(assert (=> b!5573637 (= e!3439588 (h!69270 (exprs!5433 (h!69271 zl!343))))))

(declare-fun b!5573638 () Bool)

(declare-fun isEmptyExpr!1111 (Regex!15549) Bool)

(assert (=> b!5573638 (= e!3439590 (isEmptyExpr!1111 lt!2252030))))

(assert (= (and d!1762572 res!2365712) b!5573630))

(assert (= (and d!1762572 c!975587) b!5573637))

(assert (= (and d!1762572 (not c!975587)) b!5573634))

(assert (= (and b!5573634 c!975588) b!5573635))

(assert (= (and b!5573634 (not c!975588)) b!5573632))

(assert (= (and d!1762572 res!2365711) b!5573631))

(assert (= (and b!5573631 c!975585) b!5573638))

(assert (= (and b!5573631 (not c!975585)) b!5573629))

(assert (= (and b!5573629 c!975586) b!5573633))

(assert (= (and b!5573629 (not c!975586)) b!5573636))

(declare-fun m!6557524 () Bool)

(assert (=> b!5573633 m!6557524))

(declare-fun m!6557526 () Bool)

(assert (=> b!5573638 m!6557526))

(assert (=> b!5573630 m!6557112))

(declare-fun m!6557528 () Bool)

(assert (=> b!5573629 m!6557528))

(assert (=> b!5573629 m!6557528))

(declare-fun m!6557530 () Bool)

(assert (=> b!5573629 m!6557530))

(declare-fun m!6557532 () Bool)

(assert (=> d!1762572 m!6557532))

(declare-fun m!6557534 () Bool)

(assert (=> d!1762572 m!6557534))

(declare-fun m!6557536 () Bool)

(assert (=> b!5573631 m!6557536))

(declare-fun m!6557538 () Bool)

(assert (=> b!5573636 m!6557538))

(declare-fun m!6557540 () Bool)

(assert (=> b!5573635 m!6557540))

(assert (=> b!5572947 d!1762572))

(declare-fun b!5573643 () Bool)

(declare-fun e!3439595 () Bool)

(declare-fun tp!1542634 () Bool)

(declare-fun tp!1542635 () Bool)

(assert (=> b!5573643 (= e!3439595 (and tp!1542634 tp!1542635))))

(assert (=> b!5572942 (= tp!1542563 e!3439595)))

(assert (= (and b!5572942 ((_ is Cons!62822) (exprs!5433 setElem!37049))) b!5573643))

(declare-fun b!5573656 () Bool)

(declare-fun e!3439598 () Bool)

(declare-fun tp!1542649 () Bool)

(assert (=> b!5573656 (= e!3439598 tp!1542649)))

(declare-fun b!5573657 () Bool)

(declare-fun tp!1542646 () Bool)

(declare-fun tp!1542650 () Bool)

(assert (=> b!5573657 (= e!3439598 (and tp!1542646 tp!1542650))))

(assert (=> b!5572932 (= tp!1542564 e!3439598)))

(declare-fun b!5573654 () Bool)

(assert (=> b!5573654 (= e!3439598 tp_is_empty!40351)))

(declare-fun b!5573655 () Bool)

(declare-fun tp!1542648 () Bool)

(declare-fun tp!1542647 () Bool)

(assert (=> b!5573655 (= e!3439598 (and tp!1542648 tp!1542647))))

(assert (= (and b!5572932 ((_ is ElementMatch!15549) (reg!15878 r!7292))) b!5573654))

(assert (= (and b!5572932 ((_ is Concat!24394) (reg!15878 r!7292))) b!5573655))

(assert (= (and b!5572932 ((_ is Star!15549) (reg!15878 r!7292))) b!5573656))

(assert (= (and b!5572932 ((_ is Union!15549) (reg!15878 r!7292))) b!5573657))

(declare-fun b!5573662 () Bool)

(declare-fun e!3439601 () Bool)

(declare-fun tp!1542653 () Bool)

(assert (=> b!5573662 (= e!3439601 (and tp_is_empty!40351 tp!1542653))))

(assert (=> b!5572950 (= tp!1542567 e!3439601)))

(assert (= (and b!5572950 ((_ is Cons!62824) (t!376217 s!2326))) b!5573662))

(declare-fun b!5573665 () Bool)

(declare-fun e!3439602 () Bool)

(declare-fun tp!1542657 () Bool)

(assert (=> b!5573665 (= e!3439602 tp!1542657)))

(declare-fun b!5573666 () Bool)

(declare-fun tp!1542654 () Bool)

(declare-fun tp!1542658 () Bool)

(assert (=> b!5573666 (= e!3439602 (and tp!1542654 tp!1542658))))

(assert (=> b!5572949 (= tp!1542568 e!3439602)))

(declare-fun b!5573663 () Bool)

(assert (=> b!5573663 (= e!3439602 tp_is_empty!40351)))

(declare-fun b!5573664 () Bool)

(declare-fun tp!1542656 () Bool)

(declare-fun tp!1542655 () Bool)

(assert (=> b!5573664 (= e!3439602 (and tp!1542656 tp!1542655))))

(assert (= (and b!5572949 ((_ is ElementMatch!15549) (regOne!31611 r!7292))) b!5573663))

(assert (= (and b!5572949 ((_ is Concat!24394) (regOne!31611 r!7292))) b!5573664))

(assert (= (and b!5572949 ((_ is Star!15549) (regOne!31611 r!7292))) b!5573665))

(assert (= (and b!5572949 ((_ is Union!15549) (regOne!31611 r!7292))) b!5573666))

(declare-fun b!5573669 () Bool)

(declare-fun e!3439603 () Bool)

(declare-fun tp!1542662 () Bool)

(assert (=> b!5573669 (= e!3439603 tp!1542662)))

(declare-fun b!5573670 () Bool)

(declare-fun tp!1542659 () Bool)

(declare-fun tp!1542663 () Bool)

(assert (=> b!5573670 (= e!3439603 (and tp!1542659 tp!1542663))))

(assert (=> b!5572949 (= tp!1542571 e!3439603)))

(declare-fun b!5573667 () Bool)

(assert (=> b!5573667 (= e!3439603 tp_is_empty!40351)))

(declare-fun b!5573668 () Bool)

(declare-fun tp!1542661 () Bool)

(declare-fun tp!1542660 () Bool)

(assert (=> b!5573668 (= e!3439603 (and tp!1542661 tp!1542660))))

(assert (= (and b!5572949 ((_ is ElementMatch!15549) (regTwo!31611 r!7292))) b!5573667))

(assert (= (and b!5572949 ((_ is Concat!24394) (regTwo!31611 r!7292))) b!5573668))

(assert (= (and b!5572949 ((_ is Star!15549) (regTwo!31611 r!7292))) b!5573669))

(assert (= (and b!5572949 ((_ is Union!15549) (regTwo!31611 r!7292))) b!5573670))

(declare-fun condSetEmpty!37055 () Bool)

(assert (=> setNonEmpty!37049 (= condSetEmpty!37055 (= setRest!37049 ((as const (Array Context!9866 Bool)) false)))))

(declare-fun setRes!37055 () Bool)

(assert (=> setNonEmpty!37049 (= tp!1542565 setRes!37055)))

(declare-fun setIsEmpty!37055 () Bool)

(assert (=> setIsEmpty!37055 setRes!37055))

(declare-fun setNonEmpty!37055 () Bool)

(declare-fun setElem!37055 () Context!9866)

(declare-fun tp!1542668 () Bool)

(declare-fun e!3439606 () Bool)

(assert (=> setNonEmpty!37055 (= setRes!37055 (and tp!1542668 (inv!82119 setElem!37055) e!3439606))))

(declare-fun setRest!37055 () (InoxSet Context!9866))

(assert (=> setNonEmpty!37055 (= setRest!37049 ((_ map or) (store ((as const (Array Context!9866 Bool)) false) setElem!37055 true) setRest!37055))))

(declare-fun b!5573675 () Bool)

(declare-fun tp!1542669 () Bool)

(assert (=> b!5573675 (= e!3439606 tp!1542669)))

(assert (= (and setNonEmpty!37049 condSetEmpty!37055) setIsEmpty!37055))

(assert (= (and setNonEmpty!37049 (not condSetEmpty!37055)) setNonEmpty!37055))

(assert (= setNonEmpty!37055 b!5573675))

(declare-fun m!6557542 () Bool)

(assert (=> setNonEmpty!37055 m!6557542))

(declare-fun b!5573676 () Bool)

(declare-fun e!3439607 () Bool)

(declare-fun tp!1542670 () Bool)

(declare-fun tp!1542671 () Bool)

(assert (=> b!5573676 (= e!3439607 (and tp!1542670 tp!1542671))))

(assert (=> b!5572930 (= tp!1542570 e!3439607)))

(assert (= (and b!5572930 ((_ is Cons!62822) (exprs!5433 (h!69271 zl!343)))) b!5573676))

(declare-fun b!5573684 () Bool)

(declare-fun e!3439613 () Bool)

(declare-fun tp!1542676 () Bool)

(assert (=> b!5573684 (= e!3439613 tp!1542676)))

(declare-fun e!3439612 () Bool)

(declare-fun tp!1542677 () Bool)

(declare-fun b!5573683 () Bool)

(assert (=> b!5573683 (= e!3439612 (and (inv!82119 (h!69271 (t!376216 zl!343))) e!3439613 tp!1542677))))

(assert (=> b!5572939 (= tp!1542562 e!3439612)))

(assert (= b!5573683 b!5573684))

(assert (= (and b!5572939 ((_ is Cons!62823) (t!376216 zl!343))) b!5573683))

(declare-fun m!6557544 () Bool)

(assert (=> b!5573683 m!6557544))

(declare-fun b!5573687 () Bool)

(declare-fun e!3439614 () Bool)

(declare-fun tp!1542681 () Bool)

(assert (=> b!5573687 (= e!3439614 tp!1542681)))

(declare-fun b!5573688 () Bool)

(declare-fun tp!1542678 () Bool)

(declare-fun tp!1542682 () Bool)

(assert (=> b!5573688 (= e!3439614 (and tp!1542678 tp!1542682))))

(assert (=> b!5572934 (= tp!1542569 e!3439614)))

(declare-fun b!5573685 () Bool)

(assert (=> b!5573685 (= e!3439614 tp_is_empty!40351)))

(declare-fun b!5573686 () Bool)

(declare-fun tp!1542680 () Bool)

(declare-fun tp!1542679 () Bool)

(assert (=> b!5573686 (= e!3439614 (and tp!1542680 tp!1542679))))

(assert (= (and b!5572934 ((_ is ElementMatch!15549) (regOne!31610 r!7292))) b!5573685))

(assert (= (and b!5572934 ((_ is Concat!24394) (regOne!31610 r!7292))) b!5573686))

(assert (= (and b!5572934 ((_ is Star!15549) (regOne!31610 r!7292))) b!5573687))

(assert (= (and b!5572934 ((_ is Union!15549) (regOne!31610 r!7292))) b!5573688))

(declare-fun b!5573691 () Bool)

(declare-fun e!3439615 () Bool)

(declare-fun tp!1542686 () Bool)

(assert (=> b!5573691 (= e!3439615 tp!1542686)))

(declare-fun b!5573692 () Bool)

(declare-fun tp!1542683 () Bool)

(declare-fun tp!1542687 () Bool)

(assert (=> b!5573692 (= e!3439615 (and tp!1542683 tp!1542687))))

(assert (=> b!5572934 (= tp!1542566 e!3439615)))

(declare-fun b!5573689 () Bool)

(assert (=> b!5573689 (= e!3439615 tp_is_empty!40351)))

(declare-fun b!5573690 () Bool)

(declare-fun tp!1542685 () Bool)

(declare-fun tp!1542684 () Bool)

(assert (=> b!5573690 (= e!3439615 (and tp!1542685 tp!1542684))))

(assert (= (and b!5572934 ((_ is ElementMatch!15549) (regTwo!31610 r!7292))) b!5573689))

(assert (= (and b!5572934 ((_ is Concat!24394) (regTwo!31610 r!7292))) b!5573690))

(assert (= (and b!5572934 ((_ is Star!15549) (regTwo!31610 r!7292))) b!5573691))

(assert (= (and b!5572934 ((_ is Union!15549) (regTwo!31610 r!7292))) b!5573692))

(declare-fun b_lambda!211353 () Bool)

(assert (= b_lambda!211347 (or b!5572945 b_lambda!211353)))

(declare-fun bs!1290103 () Bool)

(declare-fun d!1762574 () Bool)

(assert (= bs!1290103 (and d!1762574 b!5572945)))

(assert (=> bs!1290103 (= (dynLambda!24573 lambda!298628 (h!69271 zl!343)) (derivationStepZipperUp!817 (h!69271 zl!343) (h!69272 s!2326)))))

(assert (=> bs!1290103 m!6557118))

(assert (=> d!1762476 d!1762574))

(check-sat (not bm!416413) (not b!5573569) (not b!5573048) (not bm!416470) (not b!5573296) (not b!5573633) (not b!5573558) (not b!5573630) (not b!5573132) (not b!5573597) (not bs!1290103) (not b!5573570) (not b!5573676) (not b!5573571) (not b!5573218) (not d!1762566) (not bm!416492) (not b!5573631) (not bm!416450) (not b!5573656) (not b!5573692) (not bm!416452) (not d!1762562) (not b!5573635) (not setNonEmpty!37055) (not bm!416495) (not b!5573210) (not b!5573683) (not b!5573636) (not bm!416417) (not d!1762476) (not b!5573686) (not b!5573600) (not b!5573561) (not d!1762546) (not b!5573572) (not b!5573195) (not b!5573596) (not bm!416456) (not b!5573521) (not b!5573560) (not b!5573121) (not d!1762570) (not b!5573675) (not b!5573670) (not d!1762452) (not d!1762560) (not bm!416411) (not bm!416468) tp_is_empty!40351 (not b!5573553) (not d!1762538) (not b!5573664) (not d!1762552) (not b!5573431) (not b!5573555) (not b!5573559) (not b!5573638) (not b!5573668) (not b!5573684) (not b!5573607) (not bm!416419) (not b!5573662) (not b!5573691) (not bm!416449) (not d!1762572) (not b!5573598) (not d!1762480) (not bm!416422) (not d!1762568) (not b_lambda!211353) (not bm!416455) (not d!1762550) (not d!1762540) (not b!5573669) (not d!1762558) (not b!5573522) (not b!5573657) (not b!5573601) (not b!5573223) (not b!5573687) (not b!5573423) (not b!5573655) (not d!1762516) (not d!1762556) (not d!1762542) (not b!5573428) (not bm!416416) (not b!5573594) (not b!5573049) (not b!5573666) (not b!5573424) (not d!1762544) (not b!5573690) (not b!5573196) (not b!5573425) (not b!5573643) (not b!5573224) (not b!5573480) (not b!5573665) (not b!5573219) (not bm!416491) (not d!1762496) (not d!1762532) (not b!5573568) (not b!5573688) (not b!5573629) (not b!5573430) (not b!5573599) (not d!1762536) (not bm!416457))
(check-sat)
