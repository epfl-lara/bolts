; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629226 () Bool)

(assert start!629226)

(declare-fun b!6350999 () Bool)

(assert (=> b!6350999 true))

(assert (=> b!6350999 true))

(declare-fun lambda!349352 () Int)

(declare-fun lambda!349351 () Int)

(assert (=> b!6350999 (not (= lambda!349352 lambda!349351))))

(assert (=> b!6350999 true))

(assert (=> b!6350999 true))

(declare-fun b!6350997 () Bool)

(assert (=> b!6350997 true))

(declare-fun bs!1590823 () Bool)

(declare-fun b!6351006 () Bool)

(assert (= bs!1590823 (and b!6351006 b!6350999)))

(declare-datatypes ((C!32784 0))(
  ( (C!32785 (val!26094 Int)) )
))
(declare-datatypes ((Regex!16257 0))(
  ( (ElementMatch!16257 (c!1155402 C!32784)) (Concat!25102 (regOne!33026 Regex!16257) (regTwo!33026 Regex!16257)) (EmptyExpr!16257) (Star!16257 (reg!16586 Regex!16257)) (EmptyLang!16257) (Union!16257 (regOne!33027 Regex!16257) (regTwo!33027 Regex!16257)) )
))
(declare-fun r!7292 () Regex!16257)

(declare-fun lambda!349354 () Int)

(declare-fun lt!2364674 () Regex!16257)

(assert (=> bs!1590823 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349354 lambda!349351))))

(assert (=> bs!1590823 (not (= lambda!349354 lambda!349352))))

(assert (=> b!6351006 true))

(assert (=> b!6351006 true))

(assert (=> b!6351006 true))

(declare-fun lambda!349355 () Int)

(assert (=> bs!1590823 (not (= lambda!349355 lambda!349351))))

(assert (=> bs!1590823 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349355 lambda!349352))))

(assert (=> b!6351006 (not (= lambda!349355 lambda!349354))))

(assert (=> b!6351006 true))

(assert (=> b!6351006 true))

(assert (=> b!6351006 true))

(declare-fun e!3857038 () Bool)

(declare-fun e!3857044 () Bool)

(assert (=> b!6350997 (= e!3857038 e!3857044)))

(declare-fun res!2613303 () Bool)

(assert (=> b!6350997 (=> res!2613303 e!3857044)))

(declare-datatypes ((List!65070 0))(
  ( (Nil!64946) (Cons!64946 (h!71394 C!32784) (t!378660 List!65070)) )
))
(declare-fun s!2326 () List!65070)

(get-info :version)

(assert (=> b!6350997 (= res!2613303 (or (and ((_ is ElementMatch!16257) (regOne!33026 r!7292)) (= (c!1155402 (regOne!33026 r!7292)) (h!71394 s!2326))) ((_ is Union!16257) (regOne!33026 r!7292))))))

(declare-datatypes ((Unit!158359 0))(
  ( (Unit!158360) )
))
(declare-fun lt!2364668 () Unit!158359)

(declare-fun e!3857047 () Unit!158359)

(assert (=> b!6350997 (= lt!2364668 e!3857047)))

(declare-fun c!1155401 () Bool)

(declare-datatypes ((List!65071 0))(
  ( (Nil!64947) (Cons!64947 (h!71395 Regex!16257) (t!378661 List!65071)) )
))
(declare-datatypes ((Context!11282 0))(
  ( (Context!11283 (exprs!6141 List!65071)) )
))
(declare-datatypes ((List!65072 0))(
  ( (Nil!64948) (Cons!64948 (h!71396 Context!11282) (t!378662 List!65072)) )
))
(declare-fun zl!343 () List!65072)

(declare-fun nullable!6250 (Regex!16257) Bool)

(assert (=> b!6350997 (= c!1155401 (nullable!6250 (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11282))

(declare-fun lambda!349353 () Int)

(declare-fun flatMap!1762 ((InoxSet Context!11282) Int) (InoxSet Context!11282))

(declare-fun derivationStepZipperUp!1431 (Context!11282 C!32784) (InoxSet Context!11282))

(assert (=> b!6350997 (= (flatMap!1762 z!1189 lambda!349353) (derivationStepZipperUp!1431 (h!71396 zl!343) (h!71394 s!2326)))))

(declare-fun lt!2364666 () Unit!158359)

(declare-fun lemmaFlatMapOnSingletonSet!1288 ((InoxSet Context!11282) Context!11282 Int) Unit!158359)

(assert (=> b!6350997 (= lt!2364666 (lemmaFlatMapOnSingletonSet!1288 z!1189 (h!71396 zl!343) lambda!349353))))

(declare-fun lt!2364671 () (InoxSet Context!11282))

(declare-fun lt!2364652 () Context!11282)

(assert (=> b!6350997 (= lt!2364671 (derivationStepZipperUp!1431 lt!2364652 (h!71394 s!2326)))))

(declare-fun lt!2364659 () (InoxSet Context!11282))

(declare-fun derivationStepZipperDown!1505 (Regex!16257 Context!11282 C!32784) (InoxSet Context!11282))

(assert (=> b!6350997 (= lt!2364659 (derivationStepZipperDown!1505 (h!71395 (exprs!6141 (h!71396 zl!343))) lt!2364652 (h!71394 s!2326)))))

(assert (=> b!6350997 (= lt!2364652 (Context!11283 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun lt!2364658 () (InoxSet Context!11282))

(assert (=> b!6350997 (= lt!2364658 (derivationStepZipperUp!1431 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343))))) (h!71394 s!2326)))))

(declare-fun b!6350998 () Bool)

(declare-fun res!2613310 () Bool)

(assert (=> b!6350998 (=> res!2613310 e!3857044)))

(assert (=> b!6350998 (= res!2613310 (not ((_ is Concat!25102) (regOne!33026 r!7292))))))

(declare-fun e!3857052 () Bool)

(assert (=> b!6350999 (= e!3857052 e!3857038)))

(declare-fun res!2613306 () Bool)

(assert (=> b!6350999 (=> res!2613306 e!3857038)))

(declare-fun lt!2364662 () Bool)

(declare-fun lt!2364667 () Bool)

(assert (=> b!6350999 (= res!2613306 (or (not (= lt!2364667 lt!2364662)) ((_ is Nil!64946) s!2326)))))

(declare-fun Exists!3327 (Int) Bool)

(assert (=> b!6350999 (= (Exists!3327 lambda!349351) (Exists!3327 lambda!349352))))

(declare-fun lt!2364661 () Unit!158359)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1864 (Regex!16257 Regex!16257 List!65070) Unit!158359)

(assert (=> b!6350999 (= lt!2364661 (lemmaExistCutMatchRandMatchRSpecEquivalent!1864 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326))))

(assert (=> b!6350999 (= lt!2364662 (Exists!3327 lambda!349351))))

(declare-datatypes ((tuple2!66472 0))(
  ( (tuple2!66473 (_1!36539 List!65070) (_2!36539 List!65070)) )
))
(declare-datatypes ((Option!16148 0))(
  ( (None!16147) (Some!16147 (v!52316 tuple2!66472)) )
))
(declare-fun isDefined!12851 (Option!16148) Bool)

(declare-fun findConcatSeparation!2562 (Regex!16257 Regex!16257 List!65070 List!65070 List!65070) Option!16148)

(assert (=> b!6350999 (= lt!2364662 (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) Nil!64946 s!2326 s!2326)))))

(declare-fun lt!2364650 () Unit!158359)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2326 (Regex!16257 Regex!16257 List!65070) Unit!158359)

(assert (=> b!6350999 (= lt!2364650 (lemmaFindConcatSeparationEquivalentToExists!2326 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326))))

(declare-fun b!6351000 () Bool)

(declare-fun e!3857046 () Bool)

(declare-fun e!3857040 () Bool)

(declare-fun tp!1770002 () Bool)

(declare-fun inv!83889 (Context!11282) Bool)

(assert (=> b!6351000 (= e!3857046 (and (inv!83889 (h!71396 zl!343)) e!3857040 tp!1770002))))

(declare-fun b!6351001 () Bool)

(declare-fun e!3857053 () Bool)

(declare-fun tp_is_empty!41767 () Bool)

(declare-fun tp!1769995 () Bool)

(assert (=> b!6351001 (= e!3857053 (and tp_is_empty!41767 tp!1769995))))

(declare-fun b!6351002 () Bool)

(declare-fun res!2613317 () Bool)

(assert (=> b!6351002 (=> res!2613317 e!3857052)))

(declare-fun generalisedUnion!2101 (List!65071) Regex!16257)

(declare-fun unfocusZipperList!1678 (List!65072) List!65071)

(assert (=> b!6351002 (= res!2613317 (not (= r!7292 (generalisedUnion!2101 (unfocusZipperList!1678 zl!343)))))))

(declare-fun b!6351003 () Bool)

(declare-fun e!3857054 () Bool)

(declare-fun e!3857048 () Bool)

(assert (=> b!6351003 (= e!3857054 e!3857048)))

(declare-fun res!2613302 () Bool)

(assert (=> b!6351003 (=> res!2613302 e!3857048)))

(declare-fun lt!2364672 () (InoxSet Context!11282))

(declare-fun lt!2364663 () Bool)

(declare-fun matchZipper!2269 ((InoxSet Context!11282) List!65070) Bool)

(assert (=> b!6351003 (= res!2613302 (not (= lt!2364663 (matchZipper!2269 lt!2364672 (t!378660 s!2326)))))))

(assert (=> b!6351003 (= lt!2364663 (matchZipper!2269 lt!2364659 (t!378660 s!2326)))))

(declare-fun b!6351004 () Bool)

(declare-fun res!2613313 () Bool)

(assert (=> b!6351004 (=> res!2613313 e!3857038)))

(declare-fun isEmpty!37037 (List!65071) Bool)

(assert (=> b!6351004 (= res!2613313 (isEmpty!37037 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351005 () Bool)

(declare-fun res!2613321 () Bool)

(assert (=> b!6351005 (=> res!2613321 e!3857052)))

(assert (=> b!6351005 (= res!2613321 (or ((_ is EmptyExpr!16257) r!7292) ((_ is EmptyLang!16257) r!7292) ((_ is ElementMatch!16257) r!7292) ((_ is Union!16257) r!7292) (not ((_ is Concat!25102) r!7292))))))

(declare-fun e!3857051 () Bool)

(declare-fun e!3857039 () Bool)

(assert (=> b!6351006 (= e!3857051 e!3857039)))

(declare-fun res!2613304 () Bool)

(assert (=> b!6351006 (=> res!2613304 e!3857039)))

(declare-fun validRegex!7993 (Regex!16257) Bool)

(assert (=> b!6351006 (= res!2613304 (not (validRegex!7993 (regTwo!33026 (regOne!33026 r!7292)))))))

(declare-fun lt!2364664 () Regex!16257)

(declare-fun generalisedConcat!1854 (List!65071) Regex!16257)

(assert (=> b!6351006 (= lt!2364664 (generalisedConcat!1854 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun matchR!8440 (Regex!16257 List!65070) Bool)

(declare-fun matchRSpec!3358 (Regex!16257 List!65070) Bool)

(assert (=> b!6351006 (= (matchR!8440 lt!2364674 s!2326) (matchRSpec!3358 lt!2364674 s!2326))))

(declare-fun lt!2364651 () Unit!158359)

(declare-fun mainMatchTheorem!3358 (Regex!16257 List!65070) Unit!158359)

(assert (=> b!6351006 (= lt!2364651 (mainMatchTheorem!3358 lt!2364674 s!2326))))

(assert (=> b!6351006 (= (Exists!3327 lambda!349354) (Exists!3327 lambda!349355))))

(declare-fun lt!2364677 () Unit!158359)

(assert (=> b!6351006 (= lt!2364677 (lemmaExistCutMatchRandMatchRSpecEquivalent!1864 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326))))

(assert (=> b!6351006 (= (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 Nil!64946 s!2326 s!2326)) (Exists!3327 lambda!349354))))

(declare-fun lt!2364673 () Unit!158359)

(assert (=> b!6351006 (= lt!2364673 (lemmaFindConcatSeparationEquivalentToExists!2326 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326))))

(declare-fun lt!2364675 () List!65071)

(assert (=> b!6351006 (= lt!2364674 (generalisedConcat!1854 lt!2364675))))

(declare-fun lt!2364676 () Bool)

(declare-fun lt!2364657 () Regex!16257)

(assert (=> b!6351006 (= lt!2364676 (matchRSpec!3358 lt!2364657 s!2326))))

(declare-fun lt!2364680 () Unit!158359)

(assert (=> b!6351006 (= lt!2364680 (mainMatchTheorem!3358 lt!2364657 s!2326))))

(declare-fun lt!2364678 () (InoxSet Context!11282))

(assert (=> b!6351006 (= lt!2364676 (matchZipper!2269 lt!2364678 s!2326))))

(assert (=> b!6351006 (= lt!2364676 (matchR!8440 lt!2364657 s!2326))))

(declare-fun lt!2364665 () Unit!158359)

(declare-fun lt!2364660 () List!65072)

(declare-fun theoremZipperRegexEquiv!799 ((InoxSet Context!11282) List!65072 Regex!16257 List!65070) Unit!158359)

(assert (=> b!6351006 (= lt!2364665 (theoremZipperRegexEquiv!799 lt!2364678 lt!2364660 lt!2364657 s!2326))))

(declare-fun lt!2364670 () List!65071)

(assert (=> b!6351006 (= lt!2364657 (generalisedConcat!1854 lt!2364670))))

(declare-fun b!6351007 () Bool)

(assert (=> b!6351007 (= e!3857039 (validRegex!7993 lt!2364664))))

(declare-fun b!6351008 () Bool)

(declare-fun e!3857050 () Bool)

(declare-fun tp!1770000 () Bool)

(declare-fun tp!1769994 () Bool)

(assert (=> b!6351008 (= e!3857050 (and tp!1770000 tp!1769994))))

(declare-fun b!6351009 () Bool)

(declare-fun res!2613298 () Bool)

(assert (=> b!6351009 (=> res!2613298 e!3857052)))

(assert (=> b!6351009 (= res!2613298 (not ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351010 () Bool)

(declare-fun res!2613320 () Bool)

(declare-fun e!3857043 () Bool)

(assert (=> b!6351010 (=> (not res!2613320) (not e!3857043))))

(declare-fun toList!10041 ((InoxSet Context!11282)) List!65072)

(assert (=> b!6351010 (= res!2613320 (= (toList!10041 z!1189) zl!343))))

(declare-fun b!6351011 () Bool)

(declare-fun e!3857045 () Bool)

(assert (=> b!6351011 (= e!3857048 e!3857045)))

(declare-fun res!2613312 () Bool)

(assert (=> b!6351011 (=> res!2613312 e!3857045)))

(declare-fun lt!2364655 () (InoxSet Context!11282))

(assert (=> b!6351011 (= res!2613312 (not (= lt!2364655 lt!2364672)))))

(declare-fun lt!2364656 () Context!11282)

(assert (=> b!6351011 (= (flatMap!1762 lt!2364678 lambda!349353) (derivationStepZipperUp!1431 lt!2364656 (h!71394 s!2326)))))

(declare-fun lt!2364669 () Unit!158359)

(assert (=> b!6351011 (= lt!2364669 (lemmaFlatMapOnSingletonSet!1288 lt!2364678 lt!2364656 lambda!349353))))

(declare-fun lt!2364653 () (InoxSet Context!11282))

(assert (=> b!6351011 (= lt!2364653 (derivationStepZipperUp!1431 lt!2364656 (h!71394 s!2326)))))

(declare-fun derivationStepZipper!2223 ((InoxSet Context!11282) C!32784) (InoxSet Context!11282))

(assert (=> b!6351011 (= lt!2364655 (derivationStepZipper!2223 lt!2364678 (h!71394 s!2326)))))

(assert (=> b!6351011 (= lt!2364678 (store ((as const (Array Context!11282 Bool)) false) lt!2364656 true))))

(assert (=> b!6351011 (= lt!2364656 (Context!11283 lt!2364670))))

(assert (=> b!6351011 (= lt!2364670 (Cons!64947 (regOne!33026 (regOne!33026 r!7292)) lt!2364675))))

(declare-fun b!6351012 () Bool)

(declare-fun res!2613309 () Bool)

(assert (=> b!6351012 (=> res!2613309 e!3857051)))

(declare-fun zipperDepth!364 (List!65072) Int)

(assert (=> b!6351012 (= res!2613309 (> (zipperDepth!364 lt!2364660) (zipperDepth!364 zl!343)))))

(declare-fun b!6351013 () Bool)

(assert (=> b!6351013 (= e!3857043 (not e!3857052))))

(declare-fun res!2613305 () Bool)

(assert (=> b!6351013 (=> res!2613305 e!3857052)))

(assert (=> b!6351013 (= res!2613305 (not ((_ is Cons!64948) zl!343)))))

(assert (=> b!6351013 (= lt!2364667 (matchRSpec!3358 r!7292 s!2326))))

(assert (=> b!6351013 (= lt!2364667 (matchR!8440 r!7292 s!2326))))

(declare-fun lt!2364654 () Unit!158359)

(assert (=> b!6351013 (= lt!2364654 (mainMatchTheorem!3358 r!7292 s!2326))))

(declare-fun res!2613314 () Bool)

(assert (=> start!629226 (=> (not res!2613314) (not e!3857043))))

(assert (=> start!629226 (= res!2613314 (validRegex!7993 r!7292))))

(assert (=> start!629226 e!3857043))

(assert (=> start!629226 e!3857050))

(declare-fun condSetEmpty!43246 () Bool)

(assert (=> start!629226 (= condSetEmpty!43246 (= z!1189 ((as const (Array Context!11282 Bool)) false)))))

(declare-fun setRes!43246 () Bool)

(assert (=> start!629226 setRes!43246))

(assert (=> start!629226 e!3857046))

(assert (=> start!629226 e!3857053))

(declare-fun e!3857042 () Bool)

(declare-fun tp!1769996 () Bool)

(declare-fun setElem!43246 () Context!11282)

(declare-fun setNonEmpty!43246 () Bool)

(assert (=> setNonEmpty!43246 (= setRes!43246 (and tp!1769996 (inv!83889 setElem!43246) e!3857042))))

(declare-fun setRest!43246 () (InoxSet Context!11282))

(assert (=> setNonEmpty!43246 (= z!1189 ((_ map or) (store ((as const (Array Context!11282 Bool)) false) setElem!43246 true) setRest!43246))))

(declare-fun b!6351014 () Bool)

(assert (=> b!6351014 (= e!3857045 e!3857051)))

(declare-fun res!2613311 () Bool)

(assert (=> b!6351014 (=> res!2613311 e!3857051)))

(declare-fun zipperDepthTotal!394 (List!65072) Int)

(assert (=> b!6351014 (= res!2613311 (>= (zipperDepthTotal!394 lt!2364660) (zipperDepthTotal!394 zl!343)))))

(assert (=> b!6351014 (= lt!2364660 (Cons!64948 lt!2364656 Nil!64948))))

(declare-fun b!6351015 () Bool)

(declare-fun res!2613318 () Bool)

(assert (=> b!6351015 (=> res!2613318 e!3857045)))

(assert (=> b!6351015 (= res!2613318 (not (= lt!2364663 (matchZipper!2269 lt!2364655 (t!378660 s!2326)))))))

(declare-fun b!6351016 () Bool)

(declare-fun Unit!158361 () Unit!158359)

(assert (=> b!6351016 (= e!3857047 Unit!158361)))

(declare-fun b!6351017 () Bool)

(declare-fun tp!1769993 () Bool)

(assert (=> b!6351017 (= e!3857040 tp!1769993)))

(declare-fun b!6351018 () Bool)

(declare-fun e!3857049 () Bool)

(assert (=> b!6351018 (= e!3857049 (matchZipper!2269 lt!2364671 (t!378660 s!2326)))))

(declare-fun b!6351019 () Bool)

(declare-fun res!2613307 () Bool)

(assert (=> b!6351019 (=> res!2613307 e!3857045)))

(declare-fun contextDepthTotal!366 (Context!11282) Int)

(assert (=> b!6351019 (= res!2613307 (>= (contextDepthTotal!366 lt!2364656) (contextDepthTotal!366 (h!71396 zl!343))))))

(declare-fun b!6351020 () Bool)

(declare-fun res!2613315 () Bool)

(assert (=> b!6351020 (=> (not res!2613315) (not e!3857043))))

(declare-fun unfocusZipper!1999 (List!65072) Regex!16257)

(assert (=> b!6351020 (= res!2613315 (= r!7292 (unfocusZipper!1999 zl!343)))))

(declare-fun b!6351021 () Bool)

(declare-fun res!2613319 () Bool)

(assert (=> b!6351021 (=> res!2613319 e!3857045)))

(assert (=> b!6351021 (= res!2613319 (not (= (exprs!6141 (h!71396 zl!343)) (Cons!64947 (Concat!25102 (regOne!33026 (regOne!33026 r!7292)) (regTwo!33026 (regOne!33026 r!7292))) (t!378661 (exprs!6141 (h!71396 zl!343)))))))))

(declare-fun setIsEmpty!43246 () Bool)

(assert (=> setIsEmpty!43246 setRes!43246))

(declare-fun b!6351022 () Bool)

(declare-fun tp!1770001 () Bool)

(assert (=> b!6351022 (= e!3857050 tp!1770001)))

(declare-fun b!6351023 () Bool)

(declare-fun res!2613322 () Bool)

(assert (=> b!6351023 (=> res!2613322 e!3857052)))

(declare-fun isEmpty!37038 (List!65072) Bool)

(assert (=> b!6351023 (= res!2613322 (not (isEmpty!37038 (t!378662 zl!343))))))

(declare-fun b!6351024 () Bool)

(declare-fun Unit!158362 () Unit!158359)

(assert (=> b!6351024 (= e!3857047 Unit!158362)))

(declare-fun lt!2364679 () Unit!158359)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1088 ((InoxSet Context!11282) (InoxSet Context!11282) List!65070) Unit!158359)

(assert (=> b!6351024 (= lt!2364679 (lemmaZipperConcatMatchesSameAsBothZippers!1088 lt!2364659 lt!2364671 (t!378660 s!2326)))))

(declare-fun res!2613301 () Bool)

(assert (=> b!6351024 (= res!2613301 (matchZipper!2269 lt!2364659 (t!378660 s!2326)))))

(assert (=> b!6351024 (=> res!2613301 e!3857049)))

(assert (=> b!6351024 (= (matchZipper!2269 ((_ map or) lt!2364659 lt!2364671) (t!378660 s!2326)) e!3857049)))

(declare-fun b!6351025 () Bool)

(assert (=> b!6351025 (= e!3857050 tp_is_empty!41767)))

(declare-fun b!6351026 () Bool)

(declare-fun res!2613308 () Bool)

(assert (=> b!6351026 (=> res!2613308 e!3857052)))

(assert (=> b!6351026 (= res!2613308 (not (= r!7292 (generalisedConcat!1854 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun b!6351027 () Bool)

(declare-fun tp!1769998 () Bool)

(declare-fun tp!1769997 () Bool)

(assert (=> b!6351027 (= e!3857050 (and tp!1769998 tp!1769997))))

(declare-fun b!6351028 () Bool)

(declare-fun res!2613300 () Bool)

(assert (=> b!6351028 (=> res!2613300 e!3857044)))

(declare-fun e!3857041 () Bool)

(assert (=> b!6351028 (= res!2613300 e!3857041)))

(declare-fun res!2613316 () Bool)

(assert (=> b!6351028 (=> (not res!2613316) (not e!3857041))))

(assert (=> b!6351028 (= res!2613316 ((_ is Concat!25102) (regOne!33026 r!7292)))))

(declare-fun b!6351029 () Bool)

(declare-fun tp!1769999 () Bool)

(assert (=> b!6351029 (= e!3857042 tp!1769999)))

(declare-fun b!6351030 () Bool)

(assert (=> b!6351030 (= e!3857044 e!3857054)))

(declare-fun res!2613299 () Bool)

(assert (=> b!6351030 (=> res!2613299 e!3857054)))

(assert (=> b!6351030 (= res!2613299 (not (= lt!2364659 lt!2364672)))))

(assert (=> b!6351030 (= lt!2364672 (derivationStepZipperDown!1505 (regOne!33026 (regOne!33026 r!7292)) (Context!11283 lt!2364675) (h!71394 s!2326)))))

(assert (=> b!6351030 (= lt!2364675 (Cons!64947 (regTwo!33026 (regOne!33026 r!7292)) (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351031 () Bool)

(assert (=> b!6351031 (= e!3857041 (nullable!6250 (regOne!33026 (regOne!33026 r!7292))))))

(assert (= (and start!629226 res!2613314) b!6351010))

(assert (= (and b!6351010 res!2613320) b!6351020))

(assert (= (and b!6351020 res!2613315) b!6351013))

(assert (= (and b!6351013 (not res!2613305)) b!6351023))

(assert (= (and b!6351023 (not res!2613322)) b!6351026))

(assert (= (and b!6351026 (not res!2613308)) b!6351009))

(assert (= (and b!6351009 (not res!2613298)) b!6351002))

(assert (= (and b!6351002 (not res!2613317)) b!6351005))

(assert (= (and b!6351005 (not res!2613321)) b!6350999))

(assert (= (and b!6350999 (not res!2613306)) b!6351004))

(assert (= (and b!6351004 (not res!2613313)) b!6350997))

(assert (= (and b!6350997 c!1155401) b!6351024))

(assert (= (and b!6350997 (not c!1155401)) b!6351016))

(assert (= (and b!6351024 (not res!2613301)) b!6351018))

(assert (= (and b!6350997 (not res!2613303)) b!6351028))

(assert (= (and b!6351028 res!2613316) b!6351031))

(assert (= (and b!6351028 (not res!2613300)) b!6350998))

(assert (= (and b!6350998 (not res!2613310)) b!6351030))

(assert (= (and b!6351030 (not res!2613299)) b!6351003))

(assert (= (and b!6351003 (not res!2613302)) b!6351011))

(assert (= (and b!6351011 (not res!2613312)) b!6351015))

(assert (= (and b!6351015 (not res!2613318)) b!6351021))

(assert (= (and b!6351021 (not res!2613319)) b!6351019))

(assert (= (and b!6351019 (not res!2613307)) b!6351014))

(assert (= (and b!6351014 (not res!2613311)) b!6351012))

(assert (= (and b!6351012 (not res!2613309)) b!6351006))

(assert (= (and b!6351006 (not res!2613304)) b!6351007))

(assert (= (and start!629226 ((_ is ElementMatch!16257) r!7292)) b!6351025))

(assert (= (and start!629226 ((_ is Concat!25102) r!7292)) b!6351008))

(assert (= (and start!629226 ((_ is Star!16257) r!7292)) b!6351022))

(assert (= (and start!629226 ((_ is Union!16257) r!7292)) b!6351027))

(assert (= (and start!629226 condSetEmpty!43246) setIsEmpty!43246))

(assert (= (and start!629226 (not condSetEmpty!43246)) setNonEmpty!43246))

(assert (= setNonEmpty!43246 b!6351029))

(assert (= b!6351000 b!6351017))

(assert (= (and start!629226 ((_ is Cons!64948) zl!343)) b!6351000))

(assert (= (and start!629226 ((_ is Cons!64946) s!2326)) b!6351001))

(declare-fun m!7157956 () Bool)

(assert (=> b!6351024 m!7157956))

(declare-fun m!7157958 () Bool)

(assert (=> b!6351024 m!7157958))

(declare-fun m!7157960 () Bool)

(assert (=> b!6351024 m!7157960))

(declare-fun m!7157962 () Bool)

(assert (=> b!6351011 m!7157962))

(declare-fun m!7157964 () Bool)

(assert (=> b!6351011 m!7157964))

(declare-fun m!7157966 () Bool)

(assert (=> b!6351011 m!7157966))

(declare-fun m!7157968 () Bool)

(assert (=> b!6351011 m!7157968))

(declare-fun m!7157970 () Bool)

(assert (=> b!6351011 m!7157970))

(declare-fun m!7157972 () Bool)

(assert (=> b!6351002 m!7157972))

(assert (=> b!6351002 m!7157972))

(declare-fun m!7157974 () Bool)

(assert (=> b!6351002 m!7157974))

(declare-fun m!7157976 () Bool)

(assert (=> b!6351014 m!7157976))

(declare-fun m!7157978 () Bool)

(assert (=> b!6351014 m!7157978))

(declare-fun m!7157980 () Bool)

(assert (=> b!6351013 m!7157980))

(declare-fun m!7157982 () Bool)

(assert (=> b!6351013 m!7157982))

(declare-fun m!7157984 () Bool)

(assert (=> b!6351013 m!7157984))

(declare-fun m!7157986 () Bool)

(assert (=> setNonEmpty!43246 m!7157986))

(declare-fun m!7157988 () Bool)

(assert (=> b!6350999 m!7157988))

(declare-fun m!7157990 () Bool)

(assert (=> b!6350999 m!7157990))

(declare-fun m!7157992 () Bool)

(assert (=> b!6350999 m!7157992))

(declare-fun m!7157994 () Bool)

(assert (=> b!6350999 m!7157994))

(assert (=> b!6350999 m!7157988))

(declare-fun m!7157996 () Bool)

(assert (=> b!6350999 m!7157996))

(assert (=> b!6350999 m!7157990))

(declare-fun m!7157998 () Bool)

(assert (=> b!6350999 m!7157998))

(declare-fun m!7158000 () Bool)

(assert (=> b!6351023 m!7158000))

(declare-fun m!7158002 () Bool)

(assert (=> b!6351020 m!7158002))

(declare-fun m!7158004 () Bool)

(assert (=> b!6351004 m!7158004))

(declare-fun m!7158006 () Bool)

(assert (=> b!6351012 m!7158006))

(declare-fun m!7158008 () Bool)

(assert (=> b!6351012 m!7158008))

(declare-fun m!7158010 () Bool)

(assert (=> b!6351019 m!7158010))

(declare-fun m!7158012 () Bool)

(assert (=> b!6351019 m!7158012))

(declare-fun m!7158014 () Bool)

(assert (=> b!6351030 m!7158014))

(declare-fun m!7158016 () Bool)

(assert (=> start!629226 m!7158016))

(declare-fun m!7158018 () Bool)

(assert (=> b!6351003 m!7158018))

(assert (=> b!6351003 m!7157958))

(declare-fun m!7158020 () Bool)

(assert (=> b!6351015 m!7158020))

(declare-fun m!7158022 () Bool)

(assert (=> b!6351026 m!7158022))

(declare-fun m!7158024 () Bool)

(assert (=> b!6351031 m!7158024))

(declare-fun m!7158026 () Bool)

(assert (=> b!6351006 m!7158026))

(declare-fun m!7158028 () Bool)

(assert (=> b!6351006 m!7158028))

(declare-fun m!7158030 () Bool)

(assert (=> b!6351006 m!7158030))

(declare-fun m!7158032 () Bool)

(assert (=> b!6351006 m!7158032))

(declare-fun m!7158034 () Bool)

(assert (=> b!6351006 m!7158034))

(declare-fun m!7158036 () Bool)

(assert (=> b!6351006 m!7158036))

(declare-fun m!7158038 () Bool)

(assert (=> b!6351006 m!7158038))

(declare-fun m!7158040 () Bool)

(assert (=> b!6351006 m!7158040))

(declare-fun m!7158042 () Bool)

(assert (=> b!6351006 m!7158042))

(declare-fun m!7158044 () Bool)

(assert (=> b!6351006 m!7158044))

(declare-fun m!7158046 () Bool)

(assert (=> b!6351006 m!7158046))

(declare-fun m!7158048 () Bool)

(assert (=> b!6351006 m!7158048))

(declare-fun m!7158050 () Bool)

(assert (=> b!6351006 m!7158050))

(assert (=> b!6351006 m!7158042))

(declare-fun m!7158052 () Bool)

(assert (=> b!6351006 m!7158052))

(declare-fun m!7158054 () Bool)

(assert (=> b!6351006 m!7158054))

(declare-fun m!7158056 () Bool)

(assert (=> b!6351006 m!7158056))

(declare-fun m!7158058 () Bool)

(assert (=> b!6351006 m!7158058))

(assert (=> b!6351006 m!7158032))

(declare-fun m!7158060 () Bool)

(assert (=> b!6351006 m!7158060))

(declare-fun m!7158062 () Bool)

(assert (=> b!6351007 m!7158062))

(declare-fun m!7158064 () Bool)

(assert (=> b!6350997 m!7158064))

(declare-fun m!7158066 () Bool)

(assert (=> b!6350997 m!7158066))

(declare-fun m!7158068 () Bool)

(assert (=> b!6350997 m!7158068))

(declare-fun m!7158070 () Bool)

(assert (=> b!6350997 m!7158070))

(declare-fun m!7158072 () Bool)

(assert (=> b!6350997 m!7158072))

(declare-fun m!7158074 () Bool)

(assert (=> b!6350997 m!7158074))

(declare-fun m!7158076 () Bool)

(assert (=> b!6350997 m!7158076))

(declare-fun m!7158078 () Bool)

(assert (=> b!6351018 m!7158078))

(declare-fun m!7158080 () Bool)

(assert (=> b!6351010 m!7158080))

(declare-fun m!7158082 () Bool)

(assert (=> b!6351000 m!7158082))

(check-sat (not b!6351001) (not b!6351010) (not b!6351027) (not b!6351008) (not setNonEmpty!43246) (not b!6351019) (not b!6351014) (not b!6351017) (not b!6351030) (not b!6351022) (not b!6351012) (not b!6351003) (not b!6351007) (not b!6351015) (not b!6351031) (not b!6351000) (not b!6351026) (not b!6351018) tp_is_empty!41767 (not b!6351011) (not b!6351024) (not b!6351006) (not b!6351020) (not b!6351023) (not b!6351004) (not b!6350997) (not b!6351002) (not b!6351029) (not b!6351013) (not start!629226) (not b!6350999))
(check-sat)
(get-model)

(declare-fun d!1992920 () Bool)

(declare-fun e!3857118 () Bool)

(assert (=> d!1992920 e!3857118))

(declare-fun res!2613363 () Bool)

(assert (=> d!1992920 (=> (not res!2613363) (not e!3857118))))

(declare-fun lt!2364692 () List!65072)

(declare-fun noDuplicate!2086 (List!65072) Bool)

(assert (=> d!1992920 (= res!2613363 (noDuplicate!2086 lt!2364692))))

(declare-fun choose!47125 ((InoxSet Context!11282)) List!65072)

(assert (=> d!1992920 (= lt!2364692 (choose!47125 z!1189))))

(assert (=> d!1992920 (= (toList!10041 z!1189) lt!2364692)))

(declare-fun b!6351152 () Bool)

(declare-fun content!12257 (List!65072) (InoxSet Context!11282))

(assert (=> b!6351152 (= e!3857118 (= (content!12257 lt!2364692) z!1189))))

(assert (= (and d!1992920 res!2613363) b!6351152))

(declare-fun m!7158112 () Bool)

(assert (=> d!1992920 m!7158112))

(declare-fun m!7158114 () Bool)

(assert (=> d!1992920 m!7158114))

(declare-fun m!7158116 () Bool)

(assert (=> b!6351152 m!7158116))

(assert (=> b!6351010 d!1992920))

(declare-fun b!6351245 () Bool)

(declare-fun e!3857173 () Bool)

(assert (=> b!6351245 (= e!3857173 (nullable!6250 (regOne!33026 (regOne!33026 (regOne!33026 r!7292)))))))

(declare-fun bm!541597 () Bool)

(declare-fun call!541604 () List!65071)

(declare-fun call!541606 () List!65071)

(assert (=> bm!541597 (= call!541604 call!541606)))

(declare-fun bm!541598 () Bool)

(declare-fun call!541603 () (InoxSet Context!11282))

(declare-fun call!541607 () (InoxSet Context!11282))

(assert (=> bm!541598 (= call!541603 call!541607)))

(declare-fun b!6351246 () Bool)

(declare-fun e!3857175 () (InoxSet Context!11282))

(assert (=> b!6351246 (= e!3857175 (store ((as const (Array Context!11282 Bool)) false) (Context!11283 lt!2364675) true))))

(declare-fun c!1155478 () Bool)

(declare-fun c!1155481 () Bool)

(declare-fun bm!541599 () Bool)

(declare-fun c!1155480 () Bool)

(assert (=> bm!541599 (= call!541607 (derivationStepZipperDown!1505 (ite c!1155481 (regOne!33027 (regOne!33026 (regOne!33026 r!7292))) (ite c!1155478 (regTwo!33026 (regOne!33026 (regOne!33026 r!7292))) (ite c!1155480 (regOne!33026 (regOne!33026 (regOne!33026 r!7292))) (reg!16586 (regOne!33026 (regOne!33026 r!7292)))))) (ite (or c!1155481 c!1155478) (Context!11283 lt!2364675) (Context!11283 call!541604)) (h!71394 s!2326)))))

(declare-fun b!6351247 () Bool)

(declare-fun e!3857172 () (InoxSet Context!11282))

(declare-fun call!541605 () (InoxSet Context!11282))

(assert (=> b!6351247 (= e!3857172 call!541605)))

(declare-fun b!6351248 () Bool)

(declare-fun e!3857176 () (InoxSet Context!11282))

(assert (=> b!6351248 (= e!3857176 call!541605)))

(declare-fun b!6351249 () Bool)

(assert (=> b!6351249 (= c!1155478 e!3857173)))

(declare-fun res!2613384 () Bool)

(assert (=> b!6351249 (=> (not res!2613384) (not e!3857173))))

(assert (=> b!6351249 (= res!2613384 ((_ is Concat!25102) (regOne!33026 (regOne!33026 r!7292))))))

(declare-fun e!3857171 () (InoxSet Context!11282))

(declare-fun e!3857174 () (InoxSet Context!11282))

(assert (=> b!6351249 (= e!3857171 e!3857174)))

(declare-fun b!6351250 () Bool)

(declare-fun c!1155479 () Bool)

(assert (=> b!6351250 (= c!1155479 ((_ is Star!16257) (regOne!33026 (regOne!33026 r!7292))))))

(assert (=> b!6351250 (= e!3857172 e!3857176)))

(declare-fun b!6351251 () Bool)

(declare-fun call!541602 () (InoxSet Context!11282))

(assert (=> b!6351251 (= e!3857171 ((_ map or) call!541607 call!541602))))

(declare-fun b!6351252 () Bool)

(assert (=> b!6351252 (= e!3857175 e!3857171)))

(assert (=> b!6351252 (= c!1155481 ((_ is Union!16257) (regOne!33026 (regOne!33026 r!7292))))))

(declare-fun b!6351253 () Bool)

(assert (=> b!6351253 (= e!3857174 ((_ map or) call!541602 call!541603))))

(declare-fun bm!541600 () Bool)

(assert (=> bm!541600 (= call!541605 call!541603)))

(declare-fun d!1992922 () Bool)

(declare-fun c!1155477 () Bool)

(assert (=> d!1992922 (= c!1155477 (and ((_ is ElementMatch!16257) (regOne!33026 (regOne!33026 r!7292))) (= (c!1155402 (regOne!33026 (regOne!33026 r!7292))) (h!71394 s!2326))))))

(assert (=> d!1992922 (= (derivationStepZipperDown!1505 (regOne!33026 (regOne!33026 r!7292)) (Context!11283 lt!2364675) (h!71394 s!2326)) e!3857175)))

(declare-fun bm!541601 () Bool)

(declare-fun $colon$colon!2118 (List!65071 Regex!16257) List!65071)

(assert (=> bm!541601 (= call!541606 ($colon$colon!2118 (exprs!6141 (Context!11283 lt!2364675)) (ite (or c!1155478 c!1155480) (regTwo!33026 (regOne!33026 (regOne!33026 r!7292))) (regOne!33026 (regOne!33026 r!7292)))))))

(declare-fun bm!541602 () Bool)

(assert (=> bm!541602 (= call!541602 (derivationStepZipperDown!1505 (ite c!1155481 (regTwo!33027 (regOne!33026 (regOne!33026 r!7292))) (regOne!33026 (regOne!33026 (regOne!33026 r!7292)))) (ite c!1155481 (Context!11283 lt!2364675) (Context!11283 call!541606)) (h!71394 s!2326)))))

(declare-fun b!6351254 () Bool)

(assert (=> b!6351254 (= e!3857174 e!3857172)))

(assert (=> b!6351254 (= c!1155480 ((_ is Concat!25102) (regOne!33026 (regOne!33026 r!7292))))))

(declare-fun b!6351255 () Bool)

(assert (=> b!6351255 (= e!3857176 ((as const (Array Context!11282 Bool)) false))))

(assert (= (and d!1992922 c!1155477) b!6351246))

(assert (= (and d!1992922 (not c!1155477)) b!6351252))

(assert (= (and b!6351252 c!1155481) b!6351251))

(assert (= (and b!6351252 (not c!1155481)) b!6351249))

(assert (= (and b!6351249 res!2613384) b!6351245))

(assert (= (and b!6351249 c!1155478) b!6351253))

(assert (= (and b!6351249 (not c!1155478)) b!6351254))

(assert (= (and b!6351254 c!1155480) b!6351247))

(assert (= (and b!6351254 (not c!1155480)) b!6351250))

(assert (= (and b!6351250 c!1155479) b!6351248))

(assert (= (and b!6351250 (not c!1155479)) b!6351255))

(assert (= (or b!6351247 b!6351248) bm!541597))

(assert (= (or b!6351247 b!6351248) bm!541600))

(assert (= (or b!6351253 bm!541597) bm!541601))

(assert (= (or b!6351253 bm!541600) bm!541598))

(assert (= (or b!6351251 b!6351253) bm!541602))

(assert (= (or b!6351251 bm!541598) bm!541599))

(declare-fun m!7158158 () Bool)

(assert (=> b!6351245 m!7158158))

(declare-fun m!7158160 () Bool)

(assert (=> b!6351246 m!7158160))

(declare-fun m!7158162 () Bool)

(assert (=> bm!541602 m!7158162))

(declare-fun m!7158164 () Bool)

(assert (=> bm!541599 m!7158164))

(declare-fun m!7158166 () Bool)

(assert (=> bm!541601 m!7158166))

(assert (=> b!6351030 d!1992922))

(declare-fun d!1992936 () Bool)

(declare-fun choose!47126 ((InoxSet Context!11282) Int) (InoxSet Context!11282))

(assert (=> d!1992936 (= (flatMap!1762 lt!2364678 lambda!349353) (choose!47126 lt!2364678 lambda!349353))))

(declare-fun bs!1590835 () Bool)

(assert (= bs!1590835 d!1992936))

(declare-fun m!7158184 () Bool)

(assert (=> bs!1590835 m!7158184))

(assert (=> b!6351011 d!1992936))

(declare-fun b!6351300 () Bool)

(declare-fun e!3857204 () (InoxSet Context!11282))

(declare-fun e!3857203 () (InoxSet Context!11282))

(assert (=> b!6351300 (= e!3857204 e!3857203)))

(declare-fun c!1155498 () Bool)

(assert (=> b!6351300 (= c!1155498 ((_ is Cons!64947) (exprs!6141 lt!2364656)))))

(declare-fun call!541610 () (InoxSet Context!11282))

(declare-fun b!6351301 () Bool)

(assert (=> b!6351301 (= e!3857204 ((_ map or) call!541610 (derivationStepZipperUp!1431 (Context!11283 (t!378661 (exprs!6141 lt!2364656))) (h!71394 s!2326))))))

(declare-fun b!6351302 () Bool)

(declare-fun e!3857205 () Bool)

(assert (=> b!6351302 (= e!3857205 (nullable!6250 (h!71395 (exprs!6141 lt!2364656))))))

(declare-fun b!6351303 () Bool)

(assert (=> b!6351303 (= e!3857203 call!541610)))

(declare-fun b!6351304 () Bool)

(assert (=> b!6351304 (= e!3857203 ((as const (Array Context!11282 Bool)) false))))

(declare-fun bm!541605 () Bool)

(assert (=> bm!541605 (= call!541610 (derivationStepZipperDown!1505 (h!71395 (exprs!6141 lt!2364656)) (Context!11283 (t!378661 (exprs!6141 lt!2364656))) (h!71394 s!2326)))))

(declare-fun d!1992940 () Bool)

(declare-fun c!1155499 () Bool)

(assert (=> d!1992940 (= c!1155499 e!3857205)))

(declare-fun res!2613397 () Bool)

(assert (=> d!1992940 (=> (not res!2613397) (not e!3857205))))

(assert (=> d!1992940 (= res!2613397 ((_ is Cons!64947) (exprs!6141 lt!2364656)))))

(assert (=> d!1992940 (= (derivationStepZipperUp!1431 lt!2364656 (h!71394 s!2326)) e!3857204)))

(assert (= (and d!1992940 res!2613397) b!6351302))

(assert (= (and d!1992940 c!1155499) b!6351301))

(assert (= (and d!1992940 (not c!1155499)) b!6351300))

(assert (= (and b!6351300 c!1155498) b!6351303))

(assert (= (and b!6351300 (not c!1155498)) b!6351304))

(assert (= (or b!6351301 b!6351303) bm!541605))

(declare-fun m!7158232 () Bool)

(assert (=> b!6351301 m!7158232))

(declare-fun m!7158234 () Bool)

(assert (=> b!6351302 m!7158234))

(declare-fun m!7158236 () Bool)

(assert (=> bm!541605 m!7158236))

(assert (=> b!6351011 d!1992940))

(declare-fun d!1992948 () Bool)

(declare-fun dynLambda!25754 (Int Context!11282) (InoxSet Context!11282))

(assert (=> d!1992948 (= (flatMap!1762 lt!2364678 lambda!349353) (dynLambda!25754 lambda!349353 lt!2364656))))

(declare-fun lt!2364714 () Unit!158359)

(declare-fun choose!47127 ((InoxSet Context!11282) Context!11282 Int) Unit!158359)

(assert (=> d!1992948 (= lt!2364714 (choose!47127 lt!2364678 lt!2364656 lambda!349353))))

(assert (=> d!1992948 (= lt!2364678 (store ((as const (Array Context!11282 Bool)) false) lt!2364656 true))))

(assert (=> d!1992948 (= (lemmaFlatMapOnSingletonSet!1288 lt!2364678 lt!2364656 lambda!349353) lt!2364714)))

(declare-fun b_lambda!241605 () Bool)

(assert (=> (not b_lambda!241605) (not d!1992948)))

(declare-fun bs!1590848 () Bool)

(assert (= bs!1590848 d!1992948))

(assert (=> bs!1590848 m!7157962))

(declare-fun m!7158246 () Bool)

(assert (=> bs!1590848 m!7158246))

(declare-fun m!7158248 () Bool)

(assert (=> bs!1590848 m!7158248))

(assert (=> bs!1590848 m!7157970))

(assert (=> b!6351011 d!1992948))

(declare-fun bs!1590850 () Bool)

(declare-fun d!1992952 () Bool)

(assert (= bs!1590850 (and d!1992952 b!6350997)))

(declare-fun lambda!349378 () Int)

(assert (=> bs!1590850 (= lambda!349378 lambda!349353)))

(assert (=> d!1992952 true))

(assert (=> d!1992952 (= (derivationStepZipper!2223 lt!2364678 (h!71394 s!2326)) (flatMap!1762 lt!2364678 lambda!349378))))

(declare-fun bs!1590851 () Bool)

(assert (= bs!1590851 d!1992952))

(declare-fun m!7158254 () Bool)

(assert (=> bs!1590851 m!7158254))

(assert (=> b!6351011 d!1992952))

(declare-fun b!6351371 () Bool)

(assert (=> b!6351371 true))

(declare-fun bs!1590863 () Bool)

(declare-fun b!6351373 () Bool)

(assert (= bs!1590863 (and b!6351373 b!6351371)))

(declare-fun lt!2364727 () Int)

(declare-fun lambda!349389 () Int)

(declare-fun lambda!349388 () Int)

(declare-fun lt!2364729 () Int)

(assert (=> bs!1590863 (= (= lt!2364729 lt!2364727) (= lambda!349389 lambda!349388))))

(assert (=> b!6351373 true))

(declare-fun d!1992956 () Bool)

(declare-fun e!3857248 () Bool)

(assert (=> d!1992956 e!3857248))

(declare-fun res!2613426 () Bool)

(assert (=> d!1992956 (=> (not res!2613426) (not e!3857248))))

(assert (=> d!1992956 (= res!2613426 (>= lt!2364729 0))))

(declare-fun e!3857249 () Int)

(assert (=> d!1992956 (= lt!2364729 e!3857249)))

(declare-fun c!1155526 () Bool)

(assert (=> d!1992956 (= c!1155526 ((_ is Cons!64948) lt!2364660))))

(assert (=> d!1992956 (= (zipperDepth!364 lt!2364660) lt!2364729)))

(assert (=> b!6351371 (= e!3857249 lt!2364727)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!252 (Context!11282) Int)

(assert (=> b!6351371 (= lt!2364727 (maxBigInt!0 (contextDepth!252 (h!71396 lt!2364660)) (zipperDepth!364 (t!378662 lt!2364660))))))

(declare-fun lt!2364728 () Unit!158359)

(declare-fun lambda!349387 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!236 (List!65072 Int Int Int) Unit!158359)

(assert (=> b!6351371 (= lt!2364728 (lemmaForallContextDepthBiggerThanTransitive!236 (t!378662 lt!2364660) lt!2364727 (zipperDepth!364 (t!378662 lt!2364660)) lambda!349387))))

(declare-fun forall!15425 (List!65072 Int) Bool)

(assert (=> b!6351371 (forall!15425 (t!378662 lt!2364660) lambda!349388)))

(declare-fun lt!2364726 () Unit!158359)

(assert (=> b!6351371 (= lt!2364726 lt!2364728)))

(declare-fun b!6351372 () Bool)

(assert (=> b!6351372 (= e!3857249 0)))

(assert (=> b!6351373 (= e!3857248 (forall!15425 lt!2364660 lambda!349389))))

(assert (= (and d!1992956 c!1155526) b!6351371))

(assert (= (and d!1992956 (not c!1155526)) b!6351372))

(assert (= (and d!1992956 res!2613426) b!6351373))

(declare-fun m!7158274 () Bool)

(assert (=> b!6351371 m!7158274))

(declare-fun m!7158276 () Bool)

(assert (=> b!6351371 m!7158276))

(declare-fun m!7158278 () Bool)

(assert (=> b!6351371 m!7158278))

(declare-fun m!7158280 () Bool)

(assert (=> b!6351371 m!7158280))

(assert (=> b!6351371 m!7158280))

(assert (=> b!6351371 m!7158276))

(declare-fun m!7158282 () Bool)

(assert (=> b!6351371 m!7158282))

(assert (=> b!6351371 m!7158276))

(declare-fun m!7158284 () Bool)

(assert (=> b!6351373 m!7158284))

(assert (=> b!6351012 d!1992956))

(declare-fun bs!1590864 () Bool)

(declare-fun b!6351386 () Bool)

(assert (= bs!1590864 (and b!6351386 b!6351371)))

(declare-fun lambda!349390 () Int)

(assert (=> bs!1590864 (= lambda!349390 lambda!349387)))

(declare-fun lt!2364737 () Int)

(declare-fun lambda!349391 () Int)

(assert (=> bs!1590864 (= (= lt!2364737 lt!2364727) (= lambda!349391 lambda!349388))))

(declare-fun bs!1590865 () Bool)

(assert (= bs!1590865 (and b!6351386 b!6351373)))

(assert (=> bs!1590865 (= (= lt!2364737 lt!2364729) (= lambda!349391 lambda!349389))))

(assert (=> b!6351386 true))

(declare-fun bs!1590866 () Bool)

(declare-fun b!6351388 () Bool)

(assert (= bs!1590866 (and b!6351388 b!6351371)))

(declare-fun lambda!349392 () Int)

(declare-fun lt!2364739 () Int)

(assert (=> bs!1590866 (= (= lt!2364739 lt!2364727) (= lambda!349392 lambda!349388))))

(declare-fun bs!1590867 () Bool)

(assert (= bs!1590867 (and b!6351388 b!6351373)))

(assert (=> bs!1590867 (= (= lt!2364739 lt!2364729) (= lambda!349392 lambda!349389))))

(declare-fun bs!1590868 () Bool)

(assert (= bs!1590868 (and b!6351388 b!6351386)))

(assert (=> bs!1590868 (= (= lt!2364739 lt!2364737) (= lambda!349392 lambda!349391))))

(assert (=> b!6351388 true))

(declare-fun d!1992964 () Bool)

(declare-fun e!3857256 () Bool)

(assert (=> d!1992964 e!3857256))

(declare-fun res!2613429 () Bool)

(assert (=> d!1992964 (=> (not res!2613429) (not e!3857256))))

(assert (=> d!1992964 (= res!2613429 (>= lt!2364739 0))))

(declare-fun e!3857257 () Int)

(assert (=> d!1992964 (= lt!2364739 e!3857257)))

(declare-fun c!1155531 () Bool)

(assert (=> d!1992964 (= c!1155531 ((_ is Cons!64948) zl!343))))

(assert (=> d!1992964 (= (zipperDepth!364 zl!343) lt!2364739)))

(assert (=> b!6351386 (= e!3857257 lt!2364737)))

(assert (=> b!6351386 (= lt!2364737 (maxBigInt!0 (contextDepth!252 (h!71396 zl!343)) (zipperDepth!364 (t!378662 zl!343))))))

(declare-fun lt!2364738 () Unit!158359)

(assert (=> b!6351386 (= lt!2364738 (lemmaForallContextDepthBiggerThanTransitive!236 (t!378662 zl!343) lt!2364737 (zipperDepth!364 (t!378662 zl!343)) lambda!349390))))

(assert (=> b!6351386 (forall!15425 (t!378662 zl!343) lambda!349391)))

(declare-fun lt!2364736 () Unit!158359)

(assert (=> b!6351386 (= lt!2364736 lt!2364738)))

(declare-fun b!6351387 () Bool)

(assert (=> b!6351387 (= e!3857257 0)))

(assert (=> b!6351388 (= e!3857256 (forall!15425 zl!343 lambda!349392))))

(assert (= (and d!1992964 c!1155531) b!6351386))

(assert (= (and d!1992964 (not c!1155531)) b!6351387))

(assert (= (and d!1992964 res!2613429) b!6351388))

(declare-fun m!7158286 () Bool)

(assert (=> b!6351386 m!7158286))

(declare-fun m!7158288 () Bool)

(assert (=> b!6351386 m!7158288))

(declare-fun m!7158290 () Bool)

(assert (=> b!6351386 m!7158290))

(declare-fun m!7158292 () Bool)

(assert (=> b!6351386 m!7158292))

(assert (=> b!6351386 m!7158292))

(assert (=> b!6351386 m!7158288))

(declare-fun m!7158294 () Bool)

(assert (=> b!6351386 m!7158294))

(assert (=> b!6351386 m!7158288))

(declare-fun m!7158296 () Bool)

(assert (=> b!6351388 m!7158296))

(assert (=> b!6351012 d!1992964))

(declare-fun d!1992966 () Bool)

(declare-fun nullableFct!2197 (Regex!16257) Bool)

(assert (=> d!1992966 (= (nullable!6250 (regOne!33026 (regOne!33026 r!7292))) (nullableFct!2197 (regOne!33026 (regOne!33026 r!7292))))))

(declare-fun bs!1590869 () Bool)

(assert (= bs!1590869 d!1992966))

(declare-fun m!7158298 () Bool)

(assert (=> bs!1590869 m!7158298))

(assert (=> b!6351031 d!1992966))

(declare-fun bs!1590905 () Bool)

(declare-fun b!6351481 () Bool)

(assert (= bs!1590905 (and b!6351481 b!6350999)))

(declare-fun lambda!349406 () Int)

(assert (=> bs!1590905 (not (= lambda!349406 lambda!349351))))

(assert (=> bs!1590905 (not (= lambda!349406 lambda!349352))))

(declare-fun bs!1590906 () Bool)

(assert (= bs!1590906 (and b!6351481 b!6351006)))

(assert (=> bs!1590906 (not (= lambda!349406 lambda!349354))))

(assert (=> bs!1590906 (not (= lambda!349406 lambda!349355))))

(assert (=> b!6351481 true))

(assert (=> b!6351481 true))

(declare-fun bs!1590907 () Bool)

(declare-fun b!6351484 () Bool)

(assert (= bs!1590907 (and b!6351484 b!6350999)))

(declare-fun lambda!349407 () Int)

(assert (=> bs!1590907 (not (= lambda!349407 lambda!349351))))

(assert (=> bs!1590907 (= lambda!349407 lambda!349352)))

(declare-fun bs!1590908 () Bool)

(assert (= bs!1590908 (and b!6351484 b!6351481)))

(assert (=> bs!1590908 (not (= lambda!349407 lambda!349406))))

(declare-fun bs!1590909 () Bool)

(assert (= bs!1590909 (and b!6351484 b!6351006)))

(assert (=> bs!1590909 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349407 lambda!349355))))

(assert (=> bs!1590909 (not (= lambda!349407 lambda!349354))))

(assert (=> b!6351484 true))

(assert (=> b!6351484 true))

(declare-fun e!3857314 () Bool)

(declare-fun call!541631 () Bool)

(assert (=> b!6351481 (= e!3857314 call!541631)))

(declare-fun bm!541625 () Bool)

(declare-fun call!541630 () Bool)

(declare-fun isEmpty!37040 (List!65070) Bool)

(assert (=> bm!541625 (= call!541630 (isEmpty!37040 s!2326))))

(declare-fun b!6351482 () Bool)

(declare-fun e!3857315 () Bool)

(assert (=> b!6351482 (= e!3857315 (matchRSpec!3358 (regTwo!33027 r!7292) s!2326))))

(declare-fun b!6351483 () Bool)

(declare-fun c!1155554 () Bool)

(assert (=> b!6351483 (= c!1155554 ((_ is ElementMatch!16257) r!7292))))

(declare-fun e!3857309 () Bool)

(declare-fun e!3857310 () Bool)

(assert (=> b!6351483 (= e!3857309 e!3857310)))

(declare-fun c!1155553 () Bool)

(declare-fun bm!541626 () Bool)

(assert (=> bm!541626 (= call!541631 (Exists!3327 (ite c!1155553 lambda!349406 lambda!349407)))))

(declare-fun b!6351485 () Bool)

(assert (=> b!6351485 (= e!3857310 (= s!2326 (Cons!64946 (c!1155402 r!7292) Nil!64946)))))

(declare-fun b!6351486 () Bool)

(declare-fun c!1155555 () Bool)

(assert (=> b!6351486 (= c!1155555 ((_ is Union!16257) r!7292))))

(declare-fun e!3857312 () Bool)

(assert (=> b!6351486 (= e!3857310 e!3857312)))

(declare-fun b!6351487 () Bool)

(declare-fun e!3857311 () Bool)

(assert (=> b!6351487 (= e!3857311 call!541630)))

(declare-fun b!6351488 () Bool)

(assert (=> b!6351488 (= e!3857311 e!3857309)))

(declare-fun res!2613481 () Bool)

(assert (=> b!6351488 (= res!2613481 (not ((_ is EmptyLang!16257) r!7292)))))

(assert (=> b!6351488 (=> (not res!2613481) (not e!3857309))))

(declare-fun b!6351489 () Bool)

(declare-fun res!2613480 () Bool)

(assert (=> b!6351489 (=> res!2613480 e!3857314)))

(assert (=> b!6351489 (= res!2613480 call!541630)))

(declare-fun e!3857313 () Bool)

(assert (=> b!6351489 (= e!3857313 e!3857314)))

(declare-fun b!6351490 () Bool)

(assert (=> b!6351490 (= e!3857312 e!3857313)))

(assert (=> b!6351490 (= c!1155553 ((_ is Star!16257) r!7292))))

(declare-fun b!6351491 () Bool)

(assert (=> b!6351491 (= e!3857312 e!3857315)))

(declare-fun res!2613482 () Bool)

(assert (=> b!6351491 (= res!2613482 (matchRSpec!3358 (regOne!33027 r!7292) s!2326))))

(assert (=> b!6351491 (=> res!2613482 e!3857315)))

(declare-fun d!1992968 () Bool)

(declare-fun c!1155556 () Bool)

(assert (=> d!1992968 (= c!1155556 ((_ is EmptyExpr!16257) r!7292))))

(assert (=> d!1992968 (= (matchRSpec!3358 r!7292 s!2326) e!3857311)))

(assert (=> b!6351484 (= e!3857313 call!541631)))

(assert (= (and d!1992968 c!1155556) b!6351487))

(assert (= (and d!1992968 (not c!1155556)) b!6351488))

(assert (= (and b!6351488 res!2613481) b!6351483))

(assert (= (and b!6351483 c!1155554) b!6351485))

(assert (= (and b!6351483 (not c!1155554)) b!6351486))

(assert (= (and b!6351486 c!1155555) b!6351491))

(assert (= (and b!6351486 (not c!1155555)) b!6351490))

(assert (= (and b!6351491 (not res!2613482)) b!6351482))

(assert (= (and b!6351490 c!1155553) b!6351489))

(assert (= (and b!6351490 (not c!1155553)) b!6351484))

(assert (= (and b!6351489 (not res!2613480)) b!6351481))

(assert (= (or b!6351481 b!6351484) bm!541626))

(assert (= (or b!6351487 b!6351489) bm!541625))

(declare-fun m!7158404 () Bool)

(assert (=> bm!541625 m!7158404))

(declare-fun m!7158406 () Bool)

(assert (=> b!6351482 m!7158406))

(declare-fun m!7158408 () Bool)

(assert (=> bm!541626 m!7158408))

(declare-fun m!7158410 () Bool)

(assert (=> b!6351491 m!7158410))

(assert (=> b!6351013 d!1992968))

(declare-fun b!6351576 () Bool)

(declare-fun e!3857369 () Bool)

(assert (=> b!6351576 (= e!3857369 (nullable!6250 r!7292))))

(declare-fun b!6351577 () Bool)

(declare-fun res!2613515 () Bool)

(declare-fun e!3857371 () Bool)

(assert (=> b!6351577 (=> res!2613515 e!3857371)))

(declare-fun e!3857370 () Bool)

(assert (=> b!6351577 (= res!2613515 e!3857370)))

(declare-fun res!2613516 () Bool)

(assert (=> b!6351577 (=> (not res!2613516) (not e!3857370))))

(declare-fun lt!2364758 () Bool)

(assert (=> b!6351577 (= res!2613516 lt!2364758)))

(declare-fun b!6351578 () Bool)

(declare-fun res!2613519 () Bool)

(assert (=> b!6351578 (=> (not res!2613519) (not e!3857370))))

(declare-fun call!541648 () Bool)

(assert (=> b!6351578 (= res!2613519 (not call!541648))))

(declare-fun b!6351579 () Bool)

(declare-fun e!3857365 () Bool)

(assert (=> b!6351579 (= e!3857371 e!3857365)))

(declare-fun res!2613520 () Bool)

(assert (=> b!6351579 (=> (not res!2613520) (not e!3857365))))

(assert (=> b!6351579 (= res!2613520 (not lt!2364758))))

(declare-fun d!1993002 () Bool)

(declare-fun e!3857368 () Bool)

(assert (=> d!1993002 e!3857368))

(declare-fun c!1155584 () Bool)

(assert (=> d!1993002 (= c!1155584 ((_ is EmptyExpr!16257) r!7292))))

(assert (=> d!1993002 (= lt!2364758 e!3857369)))

(declare-fun c!1155585 () Bool)

(assert (=> d!1993002 (= c!1155585 (isEmpty!37040 s!2326))))

(assert (=> d!1993002 (validRegex!7993 r!7292)))

(assert (=> d!1993002 (= (matchR!8440 r!7292 s!2326) lt!2364758)))

(declare-fun b!6351580 () Bool)

(declare-fun e!3857367 () Bool)

(declare-fun head!13006 (List!65070) C!32784)

(assert (=> b!6351580 (= e!3857367 (not (= (head!13006 s!2326) (c!1155402 r!7292))))))

(declare-fun b!6351581 () Bool)

(declare-fun res!2613514 () Bool)

(assert (=> b!6351581 (=> res!2613514 e!3857367)))

(declare-fun tail!12091 (List!65070) List!65070)

(assert (=> b!6351581 (= res!2613514 (not (isEmpty!37040 (tail!12091 s!2326))))))

(declare-fun b!6351582 () Bool)

(declare-fun e!3857366 () Bool)

(assert (=> b!6351582 (= e!3857366 (not lt!2364758))))

(declare-fun b!6351583 () Bool)

(assert (=> b!6351583 (= e!3857365 e!3857367)))

(declare-fun res!2613518 () Bool)

(assert (=> b!6351583 (=> res!2613518 e!3857367)))

(assert (=> b!6351583 (= res!2613518 call!541648)))

(declare-fun b!6351584 () Bool)

(assert (=> b!6351584 (= e!3857370 (= (head!13006 s!2326) (c!1155402 r!7292)))))

(declare-fun b!6351585 () Bool)

(assert (=> b!6351585 (= e!3857368 (= lt!2364758 call!541648))))

(declare-fun b!6351586 () Bool)

(declare-fun res!2613517 () Bool)

(assert (=> b!6351586 (=> res!2613517 e!3857371)))

(assert (=> b!6351586 (= res!2613517 (not ((_ is ElementMatch!16257) r!7292)))))

(assert (=> b!6351586 (= e!3857366 e!3857371)))

(declare-fun b!6351587 () Bool)

(declare-fun derivativeStep!4962 (Regex!16257 C!32784) Regex!16257)

(assert (=> b!6351587 (= e!3857369 (matchR!8440 (derivativeStep!4962 r!7292 (head!13006 s!2326)) (tail!12091 s!2326)))))

(declare-fun bm!541643 () Bool)

(assert (=> bm!541643 (= call!541648 (isEmpty!37040 s!2326))))

(declare-fun b!6351588 () Bool)

(declare-fun res!2613513 () Bool)

(assert (=> b!6351588 (=> (not res!2613513) (not e!3857370))))

(assert (=> b!6351588 (= res!2613513 (isEmpty!37040 (tail!12091 s!2326)))))

(declare-fun b!6351589 () Bool)

(assert (=> b!6351589 (= e!3857368 e!3857366)))

(declare-fun c!1155586 () Bool)

(assert (=> b!6351589 (= c!1155586 ((_ is EmptyLang!16257) r!7292))))

(assert (= (and d!1993002 c!1155585) b!6351576))

(assert (= (and d!1993002 (not c!1155585)) b!6351587))

(assert (= (and d!1993002 c!1155584) b!6351585))

(assert (= (and d!1993002 (not c!1155584)) b!6351589))

(assert (= (and b!6351589 c!1155586) b!6351582))

(assert (= (and b!6351589 (not c!1155586)) b!6351586))

(assert (= (and b!6351586 (not res!2613517)) b!6351577))

(assert (= (and b!6351577 res!2613516) b!6351578))

(assert (= (and b!6351578 res!2613519) b!6351588))

(assert (= (and b!6351588 res!2613513) b!6351584))

(assert (= (and b!6351577 (not res!2613515)) b!6351579))

(assert (= (and b!6351579 res!2613520) b!6351583))

(assert (= (and b!6351583 (not res!2613518)) b!6351581))

(assert (= (and b!6351581 (not res!2613514)) b!6351580))

(assert (= (or b!6351585 b!6351578 b!6351583) bm!541643))

(declare-fun m!7158456 () Bool)

(assert (=> b!6351587 m!7158456))

(assert (=> b!6351587 m!7158456))

(declare-fun m!7158458 () Bool)

(assert (=> b!6351587 m!7158458))

(declare-fun m!7158460 () Bool)

(assert (=> b!6351587 m!7158460))

(assert (=> b!6351587 m!7158458))

(assert (=> b!6351587 m!7158460))

(declare-fun m!7158462 () Bool)

(assert (=> b!6351587 m!7158462))

(assert (=> bm!541643 m!7158404))

(declare-fun m!7158464 () Bool)

(assert (=> b!6351576 m!7158464))

(assert (=> d!1993002 m!7158404))

(assert (=> d!1993002 m!7158016))

(assert (=> b!6351588 m!7158460))

(assert (=> b!6351588 m!7158460))

(declare-fun m!7158466 () Bool)

(assert (=> b!6351588 m!7158466))

(assert (=> b!6351584 m!7158456))

(assert (=> b!6351581 m!7158460))

(assert (=> b!6351581 m!7158460))

(assert (=> b!6351581 m!7158466))

(assert (=> b!6351580 m!7158456))

(assert (=> b!6351013 d!1993002))

(declare-fun d!1993022 () Bool)

(assert (=> d!1993022 (= (matchR!8440 r!7292 s!2326) (matchRSpec!3358 r!7292 s!2326))))

(declare-fun lt!2364765 () Unit!158359)

(declare-fun choose!47129 (Regex!16257 List!65070) Unit!158359)

(assert (=> d!1993022 (= lt!2364765 (choose!47129 r!7292 s!2326))))

(assert (=> d!1993022 (validRegex!7993 r!7292)))

(assert (=> d!1993022 (= (mainMatchTheorem!3358 r!7292 s!2326) lt!2364765)))

(declare-fun bs!1590931 () Bool)

(assert (= bs!1590931 d!1993022))

(assert (=> bs!1590931 m!7157982))

(assert (=> bs!1590931 m!7157980))

(declare-fun m!7158490 () Bool)

(assert (=> bs!1590931 m!7158490))

(assert (=> bs!1590931 m!7158016))

(assert (=> b!6351013 d!1993022))

(declare-fun d!1993030 () Bool)

(declare-fun c!1155592 () Bool)

(assert (=> d!1993030 (= c!1155592 (isEmpty!37040 (t!378660 s!2326)))))

(declare-fun e!3857380 () Bool)

(assert (=> d!1993030 (= (matchZipper!2269 lt!2364672 (t!378660 s!2326)) e!3857380)))

(declare-fun b!6351605 () Bool)

(declare-fun nullableZipper!2023 ((InoxSet Context!11282)) Bool)

(assert (=> b!6351605 (= e!3857380 (nullableZipper!2023 lt!2364672))))

(declare-fun b!6351606 () Bool)

(assert (=> b!6351606 (= e!3857380 (matchZipper!2269 (derivationStepZipper!2223 lt!2364672 (head!13006 (t!378660 s!2326))) (tail!12091 (t!378660 s!2326))))))

(assert (= (and d!1993030 c!1155592) b!6351605))

(assert (= (and d!1993030 (not c!1155592)) b!6351606))

(declare-fun m!7158496 () Bool)

(assert (=> d!1993030 m!7158496))

(declare-fun m!7158498 () Bool)

(assert (=> b!6351605 m!7158498))

(declare-fun m!7158500 () Bool)

(assert (=> b!6351606 m!7158500))

(assert (=> b!6351606 m!7158500))

(declare-fun m!7158502 () Bool)

(assert (=> b!6351606 m!7158502))

(declare-fun m!7158504 () Bool)

(assert (=> b!6351606 m!7158504))

(assert (=> b!6351606 m!7158502))

(assert (=> b!6351606 m!7158504))

(declare-fun m!7158506 () Bool)

(assert (=> b!6351606 m!7158506))

(assert (=> b!6351003 d!1993030))

(declare-fun d!1993034 () Bool)

(declare-fun c!1155593 () Bool)

(assert (=> d!1993034 (= c!1155593 (isEmpty!37040 (t!378660 s!2326)))))

(declare-fun e!3857381 () Bool)

(assert (=> d!1993034 (= (matchZipper!2269 lt!2364659 (t!378660 s!2326)) e!3857381)))

(declare-fun b!6351607 () Bool)

(assert (=> b!6351607 (= e!3857381 (nullableZipper!2023 lt!2364659))))

(declare-fun b!6351608 () Bool)

(assert (=> b!6351608 (= e!3857381 (matchZipper!2269 (derivationStepZipper!2223 lt!2364659 (head!13006 (t!378660 s!2326))) (tail!12091 (t!378660 s!2326))))))

(assert (= (and d!1993034 c!1155593) b!6351607))

(assert (= (and d!1993034 (not c!1155593)) b!6351608))

(assert (=> d!1993034 m!7158496))

(declare-fun m!7158508 () Bool)

(assert (=> b!6351607 m!7158508))

(assert (=> b!6351608 m!7158500))

(assert (=> b!6351608 m!7158500))

(declare-fun m!7158510 () Bool)

(assert (=> b!6351608 m!7158510))

(assert (=> b!6351608 m!7158504))

(assert (=> b!6351608 m!7158510))

(assert (=> b!6351608 m!7158504))

(declare-fun m!7158512 () Bool)

(assert (=> b!6351608 m!7158512))

(assert (=> b!6351003 d!1993034))

(declare-fun d!1993036 () Bool)

(assert (=> d!1993036 (= (isEmpty!37037 (t!378661 (exprs!6141 (h!71396 zl!343)))) ((_ is Nil!64947) (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(assert (=> b!6351004 d!1993036))

(declare-fun d!1993038 () Bool)

(assert (=> d!1993038 (= (isEmpty!37038 (t!378662 zl!343)) ((_ is Nil!64948) (t!378662 zl!343)))))

(assert (=> b!6351023 d!1993038))

(declare-fun d!1993040 () Bool)

(declare-fun e!3857394 () Bool)

(assert (=> d!1993040 (= (matchZipper!2269 ((_ map or) lt!2364659 lt!2364671) (t!378660 s!2326)) e!3857394)))

(declare-fun res!2613534 () Bool)

(assert (=> d!1993040 (=> res!2613534 e!3857394)))

(assert (=> d!1993040 (= res!2613534 (matchZipper!2269 lt!2364659 (t!378660 s!2326)))))

(declare-fun lt!2364770 () Unit!158359)

(declare-fun choose!47130 ((InoxSet Context!11282) (InoxSet Context!11282) List!65070) Unit!158359)

(assert (=> d!1993040 (= lt!2364770 (choose!47130 lt!2364659 lt!2364671 (t!378660 s!2326)))))

(assert (=> d!1993040 (= (lemmaZipperConcatMatchesSameAsBothZippers!1088 lt!2364659 lt!2364671 (t!378660 s!2326)) lt!2364770)))

(declare-fun b!6351625 () Bool)

(assert (=> b!6351625 (= e!3857394 (matchZipper!2269 lt!2364671 (t!378660 s!2326)))))

(assert (= (and d!1993040 (not res!2613534)) b!6351625))

(assert (=> d!1993040 m!7157960))

(assert (=> d!1993040 m!7157958))

(declare-fun m!7158540 () Bool)

(assert (=> d!1993040 m!7158540))

(assert (=> b!6351625 m!7158078))

(assert (=> b!6351024 d!1993040))

(assert (=> b!6351024 d!1993034))

(declare-fun d!1993054 () Bool)

(declare-fun c!1155600 () Bool)

(assert (=> d!1993054 (= c!1155600 (isEmpty!37040 (t!378660 s!2326)))))

(declare-fun e!3857395 () Bool)

(assert (=> d!1993054 (= (matchZipper!2269 ((_ map or) lt!2364659 lt!2364671) (t!378660 s!2326)) e!3857395)))

(declare-fun b!6351628 () Bool)

(assert (=> b!6351628 (= e!3857395 (nullableZipper!2023 ((_ map or) lt!2364659 lt!2364671)))))

(declare-fun b!6351629 () Bool)

(assert (=> b!6351629 (= e!3857395 (matchZipper!2269 (derivationStepZipper!2223 ((_ map or) lt!2364659 lt!2364671) (head!13006 (t!378660 s!2326))) (tail!12091 (t!378660 s!2326))))))

(assert (= (and d!1993054 c!1155600) b!6351628))

(assert (= (and d!1993054 (not c!1155600)) b!6351629))

(assert (=> d!1993054 m!7158496))

(declare-fun m!7158544 () Bool)

(assert (=> b!6351628 m!7158544))

(assert (=> b!6351629 m!7158500))

(assert (=> b!6351629 m!7158500))

(declare-fun m!7158546 () Bool)

(assert (=> b!6351629 m!7158546))

(assert (=> b!6351629 m!7158504))

(assert (=> b!6351629 m!7158546))

(assert (=> b!6351629 m!7158504))

(declare-fun m!7158548 () Bool)

(assert (=> b!6351629 m!7158548))

(assert (=> b!6351024 d!1993054))

(declare-fun c!1155606 () Bool)

(declare-fun bm!541654 () Bool)

(declare-fun c!1155605 () Bool)

(declare-fun call!541659 () Bool)

(assert (=> bm!541654 (= call!541659 (validRegex!7993 (ite c!1155606 (reg!16586 r!7292) (ite c!1155605 (regOne!33027 r!7292) (regOne!33026 r!7292)))))))

(declare-fun bm!541655 () Bool)

(declare-fun call!541660 () Bool)

(assert (=> bm!541655 (= call!541660 (validRegex!7993 (ite c!1155605 (regTwo!33027 r!7292) (regTwo!33026 r!7292))))))

(declare-fun b!6351649 () Bool)

(declare-fun e!3857415 () Bool)

(declare-fun e!3857413 () Bool)

(assert (=> b!6351649 (= e!3857415 e!3857413)))

(declare-fun res!2613545 () Bool)

(assert (=> b!6351649 (=> (not res!2613545) (not e!3857413))))

(declare-fun call!541661 () Bool)

(assert (=> b!6351649 (= res!2613545 call!541661)))

(declare-fun b!6351650 () Bool)

(declare-fun e!3857414 () Bool)

(declare-fun e!3857416 () Bool)

(assert (=> b!6351650 (= e!3857414 e!3857416)))

(assert (=> b!6351650 (= c!1155606 ((_ is Star!16257) r!7292))))

(declare-fun b!6351651 () Bool)

(assert (=> b!6351651 (= e!3857413 call!541660)))

(declare-fun b!6351652 () Bool)

(declare-fun res!2613549 () Bool)

(assert (=> b!6351652 (=> res!2613549 e!3857415)))

(assert (=> b!6351652 (= res!2613549 (not ((_ is Concat!25102) r!7292)))))

(declare-fun e!3857412 () Bool)

(assert (=> b!6351652 (= e!3857412 e!3857415)))

(declare-fun bm!541656 () Bool)

(assert (=> bm!541656 (= call!541661 call!541659)))

(declare-fun b!6351653 () Bool)

(declare-fun e!3857411 () Bool)

(assert (=> b!6351653 (= e!3857416 e!3857411)))

(declare-fun res!2613547 () Bool)

(assert (=> b!6351653 (= res!2613547 (not (nullable!6250 (reg!16586 r!7292))))))

(assert (=> b!6351653 (=> (not res!2613547) (not e!3857411))))

(declare-fun b!6351654 () Bool)

(assert (=> b!6351654 (= e!3857411 call!541659)))

(declare-fun b!6351655 () Bool)

(declare-fun res!2613548 () Bool)

(declare-fun e!3857410 () Bool)

(assert (=> b!6351655 (=> (not res!2613548) (not e!3857410))))

(assert (=> b!6351655 (= res!2613548 call!541661)))

(assert (=> b!6351655 (= e!3857412 e!3857410)))

(declare-fun b!6351656 () Bool)

(assert (=> b!6351656 (= e!3857410 call!541660)))

(declare-fun b!6351648 () Bool)

(assert (=> b!6351648 (= e!3857416 e!3857412)))

(assert (=> b!6351648 (= c!1155605 ((_ is Union!16257) r!7292))))

(declare-fun d!1993058 () Bool)

(declare-fun res!2613546 () Bool)

(assert (=> d!1993058 (=> res!2613546 e!3857414)))

(assert (=> d!1993058 (= res!2613546 ((_ is ElementMatch!16257) r!7292))))

(assert (=> d!1993058 (= (validRegex!7993 r!7292) e!3857414)))

(assert (= (and d!1993058 (not res!2613546)) b!6351650))

(assert (= (and b!6351650 c!1155606) b!6351653))

(assert (= (and b!6351650 (not c!1155606)) b!6351648))

(assert (= (and b!6351653 res!2613547) b!6351654))

(assert (= (and b!6351648 c!1155605) b!6351655))

(assert (= (and b!6351648 (not c!1155605)) b!6351652))

(assert (= (and b!6351655 res!2613548) b!6351656))

(assert (= (and b!6351652 (not res!2613549)) b!6351649))

(assert (= (and b!6351649 res!2613545) b!6351651))

(assert (= (or b!6351656 b!6351651) bm!541655))

(assert (= (or b!6351655 b!6351649) bm!541656))

(assert (= (or b!6351654 bm!541656) bm!541654))

(declare-fun m!7158552 () Bool)

(assert (=> bm!541654 m!7158552))

(declare-fun m!7158554 () Bool)

(assert (=> bm!541655 m!7158554))

(declare-fun m!7158556 () Bool)

(assert (=> b!6351653 m!7158556))

(assert (=> start!629226 d!1993058))

(declare-fun b!6351661 () Bool)

(declare-fun e!3857423 () Bool)

(assert (=> b!6351661 (= e!3857423 (nullable!6250 lt!2364657))))

(declare-fun b!6351662 () Bool)

(declare-fun res!2613552 () Bool)

(declare-fun e!3857425 () Bool)

(assert (=> b!6351662 (=> res!2613552 e!3857425)))

(declare-fun e!3857424 () Bool)

(assert (=> b!6351662 (= res!2613552 e!3857424)))

(declare-fun res!2613553 () Bool)

(assert (=> b!6351662 (=> (not res!2613553) (not e!3857424))))

(declare-fun lt!2364775 () Bool)

(assert (=> b!6351662 (= res!2613553 lt!2364775)))

(declare-fun b!6351663 () Bool)

(declare-fun res!2613556 () Bool)

(assert (=> b!6351663 (=> (not res!2613556) (not e!3857424))))

(declare-fun call!541662 () Bool)

(assert (=> b!6351663 (= res!2613556 (not call!541662))))

(declare-fun b!6351664 () Bool)

(declare-fun e!3857419 () Bool)

(assert (=> b!6351664 (= e!3857425 e!3857419)))

(declare-fun res!2613557 () Bool)

(assert (=> b!6351664 (=> (not res!2613557) (not e!3857419))))

(assert (=> b!6351664 (= res!2613557 (not lt!2364775))))

(declare-fun d!1993062 () Bool)

(declare-fun e!3857422 () Bool)

(assert (=> d!1993062 e!3857422))

(declare-fun c!1155609 () Bool)

(assert (=> d!1993062 (= c!1155609 ((_ is EmptyExpr!16257) lt!2364657))))

(assert (=> d!1993062 (= lt!2364775 e!3857423)))

(declare-fun c!1155610 () Bool)

(assert (=> d!1993062 (= c!1155610 (isEmpty!37040 s!2326))))

(assert (=> d!1993062 (validRegex!7993 lt!2364657)))

(assert (=> d!1993062 (= (matchR!8440 lt!2364657 s!2326) lt!2364775)))

(declare-fun b!6351665 () Bool)

(declare-fun e!3857421 () Bool)

(assert (=> b!6351665 (= e!3857421 (not (= (head!13006 s!2326) (c!1155402 lt!2364657))))))

(declare-fun b!6351666 () Bool)

(declare-fun res!2613551 () Bool)

(assert (=> b!6351666 (=> res!2613551 e!3857421)))

(assert (=> b!6351666 (= res!2613551 (not (isEmpty!37040 (tail!12091 s!2326))))))

(declare-fun b!6351667 () Bool)

(declare-fun e!3857420 () Bool)

(assert (=> b!6351667 (= e!3857420 (not lt!2364775))))

(declare-fun b!6351668 () Bool)

(assert (=> b!6351668 (= e!3857419 e!3857421)))

(declare-fun res!2613555 () Bool)

(assert (=> b!6351668 (=> res!2613555 e!3857421)))

(assert (=> b!6351668 (= res!2613555 call!541662)))

(declare-fun b!6351669 () Bool)

(assert (=> b!6351669 (= e!3857424 (= (head!13006 s!2326) (c!1155402 lt!2364657)))))

(declare-fun b!6351670 () Bool)

(assert (=> b!6351670 (= e!3857422 (= lt!2364775 call!541662))))

(declare-fun b!6351671 () Bool)

(declare-fun res!2613554 () Bool)

(assert (=> b!6351671 (=> res!2613554 e!3857425)))

(assert (=> b!6351671 (= res!2613554 (not ((_ is ElementMatch!16257) lt!2364657)))))

(assert (=> b!6351671 (= e!3857420 e!3857425)))

(declare-fun b!6351672 () Bool)

(assert (=> b!6351672 (= e!3857423 (matchR!8440 (derivativeStep!4962 lt!2364657 (head!13006 s!2326)) (tail!12091 s!2326)))))

(declare-fun bm!541657 () Bool)

(assert (=> bm!541657 (= call!541662 (isEmpty!37040 s!2326))))

(declare-fun b!6351673 () Bool)

(declare-fun res!2613550 () Bool)

(assert (=> b!6351673 (=> (not res!2613550) (not e!3857424))))

(assert (=> b!6351673 (= res!2613550 (isEmpty!37040 (tail!12091 s!2326)))))

(declare-fun b!6351674 () Bool)

(assert (=> b!6351674 (= e!3857422 e!3857420)))

(declare-fun c!1155611 () Bool)

(assert (=> b!6351674 (= c!1155611 ((_ is EmptyLang!16257) lt!2364657))))

(assert (= (and d!1993062 c!1155610) b!6351661))

(assert (= (and d!1993062 (not c!1155610)) b!6351672))

(assert (= (and d!1993062 c!1155609) b!6351670))

(assert (= (and d!1993062 (not c!1155609)) b!6351674))

(assert (= (and b!6351674 c!1155611) b!6351667))

(assert (= (and b!6351674 (not c!1155611)) b!6351671))

(assert (= (and b!6351671 (not res!2613554)) b!6351662))

(assert (= (and b!6351662 res!2613553) b!6351663))

(assert (= (and b!6351663 res!2613556) b!6351673))

(assert (= (and b!6351673 res!2613550) b!6351669))

(assert (= (and b!6351662 (not res!2613552)) b!6351664))

(assert (= (and b!6351664 res!2613557) b!6351668))

(assert (= (and b!6351668 (not res!2613555)) b!6351666))

(assert (= (and b!6351666 (not res!2613551)) b!6351665))

(assert (= (or b!6351670 b!6351663 b!6351668) bm!541657))

(assert (=> b!6351672 m!7158456))

(assert (=> b!6351672 m!7158456))

(declare-fun m!7158558 () Bool)

(assert (=> b!6351672 m!7158558))

(assert (=> b!6351672 m!7158460))

(assert (=> b!6351672 m!7158558))

(assert (=> b!6351672 m!7158460))

(declare-fun m!7158560 () Bool)

(assert (=> b!6351672 m!7158560))

(assert (=> bm!541657 m!7158404))

(declare-fun m!7158562 () Bool)

(assert (=> b!6351661 m!7158562))

(assert (=> d!1993062 m!7158404))

(declare-fun m!7158564 () Bool)

(assert (=> d!1993062 m!7158564))

(assert (=> b!6351673 m!7158460))

(assert (=> b!6351673 m!7158460))

(assert (=> b!6351673 m!7158466))

(assert (=> b!6351669 m!7158456))

(assert (=> b!6351666 m!7158460))

(assert (=> b!6351666 m!7158460))

(assert (=> b!6351666 m!7158466))

(assert (=> b!6351665 m!7158456))

(assert (=> b!6351006 d!1993062))

(declare-fun d!1993064 () Bool)

(declare-fun c!1155616 () Bool)

(assert (=> d!1993064 (= c!1155616 (isEmpty!37040 s!2326))))

(declare-fun e!3857426 () Bool)

(assert (=> d!1993064 (= (matchZipper!2269 lt!2364678 s!2326) e!3857426)))

(declare-fun b!6351675 () Bool)

(assert (=> b!6351675 (= e!3857426 (nullableZipper!2023 lt!2364678))))

(declare-fun b!6351676 () Bool)

(assert (=> b!6351676 (= e!3857426 (matchZipper!2269 (derivationStepZipper!2223 lt!2364678 (head!13006 s!2326)) (tail!12091 s!2326)))))

(assert (= (and d!1993064 c!1155616) b!6351675))

(assert (= (and d!1993064 (not c!1155616)) b!6351676))

(assert (=> d!1993064 m!7158404))

(declare-fun m!7158566 () Bool)

(assert (=> b!6351675 m!7158566))

(assert (=> b!6351676 m!7158456))

(assert (=> b!6351676 m!7158456))

(declare-fun m!7158568 () Bool)

(assert (=> b!6351676 m!7158568))

(assert (=> b!6351676 m!7158460))

(assert (=> b!6351676 m!7158568))

(assert (=> b!6351676 m!7158460))

(declare-fun m!7158570 () Bool)

(assert (=> b!6351676 m!7158570))

(assert (=> b!6351006 d!1993064))

(declare-fun d!1993066 () Bool)

(assert (=> d!1993066 (= (matchR!8440 lt!2364657 s!2326) (matchRSpec!3358 lt!2364657 s!2326))))

(declare-fun lt!2364780 () Unit!158359)

(assert (=> d!1993066 (= lt!2364780 (choose!47129 lt!2364657 s!2326))))

(assert (=> d!1993066 (validRegex!7993 lt!2364657)))

(assert (=> d!1993066 (= (mainMatchTheorem!3358 lt!2364657 s!2326) lt!2364780)))

(declare-fun bs!1590959 () Bool)

(assert (= bs!1590959 d!1993066))

(assert (=> bs!1590959 m!7158034))

(assert (=> bs!1590959 m!7158058))

(declare-fun m!7158572 () Bool)

(assert (=> bs!1590959 m!7158572))

(assert (=> bs!1590959 m!7158564))

(assert (=> b!6351006 d!1993066))

(declare-fun bm!541658 () Bool)

(declare-fun c!1155620 () Bool)

(declare-fun call!541663 () Bool)

(declare-fun c!1155619 () Bool)

(assert (=> bm!541658 (= call!541663 (validRegex!7993 (ite c!1155620 (reg!16586 (regTwo!33026 (regOne!33026 r!7292))) (ite c!1155619 (regOne!33027 (regTwo!33026 (regOne!33026 r!7292))) (regOne!33026 (regTwo!33026 (regOne!33026 r!7292)))))))))

(declare-fun bm!541659 () Bool)

(declare-fun call!541664 () Bool)

(assert (=> bm!541659 (= call!541664 (validRegex!7993 (ite c!1155619 (regTwo!33027 (regTwo!33026 (regOne!33026 r!7292))) (regTwo!33026 (regTwo!33026 (regOne!33026 r!7292))))))))

(declare-fun b!6351680 () Bool)

(declare-fun e!3857434 () Bool)

(declare-fun e!3857432 () Bool)

(assert (=> b!6351680 (= e!3857434 e!3857432)))

(declare-fun res!2613560 () Bool)

(assert (=> b!6351680 (=> (not res!2613560) (not e!3857432))))

(declare-fun call!541665 () Bool)

(assert (=> b!6351680 (= res!2613560 call!541665)))

(declare-fun b!6351681 () Bool)

(declare-fun e!3857433 () Bool)

(declare-fun e!3857435 () Bool)

(assert (=> b!6351681 (= e!3857433 e!3857435)))

(assert (=> b!6351681 (= c!1155620 ((_ is Star!16257) (regTwo!33026 (regOne!33026 r!7292))))))

(declare-fun b!6351682 () Bool)

(assert (=> b!6351682 (= e!3857432 call!541664)))

(declare-fun b!6351683 () Bool)

(declare-fun res!2613564 () Bool)

(assert (=> b!6351683 (=> res!2613564 e!3857434)))

(assert (=> b!6351683 (= res!2613564 (not ((_ is Concat!25102) (regTwo!33026 (regOne!33026 r!7292)))))))

(declare-fun e!3857431 () Bool)

(assert (=> b!6351683 (= e!3857431 e!3857434)))

(declare-fun bm!541660 () Bool)

(assert (=> bm!541660 (= call!541665 call!541663)))

(declare-fun b!6351684 () Bool)

(declare-fun e!3857430 () Bool)

(assert (=> b!6351684 (= e!3857435 e!3857430)))

(declare-fun res!2613562 () Bool)

(assert (=> b!6351684 (= res!2613562 (not (nullable!6250 (reg!16586 (regTwo!33026 (regOne!33026 r!7292))))))))

(assert (=> b!6351684 (=> (not res!2613562) (not e!3857430))))

(declare-fun b!6351685 () Bool)

(assert (=> b!6351685 (= e!3857430 call!541663)))

(declare-fun b!6351686 () Bool)

(declare-fun res!2613563 () Bool)

(declare-fun e!3857429 () Bool)

(assert (=> b!6351686 (=> (not res!2613563) (not e!3857429))))

(assert (=> b!6351686 (= res!2613563 call!541665)))

(assert (=> b!6351686 (= e!3857431 e!3857429)))

(declare-fun b!6351687 () Bool)

(assert (=> b!6351687 (= e!3857429 call!541664)))

(declare-fun b!6351679 () Bool)

(assert (=> b!6351679 (= e!3857435 e!3857431)))

(assert (=> b!6351679 (= c!1155619 ((_ is Union!16257) (regTwo!33026 (regOne!33026 r!7292))))))

(declare-fun d!1993068 () Bool)

(declare-fun res!2613561 () Bool)

(assert (=> d!1993068 (=> res!2613561 e!3857433)))

(assert (=> d!1993068 (= res!2613561 ((_ is ElementMatch!16257) (regTwo!33026 (regOne!33026 r!7292))))))

(assert (=> d!1993068 (= (validRegex!7993 (regTwo!33026 (regOne!33026 r!7292))) e!3857433)))

(assert (= (and d!1993068 (not res!2613561)) b!6351681))

(assert (= (and b!6351681 c!1155620) b!6351684))

(assert (= (and b!6351681 (not c!1155620)) b!6351679))

(assert (= (and b!6351684 res!2613562) b!6351685))

(assert (= (and b!6351679 c!1155619) b!6351686))

(assert (= (and b!6351679 (not c!1155619)) b!6351683))

(assert (= (and b!6351686 res!2613563) b!6351687))

(assert (= (and b!6351683 (not res!2613564)) b!6351680))

(assert (= (and b!6351680 res!2613560) b!6351682))

(assert (= (or b!6351687 b!6351682) bm!541659))

(assert (= (or b!6351686 b!6351680) bm!541660))

(assert (= (or b!6351685 bm!541660) bm!541658))

(declare-fun m!7158574 () Bool)

(assert (=> bm!541658 m!7158574))

(declare-fun m!7158576 () Bool)

(assert (=> bm!541659 m!7158576))

(declare-fun m!7158578 () Bool)

(assert (=> b!6351684 m!7158578))

(assert (=> b!6351006 d!1993068))

(declare-fun bs!1590960 () Bool)

(declare-fun b!6351688 () Bool)

(assert (= bs!1590960 (and b!6351688 b!6351484)))

(declare-fun lambda!349424 () Int)

(assert (=> bs!1590960 (not (= lambda!349424 lambda!349407))))

(declare-fun bs!1590961 () Bool)

(assert (= bs!1590961 (and b!6351688 b!6350999)))

(assert (=> bs!1590961 (not (= lambda!349424 lambda!349351))))

(assert (=> bs!1590961 (not (= lambda!349424 lambda!349352))))

(declare-fun bs!1590962 () Bool)

(assert (= bs!1590962 (and b!6351688 b!6351481)))

(assert (=> bs!1590962 (= (and (= (reg!16586 lt!2364657) (reg!16586 r!7292)) (= lt!2364657 r!7292)) (= lambda!349424 lambda!349406))))

(declare-fun bs!1590963 () Bool)

(assert (= bs!1590963 (and b!6351688 b!6351006)))

(assert (=> bs!1590963 (not (= lambda!349424 lambda!349355))))

(assert (=> bs!1590963 (not (= lambda!349424 lambda!349354))))

(assert (=> b!6351688 true))

(assert (=> b!6351688 true))

(declare-fun bs!1590965 () Bool)

(declare-fun b!6351691 () Bool)

(assert (= bs!1590965 (and b!6351691 b!6351484)))

(declare-fun lambda!349427 () Int)

(assert (=> bs!1590965 (= (and (= (regOne!33026 lt!2364657) (regOne!33026 r!7292)) (= (regTwo!33026 lt!2364657) (regTwo!33026 r!7292))) (= lambda!349427 lambda!349407))))

(declare-fun bs!1590966 () Bool)

(assert (= bs!1590966 (and b!6351691 b!6350999)))

(assert (=> bs!1590966 (not (= lambda!349427 lambda!349351))))

(declare-fun bs!1590967 () Bool)

(assert (= bs!1590967 (and b!6351691 b!6351481)))

(assert (=> bs!1590967 (not (= lambda!349427 lambda!349406))))

(assert (=> bs!1590966 (= (and (= (regOne!33026 lt!2364657) (regOne!33026 r!7292)) (= (regTwo!33026 lt!2364657) (regTwo!33026 r!7292))) (= lambda!349427 lambda!349352))))

(declare-fun bs!1590968 () Bool)

(assert (= bs!1590968 (and b!6351691 b!6351688)))

(assert (=> bs!1590968 (not (= lambda!349427 lambda!349424))))

(declare-fun bs!1590969 () Bool)

(assert (= bs!1590969 (and b!6351691 b!6351006)))

(assert (=> bs!1590969 (= (and (= (regOne!33026 lt!2364657) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 lt!2364657) lt!2364674)) (= lambda!349427 lambda!349355))))

(assert (=> bs!1590969 (not (= lambda!349427 lambda!349354))))

(assert (=> b!6351691 true))

(assert (=> b!6351691 true))

(declare-fun e!3857441 () Bool)

(declare-fun call!541667 () Bool)

(assert (=> b!6351688 (= e!3857441 call!541667)))

(declare-fun bm!541661 () Bool)

(declare-fun call!541666 () Bool)

(assert (=> bm!541661 (= call!541666 (isEmpty!37040 s!2326))))

(declare-fun b!6351689 () Bool)

(declare-fun e!3857442 () Bool)

(assert (=> b!6351689 (= e!3857442 (matchRSpec!3358 (regTwo!33027 lt!2364657) s!2326))))

(declare-fun b!6351690 () Bool)

(declare-fun c!1155622 () Bool)

(assert (=> b!6351690 (= c!1155622 ((_ is ElementMatch!16257) lt!2364657))))

(declare-fun e!3857436 () Bool)

(declare-fun e!3857437 () Bool)

(assert (=> b!6351690 (= e!3857436 e!3857437)))

(declare-fun bm!541662 () Bool)

(declare-fun c!1155621 () Bool)

(assert (=> bm!541662 (= call!541667 (Exists!3327 (ite c!1155621 lambda!349424 lambda!349427)))))

(declare-fun b!6351692 () Bool)

(assert (=> b!6351692 (= e!3857437 (= s!2326 (Cons!64946 (c!1155402 lt!2364657) Nil!64946)))))

(declare-fun b!6351693 () Bool)

(declare-fun c!1155623 () Bool)

(assert (=> b!6351693 (= c!1155623 ((_ is Union!16257) lt!2364657))))

(declare-fun e!3857439 () Bool)

(assert (=> b!6351693 (= e!3857437 e!3857439)))

(declare-fun b!6351694 () Bool)

(declare-fun e!3857438 () Bool)

(assert (=> b!6351694 (= e!3857438 call!541666)))

(declare-fun b!6351695 () Bool)

(assert (=> b!6351695 (= e!3857438 e!3857436)))

(declare-fun res!2613566 () Bool)

(assert (=> b!6351695 (= res!2613566 (not ((_ is EmptyLang!16257) lt!2364657)))))

(assert (=> b!6351695 (=> (not res!2613566) (not e!3857436))))

(declare-fun b!6351696 () Bool)

(declare-fun res!2613565 () Bool)

(assert (=> b!6351696 (=> res!2613565 e!3857441)))

(assert (=> b!6351696 (= res!2613565 call!541666)))

(declare-fun e!3857440 () Bool)

(assert (=> b!6351696 (= e!3857440 e!3857441)))

(declare-fun b!6351697 () Bool)

(assert (=> b!6351697 (= e!3857439 e!3857440)))

(assert (=> b!6351697 (= c!1155621 ((_ is Star!16257) lt!2364657))))

(declare-fun b!6351698 () Bool)

(assert (=> b!6351698 (= e!3857439 e!3857442)))

(declare-fun res!2613567 () Bool)

(assert (=> b!6351698 (= res!2613567 (matchRSpec!3358 (regOne!33027 lt!2364657) s!2326))))

(assert (=> b!6351698 (=> res!2613567 e!3857442)))

(declare-fun d!1993070 () Bool)

(declare-fun c!1155624 () Bool)

(assert (=> d!1993070 (= c!1155624 ((_ is EmptyExpr!16257) lt!2364657))))

(assert (=> d!1993070 (= (matchRSpec!3358 lt!2364657 s!2326) e!3857438)))

(assert (=> b!6351691 (= e!3857440 call!541667)))

(assert (= (and d!1993070 c!1155624) b!6351694))

(assert (= (and d!1993070 (not c!1155624)) b!6351695))

(assert (= (and b!6351695 res!2613566) b!6351690))

(assert (= (and b!6351690 c!1155622) b!6351692))

(assert (= (and b!6351690 (not c!1155622)) b!6351693))

(assert (= (and b!6351693 c!1155623) b!6351698))

(assert (= (and b!6351693 (not c!1155623)) b!6351697))

(assert (= (and b!6351698 (not res!2613567)) b!6351689))

(assert (= (and b!6351697 c!1155621) b!6351696))

(assert (= (and b!6351697 (not c!1155621)) b!6351691))

(assert (= (and b!6351696 (not res!2613565)) b!6351688))

(assert (= (or b!6351688 b!6351691) bm!541662))

(assert (= (or b!6351694 b!6351696) bm!541661))

(assert (=> bm!541661 m!7158404))

(declare-fun m!7158592 () Bool)

(assert (=> b!6351689 m!7158592))

(declare-fun m!7158594 () Bool)

(assert (=> bm!541662 m!7158594))

(declare-fun m!7158596 () Bool)

(assert (=> b!6351698 m!7158596))

(assert (=> b!6351006 d!1993070))

(declare-fun b!6351790 () Bool)

(declare-fun e!3857487 () Bool)

(declare-fun lt!2364804 () Option!16148)

(assert (=> b!6351790 (= e!3857487 (not (isDefined!12851 lt!2364804)))))

(declare-fun d!1993074 () Bool)

(assert (=> d!1993074 e!3857487))

(declare-fun res!2613586 () Bool)

(assert (=> d!1993074 (=> res!2613586 e!3857487)))

(declare-fun e!3857488 () Bool)

(assert (=> d!1993074 (= res!2613586 e!3857488)))

(declare-fun res!2613585 () Bool)

(assert (=> d!1993074 (=> (not res!2613585) (not e!3857488))))

(assert (=> d!1993074 (= res!2613585 (isDefined!12851 lt!2364804))))

(declare-fun e!3857489 () Option!16148)

(assert (=> d!1993074 (= lt!2364804 e!3857489)))

(declare-fun c!1155635 () Bool)

(declare-fun e!3857490 () Bool)

(assert (=> d!1993074 (= c!1155635 e!3857490)))

(declare-fun res!2613583 () Bool)

(assert (=> d!1993074 (=> (not res!2613583) (not e!3857490))))

(assert (=> d!1993074 (= res!2613583 (matchR!8440 (regOne!33026 (regOne!33026 r!7292)) Nil!64946))))

(assert (=> d!1993074 (validRegex!7993 (regOne!33026 (regOne!33026 r!7292)))))

(assert (=> d!1993074 (= (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 Nil!64946 s!2326 s!2326) lt!2364804)))

(declare-fun b!6351791 () Bool)

(declare-fun ++!14326 (List!65070 List!65070) List!65070)

(declare-fun get!22470 (Option!16148) tuple2!66472)

(assert (=> b!6351791 (= e!3857488 (= (++!14326 (_1!36539 (get!22470 lt!2364804)) (_2!36539 (get!22470 lt!2364804))) s!2326))))

(declare-fun b!6351792 () Bool)

(declare-fun e!3857491 () Option!16148)

(assert (=> b!6351792 (= e!3857489 e!3857491)))

(declare-fun c!1155636 () Bool)

(assert (=> b!6351792 (= c!1155636 ((_ is Nil!64946) s!2326))))

(declare-fun b!6351793 () Bool)

(assert (=> b!6351793 (= e!3857490 (matchR!8440 lt!2364674 s!2326))))

(declare-fun b!6351794 () Bool)

(declare-fun lt!2364803 () Unit!158359)

(declare-fun lt!2364802 () Unit!158359)

(assert (=> b!6351794 (= lt!2364803 lt!2364802)))

(assert (=> b!6351794 (= (++!14326 (++!14326 Nil!64946 (Cons!64946 (h!71394 s!2326) Nil!64946)) (t!378660 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2421 (List!65070 C!32784 List!65070 List!65070) Unit!158359)

(assert (=> b!6351794 (= lt!2364802 (lemmaMoveElementToOtherListKeepsConcatEq!2421 Nil!64946 (h!71394 s!2326) (t!378660 s!2326) s!2326))))

(assert (=> b!6351794 (= e!3857491 (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 (++!14326 Nil!64946 (Cons!64946 (h!71394 s!2326) Nil!64946)) (t!378660 s!2326) s!2326))))

(declare-fun b!6351795 () Bool)

(declare-fun res!2613584 () Bool)

(assert (=> b!6351795 (=> (not res!2613584) (not e!3857488))))

(assert (=> b!6351795 (= res!2613584 (matchR!8440 (regOne!33026 (regOne!33026 r!7292)) (_1!36539 (get!22470 lt!2364804))))))

(declare-fun b!6351796 () Bool)

(assert (=> b!6351796 (= e!3857489 (Some!16147 (tuple2!66473 Nil!64946 s!2326)))))

(declare-fun b!6351797 () Bool)

(assert (=> b!6351797 (= e!3857491 None!16147)))

(declare-fun b!6351798 () Bool)

(declare-fun res!2613587 () Bool)

(assert (=> b!6351798 (=> (not res!2613587) (not e!3857488))))

(assert (=> b!6351798 (= res!2613587 (matchR!8440 lt!2364674 (_2!36539 (get!22470 lt!2364804))))))

(assert (= (and d!1993074 res!2613583) b!6351793))

(assert (= (and d!1993074 c!1155635) b!6351796))

(assert (= (and d!1993074 (not c!1155635)) b!6351792))

(assert (= (and b!6351792 c!1155636) b!6351797))

(assert (= (and b!6351792 (not c!1155636)) b!6351794))

(assert (= (and d!1993074 res!2613585) b!6351795))

(assert (= (and b!6351795 res!2613584) b!6351798))

(assert (= (and b!6351798 res!2613587) b!6351791))

(assert (= (and d!1993074 (not res!2613586)) b!6351790))

(declare-fun m!7158626 () Bool)

(assert (=> b!6351791 m!7158626))

(declare-fun m!7158628 () Bool)

(assert (=> b!6351791 m!7158628))

(assert (=> b!6351798 m!7158626))

(declare-fun m!7158630 () Bool)

(assert (=> b!6351798 m!7158630))

(declare-fun m!7158632 () Bool)

(assert (=> b!6351794 m!7158632))

(assert (=> b!6351794 m!7158632))

(declare-fun m!7158634 () Bool)

(assert (=> b!6351794 m!7158634))

(declare-fun m!7158636 () Bool)

(assert (=> b!6351794 m!7158636))

(assert (=> b!6351794 m!7158632))

(declare-fun m!7158638 () Bool)

(assert (=> b!6351794 m!7158638))

(assert (=> b!6351793 m!7158036))

(assert (=> b!6351795 m!7158626))

(declare-fun m!7158640 () Bool)

(assert (=> b!6351795 m!7158640))

(declare-fun m!7158642 () Bool)

(assert (=> d!1993074 m!7158642))

(declare-fun m!7158644 () Bool)

(assert (=> d!1993074 m!7158644))

(declare-fun m!7158646 () Bool)

(assert (=> d!1993074 m!7158646))

(assert (=> b!6351790 m!7158642))

(assert (=> b!6351006 d!1993074))

(declare-fun b!6351819 () Bool)

(declare-fun e!3857509 () Bool)

(declare-fun e!3857506 () Bool)

(assert (=> b!6351819 (= e!3857509 e!3857506)))

(declare-fun c!1155648 () Bool)

(declare-fun tail!12092 (List!65071) List!65071)

(assert (=> b!6351819 (= c!1155648 (isEmpty!37037 (tail!12092 lt!2364670)))))

(declare-fun b!6351820 () Bool)

(declare-fun lt!2364807 () Regex!16257)

(declare-fun head!13007 (List!65071) Regex!16257)

(assert (=> b!6351820 (= e!3857506 (= lt!2364807 (head!13007 lt!2364670)))))

(declare-fun b!6351821 () Bool)

(declare-fun e!3857507 () Regex!16257)

(assert (=> b!6351821 (= e!3857507 (h!71395 lt!2364670))))

(declare-fun b!6351822 () Bool)

(declare-fun e!3857504 () Regex!16257)

(assert (=> b!6351822 (= e!3857504 EmptyExpr!16257)))

(declare-fun b!6351823 () Bool)

(assert (=> b!6351823 (= e!3857504 (Concat!25102 (h!71395 lt!2364670) (generalisedConcat!1854 (t!378661 lt!2364670))))))

(declare-fun d!1993086 () Bool)

(declare-fun e!3857508 () Bool)

(assert (=> d!1993086 e!3857508))

(declare-fun res!2613592 () Bool)

(assert (=> d!1993086 (=> (not res!2613592) (not e!3857508))))

(assert (=> d!1993086 (= res!2613592 (validRegex!7993 lt!2364807))))

(assert (=> d!1993086 (= lt!2364807 e!3857507)))

(declare-fun c!1155645 () Bool)

(declare-fun e!3857505 () Bool)

(assert (=> d!1993086 (= c!1155645 e!3857505)))

(declare-fun res!2613593 () Bool)

(assert (=> d!1993086 (=> (not res!2613593) (not e!3857505))))

(assert (=> d!1993086 (= res!2613593 ((_ is Cons!64947) lt!2364670))))

(declare-fun lambda!349434 () Int)

(declare-fun forall!15426 (List!65071 Int) Bool)

(assert (=> d!1993086 (forall!15426 lt!2364670 lambda!349434)))

(assert (=> d!1993086 (= (generalisedConcat!1854 lt!2364670) lt!2364807)))

(declare-fun b!6351824 () Bool)

(declare-fun isConcat!1182 (Regex!16257) Bool)

(assert (=> b!6351824 (= e!3857506 (isConcat!1182 lt!2364807))))

(declare-fun b!6351825 () Bool)

(assert (=> b!6351825 (= e!3857507 e!3857504)))

(declare-fun c!1155647 () Bool)

(assert (=> b!6351825 (= c!1155647 ((_ is Cons!64947) lt!2364670))))

(declare-fun b!6351826 () Bool)

(assert (=> b!6351826 (= e!3857505 (isEmpty!37037 (t!378661 lt!2364670)))))

(declare-fun b!6351827 () Bool)

(declare-fun isEmptyExpr!1659 (Regex!16257) Bool)

(assert (=> b!6351827 (= e!3857509 (isEmptyExpr!1659 lt!2364807))))

(declare-fun b!6351828 () Bool)

(assert (=> b!6351828 (= e!3857508 e!3857509)))

(declare-fun c!1155646 () Bool)

(assert (=> b!6351828 (= c!1155646 (isEmpty!37037 lt!2364670))))

(assert (= (and d!1993086 res!2613593) b!6351826))

(assert (= (and d!1993086 c!1155645) b!6351821))

(assert (= (and d!1993086 (not c!1155645)) b!6351825))

(assert (= (and b!6351825 c!1155647) b!6351823))

(assert (= (and b!6351825 (not c!1155647)) b!6351822))

(assert (= (and d!1993086 res!2613592) b!6351828))

(assert (= (and b!6351828 c!1155646) b!6351827))

(assert (= (and b!6351828 (not c!1155646)) b!6351819))

(assert (= (and b!6351819 c!1155648) b!6351820))

(assert (= (and b!6351819 (not c!1155648)) b!6351824))

(declare-fun m!7158648 () Bool)

(assert (=> b!6351824 m!7158648))

(declare-fun m!7158650 () Bool)

(assert (=> b!6351828 m!7158650))

(declare-fun m!7158652 () Bool)

(assert (=> b!6351827 m!7158652))

(declare-fun m!7158654 () Bool)

(assert (=> d!1993086 m!7158654))

(declare-fun m!7158656 () Bool)

(assert (=> d!1993086 m!7158656))

(declare-fun m!7158658 () Bool)

(assert (=> b!6351826 m!7158658))

(declare-fun m!7158660 () Bool)

(assert (=> b!6351823 m!7158660))

(declare-fun m!7158662 () Bool)

(assert (=> b!6351820 m!7158662))

(declare-fun m!7158664 () Bool)

(assert (=> b!6351819 m!7158664))

(assert (=> b!6351819 m!7158664))

(declare-fun m!7158666 () Bool)

(assert (=> b!6351819 m!7158666))

(assert (=> b!6351006 d!1993086))

(declare-fun bs!1590977 () Bool)

(declare-fun d!1993088 () Bool)

(assert (= bs!1590977 (and d!1993088 d!1993086)))

(declare-fun lambda!349435 () Int)

(assert (=> bs!1590977 (= lambda!349435 lambda!349434)))

(declare-fun b!6351829 () Bool)

(declare-fun e!3857515 () Bool)

(declare-fun e!3857512 () Bool)

(assert (=> b!6351829 (= e!3857515 e!3857512)))

(declare-fun c!1155652 () Bool)

(assert (=> b!6351829 (= c!1155652 (isEmpty!37037 (tail!12092 lt!2364675)))))

(declare-fun b!6351830 () Bool)

(declare-fun lt!2364808 () Regex!16257)

(assert (=> b!6351830 (= e!3857512 (= lt!2364808 (head!13007 lt!2364675)))))

(declare-fun b!6351831 () Bool)

(declare-fun e!3857513 () Regex!16257)

(assert (=> b!6351831 (= e!3857513 (h!71395 lt!2364675))))

(declare-fun b!6351832 () Bool)

(declare-fun e!3857510 () Regex!16257)

(assert (=> b!6351832 (= e!3857510 EmptyExpr!16257)))

(declare-fun b!6351833 () Bool)

(assert (=> b!6351833 (= e!3857510 (Concat!25102 (h!71395 lt!2364675) (generalisedConcat!1854 (t!378661 lt!2364675))))))

(declare-fun e!3857514 () Bool)

(assert (=> d!1993088 e!3857514))

(declare-fun res!2613594 () Bool)

(assert (=> d!1993088 (=> (not res!2613594) (not e!3857514))))

(assert (=> d!1993088 (= res!2613594 (validRegex!7993 lt!2364808))))

(assert (=> d!1993088 (= lt!2364808 e!3857513)))

(declare-fun c!1155649 () Bool)

(declare-fun e!3857511 () Bool)

(assert (=> d!1993088 (= c!1155649 e!3857511)))

(declare-fun res!2613595 () Bool)

(assert (=> d!1993088 (=> (not res!2613595) (not e!3857511))))

(assert (=> d!1993088 (= res!2613595 ((_ is Cons!64947) lt!2364675))))

(assert (=> d!1993088 (forall!15426 lt!2364675 lambda!349435)))

(assert (=> d!1993088 (= (generalisedConcat!1854 lt!2364675) lt!2364808)))

(declare-fun b!6351834 () Bool)

(assert (=> b!6351834 (= e!3857512 (isConcat!1182 lt!2364808))))

(declare-fun b!6351835 () Bool)

(assert (=> b!6351835 (= e!3857513 e!3857510)))

(declare-fun c!1155651 () Bool)

(assert (=> b!6351835 (= c!1155651 ((_ is Cons!64947) lt!2364675))))

(declare-fun b!6351836 () Bool)

(assert (=> b!6351836 (= e!3857511 (isEmpty!37037 (t!378661 lt!2364675)))))

(declare-fun b!6351837 () Bool)

(assert (=> b!6351837 (= e!3857515 (isEmptyExpr!1659 lt!2364808))))

(declare-fun b!6351838 () Bool)

(assert (=> b!6351838 (= e!3857514 e!3857515)))

(declare-fun c!1155650 () Bool)

(assert (=> b!6351838 (= c!1155650 (isEmpty!37037 lt!2364675))))

(assert (= (and d!1993088 res!2613595) b!6351836))

(assert (= (and d!1993088 c!1155649) b!6351831))

(assert (= (and d!1993088 (not c!1155649)) b!6351835))

(assert (= (and b!6351835 c!1155651) b!6351833))

(assert (= (and b!6351835 (not c!1155651)) b!6351832))

(assert (= (and d!1993088 res!2613594) b!6351838))

(assert (= (and b!6351838 c!1155650) b!6351837))

(assert (= (and b!6351838 (not c!1155650)) b!6351829))

(assert (= (and b!6351829 c!1155652) b!6351830))

(assert (= (and b!6351829 (not c!1155652)) b!6351834))

(declare-fun m!7158668 () Bool)

(assert (=> b!6351834 m!7158668))

(declare-fun m!7158670 () Bool)

(assert (=> b!6351838 m!7158670))

(declare-fun m!7158672 () Bool)

(assert (=> b!6351837 m!7158672))

(declare-fun m!7158674 () Bool)

(assert (=> d!1993088 m!7158674))

(declare-fun m!7158676 () Bool)

(assert (=> d!1993088 m!7158676))

(declare-fun m!7158678 () Bool)

(assert (=> b!6351836 m!7158678))

(declare-fun m!7158680 () Bool)

(assert (=> b!6351833 m!7158680))

(declare-fun m!7158682 () Bool)

(assert (=> b!6351830 m!7158682))

(declare-fun m!7158684 () Bool)

(assert (=> b!6351829 m!7158684))

(assert (=> b!6351829 m!7158684))

(declare-fun m!7158686 () Bool)

(assert (=> b!6351829 m!7158686))

(assert (=> b!6351006 d!1993088))

(declare-fun d!1993090 () Bool)

(assert (=> d!1993090 (= (matchR!8440 lt!2364657 s!2326) (matchZipper!2269 lt!2364678 s!2326))))

(declare-fun lt!2364811 () Unit!158359)

(declare-fun choose!47135 ((InoxSet Context!11282) List!65072 Regex!16257 List!65070) Unit!158359)

(assert (=> d!1993090 (= lt!2364811 (choose!47135 lt!2364678 lt!2364660 lt!2364657 s!2326))))

(assert (=> d!1993090 (validRegex!7993 lt!2364657)))

(assert (=> d!1993090 (= (theoremZipperRegexEquiv!799 lt!2364678 lt!2364660 lt!2364657 s!2326) lt!2364811)))

(declare-fun bs!1590978 () Bool)

(assert (= bs!1590978 d!1993090))

(assert (=> bs!1590978 m!7158034))

(assert (=> bs!1590978 m!7158038))

(declare-fun m!7158688 () Bool)

(assert (=> bs!1590978 m!7158688))

(assert (=> bs!1590978 m!7158564))

(assert (=> b!6351006 d!1993090))

(declare-fun b!6351839 () Bool)

(declare-fun e!3857520 () Bool)

(assert (=> b!6351839 (= e!3857520 (nullable!6250 lt!2364674))))

(declare-fun b!6351840 () Bool)

(declare-fun res!2613598 () Bool)

(declare-fun e!3857522 () Bool)

(assert (=> b!6351840 (=> res!2613598 e!3857522)))

(declare-fun e!3857521 () Bool)

(assert (=> b!6351840 (= res!2613598 e!3857521)))

(declare-fun res!2613599 () Bool)

(assert (=> b!6351840 (=> (not res!2613599) (not e!3857521))))

(declare-fun lt!2364812 () Bool)

(assert (=> b!6351840 (= res!2613599 lt!2364812)))

(declare-fun b!6351841 () Bool)

(declare-fun res!2613602 () Bool)

(assert (=> b!6351841 (=> (not res!2613602) (not e!3857521))))

(declare-fun call!541668 () Bool)

(assert (=> b!6351841 (= res!2613602 (not call!541668))))

(declare-fun b!6351842 () Bool)

(declare-fun e!3857516 () Bool)

(assert (=> b!6351842 (= e!3857522 e!3857516)))

(declare-fun res!2613603 () Bool)

(assert (=> b!6351842 (=> (not res!2613603) (not e!3857516))))

(assert (=> b!6351842 (= res!2613603 (not lt!2364812))))

(declare-fun d!1993092 () Bool)

(declare-fun e!3857519 () Bool)

(assert (=> d!1993092 e!3857519))

(declare-fun c!1155653 () Bool)

(assert (=> d!1993092 (= c!1155653 ((_ is EmptyExpr!16257) lt!2364674))))

(assert (=> d!1993092 (= lt!2364812 e!3857520)))

(declare-fun c!1155654 () Bool)

(assert (=> d!1993092 (= c!1155654 (isEmpty!37040 s!2326))))

(assert (=> d!1993092 (validRegex!7993 lt!2364674)))

(assert (=> d!1993092 (= (matchR!8440 lt!2364674 s!2326) lt!2364812)))

(declare-fun b!6351843 () Bool)

(declare-fun e!3857518 () Bool)

(assert (=> b!6351843 (= e!3857518 (not (= (head!13006 s!2326) (c!1155402 lt!2364674))))))

(declare-fun b!6351844 () Bool)

(declare-fun res!2613597 () Bool)

(assert (=> b!6351844 (=> res!2613597 e!3857518)))

(assert (=> b!6351844 (= res!2613597 (not (isEmpty!37040 (tail!12091 s!2326))))))

(declare-fun b!6351845 () Bool)

(declare-fun e!3857517 () Bool)

(assert (=> b!6351845 (= e!3857517 (not lt!2364812))))

(declare-fun b!6351846 () Bool)

(assert (=> b!6351846 (= e!3857516 e!3857518)))

(declare-fun res!2613601 () Bool)

(assert (=> b!6351846 (=> res!2613601 e!3857518)))

(assert (=> b!6351846 (= res!2613601 call!541668)))

(declare-fun b!6351847 () Bool)

(assert (=> b!6351847 (= e!3857521 (= (head!13006 s!2326) (c!1155402 lt!2364674)))))

(declare-fun b!6351848 () Bool)

(assert (=> b!6351848 (= e!3857519 (= lt!2364812 call!541668))))

(declare-fun b!6351849 () Bool)

(declare-fun res!2613600 () Bool)

(assert (=> b!6351849 (=> res!2613600 e!3857522)))

(assert (=> b!6351849 (= res!2613600 (not ((_ is ElementMatch!16257) lt!2364674)))))

(assert (=> b!6351849 (= e!3857517 e!3857522)))

(declare-fun b!6351850 () Bool)

(assert (=> b!6351850 (= e!3857520 (matchR!8440 (derivativeStep!4962 lt!2364674 (head!13006 s!2326)) (tail!12091 s!2326)))))

(declare-fun bm!541663 () Bool)

(assert (=> bm!541663 (= call!541668 (isEmpty!37040 s!2326))))

(declare-fun b!6351851 () Bool)

(declare-fun res!2613596 () Bool)

(assert (=> b!6351851 (=> (not res!2613596) (not e!3857521))))

(assert (=> b!6351851 (= res!2613596 (isEmpty!37040 (tail!12091 s!2326)))))

(declare-fun b!6351852 () Bool)

(assert (=> b!6351852 (= e!3857519 e!3857517)))

(declare-fun c!1155655 () Bool)

(assert (=> b!6351852 (= c!1155655 ((_ is EmptyLang!16257) lt!2364674))))

(assert (= (and d!1993092 c!1155654) b!6351839))

(assert (= (and d!1993092 (not c!1155654)) b!6351850))

(assert (= (and d!1993092 c!1155653) b!6351848))

(assert (= (and d!1993092 (not c!1155653)) b!6351852))

(assert (= (and b!6351852 c!1155655) b!6351845))

(assert (= (and b!6351852 (not c!1155655)) b!6351849))

(assert (= (and b!6351849 (not res!2613600)) b!6351840))

(assert (= (and b!6351840 res!2613599) b!6351841))

(assert (= (and b!6351841 res!2613602) b!6351851))

(assert (= (and b!6351851 res!2613596) b!6351847))

(assert (= (and b!6351840 (not res!2613598)) b!6351842))

(assert (= (and b!6351842 res!2613603) b!6351846))

(assert (= (and b!6351846 (not res!2613601)) b!6351844))

(assert (= (and b!6351844 (not res!2613597)) b!6351843))

(assert (= (or b!6351848 b!6351841 b!6351846) bm!541663))

(assert (=> b!6351850 m!7158456))

(assert (=> b!6351850 m!7158456))

(declare-fun m!7158690 () Bool)

(assert (=> b!6351850 m!7158690))

(assert (=> b!6351850 m!7158460))

(assert (=> b!6351850 m!7158690))

(assert (=> b!6351850 m!7158460))

(declare-fun m!7158692 () Bool)

(assert (=> b!6351850 m!7158692))

(assert (=> bm!541663 m!7158404))

(declare-fun m!7158694 () Bool)

(assert (=> b!6351839 m!7158694))

(assert (=> d!1993092 m!7158404))

(declare-fun m!7158696 () Bool)

(assert (=> d!1993092 m!7158696))

(assert (=> b!6351851 m!7158460))

(assert (=> b!6351851 m!7158460))

(assert (=> b!6351851 m!7158466))

(assert (=> b!6351847 m!7158456))

(assert (=> b!6351844 m!7158460))

(assert (=> b!6351844 m!7158460))

(assert (=> b!6351844 m!7158466))

(assert (=> b!6351843 m!7158456))

(assert (=> b!6351006 d!1993092))

(declare-fun d!1993094 () Bool)

(declare-fun choose!47136 (Int) Bool)

(assert (=> d!1993094 (= (Exists!3327 lambda!349354) (choose!47136 lambda!349354))))

(declare-fun bs!1590979 () Bool)

(assert (= bs!1590979 d!1993094))

(declare-fun m!7158698 () Bool)

(assert (=> bs!1590979 m!7158698))

(assert (=> b!6351006 d!1993094))

(declare-fun d!1993096 () Bool)

(assert (=> d!1993096 (= (Exists!3327 lambda!349355) (choose!47136 lambda!349355))))

(declare-fun bs!1590980 () Bool)

(assert (= bs!1590980 d!1993096))

(declare-fun m!7158700 () Bool)

(assert (=> bs!1590980 m!7158700))

(assert (=> b!6351006 d!1993096))

(declare-fun bs!1590981 () Bool)

(declare-fun d!1993098 () Bool)

(assert (= bs!1590981 (and d!1993098 d!1993086)))

(declare-fun lambda!349436 () Int)

(assert (=> bs!1590981 (= lambda!349436 lambda!349434)))

(declare-fun bs!1590982 () Bool)

(assert (= bs!1590982 (and d!1993098 d!1993088)))

(assert (=> bs!1590982 (= lambda!349436 lambda!349435)))

(declare-fun b!6351853 () Bool)

(declare-fun e!3857528 () Bool)

(declare-fun e!3857525 () Bool)

(assert (=> b!6351853 (= e!3857528 e!3857525)))

(declare-fun c!1155659 () Bool)

(assert (=> b!6351853 (= c!1155659 (isEmpty!37037 (tail!12092 (t!378661 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun b!6351854 () Bool)

(declare-fun lt!2364813 () Regex!16257)

(assert (=> b!6351854 (= e!3857525 (= lt!2364813 (head!13007 (t!378661 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun b!6351855 () Bool)

(declare-fun e!3857526 () Regex!16257)

(assert (=> b!6351855 (= e!3857526 (h!71395 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351856 () Bool)

(declare-fun e!3857523 () Regex!16257)

(assert (=> b!6351856 (= e!3857523 EmptyExpr!16257)))

(declare-fun b!6351857 () Bool)

(assert (=> b!6351857 (= e!3857523 (Concat!25102 (h!71395 (t!378661 (exprs!6141 (h!71396 zl!343)))) (generalisedConcat!1854 (t!378661 (t!378661 (exprs!6141 (h!71396 zl!343)))))))))

(declare-fun e!3857527 () Bool)

(assert (=> d!1993098 e!3857527))

(declare-fun res!2613604 () Bool)

(assert (=> d!1993098 (=> (not res!2613604) (not e!3857527))))

(assert (=> d!1993098 (= res!2613604 (validRegex!7993 lt!2364813))))

(assert (=> d!1993098 (= lt!2364813 e!3857526)))

(declare-fun c!1155656 () Bool)

(declare-fun e!3857524 () Bool)

(assert (=> d!1993098 (= c!1155656 e!3857524)))

(declare-fun res!2613605 () Bool)

(assert (=> d!1993098 (=> (not res!2613605) (not e!3857524))))

(assert (=> d!1993098 (= res!2613605 ((_ is Cons!64947) (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(assert (=> d!1993098 (forall!15426 (t!378661 (exprs!6141 (h!71396 zl!343))) lambda!349436)))

(assert (=> d!1993098 (= (generalisedConcat!1854 (t!378661 (exprs!6141 (h!71396 zl!343)))) lt!2364813)))

(declare-fun b!6351858 () Bool)

(assert (=> b!6351858 (= e!3857525 (isConcat!1182 lt!2364813))))

(declare-fun b!6351859 () Bool)

(assert (=> b!6351859 (= e!3857526 e!3857523)))

(declare-fun c!1155658 () Bool)

(assert (=> b!6351859 (= c!1155658 ((_ is Cons!64947) (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351860 () Bool)

(assert (=> b!6351860 (= e!3857524 (isEmpty!37037 (t!378661 (t!378661 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun b!6351861 () Bool)

(assert (=> b!6351861 (= e!3857528 (isEmptyExpr!1659 lt!2364813))))

(declare-fun b!6351862 () Bool)

(assert (=> b!6351862 (= e!3857527 e!3857528)))

(declare-fun c!1155657 () Bool)

(assert (=> b!6351862 (= c!1155657 (isEmpty!37037 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(assert (= (and d!1993098 res!2613605) b!6351860))

(assert (= (and d!1993098 c!1155656) b!6351855))

(assert (= (and d!1993098 (not c!1155656)) b!6351859))

(assert (= (and b!6351859 c!1155658) b!6351857))

(assert (= (and b!6351859 (not c!1155658)) b!6351856))

(assert (= (and d!1993098 res!2613604) b!6351862))

(assert (= (and b!6351862 c!1155657) b!6351861))

(assert (= (and b!6351862 (not c!1155657)) b!6351853))

(assert (= (and b!6351853 c!1155659) b!6351854))

(assert (= (and b!6351853 (not c!1155659)) b!6351858))

(declare-fun m!7158702 () Bool)

(assert (=> b!6351858 m!7158702))

(assert (=> b!6351862 m!7158004))

(declare-fun m!7158704 () Bool)

(assert (=> b!6351861 m!7158704))

(declare-fun m!7158706 () Bool)

(assert (=> d!1993098 m!7158706))

(declare-fun m!7158708 () Bool)

(assert (=> d!1993098 m!7158708))

(declare-fun m!7158710 () Bool)

(assert (=> b!6351860 m!7158710))

(declare-fun m!7158712 () Bool)

(assert (=> b!6351857 m!7158712))

(declare-fun m!7158714 () Bool)

(assert (=> b!6351854 m!7158714))

(declare-fun m!7158716 () Bool)

(assert (=> b!6351853 m!7158716))

(assert (=> b!6351853 m!7158716))

(declare-fun m!7158718 () Bool)

(assert (=> b!6351853 m!7158718))

(assert (=> b!6351006 d!1993098))

(declare-fun d!1993100 () Bool)

(declare-fun isEmpty!37042 (Option!16148) Bool)

(assert (=> d!1993100 (= (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 Nil!64946 s!2326 s!2326)) (not (isEmpty!37042 (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 Nil!64946 s!2326 s!2326))))))

(declare-fun bs!1590983 () Bool)

(assert (= bs!1590983 d!1993100))

(assert (=> bs!1590983 m!7158042))

(declare-fun m!7158720 () Bool)

(assert (=> bs!1590983 m!7158720))

(assert (=> b!6351006 d!1993100))

(declare-fun bs!1590984 () Bool)

(declare-fun b!6351863 () Bool)

(assert (= bs!1590984 (and b!6351863 b!6351484)))

(declare-fun lambda!349437 () Int)

(assert (=> bs!1590984 (not (= lambda!349437 lambda!349407))))

(declare-fun bs!1590985 () Bool)

(assert (= bs!1590985 (and b!6351863 b!6350999)))

(assert (=> bs!1590985 (not (= lambda!349437 lambda!349351))))

(declare-fun bs!1590986 () Bool)

(assert (= bs!1590986 (and b!6351863 b!6351691)))

(assert (=> bs!1590986 (not (= lambda!349437 lambda!349427))))

(declare-fun bs!1590987 () Bool)

(assert (= bs!1590987 (and b!6351863 b!6351481)))

(assert (=> bs!1590987 (= (and (= (reg!16586 lt!2364674) (reg!16586 r!7292)) (= lt!2364674 r!7292)) (= lambda!349437 lambda!349406))))

(assert (=> bs!1590985 (not (= lambda!349437 lambda!349352))))

(declare-fun bs!1590988 () Bool)

(assert (= bs!1590988 (and b!6351863 b!6351688)))

(assert (=> bs!1590988 (= (and (= (reg!16586 lt!2364674) (reg!16586 lt!2364657)) (= lt!2364674 lt!2364657)) (= lambda!349437 lambda!349424))))

(declare-fun bs!1590989 () Bool)

(assert (= bs!1590989 (and b!6351863 b!6351006)))

(assert (=> bs!1590989 (not (= lambda!349437 lambda!349355))))

(assert (=> bs!1590989 (not (= lambda!349437 lambda!349354))))

(assert (=> b!6351863 true))

(assert (=> b!6351863 true))

(declare-fun bs!1590990 () Bool)

(declare-fun b!6351866 () Bool)

(assert (= bs!1590990 (and b!6351866 b!6351484)))

(declare-fun lambda!349438 () Int)

(assert (=> bs!1590990 (= (and (= (regOne!33026 lt!2364674) (regOne!33026 r!7292)) (= (regTwo!33026 lt!2364674) (regTwo!33026 r!7292))) (= lambda!349438 lambda!349407))))

(declare-fun bs!1590991 () Bool)

(assert (= bs!1590991 (and b!6351866 b!6350999)))

(assert (=> bs!1590991 (not (= lambda!349438 lambda!349351))))

(declare-fun bs!1590992 () Bool)

(assert (= bs!1590992 (and b!6351866 b!6351863)))

(assert (=> bs!1590992 (not (= lambda!349438 lambda!349437))))

(declare-fun bs!1590993 () Bool)

(assert (= bs!1590993 (and b!6351866 b!6351691)))

(assert (=> bs!1590993 (= (and (= (regOne!33026 lt!2364674) (regOne!33026 lt!2364657)) (= (regTwo!33026 lt!2364674) (regTwo!33026 lt!2364657))) (= lambda!349438 lambda!349427))))

(declare-fun bs!1590994 () Bool)

(assert (= bs!1590994 (and b!6351866 b!6351481)))

(assert (=> bs!1590994 (not (= lambda!349438 lambda!349406))))

(assert (=> bs!1590991 (= (and (= (regOne!33026 lt!2364674) (regOne!33026 r!7292)) (= (regTwo!33026 lt!2364674) (regTwo!33026 r!7292))) (= lambda!349438 lambda!349352))))

(declare-fun bs!1590995 () Bool)

(assert (= bs!1590995 (and b!6351866 b!6351688)))

(assert (=> bs!1590995 (not (= lambda!349438 lambda!349424))))

(declare-fun bs!1590996 () Bool)

(assert (= bs!1590996 (and b!6351866 b!6351006)))

(assert (=> bs!1590996 (= (and (= (regOne!33026 lt!2364674) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 lt!2364674) lt!2364674)) (= lambda!349438 lambda!349355))))

(assert (=> bs!1590996 (not (= lambda!349438 lambda!349354))))

(assert (=> b!6351866 true))

(assert (=> b!6351866 true))

(declare-fun e!3857534 () Bool)

(declare-fun call!541670 () Bool)

(assert (=> b!6351863 (= e!3857534 call!541670)))

(declare-fun bm!541664 () Bool)

(declare-fun call!541669 () Bool)

(assert (=> bm!541664 (= call!541669 (isEmpty!37040 s!2326))))

(declare-fun b!6351864 () Bool)

(declare-fun e!3857535 () Bool)

(assert (=> b!6351864 (= e!3857535 (matchRSpec!3358 (regTwo!33027 lt!2364674) s!2326))))

(declare-fun b!6351865 () Bool)

(declare-fun c!1155661 () Bool)

(assert (=> b!6351865 (= c!1155661 ((_ is ElementMatch!16257) lt!2364674))))

(declare-fun e!3857529 () Bool)

(declare-fun e!3857530 () Bool)

(assert (=> b!6351865 (= e!3857529 e!3857530)))

(declare-fun c!1155660 () Bool)

(declare-fun bm!541665 () Bool)

(assert (=> bm!541665 (= call!541670 (Exists!3327 (ite c!1155660 lambda!349437 lambda!349438)))))

(declare-fun b!6351867 () Bool)

(assert (=> b!6351867 (= e!3857530 (= s!2326 (Cons!64946 (c!1155402 lt!2364674) Nil!64946)))))

(declare-fun b!6351868 () Bool)

(declare-fun c!1155662 () Bool)

(assert (=> b!6351868 (= c!1155662 ((_ is Union!16257) lt!2364674))))

(declare-fun e!3857532 () Bool)

(assert (=> b!6351868 (= e!3857530 e!3857532)))

(declare-fun b!6351869 () Bool)

(declare-fun e!3857531 () Bool)

(assert (=> b!6351869 (= e!3857531 call!541669)))

(declare-fun b!6351870 () Bool)

(assert (=> b!6351870 (= e!3857531 e!3857529)))

(declare-fun res!2613607 () Bool)

(assert (=> b!6351870 (= res!2613607 (not ((_ is EmptyLang!16257) lt!2364674)))))

(assert (=> b!6351870 (=> (not res!2613607) (not e!3857529))))

(declare-fun b!6351871 () Bool)

(declare-fun res!2613606 () Bool)

(assert (=> b!6351871 (=> res!2613606 e!3857534)))

(assert (=> b!6351871 (= res!2613606 call!541669)))

(declare-fun e!3857533 () Bool)

(assert (=> b!6351871 (= e!3857533 e!3857534)))

(declare-fun b!6351872 () Bool)

(assert (=> b!6351872 (= e!3857532 e!3857533)))

(assert (=> b!6351872 (= c!1155660 ((_ is Star!16257) lt!2364674))))

(declare-fun b!6351873 () Bool)

(assert (=> b!6351873 (= e!3857532 e!3857535)))

(declare-fun res!2613608 () Bool)

(assert (=> b!6351873 (= res!2613608 (matchRSpec!3358 (regOne!33027 lt!2364674) s!2326))))

(assert (=> b!6351873 (=> res!2613608 e!3857535)))

(declare-fun d!1993102 () Bool)

(declare-fun c!1155663 () Bool)

(assert (=> d!1993102 (= c!1155663 ((_ is EmptyExpr!16257) lt!2364674))))

(assert (=> d!1993102 (= (matchRSpec!3358 lt!2364674 s!2326) e!3857531)))

(assert (=> b!6351866 (= e!3857533 call!541670)))

(assert (= (and d!1993102 c!1155663) b!6351869))

(assert (= (and d!1993102 (not c!1155663)) b!6351870))

(assert (= (and b!6351870 res!2613607) b!6351865))

(assert (= (and b!6351865 c!1155661) b!6351867))

(assert (= (and b!6351865 (not c!1155661)) b!6351868))

(assert (= (and b!6351868 c!1155662) b!6351873))

(assert (= (and b!6351868 (not c!1155662)) b!6351872))

(assert (= (and b!6351873 (not res!2613608)) b!6351864))

(assert (= (and b!6351872 c!1155660) b!6351871))

(assert (= (and b!6351872 (not c!1155660)) b!6351866))

(assert (= (and b!6351871 (not res!2613606)) b!6351863))

(assert (= (or b!6351863 b!6351866) bm!541665))

(assert (= (or b!6351869 b!6351871) bm!541664))

(assert (=> bm!541664 m!7158404))

(declare-fun m!7158722 () Bool)

(assert (=> b!6351864 m!7158722))

(declare-fun m!7158724 () Bool)

(assert (=> bm!541665 m!7158724))

(declare-fun m!7158726 () Bool)

(assert (=> b!6351873 m!7158726))

(assert (=> b!6351006 d!1993102))

(declare-fun bs!1590997 () Bool)

(declare-fun d!1993104 () Bool)

(assert (= bs!1590997 (and d!1993104 b!6351484)))

(declare-fun lambda!349443 () Int)

(assert (=> bs!1590997 (not (= lambda!349443 lambda!349407))))

(declare-fun bs!1590998 () Bool)

(assert (= bs!1590998 (and d!1993104 b!6350999)))

(assert (=> bs!1590998 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349443 lambda!349351))))

(declare-fun bs!1590999 () Bool)

(assert (= bs!1590999 (and d!1993104 b!6351863)))

(assert (=> bs!1590999 (not (= lambda!349443 lambda!349437))))

(declare-fun bs!1591000 () Bool)

(assert (= bs!1591000 (and d!1993104 b!6351866)))

(assert (=> bs!1591000 (not (= lambda!349443 lambda!349438))))

(declare-fun bs!1591001 () Bool)

(assert (= bs!1591001 (and d!1993104 b!6351691)))

(assert (=> bs!1591001 (not (= lambda!349443 lambda!349427))))

(declare-fun bs!1591002 () Bool)

(assert (= bs!1591002 (and d!1993104 b!6351481)))

(assert (=> bs!1591002 (not (= lambda!349443 lambda!349406))))

(assert (=> bs!1590998 (not (= lambda!349443 lambda!349352))))

(declare-fun bs!1591003 () Bool)

(assert (= bs!1591003 (and d!1993104 b!6351688)))

(assert (=> bs!1591003 (not (= lambda!349443 lambda!349424))))

(declare-fun bs!1591004 () Bool)

(assert (= bs!1591004 (and d!1993104 b!6351006)))

(assert (=> bs!1591004 (not (= lambda!349443 lambda!349355))))

(assert (=> bs!1591004 (= lambda!349443 lambda!349354)))

(assert (=> d!1993104 true))

(assert (=> d!1993104 true))

(assert (=> d!1993104 true))

(declare-fun lambda!349444 () Int)

(assert (=> bs!1590998 (not (= lambda!349444 lambda!349351))))

(assert (=> bs!1590999 (not (= lambda!349444 lambda!349437))))

(assert (=> bs!1591000 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 lt!2364674)) (= lt!2364674 (regTwo!33026 lt!2364674))) (= lambda!349444 lambda!349438))))

(assert (=> bs!1591001 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 lt!2364657)) (= lt!2364674 (regTwo!33026 lt!2364657))) (= lambda!349444 lambda!349427))))

(assert (=> bs!1591002 (not (= lambda!349444 lambda!349406))))

(declare-fun bs!1591005 () Bool)

(assert (= bs!1591005 d!1993104))

(assert (=> bs!1591005 (not (= lambda!349444 lambda!349443))))

(assert (=> bs!1590997 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349444 lambda!349407))))

(assert (=> bs!1590998 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349444 lambda!349352))))

(assert (=> bs!1591003 (not (= lambda!349444 lambda!349424))))

(assert (=> bs!1591004 (= lambda!349444 lambda!349355)))

(assert (=> bs!1591004 (not (= lambda!349444 lambda!349354))))

(assert (=> d!1993104 true))

(assert (=> d!1993104 true))

(assert (=> d!1993104 true))

(assert (=> d!1993104 (= (Exists!3327 lambda!349443) (Exists!3327 lambda!349444))))

(declare-fun lt!2364816 () Unit!158359)

(declare-fun choose!47138 (Regex!16257 Regex!16257 List!65070) Unit!158359)

(assert (=> d!1993104 (= lt!2364816 (choose!47138 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326))))

(assert (=> d!1993104 (validRegex!7993 (regOne!33026 (regOne!33026 r!7292)))))

(assert (=> d!1993104 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1864 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326) lt!2364816)))

(declare-fun m!7158728 () Bool)

(assert (=> bs!1591005 m!7158728))

(declare-fun m!7158730 () Bool)

(assert (=> bs!1591005 m!7158730))

(declare-fun m!7158732 () Bool)

(assert (=> bs!1591005 m!7158732))

(assert (=> bs!1591005 m!7158646))

(assert (=> b!6351006 d!1993104))

(declare-fun bs!1591006 () Bool)

(declare-fun d!1993106 () Bool)

(assert (= bs!1591006 (and d!1993106 b!6350999)))

(declare-fun lambda!349447 () Int)

(assert (=> bs!1591006 (= (and (= (regOne!33026 (regOne!33026 r!7292)) (regOne!33026 r!7292)) (= lt!2364674 (regTwo!33026 r!7292))) (= lambda!349447 lambda!349351))))

(declare-fun bs!1591007 () Bool)

(assert (= bs!1591007 (and d!1993106 b!6351863)))

(assert (=> bs!1591007 (not (= lambda!349447 lambda!349437))))

(declare-fun bs!1591008 () Bool)

(assert (= bs!1591008 (and d!1993106 b!6351866)))

(assert (=> bs!1591008 (not (= lambda!349447 lambda!349438))))

(declare-fun bs!1591009 () Bool)

(assert (= bs!1591009 (and d!1993106 d!1993104)))

(assert (=> bs!1591009 (not (= lambda!349447 lambda!349444))))

(declare-fun bs!1591010 () Bool)

(assert (= bs!1591010 (and d!1993106 b!6351691)))

(assert (=> bs!1591010 (not (= lambda!349447 lambda!349427))))

(declare-fun bs!1591011 () Bool)

(assert (= bs!1591011 (and d!1993106 b!6351481)))

(assert (=> bs!1591011 (not (= lambda!349447 lambda!349406))))

(assert (=> bs!1591009 (= lambda!349447 lambda!349443)))

(declare-fun bs!1591012 () Bool)

(assert (= bs!1591012 (and d!1993106 b!6351484)))

(assert (=> bs!1591012 (not (= lambda!349447 lambda!349407))))

(assert (=> bs!1591006 (not (= lambda!349447 lambda!349352))))

(declare-fun bs!1591013 () Bool)

(assert (= bs!1591013 (and d!1993106 b!6351688)))

(assert (=> bs!1591013 (not (= lambda!349447 lambda!349424))))

(declare-fun bs!1591014 () Bool)

(assert (= bs!1591014 (and d!1993106 b!6351006)))

(assert (=> bs!1591014 (not (= lambda!349447 lambda!349355))))

(assert (=> bs!1591014 (= lambda!349447 lambda!349354)))

(assert (=> d!1993106 true))

(assert (=> d!1993106 true))

(assert (=> d!1993106 true))

(assert (=> d!1993106 (= (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 Nil!64946 s!2326 s!2326)) (Exists!3327 lambda!349447))))

(declare-fun lt!2364819 () Unit!158359)

(declare-fun choose!47139 (Regex!16257 Regex!16257 List!65070) Unit!158359)

(assert (=> d!1993106 (= lt!2364819 (choose!47139 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326))))

(assert (=> d!1993106 (validRegex!7993 (regOne!33026 (regOne!33026 r!7292)))))

(assert (=> d!1993106 (= (lemmaFindConcatSeparationEquivalentToExists!2326 (regOne!33026 (regOne!33026 r!7292)) lt!2364674 s!2326) lt!2364819)))

(declare-fun bs!1591015 () Bool)

(assert (= bs!1591015 d!1993106))

(assert (=> bs!1591015 m!7158646))

(declare-fun m!7158734 () Bool)

(assert (=> bs!1591015 m!7158734))

(declare-fun m!7158736 () Bool)

(assert (=> bs!1591015 m!7158736))

(assert (=> bs!1591015 m!7158042))

(assert (=> bs!1591015 m!7158042))

(assert (=> bs!1591015 m!7158044))

(assert (=> b!6351006 d!1993106))

(declare-fun d!1993108 () Bool)

(assert (=> d!1993108 (= (matchR!8440 lt!2364674 s!2326) (matchRSpec!3358 lt!2364674 s!2326))))

(declare-fun lt!2364820 () Unit!158359)

(assert (=> d!1993108 (= lt!2364820 (choose!47129 lt!2364674 s!2326))))

(assert (=> d!1993108 (validRegex!7993 lt!2364674)))

(assert (=> d!1993108 (= (mainMatchTheorem!3358 lt!2364674 s!2326) lt!2364820)))

(declare-fun bs!1591016 () Bool)

(assert (= bs!1591016 d!1993108))

(assert (=> bs!1591016 m!7158036))

(assert (=> bs!1591016 m!7158028))

(declare-fun m!7158738 () Bool)

(assert (=> bs!1591016 m!7158738))

(assert (=> bs!1591016 m!7158696))

(assert (=> b!6351006 d!1993108))

(declare-fun bs!1591017 () Bool)

(declare-fun d!1993110 () Bool)

(assert (= bs!1591017 (and d!1993110 d!1993086)))

(declare-fun lambda!349448 () Int)

(assert (=> bs!1591017 (= lambda!349448 lambda!349434)))

(declare-fun bs!1591018 () Bool)

(assert (= bs!1591018 (and d!1993110 d!1993088)))

(assert (=> bs!1591018 (= lambda!349448 lambda!349435)))

(declare-fun bs!1591019 () Bool)

(assert (= bs!1591019 (and d!1993110 d!1993098)))

(assert (=> bs!1591019 (= lambda!349448 lambda!349436)))

(declare-fun b!6351886 () Bool)

(declare-fun e!3857547 () Bool)

(declare-fun e!3857544 () Bool)

(assert (=> b!6351886 (= e!3857547 e!3857544)))

(declare-fun c!1155667 () Bool)

(assert (=> b!6351886 (= c!1155667 (isEmpty!37037 (tail!12092 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351887 () Bool)

(declare-fun lt!2364821 () Regex!16257)

(assert (=> b!6351887 (= e!3857544 (= lt!2364821 (head!13007 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351888 () Bool)

(declare-fun e!3857545 () Regex!16257)

(assert (=> b!6351888 (= e!3857545 (h!71395 (exprs!6141 (h!71396 zl!343))))))

(declare-fun b!6351889 () Bool)

(declare-fun e!3857542 () Regex!16257)

(assert (=> b!6351889 (= e!3857542 EmptyExpr!16257)))

(declare-fun b!6351890 () Bool)

(assert (=> b!6351890 (= e!3857542 (Concat!25102 (h!71395 (exprs!6141 (h!71396 zl!343))) (generalisedConcat!1854 (t!378661 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun e!3857546 () Bool)

(assert (=> d!1993110 e!3857546))

(declare-fun res!2613621 () Bool)

(assert (=> d!1993110 (=> (not res!2613621) (not e!3857546))))

(assert (=> d!1993110 (= res!2613621 (validRegex!7993 lt!2364821))))

(assert (=> d!1993110 (= lt!2364821 e!3857545)))

(declare-fun c!1155664 () Bool)

(declare-fun e!3857543 () Bool)

(assert (=> d!1993110 (= c!1155664 e!3857543)))

(declare-fun res!2613622 () Bool)

(assert (=> d!1993110 (=> (not res!2613622) (not e!3857543))))

(assert (=> d!1993110 (= res!2613622 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343))))))

(assert (=> d!1993110 (forall!15426 (exprs!6141 (h!71396 zl!343)) lambda!349448)))

(assert (=> d!1993110 (= (generalisedConcat!1854 (exprs!6141 (h!71396 zl!343))) lt!2364821)))

(declare-fun b!6351891 () Bool)

(assert (=> b!6351891 (= e!3857544 (isConcat!1182 lt!2364821))))

(declare-fun b!6351892 () Bool)

(assert (=> b!6351892 (= e!3857545 e!3857542)))

(declare-fun c!1155666 () Bool)

(assert (=> b!6351892 (= c!1155666 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343))))))

(declare-fun b!6351893 () Bool)

(assert (=> b!6351893 (= e!3857543 (isEmpty!37037 (t!378661 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351894 () Bool)

(assert (=> b!6351894 (= e!3857547 (isEmptyExpr!1659 lt!2364821))))

(declare-fun b!6351895 () Bool)

(assert (=> b!6351895 (= e!3857546 e!3857547)))

(declare-fun c!1155665 () Bool)

(assert (=> b!6351895 (= c!1155665 (isEmpty!37037 (exprs!6141 (h!71396 zl!343))))))

(assert (= (and d!1993110 res!2613622) b!6351893))

(assert (= (and d!1993110 c!1155664) b!6351888))

(assert (= (and d!1993110 (not c!1155664)) b!6351892))

(assert (= (and b!6351892 c!1155666) b!6351890))

(assert (= (and b!6351892 (not c!1155666)) b!6351889))

(assert (= (and d!1993110 res!2613621) b!6351895))

(assert (= (and b!6351895 c!1155665) b!6351894))

(assert (= (and b!6351895 (not c!1155665)) b!6351886))

(assert (= (and b!6351886 c!1155667) b!6351887))

(assert (= (and b!6351886 (not c!1155667)) b!6351891))

(declare-fun m!7158740 () Bool)

(assert (=> b!6351891 m!7158740))

(declare-fun m!7158742 () Bool)

(assert (=> b!6351895 m!7158742))

(declare-fun m!7158744 () Bool)

(assert (=> b!6351894 m!7158744))

(declare-fun m!7158746 () Bool)

(assert (=> d!1993110 m!7158746))

(declare-fun m!7158748 () Bool)

(assert (=> d!1993110 m!7158748))

(assert (=> b!6351893 m!7158004))

(assert (=> b!6351890 m!7158046))

(declare-fun m!7158750 () Bool)

(assert (=> b!6351887 m!7158750))

(declare-fun m!7158752 () Bool)

(assert (=> b!6351886 m!7158752))

(assert (=> b!6351886 m!7158752))

(declare-fun m!7158754 () Bool)

(assert (=> b!6351886 m!7158754))

(assert (=> b!6351026 d!1993110))

(declare-fun c!1155669 () Bool)

(declare-fun c!1155668 () Bool)

(declare-fun bm!541666 () Bool)

(declare-fun call!541671 () Bool)

(assert (=> bm!541666 (= call!541671 (validRegex!7993 (ite c!1155669 (reg!16586 lt!2364664) (ite c!1155668 (regOne!33027 lt!2364664) (regOne!33026 lt!2364664)))))))

(declare-fun bm!541667 () Bool)

(declare-fun call!541672 () Bool)

(assert (=> bm!541667 (= call!541672 (validRegex!7993 (ite c!1155668 (regTwo!33027 lt!2364664) (regTwo!33026 lt!2364664))))))

(declare-fun b!6351897 () Bool)

(declare-fun e!3857553 () Bool)

(declare-fun e!3857551 () Bool)

(assert (=> b!6351897 (= e!3857553 e!3857551)))

(declare-fun res!2613623 () Bool)

(assert (=> b!6351897 (=> (not res!2613623) (not e!3857551))))

(declare-fun call!541673 () Bool)

(assert (=> b!6351897 (= res!2613623 call!541673)))

(declare-fun b!6351898 () Bool)

(declare-fun e!3857552 () Bool)

(declare-fun e!3857554 () Bool)

(assert (=> b!6351898 (= e!3857552 e!3857554)))

(assert (=> b!6351898 (= c!1155669 ((_ is Star!16257) lt!2364664))))

(declare-fun b!6351899 () Bool)

(assert (=> b!6351899 (= e!3857551 call!541672)))

(declare-fun b!6351900 () Bool)

(declare-fun res!2613627 () Bool)

(assert (=> b!6351900 (=> res!2613627 e!3857553)))

(assert (=> b!6351900 (= res!2613627 (not ((_ is Concat!25102) lt!2364664)))))

(declare-fun e!3857550 () Bool)

(assert (=> b!6351900 (= e!3857550 e!3857553)))

(declare-fun bm!541668 () Bool)

(assert (=> bm!541668 (= call!541673 call!541671)))

(declare-fun b!6351901 () Bool)

(declare-fun e!3857549 () Bool)

(assert (=> b!6351901 (= e!3857554 e!3857549)))

(declare-fun res!2613625 () Bool)

(assert (=> b!6351901 (= res!2613625 (not (nullable!6250 (reg!16586 lt!2364664))))))

(assert (=> b!6351901 (=> (not res!2613625) (not e!3857549))))

(declare-fun b!6351902 () Bool)

(assert (=> b!6351902 (= e!3857549 call!541671)))

(declare-fun b!6351903 () Bool)

(declare-fun res!2613626 () Bool)

(declare-fun e!3857548 () Bool)

(assert (=> b!6351903 (=> (not res!2613626) (not e!3857548))))

(assert (=> b!6351903 (= res!2613626 call!541673)))

(assert (=> b!6351903 (= e!3857550 e!3857548)))

(declare-fun b!6351904 () Bool)

(assert (=> b!6351904 (= e!3857548 call!541672)))

(declare-fun b!6351896 () Bool)

(assert (=> b!6351896 (= e!3857554 e!3857550)))

(assert (=> b!6351896 (= c!1155668 ((_ is Union!16257) lt!2364664))))

(declare-fun d!1993112 () Bool)

(declare-fun res!2613624 () Bool)

(assert (=> d!1993112 (=> res!2613624 e!3857552)))

(assert (=> d!1993112 (= res!2613624 ((_ is ElementMatch!16257) lt!2364664))))

(assert (=> d!1993112 (= (validRegex!7993 lt!2364664) e!3857552)))

(assert (= (and d!1993112 (not res!2613624)) b!6351898))

(assert (= (and b!6351898 c!1155669) b!6351901))

(assert (= (and b!6351898 (not c!1155669)) b!6351896))

(assert (= (and b!6351901 res!2613625) b!6351902))

(assert (= (and b!6351896 c!1155668) b!6351903))

(assert (= (and b!6351896 (not c!1155668)) b!6351900))

(assert (= (and b!6351903 res!2613626) b!6351904))

(assert (= (and b!6351900 (not res!2613627)) b!6351897))

(assert (= (and b!6351897 res!2613623) b!6351899))

(assert (= (or b!6351904 b!6351899) bm!541667))

(assert (= (or b!6351903 b!6351897) bm!541668))

(assert (= (or b!6351902 bm!541668) bm!541666))

(declare-fun m!7158756 () Bool)

(assert (=> bm!541666 m!7158756))

(declare-fun m!7158758 () Bool)

(assert (=> bm!541667 m!7158758))

(declare-fun m!7158760 () Bool)

(assert (=> b!6351901 m!7158760))

(assert (=> b!6351007 d!1993112))

(declare-fun d!1993114 () Bool)

(declare-fun c!1155670 () Bool)

(assert (=> d!1993114 (= c!1155670 (isEmpty!37040 (t!378660 s!2326)))))

(declare-fun e!3857555 () Bool)

(assert (=> d!1993114 (= (matchZipper!2269 lt!2364671 (t!378660 s!2326)) e!3857555)))

(declare-fun b!6351905 () Bool)

(assert (=> b!6351905 (= e!3857555 (nullableZipper!2023 lt!2364671))))

(declare-fun b!6351906 () Bool)

(assert (=> b!6351906 (= e!3857555 (matchZipper!2269 (derivationStepZipper!2223 lt!2364671 (head!13006 (t!378660 s!2326))) (tail!12091 (t!378660 s!2326))))))

(assert (= (and d!1993114 c!1155670) b!6351905))

(assert (= (and d!1993114 (not c!1155670)) b!6351906))

(assert (=> d!1993114 m!7158496))

(declare-fun m!7158762 () Bool)

(assert (=> b!6351905 m!7158762))

(assert (=> b!6351906 m!7158500))

(assert (=> b!6351906 m!7158500))

(declare-fun m!7158764 () Bool)

(assert (=> b!6351906 m!7158764))

(assert (=> b!6351906 m!7158504))

(assert (=> b!6351906 m!7158764))

(assert (=> b!6351906 m!7158504))

(declare-fun m!7158766 () Bool)

(assert (=> b!6351906 m!7158766))

(assert (=> b!6351018 d!1993114))

(declare-fun d!1993116 () Bool)

(declare-fun lt!2364824 () Int)

(assert (=> d!1993116 (>= lt!2364824 0)))

(declare-fun e!3857558 () Int)

(assert (=> d!1993116 (= lt!2364824 e!3857558)))

(declare-fun c!1155674 () Bool)

(assert (=> d!1993116 (= c!1155674 ((_ is Cons!64947) (exprs!6141 lt!2364656)))))

(assert (=> d!1993116 (= (contextDepthTotal!366 lt!2364656) lt!2364824)))

(declare-fun b!6351911 () Bool)

(declare-fun regexDepthTotal!215 (Regex!16257) Int)

(assert (=> b!6351911 (= e!3857558 (+ (regexDepthTotal!215 (h!71395 (exprs!6141 lt!2364656))) (contextDepthTotal!366 (Context!11283 (t!378661 (exprs!6141 lt!2364656))))))))

(declare-fun b!6351912 () Bool)

(assert (=> b!6351912 (= e!3857558 1)))

(assert (= (and d!1993116 c!1155674) b!6351911))

(assert (= (and d!1993116 (not c!1155674)) b!6351912))

(declare-fun m!7158768 () Bool)

(assert (=> b!6351911 m!7158768))

(declare-fun m!7158770 () Bool)

(assert (=> b!6351911 m!7158770))

(assert (=> b!6351019 d!1993116))

(declare-fun d!1993118 () Bool)

(declare-fun lt!2364825 () Int)

(assert (=> d!1993118 (>= lt!2364825 0)))

(declare-fun e!3857559 () Int)

(assert (=> d!1993118 (= lt!2364825 e!3857559)))

(declare-fun c!1155675 () Bool)

(assert (=> d!1993118 (= c!1155675 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343))))))

(assert (=> d!1993118 (= (contextDepthTotal!366 (h!71396 zl!343)) lt!2364825)))

(declare-fun b!6351913 () Bool)

(assert (=> b!6351913 (= e!3857559 (+ (regexDepthTotal!215 (h!71395 (exprs!6141 (h!71396 zl!343)))) (contextDepthTotal!366 (Context!11283 (t!378661 (exprs!6141 (h!71396 zl!343)))))))))

(declare-fun b!6351914 () Bool)

(assert (=> b!6351914 (= e!3857559 1)))

(assert (= (and d!1993118 c!1155675) b!6351913))

(assert (= (and d!1993118 (not c!1155675)) b!6351914))

(declare-fun m!7158772 () Bool)

(assert (=> b!6351913 m!7158772))

(declare-fun m!7158774 () Bool)

(assert (=> b!6351913 m!7158774))

(assert (=> b!6351019 d!1993118))

(declare-fun d!1993120 () Bool)

(assert (=> d!1993120 (= (Exists!3327 lambda!349352) (choose!47136 lambda!349352))))

(declare-fun bs!1591020 () Bool)

(assert (= bs!1591020 d!1993120))

(declare-fun m!7158776 () Bool)

(assert (=> bs!1591020 m!7158776))

(assert (=> b!6350999 d!1993120))

(declare-fun bs!1591021 () Bool)

(declare-fun d!1993122 () Bool)

(assert (= bs!1591021 (and d!1993122 b!6350999)))

(declare-fun lambda!349449 () Int)

(assert (=> bs!1591021 (= lambda!349449 lambda!349351)))

(declare-fun bs!1591022 () Bool)

(assert (= bs!1591022 (and d!1993122 d!1993106)))

(assert (=> bs!1591022 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349449 lambda!349447))))

(declare-fun bs!1591023 () Bool)

(assert (= bs!1591023 (and d!1993122 b!6351863)))

(assert (=> bs!1591023 (not (= lambda!349449 lambda!349437))))

(declare-fun bs!1591024 () Bool)

(assert (= bs!1591024 (and d!1993122 b!6351866)))

(assert (=> bs!1591024 (not (= lambda!349449 lambda!349438))))

(declare-fun bs!1591025 () Bool)

(assert (= bs!1591025 (and d!1993122 d!1993104)))

(assert (=> bs!1591025 (not (= lambda!349449 lambda!349444))))

(declare-fun bs!1591026 () Bool)

(assert (= bs!1591026 (and d!1993122 b!6351691)))

(assert (=> bs!1591026 (not (= lambda!349449 lambda!349427))))

(declare-fun bs!1591027 () Bool)

(assert (= bs!1591027 (and d!1993122 b!6351481)))

(assert (=> bs!1591027 (not (= lambda!349449 lambda!349406))))

(assert (=> bs!1591025 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349449 lambda!349443))))

(declare-fun bs!1591028 () Bool)

(assert (= bs!1591028 (and d!1993122 b!6351484)))

(assert (=> bs!1591028 (not (= lambda!349449 lambda!349407))))

(assert (=> bs!1591021 (not (= lambda!349449 lambda!349352))))

(declare-fun bs!1591029 () Bool)

(assert (= bs!1591029 (and d!1993122 b!6351688)))

(assert (=> bs!1591029 (not (= lambda!349449 lambda!349424))))

(declare-fun bs!1591030 () Bool)

(assert (= bs!1591030 (and d!1993122 b!6351006)))

(assert (=> bs!1591030 (not (= lambda!349449 lambda!349355))))

(assert (=> bs!1591030 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349449 lambda!349354))))

(assert (=> d!1993122 true))

(assert (=> d!1993122 true))

(assert (=> d!1993122 true))

(assert (=> d!1993122 (= (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) Nil!64946 s!2326 s!2326)) (Exists!3327 lambda!349449))))

(declare-fun lt!2364826 () Unit!158359)

(assert (=> d!1993122 (= lt!2364826 (choose!47139 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326))))

(assert (=> d!1993122 (validRegex!7993 (regOne!33026 r!7292))))

(assert (=> d!1993122 (= (lemmaFindConcatSeparationEquivalentToExists!2326 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326) lt!2364826)))

(declare-fun bs!1591031 () Bool)

(assert (= bs!1591031 d!1993122))

(declare-fun m!7158778 () Bool)

(assert (=> bs!1591031 m!7158778))

(declare-fun m!7158780 () Bool)

(assert (=> bs!1591031 m!7158780))

(declare-fun m!7158782 () Bool)

(assert (=> bs!1591031 m!7158782))

(assert (=> bs!1591031 m!7157990))

(assert (=> bs!1591031 m!7157990))

(assert (=> bs!1591031 m!7157992))

(assert (=> b!6350999 d!1993122))

(declare-fun d!1993124 () Bool)

(assert (=> d!1993124 (= (Exists!3327 lambda!349351) (choose!47136 lambda!349351))))

(declare-fun bs!1591032 () Bool)

(assert (= bs!1591032 d!1993124))

(declare-fun m!7158784 () Bool)

(assert (=> bs!1591032 m!7158784))

(assert (=> b!6350999 d!1993124))

(declare-fun b!6351915 () Bool)

(declare-fun e!3857560 () Bool)

(declare-fun lt!2364829 () Option!16148)

(assert (=> b!6351915 (= e!3857560 (not (isDefined!12851 lt!2364829)))))

(declare-fun d!1993126 () Bool)

(assert (=> d!1993126 e!3857560))

(declare-fun res!2613631 () Bool)

(assert (=> d!1993126 (=> res!2613631 e!3857560)))

(declare-fun e!3857561 () Bool)

(assert (=> d!1993126 (= res!2613631 e!3857561)))

(declare-fun res!2613630 () Bool)

(assert (=> d!1993126 (=> (not res!2613630) (not e!3857561))))

(assert (=> d!1993126 (= res!2613630 (isDefined!12851 lt!2364829))))

(declare-fun e!3857562 () Option!16148)

(assert (=> d!1993126 (= lt!2364829 e!3857562)))

(declare-fun c!1155676 () Bool)

(declare-fun e!3857563 () Bool)

(assert (=> d!1993126 (= c!1155676 e!3857563)))

(declare-fun res!2613628 () Bool)

(assert (=> d!1993126 (=> (not res!2613628) (not e!3857563))))

(assert (=> d!1993126 (= res!2613628 (matchR!8440 (regOne!33026 r!7292) Nil!64946))))

(assert (=> d!1993126 (validRegex!7993 (regOne!33026 r!7292))))

(assert (=> d!1993126 (= (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) Nil!64946 s!2326 s!2326) lt!2364829)))

(declare-fun b!6351916 () Bool)

(assert (=> b!6351916 (= e!3857561 (= (++!14326 (_1!36539 (get!22470 lt!2364829)) (_2!36539 (get!22470 lt!2364829))) s!2326))))

(declare-fun b!6351917 () Bool)

(declare-fun e!3857564 () Option!16148)

(assert (=> b!6351917 (= e!3857562 e!3857564)))

(declare-fun c!1155677 () Bool)

(assert (=> b!6351917 (= c!1155677 ((_ is Nil!64946) s!2326))))

(declare-fun b!6351918 () Bool)

(assert (=> b!6351918 (= e!3857563 (matchR!8440 (regTwo!33026 r!7292) s!2326))))

(declare-fun b!6351919 () Bool)

(declare-fun lt!2364828 () Unit!158359)

(declare-fun lt!2364827 () Unit!158359)

(assert (=> b!6351919 (= lt!2364828 lt!2364827)))

(assert (=> b!6351919 (= (++!14326 (++!14326 Nil!64946 (Cons!64946 (h!71394 s!2326) Nil!64946)) (t!378660 s!2326)) s!2326)))

(assert (=> b!6351919 (= lt!2364827 (lemmaMoveElementToOtherListKeepsConcatEq!2421 Nil!64946 (h!71394 s!2326) (t!378660 s!2326) s!2326))))

(assert (=> b!6351919 (= e!3857564 (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) (++!14326 Nil!64946 (Cons!64946 (h!71394 s!2326) Nil!64946)) (t!378660 s!2326) s!2326))))

(declare-fun b!6351920 () Bool)

(declare-fun res!2613629 () Bool)

(assert (=> b!6351920 (=> (not res!2613629) (not e!3857561))))

(assert (=> b!6351920 (= res!2613629 (matchR!8440 (regOne!33026 r!7292) (_1!36539 (get!22470 lt!2364829))))))

(declare-fun b!6351921 () Bool)

(assert (=> b!6351921 (= e!3857562 (Some!16147 (tuple2!66473 Nil!64946 s!2326)))))

(declare-fun b!6351922 () Bool)

(assert (=> b!6351922 (= e!3857564 None!16147)))

(declare-fun b!6351923 () Bool)

(declare-fun res!2613632 () Bool)

(assert (=> b!6351923 (=> (not res!2613632) (not e!3857561))))

(assert (=> b!6351923 (= res!2613632 (matchR!8440 (regTwo!33026 r!7292) (_2!36539 (get!22470 lt!2364829))))))

(assert (= (and d!1993126 res!2613628) b!6351918))

(assert (= (and d!1993126 c!1155676) b!6351921))

(assert (= (and d!1993126 (not c!1155676)) b!6351917))

(assert (= (and b!6351917 c!1155677) b!6351922))

(assert (= (and b!6351917 (not c!1155677)) b!6351919))

(assert (= (and d!1993126 res!2613630) b!6351920))

(assert (= (and b!6351920 res!2613629) b!6351923))

(assert (= (and b!6351923 res!2613632) b!6351916))

(assert (= (and d!1993126 (not res!2613631)) b!6351915))

(declare-fun m!7158786 () Bool)

(assert (=> b!6351916 m!7158786))

(declare-fun m!7158788 () Bool)

(assert (=> b!6351916 m!7158788))

(assert (=> b!6351923 m!7158786))

(declare-fun m!7158790 () Bool)

(assert (=> b!6351923 m!7158790))

(assert (=> b!6351919 m!7158632))

(assert (=> b!6351919 m!7158632))

(assert (=> b!6351919 m!7158634))

(assert (=> b!6351919 m!7158636))

(assert (=> b!6351919 m!7158632))

(declare-fun m!7158792 () Bool)

(assert (=> b!6351919 m!7158792))

(declare-fun m!7158794 () Bool)

(assert (=> b!6351918 m!7158794))

(assert (=> b!6351920 m!7158786))

(declare-fun m!7158796 () Bool)

(assert (=> b!6351920 m!7158796))

(declare-fun m!7158798 () Bool)

(assert (=> d!1993126 m!7158798))

(declare-fun m!7158800 () Bool)

(assert (=> d!1993126 m!7158800))

(assert (=> d!1993126 m!7158778))

(assert (=> b!6351915 m!7158798))

(assert (=> b!6350999 d!1993126))

(declare-fun bs!1591033 () Bool)

(declare-fun d!1993128 () Bool)

(assert (= bs!1591033 (and d!1993128 b!6350999)))

(declare-fun lambda!349450 () Int)

(assert (=> bs!1591033 (= lambda!349450 lambda!349351)))

(declare-fun bs!1591034 () Bool)

(assert (= bs!1591034 (and d!1993128 d!1993106)))

(assert (=> bs!1591034 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349450 lambda!349447))))

(declare-fun bs!1591035 () Bool)

(assert (= bs!1591035 (and d!1993128 b!6351863)))

(assert (=> bs!1591035 (not (= lambda!349450 lambda!349437))))

(declare-fun bs!1591036 () Bool)

(assert (= bs!1591036 (and d!1993128 b!6351866)))

(assert (=> bs!1591036 (not (= lambda!349450 lambda!349438))))

(declare-fun bs!1591037 () Bool)

(assert (= bs!1591037 (and d!1993128 d!1993122)))

(assert (=> bs!1591037 (= lambda!349450 lambda!349449)))

(declare-fun bs!1591038 () Bool)

(assert (= bs!1591038 (and d!1993128 d!1993104)))

(assert (=> bs!1591038 (not (= lambda!349450 lambda!349444))))

(declare-fun bs!1591039 () Bool)

(assert (= bs!1591039 (and d!1993128 b!6351691)))

(assert (=> bs!1591039 (not (= lambda!349450 lambda!349427))))

(declare-fun bs!1591040 () Bool)

(assert (= bs!1591040 (and d!1993128 b!6351481)))

(assert (=> bs!1591040 (not (= lambda!349450 lambda!349406))))

(assert (=> bs!1591038 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349450 lambda!349443))))

(declare-fun bs!1591041 () Bool)

(assert (= bs!1591041 (and d!1993128 b!6351484)))

(assert (=> bs!1591041 (not (= lambda!349450 lambda!349407))))

(assert (=> bs!1591033 (not (= lambda!349450 lambda!349352))))

(declare-fun bs!1591042 () Bool)

(assert (= bs!1591042 (and d!1993128 b!6351688)))

(assert (=> bs!1591042 (not (= lambda!349450 lambda!349424))))

(declare-fun bs!1591043 () Bool)

(assert (= bs!1591043 (and d!1993128 b!6351006)))

(assert (=> bs!1591043 (not (= lambda!349450 lambda!349355))))

(assert (=> bs!1591043 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349450 lambda!349354))))

(assert (=> d!1993128 true))

(assert (=> d!1993128 true))

(assert (=> d!1993128 true))

(declare-fun lambda!349451 () Int)

(assert (=> bs!1591033 (not (= lambda!349451 lambda!349351))))

(assert (=> bs!1591034 (not (= lambda!349451 lambda!349447))))

(declare-fun bs!1591044 () Bool)

(assert (= bs!1591044 d!1993128))

(assert (=> bs!1591044 (not (= lambda!349451 lambda!349450))))

(assert (=> bs!1591035 (not (= lambda!349451 lambda!349437))))

(assert (=> bs!1591036 (= (and (= (regOne!33026 r!7292) (regOne!33026 lt!2364674)) (= (regTwo!33026 r!7292) (regTwo!33026 lt!2364674))) (= lambda!349451 lambda!349438))))

(assert (=> bs!1591037 (not (= lambda!349451 lambda!349449))))

(assert (=> bs!1591038 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349451 lambda!349444))))

(assert (=> bs!1591039 (= (and (= (regOne!33026 r!7292) (regOne!33026 lt!2364657)) (= (regTwo!33026 r!7292) (regTwo!33026 lt!2364657))) (= lambda!349451 lambda!349427))))

(assert (=> bs!1591040 (not (= lambda!349451 lambda!349406))))

(assert (=> bs!1591038 (not (= lambda!349451 lambda!349443))))

(assert (=> bs!1591041 (= lambda!349451 lambda!349407)))

(assert (=> bs!1591033 (= lambda!349451 lambda!349352)))

(assert (=> bs!1591042 (not (= lambda!349451 lambda!349424))))

(assert (=> bs!1591043 (= (and (= (regOne!33026 r!7292) (regOne!33026 (regOne!33026 r!7292))) (= (regTwo!33026 r!7292) lt!2364674)) (= lambda!349451 lambda!349355))))

(assert (=> bs!1591043 (not (= lambda!349451 lambda!349354))))

(assert (=> d!1993128 true))

(assert (=> d!1993128 true))

(assert (=> d!1993128 true))

(assert (=> d!1993128 (= (Exists!3327 lambda!349450) (Exists!3327 lambda!349451))))

(declare-fun lt!2364830 () Unit!158359)

(assert (=> d!1993128 (= lt!2364830 (choose!47138 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326))))

(assert (=> d!1993128 (validRegex!7993 (regOne!33026 r!7292))))

(assert (=> d!1993128 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1864 (regOne!33026 r!7292) (regTwo!33026 r!7292) s!2326) lt!2364830)))

(declare-fun m!7158802 () Bool)

(assert (=> bs!1591044 m!7158802))

(declare-fun m!7158804 () Bool)

(assert (=> bs!1591044 m!7158804))

(declare-fun m!7158806 () Bool)

(assert (=> bs!1591044 m!7158806))

(assert (=> bs!1591044 m!7158778))

(assert (=> b!6350999 d!1993128))

(declare-fun d!1993130 () Bool)

(assert (=> d!1993130 (= (isDefined!12851 (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) Nil!64946 s!2326 s!2326)) (not (isEmpty!37042 (findConcatSeparation!2562 (regOne!33026 r!7292) (regTwo!33026 r!7292) Nil!64946 s!2326 s!2326))))))

(declare-fun bs!1591045 () Bool)

(assert (= bs!1591045 d!1993130))

(assert (=> bs!1591045 m!7157990))

(declare-fun m!7158808 () Bool)

(assert (=> bs!1591045 m!7158808))

(assert (=> b!6350999 d!1993130))

(declare-fun bs!1591046 () Bool)

(declare-fun d!1993132 () Bool)

(assert (= bs!1591046 (and d!1993132 d!1993086)))

(declare-fun lambda!349454 () Int)

(assert (=> bs!1591046 (= lambda!349454 lambda!349434)))

(declare-fun bs!1591047 () Bool)

(assert (= bs!1591047 (and d!1993132 d!1993088)))

(assert (=> bs!1591047 (= lambda!349454 lambda!349435)))

(declare-fun bs!1591048 () Bool)

(assert (= bs!1591048 (and d!1993132 d!1993098)))

(assert (=> bs!1591048 (= lambda!349454 lambda!349436)))

(declare-fun bs!1591049 () Bool)

(assert (= bs!1591049 (and d!1993132 d!1993110)))

(assert (=> bs!1591049 (= lambda!349454 lambda!349448)))

(assert (=> d!1993132 (= (inv!83889 (h!71396 zl!343)) (forall!15426 (exprs!6141 (h!71396 zl!343)) lambda!349454))))

(declare-fun bs!1591050 () Bool)

(assert (= bs!1591050 d!1993132))

(declare-fun m!7158810 () Bool)

(assert (=> bs!1591050 m!7158810))

(assert (=> b!6351000 d!1993132))

(declare-fun d!1993134 () Bool)

(declare-fun lt!2364833 () Regex!16257)

(assert (=> d!1993134 (validRegex!7993 lt!2364833)))

(assert (=> d!1993134 (= lt!2364833 (generalisedUnion!2101 (unfocusZipperList!1678 zl!343)))))

(assert (=> d!1993134 (= (unfocusZipper!1999 zl!343) lt!2364833)))

(declare-fun bs!1591051 () Bool)

(assert (= bs!1591051 d!1993134))

(declare-fun m!7158812 () Bool)

(assert (=> bs!1591051 m!7158812))

(assert (=> bs!1591051 m!7157972))

(assert (=> bs!1591051 m!7157972))

(assert (=> bs!1591051 m!7157974))

(assert (=> b!6351020 d!1993134))

(declare-fun bs!1591052 () Bool)

(declare-fun d!1993136 () Bool)

(assert (= bs!1591052 (and d!1993136 d!1993132)))

(declare-fun lambda!349457 () Int)

(assert (=> bs!1591052 (= lambda!349457 lambda!349454)))

(declare-fun bs!1591053 () Bool)

(assert (= bs!1591053 (and d!1993136 d!1993110)))

(assert (=> bs!1591053 (= lambda!349457 lambda!349448)))

(declare-fun bs!1591054 () Bool)

(assert (= bs!1591054 (and d!1993136 d!1993098)))

(assert (=> bs!1591054 (= lambda!349457 lambda!349436)))

(declare-fun bs!1591055 () Bool)

(assert (= bs!1591055 (and d!1993136 d!1993086)))

(assert (=> bs!1591055 (= lambda!349457 lambda!349434)))

(declare-fun bs!1591056 () Bool)

(assert (= bs!1591056 (and d!1993136 d!1993088)))

(assert (=> bs!1591056 (= lambda!349457 lambda!349435)))

(declare-fun b!6351944 () Bool)

(declare-fun e!3857579 () Bool)

(declare-fun lt!2364836 () Regex!16257)

(assert (=> b!6351944 (= e!3857579 (= lt!2364836 (head!13007 (unfocusZipperList!1678 zl!343))))))

(declare-fun b!6351945 () Bool)

(declare-fun e!3857577 () Regex!16257)

(assert (=> b!6351945 (= e!3857577 (h!71395 (unfocusZipperList!1678 zl!343)))))

(declare-fun b!6351946 () Bool)

(declare-fun e!3857581 () Bool)

(declare-fun e!3857582 () Bool)

(assert (=> b!6351946 (= e!3857581 e!3857582)))

(declare-fun c!1155688 () Bool)

(assert (=> b!6351946 (= c!1155688 (isEmpty!37037 (unfocusZipperList!1678 zl!343)))))

(declare-fun b!6351947 () Bool)

(declare-fun e!3857580 () Regex!16257)

(assert (=> b!6351947 (= e!3857577 e!3857580)))

(declare-fun c!1155687 () Bool)

(assert (=> b!6351947 (= c!1155687 ((_ is Cons!64947) (unfocusZipperList!1678 zl!343)))))

(declare-fun b!6351948 () Bool)

(assert (=> b!6351948 (= e!3857580 (Union!16257 (h!71395 (unfocusZipperList!1678 zl!343)) (generalisedUnion!2101 (t!378661 (unfocusZipperList!1678 zl!343)))))))

(declare-fun b!6351949 () Bool)

(assert (=> b!6351949 (= e!3857582 e!3857579)))

(declare-fun c!1155686 () Bool)

(assert (=> b!6351949 (= c!1155686 (isEmpty!37037 (tail!12092 (unfocusZipperList!1678 zl!343))))))

(declare-fun b!6351950 () Bool)

(declare-fun e!3857578 () Bool)

(assert (=> b!6351950 (= e!3857578 (isEmpty!37037 (t!378661 (unfocusZipperList!1678 zl!343))))))

(declare-fun b!6351951 () Bool)

(assert (=> b!6351951 (= e!3857580 EmptyLang!16257)))

(declare-fun b!6351952 () Bool)

(declare-fun isUnion!1096 (Regex!16257) Bool)

(assert (=> b!6351952 (= e!3857579 (isUnion!1096 lt!2364836))))

(assert (=> d!1993136 e!3857581))

(declare-fun res!2613638 () Bool)

(assert (=> d!1993136 (=> (not res!2613638) (not e!3857581))))

(assert (=> d!1993136 (= res!2613638 (validRegex!7993 lt!2364836))))

(assert (=> d!1993136 (= lt!2364836 e!3857577)))

(declare-fun c!1155689 () Bool)

(assert (=> d!1993136 (= c!1155689 e!3857578)))

(declare-fun res!2613637 () Bool)

(assert (=> d!1993136 (=> (not res!2613637) (not e!3857578))))

(assert (=> d!1993136 (= res!2613637 ((_ is Cons!64947) (unfocusZipperList!1678 zl!343)))))

(assert (=> d!1993136 (forall!15426 (unfocusZipperList!1678 zl!343) lambda!349457)))

(assert (=> d!1993136 (= (generalisedUnion!2101 (unfocusZipperList!1678 zl!343)) lt!2364836)))

(declare-fun b!6351953 () Bool)

(declare-fun isEmptyLang!1666 (Regex!16257) Bool)

(assert (=> b!6351953 (= e!3857582 (isEmptyLang!1666 lt!2364836))))

(assert (= (and d!1993136 res!2613637) b!6351950))

(assert (= (and d!1993136 c!1155689) b!6351945))

(assert (= (and d!1993136 (not c!1155689)) b!6351947))

(assert (= (and b!6351947 c!1155687) b!6351948))

(assert (= (and b!6351947 (not c!1155687)) b!6351951))

(assert (= (and d!1993136 res!2613638) b!6351946))

(assert (= (and b!6351946 c!1155688) b!6351953))

(assert (= (and b!6351946 (not c!1155688)) b!6351949))

(assert (= (and b!6351949 c!1155686) b!6351944))

(assert (= (and b!6351949 (not c!1155686)) b!6351952))

(declare-fun m!7158814 () Bool)

(assert (=> b!6351948 m!7158814))

(declare-fun m!7158816 () Bool)

(assert (=> d!1993136 m!7158816))

(assert (=> d!1993136 m!7157972))

(declare-fun m!7158818 () Bool)

(assert (=> d!1993136 m!7158818))

(declare-fun m!7158820 () Bool)

(assert (=> b!6351952 m!7158820))

(assert (=> b!6351949 m!7157972))

(declare-fun m!7158822 () Bool)

(assert (=> b!6351949 m!7158822))

(assert (=> b!6351949 m!7158822))

(declare-fun m!7158824 () Bool)

(assert (=> b!6351949 m!7158824))

(declare-fun m!7158826 () Bool)

(assert (=> b!6351953 m!7158826))

(assert (=> b!6351946 m!7157972))

(declare-fun m!7158828 () Bool)

(assert (=> b!6351946 m!7158828))

(declare-fun m!7158830 () Bool)

(assert (=> b!6351950 m!7158830))

(assert (=> b!6351944 m!7157972))

(declare-fun m!7158832 () Bool)

(assert (=> b!6351944 m!7158832))

(assert (=> b!6351002 d!1993136))

(declare-fun bs!1591057 () Bool)

(declare-fun d!1993138 () Bool)

(assert (= bs!1591057 (and d!1993138 d!1993132)))

(declare-fun lambda!349460 () Int)

(assert (=> bs!1591057 (= lambda!349460 lambda!349454)))

(declare-fun bs!1591058 () Bool)

(assert (= bs!1591058 (and d!1993138 d!1993110)))

(assert (=> bs!1591058 (= lambda!349460 lambda!349448)))

(declare-fun bs!1591059 () Bool)

(assert (= bs!1591059 (and d!1993138 d!1993098)))

(assert (=> bs!1591059 (= lambda!349460 lambda!349436)))

(declare-fun bs!1591060 () Bool)

(assert (= bs!1591060 (and d!1993138 d!1993136)))

(assert (=> bs!1591060 (= lambda!349460 lambda!349457)))

(declare-fun bs!1591061 () Bool)

(assert (= bs!1591061 (and d!1993138 d!1993086)))

(assert (=> bs!1591061 (= lambda!349460 lambda!349434)))

(declare-fun bs!1591062 () Bool)

(assert (= bs!1591062 (and d!1993138 d!1993088)))

(assert (=> bs!1591062 (= lambda!349460 lambda!349435)))

(declare-fun lt!2364839 () List!65071)

(assert (=> d!1993138 (forall!15426 lt!2364839 lambda!349460)))

(declare-fun e!3857585 () List!65071)

(assert (=> d!1993138 (= lt!2364839 e!3857585)))

(declare-fun c!1155692 () Bool)

(assert (=> d!1993138 (= c!1155692 ((_ is Cons!64948) zl!343))))

(assert (=> d!1993138 (= (unfocusZipperList!1678 zl!343) lt!2364839)))

(declare-fun b!6351958 () Bool)

(assert (=> b!6351958 (= e!3857585 (Cons!64947 (generalisedConcat!1854 (exprs!6141 (h!71396 zl!343))) (unfocusZipperList!1678 (t!378662 zl!343))))))

(declare-fun b!6351959 () Bool)

(assert (=> b!6351959 (= e!3857585 Nil!64947)))

(assert (= (and d!1993138 c!1155692) b!6351958))

(assert (= (and d!1993138 (not c!1155692)) b!6351959))

(declare-fun m!7158834 () Bool)

(assert (=> d!1993138 m!7158834))

(assert (=> b!6351958 m!7158022))

(declare-fun m!7158836 () Bool)

(assert (=> b!6351958 m!7158836))

(assert (=> b!6351002 d!1993138))

(declare-fun bs!1591063 () Bool)

(declare-fun d!1993140 () Bool)

(assert (= bs!1591063 (and d!1993140 d!1993132)))

(declare-fun lambda!349461 () Int)

(assert (=> bs!1591063 (= lambda!349461 lambda!349454)))

(declare-fun bs!1591064 () Bool)

(assert (= bs!1591064 (and d!1993140 d!1993110)))

(assert (=> bs!1591064 (= lambda!349461 lambda!349448)))

(declare-fun bs!1591065 () Bool)

(assert (= bs!1591065 (and d!1993140 d!1993136)))

(assert (=> bs!1591065 (= lambda!349461 lambda!349457)))

(declare-fun bs!1591066 () Bool)

(assert (= bs!1591066 (and d!1993140 d!1993098)))

(assert (=> bs!1591066 (= lambda!349461 lambda!349436)))

(declare-fun bs!1591067 () Bool)

(assert (= bs!1591067 (and d!1993140 d!1993138)))

(assert (=> bs!1591067 (= lambda!349461 lambda!349460)))

(declare-fun bs!1591068 () Bool)

(assert (= bs!1591068 (and d!1993140 d!1993086)))

(assert (=> bs!1591068 (= lambda!349461 lambda!349434)))

(declare-fun bs!1591069 () Bool)

(assert (= bs!1591069 (and d!1993140 d!1993088)))

(assert (=> bs!1591069 (= lambda!349461 lambda!349435)))

(assert (=> d!1993140 (= (inv!83889 setElem!43246) (forall!15426 (exprs!6141 setElem!43246) lambda!349461))))

(declare-fun bs!1591070 () Bool)

(assert (= bs!1591070 d!1993140))

(declare-fun m!7158838 () Bool)

(assert (=> bs!1591070 m!7158838))

(assert (=> setNonEmpty!43246 d!1993140))

(declare-fun d!1993142 () Bool)

(declare-fun lt!2364842 () Int)

(assert (=> d!1993142 (>= lt!2364842 0)))

(declare-fun e!3857588 () Int)

(assert (=> d!1993142 (= lt!2364842 e!3857588)))

(declare-fun c!1155695 () Bool)

(assert (=> d!1993142 (= c!1155695 ((_ is Cons!64948) lt!2364660))))

(assert (=> d!1993142 (= (zipperDepthTotal!394 lt!2364660) lt!2364842)))

(declare-fun b!6351964 () Bool)

(assert (=> b!6351964 (= e!3857588 (+ (contextDepthTotal!366 (h!71396 lt!2364660)) (zipperDepthTotal!394 (t!378662 lt!2364660))))))

(declare-fun b!6351965 () Bool)

(assert (=> b!6351965 (= e!3857588 0)))

(assert (= (and d!1993142 c!1155695) b!6351964))

(assert (= (and d!1993142 (not c!1155695)) b!6351965))

(declare-fun m!7158840 () Bool)

(assert (=> b!6351964 m!7158840))

(declare-fun m!7158842 () Bool)

(assert (=> b!6351964 m!7158842))

(assert (=> b!6351014 d!1993142))

(declare-fun d!1993144 () Bool)

(declare-fun lt!2364843 () Int)

(assert (=> d!1993144 (>= lt!2364843 0)))

(declare-fun e!3857589 () Int)

(assert (=> d!1993144 (= lt!2364843 e!3857589)))

(declare-fun c!1155696 () Bool)

(assert (=> d!1993144 (= c!1155696 ((_ is Cons!64948) zl!343))))

(assert (=> d!1993144 (= (zipperDepthTotal!394 zl!343) lt!2364843)))

(declare-fun b!6351966 () Bool)

(assert (=> b!6351966 (= e!3857589 (+ (contextDepthTotal!366 (h!71396 zl!343)) (zipperDepthTotal!394 (t!378662 zl!343))))))

(declare-fun b!6351967 () Bool)

(assert (=> b!6351967 (= e!3857589 0)))

(assert (= (and d!1993144 c!1155696) b!6351966))

(assert (= (and d!1993144 (not c!1155696)) b!6351967))

(assert (=> b!6351966 m!7158012))

(declare-fun m!7158844 () Bool)

(assert (=> b!6351966 m!7158844))

(assert (=> b!6351014 d!1993144))

(declare-fun d!1993146 () Bool)

(declare-fun c!1155697 () Bool)

(assert (=> d!1993146 (= c!1155697 (isEmpty!37040 (t!378660 s!2326)))))

(declare-fun e!3857590 () Bool)

(assert (=> d!1993146 (= (matchZipper!2269 lt!2364655 (t!378660 s!2326)) e!3857590)))

(declare-fun b!6351968 () Bool)

(assert (=> b!6351968 (= e!3857590 (nullableZipper!2023 lt!2364655))))

(declare-fun b!6351969 () Bool)

(assert (=> b!6351969 (= e!3857590 (matchZipper!2269 (derivationStepZipper!2223 lt!2364655 (head!13006 (t!378660 s!2326))) (tail!12091 (t!378660 s!2326))))))

(assert (= (and d!1993146 c!1155697) b!6351968))

(assert (= (and d!1993146 (not c!1155697)) b!6351969))

(assert (=> d!1993146 m!7158496))

(declare-fun m!7158846 () Bool)

(assert (=> b!6351968 m!7158846))

(assert (=> b!6351969 m!7158500))

(assert (=> b!6351969 m!7158500))

(declare-fun m!7158848 () Bool)

(assert (=> b!6351969 m!7158848))

(assert (=> b!6351969 m!7158504))

(assert (=> b!6351969 m!7158848))

(assert (=> b!6351969 m!7158504))

(declare-fun m!7158850 () Bool)

(assert (=> b!6351969 m!7158850))

(assert (=> b!6351015 d!1993146))

(declare-fun b!6351970 () Bool)

(declare-fun e!3857593 () Bool)

(assert (=> b!6351970 (= e!3857593 (nullable!6250 (regOne!33026 (h!71395 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun bm!541669 () Bool)

(declare-fun call!541676 () List!65071)

(declare-fun call!541678 () List!65071)

(assert (=> bm!541669 (= call!541676 call!541678)))

(declare-fun bm!541670 () Bool)

(declare-fun call!541675 () (InoxSet Context!11282))

(declare-fun call!541679 () (InoxSet Context!11282))

(assert (=> bm!541670 (= call!541675 call!541679)))

(declare-fun b!6351971 () Bool)

(declare-fun e!3857595 () (InoxSet Context!11282))

(assert (=> b!6351971 (= e!3857595 (store ((as const (Array Context!11282 Bool)) false) lt!2364652 true))))

(declare-fun c!1155702 () Bool)

(declare-fun c!1155701 () Bool)

(declare-fun bm!541671 () Bool)

(declare-fun c!1155699 () Bool)

(assert (=> bm!541671 (= call!541679 (derivationStepZipperDown!1505 (ite c!1155702 (regOne!33027 (h!71395 (exprs!6141 (h!71396 zl!343)))) (ite c!1155699 (regTwo!33026 (h!71395 (exprs!6141 (h!71396 zl!343)))) (ite c!1155701 (regOne!33026 (h!71395 (exprs!6141 (h!71396 zl!343)))) (reg!16586 (h!71395 (exprs!6141 (h!71396 zl!343))))))) (ite (or c!1155702 c!1155699) lt!2364652 (Context!11283 call!541676)) (h!71394 s!2326)))))

(declare-fun b!6351972 () Bool)

(declare-fun e!3857592 () (InoxSet Context!11282))

(declare-fun call!541677 () (InoxSet Context!11282))

(assert (=> b!6351972 (= e!3857592 call!541677)))

(declare-fun b!6351973 () Bool)

(declare-fun e!3857596 () (InoxSet Context!11282))

(assert (=> b!6351973 (= e!3857596 call!541677)))

(declare-fun b!6351974 () Bool)

(assert (=> b!6351974 (= c!1155699 e!3857593)))

(declare-fun res!2613639 () Bool)

(assert (=> b!6351974 (=> (not res!2613639) (not e!3857593))))

(assert (=> b!6351974 (= res!2613639 ((_ is Concat!25102) (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun e!3857591 () (InoxSet Context!11282))

(declare-fun e!3857594 () (InoxSet Context!11282))

(assert (=> b!6351974 (= e!3857591 e!3857594)))

(declare-fun b!6351975 () Bool)

(declare-fun c!1155700 () Bool)

(assert (=> b!6351975 (= c!1155700 ((_ is Star!16257) (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(assert (=> b!6351975 (= e!3857592 e!3857596)))

(declare-fun b!6351976 () Bool)

(declare-fun call!541674 () (InoxSet Context!11282))

(assert (=> b!6351976 (= e!3857591 ((_ map or) call!541679 call!541674))))

(declare-fun b!6351977 () Bool)

(assert (=> b!6351977 (= e!3857595 e!3857591)))

(assert (=> b!6351977 (= c!1155702 ((_ is Union!16257) (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351978 () Bool)

(assert (=> b!6351978 (= e!3857594 ((_ map or) call!541674 call!541675))))

(declare-fun bm!541672 () Bool)

(assert (=> bm!541672 (= call!541677 call!541675)))

(declare-fun d!1993148 () Bool)

(declare-fun c!1155698 () Bool)

(assert (=> d!1993148 (= c!1155698 (and ((_ is ElementMatch!16257) (h!71395 (exprs!6141 (h!71396 zl!343)))) (= (c!1155402 (h!71395 (exprs!6141 (h!71396 zl!343)))) (h!71394 s!2326))))))

(assert (=> d!1993148 (= (derivationStepZipperDown!1505 (h!71395 (exprs!6141 (h!71396 zl!343))) lt!2364652 (h!71394 s!2326)) e!3857595)))

(declare-fun bm!541673 () Bool)

(assert (=> bm!541673 (= call!541678 ($colon$colon!2118 (exprs!6141 lt!2364652) (ite (or c!1155699 c!1155701) (regTwo!33026 (h!71395 (exprs!6141 (h!71396 zl!343)))) (h!71395 (exprs!6141 (h!71396 zl!343))))))))

(declare-fun bm!541674 () Bool)

(assert (=> bm!541674 (= call!541674 (derivationStepZipperDown!1505 (ite c!1155702 (regTwo!33027 (h!71395 (exprs!6141 (h!71396 zl!343)))) (regOne!33026 (h!71395 (exprs!6141 (h!71396 zl!343))))) (ite c!1155702 lt!2364652 (Context!11283 call!541678)) (h!71394 s!2326)))))

(declare-fun b!6351979 () Bool)

(assert (=> b!6351979 (= e!3857594 e!3857592)))

(assert (=> b!6351979 (= c!1155701 ((_ is Concat!25102) (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351980 () Bool)

(assert (=> b!6351980 (= e!3857596 ((as const (Array Context!11282 Bool)) false))))

(assert (= (and d!1993148 c!1155698) b!6351971))

(assert (= (and d!1993148 (not c!1155698)) b!6351977))

(assert (= (and b!6351977 c!1155702) b!6351976))

(assert (= (and b!6351977 (not c!1155702)) b!6351974))

(assert (= (and b!6351974 res!2613639) b!6351970))

(assert (= (and b!6351974 c!1155699) b!6351978))

(assert (= (and b!6351974 (not c!1155699)) b!6351979))

(assert (= (and b!6351979 c!1155701) b!6351972))

(assert (= (and b!6351979 (not c!1155701)) b!6351975))

(assert (= (and b!6351975 c!1155700) b!6351973))

(assert (= (and b!6351975 (not c!1155700)) b!6351980))

(assert (= (or b!6351972 b!6351973) bm!541669))

(assert (= (or b!6351972 b!6351973) bm!541672))

(assert (= (or b!6351978 bm!541669) bm!541673))

(assert (= (or b!6351978 bm!541672) bm!541670))

(assert (= (or b!6351976 b!6351978) bm!541674))

(assert (= (or b!6351976 bm!541670) bm!541671))

(declare-fun m!7158852 () Bool)

(assert (=> b!6351970 m!7158852))

(declare-fun m!7158854 () Bool)

(assert (=> b!6351971 m!7158854))

(declare-fun m!7158856 () Bool)

(assert (=> bm!541674 m!7158856))

(declare-fun m!7158858 () Bool)

(assert (=> bm!541671 m!7158858))

(declare-fun m!7158860 () Bool)

(assert (=> bm!541673 m!7158860))

(assert (=> b!6350997 d!1993148))

(declare-fun d!1993150 () Bool)

(assert (=> d!1993150 (= (flatMap!1762 z!1189 lambda!349353) (dynLambda!25754 lambda!349353 (h!71396 zl!343)))))

(declare-fun lt!2364844 () Unit!158359)

(assert (=> d!1993150 (= lt!2364844 (choose!47127 z!1189 (h!71396 zl!343) lambda!349353))))

(assert (=> d!1993150 (= z!1189 (store ((as const (Array Context!11282 Bool)) false) (h!71396 zl!343) true))))

(assert (=> d!1993150 (= (lemmaFlatMapOnSingletonSet!1288 z!1189 (h!71396 zl!343) lambda!349353) lt!2364844)))

(declare-fun b_lambda!241615 () Bool)

(assert (=> (not b_lambda!241615) (not d!1993150)))

(declare-fun bs!1591071 () Bool)

(assert (= bs!1591071 d!1993150))

(assert (=> bs!1591071 m!7158066))

(declare-fun m!7158862 () Bool)

(assert (=> bs!1591071 m!7158862))

(declare-fun m!7158864 () Bool)

(assert (=> bs!1591071 m!7158864))

(declare-fun m!7158866 () Bool)

(assert (=> bs!1591071 m!7158866))

(assert (=> b!6350997 d!1993150))

(declare-fun d!1993152 () Bool)

(assert (=> d!1993152 (= (nullable!6250 (h!71395 (exprs!6141 (h!71396 zl!343)))) (nullableFct!2197 (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun bs!1591072 () Bool)

(assert (= bs!1591072 d!1993152))

(declare-fun m!7158868 () Bool)

(assert (=> bs!1591072 m!7158868))

(assert (=> b!6350997 d!1993152))

(declare-fun b!6351981 () Bool)

(declare-fun e!3857598 () (InoxSet Context!11282))

(declare-fun e!3857597 () (InoxSet Context!11282))

(assert (=> b!6351981 (= e!3857598 e!3857597)))

(declare-fun c!1155703 () Bool)

(assert (=> b!6351981 (= c!1155703 ((_ is Cons!64947) (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343))))))))))

(declare-fun call!541680 () (InoxSet Context!11282))

(declare-fun b!6351982 () Bool)

(assert (=> b!6351982 (= e!3857598 ((_ map or) call!541680 (derivationStepZipperUp!1431 (Context!11283 (t!378661 (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343)))))))) (h!71394 s!2326))))))

(declare-fun b!6351983 () Bool)

(declare-fun e!3857599 () Bool)

(assert (=> b!6351983 (= e!3857599 (nullable!6250 (h!71395 (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343)))))))))))

(declare-fun b!6351984 () Bool)

(assert (=> b!6351984 (= e!3857597 call!541680)))

(declare-fun b!6351985 () Bool)

(assert (=> b!6351985 (= e!3857597 ((as const (Array Context!11282 Bool)) false))))

(declare-fun bm!541675 () Bool)

(assert (=> bm!541675 (= call!541680 (derivationStepZipperDown!1505 (h!71395 (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343))))))) (Context!11283 (t!378661 (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343)))))))) (h!71394 s!2326)))))

(declare-fun d!1993154 () Bool)

(declare-fun c!1155704 () Bool)

(assert (=> d!1993154 (= c!1155704 e!3857599)))

(declare-fun res!2613640 () Bool)

(assert (=> d!1993154 (=> (not res!2613640) (not e!3857599))))

(assert (=> d!1993154 (= res!2613640 ((_ is Cons!64947) (exprs!6141 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343))))))))))

(assert (=> d!1993154 (= (derivationStepZipperUp!1431 (Context!11283 (Cons!64947 (h!71395 (exprs!6141 (h!71396 zl!343))) (t!378661 (exprs!6141 (h!71396 zl!343))))) (h!71394 s!2326)) e!3857598)))

(assert (= (and d!1993154 res!2613640) b!6351983))

(assert (= (and d!1993154 c!1155704) b!6351982))

(assert (= (and d!1993154 (not c!1155704)) b!6351981))

(assert (= (and b!6351981 c!1155703) b!6351984))

(assert (= (and b!6351981 (not c!1155703)) b!6351985))

(assert (= (or b!6351982 b!6351984) bm!541675))

(declare-fun m!7158870 () Bool)

(assert (=> b!6351982 m!7158870))

(declare-fun m!7158872 () Bool)

(assert (=> b!6351983 m!7158872))

(declare-fun m!7158874 () Bool)

(assert (=> bm!541675 m!7158874))

(assert (=> b!6350997 d!1993154))

(declare-fun b!6351986 () Bool)

(declare-fun e!3857601 () (InoxSet Context!11282))

(declare-fun e!3857600 () (InoxSet Context!11282))

(assert (=> b!6351986 (= e!3857601 e!3857600)))

(declare-fun c!1155705 () Bool)

(assert (=> b!6351986 (= c!1155705 ((_ is Cons!64947) (exprs!6141 lt!2364652)))))

(declare-fun b!6351987 () Bool)

(declare-fun call!541681 () (InoxSet Context!11282))

(assert (=> b!6351987 (= e!3857601 ((_ map or) call!541681 (derivationStepZipperUp!1431 (Context!11283 (t!378661 (exprs!6141 lt!2364652))) (h!71394 s!2326))))))

(declare-fun b!6351988 () Bool)

(declare-fun e!3857602 () Bool)

(assert (=> b!6351988 (= e!3857602 (nullable!6250 (h!71395 (exprs!6141 lt!2364652))))))

(declare-fun b!6351989 () Bool)

(assert (=> b!6351989 (= e!3857600 call!541681)))

(declare-fun b!6351990 () Bool)

(assert (=> b!6351990 (= e!3857600 ((as const (Array Context!11282 Bool)) false))))

(declare-fun bm!541676 () Bool)

(assert (=> bm!541676 (= call!541681 (derivationStepZipperDown!1505 (h!71395 (exprs!6141 lt!2364652)) (Context!11283 (t!378661 (exprs!6141 lt!2364652))) (h!71394 s!2326)))))

(declare-fun d!1993156 () Bool)

(declare-fun c!1155706 () Bool)

(assert (=> d!1993156 (= c!1155706 e!3857602)))

(declare-fun res!2613641 () Bool)

(assert (=> d!1993156 (=> (not res!2613641) (not e!3857602))))

(assert (=> d!1993156 (= res!2613641 ((_ is Cons!64947) (exprs!6141 lt!2364652)))))

(assert (=> d!1993156 (= (derivationStepZipperUp!1431 lt!2364652 (h!71394 s!2326)) e!3857601)))

(assert (= (and d!1993156 res!2613641) b!6351988))

(assert (= (and d!1993156 c!1155706) b!6351987))

(assert (= (and d!1993156 (not c!1155706)) b!6351986))

(assert (= (and b!6351986 c!1155705) b!6351989))

(assert (= (and b!6351986 (not c!1155705)) b!6351990))

(assert (= (or b!6351987 b!6351989) bm!541676))

(declare-fun m!7158876 () Bool)

(assert (=> b!6351987 m!7158876))

(declare-fun m!7158878 () Bool)

(assert (=> b!6351988 m!7158878))

(declare-fun m!7158880 () Bool)

(assert (=> bm!541676 m!7158880))

(assert (=> b!6350997 d!1993156))

(declare-fun b!6351991 () Bool)

(declare-fun e!3857604 () (InoxSet Context!11282))

(declare-fun e!3857603 () (InoxSet Context!11282))

(assert (=> b!6351991 (= e!3857604 e!3857603)))

(declare-fun c!1155707 () Bool)

(assert (=> b!6351991 (= c!1155707 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343))))))

(declare-fun b!6351992 () Bool)

(declare-fun call!541682 () (InoxSet Context!11282))

(assert (=> b!6351992 (= e!3857604 ((_ map or) call!541682 (derivationStepZipperUp!1431 (Context!11283 (t!378661 (exprs!6141 (h!71396 zl!343)))) (h!71394 s!2326))))))

(declare-fun b!6351993 () Bool)

(declare-fun e!3857605 () Bool)

(assert (=> b!6351993 (= e!3857605 (nullable!6250 (h!71395 (exprs!6141 (h!71396 zl!343)))))))

(declare-fun b!6351994 () Bool)

(assert (=> b!6351994 (= e!3857603 call!541682)))

(declare-fun b!6351995 () Bool)

(assert (=> b!6351995 (= e!3857603 ((as const (Array Context!11282 Bool)) false))))

(declare-fun bm!541677 () Bool)

(assert (=> bm!541677 (= call!541682 (derivationStepZipperDown!1505 (h!71395 (exprs!6141 (h!71396 zl!343))) (Context!11283 (t!378661 (exprs!6141 (h!71396 zl!343)))) (h!71394 s!2326)))))

(declare-fun d!1993158 () Bool)

(declare-fun c!1155708 () Bool)

(assert (=> d!1993158 (= c!1155708 e!3857605)))

(declare-fun res!2613642 () Bool)

(assert (=> d!1993158 (=> (not res!2613642) (not e!3857605))))

(assert (=> d!1993158 (= res!2613642 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343))))))

(assert (=> d!1993158 (= (derivationStepZipperUp!1431 (h!71396 zl!343) (h!71394 s!2326)) e!3857604)))

(assert (= (and d!1993158 res!2613642) b!6351993))

(assert (= (and d!1993158 c!1155708) b!6351992))

(assert (= (and d!1993158 (not c!1155708)) b!6351991))

(assert (= (and b!6351991 c!1155707) b!6351994))

(assert (= (and b!6351991 (not c!1155707)) b!6351995))

(assert (= (or b!6351992 b!6351994) bm!541677))

(declare-fun m!7158882 () Bool)

(assert (=> b!6351992 m!7158882))

(assert (=> b!6351993 m!7158074))

(declare-fun m!7158884 () Bool)

(assert (=> bm!541677 m!7158884))

(assert (=> b!6350997 d!1993158))

(declare-fun d!1993160 () Bool)

(assert (=> d!1993160 (= (flatMap!1762 z!1189 lambda!349353) (choose!47126 z!1189 lambda!349353))))

(declare-fun bs!1591073 () Bool)

(assert (= bs!1591073 d!1993160))

(declare-fun m!7158886 () Bool)

(assert (=> bs!1591073 m!7158886))

(assert (=> b!6350997 d!1993160))

(declare-fun condSetEmpty!43252 () Bool)

(assert (=> setNonEmpty!43246 (= condSetEmpty!43252 (= setRest!43246 ((as const (Array Context!11282 Bool)) false)))))

(declare-fun setRes!43252 () Bool)

(assert (=> setNonEmpty!43246 (= tp!1769996 setRes!43252)))

(declare-fun setIsEmpty!43252 () Bool)

(assert (=> setIsEmpty!43252 setRes!43252))

(declare-fun setElem!43252 () Context!11282)

(declare-fun tp!1770065 () Bool)

(declare-fun e!3857608 () Bool)

(declare-fun setNonEmpty!43252 () Bool)

(assert (=> setNonEmpty!43252 (= setRes!43252 (and tp!1770065 (inv!83889 setElem!43252) e!3857608))))

(declare-fun setRest!43252 () (InoxSet Context!11282))

(assert (=> setNonEmpty!43252 (= setRest!43246 ((_ map or) (store ((as const (Array Context!11282 Bool)) false) setElem!43252 true) setRest!43252))))

(declare-fun b!6352000 () Bool)

(declare-fun tp!1770066 () Bool)

(assert (=> b!6352000 (= e!3857608 tp!1770066)))

(assert (= (and setNonEmpty!43246 condSetEmpty!43252) setIsEmpty!43252))

(assert (= (and setNonEmpty!43246 (not condSetEmpty!43252)) setNonEmpty!43252))

(assert (= setNonEmpty!43252 b!6352000))

(declare-fun m!7158888 () Bool)

(assert (=> setNonEmpty!43252 m!7158888))

(declare-fun b!6352005 () Bool)

(declare-fun e!3857611 () Bool)

(declare-fun tp!1770071 () Bool)

(declare-fun tp!1770072 () Bool)

(assert (=> b!6352005 (= e!3857611 (and tp!1770071 tp!1770072))))

(assert (=> b!6351029 (= tp!1769999 e!3857611)))

(assert (= (and b!6351029 ((_ is Cons!64947) (exprs!6141 setElem!43246))) b!6352005))

(declare-fun b!6352013 () Bool)

(declare-fun e!3857617 () Bool)

(declare-fun tp!1770077 () Bool)

(assert (=> b!6352013 (= e!3857617 tp!1770077)))

(declare-fun e!3857616 () Bool)

(declare-fun b!6352012 () Bool)

(declare-fun tp!1770078 () Bool)

(assert (=> b!6352012 (= e!3857616 (and (inv!83889 (h!71396 (t!378662 zl!343))) e!3857617 tp!1770078))))

(assert (=> b!6351000 (= tp!1770002 e!3857616)))

(assert (= b!6352012 b!6352013))

(assert (= (and b!6351000 ((_ is Cons!64948) (t!378662 zl!343))) b!6352012))

(declare-fun m!7158890 () Bool)

(assert (=> b!6352012 m!7158890))

(declare-fun b!6352018 () Bool)

(declare-fun e!3857620 () Bool)

(declare-fun tp!1770081 () Bool)

(assert (=> b!6352018 (= e!3857620 (and tp_is_empty!41767 tp!1770081))))

(assert (=> b!6351001 (= tp!1769995 e!3857620)))

(assert (= (and b!6351001 ((_ is Cons!64946) (t!378660 s!2326))) b!6352018))

(declare-fun b!6352019 () Bool)

(declare-fun e!3857621 () Bool)

(declare-fun tp!1770082 () Bool)

(declare-fun tp!1770083 () Bool)

(assert (=> b!6352019 (= e!3857621 (and tp!1770082 tp!1770083))))

(assert (=> b!6351017 (= tp!1769993 e!3857621)))

(assert (= (and b!6351017 ((_ is Cons!64947) (exprs!6141 (h!71396 zl!343)))) b!6352019))

(declare-fun b!6352033 () Bool)

(declare-fun e!3857624 () Bool)

(declare-fun tp!1770097 () Bool)

(declare-fun tp!1770095 () Bool)

(assert (=> b!6352033 (= e!3857624 (and tp!1770097 tp!1770095))))

(declare-fun b!6352032 () Bool)

(declare-fun tp!1770098 () Bool)

(assert (=> b!6352032 (= e!3857624 tp!1770098)))

(declare-fun b!6352030 () Bool)

(assert (=> b!6352030 (= e!3857624 tp_is_empty!41767)))

(declare-fun b!6352031 () Bool)

(declare-fun tp!1770094 () Bool)

(declare-fun tp!1770096 () Bool)

(assert (=> b!6352031 (= e!3857624 (and tp!1770094 tp!1770096))))

(assert (=> b!6351008 (= tp!1770000 e!3857624)))

(assert (= (and b!6351008 ((_ is ElementMatch!16257) (regOne!33026 r!7292))) b!6352030))

(assert (= (and b!6351008 ((_ is Concat!25102) (regOne!33026 r!7292))) b!6352031))

(assert (= (and b!6351008 ((_ is Star!16257) (regOne!33026 r!7292))) b!6352032))

(assert (= (and b!6351008 ((_ is Union!16257) (regOne!33026 r!7292))) b!6352033))

(declare-fun b!6352037 () Bool)

(declare-fun e!3857625 () Bool)

(declare-fun tp!1770102 () Bool)

(declare-fun tp!1770100 () Bool)

(assert (=> b!6352037 (= e!3857625 (and tp!1770102 tp!1770100))))

(declare-fun b!6352036 () Bool)

(declare-fun tp!1770103 () Bool)

(assert (=> b!6352036 (= e!3857625 tp!1770103)))

(declare-fun b!6352034 () Bool)

(assert (=> b!6352034 (= e!3857625 tp_is_empty!41767)))

(declare-fun b!6352035 () Bool)

(declare-fun tp!1770099 () Bool)

(declare-fun tp!1770101 () Bool)

(assert (=> b!6352035 (= e!3857625 (and tp!1770099 tp!1770101))))

(assert (=> b!6351008 (= tp!1769994 e!3857625)))

(assert (= (and b!6351008 ((_ is ElementMatch!16257) (regTwo!33026 r!7292))) b!6352034))

(assert (= (and b!6351008 ((_ is Concat!25102) (regTwo!33026 r!7292))) b!6352035))

(assert (= (and b!6351008 ((_ is Star!16257) (regTwo!33026 r!7292))) b!6352036))

(assert (= (and b!6351008 ((_ is Union!16257) (regTwo!33026 r!7292))) b!6352037))

(declare-fun b!6352041 () Bool)

(declare-fun e!3857626 () Bool)

(declare-fun tp!1770107 () Bool)

(declare-fun tp!1770105 () Bool)

(assert (=> b!6352041 (= e!3857626 (and tp!1770107 tp!1770105))))

(declare-fun b!6352040 () Bool)

(declare-fun tp!1770108 () Bool)

(assert (=> b!6352040 (= e!3857626 tp!1770108)))

(declare-fun b!6352038 () Bool)

(assert (=> b!6352038 (= e!3857626 tp_is_empty!41767)))

(declare-fun b!6352039 () Bool)

(declare-fun tp!1770104 () Bool)

(declare-fun tp!1770106 () Bool)

(assert (=> b!6352039 (= e!3857626 (and tp!1770104 tp!1770106))))

(assert (=> b!6351022 (= tp!1770001 e!3857626)))

(assert (= (and b!6351022 ((_ is ElementMatch!16257) (reg!16586 r!7292))) b!6352038))

(assert (= (and b!6351022 ((_ is Concat!25102) (reg!16586 r!7292))) b!6352039))

(assert (= (and b!6351022 ((_ is Star!16257) (reg!16586 r!7292))) b!6352040))

(assert (= (and b!6351022 ((_ is Union!16257) (reg!16586 r!7292))) b!6352041))

(declare-fun b!6352045 () Bool)

(declare-fun e!3857627 () Bool)

(declare-fun tp!1770112 () Bool)

(declare-fun tp!1770110 () Bool)

(assert (=> b!6352045 (= e!3857627 (and tp!1770112 tp!1770110))))

(declare-fun b!6352044 () Bool)

(declare-fun tp!1770113 () Bool)

(assert (=> b!6352044 (= e!3857627 tp!1770113)))

(declare-fun b!6352042 () Bool)

(assert (=> b!6352042 (= e!3857627 tp_is_empty!41767)))

(declare-fun b!6352043 () Bool)

(declare-fun tp!1770109 () Bool)

(declare-fun tp!1770111 () Bool)

(assert (=> b!6352043 (= e!3857627 (and tp!1770109 tp!1770111))))

(assert (=> b!6351027 (= tp!1769998 e!3857627)))

(assert (= (and b!6351027 ((_ is ElementMatch!16257) (regOne!33027 r!7292))) b!6352042))

(assert (= (and b!6351027 ((_ is Concat!25102) (regOne!33027 r!7292))) b!6352043))

(assert (= (and b!6351027 ((_ is Star!16257) (regOne!33027 r!7292))) b!6352044))

(assert (= (and b!6351027 ((_ is Union!16257) (regOne!33027 r!7292))) b!6352045))

(declare-fun b!6352049 () Bool)

(declare-fun e!3857628 () Bool)

(declare-fun tp!1770117 () Bool)

(declare-fun tp!1770115 () Bool)

(assert (=> b!6352049 (= e!3857628 (and tp!1770117 tp!1770115))))

(declare-fun b!6352048 () Bool)

(declare-fun tp!1770118 () Bool)

(assert (=> b!6352048 (= e!3857628 tp!1770118)))

(declare-fun b!6352046 () Bool)

(assert (=> b!6352046 (= e!3857628 tp_is_empty!41767)))

(declare-fun b!6352047 () Bool)

(declare-fun tp!1770114 () Bool)

(declare-fun tp!1770116 () Bool)

(assert (=> b!6352047 (= e!3857628 (and tp!1770114 tp!1770116))))

(assert (=> b!6351027 (= tp!1769997 e!3857628)))

(assert (= (and b!6351027 ((_ is ElementMatch!16257) (regTwo!33027 r!7292))) b!6352046))

(assert (= (and b!6351027 ((_ is Concat!25102) (regTwo!33027 r!7292))) b!6352047))

(assert (= (and b!6351027 ((_ is Star!16257) (regTwo!33027 r!7292))) b!6352048))

(assert (= (and b!6351027 ((_ is Union!16257) (regTwo!33027 r!7292))) b!6352049))

(declare-fun b_lambda!241617 () Bool)

(assert (= b_lambda!241615 (or b!6350997 b_lambda!241617)))

(declare-fun bs!1591074 () Bool)

(declare-fun d!1993162 () Bool)

(assert (= bs!1591074 (and d!1993162 b!6350997)))

(assert (=> bs!1591074 (= (dynLambda!25754 lambda!349353 (h!71396 zl!343)) (derivationStepZipperUp!1431 (h!71396 zl!343) (h!71394 s!2326)))))

(assert (=> bs!1591074 m!7158068))

(assert (=> d!1993150 d!1993162))

(declare-fun b_lambda!241619 () Bool)

(assert (= b_lambda!241605 (or b!6350997 b_lambda!241619)))

(declare-fun bs!1591075 () Bool)

(declare-fun d!1993164 () Bool)

(assert (= bs!1591075 (and d!1993164 b!6350997)))

(assert (=> bs!1591075 (= (dynLambda!25754 lambda!349353 lt!2364656) (derivationStepZipperUp!1431 lt!2364656 (h!71394 s!2326)))))

(assert (=> bs!1591075 m!7157964))

(assert (=> d!1992948 d!1993164))

(check-sat (not d!1993120) (not d!1993096) (not b!6351966) (not bm!541674) (not b!6351826) (not d!1993034) (not b!6352000) (not b!6351860) (not b!6351673) (not b!6351629) (not b!6351983) (not b!6352049) (not b!6352018) (not d!1992966) (not b!6351873) (not d!1993098) (not d!1993104) (not b!6351969) (not b!6351850) (not b!6351834) (not b!6351584) (not b!6351953) (not b!6351993) (not d!1993022) (not b!6352013) (not setNonEmpty!43252) (not d!1993040) (not b!6351581) (not bm!541625) (not bm!541662) tp_is_empty!41767 (not b!6351858) (not b!6351798) (not b!6351988) (not b!6352045) (not d!1993088) (not d!1993108) (not b!6352040) (not d!1993114) (not b!6351587) (not b!6351245) (not b!6351919) (not b!6352035) (not bm!541657) (not b!6351675) (not bm!541599) (not d!1993160) (not b!6351838) (not b!6351828) (not d!1993054) (not b!6351672) (not d!1993092) (not d!1993146) (not d!1993124) (not b!6351854) (not b!6351915) (not b!6351388) (not b!6351920) (not b!6352041) (not bm!541605) (not b!6351793) (not b!6351669) (not d!1993030) (not b!6352033) (not b!6352048) (not b!6351676) (not bm!541664) (not bs!1591075) (not b!6352037) (not b!6351913) (not b!6351946) (not b!6351625) (not b_lambda!241617) (not bm!541661) (not d!1992920) (not bm!541626) (not b!6351628) (not b!6351950) (not b!6351790) (not bm!541655) (not b!6351666) (not b!6351689) (not b!6351844) (not d!1993074) (not b!6351653) (not b!6351895) (not b!6351887) (not b!6351152) (not b!6351605) (not d!1993094) (not bm!541671) (not b!6351923) (not bm!541675) (not b!6352031) (not b!6351964) (not b!6351302) (not b!6352019) (not d!1993066) (not b!6351958) (not bm!541667) (not b!6351847) (not d!1993138) (not bm!541676) (not b!6351886) (not b!6351661) (not b!6351894) (not b!6351905) (not b!6352036) (not d!1993086) (not b!6351833) (not b!6351906) (not d!1993132) (not b!6352039) (not bs!1591074) (not b!6351891) (not d!1993062) (not b!6351482) (not d!1993122) (not b!6351843) (not d!1993134) (not bm!541665) (not d!1993090) (not b!6351824) (not bm!541673) (not d!1993002) (not b!6351684) (not b!6351836) (not b!6351853) (not b!6351820) (not b!6351301) (not bm!541643) (not b!6351371) (not b!6351580) (not b!6351992) (not b!6351819) (not d!1993128) (not d!1993150) (not b!6351968) (not b!6351588) (not bm!541602) (not b_lambda!241619) (not b!6351911) (not b!6352044) (not b!6351944) (not b!6352012) (not b!6351373) (not bm!541666) (not b!6351952) (not b!6351576) (not b!6352043) (not b!6352047) (not b!6351949) (not b!6351794) (not b!6351386) (not b!6351491) (not bm!541601) (not b!6351607) (not bm!541663) (not b!6351837) (not b!6351829) (not b!6351823) (not d!1993110) (not b!6351665) (not d!1993140) (not b!6351827) (not d!1993136) (not d!1993130) (not b!6351830) (not bm!541677) (not d!1992952) (not b!6352005) (not b!6351948) (not b!6351795) (not d!1992948) (not d!1993106) (not b!6351918) (not b!6351864) (not bm!541654) (not b!6351698) (not b!6351987) (not b!6351862) (not b!6351970) (not b!6351982) (not b!6351839) (not b!6351857) (not b!6351606) (not b!6351608) (not bm!541659) (not b!6352032) (not b!6351890) (not d!1992936) (not b!6351851) (not d!1993152) (not d!1993126) (not b!6351916) (not b!6351901) (not b!6351861) (not d!1993064) (not bm!541658) (not b!6351791) (not d!1993100) (not b!6351893))
(check-sat)
