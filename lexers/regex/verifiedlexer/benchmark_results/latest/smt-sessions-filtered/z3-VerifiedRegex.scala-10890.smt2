; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562862 () Bool)

(assert start!562862)

(declare-fun b!5343595 () Bool)

(assert (=> b!5343595 true))

(assert (=> b!5343595 true))

(declare-fun lambda!274162 () Int)

(declare-fun lambda!274161 () Int)

(assert (=> b!5343595 (not (= lambda!274162 lambda!274161))))

(assert (=> b!5343595 true))

(assert (=> b!5343595 true))

(declare-fun b!5343578 () Bool)

(assert (=> b!5343578 true))

(declare-fun bs!1238926 () Bool)

(declare-fun b!5343569 () Bool)

(assert (= bs!1238926 (and b!5343569 b!5343595)))

(declare-datatypes ((C!30324 0))(
  ( (C!30325 (val!24864 Int)) )
))
(declare-datatypes ((Regex!15027 0))(
  ( (ElementMatch!15027 (c!929823 C!30324)) (Concat!23872 (regOne!30566 Regex!15027) (regTwo!30566 Regex!15027)) (EmptyExpr!15027) (Star!15027 (reg!15356 Regex!15027)) (EmptyLang!15027) (Union!15027 (regOne!30567 Regex!15027) (regTwo!30567 Regex!15027)) )
))
(declare-fun r!7292 () Regex!15027)

(declare-fun lambda!274164 () Int)

(declare-fun lt!2178947 () Regex!15027)

(assert (=> bs!1238926 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274164 lambda!274161))))

(assert (=> bs!1238926 (not (= lambda!274164 lambda!274162))))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(declare-fun lambda!274165 () Int)

(assert (=> bs!1238926 (not (= lambda!274165 lambda!274161))))

(assert (=> bs!1238926 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274165 lambda!274162))))

(assert (=> b!5343569 (not (= lambda!274165 lambda!274164))))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(declare-fun lambda!274166 () Int)

(declare-fun lt!2178945 () Regex!15027)

(assert (=> bs!1238926 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274166 lambda!274161))))

(assert (=> bs!1238926 (not (= lambda!274166 lambda!274162))))

(assert (=> b!5343569 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274166 lambda!274164))))

(assert (=> b!5343569 (not (= lambda!274166 lambda!274165))))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(declare-fun lambda!274167 () Int)

(assert (=> b!5343569 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274167 lambda!274165))))

(assert (=> b!5343569 (not (= lambda!274167 lambda!274164))))

(assert (=> bs!1238926 (not (= lambda!274167 lambda!274161))))

(assert (=> bs!1238926 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274167 lambda!274162))))

(assert (=> b!5343569 (not (= lambda!274167 lambda!274166))))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(assert (=> b!5343569 true))

(declare-fun b!5343563 () Bool)

(declare-fun e!3317785 () Bool)

(declare-fun e!3317801 () Bool)

(assert (=> b!5343563 (= e!3317785 e!3317801)))

(declare-fun res!2267067 () Bool)

(assert (=> b!5343563 (=> res!2267067 e!3317801)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61380 0))(
  ( (Nil!61256) (Cons!61256 (h!67704 Regex!15027) (t!374597 List!61380)) )
))
(declare-datatypes ((Context!8822 0))(
  ( (Context!8823 (exprs!4911 List!61380)) )
))
(declare-fun lt!2178955 () (InoxSet Context!8822))

(declare-fun lt!2178953 () (InoxSet Context!8822))

(assert (=> b!5343563 (= res!2267067 (not (= lt!2178955 lt!2178953)))))

(declare-datatypes ((List!61381 0))(
  ( (Nil!61257) (Cons!61257 (h!67705 C!30324) (t!374598 List!61381)) )
))
(declare-fun s!2326 () List!61381)

(declare-fun lt!2178944 () List!61380)

(declare-fun derivationStepZipperDown!475 (Regex!15027 Context!8822 C!30324) (InoxSet Context!8822))

(assert (=> b!5343563 (= lt!2178953 (derivationStepZipperDown!475 (regOne!30566 (regOne!30566 r!7292)) (Context!8823 lt!2178944) (h!67705 s!2326)))))

(declare-datatypes ((List!61382 0))(
  ( (Nil!61258) (Cons!61258 (h!67706 Context!8822) (t!374599 List!61382)) )
))
(declare-fun zl!343 () List!61382)

(assert (=> b!5343563 (= lt!2178944 (Cons!61256 (regTwo!30566 (regOne!30566 r!7292)) (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5343564 () Bool)

(declare-fun e!3317794 () Bool)

(declare-fun e!3317800 () Bool)

(assert (=> b!5343564 (= e!3317794 e!3317800)))

(declare-fun res!2267089 () Bool)

(assert (=> b!5343564 (=> res!2267089 e!3317800)))

(declare-fun lt!2178958 () Regex!15027)

(assert (=> b!5343564 (= res!2267089 (not (= (exprs!4911 (h!67706 zl!343)) (Cons!61256 lt!2178958 (t!374597 (exprs!4911 (h!67706 zl!343)))))))))

(assert (=> b!5343564 (= lt!2178958 (Concat!23872 (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))))))

(declare-fun b!5343565 () Bool)

(declare-fun res!2267078 () Bool)

(declare-fun e!3317788 () Bool)

(assert (=> b!5343565 (=> res!2267078 e!3317788)))

(declare-fun isEmpty!33227 (List!61382) Bool)

(assert (=> b!5343565 (= res!2267078 (not (isEmpty!33227 (t!374599 zl!343))))))

(declare-fun b!5343566 () Bool)

(declare-datatypes ((Unit!153626 0))(
  ( (Unit!153627) )
))
(declare-fun e!3317796 () Unit!153626)

(declare-fun Unit!153628 () Unit!153626)

(assert (=> b!5343566 (= e!3317796 Unit!153628)))

(declare-fun lt!2178954 () Unit!153626)

(declare-fun lt!2178939 () (InoxSet Context!8822))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!264 ((InoxSet Context!8822) (InoxSet Context!8822) List!61381) Unit!153626)

(assert (=> b!5343566 (= lt!2178954 (lemmaZipperConcatMatchesSameAsBothZippers!264 lt!2178955 lt!2178939 (t!374598 s!2326)))))

(declare-fun res!2267079 () Bool)

(declare-fun matchZipper!1271 ((InoxSet Context!8822) List!61381) Bool)

(assert (=> b!5343566 (= res!2267079 (matchZipper!1271 lt!2178955 (t!374598 s!2326)))))

(declare-fun e!3317798 () Bool)

(assert (=> b!5343566 (=> res!2267079 e!3317798)))

(assert (=> b!5343566 (= (matchZipper!1271 ((_ map or) lt!2178955 lt!2178939) (t!374598 s!2326)) e!3317798)))

(declare-fun b!5343567 () Bool)

(declare-fun e!3317795 () Bool)

(declare-fun tp_is_empty!39307 () Bool)

(declare-fun tp!1485460 () Bool)

(assert (=> b!5343567 (= e!3317795 (and tp_is_empty!39307 tp!1485460))))

(declare-fun b!5343568 () Bool)

(declare-fun e!3317789 () Bool)

(declare-fun tp!1485452 () Bool)

(assert (=> b!5343568 (= e!3317789 tp!1485452)))

(declare-fun e!3317792 () Bool)

(declare-fun e!3317799 () Bool)

(assert (=> b!5343569 (= e!3317792 e!3317799)))

(declare-fun res!2267083 () Bool)

(assert (=> b!5343569 (=> res!2267083 e!3317799)))

(declare-fun lt!2178964 () Bool)

(declare-fun lt!2178943 () Bool)

(declare-fun lt!2178935 () Bool)

(assert (=> b!5343569 (= res!2267083 (or (not (= lt!2178964 lt!2178943)) (not (= lt!2178964 lt!2178935))))))

(declare-fun z!1189 () (InoxSet Context!8822))

(assert (=> b!5343569 (= lt!2178964 (matchZipper!1271 z!1189 s!2326))))

(declare-fun Exists!2208 (Int) Bool)

(assert (=> b!5343569 (= (Exists!2208 lambda!274166) (Exists!2208 lambda!274167))))

(declare-fun lt!2178936 () Unit!153626)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!862 (Regex!15027 Regex!15027 List!61381) Unit!153626)

(assert (=> b!5343569 (= lt!2178936 (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326))))

(declare-datatypes ((tuple2!64452 0))(
  ( (tuple2!64453 (_1!35529 List!61381) (_2!35529 List!61381)) )
))
(declare-datatypes ((Option!15138 0))(
  ( (None!15137) (Some!15137 (v!51166 tuple2!64452)) )
))
(declare-fun isDefined!11841 (Option!15138) Bool)

(declare-fun findConcatSeparation!1552 (Regex!15027 Regex!15027 List!61381 List!61381 List!61381) Option!15138)

(assert (=> b!5343569 (= (isDefined!11841 (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 Nil!61257 s!2326 s!2326)) (Exists!2208 lambda!274166))))

(declare-fun lt!2178938 () Unit!153626)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1316 (Regex!15027 Regex!15027 List!61381) Unit!153626)

(assert (=> b!5343569 (= lt!2178938 (lemmaFindConcatSeparationEquivalentToExists!1316 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326))))

(declare-fun generalisedConcat!696 (List!61380) Regex!15027)

(assert (=> b!5343569 (= lt!2178945 (generalisedConcat!696 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun matchR!7212 (Regex!15027 List!61381) Bool)

(declare-fun matchRSpec!2130 (Regex!15027 List!61381) Bool)

(assert (=> b!5343569 (= (matchR!7212 lt!2178947 s!2326) (matchRSpec!2130 lt!2178947 s!2326))))

(declare-fun lt!2178949 () Unit!153626)

(declare-fun mainMatchTheorem!2130 (Regex!15027 List!61381) Unit!153626)

(assert (=> b!5343569 (= lt!2178949 (mainMatchTheorem!2130 lt!2178947 s!2326))))

(assert (=> b!5343569 (= (Exists!2208 lambda!274164) (Exists!2208 lambda!274165))))

(declare-fun lt!2178962 () Unit!153626)

(assert (=> b!5343569 (= lt!2178962 (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326))))

(assert (=> b!5343569 (= (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 Nil!61257 s!2326 s!2326)) (Exists!2208 lambda!274164))))

(declare-fun lt!2178965 () Unit!153626)

(assert (=> b!5343569 (= lt!2178965 (lemmaFindConcatSeparationEquivalentToExists!1316 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326))))

(assert (=> b!5343569 (= lt!2178947 (generalisedConcat!696 lt!2178944))))

(declare-fun lt!2178961 () Regex!15027)

(assert (=> b!5343569 (= lt!2178935 (matchRSpec!2130 lt!2178961 s!2326))))

(declare-fun lt!2178970 () Unit!153626)

(assert (=> b!5343569 (= lt!2178970 (mainMatchTheorem!2130 lt!2178961 s!2326))))

(assert (=> b!5343569 (= lt!2178935 lt!2178943)))

(declare-fun lt!2178957 () (InoxSet Context!8822))

(assert (=> b!5343569 (= lt!2178943 (matchZipper!1271 lt!2178957 s!2326))))

(assert (=> b!5343569 (= lt!2178935 (matchR!7212 lt!2178961 s!2326))))

(declare-fun lt!2178959 () Unit!153626)

(declare-fun lt!2178941 () List!61382)

(declare-fun theoremZipperRegexEquiv!425 ((InoxSet Context!8822) List!61382 Regex!15027 List!61381) Unit!153626)

(assert (=> b!5343569 (= lt!2178959 (theoremZipperRegexEquiv!425 lt!2178957 lt!2178941 lt!2178961 s!2326))))

(declare-fun lt!2178946 () List!61380)

(assert (=> b!5343569 (= lt!2178961 (generalisedConcat!696 lt!2178946))))

(declare-fun b!5343570 () Bool)

(declare-fun res!2267070 () Bool)

(assert (=> b!5343570 (=> res!2267070 e!3317794)))

(declare-fun lt!2178952 () (InoxSet Context!8822))

(declare-fun lt!2178950 () Bool)

(assert (=> b!5343570 (= res!2267070 (not (= lt!2178950 (matchZipper!1271 lt!2178952 (t!374598 s!2326)))))))

(declare-fun b!5343571 () Bool)

(declare-fun tp!1485453 () Bool)

(declare-fun tp!1485458 () Bool)

(assert (=> b!5343571 (= e!3317789 (and tp!1485453 tp!1485458))))

(declare-fun setIsEmpty!34501 () Bool)

(declare-fun setRes!34501 () Bool)

(assert (=> setIsEmpty!34501 setRes!34501))

(declare-fun b!5343572 () Bool)

(declare-fun res!2267074 () Bool)

(assert (=> b!5343572 (=> res!2267074 e!3317788)))

(get-info :version)

(assert (=> b!5343572 (= res!2267074 (not ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5343573 () Bool)

(declare-fun res!2267064 () Bool)

(declare-fun e!3317802 () Bool)

(assert (=> b!5343573 (=> res!2267064 e!3317802)))

(declare-fun isEmpty!33228 (List!61380) Bool)

(assert (=> b!5343573 (= res!2267064 (isEmpty!33228 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5343574 () Bool)

(declare-fun res!2267087 () Bool)

(assert (=> b!5343574 (=> res!2267087 e!3317785)))

(assert (=> b!5343574 (= res!2267087 (not ((_ is Concat!23872) (regOne!30566 r!7292))))))

(declare-fun b!5343575 () Bool)

(declare-fun e!3317786 () Bool)

(assert (=> b!5343575 (= e!3317801 e!3317786)))

(declare-fun res!2267082 () Bool)

(assert (=> b!5343575 (=> res!2267082 e!3317786)))

(assert (=> b!5343575 (= res!2267082 (not (= lt!2178950 (matchZipper!1271 lt!2178953 (t!374598 s!2326)))))))

(assert (=> b!5343575 (= lt!2178950 (matchZipper!1271 lt!2178955 (t!374598 s!2326)))))

(declare-fun b!5343576 () Bool)

(declare-fun res!2267088 () Bool)

(assert (=> b!5343576 (=> res!2267088 e!3317792)))

(declare-fun zipperDepth!136 (List!61382) Int)

(assert (=> b!5343576 (= res!2267088 (> (zipperDepth!136 lt!2178941) (zipperDepth!136 zl!343)))))

(declare-fun b!5343577 () Bool)

(declare-fun res!2267065 () Bool)

(assert (=> b!5343577 (=> res!2267065 e!3317799)))

(declare-fun lt!2178951 () Bool)

(assert (=> b!5343577 (= res!2267065 (not (= lt!2178951 (matchR!7212 (Concat!23872 lt!2178958 (regTwo!30566 r!7292)) s!2326))))))

(declare-fun b!5343579 () Bool)

(declare-fun res!2267073 () Bool)

(assert (=> b!5343579 (=> res!2267073 e!3317799)))

(assert (=> b!5343579 (= res!2267073 (not (= lt!2178951 (matchR!7212 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)) s!2326))))))

(declare-fun b!5343580 () Bool)

(assert (=> b!5343580 (= e!3317789 tp_is_empty!39307)))

(declare-fun b!5343581 () Bool)

(assert (=> b!5343581 (= e!3317800 e!3317792)))

(declare-fun res!2267086 () Bool)

(assert (=> b!5343581 (=> res!2267086 e!3317792)))

(declare-fun zipperDepthTotal!180 (List!61382) Int)

(assert (=> b!5343581 (= res!2267086 (>= (zipperDepthTotal!180 lt!2178941) (zipperDepthTotal!180 zl!343)))))

(declare-fun lt!2178948 () Context!8822)

(assert (=> b!5343581 (= lt!2178941 (Cons!61258 lt!2178948 Nil!61258))))

(declare-fun b!5343582 () Bool)

(declare-fun res!2267076 () Bool)

(assert (=> b!5343582 (=> res!2267076 e!3317788)))

(assert (=> b!5343582 (= res!2267076 (or ((_ is EmptyExpr!15027) r!7292) ((_ is EmptyLang!15027) r!7292) ((_ is ElementMatch!15027) r!7292) ((_ is Union!15027) r!7292) (not ((_ is Concat!23872) r!7292))))))

(declare-fun b!5343583 () Bool)

(declare-fun tp!1485457 () Bool)

(declare-fun tp!1485461 () Bool)

(assert (=> b!5343583 (= e!3317789 (and tp!1485457 tp!1485461))))

(declare-fun b!5343584 () Bool)

(declare-fun res!2267069 () Bool)

(assert (=> b!5343584 (=> res!2267069 e!3317788)))

(assert (=> b!5343584 (= res!2267069 (not (= r!7292 (generalisedConcat!696 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun e!3317790 () Bool)

(declare-fun b!5343585 () Bool)

(declare-fun tp!1485456 () Bool)

(declare-fun e!3317787 () Bool)

(declare-fun inv!80814 (Context!8822) Bool)

(assert (=> b!5343585 (= e!3317790 (and (inv!80814 (h!67706 zl!343)) e!3317787 tp!1485456))))

(declare-fun b!5343586 () Bool)

(declare-fun res!2267068 () Bool)

(assert (=> b!5343586 (=> res!2267068 e!3317800)))

(declare-fun contextDepthTotal!160 (Context!8822) Int)

(assert (=> b!5343586 (= res!2267068 (>= (contextDepthTotal!160 lt!2178948) (contextDepthTotal!160 (h!67706 zl!343))))))

(declare-fun b!5343587 () Bool)

(declare-fun res!2267077 () Bool)

(assert (=> b!5343587 (=> res!2267077 e!3317788)))

(declare-fun generalisedUnion!956 (List!61380) Regex!15027)

(declare-fun unfocusZipperList!469 (List!61382) List!61380)

(assert (=> b!5343587 (= res!2267077 (not (= r!7292 (generalisedUnion!956 (unfocusZipperList!469 zl!343)))))))

(declare-fun b!5343588 () Bool)

(declare-fun Unit!153629 () Unit!153626)

(assert (=> b!5343588 (= e!3317796 Unit!153629)))

(declare-fun b!5343589 () Bool)

(declare-fun e!3317797 () Bool)

(declare-fun tp!1485454 () Bool)

(assert (=> b!5343589 (= e!3317797 tp!1485454)))

(declare-fun b!5343590 () Bool)

(assert (=> b!5343590 (= e!3317798 (matchZipper!1271 lt!2178939 (t!374598 s!2326)))))

(declare-fun b!5343591 () Bool)

(declare-fun res!2267085 () Bool)

(declare-fun e!3317791 () Bool)

(assert (=> b!5343591 (=> (not res!2267085) (not e!3317791))))

(declare-fun toList!8811 ((InoxSet Context!8822)) List!61382)

(assert (=> b!5343591 (= res!2267085 (= (toList!8811 z!1189) zl!343))))

(declare-fun b!5343592 () Bool)

(assert (=> b!5343592 (= e!3317786 e!3317794)))

(declare-fun res!2267071 () Bool)

(assert (=> b!5343592 (=> res!2267071 e!3317794)))

(assert (=> b!5343592 (= res!2267071 (not (= lt!2178952 lt!2178953)))))

(declare-fun lambda!274163 () Int)

(declare-fun flatMap!754 ((InoxSet Context!8822) Int) (InoxSet Context!8822))

(declare-fun derivationStepZipperUp!399 (Context!8822 C!30324) (InoxSet Context!8822))

(assert (=> b!5343592 (= (flatMap!754 lt!2178957 lambda!274163) (derivationStepZipperUp!399 lt!2178948 (h!67705 s!2326)))))

(declare-fun lt!2178940 () Unit!153626)

(declare-fun lemmaFlatMapOnSingletonSet!286 ((InoxSet Context!8822) Context!8822 Int) Unit!153626)

(assert (=> b!5343592 (= lt!2178940 (lemmaFlatMapOnSingletonSet!286 lt!2178957 lt!2178948 lambda!274163))))

(declare-fun lt!2178937 () (InoxSet Context!8822))

(assert (=> b!5343592 (= lt!2178937 (derivationStepZipperUp!399 lt!2178948 (h!67705 s!2326)))))

(declare-fun derivationStepZipper!1268 ((InoxSet Context!8822) C!30324) (InoxSet Context!8822))

(assert (=> b!5343592 (= lt!2178952 (derivationStepZipper!1268 lt!2178957 (h!67705 s!2326)))))

(assert (=> b!5343592 (= lt!2178957 (store ((as const (Array Context!8822 Bool)) false) lt!2178948 true))))

(assert (=> b!5343592 (= lt!2178948 (Context!8823 lt!2178946))))

(assert (=> b!5343592 (= lt!2178946 (Cons!61256 (regOne!30566 (regOne!30566 r!7292)) lt!2178944))))

(declare-fun b!5343593 () Bool)

(declare-fun tp!1485459 () Bool)

(assert (=> b!5343593 (= e!3317787 tp!1485459)))

(declare-fun b!5343594 () Bool)

(declare-fun res!2267084 () Bool)

(assert (=> b!5343594 (=> res!2267084 e!3317785)))

(declare-fun e!3317793 () Bool)

(assert (=> b!5343594 (= res!2267084 e!3317793)))

(declare-fun res!2267075 () Bool)

(assert (=> b!5343594 (=> (not res!2267075) (not e!3317793))))

(assert (=> b!5343594 (= res!2267075 ((_ is Concat!23872) (regOne!30566 r!7292)))))

(assert (=> b!5343595 (= e!3317788 e!3317802)))

(declare-fun res!2267081 () Bool)

(assert (=> b!5343595 (=> res!2267081 e!3317802)))

(declare-fun lt!2178966 () Bool)

(assert (=> b!5343595 (= res!2267081 (or (not (= lt!2178951 lt!2178966)) ((_ is Nil!61257) s!2326)))))

(assert (=> b!5343595 (= (Exists!2208 lambda!274161) (Exists!2208 lambda!274162))))

(declare-fun lt!2178967 () Unit!153626)

(assert (=> b!5343595 (= lt!2178967 (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326))))

(assert (=> b!5343595 (= lt!2178966 (Exists!2208 lambda!274161))))

(assert (=> b!5343595 (= lt!2178966 (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) Nil!61257 s!2326 s!2326)))))

(declare-fun lt!2178963 () Unit!153626)

(assert (=> b!5343595 (= lt!2178963 (lemmaFindConcatSeparationEquivalentToExists!1316 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326))))

(declare-fun b!5343596 () Bool)

(declare-fun res!2267066 () Bool)

(assert (=> b!5343596 (=> (not res!2267066) (not e!3317791))))

(declare-fun unfocusZipper!769 (List!61382) Regex!15027)

(assert (=> b!5343596 (= res!2267066 (= r!7292 (unfocusZipper!769 zl!343)))))

(declare-fun b!5343597 () Bool)

(assert (=> b!5343597 (= e!3317791 (not e!3317788))))

(declare-fun res!2267080 () Bool)

(assert (=> b!5343597 (=> res!2267080 e!3317788)))

(assert (=> b!5343597 (= res!2267080 (not ((_ is Cons!61258) zl!343)))))

(assert (=> b!5343597 (= lt!2178951 (matchRSpec!2130 r!7292 s!2326))))

(assert (=> b!5343597 (= lt!2178951 (matchR!7212 r!7292 s!2326))))

(declare-fun lt!2178968 () Unit!153626)

(assert (=> b!5343597 (= lt!2178968 (mainMatchTheorem!2130 r!7292 s!2326))))

(assert (=> b!5343578 (= e!3317802 e!3317785)))

(declare-fun res!2267063 () Bool)

(assert (=> b!5343578 (=> res!2267063 e!3317785)))

(assert (=> b!5343578 (= res!2267063 (or (and ((_ is ElementMatch!15027) (regOne!30566 r!7292)) (= (c!929823 (regOne!30566 r!7292)) (h!67705 s!2326))) ((_ is Union!15027) (regOne!30566 r!7292))))))

(declare-fun lt!2178960 () Unit!153626)

(assert (=> b!5343578 (= lt!2178960 e!3317796)))

(declare-fun c!929822 () Bool)

(declare-fun nullable!5196 (Regex!15027) Bool)

(assert (=> b!5343578 (= c!929822 (nullable!5196 (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(assert (=> b!5343578 (= (flatMap!754 z!1189 lambda!274163) (derivationStepZipperUp!399 (h!67706 zl!343) (h!67705 s!2326)))))

(declare-fun lt!2178969 () Unit!153626)

(assert (=> b!5343578 (= lt!2178969 (lemmaFlatMapOnSingletonSet!286 z!1189 (h!67706 zl!343) lambda!274163))))

(declare-fun lt!2178942 () Context!8822)

(assert (=> b!5343578 (= lt!2178939 (derivationStepZipperUp!399 lt!2178942 (h!67705 s!2326)))))

(assert (=> b!5343578 (= lt!2178955 (derivationStepZipperDown!475 (h!67704 (exprs!4911 (h!67706 zl!343))) lt!2178942 (h!67705 s!2326)))))

(assert (=> b!5343578 (= lt!2178942 (Context!8823 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun lt!2178956 () (InoxSet Context!8822))

(assert (=> b!5343578 (= lt!2178956 (derivationStepZipperUp!399 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343))))) (h!67705 s!2326)))))

(declare-fun res!2267072 () Bool)

(assert (=> start!562862 (=> (not res!2267072) (not e!3317791))))

(declare-fun validRegex!6763 (Regex!15027) Bool)

(assert (=> start!562862 (= res!2267072 (validRegex!6763 r!7292))))

(assert (=> start!562862 e!3317791))

(assert (=> start!562862 e!3317789))

(declare-fun condSetEmpty!34501 () Bool)

(assert (=> start!562862 (= condSetEmpty!34501 (= z!1189 ((as const (Array Context!8822 Bool)) false)))))

(assert (=> start!562862 setRes!34501))

(assert (=> start!562862 e!3317790))

(assert (=> start!562862 e!3317795))

(declare-fun b!5343598 () Bool)

(assert (=> b!5343598 (= e!3317793 (nullable!5196 (regOne!30566 (regOne!30566 r!7292))))))

(declare-fun setElem!34501 () Context!8822)

(declare-fun tp!1485455 () Bool)

(declare-fun setNonEmpty!34501 () Bool)

(assert (=> setNonEmpty!34501 (= setRes!34501 (and tp!1485455 (inv!80814 setElem!34501) e!3317797))))

(declare-fun setRest!34501 () (InoxSet Context!8822))

(assert (=> setNonEmpty!34501 (= z!1189 ((_ map or) (store ((as const (Array Context!8822 Bool)) false) setElem!34501 true) setRest!34501))))

(declare-fun b!5343599 () Bool)

(assert (=> b!5343599 (= e!3317799 (validRegex!6763 (Concat!23872 lt!2178958 lt!2178945)))))

(assert (= (and start!562862 res!2267072) b!5343591))

(assert (= (and b!5343591 res!2267085) b!5343596))

(assert (= (and b!5343596 res!2267066) b!5343597))

(assert (= (and b!5343597 (not res!2267080)) b!5343565))

(assert (= (and b!5343565 (not res!2267078)) b!5343584))

(assert (= (and b!5343584 (not res!2267069)) b!5343572))

(assert (= (and b!5343572 (not res!2267074)) b!5343587))

(assert (= (and b!5343587 (not res!2267077)) b!5343582))

(assert (= (and b!5343582 (not res!2267076)) b!5343595))

(assert (= (and b!5343595 (not res!2267081)) b!5343573))

(assert (= (and b!5343573 (not res!2267064)) b!5343578))

(assert (= (and b!5343578 c!929822) b!5343566))

(assert (= (and b!5343578 (not c!929822)) b!5343588))

(assert (= (and b!5343566 (not res!2267079)) b!5343590))

(assert (= (and b!5343578 (not res!2267063)) b!5343594))

(assert (= (and b!5343594 res!2267075) b!5343598))

(assert (= (and b!5343594 (not res!2267084)) b!5343574))

(assert (= (and b!5343574 (not res!2267087)) b!5343563))

(assert (= (and b!5343563 (not res!2267067)) b!5343575))

(assert (= (and b!5343575 (not res!2267082)) b!5343592))

(assert (= (and b!5343592 (not res!2267071)) b!5343570))

(assert (= (and b!5343570 (not res!2267070)) b!5343564))

(assert (= (and b!5343564 (not res!2267089)) b!5343586))

(assert (= (and b!5343586 (not res!2267068)) b!5343581))

(assert (= (and b!5343581 (not res!2267086)) b!5343576))

(assert (= (and b!5343576 (not res!2267088)) b!5343569))

(assert (= (and b!5343569 (not res!2267083)) b!5343579))

(assert (= (and b!5343579 (not res!2267073)) b!5343577))

(assert (= (and b!5343577 (not res!2267065)) b!5343599))

(assert (= (and start!562862 ((_ is ElementMatch!15027) r!7292)) b!5343580))

(assert (= (and start!562862 ((_ is Concat!23872) r!7292)) b!5343571))

(assert (= (and start!562862 ((_ is Star!15027) r!7292)) b!5343568))

(assert (= (and start!562862 ((_ is Union!15027) r!7292)) b!5343583))

(assert (= (and start!562862 condSetEmpty!34501) setIsEmpty!34501))

(assert (= (and start!562862 (not condSetEmpty!34501)) setNonEmpty!34501))

(assert (= setNonEmpty!34501 b!5343589))

(assert (= b!5343585 b!5343593))

(assert (= (and start!562862 ((_ is Cons!61258) zl!343)) b!5343585))

(assert (= (and start!562862 ((_ is Cons!61257) s!2326)) b!5343567))

(declare-fun m!6375588 () Bool)

(assert (=> start!562862 m!6375588))

(declare-fun m!6375590 () Bool)

(assert (=> b!5343581 m!6375590))

(declare-fun m!6375592 () Bool)

(assert (=> b!5343581 m!6375592))

(declare-fun m!6375594 () Bool)

(assert (=> b!5343597 m!6375594))

(declare-fun m!6375596 () Bool)

(assert (=> b!5343597 m!6375596))

(declare-fun m!6375598 () Bool)

(assert (=> b!5343597 m!6375598))

(declare-fun m!6375600 () Bool)

(assert (=> b!5343590 m!6375600))

(declare-fun m!6375602 () Bool)

(assert (=> b!5343569 m!6375602))

(declare-fun m!6375604 () Bool)

(assert (=> b!5343569 m!6375604))

(declare-fun m!6375606 () Bool)

(assert (=> b!5343569 m!6375606))

(declare-fun m!6375608 () Bool)

(assert (=> b!5343569 m!6375608))

(declare-fun m!6375610 () Bool)

(assert (=> b!5343569 m!6375610))

(assert (=> b!5343569 m!6375604))

(declare-fun m!6375612 () Bool)

(assert (=> b!5343569 m!6375612))

(declare-fun m!6375614 () Bool)

(assert (=> b!5343569 m!6375614))

(declare-fun m!6375616 () Bool)

(assert (=> b!5343569 m!6375616))

(declare-fun m!6375618 () Bool)

(assert (=> b!5343569 m!6375618))

(declare-fun m!6375620 () Bool)

(assert (=> b!5343569 m!6375620))

(declare-fun m!6375622 () Bool)

(assert (=> b!5343569 m!6375622))

(declare-fun m!6375624 () Bool)

(assert (=> b!5343569 m!6375624))

(declare-fun m!6375626 () Bool)

(assert (=> b!5343569 m!6375626))

(declare-fun m!6375628 () Bool)

(assert (=> b!5343569 m!6375628))

(assert (=> b!5343569 m!6375616))

(declare-fun m!6375630 () Bool)

(assert (=> b!5343569 m!6375630))

(declare-fun m!6375632 () Bool)

(assert (=> b!5343569 m!6375632))

(declare-fun m!6375634 () Bool)

(assert (=> b!5343569 m!6375634))

(declare-fun m!6375636 () Bool)

(assert (=> b!5343569 m!6375636))

(assert (=> b!5343569 m!6375628))

(declare-fun m!6375638 () Bool)

(assert (=> b!5343569 m!6375638))

(declare-fun m!6375640 () Bool)

(assert (=> b!5343569 m!6375640))

(declare-fun m!6375642 () Bool)

(assert (=> b!5343569 m!6375642))

(declare-fun m!6375644 () Bool)

(assert (=> b!5343569 m!6375644))

(assert (=> b!5343569 m!6375634))

(declare-fun m!6375646 () Bool)

(assert (=> b!5343569 m!6375646))

(declare-fun m!6375648 () Bool)

(assert (=> b!5343569 m!6375648))

(declare-fun m!6375650 () Bool)

(assert (=> b!5343592 m!6375650))

(declare-fun m!6375652 () Bool)

(assert (=> b!5343592 m!6375652))

(declare-fun m!6375654 () Bool)

(assert (=> b!5343592 m!6375654))

(declare-fun m!6375656 () Bool)

(assert (=> b!5343592 m!6375656))

(declare-fun m!6375658 () Bool)

(assert (=> b!5343592 m!6375658))

(declare-fun m!6375660 () Bool)

(assert (=> b!5343573 m!6375660))

(declare-fun m!6375662 () Bool)

(assert (=> b!5343595 m!6375662))

(declare-fun m!6375664 () Bool)

(assert (=> b!5343595 m!6375664))

(declare-fun m!6375666 () Bool)

(assert (=> b!5343595 m!6375666))

(declare-fun m!6375668 () Bool)

(assert (=> b!5343595 m!6375668))

(declare-fun m!6375670 () Bool)

(assert (=> b!5343595 m!6375670))

(assert (=> b!5343595 m!6375670))

(assert (=> b!5343595 m!6375662))

(declare-fun m!6375672 () Bool)

(assert (=> b!5343595 m!6375672))

(declare-fun m!6375674 () Bool)

(assert (=> b!5343577 m!6375674))

(declare-fun m!6375676 () Bool)

(assert (=> b!5343563 m!6375676))

(declare-fun m!6375678 () Bool)

(assert (=> b!5343578 m!6375678))

(declare-fun m!6375680 () Bool)

(assert (=> b!5343578 m!6375680))

(declare-fun m!6375682 () Bool)

(assert (=> b!5343578 m!6375682))

(declare-fun m!6375684 () Bool)

(assert (=> b!5343578 m!6375684))

(declare-fun m!6375686 () Bool)

(assert (=> b!5343578 m!6375686))

(declare-fun m!6375688 () Bool)

(assert (=> b!5343578 m!6375688))

(declare-fun m!6375690 () Bool)

(assert (=> b!5343578 m!6375690))

(declare-fun m!6375692 () Bool)

(assert (=> b!5343565 m!6375692))

(declare-fun m!6375694 () Bool)

(assert (=> b!5343576 m!6375694))

(declare-fun m!6375696 () Bool)

(assert (=> b!5343576 m!6375696))

(declare-fun m!6375698 () Bool)

(assert (=> setNonEmpty!34501 m!6375698))

(declare-fun m!6375700 () Bool)

(assert (=> b!5343587 m!6375700))

(assert (=> b!5343587 m!6375700))

(declare-fun m!6375702 () Bool)

(assert (=> b!5343587 m!6375702))

(declare-fun m!6375704 () Bool)

(assert (=> b!5343579 m!6375704))

(declare-fun m!6375706 () Bool)

(assert (=> b!5343586 m!6375706))

(declare-fun m!6375708 () Bool)

(assert (=> b!5343586 m!6375708))

(declare-fun m!6375710 () Bool)

(assert (=> b!5343599 m!6375710))

(declare-fun m!6375712 () Bool)

(assert (=> b!5343585 m!6375712))

(declare-fun m!6375714 () Bool)

(assert (=> b!5343575 m!6375714))

(declare-fun m!6375716 () Bool)

(assert (=> b!5343575 m!6375716))

(declare-fun m!6375718 () Bool)

(assert (=> b!5343566 m!6375718))

(assert (=> b!5343566 m!6375716))

(declare-fun m!6375720 () Bool)

(assert (=> b!5343566 m!6375720))

(declare-fun m!6375722 () Bool)

(assert (=> b!5343584 m!6375722))

(declare-fun m!6375724 () Bool)

(assert (=> b!5343598 m!6375724))

(declare-fun m!6375726 () Bool)

(assert (=> b!5343570 m!6375726))

(declare-fun m!6375728 () Bool)

(assert (=> b!5343596 m!6375728))

(declare-fun m!6375730 () Bool)

(assert (=> b!5343591 m!6375730))

(check-sat (not b!5343583) (not b!5343593) (not b!5343585) (not b!5343578) (not b!5343570) (not b!5343579) (not b!5343589) (not b!5343587) (not b!5343598) (not b!5343599) (not b!5343590) (not b!5343575) (not b!5343595) (not b!5343581) (not b!5343563) (not b!5343565) (not b!5343569) (not b!5343571) tp_is_empty!39307 (not b!5343573) (not b!5343577) (not b!5343566) (not start!562862) (not b!5343576) (not b!5343592) (not setNonEmpty!34501) (not b!5343586) (not b!5343596) (not b!5343568) (not b!5343584) (not b!5343567) (not b!5343597) (not b!5343591))
(check-sat)
(get-model)

(declare-fun d!1714231 () Bool)

(declare-fun choose!40061 (Int) Bool)

(assert (=> d!1714231 (= (Exists!2208 lambda!274162) (choose!40061 lambda!274162))))

(declare-fun bs!1238947 () Bool)

(assert (= bs!1238947 d!1714231))

(declare-fun m!6375800 () Bool)

(assert (=> bs!1238947 m!6375800))

(assert (=> b!5343595 d!1714231))

(declare-fun b!5343887 () Bool)

(declare-fun e!3317969 () Option!15138)

(assert (=> b!5343887 (= e!3317969 None!15137)))

(declare-fun b!5343888 () Bool)

(declare-fun e!3317968 () Bool)

(assert (=> b!5343888 (= e!3317968 (matchR!7212 (regTwo!30566 r!7292) s!2326))))

(declare-fun b!5343889 () Bool)

(declare-fun e!3317964 () Bool)

(declare-fun lt!2179016 () Option!15138)

(declare-fun ++!13350 (List!61381 List!61381) List!61381)

(declare-fun get!21069 (Option!15138) tuple2!64452)

(assert (=> b!5343889 (= e!3317964 (= (++!13350 (_1!35529 (get!21069 lt!2179016)) (_2!35529 (get!21069 lt!2179016))) s!2326))))

(declare-fun d!1714233 () Bool)

(declare-fun e!3317965 () Bool)

(assert (=> d!1714233 e!3317965))

(declare-fun res!2267218 () Bool)

(assert (=> d!1714233 (=> res!2267218 e!3317965)))

(assert (=> d!1714233 (= res!2267218 e!3317964)))

(declare-fun res!2267215 () Bool)

(assert (=> d!1714233 (=> (not res!2267215) (not e!3317964))))

(assert (=> d!1714233 (= res!2267215 (isDefined!11841 lt!2179016))))

(declare-fun e!3317970 () Option!15138)

(assert (=> d!1714233 (= lt!2179016 e!3317970)))

(declare-fun c!929901 () Bool)

(assert (=> d!1714233 (= c!929901 e!3317968)))

(declare-fun res!2267219 () Bool)

(assert (=> d!1714233 (=> (not res!2267219) (not e!3317968))))

(assert (=> d!1714233 (= res!2267219 (matchR!7212 (regOne!30566 r!7292) Nil!61257))))

(assert (=> d!1714233 (validRegex!6763 (regOne!30566 r!7292))))

(assert (=> d!1714233 (= (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) Nil!61257 s!2326 s!2326) lt!2179016)))

(declare-fun b!5343890 () Bool)

(assert (=> b!5343890 (= e!3317970 (Some!15137 (tuple2!64453 Nil!61257 s!2326)))))

(declare-fun b!5343891 () Bool)

(assert (=> b!5343891 (= e!3317965 (not (isDefined!11841 lt!2179016)))))

(declare-fun b!5343892 () Bool)

(assert (=> b!5343892 (= e!3317970 e!3317969)))

(declare-fun c!929900 () Bool)

(assert (=> b!5343892 (= c!929900 ((_ is Nil!61257) s!2326))))

(declare-fun b!5343893 () Bool)

(declare-fun res!2267216 () Bool)

(assert (=> b!5343893 (=> (not res!2267216) (not e!3317964))))

(assert (=> b!5343893 (= res!2267216 (matchR!7212 (regTwo!30566 r!7292) (_2!35529 (get!21069 lt!2179016))))))

(declare-fun b!5343894 () Bool)

(declare-fun res!2267217 () Bool)

(assert (=> b!5343894 (=> (not res!2267217) (not e!3317964))))

(assert (=> b!5343894 (= res!2267217 (matchR!7212 (regOne!30566 r!7292) (_1!35529 (get!21069 lt!2179016))))))

(declare-fun b!5343895 () Bool)

(declare-fun lt!2179014 () Unit!153626)

(declare-fun lt!2179015 () Unit!153626)

(assert (=> b!5343895 (= lt!2179014 lt!2179015)))

(assert (=> b!5343895 (= (++!13350 (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1765 (List!61381 C!30324 List!61381 List!61381) Unit!153626)

(assert (=> b!5343895 (= lt!2179015 (lemmaMoveElementToOtherListKeepsConcatEq!1765 Nil!61257 (h!67705 s!2326) (t!374598 s!2326) s!2326))))

(assert (=> b!5343895 (= e!3317969 (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326) s!2326))))

(assert (= (and d!1714233 res!2267219) b!5343888))

(assert (= (and d!1714233 c!929901) b!5343890))

(assert (= (and d!1714233 (not c!929901)) b!5343892))

(assert (= (and b!5343892 c!929900) b!5343887))

(assert (= (and b!5343892 (not c!929900)) b!5343895))

(assert (= (and d!1714233 res!2267215) b!5343894))

(assert (= (and b!5343894 res!2267217) b!5343893))

(assert (= (and b!5343893 res!2267216) b!5343889))

(assert (= (and d!1714233 (not res!2267218)) b!5343891))

(declare-fun m!6375944 () Bool)

(assert (=> b!5343895 m!6375944))

(assert (=> b!5343895 m!6375944))

(declare-fun m!6375952 () Bool)

(assert (=> b!5343895 m!6375952))

(declare-fun m!6375954 () Bool)

(assert (=> b!5343895 m!6375954))

(assert (=> b!5343895 m!6375944))

(declare-fun m!6375956 () Bool)

(assert (=> b!5343895 m!6375956))

(declare-fun m!6375958 () Bool)

(assert (=> d!1714233 m!6375958))

(declare-fun m!6375962 () Bool)

(assert (=> d!1714233 m!6375962))

(declare-fun m!6375968 () Bool)

(assert (=> d!1714233 m!6375968))

(declare-fun m!6375970 () Bool)

(assert (=> b!5343889 m!6375970))

(declare-fun m!6375972 () Bool)

(assert (=> b!5343889 m!6375972))

(assert (=> b!5343893 m!6375970))

(declare-fun m!6375974 () Bool)

(assert (=> b!5343893 m!6375974))

(assert (=> b!5343891 m!6375958))

(declare-fun m!6375976 () Bool)

(assert (=> b!5343888 m!6375976))

(assert (=> b!5343894 m!6375970))

(declare-fun m!6375978 () Bool)

(assert (=> b!5343894 m!6375978))

(assert (=> b!5343595 d!1714233))

(declare-fun d!1714275 () Bool)

(assert (=> d!1714275 (= (Exists!2208 lambda!274161) (choose!40061 lambda!274161))))

(declare-fun bs!1238993 () Bool)

(assert (= bs!1238993 d!1714275))

(declare-fun m!6375980 () Bool)

(assert (=> bs!1238993 m!6375980))

(assert (=> b!5343595 d!1714275))

(declare-fun bs!1238995 () Bool)

(declare-fun d!1714277 () Bool)

(assert (= bs!1238995 (and d!1714277 b!5343569)))

(declare-fun lambda!274196 () Int)

(assert (=> bs!1238995 (not (= lambda!274196 lambda!274165))))

(assert (=> bs!1238995 (not (= lambda!274196 lambda!274167))))

(assert (=> bs!1238995 (= (and (= (regOne!30566 r!7292) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178947)) (= lambda!274196 lambda!274164))))

(declare-fun bs!1238996 () Bool)

(assert (= bs!1238996 (and d!1714277 b!5343595)))

(assert (=> bs!1238996 (= lambda!274196 lambda!274161)))

(assert (=> bs!1238996 (not (= lambda!274196 lambda!274162))))

(assert (=> bs!1238995 (= (and (= (regOne!30566 r!7292) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178945)) (= lambda!274196 lambda!274166))))

(assert (=> d!1714277 true))

(assert (=> d!1714277 true))

(assert (=> d!1714277 true))

(assert (=> d!1714277 (= (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) Nil!61257 s!2326 s!2326)) (Exists!2208 lambda!274196))))

(declare-fun lt!2179022 () Unit!153626)

(declare-fun choose!40062 (Regex!15027 Regex!15027 List!61381) Unit!153626)

(assert (=> d!1714277 (= lt!2179022 (choose!40062 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326))))

(assert (=> d!1714277 (validRegex!6763 (regOne!30566 r!7292))))

(assert (=> d!1714277 (= (lemmaFindConcatSeparationEquivalentToExists!1316 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326) lt!2179022)))

(declare-fun bs!1238997 () Bool)

(assert (= bs!1238997 d!1714277))

(declare-fun m!6376008 () Bool)

(assert (=> bs!1238997 m!6376008))

(assert (=> bs!1238997 m!6375662))

(assert (=> bs!1238997 m!6375664))

(assert (=> bs!1238997 m!6375968))

(assert (=> bs!1238997 m!6375662))

(declare-fun m!6376010 () Bool)

(assert (=> bs!1238997 m!6376010))

(assert (=> b!5343595 d!1714277))

(declare-fun bs!1239028 () Bool)

(declare-fun d!1714287 () Bool)

(assert (= bs!1239028 (and d!1714287 b!5343569)))

(declare-fun lambda!274216 () Int)

(assert (=> bs!1239028 (not (= lambda!274216 lambda!274165))))

(assert (=> bs!1239028 (not (= lambda!274216 lambda!274167))))

(assert (=> bs!1239028 (= (and (= (regOne!30566 r!7292) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178947)) (= lambda!274216 lambda!274164))))

(declare-fun bs!1239030 () Bool)

(assert (= bs!1239030 (and d!1714287 b!5343595)))

(assert (=> bs!1239030 (= lambda!274216 lambda!274161)))

(declare-fun bs!1239031 () Bool)

(assert (= bs!1239031 (and d!1714287 d!1714277)))

(assert (=> bs!1239031 (= lambda!274216 lambda!274196)))

(assert (=> bs!1239030 (not (= lambda!274216 lambda!274162))))

(assert (=> bs!1239028 (= (and (= (regOne!30566 r!7292) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178945)) (= lambda!274216 lambda!274166))))

(assert (=> d!1714287 true))

(assert (=> d!1714287 true))

(assert (=> d!1714287 true))

(declare-fun lambda!274217 () Int)

(assert (=> bs!1239028 (= (and (= (regOne!30566 r!7292) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178947)) (= lambda!274217 lambda!274165))))

(declare-fun bs!1239033 () Bool)

(assert (= bs!1239033 d!1714287))

(assert (=> bs!1239033 (not (= lambda!274217 lambda!274216))))

(assert (=> bs!1239028 (= (and (= (regOne!30566 r!7292) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178945)) (= lambda!274217 lambda!274167))))

(assert (=> bs!1239028 (not (= lambda!274217 lambda!274164))))

(assert (=> bs!1239030 (not (= lambda!274217 lambda!274161))))

(assert (=> bs!1239031 (not (= lambda!274217 lambda!274196))))

(assert (=> bs!1239030 (= lambda!274217 lambda!274162)))

(assert (=> bs!1239028 (not (= lambda!274217 lambda!274166))))

(assert (=> d!1714287 true))

(assert (=> d!1714287 true))

(assert (=> d!1714287 true))

(assert (=> d!1714287 (= (Exists!2208 lambda!274216) (Exists!2208 lambda!274217))))

(declare-fun lt!2179046 () Unit!153626)

(declare-fun choose!40063 (Regex!15027 Regex!15027 List!61381) Unit!153626)

(assert (=> d!1714287 (= lt!2179046 (choose!40063 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326))))

(assert (=> d!1714287 (validRegex!6763 (regOne!30566 r!7292))))

(assert (=> d!1714287 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regOne!30566 r!7292) (regTwo!30566 r!7292) s!2326) lt!2179046)))

(declare-fun m!6376070 () Bool)

(assert (=> bs!1239033 m!6376070))

(declare-fun m!6376072 () Bool)

(assert (=> bs!1239033 m!6376072))

(declare-fun m!6376074 () Bool)

(assert (=> bs!1239033 m!6376074))

(assert (=> bs!1239033 m!6375968))

(assert (=> b!5343595 d!1714287))

(declare-fun d!1714307 () Bool)

(declare-fun isEmpty!33231 (Option!15138) Bool)

(assert (=> d!1714307 (= (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) Nil!61257 s!2326 s!2326)) (not (isEmpty!33231 (findConcatSeparation!1552 (regOne!30566 r!7292) (regTwo!30566 r!7292) Nil!61257 s!2326 s!2326))))))

(declare-fun bs!1239046 () Bool)

(assert (= bs!1239046 d!1714307))

(assert (=> bs!1239046 m!6375662))

(declare-fun m!6376076 () Bool)

(assert (=> bs!1239046 m!6376076))

(assert (=> b!5343595 d!1714307))

(declare-fun d!1714309 () Bool)

(assert (=> d!1714309 (= (isEmpty!33228 (t!374597 (exprs!4911 (h!67706 zl!343)))) ((_ is Nil!61256) (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(assert (=> b!5343573 d!1714309))

(declare-fun b!5344041 () Bool)

(declare-fun e!3318061 () Bool)

(declare-fun call!381983 () Bool)

(assert (=> b!5344041 (= e!3318061 call!381983)))

(declare-fun bm!381978 () Bool)

(declare-fun call!381985 () Bool)

(assert (=> bm!381978 (= call!381983 call!381985)))

(declare-fun d!1714311 () Bool)

(declare-fun res!2267279 () Bool)

(declare-fun e!3318063 () Bool)

(assert (=> d!1714311 (=> res!2267279 e!3318063)))

(assert (=> d!1714311 (= res!2267279 ((_ is ElementMatch!15027) r!7292))))

(assert (=> d!1714311 (= (validRegex!6763 r!7292) e!3318063)))

(declare-fun c!929955 () Bool)

(declare-fun c!929954 () Bool)

(declare-fun bm!381979 () Bool)

(assert (=> bm!381979 (= call!381985 (validRegex!6763 (ite c!929954 (reg!15356 r!7292) (ite c!929955 (regTwo!30567 r!7292) (regTwo!30566 r!7292)))))))

(declare-fun b!5344042 () Bool)

(declare-fun e!3318062 () Bool)

(assert (=> b!5344042 (= e!3318063 e!3318062)))

(assert (=> b!5344042 (= c!929954 ((_ is Star!15027) r!7292))))

(declare-fun b!5344043 () Bool)

(declare-fun e!3318058 () Bool)

(assert (=> b!5344043 (= e!3318058 call!381983)))

(declare-fun b!5344044 () Bool)

(declare-fun e!3318060 () Bool)

(assert (=> b!5344044 (= e!3318060 e!3318058)))

(declare-fun res!2267278 () Bool)

(assert (=> b!5344044 (=> (not res!2267278) (not e!3318058))))

(declare-fun call!381984 () Bool)

(assert (=> b!5344044 (= res!2267278 call!381984)))

(declare-fun bm!381980 () Bool)

(assert (=> bm!381980 (= call!381984 (validRegex!6763 (ite c!929955 (regOne!30567 r!7292) (regOne!30566 r!7292))))))

(declare-fun b!5344045 () Bool)

(declare-fun e!3318064 () Bool)

(assert (=> b!5344045 (= e!3318062 e!3318064)))

(assert (=> b!5344045 (= c!929955 ((_ is Union!15027) r!7292))))

(declare-fun b!5344046 () Bool)

(declare-fun e!3318059 () Bool)

(assert (=> b!5344046 (= e!3318059 call!381985)))

(declare-fun b!5344047 () Bool)

(declare-fun res!2267275 () Bool)

(assert (=> b!5344047 (=> res!2267275 e!3318060)))

(assert (=> b!5344047 (= res!2267275 (not ((_ is Concat!23872) r!7292)))))

(assert (=> b!5344047 (= e!3318064 e!3318060)))

(declare-fun b!5344048 () Bool)

(assert (=> b!5344048 (= e!3318062 e!3318059)))

(declare-fun res!2267276 () Bool)

(assert (=> b!5344048 (= res!2267276 (not (nullable!5196 (reg!15356 r!7292))))))

(assert (=> b!5344048 (=> (not res!2267276) (not e!3318059))))

(declare-fun b!5344049 () Bool)

(declare-fun res!2267277 () Bool)

(assert (=> b!5344049 (=> (not res!2267277) (not e!3318061))))

(assert (=> b!5344049 (= res!2267277 call!381984)))

(assert (=> b!5344049 (= e!3318064 e!3318061)))

(assert (= (and d!1714311 (not res!2267279)) b!5344042))

(assert (= (and b!5344042 c!929954) b!5344048))

(assert (= (and b!5344042 (not c!929954)) b!5344045))

(assert (= (and b!5344048 res!2267276) b!5344046))

(assert (= (and b!5344045 c!929955) b!5344049))

(assert (= (and b!5344045 (not c!929955)) b!5344047))

(assert (= (and b!5344049 res!2267277) b!5344041))

(assert (= (and b!5344047 (not res!2267275)) b!5344044))

(assert (= (and b!5344044 res!2267278) b!5344043))

(assert (= (or b!5344041 b!5344043) bm!381978))

(assert (= (or b!5344049 b!5344044) bm!381980))

(assert (= (or b!5344046 bm!381978) bm!381979))

(declare-fun m!6376112 () Bool)

(assert (=> bm!381979 m!6376112))

(declare-fun m!6376114 () Bool)

(assert (=> bm!381980 m!6376114))

(declare-fun m!6376116 () Bool)

(assert (=> b!5344048 m!6376116))

(assert (=> start!562862 d!1714311))

(declare-fun d!1714327 () Bool)

(declare-fun choose!40064 ((InoxSet Context!8822) Int) (InoxSet Context!8822))

(assert (=> d!1714327 (= (flatMap!754 lt!2178957 lambda!274163) (choose!40064 lt!2178957 lambda!274163))))

(declare-fun bs!1239061 () Bool)

(assert (= bs!1239061 d!1714327))

(declare-fun m!6376124 () Bool)

(assert (=> bs!1239061 m!6376124))

(assert (=> b!5343592 d!1714327))

(declare-fun d!1714331 () Bool)

(declare-fun c!929975 () Bool)

(declare-fun e!3318093 () Bool)

(assert (=> d!1714331 (= c!929975 e!3318093)))

(declare-fun res!2267293 () Bool)

(assert (=> d!1714331 (=> (not res!2267293) (not e!3318093))))

(assert (=> d!1714331 (= res!2267293 ((_ is Cons!61256) (exprs!4911 lt!2178948)))))

(declare-fun e!3318092 () (InoxSet Context!8822))

(assert (=> d!1714331 (= (derivationStepZipperUp!399 lt!2178948 (h!67705 s!2326)) e!3318092)))

(declare-fun call!381996 () (InoxSet Context!8822))

(declare-fun b!5344099 () Bool)

(assert (=> b!5344099 (= e!3318092 ((_ map or) call!381996 (derivationStepZipperUp!399 (Context!8823 (t!374597 (exprs!4911 lt!2178948))) (h!67705 s!2326))))))

(declare-fun b!5344100 () Bool)

(assert (=> b!5344100 (= e!3318093 (nullable!5196 (h!67704 (exprs!4911 lt!2178948))))))

(declare-fun b!5344101 () Bool)

(declare-fun e!3318091 () (InoxSet Context!8822))

(assert (=> b!5344101 (= e!3318091 call!381996)))

(declare-fun b!5344102 () Bool)

(assert (=> b!5344102 (= e!3318091 ((as const (Array Context!8822 Bool)) false))))

(declare-fun bm!381991 () Bool)

(assert (=> bm!381991 (= call!381996 (derivationStepZipperDown!475 (h!67704 (exprs!4911 lt!2178948)) (Context!8823 (t!374597 (exprs!4911 lt!2178948))) (h!67705 s!2326)))))

(declare-fun b!5344103 () Bool)

(assert (=> b!5344103 (= e!3318092 e!3318091)))

(declare-fun c!929976 () Bool)

(assert (=> b!5344103 (= c!929976 ((_ is Cons!61256) (exprs!4911 lt!2178948)))))

(assert (= (and d!1714331 res!2267293) b!5344100))

(assert (= (and d!1714331 c!929975) b!5344099))

(assert (= (and d!1714331 (not c!929975)) b!5344103))

(assert (= (and b!5344103 c!929976) b!5344101))

(assert (= (and b!5344103 (not c!929976)) b!5344102))

(assert (= (or b!5344099 b!5344101) bm!381991))

(declare-fun m!6376176 () Bool)

(assert (=> b!5344099 m!6376176))

(declare-fun m!6376178 () Bool)

(assert (=> b!5344100 m!6376178))

(declare-fun m!6376180 () Bool)

(assert (=> bm!381991 m!6376180))

(assert (=> b!5343592 d!1714331))

(declare-fun d!1714357 () Bool)

(declare-fun dynLambda!24214 (Int Context!8822) (InoxSet Context!8822))

(assert (=> d!1714357 (= (flatMap!754 lt!2178957 lambda!274163) (dynLambda!24214 lambda!274163 lt!2178948))))

(declare-fun lt!2179063 () Unit!153626)

(declare-fun choose!40065 ((InoxSet Context!8822) Context!8822 Int) Unit!153626)

(assert (=> d!1714357 (= lt!2179063 (choose!40065 lt!2178957 lt!2178948 lambda!274163))))

(assert (=> d!1714357 (= lt!2178957 (store ((as const (Array Context!8822 Bool)) false) lt!2178948 true))))

(assert (=> d!1714357 (= (lemmaFlatMapOnSingletonSet!286 lt!2178957 lt!2178948 lambda!274163) lt!2179063)))

(declare-fun b_lambda!205233 () Bool)

(assert (=> (not b_lambda!205233) (not d!1714357)))

(declare-fun bs!1239078 () Bool)

(assert (= bs!1239078 d!1714357))

(assert (=> bs!1239078 m!6375658))

(declare-fun m!6376188 () Bool)

(assert (=> bs!1239078 m!6376188))

(declare-fun m!6376190 () Bool)

(assert (=> bs!1239078 m!6376190))

(assert (=> bs!1239078 m!6375650))

(assert (=> b!5343592 d!1714357))

(declare-fun bs!1239079 () Bool)

(declare-fun d!1714361 () Bool)

(assert (= bs!1239079 (and d!1714361 b!5343578)))

(declare-fun lambda!274229 () Int)

(assert (=> bs!1239079 (= lambda!274229 lambda!274163)))

(assert (=> d!1714361 true))

(assert (=> d!1714361 (= (derivationStepZipper!1268 lt!2178957 (h!67705 s!2326)) (flatMap!754 lt!2178957 lambda!274229))))

(declare-fun bs!1239080 () Bool)

(assert (= bs!1239080 d!1714361))

(declare-fun m!6376192 () Bool)

(assert (=> bs!1239080 m!6376192))

(assert (=> b!5343592 d!1714361))

(declare-fun d!1714363 () Bool)

(declare-fun e!3318112 () Bool)

(assert (=> d!1714363 e!3318112))

(declare-fun res!2267303 () Bool)

(assert (=> d!1714363 (=> (not res!2267303) (not e!3318112))))

(declare-fun lt!2179068 () List!61382)

(declare-fun noDuplicate!1324 (List!61382) Bool)

(assert (=> d!1714363 (= res!2267303 (noDuplicate!1324 lt!2179068))))

(declare-fun choose!40066 ((InoxSet Context!8822)) List!61382)

(assert (=> d!1714363 (= lt!2179068 (choose!40066 z!1189))))

(assert (=> d!1714363 (= (toList!8811 z!1189) lt!2179068)))

(declare-fun b!5344133 () Bool)

(declare-fun content!10928 (List!61382) (InoxSet Context!8822))

(assert (=> b!5344133 (= e!3318112 (= (content!10928 lt!2179068) z!1189))))

(assert (= (and d!1714363 res!2267303) b!5344133))

(declare-fun m!6376194 () Bool)

(assert (=> d!1714363 m!6376194))

(declare-fun m!6376196 () Bool)

(assert (=> d!1714363 m!6376196))

(declare-fun m!6376198 () Bool)

(assert (=> b!5344133 m!6376198))

(assert (=> b!5343591 d!1714363))

(declare-fun d!1714365 () Bool)

(declare-fun c!929994 () Bool)

(declare-fun isEmpty!33232 (List!61381) Bool)

(assert (=> d!1714365 (= c!929994 (isEmpty!33232 (t!374598 s!2326)))))

(declare-fun e!3318121 () Bool)

(assert (=> d!1714365 (= (matchZipper!1271 lt!2178952 (t!374598 s!2326)) e!3318121)))

(declare-fun b!5344148 () Bool)

(declare-fun nullableZipper!1370 ((InoxSet Context!8822)) Bool)

(assert (=> b!5344148 (= e!3318121 (nullableZipper!1370 lt!2178952))))

(declare-fun b!5344149 () Bool)

(declare-fun head!11458 (List!61381) C!30324)

(declare-fun tail!10555 (List!61381) List!61381)

(assert (=> b!5344149 (= e!3318121 (matchZipper!1271 (derivationStepZipper!1268 lt!2178952 (head!11458 (t!374598 s!2326))) (tail!10555 (t!374598 s!2326))))))

(assert (= (and d!1714365 c!929994) b!5344148))

(assert (= (and d!1714365 (not c!929994)) b!5344149))

(declare-fun m!6376200 () Bool)

(assert (=> d!1714365 m!6376200))

(declare-fun m!6376202 () Bool)

(assert (=> b!5344148 m!6376202))

(declare-fun m!6376204 () Bool)

(assert (=> b!5344149 m!6376204))

(assert (=> b!5344149 m!6376204))

(declare-fun m!6376206 () Bool)

(assert (=> b!5344149 m!6376206))

(declare-fun m!6376208 () Bool)

(assert (=> b!5344149 m!6376208))

(assert (=> b!5344149 m!6376206))

(assert (=> b!5344149 m!6376208))

(declare-fun m!6376212 () Bool)

(assert (=> b!5344149 m!6376212))

(assert (=> b!5343570 d!1714365))

(declare-fun d!1714367 () Bool)

(declare-fun c!929995 () Bool)

(assert (=> d!1714367 (= c!929995 (isEmpty!33232 (t!374598 s!2326)))))

(declare-fun e!3318122 () Bool)

(assert (=> d!1714367 (= (matchZipper!1271 lt!2178939 (t!374598 s!2326)) e!3318122)))

(declare-fun b!5344150 () Bool)

(assert (=> b!5344150 (= e!3318122 (nullableZipper!1370 lt!2178939))))

(declare-fun b!5344151 () Bool)

(assert (=> b!5344151 (= e!3318122 (matchZipper!1271 (derivationStepZipper!1268 lt!2178939 (head!11458 (t!374598 s!2326))) (tail!10555 (t!374598 s!2326))))))

(assert (= (and d!1714367 c!929995) b!5344150))

(assert (= (and d!1714367 (not c!929995)) b!5344151))

(assert (=> d!1714367 m!6376200))

(declare-fun m!6376232 () Bool)

(assert (=> b!5344150 m!6376232))

(assert (=> b!5344151 m!6376204))

(assert (=> b!5344151 m!6376204))

(declare-fun m!6376234 () Bool)

(assert (=> b!5344151 m!6376234))

(assert (=> b!5344151 m!6376208))

(assert (=> b!5344151 m!6376234))

(assert (=> b!5344151 m!6376208))

(declare-fun m!6376236 () Bool)

(assert (=> b!5344151 m!6376236))

(assert (=> b!5343590 d!1714367))

(declare-fun b!5344204 () Bool)

(declare-fun e!3318149 () Bool)

(declare-fun derivativeStep!4191 (Regex!15027 C!30324) Regex!15027)

(assert (=> b!5344204 (= e!3318149 (matchR!7212 (derivativeStep!4191 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)) (head!11458 s!2326)) (tail!10555 s!2326)))))

(declare-fun d!1714371 () Bool)

(declare-fun e!3318152 () Bool)

(assert (=> d!1714371 e!3318152))

(declare-fun c!930011 () Bool)

(assert (=> d!1714371 (= c!930011 ((_ is EmptyExpr!15027) (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292))))))

(declare-fun lt!2179081 () Bool)

(assert (=> d!1714371 (= lt!2179081 e!3318149)))

(declare-fun c!930013 () Bool)

(assert (=> d!1714371 (= c!930013 (isEmpty!33232 s!2326))))

(assert (=> d!1714371 (validRegex!6763 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)))))

(assert (=> d!1714371 (= (matchR!7212 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)) s!2326) lt!2179081)))

(declare-fun b!5344205 () Bool)

(declare-fun e!3318150 () Bool)

(assert (=> b!5344205 (= e!3318150 (not (= (head!11458 s!2326) (c!929823 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292))))))))

(declare-fun b!5344206 () Bool)

(declare-fun res!2267335 () Bool)

(declare-fun e!3318154 () Bool)

(assert (=> b!5344206 (=> res!2267335 e!3318154)))

(declare-fun e!3318151 () Bool)

(assert (=> b!5344206 (= res!2267335 e!3318151)))

(declare-fun res!2267336 () Bool)

(assert (=> b!5344206 (=> (not res!2267336) (not e!3318151))))

(assert (=> b!5344206 (= res!2267336 lt!2179081)))

(declare-fun b!5344207 () Bool)

(declare-fun e!3318155 () Bool)

(assert (=> b!5344207 (= e!3318154 e!3318155)))

(declare-fun res!2267331 () Bool)

(assert (=> b!5344207 (=> (not res!2267331) (not e!3318155))))

(assert (=> b!5344207 (= res!2267331 (not lt!2179081))))

(declare-fun b!5344208 () Bool)

(assert (=> b!5344208 (= e!3318149 (nullable!5196 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292))))))

(declare-fun b!5344209 () Bool)

(declare-fun e!3318153 () Bool)

(assert (=> b!5344209 (= e!3318152 e!3318153)))

(declare-fun c!930012 () Bool)

(assert (=> b!5344209 (= c!930012 ((_ is EmptyLang!15027) (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292))))))

(declare-fun b!5344210 () Bool)

(declare-fun res!2267332 () Bool)

(assert (=> b!5344210 (=> res!2267332 e!3318154)))

(assert (=> b!5344210 (= res!2267332 (not ((_ is ElementMatch!15027) (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)))))))

(assert (=> b!5344210 (= e!3318153 e!3318154)))

(declare-fun b!5344211 () Bool)

(declare-fun res!2267334 () Bool)

(assert (=> b!5344211 (=> (not res!2267334) (not e!3318151))))

(assert (=> b!5344211 (= res!2267334 (isEmpty!33232 (tail!10555 s!2326)))))

(declare-fun b!5344212 () Bool)

(assert (=> b!5344212 (= e!3318151 (= (head!11458 s!2326) (c!929823 (Concat!23872 (regOne!30566 r!7292) (regTwo!30566 r!7292)))))))

(declare-fun b!5344213 () Bool)

(declare-fun res!2267337 () Bool)

(assert (=> b!5344213 (=> res!2267337 e!3318150)))

(assert (=> b!5344213 (= res!2267337 (not (isEmpty!33232 (tail!10555 s!2326))))))

(declare-fun b!5344214 () Bool)

(declare-fun res!2267333 () Bool)

(assert (=> b!5344214 (=> (not res!2267333) (not e!3318151))))

(declare-fun call!382000 () Bool)

(assert (=> b!5344214 (= res!2267333 (not call!382000))))

(declare-fun bm!381995 () Bool)

(assert (=> bm!381995 (= call!382000 (isEmpty!33232 s!2326))))

(declare-fun b!5344215 () Bool)

(assert (=> b!5344215 (= e!3318155 e!3318150)))

(declare-fun res!2267330 () Bool)

(assert (=> b!5344215 (=> res!2267330 e!3318150)))

(assert (=> b!5344215 (= res!2267330 call!382000)))

(declare-fun b!5344216 () Bool)

(assert (=> b!5344216 (= e!3318153 (not lt!2179081))))

(declare-fun b!5344217 () Bool)

(assert (=> b!5344217 (= e!3318152 (= lt!2179081 call!382000))))

(assert (= (and d!1714371 c!930013) b!5344208))

(assert (= (and d!1714371 (not c!930013)) b!5344204))

(assert (= (and d!1714371 c!930011) b!5344217))

(assert (= (and d!1714371 (not c!930011)) b!5344209))

(assert (= (and b!5344209 c!930012) b!5344216))

(assert (= (and b!5344209 (not c!930012)) b!5344210))

(assert (= (and b!5344210 (not res!2267332)) b!5344206))

(assert (= (and b!5344206 res!2267336) b!5344214))

(assert (= (and b!5344214 res!2267333) b!5344211))

(assert (= (and b!5344211 res!2267334) b!5344212))

(assert (= (and b!5344206 (not res!2267335)) b!5344207))

(assert (= (and b!5344207 res!2267331) b!5344215))

(assert (= (and b!5344215 (not res!2267330)) b!5344213))

(assert (= (and b!5344213 (not res!2267337)) b!5344205))

(assert (= (or b!5344217 b!5344214 b!5344215) bm!381995))

(declare-fun m!6376256 () Bool)

(assert (=> d!1714371 m!6376256))

(declare-fun m!6376258 () Bool)

(assert (=> d!1714371 m!6376258))

(assert (=> bm!381995 m!6376256))

(declare-fun m!6376260 () Bool)

(assert (=> b!5344213 m!6376260))

(assert (=> b!5344213 m!6376260))

(declare-fun m!6376262 () Bool)

(assert (=> b!5344213 m!6376262))

(declare-fun m!6376264 () Bool)

(assert (=> b!5344205 m!6376264))

(assert (=> b!5344204 m!6376264))

(assert (=> b!5344204 m!6376264))

(declare-fun m!6376266 () Bool)

(assert (=> b!5344204 m!6376266))

(assert (=> b!5344204 m!6376260))

(assert (=> b!5344204 m!6376266))

(assert (=> b!5344204 m!6376260))

(declare-fun m!6376268 () Bool)

(assert (=> b!5344204 m!6376268))

(declare-fun m!6376272 () Bool)

(assert (=> b!5344208 m!6376272))

(assert (=> b!5344212 m!6376264))

(assert (=> b!5344211 m!6376260))

(assert (=> b!5344211 m!6376260))

(assert (=> b!5344211 m!6376262))

(assert (=> b!5343579 d!1714371))

(declare-fun b!5344224 () Bool)

(declare-fun e!3318162 () Bool)

(declare-fun call!382001 () Bool)

(assert (=> b!5344224 (= e!3318162 call!382001)))

(declare-fun bm!381996 () Bool)

(declare-fun call!382003 () Bool)

(assert (=> bm!381996 (= call!382001 call!382003)))

(declare-fun d!1714383 () Bool)

(declare-fun res!2267342 () Bool)

(declare-fun e!3318164 () Bool)

(assert (=> d!1714383 (=> res!2267342 e!3318164)))

(assert (=> d!1714383 (= res!2267342 ((_ is ElementMatch!15027) (Concat!23872 lt!2178958 lt!2178945)))))

(assert (=> d!1714383 (= (validRegex!6763 (Concat!23872 lt!2178958 lt!2178945)) e!3318164)))

(declare-fun bm!381997 () Bool)

(declare-fun c!930018 () Bool)

(declare-fun c!930017 () Bool)

(assert (=> bm!381997 (= call!382003 (validRegex!6763 (ite c!930017 (reg!15356 (Concat!23872 lt!2178958 lt!2178945)) (ite c!930018 (regTwo!30567 (Concat!23872 lt!2178958 lt!2178945)) (regTwo!30566 (Concat!23872 lt!2178958 lt!2178945))))))))

(declare-fun b!5344225 () Bool)

(declare-fun e!3318163 () Bool)

(assert (=> b!5344225 (= e!3318164 e!3318163)))

(assert (=> b!5344225 (= c!930017 ((_ is Star!15027) (Concat!23872 lt!2178958 lt!2178945)))))

(declare-fun b!5344226 () Bool)

(declare-fun e!3318159 () Bool)

(assert (=> b!5344226 (= e!3318159 call!382001)))

(declare-fun b!5344227 () Bool)

(declare-fun e!3318161 () Bool)

(assert (=> b!5344227 (= e!3318161 e!3318159)))

(declare-fun res!2267341 () Bool)

(assert (=> b!5344227 (=> (not res!2267341) (not e!3318159))))

(declare-fun call!382002 () Bool)

(assert (=> b!5344227 (= res!2267341 call!382002)))

(declare-fun bm!381998 () Bool)

(assert (=> bm!381998 (= call!382002 (validRegex!6763 (ite c!930018 (regOne!30567 (Concat!23872 lt!2178958 lt!2178945)) (regOne!30566 (Concat!23872 lt!2178958 lt!2178945)))))))

(declare-fun b!5344228 () Bool)

(declare-fun e!3318165 () Bool)

(assert (=> b!5344228 (= e!3318163 e!3318165)))

(assert (=> b!5344228 (= c!930018 ((_ is Union!15027) (Concat!23872 lt!2178958 lt!2178945)))))

(declare-fun b!5344229 () Bool)

(declare-fun e!3318160 () Bool)

(assert (=> b!5344229 (= e!3318160 call!382003)))

(declare-fun b!5344230 () Bool)

(declare-fun res!2267338 () Bool)

(assert (=> b!5344230 (=> res!2267338 e!3318161)))

(assert (=> b!5344230 (= res!2267338 (not ((_ is Concat!23872) (Concat!23872 lt!2178958 lt!2178945))))))

(assert (=> b!5344230 (= e!3318165 e!3318161)))

(declare-fun b!5344231 () Bool)

(assert (=> b!5344231 (= e!3318163 e!3318160)))

(declare-fun res!2267339 () Bool)

(assert (=> b!5344231 (= res!2267339 (not (nullable!5196 (reg!15356 (Concat!23872 lt!2178958 lt!2178945)))))))

(assert (=> b!5344231 (=> (not res!2267339) (not e!3318160))))

(declare-fun b!5344232 () Bool)

(declare-fun res!2267340 () Bool)

(assert (=> b!5344232 (=> (not res!2267340) (not e!3318162))))

(assert (=> b!5344232 (= res!2267340 call!382002)))

(assert (=> b!5344232 (= e!3318165 e!3318162)))

(assert (= (and d!1714383 (not res!2267342)) b!5344225))

(assert (= (and b!5344225 c!930017) b!5344231))

(assert (= (and b!5344225 (not c!930017)) b!5344228))

(assert (= (and b!5344231 res!2267339) b!5344229))

(assert (= (and b!5344228 c!930018) b!5344232))

(assert (= (and b!5344228 (not c!930018)) b!5344230))

(assert (= (and b!5344232 res!2267340) b!5344224))

(assert (= (and b!5344230 (not res!2267338)) b!5344227))

(assert (= (and b!5344227 res!2267341) b!5344226))

(assert (= (or b!5344224 b!5344226) bm!381996))

(assert (= (or b!5344232 b!5344227) bm!381998))

(assert (= (or b!5344229 bm!381996) bm!381997))

(declare-fun m!6376282 () Bool)

(assert (=> bm!381997 m!6376282))

(declare-fun m!6376284 () Bool)

(assert (=> bm!381998 m!6376284))

(declare-fun m!6376286 () Bool)

(assert (=> b!5344231 m!6376286))

(assert (=> b!5343599 d!1714383))

(declare-fun d!1714385 () Bool)

(assert (=> d!1714385 (= (flatMap!754 z!1189 lambda!274163) (dynLambda!24214 lambda!274163 (h!67706 zl!343)))))

(declare-fun lt!2179084 () Unit!153626)

(assert (=> d!1714385 (= lt!2179084 (choose!40065 z!1189 (h!67706 zl!343) lambda!274163))))

(assert (=> d!1714385 (= z!1189 (store ((as const (Array Context!8822 Bool)) false) (h!67706 zl!343) true))))

(assert (=> d!1714385 (= (lemmaFlatMapOnSingletonSet!286 z!1189 (h!67706 zl!343) lambda!274163) lt!2179084)))

(declare-fun b_lambda!205235 () Bool)

(assert (=> (not b_lambda!205235) (not d!1714385)))

(declare-fun bs!1239095 () Bool)

(assert (= bs!1239095 d!1714385))

(assert (=> bs!1239095 m!6375684))

(declare-fun m!6376288 () Bool)

(assert (=> bs!1239095 m!6376288))

(declare-fun m!6376290 () Bool)

(assert (=> bs!1239095 m!6376290))

(declare-fun m!6376292 () Bool)

(assert (=> bs!1239095 m!6376292))

(assert (=> b!5343578 d!1714385))

(declare-fun c!930032 () Bool)

(declare-fun call!382017 () (InoxSet Context!8822))

(declare-fun bm!382011 () Bool)

(declare-fun call!382021 () List!61380)

(assert (=> bm!382011 (= call!382017 (derivationStepZipperDown!475 (ite c!930032 (regTwo!30567 (h!67704 (exprs!4911 (h!67706 zl!343)))) (regOne!30566 (h!67704 (exprs!4911 (h!67706 zl!343))))) (ite c!930032 lt!2178942 (Context!8823 call!382021)) (h!67705 s!2326)))))

(declare-fun b!5344309 () Bool)

(declare-fun e!3318202 () (InoxSet Context!8822))

(assert (=> b!5344309 (= e!3318202 (store ((as const (Array Context!8822 Bool)) false) lt!2178942 true))))

(declare-fun b!5344310 () Bool)

(declare-fun e!3318206 () (InoxSet Context!8822))

(declare-fun call!382019 () (InoxSet Context!8822))

(assert (=> b!5344310 (= e!3318206 ((_ map or) call!382019 call!382017))))

(declare-fun b!5344311 () Bool)

(declare-fun e!3318205 () (InoxSet Context!8822))

(assert (=> b!5344311 (= e!3318205 ((as const (Array Context!8822 Bool)) false))))

(declare-fun b!5344312 () Bool)

(declare-fun e!3318204 () Bool)

(assert (=> b!5344312 (= e!3318204 (nullable!5196 (regOne!30566 (h!67704 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun b!5344313 () Bool)

(declare-fun call!382020 () (InoxSet Context!8822))

(assert (=> b!5344313 (= e!3318205 call!382020)))

(declare-fun d!1714387 () Bool)

(declare-fun c!930029 () Bool)

(assert (=> d!1714387 (= c!930029 (and ((_ is ElementMatch!15027) (h!67704 (exprs!4911 (h!67706 zl!343)))) (= (c!929823 (h!67704 (exprs!4911 (h!67706 zl!343)))) (h!67705 s!2326))))))

(assert (=> d!1714387 (= (derivationStepZipperDown!475 (h!67704 (exprs!4911 (h!67706 zl!343))) lt!2178942 (h!67705 s!2326)) e!3318202)))

(declare-fun bm!382012 () Bool)

(declare-fun c!930030 () Bool)

(declare-fun call!382016 () List!61380)

(declare-fun c!930031 () Bool)

(assert (=> bm!382012 (= call!382019 (derivationStepZipperDown!475 (ite c!930032 (regOne!30567 (h!67704 (exprs!4911 (h!67706 zl!343)))) (ite c!930030 (regTwo!30566 (h!67704 (exprs!4911 (h!67706 zl!343)))) (ite c!930031 (regOne!30566 (h!67704 (exprs!4911 (h!67706 zl!343)))) (reg!15356 (h!67704 (exprs!4911 (h!67706 zl!343))))))) (ite (or c!930032 c!930030) lt!2178942 (Context!8823 call!382016)) (h!67705 s!2326)))))

(declare-fun b!5344314 () Bool)

(declare-fun e!3318201 () (InoxSet Context!8822))

(declare-fun call!382018 () (InoxSet Context!8822))

(assert (=> b!5344314 (= e!3318201 ((_ map or) call!382017 call!382018))))

(declare-fun bm!382013 () Bool)

(assert (=> bm!382013 (= call!382016 call!382021)))

(declare-fun b!5344315 () Bool)

(assert (=> b!5344315 (= e!3318202 e!3318206)))

(assert (=> b!5344315 (= c!930032 ((_ is Union!15027) (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun bm!382014 () Bool)

(assert (=> bm!382014 (= call!382020 call!382018)))

(declare-fun bm!382015 () Bool)

(declare-fun $colon$colon!1419 (List!61380 Regex!15027) List!61380)

(assert (=> bm!382015 (= call!382021 ($colon$colon!1419 (exprs!4911 lt!2178942) (ite (or c!930030 c!930031) (regTwo!30566 (h!67704 (exprs!4911 (h!67706 zl!343)))) (h!67704 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun b!5344316 () Bool)

(assert (=> b!5344316 (= c!930030 e!3318204)))

(declare-fun res!2267345 () Bool)

(assert (=> b!5344316 (=> (not res!2267345) (not e!3318204))))

(assert (=> b!5344316 (= res!2267345 ((_ is Concat!23872) (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(assert (=> b!5344316 (= e!3318206 e!3318201)))

(declare-fun bm!382016 () Bool)

(assert (=> bm!382016 (= call!382018 call!382019)))

(declare-fun b!5344317 () Bool)

(declare-fun e!3318203 () (InoxSet Context!8822))

(assert (=> b!5344317 (= e!3318201 e!3318203)))

(assert (=> b!5344317 (= c!930031 ((_ is Concat!23872) (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344318 () Bool)

(declare-fun c!930033 () Bool)

(assert (=> b!5344318 (= c!930033 ((_ is Star!15027) (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(assert (=> b!5344318 (= e!3318203 e!3318205)))

(declare-fun b!5344319 () Bool)

(assert (=> b!5344319 (= e!3318203 call!382020)))

(assert (= (and d!1714387 c!930029) b!5344309))

(assert (= (and d!1714387 (not c!930029)) b!5344315))

(assert (= (and b!5344315 c!930032) b!5344310))

(assert (= (and b!5344315 (not c!930032)) b!5344316))

(assert (= (and b!5344316 res!2267345) b!5344312))

(assert (= (and b!5344316 c!930030) b!5344314))

(assert (= (and b!5344316 (not c!930030)) b!5344317))

(assert (= (and b!5344317 c!930031) b!5344319))

(assert (= (and b!5344317 (not c!930031)) b!5344318))

(assert (= (and b!5344318 c!930033) b!5344313))

(assert (= (and b!5344318 (not c!930033)) b!5344311))

(assert (= (or b!5344319 b!5344313) bm!382013))

(assert (= (or b!5344319 b!5344313) bm!382014))

(assert (= (or b!5344314 bm!382013) bm!382015))

(assert (= (or b!5344314 bm!382014) bm!382016))

(assert (= (or b!5344310 b!5344314) bm!382011))

(assert (= (or b!5344310 bm!382016) bm!382012))

(declare-fun m!6376298 () Bool)

(assert (=> b!5344309 m!6376298))

(declare-fun m!6376300 () Bool)

(assert (=> bm!382015 m!6376300))

(declare-fun m!6376302 () Bool)

(assert (=> b!5344312 m!6376302))

(declare-fun m!6376304 () Bool)

(assert (=> bm!382011 m!6376304))

(declare-fun m!6376306 () Bool)

(assert (=> bm!382012 m!6376306))

(assert (=> b!5343578 d!1714387))

(declare-fun d!1714393 () Bool)

(declare-fun nullableFct!1522 (Regex!15027) Bool)

(assert (=> d!1714393 (= (nullable!5196 (h!67704 (exprs!4911 (h!67706 zl!343)))) (nullableFct!1522 (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun bs!1239098 () Bool)

(assert (= bs!1239098 d!1714393))

(declare-fun m!6376308 () Bool)

(assert (=> bs!1239098 m!6376308))

(assert (=> b!5343578 d!1714393))

(declare-fun d!1714395 () Bool)

(declare-fun c!930034 () Bool)

(declare-fun e!3318209 () Bool)

(assert (=> d!1714395 (= c!930034 e!3318209)))

(declare-fun res!2267346 () Bool)

(assert (=> d!1714395 (=> (not res!2267346) (not e!3318209))))

(assert (=> d!1714395 (= res!2267346 ((_ is Cons!61256) (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343))))))))))

(declare-fun e!3318208 () (InoxSet Context!8822))

(assert (=> d!1714395 (= (derivationStepZipperUp!399 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343))))) (h!67705 s!2326)) e!3318208)))

(declare-fun b!5344320 () Bool)

(declare-fun call!382022 () (InoxSet Context!8822))

(assert (=> b!5344320 (= e!3318208 ((_ map or) call!382022 (derivationStepZipperUp!399 (Context!8823 (t!374597 (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343)))))))) (h!67705 s!2326))))))

(declare-fun b!5344321 () Bool)

(assert (=> b!5344321 (= e!3318209 (nullable!5196 (h!67704 (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343)))))))))))

(declare-fun b!5344322 () Bool)

(declare-fun e!3318207 () (InoxSet Context!8822))

(assert (=> b!5344322 (= e!3318207 call!382022)))

(declare-fun b!5344323 () Bool)

(assert (=> b!5344323 (= e!3318207 ((as const (Array Context!8822 Bool)) false))))

(declare-fun bm!382017 () Bool)

(assert (=> bm!382017 (= call!382022 (derivationStepZipperDown!475 (h!67704 (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343))))))) (Context!8823 (t!374597 (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343)))))))) (h!67705 s!2326)))))

(declare-fun b!5344324 () Bool)

(assert (=> b!5344324 (= e!3318208 e!3318207)))

(declare-fun c!930035 () Bool)

(assert (=> b!5344324 (= c!930035 ((_ is Cons!61256) (exprs!4911 (Context!8823 (Cons!61256 (h!67704 (exprs!4911 (h!67706 zl!343))) (t!374597 (exprs!4911 (h!67706 zl!343))))))))))

(assert (= (and d!1714395 res!2267346) b!5344321))

(assert (= (and d!1714395 c!930034) b!5344320))

(assert (= (and d!1714395 (not c!930034)) b!5344324))

(assert (= (and b!5344324 c!930035) b!5344322))

(assert (= (and b!5344324 (not c!930035)) b!5344323))

(assert (= (or b!5344320 b!5344322) bm!382017))

(declare-fun m!6376310 () Bool)

(assert (=> b!5344320 m!6376310))

(declare-fun m!6376312 () Bool)

(assert (=> b!5344321 m!6376312))

(declare-fun m!6376314 () Bool)

(assert (=> bm!382017 m!6376314))

(assert (=> b!5343578 d!1714395))

(declare-fun d!1714397 () Bool)

(assert (=> d!1714397 (= (flatMap!754 z!1189 lambda!274163) (choose!40064 z!1189 lambda!274163))))

(declare-fun bs!1239099 () Bool)

(assert (= bs!1239099 d!1714397))

(declare-fun m!6376316 () Bool)

(assert (=> bs!1239099 m!6376316))

(assert (=> b!5343578 d!1714397))

(declare-fun d!1714399 () Bool)

(declare-fun c!930036 () Bool)

(declare-fun e!3318212 () Bool)

(assert (=> d!1714399 (= c!930036 e!3318212)))

(declare-fun res!2267347 () Bool)

(assert (=> d!1714399 (=> (not res!2267347) (not e!3318212))))

(assert (=> d!1714399 (= res!2267347 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343))))))

(declare-fun e!3318211 () (InoxSet Context!8822))

(assert (=> d!1714399 (= (derivationStepZipperUp!399 (h!67706 zl!343) (h!67705 s!2326)) e!3318211)))

(declare-fun b!5344325 () Bool)

(declare-fun call!382023 () (InoxSet Context!8822))

(assert (=> b!5344325 (= e!3318211 ((_ map or) call!382023 (derivationStepZipperUp!399 (Context!8823 (t!374597 (exprs!4911 (h!67706 zl!343)))) (h!67705 s!2326))))))

(declare-fun b!5344326 () Bool)

(assert (=> b!5344326 (= e!3318212 (nullable!5196 (h!67704 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344327 () Bool)

(declare-fun e!3318210 () (InoxSet Context!8822))

(assert (=> b!5344327 (= e!3318210 call!382023)))

(declare-fun b!5344328 () Bool)

(assert (=> b!5344328 (= e!3318210 ((as const (Array Context!8822 Bool)) false))))

(declare-fun bm!382018 () Bool)

(assert (=> bm!382018 (= call!382023 (derivationStepZipperDown!475 (h!67704 (exprs!4911 (h!67706 zl!343))) (Context!8823 (t!374597 (exprs!4911 (h!67706 zl!343)))) (h!67705 s!2326)))))

(declare-fun b!5344329 () Bool)

(assert (=> b!5344329 (= e!3318211 e!3318210)))

(declare-fun c!930037 () Bool)

(assert (=> b!5344329 (= c!930037 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343))))))

(assert (= (and d!1714399 res!2267347) b!5344326))

(assert (= (and d!1714399 c!930036) b!5344325))

(assert (= (and d!1714399 (not c!930036)) b!5344329))

(assert (= (and b!5344329 c!930037) b!5344327))

(assert (= (and b!5344329 (not c!930037)) b!5344328))

(assert (= (or b!5344325 b!5344327) bm!382018))

(declare-fun m!6376318 () Bool)

(assert (=> b!5344325 m!6376318))

(assert (=> b!5344326 m!6375688))

(declare-fun m!6376320 () Bool)

(assert (=> bm!382018 m!6376320))

(assert (=> b!5343578 d!1714399))

(declare-fun d!1714401 () Bool)

(declare-fun c!930038 () Bool)

(declare-fun e!3318215 () Bool)

(assert (=> d!1714401 (= c!930038 e!3318215)))

(declare-fun res!2267348 () Bool)

(assert (=> d!1714401 (=> (not res!2267348) (not e!3318215))))

(assert (=> d!1714401 (= res!2267348 ((_ is Cons!61256) (exprs!4911 lt!2178942)))))

(declare-fun e!3318214 () (InoxSet Context!8822))

(assert (=> d!1714401 (= (derivationStepZipperUp!399 lt!2178942 (h!67705 s!2326)) e!3318214)))

(declare-fun b!5344330 () Bool)

(declare-fun call!382024 () (InoxSet Context!8822))

(assert (=> b!5344330 (= e!3318214 ((_ map or) call!382024 (derivationStepZipperUp!399 (Context!8823 (t!374597 (exprs!4911 lt!2178942))) (h!67705 s!2326))))))

(declare-fun b!5344331 () Bool)

(assert (=> b!5344331 (= e!3318215 (nullable!5196 (h!67704 (exprs!4911 lt!2178942))))))

(declare-fun b!5344332 () Bool)

(declare-fun e!3318213 () (InoxSet Context!8822))

(assert (=> b!5344332 (= e!3318213 call!382024)))

(declare-fun b!5344333 () Bool)

(assert (=> b!5344333 (= e!3318213 ((as const (Array Context!8822 Bool)) false))))

(declare-fun bm!382019 () Bool)

(assert (=> bm!382019 (= call!382024 (derivationStepZipperDown!475 (h!67704 (exprs!4911 lt!2178942)) (Context!8823 (t!374597 (exprs!4911 lt!2178942))) (h!67705 s!2326)))))

(declare-fun b!5344334 () Bool)

(assert (=> b!5344334 (= e!3318214 e!3318213)))

(declare-fun c!930039 () Bool)

(assert (=> b!5344334 (= c!930039 ((_ is Cons!61256) (exprs!4911 lt!2178942)))))

(assert (= (and d!1714401 res!2267348) b!5344331))

(assert (= (and d!1714401 c!930038) b!5344330))

(assert (= (and d!1714401 (not c!930038)) b!5344334))

(assert (= (and b!5344334 c!930039) b!5344332))

(assert (= (and b!5344334 (not c!930039)) b!5344333))

(assert (= (or b!5344330 b!5344332) bm!382019))

(declare-fun m!6376322 () Bool)

(assert (=> b!5344330 m!6376322))

(declare-fun m!6376324 () Bool)

(assert (=> b!5344331 m!6376324))

(declare-fun m!6376326 () Bool)

(assert (=> bm!382019 m!6376326))

(assert (=> b!5343578 d!1714401))

(declare-fun d!1714403 () Bool)

(declare-fun lambda!274238 () Int)

(declare-fun forall!14448 (List!61380 Int) Bool)

(assert (=> d!1714403 (= (inv!80814 setElem!34501) (forall!14448 (exprs!4911 setElem!34501) lambda!274238))))

(declare-fun bs!1239100 () Bool)

(assert (= bs!1239100 d!1714403))

(declare-fun m!6376328 () Bool)

(assert (=> bs!1239100 m!6376328))

(assert (=> setNonEmpty!34501 d!1714403))

(declare-fun e!3318216 () Bool)

(declare-fun b!5344335 () Bool)

(assert (=> b!5344335 (= e!3318216 (matchR!7212 (derivativeStep!4191 (Concat!23872 lt!2178958 (regTwo!30566 r!7292)) (head!11458 s!2326)) (tail!10555 s!2326)))))

(declare-fun d!1714405 () Bool)

(declare-fun e!3318219 () Bool)

(assert (=> d!1714405 e!3318219))

(declare-fun c!930040 () Bool)

(assert (=> d!1714405 (= c!930040 ((_ is EmptyExpr!15027) (Concat!23872 lt!2178958 (regTwo!30566 r!7292))))))

(declare-fun lt!2179085 () Bool)

(assert (=> d!1714405 (= lt!2179085 e!3318216)))

(declare-fun c!930042 () Bool)

(assert (=> d!1714405 (= c!930042 (isEmpty!33232 s!2326))))

(assert (=> d!1714405 (validRegex!6763 (Concat!23872 lt!2178958 (regTwo!30566 r!7292)))))

(assert (=> d!1714405 (= (matchR!7212 (Concat!23872 lt!2178958 (regTwo!30566 r!7292)) s!2326) lt!2179085)))

(declare-fun e!3318217 () Bool)

(declare-fun b!5344336 () Bool)

(assert (=> b!5344336 (= e!3318217 (not (= (head!11458 s!2326) (c!929823 (Concat!23872 lt!2178958 (regTwo!30566 r!7292))))))))

(declare-fun b!5344337 () Bool)

(declare-fun res!2267354 () Bool)

(declare-fun e!3318221 () Bool)

(assert (=> b!5344337 (=> res!2267354 e!3318221)))

(declare-fun e!3318218 () Bool)

(assert (=> b!5344337 (= res!2267354 e!3318218)))

(declare-fun res!2267355 () Bool)

(assert (=> b!5344337 (=> (not res!2267355) (not e!3318218))))

(assert (=> b!5344337 (= res!2267355 lt!2179085)))

(declare-fun b!5344338 () Bool)

(declare-fun e!3318222 () Bool)

(assert (=> b!5344338 (= e!3318221 e!3318222)))

(declare-fun res!2267350 () Bool)

(assert (=> b!5344338 (=> (not res!2267350) (not e!3318222))))

(assert (=> b!5344338 (= res!2267350 (not lt!2179085))))

(declare-fun b!5344339 () Bool)

(assert (=> b!5344339 (= e!3318216 (nullable!5196 (Concat!23872 lt!2178958 (regTwo!30566 r!7292))))))

(declare-fun b!5344340 () Bool)

(declare-fun e!3318220 () Bool)

(assert (=> b!5344340 (= e!3318219 e!3318220)))

(declare-fun c!930041 () Bool)

(assert (=> b!5344340 (= c!930041 ((_ is EmptyLang!15027) (Concat!23872 lt!2178958 (regTwo!30566 r!7292))))))

(declare-fun b!5344341 () Bool)

(declare-fun res!2267351 () Bool)

(assert (=> b!5344341 (=> res!2267351 e!3318221)))

(assert (=> b!5344341 (= res!2267351 (not ((_ is ElementMatch!15027) (Concat!23872 lt!2178958 (regTwo!30566 r!7292)))))))

(assert (=> b!5344341 (= e!3318220 e!3318221)))

(declare-fun b!5344342 () Bool)

(declare-fun res!2267353 () Bool)

(assert (=> b!5344342 (=> (not res!2267353) (not e!3318218))))

(assert (=> b!5344342 (= res!2267353 (isEmpty!33232 (tail!10555 s!2326)))))

(declare-fun b!5344343 () Bool)

(assert (=> b!5344343 (= e!3318218 (= (head!11458 s!2326) (c!929823 (Concat!23872 lt!2178958 (regTwo!30566 r!7292)))))))

(declare-fun b!5344344 () Bool)

(declare-fun res!2267356 () Bool)

(assert (=> b!5344344 (=> res!2267356 e!3318217)))

(assert (=> b!5344344 (= res!2267356 (not (isEmpty!33232 (tail!10555 s!2326))))))

(declare-fun b!5344345 () Bool)

(declare-fun res!2267352 () Bool)

(assert (=> b!5344345 (=> (not res!2267352) (not e!3318218))))

(declare-fun call!382025 () Bool)

(assert (=> b!5344345 (= res!2267352 (not call!382025))))

(declare-fun bm!382020 () Bool)

(assert (=> bm!382020 (= call!382025 (isEmpty!33232 s!2326))))

(declare-fun b!5344346 () Bool)

(assert (=> b!5344346 (= e!3318222 e!3318217)))

(declare-fun res!2267349 () Bool)

(assert (=> b!5344346 (=> res!2267349 e!3318217)))

(assert (=> b!5344346 (= res!2267349 call!382025)))

(declare-fun b!5344347 () Bool)

(assert (=> b!5344347 (= e!3318220 (not lt!2179085))))

(declare-fun b!5344348 () Bool)

(assert (=> b!5344348 (= e!3318219 (= lt!2179085 call!382025))))

(assert (= (and d!1714405 c!930042) b!5344339))

(assert (= (and d!1714405 (not c!930042)) b!5344335))

(assert (= (and d!1714405 c!930040) b!5344348))

(assert (= (and d!1714405 (not c!930040)) b!5344340))

(assert (= (and b!5344340 c!930041) b!5344347))

(assert (= (and b!5344340 (not c!930041)) b!5344341))

(assert (= (and b!5344341 (not res!2267351)) b!5344337))

(assert (= (and b!5344337 res!2267355) b!5344345))

(assert (= (and b!5344345 res!2267352) b!5344342))

(assert (= (and b!5344342 res!2267353) b!5344343))

(assert (= (and b!5344337 (not res!2267354)) b!5344338))

(assert (= (and b!5344338 res!2267350) b!5344346))

(assert (= (and b!5344346 (not res!2267349)) b!5344344))

(assert (= (and b!5344344 (not res!2267356)) b!5344336))

(assert (= (or b!5344348 b!5344345 b!5344346) bm!382020))

(assert (=> d!1714405 m!6376256))

(declare-fun m!6376330 () Bool)

(assert (=> d!1714405 m!6376330))

(assert (=> bm!382020 m!6376256))

(assert (=> b!5344344 m!6376260))

(assert (=> b!5344344 m!6376260))

(assert (=> b!5344344 m!6376262))

(assert (=> b!5344336 m!6376264))

(assert (=> b!5344335 m!6376264))

(assert (=> b!5344335 m!6376264))

(declare-fun m!6376332 () Bool)

(assert (=> b!5344335 m!6376332))

(assert (=> b!5344335 m!6376260))

(assert (=> b!5344335 m!6376332))

(assert (=> b!5344335 m!6376260))

(declare-fun m!6376334 () Bool)

(assert (=> b!5344335 m!6376334))

(declare-fun m!6376336 () Bool)

(assert (=> b!5344339 m!6376336))

(assert (=> b!5344343 m!6376264))

(assert (=> b!5344342 m!6376260))

(assert (=> b!5344342 m!6376260))

(assert (=> b!5344342 m!6376262))

(assert (=> b!5343577 d!1714405))

(declare-fun d!1714407 () Bool)

(assert (=> d!1714407 (= (nullable!5196 (regOne!30566 (regOne!30566 r!7292))) (nullableFct!1522 (regOne!30566 (regOne!30566 r!7292))))))

(declare-fun bs!1239101 () Bool)

(assert (= bs!1239101 d!1714407))

(declare-fun m!6376338 () Bool)

(assert (=> bs!1239101 m!6376338))

(assert (=> b!5343598 d!1714407))

(declare-fun b!5344355 () Bool)

(assert (=> b!5344355 true))

(declare-fun bs!1239102 () Bool)

(declare-fun b!5344357 () Bool)

(assert (= bs!1239102 (and b!5344357 b!5344355)))

(declare-fun lambda!274246 () Int)

(declare-fun lt!2179096 () Int)

(declare-fun lt!2179094 () Int)

(declare-fun lambda!274247 () Int)

(assert (=> bs!1239102 (= (= lt!2179094 lt!2179096) (= lambda!274247 lambda!274246))))

(assert (=> b!5344357 true))

(declare-fun d!1714409 () Bool)

(declare-fun e!3318227 () Bool)

(assert (=> d!1714409 e!3318227))

(declare-fun res!2267359 () Bool)

(assert (=> d!1714409 (=> (not res!2267359) (not e!3318227))))

(assert (=> d!1714409 (= res!2267359 (>= lt!2179094 0))))

(declare-fun e!3318228 () Int)

(assert (=> d!1714409 (= lt!2179094 e!3318228)))

(declare-fun c!930051 () Bool)

(assert (=> d!1714409 (= c!930051 ((_ is Cons!61258) lt!2178941))))

(assert (=> d!1714409 (= (zipperDepth!136 lt!2178941) lt!2179094)))

(assert (=> b!5344355 (= e!3318228 lt!2179096)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!76 (Context!8822) Int)

(assert (=> b!5344355 (= lt!2179096 (maxBigInt!0 (contextDepth!76 (h!67706 lt!2178941)) (zipperDepth!136 (t!374599 lt!2178941))))))

(declare-fun lt!2179097 () Unit!153626)

(declare-fun lambda!274245 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!70 (List!61382 Int Int Int) Unit!153626)

(assert (=> b!5344355 (= lt!2179097 (lemmaForallContextDepthBiggerThanTransitive!70 (t!374599 lt!2178941) lt!2179096 (zipperDepth!136 (t!374599 lt!2178941)) lambda!274245))))

(declare-fun forall!14449 (List!61382 Int) Bool)

(assert (=> b!5344355 (forall!14449 (t!374599 lt!2178941) lambda!274246)))

(declare-fun lt!2179095 () Unit!153626)

(assert (=> b!5344355 (= lt!2179095 lt!2179097)))

(declare-fun b!5344356 () Bool)

(assert (=> b!5344356 (= e!3318228 0)))

(assert (=> b!5344357 (= e!3318227 (forall!14449 lt!2178941 lambda!274247))))

(assert (= (and d!1714409 c!930051) b!5344355))

(assert (= (and d!1714409 (not c!930051)) b!5344356))

(assert (= (and d!1714409 res!2267359) b!5344357))

(declare-fun m!6376340 () Bool)

(assert (=> b!5344355 m!6376340))

(declare-fun m!6376342 () Bool)

(assert (=> b!5344355 m!6376342))

(declare-fun m!6376344 () Bool)

(assert (=> b!5344355 m!6376344))

(assert (=> b!5344355 m!6376344))

(assert (=> b!5344355 m!6376340))

(declare-fun m!6376346 () Bool)

(assert (=> b!5344355 m!6376346))

(assert (=> b!5344355 m!6376340))

(declare-fun m!6376348 () Bool)

(assert (=> b!5344355 m!6376348))

(declare-fun m!6376350 () Bool)

(assert (=> b!5344357 m!6376350))

(assert (=> b!5343576 d!1714409))

(declare-fun bs!1239103 () Bool)

(declare-fun b!5344360 () Bool)

(assert (= bs!1239103 (and b!5344360 b!5344355)))

(declare-fun lambda!274248 () Int)

(assert (=> bs!1239103 (= lambda!274248 lambda!274245)))

(declare-fun lt!2179100 () Int)

(declare-fun lambda!274249 () Int)

(assert (=> bs!1239103 (= (= lt!2179100 lt!2179096) (= lambda!274249 lambda!274246))))

(declare-fun bs!1239104 () Bool)

(assert (= bs!1239104 (and b!5344360 b!5344357)))

(assert (=> bs!1239104 (= (= lt!2179100 lt!2179094) (= lambda!274249 lambda!274247))))

(assert (=> b!5344360 true))

(declare-fun bs!1239105 () Bool)

(declare-fun b!5344362 () Bool)

(assert (= bs!1239105 (and b!5344362 b!5344355)))

(declare-fun lt!2179098 () Int)

(declare-fun lambda!274250 () Int)

(assert (=> bs!1239105 (= (= lt!2179098 lt!2179096) (= lambda!274250 lambda!274246))))

(declare-fun bs!1239106 () Bool)

(assert (= bs!1239106 (and b!5344362 b!5344357)))

(assert (=> bs!1239106 (= (= lt!2179098 lt!2179094) (= lambda!274250 lambda!274247))))

(declare-fun bs!1239107 () Bool)

(assert (= bs!1239107 (and b!5344362 b!5344360)))

(assert (=> bs!1239107 (= (= lt!2179098 lt!2179100) (= lambda!274250 lambda!274249))))

(assert (=> b!5344362 true))

(declare-fun d!1714411 () Bool)

(declare-fun e!3318229 () Bool)

(assert (=> d!1714411 e!3318229))

(declare-fun res!2267360 () Bool)

(assert (=> d!1714411 (=> (not res!2267360) (not e!3318229))))

(assert (=> d!1714411 (= res!2267360 (>= lt!2179098 0))))

(declare-fun e!3318230 () Int)

(assert (=> d!1714411 (= lt!2179098 e!3318230)))

(declare-fun c!930052 () Bool)

(assert (=> d!1714411 (= c!930052 ((_ is Cons!61258) zl!343))))

(assert (=> d!1714411 (= (zipperDepth!136 zl!343) lt!2179098)))

(assert (=> b!5344360 (= e!3318230 lt!2179100)))

(assert (=> b!5344360 (= lt!2179100 (maxBigInt!0 (contextDepth!76 (h!67706 zl!343)) (zipperDepth!136 (t!374599 zl!343))))))

(declare-fun lt!2179101 () Unit!153626)

(assert (=> b!5344360 (= lt!2179101 (lemmaForallContextDepthBiggerThanTransitive!70 (t!374599 zl!343) lt!2179100 (zipperDepth!136 (t!374599 zl!343)) lambda!274248))))

(assert (=> b!5344360 (forall!14449 (t!374599 zl!343) lambda!274249)))

(declare-fun lt!2179099 () Unit!153626)

(assert (=> b!5344360 (= lt!2179099 lt!2179101)))

(declare-fun b!5344361 () Bool)

(assert (=> b!5344361 (= e!3318230 0)))

(assert (=> b!5344362 (= e!3318229 (forall!14449 zl!343 lambda!274250))))

(assert (= (and d!1714411 c!930052) b!5344360))

(assert (= (and d!1714411 (not c!930052)) b!5344361))

(assert (= (and d!1714411 res!2267360) b!5344362))

(declare-fun m!6376352 () Bool)

(assert (=> b!5344360 m!6376352))

(declare-fun m!6376354 () Bool)

(assert (=> b!5344360 m!6376354))

(declare-fun m!6376356 () Bool)

(assert (=> b!5344360 m!6376356))

(assert (=> b!5344360 m!6376356))

(assert (=> b!5344360 m!6376352))

(declare-fun m!6376358 () Bool)

(assert (=> b!5344360 m!6376358))

(assert (=> b!5344360 m!6376352))

(declare-fun m!6376360 () Bool)

(assert (=> b!5344360 m!6376360))

(declare-fun m!6376362 () Bool)

(assert (=> b!5344362 m!6376362))

(assert (=> b!5343576 d!1714411))

(declare-fun bs!1239108 () Bool)

(declare-fun b!5344396 () Bool)

(assert (= bs!1239108 (and b!5344396 b!5343569)))

(declare-fun lambda!274255 () Int)

(assert (=> bs!1239108 (not (= lambda!274255 lambda!274165))))

(declare-fun bs!1239109 () Bool)

(assert (= bs!1239109 (and b!5344396 d!1714287)))

(assert (=> bs!1239109 (not (= lambda!274255 lambda!274216))))

(assert (=> bs!1239108 (not (= lambda!274255 lambda!274167))))

(assert (=> bs!1239108 (not (= lambda!274255 lambda!274164))))

(assert (=> bs!1239109 (not (= lambda!274255 lambda!274217))))

(declare-fun bs!1239110 () Bool)

(assert (= bs!1239110 (and b!5344396 b!5343595)))

(assert (=> bs!1239110 (not (= lambda!274255 lambda!274161))))

(declare-fun bs!1239111 () Bool)

(assert (= bs!1239111 (and b!5344396 d!1714277)))

(assert (=> bs!1239111 (not (= lambda!274255 lambda!274196))))

(assert (=> bs!1239110 (not (= lambda!274255 lambda!274162))))

(assert (=> bs!1239108 (not (= lambda!274255 lambda!274166))))

(assert (=> b!5344396 true))

(assert (=> b!5344396 true))

(declare-fun bs!1239112 () Bool)

(declare-fun b!5344403 () Bool)

(assert (= bs!1239112 (and b!5344403 b!5343569)))

(declare-fun lambda!274256 () Int)

(assert (=> bs!1239112 (= (and (= (regOne!30566 r!7292) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178947)) (= lambda!274256 lambda!274165))))

(declare-fun bs!1239113 () Bool)

(assert (= bs!1239113 (and b!5344403 d!1714287)))

(assert (=> bs!1239113 (not (= lambda!274256 lambda!274216))))

(assert (=> bs!1239112 (= (and (= (regOne!30566 r!7292) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 r!7292) lt!2178945)) (= lambda!274256 lambda!274167))))

(assert (=> bs!1239112 (not (= lambda!274256 lambda!274164))))

(assert (=> bs!1239113 (= lambda!274256 lambda!274217)))

(declare-fun bs!1239114 () Bool)

(assert (= bs!1239114 (and b!5344403 b!5343595)))

(assert (=> bs!1239114 (not (= lambda!274256 lambda!274161))))

(declare-fun bs!1239115 () Bool)

(assert (= bs!1239115 (and b!5344403 d!1714277)))

(assert (=> bs!1239115 (not (= lambda!274256 lambda!274196))))

(assert (=> bs!1239114 (= lambda!274256 lambda!274162)))

(declare-fun bs!1239116 () Bool)

(assert (= bs!1239116 (and b!5344403 b!5344396)))

(assert (=> bs!1239116 (not (= lambda!274256 lambda!274255))))

(assert (=> bs!1239112 (not (= lambda!274256 lambda!274166))))

(assert (=> b!5344403 true))

(assert (=> b!5344403 true))

(declare-fun b!5344395 () Bool)

(declare-fun c!930063 () Bool)

(assert (=> b!5344395 (= c!930063 ((_ is Union!15027) r!7292))))

(declare-fun e!3318249 () Bool)

(declare-fun e!3318251 () Bool)

(assert (=> b!5344395 (= e!3318249 e!3318251)))

(declare-fun bm!382025 () Bool)

(declare-fun call!382030 () Bool)

(assert (=> bm!382025 (= call!382030 (isEmpty!33232 s!2326))))

(declare-fun e!3318253 () Bool)

(declare-fun call!382031 () Bool)

(assert (=> b!5344396 (= e!3318253 call!382031)))

(declare-fun bm!382026 () Bool)

(declare-fun c!930062 () Bool)

(assert (=> bm!382026 (= call!382031 (Exists!2208 (ite c!930062 lambda!274255 lambda!274256)))))

(declare-fun d!1714413 () Bool)

(declare-fun c!930061 () Bool)

(assert (=> d!1714413 (= c!930061 ((_ is EmptyExpr!15027) r!7292))))

(declare-fun e!3318254 () Bool)

(assert (=> d!1714413 (= (matchRSpec!2130 r!7292 s!2326) e!3318254)))

(declare-fun b!5344397 () Bool)

(declare-fun res!2267379 () Bool)

(assert (=> b!5344397 (=> res!2267379 e!3318253)))

(assert (=> b!5344397 (= res!2267379 call!382030)))

(declare-fun e!3318250 () Bool)

(assert (=> b!5344397 (= e!3318250 e!3318253)))

(declare-fun b!5344398 () Bool)

(declare-fun e!3318252 () Bool)

(assert (=> b!5344398 (= e!3318252 (matchRSpec!2130 (regTwo!30567 r!7292) s!2326))))

(declare-fun b!5344399 () Bool)

(assert (=> b!5344399 (= e!3318254 call!382030)))

(declare-fun b!5344400 () Bool)

(assert (=> b!5344400 (= e!3318249 (= s!2326 (Cons!61257 (c!929823 r!7292) Nil!61257)))))

(declare-fun b!5344401 () Bool)

(assert (=> b!5344401 (= e!3318251 e!3318250)))

(assert (=> b!5344401 (= c!930062 ((_ is Star!15027) r!7292))))

(declare-fun b!5344402 () Bool)

(declare-fun e!3318255 () Bool)

(assert (=> b!5344402 (= e!3318254 e!3318255)))

(declare-fun res!2267378 () Bool)

(assert (=> b!5344402 (= res!2267378 (not ((_ is EmptyLang!15027) r!7292)))))

(assert (=> b!5344402 (=> (not res!2267378) (not e!3318255))))

(assert (=> b!5344403 (= e!3318250 call!382031)))

(declare-fun b!5344404 () Bool)

(assert (=> b!5344404 (= e!3318251 e!3318252)))

(declare-fun res!2267377 () Bool)

(assert (=> b!5344404 (= res!2267377 (matchRSpec!2130 (regOne!30567 r!7292) s!2326))))

(assert (=> b!5344404 (=> res!2267377 e!3318252)))

(declare-fun b!5344405 () Bool)

(declare-fun c!930064 () Bool)

(assert (=> b!5344405 (= c!930064 ((_ is ElementMatch!15027) r!7292))))

(assert (=> b!5344405 (= e!3318255 e!3318249)))

(assert (= (and d!1714413 c!930061) b!5344399))

(assert (= (and d!1714413 (not c!930061)) b!5344402))

(assert (= (and b!5344402 res!2267378) b!5344405))

(assert (= (and b!5344405 c!930064) b!5344400))

(assert (= (and b!5344405 (not c!930064)) b!5344395))

(assert (= (and b!5344395 c!930063) b!5344404))

(assert (= (and b!5344395 (not c!930063)) b!5344401))

(assert (= (and b!5344404 (not res!2267377)) b!5344398))

(assert (= (and b!5344401 c!930062) b!5344397))

(assert (= (and b!5344401 (not c!930062)) b!5344403))

(assert (= (and b!5344397 (not res!2267379)) b!5344396))

(assert (= (or b!5344396 b!5344403) bm!382026))

(assert (= (or b!5344399 b!5344397) bm!382025))

(assert (=> bm!382025 m!6376256))

(declare-fun m!6376364 () Bool)

(assert (=> bm!382026 m!6376364))

(declare-fun m!6376366 () Bool)

(assert (=> b!5344398 m!6376366))

(declare-fun m!6376368 () Bool)

(assert (=> b!5344404 m!6376368))

(assert (=> b!5343597 d!1714413))

(declare-fun b!5344406 () Bool)

(declare-fun e!3318256 () Bool)

(assert (=> b!5344406 (= e!3318256 (matchR!7212 (derivativeStep!4191 r!7292 (head!11458 s!2326)) (tail!10555 s!2326)))))

(declare-fun d!1714415 () Bool)

(declare-fun e!3318259 () Bool)

(assert (=> d!1714415 e!3318259))

(declare-fun c!930065 () Bool)

(assert (=> d!1714415 (= c!930065 ((_ is EmptyExpr!15027) r!7292))))

(declare-fun lt!2179102 () Bool)

(assert (=> d!1714415 (= lt!2179102 e!3318256)))

(declare-fun c!930067 () Bool)

(assert (=> d!1714415 (= c!930067 (isEmpty!33232 s!2326))))

(assert (=> d!1714415 (validRegex!6763 r!7292)))

(assert (=> d!1714415 (= (matchR!7212 r!7292 s!2326) lt!2179102)))

(declare-fun b!5344407 () Bool)

(declare-fun e!3318257 () Bool)

(assert (=> b!5344407 (= e!3318257 (not (= (head!11458 s!2326) (c!929823 r!7292))))))

(declare-fun b!5344408 () Bool)

(declare-fun res!2267385 () Bool)

(declare-fun e!3318261 () Bool)

(assert (=> b!5344408 (=> res!2267385 e!3318261)))

(declare-fun e!3318258 () Bool)

(assert (=> b!5344408 (= res!2267385 e!3318258)))

(declare-fun res!2267386 () Bool)

(assert (=> b!5344408 (=> (not res!2267386) (not e!3318258))))

(assert (=> b!5344408 (= res!2267386 lt!2179102)))

(declare-fun b!5344409 () Bool)

(declare-fun e!3318262 () Bool)

(assert (=> b!5344409 (= e!3318261 e!3318262)))

(declare-fun res!2267381 () Bool)

(assert (=> b!5344409 (=> (not res!2267381) (not e!3318262))))

(assert (=> b!5344409 (= res!2267381 (not lt!2179102))))

(declare-fun b!5344410 () Bool)

(assert (=> b!5344410 (= e!3318256 (nullable!5196 r!7292))))

(declare-fun b!5344411 () Bool)

(declare-fun e!3318260 () Bool)

(assert (=> b!5344411 (= e!3318259 e!3318260)))

(declare-fun c!930066 () Bool)

(assert (=> b!5344411 (= c!930066 ((_ is EmptyLang!15027) r!7292))))

(declare-fun b!5344412 () Bool)

(declare-fun res!2267382 () Bool)

(assert (=> b!5344412 (=> res!2267382 e!3318261)))

(assert (=> b!5344412 (= res!2267382 (not ((_ is ElementMatch!15027) r!7292)))))

(assert (=> b!5344412 (= e!3318260 e!3318261)))

(declare-fun b!5344413 () Bool)

(declare-fun res!2267384 () Bool)

(assert (=> b!5344413 (=> (not res!2267384) (not e!3318258))))

(assert (=> b!5344413 (= res!2267384 (isEmpty!33232 (tail!10555 s!2326)))))

(declare-fun b!5344414 () Bool)

(assert (=> b!5344414 (= e!3318258 (= (head!11458 s!2326) (c!929823 r!7292)))))

(declare-fun b!5344415 () Bool)

(declare-fun res!2267387 () Bool)

(assert (=> b!5344415 (=> res!2267387 e!3318257)))

(assert (=> b!5344415 (= res!2267387 (not (isEmpty!33232 (tail!10555 s!2326))))))

(declare-fun b!5344416 () Bool)

(declare-fun res!2267383 () Bool)

(assert (=> b!5344416 (=> (not res!2267383) (not e!3318258))))

(declare-fun call!382032 () Bool)

(assert (=> b!5344416 (= res!2267383 (not call!382032))))

(declare-fun bm!382027 () Bool)

(assert (=> bm!382027 (= call!382032 (isEmpty!33232 s!2326))))

(declare-fun b!5344417 () Bool)

(assert (=> b!5344417 (= e!3318262 e!3318257)))

(declare-fun res!2267380 () Bool)

(assert (=> b!5344417 (=> res!2267380 e!3318257)))

(assert (=> b!5344417 (= res!2267380 call!382032)))

(declare-fun b!5344418 () Bool)

(assert (=> b!5344418 (= e!3318260 (not lt!2179102))))

(declare-fun b!5344419 () Bool)

(assert (=> b!5344419 (= e!3318259 (= lt!2179102 call!382032))))

(assert (= (and d!1714415 c!930067) b!5344410))

(assert (= (and d!1714415 (not c!930067)) b!5344406))

(assert (= (and d!1714415 c!930065) b!5344419))

(assert (= (and d!1714415 (not c!930065)) b!5344411))

(assert (= (and b!5344411 c!930066) b!5344418))

(assert (= (and b!5344411 (not c!930066)) b!5344412))

(assert (= (and b!5344412 (not res!2267382)) b!5344408))

(assert (= (and b!5344408 res!2267386) b!5344416))

(assert (= (and b!5344416 res!2267383) b!5344413))

(assert (= (and b!5344413 res!2267384) b!5344414))

(assert (= (and b!5344408 (not res!2267385)) b!5344409))

(assert (= (and b!5344409 res!2267381) b!5344417))

(assert (= (and b!5344417 (not res!2267380)) b!5344415))

(assert (= (and b!5344415 (not res!2267387)) b!5344407))

(assert (= (or b!5344419 b!5344416 b!5344417) bm!382027))

(assert (=> d!1714415 m!6376256))

(assert (=> d!1714415 m!6375588))

(assert (=> bm!382027 m!6376256))

(assert (=> b!5344415 m!6376260))

(assert (=> b!5344415 m!6376260))

(assert (=> b!5344415 m!6376262))

(assert (=> b!5344407 m!6376264))

(assert (=> b!5344406 m!6376264))

(assert (=> b!5344406 m!6376264))

(declare-fun m!6376370 () Bool)

(assert (=> b!5344406 m!6376370))

(assert (=> b!5344406 m!6376260))

(assert (=> b!5344406 m!6376370))

(assert (=> b!5344406 m!6376260))

(declare-fun m!6376372 () Bool)

(assert (=> b!5344406 m!6376372))

(declare-fun m!6376374 () Bool)

(assert (=> b!5344410 m!6376374))

(assert (=> b!5344414 m!6376264))

(assert (=> b!5344413 m!6376260))

(assert (=> b!5344413 m!6376260))

(assert (=> b!5344413 m!6376262))

(assert (=> b!5343597 d!1714415))

(declare-fun d!1714417 () Bool)

(assert (=> d!1714417 (= (matchR!7212 r!7292 s!2326) (matchRSpec!2130 r!7292 s!2326))))

(declare-fun lt!2179105 () Unit!153626)

(declare-fun choose!40069 (Regex!15027 List!61381) Unit!153626)

(assert (=> d!1714417 (= lt!2179105 (choose!40069 r!7292 s!2326))))

(assert (=> d!1714417 (validRegex!6763 r!7292)))

(assert (=> d!1714417 (= (mainMatchTheorem!2130 r!7292 s!2326) lt!2179105)))

(declare-fun bs!1239117 () Bool)

(assert (= bs!1239117 d!1714417))

(assert (=> bs!1239117 m!6375596))

(assert (=> bs!1239117 m!6375594))

(declare-fun m!6376376 () Bool)

(assert (=> bs!1239117 m!6376376))

(assert (=> bs!1239117 m!6375588))

(assert (=> b!5343597 d!1714417))

(declare-fun d!1714419 () Bool)

(declare-fun c!930068 () Bool)

(assert (=> d!1714419 (= c!930068 (isEmpty!33232 (t!374598 s!2326)))))

(declare-fun e!3318263 () Bool)

(assert (=> d!1714419 (= (matchZipper!1271 lt!2178953 (t!374598 s!2326)) e!3318263)))

(declare-fun b!5344420 () Bool)

(assert (=> b!5344420 (= e!3318263 (nullableZipper!1370 lt!2178953))))

(declare-fun b!5344421 () Bool)

(assert (=> b!5344421 (= e!3318263 (matchZipper!1271 (derivationStepZipper!1268 lt!2178953 (head!11458 (t!374598 s!2326))) (tail!10555 (t!374598 s!2326))))))

(assert (= (and d!1714419 c!930068) b!5344420))

(assert (= (and d!1714419 (not c!930068)) b!5344421))

(assert (=> d!1714419 m!6376200))

(declare-fun m!6376378 () Bool)

(assert (=> b!5344420 m!6376378))

(assert (=> b!5344421 m!6376204))

(assert (=> b!5344421 m!6376204))

(declare-fun m!6376380 () Bool)

(assert (=> b!5344421 m!6376380))

(assert (=> b!5344421 m!6376208))

(assert (=> b!5344421 m!6376380))

(assert (=> b!5344421 m!6376208))

(declare-fun m!6376382 () Bool)

(assert (=> b!5344421 m!6376382))

(assert (=> b!5343575 d!1714419))

(declare-fun d!1714421 () Bool)

(declare-fun c!930069 () Bool)

(assert (=> d!1714421 (= c!930069 (isEmpty!33232 (t!374598 s!2326)))))

(declare-fun e!3318264 () Bool)

(assert (=> d!1714421 (= (matchZipper!1271 lt!2178955 (t!374598 s!2326)) e!3318264)))

(declare-fun b!5344422 () Bool)

(assert (=> b!5344422 (= e!3318264 (nullableZipper!1370 lt!2178955))))

(declare-fun b!5344423 () Bool)

(assert (=> b!5344423 (= e!3318264 (matchZipper!1271 (derivationStepZipper!1268 lt!2178955 (head!11458 (t!374598 s!2326))) (tail!10555 (t!374598 s!2326))))))

(assert (= (and d!1714421 c!930069) b!5344422))

(assert (= (and d!1714421 (not c!930069)) b!5344423))

(assert (=> d!1714421 m!6376200))

(declare-fun m!6376384 () Bool)

(assert (=> b!5344422 m!6376384))

(assert (=> b!5344423 m!6376204))

(assert (=> b!5344423 m!6376204))

(declare-fun m!6376386 () Bool)

(assert (=> b!5344423 m!6376386))

(assert (=> b!5344423 m!6376208))

(assert (=> b!5344423 m!6376386))

(assert (=> b!5344423 m!6376208))

(declare-fun m!6376388 () Bool)

(assert (=> b!5344423 m!6376388))

(assert (=> b!5343575 d!1714421))

(declare-fun d!1714423 () Bool)

(declare-fun lt!2179108 () Regex!15027)

(assert (=> d!1714423 (validRegex!6763 lt!2179108)))

(assert (=> d!1714423 (= lt!2179108 (generalisedUnion!956 (unfocusZipperList!469 zl!343)))))

(assert (=> d!1714423 (= (unfocusZipper!769 zl!343) lt!2179108)))

(declare-fun bs!1239118 () Bool)

(assert (= bs!1239118 d!1714423))

(declare-fun m!6376390 () Bool)

(assert (=> bs!1239118 m!6376390))

(assert (=> bs!1239118 m!6375700))

(assert (=> bs!1239118 m!6375700))

(assert (=> bs!1239118 m!6375702))

(assert (=> b!5343596 d!1714423))

(declare-fun bs!1239119 () Bool)

(declare-fun d!1714425 () Bool)

(assert (= bs!1239119 (and d!1714425 d!1714403)))

(declare-fun lambda!274259 () Int)

(assert (=> bs!1239119 (= lambda!274259 lambda!274238)))

(declare-fun b!5344444 () Bool)

(declare-fun e!3318278 () Bool)

(declare-fun lt!2179111 () Regex!15027)

(declare-fun head!11459 (List!61380) Regex!15027)

(assert (=> b!5344444 (= e!3318278 (= lt!2179111 (head!11459 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344445 () Bool)

(declare-fun e!3318280 () Bool)

(assert (=> b!5344445 (= e!3318280 (isEmpty!33228 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344446 () Bool)

(declare-fun e!3318281 () Regex!15027)

(assert (=> b!5344446 (= e!3318281 EmptyExpr!15027)))

(declare-fun b!5344447 () Bool)

(declare-fun e!3318282 () Bool)

(declare-fun e!3318277 () Bool)

(assert (=> b!5344447 (= e!3318282 e!3318277)))

(declare-fun c!930079 () Bool)

(assert (=> b!5344447 (= c!930079 (isEmpty!33228 (exprs!4911 (h!67706 zl!343))))))

(declare-fun b!5344448 () Bool)

(declare-fun e!3318279 () Regex!15027)

(assert (=> b!5344448 (= e!3318279 e!3318281)))

(declare-fun c!930081 () Bool)

(assert (=> b!5344448 (= c!930081 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343))))))

(declare-fun b!5344449 () Bool)

(assert (=> b!5344449 (= e!3318277 e!3318278)))

(declare-fun c!930080 () Bool)

(declare-fun tail!10556 (List!61380) List!61380)

(assert (=> b!5344449 (= c!930080 (isEmpty!33228 (tail!10556 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344450 () Bool)

(declare-fun isEmptyExpr!905 (Regex!15027) Bool)

(assert (=> b!5344450 (= e!3318277 (isEmptyExpr!905 lt!2179111))))

(declare-fun b!5344451 () Bool)

(assert (=> b!5344451 (= e!3318279 (h!67704 (exprs!4911 (h!67706 zl!343))))))

(declare-fun b!5344452 () Bool)

(declare-fun isConcat!428 (Regex!15027) Bool)

(assert (=> b!5344452 (= e!3318278 (isConcat!428 lt!2179111))))

(assert (=> d!1714425 e!3318282))

(declare-fun res!2267392 () Bool)

(assert (=> d!1714425 (=> (not res!2267392) (not e!3318282))))

(assert (=> d!1714425 (= res!2267392 (validRegex!6763 lt!2179111))))

(assert (=> d!1714425 (= lt!2179111 e!3318279)))

(declare-fun c!930078 () Bool)

(assert (=> d!1714425 (= c!930078 e!3318280)))

(declare-fun res!2267393 () Bool)

(assert (=> d!1714425 (=> (not res!2267393) (not e!3318280))))

(assert (=> d!1714425 (= res!2267393 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343))))))

(assert (=> d!1714425 (forall!14448 (exprs!4911 (h!67706 zl!343)) lambda!274259)))

(assert (=> d!1714425 (= (generalisedConcat!696 (exprs!4911 (h!67706 zl!343))) lt!2179111)))

(declare-fun b!5344453 () Bool)

(assert (=> b!5344453 (= e!3318281 (Concat!23872 (h!67704 (exprs!4911 (h!67706 zl!343))) (generalisedConcat!696 (t!374597 (exprs!4911 (h!67706 zl!343))))))))

(assert (= (and d!1714425 res!2267393) b!5344445))

(assert (= (and d!1714425 c!930078) b!5344451))

(assert (= (and d!1714425 (not c!930078)) b!5344448))

(assert (= (and b!5344448 c!930081) b!5344453))

(assert (= (and b!5344448 (not c!930081)) b!5344446))

(assert (= (and d!1714425 res!2267392) b!5344447))

(assert (= (and b!5344447 c!930079) b!5344450))

(assert (= (and b!5344447 (not c!930079)) b!5344449))

(assert (= (and b!5344449 c!930080) b!5344444))

(assert (= (and b!5344449 (not c!930080)) b!5344452))

(assert (=> b!5344445 m!6375660))

(declare-fun m!6376392 () Bool)

(assert (=> b!5344452 m!6376392))

(declare-fun m!6376394 () Bool)

(assert (=> d!1714425 m!6376394))

(declare-fun m!6376396 () Bool)

(assert (=> d!1714425 m!6376396))

(declare-fun m!6376398 () Bool)

(assert (=> b!5344449 m!6376398))

(assert (=> b!5344449 m!6376398))

(declare-fun m!6376400 () Bool)

(assert (=> b!5344449 m!6376400))

(assert (=> b!5344453 m!6375638))

(declare-fun m!6376402 () Bool)

(assert (=> b!5344444 m!6376402))

(declare-fun m!6376404 () Bool)

(assert (=> b!5344447 m!6376404))

(declare-fun m!6376406 () Bool)

(assert (=> b!5344450 m!6376406))

(assert (=> b!5343584 d!1714425))

(declare-fun call!382038 () List!61380)

(declare-fun call!382034 () (InoxSet Context!8822))

(declare-fun c!930085 () Bool)

(declare-fun bm!382028 () Bool)

(assert (=> bm!382028 (= call!382034 (derivationStepZipperDown!475 (ite c!930085 (regTwo!30567 (regOne!30566 (regOne!30566 r!7292))) (regOne!30566 (regOne!30566 (regOne!30566 r!7292)))) (ite c!930085 (Context!8823 lt!2178944) (Context!8823 call!382038)) (h!67705 s!2326)))))

(declare-fun b!5344454 () Bool)

(declare-fun e!3318284 () (InoxSet Context!8822))

(assert (=> b!5344454 (= e!3318284 (store ((as const (Array Context!8822 Bool)) false) (Context!8823 lt!2178944) true))))

(declare-fun b!5344455 () Bool)

(declare-fun e!3318288 () (InoxSet Context!8822))

(declare-fun call!382036 () (InoxSet Context!8822))

(assert (=> b!5344455 (= e!3318288 ((_ map or) call!382036 call!382034))))

(declare-fun b!5344456 () Bool)

(declare-fun e!3318287 () (InoxSet Context!8822))

(assert (=> b!5344456 (= e!3318287 ((as const (Array Context!8822 Bool)) false))))

(declare-fun b!5344457 () Bool)

(declare-fun e!3318286 () Bool)

(assert (=> b!5344457 (= e!3318286 (nullable!5196 (regOne!30566 (regOne!30566 (regOne!30566 r!7292)))))))

(declare-fun b!5344458 () Bool)

(declare-fun call!382037 () (InoxSet Context!8822))

(assert (=> b!5344458 (= e!3318287 call!382037)))

(declare-fun d!1714427 () Bool)

(declare-fun c!930082 () Bool)

(assert (=> d!1714427 (= c!930082 (and ((_ is ElementMatch!15027) (regOne!30566 (regOne!30566 r!7292))) (= (c!929823 (regOne!30566 (regOne!30566 r!7292))) (h!67705 s!2326))))))

(assert (=> d!1714427 (= (derivationStepZipperDown!475 (regOne!30566 (regOne!30566 r!7292)) (Context!8823 lt!2178944) (h!67705 s!2326)) e!3318284)))

(declare-fun c!930083 () Bool)

(declare-fun call!382033 () List!61380)

(declare-fun c!930084 () Bool)

(declare-fun bm!382029 () Bool)

(assert (=> bm!382029 (= call!382036 (derivationStepZipperDown!475 (ite c!930085 (regOne!30567 (regOne!30566 (regOne!30566 r!7292))) (ite c!930083 (regTwo!30566 (regOne!30566 (regOne!30566 r!7292))) (ite c!930084 (regOne!30566 (regOne!30566 (regOne!30566 r!7292))) (reg!15356 (regOne!30566 (regOne!30566 r!7292)))))) (ite (or c!930085 c!930083) (Context!8823 lt!2178944) (Context!8823 call!382033)) (h!67705 s!2326)))))

(declare-fun b!5344459 () Bool)

(declare-fun e!3318283 () (InoxSet Context!8822))

(declare-fun call!382035 () (InoxSet Context!8822))

(assert (=> b!5344459 (= e!3318283 ((_ map or) call!382034 call!382035))))

(declare-fun bm!382030 () Bool)

(assert (=> bm!382030 (= call!382033 call!382038)))

(declare-fun b!5344460 () Bool)

(assert (=> b!5344460 (= e!3318284 e!3318288)))

(assert (=> b!5344460 (= c!930085 ((_ is Union!15027) (regOne!30566 (regOne!30566 r!7292))))))

(declare-fun bm!382031 () Bool)

(assert (=> bm!382031 (= call!382037 call!382035)))

(declare-fun bm!382032 () Bool)

(assert (=> bm!382032 (= call!382038 ($colon$colon!1419 (exprs!4911 (Context!8823 lt!2178944)) (ite (or c!930083 c!930084) (regTwo!30566 (regOne!30566 (regOne!30566 r!7292))) (regOne!30566 (regOne!30566 r!7292)))))))

(declare-fun b!5344461 () Bool)

(assert (=> b!5344461 (= c!930083 e!3318286)))

(declare-fun res!2267394 () Bool)

(assert (=> b!5344461 (=> (not res!2267394) (not e!3318286))))

(assert (=> b!5344461 (= res!2267394 ((_ is Concat!23872) (regOne!30566 (regOne!30566 r!7292))))))

(assert (=> b!5344461 (= e!3318288 e!3318283)))

(declare-fun bm!382033 () Bool)

(assert (=> bm!382033 (= call!382035 call!382036)))

(declare-fun b!5344462 () Bool)

(declare-fun e!3318285 () (InoxSet Context!8822))

(assert (=> b!5344462 (= e!3318283 e!3318285)))

(assert (=> b!5344462 (= c!930084 ((_ is Concat!23872) (regOne!30566 (regOne!30566 r!7292))))))

(declare-fun b!5344463 () Bool)

(declare-fun c!930086 () Bool)

(assert (=> b!5344463 (= c!930086 ((_ is Star!15027) (regOne!30566 (regOne!30566 r!7292))))))

(assert (=> b!5344463 (= e!3318285 e!3318287)))

(declare-fun b!5344464 () Bool)

(assert (=> b!5344464 (= e!3318285 call!382037)))

(assert (= (and d!1714427 c!930082) b!5344454))

(assert (= (and d!1714427 (not c!930082)) b!5344460))

(assert (= (and b!5344460 c!930085) b!5344455))

(assert (= (and b!5344460 (not c!930085)) b!5344461))

(assert (= (and b!5344461 res!2267394) b!5344457))

(assert (= (and b!5344461 c!930083) b!5344459))

(assert (= (and b!5344461 (not c!930083)) b!5344462))

(assert (= (and b!5344462 c!930084) b!5344464))

(assert (= (and b!5344462 (not c!930084)) b!5344463))

(assert (= (and b!5344463 c!930086) b!5344458))

(assert (= (and b!5344463 (not c!930086)) b!5344456))

(assert (= (or b!5344464 b!5344458) bm!382030))

(assert (= (or b!5344464 b!5344458) bm!382031))

(assert (= (or b!5344459 bm!382030) bm!382032))

(assert (= (or b!5344459 bm!382031) bm!382033))

(assert (= (or b!5344455 b!5344459) bm!382028))

(assert (= (or b!5344455 bm!382033) bm!382029))

(declare-fun m!6376408 () Bool)

(assert (=> b!5344454 m!6376408))

(declare-fun m!6376410 () Bool)

(assert (=> bm!382032 m!6376410))

(declare-fun m!6376412 () Bool)

(assert (=> b!5344457 m!6376412))

(declare-fun m!6376414 () Bool)

(assert (=> bm!382028 m!6376414))

(declare-fun m!6376416 () Bool)

(assert (=> bm!382029 m!6376416))

(assert (=> b!5343563 d!1714427))

(declare-fun d!1714429 () Bool)

(declare-fun lt!2179114 () Int)

(assert (=> d!1714429 (>= lt!2179114 0)))

(declare-fun e!3318291 () Int)

(assert (=> d!1714429 (= lt!2179114 e!3318291)))

(declare-fun c!930089 () Bool)

(assert (=> d!1714429 (= c!930089 ((_ is Cons!61258) lt!2178941))))

(assert (=> d!1714429 (= (zipperDepthTotal!180 lt!2178941) lt!2179114)))

(declare-fun b!5344469 () Bool)

(assert (=> b!5344469 (= e!3318291 (+ (contextDepthTotal!160 (h!67706 lt!2178941)) (zipperDepthTotal!180 (t!374599 lt!2178941))))))

(declare-fun b!5344470 () Bool)

(assert (=> b!5344470 (= e!3318291 0)))

(assert (= (and d!1714429 c!930089) b!5344469))

(assert (= (and d!1714429 (not c!930089)) b!5344470))

(declare-fun m!6376418 () Bool)

(assert (=> b!5344469 m!6376418))

(declare-fun m!6376420 () Bool)

(assert (=> b!5344469 m!6376420))

(assert (=> b!5343581 d!1714429))

(declare-fun d!1714431 () Bool)

(declare-fun lt!2179115 () Int)

(assert (=> d!1714431 (>= lt!2179115 0)))

(declare-fun e!3318292 () Int)

(assert (=> d!1714431 (= lt!2179115 e!3318292)))

(declare-fun c!930090 () Bool)

(assert (=> d!1714431 (= c!930090 ((_ is Cons!61258) zl!343))))

(assert (=> d!1714431 (= (zipperDepthTotal!180 zl!343) lt!2179115)))

(declare-fun b!5344471 () Bool)

(assert (=> b!5344471 (= e!3318292 (+ (contextDepthTotal!160 (h!67706 zl!343)) (zipperDepthTotal!180 (t!374599 zl!343))))))

(declare-fun b!5344472 () Bool)

(assert (=> b!5344472 (= e!3318292 0)))

(assert (= (and d!1714431 c!930090) b!5344471))

(assert (= (and d!1714431 (not c!930090)) b!5344472))

(assert (=> b!5344471 m!6375708))

(declare-fun m!6376422 () Bool)

(assert (=> b!5344471 m!6376422))

(assert (=> b!5343581 d!1714431))

(declare-fun bs!1239120 () Bool)

(declare-fun d!1714433 () Bool)

(assert (= bs!1239120 (and d!1714433 b!5343569)))

(declare-fun lambda!274260 () Int)

(assert (=> bs!1239120 (not (= lambda!274260 lambda!274165))))

(declare-fun bs!1239121 () Bool)

(assert (= bs!1239121 (and d!1714433 d!1714287)))

(assert (=> bs!1239121 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274260 lambda!274216))))

(assert (=> bs!1239120 (not (= lambda!274260 lambda!274167))))

(assert (=> bs!1239121 (not (= lambda!274260 lambda!274217))))

(declare-fun bs!1239122 () Bool)

(assert (= bs!1239122 (and d!1714433 b!5343595)))

(assert (=> bs!1239122 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274260 lambda!274161))))

(declare-fun bs!1239123 () Bool)

(assert (= bs!1239123 (and d!1714433 d!1714277)))

(assert (=> bs!1239123 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274260 lambda!274196))))

(assert (=> bs!1239122 (not (= lambda!274260 lambda!274162))))

(declare-fun bs!1239124 () Bool)

(assert (= bs!1239124 (and d!1714433 b!5344396)))

(assert (=> bs!1239124 (not (= lambda!274260 lambda!274255))))

(assert (=> bs!1239120 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))) (= lt!2178947 lt!2178945)) (= lambda!274260 lambda!274166))))

(assert (=> bs!1239120 (= lambda!274260 lambda!274164)))

(declare-fun bs!1239125 () Bool)

(assert (= bs!1239125 (and d!1714433 b!5344403)))

(assert (=> bs!1239125 (not (= lambda!274260 lambda!274256))))

(assert (=> d!1714433 true))

(assert (=> d!1714433 true))

(assert (=> d!1714433 true))

(declare-fun lambda!274261 () Int)

(assert (=> bs!1239120 (= lambda!274261 lambda!274165)))

(assert (=> bs!1239121 (not (= lambda!274261 lambda!274216))))

(assert (=> bs!1239120 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))) (= lt!2178947 lt!2178945)) (= lambda!274261 lambda!274167))))

(assert (=> bs!1239121 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274261 lambda!274217))))

(assert (=> bs!1239122 (not (= lambda!274261 lambda!274161))))

(assert (=> bs!1239123 (not (= lambda!274261 lambda!274196))))

(assert (=> bs!1239122 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274261 lambda!274162))))

(declare-fun bs!1239126 () Bool)

(assert (= bs!1239126 d!1714433))

(assert (=> bs!1239126 (not (= lambda!274261 lambda!274260))))

(assert (=> bs!1239124 (not (= lambda!274261 lambda!274255))))

(assert (=> bs!1239120 (not (= lambda!274261 lambda!274166))))

(assert (=> bs!1239120 (not (= lambda!274261 lambda!274164))))

(assert (=> bs!1239125 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274261 lambda!274256))))

(assert (=> d!1714433 true))

(assert (=> d!1714433 true))

(assert (=> d!1714433 true))

(assert (=> d!1714433 (= (Exists!2208 lambda!274260) (Exists!2208 lambda!274261))))

(declare-fun lt!2179116 () Unit!153626)

(assert (=> d!1714433 (= lt!2179116 (choose!40063 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326))))

(assert (=> d!1714433 (validRegex!6763 (regOne!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714433 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326) lt!2179116)))

(declare-fun m!6376424 () Bool)

(assert (=> bs!1239126 m!6376424))

(declare-fun m!6376426 () Bool)

(assert (=> bs!1239126 m!6376426))

(declare-fun m!6376428 () Bool)

(assert (=> bs!1239126 m!6376428))

(declare-fun m!6376430 () Bool)

(assert (=> bs!1239126 m!6376430))

(assert (=> b!5343569 d!1714433))

(declare-fun bs!1239127 () Bool)

(declare-fun d!1714435 () Bool)

(assert (= bs!1239127 (and d!1714435 d!1714403)))

(declare-fun lambda!274262 () Int)

(assert (=> bs!1239127 (= lambda!274262 lambda!274238)))

(declare-fun bs!1239128 () Bool)

(assert (= bs!1239128 (and d!1714435 d!1714425)))

(assert (=> bs!1239128 (= lambda!274262 lambda!274259)))

(declare-fun b!5344473 () Bool)

(declare-fun e!3318294 () Bool)

(declare-fun lt!2179117 () Regex!15027)

(assert (=> b!5344473 (= e!3318294 (= lt!2179117 (head!11459 (t!374597 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun b!5344474 () Bool)

(declare-fun e!3318296 () Bool)

(assert (=> b!5344474 (= e!3318296 (isEmpty!33228 (t!374597 (t!374597 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun b!5344475 () Bool)

(declare-fun e!3318297 () Regex!15027)

(assert (=> b!5344475 (= e!3318297 EmptyExpr!15027)))

(declare-fun b!5344476 () Bool)

(declare-fun e!3318298 () Bool)

(declare-fun e!3318293 () Bool)

(assert (=> b!5344476 (= e!3318298 e!3318293)))

(declare-fun c!930092 () Bool)

(assert (=> b!5344476 (= c!930092 (isEmpty!33228 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344477 () Bool)

(declare-fun e!3318295 () Regex!15027)

(assert (=> b!5344477 (= e!3318295 e!3318297)))

(declare-fun c!930094 () Bool)

(assert (=> b!5344477 (= c!930094 ((_ is Cons!61256) (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344478 () Bool)

(assert (=> b!5344478 (= e!3318293 e!3318294)))

(declare-fun c!930093 () Bool)

(assert (=> b!5344478 (= c!930093 (isEmpty!33228 (tail!10556 (t!374597 (exprs!4911 (h!67706 zl!343))))))))

(declare-fun b!5344479 () Bool)

(assert (=> b!5344479 (= e!3318293 (isEmptyExpr!905 lt!2179117))))

(declare-fun b!5344480 () Bool)

(assert (=> b!5344480 (= e!3318295 (h!67704 (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(declare-fun b!5344481 () Bool)

(assert (=> b!5344481 (= e!3318294 (isConcat!428 lt!2179117))))

(assert (=> d!1714435 e!3318298))

(declare-fun res!2267395 () Bool)

(assert (=> d!1714435 (=> (not res!2267395) (not e!3318298))))

(assert (=> d!1714435 (= res!2267395 (validRegex!6763 lt!2179117))))

(assert (=> d!1714435 (= lt!2179117 e!3318295)))

(declare-fun c!930091 () Bool)

(assert (=> d!1714435 (= c!930091 e!3318296)))

(declare-fun res!2267396 () Bool)

(assert (=> d!1714435 (=> (not res!2267396) (not e!3318296))))

(assert (=> d!1714435 (= res!2267396 ((_ is Cons!61256) (t!374597 (exprs!4911 (h!67706 zl!343)))))))

(assert (=> d!1714435 (forall!14448 (t!374597 (exprs!4911 (h!67706 zl!343))) lambda!274262)))

(assert (=> d!1714435 (= (generalisedConcat!696 (t!374597 (exprs!4911 (h!67706 zl!343)))) lt!2179117)))

(declare-fun b!5344482 () Bool)

(assert (=> b!5344482 (= e!3318297 (Concat!23872 (h!67704 (t!374597 (exprs!4911 (h!67706 zl!343)))) (generalisedConcat!696 (t!374597 (t!374597 (exprs!4911 (h!67706 zl!343)))))))))

(assert (= (and d!1714435 res!2267396) b!5344474))

(assert (= (and d!1714435 c!930091) b!5344480))

(assert (= (and d!1714435 (not c!930091)) b!5344477))

(assert (= (and b!5344477 c!930094) b!5344482))

(assert (= (and b!5344477 (not c!930094)) b!5344475))

(assert (= (and d!1714435 res!2267395) b!5344476))

(assert (= (and b!5344476 c!930092) b!5344479))

(assert (= (and b!5344476 (not c!930092)) b!5344478))

(assert (= (and b!5344478 c!930093) b!5344473))

(assert (= (and b!5344478 (not c!930093)) b!5344481))

(declare-fun m!6376432 () Bool)

(assert (=> b!5344474 m!6376432))

(declare-fun m!6376434 () Bool)

(assert (=> b!5344481 m!6376434))

(declare-fun m!6376436 () Bool)

(assert (=> d!1714435 m!6376436))

(declare-fun m!6376438 () Bool)

(assert (=> d!1714435 m!6376438))

(declare-fun m!6376440 () Bool)

(assert (=> b!5344478 m!6376440))

(assert (=> b!5344478 m!6376440))

(declare-fun m!6376442 () Bool)

(assert (=> b!5344478 m!6376442))

(declare-fun m!6376444 () Bool)

(assert (=> b!5344482 m!6376444))

(declare-fun m!6376446 () Bool)

(assert (=> b!5344473 m!6376446))

(assert (=> b!5344476 m!6375660))

(declare-fun m!6376448 () Bool)

(assert (=> b!5344479 m!6376448))

(assert (=> b!5343569 d!1714435))

(declare-fun d!1714437 () Bool)

(declare-fun c!930095 () Bool)

(assert (=> d!1714437 (= c!930095 (isEmpty!33232 s!2326))))

(declare-fun e!3318299 () Bool)

(assert (=> d!1714437 (= (matchZipper!1271 z!1189 s!2326) e!3318299)))

(declare-fun b!5344483 () Bool)

(assert (=> b!5344483 (= e!3318299 (nullableZipper!1370 z!1189))))

(declare-fun b!5344484 () Bool)

(assert (=> b!5344484 (= e!3318299 (matchZipper!1271 (derivationStepZipper!1268 z!1189 (head!11458 s!2326)) (tail!10555 s!2326)))))

(assert (= (and d!1714437 c!930095) b!5344483))

(assert (= (and d!1714437 (not c!930095)) b!5344484))

(assert (=> d!1714437 m!6376256))

(declare-fun m!6376450 () Bool)

(assert (=> b!5344483 m!6376450))

(assert (=> b!5344484 m!6376264))

(assert (=> b!5344484 m!6376264))

(declare-fun m!6376452 () Bool)

(assert (=> b!5344484 m!6376452))

(assert (=> b!5344484 m!6376260))

(assert (=> b!5344484 m!6376452))

(assert (=> b!5344484 m!6376260))

(declare-fun m!6376454 () Bool)

(assert (=> b!5344484 m!6376454))

(assert (=> b!5343569 d!1714437))

(declare-fun d!1714439 () Bool)

(assert (=> d!1714439 (= (Exists!2208 lambda!274166) (choose!40061 lambda!274166))))

(declare-fun bs!1239129 () Bool)

(assert (= bs!1239129 d!1714439))

(declare-fun m!6376456 () Bool)

(assert (=> bs!1239129 m!6376456))

(assert (=> b!5343569 d!1714439))

(declare-fun bs!1239130 () Bool)

(declare-fun d!1714441 () Bool)

(assert (= bs!1239130 (and d!1714441 d!1714403)))

(declare-fun lambda!274263 () Int)

(assert (=> bs!1239130 (= lambda!274263 lambda!274238)))

(declare-fun bs!1239131 () Bool)

(assert (= bs!1239131 (and d!1714441 d!1714425)))

(assert (=> bs!1239131 (= lambda!274263 lambda!274259)))

(declare-fun bs!1239132 () Bool)

(assert (= bs!1239132 (and d!1714441 d!1714435)))

(assert (=> bs!1239132 (= lambda!274263 lambda!274262)))

(declare-fun b!5344485 () Bool)

(declare-fun e!3318301 () Bool)

(declare-fun lt!2179118 () Regex!15027)

(assert (=> b!5344485 (= e!3318301 (= lt!2179118 (head!11459 lt!2178944)))))

(declare-fun b!5344486 () Bool)

(declare-fun e!3318303 () Bool)

(assert (=> b!5344486 (= e!3318303 (isEmpty!33228 (t!374597 lt!2178944)))))

(declare-fun b!5344487 () Bool)

(declare-fun e!3318304 () Regex!15027)

(assert (=> b!5344487 (= e!3318304 EmptyExpr!15027)))

(declare-fun b!5344488 () Bool)

(declare-fun e!3318305 () Bool)

(declare-fun e!3318300 () Bool)

(assert (=> b!5344488 (= e!3318305 e!3318300)))

(declare-fun c!930097 () Bool)

(assert (=> b!5344488 (= c!930097 (isEmpty!33228 lt!2178944))))

(declare-fun b!5344489 () Bool)

(declare-fun e!3318302 () Regex!15027)

(assert (=> b!5344489 (= e!3318302 e!3318304)))

(declare-fun c!930099 () Bool)

(assert (=> b!5344489 (= c!930099 ((_ is Cons!61256) lt!2178944))))

(declare-fun b!5344490 () Bool)

(assert (=> b!5344490 (= e!3318300 e!3318301)))

(declare-fun c!930098 () Bool)

(assert (=> b!5344490 (= c!930098 (isEmpty!33228 (tail!10556 lt!2178944)))))

(declare-fun b!5344491 () Bool)

(assert (=> b!5344491 (= e!3318300 (isEmptyExpr!905 lt!2179118))))

(declare-fun b!5344492 () Bool)

(assert (=> b!5344492 (= e!3318302 (h!67704 lt!2178944))))

(declare-fun b!5344493 () Bool)

(assert (=> b!5344493 (= e!3318301 (isConcat!428 lt!2179118))))

(assert (=> d!1714441 e!3318305))

(declare-fun res!2267397 () Bool)

(assert (=> d!1714441 (=> (not res!2267397) (not e!3318305))))

(assert (=> d!1714441 (= res!2267397 (validRegex!6763 lt!2179118))))

(assert (=> d!1714441 (= lt!2179118 e!3318302)))

(declare-fun c!930096 () Bool)

(assert (=> d!1714441 (= c!930096 e!3318303)))

(declare-fun res!2267398 () Bool)

(assert (=> d!1714441 (=> (not res!2267398) (not e!3318303))))

(assert (=> d!1714441 (= res!2267398 ((_ is Cons!61256) lt!2178944))))

(assert (=> d!1714441 (forall!14448 lt!2178944 lambda!274263)))

(assert (=> d!1714441 (= (generalisedConcat!696 lt!2178944) lt!2179118)))

(declare-fun b!5344494 () Bool)

(assert (=> b!5344494 (= e!3318304 (Concat!23872 (h!67704 lt!2178944) (generalisedConcat!696 (t!374597 lt!2178944))))))

(assert (= (and d!1714441 res!2267398) b!5344486))

(assert (= (and d!1714441 c!930096) b!5344492))

(assert (= (and d!1714441 (not c!930096)) b!5344489))

(assert (= (and b!5344489 c!930099) b!5344494))

(assert (= (and b!5344489 (not c!930099)) b!5344487))

(assert (= (and d!1714441 res!2267397) b!5344488))

(assert (= (and b!5344488 c!930097) b!5344491))

(assert (= (and b!5344488 (not c!930097)) b!5344490))

(assert (= (and b!5344490 c!930098) b!5344485))

(assert (= (and b!5344490 (not c!930098)) b!5344493))

(declare-fun m!6376458 () Bool)

(assert (=> b!5344486 m!6376458))

(declare-fun m!6376460 () Bool)

(assert (=> b!5344493 m!6376460))

(declare-fun m!6376462 () Bool)

(assert (=> d!1714441 m!6376462))

(declare-fun m!6376464 () Bool)

(assert (=> d!1714441 m!6376464))

(declare-fun m!6376466 () Bool)

(assert (=> b!5344490 m!6376466))

(assert (=> b!5344490 m!6376466))

(declare-fun m!6376468 () Bool)

(assert (=> b!5344490 m!6376468))

(declare-fun m!6376470 () Bool)

(assert (=> b!5344494 m!6376470))

(declare-fun m!6376472 () Bool)

(assert (=> b!5344485 m!6376472))

(declare-fun m!6376474 () Bool)

(assert (=> b!5344488 m!6376474))

(declare-fun m!6376476 () Bool)

(assert (=> b!5344491 m!6376476))

(assert (=> b!5343569 d!1714441))

(declare-fun d!1714443 () Bool)

(declare-fun c!930100 () Bool)

(assert (=> d!1714443 (= c!930100 (isEmpty!33232 s!2326))))

(declare-fun e!3318306 () Bool)

(assert (=> d!1714443 (= (matchZipper!1271 lt!2178957 s!2326) e!3318306)))

(declare-fun b!5344495 () Bool)

(assert (=> b!5344495 (= e!3318306 (nullableZipper!1370 lt!2178957))))

(declare-fun b!5344496 () Bool)

(assert (=> b!5344496 (= e!3318306 (matchZipper!1271 (derivationStepZipper!1268 lt!2178957 (head!11458 s!2326)) (tail!10555 s!2326)))))

(assert (= (and d!1714443 c!930100) b!5344495))

(assert (= (and d!1714443 (not c!930100)) b!5344496))

(assert (=> d!1714443 m!6376256))

(declare-fun m!6376478 () Bool)

(assert (=> b!5344495 m!6376478))

(assert (=> b!5344496 m!6376264))

(assert (=> b!5344496 m!6376264))

(declare-fun m!6376480 () Bool)

(assert (=> b!5344496 m!6376480))

(assert (=> b!5344496 m!6376260))

(assert (=> b!5344496 m!6376480))

(assert (=> b!5344496 m!6376260))

(declare-fun m!6376482 () Bool)

(assert (=> b!5344496 m!6376482))

(assert (=> b!5343569 d!1714443))

(declare-fun d!1714445 () Bool)

(assert (=> d!1714445 (= (isDefined!11841 (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 Nil!61257 s!2326 s!2326)) (not (isEmpty!33231 (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 Nil!61257 s!2326 s!2326))))))

(declare-fun bs!1239133 () Bool)

(assert (= bs!1239133 d!1714445))

(assert (=> bs!1239133 m!6375634))

(declare-fun m!6376484 () Bool)

(assert (=> bs!1239133 m!6376484))

(assert (=> b!5343569 d!1714445))

(declare-fun bs!1239134 () Bool)

(declare-fun d!1714447 () Bool)

(assert (= bs!1239134 (and d!1714447 b!5343569)))

(declare-fun lambda!274264 () Int)

(assert (=> bs!1239134 (not (= lambda!274264 lambda!274165))))

(declare-fun bs!1239135 () Bool)

(assert (= bs!1239135 (and d!1714447 d!1714433)))

(assert (=> bs!1239135 (not (= lambda!274264 lambda!274261))))

(declare-fun bs!1239136 () Bool)

(assert (= bs!1239136 (and d!1714447 d!1714287)))

(assert (=> bs!1239136 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274264 lambda!274216))))

(assert (=> bs!1239134 (not (= lambda!274264 lambda!274167))))

(assert (=> bs!1239136 (not (= lambda!274264 lambda!274217))))

(declare-fun bs!1239137 () Bool)

(assert (= bs!1239137 (and d!1714447 b!5343595)))

(assert (=> bs!1239137 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274264 lambda!274161))))

(declare-fun bs!1239138 () Bool)

(assert (= bs!1239138 (and d!1714447 d!1714277)))

(assert (=> bs!1239138 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274264 lambda!274196))))

(assert (=> bs!1239137 (not (= lambda!274264 lambda!274162))))

(assert (=> bs!1239135 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274264 lambda!274260))))

(declare-fun bs!1239139 () Bool)

(assert (= bs!1239139 (and d!1714447 b!5344396)))

(assert (=> bs!1239139 (not (= lambda!274264 lambda!274255))))

(assert (=> bs!1239134 (= lambda!274264 lambda!274166)))

(assert (=> bs!1239134 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274264 lambda!274164))))

(declare-fun bs!1239140 () Bool)

(assert (= bs!1239140 (and d!1714447 b!5344403)))

(assert (=> bs!1239140 (not (= lambda!274264 lambda!274256))))

(assert (=> d!1714447 true))

(assert (=> d!1714447 true))

(assert (=> d!1714447 true))

(assert (=> d!1714447 (= (isDefined!11841 (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 Nil!61257 s!2326 s!2326)) (Exists!2208 lambda!274264))))

(declare-fun lt!2179119 () Unit!153626)

(assert (=> d!1714447 (= lt!2179119 (choose!40062 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326))))

(assert (=> d!1714447 (validRegex!6763 (regTwo!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714447 (= (lemmaFindConcatSeparationEquivalentToExists!1316 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326) lt!2179119)))

(declare-fun bs!1239141 () Bool)

(assert (= bs!1239141 d!1714447))

(declare-fun m!6376486 () Bool)

(assert (=> bs!1239141 m!6376486))

(assert (=> bs!1239141 m!6375634))

(assert (=> bs!1239141 m!6375636))

(declare-fun m!6376488 () Bool)

(assert (=> bs!1239141 m!6376488))

(assert (=> bs!1239141 m!6375634))

(declare-fun m!6376490 () Bool)

(assert (=> bs!1239141 m!6376490))

(assert (=> b!5343569 d!1714447))

(declare-fun d!1714449 () Bool)

(assert (=> d!1714449 (= (Exists!2208 lambda!274165) (choose!40061 lambda!274165))))

(declare-fun bs!1239142 () Bool)

(assert (= bs!1239142 d!1714449))

(declare-fun m!6376492 () Bool)

(assert (=> bs!1239142 m!6376492))

(assert (=> b!5343569 d!1714449))

(declare-fun d!1714451 () Bool)

(assert (=> d!1714451 (= (Exists!2208 lambda!274167) (choose!40061 lambda!274167))))

(declare-fun bs!1239143 () Bool)

(assert (= bs!1239143 d!1714451))

(declare-fun m!6376494 () Bool)

(assert (=> bs!1239143 m!6376494))

(assert (=> b!5343569 d!1714451))

(declare-fun b!5344497 () Bool)

(declare-fun e!3318310 () Option!15138)

(assert (=> b!5344497 (= e!3318310 None!15137)))

(declare-fun b!5344498 () Bool)

(declare-fun e!3318309 () Bool)

(assert (=> b!5344498 (= e!3318309 (matchR!7212 lt!2178945 s!2326))))

(declare-fun b!5344499 () Bool)

(declare-fun e!3318307 () Bool)

(declare-fun lt!2179122 () Option!15138)

(assert (=> b!5344499 (= e!3318307 (= (++!13350 (_1!35529 (get!21069 lt!2179122)) (_2!35529 (get!21069 lt!2179122))) s!2326))))

(declare-fun d!1714453 () Bool)

(declare-fun e!3318308 () Bool)

(assert (=> d!1714453 e!3318308))

(declare-fun res!2267402 () Bool)

(assert (=> d!1714453 (=> res!2267402 e!3318308)))

(assert (=> d!1714453 (= res!2267402 e!3318307)))

(declare-fun res!2267399 () Bool)

(assert (=> d!1714453 (=> (not res!2267399) (not e!3318307))))

(assert (=> d!1714453 (= res!2267399 (isDefined!11841 lt!2179122))))

(declare-fun e!3318311 () Option!15138)

(assert (=> d!1714453 (= lt!2179122 e!3318311)))

(declare-fun c!930102 () Bool)

(assert (=> d!1714453 (= c!930102 e!3318309)))

(declare-fun res!2267403 () Bool)

(assert (=> d!1714453 (=> (not res!2267403) (not e!3318309))))

(assert (=> d!1714453 (= res!2267403 (matchR!7212 (regTwo!30566 (regOne!30566 r!7292)) Nil!61257))))

(assert (=> d!1714453 (validRegex!6763 (regTwo!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714453 (= (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 Nil!61257 s!2326 s!2326) lt!2179122)))

(declare-fun b!5344500 () Bool)

(assert (=> b!5344500 (= e!3318311 (Some!15137 (tuple2!64453 Nil!61257 s!2326)))))

(declare-fun b!5344501 () Bool)

(assert (=> b!5344501 (= e!3318308 (not (isDefined!11841 lt!2179122)))))

(declare-fun b!5344502 () Bool)

(assert (=> b!5344502 (= e!3318311 e!3318310)))

(declare-fun c!930101 () Bool)

(assert (=> b!5344502 (= c!930101 ((_ is Nil!61257) s!2326))))

(declare-fun b!5344503 () Bool)

(declare-fun res!2267400 () Bool)

(assert (=> b!5344503 (=> (not res!2267400) (not e!3318307))))

(assert (=> b!5344503 (= res!2267400 (matchR!7212 lt!2178945 (_2!35529 (get!21069 lt!2179122))))))

(declare-fun b!5344504 () Bool)

(declare-fun res!2267401 () Bool)

(assert (=> b!5344504 (=> (not res!2267401) (not e!3318307))))

(assert (=> b!5344504 (= res!2267401 (matchR!7212 (regTwo!30566 (regOne!30566 r!7292)) (_1!35529 (get!21069 lt!2179122))))))

(declare-fun b!5344505 () Bool)

(declare-fun lt!2179120 () Unit!153626)

(declare-fun lt!2179121 () Unit!153626)

(assert (=> b!5344505 (= lt!2179120 lt!2179121)))

(assert (=> b!5344505 (= (++!13350 (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326)) s!2326)))

(assert (=> b!5344505 (= lt!2179121 (lemmaMoveElementToOtherListKeepsConcatEq!1765 Nil!61257 (h!67705 s!2326) (t!374598 s!2326) s!2326))))

(assert (=> b!5344505 (= e!3318310 (findConcatSeparation!1552 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326) s!2326))))

(assert (= (and d!1714453 res!2267403) b!5344498))

(assert (= (and d!1714453 c!930102) b!5344500))

(assert (= (and d!1714453 (not c!930102)) b!5344502))

(assert (= (and b!5344502 c!930101) b!5344497))

(assert (= (and b!5344502 (not c!930101)) b!5344505))

(assert (= (and d!1714453 res!2267399) b!5344504))

(assert (= (and b!5344504 res!2267401) b!5344503))

(assert (= (and b!5344503 res!2267400) b!5344499))

(assert (= (and d!1714453 (not res!2267402)) b!5344501))

(assert (=> b!5344505 m!6375944))

(assert (=> b!5344505 m!6375944))

(assert (=> b!5344505 m!6375952))

(assert (=> b!5344505 m!6375954))

(assert (=> b!5344505 m!6375944))

(declare-fun m!6376496 () Bool)

(assert (=> b!5344505 m!6376496))

(declare-fun m!6376498 () Bool)

(assert (=> d!1714453 m!6376498))

(declare-fun m!6376500 () Bool)

(assert (=> d!1714453 m!6376500))

(assert (=> d!1714453 m!6376488))

(declare-fun m!6376502 () Bool)

(assert (=> b!5344499 m!6376502))

(declare-fun m!6376504 () Bool)

(assert (=> b!5344499 m!6376504))

(assert (=> b!5344503 m!6376502))

(declare-fun m!6376506 () Bool)

(assert (=> b!5344503 m!6376506))

(assert (=> b!5344501 m!6376498))

(declare-fun m!6376508 () Bool)

(assert (=> b!5344498 m!6376508))

(assert (=> b!5344504 m!6376502))

(declare-fun m!6376510 () Bool)

(assert (=> b!5344504 m!6376510))

(assert (=> b!5343569 d!1714453))

(declare-fun d!1714455 () Bool)

(assert (=> d!1714455 (= (matchR!7212 lt!2178961 s!2326) (matchRSpec!2130 lt!2178961 s!2326))))

(declare-fun lt!2179123 () Unit!153626)

(assert (=> d!1714455 (= lt!2179123 (choose!40069 lt!2178961 s!2326))))

(assert (=> d!1714455 (validRegex!6763 lt!2178961)))

(assert (=> d!1714455 (= (mainMatchTheorem!2130 lt!2178961 s!2326) lt!2179123)))

(declare-fun bs!1239144 () Bool)

(assert (= bs!1239144 d!1714455))

(assert (=> bs!1239144 m!6375626))

(assert (=> bs!1239144 m!6375608))

(declare-fun m!6376512 () Bool)

(assert (=> bs!1239144 m!6376512))

(declare-fun m!6376514 () Bool)

(assert (=> bs!1239144 m!6376514))

(assert (=> b!5343569 d!1714455))

(declare-fun b!5344506 () Bool)

(declare-fun e!3318312 () Bool)

(assert (=> b!5344506 (= e!3318312 (matchR!7212 (derivativeStep!4191 lt!2178961 (head!11458 s!2326)) (tail!10555 s!2326)))))

(declare-fun d!1714457 () Bool)

(declare-fun e!3318315 () Bool)

(assert (=> d!1714457 e!3318315))

(declare-fun c!930103 () Bool)

(assert (=> d!1714457 (= c!930103 ((_ is EmptyExpr!15027) lt!2178961))))

(declare-fun lt!2179124 () Bool)

(assert (=> d!1714457 (= lt!2179124 e!3318312)))

(declare-fun c!930105 () Bool)

(assert (=> d!1714457 (= c!930105 (isEmpty!33232 s!2326))))

(assert (=> d!1714457 (validRegex!6763 lt!2178961)))

(assert (=> d!1714457 (= (matchR!7212 lt!2178961 s!2326) lt!2179124)))

(declare-fun b!5344507 () Bool)

(declare-fun e!3318313 () Bool)

(assert (=> b!5344507 (= e!3318313 (not (= (head!11458 s!2326) (c!929823 lt!2178961))))))

(declare-fun b!5344508 () Bool)

(declare-fun res!2267409 () Bool)

(declare-fun e!3318317 () Bool)

(assert (=> b!5344508 (=> res!2267409 e!3318317)))

(declare-fun e!3318314 () Bool)

(assert (=> b!5344508 (= res!2267409 e!3318314)))

(declare-fun res!2267410 () Bool)

(assert (=> b!5344508 (=> (not res!2267410) (not e!3318314))))

(assert (=> b!5344508 (= res!2267410 lt!2179124)))

(declare-fun b!5344509 () Bool)

(declare-fun e!3318318 () Bool)

(assert (=> b!5344509 (= e!3318317 e!3318318)))

(declare-fun res!2267405 () Bool)

(assert (=> b!5344509 (=> (not res!2267405) (not e!3318318))))

(assert (=> b!5344509 (= res!2267405 (not lt!2179124))))

(declare-fun b!5344510 () Bool)

(assert (=> b!5344510 (= e!3318312 (nullable!5196 lt!2178961))))

(declare-fun b!5344511 () Bool)

(declare-fun e!3318316 () Bool)

(assert (=> b!5344511 (= e!3318315 e!3318316)))

(declare-fun c!930104 () Bool)

(assert (=> b!5344511 (= c!930104 ((_ is EmptyLang!15027) lt!2178961))))

(declare-fun b!5344512 () Bool)

(declare-fun res!2267406 () Bool)

(assert (=> b!5344512 (=> res!2267406 e!3318317)))

(assert (=> b!5344512 (= res!2267406 (not ((_ is ElementMatch!15027) lt!2178961)))))

(assert (=> b!5344512 (= e!3318316 e!3318317)))

(declare-fun b!5344513 () Bool)

(declare-fun res!2267408 () Bool)

(assert (=> b!5344513 (=> (not res!2267408) (not e!3318314))))

(assert (=> b!5344513 (= res!2267408 (isEmpty!33232 (tail!10555 s!2326)))))

(declare-fun b!5344514 () Bool)

(assert (=> b!5344514 (= e!3318314 (= (head!11458 s!2326) (c!929823 lt!2178961)))))

(declare-fun b!5344515 () Bool)

(declare-fun res!2267411 () Bool)

(assert (=> b!5344515 (=> res!2267411 e!3318313)))

(assert (=> b!5344515 (= res!2267411 (not (isEmpty!33232 (tail!10555 s!2326))))))

(declare-fun b!5344516 () Bool)

(declare-fun res!2267407 () Bool)

(assert (=> b!5344516 (=> (not res!2267407) (not e!3318314))))

(declare-fun call!382039 () Bool)

(assert (=> b!5344516 (= res!2267407 (not call!382039))))

(declare-fun bm!382034 () Bool)

(assert (=> bm!382034 (= call!382039 (isEmpty!33232 s!2326))))

(declare-fun b!5344517 () Bool)

(assert (=> b!5344517 (= e!3318318 e!3318313)))

(declare-fun res!2267404 () Bool)

(assert (=> b!5344517 (=> res!2267404 e!3318313)))

(assert (=> b!5344517 (= res!2267404 call!382039)))

(declare-fun b!5344518 () Bool)

(assert (=> b!5344518 (= e!3318316 (not lt!2179124))))

(declare-fun b!5344519 () Bool)

(assert (=> b!5344519 (= e!3318315 (= lt!2179124 call!382039))))

(assert (= (and d!1714457 c!930105) b!5344510))

(assert (= (and d!1714457 (not c!930105)) b!5344506))

(assert (= (and d!1714457 c!930103) b!5344519))

(assert (= (and d!1714457 (not c!930103)) b!5344511))

(assert (= (and b!5344511 c!930104) b!5344518))

(assert (= (and b!5344511 (not c!930104)) b!5344512))

(assert (= (and b!5344512 (not res!2267406)) b!5344508))

(assert (= (and b!5344508 res!2267410) b!5344516))

(assert (= (and b!5344516 res!2267407) b!5344513))

(assert (= (and b!5344513 res!2267408) b!5344514))

(assert (= (and b!5344508 (not res!2267409)) b!5344509))

(assert (= (and b!5344509 res!2267405) b!5344517))

(assert (= (and b!5344517 (not res!2267404)) b!5344515))

(assert (= (and b!5344515 (not res!2267411)) b!5344507))

(assert (= (or b!5344519 b!5344516 b!5344517) bm!382034))

(assert (=> d!1714457 m!6376256))

(assert (=> d!1714457 m!6376514))

(assert (=> bm!382034 m!6376256))

(assert (=> b!5344515 m!6376260))

(assert (=> b!5344515 m!6376260))

(assert (=> b!5344515 m!6376262))

(assert (=> b!5344507 m!6376264))

(assert (=> b!5344506 m!6376264))

(assert (=> b!5344506 m!6376264))

(declare-fun m!6376516 () Bool)

(assert (=> b!5344506 m!6376516))

(assert (=> b!5344506 m!6376260))

(assert (=> b!5344506 m!6376516))

(assert (=> b!5344506 m!6376260))

(declare-fun m!6376518 () Bool)

(assert (=> b!5344506 m!6376518))

(declare-fun m!6376520 () Bool)

(assert (=> b!5344510 m!6376520))

(assert (=> b!5344514 m!6376264))

(assert (=> b!5344513 m!6376260))

(assert (=> b!5344513 m!6376260))

(assert (=> b!5344513 m!6376262))

(assert (=> b!5343569 d!1714457))

(declare-fun b!5344520 () Bool)

(declare-fun e!3318319 () Bool)

(assert (=> b!5344520 (= e!3318319 (matchR!7212 (derivativeStep!4191 lt!2178947 (head!11458 s!2326)) (tail!10555 s!2326)))))

(declare-fun d!1714459 () Bool)

(declare-fun e!3318322 () Bool)

(assert (=> d!1714459 e!3318322))

(declare-fun c!930106 () Bool)

(assert (=> d!1714459 (= c!930106 ((_ is EmptyExpr!15027) lt!2178947))))

(declare-fun lt!2179125 () Bool)

(assert (=> d!1714459 (= lt!2179125 e!3318319)))

(declare-fun c!930108 () Bool)

(assert (=> d!1714459 (= c!930108 (isEmpty!33232 s!2326))))

(assert (=> d!1714459 (validRegex!6763 lt!2178947)))

(assert (=> d!1714459 (= (matchR!7212 lt!2178947 s!2326) lt!2179125)))

(declare-fun b!5344521 () Bool)

(declare-fun e!3318320 () Bool)

(assert (=> b!5344521 (= e!3318320 (not (= (head!11458 s!2326) (c!929823 lt!2178947))))))

(declare-fun b!5344522 () Bool)

(declare-fun res!2267417 () Bool)

(declare-fun e!3318324 () Bool)

(assert (=> b!5344522 (=> res!2267417 e!3318324)))

(declare-fun e!3318321 () Bool)

(assert (=> b!5344522 (= res!2267417 e!3318321)))

(declare-fun res!2267418 () Bool)

(assert (=> b!5344522 (=> (not res!2267418) (not e!3318321))))

(assert (=> b!5344522 (= res!2267418 lt!2179125)))

(declare-fun b!5344523 () Bool)

(declare-fun e!3318325 () Bool)

(assert (=> b!5344523 (= e!3318324 e!3318325)))

(declare-fun res!2267413 () Bool)

(assert (=> b!5344523 (=> (not res!2267413) (not e!3318325))))

(assert (=> b!5344523 (= res!2267413 (not lt!2179125))))

(declare-fun b!5344524 () Bool)

(assert (=> b!5344524 (= e!3318319 (nullable!5196 lt!2178947))))

(declare-fun b!5344525 () Bool)

(declare-fun e!3318323 () Bool)

(assert (=> b!5344525 (= e!3318322 e!3318323)))

(declare-fun c!930107 () Bool)

(assert (=> b!5344525 (= c!930107 ((_ is EmptyLang!15027) lt!2178947))))

(declare-fun b!5344526 () Bool)

(declare-fun res!2267414 () Bool)

(assert (=> b!5344526 (=> res!2267414 e!3318324)))

(assert (=> b!5344526 (= res!2267414 (not ((_ is ElementMatch!15027) lt!2178947)))))

(assert (=> b!5344526 (= e!3318323 e!3318324)))

(declare-fun b!5344527 () Bool)

(declare-fun res!2267416 () Bool)

(assert (=> b!5344527 (=> (not res!2267416) (not e!3318321))))

(assert (=> b!5344527 (= res!2267416 (isEmpty!33232 (tail!10555 s!2326)))))

(declare-fun b!5344528 () Bool)

(assert (=> b!5344528 (= e!3318321 (= (head!11458 s!2326) (c!929823 lt!2178947)))))

(declare-fun b!5344529 () Bool)

(declare-fun res!2267419 () Bool)

(assert (=> b!5344529 (=> res!2267419 e!3318320)))

(assert (=> b!5344529 (= res!2267419 (not (isEmpty!33232 (tail!10555 s!2326))))))

(declare-fun b!5344530 () Bool)

(declare-fun res!2267415 () Bool)

(assert (=> b!5344530 (=> (not res!2267415) (not e!3318321))))

(declare-fun call!382040 () Bool)

(assert (=> b!5344530 (= res!2267415 (not call!382040))))

(declare-fun bm!382035 () Bool)

(assert (=> bm!382035 (= call!382040 (isEmpty!33232 s!2326))))

(declare-fun b!5344531 () Bool)

(assert (=> b!5344531 (= e!3318325 e!3318320)))

(declare-fun res!2267412 () Bool)

(assert (=> b!5344531 (=> res!2267412 e!3318320)))

(assert (=> b!5344531 (= res!2267412 call!382040)))

(declare-fun b!5344532 () Bool)

(assert (=> b!5344532 (= e!3318323 (not lt!2179125))))

(declare-fun b!5344533 () Bool)

(assert (=> b!5344533 (= e!3318322 (= lt!2179125 call!382040))))

(assert (= (and d!1714459 c!930108) b!5344524))

(assert (= (and d!1714459 (not c!930108)) b!5344520))

(assert (= (and d!1714459 c!930106) b!5344533))

(assert (= (and d!1714459 (not c!930106)) b!5344525))

(assert (= (and b!5344525 c!930107) b!5344532))

(assert (= (and b!5344525 (not c!930107)) b!5344526))

(assert (= (and b!5344526 (not res!2267414)) b!5344522))

(assert (= (and b!5344522 res!2267418) b!5344530))

(assert (= (and b!5344530 res!2267415) b!5344527))

(assert (= (and b!5344527 res!2267416) b!5344528))

(assert (= (and b!5344522 (not res!2267417)) b!5344523))

(assert (= (and b!5344523 res!2267413) b!5344531))

(assert (= (and b!5344531 (not res!2267412)) b!5344529))

(assert (= (and b!5344529 (not res!2267419)) b!5344521))

(assert (= (or b!5344533 b!5344530 b!5344531) bm!382035))

(assert (=> d!1714459 m!6376256))

(declare-fun m!6376522 () Bool)

(assert (=> d!1714459 m!6376522))

(assert (=> bm!382035 m!6376256))

(assert (=> b!5344529 m!6376260))

(assert (=> b!5344529 m!6376260))

(assert (=> b!5344529 m!6376262))

(assert (=> b!5344521 m!6376264))

(assert (=> b!5344520 m!6376264))

(assert (=> b!5344520 m!6376264))

(declare-fun m!6376524 () Bool)

(assert (=> b!5344520 m!6376524))

(assert (=> b!5344520 m!6376260))

(assert (=> b!5344520 m!6376524))

(assert (=> b!5344520 m!6376260))

(declare-fun m!6376526 () Bool)

(assert (=> b!5344520 m!6376526))

(declare-fun m!6376528 () Bool)

(assert (=> b!5344524 m!6376528))

(assert (=> b!5344528 m!6376264))

(assert (=> b!5344527 m!6376260))

(assert (=> b!5344527 m!6376260))

(assert (=> b!5344527 m!6376262))

(assert (=> b!5343569 d!1714459))

(declare-fun bs!1239145 () Bool)

(declare-fun d!1714461 () Bool)

(assert (= bs!1239145 (and d!1714461 b!5343569)))

(declare-fun lambda!274265 () Int)

(assert (=> bs!1239145 (not (= lambda!274265 lambda!274165))))

(declare-fun bs!1239146 () Bool)

(assert (= bs!1239146 (and d!1714461 d!1714433)))

(assert (=> bs!1239146 (not (= lambda!274265 lambda!274261))))

(declare-fun bs!1239147 () Bool)

(assert (= bs!1239147 (and d!1714461 d!1714287)))

(assert (=> bs!1239147 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274265 lambda!274216))))

(assert (=> bs!1239145 (not (= lambda!274265 lambda!274167))))

(assert (=> bs!1239147 (not (= lambda!274265 lambda!274217))))

(declare-fun bs!1239148 () Bool)

(assert (= bs!1239148 (and d!1714461 b!5343595)))

(assert (=> bs!1239148 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274265 lambda!274161))))

(declare-fun bs!1239149 () Bool)

(assert (= bs!1239149 (and d!1714461 d!1714277)))

(assert (=> bs!1239149 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274265 lambda!274196))))

(assert (=> bs!1239148 (not (= lambda!274265 lambda!274162))))

(assert (=> bs!1239146 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274265 lambda!274260))))

(declare-fun bs!1239150 () Bool)

(assert (= bs!1239150 (and d!1714461 b!5344396)))

(assert (=> bs!1239150 (not (= lambda!274265 lambda!274255))))

(declare-fun bs!1239151 () Bool)

(assert (= bs!1239151 (and d!1714461 d!1714447)))

(assert (=> bs!1239151 (= lambda!274265 lambda!274264)))

(assert (=> bs!1239145 (= lambda!274265 lambda!274166)))

(assert (=> bs!1239145 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274265 lambda!274164))))

(declare-fun bs!1239152 () Bool)

(assert (= bs!1239152 (and d!1714461 b!5344403)))

(assert (=> bs!1239152 (not (= lambda!274265 lambda!274256))))

(assert (=> d!1714461 true))

(assert (=> d!1714461 true))

(assert (=> d!1714461 true))

(declare-fun lambda!274266 () Int)

(assert (=> bs!1239145 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274266 lambda!274165))))

(assert (=> bs!1239146 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 (regOne!30566 r!7292))) (= lt!2178945 lt!2178947)) (= lambda!274266 lambda!274261))))

(assert (=> bs!1239147 (not (= lambda!274266 lambda!274216))))

(declare-fun bs!1239153 () Bool)

(assert (= bs!1239153 d!1714461))

(assert (=> bs!1239153 (not (= lambda!274266 lambda!274265))))

(assert (=> bs!1239145 (= lambda!274266 lambda!274167)))

(assert (=> bs!1239147 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274266 lambda!274217))))

(assert (=> bs!1239148 (not (= lambda!274266 lambda!274161))))

(assert (=> bs!1239149 (not (= lambda!274266 lambda!274196))))

(assert (=> bs!1239148 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274266 lambda!274162))))

(assert (=> bs!1239146 (not (= lambda!274266 lambda!274260))))

(assert (=> bs!1239150 (not (= lambda!274266 lambda!274255))))

(assert (=> bs!1239151 (not (= lambda!274266 lambda!274264))))

(assert (=> bs!1239145 (not (= lambda!274266 lambda!274166))))

(assert (=> bs!1239145 (not (= lambda!274266 lambda!274164))))

(assert (=> bs!1239152 (= (and (= (regTwo!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178945 (regTwo!30566 r!7292))) (= lambda!274266 lambda!274256))))

(assert (=> d!1714461 true))

(assert (=> d!1714461 true))

(assert (=> d!1714461 true))

(assert (=> d!1714461 (= (Exists!2208 lambda!274265) (Exists!2208 lambda!274266))))

(declare-fun lt!2179126 () Unit!153626)

(assert (=> d!1714461 (= lt!2179126 (choose!40063 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326))))

(assert (=> d!1714461 (validRegex!6763 (regTwo!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714461 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!862 (regTwo!30566 (regOne!30566 r!7292)) lt!2178945 s!2326) lt!2179126)))

(declare-fun m!6376530 () Bool)

(assert (=> bs!1239153 m!6376530))

(declare-fun m!6376532 () Bool)

(assert (=> bs!1239153 m!6376532))

(declare-fun m!6376534 () Bool)

(assert (=> bs!1239153 m!6376534))

(assert (=> bs!1239153 m!6376488))

(assert (=> b!5343569 d!1714461))

(declare-fun d!1714463 () Bool)

(assert (=> d!1714463 (= (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 Nil!61257 s!2326 s!2326)) (not (isEmpty!33231 (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 Nil!61257 s!2326 s!2326))))))

(declare-fun bs!1239154 () Bool)

(assert (= bs!1239154 d!1714463))

(assert (=> bs!1239154 m!6375604))

(declare-fun m!6376536 () Bool)

(assert (=> bs!1239154 m!6376536))

(assert (=> b!5343569 d!1714463))

(declare-fun bs!1239155 () Bool)

(declare-fun d!1714465 () Bool)

(assert (= bs!1239155 (and d!1714465 d!1714403)))

(declare-fun lambda!274267 () Int)

(assert (=> bs!1239155 (= lambda!274267 lambda!274238)))

(declare-fun bs!1239156 () Bool)

(assert (= bs!1239156 (and d!1714465 d!1714425)))

(assert (=> bs!1239156 (= lambda!274267 lambda!274259)))

(declare-fun bs!1239157 () Bool)

(assert (= bs!1239157 (and d!1714465 d!1714435)))

(assert (=> bs!1239157 (= lambda!274267 lambda!274262)))

(declare-fun bs!1239158 () Bool)

(assert (= bs!1239158 (and d!1714465 d!1714441)))

(assert (=> bs!1239158 (= lambda!274267 lambda!274263)))

(declare-fun b!5344534 () Bool)

(declare-fun e!3318327 () Bool)

(declare-fun lt!2179127 () Regex!15027)

(assert (=> b!5344534 (= e!3318327 (= lt!2179127 (head!11459 lt!2178946)))))

(declare-fun b!5344535 () Bool)

(declare-fun e!3318329 () Bool)

(assert (=> b!5344535 (= e!3318329 (isEmpty!33228 (t!374597 lt!2178946)))))

(declare-fun b!5344536 () Bool)

(declare-fun e!3318330 () Regex!15027)

(assert (=> b!5344536 (= e!3318330 EmptyExpr!15027)))

(declare-fun b!5344537 () Bool)

(declare-fun e!3318331 () Bool)

(declare-fun e!3318326 () Bool)

(assert (=> b!5344537 (= e!3318331 e!3318326)))

(declare-fun c!930110 () Bool)

(assert (=> b!5344537 (= c!930110 (isEmpty!33228 lt!2178946))))

(declare-fun b!5344538 () Bool)

(declare-fun e!3318328 () Regex!15027)

(assert (=> b!5344538 (= e!3318328 e!3318330)))

(declare-fun c!930112 () Bool)

(assert (=> b!5344538 (= c!930112 ((_ is Cons!61256) lt!2178946))))

(declare-fun b!5344539 () Bool)

(assert (=> b!5344539 (= e!3318326 e!3318327)))

(declare-fun c!930111 () Bool)

(assert (=> b!5344539 (= c!930111 (isEmpty!33228 (tail!10556 lt!2178946)))))

(declare-fun b!5344540 () Bool)

(assert (=> b!5344540 (= e!3318326 (isEmptyExpr!905 lt!2179127))))

(declare-fun b!5344541 () Bool)

(assert (=> b!5344541 (= e!3318328 (h!67704 lt!2178946))))

(declare-fun b!5344542 () Bool)

(assert (=> b!5344542 (= e!3318327 (isConcat!428 lt!2179127))))

(assert (=> d!1714465 e!3318331))

(declare-fun res!2267420 () Bool)

(assert (=> d!1714465 (=> (not res!2267420) (not e!3318331))))

(assert (=> d!1714465 (= res!2267420 (validRegex!6763 lt!2179127))))

(assert (=> d!1714465 (= lt!2179127 e!3318328)))

(declare-fun c!930109 () Bool)

(assert (=> d!1714465 (= c!930109 e!3318329)))

(declare-fun res!2267421 () Bool)

(assert (=> d!1714465 (=> (not res!2267421) (not e!3318329))))

(assert (=> d!1714465 (= res!2267421 ((_ is Cons!61256) lt!2178946))))

(assert (=> d!1714465 (forall!14448 lt!2178946 lambda!274267)))

(assert (=> d!1714465 (= (generalisedConcat!696 lt!2178946) lt!2179127)))

(declare-fun b!5344543 () Bool)

(assert (=> b!5344543 (= e!3318330 (Concat!23872 (h!67704 lt!2178946) (generalisedConcat!696 (t!374597 lt!2178946))))))

(assert (= (and d!1714465 res!2267421) b!5344535))

(assert (= (and d!1714465 c!930109) b!5344541))

(assert (= (and d!1714465 (not c!930109)) b!5344538))

(assert (= (and b!5344538 c!930112) b!5344543))

(assert (= (and b!5344538 (not c!930112)) b!5344536))

(assert (= (and d!1714465 res!2267420) b!5344537))

(assert (= (and b!5344537 c!930110) b!5344540))

(assert (= (and b!5344537 (not c!930110)) b!5344539))

(assert (= (and b!5344539 c!930111) b!5344534))

(assert (= (and b!5344539 (not c!930111)) b!5344542))

(declare-fun m!6376538 () Bool)

(assert (=> b!5344535 m!6376538))

(declare-fun m!6376540 () Bool)

(assert (=> b!5344542 m!6376540))

(declare-fun m!6376542 () Bool)

(assert (=> d!1714465 m!6376542))

(declare-fun m!6376544 () Bool)

(assert (=> d!1714465 m!6376544))

(declare-fun m!6376546 () Bool)

(assert (=> b!5344539 m!6376546))

(assert (=> b!5344539 m!6376546))

(declare-fun m!6376548 () Bool)

(assert (=> b!5344539 m!6376548))

(declare-fun m!6376550 () Bool)

(assert (=> b!5344543 m!6376550))

(declare-fun m!6376552 () Bool)

(assert (=> b!5344534 m!6376552))

(declare-fun m!6376554 () Bool)

(assert (=> b!5344537 m!6376554))

(declare-fun m!6376556 () Bool)

(assert (=> b!5344540 m!6376556))

(assert (=> b!5343569 d!1714465))

(declare-fun bs!1239159 () Bool)

(declare-fun b!5344545 () Bool)

(assert (= bs!1239159 (and b!5344545 b!5343569)))

(declare-fun lambda!274268 () Int)

(assert (=> bs!1239159 (not (= lambda!274268 lambda!274165))))

(declare-fun bs!1239160 () Bool)

(assert (= bs!1239160 (and b!5344545 d!1714287)))

(assert (=> bs!1239160 (not (= lambda!274268 lambda!274216))))

(declare-fun bs!1239161 () Bool)

(assert (= bs!1239161 (and b!5344545 d!1714461)))

(assert (=> bs!1239161 (not (= lambda!274268 lambda!274265))))

(assert (=> bs!1239159 (not (= lambda!274268 lambda!274167))))

(assert (=> bs!1239160 (not (= lambda!274268 lambda!274217))))

(declare-fun bs!1239162 () Bool)

(assert (= bs!1239162 (and b!5344545 b!5343595)))

(assert (=> bs!1239162 (not (= lambda!274268 lambda!274161))))

(declare-fun bs!1239163 () Bool)

(assert (= bs!1239163 (and b!5344545 d!1714277)))

(assert (=> bs!1239163 (not (= lambda!274268 lambda!274196))))

(assert (=> bs!1239162 (not (= lambda!274268 lambda!274162))))

(declare-fun bs!1239164 () Bool)

(assert (= bs!1239164 (and b!5344545 d!1714433)))

(assert (=> bs!1239164 (not (= lambda!274268 lambda!274260))))

(declare-fun bs!1239165 () Bool)

(assert (= bs!1239165 (and b!5344545 b!5344396)))

(assert (=> bs!1239165 (= (and (= (reg!15356 lt!2178961) (reg!15356 r!7292)) (= lt!2178961 r!7292)) (= lambda!274268 lambda!274255))))

(declare-fun bs!1239166 () Bool)

(assert (= bs!1239166 (and b!5344545 d!1714447)))

(assert (=> bs!1239166 (not (= lambda!274268 lambda!274264))))

(assert (=> bs!1239159 (not (= lambda!274268 lambda!274166))))

(assert (=> bs!1239161 (not (= lambda!274268 lambda!274266))))

(assert (=> bs!1239164 (not (= lambda!274268 lambda!274261))))

(assert (=> bs!1239159 (not (= lambda!274268 lambda!274164))))

(declare-fun bs!1239167 () Bool)

(assert (= bs!1239167 (and b!5344545 b!5344403)))

(assert (=> bs!1239167 (not (= lambda!274268 lambda!274256))))

(assert (=> b!5344545 true))

(assert (=> b!5344545 true))

(declare-fun bs!1239168 () Bool)

(declare-fun b!5344552 () Bool)

(assert (= bs!1239168 (and b!5344552 b!5343569)))

(declare-fun lambda!274269 () Int)

(assert (=> bs!1239168 (= (and (= (regOne!30566 lt!2178961) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178961) lt!2178947)) (= lambda!274269 lambda!274165))))

(declare-fun bs!1239169 () Bool)

(assert (= bs!1239169 (and b!5344552 d!1714287)))

(assert (=> bs!1239169 (not (= lambda!274269 lambda!274216))))

(declare-fun bs!1239170 () Bool)

(assert (= bs!1239170 (and b!5344552 d!1714461)))

(assert (=> bs!1239170 (not (= lambda!274269 lambda!274265))))

(assert (=> bs!1239168 (= (and (= (regOne!30566 lt!2178961) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178961) lt!2178945)) (= lambda!274269 lambda!274167))))

(assert (=> bs!1239169 (= (and (= (regOne!30566 lt!2178961) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178961) (regTwo!30566 r!7292))) (= lambda!274269 lambda!274217))))

(declare-fun bs!1239171 () Bool)

(assert (= bs!1239171 (and b!5344552 b!5343595)))

(assert (=> bs!1239171 (not (= lambda!274269 lambda!274161))))

(declare-fun bs!1239172 () Bool)

(assert (= bs!1239172 (and b!5344552 d!1714277)))

(assert (=> bs!1239172 (not (= lambda!274269 lambda!274196))))

(assert (=> bs!1239171 (= (and (= (regOne!30566 lt!2178961) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178961) (regTwo!30566 r!7292))) (= lambda!274269 lambda!274162))))

(declare-fun bs!1239173 () Bool)

(assert (= bs!1239173 (and b!5344552 d!1714433)))

(assert (=> bs!1239173 (not (= lambda!274269 lambda!274260))))

(declare-fun bs!1239174 () Bool)

(assert (= bs!1239174 (and b!5344552 b!5344396)))

(assert (=> bs!1239174 (not (= lambda!274269 lambda!274255))))

(declare-fun bs!1239175 () Bool)

(assert (= bs!1239175 (and b!5344552 b!5344545)))

(assert (=> bs!1239175 (not (= lambda!274269 lambda!274268))))

(declare-fun bs!1239176 () Bool)

(assert (= bs!1239176 (and b!5344552 d!1714447)))

(assert (=> bs!1239176 (not (= lambda!274269 lambda!274264))))

(assert (=> bs!1239168 (not (= lambda!274269 lambda!274166))))

(assert (=> bs!1239170 (= (and (= (regOne!30566 lt!2178961) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178961) lt!2178945)) (= lambda!274269 lambda!274266))))

(assert (=> bs!1239173 (= (and (= (regOne!30566 lt!2178961) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178961) lt!2178947)) (= lambda!274269 lambda!274261))))

(assert (=> bs!1239168 (not (= lambda!274269 lambda!274164))))

(declare-fun bs!1239177 () Bool)

(assert (= bs!1239177 (and b!5344552 b!5344403)))

(assert (=> bs!1239177 (= (and (= (regOne!30566 lt!2178961) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178961) (regTwo!30566 r!7292))) (= lambda!274269 lambda!274256))))

(assert (=> b!5344552 true))

(assert (=> b!5344552 true))

(declare-fun b!5344544 () Bool)

(declare-fun c!930115 () Bool)

(assert (=> b!5344544 (= c!930115 ((_ is Union!15027) lt!2178961))))

(declare-fun e!3318332 () Bool)

(declare-fun e!3318334 () Bool)

(assert (=> b!5344544 (= e!3318332 e!3318334)))

(declare-fun bm!382036 () Bool)

(declare-fun call!382041 () Bool)

(assert (=> bm!382036 (= call!382041 (isEmpty!33232 s!2326))))

(declare-fun e!3318336 () Bool)

(declare-fun call!382042 () Bool)

(assert (=> b!5344545 (= e!3318336 call!382042)))

(declare-fun bm!382037 () Bool)

(declare-fun c!930114 () Bool)

(assert (=> bm!382037 (= call!382042 (Exists!2208 (ite c!930114 lambda!274268 lambda!274269)))))

(declare-fun d!1714467 () Bool)

(declare-fun c!930113 () Bool)

(assert (=> d!1714467 (= c!930113 ((_ is EmptyExpr!15027) lt!2178961))))

(declare-fun e!3318337 () Bool)

(assert (=> d!1714467 (= (matchRSpec!2130 lt!2178961 s!2326) e!3318337)))

(declare-fun b!5344546 () Bool)

(declare-fun res!2267424 () Bool)

(assert (=> b!5344546 (=> res!2267424 e!3318336)))

(assert (=> b!5344546 (= res!2267424 call!382041)))

(declare-fun e!3318333 () Bool)

(assert (=> b!5344546 (= e!3318333 e!3318336)))

(declare-fun b!5344547 () Bool)

(declare-fun e!3318335 () Bool)

(assert (=> b!5344547 (= e!3318335 (matchRSpec!2130 (regTwo!30567 lt!2178961) s!2326))))

(declare-fun b!5344548 () Bool)

(assert (=> b!5344548 (= e!3318337 call!382041)))

(declare-fun b!5344549 () Bool)

(assert (=> b!5344549 (= e!3318332 (= s!2326 (Cons!61257 (c!929823 lt!2178961) Nil!61257)))))

(declare-fun b!5344550 () Bool)

(assert (=> b!5344550 (= e!3318334 e!3318333)))

(assert (=> b!5344550 (= c!930114 ((_ is Star!15027) lt!2178961))))

(declare-fun b!5344551 () Bool)

(declare-fun e!3318338 () Bool)

(assert (=> b!5344551 (= e!3318337 e!3318338)))

(declare-fun res!2267423 () Bool)

(assert (=> b!5344551 (= res!2267423 (not ((_ is EmptyLang!15027) lt!2178961)))))

(assert (=> b!5344551 (=> (not res!2267423) (not e!3318338))))

(assert (=> b!5344552 (= e!3318333 call!382042)))

(declare-fun b!5344553 () Bool)

(assert (=> b!5344553 (= e!3318334 e!3318335)))

(declare-fun res!2267422 () Bool)

(assert (=> b!5344553 (= res!2267422 (matchRSpec!2130 (regOne!30567 lt!2178961) s!2326))))

(assert (=> b!5344553 (=> res!2267422 e!3318335)))

(declare-fun b!5344554 () Bool)

(declare-fun c!930116 () Bool)

(assert (=> b!5344554 (= c!930116 ((_ is ElementMatch!15027) lt!2178961))))

(assert (=> b!5344554 (= e!3318338 e!3318332)))

(assert (= (and d!1714467 c!930113) b!5344548))

(assert (= (and d!1714467 (not c!930113)) b!5344551))

(assert (= (and b!5344551 res!2267423) b!5344554))

(assert (= (and b!5344554 c!930116) b!5344549))

(assert (= (and b!5344554 (not c!930116)) b!5344544))

(assert (= (and b!5344544 c!930115) b!5344553))

(assert (= (and b!5344544 (not c!930115)) b!5344550))

(assert (= (and b!5344553 (not res!2267422)) b!5344547))

(assert (= (and b!5344550 c!930114) b!5344546))

(assert (= (and b!5344550 (not c!930114)) b!5344552))

(assert (= (and b!5344546 (not res!2267424)) b!5344545))

(assert (= (or b!5344545 b!5344552) bm!382037))

(assert (= (or b!5344548 b!5344546) bm!382036))

(assert (=> bm!382036 m!6376256))

(declare-fun m!6376558 () Bool)

(assert (=> bm!382037 m!6376558))

(declare-fun m!6376560 () Bool)

(assert (=> b!5344547 m!6376560))

(declare-fun m!6376562 () Bool)

(assert (=> b!5344553 m!6376562))

(assert (=> b!5343569 d!1714467))

(declare-fun d!1714469 () Bool)

(assert (=> d!1714469 (= (Exists!2208 lambda!274164) (choose!40061 lambda!274164))))

(declare-fun bs!1239178 () Bool)

(assert (= bs!1239178 d!1714469))

(declare-fun m!6376564 () Bool)

(assert (=> bs!1239178 m!6376564))

(assert (=> b!5343569 d!1714469))

(declare-fun b!5344555 () Bool)

(declare-fun e!3318342 () Option!15138)

(assert (=> b!5344555 (= e!3318342 None!15137)))

(declare-fun b!5344556 () Bool)

(declare-fun e!3318341 () Bool)

(assert (=> b!5344556 (= e!3318341 (matchR!7212 lt!2178947 s!2326))))

(declare-fun b!5344557 () Bool)

(declare-fun e!3318339 () Bool)

(declare-fun lt!2179130 () Option!15138)

(assert (=> b!5344557 (= e!3318339 (= (++!13350 (_1!35529 (get!21069 lt!2179130)) (_2!35529 (get!21069 lt!2179130))) s!2326))))

(declare-fun d!1714471 () Bool)

(declare-fun e!3318340 () Bool)

(assert (=> d!1714471 e!3318340))

(declare-fun res!2267428 () Bool)

(assert (=> d!1714471 (=> res!2267428 e!3318340)))

(assert (=> d!1714471 (= res!2267428 e!3318339)))

(declare-fun res!2267425 () Bool)

(assert (=> d!1714471 (=> (not res!2267425) (not e!3318339))))

(assert (=> d!1714471 (= res!2267425 (isDefined!11841 lt!2179130))))

(declare-fun e!3318343 () Option!15138)

(assert (=> d!1714471 (= lt!2179130 e!3318343)))

(declare-fun c!930118 () Bool)

(assert (=> d!1714471 (= c!930118 e!3318341)))

(declare-fun res!2267429 () Bool)

(assert (=> d!1714471 (=> (not res!2267429) (not e!3318341))))

(assert (=> d!1714471 (= res!2267429 (matchR!7212 (regOne!30566 (regOne!30566 r!7292)) Nil!61257))))

(assert (=> d!1714471 (validRegex!6763 (regOne!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714471 (= (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 Nil!61257 s!2326 s!2326) lt!2179130)))

(declare-fun b!5344558 () Bool)

(assert (=> b!5344558 (= e!3318343 (Some!15137 (tuple2!64453 Nil!61257 s!2326)))))

(declare-fun b!5344559 () Bool)

(assert (=> b!5344559 (= e!3318340 (not (isDefined!11841 lt!2179130)))))

(declare-fun b!5344560 () Bool)

(assert (=> b!5344560 (= e!3318343 e!3318342)))

(declare-fun c!930117 () Bool)

(assert (=> b!5344560 (= c!930117 ((_ is Nil!61257) s!2326))))

(declare-fun b!5344561 () Bool)

(declare-fun res!2267426 () Bool)

(assert (=> b!5344561 (=> (not res!2267426) (not e!3318339))))

(assert (=> b!5344561 (= res!2267426 (matchR!7212 lt!2178947 (_2!35529 (get!21069 lt!2179130))))))

(declare-fun b!5344562 () Bool)

(declare-fun res!2267427 () Bool)

(assert (=> b!5344562 (=> (not res!2267427) (not e!3318339))))

(assert (=> b!5344562 (= res!2267427 (matchR!7212 (regOne!30566 (regOne!30566 r!7292)) (_1!35529 (get!21069 lt!2179130))))))

(declare-fun b!5344563 () Bool)

(declare-fun lt!2179128 () Unit!153626)

(declare-fun lt!2179129 () Unit!153626)

(assert (=> b!5344563 (= lt!2179128 lt!2179129)))

(assert (=> b!5344563 (= (++!13350 (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326)) s!2326)))

(assert (=> b!5344563 (= lt!2179129 (lemmaMoveElementToOtherListKeepsConcatEq!1765 Nil!61257 (h!67705 s!2326) (t!374598 s!2326) s!2326))))

(assert (=> b!5344563 (= e!3318342 (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 (++!13350 Nil!61257 (Cons!61257 (h!67705 s!2326) Nil!61257)) (t!374598 s!2326) s!2326))))

(assert (= (and d!1714471 res!2267429) b!5344556))

(assert (= (and d!1714471 c!930118) b!5344558))

(assert (= (and d!1714471 (not c!930118)) b!5344560))

(assert (= (and b!5344560 c!930117) b!5344555))

(assert (= (and b!5344560 (not c!930117)) b!5344563))

(assert (= (and d!1714471 res!2267425) b!5344562))

(assert (= (and b!5344562 res!2267427) b!5344561))

(assert (= (and b!5344561 res!2267426) b!5344557))

(assert (= (and d!1714471 (not res!2267428)) b!5344559))

(assert (=> b!5344563 m!6375944))

(assert (=> b!5344563 m!6375944))

(assert (=> b!5344563 m!6375952))

(assert (=> b!5344563 m!6375954))

(assert (=> b!5344563 m!6375944))

(declare-fun m!6376566 () Bool)

(assert (=> b!5344563 m!6376566))

(declare-fun m!6376568 () Bool)

(assert (=> d!1714471 m!6376568))

(declare-fun m!6376570 () Bool)

(assert (=> d!1714471 m!6376570))

(assert (=> d!1714471 m!6376430))

(declare-fun m!6376572 () Bool)

(assert (=> b!5344557 m!6376572))

(declare-fun m!6376574 () Bool)

(assert (=> b!5344557 m!6376574))

(assert (=> b!5344561 m!6376572))

(declare-fun m!6376576 () Bool)

(assert (=> b!5344561 m!6376576))

(assert (=> b!5344559 m!6376568))

(assert (=> b!5344556 m!6375610))

(assert (=> b!5344562 m!6376572))

(declare-fun m!6376578 () Bool)

(assert (=> b!5344562 m!6376578))

(assert (=> b!5343569 d!1714471))

(declare-fun d!1714473 () Bool)

(assert (=> d!1714473 (= (matchR!7212 lt!2178961 s!2326) (matchZipper!1271 lt!2178957 s!2326))))

(declare-fun lt!2179133 () Unit!153626)

(declare-fun choose!40072 ((InoxSet Context!8822) List!61382 Regex!15027 List!61381) Unit!153626)

(assert (=> d!1714473 (= lt!2179133 (choose!40072 lt!2178957 lt!2178941 lt!2178961 s!2326))))

(assert (=> d!1714473 (validRegex!6763 lt!2178961)))

(assert (=> d!1714473 (= (theoremZipperRegexEquiv!425 lt!2178957 lt!2178941 lt!2178961 s!2326) lt!2179133)))

(declare-fun bs!1239179 () Bool)

(assert (= bs!1239179 d!1714473))

(assert (=> bs!1239179 m!6375626))

(assert (=> bs!1239179 m!6375602))

(declare-fun m!6376580 () Bool)

(assert (=> bs!1239179 m!6376580))

(assert (=> bs!1239179 m!6376514))

(assert (=> b!5343569 d!1714473))

(declare-fun bs!1239180 () Bool)

(declare-fun d!1714475 () Bool)

(assert (= bs!1239180 (and d!1714475 b!5343569)))

(declare-fun lambda!274270 () Int)

(assert (=> bs!1239180 (not (= lambda!274270 lambda!274165))))

(declare-fun bs!1239181 () Bool)

(assert (= bs!1239181 (and d!1714475 d!1714287)))

(assert (=> bs!1239181 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274270 lambda!274216))))

(declare-fun bs!1239182 () Bool)

(assert (= bs!1239182 (and d!1714475 d!1714461)))

(assert (=> bs!1239182 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))) (= lt!2178947 lt!2178945)) (= lambda!274270 lambda!274265))))

(assert (=> bs!1239180 (not (= lambda!274270 lambda!274167))))

(assert (=> bs!1239181 (not (= lambda!274270 lambda!274217))))

(declare-fun bs!1239183 () Bool)

(assert (= bs!1239183 (and d!1714475 b!5343595)))

(assert (=> bs!1239183 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274270 lambda!274161))))

(declare-fun bs!1239184 () Bool)

(assert (= bs!1239184 (and d!1714475 d!1714277)))

(assert (=> bs!1239184 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regOne!30566 r!7292)) (= lt!2178947 (regTwo!30566 r!7292))) (= lambda!274270 lambda!274196))))

(assert (=> bs!1239183 (not (= lambda!274270 lambda!274162))))

(declare-fun bs!1239185 () Bool)

(assert (= bs!1239185 (and d!1714475 b!5344552)))

(assert (=> bs!1239185 (not (= lambda!274270 lambda!274269))))

(declare-fun bs!1239186 () Bool)

(assert (= bs!1239186 (and d!1714475 d!1714433)))

(assert (=> bs!1239186 (= lambda!274270 lambda!274260)))

(declare-fun bs!1239187 () Bool)

(assert (= bs!1239187 (and d!1714475 b!5344396)))

(assert (=> bs!1239187 (not (= lambda!274270 lambda!274255))))

(declare-fun bs!1239188 () Bool)

(assert (= bs!1239188 (and d!1714475 b!5344545)))

(assert (=> bs!1239188 (not (= lambda!274270 lambda!274268))))

(declare-fun bs!1239189 () Bool)

(assert (= bs!1239189 (and d!1714475 d!1714447)))

(assert (=> bs!1239189 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))) (= lt!2178947 lt!2178945)) (= lambda!274270 lambda!274264))))

(assert (=> bs!1239180 (= (and (= (regOne!30566 (regOne!30566 r!7292)) (regTwo!30566 (regOne!30566 r!7292))) (= lt!2178947 lt!2178945)) (= lambda!274270 lambda!274166))))

(assert (=> bs!1239182 (not (= lambda!274270 lambda!274266))))

(assert (=> bs!1239186 (not (= lambda!274270 lambda!274261))))

(assert (=> bs!1239180 (= lambda!274270 lambda!274164)))

(declare-fun bs!1239190 () Bool)

(assert (= bs!1239190 (and d!1714475 b!5344403)))

(assert (=> bs!1239190 (not (= lambda!274270 lambda!274256))))

(assert (=> d!1714475 true))

(assert (=> d!1714475 true))

(assert (=> d!1714475 true))

(assert (=> d!1714475 (= (isDefined!11841 (findConcatSeparation!1552 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 Nil!61257 s!2326 s!2326)) (Exists!2208 lambda!274270))))

(declare-fun lt!2179134 () Unit!153626)

(assert (=> d!1714475 (= lt!2179134 (choose!40062 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326))))

(assert (=> d!1714475 (validRegex!6763 (regOne!30566 (regOne!30566 r!7292)))))

(assert (=> d!1714475 (= (lemmaFindConcatSeparationEquivalentToExists!1316 (regOne!30566 (regOne!30566 r!7292)) lt!2178947 s!2326) lt!2179134)))

(declare-fun bs!1239191 () Bool)

(assert (= bs!1239191 d!1714475))

(declare-fun m!6376582 () Bool)

(assert (=> bs!1239191 m!6376582))

(assert (=> bs!1239191 m!6375604))

(assert (=> bs!1239191 m!6375606))

(assert (=> bs!1239191 m!6376430))

(assert (=> bs!1239191 m!6375604))

(declare-fun m!6376584 () Bool)

(assert (=> bs!1239191 m!6376584))

(assert (=> b!5343569 d!1714475))

(declare-fun d!1714477 () Bool)

(assert (=> d!1714477 (= (matchR!7212 lt!2178947 s!2326) (matchRSpec!2130 lt!2178947 s!2326))))

(declare-fun lt!2179135 () Unit!153626)

(assert (=> d!1714477 (= lt!2179135 (choose!40069 lt!2178947 s!2326))))

(assert (=> d!1714477 (validRegex!6763 lt!2178947)))

(assert (=> d!1714477 (= (mainMatchTheorem!2130 lt!2178947 s!2326) lt!2179135)))

(declare-fun bs!1239192 () Bool)

(assert (= bs!1239192 d!1714477))

(assert (=> bs!1239192 m!6375610))

(assert (=> bs!1239192 m!6375614))

(declare-fun m!6376586 () Bool)

(assert (=> bs!1239192 m!6376586))

(assert (=> bs!1239192 m!6376522))

(assert (=> b!5343569 d!1714477))

(declare-fun bs!1239193 () Bool)

(declare-fun b!5344565 () Bool)

(assert (= bs!1239193 (and b!5344565 b!5343569)))

(declare-fun lambda!274271 () Int)

(assert (=> bs!1239193 (not (= lambda!274271 lambda!274165))))

(declare-fun bs!1239194 () Bool)

(assert (= bs!1239194 (and b!5344565 d!1714287)))

(assert (=> bs!1239194 (not (= lambda!274271 lambda!274216))))

(declare-fun bs!1239195 () Bool)

(assert (= bs!1239195 (and b!5344565 d!1714461)))

(assert (=> bs!1239195 (not (= lambda!274271 lambda!274265))))

(assert (=> bs!1239193 (not (= lambda!274271 lambda!274167))))

(assert (=> bs!1239194 (not (= lambda!274271 lambda!274217))))

(declare-fun bs!1239196 () Bool)

(assert (= bs!1239196 (and b!5344565 d!1714475)))

(assert (=> bs!1239196 (not (= lambda!274271 lambda!274270))))

(declare-fun bs!1239197 () Bool)

(assert (= bs!1239197 (and b!5344565 b!5343595)))

(assert (=> bs!1239197 (not (= lambda!274271 lambda!274161))))

(declare-fun bs!1239198 () Bool)

(assert (= bs!1239198 (and b!5344565 d!1714277)))

(assert (=> bs!1239198 (not (= lambda!274271 lambda!274196))))

(assert (=> bs!1239197 (not (= lambda!274271 lambda!274162))))

(declare-fun bs!1239199 () Bool)

(assert (= bs!1239199 (and b!5344565 b!5344552)))

(assert (=> bs!1239199 (not (= lambda!274271 lambda!274269))))

(declare-fun bs!1239200 () Bool)

(assert (= bs!1239200 (and b!5344565 d!1714433)))

(assert (=> bs!1239200 (not (= lambda!274271 lambda!274260))))

(declare-fun bs!1239201 () Bool)

(assert (= bs!1239201 (and b!5344565 b!5344396)))

(assert (=> bs!1239201 (= (and (= (reg!15356 lt!2178947) (reg!15356 r!7292)) (= lt!2178947 r!7292)) (= lambda!274271 lambda!274255))))

(declare-fun bs!1239202 () Bool)

(assert (= bs!1239202 (and b!5344565 b!5344545)))

(assert (=> bs!1239202 (= (and (= (reg!15356 lt!2178947) (reg!15356 lt!2178961)) (= lt!2178947 lt!2178961)) (= lambda!274271 lambda!274268))))

(declare-fun bs!1239203 () Bool)

(assert (= bs!1239203 (and b!5344565 d!1714447)))

(assert (=> bs!1239203 (not (= lambda!274271 lambda!274264))))

(assert (=> bs!1239193 (not (= lambda!274271 lambda!274166))))

(assert (=> bs!1239195 (not (= lambda!274271 lambda!274266))))

(assert (=> bs!1239200 (not (= lambda!274271 lambda!274261))))

(assert (=> bs!1239193 (not (= lambda!274271 lambda!274164))))

(declare-fun bs!1239204 () Bool)

(assert (= bs!1239204 (and b!5344565 b!5344403)))

(assert (=> bs!1239204 (not (= lambda!274271 lambda!274256))))

(assert (=> b!5344565 true))

(assert (=> b!5344565 true))

(declare-fun bs!1239205 () Bool)

(declare-fun b!5344572 () Bool)

(assert (= bs!1239205 (and b!5344572 b!5343569)))

(declare-fun lambda!274272 () Int)

(assert (=> bs!1239205 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178947) lt!2178947)) (= lambda!274272 lambda!274165))))

(declare-fun bs!1239206 () Bool)

(assert (= bs!1239206 (and b!5344572 d!1714287)))

(assert (=> bs!1239206 (not (= lambda!274272 lambda!274216))))

(declare-fun bs!1239207 () Bool)

(assert (= bs!1239207 (and b!5344572 d!1714461)))

(assert (=> bs!1239207 (not (= lambda!274272 lambda!274265))))

(assert (=> bs!1239205 (= (and (= (regOne!30566 lt!2178947) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178947) lt!2178945)) (= lambda!274272 lambda!274167))))

(declare-fun bs!1239208 () Bool)

(assert (= bs!1239208 (and b!5344572 b!5344565)))

(assert (=> bs!1239208 (not (= lambda!274272 lambda!274271))))

(assert (=> bs!1239206 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178947) (regTwo!30566 r!7292))) (= lambda!274272 lambda!274217))))

(declare-fun bs!1239209 () Bool)

(assert (= bs!1239209 (and b!5344572 d!1714475)))

(assert (=> bs!1239209 (not (= lambda!274272 lambda!274270))))

(declare-fun bs!1239210 () Bool)

(assert (= bs!1239210 (and b!5344572 b!5343595)))

(assert (=> bs!1239210 (not (= lambda!274272 lambda!274161))))

(declare-fun bs!1239211 () Bool)

(assert (= bs!1239211 (and b!5344572 d!1714277)))

(assert (=> bs!1239211 (not (= lambda!274272 lambda!274196))))

(assert (=> bs!1239210 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178947) (regTwo!30566 r!7292))) (= lambda!274272 lambda!274162))))

(declare-fun bs!1239212 () Bool)

(assert (= bs!1239212 (and b!5344572 b!5344552)))

(assert (=> bs!1239212 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 lt!2178961)) (= (regTwo!30566 lt!2178947) (regTwo!30566 lt!2178961))) (= lambda!274272 lambda!274269))))

(declare-fun bs!1239213 () Bool)

(assert (= bs!1239213 (and b!5344572 d!1714433)))

(assert (=> bs!1239213 (not (= lambda!274272 lambda!274260))))

(declare-fun bs!1239214 () Bool)

(assert (= bs!1239214 (and b!5344572 b!5344396)))

(assert (=> bs!1239214 (not (= lambda!274272 lambda!274255))))

(declare-fun bs!1239215 () Bool)

(assert (= bs!1239215 (and b!5344572 b!5344545)))

(assert (=> bs!1239215 (not (= lambda!274272 lambda!274268))))

(declare-fun bs!1239216 () Bool)

(assert (= bs!1239216 (and b!5344572 d!1714447)))

(assert (=> bs!1239216 (not (= lambda!274272 lambda!274264))))

(assert (=> bs!1239205 (not (= lambda!274272 lambda!274166))))

(assert (=> bs!1239207 (= (and (= (regOne!30566 lt!2178947) (regTwo!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178947) lt!2178945)) (= lambda!274272 lambda!274266))))

(assert (=> bs!1239213 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 (regOne!30566 r!7292))) (= (regTwo!30566 lt!2178947) lt!2178947)) (= lambda!274272 lambda!274261))))

(assert (=> bs!1239205 (not (= lambda!274272 lambda!274164))))

(declare-fun bs!1239217 () Bool)

(assert (= bs!1239217 (and b!5344572 b!5344403)))

(assert (=> bs!1239217 (= (and (= (regOne!30566 lt!2178947) (regOne!30566 r!7292)) (= (regTwo!30566 lt!2178947) (regTwo!30566 r!7292))) (= lambda!274272 lambda!274256))))

(assert (=> b!5344572 true))

(assert (=> b!5344572 true))

(declare-fun b!5344564 () Bool)

(declare-fun c!930121 () Bool)

(assert (=> b!5344564 (= c!930121 ((_ is Union!15027) lt!2178947))))

(declare-fun e!3318344 () Bool)

(declare-fun e!3318346 () Bool)

(assert (=> b!5344564 (= e!3318344 e!3318346)))

(declare-fun bm!382038 () Bool)

(declare-fun call!382043 () Bool)

(assert (=> bm!382038 (= call!382043 (isEmpty!33232 s!2326))))

(declare-fun e!3318348 () Bool)

(declare-fun call!382044 () Bool)

(assert (=> b!5344565 (= e!3318348 call!382044)))

(declare-fun c!930120 () Bool)

(declare-fun bm!382039 () Bool)

(assert (=> bm!382039 (= call!382044 (Exists!2208 (ite c!930120 lambda!274271 lambda!274272)))))

(declare-fun d!1714479 () Bool)

(declare-fun c!930119 () Bool)

(assert (=> d!1714479 (= c!930119 ((_ is EmptyExpr!15027) lt!2178947))))

(declare-fun e!3318349 () Bool)

(assert (=> d!1714479 (= (matchRSpec!2130 lt!2178947 s!2326) e!3318349)))

(declare-fun b!5344566 () Bool)

(declare-fun res!2267432 () Bool)

(assert (=> b!5344566 (=> res!2267432 e!3318348)))

(assert (=> b!5344566 (= res!2267432 call!382043)))

(declare-fun e!3318345 () Bool)

(assert (=> b!5344566 (= e!3318345 e!3318348)))

(declare-fun b!5344567 () Bool)

(declare-fun e!3318347 () Bool)

(assert (=> b!5344567 (= e!3318347 (matchRSpec!2130 (regTwo!30567 lt!2178947) s!2326))))

(declare-fun b!5344568 () Bool)

(assert (=> b!5344568 (= e!3318349 call!382043)))

(declare-fun b!5344569 () Bool)

(assert (=> b!5344569 (= e!3318344 (= s!2326 (Cons!61257 (c!929823 lt!2178947) Nil!61257)))))

(declare-fun b!5344570 () Bool)

(assert (=> b!5344570 (= e!3318346 e!3318345)))

(assert (=> b!5344570 (= c!930120 ((_ is Star!15027) lt!2178947))))

(declare-fun b!5344571 () Bool)

(declare-fun e!3318350 () Bool)

(assert (=> b!5344571 (= e!3318349 e!3318350)))

(declare-fun res!2267431 () Bool)

(assert (=> b!5344571 (= res!2267431 (not ((_ is EmptyLang!15027) lt!2178947)))))

(assert (=> b!5344571 (=> (not res!2267431) (not e!3318350))))

(assert (=> b!5344572 (= e!3318345 call!382044)))

(declare-fun b!5344573 () Bool)

(assert (=> b!5344573 (= e!3318346 e!3318347)))

(declare-fun res!2267430 () Bool)

(assert (=> b!5344573 (= res!2267430 (matchRSpec!2130 (regOne!30567 lt!2178947) s!2326))))

(assert (=> b!5344573 (=> res!2267430 e!3318347)))

(declare-fun b!5344574 () Bool)

(declare-fun c!930122 () Bool)

(assert (=> b!5344574 (= c!930122 ((_ is ElementMatch!15027) lt!2178947))))

(assert (=> b!5344574 (= e!3318350 e!3318344)))

(assert (= (and d!1714479 c!930119) b!5344568))

(assert (= (and d!1714479 (not c!930119)) b!5344571))

(assert (= (and b!5344571 res!2267431) b!5344574))

(assert (= (and b!5344574 c!930122) b!5344569))

(assert (= (and b!5344574 (not c!930122)) b!5344564))

(assert (= (and b!5344564 c!930121) b!5344573))

(assert (= (and b!5344564 (not c!930121)) b!5344570))

(assert (= (and b!5344573 (not res!2267430)) b!5344567))

(assert (= (and b!5344570 c!930120) b!5344566))

(assert (= (and b!5344570 (not c!930120)) b!5344572))

(assert (= (and b!5344566 (not res!2267432)) b!5344565))

(assert (= (or b!5344565 b!5344572) bm!382039))

(assert (= (or b!5344568 b!5344566) bm!382038))

(assert (=> bm!382038 m!6376256))

(declare-fun m!6376588 () Bool)

(assert (=> bm!382039 m!6376588))

(declare-fun m!6376590 () Bool)

(assert (=> b!5344567 m!6376590))

(declare-fun m!6376592 () Bool)

(assert (=> b!5344573 m!6376592))

(assert (=> b!5343569 d!1714479))

(declare-fun bs!1239218 () Bool)

(declare-fun d!1714481 () Bool)

(assert (= bs!1239218 (and d!1714481 d!1714403)))

(declare-fun lambda!274275 () Int)

(assert (=> bs!1239218 (= lambda!274275 lambda!274238)))

(declare-fun bs!1239219 () Bool)

(assert (= bs!1239219 (and d!1714481 d!1714435)))

(assert (=> bs!1239219 (= lambda!274275 lambda!274262)))

(declare-fun bs!1239220 () Bool)

(assert (= bs!1239220 (and d!1714481 d!1714425)))

(assert (=> bs!1239220 (= lambda!274275 lambda!274259)))

(declare-fun bs!1239221 () Bool)

(assert (= bs!1239221 (and d!1714481 d!1714441)))

(assert (=> bs!1239221 (= lambda!274275 lambda!274263)))

(declare-fun bs!1239222 () Bool)

(assert (= bs!1239222 (and d!1714481 d!1714465)))

(assert (=> bs!1239222 (= lambda!274275 lambda!274267)))

(declare-fun b!5344595 () Bool)

(declare-fun e!3318368 () Bool)

(declare-fun lt!2179138 () Regex!15027)

(assert (=> b!5344595 (= e!3318368 (= lt!2179138 (head!11459 (unfocusZipperList!469 zl!343))))))

(declare-fun b!5344596 () Bool)

(declare-fun e!3318363 () Bool)

(assert (=> b!5344596 (= e!3318363 e!3318368)))

(declare-fun c!930132 () Bool)

(assert (=> b!5344596 (= c!930132 (isEmpty!33228 (tail!10556 (unfocusZipperList!469 zl!343))))))

(declare-fun b!5344597 () Bool)

(declare-fun isUnion!345 (Regex!15027) Bool)

(assert (=> b!5344597 (= e!3318368 (isUnion!345 lt!2179138))))

(declare-fun e!3318365 () Bool)

(assert (=> d!1714481 e!3318365))

(declare-fun res!2267438 () Bool)

(assert (=> d!1714481 (=> (not res!2267438) (not e!3318365))))

(assert (=> d!1714481 (= res!2267438 (validRegex!6763 lt!2179138))))

(declare-fun e!3318366 () Regex!15027)

(assert (=> d!1714481 (= lt!2179138 e!3318366)))

(declare-fun c!930134 () Bool)

(declare-fun e!3318364 () Bool)

(assert (=> d!1714481 (= c!930134 e!3318364)))

(declare-fun res!2267437 () Bool)

(assert (=> d!1714481 (=> (not res!2267437) (not e!3318364))))

(assert (=> d!1714481 (= res!2267437 ((_ is Cons!61256) (unfocusZipperList!469 zl!343)))))

(assert (=> d!1714481 (forall!14448 (unfocusZipperList!469 zl!343) lambda!274275)))

(assert (=> d!1714481 (= (generalisedUnion!956 (unfocusZipperList!469 zl!343)) lt!2179138)))

(declare-fun b!5344598 () Bool)

(declare-fun e!3318367 () Regex!15027)

(assert (=> b!5344598 (= e!3318367 EmptyLang!15027)))

(declare-fun b!5344599 () Bool)

(assert (=> b!5344599 (= e!3318365 e!3318363)))

(declare-fun c!930133 () Bool)

(assert (=> b!5344599 (= c!930133 (isEmpty!33228 (unfocusZipperList!469 zl!343)))))

(declare-fun b!5344600 () Bool)

(declare-fun isEmptyLang!913 (Regex!15027) Bool)

(assert (=> b!5344600 (= e!3318363 (isEmptyLang!913 lt!2179138))))

(declare-fun b!5344601 () Bool)

(assert (=> b!5344601 (= e!3318364 (isEmpty!33228 (t!374597 (unfocusZipperList!469 zl!343))))))

(declare-fun b!5344602 () Bool)

(assert (=> b!5344602 (= e!3318366 e!3318367)))

(declare-fun c!930131 () Bool)

(assert (=> b!5344602 (= c!930131 ((_ is Cons!61256) (unfocusZipperList!469 zl!343)))))

(declare-fun b!5344603 () Bool)

(assert (=> b!5344603 (= e!3318366 (h!67704 (unfocusZipperList!469 zl!343)))))

(declare-fun b!5344604 () Bool)

(assert (=> b!5344604 (= e!3318367 (Union!15027 (h!67704 (unfocusZipperList!469 zl!343)) (generalisedUnion!956 (t!374597 (unfocusZipperList!469 zl!343)))))))

(assert (= (and d!1714481 res!2267437) b!5344601))

(assert (= (and d!1714481 c!930134) b!5344603))

(assert (= (and d!1714481 (not c!930134)) b!5344602))

(assert (= (and b!5344602 c!930131) b!5344604))

(assert (= (and b!5344602 (not c!930131)) b!5344598))

(assert (= (and d!1714481 res!2267438) b!5344599))

(assert (= (and b!5344599 c!930133) b!5344600))

(assert (= (and b!5344599 (not c!930133)) b!5344596))

(assert (= (and b!5344596 c!930132) b!5344595))

(assert (= (and b!5344596 (not c!930132)) b!5344597))

(assert (=> b!5344595 m!6375700))

(declare-fun m!6376594 () Bool)

(assert (=> b!5344595 m!6376594))

(assert (=> b!5344596 m!6375700))

(declare-fun m!6376596 () Bool)

(assert (=> b!5344596 m!6376596))

(assert (=> b!5344596 m!6376596))

(declare-fun m!6376598 () Bool)

(assert (=> b!5344596 m!6376598))

(declare-fun m!6376600 () Bool)

(assert (=> b!5344597 m!6376600))

(declare-fun m!6376602 () Bool)

(assert (=> b!5344601 m!6376602))

(assert (=> b!5344599 m!6375700))

(declare-fun m!6376604 () Bool)

(assert (=> b!5344599 m!6376604))

(declare-fun m!6376606 () Bool)

(assert (=> b!5344600 m!6376606))

(declare-fun m!6376608 () Bool)

(assert (=> b!5344604 m!6376608))

(declare-fun m!6376610 () Bool)

(assert (=> d!1714481 m!6376610))

(assert (=> d!1714481 m!6375700))

(declare-fun m!6376612 () Bool)

(assert (=> d!1714481 m!6376612))

(assert (=> b!5343587 d!1714481))

(declare-fun bs!1239223 () Bool)

(declare-fun d!1714483 () Bool)

(assert (= bs!1239223 (and d!1714483 d!1714403)))

(declare-fun lambda!274278 () Int)

(assert (=> bs!1239223 (= lambda!274278 lambda!274238)))

(declare-fun bs!1239224 () Bool)

(assert (= bs!1239224 (and d!1714483 d!1714481)))

(assert (=> bs!1239224 (= lambda!274278 lambda!274275)))

(declare-fun bs!1239225 () Bool)

(assert (= bs!1239225 (and d!1714483 d!1714435)))

(assert (=> bs!1239225 (= lambda!274278 lambda!274262)))

(declare-fun bs!1239226 () Bool)

(assert (= bs!1239226 (and d!1714483 d!1714425)))

(assert (=> bs!1239226 (= lambda!274278 lambda!274259)))

(declare-fun bs!1239227 () Bool)

(assert (= bs!1239227 (and d!1714483 d!1714441)))

(assert (=> bs!1239227 (= lambda!274278 lambda!274263)))

(declare-fun bs!1239228 () Bool)

(assert (= bs!1239228 (and d!1714483 d!1714465)))

(assert (=> bs!1239228 (= lambda!274278 lambda!274267)))

(declare-fun lt!2179141 () List!61380)

(assert (=> d!1714483 (forall!14448 lt!2179141 lambda!274278)))

(declare-fun e!3318371 () List!61380)

(assert (=> d!1714483 (= lt!2179141 e!3318371)))

(declare-fun c!930137 () Bool)

(assert (=> d!1714483 (= c!930137 ((_ is Cons!61258) zl!343))))

(assert (=> d!1714483 (= (unfocusZipperList!469 zl!343) lt!2179141)))

(declare-fun b!5344609 () Bool)

(assert (=> b!5344609 (= e!3318371 (Cons!61256 (generalisedConcat!696 (exprs!4911 (h!67706 zl!343))) (unfocusZipperList!469 (t!374599 zl!343))))))

(declare-fun b!5344610 () Bool)

(assert (=> b!5344610 (= e!3318371 Nil!61256)))

(assert (= (and d!1714483 c!930137) b!5344609))

(assert (= (and d!1714483 (not c!930137)) b!5344610))

(declare-fun m!6376614 () Bool)

(assert (=> d!1714483 m!6376614))

(assert (=> b!5344609 m!6375722))

(declare-fun m!6376616 () Bool)

(assert (=> b!5344609 m!6376616))

(assert (=> b!5343587 d!1714483))

(declare-fun e!3318374 () Bool)

(declare-fun d!1714485 () Bool)

(assert (=> d!1714485 (= (matchZipper!1271 ((_ map or) lt!2178955 lt!2178939) (t!374598 s!2326)) e!3318374)))

(declare-fun res!2267441 () Bool)

(assert (=> d!1714485 (=> res!2267441 e!3318374)))

(assert (=> d!1714485 (= res!2267441 (matchZipper!1271 lt!2178955 (t!374598 s!2326)))))

(declare-fun lt!2179144 () Unit!153626)

(declare-fun choose!40073 ((InoxSet Context!8822) (InoxSet Context!8822) List!61381) Unit!153626)

(assert (=> d!1714485 (= lt!2179144 (choose!40073 lt!2178955 lt!2178939 (t!374598 s!2326)))))

(assert (=> d!1714485 (= (lemmaZipperConcatMatchesSameAsBothZippers!264 lt!2178955 lt!2178939 (t!374598 s!2326)) lt!2179144)))

(declare-fun b!5344613 () Bool)

(assert (=> b!5344613 (= e!3318374 (matchZipper!1271 lt!2178939 (t!374598 s!2326)))))

(assert (= (and d!1714485 (not res!2267441)) b!5344613))

(assert (=> d!1714485 m!6375720))

(assert (=> d!1714485 m!6375716))

(declare-fun m!6376618 () Bool)

(assert (=> d!1714485 m!6376618))

(assert (=> b!5344613 m!6375600))

(assert (=> b!5343566 d!1714485))

(assert (=> b!5343566 d!1714421))

(declare-fun d!1714487 () Bool)

(declare-fun c!930138 () Bool)

(assert (=> d!1714487 (= c!930138 (isEmpty!33232 (t!374598 s!2326)))))

(declare-fun e!3318375 () Bool)

(assert (=> d!1714487 (= (matchZipper!1271 ((_ map or) lt!2178955 lt!2178939) (t!374598 s!2326)) e!3318375)))

(declare-fun b!5344614 () Bool)

(assert (=> b!5344614 (= e!3318375 (nullableZipper!1370 ((_ map or) lt!2178955 lt!2178939)))))

(declare-fun b!5344615 () Bool)

(assert (=> b!5344615 (= e!3318375 (matchZipper!1271 (derivationStepZipper!1268 ((_ map or) lt!2178955 lt!2178939) (head!11458 (t!374598 s!2326))) (tail!10555 (t!374598 s!2326))))))

(assert (= (and d!1714487 c!930138) b!5344614))

(assert (= (and d!1714487 (not c!930138)) b!5344615))

(assert (=> d!1714487 m!6376200))

(declare-fun m!6376620 () Bool)

(assert (=> b!5344614 m!6376620))

(assert (=> b!5344615 m!6376204))

(assert (=> b!5344615 m!6376204))

(declare-fun m!6376622 () Bool)

(assert (=> b!5344615 m!6376622))

(assert (=> b!5344615 m!6376208))

(assert (=> b!5344615 m!6376622))

(assert (=> b!5344615 m!6376208))

(declare-fun m!6376624 () Bool)

(assert (=> b!5344615 m!6376624))

(assert (=> b!5343566 d!1714487))

(declare-fun d!1714489 () Bool)

(declare-fun lt!2179147 () Int)

(assert (=> d!1714489 (>= lt!2179147 0)))

(declare-fun e!3318378 () Int)

(assert (=> d!1714489 (= lt!2179147 e!3318378)))

(declare-fun c!930142 () Bool)

(assert (=> d!1714489 (= c!930142 ((_ is Cons!61256) (exprs!4911 lt!2178948)))))

(assert (=> d!1714489 (= (contextDepthTotal!160 lt!2178948) lt!2179147)))

(declare-fun b!5344620 () Bool)

(declare-fun regexDepthTotal!75 (Regex!15027) Int)

(assert (=> b!5344620 (= e!3318378 (+ (regexDepthTotal!75 (h!67704 (exprs!4911 lt!2178948))) (contextDepthTotal!160 (Context!8823 (t!374597 (exprs!4911 lt!2178948))))))))

(declare-fun b!5344621 () Bool)

(assert (=> b!5344621 (= e!3318378 1)))

(assert (= (and d!1714489 c!930142) b!5344620))

(assert (= (and d!1714489 (not c!930142)) b!5344621))

(declare-fun m!6376626 () Bool)

(assert (=> b!5344620 m!6376626))

(declare-fun m!6376628 () Bool)

(assert (=> b!5344620 m!6376628))

(assert (=> b!5343586 d!1714489))

(declare-fun d!1714491 () Bool)

(declare-fun lt!2179148 () Int)

(assert (=> d!1714491 (>= lt!2179148 0)))

(declare-fun e!3318379 () Int)

(assert (=> d!1714491 (= lt!2179148 e!3318379)))

(declare-fun c!930143 () Bool)

(assert (=> d!1714491 (= c!930143 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343))))))

(assert (=> d!1714491 (= (contextDepthTotal!160 (h!67706 zl!343)) lt!2179148)))

(declare-fun b!5344622 () Bool)

(assert (=> b!5344622 (= e!3318379 (+ (regexDepthTotal!75 (h!67704 (exprs!4911 (h!67706 zl!343)))) (contextDepthTotal!160 (Context!8823 (t!374597 (exprs!4911 (h!67706 zl!343)))))))))

(declare-fun b!5344623 () Bool)

(assert (=> b!5344623 (= e!3318379 1)))

(assert (= (and d!1714491 c!930143) b!5344622))

(assert (= (and d!1714491 (not c!930143)) b!5344623))

(declare-fun m!6376630 () Bool)

(assert (=> b!5344622 m!6376630))

(declare-fun m!6376632 () Bool)

(assert (=> b!5344622 m!6376632))

(assert (=> b!5343586 d!1714491))

(declare-fun d!1714493 () Bool)

(assert (=> d!1714493 (= (isEmpty!33227 (t!374599 zl!343)) ((_ is Nil!61258) (t!374599 zl!343)))))

(assert (=> b!5343565 d!1714493))

(declare-fun bs!1239229 () Bool)

(declare-fun d!1714495 () Bool)

(assert (= bs!1239229 (and d!1714495 d!1714403)))

(declare-fun lambda!274279 () Int)

(assert (=> bs!1239229 (= lambda!274279 lambda!274238)))

(declare-fun bs!1239230 () Bool)

(assert (= bs!1239230 (and d!1714495 d!1714481)))

(assert (=> bs!1239230 (= lambda!274279 lambda!274275)))

(declare-fun bs!1239231 () Bool)

(assert (= bs!1239231 (and d!1714495 d!1714483)))

(assert (=> bs!1239231 (= lambda!274279 lambda!274278)))

(declare-fun bs!1239232 () Bool)

(assert (= bs!1239232 (and d!1714495 d!1714435)))

(assert (=> bs!1239232 (= lambda!274279 lambda!274262)))

(declare-fun bs!1239233 () Bool)

(assert (= bs!1239233 (and d!1714495 d!1714425)))

(assert (=> bs!1239233 (= lambda!274279 lambda!274259)))

(declare-fun bs!1239234 () Bool)

(assert (= bs!1239234 (and d!1714495 d!1714441)))

(assert (=> bs!1239234 (= lambda!274279 lambda!274263)))

(declare-fun bs!1239235 () Bool)

(assert (= bs!1239235 (and d!1714495 d!1714465)))

(assert (=> bs!1239235 (= lambda!274279 lambda!274267)))

(assert (=> d!1714495 (= (inv!80814 (h!67706 zl!343)) (forall!14448 (exprs!4911 (h!67706 zl!343)) lambda!274279))))

(declare-fun bs!1239236 () Bool)

(assert (= bs!1239236 d!1714495))

(declare-fun m!6376634 () Bool)

(assert (=> bs!1239236 m!6376634))

(assert (=> b!5343585 d!1714495))

(declare-fun b!5344628 () Bool)

(declare-fun e!3318382 () Bool)

(declare-fun tp!1485524 () Bool)

(declare-fun tp!1485525 () Bool)

(assert (=> b!5344628 (= e!3318382 (and tp!1485524 tp!1485525))))

(assert (=> b!5343589 (= tp!1485454 e!3318382)))

(assert (= (and b!5343589 ((_ is Cons!61256) (exprs!4911 setElem!34501))) b!5344628))

(declare-fun condSetEmpty!34507 () Bool)

(assert (=> setNonEmpty!34501 (= condSetEmpty!34507 (= setRest!34501 ((as const (Array Context!8822 Bool)) false)))))

(declare-fun setRes!34507 () Bool)

(assert (=> setNonEmpty!34501 (= tp!1485455 setRes!34507)))

(declare-fun setIsEmpty!34507 () Bool)

(assert (=> setIsEmpty!34507 setRes!34507))

(declare-fun e!3318385 () Bool)

(declare-fun tp!1485531 () Bool)

(declare-fun setNonEmpty!34507 () Bool)

(declare-fun setElem!34507 () Context!8822)

(assert (=> setNonEmpty!34507 (= setRes!34507 (and tp!1485531 (inv!80814 setElem!34507) e!3318385))))

(declare-fun setRest!34507 () (InoxSet Context!8822))

(assert (=> setNonEmpty!34507 (= setRest!34501 ((_ map or) (store ((as const (Array Context!8822 Bool)) false) setElem!34507 true) setRest!34507))))

(declare-fun b!5344633 () Bool)

(declare-fun tp!1485530 () Bool)

(assert (=> b!5344633 (= e!3318385 tp!1485530)))

(assert (= (and setNonEmpty!34501 condSetEmpty!34507) setIsEmpty!34507))

(assert (= (and setNonEmpty!34501 (not condSetEmpty!34507)) setNonEmpty!34507))

(assert (= setNonEmpty!34507 b!5344633))

(declare-fun m!6376636 () Bool)

(assert (=> setNonEmpty!34507 m!6376636))

(declare-fun b!5344645 () Bool)

(declare-fun e!3318388 () Bool)

(declare-fun tp!1485544 () Bool)

(declare-fun tp!1485543 () Bool)

(assert (=> b!5344645 (= e!3318388 (and tp!1485544 tp!1485543))))

(assert (=> b!5343568 (= tp!1485452 e!3318388)))

(declare-fun b!5344647 () Bool)

(declare-fun tp!1485545 () Bool)

(declare-fun tp!1485546 () Bool)

(assert (=> b!5344647 (= e!3318388 (and tp!1485545 tp!1485546))))

(declare-fun b!5344646 () Bool)

(declare-fun tp!1485542 () Bool)

(assert (=> b!5344646 (= e!3318388 tp!1485542)))

(declare-fun b!5344644 () Bool)

(assert (=> b!5344644 (= e!3318388 tp_is_empty!39307)))

(assert (= (and b!5343568 ((_ is ElementMatch!15027) (reg!15356 r!7292))) b!5344644))

(assert (= (and b!5343568 ((_ is Concat!23872) (reg!15356 r!7292))) b!5344645))

(assert (= (and b!5343568 ((_ is Star!15027) (reg!15356 r!7292))) b!5344646))

(assert (= (and b!5343568 ((_ is Union!15027) (reg!15356 r!7292))) b!5344647))

(declare-fun b!5344649 () Bool)

(declare-fun e!3318389 () Bool)

(declare-fun tp!1485549 () Bool)

(declare-fun tp!1485548 () Bool)

(assert (=> b!5344649 (= e!3318389 (and tp!1485549 tp!1485548))))

(assert (=> b!5343583 (= tp!1485457 e!3318389)))

(declare-fun b!5344651 () Bool)

(declare-fun tp!1485550 () Bool)

(declare-fun tp!1485551 () Bool)

(assert (=> b!5344651 (= e!3318389 (and tp!1485550 tp!1485551))))

(declare-fun b!5344650 () Bool)

(declare-fun tp!1485547 () Bool)

(assert (=> b!5344650 (= e!3318389 tp!1485547)))

(declare-fun b!5344648 () Bool)

(assert (=> b!5344648 (= e!3318389 tp_is_empty!39307)))

(assert (= (and b!5343583 ((_ is ElementMatch!15027) (regOne!30567 r!7292))) b!5344648))

(assert (= (and b!5343583 ((_ is Concat!23872) (regOne!30567 r!7292))) b!5344649))

(assert (= (and b!5343583 ((_ is Star!15027) (regOne!30567 r!7292))) b!5344650))

(assert (= (and b!5343583 ((_ is Union!15027) (regOne!30567 r!7292))) b!5344651))

(declare-fun b!5344653 () Bool)

(declare-fun e!3318390 () Bool)

(declare-fun tp!1485554 () Bool)

(declare-fun tp!1485553 () Bool)

(assert (=> b!5344653 (= e!3318390 (and tp!1485554 tp!1485553))))

(assert (=> b!5343583 (= tp!1485461 e!3318390)))

(declare-fun b!5344655 () Bool)

(declare-fun tp!1485555 () Bool)

(declare-fun tp!1485556 () Bool)

(assert (=> b!5344655 (= e!3318390 (and tp!1485555 tp!1485556))))

(declare-fun b!5344654 () Bool)

(declare-fun tp!1485552 () Bool)

(assert (=> b!5344654 (= e!3318390 tp!1485552)))

(declare-fun b!5344652 () Bool)

(assert (=> b!5344652 (= e!3318390 tp_is_empty!39307)))

(assert (= (and b!5343583 ((_ is ElementMatch!15027) (regTwo!30567 r!7292))) b!5344652))

(assert (= (and b!5343583 ((_ is Concat!23872) (regTwo!30567 r!7292))) b!5344653))

(assert (= (and b!5343583 ((_ is Star!15027) (regTwo!30567 r!7292))) b!5344654))

(assert (= (and b!5343583 ((_ is Union!15027) (regTwo!30567 r!7292))) b!5344655))

(declare-fun b!5344656 () Bool)

(declare-fun e!3318391 () Bool)

(declare-fun tp!1485557 () Bool)

(declare-fun tp!1485558 () Bool)

(assert (=> b!5344656 (= e!3318391 (and tp!1485557 tp!1485558))))

(assert (=> b!5343593 (= tp!1485459 e!3318391)))

(assert (= (and b!5343593 ((_ is Cons!61256) (exprs!4911 (h!67706 zl!343)))) b!5344656))

(declare-fun b!5344661 () Bool)

(declare-fun e!3318394 () Bool)

(declare-fun tp!1485561 () Bool)

(assert (=> b!5344661 (= e!3318394 (and tp_is_empty!39307 tp!1485561))))

(assert (=> b!5343567 (= tp!1485460 e!3318394)))

(assert (= (and b!5343567 ((_ is Cons!61257) (t!374598 s!2326))) b!5344661))

(declare-fun b!5344663 () Bool)

(declare-fun e!3318395 () Bool)

(declare-fun tp!1485564 () Bool)

(declare-fun tp!1485563 () Bool)

(assert (=> b!5344663 (= e!3318395 (and tp!1485564 tp!1485563))))

(assert (=> b!5343571 (= tp!1485453 e!3318395)))

(declare-fun b!5344665 () Bool)

(declare-fun tp!1485565 () Bool)

(declare-fun tp!1485566 () Bool)

(assert (=> b!5344665 (= e!3318395 (and tp!1485565 tp!1485566))))

(declare-fun b!5344664 () Bool)

(declare-fun tp!1485562 () Bool)

(assert (=> b!5344664 (= e!3318395 tp!1485562)))

(declare-fun b!5344662 () Bool)

(assert (=> b!5344662 (= e!3318395 tp_is_empty!39307)))

(assert (= (and b!5343571 ((_ is ElementMatch!15027) (regOne!30566 r!7292))) b!5344662))

(assert (= (and b!5343571 ((_ is Concat!23872) (regOne!30566 r!7292))) b!5344663))

(assert (= (and b!5343571 ((_ is Star!15027) (regOne!30566 r!7292))) b!5344664))

(assert (= (and b!5343571 ((_ is Union!15027) (regOne!30566 r!7292))) b!5344665))

(declare-fun b!5344667 () Bool)

(declare-fun e!3318396 () Bool)

(declare-fun tp!1485569 () Bool)

(declare-fun tp!1485568 () Bool)

(assert (=> b!5344667 (= e!3318396 (and tp!1485569 tp!1485568))))

(assert (=> b!5343571 (= tp!1485458 e!3318396)))

(declare-fun b!5344669 () Bool)

(declare-fun tp!1485570 () Bool)

(declare-fun tp!1485571 () Bool)

(assert (=> b!5344669 (= e!3318396 (and tp!1485570 tp!1485571))))

(declare-fun b!5344668 () Bool)

(declare-fun tp!1485567 () Bool)

(assert (=> b!5344668 (= e!3318396 tp!1485567)))

(declare-fun b!5344666 () Bool)

(assert (=> b!5344666 (= e!3318396 tp_is_empty!39307)))

(assert (= (and b!5343571 ((_ is ElementMatch!15027) (regTwo!30566 r!7292))) b!5344666))

(assert (= (and b!5343571 ((_ is Concat!23872) (regTwo!30566 r!7292))) b!5344667))

(assert (= (and b!5343571 ((_ is Star!15027) (regTwo!30566 r!7292))) b!5344668))

(assert (= (and b!5343571 ((_ is Union!15027) (regTwo!30566 r!7292))) b!5344669))

(declare-fun b!5344677 () Bool)

(declare-fun e!3318402 () Bool)

(declare-fun tp!1485576 () Bool)

(assert (=> b!5344677 (= e!3318402 tp!1485576)))

(declare-fun e!3318401 () Bool)

(declare-fun tp!1485577 () Bool)

(declare-fun b!5344676 () Bool)

(assert (=> b!5344676 (= e!3318401 (and (inv!80814 (h!67706 (t!374599 zl!343))) e!3318402 tp!1485577))))

(assert (=> b!5343585 (= tp!1485456 e!3318401)))

(assert (= b!5344676 b!5344677))

(assert (= (and b!5343585 ((_ is Cons!61258) (t!374599 zl!343))) b!5344676))

(declare-fun m!6376638 () Bool)

(assert (=> b!5344676 m!6376638))

(declare-fun b_lambda!205241 () Bool)

(assert (= b_lambda!205235 (or b!5343578 b_lambda!205241)))

(declare-fun bs!1239237 () Bool)

(declare-fun d!1714497 () Bool)

(assert (= bs!1239237 (and d!1714497 b!5343578)))

(assert (=> bs!1239237 (= (dynLambda!24214 lambda!274163 (h!67706 zl!343)) (derivationStepZipperUp!399 (h!67706 zl!343) (h!67705 s!2326)))))

(assert (=> bs!1239237 m!6375686))

(assert (=> d!1714385 d!1714497))

(declare-fun b_lambda!205243 () Bool)

(assert (= b_lambda!205233 (or b!5343578 b_lambda!205243)))

(declare-fun bs!1239238 () Bool)

(declare-fun d!1714499 () Bool)

(assert (= bs!1239238 (and d!1714499 b!5343578)))

(assert (=> bs!1239238 (= (dynLambda!24214 lambda!274163 lt!2178948) (derivationStepZipperUp!399 lt!2178948 (h!67705 s!2326)))))

(assert (=> bs!1239238 m!6375652))

(assert (=> d!1714357 d!1714499))

(check-sat (not d!1714441) (not b!5344414) (not b!5344649) (not d!1714477) (not bm!381995) (not b!5344542) (not b!5344473) (not b!5344668) (not b!5344514) (not b!5344501) (not b!5344404) (not d!1714451) (not b!5344422) (not b!5344360) (not b!5344133) (not b!5344476) (not b!5344615) (not b!5344474) (not d!1714469) (not b!5344481) (not d!1714425) (not d!1714307) (not b!5344479) (not b!5344597) (not b!5344457) (not b!5344490) (not bm!382029) (not d!1714275) (not d!1714487) (not b!5344213) (not b!5344482) (not b!5344656) (not b!5344444) (not b!5344471) (not b!5344423) (not b!5344661) (not bm!382032) (not d!1714453) (not b!5344524) (not d!1714367) (not b!5344150) (not d!1714327) (not d!1714405) (not b!5344355) tp_is_empty!39307 (not b!5344645) (not b!5344362) (not b!5344336) (not b!5344596) (not b!5344496) (not b!5344495) (not bm!382015) (not bm!381998) (not b!5344493) (not d!1714447) (not bm!382036) (not bm!382018) (not b!5344527) (not d!1714361) (not bm!381991) (not b!5344148) (not b!5344664) (not b!5344553) (not b!5344486) (not d!1714423) (not b!5344469) (not d!1714417) (not b!5344620) (not b!5344534) (not d!1714443) (not d!1714385) (not bm!382039) (not b!5344485) (not b!5344539) (not b!5344343) (not b!5344601) (not d!1714287) (not b!5344330) (not b!5344655) (not d!1714277) (not b!5344562) (not b!5344335) (not b!5344312) (not b!5343894) (not b!5344452) (not b!5344494) (not d!1714475) (not b!5344420) (not b!5344151) (not b!5344149) (not b!5344613) (not bm!382028) (not b_lambda!205243) (not b!5343893) (not b!5344513) (not b!5344521) (not d!1714397) (not d!1714455) (not b!5344535) (not d!1714357) (not b!5344540) (not bs!1239238) (not b!5344557) (not d!1714231) (not bs!1239237) (not d!1714435) (not b!5344628) (not d!1714463) (not b!5344357) (not bm!382037) (not d!1714437) (not b!5344048) (not b!5344208) (not d!1714449) (not d!1714421) (not d!1714363) (not b!5344543) (not d!1714471) (not b!5344510) (not bm!382019) (not b!5344325) (not b!5344410) (not b_lambda!205241) (not b!5344321) (not bm!381979) (not b!5344633) (not b!5344488) (not b!5344342) (not b!5344211) (not d!1714461) (not b!5344498) (not d!1714459) (not b!5344573) (not b!5344647) (not d!1714415) (not b!5344667) (not bm!382027) (not d!1714483) (not b!5344614) (not b!5344504) (not d!1714407) (not b!5344654) (not b!5344507) (not bm!382035) (not b!5344100) (not b!5344407) (not bm!381997) (not d!1714465) (not b!5344599) (not b!5344398) (not b!5344528) (not d!1714365) (not d!1714433) (not d!1714403) (not b!5344651) (not b!5344499) (not b!5344663) (not b!5344556) (not bm!382038) (not bm!382011) (not bm!382017) (not b!5344537) (not b!5344344) (not b!5344099) (not b!5344650) (not b!5344483) (not b!5344609) (not bm!382012) (not b!5344547) (not b!5344491) (not b!5344326) (not b!5343891) (not bm!382025) (not b!5344622) (not b!5344567) (not b!5344529) (not b!5344515) (not b!5343895) (not b!5344478) (not d!1714485) (not b!5344677) (not b!5344604) (not b!5344406) (not d!1714481) (not b!5344204) (not b!5344331) (not d!1714473) (not bm!382020) (not b!5344320) (not bm!382034) (not b!5343888) (not b!5344415) (not b!5344669) (not b!5344447) (not b!5344205) (not d!1714371) (not setNonEmpty!34507) (not d!1714233) (not b!5344212) (not b!5344600) (not b!5344450) (not d!1714495) (not b!5344563) (not b!5344484) (not b!5344595) (not b!5344231) (not b!5344445) (not b!5344421) (not b!5343889) (not b!5344453) (not b!5344665) (not b!5344505) (not b!5344561) (not b!5344653) (not b!5344559) (not b!5344646) (not b!5344503) (not d!1714457) (not bm!381980) (not b!5344339) (not d!1714439) (not d!1714445) (not d!1714393) (not d!1714419) (not bm!382026) (not b!5344449) (not b!5344520) (not b!5344506) (not b!5344413) (not b!5344676))
(check-sat)
