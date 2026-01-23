; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634854 () Bool)

(assert start!634854)

(declare-fun b!6425801 () Bool)

(assert (=> b!6425801 true))

(assert (=> b!6425801 true))

(declare-fun lambda!355210 () Int)

(declare-fun lambda!355209 () Int)

(assert (=> b!6425801 (not (= lambda!355210 lambda!355209))))

(assert (=> b!6425801 true))

(assert (=> b!6425801 true))

(declare-fun b!6425809 () Bool)

(assert (=> b!6425809 true))

(declare-fun bs!1616259 () Bool)

(declare-fun b!6425788 () Bool)

(assert (= bs!1616259 (and b!6425788 b!6425801)))

(declare-datatypes ((C!32928 0))(
  ( (C!32929 (val!26166 Int)) )
))
(declare-datatypes ((Regex!16329 0))(
  ( (ElementMatch!16329 (c!1174148 C!32928)) (Concat!25174 (regOne!33170 Regex!16329) (regTwo!33170 Regex!16329)) (EmptyExpr!16329) (Star!16329 (reg!16658 Regex!16329)) (EmptyLang!16329) (Union!16329 (regOne!33171 Regex!16329) (regTwo!33171 Regex!16329)) )
))
(declare-fun r!7292 () Regex!16329)

(declare-fun lt!2378030 () Regex!16329)

(declare-fun lambda!355212 () Int)

(assert (=> bs!1616259 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355212 lambda!355209))))

(assert (=> bs!1616259 (not (= lambda!355212 lambda!355210))))

(assert (=> b!6425788 true))

(assert (=> b!6425788 true))

(assert (=> b!6425788 true))

(declare-fun lambda!355213 () Int)

(assert (=> bs!1616259 (not (= lambda!355213 lambda!355209))))

(assert (=> bs!1616259 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355213 lambda!355210))))

(assert (=> b!6425788 (not (= lambda!355213 lambda!355212))))

(assert (=> b!6425788 true))

(assert (=> b!6425788 true))

(assert (=> b!6425788 true))

(declare-fun bs!1616260 () Bool)

(declare-fun b!6425790 () Bool)

(assert (= bs!1616260 (and b!6425790 b!6425801)))

(declare-datatypes ((List!65286 0))(
  ( (Nil!65162) (Cons!65162 (h!71610 C!32928) (t!378902 List!65286)) )
))
(declare-fun s!2326 () List!65286)

(declare-datatypes ((tuple2!66616 0))(
  ( (tuple2!66617 (_1!36611 List!65286) (_2!36611 List!65286)) )
))
(declare-fun lt!2378024 () tuple2!66616)

(declare-fun lambda!355214 () Int)

(assert (=> bs!1616260 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) (regOne!33170 r!7292)) (= lt!2378030 (regTwo!33170 r!7292))) (= lambda!355214 lambda!355209))))

(assert (=> bs!1616260 (not (= lambda!355214 lambda!355210))))

(declare-fun bs!1616261 () Bool)

(assert (= bs!1616261 (and b!6425790 b!6425788)))

(assert (=> bs!1616261 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) lt!2378030) (= lt!2378030 (regTwo!33170 r!7292))) (= lambda!355214 lambda!355212))))

(assert (=> bs!1616261 (not (= lambda!355214 lambda!355213))))

(assert (=> b!6425790 true))

(assert (=> b!6425790 true))

(assert (=> b!6425790 true))

(declare-fun lambda!355215 () Int)

(assert (=> b!6425790 (not (= lambda!355215 lambda!355214))))

(assert (=> bs!1616260 (not (= lambda!355215 lambda!355209))))

(assert (=> bs!1616260 (not (= lambda!355215 lambda!355210))))

(assert (=> bs!1616261 (not (= lambda!355215 lambda!355213))))

(assert (=> bs!1616261 (not (= lambda!355215 lambda!355212))))

(assert (=> b!6425790 true))

(assert (=> b!6425790 true))

(assert (=> b!6425790 true))

(declare-fun e!3898531 () Bool)

(declare-fun e!3898529 () Bool)

(assert (=> b!6425788 (= e!3898531 e!3898529)))

(declare-fun res!2641053 () Bool)

(assert (=> b!6425788 (=> res!2641053 e!3898529)))

(declare-fun ++!14397 (List!65286 List!65286) List!65286)

(assert (=> b!6425788 (= res!2641053 (not (= (++!14397 (_1!36611 lt!2378024) (_2!36611 lt!2378024)) s!2326)))))

(declare-datatypes ((Option!16220 0))(
  ( (None!16219) (Some!16219 (v!52392 tuple2!66616)) )
))
(declare-fun lt!2378050 () Option!16220)

(declare-fun get!22577 (Option!16220) tuple2!66616)

(assert (=> b!6425788 (= lt!2378024 (get!22577 lt!2378050))))

(declare-fun Exists!3399 (Int) Bool)

(assert (=> b!6425788 (= (Exists!3399 lambda!355212) (Exists!3399 lambda!355213))))

(declare-datatypes ((Unit!158647 0))(
  ( (Unit!158648) )
))
(declare-fun lt!2378021 () Unit!158647)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1936 (Regex!16329 Regex!16329 List!65286) Unit!158647)

(assert (=> b!6425788 (= lt!2378021 (lemmaExistCutMatchRandMatchRSpecEquivalent!1936 lt!2378030 (regTwo!33170 r!7292) s!2326))))

(declare-fun isDefined!12923 (Option!16220) Bool)

(assert (=> b!6425788 (= (isDefined!12923 lt!2378050) (Exists!3399 lambda!355212))))

(declare-fun findConcatSeparation!2634 (Regex!16329 Regex!16329 List!65286 List!65286 List!65286) Option!16220)

(assert (=> b!6425788 (= lt!2378050 (findConcatSeparation!2634 lt!2378030 (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326))))

(declare-fun lt!2378042 () Unit!158647)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2398 (Regex!16329 Regex!16329 List!65286) Unit!158647)

(assert (=> b!6425788 (= lt!2378042 (lemmaFindConcatSeparationEquivalentToExists!2398 lt!2378030 (regTwo!33170 r!7292) s!2326))))

(declare-fun b!6425789 () Bool)

(declare-fun res!2641039 () Bool)

(declare-fun e!3898528 () Bool)

(assert (=> b!6425789 (=> res!2641039 e!3898528)))

(get-info :version)

(assert (=> b!6425789 (= res!2641039 (or ((_ is EmptyExpr!16329) r!7292) ((_ is EmptyLang!16329) r!7292) ((_ is ElementMatch!16329) r!7292) ((_ is Union!16329) r!7292) (not ((_ is Concat!25174) r!7292))))))

(declare-fun e!3898523 () Bool)

(assert (=> b!6425790 (= e!3898529 e!3898523)))

(declare-fun res!2641036 () Bool)

(assert (=> b!6425790 (=> res!2641036 e!3898523)))

(declare-fun validRegex!8065 (Regex!16329) Bool)

(assert (=> b!6425790 (= res!2641036 (not (validRegex!8065 (reg!16658 (regOne!33170 r!7292)))))))

(assert (=> b!6425790 (= (Exists!3399 lambda!355214) (Exists!3399 lambda!355215))))

(declare-fun lt!2378040 () Unit!158647)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!620 (Regex!16329 List!65286) Unit!158647)

(assert (=> b!6425790 (= lt!2378040 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!620 (reg!16658 (regOne!33170 r!7292)) (_1!36611 lt!2378024)))))

(assert (=> b!6425790 (= (isDefined!12923 (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 Nil!65162 (_1!36611 lt!2378024) (_1!36611 lt!2378024))) (Exists!3399 lambda!355214))))

(declare-fun lt!2378045 () Unit!158647)

(assert (=> b!6425790 (= lt!2378045 (lemmaFindConcatSeparationEquivalentToExists!2398 (reg!16658 (regOne!33170 r!7292)) lt!2378030 (_1!36611 lt!2378024)))))

(declare-fun matchRSpec!3430 (Regex!16329 List!65286) Bool)

(assert (=> b!6425790 (matchRSpec!3430 lt!2378030 (_1!36611 lt!2378024))))

(declare-fun lt!2378032 () Unit!158647)

(declare-fun mainMatchTheorem!3430 (Regex!16329 List!65286) Unit!158647)

(assert (=> b!6425790 (= lt!2378032 (mainMatchTheorem!3430 lt!2378030 (_1!36611 lt!2378024)))))

(declare-fun b!6425791 () Bool)

(declare-fun res!2641026 () Bool)

(assert (=> b!6425791 (=> res!2641026 e!3898529)))

(declare-fun matchR!8512 (Regex!16329 List!65286) Bool)

(assert (=> b!6425791 (= res!2641026 (not (matchR!8512 (regTwo!33170 r!7292) (_2!36611 lt!2378024))))))

(declare-fun b!6425792 () Bool)

(declare-fun e!3898520 () Bool)

(declare-fun e!3898518 () Bool)

(assert (=> b!6425792 (= e!3898520 e!3898518)))

(declare-fun res!2641028 () Bool)

(assert (=> b!6425792 (=> res!2641028 e!3898518)))

(declare-fun lt!2378049 () Regex!16329)

(assert (=> b!6425792 (= res!2641028 (not (= r!7292 lt!2378049)))))

(assert (=> b!6425792 (= lt!2378049 (Concat!25174 lt!2378030 (regTwo!33170 r!7292)))))

(declare-fun b!6425793 () Bool)

(declare-fun e!3898527 () Unit!158647)

(declare-fun Unit!158649 () Unit!158647)

(assert (=> b!6425793 (= e!3898527 Unit!158649)))

(declare-fun b!6425794 () Bool)

(assert (=> b!6425794 (= e!3898523 (validRegex!8065 lt!2378030))))

(declare-fun b!6425795 () Bool)

(declare-fun e!3898538 () Bool)

(declare-fun e!3898524 () Bool)

(assert (=> b!6425795 (= e!3898538 e!3898524)))

(declare-fun res!2641051 () Bool)

(assert (=> b!6425795 (=> res!2641051 e!3898524)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65287 0))(
  ( (Nil!65163) (Cons!65163 (h!71611 Regex!16329) (t!378903 List!65287)) )
))
(declare-datatypes ((Context!11426 0))(
  ( (Context!11427 (exprs!6213 List!65287)) )
))
(declare-fun lt!2378023 () (InoxSet Context!11426))

(declare-fun lt!2378057 () (InoxSet Context!11426))

(assert (=> b!6425795 (= res!2641051 (not (= lt!2378023 lt!2378057)))))

(declare-fun lt!2378041 () Context!11426)

(declare-fun derivationStepZipperDown!1577 (Regex!16329 Context!11426 C!32928) (InoxSet Context!11426))

(assert (=> b!6425795 (= lt!2378057 (derivationStepZipperDown!1577 (reg!16658 (regOne!33170 r!7292)) lt!2378041 (h!71610 s!2326)))))

(declare-fun lt!2378058 () List!65287)

(assert (=> b!6425795 (= lt!2378041 (Context!11427 lt!2378058))))

(declare-datatypes ((List!65288 0))(
  ( (Nil!65164) (Cons!65164 (h!71612 Context!11426) (t!378904 List!65288)) )
))
(declare-fun zl!343 () List!65288)

(assert (=> b!6425795 (= lt!2378058 (Cons!65163 lt!2378030 (t!378903 (exprs!6213 (h!71612 zl!343)))))))

(assert (=> b!6425795 (= lt!2378030 (Star!16329 (reg!16658 (regOne!33170 r!7292))))))

(declare-fun setIsEmpty!43872 () Bool)

(declare-fun setRes!43872 () Bool)

(assert (=> setIsEmpty!43872 setRes!43872))

(declare-fun b!6425796 () Bool)

(declare-fun e!3898534 () Bool)

(declare-fun e!3898533 () Bool)

(assert (=> b!6425796 (= e!3898534 e!3898533)))

(declare-fun res!2641027 () Bool)

(assert (=> b!6425796 (=> (not res!2641027) (not e!3898533))))

(declare-fun lt!2378033 () Regex!16329)

(assert (=> b!6425796 (= res!2641027 (= r!7292 lt!2378033))))

(declare-fun unfocusZipper!2071 (List!65288) Regex!16329)

(assert (=> b!6425796 (= lt!2378033 (unfocusZipper!2071 zl!343))))

(declare-fun b!6425797 () Bool)

(declare-fun res!2641030 () Bool)

(assert (=> b!6425797 (=> res!2641030 e!3898529)))

(declare-fun isEmpty!37324 (List!65286) Bool)

(assert (=> b!6425797 (= res!2641030 (isEmpty!37324 (_1!36611 lt!2378024)))))

(declare-fun b!6425798 () Bool)

(declare-fun e!3898522 () Bool)

(declare-fun tp_is_empty!41911 () Bool)

(assert (=> b!6425798 (= e!3898522 tp_is_empty!41911)))

(declare-fun b!6425799 () Bool)

(declare-fun e!3898517 () Bool)

(assert (=> b!6425799 (= e!3898517 e!3898531)))

(declare-fun res!2641042 () Bool)

(assert (=> b!6425799 (=> res!2641042 e!3898531)))

(declare-fun lt!2378052 () Bool)

(assert (=> b!6425799 (= res!2641042 (not lt!2378052))))

(declare-fun e!3898535 () Bool)

(assert (=> b!6425799 e!3898535))

(declare-fun res!2641040 () Bool)

(assert (=> b!6425799 (=> (not res!2641040) (not e!3898535))))

(declare-fun lt!2378027 () Regex!16329)

(assert (=> b!6425799 (= res!2641040 (= (matchR!8512 lt!2378027 s!2326) (matchRSpec!3430 lt!2378027 s!2326)))))

(declare-fun lt!2378051 () Unit!158647)

(assert (=> b!6425799 (= lt!2378051 (mainMatchTheorem!3430 lt!2378027 s!2326))))

(declare-fun b!6425800 () Bool)

(declare-fun e!3898536 () Bool)

(declare-fun tp!1783596 () Bool)

(assert (=> b!6425800 (= e!3898536 (and tp_is_empty!41911 tp!1783596))))

(declare-fun e!3898526 () Bool)

(assert (=> b!6425801 (= e!3898528 e!3898526)))

(declare-fun res!2641024 () Bool)

(assert (=> b!6425801 (=> res!2641024 e!3898526)))

(declare-fun lt!2378035 () Bool)

(assert (=> b!6425801 (= res!2641024 (or (not (= lt!2378052 lt!2378035)) ((_ is Nil!65162) s!2326)))))

(assert (=> b!6425801 (= (Exists!3399 lambda!355209) (Exists!3399 lambda!355210))))

(declare-fun lt!2378025 () Unit!158647)

(assert (=> b!6425801 (= lt!2378025 (lemmaExistCutMatchRandMatchRSpecEquivalent!1936 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326))))

(assert (=> b!6425801 (= lt!2378035 (Exists!3399 lambda!355209))))

(assert (=> b!6425801 (= lt!2378035 (isDefined!12923 (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326)))))

(declare-fun lt!2378047 () Unit!158647)

(assert (=> b!6425801 (= lt!2378047 (lemmaFindConcatSeparationEquivalentToExists!2398 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326))))

(declare-fun res!2641032 () Bool)

(assert (=> start!634854 (=> (not res!2641032) (not e!3898534))))

(assert (=> start!634854 (= res!2641032 (validRegex!8065 r!7292))))

(assert (=> start!634854 e!3898534))

(assert (=> start!634854 e!3898522))

(declare-fun condSetEmpty!43872 () Bool)

(declare-fun z!1189 () (InoxSet Context!11426))

(assert (=> start!634854 (= condSetEmpty!43872 (= z!1189 ((as const (Array Context!11426 Bool)) false)))))

(assert (=> start!634854 setRes!43872))

(declare-fun e!3898521 () Bool)

(assert (=> start!634854 e!3898521))

(assert (=> start!634854 e!3898536))

(declare-fun b!6425787 () Bool)

(declare-fun tp!1783598 () Bool)

(declare-fun tp!1783599 () Bool)

(assert (=> b!6425787 (= e!3898522 (and tp!1783598 tp!1783599))))

(declare-fun b!6425802 () Bool)

(declare-fun res!2641047 () Bool)

(assert (=> b!6425802 (=> (not res!2641047) (not e!3898534))))

(declare-fun toList!10113 ((InoxSet Context!11426)) List!65288)

(assert (=> b!6425802 (= res!2641047 (= (toList!10113 z!1189) zl!343))))

(declare-fun b!6425803 () Bool)

(declare-fun Unit!158650 () Unit!158647)

(assert (=> b!6425803 (= e!3898527 Unit!158650)))

(declare-fun lt!2378019 () (InoxSet Context!11426))

(declare-fun lt!2378053 () Unit!158647)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1160 ((InoxSet Context!11426) (InoxSet Context!11426) List!65286) Unit!158647)

(assert (=> b!6425803 (= lt!2378053 (lemmaZipperConcatMatchesSameAsBothZippers!1160 lt!2378023 lt!2378019 (t!378902 s!2326)))))

(declare-fun res!2641041 () Bool)

(declare-fun matchZipper!2341 ((InoxSet Context!11426) List!65286) Bool)

(assert (=> b!6425803 (= res!2641041 (matchZipper!2341 lt!2378023 (t!378902 s!2326)))))

(declare-fun e!3898519 () Bool)

(assert (=> b!6425803 (=> res!2641041 e!3898519)))

(assert (=> b!6425803 (= (matchZipper!2341 ((_ map or) lt!2378023 lt!2378019) (t!378902 s!2326)) e!3898519)))

(declare-fun b!6425804 () Bool)

(assert (=> b!6425804 (= e!3898524 e!3898520)))

(declare-fun res!2641037 () Bool)

(assert (=> b!6425804 (=> res!2641037 e!3898520)))

(declare-fun lt!2378029 () (InoxSet Context!11426))

(assert (=> b!6425804 (= res!2641037 (not (= lt!2378029 lt!2378057)))))

(declare-fun lt!2378048 () Context!11426)

(declare-fun lt!2378056 () (InoxSet Context!11426))

(declare-fun lambda!355211 () Int)

(declare-fun flatMap!1834 ((InoxSet Context!11426) Int) (InoxSet Context!11426))

(declare-fun derivationStepZipperUp!1503 (Context!11426 C!32928) (InoxSet Context!11426))

(assert (=> b!6425804 (= (flatMap!1834 lt!2378056 lambda!355211) (derivationStepZipperUp!1503 lt!2378048 (h!71610 s!2326)))))

(declare-fun lt!2378044 () Unit!158647)

(declare-fun lemmaFlatMapOnSingletonSet!1360 ((InoxSet Context!11426) Context!11426 Int) Unit!158647)

(assert (=> b!6425804 (= lt!2378044 (lemmaFlatMapOnSingletonSet!1360 lt!2378056 lt!2378048 lambda!355211))))

(declare-fun lt!2378036 () (InoxSet Context!11426))

(assert (=> b!6425804 (= lt!2378036 (derivationStepZipperUp!1503 lt!2378048 (h!71610 s!2326)))))

(declare-fun derivationStepZipper!2295 ((InoxSet Context!11426) C!32928) (InoxSet Context!11426))

(assert (=> b!6425804 (= lt!2378029 (derivationStepZipper!2295 lt!2378056 (h!71610 s!2326)))))

(assert (=> b!6425804 (= lt!2378056 (store ((as const (Array Context!11426 Bool)) false) lt!2378048 true))))

(assert (=> b!6425804 (= lt!2378048 (Context!11427 (Cons!65163 (reg!16658 (regOne!33170 r!7292)) lt!2378058)))))

(declare-fun b!6425805 () Bool)

(declare-fun lt!2378039 () Bool)

(assert (=> b!6425805 (= e!3898535 (or (not lt!2378052) lt!2378039))))

(declare-fun e!3898530 () Bool)

(declare-fun setElem!43872 () Context!11426)

(declare-fun setNonEmpty!43872 () Bool)

(declare-fun tp!1783597 () Bool)

(declare-fun inv!84069 (Context!11426) Bool)

(assert (=> setNonEmpty!43872 (= setRes!43872 (and tp!1783597 (inv!84069 setElem!43872) e!3898530))))

(declare-fun setRest!43872 () (InoxSet Context!11426))

(assert (=> setNonEmpty!43872 (= z!1189 ((_ map or) (store ((as const (Array Context!11426 Bool)) false) setElem!43872 true) setRest!43872))))

(declare-fun b!6425806 () Bool)

(assert (=> b!6425806 (= e!3898533 (not e!3898528))))

(declare-fun res!2641054 () Bool)

(assert (=> b!6425806 (=> res!2641054 e!3898528)))

(assert (=> b!6425806 (= res!2641054 (not ((_ is Cons!65164) zl!343)))))

(assert (=> b!6425806 (= lt!2378052 lt!2378039)))

(assert (=> b!6425806 (= lt!2378039 (matchRSpec!3430 r!7292 s!2326))))

(assert (=> b!6425806 (= lt!2378052 (matchR!8512 r!7292 s!2326))))

(declare-fun lt!2378022 () Unit!158647)

(assert (=> b!6425806 (= lt!2378022 (mainMatchTheorem!3430 r!7292 s!2326))))

(declare-fun b!6425807 () Bool)

(assert (=> b!6425807 (= e!3898519 (matchZipper!2341 lt!2378019 (t!378902 s!2326)))))

(declare-fun b!6425808 () Bool)

(declare-fun tp!1783595 () Bool)

(declare-fun tp!1783600 () Bool)

(assert (=> b!6425808 (= e!3898522 (and tp!1783595 tp!1783600))))

(assert (=> b!6425809 (= e!3898526 e!3898538)))

(declare-fun res!2641045 () Bool)

(assert (=> b!6425809 (=> res!2641045 e!3898538)))

(assert (=> b!6425809 (= res!2641045 (or (and ((_ is ElementMatch!16329) (regOne!33170 r!7292)) (= (c!1174148 (regOne!33170 r!7292)) (h!71610 s!2326))) ((_ is Union!16329) (regOne!33170 r!7292))))))

(declare-fun lt!2378043 () Unit!158647)

(assert (=> b!6425809 (= lt!2378043 e!3898527)))

(declare-fun c!1174147 () Bool)

(declare-fun nullable!6322 (Regex!16329) Bool)

(assert (=> b!6425809 (= c!1174147 (nullable!6322 (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(assert (=> b!6425809 (= (flatMap!1834 z!1189 lambda!355211) (derivationStepZipperUp!1503 (h!71612 zl!343) (h!71610 s!2326)))))

(declare-fun lt!2378037 () Unit!158647)

(assert (=> b!6425809 (= lt!2378037 (lemmaFlatMapOnSingletonSet!1360 z!1189 (h!71612 zl!343) lambda!355211))))

(declare-fun lt!2378034 () Context!11426)

(assert (=> b!6425809 (= lt!2378019 (derivationStepZipperUp!1503 lt!2378034 (h!71610 s!2326)))))

(assert (=> b!6425809 (= lt!2378023 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 (h!71612 zl!343))) lt!2378034 (h!71610 s!2326)))))

(assert (=> b!6425809 (= lt!2378034 (Context!11427 (t!378903 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun lt!2378055 () (InoxSet Context!11426))

(assert (=> b!6425809 (= lt!2378055 (derivationStepZipperUp!1503 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343))))) (h!71610 s!2326)))))

(declare-fun b!6425810 () Bool)

(declare-fun tp!1783602 () Bool)

(declare-fun e!3898532 () Bool)

(assert (=> b!6425810 (= e!3898521 (and (inv!84069 (h!71612 zl!343)) e!3898532 tp!1783602))))

(declare-fun b!6425811 () Bool)

(declare-fun e!3898537 () Bool)

(assert (=> b!6425811 (= e!3898537 (nullable!6322 (regOne!33170 (regOne!33170 r!7292))))))

(declare-fun b!6425812 () Bool)

(declare-fun res!2641044 () Bool)

(assert (=> b!6425812 (=> res!2641044 e!3898517)))

(assert (=> b!6425812 (= res!2641044 (not (= (unfocusZipper!2071 (Cons!65164 lt!2378041 Nil!65164)) lt!2378049)))))

(declare-fun b!6425813 () Bool)

(declare-fun res!2641034 () Bool)

(assert (=> b!6425813 (=> res!2641034 e!3898538)))

(assert (=> b!6425813 (= res!2641034 e!3898537)))

(declare-fun res!2641043 () Bool)

(assert (=> b!6425813 (=> (not res!2641043) (not e!3898537))))

(assert (=> b!6425813 (= res!2641043 ((_ is Concat!25174) (regOne!33170 r!7292)))))

(declare-fun b!6425814 () Bool)

(declare-fun e!3898525 () Bool)

(assert (=> b!6425814 (= e!3898525 e!3898517)))

(declare-fun res!2641033 () Bool)

(assert (=> b!6425814 (=> res!2641033 e!3898517)))

(declare-fun lt!2378031 () Context!11426)

(assert (=> b!6425814 (= res!2641033 (not (= (unfocusZipper!2071 (Cons!65164 lt!2378031 Nil!65164)) (reg!16658 (regOne!33170 r!7292)))))))

(declare-fun lt!2378028 () (InoxSet Context!11426))

(assert (=> b!6425814 (= (flatMap!1834 lt!2378028 lambda!355211) (derivationStepZipperUp!1503 lt!2378041 (h!71610 s!2326)))))

(declare-fun lt!2378020 () Unit!158647)

(assert (=> b!6425814 (= lt!2378020 (lemmaFlatMapOnSingletonSet!1360 lt!2378028 lt!2378041 lambda!355211))))

(declare-fun lt!2378026 () (InoxSet Context!11426))

(assert (=> b!6425814 (= (flatMap!1834 lt!2378026 lambda!355211) (derivationStepZipperUp!1503 lt!2378031 (h!71610 s!2326)))))

(declare-fun lt!2378046 () Unit!158647)

(assert (=> b!6425814 (= lt!2378046 (lemmaFlatMapOnSingletonSet!1360 lt!2378026 lt!2378031 lambda!355211))))

(declare-fun lt!2378054 () (InoxSet Context!11426))

(assert (=> b!6425814 (= lt!2378054 (derivationStepZipperUp!1503 lt!2378041 (h!71610 s!2326)))))

(declare-fun lt!2378038 () (InoxSet Context!11426))

(assert (=> b!6425814 (= lt!2378038 (derivationStepZipperUp!1503 lt!2378031 (h!71610 s!2326)))))

(assert (=> b!6425814 (= lt!2378028 (store ((as const (Array Context!11426 Bool)) false) lt!2378041 true))))

(assert (=> b!6425814 (= lt!2378026 (store ((as const (Array Context!11426 Bool)) false) lt!2378031 true))))

(assert (=> b!6425814 (= lt!2378031 (Context!11427 (Cons!65163 (reg!16658 (regOne!33170 r!7292)) Nil!65163)))))

(declare-fun b!6425815 () Bool)

(declare-fun res!2641049 () Bool)

(assert (=> b!6425815 (=> res!2641049 e!3898526)))

(declare-fun isEmpty!37325 (List!65287) Bool)

(assert (=> b!6425815 (= res!2641049 (isEmpty!37325 (t!378903 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6425816 () Bool)

(declare-fun res!2641052 () Bool)

(assert (=> b!6425816 (=> res!2641052 e!3898528)))

(assert (=> b!6425816 (= res!2641052 (not ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6425817 () Bool)

(declare-fun res!2641035 () Bool)

(assert (=> b!6425817 (=> res!2641035 e!3898529)))

(assert (=> b!6425817 (= res!2641035 (not (matchR!8512 lt!2378030 (_1!36611 lt!2378024))))))

(declare-fun b!6425818 () Bool)

(declare-fun tp!1783593 () Bool)

(assert (=> b!6425818 (= e!3898532 tp!1783593)))

(declare-fun b!6425819 () Bool)

(declare-fun res!2641048 () Bool)

(assert (=> b!6425819 (=> res!2641048 e!3898520)))

(assert (=> b!6425819 (= res!2641048 (not (= lt!2378033 r!7292)))))

(declare-fun b!6425820 () Bool)

(declare-fun tp!1783594 () Bool)

(assert (=> b!6425820 (= e!3898522 tp!1783594)))

(declare-fun b!6425821 () Bool)

(assert (=> b!6425821 (= e!3898518 e!3898525)))

(declare-fun res!2641046 () Bool)

(assert (=> b!6425821 (=> res!2641046 e!3898525)))

(assert (=> b!6425821 (= res!2641046 (not (= (unfocusZipper!2071 (Cons!65164 lt!2378048 Nil!65164)) lt!2378027)))))

(assert (=> b!6425821 (= lt!2378027 (Concat!25174 (reg!16658 (regOne!33170 r!7292)) lt!2378049))))

(declare-fun b!6425822 () Bool)

(declare-fun res!2641038 () Bool)

(assert (=> b!6425822 (=> res!2641038 e!3898520)))

(assert (=> b!6425822 (= res!2641038 (not (= (matchZipper!2341 lt!2378056 s!2326) (matchZipper!2341 lt!2378029 (t!378902 s!2326)))))))

(declare-fun b!6425823 () Bool)

(declare-fun res!2641031 () Bool)

(assert (=> b!6425823 (=> res!2641031 e!3898528)))

(declare-fun generalisedConcat!1926 (List!65287) Regex!16329)

(assert (=> b!6425823 (= res!2641031 (not (= r!7292 (generalisedConcat!1926 (exprs!6213 (h!71612 zl!343))))))))

(declare-fun b!6425824 () Bool)

(declare-fun tp!1783601 () Bool)

(assert (=> b!6425824 (= e!3898530 tp!1783601)))

(declare-fun b!6425825 () Bool)

(declare-fun res!2641025 () Bool)

(assert (=> b!6425825 (=> res!2641025 e!3898538)))

(assert (=> b!6425825 (= res!2641025 (or ((_ is Concat!25174) (regOne!33170 r!7292)) (not ((_ is Star!16329) (regOne!33170 r!7292)))))))

(declare-fun b!6425826 () Bool)

(declare-fun res!2641029 () Bool)

(assert (=> b!6425826 (=> res!2641029 e!3898528)))

(declare-fun isEmpty!37326 (List!65288) Bool)

(assert (=> b!6425826 (= res!2641029 (not (isEmpty!37326 (t!378904 zl!343))))))

(declare-fun b!6425827 () Bool)

(declare-fun res!2641050 () Bool)

(assert (=> b!6425827 (=> res!2641050 e!3898528)))

(declare-fun generalisedUnion!2173 (List!65287) Regex!16329)

(declare-fun unfocusZipperList!1750 (List!65288) List!65287)

(assert (=> b!6425827 (= res!2641050 (not (= r!7292 (generalisedUnion!2173 (unfocusZipperList!1750 zl!343)))))))

(assert (= (and start!634854 res!2641032) b!6425802))

(assert (= (and b!6425802 res!2641047) b!6425796))

(assert (= (and b!6425796 res!2641027) b!6425806))

(assert (= (and b!6425806 (not res!2641054)) b!6425826))

(assert (= (and b!6425826 (not res!2641029)) b!6425823))

(assert (= (and b!6425823 (not res!2641031)) b!6425816))

(assert (= (and b!6425816 (not res!2641052)) b!6425827))

(assert (= (and b!6425827 (not res!2641050)) b!6425789))

(assert (= (and b!6425789 (not res!2641039)) b!6425801))

(assert (= (and b!6425801 (not res!2641024)) b!6425815))

(assert (= (and b!6425815 (not res!2641049)) b!6425809))

(assert (= (and b!6425809 c!1174147) b!6425803))

(assert (= (and b!6425809 (not c!1174147)) b!6425793))

(assert (= (and b!6425803 (not res!2641041)) b!6425807))

(assert (= (and b!6425809 (not res!2641045)) b!6425813))

(assert (= (and b!6425813 res!2641043) b!6425811))

(assert (= (and b!6425813 (not res!2641034)) b!6425825))

(assert (= (and b!6425825 (not res!2641025)) b!6425795))

(assert (= (and b!6425795 (not res!2641051)) b!6425804))

(assert (= (and b!6425804 (not res!2641037)) b!6425822))

(assert (= (and b!6425822 (not res!2641038)) b!6425819))

(assert (= (and b!6425819 (not res!2641048)) b!6425792))

(assert (= (and b!6425792 (not res!2641028)) b!6425821))

(assert (= (and b!6425821 (not res!2641046)) b!6425814))

(assert (= (and b!6425814 (not res!2641033)) b!6425812))

(assert (= (and b!6425812 (not res!2641044)) b!6425799))

(assert (= (and b!6425799 res!2641040) b!6425805))

(assert (= (and b!6425799 (not res!2641042)) b!6425788))

(assert (= (and b!6425788 (not res!2641053)) b!6425817))

(assert (= (and b!6425817 (not res!2641035)) b!6425791))

(assert (= (and b!6425791 (not res!2641026)) b!6425797))

(assert (= (and b!6425797 (not res!2641030)) b!6425790))

(assert (= (and b!6425790 (not res!2641036)) b!6425794))

(assert (= (and start!634854 ((_ is ElementMatch!16329) r!7292)) b!6425798))

(assert (= (and start!634854 ((_ is Concat!25174) r!7292)) b!6425787))

(assert (= (and start!634854 ((_ is Star!16329) r!7292)) b!6425820))

(assert (= (and start!634854 ((_ is Union!16329) r!7292)) b!6425808))

(assert (= (and start!634854 condSetEmpty!43872) setIsEmpty!43872))

(assert (= (and start!634854 (not condSetEmpty!43872)) setNonEmpty!43872))

(assert (= setNonEmpty!43872 b!6425824))

(assert (= b!6425810 b!6425818))

(assert (= (and start!634854 ((_ is Cons!65164) zl!343)) b!6425810))

(assert (= (and start!634854 ((_ is Cons!65162) s!2326)) b!6425800))

(declare-fun m!7219824 () Bool)

(assert (=> b!6425823 m!7219824))

(declare-fun m!7219826 () Bool)

(assert (=> b!6425796 m!7219826))

(declare-fun m!7219828 () Bool)

(assert (=> b!6425815 m!7219828))

(declare-fun m!7219830 () Bool)

(assert (=> b!6425812 m!7219830))

(declare-fun m!7219832 () Bool)

(assert (=> start!634854 m!7219832))

(declare-fun m!7219834 () Bool)

(assert (=> b!6425790 m!7219834))

(declare-fun m!7219836 () Bool)

(assert (=> b!6425790 m!7219836))

(declare-fun m!7219838 () Bool)

(assert (=> b!6425790 m!7219838))

(declare-fun m!7219840 () Bool)

(assert (=> b!6425790 m!7219840))

(declare-fun m!7219842 () Bool)

(assert (=> b!6425790 m!7219842))

(declare-fun m!7219844 () Bool)

(assert (=> b!6425790 m!7219844))

(assert (=> b!6425790 m!7219842))

(declare-fun m!7219846 () Bool)

(assert (=> b!6425790 m!7219846))

(assert (=> b!6425790 m!7219836))

(declare-fun m!7219848 () Bool)

(assert (=> b!6425790 m!7219848))

(declare-fun m!7219850 () Bool)

(assert (=> b!6425790 m!7219850))

(declare-fun m!7219852 () Bool)

(assert (=> b!6425806 m!7219852))

(declare-fun m!7219854 () Bool)

(assert (=> b!6425806 m!7219854))

(declare-fun m!7219856 () Bool)

(assert (=> b!6425806 m!7219856))

(declare-fun m!7219858 () Bool)

(assert (=> b!6425821 m!7219858))

(declare-fun m!7219860 () Bool)

(assert (=> b!6425802 m!7219860))

(declare-fun m!7219862 () Bool)

(assert (=> b!6425827 m!7219862))

(assert (=> b!6425827 m!7219862))

(declare-fun m!7219864 () Bool)

(assert (=> b!6425827 m!7219864))

(declare-fun m!7219866 () Bool)

(assert (=> b!6425791 m!7219866))

(declare-fun m!7219868 () Bool)

(assert (=> b!6425803 m!7219868))

(declare-fun m!7219870 () Bool)

(assert (=> b!6425803 m!7219870))

(declare-fun m!7219872 () Bool)

(assert (=> b!6425803 m!7219872))

(declare-fun m!7219874 () Bool)

(assert (=> b!6425809 m!7219874))

(declare-fun m!7219876 () Bool)

(assert (=> b!6425809 m!7219876))

(declare-fun m!7219878 () Bool)

(assert (=> b!6425809 m!7219878))

(declare-fun m!7219880 () Bool)

(assert (=> b!6425809 m!7219880))

(declare-fun m!7219882 () Bool)

(assert (=> b!6425809 m!7219882))

(declare-fun m!7219884 () Bool)

(assert (=> b!6425809 m!7219884))

(declare-fun m!7219886 () Bool)

(assert (=> b!6425809 m!7219886))

(declare-fun m!7219888 () Bool)

(assert (=> b!6425817 m!7219888))

(declare-fun m!7219890 () Bool)

(assert (=> b!6425826 m!7219890))

(declare-fun m!7219892 () Bool)

(assert (=> b!6425804 m!7219892))

(declare-fun m!7219894 () Bool)

(assert (=> b!6425804 m!7219894))

(declare-fun m!7219896 () Bool)

(assert (=> b!6425804 m!7219896))

(declare-fun m!7219898 () Bool)

(assert (=> b!6425804 m!7219898))

(declare-fun m!7219900 () Bool)

(assert (=> b!6425804 m!7219900))

(declare-fun m!7219902 () Bool)

(assert (=> b!6425788 m!7219902))

(declare-fun m!7219904 () Bool)

(assert (=> b!6425788 m!7219904))

(declare-fun m!7219906 () Bool)

(assert (=> b!6425788 m!7219906))

(declare-fun m!7219908 () Bool)

(assert (=> b!6425788 m!7219908))

(declare-fun m!7219910 () Bool)

(assert (=> b!6425788 m!7219910))

(declare-fun m!7219912 () Bool)

(assert (=> b!6425788 m!7219912))

(declare-fun m!7219914 () Bool)

(assert (=> b!6425788 m!7219914))

(declare-fun m!7219916 () Bool)

(assert (=> b!6425788 m!7219916))

(assert (=> b!6425788 m!7219914))

(declare-fun m!7219918 () Bool)

(assert (=> b!6425822 m!7219918))

(declare-fun m!7219920 () Bool)

(assert (=> b!6425822 m!7219920))

(declare-fun m!7219922 () Bool)

(assert (=> b!6425795 m!7219922))

(declare-fun m!7219924 () Bool)

(assert (=> b!6425811 m!7219924))

(declare-fun m!7219926 () Bool)

(assert (=> b!6425794 m!7219926))

(declare-fun m!7219928 () Bool)

(assert (=> b!6425814 m!7219928))

(declare-fun m!7219930 () Bool)

(assert (=> b!6425814 m!7219930))

(declare-fun m!7219932 () Bool)

(assert (=> b!6425814 m!7219932))

(declare-fun m!7219934 () Bool)

(assert (=> b!6425814 m!7219934))

(declare-fun m!7219936 () Bool)

(assert (=> b!6425814 m!7219936))

(declare-fun m!7219938 () Bool)

(assert (=> b!6425814 m!7219938))

(declare-fun m!7219940 () Bool)

(assert (=> b!6425814 m!7219940))

(declare-fun m!7219942 () Bool)

(assert (=> b!6425814 m!7219942))

(declare-fun m!7219944 () Bool)

(assert (=> b!6425814 m!7219944))

(declare-fun m!7219946 () Bool)

(assert (=> b!6425807 m!7219946))

(declare-fun m!7219948 () Bool)

(assert (=> b!6425810 m!7219948))

(declare-fun m!7219950 () Bool)

(assert (=> b!6425799 m!7219950))

(declare-fun m!7219952 () Bool)

(assert (=> b!6425799 m!7219952))

(declare-fun m!7219954 () Bool)

(assert (=> b!6425799 m!7219954))

(declare-fun m!7219956 () Bool)

(assert (=> b!6425801 m!7219956))

(declare-fun m!7219958 () Bool)

(assert (=> b!6425801 m!7219958))

(declare-fun m!7219960 () Bool)

(assert (=> b!6425801 m!7219960))

(assert (=> b!6425801 m!7219958))

(declare-fun m!7219962 () Bool)

(assert (=> b!6425801 m!7219962))

(declare-fun m!7219964 () Bool)

(assert (=> b!6425801 m!7219964))

(assert (=> b!6425801 m!7219962))

(declare-fun m!7219966 () Bool)

(assert (=> b!6425801 m!7219966))

(declare-fun m!7219968 () Bool)

(assert (=> b!6425797 m!7219968))

(declare-fun m!7219970 () Bool)

(assert (=> setNonEmpty!43872 m!7219970))

(check-sat (not b!6425806) (not b!6425808) (not b!6425799) (not b!6425817) (not b!6425791) (not start!634854) (not b!6425802) (not b!6425807) (not b!6425796) (not b!6425811) (not b!6425824) tp_is_empty!41911 (not b!6425801) (not b!6425788) (not b!6425814) (not b!6425809) (not b!6425797) (not b!6425790) (not b!6425787) (not setNonEmpty!43872) (not b!6425821) (not b!6425822) (not b!6425823) (not b!6425795) (not b!6425800) (not b!6425804) (not b!6425827) (not b!6425815) (not b!6425794) (not b!6425820) (not b!6425812) (not b!6425810) (not b!6425818) (not b!6425826) (not b!6425803))
(check-sat)
(get-model)

(declare-fun d!2014594 () Bool)

(declare-fun lt!2378061 () Regex!16329)

(assert (=> d!2014594 (validRegex!8065 lt!2378061)))

(assert (=> d!2014594 (= lt!2378061 (generalisedUnion!2173 (unfocusZipperList!1750 zl!343)))))

(assert (=> d!2014594 (= (unfocusZipper!2071 zl!343) lt!2378061)))

(declare-fun bs!1616262 () Bool)

(assert (= bs!1616262 d!2014594))

(declare-fun m!7219972 () Bool)

(assert (=> bs!1616262 m!7219972))

(assert (=> bs!1616262 m!7219862))

(assert (=> bs!1616262 m!7219862))

(assert (=> bs!1616262 m!7219864))

(assert (=> b!6425796 d!2014594))

(declare-fun b!6425864 () Bool)

(declare-fun e!3898558 () Bool)

(declare-fun head!13149 (List!65286) C!32928)

(assert (=> b!6425864 (= e!3898558 (= (head!13149 (_1!36611 lt!2378024)) (c!1174148 lt!2378030)))))

(declare-fun b!6425866 () Bool)

(declare-fun res!2641078 () Bool)

(declare-fun e!3898554 () Bool)

(assert (=> b!6425866 (=> res!2641078 e!3898554)))

(assert (=> b!6425866 (= res!2641078 (not ((_ is ElementMatch!16329) lt!2378030)))))

(declare-fun e!3898555 () Bool)

(assert (=> b!6425866 (= e!3898555 e!3898554)))

(declare-fun b!6425867 () Bool)

(declare-fun e!3898557 () Bool)

(assert (=> b!6425867 (= e!3898557 e!3898555)))

(declare-fun c!1174157 () Bool)

(assert (=> b!6425867 (= c!1174157 ((_ is EmptyLang!16329) lt!2378030))))

(declare-fun bm!552660 () Bool)

(declare-fun call!552665 () Bool)

(assert (=> bm!552660 (= call!552665 (isEmpty!37324 (_1!36611 lt!2378024)))))

(declare-fun b!6425868 () Bool)

(declare-fun res!2641073 () Bool)

(declare-fun e!3898559 () Bool)

(assert (=> b!6425868 (=> res!2641073 e!3898559)))

(declare-fun tail!12234 (List!65286) List!65286)

(assert (=> b!6425868 (= res!2641073 (not (isEmpty!37324 (tail!12234 (_1!36611 lt!2378024)))))))

(declare-fun b!6425869 () Bool)

(declare-fun e!3898553 () Bool)

(declare-fun derivativeStep!5033 (Regex!16329 C!32928) Regex!16329)

(assert (=> b!6425869 (= e!3898553 (matchR!8512 (derivativeStep!5033 lt!2378030 (head!13149 (_1!36611 lt!2378024))) (tail!12234 (_1!36611 lt!2378024))))))

(declare-fun b!6425870 () Bool)

(declare-fun e!3898556 () Bool)

(assert (=> b!6425870 (= e!3898556 e!3898559)))

(declare-fun res!2641076 () Bool)

(assert (=> b!6425870 (=> res!2641076 e!3898559)))

(assert (=> b!6425870 (= res!2641076 call!552665)))

(declare-fun b!6425871 () Bool)

(declare-fun res!2641077 () Bool)

(assert (=> b!6425871 (=> res!2641077 e!3898554)))

(assert (=> b!6425871 (= res!2641077 e!3898558)))

(declare-fun res!2641074 () Bool)

(assert (=> b!6425871 (=> (not res!2641074) (not e!3898558))))

(declare-fun lt!2378064 () Bool)

(assert (=> b!6425871 (= res!2641074 lt!2378064)))

(declare-fun b!6425872 () Bool)

(declare-fun res!2641072 () Bool)

(assert (=> b!6425872 (=> (not res!2641072) (not e!3898558))))

(assert (=> b!6425872 (= res!2641072 (isEmpty!37324 (tail!12234 (_1!36611 lt!2378024))))))

(declare-fun b!6425873 () Bool)

(assert (=> b!6425873 (= e!3898554 e!3898556)))

(declare-fun res!2641071 () Bool)

(assert (=> b!6425873 (=> (not res!2641071) (not e!3898556))))

(assert (=> b!6425873 (= res!2641071 (not lt!2378064))))

(declare-fun b!6425874 () Bool)

(declare-fun res!2641075 () Bool)

(assert (=> b!6425874 (=> (not res!2641075) (not e!3898558))))

(assert (=> b!6425874 (= res!2641075 (not call!552665))))

(declare-fun b!6425875 () Bool)

(assert (=> b!6425875 (= e!3898559 (not (= (head!13149 (_1!36611 lt!2378024)) (c!1174148 lt!2378030))))))

(declare-fun d!2014596 () Bool)

(assert (=> d!2014596 e!3898557))

(declare-fun c!1174156 () Bool)

(assert (=> d!2014596 (= c!1174156 ((_ is EmptyExpr!16329) lt!2378030))))

(assert (=> d!2014596 (= lt!2378064 e!3898553)))

(declare-fun c!1174155 () Bool)

(assert (=> d!2014596 (= c!1174155 (isEmpty!37324 (_1!36611 lt!2378024)))))

(assert (=> d!2014596 (validRegex!8065 lt!2378030)))

(assert (=> d!2014596 (= (matchR!8512 lt!2378030 (_1!36611 lt!2378024)) lt!2378064)))

(declare-fun b!6425865 () Bool)

(assert (=> b!6425865 (= e!3898557 (= lt!2378064 call!552665))))

(declare-fun b!6425876 () Bool)

(assert (=> b!6425876 (= e!3898553 (nullable!6322 lt!2378030))))

(declare-fun b!6425877 () Bool)

(assert (=> b!6425877 (= e!3898555 (not lt!2378064))))

(assert (= (and d!2014596 c!1174155) b!6425876))

(assert (= (and d!2014596 (not c!1174155)) b!6425869))

(assert (= (and d!2014596 c!1174156) b!6425865))

(assert (= (and d!2014596 (not c!1174156)) b!6425867))

(assert (= (and b!6425867 c!1174157) b!6425877))

(assert (= (and b!6425867 (not c!1174157)) b!6425866))

(assert (= (and b!6425866 (not res!2641078)) b!6425871))

(assert (= (and b!6425871 res!2641074) b!6425874))

(assert (= (and b!6425874 res!2641075) b!6425872))

(assert (= (and b!6425872 res!2641072) b!6425864))

(assert (= (and b!6425871 (not res!2641077)) b!6425873))

(assert (= (and b!6425873 res!2641071) b!6425870))

(assert (= (and b!6425870 (not res!2641076)) b!6425868))

(assert (= (and b!6425868 (not res!2641073)) b!6425875))

(assert (= (or b!6425865 b!6425870 b!6425874) bm!552660))

(declare-fun m!7219974 () Bool)

(assert (=> b!6425869 m!7219974))

(assert (=> b!6425869 m!7219974))

(declare-fun m!7219976 () Bool)

(assert (=> b!6425869 m!7219976))

(declare-fun m!7219978 () Bool)

(assert (=> b!6425869 m!7219978))

(assert (=> b!6425869 m!7219976))

(assert (=> b!6425869 m!7219978))

(declare-fun m!7219980 () Bool)

(assert (=> b!6425869 m!7219980))

(assert (=> bm!552660 m!7219968))

(assert (=> b!6425864 m!7219974))

(assert (=> b!6425875 m!7219974))

(assert (=> b!6425868 m!7219978))

(assert (=> b!6425868 m!7219978))

(declare-fun m!7219982 () Bool)

(assert (=> b!6425868 m!7219982))

(assert (=> d!2014596 m!7219968))

(assert (=> d!2014596 m!7219926))

(declare-fun m!7219984 () Bool)

(assert (=> b!6425876 m!7219984))

(assert (=> b!6425872 m!7219978))

(assert (=> b!6425872 m!7219978))

(assert (=> b!6425872 m!7219982))

(assert (=> b!6425817 d!2014596))

(declare-fun d!2014600 () Bool)

(assert (=> d!2014600 (= (isEmpty!37324 (_1!36611 lt!2378024)) ((_ is Nil!65162) (_1!36611 lt!2378024)))))

(assert (=> b!6425797 d!2014600))

(declare-fun b!6425916 () Bool)

(declare-fun e!3898591 () Bool)

(declare-fun e!3898587 () Bool)

(assert (=> b!6425916 (= e!3898591 e!3898587)))

(declare-fun c!1174170 () Bool)

(assert (=> b!6425916 (= c!1174170 ((_ is Star!16329) lt!2378030))))

(declare-fun bm!552667 () Bool)

(declare-fun call!552673 () Bool)

(declare-fun call!552672 () Bool)

(assert (=> bm!552667 (= call!552673 call!552672)))

(declare-fun c!1174171 () Bool)

(declare-fun bm!552668 () Bool)

(assert (=> bm!552668 (= call!552672 (validRegex!8065 (ite c!1174170 (reg!16658 lt!2378030) (ite c!1174171 (regOne!33171 lt!2378030) (regOne!33170 lt!2378030)))))))

(declare-fun b!6425917 () Bool)

(declare-fun e!3898586 () Bool)

(declare-fun e!3898592 () Bool)

(assert (=> b!6425917 (= e!3898586 e!3898592)))

(declare-fun res!2641095 () Bool)

(assert (=> b!6425917 (=> (not res!2641095) (not e!3898592))))

(assert (=> b!6425917 (= res!2641095 call!552673)))

(declare-fun b!6425918 () Bool)

(declare-fun res!2641096 () Bool)

(declare-fun e!3898590 () Bool)

(assert (=> b!6425918 (=> (not res!2641096) (not e!3898590))))

(assert (=> b!6425918 (= res!2641096 call!552673)))

(declare-fun e!3898589 () Bool)

(assert (=> b!6425918 (= e!3898589 e!3898590)))

(declare-fun b!6425919 () Bool)

(declare-fun call!552674 () Bool)

(assert (=> b!6425919 (= e!3898592 call!552674)))

(declare-fun d!2014602 () Bool)

(declare-fun res!2641093 () Bool)

(assert (=> d!2014602 (=> res!2641093 e!3898591)))

(assert (=> d!2014602 (= res!2641093 ((_ is ElementMatch!16329) lt!2378030))))

(assert (=> d!2014602 (= (validRegex!8065 lt!2378030) e!3898591)))

(declare-fun b!6425920 () Bool)

(declare-fun e!3898588 () Bool)

(assert (=> b!6425920 (= e!3898587 e!3898588)))

(declare-fun res!2641097 () Bool)

(assert (=> b!6425920 (= res!2641097 (not (nullable!6322 (reg!16658 lt!2378030))))))

(assert (=> b!6425920 (=> (not res!2641097) (not e!3898588))))

(declare-fun b!6425921 () Bool)

(assert (=> b!6425921 (= e!3898590 call!552674)))

(declare-fun b!6425922 () Bool)

(assert (=> b!6425922 (= e!3898587 e!3898589)))

(assert (=> b!6425922 (= c!1174171 ((_ is Union!16329) lt!2378030))))

(declare-fun b!6425923 () Bool)

(declare-fun res!2641094 () Bool)

(assert (=> b!6425923 (=> res!2641094 e!3898586)))

(assert (=> b!6425923 (= res!2641094 (not ((_ is Concat!25174) lt!2378030)))))

(assert (=> b!6425923 (= e!3898589 e!3898586)))

(declare-fun bm!552669 () Bool)

(assert (=> bm!552669 (= call!552674 (validRegex!8065 (ite c!1174171 (regTwo!33171 lt!2378030) (regTwo!33170 lt!2378030))))))

(declare-fun b!6425924 () Bool)

(assert (=> b!6425924 (= e!3898588 call!552672)))

(assert (= (and d!2014602 (not res!2641093)) b!6425916))

(assert (= (and b!6425916 c!1174170) b!6425920))

(assert (= (and b!6425916 (not c!1174170)) b!6425922))

(assert (= (and b!6425920 res!2641097) b!6425924))

(assert (= (and b!6425922 c!1174171) b!6425918))

(assert (= (and b!6425922 (not c!1174171)) b!6425923))

(assert (= (and b!6425918 res!2641096) b!6425921))

(assert (= (and b!6425923 (not res!2641094)) b!6425917))

(assert (= (and b!6425917 res!2641095) b!6425919))

(assert (= (or b!6425921 b!6425919) bm!552669))

(assert (= (or b!6425918 b!6425917) bm!552667))

(assert (= (or b!6425924 bm!552667) bm!552668))

(declare-fun m!7219986 () Bool)

(assert (=> bm!552668 m!7219986))

(declare-fun m!7219988 () Bool)

(assert (=> b!6425920 m!7219988))

(declare-fun m!7219990 () Bool)

(assert (=> bm!552669 m!7219990))

(assert (=> b!6425794 d!2014602))

(declare-fun c!1174199 () Bool)

(declare-fun call!552693 () List!65287)

(declare-fun c!1174202 () Bool)

(declare-fun c!1174200 () Bool)

(declare-fun bm!552687 () Bool)

(declare-fun call!552696 () (InoxSet Context!11426))

(assert (=> bm!552687 (= call!552696 (derivationStepZipperDown!1577 (ite c!1174199 (regTwo!33171 (reg!16658 (regOne!33170 r!7292))) (ite c!1174200 (regTwo!33170 (reg!16658 (regOne!33170 r!7292))) (ite c!1174202 (regOne!33170 (reg!16658 (regOne!33170 r!7292))) (reg!16658 (reg!16658 (regOne!33170 r!7292)))))) (ite (or c!1174199 c!1174200) lt!2378041 (Context!11427 call!552693)) (h!71610 s!2326)))))

(declare-fun bm!552688 () Bool)

(declare-fun call!552697 () List!65287)

(declare-fun $colon$colon!2189 (List!65287 Regex!16329) List!65287)

(assert (=> bm!552688 (= call!552697 ($colon$colon!2189 (exprs!6213 lt!2378041) (ite (or c!1174200 c!1174202) (regTwo!33170 (reg!16658 (regOne!33170 r!7292))) (reg!16658 (regOne!33170 r!7292)))))))

(declare-fun bm!552689 () Bool)

(assert (=> bm!552689 (= call!552693 call!552697)))

(declare-fun bm!552690 () Bool)

(declare-fun call!552695 () (InoxSet Context!11426))

(declare-fun call!552692 () (InoxSet Context!11426))

(assert (=> bm!552690 (= call!552695 call!552692)))

(declare-fun b!6426017 () Bool)

(declare-fun e!3898648 () (InoxSet Context!11426))

(declare-fun e!3898651 () (InoxSet Context!11426))

(assert (=> b!6426017 (= e!3898648 e!3898651)))

(assert (=> b!6426017 (= c!1174199 ((_ is Union!16329) (reg!16658 (regOne!33170 r!7292))))))

(declare-fun b!6426018 () Bool)

(declare-fun e!3898650 () Bool)

(assert (=> b!6426018 (= c!1174200 e!3898650)))

(declare-fun res!2641136 () Bool)

(assert (=> b!6426018 (=> (not res!2641136) (not e!3898650))))

(assert (=> b!6426018 (= res!2641136 ((_ is Concat!25174) (reg!16658 (regOne!33170 r!7292))))))

(declare-fun e!3898647 () (InoxSet Context!11426))

(assert (=> b!6426018 (= e!3898651 e!3898647)))

(declare-fun b!6426019 () Bool)

(declare-fun e!3898649 () (InoxSet Context!11426))

(assert (=> b!6426019 (= e!3898649 call!552695)))

(declare-fun b!6426020 () Bool)

(declare-fun call!552694 () (InoxSet Context!11426))

(assert (=> b!6426020 (= e!3898651 ((_ map or) call!552694 call!552696))))

(declare-fun d!2014604 () Bool)

(declare-fun c!1174201 () Bool)

(assert (=> d!2014604 (= c!1174201 (and ((_ is ElementMatch!16329) (reg!16658 (regOne!33170 r!7292))) (= (c!1174148 (reg!16658 (regOne!33170 r!7292))) (h!71610 s!2326))))))

(assert (=> d!2014604 (= (derivationStepZipperDown!1577 (reg!16658 (regOne!33170 r!7292)) lt!2378041 (h!71610 s!2326)) e!3898648)))

(declare-fun b!6426021 () Bool)

(assert (=> b!6426021 (= e!3898647 ((_ map or) call!552694 call!552692))))

(declare-fun b!6426022 () Bool)

(assert (=> b!6426022 (= e!3898650 (nullable!6322 (regOne!33170 (reg!16658 (regOne!33170 r!7292)))))))

(declare-fun b!6426023 () Bool)

(assert (=> b!6426023 (= e!3898649 ((as const (Array Context!11426 Bool)) false))))

(declare-fun bm!552691 () Bool)

(assert (=> bm!552691 (= call!552694 (derivationStepZipperDown!1577 (ite c!1174199 (regOne!33171 (reg!16658 (regOne!33170 r!7292))) (regOne!33170 (reg!16658 (regOne!33170 r!7292)))) (ite c!1174199 lt!2378041 (Context!11427 call!552697)) (h!71610 s!2326)))))

(declare-fun b!6426024 () Bool)

(declare-fun e!3898646 () (InoxSet Context!11426))

(assert (=> b!6426024 (= e!3898647 e!3898646)))

(assert (=> b!6426024 (= c!1174202 ((_ is Concat!25174) (reg!16658 (regOne!33170 r!7292))))))

(declare-fun b!6426025 () Bool)

(declare-fun c!1174203 () Bool)

(assert (=> b!6426025 (= c!1174203 ((_ is Star!16329) (reg!16658 (regOne!33170 r!7292))))))

(assert (=> b!6426025 (= e!3898646 e!3898649)))

(declare-fun b!6426026 () Bool)

(assert (=> b!6426026 (= e!3898646 call!552695)))

(declare-fun bm!552692 () Bool)

(assert (=> bm!552692 (= call!552692 call!552696)))

(declare-fun b!6426027 () Bool)

(assert (=> b!6426027 (= e!3898648 (store ((as const (Array Context!11426 Bool)) false) lt!2378041 true))))

(assert (= (and d!2014604 c!1174201) b!6426027))

(assert (= (and d!2014604 (not c!1174201)) b!6426017))

(assert (= (and b!6426017 c!1174199) b!6426020))

(assert (= (and b!6426017 (not c!1174199)) b!6426018))

(assert (= (and b!6426018 res!2641136) b!6426022))

(assert (= (and b!6426018 c!1174200) b!6426021))

(assert (= (and b!6426018 (not c!1174200)) b!6426024))

(assert (= (and b!6426024 c!1174202) b!6426026))

(assert (= (and b!6426024 (not c!1174202)) b!6426025))

(assert (= (and b!6426025 c!1174203) b!6426019))

(assert (= (and b!6426025 (not c!1174203)) b!6426023))

(assert (= (or b!6426026 b!6426019) bm!552689))

(assert (= (or b!6426026 b!6426019) bm!552690))

(assert (= (or b!6426021 bm!552689) bm!552688))

(assert (= (or b!6426021 bm!552690) bm!552692))

(assert (= (or b!6426020 bm!552692) bm!552687))

(assert (= (or b!6426020 b!6426021) bm!552691))

(declare-fun m!7220026 () Bool)

(assert (=> bm!552687 m!7220026))

(declare-fun m!7220028 () Bool)

(assert (=> bm!552688 m!7220028))

(declare-fun m!7220030 () Bool)

(assert (=> b!6426022 m!7220030))

(declare-fun m!7220032 () Bool)

(assert (=> bm!552691 m!7220032))

(assert (=> b!6426027 m!7219932))

(assert (=> b!6425795 d!2014604))

(declare-fun d!2014612 () Bool)

(declare-fun choose!47751 ((InoxSet Context!11426) Int) (InoxSet Context!11426))

(assert (=> d!2014612 (= (flatMap!1834 lt!2378028 lambda!355211) (choose!47751 lt!2378028 lambda!355211))))

(declare-fun bs!1616263 () Bool)

(assert (= bs!1616263 d!2014612))

(declare-fun m!7220040 () Bool)

(assert (=> bs!1616263 m!7220040))

(assert (=> b!6425814 d!2014612))

(declare-fun d!2014616 () Bool)

(declare-fun lt!2378071 () Regex!16329)

(assert (=> d!2014616 (validRegex!8065 lt!2378071)))

(assert (=> d!2014616 (= lt!2378071 (generalisedUnion!2173 (unfocusZipperList!1750 (Cons!65164 lt!2378031 Nil!65164))))))

(assert (=> d!2014616 (= (unfocusZipper!2071 (Cons!65164 lt!2378031 Nil!65164)) lt!2378071)))

(declare-fun bs!1616264 () Bool)

(assert (= bs!1616264 d!2014616))

(declare-fun m!7220042 () Bool)

(assert (=> bs!1616264 m!7220042))

(declare-fun m!7220044 () Bool)

(assert (=> bs!1616264 m!7220044))

(assert (=> bs!1616264 m!7220044))

(declare-fun m!7220046 () Bool)

(assert (=> bs!1616264 m!7220046))

(assert (=> b!6425814 d!2014616))

(declare-fun bm!552702 () Bool)

(declare-fun call!552707 () (InoxSet Context!11426))

(assert (=> bm!552702 (= call!552707 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 lt!2378041)) (Context!11427 (t!378903 (exprs!6213 lt!2378041))) (h!71610 s!2326)))))

(declare-fun b!6426065 () Bool)

(declare-fun e!3898675 () (InoxSet Context!11426))

(assert (=> b!6426065 (= e!3898675 call!552707)))

(declare-fun b!6426066 () Bool)

(declare-fun e!3898677 () Bool)

(assert (=> b!6426066 (= e!3898677 (nullable!6322 (h!71611 (exprs!6213 lt!2378041))))))

(declare-fun d!2014618 () Bool)

(declare-fun c!1174215 () Bool)

(assert (=> d!2014618 (= c!1174215 e!3898677)))

(declare-fun res!2641154 () Bool)

(assert (=> d!2014618 (=> (not res!2641154) (not e!3898677))))

(assert (=> d!2014618 (= res!2641154 ((_ is Cons!65163) (exprs!6213 lt!2378041)))))

(declare-fun e!3898676 () (InoxSet Context!11426))

(assert (=> d!2014618 (= (derivationStepZipperUp!1503 lt!2378041 (h!71610 s!2326)) e!3898676)))

(declare-fun b!6426067 () Bool)

(assert (=> b!6426067 (= e!3898675 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426068 () Bool)

(assert (=> b!6426068 (= e!3898676 ((_ map or) call!552707 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 lt!2378041))) (h!71610 s!2326))))))

(declare-fun b!6426069 () Bool)

(assert (=> b!6426069 (= e!3898676 e!3898675)))

(declare-fun c!1174214 () Bool)

(assert (=> b!6426069 (= c!1174214 ((_ is Cons!65163) (exprs!6213 lt!2378041)))))

(assert (= (and d!2014618 res!2641154) b!6426066))

(assert (= (and d!2014618 c!1174215) b!6426068))

(assert (= (and d!2014618 (not c!1174215)) b!6426069))

(assert (= (and b!6426069 c!1174214) b!6426065))

(assert (= (and b!6426069 (not c!1174214)) b!6426067))

(assert (= (or b!6426068 b!6426065) bm!552702))

(declare-fun m!7220048 () Bool)

(assert (=> bm!552702 m!7220048))

(declare-fun m!7220050 () Bool)

(assert (=> b!6426066 m!7220050))

(declare-fun m!7220052 () Bool)

(assert (=> b!6426068 m!7220052))

(assert (=> b!6425814 d!2014618))

(declare-fun d!2014620 () Bool)

(declare-fun dynLambda!25885 (Int Context!11426) (InoxSet Context!11426))

(assert (=> d!2014620 (= (flatMap!1834 lt!2378028 lambda!355211) (dynLambda!25885 lambda!355211 lt!2378041))))

(declare-fun lt!2378083 () Unit!158647)

(declare-fun choose!47753 ((InoxSet Context!11426) Context!11426 Int) Unit!158647)

(assert (=> d!2014620 (= lt!2378083 (choose!47753 lt!2378028 lt!2378041 lambda!355211))))

(assert (=> d!2014620 (= lt!2378028 (store ((as const (Array Context!11426 Bool)) false) lt!2378041 true))))

(assert (=> d!2014620 (= (lemmaFlatMapOnSingletonSet!1360 lt!2378028 lt!2378041 lambda!355211) lt!2378083)))

(declare-fun b_lambda!244213 () Bool)

(assert (=> (not b_lambda!244213) (not d!2014620)))

(declare-fun bs!1616267 () Bool)

(assert (= bs!1616267 d!2014620))

(assert (=> bs!1616267 m!7219936))

(declare-fun m!7220082 () Bool)

(assert (=> bs!1616267 m!7220082))

(declare-fun m!7220084 () Bool)

(assert (=> bs!1616267 m!7220084))

(assert (=> bs!1616267 m!7219932))

(assert (=> b!6425814 d!2014620))

(declare-fun bm!552703 () Bool)

(declare-fun call!552708 () (InoxSet Context!11426))

(assert (=> bm!552703 (= call!552708 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 lt!2378031)) (Context!11427 (t!378903 (exprs!6213 lt!2378031))) (h!71610 s!2326)))))

(declare-fun b!6426079 () Bool)

(declare-fun e!3898683 () (InoxSet Context!11426))

(assert (=> b!6426079 (= e!3898683 call!552708)))

(declare-fun b!6426080 () Bool)

(declare-fun e!3898685 () Bool)

(assert (=> b!6426080 (= e!3898685 (nullable!6322 (h!71611 (exprs!6213 lt!2378031))))))

(declare-fun d!2014628 () Bool)

(declare-fun c!1174219 () Bool)

(assert (=> d!2014628 (= c!1174219 e!3898685)))

(declare-fun res!2641160 () Bool)

(assert (=> d!2014628 (=> (not res!2641160) (not e!3898685))))

(assert (=> d!2014628 (= res!2641160 ((_ is Cons!65163) (exprs!6213 lt!2378031)))))

(declare-fun e!3898684 () (InoxSet Context!11426))

(assert (=> d!2014628 (= (derivationStepZipperUp!1503 lt!2378031 (h!71610 s!2326)) e!3898684)))

(declare-fun b!6426081 () Bool)

(assert (=> b!6426081 (= e!3898683 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426082 () Bool)

(assert (=> b!6426082 (= e!3898684 ((_ map or) call!552708 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 lt!2378031))) (h!71610 s!2326))))))

(declare-fun b!6426083 () Bool)

(assert (=> b!6426083 (= e!3898684 e!3898683)))

(declare-fun c!1174218 () Bool)

(assert (=> b!6426083 (= c!1174218 ((_ is Cons!65163) (exprs!6213 lt!2378031)))))

(assert (= (and d!2014628 res!2641160) b!6426080))

(assert (= (and d!2014628 c!1174219) b!6426082))

(assert (= (and d!2014628 (not c!1174219)) b!6426083))

(assert (= (and b!6426083 c!1174218) b!6426079))

(assert (= (and b!6426083 (not c!1174218)) b!6426081))

(assert (= (or b!6426082 b!6426079) bm!552703))

(declare-fun m!7220086 () Bool)

(assert (=> bm!552703 m!7220086))

(declare-fun m!7220088 () Bool)

(assert (=> b!6426080 m!7220088))

(declare-fun m!7220090 () Bool)

(assert (=> b!6426082 m!7220090))

(assert (=> b!6425814 d!2014628))

(declare-fun d!2014630 () Bool)

(assert (=> d!2014630 (= (flatMap!1834 lt!2378026 lambda!355211) (dynLambda!25885 lambda!355211 lt!2378031))))

(declare-fun lt!2378084 () Unit!158647)

(assert (=> d!2014630 (= lt!2378084 (choose!47753 lt!2378026 lt!2378031 lambda!355211))))

(assert (=> d!2014630 (= lt!2378026 (store ((as const (Array Context!11426 Bool)) false) lt!2378031 true))))

(assert (=> d!2014630 (= (lemmaFlatMapOnSingletonSet!1360 lt!2378026 lt!2378031 lambda!355211) lt!2378084)))

(declare-fun b_lambda!244215 () Bool)

(assert (=> (not b_lambda!244215) (not d!2014630)))

(declare-fun bs!1616268 () Bool)

(assert (= bs!1616268 d!2014630))

(assert (=> bs!1616268 m!7219934))

(declare-fun m!7220092 () Bool)

(assert (=> bs!1616268 m!7220092))

(declare-fun m!7220094 () Bool)

(assert (=> bs!1616268 m!7220094))

(assert (=> bs!1616268 m!7219938))

(assert (=> b!6425814 d!2014630))

(declare-fun d!2014632 () Bool)

(assert (=> d!2014632 (= (flatMap!1834 lt!2378026 lambda!355211) (choose!47751 lt!2378026 lambda!355211))))

(declare-fun bs!1616269 () Bool)

(assert (= bs!1616269 d!2014632))

(declare-fun m!7220096 () Bool)

(assert (=> bs!1616269 m!7220096))

(assert (=> b!6425814 d!2014632))

(declare-fun d!2014634 () Bool)

(assert (=> d!2014634 (= (isEmpty!37325 (t!378903 (exprs!6213 (h!71612 zl!343)))) ((_ is Nil!65163) (t!378903 (exprs!6213 (h!71612 zl!343)))))))

(assert (=> b!6425815 d!2014634))

(declare-fun d!2014636 () Bool)

(declare-fun nullableFct!2267 (Regex!16329) Bool)

(assert (=> d!2014636 (= (nullable!6322 (regOne!33170 (regOne!33170 r!7292))) (nullableFct!2267 (regOne!33170 (regOne!33170 r!7292))))))

(declare-fun bs!1616270 () Bool)

(assert (= bs!1616270 d!2014636))

(declare-fun m!7220098 () Bool)

(assert (=> bs!1616270 m!7220098))

(assert (=> b!6425811 d!2014636))

(declare-fun d!2014638 () Bool)

(declare-fun lt!2378088 () Regex!16329)

(assert (=> d!2014638 (validRegex!8065 lt!2378088)))

(assert (=> d!2014638 (= lt!2378088 (generalisedUnion!2173 (unfocusZipperList!1750 (Cons!65164 lt!2378041 Nil!65164))))))

(assert (=> d!2014638 (= (unfocusZipper!2071 (Cons!65164 lt!2378041 Nil!65164)) lt!2378088)))

(declare-fun bs!1616272 () Bool)

(assert (= bs!1616272 d!2014638))

(declare-fun m!7220100 () Bool)

(assert (=> bs!1616272 m!7220100))

(declare-fun m!7220102 () Bool)

(assert (=> bs!1616272 m!7220102))

(assert (=> bs!1616272 m!7220102))

(declare-fun m!7220104 () Bool)

(assert (=> bs!1616272 m!7220104))

(assert (=> b!6425812 d!2014638))

(declare-fun d!2014640 () Bool)

(assert (=> d!2014640 (= (nullable!6322 (h!71611 (exprs!6213 (h!71612 zl!343)))) (nullableFct!2267 (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun bs!1616274 () Bool)

(assert (= bs!1616274 d!2014640))

(declare-fun m!7220106 () Bool)

(assert (=> bs!1616274 m!7220106))

(assert (=> b!6425809 d!2014640))

(declare-fun d!2014642 () Bool)

(assert (=> d!2014642 (= (flatMap!1834 z!1189 lambda!355211) (choose!47751 z!1189 lambda!355211))))

(declare-fun bs!1616276 () Bool)

(assert (= bs!1616276 d!2014642))

(declare-fun m!7220108 () Bool)

(assert (=> bs!1616276 m!7220108))

(assert (=> b!6425809 d!2014642))

(declare-fun d!2014644 () Bool)

(assert (=> d!2014644 (= (flatMap!1834 z!1189 lambda!355211) (dynLambda!25885 lambda!355211 (h!71612 zl!343)))))

(declare-fun lt!2378089 () Unit!158647)

(assert (=> d!2014644 (= lt!2378089 (choose!47753 z!1189 (h!71612 zl!343) lambda!355211))))

(assert (=> d!2014644 (= z!1189 (store ((as const (Array Context!11426 Bool)) false) (h!71612 zl!343) true))))

(assert (=> d!2014644 (= (lemmaFlatMapOnSingletonSet!1360 z!1189 (h!71612 zl!343) lambda!355211) lt!2378089)))

(declare-fun b_lambda!244217 () Bool)

(assert (=> (not b_lambda!244217) (not d!2014644)))

(declare-fun bs!1616278 () Bool)

(assert (= bs!1616278 d!2014644))

(assert (=> bs!1616278 m!7219882))

(declare-fun m!7220114 () Bool)

(assert (=> bs!1616278 m!7220114))

(declare-fun m!7220116 () Bool)

(assert (=> bs!1616278 m!7220116))

(declare-fun m!7220118 () Bool)

(assert (=> bs!1616278 m!7220118))

(assert (=> b!6425809 d!2014644))

(declare-fun bm!552704 () Bool)

(declare-fun call!552709 () (InoxSet Context!11426))

(assert (=> bm!552704 (= call!552709 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 (h!71612 zl!343))) (Context!11427 (t!378903 (exprs!6213 (h!71612 zl!343)))) (h!71610 s!2326)))))

(declare-fun b!6426088 () Bool)

(declare-fun e!3898688 () (InoxSet Context!11426))

(assert (=> b!6426088 (= e!3898688 call!552709)))

(declare-fun b!6426089 () Bool)

(declare-fun e!3898690 () Bool)

(assert (=> b!6426089 (= e!3898690 (nullable!6322 (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun d!2014648 () Bool)

(declare-fun c!1174221 () Bool)

(assert (=> d!2014648 (= c!1174221 e!3898690)))

(declare-fun res!2641165 () Bool)

(assert (=> d!2014648 (=> (not res!2641165) (not e!3898690))))

(assert (=> d!2014648 (= res!2641165 ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343))))))

(declare-fun e!3898689 () (InoxSet Context!11426))

(assert (=> d!2014648 (= (derivationStepZipperUp!1503 (h!71612 zl!343) (h!71610 s!2326)) e!3898689)))

(declare-fun b!6426090 () Bool)

(assert (=> b!6426090 (= e!3898688 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426091 () Bool)

(assert (=> b!6426091 (= e!3898689 ((_ map or) call!552709 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 (h!71612 zl!343)))) (h!71610 s!2326))))))

(declare-fun b!6426092 () Bool)

(assert (=> b!6426092 (= e!3898689 e!3898688)))

(declare-fun c!1174220 () Bool)

(assert (=> b!6426092 (= c!1174220 ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343))))))

(assert (= (and d!2014648 res!2641165) b!6426089))

(assert (= (and d!2014648 c!1174221) b!6426091))

(assert (= (and d!2014648 (not c!1174221)) b!6426092))

(assert (= (and b!6426092 c!1174220) b!6426088))

(assert (= (and b!6426092 (not c!1174220)) b!6426090))

(assert (= (or b!6426091 b!6426088) bm!552704))

(declare-fun m!7220120 () Bool)

(assert (=> bm!552704 m!7220120))

(assert (=> b!6426089 m!7219880))

(declare-fun m!7220122 () Bool)

(assert (=> b!6426091 m!7220122))

(assert (=> b!6425809 d!2014648))

(declare-fun bm!552705 () Bool)

(declare-fun call!552714 () (InoxSet Context!11426))

(declare-fun c!1174223 () Bool)

(declare-fun call!552711 () List!65287)

(declare-fun c!1174222 () Bool)

(declare-fun c!1174225 () Bool)

(assert (=> bm!552705 (= call!552714 (derivationStepZipperDown!1577 (ite c!1174222 (regTwo!33171 (h!71611 (exprs!6213 (h!71612 zl!343)))) (ite c!1174223 (regTwo!33170 (h!71611 (exprs!6213 (h!71612 zl!343)))) (ite c!1174225 (regOne!33170 (h!71611 (exprs!6213 (h!71612 zl!343)))) (reg!16658 (h!71611 (exprs!6213 (h!71612 zl!343))))))) (ite (or c!1174222 c!1174223) lt!2378034 (Context!11427 call!552711)) (h!71610 s!2326)))))

(declare-fun call!552715 () List!65287)

(declare-fun bm!552706 () Bool)

(assert (=> bm!552706 (= call!552715 ($colon$colon!2189 (exprs!6213 lt!2378034) (ite (or c!1174223 c!1174225) (regTwo!33170 (h!71611 (exprs!6213 (h!71612 zl!343)))) (h!71611 (exprs!6213 (h!71612 zl!343))))))))

(declare-fun bm!552707 () Bool)

(assert (=> bm!552707 (= call!552711 call!552715)))

(declare-fun bm!552708 () Bool)

(declare-fun call!552713 () (InoxSet Context!11426))

(declare-fun call!552710 () (InoxSet Context!11426))

(assert (=> bm!552708 (= call!552713 call!552710)))

(declare-fun b!6426093 () Bool)

(declare-fun e!3898693 () (InoxSet Context!11426))

(declare-fun e!3898696 () (InoxSet Context!11426))

(assert (=> b!6426093 (= e!3898693 e!3898696)))

(assert (=> b!6426093 (= c!1174222 ((_ is Union!16329) (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6426094 () Bool)

(declare-fun e!3898695 () Bool)

(assert (=> b!6426094 (= c!1174223 e!3898695)))

(declare-fun res!2641166 () Bool)

(assert (=> b!6426094 (=> (not res!2641166) (not e!3898695))))

(assert (=> b!6426094 (= res!2641166 ((_ is Concat!25174) (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun e!3898692 () (InoxSet Context!11426))

(assert (=> b!6426094 (= e!3898696 e!3898692)))

(declare-fun b!6426095 () Bool)

(declare-fun e!3898694 () (InoxSet Context!11426))

(assert (=> b!6426095 (= e!3898694 call!552713)))

(declare-fun b!6426096 () Bool)

(declare-fun call!552712 () (InoxSet Context!11426))

(assert (=> b!6426096 (= e!3898696 ((_ map or) call!552712 call!552714))))

(declare-fun d!2014650 () Bool)

(declare-fun c!1174224 () Bool)

(assert (=> d!2014650 (= c!1174224 (and ((_ is ElementMatch!16329) (h!71611 (exprs!6213 (h!71612 zl!343)))) (= (c!1174148 (h!71611 (exprs!6213 (h!71612 zl!343)))) (h!71610 s!2326))))))

(assert (=> d!2014650 (= (derivationStepZipperDown!1577 (h!71611 (exprs!6213 (h!71612 zl!343))) lt!2378034 (h!71610 s!2326)) e!3898693)))

(declare-fun b!6426097 () Bool)

(assert (=> b!6426097 (= e!3898692 ((_ map or) call!552712 call!552710))))

(declare-fun b!6426098 () Bool)

(assert (=> b!6426098 (= e!3898695 (nullable!6322 (regOne!33170 (h!71611 (exprs!6213 (h!71612 zl!343))))))))

(declare-fun b!6426099 () Bool)

(assert (=> b!6426099 (= e!3898694 ((as const (Array Context!11426 Bool)) false))))

(declare-fun bm!552709 () Bool)

(assert (=> bm!552709 (= call!552712 (derivationStepZipperDown!1577 (ite c!1174222 (regOne!33171 (h!71611 (exprs!6213 (h!71612 zl!343)))) (regOne!33170 (h!71611 (exprs!6213 (h!71612 zl!343))))) (ite c!1174222 lt!2378034 (Context!11427 call!552715)) (h!71610 s!2326)))))

(declare-fun b!6426100 () Bool)

(declare-fun e!3898691 () (InoxSet Context!11426))

(assert (=> b!6426100 (= e!3898692 e!3898691)))

(assert (=> b!6426100 (= c!1174225 ((_ is Concat!25174) (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6426101 () Bool)

(declare-fun c!1174226 () Bool)

(assert (=> b!6426101 (= c!1174226 ((_ is Star!16329) (h!71611 (exprs!6213 (h!71612 zl!343)))))))

(assert (=> b!6426101 (= e!3898691 e!3898694)))

(declare-fun b!6426102 () Bool)

(assert (=> b!6426102 (= e!3898691 call!552713)))

(declare-fun bm!552710 () Bool)

(assert (=> bm!552710 (= call!552710 call!552714)))

(declare-fun b!6426103 () Bool)

(assert (=> b!6426103 (= e!3898693 (store ((as const (Array Context!11426 Bool)) false) lt!2378034 true))))

(assert (= (and d!2014650 c!1174224) b!6426103))

(assert (= (and d!2014650 (not c!1174224)) b!6426093))

(assert (= (and b!6426093 c!1174222) b!6426096))

(assert (= (and b!6426093 (not c!1174222)) b!6426094))

(assert (= (and b!6426094 res!2641166) b!6426098))

(assert (= (and b!6426094 c!1174223) b!6426097))

(assert (= (and b!6426094 (not c!1174223)) b!6426100))

(assert (= (and b!6426100 c!1174225) b!6426102))

(assert (= (and b!6426100 (not c!1174225)) b!6426101))

(assert (= (and b!6426101 c!1174226) b!6426095))

(assert (= (and b!6426101 (not c!1174226)) b!6426099))

(assert (= (or b!6426102 b!6426095) bm!552707))

(assert (= (or b!6426102 b!6426095) bm!552708))

(assert (= (or b!6426097 bm!552707) bm!552706))

(assert (= (or b!6426097 bm!552708) bm!552710))

(assert (= (or b!6426096 bm!552710) bm!552705))

(assert (= (or b!6426096 b!6426097) bm!552709))

(declare-fun m!7220124 () Bool)

(assert (=> bm!552705 m!7220124))

(declare-fun m!7220126 () Bool)

(assert (=> bm!552706 m!7220126))

(declare-fun m!7220128 () Bool)

(assert (=> b!6426098 m!7220128))

(declare-fun m!7220130 () Bool)

(assert (=> bm!552709 m!7220130))

(declare-fun m!7220132 () Bool)

(assert (=> b!6426103 m!7220132))

(assert (=> b!6425809 d!2014650))

(declare-fun bm!552711 () Bool)

(declare-fun call!552716 () (InoxSet Context!11426))

(assert (=> bm!552711 (= call!552716 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343))))))) (Context!11427 (t!378903 (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343)))))))) (h!71610 s!2326)))))

(declare-fun b!6426104 () Bool)

(declare-fun e!3898697 () (InoxSet Context!11426))

(assert (=> b!6426104 (= e!3898697 call!552716)))

(declare-fun b!6426105 () Bool)

(declare-fun e!3898699 () Bool)

(assert (=> b!6426105 (= e!3898699 (nullable!6322 (h!71611 (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343)))))))))))

(declare-fun d!2014652 () Bool)

(declare-fun c!1174228 () Bool)

(assert (=> d!2014652 (= c!1174228 e!3898699)))

(declare-fun res!2641167 () Bool)

(assert (=> d!2014652 (=> (not res!2641167) (not e!3898699))))

(assert (=> d!2014652 (= res!2641167 ((_ is Cons!65163) (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343))))))))))

(declare-fun e!3898698 () (InoxSet Context!11426))

(assert (=> d!2014652 (= (derivationStepZipperUp!1503 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343))))) (h!71610 s!2326)) e!3898698)))

(declare-fun b!6426106 () Bool)

(assert (=> b!6426106 (= e!3898697 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426107 () Bool)

(assert (=> b!6426107 (= e!3898698 ((_ map or) call!552716 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343)))))))) (h!71610 s!2326))))))

(declare-fun b!6426108 () Bool)

(assert (=> b!6426108 (= e!3898698 e!3898697)))

(declare-fun c!1174227 () Bool)

(assert (=> b!6426108 (= c!1174227 ((_ is Cons!65163) (exprs!6213 (Context!11427 (Cons!65163 (h!71611 (exprs!6213 (h!71612 zl!343))) (t!378903 (exprs!6213 (h!71612 zl!343))))))))))

(assert (= (and d!2014652 res!2641167) b!6426105))

(assert (= (and d!2014652 c!1174228) b!6426107))

(assert (= (and d!2014652 (not c!1174228)) b!6426108))

(assert (= (and b!6426108 c!1174227) b!6426104))

(assert (= (and b!6426108 (not c!1174227)) b!6426106))

(assert (= (or b!6426107 b!6426104) bm!552711))

(declare-fun m!7220134 () Bool)

(assert (=> bm!552711 m!7220134))

(declare-fun m!7220136 () Bool)

(assert (=> b!6426105 m!7220136))

(declare-fun m!7220138 () Bool)

(assert (=> b!6426107 m!7220138))

(assert (=> b!6425809 d!2014652))

(declare-fun bm!552712 () Bool)

(declare-fun call!552717 () (InoxSet Context!11426))

(assert (=> bm!552712 (= call!552717 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 lt!2378034)) (Context!11427 (t!378903 (exprs!6213 lt!2378034))) (h!71610 s!2326)))))

(declare-fun b!6426109 () Bool)

(declare-fun e!3898700 () (InoxSet Context!11426))

(assert (=> b!6426109 (= e!3898700 call!552717)))

(declare-fun b!6426110 () Bool)

(declare-fun e!3898702 () Bool)

(assert (=> b!6426110 (= e!3898702 (nullable!6322 (h!71611 (exprs!6213 lt!2378034))))))

(declare-fun d!2014654 () Bool)

(declare-fun c!1174230 () Bool)

(assert (=> d!2014654 (= c!1174230 e!3898702)))

(declare-fun res!2641168 () Bool)

(assert (=> d!2014654 (=> (not res!2641168) (not e!3898702))))

(assert (=> d!2014654 (= res!2641168 ((_ is Cons!65163) (exprs!6213 lt!2378034)))))

(declare-fun e!3898701 () (InoxSet Context!11426))

(assert (=> d!2014654 (= (derivationStepZipperUp!1503 lt!2378034 (h!71610 s!2326)) e!3898701)))

(declare-fun b!6426111 () Bool)

(assert (=> b!6426111 (= e!3898700 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426112 () Bool)

(assert (=> b!6426112 (= e!3898701 ((_ map or) call!552717 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 lt!2378034))) (h!71610 s!2326))))))

(declare-fun b!6426113 () Bool)

(assert (=> b!6426113 (= e!3898701 e!3898700)))

(declare-fun c!1174229 () Bool)

(assert (=> b!6426113 (= c!1174229 ((_ is Cons!65163) (exprs!6213 lt!2378034)))))

(assert (= (and d!2014654 res!2641168) b!6426110))

(assert (= (and d!2014654 c!1174230) b!6426112))

(assert (= (and d!2014654 (not c!1174230)) b!6426113))

(assert (= (and b!6426113 c!1174229) b!6426109))

(assert (= (and b!6426113 (not c!1174229)) b!6426111))

(assert (= (or b!6426112 b!6426109) bm!552712))

(declare-fun m!7220140 () Bool)

(assert (=> bm!552712 m!7220140))

(declare-fun m!7220142 () Bool)

(assert (=> b!6426110 m!7220142))

(declare-fun m!7220144 () Bool)

(assert (=> b!6426112 m!7220144))

(assert (=> b!6425809 d!2014654))

(declare-fun b!6426118 () Bool)

(declare-fun e!3898710 () Bool)

(declare-fun e!3898706 () Bool)

(assert (=> b!6426118 (= e!3898710 e!3898706)))

(declare-fun c!1174231 () Bool)

(assert (=> b!6426118 (= c!1174231 ((_ is Star!16329) (reg!16658 (regOne!33170 r!7292))))))

(declare-fun bm!552713 () Bool)

(declare-fun call!552719 () Bool)

(declare-fun call!552718 () Bool)

(assert (=> bm!552713 (= call!552719 call!552718)))

(declare-fun bm!552714 () Bool)

(declare-fun c!1174232 () Bool)

(assert (=> bm!552714 (= call!552718 (validRegex!8065 (ite c!1174231 (reg!16658 (reg!16658 (regOne!33170 r!7292))) (ite c!1174232 (regOne!33171 (reg!16658 (regOne!33170 r!7292))) (regOne!33170 (reg!16658 (regOne!33170 r!7292)))))))))

(declare-fun b!6426119 () Bool)

(declare-fun e!3898705 () Bool)

(declare-fun e!3898711 () Bool)

(assert (=> b!6426119 (= e!3898705 e!3898711)))

(declare-fun res!2641175 () Bool)

(assert (=> b!6426119 (=> (not res!2641175) (not e!3898711))))

(assert (=> b!6426119 (= res!2641175 call!552719)))

(declare-fun b!6426120 () Bool)

(declare-fun res!2641176 () Bool)

(declare-fun e!3898709 () Bool)

(assert (=> b!6426120 (=> (not res!2641176) (not e!3898709))))

(assert (=> b!6426120 (= res!2641176 call!552719)))

(declare-fun e!3898708 () Bool)

(assert (=> b!6426120 (= e!3898708 e!3898709)))

(declare-fun b!6426121 () Bool)

(declare-fun call!552720 () Bool)

(assert (=> b!6426121 (= e!3898711 call!552720)))

(declare-fun d!2014656 () Bool)

(declare-fun res!2641173 () Bool)

(assert (=> d!2014656 (=> res!2641173 e!3898710)))

(assert (=> d!2014656 (= res!2641173 ((_ is ElementMatch!16329) (reg!16658 (regOne!33170 r!7292))))))

(assert (=> d!2014656 (= (validRegex!8065 (reg!16658 (regOne!33170 r!7292))) e!3898710)))

(declare-fun b!6426122 () Bool)

(declare-fun e!3898707 () Bool)

(assert (=> b!6426122 (= e!3898706 e!3898707)))

(declare-fun res!2641177 () Bool)

(assert (=> b!6426122 (= res!2641177 (not (nullable!6322 (reg!16658 (reg!16658 (regOne!33170 r!7292))))))))

(assert (=> b!6426122 (=> (not res!2641177) (not e!3898707))))

(declare-fun b!6426123 () Bool)

(assert (=> b!6426123 (= e!3898709 call!552720)))

(declare-fun b!6426124 () Bool)

(assert (=> b!6426124 (= e!3898706 e!3898708)))

(assert (=> b!6426124 (= c!1174232 ((_ is Union!16329) (reg!16658 (regOne!33170 r!7292))))))

(declare-fun b!6426125 () Bool)

(declare-fun res!2641174 () Bool)

(assert (=> b!6426125 (=> res!2641174 e!3898705)))

(assert (=> b!6426125 (= res!2641174 (not ((_ is Concat!25174) (reg!16658 (regOne!33170 r!7292)))))))

(assert (=> b!6426125 (= e!3898708 e!3898705)))

(declare-fun bm!552715 () Bool)

(assert (=> bm!552715 (= call!552720 (validRegex!8065 (ite c!1174232 (regTwo!33171 (reg!16658 (regOne!33170 r!7292))) (regTwo!33170 (reg!16658 (regOne!33170 r!7292))))))))

(declare-fun b!6426126 () Bool)

(assert (=> b!6426126 (= e!3898707 call!552718)))

(assert (= (and d!2014656 (not res!2641173)) b!6426118))

(assert (= (and b!6426118 c!1174231) b!6426122))

(assert (= (and b!6426118 (not c!1174231)) b!6426124))

(assert (= (and b!6426122 res!2641177) b!6426126))

(assert (= (and b!6426124 c!1174232) b!6426120))

(assert (= (and b!6426124 (not c!1174232)) b!6426125))

(assert (= (and b!6426120 res!2641176) b!6426123))

(assert (= (and b!6426125 (not res!2641174)) b!6426119))

(assert (= (and b!6426119 res!2641175) b!6426121))

(assert (= (or b!6426123 b!6426121) bm!552715))

(assert (= (or b!6426120 b!6426119) bm!552713))

(assert (= (or b!6426126 bm!552713) bm!552714))

(declare-fun m!7220146 () Bool)

(assert (=> bm!552714 m!7220146))

(declare-fun m!7220148 () Bool)

(assert (=> b!6426122 m!7220148))

(declare-fun m!7220150 () Bool)

(assert (=> bm!552715 m!7220150))

(assert (=> b!6425790 d!2014656))

(declare-fun bs!1616286 () Bool)

(declare-fun b!6426171 () Bool)

(assert (= bs!1616286 (and b!6426171 b!6425790)))

(declare-fun lambda!355232 () Int)

(assert (=> bs!1616286 (not (= lambda!355232 lambda!355214))))

(declare-fun bs!1616287 () Bool)

(assert (= bs!1616287 (and b!6426171 b!6425801)))

(assert (=> bs!1616287 (not (= lambda!355232 lambda!355209))))

(assert (=> bs!1616287 (not (= lambda!355232 lambda!355210))))

(assert (=> bs!1616286 (= (= (reg!16658 lt!2378030) (reg!16658 (regOne!33170 r!7292))) (= lambda!355232 lambda!355215))))

(declare-fun bs!1616288 () Bool)

(assert (= bs!1616288 (and b!6426171 b!6425788)))

(assert (=> bs!1616288 (not (= lambda!355232 lambda!355213))))

(assert (=> bs!1616288 (not (= lambda!355232 lambda!355212))))

(assert (=> b!6426171 true))

(assert (=> b!6426171 true))

(declare-fun bs!1616289 () Bool)

(declare-fun b!6426166 () Bool)

(assert (= bs!1616289 (and b!6426166 b!6425790)))

(declare-fun lambda!355233 () Int)

(assert (=> bs!1616289 (not (= lambda!355233 lambda!355214))))

(declare-fun bs!1616290 () Bool)

(assert (= bs!1616290 (and b!6426166 b!6425801)))

(assert (=> bs!1616290 (not (= lambda!355233 lambda!355209))))

(declare-fun bs!1616291 () Bool)

(assert (= bs!1616291 (and b!6426166 b!6426171)))

(assert (=> bs!1616291 (not (= lambda!355233 lambda!355232))))

(assert (=> bs!1616290 (= (and (= (_1!36611 lt!2378024) s!2326) (= (regOne!33170 lt!2378030) (regOne!33170 r!7292)) (= (regTwo!33170 lt!2378030) (regTwo!33170 r!7292))) (= lambda!355233 lambda!355210))))

(assert (=> bs!1616289 (not (= lambda!355233 lambda!355215))))

(declare-fun bs!1616292 () Bool)

(assert (= bs!1616292 (and b!6426166 b!6425788)))

(assert (=> bs!1616292 (= (and (= (_1!36611 lt!2378024) s!2326) (= (regOne!33170 lt!2378030) lt!2378030) (= (regTwo!33170 lt!2378030) (regTwo!33170 r!7292))) (= lambda!355233 lambda!355213))))

(assert (=> bs!1616292 (not (= lambda!355233 lambda!355212))))

(assert (=> b!6426166 true))

(assert (=> b!6426166 true))

(declare-fun e!3898736 () Bool)

(declare-fun call!552726 () Bool)

(assert (=> b!6426166 (= e!3898736 call!552726)))

(declare-fun b!6426167 () Bool)

(declare-fun e!3898740 () Bool)

(declare-fun e!3898738 () Bool)

(assert (=> b!6426167 (= e!3898740 e!3898738)))

(declare-fun res!2641201 () Bool)

(assert (=> b!6426167 (= res!2641201 (not ((_ is EmptyLang!16329) lt!2378030)))))

(assert (=> b!6426167 (=> (not res!2641201) (not e!3898738))))

(declare-fun b!6426168 () Bool)

(declare-fun e!3898739 () Bool)

(assert (=> b!6426168 (= e!3898739 (matchRSpec!3430 (regTwo!33171 lt!2378030) (_1!36611 lt!2378024)))))

(declare-fun b!6426169 () Bool)

(declare-fun e!3898741 () Bool)

(assert (=> b!6426169 (= e!3898741 e!3898736)))

(declare-fun c!1174242 () Bool)

(assert (=> b!6426169 (= c!1174242 ((_ is Star!16329) lt!2378030))))

(declare-fun bm!552720 () Bool)

(declare-fun call!552725 () Bool)

(assert (=> bm!552720 (= call!552725 (isEmpty!37324 (_1!36611 lt!2378024)))))

(declare-fun b!6426170 () Bool)

(declare-fun res!2641203 () Bool)

(declare-fun e!3898735 () Bool)

(assert (=> b!6426170 (=> res!2641203 e!3898735)))

(assert (=> b!6426170 (= res!2641203 call!552725)))

(assert (=> b!6426170 (= e!3898736 e!3898735)))

(assert (=> b!6426171 (= e!3898735 call!552726)))

(declare-fun b!6426172 () Bool)

(declare-fun c!1174241 () Bool)

(assert (=> b!6426172 (= c!1174241 ((_ is ElementMatch!16329) lt!2378030))))

(declare-fun e!3898737 () Bool)

(assert (=> b!6426172 (= e!3898738 e!3898737)))

(declare-fun d!2014658 () Bool)

(declare-fun c!1174244 () Bool)

(assert (=> d!2014658 (= c!1174244 ((_ is EmptyExpr!16329) lt!2378030))))

(assert (=> d!2014658 (= (matchRSpec!3430 lt!2378030 (_1!36611 lt!2378024)) e!3898740)))

(declare-fun b!6426173 () Bool)

(assert (=> b!6426173 (= e!3898741 e!3898739)))

(declare-fun res!2641202 () Bool)

(assert (=> b!6426173 (= res!2641202 (matchRSpec!3430 (regOne!33171 lt!2378030) (_1!36611 lt!2378024)))))

(assert (=> b!6426173 (=> res!2641202 e!3898739)))

(declare-fun bm!552721 () Bool)

(assert (=> bm!552721 (= call!552726 (Exists!3399 (ite c!1174242 lambda!355232 lambda!355233)))))

(declare-fun b!6426174 () Bool)

(assert (=> b!6426174 (= e!3898740 call!552725)))

(declare-fun b!6426175 () Bool)

(declare-fun c!1174243 () Bool)

(assert (=> b!6426175 (= c!1174243 ((_ is Union!16329) lt!2378030))))

(assert (=> b!6426175 (= e!3898737 e!3898741)))

(declare-fun b!6426176 () Bool)

(assert (=> b!6426176 (= e!3898737 (= (_1!36611 lt!2378024) (Cons!65162 (c!1174148 lt!2378030) Nil!65162)))))

(assert (= (and d!2014658 c!1174244) b!6426174))

(assert (= (and d!2014658 (not c!1174244)) b!6426167))

(assert (= (and b!6426167 res!2641201) b!6426172))

(assert (= (and b!6426172 c!1174241) b!6426176))

(assert (= (and b!6426172 (not c!1174241)) b!6426175))

(assert (= (and b!6426175 c!1174243) b!6426173))

(assert (= (and b!6426175 (not c!1174243)) b!6426169))

(assert (= (and b!6426173 (not res!2641202)) b!6426168))

(assert (= (and b!6426169 c!1174242) b!6426170))

(assert (= (and b!6426169 (not c!1174242)) b!6426166))

(assert (= (and b!6426170 (not res!2641203)) b!6426171))

(assert (= (or b!6426171 b!6426166) bm!552721))

(assert (= (or b!6426174 b!6426170) bm!552720))

(declare-fun m!7220186 () Bool)

(assert (=> b!6426168 m!7220186))

(assert (=> bm!552720 m!7219968))

(declare-fun m!7220188 () Bool)

(assert (=> b!6426173 m!7220188))

(declare-fun m!7220190 () Bool)

(assert (=> bm!552721 m!7220190))

(assert (=> b!6425790 d!2014658))

(declare-fun d!2014674 () Bool)

(declare-fun isEmpty!37328 (Option!16220) Bool)

(assert (=> d!2014674 (= (isDefined!12923 (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 Nil!65162 (_1!36611 lt!2378024) (_1!36611 lt!2378024))) (not (isEmpty!37328 (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 Nil!65162 (_1!36611 lt!2378024) (_1!36611 lt!2378024)))))))

(declare-fun bs!1616293 () Bool)

(assert (= bs!1616293 d!2014674))

(assert (=> bs!1616293 m!7219836))

(declare-fun m!7220192 () Bool)

(assert (=> bs!1616293 m!7220192))

(assert (=> b!6425790 d!2014674))

(declare-fun d!2014676 () Bool)

(assert (=> d!2014676 (= (matchR!8512 lt!2378030 (_1!36611 lt!2378024)) (matchRSpec!3430 lt!2378030 (_1!36611 lt!2378024)))))

(declare-fun lt!2378103 () Unit!158647)

(declare-fun choose!47757 (Regex!16329 List!65286) Unit!158647)

(assert (=> d!2014676 (= lt!2378103 (choose!47757 lt!2378030 (_1!36611 lt!2378024)))))

(assert (=> d!2014676 (validRegex!8065 lt!2378030)))

(assert (=> d!2014676 (= (mainMatchTheorem!3430 lt!2378030 (_1!36611 lt!2378024)) lt!2378103)))

(declare-fun bs!1616294 () Bool)

(assert (= bs!1616294 d!2014676))

(assert (=> bs!1616294 m!7219888))

(assert (=> bs!1616294 m!7219838))

(declare-fun m!7220194 () Bool)

(assert (=> bs!1616294 m!7220194))

(assert (=> bs!1616294 m!7219926))

(assert (=> b!6425790 d!2014676))

(declare-fun bs!1616298 () Bool)

(declare-fun d!2014678 () Bool)

(assert (= bs!1616298 (and d!2014678 b!6425790)))

(declare-fun lambda!355242 () Int)

(assert (=> bs!1616298 (= lambda!355242 lambda!355214)))

(declare-fun bs!1616299 () Bool)

(assert (= bs!1616299 (and d!2014678 b!6426166)))

(assert (=> bs!1616299 (not (= lambda!355242 lambda!355233))))

(declare-fun bs!1616300 () Bool)

(assert (= bs!1616300 (and d!2014678 b!6425801)))

(assert (=> bs!1616300 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) (regOne!33170 r!7292)) (= lt!2378030 (regTwo!33170 r!7292))) (= lambda!355242 lambda!355209))))

(declare-fun bs!1616301 () Bool)

(assert (= bs!1616301 (and d!2014678 b!6426171)))

(assert (=> bs!1616301 (not (= lambda!355242 lambda!355232))))

(assert (=> bs!1616300 (not (= lambda!355242 lambda!355210))))

(assert (=> bs!1616298 (not (= lambda!355242 lambda!355215))))

(declare-fun bs!1616302 () Bool)

(assert (= bs!1616302 (and d!2014678 b!6425788)))

(assert (=> bs!1616302 (not (= lambda!355242 lambda!355213))))

(assert (=> bs!1616302 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) lt!2378030) (= lt!2378030 (regTwo!33170 r!7292))) (= lambda!355242 lambda!355212))))

(assert (=> d!2014678 true))

(assert (=> d!2014678 true))

(assert (=> d!2014678 true))

(assert (=> d!2014678 (= (isDefined!12923 (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 Nil!65162 (_1!36611 lt!2378024) (_1!36611 lt!2378024))) (Exists!3399 lambda!355242))))

(declare-fun lt!2378110 () Unit!158647)

(declare-fun choose!47758 (Regex!16329 Regex!16329 List!65286) Unit!158647)

(assert (=> d!2014678 (= lt!2378110 (choose!47758 (reg!16658 (regOne!33170 r!7292)) lt!2378030 (_1!36611 lt!2378024)))))

(assert (=> d!2014678 (validRegex!8065 (reg!16658 (regOne!33170 r!7292)))))

(assert (=> d!2014678 (= (lemmaFindConcatSeparationEquivalentToExists!2398 (reg!16658 (regOne!33170 r!7292)) lt!2378030 (_1!36611 lt!2378024)) lt!2378110)))

(declare-fun bs!1616303 () Bool)

(assert (= bs!1616303 d!2014678))

(assert (=> bs!1616303 m!7219834))

(assert (=> bs!1616303 m!7219836))

(assert (=> bs!1616303 m!7219848))

(declare-fun m!7220220 () Bool)

(assert (=> bs!1616303 m!7220220))

(declare-fun m!7220222 () Bool)

(assert (=> bs!1616303 m!7220222))

(assert (=> bs!1616303 m!7219836))

(assert (=> b!6425790 d!2014678))

(declare-fun d!2014684 () Bool)

(declare-fun choose!47759 (Int) Bool)

(assert (=> d!2014684 (= (Exists!3399 lambda!355214) (choose!47759 lambda!355214))))

(declare-fun bs!1616304 () Bool)

(assert (= bs!1616304 d!2014684))

(declare-fun m!7220224 () Bool)

(assert (=> bs!1616304 m!7220224))

(assert (=> b!6425790 d!2014684))

(declare-fun b!6426286 () Bool)

(declare-fun e!3898804 () Bool)

(declare-fun lt!2378117 () Option!16220)

(assert (=> b!6426286 (= e!3898804 (= (++!14397 (_1!36611 (get!22577 lt!2378117)) (_2!36611 (get!22577 lt!2378117))) (_1!36611 lt!2378024)))))

(declare-fun b!6426287 () Bool)

(declare-fun res!2641244 () Bool)

(assert (=> b!6426287 (=> (not res!2641244) (not e!3898804))))

(assert (=> b!6426287 (= res!2641244 (matchR!8512 (reg!16658 (regOne!33170 r!7292)) (_1!36611 (get!22577 lt!2378117))))))

(declare-fun b!6426288 () Bool)

(declare-fun e!3898805 () Option!16220)

(declare-fun e!3898808 () Option!16220)

(assert (=> b!6426288 (= e!3898805 e!3898808)))

(declare-fun c!1174280 () Bool)

(assert (=> b!6426288 (= c!1174280 ((_ is Nil!65162) (_1!36611 lt!2378024)))))

(declare-fun b!6426289 () Bool)

(assert (=> b!6426289 (= e!3898805 (Some!16219 (tuple2!66617 Nil!65162 (_1!36611 lt!2378024))))))

(declare-fun d!2014686 () Bool)

(declare-fun e!3898807 () Bool)

(assert (=> d!2014686 e!3898807))

(declare-fun res!2641243 () Bool)

(assert (=> d!2014686 (=> res!2641243 e!3898807)))

(assert (=> d!2014686 (= res!2641243 e!3898804)))

(declare-fun res!2641247 () Bool)

(assert (=> d!2014686 (=> (not res!2641247) (not e!3898804))))

(assert (=> d!2014686 (= res!2641247 (isDefined!12923 lt!2378117))))

(assert (=> d!2014686 (= lt!2378117 e!3898805)))

(declare-fun c!1174281 () Bool)

(declare-fun e!3898806 () Bool)

(assert (=> d!2014686 (= c!1174281 e!3898806)))

(declare-fun res!2641245 () Bool)

(assert (=> d!2014686 (=> (not res!2641245) (not e!3898806))))

(assert (=> d!2014686 (= res!2641245 (matchR!8512 (reg!16658 (regOne!33170 r!7292)) Nil!65162))))

(assert (=> d!2014686 (validRegex!8065 (reg!16658 (regOne!33170 r!7292)))))

(assert (=> d!2014686 (= (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 Nil!65162 (_1!36611 lt!2378024) (_1!36611 lt!2378024)) lt!2378117)))

(declare-fun b!6426290 () Bool)

(assert (=> b!6426290 (= e!3898806 (matchR!8512 lt!2378030 (_1!36611 lt!2378024)))))

(declare-fun b!6426291 () Bool)

(declare-fun lt!2378119 () Unit!158647)

(declare-fun lt!2378118 () Unit!158647)

(assert (=> b!6426291 (= lt!2378119 lt!2378118)))

(assert (=> b!6426291 (= (++!14397 (++!14397 Nil!65162 (Cons!65162 (h!71610 (_1!36611 lt!2378024)) Nil!65162)) (t!378902 (_1!36611 lt!2378024))) (_1!36611 lt!2378024))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2492 (List!65286 C!32928 List!65286 List!65286) Unit!158647)

(assert (=> b!6426291 (= lt!2378118 (lemmaMoveElementToOtherListKeepsConcatEq!2492 Nil!65162 (h!71610 (_1!36611 lt!2378024)) (t!378902 (_1!36611 lt!2378024)) (_1!36611 lt!2378024)))))

(assert (=> b!6426291 (= e!3898808 (findConcatSeparation!2634 (reg!16658 (regOne!33170 r!7292)) lt!2378030 (++!14397 Nil!65162 (Cons!65162 (h!71610 (_1!36611 lt!2378024)) Nil!65162)) (t!378902 (_1!36611 lt!2378024)) (_1!36611 lt!2378024)))))

(declare-fun b!6426292 () Bool)

(assert (=> b!6426292 (= e!3898808 None!16219)))

(declare-fun b!6426293 () Bool)

(declare-fun res!2641246 () Bool)

(assert (=> b!6426293 (=> (not res!2641246) (not e!3898804))))

(assert (=> b!6426293 (= res!2641246 (matchR!8512 lt!2378030 (_2!36611 (get!22577 lt!2378117))))))

(declare-fun b!6426294 () Bool)

(assert (=> b!6426294 (= e!3898807 (not (isDefined!12923 lt!2378117)))))

(assert (= (and d!2014686 res!2641245) b!6426290))

(assert (= (and d!2014686 c!1174281) b!6426289))

(assert (= (and d!2014686 (not c!1174281)) b!6426288))

(assert (= (and b!6426288 c!1174280) b!6426292))

(assert (= (and b!6426288 (not c!1174280)) b!6426291))

(assert (= (and d!2014686 res!2641247) b!6426287))

(assert (= (and b!6426287 res!2641244) b!6426293))

(assert (= (and b!6426293 res!2641246) b!6426286))

(assert (= (and d!2014686 (not res!2641243)) b!6426294))

(assert (=> b!6426290 m!7219888))

(declare-fun m!7220230 () Bool)

(assert (=> b!6426286 m!7220230))

(declare-fun m!7220236 () Bool)

(assert (=> b!6426286 m!7220236))

(declare-fun m!7220238 () Bool)

(assert (=> d!2014686 m!7220238))

(declare-fun m!7220240 () Bool)

(assert (=> d!2014686 m!7220240))

(assert (=> d!2014686 m!7219834))

(declare-fun m!7220242 () Bool)

(assert (=> b!6426291 m!7220242))

(assert (=> b!6426291 m!7220242))

(declare-fun m!7220244 () Bool)

(assert (=> b!6426291 m!7220244))

(declare-fun m!7220246 () Bool)

(assert (=> b!6426291 m!7220246))

(assert (=> b!6426291 m!7220242))

(declare-fun m!7220248 () Bool)

(assert (=> b!6426291 m!7220248))

(assert (=> b!6426294 m!7220238))

(assert (=> b!6426287 m!7220230))

(declare-fun m!7220250 () Bool)

(assert (=> b!6426287 m!7220250))

(assert (=> b!6426293 m!7220230))

(declare-fun m!7220252 () Bool)

(assert (=> b!6426293 m!7220252))

(assert (=> b!6425790 d!2014686))

(declare-fun bs!1616318 () Bool)

(declare-fun d!2014690 () Bool)

(assert (= bs!1616318 (and d!2014690 b!6425790)))

(declare-fun lambda!355253 () Int)

(assert (=> bs!1616318 (= (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) lt!2378030) (= lambda!355253 lambda!355214))))

(declare-fun bs!1616319 () Bool)

(assert (= bs!1616319 (and d!2014690 b!6426166)))

(assert (=> bs!1616319 (not (= lambda!355253 lambda!355233))))

(declare-fun bs!1616320 () Bool)

(assert (= bs!1616320 (and d!2014690 b!6425801)))

(assert (=> bs!1616320 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) (regOne!33170 r!7292)) (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) (regTwo!33170 r!7292))) (= lambda!355253 lambda!355209))))

(declare-fun bs!1616321 () Bool)

(assert (= bs!1616321 (and d!2014690 b!6426171)))

(assert (=> bs!1616321 (not (= lambda!355253 lambda!355232))))

(declare-fun bs!1616322 () Bool)

(assert (= bs!1616322 (and d!2014690 d!2014678)))

(assert (=> bs!1616322 (= (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) lt!2378030) (= lambda!355253 lambda!355242))))

(assert (=> bs!1616320 (not (= lambda!355253 lambda!355210))))

(assert (=> bs!1616318 (not (= lambda!355253 lambda!355215))))

(declare-fun bs!1616323 () Bool)

(assert (= bs!1616323 (and d!2014690 b!6425788)))

(assert (=> bs!1616323 (not (= lambda!355253 lambda!355213))))

(assert (=> bs!1616323 (= (and (= (_1!36611 lt!2378024) s!2326) (= (reg!16658 (regOne!33170 r!7292)) lt!2378030) (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) (regTwo!33170 r!7292))) (= lambda!355253 lambda!355212))))

(assert (=> d!2014690 true))

(assert (=> d!2014690 true))

(declare-fun lambda!355256 () Int)

(assert (=> bs!1616318 (not (= lambda!355256 lambda!355214))))

(assert (=> bs!1616319 (not (= lambda!355256 lambda!355233))))

(declare-fun bs!1616324 () Bool)

(assert (= bs!1616324 d!2014690))

(assert (=> bs!1616324 (not (= lambda!355256 lambda!355253))))

(assert (=> bs!1616320 (not (= lambda!355256 lambda!355209))))

(assert (=> bs!1616321 (= (and (= (reg!16658 (regOne!33170 r!7292)) (reg!16658 lt!2378030)) (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) lt!2378030)) (= lambda!355256 lambda!355232))))

(assert (=> bs!1616322 (not (= lambda!355256 lambda!355242))))

(assert (=> bs!1616320 (not (= lambda!355256 lambda!355210))))

(assert (=> bs!1616318 (= (= (Star!16329 (reg!16658 (regOne!33170 r!7292))) lt!2378030) (= lambda!355256 lambda!355215))))

(assert (=> bs!1616323 (not (= lambda!355256 lambda!355213))))

(assert (=> bs!1616323 (not (= lambda!355256 lambda!355212))))

(assert (=> d!2014690 true))

(assert (=> d!2014690 true))

(assert (=> d!2014690 (= (Exists!3399 lambda!355253) (Exists!3399 lambda!355256))))

(declare-fun lt!2378126 () Unit!158647)

(declare-fun choose!47761 (Regex!16329 List!65286) Unit!158647)

(assert (=> d!2014690 (= lt!2378126 (choose!47761 (reg!16658 (regOne!33170 r!7292)) (_1!36611 lt!2378024)))))

(assert (=> d!2014690 (validRegex!8065 (reg!16658 (regOne!33170 r!7292)))))

(assert (=> d!2014690 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!620 (reg!16658 (regOne!33170 r!7292)) (_1!36611 lt!2378024)) lt!2378126)))

(declare-fun m!7220288 () Bool)

(assert (=> bs!1616324 m!7220288))

(declare-fun m!7220290 () Bool)

(assert (=> bs!1616324 m!7220290))

(declare-fun m!7220292 () Bool)

(assert (=> bs!1616324 m!7220292))

(assert (=> bs!1616324 m!7219834))

(assert (=> b!6425790 d!2014690))

(declare-fun d!2014704 () Bool)

(assert (=> d!2014704 (= (Exists!3399 lambda!355215) (choose!47759 lambda!355215))))

(declare-fun bs!1616325 () Bool)

(assert (= bs!1616325 d!2014704))

(declare-fun m!7220294 () Bool)

(assert (=> bs!1616325 m!7220294))

(assert (=> b!6425790 d!2014704))

(declare-fun b!6426342 () Bool)

(declare-fun e!3898838 () Bool)

(assert (=> b!6426342 (= e!3898838 (= (head!13149 (_2!36611 lt!2378024)) (c!1174148 (regTwo!33170 r!7292))))))

(declare-fun b!6426344 () Bool)

(declare-fun res!2641288 () Bool)

(declare-fun e!3898834 () Bool)

(assert (=> b!6426344 (=> res!2641288 e!3898834)))

(assert (=> b!6426344 (= res!2641288 (not ((_ is ElementMatch!16329) (regTwo!33170 r!7292))))))

(declare-fun e!3898835 () Bool)

(assert (=> b!6426344 (= e!3898835 e!3898834)))

(declare-fun b!6426345 () Bool)

(declare-fun e!3898837 () Bool)

(assert (=> b!6426345 (= e!3898837 e!3898835)))

(declare-fun c!1174291 () Bool)

(assert (=> b!6426345 (= c!1174291 ((_ is EmptyLang!16329) (regTwo!33170 r!7292)))))

(declare-fun bm!552732 () Bool)

(declare-fun call!552737 () Bool)

(assert (=> bm!552732 (= call!552737 (isEmpty!37324 (_2!36611 lt!2378024)))))

(declare-fun b!6426346 () Bool)

(declare-fun res!2641283 () Bool)

(declare-fun e!3898839 () Bool)

(assert (=> b!6426346 (=> res!2641283 e!3898839)))

(assert (=> b!6426346 (= res!2641283 (not (isEmpty!37324 (tail!12234 (_2!36611 lt!2378024)))))))

(declare-fun b!6426347 () Bool)

(declare-fun e!3898833 () Bool)

(assert (=> b!6426347 (= e!3898833 (matchR!8512 (derivativeStep!5033 (regTwo!33170 r!7292) (head!13149 (_2!36611 lt!2378024))) (tail!12234 (_2!36611 lt!2378024))))))

(declare-fun b!6426348 () Bool)

(declare-fun e!3898836 () Bool)

(assert (=> b!6426348 (= e!3898836 e!3898839)))

(declare-fun res!2641286 () Bool)

(assert (=> b!6426348 (=> res!2641286 e!3898839)))

(assert (=> b!6426348 (= res!2641286 call!552737)))

(declare-fun b!6426349 () Bool)

(declare-fun res!2641287 () Bool)

(assert (=> b!6426349 (=> res!2641287 e!3898834)))

(assert (=> b!6426349 (= res!2641287 e!3898838)))

(declare-fun res!2641284 () Bool)

(assert (=> b!6426349 (=> (not res!2641284) (not e!3898838))))

(declare-fun lt!2378129 () Bool)

(assert (=> b!6426349 (= res!2641284 lt!2378129)))

(declare-fun b!6426350 () Bool)

(declare-fun res!2641282 () Bool)

(assert (=> b!6426350 (=> (not res!2641282) (not e!3898838))))

(assert (=> b!6426350 (= res!2641282 (isEmpty!37324 (tail!12234 (_2!36611 lt!2378024))))))

(declare-fun b!6426351 () Bool)

(assert (=> b!6426351 (= e!3898834 e!3898836)))

(declare-fun res!2641281 () Bool)

(assert (=> b!6426351 (=> (not res!2641281) (not e!3898836))))

(assert (=> b!6426351 (= res!2641281 (not lt!2378129))))

(declare-fun b!6426352 () Bool)

(declare-fun res!2641285 () Bool)

(assert (=> b!6426352 (=> (not res!2641285) (not e!3898838))))

(assert (=> b!6426352 (= res!2641285 (not call!552737))))

(declare-fun b!6426353 () Bool)

(assert (=> b!6426353 (= e!3898839 (not (= (head!13149 (_2!36611 lt!2378024)) (c!1174148 (regTwo!33170 r!7292)))))))

(declare-fun d!2014706 () Bool)

(assert (=> d!2014706 e!3898837))

(declare-fun c!1174290 () Bool)

(assert (=> d!2014706 (= c!1174290 ((_ is EmptyExpr!16329) (regTwo!33170 r!7292)))))

(assert (=> d!2014706 (= lt!2378129 e!3898833)))

(declare-fun c!1174289 () Bool)

(assert (=> d!2014706 (= c!1174289 (isEmpty!37324 (_2!36611 lt!2378024)))))

(assert (=> d!2014706 (validRegex!8065 (regTwo!33170 r!7292))))

(assert (=> d!2014706 (= (matchR!8512 (regTwo!33170 r!7292) (_2!36611 lt!2378024)) lt!2378129)))

(declare-fun b!6426343 () Bool)

(assert (=> b!6426343 (= e!3898837 (= lt!2378129 call!552737))))

(declare-fun b!6426354 () Bool)

(assert (=> b!6426354 (= e!3898833 (nullable!6322 (regTwo!33170 r!7292)))))

(declare-fun b!6426355 () Bool)

(assert (=> b!6426355 (= e!3898835 (not lt!2378129))))

(assert (= (and d!2014706 c!1174289) b!6426354))

(assert (= (and d!2014706 (not c!1174289)) b!6426347))

(assert (= (and d!2014706 c!1174290) b!6426343))

(assert (= (and d!2014706 (not c!1174290)) b!6426345))

(assert (= (and b!6426345 c!1174291) b!6426355))

(assert (= (and b!6426345 (not c!1174291)) b!6426344))

(assert (= (and b!6426344 (not res!2641288)) b!6426349))

(assert (= (and b!6426349 res!2641284) b!6426352))

(assert (= (and b!6426352 res!2641285) b!6426350))

(assert (= (and b!6426350 res!2641282) b!6426342))

(assert (= (and b!6426349 (not res!2641287)) b!6426351))

(assert (= (and b!6426351 res!2641281) b!6426348))

(assert (= (and b!6426348 (not res!2641286)) b!6426346))

(assert (= (and b!6426346 (not res!2641283)) b!6426353))

(assert (= (or b!6426343 b!6426348 b!6426352) bm!552732))

(declare-fun m!7220296 () Bool)

(assert (=> b!6426347 m!7220296))

(assert (=> b!6426347 m!7220296))

(declare-fun m!7220298 () Bool)

(assert (=> b!6426347 m!7220298))

(declare-fun m!7220300 () Bool)

(assert (=> b!6426347 m!7220300))

(assert (=> b!6426347 m!7220298))

(assert (=> b!6426347 m!7220300))

(declare-fun m!7220302 () Bool)

(assert (=> b!6426347 m!7220302))

(declare-fun m!7220304 () Bool)

(assert (=> bm!552732 m!7220304))

(assert (=> b!6426342 m!7220296))

(assert (=> b!6426353 m!7220296))

(assert (=> b!6426346 m!7220300))

(assert (=> b!6426346 m!7220300))

(declare-fun m!7220306 () Bool)

(assert (=> b!6426346 m!7220306))

(assert (=> d!2014706 m!7220304))

(declare-fun m!7220308 () Bool)

(assert (=> d!2014706 m!7220308))

(declare-fun m!7220310 () Bool)

(assert (=> b!6426354 m!7220310))

(assert (=> b!6426350 m!7220300))

(assert (=> b!6426350 m!7220300))

(assert (=> b!6426350 m!7220306))

(assert (=> b!6425791 d!2014706))

(declare-fun d!2014708 () Bool)

(declare-fun lambda!355262 () Int)

(declare-fun forall!15519 (List!65287 Int) Bool)

(assert (=> d!2014708 (= (inv!84069 (h!71612 zl!343)) (forall!15519 (exprs!6213 (h!71612 zl!343)) lambda!355262))))

(declare-fun bs!1616330 () Bool)

(assert (= bs!1616330 d!2014708))

(declare-fun m!7220312 () Bool)

(assert (=> bs!1616330 m!7220312))

(assert (=> b!6425810 d!2014708))

(declare-fun bs!1616353 () Bool)

(declare-fun d!2014710 () Bool)

(assert (= bs!1616353 (and d!2014710 d!2014708)))

(declare-fun lambda!355268 () Int)

(assert (=> bs!1616353 (= lambda!355268 lambda!355262)))

(declare-fun b!6426387 () Bool)

(declare-fun e!3898859 () Regex!16329)

(assert (=> b!6426387 (= e!3898859 (Union!16329 (h!71611 (unfocusZipperList!1750 zl!343)) (generalisedUnion!2173 (t!378903 (unfocusZipperList!1750 zl!343)))))))

(declare-fun b!6426389 () Bool)

(declare-fun e!3898860 () Regex!16329)

(assert (=> b!6426389 (= e!3898860 (h!71611 (unfocusZipperList!1750 zl!343)))))

(declare-fun b!6426390 () Bool)

(declare-fun e!3898863 () Bool)

(declare-fun lt!2378134 () Regex!16329)

(declare-fun isUnion!1167 (Regex!16329) Bool)

(assert (=> b!6426390 (= e!3898863 (isUnion!1167 lt!2378134))))

(declare-fun b!6426391 () Bool)

(assert (=> b!6426391 (= e!3898860 e!3898859)))

(declare-fun c!1174304 () Bool)

(assert (=> b!6426391 (= c!1174304 ((_ is Cons!65163) (unfocusZipperList!1750 zl!343)))))

(declare-fun b!6426392 () Bool)

(assert (=> b!6426392 (= e!3898859 EmptyLang!16329)))

(declare-fun b!6426393 () Bool)

(declare-fun e!3898864 () Bool)

(assert (=> b!6426393 (= e!3898864 (isEmpty!37325 (t!378903 (unfocusZipperList!1750 zl!343))))))

(declare-fun b!6426394 () Bool)

(declare-fun e!3898861 () Bool)

(declare-fun isEmptyLang!1737 (Regex!16329) Bool)

(assert (=> b!6426394 (= e!3898861 (isEmptyLang!1737 lt!2378134))))

(declare-fun e!3898862 () Bool)

(assert (=> d!2014710 e!3898862))

(declare-fun res!2641296 () Bool)

(assert (=> d!2014710 (=> (not res!2641296) (not e!3898862))))

(assert (=> d!2014710 (= res!2641296 (validRegex!8065 lt!2378134))))

(assert (=> d!2014710 (= lt!2378134 e!3898860)))

(declare-fun c!1174307 () Bool)

(assert (=> d!2014710 (= c!1174307 e!3898864)))

(declare-fun res!2641297 () Bool)

(assert (=> d!2014710 (=> (not res!2641297) (not e!3898864))))

(assert (=> d!2014710 (= res!2641297 ((_ is Cons!65163) (unfocusZipperList!1750 zl!343)))))

(assert (=> d!2014710 (forall!15519 (unfocusZipperList!1750 zl!343) lambda!355268)))

(assert (=> d!2014710 (= (generalisedUnion!2173 (unfocusZipperList!1750 zl!343)) lt!2378134)))

(declare-fun b!6426388 () Bool)

(assert (=> b!6426388 (= e!3898862 e!3898861)))

(declare-fun c!1174306 () Bool)

(assert (=> b!6426388 (= c!1174306 (isEmpty!37325 (unfocusZipperList!1750 zl!343)))))

(declare-fun b!6426395 () Bool)

(assert (=> b!6426395 (= e!3898861 e!3898863)))

(declare-fun c!1174305 () Bool)

(declare-fun tail!12235 (List!65287) List!65287)

(assert (=> b!6426395 (= c!1174305 (isEmpty!37325 (tail!12235 (unfocusZipperList!1750 zl!343))))))

(declare-fun b!6426396 () Bool)

(declare-fun head!13150 (List!65287) Regex!16329)

(assert (=> b!6426396 (= e!3898863 (= lt!2378134 (head!13150 (unfocusZipperList!1750 zl!343))))))

(assert (= (and d!2014710 res!2641297) b!6426393))

(assert (= (and d!2014710 c!1174307) b!6426389))

(assert (= (and d!2014710 (not c!1174307)) b!6426391))

(assert (= (and b!6426391 c!1174304) b!6426387))

(assert (= (and b!6426391 (not c!1174304)) b!6426392))

(assert (= (and d!2014710 res!2641296) b!6426388))

(assert (= (and b!6426388 c!1174306) b!6426394))

(assert (= (and b!6426388 (not c!1174306)) b!6426395))

(assert (= (and b!6426395 c!1174305) b!6426396))

(assert (= (and b!6426395 (not c!1174305)) b!6426390))

(declare-fun m!7220324 () Bool)

(assert (=> b!6426390 m!7220324))

(assert (=> b!6426395 m!7219862))

(declare-fun m!7220326 () Bool)

(assert (=> b!6426395 m!7220326))

(assert (=> b!6426395 m!7220326))

(declare-fun m!7220328 () Bool)

(assert (=> b!6426395 m!7220328))

(assert (=> b!6426396 m!7219862))

(declare-fun m!7220330 () Bool)

(assert (=> b!6426396 m!7220330))

(declare-fun m!7220332 () Bool)

(assert (=> d!2014710 m!7220332))

(assert (=> d!2014710 m!7219862))

(declare-fun m!7220334 () Bool)

(assert (=> d!2014710 m!7220334))

(declare-fun m!7220336 () Bool)

(assert (=> b!6426387 m!7220336))

(assert (=> b!6426388 m!7219862))

(declare-fun m!7220338 () Bool)

(assert (=> b!6426388 m!7220338))

(declare-fun m!7220340 () Bool)

(assert (=> b!6426393 m!7220340))

(declare-fun m!7220342 () Bool)

(assert (=> b!6426394 m!7220342))

(assert (=> b!6425827 d!2014710))

(declare-fun bs!1616366 () Bool)

(declare-fun d!2014716 () Bool)

(assert (= bs!1616366 (and d!2014716 d!2014708)))

(declare-fun lambda!355272 () Int)

(assert (=> bs!1616366 (= lambda!355272 lambda!355262)))

(declare-fun bs!1616367 () Bool)

(assert (= bs!1616367 (and d!2014716 d!2014710)))

(assert (=> bs!1616367 (= lambda!355272 lambda!355268)))

(declare-fun lt!2378141 () List!65287)

(assert (=> d!2014716 (forall!15519 lt!2378141 lambda!355272)))

(declare-fun e!3898872 () List!65287)

(assert (=> d!2014716 (= lt!2378141 e!3898872)))

(declare-fun c!1174312 () Bool)

(assert (=> d!2014716 (= c!1174312 ((_ is Cons!65164) zl!343))))

(assert (=> d!2014716 (= (unfocusZipperList!1750 zl!343) lt!2378141)))

(declare-fun b!6426410 () Bool)

(assert (=> b!6426410 (= e!3898872 (Cons!65163 (generalisedConcat!1926 (exprs!6213 (h!71612 zl!343))) (unfocusZipperList!1750 (t!378904 zl!343))))))

(declare-fun b!6426411 () Bool)

(assert (=> b!6426411 (= e!3898872 Nil!65163)))

(assert (= (and d!2014716 c!1174312) b!6426410))

(assert (= (and d!2014716 (not c!1174312)) b!6426411))

(declare-fun m!7220376 () Bool)

(assert (=> d!2014716 m!7220376))

(assert (=> b!6426410 m!7219824))

(declare-fun m!7220378 () Bool)

(assert (=> b!6426410 m!7220378))

(assert (=> b!6425827 d!2014716))

(declare-fun bs!1616369 () Bool)

(declare-fun b!6426417 () Bool)

(assert (= bs!1616369 (and b!6426417 b!6425790)))

(declare-fun lambda!355273 () Int)

(assert (=> bs!1616369 (not (= lambda!355273 lambda!355214))))

(declare-fun bs!1616370 () Bool)

(assert (= bs!1616370 (and b!6426417 b!6426166)))

(assert (=> bs!1616370 (not (= lambda!355273 lambda!355233))))

(declare-fun bs!1616371 () Bool)

(assert (= bs!1616371 (and b!6426417 d!2014690)))

(assert (=> bs!1616371 (not (= lambda!355273 lambda!355253))))

(declare-fun bs!1616372 () Bool)

(assert (= bs!1616372 (and b!6426417 b!6425801)))

(assert (=> bs!1616372 (not (= lambda!355273 lambda!355209))))

(declare-fun bs!1616373 () Bool)

(assert (= bs!1616373 (and b!6426417 b!6426171)))

(assert (=> bs!1616373 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 r!7292) (reg!16658 lt!2378030)) (= r!7292 lt!2378030)) (= lambda!355273 lambda!355232))))

(assert (=> bs!1616371 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 r!7292) (reg!16658 (regOne!33170 r!7292))) (= r!7292 (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355273 lambda!355256))))

(declare-fun bs!1616374 () Bool)

(assert (= bs!1616374 (and b!6426417 d!2014678)))

(assert (=> bs!1616374 (not (= lambda!355273 lambda!355242))))

(assert (=> bs!1616372 (not (= lambda!355273 lambda!355210))))

(assert (=> bs!1616369 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 r!7292) (reg!16658 (regOne!33170 r!7292))) (= r!7292 lt!2378030)) (= lambda!355273 lambda!355215))))

(declare-fun bs!1616375 () Bool)

(assert (= bs!1616375 (and b!6426417 b!6425788)))

(assert (=> bs!1616375 (not (= lambda!355273 lambda!355213))))

(assert (=> bs!1616375 (not (= lambda!355273 lambda!355212))))

(assert (=> b!6426417 true))

(assert (=> b!6426417 true))

(declare-fun bs!1616376 () Bool)

(declare-fun b!6426412 () Bool)

(assert (= bs!1616376 (and b!6426412 b!6425790)))

(declare-fun lambda!355274 () Int)

(assert (=> bs!1616376 (not (= lambda!355274 lambda!355214))))

(declare-fun bs!1616377 () Bool)

(assert (= bs!1616377 (and b!6426412 b!6426166)))

(assert (=> bs!1616377 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (regOne!33170 lt!2378030)) (= (regTwo!33170 r!7292) (regTwo!33170 lt!2378030))) (= lambda!355274 lambda!355233))))

(declare-fun bs!1616378 () Bool)

(assert (= bs!1616378 (and b!6426412 d!2014690)))

(assert (=> bs!1616378 (not (= lambda!355274 lambda!355253))))

(declare-fun bs!1616379 () Bool)

(assert (= bs!1616379 (and b!6426412 b!6425801)))

(assert (=> bs!1616379 (not (= lambda!355274 lambda!355209))))

(declare-fun bs!1616380 () Bool)

(assert (= bs!1616380 (and b!6426412 b!6426171)))

(assert (=> bs!1616380 (not (= lambda!355274 lambda!355232))))

(assert (=> bs!1616378 (not (= lambda!355274 lambda!355256))))

(declare-fun bs!1616381 () Bool)

(assert (= bs!1616381 (and b!6426412 d!2014678)))

(assert (=> bs!1616381 (not (= lambda!355274 lambda!355242))))

(assert (=> bs!1616379 (= lambda!355274 lambda!355210)))

(assert (=> bs!1616376 (not (= lambda!355274 lambda!355215))))

(declare-fun bs!1616382 () Bool)

(assert (= bs!1616382 (and b!6426412 b!6426417)))

(assert (=> bs!1616382 (not (= lambda!355274 lambda!355273))))

(declare-fun bs!1616383 () Bool)

(assert (= bs!1616383 (and b!6426412 b!6425788)))

(assert (=> bs!1616383 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355274 lambda!355213))))

(assert (=> bs!1616383 (not (= lambda!355274 lambda!355212))))

(assert (=> b!6426412 true))

(assert (=> b!6426412 true))

(declare-fun e!3898874 () Bool)

(declare-fun call!552741 () Bool)

(assert (=> b!6426412 (= e!3898874 call!552741)))

(declare-fun b!6426413 () Bool)

(declare-fun e!3898878 () Bool)

(declare-fun e!3898876 () Bool)

(assert (=> b!6426413 (= e!3898878 e!3898876)))

(declare-fun res!2641303 () Bool)

(assert (=> b!6426413 (= res!2641303 (not ((_ is EmptyLang!16329) r!7292)))))

(assert (=> b!6426413 (=> (not res!2641303) (not e!3898876))))

(declare-fun b!6426414 () Bool)

(declare-fun e!3898877 () Bool)

(assert (=> b!6426414 (= e!3898877 (matchRSpec!3430 (regTwo!33171 r!7292) s!2326))))

(declare-fun b!6426415 () Bool)

(declare-fun e!3898879 () Bool)

(assert (=> b!6426415 (= e!3898879 e!3898874)))

(declare-fun c!1174314 () Bool)

(assert (=> b!6426415 (= c!1174314 ((_ is Star!16329) r!7292))))

(declare-fun bm!552735 () Bool)

(declare-fun call!552740 () Bool)

(assert (=> bm!552735 (= call!552740 (isEmpty!37324 s!2326))))

(declare-fun b!6426416 () Bool)

(declare-fun res!2641305 () Bool)

(declare-fun e!3898873 () Bool)

(assert (=> b!6426416 (=> res!2641305 e!3898873)))

(assert (=> b!6426416 (= res!2641305 call!552740)))

(assert (=> b!6426416 (= e!3898874 e!3898873)))

(assert (=> b!6426417 (= e!3898873 call!552741)))

(declare-fun b!6426418 () Bool)

(declare-fun c!1174313 () Bool)

(assert (=> b!6426418 (= c!1174313 ((_ is ElementMatch!16329) r!7292))))

(declare-fun e!3898875 () Bool)

(assert (=> b!6426418 (= e!3898876 e!3898875)))

(declare-fun d!2014728 () Bool)

(declare-fun c!1174316 () Bool)

(assert (=> d!2014728 (= c!1174316 ((_ is EmptyExpr!16329) r!7292))))

(assert (=> d!2014728 (= (matchRSpec!3430 r!7292 s!2326) e!3898878)))

(declare-fun b!6426419 () Bool)

(assert (=> b!6426419 (= e!3898879 e!3898877)))

(declare-fun res!2641304 () Bool)

(assert (=> b!6426419 (= res!2641304 (matchRSpec!3430 (regOne!33171 r!7292) s!2326))))

(assert (=> b!6426419 (=> res!2641304 e!3898877)))

(declare-fun bm!552736 () Bool)

(assert (=> bm!552736 (= call!552741 (Exists!3399 (ite c!1174314 lambda!355273 lambda!355274)))))

(declare-fun b!6426420 () Bool)

(assert (=> b!6426420 (= e!3898878 call!552740)))

(declare-fun b!6426421 () Bool)

(declare-fun c!1174315 () Bool)

(assert (=> b!6426421 (= c!1174315 ((_ is Union!16329) r!7292))))

(assert (=> b!6426421 (= e!3898875 e!3898879)))

(declare-fun b!6426422 () Bool)

(assert (=> b!6426422 (= e!3898875 (= s!2326 (Cons!65162 (c!1174148 r!7292) Nil!65162)))))

(assert (= (and d!2014728 c!1174316) b!6426420))

(assert (= (and d!2014728 (not c!1174316)) b!6426413))

(assert (= (and b!6426413 res!2641303) b!6426418))

(assert (= (and b!6426418 c!1174313) b!6426422))

(assert (= (and b!6426418 (not c!1174313)) b!6426421))

(assert (= (and b!6426421 c!1174315) b!6426419))

(assert (= (and b!6426421 (not c!1174315)) b!6426415))

(assert (= (and b!6426419 (not res!2641304)) b!6426414))

(assert (= (and b!6426415 c!1174314) b!6426416))

(assert (= (and b!6426415 (not c!1174314)) b!6426412))

(assert (= (and b!6426416 (not res!2641305)) b!6426417))

(assert (= (or b!6426417 b!6426412) bm!552736))

(assert (= (or b!6426420 b!6426416) bm!552735))

(declare-fun m!7220386 () Bool)

(assert (=> b!6426414 m!7220386))

(declare-fun m!7220388 () Bool)

(assert (=> bm!552735 m!7220388))

(declare-fun m!7220390 () Bool)

(assert (=> b!6426419 m!7220390))

(declare-fun m!7220392 () Bool)

(assert (=> bm!552736 m!7220392))

(assert (=> b!6425806 d!2014728))

(declare-fun b!6426438 () Bool)

(declare-fun e!3898894 () Bool)

(assert (=> b!6426438 (= e!3898894 (= (head!13149 s!2326) (c!1174148 r!7292)))))

(declare-fun b!6426440 () Bool)

(declare-fun res!2641316 () Bool)

(declare-fun e!3898890 () Bool)

(assert (=> b!6426440 (=> res!2641316 e!3898890)))

(assert (=> b!6426440 (= res!2641316 (not ((_ is ElementMatch!16329) r!7292)))))

(declare-fun e!3898891 () Bool)

(assert (=> b!6426440 (= e!3898891 e!3898890)))

(declare-fun b!6426441 () Bool)

(declare-fun e!3898893 () Bool)

(assert (=> b!6426441 (= e!3898893 e!3898891)))

(declare-fun c!1174325 () Bool)

(assert (=> b!6426441 (= c!1174325 ((_ is EmptyLang!16329) r!7292))))

(declare-fun bm!552740 () Bool)

(declare-fun call!552745 () Bool)

(assert (=> bm!552740 (= call!552745 (isEmpty!37324 s!2326))))

(declare-fun b!6426442 () Bool)

(declare-fun res!2641311 () Bool)

(declare-fun e!3898895 () Bool)

(assert (=> b!6426442 (=> res!2641311 e!3898895)))

(assert (=> b!6426442 (= res!2641311 (not (isEmpty!37324 (tail!12234 s!2326))))))

(declare-fun b!6426443 () Bool)

(declare-fun e!3898889 () Bool)

(assert (=> b!6426443 (= e!3898889 (matchR!8512 (derivativeStep!5033 r!7292 (head!13149 s!2326)) (tail!12234 s!2326)))))

(declare-fun b!6426444 () Bool)

(declare-fun e!3898892 () Bool)

(assert (=> b!6426444 (= e!3898892 e!3898895)))

(declare-fun res!2641314 () Bool)

(assert (=> b!6426444 (=> res!2641314 e!3898895)))

(assert (=> b!6426444 (= res!2641314 call!552745)))

(declare-fun b!6426445 () Bool)

(declare-fun res!2641315 () Bool)

(assert (=> b!6426445 (=> res!2641315 e!3898890)))

(assert (=> b!6426445 (= res!2641315 e!3898894)))

(declare-fun res!2641312 () Bool)

(assert (=> b!6426445 (=> (not res!2641312) (not e!3898894))))

(declare-fun lt!2378142 () Bool)

(assert (=> b!6426445 (= res!2641312 lt!2378142)))

(declare-fun b!6426446 () Bool)

(declare-fun res!2641310 () Bool)

(assert (=> b!6426446 (=> (not res!2641310) (not e!3898894))))

(assert (=> b!6426446 (= res!2641310 (isEmpty!37324 (tail!12234 s!2326)))))

(declare-fun b!6426447 () Bool)

(assert (=> b!6426447 (= e!3898890 e!3898892)))

(declare-fun res!2641309 () Bool)

(assert (=> b!6426447 (=> (not res!2641309) (not e!3898892))))

(assert (=> b!6426447 (= res!2641309 (not lt!2378142))))

(declare-fun b!6426448 () Bool)

(declare-fun res!2641313 () Bool)

(assert (=> b!6426448 (=> (not res!2641313) (not e!3898894))))

(assert (=> b!6426448 (= res!2641313 (not call!552745))))

(declare-fun b!6426449 () Bool)

(assert (=> b!6426449 (= e!3898895 (not (= (head!13149 s!2326) (c!1174148 r!7292))))))

(declare-fun d!2014732 () Bool)

(assert (=> d!2014732 e!3898893))

(declare-fun c!1174324 () Bool)

(assert (=> d!2014732 (= c!1174324 ((_ is EmptyExpr!16329) r!7292))))

(assert (=> d!2014732 (= lt!2378142 e!3898889)))

(declare-fun c!1174323 () Bool)

(assert (=> d!2014732 (= c!1174323 (isEmpty!37324 s!2326))))

(assert (=> d!2014732 (validRegex!8065 r!7292)))

(assert (=> d!2014732 (= (matchR!8512 r!7292 s!2326) lt!2378142)))

(declare-fun b!6426439 () Bool)

(assert (=> b!6426439 (= e!3898893 (= lt!2378142 call!552745))))

(declare-fun b!6426450 () Bool)

(assert (=> b!6426450 (= e!3898889 (nullable!6322 r!7292))))

(declare-fun b!6426451 () Bool)

(assert (=> b!6426451 (= e!3898891 (not lt!2378142))))

(assert (= (and d!2014732 c!1174323) b!6426450))

(assert (= (and d!2014732 (not c!1174323)) b!6426443))

(assert (= (and d!2014732 c!1174324) b!6426439))

(assert (= (and d!2014732 (not c!1174324)) b!6426441))

(assert (= (and b!6426441 c!1174325) b!6426451))

(assert (= (and b!6426441 (not c!1174325)) b!6426440))

(assert (= (and b!6426440 (not res!2641316)) b!6426445))

(assert (= (and b!6426445 res!2641312) b!6426448))

(assert (= (and b!6426448 res!2641313) b!6426446))

(assert (= (and b!6426446 res!2641310) b!6426438))

(assert (= (and b!6426445 (not res!2641315)) b!6426447))

(assert (= (and b!6426447 res!2641309) b!6426444))

(assert (= (and b!6426444 (not res!2641314)) b!6426442))

(assert (= (and b!6426442 (not res!2641311)) b!6426449))

(assert (= (or b!6426439 b!6426444 b!6426448) bm!552740))

(declare-fun m!7220394 () Bool)

(assert (=> b!6426443 m!7220394))

(assert (=> b!6426443 m!7220394))

(declare-fun m!7220396 () Bool)

(assert (=> b!6426443 m!7220396))

(declare-fun m!7220398 () Bool)

(assert (=> b!6426443 m!7220398))

(assert (=> b!6426443 m!7220396))

(assert (=> b!6426443 m!7220398))

(declare-fun m!7220400 () Bool)

(assert (=> b!6426443 m!7220400))

(assert (=> bm!552740 m!7220388))

(assert (=> b!6426438 m!7220394))

(assert (=> b!6426449 m!7220394))

(assert (=> b!6426442 m!7220398))

(assert (=> b!6426442 m!7220398))

(declare-fun m!7220402 () Bool)

(assert (=> b!6426442 m!7220402))

(assert (=> d!2014732 m!7220388))

(assert (=> d!2014732 m!7219832))

(declare-fun m!7220404 () Bool)

(assert (=> b!6426450 m!7220404))

(assert (=> b!6426446 m!7220398))

(assert (=> b!6426446 m!7220398))

(assert (=> b!6426446 m!7220402))

(assert (=> b!6425806 d!2014732))

(declare-fun d!2014734 () Bool)

(assert (=> d!2014734 (= (matchR!8512 r!7292 s!2326) (matchRSpec!3430 r!7292 s!2326))))

(declare-fun lt!2378143 () Unit!158647)

(assert (=> d!2014734 (= lt!2378143 (choose!47757 r!7292 s!2326))))

(assert (=> d!2014734 (validRegex!8065 r!7292)))

(assert (=> d!2014734 (= (mainMatchTheorem!3430 r!7292 s!2326) lt!2378143)))

(declare-fun bs!1616384 () Bool)

(assert (= bs!1616384 d!2014734))

(assert (=> bs!1616384 m!7219854))

(assert (=> bs!1616384 m!7219852))

(declare-fun m!7220406 () Bool)

(assert (=> bs!1616384 m!7220406))

(assert (=> bs!1616384 m!7219832))

(assert (=> b!6425806 d!2014734))

(declare-fun d!2014736 () Bool)

(declare-fun c!1174330 () Bool)

(assert (=> d!2014736 (= c!1174330 (isEmpty!37324 (t!378902 s!2326)))))

(declare-fun e!3898901 () Bool)

(assert (=> d!2014736 (= (matchZipper!2341 lt!2378019 (t!378902 s!2326)) e!3898901)))

(declare-fun b!6426461 () Bool)

(declare-fun nullableZipper!2094 ((InoxSet Context!11426)) Bool)

(assert (=> b!6426461 (= e!3898901 (nullableZipper!2094 lt!2378019))))

(declare-fun b!6426462 () Bool)

(assert (=> b!6426462 (= e!3898901 (matchZipper!2341 (derivationStepZipper!2295 lt!2378019 (head!13149 (t!378902 s!2326))) (tail!12234 (t!378902 s!2326))))))

(assert (= (and d!2014736 c!1174330) b!6426461))

(assert (= (and d!2014736 (not c!1174330)) b!6426462))

(declare-fun m!7220432 () Bool)

(assert (=> d!2014736 m!7220432))

(declare-fun m!7220434 () Bool)

(assert (=> b!6426461 m!7220434))

(declare-fun m!7220436 () Bool)

(assert (=> b!6426462 m!7220436))

(assert (=> b!6426462 m!7220436))

(declare-fun m!7220438 () Bool)

(assert (=> b!6426462 m!7220438))

(declare-fun m!7220440 () Bool)

(assert (=> b!6426462 m!7220440))

(assert (=> b!6426462 m!7220438))

(assert (=> b!6426462 m!7220440))

(declare-fun m!7220442 () Bool)

(assert (=> b!6426462 m!7220442))

(assert (=> b!6425807 d!2014736))

(declare-fun d!2014750 () Bool)

(assert (=> d!2014750 (= (isDefined!12923 lt!2378050) (not (isEmpty!37328 lt!2378050)))))

(declare-fun bs!1616390 () Bool)

(assert (= bs!1616390 d!2014750))

(declare-fun m!7220444 () Bool)

(assert (=> bs!1616390 m!7220444))

(assert (=> b!6425788 d!2014750))

(declare-fun d!2014752 () Bool)

(assert (=> d!2014752 (= (Exists!3399 lambda!355213) (choose!47759 lambda!355213))))

(declare-fun bs!1616391 () Bool)

(assert (= bs!1616391 d!2014752))

(declare-fun m!7220446 () Bool)

(assert (=> bs!1616391 m!7220446))

(assert (=> b!6425788 d!2014752))

(declare-fun bs!1616396 () Bool)

(declare-fun d!2014754 () Bool)

(assert (= bs!1616396 (and d!2014754 b!6426166)))

(declare-fun lambda!355278 () Int)

(assert (=> bs!1616396 (not (= lambda!355278 lambda!355233))))

(declare-fun bs!1616397 () Bool)

(assert (= bs!1616397 (and d!2014754 d!2014690)))

(assert (=> bs!1616397 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355278 lambda!355253))))

(declare-fun bs!1616398 () Bool)

(assert (= bs!1616398 (and d!2014754 b!6425801)))

(assert (=> bs!1616398 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355278 lambda!355209))))

(declare-fun bs!1616399 () Bool)

(assert (= bs!1616399 (and d!2014754 b!6426171)))

(assert (=> bs!1616399 (not (= lambda!355278 lambda!355232))))

(assert (=> bs!1616397 (not (= lambda!355278 lambda!355256))))

(declare-fun bs!1616401 () Bool)

(assert (= bs!1616401 (and d!2014754 d!2014678)))

(assert (=> bs!1616401 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355278 lambda!355242))))

(assert (=> bs!1616398 (not (= lambda!355278 lambda!355210))))

(declare-fun bs!1616402 () Bool)

(assert (= bs!1616402 (and d!2014754 b!6425790)))

(assert (=> bs!1616402 (not (= lambda!355278 lambda!355215))))

(declare-fun bs!1616403 () Bool)

(assert (= bs!1616403 (and d!2014754 b!6426412)))

(assert (=> bs!1616403 (not (= lambda!355278 lambda!355274))))

(assert (=> bs!1616402 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355278 lambda!355214))))

(declare-fun bs!1616405 () Bool)

(assert (= bs!1616405 (and d!2014754 b!6426417)))

(assert (=> bs!1616405 (not (= lambda!355278 lambda!355273))))

(declare-fun bs!1616407 () Bool)

(assert (= bs!1616407 (and d!2014754 b!6425788)))

(assert (=> bs!1616407 (not (= lambda!355278 lambda!355213))))

(assert (=> bs!1616407 (= lambda!355278 lambda!355212)))

(assert (=> d!2014754 true))

(assert (=> d!2014754 true))

(assert (=> d!2014754 true))

(assert (=> d!2014754 (= (isDefined!12923 (findConcatSeparation!2634 lt!2378030 (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326)) (Exists!3399 lambda!355278))))

(declare-fun lt!2378149 () Unit!158647)

(assert (=> d!2014754 (= lt!2378149 (choose!47758 lt!2378030 (regTwo!33170 r!7292) s!2326))))

(assert (=> d!2014754 (validRegex!8065 lt!2378030)))

(assert (=> d!2014754 (= (lemmaFindConcatSeparationEquivalentToExists!2398 lt!2378030 (regTwo!33170 r!7292) s!2326) lt!2378149)))

(declare-fun bs!1616411 () Bool)

(assert (= bs!1616411 d!2014754))

(assert (=> bs!1616411 m!7219926))

(assert (=> bs!1616411 m!7219912))

(declare-fun m!7220452 () Bool)

(assert (=> bs!1616411 m!7220452))

(declare-fun m!7220454 () Bool)

(assert (=> bs!1616411 m!7220454))

(declare-fun m!7220456 () Bool)

(assert (=> bs!1616411 m!7220456))

(assert (=> bs!1616411 m!7219912))

(assert (=> b!6425788 d!2014754))

(declare-fun d!2014760 () Bool)

(assert (=> d!2014760 (= (get!22577 lt!2378050) (v!52392 lt!2378050))))

(assert (=> b!6425788 d!2014760))

(declare-fun b!6426463 () Bool)

(declare-fun e!3898902 () Bool)

(declare-fun lt!2378151 () Option!16220)

(assert (=> b!6426463 (= e!3898902 (= (++!14397 (_1!36611 (get!22577 lt!2378151)) (_2!36611 (get!22577 lt!2378151))) s!2326))))

(declare-fun b!6426464 () Bool)

(declare-fun res!2641319 () Bool)

(assert (=> b!6426464 (=> (not res!2641319) (not e!3898902))))

(assert (=> b!6426464 (= res!2641319 (matchR!8512 lt!2378030 (_1!36611 (get!22577 lt!2378151))))))

(declare-fun b!6426465 () Bool)

(declare-fun e!3898903 () Option!16220)

(declare-fun e!3898906 () Option!16220)

(assert (=> b!6426465 (= e!3898903 e!3898906)))

(declare-fun c!1174331 () Bool)

(assert (=> b!6426465 (= c!1174331 ((_ is Nil!65162) s!2326))))

(declare-fun b!6426466 () Bool)

(assert (=> b!6426466 (= e!3898903 (Some!16219 (tuple2!66617 Nil!65162 s!2326)))))

(declare-fun d!2014762 () Bool)

(declare-fun e!3898905 () Bool)

(assert (=> d!2014762 e!3898905))

(declare-fun res!2641318 () Bool)

(assert (=> d!2014762 (=> res!2641318 e!3898905)))

(assert (=> d!2014762 (= res!2641318 e!3898902)))

(declare-fun res!2641322 () Bool)

(assert (=> d!2014762 (=> (not res!2641322) (not e!3898902))))

(assert (=> d!2014762 (= res!2641322 (isDefined!12923 lt!2378151))))

(assert (=> d!2014762 (= lt!2378151 e!3898903)))

(declare-fun c!1174332 () Bool)

(declare-fun e!3898904 () Bool)

(assert (=> d!2014762 (= c!1174332 e!3898904)))

(declare-fun res!2641320 () Bool)

(assert (=> d!2014762 (=> (not res!2641320) (not e!3898904))))

(assert (=> d!2014762 (= res!2641320 (matchR!8512 lt!2378030 Nil!65162))))

(assert (=> d!2014762 (validRegex!8065 lt!2378030)))

(assert (=> d!2014762 (= (findConcatSeparation!2634 lt!2378030 (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326) lt!2378151)))

(declare-fun b!6426467 () Bool)

(assert (=> b!6426467 (= e!3898904 (matchR!8512 (regTwo!33170 r!7292) s!2326))))

(declare-fun b!6426468 () Bool)

(declare-fun lt!2378153 () Unit!158647)

(declare-fun lt!2378152 () Unit!158647)

(assert (=> b!6426468 (= lt!2378153 lt!2378152)))

(assert (=> b!6426468 (= (++!14397 (++!14397 Nil!65162 (Cons!65162 (h!71610 s!2326) Nil!65162)) (t!378902 s!2326)) s!2326)))

(assert (=> b!6426468 (= lt!2378152 (lemmaMoveElementToOtherListKeepsConcatEq!2492 Nil!65162 (h!71610 s!2326) (t!378902 s!2326) s!2326))))

(assert (=> b!6426468 (= e!3898906 (findConcatSeparation!2634 lt!2378030 (regTwo!33170 r!7292) (++!14397 Nil!65162 (Cons!65162 (h!71610 s!2326) Nil!65162)) (t!378902 s!2326) s!2326))))

(declare-fun b!6426469 () Bool)

(assert (=> b!6426469 (= e!3898906 None!16219)))

(declare-fun b!6426470 () Bool)

(declare-fun res!2641321 () Bool)

(assert (=> b!6426470 (=> (not res!2641321) (not e!3898902))))

(assert (=> b!6426470 (= res!2641321 (matchR!8512 (regTwo!33170 r!7292) (_2!36611 (get!22577 lt!2378151))))))

(declare-fun b!6426471 () Bool)

(assert (=> b!6426471 (= e!3898905 (not (isDefined!12923 lt!2378151)))))

(assert (= (and d!2014762 res!2641320) b!6426467))

(assert (= (and d!2014762 c!1174332) b!6426466))

(assert (= (and d!2014762 (not c!1174332)) b!6426465))

(assert (= (and b!6426465 c!1174331) b!6426469))

(assert (= (and b!6426465 (not c!1174331)) b!6426468))

(assert (= (and d!2014762 res!2641322) b!6426464))

(assert (= (and b!6426464 res!2641319) b!6426470))

(assert (= (and b!6426470 res!2641321) b!6426463))

(assert (= (and d!2014762 (not res!2641318)) b!6426471))

(declare-fun m!7220458 () Bool)

(assert (=> b!6426467 m!7220458))

(declare-fun m!7220460 () Bool)

(assert (=> b!6426463 m!7220460))

(declare-fun m!7220462 () Bool)

(assert (=> b!6426463 m!7220462))

(declare-fun m!7220464 () Bool)

(assert (=> d!2014762 m!7220464))

(declare-fun m!7220466 () Bool)

(assert (=> d!2014762 m!7220466))

(assert (=> d!2014762 m!7219926))

(declare-fun m!7220468 () Bool)

(assert (=> b!6426468 m!7220468))

(assert (=> b!6426468 m!7220468))

(declare-fun m!7220470 () Bool)

(assert (=> b!6426468 m!7220470))

(declare-fun m!7220472 () Bool)

(assert (=> b!6426468 m!7220472))

(assert (=> b!6426468 m!7220468))

(declare-fun m!7220474 () Bool)

(assert (=> b!6426468 m!7220474))

(assert (=> b!6426471 m!7220464))

(assert (=> b!6426464 m!7220460))

(declare-fun m!7220476 () Bool)

(assert (=> b!6426464 m!7220476))

(assert (=> b!6426470 m!7220460))

(declare-fun m!7220478 () Bool)

(assert (=> b!6426470 m!7220478))

(assert (=> b!6425788 d!2014762))

(declare-fun d!2014764 () Bool)

(assert (=> d!2014764 (= (Exists!3399 lambda!355212) (choose!47759 lambda!355212))))

(declare-fun bs!1616419 () Bool)

(assert (= bs!1616419 d!2014764))

(declare-fun m!7220480 () Bool)

(assert (=> bs!1616419 m!7220480))

(assert (=> b!6425788 d!2014764))

(declare-fun bs!1616434 () Bool)

(declare-fun d!2014766 () Bool)

(assert (= bs!1616434 (and d!2014766 b!6426166)))

(declare-fun lambda!355286 () Int)

(assert (=> bs!1616434 (not (= lambda!355286 lambda!355233))))

(declare-fun bs!1616435 () Bool)

(assert (= bs!1616435 (and d!2014766 d!2014690)))

(assert (=> bs!1616435 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355286 lambda!355253))))

(declare-fun bs!1616436 () Bool)

(assert (= bs!1616436 (and d!2014766 b!6426171)))

(assert (=> bs!1616436 (not (= lambda!355286 lambda!355232))))

(assert (=> bs!1616435 (not (= lambda!355286 lambda!355256))))

(declare-fun bs!1616437 () Bool)

(assert (= bs!1616437 (and d!2014766 d!2014678)))

(assert (=> bs!1616437 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355286 lambda!355242))))

(declare-fun bs!1616438 () Bool)

(assert (= bs!1616438 (and d!2014766 b!6425801)))

(assert (=> bs!1616438 (not (= lambda!355286 lambda!355210))))

(declare-fun bs!1616439 () Bool)

(assert (= bs!1616439 (and d!2014766 b!6425790)))

(assert (=> bs!1616439 (not (= lambda!355286 lambda!355215))))

(declare-fun bs!1616440 () Bool)

(assert (= bs!1616440 (and d!2014766 b!6426412)))

(assert (=> bs!1616440 (not (= lambda!355286 lambda!355274))))

(assert (=> bs!1616439 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355286 lambda!355214))))

(assert (=> bs!1616438 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355286 lambda!355209))))

(declare-fun bs!1616441 () Bool)

(assert (= bs!1616441 (and d!2014766 d!2014754)))

(assert (=> bs!1616441 (= lambda!355286 lambda!355278)))

(declare-fun bs!1616442 () Bool)

(assert (= bs!1616442 (and d!2014766 b!6426417)))

(assert (=> bs!1616442 (not (= lambda!355286 lambda!355273))))

(declare-fun bs!1616444 () Bool)

(assert (= bs!1616444 (and d!2014766 b!6425788)))

(assert (=> bs!1616444 (not (= lambda!355286 lambda!355213))))

(assert (=> bs!1616444 (= lambda!355286 lambda!355212)))

(assert (=> d!2014766 true))

(assert (=> d!2014766 true))

(assert (=> d!2014766 true))

(declare-fun lambda!355287 () Int)

(assert (=> bs!1616434 (= (and (= s!2326 (_1!36611 lt!2378024)) (= lt!2378030 (regOne!33170 lt!2378030)) (= (regTwo!33170 r!7292) (regTwo!33170 lt!2378030))) (= lambda!355287 lambda!355233))))

(assert (=> bs!1616435 (not (= lambda!355287 lambda!355253))))

(assert (=> bs!1616436 (not (= lambda!355287 lambda!355232))))

(assert (=> bs!1616435 (not (= lambda!355287 lambda!355256))))

(assert (=> bs!1616437 (not (= lambda!355287 lambda!355242))))

(assert (=> bs!1616439 (not (= lambda!355287 lambda!355215))))

(assert (=> bs!1616440 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355287 lambda!355274))))

(assert (=> bs!1616439 (not (= lambda!355287 lambda!355214))))

(assert (=> bs!1616438 (not (= lambda!355287 lambda!355209))))

(assert (=> bs!1616441 (not (= lambda!355287 lambda!355278))))

(assert (=> bs!1616442 (not (= lambda!355287 lambda!355273))))

(assert (=> bs!1616444 (= lambda!355287 lambda!355213)))

(assert (=> bs!1616444 (not (= lambda!355287 lambda!355212))))

(declare-fun bs!1616451 () Bool)

(assert (= bs!1616451 d!2014766))

(assert (=> bs!1616451 (not (= lambda!355287 lambda!355286))))

(assert (=> bs!1616438 (= (= lt!2378030 (regOne!33170 r!7292)) (= lambda!355287 lambda!355210))))

(assert (=> d!2014766 true))

(assert (=> d!2014766 true))

(assert (=> d!2014766 true))

(assert (=> d!2014766 (= (Exists!3399 lambda!355286) (Exists!3399 lambda!355287))))

(declare-fun lt!2378162 () Unit!158647)

(declare-fun choose!47764 (Regex!16329 Regex!16329 List!65286) Unit!158647)

(assert (=> d!2014766 (= lt!2378162 (choose!47764 lt!2378030 (regTwo!33170 r!7292) s!2326))))

(assert (=> d!2014766 (validRegex!8065 lt!2378030)))

(assert (=> d!2014766 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1936 lt!2378030 (regTwo!33170 r!7292) s!2326) lt!2378162)))

(declare-fun m!7220538 () Bool)

(assert (=> bs!1616451 m!7220538))

(declare-fun m!7220540 () Bool)

(assert (=> bs!1616451 m!7220540))

(declare-fun m!7220542 () Bool)

(assert (=> bs!1616451 m!7220542))

(assert (=> bs!1616451 m!7219926))

(assert (=> b!6425788 d!2014766))

(declare-fun d!2014788 () Bool)

(declare-fun e!3898941 () Bool)

(assert (=> d!2014788 e!3898941))

(declare-fun res!2641358 () Bool)

(assert (=> d!2014788 (=> (not res!2641358) (not e!3898941))))

(declare-fun lt!2378167 () List!65286)

(declare-fun content!12371 (List!65286) (InoxSet C!32928))

(assert (=> d!2014788 (= res!2641358 (= (content!12371 lt!2378167) ((_ map or) (content!12371 (_1!36611 lt!2378024)) (content!12371 (_2!36611 lt!2378024)))))))

(declare-fun e!3898940 () List!65286)

(assert (=> d!2014788 (= lt!2378167 e!3898940)))

(declare-fun c!1174347 () Bool)

(assert (=> d!2014788 (= c!1174347 ((_ is Nil!65162) (_1!36611 lt!2378024)))))

(assert (=> d!2014788 (= (++!14397 (_1!36611 lt!2378024) (_2!36611 lt!2378024)) lt!2378167)))

(declare-fun b!6426534 () Bool)

(assert (=> b!6426534 (= e!3898940 (_2!36611 lt!2378024))))

(declare-fun b!6426536 () Bool)

(declare-fun res!2641357 () Bool)

(assert (=> b!6426536 (=> (not res!2641357) (not e!3898941))))

(declare-fun size!40388 (List!65286) Int)

(assert (=> b!6426536 (= res!2641357 (= (size!40388 lt!2378167) (+ (size!40388 (_1!36611 lt!2378024)) (size!40388 (_2!36611 lt!2378024)))))))

(declare-fun b!6426535 () Bool)

(assert (=> b!6426535 (= e!3898940 (Cons!65162 (h!71610 (_1!36611 lt!2378024)) (++!14397 (t!378902 (_1!36611 lt!2378024)) (_2!36611 lt!2378024))))))

(declare-fun b!6426537 () Bool)

(assert (=> b!6426537 (= e!3898941 (or (not (= (_2!36611 lt!2378024) Nil!65162)) (= lt!2378167 (_1!36611 lt!2378024))))))

(assert (= (and d!2014788 c!1174347) b!6426534))

(assert (= (and d!2014788 (not c!1174347)) b!6426535))

(assert (= (and d!2014788 res!2641358) b!6426536))

(assert (= (and b!6426536 res!2641357) b!6426537))

(declare-fun m!7220544 () Bool)

(assert (=> d!2014788 m!7220544))

(declare-fun m!7220546 () Bool)

(assert (=> d!2014788 m!7220546))

(declare-fun m!7220548 () Bool)

(assert (=> d!2014788 m!7220548))

(declare-fun m!7220550 () Bool)

(assert (=> b!6426536 m!7220550))

(declare-fun m!7220552 () Bool)

(assert (=> b!6426536 m!7220552))

(declare-fun m!7220554 () Bool)

(assert (=> b!6426536 m!7220554))

(declare-fun m!7220556 () Bool)

(assert (=> b!6426535 m!7220556))

(assert (=> b!6425788 d!2014788))

(declare-fun d!2014790 () Bool)

(assert (=> d!2014790 (= (flatMap!1834 lt!2378056 lambda!355211) (choose!47751 lt!2378056 lambda!355211))))

(declare-fun bs!1616477 () Bool)

(assert (= bs!1616477 d!2014790))

(declare-fun m!7220558 () Bool)

(assert (=> bs!1616477 m!7220558))

(assert (=> b!6425804 d!2014790))

(declare-fun bm!552745 () Bool)

(declare-fun call!552750 () (InoxSet Context!11426))

(assert (=> bm!552745 (= call!552750 (derivationStepZipperDown!1577 (h!71611 (exprs!6213 lt!2378048)) (Context!11427 (t!378903 (exprs!6213 lt!2378048))) (h!71610 s!2326)))))

(declare-fun b!6426538 () Bool)

(declare-fun e!3898942 () (InoxSet Context!11426))

(assert (=> b!6426538 (= e!3898942 call!552750)))

(declare-fun b!6426539 () Bool)

(declare-fun e!3898944 () Bool)

(assert (=> b!6426539 (= e!3898944 (nullable!6322 (h!71611 (exprs!6213 lt!2378048))))))

(declare-fun d!2014792 () Bool)

(declare-fun c!1174349 () Bool)

(assert (=> d!2014792 (= c!1174349 e!3898944)))

(declare-fun res!2641359 () Bool)

(assert (=> d!2014792 (=> (not res!2641359) (not e!3898944))))

(assert (=> d!2014792 (= res!2641359 ((_ is Cons!65163) (exprs!6213 lt!2378048)))))

(declare-fun e!3898943 () (InoxSet Context!11426))

(assert (=> d!2014792 (= (derivationStepZipperUp!1503 lt!2378048 (h!71610 s!2326)) e!3898943)))

(declare-fun b!6426540 () Bool)

(assert (=> b!6426540 (= e!3898942 ((as const (Array Context!11426 Bool)) false))))

(declare-fun b!6426541 () Bool)

(assert (=> b!6426541 (= e!3898943 ((_ map or) call!552750 (derivationStepZipperUp!1503 (Context!11427 (t!378903 (exprs!6213 lt!2378048))) (h!71610 s!2326))))))

(declare-fun b!6426542 () Bool)

(assert (=> b!6426542 (= e!3898943 e!3898942)))

(declare-fun c!1174348 () Bool)

(assert (=> b!6426542 (= c!1174348 ((_ is Cons!65163) (exprs!6213 lt!2378048)))))

(assert (= (and d!2014792 res!2641359) b!6426539))

(assert (= (and d!2014792 c!1174349) b!6426541))

(assert (= (and d!2014792 (not c!1174349)) b!6426542))

(assert (= (and b!6426542 c!1174348) b!6426538))

(assert (= (and b!6426542 (not c!1174348)) b!6426540))

(assert (= (or b!6426541 b!6426538) bm!552745))

(declare-fun m!7220560 () Bool)

(assert (=> bm!552745 m!7220560))

(declare-fun m!7220562 () Bool)

(assert (=> b!6426539 m!7220562))

(declare-fun m!7220564 () Bool)

(assert (=> b!6426541 m!7220564))

(assert (=> b!6425804 d!2014792))

(declare-fun d!2014794 () Bool)

(assert (=> d!2014794 (= (flatMap!1834 lt!2378056 lambda!355211) (dynLambda!25885 lambda!355211 lt!2378048))))

(declare-fun lt!2378168 () Unit!158647)

(assert (=> d!2014794 (= lt!2378168 (choose!47753 lt!2378056 lt!2378048 lambda!355211))))

(assert (=> d!2014794 (= lt!2378056 (store ((as const (Array Context!11426 Bool)) false) lt!2378048 true))))

(assert (=> d!2014794 (= (lemmaFlatMapOnSingletonSet!1360 lt!2378056 lt!2378048 lambda!355211) lt!2378168)))

(declare-fun b_lambda!244223 () Bool)

(assert (=> (not b_lambda!244223) (not d!2014794)))

(declare-fun bs!1616480 () Bool)

(assert (= bs!1616480 d!2014794))

(assert (=> bs!1616480 m!7219894))

(declare-fun m!7220566 () Bool)

(assert (=> bs!1616480 m!7220566))

(declare-fun m!7220568 () Bool)

(assert (=> bs!1616480 m!7220568))

(assert (=> bs!1616480 m!7219892))

(assert (=> b!6425804 d!2014794))

(declare-fun bs!1616482 () Bool)

(declare-fun d!2014796 () Bool)

(assert (= bs!1616482 (and d!2014796 b!6425809)))

(declare-fun lambda!355293 () Int)

(assert (=> bs!1616482 (= lambda!355293 lambda!355211)))

(assert (=> d!2014796 true))

(assert (=> d!2014796 (= (derivationStepZipper!2295 lt!2378056 (h!71610 s!2326)) (flatMap!1834 lt!2378056 lambda!355293))))

(declare-fun bs!1616483 () Bool)

(assert (= bs!1616483 d!2014796))

(declare-fun m!7220578 () Bool)

(assert (=> bs!1616483 m!7220578))

(assert (=> b!6425804 d!2014796))

(declare-fun bs!1616484 () Bool)

(declare-fun d!2014802 () Bool)

(assert (= bs!1616484 (and d!2014802 d!2014708)))

(declare-fun lambda!355294 () Int)

(assert (=> bs!1616484 (= lambda!355294 lambda!355262)))

(declare-fun bs!1616485 () Bool)

(assert (= bs!1616485 (and d!2014802 d!2014710)))

(assert (=> bs!1616485 (= lambda!355294 lambda!355268)))

(declare-fun bs!1616486 () Bool)

(assert (= bs!1616486 (and d!2014802 d!2014716)))

(assert (=> bs!1616486 (= lambda!355294 lambda!355272)))

(assert (=> d!2014802 (= (inv!84069 setElem!43872) (forall!15519 (exprs!6213 setElem!43872) lambda!355294))))

(declare-fun bs!1616487 () Bool)

(assert (= bs!1616487 d!2014802))

(declare-fun m!7220580 () Bool)

(assert (=> bs!1616487 m!7220580))

(assert (=> setNonEmpty!43872 d!2014802))

(declare-fun b!6426548 () Bool)

(declare-fun e!3898953 () Bool)

(declare-fun e!3898949 () Bool)

(assert (=> b!6426548 (= e!3898953 e!3898949)))

(declare-fun c!1174352 () Bool)

(assert (=> b!6426548 (= c!1174352 ((_ is Star!16329) r!7292))))

(declare-fun bm!552746 () Bool)

(declare-fun call!552752 () Bool)

(declare-fun call!552751 () Bool)

(assert (=> bm!552746 (= call!552752 call!552751)))

(declare-fun bm!552747 () Bool)

(declare-fun c!1174353 () Bool)

(assert (=> bm!552747 (= call!552751 (validRegex!8065 (ite c!1174352 (reg!16658 r!7292) (ite c!1174353 (regOne!33171 r!7292) (regOne!33170 r!7292)))))))

(declare-fun b!6426549 () Bool)

(declare-fun e!3898948 () Bool)

(declare-fun e!3898954 () Bool)

(assert (=> b!6426549 (= e!3898948 e!3898954)))

(declare-fun res!2641365 () Bool)

(assert (=> b!6426549 (=> (not res!2641365) (not e!3898954))))

(assert (=> b!6426549 (= res!2641365 call!552752)))

(declare-fun b!6426550 () Bool)

(declare-fun res!2641366 () Bool)

(declare-fun e!3898952 () Bool)

(assert (=> b!6426550 (=> (not res!2641366) (not e!3898952))))

(assert (=> b!6426550 (= res!2641366 call!552752)))

(declare-fun e!3898951 () Bool)

(assert (=> b!6426550 (= e!3898951 e!3898952)))

(declare-fun b!6426551 () Bool)

(declare-fun call!552753 () Bool)

(assert (=> b!6426551 (= e!3898954 call!552753)))

(declare-fun d!2014804 () Bool)

(declare-fun res!2641363 () Bool)

(assert (=> d!2014804 (=> res!2641363 e!3898953)))

(assert (=> d!2014804 (= res!2641363 ((_ is ElementMatch!16329) r!7292))))

(assert (=> d!2014804 (= (validRegex!8065 r!7292) e!3898953)))

(declare-fun b!6426552 () Bool)

(declare-fun e!3898950 () Bool)

(assert (=> b!6426552 (= e!3898949 e!3898950)))

(declare-fun res!2641367 () Bool)

(assert (=> b!6426552 (= res!2641367 (not (nullable!6322 (reg!16658 r!7292))))))

(assert (=> b!6426552 (=> (not res!2641367) (not e!3898950))))

(declare-fun b!6426553 () Bool)

(assert (=> b!6426553 (= e!3898952 call!552753)))

(declare-fun b!6426554 () Bool)

(assert (=> b!6426554 (= e!3898949 e!3898951)))

(assert (=> b!6426554 (= c!1174353 ((_ is Union!16329) r!7292))))

(declare-fun b!6426555 () Bool)

(declare-fun res!2641364 () Bool)

(assert (=> b!6426555 (=> res!2641364 e!3898948)))

(assert (=> b!6426555 (= res!2641364 (not ((_ is Concat!25174) r!7292)))))

(assert (=> b!6426555 (= e!3898951 e!3898948)))

(declare-fun bm!552748 () Bool)

(assert (=> bm!552748 (= call!552753 (validRegex!8065 (ite c!1174353 (regTwo!33171 r!7292) (regTwo!33170 r!7292))))))

(declare-fun b!6426556 () Bool)

(assert (=> b!6426556 (= e!3898950 call!552751)))

(assert (= (and d!2014804 (not res!2641363)) b!6426548))

(assert (= (and b!6426548 c!1174352) b!6426552))

(assert (= (and b!6426548 (not c!1174352)) b!6426554))

(assert (= (and b!6426552 res!2641367) b!6426556))

(assert (= (and b!6426554 c!1174353) b!6426550))

(assert (= (and b!6426554 (not c!1174353)) b!6426555))

(assert (= (and b!6426550 res!2641366) b!6426553))

(assert (= (and b!6426555 (not res!2641364)) b!6426549))

(assert (= (and b!6426549 res!2641365) b!6426551))

(assert (= (or b!6426553 b!6426551) bm!552748))

(assert (= (or b!6426550 b!6426549) bm!552746))

(assert (= (or b!6426556 bm!552746) bm!552747))

(declare-fun m!7220592 () Bool)

(assert (=> bm!552747 m!7220592))

(declare-fun m!7220594 () Bool)

(assert (=> b!6426552 m!7220594))

(declare-fun m!7220598 () Bool)

(assert (=> bm!552748 m!7220598))

(assert (=> start!634854 d!2014804))

(declare-fun d!2014812 () Bool)

(assert (=> d!2014812 (= (isEmpty!37326 (t!378904 zl!343)) ((_ is Nil!65164) (t!378904 zl!343)))))

(assert (=> b!6425826 d!2014812))

(declare-fun d!2014816 () Bool)

(assert (=> d!2014816 (= (Exists!3399 lambda!355209) (choose!47759 lambda!355209))))

(declare-fun bs!1616490 () Bool)

(assert (= bs!1616490 d!2014816))

(declare-fun m!7220606 () Bool)

(assert (=> bs!1616490 m!7220606))

(assert (=> b!6425801 d!2014816))

(declare-fun bs!1616491 () Bool)

(declare-fun d!2014818 () Bool)

(assert (= bs!1616491 (and d!2014818 b!6426166)))

(declare-fun lambda!355295 () Int)

(assert (=> bs!1616491 (not (= lambda!355295 lambda!355233))))

(declare-fun bs!1616492 () Bool)

(assert (= bs!1616492 (and d!2014818 d!2014690)))

(assert (=> bs!1616492 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355295 lambda!355253))))

(declare-fun bs!1616493 () Bool)

(assert (= bs!1616493 (and d!2014818 b!6426171)))

(assert (=> bs!1616493 (not (= lambda!355295 lambda!355232))))

(declare-fun bs!1616494 () Bool)

(assert (= bs!1616494 (and d!2014818 d!2014678)))

(assert (=> bs!1616494 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355295 lambda!355242))))

(declare-fun bs!1616495 () Bool)

(assert (= bs!1616495 (and d!2014818 b!6425790)))

(assert (=> bs!1616495 (not (= lambda!355295 lambda!355215))))

(declare-fun bs!1616496 () Bool)

(assert (= bs!1616496 (and d!2014818 b!6426412)))

(assert (=> bs!1616496 (not (= lambda!355295 lambda!355274))))

(assert (=> bs!1616495 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355295 lambda!355214))))

(declare-fun bs!1616497 () Bool)

(assert (= bs!1616497 (and d!2014818 b!6425801)))

(assert (=> bs!1616497 (= lambda!355295 lambda!355209)))

(declare-fun bs!1616498 () Bool)

(assert (= bs!1616498 (and d!2014818 d!2014754)))

(assert (=> bs!1616498 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355295 lambda!355278))))

(declare-fun bs!1616500 () Bool)

(assert (= bs!1616500 (and d!2014818 b!6426417)))

(assert (=> bs!1616500 (not (= lambda!355295 lambda!355273))))

(declare-fun bs!1616502 () Bool)

(assert (= bs!1616502 (and d!2014818 b!6425788)))

(assert (=> bs!1616502 (not (= lambda!355295 lambda!355213))))

(assert (=> bs!1616502 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355295 lambda!355212))))

(assert (=> bs!1616492 (not (= lambda!355295 lambda!355256))))

(declare-fun bs!1616503 () Bool)

(assert (= bs!1616503 (and d!2014818 d!2014766)))

(assert (=> bs!1616503 (not (= lambda!355295 lambda!355287))))

(assert (=> bs!1616503 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355295 lambda!355286))))

(assert (=> bs!1616497 (not (= lambda!355295 lambda!355210))))

(assert (=> d!2014818 true))

(assert (=> d!2014818 true))

(assert (=> d!2014818 true))

(assert (=> d!2014818 (= (isDefined!12923 (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326)) (Exists!3399 lambda!355295))))

(declare-fun lt!2378174 () Unit!158647)

(assert (=> d!2014818 (= lt!2378174 (choose!47758 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326))))

(assert (=> d!2014818 (validRegex!8065 (regOne!33170 r!7292))))

(assert (=> d!2014818 (= (lemmaFindConcatSeparationEquivalentToExists!2398 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326) lt!2378174)))

(declare-fun bs!1616504 () Bool)

(assert (= bs!1616504 d!2014818))

(declare-fun m!7220610 () Bool)

(assert (=> bs!1616504 m!7220610))

(assert (=> bs!1616504 m!7219962))

(assert (=> bs!1616504 m!7219964))

(declare-fun m!7220612 () Bool)

(assert (=> bs!1616504 m!7220612))

(declare-fun m!7220614 () Bool)

(assert (=> bs!1616504 m!7220614))

(assert (=> bs!1616504 m!7219962))

(assert (=> b!6425801 d!2014818))

(declare-fun d!2014822 () Bool)

(assert (=> d!2014822 (= (Exists!3399 lambda!355210) (choose!47759 lambda!355210))))

(declare-fun bs!1616505 () Bool)

(assert (= bs!1616505 d!2014822))

(declare-fun m!7220616 () Bool)

(assert (=> bs!1616505 m!7220616))

(assert (=> b!6425801 d!2014822))

(declare-fun b!6426564 () Bool)

(declare-fun e!3898958 () Bool)

(declare-fun lt!2378175 () Option!16220)

(assert (=> b!6426564 (= e!3898958 (= (++!14397 (_1!36611 (get!22577 lt!2378175)) (_2!36611 (get!22577 lt!2378175))) s!2326))))

(declare-fun b!6426565 () Bool)

(declare-fun res!2641370 () Bool)

(assert (=> b!6426565 (=> (not res!2641370) (not e!3898958))))

(assert (=> b!6426565 (= res!2641370 (matchR!8512 (regOne!33170 r!7292) (_1!36611 (get!22577 lt!2378175))))))

(declare-fun b!6426566 () Bool)

(declare-fun e!3898959 () Option!16220)

(declare-fun e!3898962 () Option!16220)

(assert (=> b!6426566 (= e!3898959 e!3898962)))

(declare-fun c!1174358 () Bool)

(assert (=> b!6426566 (= c!1174358 ((_ is Nil!65162) s!2326))))

(declare-fun b!6426567 () Bool)

(assert (=> b!6426567 (= e!3898959 (Some!16219 (tuple2!66617 Nil!65162 s!2326)))))

(declare-fun d!2014824 () Bool)

(declare-fun e!3898961 () Bool)

(assert (=> d!2014824 e!3898961))

(declare-fun res!2641369 () Bool)

(assert (=> d!2014824 (=> res!2641369 e!3898961)))

(assert (=> d!2014824 (= res!2641369 e!3898958)))

(declare-fun res!2641373 () Bool)

(assert (=> d!2014824 (=> (not res!2641373) (not e!3898958))))

(assert (=> d!2014824 (= res!2641373 (isDefined!12923 lt!2378175))))

(assert (=> d!2014824 (= lt!2378175 e!3898959)))

(declare-fun c!1174359 () Bool)

(declare-fun e!3898960 () Bool)

(assert (=> d!2014824 (= c!1174359 e!3898960)))

(declare-fun res!2641371 () Bool)

(assert (=> d!2014824 (=> (not res!2641371) (not e!3898960))))

(assert (=> d!2014824 (= res!2641371 (matchR!8512 (regOne!33170 r!7292) Nil!65162))))

(assert (=> d!2014824 (validRegex!8065 (regOne!33170 r!7292))))

(assert (=> d!2014824 (= (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326) lt!2378175)))

(declare-fun b!6426568 () Bool)

(assert (=> b!6426568 (= e!3898960 (matchR!8512 (regTwo!33170 r!7292) s!2326))))

(declare-fun b!6426569 () Bool)

(declare-fun lt!2378177 () Unit!158647)

(declare-fun lt!2378176 () Unit!158647)

(assert (=> b!6426569 (= lt!2378177 lt!2378176)))

(assert (=> b!6426569 (= (++!14397 (++!14397 Nil!65162 (Cons!65162 (h!71610 s!2326) Nil!65162)) (t!378902 s!2326)) s!2326)))

(assert (=> b!6426569 (= lt!2378176 (lemmaMoveElementToOtherListKeepsConcatEq!2492 Nil!65162 (h!71610 s!2326) (t!378902 s!2326) s!2326))))

(assert (=> b!6426569 (= e!3898962 (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) (++!14397 Nil!65162 (Cons!65162 (h!71610 s!2326) Nil!65162)) (t!378902 s!2326) s!2326))))

(declare-fun b!6426570 () Bool)

(assert (=> b!6426570 (= e!3898962 None!16219)))

(declare-fun b!6426571 () Bool)

(declare-fun res!2641372 () Bool)

(assert (=> b!6426571 (=> (not res!2641372) (not e!3898958))))

(assert (=> b!6426571 (= res!2641372 (matchR!8512 (regTwo!33170 r!7292) (_2!36611 (get!22577 lt!2378175))))))

(declare-fun b!6426572 () Bool)

(assert (=> b!6426572 (= e!3898961 (not (isDefined!12923 lt!2378175)))))

(assert (= (and d!2014824 res!2641371) b!6426568))

(assert (= (and d!2014824 c!1174359) b!6426567))

(assert (= (and d!2014824 (not c!1174359)) b!6426566))

(assert (= (and b!6426566 c!1174358) b!6426570))

(assert (= (and b!6426566 (not c!1174358)) b!6426569))

(assert (= (and d!2014824 res!2641373) b!6426565))

(assert (= (and b!6426565 res!2641370) b!6426571))

(assert (= (and b!6426571 res!2641372) b!6426564))

(assert (= (and d!2014824 (not res!2641369)) b!6426572))

(assert (=> b!6426568 m!7220458))

(declare-fun m!7220618 () Bool)

(assert (=> b!6426564 m!7220618))

(declare-fun m!7220620 () Bool)

(assert (=> b!6426564 m!7220620))

(declare-fun m!7220622 () Bool)

(assert (=> d!2014824 m!7220622))

(declare-fun m!7220624 () Bool)

(assert (=> d!2014824 m!7220624))

(assert (=> d!2014824 m!7220610))

(assert (=> b!6426569 m!7220468))

(assert (=> b!6426569 m!7220468))

(assert (=> b!6426569 m!7220470))

(assert (=> b!6426569 m!7220472))

(assert (=> b!6426569 m!7220468))

(declare-fun m!7220626 () Bool)

(assert (=> b!6426569 m!7220626))

(assert (=> b!6426572 m!7220622))

(assert (=> b!6426565 m!7220618))

(declare-fun m!7220628 () Bool)

(assert (=> b!6426565 m!7220628))

(assert (=> b!6426571 m!7220618))

(declare-fun m!7220630 () Bool)

(assert (=> b!6426571 m!7220630))

(assert (=> b!6425801 d!2014824))

(declare-fun bs!1616506 () Bool)

(declare-fun d!2014826 () Bool)

(assert (= bs!1616506 (and d!2014826 b!6426166)))

(declare-fun lambda!355299 () Int)

(assert (=> bs!1616506 (not (= lambda!355299 lambda!355233))))

(declare-fun bs!1616507 () Bool)

(assert (= bs!1616507 (and d!2014826 d!2014818)))

(assert (=> bs!1616507 (= lambda!355299 lambda!355295)))

(declare-fun bs!1616508 () Bool)

(assert (= bs!1616508 (and d!2014826 d!2014690)))

(assert (=> bs!1616508 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355299 lambda!355253))))

(declare-fun bs!1616509 () Bool)

(assert (= bs!1616509 (and d!2014826 b!6426171)))

(assert (=> bs!1616509 (not (= lambda!355299 lambda!355232))))

(declare-fun bs!1616510 () Bool)

(assert (= bs!1616510 (and d!2014826 d!2014678)))

(assert (=> bs!1616510 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355299 lambda!355242))))

(declare-fun bs!1616511 () Bool)

(assert (= bs!1616511 (and d!2014826 b!6425790)))

(assert (=> bs!1616511 (not (= lambda!355299 lambda!355215))))

(declare-fun bs!1616512 () Bool)

(assert (= bs!1616512 (and d!2014826 b!6426412)))

(assert (=> bs!1616512 (not (= lambda!355299 lambda!355274))))

(assert (=> bs!1616511 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (reg!16658 (regOne!33170 r!7292))) (= (regTwo!33170 r!7292) lt!2378030)) (= lambda!355299 lambda!355214))))

(declare-fun bs!1616513 () Bool)

(assert (= bs!1616513 (and d!2014826 b!6425801)))

(assert (=> bs!1616513 (= lambda!355299 lambda!355209)))

(declare-fun bs!1616514 () Bool)

(assert (= bs!1616514 (and d!2014826 d!2014754)))

(assert (=> bs!1616514 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355299 lambda!355278))))

(declare-fun bs!1616515 () Bool)

(assert (= bs!1616515 (and d!2014826 b!6426417)))

(assert (=> bs!1616515 (not (= lambda!355299 lambda!355273))))

(declare-fun bs!1616516 () Bool)

(assert (= bs!1616516 (and d!2014826 b!6425788)))

(assert (=> bs!1616516 (not (= lambda!355299 lambda!355213))))

(assert (=> bs!1616516 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355299 lambda!355212))))

(assert (=> bs!1616508 (not (= lambda!355299 lambda!355256))))

(declare-fun bs!1616517 () Bool)

(assert (= bs!1616517 (and d!2014826 d!2014766)))

(assert (=> bs!1616517 (not (= lambda!355299 lambda!355287))))

(assert (=> bs!1616517 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355299 lambda!355286))))

(assert (=> bs!1616513 (not (= lambda!355299 lambda!355210))))

(assert (=> d!2014826 true))

(assert (=> d!2014826 true))

(assert (=> d!2014826 true))

(declare-fun lambda!355300 () Int)

(assert (=> bs!1616506 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 r!7292) (regOne!33170 lt!2378030)) (= (regTwo!33170 r!7292) (regTwo!33170 lt!2378030))) (= lambda!355300 lambda!355233))))

(assert (=> bs!1616507 (not (= lambda!355300 lambda!355295))))

(assert (=> bs!1616508 (not (= lambda!355300 lambda!355253))))

(assert (=> bs!1616509 (not (= lambda!355300 lambda!355232))))

(assert (=> bs!1616510 (not (= lambda!355300 lambda!355242))))

(assert (=> bs!1616511 (not (= lambda!355300 lambda!355215))))

(declare-fun bs!1616518 () Bool)

(assert (= bs!1616518 d!2014826))

(assert (=> bs!1616518 (not (= lambda!355300 lambda!355299))))

(assert (=> bs!1616512 (= lambda!355300 lambda!355274)))

(assert (=> bs!1616511 (not (= lambda!355300 lambda!355214))))

(assert (=> bs!1616513 (not (= lambda!355300 lambda!355209))))

(assert (=> bs!1616514 (not (= lambda!355300 lambda!355278))))

(assert (=> bs!1616515 (not (= lambda!355300 lambda!355273))))

(assert (=> bs!1616516 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355300 lambda!355213))))

(assert (=> bs!1616516 (not (= lambda!355300 lambda!355212))))

(assert (=> bs!1616508 (not (= lambda!355300 lambda!355256))))

(assert (=> bs!1616517 (= (= (regOne!33170 r!7292) lt!2378030) (= lambda!355300 lambda!355287))))

(assert (=> bs!1616517 (not (= lambda!355300 lambda!355286))))

(assert (=> bs!1616513 (= lambda!355300 lambda!355210)))

(assert (=> d!2014826 true))

(assert (=> d!2014826 true))

(assert (=> d!2014826 true))

(assert (=> d!2014826 (= (Exists!3399 lambda!355299) (Exists!3399 lambda!355300))))

(declare-fun lt!2378178 () Unit!158647)

(assert (=> d!2014826 (= lt!2378178 (choose!47764 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326))))

(assert (=> d!2014826 (validRegex!8065 (regOne!33170 r!7292))))

(assert (=> d!2014826 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1936 (regOne!33170 r!7292) (regTwo!33170 r!7292) s!2326) lt!2378178)))

(declare-fun m!7220632 () Bool)

(assert (=> bs!1616518 m!7220632))

(declare-fun m!7220634 () Bool)

(assert (=> bs!1616518 m!7220634))

(declare-fun m!7220636 () Bool)

(assert (=> bs!1616518 m!7220636))

(assert (=> bs!1616518 m!7220610))

(assert (=> b!6425801 d!2014826))

(declare-fun d!2014828 () Bool)

(assert (=> d!2014828 (= (isDefined!12923 (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326)) (not (isEmpty!37328 (findConcatSeparation!2634 (regOne!33170 r!7292) (regTwo!33170 r!7292) Nil!65162 s!2326 s!2326))))))

(declare-fun bs!1616519 () Bool)

(assert (= bs!1616519 d!2014828))

(assert (=> bs!1616519 m!7219962))

(declare-fun m!7220638 () Bool)

(assert (=> bs!1616519 m!7220638))

(assert (=> b!6425801 d!2014828))

(declare-fun d!2014830 () Bool)

(declare-fun e!3898977 () Bool)

(assert (=> d!2014830 e!3898977))

(declare-fun res!2641378 () Bool)

(assert (=> d!2014830 (=> (not res!2641378) (not e!3898977))))

(declare-fun lt!2378181 () List!65288)

(declare-fun noDuplicate!2158 (List!65288) Bool)

(assert (=> d!2014830 (= res!2641378 (noDuplicate!2158 lt!2378181))))

(declare-fun choose!47766 ((InoxSet Context!11426)) List!65288)

(assert (=> d!2014830 (= lt!2378181 (choose!47766 z!1189))))

(assert (=> d!2014830 (= (toList!10113 z!1189) lt!2378181)))

(declare-fun b!6426597 () Bool)

(declare-fun content!12373 (List!65288) (InoxSet Context!11426))

(assert (=> b!6426597 (= e!3898977 (= (content!12373 lt!2378181) z!1189))))

(assert (= (and d!2014830 res!2641378) b!6426597))

(declare-fun m!7220640 () Bool)

(assert (=> d!2014830 m!7220640))

(declare-fun m!7220642 () Bool)

(assert (=> d!2014830 m!7220642))

(declare-fun m!7220644 () Bool)

(assert (=> b!6426597 m!7220644))

(assert (=> b!6425802 d!2014830))

(declare-fun d!2014832 () Bool)

(declare-fun c!1174370 () Bool)

(assert (=> d!2014832 (= c!1174370 (isEmpty!37324 s!2326))))

(declare-fun e!3898978 () Bool)

(assert (=> d!2014832 (= (matchZipper!2341 lt!2378056 s!2326) e!3898978)))

(declare-fun b!6426598 () Bool)

(assert (=> b!6426598 (= e!3898978 (nullableZipper!2094 lt!2378056))))

(declare-fun b!6426599 () Bool)

(assert (=> b!6426599 (= e!3898978 (matchZipper!2341 (derivationStepZipper!2295 lt!2378056 (head!13149 s!2326)) (tail!12234 s!2326)))))

(assert (= (and d!2014832 c!1174370) b!6426598))

(assert (= (and d!2014832 (not c!1174370)) b!6426599))

(assert (=> d!2014832 m!7220388))

(declare-fun m!7220646 () Bool)

(assert (=> b!6426598 m!7220646))

(assert (=> b!6426599 m!7220394))

(assert (=> b!6426599 m!7220394))

(declare-fun m!7220648 () Bool)

(assert (=> b!6426599 m!7220648))

(assert (=> b!6426599 m!7220398))

(assert (=> b!6426599 m!7220648))

(assert (=> b!6426599 m!7220398))

(declare-fun m!7220650 () Bool)

(assert (=> b!6426599 m!7220650))

(assert (=> b!6425822 d!2014832))

(declare-fun d!2014834 () Bool)

(declare-fun c!1174376 () Bool)

(assert (=> d!2014834 (= c!1174376 (isEmpty!37324 (t!378902 s!2326)))))

(declare-fun e!3898985 () Bool)

(assert (=> d!2014834 (= (matchZipper!2341 lt!2378029 (t!378902 s!2326)) e!3898985)))

(declare-fun b!6426611 () Bool)

(assert (=> b!6426611 (= e!3898985 (nullableZipper!2094 lt!2378029))))

(declare-fun b!6426612 () Bool)

(assert (=> b!6426612 (= e!3898985 (matchZipper!2341 (derivationStepZipper!2295 lt!2378029 (head!13149 (t!378902 s!2326))) (tail!12234 (t!378902 s!2326))))))

(assert (= (and d!2014834 c!1174376) b!6426611))

(assert (= (and d!2014834 (not c!1174376)) b!6426612))

(assert (=> d!2014834 m!7220432))

(declare-fun m!7220652 () Bool)

(assert (=> b!6426611 m!7220652))

(assert (=> b!6426612 m!7220436))

(assert (=> b!6426612 m!7220436))

(declare-fun m!7220654 () Bool)

(assert (=> b!6426612 m!7220654))

(assert (=> b!6426612 m!7220440))

(assert (=> b!6426612 m!7220654))

(assert (=> b!6426612 m!7220440))

(declare-fun m!7220656 () Bool)

(assert (=> b!6426612 m!7220656))

(assert (=> b!6425822 d!2014834))

(declare-fun bs!1616525 () Bool)

(declare-fun d!2014836 () Bool)

(assert (= bs!1616525 (and d!2014836 d!2014708)))

(declare-fun lambda!355303 () Int)

(assert (=> bs!1616525 (= lambda!355303 lambda!355262)))

(declare-fun bs!1616526 () Bool)

(assert (= bs!1616526 (and d!2014836 d!2014710)))

(assert (=> bs!1616526 (= lambda!355303 lambda!355268)))

(declare-fun bs!1616527 () Bool)

(assert (= bs!1616527 (and d!2014836 d!2014716)))

(assert (=> bs!1616527 (= lambda!355303 lambda!355272)))

(declare-fun bs!1616528 () Bool)

(assert (= bs!1616528 (and d!2014836 d!2014802)))

(assert (=> bs!1616528 (= lambda!355303 lambda!355294)))

(declare-fun b!6426688 () Bool)

(declare-fun e!3899032 () Regex!16329)

(declare-fun e!3899031 () Regex!16329)

(assert (=> b!6426688 (= e!3899032 e!3899031)))

(declare-fun c!1174404 () Bool)

(assert (=> b!6426688 (= c!1174404 ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343))))))

(declare-fun b!6426690 () Bool)

(declare-fun e!3899030 () Bool)

(assert (=> b!6426690 (= e!3899030 (isEmpty!37325 (t!378903 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6426691 () Bool)

(assert (=> b!6426691 (= e!3899031 EmptyExpr!16329)))

(declare-fun b!6426692 () Bool)

(declare-fun e!3899033 () Bool)

(declare-fun e!3899034 () Bool)

(assert (=> b!6426692 (= e!3899033 e!3899034)))

(declare-fun c!1174405 () Bool)

(assert (=> b!6426692 (= c!1174405 (isEmpty!37325 (tail!12235 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun b!6426693 () Bool)

(assert (=> b!6426693 (= e!3899032 (h!71611 (exprs!6213 (h!71612 zl!343))))))

(declare-fun b!6426694 () Bool)

(declare-fun lt!2378188 () Regex!16329)

(declare-fun isConcat!1253 (Regex!16329) Bool)

(assert (=> b!6426694 (= e!3899034 (isConcat!1253 lt!2378188))))

(declare-fun b!6426695 () Bool)

(assert (=> b!6426695 (= e!3899031 (Concat!25174 (h!71611 (exprs!6213 (h!71612 zl!343))) (generalisedConcat!1926 (t!378903 (exprs!6213 (h!71612 zl!343))))))))

(declare-fun b!6426689 () Bool)

(assert (=> b!6426689 (= e!3899034 (= lt!2378188 (head!13150 (exprs!6213 (h!71612 zl!343)))))))

(declare-fun e!3899035 () Bool)

(assert (=> d!2014836 e!3899035))

(declare-fun res!2641401 () Bool)

(assert (=> d!2014836 (=> (not res!2641401) (not e!3899035))))

(assert (=> d!2014836 (= res!2641401 (validRegex!8065 lt!2378188))))

(assert (=> d!2014836 (= lt!2378188 e!3899032)))

(declare-fun c!1174403 () Bool)

(assert (=> d!2014836 (= c!1174403 e!3899030)))

(declare-fun res!2641402 () Bool)

(assert (=> d!2014836 (=> (not res!2641402) (not e!3899030))))

(assert (=> d!2014836 (= res!2641402 ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343))))))

(assert (=> d!2014836 (forall!15519 (exprs!6213 (h!71612 zl!343)) lambda!355303)))

(assert (=> d!2014836 (= (generalisedConcat!1926 (exprs!6213 (h!71612 zl!343))) lt!2378188)))

(declare-fun b!6426696 () Bool)

(declare-fun isEmptyExpr!1730 (Regex!16329) Bool)

(assert (=> b!6426696 (= e!3899033 (isEmptyExpr!1730 lt!2378188))))

(declare-fun b!6426697 () Bool)

(assert (=> b!6426697 (= e!3899035 e!3899033)))

(declare-fun c!1174402 () Bool)

(assert (=> b!6426697 (= c!1174402 (isEmpty!37325 (exprs!6213 (h!71612 zl!343))))))

(assert (= (and d!2014836 res!2641402) b!6426690))

(assert (= (and d!2014836 c!1174403) b!6426693))

(assert (= (and d!2014836 (not c!1174403)) b!6426688))

(assert (= (and b!6426688 c!1174404) b!6426695))

(assert (= (and b!6426688 (not c!1174404)) b!6426691))

(assert (= (and d!2014836 res!2641401) b!6426697))

(assert (= (and b!6426697 c!1174402) b!6426696))

(assert (= (and b!6426697 (not c!1174402)) b!6426692))

(assert (= (and b!6426692 c!1174405) b!6426689))

(assert (= (and b!6426692 (not c!1174405)) b!6426694))

(assert (=> b!6426690 m!7219828))

(declare-fun m!7220734 () Bool)

(assert (=> b!6426689 m!7220734))

(declare-fun m!7220736 () Bool)

(assert (=> b!6426697 m!7220736))

(declare-fun m!7220738 () Bool)

(assert (=> b!6426692 m!7220738))

(assert (=> b!6426692 m!7220738))

(declare-fun m!7220740 () Bool)

(assert (=> b!6426692 m!7220740))

(declare-fun m!7220742 () Bool)

(assert (=> d!2014836 m!7220742))

(declare-fun m!7220744 () Bool)

(assert (=> d!2014836 m!7220744))

(declare-fun m!7220748 () Bool)

(assert (=> b!6426694 m!7220748))

(declare-fun m!7220750 () Bool)

(assert (=> b!6426695 m!7220750))

(declare-fun m!7220752 () Bool)

(assert (=> b!6426696 m!7220752))

(assert (=> b!6425823 d!2014836))

(declare-fun d!2014864 () Bool)

(declare-fun e!3899059 () Bool)

(assert (=> d!2014864 (= (matchZipper!2341 ((_ map or) lt!2378023 lt!2378019) (t!378902 s!2326)) e!3899059)))

(declare-fun res!2641405 () Bool)

(assert (=> d!2014864 (=> res!2641405 e!3899059)))

(assert (=> d!2014864 (= res!2641405 (matchZipper!2341 lt!2378023 (t!378902 s!2326)))))

(declare-fun lt!2378191 () Unit!158647)

(declare-fun choose!47767 ((InoxSet Context!11426) (InoxSet Context!11426) List!65286) Unit!158647)

(assert (=> d!2014864 (= lt!2378191 (choose!47767 lt!2378023 lt!2378019 (t!378902 s!2326)))))

(assert (=> d!2014864 (= (lemmaZipperConcatMatchesSameAsBothZippers!1160 lt!2378023 lt!2378019 (t!378902 s!2326)) lt!2378191)))

(declare-fun b!6426750 () Bool)

(assert (=> b!6426750 (= e!3899059 (matchZipper!2341 lt!2378019 (t!378902 s!2326)))))

(assert (= (and d!2014864 (not res!2641405)) b!6426750))

(assert (=> d!2014864 m!7219872))

(assert (=> d!2014864 m!7219870))

(declare-fun m!7220756 () Bool)

(assert (=> d!2014864 m!7220756))

(assert (=> b!6426750 m!7219946))

(assert (=> b!6425803 d!2014864))

(declare-fun d!2014874 () Bool)

(declare-fun c!1174406 () Bool)

(assert (=> d!2014874 (= c!1174406 (isEmpty!37324 (t!378902 s!2326)))))

(declare-fun e!3899060 () Bool)

(assert (=> d!2014874 (= (matchZipper!2341 lt!2378023 (t!378902 s!2326)) e!3899060)))

(declare-fun b!6426751 () Bool)

(assert (=> b!6426751 (= e!3899060 (nullableZipper!2094 lt!2378023))))

(declare-fun b!6426752 () Bool)

(assert (=> b!6426752 (= e!3899060 (matchZipper!2341 (derivationStepZipper!2295 lt!2378023 (head!13149 (t!378902 s!2326))) (tail!12234 (t!378902 s!2326))))))

(assert (= (and d!2014874 c!1174406) b!6426751))

(assert (= (and d!2014874 (not c!1174406)) b!6426752))

(assert (=> d!2014874 m!7220432))

(declare-fun m!7220758 () Bool)

(assert (=> b!6426751 m!7220758))

(assert (=> b!6426752 m!7220436))

(assert (=> b!6426752 m!7220436))

(declare-fun m!7220760 () Bool)

(assert (=> b!6426752 m!7220760))

(assert (=> b!6426752 m!7220440))

(assert (=> b!6426752 m!7220760))

(assert (=> b!6426752 m!7220440))

(declare-fun m!7220762 () Bool)

(assert (=> b!6426752 m!7220762))

(assert (=> b!6425803 d!2014874))

(declare-fun d!2014876 () Bool)

(declare-fun c!1174407 () Bool)

(assert (=> d!2014876 (= c!1174407 (isEmpty!37324 (t!378902 s!2326)))))

(declare-fun e!3899061 () Bool)

(assert (=> d!2014876 (= (matchZipper!2341 ((_ map or) lt!2378023 lt!2378019) (t!378902 s!2326)) e!3899061)))

(declare-fun b!6426753 () Bool)

(assert (=> b!6426753 (= e!3899061 (nullableZipper!2094 ((_ map or) lt!2378023 lt!2378019)))))

(declare-fun b!6426754 () Bool)

(assert (=> b!6426754 (= e!3899061 (matchZipper!2341 (derivationStepZipper!2295 ((_ map or) lt!2378023 lt!2378019) (head!13149 (t!378902 s!2326))) (tail!12234 (t!378902 s!2326))))))

(assert (= (and d!2014876 c!1174407) b!6426753))

(assert (= (and d!2014876 (not c!1174407)) b!6426754))

(assert (=> d!2014876 m!7220432))

(declare-fun m!7220764 () Bool)

(assert (=> b!6426753 m!7220764))

(assert (=> b!6426754 m!7220436))

(assert (=> b!6426754 m!7220436))

(declare-fun m!7220766 () Bool)

(assert (=> b!6426754 m!7220766))

(assert (=> b!6426754 m!7220440))

(assert (=> b!6426754 m!7220766))

(assert (=> b!6426754 m!7220440))

(declare-fun m!7220768 () Bool)

(assert (=> b!6426754 m!7220768))

(assert (=> b!6425803 d!2014876))

(declare-fun b!6426755 () Bool)

(declare-fun e!3899067 () Bool)

(assert (=> b!6426755 (= e!3899067 (= (head!13149 s!2326) (c!1174148 lt!2378027)))))

(declare-fun b!6426757 () Bool)

(declare-fun res!2641413 () Bool)

(declare-fun e!3899063 () Bool)

(assert (=> b!6426757 (=> res!2641413 e!3899063)))

(assert (=> b!6426757 (= res!2641413 (not ((_ is ElementMatch!16329) lt!2378027)))))

(declare-fun e!3899064 () Bool)

(assert (=> b!6426757 (= e!3899064 e!3899063)))

(declare-fun b!6426758 () Bool)

(declare-fun e!3899066 () Bool)

(assert (=> b!6426758 (= e!3899066 e!3899064)))

(declare-fun c!1174410 () Bool)

(assert (=> b!6426758 (= c!1174410 ((_ is EmptyLang!16329) lt!2378027))))

(declare-fun bm!552781 () Bool)

(declare-fun call!552786 () Bool)

(assert (=> bm!552781 (= call!552786 (isEmpty!37324 s!2326))))

(declare-fun b!6426759 () Bool)

(declare-fun res!2641408 () Bool)

(declare-fun e!3899068 () Bool)

(assert (=> b!6426759 (=> res!2641408 e!3899068)))

(assert (=> b!6426759 (= res!2641408 (not (isEmpty!37324 (tail!12234 s!2326))))))

(declare-fun b!6426760 () Bool)

(declare-fun e!3899062 () Bool)

(assert (=> b!6426760 (= e!3899062 (matchR!8512 (derivativeStep!5033 lt!2378027 (head!13149 s!2326)) (tail!12234 s!2326)))))

(declare-fun b!6426761 () Bool)

(declare-fun e!3899065 () Bool)

(assert (=> b!6426761 (= e!3899065 e!3899068)))

(declare-fun res!2641411 () Bool)

(assert (=> b!6426761 (=> res!2641411 e!3899068)))

(assert (=> b!6426761 (= res!2641411 call!552786)))

(declare-fun b!6426762 () Bool)

(declare-fun res!2641412 () Bool)

(assert (=> b!6426762 (=> res!2641412 e!3899063)))

(assert (=> b!6426762 (= res!2641412 e!3899067)))

(declare-fun res!2641409 () Bool)

(assert (=> b!6426762 (=> (not res!2641409) (not e!3899067))))

(declare-fun lt!2378192 () Bool)

(assert (=> b!6426762 (= res!2641409 lt!2378192)))

(declare-fun b!6426763 () Bool)

(declare-fun res!2641407 () Bool)

(assert (=> b!6426763 (=> (not res!2641407) (not e!3899067))))

(assert (=> b!6426763 (= res!2641407 (isEmpty!37324 (tail!12234 s!2326)))))

(declare-fun b!6426764 () Bool)

(assert (=> b!6426764 (= e!3899063 e!3899065)))

(declare-fun res!2641406 () Bool)

(assert (=> b!6426764 (=> (not res!2641406) (not e!3899065))))

(assert (=> b!6426764 (= res!2641406 (not lt!2378192))))

(declare-fun b!6426765 () Bool)

(declare-fun res!2641410 () Bool)

(assert (=> b!6426765 (=> (not res!2641410) (not e!3899067))))

(assert (=> b!6426765 (= res!2641410 (not call!552786))))

(declare-fun b!6426766 () Bool)

(assert (=> b!6426766 (= e!3899068 (not (= (head!13149 s!2326) (c!1174148 lt!2378027))))))

(declare-fun d!2014878 () Bool)

(assert (=> d!2014878 e!3899066))

(declare-fun c!1174409 () Bool)

(assert (=> d!2014878 (= c!1174409 ((_ is EmptyExpr!16329) lt!2378027))))

(assert (=> d!2014878 (= lt!2378192 e!3899062)))

(declare-fun c!1174408 () Bool)

(assert (=> d!2014878 (= c!1174408 (isEmpty!37324 s!2326))))

(assert (=> d!2014878 (validRegex!8065 lt!2378027)))

(assert (=> d!2014878 (= (matchR!8512 lt!2378027 s!2326) lt!2378192)))

(declare-fun b!6426756 () Bool)

(assert (=> b!6426756 (= e!3899066 (= lt!2378192 call!552786))))

(declare-fun b!6426767 () Bool)

(assert (=> b!6426767 (= e!3899062 (nullable!6322 lt!2378027))))

(declare-fun b!6426768 () Bool)

(assert (=> b!6426768 (= e!3899064 (not lt!2378192))))

(assert (= (and d!2014878 c!1174408) b!6426767))

(assert (= (and d!2014878 (not c!1174408)) b!6426760))

(assert (= (and d!2014878 c!1174409) b!6426756))

(assert (= (and d!2014878 (not c!1174409)) b!6426758))

(assert (= (and b!6426758 c!1174410) b!6426768))

(assert (= (and b!6426758 (not c!1174410)) b!6426757))

(assert (= (and b!6426757 (not res!2641413)) b!6426762))

(assert (= (and b!6426762 res!2641409) b!6426765))

(assert (= (and b!6426765 res!2641410) b!6426763))

(assert (= (and b!6426763 res!2641407) b!6426755))

(assert (= (and b!6426762 (not res!2641412)) b!6426764))

(assert (= (and b!6426764 res!2641406) b!6426761))

(assert (= (and b!6426761 (not res!2641411)) b!6426759))

(assert (= (and b!6426759 (not res!2641408)) b!6426766))

(assert (= (or b!6426756 b!6426761 b!6426765) bm!552781))

(assert (=> b!6426760 m!7220394))

(assert (=> b!6426760 m!7220394))

(declare-fun m!7220770 () Bool)

(assert (=> b!6426760 m!7220770))

(assert (=> b!6426760 m!7220398))

(assert (=> b!6426760 m!7220770))

(assert (=> b!6426760 m!7220398))

(declare-fun m!7220772 () Bool)

(assert (=> b!6426760 m!7220772))

(assert (=> bm!552781 m!7220388))

(assert (=> b!6426755 m!7220394))

(assert (=> b!6426766 m!7220394))

(assert (=> b!6426759 m!7220398))

(assert (=> b!6426759 m!7220398))

(assert (=> b!6426759 m!7220402))

(assert (=> d!2014878 m!7220388))

(declare-fun m!7220774 () Bool)

(assert (=> d!2014878 m!7220774))

(declare-fun m!7220776 () Bool)

(assert (=> b!6426767 m!7220776))

(assert (=> b!6426763 m!7220398))

(assert (=> b!6426763 m!7220398))

(assert (=> b!6426763 m!7220402))

(assert (=> b!6425799 d!2014878))

(declare-fun bs!1616533 () Bool)

(declare-fun b!6426774 () Bool)

(assert (= bs!1616533 (and b!6426774 b!6426166)))

(declare-fun lambda!355304 () Int)

(assert (=> bs!1616533 (not (= lambda!355304 lambda!355233))))

(declare-fun bs!1616534 () Bool)

(assert (= bs!1616534 (and b!6426774 d!2014818)))

(assert (=> bs!1616534 (not (= lambda!355304 lambda!355295))))

(declare-fun bs!1616535 () Bool)

(assert (= bs!1616535 (and b!6426774 d!2014690)))

(assert (=> bs!1616535 (not (= lambda!355304 lambda!355253))))

(declare-fun bs!1616536 () Bool)

(assert (= bs!1616536 (and b!6426774 b!6426171)))

(assert (=> bs!1616536 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 lt!2378027) (reg!16658 lt!2378030)) (= lt!2378027 lt!2378030)) (= lambda!355304 lambda!355232))))

(declare-fun bs!1616537 () Bool)

(assert (= bs!1616537 (and b!6426774 d!2014678)))

(assert (=> bs!1616537 (not (= lambda!355304 lambda!355242))))

(declare-fun bs!1616538 () Bool)

(assert (= bs!1616538 (and b!6426774 b!6425790)))

(assert (=> bs!1616538 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 lt!2378027) (reg!16658 (regOne!33170 r!7292))) (= lt!2378027 lt!2378030)) (= lambda!355304 lambda!355215))))

(declare-fun bs!1616539 () Bool)

(assert (= bs!1616539 (and b!6426774 d!2014826)))

(assert (=> bs!1616539 (not (= lambda!355304 lambda!355300))))

(assert (=> bs!1616539 (not (= lambda!355304 lambda!355299))))

(declare-fun bs!1616540 () Bool)

(assert (= bs!1616540 (and b!6426774 b!6426412)))

(assert (=> bs!1616540 (not (= lambda!355304 lambda!355274))))

(assert (=> bs!1616538 (not (= lambda!355304 lambda!355214))))

(declare-fun bs!1616541 () Bool)

(assert (= bs!1616541 (and b!6426774 b!6425801)))

(assert (=> bs!1616541 (not (= lambda!355304 lambda!355209))))

(declare-fun bs!1616542 () Bool)

(assert (= bs!1616542 (and b!6426774 d!2014754)))

(assert (=> bs!1616542 (not (= lambda!355304 lambda!355278))))

(declare-fun bs!1616543 () Bool)

(assert (= bs!1616543 (and b!6426774 b!6426417)))

(assert (=> bs!1616543 (= (and (= (reg!16658 lt!2378027) (reg!16658 r!7292)) (= lt!2378027 r!7292)) (= lambda!355304 lambda!355273))))

(declare-fun bs!1616544 () Bool)

(assert (= bs!1616544 (and b!6426774 b!6425788)))

(assert (=> bs!1616544 (not (= lambda!355304 lambda!355213))))

(assert (=> bs!1616544 (not (= lambda!355304 lambda!355212))))

(assert (=> bs!1616535 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (reg!16658 lt!2378027) (reg!16658 (regOne!33170 r!7292))) (= lt!2378027 (Star!16329 (reg!16658 (regOne!33170 r!7292))))) (= lambda!355304 lambda!355256))))

(declare-fun bs!1616545 () Bool)

(assert (= bs!1616545 (and b!6426774 d!2014766)))

(assert (=> bs!1616545 (not (= lambda!355304 lambda!355287))))

(assert (=> bs!1616545 (not (= lambda!355304 lambda!355286))))

(assert (=> bs!1616541 (not (= lambda!355304 lambda!355210))))

(assert (=> b!6426774 true))

(assert (=> b!6426774 true))

(declare-fun bs!1616546 () Bool)

(declare-fun b!6426769 () Bool)

(assert (= bs!1616546 (and b!6426769 b!6426166)))

(declare-fun lambda!355305 () Int)

(assert (=> bs!1616546 (= (and (= s!2326 (_1!36611 lt!2378024)) (= (regOne!33170 lt!2378027) (regOne!33170 lt!2378030)) (= (regTwo!33170 lt!2378027) (regTwo!33170 lt!2378030))) (= lambda!355305 lambda!355233))))

(declare-fun bs!1616547 () Bool)

(assert (= bs!1616547 (and b!6426769 d!2014818)))

(assert (=> bs!1616547 (not (= lambda!355305 lambda!355295))))

(declare-fun bs!1616548 () Bool)

(assert (= bs!1616548 (and b!6426769 d!2014690)))

(assert (=> bs!1616548 (not (= lambda!355305 lambda!355253))))

(declare-fun bs!1616549 () Bool)

(assert (= bs!1616549 (and b!6426769 b!6426171)))

(assert (=> bs!1616549 (not (= lambda!355305 lambda!355232))))

(declare-fun bs!1616550 () Bool)

(assert (= bs!1616550 (and b!6426769 d!2014678)))

(assert (=> bs!1616550 (not (= lambda!355305 lambda!355242))))

(declare-fun bs!1616551 () Bool)

(assert (= bs!1616551 (and b!6426769 b!6426774)))

(assert (=> bs!1616551 (not (= lambda!355305 lambda!355304))))

(declare-fun bs!1616552 () Bool)

(assert (= bs!1616552 (and b!6426769 b!6425790)))

(assert (=> bs!1616552 (not (= lambda!355305 lambda!355215))))

(declare-fun bs!1616553 () Bool)

(assert (= bs!1616553 (and b!6426769 d!2014826)))

(assert (=> bs!1616553 (= (and (= (regOne!33170 lt!2378027) (regOne!33170 r!7292)) (= (regTwo!33170 lt!2378027) (regTwo!33170 r!7292))) (= lambda!355305 lambda!355300))))

(assert (=> bs!1616553 (not (= lambda!355305 lambda!355299))))

(declare-fun bs!1616554 () Bool)

(assert (= bs!1616554 (and b!6426769 b!6426412)))

(assert (=> bs!1616554 (= (and (= (regOne!33170 lt!2378027) (regOne!33170 r!7292)) (= (regTwo!33170 lt!2378027) (regTwo!33170 r!7292))) (= lambda!355305 lambda!355274))))

(assert (=> bs!1616552 (not (= lambda!355305 lambda!355214))))

(declare-fun bs!1616555 () Bool)

(assert (= bs!1616555 (and b!6426769 b!6425801)))

(assert (=> bs!1616555 (not (= lambda!355305 lambda!355209))))

(declare-fun bs!1616556 () Bool)

(assert (= bs!1616556 (and b!6426769 d!2014754)))

(assert (=> bs!1616556 (not (= lambda!355305 lambda!355278))))

(declare-fun bs!1616557 () Bool)

(assert (= bs!1616557 (and b!6426769 b!6426417)))

(assert (=> bs!1616557 (not (= lambda!355305 lambda!355273))))

(declare-fun bs!1616558 () Bool)

(assert (= bs!1616558 (and b!6426769 b!6425788)))

(assert (=> bs!1616558 (= (and (= (regOne!33170 lt!2378027) lt!2378030) (= (regTwo!33170 lt!2378027) (regTwo!33170 r!7292))) (= lambda!355305 lambda!355213))))

(assert (=> bs!1616558 (not (= lambda!355305 lambda!355212))))

(assert (=> bs!1616548 (not (= lambda!355305 lambda!355256))))

(declare-fun bs!1616559 () Bool)

(assert (= bs!1616559 (and b!6426769 d!2014766)))

(assert (=> bs!1616559 (= (and (= (regOne!33170 lt!2378027) lt!2378030) (= (regTwo!33170 lt!2378027) (regTwo!33170 r!7292))) (= lambda!355305 lambda!355287))))

(assert (=> bs!1616559 (not (= lambda!355305 lambda!355286))))

(assert (=> bs!1616555 (= (and (= (regOne!33170 lt!2378027) (regOne!33170 r!7292)) (= (regTwo!33170 lt!2378027) (regTwo!33170 r!7292))) (= lambda!355305 lambda!355210))))

(assert (=> b!6426769 true))

(assert (=> b!6426769 true))

(declare-fun e!3899070 () Bool)

(declare-fun call!552788 () Bool)

(assert (=> b!6426769 (= e!3899070 call!552788)))

(declare-fun b!6426770 () Bool)

(declare-fun e!3899074 () Bool)

(declare-fun e!3899072 () Bool)

(assert (=> b!6426770 (= e!3899074 e!3899072)))

(declare-fun res!2641414 () Bool)

(assert (=> b!6426770 (= res!2641414 (not ((_ is EmptyLang!16329) lt!2378027)))))

(assert (=> b!6426770 (=> (not res!2641414) (not e!3899072))))

(declare-fun b!6426771 () Bool)

(declare-fun e!3899073 () Bool)

(assert (=> b!6426771 (= e!3899073 (matchRSpec!3430 (regTwo!33171 lt!2378027) s!2326))))

(declare-fun b!6426772 () Bool)

(declare-fun e!3899075 () Bool)

(assert (=> b!6426772 (= e!3899075 e!3899070)))

(declare-fun c!1174412 () Bool)

(assert (=> b!6426772 (= c!1174412 ((_ is Star!16329) lt!2378027))))

(declare-fun bm!552782 () Bool)

(declare-fun call!552787 () Bool)

(assert (=> bm!552782 (= call!552787 (isEmpty!37324 s!2326))))

(declare-fun b!6426773 () Bool)

(declare-fun res!2641416 () Bool)

(declare-fun e!3899069 () Bool)

(assert (=> b!6426773 (=> res!2641416 e!3899069)))

(assert (=> b!6426773 (= res!2641416 call!552787)))

(assert (=> b!6426773 (= e!3899070 e!3899069)))

(assert (=> b!6426774 (= e!3899069 call!552788)))

(declare-fun b!6426775 () Bool)

(declare-fun c!1174411 () Bool)

(assert (=> b!6426775 (= c!1174411 ((_ is ElementMatch!16329) lt!2378027))))

(declare-fun e!3899071 () Bool)

(assert (=> b!6426775 (= e!3899072 e!3899071)))

(declare-fun d!2014880 () Bool)

(declare-fun c!1174414 () Bool)

(assert (=> d!2014880 (= c!1174414 ((_ is EmptyExpr!16329) lt!2378027))))

(assert (=> d!2014880 (= (matchRSpec!3430 lt!2378027 s!2326) e!3899074)))

(declare-fun b!6426776 () Bool)

(assert (=> b!6426776 (= e!3899075 e!3899073)))

(declare-fun res!2641415 () Bool)

(assert (=> b!6426776 (= res!2641415 (matchRSpec!3430 (regOne!33171 lt!2378027) s!2326))))

(assert (=> b!6426776 (=> res!2641415 e!3899073)))

(declare-fun bm!552783 () Bool)

(assert (=> bm!552783 (= call!552788 (Exists!3399 (ite c!1174412 lambda!355304 lambda!355305)))))

(declare-fun b!6426777 () Bool)

(assert (=> b!6426777 (= e!3899074 call!552787)))

(declare-fun b!6426778 () Bool)

(declare-fun c!1174413 () Bool)

(assert (=> b!6426778 (= c!1174413 ((_ is Union!16329) lt!2378027))))

(assert (=> b!6426778 (= e!3899071 e!3899075)))

(declare-fun b!6426779 () Bool)

(assert (=> b!6426779 (= e!3899071 (= s!2326 (Cons!65162 (c!1174148 lt!2378027) Nil!65162)))))

(assert (= (and d!2014880 c!1174414) b!6426777))

(assert (= (and d!2014880 (not c!1174414)) b!6426770))

(assert (= (and b!6426770 res!2641414) b!6426775))

(assert (= (and b!6426775 c!1174411) b!6426779))

(assert (= (and b!6426775 (not c!1174411)) b!6426778))

(assert (= (and b!6426778 c!1174413) b!6426776))

(assert (= (and b!6426778 (not c!1174413)) b!6426772))

(assert (= (and b!6426776 (not res!2641415)) b!6426771))

(assert (= (and b!6426772 c!1174412) b!6426773))

(assert (= (and b!6426772 (not c!1174412)) b!6426769))

(assert (= (and b!6426773 (not res!2641416)) b!6426774))

(assert (= (or b!6426774 b!6426769) bm!552783))

(assert (= (or b!6426777 b!6426773) bm!552782))

(declare-fun m!7220778 () Bool)

(assert (=> b!6426771 m!7220778))

(assert (=> bm!552782 m!7220388))

(declare-fun m!7220780 () Bool)

(assert (=> b!6426776 m!7220780))

(declare-fun m!7220782 () Bool)

(assert (=> bm!552783 m!7220782))

(assert (=> b!6425799 d!2014880))

(declare-fun d!2014882 () Bool)

(assert (=> d!2014882 (= (matchR!8512 lt!2378027 s!2326) (matchRSpec!3430 lt!2378027 s!2326))))

(declare-fun lt!2378193 () Unit!158647)

(assert (=> d!2014882 (= lt!2378193 (choose!47757 lt!2378027 s!2326))))

(assert (=> d!2014882 (validRegex!8065 lt!2378027)))

(assert (=> d!2014882 (= (mainMatchTheorem!3430 lt!2378027 s!2326) lt!2378193)))

(declare-fun bs!1616560 () Bool)

(assert (= bs!1616560 d!2014882))

(assert (=> bs!1616560 m!7219950))

(assert (=> bs!1616560 m!7219952))

(declare-fun m!7220784 () Bool)

(assert (=> bs!1616560 m!7220784))

(assert (=> bs!1616560 m!7220774))

(assert (=> b!6425799 d!2014882))

(declare-fun d!2014884 () Bool)

(declare-fun lt!2378194 () Regex!16329)

(assert (=> d!2014884 (validRegex!8065 lt!2378194)))

(assert (=> d!2014884 (= lt!2378194 (generalisedUnion!2173 (unfocusZipperList!1750 (Cons!65164 lt!2378048 Nil!65164))))))

(assert (=> d!2014884 (= (unfocusZipper!2071 (Cons!65164 lt!2378048 Nil!65164)) lt!2378194)))

(declare-fun bs!1616561 () Bool)

(assert (= bs!1616561 d!2014884))

(declare-fun m!7220786 () Bool)

(assert (=> bs!1616561 m!7220786))

(declare-fun m!7220788 () Bool)

(assert (=> bs!1616561 m!7220788))

(assert (=> bs!1616561 m!7220788))

(declare-fun m!7220790 () Bool)

(assert (=> bs!1616561 m!7220790))

(assert (=> b!6425821 d!2014884))

(declare-fun b!6426790 () Bool)

(declare-fun e!3899078 () Bool)

(assert (=> b!6426790 (= e!3899078 tp_is_empty!41911)))

(declare-fun b!6426791 () Bool)

(declare-fun tp!1783675 () Bool)

(declare-fun tp!1783671 () Bool)

(assert (=> b!6426791 (= e!3899078 (and tp!1783675 tp!1783671))))

(declare-fun b!6426792 () Bool)

(declare-fun tp!1783674 () Bool)

(assert (=> b!6426792 (= e!3899078 tp!1783674)))

(declare-fun b!6426793 () Bool)

(declare-fun tp!1783672 () Bool)

(declare-fun tp!1783673 () Bool)

(assert (=> b!6426793 (= e!3899078 (and tp!1783672 tp!1783673))))

(assert (=> b!6425787 (= tp!1783598 e!3899078)))

(assert (= (and b!6425787 ((_ is ElementMatch!16329) (regOne!33170 r!7292))) b!6426790))

(assert (= (and b!6425787 ((_ is Concat!25174) (regOne!33170 r!7292))) b!6426791))

(assert (= (and b!6425787 ((_ is Star!16329) (regOne!33170 r!7292))) b!6426792))

(assert (= (and b!6425787 ((_ is Union!16329) (regOne!33170 r!7292))) b!6426793))

(declare-fun b!6426794 () Bool)

(declare-fun e!3899079 () Bool)

(assert (=> b!6426794 (= e!3899079 tp_is_empty!41911)))

(declare-fun b!6426795 () Bool)

(declare-fun tp!1783680 () Bool)

(declare-fun tp!1783676 () Bool)

(assert (=> b!6426795 (= e!3899079 (and tp!1783680 tp!1783676))))

(declare-fun b!6426796 () Bool)

(declare-fun tp!1783679 () Bool)

(assert (=> b!6426796 (= e!3899079 tp!1783679)))

(declare-fun b!6426797 () Bool)

(declare-fun tp!1783677 () Bool)

(declare-fun tp!1783678 () Bool)

(assert (=> b!6426797 (= e!3899079 (and tp!1783677 tp!1783678))))

(assert (=> b!6425787 (= tp!1783599 e!3899079)))

(assert (= (and b!6425787 ((_ is ElementMatch!16329) (regTwo!33170 r!7292))) b!6426794))

(assert (= (and b!6425787 ((_ is Concat!25174) (regTwo!33170 r!7292))) b!6426795))

(assert (= (and b!6425787 ((_ is Star!16329) (regTwo!33170 r!7292))) b!6426796))

(assert (= (and b!6425787 ((_ is Union!16329) (regTwo!33170 r!7292))) b!6426797))

(declare-fun b!6426802 () Bool)

(declare-fun e!3899082 () Bool)

(declare-fun tp!1783685 () Bool)

(declare-fun tp!1783686 () Bool)

(assert (=> b!6426802 (= e!3899082 (and tp!1783685 tp!1783686))))

(assert (=> b!6425818 (= tp!1783593 e!3899082)))

(assert (= (and b!6425818 ((_ is Cons!65163) (exprs!6213 (h!71612 zl!343)))) b!6426802))

(declare-fun b!6426803 () Bool)

(declare-fun e!3899083 () Bool)

(declare-fun tp!1783687 () Bool)

(declare-fun tp!1783688 () Bool)

(assert (=> b!6426803 (= e!3899083 (and tp!1783687 tp!1783688))))

(assert (=> b!6425824 (= tp!1783601 e!3899083)))

(assert (= (and b!6425824 ((_ is Cons!65163) (exprs!6213 setElem!43872))) b!6426803))

(declare-fun b!6426804 () Bool)

(declare-fun e!3899084 () Bool)

(assert (=> b!6426804 (= e!3899084 tp_is_empty!41911)))

(declare-fun b!6426805 () Bool)

(declare-fun tp!1783693 () Bool)

(declare-fun tp!1783689 () Bool)

(assert (=> b!6426805 (= e!3899084 (and tp!1783693 tp!1783689))))

(declare-fun b!6426806 () Bool)

(declare-fun tp!1783692 () Bool)

(assert (=> b!6426806 (= e!3899084 tp!1783692)))

(declare-fun b!6426807 () Bool)

(declare-fun tp!1783690 () Bool)

(declare-fun tp!1783691 () Bool)

(assert (=> b!6426807 (= e!3899084 (and tp!1783690 tp!1783691))))

(assert (=> b!6425808 (= tp!1783595 e!3899084)))

(assert (= (and b!6425808 ((_ is ElementMatch!16329) (regOne!33171 r!7292))) b!6426804))

(assert (= (and b!6425808 ((_ is Concat!25174) (regOne!33171 r!7292))) b!6426805))

(assert (= (and b!6425808 ((_ is Star!16329) (regOne!33171 r!7292))) b!6426806))

(assert (= (and b!6425808 ((_ is Union!16329) (regOne!33171 r!7292))) b!6426807))

(declare-fun b!6426808 () Bool)

(declare-fun e!3899085 () Bool)

(assert (=> b!6426808 (= e!3899085 tp_is_empty!41911)))

(declare-fun b!6426809 () Bool)

(declare-fun tp!1783698 () Bool)

(declare-fun tp!1783694 () Bool)

(assert (=> b!6426809 (= e!3899085 (and tp!1783698 tp!1783694))))

(declare-fun b!6426810 () Bool)

(declare-fun tp!1783697 () Bool)

(assert (=> b!6426810 (= e!3899085 tp!1783697)))

(declare-fun b!6426811 () Bool)

(declare-fun tp!1783695 () Bool)

(declare-fun tp!1783696 () Bool)

(assert (=> b!6426811 (= e!3899085 (and tp!1783695 tp!1783696))))

(assert (=> b!6425808 (= tp!1783600 e!3899085)))

(assert (= (and b!6425808 ((_ is ElementMatch!16329) (regTwo!33171 r!7292))) b!6426808))

(assert (= (and b!6425808 ((_ is Concat!25174) (regTwo!33171 r!7292))) b!6426809))

(assert (= (and b!6425808 ((_ is Star!16329) (regTwo!33171 r!7292))) b!6426810))

(assert (= (and b!6425808 ((_ is Union!16329) (regTwo!33171 r!7292))) b!6426811))

(declare-fun b!6426816 () Bool)

(declare-fun e!3899088 () Bool)

(declare-fun tp!1783701 () Bool)

(assert (=> b!6426816 (= e!3899088 (and tp_is_empty!41911 tp!1783701))))

(assert (=> b!6425800 (= tp!1783596 e!3899088)))

(assert (= (and b!6425800 ((_ is Cons!65162) (t!378902 s!2326))) b!6426816))

(declare-fun b!6426817 () Bool)

(declare-fun e!3899089 () Bool)

(assert (=> b!6426817 (= e!3899089 tp_is_empty!41911)))

(declare-fun b!6426818 () Bool)

(declare-fun tp!1783706 () Bool)

(declare-fun tp!1783702 () Bool)

(assert (=> b!6426818 (= e!3899089 (and tp!1783706 tp!1783702))))

(declare-fun b!6426819 () Bool)

(declare-fun tp!1783705 () Bool)

(assert (=> b!6426819 (= e!3899089 tp!1783705)))

(declare-fun b!6426820 () Bool)

(declare-fun tp!1783703 () Bool)

(declare-fun tp!1783704 () Bool)

(assert (=> b!6426820 (= e!3899089 (and tp!1783703 tp!1783704))))

(assert (=> b!6425820 (= tp!1783594 e!3899089)))

(assert (= (and b!6425820 ((_ is ElementMatch!16329) (reg!16658 r!7292))) b!6426817))

(assert (= (and b!6425820 ((_ is Concat!25174) (reg!16658 r!7292))) b!6426818))

(assert (= (and b!6425820 ((_ is Star!16329) (reg!16658 r!7292))) b!6426819))

(assert (= (and b!6425820 ((_ is Union!16329) (reg!16658 r!7292))) b!6426820))

(declare-fun condSetEmpty!43878 () Bool)

(assert (=> setNonEmpty!43872 (= condSetEmpty!43878 (= setRest!43872 ((as const (Array Context!11426 Bool)) false)))))

(declare-fun setRes!43878 () Bool)

(assert (=> setNonEmpty!43872 (= tp!1783597 setRes!43878)))

(declare-fun setIsEmpty!43878 () Bool)

(assert (=> setIsEmpty!43878 setRes!43878))

(declare-fun setNonEmpty!43878 () Bool)

(declare-fun setElem!43878 () Context!11426)

(declare-fun e!3899092 () Bool)

(declare-fun tp!1783711 () Bool)

(assert (=> setNonEmpty!43878 (= setRes!43878 (and tp!1783711 (inv!84069 setElem!43878) e!3899092))))

(declare-fun setRest!43878 () (InoxSet Context!11426))

(assert (=> setNonEmpty!43878 (= setRest!43872 ((_ map or) (store ((as const (Array Context!11426 Bool)) false) setElem!43878 true) setRest!43878))))

(declare-fun b!6426825 () Bool)

(declare-fun tp!1783712 () Bool)

(assert (=> b!6426825 (= e!3899092 tp!1783712)))

(assert (= (and setNonEmpty!43872 condSetEmpty!43878) setIsEmpty!43878))

(assert (= (and setNonEmpty!43872 (not condSetEmpty!43878)) setNonEmpty!43878))

(assert (= setNonEmpty!43878 b!6426825))

(declare-fun m!7220792 () Bool)

(assert (=> setNonEmpty!43878 m!7220792))

(declare-fun b!6426833 () Bool)

(declare-fun e!3899098 () Bool)

(declare-fun tp!1783717 () Bool)

(assert (=> b!6426833 (= e!3899098 tp!1783717)))

(declare-fun b!6426832 () Bool)

(declare-fun e!3899097 () Bool)

(declare-fun tp!1783718 () Bool)

(assert (=> b!6426832 (= e!3899097 (and (inv!84069 (h!71612 (t!378904 zl!343))) e!3899098 tp!1783718))))

(assert (=> b!6425810 (= tp!1783602 e!3899097)))

(assert (= b!6426832 b!6426833))

(assert (= (and b!6425810 ((_ is Cons!65164) (t!378904 zl!343))) b!6426832))

(declare-fun m!7220794 () Bool)

(assert (=> b!6426832 m!7220794))

(declare-fun b_lambda!244237 () Bool)

(assert (= b_lambda!244217 (or b!6425809 b_lambda!244237)))

(declare-fun bs!1616562 () Bool)

(declare-fun d!2014886 () Bool)

(assert (= bs!1616562 (and d!2014886 b!6425809)))

(assert (=> bs!1616562 (= (dynLambda!25885 lambda!355211 (h!71612 zl!343)) (derivationStepZipperUp!1503 (h!71612 zl!343) (h!71610 s!2326)))))

(assert (=> bs!1616562 m!7219886))

(assert (=> d!2014644 d!2014886))

(declare-fun b_lambda!244239 () Bool)

(assert (= b_lambda!244213 (or b!6425809 b_lambda!244239)))

(declare-fun bs!1616563 () Bool)

(declare-fun d!2014888 () Bool)

(assert (= bs!1616563 (and d!2014888 b!6425809)))

(assert (=> bs!1616563 (= (dynLambda!25885 lambda!355211 lt!2378041) (derivationStepZipperUp!1503 lt!2378041 (h!71610 s!2326)))))

(assert (=> bs!1616563 m!7219930))

(assert (=> d!2014620 d!2014888))

(declare-fun b_lambda!244241 () Bool)

(assert (= b_lambda!244215 (or b!6425809 b_lambda!244241)))

(declare-fun bs!1616564 () Bool)

(declare-fun d!2014890 () Bool)

(assert (= bs!1616564 (and d!2014890 b!6425809)))

(assert (=> bs!1616564 (= (dynLambda!25885 lambda!355211 lt!2378031) (derivationStepZipperUp!1503 lt!2378031 (h!71610 s!2326)))))

(assert (=> bs!1616564 m!7219942))

(assert (=> d!2014630 d!2014890))

(declare-fun b_lambda!244243 () Bool)

(assert (= b_lambda!244223 (or b!6425809 b_lambda!244243)))

(declare-fun bs!1616565 () Bool)

(declare-fun d!2014892 () Bool)

(assert (= bs!1616565 (and d!2014892 b!6425809)))

(assert (=> bs!1616565 (= (dynLambda!25885 lambda!355211 lt!2378048) (derivationStepZipperUp!1503 lt!2378048 (h!71610 s!2326)))))

(assert (=> bs!1616565 m!7219898))

(assert (=> d!2014794 d!2014892))

(check-sat (not bs!1616565) (not b!6426105) (not b!6425875) (not d!2014630) (not d!2014824) (not b!6426759) (not b!6426611) (not b!6426690) (not d!2014734) (not b!6426750) (not b!6426173) (not b!6426068) (not d!2014818) (not d!2014640) (not b!6426395) (not b!6426689) (not b!6426536) (not bm!552748) (not b!6426396) (not setNonEmpty!43878) (not b!6426443) (not bm!552721) (not b!6426771) (not b!6426110) (not d!2014638) (not b!6426797) (not b!6426796) (not b!6426760) (not b!6426387) (not b!6426696) (not d!2014676) (not d!2014832) (not d!2014636) (not d!2014684) (not b_lambda!244243) (not bs!1616563) (not b!6426692) (not d!2014826) (not b!6426819) (not b!6426816) (not b!6426112) (not d!2014864) (not d!2014874) (not b!6426793) (not b!6426080) (not bm!552688) (not d!2014708) (not b!6426825) (not bm!552691) (not b!6426419) (not bs!1616564) (not d!2014710) (not b!6426751) (not b!6425869) (not d!2014766) (not d!2014876) (not b!6426022) (not d!2014620) (not d!2014674) (not b!6426568) (not d!2014642) (not d!2014794) (not b!6426806) (not b!6426293) (not bm!552709) (not bm!552702) (not b!6426541) (not d!2014716) (not b!6426066) (not bm!552706) (not bm!552720) (not b!6425864) (not bm!552668) (not b!6426811) (not d!2014882) (not bm!552660) (not b!6426410) (not b!6426535) (not b!6426290) (not b!6426820) (not b_lambda!244237) (not b!6426294) (not b!6426818) (not b!6426346) (not bm!552747) (not b!6425872) (not d!2014816) (not b!6426347) (not b!6426832) (not b!6426752) (not d!2014616) (not b!6426805) (not b!6426168) (not b!6426755) (not b!6426388) (not b!6426098) (not d!2014788) (not b!6426767) (not b!6426353) (not b!6426342) (not d!2014754) (not b!6426107) (not b!6426572) (not b!6426091) (not b!6426438) (not b_lambda!244241) (not d!2014822) (not b!6426449) (not b!6426753) (not d!2014790) (not d!2014594) (not d!2014828) (not b!6426565) (not b!6426776) (not d!2014752) (not b!6426350) (not b!6426569) (not b!6426354) (not b!6426833) (not b!6426450) (not d!2014736) (not d!2014632) (not b!6426463) (not b!6426393) (not b!6426461) (not bm!552735) (not b_lambda!244239) (not d!2014884) (not b!6426464) (not b!6425868) (not b!6426442) (not d!2014762) (not b!6426089) (not d!2014690) (not b!6426564) (not bm!552736) (not d!2014704) (not b!6425920) (not b!6426694) (not b!6426414) (not d!2014796) (not d!2014764) (not d!2014830) (not bm!552687) (not b!6426462) (not b!6426807) (not b!6426792) (not b!6426082) (not b!6426810) (not d!2014612) (not b!6426286) (not b!6426122) (not b!6426612) (not b!6426471) (not d!2014706) (not b!6426803) (not bm!552711) (not bm!552782) (not d!2014596) (not b!6426468) (not b!6426795) (not b!6426597) (not b!6426598) (not bs!1616562) (not bm!552669) (not b!6426809) (not d!2014836) (not b!6426394) (not b!6426697) (not b!6426571) (not bm!552740) (not b!6426287) (not b!6426695) (not bm!552715) (not b!6426291) tp_is_empty!41911 (not bm!552703) (not d!2014678) (not b!6426390) (not b!6426766) (not b!6426763) (not b!6426552) (not bm!552704) (not d!2014834) (not d!2014732) (not d!2014644) (not b!6426754) (not bm!552705) (not b!6426470) (not b!6426599) (not bm!552714) (not d!2014802) (not bm!552712) (not bm!552783) (not b!6426791) (not b!6426539) (not d!2014686) (not b!6426467) (not b!6426446) (not bm!552781) (not bm!552732) (not d!2014878) (not bm!552745) (not d!2014750) (not b!6426802) (not b!6425876))
(check-sat)
