; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565246 () Bool)

(assert start!565246)

(declare-fun b!5372958 () Bool)

(assert (=> b!5372958 true))

(assert (=> b!5372958 true))

(declare-fun lambda!277377 () Int)

(declare-fun lambda!277376 () Int)

(assert (=> b!5372958 (not (= lambda!277377 lambda!277376))))

(assert (=> b!5372958 true))

(assert (=> b!5372958 true))

(declare-fun b!5372966 () Bool)

(assert (=> b!5372966 true))

(declare-fun bs!1243992 () Bool)

(declare-fun b!5372969 () Bool)

(assert (= bs!1243992 (and b!5372969 b!5372958)))

(declare-datatypes ((C!30452 0))(
  ( (C!30453 (val!24928 Int)) )
))
(declare-datatypes ((Regex!15091 0))(
  ( (ElementMatch!15091 (c!936243 C!30452)) (Concat!23936 (regOne!30694 Regex!15091) (regTwo!30694 Regex!15091)) (EmptyExpr!15091) (Star!15091 (reg!15420 Regex!15091)) (EmptyLang!15091) (Union!15091 (regOne!30695 Regex!15091) (regTwo!30695 Regex!15091)) )
))
(declare-fun r!7292 () Regex!15091)

(declare-fun lambda!277379 () Int)

(declare-fun lt!2188179 () Regex!15091)

(assert (=> bs!1243992 (= (= lt!2188179 (regOne!30694 r!7292)) (= lambda!277379 lambda!277376))))

(assert (=> bs!1243992 (not (= lambda!277379 lambda!277377))))

(assert (=> b!5372969 true))

(assert (=> b!5372969 true))

(assert (=> b!5372969 true))

(declare-fun lambda!277380 () Int)

(assert (=> bs!1243992 (not (= lambda!277380 lambda!277376))))

(assert (=> bs!1243992 (= (= lt!2188179 (regOne!30694 r!7292)) (= lambda!277380 lambda!277377))))

(assert (=> b!5372969 (not (= lambda!277380 lambda!277379))))

(assert (=> b!5372969 true))

(assert (=> b!5372969 true))

(assert (=> b!5372969 true))

(declare-fun bs!1243993 () Bool)

(declare-fun b!5372986 () Bool)

(assert (= bs!1243993 (and b!5372986 b!5372958)))

(declare-datatypes ((List!61572 0))(
  ( (Nil!61448) (Cons!61448 (h!67896 C!30452) (t!374795 List!61572)) )
))
(declare-fun s!2326 () List!61572)

(declare-fun lambda!277381 () Int)

(declare-datatypes ((tuple2!64580 0))(
  ( (tuple2!64581 (_1!35593 List!61572) (_2!35593 List!61572)) )
))
(declare-fun lt!2188155 () tuple2!64580)

(assert (=> bs!1243993 (= (and (= (_1!35593 lt!2188155) s!2326) (= (reg!15420 (regOne!30694 r!7292)) (regOne!30694 r!7292)) (= lt!2188179 (regTwo!30694 r!7292))) (= lambda!277381 lambda!277376))))

(assert (=> bs!1243993 (not (= lambda!277381 lambda!277377))))

(declare-fun bs!1243994 () Bool)

(assert (= bs!1243994 (and b!5372986 b!5372969)))

(assert (=> bs!1243994 (= (and (= (_1!35593 lt!2188155) s!2326) (= (reg!15420 (regOne!30694 r!7292)) lt!2188179) (= lt!2188179 (regTwo!30694 r!7292))) (= lambda!277381 lambda!277379))))

(assert (=> bs!1243994 (not (= lambda!277381 lambda!277380))))

(assert (=> b!5372986 true))

(assert (=> b!5372986 true))

(assert (=> b!5372986 true))

(declare-fun b!5372954 () Bool)

(declare-fun e!3333763 () Bool)

(declare-fun e!3333751 () Bool)

(assert (=> b!5372954 (= e!3333763 e!3333751)))

(declare-fun res!2280619 () Bool)

(assert (=> b!5372954 (=> res!2280619 e!3333751)))

(declare-datatypes ((List!61573 0))(
  ( (Nil!61449) (Cons!61449 (h!67897 Regex!15091) (t!374796 List!61573)) )
))
(declare-datatypes ((Context!8950 0))(
  ( (Context!8951 (exprs!4975 List!61573)) )
))
(declare-fun lt!2188178 () Context!8950)

(declare-datatypes ((List!61574 0))(
  ( (Nil!61450) (Cons!61450 (h!67898 Context!8950) (t!374797 List!61574)) )
))
(declare-fun unfocusZipper!833 (List!61574) Regex!15091)

(assert (=> b!5372954 (= res!2280619 (not (= (unfocusZipper!833 (Cons!61450 lt!2188178 Nil!61450)) (reg!15420 (regOne!30694 r!7292)))))))

(declare-fun lt!2188170 () Context!8950)

(declare-fun lambda!277378 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2188176 () (InoxSet Context!8950))

(declare-fun flatMap!818 ((InoxSet Context!8950) Int) (InoxSet Context!8950))

(declare-fun derivationStepZipperUp!463 (Context!8950 C!30452) (InoxSet Context!8950))

(assert (=> b!5372954 (= (flatMap!818 lt!2188176 lambda!277378) (derivationStepZipperUp!463 lt!2188170 (h!67896 s!2326)))))

(declare-datatypes ((Unit!153882 0))(
  ( (Unit!153883) )
))
(declare-fun lt!2188166 () Unit!153882)

(declare-fun lemmaFlatMapOnSingletonSet!350 ((InoxSet Context!8950) Context!8950 Int) Unit!153882)

(assert (=> b!5372954 (= lt!2188166 (lemmaFlatMapOnSingletonSet!350 lt!2188176 lt!2188170 lambda!277378))))

(declare-fun lt!2188146 () (InoxSet Context!8950))

(assert (=> b!5372954 (= (flatMap!818 lt!2188146 lambda!277378) (derivationStepZipperUp!463 lt!2188178 (h!67896 s!2326)))))

(declare-fun lt!2188171 () Unit!153882)

(assert (=> b!5372954 (= lt!2188171 (lemmaFlatMapOnSingletonSet!350 lt!2188146 lt!2188178 lambda!277378))))

(declare-fun lt!2188149 () (InoxSet Context!8950))

(assert (=> b!5372954 (= lt!2188149 (derivationStepZipperUp!463 lt!2188170 (h!67896 s!2326)))))

(declare-fun lt!2188172 () (InoxSet Context!8950))

(assert (=> b!5372954 (= lt!2188172 (derivationStepZipperUp!463 lt!2188178 (h!67896 s!2326)))))

(assert (=> b!5372954 (= lt!2188176 (store ((as const (Array Context!8950 Bool)) false) lt!2188170 true))))

(assert (=> b!5372954 (= lt!2188146 (store ((as const (Array Context!8950 Bool)) false) lt!2188178 true))))

(assert (=> b!5372954 (= lt!2188178 (Context!8951 (Cons!61449 (reg!15420 (regOne!30694 r!7292)) Nil!61449)))))

(declare-fun b!5372955 () Bool)

(declare-fun res!2280618 () Bool)

(declare-fun e!3333769 () Bool)

(assert (=> b!5372955 (=> res!2280618 e!3333769)))

(declare-fun lt!2188152 () (InoxSet Context!8950))

(declare-fun lt!2188151 () (InoxSet Context!8950))

(declare-fun matchZipper!1335 ((InoxSet Context!8950) List!61572) Bool)

(assert (=> b!5372955 (= res!2280618 (not (= (matchZipper!1335 lt!2188151 s!2326) (matchZipper!1335 lt!2188152 (t!374795 s!2326)))))))

(declare-fun b!5372956 () Bool)

(declare-fun e!3333766 () Bool)

(declare-fun lt!2188177 () (InoxSet Context!8950))

(assert (=> b!5372956 (= e!3333766 (matchZipper!1335 lt!2188177 (t!374795 s!2326)))))

(declare-fun b!5372957 () Bool)

(declare-fun res!2280613 () Bool)

(assert (=> b!5372957 (=> res!2280613 e!3333769)))

(declare-fun lt!2188165 () Regex!15091)

(assert (=> b!5372957 (= res!2280613 (not (= lt!2188165 r!7292)))))

(declare-fun e!3333753 () Bool)

(declare-fun e!3333755 () Bool)

(assert (=> b!5372958 (= e!3333753 e!3333755)))

(declare-fun res!2280601 () Bool)

(assert (=> b!5372958 (=> res!2280601 e!3333755)))

(declare-fun lt!2188142 () Bool)

(declare-fun lt!2188174 () Bool)

(get-info :version)

(assert (=> b!5372958 (= res!2280601 (or (not (= lt!2188142 lt!2188174)) ((_ is Nil!61448) s!2326)))))

(declare-fun Exists!2272 (Int) Bool)

(assert (=> b!5372958 (= (Exists!2272 lambda!277376) (Exists!2272 lambda!277377))))

(declare-fun lt!2188154 () Unit!153882)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!926 (Regex!15091 Regex!15091 List!61572) Unit!153882)

(assert (=> b!5372958 (= lt!2188154 (lemmaExistCutMatchRandMatchRSpecEquivalent!926 (regOne!30694 r!7292) (regTwo!30694 r!7292) s!2326))))

(assert (=> b!5372958 (= lt!2188174 (Exists!2272 lambda!277376))))

(declare-datatypes ((Option!15202 0))(
  ( (None!15201) (Some!15201 (v!51230 tuple2!64580)) )
))
(declare-fun isDefined!11905 (Option!15202) Bool)

(declare-fun findConcatSeparation!1616 (Regex!15091 Regex!15091 List!61572 List!61572 List!61572) Option!15202)

(assert (=> b!5372958 (= lt!2188174 (isDefined!11905 (findConcatSeparation!1616 (regOne!30694 r!7292) (regTwo!30694 r!7292) Nil!61448 s!2326 s!2326)))))

(declare-fun lt!2188164 () Unit!153882)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1380 (Regex!15091 Regex!15091 List!61572) Unit!153882)

(assert (=> b!5372958 (= lt!2188164 (lemmaFindConcatSeparationEquivalentToExists!1380 (regOne!30694 r!7292) (regTwo!30694 r!7292) s!2326))))

(declare-fun b!5372959 () Bool)

(declare-fun res!2280623 () Bool)

(assert (=> b!5372959 (=> res!2280623 e!3333755)))

(declare-fun zl!343 () List!61574)

(declare-fun isEmpty!33430 (List!61573) Bool)

(assert (=> b!5372959 (= res!2280623 (isEmpty!33430 (t!374796 (exprs!4975 (h!67898 zl!343)))))))

(declare-fun b!5372960 () Bool)

(declare-fun e!3333770 () Bool)

(assert (=> b!5372960 (= e!3333770 e!3333769)))

(declare-fun res!2280595 () Bool)

(assert (=> b!5372960 (=> res!2280595 e!3333769)))

(declare-fun lt!2188157 () (InoxSet Context!8950))

(assert (=> b!5372960 (= res!2280595 (not (= lt!2188152 lt!2188157)))))

(declare-fun lt!2188144 () Context!8950)

(assert (=> b!5372960 (= (flatMap!818 lt!2188151 lambda!277378) (derivationStepZipperUp!463 lt!2188144 (h!67896 s!2326)))))

(declare-fun lt!2188162 () Unit!153882)

(assert (=> b!5372960 (= lt!2188162 (lemmaFlatMapOnSingletonSet!350 lt!2188151 lt!2188144 lambda!277378))))

(declare-fun lt!2188163 () (InoxSet Context!8950))

(assert (=> b!5372960 (= lt!2188163 (derivationStepZipperUp!463 lt!2188144 (h!67896 s!2326)))))

(declare-fun derivationStepZipper!1330 ((InoxSet Context!8950) C!30452) (InoxSet Context!8950))

(assert (=> b!5372960 (= lt!2188152 (derivationStepZipper!1330 lt!2188151 (h!67896 s!2326)))))

(assert (=> b!5372960 (= lt!2188151 (store ((as const (Array Context!8950 Bool)) false) lt!2188144 true))))

(declare-fun lt!2188161 () List!61573)

(assert (=> b!5372960 (= lt!2188144 (Context!8951 (Cons!61449 (reg!15420 (regOne!30694 r!7292)) lt!2188161)))))

(declare-fun b!5372961 () Bool)

(declare-fun e!3333760 () Bool)

(declare-fun tp!1490333 () Bool)

(assert (=> b!5372961 (= e!3333760 tp!1490333)))

(declare-fun b!5372962 () Bool)

(declare-fun res!2280622 () Bool)

(declare-fun e!3333761 () Bool)

(assert (=> b!5372962 (=> (not res!2280622) (not e!3333761))))

(declare-fun z!1189 () (InoxSet Context!8950))

(declare-fun toList!8875 ((InoxSet Context!8950)) List!61574)

(assert (=> b!5372962 (= res!2280622 (= (toList!8875 z!1189) zl!343))))

(declare-fun b!5372963 () Bool)

(declare-fun e!3333756 () Bool)

(assert (=> b!5372963 (= e!3333761 e!3333756)))

(declare-fun res!2280604 () Bool)

(assert (=> b!5372963 (=> (not res!2280604) (not e!3333756))))

(assert (=> b!5372963 (= res!2280604 (= r!7292 lt!2188165))))

(assert (=> b!5372963 (= lt!2188165 (unfocusZipper!833 zl!343))))

(declare-fun b!5372964 () Bool)

(declare-fun res!2280597 () Bool)

(declare-fun e!3333752 () Bool)

(assert (=> b!5372964 (=> res!2280597 e!3333752)))

(declare-fun e!3333764 () Bool)

(assert (=> b!5372964 (= res!2280597 e!3333764)))

(declare-fun res!2280611 () Bool)

(assert (=> b!5372964 (=> (not res!2280611) (not e!3333764))))

(assert (=> b!5372964 (= res!2280611 ((_ is Concat!23936) (regOne!30694 r!7292)))))

(declare-fun b!5372965 () Bool)

(declare-fun res!2280610 () Bool)

(assert (=> b!5372965 (=> res!2280610 e!3333752)))

(assert (=> b!5372965 (= res!2280610 (or ((_ is Concat!23936) (regOne!30694 r!7292)) (not ((_ is Star!15091) (regOne!30694 r!7292)))))))

(assert (=> b!5372966 (= e!3333755 e!3333752)))

(declare-fun res!2280607 () Bool)

(assert (=> b!5372966 (=> res!2280607 e!3333752)))

(assert (=> b!5372966 (= res!2280607 (or (and ((_ is ElementMatch!15091) (regOne!30694 r!7292)) (= (c!936243 (regOne!30694 r!7292)) (h!67896 s!2326))) ((_ is Union!15091) (regOne!30694 r!7292))))))

(declare-fun lt!2188148 () Unit!153882)

(declare-fun e!3333757 () Unit!153882)

(assert (=> b!5372966 (= lt!2188148 e!3333757)))

(declare-fun c!936242 () Bool)

(declare-fun nullable!5260 (Regex!15091) Bool)

(assert (=> b!5372966 (= c!936242 (nullable!5260 (h!67897 (exprs!4975 (h!67898 zl!343)))))))

(assert (=> b!5372966 (= (flatMap!818 z!1189 lambda!277378) (derivationStepZipperUp!463 (h!67898 zl!343) (h!67896 s!2326)))))

(declare-fun lt!2188147 () Unit!153882)

(assert (=> b!5372966 (= lt!2188147 (lemmaFlatMapOnSingletonSet!350 z!1189 (h!67898 zl!343) lambda!277378))))

(declare-fun lt!2188180 () Context!8950)

(assert (=> b!5372966 (= lt!2188177 (derivationStepZipperUp!463 lt!2188180 (h!67896 s!2326)))))

(declare-fun lt!2188167 () (InoxSet Context!8950))

(declare-fun derivationStepZipperDown!539 (Regex!15091 Context!8950 C!30452) (InoxSet Context!8950))

(assert (=> b!5372966 (= lt!2188167 (derivationStepZipperDown!539 (h!67897 (exprs!4975 (h!67898 zl!343))) lt!2188180 (h!67896 s!2326)))))

(assert (=> b!5372966 (= lt!2188180 (Context!8951 (t!374796 (exprs!4975 (h!67898 zl!343)))))))

(declare-fun lt!2188168 () (InoxSet Context!8950))

(assert (=> b!5372966 (= lt!2188168 (derivationStepZipperUp!463 (Context!8951 (Cons!61449 (h!67897 (exprs!4975 (h!67898 zl!343))) (t!374796 (exprs!4975 (h!67898 zl!343))))) (h!67896 s!2326)))))

(declare-fun setIsEmpty!34829 () Bool)

(declare-fun setRes!34829 () Bool)

(assert (=> setIsEmpty!34829 setRes!34829))

(declare-fun b!5372967 () Bool)

(declare-fun e!3333750 () Bool)

(assert (=> b!5372967 (= e!3333750 e!3333763)))

(declare-fun res!2280609 () Bool)

(assert (=> b!5372967 (=> res!2280609 e!3333763)))

(declare-fun lt!2188153 () Regex!15091)

(assert (=> b!5372967 (= res!2280609 (not (= (unfocusZipper!833 (Cons!61450 lt!2188144 Nil!61450)) lt!2188153)))))

(declare-fun lt!2188160 () Regex!15091)

(assert (=> b!5372967 (= lt!2188153 (Concat!23936 (reg!15420 (regOne!30694 r!7292)) lt!2188160))))

(declare-fun b!5372968 () Bool)

(declare-fun e!3333762 () Bool)

(declare-fun tp_is_empty!39435 () Bool)

(assert (=> b!5372968 (= e!3333762 tp_is_empty!39435)))

(declare-fun e!3333765 () Bool)

(declare-fun e!3333759 () Bool)

(assert (=> b!5372969 (= e!3333765 e!3333759)))

(declare-fun res!2280617 () Bool)

(assert (=> b!5372969 (=> res!2280617 e!3333759)))

(declare-fun ++!13394 (List!61572 List!61572) List!61572)

(assert (=> b!5372969 (= res!2280617 (not (= (++!13394 (_1!35593 lt!2188155) (_2!35593 lt!2188155)) s!2326)))))

(declare-fun lt!2188175 () Option!15202)

(declare-fun get!21145 (Option!15202) tuple2!64580)

(assert (=> b!5372969 (= lt!2188155 (get!21145 lt!2188175))))

(assert (=> b!5372969 (= (Exists!2272 lambda!277379) (Exists!2272 lambda!277380))))

(declare-fun lt!2188156 () Unit!153882)

(assert (=> b!5372969 (= lt!2188156 (lemmaExistCutMatchRandMatchRSpecEquivalent!926 lt!2188179 (regTwo!30694 r!7292) s!2326))))

(assert (=> b!5372969 (= (isDefined!11905 lt!2188175) (Exists!2272 lambda!277379))))

(assert (=> b!5372969 (= lt!2188175 (findConcatSeparation!1616 lt!2188179 (regTwo!30694 r!7292) Nil!61448 s!2326 s!2326))))

(declare-fun lt!2188173 () Unit!153882)

(assert (=> b!5372969 (= lt!2188173 (lemmaFindConcatSeparationEquivalentToExists!1380 lt!2188179 (regTwo!30694 r!7292) s!2326))))

(declare-fun b!5372970 () Bool)

(declare-fun e!3333768 () Bool)

(declare-fun lt!2188158 () Bool)

(assert (=> b!5372970 (= e!3333768 (or (not lt!2188142) lt!2188158))))

(declare-fun b!5372971 () Bool)

(assert (=> b!5372971 (= e!3333751 e!3333765)))

(declare-fun res!2280606 () Bool)

(assert (=> b!5372971 (=> res!2280606 e!3333765)))

(assert (=> b!5372971 (= res!2280606 (not lt!2188142))))

(assert (=> b!5372971 e!3333768))

(declare-fun res!2280600 () Bool)

(assert (=> b!5372971 (=> (not res!2280600) (not e!3333768))))

(declare-fun matchR!7276 (Regex!15091 List!61572) Bool)

(declare-fun matchRSpec!2194 (Regex!15091 List!61572) Bool)

(assert (=> b!5372971 (= res!2280600 (= (matchR!7276 lt!2188153 s!2326) (matchRSpec!2194 lt!2188153 s!2326)))))

(declare-fun lt!2188150 () Unit!153882)

(declare-fun mainMatchTheorem!2194 (Regex!15091 List!61572) Unit!153882)

(assert (=> b!5372971 (= lt!2188150 (mainMatchTheorem!2194 lt!2188153 s!2326))))

(declare-fun b!5372972 () Bool)

(declare-fun e!3333767 () Bool)

(declare-fun tp!1490328 () Bool)

(assert (=> b!5372972 (= e!3333767 (and tp_is_empty!39435 tp!1490328))))

(declare-fun b!5372973 () Bool)

(declare-fun res!2280603 () Bool)

(assert (=> b!5372973 (=> res!2280603 e!3333751)))

(assert (=> b!5372973 (= res!2280603 (not (= (unfocusZipper!833 (Cons!61450 lt!2188170 Nil!61450)) lt!2188160)))))

(declare-fun b!5372974 () Bool)

(declare-fun res!2280615 () Bool)

(assert (=> b!5372974 (=> res!2280615 e!3333753)))

(declare-fun isEmpty!33431 (List!61574) Bool)

(assert (=> b!5372974 (= res!2280615 (not (isEmpty!33431 (t!374797 zl!343))))))

(declare-fun b!5372975 () Bool)

(assert (=> b!5372975 (= e!3333769 e!3333750)))

(declare-fun res!2280602 () Bool)

(assert (=> b!5372975 (=> res!2280602 e!3333750)))

(assert (=> b!5372975 (= res!2280602 (not (= r!7292 lt!2188160)))))

(assert (=> b!5372975 (= lt!2188160 (Concat!23936 lt!2188179 (regTwo!30694 r!7292)))))

(declare-fun b!5372976 () Bool)

(assert (=> b!5372976 (= e!3333756 (not e!3333753))))

(declare-fun res!2280614 () Bool)

(assert (=> b!5372976 (=> res!2280614 e!3333753)))

(assert (=> b!5372976 (= res!2280614 (not ((_ is Cons!61450) zl!343)))))

(assert (=> b!5372976 (= lt!2188142 lt!2188158)))

(assert (=> b!5372976 (= lt!2188158 (matchRSpec!2194 r!7292 s!2326))))

(assert (=> b!5372976 (= lt!2188142 (matchR!7276 r!7292 s!2326))))

(declare-fun lt!2188145 () Unit!153882)

(assert (=> b!5372976 (= lt!2188145 (mainMatchTheorem!2194 r!7292 s!2326))))

(declare-fun b!5372977 () Bool)

(declare-fun tp!1490327 () Bool)

(assert (=> b!5372977 (= e!3333762 tp!1490327)))

(declare-fun b!5372978 () Bool)

(declare-fun res!2280608 () Bool)

(assert (=> b!5372978 (=> res!2280608 e!3333759)))

(assert (=> b!5372978 (= res!2280608 (not (matchR!7276 lt!2188179 (_1!35593 lt!2188155))))))

(declare-fun b!5372979 () Bool)

(declare-fun res!2280621 () Bool)

(assert (=> b!5372979 (=> res!2280621 e!3333753)))

(assert (=> b!5372979 (= res!2280621 (or ((_ is EmptyExpr!15091) r!7292) ((_ is EmptyLang!15091) r!7292) ((_ is ElementMatch!15091) r!7292) ((_ is Union!15091) r!7292) (not ((_ is Concat!23936) r!7292))))))

(declare-fun b!5372980 () Bool)

(declare-fun res!2280605 () Bool)

(assert (=> b!5372980 (=> res!2280605 e!3333759)))

(assert (=> b!5372980 (= res!2280605 (not (matchR!7276 (regTwo!30694 r!7292) (_2!35593 lt!2188155))))))

(declare-fun b!5372981 () Bool)

(assert (=> b!5372981 (= e!3333752 e!3333770)))

(declare-fun res!2280596 () Bool)

(assert (=> b!5372981 (=> res!2280596 e!3333770)))

(assert (=> b!5372981 (= res!2280596 (not (= lt!2188167 lt!2188157)))))

(assert (=> b!5372981 (= lt!2188157 (derivationStepZipperDown!539 (reg!15420 (regOne!30694 r!7292)) lt!2188170 (h!67896 s!2326)))))

(assert (=> b!5372981 (= lt!2188170 (Context!8951 lt!2188161))))

(assert (=> b!5372981 (= lt!2188161 (Cons!61449 lt!2188179 (t!374796 (exprs!4975 (h!67898 zl!343)))))))

(assert (=> b!5372981 (= lt!2188179 (Star!15091 (reg!15420 (regOne!30694 r!7292))))))

(declare-fun b!5372982 () Bool)

(declare-fun tp!1490325 () Bool)

(declare-fun tp!1490331 () Bool)

(assert (=> b!5372982 (= e!3333762 (and tp!1490325 tp!1490331))))

(declare-fun b!5372983 () Bool)

(declare-fun res!2280612 () Bool)

(assert (=> b!5372983 (=> res!2280612 e!3333753)))

(assert (=> b!5372983 (= res!2280612 (not ((_ is Cons!61449) (exprs!4975 (h!67898 zl!343)))))))

(declare-fun b!5372984 () Bool)

(assert (=> b!5372984 (= e!3333764 (nullable!5260 (regOne!30694 (regOne!30694 r!7292))))))

(declare-fun e!3333754 () Bool)

(declare-fun b!5372985 () Bool)

(declare-fun tp!1490332 () Bool)

(declare-fun inv!80974 (Context!8950) Bool)

(assert (=> b!5372985 (= e!3333754 (and (inv!80974 (h!67898 zl!343)) e!3333760 tp!1490332))))

(assert (=> b!5372986 (= e!3333759 true)))

(assert (=> b!5372986 (= (isDefined!11905 (findConcatSeparation!1616 (reg!15420 (regOne!30694 r!7292)) lt!2188179 Nil!61448 (_1!35593 lt!2188155) (_1!35593 lt!2188155))) (Exists!2272 lambda!277381))))

(declare-fun lt!2188169 () Unit!153882)

(assert (=> b!5372986 (= lt!2188169 (lemmaFindConcatSeparationEquivalentToExists!1380 (reg!15420 (regOne!30694 r!7292)) lt!2188179 (_1!35593 lt!2188155)))))

(assert (=> b!5372986 (matchRSpec!2194 lt!2188179 (_1!35593 lt!2188155))))

(declare-fun lt!2188159 () Unit!153882)

(assert (=> b!5372986 (= lt!2188159 (mainMatchTheorem!2194 lt!2188179 (_1!35593 lt!2188155)))))

(declare-fun b!5372987 () Bool)

(declare-fun Unit!153884 () Unit!153882)

(assert (=> b!5372987 (= e!3333757 Unit!153884)))

(declare-fun lt!2188143 () Unit!153882)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!328 ((InoxSet Context!8950) (InoxSet Context!8950) List!61572) Unit!153882)

(assert (=> b!5372987 (= lt!2188143 (lemmaZipperConcatMatchesSameAsBothZippers!328 lt!2188167 lt!2188177 (t!374795 s!2326)))))

(declare-fun res!2280599 () Bool)

(assert (=> b!5372987 (= res!2280599 (matchZipper!1335 lt!2188167 (t!374795 s!2326)))))

(assert (=> b!5372987 (=> res!2280599 e!3333766)))

(assert (=> b!5372987 (= (matchZipper!1335 ((_ map or) lt!2188167 lt!2188177) (t!374795 s!2326)) e!3333766)))

(declare-fun res!2280616 () Bool)

(assert (=> start!565246 (=> (not res!2280616) (not e!3333761))))

(declare-fun validRegex!6827 (Regex!15091) Bool)

(assert (=> start!565246 (= res!2280616 (validRegex!6827 r!7292))))

(assert (=> start!565246 e!3333761))

(assert (=> start!565246 e!3333762))

(declare-fun condSetEmpty!34829 () Bool)

(assert (=> start!565246 (= condSetEmpty!34829 (= z!1189 ((as const (Array Context!8950 Bool)) false)))))

(assert (=> start!565246 setRes!34829))

(assert (=> start!565246 e!3333754))

(assert (=> start!565246 e!3333767))

(declare-fun b!5372988 () Bool)

(declare-fun tp!1490330 () Bool)

(declare-fun tp!1490324 () Bool)

(assert (=> b!5372988 (= e!3333762 (and tp!1490330 tp!1490324))))

(declare-fun e!3333758 () Bool)

(declare-fun tp!1490326 () Bool)

(declare-fun setNonEmpty!34829 () Bool)

(declare-fun setElem!34829 () Context!8950)

(assert (=> setNonEmpty!34829 (= setRes!34829 (and tp!1490326 (inv!80974 setElem!34829) e!3333758))))

(declare-fun setRest!34829 () (InoxSet Context!8950))

(assert (=> setNonEmpty!34829 (= z!1189 ((_ map or) (store ((as const (Array Context!8950 Bool)) false) setElem!34829 true) setRest!34829))))

(declare-fun b!5372989 () Bool)

(declare-fun res!2280620 () Bool)

(assert (=> b!5372989 (=> res!2280620 e!3333753)))

(declare-fun generalisedUnion!1020 (List!61573) Regex!15091)

(declare-fun unfocusZipperList!533 (List!61574) List!61573)

(assert (=> b!5372989 (= res!2280620 (not (= r!7292 (generalisedUnion!1020 (unfocusZipperList!533 zl!343)))))))

(declare-fun b!5372990 () Bool)

(declare-fun tp!1490329 () Bool)

(assert (=> b!5372990 (= e!3333758 tp!1490329)))

(declare-fun b!5372991 () Bool)

(declare-fun res!2280598 () Bool)

(assert (=> b!5372991 (=> res!2280598 e!3333753)))

(declare-fun generalisedConcat!760 (List!61573) Regex!15091)

(assert (=> b!5372991 (= res!2280598 (not (= r!7292 (generalisedConcat!760 (exprs!4975 (h!67898 zl!343))))))))

(declare-fun b!5372992 () Bool)

(declare-fun res!2280594 () Bool)

(assert (=> b!5372992 (=> res!2280594 e!3333759)))

(declare-fun isEmpty!33432 (List!61572) Bool)

(assert (=> b!5372992 (= res!2280594 (isEmpty!33432 (_1!35593 lt!2188155)))))

(declare-fun b!5372993 () Bool)

(declare-fun Unit!153885 () Unit!153882)

(assert (=> b!5372993 (= e!3333757 Unit!153885)))

(assert (= (and start!565246 res!2280616) b!5372962))

(assert (= (and b!5372962 res!2280622) b!5372963))

(assert (= (and b!5372963 res!2280604) b!5372976))

(assert (= (and b!5372976 (not res!2280614)) b!5372974))

(assert (= (and b!5372974 (not res!2280615)) b!5372991))

(assert (= (and b!5372991 (not res!2280598)) b!5372983))

(assert (= (and b!5372983 (not res!2280612)) b!5372989))

(assert (= (and b!5372989 (not res!2280620)) b!5372979))

(assert (= (and b!5372979 (not res!2280621)) b!5372958))

(assert (= (and b!5372958 (not res!2280601)) b!5372959))

(assert (= (and b!5372959 (not res!2280623)) b!5372966))

(assert (= (and b!5372966 c!936242) b!5372987))

(assert (= (and b!5372966 (not c!936242)) b!5372993))

(assert (= (and b!5372987 (not res!2280599)) b!5372956))

(assert (= (and b!5372966 (not res!2280607)) b!5372964))

(assert (= (and b!5372964 res!2280611) b!5372984))

(assert (= (and b!5372964 (not res!2280597)) b!5372965))

(assert (= (and b!5372965 (not res!2280610)) b!5372981))

(assert (= (and b!5372981 (not res!2280596)) b!5372960))

(assert (= (and b!5372960 (not res!2280595)) b!5372955))

(assert (= (and b!5372955 (not res!2280618)) b!5372957))

(assert (= (and b!5372957 (not res!2280613)) b!5372975))

(assert (= (and b!5372975 (not res!2280602)) b!5372967))

(assert (= (and b!5372967 (not res!2280609)) b!5372954))

(assert (= (and b!5372954 (not res!2280619)) b!5372973))

(assert (= (and b!5372973 (not res!2280603)) b!5372971))

(assert (= (and b!5372971 res!2280600) b!5372970))

(assert (= (and b!5372971 (not res!2280606)) b!5372969))

(assert (= (and b!5372969 (not res!2280617)) b!5372978))

(assert (= (and b!5372978 (not res!2280608)) b!5372980))

(assert (= (and b!5372980 (not res!2280605)) b!5372992))

(assert (= (and b!5372992 (not res!2280594)) b!5372986))

(assert (= (and start!565246 ((_ is ElementMatch!15091) r!7292)) b!5372968))

(assert (= (and start!565246 ((_ is Concat!23936) r!7292)) b!5372988))

(assert (= (and start!565246 ((_ is Star!15091) r!7292)) b!5372977))

(assert (= (and start!565246 ((_ is Union!15091) r!7292)) b!5372982))

(assert (= (and start!565246 condSetEmpty!34829) setIsEmpty!34829))

(assert (= (and start!565246 (not condSetEmpty!34829)) setNonEmpty!34829))

(assert (= setNonEmpty!34829 b!5372990))

(assert (= b!5372985 b!5372961))

(assert (= (and start!565246 ((_ is Cons!61450) zl!343)) b!5372985))

(assert (= (and start!565246 ((_ is Cons!61448) s!2326)) b!5372972))

(declare-fun m!6399948 () Bool)

(assert (=> b!5372987 m!6399948))

(declare-fun m!6399950 () Bool)

(assert (=> b!5372987 m!6399950))

(declare-fun m!6399952 () Bool)

(assert (=> b!5372987 m!6399952))

(declare-fun m!6399954 () Bool)

(assert (=> b!5372981 m!6399954))

(declare-fun m!6399956 () Bool)

(assert (=> b!5372980 m!6399956))

(declare-fun m!6399958 () Bool)

(assert (=> b!5372976 m!6399958))

(declare-fun m!6399960 () Bool)

(assert (=> b!5372976 m!6399960))

(declare-fun m!6399962 () Bool)

(assert (=> b!5372976 m!6399962))

(declare-fun m!6399964 () Bool)

(assert (=> b!5372973 m!6399964))

(declare-fun m!6399966 () Bool)

(assert (=> b!5372984 m!6399966))

(declare-fun m!6399968 () Bool)

(assert (=> start!565246 m!6399968))

(declare-fun m!6399970 () Bool)

(assert (=> b!5372959 m!6399970))

(declare-fun m!6399972 () Bool)

(assert (=> b!5372958 m!6399972))

(assert (=> b!5372958 m!6399972))

(declare-fun m!6399974 () Bool)

(assert (=> b!5372958 m!6399974))

(declare-fun m!6399976 () Bool)

(assert (=> b!5372958 m!6399976))

(declare-fun m!6399978 () Bool)

(assert (=> b!5372958 m!6399978))

(declare-fun m!6399980 () Bool)

(assert (=> b!5372958 m!6399980))

(assert (=> b!5372958 m!6399974))

(declare-fun m!6399982 () Bool)

(assert (=> b!5372958 m!6399982))

(declare-fun m!6399984 () Bool)

(assert (=> b!5372956 m!6399984))

(declare-fun m!6399986 () Bool)

(assert (=> b!5372986 m!6399986))

(declare-fun m!6399988 () Bool)

(assert (=> b!5372986 m!6399988))

(declare-fun m!6399990 () Bool)

(assert (=> b!5372986 m!6399990))

(declare-fun m!6399992 () Bool)

(assert (=> b!5372986 m!6399992))

(assert (=> b!5372986 m!6399988))

(declare-fun m!6399994 () Bool)

(assert (=> b!5372986 m!6399994))

(declare-fun m!6399996 () Bool)

(assert (=> b!5372986 m!6399996))

(declare-fun m!6399998 () Bool)

(assert (=> b!5372989 m!6399998))

(assert (=> b!5372989 m!6399998))

(declare-fun m!6400000 () Bool)

(assert (=> b!5372989 m!6400000))

(declare-fun m!6400002 () Bool)

(assert (=> b!5372969 m!6400002))

(declare-fun m!6400004 () Bool)

(assert (=> b!5372969 m!6400004))

(declare-fun m!6400006 () Bool)

(assert (=> b!5372969 m!6400006))

(declare-fun m!6400008 () Bool)

(assert (=> b!5372969 m!6400008))

(declare-fun m!6400010 () Bool)

(assert (=> b!5372969 m!6400010))

(declare-fun m!6400012 () Bool)

(assert (=> b!5372969 m!6400012))

(declare-fun m!6400014 () Bool)

(assert (=> b!5372969 m!6400014))

(declare-fun m!6400016 () Bool)

(assert (=> b!5372969 m!6400016))

(assert (=> b!5372969 m!6400008))

(declare-fun m!6400018 () Bool)

(assert (=> b!5372960 m!6400018))

(declare-fun m!6400020 () Bool)

(assert (=> b!5372960 m!6400020))

(declare-fun m!6400022 () Bool)

(assert (=> b!5372960 m!6400022))

(declare-fun m!6400024 () Bool)

(assert (=> b!5372960 m!6400024))

(declare-fun m!6400026 () Bool)

(assert (=> b!5372960 m!6400026))

(declare-fun m!6400028 () Bool)

(assert (=> b!5372966 m!6400028))

(declare-fun m!6400030 () Bool)

(assert (=> b!5372966 m!6400030))

(declare-fun m!6400032 () Bool)

(assert (=> b!5372966 m!6400032))

(declare-fun m!6400034 () Bool)

(assert (=> b!5372966 m!6400034))

(declare-fun m!6400036 () Bool)

(assert (=> b!5372966 m!6400036))

(declare-fun m!6400038 () Bool)

(assert (=> b!5372966 m!6400038))

(declare-fun m!6400040 () Bool)

(assert (=> b!5372966 m!6400040))

(declare-fun m!6400042 () Bool)

(assert (=> b!5372992 m!6400042))

(declare-fun m!6400044 () Bool)

(assert (=> b!5372985 m!6400044))

(declare-fun m!6400046 () Bool)

(assert (=> b!5372974 m!6400046))

(declare-fun m!6400048 () Bool)

(assert (=> b!5372955 m!6400048))

(declare-fun m!6400050 () Bool)

(assert (=> b!5372955 m!6400050))

(declare-fun m!6400052 () Bool)

(assert (=> b!5372962 m!6400052))

(declare-fun m!6400054 () Bool)

(assert (=> b!5372971 m!6400054))

(declare-fun m!6400056 () Bool)

(assert (=> b!5372971 m!6400056))

(declare-fun m!6400058 () Bool)

(assert (=> b!5372971 m!6400058))

(declare-fun m!6400060 () Bool)

(assert (=> b!5372963 m!6400060))

(declare-fun m!6400062 () Bool)

(assert (=> b!5372967 m!6400062))

(declare-fun m!6400064 () Bool)

(assert (=> b!5372978 m!6400064))

(declare-fun m!6400066 () Bool)

(assert (=> b!5372954 m!6400066))

(declare-fun m!6400068 () Bool)

(assert (=> b!5372954 m!6400068))

(declare-fun m!6400070 () Bool)

(assert (=> b!5372954 m!6400070))

(declare-fun m!6400072 () Bool)

(assert (=> b!5372954 m!6400072))

(declare-fun m!6400074 () Bool)

(assert (=> b!5372954 m!6400074))

(declare-fun m!6400076 () Bool)

(assert (=> b!5372954 m!6400076))

(declare-fun m!6400078 () Bool)

(assert (=> b!5372954 m!6400078))

(declare-fun m!6400080 () Bool)

(assert (=> b!5372954 m!6400080))

(declare-fun m!6400082 () Bool)

(assert (=> b!5372954 m!6400082))

(declare-fun m!6400084 () Bool)

(assert (=> b!5372991 m!6400084))

(declare-fun m!6400086 () Bool)

(assert (=> setNonEmpty!34829 m!6400086))

(check-sat (not b!5372985) (not b!5372971) (not b!5372960) (not setNonEmpty!34829) (not b!5372969) (not b!5372990) (not start!565246) (not b!5372958) (not b!5372977) (not b!5372966) (not b!5372982) (not b!5372963) (not b!5372961) (not b!5372955) (not b!5372954) (not b!5372992) (not b!5372981) (not b!5372956) (not b!5372978) (not b!5372974) (not b!5372988) (not b!5372967) (not b!5372962) (not b!5372991) (not b!5372973) tp_is_empty!39435 (not b!5372959) (not b!5372987) (not b!5372980) (not b!5372989) (not b!5372976) (not b!5372984) (not b!5372986) (not b!5372972))
(check-sat)
