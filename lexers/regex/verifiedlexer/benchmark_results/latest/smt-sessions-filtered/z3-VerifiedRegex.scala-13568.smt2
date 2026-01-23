; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729748 () Bool)

(assert start!729748)

(declare-fun res!3024696 () Bool)

(declare-fun e!4495723 () Bool)

(assert (=> start!729748 (=> (not res!3024696) (not e!4495723))))

(declare-datatypes ((C!40188 0))(
  ( (C!40189 (val!30534 Int)) )
))
(declare-datatypes ((Regex!19931 0))(
  ( (ElementMatch!19931 (c!1392996 C!40188)) (Concat!28776 (regOne!40374 Regex!19931) (regTwo!40374 Regex!19931)) (EmptyExpr!19931) (Star!19931 (reg!20260 Regex!19931)) (EmptyLang!19931) (Union!19931 (regOne!40375 Regex!19931) (regTwo!40375 Regex!19931)) )
))
(declare-fun baseR!101 () Regex!19931)

(declare-fun validRegex!10359 (Regex!19931) Bool)

(assert (=> start!729748 (= res!3024696 (validRegex!10359 baseR!101))))

(assert (=> start!729748 e!4495723))

(declare-fun e!4495727 () Bool)

(assert (=> start!729748 e!4495727))

(declare-fun e!4495729 () Bool)

(assert (=> start!729748 e!4495729))

(declare-fun e!4495728 () Bool)

(assert (=> start!729748 e!4495728))

(declare-fun e!4495726 () Bool)

(assert (=> start!729748 e!4495726))

(declare-fun e!4495725 () Bool)

(assert (=> start!729748 e!4495725))

(declare-fun b!7546471 () Bool)

(declare-fun res!3024694 () Bool)

(declare-fun e!4495722 () Bool)

(assert (=> b!7546471 (=> res!3024694 e!4495722)))

(declare-fun lt!2645578 () Int)

(declare-fun lt!2645580 () Int)

(assert (=> b!7546471 (= res!3024694 (= lt!2645578 lt!2645580))))

(declare-fun b!7546472 () Bool)

(declare-fun tp_is_empty!50217 () Bool)

(declare-fun tp!2195225 () Bool)

(assert (=> b!7546472 (= e!4495726 (and tp_is_empty!50217 tp!2195225))))

(declare-fun b!7546473 () Bool)

(declare-fun tp!2195226 () Bool)

(declare-fun tp!2195221 () Bool)

(assert (=> b!7546473 (= e!4495725 (and tp!2195226 tp!2195221))))

(declare-fun b!7546474 () Bool)

(declare-fun tp!2195227 () Bool)

(declare-fun tp!2195230 () Bool)

(assert (=> b!7546474 (= e!4495725 (and tp!2195227 tp!2195230))))

(declare-fun b!7546475 () Bool)

(declare-fun tp!2195228 () Bool)

(assert (=> b!7546475 (= e!4495729 (and tp_is_empty!50217 tp!2195228))))

(declare-fun b!7546476 () Bool)

(declare-fun tp!2195223 () Bool)

(assert (=> b!7546476 (= e!4495727 tp!2195223)))

(declare-fun b!7546477 () Bool)

(assert (=> b!7546477 (= e!4495727 tp_is_empty!50217)))

(declare-fun b!7546478 () Bool)

(declare-fun tp!2195224 () Bool)

(assert (=> b!7546478 (= e!4495725 tp!2195224)))

(declare-fun b!7546479 () Bool)

(declare-datatypes ((List!72814 0))(
  ( (Nil!72690) (Cons!72690 (h!79138 C!40188) (t!387531 List!72814)) )
))
(declare-fun input!7874 () List!72814)

(declare-fun size!42427 (List!72814) Int)

(assert (=> b!7546479 (= e!4495722 (< lt!2645578 (size!42427 input!7874)))))

(declare-fun b!7546480 () Bool)

(declare-fun res!3024702 () Bool)

(assert (=> b!7546480 (=> (not res!3024702) (not e!4495723))))

(declare-fun testedP!423 () List!72814)

(declare-fun isPrefix!6137 (List!72814 List!72814) Bool)

(assert (=> b!7546480 (= res!3024702 (isPrefix!6137 testedP!423 input!7874))))

(declare-fun b!7546481 () Bool)

(assert (=> b!7546481 (= e!4495725 tp_is_empty!50217)))

(declare-fun b!7546482 () Bool)

(declare-fun e!4495724 () Bool)

(assert (=> b!7546482 (= e!4495724 (not e!4495722))))

(declare-fun res!3024700 () Bool)

(assert (=> b!7546482 (=> res!3024700 e!4495722)))

(declare-fun knownP!30 () List!72814)

(declare-fun r!24333 () Regex!19931)

(declare-fun matchR!9533 (Regex!19931 List!72814) Bool)

(declare-fun getSuffix!3617 (List!72814 List!72814) List!72814)

(assert (=> b!7546482 (= res!3024700 (not (matchR!9533 r!24333 (getSuffix!3617 knownP!30 testedP!423))))))

(assert (=> b!7546482 (isPrefix!6137 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166800 0))(
  ( (Unit!166801) )
))
(declare-fun lt!2645579 () Unit!166800)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!887 (List!72814 List!72814 List!72814) Unit!166800)

(assert (=> b!7546482 (= lt!2645579 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!887 knownP!30 testedP!423 input!7874))))

(declare-fun b!7546483 () Bool)

(declare-fun res!3024701 () Bool)

(assert (=> b!7546483 (=> (not res!3024701) (not e!4495723))))

(assert (=> b!7546483 (= res!3024701 (isPrefix!6137 knownP!30 input!7874))))

(declare-fun b!7546484 () Bool)

(declare-fun res!3024695 () Bool)

(assert (=> b!7546484 (=> res!3024695 e!4495722)))

(declare-fun lostCause!1723 (Regex!19931) Bool)

(assert (=> b!7546484 (= res!3024695 (lostCause!1723 r!24333))))

(declare-fun b!7546485 () Bool)

(assert (=> b!7546485 (= e!4495723 e!4495724)))

(declare-fun res!3024693 () Bool)

(assert (=> b!7546485 (=> (not res!3024693) (not e!4495724))))

(assert (=> b!7546485 (= res!3024693 (>= lt!2645580 lt!2645578))))

(assert (=> b!7546485 (= lt!2645578 (size!42427 testedP!423))))

(assert (=> b!7546485 (= lt!2645580 (size!42427 knownP!30))))

(declare-fun b!7546486 () Bool)

(declare-fun res!3024697 () Bool)

(assert (=> b!7546486 (=> (not res!3024697) (not e!4495723))))

(assert (=> b!7546486 (= res!3024697 (validRegex!10359 r!24333))))

(declare-fun b!7546487 () Bool)

(declare-fun res!3024698 () Bool)

(assert (=> b!7546487 (=> (not res!3024698) (not e!4495724))))

(assert (=> b!7546487 (= res!3024698 (matchR!9533 baseR!101 knownP!30))))

(declare-fun b!7546488 () Bool)

(declare-fun tp!2195222 () Bool)

(declare-fun tp!2195233 () Bool)

(assert (=> b!7546488 (= e!4495727 (and tp!2195222 tp!2195233))))

(declare-fun b!7546489 () Bool)

(declare-fun tp!2195231 () Bool)

(assert (=> b!7546489 (= e!4495728 (and tp_is_empty!50217 tp!2195231))))

(declare-fun b!7546490 () Bool)

(declare-fun res!3024699 () Bool)

(assert (=> b!7546490 (=> res!3024699 e!4495722)))

(declare-fun derivative!463 (Regex!19931 List!72814) Regex!19931)

(assert (=> b!7546490 (= res!3024699 (not (= (derivative!463 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7546491 () Bool)

(declare-fun tp!2195232 () Bool)

(declare-fun tp!2195229 () Bool)

(assert (=> b!7546491 (= e!4495727 (and tp!2195232 tp!2195229))))

(assert (= (and start!729748 res!3024696) b!7546486))

(assert (= (and b!7546486 res!3024697) b!7546480))

(assert (= (and b!7546480 res!3024702) b!7546483))

(assert (= (and b!7546483 res!3024701) b!7546485))

(assert (= (and b!7546485 res!3024693) b!7546487))

(assert (= (and b!7546487 res!3024698) b!7546482))

(assert (= (and b!7546482 (not res!3024700)) b!7546490))

(assert (= (and b!7546490 (not res!3024699)) b!7546484))

(assert (= (and b!7546484 (not res!3024695)) b!7546471))

(assert (= (and b!7546471 (not res!3024694)) b!7546479))

(get-info :version)

(assert (= (and start!729748 ((_ is ElementMatch!19931) baseR!101)) b!7546477))

(assert (= (and start!729748 ((_ is Concat!28776) baseR!101)) b!7546488))

(assert (= (and start!729748 ((_ is Star!19931) baseR!101)) b!7546476))

(assert (= (and start!729748 ((_ is Union!19931) baseR!101)) b!7546491))

(assert (= (and start!729748 ((_ is Cons!72690) input!7874)) b!7546475))

(assert (= (and start!729748 ((_ is Cons!72690) knownP!30)) b!7546489))

(assert (= (and start!729748 ((_ is Cons!72690) testedP!423)) b!7546472))

(assert (= (and start!729748 ((_ is ElementMatch!19931) r!24333)) b!7546481))

(assert (= (and start!729748 ((_ is Concat!28776) r!24333)) b!7546474))

(assert (= (and start!729748 ((_ is Star!19931) r!24333)) b!7546478))

(assert (= (and start!729748 ((_ is Union!19931) r!24333)) b!7546473))

(declare-fun m!8114794 () Bool)

(assert (=> b!7546490 m!8114794))

(declare-fun m!8114796 () Bool)

(assert (=> b!7546486 m!8114796))

(declare-fun m!8114798 () Bool)

(assert (=> b!7546484 m!8114798))

(declare-fun m!8114800 () Bool)

(assert (=> b!7546485 m!8114800))

(declare-fun m!8114802 () Bool)

(assert (=> b!7546485 m!8114802))

(declare-fun m!8114804 () Bool)

(assert (=> b!7546482 m!8114804))

(assert (=> b!7546482 m!8114804))

(declare-fun m!8114806 () Bool)

(assert (=> b!7546482 m!8114806))

(declare-fun m!8114808 () Bool)

(assert (=> b!7546482 m!8114808))

(declare-fun m!8114810 () Bool)

(assert (=> b!7546482 m!8114810))

(declare-fun m!8114812 () Bool)

(assert (=> b!7546483 m!8114812))

(declare-fun m!8114814 () Bool)

(assert (=> b!7546480 m!8114814))

(declare-fun m!8114816 () Bool)

(assert (=> b!7546479 m!8114816))

(declare-fun m!8114818 () Bool)

(assert (=> b!7546487 m!8114818))

(declare-fun m!8114820 () Bool)

(assert (=> start!729748 m!8114820))

(check-sat (not b!7546488) (not b!7546484) (not b!7546474) tp_is_empty!50217 (not b!7546473) (not b!7546475) (not b!7546486) (not b!7546478) (not b!7546482) (not b!7546487) (not b!7546472) (not b!7546485) (not b!7546491) (not b!7546490) (not b!7546483) (not start!729748) (not b!7546480) (not b!7546476) (not b!7546479) (not b!7546489))
(check-sat)
(get-model)

(declare-fun b!7546503 () Bool)

(declare-fun e!4495736 () Bool)

(assert (=> b!7546503 (= e!4495736 (>= (size!42427 input!7874) (size!42427 knownP!30)))))

(declare-fun b!7546500 () Bool)

(declare-fun e!4495738 () Bool)

(declare-fun e!4495737 () Bool)

(assert (=> b!7546500 (= e!4495738 e!4495737)))

(declare-fun res!3024712 () Bool)

(assert (=> b!7546500 (=> (not res!3024712) (not e!4495737))))

(assert (=> b!7546500 (= res!3024712 (not ((_ is Nil!72690) input!7874)))))

(declare-fun b!7546502 () Bool)

(declare-fun tail!15066 (List!72814) List!72814)

(assert (=> b!7546502 (= e!4495737 (isPrefix!6137 (tail!15066 knownP!30) (tail!15066 input!7874)))))

(declare-fun b!7546501 () Bool)

(declare-fun res!3024713 () Bool)

(assert (=> b!7546501 (=> (not res!3024713) (not e!4495737))))

(declare-fun head!15520 (List!72814) C!40188)

(assert (=> b!7546501 (= res!3024713 (= (head!15520 knownP!30) (head!15520 input!7874)))))

(declare-fun d!2312165 () Bool)

(assert (=> d!2312165 e!4495736))

(declare-fun res!3024714 () Bool)

(assert (=> d!2312165 (=> res!3024714 e!4495736)))

(declare-fun lt!2645583 () Bool)

(assert (=> d!2312165 (= res!3024714 (not lt!2645583))))

(assert (=> d!2312165 (= lt!2645583 e!4495738)))

(declare-fun res!3024711 () Bool)

(assert (=> d!2312165 (=> res!3024711 e!4495738)))

(assert (=> d!2312165 (= res!3024711 ((_ is Nil!72690) knownP!30))))

(assert (=> d!2312165 (= (isPrefix!6137 knownP!30 input!7874) lt!2645583)))

(assert (= (and d!2312165 (not res!3024711)) b!7546500))

(assert (= (and b!7546500 res!3024712) b!7546501))

(assert (= (and b!7546501 res!3024713) b!7546502))

(assert (= (and d!2312165 (not res!3024714)) b!7546503))

(assert (=> b!7546503 m!8114816))

(assert (=> b!7546503 m!8114802))

(declare-fun m!8114822 () Bool)

(assert (=> b!7546502 m!8114822))

(declare-fun m!8114824 () Bool)

(assert (=> b!7546502 m!8114824))

(assert (=> b!7546502 m!8114822))

(assert (=> b!7546502 m!8114824))

(declare-fun m!8114826 () Bool)

(assert (=> b!7546502 m!8114826))

(declare-fun m!8114828 () Bool)

(assert (=> b!7546501 m!8114828))

(declare-fun m!8114830 () Bool)

(assert (=> b!7546501 m!8114830))

(assert (=> b!7546483 d!2312165))

(declare-fun b!7546550 () Bool)

(declare-fun res!3024746 () Bool)

(declare-fun e!4495768 () Bool)

(assert (=> b!7546550 (=> (not res!3024746) (not e!4495768))))

(declare-fun isEmpty!41386 (List!72814) Bool)

(assert (=> b!7546550 (= res!3024746 (isEmpty!41386 (tail!15066 (getSuffix!3617 knownP!30 testedP!423))))))

(declare-fun b!7546551 () Bool)

(declare-fun e!4495771 () Bool)

(declare-fun lt!2645586 () Bool)

(assert (=> b!7546551 (= e!4495771 (not lt!2645586))))

(declare-fun b!7546552 () Bool)

(declare-fun res!3024741 () Bool)

(declare-fun e!4495773 () Bool)

(assert (=> b!7546552 (=> res!3024741 e!4495773)))

(assert (=> b!7546552 (= res!3024741 (not (isEmpty!41386 (tail!15066 (getSuffix!3617 knownP!30 testedP!423)))))))

(declare-fun b!7546553 () Bool)

(declare-fun e!4495767 () Bool)

(declare-fun e!4495769 () Bool)

(assert (=> b!7546553 (= e!4495767 e!4495769)))

(declare-fun res!3024742 () Bool)

(assert (=> b!7546553 (=> (not res!3024742) (not e!4495769))))

(assert (=> b!7546553 (= res!3024742 (not lt!2645586))))

(declare-fun b!7546554 () Bool)

(assert (=> b!7546554 (= e!4495768 (= (head!15520 (getSuffix!3617 knownP!30 testedP!423)) (c!1392996 r!24333)))))

(declare-fun b!7546555 () Bool)

(declare-fun e!4495770 () Bool)

(declare-fun call!692031 () Bool)

(assert (=> b!7546555 (= e!4495770 (= lt!2645586 call!692031))))

(declare-fun b!7546556 () Bool)

(assert (=> b!7546556 (= e!4495770 e!4495771)))

(declare-fun c!1393007 () Bool)

(assert (=> b!7546556 (= c!1393007 ((_ is EmptyLang!19931) r!24333))))

(declare-fun b!7546557 () Bool)

(declare-fun e!4495772 () Bool)

(declare-fun derivativeStep!5720 (Regex!19931 C!40188) Regex!19931)

(assert (=> b!7546557 (= e!4495772 (matchR!9533 (derivativeStep!5720 r!24333 (head!15520 (getSuffix!3617 knownP!30 testedP!423))) (tail!15066 (getSuffix!3617 knownP!30 testedP!423))))))

(declare-fun bm!692026 () Bool)

(assert (=> bm!692026 (= call!692031 (isEmpty!41386 (getSuffix!3617 knownP!30 testedP!423)))))

(declare-fun b!7546558 () Bool)

(declare-fun nullable!8690 (Regex!19931) Bool)

(assert (=> b!7546558 (= e!4495772 (nullable!8690 r!24333))))

(declare-fun d!2312167 () Bool)

(assert (=> d!2312167 e!4495770))

(declare-fun c!1393009 () Bool)

(assert (=> d!2312167 (= c!1393009 ((_ is EmptyExpr!19931) r!24333))))

(assert (=> d!2312167 (= lt!2645586 e!4495772)))

(declare-fun c!1393008 () Bool)

(assert (=> d!2312167 (= c!1393008 (isEmpty!41386 (getSuffix!3617 knownP!30 testedP!423)))))

(assert (=> d!2312167 (validRegex!10359 r!24333)))

(assert (=> d!2312167 (= (matchR!9533 r!24333 (getSuffix!3617 knownP!30 testedP!423)) lt!2645586)))

(declare-fun b!7546559 () Bool)

(declare-fun res!3024748 () Bool)

(assert (=> b!7546559 (=> res!3024748 e!4495767)))

(assert (=> b!7546559 (= res!3024748 e!4495768)))

(declare-fun res!3024743 () Bool)

(assert (=> b!7546559 (=> (not res!3024743) (not e!4495768))))

(assert (=> b!7546559 (= res!3024743 lt!2645586)))

(declare-fun b!7546560 () Bool)

(assert (=> b!7546560 (= e!4495769 e!4495773)))

(declare-fun res!3024744 () Bool)

(assert (=> b!7546560 (=> res!3024744 e!4495773)))

(assert (=> b!7546560 (= res!3024744 call!692031)))

(declare-fun b!7546561 () Bool)

(assert (=> b!7546561 (= e!4495773 (not (= (head!15520 (getSuffix!3617 knownP!30 testedP!423)) (c!1392996 r!24333))))))

(declare-fun b!7546562 () Bool)

(declare-fun res!3024745 () Bool)

(assert (=> b!7546562 (=> (not res!3024745) (not e!4495768))))

(assert (=> b!7546562 (= res!3024745 (not call!692031))))

(declare-fun b!7546563 () Bool)

(declare-fun res!3024747 () Bool)

(assert (=> b!7546563 (=> res!3024747 e!4495767)))

(assert (=> b!7546563 (= res!3024747 (not ((_ is ElementMatch!19931) r!24333)))))

(assert (=> b!7546563 (= e!4495771 e!4495767)))

(assert (= (and d!2312167 c!1393008) b!7546558))

(assert (= (and d!2312167 (not c!1393008)) b!7546557))

(assert (= (and d!2312167 c!1393009) b!7546555))

(assert (= (and d!2312167 (not c!1393009)) b!7546556))

(assert (= (and b!7546556 c!1393007) b!7546551))

(assert (= (and b!7546556 (not c!1393007)) b!7546563))

(assert (= (and b!7546563 (not res!3024747)) b!7546559))

(assert (= (and b!7546559 res!3024743) b!7546562))

(assert (= (and b!7546562 res!3024745) b!7546550))

(assert (= (and b!7546550 res!3024746) b!7546554))

(assert (= (and b!7546559 (not res!3024748)) b!7546553))

(assert (= (and b!7546553 res!3024742) b!7546560))

(assert (= (and b!7546560 (not res!3024744)) b!7546552))

(assert (= (and b!7546552 (not res!3024741)) b!7546561))

(assert (= (or b!7546555 b!7546560 b!7546562) bm!692026))

(assert (=> b!7546552 m!8114804))

(declare-fun m!8114832 () Bool)

(assert (=> b!7546552 m!8114832))

(assert (=> b!7546552 m!8114832))

(declare-fun m!8114834 () Bool)

(assert (=> b!7546552 m!8114834))

(assert (=> b!7546550 m!8114804))

(assert (=> b!7546550 m!8114832))

(assert (=> b!7546550 m!8114832))

(assert (=> b!7546550 m!8114834))

(assert (=> bm!692026 m!8114804))

(declare-fun m!8114836 () Bool)

(assert (=> bm!692026 m!8114836))

(assert (=> b!7546561 m!8114804))

(declare-fun m!8114838 () Bool)

(assert (=> b!7546561 m!8114838))

(assert (=> b!7546554 m!8114804))

(assert (=> b!7546554 m!8114838))

(assert (=> d!2312167 m!8114804))

(assert (=> d!2312167 m!8114836))

(assert (=> d!2312167 m!8114796))

(declare-fun m!8114840 () Bool)

(assert (=> b!7546558 m!8114840))

(assert (=> b!7546557 m!8114804))

(assert (=> b!7546557 m!8114838))

(assert (=> b!7546557 m!8114838))

(declare-fun m!8114842 () Bool)

(assert (=> b!7546557 m!8114842))

(assert (=> b!7546557 m!8114804))

(assert (=> b!7546557 m!8114832))

(assert (=> b!7546557 m!8114842))

(assert (=> b!7546557 m!8114832))

(declare-fun m!8114844 () Bool)

(assert (=> b!7546557 m!8114844))

(assert (=> b!7546482 d!2312167))

(declare-fun d!2312171 () Bool)

(declare-fun lt!2645589 () List!72814)

(declare-fun ++!17447 (List!72814 List!72814) List!72814)

(assert (=> d!2312171 (= (++!17447 testedP!423 lt!2645589) knownP!30)))

(declare-fun e!4495776 () List!72814)

(assert (=> d!2312171 (= lt!2645589 e!4495776)))

(declare-fun c!1393012 () Bool)

(assert (=> d!2312171 (= c!1393012 ((_ is Cons!72690) testedP!423))))

(assert (=> d!2312171 (>= (size!42427 knownP!30) (size!42427 testedP!423))))

(assert (=> d!2312171 (= (getSuffix!3617 knownP!30 testedP!423) lt!2645589)))

(declare-fun b!7546568 () Bool)

(assert (=> b!7546568 (= e!4495776 (getSuffix!3617 (tail!15066 knownP!30) (t!387531 testedP!423)))))

(declare-fun b!7546569 () Bool)

(assert (=> b!7546569 (= e!4495776 knownP!30)))

(assert (= (and d!2312171 c!1393012) b!7546568))

(assert (= (and d!2312171 (not c!1393012)) b!7546569))

(declare-fun m!8114846 () Bool)

(assert (=> d!2312171 m!8114846))

(assert (=> d!2312171 m!8114802))

(assert (=> d!2312171 m!8114800))

(assert (=> b!7546568 m!8114822))

(assert (=> b!7546568 m!8114822))

(declare-fun m!8114848 () Bool)

(assert (=> b!7546568 m!8114848))

(assert (=> b!7546482 d!2312171))

(declare-fun b!7546573 () Bool)

(declare-fun e!4495777 () Bool)

(assert (=> b!7546573 (= e!4495777 (>= (size!42427 knownP!30) (size!42427 testedP!423)))))

(declare-fun b!7546570 () Bool)

(declare-fun e!4495779 () Bool)

(declare-fun e!4495778 () Bool)

(assert (=> b!7546570 (= e!4495779 e!4495778)))

(declare-fun res!3024750 () Bool)

(assert (=> b!7546570 (=> (not res!3024750) (not e!4495778))))

(assert (=> b!7546570 (= res!3024750 (not ((_ is Nil!72690) knownP!30)))))

(declare-fun b!7546572 () Bool)

(assert (=> b!7546572 (= e!4495778 (isPrefix!6137 (tail!15066 testedP!423) (tail!15066 knownP!30)))))

(declare-fun b!7546571 () Bool)

(declare-fun res!3024751 () Bool)

(assert (=> b!7546571 (=> (not res!3024751) (not e!4495778))))

(assert (=> b!7546571 (= res!3024751 (= (head!15520 testedP!423) (head!15520 knownP!30)))))

(declare-fun d!2312173 () Bool)

(assert (=> d!2312173 e!4495777))

(declare-fun res!3024752 () Bool)

(assert (=> d!2312173 (=> res!3024752 e!4495777)))

(declare-fun lt!2645590 () Bool)

(assert (=> d!2312173 (= res!3024752 (not lt!2645590))))

(assert (=> d!2312173 (= lt!2645590 e!4495779)))

(declare-fun res!3024749 () Bool)

(assert (=> d!2312173 (=> res!3024749 e!4495779)))

(assert (=> d!2312173 (= res!3024749 ((_ is Nil!72690) testedP!423))))

(assert (=> d!2312173 (= (isPrefix!6137 testedP!423 knownP!30) lt!2645590)))

(assert (= (and d!2312173 (not res!3024749)) b!7546570))

(assert (= (and b!7546570 res!3024750) b!7546571))

(assert (= (and b!7546571 res!3024751) b!7546572))

(assert (= (and d!2312173 (not res!3024752)) b!7546573))

(assert (=> b!7546573 m!8114802))

(assert (=> b!7546573 m!8114800))

(declare-fun m!8114850 () Bool)

(assert (=> b!7546572 m!8114850))

(assert (=> b!7546572 m!8114822))

(assert (=> b!7546572 m!8114850))

(assert (=> b!7546572 m!8114822))

(declare-fun m!8114852 () Bool)

(assert (=> b!7546572 m!8114852))

(declare-fun m!8114854 () Bool)

(assert (=> b!7546571 m!8114854))

(assert (=> b!7546571 m!8114828))

(assert (=> b!7546482 d!2312173))

(declare-fun d!2312175 () Bool)

(assert (=> d!2312175 (isPrefix!6137 testedP!423 knownP!30)))

(declare-fun lt!2645593 () Unit!166800)

(declare-fun choose!58397 (List!72814 List!72814 List!72814) Unit!166800)

(assert (=> d!2312175 (= lt!2645593 (choose!58397 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312175 (isPrefix!6137 knownP!30 input!7874)))

(assert (=> d!2312175 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!887 knownP!30 testedP!423 input!7874) lt!2645593)))

(declare-fun bs!1940113 () Bool)

(assert (= bs!1940113 d!2312175))

(assert (=> bs!1940113 m!8114808))

(declare-fun m!8114856 () Bool)

(assert (=> bs!1940113 m!8114856))

(assert (=> bs!1940113 m!8114812))

(assert (=> b!7546482 d!2312175))

(declare-fun b!7546605 () Bool)

(declare-fun e!4495808 () Bool)

(declare-fun call!692049 () Bool)

(assert (=> b!7546605 (= e!4495808 call!692049)))

(declare-fun b!7546606 () Bool)

(declare-fun e!4495804 () Bool)

(declare-fun call!692047 () Bool)

(assert (=> b!7546606 (= e!4495804 call!692047)))

(declare-fun b!7546607 () Bool)

(declare-fun res!3024772 () Bool)

(declare-fun e!4495803 () Bool)

(assert (=> b!7546607 (=> (not res!3024772) (not e!4495803))))

(declare-fun call!692048 () Bool)

(assert (=> b!7546607 (= res!3024772 call!692048)))

(declare-fun e!4495809 () Bool)

(assert (=> b!7546607 (= e!4495809 e!4495803)))

(declare-fun bm!692042 () Bool)

(assert (=> bm!692042 (= call!692048 call!692049)))

(declare-fun b!7546608 () Bool)

(assert (=> b!7546608 (= e!4495803 call!692047)))

(declare-fun d!2312177 () Bool)

(declare-fun res!3024770 () Bool)

(declare-fun e!4495807 () Bool)

(assert (=> d!2312177 (=> res!3024770 e!4495807)))

(assert (=> d!2312177 (= res!3024770 ((_ is ElementMatch!19931) baseR!101))))

(assert (=> d!2312177 (= (validRegex!10359 baseR!101) e!4495807)))

(declare-fun b!7546609 () Bool)

(declare-fun e!4495805 () Bool)

(assert (=> b!7546609 (= e!4495805 e!4495809)))

(declare-fun c!1393022 () Bool)

(assert (=> b!7546609 (= c!1393022 ((_ is Union!19931) baseR!101))))

(declare-fun b!7546610 () Bool)

(declare-fun e!4495806 () Bool)

(assert (=> b!7546610 (= e!4495806 e!4495804)))

(declare-fun res!3024769 () Bool)

(assert (=> b!7546610 (=> (not res!3024769) (not e!4495804))))

(assert (=> b!7546610 (= res!3024769 call!692048)))

(declare-fun b!7546611 () Bool)

(declare-fun res!3024768 () Bool)

(assert (=> b!7546611 (=> res!3024768 e!4495806)))

(assert (=> b!7546611 (= res!3024768 (not ((_ is Concat!28776) baseR!101)))))

(assert (=> b!7546611 (= e!4495809 e!4495806)))

(declare-fun b!7546612 () Bool)

(assert (=> b!7546612 (= e!4495805 e!4495808)))

(declare-fun res!3024771 () Bool)

(assert (=> b!7546612 (= res!3024771 (not (nullable!8690 (reg!20260 baseR!101))))))

(assert (=> b!7546612 (=> (not res!3024771) (not e!4495808))))

(declare-fun bm!692043 () Bool)

(declare-fun c!1393021 () Bool)

(assert (=> bm!692043 (= call!692049 (validRegex!10359 (ite c!1393021 (reg!20260 baseR!101) (ite c!1393022 (regOne!40375 baseR!101) (regOne!40374 baseR!101)))))))

(declare-fun bm!692044 () Bool)

(assert (=> bm!692044 (= call!692047 (validRegex!10359 (ite c!1393022 (regTwo!40375 baseR!101) (regTwo!40374 baseR!101))))))

(declare-fun b!7546613 () Bool)

(assert (=> b!7546613 (= e!4495807 e!4495805)))

(assert (=> b!7546613 (= c!1393021 ((_ is Star!19931) baseR!101))))

(assert (= (and d!2312177 (not res!3024770)) b!7546613))

(assert (= (and b!7546613 c!1393021) b!7546612))

(assert (= (and b!7546613 (not c!1393021)) b!7546609))

(assert (= (and b!7546612 res!3024771) b!7546605))

(assert (= (and b!7546609 c!1393022) b!7546607))

(assert (= (and b!7546609 (not c!1393022)) b!7546611))

(assert (= (and b!7546607 res!3024772) b!7546608))

(assert (= (and b!7546611 (not res!3024768)) b!7546610))

(assert (= (and b!7546610 res!3024769) b!7546606))

(assert (= (or b!7546607 b!7546610) bm!692042))

(assert (= (or b!7546608 b!7546606) bm!692044))

(assert (= (or b!7546605 bm!692042) bm!692043))

(declare-fun m!8114864 () Bool)

(assert (=> b!7546612 m!8114864))

(declare-fun m!8114866 () Bool)

(assert (=> bm!692043 m!8114866))

(declare-fun m!8114868 () Bool)

(assert (=> bm!692044 m!8114868))

(assert (=> start!729748 d!2312177))

(declare-fun d!2312181 () Bool)

(declare-fun lostCauseFct!444 (Regex!19931) Bool)

(assert (=> d!2312181 (= (lostCause!1723 r!24333) (lostCauseFct!444 r!24333))))

(declare-fun bs!1940114 () Bool)

(assert (= bs!1940114 d!2312181))

(declare-fun m!8114872 () Bool)

(assert (=> bs!1940114 m!8114872))

(assert (=> b!7546484 d!2312181))

(declare-fun d!2312185 () Bool)

(declare-fun lt!2645599 () Int)

(assert (=> d!2312185 (>= lt!2645599 0)))

(declare-fun e!4495813 () Int)

(assert (=> d!2312185 (= lt!2645599 e!4495813)))

(declare-fun c!1393026 () Bool)

(assert (=> d!2312185 (= c!1393026 ((_ is Nil!72690) input!7874))))

(assert (=> d!2312185 (= (size!42427 input!7874) lt!2645599)))

(declare-fun b!7546620 () Bool)

(assert (=> b!7546620 (= e!4495813 0)))

(declare-fun b!7546621 () Bool)

(assert (=> b!7546621 (= e!4495813 (+ 1 (size!42427 (t!387531 input!7874))))))

(assert (= (and d!2312185 c!1393026) b!7546620))

(assert (= (and d!2312185 (not c!1393026)) b!7546621))

(declare-fun m!8114874 () Bool)

(assert (=> b!7546621 m!8114874))

(assert (=> b!7546479 d!2312185))

(declare-fun b!7546625 () Bool)

(declare-fun e!4495814 () Bool)

(assert (=> b!7546625 (= e!4495814 (>= (size!42427 input!7874) (size!42427 testedP!423)))))

(declare-fun b!7546622 () Bool)

(declare-fun e!4495816 () Bool)

(declare-fun e!4495815 () Bool)

(assert (=> b!7546622 (= e!4495816 e!4495815)))

(declare-fun res!3024774 () Bool)

(assert (=> b!7546622 (=> (not res!3024774) (not e!4495815))))

(assert (=> b!7546622 (= res!3024774 (not ((_ is Nil!72690) input!7874)))))

(declare-fun b!7546624 () Bool)

(assert (=> b!7546624 (= e!4495815 (isPrefix!6137 (tail!15066 testedP!423) (tail!15066 input!7874)))))

(declare-fun b!7546623 () Bool)

(declare-fun res!3024775 () Bool)

(assert (=> b!7546623 (=> (not res!3024775) (not e!4495815))))

(assert (=> b!7546623 (= res!3024775 (= (head!15520 testedP!423) (head!15520 input!7874)))))

(declare-fun d!2312187 () Bool)

(assert (=> d!2312187 e!4495814))

(declare-fun res!3024776 () Bool)

(assert (=> d!2312187 (=> res!3024776 e!4495814)))

(declare-fun lt!2645600 () Bool)

(assert (=> d!2312187 (= res!3024776 (not lt!2645600))))

(assert (=> d!2312187 (= lt!2645600 e!4495816)))

(declare-fun res!3024773 () Bool)

(assert (=> d!2312187 (=> res!3024773 e!4495816)))

(assert (=> d!2312187 (= res!3024773 ((_ is Nil!72690) testedP!423))))

(assert (=> d!2312187 (= (isPrefix!6137 testedP!423 input!7874) lt!2645600)))

(assert (= (and d!2312187 (not res!3024773)) b!7546622))

(assert (= (and b!7546622 res!3024774) b!7546623))

(assert (= (and b!7546623 res!3024775) b!7546624))

(assert (= (and d!2312187 (not res!3024776)) b!7546625))

(assert (=> b!7546625 m!8114816))

(assert (=> b!7546625 m!8114800))

(assert (=> b!7546624 m!8114850))

(assert (=> b!7546624 m!8114824))

(assert (=> b!7546624 m!8114850))

(assert (=> b!7546624 m!8114824))

(declare-fun m!8114878 () Bool)

(assert (=> b!7546624 m!8114878))

(assert (=> b!7546623 m!8114854))

(assert (=> b!7546623 m!8114830))

(assert (=> b!7546480 d!2312187))

(declare-fun d!2312191 () Bool)

(declare-fun lt!2645603 () Regex!19931)

(assert (=> d!2312191 (validRegex!10359 lt!2645603)))

(declare-fun e!4495819 () Regex!19931)

(assert (=> d!2312191 (= lt!2645603 e!4495819)))

(declare-fun c!1393029 () Bool)

(assert (=> d!2312191 (= c!1393029 ((_ is Cons!72690) testedP!423))))

(assert (=> d!2312191 (validRegex!10359 baseR!101)))

(assert (=> d!2312191 (= (derivative!463 baseR!101 testedP!423) lt!2645603)))

(declare-fun b!7546630 () Bool)

(assert (=> b!7546630 (= e!4495819 (derivative!463 (derivativeStep!5720 baseR!101 (h!79138 testedP!423)) (t!387531 testedP!423)))))

(declare-fun b!7546631 () Bool)

(assert (=> b!7546631 (= e!4495819 baseR!101)))

(assert (= (and d!2312191 c!1393029) b!7546630))

(assert (= (and d!2312191 (not c!1393029)) b!7546631))

(declare-fun m!8114880 () Bool)

(assert (=> d!2312191 m!8114880))

(assert (=> d!2312191 m!8114820))

(declare-fun m!8114882 () Bool)

(assert (=> b!7546630 m!8114882))

(assert (=> b!7546630 m!8114882))

(declare-fun m!8114884 () Bool)

(assert (=> b!7546630 m!8114884))

(assert (=> b!7546490 d!2312191))

(declare-fun d!2312193 () Bool)

(declare-fun lt!2645604 () Int)

(assert (=> d!2312193 (>= lt!2645604 0)))

(declare-fun e!4495820 () Int)

(assert (=> d!2312193 (= lt!2645604 e!4495820)))

(declare-fun c!1393030 () Bool)

(assert (=> d!2312193 (= c!1393030 ((_ is Nil!72690) testedP!423))))

(assert (=> d!2312193 (= (size!42427 testedP!423) lt!2645604)))

(declare-fun b!7546632 () Bool)

(assert (=> b!7546632 (= e!4495820 0)))

(declare-fun b!7546633 () Bool)

(assert (=> b!7546633 (= e!4495820 (+ 1 (size!42427 (t!387531 testedP!423))))))

(assert (= (and d!2312193 c!1393030) b!7546632))

(assert (= (and d!2312193 (not c!1393030)) b!7546633))

(declare-fun m!8114886 () Bool)

(assert (=> b!7546633 m!8114886))

(assert (=> b!7546485 d!2312193))

(declare-fun d!2312195 () Bool)

(declare-fun lt!2645605 () Int)

(assert (=> d!2312195 (>= lt!2645605 0)))

(declare-fun e!4495821 () Int)

(assert (=> d!2312195 (= lt!2645605 e!4495821)))

(declare-fun c!1393031 () Bool)

(assert (=> d!2312195 (= c!1393031 ((_ is Nil!72690) knownP!30))))

(assert (=> d!2312195 (= (size!42427 knownP!30) lt!2645605)))

(declare-fun b!7546634 () Bool)

(assert (=> b!7546634 (= e!4495821 0)))

(declare-fun b!7546635 () Bool)

(assert (=> b!7546635 (= e!4495821 (+ 1 (size!42427 (t!387531 knownP!30))))))

(assert (= (and d!2312195 c!1393031) b!7546634))

(assert (= (and d!2312195 (not c!1393031)) b!7546635))

(declare-fun m!8114888 () Bool)

(assert (=> b!7546635 m!8114888))

(assert (=> b!7546485 d!2312195))

(declare-fun b!7546636 () Bool)

(declare-fun res!3024782 () Bool)

(declare-fun e!4495823 () Bool)

(assert (=> b!7546636 (=> (not res!3024782) (not e!4495823))))

(assert (=> b!7546636 (= res!3024782 (isEmpty!41386 (tail!15066 knownP!30)))))

(declare-fun b!7546637 () Bool)

(declare-fun e!4495826 () Bool)

(declare-fun lt!2645606 () Bool)

(assert (=> b!7546637 (= e!4495826 (not lt!2645606))))

(declare-fun b!7546638 () Bool)

(declare-fun res!3024777 () Bool)

(declare-fun e!4495828 () Bool)

(assert (=> b!7546638 (=> res!3024777 e!4495828)))

(assert (=> b!7546638 (= res!3024777 (not (isEmpty!41386 (tail!15066 knownP!30))))))

(declare-fun b!7546639 () Bool)

(declare-fun e!4495822 () Bool)

(declare-fun e!4495824 () Bool)

(assert (=> b!7546639 (= e!4495822 e!4495824)))

(declare-fun res!3024778 () Bool)

(assert (=> b!7546639 (=> (not res!3024778) (not e!4495824))))

(assert (=> b!7546639 (= res!3024778 (not lt!2645606))))

(declare-fun b!7546640 () Bool)

(assert (=> b!7546640 (= e!4495823 (= (head!15520 knownP!30) (c!1392996 baseR!101)))))

(declare-fun b!7546641 () Bool)

(declare-fun e!4495825 () Bool)

(declare-fun call!692050 () Bool)

(assert (=> b!7546641 (= e!4495825 (= lt!2645606 call!692050))))

(declare-fun b!7546642 () Bool)

(assert (=> b!7546642 (= e!4495825 e!4495826)))

(declare-fun c!1393032 () Bool)

(assert (=> b!7546642 (= c!1393032 ((_ is EmptyLang!19931) baseR!101))))

(declare-fun b!7546643 () Bool)

(declare-fun e!4495827 () Bool)

(assert (=> b!7546643 (= e!4495827 (matchR!9533 (derivativeStep!5720 baseR!101 (head!15520 knownP!30)) (tail!15066 knownP!30)))))

(declare-fun bm!692045 () Bool)

(assert (=> bm!692045 (= call!692050 (isEmpty!41386 knownP!30))))

(declare-fun b!7546644 () Bool)

(assert (=> b!7546644 (= e!4495827 (nullable!8690 baseR!101))))

(declare-fun d!2312197 () Bool)

(assert (=> d!2312197 e!4495825))

(declare-fun c!1393034 () Bool)

(assert (=> d!2312197 (= c!1393034 ((_ is EmptyExpr!19931) baseR!101))))

(assert (=> d!2312197 (= lt!2645606 e!4495827)))

(declare-fun c!1393033 () Bool)

(assert (=> d!2312197 (= c!1393033 (isEmpty!41386 knownP!30))))

(assert (=> d!2312197 (validRegex!10359 baseR!101)))

(assert (=> d!2312197 (= (matchR!9533 baseR!101 knownP!30) lt!2645606)))

(declare-fun b!7546645 () Bool)

(declare-fun res!3024784 () Bool)

(assert (=> b!7546645 (=> res!3024784 e!4495822)))

(assert (=> b!7546645 (= res!3024784 e!4495823)))

(declare-fun res!3024779 () Bool)

(assert (=> b!7546645 (=> (not res!3024779) (not e!4495823))))

(assert (=> b!7546645 (= res!3024779 lt!2645606)))

(declare-fun b!7546646 () Bool)

(assert (=> b!7546646 (= e!4495824 e!4495828)))

(declare-fun res!3024780 () Bool)

(assert (=> b!7546646 (=> res!3024780 e!4495828)))

(assert (=> b!7546646 (= res!3024780 call!692050)))

(declare-fun b!7546647 () Bool)

(assert (=> b!7546647 (= e!4495828 (not (= (head!15520 knownP!30) (c!1392996 baseR!101))))))

(declare-fun b!7546648 () Bool)

(declare-fun res!3024781 () Bool)

(assert (=> b!7546648 (=> (not res!3024781) (not e!4495823))))

(assert (=> b!7546648 (= res!3024781 (not call!692050))))

(declare-fun b!7546649 () Bool)

(declare-fun res!3024783 () Bool)

(assert (=> b!7546649 (=> res!3024783 e!4495822)))

(assert (=> b!7546649 (= res!3024783 (not ((_ is ElementMatch!19931) baseR!101)))))

(assert (=> b!7546649 (= e!4495826 e!4495822)))

(assert (= (and d!2312197 c!1393033) b!7546644))

(assert (= (and d!2312197 (not c!1393033)) b!7546643))

(assert (= (and d!2312197 c!1393034) b!7546641))

(assert (= (and d!2312197 (not c!1393034)) b!7546642))

(assert (= (and b!7546642 c!1393032) b!7546637))

(assert (= (and b!7546642 (not c!1393032)) b!7546649))

(assert (= (and b!7546649 (not res!3024783)) b!7546645))

(assert (= (and b!7546645 res!3024779) b!7546648))

(assert (= (and b!7546648 res!3024781) b!7546636))

(assert (= (and b!7546636 res!3024782) b!7546640))

(assert (= (and b!7546645 (not res!3024784)) b!7546639))

(assert (= (and b!7546639 res!3024778) b!7546646))

(assert (= (and b!7546646 (not res!3024780)) b!7546638))

(assert (= (and b!7546638 (not res!3024777)) b!7546647))

(assert (= (or b!7546641 b!7546646 b!7546648) bm!692045))

(assert (=> b!7546638 m!8114822))

(assert (=> b!7546638 m!8114822))

(declare-fun m!8114890 () Bool)

(assert (=> b!7546638 m!8114890))

(assert (=> b!7546636 m!8114822))

(assert (=> b!7546636 m!8114822))

(assert (=> b!7546636 m!8114890))

(declare-fun m!8114892 () Bool)

(assert (=> bm!692045 m!8114892))

(assert (=> b!7546647 m!8114828))

(assert (=> b!7546640 m!8114828))

(assert (=> d!2312197 m!8114892))

(assert (=> d!2312197 m!8114820))

(declare-fun m!8114894 () Bool)

(assert (=> b!7546644 m!8114894))

(assert (=> b!7546643 m!8114828))

(assert (=> b!7546643 m!8114828))

(declare-fun m!8114896 () Bool)

(assert (=> b!7546643 m!8114896))

(assert (=> b!7546643 m!8114822))

(assert (=> b!7546643 m!8114896))

(assert (=> b!7546643 m!8114822))

(declare-fun m!8114898 () Bool)

(assert (=> b!7546643 m!8114898))

(assert (=> b!7546487 d!2312197))

(declare-fun b!7546650 () Bool)

(declare-fun e!4495834 () Bool)

(declare-fun call!692053 () Bool)

(assert (=> b!7546650 (= e!4495834 call!692053)))

(declare-fun b!7546651 () Bool)

(declare-fun e!4495830 () Bool)

(declare-fun call!692051 () Bool)

(assert (=> b!7546651 (= e!4495830 call!692051)))

(declare-fun b!7546652 () Bool)

(declare-fun res!3024789 () Bool)

(declare-fun e!4495829 () Bool)

(assert (=> b!7546652 (=> (not res!3024789) (not e!4495829))))

(declare-fun call!692052 () Bool)

(assert (=> b!7546652 (= res!3024789 call!692052)))

(declare-fun e!4495835 () Bool)

(assert (=> b!7546652 (= e!4495835 e!4495829)))

(declare-fun bm!692046 () Bool)

(assert (=> bm!692046 (= call!692052 call!692053)))

(declare-fun b!7546653 () Bool)

(assert (=> b!7546653 (= e!4495829 call!692051)))

(declare-fun d!2312199 () Bool)

(declare-fun res!3024787 () Bool)

(declare-fun e!4495833 () Bool)

(assert (=> d!2312199 (=> res!3024787 e!4495833)))

(assert (=> d!2312199 (= res!3024787 ((_ is ElementMatch!19931) r!24333))))

(assert (=> d!2312199 (= (validRegex!10359 r!24333) e!4495833)))

(declare-fun b!7546654 () Bool)

(declare-fun e!4495831 () Bool)

(assert (=> b!7546654 (= e!4495831 e!4495835)))

(declare-fun c!1393036 () Bool)

(assert (=> b!7546654 (= c!1393036 ((_ is Union!19931) r!24333))))

(declare-fun b!7546655 () Bool)

(declare-fun e!4495832 () Bool)

(assert (=> b!7546655 (= e!4495832 e!4495830)))

(declare-fun res!3024786 () Bool)

(assert (=> b!7546655 (=> (not res!3024786) (not e!4495830))))

(assert (=> b!7546655 (= res!3024786 call!692052)))

(declare-fun b!7546656 () Bool)

(declare-fun res!3024785 () Bool)

(assert (=> b!7546656 (=> res!3024785 e!4495832)))

(assert (=> b!7546656 (= res!3024785 (not ((_ is Concat!28776) r!24333)))))

(assert (=> b!7546656 (= e!4495835 e!4495832)))

(declare-fun b!7546657 () Bool)

(assert (=> b!7546657 (= e!4495831 e!4495834)))

(declare-fun res!3024788 () Bool)

(assert (=> b!7546657 (= res!3024788 (not (nullable!8690 (reg!20260 r!24333))))))

(assert (=> b!7546657 (=> (not res!3024788) (not e!4495834))))

(declare-fun bm!692047 () Bool)

(declare-fun c!1393035 () Bool)

(assert (=> bm!692047 (= call!692053 (validRegex!10359 (ite c!1393035 (reg!20260 r!24333) (ite c!1393036 (regOne!40375 r!24333) (regOne!40374 r!24333)))))))

(declare-fun bm!692048 () Bool)

(assert (=> bm!692048 (= call!692051 (validRegex!10359 (ite c!1393036 (regTwo!40375 r!24333) (regTwo!40374 r!24333))))))

(declare-fun b!7546658 () Bool)

(assert (=> b!7546658 (= e!4495833 e!4495831)))

(assert (=> b!7546658 (= c!1393035 ((_ is Star!19931) r!24333))))

(assert (= (and d!2312199 (not res!3024787)) b!7546658))

(assert (= (and b!7546658 c!1393035) b!7546657))

(assert (= (and b!7546658 (not c!1393035)) b!7546654))

(assert (= (and b!7546657 res!3024788) b!7546650))

(assert (= (and b!7546654 c!1393036) b!7546652))

(assert (= (and b!7546654 (not c!1393036)) b!7546656))

(assert (= (and b!7546652 res!3024789) b!7546653))

(assert (= (and b!7546656 (not res!3024785)) b!7546655))

(assert (= (and b!7546655 res!3024786) b!7546651))

(assert (= (or b!7546652 b!7546655) bm!692046))

(assert (= (or b!7546653 b!7546651) bm!692048))

(assert (= (or b!7546650 bm!692046) bm!692047))

(declare-fun m!8114900 () Bool)

(assert (=> b!7546657 m!8114900))

(declare-fun m!8114902 () Bool)

(assert (=> bm!692047 m!8114902))

(declare-fun m!8114904 () Bool)

(assert (=> bm!692048 m!8114904))

(assert (=> b!7546486 d!2312199))

(declare-fun b!7546671 () Bool)

(declare-fun e!4495838 () Bool)

(declare-fun tp!2195246 () Bool)

(assert (=> b!7546671 (= e!4495838 tp!2195246)))

(declare-fun b!7546669 () Bool)

(assert (=> b!7546669 (= e!4495838 tp_is_empty!50217)))

(declare-fun b!7546670 () Bool)

(declare-fun tp!2195247 () Bool)

(declare-fun tp!2195245 () Bool)

(assert (=> b!7546670 (= e!4495838 (and tp!2195247 tp!2195245))))

(assert (=> b!7546488 (= tp!2195222 e!4495838)))

(declare-fun b!7546672 () Bool)

(declare-fun tp!2195248 () Bool)

(declare-fun tp!2195244 () Bool)

(assert (=> b!7546672 (= e!4495838 (and tp!2195248 tp!2195244))))

(assert (= (and b!7546488 ((_ is ElementMatch!19931) (regOne!40374 baseR!101))) b!7546669))

(assert (= (and b!7546488 ((_ is Concat!28776) (regOne!40374 baseR!101))) b!7546670))

(assert (= (and b!7546488 ((_ is Star!19931) (regOne!40374 baseR!101))) b!7546671))

(assert (= (and b!7546488 ((_ is Union!19931) (regOne!40374 baseR!101))) b!7546672))

(declare-fun b!7546675 () Bool)

(declare-fun e!4495839 () Bool)

(declare-fun tp!2195251 () Bool)

(assert (=> b!7546675 (= e!4495839 tp!2195251)))

(declare-fun b!7546673 () Bool)

(assert (=> b!7546673 (= e!4495839 tp_is_empty!50217)))

(declare-fun b!7546674 () Bool)

(declare-fun tp!2195252 () Bool)

(declare-fun tp!2195250 () Bool)

(assert (=> b!7546674 (= e!4495839 (and tp!2195252 tp!2195250))))

(assert (=> b!7546488 (= tp!2195233 e!4495839)))

(declare-fun b!7546676 () Bool)

(declare-fun tp!2195253 () Bool)

(declare-fun tp!2195249 () Bool)

(assert (=> b!7546676 (= e!4495839 (and tp!2195253 tp!2195249))))

(assert (= (and b!7546488 ((_ is ElementMatch!19931) (regTwo!40374 baseR!101))) b!7546673))

(assert (= (and b!7546488 ((_ is Concat!28776) (regTwo!40374 baseR!101))) b!7546674))

(assert (= (and b!7546488 ((_ is Star!19931) (regTwo!40374 baseR!101))) b!7546675))

(assert (= (and b!7546488 ((_ is Union!19931) (regTwo!40374 baseR!101))) b!7546676))

(declare-fun b!7546681 () Bool)

(declare-fun e!4495842 () Bool)

(declare-fun tp!2195256 () Bool)

(assert (=> b!7546681 (= e!4495842 (and tp_is_empty!50217 tp!2195256))))

(assert (=> b!7546472 (= tp!2195225 e!4495842)))

(assert (= (and b!7546472 ((_ is Cons!72690) (t!387531 testedP!423))) b!7546681))

(declare-fun b!7546684 () Bool)

(declare-fun e!4495843 () Bool)

(declare-fun tp!2195259 () Bool)

(assert (=> b!7546684 (= e!4495843 tp!2195259)))

(declare-fun b!7546682 () Bool)

(assert (=> b!7546682 (= e!4495843 tp_is_empty!50217)))

(declare-fun b!7546683 () Bool)

(declare-fun tp!2195260 () Bool)

(declare-fun tp!2195258 () Bool)

(assert (=> b!7546683 (= e!4495843 (and tp!2195260 tp!2195258))))

(assert (=> b!7546478 (= tp!2195224 e!4495843)))

(declare-fun b!7546685 () Bool)

(declare-fun tp!2195261 () Bool)

(declare-fun tp!2195257 () Bool)

(assert (=> b!7546685 (= e!4495843 (and tp!2195261 tp!2195257))))

(assert (= (and b!7546478 ((_ is ElementMatch!19931) (reg!20260 r!24333))) b!7546682))

(assert (= (and b!7546478 ((_ is Concat!28776) (reg!20260 r!24333))) b!7546683))

(assert (= (and b!7546478 ((_ is Star!19931) (reg!20260 r!24333))) b!7546684))

(assert (= (and b!7546478 ((_ is Union!19931) (reg!20260 r!24333))) b!7546685))

(declare-fun b!7546686 () Bool)

(declare-fun e!4495844 () Bool)

(declare-fun tp!2195262 () Bool)

(assert (=> b!7546686 (= e!4495844 (and tp_is_empty!50217 tp!2195262))))

(assert (=> b!7546489 (= tp!2195231 e!4495844)))

(assert (= (and b!7546489 ((_ is Cons!72690) (t!387531 knownP!30))) b!7546686))

(declare-fun b!7546689 () Bool)

(declare-fun e!4495845 () Bool)

(declare-fun tp!2195265 () Bool)

(assert (=> b!7546689 (= e!4495845 tp!2195265)))

(declare-fun b!7546687 () Bool)

(assert (=> b!7546687 (= e!4495845 tp_is_empty!50217)))

(declare-fun b!7546688 () Bool)

(declare-fun tp!2195266 () Bool)

(declare-fun tp!2195264 () Bool)

(assert (=> b!7546688 (= e!4495845 (and tp!2195266 tp!2195264))))

(assert (=> b!7546473 (= tp!2195226 e!4495845)))

(declare-fun b!7546690 () Bool)

(declare-fun tp!2195267 () Bool)

(declare-fun tp!2195263 () Bool)

(assert (=> b!7546690 (= e!4495845 (and tp!2195267 tp!2195263))))

(assert (= (and b!7546473 ((_ is ElementMatch!19931) (regOne!40375 r!24333))) b!7546687))

(assert (= (and b!7546473 ((_ is Concat!28776) (regOne!40375 r!24333))) b!7546688))

(assert (= (and b!7546473 ((_ is Star!19931) (regOne!40375 r!24333))) b!7546689))

(assert (= (and b!7546473 ((_ is Union!19931) (regOne!40375 r!24333))) b!7546690))

(declare-fun b!7546693 () Bool)

(declare-fun e!4495846 () Bool)

(declare-fun tp!2195270 () Bool)

(assert (=> b!7546693 (= e!4495846 tp!2195270)))

(declare-fun b!7546691 () Bool)

(assert (=> b!7546691 (= e!4495846 tp_is_empty!50217)))

(declare-fun b!7546692 () Bool)

(declare-fun tp!2195271 () Bool)

(declare-fun tp!2195269 () Bool)

(assert (=> b!7546692 (= e!4495846 (and tp!2195271 tp!2195269))))

(assert (=> b!7546473 (= tp!2195221 e!4495846)))

(declare-fun b!7546694 () Bool)

(declare-fun tp!2195272 () Bool)

(declare-fun tp!2195268 () Bool)

(assert (=> b!7546694 (= e!4495846 (and tp!2195272 tp!2195268))))

(assert (= (and b!7546473 ((_ is ElementMatch!19931) (regTwo!40375 r!24333))) b!7546691))

(assert (= (and b!7546473 ((_ is Concat!28776) (regTwo!40375 r!24333))) b!7546692))

(assert (= (and b!7546473 ((_ is Star!19931) (regTwo!40375 r!24333))) b!7546693))

(assert (= (and b!7546473 ((_ is Union!19931) (regTwo!40375 r!24333))) b!7546694))

(declare-fun b!7546697 () Bool)

(declare-fun e!4495847 () Bool)

(declare-fun tp!2195275 () Bool)

(assert (=> b!7546697 (= e!4495847 tp!2195275)))

(declare-fun b!7546695 () Bool)

(assert (=> b!7546695 (= e!4495847 tp_is_empty!50217)))

(declare-fun b!7546696 () Bool)

(declare-fun tp!2195276 () Bool)

(declare-fun tp!2195274 () Bool)

(assert (=> b!7546696 (= e!4495847 (and tp!2195276 tp!2195274))))

(assert (=> b!7546491 (= tp!2195232 e!4495847)))

(declare-fun b!7546698 () Bool)

(declare-fun tp!2195277 () Bool)

(declare-fun tp!2195273 () Bool)

(assert (=> b!7546698 (= e!4495847 (and tp!2195277 tp!2195273))))

(assert (= (and b!7546491 ((_ is ElementMatch!19931) (regOne!40375 baseR!101))) b!7546695))

(assert (= (and b!7546491 ((_ is Concat!28776) (regOne!40375 baseR!101))) b!7546696))

(assert (= (and b!7546491 ((_ is Star!19931) (regOne!40375 baseR!101))) b!7546697))

(assert (= (and b!7546491 ((_ is Union!19931) (regOne!40375 baseR!101))) b!7546698))

(declare-fun b!7546701 () Bool)

(declare-fun e!4495848 () Bool)

(declare-fun tp!2195280 () Bool)

(assert (=> b!7546701 (= e!4495848 tp!2195280)))

(declare-fun b!7546699 () Bool)

(assert (=> b!7546699 (= e!4495848 tp_is_empty!50217)))

(declare-fun b!7546700 () Bool)

(declare-fun tp!2195281 () Bool)

(declare-fun tp!2195279 () Bool)

(assert (=> b!7546700 (= e!4495848 (and tp!2195281 tp!2195279))))

(assert (=> b!7546491 (= tp!2195229 e!4495848)))

(declare-fun b!7546702 () Bool)

(declare-fun tp!2195282 () Bool)

(declare-fun tp!2195278 () Bool)

(assert (=> b!7546702 (= e!4495848 (and tp!2195282 tp!2195278))))

(assert (= (and b!7546491 ((_ is ElementMatch!19931) (regTwo!40375 baseR!101))) b!7546699))

(assert (= (and b!7546491 ((_ is Concat!28776) (regTwo!40375 baseR!101))) b!7546700))

(assert (= (and b!7546491 ((_ is Star!19931) (regTwo!40375 baseR!101))) b!7546701))

(assert (= (and b!7546491 ((_ is Union!19931) (regTwo!40375 baseR!101))) b!7546702))

(declare-fun b!7546703 () Bool)

(declare-fun e!4495849 () Bool)

(declare-fun tp!2195283 () Bool)

(assert (=> b!7546703 (= e!4495849 (and tp_is_empty!50217 tp!2195283))))

(assert (=> b!7546475 (= tp!2195228 e!4495849)))

(assert (= (and b!7546475 ((_ is Cons!72690) (t!387531 input!7874))) b!7546703))

(declare-fun b!7546706 () Bool)

(declare-fun e!4495850 () Bool)

(declare-fun tp!2195286 () Bool)

(assert (=> b!7546706 (= e!4495850 tp!2195286)))

(declare-fun b!7546704 () Bool)

(assert (=> b!7546704 (= e!4495850 tp_is_empty!50217)))

(declare-fun b!7546705 () Bool)

(declare-fun tp!2195287 () Bool)

(declare-fun tp!2195285 () Bool)

(assert (=> b!7546705 (= e!4495850 (and tp!2195287 tp!2195285))))

(assert (=> b!7546474 (= tp!2195227 e!4495850)))

(declare-fun b!7546707 () Bool)

(declare-fun tp!2195288 () Bool)

(declare-fun tp!2195284 () Bool)

(assert (=> b!7546707 (= e!4495850 (and tp!2195288 tp!2195284))))

(assert (= (and b!7546474 ((_ is ElementMatch!19931) (regOne!40374 r!24333))) b!7546704))

(assert (= (and b!7546474 ((_ is Concat!28776) (regOne!40374 r!24333))) b!7546705))

(assert (= (and b!7546474 ((_ is Star!19931) (regOne!40374 r!24333))) b!7546706))

(assert (= (and b!7546474 ((_ is Union!19931) (regOne!40374 r!24333))) b!7546707))

(declare-fun b!7546710 () Bool)

(declare-fun e!4495851 () Bool)

(declare-fun tp!2195291 () Bool)

(assert (=> b!7546710 (= e!4495851 tp!2195291)))

(declare-fun b!7546708 () Bool)

(assert (=> b!7546708 (= e!4495851 tp_is_empty!50217)))

(declare-fun b!7546709 () Bool)

(declare-fun tp!2195292 () Bool)

(declare-fun tp!2195290 () Bool)

(assert (=> b!7546709 (= e!4495851 (and tp!2195292 tp!2195290))))

(assert (=> b!7546474 (= tp!2195230 e!4495851)))

(declare-fun b!7546711 () Bool)

(declare-fun tp!2195293 () Bool)

(declare-fun tp!2195289 () Bool)

(assert (=> b!7546711 (= e!4495851 (and tp!2195293 tp!2195289))))

(assert (= (and b!7546474 ((_ is ElementMatch!19931) (regTwo!40374 r!24333))) b!7546708))

(assert (= (and b!7546474 ((_ is Concat!28776) (regTwo!40374 r!24333))) b!7546709))

(assert (= (and b!7546474 ((_ is Star!19931) (regTwo!40374 r!24333))) b!7546710))

(assert (= (and b!7546474 ((_ is Union!19931) (regTwo!40374 r!24333))) b!7546711))

(declare-fun b!7546714 () Bool)

(declare-fun e!4495852 () Bool)

(declare-fun tp!2195296 () Bool)

(assert (=> b!7546714 (= e!4495852 tp!2195296)))

(declare-fun b!7546712 () Bool)

(assert (=> b!7546712 (= e!4495852 tp_is_empty!50217)))

(declare-fun b!7546713 () Bool)

(declare-fun tp!2195297 () Bool)

(declare-fun tp!2195295 () Bool)

(assert (=> b!7546713 (= e!4495852 (and tp!2195297 tp!2195295))))

(assert (=> b!7546476 (= tp!2195223 e!4495852)))

(declare-fun b!7546715 () Bool)

(declare-fun tp!2195298 () Bool)

(declare-fun tp!2195294 () Bool)

(assert (=> b!7546715 (= e!4495852 (and tp!2195298 tp!2195294))))

(assert (= (and b!7546476 ((_ is ElementMatch!19931) (reg!20260 baseR!101))) b!7546712))

(assert (= (and b!7546476 ((_ is Concat!28776) (reg!20260 baseR!101))) b!7546713))

(assert (= (and b!7546476 ((_ is Star!19931) (reg!20260 baseR!101))) b!7546714))

(assert (= (and b!7546476 ((_ is Union!19931) (reg!20260 baseR!101))) b!7546715))

(check-sat (not b!7546688) (not b!7546703) (not b!7546624) (not b!7546690) (not b!7546686) (not b!7546705) (not b!7546701) (not b!7546630) (not b!7546706) (not b!7546571) (not b!7546671) (not b!7546557) (not bm!692047) (not b!7546647) (not b!7546697) (not b!7546625) (not b!7546676) (not b!7546692) (not d!2312171) (not b!7546714) tp_is_empty!50217 (not b!7546675) (not b!7546568) (not b!7546713) (not b!7546709) (not b!7546644) (not b!7546683) (not b!7546710) (not b!7546672) (not bm!692048) (not b!7546643) (not b!7546572) (not b!7546702) (not bm!692026) (not b!7546550) (not b!7546707) (not b!7546696) (not b!7546502) (not b!7546684) (not b!7546552) (not b!7546633) (not d!2312167) (not b!7546635) (not b!7546558) (not b!7546640) (not b!7546693) (not bm!692043) (not d!2312191) (not b!7546657) (not b!7546621) (not b!7546623) (not b!7546689) (not b!7546694) (not d!2312175) (not b!7546681) (not b!7546573) (not d!2312197) (not b!7546715) (not b!7546503) (not b!7546561) (not d!2312181) (not b!7546711) (not b!7546700) (not b!7546670) (not b!7546685) (not b!7546698) (not b!7546638) (not b!7546674) (not b!7546636) (not bm!692045) (not b!7546612) (not bm!692044) (not b!7546554) (not b!7546501))
(check-sat)
