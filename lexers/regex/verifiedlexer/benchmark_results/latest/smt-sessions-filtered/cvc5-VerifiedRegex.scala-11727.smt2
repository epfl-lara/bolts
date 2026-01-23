; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663082 () Bool)

(assert start!663082)

(declare-fun b!6871730 () Bool)

(assert (=> b!6871730 true))

(declare-fun b!6871736 () Bool)

(assert (=> b!6871736 true))

(declare-fun bs!1837294 () Bool)

(declare-fun b!6871744 () Bool)

(assert (= bs!1837294 (and b!6871744 b!6871730)))

(declare-fun lambda!388816 () Int)

(declare-fun lambda!388814 () Int)

(assert (=> bs!1837294 (not (= lambda!388816 lambda!388814))))

(declare-fun e!4142009 () Bool)

(declare-fun e!4142005 () Bool)

(assert (=> b!6871730 (= e!4142009 e!4142005)))

(declare-fun res!2802413 () Bool)

(assert (=> b!6871730 (=> res!2802413 e!4142005)))

(declare-fun lt!2458382 () Bool)

(assert (=> b!6871730 (= res!2802413 lt!2458382)))

(declare-datatypes ((C!33670 0))(
  ( (C!33671 (val!26537 Int)) )
))
(declare-datatypes ((Regex!16700 0))(
  ( (ElementMatch!16700 (c!1278820 C!33670)) (Concat!25545 (regOne!33912 Regex!16700) (regTwo!33912 Regex!16700)) (EmptyExpr!16700) (Star!16700 (reg!17029 Regex!16700)) (EmptyLang!16700) (Union!16700 (regOne!33913 Regex!16700) (regTwo!33913 Regex!16700)) )
))
(declare-datatypes ((List!66399 0))(
  ( (Nil!66275) (Cons!66275 (h!72723 Regex!16700) (t!380142 List!66399)) )
))
(declare-fun lt!2458369 () List!66399)

(declare-fun exists!2836 (List!66399 Int) Bool)

(assert (=> b!6871730 (= lt!2458382 (exists!2836 lt!2458369 lambda!388814))))

(declare-fun r!7292 () Regex!16700)

(declare-datatypes ((List!66400 0))(
  ( (Nil!66276) (Cons!66276 (h!72724 C!33670) (t!380143 List!66400)) )
))
(declare-fun s!2326 () List!66400)

(declare-datatypes ((Unit!160177 0))(
  ( (Unit!160178) )
))
(declare-fun lt!2458374 () Unit!160177)

(declare-fun matchRGenUnionSpec!339 (Regex!16700 List!66399 List!66400) Unit!160177)

(assert (=> b!6871730 (= lt!2458374 (matchRGenUnionSpec!339 r!7292 lt!2458369 s!2326))))

(declare-datatypes ((Context!12168 0))(
  ( (Context!12169 (exprs!6584 List!66399)) )
))
(declare-datatypes ((List!66401 0))(
  ( (Nil!66277) (Cons!66277 (h!72725 Context!12168) (t!380144 List!66401)) )
))
(declare-fun zl!343 () List!66401)

(declare-fun unfocusZipperList!2117 (List!66401) List!66399)

(assert (=> b!6871730 (= lt!2458369 (unfocusZipperList!2117 zl!343))))

(declare-fun b!6871731 () Bool)

(declare-fun e!4142012 () Bool)

(declare-fun tp!1887257 () Bool)

(assert (=> b!6871731 (= e!4142012 tp!1887257)))

(declare-fun b!6871733 () Bool)

(declare-fun res!2802415 () Bool)

(assert (=> b!6871733 (=> res!2802415 e!4142009)))

(declare-fun isEmpty!38631 (List!66401) Bool)

(assert (=> b!6871733 (= res!2802415 (isEmpty!38631 (t!380144 zl!343)))))

(declare-fun b!6871734 () Bool)

(declare-fun e!4142008 () Bool)

(declare-fun tp!1887256 () Bool)

(assert (=> b!6871734 (= e!4142008 tp!1887256)))

(declare-fun b!6871735 () Bool)

(declare-fun tp_is_empty!42653 () Bool)

(assert (=> b!6871735 (= e!4142012 tp_is_empty!42653)))

(declare-fun e!4142002 () Bool)

(assert (=> b!6871736 (= e!4142005 e!4142002)))

(declare-fun res!2802412 () Bool)

(assert (=> b!6871736 (=> res!2802412 e!4142002)))

(declare-fun lambda!388815 () Int)

(declare-fun exists!2837 (List!66401 Int) Bool)

(assert (=> b!6871736 (= res!2802412 (not (exists!2837 zl!343 lambda!388815)))))

(assert (=> b!6871736 (exists!2837 zl!343 lambda!388815)))

(declare-fun lt!2458371 () Unit!160177)

(declare-fun lemmaZipperMatchesExistsMatchingContext!99 (List!66401 List!66400) Unit!160177)

(assert (=> b!6871736 (= lt!2458371 (lemmaZipperMatchesExistsMatchingContext!99 zl!343 s!2326))))

(declare-fun b!6871737 () Bool)

(declare-fun res!2802414 () Bool)

(declare-fun e!4142006 () Bool)

(assert (=> b!6871737 (=> (not res!2802414) (not e!4142006))))

(declare-fun z!1189 () (Set Context!12168))

(declare-fun toList!10484 ((Set Context!12168)) List!66401)

(assert (=> b!6871737 (= res!2802414 (= (toList!10484 z!1189) zl!343))))

(declare-fun b!6871732 () Bool)

(declare-fun res!2802419 () Bool)

(assert (=> b!6871732 (=> res!2802419 e!4142009)))

(assert (=> b!6871732 (= res!2802419 (or (not (is-Cons!66277 zl!343)) (is-Nil!66276 s!2326) (not (= zl!343 (Cons!66277 (h!72725 zl!343) (t!380144 zl!343))))))))

(declare-fun res!2802420 () Bool)

(assert (=> start!663082 (=> (not res!2802420) (not e!4142006))))

(declare-fun validRegex!8436 (Regex!16700) Bool)

(assert (=> start!663082 (= res!2802420 (validRegex!8436 r!7292))))

(assert (=> start!663082 e!4142006))

(assert (=> start!663082 e!4142012))

(declare-fun condSetEmpty!47244 () Bool)

(assert (=> start!663082 (= condSetEmpty!47244 (= z!1189 (as set.empty (Set Context!12168))))))

(declare-fun setRes!47244 () Bool)

(assert (=> start!663082 setRes!47244))

(declare-fun e!4142011 () Bool)

(assert (=> start!663082 e!4142011))

(declare-fun e!4142003 () Bool)

(assert (=> start!663082 e!4142003))

(declare-fun b!6871738 () Bool)

(declare-fun e!4142010 () Bool)

(declare-fun e!4142007 () Bool)

(assert (=> b!6871738 (= e!4142010 e!4142007)))

(declare-fun res!2802410 () Bool)

(assert (=> b!6871738 (=> res!2802410 e!4142007)))

(declare-fun lt!2458376 () Int)

(declare-fun lt!2458381 () List!66401)

(declare-fun zipperDepthTotal!449 (List!66401) Int)

(assert (=> b!6871738 (= res!2802410 (<= lt!2458376 (zipperDepthTotal!449 lt!2458381)))))

(declare-fun lt!2458377 () Context!12168)

(assert (=> b!6871738 (= lt!2458381 (Cons!66277 lt!2458377 Nil!66277))))

(declare-fun lt!2458379 () Int)

(assert (=> b!6871738 (< lt!2458379 lt!2458376)))

(assert (=> b!6871738 (= lt!2458376 (zipperDepthTotal!449 zl!343))))

(declare-fun contextDepthTotal!421 (Context!12168) Int)

(assert (=> b!6871738 (= lt!2458379 (contextDepthTotal!421 lt!2458377))))

(declare-fun lt!2458373 () Unit!160177)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!53 (List!66401 Context!12168) Unit!160177)

(assert (=> b!6871738 (= lt!2458373 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!53 zl!343 lt!2458377))))

(declare-fun b!6871739 () Bool)

(declare-fun tp!1887255 () Bool)

(declare-fun inv!84998 (Context!12168) Bool)

(assert (=> b!6871739 (= e!4142011 (and (inv!84998 (h!72725 zl!343)) e!4142008 tp!1887255))))

(declare-fun b!6871740 () Bool)

(assert (=> b!6871740 (= e!4142006 (not e!4142009))))

(declare-fun res!2802418 () Bool)

(assert (=> b!6871740 (=> res!2802418 e!4142009)))

(declare-fun e!4142001 () Bool)

(assert (=> b!6871740 (= res!2802418 e!4142001)))

(declare-fun res!2802417 () Bool)

(assert (=> b!6871740 (=> (not res!2802417) (not e!4142001))))

(assert (=> b!6871740 (= res!2802417 (is-Cons!66277 zl!343))))

(declare-fun matchRSpec!3801 (Regex!16700 List!66400) Bool)

(assert (=> b!6871740 (= lt!2458382 (matchRSpec!3801 r!7292 s!2326))))

(declare-fun matchR!8883 (Regex!16700 List!66400) Bool)

(assert (=> b!6871740 (= lt!2458382 (matchR!8883 r!7292 s!2326))))

(declare-fun lt!2458370 () Unit!160177)

(declare-fun mainMatchTheorem!3801 (Regex!16700 List!66400) Unit!160177)

(assert (=> b!6871740 (= lt!2458370 (mainMatchTheorem!3801 r!7292 s!2326))))

(declare-fun b!6871741 () Bool)

(assert (=> b!6871741 (= e!4142001 (isEmpty!38631 (t!380144 zl!343)))))

(declare-fun b!6871742 () Bool)

(declare-fun tp!1887260 () Bool)

(declare-fun tp!1887258 () Bool)

(assert (=> b!6871742 (= e!4142012 (and tp!1887260 tp!1887258))))

(declare-fun b!6871743 () Bool)

(declare-fun tp!1887253 () Bool)

(declare-fun tp!1887254 () Bool)

(assert (=> b!6871743 (= e!4142012 (and tp!1887253 tp!1887254))))

(assert (=> b!6871744 (= e!4142002 e!4142010)))

(declare-fun res!2802416 () Bool)

(assert (=> b!6871744 (=> res!2802416 e!4142010)))

(declare-fun forall!15895 (List!66399 Int) Bool)

(assert (=> b!6871744 (= res!2802416 (not (forall!15895 (exprs!6584 lt!2458377) lambda!388816)))))

(assert (=> b!6871744 (forall!15895 (exprs!6584 lt!2458377) lambda!388816)))

(declare-fun lt!2458378 () Unit!160177)

(declare-fun lemmaContextForallValidExprs!75 (Context!12168 List!66399) Unit!160177)

(assert (=> b!6871744 (= lt!2458378 (lemmaContextForallValidExprs!75 lt!2458377 (exprs!6584 lt!2458377)))))

(declare-fun getWitness!979 (List!66401 Int) Context!12168)

(assert (=> b!6871744 (= lt!2458377 (getWitness!979 zl!343 lambda!388815))))

(declare-fun setNonEmpty!47244 () Bool)

(declare-fun e!4142004 () Bool)

(declare-fun tp!1887261 () Bool)

(declare-fun setElem!47244 () Context!12168)

(assert (=> setNonEmpty!47244 (= setRes!47244 (and tp!1887261 (inv!84998 setElem!47244) e!4142004))))

(declare-fun setRest!47244 () (Set Context!12168))

(assert (=> setNonEmpty!47244 (= z!1189 (set.union (set.insert setElem!47244 (as set.empty (Set Context!12168))) setRest!47244))))

(declare-fun setIsEmpty!47244 () Bool)

(assert (=> setIsEmpty!47244 setRes!47244))

(declare-fun b!6871745 () Bool)

(declare-fun res!2802421 () Bool)

(assert (=> b!6871745 (=> res!2802421 e!4142005)))

(assert (=> b!6871745 (= res!2802421 (exists!2836 lt!2458369 lambda!388814))))

(declare-fun b!6871746 () Bool)

(declare-fun res!2802411 () Bool)

(assert (=> b!6871746 (=> (not res!2802411) (not e!4142006))))

(declare-fun unfocusZipper!2442 (List!66401) Regex!16700)

(assert (=> b!6871746 (= res!2802411 (= r!7292 (unfocusZipper!2442 zl!343)))))

(declare-fun b!6871747 () Bool)

(declare-fun tp!1887252 () Bool)

(assert (=> b!6871747 (= e!4142003 (and tp_is_empty!42653 tp!1887252))))

(declare-fun b!6871748 () Bool)

(declare-fun tp!1887259 () Bool)

(assert (=> b!6871748 (= e!4142004 tp!1887259)))

(declare-fun b!6871749 () Bool)

(declare-fun contains!20356 (List!66401 Context!12168) Bool)

(assert (=> b!6871749 (= e!4142007 (contains!20356 zl!343 lt!2458377))))

(declare-fun lt!2458375 () Regex!16700)

(declare-fun lt!2458380 () (Set Context!12168))

(declare-fun matchZipper!2666 ((Set Context!12168) List!66400) Bool)

(assert (=> b!6871749 (= (matchR!8883 lt!2458375 s!2326) (matchZipper!2666 lt!2458380 s!2326))))

(declare-fun lt!2458372 () Unit!160177)

(declare-fun theoremZipperRegexEquiv!962 ((Set Context!12168) List!66401 Regex!16700 List!66400) Unit!160177)

(assert (=> b!6871749 (= lt!2458372 (theoremZipperRegexEquiv!962 lt!2458380 lt!2458381 lt!2458375 s!2326))))

(declare-fun generalisedConcat!2288 (List!66399) Regex!16700)

(assert (=> b!6871749 (= lt!2458375 (generalisedConcat!2288 (exprs!6584 lt!2458377)))))

(assert (=> b!6871749 (= lt!2458380 (set.insert lt!2458377 (as set.empty (Set Context!12168))))))

(declare-fun b!6871750 () Bool)

(declare-fun res!2802409 () Bool)

(assert (=> b!6871750 (=> res!2802409 e!4142005)))

(assert (=> b!6871750 (= res!2802409 (not (matchZipper!2666 z!1189 s!2326)))))

(assert (= (and start!663082 res!2802420) b!6871737))

(assert (= (and b!6871737 res!2802414) b!6871746))

(assert (= (and b!6871746 res!2802411) b!6871740))

(assert (= (and b!6871740 res!2802417) b!6871741))

(assert (= (and b!6871740 (not res!2802418)) b!6871732))

(assert (= (and b!6871732 (not res!2802419)) b!6871733))

(assert (= (and b!6871733 (not res!2802415)) b!6871730))

(assert (= (and b!6871730 (not res!2802413)) b!6871745))

(assert (= (and b!6871745 (not res!2802421)) b!6871750))

(assert (= (and b!6871750 (not res!2802409)) b!6871736))

(assert (= (and b!6871736 (not res!2802412)) b!6871744))

(assert (= (and b!6871744 (not res!2802416)) b!6871738))

(assert (= (and b!6871738 (not res!2802410)) b!6871749))

(assert (= (and start!663082 (is-ElementMatch!16700 r!7292)) b!6871735))

(assert (= (and start!663082 (is-Concat!25545 r!7292)) b!6871742))

(assert (= (and start!663082 (is-Star!16700 r!7292)) b!6871731))

(assert (= (and start!663082 (is-Union!16700 r!7292)) b!6871743))

(assert (= (and start!663082 condSetEmpty!47244) setIsEmpty!47244))

(assert (= (and start!663082 (not condSetEmpty!47244)) setNonEmpty!47244))

(assert (= setNonEmpty!47244 b!6871748))

(assert (= b!6871739 b!6871734))

(assert (= (and start!663082 (is-Cons!66277 zl!343)) b!6871739))

(assert (= (and start!663082 (is-Cons!66276 s!2326)) b!6871747))

(declare-fun m!7602008 () Bool)

(assert (=> b!6871738 m!7602008))

(declare-fun m!7602010 () Bool)

(assert (=> b!6871738 m!7602010))

(declare-fun m!7602012 () Bool)

(assert (=> b!6871738 m!7602012))

(declare-fun m!7602014 () Bool)

(assert (=> b!6871738 m!7602014))

(declare-fun m!7602016 () Bool)

(assert (=> b!6871744 m!7602016))

(assert (=> b!6871744 m!7602016))

(declare-fun m!7602018 () Bool)

(assert (=> b!6871744 m!7602018))

(declare-fun m!7602020 () Bool)

(assert (=> b!6871744 m!7602020))

(declare-fun m!7602022 () Bool)

(assert (=> b!6871733 m!7602022))

(declare-fun m!7602024 () Bool)

(assert (=> b!6871750 m!7602024))

(declare-fun m!7602026 () Bool)

(assert (=> b!6871745 m!7602026))

(declare-fun m!7602028 () Bool)

(assert (=> start!663082 m!7602028))

(declare-fun m!7602030 () Bool)

(assert (=> b!6871740 m!7602030))

(declare-fun m!7602032 () Bool)

(assert (=> b!6871740 m!7602032))

(declare-fun m!7602034 () Bool)

(assert (=> b!6871740 m!7602034))

(declare-fun m!7602036 () Bool)

(assert (=> b!6871749 m!7602036))

(declare-fun m!7602038 () Bool)

(assert (=> b!6871749 m!7602038))

(declare-fun m!7602040 () Bool)

(assert (=> b!6871749 m!7602040))

(declare-fun m!7602042 () Bool)

(assert (=> b!6871749 m!7602042))

(declare-fun m!7602044 () Bool)

(assert (=> b!6871749 m!7602044))

(declare-fun m!7602046 () Bool)

(assert (=> b!6871749 m!7602046))

(assert (=> b!6871730 m!7602026))

(declare-fun m!7602048 () Bool)

(assert (=> b!6871730 m!7602048))

(declare-fun m!7602050 () Bool)

(assert (=> b!6871730 m!7602050))

(declare-fun m!7602052 () Bool)

(assert (=> b!6871736 m!7602052))

(assert (=> b!6871736 m!7602052))

(declare-fun m!7602054 () Bool)

(assert (=> b!6871736 m!7602054))

(declare-fun m!7602056 () Bool)

(assert (=> b!6871737 m!7602056))

(declare-fun m!7602058 () Bool)

(assert (=> setNonEmpty!47244 m!7602058))

(declare-fun m!7602060 () Bool)

(assert (=> b!6871746 m!7602060))

(assert (=> b!6871741 m!7602022))

(declare-fun m!7602062 () Bool)

(assert (=> b!6871739 m!7602062))

(push 1)

(assert (not b!6871740))

(assert (not b!6871743))

(assert (not b!6871733))

(assert (not b!6871741))

(assert (not start!663082))

(assert (not b!6871738))

(assert (not b!6871746))

(assert (not setNonEmpty!47244))

(assert (not b!6871750))

(assert (not b!6871734))

(assert (not b!6871739))

(assert tp_is_empty!42653)

(assert (not b!6871742))

(assert (not b!6871744))

(assert (not b!6871745))

(assert (not b!6871731))

(assert (not b!6871736))

(assert (not b!6871749))

(assert (not b!6871737))

(assert (not b!6871748))

(assert (not b!6871747))

(assert (not b!6871730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2158668 () Bool)

(declare-fun e!4142055 () Bool)

(assert (=> d!2158668 e!4142055))

(declare-fun res!2802467 () Bool)

(assert (=> d!2158668 (=> (not res!2802467) (not e!4142055))))

(declare-fun lt!2458427 () List!66401)

(declare-fun noDuplicate!2462 (List!66401) Bool)

(assert (=> d!2158668 (= res!2802467 (noDuplicate!2462 lt!2458427))))

(declare-fun choose!51192 ((Set Context!12168)) List!66401)

(assert (=> d!2158668 (= lt!2458427 (choose!51192 z!1189))))

(assert (=> d!2158668 (= (toList!10484 z!1189) lt!2458427)))

(declare-fun b!6871828 () Bool)

(declare-fun content!13011 (List!66401) (Set Context!12168))

(assert (=> b!6871828 (= e!4142055 (= (content!13011 lt!2458427) z!1189))))

(assert (= (and d!2158668 res!2802467) b!6871828))

(declare-fun m!7602120 () Bool)

(assert (=> d!2158668 m!7602120))

(declare-fun m!7602122 () Bool)

(assert (=> d!2158668 m!7602122))

(declare-fun m!7602124 () Bool)

(assert (=> b!6871828 m!7602124))

(assert (=> b!6871737 d!2158668))

(declare-fun bs!1837296 () Bool)

(declare-fun d!2158670 () Bool)

(assert (= bs!1837296 (and d!2158670 b!6871730)))

(declare-fun lambda!388836 () Int)

(assert (=> bs!1837296 (not (= lambda!388836 lambda!388814))))

(declare-fun bs!1837297 () Bool)

(assert (= bs!1837297 (and d!2158670 b!6871744)))

(assert (=> bs!1837297 (not (= lambda!388836 lambda!388816))))

(assert (=> d!2158670 true))

(declare-fun order!27733 () Int)

(declare-fun dynLambda!26533 (Int Int) Int)

(assert (=> d!2158670 (< (dynLambda!26533 order!27733 lambda!388814) (dynLambda!26533 order!27733 lambda!388836))))

(assert (=> d!2158670 (= (exists!2836 lt!2458369 lambda!388814) (not (forall!15895 lt!2458369 lambda!388836)))))

(declare-fun bs!1837298 () Bool)

(assert (= bs!1837298 d!2158670))

(declare-fun m!7602126 () Bool)

(assert (=> bs!1837298 m!7602126))

(assert (=> b!6871745 d!2158670))

(declare-fun bs!1837299 () Bool)

(declare-fun d!2158672 () Bool)

(assert (= bs!1837299 (and d!2158672 b!6871736)))

(declare-fun lambda!388839 () Int)

(assert (=> bs!1837299 (not (= lambda!388839 lambda!388815))))

(assert (=> d!2158672 true))

(declare-fun order!27735 () Int)

(declare-fun dynLambda!26534 (Int Int) Int)

(assert (=> d!2158672 (< (dynLambda!26534 order!27735 lambda!388815) (dynLambda!26534 order!27735 lambda!388839))))

(declare-fun forall!15897 (List!66401 Int) Bool)

(assert (=> d!2158672 (= (exists!2837 zl!343 lambda!388815) (not (forall!15897 zl!343 lambda!388839)))))

(declare-fun bs!1837300 () Bool)

(assert (= bs!1837300 d!2158672))

(declare-fun m!7602128 () Bool)

(assert (=> bs!1837300 m!7602128))

(assert (=> b!6871736 d!2158672))

(declare-fun bs!1837301 () Bool)

(declare-fun d!2158674 () Bool)

(assert (= bs!1837301 (and d!2158674 b!6871736)))

(declare-fun lambda!388842 () Int)

(assert (=> bs!1837301 (= lambda!388842 lambda!388815)))

(declare-fun bs!1837302 () Bool)

(assert (= bs!1837302 (and d!2158674 d!2158672)))

(assert (=> bs!1837302 (not (= lambda!388842 lambda!388839))))

(assert (=> d!2158674 true))

(assert (=> d!2158674 (exists!2837 zl!343 lambda!388842)))

(declare-fun lt!2458430 () Unit!160177)

(declare-fun choose!51193 (List!66401 List!66400) Unit!160177)

(assert (=> d!2158674 (= lt!2458430 (choose!51193 zl!343 s!2326))))

(assert (=> d!2158674 (matchZipper!2666 (content!13011 zl!343) s!2326)))

(assert (=> d!2158674 (= (lemmaZipperMatchesExistsMatchingContext!99 zl!343 s!2326) lt!2458430)))

(declare-fun bs!1837303 () Bool)

(assert (= bs!1837303 d!2158674))

(declare-fun m!7602130 () Bool)

(assert (=> bs!1837303 m!7602130))

(declare-fun m!7602132 () Bool)

(assert (=> bs!1837303 m!7602132))

(declare-fun m!7602134 () Bool)

(assert (=> bs!1837303 m!7602134))

(assert (=> bs!1837303 m!7602134))

(declare-fun m!7602136 () Bool)

(assert (=> bs!1837303 m!7602136))

(assert (=> b!6871736 d!2158674))

(declare-fun bs!1837304 () Bool)

(declare-fun d!2158676 () Bool)

(assert (= bs!1837304 (and d!2158676 b!6871730)))

(declare-fun lambda!388845 () Int)

(assert (=> bs!1837304 (not (= lambda!388845 lambda!388814))))

(declare-fun bs!1837305 () Bool)

(assert (= bs!1837305 (and d!2158676 b!6871744)))

(assert (=> bs!1837305 (= lambda!388845 lambda!388816)))

(declare-fun bs!1837306 () Bool)

(assert (= bs!1837306 (and d!2158676 d!2158670)))

(assert (=> bs!1837306 (not (= lambda!388845 lambda!388836))))

(assert (=> d!2158676 (= (inv!84998 (h!72725 zl!343)) (forall!15895 (exprs!6584 (h!72725 zl!343)) lambda!388845))))

(declare-fun bs!1837307 () Bool)

(assert (= bs!1837307 d!2158676))

(declare-fun m!7602138 () Bool)

(assert (=> bs!1837307 m!7602138))

(assert (=> b!6871739 d!2158676))

(declare-fun d!2158678 () Bool)

(declare-fun lt!2458433 () Int)

(assert (=> d!2158678 (>= lt!2458433 0)))

(declare-fun e!4142058 () Int)

(assert (=> d!2158678 (= lt!2458433 e!4142058)))

(declare-fun c!1278828 () Bool)

(assert (=> d!2158678 (= c!1278828 (is-Cons!66277 lt!2458381))))

(assert (=> d!2158678 (= (zipperDepthTotal!449 lt!2458381) lt!2458433)))

(declare-fun b!6871837 () Bool)

(assert (=> b!6871837 (= e!4142058 (+ (contextDepthTotal!421 (h!72725 lt!2458381)) (zipperDepthTotal!449 (t!380144 lt!2458381))))))

(declare-fun b!6871838 () Bool)

(assert (=> b!6871838 (= e!4142058 0)))

(assert (= (and d!2158678 c!1278828) b!6871837))

(assert (= (and d!2158678 (not c!1278828)) b!6871838))

(declare-fun m!7602140 () Bool)

(assert (=> b!6871837 m!7602140))

(declare-fun m!7602142 () Bool)

(assert (=> b!6871837 m!7602142))

(assert (=> b!6871738 d!2158678))

(declare-fun d!2158680 () Bool)

(declare-fun lt!2458434 () Int)

(assert (=> d!2158680 (>= lt!2458434 0)))

(declare-fun e!4142059 () Int)

(assert (=> d!2158680 (= lt!2458434 e!4142059)))

(declare-fun c!1278829 () Bool)

(assert (=> d!2158680 (= c!1278829 (is-Cons!66277 zl!343))))

(assert (=> d!2158680 (= (zipperDepthTotal!449 zl!343) lt!2458434)))

(declare-fun b!6871839 () Bool)

(assert (=> b!6871839 (= e!4142059 (+ (contextDepthTotal!421 (h!72725 zl!343)) (zipperDepthTotal!449 (t!380144 zl!343))))))

(declare-fun b!6871840 () Bool)

(assert (=> b!6871840 (= e!4142059 0)))

(assert (= (and d!2158680 c!1278829) b!6871839))

(assert (= (and d!2158680 (not c!1278829)) b!6871840))

(declare-fun m!7602144 () Bool)

(assert (=> b!6871839 m!7602144))

(declare-fun m!7602146 () Bool)

(assert (=> b!6871839 m!7602146))

(assert (=> b!6871738 d!2158680))

(declare-fun d!2158682 () Bool)

(declare-fun lt!2458437 () Int)

(assert (=> d!2158682 (>= lt!2458437 0)))

(declare-fun e!4142062 () Int)

(assert (=> d!2158682 (= lt!2458437 e!4142062)))

(declare-fun c!1278833 () Bool)

(assert (=> d!2158682 (= c!1278833 (is-Cons!66275 (exprs!6584 lt!2458377)))))

(assert (=> d!2158682 (= (contextDepthTotal!421 lt!2458377) lt!2458437)))

(declare-fun b!6871845 () Bool)

(declare-fun regexDepthTotal!264 (Regex!16700) Int)

(assert (=> b!6871845 (= e!4142062 (+ (regexDepthTotal!264 (h!72723 (exprs!6584 lt!2458377))) (contextDepthTotal!421 (Context!12169 (t!380142 (exprs!6584 lt!2458377))))))))

(declare-fun b!6871846 () Bool)

(assert (=> b!6871846 (= e!4142062 1)))

(assert (= (and d!2158682 c!1278833) b!6871845))

(assert (= (and d!2158682 (not c!1278833)) b!6871846))

(declare-fun m!7602148 () Bool)

(assert (=> b!6871845 m!7602148))

(declare-fun m!7602150 () Bool)

(assert (=> b!6871845 m!7602150))

(assert (=> b!6871738 d!2158682))

(declare-fun d!2158684 () Bool)

(assert (=> d!2158684 (< (contextDepthTotal!421 lt!2458377) (zipperDepthTotal!449 zl!343))))

(declare-fun lt!2458440 () Unit!160177)

(declare-fun choose!51194 (List!66401 Context!12168) Unit!160177)

(assert (=> d!2158684 (= lt!2458440 (choose!51194 zl!343 lt!2458377))))

(assert (=> d!2158684 (contains!20356 zl!343 lt!2458377)))

(assert (=> d!2158684 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!53 zl!343 lt!2458377) lt!2458440)))

(declare-fun bs!1837308 () Bool)

(assert (= bs!1837308 d!2158684))

(assert (=> bs!1837308 m!7602012))

(assert (=> bs!1837308 m!7602010))

(declare-fun m!7602152 () Bool)

(assert (=> bs!1837308 m!7602152))

(assert (=> bs!1837308 m!7602044))

(assert (=> b!6871738 d!2158684))

(declare-fun d!2158688 () Bool)

(declare-fun lt!2458443 () Regex!16700)

(assert (=> d!2158688 (validRegex!8436 lt!2458443)))

(declare-fun generalisedUnion!2533 (List!66399) Regex!16700)

(assert (=> d!2158688 (= lt!2458443 (generalisedUnion!2533 (unfocusZipperList!2117 zl!343)))))

(assert (=> d!2158688 (= (unfocusZipper!2442 zl!343) lt!2458443)))

(declare-fun bs!1837309 () Bool)

(assert (= bs!1837309 d!2158688))

(declare-fun m!7602154 () Bool)

(assert (=> bs!1837309 m!7602154))

(assert (=> bs!1837309 m!7602050))

(assert (=> bs!1837309 m!7602050))

(declare-fun m!7602156 () Bool)

(assert (=> bs!1837309 m!7602156))

(assert (=> b!6871746 d!2158688))

(declare-fun d!2158690 () Bool)

(declare-fun c!1278837 () Bool)

(declare-fun isEmpty!38633 (List!66400) Bool)

(assert (=> d!2158690 (= c!1278837 (isEmpty!38633 s!2326))))

(declare-fun e!4142065 () Bool)

(assert (=> d!2158690 (= (matchZipper!2666 z!1189 s!2326) e!4142065)))

(declare-fun b!6871851 () Bool)

(declare-fun nullableZipper!2371 ((Set Context!12168)) Bool)

(assert (=> b!6871851 (= e!4142065 (nullableZipper!2371 z!1189))))

(declare-fun b!6871852 () Bool)

(declare-fun derivationStepZipper!2618 ((Set Context!12168) C!33670) (Set Context!12168))

(declare-fun head!13782 (List!66400) C!33670)

(declare-fun tail!12837 (List!66400) List!66400)

(assert (=> b!6871852 (= e!4142065 (matchZipper!2666 (derivationStepZipper!2618 z!1189 (head!13782 s!2326)) (tail!12837 s!2326)))))

(assert (= (and d!2158690 c!1278837) b!6871851))

(assert (= (and d!2158690 (not c!1278837)) b!6871852))

(declare-fun m!7602158 () Bool)

(assert (=> d!2158690 m!7602158))

(declare-fun m!7602160 () Bool)

(assert (=> b!6871851 m!7602160))

(declare-fun m!7602162 () Bool)

(assert (=> b!6871852 m!7602162))

(assert (=> b!6871852 m!7602162))

(declare-fun m!7602164 () Bool)

(assert (=> b!6871852 m!7602164))

(declare-fun m!7602166 () Bool)

(assert (=> b!6871852 m!7602166))

(assert (=> b!6871852 m!7602164))

(assert (=> b!6871852 m!7602166))

(declare-fun m!7602168 () Bool)

(assert (=> b!6871852 m!7602168))

(assert (=> b!6871750 d!2158690))

(declare-fun d!2158692 () Bool)

(assert (=> d!2158692 (= (isEmpty!38631 (t!380144 zl!343)) (is-Nil!66277 (t!380144 zl!343)))))

(assert (=> b!6871741 d!2158692))

(assert (=> b!6871730 d!2158670))

(declare-fun bs!1837310 () Bool)

(declare-fun d!2158694 () Bool)

(assert (= bs!1837310 (and d!2158694 b!6871730)))

(declare-fun lambda!388850 () Int)

(assert (=> bs!1837310 (not (= lambda!388850 lambda!388814))))

(declare-fun bs!1837311 () Bool)

(assert (= bs!1837311 (and d!2158694 b!6871744)))

(assert (=> bs!1837311 (= lambda!388850 lambda!388816)))

(declare-fun bs!1837312 () Bool)

(assert (= bs!1837312 (and d!2158694 d!2158670)))

(assert (=> bs!1837312 (not (= lambda!388850 lambda!388836))))

(declare-fun bs!1837313 () Bool)

(assert (= bs!1837313 (and d!2158694 d!2158676)))

(assert (=> bs!1837313 (= lambda!388850 lambda!388845)))

(declare-fun bs!1837314 () Bool)

(assert (= bs!1837314 d!2158694))

(declare-fun lambda!388851 () Int)

(assert (=> bs!1837314 (not (= lambda!388851 lambda!388850))))

(assert (=> bs!1837311 (not (= lambda!388851 lambda!388816))))

(assert (=> bs!1837310 (= lambda!388851 lambda!388814)))

(assert (=> bs!1837313 (not (= lambda!388851 lambda!388845))))

(assert (=> bs!1837312 (not (= lambda!388851 lambda!388836))))

(assert (=> d!2158694 true))

(assert (=> d!2158694 (= (matchR!8883 r!7292 s!2326) (exists!2836 lt!2458369 lambda!388851))))

(declare-fun lt!2458446 () Unit!160177)

(declare-fun choose!51195 (Regex!16700 List!66399 List!66400) Unit!160177)

(assert (=> d!2158694 (= lt!2458446 (choose!51195 r!7292 lt!2458369 s!2326))))

(assert (=> d!2158694 (forall!15895 lt!2458369 lambda!388850)))

(assert (=> d!2158694 (= (matchRGenUnionSpec!339 r!7292 lt!2458369 s!2326) lt!2458446)))

(assert (=> bs!1837314 m!7602032))

(declare-fun m!7602170 () Bool)

(assert (=> bs!1837314 m!7602170))

(declare-fun m!7602172 () Bool)

(assert (=> bs!1837314 m!7602172))

(declare-fun m!7602174 () Bool)

(assert (=> bs!1837314 m!7602174))

(assert (=> b!6871730 d!2158694))

(declare-fun bs!1837315 () Bool)

(declare-fun d!2158696 () Bool)

(assert (= bs!1837315 (and d!2158696 d!2158694)))

(declare-fun lambda!388854 () Int)

(assert (=> bs!1837315 (= lambda!388854 lambda!388850)))

(declare-fun bs!1837316 () Bool)

(assert (= bs!1837316 (and d!2158696 b!6871744)))

(assert (=> bs!1837316 (= lambda!388854 lambda!388816)))

(declare-fun bs!1837317 () Bool)

(assert (= bs!1837317 (and d!2158696 b!6871730)))

(assert (=> bs!1837317 (not (= lambda!388854 lambda!388814))))

(assert (=> bs!1837315 (not (= lambda!388854 lambda!388851))))

(declare-fun bs!1837318 () Bool)

(assert (= bs!1837318 (and d!2158696 d!2158676)))

(assert (=> bs!1837318 (= lambda!388854 lambda!388845)))

(declare-fun bs!1837319 () Bool)

(assert (= bs!1837319 (and d!2158696 d!2158670)))

(assert (=> bs!1837319 (not (= lambda!388854 lambda!388836))))

(declare-fun lt!2458449 () List!66399)

(assert (=> d!2158696 (forall!15895 lt!2458449 lambda!388854)))

(declare-fun e!4142084 () List!66399)

(assert (=> d!2158696 (= lt!2458449 e!4142084)))

(declare-fun c!1278848 () Bool)

(assert (=> d!2158696 (= c!1278848 (is-Cons!66277 zl!343))))

(assert (=> d!2158696 (= (unfocusZipperList!2117 zl!343) lt!2458449)))

(declare-fun b!6871881 () Bool)

(assert (=> b!6871881 (= e!4142084 (Cons!66275 (generalisedConcat!2288 (exprs!6584 (h!72725 zl!343))) (unfocusZipperList!2117 (t!380144 zl!343))))))

(declare-fun b!6871882 () Bool)

(assert (=> b!6871882 (= e!4142084 Nil!66275)))

(assert (= (and d!2158696 c!1278848) b!6871881))

(assert (= (and d!2158696 (not c!1278848)) b!6871882))

(declare-fun m!7602176 () Bool)

(assert (=> d!2158696 m!7602176))

(declare-fun m!7602178 () Bool)

(assert (=> b!6871881 m!7602178))

(declare-fun m!7602180 () Bool)

(assert (=> b!6871881 m!7602180))

(assert (=> b!6871730 d!2158696))

(declare-fun bs!1837320 () Bool)

(declare-fun d!2158698 () Bool)

(assert (= bs!1837320 (and d!2158698 d!2158694)))

(declare-fun lambda!388861 () Int)

(assert (=> bs!1837320 (= lambda!388861 lambda!388850)))

(declare-fun bs!1837321 () Bool)

(assert (= bs!1837321 (and d!2158698 b!6871744)))

(assert (=> bs!1837321 (= lambda!388861 lambda!388816)))

(declare-fun bs!1837322 () Bool)

(assert (= bs!1837322 (and d!2158698 b!6871730)))

(assert (=> bs!1837322 (not (= lambda!388861 lambda!388814))))

(assert (=> bs!1837320 (not (= lambda!388861 lambda!388851))))

(declare-fun bs!1837323 () Bool)

(assert (= bs!1837323 (and d!2158698 d!2158676)))

(assert (=> bs!1837323 (= lambda!388861 lambda!388845)))

(declare-fun bs!1837324 () Bool)

(assert (= bs!1837324 (and d!2158698 d!2158670)))

(assert (=> bs!1837324 (not (= lambda!388861 lambda!388836))))

(declare-fun bs!1837325 () Bool)

(assert (= bs!1837325 (and d!2158698 d!2158696)))

(assert (=> bs!1837325 (= lambda!388861 lambda!388854)))

(declare-fun b!6871913 () Bool)

(declare-fun e!4142106 () Bool)

(declare-fun lt!2458452 () Regex!16700)

(declare-fun isConcat!1541 (Regex!16700) Bool)

(assert (=> b!6871913 (= e!4142106 (isConcat!1541 lt!2458452))))

(declare-fun b!6871914 () Bool)

(declare-fun e!4142104 () Bool)

(declare-fun e!4142103 () Bool)

(assert (=> b!6871914 (= e!4142104 e!4142103)))

(declare-fun c!1278860 () Bool)

(declare-fun isEmpty!38634 (List!66399) Bool)

(assert (=> b!6871914 (= c!1278860 (isEmpty!38634 (exprs!6584 lt!2458377)))))

(declare-fun b!6871915 () Bool)

(declare-fun e!4142102 () Regex!16700)

(assert (=> b!6871915 (= e!4142102 (h!72723 (exprs!6584 lt!2458377)))))

(declare-fun b!6871916 () Bool)

(declare-fun e!4142101 () Bool)

(assert (=> b!6871916 (= e!4142101 (isEmpty!38634 (t!380142 (exprs!6584 lt!2458377))))))

(assert (=> d!2158698 e!4142104))

(declare-fun res!2802490 () Bool)

(assert (=> d!2158698 (=> (not res!2802490) (not e!4142104))))

(assert (=> d!2158698 (= res!2802490 (validRegex!8436 lt!2458452))))

(assert (=> d!2158698 (= lt!2458452 e!4142102)))

(declare-fun c!1278859 () Bool)

(assert (=> d!2158698 (= c!1278859 e!4142101)))

(declare-fun res!2802491 () Bool)

(assert (=> d!2158698 (=> (not res!2802491) (not e!4142101))))

(assert (=> d!2158698 (= res!2802491 (is-Cons!66275 (exprs!6584 lt!2458377)))))

(assert (=> d!2158698 (forall!15895 (exprs!6584 lt!2458377) lambda!388861)))

(assert (=> d!2158698 (= (generalisedConcat!2288 (exprs!6584 lt!2458377)) lt!2458452)))

(declare-fun b!6871917 () Bool)

(declare-fun isEmptyExpr!2018 (Regex!16700) Bool)

(assert (=> b!6871917 (= e!4142103 (isEmptyExpr!2018 lt!2458452))))

(declare-fun b!6871918 () Bool)

(assert (=> b!6871918 (= e!4142103 e!4142106)))

(declare-fun c!1278858 () Bool)

(declare-fun tail!12838 (List!66399) List!66399)

(assert (=> b!6871918 (= c!1278858 (isEmpty!38634 (tail!12838 (exprs!6584 lt!2458377))))))

(declare-fun b!6871919 () Bool)

(declare-fun e!4142105 () Regex!16700)

(assert (=> b!6871919 (= e!4142105 EmptyExpr!16700)))

(declare-fun b!6871920 () Bool)

(assert (=> b!6871920 (= e!4142105 (Concat!25545 (h!72723 (exprs!6584 lt!2458377)) (generalisedConcat!2288 (t!380142 (exprs!6584 lt!2458377)))))))

(declare-fun b!6871921 () Bool)

(declare-fun head!13783 (List!66399) Regex!16700)

(assert (=> b!6871921 (= e!4142106 (= lt!2458452 (head!13783 (exprs!6584 lt!2458377))))))

(declare-fun b!6871922 () Bool)

(assert (=> b!6871922 (= e!4142102 e!4142105)))

(declare-fun c!1278857 () Bool)

(assert (=> b!6871922 (= c!1278857 (is-Cons!66275 (exprs!6584 lt!2458377)))))

(assert (= (and d!2158698 res!2802491) b!6871916))

(assert (= (and d!2158698 c!1278859) b!6871915))

(assert (= (and d!2158698 (not c!1278859)) b!6871922))

(assert (= (and b!6871922 c!1278857) b!6871920))

(assert (= (and b!6871922 (not c!1278857)) b!6871919))

(assert (= (and d!2158698 res!2802490) b!6871914))

(assert (= (and b!6871914 c!1278860) b!6871917))

(assert (= (and b!6871914 (not c!1278860)) b!6871918))

(assert (= (and b!6871918 c!1278858) b!6871921))

(assert (= (and b!6871918 (not c!1278858)) b!6871913))

(declare-fun m!7602182 () Bool)

(assert (=> b!6871917 m!7602182))

(declare-fun m!7602184 () Bool)

(assert (=> d!2158698 m!7602184))

(declare-fun m!7602186 () Bool)

(assert (=> d!2158698 m!7602186))

(declare-fun m!7602188 () Bool)

(assert (=> b!6871918 m!7602188))

(assert (=> b!6871918 m!7602188))

(declare-fun m!7602190 () Bool)

(assert (=> b!6871918 m!7602190))

(declare-fun m!7602192 () Bool)

(assert (=> b!6871920 m!7602192))

(declare-fun m!7602194 () Bool)

(assert (=> b!6871914 m!7602194))

(declare-fun m!7602196 () Bool)

(assert (=> b!6871916 m!7602196))

(declare-fun m!7602198 () Bool)

(assert (=> b!6871921 m!7602198))

(declare-fun m!7602200 () Bool)

(assert (=> b!6871913 m!7602200))

(assert (=> b!6871749 d!2158698))

(declare-fun d!2158700 () Bool)

(declare-fun lt!2458455 () Bool)

(assert (=> d!2158700 (= lt!2458455 (set.member lt!2458377 (content!13011 zl!343)))))

(declare-fun e!4142111 () Bool)

(assert (=> d!2158700 (= lt!2458455 e!4142111)))

(declare-fun res!2802497 () Bool)

(assert (=> d!2158700 (=> (not res!2802497) (not e!4142111))))

(assert (=> d!2158700 (= res!2802497 (is-Cons!66277 zl!343))))

(assert (=> d!2158700 (= (contains!20356 zl!343 lt!2458377) lt!2458455)))

(declare-fun b!6871927 () Bool)

(declare-fun e!4142112 () Bool)

(assert (=> b!6871927 (= e!4142111 e!4142112)))

(declare-fun res!2802496 () Bool)

(assert (=> b!6871927 (=> res!2802496 e!4142112)))

(assert (=> b!6871927 (= res!2802496 (= (h!72725 zl!343) lt!2458377))))

(declare-fun b!6871928 () Bool)

(assert (=> b!6871928 (= e!4142112 (contains!20356 (t!380144 zl!343) lt!2458377))))

(assert (= (and d!2158700 res!2802497) b!6871927))

(assert (= (and b!6871927 (not res!2802496)) b!6871928))

(assert (=> d!2158700 m!7602134))

(declare-fun m!7602202 () Bool)

(assert (=> d!2158700 m!7602202))

(declare-fun m!7602204 () Bool)

(assert (=> b!6871928 m!7602204))

(assert (=> b!6871749 d!2158700))

(declare-fun b!6871972 () Bool)

(declare-fun res!2802524 () Bool)

(declare-fun e!4142139 () Bool)

(assert (=> b!6871972 (=> res!2802524 e!4142139)))

(assert (=> b!6871972 (= res!2802524 (not (is-ElementMatch!16700 lt!2458375)))))

(declare-fun e!4142140 () Bool)

(assert (=> b!6871972 (= e!4142140 e!4142139)))

(declare-fun b!6871973 () Bool)

(declare-fun res!2802523 () Bool)

(declare-fun e!4142136 () Bool)

(assert (=> b!6871973 (=> res!2802523 e!4142136)))

(assert (=> b!6871973 (= res!2802523 (not (isEmpty!38633 (tail!12837 s!2326))))))

(declare-fun b!6871974 () Bool)

(declare-fun e!4142134 () Bool)

(assert (=> b!6871974 (= e!4142139 e!4142134)))

(declare-fun res!2802520 () Bool)

(assert (=> b!6871974 (=> (not res!2802520) (not e!4142134))))

(declare-fun lt!2458458 () Bool)

(assert (=> b!6871974 (= res!2802520 (not lt!2458458))))

(declare-fun b!6871975 () Bool)

(assert (=> b!6871975 (= e!4142140 (not lt!2458458))))

(declare-fun b!6871976 () Bool)

(declare-fun res!2802517 () Bool)

(assert (=> b!6871976 (=> res!2802517 e!4142139)))

(declare-fun e!4142137 () Bool)

(assert (=> b!6871976 (= res!2802517 e!4142137)))

(declare-fun res!2802518 () Bool)

(assert (=> b!6871976 (=> (not res!2802518) (not e!4142137))))

(assert (=> b!6871976 (= res!2802518 lt!2458458)))

(declare-fun b!6871977 () Bool)

(assert (=> b!6871977 (= e!4142134 e!4142136)))

(declare-fun res!2802519 () Bool)

(assert (=> b!6871977 (=> res!2802519 e!4142136)))

(declare-fun call!625918 () Bool)

(assert (=> b!6871977 (= res!2802519 call!625918)))

(declare-fun b!6871979 () Bool)

(declare-fun e!4142138 () Bool)

(declare-fun nullable!6659 (Regex!16700) Bool)

(assert (=> b!6871979 (= e!4142138 (nullable!6659 lt!2458375))))

(declare-fun b!6871980 () Bool)

(assert (=> b!6871980 (= e!4142137 (= (head!13782 s!2326) (c!1278820 lt!2458375)))))

(declare-fun bm!625913 () Bool)

(assert (=> bm!625913 (= call!625918 (isEmpty!38633 s!2326))))

(declare-fun b!6871981 () Bool)

(declare-fun derivativeStep!5341 (Regex!16700 C!33670) Regex!16700)

(assert (=> b!6871981 (= e!4142138 (matchR!8883 (derivativeStep!5341 lt!2458375 (head!13782 s!2326)) (tail!12837 s!2326)))))

(declare-fun b!6871982 () Bool)

(assert (=> b!6871982 (= e!4142136 (not (= (head!13782 s!2326) (c!1278820 lt!2458375))))))

(declare-fun b!6871983 () Bool)

(declare-fun res!2802521 () Bool)

(assert (=> b!6871983 (=> (not res!2802521) (not e!4142137))))

(assert (=> b!6871983 (= res!2802521 (not call!625918))))

(declare-fun b!6871984 () Bool)

(declare-fun e!4142135 () Bool)

(assert (=> b!6871984 (= e!4142135 (= lt!2458458 call!625918))))

(declare-fun b!6871985 () Bool)

(assert (=> b!6871985 (= e!4142135 e!4142140)))

(declare-fun c!1278873 () Bool)

(assert (=> b!6871985 (= c!1278873 (is-EmptyLang!16700 lt!2458375))))

(declare-fun d!2158702 () Bool)

(assert (=> d!2158702 e!4142135))

(declare-fun c!1278872 () Bool)

(assert (=> d!2158702 (= c!1278872 (is-EmptyExpr!16700 lt!2458375))))

(assert (=> d!2158702 (= lt!2458458 e!4142138)))

(declare-fun c!1278871 () Bool)

(assert (=> d!2158702 (= c!1278871 (isEmpty!38633 s!2326))))

(assert (=> d!2158702 (validRegex!8436 lt!2458375)))

(assert (=> d!2158702 (= (matchR!8883 lt!2458375 s!2326) lt!2458458)))

(declare-fun b!6871978 () Bool)

(declare-fun res!2802522 () Bool)

(assert (=> b!6871978 (=> (not res!2802522) (not e!4142137))))

(assert (=> b!6871978 (= res!2802522 (isEmpty!38633 (tail!12837 s!2326)))))

(assert (= (and d!2158702 c!1278871) b!6871979))

(assert (= (and d!2158702 (not c!1278871)) b!6871981))

(assert (= (and d!2158702 c!1278872) b!6871984))

(assert (= (and d!2158702 (not c!1278872)) b!6871985))

(assert (= (and b!6871985 c!1278873) b!6871975))

(assert (= (and b!6871985 (not c!1278873)) b!6871972))

(assert (= (and b!6871972 (not res!2802524)) b!6871976))

(assert (= (and b!6871976 res!2802518) b!6871983))

(assert (= (and b!6871983 res!2802521) b!6871978))

(assert (= (and b!6871978 res!2802522) b!6871980))

(assert (= (and b!6871976 (not res!2802517)) b!6871974))

(assert (= (and b!6871974 res!2802520) b!6871977))

(assert (= (and b!6871977 (not res!2802519)) b!6871973))

(assert (= (and b!6871973 (not res!2802523)) b!6871982))

(assert (= (or b!6871984 b!6871977 b!6871983) bm!625913))

(assert (=> b!6871973 m!7602166))

(assert (=> b!6871973 m!7602166))

(declare-fun m!7602214 () Bool)

(assert (=> b!6871973 m!7602214))

(assert (=> d!2158702 m!7602158))

(declare-fun m!7602216 () Bool)

(assert (=> d!2158702 m!7602216))

(assert (=> bm!625913 m!7602158))

(assert (=> b!6871982 m!7602162))

(assert (=> b!6871978 m!7602166))

(assert (=> b!6871978 m!7602166))

(assert (=> b!6871978 m!7602214))

(assert (=> b!6871980 m!7602162))

(declare-fun m!7602218 () Bool)

(assert (=> b!6871979 m!7602218))

(assert (=> b!6871981 m!7602162))

(assert (=> b!6871981 m!7602162))

(declare-fun m!7602220 () Bool)

(assert (=> b!6871981 m!7602220))

(assert (=> b!6871981 m!7602166))

(assert (=> b!6871981 m!7602220))

(assert (=> b!6871981 m!7602166))

(declare-fun m!7602222 () Bool)

(assert (=> b!6871981 m!7602222))

(assert (=> b!6871749 d!2158702))

(declare-fun d!2158706 () Bool)

(declare-fun c!1278874 () Bool)

(assert (=> d!2158706 (= c!1278874 (isEmpty!38633 s!2326))))

(declare-fun e!4142141 () Bool)

(assert (=> d!2158706 (= (matchZipper!2666 lt!2458380 s!2326) e!4142141)))

(declare-fun b!6871986 () Bool)

(assert (=> b!6871986 (= e!4142141 (nullableZipper!2371 lt!2458380))))

(declare-fun b!6871987 () Bool)

(assert (=> b!6871987 (= e!4142141 (matchZipper!2666 (derivationStepZipper!2618 lt!2458380 (head!13782 s!2326)) (tail!12837 s!2326)))))

(assert (= (and d!2158706 c!1278874) b!6871986))

(assert (= (and d!2158706 (not c!1278874)) b!6871987))

(assert (=> d!2158706 m!7602158))

(declare-fun m!7602224 () Bool)

(assert (=> b!6871986 m!7602224))

(assert (=> b!6871987 m!7602162))

(assert (=> b!6871987 m!7602162))

(declare-fun m!7602226 () Bool)

(assert (=> b!6871987 m!7602226))

(assert (=> b!6871987 m!7602166))

(assert (=> b!6871987 m!7602226))

(assert (=> b!6871987 m!7602166))

(declare-fun m!7602228 () Bool)

(assert (=> b!6871987 m!7602228))

(assert (=> b!6871749 d!2158706))

(declare-fun d!2158708 () Bool)

(assert (=> d!2158708 (= (matchR!8883 lt!2458375 s!2326) (matchZipper!2666 lt!2458380 s!2326))))

(declare-fun lt!2458461 () Unit!160177)

(declare-fun choose!51196 ((Set Context!12168) List!66401 Regex!16700 List!66400) Unit!160177)

(assert (=> d!2158708 (= lt!2458461 (choose!51196 lt!2458380 lt!2458381 lt!2458375 s!2326))))

(assert (=> d!2158708 (validRegex!8436 lt!2458375)))

(assert (=> d!2158708 (= (theoremZipperRegexEquiv!962 lt!2458380 lt!2458381 lt!2458375 s!2326) lt!2458461)))

(declare-fun bs!1837327 () Bool)

(assert (= bs!1837327 d!2158708))

(assert (=> bs!1837327 m!7602040))

(assert (=> bs!1837327 m!7602038))

(declare-fun m!7602230 () Bool)

(assert (=> bs!1837327 m!7602230))

(assert (=> bs!1837327 m!7602216))

(assert (=> b!6871749 d!2158708))

(declare-fun b!6872052 () Bool)

(assert (=> b!6872052 true))

(assert (=> b!6872052 true))

(declare-fun bs!1837328 () Bool)

(declare-fun b!6872050 () Bool)

(assert (= bs!1837328 (and b!6872050 b!6872052)))

(declare-fun lambda!388869 () Int)

(declare-fun lambda!388868 () Int)

(assert (=> bs!1837328 (not (= lambda!388869 lambda!388868))))

(assert (=> b!6872050 true))

(assert (=> b!6872050 true))

(declare-fun b!6872048 () Bool)

(declare-fun e!4142180 () Bool)

(declare-fun e!4142175 () Bool)

(assert (=> b!6872048 (= e!4142180 e!4142175)))

(declare-fun res!2802559 () Bool)

(assert (=> b!6872048 (= res!2802559 (matchRSpec!3801 (regOne!33913 r!7292) s!2326))))

(assert (=> b!6872048 (=> res!2802559 e!4142175)))

(declare-fun b!6872049 () Bool)

(declare-fun res!2802558 () Bool)

(declare-fun e!4142179 () Bool)

(assert (=> b!6872049 (=> res!2802558 e!4142179)))

(declare-fun call!625925 () Bool)

(assert (=> b!6872049 (= res!2802558 call!625925)))

(declare-fun e!4142177 () Bool)

(assert (=> b!6872049 (= e!4142177 e!4142179)))

(declare-fun call!625926 () Bool)

(assert (=> b!6872050 (= e!4142177 call!625926)))

(declare-fun b!6872051 () Bool)

(declare-fun c!1278889 () Bool)

(assert (=> b!6872051 (= c!1278889 (is-ElementMatch!16700 r!7292))))

(declare-fun e!4142174 () Bool)

(declare-fun e!4142178 () Bool)

(assert (=> b!6872051 (= e!4142174 e!4142178)))

(declare-fun c!1278891 () Bool)

(declare-fun bm!625920 () Bool)

(declare-fun Exists!3758 (Int) Bool)

(assert (=> bm!625920 (= call!625926 (Exists!3758 (ite c!1278891 lambda!388868 lambda!388869)))))

(assert (=> b!6872052 (= e!4142179 call!625926)))

(declare-fun d!2158710 () Bool)

(declare-fun c!1278890 () Bool)

(assert (=> d!2158710 (= c!1278890 (is-EmptyExpr!16700 r!7292))))

(declare-fun e!4142176 () Bool)

(assert (=> d!2158710 (= (matchRSpec!3801 r!7292 s!2326) e!4142176)))

(declare-fun b!6872053 () Bool)

(assert (=> b!6872053 (= e!4142178 (= s!2326 (Cons!66276 (c!1278820 r!7292) Nil!66276)))))

(declare-fun b!6872054 () Bool)

(assert (=> b!6872054 (= e!4142175 (matchRSpec!3801 (regTwo!33913 r!7292) s!2326))))

(declare-fun b!6872055 () Bool)

(assert (=> b!6872055 (= e!4142176 call!625925)))

(declare-fun b!6872056 () Bool)

(assert (=> b!6872056 (= e!4142176 e!4142174)))

(declare-fun res!2802557 () Bool)

(assert (=> b!6872056 (= res!2802557 (not (is-EmptyLang!16700 r!7292)))))

(assert (=> b!6872056 (=> (not res!2802557) (not e!4142174))))

(declare-fun bm!625921 () Bool)

(assert (=> bm!625921 (= call!625925 (isEmpty!38633 s!2326))))

(declare-fun b!6872057 () Bool)

(declare-fun c!1278892 () Bool)

(assert (=> b!6872057 (= c!1278892 (is-Union!16700 r!7292))))

(assert (=> b!6872057 (= e!4142178 e!4142180)))

(declare-fun b!6872058 () Bool)

(assert (=> b!6872058 (= e!4142180 e!4142177)))

(assert (=> b!6872058 (= c!1278891 (is-Star!16700 r!7292))))

(assert (= (and d!2158710 c!1278890) b!6872055))

(assert (= (and d!2158710 (not c!1278890)) b!6872056))

(assert (= (and b!6872056 res!2802557) b!6872051))

(assert (= (and b!6872051 c!1278889) b!6872053))

(assert (= (and b!6872051 (not c!1278889)) b!6872057))

(assert (= (and b!6872057 c!1278892) b!6872048))

(assert (= (and b!6872057 (not c!1278892)) b!6872058))

(assert (= (and b!6872048 (not res!2802559)) b!6872054))

(assert (= (and b!6872058 c!1278891) b!6872049))

(assert (= (and b!6872058 (not c!1278891)) b!6872050))

(assert (= (and b!6872049 (not res!2802558)) b!6872052))

(assert (= (or b!6872052 b!6872050) bm!625920))

(assert (= (or b!6872055 b!6872049) bm!625921))

(declare-fun m!7602232 () Bool)

(assert (=> b!6872048 m!7602232))

(declare-fun m!7602234 () Bool)

(assert (=> bm!625920 m!7602234))

(declare-fun m!7602236 () Bool)

(assert (=> b!6872054 m!7602236))

(assert (=> bm!625921 m!7602158))

(assert (=> b!6871740 d!2158710))

(declare-fun b!6872063 () Bool)

(declare-fun res!2802567 () Bool)

(declare-fun e!4142186 () Bool)

(assert (=> b!6872063 (=> res!2802567 e!4142186)))

(assert (=> b!6872063 (= res!2802567 (not (is-ElementMatch!16700 r!7292)))))

(declare-fun e!4142187 () Bool)

(assert (=> b!6872063 (= e!4142187 e!4142186)))

(declare-fun b!6872064 () Bool)

(declare-fun res!2802566 () Bool)

(declare-fun e!4142183 () Bool)

(assert (=> b!6872064 (=> res!2802566 e!4142183)))

(assert (=> b!6872064 (= res!2802566 (not (isEmpty!38633 (tail!12837 s!2326))))))

(declare-fun b!6872065 () Bool)

(declare-fun e!4142181 () Bool)

(assert (=> b!6872065 (= e!4142186 e!4142181)))

(declare-fun res!2802563 () Bool)

(assert (=> b!6872065 (=> (not res!2802563) (not e!4142181))))

(declare-fun lt!2458464 () Bool)

(assert (=> b!6872065 (= res!2802563 (not lt!2458464))))

(declare-fun b!6872066 () Bool)

(assert (=> b!6872066 (= e!4142187 (not lt!2458464))))

(declare-fun b!6872067 () Bool)

(declare-fun res!2802560 () Bool)

(assert (=> b!6872067 (=> res!2802560 e!4142186)))

(declare-fun e!4142184 () Bool)

(assert (=> b!6872067 (= res!2802560 e!4142184)))

(declare-fun res!2802561 () Bool)

(assert (=> b!6872067 (=> (not res!2802561) (not e!4142184))))

(assert (=> b!6872067 (= res!2802561 lt!2458464)))

(declare-fun b!6872068 () Bool)

(assert (=> b!6872068 (= e!4142181 e!4142183)))

(declare-fun res!2802562 () Bool)

(assert (=> b!6872068 (=> res!2802562 e!4142183)))

(declare-fun call!625927 () Bool)

(assert (=> b!6872068 (= res!2802562 call!625927)))

(declare-fun b!6872070 () Bool)

(declare-fun e!4142185 () Bool)

(assert (=> b!6872070 (= e!4142185 (nullable!6659 r!7292))))

(declare-fun b!6872071 () Bool)

(assert (=> b!6872071 (= e!4142184 (= (head!13782 s!2326) (c!1278820 r!7292)))))

(declare-fun bm!625922 () Bool)

(assert (=> bm!625922 (= call!625927 (isEmpty!38633 s!2326))))

(declare-fun b!6872072 () Bool)

(assert (=> b!6872072 (= e!4142185 (matchR!8883 (derivativeStep!5341 r!7292 (head!13782 s!2326)) (tail!12837 s!2326)))))

(declare-fun b!6872073 () Bool)

(assert (=> b!6872073 (= e!4142183 (not (= (head!13782 s!2326) (c!1278820 r!7292))))))

(declare-fun b!6872074 () Bool)

(declare-fun res!2802564 () Bool)

(assert (=> b!6872074 (=> (not res!2802564) (not e!4142184))))

(assert (=> b!6872074 (= res!2802564 (not call!625927))))

(declare-fun b!6872075 () Bool)

(declare-fun e!4142182 () Bool)

(assert (=> b!6872075 (= e!4142182 (= lt!2458464 call!625927))))

(declare-fun b!6872076 () Bool)

(assert (=> b!6872076 (= e!4142182 e!4142187)))

(declare-fun c!1278895 () Bool)

(assert (=> b!6872076 (= c!1278895 (is-EmptyLang!16700 r!7292))))

(declare-fun d!2158712 () Bool)

(assert (=> d!2158712 e!4142182))

(declare-fun c!1278894 () Bool)

(assert (=> d!2158712 (= c!1278894 (is-EmptyExpr!16700 r!7292))))

(assert (=> d!2158712 (= lt!2458464 e!4142185)))

(declare-fun c!1278893 () Bool)

(assert (=> d!2158712 (= c!1278893 (isEmpty!38633 s!2326))))

(assert (=> d!2158712 (validRegex!8436 r!7292)))

(assert (=> d!2158712 (= (matchR!8883 r!7292 s!2326) lt!2458464)))

(declare-fun b!6872069 () Bool)

(declare-fun res!2802565 () Bool)

(assert (=> b!6872069 (=> (not res!2802565) (not e!4142184))))

(assert (=> b!6872069 (= res!2802565 (isEmpty!38633 (tail!12837 s!2326)))))

(assert (= (and d!2158712 c!1278893) b!6872070))

(assert (= (and d!2158712 (not c!1278893)) b!6872072))

(assert (= (and d!2158712 c!1278894) b!6872075))

(assert (= (and d!2158712 (not c!1278894)) b!6872076))

(assert (= (and b!6872076 c!1278895) b!6872066))

(assert (= (and b!6872076 (not c!1278895)) b!6872063))

(assert (= (and b!6872063 (not res!2802567)) b!6872067))

(assert (= (and b!6872067 res!2802561) b!6872074))

(assert (= (and b!6872074 res!2802564) b!6872069))

(assert (= (and b!6872069 res!2802565) b!6872071))

(assert (= (and b!6872067 (not res!2802560)) b!6872065))

(assert (= (and b!6872065 res!2802563) b!6872068))

(assert (= (and b!6872068 (not res!2802562)) b!6872064))

(assert (= (and b!6872064 (not res!2802566)) b!6872073))

(assert (= (or b!6872075 b!6872068 b!6872074) bm!625922))

(assert (=> b!6872064 m!7602166))

(assert (=> b!6872064 m!7602166))

(assert (=> b!6872064 m!7602214))

(assert (=> d!2158712 m!7602158))

(assert (=> d!2158712 m!7602028))

(assert (=> bm!625922 m!7602158))

(assert (=> b!6872073 m!7602162))

(assert (=> b!6872069 m!7602166))

(assert (=> b!6872069 m!7602166))

(assert (=> b!6872069 m!7602214))

(assert (=> b!6872071 m!7602162))

(declare-fun m!7602238 () Bool)

(assert (=> b!6872070 m!7602238))

(assert (=> b!6872072 m!7602162))

(assert (=> b!6872072 m!7602162))

(declare-fun m!7602240 () Bool)

(assert (=> b!6872072 m!7602240))

(assert (=> b!6872072 m!7602166))

(assert (=> b!6872072 m!7602240))

(assert (=> b!6872072 m!7602166))

(declare-fun m!7602242 () Bool)

(assert (=> b!6872072 m!7602242))

(assert (=> b!6871740 d!2158712))

(declare-fun d!2158714 () Bool)

(assert (=> d!2158714 (= (matchR!8883 r!7292 s!2326) (matchRSpec!3801 r!7292 s!2326))))

(declare-fun lt!2458468 () Unit!160177)

(declare-fun choose!51197 (Regex!16700 List!66400) Unit!160177)

(assert (=> d!2158714 (= lt!2458468 (choose!51197 r!7292 s!2326))))

(assert (=> d!2158714 (validRegex!8436 r!7292)))

(assert (=> d!2158714 (= (mainMatchTheorem!3801 r!7292 s!2326) lt!2458468)))

(declare-fun bs!1837329 () Bool)

(assert (= bs!1837329 d!2158714))

(assert (=> bs!1837329 m!7602032))

(assert (=> bs!1837329 m!7602030))

(declare-fun m!7602256 () Bool)

(assert (=> bs!1837329 m!7602256))

(assert (=> bs!1837329 m!7602028))

(assert (=> b!6871740 d!2158714))

(declare-fun bs!1837330 () Bool)

(declare-fun d!2158718 () Bool)

(assert (= bs!1837330 (and d!2158718 d!2158694)))

(declare-fun lambda!388870 () Int)

(assert (=> bs!1837330 (= lambda!388870 lambda!388850)))

(declare-fun bs!1837331 () Bool)

(assert (= bs!1837331 (and d!2158718 b!6871744)))

(assert (=> bs!1837331 (= lambda!388870 lambda!388816)))

(declare-fun bs!1837332 () Bool)

(assert (= bs!1837332 (and d!2158718 d!2158698)))

(assert (=> bs!1837332 (= lambda!388870 lambda!388861)))

(declare-fun bs!1837333 () Bool)

(assert (= bs!1837333 (and d!2158718 b!6871730)))

(assert (=> bs!1837333 (not (= lambda!388870 lambda!388814))))

(assert (=> bs!1837330 (not (= lambda!388870 lambda!388851))))

(declare-fun bs!1837334 () Bool)

(assert (= bs!1837334 (and d!2158718 d!2158676)))

(assert (=> bs!1837334 (= lambda!388870 lambda!388845)))

(declare-fun bs!1837335 () Bool)

(assert (= bs!1837335 (and d!2158718 d!2158670)))

(assert (=> bs!1837335 (not (= lambda!388870 lambda!388836))))

(declare-fun bs!1837336 () Bool)

(assert (= bs!1837336 (and d!2158718 d!2158696)))

(assert (=> bs!1837336 (= lambda!388870 lambda!388854)))

(assert (=> d!2158718 (= (inv!84998 setElem!47244) (forall!15895 (exprs!6584 setElem!47244) lambda!388870))))

(declare-fun bs!1837337 () Bool)

(assert (= bs!1837337 d!2158718))

(declare-fun m!7602258 () Bool)

(assert (=> bs!1837337 m!7602258))

(assert (=> setNonEmpty!47244 d!2158718))

(declare-fun d!2158720 () Bool)

(declare-fun res!2802580 () Bool)

(declare-fun e!4142199 () Bool)

(assert (=> d!2158720 (=> res!2802580 e!4142199)))

(assert (=> d!2158720 (= res!2802580 (is-Nil!66275 (exprs!6584 lt!2458377)))))

(assert (=> d!2158720 (= (forall!15895 (exprs!6584 lt!2458377) lambda!388816) e!4142199)))

(declare-fun b!6872095 () Bool)

(declare-fun e!4142200 () Bool)

(assert (=> b!6872095 (= e!4142199 e!4142200)))

(declare-fun res!2802581 () Bool)

(assert (=> b!6872095 (=> (not res!2802581) (not e!4142200))))

(declare-fun dynLambda!26535 (Int Regex!16700) Bool)

(assert (=> b!6872095 (= res!2802581 (dynLambda!26535 lambda!388816 (h!72723 (exprs!6584 lt!2458377))))))

(declare-fun b!6872096 () Bool)

(assert (=> b!6872096 (= e!4142200 (forall!15895 (t!380142 (exprs!6584 lt!2458377)) lambda!388816))))

(assert (= (and d!2158720 (not res!2802580)) b!6872095))

(assert (= (and b!6872095 res!2802581) b!6872096))

(declare-fun b_lambda!260091 () Bool)

(assert (=> (not b_lambda!260091) (not b!6872095)))

(declare-fun m!7602260 () Bool)

(assert (=> b!6872095 m!7602260))

(declare-fun m!7602262 () Bool)

(assert (=> b!6872096 m!7602262))

(assert (=> b!6871744 d!2158720))

(declare-fun bs!1837339 () Bool)

(declare-fun d!2158722 () Bool)

(assert (= bs!1837339 (and d!2158722 d!2158694)))

(declare-fun lambda!388873 () Int)

(assert (=> bs!1837339 (= lambda!388873 lambda!388850)))

(declare-fun bs!1837340 () Bool)

(assert (= bs!1837340 (and d!2158722 b!6871744)))

(assert (=> bs!1837340 (= lambda!388873 lambda!388816)))

(declare-fun bs!1837341 () Bool)

(assert (= bs!1837341 (and d!2158722 d!2158698)))

(assert (=> bs!1837341 (= lambda!388873 lambda!388861)))

(declare-fun bs!1837342 () Bool)

(assert (= bs!1837342 (and d!2158722 b!6871730)))

(assert (=> bs!1837342 (not (= lambda!388873 lambda!388814))))

(assert (=> bs!1837339 (not (= lambda!388873 lambda!388851))))

(declare-fun bs!1837343 () Bool)

(assert (= bs!1837343 (and d!2158722 d!2158718)))

(assert (=> bs!1837343 (= lambda!388873 lambda!388870)))

(declare-fun bs!1837344 () Bool)

(assert (= bs!1837344 (and d!2158722 d!2158676)))

(assert (=> bs!1837344 (= lambda!388873 lambda!388845)))

(declare-fun bs!1837345 () Bool)

(assert (= bs!1837345 (and d!2158722 d!2158670)))

(assert (=> bs!1837345 (not (= lambda!388873 lambda!388836))))

(declare-fun bs!1837346 () Bool)

(assert (= bs!1837346 (and d!2158722 d!2158696)))

(assert (=> bs!1837346 (= lambda!388873 lambda!388854)))

(assert (=> d!2158722 (forall!15895 (exprs!6584 lt!2458377) lambda!388873)))

(declare-fun lt!2458474 () Unit!160177)

(declare-fun choose!51198 (Context!12168 List!66399) Unit!160177)

(assert (=> d!2158722 (= lt!2458474 (choose!51198 lt!2458377 (exprs!6584 lt!2458377)))))

(assert (=> d!2158722 (= (exprs!6584 lt!2458377) (exprs!6584 lt!2458377))))

(assert (=> d!2158722 (= (lemmaContextForallValidExprs!75 lt!2458377 (exprs!6584 lt!2458377)) lt!2458474)))

(declare-fun bs!1837347 () Bool)

(assert (= bs!1837347 d!2158722))

(declare-fun m!7602266 () Bool)

(assert (=> bs!1837347 m!7602266))

(declare-fun m!7602268 () Bool)

(assert (=> bs!1837347 m!7602268))

(assert (=> b!6871744 d!2158722))

(declare-fun b!6872109 () Bool)

(declare-fun e!4142209 () Context!12168)

(assert (=> b!6872109 (= e!4142209 (getWitness!979 (t!380144 zl!343) lambda!388815))))

(declare-fun b!6872110 () Bool)

(declare-fun e!4142211 () Bool)

(declare-fun lt!2458483 () Context!12168)

(assert (=> b!6872110 (= e!4142211 (contains!20356 zl!343 lt!2458483))))

(declare-fun d!2158726 () Bool)

(assert (=> d!2158726 e!4142211))

(declare-fun res!2802587 () Bool)

(assert (=> d!2158726 (=> (not res!2802587) (not e!4142211))))

(declare-fun dynLambda!26536 (Int Context!12168) Bool)

(assert (=> d!2158726 (= res!2802587 (dynLambda!26536 lambda!388815 lt!2458483))))

(declare-fun e!4142212 () Context!12168)

(assert (=> d!2158726 (= lt!2458483 e!4142212)))

(declare-fun c!1278905 () Bool)

(declare-fun e!4142210 () Bool)

(assert (=> d!2158726 (= c!1278905 e!4142210)))

(declare-fun res!2802586 () Bool)

(assert (=> d!2158726 (=> (not res!2802586) (not e!4142210))))

(assert (=> d!2158726 (= res!2802586 (is-Cons!66277 zl!343))))

(assert (=> d!2158726 (exists!2837 zl!343 lambda!388815)))

(assert (=> d!2158726 (= (getWitness!979 zl!343 lambda!388815) lt!2458483)))

(declare-fun b!6872111 () Bool)

(assert (=> b!6872111 (= e!4142212 (h!72725 zl!343))))

(declare-fun b!6872112 () Bool)

(declare-fun lt!2458482 () Unit!160177)

(declare-fun Unit!160181 () Unit!160177)

(assert (=> b!6872112 (= lt!2458482 Unit!160181)))

(assert (=> b!6872112 false))

(declare-fun head!13784 (List!66401) Context!12168)

(assert (=> b!6872112 (= e!4142209 (head!13784 zl!343))))

(declare-fun b!6872113 () Bool)

(assert (=> b!6872113 (= e!4142212 e!4142209)))

(declare-fun c!1278904 () Bool)

(assert (=> b!6872113 (= c!1278904 (is-Cons!66277 zl!343))))

(declare-fun b!6872114 () Bool)

(assert (=> b!6872114 (= e!4142210 (dynLambda!26536 lambda!388815 (h!72725 zl!343)))))

(assert (= (and d!2158726 res!2802586) b!6872114))

(assert (= (and d!2158726 c!1278905) b!6872111))

(assert (= (and d!2158726 (not c!1278905)) b!6872113))

(assert (= (and b!6872113 c!1278904) b!6872109))

(assert (= (and b!6872113 (not c!1278904)) b!6872112))

(assert (= (and d!2158726 res!2802587) b!6872110))

(declare-fun b_lambda!260093 () Bool)

(assert (=> (not b_lambda!260093) (not d!2158726)))

(declare-fun b_lambda!260095 () Bool)

(assert (=> (not b_lambda!260095) (not b!6872114)))

(declare-fun m!7602274 () Bool)

(assert (=> d!2158726 m!7602274))

(assert (=> d!2158726 m!7602052))

(declare-fun m!7602276 () Bool)

(assert (=> b!6872110 m!7602276))

(declare-fun m!7602278 () Bool)

(assert (=> b!6872109 m!7602278))

(declare-fun m!7602280 () Bool)

(assert (=> b!6872112 m!7602280))

(declare-fun m!7602282 () Bool)

(assert (=> b!6872114 m!7602282))

(assert (=> b!6871744 d!2158726))

(assert (=> b!6871733 d!2158692))

(declare-fun b!6872145 () Bool)

(declare-fun e!4142237 () Bool)

(declare-fun call!625935 () Bool)

(assert (=> b!6872145 (= e!4142237 call!625935)))

(declare-fun b!6872146 () Bool)

(declare-fun e!4142234 () Bool)

(declare-fun e!4142235 () Bool)

(assert (=> b!6872146 (= e!4142234 e!4142235)))

(declare-fun res!2802604 () Bool)

(assert (=> b!6872146 (= res!2802604 (not (nullable!6659 (reg!17029 r!7292))))))

(assert (=> b!6872146 (=> (not res!2802604) (not e!4142235))))

(declare-fun b!6872147 () Bool)

(declare-fun e!4142233 () Bool)

(assert (=> b!6872147 (= e!4142234 e!4142233)))

(declare-fun c!1278915 () Bool)

(assert (=> b!6872147 (= c!1278915 (is-Union!16700 r!7292))))

(declare-fun b!6872148 () Bool)

(declare-fun call!625936 () Bool)

(assert (=> b!6872148 (= e!4142235 call!625936)))

(declare-fun d!2158730 () Bool)

(declare-fun res!2802603 () Bool)

(declare-fun e!4142240 () Bool)

(assert (=> d!2158730 (=> res!2802603 e!4142240)))

(assert (=> d!2158730 (= res!2802603 (is-ElementMatch!16700 r!7292))))

(assert (=> d!2158730 (= (validRegex!8436 r!7292) e!4142240)))

(declare-fun bm!625930 () Bool)

(declare-fun call!625937 () Bool)

(assert (=> bm!625930 (= call!625937 (validRegex!8436 (ite c!1278915 (regOne!33913 r!7292) (regOne!33912 r!7292))))))

(declare-fun bm!625931 () Bool)

(assert (=> bm!625931 (= call!625935 call!625936)))

(declare-fun b!6872149 () Bool)

(assert (=> b!6872149 (= e!4142240 e!4142234)))

(declare-fun c!1278912 () Bool)

(assert (=> b!6872149 (= c!1278912 (is-Star!16700 r!7292))))

(declare-fun bm!625932 () Bool)

(assert (=> bm!625932 (= call!625936 (validRegex!8436 (ite c!1278912 (reg!17029 r!7292) (ite c!1278915 (regTwo!33913 r!7292) (regTwo!33912 r!7292)))))))

(declare-fun b!6872150 () Bool)

(declare-fun res!2802606 () Bool)

(declare-fun e!4142241 () Bool)

(assert (=> b!6872150 (=> res!2802606 e!4142241)))

(assert (=> b!6872150 (= res!2802606 (not (is-Concat!25545 r!7292)))))

(assert (=> b!6872150 (= e!4142233 e!4142241)))

(declare-fun b!6872151 () Bool)

(declare-fun e!4142238 () Bool)

(assert (=> b!6872151 (= e!4142241 e!4142238)))

(declare-fun res!2802602 () Bool)

(assert (=> b!6872151 (=> (not res!2802602) (not e!4142238))))

(assert (=> b!6872151 (= res!2802602 call!625937)))

(declare-fun b!6872152 () Bool)

(assert (=> b!6872152 (= e!4142238 call!625935)))

(declare-fun b!6872153 () Bool)

(declare-fun res!2802605 () Bool)

(assert (=> b!6872153 (=> (not res!2802605) (not e!4142237))))

(assert (=> b!6872153 (= res!2802605 call!625937)))

(assert (=> b!6872153 (= e!4142233 e!4142237)))

(assert (= (and d!2158730 (not res!2802603)) b!6872149))

(assert (= (and b!6872149 c!1278912) b!6872146))

(assert (= (and b!6872149 (not c!1278912)) b!6872147))

(assert (= (and b!6872146 res!2802604) b!6872148))

(assert (= (and b!6872147 c!1278915) b!6872153))

(assert (= (and b!6872147 (not c!1278915)) b!6872150))

(assert (= (and b!6872153 res!2802605) b!6872145))

(assert (= (and b!6872150 (not res!2802606)) b!6872151))

(assert (= (and b!6872151 res!2802602) b!6872152))

(assert (= (or b!6872145 b!6872152) bm!625931))

(assert (= (or b!6872153 b!6872151) bm!625930))

(assert (= (or b!6872148 bm!625931) bm!625932))

(declare-fun m!7602286 () Bool)

(assert (=> b!6872146 m!7602286))

(declare-fun m!7602288 () Bool)

(assert (=> bm!625930 m!7602288))

(declare-fun m!7602290 () Bool)

(assert (=> bm!625932 m!7602290))

(assert (=> start!663082 d!2158730))

(declare-fun b!6872172 () Bool)

(declare-fun e!4142250 () Bool)

(declare-fun tp!1887303 () Bool)

(assert (=> b!6872172 (= e!4142250 tp!1887303)))

(declare-fun b!6872171 () Bool)

(declare-fun tp!1887306 () Bool)

(declare-fun tp!1887302 () Bool)

(assert (=> b!6872171 (= e!4142250 (and tp!1887306 tp!1887302))))

(declare-fun b!6872173 () Bool)

(declare-fun tp!1887305 () Bool)

(declare-fun tp!1887304 () Bool)

(assert (=> b!6872173 (= e!4142250 (and tp!1887305 tp!1887304))))

(declare-fun b!6872170 () Bool)

(assert (=> b!6872170 (= e!4142250 tp_is_empty!42653)))

(assert (=> b!6871742 (= tp!1887260 e!4142250)))

(assert (= (and b!6871742 (is-ElementMatch!16700 (regOne!33912 r!7292))) b!6872170))

(assert (= (and b!6871742 (is-Concat!25545 (regOne!33912 r!7292))) b!6872171))

(assert (= (and b!6871742 (is-Star!16700 (regOne!33912 r!7292))) b!6872172))

(assert (= (and b!6871742 (is-Union!16700 (regOne!33912 r!7292))) b!6872173))

(declare-fun b!6872176 () Bool)

(declare-fun e!4142251 () Bool)

(declare-fun tp!1887308 () Bool)

(assert (=> b!6872176 (= e!4142251 tp!1887308)))

(declare-fun b!6872175 () Bool)

(declare-fun tp!1887311 () Bool)

(declare-fun tp!1887307 () Bool)

(assert (=> b!6872175 (= e!4142251 (and tp!1887311 tp!1887307))))

(declare-fun b!6872177 () Bool)

(declare-fun tp!1887310 () Bool)

(declare-fun tp!1887309 () Bool)

(assert (=> b!6872177 (= e!4142251 (and tp!1887310 tp!1887309))))

(declare-fun b!6872174 () Bool)

(assert (=> b!6872174 (= e!4142251 tp_is_empty!42653)))

(assert (=> b!6871742 (= tp!1887258 e!4142251)))

(assert (= (and b!6871742 (is-ElementMatch!16700 (regTwo!33912 r!7292))) b!6872174))

(assert (= (and b!6871742 (is-Concat!25545 (regTwo!33912 r!7292))) b!6872175))

(assert (= (and b!6871742 (is-Star!16700 (regTwo!33912 r!7292))) b!6872176))

(assert (= (and b!6871742 (is-Union!16700 (regTwo!33912 r!7292))) b!6872177))

(declare-fun b!6872180 () Bool)

(declare-fun e!4142252 () Bool)

(declare-fun tp!1887313 () Bool)

(assert (=> b!6872180 (= e!4142252 tp!1887313)))

(declare-fun b!6872179 () Bool)

(declare-fun tp!1887316 () Bool)

(declare-fun tp!1887312 () Bool)

(assert (=> b!6872179 (= e!4142252 (and tp!1887316 tp!1887312))))

(declare-fun b!6872181 () Bool)

(declare-fun tp!1887315 () Bool)

(declare-fun tp!1887314 () Bool)

(assert (=> b!6872181 (= e!4142252 (and tp!1887315 tp!1887314))))

(declare-fun b!6872178 () Bool)

(assert (=> b!6872178 (= e!4142252 tp_is_empty!42653)))

(assert (=> b!6871731 (= tp!1887257 e!4142252)))

(assert (= (and b!6871731 (is-ElementMatch!16700 (reg!17029 r!7292))) b!6872178))

(assert (= (and b!6871731 (is-Concat!25545 (reg!17029 r!7292))) b!6872179))

(assert (= (and b!6871731 (is-Star!16700 (reg!17029 r!7292))) b!6872180))

(assert (= (and b!6871731 (is-Union!16700 (reg!17029 r!7292))) b!6872181))

(declare-fun condSetEmpty!47250 () Bool)

(assert (=> setNonEmpty!47244 (= condSetEmpty!47250 (= setRest!47244 (as set.empty (Set Context!12168))))))

(declare-fun setRes!47250 () Bool)

(assert (=> setNonEmpty!47244 (= tp!1887261 setRes!47250)))

(declare-fun setIsEmpty!47250 () Bool)

(assert (=> setIsEmpty!47250 setRes!47250))

(declare-fun e!4142255 () Bool)

(declare-fun setNonEmpty!47250 () Bool)

(declare-fun setElem!47250 () Context!12168)

(declare-fun tp!1887321 () Bool)

(assert (=> setNonEmpty!47250 (= setRes!47250 (and tp!1887321 (inv!84998 setElem!47250) e!4142255))))

(declare-fun setRest!47250 () (Set Context!12168))

(assert (=> setNonEmpty!47250 (= setRest!47244 (set.union (set.insert setElem!47250 (as set.empty (Set Context!12168))) setRest!47250))))

(declare-fun b!6872186 () Bool)

(declare-fun tp!1887322 () Bool)

(assert (=> b!6872186 (= e!4142255 tp!1887322)))

(assert (= (and setNonEmpty!47244 condSetEmpty!47250) setIsEmpty!47250))

(assert (= (and setNonEmpty!47244 (not condSetEmpty!47250)) setNonEmpty!47250))

(assert (= setNonEmpty!47250 b!6872186))

(declare-fun m!7602292 () Bool)

(assert (=> setNonEmpty!47250 m!7602292))

(declare-fun b!6872191 () Bool)

(declare-fun e!4142258 () Bool)

(declare-fun tp!1887327 () Bool)

(declare-fun tp!1887328 () Bool)

(assert (=> b!6872191 (= e!4142258 (and tp!1887327 tp!1887328))))

(assert (=> b!6871748 (= tp!1887259 e!4142258)))

(assert (= (and b!6871748 (is-Cons!66275 (exprs!6584 setElem!47244))) b!6872191))

(declare-fun b!6872192 () Bool)

(declare-fun e!4142259 () Bool)

(declare-fun tp!1887329 () Bool)

(declare-fun tp!1887330 () Bool)

(assert (=> b!6872192 (= e!4142259 (and tp!1887329 tp!1887330))))

(assert (=> b!6871734 (= tp!1887256 e!4142259)))

(assert (= (and b!6871734 (is-Cons!66275 (exprs!6584 (h!72725 zl!343)))) b!6872192))

(declare-fun b!6872200 () Bool)

(declare-fun e!4142265 () Bool)

(declare-fun tp!1887335 () Bool)

(assert (=> b!6872200 (= e!4142265 tp!1887335)))

(declare-fun tp!1887336 () Bool)

(declare-fun e!4142264 () Bool)

(declare-fun b!6872199 () Bool)

(assert (=> b!6872199 (= e!4142264 (and (inv!84998 (h!72725 (t!380144 zl!343))) e!4142265 tp!1887336))))

(assert (=> b!6871739 (= tp!1887255 e!4142264)))

(assert (= b!6872199 b!6872200))

(assert (= (and b!6871739 (is-Cons!66277 (t!380144 zl!343))) b!6872199))

(declare-fun m!7602294 () Bool)

(assert (=> b!6872199 m!7602294))

(declare-fun b!6872205 () Bool)

(declare-fun e!4142268 () Bool)

(declare-fun tp!1887339 () Bool)

(assert (=> b!6872205 (= e!4142268 (and tp_is_empty!42653 tp!1887339))))

(assert (=> b!6871747 (= tp!1887252 e!4142268)))

(assert (= (and b!6871747 (is-Cons!66276 (t!380143 s!2326))) b!6872205))

(declare-fun b!6872208 () Bool)

(declare-fun e!4142269 () Bool)

(declare-fun tp!1887341 () Bool)

(assert (=> b!6872208 (= e!4142269 tp!1887341)))

(declare-fun b!6872207 () Bool)

(declare-fun tp!1887344 () Bool)

(declare-fun tp!1887340 () Bool)

(assert (=> b!6872207 (= e!4142269 (and tp!1887344 tp!1887340))))

(declare-fun b!6872209 () Bool)

(declare-fun tp!1887343 () Bool)

(declare-fun tp!1887342 () Bool)

(assert (=> b!6872209 (= e!4142269 (and tp!1887343 tp!1887342))))

(declare-fun b!6872206 () Bool)

(assert (=> b!6872206 (= e!4142269 tp_is_empty!42653)))

(assert (=> b!6871743 (= tp!1887253 e!4142269)))

(assert (= (and b!6871743 (is-ElementMatch!16700 (regOne!33913 r!7292))) b!6872206))

(assert (= (and b!6871743 (is-Concat!25545 (regOne!33913 r!7292))) b!6872207))

(assert (= (and b!6871743 (is-Star!16700 (regOne!33913 r!7292))) b!6872208))

(assert (= (and b!6871743 (is-Union!16700 (regOne!33913 r!7292))) b!6872209))

(declare-fun b!6872212 () Bool)

(declare-fun e!4142270 () Bool)

(declare-fun tp!1887346 () Bool)

(assert (=> b!6872212 (= e!4142270 tp!1887346)))

(declare-fun b!6872211 () Bool)

(declare-fun tp!1887349 () Bool)

(declare-fun tp!1887345 () Bool)

(assert (=> b!6872211 (= e!4142270 (and tp!1887349 tp!1887345))))

(declare-fun b!6872213 () Bool)

(declare-fun tp!1887348 () Bool)

(declare-fun tp!1887347 () Bool)

(assert (=> b!6872213 (= e!4142270 (and tp!1887348 tp!1887347))))

(declare-fun b!6872210 () Bool)

(assert (=> b!6872210 (= e!4142270 tp_is_empty!42653)))

(assert (=> b!6871743 (= tp!1887254 e!4142270)))

(assert (= (and b!6871743 (is-ElementMatch!16700 (regTwo!33913 r!7292))) b!6872210))

(assert (= (and b!6871743 (is-Concat!25545 (regTwo!33913 r!7292))) b!6872211))

(assert (= (and b!6871743 (is-Star!16700 (regTwo!33913 r!7292))) b!6872212))

(assert (= (and b!6871743 (is-Union!16700 (regTwo!33913 r!7292))) b!6872213))

(declare-fun b_lambda!260097 () Bool)

(assert (= b_lambda!260091 (or b!6871744 b_lambda!260097)))

(declare-fun bs!1837352 () Bool)

(declare-fun d!2158734 () Bool)

(assert (= bs!1837352 (and d!2158734 b!6871744)))

(assert (=> bs!1837352 (= (dynLambda!26535 lambda!388816 (h!72723 (exprs!6584 lt!2458377))) (validRegex!8436 (h!72723 (exprs!6584 lt!2458377))))))

(declare-fun m!7602296 () Bool)

(assert (=> bs!1837352 m!7602296))

(assert (=> b!6872095 d!2158734))

(declare-fun b_lambda!260099 () Bool)

(assert (= b_lambda!260093 (or b!6871736 b_lambda!260099)))

(declare-fun bs!1837353 () Bool)

(declare-fun d!2158736 () Bool)

(assert (= bs!1837353 (and d!2158736 b!6871736)))

(assert (=> bs!1837353 (= (dynLambda!26536 lambda!388815 lt!2458483) (matchZipper!2666 (set.insert lt!2458483 (as set.empty (Set Context!12168))) s!2326))))

(declare-fun m!7602298 () Bool)

(assert (=> bs!1837353 m!7602298))

(assert (=> bs!1837353 m!7602298))

(declare-fun m!7602300 () Bool)

(assert (=> bs!1837353 m!7602300))

(assert (=> d!2158726 d!2158736))

(declare-fun b_lambda!260101 () Bool)

(assert (= b_lambda!260095 (or b!6871736 b_lambda!260101)))

(declare-fun bs!1837354 () Bool)

(declare-fun d!2158738 () Bool)

(assert (= bs!1837354 (and d!2158738 b!6871736)))

(assert (=> bs!1837354 (= (dynLambda!26536 lambda!388815 (h!72725 zl!343)) (matchZipper!2666 (set.insert (h!72725 zl!343) (as set.empty (Set Context!12168))) s!2326))))

(declare-fun m!7602302 () Bool)

(assert (=> bs!1837354 m!7602302))

(assert (=> bs!1837354 m!7602302))

(declare-fun m!7602304 () Bool)

(assert (=> bs!1837354 m!7602304))

(assert (=> b!6872114 d!2158738))

(push 1)

(assert (not b!6872199))

(assert (not bm!625920))

(assert (not b!6871828))

(assert (not b!6871987))

(assert (not b!6872207))

(assert (not bs!1837353))

(assert (not d!2158698))

(assert (not b!6872112))

(assert (not b!6872064))

(assert (not bm!625921))

(assert (not b!6871920))

(assert (not b!6872213))

(assert (not b!6872172))

(assert (not d!2158676))

(assert (not b!6871981))

(assert (not b!6872110))

(assert (not b!6871881))

(assert (not b!6872186))

(assert (not d!2158694))

(assert tp_is_empty!42653)

(assert (not b!6872211))

(assert (not b!6872212))

(assert (not b!6872175))

(assert (not b!6872072))

(assert (not b!6871918))

(assert (not b!6872054))

(assert (not b!6872073))

(assert (not b!6872146))

(assert (not b!6872177))

(assert (not b!6872200))

(assert (not b_lambda!260099))

(assert (not b!6871980))

(assert (not b!6872071))

(assert (not d!2158668))

(assert (not d!2158688))

(assert (not b!6871839))

(assert (not b!6871916))

(assert (not b!6872181))

(assert (not d!2158702))

(assert (not bm!625922))

(assert (not d!2158722))

(assert (not bm!625930))

(assert (not b!6872192))

(assert (not d!2158670))

(assert (not b!6871914))

(assert (not b!6872191))

(assert (not d!2158696))

(assert (not setNonEmpty!47250))

(assert (not d!2158718))

(assert (not d!2158708))

(assert (not b!6872179))

(assert (not b!6871851))

(assert (not d!2158684))

(assert (not b_lambda!260101))

(assert (not bs!1837354))

(assert (not d!2158690))

(assert (not b!6871973))

(assert (not bm!625913))

(assert (not d!2158712))

(assert (not d!2158700))

(assert (not b!6871986))

(assert (not b!6871978))

(assert (not b!6871845))

(assert (not b!6872209))

(assert (not d!2158674))

(assert (not b!6872180))

(assert (not b!6871913))

(assert (not b!6872173))

(assert (not b!6871921))

(assert (not b!6871982))

(assert (not b!6871979))

(assert (not b!6871837))

(assert (not b!6871928))

(assert (not b!6872069))

(assert (not bs!1837352))

(assert (not b!6872176))

(assert (not d!2158714))

(assert (not b_lambda!260097))

(assert (not b!6872096))

(assert (not b!6872171))

(assert (not d!2158706))

(assert (not b!6872205))

(assert (not bm!625932))

(assert (not b!6872070))

(assert (not b!6871852))

(assert (not b!6872048))

(assert (not b!6872208))

(assert (not b!6871917))

(assert (not d!2158726))

(assert (not b!6872109))

(assert (not d!2158672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

