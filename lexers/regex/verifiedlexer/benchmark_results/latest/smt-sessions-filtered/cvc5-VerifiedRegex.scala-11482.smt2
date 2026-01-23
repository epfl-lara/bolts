; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!624948 () Bool)

(assert start!624948)

(declare-fun b!6288130 () Bool)

(assert (=> b!6288130 true))

(assert (=> b!6288130 true))

(declare-fun lambda!345273 () Int)

(declare-fun lambda!345272 () Int)

(assert (=> b!6288130 (not (= lambda!345273 lambda!345272))))

(assert (=> b!6288130 true))

(assert (=> b!6288130 true))

(declare-fun b!6288138 () Bool)

(assert (=> b!6288138 true))

(declare-fun bs!1571682 () Bool)

(declare-fun b!6288120 () Bool)

(assert (= bs!1571682 (and b!6288120 b!6288130)))

(declare-datatypes ((C!32690 0))(
  ( (C!32691 (val!26047 Int)) )
))
(declare-datatypes ((Regex!16210 0))(
  ( (ElementMatch!16210 (c!1140891 C!32690)) (Concat!25055 (regOne!32932 Regex!16210) (regTwo!32932 Regex!16210)) (EmptyExpr!16210) (Star!16210 (reg!16539 Regex!16210)) (EmptyLang!16210) (Union!16210 (regOne!32933 Regex!16210) (regTwo!32933 Regex!16210)) )
))
(declare-fun lt!2356410 () Regex!16210)

(declare-fun r!7292 () Regex!16210)

(declare-fun lambda!345275 () Int)

(assert (=> bs!1571682 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356410 (regTwo!32932 r!7292))) (= lambda!345275 lambda!345272))))

(assert (=> bs!1571682 (not (= lambda!345275 lambda!345273))))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(declare-fun lambda!345276 () Int)

(assert (=> bs!1571682 (not (= lambda!345276 lambda!345272))))

(assert (=> bs!1571682 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356410 (regTwo!32932 r!7292))) (= lambda!345276 lambda!345273))))

(assert (=> b!6288120 (not (= lambda!345276 lambda!345275))))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(declare-fun lambda!345277 () Int)

(declare-fun lt!2356423 () Regex!16210)

(assert (=> bs!1571682 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356423 (regTwo!32932 r!7292))) (= lambda!345277 lambda!345272))))

(assert (=> bs!1571682 (not (= lambda!345277 lambda!345273))))

(assert (=> b!6288120 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345277 lambda!345275))))

(assert (=> b!6288120 (not (= lambda!345277 lambda!345276))))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(declare-fun lambda!345278 () Int)

(assert (=> bs!1571682 (not (= lambda!345278 lambda!345272))))

(assert (=> b!6288120 (not (= lambda!345278 lambda!345277))))

(assert (=> b!6288120 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345278 lambda!345276))))

(assert (=> bs!1571682 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356423 (regTwo!32932 r!7292))) (= lambda!345278 lambda!345273))))

(assert (=> b!6288120 (not (= lambda!345278 lambda!345275))))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(assert (=> b!6288120 true))

(declare-fun b!6288098 () Bool)

(declare-fun res!2593219 () Bool)

(declare-fun e!3823678 () Bool)

(assert (=> b!6288098 (=> (not res!2593219) (not e!3823678))))

(declare-fun validRegex!7946 (Regex!16210) Bool)

(assert (=> b!6288098 (= res!2593219 (validRegex!7946 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun b!6288099 () Bool)

(declare-fun e!3823681 () Bool)

(declare-fun tp_is_empty!41673 () Bool)

(assert (=> b!6288099 (= e!3823681 tp_is_empty!41673)))

(declare-fun setNonEmpty!42797 () Bool)

(declare-datatypes ((List!64929 0))(
  ( (Nil!64805) (Cons!64805 (h!71253 Regex!16210) (t!378491 List!64929)) )
))
(declare-datatypes ((Context!11188 0))(
  ( (Context!11189 (exprs!6094 List!64929)) )
))
(declare-fun setElem!42797 () Context!11188)

(declare-fun setRes!42797 () Bool)

(declare-fun e!3823679 () Bool)

(declare-fun tp!1751467 () Bool)

(declare-fun inv!83773 (Context!11188) Bool)

(assert (=> setNonEmpty!42797 (= setRes!42797 (and tp!1751467 (inv!83773 setElem!42797) e!3823679))))

(declare-fun z!1189 () (Set Context!11188))

(declare-fun setRest!42797 () (Set Context!11188))

(assert (=> setNonEmpty!42797 (= z!1189 (set.union (set.insert setElem!42797 (as set.empty (Set Context!11188))) setRest!42797))))

(declare-fun e!3823685 () Bool)

(declare-fun b!6288100 () Bool)

(declare-fun tp!1751475 () Bool)

(declare-fun e!3823676 () Bool)

(declare-datatypes ((List!64930 0))(
  ( (Nil!64806) (Cons!64806 (h!71254 Context!11188) (t!378492 List!64930)) )
))
(declare-fun zl!343 () List!64930)

(assert (=> b!6288100 (= e!3823685 (and (inv!83773 (h!71254 zl!343)) e!3823676 tp!1751475))))

(declare-fun b!6288101 () Bool)

(declare-fun res!2593220 () Bool)

(declare-fun e!3823694 () Bool)

(assert (=> b!6288101 (=> res!2593220 e!3823694)))

(declare-datatypes ((List!64931 0))(
  ( (Nil!64807) (Cons!64807 (h!71255 C!32690) (t!378493 List!64931)) )
))
(declare-fun s!2326 () List!64931)

(declare-fun lt!2356438 () Bool)

(declare-fun lt!2356425 () Regex!16210)

(declare-fun matchR!8393 (Regex!16210 List!64931) Bool)

(assert (=> b!6288101 (= res!2593220 (not (= lt!2356438 (matchR!8393 (Concat!25055 lt!2356425 lt!2356423) s!2326))))))

(declare-fun b!6288102 () Bool)

(declare-fun e!3823677 () Bool)

(declare-fun lt!2356437 () (Set Context!11188))

(declare-fun matchZipper!2222 ((Set Context!11188) List!64931) Bool)

(declare-fun derivationStepZipper!2176 ((Set Context!11188) C!32690) (Set Context!11188))

(assert (=> b!6288102 (= e!3823677 (not (matchZipper!2222 (derivationStepZipper!2176 lt!2356437 (h!71255 s!2326)) (t!378493 s!2326))))))

(declare-fun setIsEmpty!42797 () Bool)

(assert (=> setIsEmpty!42797 setRes!42797))

(declare-fun b!6288103 () Bool)

(declare-fun tp!1751468 () Bool)

(assert (=> b!6288103 (= e!3823679 tp!1751468)))

(declare-fun b!6288104 () Bool)

(declare-fun tp!1751476 () Bool)

(assert (=> b!6288104 (= e!3823681 tp!1751476)))

(declare-fun b!6288105 () Bool)

(declare-fun e!3823687 () Bool)

(declare-fun e!3823692 () Bool)

(assert (=> b!6288105 (= e!3823687 e!3823692)))

(declare-fun res!2593225 () Bool)

(assert (=> b!6288105 (=> res!2593225 e!3823692)))

(declare-fun lt!2356413 () List!64930)

(declare-fun zipperDepthTotal!363 (List!64930) Int)

(assert (=> b!6288105 (= res!2593225 (>= (zipperDepthTotal!363 lt!2356413) (zipperDepthTotal!363 zl!343)))))

(declare-fun lt!2356456 () Context!11188)

(assert (=> b!6288105 (= lt!2356413 (Cons!64806 lt!2356456 Nil!64806))))

(declare-fun b!6288106 () Bool)

(assert (=> b!6288106 (= e!3823678 (validRegex!7946 lt!2356423))))

(declare-fun b!6288107 () Bool)

(declare-fun res!2593209 () Bool)

(declare-fun e!3823691 () Bool)

(assert (=> b!6288107 (=> res!2593209 e!3823691)))

(declare-fun generalisedConcat!1807 (List!64929) Regex!16210)

(assert (=> b!6288107 (= res!2593209 (not (= r!7292 (generalisedConcat!1807 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun b!6288108 () Bool)

(declare-fun e!3823688 () Bool)

(declare-fun e!3823696 () Bool)

(assert (=> b!6288108 (= e!3823688 e!3823696)))

(declare-fun res!2593216 () Bool)

(assert (=> b!6288108 (=> res!2593216 e!3823696)))

(assert (=> b!6288108 (= res!2593216 e!3823677)))

(declare-fun res!2593207 () Bool)

(assert (=> b!6288108 (=> (not res!2593207) (not e!3823677))))

(declare-fun lt!2356448 () (Set Context!11188))

(declare-fun lt!2356433 () Bool)

(assert (=> b!6288108 (= res!2593207 (not (= lt!2356433 (matchZipper!2222 lt!2356448 (t!378493 s!2326)))))))

(declare-fun lt!2356422 () (Set Context!11188))

(declare-fun e!3823689 () Bool)

(assert (=> b!6288108 (= (matchZipper!2222 lt!2356422 (t!378493 s!2326)) e!3823689)))

(declare-fun res!2593210 () Bool)

(assert (=> b!6288108 (=> res!2593210 e!3823689)))

(declare-fun lt!2356444 () Bool)

(assert (=> b!6288108 (= res!2593210 lt!2356444)))

(declare-fun lt!2356409 () (Set Context!11188))

(declare-fun lt!2356443 () (Set Context!11188))

(declare-datatypes ((Unit!158171 0))(
  ( (Unit!158172) )
))
(declare-fun lt!2356420 () Unit!158171)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1041 ((Set Context!11188) (Set Context!11188) List!64931) Unit!158171)

(assert (=> b!6288108 (= lt!2356420 (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356443 lt!2356409 (t!378493 s!2326)))))

(declare-fun lt!2356417 () Context!11188)

(declare-fun lambda!345274 () Int)

(declare-fun flatMap!1715 ((Set Context!11188) Int) (Set Context!11188))

(declare-fun derivationStepZipperUp!1384 (Context!11188 C!32690) (Set Context!11188))

(assert (=> b!6288108 (= (flatMap!1715 lt!2356437 lambda!345274) (derivationStepZipperUp!1384 lt!2356417 (h!71255 s!2326)))))

(declare-fun lt!2356442 () Unit!158171)

(declare-fun lemmaFlatMapOnSingletonSet!1241 ((Set Context!11188) Context!11188 Int) Unit!158171)

(assert (=> b!6288108 (= lt!2356442 (lemmaFlatMapOnSingletonSet!1241 lt!2356437 lt!2356417 lambda!345274))))

(declare-fun b!6288109 () Bool)

(declare-fun res!2593214 () Bool)

(assert (=> b!6288109 (=> res!2593214 e!3823691)))

(assert (=> b!6288109 (= res!2593214 (or (is-EmptyExpr!16210 r!7292) (is-EmptyLang!16210 r!7292) (is-ElementMatch!16210 r!7292) (is-Union!16210 r!7292) (not (is-Concat!25055 r!7292))))))

(declare-fun b!6288110 () Bool)

(declare-fun tp!1751471 () Bool)

(declare-fun tp!1751473 () Bool)

(assert (=> b!6288110 (= e!3823681 (and tp!1751471 tp!1751473))))

(declare-fun b!6288111 () Bool)

(declare-fun res!2593238 () Bool)

(assert (=> b!6288111 (=> res!2593238 e!3823691)))

(declare-fun isEmpty!36859 (List!64930) Bool)

(assert (=> b!6288111 (= res!2593238 (not (isEmpty!36859 (t!378492 zl!343))))))

(declare-fun b!6288112 () Bool)

(declare-fun res!2593217 () Bool)

(declare-fun e!3823693 () Bool)

(assert (=> b!6288112 (=> (not res!2593217) (not e!3823693))))

(declare-fun unfocusZipper!1952 (List!64930) Regex!16210)

(assert (=> b!6288112 (= res!2593217 (= r!7292 (unfocusZipper!1952 zl!343)))))

(declare-fun b!6288113 () Bool)

(assert (=> b!6288113 (= e!3823689 (matchZipper!2222 lt!2356409 (t!378493 s!2326)))))

(declare-fun b!6288114 () Bool)

(declare-fun res!2593213 () Bool)

(assert (=> b!6288114 (=> res!2593213 e!3823691)))

(assert (=> b!6288114 (= res!2593213 (not (is-Cons!64805 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288115 () Bool)

(declare-fun e!3823684 () Bool)

(declare-fun tp!1751474 () Bool)

(assert (=> b!6288115 (= e!3823684 (and tp_is_empty!41673 tp!1751474))))

(declare-fun b!6288116 () Bool)

(declare-fun res!2593235 () Bool)

(assert (=> b!6288116 (=> res!2593235 e!3823687)))

(declare-fun contextDepthTotal!333 (Context!11188) Int)

(assert (=> b!6288116 (= res!2593235 (>= (contextDepthTotal!333 lt!2356456) (contextDepthTotal!333 (h!71254 zl!343))))))

(declare-fun b!6288117 () Bool)

(declare-fun res!2593223 () Bool)

(assert (=> b!6288117 (=> res!2593223 e!3823692)))

(declare-fun zipperDepth!335 (List!64930) Int)

(assert (=> b!6288117 (= res!2593223 (> (zipperDepth!335 lt!2356413) (zipperDepth!335 zl!343)))))

(declare-fun b!6288118 () Bool)

(declare-fun res!2593236 () Bool)

(assert (=> b!6288118 (=> res!2593236 e!3823691)))

(declare-fun generalisedUnion!2054 (List!64929) Regex!16210)

(declare-fun unfocusZipperList!1631 (List!64930) List!64929)

(assert (=> b!6288118 (= res!2593236 (not (= r!7292 (generalisedUnion!2054 (unfocusZipperList!1631 zl!343)))))))

(declare-fun b!6288119 () Bool)

(declare-fun e!3823675 () Bool)

(declare-fun e!3823686 () Bool)

(assert (=> b!6288119 (= e!3823675 e!3823686)))

(declare-fun res!2593237 () Bool)

(assert (=> b!6288119 (=> res!2593237 e!3823686)))

(declare-fun e!3823683 () Bool)

(assert (=> b!6288119 (= res!2593237 e!3823683)))

(declare-fun res!2593215 () Bool)

(assert (=> b!6288119 (=> (not res!2593215) (not e!3823683))))

(assert (=> b!6288119 (= res!2593215 (not (= lt!2356433 lt!2356444)))))

(declare-fun lt!2356454 () (Set Context!11188))

(assert (=> b!6288119 (= lt!2356433 (matchZipper!2222 lt!2356454 (t!378493 s!2326)))))

(declare-fun lt!2356453 () (Set Context!11188))

(declare-fun e!3823695 () Bool)

(assert (=> b!6288119 (= (matchZipper!2222 lt!2356453 (t!378493 s!2326)) e!3823695)))

(declare-fun res!2593231 () Bool)

(assert (=> b!6288119 (=> res!2593231 e!3823695)))

(assert (=> b!6288119 (= res!2593231 lt!2356444)))

(assert (=> b!6288119 (= lt!2356444 (matchZipper!2222 lt!2356443 (t!378493 s!2326)))))

(declare-fun lt!2356445 () (Set Context!11188))

(declare-fun lt!2356435 () Unit!158171)

(assert (=> b!6288119 (= lt!2356435 (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356443 lt!2356445 (t!378493 s!2326)))))

(assert (=> b!6288120 (= e!3823692 e!3823694)))

(declare-fun res!2593226 () Bool)

(assert (=> b!6288120 (=> res!2593226 e!3823694)))

(declare-fun lt!2356431 () Bool)

(declare-fun lt!2356418 () Bool)

(declare-fun lt!2356424 () Bool)

(declare-fun lt!2356432 () Bool)

(declare-fun lt!2356440 () Bool)

(assert (=> b!6288120 (= res!2593226 (or (not (= lt!2356424 (or lt!2356432 lt!2356418))) (not (= lt!2356424 (or lt!2356431 lt!2356440)))))))

(assert (=> b!6288120 (= lt!2356424 (matchZipper!2222 z!1189 s!2326))))

(declare-fun Exists!3280 (Int) Bool)

(assert (=> b!6288120 (= (Exists!3280 lambda!345277) (Exists!3280 lambda!345278))))

(declare-fun lt!2356457 () Unit!158171)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (Regex!16210 Regex!16210 List!64931) Unit!158171)

(assert (=> b!6288120 (= lt!2356457 (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326))))

(declare-datatypes ((tuple2!66378 0))(
  ( (tuple2!66379 (_1!36492 List!64931) (_2!36492 List!64931)) )
))
(declare-datatypes ((Option!16101 0))(
  ( (None!16100) (Some!16100 (v!52255 tuple2!66378)) )
))
(declare-fun isDefined!12804 (Option!16101) Bool)

(declare-fun findConcatSeparation!2515 (Regex!16210 Regex!16210 List!64931 List!64931 List!64931) Option!16101)

(assert (=> b!6288120 (= (isDefined!12804 (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 Nil!64807 s!2326 s!2326)) (Exists!3280 lambda!345277))))

(declare-fun lt!2356450 () Unit!158171)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2279 (Regex!16210 Regex!16210 List!64931) Unit!158171)

(assert (=> b!6288120 (= lt!2356450 (lemmaFindConcatSeparationEquivalentToExists!2279 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326))))

(assert (=> b!6288120 (= lt!2356423 (generalisedConcat!1807 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun matchRSpec!3311 (Regex!16210 List!64931) Bool)

(assert (=> b!6288120 (= lt!2356440 (matchRSpec!3311 lt!2356410 s!2326))))

(declare-fun lt!2356441 () Unit!158171)

(declare-fun mainMatchTheorem!3311 (Regex!16210 List!64931) Unit!158171)

(assert (=> b!6288120 (= lt!2356441 (mainMatchTheorem!3311 lt!2356410 s!2326))))

(assert (=> b!6288120 (= (Exists!3280 lambda!345275) (Exists!3280 lambda!345276))))

(declare-fun lt!2356419 () Unit!158171)

(assert (=> b!6288120 (= lt!2356419 (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326))))

(assert (=> b!6288120 (= (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 Nil!64807 s!2326 s!2326)) (Exists!3280 lambda!345275))))

(declare-fun lt!2356430 () Unit!158171)

(assert (=> b!6288120 (= lt!2356430 (lemmaFindConcatSeparationEquivalentToExists!2279 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326))))

(declare-fun lt!2356414 () Regex!16210)

(assert (=> b!6288120 (= lt!2356431 (matchRSpec!3311 lt!2356414 s!2326))))

(declare-fun lt!2356428 () Unit!158171)

(assert (=> b!6288120 (= lt!2356428 (mainMatchTheorem!3311 lt!2356414 s!2326))))

(assert (=> b!6288120 (= lt!2356440 lt!2356418)))

(assert (=> b!6288120 (= lt!2356418 (matchZipper!2222 lt!2356437 s!2326))))

(assert (=> b!6288120 (= lt!2356440 (matchR!8393 lt!2356410 s!2326))))

(declare-fun lt!2356411 () Unit!158171)

(declare-fun theoremZipperRegexEquiv!780 ((Set Context!11188) List!64930 Regex!16210 List!64931) Unit!158171)

(assert (=> b!6288120 (= lt!2356411 (theoremZipperRegexEquiv!780 lt!2356437 (Cons!64806 lt!2356417 Nil!64806) lt!2356410 s!2326))))

(declare-fun lt!2356452 () List!64929)

(assert (=> b!6288120 (= lt!2356410 (generalisedConcat!1807 lt!2356452))))

(assert (=> b!6288120 (= lt!2356431 lt!2356432)))

(declare-fun lt!2356412 () (Set Context!11188))

(assert (=> b!6288120 (= lt!2356432 (matchZipper!2222 lt!2356412 s!2326))))

(assert (=> b!6288120 (= lt!2356431 (matchR!8393 lt!2356414 s!2326))))

(declare-fun lt!2356415 () Unit!158171)

(assert (=> b!6288120 (= lt!2356415 (theoremZipperRegexEquiv!780 lt!2356412 lt!2356413 lt!2356414 s!2326))))

(declare-fun lt!2356455 () List!64929)

(assert (=> b!6288120 (= lt!2356414 (generalisedConcat!1807 lt!2356455))))

(declare-fun b!6288121 () Bool)

(declare-fun tp!1751469 () Bool)

(assert (=> b!6288121 (= e!3823676 tp!1751469)))

(declare-fun b!6288122 () Bool)

(declare-fun res!2593222 () Bool)

(declare-fun e!3823690 () Bool)

(assert (=> b!6288122 (=> res!2593222 e!3823690)))

(declare-fun nullable!6203 (Regex!16210) Bool)

(assert (=> b!6288122 (= res!2593222 (not (nullable!6203 (regOne!32932 (regOne!32932 r!7292)))))))

(declare-fun b!6288123 () Bool)

(declare-fun res!2593212 () Bool)

(assert (=> b!6288123 (=> res!2593212 e!3823694)))

(assert (=> b!6288123 (= res!2593212 (not (= lt!2356438 (matchR!8393 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)) s!2326))))))

(declare-fun b!6288124 () Bool)

(assert (=> b!6288124 (= e!3823686 e!3823688)))

(declare-fun res!2593224 () Bool)

(assert (=> b!6288124 (=> res!2593224 e!3823688)))

(assert (=> b!6288124 (= res!2593224 (not (= lt!2356448 lt!2356422)))))

(assert (=> b!6288124 (= lt!2356422 (set.union lt!2356443 lt!2356409))))

(assert (=> b!6288124 (= lt!2356409 (derivationStepZipperUp!1384 lt!2356417 (h!71255 s!2326)))))

(assert (=> b!6288124 (= (flatMap!1715 lt!2356412 lambda!345274) (derivationStepZipperUp!1384 lt!2356456 (h!71255 s!2326)))))

(declare-fun lt!2356439 () Unit!158171)

(assert (=> b!6288124 (= lt!2356439 (lemmaFlatMapOnSingletonSet!1241 lt!2356412 lt!2356456 lambda!345274))))

(declare-fun lt!2356436 () (Set Context!11188))

(assert (=> b!6288124 (= lt!2356436 (derivationStepZipperUp!1384 lt!2356456 (h!71255 s!2326)))))

(assert (=> b!6288124 (= lt!2356448 (derivationStepZipper!2176 lt!2356412 (h!71255 s!2326)))))

(assert (=> b!6288124 (= lt!2356437 (set.insert lt!2356417 (as set.empty (Set Context!11188))))))

(assert (=> b!6288124 (= lt!2356412 (set.insert lt!2356456 (as set.empty (Set Context!11188))))))

(assert (=> b!6288124 (= lt!2356456 (Context!11189 lt!2356455))))

(assert (=> b!6288124 (= lt!2356455 (Cons!64805 (regOne!32932 (regOne!32932 r!7292)) lt!2356452))))

(declare-fun b!6288125 () Bool)

(declare-fun tp!1751470 () Bool)

(declare-fun tp!1751472 () Bool)

(assert (=> b!6288125 (= e!3823681 (and tp!1751470 tp!1751472))))

(declare-fun b!6288126 () Bool)

(assert (=> b!6288126 (= e!3823696 e!3823687)))

(declare-fun res!2593232 () Bool)

(assert (=> b!6288126 (=> res!2593232 e!3823687)))

(assert (=> b!6288126 (= res!2593232 (not (= (exprs!6094 (h!71254 zl!343)) (Cons!64805 lt!2356425 (t!378491 (exprs!6094 (h!71254 zl!343)))))))))

(assert (=> b!6288126 (= lt!2356425 (Concat!25055 (regOne!32932 (regOne!32932 r!7292)) (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun b!6288127 () Bool)

(assert (=> b!6288127 (= e!3823683 (not (matchZipper!2222 lt!2356445 (t!378493 s!2326))))))

(declare-fun b!6288128 () Bool)

(declare-fun res!2593228 () Bool)

(assert (=> b!6288128 (=> (not res!2593228) (not e!3823693))))

(declare-fun toList!9994 ((Set Context!11188)) List!64930)

(assert (=> b!6288128 (= res!2593228 (= (toList!9994 z!1189) zl!343))))

(declare-fun b!6288129 () Bool)

(declare-fun res!2593229 () Bool)

(assert (=> b!6288129 (=> res!2593229 e!3823694)))

(assert (=> b!6288129 (= res!2593229 (not (= lt!2356438 (matchR!8393 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)) s!2326))))))

(declare-fun e!3823697 () Bool)

(assert (=> b!6288130 (= e!3823691 e!3823697)))

(declare-fun res!2593221 () Bool)

(assert (=> b!6288130 (=> res!2593221 e!3823697)))

(declare-fun lt!2356416 () Bool)

(assert (=> b!6288130 (= res!2593221 (or (not (= lt!2356438 lt!2356416)) (is-Nil!64807 s!2326)))))

(assert (=> b!6288130 (= (Exists!3280 lambda!345272) (Exists!3280 lambda!345273))))

(declare-fun lt!2356427 () Unit!158171)

(assert (=> b!6288130 (= lt!2356427 (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326))))

(assert (=> b!6288130 (= lt!2356416 (Exists!3280 lambda!345272))))

(assert (=> b!6288130 (= lt!2356416 (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) Nil!64807 s!2326 s!2326)))))

(declare-fun lt!2356434 () Unit!158171)

(assert (=> b!6288130 (= lt!2356434 (lemmaFindConcatSeparationEquivalentToExists!2279 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326))))

(declare-fun b!6288131 () Bool)

(assert (=> b!6288131 (= e!3823694 e!3823678)))

(declare-fun res!2593227 () Bool)

(assert (=> b!6288131 (=> (not res!2593227) (not e!3823678))))

(assert (=> b!6288131 (= res!2593227 (validRegex!7946 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun b!6288132 () Bool)

(assert (=> b!6288132 (= e!3823693 (not e!3823691))))

(declare-fun res!2593230 () Bool)

(assert (=> b!6288132 (=> res!2593230 e!3823691)))

(assert (=> b!6288132 (= res!2593230 (not (is-Cons!64806 zl!343)))))

(assert (=> b!6288132 (= lt!2356438 (matchRSpec!3311 r!7292 s!2326))))

(assert (=> b!6288132 (= lt!2356438 (matchR!8393 r!7292 s!2326))))

(declare-fun lt!2356429 () Unit!158171)

(assert (=> b!6288132 (= lt!2356429 (mainMatchTheorem!3311 r!7292 s!2326))))

(declare-fun res!2593208 () Bool)

(assert (=> start!624948 (=> (not res!2593208) (not e!3823693))))

(assert (=> start!624948 (= res!2593208 (validRegex!7946 r!7292))))

(assert (=> start!624948 e!3823693))

(assert (=> start!624948 e!3823681))

(declare-fun condSetEmpty!42797 () Bool)

(assert (=> start!624948 (= condSetEmpty!42797 (= z!1189 (as set.empty (Set Context!11188))))))

(assert (=> start!624948 setRes!42797))

(assert (=> start!624948 e!3823685))

(assert (=> start!624948 e!3823684))

(declare-fun b!6288133 () Bool)

(assert (=> b!6288133 (= e!3823695 (matchZipper!2222 lt!2356445 (t!378493 s!2326)))))

(declare-fun b!6288134 () Bool)

(declare-fun e!3823682 () Unit!158171)

(declare-fun Unit!158173 () Unit!158171)

(assert (=> b!6288134 (= e!3823682 Unit!158173)))

(declare-fun lt!2356451 () Unit!158171)

(declare-fun lt!2356426 () (Set Context!11188))

(assert (=> b!6288134 (= lt!2356451 (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356454 lt!2356426 (t!378493 s!2326)))))

(declare-fun res!2593211 () Bool)

(assert (=> b!6288134 (= res!2593211 (matchZipper!2222 lt!2356454 (t!378493 s!2326)))))

(declare-fun e!3823680 () Bool)

(assert (=> b!6288134 (=> res!2593211 e!3823680)))

(assert (=> b!6288134 (= (matchZipper!2222 (set.union lt!2356454 lt!2356426) (t!378493 s!2326)) e!3823680)))

(declare-fun b!6288135 () Bool)

(assert (=> b!6288135 (= e!3823690 e!3823675)))

(declare-fun res!2593233 () Bool)

(assert (=> b!6288135 (=> res!2593233 e!3823675)))

(assert (=> b!6288135 (= res!2593233 (not (= lt!2356454 lt!2356453)))))

(assert (=> b!6288135 (= lt!2356453 (set.union lt!2356443 lt!2356445))))

(declare-fun lt!2356421 () Context!11188)

(declare-fun derivationStepZipperDown!1458 (Regex!16210 Context!11188 C!32690) (Set Context!11188))

(assert (=> b!6288135 (= lt!2356445 (derivationStepZipperDown!1458 (regTwo!32932 (regOne!32932 r!7292)) lt!2356421 (h!71255 s!2326)))))

(assert (=> b!6288135 (= lt!2356443 (derivationStepZipperDown!1458 (regOne!32932 (regOne!32932 r!7292)) lt!2356417 (h!71255 s!2326)))))

(assert (=> b!6288135 (= lt!2356417 (Context!11189 lt!2356452))))

(assert (=> b!6288135 (= lt!2356452 (Cons!64805 (regTwo!32932 (regOne!32932 r!7292)) (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288136 () Bool)

(declare-fun res!2593218 () Bool)

(assert (=> b!6288136 (=> res!2593218 e!3823697)))

(declare-fun isEmpty!36860 (List!64929) Bool)

(assert (=> b!6288136 (= res!2593218 (isEmpty!36860 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288137 () Bool)

(declare-fun Unit!158174 () Unit!158171)

(assert (=> b!6288137 (= e!3823682 Unit!158174)))

(assert (=> b!6288138 (= e!3823697 e!3823690)))

(declare-fun res!2593234 () Bool)

(assert (=> b!6288138 (=> res!2593234 e!3823690)))

(assert (=> b!6288138 (= res!2593234 (or (and (is-ElementMatch!16210 (regOne!32932 r!7292)) (= (c!1140891 (regOne!32932 r!7292)) (h!71255 s!2326))) (is-Union!16210 (regOne!32932 r!7292)) (not (is-Concat!25055 (regOne!32932 r!7292)))))))

(declare-fun lt!2356449 () Unit!158171)

(assert (=> b!6288138 (= lt!2356449 e!3823682)))

(declare-fun c!1140890 () Bool)

(assert (=> b!6288138 (= c!1140890 (nullable!6203 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(assert (=> b!6288138 (= (flatMap!1715 z!1189 lambda!345274) (derivationStepZipperUp!1384 (h!71254 zl!343) (h!71255 s!2326)))))

(declare-fun lt!2356447 () Unit!158171)

(assert (=> b!6288138 (= lt!2356447 (lemmaFlatMapOnSingletonSet!1241 z!1189 (h!71254 zl!343) lambda!345274))))

(assert (=> b!6288138 (= lt!2356426 (derivationStepZipperUp!1384 lt!2356421 (h!71255 s!2326)))))

(assert (=> b!6288138 (= lt!2356454 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 (h!71254 zl!343))) lt!2356421 (h!71255 s!2326)))))

(assert (=> b!6288138 (= lt!2356421 (Context!11189 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun lt!2356446 () (Set Context!11188))

(assert (=> b!6288138 (= lt!2356446 (derivationStepZipperUp!1384 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343))))) (h!71255 s!2326)))))

(declare-fun b!6288139 () Bool)

(assert (=> b!6288139 (= e!3823680 (matchZipper!2222 lt!2356426 (t!378493 s!2326)))))

(assert (= (and start!624948 res!2593208) b!6288128))

(assert (= (and b!6288128 res!2593228) b!6288112))

(assert (= (and b!6288112 res!2593217) b!6288132))

(assert (= (and b!6288132 (not res!2593230)) b!6288111))

(assert (= (and b!6288111 (not res!2593238)) b!6288107))

(assert (= (and b!6288107 (not res!2593209)) b!6288114))

(assert (= (and b!6288114 (not res!2593213)) b!6288118))

(assert (= (and b!6288118 (not res!2593236)) b!6288109))

(assert (= (and b!6288109 (not res!2593214)) b!6288130))

(assert (= (and b!6288130 (not res!2593221)) b!6288136))

(assert (= (and b!6288136 (not res!2593218)) b!6288138))

(assert (= (and b!6288138 c!1140890) b!6288134))

(assert (= (and b!6288138 (not c!1140890)) b!6288137))

(assert (= (and b!6288134 (not res!2593211)) b!6288139))

(assert (= (and b!6288138 (not res!2593234)) b!6288122))

(assert (= (and b!6288122 (not res!2593222)) b!6288135))

(assert (= (and b!6288135 (not res!2593233)) b!6288119))

(assert (= (and b!6288119 (not res!2593231)) b!6288133))

(assert (= (and b!6288119 res!2593215) b!6288127))

(assert (= (and b!6288119 (not res!2593237)) b!6288124))

(assert (= (and b!6288124 (not res!2593224)) b!6288108))

(assert (= (and b!6288108 (not res!2593210)) b!6288113))

(assert (= (and b!6288108 res!2593207) b!6288102))

(assert (= (and b!6288108 (not res!2593216)) b!6288126))

(assert (= (and b!6288126 (not res!2593232)) b!6288116))

(assert (= (and b!6288116 (not res!2593235)) b!6288105))

(assert (= (and b!6288105 (not res!2593225)) b!6288117))

(assert (= (and b!6288117 (not res!2593223)) b!6288120))

(assert (= (and b!6288120 (not res!2593226)) b!6288123))

(assert (= (and b!6288123 (not res!2593212)) b!6288129))

(assert (= (and b!6288129 (not res!2593229)) b!6288101))

(assert (= (and b!6288101 (not res!2593220)) b!6288131))

(assert (= (and b!6288131 res!2593227) b!6288098))

(assert (= (and b!6288098 res!2593219) b!6288106))

(assert (= (and start!624948 (is-ElementMatch!16210 r!7292)) b!6288099))

(assert (= (and start!624948 (is-Concat!25055 r!7292)) b!6288110))

(assert (= (and start!624948 (is-Star!16210 r!7292)) b!6288104))

(assert (= (and start!624948 (is-Union!16210 r!7292)) b!6288125))

(assert (= (and start!624948 condSetEmpty!42797) setIsEmpty!42797))

(assert (= (and start!624948 (not condSetEmpty!42797)) setNonEmpty!42797))

(assert (= setNonEmpty!42797 b!6288103))

(assert (= b!6288100 b!6288121))

(assert (= (and start!624948 (is-Cons!64806 zl!343)) b!6288100))

(assert (= (and start!624948 (is-Cons!64807 s!2326)) b!6288115))

(declare-fun m!7108720 () Bool)

(assert (=> b!6288135 m!7108720))

(declare-fun m!7108722 () Bool)

(assert (=> b!6288135 m!7108722))

(declare-fun m!7108724 () Bool)

(assert (=> b!6288119 m!7108724))

(declare-fun m!7108726 () Bool)

(assert (=> b!6288119 m!7108726))

(declare-fun m!7108728 () Bool)

(assert (=> b!6288119 m!7108728))

(declare-fun m!7108730 () Bool)

(assert (=> b!6288119 m!7108730))

(declare-fun m!7108732 () Bool)

(assert (=> b!6288127 m!7108732))

(declare-fun m!7108734 () Bool)

(assert (=> b!6288130 m!7108734))

(declare-fun m!7108736 () Bool)

(assert (=> b!6288130 m!7108736))

(declare-fun m!7108738 () Bool)

(assert (=> b!6288130 m!7108738))

(declare-fun m!7108740 () Bool)

(assert (=> b!6288130 m!7108740))

(assert (=> b!6288130 m!7108738))

(declare-fun m!7108742 () Bool)

(assert (=> b!6288130 m!7108742))

(assert (=> b!6288130 m!7108734))

(declare-fun m!7108744 () Bool)

(assert (=> b!6288130 m!7108744))

(declare-fun m!7108746 () Bool)

(assert (=> b!6288118 m!7108746))

(assert (=> b!6288118 m!7108746))

(declare-fun m!7108748 () Bool)

(assert (=> b!6288118 m!7108748))

(assert (=> b!6288133 m!7108732))

(declare-fun m!7108750 () Bool)

(assert (=> b!6288131 m!7108750))

(declare-fun m!7108752 () Bool)

(assert (=> b!6288106 m!7108752))

(declare-fun m!7108754 () Bool)

(assert (=> b!6288120 m!7108754))

(declare-fun m!7108756 () Bool)

(assert (=> b!6288120 m!7108756))

(declare-fun m!7108758 () Bool)

(assert (=> b!6288120 m!7108758))

(declare-fun m!7108760 () Bool)

(assert (=> b!6288120 m!7108760))

(declare-fun m!7108762 () Bool)

(assert (=> b!6288120 m!7108762))

(declare-fun m!7108764 () Bool)

(assert (=> b!6288120 m!7108764))

(assert (=> b!6288120 m!7108758))

(declare-fun m!7108766 () Bool)

(assert (=> b!6288120 m!7108766))

(declare-fun m!7108768 () Bool)

(assert (=> b!6288120 m!7108768))

(declare-fun m!7108770 () Bool)

(assert (=> b!6288120 m!7108770))

(assert (=> b!6288120 m!7108760))

(declare-fun m!7108772 () Bool)

(assert (=> b!6288120 m!7108772))

(declare-fun m!7108774 () Bool)

(assert (=> b!6288120 m!7108774))

(declare-fun m!7108776 () Bool)

(assert (=> b!6288120 m!7108776))

(declare-fun m!7108778 () Bool)

(assert (=> b!6288120 m!7108778))

(assert (=> b!6288120 m!7108762))

(declare-fun m!7108780 () Bool)

(assert (=> b!6288120 m!7108780))

(declare-fun m!7108782 () Bool)

(assert (=> b!6288120 m!7108782))

(declare-fun m!7108784 () Bool)

(assert (=> b!6288120 m!7108784))

(declare-fun m!7108786 () Bool)

(assert (=> b!6288120 m!7108786))

(declare-fun m!7108788 () Bool)

(assert (=> b!6288120 m!7108788))

(declare-fun m!7108790 () Bool)

(assert (=> b!6288120 m!7108790))

(declare-fun m!7108792 () Bool)

(assert (=> b!6288120 m!7108792))

(declare-fun m!7108794 () Bool)

(assert (=> b!6288120 m!7108794))

(declare-fun m!7108796 () Bool)

(assert (=> b!6288120 m!7108796))

(declare-fun m!7108798 () Bool)

(assert (=> b!6288120 m!7108798))

(declare-fun m!7108800 () Bool)

(assert (=> b!6288120 m!7108800))

(assert (=> b!6288120 m!7108768))

(declare-fun m!7108802 () Bool)

(assert (=> b!6288120 m!7108802))

(declare-fun m!7108804 () Bool)

(assert (=> b!6288120 m!7108804))

(declare-fun m!7108806 () Bool)

(assert (=> b!6288116 m!7108806))

(declare-fun m!7108808 () Bool)

(assert (=> b!6288116 m!7108808))

(declare-fun m!7108810 () Bool)

(assert (=> b!6288136 m!7108810))

(declare-fun m!7108812 () Bool)

(assert (=> b!6288112 m!7108812))

(declare-fun m!7108814 () Bool)

(assert (=> b!6288122 m!7108814))

(declare-fun m!7108816 () Bool)

(assert (=> b!6288111 m!7108816))

(declare-fun m!7108818 () Bool)

(assert (=> b!6288138 m!7108818))

(declare-fun m!7108820 () Bool)

(assert (=> b!6288138 m!7108820))

(declare-fun m!7108822 () Bool)

(assert (=> b!6288138 m!7108822))

(declare-fun m!7108824 () Bool)

(assert (=> b!6288138 m!7108824))

(declare-fun m!7108826 () Bool)

(assert (=> b!6288138 m!7108826))

(declare-fun m!7108828 () Bool)

(assert (=> b!6288138 m!7108828))

(declare-fun m!7108830 () Bool)

(assert (=> b!6288138 m!7108830))

(declare-fun m!7108832 () Bool)

(assert (=> b!6288113 m!7108832))

(declare-fun m!7108834 () Bool)

(assert (=> b!6288123 m!7108834))

(declare-fun m!7108836 () Bool)

(assert (=> b!6288129 m!7108836))

(declare-fun m!7108838 () Bool)

(assert (=> b!6288128 m!7108838))

(declare-fun m!7108840 () Bool)

(assert (=> b!6288132 m!7108840))

(declare-fun m!7108842 () Bool)

(assert (=> b!6288132 m!7108842))

(declare-fun m!7108844 () Bool)

(assert (=> b!6288132 m!7108844))

(declare-fun m!7108846 () Bool)

(assert (=> b!6288101 m!7108846))

(declare-fun m!7108848 () Bool)

(assert (=> start!624948 m!7108848))

(declare-fun m!7108850 () Bool)

(assert (=> b!6288102 m!7108850))

(assert (=> b!6288102 m!7108850))

(declare-fun m!7108852 () Bool)

(assert (=> b!6288102 m!7108852))

(declare-fun m!7108854 () Bool)

(assert (=> b!6288139 m!7108854))

(declare-fun m!7108856 () Bool)

(assert (=> b!6288107 m!7108856))

(declare-fun m!7108858 () Bool)

(assert (=> setNonEmpty!42797 m!7108858))

(declare-fun m!7108860 () Bool)

(assert (=> b!6288108 m!7108860))

(declare-fun m!7108862 () Bool)

(assert (=> b!6288108 m!7108862))

(declare-fun m!7108864 () Bool)

(assert (=> b!6288108 m!7108864))

(declare-fun m!7108866 () Bool)

(assert (=> b!6288108 m!7108866))

(declare-fun m!7108868 () Bool)

(assert (=> b!6288108 m!7108868))

(declare-fun m!7108870 () Bool)

(assert (=> b!6288108 m!7108870))

(declare-fun m!7108872 () Bool)

(assert (=> b!6288124 m!7108872))

(declare-fun m!7108874 () Bool)

(assert (=> b!6288124 m!7108874))

(declare-fun m!7108876 () Bool)

(assert (=> b!6288124 m!7108876))

(declare-fun m!7108878 () Bool)

(assert (=> b!6288124 m!7108878))

(assert (=> b!6288124 m!7108868))

(declare-fun m!7108880 () Bool)

(assert (=> b!6288124 m!7108880))

(declare-fun m!7108882 () Bool)

(assert (=> b!6288124 m!7108882))

(declare-fun m!7108884 () Bool)

(assert (=> b!6288117 m!7108884))

(declare-fun m!7108886 () Bool)

(assert (=> b!6288117 m!7108886))

(declare-fun m!7108888 () Bool)

(assert (=> b!6288105 m!7108888))

(declare-fun m!7108890 () Bool)

(assert (=> b!6288105 m!7108890))

(declare-fun m!7108892 () Bool)

(assert (=> b!6288100 m!7108892))

(declare-fun m!7108894 () Bool)

(assert (=> b!6288098 m!7108894))

(declare-fun m!7108896 () Bool)

(assert (=> b!6288134 m!7108896))

(assert (=> b!6288134 m!7108724))

(declare-fun m!7108898 () Bool)

(assert (=> b!6288134 m!7108898))

(push 1)

(assert (not start!624948))

(assert (not b!6288112))

(assert (not b!6288105))

(assert (not b!6288108))

(assert (not b!6288098))

(assert (not b!6288113))

(assert (not b!6288124))

(assert (not b!6288110))

(assert (not b!6288136))

(assert (not b!6288102))

(assert (not b!6288129))

(assert (not b!6288115))

(assert (not b!6288127))

(assert (not b!6288125))

(assert (not b!6288107))

(assert (not b!6288117))

(assert (not b!6288116))

(assert (not b!6288138))

(assert (not b!6288104))

(assert tp_is_empty!41673)

(assert (not b!6288118))

(assert (not b!6288103))

(assert (not b!6288132))

(assert (not b!6288100))

(assert (not setNonEmpty!42797))

(assert (not b!6288135))

(assert (not b!6288111))

(assert (not b!6288134))

(assert (not b!6288123))

(assert (not b!6288131))

(assert (not b!6288128))

(assert (not b!6288122))

(assert (not b!6288120))

(assert (not b!6288133))

(assert (not b!6288106))

(assert (not b!6288130))

(assert (not b!6288139))

(assert (not b!6288119))

(assert (not b!6288101))

(assert (not b!6288121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6288334 () Bool)

(declare-fun e!3823799 () Bool)

(declare-fun lt!2356607 () Regex!16210)

(declare-fun isEmptyLang!1623 (Regex!16210) Bool)

(assert (=> b!6288334 (= e!3823799 (isEmptyLang!1623 lt!2356607))))

(declare-fun b!6288335 () Bool)

(declare-fun e!3823801 () Bool)

(declare-fun head!12920 (List!64929) Regex!16210)

(assert (=> b!6288335 (= e!3823801 (= lt!2356607 (head!12920 (unfocusZipperList!1631 zl!343))))))

(declare-fun b!6288336 () Bool)

(declare-fun e!3823802 () Bool)

(assert (=> b!6288336 (= e!3823802 (isEmpty!36860 (t!378491 (unfocusZipperList!1631 zl!343))))))

(declare-fun b!6288337 () Bool)

(declare-fun e!3823797 () Regex!16210)

(assert (=> b!6288337 (= e!3823797 (h!71253 (unfocusZipperList!1631 zl!343)))))

(declare-fun b!6288338 () Bool)

(declare-fun e!3823800 () Bool)

(assert (=> b!6288338 (= e!3823800 e!3823799)))

(declare-fun c!1140912 () Bool)

(assert (=> b!6288338 (= c!1140912 (isEmpty!36860 (unfocusZipperList!1631 zl!343)))))

(declare-fun b!6288339 () Bool)

(declare-fun e!3823798 () Regex!16210)

(assert (=> b!6288339 (= e!3823798 EmptyLang!16210)))

(declare-fun b!6288340 () Bool)

(assert (=> b!6288340 (= e!3823799 e!3823801)))

(declare-fun c!1140914 () Bool)

(declare-fun tail!12005 (List!64929) List!64929)

(assert (=> b!6288340 (= c!1140914 (isEmpty!36860 (tail!12005 (unfocusZipperList!1631 zl!343))))))

(declare-fun b!6288341 () Bool)

(declare-fun isUnion!1053 (Regex!16210) Bool)

(assert (=> b!6288341 (= e!3823801 (isUnion!1053 lt!2356607))))

(declare-fun d!1973395 () Bool)

(assert (=> d!1973395 e!3823800))

(declare-fun res!2593376 () Bool)

(assert (=> d!1973395 (=> (not res!2593376) (not e!3823800))))

(assert (=> d!1973395 (= res!2593376 (validRegex!7946 lt!2356607))))

(assert (=> d!1973395 (= lt!2356607 e!3823797)))

(declare-fun c!1140913 () Bool)

(assert (=> d!1973395 (= c!1140913 e!3823802)))

(declare-fun res!2593375 () Bool)

(assert (=> d!1973395 (=> (not res!2593375) (not e!3823802))))

(assert (=> d!1973395 (= res!2593375 (is-Cons!64805 (unfocusZipperList!1631 zl!343)))))

(declare-fun lambda!345312 () Int)

(declare-fun forall!15356 (List!64929 Int) Bool)

(assert (=> d!1973395 (forall!15356 (unfocusZipperList!1631 zl!343) lambda!345312)))

(assert (=> d!1973395 (= (generalisedUnion!2054 (unfocusZipperList!1631 zl!343)) lt!2356607)))

(declare-fun b!6288342 () Bool)

(assert (=> b!6288342 (= e!3823797 e!3823798)))

(declare-fun c!1140911 () Bool)

(assert (=> b!6288342 (= c!1140911 (is-Cons!64805 (unfocusZipperList!1631 zl!343)))))

(declare-fun b!6288343 () Bool)

(assert (=> b!6288343 (= e!3823798 (Union!16210 (h!71253 (unfocusZipperList!1631 zl!343)) (generalisedUnion!2054 (t!378491 (unfocusZipperList!1631 zl!343)))))))

(assert (= (and d!1973395 res!2593375) b!6288336))

(assert (= (and d!1973395 c!1140913) b!6288337))

(assert (= (and d!1973395 (not c!1140913)) b!6288342))

(assert (= (and b!6288342 c!1140911) b!6288343))

(assert (= (and b!6288342 (not c!1140911)) b!6288339))

(assert (= (and d!1973395 res!2593376) b!6288338))

(assert (= (and b!6288338 c!1140912) b!6288334))

(assert (= (and b!6288338 (not c!1140912)) b!6288340))

(assert (= (and b!6288340 c!1140914) b!6288335))

(assert (= (and b!6288340 (not c!1140914)) b!6288341))

(assert (=> b!6288340 m!7108746))

(declare-fun m!7109080 () Bool)

(assert (=> b!6288340 m!7109080))

(assert (=> b!6288340 m!7109080))

(declare-fun m!7109082 () Bool)

(assert (=> b!6288340 m!7109082))

(declare-fun m!7109084 () Bool)

(assert (=> d!1973395 m!7109084))

(assert (=> d!1973395 m!7108746))

(declare-fun m!7109086 () Bool)

(assert (=> d!1973395 m!7109086))

(declare-fun m!7109088 () Bool)

(assert (=> b!6288336 m!7109088))

(declare-fun m!7109090 () Bool)

(assert (=> b!6288343 m!7109090))

(declare-fun m!7109092 () Bool)

(assert (=> b!6288334 m!7109092))

(assert (=> b!6288335 m!7108746))

(declare-fun m!7109094 () Bool)

(assert (=> b!6288335 m!7109094))

(declare-fun m!7109096 () Bool)

(assert (=> b!6288341 m!7109096))

(assert (=> b!6288338 m!7108746))

(declare-fun m!7109098 () Bool)

(assert (=> b!6288338 m!7109098))

(assert (=> b!6288118 d!1973395))

(declare-fun bs!1571684 () Bool)

(declare-fun d!1973397 () Bool)

(assert (= bs!1571684 (and d!1973397 d!1973395)))

(declare-fun lambda!345315 () Int)

(assert (=> bs!1571684 (= lambda!345315 lambda!345312)))

(declare-fun lt!2356610 () List!64929)

(assert (=> d!1973397 (forall!15356 lt!2356610 lambda!345315)))

(declare-fun e!3823805 () List!64929)

(assert (=> d!1973397 (= lt!2356610 e!3823805)))

(declare-fun c!1140917 () Bool)

(assert (=> d!1973397 (= c!1140917 (is-Cons!64806 zl!343))))

(assert (=> d!1973397 (= (unfocusZipperList!1631 zl!343) lt!2356610)))

(declare-fun b!6288348 () Bool)

(assert (=> b!6288348 (= e!3823805 (Cons!64805 (generalisedConcat!1807 (exprs!6094 (h!71254 zl!343))) (unfocusZipperList!1631 (t!378492 zl!343))))))

(declare-fun b!6288349 () Bool)

(assert (=> b!6288349 (= e!3823805 Nil!64805)))

(assert (= (and d!1973397 c!1140917) b!6288348))

(assert (= (and d!1973397 (not c!1140917)) b!6288349))

(declare-fun m!7109100 () Bool)

(assert (=> d!1973397 m!7109100))

(assert (=> b!6288348 m!7108856))

(declare-fun m!7109102 () Bool)

(assert (=> b!6288348 m!7109102))

(assert (=> b!6288118 d!1973397))

(declare-fun d!1973399 () Bool)

(declare-fun c!1140920 () Bool)

(declare-fun isEmpty!36863 (List!64931) Bool)

(assert (=> d!1973399 (= c!1140920 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3823808 () Bool)

(assert (=> d!1973399 (= (matchZipper!2222 lt!2356426 (t!378493 s!2326)) e!3823808)))

(declare-fun b!6288354 () Bool)

(declare-fun nullableZipper!1980 ((Set Context!11188)) Bool)

(assert (=> b!6288354 (= e!3823808 (nullableZipper!1980 lt!2356426))))

(declare-fun b!6288355 () Bool)

(declare-fun head!12921 (List!64931) C!32690)

(declare-fun tail!12006 (List!64931) List!64931)

(assert (=> b!6288355 (= e!3823808 (matchZipper!2222 (derivationStepZipper!2176 lt!2356426 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973399 c!1140920) b!6288354))

(assert (= (and d!1973399 (not c!1140920)) b!6288355))

(declare-fun m!7109104 () Bool)

(assert (=> d!1973399 m!7109104))

(declare-fun m!7109106 () Bool)

(assert (=> b!6288354 m!7109106))

(declare-fun m!7109108 () Bool)

(assert (=> b!6288355 m!7109108))

(assert (=> b!6288355 m!7109108))

(declare-fun m!7109110 () Bool)

(assert (=> b!6288355 m!7109110))

(declare-fun m!7109112 () Bool)

(assert (=> b!6288355 m!7109112))

(assert (=> b!6288355 m!7109110))

(assert (=> b!6288355 m!7109112))

(declare-fun m!7109114 () Bool)

(assert (=> b!6288355 m!7109114))

(assert (=> b!6288139 d!1973399))

(declare-fun b!6288374 () Bool)

(declare-fun res!2593390 () Bool)

(declare-fun e!3823828 () Bool)

(assert (=> b!6288374 (=> (not res!2593390) (not e!3823828))))

(declare-fun call!532398 () Bool)

(assert (=> b!6288374 (= res!2593390 call!532398)))

(declare-fun e!3823825 () Bool)

(assert (=> b!6288374 (= e!3823825 e!3823828)))

(declare-fun b!6288375 () Bool)

(declare-fun e!3823826 () Bool)

(declare-fun e!3823827 () Bool)

(assert (=> b!6288375 (= e!3823826 e!3823827)))

(declare-fun res!2593387 () Bool)

(assert (=> b!6288375 (=> (not res!2593387) (not e!3823827))))

(assert (=> b!6288375 (= res!2593387 call!532398)))

(declare-fun b!6288377 () Bool)

(declare-fun e!3823829 () Bool)

(declare-fun call!532397 () Bool)

(assert (=> b!6288377 (= e!3823829 call!532397)))

(declare-fun bm!532392 () Bool)

(declare-fun c!1140926 () Bool)

(declare-fun c!1140925 () Bool)

(assert (=> bm!532392 (= call!532397 (validRegex!7946 (ite c!1140926 (reg!16539 (regTwo!32932 (regOne!32932 r!7292))) (ite c!1140925 (regTwo!32933 (regTwo!32932 (regOne!32932 r!7292))) (regTwo!32932 (regTwo!32932 (regOne!32932 r!7292)))))))))

(declare-fun b!6288378 () Bool)

(declare-fun e!3823824 () Bool)

(declare-fun e!3823823 () Bool)

(assert (=> b!6288378 (= e!3823824 e!3823823)))

(assert (=> b!6288378 (= c!1140926 (is-Star!16210 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun bm!532393 () Bool)

(assert (=> bm!532393 (= call!532398 (validRegex!7946 (ite c!1140925 (regOne!32933 (regTwo!32932 (regOne!32932 r!7292))) (regOne!32932 (regTwo!32932 (regOne!32932 r!7292))))))))

(declare-fun b!6288379 () Bool)

(declare-fun res!2593391 () Bool)

(assert (=> b!6288379 (=> res!2593391 e!3823826)))

(assert (=> b!6288379 (= res!2593391 (not (is-Concat!25055 (regTwo!32932 (regOne!32932 r!7292)))))))

(assert (=> b!6288379 (= e!3823825 e!3823826)))

(declare-fun d!1973401 () Bool)

(declare-fun res!2593388 () Bool)

(assert (=> d!1973401 (=> res!2593388 e!3823824)))

(assert (=> d!1973401 (= res!2593388 (is-ElementMatch!16210 (regTwo!32932 (regOne!32932 r!7292))))))

(assert (=> d!1973401 (= (validRegex!7946 (regTwo!32932 (regOne!32932 r!7292))) e!3823824)))

(declare-fun b!6288376 () Bool)

(declare-fun call!532399 () Bool)

(assert (=> b!6288376 (= e!3823827 call!532399)))

(declare-fun b!6288380 () Bool)

(assert (=> b!6288380 (= e!3823823 e!3823825)))

(assert (=> b!6288380 (= c!1140925 (is-Union!16210 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun b!6288381 () Bool)

(assert (=> b!6288381 (= e!3823828 call!532399)))

(declare-fun b!6288382 () Bool)

(assert (=> b!6288382 (= e!3823823 e!3823829)))

(declare-fun res!2593389 () Bool)

(assert (=> b!6288382 (= res!2593389 (not (nullable!6203 (reg!16539 (regTwo!32932 (regOne!32932 r!7292))))))))

(assert (=> b!6288382 (=> (not res!2593389) (not e!3823829))))

(declare-fun bm!532394 () Bool)

(assert (=> bm!532394 (= call!532399 call!532397)))

(assert (= (and d!1973401 (not res!2593388)) b!6288378))

(assert (= (and b!6288378 c!1140926) b!6288382))

(assert (= (and b!6288378 (not c!1140926)) b!6288380))

(assert (= (and b!6288382 res!2593389) b!6288377))

(assert (= (and b!6288380 c!1140925) b!6288374))

(assert (= (and b!6288380 (not c!1140925)) b!6288379))

(assert (= (and b!6288374 res!2593390) b!6288381))

(assert (= (and b!6288379 (not res!2593391)) b!6288375))

(assert (= (and b!6288375 res!2593387) b!6288376))

(assert (= (or b!6288381 b!6288376) bm!532394))

(assert (= (or b!6288374 b!6288375) bm!532393))

(assert (= (or b!6288377 bm!532394) bm!532392))

(declare-fun m!7109116 () Bool)

(assert (=> bm!532392 m!7109116))

(declare-fun m!7109118 () Bool)

(assert (=> bm!532393 m!7109118))

(declare-fun m!7109120 () Bool)

(assert (=> b!6288382 m!7109120))

(assert (=> b!6288098 d!1973401))

(declare-fun b!6288389 () Bool)

(assert (=> b!6288389 true))

(declare-fun bs!1571685 () Bool)

(declare-fun b!6288391 () Bool)

(assert (= bs!1571685 (and b!6288391 b!6288389)))

(declare-fun lt!2356620 () Int)

(declare-fun lambda!345323 () Int)

(declare-fun lambda!345324 () Int)

(declare-fun lt!2356619 () Int)

(assert (=> bs!1571685 (= (= lt!2356620 lt!2356619) (= lambda!345324 lambda!345323))))

(assert (=> b!6288391 true))

(declare-fun d!1973403 () Bool)

(declare-fun e!3823835 () Bool)

(assert (=> d!1973403 e!3823835))

(declare-fun res!2593394 () Bool)

(assert (=> d!1973403 (=> (not res!2593394) (not e!3823835))))

(assert (=> d!1973403 (= res!2593394 (>= lt!2356620 0))))

(declare-fun e!3823834 () Int)

(assert (=> d!1973403 (= lt!2356620 e!3823834)))

(declare-fun c!1140935 () Bool)

(assert (=> d!1973403 (= c!1140935 (is-Cons!64806 lt!2356413))))

(assert (=> d!1973403 (= (zipperDepth!335 lt!2356413) lt!2356620)))

(assert (=> b!6288389 (= e!3823834 lt!2356619)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!226 (Context!11188) Int)

(assert (=> b!6288389 (= lt!2356619 (maxBigInt!0 (contextDepth!226 (h!71254 lt!2356413)) (zipperDepth!335 (t!378492 lt!2356413))))))

(declare-fun lt!2356622 () Unit!158171)

(declare-fun lambda!345322 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!210 (List!64930 Int Int Int) Unit!158171)

(assert (=> b!6288389 (= lt!2356622 (lemmaForallContextDepthBiggerThanTransitive!210 (t!378492 lt!2356413) lt!2356619 (zipperDepth!335 (t!378492 lt!2356413)) lambda!345322))))

(declare-fun forall!15357 (List!64930 Int) Bool)

(assert (=> b!6288389 (forall!15357 (t!378492 lt!2356413) lambda!345323)))

(declare-fun lt!2356621 () Unit!158171)

(assert (=> b!6288389 (= lt!2356621 lt!2356622)))

(declare-fun b!6288390 () Bool)

(assert (=> b!6288390 (= e!3823834 0)))

(assert (=> b!6288391 (= e!3823835 (forall!15357 lt!2356413 lambda!345324))))

(assert (= (and d!1973403 c!1140935) b!6288389))

(assert (= (and d!1973403 (not c!1140935)) b!6288390))

(assert (= (and d!1973403 res!2593394) b!6288391))

(declare-fun m!7109122 () Bool)

(assert (=> b!6288389 m!7109122))

(declare-fun m!7109124 () Bool)

(assert (=> b!6288389 m!7109124))

(declare-fun m!7109126 () Bool)

(assert (=> b!6288389 m!7109126))

(declare-fun m!7109128 () Bool)

(assert (=> b!6288389 m!7109128))

(assert (=> b!6288389 m!7109122))

(assert (=> b!6288389 m!7109124))

(declare-fun m!7109130 () Bool)

(assert (=> b!6288389 m!7109130))

(assert (=> b!6288389 m!7109124))

(declare-fun m!7109132 () Bool)

(assert (=> b!6288391 m!7109132))

(assert (=> b!6288117 d!1973403))

(declare-fun bs!1571686 () Bool)

(declare-fun b!6288394 () Bool)

(assert (= bs!1571686 (and b!6288394 b!6288389)))

(declare-fun lambda!345325 () Int)

(assert (=> bs!1571686 (= lambda!345325 lambda!345322)))

(declare-fun lt!2356623 () Int)

(declare-fun lambda!345326 () Int)

(assert (=> bs!1571686 (= (= lt!2356623 lt!2356619) (= lambda!345326 lambda!345323))))

(declare-fun bs!1571687 () Bool)

(assert (= bs!1571687 (and b!6288394 b!6288391)))

(assert (=> bs!1571687 (= (= lt!2356623 lt!2356620) (= lambda!345326 lambda!345324))))

(assert (=> b!6288394 true))

(declare-fun bs!1571688 () Bool)

(declare-fun b!6288396 () Bool)

(assert (= bs!1571688 (and b!6288396 b!6288389)))

(declare-fun lt!2356624 () Int)

(declare-fun lambda!345327 () Int)

(assert (=> bs!1571688 (= (= lt!2356624 lt!2356619) (= lambda!345327 lambda!345323))))

(declare-fun bs!1571689 () Bool)

(assert (= bs!1571689 (and b!6288396 b!6288391)))

(assert (=> bs!1571689 (= (= lt!2356624 lt!2356620) (= lambda!345327 lambda!345324))))

(declare-fun bs!1571690 () Bool)

(assert (= bs!1571690 (and b!6288396 b!6288394)))

(assert (=> bs!1571690 (= (= lt!2356624 lt!2356623) (= lambda!345327 lambda!345326))))

(assert (=> b!6288396 true))

(declare-fun d!1973405 () Bool)

(declare-fun e!3823837 () Bool)

(assert (=> d!1973405 e!3823837))

(declare-fun res!2593395 () Bool)

(assert (=> d!1973405 (=> (not res!2593395) (not e!3823837))))

(assert (=> d!1973405 (= res!2593395 (>= lt!2356624 0))))

(declare-fun e!3823836 () Int)

(assert (=> d!1973405 (= lt!2356624 e!3823836)))

(declare-fun c!1140936 () Bool)

(assert (=> d!1973405 (= c!1140936 (is-Cons!64806 zl!343))))

(assert (=> d!1973405 (= (zipperDepth!335 zl!343) lt!2356624)))

(assert (=> b!6288394 (= e!3823836 lt!2356623)))

(assert (=> b!6288394 (= lt!2356623 (maxBigInt!0 (contextDepth!226 (h!71254 zl!343)) (zipperDepth!335 (t!378492 zl!343))))))

(declare-fun lt!2356626 () Unit!158171)

(assert (=> b!6288394 (= lt!2356626 (lemmaForallContextDepthBiggerThanTransitive!210 (t!378492 zl!343) lt!2356623 (zipperDepth!335 (t!378492 zl!343)) lambda!345325))))

(assert (=> b!6288394 (forall!15357 (t!378492 zl!343) lambda!345326)))

(declare-fun lt!2356625 () Unit!158171)

(assert (=> b!6288394 (= lt!2356625 lt!2356626)))

(declare-fun b!6288395 () Bool)

(assert (=> b!6288395 (= e!3823836 0)))

(assert (=> b!6288396 (= e!3823837 (forall!15357 zl!343 lambda!345327))))

(assert (= (and d!1973405 c!1140936) b!6288394))

(assert (= (and d!1973405 (not c!1140936)) b!6288395))

(assert (= (and d!1973405 res!2593395) b!6288396))

(declare-fun m!7109134 () Bool)

(assert (=> b!6288394 m!7109134))

(declare-fun m!7109136 () Bool)

(assert (=> b!6288394 m!7109136))

(declare-fun m!7109138 () Bool)

(assert (=> b!6288394 m!7109138))

(declare-fun m!7109140 () Bool)

(assert (=> b!6288394 m!7109140))

(assert (=> b!6288394 m!7109134))

(assert (=> b!6288394 m!7109136))

(declare-fun m!7109142 () Bool)

(assert (=> b!6288394 m!7109142))

(assert (=> b!6288394 m!7109136))

(declare-fun m!7109144 () Bool)

(assert (=> b!6288396 m!7109144))

(assert (=> b!6288117 d!1973405))

(declare-fun d!1973407 () Bool)

(declare-fun choose!46710 ((Set Context!11188) Int) (Set Context!11188))

(assert (=> d!1973407 (= (flatMap!1715 z!1189 lambda!345274) (choose!46710 z!1189 lambda!345274))))

(declare-fun bs!1571691 () Bool)

(assert (= bs!1571691 d!1973407))

(declare-fun m!7109146 () Bool)

(assert (=> bs!1571691 m!7109146))

(assert (=> b!6288138 d!1973407))

(declare-fun d!1973409 () Bool)

(declare-fun nullableFct!2154 (Regex!16210) Bool)

(assert (=> d!1973409 (= (nullable!6203 (h!71253 (exprs!6094 (h!71254 zl!343)))) (nullableFct!2154 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun bs!1571692 () Bool)

(assert (= bs!1571692 d!1973409))

(declare-fun m!7109148 () Bool)

(assert (=> bs!1571692 m!7109148))

(assert (=> b!6288138 d!1973409))

(declare-fun b!6288407 () Bool)

(declare-fun e!3823846 () (Set Context!11188))

(declare-fun e!3823844 () (Set Context!11188))

(assert (=> b!6288407 (= e!3823846 e!3823844)))

(declare-fun c!1140941 () Bool)

(assert (=> b!6288407 (= c!1140941 (is-Cons!64805 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343))))))))))

(declare-fun bm!532397 () Bool)

(declare-fun call!532402 () (Set Context!11188))

(assert (=> bm!532397 (= call!532402 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343))))))) (Context!11189 (t!378491 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343)))))))) (h!71255 s!2326)))))

(declare-fun b!6288408 () Bool)

(declare-fun e!3823845 () Bool)

(assert (=> b!6288408 (= e!3823845 (nullable!6203 (h!71253 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343)))))))))))

(declare-fun b!6288409 () Bool)

(assert (=> b!6288409 (= e!3823844 (as set.empty (Set Context!11188)))))

(declare-fun b!6288410 () Bool)

(assert (=> b!6288410 (= e!3823846 (set.union call!532402 (derivationStepZipperUp!1384 (Context!11189 (t!378491 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343)))))))) (h!71255 s!2326))))))

(declare-fun b!6288411 () Bool)

(assert (=> b!6288411 (= e!3823844 call!532402)))

(declare-fun d!1973411 () Bool)

(declare-fun c!1140942 () Bool)

(assert (=> d!1973411 (= c!1140942 e!3823845)))

(declare-fun res!2593398 () Bool)

(assert (=> d!1973411 (=> (not res!2593398) (not e!3823845))))

(assert (=> d!1973411 (= res!2593398 (is-Cons!64805 (exprs!6094 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343))))))))))

(assert (=> d!1973411 (= (derivationStepZipperUp!1384 (Context!11189 (Cons!64805 (h!71253 (exprs!6094 (h!71254 zl!343))) (t!378491 (exprs!6094 (h!71254 zl!343))))) (h!71255 s!2326)) e!3823846)))

(assert (= (and d!1973411 res!2593398) b!6288408))

(assert (= (and d!1973411 c!1140942) b!6288410))

(assert (= (and d!1973411 (not c!1140942)) b!6288407))

(assert (= (and b!6288407 c!1140941) b!6288411))

(assert (= (and b!6288407 (not c!1140941)) b!6288409))

(assert (= (or b!6288410 b!6288411) bm!532397))

(declare-fun m!7109150 () Bool)

(assert (=> bm!532397 m!7109150))

(declare-fun m!7109152 () Bool)

(assert (=> b!6288408 m!7109152))

(declare-fun m!7109154 () Bool)

(assert (=> b!6288410 m!7109154))

(assert (=> b!6288138 d!1973411))

(declare-fun d!1973413 () Bool)

(declare-fun dynLambda!25644 (Int Context!11188) (Set Context!11188))

(assert (=> d!1973413 (= (flatMap!1715 z!1189 lambda!345274) (dynLambda!25644 lambda!345274 (h!71254 zl!343)))))

(declare-fun lt!2356629 () Unit!158171)

(declare-fun choose!46711 ((Set Context!11188) Context!11188 Int) Unit!158171)

(assert (=> d!1973413 (= lt!2356629 (choose!46711 z!1189 (h!71254 zl!343) lambda!345274))))

(assert (=> d!1973413 (= z!1189 (set.insert (h!71254 zl!343) (as set.empty (Set Context!11188))))))

(assert (=> d!1973413 (= (lemmaFlatMapOnSingletonSet!1241 z!1189 (h!71254 zl!343) lambda!345274) lt!2356629)))

(declare-fun b_lambda!239317 () Bool)

(assert (=> (not b_lambda!239317) (not d!1973413)))

(declare-fun bs!1571693 () Bool)

(assert (= bs!1571693 d!1973413))

(assert (=> bs!1571693 m!7108826))

(declare-fun m!7109156 () Bool)

(assert (=> bs!1571693 m!7109156))

(declare-fun m!7109158 () Bool)

(assert (=> bs!1571693 m!7109158))

(declare-fun m!7109160 () Bool)

(assert (=> bs!1571693 m!7109160))

(assert (=> b!6288138 d!1973413))

(declare-fun b!6288412 () Bool)

(declare-fun e!3823849 () (Set Context!11188))

(declare-fun e!3823847 () (Set Context!11188))

(assert (=> b!6288412 (= e!3823849 e!3823847)))

(declare-fun c!1140943 () Bool)

(assert (=> b!6288412 (= c!1140943 (is-Cons!64805 (exprs!6094 (h!71254 zl!343))))))

(declare-fun bm!532398 () Bool)

(declare-fun call!532403 () (Set Context!11188))

(assert (=> bm!532398 (= call!532403 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 (h!71254 zl!343))) (Context!11189 (t!378491 (exprs!6094 (h!71254 zl!343)))) (h!71255 s!2326)))))

(declare-fun b!6288413 () Bool)

(declare-fun e!3823848 () Bool)

(assert (=> b!6288413 (= e!3823848 (nullable!6203 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288414 () Bool)

(assert (=> b!6288414 (= e!3823847 (as set.empty (Set Context!11188)))))

(declare-fun b!6288415 () Bool)

(assert (=> b!6288415 (= e!3823849 (set.union call!532403 (derivationStepZipperUp!1384 (Context!11189 (t!378491 (exprs!6094 (h!71254 zl!343)))) (h!71255 s!2326))))))

(declare-fun b!6288416 () Bool)

(assert (=> b!6288416 (= e!3823847 call!532403)))

(declare-fun d!1973415 () Bool)

(declare-fun c!1140944 () Bool)

(assert (=> d!1973415 (= c!1140944 e!3823848)))

(declare-fun res!2593399 () Bool)

(assert (=> d!1973415 (=> (not res!2593399) (not e!3823848))))

(assert (=> d!1973415 (= res!2593399 (is-Cons!64805 (exprs!6094 (h!71254 zl!343))))))

(assert (=> d!1973415 (= (derivationStepZipperUp!1384 (h!71254 zl!343) (h!71255 s!2326)) e!3823849)))

(assert (= (and d!1973415 res!2593399) b!6288413))

(assert (= (and d!1973415 c!1140944) b!6288415))

(assert (= (and d!1973415 (not c!1140944)) b!6288412))

(assert (= (and b!6288412 c!1140943) b!6288416))

(assert (= (and b!6288412 (not c!1140943)) b!6288414))

(assert (= (or b!6288415 b!6288416) bm!532398))

(declare-fun m!7109162 () Bool)

(assert (=> bm!532398 m!7109162))

(assert (=> b!6288413 m!7108830))

(declare-fun m!7109164 () Bool)

(assert (=> b!6288415 m!7109164))

(assert (=> b!6288138 d!1973415))

(declare-fun b!6288439 () Bool)

(declare-fun c!1140959 () Bool)

(declare-fun e!3823864 () Bool)

(assert (=> b!6288439 (= c!1140959 e!3823864)))

(declare-fun res!2593402 () Bool)

(assert (=> b!6288439 (=> (not res!2593402) (not e!3823864))))

(assert (=> b!6288439 (= res!2593402 (is-Concat!25055 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun e!3823867 () (Set Context!11188))

(declare-fun e!3823863 () (Set Context!11188))

(assert (=> b!6288439 (= e!3823867 e!3823863)))

(declare-fun b!6288440 () Bool)

(declare-fun call!532421 () (Set Context!11188))

(declare-fun call!532420 () (Set Context!11188))

(assert (=> b!6288440 (= e!3823867 (set.union call!532421 call!532420))))

(declare-fun b!6288441 () Bool)

(declare-fun e!3823865 () (Set Context!11188))

(declare-fun call!532419 () (Set Context!11188))

(assert (=> b!6288441 (= e!3823865 call!532419)))

(declare-fun bm!532411 () Bool)

(declare-fun call!532417 () (Set Context!11188))

(assert (=> bm!532411 (= call!532417 call!532420)))

(declare-fun b!6288442 () Bool)

(assert (=> b!6288442 (= e!3823863 (set.union call!532421 call!532417))))

(declare-fun b!6288443 () Bool)

(assert (=> b!6288443 (= e!3823864 (nullable!6203 (regOne!32932 (h!71253 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun call!532418 () List!64929)

(declare-fun c!1140955 () Bool)

(declare-fun c!1140956 () Bool)

(declare-fun bm!532412 () Bool)

(assert (=> bm!532412 (= call!532420 (derivationStepZipperDown!1458 (ite c!1140956 (regTwo!32933 (h!71253 (exprs!6094 (h!71254 zl!343)))) (ite c!1140959 (regTwo!32932 (h!71253 (exprs!6094 (h!71254 zl!343)))) (ite c!1140955 (regOne!32932 (h!71253 (exprs!6094 (h!71254 zl!343)))) (reg!16539 (h!71253 (exprs!6094 (h!71254 zl!343))))))) (ite (or c!1140956 c!1140959) lt!2356421 (Context!11189 call!532418)) (h!71255 s!2326)))))

(declare-fun bm!532413 () Bool)

(declare-fun call!532416 () List!64929)

(declare-fun $colon$colon!2075 (List!64929 Regex!16210) List!64929)

(assert (=> bm!532413 (= call!532416 ($colon$colon!2075 (exprs!6094 lt!2356421) (ite (or c!1140959 c!1140955) (regTwo!32932 (h!71253 (exprs!6094 (h!71254 zl!343)))) (h!71253 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun bm!532414 () Bool)

(assert (=> bm!532414 (= call!532418 call!532416)))

(declare-fun b!6288445 () Bool)

(declare-fun e!3823866 () (Set Context!11188))

(assert (=> b!6288445 (= e!3823866 (set.insert lt!2356421 (as set.empty (Set Context!11188))))))

(declare-fun bm!532415 () Bool)

(assert (=> bm!532415 (= call!532419 call!532417)))

(declare-fun b!6288446 () Bool)

(declare-fun c!1140958 () Bool)

(assert (=> b!6288446 (= c!1140958 (is-Star!16210 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun e!3823862 () (Set Context!11188))

(assert (=> b!6288446 (= e!3823862 e!3823865)))

(declare-fun b!6288447 () Bool)

(assert (=> b!6288447 (= e!3823862 call!532419)))

(declare-fun b!6288448 () Bool)

(assert (=> b!6288448 (= e!3823866 e!3823867)))

(assert (=> b!6288448 (= c!1140956 (is-Union!16210 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288444 () Bool)

(assert (=> b!6288444 (= e!3823865 (as set.empty (Set Context!11188)))))

(declare-fun d!1973417 () Bool)

(declare-fun c!1140957 () Bool)

(assert (=> d!1973417 (= c!1140957 (and (is-ElementMatch!16210 (h!71253 (exprs!6094 (h!71254 zl!343)))) (= (c!1140891 (h!71253 (exprs!6094 (h!71254 zl!343)))) (h!71255 s!2326))))))

(assert (=> d!1973417 (= (derivationStepZipperDown!1458 (h!71253 (exprs!6094 (h!71254 zl!343))) lt!2356421 (h!71255 s!2326)) e!3823866)))

(declare-fun bm!532416 () Bool)

(assert (=> bm!532416 (= call!532421 (derivationStepZipperDown!1458 (ite c!1140956 (regOne!32933 (h!71253 (exprs!6094 (h!71254 zl!343)))) (regOne!32932 (h!71253 (exprs!6094 (h!71254 zl!343))))) (ite c!1140956 lt!2356421 (Context!11189 call!532416)) (h!71255 s!2326)))))

(declare-fun b!6288449 () Bool)

(assert (=> b!6288449 (= e!3823863 e!3823862)))

(assert (=> b!6288449 (= c!1140955 (is-Concat!25055 (h!71253 (exprs!6094 (h!71254 zl!343)))))))

(assert (= (and d!1973417 c!1140957) b!6288445))

(assert (= (and d!1973417 (not c!1140957)) b!6288448))

(assert (= (and b!6288448 c!1140956) b!6288440))

(assert (= (and b!6288448 (not c!1140956)) b!6288439))

(assert (= (and b!6288439 res!2593402) b!6288443))

(assert (= (and b!6288439 c!1140959) b!6288442))

(assert (= (and b!6288439 (not c!1140959)) b!6288449))

(assert (= (and b!6288449 c!1140955) b!6288447))

(assert (= (and b!6288449 (not c!1140955)) b!6288446))

(assert (= (and b!6288446 c!1140958) b!6288441))

(assert (= (and b!6288446 (not c!1140958)) b!6288444))

(assert (= (or b!6288447 b!6288441) bm!532414))

(assert (= (or b!6288447 b!6288441) bm!532415))

(assert (= (or b!6288442 bm!532414) bm!532413))

(assert (= (or b!6288442 bm!532415) bm!532411))

(assert (= (or b!6288440 bm!532411) bm!532412))

(assert (= (or b!6288440 b!6288442) bm!532416))

(declare-fun m!7109166 () Bool)

(assert (=> bm!532412 m!7109166))

(declare-fun m!7109168 () Bool)

(assert (=> b!6288443 m!7109168))

(declare-fun m!7109170 () Bool)

(assert (=> b!6288445 m!7109170))

(declare-fun m!7109172 () Bool)

(assert (=> bm!532416 m!7109172))

(declare-fun m!7109174 () Bool)

(assert (=> bm!532413 m!7109174))

(assert (=> b!6288138 d!1973417))

(declare-fun b!6288450 () Bool)

(declare-fun e!3823870 () (Set Context!11188))

(declare-fun e!3823868 () (Set Context!11188))

(assert (=> b!6288450 (= e!3823870 e!3823868)))

(declare-fun c!1140960 () Bool)

(assert (=> b!6288450 (= c!1140960 (is-Cons!64805 (exprs!6094 lt!2356421)))))

(declare-fun bm!532417 () Bool)

(declare-fun call!532422 () (Set Context!11188))

(assert (=> bm!532417 (= call!532422 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 lt!2356421)) (Context!11189 (t!378491 (exprs!6094 lt!2356421))) (h!71255 s!2326)))))

(declare-fun b!6288451 () Bool)

(declare-fun e!3823869 () Bool)

(assert (=> b!6288451 (= e!3823869 (nullable!6203 (h!71253 (exprs!6094 lt!2356421))))))

(declare-fun b!6288452 () Bool)

(assert (=> b!6288452 (= e!3823868 (as set.empty (Set Context!11188)))))

(declare-fun b!6288453 () Bool)

(assert (=> b!6288453 (= e!3823870 (set.union call!532422 (derivationStepZipperUp!1384 (Context!11189 (t!378491 (exprs!6094 lt!2356421))) (h!71255 s!2326))))))

(declare-fun b!6288454 () Bool)

(assert (=> b!6288454 (= e!3823868 call!532422)))

(declare-fun d!1973419 () Bool)

(declare-fun c!1140961 () Bool)

(assert (=> d!1973419 (= c!1140961 e!3823869)))

(declare-fun res!2593403 () Bool)

(assert (=> d!1973419 (=> (not res!2593403) (not e!3823869))))

(assert (=> d!1973419 (= res!2593403 (is-Cons!64805 (exprs!6094 lt!2356421)))))

(assert (=> d!1973419 (= (derivationStepZipperUp!1384 lt!2356421 (h!71255 s!2326)) e!3823870)))

(assert (= (and d!1973419 res!2593403) b!6288451))

(assert (= (and d!1973419 c!1140961) b!6288453))

(assert (= (and d!1973419 (not c!1140961)) b!6288450))

(assert (= (and b!6288450 c!1140960) b!6288454))

(assert (= (and b!6288450 (not c!1140960)) b!6288452))

(assert (= (or b!6288453 b!6288454) bm!532417))

(declare-fun m!7109176 () Bool)

(assert (=> bm!532417 m!7109176))

(declare-fun m!7109178 () Bool)

(assert (=> b!6288451 m!7109178))

(declare-fun m!7109180 () Bool)

(assert (=> b!6288453 m!7109180))

(assert (=> b!6288138 d!1973419))

(declare-fun b!6288483 () Bool)

(declare-fun res!2593423 () Bool)

(declare-fun e!3823886 () Bool)

(assert (=> b!6288483 (=> res!2593423 e!3823886)))

(assert (=> b!6288483 (= res!2593423 (not (is-ElementMatch!16210 (Concat!25055 lt!2356425 lt!2356423))))))

(declare-fun e!3823887 () Bool)

(assert (=> b!6288483 (= e!3823887 e!3823886)))

(declare-fun bm!532420 () Bool)

(declare-fun call!532425 () Bool)

(assert (=> bm!532420 (= call!532425 (isEmpty!36863 s!2326))))

(declare-fun b!6288484 () Bool)

(declare-fun res!2593420 () Bool)

(declare-fun e!3823891 () Bool)

(assert (=> b!6288484 (=> (not res!2593420) (not e!3823891))))

(assert (=> b!6288484 (= res!2593420 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288485 () Bool)

(declare-fun res!2593421 () Bool)

(assert (=> b!6288485 (=> (not res!2593421) (not e!3823891))))

(assert (=> b!6288485 (= res!2593421 (not call!532425))))

(declare-fun d!1973421 () Bool)

(declare-fun e!3823885 () Bool)

(assert (=> d!1973421 e!3823885))

(declare-fun c!1140969 () Bool)

(assert (=> d!1973421 (= c!1140969 (is-EmptyExpr!16210 (Concat!25055 lt!2356425 lt!2356423)))))

(declare-fun lt!2356632 () Bool)

(declare-fun e!3823890 () Bool)

(assert (=> d!1973421 (= lt!2356632 e!3823890)))

(declare-fun c!1140970 () Bool)

(assert (=> d!1973421 (= c!1140970 (isEmpty!36863 s!2326))))

(assert (=> d!1973421 (validRegex!7946 (Concat!25055 lt!2356425 lt!2356423))))

(assert (=> d!1973421 (= (matchR!8393 (Concat!25055 lt!2356425 lt!2356423) s!2326) lt!2356632)))

(declare-fun b!6288486 () Bool)

(assert (=> b!6288486 (= e!3823885 e!3823887)))

(declare-fun c!1140968 () Bool)

(assert (=> b!6288486 (= c!1140968 (is-EmptyLang!16210 (Concat!25055 lt!2356425 lt!2356423)))))

(declare-fun b!6288487 () Bool)

(declare-fun derivativeStep!4919 (Regex!16210 C!32690) Regex!16210)

(assert (=> b!6288487 (= e!3823890 (matchR!8393 (derivativeStep!4919 (Concat!25055 lt!2356425 lt!2356423) (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288488 () Bool)

(declare-fun res!2593427 () Bool)

(assert (=> b!6288488 (=> res!2593427 e!3823886)))

(assert (=> b!6288488 (= res!2593427 e!3823891)))

(declare-fun res!2593422 () Bool)

(assert (=> b!6288488 (=> (not res!2593422) (not e!3823891))))

(assert (=> b!6288488 (= res!2593422 lt!2356632)))

(declare-fun b!6288489 () Bool)

(declare-fun res!2593424 () Bool)

(declare-fun e!3823889 () Bool)

(assert (=> b!6288489 (=> res!2593424 e!3823889)))

(assert (=> b!6288489 (= res!2593424 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288490 () Bool)

(assert (=> b!6288490 (= e!3823887 (not lt!2356632))))

(declare-fun b!6288491 () Bool)

(assert (=> b!6288491 (= e!3823885 (= lt!2356632 call!532425))))

(declare-fun b!6288492 () Bool)

(declare-fun e!3823888 () Bool)

(assert (=> b!6288492 (= e!3823888 e!3823889)))

(declare-fun res!2593426 () Bool)

(assert (=> b!6288492 (=> res!2593426 e!3823889)))

(assert (=> b!6288492 (= res!2593426 call!532425)))

(declare-fun b!6288493 () Bool)

(assert (=> b!6288493 (= e!3823890 (nullable!6203 (Concat!25055 lt!2356425 lt!2356423)))))

(declare-fun b!6288494 () Bool)

(assert (=> b!6288494 (= e!3823889 (not (= (head!12921 s!2326) (c!1140891 (Concat!25055 lt!2356425 lt!2356423)))))))

(declare-fun b!6288495 () Bool)

(assert (=> b!6288495 (= e!3823886 e!3823888)))

(declare-fun res!2593425 () Bool)

(assert (=> b!6288495 (=> (not res!2593425) (not e!3823888))))

(assert (=> b!6288495 (= res!2593425 (not lt!2356632))))

(declare-fun b!6288496 () Bool)

(assert (=> b!6288496 (= e!3823891 (= (head!12921 s!2326) (c!1140891 (Concat!25055 lt!2356425 lt!2356423))))))

(assert (= (and d!1973421 c!1140970) b!6288493))

(assert (= (and d!1973421 (not c!1140970)) b!6288487))

(assert (= (and d!1973421 c!1140969) b!6288491))

(assert (= (and d!1973421 (not c!1140969)) b!6288486))

(assert (= (and b!6288486 c!1140968) b!6288490))

(assert (= (and b!6288486 (not c!1140968)) b!6288483))

(assert (= (and b!6288483 (not res!2593423)) b!6288488))

(assert (= (and b!6288488 res!2593422) b!6288485))

(assert (= (and b!6288485 res!2593421) b!6288484))

(assert (= (and b!6288484 res!2593420) b!6288496))

(assert (= (and b!6288488 (not res!2593427)) b!6288495))

(assert (= (and b!6288495 res!2593425) b!6288492))

(assert (= (and b!6288492 (not res!2593426)) b!6288489))

(assert (= (and b!6288489 (not res!2593424)) b!6288494))

(assert (= (or b!6288491 b!6288485 b!6288492) bm!532420))

(declare-fun m!7109182 () Bool)

(assert (=> b!6288496 m!7109182))

(declare-fun m!7109184 () Bool)

(assert (=> b!6288484 m!7109184))

(assert (=> b!6288484 m!7109184))

(declare-fun m!7109186 () Bool)

(assert (=> b!6288484 m!7109186))

(declare-fun m!7109188 () Bool)

(assert (=> b!6288493 m!7109188))

(assert (=> b!6288489 m!7109184))

(assert (=> b!6288489 m!7109184))

(assert (=> b!6288489 m!7109186))

(declare-fun m!7109190 () Bool)

(assert (=> bm!532420 m!7109190))

(assert (=> d!1973421 m!7109190))

(declare-fun m!7109192 () Bool)

(assert (=> d!1973421 m!7109192))

(assert (=> b!6288487 m!7109182))

(assert (=> b!6288487 m!7109182))

(declare-fun m!7109194 () Bool)

(assert (=> b!6288487 m!7109194))

(assert (=> b!6288487 m!7109184))

(assert (=> b!6288487 m!7109194))

(assert (=> b!6288487 m!7109184))

(declare-fun m!7109196 () Bool)

(assert (=> b!6288487 m!7109196))

(assert (=> b!6288494 m!7109182))

(assert (=> b!6288101 d!1973421))

(declare-fun bs!1571694 () Bool)

(declare-fun d!1973423 () Bool)

(assert (= bs!1571694 (and d!1973423 d!1973395)))

(declare-fun lambda!345330 () Int)

(assert (=> bs!1571694 (= lambda!345330 lambda!345312)))

(declare-fun bs!1571695 () Bool)

(assert (= bs!1571695 (and d!1973423 d!1973397)))

(assert (=> bs!1571695 (= lambda!345330 lambda!345315)))

(assert (=> d!1973423 (= (inv!83773 (h!71254 zl!343)) (forall!15356 (exprs!6094 (h!71254 zl!343)) lambda!345330))))

(declare-fun bs!1571696 () Bool)

(assert (= bs!1571696 d!1973423))

(declare-fun m!7109198 () Bool)

(assert (=> bs!1571696 m!7109198))

(assert (=> b!6288100 d!1973423))

(declare-fun d!1973425 () Bool)

(assert (=> d!1973425 (= (matchR!8393 lt!2356410 s!2326) (matchZipper!2222 lt!2356437 s!2326))))

(declare-fun lt!2356635 () Unit!158171)

(declare-fun choose!46712 ((Set Context!11188) List!64930 Regex!16210 List!64931) Unit!158171)

(assert (=> d!1973425 (= lt!2356635 (choose!46712 lt!2356437 (Cons!64806 lt!2356417 Nil!64806) lt!2356410 s!2326))))

(assert (=> d!1973425 (validRegex!7946 lt!2356410)))

(assert (=> d!1973425 (= (theoremZipperRegexEquiv!780 lt!2356437 (Cons!64806 lt!2356417 Nil!64806) lt!2356410 s!2326) lt!2356635)))

(declare-fun bs!1571697 () Bool)

(assert (= bs!1571697 d!1973425))

(assert (=> bs!1571697 m!7108798))

(assert (=> bs!1571697 m!7108788))

(declare-fun m!7109200 () Bool)

(assert (=> bs!1571697 m!7109200))

(declare-fun m!7109202 () Bool)

(assert (=> bs!1571697 m!7109202))

(assert (=> b!6288120 d!1973425))

(declare-fun d!1973427 () Bool)

(declare-fun choose!46713 (Int) Bool)

(assert (=> d!1973427 (= (Exists!3280 lambda!345275) (choose!46713 lambda!345275))))

(declare-fun bs!1571698 () Bool)

(assert (= bs!1571698 d!1973427))

(declare-fun m!7109204 () Bool)

(assert (=> bs!1571698 m!7109204))

(assert (=> b!6288120 d!1973427))

(declare-fun bs!1571699 () Bool)

(declare-fun d!1973429 () Bool)

(assert (= bs!1571699 (and d!1973429 b!6288130)))

(declare-fun lambda!345333 () Int)

(assert (=> bs!1571699 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356410 (regTwo!32932 r!7292))) (= lambda!345333 lambda!345272))))

(declare-fun bs!1571700 () Bool)

(assert (= bs!1571700 (and d!1973429 b!6288120)))

(assert (=> bs!1571700 (not (= lambda!345333 lambda!345278))))

(assert (=> bs!1571700 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regTwo!32932 (regOne!32932 r!7292))) (= lt!2356410 lt!2356423)) (= lambda!345333 lambda!345277))))

(assert (=> bs!1571700 (not (= lambda!345333 lambda!345276))))

(assert (=> bs!1571699 (not (= lambda!345333 lambda!345273))))

(assert (=> bs!1571700 (= lambda!345333 lambda!345275)))

(assert (=> d!1973429 true))

(assert (=> d!1973429 true))

(assert (=> d!1973429 true))

(assert (=> d!1973429 (= (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 Nil!64807 s!2326 s!2326)) (Exists!3280 lambda!345333))))

(declare-fun lt!2356638 () Unit!158171)

(declare-fun choose!46714 (Regex!16210 Regex!16210 List!64931) Unit!158171)

(assert (=> d!1973429 (= lt!2356638 (choose!46714 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326))))

(assert (=> d!1973429 (validRegex!7946 (regOne!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973429 (= (lemmaFindConcatSeparationEquivalentToExists!2279 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326) lt!2356638)))

(declare-fun bs!1571701 () Bool)

(assert (= bs!1571701 d!1973429))

(declare-fun m!7109206 () Bool)

(assert (=> bs!1571701 m!7109206))

(assert (=> bs!1571701 m!7108750))

(declare-fun m!7109208 () Bool)

(assert (=> bs!1571701 m!7109208))

(assert (=> bs!1571701 m!7108768))

(assert (=> bs!1571701 m!7108770))

(assert (=> bs!1571701 m!7108768))

(assert (=> b!6288120 d!1973429))

(declare-fun bs!1571702 () Bool)

(declare-fun d!1973431 () Bool)

(assert (= bs!1571702 (and d!1973431 d!1973395)))

(declare-fun lambda!345336 () Int)

(assert (=> bs!1571702 (= lambda!345336 lambda!345312)))

(declare-fun bs!1571703 () Bool)

(assert (= bs!1571703 (and d!1973431 d!1973397)))

(assert (=> bs!1571703 (= lambda!345336 lambda!345315)))

(declare-fun bs!1571704 () Bool)

(assert (= bs!1571704 (and d!1973431 d!1973423)))

(assert (=> bs!1571704 (= lambda!345336 lambda!345330)))

(declare-fun b!6288521 () Bool)

(declare-fun e!3823911 () Bool)

(declare-fun e!3823909 () Bool)

(assert (=> b!6288521 (= e!3823911 e!3823909)))

(declare-fun c!1140982 () Bool)

(assert (=> b!6288521 (= c!1140982 (isEmpty!36860 lt!2356455))))

(declare-fun b!6288523 () Bool)

(declare-fun e!3823908 () Bool)

(assert (=> b!6288523 (= e!3823909 e!3823908)))

(declare-fun c!1140981 () Bool)

(assert (=> b!6288523 (= c!1140981 (isEmpty!36860 (tail!12005 lt!2356455)))))

(declare-fun b!6288524 () Bool)

(declare-fun e!3823906 () Regex!16210)

(assert (=> b!6288524 (= e!3823906 (h!71253 lt!2356455))))

(declare-fun b!6288525 () Bool)

(declare-fun lt!2356641 () Regex!16210)

(declare-fun isConcat!1139 (Regex!16210) Bool)

(assert (=> b!6288525 (= e!3823908 (isConcat!1139 lt!2356641))))

(declare-fun b!6288526 () Bool)

(assert (=> b!6288526 (= e!3823908 (= lt!2356641 (head!12920 lt!2356455)))))

(declare-fun b!6288522 () Bool)

(declare-fun e!3823907 () Regex!16210)

(assert (=> b!6288522 (= e!3823906 e!3823907)))

(declare-fun c!1140979 () Bool)

(assert (=> b!6288522 (= c!1140979 (is-Cons!64805 lt!2356455))))

(assert (=> d!1973431 e!3823911))

(declare-fun res!2593437 () Bool)

(assert (=> d!1973431 (=> (not res!2593437) (not e!3823911))))

(assert (=> d!1973431 (= res!2593437 (validRegex!7946 lt!2356641))))

(assert (=> d!1973431 (= lt!2356641 e!3823906)))

(declare-fun c!1140980 () Bool)

(declare-fun e!3823910 () Bool)

(assert (=> d!1973431 (= c!1140980 e!3823910)))

(declare-fun res!2593436 () Bool)

(assert (=> d!1973431 (=> (not res!2593436) (not e!3823910))))

(assert (=> d!1973431 (= res!2593436 (is-Cons!64805 lt!2356455))))

(assert (=> d!1973431 (forall!15356 lt!2356455 lambda!345336)))

(assert (=> d!1973431 (= (generalisedConcat!1807 lt!2356455) lt!2356641)))

(declare-fun b!6288527 () Bool)

(assert (=> b!6288527 (= e!3823907 EmptyExpr!16210)))

(declare-fun b!6288528 () Bool)

(assert (=> b!6288528 (= e!3823910 (isEmpty!36860 (t!378491 lt!2356455)))))

(declare-fun b!6288529 () Bool)

(assert (=> b!6288529 (= e!3823907 (Concat!25055 (h!71253 lt!2356455) (generalisedConcat!1807 (t!378491 lt!2356455))))))

(declare-fun b!6288530 () Bool)

(declare-fun isEmptyExpr!1616 (Regex!16210) Bool)

(assert (=> b!6288530 (= e!3823909 (isEmptyExpr!1616 lt!2356641))))

(assert (= (and d!1973431 res!2593436) b!6288528))

(assert (= (and d!1973431 c!1140980) b!6288524))

(assert (= (and d!1973431 (not c!1140980)) b!6288522))

(assert (= (and b!6288522 c!1140979) b!6288529))

(assert (= (and b!6288522 (not c!1140979)) b!6288527))

(assert (= (and d!1973431 res!2593437) b!6288521))

(assert (= (and b!6288521 c!1140982) b!6288530))

(assert (= (and b!6288521 (not c!1140982)) b!6288523))

(assert (= (and b!6288523 c!1140981) b!6288526))

(assert (= (and b!6288523 (not c!1140981)) b!6288525))

(declare-fun m!7109210 () Bool)

(assert (=> b!6288528 m!7109210))

(declare-fun m!7109212 () Bool)

(assert (=> b!6288521 m!7109212))

(declare-fun m!7109214 () Bool)

(assert (=> b!6288529 m!7109214))

(declare-fun m!7109216 () Bool)

(assert (=> b!6288530 m!7109216))

(declare-fun m!7109218 () Bool)

(assert (=> d!1973431 m!7109218))

(declare-fun m!7109220 () Bool)

(assert (=> d!1973431 m!7109220))

(declare-fun m!7109222 () Bool)

(assert (=> b!6288525 m!7109222))

(declare-fun m!7109224 () Bool)

(assert (=> b!6288523 m!7109224))

(assert (=> b!6288523 m!7109224))

(declare-fun m!7109226 () Bool)

(assert (=> b!6288523 m!7109226))

(declare-fun m!7109228 () Bool)

(assert (=> b!6288526 m!7109228))

(assert (=> b!6288120 d!1973431))

(declare-fun d!1973433 () Bool)

(declare-fun isEmpty!36864 (Option!16101) Bool)

(assert (=> d!1973433 (= (isDefined!12804 (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 Nil!64807 s!2326 s!2326)) (not (isEmpty!36864 (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 Nil!64807 s!2326 s!2326))))))

(declare-fun bs!1571705 () Bool)

(assert (= bs!1571705 d!1973433))

(assert (=> bs!1571705 m!7108760))

(declare-fun m!7109230 () Bool)

(assert (=> bs!1571705 m!7109230))

(assert (=> b!6288120 d!1973433))

(declare-fun bs!1571706 () Bool)

(declare-fun d!1973435 () Bool)

(assert (= bs!1571706 (and d!1973435 b!6288130)))

(declare-fun lambda!345337 () Int)

(assert (=> bs!1571706 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356423 (regTwo!32932 r!7292))) (= lambda!345337 lambda!345272))))

(declare-fun bs!1571707 () Bool)

(assert (= bs!1571707 (and d!1973435 b!6288120)))

(assert (=> bs!1571707 (not (= lambda!345337 lambda!345278))))

(assert (=> bs!1571707 (= lambda!345337 lambda!345277)))

(declare-fun bs!1571708 () Bool)

(assert (= bs!1571708 (and d!1973435 d!1973429)))

(assert (=> bs!1571708 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345337 lambda!345333))))

(assert (=> bs!1571707 (not (= lambda!345337 lambda!345276))))

(assert (=> bs!1571706 (not (= lambda!345337 lambda!345273))))

(assert (=> bs!1571707 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345337 lambda!345275))))

(assert (=> d!1973435 true))

(assert (=> d!1973435 true))

(assert (=> d!1973435 true))

(assert (=> d!1973435 (= (isDefined!12804 (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 Nil!64807 s!2326 s!2326)) (Exists!3280 lambda!345337))))

(declare-fun lt!2356642 () Unit!158171)

(assert (=> d!1973435 (= lt!2356642 (choose!46714 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326))))

(assert (=> d!1973435 (validRegex!7946 (regTwo!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973435 (= (lemmaFindConcatSeparationEquivalentToExists!2279 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326) lt!2356642)))

(declare-fun bs!1571709 () Bool)

(assert (= bs!1571709 d!1973435))

(declare-fun m!7109232 () Bool)

(assert (=> bs!1571709 m!7109232))

(assert (=> bs!1571709 m!7108894))

(declare-fun m!7109234 () Bool)

(assert (=> bs!1571709 m!7109234))

(assert (=> bs!1571709 m!7108760))

(assert (=> bs!1571709 m!7108772))

(assert (=> bs!1571709 m!7108760))

(assert (=> b!6288120 d!1973435))

(declare-fun d!1973437 () Bool)

(assert (=> d!1973437 (= (Exists!3280 lambda!345277) (choose!46713 lambda!345277))))

(declare-fun bs!1571710 () Bool)

(assert (= bs!1571710 d!1973437))

(declare-fun m!7109236 () Bool)

(assert (=> bs!1571710 m!7109236))

(assert (=> b!6288120 d!1973437))

(declare-fun bs!1571711 () Bool)

(declare-fun d!1973439 () Bool)

(assert (= bs!1571711 (and d!1973439 b!6288130)))

(declare-fun lambda!345342 () Int)

(assert (=> bs!1571711 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356410 (regTwo!32932 r!7292))) (= lambda!345342 lambda!345272))))

(declare-fun bs!1571712 () Bool)

(assert (= bs!1571712 (and d!1973439 b!6288120)))

(assert (=> bs!1571712 (not (= lambda!345342 lambda!345278))))

(declare-fun bs!1571713 () Bool)

(assert (= bs!1571713 (and d!1973439 d!1973435)))

(assert (=> bs!1571713 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regTwo!32932 (regOne!32932 r!7292))) (= lt!2356410 lt!2356423)) (= lambda!345342 lambda!345337))))

(assert (=> bs!1571712 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regTwo!32932 (regOne!32932 r!7292))) (= lt!2356410 lt!2356423)) (= lambda!345342 lambda!345277))))

(declare-fun bs!1571714 () Bool)

(assert (= bs!1571714 (and d!1973439 d!1973429)))

(assert (=> bs!1571714 (= lambda!345342 lambda!345333)))

(assert (=> bs!1571712 (not (= lambda!345342 lambda!345276))))

(assert (=> bs!1571711 (not (= lambda!345342 lambda!345273))))

(assert (=> bs!1571712 (= lambda!345342 lambda!345275)))

(assert (=> d!1973439 true))

(assert (=> d!1973439 true))

(assert (=> d!1973439 true))

(declare-fun lambda!345343 () Int)

(assert (=> bs!1571711 (not (= lambda!345343 lambda!345272))))

(assert (=> bs!1571712 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regTwo!32932 (regOne!32932 r!7292))) (= lt!2356410 lt!2356423)) (= lambda!345343 lambda!345278))))

(assert (=> bs!1571713 (not (= lambda!345343 lambda!345337))))

(assert (=> bs!1571712 (not (= lambda!345343 lambda!345277))))

(assert (=> bs!1571714 (not (= lambda!345343 lambda!345333))))

(assert (=> bs!1571712 (= lambda!345343 lambda!345276)))

(declare-fun bs!1571715 () Bool)

(assert (= bs!1571715 d!1973439))

(assert (=> bs!1571715 (not (= lambda!345343 lambda!345342))))

(assert (=> bs!1571711 (= (and (= (regOne!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356410 (regTwo!32932 r!7292))) (= lambda!345343 lambda!345273))))

(assert (=> bs!1571712 (not (= lambda!345343 lambda!345275))))

(assert (=> d!1973439 true))

(assert (=> d!1973439 true))

(assert (=> d!1973439 true))

(assert (=> d!1973439 (= (Exists!3280 lambda!345342) (Exists!3280 lambda!345343))))

(declare-fun lt!2356645 () Unit!158171)

(declare-fun choose!46715 (Regex!16210 Regex!16210 List!64931) Unit!158171)

(assert (=> d!1973439 (= lt!2356645 (choose!46715 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326))))

(assert (=> d!1973439 (validRegex!7946 (regOne!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973439 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 s!2326) lt!2356645)))

(declare-fun m!7109238 () Bool)

(assert (=> bs!1571715 m!7109238))

(declare-fun m!7109240 () Bool)

(assert (=> bs!1571715 m!7109240))

(declare-fun m!7109242 () Bool)

(assert (=> bs!1571715 m!7109242))

(assert (=> bs!1571715 m!7108750))

(assert (=> b!6288120 d!1973439))

(declare-fun d!1973441 () Bool)

(assert (=> d!1973441 (= (matchR!8393 lt!2356410 s!2326) (matchRSpec!3311 lt!2356410 s!2326))))

(declare-fun lt!2356648 () Unit!158171)

(declare-fun choose!46716 (Regex!16210 List!64931) Unit!158171)

(assert (=> d!1973441 (= lt!2356648 (choose!46716 lt!2356410 s!2326))))

(assert (=> d!1973441 (validRegex!7946 lt!2356410)))

(assert (=> d!1973441 (= (mainMatchTheorem!3311 lt!2356410 s!2326) lt!2356648)))

(declare-fun bs!1571716 () Bool)

(assert (= bs!1571716 d!1973441))

(assert (=> bs!1571716 m!7108798))

(assert (=> bs!1571716 m!7108766))

(declare-fun m!7109244 () Bool)

(assert (=> bs!1571716 m!7109244))

(assert (=> bs!1571716 m!7109202))

(assert (=> b!6288120 d!1973441))

(declare-fun bs!1571717 () Bool)

(declare-fun b!6288576 () Bool)

(assert (= bs!1571717 (and b!6288576 b!6288130)))

(declare-fun lambda!345348 () Int)

(assert (=> bs!1571717 (not (= lambda!345348 lambda!345272))))

(declare-fun bs!1571718 () Bool)

(assert (= bs!1571718 (and b!6288576 b!6288120)))

(assert (=> bs!1571718 (not (= lambda!345348 lambda!345278))))

(declare-fun bs!1571719 () Bool)

(assert (= bs!1571719 (and b!6288576 d!1973435)))

(assert (=> bs!1571719 (not (= lambda!345348 lambda!345337))))

(declare-fun bs!1571720 () Bool)

(assert (= bs!1571720 (and b!6288576 d!1973439)))

(assert (=> bs!1571720 (not (= lambda!345348 lambda!345343))))

(assert (=> bs!1571718 (not (= lambda!345348 lambda!345277))))

(declare-fun bs!1571721 () Bool)

(assert (= bs!1571721 (and b!6288576 d!1973429)))

(assert (=> bs!1571721 (not (= lambda!345348 lambda!345333))))

(assert (=> bs!1571718 (not (= lambda!345348 lambda!345276))))

(assert (=> bs!1571720 (not (= lambda!345348 lambda!345342))))

(assert (=> bs!1571717 (not (= lambda!345348 lambda!345273))))

(assert (=> bs!1571718 (not (= lambda!345348 lambda!345275))))

(assert (=> b!6288576 true))

(assert (=> b!6288576 true))

(declare-fun bs!1571722 () Bool)

(declare-fun b!6288579 () Bool)

(assert (= bs!1571722 (and b!6288579 b!6288130)))

(declare-fun lambda!345349 () Int)

(assert (=> bs!1571722 (not (= lambda!345349 lambda!345272))))

(declare-fun bs!1571723 () Bool)

(assert (= bs!1571723 (and b!6288579 b!6288120)))

(assert (=> bs!1571723 (= (and (= (regOne!32932 lt!2356410) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356410) lt!2356423)) (= lambda!345349 lambda!345278))))

(declare-fun bs!1571724 () Bool)

(assert (= bs!1571724 (and b!6288579 d!1973435)))

(assert (=> bs!1571724 (not (= lambda!345349 lambda!345337))))

(declare-fun bs!1571725 () Bool)

(assert (= bs!1571725 (and b!6288579 d!1973439)))

(assert (=> bs!1571725 (= (and (= (regOne!32932 lt!2356410) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356410) lt!2356410)) (= lambda!345349 lambda!345343))))

(assert (=> bs!1571723 (not (= lambda!345349 lambda!345277))))

(declare-fun bs!1571726 () Bool)

(assert (= bs!1571726 (and b!6288579 d!1973429)))

(assert (=> bs!1571726 (not (= lambda!345349 lambda!345333))))

(assert (=> bs!1571723 (= (and (= (regOne!32932 lt!2356410) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356410) lt!2356410)) (= lambda!345349 lambda!345276))))

(assert (=> bs!1571725 (not (= lambda!345349 lambda!345342))))

(declare-fun bs!1571727 () Bool)

(assert (= bs!1571727 (and b!6288579 b!6288576)))

(assert (=> bs!1571727 (not (= lambda!345349 lambda!345348))))

(assert (=> bs!1571722 (= (and (= (regOne!32932 lt!2356410) (regOne!32932 r!7292)) (= (regTwo!32932 lt!2356410) (regTwo!32932 r!7292))) (= lambda!345349 lambda!345273))))

(assert (=> bs!1571723 (not (= lambda!345349 lambda!345275))))

(assert (=> b!6288579 true))

(assert (=> b!6288579 true))

(declare-fun b!6288571 () Bool)

(declare-fun e!3823934 () Bool)

(assert (=> b!6288571 (= e!3823934 (matchRSpec!3311 (regTwo!32933 lt!2356410) s!2326))))

(declare-fun b!6288572 () Bool)

(declare-fun e!3823940 () Bool)

(declare-fun e!3823938 () Bool)

(assert (=> b!6288572 (= e!3823940 e!3823938)))

(declare-fun c!1140992 () Bool)

(assert (=> b!6288572 (= c!1140992 (is-Star!16210 lt!2356410))))

(declare-fun b!6288573 () Bool)

(declare-fun c!1140993 () Bool)

(assert (=> b!6288573 (= c!1140993 (is-Union!16210 lt!2356410))))

(declare-fun e!3823937 () Bool)

(assert (=> b!6288573 (= e!3823937 e!3823940)))

(declare-fun b!6288574 () Bool)

(assert (=> b!6288574 (= e!3823937 (= s!2326 (Cons!64807 (c!1140891 lt!2356410) Nil!64807)))))

(declare-fun b!6288575 () Bool)

(declare-fun res!2593464 () Bool)

(declare-fun e!3823935 () Bool)

(assert (=> b!6288575 (=> res!2593464 e!3823935)))

(declare-fun call!532431 () Bool)

(assert (=> b!6288575 (= res!2593464 call!532431)))

(assert (=> b!6288575 (= e!3823938 e!3823935)))

(declare-fun bm!532425 () Bool)

(declare-fun call!532430 () Bool)

(assert (=> bm!532425 (= call!532430 (Exists!3280 (ite c!1140992 lambda!345348 lambda!345349)))))

(assert (=> b!6288576 (= e!3823935 call!532430)))

(declare-fun b!6288577 () Bool)

(declare-fun e!3823936 () Bool)

(declare-fun e!3823939 () Bool)

(assert (=> b!6288577 (= e!3823936 e!3823939)))

(declare-fun res!2593463 () Bool)

(assert (=> b!6288577 (= res!2593463 (not (is-EmptyLang!16210 lt!2356410)))))

(assert (=> b!6288577 (=> (not res!2593463) (not e!3823939))))

(declare-fun b!6288578 () Bool)

(assert (=> b!6288578 (= e!3823940 e!3823934)))

(declare-fun res!2593462 () Bool)

(assert (=> b!6288578 (= res!2593462 (matchRSpec!3311 (regOne!32933 lt!2356410) s!2326))))

(assert (=> b!6288578 (=> res!2593462 e!3823934)))

(assert (=> b!6288579 (= e!3823938 call!532430)))

(declare-fun b!6288580 () Bool)

(declare-fun c!1140991 () Bool)

(assert (=> b!6288580 (= c!1140991 (is-ElementMatch!16210 lt!2356410))))

(assert (=> b!6288580 (= e!3823939 e!3823937)))

(declare-fun b!6288581 () Bool)

(assert (=> b!6288581 (= e!3823936 call!532431)))

(declare-fun bm!532426 () Bool)

(assert (=> bm!532426 (= call!532431 (isEmpty!36863 s!2326))))

(declare-fun d!1973443 () Bool)

(declare-fun c!1140994 () Bool)

(assert (=> d!1973443 (= c!1140994 (is-EmptyExpr!16210 lt!2356410))))

(assert (=> d!1973443 (= (matchRSpec!3311 lt!2356410 s!2326) e!3823936)))

(assert (= (and d!1973443 c!1140994) b!6288581))

(assert (= (and d!1973443 (not c!1140994)) b!6288577))

(assert (= (and b!6288577 res!2593463) b!6288580))

(assert (= (and b!6288580 c!1140991) b!6288574))

(assert (= (and b!6288580 (not c!1140991)) b!6288573))

(assert (= (and b!6288573 c!1140993) b!6288578))

(assert (= (and b!6288573 (not c!1140993)) b!6288572))

(assert (= (and b!6288578 (not res!2593462)) b!6288571))

(assert (= (and b!6288572 c!1140992) b!6288575))

(assert (= (and b!6288572 (not c!1140992)) b!6288579))

(assert (= (and b!6288575 (not res!2593464)) b!6288576))

(assert (= (or b!6288576 b!6288579) bm!532425))

(assert (= (or b!6288581 b!6288575) bm!532426))

(declare-fun m!7109246 () Bool)

(assert (=> b!6288571 m!7109246))

(declare-fun m!7109248 () Bool)

(assert (=> bm!532425 m!7109248))

(declare-fun m!7109250 () Bool)

(assert (=> b!6288578 m!7109250))

(assert (=> bm!532426 m!7109190))

(assert (=> b!6288120 d!1973443))

(declare-fun d!1973445 () Bool)

(declare-fun c!1140995 () Bool)

(assert (=> d!1973445 (= c!1140995 (isEmpty!36863 s!2326))))

(declare-fun e!3823941 () Bool)

(assert (=> d!1973445 (= (matchZipper!2222 lt!2356412 s!2326) e!3823941)))

(declare-fun b!6288582 () Bool)

(assert (=> b!6288582 (= e!3823941 (nullableZipper!1980 lt!2356412))))

(declare-fun b!6288583 () Bool)

(assert (=> b!6288583 (= e!3823941 (matchZipper!2222 (derivationStepZipper!2176 lt!2356412 (head!12921 s!2326)) (tail!12006 s!2326)))))

(assert (= (and d!1973445 c!1140995) b!6288582))

(assert (= (and d!1973445 (not c!1140995)) b!6288583))

(assert (=> d!1973445 m!7109190))

(declare-fun m!7109252 () Bool)

(assert (=> b!6288582 m!7109252))

(assert (=> b!6288583 m!7109182))

(assert (=> b!6288583 m!7109182))

(declare-fun m!7109254 () Bool)

(assert (=> b!6288583 m!7109254))

(assert (=> b!6288583 m!7109184))

(assert (=> b!6288583 m!7109254))

(assert (=> b!6288583 m!7109184))

(declare-fun m!7109256 () Bool)

(assert (=> b!6288583 m!7109256))

(assert (=> b!6288120 d!1973445))

(declare-fun d!1973447 () Bool)

(declare-fun c!1140996 () Bool)

(assert (=> d!1973447 (= c!1140996 (isEmpty!36863 s!2326))))

(declare-fun e!3823942 () Bool)

(assert (=> d!1973447 (= (matchZipper!2222 lt!2356437 s!2326) e!3823942)))

(declare-fun b!6288584 () Bool)

(assert (=> b!6288584 (= e!3823942 (nullableZipper!1980 lt!2356437))))

(declare-fun b!6288585 () Bool)

(assert (=> b!6288585 (= e!3823942 (matchZipper!2222 (derivationStepZipper!2176 lt!2356437 (head!12921 s!2326)) (tail!12006 s!2326)))))

(assert (= (and d!1973447 c!1140996) b!6288584))

(assert (= (and d!1973447 (not c!1140996)) b!6288585))

(assert (=> d!1973447 m!7109190))

(declare-fun m!7109258 () Bool)

(assert (=> b!6288584 m!7109258))

(assert (=> b!6288585 m!7109182))

(assert (=> b!6288585 m!7109182))

(declare-fun m!7109260 () Bool)

(assert (=> b!6288585 m!7109260))

(assert (=> b!6288585 m!7109184))

(assert (=> b!6288585 m!7109260))

(assert (=> b!6288585 m!7109184))

(declare-fun m!7109262 () Bool)

(assert (=> b!6288585 m!7109262))

(assert (=> b!6288120 d!1973447))

(declare-fun bs!1571728 () Bool)

(declare-fun d!1973449 () Bool)

(assert (= bs!1571728 (and d!1973449 d!1973395)))

(declare-fun lambda!345350 () Int)

(assert (=> bs!1571728 (= lambda!345350 lambda!345312)))

(declare-fun bs!1571729 () Bool)

(assert (= bs!1571729 (and d!1973449 d!1973397)))

(assert (=> bs!1571729 (= lambda!345350 lambda!345315)))

(declare-fun bs!1571730 () Bool)

(assert (= bs!1571730 (and d!1973449 d!1973423)))

(assert (=> bs!1571730 (= lambda!345350 lambda!345330)))

(declare-fun bs!1571731 () Bool)

(assert (= bs!1571731 (and d!1973449 d!1973431)))

(assert (=> bs!1571731 (= lambda!345350 lambda!345336)))

(declare-fun b!6288586 () Bool)

(declare-fun e!3823948 () Bool)

(declare-fun e!3823946 () Bool)

(assert (=> b!6288586 (= e!3823948 e!3823946)))

(declare-fun c!1141000 () Bool)

(assert (=> b!6288586 (= c!1141000 (isEmpty!36860 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288588 () Bool)

(declare-fun e!3823945 () Bool)

(assert (=> b!6288588 (= e!3823946 e!3823945)))

(declare-fun c!1140999 () Bool)

(assert (=> b!6288588 (= c!1140999 (isEmpty!36860 (tail!12005 (t!378491 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun b!6288589 () Bool)

(declare-fun e!3823943 () Regex!16210)

(assert (=> b!6288589 (= e!3823943 (h!71253 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288590 () Bool)

(declare-fun lt!2356649 () Regex!16210)

(assert (=> b!6288590 (= e!3823945 (isConcat!1139 lt!2356649))))

(declare-fun b!6288591 () Bool)

(assert (=> b!6288591 (= e!3823945 (= lt!2356649 (head!12920 (t!378491 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun b!6288587 () Bool)

(declare-fun e!3823944 () Regex!16210)

(assert (=> b!6288587 (= e!3823943 e!3823944)))

(declare-fun c!1140997 () Bool)

(assert (=> b!6288587 (= c!1140997 (is-Cons!64805 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(assert (=> d!1973449 e!3823948))

(declare-fun res!2593466 () Bool)

(assert (=> d!1973449 (=> (not res!2593466) (not e!3823948))))

(assert (=> d!1973449 (= res!2593466 (validRegex!7946 lt!2356649))))

(assert (=> d!1973449 (= lt!2356649 e!3823943)))

(declare-fun c!1140998 () Bool)

(declare-fun e!3823947 () Bool)

(assert (=> d!1973449 (= c!1140998 e!3823947)))

(declare-fun res!2593465 () Bool)

(assert (=> d!1973449 (=> (not res!2593465) (not e!3823947))))

(assert (=> d!1973449 (= res!2593465 (is-Cons!64805 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(assert (=> d!1973449 (forall!15356 (t!378491 (exprs!6094 (h!71254 zl!343))) lambda!345350)))

(assert (=> d!1973449 (= (generalisedConcat!1807 (t!378491 (exprs!6094 (h!71254 zl!343)))) lt!2356649)))

(declare-fun b!6288592 () Bool)

(assert (=> b!6288592 (= e!3823944 EmptyExpr!16210)))

(declare-fun b!6288593 () Bool)

(assert (=> b!6288593 (= e!3823947 (isEmpty!36860 (t!378491 (t!378491 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun b!6288594 () Bool)

(assert (=> b!6288594 (= e!3823944 (Concat!25055 (h!71253 (t!378491 (exprs!6094 (h!71254 zl!343)))) (generalisedConcat!1807 (t!378491 (t!378491 (exprs!6094 (h!71254 zl!343)))))))))

(declare-fun b!6288595 () Bool)

(assert (=> b!6288595 (= e!3823946 (isEmptyExpr!1616 lt!2356649))))

(assert (= (and d!1973449 res!2593465) b!6288593))

(assert (= (and d!1973449 c!1140998) b!6288589))

(assert (= (and d!1973449 (not c!1140998)) b!6288587))

(assert (= (and b!6288587 c!1140997) b!6288594))

(assert (= (and b!6288587 (not c!1140997)) b!6288592))

(assert (= (and d!1973449 res!2593466) b!6288586))

(assert (= (and b!6288586 c!1141000) b!6288595))

(assert (= (and b!6288586 (not c!1141000)) b!6288588))

(assert (= (and b!6288588 c!1140999) b!6288591))

(assert (= (and b!6288588 (not c!1140999)) b!6288590))

(declare-fun m!7109264 () Bool)

(assert (=> b!6288593 m!7109264))

(assert (=> b!6288586 m!7108810))

(declare-fun m!7109266 () Bool)

(assert (=> b!6288594 m!7109266))

(declare-fun m!7109268 () Bool)

(assert (=> b!6288595 m!7109268))

(declare-fun m!7109270 () Bool)

(assert (=> d!1973449 m!7109270))

(declare-fun m!7109272 () Bool)

(assert (=> d!1973449 m!7109272))

(declare-fun m!7109274 () Bool)

(assert (=> b!6288590 m!7109274))

(declare-fun m!7109276 () Bool)

(assert (=> b!6288588 m!7109276))

(assert (=> b!6288588 m!7109276))

(declare-fun m!7109278 () Bool)

(assert (=> b!6288588 m!7109278))

(declare-fun m!7109280 () Bool)

(assert (=> b!6288591 m!7109280))

(assert (=> b!6288120 d!1973449))

(declare-fun bs!1571732 () Bool)

(declare-fun d!1973451 () Bool)

(assert (= bs!1571732 (and d!1973451 d!1973423)))

(declare-fun lambda!345351 () Int)

(assert (=> bs!1571732 (= lambda!345351 lambda!345330)))

(declare-fun bs!1571733 () Bool)

(assert (= bs!1571733 (and d!1973451 d!1973395)))

(assert (=> bs!1571733 (= lambda!345351 lambda!345312)))

(declare-fun bs!1571734 () Bool)

(assert (= bs!1571734 (and d!1973451 d!1973431)))

(assert (=> bs!1571734 (= lambda!345351 lambda!345336)))

(declare-fun bs!1571735 () Bool)

(assert (= bs!1571735 (and d!1973451 d!1973449)))

(assert (=> bs!1571735 (= lambda!345351 lambda!345350)))

(declare-fun bs!1571736 () Bool)

(assert (= bs!1571736 (and d!1973451 d!1973397)))

(assert (=> bs!1571736 (= lambda!345351 lambda!345315)))

(declare-fun b!6288596 () Bool)

(declare-fun e!3823954 () Bool)

(declare-fun e!3823952 () Bool)

(assert (=> b!6288596 (= e!3823954 e!3823952)))

(declare-fun c!1141004 () Bool)

(assert (=> b!6288596 (= c!1141004 (isEmpty!36860 lt!2356452))))

(declare-fun b!6288598 () Bool)

(declare-fun e!3823951 () Bool)

(assert (=> b!6288598 (= e!3823952 e!3823951)))

(declare-fun c!1141003 () Bool)

(assert (=> b!6288598 (= c!1141003 (isEmpty!36860 (tail!12005 lt!2356452)))))

(declare-fun b!6288599 () Bool)

(declare-fun e!3823949 () Regex!16210)

(assert (=> b!6288599 (= e!3823949 (h!71253 lt!2356452))))

(declare-fun b!6288600 () Bool)

(declare-fun lt!2356650 () Regex!16210)

(assert (=> b!6288600 (= e!3823951 (isConcat!1139 lt!2356650))))

(declare-fun b!6288601 () Bool)

(assert (=> b!6288601 (= e!3823951 (= lt!2356650 (head!12920 lt!2356452)))))

(declare-fun b!6288597 () Bool)

(declare-fun e!3823950 () Regex!16210)

(assert (=> b!6288597 (= e!3823949 e!3823950)))

(declare-fun c!1141001 () Bool)

(assert (=> b!6288597 (= c!1141001 (is-Cons!64805 lt!2356452))))

(assert (=> d!1973451 e!3823954))

(declare-fun res!2593468 () Bool)

(assert (=> d!1973451 (=> (not res!2593468) (not e!3823954))))

(assert (=> d!1973451 (= res!2593468 (validRegex!7946 lt!2356650))))

(assert (=> d!1973451 (= lt!2356650 e!3823949)))

(declare-fun c!1141002 () Bool)

(declare-fun e!3823953 () Bool)

(assert (=> d!1973451 (= c!1141002 e!3823953)))

(declare-fun res!2593467 () Bool)

(assert (=> d!1973451 (=> (not res!2593467) (not e!3823953))))

(assert (=> d!1973451 (= res!2593467 (is-Cons!64805 lt!2356452))))

(assert (=> d!1973451 (forall!15356 lt!2356452 lambda!345351)))

(assert (=> d!1973451 (= (generalisedConcat!1807 lt!2356452) lt!2356650)))

(declare-fun b!6288602 () Bool)

(assert (=> b!6288602 (= e!3823950 EmptyExpr!16210)))

(declare-fun b!6288603 () Bool)

(assert (=> b!6288603 (= e!3823953 (isEmpty!36860 (t!378491 lt!2356452)))))

(declare-fun b!6288604 () Bool)

(assert (=> b!6288604 (= e!3823950 (Concat!25055 (h!71253 lt!2356452) (generalisedConcat!1807 (t!378491 lt!2356452))))))

(declare-fun b!6288605 () Bool)

(assert (=> b!6288605 (= e!3823952 (isEmptyExpr!1616 lt!2356650))))

(assert (= (and d!1973451 res!2593467) b!6288603))

(assert (= (and d!1973451 c!1141002) b!6288599))

(assert (= (and d!1973451 (not c!1141002)) b!6288597))

(assert (= (and b!6288597 c!1141001) b!6288604))

(assert (= (and b!6288597 (not c!1141001)) b!6288602))

(assert (= (and d!1973451 res!2593468) b!6288596))

(assert (= (and b!6288596 c!1141004) b!6288605))

(assert (= (and b!6288596 (not c!1141004)) b!6288598))

(assert (= (and b!6288598 c!1141003) b!6288601))

(assert (= (and b!6288598 (not c!1141003)) b!6288600))

(declare-fun m!7109282 () Bool)

(assert (=> b!6288603 m!7109282))

(declare-fun m!7109284 () Bool)

(assert (=> b!6288596 m!7109284))

(declare-fun m!7109286 () Bool)

(assert (=> b!6288604 m!7109286))

(declare-fun m!7109288 () Bool)

(assert (=> b!6288605 m!7109288))

(declare-fun m!7109290 () Bool)

(assert (=> d!1973451 m!7109290))

(declare-fun m!7109292 () Bool)

(assert (=> d!1973451 m!7109292))

(declare-fun m!7109294 () Bool)

(assert (=> b!6288600 m!7109294))

(declare-fun m!7109296 () Bool)

(assert (=> b!6288598 m!7109296))

(assert (=> b!6288598 m!7109296))

(declare-fun m!7109298 () Bool)

(assert (=> b!6288598 m!7109298))

(declare-fun m!7109300 () Bool)

(assert (=> b!6288601 m!7109300))

(assert (=> b!6288120 d!1973451))

(declare-fun d!1973453 () Bool)

(declare-fun c!1141005 () Bool)

(assert (=> d!1973453 (= c!1141005 (isEmpty!36863 s!2326))))

(declare-fun e!3823955 () Bool)

(assert (=> d!1973453 (= (matchZipper!2222 z!1189 s!2326) e!3823955)))

(declare-fun b!6288606 () Bool)

(assert (=> b!6288606 (= e!3823955 (nullableZipper!1980 z!1189))))

(declare-fun b!6288607 () Bool)

(assert (=> b!6288607 (= e!3823955 (matchZipper!2222 (derivationStepZipper!2176 z!1189 (head!12921 s!2326)) (tail!12006 s!2326)))))

(assert (= (and d!1973453 c!1141005) b!6288606))

(assert (= (and d!1973453 (not c!1141005)) b!6288607))

(assert (=> d!1973453 m!7109190))

(declare-fun m!7109302 () Bool)

(assert (=> b!6288606 m!7109302))

(assert (=> b!6288607 m!7109182))

(assert (=> b!6288607 m!7109182))

(declare-fun m!7109304 () Bool)

(assert (=> b!6288607 m!7109304))

(assert (=> b!6288607 m!7109184))

(assert (=> b!6288607 m!7109304))

(assert (=> b!6288607 m!7109184))

(declare-fun m!7109306 () Bool)

(assert (=> b!6288607 m!7109306))

(assert (=> b!6288120 d!1973453))

(declare-fun d!1973455 () Bool)

(assert (=> d!1973455 (= (Exists!3280 lambda!345276) (choose!46713 lambda!345276))))

(declare-fun bs!1571737 () Bool)

(assert (= bs!1571737 d!1973455))

(declare-fun m!7109308 () Bool)

(assert (=> bs!1571737 m!7109308))

(assert (=> b!6288120 d!1973455))

(declare-fun bs!1571738 () Bool)

(declare-fun b!6288613 () Bool)

(assert (= bs!1571738 (and b!6288613 b!6288130)))

(declare-fun lambda!345352 () Int)

(assert (=> bs!1571738 (not (= lambda!345352 lambda!345272))))

(declare-fun bs!1571739 () Bool)

(assert (= bs!1571739 (and b!6288613 b!6288120)))

(assert (=> bs!1571739 (not (= lambda!345352 lambda!345278))))

(declare-fun bs!1571740 () Bool)

(assert (= bs!1571740 (and b!6288613 d!1973439)))

(assert (=> bs!1571740 (not (= lambda!345352 lambda!345343))))

(assert (=> bs!1571739 (not (= lambda!345352 lambda!345277))))

(declare-fun bs!1571741 () Bool)

(assert (= bs!1571741 (and b!6288613 d!1973429)))

(assert (=> bs!1571741 (not (= lambda!345352 lambda!345333))))

(assert (=> bs!1571739 (not (= lambda!345352 lambda!345276))))

(assert (=> bs!1571740 (not (= lambda!345352 lambda!345342))))

(declare-fun bs!1571742 () Bool)

(assert (= bs!1571742 (and b!6288613 b!6288576)))

(assert (=> bs!1571742 (= (and (= (reg!16539 lt!2356414) (reg!16539 lt!2356410)) (= lt!2356414 lt!2356410)) (= lambda!345352 lambda!345348))))

(assert (=> bs!1571738 (not (= lambda!345352 lambda!345273))))

(assert (=> bs!1571739 (not (= lambda!345352 lambda!345275))))

(declare-fun bs!1571743 () Bool)

(assert (= bs!1571743 (and b!6288613 d!1973435)))

(assert (=> bs!1571743 (not (= lambda!345352 lambda!345337))))

(declare-fun bs!1571744 () Bool)

(assert (= bs!1571744 (and b!6288613 b!6288579)))

(assert (=> bs!1571744 (not (= lambda!345352 lambda!345349))))

(assert (=> b!6288613 true))

(assert (=> b!6288613 true))

(declare-fun bs!1571745 () Bool)

(declare-fun b!6288616 () Bool)

(assert (= bs!1571745 (and b!6288616 b!6288130)))

(declare-fun lambda!345353 () Int)

(assert (=> bs!1571745 (not (= lambda!345353 lambda!345272))))

(declare-fun bs!1571746 () Bool)

(assert (= bs!1571746 (and b!6288616 b!6288120)))

(assert (=> bs!1571746 (= (and (= (regOne!32932 lt!2356414) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356414) lt!2356423)) (= lambda!345353 lambda!345278))))

(declare-fun bs!1571747 () Bool)

(assert (= bs!1571747 (and b!6288616 d!1973439)))

(assert (=> bs!1571747 (= (and (= (regOne!32932 lt!2356414) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356414) lt!2356410)) (= lambda!345353 lambda!345343))))

(assert (=> bs!1571746 (not (= lambda!345353 lambda!345277))))

(declare-fun bs!1571748 () Bool)

(assert (= bs!1571748 (and b!6288616 d!1973429)))

(assert (=> bs!1571748 (not (= lambda!345353 lambda!345333))))

(assert (=> bs!1571746 (= (and (= (regOne!32932 lt!2356414) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 lt!2356414) lt!2356410)) (= lambda!345353 lambda!345276))))

(assert (=> bs!1571747 (not (= lambda!345353 lambda!345342))))

(declare-fun bs!1571749 () Bool)

(assert (= bs!1571749 (and b!6288616 b!6288576)))

(assert (=> bs!1571749 (not (= lambda!345353 lambda!345348))))

(assert (=> bs!1571745 (= (and (= (regOne!32932 lt!2356414) (regOne!32932 r!7292)) (= (regTwo!32932 lt!2356414) (regTwo!32932 r!7292))) (= lambda!345353 lambda!345273))))

(assert (=> bs!1571746 (not (= lambda!345353 lambda!345275))))

(declare-fun bs!1571750 () Bool)

(assert (= bs!1571750 (and b!6288616 b!6288613)))

(assert (=> bs!1571750 (not (= lambda!345353 lambda!345352))))

(declare-fun bs!1571751 () Bool)

(assert (= bs!1571751 (and b!6288616 d!1973435)))

(assert (=> bs!1571751 (not (= lambda!345353 lambda!345337))))

(declare-fun bs!1571752 () Bool)

(assert (= bs!1571752 (and b!6288616 b!6288579)))

(assert (=> bs!1571752 (= (and (= (regOne!32932 lt!2356414) (regOne!32932 lt!2356410)) (= (regTwo!32932 lt!2356414) (regTwo!32932 lt!2356410))) (= lambda!345353 lambda!345349))))

(assert (=> b!6288616 true))

(assert (=> b!6288616 true))

(declare-fun b!6288608 () Bool)

(declare-fun e!3823956 () Bool)

(assert (=> b!6288608 (= e!3823956 (matchRSpec!3311 (regTwo!32933 lt!2356414) s!2326))))

(declare-fun b!6288609 () Bool)

(declare-fun e!3823962 () Bool)

(declare-fun e!3823960 () Bool)

(assert (=> b!6288609 (= e!3823962 e!3823960)))

(declare-fun c!1141007 () Bool)

(assert (=> b!6288609 (= c!1141007 (is-Star!16210 lt!2356414))))

(declare-fun b!6288610 () Bool)

(declare-fun c!1141008 () Bool)

(assert (=> b!6288610 (= c!1141008 (is-Union!16210 lt!2356414))))

(declare-fun e!3823959 () Bool)

(assert (=> b!6288610 (= e!3823959 e!3823962)))

(declare-fun b!6288611 () Bool)

(assert (=> b!6288611 (= e!3823959 (= s!2326 (Cons!64807 (c!1140891 lt!2356414) Nil!64807)))))

(declare-fun b!6288612 () Bool)

(declare-fun res!2593471 () Bool)

(declare-fun e!3823957 () Bool)

(assert (=> b!6288612 (=> res!2593471 e!3823957)))

(declare-fun call!532433 () Bool)

(assert (=> b!6288612 (= res!2593471 call!532433)))

(assert (=> b!6288612 (= e!3823960 e!3823957)))

(declare-fun call!532432 () Bool)

(declare-fun bm!532427 () Bool)

(assert (=> bm!532427 (= call!532432 (Exists!3280 (ite c!1141007 lambda!345352 lambda!345353)))))

(assert (=> b!6288613 (= e!3823957 call!532432)))

(declare-fun b!6288614 () Bool)

(declare-fun e!3823958 () Bool)

(declare-fun e!3823961 () Bool)

(assert (=> b!6288614 (= e!3823958 e!3823961)))

(declare-fun res!2593470 () Bool)

(assert (=> b!6288614 (= res!2593470 (not (is-EmptyLang!16210 lt!2356414)))))

(assert (=> b!6288614 (=> (not res!2593470) (not e!3823961))))

(declare-fun b!6288615 () Bool)

(assert (=> b!6288615 (= e!3823962 e!3823956)))

(declare-fun res!2593469 () Bool)

(assert (=> b!6288615 (= res!2593469 (matchRSpec!3311 (regOne!32933 lt!2356414) s!2326))))

(assert (=> b!6288615 (=> res!2593469 e!3823956)))

(assert (=> b!6288616 (= e!3823960 call!532432)))

(declare-fun b!6288617 () Bool)

(declare-fun c!1141006 () Bool)

(assert (=> b!6288617 (= c!1141006 (is-ElementMatch!16210 lt!2356414))))

(assert (=> b!6288617 (= e!3823961 e!3823959)))

(declare-fun b!6288618 () Bool)

(assert (=> b!6288618 (= e!3823958 call!532433)))

(declare-fun bm!532428 () Bool)

(assert (=> bm!532428 (= call!532433 (isEmpty!36863 s!2326))))

(declare-fun d!1973457 () Bool)

(declare-fun c!1141009 () Bool)

(assert (=> d!1973457 (= c!1141009 (is-EmptyExpr!16210 lt!2356414))))

(assert (=> d!1973457 (= (matchRSpec!3311 lt!2356414 s!2326) e!3823958)))

(assert (= (and d!1973457 c!1141009) b!6288618))

(assert (= (and d!1973457 (not c!1141009)) b!6288614))

(assert (= (and b!6288614 res!2593470) b!6288617))

(assert (= (and b!6288617 c!1141006) b!6288611))

(assert (= (and b!6288617 (not c!1141006)) b!6288610))

(assert (= (and b!6288610 c!1141008) b!6288615))

(assert (= (and b!6288610 (not c!1141008)) b!6288609))

(assert (= (and b!6288615 (not res!2593469)) b!6288608))

(assert (= (and b!6288609 c!1141007) b!6288612))

(assert (= (and b!6288609 (not c!1141007)) b!6288616))

(assert (= (and b!6288612 (not res!2593471)) b!6288613))

(assert (= (or b!6288613 b!6288616) bm!532427))

(assert (= (or b!6288618 b!6288612) bm!532428))

(declare-fun m!7109310 () Bool)

(assert (=> b!6288608 m!7109310))

(declare-fun m!7109312 () Bool)

(assert (=> bm!532427 m!7109312))

(declare-fun m!7109314 () Bool)

(assert (=> b!6288615 m!7109314))

(assert (=> bm!532428 m!7109190))

(assert (=> b!6288120 d!1973457))

(declare-fun d!1973459 () Bool)

(assert (=> d!1973459 (= (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 Nil!64807 s!2326 s!2326)) (not (isEmpty!36864 (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 Nil!64807 s!2326 s!2326))))))

(declare-fun bs!1571753 () Bool)

(assert (= bs!1571753 d!1973459))

(assert (=> bs!1571753 m!7108768))

(declare-fun m!7109316 () Bool)

(assert (=> bs!1571753 m!7109316))

(assert (=> b!6288120 d!1973459))

(declare-fun b!6288637 () Bool)

(declare-fun e!3823976 () Bool)

(assert (=> b!6288637 (= e!3823976 (matchR!8393 lt!2356410 s!2326))))

(declare-fun b!6288638 () Bool)

(declare-fun res!2593484 () Bool)

(declare-fun e!3823974 () Bool)

(assert (=> b!6288638 (=> (not res!2593484) (not e!3823974))))

(declare-fun lt!2356659 () Option!16101)

(declare-fun get!22404 (Option!16101) tuple2!66378)

(assert (=> b!6288638 (= res!2593484 (matchR!8393 (regOne!32932 (regOne!32932 r!7292)) (_1!36492 (get!22404 lt!2356659))))))

(declare-fun b!6288639 () Bool)

(declare-fun e!3823975 () Option!16101)

(declare-fun e!3823973 () Option!16101)

(assert (=> b!6288639 (= e!3823975 e!3823973)))

(declare-fun c!1141014 () Bool)

(assert (=> b!6288639 (= c!1141014 (is-Nil!64807 s!2326))))

(declare-fun b!6288640 () Bool)

(declare-fun e!3823977 () Bool)

(assert (=> b!6288640 (= e!3823977 (not (isDefined!12804 lt!2356659)))))

(declare-fun b!6288641 () Bool)

(declare-fun ++!14283 (List!64931 List!64931) List!64931)

(assert (=> b!6288641 (= e!3823974 (= (++!14283 (_1!36492 (get!22404 lt!2356659)) (_2!36492 (get!22404 lt!2356659))) s!2326))))

(declare-fun b!6288642 () Bool)

(assert (=> b!6288642 (= e!3823975 (Some!16100 (tuple2!66379 Nil!64807 s!2326)))))

(declare-fun b!6288643 () Bool)

(declare-fun res!2593486 () Bool)

(assert (=> b!6288643 (=> (not res!2593486) (not e!3823974))))

(assert (=> b!6288643 (= res!2593486 (matchR!8393 lt!2356410 (_2!36492 (get!22404 lt!2356659))))))

(declare-fun b!6288645 () Bool)

(assert (=> b!6288645 (= e!3823973 None!16100)))

(declare-fun b!6288644 () Bool)

(declare-fun lt!2356658 () Unit!158171)

(declare-fun lt!2356657 () Unit!158171)

(assert (=> b!6288644 (= lt!2356658 lt!2356657)))

(assert (=> b!6288644 (= (++!14283 (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2378 (List!64931 C!32690 List!64931 List!64931) Unit!158171)

(assert (=> b!6288644 (= lt!2356657 (lemmaMoveElementToOtherListKeepsConcatEq!2378 Nil!64807 (h!71255 s!2326) (t!378493 s!2326) s!2326))))

(assert (=> b!6288644 (= e!3823973 (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326) s!2326))))

(declare-fun d!1973461 () Bool)

(assert (=> d!1973461 e!3823977))

(declare-fun res!2593482 () Bool)

(assert (=> d!1973461 (=> res!2593482 e!3823977)))

(assert (=> d!1973461 (= res!2593482 e!3823974)))

(declare-fun res!2593483 () Bool)

(assert (=> d!1973461 (=> (not res!2593483) (not e!3823974))))

(assert (=> d!1973461 (= res!2593483 (isDefined!12804 lt!2356659))))

(assert (=> d!1973461 (= lt!2356659 e!3823975)))

(declare-fun c!1141015 () Bool)

(assert (=> d!1973461 (= c!1141015 e!3823976)))

(declare-fun res!2593485 () Bool)

(assert (=> d!1973461 (=> (not res!2593485) (not e!3823976))))

(assert (=> d!1973461 (= res!2593485 (matchR!8393 (regOne!32932 (regOne!32932 r!7292)) Nil!64807))))

(assert (=> d!1973461 (validRegex!7946 (regOne!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973461 (= (findConcatSeparation!2515 (regOne!32932 (regOne!32932 r!7292)) lt!2356410 Nil!64807 s!2326 s!2326) lt!2356659)))

(assert (= (and d!1973461 res!2593485) b!6288637))

(assert (= (and d!1973461 c!1141015) b!6288642))

(assert (= (and d!1973461 (not c!1141015)) b!6288639))

(assert (= (and b!6288639 c!1141014) b!6288645))

(assert (= (and b!6288639 (not c!1141014)) b!6288644))

(assert (= (and d!1973461 res!2593483) b!6288638))

(assert (= (and b!6288638 res!2593484) b!6288643))

(assert (= (and b!6288643 res!2593486) b!6288641))

(assert (= (and d!1973461 (not res!2593482)) b!6288640))

(declare-fun m!7109318 () Bool)

(assert (=> d!1973461 m!7109318))

(declare-fun m!7109320 () Bool)

(assert (=> d!1973461 m!7109320))

(assert (=> d!1973461 m!7108750))

(declare-fun m!7109322 () Bool)

(assert (=> b!6288641 m!7109322))

(declare-fun m!7109324 () Bool)

(assert (=> b!6288641 m!7109324))

(assert (=> b!6288643 m!7109322))

(declare-fun m!7109326 () Bool)

(assert (=> b!6288643 m!7109326))

(assert (=> b!6288637 m!7108798))

(assert (=> b!6288640 m!7109318))

(declare-fun m!7109328 () Bool)

(assert (=> b!6288644 m!7109328))

(assert (=> b!6288644 m!7109328))

(declare-fun m!7109330 () Bool)

(assert (=> b!6288644 m!7109330))

(declare-fun m!7109332 () Bool)

(assert (=> b!6288644 m!7109332))

(assert (=> b!6288644 m!7109328))

(declare-fun m!7109334 () Bool)

(assert (=> b!6288644 m!7109334))

(assert (=> b!6288638 m!7109322))

(declare-fun m!7109336 () Bool)

(assert (=> b!6288638 m!7109336))

(assert (=> b!6288120 d!1973461))

(declare-fun bs!1571754 () Bool)

(declare-fun d!1973463 () Bool)

(assert (= bs!1571754 (and d!1973463 b!6288130)))

(declare-fun lambda!345354 () Int)

(assert (=> bs!1571754 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356423 (regTwo!32932 r!7292))) (= lambda!345354 lambda!345272))))

(declare-fun bs!1571755 () Bool)

(assert (= bs!1571755 (and d!1973463 b!6288120)))

(assert (=> bs!1571755 (not (= lambda!345354 lambda!345278))))

(declare-fun bs!1571756 () Bool)

(assert (= bs!1571756 (and d!1973463 d!1973439)))

(assert (=> bs!1571756 (not (= lambda!345354 lambda!345343))))

(assert (=> bs!1571755 (= lambda!345354 lambda!345277)))

(declare-fun bs!1571757 () Bool)

(assert (= bs!1571757 (and d!1973463 d!1973429)))

(assert (=> bs!1571757 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345354 lambda!345333))))

(assert (=> bs!1571755 (not (= lambda!345354 lambda!345276))))

(assert (=> bs!1571756 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345354 lambda!345342))))

(declare-fun bs!1571758 () Bool)

(assert (= bs!1571758 (and d!1973463 b!6288616)))

(assert (=> bs!1571758 (not (= lambda!345354 lambda!345353))))

(declare-fun bs!1571759 () Bool)

(assert (= bs!1571759 (and d!1973463 b!6288576)))

(assert (=> bs!1571759 (not (= lambda!345354 lambda!345348))))

(assert (=> bs!1571754 (not (= lambda!345354 lambda!345273))))

(assert (=> bs!1571755 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345354 lambda!345275))))

(declare-fun bs!1571760 () Bool)

(assert (= bs!1571760 (and d!1973463 b!6288613)))

(assert (=> bs!1571760 (not (= lambda!345354 lambda!345352))))

(declare-fun bs!1571761 () Bool)

(assert (= bs!1571761 (and d!1973463 d!1973435)))

(assert (=> bs!1571761 (= lambda!345354 lambda!345337)))

(declare-fun bs!1571762 () Bool)

(assert (= bs!1571762 (and d!1973463 b!6288579)))

(assert (=> bs!1571762 (not (= lambda!345354 lambda!345349))))

(assert (=> d!1973463 true))

(assert (=> d!1973463 true))

(assert (=> d!1973463 true))

(declare-fun bs!1571763 () Bool)

(assert (= bs!1571763 d!1973463))

(declare-fun lambda!345355 () Int)

(assert (=> bs!1571763 (not (= lambda!345355 lambda!345354))))

(assert (=> bs!1571754 (not (= lambda!345355 lambda!345272))))

(assert (=> bs!1571755 (= lambda!345355 lambda!345278)))

(assert (=> bs!1571756 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345355 lambda!345343))))

(assert (=> bs!1571755 (not (= lambda!345355 lambda!345277))))

(assert (=> bs!1571757 (not (= lambda!345355 lambda!345333))))

(assert (=> bs!1571755 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 (regOne!32932 r!7292))) (= lt!2356423 lt!2356410)) (= lambda!345355 lambda!345276))))

(assert (=> bs!1571756 (not (= lambda!345355 lambda!345342))))

(assert (=> bs!1571758 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 lt!2356414)) (= lt!2356423 (regTwo!32932 lt!2356414))) (= lambda!345355 lambda!345353))))

(assert (=> bs!1571759 (not (= lambda!345355 lambda!345348))))

(assert (=> bs!1571754 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 r!7292)) (= lt!2356423 (regTwo!32932 r!7292))) (= lambda!345355 lambda!345273))))

(assert (=> bs!1571755 (not (= lambda!345355 lambda!345275))))

(assert (=> bs!1571760 (not (= lambda!345355 lambda!345352))))

(assert (=> bs!1571761 (not (= lambda!345355 lambda!345337))))

(assert (=> bs!1571762 (= (and (= (regTwo!32932 (regOne!32932 r!7292)) (regOne!32932 lt!2356410)) (= lt!2356423 (regTwo!32932 lt!2356410))) (= lambda!345355 lambda!345349))))

(assert (=> d!1973463 true))

(assert (=> d!1973463 true))

(assert (=> d!1973463 true))

(assert (=> d!1973463 (= (Exists!3280 lambda!345354) (Exists!3280 lambda!345355))))

(declare-fun lt!2356660 () Unit!158171)

(assert (=> d!1973463 (= lt!2356660 (choose!46715 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326))))

(assert (=> d!1973463 (validRegex!7946 (regTwo!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973463 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 s!2326) lt!2356660)))

(declare-fun m!7109338 () Bool)

(assert (=> bs!1571763 m!7109338))

(declare-fun m!7109340 () Bool)

(assert (=> bs!1571763 m!7109340))

(declare-fun m!7109342 () Bool)

(assert (=> bs!1571763 m!7109342))

(assert (=> bs!1571763 m!7108894))

(assert (=> b!6288120 d!1973463))

(declare-fun d!1973465 () Bool)

(assert (=> d!1973465 (= (matchR!8393 lt!2356414 s!2326) (matchRSpec!3311 lt!2356414 s!2326))))

(declare-fun lt!2356661 () Unit!158171)

(assert (=> d!1973465 (= lt!2356661 (choose!46716 lt!2356414 s!2326))))

(assert (=> d!1973465 (validRegex!7946 lt!2356414)))

(assert (=> d!1973465 (= (mainMatchTheorem!3311 lt!2356414 s!2326) lt!2356661)))

(declare-fun bs!1571764 () Bool)

(assert (= bs!1571764 d!1973465))

(assert (=> bs!1571764 m!7108774))

(assert (=> bs!1571764 m!7108782))

(declare-fun m!7109344 () Bool)

(assert (=> bs!1571764 m!7109344))

(declare-fun m!7109346 () Bool)

(assert (=> bs!1571764 m!7109346))

(assert (=> b!6288120 d!1973465))

(declare-fun b!6288646 () Bool)

(declare-fun res!2593490 () Bool)

(declare-fun e!3823979 () Bool)

(assert (=> b!6288646 (=> res!2593490 e!3823979)))

(assert (=> b!6288646 (= res!2593490 (not (is-ElementMatch!16210 lt!2356410)))))

(declare-fun e!3823980 () Bool)

(assert (=> b!6288646 (= e!3823980 e!3823979)))

(declare-fun bm!532429 () Bool)

(declare-fun call!532434 () Bool)

(assert (=> bm!532429 (= call!532434 (isEmpty!36863 s!2326))))

(declare-fun b!6288647 () Bool)

(declare-fun res!2593487 () Bool)

(declare-fun e!3823984 () Bool)

(assert (=> b!6288647 (=> (not res!2593487) (not e!3823984))))

(assert (=> b!6288647 (= res!2593487 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288648 () Bool)

(declare-fun res!2593488 () Bool)

(assert (=> b!6288648 (=> (not res!2593488) (not e!3823984))))

(assert (=> b!6288648 (= res!2593488 (not call!532434))))

(declare-fun d!1973467 () Bool)

(declare-fun e!3823978 () Bool)

(assert (=> d!1973467 e!3823978))

(declare-fun c!1141017 () Bool)

(assert (=> d!1973467 (= c!1141017 (is-EmptyExpr!16210 lt!2356410))))

(declare-fun lt!2356662 () Bool)

(declare-fun e!3823983 () Bool)

(assert (=> d!1973467 (= lt!2356662 e!3823983)))

(declare-fun c!1141018 () Bool)

(assert (=> d!1973467 (= c!1141018 (isEmpty!36863 s!2326))))

(assert (=> d!1973467 (validRegex!7946 lt!2356410)))

(assert (=> d!1973467 (= (matchR!8393 lt!2356410 s!2326) lt!2356662)))

(declare-fun b!6288649 () Bool)

(assert (=> b!6288649 (= e!3823978 e!3823980)))

(declare-fun c!1141016 () Bool)

(assert (=> b!6288649 (= c!1141016 (is-EmptyLang!16210 lt!2356410))))

(declare-fun b!6288650 () Bool)

(assert (=> b!6288650 (= e!3823983 (matchR!8393 (derivativeStep!4919 lt!2356410 (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288651 () Bool)

(declare-fun res!2593494 () Bool)

(assert (=> b!6288651 (=> res!2593494 e!3823979)))

(assert (=> b!6288651 (= res!2593494 e!3823984)))

(declare-fun res!2593489 () Bool)

(assert (=> b!6288651 (=> (not res!2593489) (not e!3823984))))

(assert (=> b!6288651 (= res!2593489 lt!2356662)))

(declare-fun b!6288652 () Bool)

(declare-fun res!2593491 () Bool)

(declare-fun e!3823982 () Bool)

(assert (=> b!6288652 (=> res!2593491 e!3823982)))

(assert (=> b!6288652 (= res!2593491 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288653 () Bool)

(assert (=> b!6288653 (= e!3823980 (not lt!2356662))))

(declare-fun b!6288654 () Bool)

(assert (=> b!6288654 (= e!3823978 (= lt!2356662 call!532434))))

(declare-fun b!6288655 () Bool)

(declare-fun e!3823981 () Bool)

(assert (=> b!6288655 (= e!3823981 e!3823982)))

(declare-fun res!2593493 () Bool)

(assert (=> b!6288655 (=> res!2593493 e!3823982)))

(assert (=> b!6288655 (= res!2593493 call!532434)))

(declare-fun b!6288656 () Bool)

(assert (=> b!6288656 (= e!3823983 (nullable!6203 lt!2356410))))

(declare-fun b!6288657 () Bool)

(assert (=> b!6288657 (= e!3823982 (not (= (head!12921 s!2326) (c!1140891 lt!2356410))))))

(declare-fun b!6288658 () Bool)

(assert (=> b!6288658 (= e!3823979 e!3823981)))

(declare-fun res!2593492 () Bool)

(assert (=> b!6288658 (=> (not res!2593492) (not e!3823981))))

(assert (=> b!6288658 (= res!2593492 (not lt!2356662))))

(declare-fun b!6288659 () Bool)

(assert (=> b!6288659 (= e!3823984 (= (head!12921 s!2326) (c!1140891 lt!2356410)))))

(assert (= (and d!1973467 c!1141018) b!6288656))

(assert (= (and d!1973467 (not c!1141018)) b!6288650))

(assert (= (and d!1973467 c!1141017) b!6288654))

(assert (= (and d!1973467 (not c!1141017)) b!6288649))

(assert (= (and b!6288649 c!1141016) b!6288653))

(assert (= (and b!6288649 (not c!1141016)) b!6288646))

(assert (= (and b!6288646 (not res!2593490)) b!6288651))

(assert (= (and b!6288651 res!2593489) b!6288648))

(assert (= (and b!6288648 res!2593488) b!6288647))

(assert (= (and b!6288647 res!2593487) b!6288659))

(assert (= (and b!6288651 (not res!2593494)) b!6288658))

(assert (= (and b!6288658 res!2593492) b!6288655))

(assert (= (and b!6288655 (not res!2593493)) b!6288652))

(assert (= (and b!6288652 (not res!2593491)) b!6288657))

(assert (= (or b!6288654 b!6288648 b!6288655) bm!532429))

(assert (=> b!6288659 m!7109182))

(assert (=> b!6288647 m!7109184))

(assert (=> b!6288647 m!7109184))

(assert (=> b!6288647 m!7109186))

(declare-fun m!7109348 () Bool)

(assert (=> b!6288656 m!7109348))

(assert (=> b!6288652 m!7109184))

(assert (=> b!6288652 m!7109184))

(assert (=> b!6288652 m!7109186))

(assert (=> bm!532429 m!7109190))

(assert (=> d!1973467 m!7109190))

(assert (=> d!1973467 m!7109202))

(assert (=> b!6288650 m!7109182))

(assert (=> b!6288650 m!7109182))

(declare-fun m!7109350 () Bool)

(assert (=> b!6288650 m!7109350))

(assert (=> b!6288650 m!7109184))

(assert (=> b!6288650 m!7109350))

(assert (=> b!6288650 m!7109184))

(declare-fun m!7109352 () Bool)

(assert (=> b!6288650 m!7109352))

(assert (=> b!6288657 m!7109182))

(assert (=> b!6288120 d!1973467))

(declare-fun d!1973469 () Bool)

(assert (=> d!1973469 (= (matchR!8393 lt!2356414 s!2326) (matchZipper!2222 lt!2356412 s!2326))))

(declare-fun lt!2356663 () Unit!158171)

(assert (=> d!1973469 (= lt!2356663 (choose!46712 lt!2356412 lt!2356413 lt!2356414 s!2326))))

(assert (=> d!1973469 (validRegex!7946 lt!2356414)))

(assert (=> d!1973469 (= (theoremZipperRegexEquiv!780 lt!2356412 lt!2356413 lt!2356414 s!2326) lt!2356663)))

(declare-fun bs!1571765 () Bool)

(assert (= bs!1571765 d!1973469))

(assert (=> bs!1571765 m!7108774))

(assert (=> bs!1571765 m!7108786))

(declare-fun m!7109354 () Bool)

(assert (=> bs!1571765 m!7109354))

(assert (=> bs!1571765 m!7109346))

(assert (=> b!6288120 d!1973469))

(declare-fun b!6288660 () Bool)

(declare-fun res!2593498 () Bool)

(declare-fun e!3823986 () Bool)

(assert (=> b!6288660 (=> res!2593498 e!3823986)))

(assert (=> b!6288660 (= res!2593498 (not (is-ElementMatch!16210 lt!2356414)))))

(declare-fun e!3823987 () Bool)

(assert (=> b!6288660 (= e!3823987 e!3823986)))

(declare-fun bm!532430 () Bool)

(declare-fun call!532435 () Bool)

(assert (=> bm!532430 (= call!532435 (isEmpty!36863 s!2326))))

(declare-fun b!6288661 () Bool)

(declare-fun res!2593495 () Bool)

(declare-fun e!3823991 () Bool)

(assert (=> b!6288661 (=> (not res!2593495) (not e!3823991))))

(assert (=> b!6288661 (= res!2593495 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288662 () Bool)

(declare-fun res!2593496 () Bool)

(assert (=> b!6288662 (=> (not res!2593496) (not e!3823991))))

(assert (=> b!6288662 (= res!2593496 (not call!532435))))

(declare-fun d!1973471 () Bool)

(declare-fun e!3823985 () Bool)

(assert (=> d!1973471 e!3823985))

(declare-fun c!1141020 () Bool)

(assert (=> d!1973471 (= c!1141020 (is-EmptyExpr!16210 lt!2356414))))

(declare-fun lt!2356664 () Bool)

(declare-fun e!3823990 () Bool)

(assert (=> d!1973471 (= lt!2356664 e!3823990)))

(declare-fun c!1141021 () Bool)

(assert (=> d!1973471 (= c!1141021 (isEmpty!36863 s!2326))))

(assert (=> d!1973471 (validRegex!7946 lt!2356414)))

(assert (=> d!1973471 (= (matchR!8393 lt!2356414 s!2326) lt!2356664)))

(declare-fun b!6288663 () Bool)

(assert (=> b!6288663 (= e!3823985 e!3823987)))

(declare-fun c!1141019 () Bool)

(assert (=> b!6288663 (= c!1141019 (is-EmptyLang!16210 lt!2356414))))

(declare-fun b!6288664 () Bool)

(assert (=> b!6288664 (= e!3823990 (matchR!8393 (derivativeStep!4919 lt!2356414 (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288665 () Bool)

(declare-fun res!2593502 () Bool)

(assert (=> b!6288665 (=> res!2593502 e!3823986)))

(assert (=> b!6288665 (= res!2593502 e!3823991)))

(declare-fun res!2593497 () Bool)

(assert (=> b!6288665 (=> (not res!2593497) (not e!3823991))))

(assert (=> b!6288665 (= res!2593497 lt!2356664)))

(declare-fun b!6288666 () Bool)

(declare-fun res!2593499 () Bool)

(declare-fun e!3823989 () Bool)

(assert (=> b!6288666 (=> res!2593499 e!3823989)))

(assert (=> b!6288666 (= res!2593499 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288667 () Bool)

(assert (=> b!6288667 (= e!3823987 (not lt!2356664))))

(declare-fun b!6288668 () Bool)

(assert (=> b!6288668 (= e!3823985 (= lt!2356664 call!532435))))

(declare-fun b!6288669 () Bool)

(declare-fun e!3823988 () Bool)

(assert (=> b!6288669 (= e!3823988 e!3823989)))

(declare-fun res!2593501 () Bool)

(assert (=> b!6288669 (=> res!2593501 e!3823989)))

(assert (=> b!6288669 (= res!2593501 call!532435)))

(declare-fun b!6288670 () Bool)

(assert (=> b!6288670 (= e!3823990 (nullable!6203 lt!2356414))))

(declare-fun b!6288671 () Bool)

(assert (=> b!6288671 (= e!3823989 (not (= (head!12921 s!2326) (c!1140891 lt!2356414))))))

(declare-fun b!6288672 () Bool)

(assert (=> b!6288672 (= e!3823986 e!3823988)))

(declare-fun res!2593500 () Bool)

(assert (=> b!6288672 (=> (not res!2593500) (not e!3823988))))

(assert (=> b!6288672 (= res!2593500 (not lt!2356664))))

(declare-fun b!6288673 () Bool)

(assert (=> b!6288673 (= e!3823991 (= (head!12921 s!2326) (c!1140891 lt!2356414)))))

(assert (= (and d!1973471 c!1141021) b!6288670))

(assert (= (and d!1973471 (not c!1141021)) b!6288664))

(assert (= (and d!1973471 c!1141020) b!6288668))

(assert (= (and d!1973471 (not c!1141020)) b!6288663))

(assert (= (and b!6288663 c!1141019) b!6288667))

(assert (= (and b!6288663 (not c!1141019)) b!6288660))

(assert (= (and b!6288660 (not res!2593498)) b!6288665))

(assert (= (and b!6288665 res!2593497) b!6288662))

(assert (= (and b!6288662 res!2593496) b!6288661))

(assert (= (and b!6288661 res!2593495) b!6288673))

(assert (= (and b!6288665 (not res!2593502)) b!6288672))

(assert (= (and b!6288672 res!2593500) b!6288669))

(assert (= (and b!6288669 (not res!2593501)) b!6288666))

(assert (= (and b!6288666 (not res!2593499)) b!6288671))

(assert (= (or b!6288668 b!6288662 b!6288669) bm!532430))

(assert (=> b!6288673 m!7109182))

(assert (=> b!6288661 m!7109184))

(assert (=> b!6288661 m!7109184))

(assert (=> b!6288661 m!7109186))

(declare-fun m!7109356 () Bool)

(assert (=> b!6288670 m!7109356))

(assert (=> b!6288666 m!7109184))

(assert (=> b!6288666 m!7109184))

(assert (=> b!6288666 m!7109186))

(assert (=> bm!532430 m!7109190))

(assert (=> d!1973471 m!7109190))

(assert (=> d!1973471 m!7109346))

(assert (=> b!6288664 m!7109182))

(assert (=> b!6288664 m!7109182))

(declare-fun m!7109358 () Bool)

(assert (=> b!6288664 m!7109358))

(assert (=> b!6288664 m!7109184))

(assert (=> b!6288664 m!7109358))

(assert (=> b!6288664 m!7109184))

(declare-fun m!7109360 () Bool)

(assert (=> b!6288664 m!7109360))

(assert (=> b!6288671 m!7109182))

(assert (=> b!6288120 d!1973471))

(declare-fun b!6288674 () Bool)

(declare-fun e!3823995 () Bool)

(assert (=> b!6288674 (= e!3823995 (matchR!8393 lt!2356423 s!2326))))

(declare-fun b!6288675 () Bool)

(declare-fun res!2593505 () Bool)

(declare-fun e!3823993 () Bool)

(assert (=> b!6288675 (=> (not res!2593505) (not e!3823993))))

(declare-fun lt!2356667 () Option!16101)

(assert (=> b!6288675 (= res!2593505 (matchR!8393 (regTwo!32932 (regOne!32932 r!7292)) (_1!36492 (get!22404 lt!2356667))))))

(declare-fun b!6288676 () Bool)

(declare-fun e!3823994 () Option!16101)

(declare-fun e!3823992 () Option!16101)

(assert (=> b!6288676 (= e!3823994 e!3823992)))

(declare-fun c!1141022 () Bool)

(assert (=> b!6288676 (= c!1141022 (is-Nil!64807 s!2326))))

(declare-fun b!6288677 () Bool)

(declare-fun e!3823996 () Bool)

(assert (=> b!6288677 (= e!3823996 (not (isDefined!12804 lt!2356667)))))

(declare-fun b!6288678 () Bool)

(assert (=> b!6288678 (= e!3823993 (= (++!14283 (_1!36492 (get!22404 lt!2356667)) (_2!36492 (get!22404 lt!2356667))) s!2326))))

(declare-fun b!6288679 () Bool)

(assert (=> b!6288679 (= e!3823994 (Some!16100 (tuple2!66379 Nil!64807 s!2326)))))

(declare-fun b!6288680 () Bool)

(declare-fun res!2593507 () Bool)

(assert (=> b!6288680 (=> (not res!2593507) (not e!3823993))))

(assert (=> b!6288680 (= res!2593507 (matchR!8393 lt!2356423 (_2!36492 (get!22404 lt!2356667))))))

(declare-fun b!6288682 () Bool)

(assert (=> b!6288682 (= e!3823992 None!16100)))

(declare-fun b!6288681 () Bool)

(declare-fun lt!2356666 () Unit!158171)

(declare-fun lt!2356665 () Unit!158171)

(assert (=> b!6288681 (= lt!2356666 lt!2356665)))

(assert (=> b!6288681 (= (++!14283 (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326)) s!2326)))

(assert (=> b!6288681 (= lt!2356665 (lemmaMoveElementToOtherListKeepsConcatEq!2378 Nil!64807 (h!71255 s!2326) (t!378493 s!2326) s!2326))))

(assert (=> b!6288681 (= e!3823992 (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326) s!2326))))

(declare-fun d!1973475 () Bool)

(assert (=> d!1973475 e!3823996))

(declare-fun res!2593503 () Bool)

(assert (=> d!1973475 (=> res!2593503 e!3823996)))

(assert (=> d!1973475 (= res!2593503 e!3823993)))

(declare-fun res!2593504 () Bool)

(assert (=> d!1973475 (=> (not res!2593504) (not e!3823993))))

(assert (=> d!1973475 (= res!2593504 (isDefined!12804 lt!2356667))))

(assert (=> d!1973475 (= lt!2356667 e!3823994)))

(declare-fun c!1141023 () Bool)

(assert (=> d!1973475 (= c!1141023 e!3823995)))

(declare-fun res!2593506 () Bool)

(assert (=> d!1973475 (=> (not res!2593506) (not e!3823995))))

(assert (=> d!1973475 (= res!2593506 (matchR!8393 (regTwo!32932 (regOne!32932 r!7292)) Nil!64807))))

(assert (=> d!1973475 (validRegex!7946 (regTwo!32932 (regOne!32932 r!7292)))))

(assert (=> d!1973475 (= (findConcatSeparation!2515 (regTwo!32932 (regOne!32932 r!7292)) lt!2356423 Nil!64807 s!2326 s!2326) lt!2356667)))

(assert (= (and d!1973475 res!2593506) b!6288674))

(assert (= (and d!1973475 c!1141023) b!6288679))

(assert (= (and d!1973475 (not c!1141023)) b!6288676))

(assert (= (and b!6288676 c!1141022) b!6288682))

(assert (= (and b!6288676 (not c!1141022)) b!6288681))

(assert (= (and d!1973475 res!2593504) b!6288675))

(assert (= (and b!6288675 res!2593505) b!6288680))

(assert (= (and b!6288680 res!2593507) b!6288678))

(assert (= (and d!1973475 (not res!2593503)) b!6288677))

(declare-fun m!7109364 () Bool)

(assert (=> d!1973475 m!7109364))

(declare-fun m!7109366 () Bool)

(assert (=> d!1973475 m!7109366))

(assert (=> d!1973475 m!7108894))

(declare-fun m!7109368 () Bool)

(assert (=> b!6288678 m!7109368))

(declare-fun m!7109370 () Bool)

(assert (=> b!6288678 m!7109370))

(assert (=> b!6288680 m!7109368))

(declare-fun m!7109372 () Bool)

(assert (=> b!6288680 m!7109372))

(declare-fun m!7109374 () Bool)

(assert (=> b!6288674 m!7109374))

(assert (=> b!6288677 m!7109364))

(assert (=> b!6288681 m!7109328))

(assert (=> b!6288681 m!7109328))

(assert (=> b!6288681 m!7109330))

(assert (=> b!6288681 m!7109332))

(assert (=> b!6288681 m!7109328))

(declare-fun m!7109376 () Bool)

(assert (=> b!6288681 m!7109376))

(assert (=> b!6288675 m!7109368))

(declare-fun m!7109378 () Bool)

(assert (=> b!6288675 m!7109378))

(assert (=> b!6288120 d!1973475))

(declare-fun d!1973479 () Bool)

(assert (=> d!1973479 (= (Exists!3280 lambda!345278) (choose!46713 lambda!345278))))

(declare-fun bs!1571767 () Bool)

(assert (= bs!1571767 d!1973479))

(declare-fun m!7109380 () Bool)

(assert (=> bs!1571767 m!7109380))

(assert (=> b!6288120 d!1973479))

(declare-fun bs!1571768 () Bool)

(declare-fun d!1973481 () Bool)

(assert (= bs!1571768 (and d!1973481 d!1973423)))

(declare-fun lambda!345359 () Int)

(assert (=> bs!1571768 (= lambda!345359 lambda!345330)))

(declare-fun bs!1571769 () Bool)

(assert (= bs!1571769 (and d!1973481 d!1973395)))

(assert (=> bs!1571769 (= lambda!345359 lambda!345312)))

(declare-fun bs!1571770 () Bool)

(assert (= bs!1571770 (and d!1973481 d!1973431)))

(assert (=> bs!1571770 (= lambda!345359 lambda!345336)))

(declare-fun bs!1571771 () Bool)

(assert (= bs!1571771 (and d!1973481 d!1973449)))

(assert (=> bs!1571771 (= lambda!345359 lambda!345350)))

(declare-fun bs!1571772 () Bool)

(assert (= bs!1571772 (and d!1973481 d!1973451)))

(assert (=> bs!1571772 (= lambda!345359 lambda!345351)))

(declare-fun bs!1571773 () Bool)

(assert (= bs!1571773 (and d!1973481 d!1973397)))

(assert (=> bs!1571773 (= lambda!345359 lambda!345315)))

(assert (=> d!1973481 (= (inv!83773 setElem!42797) (forall!15356 (exprs!6094 setElem!42797) lambda!345359))))

(declare-fun bs!1571774 () Bool)

(assert (= bs!1571774 d!1973481))

(declare-fun m!7109382 () Bool)

(assert (=> bs!1571774 m!7109382))

(assert (=> setNonEmpty!42797 d!1973481))

(declare-fun d!1973483 () Bool)

(declare-fun c!1141024 () Bool)

(assert (=> d!1973483 (= c!1141024 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3823997 () Bool)

(assert (=> d!1973483 (= (matchZipper!2222 lt!2356454 (t!378493 s!2326)) e!3823997)))

(declare-fun b!6288683 () Bool)

(assert (=> b!6288683 (= e!3823997 (nullableZipper!1980 lt!2356454))))

(declare-fun b!6288684 () Bool)

(assert (=> b!6288684 (= e!3823997 (matchZipper!2222 (derivationStepZipper!2176 lt!2356454 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973483 c!1141024) b!6288683))

(assert (= (and d!1973483 (not c!1141024)) b!6288684))

(assert (=> d!1973483 m!7109104))

(declare-fun m!7109384 () Bool)

(assert (=> b!6288683 m!7109384))

(assert (=> b!6288684 m!7109108))

(assert (=> b!6288684 m!7109108))

(declare-fun m!7109386 () Bool)

(assert (=> b!6288684 m!7109386))

(assert (=> b!6288684 m!7109112))

(assert (=> b!6288684 m!7109386))

(assert (=> b!6288684 m!7109112))

(declare-fun m!7109388 () Bool)

(assert (=> b!6288684 m!7109388))

(assert (=> b!6288119 d!1973483))

(declare-fun d!1973485 () Bool)

(declare-fun c!1141025 () Bool)

(assert (=> d!1973485 (= c!1141025 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3823998 () Bool)

(assert (=> d!1973485 (= (matchZipper!2222 lt!2356453 (t!378493 s!2326)) e!3823998)))

(declare-fun b!6288685 () Bool)

(assert (=> b!6288685 (= e!3823998 (nullableZipper!1980 lt!2356453))))

(declare-fun b!6288686 () Bool)

(assert (=> b!6288686 (= e!3823998 (matchZipper!2222 (derivationStepZipper!2176 lt!2356453 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973485 c!1141025) b!6288685))

(assert (= (and d!1973485 (not c!1141025)) b!6288686))

(assert (=> d!1973485 m!7109104))

(declare-fun m!7109390 () Bool)

(assert (=> b!6288685 m!7109390))

(assert (=> b!6288686 m!7109108))

(assert (=> b!6288686 m!7109108))

(declare-fun m!7109392 () Bool)

(assert (=> b!6288686 m!7109392))

(assert (=> b!6288686 m!7109112))

(assert (=> b!6288686 m!7109392))

(assert (=> b!6288686 m!7109112))

(declare-fun m!7109394 () Bool)

(assert (=> b!6288686 m!7109394))

(assert (=> b!6288119 d!1973485))

(declare-fun d!1973487 () Bool)

(declare-fun c!1141026 () Bool)

(assert (=> d!1973487 (= c!1141026 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3823999 () Bool)

(assert (=> d!1973487 (= (matchZipper!2222 lt!2356443 (t!378493 s!2326)) e!3823999)))

(declare-fun b!6288687 () Bool)

(assert (=> b!6288687 (= e!3823999 (nullableZipper!1980 lt!2356443))))

(declare-fun b!6288688 () Bool)

(assert (=> b!6288688 (= e!3823999 (matchZipper!2222 (derivationStepZipper!2176 lt!2356443 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973487 c!1141026) b!6288687))

(assert (= (and d!1973487 (not c!1141026)) b!6288688))

(assert (=> d!1973487 m!7109104))

(declare-fun m!7109396 () Bool)

(assert (=> b!6288687 m!7109396))

(assert (=> b!6288688 m!7109108))

(assert (=> b!6288688 m!7109108))

(declare-fun m!7109398 () Bool)

(assert (=> b!6288688 m!7109398))

(assert (=> b!6288688 m!7109112))

(assert (=> b!6288688 m!7109398))

(assert (=> b!6288688 m!7109112))

(declare-fun m!7109400 () Bool)

(assert (=> b!6288688 m!7109400))

(assert (=> b!6288119 d!1973487))

(declare-fun d!1973489 () Bool)

(declare-fun e!3824020 () Bool)

(assert (=> d!1973489 (= (matchZipper!2222 (set.union lt!2356443 lt!2356445) (t!378493 s!2326)) e!3824020)))

(declare-fun res!2593516 () Bool)

(assert (=> d!1973489 (=> res!2593516 e!3824020)))

(assert (=> d!1973489 (= res!2593516 (matchZipper!2222 lt!2356443 (t!378493 s!2326)))))

(declare-fun lt!2356673 () Unit!158171)

(declare-fun choose!46717 ((Set Context!11188) (Set Context!11188) List!64931) Unit!158171)

(assert (=> d!1973489 (= lt!2356673 (choose!46717 lt!2356443 lt!2356445 (t!378493 s!2326)))))

(assert (=> d!1973489 (= (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356443 lt!2356445 (t!378493 s!2326)) lt!2356673)))

(declare-fun b!6288721 () Bool)

(assert (=> b!6288721 (= e!3824020 (matchZipper!2222 lt!2356445 (t!378493 s!2326)))))

(assert (= (and d!1973489 (not res!2593516)) b!6288721))

(declare-fun m!7109422 () Bool)

(assert (=> d!1973489 m!7109422))

(assert (=> d!1973489 m!7108728))

(declare-fun m!7109424 () Bool)

(assert (=> d!1973489 m!7109424))

(assert (=> b!6288721 m!7108732))

(assert (=> b!6288119 d!1973489))

(declare-fun d!1973493 () Bool)

(assert (=> d!1973493 (= (flatMap!1715 lt!2356412 lambda!345274) (choose!46710 lt!2356412 lambda!345274))))

(declare-fun bs!1571776 () Bool)

(assert (= bs!1571776 d!1973493))

(declare-fun m!7109426 () Bool)

(assert (=> bs!1571776 m!7109426))

(assert (=> b!6288124 d!1973493))

(declare-fun d!1973495 () Bool)

(assert (=> d!1973495 (= (flatMap!1715 lt!2356412 lambda!345274) (dynLambda!25644 lambda!345274 lt!2356456))))

(declare-fun lt!2356674 () Unit!158171)

(assert (=> d!1973495 (= lt!2356674 (choose!46711 lt!2356412 lt!2356456 lambda!345274))))

(assert (=> d!1973495 (= lt!2356412 (set.insert lt!2356456 (as set.empty (Set Context!11188))))))

(assert (=> d!1973495 (= (lemmaFlatMapOnSingletonSet!1241 lt!2356412 lt!2356456 lambda!345274) lt!2356674)))

(declare-fun b_lambda!239319 () Bool)

(assert (=> (not b_lambda!239319) (not d!1973495)))

(declare-fun bs!1571777 () Bool)

(assert (= bs!1571777 d!1973495))

(assert (=> bs!1571777 m!7108882))

(declare-fun m!7109428 () Bool)

(assert (=> bs!1571777 m!7109428))

(declare-fun m!7109430 () Bool)

(assert (=> bs!1571777 m!7109430))

(assert (=> bs!1571777 m!7108880))

(assert (=> b!6288124 d!1973495))

(declare-fun b!6288726 () Bool)

(declare-fun e!3824025 () (Set Context!11188))

(declare-fun e!3824023 () (Set Context!11188))

(assert (=> b!6288726 (= e!3824025 e!3824023)))

(declare-fun c!1141041 () Bool)

(assert (=> b!6288726 (= c!1141041 (is-Cons!64805 (exprs!6094 lt!2356456)))))

(declare-fun bm!532431 () Bool)

(declare-fun call!532436 () (Set Context!11188))

(assert (=> bm!532431 (= call!532436 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 lt!2356456)) (Context!11189 (t!378491 (exprs!6094 lt!2356456))) (h!71255 s!2326)))))

(declare-fun b!6288727 () Bool)

(declare-fun e!3824024 () Bool)

(assert (=> b!6288727 (= e!3824024 (nullable!6203 (h!71253 (exprs!6094 lt!2356456))))))

(declare-fun b!6288728 () Bool)

(assert (=> b!6288728 (= e!3824023 (as set.empty (Set Context!11188)))))

(declare-fun b!6288729 () Bool)

(assert (=> b!6288729 (= e!3824025 (set.union call!532436 (derivationStepZipperUp!1384 (Context!11189 (t!378491 (exprs!6094 lt!2356456))) (h!71255 s!2326))))))

(declare-fun b!6288730 () Bool)

(assert (=> b!6288730 (= e!3824023 call!532436)))

(declare-fun d!1973497 () Bool)

(declare-fun c!1141042 () Bool)

(assert (=> d!1973497 (= c!1141042 e!3824024)))

(declare-fun res!2593517 () Bool)

(assert (=> d!1973497 (=> (not res!2593517) (not e!3824024))))

(assert (=> d!1973497 (= res!2593517 (is-Cons!64805 (exprs!6094 lt!2356456)))))

(assert (=> d!1973497 (= (derivationStepZipperUp!1384 lt!2356456 (h!71255 s!2326)) e!3824025)))

(assert (= (and d!1973497 res!2593517) b!6288727))

(assert (= (and d!1973497 c!1141042) b!6288729))

(assert (= (and d!1973497 (not c!1141042)) b!6288726))

(assert (= (and b!6288726 c!1141041) b!6288730))

(assert (= (and b!6288726 (not c!1141041)) b!6288728))

(assert (= (or b!6288729 b!6288730) bm!532431))

(declare-fun m!7109432 () Bool)

(assert (=> bm!532431 m!7109432))

(declare-fun m!7109434 () Bool)

(assert (=> b!6288727 m!7109434))

(declare-fun m!7109436 () Bool)

(assert (=> b!6288729 m!7109436))

(assert (=> b!6288124 d!1973497))

(declare-fun bs!1571781 () Bool)

(declare-fun d!1973499 () Bool)

(assert (= bs!1571781 (and d!1973499 b!6288138)))

(declare-fun lambda!345368 () Int)

(assert (=> bs!1571781 (= lambda!345368 lambda!345274)))

(assert (=> d!1973499 true))

(assert (=> d!1973499 (= (derivationStepZipper!2176 lt!2356412 (h!71255 s!2326)) (flatMap!1715 lt!2356412 lambda!345368))))

(declare-fun bs!1571782 () Bool)

(assert (= bs!1571782 d!1973499))

(declare-fun m!7109444 () Bool)

(assert (=> bs!1571782 m!7109444))

(assert (=> b!6288124 d!1973499))

(declare-fun b!6288735 () Bool)

(declare-fun e!3824029 () (Set Context!11188))

(declare-fun e!3824027 () (Set Context!11188))

(assert (=> b!6288735 (= e!3824029 e!3824027)))

(declare-fun c!1141048 () Bool)

(assert (=> b!6288735 (= c!1141048 (is-Cons!64805 (exprs!6094 lt!2356417)))))

(declare-fun bm!532432 () Bool)

(declare-fun call!532437 () (Set Context!11188))

(assert (=> bm!532432 (= call!532437 (derivationStepZipperDown!1458 (h!71253 (exprs!6094 lt!2356417)) (Context!11189 (t!378491 (exprs!6094 lt!2356417))) (h!71255 s!2326)))))

(declare-fun b!6288736 () Bool)

(declare-fun e!3824028 () Bool)

(assert (=> b!6288736 (= e!3824028 (nullable!6203 (h!71253 (exprs!6094 lt!2356417))))))

(declare-fun b!6288737 () Bool)

(assert (=> b!6288737 (= e!3824027 (as set.empty (Set Context!11188)))))

(declare-fun b!6288738 () Bool)

(assert (=> b!6288738 (= e!3824029 (set.union call!532437 (derivationStepZipperUp!1384 (Context!11189 (t!378491 (exprs!6094 lt!2356417))) (h!71255 s!2326))))))

(declare-fun b!6288739 () Bool)

(assert (=> b!6288739 (= e!3824027 call!532437)))

(declare-fun d!1973505 () Bool)

(declare-fun c!1141049 () Bool)

(assert (=> d!1973505 (= c!1141049 e!3824028)))

(declare-fun res!2593518 () Bool)

(assert (=> d!1973505 (=> (not res!2593518) (not e!3824028))))

(assert (=> d!1973505 (= res!2593518 (is-Cons!64805 (exprs!6094 lt!2356417)))))

(assert (=> d!1973505 (= (derivationStepZipperUp!1384 lt!2356417 (h!71255 s!2326)) e!3824029)))

(assert (= (and d!1973505 res!2593518) b!6288736))

(assert (= (and d!1973505 c!1141049) b!6288738))

(assert (= (and d!1973505 (not c!1141049)) b!6288735))

(assert (= (and b!6288735 c!1141048) b!6288739))

(assert (= (and b!6288735 (not c!1141048)) b!6288737))

(assert (= (or b!6288738 b!6288739) bm!532432))

(declare-fun m!7109446 () Bool)

(assert (=> bm!532432 m!7109446))

(declare-fun m!7109448 () Bool)

(assert (=> b!6288736 m!7109448))

(declare-fun m!7109450 () Bool)

(assert (=> b!6288738 m!7109450))

(assert (=> b!6288124 d!1973505))

(declare-fun b!6288742 () Bool)

(declare-fun res!2593522 () Bool)

(declare-fun e!3824031 () Bool)

(assert (=> b!6288742 (=> res!2593522 e!3824031)))

(assert (=> b!6288742 (= res!2593522 (not (is-ElementMatch!16210 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)))))))

(declare-fun e!3824032 () Bool)

(assert (=> b!6288742 (= e!3824032 e!3824031)))

(declare-fun bm!532433 () Bool)

(declare-fun call!532438 () Bool)

(assert (=> bm!532433 (= call!532438 (isEmpty!36863 s!2326))))

(declare-fun b!6288743 () Bool)

(declare-fun res!2593519 () Bool)

(declare-fun e!3824036 () Bool)

(assert (=> b!6288743 (=> (not res!2593519) (not e!3824036))))

(assert (=> b!6288743 (= res!2593519 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288744 () Bool)

(declare-fun res!2593520 () Bool)

(assert (=> b!6288744 (=> (not res!2593520) (not e!3824036))))

(assert (=> b!6288744 (= res!2593520 (not call!532438))))

(declare-fun d!1973507 () Bool)

(declare-fun e!3824030 () Bool)

(assert (=> d!1973507 e!3824030))

(declare-fun c!1141051 () Bool)

(assert (=> d!1973507 (= c!1141051 (is-EmptyExpr!16210 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292))))))

(declare-fun lt!2356678 () Bool)

(declare-fun e!3824035 () Bool)

(assert (=> d!1973507 (= lt!2356678 e!3824035)))

(declare-fun c!1141052 () Bool)

(assert (=> d!1973507 (= c!1141052 (isEmpty!36863 s!2326))))

(assert (=> d!1973507 (validRegex!7946 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)))))

(assert (=> d!1973507 (= (matchR!8393 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)) s!2326) lt!2356678)))

(declare-fun b!6288745 () Bool)

(assert (=> b!6288745 (= e!3824030 e!3824032)))

(declare-fun c!1141050 () Bool)

(assert (=> b!6288745 (= c!1141050 (is-EmptyLang!16210 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292))))))

(declare-fun b!6288746 () Bool)

(assert (=> b!6288746 (= e!3824035 (matchR!8393 (derivativeStep!4919 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)) (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288747 () Bool)

(declare-fun res!2593526 () Bool)

(assert (=> b!6288747 (=> res!2593526 e!3824031)))

(assert (=> b!6288747 (= res!2593526 e!3824036)))

(declare-fun res!2593521 () Bool)

(assert (=> b!6288747 (=> (not res!2593521) (not e!3824036))))

(assert (=> b!6288747 (= res!2593521 lt!2356678)))

(declare-fun b!6288748 () Bool)

(declare-fun res!2593523 () Bool)

(declare-fun e!3824034 () Bool)

(assert (=> b!6288748 (=> res!2593523 e!3824034)))

(assert (=> b!6288748 (= res!2593523 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288749 () Bool)

(assert (=> b!6288749 (= e!3824032 (not lt!2356678))))

(declare-fun b!6288750 () Bool)

(assert (=> b!6288750 (= e!3824030 (= lt!2356678 call!532438))))

(declare-fun b!6288751 () Bool)

(declare-fun e!3824033 () Bool)

(assert (=> b!6288751 (= e!3824033 e!3824034)))

(declare-fun res!2593525 () Bool)

(assert (=> b!6288751 (=> res!2593525 e!3824034)))

(assert (=> b!6288751 (= res!2593525 call!532438)))

(declare-fun b!6288752 () Bool)

(assert (=> b!6288752 (= e!3824035 (nullable!6203 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292))))))

(declare-fun b!6288753 () Bool)

(assert (=> b!6288753 (= e!3824034 (not (= (head!12921 s!2326) (c!1140891 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292))))))))

(declare-fun b!6288754 () Bool)

(assert (=> b!6288754 (= e!3824031 e!3824033)))

(declare-fun res!2593524 () Bool)

(assert (=> b!6288754 (=> (not res!2593524) (not e!3824033))))

(assert (=> b!6288754 (= res!2593524 (not lt!2356678))))

(declare-fun b!6288755 () Bool)

(assert (=> b!6288755 (= e!3824036 (= (head!12921 s!2326) (c!1140891 (Concat!25055 (regOne!32932 r!7292) (regTwo!32932 r!7292)))))))

(assert (= (and d!1973507 c!1141052) b!6288752))

(assert (= (and d!1973507 (not c!1141052)) b!6288746))

(assert (= (and d!1973507 c!1141051) b!6288750))

(assert (= (and d!1973507 (not c!1141051)) b!6288745))

(assert (= (and b!6288745 c!1141050) b!6288749))

(assert (= (and b!6288745 (not c!1141050)) b!6288742))

(assert (= (and b!6288742 (not res!2593522)) b!6288747))

(assert (= (and b!6288747 res!2593521) b!6288744))

(assert (= (and b!6288744 res!2593520) b!6288743))

(assert (= (and b!6288743 res!2593519) b!6288755))

(assert (= (and b!6288747 (not res!2593526)) b!6288754))

(assert (= (and b!6288754 res!2593524) b!6288751))

(assert (= (and b!6288751 (not res!2593525)) b!6288748))

(assert (= (and b!6288748 (not res!2593523)) b!6288753))

(assert (= (or b!6288750 b!6288744 b!6288751) bm!532433))

(assert (=> b!6288755 m!7109182))

(assert (=> b!6288743 m!7109184))

(assert (=> b!6288743 m!7109184))

(assert (=> b!6288743 m!7109186))

(declare-fun m!7109454 () Bool)

(assert (=> b!6288752 m!7109454))

(assert (=> b!6288748 m!7109184))

(assert (=> b!6288748 m!7109184))

(assert (=> b!6288748 m!7109186))

(assert (=> bm!532433 m!7109190))

(assert (=> d!1973507 m!7109190))

(declare-fun m!7109456 () Bool)

(assert (=> d!1973507 m!7109456))

(assert (=> b!6288746 m!7109182))

(assert (=> b!6288746 m!7109182))

(declare-fun m!7109458 () Bool)

(assert (=> b!6288746 m!7109458))

(assert (=> b!6288746 m!7109184))

(assert (=> b!6288746 m!7109458))

(assert (=> b!6288746 m!7109184))

(declare-fun m!7109460 () Bool)

(assert (=> b!6288746 m!7109460))

(assert (=> b!6288753 m!7109182))

(assert (=> b!6288123 d!1973507))

(declare-fun d!1973511 () Bool)

(declare-fun c!1141053 () Bool)

(assert (=> d!1973511 (= c!1141053 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824037 () Bool)

(assert (=> d!1973511 (= (matchZipper!2222 (derivationStepZipper!2176 lt!2356437 (h!71255 s!2326)) (t!378493 s!2326)) e!3824037)))

(declare-fun b!6288756 () Bool)

(assert (=> b!6288756 (= e!3824037 (nullableZipper!1980 (derivationStepZipper!2176 lt!2356437 (h!71255 s!2326))))))

(declare-fun b!6288757 () Bool)

(assert (=> b!6288757 (= e!3824037 (matchZipper!2222 (derivationStepZipper!2176 (derivationStepZipper!2176 lt!2356437 (h!71255 s!2326)) (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973511 c!1141053) b!6288756))

(assert (= (and d!1973511 (not c!1141053)) b!6288757))

(assert (=> d!1973511 m!7109104))

(assert (=> b!6288756 m!7108850))

(declare-fun m!7109462 () Bool)

(assert (=> b!6288756 m!7109462))

(assert (=> b!6288757 m!7109108))

(assert (=> b!6288757 m!7108850))

(assert (=> b!6288757 m!7109108))

(declare-fun m!7109464 () Bool)

(assert (=> b!6288757 m!7109464))

(assert (=> b!6288757 m!7109112))

(assert (=> b!6288757 m!7109464))

(assert (=> b!6288757 m!7109112))

(declare-fun m!7109466 () Bool)

(assert (=> b!6288757 m!7109466))

(assert (=> b!6288102 d!1973511))

(declare-fun bs!1571785 () Bool)

(declare-fun d!1973513 () Bool)

(assert (= bs!1571785 (and d!1973513 b!6288138)))

(declare-fun lambda!345372 () Int)

(assert (=> bs!1571785 (= lambda!345372 lambda!345274)))

(declare-fun bs!1571786 () Bool)

(assert (= bs!1571786 (and d!1973513 d!1973499)))

(assert (=> bs!1571786 (= lambda!345372 lambda!345368)))

(assert (=> d!1973513 true))

(assert (=> d!1973513 (= (derivationStepZipper!2176 lt!2356437 (h!71255 s!2326)) (flatMap!1715 lt!2356437 lambda!345372))))

(declare-fun bs!1571787 () Bool)

(assert (= bs!1571787 d!1973513))

(declare-fun m!7109468 () Bool)

(assert (=> bs!1571787 m!7109468))

(assert (=> b!6288102 d!1973513))

(declare-fun d!1973515 () Bool)

(assert (=> d!1973515 (= (nullable!6203 (regOne!32932 (regOne!32932 r!7292))) (nullableFct!2154 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun bs!1571788 () Bool)

(assert (= bs!1571788 d!1973515))

(declare-fun m!7109470 () Bool)

(assert (=> bs!1571788 m!7109470))

(assert (=> b!6288122 d!1973515))

(declare-fun d!1973517 () Bool)

(declare-fun lt!2356681 () Int)

(assert (=> d!1973517 (>= lt!2356681 0)))

(declare-fun e!3824049 () Int)

(assert (=> d!1973517 (= lt!2356681 e!3824049)))

(declare-fun c!1141062 () Bool)

(assert (=> d!1973517 (= c!1141062 (is-Cons!64806 lt!2356413))))

(assert (=> d!1973517 (= (zipperDepthTotal!363 lt!2356413) lt!2356681)))

(declare-fun b!6288777 () Bool)

(assert (=> b!6288777 (= e!3824049 (+ (contextDepthTotal!333 (h!71254 lt!2356413)) (zipperDepthTotal!363 (t!378492 lt!2356413))))))

(declare-fun b!6288778 () Bool)

(assert (=> b!6288778 (= e!3824049 0)))

(assert (= (and d!1973517 c!1141062) b!6288777))

(assert (= (and d!1973517 (not c!1141062)) b!6288778))

(declare-fun m!7109478 () Bool)

(assert (=> b!6288777 m!7109478))

(declare-fun m!7109480 () Bool)

(assert (=> b!6288777 m!7109480))

(assert (=> b!6288105 d!1973517))

(declare-fun d!1973521 () Bool)

(declare-fun lt!2356682 () Int)

(assert (=> d!1973521 (>= lt!2356682 0)))

(declare-fun e!3824050 () Int)

(assert (=> d!1973521 (= lt!2356682 e!3824050)))

(declare-fun c!1141063 () Bool)

(assert (=> d!1973521 (= c!1141063 (is-Cons!64806 zl!343))))

(assert (=> d!1973521 (= (zipperDepthTotal!363 zl!343) lt!2356682)))

(declare-fun b!6288779 () Bool)

(assert (=> b!6288779 (= e!3824050 (+ (contextDepthTotal!333 (h!71254 zl!343)) (zipperDepthTotal!363 (t!378492 zl!343))))))

(declare-fun b!6288780 () Bool)

(assert (=> b!6288780 (= e!3824050 0)))

(assert (= (and d!1973521 c!1141063) b!6288779))

(assert (= (and d!1973521 (not c!1141063)) b!6288780))

(assert (=> b!6288779 m!7108808))

(declare-fun m!7109482 () Bool)

(assert (=> b!6288779 m!7109482))

(assert (=> b!6288105 d!1973521))

(declare-fun d!1973523 () Bool)

(declare-fun c!1141064 () Bool)

(assert (=> d!1973523 (= c!1141064 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824051 () Bool)

(assert (=> d!1973523 (= (matchZipper!2222 lt!2356448 (t!378493 s!2326)) e!3824051)))

(declare-fun b!6288781 () Bool)

(assert (=> b!6288781 (= e!3824051 (nullableZipper!1980 lt!2356448))))

(declare-fun b!6288782 () Bool)

(assert (=> b!6288782 (= e!3824051 (matchZipper!2222 (derivationStepZipper!2176 lt!2356448 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973523 c!1141064) b!6288781))

(assert (= (and d!1973523 (not c!1141064)) b!6288782))

(assert (=> d!1973523 m!7109104))

(declare-fun m!7109484 () Bool)

(assert (=> b!6288781 m!7109484))

(assert (=> b!6288782 m!7109108))

(assert (=> b!6288782 m!7109108))

(declare-fun m!7109486 () Bool)

(assert (=> b!6288782 m!7109486))

(assert (=> b!6288782 m!7109112))

(assert (=> b!6288782 m!7109486))

(assert (=> b!6288782 m!7109112))

(declare-fun m!7109488 () Bool)

(assert (=> b!6288782 m!7109488))

(assert (=> b!6288108 d!1973523))

(declare-fun d!1973525 () Bool)

(assert (=> d!1973525 (= (flatMap!1715 lt!2356437 lambda!345274) (choose!46710 lt!2356437 lambda!345274))))

(declare-fun bs!1571789 () Bool)

(assert (= bs!1571789 d!1973525))

(declare-fun m!7109490 () Bool)

(assert (=> bs!1571789 m!7109490))

(assert (=> b!6288108 d!1973525))

(declare-fun d!1973527 () Bool)

(declare-fun e!3824052 () Bool)

(assert (=> d!1973527 (= (matchZipper!2222 (set.union lt!2356443 lt!2356409) (t!378493 s!2326)) e!3824052)))

(declare-fun res!2593530 () Bool)

(assert (=> d!1973527 (=> res!2593530 e!3824052)))

(assert (=> d!1973527 (= res!2593530 (matchZipper!2222 lt!2356443 (t!378493 s!2326)))))

(declare-fun lt!2356685 () Unit!158171)

(assert (=> d!1973527 (= lt!2356685 (choose!46717 lt!2356443 lt!2356409 (t!378493 s!2326)))))

(assert (=> d!1973527 (= (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356443 lt!2356409 (t!378493 s!2326)) lt!2356685)))

(declare-fun b!6288783 () Bool)

(assert (=> b!6288783 (= e!3824052 (matchZipper!2222 lt!2356409 (t!378493 s!2326)))))

(assert (= (and d!1973527 (not res!2593530)) b!6288783))

(declare-fun m!7109492 () Bool)

(assert (=> d!1973527 m!7109492))

(assert (=> d!1973527 m!7108728))

(declare-fun m!7109494 () Bool)

(assert (=> d!1973527 m!7109494))

(assert (=> b!6288783 m!7108832))

(assert (=> b!6288108 d!1973527))

(assert (=> b!6288108 d!1973505))

(declare-fun d!1973529 () Bool)

(assert (=> d!1973529 (= (flatMap!1715 lt!2356437 lambda!345274) (dynLambda!25644 lambda!345274 lt!2356417))))

(declare-fun lt!2356687 () Unit!158171)

(assert (=> d!1973529 (= lt!2356687 (choose!46711 lt!2356437 lt!2356417 lambda!345274))))

(assert (=> d!1973529 (= lt!2356437 (set.insert lt!2356417 (as set.empty (Set Context!11188))))))

(assert (=> d!1973529 (= (lemmaFlatMapOnSingletonSet!1241 lt!2356437 lt!2356417 lambda!345274) lt!2356687)))

(declare-fun b_lambda!239323 () Bool)

(assert (=> (not b_lambda!239323) (not d!1973529)))

(declare-fun bs!1571791 () Bool)

(assert (= bs!1571791 d!1973529))

(assert (=> bs!1571791 m!7108870))

(declare-fun m!7109500 () Bool)

(assert (=> bs!1571791 m!7109500))

(declare-fun m!7109502 () Bool)

(assert (=> bs!1571791 m!7109502))

(assert (=> bs!1571791 m!7108874))

(assert (=> b!6288108 d!1973529))

(declare-fun d!1973533 () Bool)

(declare-fun c!1141067 () Bool)

(assert (=> d!1973533 (= c!1141067 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824056 () Bool)

(assert (=> d!1973533 (= (matchZipper!2222 lt!2356422 (t!378493 s!2326)) e!3824056)))

(declare-fun b!6288789 () Bool)

(assert (=> b!6288789 (= e!3824056 (nullableZipper!1980 lt!2356422))))

(declare-fun b!6288790 () Bool)

(assert (=> b!6288790 (= e!3824056 (matchZipper!2222 (derivationStepZipper!2176 lt!2356422 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973533 c!1141067) b!6288789))

(assert (= (and d!1973533 (not c!1141067)) b!6288790))

(assert (=> d!1973533 m!7109104))

(declare-fun m!7109510 () Bool)

(assert (=> b!6288789 m!7109510))

(assert (=> b!6288790 m!7109108))

(assert (=> b!6288790 m!7109108))

(declare-fun m!7109512 () Bool)

(assert (=> b!6288790 m!7109512))

(assert (=> b!6288790 m!7109112))

(assert (=> b!6288790 m!7109512))

(assert (=> b!6288790 m!7109112))

(declare-fun m!7109514 () Bool)

(assert (=> b!6288790 m!7109514))

(assert (=> b!6288108 d!1973533))

(declare-fun b!6288791 () Bool)

(declare-fun res!2593535 () Bool)

(declare-fun e!3824058 () Bool)

(assert (=> b!6288791 (=> res!2593535 e!3824058)))

(assert (=> b!6288791 (= res!2593535 (not (is-ElementMatch!16210 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)))))))

(declare-fun e!3824059 () Bool)

(assert (=> b!6288791 (= e!3824059 e!3824058)))

(declare-fun bm!532438 () Bool)

(declare-fun call!532443 () Bool)

(assert (=> bm!532438 (= call!532443 (isEmpty!36863 s!2326))))

(declare-fun b!6288792 () Bool)

(declare-fun res!2593532 () Bool)

(declare-fun e!3824063 () Bool)

(assert (=> b!6288792 (=> (not res!2593532) (not e!3824063))))

(assert (=> b!6288792 (= res!2593532 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288793 () Bool)

(declare-fun res!2593533 () Bool)

(assert (=> b!6288793 (=> (not res!2593533) (not e!3824063))))

(assert (=> b!6288793 (= res!2593533 (not call!532443))))

(declare-fun d!1973537 () Bool)

(declare-fun e!3824057 () Bool)

(assert (=> d!1973537 e!3824057))

(declare-fun c!1141069 () Bool)

(assert (=> d!1973537 (= c!1141069 (is-EmptyExpr!16210 (Concat!25055 lt!2356425 (regTwo!32932 r!7292))))))

(declare-fun lt!2356688 () Bool)

(declare-fun e!3824062 () Bool)

(assert (=> d!1973537 (= lt!2356688 e!3824062)))

(declare-fun c!1141070 () Bool)

(assert (=> d!1973537 (= c!1141070 (isEmpty!36863 s!2326))))

(assert (=> d!1973537 (validRegex!7946 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)))))

(assert (=> d!1973537 (= (matchR!8393 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)) s!2326) lt!2356688)))

(declare-fun b!6288794 () Bool)

(assert (=> b!6288794 (= e!3824057 e!3824059)))

(declare-fun c!1141068 () Bool)

(assert (=> b!6288794 (= c!1141068 (is-EmptyLang!16210 (Concat!25055 lt!2356425 (regTwo!32932 r!7292))))))

(declare-fun b!6288795 () Bool)

(assert (=> b!6288795 (= e!3824062 (matchR!8393 (derivativeStep!4919 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)) (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288796 () Bool)

(declare-fun res!2593539 () Bool)

(assert (=> b!6288796 (=> res!2593539 e!3824058)))

(assert (=> b!6288796 (= res!2593539 e!3824063)))

(declare-fun res!2593534 () Bool)

(assert (=> b!6288796 (=> (not res!2593534) (not e!3824063))))

(assert (=> b!6288796 (= res!2593534 lt!2356688)))

(declare-fun b!6288797 () Bool)

(declare-fun res!2593536 () Bool)

(declare-fun e!3824061 () Bool)

(assert (=> b!6288797 (=> res!2593536 e!3824061)))

(assert (=> b!6288797 (= res!2593536 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288798 () Bool)

(assert (=> b!6288798 (= e!3824059 (not lt!2356688))))

(declare-fun b!6288799 () Bool)

(assert (=> b!6288799 (= e!3824057 (= lt!2356688 call!532443))))

(declare-fun b!6288800 () Bool)

(declare-fun e!3824060 () Bool)

(assert (=> b!6288800 (= e!3824060 e!3824061)))

(declare-fun res!2593538 () Bool)

(assert (=> b!6288800 (=> res!2593538 e!3824061)))

(assert (=> b!6288800 (= res!2593538 call!532443)))

(declare-fun b!6288801 () Bool)

(assert (=> b!6288801 (= e!3824062 (nullable!6203 (Concat!25055 lt!2356425 (regTwo!32932 r!7292))))))

(declare-fun b!6288802 () Bool)

(assert (=> b!6288802 (= e!3824061 (not (= (head!12921 s!2326) (c!1140891 (Concat!25055 lt!2356425 (regTwo!32932 r!7292))))))))

(declare-fun b!6288803 () Bool)

(assert (=> b!6288803 (= e!3824058 e!3824060)))

(declare-fun res!2593537 () Bool)

(assert (=> b!6288803 (=> (not res!2593537) (not e!3824060))))

(assert (=> b!6288803 (= res!2593537 (not lt!2356688))))

(declare-fun b!6288804 () Bool)

(assert (=> b!6288804 (= e!3824063 (= (head!12921 s!2326) (c!1140891 (Concat!25055 lt!2356425 (regTwo!32932 r!7292)))))))

(assert (= (and d!1973537 c!1141070) b!6288801))

(assert (= (and d!1973537 (not c!1141070)) b!6288795))

(assert (= (and d!1973537 c!1141069) b!6288799))

(assert (= (and d!1973537 (not c!1141069)) b!6288794))

(assert (= (and b!6288794 c!1141068) b!6288798))

(assert (= (and b!6288794 (not c!1141068)) b!6288791))

(assert (= (and b!6288791 (not res!2593535)) b!6288796))

(assert (= (and b!6288796 res!2593534) b!6288793))

(assert (= (and b!6288793 res!2593533) b!6288792))

(assert (= (and b!6288792 res!2593532) b!6288804))

(assert (= (and b!6288796 (not res!2593539)) b!6288803))

(assert (= (and b!6288803 res!2593537) b!6288800))

(assert (= (and b!6288800 (not res!2593538)) b!6288797))

(assert (= (and b!6288797 (not res!2593536)) b!6288802))

(assert (= (or b!6288799 b!6288793 b!6288800) bm!532438))

(assert (=> b!6288804 m!7109182))

(assert (=> b!6288792 m!7109184))

(assert (=> b!6288792 m!7109184))

(assert (=> b!6288792 m!7109186))

(declare-fun m!7109516 () Bool)

(assert (=> b!6288801 m!7109516))

(assert (=> b!6288797 m!7109184))

(assert (=> b!6288797 m!7109184))

(assert (=> b!6288797 m!7109186))

(assert (=> bm!532438 m!7109190))

(assert (=> d!1973537 m!7109190))

(declare-fun m!7109518 () Bool)

(assert (=> d!1973537 m!7109518))

(assert (=> b!6288795 m!7109182))

(assert (=> b!6288795 m!7109182))

(declare-fun m!7109520 () Bool)

(assert (=> b!6288795 m!7109520))

(assert (=> b!6288795 m!7109184))

(assert (=> b!6288795 m!7109520))

(assert (=> b!6288795 m!7109184))

(declare-fun m!7109522 () Bool)

(assert (=> b!6288795 m!7109522))

(assert (=> b!6288802 m!7109182))

(assert (=> b!6288129 d!1973537))

(declare-fun bs!1571792 () Bool)

(declare-fun d!1973539 () Bool)

(assert (= bs!1571792 (and d!1973539 d!1973423)))

(declare-fun lambda!345373 () Int)

(assert (=> bs!1571792 (= lambda!345373 lambda!345330)))

(declare-fun bs!1571793 () Bool)

(assert (= bs!1571793 (and d!1973539 d!1973481)))

(assert (=> bs!1571793 (= lambda!345373 lambda!345359)))

(declare-fun bs!1571794 () Bool)

(assert (= bs!1571794 (and d!1973539 d!1973395)))

(assert (=> bs!1571794 (= lambda!345373 lambda!345312)))

(declare-fun bs!1571796 () Bool)

(assert (= bs!1571796 (and d!1973539 d!1973431)))

(assert (=> bs!1571796 (= lambda!345373 lambda!345336)))

(declare-fun bs!1571797 () Bool)

(assert (= bs!1571797 (and d!1973539 d!1973449)))

(assert (=> bs!1571797 (= lambda!345373 lambda!345350)))

(declare-fun bs!1571798 () Bool)

(assert (= bs!1571798 (and d!1973539 d!1973451)))

(assert (=> bs!1571798 (= lambda!345373 lambda!345351)))

(declare-fun bs!1571799 () Bool)

(assert (= bs!1571799 (and d!1973539 d!1973397)))

(assert (=> bs!1571799 (= lambda!345373 lambda!345315)))

(declare-fun b!6288805 () Bool)

(declare-fun e!3824069 () Bool)

(declare-fun e!3824067 () Bool)

(assert (=> b!6288805 (= e!3824069 e!3824067)))

(declare-fun c!1141074 () Bool)

(assert (=> b!6288805 (= c!1141074 (isEmpty!36860 (exprs!6094 (h!71254 zl!343))))))

(declare-fun b!6288807 () Bool)

(declare-fun e!3824066 () Bool)

(assert (=> b!6288807 (= e!3824067 e!3824066)))

(declare-fun c!1141073 () Bool)

(assert (=> b!6288807 (= c!1141073 (isEmpty!36860 (tail!12005 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288808 () Bool)

(declare-fun e!3824064 () Regex!16210)

(assert (=> b!6288808 (= e!3824064 (h!71253 (exprs!6094 (h!71254 zl!343))))))

(declare-fun b!6288809 () Bool)

(declare-fun lt!2356689 () Regex!16210)

(assert (=> b!6288809 (= e!3824066 (isConcat!1139 lt!2356689))))

(declare-fun b!6288810 () Bool)

(assert (=> b!6288810 (= e!3824066 (= lt!2356689 (head!12920 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288806 () Bool)

(declare-fun e!3824065 () Regex!16210)

(assert (=> b!6288806 (= e!3824064 e!3824065)))

(declare-fun c!1141071 () Bool)

(assert (=> b!6288806 (= c!1141071 (is-Cons!64805 (exprs!6094 (h!71254 zl!343))))))

(assert (=> d!1973539 e!3824069))

(declare-fun res!2593541 () Bool)

(assert (=> d!1973539 (=> (not res!2593541) (not e!3824069))))

(assert (=> d!1973539 (= res!2593541 (validRegex!7946 lt!2356689))))

(assert (=> d!1973539 (= lt!2356689 e!3824064)))

(declare-fun c!1141072 () Bool)

(declare-fun e!3824068 () Bool)

(assert (=> d!1973539 (= c!1141072 e!3824068)))

(declare-fun res!2593540 () Bool)

(assert (=> d!1973539 (=> (not res!2593540) (not e!3824068))))

(assert (=> d!1973539 (= res!2593540 (is-Cons!64805 (exprs!6094 (h!71254 zl!343))))))

(assert (=> d!1973539 (forall!15356 (exprs!6094 (h!71254 zl!343)) lambda!345373)))

(assert (=> d!1973539 (= (generalisedConcat!1807 (exprs!6094 (h!71254 zl!343))) lt!2356689)))

(declare-fun b!6288811 () Bool)

(assert (=> b!6288811 (= e!3824065 EmptyExpr!16210)))

(declare-fun b!6288812 () Bool)

(assert (=> b!6288812 (= e!3824068 (isEmpty!36860 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(declare-fun b!6288813 () Bool)

(assert (=> b!6288813 (= e!3824065 (Concat!25055 (h!71253 (exprs!6094 (h!71254 zl!343))) (generalisedConcat!1807 (t!378491 (exprs!6094 (h!71254 zl!343))))))))

(declare-fun b!6288814 () Bool)

(assert (=> b!6288814 (= e!3824067 (isEmptyExpr!1616 lt!2356689))))

(assert (= (and d!1973539 res!2593540) b!6288812))

(assert (= (and d!1973539 c!1141072) b!6288808))

(assert (= (and d!1973539 (not c!1141072)) b!6288806))

(assert (= (and b!6288806 c!1141071) b!6288813))

(assert (= (and b!6288806 (not c!1141071)) b!6288811))

(assert (= (and d!1973539 res!2593541) b!6288805))

(assert (= (and b!6288805 c!1141074) b!6288814))

(assert (= (and b!6288805 (not c!1141074)) b!6288807))

(assert (= (and b!6288807 c!1141073) b!6288810))

(assert (= (and b!6288807 (not c!1141073)) b!6288809))

(assert (=> b!6288812 m!7108810))

(declare-fun m!7109526 () Bool)

(assert (=> b!6288805 m!7109526))

(assert (=> b!6288813 m!7108792))

(declare-fun m!7109528 () Bool)

(assert (=> b!6288814 m!7109528))

(declare-fun m!7109530 () Bool)

(assert (=> d!1973539 m!7109530))

(declare-fun m!7109532 () Bool)

(assert (=> d!1973539 m!7109532))

(declare-fun m!7109534 () Bool)

(assert (=> b!6288809 m!7109534))

(declare-fun m!7109536 () Bool)

(assert (=> b!6288807 m!7109536))

(assert (=> b!6288807 m!7109536))

(declare-fun m!7109538 () Bool)

(assert (=> b!6288807 m!7109538))

(declare-fun m!7109540 () Bool)

(assert (=> b!6288810 m!7109540))

(assert (=> b!6288107 d!1973539))

(declare-fun d!1973543 () Bool)

(declare-fun e!3824075 () Bool)

(assert (=> d!1973543 e!3824075))

(declare-fun res!2593544 () Bool)

(assert (=> d!1973543 (=> (not res!2593544) (not e!3824075))))

(declare-fun lt!2356695 () List!64930)

(declare-fun noDuplicate!2044 (List!64930) Bool)

(assert (=> d!1973543 (= res!2593544 (noDuplicate!2044 lt!2356695))))

(declare-fun choose!46720 ((Set Context!11188)) List!64930)

(assert (=> d!1973543 (= lt!2356695 (choose!46720 z!1189))))

(assert (=> d!1973543 (= (toList!9994 z!1189) lt!2356695)))

(declare-fun b!6288823 () Bool)

(declare-fun content!12187 (List!64930) (Set Context!11188))

(assert (=> b!6288823 (= e!3824075 (= (content!12187 lt!2356695) z!1189))))

(assert (= (and d!1973543 res!2593544) b!6288823))

(declare-fun m!7109554 () Bool)

(assert (=> d!1973543 m!7109554))

(declare-fun m!7109556 () Bool)

(assert (=> d!1973543 m!7109556))

(declare-fun m!7109558 () Bool)

(assert (=> b!6288823 m!7109558))

(assert (=> b!6288128 d!1973543))

(declare-fun b!6288824 () Bool)

(declare-fun res!2593548 () Bool)

(declare-fun e!3824081 () Bool)

(assert (=> b!6288824 (=> (not res!2593548) (not e!3824081))))

(declare-fun call!532445 () Bool)

(assert (=> b!6288824 (= res!2593548 call!532445)))

(declare-fun e!3824078 () Bool)

(assert (=> b!6288824 (= e!3824078 e!3824081)))

(declare-fun b!6288825 () Bool)

(declare-fun e!3824079 () Bool)

(declare-fun e!3824080 () Bool)

(assert (=> b!6288825 (= e!3824079 e!3824080)))

(declare-fun res!2593545 () Bool)

(assert (=> b!6288825 (=> (not res!2593545) (not e!3824080))))

(assert (=> b!6288825 (= res!2593545 call!532445)))

(declare-fun b!6288827 () Bool)

(declare-fun e!3824082 () Bool)

(declare-fun call!532444 () Bool)

(assert (=> b!6288827 (= e!3824082 call!532444)))

(declare-fun c!1141078 () Bool)

(declare-fun bm!532439 () Bool)

(declare-fun c!1141079 () Bool)

(assert (=> bm!532439 (= call!532444 (validRegex!7946 (ite c!1141079 (reg!16539 lt!2356423) (ite c!1141078 (regTwo!32933 lt!2356423) (regTwo!32932 lt!2356423)))))))

(declare-fun b!6288828 () Bool)

(declare-fun e!3824077 () Bool)

(declare-fun e!3824076 () Bool)

(assert (=> b!6288828 (= e!3824077 e!3824076)))

(assert (=> b!6288828 (= c!1141079 (is-Star!16210 lt!2356423))))

(declare-fun bm!532440 () Bool)

(assert (=> bm!532440 (= call!532445 (validRegex!7946 (ite c!1141078 (regOne!32933 lt!2356423) (regOne!32932 lt!2356423))))))

(declare-fun b!6288829 () Bool)

(declare-fun res!2593549 () Bool)

(assert (=> b!6288829 (=> res!2593549 e!3824079)))

(assert (=> b!6288829 (= res!2593549 (not (is-Concat!25055 lt!2356423)))))

(assert (=> b!6288829 (= e!3824078 e!3824079)))

(declare-fun d!1973547 () Bool)

(declare-fun res!2593546 () Bool)

(assert (=> d!1973547 (=> res!2593546 e!3824077)))

(assert (=> d!1973547 (= res!2593546 (is-ElementMatch!16210 lt!2356423))))

(assert (=> d!1973547 (= (validRegex!7946 lt!2356423) e!3824077)))

(declare-fun b!6288826 () Bool)

(declare-fun call!532446 () Bool)

(assert (=> b!6288826 (= e!3824080 call!532446)))

(declare-fun b!6288830 () Bool)

(assert (=> b!6288830 (= e!3824076 e!3824078)))

(assert (=> b!6288830 (= c!1141078 (is-Union!16210 lt!2356423))))

(declare-fun b!6288831 () Bool)

(assert (=> b!6288831 (= e!3824081 call!532446)))

(declare-fun b!6288832 () Bool)

(assert (=> b!6288832 (= e!3824076 e!3824082)))

(declare-fun res!2593547 () Bool)

(assert (=> b!6288832 (= res!2593547 (not (nullable!6203 (reg!16539 lt!2356423))))))

(assert (=> b!6288832 (=> (not res!2593547) (not e!3824082))))

(declare-fun bm!532441 () Bool)

(assert (=> bm!532441 (= call!532446 call!532444)))

(assert (= (and d!1973547 (not res!2593546)) b!6288828))

(assert (= (and b!6288828 c!1141079) b!6288832))

(assert (= (and b!6288828 (not c!1141079)) b!6288830))

(assert (= (and b!6288832 res!2593547) b!6288827))

(assert (= (and b!6288830 c!1141078) b!6288824))

(assert (= (and b!6288830 (not c!1141078)) b!6288829))

(assert (= (and b!6288824 res!2593548) b!6288831))

(assert (= (and b!6288829 (not res!2593549)) b!6288825))

(assert (= (and b!6288825 res!2593545) b!6288826))

(assert (= (or b!6288831 b!6288826) bm!532441))

(assert (= (or b!6288824 b!6288825) bm!532440))

(assert (= (or b!6288827 bm!532441) bm!532439))

(declare-fun m!7109564 () Bool)

(assert (=> bm!532439 m!7109564))

(declare-fun m!7109566 () Bool)

(assert (=> bm!532440 m!7109566))

(declare-fun m!7109568 () Bool)

(assert (=> b!6288832 m!7109568))

(assert (=> b!6288106 d!1973547))

(declare-fun d!1973553 () Bool)

(declare-fun c!1141080 () Bool)

(assert (=> d!1973553 (= c!1141080 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824083 () Bool)

(assert (=> d!1973553 (= (matchZipper!2222 lt!2356445 (t!378493 s!2326)) e!3824083)))

(declare-fun b!6288833 () Bool)

(assert (=> b!6288833 (= e!3824083 (nullableZipper!1980 lt!2356445))))

(declare-fun b!6288834 () Bool)

(assert (=> b!6288834 (= e!3824083 (matchZipper!2222 (derivationStepZipper!2176 lt!2356445 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973553 c!1141080) b!6288833))

(assert (= (and d!1973553 (not c!1141080)) b!6288834))

(assert (=> d!1973553 m!7109104))

(declare-fun m!7109574 () Bool)

(assert (=> b!6288833 m!7109574))

(assert (=> b!6288834 m!7109108))

(assert (=> b!6288834 m!7109108))

(declare-fun m!7109578 () Bool)

(assert (=> b!6288834 m!7109578))

(assert (=> b!6288834 m!7109112))

(assert (=> b!6288834 m!7109578))

(assert (=> b!6288834 m!7109112))

(declare-fun m!7109580 () Bool)

(assert (=> b!6288834 m!7109580))

(assert (=> b!6288127 d!1973553))

(declare-fun bs!1571806 () Bool)

(declare-fun b!6288840 () Bool)

(assert (= bs!1571806 (and b!6288840 d!1973463)))

(declare-fun lambda!345375 () Int)

(assert (=> bs!1571806 (not (= lambda!345375 lambda!345354))))

(declare-fun bs!1571807 () Bool)

(assert (= bs!1571807 (and b!6288840 b!6288130)))

(assert (=> bs!1571807 (not (= lambda!345375 lambda!345272))))

(declare-fun bs!1571808 () Bool)

(assert (= bs!1571808 (and b!6288840 b!6288120)))

(assert (=> bs!1571808 (not (= lambda!345375 lambda!345278))))

(declare-fun bs!1571809 () Bool)

(assert (= bs!1571809 (and b!6288840 d!1973439)))

(assert (=> bs!1571809 (not (= lambda!345375 lambda!345343))))

(assert (=> bs!1571808 (not (= lambda!345375 lambda!345277))))

(declare-fun bs!1571810 () Bool)

(assert (= bs!1571810 (and b!6288840 d!1973429)))

(assert (=> bs!1571810 (not (= lambda!345375 lambda!345333))))

(assert (=> bs!1571808 (not (= lambda!345375 lambda!345276))))

(assert (=> bs!1571809 (not (= lambda!345375 lambda!345342))))

(declare-fun bs!1571811 () Bool)

(assert (= bs!1571811 (and b!6288840 b!6288616)))

(assert (=> bs!1571811 (not (= lambda!345375 lambda!345353))))

(assert (=> bs!1571807 (not (= lambda!345375 lambda!345273))))

(assert (=> bs!1571808 (not (= lambda!345375 lambda!345275))))

(declare-fun bs!1571812 () Bool)

(assert (= bs!1571812 (and b!6288840 b!6288613)))

(assert (=> bs!1571812 (= (and (= (reg!16539 r!7292) (reg!16539 lt!2356414)) (= r!7292 lt!2356414)) (= lambda!345375 lambda!345352))))

(declare-fun bs!1571813 () Bool)

(assert (= bs!1571813 (and b!6288840 d!1973435)))

(assert (=> bs!1571813 (not (= lambda!345375 lambda!345337))))

(declare-fun bs!1571814 () Bool)

(assert (= bs!1571814 (and b!6288840 b!6288579)))

(assert (=> bs!1571814 (not (= lambda!345375 lambda!345349))))

(declare-fun bs!1571815 () Bool)

(assert (= bs!1571815 (and b!6288840 b!6288576)))

(assert (=> bs!1571815 (= (and (= (reg!16539 r!7292) (reg!16539 lt!2356410)) (= r!7292 lt!2356410)) (= lambda!345375 lambda!345348))))

(assert (=> bs!1571806 (not (= lambda!345375 lambda!345355))))

(assert (=> b!6288840 true))

(assert (=> b!6288840 true))

(declare-fun bs!1571816 () Bool)

(declare-fun b!6288843 () Bool)

(assert (= bs!1571816 (and b!6288843 d!1973463)))

(declare-fun lambda!345376 () Int)

(assert (=> bs!1571816 (not (= lambda!345376 lambda!345354))))

(declare-fun bs!1571817 () Bool)

(assert (= bs!1571817 (and b!6288843 b!6288130)))

(assert (=> bs!1571817 (not (= lambda!345376 lambda!345272))))

(declare-fun bs!1571818 () Bool)

(assert (= bs!1571818 (and b!6288843 b!6288120)))

(assert (=> bs!1571818 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345376 lambda!345278))))

(declare-fun bs!1571819 () Bool)

(assert (= bs!1571819 (and b!6288843 d!1973439)))

(assert (=> bs!1571819 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345376 lambda!345343))))

(declare-fun bs!1571820 () Bool)

(assert (= bs!1571820 (and b!6288843 b!6288840)))

(assert (=> bs!1571820 (not (= lambda!345376 lambda!345375))))

(assert (=> bs!1571818 (not (= lambda!345376 lambda!345277))))

(declare-fun bs!1571821 () Bool)

(assert (= bs!1571821 (and b!6288843 d!1973429)))

(assert (=> bs!1571821 (not (= lambda!345376 lambda!345333))))

(assert (=> bs!1571818 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345376 lambda!345276))))

(assert (=> bs!1571819 (not (= lambda!345376 lambda!345342))))

(declare-fun bs!1571822 () Bool)

(assert (= bs!1571822 (and b!6288843 b!6288616)))

(assert (=> bs!1571822 (= (and (= (regOne!32932 r!7292) (regOne!32932 lt!2356414)) (= (regTwo!32932 r!7292) (regTwo!32932 lt!2356414))) (= lambda!345376 lambda!345353))))

(assert (=> bs!1571817 (= lambda!345376 lambda!345273)))

(assert (=> bs!1571818 (not (= lambda!345376 lambda!345275))))

(declare-fun bs!1571823 () Bool)

(assert (= bs!1571823 (and b!6288843 b!6288613)))

(assert (=> bs!1571823 (not (= lambda!345376 lambda!345352))))

(declare-fun bs!1571824 () Bool)

(assert (= bs!1571824 (and b!6288843 d!1973435)))

(assert (=> bs!1571824 (not (= lambda!345376 lambda!345337))))

(declare-fun bs!1571825 () Bool)

(assert (= bs!1571825 (and b!6288843 b!6288579)))

(assert (=> bs!1571825 (= (and (= (regOne!32932 r!7292) (regOne!32932 lt!2356410)) (= (regTwo!32932 r!7292) (regTwo!32932 lt!2356410))) (= lambda!345376 lambda!345349))))

(declare-fun bs!1571826 () Bool)

(assert (= bs!1571826 (and b!6288843 b!6288576)))

(assert (=> bs!1571826 (not (= lambda!345376 lambda!345348))))

(assert (=> bs!1571816 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345376 lambda!345355))))

(assert (=> b!6288843 true))

(assert (=> b!6288843 true))

(declare-fun b!6288835 () Bool)

(declare-fun e!3824084 () Bool)

(assert (=> b!6288835 (= e!3824084 (matchRSpec!3311 (regTwo!32933 r!7292) s!2326))))

(declare-fun b!6288836 () Bool)

(declare-fun e!3824090 () Bool)

(declare-fun e!3824088 () Bool)

(assert (=> b!6288836 (= e!3824090 e!3824088)))

(declare-fun c!1141082 () Bool)

(assert (=> b!6288836 (= c!1141082 (is-Star!16210 r!7292))))

(declare-fun b!6288837 () Bool)

(declare-fun c!1141083 () Bool)

(assert (=> b!6288837 (= c!1141083 (is-Union!16210 r!7292))))

(declare-fun e!3824087 () Bool)

(assert (=> b!6288837 (= e!3824087 e!3824090)))

(declare-fun b!6288838 () Bool)

(assert (=> b!6288838 (= e!3824087 (= s!2326 (Cons!64807 (c!1140891 r!7292) Nil!64807)))))

(declare-fun b!6288839 () Bool)

(declare-fun res!2593552 () Bool)

(declare-fun e!3824085 () Bool)

(assert (=> b!6288839 (=> res!2593552 e!3824085)))

(declare-fun call!532448 () Bool)

(assert (=> b!6288839 (= res!2593552 call!532448)))

(assert (=> b!6288839 (= e!3824088 e!3824085)))

(declare-fun bm!532442 () Bool)

(declare-fun call!532447 () Bool)

(assert (=> bm!532442 (= call!532447 (Exists!3280 (ite c!1141082 lambda!345375 lambda!345376)))))

(assert (=> b!6288840 (= e!3824085 call!532447)))

(declare-fun b!6288841 () Bool)

(declare-fun e!3824086 () Bool)

(declare-fun e!3824089 () Bool)

(assert (=> b!6288841 (= e!3824086 e!3824089)))

(declare-fun res!2593551 () Bool)

(assert (=> b!6288841 (= res!2593551 (not (is-EmptyLang!16210 r!7292)))))

(assert (=> b!6288841 (=> (not res!2593551) (not e!3824089))))

(declare-fun b!6288842 () Bool)

(assert (=> b!6288842 (= e!3824090 e!3824084)))

(declare-fun res!2593550 () Bool)

(assert (=> b!6288842 (= res!2593550 (matchRSpec!3311 (regOne!32933 r!7292) s!2326))))

(assert (=> b!6288842 (=> res!2593550 e!3824084)))

(assert (=> b!6288843 (= e!3824088 call!532447)))

(declare-fun b!6288844 () Bool)

(declare-fun c!1141081 () Bool)

(assert (=> b!6288844 (= c!1141081 (is-ElementMatch!16210 r!7292))))

(assert (=> b!6288844 (= e!3824089 e!3824087)))

(declare-fun b!6288845 () Bool)

(assert (=> b!6288845 (= e!3824086 call!532448)))

(declare-fun bm!532443 () Bool)

(assert (=> bm!532443 (= call!532448 (isEmpty!36863 s!2326))))

(declare-fun d!1973557 () Bool)

(declare-fun c!1141084 () Bool)

(assert (=> d!1973557 (= c!1141084 (is-EmptyExpr!16210 r!7292))))

(assert (=> d!1973557 (= (matchRSpec!3311 r!7292 s!2326) e!3824086)))

(assert (= (and d!1973557 c!1141084) b!6288845))

(assert (= (and d!1973557 (not c!1141084)) b!6288841))

(assert (= (and b!6288841 res!2593551) b!6288844))

(assert (= (and b!6288844 c!1141081) b!6288838))

(assert (= (and b!6288844 (not c!1141081)) b!6288837))

(assert (= (and b!6288837 c!1141083) b!6288842))

(assert (= (and b!6288837 (not c!1141083)) b!6288836))

(assert (= (and b!6288842 (not res!2593550)) b!6288835))

(assert (= (and b!6288836 c!1141082) b!6288839))

(assert (= (and b!6288836 (not c!1141082)) b!6288843))

(assert (= (and b!6288839 (not res!2593552)) b!6288840))

(assert (= (or b!6288840 b!6288843) bm!532442))

(assert (= (or b!6288845 b!6288839) bm!532443))

(declare-fun m!7109584 () Bool)

(assert (=> b!6288835 m!7109584))

(declare-fun m!7109586 () Bool)

(assert (=> bm!532442 m!7109586))

(declare-fun m!7109588 () Bool)

(assert (=> b!6288842 m!7109588))

(assert (=> bm!532443 m!7109190))

(assert (=> b!6288132 d!1973557))

(declare-fun b!6288868 () Bool)

(declare-fun res!2593558 () Bool)

(declare-fun e!3824104 () Bool)

(assert (=> b!6288868 (=> res!2593558 e!3824104)))

(assert (=> b!6288868 (= res!2593558 (not (is-ElementMatch!16210 r!7292)))))

(declare-fun e!3824105 () Bool)

(assert (=> b!6288868 (= e!3824105 e!3824104)))

(declare-fun bm!532456 () Bool)

(declare-fun call!532461 () Bool)

(assert (=> bm!532456 (= call!532461 (isEmpty!36863 s!2326))))

(declare-fun b!6288869 () Bool)

(declare-fun res!2593555 () Bool)

(declare-fun e!3824109 () Bool)

(assert (=> b!6288869 (=> (not res!2593555) (not e!3824109))))

(assert (=> b!6288869 (= res!2593555 (isEmpty!36863 (tail!12006 s!2326)))))

(declare-fun b!6288870 () Bool)

(declare-fun res!2593556 () Bool)

(assert (=> b!6288870 (=> (not res!2593556) (not e!3824109))))

(assert (=> b!6288870 (= res!2593556 (not call!532461))))

(declare-fun d!1973561 () Bool)

(declare-fun e!3824103 () Bool)

(assert (=> d!1973561 e!3824103))

(declare-fun c!1141096 () Bool)

(assert (=> d!1973561 (= c!1141096 (is-EmptyExpr!16210 r!7292))))

(declare-fun lt!2356697 () Bool)

(declare-fun e!3824108 () Bool)

(assert (=> d!1973561 (= lt!2356697 e!3824108)))

(declare-fun c!1141097 () Bool)

(assert (=> d!1973561 (= c!1141097 (isEmpty!36863 s!2326))))

(assert (=> d!1973561 (validRegex!7946 r!7292)))

(assert (=> d!1973561 (= (matchR!8393 r!7292 s!2326) lt!2356697)))

(declare-fun b!6288871 () Bool)

(assert (=> b!6288871 (= e!3824103 e!3824105)))

(declare-fun c!1141095 () Bool)

(assert (=> b!6288871 (= c!1141095 (is-EmptyLang!16210 r!7292))))

(declare-fun b!6288872 () Bool)

(assert (=> b!6288872 (= e!3824108 (matchR!8393 (derivativeStep!4919 r!7292 (head!12921 s!2326)) (tail!12006 s!2326)))))

(declare-fun b!6288873 () Bool)

(declare-fun res!2593562 () Bool)

(assert (=> b!6288873 (=> res!2593562 e!3824104)))

(assert (=> b!6288873 (= res!2593562 e!3824109)))

(declare-fun res!2593557 () Bool)

(assert (=> b!6288873 (=> (not res!2593557) (not e!3824109))))

(assert (=> b!6288873 (= res!2593557 lt!2356697)))

(declare-fun b!6288874 () Bool)

(declare-fun res!2593559 () Bool)

(declare-fun e!3824107 () Bool)

(assert (=> b!6288874 (=> res!2593559 e!3824107)))

(assert (=> b!6288874 (= res!2593559 (not (isEmpty!36863 (tail!12006 s!2326))))))

(declare-fun b!6288875 () Bool)

(assert (=> b!6288875 (= e!3824105 (not lt!2356697))))

(declare-fun b!6288876 () Bool)

(assert (=> b!6288876 (= e!3824103 (= lt!2356697 call!532461))))

(declare-fun b!6288877 () Bool)

(declare-fun e!3824106 () Bool)

(assert (=> b!6288877 (= e!3824106 e!3824107)))

(declare-fun res!2593561 () Bool)

(assert (=> b!6288877 (=> res!2593561 e!3824107)))

(assert (=> b!6288877 (= res!2593561 call!532461)))

(declare-fun b!6288878 () Bool)

(assert (=> b!6288878 (= e!3824108 (nullable!6203 r!7292))))

(declare-fun b!6288879 () Bool)

(assert (=> b!6288879 (= e!3824107 (not (= (head!12921 s!2326) (c!1140891 r!7292))))))

(declare-fun b!6288880 () Bool)

(assert (=> b!6288880 (= e!3824104 e!3824106)))

(declare-fun res!2593560 () Bool)

(assert (=> b!6288880 (=> (not res!2593560) (not e!3824106))))

(assert (=> b!6288880 (= res!2593560 (not lt!2356697))))

(declare-fun b!6288881 () Bool)

(assert (=> b!6288881 (= e!3824109 (= (head!12921 s!2326) (c!1140891 r!7292)))))

(assert (= (and d!1973561 c!1141097) b!6288878))

(assert (= (and d!1973561 (not c!1141097)) b!6288872))

(assert (= (and d!1973561 c!1141096) b!6288876))

(assert (= (and d!1973561 (not c!1141096)) b!6288871))

(assert (= (and b!6288871 c!1141095) b!6288875))

(assert (= (and b!6288871 (not c!1141095)) b!6288868))

(assert (= (and b!6288868 (not res!2593558)) b!6288873))

(assert (= (and b!6288873 res!2593557) b!6288870))

(assert (= (and b!6288870 res!2593556) b!6288869))

(assert (= (and b!6288869 res!2593555) b!6288881))

(assert (= (and b!6288873 (not res!2593562)) b!6288880))

(assert (= (and b!6288880 res!2593560) b!6288877))

(assert (= (and b!6288877 (not res!2593561)) b!6288874))

(assert (= (and b!6288874 (not res!2593559)) b!6288879))

(assert (= (or b!6288876 b!6288870 b!6288877) bm!532456))

(assert (=> b!6288881 m!7109182))

(assert (=> b!6288869 m!7109184))

(assert (=> b!6288869 m!7109184))

(assert (=> b!6288869 m!7109186))

(declare-fun m!7109590 () Bool)

(assert (=> b!6288878 m!7109590))

(assert (=> b!6288874 m!7109184))

(assert (=> b!6288874 m!7109184))

(assert (=> b!6288874 m!7109186))

(assert (=> bm!532456 m!7109190))

(assert (=> d!1973561 m!7109190))

(assert (=> d!1973561 m!7108848))

(assert (=> b!6288872 m!7109182))

(assert (=> b!6288872 m!7109182))

(declare-fun m!7109592 () Bool)

(assert (=> b!6288872 m!7109592))

(assert (=> b!6288872 m!7109184))

(assert (=> b!6288872 m!7109592))

(assert (=> b!6288872 m!7109184))

(declare-fun m!7109594 () Bool)

(assert (=> b!6288872 m!7109594))

(assert (=> b!6288879 m!7109182))

(assert (=> b!6288132 d!1973561))

(declare-fun d!1973563 () Bool)

(assert (=> d!1973563 (= (matchR!8393 r!7292 s!2326) (matchRSpec!3311 r!7292 s!2326))))

(declare-fun lt!2356698 () Unit!158171)

(assert (=> d!1973563 (= lt!2356698 (choose!46716 r!7292 s!2326))))

(assert (=> d!1973563 (validRegex!7946 r!7292)))

(assert (=> d!1973563 (= (mainMatchTheorem!3311 r!7292 s!2326) lt!2356698)))

(declare-fun bs!1571827 () Bool)

(assert (= bs!1571827 d!1973563))

(assert (=> bs!1571827 m!7108842))

(assert (=> bs!1571827 m!7108840))

(declare-fun m!7109596 () Bool)

(assert (=> bs!1571827 m!7109596))

(assert (=> bs!1571827 m!7108848))

(assert (=> b!6288132 d!1973563))

(declare-fun b!6288882 () Bool)

(declare-fun res!2593566 () Bool)

(declare-fun e!3824115 () Bool)

(assert (=> b!6288882 (=> (not res!2593566) (not e!3824115))))

(declare-fun call!532463 () Bool)

(assert (=> b!6288882 (= res!2593566 call!532463)))

(declare-fun e!3824112 () Bool)

(assert (=> b!6288882 (= e!3824112 e!3824115)))

(declare-fun b!6288883 () Bool)

(declare-fun e!3824113 () Bool)

(declare-fun e!3824114 () Bool)

(assert (=> b!6288883 (= e!3824113 e!3824114)))

(declare-fun res!2593563 () Bool)

(assert (=> b!6288883 (=> (not res!2593563) (not e!3824114))))

(assert (=> b!6288883 (= res!2593563 call!532463)))

(declare-fun b!6288885 () Bool)

(declare-fun e!3824116 () Bool)

(declare-fun call!532462 () Bool)

(assert (=> b!6288885 (= e!3824116 call!532462)))

(declare-fun bm!532457 () Bool)

(declare-fun c!1141098 () Bool)

(declare-fun c!1141099 () Bool)

(assert (=> bm!532457 (= call!532462 (validRegex!7946 (ite c!1141099 (reg!16539 (regOne!32932 (regOne!32932 r!7292))) (ite c!1141098 (regTwo!32933 (regOne!32932 (regOne!32932 r!7292))) (regTwo!32932 (regOne!32932 (regOne!32932 r!7292)))))))))

(declare-fun b!6288886 () Bool)

(declare-fun e!3824111 () Bool)

(declare-fun e!3824110 () Bool)

(assert (=> b!6288886 (= e!3824111 e!3824110)))

(assert (=> b!6288886 (= c!1141099 (is-Star!16210 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun bm!532458 () Bool)

(assert (=> bm!532458 (= call!532463 (validRegex!7946 (ite c!1141098 (regOne!32933 (regOne!32932 (regOne!32932 r!7292))) (regOne!32932 (regOne!32932 (regOne!32932 r!7292))))))))

(declare-fun b!6288887 () Bool)

(declare-fun res!2593567 () Bool)

(assert (=> b!6288887 (=> res!2593567 e!3824113)))

(assert (=> b!6288887 (= res!2593567 (not (is-Concat!25055 (regOne!32932 (regOne!32932 r!7292)))))))

(assert (=> b!6288887 (= e!3824112 e!3824113)))

(declare-fun d!1973565 () Bool)

(declare-fun res!2593564 () Bool)

(assert (=> d!1973565 (=> res!2593564 e!3824111)))

(assert (=> d!1973565 (= res!2593564 (is-ElementMatch!16210 (regOne!32932 (regOne!32932 r!7292))))))

(assert (=> d!1973565 (= (validRegex!7946 (regOne!32932 (regOne!32932 r!7292))) e!3824111)))

(declare-fun b!6288884 () Bool)

(declare-fun call!532464 () Bool)

(assert (=> b!6288884 (= e!3824114 call!532464)))

(declare-fun b!6288888 () Bool)

(assert (=> b!6288888 (= e!3824110 e!3824112)))

(assert (=> b!6288888 (= c!1141098 (is-Union!16210 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun b!6288889 () Bool)

(assert (=> b!6288889 (= e!3824115 call!532464)))

(declare-fun b!6288890 () Bool)

(assert (=> b!6288890 (= e!3824110 e!3824116)))

(declare-fun res!2593565 () Bool)

(assert (=> b!6288890 (= res!2593565 (not (nullable!6203 (reg!16539 (regOne!32932 (regOne!32932 r!7292))))))))

(assert (=> b!6288890 (=> (not res!2593565) (not e!3824116))))

(declare-fun bm!532459 () Bool)

(assert (=> bm!532459 (= call!532464 call!532462)))

(assert (= (and d!1973565 (not res!2593564)) b!6288886))

(assert (= (and b!6288886 c!1141099) b!6288890))

(assert (= (and b!6288886 (not c!1141099)) b!6288888))

(assert (= (and b!6288890 res!2593565) b!6288885))

(assert (= (and b!6288888 c!1141098) b!6288882))

(assert (= (and b!6288888 (not c!1141098)) b!6288887))

(assert (= (and b!6288882 res!2593566) b!6288889))

(assert (= (and b!6288887 (not res!2593567)) b!6288883))

(assert (= (and b!6288883 res!2593563) b!6288884))

(assert (= (or b!6288889 b!6288884) bm!532459))

(assert (= (or b!6288882 b!6288883) bm!532458))

(assert (= (or b!6288885 bm!532459) bm!532457))

(declare-fun m!7109598 () Bool)

(assert (=> bm!532457 m!7109598))

(declare-fun m!7109600 () Bool)

(assert (=> bm!532458 m!7109600))

(declare-fun m!7109602 () Bool)

(assert (=> b!6288890 m!7109602))

(assert (=> b!6288131 d!1973565))

(declare-fun b!6288902 () Bool)

(declare-fun e!3824126 () Bool)

(assert (=> b!6288902 (= e!3824126 (matchR!8393 (regTwo!32932 r!7292) s!2326))))

(declare-fun b!6288903 () Bool)

(declare-fun res!2593571 () Bool)

(declare-fun e!3824124 () Bool)

(assert (=> b!6288903 (=> (not res!2593571) (not e!3824124))))

(declare-fun lt!2356701 () Option!16101)

(assert (=> b!6288903 (= res!2593571 (matchR!8393 (regOne!32932 r!7292) (_1!36492 (get!22404 lt!2356701))))))

(declare-fun b!6288904 () Bool)

(declare-fun e!3824125 () Option!16101)

(declare-fun e!3824123 () Option!16101)

(assert (=> b!6288904 (= e!3824125 e!3824123)))

(declare-fun c!1141105 () Bool)

(assert (=> b!6288904 (= c!1141105 (is-Nil!64807 s!2326))))

(declare-fun b!6288905 () Bool)

(declare-fun e!3824127 () Bool)

(assert (=> b!6288905 (= e!3824127 (not (isDefined!12804 lt!2356701)))))

(declare-fun b!6288906 () Bool)

(assert (=> b!6288906 (= e!3824124 (= (++!14283 (_1!36492 (get!22404 lt!2356701)) (_2!36492 (get!22404 lt!2356701))) s!2326))))

(declare-fun b!6288907 () Bool)

(assert (=> b!6288907 (= e!3824125 (Some!16100 (tuple2!66379 Nil!64807 s!2326)))))

(declare-fun b!6288908 () Bool)

(declare-fun res!2593573 () Bool)

(assert (=> b!6288908 (=> (not res!2593573) (not e!3824124))))

(assert (=> b!6288908 (= res!2593573 (matchR!8393 (regTwo!32932 r!7292) (_2!36492 (get!22404 lt!2356701))))))

(declare-fun b!6288910 () Bool)

(assert (=> b!6288910 (= e!3824123 None!16100)))

(declare-fun b!6288909 () Bool)

(declare-fun lt!2356700 () Unit!158171)

(declare-fun lt!2356699 () Unit!158171)

(assert (=> b!6288909 (= lt!2356700 lt!2356699)))

(assert (=> b!6288909 (= (++!14283 (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326)) s!2326)))

(assert (=> b!6288909 (= lt!2356699 (lemmaMoveElementToOtherListKeepsConcatEq!2378 Nil!64807 (h!71255 s!2326) (t!378493 s!2326) s!2326))))

(assert (=> b!6288909 (= e!3824123 (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) (++!14283 Nil!64807 (Cons!64807 (h!71255 s!2326) Nil!64807)) (t!378493 s!2326) s!2326))))

(declare-fun d!1973567 () Bool)

(assert (=> d!1973567 e!3824127))

(declare-fun res!2593569 () Bool)

(assert (=> d!1973567 (=> res!2593569 e!3824127)))

(assert (=> d!1973567 (= res!2593569 e!3824124)))

(declare-fun res!2593570 () Bool)

(assert (=> d!1973567 (=> (not res!2593570) (not e!3824124))))

(assert (=> d!1973567 (= res!2593570 (isDefined!12804 lt!2356701))))

(assert (=> d!1973567 (= lt!2356701 e!3824125)))

(declare-fun c!1141106 () Bool)

(assert (=> d!1973567 (= c!1141106 e!3824126)))

(declare-fun res!2593572 () Bool)

(assert (=> d!1973567 (=> (not res!2593572) (not e!3824126))))

(assert (=> d!1973567 (= res!2593572 (matchR!8393 (regOne!32932 r!7292) Nil!64807))))

(assert (=> d!1973567 (validRegex!7946 (regOne!32932 r!7292))))

(assert (=> d!1973567 (= (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) Nil!64807 s!2326 s!2326) lt!2356701)))

(assert (= (and d!1973567 res!2593572) b!6288902))

(assert (= (and d!1973567 c!1141106) b!6288907))

(assert (= (and d!1973567 (not c!1141106)) b!6288904))

(assert (= (and b!6288904 c!1141105) b!6288910))

(assert (= (and b!6288904 (not c!1141105)) b!6288909))

(assert (= (and d!1973567 res!2593570) b!6288903))

(assert (= (and b!6288903 res!2593571) b!6288908))

(assert (= (and b!6288908 res!2593573) b!6288906))

(assert (= (and d!1973567 (not res!2593569)) b!6288905))

(declare-fun m!7109620 () Bool)

(assert (=> d!1973567 m!7109620))

(declare-fun m!7109624 () Bool)

(assert (=> d!1973567 m!7109624))

(declare-fun m!7109626 () Bool)

(assert (=> d!1973567 m!7109626))

(declare-fun m!7109628 () Bool)

(assert (=> b!6288906 m!7109628))

(declare-fun m!7109630 () Bool)

(assert (=> b!6288906 m!7109630))

(assert (=> b!6288908 m!7109628))

(declare-fun m!7109632 () Bool)

(assert (=> b!6288908 m!7109632))

(declare-fun m!7109634 () Bool)

(assert (=> b!6288902 m!7109634))

(assert (=> b!6288905 m!7109620))

(assert (=> b!6288909 m!7109328))

(assert (=> b!6288909 m!7109328))

(assert (=> b!6288909 m!7109330))

(assert (=> b!6288909 m!7109332))

(assert (=> b!6288909 m!7109328))

(declare-fun m!7109636 () Bool)

(assert (=> b!6288909 m!7109636))

(assert (=> b!6288903 m!7109628))

(declare-fun m!7109638 () Bool)

(assert (=> b!6288903 m!7109638))

(assert (=> b!6288130 d!1973567))

(declare-fun d!1973575 () Bool)

(assert (=> d!1973575 (= (Exists!3280 lambda!345273) (choose!46713 lambda!345273))))

(declare-fun bs!1571829 () Bool)

(assert (= bs!1571829 d!1973575))

(declare-fun m!7109642 () Bool)

(assert (=> bs!1571829 m!7109642))

(assert (=> b!6288130 d!1973575))

(declare-fun d!1973577 () Bool)

(assert (=> d!1973577 (= (Exists!3280 lambda!345272) (choose!46713 lambda!345272))))

(declare-fun bs!1571830 () Bool)

(assert (= bs!1571830 d!1973577))

(declare-fun m!7109648 () Bool)

(assert (=> bs!1571830 m!7109648))

(assert (=> b!6288130 d!1973577))

(declare-fun bs!1571831 () Bool)

(declare-fun d!1973581 () Bool)

(assert (= bs!1571831 (and d!1973581 d!1973463)))

(declare-fun lambda!345377 () Int)

(assert (=> bs!1571831 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345377 lambda!345354))))

(declare-fun bs!1571832 () Bool)

(assert (= bs!1571832 (and d!1973581 b!6288130)))

(assert (=> bs!1571832 (= lambda!345377 lambda!345272)))

(declare-fun bs!1571833 () Bool)

(assert (= bs!1571833 (and d!1973581 b!6288120)))

(assert (=> bs!1571833 (not (= lambda!345377 lambda!345278))))

(declare-fun bs!1571834 () Bool)

(assert (= bs!1571834 (and d!1973581 d!1973439)))

(assert (=> bs!1571834 (not (= lambda!345377 lambda!345343))))

(declare-fun bs!1571835 () Bool)

(assert (= bs!1571835 (and d!1973581 b!6288840)))

(assert (=> bs!1571835 (not (= lambda!345377 lambda!345375))))

(assert (=> bs!1571833 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345377 lambda!345277))))

(declare-fun bs!1571836 () Bool)

(assert (= bs!1571836 (and d!1973581 d!1973429)))

(assert (=> bs!1571836 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345377 lambda!345333))))

(assert (=> bs!1571834 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345377 lambda!345342))))

(declare-fun bs!1571837 () Bool)

(assert (= bs!1571837 (and d!1973581 b!6288616)))

(assert (=> bs!1571837 (not (= lambda!345377 lambda!345353))))

(assert (=> bs!1571832 (not (= lambda!345377 lambda!345273))))

(assert (=> bs!1571833 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345377 lambda!345275))))

(declare-fun bs!1571838 () Bool)

(assert (= bs!1571838 (and d!1973581 b!6288613)))

(assert (=> bs!1571838 (not (= lambda!345377 lambda!345352))))

(declare-fun bs!1571839 () Bool)

(assert (= bs!1571839 (and d!1973581 d!1973435)))

(assert (=> bs!1571839 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345377 lambda!345337))))

(declare-fun bs!1571840 () Bool)

(assert (= bs!1571840 (and d!1973581 b!6288579)))

(assert (=> bs!1571840 (not (= lambda!345377 lambda!345349))))

(declare-fun bs!1571841 () Bool)

(assert (= bs!1571841 (and d!1973581 b!6288843)))

(assert (=> bs!1571841 (not (= lambda!345377 lambda!345376))))

(assert (=> bs!1571833 (not (= lambda!345377 lambda!345276))))

(declare-fun bs!1571842 () Bool)

(assert (= bs!1571842 (and d!1973581 b!6288576)))

(assert (=> bs!1571842 (not (= lambda!345377 lambda!345348))))

(assert (=> bs!1571831 (not (= lambda!345377 lambda!345355))))

(assert (=> d!1973581 true))

(assert (=> d!1973581 true))

(assert (=> d!1973581 true))

(assert (=> d!1973581 (= (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) Nil!64807 s!2326 s!2326)) (Exists!3280 lambda!345377))))

(declare-fun lt!2356702 () Unit!158171)

(assert (=> d!1973581 (= lt!2356702 (choose!46714 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326))))

(assert (=> d!1973581 (validRegex!7946 (regOne!32932 r!7292))))

(assert (=> d!1973581 (= (lemmaFindConcatSeparationEquivalentToExists!2279 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326) lt!2356702)))

(declare-fun bs!1571843 () Bool)

(assert (= bs!1571843 d!1973581))

(declare-fun m!7109660 () Bool)

(assert (=> bs!1571843 m!7109660))

(assert (=> bs!1571843 m!7109626))

(declare-fun m!7109662 () Bool)

(assert (=> bs!1571843 m!7109662))

(assert (=> bs!1571843 m!7108734))

(assert (=> bs!1571843 m!7108736))

(assert (=> bs!1571843 m!7108734))

(assert (=> b!6288130 d!1973581))

(declare-fun bs!1571844 () Bool)

(declare-fun d!1973589 () Bool)

(assert (= bs!1571844 (and d!1973589 d!1973463)))

(declare-fun lambda!345378 () Int)

(assert (=> bs!1571844 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345378 lambda!345354))))

(declare-fun bs!1571845 () Bool)

(assert (= bs!1571845 (and d!1973589 b!6288130)))

(assert (=> bs!1571845 (= lambda!345378 lambda!345272)))

(declare-fun bs!1571846 () Bool)

(assert (= bs!1571846 (and d!1973589 b!6288120)))

(assert (=> bs!1571846 (not (= lambda!345378 lambda!345278))))

(declare-fun bs!1571847 () Bool)

(assert (= bs!1571847 (and d!1973589 d!1973439)))

(assert (=> bs!1571847 (not (= lambda!345378 lambda!345343))))

(declare-fun bs!1571848 () Bool)

(assert (= bs!1571848 (and d!1973589 b!6288840)))

(assert (=> bs!1571848 (not (= lambda!345378 lambda!345375))))

(assert (=> bs!1571846 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345378 lambda!345277))))

(assert (=> bs!1571847 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345378 lambda!345342))))

(declare-fun bs!1571849 () Bool)

(assert (= bs!1571849 (and d!1973589 b!6288616)))

(assert (=> bs!1571849 (not (= lambda!345378 lambda!345353))))

(assert (=> bs!1571845 (not (= lambda!345378 lambda!345273))))

(assert (=> bs!1571846 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345378 lambda!345275))))

(declare-fun bs!1571850 () Bool)

(assert (= bs!1571850 (and d!1973589 b!6288613)))

(assert (=> bs!1571850 (not (= lambda!345378 lambda!345352))))

(declare-fun bs!1571851 () Bool)

(assert (= bs!1571851 (and d!1973589 d!1973435)))

(assert (=> bs!1571851 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345378 lambda!345337))))

(declare-fun bs!1571852 () Bool)

(assert (= bs!1571852 (and d!1973589 b!6288579)))

(assert (=> bs!1571852 (not (= lambda!345378 lambda!345349))))

(declare-fun bs!1571853 () Bool)

(assert (= bs!1571853 (and d!1973589 d!1973581)))

(assert (=> bs!1571853 (= lambda!345378 lambda!345377)))

(declare-fun bs!1571854 () Bool)

(assert (= bs!1571854 (and d!1973589 d!1973429)))

(assert (=> bs!1571854 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345378 lambda!345333))))

(declare-fun bs!1571855 () Bool)

(assert (= bs!1571855 (and d!1973589 b!6288843)))

(assert (=> bs!1571855 (not (= lambda!345378 lambda!345376))))

(assert (=> bs!1571846 (not (= lambda!345378 lambda!345276))))

(declare-fun bs!1571856 () Bool)

(assert (= bs!1571856 (and d!1973589 b!6288576)))

(assert (=> bs!1571856 (not (= lambda!345378 lambda!345348))))

(assert (=> bs!1571844 (not (= lambda!345378 lambda!345355))))

(assert (=> d!1973589 true))

(assert (=> d!1973589 true))

(assert (=> d!1973589 true))

(declare-fun lambda!345379 () Int)

(assert (=> bs!1571844 (not (= lambda!345379 lambda!345354))))

(assert (=> bs!1571845 (not (= lambda!345379 lambda!345272))))

(assert (=> bs!1571847 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345379 lambda!345343))))

(assert (=> bs!1571848 (not (= lambda!345379 lambda!345375))))

(assert (=> bs!1571846 (not (= lambda!345379 lambda!345277))))

(assert (=> bs!1571847 (not (= lambda!345379 lambda!345342))))

(assert (=> bs!1571849 (= (and (= (regOne!32932 r!7292) (regOne!32932 lt!2356414)) (= (regTwo!32932 r!7292) (regTwo!32932 lt!2356414))) (= lambda!345379 lambda!345353))))

(assert (=> bs!1571845 (= lambda!345379 lambda!345273)))

(assert (=> bs!1571846 (not (= lambda!345379 lambda!345275))))

(assert (=> bs!1571850 (not (= lambda!345379 lambda!345352))))

(declare-fun bs!1571857 () Bool)

(assert (= bs!1571857 d!1973589))

(assert (=> bs!1571857 (not (= lambda!345379 lambda!345378))))

(assert (=> bs!1571846 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345379 lambda!345278))))

(assert (=> bs!1571851 (not (= lambda!345379 lambda!345337))))

(assert (=> bs!1571852 (= (and (= (regOne!32932 r!7292) (regOne!32932 lt!2356410)) (= (regTwo!32932 r!7292) (regTwo!32932 lt!2356410))) (= lambda!345379 lambda!345349))))

(assert (=> bs!1571853 (not (= lambda!345379 lambda!345377))))

(assert (=> bs!1571854 (not (= lambda!345379 lambda!345333))))

(assert (=> bs!1571855 (= lambda!345379 lambda!345376)))

(assert (=> bs!1571846 (= (and (= (regOne!32932 r!7292) (regOne!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356410)) (= lambda!345379 lambda!345276))))

(assert (=> bs!1571856 (not (= lambda!345379 lambda!345348))))

(assert (=> bs!1571844 (= (and (= (regOne!32932 r!7292) (regTwo!32932 (regOne!32932 r!7292))) (= (regTwo!32932 r!7292) lt!2356423)) (= lambda!345379 lambda!345355))))

(assert (=> d!1973589 true))

(assert (=> d!1973589 true))

(assert (=> d!1973589 true))

(assert (=> d!1973589 (= (Exists!3280 lambda!345378) (Exists!3280 lambda!345379))))

(declare-fun lt!2356707 () Unit!158171)

(assert (=> d!1973589 (= lt!2356707 (choose!46715 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326))))

(assert (=> d!1973589 (validRegex!7946 (regOne!32932 r!7292))))

(assert (=> d!1973589 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1817 (regOne!32932 r!7292) (regTwo!32932 r!7292) s!2326) lt!2356707)))

(declare-fun m!7109690 () Bool)

(assert (=> bs!1571857 m!7109690))

(declare-fun m!7109692 () Bool)

(assert (=> bs!1571857 m!7109692))

(declare-fun m!7109694 () Bool)

(assert (=> bs!1571857 m!7109694))

(assert (=> bs!1571857 m!7109626))

(assert (=> b!6288130 d!1973589))

(declare-fun d!1973601 () Bool)

(assert (=> d!1973601 (= (isDefined!12804 (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) Nil!64807 s!2326 s!2326)) (not (isEmpty!36864 (findConcatSeparation!2515 (regOne!32932 r!7292) (regTwo!32932 r!7292) Nil!64807 s!2326 s!2326))))))

(declare-fun bs!1571858 () Bool)

(assert (= bs!1571858 d!1973601))

(assert (=> bs!1571858 m!7108734))

(declare-fun m!7109696 () Bool)

(assert (=> bs!1571858 m!7109696))

(assert (=> b!6288130 d!1973601))

(declare-fun d!1973603 () Bool)

(declare-fun c!1141130 () Bool)

(assert (=> d!1973603 (= c!1141130 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824168 () Bool)

(assert (=> d!1973603 (= (matchZipper!2222 lt!2356409 (t!378493 s!2326)) e!3824168)))

(declare-fun b!6288973 () Bool)

(assert (=> b!6288973 (= e!3824168 (nullableZipper!1980 lt!2356409))))

(declare-fun b!6288974 () Bool)

(assert (=> b!6288974 (= e!3824168 (matchZipper!2222 (derivationStepZipper!2176 lt!2356409 (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973603 c!1141130) b!6288973))

(assert (= (and d!1973603 (not c!1141130)) b!6288974))

(assert (=> d!1973603 m!7109104))

(declare-fun m!7109698 () Bool)

(assert (=> b!6288973 m!7109698))

(assert (=> b!6288974 m!7109108))

(assert (=> b!6288974 m!7109108))

(declare-fun m!7109700 () Bool)

(assert (=> b!6288974 m!7109700))

(assert (=> b!6288974 m!7109112))

(assert (=> b!6288974 m!7109700))

(assert (=> b!6288974 m!7109112))

(declare-fun m!7109702 () Bool)

(assert (=> b!6288974 m!7109702))

(assert (=> b!6288113 d!1973603))

(declare-fun e!3824169 () Bool)

(declare-fun d!1973605 () Bool)

(assert (=> d!1973605 (= (matchZipper!2222 (set.union lt!2356454 lt!2356426) (t!378493 s!2326)) e!3824169)))

(declare-fun res!2593592 () Bool)

(assert (=> d!1973605 (=> res!2593592 e!3824169)))

(assert (=> d!1973605 (= res!2593592 (matchZipper!2222 lt!2356454 (t!378493 s!2326)))))

(declare-fun lt!2356712 () Unit!158171)

(assert (=> d!1973605 (= lt!2356712 (choose!46717 lt!2356454 lt!2356426 (t!378493 s!2326)))))

(assert (=> d!1973605 (= (lemmaZipperConcatMatchesSameAsBothZippers!1041 lt!2356454 lt!2356426 (t!378493 s!2326)) lt!2356712)))

(declare-fun b!6288975 () Bool)

(assert (=> b!6288975 (= e!3824169 (matchZipper!2222 lt!2356426 (t!378493 s!2326)))))

(assert (= (and d!1973605 (not res!2593592)) b!6288975))

(assert (=> d!1973605 m!7108898))

(assert (=> d!1973605 m!7108724))

(declare-fun m!7109704 () Bool)

(assert (=> d!1973605 m!7109704))

(assert (=> b!6288975 m!7108854))

(assert (=> b!6288134 d!1973605))

(assert (=> b!6288134 d!1973483))

(declare-fun d!1973607 () Bool)

(declare-fun c!1141131 () Bool)

(assert (=> d!1973607 (= c!1141131 (isEmpty!36863 (t!378493 s!2326)))))

(declare-fun e!3824170 () Bool)

(assert (=> d!1973607 (= (matchZipper!2222 (set.union lt!2356454 lt!2356426) (t!378493 s!2326)) e!3824170)))

(declare-fun b!6288976 () Bool)

(assert (=> b!6288976 (= e!3824170 (nullableZipper!1980 (set.union lt!2356454 lt!2356426)))))

(declare-fun b!6288977 () Bool)

(assert (=> b!6288977 (= e!3824170 (matchZipper!2222 (derivationStepZipper!2176 (set.union lt!2356454 lt!2356426) (head!12921 (t!378493 s!2326))) (tail!12006 (t!378493 s!2326))))))

(assert (= (and d!1973607 c!1141131) b!6288976))

(assert (= (and d!1973607 (not c!1141131)) b!6288977))

(assert (=> d!1973607 m!7109104))

(declare-fun m!7109706 () Bool)

(assert (=> b!6288976 m!7109706))

(assert (=> b!6288977 m!7109108))

(assert (=> b!6288977 m!7109108))

(declare-fun m!7109708 () Bool)

(assert (=> b!6288977 m!7109708))

(assert (=> b!6288977 m!7109112))

(assert (=> b!6288977 m!7109708))

(assert (=> b!6288977 m!7109112))

(declare-fun m!7109710 () Bool)

(assert (=> b!6288977 m!7109710))

(assert (=> b!6288134 d!1973607))

(declare-fun d!1973609 () Bool)

(declare-fun lt!2356717 () Regex!16210)

(assert (=> d!1973609 (validRegex!7946 lt!2356717)))

(assert (=> d!1973609 (= lt!2356717 (generalisedUnion!2054 (unfocusZipperList!1631 zl!343)))))

(assert (=> d!1973609 (= (unfocusZipper!1952 zl!343) lt!2356717)))

(declare-fun bs!1571859 () Bool)

(assert (= bs!1571859 d!1973609))

(declare-fun m!7109712 () Bool)

(assert (=> bs!1571859 m!7109712))

(assert (=> bs!1571859 m!7108746))

(assert (=> bs!1571859 m!7108746))

(assert (=> bs!1571859 m!7108748))

(assert (=> b!6288112 d!1973609))

(assert (=> b!6288133 d!1973553))

(declare-fun d!1973611 () Bool)

(assert (=> d!1973611 (= (isEmpty!36859 (t!378492 zl!343)) (is-Nil!64806 (t!378492 zl!343)))))

(assert (=> b!6288111 d!1973611))

(declare-fun b!6288985 () Bool)

(declare-fun res!2593599 () Bool)

(declare-fun e!3824181 () Bool)

(assert (=> b!6288985 (=> (not res!2593599) (not e!3824181))))

(declare-fun call!532484 () Bool)

(assert (=> b!6288985 (= res!2593599 call!532484)))

(declare-fun e!3824177 () Bool)

(assert (=> b!6288985 (= e!3824177 e!3824181)))

(declare-fun b!6288986 () Bool)

(declare-fun e!3824178 () Bool)

(declare-fun e!3824179 () Bool)

(assert (=> b!6288986 (= e!3824178 e!3824179)))

(declare-fun res!2593596 () Bool)

(assert (=> b!6288986 (=> (not res!2593596) (not e!3824179))))

(assert (=> b!6288986 (= res!2593596 call!532484)))

(declare-fun b!6288988 () Bool)

(declare-fun e!3824182 () Bool)

(declare-fun call!532483 () Bool)

(assert (=> b!6288988 (= e!3824182 call!532483)))

(declare-fun c!1141135 () Bool)

(declare-fun c!1141133 () Bool)

(declare-fun bm!532478 () Bool)

(assert (=> bm!532478 (= call!532483 (validRegex!7946 (ite c!1141135 (reg!16539 r!7292) (ite c!1141133 (regTwo!32933 r!7292) (regTwo!32932 r!7292)))))))

(declare-fun b!6288989 () Bool)

(declare-fun e!3824176 () Bool)

(declare-fun e!3824175 () Bool)

(assert (=> b!6288989 (= e!3824176 e!3824175)))

(assert (=> b!6288989 (= c!1141135 (is-Star!16210 r!7292))))

(declare-fun bm!532479 () Bool)

(assert (=> bm!532479 (= call!532484 (validRegex!7946 (ite c!1141133 (regOne!32933 r!7292) (regOne!32932 r!7292))))))

(declare-fun b!6288990 () Bool)

(declare-fun res!2593600 () Bool)

(assert (=> b!6288990 (=> res!2593600 e!3824178)))

(assert (=> b!6288990 (= res!2593600 (not (is-Concat!25055 r!7292)))))

(assert (=> b!6288990 (= e!3824177 e!3824178)))

(declare-fun d!1973615 () Bool)

(declare-fun res!2593597 () Bool)

(assert (=> d!1973615 (=> res!2593597 e!3824176)))

(assert (=> d!1973615 (= res!2593597 (is-ElementMatch!16210 r!7292))))

(assert (=> d!1973615 (= (validRegex!7946 r!7292) e!3824176)))

(declare-fun b!6288987 () Bool)

(declare-fun call!532485 () Bool)

(assert (=> b!6288987 (= e!3824179 call!532485)))

(declare-fun b!6288991 () Bool)

(assert (=> b!6288991 (= e!3824175 e!3824177)))

(assert (=> b!6288991 (= c!1141133 (is-Union!16210 r!7292))))

(declare-fun b!6288992 () Bool)

(assert (=> b!6288992 (= e!3824181 call!532485)))

(declare-fun b!6288993 () Bool)

(assert (=> b!6288993 (= e!3824175 e!3824182)))

(declare-fun res!2593598 () Bool)

(assert (=> b!6288993 (= res!2593598 (not (nullable!6203 (reg!16539 r!7292))))))

(assert (=> b!6288993 (=> (not res!2593598) (not e!3824182))))

(declare-fun bm!532480 () Bool)

(assert (=> bm!532480 (= call!532485 call!532483)))

(assert (= (and d!1973615 (not res!2593597)) b!6288989))

(assert (= (and b!6288989 c!1141135) b!6288993))

(assert (= (and b!6288989 (not c!1141135)) b!6288991))

(assert (= (and b!6288993 res!2593598) b!6288988))

(assert (= (and b!6288991 c!1141133) b!6288985))

(assert (= (and b!6288991 (not c!1141133)) b!6288990))

(assert (= (and b!6288985 res!2593599) b!6288992))

(assert (= (and b!6288990 (not res!2593600)) b!6288986))

(assert (= (and b!6288986 res!2593596) b!6288987))

(assert (= (or b!6288992 b!6288987) bm!532480))

(assert (= (or b!6288985 b!6288986) bm!532479))

(assert (= (or b!6288988 bm!532480) bm!532478))

(declare-fun m!7109728 () Bool)

(assert (=> bm!532478 m!7109728))

(declare-fun m!7109730 () Bool)

(assert (=> bm!532479 m!7109730))

(declare-fun m!7109732 () Bool)

(assert (=> b!6288993 m!7109732))

(assert (=> start!624948 d!1973615))

(declare-fun d!1973621 () Bool)

(declare-fun lt!2356721 () Int)

(assert (=> d!1973621 (>= lt!2356721 0)))

(declare-fun e!3824205 () Int)

(assert (=> d!1973621 (= lt!2356721 e!3824205)))

(declare-fun c!1141152 () Bool)

(assert (=> d!1973621 (= c!1141152 (is-Cons!64805 (exprs!6094 lt!2356456)))))

(assert (=> d!1973621 (= (contextDepthTotal!333 lt!2356456) lt!2356721)))

(declare-fun b!6289031 () Bool)

(declare-fun regexDepthTotal!185 (Regex!16210) Int)

(assert (=> b!6289031 (= e!3824205 (+ (regexDepthTotal!185 (h!71253 (exprs!6094 lt!2356456))) (contextDepthTotal!333 (Context!11189 (t!378491 (exprs!6094 lt!2356456))))))))

(declare-fun b!6289032 () Bool)

(assert (=> b!6289032 (= e!3824205 1)))

(assert (= (and d!1973621 c!1141152) b!6289031))

(assert (= (and d!1973621 (not c!1141152)) b!6289032))

(declare-fun m!7109762 () Bool)

(assert (=> b!6289031 m!7109762))

(declare-fun m!7109764 () Bool)

(assert (=> b!6289031 m!7109764))

(assert (=> b!6288116 d!1973621))

(declare-fun d!1973631 () Bool)

(declare-fun lt!2356722 () Int)

(assert (=> d!1973631 (>= lt!2356722 0)))

(declare-fun e!3824206 () Int)

(assert (=> d!1973631 (= lt!2356722 e!3824206)))

(declare-fun c!1141153 () Bool)

(assert (=> d!1973631 (= c!1141153 (is-Cons!64805 (exprs!6094 (h!71254 zl!343))))))

(assert (=> d!1973631 (= (contextDepthTotal!333 (h!71254 zl!343)) lt!2356722)))

(declare-fun b!6289033 () Bool)

(assert (=> b!6289033 (= e!3824206 (+ (regexDepthTotal!185 (h!71253 (exprs!6094 (h!71254 zl!343)))) (contextDepthTotal!333 (Context!11189 (t!378491 (exprs!6094 (h!71254 zl!343)))))))))

(declare-fun b!6289034 () Bool)

(assert (=> b!6289034 (= e!3824206 1)))

(assert (= (and d!1973631 c!1141153) b!6289033))

(assert (= (and d!1973631 (not c!1141153)) b!6289034))

(declare-fun m!7109766 () Bool)

(assert (=> b!6289033 m!7109766))

(declare-fun m!7109768 () Bool)

(assert (=> b!6289033 m!7109768))

(assert (=> b!6288116 d!1973631))

(declare-fun d!1973633 () Bool)

(assert (=> d!1973633 (= (isEmpty!36860 (t!378491 (exprs!6094 (h!71254 zl!343)))) (is-Nil!64805 (t!378491 (exprs!6094 (h!71254 zl!343)))))))

(assert (=> b!6288136 d!1973633))

(declare-fun b!6289035 () Bool)

(declare-fun c!1141158 () Bool)

(declare-fun e!3824209 () Bool)

(assert (=> b!6289035 (= c!1141158 e!3824209)))

(declare-fun res!2593608 () Bool)

(assert (=> b!6289035 (=> (not res!2593608) (not e!3824209))))

(assert (=> b!6289035 (= res!2593608 (is-Concat!25055 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun e!3824212 () (Set Context!11188))

(declare-fun e!3824208 () (Set Context!11188))

(assert (=> b!6289035 (= e!3824212 e!3824208)))

(declare-fun b!6289036 () Bool)

(declare-fun call!532506 () (Set Context!11188))

(declare-fun call!532505 () (Set Context!11188))

(assert (=> b!6289036 (= e!3824212 (set.union call!532506 call!532505))))

(declare-fun b!6289037 () Bool)

(declare-fun e!3824210 () (Set Context!11188))

(declare-fun call!532504 () (Set Context!11188))

(assert (=> b!6289037 (= e!3824210 call!532504)))

(declare-fun bm!532496 () Bool)

(declare-fun call!532502 () (Set Context!11188))

(assert (=> bm!532496 (= call!532502 call!532505)))

(declare-fun b!6289038 () Bool)

(assert (=> b!6289038 (= e!3824208 (set.union call!532506 call!532502))))

(declare-fun b!6289039 () Bool)

(assert (=> b!6289039 (= e!3824209 (nullable!6203 (regOne!32932 (regTwo!32932 (regOne!32932 r!7292)))))))

(declare-fun c!1141154 () Bool)

(declare-fun bm!532497 () Bool)

(declare-fun call!532503 () List!64929)

(declare-fun c!1141155 () Bool)

(assert (=> bm!532497 (= call!532505 (derivationStepZipperDown!1458 (ite c!1141155 (regTwo!32933 (regTwo!32932 (regOne!32932 r!7292))) (ite c!1141158 (regTwo!32932 (regTwo!32932 (regOne!32932 r!7292))) (ite c!1141154 (regOne!32932 (regTwo!32932 (regOne!32932 r!7292))) (reg!16539 (regTwo!32932 (regOne!32932 r!7292)))))) (ite (or c!1141155 c!1141158) lt!2356421 (Context!11189 call!532503)) (h!71255 s!2326)))))

(declare-fun call!532501 () List!64929)

(declare-fun bm!532498 () Bool)

(assert (=> bm!532498 (= call!532501 ($colon$colon!2075 (exprs!6094 lt!2356421) (ite (or c!1141158 c!1141154) (regTwo!32932 (regTwo!32932 (regOne!32932 r!7292))) (regTwo!32932 (regOne!32932 r!7292)))))))

(declare-fun bm!532499 () Bool)

(assert (=> bm!532499 (= call!532503 call!532501)))

(declare-fun b!6289041 () Bool)

(declare-fun e!3824211 () (Set Context!11188))

(assert (=> b!6289041 (= e!3824211 (set.insert lt!2356421 (as set.empty (Set Context!11188))))))

(declare-fun bm!532500 () Bool)

(assert (=> bm!532500 (= call!532504 call!532502)))

(declare-fun b!6289042 () Bool)

(declare-fun c!1141157 () Bool)

(assert (=> b!6289042 (= c!1141157 (is-Star!16210 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun e!3824207 () (Set Context!11188))

(assert (=> b!6289042 (= e!3824207 e!3824210)))

(declare-fun b!6289043 () Bool)

(assert (=> b!6289043 (= e!3824207 call!532504)))

(declare-fun b!6289044 () Bool)

(assert (=> b!6289044 (= e!3824211 e!3824212)))

(assert (=> b!6289044 (= c!1141155 (is-Union!16210 (regTwo!32932 (regOne!32932 r!7292))))))

(declare-fun b!6289040 () Bool)

(assert (=> b!6289040 (= e!3824210 (as set.empty (Set Context!11188)))))

(declare-fun d!1973635 () Bool)

(declare-fun c!1141156 () Bool)

(assert (=> d!1973635 (= c!1141156 (and (is-ElementMatch!16210 (regTwo!32932 (regOne!32932 r!7292))) (= (c!1140891 (regTwo!32932 (regOne!32932 r!7292))) (h!71255 s!2326))))))

(assert (=> d!1973635 (= (derivationStepZipperDown!1458 (regTwo!32932 (regOne!32932 r!7292)) lt!2356421 (h!71255 s!2326)) e!3824211)))

(declare-fun bm!532501 () Bool)

(assert (=> bm!532501 (= call!532506 (derivationStepZipperDown!1458 (ite c!1141155 (regOne!32933 (regTwo!32932 (regOne!32932 r!7292))) (regOne!32932 (regTwo!32932 (regOne!32932 r!7292)))) (ite c!1141155 lt!2356421 (Context!11189 call!532501)) (h!71255 s!2326)))))

(declare-fun b!6289045 () Bool)

(assert (=> b!6289045 (= e!3824208 e!3824207)))

(assert (=> b!6289045 (= c!1141154 (is-Concat!25055 (regTwo!32932 (regOne!32932 r!7292))))))

(assert (= (and d!1973635 c!1141156) b!6289041))

(assert (= (and d!1973635 (not c!1141156)) b!6289044))

(assert (= (and b!6289044 c!1141155) b!6289036))

(assert (= (and b!6289044 (not c!1141155)) b!6289035))

(assert (= (and b!6289035 res!2593608) b!6289039))

(assert (= (and b!6289035 c!1141158) b!6289038))

(assert (= (and b!6289035 (not c!1141158)) b!6289045))

(assert (= (and b!6289045 c!1141154) b!6289043))

(assert (= (and b!6289045 (not c!1141154)) b!6289042))

(assert (= (and b!6289042 c!1141157) b!6289037))

(assert (= (and b!6289042 (not c!1141157)) b!6289040))

(assert (= (or b!6289043 b!6289037) bm!532499))

(assert (= (or b!6289043 b!6289037) bm!532500))

(assert (= (or b!6289038 bm!532499) bm!532498))

(assert (= (or b!6289038 bm!532500) bm!532496))

(assert (= (or b!6289036 bm!532496) bm!532497))

(assert (= (or b!6289036 b!6289038) bm!532501))

(declare-fun m!7109770 () Bool)

(assert (=> bm!532497 m!7109770))

(declare-fun m!7109772 () Bool)

(assert (=> b!6289039 m!7109772))

(assert (=> b!6289041 m!7109170))

(declare-fun m!7109774 () Bool)

(assert (=> bm!532501 m!7109774))

(declare-fun m!7109776 () Bool)

(assert (=> bm!532498 m!7109776))

(assert (=> b!6288135 d!1973635))

(declare-fun b!6289046 () Bool)

(declare-fun c!1141163 () Bool)

(declare-fun e!3824215 () Bool)

(assert (=> b!6289046 (= c!1141163 e!3824215)))

(declare-fun res!2593609 () Bool)

(assert (=> b!6289046 (=> (not res!2593609) (not e!3824215))))

(assert (=> b!6289046 (= res!2593609 (is-Concat!25055 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun e!3824218 () (Set Context!11188))

(declare-fun e!3824214 () (Set Context!11188))

(assert (=> b!6289046 (= e!3824218 e!3824214)))

(declare-fun b!6289047 () Bool)

(declare-fun call!532512 () (Set Context!11188))

(declare-fun call!532511 () (Set Context!11188))

(assert (=> b!6289047 (= e!3824218 (set.union call!532512 call!532511))))

(declare-fun b!6289048 () Bool)

(declare-fun e!3824216 () (Set Context!11188))

(declare-fun call!532510 () (Set Context!11188))

(assert (=> b!6289048 (= e!3824216 call!532510)))

(declare-fun bm!532502 () Bool)

(declare-fun call!532508 () (Set Context!11188))

(assert (=> bm!532502 (= call!532508 call!532511)))

(declare-fun b!6289049 () Bool)

(assert (=> b!6289049 (= e!3824214 (set.union call!532512 call!532508))))

(declare-fun b!6289050 () Bool)

(assert (=> b!6289050 (= e!3824215 (nullable!6203 (regOne!32932 (regOne!32932 (regOne!32932 r!7292)))))))

(declare-fun call!532509 () List!64929)

(declare-fun c!1141159 () Bool)

(declare-fun c!1141160 () Bool)

(declare-fun bm!532503 () Bool)

(assert (=> bm!532503 (= call!532511 (derivationStepZipperDown!1458 (ite c!1141160 (regTwo!32933 (regOne!32932 (regOne!32932 r!7292))) (ite c!1141163 (regTwo!32932 (regOne!32932 (regOne!32932 r!7292))) (ite c!1141159 (regOne!32932 (regOne!32932 (regOne!32932 r!7292))) (reg!16539 (regOne!32932 (regOne!32932 r!7292)))))) (ite (or c!1141160 c!1141163) lt!2356417 (Context!11189 call!532509)) (h!71255 s!2326)))))

(declare-fun call!532507 () List!64929)

(declare-fun bm!532504 () Bool)

(assert (=> bm!532504 (= call!532507 ($colon$colon!2075 (exprs!6094 lt!2356417) (ite (or c!1141163 c!1141159) (regTwo!32932 (regOne!32932 (regOne!32932 r!7292))) (regOne!32932 (regOne!32932 r!7292)))))))

(declare-fun bm!532505 () Bool)

(assert (=> bm!532505 (= call!532509 call!532507)))

(declare-fun b!6289052 () Bool)

(declare-fun e!3824217 () (Set Context!11188))

(assert (=> b!6289052 (= e!3824217 (set.insert lt!2356417 (as set.empty (Set Context!11188))))))

(declare-fun bm!532506 () Bool)

(assert (=> bm!532506 (= call!532510 call!532508)))

(declare-fun b!6289053 () Bool)

(declare-fun c!1141162 () Bool)

(assert (=> b!6289053 (= c!1141162 (is-Star!16210 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun e!3824213 () (Set Context!11188))

(assert (=> b!6289053 (= e!3824213 e!3824216)))

(declare-fun b!6289054 () Bool)

(assert (=> b!6289054 (= e!3824213 call!532510)))

(declare-fun b!6289055 () Bool)

(assert (=> b!6289055 (= e!3824217 e!3824218)))

(assert (=> b!6289055 (= c!1141160 (is-Union!16210 (regOne!32932 (regOne!32932 r!7292))))))

(declare-fun b!6289051 () Bool)

(assert (=> b!6289051 (= e!3824216 (as set.empty (Set Context!11188)))))

(declare-fun d!1973637 () Bool)

(declare-fun c!1141161 () Bool)

(assert (=> d!1973637 (= c!1141161 (and (is-ElementMatch!16210 (regOne!32932 (regOne!32932 r!7292))) (= (c!1140891 (regOne!32932 (regOne!32932 r!7292))) (h!71255 s!2326))))))

(assert (=> d!1973637 (= (derivationStepZipperDown!1458 (regOne!32932 (regOne!32932 r!7292)) lt!2356417 (h!71255 s!2326)) e!3824217)))

(declare-fun bm!532507 () Bool)

(assert (=> bm!532507 (= call!532512 (derivationStepZipperDown!1458 (ite c!1141160 (regOne!32933 (regOne!32932 (regOne!32932 r!7292))) (regOne!32932 (regOne!32932 (regOne!32932 r!7292)))) (ite c!1141160 lt!2356417 (Context!11189 call!532507)) (h!71255 s!2326)))))

(declare-fun b!6289056 () Bool)

(assert (=> b!6289056 (= e!3824214 e!3824213)))

(assert (=> b!6289056 (= c!1141159 (is-Concat!25055 (regOne!32932 (regOne!32932 r!7292))))))

(assert (= (and d!1973637 c!1141161) b!6289052))

(assert (= (and d!1973637 (not c!1141161)) b!6289055))

(assert (= (and b!6289055 c!1141160) b!6289047))

(assert (= (and b!6289055 (not c!1141160)) b!6289046))

(assert (= (and b!6289046 res!2593609) b!6289050))

(assert (= (and b!6289046 c!1141163) b!6289049))

(assert (= (and b!6289046 (not c!1141163)) b!6289056))

(assert (= (and b!6289056 c!1141159) b!6289054))

(assert (= (and b!6289056 (not c!1141159)) b!6289053))

(assert (= (and b!6289053 c!1141162) b!6289048))

(assert (= (and b!6289053 (not c!1141162)) b!6289051))

(assert (= (or b!6289054 b!6289048) bm!532505))

(assert (= (or b!6289054 b!6289048) bm!532506))

(assert (= (or b!6289049 bm!532505) bm!532504))

(assert (= (or b!6289049 bm!532506) bm!532502))

(assert (= (or b!6289047 bm!532502) bm!532503))

(assert (= (or b!6289047 b!6289049) bm!532507))

(declare-fun m!7109778 () Bool)

(assert (=> bm!532503 m!7109778))

(declare-fun m!7109780 () Bool)

(assert (=> b!6289050 m!7109780))

(assert (=> b!6289052 m!7108874))

(declare-fun m!7109782 () Bool)

(assert (=> bm!532507 m!7109782))

(declare-fun m!7109784 () Bool)

(assert (=> bm!532504 m!7109784))

(assert (=> b!6288135 d!1973637))

(declare-fun b!6289065 () Bool)

(declare-fun e!3824223 () Bool)

(declare-fun tp!1751511 () Bool)

(declare-fun tp!1751512 () Bool)

(assert (=> b!6289065 (= e!3824223 (and tp!1751511 tp!1751512))))

(assert (=> b!6288121 (= tp!1751469 e!3824223)))

(assert (= (and b!6288121 (is-Cons!64805 (exprs!6094 (h!71254 zl!343)))) b!6289065))

(declare-fun b!6289101 () Bool)

(declare-fun e!3824238 () Bool)

(declare-fun tp!1751524 () Bool)

(declare-fun tp!1751527 () Bool)

(assert (=> b!6289101 (= e!3824238 (and tp!1751524 tp!1751527))))

(declare-fun b!6289102 () Bool)

(declare-fun tp!1751526 () Bool)

(assert (=> b!6289102 (= e!3824238 tp!1751526)))

(declare-fun b!6289103 () Bool)

(declare-fun tp!1751523 () Bool)

(declare-fun tp!1751525 () Bool)

(assert (=> b!6289103 (= e!3824238 (and tp!1751523 tp!1751525))))

(assert (=> b!6288110 (= tp!1751471 e!3824238)))

(declare-fun b!6289100 () Bool)

(assert (=> b!6289100 (= e!3824238 tp_is_empty!41673)))

(assert (= (and b!6288110 (is-ElementMatch!16210 (regOne!32932 r!7292))) b!6289100))

(assert (= (and b!6288110 (is-Concat!25055 (regOne!32932 r!7292))) b!6289101))

(assert (= (and b!6288110 (is-Star!16210 (regOne!32932 r!7292))) b!6289102))

(assert (= (and b!6288110 (is-Union!16210 (regOne!32932 r!7292))) b!6289103))

(declare-fun b!6289105 () Bool)

(declare-fun e!3824239 () Bool)

(declare-fun tp!1751529 () Bool)

(declare-fun tp!1751532 () Bool)

(assert (=> b!6289105 (= e!3824239 (and tp!1751529 tp!1751532))))

(declare-fun b!6289106 () Bool)

(declare-fun tp!1751531 () Bool)

(assert (=> b!6289106 (= e!3824239 tp!1751531)))

(declare-fun b!6289107 () Bool)

(declare-fun tp!1751528 () Bool)

(declare-fun tp!1751530 () Bool)

(assert (=> b!6289107 (= e!3824239 (and tp!1751528 tp!1751530))))

(assert (=> b!6288110 (= tp!1751473 e!3824239)))

(declare-fun b!6289104 () Bool)

(assert (=> b!6289104 (= e!3824239 tp_is_empty!41673)))

(assert (= (and b!6288110 (is-ElementMatch!16210 (regTwo!32932 r!7292))) b!6289104))

(assert (= (and b!6288110 (is-Concat!25055 (regTwo!32932 r!7292))) b!6289105))

(assert (= (and b!6288110 (is-Star!16210 (regTwo!32932 r!7292))) b!6289106))

(assert (= (and b!6288110 (is-Union!16210 (regTwo!32932 r!7292))) b!6289107))

(declare-fun b!6289115 () Bool)

(declare-fun e!3824245 () Bool)

(declare-fun tp!1751537 () Bool)

(assert (=> b!6289115 (= e!3824245 tp!1751537)))

(declare-fun tp!1751538 () Bool)

(declare-fun b!6289114 () Bool)

(declare-fun e!3824244 () Bool)

(assert (=> b!6289114 (= e!3824244 (and (inv!83773 (h!71254 (t!378492 zl!343))) e!3824245 tp!1751538))))

(assert (=> b!6288100 (= tp!1751475 e!3824244)))

(assert (= b!6289114 b!6289115))

(assert (= (and b!6288100 (is-Cons!64806 (t!378492 zl!343))) b!6289114))

(declare-fun m!7109786 () Bool)

(assert (=> b!6289114 m!7109786))

(declare-fun b!6289120 () Bool)

(declare-fun e!3824248 () Bool)

(declare-fun tp!1751541 () Bool)

(assert (=> b!6289120 (= e!3824248 (and tp_is_empty!41673 tp!1751541))))

(assert (=> b!6288115 (= tp!1751474 e!3824248)))

(assert (= (and b!6288115 (is-Cons!64807 (t!378493 s!2326))) b!6289120))

(declare-fun b!6289122 () Bool)

(declare-fun e!3824249 () Bool)

(declare-fun tp!1751543 () Bool)

(declare-fun tp!1751546 () Bool)

(assert (=> b!6289122 (= e!3824249 (and tp!1751543 tp!1751546))))

(declare-fun b!6289123 () Bool)

(declare-fun tp!1751545 () Bool)

(assert (=> b!6289123 (= e!3824249 tp!1751545)))

(declare-fun b!6289124 () Bool)

(declare-fun tp!1751542 () Bool)

(declare-fun tp!1751544 () Bool)

(assert (=> b!6289124 (= e!3824249 (and tp!1751542 tp!1751544))))

(assert (=> b!6288104 (= tp!1751476 e!3824249)))

(declare-fun b!6289121 () Bool)

(assert (=> b!6289121 (= e!3824249 tp_is_empty!41673)))

(assert (= (and b!6288104 (is-ElementMatch!16210 (reg!16539 r!7292))) b!6289121))

(assert (= (and b!6288104 (is-Concat!25055 (reg!16539 r!7292))) b!6289122))

(assert (= (and b!6288104 (is-Star!16210 (reg!16539 r!7292))) b!6289123))

(assert (= (and b!6288104 (is-Union!16210 (reg!16539 r!7292))) b!6289124))

(declare-fun b!6289126 () Bool)

(declare-fun e!3824250 () Bool)

(declare-fun tp!1751548 () Bool)

(declare-fun tp!1751551 () Bool)

(assert (=> b!6289126 (= e!3824250 (and tp!1751548 tp!1751551))))

(declare-fun b!6289127 () Bool)

(declare-fun tp!1751550 () Bool)

(assert (=> b!6289127 (= e!3824250 tp!1751550)))

(declare-fun b!6289128 () Bool)

(declare-fun tp!1751547 () Bool)

(declare-fun tp!1751549 () Bool)

(assert (=> b!6289128 (= e!3824250 (and tp!1751547 tp!1751549))))

(assert (=> b!6288125 (= tp!1751470 e!3824250)))

(declare-fun b!6289125 () Bool)

(assert (=> b!6289125 (= e!3824250 tp_is_empty!41673)))

(assert (= (and b!6288125 (is-ElementMatch!16210 (regOne!32933 r!7292))) b!6289125))

(assert (= (and b!6288125 (is-Concat!25055 (regOne!32933 r!7292))) b!6289126))

(assert (= (and b!6288125 (is-Star!16210 (regOne!32933 r!7292))) b!6289127))

(assert (= (and b!6288125 (is-Union!16210 (regOne!32933 r!7292))) b!6289128))

(declare-fun b!6289130 () Bool)

(declare-fun e!3824251 () Bool)

(declare-fun tp!1751553 () Bool)

(declare-fun tp!1751556 () Bool)

(assert (=> b!6289130 (= e!3824251 (and tp!1751553 tp!1751556))))

(declare-fun b!6289131 () Bool)

(declare-fun tp!1751555 () Bool)

(assert (=> b!6289131 (= e!3824251 tp!1751555)))

(declare-fun b!6289132 () Bool)

(declare-fun tp!1751552 () Bool)

(declare-fun tp!1751554 () Bool)

(assert (=> b!6289132 (= e!3824251 (and tp!1751552 tp!1751554))))

(assert (=> b!6288125 (= tp!1751472 e!3824251)))

(declare-fun b!6289129 () Bool)

(assert (=> b!6289129 (= e!3824251 tp_is_empty!41673)))

(assert (= (and b!6288125 (is-ElementMatch!16210 (regTwo!32933 r!7292))) b!6289129))

(assert (= (and b!6288125 (is-Concat!25055 (regTwo!32933 r!7292))) b!6289130))

(assert (= (and b!6288125 (is-Star!16210 (regTwo!32933 r!7292))) b!6289131))

(assert (= (and b!6288125 (is-Union!16210 (regTwo!32933 r!7292))) b!6289132))

(declare-fun condSetEmpty!42803 () Bool)

(assert (=> setNonEmpty!42797 (= condSetEmpty!42803 (= setRest!42797 (as set.empty (Set Context!11188))))))

(declare-fun setRes!42803 () Bool)

(assert (=> setNonEmpty!42797 (= tp!1751467 setRes!42803)))

(declare-fun setIsEmpty!42803 () Bool)

(assert (=> setIsEmpty!42803 setRes!42803))

(declare-fun tp!1751561 () Bool)

(declare-fun e!3824254 () Bool)

(declare-fun setNonEmpty!42803 () Bool)

(declare-fun setElem!42803 () Context!11188)

(assert (=> setNonEmpty!42803 (= setRes!42803 (and tp!1751561 (inv!83773 setElem!42803) e!3824254))))

(declare-fun setRest!42803 () (Set Context!11188))

(assert (=> setNonEmpty!42803 (= setRest!42797 (set.union (set.insert setElem!42803 (as set.empty (Set Context!11188))) setRest!42803))))

(declare-fun b!6289137 () Bool)

(declare-fun tp!1751562 () Bool)

(assert (=> b!6289137 (= e!3824254 tp!1751562)))

(assert (= (and setNonEmpty!42797 condSetEmpty!42803) setIsEmpty!42803))

(assert (= (and setNonEmpty!42797 (not condSetEmpty!42803)) setNonEmpty!42803))

(assert (= setNonEmpty!42803 b!6289137))

(declare-fun m!7109788 () Bool)

(assert (=> setNonEmpty!42803 m!7109788))

(declare-fun b!6289138 () Bool)

(declare-fun e!3824255 () Bool)

(declare-fun tp!1751563 () Bool)

(declare-fun tp!1751564 () Bool)

(assert (=> b!6289138 (= e!3824255 (and tp!1751563 tp!1751564))))

(assert (=> b!6288103 (= tp!1751468 e!3824255)))

(assert (= (and b!6288103 (is-Cons!64805 (exprs!6094 setElem!42797))) b!6289138))

(declare-fun b_lambda!239327 () Bool)

(assert (= b_lambda!239317 (or b!6288138 b_lambda!239327)))

(declare-fun bs!1571860 () Bool)

(declare-fun d!1973639 () Bool)

(assert (= bs!1571860 (and d!1973639 b!6288138)))

(assert (=> bs!1571860 (= (dynLambda!25644 lambda!345274 (h!71254 zl!343)) (derivationStepZipperUp!1384 (h!71254 zl!343) (h!71255 s!2326)))))

(assert (=> bs!1571860 m!7108824))

(assert (=> d!1973413 d!1973639))

(declare-fun b_lambda!239329 () Bool)

(assert (= b_lambda!239323 (or b!6288138 b_lambda!239329)))

(declare-fun bs!1571861 () Bool)

(declare-fun d!1973641 () Bool)

(assert (= bs!1571861 (and d!1973641 b!6288138)))

(assert (=> bs!1571861 (= (dynLambda!25644 lambda!345274 lt!2356417) (derivationStepZipperUp!1384 lt!2356417 (h!71255 s!2326)))))

(assert (=> bs!1571861 m!7108868))

(assert (=> d!1973529 d!1973641))

(declare-fun b_lambda!239331 () Bool)

(assert (= b_lambda!239319 (or b!6288138 b_lambda!239331)))

(declare-fun bs!1571862 () Bool)

(declare-fun d!1973643 () Bool)

(assert (= bs!1571862 (and d!1973643 b!6288138)))

(assert (=> bs!1571862 (= (dynLambda!25644 lambda!345274 lt!2356456) (derivationStepZipperUp!1384 lt!2356456 (h!71255 s!2326)))))

(assert (=> bs!1571862 m!7108878))

(assert (=> d!1973495 d!1973643))

(push 1)

(assert (not b!6288881))

(assert (not d!1973499))

(assert (not b!6288408))

(assert (not b!6288908))

(assert (not d!1973487))

(assert (not b!6288823))

(assert (not bm!532427))

(assert (not bm!532426))

(assert (not b!6288727))

(assert (not b!6288494))

(assert (not b!6289033))

(assert (not b!6288413))

(assert (not d!1973447))

(assert (not d!1973467))

(assert (not b!6288523))

(assert (not b!6288415))

(assert (not d!1973463))

(assert (not b!6288487))

(assert (not bm!532412))

(assert (not d!1973395))

(assert (not b!6288571))

(assert (not b!6288810))

(assert (not b!6288748))

(assert (not bm!532420))

(assert (not d!1973609))

(assert (not bm!532443))

(assert (not b!6288779))

(assert (not b!6288410))

(assert (not b!6288355))

(assert (not b!6288590))

(assert (not d!1973485))

(assert (not bm!532417))

(assert (not d!1973479))

(assert (not b!6288443))

(assert (not b!6288721))

(assert (not b!6288656))

(assert (not bm!532440))

(assert (not d!1973461))

(assert (not d!1973475))

(assert (not d!1973561))

(assert (not d!1973431))

(assert (not b!6289126))

(assert (not b!6288675))

(assert (not b!6288657))

(assert (not b!6288807))

(assert (not b!6288678))

(assert (not b!6288586))

(assert (not b!6288605))

(assert (not b!6288906))

(assert (not b!6288801))

(assert (not d!1973539))

(assert (not b!6288789))

(assert (not b!6289115))

(assert (not d!1973601))

(assert (not b!6288688))

(assert (not d!1973425))

(assert (not b!6288526))

(assert (not d!1973511))

(assert (not d!1973515))

(assert (not bm!532507))

(assert (not b!6288674))

(assert (not b!6288909))

(assert (not b!6288603))

(assert (not b!6289031))

(assert (not d!1973567))

(assert (not d!1973449))

(assert (not b!6288809))

(assert (not d!1973577))

(assert (not b!6288664))

(assert (not b!6288493))

(assert (not b!6288595))

(assert (not b!6288600))

(assert (not d!1973605))

(assert (not bm!532433))

(assert (not d!1973435))

(assert (not b!6288343))

(assert (not d!1973437))

(assert (not b!6288594))

(assert (not b!6289114))

(assert (not b!6289050))

(assert (not d!1973407))

(assert (not b!6288528))

(assert (not d!1973409))

(assert (not b!6288582))

(assert tp_is_empty!41673)

(assert (not d!1973527))

(assert (not b!6288666))

(assert (not b!6288638))

(assert (not d!1973523))

(assert (not b!6288802))

(assert (not b!6289120))

(assert (not b!6288644))

(assert (not b!6288975))

(assert (not b!6288755))

(assert (not d!1973427))

(assert (not b!6288340))

(assert (not b!6288643))

(assert (not b!6288394))

(assert (not b!6288341))

(assert (not d!1973469))

(assert (not bm!532432))

(assert (not b!6289131))

(assert (not bm!532416))

(assert (not d!1973493))

(assert (not b!6288738))

(assert (not d!1973563))

(assert (not d!1973495))

(assert (not bs!1571860))

(assert (not b!6288993))

(assert (not b!6288835))

(assert (not b!6288746))

(assert (not b!6288637))

(assert (not bm!532456))

(assert (not b!6288681))

(assert (not d!1973451))

(assert (not bm!532501))

(assert (not b!6288781))

(assert (not bm!532430))

(assert (not d!1973589))

(assert (not d!1973465))

(assert (not b!6289107))

(assert (not bm!532397))

(assert (not b!6288977))

(assert (not b!6289132))

(assert (not d!1973483))

(assert (not b!6288790))

(assert (not b!6288608))

(assert (not d!1973603))

(assert (not b!6288782))

(assert (not b!6288496))

(assert (not bm!532438))

(assert (not bm!532439))

(assert (not bm!532413))

(assert (not d!1973429))

(assert (not bm!532478))

(assert (not bm!532497))

(assert (not b!6288874))

(assert (not b!6288647))

(assert (not b!6288640))

(assert (not d!1973537))

(assert (not b!6288348))

(assert (not d!1973455))

(assert (not b!6288391))

(assert (not b!6288792))

(assert (not b!6288354))

(assert (not d!1973421))

(assert (not b!6288661))

(assert (not b!6289101))

(assert (not d!1973441))

(assert (not b!6288607))

(assert (not d!1973525))

(assert (not b!6289124))

(assert (not d!1973399))

(assert (not b!6288583))

(assert (not b!6288673))

(assert (not b!6288757))

(assert (not b!6288530))

(assert (not b!6288606))

(assert (not d!1973513))

(assert (not d!1973581))

(assert (not b!6288484))

(assert (not bm!532458))

(assert (not b!6288680))

(assert (not b!6288973))

(assert (not b!6288382))

(assert (not b!6288585))

(assert (not bm!532425))

(assert (not d!1973453))

(assert (not b!6288521))

(assert (not b!6288869))

(assert (not b!6288753))

(assert (not b!6289123))

(assert (not b!6289102))

(assert (not b!6288584))

(assert (not b!6288529))

(assert (not b!6288453))

(assert (not bm!532498))

(assert (not b!6288335))

(assert (not b!6288902))

(assert (not b!6288905))

(assert (not b!6288615))

(assert (not b!6289122))

(assert (not b!6288596))

(assert (not b!6288797))

(assert (not d!1973433))

(assert (not b_lambda!239331))

(assert (not b!6288890))

(assert (not d!1973489))

(assert (not d!1973533))

(assert (not b!6288814))

(assert (not b!6288593))

(assert (not b!6288652))

(assert (not d!1973397))

(assert (not b!6288687))

(assert (not b!6289127))

(assert (not b!6288832))

(assert (not b!6288834))

(assert (not b!6289106))

(assert (not b!6288878))

(assert (not b!6288588))

(assert (not bm!532428))

(assert (not b!6288976))

(assert (not b!6288756))

(assert (not b!6289137))

(assert (not b!6288601))

(assert (not b!6289039))

(assert (not b!6288686))

(assert (not b!6288736))

(assert (not d!1973529))

(assert (not d!1973423))

(assert (not b!6289128))

(assert (not bm!532503))

(assert (not b!6289103))

(assert (not bm!532457))

(assert (not b!6288591))

(assert (not b!6288334))

(assert (not d!1973445))

(assert (not b!6289130))

(assert (not b!6288812))

(assert (not b!6288525))

(assert (not b!6288783))

(assert (not b!6288804))

(assert (not b!6288842))

(assert (not b!6288598))

(assert (not b!6288677))

(assert (not d!1973459))

(assert (not d!1973575))

(assert (not b!6288795))

(assert (not d!1973481))

(assert (not b!6288879))

(assert (not b!6288396))

(assert (not bm!532431))

(assert (not b!6289138))

(assert (not b!6288974))

(assert (not b!6288903))

(assert (not b!6288659))

(assert (not bm!532442))

(assert (not bs!1571861))

(assert (not d!1973543))

(assert (not bm!532504))

(assert (not b!6288685))

(assert (not bm!532398))

(assert (not b!6288578))

(assert (not b!6288813))

(assert (not b_lambda!239327))

(assert (not b!6288777))

(assert (not d!1973471))

(assert (not b!6288489))

(assert (not b!6288338))

(assert (not bs!1571862))

(assert (not bm!532429))

(assert (not b!6288683))

(assert (not b!6288451))

(assert (not setNonEmpty!42803))

(assert (not b!6288650))

(assert (not bm!532479))

(assert (not b!6288752))

(assert (not b!6288604))

(assert (not b!6288670))

(assert (not b!6289065))

(assert (not bm!532393))

(assert (not d!1973607))

(assert (not b!6288389))

(assert (not bm!532392))

(assert (not b!6289105))

(assert (not b!6288684))

(assert (not b!6288641))

(assert (not d!1973439))

(assert (not d!1973413))

(assert (not b!6288336))

(assert (not b!6288743))

(assert (not d!1973553))

(assert (not b!6288729))

(assert (not b_lambda!239329))

(assert (not b!6288805))

(assert (not b!6288671))

(assert (not b!6288833))

(assert (not d!1973507))

(assert (not b!6288872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

