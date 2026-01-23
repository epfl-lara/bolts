; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!578276 () Bool)

(assert start!578276)

(declare-fun b!5554971 () Bool)

(assert (=> b!5554971 true))

(assert (=> b!5554971 true))

(declare-fun lambda!298045 () Int)

(declare-fun lambda!298044 () Int)

(assert (=> b!5554971 (not (= lambda!298045 lambda!298044))))

(assert (=> b!5554971 true))

(assert (=> b!5554971 true))

(declare-fun b!5554973 () Bool)

(assert (=> b!5554973 true))

(declare-fun b!5554961 () Bool)

(declare-fun res!2361241 () Bool)

(declare-fun e!3430775 () Bool)

(assert (=> b!5554961 (=> res!2361241 e!3430775)))

(declare-datatypes ((C!31350 0))(
  ( (C!31351 (val!25377 Int)) )
))
(declare-datatypes ((Regex!15540 0))(
  ( (ElementMatch!15540 (c!972441 C!31350)) (Concat!24385 (regOne!31592 Regex!15540) (regTwo!31592 Regex!15540)) (EmptyExpr!15540) (Star!15540 (reg!15869 Regex!15540)) (EmptyLang!15540) (Union!15540 (regOne!31593 Regex!15540) (regTwo!31593 Regex!15540)) )
))
(declare-fun r!7292 () Regex!15540)

(declare-datatypes ((List!62919 0))(
  ( (Nil!62795) (Cons!62795 (h!69243 Regex!15540) (t!376184 List!62919)) )
))
(declare-datatypes ((Context!9848 0))(
  ( (Context!9849 (exprs!5424 List!62919)) )
))
(declare-datatypes ((List!62920 0))(
  ( (Nil!62796) (Cons!62796 (h!69244 Context!9848) (t!376185 List!62920)) )
))
(declare-fun zl!343 () List!62920)

(declare-fun generalisedConcat!1155 (List!62919) Regex!15540)

(assert (=> b!5554961 (= res!2361241 (not (= r!7292 (generalisedConcat!1155 (exprs!5424 (h!69244 zl!343))))))))

(declare-fun b!5554962 () Bool)

(declare-fun e!3430777 () Bool)

(declare-fun tp!1532645 () Bool)

(declare-fun tp!1532642 () Bool)

(assert (=> b!5554962 (= e!3430777 (and tp!1532645 tp!1532642))))

(declare-fun b!5554963 () Bool)

(declare-fun res!2361237 () Bool)

(assert (=> b!5554963 (=> res!2361237 e!3430775)))

(assert (=> b!5554963 (= res!2361237 (not (is-Cons!62795 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5554964 () Bool)

(declare-fun e!3430770 () Bool)

(declare-fun tp!1532641 () Bool)

(assert (=> b!5554964 (= e!3430770 tp!1532641)))

(declare-fun b!5554965 () Bool)

(declare-fun res!2361244 () Bool)

(assert (=> b!5554965 (=> res!2361244 e!3430775)))

(declare-fun generalisedUnion!1403 (List!62919) Regex!15540)

(declare-fun unfocusZipperList!968 (List!62920) List!62919)

(assert (=> b!5554965 (= res!2361244 (not (= r!7292 (generalisedUnion!1403 (unfocusZipperList!968 zl!343)))))))

(declare-fun setIsEmpty!36966 () Bool)

(declare-fun setRes!36966 () Bool)

(assert (=> setIsEmpty!36966 setRes!36966))

(declare-fun b!5554966 () Bool)

(declare-fun res!2361246 () Bool)

(declare-fun e!3430773 () Bool)

(assert (=> b!5554966 (=> res!2361246 e!3430773)))

(declare-fun lt!2250925 () (Set Context!9848))

(declare-fun lt!2250916 () (Set Context!9848))

(assert (=> b!5554966 (= res!2361246 (not (= lt!2250925 lt!2250916)))))

(declare-fun b!5554967 () Bool)

(declare-fun tp!1532639 () Bool)

(declare-fun e!3430776 () Bool)

(declare-fun inv!82098 (Context!9848) Bool)

(assert (=> b!5554967 (= e!3430776 (and (inv!82098 (h!69244 zl!343)) e!3430770 tp!1532639))))

(declare-fun b!5554968 () Bool)

(declare-fun e!3430769 () Bool)

(declare-fun tp_is_empty!40333 () Bool)

(declare-fun tp!1532636 () Bool)

(assert (=> b!5554968 (= e!3430769 (and tp_is_empty!40333 tp!1532636))))

(declare-fun b!5554969 () Bool)

(assert (=> b!5554969 (= e!3430777 tp_is_empty!40333)))

(declare-fun e!3430774 () Bool)

(assert (=> b!5554971 (= e!3430775 e!3430774)))

(declare-fun res!2361240 () Bool)

(assert (=> b!5554971 (=> res!2361240 e!3430774)))

(declare-datatypes ((List!62921 0))(
  ( (Nil!62797) (Cons!62797 (h!69245 C!31350) (t!376186 List!62921)) )
))
(declare-fun s!2326 () List!62921)

(declare-fun lt!2250920 () Bool)

(declare-fun lt!2250922 () Bool)

(assert (=> b!5554971 (= res!2361240 (or (not (= lt!2250920 lt!2250922)) (is-Nil!62797 s!2326)))))

(declare-fun Exists!2640 (Int) Bool)

(assert (=> b!5554971 (= (Exists!2640 lambda!298044) (Exists!2640 lambda!298045))))

(declare-datatypes ((Unit!155540 0))(
  ( (Unit!155541) )
))
(declare-fun lt!2250918 () Unit!155540)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1269 (Regex!15540 Regex!15540 List!62921) Unit!155540)

(assert (=> b!5554971 (= lt!2250918 (lemmaExistCutMatchRandMatchRSpecEquivalent!1269 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326))))

(assert (=> b!5554971 (= lt!2250922 (Exists!2640 lambda!298044))))

(declare-datatypes ((tuple2!65274 0))(
  ( (tuple2!65275 (_1!35940 List!62921) (_2!35940 List!62921)) )
))
(declare-datatypes ((Option!15549 0))(
  ( (None!15548) (Some!15548 (v!51587 tuple2!65274)) )
))
(declare-fun isDefined!12252 (Option!15549) Bool)

(declare-fun findConcatSeparation!1963 (Regex!15540 Regex!15540 List!62921 List!62921 List!62921) Option!15549)

(assert (=> b!5554971 (= lt!2250922 (isDefined!12252 (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) Nil!62797 s!2326 s!2326)))))

(declare-fun lt!2250923 () Unit!155540)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1727 (Regex!15540 Regex!15540 List!62921) Unit!155540)

(assert (=> b!5554971 (= lt!2250923 (lemmaFindConcatSeparationEquivalentToExists!1727 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326))))

(declare-fun b!5554972 () Bool)

(declare-fun e!3430772 () Bool)

(declare-fun tp!1532637 () Bool)

(assert (=> b!5554972 (= e!3430772 tp!1532637)))

(declare-fun tp!1532638 () Bool)

(declare-fun setNonEmpty!36966 () Bool)

(declare-fun setElem!36966 () Context!9848)

(assert (=> setNonEmpty!36966 (= setRes!36966 (and tp!1532638 (inv!82098 setElem!36966) e!3430772))))

(declare-fun z!1189 () (Set Context!9848))

(declare-fun setRest!36966 () (Set Context!9848))

(assert (=> setNonEmpty!36966 (= z!1189 (set.union (set.insert setElem!36966 (as set.empty (Set Context!9848))) setRest!36966))))

(assert (=> b!5554973 (= e!3430774 e!3430773)))

(declare-fun res!2361248 () Bool)

(assert (=> b!5554973 (=> res!2361248 e!3430773)))

(declare-fun nullable!5572 (Regex!15540) Bool)

(assert (=> b!5554973 (= res!2361248 (nullable!5572 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun lambda!298046 () Int)

(declare-fun flatMap!1153 ((Set Context!9848) Int) (Set Context!9848))

(declare-fun derivationStepZipperUp!808 (Context!9848 C!31350) (Set Context!9848))

(assert (=> b!5554973 (= (flatMap!1153 z!1189 lambda!298046) (derivationStepZipperUp!808 (h!69244 zl!343) (h!69245 s!2326)))))

(declare-fun lt!2250924 () Unit!155540)

(declare-fun lemmaFlatMapOnSingletonSet!685 ((Set Context!9848) Context!9848 Int) Unit!155540)

(assert (=> b!5554973 (= lt!2250924 (lemmaFlatMapOnSingletonSet!685 z!1189 (h!69244 zl!343) lambda!298046))))

(declare-fun lt!2250921 () (Set Context!9848))

(declare-fun lt!2250917 () Context!9848)

(assert (=> b!5554973 (= lt!2250921 (derivationStepZipperUp!808 lt!2250917 (h!69245 s!2326)))))

(declare-fun derivationStepZipperDown!882 (Regex!15540 Context!9848 C!31350) (Set Context!9848))

(assert (=> b!5554973 (= lt!2250916 (derivationStepZipperDown!882 (h!69243 (exprs!5424 (h!69244 zl!343))) lt!2250917 (h!69245 s!2326)))))

(assert (=> b!5554973 (= lt!2250917 (Context!9849 (t!376184 (exprs!5424 (h!69244 zl!343)))))))

(assert (=> b!5554973 (= lt!2250925 (derivationStepZipperUp!808 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343))))) (h!69245 s!2326)))))

(declare-fun b!5554974 () Bool)

(declare-fun derivationStepZipper!1641 ((Set Context!9848) C!31350) (Set Context!9848))

(assert (=> b!5554974 (= e!3430773 (= (derivationStepZipper!1641 z!1189 (h!69245 s!2326)) lt!2250916))))

(declare-fun b!5554975 () Bool)

(declare-fun res!2361249 () Bool)

(assert (=> b!5554975 (=> res!2361249 e!3430775)))

(assert (=> b!5554975 (= res!2361249 (or (is-EmptyExpr!15540 r!7292) (is-EmptyLang!15540 r!7292) (is-ElementMatch!15540 r!7292) (is-Union!15540 r!7292) (not (is-Concat!24385 r!7292))))))

(declare-fun b!5554976 () Bool)

(declare-fun res!2361238 () Bool)

(assert (=> b!5554976 (=> res!2361238 e!3430775)))

(declare-fun isEmpty!34590 (List!62920) Bool)

(assert (=> b!5554976 (= res!2361238 (not (isEmpty!34590 (t!376185 zl!343))))))

(declare-fun b!5554977 () Bool)

(declare-fun tp!1532643 () Bool)

(declare-fun tp!1532640 () Bool)

(assert (=> b!5554977 (= e!3430777 (and tp!1532643 tp!1532640))))

(declare-fun b!5554978 () Bool)

(declare-fun tp!1532644 () Bool)

(assert (=> b!5554978 (= e!3430777 tp!1532644)))

(declare-fun b!5554979 () Bool)

(declare-fun res!2361247 () Bool)

(declare-fun e!3430771 () Bool)

(assert (=> b!5554979 (=> (not res!2361247) (not e!3430771))))

(declare-fun toList!9324 ((Set Context!9848)) List!62920)

(assert (=> b!5554979 (= res!2361247 (= (toList!9324 z!1189) zl!343))))

(declare-fun res!2361243 () Bool)

(assert (=> start!578276 (=> (not res!2361243) (not e!3430771))))

(declare-fun validRegex!7276 (Regex!15540) Bool)

(assert (=> start!578276 (= res!2361243 (validRegex!7276 r!7292))))

(assert (=> start!578276 e!3430771))

(assert (=> start!578276 e!3430777))

(declare-fun condSetEmpty!36966 () Bool)

(assert (=> start!578276 (= condSetEmpty!36966 (= z!1189 (as set.empty (Set Context!9848))))))

(assert (=> start!578276 setRes!36966))

(assert (=> start!578276 e!3430776))

(assert (=> start!578276 e!3430769))

(declare-fun b!5554970 () Bool)

(declare-fun res!2361239 () Bool)

(assert (=> b!5554970 (=> (not res!2361239) (not e!3430771))))

(declare-fun unfocusZipper!1282 (List!62920) Regex!15540)

(assert (=> b!5554970 (= res!2361239 (= r!7292 (unfocusZipper!1282 zl!343)))))

(declare-fun b!5554980 () Bool)

(declare-fun res!2361245 () Bool)

(assert (=> b!5554980 (=> res!2361245 e!3430774)))

(declare-fun isEmpty!34591 (List!62919) Bool)

(assert (=> b!5554980 (= res!2361245 (isEmpty!34591 (t!376184 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5554981 () Bool)

(assert (=> b!5554981 (= e!3430771 (not e!3430775))))

(declare-fun res!2361242 () Bool)

(assert (=> b!5554981 (=> res!2361242 e!3430775)))

(assert (=> b!5554981 (= res!2361242 (not (is-Cons!62796 zl!343)))))

(declare-fun matchRSpec!2643 (Regex!15540 List!62921) Bool)

(assert (=> b!5554981 (= lt!2250920 (matchRSpec!2643 r!7292 s!2326))))

(declare-fun matchR!7725 (Regex!15540 List!62921) Bool)

(assert (=> b!5554981 (= lt!2250920 (matchR!7725 r!7292 s!2326))))

(declare-fun lt!2250919 () Unit!155540)

(declare-fun mainMatchTheorem!2643 (Regex!15540 List!62921) Unit!155540)

(assert (=> b!5554981 (= lt!2250919 (mainMatchTheorem!2643 r!7292 s!2326))))

(assert (= (and start!578276 res!2361243) b!5554979))

(assert (= (and b!5554979 res!2361247) b!5554970))

(assert (= (and b!5554970 res!2361239) b!5554981))

(assert (= (and b!5554981 (not res!2361242)) b!5554976))

(assert (= (and b!5554976 (not res!2361238)) b!5554961))

(assert (= (and b!5554961 (not res!2361241)) b!5554963))

(assert (= (and b!5554963 (not res!2361237)) b!5554965))

(assert (= (and b!5554965 (not res!2361244)) b!5554975))

(assert (= (and b!5554975 (not res!2361249)) b!5554971))

(assert (= (and b!5554971 (not res!2361240)) b!5554980))

(assert (= (and b!5554980 (not res!2361245)) b!5554973))

(assert (= (and b!5554973 (not res!2361248)) b!5554966))

(assert (= (and b!5554966 (not res!2361246)) b!5554974))

(assert (= (and start!578276 (is-ElementMatch!15540 r!7292)) b!5554969))

(assert (= (and start!578276 (is-Concat!24385 r!7292)) b!5554977))

(assert (= (and start!578276 (is-Star!15540 r!7292)) b!5554978))

(assert (= (and start!578276 (is-Union!15540 r!7292)) b!5554962))

(assert (= (and start!578276 condSetEmpty!36966) setIsEmpty!36966))

(assert (= (and start!578276 (not condSetEmpty!36966)) setNonEmpty!36966))

(assert (= setNonEmpty!36966 b!5554972))

(assert (= b!5554967 b!5554964))

(assert (= (and start!578276 (is-Cons!62796 zl!343)) b!5554967))

(assert (= (and start!578276 (is-Cons!62797 s!2326)) b!5554968))

(declare-fun m!6547420 () Bool)

(assert (=> b!5554971 m!6547420))

(declare-fun m!6547422 () Bool)

(assert (=> b!5554971 m!6547422))

(declare-fun m!6547424 () Bool)

(assert (=> b!5554971 m!6547424))

(declare-fun m!6547426 () Bool)

(assert (=> b!5554971 m!6547426))

(assert (=> b!5554971 m!6547422))

(declare-fun m!6547428 () Bool)

(assert (=> b!5554971 m!6547428))

(assert (=> b!5554971 m!6547424))

(declare-fun m!6547430 () Bool)

(assert (=> b!5554971 m!6547430))

(declare-fun m!6547432 () Bool)

(assert (=> b!5554970 m!6547432))

(declare-fun m!6547434 () Bool)

(assert (=> b!5554981 m!6547434))

(declare-fun m!6547436 () Bool)

(assert (=> b!5554981 m!6547436))

(declare-fun m!6547438 () Bool)

(assert (=> b!5554981 m!6547438))

(declare-fun m!6547440 () Bool)

(assert (=> b!5554967 m!6547440))

(declare-fun m!6547442 () Bool)

(assert (=> b!5554976 m!6547442))

(declare-fun m!6547444 () Bool)

(assert (=> b!5554974 m!6547444))

(declare-fun m!6547446 () Bool)

(assert (=> b!5554979 m!6547446))

(declare-fun m!6547448 () Bool)

(assert (=> b!5554980 m!6547448))

(declare-fun m!6547450 () Bool)

(assert (=> b!5554973 m!6547450))

(declare-fun m!6547452 () Bool)

(assert (=> b!5554973 m!6547452))

(declare-fun m!6547454 () Bool)

(assert (=> b!5554973 m!6547454))

(declare-fun m!6547456 () Bool)

(assert (=> b!5554973 m!6547456))

(declare-fun m!6547458 () Bool)

(assert (=> b!5554973 m!6547458))

(declare-fun m!6547460 () Bool)

(assert (=> b!5554973 m!6547460))

(declare-fun m!6547462 () Bool)

(assert (=> b!5554973 m!6547462))

(declare-fun m!6547464 () Bool)

(assert (=> start!578276 m!6547464))

(declare-fun m!6547466 () Bool)

(assert (=> b!5554965 m!6547466))

(assert (=> b!5554965 m!6547466))

(declare-fun m!6547468 () Bool)

(assert (=> b!5554965 m!6547468))

(declare-fun m!6547470 () Bool)

(assert (=> b!5554961 m!6547470))

(declare-fun m!6547472 () Bool)

(assert (=> setNonEmpty!36966 m!6547472))

(push 1)

(assert (not b!5554965))

(assert (not b!5554970))

(assert (not b!5554967))

(assert (not b!5554968))

(assert tp_is_empty!40333)

(assert (not b!5554961))

(assert (not b!5554980))

(assert (not b!5554972))

(assert (not b!5554973))

(assert (not start!578276))

(assert (not setNonEmpty!36966))

(assert (not b!5554976))

(assert (not b!5554962))

(assert (not b!5554979))

(assert (not b!5554977))

(assert (not b!5554978))

(assert (not b!5554964))

(assert (not b!5554974))

(assert (not b!5554981))

(assert (not b!5554971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1758410 () Bool)

(declare-fun e!3430813 () Bool)

(assert (=> d!1758410 e!3430813))

(declare-fun res!2361303 () Bool)

(assert (=> d!1758410 (=> (not res!2361303) (not e!3430813))))

(declare-fun lt!2250958 () List!62920)

(declare-fun noDuplicate!1523 (List!62920) Bool)

(assert (=> d!1758410 (= res!2361303 (noDuplicate!1523 lt!2250958))))

(declare-fun choose!42134 ((Set Context!9848)) List!62920)

(assert (=> d!1758410 (= lt!2250958 (choose!42134 z!1189))))

(assert (=> d!1758410 (= (toList!9324 z!1189) lt!2250958)))

(declare-fun b!5555071 () Bool)

(declare-fun content!11307 (List!62920) (Set Context!9848))

(assert (=> b!5555071 (= e!3430813 (= (content!11307 lt!2250958) z!1189))))

(assert (= (and d!1758410 res!2361303) b!5555071))

(declare-fun m!6547528 () Bool)

(assert (=> d!1758410 m!6547528))

(declare-fun m!6547530 () Bool)

(assert (=> d!1758410 m!6547530))

(declare-fun m!6547532 () Bool)

(assert (=> b!5555071 m!6547532))

(assert (=> b!5554979 d!1758410))

(declare-fun d!1758412 () Bool)

(declare-fun lt!2250961 () Regex!15540)

(assert (=> d!1758412 (validRegex!7276 lt!2250961)))

(assert (=> d!1758412 (= lt!2250961 (generalisedUnion!1403 (unfocusZipperList!968 zl!343)))))

(assert (=> d!1758412 (= (unfocusZipper!1282 zl!343) lt!2250961)))

(declare-fun bs!1286637 () Bool)

(assert (= bs!1286637 d!1758412))

(declare-fun m!6547534 () Bool)

(assert (=> bs!1286637 m!6547534))

(assert (=> bs!1286637 m!6547466))

(assert (=> bs!1286637 m!6547466))

(assert (=> bs!1286637 m!6547468))

(assert (=> b!5554970 d!1758412))

(declare-fun b!5555092 () Bool)

(declare-fun e!3430830 () Bool)

(declare-fun lt!2250964 () Regex!15540)

(declare-fun head!11863 (List!62919) Regex!15540)

(assert (=> b!5555092 (= e!3430830 (= lt!2250964 (head!11863 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5555093 () Bool)

(declare-fun isConcat!625 (Regex!15540) Bool)

(assert (=> b!5555093 (= e!3430830 (isConcat!625 lt!2250964))))

(declare-fun b!5555094 () Bool)

(declare-fun e!3430826 () Bool)

(declare-fun e!3430829 () Bool)

(assert (=> b!5555094 (= e!3430826 e!3430829)))

(declare-fun c!972455 () Bool)

(assert (=> b!5555094 (= c!972455 (isEmpty!34591 (exprs!5424 (h!69244 zl!343))))))

(declare-fun d!1758414 () Bool)

(assert (=> d!1758414 e!3430826))

(declare-fun res!2361308 () Bool)

(assert (=> d!1758414 (=> (not res!2361308) (not e!3430826))))

(assert (=> d!1758414 (= res!2361308 (validRegex!7276 lt!2250964))))

(declare-fun e!3430831 () Regex!15540)

(assert (=> d!1758414 (= lt!2250964 e!3430831)))

(declare-fun c!972457 () Bool)

(declare-fun e!3430828 () Bool)

(assert (=> d!1758414 (= c!972457 e!3430828)))

(declare-fun res!2361309 () Bool)

(assert (=> d!1758414 (=> (not res!2361309) (not e!3430828))))

(assert (=> d!1758414 (= res!2361309 (is-Cons!62795 (exprs!5424 (h!69244 zl!343))))))

(declare-fun lambda!298060 () Int)

(declare-fun forall!14712 (List!62919 Int) Bool)

(assert (=> d!1758414 (forall!14712 (exprs!5424 (h!69244 zl!343)) lambda!298060)))

(assert (=> d!1758414 (= (generalisedConcat!1155 (exprs!5424 (h!69244 zl!343))) lt!2250964)))

(declare-fun b!5555095 () Bool)

(declare-fun isEmptyExpr!1102 (Regex!15540) Bool)

(assert (=> b!5555095 (= e!3430829 (isEmptyExpr!1102 lt!2250964))))

(declare-fun b!5555096 () Bool)

(declare-fun e!3430827 () Regex!15540)

(assert (=> b!5555096 (= e!3430827 (Concat!24385 (h!69243 (exprs!5424 (h!69244 zl!343))) (generalisedConcat!1155 (t!376184 (exprs!5424 (h!69244 zl!343))))))))

(declare-fun b!5555097 () Bool)

(assert (=> b!5555097 (= e!3430828 (isEmpty!34591 (t!376184 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5555098 () Bool)

(assert (=> b!5555098 (= e!3430831 e!3430827)))

(declare-fun c!972456 () Bool)

(assert (=> b!5555098 (= c!972456 (is-Cons!62795 (exprs!5424 (h!69244 zl!343))))))

(declare-fun b!5555099 () Bool)

(assert (=> b!5555099 (= e!3430827 EmptyExpr!15540)))

(declare-fun b!5555100 () Bool)

(assert (=> b!5555100 (= e!3430831 (h!69243 (exprs!5424 (h!69244 zl!343))))))

(declare-fun b!5555101 () Bool)

(assert (=> b!5555101 (= e!3430829 e!3430830)))

(declare-fun c!972454 () Bool)

(declare-fun tail!10958 (List!62919) List!62919)

(assert (=> b!5555101 (= c!972454 (isEmpty!34591 (tail!10958 (exprs!5424 (h!69244 zl!343)))))))

(assert (= (and d!1758414 res!2361309) b!5555097))

(assert (= (and d!1758414 c!972457) b!5555100))

(assert (= (and d!1758414 (not c!972457)) b!5555098))

(assert (= (and b!5555098 c!972456) b!5555096))

(assert (= (and b!5555098 (not c!972456)) b!5555099))

(assert (= (and d!1758414 res!2361308) b!5555094))

(assert (= (and b!5555094 c!972455) b!5555095))

(assert (= (and b!5555094 (not c!972455)) b!5555101))

(assert (= (and b!5555101 c!972454) b!5555092))

(assert (= (and b!5555101 (not c!972454)) b!5555093))

(declare-fun m!6547536 () Bool)

(assert (=> b!5555095 m!6547536))

(declare-fun m!6547538 () Bool)

(assert (=> b!5555096 m!6547538))

(declare-fun m!6547540 () Bool)

(assert (=> d!1758414 m!6547540))

(declare-fun m!6547542 () Bool)

(assert (=> d!1758414 m!6547542))

(assert (=> b!5555097 m!6547448))

(declare-fun m!6547544 () Bool)

(assert (=> b!5555094 m!6547544))

(declare-fun m!6547546 () Bool)

(assert (=> b!5555101 m!6547546))

(assert (=> b!5555101 m!6547546))

(declare-fun m!6547548 () Bool)

(assert (=> b!5555101 m!6547548))

(declare-fun m!6547550 () Bool)

(assert (=> b!5555092 m!6547550))

(declare-fun m!6547552 () Bool)

(assert (=> b!5555093 m!6547552))

(assert (=> b!5554961 d!1758414))

(declare-fun d!1758418 () Bool)

(assert (=> d!1758418 (= (isEmpty!34591 (t!376184 (exprs!5424 (h!69244 zl!343)))) (is-Nil!62795 (t!376184 (exprs!5424 (h!69244 zl!343)))))))

(assert (=> b!5554980 d!1758418))

(declare-fun bs!1286642 () Bool)

(declare-fun b!5555169 () Bool)

(assert (= bs!1286642 (and b!5555169 b!5554971)))

(declare-fun lambda!298068 () Int)

(assert (=> bs!1286642 (not (= lambda!298068 lambda!298044))))

(assert (=> bs!1286642 (not (= lambda!298068 lambda!298045))))

(assert (=> b!5555169 true))

(assert (=> b!5555169 true))

(declare-fun bs!1286643 () Bool)

(declare-fun b!5555163 () Bool)

(assert (= bs!1286643 (and b!5555163 b!5554971)))

(declare-fun lambda!298069 () Int)

(assert (=> bs!1286643 (not (= lambda!298069 lambda!298044))))

(assert (=> bs!1286643 (= lambda!298069 lambda!298045)))

(declare-fun bs!1286644 () Bool)

(assert (= bs!1286644 (and b!5555163 b!5555169)))

(assert (=> bs!1286644 (not (= lambda!298069 lambda!298068))))

(assert (=> b!5555163 true))

(assert (=> b!5555163 true))

(declare-fun b!5555159 () Bool)

(declare-fun e!3430870 () Bool)

(declare-fun e!3430865 () Bool)

(assert (=> b!5555159 (= e!3430870 e!3430865)))

(declare-fun c!972478 () Bool)

(assert (=> b!5555159 (= c!972478 (is-Star!15540 r!7292))))

(declare-fun b!5555160 () Bool)

(declare-fun res!2361332 () Bool)

(declare-fun e!3430869 () Bool)

(assert (=> b!5555160 (=> res!2361332 e!3430869)))

(declare-fun call!414139 () Bool)

(assert (=> b!5555160 (= res!2361332 call!414139)))

(assert (=> b!5555160 (= e!3430865 e!3430869)))

(declare-fun d!1758422 () Bool)

(declare-fun c!972476 () Bool)

(assert (=> d!1758422 (= c!972476 (is-EmptyExpr!15540 r!7292))))

(declare-fun e!3430868 () Bool)

(assert (=> d!1758422 (= (matchRSpec!2643 r!7292 s!2326) e!3430868)))

(declare-fun b!5555161 () Bool)

(declare-fun e!3430871 () Bool)

(assert (=> b!5555161 (= e!3430871 (= s!2326 (Cons!62797 (c!972441 r!7292) Nil!62797)))))

(declare-fun b!5555162 () Bool)

(declare-fun e!3430867 () Bool)

(assert (=> b!5555162 (= e!3430870 e!3430867)))

(declare-fun res!2361333 () Bool)

(assert (=> b!5555162 (= res!2361333 (matchRSpec!2643 (regOne!31593 r!7292) s!2326))))

(assert (=> b!5555162 (=> res!2361333 e!3430867)))

(declare-fun call!414140 () Bool)

(assert (=> b!5555163 (= e!3430865 call!414140)))

(declare-fun b!5555164 () Bool)

(declare-fun e!3430866 () Bool)

(assert (=> b!5555164 (= e!3430868 e!3430866)))

(declare-fun res!2361331 () Bool)

(assert (=> b!5555164 (= res!2361331 (not (is-EmptyLang!15540 r!7292)))))

(assert (=> b!5555164 (=> (not res!2361331) (not e!3430866))))

(declare-fun bm!414134 () Bool)

(assert (=> bm!414134 (= call!414140 (Exists!2640 (ite c!972478 lambda!298068 lambda!298069)))))

(declare-fun b!5555165 () Bool)

(assert (=> b!5555165 (= e!3430868 call!414139)))

(declare-fun b!5555166 () Bool)

(declare-fun c!972479 () Bool)

(assert (=> b!5555166 (= c!972479 (is-Union!15540 r!7292))))

(assert (=> b!5555166 (= e!3430871 e!3430870)))

(declare-fun b!5555167 () Bool)

(assert (=> b!5555167 (= e!3430867 (matchRSpec!2643 (regTwo!31593 r!7292) s!2326))))

(declare-fun b!5555168 () Bool)

(declare-fun c!972477 () Bool)

(assert (=> b!5555168 (= c!972477 (is-ElementMatch!15540 r!7292))))

(assert (=> b!5555168 (= e!3430866 e!3430871)))

(declare-fun bm!414135 () Bool)

(declare-fun isEmpty!34594 (List!62921) Bool)

(assert (=> bm!414135 (= call!414139 (isEmpty!34594 s!2326))))

(assert (=> b!5555169 (= e!3430869 call!414140)))

(assert (= (and d!1758422 c!972476) b!5555165))

(assert (= (and d!1758422 (not c!972476)) b!5555164))

(assert (= (and b!5555164 res!2361331) b!5555168))

(assert (= (and b!5555168 c!972477) b!5555161))

(assert (= (and b!5555168 (not c!972477)) b!5555166))

(assert (= (and b!5555166 c!972479) b!5555162))

(assert (= (and b!5555166 (not c!972479)) b!5555159))

(assert (= (and b!5555162 (not res!2361333)) b!5555167))

(assert (= (and b!5555159 c!972478) b!5555160))

(assert (= (and b!5555159 (not c!972478)) b!5555163))

(assert (= (and b!5555160 (not res!2361332)) b!5555169))

(assert (= (or b!5555169 b!5555163) bm!414134))

(assert (= (or b!5555165 b!5555160) bm!414135))

(declare-fun m!6547582 () Bool)

(assert (=> b!5555162 m!6547582))

(declare-fun m!6547584 () Bool)

(assert (=> bm!414134 m!6547584))

(declare-fun m!6547586 () Bool)

(assert (=> b!5555167 m!6547586))

(declare-fun m!6547588 () Bool)

(assert (=> bm!414135 m!6547588))

(assert (=> b!5554981 d!1758422))

(declare-fun b!5555249 () Bool)

(declare-fun res!2361367 () Bool)

(declare-fun e!3430921 () Bool)

(assert (=> b!5555249 (=> res!2361367 e!3430921)))

(declare-fun e!3430920 () Bool)

(assert (=> b!5555249 (= res!2361367 e!3430920)))

(declare-fun res!2361365 () Bool)

(assert (=> b!5555249 (=> (not res!2361365) (not e!3430920))))

(declare-fun lt!2250970 () Bool)

(assert (=> b!5555249 (= res!2361365 lt!2250970)))

(declare-fun b!5555250 () Bool)

(declare-fun e!3430922 () Bool)

(assert (=> b!5555250 (= e!3430922 (not lt!2250970))))

(declare-fun b!5555251 () Bool)

(declare-fun e!3430924 () Bool)

(declare-fun derivativeStep!4395 (Regex!15540 C!31350) Regex!15540)

(declare-fun head!11864 (List!62921) C!31350)

(declare-fun tail!10959 (List!62921) List!62921)

(assert (=> b!5555251 (= e!3430924 (matchR!7725 (derivativeStep!4395 r!7292 (head!11864 s!2326)) (tail!10959 s!2326)))))

(declare-fun b!5555252 () Bool)

(declare-fun e!3430918 () Bool)

(declare-fun call!414167 () Bool)

(assert (=> b!5555252 (= e!3430918 (= lt!2250970 call!414167))))

(declare-fun b!5555253 () Bool)

(declare-fun res!2361364 () Bool)

(declare-fun e!3430919 () Bool)

(assert (=> b!5555253 (=> res!2361364 e!3430919)))

(assert (=> b!5555253 (= res!2361364 (not (isEmpty!34594 (tail!10959 s!2326))))))

(declare-fun d!1758436 () Bool)

(assert (=> d!1758436 e!3430918))

(declare-fun c!972506 () Bool)

(assert (=> d!1758436 (= c!972506 (is-EmptyExpr!15540 r!7292))))

(assert (=> d!1758436 (= lt!2250970 e!3430924)))

(declare-fun c!972505 () Bool)

(assert (=> d!1758436 (= c!972505 (isEmpty!34594 s!2326))))

(assert (=> d!1758436 (validRegex!7276 r!7292)))

(assert (=> d!1758436 (= (matchR!7725 r!7292 s!2326) lt!2250970)))

(declare-fun b!5555254 () Bool)

(declare-fun res!2361369 () Bool)

(assert (=> b!5555254 (=> (not res!2361369) (not e!3430920))))

(assert (=> b!5555254 (= res!2361369 (not call!414167))))

(declare-fun b!5555255 () Bool)

(assert (=> b!5555255 (= e!3430918 e!3430922)))

(declare-fun c!972507 () Bool)

(assert (=> b!5555255 (= c!972507 (is-EmptyLang!15540 r!7292))))

(declare-fun b!5555256 () Bool)

(declare-fun res!2361363 () Bool)

(assert (=> b!5555256 (=> (not res!2361363) (not e!3430920))))

(assert (=> b!5555256 (= res!2361363 (isEmpty!34594 (tail!10959 s!2326)))))

(declare-fun b!5555257 () Bool)

(assert (=> b!5555257 (= e!3430920 (= (head!11864 s!2326) (c!972441 r!7292)))))

(declare-fun b!5555258 () Bool)

(declare-fun res!2361368 () Bool)

(assert (=> b!5555258 (=> res!2361368 e!3430921)))

(assert (=> b!5555258 (= res!2361368 (not (is-ElementMatch!15540 r!7292)))))

(assert (=> b!5555258 (= e!3430922 e!3430921)))

(declare-fun b!5555259 () Bool)

(assert (=> b!5555259 (= e!3430924 (nullable!5572 r!7292))))

(declare-fun b!5555260 () Bool)

(declare-fun e!3430923 () Bool)

(assert (=> b!5555260 (= e!3430923 e!3430919)))

(declare-fun res!2361366 () Bool)

(assert (=> b!5555260 (=> res!2361366 e!3430919)))

(assert (=> b!5555260 (= res!2361366 call!414167)))

(declare-fun b!5555261 () Bool)

(assert (=> b!5555261 (= e!3430919 (not (= (head!11864 s!2326) (c!972441 r!7292))))))

(declare-fun bm!414162 () Bool)

(assert (=> bm!414162 (= call!414167 (isEmpty!34594 s!2326))))

(declare-fun b!5555262 () Bool)

(assert (=> b!5555262 (= e!3430921 e!3430923)))

(declare-fun res!2361370 () Bool)

(assert (=> b!5555262 (=> (not res!2361370) (not e!3430923))))

(assert (=> b!5555262 (= res!2361370 (not lt!2250970))))

(assert (= (and d!1758436 c!972505) b!5555259))

(assert (= (and d!1758436 (not c!972505)) b!5555251))

(assert (= (and d!1758436 c!972506) b!5555252))

(assert (= (and d!1758436 (not c!972506)) b!5555255))

(assert (= (and b!5555255 c!972507) b!5555250))

(assert (= (and b!5555255 (not c!972507)) b!5555258))

(assert (= (and b!5555258 (not res!2361368)) b!5555249))

(assert (= (and b!5555249 res!2361365) b!5555254))

(assert (= (and b!5555254 res!2361369) b!5555256))

(assert (= (and b!5555256 res!2361363) b!5555257))

(assert (= (and b!5555249 (not res!2361367)) b!5555262))

(assert (= (and b!5555262 res!2361370) b!5555260))

(assert (= (and b!5555260 (not res!2361366)) b!5555253))

(assert (= (and b!5555253 (not res!2361364)) b!5555261))

(assert (= (or b!5555252 b!5555254 b!5555260) bm!414162))

(assert (=> bm!414162 m!6547588))

(declare-fun m!6547600 () Bool)

(assert (=> b!5555257 m!6547600))

(declare-fun m!6547602 () Bool)

(assert (=> b!5555253 m!6547602))

(assert (=> b!5555253 m!6547602))

(declare-fun m!6547604 () Bool)

(assert (=> b!5555253 m!6547604))

(assert (=> d!1758436 m!6547588))

(assert (=> d!1758436 m!6547464))

(declare-fun m!6547606 () Bool)

(assert (=> b!5555259 m!6547606))

(assert (=> b!5555256 m!6547602))

(assert (=> b!5555256 m!6547602))

(assert (=> b!5555256 m!6547604))

(assert (=> b!5555261 m!6547600))

(assert (=> b!5555251 m!6547600))

(assert (=> b!5555251 m!6547600))

(declare-fun m!6547608 () Bool)

(assert (=> b!5555251 m!6547608))

(assert (=> b!5555251 m!6547602))

(assert (=> b!5555251 m!6547608))

(assert (=> b!5555251 m!6547602))

(declare-fun m!6547610 () Bool)

(assert (=> b!5555251 m!6547610))

(assert (=> b!5554981 d!1758436))

(declare-fun d!1758440 () Bool)

(assert (=> d!1758440 (= (matchR!7725 r!7292 s!2326) (matchRSpec!2643 r!7292 s!2326))))

(declare-fun lt!2250973 () Unit!155540)

(declare-fun choose!42137 (Regex!15540 List!62921) Unit!155540)

(assert (=> d!1758440 (= lt!2250973 (choose!42137 r!7292 s!2326))))

(assert (=> d!1758440 (validRegex!7276 r!7292)))

(assert (=> d!1758440 (= (mainMatchTheorem!2643 r!7292 s!2326) lt!2250973)))

(declare-fun bs!1286645 () Bool)

(assert (= bs!1286645 d!1758440))

(assert (=> bs!1286645 m!6547436))

(assert (=> bs!1286645 m!6547434))

(declare-fun m!6547618 () Bool)

(assert (=> bs!1286645 m!6547618))

(assert (=> bs!1286645 m!6547464))

(assert (=> b!5554981 d!1758440))

(declare-fun d!1758444 () Bool)

(declare-fun e!3430977 () Bool)

(assert (=> d!1758444 e!3430977))

(declare-fun res!2361399 () Bool)

(assert (=> d!1758444 (=> res!2361399 e!3430977)))

(declare-fun e!3430978 () Bool)

(assert (=> d!1758444 (= res!2361399 e!3430978)))

(declare-fun res!2361400 () Bool)

(assert (=> d!1758444 (=> (not res!2361400) (not e!3430978))))

(declare-fun lt!2250983 () Option!15549)

(assert (=> d!1758444 (= res!2361400 (isDefined!12252 lt!2250983))))

(declare-fun e!3430976 () Option!15549)

(assert (=> d!1758444 (= lt!2250983 e!3430976)))

(declare-fun c!972534 () Bool)

(declare-fun e!3430975 () Bool)

(assert (=> d!1758444 (= c!972534 e!3430975)))

(declare-fun res!2361402 () Bool)

(assert (=> d!1758444 (=> (not res!2361402) (not e!3430975))))

(assert (=> d!1758444 (= res!2361402 (matchR!7725 (regOne!31592 r!7292) Nil!62797))))

(assert (=> d!1758444 (validRegex!7276 (regOne!31592 r!7292))))

(assert (=> d!1758444 (= (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) Nil!62797 s!2326 s!2326) lt!2250983)))

(declare-fun b!5555342 () Bool)

(declare-fun e!3430974 () Option!15549)

(assert (=> b!5555342 (= e!3430976 e!3430974)))

(declare-fun c!972535 () Bool)

(assert (=> b!5555342 (= c!972535 (is-Nil!62797 s!2326))))

(declare-fun b!5555343 () Bool)

(declare-fun ++!13777 (List!62921 List!62921) List!62921)

(declare-fun get!21615 (Option!15549) tuple2!65274)

(assert (=> b!5555343 (= e!3430978 (= (++!13777 (_1!35940 (get!21615 lt!2250983)) (_2!35940 (get!21615 lt!2250983))) s!2326))))

(declare-fun b!5555344 () Bool)

(declare-fun res!2361398 () Bool)

(assert (=> b!5555344 (=> (not res!2361398) (not e!3430978))))

(assert (=> b!5555344 (= res!2361398 (matchR!7725 (regTwo!31592 r!7292) (_2!35940 (get!21615 lt!2250983))))))

(declare-fun b!5555345 () Bool)

(declare-fun lt!2250985 () Unit!155540)

(declare-fun lt!2250984 () Unit!155540)

(assert (=> b!5555345 (= lt!2250985 lt!2250984)))

(assert (=> b!5555345 (= (++!13777 (++!13777 Nil!62797 (Cons!62797 (h!69245 s!2326) Nil!62797)) (t!376186 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1946 (List!62921 C!31350 List!62921 List!62921) Unit!155540)

(assert (=> b!5555345 (= lt!2250984 (lemmaMoveElementToOtherListKeepsConcatEq!1946 Nil!62797 (h!69245 s!2326) (t!376186 s!2326) s!2326))))

(assert (=> b!5555345 (= e!3430974 (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) (++!13777 Nil!62797 (Cons!62797 (h!69245 s!2326) Nil!62797)) (t!376186 s!2326) s!2326))))

(declare-fun b!5555346 () Bool)

(assert (=> b!5555346 (= e!3430976 (Some!15548 (tuple2!65275 Nil!62797 s!2326)))))

(declare-fun b!5555347 () Bool)

(declare-fun res!2361401 () Bool)

(assert (=> b!5555347 (=> (not res!2361401) (not e!3430978))))

(assert (=> b!5555347 (= res!2361401 (matchR!7725 (regOne!31592 r!7292) (_1!35940 (get!21615 lt!2250983))))))

(declare-fun b!5555348 () Bool)

(assert (=> b!5555348 (= e!3430975 (matchR!7725 (regTwo!31592 r!7292) s!2326))))

(declare-fun b!5555349 () Bool)

(assert (=> b!5555349 (= e!3430974 None!15548)))

(declare-fun b!5555350 () Bool)

(assert (=> b!5555350 (= e!3430977 (not (isDefined!12252 lt!2250983)))))

(assert (= (and d!1758444 res!2361402) b!5555348))

(assert (= (and d!1758444 c!972534) b!5555346))

(assert (= (and d!1758444 (not c!972534)) b!5555342))

(assert (= (and b!5555342 c!972535) b!5555349))

(assert (= (and b!5555342 (not c!972535)) b!5555345))

(assert (= (and d!1758444 res!2361400) b!5555347))

(assert (= (and b!5555347 res!2361401) b!5555344))

(assert (= (and b!5555344 res!2361398) b!5555343))

(assert (= (and d!1758444 (not res!2361399)) b!5555350))

(declare-fun m!6547640 () Bool)

(assert (=> b!5555343 m!6547640))

(declare-fun m!6547642 () Bool)

(assert (=> b!5555343 m!6547642))

(assert (=> b!5555344 m!6547640))

(declare-fun m!6547644 () Bool)

(assert (=> b!5555344 m!6547644))

(declare-fun m!6547646 () Bool)

(assert (=> b!5555348 m!6547646))

(declare-fun m!6547648 () Bool)

(assert (=> d!1758444 m!6547648))

(declare-fun m!6547650 () Bool)

(assert (=> d!1758444 m!6547650))

(declare-fun m!6547652 () Bool)

(assert (=> d!1758444 m!6547652))

(assert (=> b!5555350 m!6547648))

(assert (=> b!5555347 m!6547640))

(declare-fun m!6547654 () Bool)

(assert (=> b!5555347 m!6547654))

(declare-fun m!6547656 () Bool)

(assert (=> b!5555345 m!6547656))

(assert (=> b!5555345 m!6547656))

(declare-fun m!6547658 () Bool)

(assert (=> b!5555345 m!6547658))

(declare-fun m!6547660 () Bool)

(assert (=> b!5555345 m!6547660))

(assert (=> b!5555345 m!6547656))

(declare-fun m!6547662 () Bool)

(assert (=> b!5555345 m!6547662))

(assert (=> b!5554971 d!1758444))

(declare-fun d!1758450 () Bool)

(declare-fun choose!42138 (Int) Bool)

(assert (=> d!1758450 (= (Exists!2640 lambda!298044) (choose!42138 lambda!298044))))

(declare-fun bs!1286650 () Bool)

(assert (= bs!1286650 d!1758450))

(declare-fun m!6547664 () Bool)

(assert (=> bs!1286650 m!6547664))

(assert (=> b!5554971 d!1758450))

(declare-fun d!1758452 () Bool)

(assert (=> d!1758452 (= (Exists!2640 lambda!298045) (choose!42138 lambda!298045))))

(declare-fun bs!1286651 () Bool)

(assert (= bs!1286651 d!1758452))

(declare-fun m!6547666 () Bool)

(assert (=> bs!1286651 m!6547666))

(assert (=> b!5554971 d!1758452))

(declare-fun bs!1286655 () Bool)

(declare-fun d!1758454 () Bool)

(assert (= bs!1286655 (and d!1758454 b!5554971)))

(declare-fun lambda!298082 () Int)

(assert (=> bs!1286655 (= lambda!298082 lambda!298044)))

(assert (=> bs!1286655 (not (= lambda!298082 lambda!298045))))

(declare-fun bs!1286656 () Bool)

(assert (= bs!1286656 (and d!1758454 b!5555169)))

(assert (=> bs!1286656 (not (= lambda!298082 lambda!298068))))

(declare-fun bs!1286657 () Bool)

(assert (= bs!1286657 (and d!1758454 b!5555163)))

(assert (=> bs!1286657 (not (= lambda!298082 lambda!298069))))

(assert (=> d!1758454 true))

(assert (=> d!1758454 true))

(assert (=> d!1758454 true))

(assert (=> d!1758454 (= (isDefined!12252 (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) Nil!62797 s!2326 s!2326)) (Exists!2640 lambda!298082))))

(declare-fun lt!2250988 () Unit!155540)

(declare-fun choose!42139 (Regex!15540 Regex!15540 List!62921) Unit!155540)

(assert (=> d!1758454 (= lt!2250988 (choose!42139 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326))))

(assert (=> d!1758454 (validRegex!7276 (regOne!31592 r!7292))))

(assert (=> d!1758454 (= (lemmaFindConcatSeparationEquivalentToExists!1727 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326) lt!2250988)))

(declare-fun bs!1286658 () Bool)

(assert (= bs!1286658 d!1758454))

(declare-fun m!6547676 () Bool)

(assert (=> bs!1286658 m!6547676))

(declare-fun m!6547678 () Bool)

(assert (=> bs!1286658 m!6547678))

(assert (=> bs!1286658 m!6547652))

(assert (=> bs!1286658 m!6547424))

(assert (=> bs!1286658 m!6547424))

(assert (=> bs!1286658 m!6547426))

(assert (=> b!5554971 d!1758454))

(declare-fun bs!1286659 () Bool)

(declare-fun d!1758458 () Bool)

(assert (= bs!1286659 (and d!1758458 b!5554971)))

(declare-fun lambda!298087 () Int)

(assert (=> bs!1286659 (not (= lambda!298087 lambda!298045))))

(declare-fun bs!1286660 () Bool)

(assert (= bs!1286660 (and d!1758458 d!1758454)))

(assert (=> bs!1286660 (= lambda!298087 lambda!298082)))

(assert (=> bs!1286659 (= lambda!298087 lambda!298044)))

(declare-fun bs!1286661 () Bool)

(assert (= bs!1286661 (and d!1758458 b!5555163)))

(assert (=> bs!1286661 (not (= lambda!298087 lambda!298069))))

(declare-fun bs!1286662 () Bool)

(assert (= bs!1286662 (and d!1758458 b!5555169)))

(assert (=> bs!1286662 (not (= lambda!298087 lambda!298068))))

(assert (=> d!1758458 true))

(assert (=> d!1758458 true))

(assert (=> d!1758458 true))

(declare-fun lambda!298088 () Int)

(assert (=> bs!1286659 (= lambda!298088 lambda!298045)))

(assert (=> bs!1286660 (not (= lambda!298088 lambda!298082))))

(assert (=> bs!1286661 (= lambda!298088 lambda!298069)))

(assert (=> bs!1286662 (not (= lambda!298088 lambda!298068))))

(assert (=> bs!1286659 (not (= lambda!298088 lambda!298044))))

(declare-fun bs!1286663 () Bool)

(assert (= bs!1286663 d!1758458))

(assert (=> bs!1286663 (not (= lambda!298088 lambda!298087))))

(assert (=> d!1758458 true))

(assert (=> d!1758458 true))

(assert (=> d!1758458 true))

(assert (=> d!1758458 (= (Exists!2640 lambda!298087) (Exists!2640 lambda!298088))))

(declare-fun lt!2250993 () Unit!155540)

(declare-fun choose!42140 (Regex!15540 Regex!15540 List!62921) Unit!155540)

(assert (=> d!1758458 (= lt!2250993 (choose!42140 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326))))

(assert (=> d!1758458 (validRegex!7276 (regOne!31592 r!7292))))

(assert (=> d!1758458 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1269 (regOne!31592 r!7292) (regTwo!31592 r!7292) s!2326) lt!2250993)))

(declare-fun m!6547692 () Bool)

(assert (=> bs!1286663 m!6547692))

(declare-fun m!6547694 () Bool)

(assert (=> bs!1286663 m!6547694))

(declare-fun m!6547696 () Bool)

(assert (=> bs!1286663 m!6547696))

(assert (=> bs!1286663 m!6547652))

(assert (=> b!5554971 d!1758458))

(declare-fun d!1758462 () Bool)

(declare-fun isEmpty!34595 (Option!15549) Bool)

(assert (=> d!1758462 (= (isDefined!12252 (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) Nil!62797 s!2326 s!2326)) (not (isEmpty!34595 (findConcatSeparation!1963 (regOne!31592 r!7292) (regTwo!31592 r!7292) Nil!62797 s!2326 s!2326))))))

(declare-fun bs!1286664 () Bool)

(assert (= bs!1286664 d!1758462))

(assert (=> bs!1286664 m!6547424))

(declare-fun m!6547698 () Bool)

(assert (=> bs!1286664 m!6547698))

(assert (=> b!5554971 d!1758462))

(declare-fun bs!1286665 () Bool)

(declare-fun d!1758464 () Bool)

(assert (= bs!1286665 (and d!1758464 d!1758414)))

(declare-fun lambda!298091 () Int)

(assert (=> bs!1286665 (= lambda!298091 lambda!298060)))

(assert (=> d!1758464 (= (inv!82098 setElem!36966) (forall!14712 (exprs!5424 setElem!36966) lambda!298091))))

(declare-fun bs!1286667 () Bool)

(assert (= bs!1286667 d!1758464))

(declare-fun m!6547702 () Bool)

(assert (=> bs!1286667 m!6547702))

(assert (=> setNonEmpty!36966 d!1758464))

(declare-fun d!1758468 () Bool)

(declare-fun dynLambda!24560 (Int Context!9848) (Set Context!9848))

(assert (=> d!1758468 (= (flatMap!1153 z!1189 lambda!298046) (dynLambda!24560 lambda!298046 (h!69244 zl!343)))))

(declare-fun lt!2251000 () Unit!155540)

(declare-fun choose!42141 ((Set Context!9848) Context!9848 Int) Unit!155540)

(assert (=> d!1758468 (= lt!2251000 (choose!42141 z!1189 (h!69244 zl!343) lambda!298046))))

(assert (=> d!1758468 (= z!1189 (set.insert (h!69244 zl!343) (as set.empty (Set Context!9848))))))

(assert (=> d!1758468 (= (lemmaFlatMapOnSingletonSet!685 z!1189 (h!69244 zl!343) lambda!298046) lt!2251000)))

(declare-fun b_lambda!210973 () Bool)

(assert (=> (not b_lambda!210973) (not d!1758468)))

(declare-fun bs!1286669 () Bool)

(assert (= bs!1286669 d!1758468))

(assert (=> bs!1286669 m!6547458))

(declare-fun m!6547706 () Bool)

(assert (=> bs!1286669 m!6547706))

(declare-fun m!6547708 () Bool)

(assert (=> bs!1286669 m!6547708))

(declare-fun m!6547710 () Bool)

(assert (=> bs!1286669 m!6547710))

(assert (=> b!5554973 d!1758468))

(declare-fun d!1758472 () Bool)

(declare-fun nullableFct!1689 (Regex!15540) Bool)

(assert (=> d!1758472 (= (nullable!5572 (h!69243 (exprs!5424 (h!69244 zl!343)))) (nullableFct!1689 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun bs!1286670 () Bool)

(assert (= bs!1286670 d!1758472))

(declare-fun m!6547712 () Bool)

(assert (=> bs!1286670 m!6547712))

(assert (=> b!5554973 d!1758472))

(declare-fun d!1758474 () Bool)

(declare-fun c!972553 () Bool)

(declare-fun e!3431027 () Bool)

(assert (=> d!1758474 (= c!972553 e!3431027)))

(declare-fun res!2361458 () Bool)

(assert (=> d!1758474 (=> (not res!2361458) (not e!3431027))))

(assert (=> d!1758474 (= res!2361458 (is-Cons!62795 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343))))))))))

(declare-fun e!3431025 () (Set Context!9848))

(assert (=> d!1758474 (= (derivationStepZipperUp!808 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343))))) (h!69245 s!2326)) e!3431025)))

(declare-fun b!5555440 () Bool)

(declare-fun e!3431026 () (Set Context!9848))

(declare-fun call!414182 () (Set Context!9848))

(assert (=> b!5555440 (= e!3431026 call!414182)))

(declare-fun b!5555441 () Bool)

(assert (=> b!5555441 (= e!3431026 (as set.empty (Set Context!9848)))))

(declare-fun b!5555442 () Bool)

(assert (=> b!5555442 (= e!3431025 (set.union call!414182 (derivationStepZipperUp!808 (Context!9849 (t!376184 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343)))))))) (h!69245 s!2326))))))

(declare-fun b!5555443 () Bool)

(assert (=> b!5555443 (= e!3431025 e!3431026)))

(declare-fun c!972554 () Bool)

(assert (=> b!5555443 (= c!972554 (is-Cons!62795 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343))))))))))

(declare-fun bm!414177 () Bool)

(assert (=> bm!414177 (= call!414182 (derivationStepZipperDown!882 (h!69243 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343))))))) (Context!9849 (t!376184 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343)))))))) (h!69245 s!2326)))))

(declare-fun b!5555444 () Bool)

(assert (=> b!5555444 (= e!3431027 (nullable!5572 (h!69243 (exprs!5424 (Context!9849 (Cons!62795 (h!69243 (exprs!5424 (h!69244 zl!343))) (t!376184 (exprs!5424 (h!69244 zl!343)))))))))))

(assert (= (and d!1758474 res!2361458) b!5555444))

(assert (= (and d!1758474 c!972553) b!5555442))

(assert (= (and d!1758474 (not c!972553)) b!5555443))

(assert (= (and b!5555443 c!972554) b!5555440))

(assert (= (and b!5555443 (not c!972554)) b!5555441))

(assert (= (or b!5555442 b!5555440) bm!414177))

(declare-fun m!6547714 () Bool)

(assert (=> b!5555442 m!6547714))

(declare-fun m!6547716 () Bool)

(assert (=> bm!414177 m!6547716))

(declare-fun m!6547718 () Bool)

(assert (=> b!5555444 m!6547718))

(assert (=> b!5554973 d!1758474))

(declare-fun d!1758476 () Bool)

(declare-fun choose!42142 ((Set Context!9848) Int) (Set Context!9848))

(assert (=> d!1758476 (= (flatMap!1153 z!1189 lambda!298046) (choose!42142 z!1189 lambda!298046))))

(declare-fun bs!1286674 () Bool)

(assert (= bs!1286674 d!1758476))

(declare-fun m!6547720 () Bool)

(assert (=> bs!1286674 m!6547720))

(assert (=> b!5554973 d!1758476))

(declare-fun d!1758478 () Bool)

(declare-fun c!972555 () Bool)

(declare-fun e!3431030 () Bool)

(assert (=> d!1758478 (= c!972555 e!3431030)))

(declare-fun res!2361459 () Bool)

(assert (=> d!1758478 (=> (not res!2361459) (not e!3431030))))

(assert (=> d!1758478 (= res!2361459 (is-Cons!62795 (exprs!5424 (h!69244 zl!343))))))

(declare-fun e!3431028 () (Set Context!9848))

(assert (=> d!1758478 (= (derivationStepZipperUp!808 (h!69244 zl!343) (h!69245 s!2326)) e!3431028)))

(declare-fun b!5555445 () Bool)

(declare-fun e!3431029 () (Set Context!9848))

(declare-fun call!414183 () (Set Context!9848))

(assert (=> b!5555445 (= e!3431029 call!414183)))

(declare-fun b!5555446 () Bool)

(assert (=> b!5555446 (= e!3431029 (as set.empty (Set Context!9848)))))

(declare-fun b!5555447 () Bool)

(assert (=> b!5555447 (= e!3431028 (set.union call!414183 (derivationStepZipperUp!808 (Context!9849 (t!376184 (exprs!5424 (h!69244 zl!343)))) (h!69245 s!2326))))))

(declare-fun b!5555448 () Bool)

(assert (=> b!5555448 (= e!3431028 e!3431029)))

(declare-fun c!972556 () Bool)

(assert (=> b!5555448 (= c!972556 (is-Cons!62795 (exprs!5424 (h!69244 zl!343))))))

(declare-fun bm!414178 () Bool)

(assert (=> bm!414178 (= call!414183 (derivationStepZipperDown!882 (h!69243 (exprs!5424 (h!69244 zl!343))) (Context!9849 (t!376184 (exprs!5424 (h!69244 zl!343)))) (h!69245 s!2326)))))

(declare-fun b!5555449 () Bool)

(assert (=> b!5555449 (= e!3431030 (nullable!5572 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(assert (= (and d!1758478 res!2361459) b!5555449))

(assert (= (and d!1758478 c!972555) b!5555447))

(assert (= (and d!1758478 (not c!972555)) b!5555448))

(assert (= (and b!5555448 c!972556) b!5555445))

(assert (= (and b!5555448 (not c!972556)) b!5555446))

(assert (= (or b!5555447 b!5555445) bm!414178))

(declare-fun m!6547728 () Bool)

(assert (=> b!5555447 m!6547728))

(declare-fun m!6547730 () Bool)

(assert (=> bm!414178 m!6547730))

(assert (=> b!5555449 m!6547456))

(assert (=> b!5554973 d!1758478))

(declare-fun d!1758482 () Bool)

(declare-fun c!972557 () Bool)

(declare-fun e!3431033 () Bool)

(assert (=> d!1758482 (= c!972557 e!3431033)))

(declare-fun res!2361460 () Bool)

(assert (=> d!1758482 (=> (not res!2361460) (not e!3431033))))

(assert (=> d!1758482 (= res!2361460 (is-Cons!62795 (exprs!5424 lt!2250917)))))

(declare-fun e!3431031 () (Set Context!9848))

(assert (=> d!1758482 (= (derivationStepZipperUp!808 lt!2250917 (h!69245 s!2326)) e!3431031)))

(declare-fun b!5555450 () Bool)

(declare-fun e!3431032 () (Set Context!9848))

(declare-fun call!414184 () (Set Context!9848))

(assert (=> b!5555450 (= e!3431032 call!414184)))

(declare-fun b!5555451 () Bool)

(assert (=> b!5555451 (= e!3431032 (as set.empty (Set Context!9848)))))

(declare-fun b!5555452 () Bool)

(assert (=> b!5555452 (= e!3431031 (set.union call!414184 (derivationStepZipperUp!808 (Context!9849 (t!376184 (exprs!5424 lt!2250917))) (h!69245 s!2326))))))

(declare-fun b!5555453 () Bool)

(assert (=> b!5555453 (= e!3431031 e!3431032)))

(declare-fun c!972558 () Bool)

(assert (=> b!5555453 (= c!972558 (is-Cons!62795 (exprs!5424 lt!2250917)))))

(declare-fun bm!414179 () Bool)

(assert (=> bm!414179 (= call!414184 (derivationStepZipperDown!882 (h!69243 (exprs!5424 lt!2250917)) (Context!9849 (t!376184 (exprs!5424 lt!2250917))) (h!69245 s!2326)))))

(declare-fun b!5555454 () Bool)

(assert (=> b!5555454 (= e!3431033 (nullable!5572 (h!69243 (exprs!5424 lt!2250917))))))

(assert (= (and d!1758482 res!2361460) b!5555454))

(assert (= (and d!1758482 c!972557) b!5555452))

(assert (= (and d!1758482 (not c!972557)) b!5555453))

(assert (= (and b!5555453 c!972558) b!5555450))

(assert (= (and b!5555453 (not c!972558)) b!5555451))

(assert (= (or b!5555452 b!5555450) bm!414179))

(declare-fun m!6547732 () Bool)

(assert (=> b!5555452 m!6547732))

(declare-fun m!6547734 () Bool)

(assert (=> bm!414179 m!6547734))

(declare-fun m!6547736 () Bool)

(assert (=> b!5555454 m!6547736))

(assert (=> b!5554973 d!1758482))

(declare-fun c!972573 () Bool)

(declare-fun call!414201 () List!62919)

(declare-fun bm!414192 () Bool)

(declare-fun call!414198 () (Set Context!9848))

(assert (=> bm!414192 (= call!414198 (derivationStepZipperDown!882 (ite c!972573 (regOne!31593 (h!69243 (exprs!5424 (h!69244 zl!343)))) (regOne!31592 (h!69243 (exprs!5424 (h!69244 zl!343))))) (ite c!972573 lt!2250917 (Context!9849 call!414201)) (h!69245 s!2326)))))

(declare-fun bm!414193 () Bool)

(declare-fun call!414202 () List!62919)

(assert (=> bm!414193 (= call!414202 call!414201)))

(declare-fun b!5555495 () Bool)

(declare-fun e!3431057 () (Set Context!9848))

(assert (=> b!5555495 (= e!3431057 (as set.empty (Set Context!9848)))))

(declare-fun b!5555496 () Bool)

(declare-fun e!3431061 () (Set Context!9848))

(declare-fun e!3431060 () (Set Context!9848))

(assert (=> b!5555496 (= e!3431061 e!3431060)))

(assert (=> b!5555496 (= c!972573 (is-Union!15540 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5555497 () Bool)

(declare-fun e!3431059 () Bool)

(assert (=> b!5555497 (= e!3431059 (nullable!5572 (regOne!31592 (h!69243 (exprs!5424 (h!69244 zl!343))))))))

(declare-fun b!5555498 () Bool)

(declare-fun e!3431056 () (Set Context!9848))

(declare-fun call!414199 () (Set Context!9848))

(assert (=> b!5555498 (= e!3431056 call!414199)))

(declare-fun b!5555499 () Bool)

(declare-fun e!3431058 () (Set Context!9848))

(assert (=> b!5555499 (= e!3431058 e!3431056)))

(declare-fun c!972574 () Bool)

(assert (=> b!5555499 (= c!972574 (is-Concat!24385 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(declare-fun b!5555500 () Bool)

(declare-fun c!972577 () Bool)

(assert (=> b!5555500 (= c!972577 e!3431059)))

(declare-fun res!2361473 () Bool)

(assert (=> b!5555500 (=> (not res!2361473) (not e!3431059))))

(assert (=> b!5555500 (= res!2361473 (is-Concat!24385 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(assert (=> b!5555500 (= e!3431060 e!3431058)))

(declare-fun b!5555501 () Bool)

(declare-fun c!972575 () Bool)

(assert (=> b!5555501 (= c!972575 (is-Star!15540 (h!69243 (exprs!5424 (h!69244 zl!343)))))))

(assert (=> b!5555501 (= e!3431056 e!3431057)))

(declare-fun b!5555502 () Bool)

(declare-fun call!414197 () (Set Context!9848))

(assert (=> b!5555502 (= e!3431060 (set.union call!414198 call!414197))))

(declare-fun b!5555503 () Bool)

(assert (=> b!5555503 (= e!3431061 (set.insert lt!2250917 (as set.empty (Set Context!9848))))))

(declare-fun b!5555504 () Bool)

(assert (=> b!5555504 (= e!3431057 call!414199)))

(declare-fun b!5555505 () Bool)

(declare-fun call!414200 () (Set Context!9848))

(assert (=> b!5555505 (= e!3431058 (set.union call!414198 call!414200))))

(declare-fun bm!414195 () Bool)

(assert (=> bm!414195 (= call!414199 call!414200)))

(declare-fun d!1758484 () Bool)

(declare-fun c!972576 () Bool)

(assert (=> d!1758484 (= c!972576 (and (is-ElementMatch!15540 (h!69243 (exprs!5424 (h!69244 zl!343)))) (= (c!972441 (h!69243 (exprs!5424 (h!69244 zl!343)))) (h!69245 s!2326))))))

(assert (=> d!1758484 (= (derivationStepZipperDown!882 (h!69243 (exprs!5424 (h!69244 zl!343))) lt!2250917 (h!69245 s!2326)) e!3431061)))

(declare-fun bm!414194 () Bool)

(assert (=> bm!414194 (= call!414197 (derivationStepZipperDown!882 (ite c!972573 (regTwo!31593 (h!69243 (exprs!5424 (h!69244 zl!343)))) (ite c!972577 (regTwo!31592 (h!69243 (exprs!5424 (h!69244 zl!343)))) (ite c!972574 (regOne!31592 (h!69243 (exprs!5424 (h!69244 zl!343)))) (reg!15869 (h!69243 (exprs!5424 (h!69244 zl!343))))))) (ite (or c!972573 c!972577) lt!2250917 (Context!9849 call!414202)) (h!69245 s!2326)))))

(declare-fun bm!414196 () Bool)

(declare-fun $colon$colon!1610 (List!62919 Regex!15540) List!62919)

(assert (=> bm!414196 (= call!414201 ($colon$colon!1610 (exprs!5424 lt!2250917) (ite (or c!972577 c!972574) (regTwo!31592 (h!69243 (exprs!5424 (h!69244 zl!343)))) (h!69243 (exprs!5424 (h!69244 zl!343))))))))

(declare-fun bm!414197 () Bool)

(assert (=> bm!414197 (= call!414200 call!414197)))

(assert (= (and d!1758484 c!972576) b!5555503))

(assert (= (and d!1758484 (not c!972576)) b!5555496))

(assert (= (and b!5555496 c!972573) b!5555502))

(assert (= (and b!5555496 (not c!972573)) b!5555500))

(assert (= (and b!5555500 res!2361473) b!5555497))

(assert (= (and b!5555500 c!972577) b!5555505))

(assert (= (and b!5555500 (not c!972577)) b!5555499))

(assert (= (and b!5555499 c!972574) b!5555498))

(assert (= (and b!5555499 (not c!972574)) b!5555501))

(assert (= (and b!5555501 c!972575) b!5555504))

(assert (= (and b!5555501 (not c!972575)) b!5555495))

(assert (= (or b!5555498 b!5555504) bm!414193))

(assert (= (or b!5555498 b!5555504) bm!414195))

(assert (= (or b!5555505 bm!414193) bm!414196))

(assert (= (or b!5555505 bm!414195) bm!414197))

(assert (= (or b!5555502 bm!414197) bm!414194))

(assert (= (or b!5555502 b!5555505) bm!414192))

(declare-fun m!6547738 () Bool)

(assert (=> b!5555503 m!6547738))

(declare-fun m!6547740 () Bool)

(assert (=> b!5555497 m!6547740))

(declare-fun m!6547742 () Bool)

(assert (=> bm!414196 m!6547742))

(declare-fun m!6547744 () Bool)

(assert (=> bm!414194 m!6547744))

(declare-fun m!6547746 () Bool)

(assert (=> bm!414192 m!6547746))

(assert (=> b!5554973 d!1758484))

(declare-fun bs!1286677 () Bool)

(declare-fun d!1758486 () Bool)

(assert (= bs!1286677 (and d!1758486 d!1758414)))

(declare-fun lambda!298097 () Int)

(assert (=> bs!1286677 (= lambda!298097 lambda!298060)))

(declare-fun bs!1286678 () Bool)

(assert (= bs!1286678 (and d!1758486 d!1758464)))

(assert (=> bs!1286678 (= lambda!298097 lambda!298091)))

(declare-fun b!5555535 () Bool)

(declare-fun e!3431079 () Bool)

(declare-fun lt!2251015 () Regex!15540)

(assert (=> b!5555535 (= e!3431079 (= lt!2251015 (head!11863 (unfocusZipperList!968 zl!343))))))

(declare-fun b!5555536 () Bool)

(declare-fun e!3431084 () Regex!15540)

(assert (=> b!5555536 (= e!3431084 (Union!15540 (h!69243 (unfocusZipperList!968 zl!343)) (generalisedUnion!1403 (t!376184 (unfocusZipperList!968 zl!343)))))))

(declare-fun b!5555537 () Bool)

(declare-fun e!3431083 () Bool)

(assert (=> b!5555537 (= e!3431083 e!3431079)))

(declare-fun c!972591 () Bool)

(assert (=> b!5555537 (= c!972591 (isEmpty!34591 (tail!10958 (unfocusZipperList!968 zl!343))))))

(declare-fun e!3431080 () Bool)

(assert (=> d!1758486 e!3431080))

(declare-fun res!2361483 () Bool)

(assert (=> d!1758486 (=> (not res!2361483) (not e!3431080))))

(assert (=> d!1758486 (= res!2361483 (validRegex!7276 lt!2251015))))

(declare-fun e!3431082 () Regex!15540)

(assert (=> d!1758486 (= lt!2251015 e!3431082)))

(declare-fun c!972588 () Bool)

(declare-fun e!3431081 () Bool)

(assert (=> d!1758486 (= c!972588 e!3431081)))

(declare-fun res!2361484 () Bool)

(assert (=> d!1758486 (=> (not res!2361484) (not e!3431081))))

(assert (=> d!1758486 (= res!2361484 (is-Cons!62795 (unfocusZipperList!968 zl!343)))))

(assert (=> d!1758486 (forall!14712 (unfocusZipperList!968 zl!343) lambda!298097)))

(assert (=> d!1758486 (= (generalisedUnion!1403 (unfocusZipperList!968 zl!343)) lt!2251015)))

(declare-fun b!5555538 () Bool)

(assert (=> b!5555538 (= e!3431082 (h!69243 (unfocusZipperList!968 zl!343)))))

(declare-fun b!5555539 () Bool)

(declare-fun isUnion!543 (Regex!15540) Bool)

(assert (=> b!5555539 (= e!3431079 (isUnion!543 lt!2251015))))

(declare-fun b!5555540 () Bool)

(assert (=> b!5555540 (= e!3431081 (isEmpty!34591 (t!376184 (unfocusZipperList!968 zl!343))))))

(declare-fun b!5555541 () Bool)

(assert (=> b!5555541 (= e!3431080 e!3431083)))

(declare-fun c!972590 () Bool)

(assert (=> b!5555541 (= c!972590 (isEmpty!34591 (unfocusZipperList!968 zl!343)))))

(declare-fun b!5555542 () Bool)

(assert (=> b!5555542 (= e!3431082 e!3431084)))

(declare-fun c!972589 () Bool)

(assert (=> b!5555542 (= c!972589 (is-Cons!62795 (unfocusZipperList!968 zl!343)))))

(declare-fun b!5555543 () Bool)

(assert (=> b!5555543 (= e!3431084 EmptyLang!15540)))

(declare-fun b!5555544 () Bool)

(declare-fun isEmptyLang!1113 (Regex!15540) Bool)

(assert (=> b!5555544 (= e!3431083 (isEmptyLang!1113 lt!2251015))))

(assert (= (and d!1758486 res!2361484) b!5555540))

(assert (= (and d!1758486 c!972588) b!5555538))

(assert (= (and d!1758486 (not c!972588)) b!5555542))

(assert (= (and b!5555542 c!972589) b!5555536))

(assert (= (and b!5555542 (not c!972589)) b!5555543))

(assert (= (and d!1758486 res!2361483) b!5555541))

(assert (= (and b!5555541 c!972590) b!5555544))

(assert (= (and b!5555541 (not c!972590)) b!5555537))

(assert (= (and b!5555537 c!972591) b!5555535))

(assert (= (and b!5555537 (not c!972591)) b!5555539))

(assert (=> b!5555535 m!6547466))

(declare-fun m!6547772 () Bool)

(assert (=> b!5555535 m!6547772))

(declare-fun m!6547774 () Bool)

(assert (=> b!5555539 m!6547774))

(assert (=> b!5555541 m!6547466))

(declare-fun m!6547776 () Bool)

(assert (=> b!5555541 m!6547776))

(declare-fun m!6547778 () Bool)

(assert (=> b!5555544 m!6547778))

(declare-fun m!6547780 () Bool)

(assert (=> b!5555540 m!6547780))

(declare-fun m!6547782 () Bool)

(assert (=> d!1758486 m!6547782))

(assert (=> d!1758486 m!6547466))

(declare-fun m!6547784 () Bool)

(assert (=> d!1758486 m!6547784))

(declare-fun m!6547786 () Bool)

(assert (=> b!5555536 m!6547786))

(assert (=> b!5555537 m!6547466))

(declare-fun m!6547788 () Bool)

(assert (=> b!5555537 m!6547788))

(assert (=> b!5555537 m!6547788))

(declare-fun m!6547790 () Bool)

(assert (=> b!5555537 m!6547790))

(assert (=> b!5554965 d!1758486))

(declare-fun bs!1286679 () Bool)

(declare-fun d!1758492 () Bool)

(assert (= bs!1286679 (and d!1758492 d!1758414)))

(declare-fun lambda!298104 () Int)

(assert (=> bs!1286679 (= lambda!298104 lambda!298060)))

(declare-fun bs!1286680 () Bool)

(assert (= bs!1286680 (and d!1758492 d!1758464)))

(assert (=> bs!1286680 (= lambda!298104 lambda!298091)))

(declare-fun bs!1286681 () Bool)

(assert (= bs!1286681 (and d!1758492 d!1758486)))

(assert (=> bs!1286681 (= lambda!298104 lambda!298097)))

(declare-fun lt!2251021 () List!62919)

(assert (=> d!1758492 (forall!14712 lt!2251021 lambda!298104)))

(declare-fun e!3431091 () List!62919)

(assert (=> d!1758492 (= lt!2251021 e!3431091)))

(declare-fun c!972594 () Bool)

(assert (=> d!1758492 (= c!972594 (is-Cons!62796 zl!343))))

(assert (=> d!1758492 (= (unfocusZipperList!968 zl!343) lt!2251021)))

(declare-fun b!5555557 () Bool)

(assert (=> b!5555557 (= e!3431091 (Cons!62795 (generalisedConcat!1155 (exprs!5424 (h!69244 zl!343))) (unfocusZipperList!968 (t!376185 zl!343))))))

(declare-fun b!5555558 () Bool)

(assert (=> b!5555558 (= e!3431091 Nil!62795)))

(assert (= (and d!1758492 c!972594) b!5555557))

(assert (= (and d!1758492 (not c!972594)) b!5555558))

(declare-fun m!6547792 () Bool)

(assert (=> d!1758492 m!6547792))

(assert (=> b!5555557 m!6547470))

(declare-fun m!6547794 () Bool)

(assert (=> b!5555557 m!6547794))

(assert (=> b!5554965 d!1758492))

(declare-fun b!5555577 () Bool)

(declare-fun e!3431111 () Bool)

(declare-fun e!3431110 () Bool)

(assert (=> b!5555577 (= e!3431111 e!3431110)))

(declare-fun res!2361504 () Bool)

(assert (=> b!5555577 (=> (not res!2361504) (not e!3431110))))

(declare-fun call!414210 () Bool)

(assert (=> b!5555577 (= res!2361504 call!414210)))

(declare-fun c!972599 () Bool)

(declare-fun bm!414204 () Bool)

(declare-fun c!972600 () Bool)

(declare-fun call!414211 () Bool)

(assert (=> bm!414204 (= call!414211 (validRegex!7276 (ite c!972599 (reg!15869 r!7292) (ite c!972600 (regOne!31593 r!7292) (regOne!31592 r!7292)))))))

(declare-fun b!5555578 () Bool)

(declare-fun e!3431107 () Bool)

(declare-fun e!3431106 () Bool)

(assert (=> b!5555578 (= e!3431107 e!3431106)))

(declare-fun res!2361503 () Bool)

(assert (=> b!5555578 (= res!2361503 (not (nullable!5572 (reg!15869 r!7292))))))

(assert (=> b!5555578 (=> (not res!2361503) (not e!3431106))))

(declare-fun b!5555579 () Bool)

(assert (=> b!5555579 (= e!3431106 call!414211)))

(declare-fun b!5555580 () Bool)

(declare-fun e!3431108 () Bool)

(assert (=> b!5555580 (= e!3431107 e!3431108)))

(assert (=> b!5555580 (= c!972600 (is-Union!15540 r!7292))))

(declare-fun b!5555581 () Bool)

(declare-fun call!414209 () Bool)

(assert (=> b!5555581 (= e!3431110 call!414209)))

(declare-fun d!1758494 () Bool)

(declare-fun res!2361505 () Bool)

(declare-fun e!3431109 () Bool)

(assert (=> d!1758494 (=> res!2361505 e!3431109)))

(assert (=> d!1758494 (= res!2361505 (is-ElementMatch!15540 r!7292))))

(assert (=> d!1758494 (= (validRegex!7276 r!7292) e!3431109)))

(declare-fun b!5555582 () Bool)

(declare-fun res!2361507 () Bool)

(assert (=> b!5555582 (=> res!2361507 e!3431111)))

(assert (=> b!5555582 (= res!2361507 (not (is-Concat!24385 r!7292)))))

(assert (=> b!5555582 (= e!3431108 e!3431111)))

(declare-fun b!5555583 () Bool)

(declare-fun res!2361506 () Bool)

(declare-fun e!3431112 () Bool)

(assert (=> b!5555583 (=> (not res!2361506) (not e!3431112))))

(assert (=> b!5555583 (= res!2361506 call!414210)))

(assert (=> b!5555583 (= e!3431108 e!3431112)))

(declare-fun b!5555584 () Bool)

(assert (=> b!5555584 (= e!3431109 e!3431107)))

(assert (=> b!5555584 (= c!972599 (is-Star!15540 r!7292))))

(declare-fun bm!414205 () Bool)

(assert (=> bm!414205 (= call!414209 (validRegex!7276 (ite c!972600 (regTwo!31593 r!7292) (regTwo!31592 r!7292))))))

(declare-fun b!5555585 () Bool)

(assert (=> b!5555585 (= e!3431112 call!414209)))

(declare-fun bm!414206 () Bool)

(assert (=> bm!414206 (= call!414210 call!414211)))

(assert (= (and d!1758494 (not res!2361505)) b!5555584))

(assert (= (and b!5555584 c!972599) b!5555578))

(assert (= (and b!5555584 (not c!972599)) b!5555580))

(assert (= (and b!5555578 res!2361503) b!5555579))

(assert (= (and b!5555580 c!972600) b!5555583))

(assert (= (and b!5555580 (not c!972600)) b!5555582))

(assert (= (and b!5555583 res!2361506) b!5555585))

(assert (= (and b!5555582 (not res!2361507)) b!5555577))

(assert (= (and b!5555577 res!2361504) b!5555581))

(assert (= (or b!5555585 b!5555581) bm!414205))

(assert (= (or b!5555583 b!5555577) bm!414206))

(assert (= (or b!5555579 bm!414206) bm!414204))

(declare-fun m!6547804 () Bool)

(assert (=> bm!414204 m!6547804))

(declare-fun m!6547806 () Bool)

(assert (=> b!5555578 m!6547806))

(declare-fun m!6547808 () Bool)

(assert (=> bm!414205 m!6547808))

(assert (=> start!578276 d!1758494))

(declare-fun bs!1286688 () Bool)

(declare-fun d!1758500 () Bool)

(assert (= bs!1286688 (and d!1758500 b!5554973)))

(declare-fun lambda!298111 () Int)

(assert (=> bs!1286688 (= lambda!298111 lambda!298046)))

(assert (=> d!1758500 true))

(assert (=> d!1758500 (= (derivationStepZipper!1641 z!1189 (h!69245 s!2326)) (flatMap!1153 z!1189 lambda!298111))))

(declare-fun bs!1286689 () Bool)

(assert (= bs!1286689 d!1758500))

(declare-fun m!6547810 () Bool)

(assert (=> bs!1286689 m!6547810))

(assert (=> b!5554974 d!1758500))

(declare-fun d!1758502 () Bool)

(assert (=> d!1758502 (= (isEmpty!34590 (t!376185 zl!343)) (is-Nil!62796 (t!376185 zl!343)))))

(assert (=> b!5554976 d!1758502))

(declare-fun bs!1286690 () Bool)

(declare-fun d!1758504 () Bool)

(assert (= bs!1286690 (and d!1758504 d!1758414)))

(declare-fun lambda!298112 () Int)

(assert (=> bs!1286690 (= lambda!298112 lambda!298060)))

(declare-fun bs!1286691 () Bool)

(assert (= bs!1286691 (and d!1758504 d!1758464)))

(assert (=> bs!1286691 (= lambda!298112 lambda!298091)))

(declare-fun bs!1286692 () Bool)

(assert (= bs!1286692 (and d!1758504 d!1758486)))

(assert (=> bs!1286692 (= lambda!298112 lambda!298097)))

(declare-fun bs!1286693 () Bool)

(assert (= bs!1286693 (and d!1758504 d!1758492)))

(assert (=> bs!1286693 (= lambda!298112 lambda!298104)))

(assert (=> d!1758504 (= (inv!82098 (h!69244 zl!343)) (forall!14712 (exprs!5424 (h!69244 zl!343)) lambda!298112))))

(declare-fun bs!1286694 () Bool)

(assert (= bs!1286694 d!1758504))

(declare-fun m!6547812 () Bool)

(assert (=> bs!1286694 m!6547812))

(assert (=> b!5554967 d!1758504))

(declare-fun b!5555612 () Bool)

(declare-fun e!3431127 () Bool)

(declare-fun tp!1532680 () Bool)

(declare-fun tp!1532681 () Bool)

(assert (=> b!5555612 (= e!3431127 (and tp!1532680 tp!1532681))))

(assert (=> b!5554972 (= tp!1532637 e!3431127)))

(assert (= (and b!5554972 (is-Cons!62795 (exprs!5424 setElem!36966))) b!5555612))

(declare-fun b!5555636 () Bool)

(declare-fun e!3431136 () Bool)

(declare-fun tp!1532694 () Bool)

(declare-fun tp!1532696 () Bool)

(assert (=> b!5555636 (= e!3431136 (and tp!1532694 tp!1532696))))

(declare-fun b!5555634 () Bool)

(declare-fun tp!1532692 () Bool)

(declare-fun tp!1532693 () Bool)

(assert (=> b!5555634 (= e!3431136 (and tp!1532692 tp!1532693))))

(assert (=> b!5554962 (= tp!1532645 e!3431136)))

(declare-fun b!5555633 () Bool)

(assert (=> b!5555633 (= e!3431136 tp_is_empty!40333)))

(declare-fun b!5555635 () Bool)

(declare-fun tp!1532695 () Bool)

(assert (=> b!5555635 (= e!3431136 tp!1532695)))

(assert (= (and b!5554962 (is-ElementMatch!15540 (regOne!31593 r!7292))) b!5555633))

(assert (= (and b!5554962 (is-Concat!24385 (regOne!31593 r!7292))) b!5555634))

(assert (= (and b!5554962 (is-Star!15540 (regOne!31593 r!7292))) b!5555635))

(assert (= (and b!5554962 (is-Union!15540 (regOne!31593 r!7292))) b!5555636))

(declare-fun b!5555640 () Bool)

(declare-fun e!3431137 () Bool)

(declare-fun tp!1532699 () Bool)

(declare-fun tp!1532701 () Bool)

(assert (=> b!5555640 (= e!3431137 (and tp!1532699 tp!1532701))))

(declare-fun b!5555638 () Bool)

(declare-fun tp!1532697 () Bool)

(declare-fun tp!1532698 () Bool)

(assert (=> b!5555638 (= e!3431137 (and tp!1532697 tp!1532698))))

(assert (=> b!5554962 (= tp!1532642 e!3431137)))

(declare-fun b!5555637 () Bool)

(assert (=> b!5555637 (= e!3431137 tp_is_empty!40333)))

(declare-fun b!5555639 () Bool)

(declare-fun tp!1532700 () Bool)

(assert (=> b!5555639 (= e!3431137 tp!1532700)))

(assert (= (and b!5554962 (is-ElementMatch!15540 (regTwo!31593 r!7292))) b!5555637))

(assert (= (and b!5554962 (is-Concat!24385 (regTwo!31593 r!7292))) b!5555638))

(assert (= (and b!5554962 (is-Star!15540 (regTwo!31593 r!7292))) b!5555639))

(assert (= (and b!5554962 (is-Union!15540 (regTwo!31593 r!7292))) b!5555640))

(declare-fun b!5555644 () Bool)

(declare-fun e!3431138 () Bool)

(declare-fun tp!1532704 () Bool)

(declare-fun tp!1532706 () Bool)

(assert (=> b!5555644 (= e!3431138 (and tp!1532704 tp!1532706))))

(declare-fun b!5555642 () Bool)

(declare-fun tp!1532702 () Bool)

(declare-fun tp!1532703 () Bool)

(assert (=> b!5555642 (= e!3431138 (and tp!1532702 tp!1532703))))

(assert (=> b!5554977 (= tp!1532643 e!3431138)))

(declare-fun b!5555641 () Bool)

(assert (=> b!5555641 (= e!3431138 tp_is_empty!40333)))

(declare-fun b!5555643 () Bool)

(declare-fun tp!1532705 () Bool)

(assert (=> b!5555643 (= e!3431138 tp!1532705)))

(assert (= (and b!5554977 (is-ElementMatch!15540 (regOne!31592 r!7292))) b!5555641))

(assert (= (and b!5554977 (is-Concat!24385 (regOne!31592 r!7292))) b!5555642))

(assert (= (and b!5554977 (is-Star!15540 (regOne!31592 r!7292))) b!5555643))

(assert (= (and b!5554977 (is-Union!15540 (regOne!31592 r!7292))) b!5555644))

(declare-fun b!5555648 () Bool)

(declare-fun e!3431139 () Bool)

(declare-fun tp!1532709 () Bool)

(declare-fun tp!1532711 () Bool)

(assert (=> b!5555648 (= e!3431139 (and tp!1532709 tp!1532711))))

(declare-fun b!5555646 () Bool)

(declare-fun tp!1532707 () Bool)

(declare-fun tp!1532708 () Bool)

(assert (=> b!5555646 (= e!3431139 (and tp!1532707 tp!1532708))))

(assert (=> b!5554977 (= tp!1532640 e!3431139)))

(declare-fun b!5555645 () Bool)

(assert (=> b!5555645 (= e!3431139 tp_is_empty!40333)))

(declare-fun b!5555647 () Bool)

(declare-fun tp!1532710 () Bool)

(assert (=> b!5555647 (= e!3431139 tp!1532710)))

(assert (= (and b!5554977 (is-ElementMatch!15540 (regTwo!31592 r!7292))) b!5555645))

(assert (= (and b!5554977 (is-Concat!24385 (regTwo!31592 r!7292))) b!5555646))

(assert (= (and b!5554977 (is-Star!15540 (regTwo!31592 r!7292))) b!5555647))

(assert (= (and b!5554977 (is-Union!15540 (regTwo!31592 r!7292))) b!5555648))

(declare-fun b!5555656 () Bool)

(declare-fun e!3431145 () Bool)

(declare-fun tp!1532716 () Bool)

(assert (=> b!5555656 (= e!3431145 tp!1532716)))

(declare-fun e!3431144 () Bool)

(declare-fun tp!1532717 () Bool)

(declare-fun b!5555655 () Bool)

(assert (=> b!5555655 (= e!3431144 (and (inv!82098 (h!69244 (t!376185 zl!343))) e!3431145 tp!1532717))))

(assert (=> b!5554967 (= tp!1532639 e!3431144)))

(assert (= b!5555655 b!5555656))

(assert (= (and b!5554967 (is-Cons!62796 (t!376185 zl!343))) b!5555655))

(declare-fun m!6547834 () Bool)

(assert (=> b!5555655 m!6547834))

(declare-fun b!5555661 () Bool)

(declare-fun e!3431148 () Bool)

(declare-fun tp!1532720 () Bool)

(assert (=> b!5555661 (= e!3431148 (and tp_is_empty!40333 tp!1532720))))

(assert (=> b!5554968 (= tp!1532636 e!3431148)))

(assert (= (and b!5554968 (is-Cons!62797 (t!376186 s!2326))) b!5555661))

(declare-fun condSetEmpty!36972 () Bool)

(assert (=> setNonEmpty!36966 (= condSetEmpty!36972 (= setRest!36966 (as set.empty (Set Context!9848))))))

(declare-fun setRes!36972 () Bool)

(assert (=> setNonEmpty!36966 (= tp!1532638 setRes!36972)))

(declare-fun setIsEmpty!36972 () Bool)

(assert (=> setIsEmpty!36972 setRes!36972))

(declare-fun tp!1532725 () Bool)

(declare-fun e!3431153 () Bool)

(declare-fun setElem!36972 () Context!9848)

(declare-fun setNonEmpty!36972 () Bool)

(assert (=> setNonEmpty!36972 (= setRes!36972 (and tp!1532725 (inv!82098 setElem!36972) e!3431153))))

(declare-fun setRest!36972 () (Set Context!9848))

(assert (=> setNonEmpty!36972 (= setRest!36966 (set.union (set.insert setElem!36972 (as set.empty (Set Context!9848))) setRest!36972))))

(declare-fun b!5555670 () Bool)

(declare-fun tp!1532726 () Bool)

(assert (=> b!5555670 (= e!3431153 tp!1532726)))

(assert (= (and setNonEmpty!36966 condSetEmpty!36972) setIsEmpty!36972))

(assert (= (and setNonEmpty!36966 (not condSetEmpty!36972)) setNonEmpty!36972))

(assert (= setNonEmpty!36972 b!5555670))

(declare-fun m!6547836 () Bool)

(assert (=> setNonEmpty!36972 m!6547836))

(declare-fun b!5555674 () Bool)

(declare-fun e!3431154 () Bool)

(declare-fun tp!1532729 () Bool)

(declare-fun tp!1532731 () Bool)

(assert (=> b!5555674 (= e!3431154 (and tp!1532729 tp!1532731))))

(declare-fun b!5555672 () Bool)

(declare-fun tp!1532727 () Bool)

(declare-fun tp!1532728 () Bool)

(assert (=> b!5555672 (= e!3431154 (and tp!1532727 tp!1532728))))

(assert (=> b!5554978 (= tp!1532644 e!3431154)))

(declare-fun b!5555671 () Bool)

(assert (=> b!5555671 (= e!3431154 tp_is_empty!40333)))

(declare-fun b!5555673 () Bool)

(declare-fun tp!1532730 () Bool)

(assert (=> b!5555673 (= e!3431154 tp!1532730)))

(assert (= (and b!5554978 (is-ElementMatch!15540 (reg!15869 r!7292))) b!5555671))

(assert (= (and b!5554978 (is-Concat!24385 (reg!15869 r!7292))) b!5555672))

(assert (= (and b!5554978 (is-Star!15540 (reg!15869 r!7292))) b!5555673))

(assert (= (and b!5554978 (is-Union!15540 (reg!15869 r!7292))) b!5555674))

(declare-fun b!5555675 () Bool)

(declare-fun e!3431155 () Bool)

(declare-fun tp!1532732 () Bool)

(declare-fun tp!1532733 () Bool)

(assert (=> b!5555675 (= e!3431155 (and tp!1532732 tp!1532733))))

(assert (=> b!5554964 (= tp!1532641 e!3431155)))

(assert (= (and b!5554964 (is-Cons!62795 (exprs!5424 (h!69244 zl!343)))) b!5555675))

(declare-fun b_lambda!210975 () Bool)

(assert (= b_lambda!210973 (or b!5554973 b_lambda!210975)))

(declare-fun bs!1286698 () Bool)

(declare-fun d!1758508 () Bool)

(assert (= bs!1286698 (and d!1758508 b!5554973)))

(assert (=> bs!1286698 (= (dynLambda!24560 lambda!298046 (h!69244 zl!343)) (derivationStepZipperUp!808 (h!69244 zl!343) (h!69245 s!2326)))))

(assert (=> bs!1286698 m!6547452))

(assert (=> d!1758468 d!1758508))

(push 1)

(assert (not b!5555656))

(assert (not b!5555639))

(assert (not d!1758476))

(assert (not d!1758444))

(assert (not b!5555092))

(assert (not b!5555674))

(assert (not b!5555648))

(assert (not d!1758468))

(assert (not b!5555535))

(assert (not d!1758436))

(assert (not d!1758492))

(assert (not b!5555557))

(assert (not b!5555655))

(assert (not b!5555640))

(assert (not bm!414204))

(assert (not d!1758486))

(assert (not b!5555256))

(assert (not b!5555097))

(assert (not b!5555094))

(assert (not b!5555251))

(assert (not b!5555101))

(assert (not bm!414196))

(assert (not d!1758410))

(assert (not b!5555537))

(assert (not b!5555634))

(assert (not bm!414194))

(assert (not b!5555646))

(assert (not b!5555345))

(assert (not b!5555644))

(assert (not d!1758458))

(assert (not bs!1286698))

(assert (not d!1758440))

(assert (not b!5555536))

(assert (not d!1758500))

(assert (not b!5555343))

(assert (not b!5555541))

(assert (not b!5555259))

(assert (not b!5555578))

(assert (not bm!414178))

(assert (not b!5555071))

(assert (not b!5555673))

(assert (not bm!414177))

(assert (not b_lambda!210975))

(assert (not b!5555636))

(assert tp_is_empty!40333)

(assert (not b!5555444))

(assert (not b!5555539))

(assert (not b!5555348))

(assert (not b!5555442))

(assert (not setNonEmpty!36972))

(assert (not d!1758464))

(assert (not b!5555447))

(assert (not bm!414135))

(assert (not d!1758414))

(assert (not b!5555261))

(assert (not b!5555672))

(assert (not b!5555093))

(assert (not bm!414205))

(assert (not b!5555449))

(assert (not d!1758450))

(assert (not d!1758462))

(assert (not b!5555647))

(assert (not b!5555670))

(assert (not b!5555612))

(assert (not b!5555675))

(assert (not b!5555162))

(assert (not bm!414162))

(assert (not b!5555347))

(assert (not bm!414179))

(assert (not b!5555167))

(assert (not d!1758472))

(assert (not b!5555544))

(assert (not b!5555096))

(assert (not b!5555454))

(assert (not bm!414134))

(assert (not b!5555350))

(assert (not b!5555540))

(assert (not b!5555095))

(assert (not b!5555257))

(assert (not b!5555643))

(assert (not b!5555642))

(assert (not b!5555497))

(assert (not d!1758412))

(assert (not b!5555253))

(assert (not d!1758504))

(assert (not b!5555344))

(assert (not d!1758454))

(assert (not b!5555452))

(assert (not b!5555635))

(assert (not b!5555638))

(assert (not d!1758452))

(assert (not b!5555661))

(assert (not bm!414192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

