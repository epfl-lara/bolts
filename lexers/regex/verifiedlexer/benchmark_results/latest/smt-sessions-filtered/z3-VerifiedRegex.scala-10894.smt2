; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563238 () Bool)

(assert start!563238)

(declare-fun b!5348124 () Bool)

(assert (=> b!5348124 true))

(assert (=> b!5348124 true))

(declare-fun lambda!274742 () Int)

(declare-fun lambda!274741 () Int)

(assert (=> b!5348124 (not (= lambda!274742 lambda!274741))))

(assert (=> b!5348124 true))

(assert (=> b!5348124 true))

(declare-fun b!5348141 () Bool)

(assert (=> b!5348141 true))

(declare-fun bs!1239914 () Bool)

(declare-fun b!5348119 () Bool)

(assert (= bs!1239914 (and b!5348119 b!5348124)))

(declare-fun lambda!274744 () Int)

(declare-datatypes ((C!30340 0))(
  ( (C!30341 (val!24872 Int)) )
))
(declare-datatypes ((Regex!15035 0))(
  ( (ElementMatch!15035 (c!930865 C!30340)) (Concat!23880 (regOne!30582 Regex!15035) (regTwo!30582 Regex!15035)) (EmptyExpr!15035) (Star!15035 (reg!15364 Regex!15035)) (EmptyLang!15035) (Union!15035 (regOne!30583 Regex!15035) (regTwo!30583 Regex!15035)) )
))
(declare-fun lt!2180408 () Regex!15035)

(declare-fun r!7292 () Regex!15035)

(assert (=> bs!1239914 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274744 lambda!274741))))

(assert (=> bs!1239914 (not (= lambda!274744 lambda!274742))))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(declare-fun lambda!274745 () Int)

(assert (=> bs!1239914 (not (= lambda!274745 lambda!274741))))

(assert (=> bs!1239914 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274745 lambda!274742))))

(assert (=> b!5348119 (not (= lambda!274745 lambda!274744))))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(declare-fun lt!2180400 () Regex!15035)

(declare-fun lambda!274746 () Int)

(assert (=> bs!1239914 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274746 lambda!274741))))

(assert (=> bs!1239914 (not (= lambda!274746 lambda!274742))))

(assert (=> b!5348119 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274746 lambda!274744))))

(assert (=> b!5348119 (not (= lambda!274746 lambda!274745))))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(declare-fun lambda!274747 () Int)

(assert (=> b!5348119 (not (= lambda!274747 lambda!274746))))

(assert (=> b!5348119 (not (= lambda!274747 lambda!274744))))

(assert (=> bs!1239914 (not (= lambda!274747 lambda!274741))))

(assert (=> bs!1239914 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274747 lambda!274742))))

(assert (=> b!5348119 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274747 lambda!274745))))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(assert (=> b!5348119 true))

(declare-fun b!5348110 () Bool)

(declare-fun e!3320218 () Bool)

(declare-fun e!3320232 () Bool)

(assert (=> b!5348110 (= e!3320218 e!3320232)))

(declare-fun res!2269154 () Bool)

(assert (=> b!5348110 (=> res!2269154 e!3320232)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61404 0))(
  ( (Nil!61280) (Cons!61280 (h!67728 Regex!15035) (t!374621 List!61404)) )
))
(declare-datatypes ((Context!8838 0))(
  ( (Context!8839 (exprs!4919 List!61404)) )
))
(declare-fun lt!2180403 () (InoxSet Context!8838))

(declare-fun lt!2180372 () (InoxSet Context!8838))

(assert (=> b!5348110 (= res!2269154 (not (= lt!2180403 lt!2180372)))))

(declare-datatypes ((List!61405 0))(
  ( (Nil!61281) (Cons!61281 (h!67729 C!30340) (t!374622 List!61405)) )
))
(declare-fun s!2326 () List!61405)

(declare-fun lt!2180378 () List!61404)

(declare-fun derivationStepZipperDown!483 (Regex!15035 Context!8838 C!30340) (InoxSet Context!8838))

(assert (=> b!5348110 (= lt!2180372 (derivationStepZipperDown!483 (regOne!30582 (regOne!30582 r!7292)) (Context!8839 lt!2180378) (h!67729 s!2326)))))

(declare-datatypes ((List!61406 0))(
  ( (Nil!61282) (Cons!61282 (h!67730 Context!8838) (t!374623 List!61406)) )
))
(declare-fun zl!343 () List!61406)

(assert (=> b!5348110 (= lt!2180378 (Cons!61280 (regTwo!30582 (regOne!30582 r!7292)) (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348111 () Bool)

(declare-fun res!2269165 () Bool)

(declare-fun e!3320228 () Bool)

(assert (=> b!5348111 (=> res!2269165 e!3320228)))

(declare-fun lt!2180406 () Bool)

(declare-fun lt!2180374 () (InoxSet Context!8838))

(declare-fun matchZipper!1279 ((InoxSet Context!8838) List!61405) Bool)

(assert (=> b!5348111 (= res!2269165 (not (= lt!2180406 (matchZipper!1279 lt!2180374 (t!374622 s!2326)))))))

(declare-fun b!5348112 () Bool)

(declare-fun res!2269169 () Bool)

(declare-fun e!3320227 () Bool)

(assert (=> b!5348112 (=> res!2269169 e!3320227)))

(declare-fun lt!2180376 () Bool)

(declare-fun lt!2180394 () Regex!15035)

(declare-fun matchR!7220 (Regex!15035 List!61405) Bool)

(assert (=> b!5348112 (= res!2269169 (not (= lt!2180376 (matchR!7220 (Concat!23880 lt!2180394 (regTwo!30582 r!7292)) s!2326))))))

(declare-fun b!5348113 () Bool)

(declare-fun e!3320230 () Bool)

(declare-fun nullable!5204 (Regex!15035) Bool)

(assert (=> b!5348113 (= e!3320230 (nullable!5204 (regOne!30582 (regOne!30582 r!7292))))))

(declare-fun b!5348114 () Bool)

(declare-fun e!3320221 () Bool)

(declare-fun tp_is_empty!39323 () Bool)

(declare-fun tp!1486044 () Bool)

(assert (=> b!5348114 (= e!3320221 (and tp_is_empty!39323 tp!1486044))))

(declare-fun b!5348115 () Bool)

(declare-fun res!2269146 () Bool)

(declare-fun e!3320224 () Bool)

(assert (=> b!5348115 (=> res!2269146 e!3320224)))

(declare-fun lt!2180386 () Context!8838)

(declare-fun contextDepthTotal!168 (Context!8838) Int)

(assert (=> b!5348115 (= res!2269146 (>= (contextDepthTotal!168 lt!2180386) (contextDepthTotal!168 (h!67730 zl!343))))))

(declare-fun b!5348116 () Bool)

(declare-fun res!2269149 () Bool)

(declare-fun e!3320234 () Bool)

(assert (=> b!5348116 (=> res!2269149 e!3320234)))

(get-info :version)

(assert (=> b!5348116 (= res!2269149 (not ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348117 () Bool)

(declare-fun res!2269159 () Bool)

(assert (=> b!5348117 (=> res!2269159 e!3320227)))

(assert (=> b!5348117 (= res!2269159 (not (= lt!2180376 (matchR!7220 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)) s!2326))))))

(declare-fun b!5348118 () Bool)

(declare-fun res!2269155 () Bool)

(declare-fun e!3320222 () Bool)

(assert (=> b!5348118 (=> (not res!2269155) (not e!3320222))))

(declare-fun z!1189 () (InoxSet Context!8838))

(declare-fun toList!8819 ((InoxSet Context!8838)) List!61406)

(assert (=> b!5348118 (= res!2269155 (= (toList!8819 z!1189) zl!343))))

(declare-fun e!3320223 () Bool)

(assert (=> b!5348119 (= e!3320223 e!3320227)))

(declare-fun res!2269151 () Bool)

(assert (=> b!5348119 (=> res!2269151 e!3320227)))

(declare-fun lt!2180404 () Bool)

(declare-fun lt!2180399 () Bool)

(declare-fun lt!2180384 () Bool)

(assert (=> b!5348119 (= res!2269151 (or (not (= lt!2180384 lt!2180404)) (not (= lt!2180384 lt!2180399))))))

(assert (=> b!5348119 (= lt!2180384 (matchZipper!1279 z!1189 s!2326))))

(declare-fun Exists!2216 (Int) Bool)

(assert (=> b!5348119 (= (Exists!2216 lambda!274746) (Exists!2216 lambda!274747))))

(declare-datatypes ((Unit!153658 0))(
  ( (Unit!153659) )
))
(declare-fun lt!2180398 () Unit!153658)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!870 (Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> b!5348119 (= lt!2180398 (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(declare-datatypes ((tuple2!64468 0))(
  ( (tuple2!64469 (_1!35537 List!61405) (_2!35537 List!61405)) )
))
(declare-datatypes ((Option!15146 0))(
  ( (None!15145) (Some!15145 (v!51174 tuple2!64468)) )
))
(declare-fun isDefined!11849 (Option!15146) Bool)

(declare-fun findConcatSeparation!1560 (Regex!15035 Regex!15035 List!61405 List!61405 List!61405) Option!15146)

(assert (=> b!5348119 (= (isDefined!11849 (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 Nil!61281 s!2326 s!2326)) (Exists!2216 lambda!274746))))

(declare-fun lt!2180402 () Unit!153658)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1324 (Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> b!5348119 (= lt!2180402 (lemmaFindConcatSeparationEquivalentToExists!1324 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(declare-fun generalisedConcat!704 (List!61404) Regex!15035)

(assert (=> b!5348119 (= lt!2180400 (generalisedConcat!704 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun matchRSpec!2138 (Regex!15035 List!61405) Bool)

(assert (=> b!5348119 (= (matchR!7220 lt!2180408 s!2326) (matchRSpec!2138 lt!2180408 s!2326))))

(declare-fun lt!2180377 () Unit!153658)

(declare-fun mainMatchTheorem!2138 (Regex!15035 List!61405) Unit!153658)

(assert (=> b!5348119 (= lt!2180377 (mainMatchTheorem!2138 lt!2180408 s!2326))))

(assert (=> b!5348119 (= (Exists!2216 lambda!274744) (Exists!2216 lambda!274745))))

(declare-fun lt!2180397 () Unit!153658)

(assert (=> b!5348119 (= lt!2180397 (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326))))

(assert (=> b!5348119 (= (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 Nil!61281 s!2326 s!2326)) (Exists!2216 lambda!274744))))

(declare-fun lt!2180391 () Unit!153658)

(assert (=> b!5348119 (= lt!2180391 (lemmaFindConcatSeparationEquivalentToExists!1324 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326))))

(assert (=> b!5348119 (= lt!2180408 (generalisedConcat!704 lt!2180378))))

(declare-fun lt!2180381 () Regex!15035)

(assert (=> b!5348119 (= lt!2180399 (matchRSpec!2138 lt!2180381 s!2326))))

(declare-fun lt!2180410 () Unit!153658)

(assert (=> b!5348119 (= lt!2180410 (mainMatchTheorem!2138 lt!2180381 s!2326))))

(assert (=> b!5348119 (= lt!2180399 lt!2180404)))

(declare-fun lt!2180396 () (InoxSet Context!8838))

(assert (=> b!5348119 (= lt!2180404 (matchZipper!1279 lt!2180396 s!2326))))

(assert (=> b!5348119 (= lt!2180399 (matchR!7220 lt!2180381 s!2326))))

(declare-fun lt!2180409 () Unit!153658)

(declare-fun lt!2180385 () List!61406)

(declare-fun theoremZipperRegexEquiv!433 ((InoxSet Context!8838) List!61406 Regex!15035 List!61405) Unit!153658)

(assert (=> b!5348119 (= lt!2180409 (theoremZipperRegexEquiv!433 lt!2180396 lt!2180385 lt!2180381 s!2326))))

(declare-fun lt!2180375 () List!61404)

(assert (=> b!5348119 (= lt!2180381 (generalisedConcat!704 lt!2180375))))

(declare-fun b!5348120 () Bool)

(declare-fun e!3320217 () Bool)

(declare-fun lt!2180395 () Regex!15035)

(declare-fun validRegex!6771 (Regex!15035) Bool)

(assert (=> b!5348120 (= e!3320217 (validRegex!6771 lt!2180395))))

(declare-fun lt!2180393 () Bool)

(assert (=> b!5348120 (= lt!2180393 (matchR!7220 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)) s!2326))))

(declare-fun lt!2180407 () Unit!153658)

(declare-fun lemmaConcatAssociative!12 (Regex!15035 Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> b!5348120 (= lt!2180407 (lemmaConcatAssociative!12 (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(declare-fun b!5348121 () Bool)

(assert (=> b!5348121 (= e!3320224 e!3320223)))

(declare-fun res!2269157 () Bool)

(assert (=> b!5348121 (=> res!2269157 e!3320223)))

(declare-fun zipperDepthTotal!188 (List!61406) Int)

(assert (=> b!5348121 (= res!2269157 (>= (zipperDepthTotal!188 lt!2180385) (zipperDepthTotal!188 zl!343)))))

(assert (=> b!5348121 (= lt!2180385 (Cons!61282 lt!2180386 Nil!61282))))

(declare-fun b!5348122 () Bool)

(declare-fun res!2269147 () Bool)

(assert (=> b!5348122 (=> res!2269147 e!3320234)))

(assert (=> b!5348122 (= res!2269147 (not (= r!7292 (generalisedConcat!704 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348123 () Bool)

(declare-fun res!2269145 () Bool)

(assert (=> b!5348123 (=> res!2269145 e!3320218)))

(assert (=> b!5348123 (= res!2269145 e!3320230)))

(declare-fun res!2269161 () Bool)

(assert (=> b!5348123 (=> (not res!2269161) (not e!3320230))))

(assert (=> b!5348123 (= res!2269161 ((_ is Concat!23880) (regOne!30582 r!7292)))))

(declare-fun e!3320229 () Bool)

(assert (=> b!5348124 (= e!3320234 e!3320229)))

(declare-fun res!2269164 () Bool)

(assert (=> b!5348124 (=> res!2269164 e!3320229)))

(declare-fun lt!2180387 () Bool)

(assert (=> b!5348124 (= res!2269164 (or (not (= lt!2180376 lt!2180387)) ((_ is Nil!61281) s!2326)))))

(assert (=> b!5348124 (= (Exists!2216 lambda!274741) (Exists!2216 lambda!274742))))

(declare-fun lt!2180389 () Unit!153658)

(assert (=> b!5348124 (= lt!2180389 (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326))))

(assert (=> b!5348124 (= lt!2180387 (Exists!2216 lambda!274741))))

(assert (=> b!5348124 (= lt!2180387 (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) Nil!61281 s!2326 s!2326)))))

(declare-fun lt!2180383 () Unit!153658)

(assert (=> b!5348124 (= lt!2180383 (lemmaFindConcatSeparationEquivalentToExists!1324 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326))))

(declare-fun b!5348125 () Bool)

(declare-fun e!3320225 () Bool)

(declare-fun tp!1486043 () Bool)

(assert (=> b!5348125 (= e!3320225 tp!1486043)))

(declare-fun e!3320226 () Bool)

(declare-fun e!3320216 () Bool)

(declare-fun tp!1486047 () Bool)

(declare-fun b!5348126 () Bool)

(declare-fun inv!80834 (Context!8838) Bool)

(assert (=> b!5348126 (= e!3320226 (and (inv!80834 (h!67730 zl!343)) e!3320216 tp!1486047))))

(declare-fun b!5348127 () Bool)

(assert (=> b!5348127 (= e!3320227 e!3320217)))

(declare-fun res!2269166 () Bool)

(assert (=> b!5348127 (=> res!2269166 e!3320217)))

(assert (=> b!5348127 (= res!2269166 (not (= lt!2180376 lt!2180393)))))

(assert (=> b!5348127 (= lt!2180393 (matchR!7220 lt!2180395 s!2326))))

(assert (=> b!5348127 (= lt!2180395 (Concat!23880 lt!2180394 lt!2180400))))

(declare-fun b!5348128 () Bool)

(assert (=> b!5348128 (= e!3320228 e!3320224)))

(declare-fun res!2269150 () Bool)

(assert (=> b!5348128 (=> res!2269150 e!3320224)))

(assert (=> b!5348128 (= res!2269150 (not (= (exprs!4919 (h!67730 zl!343)) (Cons!61280 lt!2180394 (t!374621 (exprs!4919 (h!67730 zl!343)))))))))

(assert (=> b!5348128 (= lt!2180394 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))))))

(declare-fun b!5348129 () Bool)

(declare-fun res!2269167 () Bool)

(assert (=> b!5348129 (=> (not res!2269167) (not e!3320222))))

(declare-fun unfocusZipper!777 (List!61406) Regex!15035)

(assert (=> b!5348129 (= res!2269167 (= r!7292 (unfocusZipper!777 zl!343)))))

(declare-fun b!5348130 () Bool)

(declare-fun res!2269143 () Bool)

(assert (=> b!5348130 (=> res!2269143 e!3320234)))

(assert (=> b!5348130 (= res!2269143 (or ((_ is EmptyExpr!15035) r!7292) ((_ is EmptyLang!15035) r!7292) ((_ is ElementMatch!15035) r!7292) ((_ is Union!15035) r!7292) (not ((_ is Concat!23880) r!7292))))))

(declare-fun b!5348131 () Bool)

(declare-fun res!2269153 () Bool)

(assert (=> b!5348131 (=> res!2269153 e!3320223)))

(declare-fun zipperDepth!144 (List!61406) Int)

(assert (=> b!5348131 (= res!2269153 (> (zipperDepth!144 lt!2180385) (zipperDepth!144 zl!343)))))

(declare-fun b!5348132 () Bool)

(declare-fun tp!1486042 () Bool)

(assert (=> b!5348132 (= e!3320216 tp!1486042)))

(declare-fun b!5348133 () Bool)

(declare-fun res!2269144 () Bool)

(assert (=> b!5348133 (=> res!2269144 e!3320218)))

(assert (=> b!5348133 (= res!2269144 (not ((_ is Concat!23880) (regOne!30582 r!7292))))))

(declare-fun res!2269148 () Bool)

(assert (=> start!563238 (=> (not res!2269148) (not e!3320222))))

(assert (=> start!563238 (= res!2269148 (validRegex!6771 r!7292))))

(assert (=> start!563238 e!3320222))

(assert (=> start!563238 e!3320225))

(declare-fun condSetEmpty!34543 () Bool)

(assert (=> start!563238 (= condSetEmpty!34543 (= z!1189 ((as const (Array Context!8838 Bool)) false)))))

(declare-fun setRes!34543 () Bool)

(assert (=> start!563238 setRes!34543))

(assert (=> start!563238 e!3320226))

(assert (=> start!563238 e!3320221))

(declare-fun b!5348134 () Bool)

(declare-fun res!2269162 () Bool)

(assert (=> b!5348134 (=> res!2269162 e!3320229)))

(declare-fun isEmpty!33255 (List!61404) Bool)

(assert (=> b!5348134 (= res!2269162 (isEmpty!33255 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun e!3320231 () Bool)

(declare-fun tp!1486045 () Bool)

(declare-fun setElem!34543 () Context!8838)

(declare-fun setNonEmpty!34543 () Bool)

(assert (=> setNonEmpty!34543 (= setRes!34543 (and tp!1486045 (inv!80834 setElem!34543) e!3320231))))

(declare-fun setRest!34543 () (InoxSet Context!8838))

(assert (=> setNonEmpty!34543 (= z!1189 ((_ map or) (store ((as const (Array Context!8838 Bool)) false) setElem!34543 true) setRest!34543))))

(declare-fun b!5348135 () Bool)

(declare-fun tp!1486046 () Bool)

(assert (=> b!5348135 (= e!3320231 tp!1486046)))

(declare-fun b!5348136 () Bool)

(declare-fun e!3320220 () Bool)

(assert (=> b!5348136 (= e!3320232 e!3320220)))

(declare-fun res!2269152 () Bool)

(assert (=> b!5348136 (=> res!2269152 e!3320220)))

(assert (=> b!5348136 (= res!2269152 (not (= lt!2180406 (matchZipper!1279 lt!2180372 (t!374622 s!2326)))))))

(assert (=> b!5348136 (= lt!2180406 (matchZipper!1279 lt!2180403 (t!374622 s!2326)))))

(declare-fun setIsEmpty!34543 () Bool)

(assert (=> setIsEmpty!34543 setRes!34543))

(declare-fun b!5348137 () Bool)

(declare-fun e!3320219 () Bool)

(declare-fun lt!2180382 () (InoxSet Context!8838))

(assert (=> b!5348137 (= e!3320219 (matchZipper!1279 lt!2180382 (t!374622 s!2326)))))

(declare-fun b!5348138 () Bool)

(declare-fun e!3320233 () Unit!153658)

(declare-fun Unit!153660 () Unit!153658)

(assert (=> b!5348138 (= e!3320233 Unit!153660)))

(declare-fun lt!2180379 () Unit!153658)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!272 ((InoxSet Context!8838) (InoxSet Context!8838) List!61405) Unit!153658)

(assert (=> b!5348138 (= lt!2180379 (lemmaZipperConcatMatchesSameAsBothZippers!272 lt!2180403 lt!2180382 (t!374622 s!2326)))))

(declare-fun res!2269158 () Bool)

(assert (=> b!5348138 (= res!2269158 (matchZipper!1279 lt!2180403 (t!374622 s!2326)))))

(assert (=> b!5348138 (=> res!2269158 e!3320219)))

(assert (=> b!5348138 (= (matchZipper!1279 ((_ map or) lt!2180403 lt!2180382) (t!374622 s!2326)) e!3320219)))

(declare-fun b!5348139 () Bool)

(declare-fun res!2269163 () Bool)

(assert (=> b!5348139 (=> res!2269163 e!3320234)))

(declare-fun generalisedUnion!964 (List!61404) Regex!15035)

(declare-fun unfocusZipperList!477 (List!61406) List!61404)

(assert (=> b!5348139 (= res!2269163 (not (= r!7292 (generalisedUnion!964 (unfocusZipperList!477 zl!343)))))))

(declare-fun b!5348140 () Bool)

(declare-fun tp!1486049 () Bool)

(declare-fun tp!1486041 () Bool)

(assert (=> b!5348140 (= e!3320225 (and tp!1486049 tp!1486041))))

(assert (=> b!5348141 (= e!3320229 e!3320218)))

(declare-fun res!2269160 () Bool)

(assert (=> b!5348141 (=> res!2269160 e!3320218)))

(assert (=> b!5348141 (= res!2269160 (or (and ((_ is ElementMatch!15035) (regOne!30582 r!7292)) (= (c!930865 (regOne!30582 r!7292)) (h!67729 s!2326))) ((_ is Union!15035) (regOne!30582 r!7292))))))

(declare-fun lt!2180388 () Unit!153658)

(assert (=> b!5348141 (= lt!2180388 e!3320233)))

(declare-fun c!930864 () Bool)

(assert (=> b!5348141 (= c!930864 (nullable!5204 (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun lambda!274743 () Int)

(declare-fun flatMap!762 ((InoxSet Context!8838) Int) (InoxSet Context!8838))

(declare-fun derivationStepZipperUp!407 (Context!8838 C!30340) (InoxSet Context!8838))

(assert (=> b!5348141 (= (flatMap!762 z!1189 lambda!274743) (derivationStepZipperUp!407 (h!67730 zl!343) (h!67729 s!2326)))))

(declare-fun lt!2180405 () Unit!153658)

(declare-fun lemmaFlatMapOnSingletonSet!294 ((InoxSet Context!8838) Context!8838 Int) Unit!153658)

(assert (=> b!5348141 (= lt!2180405 (lemmaFlatMapOnSingletonSet!294 z!1189 (h!67730 zl!343) lambda!274743))))

(declare-fun lt!2180392 () Context!8838)

(assert (=> b!5348141 (= lt!2180382 (derivationStepZipperUp!407 lt!2180392 (h!67729 s!2326)))))

(assert (=> b!5348141 (= lt!2180403 (derivationStepZipperDown!483 (h!67728 (exprs!4919 (h!67730 zl!343))) lt!2180392 (h!67729 s!2326)))))

(assert (=> b!5348141 (= lt!2180392 (Context!8839 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun lt!2180390 () (InoxSet Context!8838))

(assert (=> b!5348141 (= lt!2180390 (derivationStepZipperUp!407 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343))))) (h!67729 s!2326)))))

(declare-fun b!5348142 () Bool)

(declare-fun res!2269142 () Bool)

(assert (=> b!5348142 (=> res!2269142 e!3320234)))

(declare-fun isEmpty!33256 (List!61406) Bool)

(assert (=> b!5348142 (= res!2269142 (not (isEmpty!33256 (t!374623 zl!343))))))

(declare-fun b!5348143 () Bool)

(assert (=> b!5348143 (= e!3320225 tp_is_empty!39323)))

(declare-fun b!5348144 () Bool)

(declare-fun tp!1486048 () Bool)

(declare-fun tp!1486040 () Bool)

(assert (=> b!5348144 (= e!3320225 (and tp!1486048 tp!1486040))))

(declare-fun b!5348145 () Bool)

(assert (=> b!5348145 (= e!3320220 e!3320228)))

(declare-fun res!2269168 () Bool)

(assert (=> b!5348145 (=> res!2269168 e!3320228)))

(assert (=> b!5348145 (= res!2269168 (not (= lt!2180374 lt!2180372)))))

(assert (=> b!5348145 (= (flatMap!762 lt!2180396 lambda!274743) (derivationStepZipperUp!407 lt!2180386 (h!67729 s!2326)))))

(declare-fun lt!2180380 () Unit!153658)

(assert (=> b!5348145 (= lt!2180380 (lemmaFlatMapOnSingletonSet!294 lt!2180396 lt!2180386 lambda!274743))))

(declare-fun lt!2180373 () (InoxSet Context!8838))

(assert (=> b!5348145 (= lt!2180373 (derivationStepZipperUp!407 lt!2180386 (h!67729 s!2326)))))

(declare-fun derivationStepZipper!1276 ((InoxSet Context!8838) C!30340) (InoxSet Context!8838))

(assert (=> b!5348145 (= lt!2180374 (derivationStepZipper!1276 lt!2180396 (h!67729 s!2326)))))

(assert (=> b!5348145 (= lt!2180396 (store ((as const (Array Context!8838 Bool)) false) lt!2180386 true))))

(assert (=> b!5348145 (= lt!2180386 (Context!8839 lt!2180375))))

(assert (=> b!5348145 (= lt!2180375 (Cons!61280 (regOne!30582 (regOne!30582 r!7292)) lt!2180378))))

(declare-fun b!5348146 () Bool)

(declare-fun Unit!153661 () Unit!153658)

(assert (=> b!5348146 (= e!3320233 Unit!153661)))

(declare-fun b!5348147 () Bool)

(assert (=> b!5348147 (= e!3320222 (not e!3320234))))

(declare-fun res!2269156 () Bool)

(assert (=> b!5348147 (=> res!2269156 e!3320234)))

(assert (=> b!5348147 (= res!2269156 (not ((_ is Cons!61282) zl!343)))))

(assert (=> b!5348147 (= lt!2180376 (matchRSpec!2138 r!7292 s!2326))))

(assert (=> b!5348147 (= lt!2180376 (matchR!7220 r!7292 s!2326))))

(declare-fun lt!2180401 () Unit!153658)

(assert (=> b!5348147 (= lt!2180401 (mainMatchTheorem!2138 r!7292 s!2326))))

(assert (= (and start!563238 res!2269148) b!5348118))

(assert (= (and b!5348118 res!2269155) b!5348129))

(assert (= (and b!5348129 res!2269167) b!5348147))

(assert (= (and b!5348147 (not res!2269156)) b!5348142))

(assert (= (and b!5348142 (not res!2269142)) b!5348122))

(assert (= (and b!5348122 (not res!2269147)) b!5348116))

(assert (= (and b!5348116 (not res!2269149)) b!5348139))

(assert (= (and b!5348139 (not res!2269163)) b!5348130))

(assert (= (and b!5348130 (not res!2269143)) b!5348124))

(assert (= (and b!5348124 (not res!2269164)) b!5348134))

(assert (= (and b!5348134 (not res!2269162)) b!5348141))

(assert (= (and b!5348141 c!930864) b!5348138))

(assert (= (and b!5348141 (not c!930864)) b!5348146))

(assert (= (and b!5348138 (not res!2269158)) b!5348137))

(assert (= (and b!5348141 (not res!2269160)) b!5348123))

(assert (= (and b!5348123 res!2269161) b!5348113))

(assert (= (and b!5348123 (not res!2269145)) b!5348133))

(assert (= (and b!5348133 (not res!2269144)) b!5348110))

(assert (= (and b!5348110 (not res!2269154)) b!5348136))

(assert (= (and b!5348136 (not res!2269152)) b!5348145))

(assert (= (and b!5348145 (not res!2269168)) b!5348111))

(assert (= (and b!5348111 (not res!2269165)) b!5348128))

(assert (= (and b!5348128 (not res!2269150)) b!5348115))

(assert (= (and b!5348115 (not res!2269146)) b!5348121))

(assert (= (and b!5348121 (not res!2269157)) b!5348131))

(assert (= (and b!5348131 (not res!2269153)) b!5348119))

(assert (= (and b!5348119 (not res!2269151)) b!5348117))

(assert (= (and b!5348117 (not res!2269159)) b!5348112))

(assert (= (and b!5348112 (not res!2269169)) b!5348127))

(assert (= (and b!5348127 (not res!2269166)) b!5348120))

(assert (= (and start!563238 ((_ is ElementMatch!15035) r!7292)) b!5348143))

(assert (= (and start!563238 ((_ is Concat!23880) r!7292)) b!5348144))

(assert (= (and start!563238 ((_ is Star!15035) r!7292)) b!5348125))

(assert (= (and start!563238 ((_ is Union!15035) r!7292)) b!5348140))

(assert (= (and start!563238 condSetEmpty!34543) setIsEmpty!34543))

(assert (= (and start!563238 (not condSetEmpty!34543)) setNonEmpty!34543))

(assert (= setNonEmpty!34543 b!5348135))

(assert (= b!5348126 b!5348132))

(assert (= (and start!563238 ((_ is Cons!61282) zl!343)) b!5348126))

(assert (= (and start!563238 ((_ is Cons!61281) s!2326)) b!5348114))

(declare-fun m!6379546 () Bool)

(assert (=> b!5348127 m!6379546))

(declare-fun m!6379548 () Bool)

(assert (=> start!563238 m!6379548))

(declare-fun m!6379550 () Bool)

(assert (=> b!5348111 m!6379550))

(declare-fun m!6379552 () Bool)

(assert (=> b!5348141 m!6379552))

(declare-fun m!6379554 () Bool)

(assert (=> b!5348141 m!6379554))

(declare-fun m!6379556 () Bool)

(assert (=> b!5348141 m!6379556))

(declare-fun m!6379558 () Bool)

(assert (=> b!5348141 m!6379558))

(declare-fun m!6379560 () Bool)

(assert (=> b!5348141 m!6379560))

(declare-fun m!6379562 () Bool)

(assert (=> b!5348141 m!6379562))

(declare-fun m!6379564 () Bool)

(assert (=> b!5348141 m!6379564))

(declare-fun m!6379566 () Bool)

(assert (=> b!5348129 m!6379566))

(declare-fun m!6379568 () Bool)

(assert (=> b!5348142 m!6379568))

(declare-fun m!6379570 () Bool)

(assert (=> b!5348113 m!6379570))

(declare-fun m!6379572 () Bool)

(assert (=> b!5348145 m!6379572))

(declare-fun m!6379574 () Bool)

(assert (=> b!5348145 m!6379574))

(declare-fun m!6379576 () Bool)

(assert (=> b!5348145 m!6379576))

(declare-fun m!6379578 () Bool)

(assert (=> b!5348145 m!6379578))

(declare-fun m!6379580 () Bool)

(assert (=> b!5348145 m!6379580))

(declare-fun m!6379582 () Bool)

(assert (=> b!5348136 m!6379582))

(declare-fun m!6379584 () Bool)

(assert (=> b!5348136 m!6379584))

(declare-fun m!6379586 () Bool)

(assert (=> b!5348124 m!6379586))

(declare-fun m!6379588 () Bool)

(assert (=> b!5348124 m!6379588))

(declare-fun m!6379590 () Bool)

(assert (=> b!5348124 m!6379590))

(declare-fun m!6379592 () Bool)

(assert (=> b!5348124 m!6379592))

(assert (=> b!5348124 m!6379586))

(declare-fun m!6379594 () Bool)

(assert (=> b!5348124 m!6379594))

(assert (=> b!5348124 m!6379588))

(declare-fun m!6379596 () Bool)

(assert (=> b!5348124 m!6379596))

(declare-fun m!6379598 () Bool)

(assert (=> b!5348137 m!6379598))

(declare-fun m!6379600 () Bool)

(assert (=> b!5348117 m!6379600))

(declare-fun m!6379602 () Bool)

(assert (=> b!5348121 m!6379602))

(declare-fun m!6379604 () Bool)

(assert (=> b!5348121 m!6379604))

(declare-fun m!6379606 () Bool)

(assert (=> b!5348120 m!6379606))

(declare-fun m!6379608 () Bool)

(assert (=> b!5348120 m!6379608))

(declare-fun m!6379610 () Bool)

(assert (=> b!5348120 m!6379610))

(declare-fun m!6379612 () Bool)

(assert (=> b!5348119 m!6379612))

(declare-fun m!6379614 () Bool)

(assert (=> b!5348119 m!6379614))

(declare-fun m!6379616 () Bool)

(assert (=> b!5348119 m!6379616))

(declare-fun m!6379618 () Bool)

(assert (=> b!5348119 m!6379618))

(declare-fun m!6379620 () Bool)

(assert (=> b!5348119 m!6379620))

(declare-fun m!6379622 () Bool)

(assert (=> b!5348119 m!6379622))

(declare-fun m!6379624 () Bool)

(assert (=> b!5348119 m!6379624))

(declare-fun m!6379626 () Bool)

(assert (=> b!5348119 m!6379626))

(declare-fun m!6379628 () Bool)

(assert (=> b!5348119 m!6379628))

(declare-fun m!6379630 () Bool)

(assert (=> b!5348119 m!6379630))

(declare-fun m!6379632 () Bool)

(assert (=> b!5348119 m!6379632))

(declare-fun m!6379634 () Bool)

(assert (=> b!5348119 m!6379634))

(declare-fun m!6379636 () Bool)

(assert (=> b!5348119 m!6379636))

(declare-fun m!6379638 () Bool)

(assert (=> b!5348119 m!6379638))

(assert (=> b!5348119 m!6379620))

(declare-fun m!6379640 () Bool)

(assert (=> b!5348119 m!6379640))

(declare-fun m!6379642 () Bool)

(assert (=> b!5348119 m!6379642))

(declare-fun m!6379644 () Bool)

(assert (=> b!5348119 m!6379644))

(declare-fun m!6379646 () Bool)

(assert (=> b!5348119 m!6379646))

(declare-fun m!6379648 () Bool)

(assert (=> b!5348119 m!6379648))

(assert (=> b!5348119 m!6379648))

(declare-fun m!6379650 () Bool)

(assert (=> b!5348119 m!6379650))

(assert (=> b!5348119 m!6379618))

(declare-fun m!6379652 () Bool)

(assert (=> b!5348119 m!6379652))

(declare-fun m!6379654 () Bool)

(assert (=> b!5348119 m!6379654))

(declare-fun m!6379656 () Bool)

(assert (=> b!5348119 m!6379656))

(declare-fun m!6379658 () Bool)

(assert (=> b!5348119 m!6379658))

(assert (=> b!5348119 m!6379626))

(declare-fun m!6379660 () Bool)

(assert (=> b!5348122 m!6379660))

(declare-fun m!6379662 () Bool)

(assert (=> b!5348147 m!6379662))

(declare-fun m!6379664 () Bool)

(assert (=> b!5348147 m!6379664))

(declare-fun m!6379666 () Bool)

(assert (=> b!5348147 m!6379666))

(declare-fun m!6379668 () Bool)

(assert (=> b!5348131 m!6379668))

(declare-fun m!6379670 () Bool)

(assert (=> b!5348131 m!6379670))

(declare-fun m!6379672 () Bool)

(assert (=> b!5348138 m!6379672))

(assert (=> b!5348138 m!6379584))

(declare-fun m!6379674 () Bool)

(assert (=> b!5348138 m!6379674))

(declare-fun m!6379676 () Bool)

(assert (=> b!5348118 m!6379676))

(declare-fun m!6379678 () Bool)

(assert (=> b!5348112 m!6379678))

(declare-fun m!6379680 () Bool)

(assert (=> b!5348134 m!6379680))

(declare-fun m!6379682 () Bool)

(assert (=> b!5348126 m!6379682))

(declare-fun m!6379684 () Bool)

(assert (=> b!5348139 m!6379684))

(assert (=> b!5348139 m!6379684))

(declare-fun m!6379686 () Bool)

(assert (=> b!5348139 m!6379686))

(declare-fun m!6379688 () Bool)

(assert (=> b!5348115 m!6379688))

(declare-fun m!6379690 () Bool)

(assert (=> b!5348115 m!6379690))

(declare-fun m!6379692 () Bool)

(assert (=> b!5348110 m!6379692))

(declare-fun m!6379694 () Bool)

(assert (=> setNonEmpty!34543 m!6379694))

(check-sat (not b!5348139) (not b!5348119) (not b!5348112) (not b!5348132) (not setNonEmpty!34543) (not b!5348141) (not b!5348144) tp_is_empty!39323 (not b!5348127) (not b!5348137) (not b!5348140) (not b!5348138) (not b!5348134) (not b!5348118) (not b!5348142) (not start!563238) (not b!5348124) (not b!5348113) (not b!5348122) (not b!5348110) (not b!5348121) (not b!5348117) (not b!5348145) (not b!5348120) (not b!5348131) (not b!5348125) (not b!5348135) (not b!5348136) (not b!5348111) (not b!5348114) (not b!5348126) (not b!5348147) (not b!5348115) (not b!5348129))
(check-sat)
(get-model)

(declare-fun b!5348176 () Bool)

(declare-fun e!3320249 () (InoxSet Context!8838))

(declare-fun e!3320251 () (InoxSet Context!8838))

(assert (=> b!5348176 (= e!3320249 e!3320251)))

(declare-fun c!930878 () Bool)

(assert (=> b!5348176 (= c!930878 ((_ is Concat!23880) (regOne!30582 (regOne!30582 r!7292))))))

(declare-fun bm!382282 () Bool)

(declare-fun call!382292 () List!61404)

(declare-fun call!382288 () List!61404)

(assert (=> bm!382282 (= call!382292 call!382288)))

(declare-fun b!5348177 () Bool)

(declare-fun c!930879 () Bool)

(assert (=> b!5348177 (= c!930879 ((_ is Star!15035) (regOne!30582 (regOne!30582 r!7292))))))

(declare-fun e!3320250 () (InoxSet Context!8838))

(assert (=> b!5348177 (= e!3320251 e!3320250)))

(declare-fun b!5348178 () Bool)

(declare-fun e!3320248 () (InoxSet Context!8838))

(declare-fun e!3320252 () (InoxSet Context!8838))

(assert (=> b!5348178 (= e!3320248 e!3320252)))

(declare-fun c!930876 () Bool)

(assert (=> b!5348178 (= c!930876 ((_ is Union!15035) (regOne!30582 (regOne!30582 r!7292))))))

(declare-fun b!5348179 () Bool)

(declare-fun e!3320247 () Bool)

(assert (=> b!5348179 (= e!3320247 (nullable!5204 (regOne!30582 (regOne!30582 (regOne!30582 r!7292)))))))

(declare-fun b!5348180 () Bool)

(declare-fun call!382290 () (InoxSet Context!8838))

(declare-fun call!382287 () (InoxSet Context!8838))

(assert (=> b!5348180 (= e!3320252 ((_ map or) call!382290 call!382287))))

(declare-fun bm!382283 () Bool)

(declare-fun call!382289 () (InoxSet Context!8838))

(assert (=> bm!382283 (= call!382289 call!382290)))

(declare-fun d!1715113 () Bool)

(declare-fun c!930877 () Bool)

(assert (=> d!1715113 (= c!930877 (and ((_ is ElementMatch!15035) (regOne!30582 (regOne!30582 r!7292))) (= (c!930865 (regOne!30582 (regOne!30582 r!7292))) (h!67729 s!2326))))))

(assert (=> d!1715113 (= (derivationStepZipperDown!483 (regOne!30582 (regOne!30582 r!7292)) (Context!8839 lt!2180378) (h!67729 s!2326)) e!3320248)))

(declare-fun b!5348181 () Bool)

(declare-fun call!382291 () (InoxSet Context!8838))

(assert (=> b!5348181 (= e!3320251 call!382291)))

(declare-fun bm!382284 () Bool)

(assert (=> bm!382284 (= call!382287 (derivationStepZipperDown!483 (ite c!930876 (regTwo!30583 (regOne!30582 (regOne!30582 r!7292))) (regOne!30582 (regOne!30582 (regOne!30582 r!7292)))) (ite c!930876 (Context!8839 lt!2180378) (Context!8839 call!382288)) (h!67729 s!2326)))))

(declare-fun b!5348182 () Bool)

(assert (=> b!5348182 (= e!3320250 ((as const (Array Context!8838 Bool)) false))))

(declare-fun c!930880 () Bool)

(declare-fun bm!382285 () Bool)

(declare-fun $colon$colon!1425 (List!61404 Regex!15035) List!61404)

(assert (=> bm!382285 (= call!382288 ($colon$colon!1425 (exprs!4919 (Context!8839 lt!2180378)) (ite (or c!930880 c!930878) (regTwo!30582 (regOne!30582 (regOne!30582 r!7292))) (regOne!30582 (regOne!30582 r!7292)))))))

(declare-fun b!5348183 () Bool)

(assert (=> b!5348183 (= c!930880 e!3320247)))

(declare-fun res!2269172 () Bool)

(assert (=> b!5348183 (=> (not res!2269172) (not e!3320247))))

(assert (=> b!5348183 (= res!2269172 ((_ is Concat!23880) (regOne!30582 (regOne!30582 r!7292))))))

(assert (=> b!5348183 (= e!3320252 e!3320249)))

(declare-fun bm!382286 () Bool)

(assert (=> bm!382286 (= call!382291 call!382289)))

(declare-fun b!5348184 () Bool)

(assert (=> b!5348184 (= e!3320248 (store ((as const (Array Context!8838 Bool)) false) (Context!8839 lt!2180378) true))))

(declare-fun b!5348185 () Bool)

(assert (=> b!5348185 (= e!3320249 ((_ map or) call!382287 call!382289))))

(declare-fun b!5348186 () Bool)

(assert (=> b!5348186 (= e!3320250 call!382291)))

(declare-fun bm!382287 () Bool)

(assert (=> bm!382287 (= call!382290 (derivationStepZipperDown!483 (ite c!930876 (regOne!30583 (regOne!30582 (regOne!30582 r!7292))) (ite c!930880 (regTwo!30582 (regOne!30582 (regOne!30582 r!7292))) (ite c!930878 (regOne!30582 (regOne!30582 (regOne!30582 r!7292))) (reg!15364 (regOne!30582 (regOne!30582 r!7292)))))) (ite (or c!930876 c!930880) (Context!8839 lt!2180378) (Context!8839 call!382292)) (h!67729 s!2326)))))

(assert (= (and d!1715113 c!930877) b!5348184))

(assert (= (and d!1715113 (not c!930877)) b!5348178))

(assert (= (and b!5348178 c!930876) b!5348180))

(assert (= (and b!5348178 (not c!930876)) b!5348183))

(assert (= (and b!5348183 res!2269172) b!5348179))

(assert (= (and b!5348183 c!930880) b!5348185))

(assert (= (and b!5348183 (not c!930880)) b!5348176))

(assert (= (and b!5348176 c!930878) b!5348181))

(assert (= (and b!5348176 (not c!930878)) b!5348177))

(assert (= (and b!5348177 c!930879) b!5348186))

(assert (= (and b!5348177 (not c!930879)) b!5348182))

(assert (= (or b!5348181 b!5348186) bm!382282))

(assert (= (or b!5348181 b!5348186) bm!382286))

(assert (= (or b!5348185 bm!382282) bm!382285))

(assert (= (or b!5348185 bm!382286) bm!382283))

(assert (= (or b!5348180 b!5348185) bm!382284))

(assert (= (or b!5348180 bm!382283) bm!382287))

(declare-fun m!6379696 () Bool)

(assert (=> bm!382287 m!6379696))

(declare-fun m!6379698 () Bool)

(assert (=> bm!382285 m!6379698))

(declare-fun m!6379700 () Bool)

(assert (=> b!5348184 m!6379700))

(declare-fun m!6379702 () Bool)

(assert (=> b!5348179 m!6379702))

(declare-fun m!6379704 () Bool)

(assert (=> bm!382284 m!6379704))

(assert (=> b!5348110 d!1715113))

(declare-fun b!5348193 () Bool)

(assert (=> b!5348193 true))

(declare-fun bs!1239915 () Bool)

(declare-fun b!5348195 () Bool)

(assert (= bs!1239915 (and b!5348195 b!5348193)))

(declare-fun lt!2180422 () Int)

(declare-fun lt!2180421 () Int)

(declare-fun lambda!274755 () Int)

(declare-fun lambda!274756 () Int)

(assert (=> bs!1239915 (= (= lt!2180421 lt!2180422) (= lambda!274756 lambda!274755))))

(assert (=> b!5348195 true))

(declare-fun d!1715115 () Bool)

(declare-fun e!3320258 () Bool)

(assert (=> d!1715115 e!3320258))

(declare-fun res!2269175 () Bool)

(assert (=> d!1715115 (=> (not res!2269175) (not e!3320258))))

(assert (=> d!1715115 (= res!2269175 (>= lt!2180421 0))))

(declare-fun e!3320257 () Int)

(assert (=> d!1715115 (= lt!2180421 e!3320257)))

(declare-fun c!930889 () Bool)

(assert (=> d!1715115 (= c!930889 ((_ is Cons!61282) lt!2180385))))

(assert (=> d!1715115 (= (zipperDepth!144 lt!2180385) lt!2180421)))

(assert (=> b!5348193 (= e!3320257 lt!2180422)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!81 (Context!8838) Int)

(assert (=> b!5348193 (= lt!2180422 (maxBigInt!0 (contextDepth!81 (h!67730 lt!2180385)) (zipperDepth!144 (t!374623 lt!2180385))))))

(declare-fun lt!2180420 () Unit!153658)

(declare-fun lambda!274754 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!75 (List!61406 Int Int Int) Unit!153658)

(assert (=> b!5348193 (= lt!2180420 (lemmaForallContextDepthBiggerThanTransitive!75 (t!374623 lt!2180385) lt!2180422 (zipperDepth!144 (t!374623 lt!2180385)) lambda!274754))))

(declare-fun forall!14458 (List!61406 Int) Bool)

(assert (=> b!5348193 (forall!14458 (t!374623 lt!2180385) lambda!274755)))

(declare-fun lt!2180419 () Unit!153658)

(assert (=> b!5348193 (= lt!2180419 lt!2180420)))

(declare-fun b!5348194 () Bool)

(assert (=> b!5348194 (= e!3320257 0)))

(assert (=> b!5348195 (= e!3320258 (forall!14458 lt!2180385 lambda!274756))))

(assert (= (and d!1715115 c!930889) b!5348193))

(assert (= (and d!1715115 (not c!930889)) b!5348194))

(assert (= (and d!1715115 res!2269175) b!5348195))

(declare-fun m!6379706 () Bool)

(assert (=> b!5348193 m!6379706))

(declare-fun m!6379708 () Bool)

(assert (=> b!5348193 m!6379708))

(declare-fun m!6379710 () Bool)

(assert (=> b!5348193 m!6379710))

(declare-fun m!6379712 () Bool)

(assert (=> b!5348193 m!6379712))

(assert (=> b!5348193 m!6379706))

(assert (=> b!5348193 m!6379710))

(declare-fun m!6379714 () Bool)

(assert (=> b!5348193 m!6379714))

(assert (=> b!5348193 m!6379710))

(declare-fun m!6379716 () Bool)

(assert (=> b!5348195 m!6379716))

(assert (=> b!5348131 d!1715115))

(declare-fun bs!1239916 () Bool)

(declare-fun b!5348198 () Bool)

(assert (= bs!1239916 (and b!5348198 b!5348193)))

(declare-fun lambda!274757 () Int)

(assert (=> bs!1239916 (= lambda!274757 lambda!274754)))

(declare-fun lambda!274758 () Int)

(declare-fun lt!2180426 () Int)

(assert (=> bs!1239916 (= (= lt!2180426 lt!2180422) (= lambda!274758 lambda!274755))))

(declare-fun bs!1239917 () Bool)

(assert (= bs!1239917 (and b!5348198 b!5348195)))

(assert (=> bs!1239917 (= (= lt!2180426 lt!2180421) (= lambda!274758 lambda!274756))))

(assert (=> b!5348198 true))

(declare-fun bs!1239918 () Bool)

(declare-fun b!5348200 () Bool)

(assert (= bs!1239918 (and b!5348200 b!5348193)))

(declare-fun lt!2180425 () Int)

(declare-fun lambda!274759 () Int)

(assert (=> bs!1239918 (= (= lt!2180425 lt!2180422) (= lambda!274759 lambda!274755))))

(declare-fun bs!1239919 () Bool)

(assert (= bs!1239919 (and b!5348200 b!5348195)))

(assert (=> bs!1239919 (= (= lt!2180425 lt!2180421) (= lambda!274759 lambda!274756))))

(declare-fun bs!1239920 () Bool)

(assert (= bs!1239920 (and b!5348200 b!5348198)))

(assert (=> bs!1239920 (= (= lt!2180425 lt!2180426) (= lambda!274759 lambda!274758))))

(assert (=> b!5348200 true))

(declare-fun d!1715117 () Bool)

(declare-fun e!3320260 () Bool)

(assert (=> d!1715117 e!3320260))

(declare-fun res!2269176 () Bool)

(assert (=> d!1715117 (=> (not res!2269176) (not e!3320260))))

(assert (=> d!1715117 (= res!2269176 (>= lt!2180425 0))))

(declare-fun e!3320259 () Int)

(assert (=> d!1715117 (= lt!2180425 e!3320259)))

(declare-fun c!930890 () Bool)

(assert (=> d!1715117 (= c!930890 ((_ is Cons!61282) zl!343))))

(assert (=> d!1715117 (= (zipperDepth!144 zl!343) lt!2180425)))

(assert (=> b!5348198 (= e!3320259 lt!2180426)))

(assert (=> b!5348198 (= lt!2180426 (maxBigInt!0 (contextDepth!81 (h!67730 zl!343)) (zipperDepth!144 (t!374623 zl!343))))))

(declare-fun lt!2180424 () Unit!153658)

(assert (=> b!5348198 (= lt!2180424 (lemmaForallContextDepthBiggerThanTransitive!75 (t!374623 zl!343) lt!2180426 (zipperDepth!144 (t!374623 zl!343)) lambda!274757))))

(assert (=> b!5348198 (forall!14458 (t!374623 zl!343) lambda!274758)))

(declare-fun lt!2180423 () Unit!153658)

(assert (=> b!5348198 (= lt!2180423 lt!2180424)))

(declare-fun b!5348199 () Bool)

(assert (=> b!5348199 (= e!3320259 0)))

(assert (=> b!5348200 (= e!3320260 (forall!14458 zl!343 lambda!274759))))

(assert (= (and d!1715117 c!930890) b!5348198))

(assert (= (and d!1715117 (not c!930890)) b!5348199))

(assert (= (and d!1715117 res!2269176) b!5348200))

(declare-fun m!6379718 () Bool)

(assert (=> b!5348198 m!6379718))

(declare-fun m!6379720 () Bool)

(assert (=> b!5348198 m!6379720))

(declare-fun m!6379722 () Bool)

(assert (=> b!5348198 m!6379722))

(declare-fun m!6379724 () Bool)

(assert (=> b!5348198 m!6379724))

(assert (=> b!5348198 m!6379718))

(assert (=> b!5348198 m!6379722))

(declare-fun m!6379726 () Bool)

(assert (=> b!5348198 m!6379726))

(assert (=> b!5348198 m!6379722))

(declare-fun m!6379728 () Bool)

(assert (=> b!5348200 m!6379728))

(assert (=> b!5348131 d!1715117))

(declare-fun d!1715119 () Bool)

(declare-fun c!930893 () Bool)

(declare-fun isEmpty!33257 (List!61405) Bool)

(assert (=> d!1715119 (= c!930893 (isEmpty!33257 (t!374622 s!2326)))))

(declare-fun e!3320263 () Bool)

(assert (=> d!1715119 (= (matchZipper!1279 lt!2180374 (t!374622 s!2326)) e!3320263)))

(declare-fun b!5348205 () Bool)

(declare-fun nullableZipper!1375 ((InoxSet Context!8838)) Bool)

(assert (=> b!5348205 (= e!3320263 (nullableZipper!1375 lt!2180374))))

(declare-fun b!5348206 () Bool)

(declare-fun head!11468 (List!61405) C!30340)

(declare-fun tail!10565 (List!61405) List!61405)

(assert (=> b!5348206 (= e!3320263 (matchZipper!1279 (derivationStepZipper!1276 lt!2180374 (head!11468 (t!374622 s!2326))) (tail!10565 (t!374622 s!2326))))))

(assert (= (and d!1715119 c!930893) b!5348205))

(assert (= (and d!1715119 (not c!930893)) b!5348206))

(declare-fun m!6379730 () Bool)

(assert (=> d!1715119 m!6379730))

(declare-fun m!6379732 () Bool)

(assert (=> b!5348205 m!6379732))

(declare-fun m!6379734 () Bool)

(assert (=> b!5348206 m!6379734))

(assert (=> b!5348206 m!6379734))

(declare-fun m!6379736 () Bool)

(assert (=> b!5348206 m!6379736))

(declare-fun m!6379738 () Bool)

(assert (=> b!5348206 m!6379738))

(assert (=> b!5348206 m!6379736))

(assert (=> b!5348206 m!6379738))

(declare-fun m!6379740 () Bool)

(assert (=> b!5348206 m!6379740))

(assert (=> b!5348111 d!1715119))

(declare-fun d!1715121 () Bool)

(declare-fun lt!2180429 () Regex!15035)

(assert (=> d!1715121 (validRegex!6771 lt!2180429)))

(assert (=> d!1715121 (= lt!2180429 (generalisedUnion!964 (unfocusZipperList!477 zl!343)))))

(assert (=> d!1715121 (= (unfocusZipper!777 zl!343) lt!2180429)))

(declare-fun bs!1239921 () Bool)

(assert (= bs!1239921 d!1715121))

(declare-fun m!6379742 () Bool)

(assert (=> bs!1239921 m!6379742))

(assert (=> bs!1239921 m!6379684))

(assert (=> bs!1239921 m!6379684))

(assert (=> bs!1239921 m!6379686))

(assert (=> b!5348129 d!1715121))

(declare-fun b!5348226 () Bool)

(declare-fun e!3320280 () Bool)

(declare-fun e!3320282 () Bool)

(assert (=> b!5348226 (= e!3320280 e!3320282)))

(declare-fun c!930898 () Bool)

(assert (=> b!5348226 (= c!930898 ((_ is Union!15035) r!7292))))

(declare-fun b!5348227 () Bool)

(declare-fun e!3320283 () Bool)

(assert (=> b!5348227 (= e!3320283 e!3320280)))

(declare-fun c!930899 () Bool)

(assert (=> b!5348227 (= c!930899 ((_ is Star!15035) r!7292))))

(declare-fun b!5348228 () Bool)

(declare-fun res!2269187 () Bool)

(declare-fun e!3320279 () Bool)

(assert (=> b!5348228 (=> (not res!2269187) (not e!3320279))))

(declare-fun call!382300 () Bool)

(assert (=> b!5348228 (= res!2269187 call!382300)))

(assert (=> b!5348228 (= e!3320282 e!3320279)))

(declare-fun bm!382294 () Bool)

(assert (=> bm!382294 (= call!382300 (validRegex!6771 (ite c!930898 (regOne!30583 r!7292) (regOne!30582 r!7292))))))

(declare-fun bm!382295 () Bool)

(declare-fun call!382299 () Bool)

(declare-fun call!382301 () Bool)

(assert (=> bm!382295 (= call!382299 call!382301)))

(declare-fun b!5348229 () Bool)

(declare-fun e!3320278 () Bool)

(declare-fun e!3320284 () Bool)

(assert (=> b!5348229 (= e!3320278 e!3320284)))

(declare-fun res!2269189 () Bool)

(assert (=> b!5348229 (=> (not res!2269189) (not e!3320284))))

(assert (=> b!5348229 (= res!2269189 call!382300)))

(declare-fun b!5348230 () Bool)

(declare-fun e!3320281 () Bool)

(assert (=> b!5348230 (= e!3320281 call!382301)))

(declare-fun b!5348231 () Bool)

(assert (=> b!5348231 (= e!3320279 call!382299)))

(declare-fun b!5348232 () Bool)

(assert (=> b!5348232 (= e!3320280 e!3320281)))

(declare-fun res!2269191 () Bool)

(assert (=> b!5348232 (= res!2269191 (not (nullable!5204 (reg!15364 r!7292))))))

(assert (=> b!5348232 (=> (not res!2269191) (not e!3320281))))

(declare-fun d!1715123 () Bool)

(declare-fun res!2269188 () Bool)

(assert (=> d!1715123 (=> res!2269188 e!3320283)))

(assert (=> d!1715123 (= res!2269188 ((_ is ElementMatch!15035) r!7292))))

(assert (=> d!1715123 (= (validRegex!6771 r!7292) e!3320283)))

(declare-fun b!5348225 () Bool)

(assert (=> b!5348225 (= e!3320284 call!382299)))

(declare-fun bm!382296 () Bool)

(assert (=> bm!382296 (= call!382301 (validRegex!6771 (ite c!930899 (reg!15364 r!7292) (ite c!930898 (regTwo!30583 r!7292) (regTwo!30582 r!7292)))))))

(declare-fun b!5348233 () Bool)

(declare-fun res!2269190 () Bool)

(assert (=> b!5348233 (=> res!2269190 e!3320278)))

(assert (=> b!5348233 (= res!2269190 (not ((_ is Concat!23880) r!7292)))))

(assert (=> b!5348233 (= e!3320282 e!3320278)))

(assert (= (and d!1715123 (not res!2269188)) b!5348227))

(assert (= (and b!5348227 c!930899) b!5348232))

(assert (= (and b!5348227 (not c!930899)) b!5348226))

(assert (= (and b!5348232 res!2269191) b!5348230))

(assert (= (and b!5348226 c!930898) b!5348228))

(assert (= (and b!5348226 (not c!930898)) b!5348233))

(assert (= (and b!5348228 res!2269187) b!5348231))

(assert (= (and b!5348233 (not res!2269190)) b!5348229))

(assert (= (and b!5348229 res!2269189) b!5348225))

(assert (= (or b!5348231 b!5348225) bm!382295))

(assert (= (or b!5348228 b!5348229) bm!382294))

(assert (= (or b!5348230 bm!382295) bm!382296))

(declare-fun m!6379744 () Bool)

(assert (=> bm!382294 m!6379744))

(declare-fun m!6379746 () Bool)

(assert (=> b!5348232 m!6379746))

(declare-fun m!6379748 () Bool)

(assert (=> bm!382296 m!6379748))

(assert (=> start!563238 d!1715123))

(declare-fun d!1715125 () Bool)

(declare-fun lambda!274762 () Int)

(declare-fun forall!14459 (List!61404 Int) Bool)

(assert (=> d!1715125 (= (inv!80834 (h!67730 zl!343)) (forall!14459 (exprs!4919 (h!67730 zl!343)) lambda!274762))))

(declare-fun bs!1239922 () Bool)

(assert (= bs!1239922 d!1715125))

(declare-fun m!6379750 () Bool)

(assert (=> bs!1239922 m!6379750))

(assert (=> b!5348126 d!1715125))

(declare-fun d!1715127 () Bool)

(declare-fun choose!40110 ((InoxSet Context!8838) Int) (InoxSet Context!8838))

(assert (=> d!1715127 (= (flatMap!762 lt!2180396 lambda!274743) (choose!40110 lt!2180396 lambda!274743))))

(declare-fun bs!1239923 () Bool)

(assert (= bs!1239923 d!1715127))

(declare-fun m!6379752 () Bool)

(assert (=> bs!1239923 m!6379752))

(assert (=> b!5348145 d!1715127))

(declare-fun b!5348244 () Bool)

(declare-fun e!3320292 () Bool)

(assert (=> b!5348244 (= e!3320292 (nullable!5204 (h!67728 (exprs!4919 lt!2180386))))))

(declare-fun d!1715129 () Bool)

(declare-fun c!930905 () Bool)

(assert (=> d!1715129 (= c!930905 e!3320292)))

(declare-fun res!2269194 () Bool)

(assert (=> d!1715129 (=> (not res!2269194) (not e!3320292))))

(assert (=> d!1715129 (= res!2269194 ((_ is Cons!61280) (exprs!4919 lt!2180386)))))

(declare-fun e!3320293 () (InoxSet Context!8838))

(assert (=> d!1715129 (= (derivationStepZipperUp!407 lt!2180386 (h!67729 s!2326)) e!3320293)))

(declare-fun b!5348245 () Bool)

(declare-fun call!382304 () (InoxSet Context!8838))

(assert (=> b!5348245 (= e!3320293 ((_ map or) call!382304 (derivationStepZipperUp!407 (Context!8839 (t!374621 (exprs!4919 lt!2180386))) (h!67729 s!2326))))))

(declare-fun b!5348246 () Bool)

(declare-fun e!3320291 () (InoxSet Context!8838))

(assert (=> b!5348246 (= e!3320291 ((as const (Array Context!8838 Bool)) false))))

(declare-fun b!5348247 () Bool)

(assert (=> b!5348247 (= e!3320293 e!3320291)))

(declare-fun c!930904 () Bool)

(assert (=> b!5348247 (= c!930904 ((_ is Cons!61280) (exprs!4919 lt!2180386)))))

(declare-fun b!5348248 () Bool)

(assert (=> b!5348248 (= e!3320291 call!382304)))

(declare-fun bm!382299 () Bool)

(assert (=> bm!382299 (= call!382304 (derivationStepZipperDown!483 (h!67728 (exprs!4919 lt!2180386)) (Context!8839 (t!374621 (exprs!4919 lt!2180386))) (h!67729 s!2326)))))

(assert (= (and d!1715129 res!2269194) b!5348244))

(assert (= (and d!1715129 c!930905) b!5348245))

(assert (= (and d!1715129 (not c!930905)) b!5348247))

(assert (= (and b!5348247 c!930904) b!5348248))

(assert (= (and b!5348247 (not c!930904)) b!5348246))

(assert (= (or b!5348245 b!5348248) bm!382299))

(declare-fun m!6379754 () Bool)

(assert (=> b!5348244 m!6379754))

(declare-fun m!6379756 () Bool)

(assert (=> b!5348245 m!6379756))

(declare-fun m!6379758 () Bool)

(assert (=> bm!382299 m!6379758))

(assert (=> b!5348145 d!1715129))

(declare-fun d!1715131 () Bool)

(declare-fun dynLambda!24224 (Int Context!8838) (InoxSet Context!8838))

(assert (=> d!1715131 (= (flatMap!762 lt!2180396 lambda!274743) (dynLambda!24224 lambda!274743 lt!2180386))))

(declare-fun lt!2180432 () Unit!153658)

(declare-fun choose!40111 ((InoxSet Context!8838) Context!8838 Int) Unit!153658)

(assert (=> d!1715131 (= lt!2180432 (choose!40111 lt!2180396 lt!2180386 lambda!274743))))

(assert (=> d!1715131 (= lt!2180396 (store ((as const (Array Context!8838 Bool)) false) lt!2180386 true))))

(assert (=> d!1715131 (= (lemmaFlatMapOnSingletonSet!294 lt!2180396 lt!2180386 lambda!274743) lt!2180432)))

(declare-fun b_lambda!205293 () Bool)

(assert (=> (not b_lambda!205293) (not d!1715131)))

(declare-fun bs!1239924 () Bool)

(assert (= bs!1239924 d!1715131))

(assert (=> bs!1239924 m!6379576))

(declare-fun m!6379760 () Bool)

(assert (=> bs!1239924 m!6379760))

(declare-fun m!6379762 () Bool)

(assert (=> bs!1239924 m!6379762))

(assert (=> bs!1239924 m!6379578))

(assert (=> b!5348145 d!1715131))

(declare-fun bs!1239925 () Bool)

(declare-fun d!1715133 () Bool)

(assert (= bs!1239925 (and d!1715133 b!5348141)))

(declare-fun lambda!274765 () Int)

(assert (=> bs!1239925 (= lambda!274765 lambda!274743)))

(assert (=> d!1715133 true))

(assert (=> d!1715133 (= (derivationStepZipper!1276 lt!2180396 (h!67729 s!2326)) (flatMap!762 lt!2180396 lambda!274765))))

(declare-fun bs!1239926 () Bool)

(assert (= bs!1239926 d!1715133))

(declare-fun m!6379764 () Bool)

(assert (=> bs!1239926 m!6379764))

(assert (=> b!5348145 d!1715133))

(declare-fun bs!1239927 () Bool)

(declare-fun b!5348285 () Bool)

(assert (= bs!1239927 (and b!5348285 b!5348119)))

(declare-fun lambda!274770 () Int)

(assert (=> bs!1239927 (not (= lambda!274770 lambda!274746))))

(assert (=> bs!1239927 (not (= lambda!274770 lambda!274744))))

(declare-fun bs!1239928 () Bool)

(assert (= bs!1239928 (and b!5348285 b!5348124)))

(assert (=> bs!1239928 (not (= lambda!274770 lambda!274741))))

(assert (=> bs!1239928 (not (= lambda!274770 lambda!274742))))

(assert (=> bs!1239927 (not (= lambda!274770 lambda!274745))))

(assert (=> bs!1239927 (not (= lambda!274770 lambda!274747))))

(assert (=> b!5348285 true))

(assert (=> b!5348285 true))

(declare-fun bs!1239929 () Bool)

(declare-fun b!5348288 () Bool)

(assert (= bs!1239929 (and b!5348288 b!5348119)))

(declare-fun lambda!274771 () Int)

(assert (=> bs!1239929 (not (= lambda!274771 lambda!274746))))

(assert (=> bs!1239929 (not (= lambda!274771 lambda!274744))))

(declare-fun bs!1239930 () Bool)

(assert (= bs!1239930 (and b!5348288 b!5348124)))

(assert (=> bs!1239930 (not (= lambda!274771 lambda!274741))))

(assert (=> bs!1239930 (= lambda!274771 lambda!274742)))

(assert (=> bs!1239929 (= (and (= (regOne!30582 r!7292) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180408)) (= lambda!274771 lambda!274745))))

(declare-fun bs!1239931 () Bool)

(assert (= bs!1239931 (and b!5348288 b!5348285)))

(assert (=> bs!1239931 (not (= lambda!274771 lambda!274770))))

(assert (=> bs!1239929 (= (and (= (regOne!30582 r!7292) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180400)) (= lambda!274771 lambda!274747))))

(assert (=> b!5348288 true))

(assert (=> b!5348288 true))

(declare-fun b!5348283 () Bool)

(declare-fun res!2269213 () Bool)

(declare-fun e!3320314 () Bool)

(assert (=> b!5348283 (=> res!2269213 e!3320314)))

(declare-fun call!382309 () Bool)

(assert (=> b!5348283 (= res!2269213 call!382309)))

(declare-fun e!3320317 () Bool)

(assert (=> b!5348283 (= e!3320317 e!3320314)))

(declare-fun b!5348284 () Bool)

(declare-fun e!3320315 () Bool)

(assert (=> b!5348284 (= e!3320315 (matchRSpec!2138 (regTwo!30583 r!7292) s!2326))))

(declare-fun call!382310 () Bool)

(assert (=> b!5348285 (= e!3320314 call!382310)))

(declare-fun bm!382304 () Bool)

(declare-fun c!930919 () Bool)

(assert (=> bm!382304 (= call!382310 (Exists!2216 (ite c!930919 lambda!274770 lambda!274771)))))

(declare-fun b!5348286 () Bool)

(declare-fun c!930917 () Bool)

(assert (=> b!5348286 (= c!930917 ((_ is ElementMatch!15035) r!7292))))

(declare-fun e!3320313 () Bool)

(declare-fun e!3320312 () Bool)

(assert (=> b!5348286 (= e!3320313 e!3320312)))

(declare-fun d!1715135 () Bool)

(declare-fun c!930918 () Bool)

(assert (=> d!1715135 (= c!930918 ((_ is EmptyExpr!15035) r!7292))))

(declare-fun e!3320318 () Bool)

(assert (=> d!1715135 (= (matchRSpec!2138 r!7292 s!2326) e!3320318)))

(declare-fun b!5348287 () Bool)

(declare-fun e!3320316 () Bool)

(assert (=> b!5348287 (= e!3320316 e!3320315)))

(declare-fun res!2269211 () Bool)

(assert (=> b!5348287 (= res!2269211 (matchRSpec!2138 (regOne!30583 r!7292) s!2326))))

(assert (=> b!5348287 (=> res!2269211 e!3320315)))

(assert (=> b!5348288 (= e!3320317 call!382310)))

(declare-fun b!5348289 () Bool)

(assert (=> b!5348289 (= e!3320318 e!3320313)))

(declare-fun res!2269212 () Bool)

(assert (=> b!5348289 (= res!2269212 (not ((_ is EmptyLang!15035) r!7292)))))

(assert (=> b!5348289 (=> (not res!2269212) (not e!3320313))))

(declare-fun b!5348290 () Bool)

(assert (=> b!5348290 (= e!3320316 e!3320317)))

(assert (=> b!5348290 (= c!930919 ((_ is Star!15035) r!7292))))

(declare-fun bm!382305 () Bool)

(assert (=> bm!382305 (= call!382309 (isEmpty!33257 s!2326))))

(declare-fun b!5348291 () Bool)

(assert (=> b!5348291 (= e!3320312 (= s!2326 (Cons!61281 (c!930865 r!7292) Nil!61281)))))

(declare-fun b!5348292 () Bool)

(declare-fun c!930916 () Bool)

(assert (=> b!5348292 (= c!930916 ((_ is Union!15035) r!7292))))

(assert (=> b!5348292 (= e!3320312 e!3320316)))

(declare-fun b!5348293 () Bool)

(assert (=> b!5348293 (= e!3320318 call!382309)))

(assert (= (and d!1715135 c!930918) b!5348293))

(assert (= (and d!1715135 (not c!930918)) b!5348289))

(assert (= (and b!5348289 res!2269212) b!5348286))

(assert (= (and b!5348286 c!930917) b!5348291))

(assert (= (and b!5348286 (not c!930917)) b!5348292))

(assert (= (and b!5348292 c!930916) b!5348287))

(assert (= (and b!5348292 (not c!930916)) b!5348290))

(assert (= (and b!5348287 (not res!2269211)) b!5348284))

(assert (= (and b!5348290 c!930919) b!5348283))

(assert (= (and b!5348290 (not c!930919)) b!5348288))

(assert (= (and b!5348283 (not res!2269213)) b!5348285))

(assert (= (or b!5348285 b!5348288) bm!382304))

(assert (= (or b!5348293 b!5348283) bm!382305))

(declare-fun m!6379766 () Bool)

(assert (=> b!5348284 m!6379766))

(declare-fun m!6379768 () Bool)

(assert (=> bm!382304 m!6379768))

(declare-fun m!6379770 () Bool)

(assert (=> b!5348287 m!6379770))

(declare-fun m!6379772 () Bool)

(assert (=> bm!382305 m!6379772))

(assert (=> b!5348147 d!1715135))

(declare-fun b!5348356 () Bool)

(declare-fun res!2269247 () Bool)

(declare-fun e!3320354 () Bool)

(assert (=> b!5348356 (=> res!2269247 e!3320354)))

(assert (=> b!5348356 (= res!2269247 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715141 () Bool)

(declare-fun e!3320355 () Bool)

(assert (=> d!1715141 e!3320355))

(declare-fun c!930936 () Bool)

(assert (=> d!1715141 (= c!930936 ((_ is EmptyExpr!15035) r!7292))))

(declare-fun lt!2180437 () Bool)

(declare-fun e!3320353 () Bool)

(assert (=> d!1715141 (= lt!2180437 e!3320353)))

(declare-fun c!930937 () Bool)

(assert (=> d!1715141 (= c!930937 (isEmpty!33257 s!2326))))

(assert (=> d!1715141 (validRegex!6771 r!7292)))

(assert (=> d!1715141 (= (matchR!7220 r!7292 s!2326) lt!2180437)))

(declare-fun b!5348357 () Bool)

(declare-fun derivativeStep!4197 (Regex!15035 C!30340) Regex!15035)

(assert (=> b!5348357 (= e!3320353 (matchR!7220 (derivativeStep!4197 r!7292 (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5348358 () Bool)

(declare-fun e!3320351 () Bool)

(assert (=> b!5348358 (= e!3320351 (= (head!11468 s!2326) (c!930865 r!7292)))))

(declare-fun b!5348359 () Bool)

(assert (=> b!5348359 (= e!3320354 (not (= (head!11468 s!2326) (c!930865 r!7292))))))

(declare-fun b!5348360 () Bool)

(declare-fun res!2269251 () Bool)

(assert (=> b!5348360 (=> (not res!2269251) (not e!3320351))))

(assert (=> b!5348360 (= res!2269251 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5348361 () Bool)

(assert (=> b!5348361 (= e!3320353 (nullable!5204 r!7292))))

(declare-fun b!5348362 () Bool)

(declare-fun res!2269248 () Bool)

(declare-fun e!3320356 () Bool)

(assert (=> b!5348362 (=> res!2269248 e!3320356)))

(assert (=> b!5348362 (= res!2269248 (not ((_ is ElementMatch!15035) r!7292)))))

(declare-fun e!3320350 () Bool)

(assert (=> b!5348362 (= e!3320350 e!3320356)))

(declare-fun b!5348363 () Bool)

(assert (=> b!5348363 (= e!3320350 (not lt!2180437))))

(declare-fun b!5348364 () Bool)

(declare-fun res!2269250 () Bool)

(assert (=> b!5348364 (=> res!2269250 e!3320356)))

(assert (=> b!5348364 (= res!2269250 e!3320351)))

(declare-fun res!2269246 () Bool)

(assert (=> b!5348364 (=> (not res!2269246) (not e!3320351))))

(assert (=> b!5348364 (= res!2269246 lt!2180437)))

(declare-fun b!5348365 () Bool)

(declare-fun call!382315 () Bool)

(assert (=> b!5348365 (= e!3320355 (= lt!2180437 call!382315))))

(declare-fun b!5348366 () Bool)

(declare-fun e!3320352 () Bool)

(assert (=> b!5348366 (= e!3320352 e!3320354)))

(declare-fun res!2269252 () Bool)

(assert (=> b!5348366 (=> res!2269252 e!3320354)))

(assert (=> b!5348366 (= res!2269252 call!382315)))

(declare-fun b!5348367 () Bool)

(assert (=> b!5348367 (= e!3320355 e!3320350)))

(declare-fun c!930935 () Bool)

(assert (=> b!5348367 (= c!930935 ((_ is EmptyLang!15035) r!7292))))

(declare-fun b!5348368 () Bool)

(assert (=> b!5348368 (= e!3320356 e!3320352)))

(declare-fun res!2269249 () Bool)

(assert (=> b!5348368 (=> (not res!2269249) (not e!3320352))))

(assert (=> b!5348368 (= res!2269249 (not lt!2180437))))

(declare-fun b!5348369 () Bool)

(declare-fun res!2269253 () Bool)

(assert (=> b!5348369 (=> (not res!2269253) (not e!3320351))))

(assert (=> b!5348369 (= res!2269253 (not call!382315))))

(declare-fun bm!382310 () Bool)

(assert (=> bm!382310 (= call!382315 (isEmpty!33257 s!2326))))

(assert (= (and d!1715141 c!930937) b!5348361))

(assert (= (and d!1715141 (not c!930937)) b!5348357))

(assert (= (and d!1715141 c!930936) b!5348365))

(assert (= (and d!1715141 (not c!930936)) b!5348367))

(assert (= (and b!5348367 c!930935) b!5348363))

(assert (= (and b!5348367 (not c!930935)) b!5348362))

(assert (= (and b!5348362 (not res!2269248)) b!5348364))

(assert (= (and b!5348364 res!2269246) b!5348369))

(assert (= (and b!5348369 res!2269253) b!5348360))

(assert (= (and b!5348360 res!2269251) b!5348358))

(assert (= (and b!5348364 (not res!2269250)) b!5348368))

(assert (= (and b!5348368 res!2269249) b!5348366))

(assert (= (and b!5348366 (not res!2269252)) b!5348356))

(assert (= (and b!5348356 (not res!2269247)) b!5348359))

(assert (= (or b!5348365 b!5348369 b!5348366) bm!382310))

(declare-fun m!6379786 () Bool)

(assert (=> b!5348358 m!6379786))

(assert (=> b!5348357 m!6379786))

(assert (=> b!5348357 m!6379786))

(declare-fun m!6379788 () Bool)

(assert (=> b!5348357 m!6379788))

(declare-fun m!6379790 () Bool)

(assert (=> b!5348357 m!6379790))

(assert (=> b!5348357 m!6379788))

(assert (=> b!5348357 m!6379790))

(declare-fun m!6379792 () Bool)

(assert (=> b!5348357 m!6379792))

(assert (=> b!5348360 m!6379790))

(assert (=> b!5348360 m!6379790))

(declare-fun m!6379794 () Bool)

(assert (=> b!5348360 m!6379794))

(assert (=> bm!382310 m!6379772))

(assert (=> b!5348359 m!6379786))

(declare-fun m!6379796 () Bool)

(assert (=> b!5348361 m!6379796))

(assert (=> d!1715141 m!6379772))

(assert (=> d!1715141 m!6379548))

(assert (=> b!5348356 m!6379790))

(assert (=> b!5348356 m!6379790))

(assert (=> b!5348356 m!6379794))

(assert (=> b!5348147 d!1715141))

(declare-fun d!1715145 () Bool)

(assert (=> d!1715145 (= (matchR!7220 r!7292 s!2326) (matchRSpec!2138 r!7292 s!2326))))

(declare-fun lt!2180441 () Unit!153658)

(declare-fun choose!40112 (Regex!15035 List!61405) Unit!153658)

(assert (=> d!1715145 (= lt!2180441 (choose!40112 r!7292 s!2326))))

(assert (=> d!1715145 (validRegex!6771 r!7292)))

(assert (=> d!1715145 (= (mainMatchTheorem!2138 r!7292 s!2326) lt!2180441)))

(declare-fun bs!1239932 () Bool)

(assert (= bs!1239932 d!1715145))

(assert (=> bs!1239932 m!6379664))

(assert (=> bs!1239932 m!6379662))

(declare-fun m!6379814 () Bool)

(assert (=> bs!1239932 m!6379814))

(assert (=> bs!1239932 m!6379548))

(assert (=> b!5348147 d!1715145))

(declare-fun b!5348384 () Bool)

(declare-fun res!2269263 () Bool)

(declare-fun e!3320368 () Bool)

(assert (=> b!5348384 (=> res!2269263 e!3320368)))

(assert (=> b!5348384 (= res!2269263 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715149 () Bool)

(declare-fun e!3320369 () Bool)

(assert (=> d!1715149 e!3320369))

(declare-fun c!930942 () Bool)

(assert (=> d!1715149 (= c!930942 ((_ is EmptyExpr!15035) lt!2180395))))

(declare-fun lt!2180442 () Bool)

(declare-fun e!3320367 () Bool)

(assert (=> d!1715149 (= lt!2180442 e!3320367)))

(declare-fun c!930943 () Bool)

(assert (=> d!1715149 (= c!930943 (isEmpty!33257 s!2326))))

(assert (=> d!1715149 (validRegex!6771 lt!2180395)))

(assert (=> d!1715149 (= (matchR!7220 lt!2180395 s!2326) lt!2180442)))

(declare-fun b!5348385 () Bool)

(assert (=> b!5348385 (= e!3320367 (matchR!7220 (derivativeStep!4197 lt!2180395 (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5348386 () Bool)

(declare-fun e!3320365 () Bool)

(assert (=> b!5348386 (= e!3320365 (= (head!11468 s!2326) (c!930865 lt!2180395)))))

(declare-fun b!5348387 () Bool)

(assert (=> b!5348387 (= e!3320368 (not (= (head!11468 s!2326) (c!930865 lt!2180395))))))

(declare-fun b!5348388 () Bool)

(declare-fun res!2269267 () Bool)

(assert (=> b!5348388 (=> (not res!2269267) (not e!3320365))))

(assert (=> b!5348388 (= res!2269267 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5348389 () Bool)

(assert (=> b!5348389 (= e!3320367 (nullable!5204 lt!2180395))))

(declare-fun b!5348390 () Bool)

(declare-fun res!2269264 () Bool)

(declare-fun e!3320370 () Bool)

(assert (=> b!5348390 (=> res!2269264 e!3320370)))

(assert (=> b!5348390 (= res!2269264 (not ((_ is ElementMatch!15035) lt!2180395)))))

(declare-fun e!3320364 () Bool)

(assert (=> b!5348390 (= e!3320364 e!3320370)))

(declare-fun b!5348391 () Bool)

(assert (=> b!5348391 (= e!3320364 (not lt!2180442))))

(declare-fun b!5348392 () Bool)

(declare-fun res!2269266 () Bool)

(assert (=> b!5348392 (=> res!2269266 e!3320370)))

(assert (=> b!5348392 (= res!2269266 e!3320365)))

(declare-fun res!2269262 () Bool)

(assert (=> b!5348392 (=> (not res!2269262) (not e!3320365))))

(assert (=> b!5348392 (= res!2269262 lt!2180442)))

(declare-fun b!5348393 () Bool)

(declare-fun call!382317 () Bool)

(assert (=> b!5348393 (= e!3320369 (= lt!2180442 call!382317))))

(declare-fun b!5348394 () Bool)

(declare-fun e!3320366 () Bool)

(assert (=> b!5348394 (= e!3320366 e!3320368)))

(declare-fun res!2269268 () Bool)

(assert (=> b!5348394 (=> res!2269268 e!3320368)))

(assert (=> b!5348394 (= res!2269268 call!382317)))

(declare-fun b!5348395 () Bool)

(assert (=> b!5348395 (= e!3320369 e!3320364)))

(declare-fun c!930941 () Bool)

(assert (=> b!5348395 (= c!930941 ((_ is EmptyLang!15035) lt!2180395))))

(declare-fun b!5348396 () Bool)

(assert (=> b!5348396 (= e!3320370 e!3320366)))

(declare-fun res!2269265 () Bool)

(assert (=> b!5348396 (=> (not res!2269265) (not e!3320366))))

(assert (=> b!5348396 (= res!2269265 (not lt!2180442))))

(declare-fun b!5348397 () Bool)

(declare-fun res!2269269 () Bool)

(assert (=> b!5348397 (=> (not res!2269269) (not e!3320365))))

(assert (=> b!5348397 (= res!2269269 (not call!382317))))

(declare-fun bm!382312 () Bool)

(assert (=> bm!382312 (= call!382317 (isEmpty!33257 s!2326))))

(assert (= (and d!1715149 c!930943) b!5348389))

(assert (= (and d!1715149 (not c!930943)) b!5348385))

(assert (= (and d!1715149 c!930942) b!5348393))

(assert (= (and d!1715149 (not c!930942)) b!5348395))

(assert (= (and b!5348395 c!930941) b!5348391))

(assert (= (and b!5348395 (not c!930941)) b!5348390))

(assert (= (and b!5348390 (not res!2269264)) b!5348392))

(assert (= (and b!5348392 res!2269262) b!5348397))

(assert (= (and b!5348397 res!2269269) b!5348388))

(assert (= (and b!5348388 res!2269267) b!5348386))

(assert (= (and b!5348392 (not res!2269266)) b!5348396))

(assert (= (and b!5348396 res!2269265) b!5348394))

(assert (= (and b!5348394 (not res!2269268)) b!5348384))

(assert (= (and b!5348384 (not res!2269263)) b!5348387))

(assert (= (or b!5348393 b!5348397 b!5348394) bm!382312))

(assert (=> b!5348386 m!6379786))

(assert (=> b!5348385 m!6379786))

(assert (=> b!5348385 m!6379786))

(declare-fun m!6379816 () Bool)

(assert (=> b!5348385 m!6379816))

(assert (=> b!5348385 m!6379790))

(assert (=> b!5348385 m!6379816))

(assert (=> b!5348385 m!6379790))

(declare-fun m!6379818 () Bool)

(assert (=> b!5348385 m!6379818))

(assert (=> b!5348388 m!6379790))

(assert (=> b!5348388 m!6379790))

(assert (=> b!5348388 m!6379794))

(assert (=> bm!382312 m!6379772))

(assert (=> b!5348387 m!6379786))

(declare-fun m!6379820 () Bool)

(assert (=> b!5348389 m!6379820))

(assert (=> d!1715149 m!6379772))

(assert (=> d!1715149 m!6379606))

(assert (=> b!5348384 m!6379790))

(assert (=> b!5348384 m!6379790))

(assert (=> b!5348384 m!6379794))

(assert (=> b!5348127 d!1715149))

(declare-fun d!1715151 () Bool)

(assert (=> d!1715151 (= (isEmpty!33256 (t!374623 zl!343)) ((_ is Nil!61282) (t!374623 zl!343)))))

(assert (=> b!5348142 d!1715151))

(declare-fun b!5348473 () Bool)

(declare-fun res!2269307 () Bool)

(declare-fun e!3320417 () Bool)

(assert (=> b!5348473 (=> (not res!2269307) (not e!3320417))))

(declare-fun lt!2180450 () Option!15146)

(declare-fun get!21078 (Option!15146) tuple2!64468)

(assert (=> b!5348473 (= res!2269307 (matchR!7220 (regOne!30582 r!7292) (_1!35537 (get!21078 lt!2180450))))))

(declare-fun b!5348474 () Bool)

(declare-fun e!3320416 () Bool)

(assert (=> b!5348474 (= e!3320416 (not (isDefined!11849 lt!2180450)))))

(declare-fun b!5348475 () Bool)

(declare-fun res!2269309 () Bool)

(assert (=> b!5348475 (=> (not res!2269309) (not e!3320417))))

(assert (=> b!5348475 (= res!2269309 (matchR!7220 (regTwo!30582 r!7292) (_2!35537 (get!21078 lt!2180450))))))

(declare-fun b!5348476 () Bool)

(declare-fun e!3320413 () Option!15146)

(assert (=> b!5348476 (= e!3320413 (Some!15145 (tuple2!64469 Nil!61281 s!2326)))))

(declare-fun d!1715153 () Bool)

(assert (=> d!1715153 e!3320416))

(declare-fun res!2269310 () Bool)

(assert (=> d!1715153 (=> res!2269310 e!3320416)))

(assert (=> d!1715153 (= res!2269310 e!3320417)))

(declare-fun res!2269308 () Bool)

(assert (=> d!1715153 (=> (not res!2269308) (not e!3320417))))

(assert (=> d!1715153 (= res!2269308 (isDefined!11849 lt!2180450))))

(assert (=> d!1715153 (= lt!2180450 e!3320413)))

(declare-fun c!930964 () Bool)

(declare-fun e!3320415 () Bool)

(assert (=> d!1715153 (= c!930964 e!3320415)))

(declare-fun res!2269311 () Bool)

(assert (=> d!1715153 (=> (not res!2269311) (not e!3320415))))

(assert (=> d!1715153 (= res!2269311 (matchR!7220 (regOne!30582 r!7292) Nil!61281))))

(assert (=> d!1715153 (validRegex!6771 (regOne!30582 r!7292))))

(assert (=> d!1715153 (= (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) Nil!61281 s!2326 s!2326) lt!2180450)))

(declare-fun b!5348477 () Bool)

(assert (=> b!5348477 (= e!3320415 (matchR!7220 (regTwo!30582 r!7292) s!2326))))

(declare-fun b!5348478 () Bool)

(declare-fun lt!2180452 () Unit!153658)

(declare-fun lt!2180451 () Unit!153658)

(assert (=> b!5348478 (= lt!2180452 lt!2180451)))

(declare-fun ++!13355 (List!61405 List!61405) List!61405)

(assert (=> b!5348478 (= (++!13355 (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1770 (List!61405 C!30340 List!61405 List!61405) Unit!153658)

(assert (=> b!5348478 (= lt!2180451 (lemmaMoveElementToOtherListKeepsConcatEq!1770 Nil!61281 (h!67729 s!2326) (t!374622 s!2326) s!2326))))

(declare-fun e!3320414 () Option!15146)

(assert (=> b!5348478 (= e!3320414 (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326) s!2326))))

(declare-fun b!5348479 () Bool)

(assert (=> b!5348479 (= e!3320413 e!3320414)))

(declare-fun c!930963 () Bool)

(assert (=> b!5348479 (= c!930963 ((_ is Nil!61281) s!2326))))

(declare-fun b!5348480 () Bool)

(assert (=> b!5348480 (= e!3320417 (= (++!13355 (_1!35537 (get!21078 lt!2180450)) (_2!35537 (get!21078 lt!2180450))) s!2326))))

(declare-fun b!5348481 () Bool)

(assert (=> b!5348481 (= e!3320414 None!15145)))

(assert (= (and d!1715153 res!2269311) b!5348477))

(assert (= (and d!1715153 c!930964) b!5348476))

(assert (= (and d!1715153 (not c!930964)) b!5348479))

(assert (= (and b!5348479 c!930963) b!5348481))

(assert (= (and b!5348479 (not c!930963)) b!5348478))

(assert (= (and d!1715153 res!2269308) b!5348473))

(assert (= (and b!5348473 res!2269307) b!5348475))

(assert (= (and b!5348475 res!2269309) b!5348480))

(assert (= (and d!1715153 (not res!2269310)) b!5348474))

(declare-fun m!6379834 () Bool)

(assert (=> b!5348478 m!6379834))

(assert (=> b!5348478 m!6379834))

(declare-fun m!6379836 () Bool)

(assert (=> b!5348478 m!6379836))

(declare-fun m!6379838 () Bool)

(assert (=> b!5348478 m!6379838))

(assert (=> b!5348478 m!6379834))

(declare-fun m!6379840 () Bool)

(assert (=> b!5348478 m!6379840))

(declare-fun m!6379842 () Bool)

(assert (=> b!5348477 m!6379842))

(declare-fun m!6379844 () Bool)

(assert (=> b!5348475 m!6379844))

(declare-fun m!6379846 () Bool)

(assert (=> b!5348475 m!6379846))

(declare-fun m!6379848 () Bool)

(assert (=> b!5348474 m!6379848))

(assert (=> b!5348473 m!6379844))

(declare-fun m!6379850 () Bool)

(assert (=> b!5348473 m!6379850))

(assert (=> d!1715153 m!6379848))

(declare-fun m!6379852 () Bool)

(assert (=> d!1715153 m!6379852))

(declare-fun m!6379854 () Bool)

(assert (=> d!1715153 m!6379854))

(assert (=> b!5348480 m!6379844))

(declare-fun m!6379856 () Bool)

(assert (=> b!5348480 m!6379856))

(assert (=> b!5348124 d!1715153))

(declare-fun d!1715159 () Bool)

(declare-fun choose!40113 (Int) Bool)

(assert (=> d!1715159 (= (Exists!2216 lambda!274742) (choose!40113 lambda!274742))))

(declare-fun bs!1239938 () Bool)

(assert (= bs!1239938 d!1715159))

(declare-fun m!6379858 () Bool)

(assert (=> bs!1239938 m!6379858))

(assert (=> b!5348124 d!1715159))

(declare-fun d!1715161 () Bool)

(assert (=> d!1715161 (= (Exists!2216 lambda!274741) (choose!40113 lambda!274741))))

(declare-fun bs!1239939 () Bool)

(assert (= bs!1239939 d!1715161))

(declare-fun m!6379860 () Bool)

(assert (=> bs!1239939 m!6379860))

(assert (=> b!5348124 d!1715161))

(declare-fun bs!1239941 () Bool)

(declare-fun d!1715163 () Bool)

(assert (= bs!1239941 (and d!1715163 b!5348119)))

(declare-fun lambda!274780 () Int)

(assert (=> bs!1239941 (= (and (= (regOne!30582 r!7292) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180408)) (= lambda!274780 lambda!274744))))

(declare-fun bs!1239942 () Bool)

(assert (= bs!1239942 (and d!1715163 b!5348124)))

(assert (=> bs!1239942 (= lambda!274780 lambda!274741)))

(assert (=> bs!1239942 (not (= lambda!274780 lambda!274742))))

(assert (=> bs!1239941 (not (= lambda!274780 lambda!274745))))

(declare-fun bs!1239943 () Bool)

(assert (= bs!1239943 (and d!1715163 b!5348285)))

(assert (=> bs!1239943 (not (= lambda!274780 lambda!274770))))

(assert (=> bs!1239941 (not (= lambda!274780 lambda!274747))))

(declare-fun bs!1239944 () Bool)

(assert (= bs!1239944 (and d!1715163 b!5348288)))

(assert (=> bs!1239944 (not (= lambda!274780 lambda!274771))))

(assert (=> bs!1239941 (= (and (= (regOne!30582 r!7292) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180400)) (= lambda!274780 lambda!274746))))

(assert (=> d!1715163 true))

(assert (=> d!1715163 true))

(assert (=> d!1715163 true))

(assert (=> d!1715163 (= (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) Nil!61281 s!2326 s!2326)) (Exists!2216 lambda!274780))))

(declare-fun lt!2180458 () Unit!153658)

(declare-fun choose!40115 (Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> d!1715163 (= lt!2180458 (choose!40115 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326))))

(assert (=> d!1715163 (validRegex!6771 (regOne!30582 r!7292))))

(assert (=> d!1715163 (= (lemmaFindConcatSeparationEquivalentToExists!1324 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326) lt!2180458)))

(declare-fun bs!1239945 () Bool)

(assert (= bs!1239945 d!1715163))

(assert (=> bs!1239945 m!6379588))

(assert (=> bs!1239945 m!6379590))

(declare-fun m!6379864 () Bool)

(assert (=> bs!1239945 m!6379864))

(assert (=> bs!1239945 m!6379588))

(assert (=> bs!1239945 m!6379854))

(declare-fun m!6379866 () Bool)

(assert (=> bs!1239945 m!6379866))

(assert (=> b!5348124 d!1715163))

(declare-fun bs!1239947 () Bool)

(declare-fun d!1715167 () Bool)

(assert (= bs!1239947 (and d!1715167 b!5348119)))

(declare-fun lambda!274788 () Int)

(assert (=> bs!1239947 (= (and (= (regOne!30582 r!7292) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180408)) (= lambda!274788 lambda!274744))))

(declare-fun bs!1239948 () Bool)

(assert (= bs!1239948 (and d!1715167 d!1715163)))

(assert (=> bs!1239948 (= lambda!274788 lambda!274780)))

(declare-fun bs!1239949 () Bool)

(assert (= bs!1239949 (and d!1715167 b!5348124)))

(assert (=> bs!1239949 (= lambda!274788 lambda!274741)))

(assert (=> bs!1239949 (not (= lambda!274788 lambda!274742))))

(assert (=> bs!1239947 (not (= lambda!274788 lambda!274745))))

(declare-fun bs!1239950 () Bool)

(assert (= bs!1239950 (and d!1715167 b!5348285)))

(assert (=> bs!1239950 (not (= lambda!274788 lambda!274770))))

(assert (=> bs!1239947 (not (= lambda!274788 lambda!274747))))

(declare-fun bs!1239951 () Bool)

(assert (= bs!1239951 (and d!1715167 b!5348288)))

(assert (=> bs!1239951 (not (= lambda!274788 lambda!274771))))

(assert (=> bs!1239947 (= (and (= (regOne!30582 r!7292) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180400)) (= lambda!274788 lambda!274746))))

(assert (=> d!1715167 true))

(assert (=> d!1715167 true))

(assert (=> d!1715167 true))

(declare-fun lambda!274789 () Int)

(assert (=> bs!1239947 (not (= lambda!274789 lambda!274744))))

(assert (=> bs!1239948 (not (= lambda!274789 lambda!274780))))

(assert (=> bs!1239949 (not (= lambda!274789 lambda!274741))))

(assert (=> bs!1239949 (= lambda!274789 lambda!274742)))

(assert (=> bs!1239947 (= (and (= (regOne!30582 r!7292) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180408)) (= lambda!274789 lambda!274745))))

(assert (=> bs!1239950 (not (= lambda!274789 lambda!274770))))

(assert (=> bs!1239947 (= (and (= (regOne!30582 r!7292) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 r!7292) lt!2180400)) (= lambda!274789 lambda!274747))))

(declare-fun bs!1239952 () Bool)

(assert (= bs!1239952 d!1715167))

(assert (=> bs!1239952 (not (= lambda!274789 lambda!274788))))

(assert (=> bs!1239951 (= lambda!274789 lambda!274771)))

(assert (=> bs!1239947 (not (= lambda!274789 lambda!274746))))

(assert (=> d!1715167 true))

(assert (=> d!1715167 true))

(assert (=> d!1715167 true))

(assert (=> d!1715167 (= (Exists!2216 lambda!274788) (Exists!2216 lambda!274789))))

(declare-fun lt!2180462 () Unit!153658)

(declare-fun choose!40116 (Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> d!1715167 (= lt!2180462 (choose!40116 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326))))

(assert (=> d!1715167 (validRegex!6771 (regOne!30582 r!7292))))

(assert (=> d!1715167 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regOne!30582 r!7292) (regTwo!30582 r!7292) s!2326) lt!2180462)))

(declare-fun m!6379898 () Bool)

(assert (=> bs!1239952 m!6379898))

(declare-fun m!6379900 () Bool)

(assert (=> bs!1239952 m!6379900))

(declare-fun m!6379902 () Bool)

(assert (=> bs!1239952 m!6379902))

(assert (=> bs!1239952 m!6379854))

(assert (=> b!5348124 d!1715167))

(declare-fun d!1715179 () Bool)

(declare-fun isEmpty!33259 (Option!15146) Bool)

(assert (=> d!1715179 (= (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) Nil!61281 s!2326 s!2326)) (not (isEmpty!33259 (findConcatSeparation!1560 (regOne!30582 r!7292) (regTwo!30582 r!7292) Nil!61281 s!2326 s!2326))))))

(declare-fun bs!1239953 () Bool)

(assert (= bs!1239953 d!1715179))

(assert (=> bs!1239953 m!6379588))

(declare-fun m!6379904 () Bool)

(assert (=> bs!1239953 m!6379904))

(assert (=> b!5348124 d!1715179))

(declare-fun d!1715181 () Bool)

(declare-fun lt!2180473 () Int)

(assert (=> d!1715181 (>= lt!2180473 0)))

(declare-fun e!3320457 () Int)

(assert (=> d!1715181 (= lt!2180473 e!3320457)))

(declare-fun c!930995 () Bool)

(assert (=> d!1715181 (= c!930995 ((_ is Cons!61282) lt!2180385))))

(assert (=> d!1715181 (= (zipperDepthTotal!188 lt!2180385) lt!2180473)))

(declare-fun b!5348555 () Bool)

(assert (=> b!5348555 (= e!3320457 (+ (contextDepthTotal!168 (h!67730 lt!2180385)) (zipperDepthTotal!188 (t!374623 lt!2180385))))))

(declare-fun b!5348556 () Bool)

(assert (=> b!5348556 (= e!3320457 0)))

(assert (= (and d!1715181 c!930995) b!5348555))

(assert (= (and d!1715181 (not c!930995)) b!5348556))

(declare-fun m!6379906 () Bool)

(assert (=> b!5348555 m!6379906))

(declare-fun m!6379908 () Bool)

(assert (=> b!5348555 m!6379908))

(assert (=> b!5348121 d!1715181))

(declare-fun d!1715183 () Bool)

(declare-fun lt!2180474 () Int)

(assert (=> d!1715183 (>= lt!2180474 0)))

(declare-fun e!3320458 () Int)

(assert (=> d!1715183 (= lt!2180474 e!3320458)))

(declare-fun c!930996 () Bool)

(assert (=> d!1715183 (= c!930996 ((_ is Cons!61282) zl!343))))

(assert (=> d!1715183 (= (zipperDepthTotal!188 zl!343) lt!2180474)))

(declare-fun b!5348557 () Bool)

(assert (=> b!5348557 (= e!3320458 (+ (contextDepthTotal!168 (h!67730 zl!343)) (zipperDepthTotal!188 (t!374623 zl!343))))))

(declare-fun b!5348558 () Bool)

(assert (=> b!5348558 (= e!3320458 0)))

(assert (= (and d!1715183 c!930996) b!5348557))

(assert (= (and d!1715183 (not c!930996)) b!5348558))

(assert (=> b!5348557 m!6379690))

(declare-fun m!6379910 () Bool)

(assert (=> b!5348557 m!6379910))

(assert (=> b!5348121 d!1715183))

(declare-fun b!5348560 () Bool)

(declare-fun e!3320461 () Bool)

(declare-fun e!3320463 () Bool)

(assert (=> b!5348560 (= e!3320461 e!3320463)))

(declare-fun c!930997 () Bool)

(assert (=> b!5348560 (= c!930997 ((_ is Union!15035) lt!2180395))))

(declare-fun b!5348561 () Bool)

(declare-fun e!3320464 () Bool)

(assert (=> b!5348561 (= e!3320464 e!3320461)))

(declare-fun c!930998 () Bool)

(assert (=> b!5348561 (= c!930998 ((_ is Star!15035) lt!2180395))))

(declare-fun b!5348562 () Bool)

(declare-fun res!2269337 () Bool)

(declare-fun e!3320460 () Bool)

(assert (=> b!5348562 (=> (not res!2269337) (not e!3320460))))

(declare-fun call!382345 () Bool)

(assert (=> b!5348562 (= res!2269337 call!382345)))

(assert (=> b!5348562 (= e!3320463 e!3320460)))

(declare-fun bm!382339 () Bool)

(assert (=> bm!382339 (= call!382345 (validRegex!6771 (ite c!930997 (regOne!30583 lt!2180395) (regOne!30582 lt!2180395))))))

(declare-fun bm!382340 () Bool)

(declare-fun call!382344 () Bool)

(declare-fun call!382346 () Bool)

(assert (=> bm!382340 (= call!382344 call!382346)))

(declare-fun b!5348563 () Bool)

(declare-fun e!3320459 () Bool)

(declare-fun e!3320465 () Bool)

(assert (=> b!5348563 (= e!3320459 e!3320465)))

(declare-fun res!2269339 () Bool)

(assert (=> b!5348563 (=> (not res!2269339) (not e!3320465))))

(assert (=> b!5348563 (= res!2269339 call!382345)))

(declare-fun b!5348564 () Bool)

(declare-fun e!3320462 () Bool)

(assert (=> b!5348564 (= e!3320462 call!382346)))

(declare-fun b!5348565 () Bool)

(assert (=> b!5348565 (= e!3320460 call!382344)))

(declare-fun b!5348566 () Bool)

(assert (=> b!5348566 (= e!3320461 e!3320462)))

(declare-fun res!2269341 () Bool)

(assert (=> b!5348566 (= res!2269341 (not (nullable!5204 (reg!15364 lt!2180395))))))

(assert (=> b!5348566 (=> (not res!2269341) (not e!3320462))))

(declare-fun d!1715185 () Bool)

(declare-fun res!2269338 () Bool)

(assert (=> d!1715185 (=> res!2269338 e!3320464)))

(assert (=> d!1715185 (= res!2269338 ((_ is ElementMatch!15035) lt!2180395))))

(assert (=> d!1715185 (= (validRegex!6771 lt!2180395) e!3320464)))

(declare-fun b!5348559 () Bool)

(assert (=> b!5348559 (= e!3320465 call!382344)))

(declare-fun bm!382341 () Bool)

(assert (=> bm!382341 (= call!382346 (validRegex!6771 (ite c!930998 (reg!15364 lt!2180395) (ite c!930997 (regTwo!30583 lt!2180395) (regTwo!30582 lt!2180395)))))))

(declare-fun b!5348567 () Bool)

(declare-fun res!2269340 () Bool)

(assert (=> b!5348567 (=> res!2269340 e!3320459)))

(assert (=> b!5348567 (= res!2269340 (not ((_ is Concat!23880) lt!2180395)))))

(assert (=> b!5348567 (= e!3320463 e!3320459)))

(assert (= (and d!1715185 (not res!2269338)) b!5348561))

(assert (= (and b!5348561 c!930998) b!5348566))

(assert (= (and b!5348561 (not c!930998)) b!5348560))

(assert (= (and b!5348566 res!2269341) b!5348564))

(assert (= (and b!5348560 c!930997) b!5348562))

(assert (= (and b!5348560 (not c!930997)) b!5348567))

(assert (= (and b!5348562 res!2269337) b!5348565))

(assert (= (and b!5348567 (not res!2269340)) b!5348563))

(assert (= (and b!5348563 res!2269339) b!5348559))

(assert (= (or b!5348565 b!5348559) bm!382340))

(assert (= (or b!5348562 b!5348563) bm!382339))

(assert (= (or b!5348564 bm!382340) bm!382341))

(declare-fun m!6379912 () Bool)

(assert (=> bm!382339 m!6379912))

(declare-fun m!6379914 () Bool)

(assert (=> b!5348566 m!6379914))

(declare-fun m!6379916 () Bool)

(assert (=> bm!382341 m!6379916))

(assert (=> b!5348120 d!1715185))

(declare-fun b!5348568 () Bool)

(declare-fun res!2269343 () Bool)

(declare-fun e!3320470 () Bool)

(assert (=> b!5348568 (=> res!2269343 e!3320470)))

(assert (=> b!5348568 (= res!2269343 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715187 () Bool)

(declare-fun e!3320471 () Bool)

(assert (=> d!1715187 e!3320471))

(declare-fun c!931000 () Bool)

(assert (=> d!1715187 (= c!931000 ((_ is EmptyExpr!15035) (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400))))))

(declare-fun lt!2180475 () Bool)

(declare-fun e!3320469 () Bool)

(assert (=> d!1715187 (= lt!2180475 e!3320469)))

(declare-fun c!931001 () Bool)

(assert (=> d!1715187 (= c!931001 (isEmpty!33257 s!2326))))

(assert (=> d!1715187 (validRegex!6771 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)))))

(assert (=> d!1715187 (= (matchR!7220 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)) s!2326) lt!2180475)))

(declare-fun b!5348569 () Bool)

(assert (=> b!5348569 (= e!3320469 (matchR!7220 (derivativeStep!4197 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)) (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5348570 () Bool)

(declare-fun e!3320467 () Bool)

(assert (=> b!5348570 (= e!3320467 (= (head!11468 s!2326) (c!930865 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)))))))

(declare-fun b!5348571 () Bool)

(assert (=> b!5348571 (= e!3320470 (not (= (head!11468 s!2326) (c!930865 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400))))))))

(declare-fun b!5348572 () Bool)

(declare-fun res!2269347 () Bool)

(assert (=> b!5348572 (=> (not res!2269347) (not e!3320467))))

(assert (=> b!5348572 (= res!2269347 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5348573 () Bool)

(assert (=> b!5348573 (= e!3320469 (nullable!5204 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400))))))

(declare-fun b!5348574 () Bool)

(declare-fun res!2269344 () Bool)

(declare-fun e!3320472 () Bool)

(assert (=> b!5348574 (=> res!2269344 e!3320472)))

(assert (=> b!5348574 (= res!2269344 (not ((_ is ElementMatch!15035) (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)))))))

(declare-fun e!3320466 () Bool)

(assert (=> b!5348574 (= e!3320466 e!3320472)))

(declare-fun b!5348575 () Bool)

(assert (=> b!5348575 (= e!3320466 (not lt!2180475))))

(declare-fun b!5348576 () Bool)

(declare-fun res!2269346 () Bool)

(assert (=> b!5348576 (=> res!2269346 e!3320472)))

(assert (=> b!5348576 (= res!2269346 e!3320467)))

(declare-fun res!2269342 () Bool)

(assert (=> b!5348576 (=> (not res!2269342) (not e!3320467))))

(assert (=> b!5348576 (= res!2269342 lt!2180475)))

(declare-fun b!5348577 () Bool)

(declare-fun call!382347 () Bool)

(assert (=> b!5348577 (= e!3320471 (= lt!2180475 call!382347))))

(declare-fun b!5348578 () Bool)

(declare-fun e!3320468 () Bool)

(assert (=> b!5348578 (= e!3320468 e!3320470)))

(declare-fun res!2269348 () Bool)

(assert (=> b!5348578 (=> res!2269348 e!3320470)))

(assert (=> b!5348578 (= res!2269348 call!382347)))

(declare-fun b!5348579 () Bool)

(assert (=> b!5348579 (= e!3320471 e!3320466)))

(declare-fun c!930999 () Bool)

(assert (=> b!5348579 (= c!930999 ((_ is EmptyLang!15035) (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400))))))

(declare-fun b!5348580 () Bool)

(assert (=> b!5348580 (= e!3320472 e!3320468)))

(declare-fun res!2269345 () Bool)

(assert (=> b!5348580 (=> (not res!2269345) (not e!3320468))))

(assert (=> b!5348580 (= res!2269345 (not lt!2180475))))

(declare-fun b!5348581 () Bool)

(declare-fun res!2269349 () Bool)

(assert (=> b!5348581 (=> (not res!2269349) (not e!3320467))))

(assert (=> b!5348581 (= res!2269349 (not call!382347))))

(declare-fun bm!382342 () Bool)

(assert (=> bm!382342 (= call!382347 (isEmpty!33257 s!2326))))

(assert (= (and d!1715187 c!931001) b!5348573))

(assert (= (and d!1715187 (not c!931001)) b!5348569))

(assert (= (and d!1715187 c!931000) b!5348577))

(assert (= (and d!1715187 (not c!931000)) b!5348579))

(assert (= (and b!5348579 c!930999) b!5348575))

(assert (= (and b!5348579 (not c!930999)) b!5348574))

(assert (= (and b!5348574 (not res!2269344)) b!5348576))

(assert (= (and b!5348576 res!2269342) b!5348581))

(assert (= (and b!5348581 res!2269349) b!5348572))

(assert (= (and b!5348572 res!2269347) b!5348570))

(assert (= (and b!5348576 (not res!2269346)) b!5348580))

(assert (= (and b!5348580 res!2269345) b!5348578))

(assert (= (and b!5348578 (not res!2269348)) b!5348568))

(assert (= (and b!5348568 (not res!2269343)) b!5348571))

(assert (= (or b!5348577 b!5348581 b!5348578) bm!382342))

(assert (=> b!5348570 m!6379786))

(assert (=> b!5348569 m!6379786))

(assert (=> b!5348569 m!6379786))

(declare-fun m!6379918 () Bool)

(assert (=> b!5348569 m!6379918))

(assert (=> b!5348569 m!6379790))

(assert (=> b!5348569 m!6379918))

(assert (=> b!5348569 m!6379790))

(declare-fun m!6379920 () Bool)

(assert (=> b!5348569 m!6379920))

(assert (=> b!5348572 m!6379790))

(assert (=> b!5348572 m!6379790))

(assert (=> b!5348572 m!6379794))

(assert (=> bm!382342 m!6379772))

(assert (=> b!5348571 m!6379786))

(declare-fun m!6379922 () Bool)

(assert (=> b!5348573 m!6379922))

(assert (=> d!1715187 m!6379772))

(declare-fun m!6379924 () Bool)

(assert (=> d!1715187 m!6379924))

(assert (=> b!5348568 m!6379790))

(assert (=> b!5348568 m!6379790))

(assert (=> b!5348568 m!6379794))

(assert (=> b!5348120 d!1715187))

(declare-fun d!1715189 () Bool)

(assert (=> d!1715189 (= (matchR!7220 (Concat!23880 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) lt!2180400) s!2326) (matchR!7220 (Concat!23880 (regOne!30582 (regOne!30582 r!7292)) (Concat!23880 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400)) s!2326))))

(declare-fun lt!2180486 () Unit!153658)

(declare-fun choose!40117 (Regex!15035 Regex!15035 Regex!15035 List!61405) Unit!153658)

(assert (=> d!1715189 (= lt!2180486 (choose!40117 (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(declare-fun e!3320485 () Bool)

(assert (=> d!1715189 e!3320485))

(declare-fun res!2269360 () Bool)

(assert (=> d!1715189 (=> (not res!2269360) (not e!3320485))))

(assert (=> d!1715189 (= res!2269360 (validRegex!6771 (regOne!30582 (regOne!30582 r!7292))))))

(assert (=> d!1715189 (= (lemmaConcatAssociative!12 (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326) lt!2180486)))

(declare-fun b!5348600 () Bool)

(declare-fun res!2269361 () Bool)

(assert (=> b!5348600 (=> (not res!2269361) (not e!3320485))))

(assert (=> b!5348600 (= res!2269361 (validRegex!6771 (regTwo!30582 (regOne!30582 r!7292))))))

(declare-fun b!5348603 () Bool)

(assert (=> b!5348603 (= e!3320485 (validRegex!6771 lt!2180400))))

(assert (= (and d!1715189 res!2269360) b!5348600))

(assert (= (and b!5348600 res!2269361) b!5348603))

(declare-fun m!6379950 () Bool)

(assert (=> d!1715189 m!6379950))

(assert (=> d!1715189 m!6379608))

(declare-fun m!6379952 () Bool)

(assert (=> d!1715189 m!6379952))

(declare-fun m!6379954 () Bool)

(assert (=> d!1715189 m!6379954))

(declare-fun m!6379956 () Bool)

(assert (=> b!5348600 m!6379956))

(declare-fun m!6379958 () Bool)

(assert (=> b!5348603 m!6379958))

(assert (=> b!5348120 d!1715189))

(declare-fun bs!1239961 () Bool)

(declare-fun d!1715195 () Bool)

(assert (= bs!1239961 (and d!1715195 d!1715125)))

(declare-fun lambda!274804 () Int)

(assert (=> bs!1239961 (= lambda!274804 lambda!274762)))

(declare-fun b!5348651 () Bool)

(declare-fun e!3320518 () Bool)

(assert (=> b!5348651 (= e!3320518 (isEmpty!33255 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348652 () Bool)

(declare-fun e!3320517 () Bool)

(declare-fun lt!2180493 () Regex!15035)

(declare-fun isConcat!433 (Regex!15035) Bool)

(assert (=> b!5348652 (= e!3320517 (isConcat!433 lt!2180493))))

(declare-fun b!5348653 () Bool)

(declare-fun head!11470 (List!61404) Regex!15035)

(assert (=> b!5348653 (= e!3320517 (= lt!2180493 (head!11470 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348654 () Bool)

(declare-fun e!3320520 () Bool)

(assert (=> b!5348654 (= e!3320520 e!3320517)))

(declare-fun c!931023 () Bool)

(declare-fun tail!10567 (List!61404) List!61404)

(assert (=> b!5348654 (= c!931023 (isEmpty!33255 (tail!10567 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun e!3320519 () Bool)

(assert (=> d!1715195 e!3320519))

(declare-fun res!2269377 () Bool)

(assert (=> d!1715195 (=> (not res!2269377) (not e!3320519))))

(assert (=> d!1715195 (= res!2269377 (validRegex!6771 lt!2180493))))

(declare-fun e!3320522 () Regex!15035)

(assert (=> d!1715195 (= lt!2180493 e!3320522)))

(declare-fun c!931026 () Bool)

(assert (=> d!1715195 (= c!931026 e!3320518)))

(declare-fun res!2269378 () Bool)

(assert (=> d!1715195 (=> (not res!2269378) (not e!3320518))))

(assert (=> d!1715195 (= res!2269378 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343))))))

(assert (=> d!1715195 (forall!14459 (exprs!4919 (h!67730 zl!343)) lambda!274804)))

(assert (=> d!1715195 (= (generalisedConcat!704 (exprs!4919 (h!67730 zl!343))) lt!2180493)))

(declare-fun b!5348655 () Bool)

(declare-fun isEmptyExpr!910 (Regex!15035) Bool)

(assert (=> b!5348655 (= e!3320520 (isEmptyExpr!910 lt!2180493))))

(declare-fun b!5348656 () Bool)

(assert (=> b!5348656 (= e!3320522 (h!67728 (exprs!4919 (h!67730 zl!343))))))

(declare-fun b!5348657 () Bool)

(declare-fun e!3320521 () Regex!15035)

(assert (=> b!5348657 (= e!3320521 EmptyExpr!15035)))

(declare-fun b!5348658 () Bool)

(assert (=> b!5348658 (= e!3320521 (Concat!23880 (h!67728 (exprs!4919 (h!67730 zl!343))) (generalisedConcat!704 (t!374621 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348659 () Bool)

(assert (=> b!5348659 (= e!3320522 e!3320521)))

(declare-fun c!931025 () Bool)

(assert (=> b!5348659 (= c!931025 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343))))))

(declare-fun b!5348660 () Bool)

(assert (=> b!5348660 (= e!3320519 e!3320520)))

(declare-fun c!931024 () Bool)

(assert (=> b!5348660 (= c!931024 (isEmpty!33255 (exprs!4919 (h!67730 zl!343))))))

(assert (= (and d!1715195 res!2269378) b!5348651))

(assert (= (and d!1715195 c!931026) b!5348656))

(assert (= (and d!1715195 (not c!931026)) b!5348659))

(assert (= (and b!5348659 c!931025) b!5348658))

(assert (= (and b!5348659 (not c!931025)) b!5348657))

(assert (= (and d!1715195 res!2269377) b!5348660))

(assert (= (and b!5348660 c!931024) b!5348655))

(assert (= (and b!5348660 (not c!931024)) b!5348654))

(assert (= (and b!5348654 c!931023) b!5348653))

(assert (= (and b!5348654 (not c!931023)) b!5348652))

(declare-fun m!6379982 () Bool)

(assert (=> b!5348660 m!6379982))

(assert (=> b!5348658 m!6379644))

(declare-fun m!6379984 () Bool)

(assert (=> b!5348654 m!6379984))

(assert (=> b!5348654 m!6379984))

(declare-fun m!6379986 () Bool)

(assert (=> b!5348654 m!6379986))

(declare-fun m!6379988 () Bool)

(assert (=> b!5348652 m!6379988))

(declare-fun m!6379990 () Bool)

(assert (=> d!1715195 m!6379990))

(declare-fun m!6379992 () Bool)

(assert (=> d!1715195 m!6379992))

(declare-fun m!6379994 () Bool)

(assert (=> b!5348653 m!6379994))

(assert (=> b!5348651 m!6379680))

(declare-fun m!6379996 () Bool)

(assert (=> b!5348655 m!6379996))

(assert (=> b!5348122 d!1715195))

(declare-fun b!5348684 () Bool)

(declare-fun e!3320539 () (InoxSet Context!8838))

(declare-fun e!3320541 () (InoxSet Context!8838))

(assert (=> b!5348684 (= e!3320539 e!3320541)))

(declare-fun c!931034 () Bool)

(assert (=> b!5348684 (= c!931034 ((_ is Concat!23880) (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun bm!382356 () Bool)

(declare-fun call!382366 () List!61404)

(declare-fun call!382362 () List!61404)

(assert (=> bm!382356 (= call!382366 call!382362)))

(declare-fun b!5348685 () Bool)

(declare-fun c!931035 () Bool)

(assert (=> b!5348685 (= c!931035 ((_ is Star!15035) (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun e!3320540 () (InoxSet Context!8838))

(assert (=> b!5348685 (= e!3320541 e!3320540)))

(declare-fun b!5348686 () Bool)

(declare-fun e!3320538 () (InoxSet Context!8838))

(declare-fun e!3320542 () (InoxSet Context!8838))

(assert (=> b!5348686 (= e!3320538 e!3320542)))

(declare-fun c!931032 () Bool)

(assert (=> b!5348686 (= c!931032 ((_ is Union!15035) (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348687 () Bool)

(declare-fun e!3320537 () Bool)

(assert (=> b!5348687 (= e!3320537 (nullable!5204 (regOne!30582 (h!67728 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348688 () Bool)

(declare-fun call!382364 () (InoxSet Context!8838))

(declare-fun call!382361 () (InoxSet Context!8838))

(assert (=> b!5348688 (= e!3320542 ((_ map or) call!382364 call!382361))))

(declare-fun bm!382357 () Bool)

(declare-fun call!382363 () (InoxSet Context!8838))

(assert (=> bm!382357 (= call!382363 call!382364)))

(declare-fun d!1715207 () Bool)

(declare-fun c!931033 () Bool)

(assert (=> d!1715207 (= c!931033 (and ((_ is ElementMatch!15035) (h!67728 (exprs!4919 (h!67730 zl!343)))) (= (c!930865 (h!67728 (exprs!4919 (h!67730 zl!343)))) (h!67729 s!2326))))))

(assert (=> d!1715207 (= (derivationStepZipperDown!483 (h!67728 (exprs!4919 (h!67730 zl!343))) lt!2180392 (h!67729 s!2326)) e!3320538)))

(declare-fun b!5348689 () Bool)

(declare-fun call!382365 () (InoxSet Context!8838))

(assert (=> b!5348689 (= e!3320541 call!382365)))

(declare-fun bm!382358 () Bool)

(assert (=> bm!382358 (= call!382361 (derivationStepZipperDown!483 (ite c!931032 (regTwo!30583 (h!67728 (exprs!4919 (h!67730 zl!343)))) (regOne!30582 (h!67728 (exprs!4919 (h!67730 zl!343))))) (ite c!931032 lt!2180392 (Context!8839 call!382362)) (h!67729 s!2326)))))

(declare-fun b!5348690 () Bool)

(assert (=> b!5348690 (= e!3320540 ((as const (Array Context!8838 Bool)) false))))

(declare-fun bm!382359 () Bool)

(declare-fun c!931036 () Bool)

(assert (=> bm!382359 (= call!382362 ($colon$colon!1425 (exprs!4919 lt!2180392) (ite (or c!931036 c!931034) (regTwo!30582 (h!67728 (exprs!4919 (h!67730 zl!343)))) (h!67728 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348691 () Bool)

(assert (=> b!5348691 (= c!931036 e!3320537)))

(declare-fun res!2269392 () Bool)

(assert (=> b!5348691 (=> (not res!2269392) (not e!3320537))))

(assert (=> b!5348691 (= res!2269392 ((_ is Concat!23880) (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(assert (=> b!5348691 (= e!3320542 e!3320539)))

(declare-fun bm!382360 () Bool)

(assert (=> bm!382360 (= call!382365 call!382363)))

(declare-fun b!5348692 () Bool)

(assert (=> b!5348692 (= e!3320538 (store ((as const (Array Context!8838 Bool)) false) lt!2180392 true))))

(declare-fun b!5348693 () Bool)

(assert (=> b!5348693 (= e!3320539 ((_ map or) call!382361 call!382363))))

(declare-fun b!5348694 () Bool)

(assert (=> b!5348694 (= e!3320540 call!382365)))

(declare-fun bm!382361 () Bool)

(assert (=> bm!382361 (= call!382364 (derivationStepZipperDown!483 (ite c!931032 (regOne!30583 (h!67728 (exprs!4919 (h!67730 zl!343)))) (ite c!931036 (regTwo!30582 (h!67728 (exprs!4919 (h!67730 zl!343)))) (ite c!931034 (regOne!30582 (h!67728 (exprs!4919 (h!67730 zl!343)))) (reg!15364 (h!67728 (exprs!4919 (h!67730 zl!343))))))) (ite (or c!931032 c!931036) lt!2180392 (Context!8839 call!382366)) (h!67729 s!2326)))))

(assert (= (and d!1715207 c!931033) b!5348692))

(assert (= (and d!1715207 (not c!931033)) b!5348686))

(assert (= (and b!5348686 c!931032) b!5348688))

(assert (= (and b!5348686 (not c!931032)) b!5348691))

(assert (= (and b!5348691 res!2269392) b!5348687))

(assert (= (and b!5348691 c!931036) b!5348693))

(assert (= (and b!5348691 (not c!931036)) b!5348684))

(assert (= (and b!5348684 c!931034) b!5348689))

(assert (= (and b!5348684 (not c!931034)) b!5348685))

(assert (= (and b!5348685 c!931035) b!5348694))

(assert (= (and b!5348685 (not c!931035)) b!5348690))

(assert (= (or b!5348689 b!5348694) bm!382356))

(assert (= (or b!5348689 b!5348694) bm!382360))

(assert (= (or b!5348693 bm!382356) bm!382359))

(assert (= (or b!5348693 bm!382360) bm!382357))

(assert (= (or b!5348688 b!5348693) bm!382358))

(assert (= (or b!5348688 bm!382357) bm!382361))

(declare-fun m!6380006 () Bool)

(assert (=> bm!382361 m!6380006))

(declare-fun m!6380008 () Bool)

(assert (=> bm!382359 m!6380008))

(declare-fun m!6380010 () Bool)

(assert (=> b!5348692 m!6380010))

(declare-fun m!6380012 () Bool)

(assert (=> b!5348687 m!6380012))

(declare-fun m!6380014 () Bool)

(assert (=> bm!382358 m!6380014))

(assert (=> b!5348141 d!1715207))

(declare-fun b!5348695 () Bool)

(declare-fun e!3320544 () Bool)

(assert (=> b!5348695 (= e!3320544 (nullable!5204 (h!67728 (exprs!4919 lt!2180392))))))

(declare-fun d!1715211 () Bool)

(declare-fun c!931038 () Bool)

(assert (=> d!1715211 (= c!931038 e!3320544)))

(declare-fun res!2269393 () Bool)

(assert (=> d!1715211 (=> (not res!2269393) (not e!3320544))))

(assert (=> d!1715211 (= res!2269393 ((_ is Cons!61280) (exprs!4919 lt!2180392)))))

(declare-fun e!3320545 () (InoxSet Context!8838))

(assert (=> d!1715211 (= (derivationStepZipperUp!407 lt!2180392 (h!67729 s!2326)) e!3320545)))

(declare-fun call!382367 () (InoxSet Context!8838))

(declare-fun b!5348696 () Bool)

(assert (=> b!5348696 (= e!3320545 ((_ map or) call!382367 (derivationStepZipperUp!407 (Context!8839 (t!374621 (exprs!4919 lt!2180392))) (h!67729 s!2326))))))

(declare-fun b!5348697 () Bool)

(declare-fun e!3320543 () (InoxSet Context!8838))

(assert (=> b!5348697 (= e!3320543 ((as const (Array Context!8838 Bool)) false))))

(declare-fun b!5348698 () Bool)

(assert (=> b!5348698 (= e!3320545 e!3320543)))

(declare-fun c!931037 () Bool)

(assert (=> b!5348698 (= c!931037 ((_ is Cons!61280) (exprs!4919 lt!2180392)))))

(declare-fun b!5348699 () Bool)

(assert (=> b!5348699 (= e!3320543 call!382367)))

(declare-fun bm!382362 () Bool)

(assert (=> bm!382362 (= call!382367 (derivationStepZipperDown!483 (h!67728 (exprs!4919 lt!2180392)) (Context!8839 (t!374621 (exprs!4919 lt!2180392))) (h!67729 s!2326)))))

(assert (= (and d!1715211 res!2269393) b!5348695))

(assert (= (and d!1715211 c!931038) b!5348696))

(assert (= (and d!1715211 (not c!931038)) b!5348698))

(assert (= (and b!5348698 c!931037) b!5348699))

(assert (= (and b!5348698 (not c!931037)) b!5348697))

(assert (= (or b!5348696 b!5348699) bm!382362))

(declare-fun m!6380016 () Bool)

(assert (=> b!5348695 m!6380016))

(declare-fun m!6380018 () Bool)

(assert (=> b!5348696 m!6380018))

(declare-fun m!6380020 () Bool)

(assert (=> bm!382362 m!6380020))

(assert (=> b!5348141 d!1715211))

(declare-fun d!1715213 () Bool)

(declare-fun nullableFct!1528 (Regex!15035) Bool)

(assert (=> d!1715213 (= (nullable!5204 (h!67728 (exprs!4919 (h!67730 zl!343)))) (nullableFct!1528 (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun bs!1239962 () Bool)

(assert (= bs!1239962 d!1715213))

(declare-fun m!6380022 () Bool)

(assert (=> bs!1239962 m!6380022))

(assert (=> b!5348141 d!1715213))

(declare-fun d!1715215 () Bool)

(assert (=> d!1715215 (= (flatMap!762 z!1189 lambda!274743) (dynLambda!24224 lambda!274743 (h!67730 zl!343)))))

(declare-fun lt!2180495 () Unit!153658)

(assert (=> d!1715215 (= lt!2180495 (choose!40111 z!1189 (h!67730 zl!343) lambda!274743))))

(assert (=> d!1715215 (= z!1189 (store ((as const (Array Context!8838 Bool)) false) (h!67730 zl!343) true))))

(assert (=> d!1715215 (= (lemmaFlatMapOnSingletonSet!294 z!1189 (h!67730 zl!343) lambda!274743) lt!2180495)))

(declare-fun b_lambda!205295 () Bool)

(assert (=> (not b_lambda!205295) (not d!1715215)))

(declare-fun bs!1239963 () Bool)

(assert (= bs!1239963 d!1715215))

(assert (=> bs!1239963 m!6379558))

(declare-fun m!6380024 () Bool)

(assert (=> bs!1239963 m!6380024))

(declare-fun m!6380026 () Bool)

(assert (=> bs!1239963 m!6380026))

(declare-fun m!6380028 () Bool)

(assert (=> bs!1239963 m!6380028))

(assert (=> b!5348141 d!1715215))

(declare-fun b!5348700 () Bool)

(declare-fun e!3320547 () Bool)

(assert (=> b!5348700 (= e!3320547 (nullable!5204 (h!67728 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun d!1715217 () Bool)

(declare-fun c!931040 () Bool)

(assert (=> d!1715217 (= c!931040 e!3320547)))

(declare-fun res!2269394 () Bool)

(assert (=> d!1715217 (=> (not res!2269394) (not e!3320547))))

(assert (=> d!1715217 (= res!2269394 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343))))))

(declare-fun e!3320548 () (InoxSet Context!8838))

(assert (=> d!1715217 (= (derivationStepZipperUp!407 (h!67730 zl!343) (h!67729 s!2326)) e!3320548)))

(declare-fun b!5348701 () Bool)

(declare-fun call!382368 () (InoxSet Context!8838))

(assert (=> b!5348701 (= e!3320548 ((_ map or) call!382368 (derivationStepZipperUp!407 (Context!8839 (t!374621 (exprs!4919 (h!67730 zl!343)))) (h!67729 s!2326))))))

(declare-fun b!5348702 () Bool)

(declare-fun e!3320546 () (InoxSet Context!8838))

(assert (=> b!5348702 (= e!3320546 ((as const (Array Context!8838 Bool)) false))))

(declare-fun b!5348703 () Bool)

(assert (=> b!5348703 (= e!3320548 e!3320546)))

(declare-fun c!931039 () Bool)

(assert (=> b!5348703 (= c!931039 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343))))))

(declare-fun b!5348704 () Bool)

(assert (=> b!5348704 (= e!3320546 call!382368)))

(declare-fun bm!382363 () Bool)

(assert (=> bm!382363 (= call!382368 (derivationStepZipperDown!483 (h!67728 (exprs!4919 (h!67730 zl!343))) (Context!8839 (t!374621 (exprs!4919 (h!67730 zl!343)))) (h!67729 s!2326)))))

(assert (= (and d!1715217 res!2269394) b!5348700))

(assert (= (and d!1715217 c!931040) b!5348701))

(assert (= (and d!1715217 (not c!931040)) b!5348703))

(assert (= (and b!5348703 c!931039) b!5348704))

(assert (= (and b!5348703 (not c!931039)) b!5348702))

(assert (= (or b!5348701 b!5348704) bm!382363))

(assert (=> b!5348700 m!6379564))

(declare-fun m!6380030 () Bool)

(assert (=> b!5348701 m!6380030))

(declare-fun m!6380032 () Bool)

(assert (=> bm!382363 m!6380032))

(assert (=> b!5348141 d!1715217))

(declare-fun d!1715219 () Bool)

(assert (=> d!1715219 (= (flatMap!762 z!1189 lambda!274743) (choose!40110 z!1189 lambda!274743))))

(declare-fun bs!1239964 () Bool)

(assert (= bs!1239964 d!1715219))

(declare-fun m!6380034 () Bool)

(assert (=> bs!1239964 m!6380034))

(assert (=> b!5348141 d!1715219))

(declare-fun b!5348705 () Bool)

(declare-fun e!3320550 () Bool)

(assert (=> b!5348705 (= e!3320550 (nullable!5204 (h!67728 (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343)))))))))))

(declare-fun d!1715221 () Bool)

(declare-fun c!931042 () Bool)

(assert (=> d!1715221 (= c!931042 e!3320550)))

(declare-fun res!2269395 () Bool)

(assert (=> d!1715221 (=> (not res!2269395) (not e!3320550))))

(assert (=> d!1715221 (= res!2269395 ((_ is Cons!61280) (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343))))))))))

(declare-fun e!3320551 () (InoxSet Context!8838))

(assert (=> d!1715221 (= (derivationStepZipperUp!407 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343))))) (h!67729 s!2326)) e!3320551)))

(declare-fun b!5348706 () Bool)

(declare-fun call!382369 () (InoxSet Context!8838))

(assert (=> b!5348706 (= e!3320551 ((_ map or) call!382369 (derivationStepZipperUp!407 (Context!8839 (t!374621 (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343)))))))) (h!67729 s!2326))))))

(declare-fun b!5348707 () Bool)

(declare-fun e!3320549 () (InoxSet Context!8838))

(assert (=> b!5348707 (= e!3320549 ((as const (Array Context!8838 Bool)) false))))

(declare-fun b!5348708 () Bool)

(assert (=> b!5348708 (= e!3320551 e!3320549)))

(declare-fun c!931041 () Bool)

(assert (=> b!5348708 (= c!931041 ((_ is Cons!61280) (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343))))))))))

(declare-fun b!5348709 () Bool)

(assert (=> b!5348709 (= e!3320549 call!382369)))

(declare-fun bm!382364 () Bool)

(assert (=> bm!382364 (= call!382369 (derivationStepZipperDown!483 (h!67728 (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343))))))) (Context!8839 (t!374621 (exprs!4919 (Context!8839 (Cons!61280 (h!67728 (exprs!4919 (h!67730 zl!343))) (t!374621 (exprs!4919 (h!67730 zl!343)))))))) (h!67729 s!2326)))))

(assert (= (and d!1715221 res!2269395) b!5348705))

(assert (= (and d!1715221 c!931042) b!5348706))

(assert (= (and d!1715221 (not c!931042)) b!5348708))

(assert (= (and b!5348708 c!931041) b!5348709))

(assert (= (and b!5348708 (not c!931041)) b!5348707))

(assert (= (or b!5348706 b!5348709) bm!382364))

(declare-fun m!6380036 () Bool)

(assert (=> b!5348705 m!6380036))

(declare-fun m!6380038 () Bool)

(assert (=> b!5348706 m!6380038))

(declare-fun m!6380040 () Bool)

(assert (=> bm!382364 m!6380040))

(assert (=> b!5348141 d!1715221))

(declare-fun d!1715223 () Bool)

(declare-fun e!3320557 () Bool)

(assert (=> d!1715223 e!3320557))

(declare-fun res!2269404 () Bool)

(assert (=> d!1715223 (=> (not res!2269404) (not e!3320557))))

(declare-fun lt!2180501 () List!61406)

(declare-fun noDuplicate!1329 (List!61406) Bool)

(assert (=> d!1715223 (= res!2269404 (noDuplicate!1329 lt!2180501))))

(declare-fun choose!40118 ((InoxSet Context!8838)) List!61406)

(assert (=> d!1715223 (= lt!2180501 (choose!40118 z!1189))))

(assert (=> d!1715223 (= (toList!8819 z!1189) lt!2180501)))

(declare-fun b!5348718 () Bool)

(declare-fun content!10933 (List!61406) (InoxSet Context!8838))

(assert (=> b!5348718 (= e!3320557 (= (content!10933 lt!2180501) z!1189))))

(assert (= (and d!1715223 res!2269404) b!5348718))

(declare-fun m!6380052 () Bool)

(assert (=> d!1715223 m!6380052))

(declare-fun m!6380054 () Bool)

(assert (=> d!1715223 m!6380054))

(declare-fun m!6380056 () Bool)

(assert (=> b!5348718 m!6380056))

(assert (=> b!5348118 d!1715223))

(declare-fun d!1715227 () Bool)

(declare-fun c!931043 () Bool)

(assert (=> d!1715227 (= c!931043 (isEmpty!33257 (t!374622 s!2326)))))

(declare-fun e!3320558 () Bool)

(assert (=> d!1715227 (= (matchZipper!1279 lt!2180382 (t!374622 s!2326)) e!3320558)))

(declare-fun b!5348719 () Bool)

(assert (=> b!5348719 (= e!3320558 (nullableZipper!1375 lt!2180382))))

(declare-fun b!5348720 () Bool)

(assert (=> b!5348720 (= e!3320558 (matchZipper!1279 (derivationStepZipper!1276 lt!2180382 (head!11468 (t!374622 s!2326))) (tail!10565 (t!374622 s!2326))))))

(assert (= (and d!1715227 c!931043) b!5348719))

(assert (= (and d!1715227 (not c!931043)) b!5348720))

(assert (=> d!1715227 m!6379730))

(declare-fun m!6380058 () Bool)

(assert (=> b!5348719 m!6380058))

(assert (=> b!5348720 m!6379734))

(assert (=> b!5348720 m!6379734))

(declare-fun m!6380060 () Bool)

(assert (=> b!5348720 m!6380060))

(assert (=> b!5348720 m!6379738))

(assert (=> b!5348720 m!6380060))

(assert (=> b!5348720 m!6379738))

(declare-fun m!6380062 () Bool)

(assert (=> b!5348720 m!6380062))

(assert (=> b!5348137 d!1715227))

(declare-fun bs!1239966 () Bool)

(declare-fun d!1715229 () Bool)

(assert (= bs!1239966 (and d!1715229 d!1715125)))

(declare-fun lambda!274810 () Int)

(assert (=> bs!1239966 (= lambda!274810 lambda!274762)))

(declare-fun bs!1239967 () Bool)

(assert (= bs!1239967 (and d!1715229 d!1715195)))

(assert (=> bs!1239967 (= lambda!274810 lambda!274804)))

(declare-fun b!5348771 () Bool)

(declare-fun e!3320593 () Bool)

(declare-fun lt!2180507 () Regex!15035)

(assert (=> b!5348771 (= e!3320593 (= lt!2180507 (head!11470 (unfocusZipperList!477 zl!343))))))

(declare-fun b!5348772 () Bool)

(declare-fun e!3320590 () Bool)

(declare-fun e!3320594 () Bool)

(assert (=> b!5348772 (= e!3320590 e!3320594)))

(declare-fun c!931066 () Bool)

(assert (=> b!5348772 (= c!931066 (isEmpty!33255 (unfocusZipperList!477 zl!343)))))

(declare-fun b!5348773 () Bool)

(declare-fun isEmptyLang!918 (Regex!15035) Bool)

(assert (=> b!5348773 (= e!3320594 (isEmptyLang!918 lt!2180507))))

(declare-fun b!5348774 () Bool)

(declare-fun e!3320591 () Regex!15035)

(assert (=> b!5348774 (= e!3320591 EmptyLang!15035)))

(declare-fun b!5348775 () Bool)

(declare-fun e!3320592 () Regex!15035)

(assert (=> b!5348775 (= e!3320592 e!3320591)))

(declare-fun c!931065 () Bool)

(assert (=> b!5348775 (= c!931065 ((_ is Cons!61280) (unfocusZipperList!477 zl!343)))))

(declare-fun b!5348777 () Bool)

(assert (=> b!5348777 (= e!3320592 (h!67728 (unfocusZipperList!477 zl!343)))))

(declare-fun b!5348778 () Bool)

(assert (=> b!5348778 (= e!3320591 (Union!15035 (h!67728 (unfocusZipperList!477 zl!343)) (generalisedUnion!964 (t!374621 (unfocusZipperList!477 zl!343)))))))

(declare-fun b!5348779 () Bool)

(declare-fun isUnion!350 (Regex!15035) Bool)

(assert (=> b!5348779 (= e!3320593 (isUnion!350 lt!2180507))))

(declare-fun b!5348780 () Bool)

(assert (=> b!5348780 (= e!3320594 e!3320593)))

(declare-fun c!931067 () Bool)

(assert (=> b!5348780 (= c!931067 (isEmpty!33255 (tail!10567 (unfocusZipperList!477 zl!343))))))

(assert (=> d!1715229 e!3320590))

(declare-fun res!2269416 () Bool)

(assert (=> d!1715229 (=> (not res!2269416) (not e!3320590))))

(assert (=> d!1715229 (= res!2269416 (validRegex!6771 lt!2180507))))

(assert (=> d!1715229 (= lt!2180507 e!3320592)))

(declare-fun c!931064 () Bool)

(declare-fun e!3320589 () Bool)

(assert (=> d!1715229 (= c!931064 e!3320589)))

(declare-fun res!2269415 () Bool)

(assert (=> d!1715229 (=> (not res!2269415) (not e!3320589))))

(assert (=> d!1715229 (= res!2269415 ((_ is Cons!61280) (unfocusZipperList!477 zl!343)))))

(assert (=> d!1715229 (forall!14459 (unfocusZipperList!477 zl!343) lambda!274810)))

(assert (=> d!1715229 (= (generalisedUnion!964 (unfocusZipperList!477 zl!343)) lt!2180507)))

(declare-fun b!5348776 () Bool)

(assert (=> b!5348776 (= e!3320589 (isEmpty!33255 (t!374621 (unfocusZipperList!477 zl!343))))))

(assert (= (and d!1715229 res!2269415) b!5348776))

(assert (= (and d!1715229 c!931064) b!5348777))

(assert (= (and d!1715229 (not c!931064)) b!5348775))

(assert (= (and b!5348775 c!931065) b!5348778))

(assert (= (and b!5348775 (not c!931065)) b!5348774))

(assert (= (and d!1715229 res!2269416) b!5348772))

(assert (= (and b!5348772 c!931066) b!5348773))

(assert (= (and b!5348772 (not c!931066)) b!5348780))

(assert (= (and b!5348780 c!931067) b!5348771))

(assert (= (and b!5348780 (not c!931067)) b!5348779))

(declare-fun m!6380080 () Bool)

(assert (=> b!5348779 m!6380080))

(declare-fun m!6380082 () Bool)

(assert (=> b!5348778 m!6380082))

(declare-fun m!6380084 () Bool)

(assert (=> b!5348776 m!6380084))

(assert (=> b!5348780 m!6379684))

(declare-fun m!6380086 () Bool)

(assert (=> b!5348780 m!6380086))

(assert (=> b!5348780 m!6380086))

(declare-fun m!6380088 () Bool)

(assert (=> b!5348780 m!6380088))

(assert (=> b!5348771 m!6379684))

(declare-fun m!6380090 () Bool)

(assert (=> b!5348771 m!6380090))

(assert (=> b!5348772 m!6379684))

(declare-fun m!6380092 () Bool)

(assert (=> b!5348772 m!6380092))

(declare-fun m!6380094 () Bool)

(assert (=> d!1715229 m!6380094))

(assert (=> d!1715229 m!6379684))

(declare-fun m!6380096 () Bool)

(assert (=> d!1715229 m!6380096))

(declare-fun m!6380098 () Bool)

(assert (=> b!5348773 m!6380098))

(assert (=> b!5348139 d!1715229))

(declare-fun bs!1239968 () Bool)

(declare-fun d!1715233 () Bool)

(assert (= bs!1239968 (and d!1715233 d!1715125)))

(declare-fun lambda!274813 () Int)

(assert (=> bs!1239968 (= lambda!274813 lambda!274762)))

(declare-fun bs!1239969 () Bool)

(assert (= bs!1239969 (and d!1715233 d!1715195)))

(assert (=> bs!1239969 (= lambda!274813 lambda!274804)))

(declare-fun bs!1239970 () Bool)

(assert (= bs!1239970 (and d!1715233 d!1715229)))

(assert (=> bs!1239970 (= lambda!274813 lambda!274810)))

(declare-fun lt!2180513 () List!61404)

(assert (=> d!1715233 (forall!14459 lt!2180513 lambda!274813)))

(declare-fun e!3320601 () List!61404)

(assert (=> d!1715233 (= lt!2180513 e!3320601)))

(declare-fun c!931071 () Bool)

(assert (=> d!1715233 (= c!931071 ((_ is Cons!61282) zl!343))))

(assert (=> d!1715233 (= (unfocusZipperList!477 zl!343) lt!2180513)))

(declare-fun b!5348790 () Bool)

(assert (=> b!5348790 (= e!3320601 (Cons!61280 (generalisedConcat!704 (exprs!4919 (h!67730 zl!343))) (unfocusZipperList!477 (t!374623 zl!343))))))

(declare-fun b!5348791 () Bool)

(assert (=> b!5348791 (= e!3320601 Nil!61280)))

(assert (= (and d!1715233 c!931071) b!5348790))

(assert (= (and d!1715233 (not c!931071)) b!5348791))

(declare-fun m!6380108 () Bool)

(assert (=> d!1715233 m!6380108))

(assert (=> b!5348790 m!6379660))

(declare-fun m!6380110 () Bool)

(assert (=> b!5348790 m!6380110))

(assert (=> b!5348139 d!1715233))

(declare-fun e!3320618 () Bool)

(declare-fun d!1715239 () Bool)

(assert (=> d!1715239 (= (matchZipper!1279 ((_ map or) lt!2180403 lt!2180382) (t!374622 s!2326)) e!3320618)))

(declare-fun res!2269432 () Bool)

(assert (=> d!1715239 (=> res!2269432 e!3320618)))

(assert (=> d!1715239 (= res!2269432 (matchZipper!1279 lt!2180403 (t!374622 s!2326)))))

(declare-fun lt!2180517 () Unit!153658)

(declare-fun choose!40120 ((InoxSet Context!8838) (InoxSet Context!8838) List!61405) Unit!153658)

(assert (=> d!1715239 (= lt!2180517 (choose!40120 lt!2180403 lt!2180382 (t!374622 s!2326)))))

(assert (=> d!1715239 (= (lemmaZipperConcatMatchesSameAsBothZippers!272 lt!2180403 lt!2180382 (t!374622 s!2326)) lt!2180517)))

(declare-fun b!5348820 () Bool)

(assert (=> b!5348820 (= e!3320618 (matchZipper!1279 lt!2180382 (t!374622 s!2326)))))

(assert (= (and d!1715239 (not res!2269432)) b!5348820))

(assert (=> d!1715239 m!6379674))

(assert (=> d!1715239 m!6379584))

(declare-fun m!6380130 () Bool)

(assert (=> d!1715239 m!6380130))

(assert (=> b!5348820 m!6379598))

(assert (=> b!5348138 d!1715239))

(declare-fun d!1715249 () Bool)

(declare-fun c!931080 () Bool)

(assert (=> d!1715249 (= c!931080 (isEmpty!33257 (t!374622 s!2326)))))

(declare-fun e!3320619 () Bool)

(assert (=> d!1715249 (= (matchZipper!1279 lt!2180403 (t!374622 s!2326)) e!3320619)))

(declare-fun b!5348821 () Bool)

(assert (=> b!5348821 (= e!3320619 (nullableZipper!1375 lt!2180403))))

(declare-fun b!5348822 () Bool)

(assert (=> b!5348822 (= e!3320619 (matchZipper!1279 (derivationStepZipper!1276 lt!2180403 (head!11468 (t!374622 s!2326))) (tail!10565 (t!374622 s!2326))))))

(assert (= (and d!1715249 c!931080) b!5348821))

(assert (= (and d!1715249 (not c!931080)) b!5348822))

(assert (=> d!1715249 m!6379730))

(declare-fun m!6380132 () Bool)

(assert (=> b!5348821 m!6380132))

(assert (=> b!5348822 m!6379734))

(assert (=> b!5348822 m!6379734))

(declare-fun m!6380134 () Bool)

(assert (=> b!5348822 m!6380134))

(assert (=> b!5348822 m!6379738))

(assert (=> b!5348822 m!6380134))

(assert (=> b!5348822 m!6379738))

(declare-fun m!6380136 () Bool)

(assert (=> b!5348822 m!6380136))

(assert (=> b!5348138 d!1715249))

(declare-fun d!1715251 () Bool)

(declare-fun c!931081 () Bool)

(assert (=> d!1715251 (= c!931081 (isEmpty!33257 (t!374622 s!2326)))))

(declare-fun e!3320620 () Bool)

(assert (=> d!1715251 (= (matchZipper!1279 ((_ map or) lt!2180403 lt!2180382) (t!374622 s!2326)) e!3320620)))

(declare-fun b!5348823 () Bool)

(assert (=> b!5348823 (= e!3320620 (nullableZipper!1375 ((_ map or) lt!2180403 lt!2180382)))))

(declare-fun b!5348824 () Bool)

(assert (=> b!5348824 (= e!3320620 (matchZipper!1279 (derivationStepZipper!1276 ((_ map or) lt!2180403 lt!2180382) (head!11468 (t!374622 s!2326))) (tail!10565 (t!374622 s!2326))))))

(assert (= (and d!1715251 c!931081) b!5348823))

(assert (= (and d!1715251 (not c!931081)) b!5348824))

(assert (=> d!1715251 m!6379730))

(declare-fun m!6380138 () Bool)

(assert (=> b!5348823 m!6380138))

(assert (=> b!5348824 m!6379734))

(assert (=> b!5348824 m!6379734))

(declare-fun m!6380140 () Bool)

(assert (=> b!5348824 m!6380140))

(assert (=> b!5348824 m!6379738))

(assert (=> b!5348824 m!6380140))

(assert (=> b!5348824 m!6379738))

(declare-fun m!6380142 () Bool)

(assert (=> b!5348824 m!6380142))

(assert (=> b!5348138 d!1715251))

(declare-fun d!1715253 () Bool)

(assert (=> d!1715253 (= (matchR!7220 lt!2180381 s!2326) (matchRSpec!2138 lt!2180381 s!2326))))

(declare-fun lt!2180518 () Unit!153658)

(assert (=> d!1715253 (= lt!2180518 (choose!40112 lt!2180381 s!2326))))

(assert (=> d!1715253 (validRegex!6771 lt!2180381)))

(assert (=> d!1715253 (= (mainMatchTheorem!2138 lt!2180381 s!2326) lt!2180518)))

(declare-fun bs!1239973 () Bool)

(assert (= bs!1239973 d!1715253))

(assert (=> bs!1239973 m!6379612))

(assert (=> bs!1239973 m!6379638))

(declare-fun m!6380144 () Bool)

(assert (=> bs!1239973 m!6380144))

(declare-fun m!6380146 () Bool)

(assert (=> bs!1239973 m!6380146))

(assert (=> b!5348119 d!1715253))

(declare-fun d!1715255 () Bool)

(assert (=> d!1715255 (= (matchR!7220 lt!2180408 s!2326) (matchRSpec!2138 lt!2180408 s!2326))))

(declare-fun lt!2180519 () Unit!153658)

(assert (=> d!1715255 (= lt!2180519 (choose!40112 lt!2180408 s!2326))))

(assert (=> d!1715255 (validRegex!6771 lt!2180408)))

(assert (=> d!1715255 (= (mainMatchTheorem!2138 lt!2180408 s!2326) lt!2180519)))

(declare-fun bs!1239974 () Bool)

(assert (= bs!1239974 d!1715255))

(assert (=> bs!1239974 m!6379624))

(assert (=> bs!1239974 m!6379616))

(declare-fun m!6380148 () Bool)

(assert (=> bs!1239974 m!6380148))

(declare-fun m!6380150 () Bool)

(assert (=> bs!1239974 m!6380150))

(assert (=> b!5348119 d!1715255))

(declare-fun b!5348825 () Bool)

(declare-fun res!2269434 () Bool)

(declare-fun e!3320625 () Bool)

(assert (=> b!5348825 (=> res!2269434 e!3320625)))

(assert (=> b!5348825 (= res!2269434 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715257 () Bool)

(declare-fun e!3320626 () Bool)

(assert (=> d!1715257 e!3320626))

(declare-fun c!931083 () Bool)

(assert (=> d!1715257 (= c!931083 ((_ is EmptyExpr!15035) lt!2180408))))

(declare-fun lt!2180520 () Bool)

(declare-fun e!3320624 () Bool)

(assert (=> d!1715257 (= lt!2180520 e!3320624)))

(declare-fun c!931084 () Bool)

(assert (=> d!1715257 (= c!931084 (isEmpty!33257 s!2326))))

(assert (=> d!1715257 (validRegex!6771 lt!2180408)))

(assert (=> d!1715257 (= (matchR!7220 lt!2180408 s!2326) lt!2180520)))

(declare-fun b!5348826 () Bool)

(assert (=> b!5348826 (= e!3320624 (matchR!7220 (derivativeStep!4197 lt!2180408 (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5348827 () Bool)

(declare-fun e!3320622 () Bool)

(assert (=> b!5348827 (= e!3320622 (= (head!11468 s!2326) (c!930865 lt!2180408)))))

(declare-fun b!5348828 () Bool)

(assert (=> b!5348828 (= e!3320625 (not (= (head!11468 s!2326) (c!930865 lt!2180408))))))

(declare-fun b!5348829 () Bool)

(declare-fun res!2269438 () Bool)

(assert (=> b!5348829 (=> (not res!2269438) (not e!3320622))))

(assert (=> b!5348829 (= res!2269438 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5348830 () Bool)

(assert (=> b!5348830 (= e!3320624 (nullable!5204 lt!2180408))))

(declare-fun b!5348831 () Bool)

(declare-fun res!2269435 () Bool)

(declare-fun e!3320627 () Bool)

(assert (=> b!5348831 (=> res!2269435 e!3320627)))

(assert (=> b!5348831 (= res!2269435 (not ((_ is ElementMatch!15035) lt!2180408)))))

(declare-fun e!3320621 () Bool)

(assert (=> b!5348831 (= e!3320621 e!3320627)))

(declare-fun b!5348832 () Bool)

(assert (=> b!5348832 (= e!3320621 (not lt!2180520))))

(declare-fun b!5348833 () Bool)

(declare-fun res!2269437 () Bool)

(assert (=> b!5348833 (=> res!2269437 e!3320627)))

(assert (=> b!5348833 (= res!2269437 e!3320622)))

(declare-fun res!2269433 () Bool)

(assert (=> b!5348833 (=> (not res!2269433) (not e!3320622))))

(assert (=> b!5348833 (= res!2269433 lt!2180520)))

(declare-fun b!5348834 () Bool)

(declare-fun call!382373 () Bool)

(assert (=> b!5348834 (= e!3320626 (= lt!2180520 call!382373))))

(declare-fun b!5348835 () Bool)

(declare-fun e!3320623 () Bool)

(assert (=> b!5348835 (= e!3320623 e!3320625)))

(declare-fun res!2269439 () Bool)

(assert (=> b!5348835 (=> res!2269439 e!3320625)))

(assert (=> b!5348835 (= res!2269439 call!382373)))

(declare-fun b!5348836 () Bool)

(assert (=> b!5348836 (= e!3320626 e!3320621)))

(declare-fun c!931082 () Bool)

(assert (=> b!5348836 (= c!931082 ((_ is EmptyLang!15035) lt!2180408))))

(declare-fun b!5348837 () Bool)

(assert (=> b!5348837 (= e!3320627 e!3320623)))

(declare-fun res!2269436 () Bool)

(assert (=> b!5348837 (=> (not res!2269436) (not e!3320623))))

(assert (=> b!5348837 (= res!2269436 (not lt!2180520))))

(declare-fun b!5348838 () Bool)

(declare-fun res!2269440 () Bool)

(assert (=> b!5348838 (=> (not res!2269440) (not e!3320622))))

(assert (=> b!5348838 (= res!2269440 (not call!382373))))

(declare-fun bm!382368 () Bool)

(assert (=> bm!382368 (= call!382373 (isEmpty!33257 s!2326))))

(assert (= (and d!1715257 c!931084) b!5348830))

(assert (= (and d!1715257 (not c!931084)) b!5348826))

(assert (= (and d!1715257 c!931083) b!5348834))

(assert (= (and d!1715257 (not c!931083)) b!5348836))

(assert (= (and b!5348836 c!931082) b!5348832))

(assert (= (and b!5348836 (not c!931082)) b!5348831))

(assert (= (and b!5348831 (not res!2269435)) b!5348833))

(assert (= (and b!5348833 res!2269433) b!5348838))

(assert (= (and b!5348838 res!2269440) b!5348829))

(assert (= (and b!5348829 res!2269438) b!5348827))

(assert (= (and b!5348833 (not res!2269437)) b!5348837))

(assert (= (and b!5348837 res!2269436) b!5348835))

(assert (= (and b!5348835 (not res!2269439)) b!5348825))

(assert (= (and b!5348825 (not res!2269434)) b!5348828))

(assert (= (or b!5348834 b!5348838 b!5348835) bm!382368))

(assert (=> b!5348827 m!6379786))

(assert (=> b!5348826 m!6379786))

(assert (=> b!5348826 m!6379786))

(declare-fun m!6380152 () Bool)

(assert (=> b!5348826 m!6380152))

(assert (=> b!5348826 m!6379790))

(assert (=> b!5348826 m!6380152))

(assert (=> b!5348826 m!6379790))

(declare-fun m!6380154 () Bool)

(assert (=> b!5348826 m!6380154))

(assert (=> b!5348829 m!6379790))

(assert (=> b!5348829 m!6379790))

(assert (=> b!5348829 m!6379794))

(assert (=> bm!382368 m!6379772))

(assert (=> b!5348828 m!6379786))

(declare-fun m!6380156 () Bool)

(assert (=> b!5348830 m!6380156))

(assert (=> d!1715257 m!6379772))

(assert (=> d!1715257 m!6380150))

(assert (=> b!5348825 m!6379790))

(assert (=> b!5348825 m!6379790))

(assert (=> b!5348825 m!6379794))

(assert (=> b!5348119 d!1715257))

(declare-fun d!1715259 () Bool)

(declare-fun c!931087 () Bool)

(assert (=> d!1715259 (= c!931087 (isEmpty!33257 s!2326))))

(declare-fun e!3320631 () Bool)

(assert (=> d!1715259 (= (matchZipper!1279 lt!2180396 s!2326) e!3320631)))

(declare-fun b!5348844 () Bool)

(assert (=> b!5348844 (= e!3320631 (nullableZipper!1375 lt!2180396))))

(declare-fun b!5348845 () Bool)

(assert (=> b!5348845 (= e!3320631 (matchZipper!1279 (derivationStepZipper!1276 lt!2180396 (head!11468 s!2326)) (tail!10565 s!2326)))))

(assert (= (and d!1715259 c!931087) b!5348844))

(assert (= (and d!1715259 (not c!931087)) b!5348845))

(assert (=> d!1715259 m!6379772))

(declare-fun m!6380162 () Bool)

(assert (=> b!5348844 m!6380162))

(assert (=> b!5348845 m!6379786))

(assert (=> b!5348845 m!6379786))

(declare-fun m!6380166 () Bool)

(assert (=> b!5348845 m!6380166))

(assert (=> b!5348845 m!6379790))

(assert (=> b!5348845 m!6380166))

(assert (=> b!5348845 m!6379790))

(declare-fun m!6380168 () Bool)

(assert (=> b!5348845 m!6380168))

(assert (=> b!5348119 d!1715259))

(declare-fun b!5348851 () Bool)

(declare-fun res!2269443 () Bool)

(declare-fun e!3320639 () Bool)

(assert (=> b!5348851 (=> (not res!2269443) (not e!3320639))))

(declare-fun lt!2180521 () Option!15146)

(assert (=> b!5348851 (= res!2269443 (matchR!7220 (regOne!30582 (regOne!30582 r!7292)) (_1!35537 (get!21078 lt!2180521))))))

(declare-fun b!5348852 () Bool)

(declare-fun e!3320638 () Bool)

(assert (=> b!5348852 (= e!3320638 (not (isDefined!11849 lt!2180521)))))

(declare-fun b!5348853 () Bool)

(declare-fun res!2269445 () Bool)

(assert (=> b!5348853 (=> (not res!2269445) (not e!3320639))))

(assert (=> b!5348853 (= res!2269445 (matchR!7220 lt!2180408 (_2!35537 (get!21078 lt!2180521))))))

(declare-fun b!5348854 () Bool)

(declare-fun e!3320635 () Option!15146)

(assert (=> b!5348854 (= e!3320635 (Some!15145 (tuple2!64469 Nil!61281 s!2326)))))

(declare-fun d!1715263 () Bool)

(assert (=> d!1715263 e!3320638))

(declare-fun res!2269446 () Bool)

(assert (=> d!1715263 (=> res!2269446 e!3320638)))

(assert (=> d!1715263 (= res!2269446 e!3320639)))

(declare-fun res!2269444 () Bool)

(assert (=> d!1715263 (=> (not res!2269444) (not e!3320639))))

(assert (=> d!1715263 (= res!2269444 (isDefined!11849 lt!2180521))))

(assert (=> d!1715263 (= lt!2180521 e!3320635)))

(declare-fun c!931091 () Bool)

(declare-fun e!3320637 () Bool)

(assert (=> d!1715263 (= c!931091 e!3320637)))

(declare-fun res!2269447 () Bool)

(assert (=> d!1715263 (=> (not res!2269447) (not e!3320637))))

(assert (=> d!1715263 (= res!2269447 (matchR!7220 (regOne!30582 (regOne!30582 r!7292)) Nil!61281))))

(assert (=> d!1715263 (validRegex!6771 (regOne!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715263 (= (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 Nil!61281 s!2326 s!2326) lt!2180521)))

(declare-fun b!5348855 () Bool)

(assert (=> b!5348855 (= e!3320637 (matchR!7220 lt!2180408 s!2326))))

(declare-fun b!5348856 () Bool)

(declare-fun lt!2180523 () Unit!153658)

(declare-fun lt!2180522 () Unit!153658)

(assert (=> b!5348856 (= lt!2180523 lt!2180522)))

(assert (=> b!5348856 (= (++!13355 (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326)) s!2326)))

(assert (=> b!5348856 (= lt!2180522 (lemmaMoveElementToOtherListKeepsConcatEq!1770 Nil!61281 (h!67729 s!2326) (t!374622 s!2326) s!2326))))

(declare-fun e!3320636 () Option!15146)

(assert (=> b!5348856 (= e!3320636 (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326) s!2326))))

(declare-fun b!5348857 () Bool)

(assert (=> b!5348857 (= e!3320635 e!3320636)))

(declare-fun c!931090 () Bool)

(assert (=> b!5348857 (= c!931090 ((_ is Nil!61281) s!2326))))

(declare-fun b!5348858 () Bool)

(assert (=> b!5348858 (= e!3320639 (= (++!13355 (_1!35537 (get!21078 lt!2180521)) (_2!35537 (get!21078 lt!2180521))) s!2326))))

(declare-fun b!5348859 () Bool)

(assert (=> b!5348859 (= e!3320636 None!15145)))

(assert (= (and d!1715263 res!2269447) b!5348855))

(assert (= (and d!1715263 c!931091) b!5348854))

(assert (= (and d!1715263 (not c!931091)) b!5348857))

(assert (= (and b!5348857 c!931090) b!5348859))

(assert (= (and b!5348857 (not c!931090)) b!5348856))

(assert (= (and d!1715263 res!2269444) b!5348851))

(assert (= (and b!5348851 res!2269443) b!5348853))

(assert (= (and b!5348853 res!2269445) b!5348858))

(assert (= (and d!1715263 (not res!2269446)) b!5348852))

(assert (=> b!5348856 m!6379834))

(assert (=> b!5348856 m!6379834))

(assert (=> b!5348856 m!6379836))

(assert (=> b!5348856 m!6379838))

(assert (=> b!5348856 m!6379834))

(declare-fun m!6380174 () Bool)

(assert (=> b!5348856 m!6380174))

(assert (=> b!5348855 m!6379624))

(declare-fun m!6380178 () Bool)

(assert (=> b!5348853 m!6380178))

(declare-fun m!6380182 () Bool)

(assert (=> b!5348853 m!6380182))

(declare-fun m!6380184 () Bool)

(assert (=> b!5348852 m!6380184))

(assert (=> b!5348851 m!6380178))

(declare-fun m!6380188 () Bool)

(assert (=> b!5348851 m!6380188))

(assert (=> d!1715263 m!6380184))

(declare-fun m!6380190 () Bool)

(assert (=> d!1715263 m!6380190))

(assert (=> d!1715263 m!6379954))

(assert (=> b!5348858 m!6380178))

(declare-fun m!6380196 () Bool)

(assert (=> b!5348858 m!6380196))

(assert (=> b!5348119 d!1715263))

(declare-fun d!1715269 () Bool)

(assert (=> d!1715269 (= (Exists!2216 lambda!274744) (choose!40113 lambda!274744))))

(declare-fun bs!1239975 () Bool)

(assert (= bs!1239975 d!1715269))

(declare-fun m!6380198 () Bool)

(assert (=> bs!1239975 m!6380198))

(assert (=> b!5348119 d!1715269))

(declare-fun d!1715271 () Bool)

(assert (=> d!1715271 (= (Exists!2216 lambda!274745) (choose!40113 lambda!274745))))

(declare-fun bs!1239976 () Bool)

(assert (= bs!1239976 d!1715271))

(declare-fun m!6380200 () Bool)

(assert (=> bs!1239976 m!6380200))

(assert (=> b!5348119 d!1715271))

(declare-fun d!1715273 () Bool)

(assert (=> d!1715273 (= (Exists!2216 lambda!274747) (choose!40113 lambda!274747))))

(declare-fun bs!1239977 () Bool)

(assert (= bs!1239977 d!1715273))

(declare-fun m!6380202 () Bool)

(assert (=> bs!1239977 m!6380202))

(assert (=> b!5348119 d!1715273))

(declare-fun bs!1239978 () Bool)

(declare-fun d!1715275 () Bool)

(assert (= bs!1239978 (and d!1715275 b!5348119)))

(declare-fun lambda!274814 () Int)

(assert (=> bs!1239978 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274814 lambda!274744))))

(declare-fun bs!1239979 () Bool)

(assert (= bs!1239979 (and d!1715275 d!1715163)))

(assert (=> bs!1239979 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274814 lambda!274780))))

(declare-fun bs!1239980 () Bool)

(assert (= bs!1239980 (and d!1715275 d!1715167)))

(assert (=> bs!1239980 (not (= lambda!274814 lambda!274789))))

(declare-fun bs!1239981 () Bool)

(assert (= bs!1239981 (and d!1715275 b!5348124)))

(assert (=> bs!1239981 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274814 lambda!274741))))

(assert (=> bs!1239981 (not (= lambda!274814 lambda!274742))))

(assert (=> bs!1239978 (not (= lambda!274814 lambda!274745))))

(declare-fun bs!1239982 () Bool)

(assert (= bs!1239982 (and d!1715275 b!5348285)))

(assert (=> bs!1239982 (not (= lambda!274814 lambda!274770))))

(assert (=> bs!1239978 (not (= lambda!274814 lambda!274747))))

(assert (=> bs!1239980 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274814 lambda!274788))))

(declare-fun bs!1239983 () Bool)

(assert (= bs!1239983 (and d!1715275 b!5348288)))

(assert (=> bs!1239983 (not (= lambda!274814 lambda!274771))))

(assert (=> bs!1239978 (= lambda!274814 lambda!274746)))

(assert (=> d!1715275 true))

(assert (=> d!1715275 true))

(assert (=> d!1715275 true))

(declare-fun lambda!274815 () Int)

(assert (=> bs!1239978 (not (= lambda!274815 lambda!274744))))

(assert (=> bs!1239979 (not (= lambda!274815 lambda!274780))))

(assert (=> bs!1239980 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274815 lambda!274789))))

(assert (=> bs!1239981 (not (= lambda!274815 lambda!274741))))

(assert (=> bs!1239981 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274815 lambda!274742))))

(assert (=> bs!1239982 (not (= lambda!274815 lambda!274770))))

(assert (=> bs!1239978 (= lambda!274815 lambda!274747)))

(assert (=> bs!1239980 (not (= lambda!274815 lambda!274788))))

(assert (=> bs!1239983 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274815 lambda!274771))))

(assert (=> bs!1239978 (not (= lambda!274815 lambda!274746))))

(assert (=> bs!1239978 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274815 lambda!274745))))

(declare-fun bs!1239985 () Bool)

(assert (= bs!1239985 d!1715275))

(assert (=> bs!1239985 (not (= lambda!274815 lambda!274814))))

(assert (=> d!1715275 true))

(assert (=> d!1715275 true))

(assert (=> d!1715275 true))

(assert (=> d!1715275 (= (Exists!2216 lambda!274814) (Exists!2216 lambda!274815))))

(declare-fun lt!2180524 () Unit!153658)

(assert (=> d!1715275 (= lt!2180524 (choose!40116 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(assert (=> d!1715275 (validRegex!6771 (regTwo!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715275 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326) lt!2180524)))

(declare-fun m!6380216 () Bool)

(assert (=> bs!1239985 m!6380216))

(declare-fun m!6380218 () Bool)

(assert (=> bs!1239985 m!6380218))

(declare-fun m!6380220 () Bool)

(assert (=> bs!1239985 m!6380220))

(assert (=> bs!1239985 m!6379956))

(assert (=> b!5348119 d!1715275))

(declare-fun b!5348879 () Bool)

(declare-fun res!2269450 () Bool)

(declare-fun e!3320653 () Bool)

(assert (=> b!5348879 (=> (not res!2269450) (not e!3320653))))

(declare-fun lt!2180530 () Option!15146)

(assert (=> b!5348879 (= res!2269450 (matchR!7220 (regTwo!30582 (regOne!30582 r!7292)) (_1!35537 (get!21078 lt!2180530))))))

(declare-fun b!5348881 () Bool)

(declare-fun e!3320652 () Bool)

(assert (=> b!5348881 (= e!3320652 (not (isDefined!11849 lt!2180530)))))

(declare-fun b!5348882 () Bool)

(declare-fun res!2269452 () Bool)

(assert (=> b!5348882 (=> (not res!2269452) (not e!3320653))))

(assert (=> b!5348882 (= res!2269452 (matchR!7220 lt!2180400 (_2!35537 (get!21078 lt!2180530))))))

(declare-fun b!5348883 () Bool)

(declare-fun e!3320649 () Option!15146)

(assert (=> b!5348883 (= e!3320649 (Some!15145 (tuple2!64469 Nil!61281 s!2326)))))

(declare-fun d!1715283 () Bool)

(assert (=> d!1715283 e!3320652))

(declare-fun res!2269453 () Bool)

(assert (=> d!1715283 (=> res!2269453 e!3320652)))

(assert (=> d!1715283 (= res!2269453 e!3320653)))

(declare-fun res!2269451 () Bool)

(assert (=> d!1715283 (=> (not res!2269451) (not e!3320653))))

(assert (=> d!1715283 (= res!2269451 (isDefined!11849 lt!2180530))))

(assert (=> d!1715283 (= lt!2180530 e!3320649)))

(declare-fun c!931100 () Bool)

(declare-fun e!3320651 () Bool)

(assert (=> d!1715283 (= c!931100 e!3320651)))

(declare-fun res!2269454 () Bool)

(assert (=> d!1715283 (=> (not res!2269454) (not e!3320651))))

(assert (=> d!1715283 (= res!2269454 (matchR!7220 (regTwo!30582 (regOne!30582 r!7292)) Nil!61281))))

(assert (=> d!1715283 (validRegex!6771 (regTwo!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715283 (= (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 Nil!61281 s!2326 s!2326) lt!2180530)))

(declare-fun b!5348884 () Bool)

(assert (=> b!5348884 (= e!3320651 (matchR!7220 lt!2180400 s!2326))))

(declare-fun b!5348885 () Bool)

(declare-fun lt!2180532 () Unit!153658)

(declare-fun lt!2180531 () Unit!153658)

(assert (=> b!5348885 (= lt!2180532 lt!2180531)))

(assert (=> b!5348885 (= (++!13355 (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326)) s!2326)))

(assert (=> b!5348885 (= lt!2180531 (lemmaMoveElementToOtherListKeepsConcatEq!1770 Nil!61281 (h!67729 s!2326) (t!374622 s!2326) s!2326))))

(declare-fun e!3320650 () Option!15146)

(assert (=> b!5348885 (= e!3320650 (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 (++!13355 Nil!61281 (Cons!61281 (h!67729 s!2326) Nil!61281)) (t!374622 s!2326) s!2326))))

(declare-fun b!5348886 () Bool)

(assert (=> b!5348886 (= e!3320649 e!3320650)))

(declare-fun c!931099 () Bool)

(assert (=> b!5348886 (= c!931099 ((_ is Nil!61281) s!2326))))

(declare-fun b!5348887 () Bool)

(assert (=> b!5348887 (= e!3320653 (= (++!13355 (_1!35537 (get!21078 lt!2180530)) (_2!35537 (get!21078 lt!2180530))) s!2326))))

(declare-fun b!5348888 () Bool)

(assert (=> b!5348888 (= e!3320650 None!15145)))

(assert (= (and d!1715283 res!2269454) b!5348884))

(assert (= (and d!1715283 c!931100) b!5348883))

(assert (= (and d!1715283 (not c!931100)) b!5348886))

(assert (= (and b!5348886 c!931099) b!5348888))

(assert (= (and b!5348886 (not c!931099)) b!5348885))

(assert (= (and d!1715283 res!2269451) b!5348879))

(assert (= (and b!5348879 res!2269450) b!5348882))

(assert (= (and b!5348882 res!2269452) b!5348887))

(assert (= (and d!1715283 (not res!2269453)) b!5348881))

(assert (=> b!5348885 m!6379834))

(assert (=> b!5348885 m!6379834))

(assert (=> b!5348885 m!6379836))

(assert (=> b!5348885 m!6379838))

(assert (=> b!5348885 m!6379834))

(declare-fun m!6380222 () Bool)

(assert (=> b!5348885 m!6380222))

(declare-fun m!6380224 () Bool)

(assert (=> b!5348884 m!6380224))

(declare-fun m!6380226 () Bool)

(assert (=> b!5348882 m!6380226))

(declare-fun m!6380232 () Bool)

(assert (=> b!5348882 m!6380232))

(declare-fun m!6380234 () Bool)

(assert (=> b!5348881 m!6380234))

(assert (=> b!5348879 m!6380226))

(declare-fun m!6380236 () Bool)

(assert (=> b!5348879 m!6380236))

(assert (=> d!1715283 m!6380234))

(declare-fun m!6380238 () Bool)

(assert (=> d!1715283 m!6380238))

(assert (=> d!1715283 m!6379956))

(assert (=> b!5348887 m!6380226))

(declare-fun m!6380240 () Bool)

(assert (=> b!5348887 m!6380240))

(assert (=> b!5348119 d!1715283))

(declare-fun bs!1239988 () Bool)

(declare-fun d!1715287 () Bool)

(assert (= bs!1239988 (and d!1715287 d!1715125)))

(declare-fun lambda!274817 () Int)

(assert (=> bs!1239988 (= lambda!274817 lambda!274762)))

(declare-fun bs!1239989 () Bool)

(assert (= bs!1239989 (and d!1715287 d!1715195)))

(assert (=> bs!1239989 (= lambda!274817 lambda!274804)))

(declare-fun bs!1239991 () Bool)

(assert (= bs!1239991 (and d!1715287 d!1715229)))

(assert (=> bs!1239991 (= lambda!274817 lambda!274810)))

(declare-fun bs!1239992 () Bool)

(assert (= bs!1239992 (and d!1715287 d!1715233)))

(assert (=> bs!1239992 (= lambda!274817 lambda!274813)))

(declare-fun b!5348893 () Bool)

(declare-fun e!3320659 () Bool)

(assert (=> b!5348893 (= e!3320659 (isEmpty!33255 (t!374621 (t!374621 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348894 () Bool)

(declare-fun e!3320658 () Bool)

(declare-fun lt!2180535 () Regex!15035)

(assert (=> b!5348894 (= e!3320658 (isConcat!433 lt!2180535))))

(declare-fun b!5348895 () Bool)

(assert (=> b!5348895 (= e!3320658 (= lt!2180535 (head!11470 (t!374621 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun b!5348896 () Bool)

(declare-fun e!3320661 () Bool)

(assert (=> b!5348896 (= e!3320661 e!3320658)))

(declare-fun c!931105 () Bool)

(assert (=> b!5348896 (= c!931105 (isEmpty!33255 (tail!10567 (t!374621 (exprs!4919 (h!67730 zl!343))))))))

(declare-fun e!3320660 () Bool)

(assert (=> d!1715287 e!3320660))

(declare-fun res!2269455 () Bool)

(assert (=> d!1715287 (=> (not res!2269455) (not e!3320660))))

(assert (=> d!1715287 (= res!2269455 (validRegex!6771 lt!2180535))))

(declare-fun e!3320663 () Regex!15035)

(assert (=> d!1715287 (= lt!2180535 e!3320663)))

(declare-fun c!931108 () Bool)

(assert (=> d!1715287 (= c!931108 e!3320659)))

(declare-fun res!2269456 () Bool)

(assert (=> d!1715287 (=> (not res!2269456) (not e!3320659))))

(assert (=> d!1715287 (= res!2269456 ((_ is Cons!61280) (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(assert (=> d!1715287 (forall!14459 (t!374621 (exprs!4919 (h!67730 zl!343))) lambda!274817)))

(assert (=> d!1715287 (= (generalisedConcat!704 (t!374621 (exprs!4919 (h!67730 zl!343)))) lt!2180535)))

(declare-fun b!5348897 () Bool)

(assert (=> b!5348897 (= e!3320661 (isEmptyExpr!910 lt!2180535))))

(declare-fun b!5348898 () Bool)

(assert (=> b!5348898 (= e!3320663 (h!67728 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348899 () Bool)

(declare-fun e!3320662 () Regex!15035)

(assert (=> b!5348899 (= e!3320662 EmptyExpr!15035)))

(declare-fun b!5348900 () Bool)

(assert (=> b!5348900 (= e!3320662 (Concat!23880 (h!67728 (t!374621 (exprs!4919 (h!67730 zl!343)))) (generalisedConcat!704 (t!374621 (t!374621 (exprs!4919 (h!67730 zl!343)))))))))

(declare-fun b!5348901 () Bool)

(assert (=> b!5348901 (= e!3320663 e!3320662)))

(declare-fun c!931107 () Bool)

(assert (=> b!5348901 (= c!931107 ((_ is Cons!61280) (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(declare-fun b!5348902 () Bool)

(assert (=> b!5348902 (= e!3320660 e!3320661)))

(declare-fun c!931106 () Bool)

(assert (=> b!5348902 (= c!931106 (isEmpty!33255 (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(assert (= (and d!1715287 res!2269456) b!5348893))

(assert (= (and d!1715287 c!931108) b!5348898))

(assert (= (and d!1715287 (not c!931108)) b!5348901))

(assert (= (and b!5348901 c!931107) b!5348900))

(assert (= (and b!5348901 (not c!931107)) b!5348899))

(assert (= (and d!1715287 res!2269455) b!5348902))

(assert (= (and b!5348902 c!931106) b!5348897))

(assert (= (and b!5348902 (not c!931106)) b!5348896))

(assert (= (and b!5348896 c!931105) b!5348895))

(assert (= (and b!5348896 (not c!931105)) b!5348894))

(assert (=> b!5348902 m!6379680))

(declare-fun m!6380246 () Bool)

(assert (=> b!5348900 m!6380246))

(declare-fun m!6380248 () Bool)

(assert (=> b!5348896 m!6380248))

(assert (=> b!5348896 m!6380248))

(declare-fun m!6380250 () Bool)

(assert (=> b!5348896 m!6380250))

(declare-fun m!6380252 () Bool)

(assert (=> b!5348894 m!6380252))

(declare-fun m!6380254 () Bool)

(assert (=> d!1715287 m!6380254))

(declare-fun m!6380256 () Bool)

(assert (=> d!1715287 m!6380256))

(declare-fun m!6380258 () Bool)

(assert (=> b!5348895 m!6380258))

(declare-fun m!6380260 () Bool)

(assert (=> b!5348893 m!6380260))

(declare-fun m!6380262 () Bool)

(assert (=> b!5348897 m!6380262))

(assert (=> b!5348119 d!1715287))

(declare-fun bs!1239993 () Bool)

(declare-fun d!1715293 () Bool)

(assert (= bs!1239993 (and d!1715293 d!1715233)))

(declare-fun lambda!274818 () Int)

(assert (=> bs!1239993 (= lambda!274818 lambda!274813)))

(declare-fun bs!1239994 () Bool)

(assert (= bs!1239994 (and d!1715293 d!1715229)))

(assert (=> bs!1239994 (= lambda!274818 lambda!274810)))

(declare-fun bs!1239995 () Bool)

(assert (= bs!1239995 (and d!1715293 d!1715125)))

(assert (=> bs!1239995 (= lambda!274818 lambda!274762)))

(declare-fun bs!1239996 () Bool)

(assert (= bs!1239996 (and d!1715293 d!1715195)))

(assert (=> bs!1239996 (= lambda!274818 lambda!274804)))

(declare-fun bs!1239997 () Bool)

(assert (= bs!1239997 (and d!1715293 d!1715287)))

(assert (=> bs!1239997 (= lambda!274818 lambda!274817)))

(declare-fun b!5348903 () Bool)

(declare-fun e!3320665 () Bool)

(assert (=> b!5348903 (= e!3320665 (isEmpty!33255 (t!374621 lt!2180375)))))

(declare-fun b!5348904 () Bool)

(declare-fun e!3320664 () Bool)

(declare-fun lt!2180536 () Regex!15035)

(assert (=> b!5348904 (= e!3320664 (isConcat!433 lt!2180536))))

(declare-fun b!5348905 () Bool)

(assert (=> b!5348905 (= e!3320664 (= lt!2180536 (head!11470 lt!2180375)))))

(declare-fun b!5348906 () Bool)

(declare-fun e!3320667 () Bool)

(assert (=> b!5348906 (= e!3320667 e!3320664)))

(declare-fun c!931109 () Bool)

(assert (=> b!5348906 (= c!931109 (isEmpty!33255 (tail!10567 lt!2180375)))))

(declare-fun e!3320666 () Bool)

(assert (=> d!1715293 e!3320666))

(declare-fun res!2269457 () Bool)

(assert (=> d!1715293 (=> (not res!2269457) (not e!3320666))))

(assert (=> d!1715293 (= res!2269457 (validRegex!6771 lt!2180536))))

(declare-fun e!3320669 () Regex!15035)

(assert (=> d!1715293 (= lt!2180536 e!3320669)))

(declare-fun c!931112 () Bool)

(assert (=> d!1715293 (= c!931112 e!3320665)))

(declare-fun res!2269458 () Bool)

(assert (=> d!1715293 (=> (not res!2269458) (not e!3320665))))

(assert (=> d!1715293 (= res!2269458 ((_ is Cons!61280) lt!2180375))))

(assert (=> d!1715293 (forall!14459 lt!2180375 lambda!274818)))

(assert (=> d!1715293 (= (generalisedConcat!704 lt!2180375) lt!2180536)))

(declare-fun b!5348907 () Bool)

(assert (=> b!5348907 (= e!3320667 (isEmptyExpr!910 lt!2180536))))

(declare-fun b!5348908 () Bool)

(assert (=> b!5348908 (= e!3320669 (h!67728 lt!2180375))))

(declare-fun b!5348909 () Bool)

(declare-fun e!3320668 () Regex!15035)

(assert (=> b!5348909 (= e!3320668 EmptyExpr!15035)))

(declare-fun b!5348910 () Bool)

(assert (=> b!5348910 (= e!3320668 (Concat!23880 (h!67728 lt!2180375) (generalisedConcat!704 (t!374621 lt!2180375))))))

(declare-fun b!5348911 () Bool)

(assert (=> b!5348911 (= e!3320669 e!3320668)))

(declare-fun c!931111 () Bool)

(assert (=> b!5348911 (= c!931111 ((_ is Cons!61280) lt!2180375))))

(declare-fun b!5348912 () Bool)

(assert (=> b!5348912 (= e!3320666 e!3320667)))

(declare-fun c!931110 () Bool)

(assert (=> b!5348912 (= c!931110 (isEmpty!33255 lt!2180375))))

(assert (= (and d!1715293 res!2269458) b!5348903))

(assert (= (and d!1715293 c!931112) b!5348908))

(assert (= (and d!1715293 (not c!931112)) b!5348911))

(assert (= (and b!5348911 c!931111) b!5348910))

(assert (= (and b!5348911 (not c!931111)) b!5348909))

(assert (= (and d!1715293 res!2269457) b!5348912))

(assert (= (and b!5348912 c!931110) b!5348907))

(assert (= (and b!5348912 (not c!931110)) b!5348906))

(assert (= (and b!5348906 c!931109) b!5348905))

(assert (= (and b!5348906 (not c!931109)) b!5348904))

(declare-fun m!6380264 () Bool)

(assert (=> b!5348912 m!6380264))

(declare-fun m!6380266 () Bool)

(assert (=> b!5348910 m!6380266))

(declare-fun m!6380268 () Bool)

(assert (=> b!5348906 m!6380268))

(assert (=> b!5348906 m!6380268))

(declare-fun m!6380270 () Bool)

(assert (=> b!5348906 m!6380270))

(declare-fun m!6380272 () Bool)

(assert (=> b!5348904 m!6380272))

(declare-fun m!6380274 () Bool)

(assert (=> d!1715293 m!6380274))

(declare-fun m!6380276 () Bool)

(assert (=> d!1715293 m!6380276))

(declare-fun m!6380278 () Bool)

(assert (=> b!5348905 m!6380278))

(declare-fun m!6380280 () Bool)

(assert (=> b!5348903 m!6380280))

(declare-fun m!6380282 () Bool)

(assert (=> b!5348907 m!6380282))

(assert (=> b!5348119 d!1715293))

(declare-fun bs!1239998 () Bool)

(declare-fun b!5348915 () Bool)

(assert (= bs!1239998 (and b!5348915 b!5348119)))

(declare-fun lambda!274819 () Int)

(assert (=> bs!1239998 (not (= lambda!274819 lambda!274744))))

(declare-fun bs!1239999 () Bool)

(assert (= bs!1239999 (and b!5348915 d!1715163)))

(assert (=> bs!1239999 (not (= lambda!274819 lambda!274780))))

(declare-fun bs!1240000 () Bool)

(assert (= bs!1240000 (and b!5348915 d!1715167)))

(assert (=> bs!1240000 (not (= lambda!274819 lambda!274789))))

(declare-fun bs!1240001 () Bool)

(assert (= bs!1240001 (and b!5348915 b!5348124)))

(assert (=> bs!1240001 (not (= lambda!274819 lambda!274741))))

(declare-fun bs!1240002 () Bool)

(assert (= bs!1240002 (and b!5348915 d!1715275)))

(assert (=> bs!1240002 (not (= lambda!274819 lambda!274815))))

(assert (=> bs!1240001 (not (= lambda!274819 lambda!274742))))

(declare-fun bs!1240003 () Bool)

(assert (= bs!1240003 (and b!5348915 b!5348285)))

(assert (=> bs!1240003 (= (and (= (reg!15364 lt!2180408) (reg!15364 r!7292)) (= lt!2180408 r!7292)) (= lambda!274819 lambda!274770))))

(assert (=> bs!1239998 (not (= lambda!274819 lambda!274747))))

(assert (=> bs!1240000 (not (= lambda!274819 lambda!274788))))

(declare-fun bs!1240004 () Bool)

(assert (= bs!1240004 (and b!5348915 b!5348288)))

(assert (=> bs!1240004 (not (= lambda!274819 lambda!274771))))

(assert (=> bs!1239998 (not (= lambda!274819 lambda!274746))))

(assert (=> bs!1239998 (not (= lambda!274819 lambda!274745))))

(assert (=> bs!1240002 (not (= lambda!274819 lambda!274814))))

(assert (=> b!5348915 true))

(assert (=> b!5348915 true))

(declare-fun bs!1240005 () Bool)

(declare-fun b!5348918 () Bool)

(assert (= bs!1240005 (and b!5348918 b!5348119)))

(declare-fun lambda!274820 () Int)

(assert (=> bs!1240005 (not (= lambda!274820 lambda!274744))))

(declare-fun bs!1240006 () Bool)

(assert (= bs!1240006 (and b!5348918 d!1715163)))

(assert (=> bs!1240006 (not (= lambda!274820 lambda!274780))))

(declare-fun bs!1240007 () Bool)

(assert (= bs!1240007 (and b!5348918 b!5348915)))

(assert (=> bs!1240007 (not (= lambda!274820 lambda!274819))))

(declare-fun bs!1240008 () Bool)

(assert (= bs!1240008 (and b!5348918 d!1715167)))

(assert (=> bs!1240008 (= (and (= (regOne!30582 lt!2180408) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180408) (regTwo!30582 r!7292))) (= lambda!274820 lambda!274789))))

(declare-fun bs!1240009 () Bool)

(assert (= bs!1240009 (and b!5348918 b!5348124)))

(assert (=> bs!1240009 (not (= lambda!274820 lambda!274741))))

(declare-fun bs!1240010 () Bool)

(assert (= bs!1240010 (and b!5348918 d!1715275)))

(assert (=> bs!1240010 (= (and (= (regOne!30582 lt!2180408) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180408) lt!2180400)) (= lambda!274820 lambda!274815))))

(assert (=> bs!1240009 (= (and (= (regOne!30582 lt!2180408) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180408) (regTwo!30582 r!7292))) (= lambda!274820 lambda!274742))))

(declare-fun bs!1240011 () Bool)

(assert (= bs!1240011 (and b!5348918 b!5348285)))

(assert (=> bs!1240011 (not (= lambda!274820 lambda!274770))))

(assert (=> bs!1240005 (= (and (= (regOne!30582 lt!2180408) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180408) lt!2180400)) (= lambda!274820 lambda!274747))))

(assert (=> bs!1240008 (not (= lambda!274820 lambda!274788))))

(declare-fun bs!1240012 () Bool)

(assert (= bs!1240012 (and b!5348918 b!5348288)))

(assert (=> bs!1240012 (= (and (= (regOne!30582 lt!2180408) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180408) (regTwo!30582 r!7292))) (= lambda!274820 lambda!274771))))

(assert (=> bs!1240005 (not (= lambda!274820 lambda!274746))))

(assert (=> bs!1240005 (= (and (= (regOne!30582 lt!2180408) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180408) lt!2180408)) (= lambda!274820 lambda!274745))))

(assert (=> bs!1240010 (not (= lambda!274820 lambda!274814))))

(assert (=> b!5348918 true))

(assert (=> b!5348918 true))

(declare-fun b!5348913 () Bool)

(declare-fun res!2269461 () Bool)

(declare-fun e!3320672 () Bool)

(assert (=> b!5348913 (=> res!2269461 e!3320672)))

(declare-fun call!382383 () Bool)

(assert (=> b!5348913 (= res!2269461 call!382383)))

(declare-fun e!3320675 () Bool)

(assert (=> b!5348913 (= e!3320675 e!3320672)))

(declare-fun b!5348914 () Bool)

(declare-fun e!3320673 () Bool)

(assert (=> b!5348914 (= e!3320673 (matchRSpec!2138 (regTwo!30583 lt!2180408) s!2326))))

(declare-fun call!382384 () Bool)

(assert (=> b!5348915 (= e!3320672 call!382384)))

(declare-fun c!931116 () Bool)

(declare-fun bm!382378 () Bool)

(assert (=> bm!382378 (= call!382384 (Exists!2216 (ite c!931116 lambda!274819 lambda!274820)))))

(declare-fun b!5348916 () Bool)

(declare-fun c!931114 () Bool)

(assert (=> b!5348916 (= c!931114 ((_ is ElementMatch!15035) lt!2180408))))

(declare-fun e!3320671 () Bool)

(declare-fun e!3320670 () Bool)

(assert (=> b!5348916 (= e!3320671 e!3320670)))

(declare-fun d!1715295 () Bool)

(declare-fun c!931115 () Bool)

(assert (=> d!1715295 (= c!931115 ((_ is EmptyExpr!15035) lt!2180408))))

(declare-fun e!3320676 () Bool)

(assert (=> d!1715295 (= (matchRSpec!2138 lt!2180408 s!2326) e!3320676)))

(declare-fun b!5348917 () Bool)

(declare-fun e!3320674 () Bool)

(assert (=> b!5348917 (= e!3320674 e!3320673)))

(declare-fun res!2269459 () Bool)

(assert (=> b!5348917 (= res!2269459 (matchRSpec!2138 (regOne!30583 lt!2180408) s!2326))))

(assert (=> b!5348917 (=> res!2269459 e!3320673)))

(assert (=> b!5348918 (= e!3320675 call!382384)))

(declare-fun b!5348919 () Bool)

(assert (=> b!5348919 (= e!3320676 e!3320671)))

(declare-fun res!2269460 () Bool)

(assert (=> b!5348919 (= res!2269460 (not ((_ is EmptyLang!15035) lt!2180408)))))

(assert (=> b!5348919 (=> (not res!2269460) (not e!3320671))))

(declare-fun b!5348920 () Bool)

(assert (=> b!5348920 (= e!3320674 e!3320675)))

(assert (=> b!5348920 (= c!931116 ((_ is Star!15035) lt!2180408))))

(declare-fun bm!382379 () Bool)

(assert (=> bm!382379 (= call!382383 (isEmpty!33257 s!2326))))

(declare-fun b!5348921 () Bool)

(assert (=> b!5348921 (= e!3320670 (= s!2326 (Cons!61281 (c!930865 lt!2180408) Nil!61281)))))

(declare-fun b!5348922 () Bool)

(declare-fun c!931113 () Bool)

(assert (=> b!5348922 (= c!931113 ((_ is Union!15035) lt!2180408))))

(assert (=> b!5348922 (= e!3320670 e!3320674)))

(declare-fun b!5348923 () Bool)

(assert (=> b!5348923 (= e!3320676 call!382383)))

(assert (= (and d!1715295 c!931115) b!5348923))

(assert (= (and d!1715295 (not c!931115)) b!5348919))

(assert (= (and b!5348919 res!2269460) b!5348916))

(assert (= (and b!5348916 c!931114) b!5348921))

(assert (= (and b!5348916 (not c!931114)) b!5348922))

(assert (= (and b!5348922 c!931113) b!5348917))

(assert (= (and b!5348922 (not c!931113)) b!5348920))

(assert (= (and b!5348917 (not res!2269459)) b!5348914))

(assert (= (and b!5348920 c!931116) b!5348913))

(assert (= (and b!5348920 (not c!931116)) b!5348918))

(assert (= (and b!5348913 (not res!2269461)) b!5348915))

(assert (= (or b!5348915 b!5348918) bm!382378))

(assert (= (or b!5348923 b!5348913) bm!382379))

(declare-fun m!6380284 () Bool)

(assert (=> b!5348914 m!6380284))

(declare-fun m!6380286 () Bool)

(assert (=> bm!382378 m!6380286))

(declare-fun m!6380288 () Bool)

(assert (=> b!5348917 m!6380288))

(assert (=> bm!382379 m!6379772))

(assert (=> b!5348119 d!1715295))

(declare-fun d!1715297 () Bool)

(declare-fun c!931117 () Bool)

(assert (=> d!1715297 (= c!931117 (isEmpty!33257 s!2326))))

(declare-fun e!3320677 () Bool)

(assert (=> d!1715297 (= (matchZipper!1279 z!1189 s!2326) e!3320677)))

(declare-fun b!5348924 () Bool)

(assert (=> b!5348924 (= e!3320677 (nullableZipper!1375 z!1189))))

(declare-fun b!5348925 () Bool)

(assert (=> b!5348925 (= e!3320677 (matchZipper!1279 (derivationStepZipper!1276 z!1189 (head!11468 s!2326)) (tail!10565 s!2326)))))

(assert (= (and d!1715297 c!931117) b!5348924))

(assert (= (and d!1715297 (not c!931117)) b!5348925))

(assert (=> d!1715297 m!6379772))

(declare-fun m!6380290 () Bool)

(assert (=> b!5348924 m!6380290))

(assert (=> b!5348925 m!6379786))

(assert (=> b!5348925 m!6379786))

(declare-fun m!6380292 () Bool)

(assert (=> b!5348925 m!6380292))

(assert (=> b!5348925 m!6379790))

(assert (=> b!5348925 m!6380292))

(assert (=> b!5348925 m!6379790))

(declare-fun m!6380294 () Bool)

(assert (=> b!5348925 m!6380294))

(assert (=> b!5348119 d!1715297))

(declare-fun bs!1240013 () Bool)

(declare-fun d!1715299 () Bool)

(assert (= bs!1240013 (and d!1715299 b!5348119)))

(declare-fun lambda!274821 () Int)

(assert (=> bs!1240013 (= lambda!274821 lambda!274744)))

(declare-fun bs!1240014 () Bool)

(assert (= bs!1240014 (and d!1715299 d!1715163)))

(assert (=> bs!1240014 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274821 lambda!274780))))

(declare-fun bs!1240015 () Bool)

(assert (= bs!1240015 (and d!1715299 d!1715167)))

(assert (=> bs!1240015 (not (= lambda!274821 lambda!274789))))

(declare-fun bs!1240016 () Bool)

(assert (= bs!1240016 (and d!1715299 b!5348124)))

(assert (=> bs!1240016 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274821 lambda!274741))))

(declare-fun bs!1240017 () Bool)

(assert (= bs!1240017 (and d!1715299 d!1715275)))

(assert (=> bs!1240017 (not (= lambda!274821 lambda!274815))))

(assert (=> bs!1240016 (not (= lambda!274821 lambda!274742))))

(declare-fun bs!1240018 () Bool)

(assert (= bs!1240018 (and d!1715299 b!5348285)))

(assert (=> bs!1240018 (not (= lambda!274821 lambda!274770))))

(assert (=> bs!1240013 (not (= lambda!274821 lambda!274747))))

(assert (=> bs!1240015 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274821 lambda!274788))))

(declare-fun bs!1240019 () Bool)

(assert (= bs!1240019 (and d!1715299 b!5348288)))

(assert (=> bs!1240019 (not (= lambda!274821 lambda!274771))))

(assert (=> bs!1240013 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274821 lambda!274746))))

(declare-fun bs!1240020 () Bool)

(assert (= bs!1240020 (and d!1715299 b!5348915)))

(assert (=> bs!1240020 (not (= lambda!274821 lambda!274819))))

(declare-fun bs!1240021 () Bool)

(assert (= bs!1240021 (and d!1715299 b!5348918)))

(assert (=> bs!1240021 (not (= lambda!274821 lambda!274820))))

(assert (=> bs!1240013 (not (= lambda!274821 lambda!274745))))

(assert (=> bs!1240017 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274821 lambda!274814))))

(assert (=> d!1715299 true))

(assert (=> d!1715299 true))

(assert (=> d!1715299 true))

(assert (=> d!1715299 (= (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 Nil!61281 s!2326 s!2326)) (Exists!2216 lambda!274821))))

(declare-fun lt!2180537 () Unit!153658)

(assert (=> d!1715299 (= lt!2180537 (choose!40115 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326))))

(assert (=> d!1715299 (validRegex!6771 (regOne!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715299 (= (lemmaFindConcatSeparationEquivalentToExists!1324 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326) lt!2180537)))

(declare-fun bs!1240022 () Bool)

(assert (= bs!1240022 d!1715299))

(assert (=> bs!1240022 m!6379620))

(assert (=> bs!1240022 m!6379640))

(declare-fun m!6380296 () Bool)

(assert (=> bs!1240022 m!6380296))

(assert (=> bs!1240022 m!6379620))

(assert (=> bs!1240022 m!6379954))

(declare-fun m!6380298 () Bool)

(assert (=> bs!1240022 m!6380298))

(assert (=> b!5348119 d!1715299))

(declare-fun d!1715301 () Bool)

(assert (=> d!1715301 (= (Exists!2216 lambda!274746) (choose!40113 lambda!274746))))

(declare-fun bs!1240023 () Bool)

(assert (= bs!1240023 d!1715301))

(declare-fun m!6380300 () Bool)

(assert (=> bs!1240023 m!6380300))

(assert (=> b!5348119 d!1715301))

(declare-fun bs!1240024 () Bool)

(declare-fun d!1715303 () Bool)

(assert (= bs!1240024 (and d!1715303 b!5348119)))

(declare-fun lambda!274822 () Int)

(assert (=> bs!1240024 (= lambda!274822 lambda!274744)))

(declare-fun bs!1240025 () Bool)

(assert (= bs!1240025 (and d!1715303 d!1715163)))

(assert (=> bs!1240025 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274822 lambda!274780))))

(declare-fun bs!1240026 () Bool)

(assert (= bs!1240026 (and d!1715303 d!1715167)))

(assert (=> bs!1240026 (not (= lambda!274822 lambda!274789))))

(declare-fun bs!1240027 () Bool)

(assert (= bs!1240027 (and d!1715303 b!5348124)))

(assert (=> bs!1240027 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274822 lambda!274741))))

(declare-fun bs!1240028 () Bool)

(assert (= bs!1240028 (and d!1715303 d!1715275)))

(assert (=> bs!1240028 (not (= lambda!274822 lambda!274815))))

(assert (=> bs!1240027 (not (= lambda!274822 lambda!274742))))

(declare-fun bs!1240029 () Bool)

(assert (= bs!1240029 (and d!1715303 b!5348285)))

(assert (=> bs!1240029 (not (= lambda!274822 lambda!274770))))

(assert (=> bs!1240024 (not (= lambda!274822 lambda!274747))))

(assert (=> bs!1240026 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274822 lambda!274788))))

(declare-fun bs!1240030 () Bool)

(assert (= bs!1240030 (and d!1715303 d!1715299)))

(assert (=> bs!1240030 (= lambda!274822 lambda!274821)))

(declare-fun bs!1240031 () Bool)

(assert (= bs!1240031 (and d!1715303 b!5348288)))

(assert (=> bs!1240031 (not (= lambda!274822 lambda!274771))))

(assert (=> bs!1240024 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274822 lambda!274746))))

(declare-fun bs!1240032 () Bool)

(assert (= bs!1240032 (and d!1715303 b!5348915)))

(assert (=> bs!1240032 (not (= lambda!274822 lambda!274819))))

(declare-fun bs!1240033 () Bool)

(assert (= bs!1240033 (and d!1715303 b!5348918)))

(assert (=> bs!1240033 (not (= lambda!274822 lambda!274820))))

(assert (=> bs!1240024 (not (= lambda!274822 lambda!274745))))

(assert (=> bs!1240028 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274822 lambda!274814))))

(assert (=> d!1715303 true))

(assert (=> d!1715303 true))

(assert (=> d!1715303 true))

(declare-fun lambda!274823 () Int)

(assert (=> bs!1240024 (not (= lambda!274823 lambda!274744))))

(assert (=> bs!1240025 (not (= lambda!274823 lambda!274780))))

(assert (=> bs!1240026 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274823 lambda!274789))))

(assert (=> bs!1240027 (not (= lambda!274823 lambda!274741))))

(assert (=> bs!1240028 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274823 lambda!274815))))

(declare-fun bs!1240034 () Bool)

(assert (= bs!1240034 d!1715303))

(assert (=> bs!1240034 (not (= lambda!274823 lambda!274822))))

(assert (=> bs!1240027 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274823 lambda!274742))))

(assert (=> bs!1240029 (not (= lambda!274823 lambda!274770))))

(assert (=> bs!1240024 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regTwo!30582 (regOne!30582 r!7292))) (= lt!2180408 lt!2180400)) (= lambda!274823 lambda!274747))))

(assert (=> bs!1240026 (not (= lambda!274823 lambda!274788))))

(assert (=> bs!1240030 (not (= lambda!274823 lambda!274821))))

(assert (=> bs!1240031 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180408 (regTwo!30582 r!7292))) (= lambda!274823 lambda!274771))))

(assert (=> bs!1240024 (not (= lambda!274823 lambda!274746))))

(assert (=> bs!1240032 (not (= lambda!274823 lambda!274819))))

(assert (=> bs!1240033 (= (and (= (regOne!30582 (regOne!30582 r!7292)) (regOne!30582 lt!2180408)) (= lt!2180408 (regTwo!30582 lt!2180408))) (= lambda!274823 lambda!274820))))

(assert (=> bs!1240024 (= lambda!274823 lambda!274745)))

(assert (=> bs!1240028 (not (= lambda!274823 lambda!274814))))

(assert (=> d!1715303 true))

(assert (=> d!1715303 true))

(assert (=> d!1715303 true))

(assert (=> d!1715303 (= (Exists!2216 lambda!274822) (Exists!2216 lambda!274823))))

(declare-fun lt!2180544 () Unit!153658)

(assert (=> d!1715303 (= lt!2180544 (choose!40116 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326))))

(assert (=> d!1715303 (validRegex!6771 (regOne!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715303 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!870 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 s!2326) lt!2180544)))

(declare-fun m!6380324 () Bool)

(assert (=> bs!1240034 m!6380324))

(declare-fun m!6380328 () Bool)

(assert (=> bs!1240034 m!6380328))

(declare-fun m!6380330 () Bool)

(assert (=> bs!1240034 m!6380330))

(assert (=> bs!1240034 m!6379954))

(assert (=> b!5348119 d!1715303))

(declare-fun d!1715307 () Bool)

(assert (=> d!1715307 (= (isDefined!11849 (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 Nil!61281 s!2326 s!2326)) (not (isEmpty!33259 (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 Nil!61281 s!2326 s!2326))))))

(declare-fun bs!1240035 () Bool)

(assert (= bs!1240035 d!1715307))

(assert (=> bs!1240035 m!6379618))

(declare-fun m!6380332 () Bool)

(assert (=> bs!1240035 m!6380332))

(assert (=> b!5348119 d!1715307))

(declare-fun b!5348953 () Bool)

(declare-fun res!2269478 () Bool)

(declare-fun e!3320697 () Bool)

(assert (=> b!5348953 (=> res!2269478 e!3320697)))

(assert (=> b!5348953 (= res!2269478 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715309 () Bool)

(declare-fun e!3320698 () Bool)

(assert (=> d!1715309 e!3320698))

(declare-fun c!931125 () Bool)

(assert (=> d!1715309 (= c!931125 ((_ is EmptyExpr!15035) lt!2180381))))

(declare-fun lt!2180548 () Bool)

(declare-fun e!3320696 () Bool)

(assert (=> d!1715309 (= lt!2180548 e!3320696)))

(declare-fun c!931126 () Bool)

(assert (=> d!1715309 (= c!931126 (isEmpty!33257 s!2326))))

(assert (=> d!1715309 (validRegex!6771 lt!2180381)))

(assert (=> d!1715309 (= (matchR!7220 lt!2180381 s!2326) lt!2180548)))

(declare-fun b!5348954 () Bool)

(assert (=> b!5348954 (= e!3320696 (matchR!7220 (derivativeStep!4197 lt!2180381 (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5348955 () Bool)

(declare-fun e!3320694 () Bool)

(assert (=> b!5348955 (= e!3320694 (= (head!11468 s!2326) (c!930865 lt!2180381)))))

(declare-fun b!5348956 () Bool)

(assert (=> b!5348956 (= e!3320697 (not (= (head!11468 s!2326) (c!930865 lt!2180381))))))

(declare-fun b!5348957 () Bool)

(declare-fun res!2269482 () Bool)

(assert (=> b!5348957 (=> (not res!2269482) (not e!3320694))))

(assert (=> b!5348957 (= res!2269482 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5348958 () Bool)

(assert (=> b!5348958 (= e!3320696 (nullable!5204 lt!2180381))))

(declare-fun b!5348959 () Bool)

(declare-fun res!2269479 () Bool)

(declare-fun e!3320699 () Bool)

(assert (=> b!5348959 (=> res!2269479 e!3320699)))

(assert (=> b!5348959 (= res!2269479 (not ((_ is ElementMatch!15035) lt!2180381)))))

(declare-fun e!3320693 () Bool)

(assert (=> b!5348959 (= e!3320693 e!3320699)))

(declare-fun b!5348960 () Bool)

(assert (=> b!5348960 (= e!3320693 (not lt!2180548))))

(declare-fun b!5348961 () Bool)

(declare-fun res!2269481 () Bool)

(assert (=> b!5348961 (=> res!2269481 e!3320699)))

(assert (=> b!5348961 (= res!2269481 e!3320694)))

(declare-fun res!2269477 () Bool)

(assert (=> b!5348961 (=> (not res!2269477) (not e!3320694))))

(assert (=> b!5348961 (= res!2269477 lt!2180548)))

(declare-fun b!5348962 () Bool)

(declare-fun call!382385 () Bool)

(assert (=> b!5348962 (= e!3320698 (= lt!2180548 call!382385))))

(declare-fun b!5348963 () Bool)

(declare-fun e!3320695 () Bool)

(assert (=> b!5348963 (= e!3320695 e!3320697)))

(declare-fun res!2269483 () Bool)

(assert (=> b!5348963 (=> res!2269483 e!3320697)))

(assert (=> b!5348963 (= res!2269483 call!382385)))

(declare-fun b!5348964 () Bool)

(assert (=> b!5348964 (= e!3320698 e!3320693)))

(declare-fun c!931124 () Bool)

(assert (=> b!5348964 (= c!931124 ((_ is EmptyLang!15035) lt!2180381))))

(declare-fun b!5348965 () Bool)

(assert (=> b!5348965 (= e!3320699 e!3320695)))

(declare-fun res!2269480 () Bool)

(assert (=> b!5348965 (=> (not res!2269480) (not e!3320695))))

(assert (=> b!5348965 (= res!2269480 (not lt!2180548))))

(declare-fun b!5348966 () Bool)

(declare-fun res!2269484 () Bool)

(assert (=> b!5348966 (=> (not res!2269484) (not e!3320694))))

(assert (=> b!5348966 (= res!2269484 (not call!382385))))

(declare-fun bm!382380 () Bool)

(assert (=> bm!382380 (= call!382385 (isEmpty!33257 s!2326))))

(assert (= (and d!1715309 c!931126) b!5348958))

(assert (= (and d!1715309 (not c!931126)) b!5348954))

(assert (= (and d!1715309 c!931125) b!5348962))

(assert (= (and d!1715309 (not c!931125)) b!5348964))

(assert (= (and b!5348964 c!931124) b!5348960))

(assert (= (and b!5348964 (not c!931124)) b!5348959))

(assert (= (and b!5348959 (not res!2269479)) b!5348961))

(assert (= (and b!5348961 res!2269477) b!5348966))

(assert (= (and b!5348966 res!2269484) b!5348957))

(assert (= (and b!5348957 res!2269482) b!5348955))

(assert (= (and b!5348961 (not res!2269481)) b!5348965))

(assert (= (and b!5348965 res!2269480) b!5348963))

(assert (= (and b!5348963 (not res!2269483)) b!5348953))

(assert (= (and b!5348953 (not res!2269478)) b!5348956))

(assert (= (or b!5348962 b!5348966 b!5348963) bm!382380))

(assert (=> b!5348955 m!6379786))

(assert (=> b!5348954 m!6379786))

(assert (=> b!5348954 m!6379786))

(declare-fun m!6380338 () Bool)

(assert (=> b!5348954 m!6380338))

(assert (=> b!5348954 m!6379790))

(assert (=> b!5348954 m!6380338))

(assert (=> b!5348954 m!6379790))

(declare-fun m!6380340 () Bool)

(assert (=> b!5348954 m!6380340))

(assert (=> b!5348957 m!6379790))

(assert (=> b!5348957 m!6379790))

(assert (=> b!5348957 m!6379794))

(assert (=> bm!382380 m!6379772))

(assert (=> b!5348956 m!6379786))

(declare-fun m!6380342 () Bool)

(assert (=> b!5348958 m!6380342))

(assert (=> d!1715309 m!6379772))

(assert (=> d!1715309 m!6380146))

(assert (=> b!5348953 m!6379790))

(assert (=> b!5348953 m!6379790))

(assert (=> b!5348953 m!6379794))

(assert (=> b!5348119 d!1715309))

(declare-fun bs!1240038 () Bool)

(declare-fun d!1715315 () Bool)

(assert (= bs!1240038 (and d!1715315 b!5348119)))

(declare-fun lambda!274824 () Int)

(assert (=> bs!1240038 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274824 lambda!274744))))

(declare-fun bs!1240039 () Bool)

(assert (= bs!1240039 (and d!1715315 d!1715163)))

(assert (=> bs!1240039 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274824 lambda!274780))))

(declare-fun bs!1240040 () Bool)

(assert (= bs!1240040 (and d!1715315 d!1715167)))

(assert (=> bs!1240040 (not (= lambda!274824 lambda!274789))))

(declare-fun bs!1240041 () Bool)

(assert (= bs!1240041 (and d!1715315 d!1715303)))

(assert (=> bs!1240041 (not (= lambda!274824 lambda!274823))))

(declare-fun bs!1240042 () Bool)

(assert (= bs!1240042 (and d!1715315 b!5348124)))

(assert (=> bs!1240042 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274824 lambda!274741))))

(declare-fun bs!1240043 () Bool)

(assert (= bs!1240043 (and d!1715315 d!1715275)))

(assert (=> bs!1240043 (not (= lambda!274824 lambda!274815))))

(assert (=> bs!1240041 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274824 lambda!274822))))

(assert (=> bs!1240042 (not (= lambda!274824 lambda!274742))))

(declare-fun bs!1240044 () Bool)

(assert (= bs!1240044 (and d!1715315 b!5348285)))

(assert (=> bs!1240044 (not (= lambda!274824 lambda!274770))))

(assert (=> bs!1240038 (not (= lambda!274824 lambda!274747))))

(assert (=> bs!1240040 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 r!7292)) (= lt!2180400 (regTwo!30582 r!7292))) (= lambda!274824 lambda!274788))))

(declare-fun bs!1240045 () Bool)

(assert (= bs!1240045 (and d!1715315 d!1715299)))

(assert (=> bs!1240045 (= (and (= (regTwo!30582 (regOne!30582 r!7292)) (regOne!30582 (regOne!30582 r!7292))) (= lt!2180400 lt!2180408)) (= lambda!274824 lambda!274821))))

(declare-fun bs!1240046 () Bool)

(assert (= bs!1240046 (and d!1715315 b!5348288)))

(assert (=> bs!1240046 (not (= lambda!274824 lambda!274771))))

(assert (=> bs!1240038 (= lambda!274824 lambda!274746)))

(declare-fun bs!1240047 () Bool)

(assert (= bs!1240047 (and d!1715315 b!5348915)))

(assert (=> bs!1240047 (not (= lambda!274824 lambda!274819))))

(declare-fun bs!1240048 () Bool)

(assert (= bs!1240048 (and d!1715315 b!5348918)))

(assert (=> bs!1240048 (not (= lambda!274824 lambda!274820))))

(assert (=> bs!1240038 (not (= lambda!274824 lambda!274745))))

(assert (=> bs!1240043 (= lambda!274824 lambda!274814)))

(assert (=> d!1715315 true))

(assert (=> d!1715315 true))

(assert (=> d!1715315 true))

(assert (=> d!1715315 (= (isDefined!11849 (findConcatSeparation!1560 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 Nil!61281 s!2326 s!2326)) (Exists!2216 lambda!274824))))

(declare-fun lt!2180549 () Unit!153658)

(assert (=> d!1715315 (= lt!2180549 (choose!40115 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326))))

(assert (=> d!1715315 (validRegex!6771 (regTwo!30582 (regOne!30582 r!7292)))))

(assert (=> d!1715315 (= (lemmaFindConcatSeparationEquivalentToExists!1324 (regTwo!30582 (regOne!30582 r!7292)) lt!2180400 s!2326) lt!2180549)))

(declare-fun bs!1240049 () Bool)

(assert (= bs!1240049 d!1715315))

(assert (=> bs!1240049 m!6379618))

(assert (=> bs!1240049 m!6379652))

(declare-fun m!6380344 () Bool)

(assert (=> bs!1240049 m!6380344))

(assert (=> bs!1240049 m!6379618))

(assert (=> bs!1240049 m!6379956))

(declare-fun m!6380346 () Bool)

(assert (=> bs!1240049 m!6380346))

(assert (=> b!5348119 d!1715315))

(declare-fun d!1715317 () Bool)

(assert (=> d!1715317 (= (isDefined!11849 (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 Nil!61281 s!2326 s!2326)) (not (isEmpty!33259 (findConcatSeparation!1560 (regOne!30582 (regOne!30582 r!7292)) lt!2180408 Nil!61281 s!2326 s!2326))))))

(declare-fun bs!1240050 () Bool)

(assert (= bs!1240050 d!1715317))

(assert (=> bs!1240050 m!6379620))

(declare-fun m!6380348 () Bool)

(assert (=> bs!1240050 m!6380348))

(assert (=> b!5348119 d!1715317))

(declare-fun bs!1240051 () Bool)

(declare-fun d!1715319 () Bool)

(assert (= bs!1240051 (and d!1715319 d!1715233)))

(declare-fun lambda!274825 () Int)

(assert (=> bs!1240051 (= lambda!274825 lambda!274813)))

(declare-fun bs!1240052 () Bool)

(assert (= bs!1240052 (and d!1715319 d!1715229)))

(assert (=> bs!1240052 (= lambda!274825 lambda!274810)))

(declare-fun bs!1240053 () Bool)

(assert (= bs!1240053 (and d!1715319 d!1715125)))

(assert (=> bs!1240053 (= lambda!274825 lambda!274762)))

(declare-fun bs!1240054 () Bool)

(assert (= bs!1240054 (and d!1715319 d!1715293)))

(assert (=> bs!1240054 (= lambda!274825 lambda!274818)))

(declare-fun bs!1240055 () Bool)

(assert (= bs!1240055 (and d!1715319 d!1715195)))

(assert (=> bs!1240055 (= lambda!274825 lambda!274804)))

(declare-fun bs!1240056 () Bool)

(assert (= bs!1240056 (and d!1715319 d!1715287)))

(assert (=> bs!1240056 (= lambda!274825 lambda!274817)))

(declare-fun b!5348967 () Bool)

(declare-fun e!3320701 () Bool)

(assert (=> b!5348967 (= e!3320701 (isEmpty!33255 (t!374621 lt!2180378)))))

(declare-fun b!5348968 () Bool)

(declare-fun e!3320700 () Bool)

(declare-fun lt!2180550 () Regex!15035)

(assert (=> b!5348968 (= e!3320700 (isConcat!433 lt!2180550))))

(declare-fun b!5348969 () Bool)

(assert (=> b!5348969 (= e!3320700 (= lt!2180550 (head!11470 lt!2180378)))))

(declare-fun b!5348970 () Bool)

(declare-fun e!3320703 () Bool)

(assert (=> b!5348970 (= e!3320703 e!3320700)))

(declare-fun c!931127 () Bool)

(assert (=> b!5348970 (= c!931127 (isEmpty!33255 (tail!10567 lt!2180378)))))

(declare-fun e!3320702 () Bool)

(assert (=> d!1715319 e!3320702))

(declare-fun res!2269485 () Bool)

(assert (=> d!1715319 (=> (not res!2269485) (not e!3320702))))

(assert (=> d!1715319 (= res!2269485 (validRegex!6771 lt!2180550))))

(declare-fun e!3320705 () Regex!15035)

(assert (=> d!1715319 (= lt!2180550 e!3320705)))

(declare-fun c!931130 () Bool)

(assert (=> d!1715319 (= c!931130 e!3320701)))

(declare-fun res!2269486 () Bool)

(assert (=> d!1715319 (=> (not res!2269486) (not e!3320701))))

(assert (=> d!1715319 (= res!2269486 ((_ is Cons!61280) lt!2180378))))

(assert (=> d!1715319 (forall!14459 lt!2180378 lambda!274825)))

(assert (=> d!1715319 (= (generalisedConcat!704 lt!2180378) lt!2180550)))

(declare-fun b!5348971 () Bool)

(assert (=> b!5348971 (= e!3320703 (isEmptyExpr!910 lt!2180550))))

(declare-fun b!5348972 () Bool)

(assert (=> b!5348972 (= e!3320705 (h!67728 lt!2180378))))

(declare-fun b!5348973 () Bool)

(declare-fun e!3320704 () Regex!15035)

(assert (=> b!5348973 (= e!3320704 EmptyExpr!15035)))

(declare-fun b!5348974 () Bool)

(assert (=> b!5348974 (= e!3320704 (Concat!23880 (h!67728 lt!2180378) (generalisedConcat!704 (t!374621 lt!2180378))))))

(declare-fun b!5348975 () Bool)

(assert (=> b!5348975 (= e!3320705 e!3320704)))

(declare-fun c!931129 () Bool)

(assert (=> b!5348975 (= c!931129 ((_ is Cons!61280) lt!2180378))))

(declare-fun b!5348976 () Bool)

(assert (=> b!5348976 (= e!3320702 e!3320703)))

(declare-fun c!931128 () Bool)

(assert (=> b!5348976 (= c!931128 (isEmpty!33255 lt!2180378))))

(assert (= (and d!1715319 res!2269486) b!5348967))

(assert (= (and d!1715319 c!931130) b!5348972))

(assert (= (and d!1715319 (not c!931130)) b!5348975))

(assert (= (and b!5348975 c!931129) b!5348974))

(assert (= (and b!5348975 (not c!931129)) b!5348973))

(assert (= (and d!1715319 res!2269485) b!5348976))

(assert (= (and b!5348976 c!931128) b!5348971))

(assert (= (and b!5348976 (not c!931128)) b!5348970))

(assert (= (and b!5348970 c!931127) b!5348969))

(assert (= (and b!5348970 (not c!931127)) b!5348968))

(declare-fun m!6380350 () Bool)

(assert (=> b!5348976 m!6380350))

(declare-fun m!6380352 () Bool)

(assert (=> b!5348974 m!6380352))

(declare-fun m!6380354 () Bool)

(assert (=> b!5348970 m!6380354))

(assert (=> b!5348970 m!6380354))

(declare-fun m!6380356 () Bool)

(assert (=> b!5348970 m!6380356))

(declare-fun m!6380358 () Bool)

(assert (=> b!5348968 m!6380358))

(declare-fun m!6380360 () Bool)

(assert (=> d!1715319 m!6380360))

(declare-fun m!6380362 () Bool)

(assert (=> d!1715319 m!6380362))

(declare-fun m!6380364 () Bool)

(assert (=> b!5348969 m!6380364))

(declare-fun m!6380366 () Bool)

(assert (=> b!5348967 m!6380366))

(declare-fun m!6380368 () Bool)

(assert (=> b!5348971 m!6380368))

(assert (=> b!5348119 d!1715319))

(declare-fun bs!1240057 () Bool)

(declare-fun b!5348979 () Bool)

(assert (= bs!1240057 (and b!5348979 d!1715315)))

(declare-fun lambda!274828 () Int)

(assert (=> bs!1240057 (not (= lambda!274828 lambda!274824))))

(declare-fun bs!1240058 () Bool)

(assert (= bs!1240058 (and b!5348979 b!5348119)))

(assert (=> bs!1240058 (not (= lambda!274828 lambda!274744))))

(declare-fun bs!1240059 () Bool)

(assert (= bs!1240059 (and b!5348979 d!1715163)))

(assert (=> bs!1240059 (not (= lambda!274828 lambda!274780))))

(declare-fun bs!1240060 () Bool)

(assert (= bs!1240060 (and b!5348979 d!1715167)))

(assert (=> bs!1240060 (not (= lambda!274828 lambda!274789))))

(declare-fun bs!1240061 () Bool)

(assert (= bs!1240061 (and b!5348979 d!1715303)))

(assert (=> bs!1240061 (not (= lambda!274828 lambda!274823))))

(declare-fun bs!1240062 () Bool)

(assert (= bs!1240062 (and b!5348979 b!5348124)))

(assert (=> bs!1240062 (not (= lambda!274828 lambda!274741))))

(declare-fun bs!1240063 () Bool)

(assert (= bs!1240063 (and b!5348979 d!1715275)))

(assert (=> bs!1240063 (not (= lambda!274828 lambda!274815))))

(assert (=> bs!1240061 (not (= lambda!274828 lambda!274822))))

(assert (=> bs!1240062 (not (= lambda!274828 lambda!274742))))

(declare-fun bs!1240064 () Bool)

(assert (= bs!1240064 (and b!5348979 b!5348285)))

(assert (=> bs!1240064 (= (and (= (reg!15364 lt!2180381) (reg!15364 r!7292)) (= lt!2180381 r!7292)) (= lambda!274828 lambda!274770))))

(assert (=> bs!1240058 (not (= lambda!274828 lambda!274747))))

(assert (=> bs!1240060 (not (= lambda!274828 lambda!274788))))

(declare-fun bs!1240065 () Bool)

(assert (= bs!1240065 (and b!5348979 d!1715299)))

(assert (=> bs!1240065 (not (= lambda!274828 lambda!274821))))

(declare-fun bs!1240066 () Bool)

(assert (= bs!1240066 (and b!5348979 b!5348288)))

(assert (=> bs!1240066 (not (= lambda!274828 lambda!274771))))

(assert (=> bs!1240058 (not (= lambda!274828 lambda!274746))))

(declare-fun bs!1240068 () Bool)

(assert (= bs!1240068 (and b!5348979 b!5348915)))

(assert (=> bs!1240068 (= (and (= (reg!15364 lt!2180381) (reg!15364 lt!2180408)) (= lt!2180381 lt!2180408)) (= lambda!274828 lambda!274819))))

(declare-fun bs!1240070 () Bool)

(assert (= bs!1240070 (and b!5348979 b!5348918)))

(assert (=> bs!1240070 (not (= lambda!274828 lambda!274820))))

(assert (=> bs!1240058 (not (= lambda!274828 lambda!274745))))

(assert (=> bs!1240063 (not (= lambda!274828 lambda!274814))))

(assert (=> b!5348979 true))

(assert (=> b!5348979 true))

(declare-fun bs!1240073 () Bool)

(declare-fun b!5348982 () Bool)

(assert (= bs!1240073 (and b!5348982 d!1715315)))

(declare-fun lambda!274830 () Int)

(assert (=> bs!1240073 (not (= lambda!274830 lambda!274824))))

(declare-fun bs!1240074 () Bool)

(assert (= bs!1240074 (and b!5348982 b!5348119)))

(assert (=> bs!1240074 (not (= lambda!274830 lambda!274744))))

(declare-fun bs!1240076 () Bool)

(assert (= bs!1240076 (and b!5348982 d!1715163)))

(assert (=> bs!1240076 (not (= lambda!274830 lambda!274780))))

(declare-fun bs!1240077 () Bool)

(assert (= bs!1240077 (and b!5348982 d!1715167)))

(assert (=> bs!1240077 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180381) (regTwo!30582 r!7292))) (= lambda!274830 lambda!274789))))

(declare-fun bs!1240078 () Bool)

(assert (= bs!1240078 (and b!5348982 d!1715303)))

(assert (=> bs!1240078 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180381) lt!2180408)) (= lambda!274830 lambda!274823))))

(declare-fun bs!1240079 () Bool)

(assert (= bs!1240079 (and b!5348982 b!5348124)))

(assert (=> bs!1240079 (not (= lambda!274830 lambda!274741))))

(declare-fun bs!1240080 () Bool)

(assert (= bs!1240080 (and b!5348982 d!1715275)))

(assert (=> bs!1240080 (= (and (= (regOne!30582 lt!2180381) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180381) lt!2180400)) (= lambda!274830 lambda!274815))))

(assert (=> bs!1240078 (not (= lambda!274830 lambda!274822))))

(assert (=> bs!1240079 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180381) (regTwo!30582 r!7292))) (= lambda!274830 lambda!274742))))

(declare-fun bs!1240081 () Bool)

(assert (= bs!1240081 (and b!5348982 b!5348285)))

(assert (=> bs!1240081 (not (= lambda!274830 lambda!274770))))

(assert (=> bs!1240074 (= (and (= (regOne!30582 lt!2180381) (regTwo!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180381) lt!2180400)) (= lambda!274830 lambda!274747))))

(assert (=> bs!1240077 (not (= lambda!274830 lambda!274788))))

(declare-fun bs!1240082 () Bool)

(assert (= bs!1240082 (and b!5348982 d!1715299)))

(assert (=> bs!1240082 (not (= lambda!274830 lambda!274821))))

(declare-fun bs!1240083 () Bool)

(assert (= bs!1240083 (and b!5348982 b!5348288)))

(assert (=> bs!1240083 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 r!7292)) (= (regTwo!30582 lt!2180381) (regTwo!30582 r!7292))) (= lambda!274830 lambda!274771))))

(assert (=> bs!1240074 (not (= lambda!274830 lambda!274746))))

(declare-fun bs!1240084 () Bool)

(assert (= bs!1240084 (and b!5348982 b!5348915)))

(assert (=> bs!1240084 (not (= lambda!274830 lambda!274819))))

(declare-fun bs!1240085 () Bool)

(assert (= bs!1240085 (and b!5348982 b!5348918)))

(assert (=> bs!1240085 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 lt!2180408)) (= (regTwo!30582 lt!2180381) (regTwo!30582 lt!2180408))) (= lambda!274830 lambda!274820))))

(assert (=> bs!1240074 (= (and (= (regOne!30582 lt!2180381) (regOne!30582 (regOne!30582 r!7292))) (= (regTwo!30582 lt!2180381) lt!2180408)) (= lambda!274830 lambda!274745))))

(assert (=> bs!1240080 (not (= lambda!274830 lambda!274814))))

(declare-fun bs!1240086 () Bool)

(assert (= bs!1240086 (and b!5348982 b!5348979)))

(assert (=> bs!1240086 (not (= lambda!274830 lambda!274828))))

(assert (=> b!5348982 true))

(assert (=> b!5348982 true))

(declare-fun b!5348977 () Bool)

(declare-fun res!2269489 () Bool)

(declare-fun e!3320708 () Bool)

(assert (=> b!5348977 (=> res!2269489 e!3320708)))

(declare-fun call!382386 () Bool)

(assert (=> b!5348977 (= res!2269489 call!382386)))

(declare-fun e!3320711 () Bool)

(assert (=> b!5348977 (= e!3320711 e!3320708)))

(declare-fun b!5348978 () Bool)

(declare-fun e!3320709 () Bool)

(assert (=> b!5348978 (= e!3320709 (matchRSpec!2138 (regTwo!30583 lt!2180381) s!2326))))

(declare-fun call!382387 () Bool)

(assert (=> b!5348979 (= e!3320708 call!382387)))

(declare-fun bm!382381 () Bool)

(declare-fun c!931134 () Bool)

(assert (=> bm!382381 (= call!382387 (Exists!2216 (ite c!931134 lambda!274828 lambda!274830)))))

(declare-fun b!5348980 () Bool)

(declare-fun c!931132 () Bool)

(assert (=> b!5348980 (= c!931132 ((_ is ElementMatch!15035) lt!2180381))))

(declare-fun e!3320707 () Bool)

(declare-fun e!3320706 () Bool)

(assert (=> b!5348980 (= e!3320707 e!3320706)))

(declare-fun d!1715321 () Bool)

(declare-fun c!931133 () Bool)

(assert (=> d!1715321 (= c!931133 ((_ is EmptyExpr!15035) lt!2180381))))

(declare-fun e!3320712 () Bool)

(assert (=> d!1715321 (= (matchRSpec!2138 lt!2180381 s!2326) e!3320712)))

(declare-fun b!5348981 () Bool)

(declare-fun e!3320710 () Bool)

(assert (=> b!5348981 (= e!3320710 e!3320709)))

(declare-fun res!2269487 () Bool)

(assert (=> b!5348981 (= res!2269487 (matchRSpec!2138 (regOne!30583 lt!2180381) s!2326))))

(assert (=> b!5348981 (=> res!2269487 e!3320709)))

(assert (=> b!5348982 (= e!3320711 call!382387)))

(declare-fun b!5348983 () Bool)

(assert (=> b!5348983 (= e!3320712 e!3320707)))

(declare-fun res!2269488 () Bool)

(assert (=> b!5348983 (= res!2269488 (not ((_ is EmptyLang!15035) lt!2180381)))))

(assert (=> b!5348983 (=> (not res!2269488) (not e!3320707))))

(declare-fun b!5348984 () Bool)

(assert (=> b!5348984 (= e!3320710 e!3320711)))

(assert (=> b!5348984 (= c!931134 ((_ is Star!15035) lt!2180381))))

(declare-fun bm!382382 () Bool)

(assert (=> bm!382382 (= call!382386 (isEmpty!33257 s!2326))))

(declare-fun b!5348985 () Bool)

(assert (=> b!5348985 (= e!3320706 (= s!2326 (Cons!61281 (c!930865 lt!2180381) Nil!61281)))))

(declare-fun b!5348986 () Bool)

(declare-fun c!931131 () Bool)

(assert (=> b!5348986 (= c!931131 ((_ is Union!15035) lt!2180381))))

(assert (=> b!5348986 (= e!3320706 e!3320710)))

(declare-fun b!5348987 () Bool)

(assert (=> b!5348987 (= e!3320712 call!382386)))

(assert (= (and d!1715321 c!931133) b!5348987))

(assert (= (and d!1715321 (not c!931133)) b!5348983))

(assert (= (and b!5348983 res!2269488) b!5348980))

(assert (= (and b!5348980 c!931132) b!5348985))

(assert (= (and b!5348980 (not c!931132)) b!5348986))

(assert (= (and b!5348986 c!931131) b!5348981))

(assert (= (and b!5348986 (not c!931131)) b!5348984))

(assert (= (and b!5348981 (not res!2269487)) b!5348978))

(assert (= (and b!5348984 c!931134) b!5348977))

(assert (= (and b!5348984 (not c!931134)) b!5348982))

(assert (= (and b!5348977 (not res!2269489)) b!5348979))

(assert (= (or b!5348979 b!5348982) bm!382381))

(assert (= (or b!5348987 b!5348977) bm!382382))

(declare-fun m!6380374 () Bool)

(assert (=> b!5348978 m!6380374))

(declare-fun m!6380376 () Bool)

(assert (=> bm!382381 m!6380376))

(declare-fun m!6380378 () Bool)

(assert (=> b!5348981 m!6380378))

(assert (=> bm!382382 m!6379772))

(assert (=> b!5348119 d!1715321))

(declare-fun d!1715325 () Bool)

(assert (=> d!1715325 (= (matchR!7220 lt!2180381 s!2326) (matchZipper!1279 lt!2180396 s!2326))))

(declare-fun lt!2180558 () Unit!153658)

(declare-fun choose!40128 ((InoxSet Context!8838) List!61406 Regex!15035 List!61405) Unit!153658)

(assert (=> d!1715325 (= lt!2180558 (choose!40128 lt!2180396 lt!2180385 lt!2180381 s!2326))))

(assert (=> d!1715325 (validRegex!6771 lt!2180381)))

(assert (=> d!1715325 (= (theoremZipperRegexEquiv!433 lt!2180396 lt!2180385 lt!2180381 s!2326) lt!2180558)))

(declare-fun bs!1240087 () Bool)

(assert (= bs!1240087 d!1715325))

(assert (=> bs!1240087 m!6379612))

(assert (=> bs!1240087 m!6379622))

(declare-fun m!6380380 () Bool)

(assert (=> bs!1240087 m!6380380))

(assert (=> bs!1240087 m!6380146))

(assert (=> b!5348119 d!1715325))

(declare-fun d!1715327 () Bool)

(declare-fun c!931135 () Bool)

(assert (=> d!1715327 (= c!931135 (isEmpty!33257 (t!374622 s!2326)))))

(declare-fun e!3320719 () Bool)

(assert (=> d!1715327 (= (matchZipper!1279 lt!2180372 (t!374622 s!2326)) e!3320719)))

(declare-fun b!5349000 () Bool)

(assert (=> b!5349000 (= e!3320719 (nullableZipper!1375 lt!2180372))))

(declare-fun b!5349001 () Bool)

(assert (=> b!5349001 (= e!3320719 (matchZipper!1279 (derivationStepZipper!1276 lt!2180372 (head!11468 (t!374622 s!2326))) (tail!10565 (t!374622 s!2326))))))

(assert (= (and d!1715327 c!931135) b!5349000))

(assert (= (and d!1715327 (not c!931135)) b!5349001))

(assert (=> d!1715327 m!6379730))

(declare-fun m!6380382 () Bool)

(assert (=> b!5349000 m!6380382))

(assert (=> b!5349001 m!6379734))

(assert (=> b!5349001 m!6379734))

(declare-fun m!6380384 () Bool)

(assert (=> b!5349001 m!6380384))

(assert (=> b!5349001 m!6379738))

(assert (=> b!5349001 m!6380384))

(assert (=> b!5349001 m!6379738))

(declare-fun m!6380386 () Bool)

(assert (=> b!5349001 m!6380386))

(assert (=> b!5348136 d!1715327))

(assert (=> b!5348136 d!1715249))

(declare-fun d!1715329 () Bool)

(declare-fun lt!2180562 () Int)

(assert (=> d!1715329 (>= lt!2180562 0)))

(declare-fun e!3320722 () Int)

(assert (=> d!1715329 (= lt!2180562 e!3320722)))

(declare-fun c!931139 () Bool)

(assert (=> d!1715329 (= c!931139 ((_ is Cons!61280) (exprs!4919 lt!2180386)))))

(assert (=> d!1715329 (= (contextDepthTotal!168 lt!2180386) lt!2180562)))

(declare-fun b!5349006 () Bool)

(declare-fun regexDepthTotal!81 (Regex!15035) Int)

(assert (=> b!5349006 (= e!3320722 (+ (regexDepthTotal!81 (h!67728 (exprs!4919 lt!2180386))) (contextDepthTotal!168 (Context!8839 (t!374621 (exprs!4919 lt!2180386))))))))

(declare-fun b!5349007 () Bool)

(assert (=> b!5349007 (= e!3320722 1)))

(assert (= (and d!1715329 c!931139) b!5349006))

(assert (= (and d!1715329 (not c!931139)) b!5349007))

(declare-fun m!6380388 () Bool)

(assert (=> b!5349006 m!6380388))

(declare-fun m!6380390 () Bool)

(assert (=> b!5349006 m!6380390))

(assert (=> b!5348115 d!1715329))

(declare-fun d!1715331 () Bool)

(declare-fun lt!2180563 () Int)

(assert (=> d!1715331 (>= lt!2180563 0)))

(declare-fun e!3320723 () Int)

(assert (=> d!1715331 (= lt!2180563 e!3320723)))

(declare-fun c!931140 () Bool)

(assert (=> d!1715331 (= c!931140 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343))))))

(assert (=> d!1715331 (= (contextDepthTotal!168 (h!67730 zl!343)) lt!2180563)))

(declare-fun b!5349008 () Bool)

(assert (=> b!5349008 (= e!3320723 (+ (regexDepthTotal!81 (h!67728 (exprs!4919 (h!67730 zl!343)))) (contextDepthTotal!168 (Context!8839 (t!374621 (exprs!4919 (h!67730 zl!343)))))))))

(declare-fun b!5349009 () Bool)

(assert (=> b!5349009 (= e!3320723 1)))

(assert (= (and d!1715331 c!931140) b!5349008))

(assert (= (and d!1715331 (not c!931140)) b!5349009))

(declare-fun m!6380392 () Bool)

(assert (=> b!5349008 m!6380392))

(declare-fun m!6380394 () Bool)

(assert (=> b!5349008 m!6380394))

(assert (=> b!5348115 d!1715331))

(declare-fun b!5349010 () Bool)

(declare-fun res!2269503 () Bool)

(declare-fun e!3320728 () Bool)

(assert (=> b!5349010 (=> res!2269503 e!3320728)))

(assert (=> b!5349010 (= res!2269503 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715333 () Bool)

(declare-fun e!3320729 () Bool)

(assert (=> d!1715333 e!3320729))

(declare-fun c!931142 () Bool)

(assert (=> d!1715333 (= c!931142 ((_ is EmptyExpr!15035) (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292))))))

(declare-fun lt!2180564 () Bool)

(declare-fun e!3320727 () Bool)

(assert (=> d!1715333 (= lt!2180564 e!3320727)))

(declare-fun c!931143 () Bool)

(assert (=> d!1715333 (= c!931143 (isEmpty!33257 s!2326))))

(assert (=> d!1715333 (validRegex!6771 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)))))

(assert (=> d!1715333 (= (matchR!7220 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)) s!2326) lt!2180564)))

(declare-fun b!5349011 () Bool)

(assert (=> b!5349011 (= e!3320727 (matchR!7220 (derivativeStep!4197 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)) (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5349012 () Bool)

(declare-fun e!3320725 () Bool)

(assert (=> b!5349012 (= e!3320725 (= (head!11468 s!2326) (c!930865 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)))))))

(declare-fun b!5349013 () Bool)

(assert (=> b!5349013 (= e!3320728 (not (= (head!11468 s!2326) (c!930865 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292))))))))

(declare-fun b!5349014 () Bool)

(declare-fun res!2269507 () Bool)

(assert (=> b!5349014 (=> (not res!2269507) (not e!3320725))))

(assert (=> b!5349014 (= res!2269507 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5349015 () Bool)

(assert (=> b!5349015 (= e!3320727 (nullable!5204 (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292))))))

(declare-fun b!5349016 () Bool)

(declare-fun res!2269504 () Bool)

(declare-fun e!3320730 () Bool)

(assert (=> b!5349016 (=> res!2269504 e!3320730)))

(assert (=> b!5349016 (= res!2269504 (not ((_ is ElementMatch!15035) (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292)))))))

(declare-fun e!3320724 () Bool)

(assert (=> b!5349016 (= e!3320724 e!3320730)))

(declare-fun b!5349017 () Bool)

(assert (=> b!5349017 (= e!3320724 (not lt!2180564))))

(declare-fun b!5349018 () Bool)

(declare-fun res!2269506 () Bool)

(assert (=> b!5349018 (=> res!2269506 e!3320730)))

(assert (=> b!5349018 (= res!2269506 e!3320725)))

(declare-fun res!2269502 () Bool)

(assert (=> b!5349018 (=> (not res!2269502) (not e!3320725))))

(assert (=> b!5349018 (= res!2269502 lt!2180564)))

(declare-fun b!5349019 () Bool)

(declare-fun call!382388 () Bool)

(assert (=> b!5349019 (= e!3320729 (= lt!2180564 call!382388))))

(declare-fun b!5349020 () Bool)

(declare-fun e!3320726 () Bool)

(assert (=> b!5349020 (= e!3320726 e!3320728)))

(declare-fun res!2269508 () Bool)

(assert (=> b!5349020 (=> res!2269508 e!3320728)))

(assert (=> b!5349020 (= res!2269508 call!382388)))

(declare-fun b!5349021 () Bool)

(assert (=> b!5349021 (= e!3320729 e!3320724)))

(declare-fun c!931141 () Bool)

(assert (=> b!5349021 (= c!931141 ((_ is EmptyLang!15035) (Concat!23880 (regOne!30582 r!7292) (regTwo!30582 r!7292))))))

(declare-fun b!5349022 () Bool)

(assert (=> b!5349022 (= e!3320730 e!3320726)))

(declare-fun res!2269505 () Bool)

(assert (=> b!5349022 (=> (not res!2269505) (not e!3320726))))

(assert (=> b!5349022 (= res!2269505 (not lt!2180564))))

(declare-fun b!5349023 () Bool)

(declare-fun res!2269509 () Bool)

(assert (=> b!5349023 (=> (not res!2269509) (not e!3320725))))

(assert (=> b!5349023 (= res!2269509 (not call!382388))))

(declare-fun bm!382383 () Bool)

(assert (=> bm!382383 (= call!382388 (isEmpty!33257 s!2326))))

(assert (= (and d!1715333 c!931143) b!5349015))

(assert (= (and d!1715333 (not c!931143)) b!5349011))

(assert (= (and d!1715333 c!931142) b!5349019))

(assert (= (and d!1715333 (not c!931142)) b!5349021))

(assert (= (and b!5349021 c!931141) b!5349017))

(assert (= (and b!5349021 (not c!931141)) b!5349016))

(assert (= (and b!5349016 (not res!2269504)) b!5349018))

(assert (= (and b!5349018 res!2269502) b!5349023))

(assert (= (and b!5349023 res!2269509) b!5349014))

(assert (= (and b!5349014 res!2269507) b!5349012))

(assert (= (and b!5349018 (not res!2269506)) b!5349022))

(assert (= (and b!5349022 res!2269505) b!5349020))

(assert (= (and b!5349020 (not res!2269508)) b!5349010))

(assert (= (and b!5349010 (not res!2269503)) b!5349013))

(assert (= (or b!5349019 b!5349023 b!5349020) bm!382383))

(assert (=> b!5349012 m!6379786))

(assert (=> b!5349011 m!6379786))

(assert (=> b!5349011 m!6379786))

(declare-fun m!6380402 () Bool)

(assert (=> b!5349011 m!6380402))

(assert (=> b!5349011 m!6379790))

(assert (=> b!5349011 m!6380402))

(assert (=> b!5349011 m!6379790))

(declare-fun m!6380404 () Bool)

(assert (=> b!5349011 m!6380404))

(assert (=> b!5349014 m!6379790))

(assert (=> b!5349014 m!6379790))

(assert (=> b!5349014 m!6379794))

(assert (=> bm!382383 m!6379772))

(assert (=> b!5349013 m!6379786))

(declare-fun m!6380406 () Bool)

(assert (=> b!5349015 m!6380406))

(assert (=> d!1715333 m!6379772))

(declare-fun m!6380408 () Bool)

(assert (=> d!1715333 m!6380408))

(assert (=> b!5349010 m!6379790))

(assert (=> b!5349010 m!6379790))

(assert (=> b!5349010 m!6379794))

(assert (=> b!5348117 d!1715333))

(declare-fun d!1715337 () Bool)

(assert (=> d!1715337 (= (isEmpty!33255 (t!374621 (exprs!4919 (h!67730 zl!343)))) ((_ is Nil!61280) (t!374621 (exprs!4919 (h!67730 zl!343)))))))

(assert (=> b!5348134 d!1715337))

(declare-fun d!1715343 () Bool)

(assert (=> d!1715343 (= (nullable!5204 (regOne!30582 (regOne!30582 r!7292))) (nullableFct!1528 (regOne!30582 (regOne!30582 r!7292))))))

(declare-fun bs!1240096 () Bool)

(assert (= bs!1240096 d!1715343))

(declare-fun m!6380414 () Bool)

(assert (=> bs!1240096 m!6380414))

(assert (=> b!5348113 d!1715343))

(declare-fun b!5349033 () Bool)

(declare-fun res!2269516 () Bool)

(declare-fun e!3320740 () Bool)

(assert (=> b!5349033 (=> res!2269516 e!3320740)))

(assert (=> b!5349033 (= res!2269516 (not (isEmpty!33257 (tail!10565 s!2326))))))

(declare-fun d!1715345 () Bool)

(declare-fun e!3320741 () Bool)

(assert (=> d!1715345 e!3320741))

(declare-fun c!931147 () Bool)

(assert (=> d!1715345 (= c!931147 ((_ is EmptyExpr!15035) (Concat!23880 lt!2180394 (regTwo!30582 r!7292))))))

(declare-fun lt!2180568 () Bool)

(declare-fun e!3320739 () Bool)

(assert (=> d!1715345 (= lt!2180568 e!3320739)))

(declare-fun c!931148 () Bool)

(assert (=> d!1715345 (= c!931148 (isEmpty!33257 s!2326))))

(assert (=> d!1715345 (validRegex!6771 (Concat!23880 lt!2180394 (regTwo!30582 r!7292)))))

(assert (=> d!1715345 (= (matchR!7220 (Concat!23880 lt!2180394 (regTwo!30582 r!7292)) s!2326) lt!2180568)))

(declare-fun b!5349034 () Bool)

(assert (=> b!5349034 (= e!3320739 (matchR!7220 (derivativeStep!4197 (Concat!23880 lt!2180394 (regTwo!30582 r!7292)) (head!11468 s!2326)) (tail!10565 s!2326)))))

(declare-fun b!5349035 () Bool)

(declare-fun e!3320737 () Bool)

(assert (=> b!5349035 (= e!3320737 (= (head!11468 s!2326) (c!930865 (Concat!23880 lt!2180394 (regTwo!30582 r!7292)))))))

(declare-fun b!5349036 () Bool)

(assert (=> b!5349036 (= e!3320740 (not (= (head!11468 s!2326) (c!930865 (Concat!23880 lt!2180394 (regTwo!30582 r!7292))))))))

(declare-fun b!5349037 () Bool)

(declare-fun res!2269520 () Bool)

(assert (=> b!5349037 (=> (not res!2269520) (not e!3320737))))

(assert (=> b!5349037 (= res!2269520 (isEmpty!33257 (tail!10565 s!2326)))))

(declare-fun b!5349038 () Bool)

(assert (=> b!5349038 (= e!3320739 (nullable!5204 (Concat!23880 lt!2180394 (regTwo!30582 r!7292))))))

(declare-fun b!5349039 () Bool)

(declare-fun res!2269517 () Bool)

(declare-fun e!3320742 () Bool)

(assert (=> b!5349039 (=> res!2269517 e!3320742)))

(assert (=> b!5349039 (= res!2269517 (not ((_ is ElementMatch!15035) (Concat!23880 lt!2180394 (regTwo!30582 r!7292)))))))

(declare-fun e!3320736 () Bool)

(assert (=> b!5349039 (= e!3320736 e!3320742)))

(declare-fun b!5349040 () Bool)

(assert (=> b!5349040 (= e!3320736 (not lt!2180568))))

(declare-fun b!5349041 () Bool)

(declare-fun res!2269519 () Bool)

(assert (=> b!5349041 (=> res!2269519 e!3320742)))

(assert (=> b!5349041 (= res!2269519 e!3320737)))

(declare-fun res!2269515 () Bool)

(assert (=> b!5349041 (=> (not res!2269515) (not e!3320737))))

(assert (=> b!5349041 (= res!2269515 lt!2180568)))

(declare-fun b!5349042 () Bool)

(declare-fun call!382389 () Bool)

(assert (=> b!5349042 (= e!3320741 (= lt!2180568 call!382389))))

(declare-fun b!5349043 () Bool)

(declare-fun e!3320738 () Bool)

(assert (=> b!5349043 (= e!3320738 e!3320740)))

(declare-fun res!2269521 () Bool)

(assert (=> b!5349043 (=> res!2269521 e!3320740)))

(assert (=> b!5349043 (= res!2269521 call!382389)))

(declare-fun b!5349044 () Bool)

(assert (=> b!5349044 (= e!3320741 e!3320736)))

(declare-fun c!931146 () Bool)

(assert (=> b!5349044 (= c!931146 ((_ is EmptyLang!15035) (Concat!23880 lt!2180394 (regTwo!30582 r!7292))))))

(declare-fun b!5349045 () Bool)

(assert (=> b!5349045 (= e!3320742 e!3320738)))

(declare-fun res!2269518 () Bool)

(assert (=> b!5349045 (=> (not res!2269518) (not e!3320738))))

(assert (=> b!5349045 (= res!2269518 (not lt!2180568))))

(declare-fun b!5349046 () Bool)

(declare-fun res!2269522 () Bool)

(assert (=> b!5349046 (=> (not res!2269522) (not e!3320737))))

(assert (=> b!5349046 (= res!2269522 (not call!382389))))

(declare-fun bm!382384 () Bool)

(assert (=> bm!382384 (= call!382389 (isEmpty!33257 s!2326))))

(assert (= (and d!1715345 c!931148) b!5349038))

(assert (= (and d!1715345 (not c!931148)) b!5349034))

(assert (= (and d!1715345 c!931147) b!5349042))

(assert (= (and d!1715345 (not c!931147)) b!5349044))

(assert (= (and b!5349044 c!931146) b!5349040))

(assert (= (and b!5349044 (not c!931146)) b!5349039))

(assert (= (and b!5349039 (not res!2269517)) b!5349041))

(assert (= (and b!5349041 res!2269515) b!5349046))

(assert (= (and b!5349046 res!2269522) b!5349037))

(assert (= (and b!5349037 res!2269520) b!5349035))

(assert (= (and b!5349041 (not res!2269519)) b!5349045))

(assert (= (and b!5349045 res!2269518) b!5349043))

(assert (= (and b!5349043 (not res!2269521)) b!5349033))

(assert (= (and b!5349033 (not res!2269516)) b!5349036))

(assert (= (or b!5349042 b!5349046 b!5349043) bm!382384))

(assert (=> b!5349035 m!6379786))

(assert (=> b!5349034 m!6379786))

(assert (=> b!5349034 m!6379786))

(declare-fun m!6380418 () Bool)

(assert (=> b!5349034 m!6380418))

(assert (=> b!5349034 m!6379790))

(assert (=> b!5349034 m!6380418))

(assert (=> b!5349034 m!6379790))

(declare-fun m!6380424 () Bool)

(assert (=> b!5349034 m!6380424))

(assert (=> b!5349037 m!6379790))

(assert (=> b!5349037 m!6379790))

(assert (=> b!5349037 m!6379794))

(assert (=> bm!382384 m!6379772))

(assert (=> b!5349036 m!6379786))

(declare-fun m!6380430 () Bool)

(assert (=> b!5349038 m!6380430))

(assert (=> d!1715345 m!6379772))

(declare-fun m!6380434 () Bool)

(assert (=> d!1715345 m!6380434))

(assert (=> b!5349033 m!6379790))

(assert (=> b!5349033 m!6379790))

(assert (=> b!5349033 m!6379794))

(assert (=> b!5348112 d!1715345))

(declare-fun bs!1240097 () Bool)

(declare-fun d!1715347 () Bool)

(assert (= bs!1240097 (and d!1715347 d!1715233)))

(declare-fun lambda!274837 () Int)

(assert (=> bs!1240097 (= lambda!274837 lambda!274813)))

(declare-fun bs!1240098 () Bool)

(assert (= bs!1240098 (and d!1715347 d!1715229)))

(assert (=> bs!1240098 (= lambda!274837 lambda!274810)))

(declare-fun bs!1240099 () Bool)

(assert (= bs!1240099 (and d!1715347 d!1715125)))

(assert (=> bs!1240099 (= lambda!274837 lambda!274762)))

(declare-fun bs!1240100 () Bool)

(assert (= bs!1240100 (and d!1715347 d!1715293)))

(assert (=> bs!1240100 (= lambda!274837 lambda!274818)))

(declare-fun bs!1240101 () Bool)

(assert (= bs!1240101 (and d!1715347 d!1715319)))

(assert (=> bs!1240101 (= lambda!274837 lambda!274825)))

(declare-fun bs!1240102 () Bool)

(assert (= bs!1240102 (and d!1715347 d!1715195)))

(assert (=> bs!1240102 (= lambda!274837 lambda!274804)))

(declare-fun bs!1240103 () Bool)

(assert (= bs!1240103 (and d!1715347 d!1715287)))

(assert (=> bs!1240103 (= lambda!274837 lambda!274817)))

(assert (=> d!1715347 (= (inv!80834 setElem!34543) (forall!14459 (exprs!4919 setElem!34543) lambda!274837))))

(declare-fun bs!1240105 () Bool)

(assert (= bs!1240105 d!1715347))

(declare-fun m!6380440 () Bool)

(assert (=> bs!1240105 m!6380440))

(assert (=> setNonEmpty!34543 d!1715347))

(declare-fun b!5349054 () Bool)

(declare-fun e!3320748 () Bool)

(declare-fun tp!1486054 () Bool)

(assert (=> b!5349054 (= e!3320748 tp!1486054)))

(declare-fun b!5349053 () Bool)

(declare-fun e!3320747 () Bool)

(declare-fun tp!1486055 () Bool)

(assert (=> b!5349053 (= e!3320747 (and (inv!80834 (h!67730 (t!374623 zl!343))) e!3320748 tp!1486055))))

(assert (=> b!5348126 (= tp!1486047 e!3320747)))

(assert (= b!5349053 b!5349054))

(assert (= (and b!5348126 ((_ is Cons!61282) (t!374623 zl!343))) b!5349053))

(declare-fun m!6380442 () Bool)

(assert (=> b!5349053 m!6380442))

(declare-fun b!5349068 () Bool)

(declare-fun e!3320751 () Bool)

(declare-fun tp!1486066 () Bool)

(declare-fun tp!1486070 () Bool)

(assert (=> b!5349068 (= e!3320751 (and tp!1486066 tp!1486070))))

(declare-fun b!5349067 () Bool)

(declare-fun tp!1486067 () Bool)

(assert (=> b!5349067 (= e!3320751 tp!1486067)))

(declare-fun b!5349065 () Bool)

(assert (=> b!5349065 (= e!3320751 tp_is_empty!39323)))

(assert (=> b!5348140 (= tp!1486049 e!3320751)))

(declare-fun b!5349066 () Bool)

(declare-fun tp!1486068 () Bool)

(declare-fun tp!1486069 () Bool)

(assert (=> b!5349066 (= e!3320751 (and tp!1486068 tp!1486069))))

(assert (= (and b!5348140 ((_ is ElementMatch!15035) (regOne!30583 r!7292))) b!5349065))

(assert (= (and b!5348140 ((_ is Concat!23880) (regOne!30583 r!7292))) b!5349066))

(assert (= (and b!5348140 ((_ is Star!15035) (regOne!30583 r!7292))) b!5349067))

(assert (= (and b!5348140 ((_ is Union!15035) (regOne!30583 r!7292))) b!5349068))

(declare-fun b!5349072 () Bool)

(declare-fun e!3320752 () Bool)

(declare-fun tp!1486071 () Bool)

(declare-fun tp!1486075 () Bool)

(assert (=> b!5349072 (= e!3320752 (and tp!1486071 tp!1486075))))

(declare-fun b!5349071 () Bool)

(declare-fun tp!1486072 () Bool)

(assert (=> b!5349071 (= e!3320752 tp!1486072)))

(declare-fun b!5349069 () Bool)

(assert (=> b!5349069 (= e!3320752 tp_is_empty!39323)))

(assert (=> b!5348140 (= tp!1486041 e!3320752)))

(declare-fun b!5349070 () Bool)

(declare-fun tp!1486073 () Bool)

(declare-fun tp!1486074 () Bool)

(assert (=> b!5349070 (= e!3320752 (and tp!1486073 tp!1486074))))

(assert (= (and b!5348140 ((_ is ElementMatch!15035) (regTwo!30583 r!7292))) b!5349069))

(assert (= (and b!5348140 ((_ is Concat!23880) (regTwo!30583 r!7292))) b!5349070))

(assert (= (and b!5348140 ((_ is Star!15035) (regTwo!30583 r!7292))) b!5349071))

(assert (= (and b!5348140 ((_ is Union!15035) (regTwo!30583 r!7292))) b!5349072))

(declare-fun b!5349077 () Bool)

(declare-fun e!3320755 () Bool)

(declare-fun tp!1486080 () Bool)

(declare-fun tp!1486081 () Bool)

(assert (=> b!5349077 (= e!3320755 (and tp!1486080 tp!1486081))))

(assert (=> b!5348135 (= tp!1486046 e!3320755)))

(assert (= (and b!5348135 ((_ is Cons!61280) (exprs!4919 setElem!34543))) b!5349077))

(declare-fun b!5349078 () Bool)

(declare-fun e!3320756 () Bool)

(declare-fun tp!1486082 () Bool)

(declare-fun tp!1486083 () Bool)

(assert (=> b!5349078 (= e!3320756 (and tp!1486082 tp!1486083))))

(assert (=> b!5348132 (= tp!1486042 e!3320756)))

(assert (= (and b!5348132 ((_ is Cons!61280) (exprs!4919 (h!67730 zl!343)))) b!5349078))

(declare-fun b!5349083 () Bool)

(declare-fun e!3320759 () Bool)

(declare-fun tp!1486086 () Bool)

(assert (=> b!5349083 (= e!3320759 (and tp_is_empty!39323 tp!1486086))))

(assert (=> b!5348114 (= tp!1486044 e!3320759)))

(assert (= (and b!5348114 ((_ is Cons!61281) (t!374622 s!2326))) b!5349083))

(declare-fun b!5349087 () Bool)

(declare-fun e!3320760 () Bool)

(declare-fun tp!1486087 () Bool)

(declare-fun tp!1486091 () Bool)

(assert (=> b!5349087 (= e!3320760 (and tp!1486087 tp!1486091))))

(declare-fun b!5349086 () Bool)

(declare-fun tp!1486088 () Bool)

(assert (=> b!5349086 (= e!3320760 tp!1486088)))

(declare-fun b!5349084 () Bool)

(assert (=> b!5349084 (= e!3320760 tp_is_empty!39323)))

(assert (=> b!5348144 (= tp!1486048 e!3320760)))

(declare-fun b!5349085 () Bool)

(declare-fun tp!1486089 () Bool)

(declare-fun tp!1486090 () Bool)

(assert (=> b!5349085 (= e!3320760 (and tp!1486089 tp!1486090))))

(assert (= (and b!5348144 ((_ is ElementMatch!15035) (regOne!30582 r!7292))) b!5349084))

(assert (= (and b!5348144 ((_ is Concat!23880) (regOne!30582 r!7292))) b!5349085))

(assert (= (and b!5348144 ((_ is Star!15035) (regOne!30582 r!7292))) b!5349086))

(assert (= (and b!5348144 ((_ is Union!15035) (regOne!30582 r!7292))) b!5349087))

(declare-fun b!5349091 () Bool)

(declare-fun e!3320761 () Bool)

(declare-fun tp!1486092 () Bool)

(declare-fun tp!1486096 () Bool)

(assert (=> b!5349091 (= e!3320761 (and tp!1486092 tp!1486096))))

(declare-fun b!5349090 () Bool)

(declare-fun tp!1486093 () Bool)

(assert (=> b!5349090 (= e!3320761 tp!1486093)))

(declare-fun b!5349088 () Bool)

(assert (=> b!5349088 (= e!3320761 tp_is_empty!39323)))

(assert (=> b!5348144 (= tp!1486040 e!3320761)))

(declare-fun b!5349089 () Bool)

(declare-fun tp!1486094 () Bool)

(declare-fun tp!1486095 () Bool)

(assert (=> b!5349089 (= e!3320761 (and tp!1486094 tp!1486095))))

(assert (= (and b!5348144 ((_ is ElementMatch!15035) (regTwo!30582 r!7292))) b!5349088))

(assert (= (and b!5348144 ((_ is Concat!23880) (regTwo!30582 r!7292))) b!5349089))

(assert (= (and b!5348144 ((_ is Star!15035) (regTwo!30582 r!7292))) b!5349090))

(assert (= (and b!5348144 ((_ is Union!15035) (regTwo!30582 r!7292))) b!5349091))

(declare-fun b!5349095 () Bool)

(declare-fun e!3320762 () Bool)

(declare-fun tp!1486097 () Bool)

(declare-fun tp!1486101 () Bool)

(assert (=> b!5349095 (= e!3320762 (and tp!1486097 tp!1486101))))

(declare-fun b!5349094 () Bool)

(declare-fun tp!1486098 () Bool)

(assert (=> b!5349094 (= e!3320762 tp!1486098)))

(declare-fun b!5349092 () Bool)

(assert (=> b!5349092 (= e!3320762 tp_is_empty!39323)))

(assert (=> b!5348125 (= tp!1486043 e!3320762)))

(declare-fun b!5349093 () Bool)

(declare-fun tp!1486099 () Bool)

(declare-fun tp!1486100 () Bool)

(assert (=> b!5349093 (= e!3320762 (and tp!1486099 tp!1486100))))

(assert (= (and b!5348125 ((_ is ElementMatch!15035) (reg!15364 r!7292))) b!5349092))

(assert (= (and b!5348125 ((_ is Concat!23880) (reg!15364 r!7292))) b!5349093))

(assert (= (and b!5348125 ((_ is Star!15035) (reg!15364 r!7292))) b!5349094))

(assert (= (and b!5348125 ((_ is Union!15035) (reg!15364 r!7292))) b!5349095))

(declare-fun condSetEmpty!34546 () Bool)

(assert (=> setNonEmpty!34543 (= condSetEmpty!34546 (= setRest!34543 ((as const (Array Context!8838 Bool)) false)))))

(declare-fun setRes!34546 () Bool)

(assert (=> setNonEmpty!34543 (= tp!1486045 setRes!34546)))

(declare-fun setIsEmpty!34546 () Bool)

(assert (=> setIsEmpty!34546 setRes!34546))

(declare-fun tp!1486106 () Bool)

(declare-fun setNonEmpty!34546 () Bool)

(declare-fun setElem!34546 () Context!8838)

(declare-fun e!3320765 () Bool)

(assert (=> setNonEmpty!34546 (= setRes!34546 (and tp!1486106 (inv!80834 setElem!34546) e!3320765))))

(declare-fun setRest!34546 () (InoxSet Context!8838))

(assert (=> setNonEmpty!34546 (= setRest!34543 ((_ map or) (store ((as const (Array Context!8838 Bool)) false) setElem!34546 true) setRest!34546))))

(declare-fun b!5349100 () Bool)

(declare-fun tp!1486107 () Bool)

(assert (=> b!5349100 (= e!3320765 tp!1486107)))

(assert (= (and setNonEmpty!34543 condSetEmpty!34546) setIsEmpty!34546))

(assert (= (and setNonEmpty!34543 (not condSetEmpty!34546)) setNonEmpty!34546))

(assert (= setNonEmpty!34546 b!5349100))

(declare-fun m!6380450 () Bool)

(assert (=> setNonEmpty!34546 m!6380450))

(declare-fun b_lambda!205299 () Bool)

(assert (= b_lambda!205293 (or b!5348141 b_lambda!205299)))

(declare-fun bs!1240120 () Bool)

(declare-fun d!1715353 () Bool)

(assert (= bs!1240120 (and d!1715353 b!5348141)))

(assert (=> bs!1240120 (= (dynLambda!24224 lambda!274743 lt!2180386) (derivationStepZipperUp!407 lt!2180386 (h!67729 s!2326)))))

(assert (=> bs!1240120 m!6379572))

(assert (=> d!1715131 d!1715353))

(declare-fun b_lambda!205301 () Bool)

(assert (= b_lambda!205295 (or b!5348141 b_lambda!205301)))

(declare-fun bs!1240121 () Bool)

(declare-fun d!1715355 () Bool)

(assert (= bs!1240121 (and d!1715355 b!5348141)))

(assert (=> bs!1240121 (= (dynLambda!24224 lambda!274743 (h!67730 zl!343)) (derivationStepZipperUp!407 (h!67730 zl!343) (h!67729 s!2326)))))

(assert (=> bs!1240121 m!6379556))

(assert (=> d!1715215 d!1715355))

(check-sat (not b!5348361) (not bm!382304) (not b!5348357) (not b!5348779) (not b!5349015) (not bm!382341) (not d!1715179) (not d!1715251) (not b!5348706) (not b!5348772) (not b!5348287) (not b!5349033) (not b!5348244) (not b!5349085) (not d!1715325) (not d!1715257) (not d!1715347) (not b!5348569) (not b!5348701) (not d!1715223) (not b!5349100) (not d!1715293) (not b!5348955) (not b!5349036) (not b!5348384) (not b!5348851) (not b!5348912) (not bm!382299) (not d!1715309) (not b!5348852) (not b!5348896) (not b!5348570) (not b!5348902) (not b!5348480) (not b!5348660) (not b!5348958) (not bm!382362) (not b!5348900) (not b!5348974) (not b!5348954) (not b!5348904) (not b!5348475) (not d!1715219) (not b!5348206) (not b!5348386) (not bm!382382) (not d!1715239) (not b!5348653) (not bm!382294) (not b!5348771) (not bm!382310) (not b!5349087) (not bm!382364) (not b!5349078) (not bm!382296) (not b!5349077) (not b!5348971) (not b!5348885) (not d!1715215) (not d!1715307) (not b!5348205) (not d!1715159) (not b!5348826) (not b!5349090) (not bm!382339) (not b!5349006) (not d!1715187) (not d!1715319) (not d!1715125) (not bm!382358) (not b!5348557) (not d!1715213) (not b!5348385) (not b!5348827) (not bm!382363) (not b!5349035) (not d!1715229) (not b!5348925) (not b!5349034) (not bm!382359) (not b!5349008) (not b!5348924) (not b!5348910) (not b!5348967) (not b!5348388) (not b!5349093) (not d!1715317) (not d!1715189) (not b!5348969) (not b!5348478) (not d!1715259) (not d!1715275) (not b!5348825) (not bm!382342) (not b!5348200) (not d!1715283) (not d!1715167) (not bm!382380) (not b!5348976) (not b!5348856) (not b!5348879) (not b!5349001) (not d!1715131) (not b!5349038) (not bm!382285) (not b!5348658) (not b!5349072) (not b!5348844) (not b!5348823) (not b!5348956) (not d!1715163) (not bm!382284) (not b!5348687) (not b!5349070) (not b!5348855) (not bm!382287) (not b!5348903) (not b!5349012) (not b!5348914) (not b!5349071) (not d!1715153) (not b!5348571) (not b!5348957) (not b!5348572) (not b!5348828) (not b!5348845) (not b!5348905) (not b!5348790) (not b!5349054) (not b!5348953) (not b!5348968) (not bm!382381) (not b!5348822) (not b_lambda!205299) (not b!5349011) (not d!1715343) (not b!5348830) (not d!1715141) (not b!5348573) (not b!5348700) (not b!5348600) (not b!5348474) (not b!5349013) (not b!5349037) (not b!5348387) (not b!5348696) (not d!1715327) (not b!5348858) (not b!5348195) (not b_lambda!205301) (not b!5348780) (not b!5348245) (not b!5348654) (not bm!382378) (not b!5348651) (not d!1715301) (not b!5348356) (not b!5349066) (not d!1715271) (not b!5348193) (not b!5348360) (not b!5349086) tp_is_empty!39323 (not b!5348720) (not b!5348970) (not d!1715121) (not d!1715345) (not b!5348884) (not bm!382312) (not b!5348978) (not b!5348695) (not b!5349053) (not b!5348882) (not b!5348820) (not b!5348893) (not setNonEmpty!34546) (not d!1715263) (not b!5348881) (not b!5348232) (not b!5348776) (not b!5348655) (not d!1715333) (not b!5348284) (not b!5348773) (not bm!382305) (not bm!382383) (not b!5349091) (not b!5348477) (not d!1715297) (not b!5348473) (not d!1715149) (not d!1715145) (not b!5348907) (not bs!1240121) (not b!5348718) (not d!1715233) (not bs!1240120) (not b!5348824) (not b!5348359) (not d!1715227) (not d!1715315) (not b!5348821) (not b!5348389) (not b!5348981) (not b!5348358) (not b!5349010) (not d!1715303) (not bm!382379) (not b!5349068) (not b!5349083) (not d!1715161) (not b!5349000) (not b!5349095) (not b!5348566) (not d!1715255) (not d!1715253) (not d!1715273) (not b!5348853) (not bm!382361) (not d!1715195) (not b!5348906) (not b!5348555) (not b!5348895) (not b!5348603) (not bm!382368) (not d!1715127) (not d!1715249) (not b!5348887) (not d!1715119) (not b!5348198) (not b!5348719) (not b!5349089) (not b!5348829) (not b!5349067) (not b!5348652) (not b!5348705) (not b!5348778) (not b!5348894) (not b!5349094) (not d!1715299) (not b!5348917) (not d!1715287) (not b!5348568) (not b!5349014) (not d!1715269) (not b!5348179) (not b!5348897) (not d!1715133) (not bm!382384))
(check-sat)
