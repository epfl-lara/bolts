; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750548 () Bool)

(assert start!750548)

(declare-fun b!7953606 () Bool)

(declare-fun res!3153654 () Bool)

(declare-fun e!4691540 () Bool)

(assert (=> b!7953606 (=> (not res!3153654) (not e!4691540))))

(declare-datatypes ((C!43296 0))(
  ( (C!43297 (val!32196 Int)) )
))
(declare-datatypes ((List!74708 0))(
  ( (Nil!74584) (Cons!74584 (h!81032 C!43296) (t!390451 List!74708)) )
))
(declare-fun testedP!447 () List!74708)

(declare-fun input!7927 () List!74708)

(assert (=> b!7953606 (= res!3153654 (not (= testedP!447 input!7927)))))

(declare-fun b!7953607 () Bool)

(declare-fun e!4691541 () Bool)

(declare-fun tp!2367604 () Bool)

(assert (=> b!7953607 (= e!4691541 tp!2367604)))

(declare-fun b!7953608 () Bool)

(declare-fun tp!2367596 () Bool)

(declare-fun tp!2367599 () Bool)

(assert (=> b!7953608 (= e!4691541 (and tp!2367596 tp!2367599))))

(declare-fun b!7953609 () Bool)

(declare-fun e!4691538 () Bool)

(declare-fun tp!2367595 () Bool)

(declare-fun tp!2367601 () Bool)

(assert (=> b!7953609 (= e!4691538 (and tp!2367595 tp!2367601))))

(declare-fun b!7953610 () Bool)

(declare-fun e!4691537 () Bool)

(declare-fun e!4691535 () Bool)

(assert (=> b!7953610 (= e!4691537 e!4691535)))

(declare-fun res!3153647 () Bool)

(assert (=> b!7953610 (=> res!3153647 e!4691535)))

(declare-datatypes ((Regex!21479 0))(
  ( (ElementMatch!21479 (c!1460858 C!43296)) (Concat!30478 (regOne!43470 Regex!21479) (regTwo!43470 Regex!21479)) (EmptyExpr!21479) (Star!21479 (reg!21808 Regex!21479)) (EmptyLang!21479) (Union!21479 (regOne!43471 Regex!21479) (regTwo!43471 Regex!21479)) )
))
(declare-fun r!24602 () Regex!21479)

(declare-fun nullable!9580 (Regex!21479) Bool)

(assert (=> b!7953610 (= res!3153647 (not (nullable!9580 r!24602)))))

(declare-fun lt!2701255 () List!74708)

(declare-fun isPrefix!6579 (List!74708 List!74708) Bool)

(assert (=> b!7953610 (isPrefix!6579 lt!2701255 input!7927)))

(declare-datatypes ((Unit!169904 0))(
  ( (Unit!169905) )
))
(declare-fun lt!2701252 () Unit!169904)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1306 (List!74708 List!74708) Unit!169904)

(assert (=> b!7953610 (= lt!2701252 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 testedP!447 input!7927))))

(declare-fun lt!2701250 () C!43296)

(declare-fun ++!18349 (List!74708 List!74708) List!74708)

(assert (=> b!7953610 (= lt!2701255 (++!18349 testedP!447 (Cons!74584 lt!2701250 Nil!74584)))))

(declare-fun lt!2701251 () List!74708)

(declare-fun head!16231 (List!74708) C!43296)

(assert (=> b!7953610 (= lt!2701250 (head!16231 lt!2701251))))

(declare-fun b!7953611 () Bool)

(declare-fun res!3153653 () Bool)

(assert (=> b!7953611 (=> res!3153653 e!4691535)))

(declare-fun validRegex!11783 (Regex!21479) Bool)

(declare-fun derivativeStep!6507 (Regex!21479 C!43296) Regex!21479)

(assert (=> b!7953611 (= res!3153653 (not (validRegex!11783 (derivativeStep!6507 r!24602 lt!2701250))))))

(declare-fun b!7953612 () Bool)

(assert (=> b!7953612 (= e!4691540 (not e!4691537))))

(declare-fun res!3153651 () Bool)

(assert (=> b!7953612 (=> res!3153651 e!4691537)))

(declare-fun lt!2701248 () Int)

(declare-fun lt!2701253 () Int)

(assert (=> b!7953612 (= res!3153651 (>= lt!2701248 lt!2701253))))

(declare-fun lt!2701257 () Unit!169904)

(declare-fun e!4691534 () Unit!169904)

(assert (=> b!7953612 (= lt!2701257 e!4691534)))

(declare-fun c!1460857 () Bool)

(assert (=> b!7953612 (= c!1460857 (= lt!2701248 lt!2701253))))

(assert (=> b!7953612 (<= lt!2701248 lt!2701253)))

(declare-fun lt!2701256 () Unit!169904)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1096 (List!74708 List!74708) Unit!169904)

(assert (=> b!7953612 (= lt!2701256 (lemmaIsPrefixThenSmallerEqSize!1096 testedP!447 input!7927))))

(declare-fun res!3153652 () Bool)

(declare-fun e!4691536 () Bool)

(assert (=> start!750548 (=> (not res!3153652) (not e!4691536))))

(declare-fun baseR!116 () Regex!21479)

(assert (=> start!750548 (= res!3153652 (validRegex!11783 baseR!116))))

(assert (=> start!750548 e!4691536))

(assert (=> start!750548 e!4691538))

(declare-fun e!4691539 () Bool)

(assert (=> start!750548 e!4691539))

(declare-fun e!4691533 () Bool)

(assert (=> start!750548 e!4691533))

(assert (=> start!750548 e!4691541))

(declare-fun b!7953613 () Bool)

(declare-fun tp!2367597 () Bool)

(assert (=> b!7953613 (= e!4691538 tp!2367597)))

(declare-fun b!7953614 () Bool)

(declare-fun tp_is_empty!53501 () Bool)

(assert (=> b!7953614 (= e!4691538 tp_is_empty!53501)))

(declare-fun b!7953615 () Bool)

(declare-fun res!3153648 () Bool)

(assert (=> b!7953615 (=> res!3153648 e!4691535)))

(declare-fun tail!15768 (List!74708) List!74708)

(assert (=> b!7953615 (= res!3153648 (not (= (++!18349 lt!2701255 (tail!15768 lt!2701251)) input!7927)))))

(declare-fun b!7953616 () Bool)

(declare-fun tp!2367603 () Bool)

(declare-fun tp!2367606 () Bool)

(assert (=> b!7953616 (= e!4691541 (and tp!2367603 tp!2367606))))

(declare-fun b!7953617 () Bool)

(declare-fun tp!2367602 () Bool)

(declare-fun tp!2367598 () Bool)

(assert (=> b!7953617 (= e!4691538 (and tp!2367602 tp!2367598))))

(declare-fun b!7953618 () Bool)

(declare-fun Unit!169906 () Unit!169904)

(assert (=> b!7953618 (= e!4691534 Unit!169906)))

(declare-fun lt!2701249 () Unit!169904)

(declare-fun lemmaIsPrefixRefl!4047 (List!74708 List!74708) Unit!169904)

(assert (=> b!7953618 (= lt!2701249 (lemmaIsPrefixRefl!4047 input!7927 input!7927))))

(assert (=> b!7953618 (isPrefix!6579 input!7927 input!7927)))

(declare-fun lt!2701254 () Unit!169904)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1627 (List!74708 List!74708 List!74708) Unit!169904)

(assert (=> b!7953618 (= lt!2701254 (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 testedP!447 input!7927))))

(assert (=> b!7953618 false))

(declare-fun b!7953619 () Bool)

(declare-fun size!43415 (List!74708) Int)

(assert (=> b!7953619 (= e!4691535 (= (+ 1 lt!2701248) (size!43415 lt!2701255)))))

(declare-fun b!7953620 () Bool)

(declare-fun Unit!169907 () Unit!169904)

(assert (=> b!7953620 (= e!4691534 Unit!169907)))

(declare-fun b!7953621 () Bool)

(assert (=> b!7953621 (= e!4691536 e!4691540)))

(declare-fun res!3153646 () Bool)

(assert (=> b!7953621 (=> (not res!3153646) (not e!4691540))))

(declare-fun isEmpty!42883 (List!74708) Bool)

(declare-datatypes ((tuple2!70620 0))(
  ( (tuple2!70621 (_1!38613 List!74708) (_2!38613 List!74708)) )
))
(declare-fun findLongestMatchInner!2260 (Regex!21479 List!74708 Int List!74708 List!74708 Int) tuple2!70620)

(assert (=> b!7953621 (= res!3153646 (not (isEmpty!42883 (_1!38613 (findLongestMatchInner!2260 r!24602 testedP!447 lt!2701248 lt!2701251 input!7927 lt!2701253)))))))

(assert (=> b!7953621 (= lt!2701253 (size!43415 input!7927))))

(declare-fun getSuffix!3782 (List!74708 List!74708) List!74708)

(assert (=> b!7953621 (= lt!2701251 (getSuffix!3782 input!7927 testedP!447))))

(assert (=> b!7953621 (= lt!2701248 (size!43415 testedP!447))))

(declare-fun b!7953622 () Bool)

(declare-fun res!3153650 () Bool)

(assert (=> b!7953622 (=> (not res!3153650) (not e!4691536))))

(assert (=> b!7953622 (= res!3153650 (isPrefix!6579 testedP!447 input!7927))))

(declare-fun b!7953623 () Bool)

(assert (=> b!7953623 (= e!4691541 tp_is_empty!53501)))

(declare-fun b!7953624 () Bool)

(declare-fun res!3153649 () Bool)

(assert (=> b!7953624 (=> (not res!3153649) (not e!4691536))))

(declare-fun derivative!665 (Regex!21479 List!74708) Regex!21479)

(assert (=> b!7953624 (= res!3153649 (= (derivative!665 baseR!116 testedP!447) r!24602))))

(declare-fun b!7953625 () Bool)

(declare-fun tp!2367600 () Bool)

(assert (=> b!7953625 (= e!4691533 (and tp_is_empty!53501 tp!2367600))))

(declare-fun b!7953626 () Bool)

(declare-fun tp!2367605 () Bool)

(assert (=> b!7953626 (= e!4691539 (and tp_is_empty!53501 tp!2367605))))

(assert (= (and start!750548 res!3153652) b!7953622))

(assert (= (and b!7953622 res!3153650) b!7953624))

(assert (= (and b!7953624 res!3153649) b!7953621))

(assert (= (and b!7953621 res!3153646) b!7953606))

(assert (= (and b!7953606 res!3153654) b!7953612))

(assert (= (and b!7953612 c!1460857) b!7953618))

(assert (= (and b!7953612 (not c!1460857)) b!7953620))

(assert (= (and b!7953612 (not res!3153651)) b!7953610))

(assert (= (and b!7953610 (not res!3153647)) b!7953611))

(assert (= (and b!7953611 (not res!3153653)) b!7953615))

(assert (= (and b!7953615 (not res!3153648)) b!7953619))

(get-info :version)

(assert (= (and start!750548 ((_ is ElementMatch!21479) baseR!116)) b!7953614))

(assert (= (and start!750548 ((_ is Concat!30478) baseR!116)) b!7953609))

(assert (= (and start!750548 ((_ is Star!21479) baseR!116)) b!7953613))

(assert (= (and start!750548 ((_ is Union!21479) baseR!116)) b!7953617))

(assert (= (and start!750548 ((_ is Cons!74584) testedP!447)) b!7953626))

(assert (= (and start!750548 ((_ is Cons!74584) input!7927)) b!7953625))

(assert (= (and start!750548 ((_ is ElementMatch!21479) r!24602)) b!7953623))

(assert (= (and start!750548 ((_ is Concat!30478) r!24602)) b!7953616))

(assert (= (and start!750548 ((_ is Star!21479) r!24602)) b!7953607))

(assert (= (and start!750548 ((_ is Union!21479) r!24602)) b!7953608))

(declare-fun m!8336826 () Bool)

(assert (=> b!7953621 m!8336826))

(declare-fun m!8336828 () Bool)

(assert (=> b!7953621 m!8336828))

(declare-fun m!8336830 () Bool)

(assert (=> b!7953621 m!8336830))

(declare-fun m!8336832 () Bool)

(assert (=> b!7953621 m!8336832))

(declare-fun m!8336834 () Bool)

(assert (=> b!7953621 m!8336834))

(declare-fun m!8336836 () Bool)

(assert (=> b!7953618 m!8336836))

(declare-fun m!8336838 () Bool)

(assert (=> b!7953618 m!8336838))

(declare-fun m!8336840 () Bool)

(assert (=> b!7953618 m!8336840))

(declare-fun m!8336842 () Bool)

(assert (=> b!7953622 m!8336842))

(declare-fun m!8336844 () Bool)

(assert (=> b!7953624 m!8336844))

(declare-fun m!8336846 () Bool)

(assert (=> b!7953610 m!8336846))

(declare-fun m!8336848 () Bool)

(assert (=> b!7953610 m!8336848))

(declare-fun m!8336850 () Bool)

(assert (=> b!7953610 m!8336850))

(declare-fun m!8336852 () Bool)

(assert (=> b!7953610 m!8336852))

(declare-fun m!8336854 () Bool)

(assert (=> b!7953610 m!8336854))

(declare-fun m!8336856 () Bool)

(assert (=> b!7953611 m!8336856))

(assert (=> b!7953611 m!8336856))

(declare-fun m!8336858 () Bool)

(assert (=> b!7953611 m!8336858))

(declare-fun m!8336860 () Bool)

(assert (=> b!7953612 m!8336860))

(declare-fun m!8336862 () Bool)

(assert (=> b!7953615 m!8336862))

(assert (=> b!7953615 m!8336862))

(declare-fun m!8336864 () Bool)

(assert (=> b!7953615 m!8336864))

(declare-fun m!8336866 () Bool)

(assert (=> start!750548 m!8336866))

(declare-fun m!8336868 () Bool)

(assert (=> b!7953619 m!8336868))

(check-sat (not b!7953607) (not b!7953624) (not b!7953613) (not b!7953612) (not b!7953610) (not b!7953622) (not b!7953625) (not b!7953616) (not start!750548) (not b!7953608) (not b!7953618) (not b!7953626) (not b!7953619) (not b!7953611) (not b!7953615) (not b!7953609) (not b!7953621) (not b!7953617) tp_is_empty!53501)
(check-sat)
(get-model)

(declare-fun d!2376604 () Bool)

(declare-fun lt!2701260 () Int)

(assert (=> d!2376604 (>= lt!2701260 0)))

(declare-fun e!4691544 () Int)

(assert (=> d!2376604 (= lt!2701260 e!4691544)))

(declare-fun c!1460861 () Bool)

(assert (=> d!2376604 (= c!1460861 ((_ is Nil!74584) lt!2701255))))

(assert (=> d!2376604 (= (size!43415 lt!2701255) lt!2701260)))

(declare-fun b!7953631 () Bool)

(assert (=> b!7953631 (= e!4691544 0)))

(declare-fun b!7953632 () Bool)

(assert (=> b!7953632 (= e!4691544 (+ 1 (size!43415 (t!390451 lt!2701255))))))

(assert (= (and d!2376604 c!1460861) b!7953631))

(assert (= (and d!2376604 (not c!1460861)) b!7953632))

(declare-fun m!8336870 () Bool)

(assert (=> b!7953632 m!8336870))

(assert (=> b!7953619 d!2376604))

(declare-fun d!2376606 () Bool)

(declare-fun lt!2701263 () Regex!21479)

(assert (=> d!2376606 (validRegex!11783 lt!2701263)))

(declare-fun e!4691547 () Regex!21479)

(assert (=> d!2376606 (= lt!2701263 e!4691547)))

(declare-fun c!1460864 () Bool)

(assert (=> d!2376606 (= c!1460864 ((_ is Cons!74584) testedP!447))))

(assert (=> d!2376606 (validRegex!11783 baseR!116)))

(assert (=> d!2376606 (= (derivative!665 baseR!116 testedP!447) lt!2701263)))

(declare-fun b!7953637 () Bool)

(assert (=> b!7953637 (= e!4691547 (derivative!665 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (t!390451 testedP!447)))))

(declare-fun b!7953638 () Bool)

(assert (=> b!7953638 (= e!4691547 baseR!116)))

(assert (= (and d!2376606 c!1460864) b!7953637))

(assert (= (and d!2376606 (not c!1460864)) b!7953638))

(declare-fun m!8336872 () Bool)

(assert (=> d!2376606 m!8336872))

(assert (=> d!2376606 m!8336866))

(declare-fun m!8336874 () Bool)

(assert (=> b!7953637 m!8336874))

(assert (=> b!7953637 m!8336874))

(declare-fun m!8336876 () Bool)

(assert (=> b!7953637 m!8336876))

(assert (=> b!7953624 d!2376606))

(declare-fun d!2376608 () Bool)

(assert (=> d!2376608 (isPrefix!6579 input!7927 input!7927)))

(declare-fun lt!2701266 () Unit!169904)

(declare-fun choose!59946 (List!74708 List!74708) Unit!169904)

(assert (=> d!2376608 (= lt!2701266 (choose!59946 input!7927 input!7927))))

(assert (=> d!2376608 (= (lemmaIsPrefixRefl!4047 input!7927 input!7927) lt!2701266)))

(declare-fun bs!1969599 () Bool)

(assert (= bs!1969599 d!2376608))

(assert (=> bs!1969599 m!8336838))

(declare-fun m!8336878 () Bool)

(assert (=> bs!1969599 m!8336878))

(assert (=> b!7953618 d!2376608))

(declare-fun d!2376610 () Bool)

(declare-fun e!4691556 () Bool)

(assert (=> d!2376610 e!4691556))

(declare-fun res!3153664 () Bool)

(assert (=> d!2376610 (=> res!3153664 e!4691556)))

(declare-fun lt!2701269 () Bool)

(assert (=> d!2376610 (= res!3153664 (not lt!2701269))))

(declare-fun e!4691554 () Bool)

(assert (=> d!2376610 (= lt!2701269 e!4691554)))

(declare-fun res!3153663 () Bool)

(assert (=> d!2376610 (=> res!3153663 e!4691554)))

(assert (=> d!2376610 (= res!3153663 ((_ is Nil!74584) input!7927))))

(assert (=> d!2376610 (= (isPrefix!6579 input!7927 input!7927) lt!2701269)))

(declare-fun b!7953647 () Bool)

(declare-fun e!4691555 () Bool)

(assert (=> b!7953647 (= e!4691554 e!4691555)))

(declare-fun res!3153665 () Bool)

(assert (=> b!7953647 (=> (not res!3153665) (not e!4691555))))

(assert (=> b!7953647 (= res!3153665 (not ((_ is Nil!74584) input!7927)))))

(declare-fun b!7953650 () Bool)

(assert (=> b!7953650 (= e!4691556 (>= (size!43415 input!7927) (size!43415 input!7927)))))

(declare-fun b!7953648 () Bool)

(declare-fun res!3153666 () Bool)

(assert (=> b!7953648 (=> (not res!3153666) (not e!4691555))))

(assert (=> b!7953648 (= res!3153666 (= (head!16231 input!7927) (head!16231 input!7927)))))

(declare-fun b!7953649 () Bool)

(assert (=> b!7953649 (= e!4691555 (isPrefix!6579 (tail!15768 input!7927) (tail!15768 input!7927)))))

(assert (= (and d!2376610 (not res!3153663)) b!7953647))

(assert (= (and b!7953647 res!3153665) b!7953648))

(assert (= (and b!7953648 res!3153666) b!7953649))

(assert (= (and d!2376610 (not res!3153664)) b!7953650))

(assert (=> b!7953650 m!8336830))

(assert (=> b!7953650 m!8336830))

(declare-fun m!8336880 () Bool)

(assert (=> b!7953648 m!8336880))

(assert (=> b!7953648 m!8336880))

(declare-fun m!8336882 () Bool)

(assert (=> b!7953649 m!8336882))

(assert (=> b!7953649 m!8336882))

(assert (=> b!7953649 m!8336882))

(assert (=> b!7953649 m!8336882))

(declare-fun m!8336884 () Bool)

(assert (=> b!7953649 m!8336884))

(assert (=> b!7953618 d!2376610))

(declare-fun d!2376614 () Bool)

(assert (=> d!2376614 (= input!7927 testedP!447)))

(declare-fun lt!2701272 () Unit!169904)

(declare-fun choose!59947 (List!74708 List!74708 List!74708) Unit!169904)

(assert (=> d!2376614 (= lt!2701272 (choose!59947 input!7927 testedP!447 input!7927))))

(assert (=> d!2376614 (isPrefix!6579 input!7927 input!7927)))

(assert (=> d!2376614 (= (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 testedP!447 input!7927) lt!2701272)))

(declare-fun bs!1969600 () Bool)

(assert (= bs!1969600 d!2376614))

(declare-fun m!8336886 () Bool)

(assert (=> bs!1969600 m!8336886))

(assert (=> bs!1969600 m!8336838))

(assert (=> b!7953618 d!2376614))

(declare-fun d!2376616 () Bool)

(assert (=> d!2376616 (<= (size!43415 testedP!447) (size!43415 input!7927))))

(declare-fun lt!2701275 () Unit!169904)

(declare-fun choose!59948 (List!74708 List!74708) Unit!169904)

(assert (=> d!2376616 (= lt!2701275 (choose!59948 testedP!447 input!7927))))

(assert (=> d!2376616 (isPrefix!6579 testedP!447 input!7927)))

(assert (=> d!2376616 (= (lemmaIsPrefixThenSmallerEqSize!1096 testedP!447 input!7927) lt!2701275)))

(declare-fun bs!1969601 () Bool)

(assert (= bs!1969601 d!2376616))

(assert (=> bs!1969601 m!8336828))

(assert (=> bs!1969601 m!8336830))

(declare-fun m!8336888 () Bool)

(assert (=> bs!1969601 m!8336888))

(assert (=> bs!1969601 m!8336842))

(assert (=> b!7953612 d!2376616))

(declare-fun d!2376618 () Bool)

(declare-fun e!4691559 () Bool)

(assert (=> d!2376618 e!4691559))

(declare-fun res!3153668 () Bool)

(assert (=> d!2376618 (=> res!3153668 e!4691559)))

(declare-fun lt!2701276 () Bool)

(assert (=> d!2376618 (= res!3153668 (not lt!2701276))))

(declare-fun e!4691557 () Bool)

(assert (=> d!2376618 (= lt!2701276 e!4691557)))

(declare-fun res!3153667 () Bool)

(assert (=> d!2376618 (=> res!3153667 e!4691557)))

(assert (=> d!2376618 (= res!3153667 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376618 (= (isPrefix!6579 testedP!447 input!7927) lt!2701276)))

(declare-fun b!7953651 () Bool)

(declare-fun e!4691558 () Bool)

(assert (=> b!7953651 (= e!4691557 e!4691558)))

(declare-fun res!3153669 () Bool)

(assert (=> b!7953651 (=> (not res!3153669) (not e!4691558))))

(assert (=> b!7953651 (= res!3153669 (not ((_ is Nil!74584) input!7927)))))

(declare-fun b!7953654 () Bool)

(assert (=> b!7953654 (= e!4691559 (>= (size!43415 input!7927) (size!43415 testedP!447)))))

(declare-fun b!7953652 () Bool)

(declare-fun res!3153670 () Bool)

(assert (=> b!7953652 (=> (not res!3153670) (not e!4691558))))

(assert (=> b!7953652 (= res!3153670 (= (head!16231 testedP!447) (head!16231 input!7927)))))

(declare-fun b!7953653 () Bool)

(assert (=> b!7953653 (= e!4691558 (isPrefix!6579 (tail!15768 testedP!447) (tail!15768 input!7927)))))

(assert (= (and d!2376618 (not res!3153667)) b!7953651))

(assert (= (and b!7953651 res!3153669) b!7953652))

(assert (= (and b!7953652 res!3153670) b!7953653))

(assert (= (and d!2376618 (not res!3153668)) b!7953654))

(assert (=> b!7953654 m!8336830))

(assert (=> b!7953654 m!8336828))

(declare-fun m!8336890 () Bool)

(assert (=> b!7953652 m!8336890))

(assert (=> b!7953652 m!8336880))

(declare-fun m!8336892 () Bool)

(assert (=> b!7953653 m!8336892))

(assert (=> b!7953653 m!8336882))

(assert (=> b!7953653 m!8336892))

(assert (=> b!7953653 m!8336882))

(declare-fun m!8336894 () Bool)

(assert (=> b!7953653 m!8336894))

(assert (=> b!7953622 d!2376618))

(declare-fun b!7953685 () Bool)

(declare-fun e!4691586 () Bool)

(declare-fun call!737396 () Bool)

(assert (=> b!7953685 (= e!4691586 call!737396)))

(declare-fun b!7953686 () Bool)

(declare-fun res!3153696 () Bool)

(declare-fun e!4691589 () Bool)

(assert (=> b!7953686 (=> res!3153696 e!4691589)))

(assert (=> b!7953686 (= res!3153696 (not ((_ is Concat!30478) (derivativeStep!6507 r!24602 lt!2701250))))))

(declare-fun e!4691587 () Bool)

(assert (=> b!7953686 (= e!4691587 e!4691589)))

(declare-fun b!7953687 () Bool)

(declare-fun e!4691588 () Bool)

(declare-fun call!737397 () Bool)

(assert (=> b!7953687 (= e!4691588 call!737397)))

(declare-fun bm!737390 () Bool)

(declare-fun call!737395 () Bool)

(assert (=> bm!737390 (= call!737395 call!737396)))

(declare-fun b!7953688 () Bool)

(declare-fun e!4691583 () Bool)

(assert (=> b!7953688 (= e!4691583 e!4691587)))

(declare-fun c!1460869 () Bool)

(assert (=> b!7953688 (= c!1460869 ((_ is Union!21479) (derivativeStep!6507 r!24602 lt!2701250)))))

(declare-fun bm!737391 () Bool)

(assert (=> bm!737391 (= call!737397 (validRegex!11783 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))

(declare-fun b!7953689 () Bool)

(declare-fun e!4691584 () Bool)

(assert (=> b!7953689 (= e!4691584 e!4691583)))

(declare-fun c!1460870 () Bool)

(assert (=> b!7953689 (= c!1460870 ((_ is Star!21479) (derivativeStep!6507 r!24602 lt!2701250)))))

(declare-fun b!7953690 () Bool)

(declare-fun res!3153694 () Bool)

(assert (=> b!7953690 (=> (not res!3153694) (not e!4691588))))

(assert (=> b!7953690 (= res!3153694 call!737395)))

(assert (=> b!7953690 (= e!4691587 e!4691588)))

(declare-fun d!2376620 () Bool)

(declare-fun res!3153695 () Bool)

(assert (=> d!2376620 (=> res!3153695 e!4691584)))

(assert (=> d!2376620 (= res!3153695 ((_ is ElementMatch!21479) (derivativeStep!6507 r!24602 lt!2701250)))))

(assert (=> d!2376620 (= (validRegex!11783 (derivativeStep!6507 r!24602 lt!2701250)) e!4691584)))

(declare-fun bm!737392 () Bool)

(assert (=> bm!737392 (= call!737396 (validRegex!11783 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun b!7953691 () Bool)

(declare-fun e!4691585 () Bool)

(assert (=> b!7953691 (= e!4691589 e!4691585)))

(declare-fun res!3153693 () Bool)

(assert (=> b!7953691 (=> (not res!3153693) (not e!4691585))))

(assert (=> b!7953691 (= res!3153693 call!737395)))

(declare-fun b!7953692 () Bool)

(assert (=> b!7953692 (= e!4691583 e!4691586)))

(declare-fun res!3153697 () Bool)

(assert (=> b!7953692 (= res!3153697 (not (nullable!9580 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)))))))

(assert (=> b!7953692 (=> (not res!3153697) (not e!4691586))))

(declare-fun b!7953693 () Bool)

(assert (=> b!7953693 (= e!4691585 call!737397)))

(assert (= (and d!2376620 (not res!3153695)) b!7953689))

(assert (= (and b!7953689 c!1460870) b!7953692))

(assert (= (and b!7953689 (not c!1460870)) b!7953688))

(assert (= (and b!7953692 res!3153697) b!7953685))

(assert (= (and b!7953688 c!1460869) b!7953690))

(assert (= (and b!7953688 (not c!1460869)) b!7953686))

(assert (= (and b!7953690 res!3153694) b!7953687))

(assert (= (and b!7953686 (not res!3153696)) b!7953691))

(assert (= (and b!7953691 res!3153693) b!7953693))

(assert (= (or b!7953687 b!7953693) bm!737391))

(assert (= (or b!7953690 b!7953691) bm!737390))

(assert (= (or b!7953685 bm!737390) bm!737392))

(declare-fun m!8336906 () Bool)

(assert (=> bm!737391 m!8336906))

(declare-fun m!8336908 () Bool)

(assert (=> bm!737392 m!8336908))

(declare-fun m!8336910 () Bool)

(assert (=> b!7953692 m!8336910))

(assert (=> b!7953611 d!2376620))

(declare-fun b!7953718 () Bool)

(declare-fun c!1460883 () Bool)

(assert (=> b!7953718 (= c!1460883 (nullable!9580 (regOne!43470 r!24602)))))

(declare-fun e!4691607 () Regex!21479)

(declare-fun e!4691603 () Regex!21479)

(assert (=> b!7953718 (= e!4691607 e!4691603)))

(declare-fun d!2376624 () Bool)

(declare-fun lt!2701286 () Regex!21479)

(assert (=> d!2376624 (validRegex!11783 lt!2701286)))

(declare-fun e!4691605 () Regex!21479)

(assert (=> d!2376624 (= lt!2701286 e!4691605)))

(declare-fun c!1460882 () Bool)

(assert (=> d!2376624 (= c!1460882 (or ((_ is EmptyExpr!21479) r!24602) ((_ is EmptyLang!21479) r!24602)))))

(assert (=> d!2376624 (validRegex!11783 r!24602)))

(assert (=> d!2376624 (= (derivativeStep!6507 r!24602 lt!2701250) lt!2701286)))

(declare-fun call!737408 () Regex!21479)

(declare-fun c!1460881 () Bool)

(declare-fun bm!737401 () Bool)

(declare-fun c!1460885 () Bool)

(assert (=> bm!737401 (= call!737408 (derivativeStep!6507 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))) lt!2701250))))

(declare-fun b!7953719 () Bool)

(declare-fun e!4691606 () Regex!21479)

(assert (=> b!7953719 (= e!4691606 (ite (= lt!2701250 (c!1460858 r!24602)) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7953720 () Bool)

(declare-fun e!4691604 () Regex!21479)

(declare-fun call!737407 () Regex!21479)

(assert (=> b!7953720 (= e!4691604 (Union!21479 call!737407 call!737408))))

(declare-fun b!7953721 () Bool)

(declare-fun call!737409 () Regex!21479)

(assert (=> b!7953721 (= e!4691603 (Union!21479 (Concat!30478 call!737409 (regTwo!43470 r!24602)) EmptyLang!21479))))

(declare-fun b!7953722 () Bool)

(assert (=> b!7953722 (= e!4691603 (Union!21479 (Concat!30478 call!737407 (regTwo!43470 r!24602)) call!737409))))

(declare-fun bm!737402 () Bool)

(assert (=> bm!737402 (= call!737407 (derivativeStep!6507 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)) lt!2701250))))

(declare-fun b!7953723 () Bool)

(assert (=> b!7953723 (= e!4691605 e!4691606)))

(declare-fun c!1460884 () Bool)

(assert (=> b!7953723 (= c!1460884 ((_ is ElementMatch!21479) r!24602))))

(declare-fun b!7953724 () Bool)

(assert (=> b!7953724 (= e!4691605 EmptyLang!21479)))

(declare-fun b!7953725 () Bool)

(declare-fun call!737406 () Regex!21479)

(assert (=> b!7953725 (= e!4691607 (Concat!30478 call!737406 r!24602))))

(declare-fun bm!737403 () Bool)

(assert (=> bm!737403 (= call!737409 call!737406)))

(declare-fun bm!737404 () Bool)

(assert (=> bm!737404 (= call!737406 call!737408)))

(declare-fun b!7953726 () Bool)

(assert (=> b!7953726 (= e!4691604 e!4691607)))

(assert (=> b!7953726 (= c!1460881 ((_ is Star!21479) r!24602))))

(declare-fun b!7953727 () Bool)

(assert (=> b!7953727 (= c!1460885 ((_ is Union!21479) r!24602))))

(assert (=> b!7953727 (= e!4691606 e!4691604)))

(assert (= (and d!2376624 c!1460882) b!7953724))

(assert (= (and d!2376624 (not c!1460882)) b!7953723))

(assert (= (and b!7953723 c!1460884) b!7953719))

(assert (= (and b!7953723 (not c!1460884)) b!7953727))

(assert (= (and b!7953727 c!1460885) b!7953720))

(assert (= (and b!7953727 (not c!1460885)) b!7953726))

(assert (= (and b!7953726 c!1460881) b!7953725))

(assert (= (and b!7953726 (not c!1460881)) b!7953718))

(assert (= (and b!7953718 c!1460883) b!7953722))

(assert (= (and b!7953718 (not c!1460883)) b!7953721))

(assert (= (or b!7953722 b!7953721) bm!737403))

(assert (= (or b!7953725 bm!737403) bm!737404))

(assert (= (or b!7953720 bm!737404) bm!737401))

(assert (= (or b!7953720 b!7953722) bm!737402))

(declare-fun m!8336928 () Bool)

(assert (=> b!7953718 m!8336928))

(declare-fun m!8336930 () Bool)

(assert (=> d!2376624 m!8336930))

(declare-fun m!8336932 () Bool)

(assert (=> d!2376624 m!8336932))

(declare-fun m!8336934 () Bool)

(assert (=> bm!737401 m!8336934))

(declare-fun m!8336936 () Bool)

(assert (=> bm!737402 m!8336936))

(assert (=> b!7953611 d!2376624))

(declare-fun d!2376634 () Bool)

(declare-fun lt!2701289 () Int)

(assert (=> d!2376634 (>= lt!2701289 0)))

(declare-fun e!4691610 () Int)

(assert (=> d!2376634 (= lt!2701289 e!4691610)))

(declare-fun c!1460888 () Bool)

(assert (=> d!2376634 (= c!1460888 ((_ is Nil!74584) input!7927))))

(assert (=> d!2376634 (= (size!43415 input!7927) lt!2701289)))

(declare-fun b!7953732 () Bool)

(assert (=> b!7953732 (= e!4691610 0)))

(declare-fun b!7953733 () Bool)

(assert (=> b!7953733 (= e!4691610 (+ 1 (size!43415 (t!390451 input!7927))))))

(assert (= (and d!2376634 c!1460888) b!7953732))

(assert (= (and d!2376634 (not c!1460888)) b!7953733))

(declare-fun m!8336938 () Bool)

(assert (=> b!7953733 m!8336938))

(assert (=> b!7953621 d!2376634))

(declare-fun b!7953815 () Bool)

(declare-fun e!4691662 () tuple2!70620)

(assert (=> b!7953815 (= e!4691662 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737430 () Bool)

(declare-fun call!737442 () Unit!169904)

(assert (=> bm!737430 (= call!737442 (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 testedP!447 input!7927))))

(declare-fun call!737435 () tuple2!70620)

(declare-fun lt!2701382 () List!74708)

(declare-fun call!737439 () Regex!21479)

(declare-fun call!737440 () List!74708)

(declare-fun bm!737431 () Bool)

(assert (=> bm!737431 (= call!737435 (findLongestMatchInner!2260 call!737439 lt!2701382 (+ lt!2701248 1) call!737440 input!7927 lt!2701253))))

(declare-fun bm!737432 () Bool)

(declare-fun call!737437 () C!43296)

(assert (=> bm!737432 (= call!737439 (derivativeStep!6507 r!24602 call!737437))))

(declare-fun bm!737433 () Bool)

(assert (=> bm!737433 (= call!737437 (head!16231 lt!2701251))))

(declare-fun bm!737434 () Bool)

(declare-fun call!737436 () Bool)

(assert (=> bm!737434 (= call!737436 (isPrefix!6579 input!7927 input!7927))))

(declare-fun b!7953817 () Bool)

(declare-fun e!4691666 () tuple2!70620)

(assert (=> b!7953817 (= e!4691662 e!4691666)))

(declare-fun c!1460921 () Bool)

(assert (=> b!7953817 (= c!1460921 (= lt!2701248 lt!2701253))))

(declare-fun bm!737435 () Bool)

(assert (=> bm!737435 (= call!737440 (tail!15768 lt!2701251))))

(declare-fun b!7953818 () Bool)

(declare-fun e!4691665 () tuple2!70620)

(assert (=> b!7953818 (= e!4691665 (tuple2!70621 testedP!447 Nil!74584))))

(declare-fun b!7953819 () Bool)

(assert (=> b!7953819 (= e!4691665 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737436 () Bool)

(declare-fun call!737441 () Unit!169904)

(assert (=> bm!737436 (= call!737441 (lemmaIsPrefixRefl!4047 input!7927 input!7927))))

(declare-fun b!7953820 () Bool)

(declare-fun c!1460917 () Bool)

(declare-fun call!737438 () Bool)

(assert (=> b!7953820 (= c!1460917 call!737438)))

(declare-fun lt!2701372 () Unit!169904)

(declare-fun lt!2701373 () Unit!169904)

(assert (=> b!7953820 (= lt!2701372 lt!2701373)))

(assert (=> b!7953820 (= input!7927 testedP!447)))

(assert (=> b!7953820 (= lt!2701373 call!737442)))

(declare-fun lt!2701378 () Unit!169904)

(declare-fun lt!2701376 () Unit!169904)

(assert (=> b!7953820 (= lt!2701378 lt!2701376)))

(assert (=> b!7953820 call!737436))

(assert (=> b!7953820 (= lt!2701376 call!737441)))

(assert (=> b!7953820 (= e!4691666 e!4691665)))

(declare-fun b!7953821 () Bool)

(declare-fun e!4691668 () Unit!169904)

(declare-fun Unit!169908 () Unit!169904)

(assert (=> b!7953821 (= e!4691668 Unit!169908)))

(declare-fun b!7953822 () Bool)

(declare-fun Unit!169909 () Unit!169904)

(assert (=> b!7953822 (= e!4691668 Unit!169909)))

(declare-fun lt!2701357 () Unit!169904)

(assert (=> b!7953822 (= lt!2701357 call!737441)))

(assert (=> b!7953822 call!737436))

(declare-fun lt!2701381 () Unit!169904)

(assert (=> b!7953822 (= lt!2701381 lt!2701357)))

(declare-fun lt!2701360 () Unit!169904)

(assert (=> b!7953822 (= lt!2701360 call!737442)))

(assert (=> b!7953822 (= input!7927 testedP!447)))

(declare-fun lt!2701374 () Unit!169904)

(assert (=> b!7953822 (= lt!2701374 lt!2701360)))

(assert (=> b!7953822 false))

(declare-fun b!7953823 () Bool)

(declare-fun e!4691664 () Bool)

(declare-fun e!4691661 () Bool)

(assert (=> b!7953823 (= e!4691664 e!4691661)))

(declare-fun res!3153727 () Bool)

(assert (=> b!7953823 (=> res!3153727 e!4691661)))

(declare-fun lt!2701370 () tuple2!70620)

(assert (=> b!7953823 (= res!3153727 (isEmpty!42883 (_1!38613 lt!2701370)))))

(declare-fun b!7953824 () Bool)

(declare-fun e!4691663 () tuple2!70620)

(declare-fun e!4691667 () tuple2!70620)

(assert (=> b!7953824 (= e!4691663 e!4691667)))

(declare-fun lt!2701369 () tuple2!70620)

(assert (=> b!7953824 (= lt!2701369 call!737435)))

(declare-fun c!1460922 () Bool)

(assert (=> b!7953824 (= c!1460922 (isEmpty!42883 (_1!38613 lt!2701369)))))

(declare-fun b!7953816 () Bool)

(assert (=> b!7953816 (= e!4691667 lt!2701369)))

(declare-fun d!2376636 () Bool)

(assert (=> d!2376636 e!4691664))

(declare-fun res!3153728 () Bool)

(assert (=> d!2376636 (=> (not res!3153728) (not e!4691664))))

(assert (=> d!2376636 (= res!3153728 (= (++!18349 (_1!38613 lt!2701370) (_2!38613 lt!2701370)) input!7927))))

(assert (=> d!2376636 (= lt!2701370 e!4691662)))

(declare-fun c!1460920 () Bool)

(declare-fun lostCause!1967 (Regex!21479) Bool)

(assert (=> d!2376636 (= c!1460920 (lostCause!1967 r!24602))))

(declare-fun lt!2701379 () Unit!169904)

(declare-fun Unit!169910 () Unit!169904)

(assert (=> d!2376636 (= lt!2701379 Unit!169910)))

(assert (=> d!2376636 (= (getSuffix!3782 input!7927 testedP!447) lt!2701251)))

(declare-fun lt!2701361 () Unit!169904)

(declare-fun lt!2701366 () Unit!169904)

(assert (=> d!2376636 (= lt!2701361 lt!2701366)))

(declare-fun lt!2701371 () List!74708)

(assert (=> d!2376636 (= lt!2701251 lt!2701371)))

(declare-fun lemmaSamePrefixThenSameSuffix!2983 (List!74708 List!74708 List!74708 List!74708 List!74708) Unit!169904)

(assert (=> d!2376636 (= lt!2701366 (lemmaSamePrefixThenSameSuffix!2983 testedP!447 lt!2701251 testedP!447 lt!2701371 input!7927))))

(assert (=> d!2376636 (= lt!2701371 (getSuffix!3782 input!7927 testedP!447))))

(declare-fun lt!2701359 () Unit!169904)

(declare-fun lt!2701363 () Unit!169904)

(assert (=> d!2376636 (= lt!2701359 lt!2701363)))

(assert (=> d!2376636 (isPrefix!6579 testedP!447 (++!18349 testedP!447 lt!2701251))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3845 (List!74708 List!74708) Unit!169904)

(assert (=> d!2376636 (= lt!2701363 (lemmaConcatTwoListThenFirstIsPrefix!3845 testedP!447 lt!2701251))))

(assert (=> d!2376636 (validRegex!11783 r!24602)))

(assert (=> d!2376636 (= (findLongestMatchInner!2260 r!24602 testedP!447 lt!2701248 lt!2701251 input!7927 lt!2701253) lt!2701370)))

(declare-fun b!7953825 () Bool)

(assert (=> b!7953825 (= e!4691661 (>= (size!43415 (_1!38613 lt!2701370)) (size!43415 testedP!447)))))

(declare-fun bm!737437 () Bool)

(assert (=> bm!737437 (= call!737438 (nullable!9580 r!24602))))

(declare-fun b!7953826 () Bool)

(assert (=> b!7953826 (= e!4691667 (tuple2!70621 testedP!447 lt!2701251))))

(declare-fun b!7953827 () Bool)

(assert (=> b!7953827 (= e!4691663 call!737435)))

(declare-fun b!7953828 () Bool)

(declare-fun c!1460918 () Bool)

(assert (=> b!7953828 (= c!1460918 call!737438)))

(declare-fun lt!2701377 () Unit!169904)

(declare-fun lt!2701362 () Unit!169904)

(assert (=> b!7953828 (= lt!2701377 lt!2701362)))

(declare-fun lt!2701364 () List!74708)

(declare-fun lt!2701375 () C!43296)

(assert (=> b!7953828 (= (++!18349 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)) lt!2701364) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3523 (List!74708 C!43296 List!74708 List!74708) Unit!169904)

(assert (=> b!7953828 (= lt!2701362 (lemmaMoveElementToOtherListKeepsConcatEq!3523 testedP!447 lt!2701375 lt!2701364 input!7927))))

(assert (=> b!7953828 (= lt!2701364 (tail!15768 lt!2701251))))

(assert (=> b!7953828 (= lt!2701375 (head!16231 lt!2701251))))

(declare-fun lt!2701380 () Unit!169904)

(declare-fun lt!2701358 () Unit!169904)

(assert (=> b!7953828 (= lt!2701380 lt!2701358)))

(assert (=> b!7953828 (isPrefix!6579 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) input!7927)))

(assert (=> b!7953828 (= lt!2701358 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 testedP!447 input!7927))))

(declare-fun lt!2701356 () Unit!169904)

(declare-fun lt!2701368 () Unit!169904)

(assert (=> b!7953828 (= lt!2701356 lt!2701368)))

(assert (=> b!7953828 (= lt!2701368 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 testedP!447 input!7927))))

(assert (=> b!7953828 (= lt!2701382 (++!18349 testedP!447 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))

(declare-fun lt!2701365 () Unit!169904)

(assert (=> b!7953828 (= lt!2701365 e!4691668)))

(declare-fun c!1460919 () Bool)

(assert (=> b!7953828 (= c!1460919 (= (size!43415 testedP!447) (size!43415 input!7927)))))

(declare-fun lt!2701383 () Unit!169904)

(declare-fun lt!2701367 () Unit!169904)

(assert (=> b!7953828 (= lt!2701383 lt!2701367)))

(assert (=> b!7953828 (<= (size!43415 testedP!447) (size!43415 input!7927))))

(assert (=> b!7953828 (= lt!2701367 (lemmaIsPrefixThenSmallerEqSize!1096 testedP!447 input!7927))))

(assert (=> b!7953828 (= e!4691666 e!4691663)))

(assert (= (and d!2376636 c!1460920) b!7953815))

(assert (= (and d!2376636 (not c!1460920)) b!7953817))

(assert (= (and b!7953817 c!1460921) b!7953820))

(assert (= (and b!7953817 (not c!1460921)) b!7953828))

(assert (= (and b!7953820 c!1460917) b!7953818))

(assert (= (and b!7953820 (not c!1460917)) b!7953819))

(assert (= (and b!7953828 c!1460919) b!7953822))

(assert (= (and b!7953828 (not c!1460919)) b!7953821))

(assert (= (and b!7953828 c!1460918) b!7953824))

(assert (= (and b!7953828 (not c!1460918)) b!7953827))

(assert (= (and b!7953824 c!1460922) b!7953826))

(assert (= (and b!7953824 (not c!1460922)) b!7953816))

(assert (= (or b!7953824 b!7953827) bm!737433))

(assert (= (or b!7953824 b!7953827) bm!737435))

(assert (= (or b!7953824 b!7953827) bm!737432))

(assert (= (or b!7953824 b!7953827) bm!737431))

(assert (= (or b!7953820 b!7953828) bm!737437))

(assert (= (or b!7953820 b!7953822) bm!737430))

(assert (= (or b!7953820 b!7953822) bm!737436))

(assert (= (or b!7953820 b!7953822) bm!737434))

(assert (= (and d!2376636 res!3153728) b!7953823))

(assert (= (and b!7953823 (not res!3153727)) b!7953825))

(assert (=> bm!737430 m!8336840))

(declare-fun m!8336970 () Bool)

(assert (=> b!7953824 m!8336970))

(declare-fun m!8336972 () Bool)

(assert (=> bm!737431 m!8336972))

(assert (=> bm!737436 m!8336836))

(assert (=> bm!737437 m!8336852))

(declare-fun m!8336974 () Bool)

(assert (=> b!7953825 m!8336974))

(assert (=> b!7953825 m!8336828))

(assert (=> b!7953828 m!8336834))

(declare-fun m!8336976 () Bool)

(assert (=> b!7953828 m!8336976))

(assert (=> b!7953828 m!8336860))

(declare-fun m!8336978 () Bool)

(assert (=> b!7953828 m!8336978))

(declare-fun m!8336980 () Bool)

(assert (=> b!7953828 m!8336980))

(assert (=> b!7953828 m!8336862))

(assert (=> b!7953828 m!8336830))

(assert (=> b!7953828 m!8336854))

(assert (=> b!7953828 m!8336978))

(declare-fun m!8336982 () Bool)

(assert (=> b!7953828 m!8336982))

(assert (=> b!7953828 m!8336828))

(assert (=> b!7953828 m!8336850))

(assert (=> b!7953828 m!8336976))

(declare-fun m!8336984 () Bool)

(assert (=> b!7953828 m!8336984))

(declare-fun m!8336986 () Bool)

(assert (=> b!7953828 m!8336986))

(assert (=> b!7953828 m!8336834))

(declare-fun m!8336988 () Bool)

(assert (=> b!7953828 m!8336988))

(assert (=> bm!737434 m!8336838))

(assert (=> bm!737433 m!8336854))

(assert (=> bm!737435 m!8336862))

(declare-fun m!8336990 () Bool)

(assert (=> bm!737432 m!8336990))

(declare-fun m!8336992 () Bool)

(assert (=> d!2376636 m!8336992))

(assert (=> d!2376636 m!8336834))

(assert (=> d!2376636 m!8336932))

(declare-fun m!8336994 () Bool)

(assert (=> d!2376636 m!8336994))

(declare-fun m!8336996 () Bool)

(assert (=> d!2376636 m!8336996))

(declare-fun m!8336998 () Bool)

(assert (=> d!2376636 m!8336998))

(declare-fun m!8337000 () Bool)

(assert (=> d!2376636 m!8337000))

(assert (=> d!2376636 m!8336994))

(declare-fun m!8337002 () Bool)

(assert (=> d!2376636 m!8337002))

(declare-fun m!8337004 () Bool)

(assert (=> b!7953823 m!8337004))

(assert (=> b!7953621 d!2376636))

(declare-fun d!2376650 () Bool)

(assert (=> d!2376650 (= (isEmpty!42883 (_1!38613 (findLongestMatchInner!2260 r!24602 testedP!447 lt!2701248 lt!2701251 input!7927 lt!2701253))) ((_ is Nil!74584) (_1!38613 (findLongestMatchInner!2260 r!24602 testedP!447 lt!2701248 lt!2701251 input!7927 lt!2701253))))))

(assert (=> b!7953621 d!2376650))

(declare-fun d!2376652 () Bool)

(declare-fun lt!2701386 () List!74708)

(assert (=> d!2376652 (= (++!18349 testedP!447 lt!2701386) input!7927)))

(declare-fun e!4691671 () List!74708)

(assert (=> d!2376652 (= lt!2701386 e!4691671)))

(declare-fun c!1460925 () Bool)

(assert (=> d!2376652 (= c!1460925 ((_ is Cons!74584) testedP!447))))

(assert (=> d!2376652 (>= (size!43415 input!7927) (size!43415 testedP!447))))

(assert (=> d!2376652 (= (getSuffix!3782 input!7927 testedP!447) lt!2701386)))

(declare-fun b!7953833 () Bool)

(assert (=> b!7953833 (= e!4691671 (getSuffix!3782 (tail!15768 input!7927) (t!390451 testedP!447)))))

(declare-fun b!7953834 () Bool)

(assert (=> b!7953834 (= e!4691671 input!7927)))

(assert (= (and d!2376652 c!1460925) b!7953833))

(assert (= (and d!2376652 (not c!1460925)) b!7953834))

(declare-fun m!8337006 () Bool)

(assert (=> d!2376652 m!8337006))

(assert (=> d!2376652 m!8336830))

(assert (=> d!2376652 m!8336828))

(assert (=> b!7953833 m!8336882))

(assert (=> b!7953833 m!8336882))

(declare-fun m!8337008 () Bool)

(assert (=> b!7953833 m!8337008))

(assert (=> b!7953621 d!2376652))

(declare-fun d!2376654 () Bool)

(declare-fun lt!2701387 () Int)

(assert (=> d!2376654 (>= lt!2701387 0)))

(declare-fun e!4691672 () Int)

(assert (=> d!2376654 (= lt!2701387 e!4691672)))

(declare-fun c!1460926 () Bool)

(assert (=> d!2376654 (= c!1460926 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376654 (= (size!43415 testedP!447) lt!2701387)))

(declare-fun b!7953835 () Bool)

(assert (=> b!7953835 (= e!4691672 0)))

(declare-fun b!7953836 () Bool)

(assert (=> b!7953836 (= e!4691672 (+ 1 (size!43415 (t!390451 testedP!447))))))

(assert (= (and d!2376654 c!1460926) b!7953835))

(assert (= (and d!2376654 (not c!1460926)) b!7953836))

(declare-fun m!8337010 () Bool)

(assert (=> b!7953836 m!8337010))

(assert (=> b!7953621 d!2376654))

(declare-fun d!2376656 () Bool)

(assert (=> d!2376656 (isPrefix!6579 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) input!7927)))

(declare-fun lt!2701390 () Unit!169904)

(declare-fun choose!59950 (List!74708 List!74708) Unit!169904)

(assert (=> d!2376656 (= lt!2701390 (choose!59950 testedP!447 input!7927))))

(assert (=> d!2376656 (isPrefix!6579 testedP!447 input!7927)))

(assert (=> d!2376656 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1306 testedP!447 input!7927) lt!2701390)))

(declare-fun bs!1969604 () Bool)

(assert (= bs!1969604 d!2376656))

(assert (=> bs!1969604 m!8336976))

(assert (=> bs!1969604 m!8336984))

(assert (=> bs!1969604 m!8336976))

(declare-fun m!8337012 () Bool)

(assert (=> bs!1969604 m!8337012))

(assert (=> bs!1969604 m!8336842))

(assert (=> bs!1969604 m!8336834))

(assert (=> bs!1969604 m!8336834))

(assert (=> bs!1969604 m!8336988))

(assert (=> b!7953610 d!2376656))

(declare-fun d!2376658 () Bool)

(declare-fun e!4691675 () Bool)

(assert (=> d!2376658 e!4691675))

(declare-fun res!3153730 () Bool)

(assert (=> d!2376658 (=> res!3153730 e!4691675)))

(declare-fun lt!2701391 () Bool)

(assert (=> d!2376658 (= res!3153730 (not lt!2701391))))

(declare-fun e!4691673 () Bool)

(assert (=> d!2376658 (= lt!2701391 e!4691673)))

(declare-fun res!3153729 () Bool)

(assert (=> d!2376658 (=> res!3153729 e!4691673)))

(assert (=> d!2376658 (= res!3153729 ((_ is Nil!74584) lt!2701255))))

(assert (=> d!2376658 (= (isPrefix!6579 lt!2701255 input!7927) lt!2701391)))

(declare-fun b!7953837 () Bool)

(declare-fun e!4691674 () Bool)

(assert (=> b!7953837 (= e!4691673 e!4691674)))

(declare-fun res!3153731 () Bool)

(assert (=> b!7953837 (=> (not res!3153731) (not e!4691674))))

(assert (=> b!7953837 (= res!3153731 (not ((_ is Nil!74584) input!7927)))))

(declare-fun b!7953840 () Bool)

(assert (=> b!7953840 (= e!4691675 (>= (size!43415 input!7927) (size!43415 lt!2701255)))))

(declare-fun b!7953838 () Bool)

(declare-fun res!3153732 () Bool)

(assert (=> b!7953838 (=> (not res!3153732) (not e!4691674))))

(assert (=> b!7953838 (= res!3153732 (= (head!16231 lt!2701255) (head!16231 input!7927)))))

(declare-fun b!7953839 () Bool)

(assert (=> b!7953839 (= e!4691674 (isPrefix!6579 (tail!15768 lt!2701255) (tail!15768 input!7927)))))

(assert (= (and d!2376658 (not res!3153729)) b!7953837))

(assert (= (and b!7953837 res!3153731) b!7953838))

(assert (= (and b!7953838 res!3153732) b!7953839))

(assert (= (and d!2376658 (not res!3153730)) b!7953840))

(assert (=> b!7953840 m!8336830))

(assert (=> b!7953840 m!8336868))

(declare-fun m!8337014 () Bool)

(assert (=> b!7953838 m!8337014))

(assert (=> b!7953838 m!8336880))

(declare-fun m!8337016 () Bool)

(assert (=> b!7953839 m!8337016))

(assert (=> b!7953839 m!8336882))

(assert (=> b!7953839 m!8337016))

(assert (=> b!7953839 m!8336882))

(declare-fun m!8337018 () Bool)

(assert (=> b!7953839 m!8337018))

(assert (=> b!7953610 d!2376658))

(declare-fun d!2376660 () Bool)

(declare-fun nullableFct!3778 (Regex!21479) Bool)

(assert (=> d!2376660 (= (nullable!9580 r!24602) (nullableFct!3778 r!24602))))

(declare-fun bs!1969605 () Bool)

(assert (= bs!1969605 d!2376660))

(declare-fun m!8337020 () Bool)

(assert (=> bs!1969605 m!8337020))

(assert (=> b!7953610 d!2376660))

(declare-fun d!2376662 () Bool)

(assert (=> d!2376662 (= (head!16231 lt!2701251) (h!81032 lt!2701251))))

(assert (=> b!7953610 d!2376662))

(declare-fun b!7953868 () Bool)

(declare-fun e!4691689 () Bool)

(declare-fun lt!2701440 () List!74708)

(assert (=> b!7953868 (= e!4691689 (or (not (= (Cons!74584 lt!2701250 Nil!74584) Nil!74584)) (= lt!2701440 testedP!447)))))

(declare-fun b!7953866 () Bool)

(declare-fun e!4691688 () List!74708)

(assert (=> b!7953866 (= e!4691688 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) (Cons!74584 lt!2701250 Nil!74584))))))

(declare-fun b!7953865 () Bool)

(assert (=> b!7953865 (= e!4691688 (Cons!74584 lt!2701250 Nil!74584))))

(declare-fun b!7953867 () Bool)

(declare-fun res!3153738 () Bool)

(assert (=> b!7953867 (=> (not res!3153738) (not e!4691689))))

(assert (=> b!7953867 (= res!3153738 (= (size!43415 lt!2701440) (+ (size!43415 testedP!447) (size!43415 (Cons!74584 lt!2701250 Nil!74584)))))))

(declare-fun d!2376664 () Bool)

(assert (=> d!2376664 e!4691689))

(declare-fun res!3153737 () Bool)

(assert (=> d!2376664 (=> (not res!3153737) (not e!4691689))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15836 (List!74708) (InoxSet C!43296))

(assert (=> d!2376664 (= res!3153737 (= (content!15836 lt!2701440) ((_ map or) (content!15836 testedP!447) (content!15836 (Cons!74584 lt!2701250 Nil!74584)))))))

(assert (=> d!2376664 (= lt!2701440 e!4691688)))

(declare-fun c!1460937 () Bool)

(assert (=> d!2376664 (= c!1460937 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376664 (= (++!18349 testedP!447 (Cons!74584 lt!2701250 Nil!74584)) lt!2701440)))

(assert (= (and d!2376664 c!1460937) b!7953865))

(assert (= (and d!2376664 (not c!1460937)) b!7953866))

(assert (= (and d!2376664 res!3153737) b!7953867))

(assert (= (and b!7953867 res!3153738) b!7953868))

(declare-fun m!8337022 () Bool)

(assert (=> b!7953866 m!8337022))

(declare-fun m!8337024 () Bool)

(assert (=> b!7953867 m!8337024))

(assert (=> b!7953867 m!8336828))

(declare-fun m!8337026 () Bool)

(assert (=> b!7953867 m!8337026))

(declare-fun m!8337028 () Bool)

(assert (=> d!2376664 m!8337028))

(declare-fun m!8337030 () Bool)

(assert (=> d!2376664 m!8337030))

(declare-fun m!8337032 () Bool)

(assert (=> d!2376664 m!8337032))

(assert (=> b!7953610 d!2376664))

(declare-fun b!7953880 () Bool)

(declare-fun e!4691695 () Bool)

(declare-fun lt!2701451 () List!74708)

(assert (=> b!7953880 (= e!4691695 (or (not (= (tail!15768 lt!2701251) Nil!74584)) (= lt!2701451 lt!2701255)))))

(declare-fun b!7953878 () Bool)

(declare-fun e!4691694 () List!74708)

(assert (=> b!7953878 (= e!4691694 (Cons!74584 (h!81032 lt!2701255) (++!18349 (t!390451 lt!2701255) (tail!15768 lt!2701251))))))

(declare-fun b!7953877 () Bool)

(assert (=> b!7953877 (= e!4691694 (tail!15768 lt!2701251))))

(declare-fun b!7953879 () Bool)

(declare-fun res!3153740 () Bool)

(assert (=> b!7953879 (=> (not res!3153740) (not e!4691695))))

(assert (=> b!7953879 (= res!3153740 (= (size!43415 lt!2701451) (+ (size!43415 lt!2701255) (size!43415 (tail!15768 lt!2701251)))))))

(declare-fun d!2376666 () Bool)

(assert (=> d!2376666 e!4691695))

(declare-fun res!3153739 () Bool)

(assert (=> d!2376666 (=> (not res!3153739) (not e!4691695))))

(assert (=> d!2376666 (= res!3153739 (= (content!15836 lt!2701451) ((_ map or) (content!15836 lt!2701255) (content!15836 (tail!15768 lt!2701251)))))))

(assert (=> d!2376666 (= lt!2701451 e!4691694)))

(declare-fun c!1460942 () Bool)

(assert (=> d!2376666 (= c!1460942 ((_ is Nil!74584) lt!2701255))))

(assert (=> d!2376666 (= (++!18349 lt!2701255 (tail!15768 lt!2701251)) lt!2701451)))

(assert (= (and d!2376666 c!1460942) b!7953877))

(assert (= (and d!2376666 (not c!1460942)) b!7953878))

(assert (= (and d!2376666 res!3153739) b!7953879))

(assert (= (and b!7953879 res!3153740) b!7953880))

(assert (=> b!7953878 m!8336862))

(declare-fun m!8337034 () Bool)

(assert (=> b!7953878 m!8337034))

(declare-fun m!8337036 () Bool)

(assert (=> b!7953879 m!8337036))

(assert (=> b!7953879 m!8336868))

(assert (=> b!7953879 m!8336862))

(declare-fun m!8337038 () Bool)

(assert (=> b!7953879 m!8337038))

(declare-fun m!8337040 () Bool)

(assert (=> d!2376666 m!8337040))

(declare-fun m!8337042 () Bool)

(assert (=> d!2376666 m!8337042))

(assert (=> d!2376666 m!8336862))

(declare-fun m!8337044 () Bool)

(assert (=> d!2376666 m!8337044))

(assert (=> b!7953615 d!2376666))

(declare-fun d!2376668 () Bool)

(assert (=> d!2376668 (= (tail!15768 lt!2701251) (t!390451 lt!2701251))))

(assert (=> b!7953615 d!2376668))

(declare-fun b!7953881 () Bool)

(declare-fun e!4691699 () Bool)

(declare-fun call!737452 () Bool)

(assert (=> b!7953881 (= e!4691699 call!737452)))

(declare-fun b!7953882 () Bool)

(declare-fun res!3153744 () Bool)

(declare-fun e!4691702 () Bool)

(assert (=> b!7953882 (=> res!3153744 e!4691702)))

(assert (=> b!7953882 (= res!3153744 (not ((_ is Concat!30478) baseR!116)))))

(declare-fun e!4691700 () Bool)

(assert (=> b!7953882 (= e!4691700 e!4691702)))

(declare-fun b!7953883 () Bool)

(declare-fun e!4691701 () Bool)

(declare-fun call!737453 () Bool)

(assert (=> b!7953883 (= e!4691701 call!737453)))

(declare-fun bm!737446 () Bool)

(declare-fun call!737451 () Bool)

(assert (=> bm!737446 (= call!737451 call!737452)))

(declare-fun b!7953884 () Bool)

(declare-fun e!4691696 () Bool)

(assert (=> b!7953884 (= e!4691696 e!4691700)))

(declare-fun c!1460943 () Bool)

(assert (=> b!7953884 (= c!1460943 ((_ is Union!21479) baseR!116))))

(declare-fun bm!737447 () Bool)

(assert (=> bm!737447 (= call!737453 (validRegex!11783 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))

(declare-fun b!7953885 () Bool)

(declare-fun e!4691697 () Bool)

(assert (=> b!7953885 (= e!4691697 e!4691696)))

(declare-fun c!1460944 () Bool)

(assert (=> b!7953885 (= c!1460944 ((_ is Star!21479) baseR!116))))

(declare-fun b!7953886 () Bool)

(declare-fun res!3153742 () Bool)

(assert (=> b!7953886 (=> (not res!3153742) (not e!4691701))))

(assert (=> b!7953886 (= res!3153742 call!737451)))

(assert (=> b!7953886 (= e!4691700 e!4691701)))

(declare-fun d!2376670 () Bool)

(declare-fun res!3153743 () Bool)

(assert (=> d!2376670 (=> res!3153743 e!4691697)))

(assert (=> d!2376670 (= res!3153743 ((_ is ElementMatch!21479) baseR!116))))

(assert (=> d!2376670 (= (validRegex!11783 baseR!116) e!4691697)))

(declare-fun bm!737448 () Bool)

(assert (=> bm!737448 (= call!737452 (validRegex!11783 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(declare-fun b!7953887 () Bool)

(declare-fun e!4691698 () Bool)

(assert (=> b!7953887 (= e!4691702 e!4691698)))

(declare-fun res!3153741 () Bool)

(assert (=> b!7953887 (=> (not res!3153741) (not e!4691698))))

(assert (=> b!7953887 (= res!3153741 call!737451)))

(declare-fun b!7953888 () Bool)

(assert (=> b!7953888 (= e!4691696 e!4691699)))

(declare-fun res!3153745 () Bool)

(assert (=> b!7953888 (= res!3153745 (not (nullable!9580 (reg!21808 baseR!116))))))

(assert (=> b!7953888 (=> (not res!3153745) (not e!4691699))))

(declare-fun b!7953889 () Bool)

(assert (=> b!7953889 (= e!4691698 call!737453)))

(assert (= (and d!2376670 (not res!3153743)) b!7953885))

(assert (= (and b!7953885 c!1460944) b!7953888))

(assert (= (and b!7953885 (not c!1460944)) b!7953884))

(assert (= (and b!7953888 res!3153745) b!7953881))

(assert (= (and b!7953884 c!1460943) b!7953886))

(assert (= (and b!7953884 (not c!1460943)) b!7953882))

(assert (= (and b!7953886 res!3153742) b!7953883))

(assert (= (and b!7953882 (not res!3153744)) b!7953887))

(assert (= (and b!7953887 res!3153741) b!7953889))

(assert (= (or b!7953883 b!7953889) bm!737447))

(assert (= (or b!7953886 b!7953887) bm!737446))

(assert (= (or b!7953881 bm!737446) bm!737448))

(declare-fun m!8337046 () Bool)

(assert (=> bm!737447 m!8337046))

(declare-fun m!8337048 () Bool)

(assert (=> bm!737448 m!8337048))

(declare-fun m!8337050 () Bool)

(assert (=> b!7953888 m!8337050))

(assert (=> start!750548 d!2376670))

(declare-fun b!7953900 () Bool)

(declare-fun e!4691705 () Bool)

(assert (=> b!7953900 (= e!4691705 tp_is_empty!53501)))

(declare-fun b!7953901 () Bool)

(declare-fun tp!2367619 () Bool)

(declare-fun tp!2367618 () Bool)

(assert (=> b!7953901 (= e!4691705 (and tp!2367619 tp!2367618))))

(declare-fun b!7953902 () Bool)

(declare-fun tp!2367617 () Bool)

(assert (=> b!7953902 (= e!4691705 tp!2367617)))

(declare-fun b!7953903 () Bool)

(declare-fun tp!2367620 () Bool)

(declare-fun tp!2367621 () Bool)

(assert (=> b!7953903 (= e!4691705 (and tp!2367620 tp!2367621))))

(assert (=> b!7953608 (= tp!2367596 e!4691705)))

(assert (= (and b!7953608 ((_ is ElementMatch!21479) (regOne!43471 r!24602))) b!7953900))

(assert (= (and b!7953608 ((_ is Concat!30478) (regOne!43471 r!24602))) b!7953901))

(assert (= (and b!7953608 ((_ is Star!21479) (regOne!43471 r!24602))) b!7953902))

(assert (= (and b!7953608 ((_ is Union!21479) (regOne!43471 r!24602))) b!7953903))

(declare-fun b!7953904 () Bool)

(declare-fun e!4691706 () Bool)

(assert (=> b!7953904 (= e!4691706 tp_is_empty!53501)))

(declare-fun b!7953905 () Bool)

(declare-fun tp!2367624 () Bool)

(declare-fun tp!2367623 () Bool)

(assert (=> b!7953905 (= e!4691706 (and tp!2367624 tp!2367623))))

(declare-fun b!7953906 () Bool)

(declare-fun tp!2367622 () Bool)

(assert (=> b!7953906 (= e!4691706 tp!2367622)))

(declare-fun b!7953907 () Bool)

(declare-fun tp!2367625 () Bool)

(declare-fun tp!2367626 () Bool)

(assert (=> b!7953907 (= e!4691706 (and tp!2367625 tp!2367626))))

(assert (=> b!7953608 (= tp!2367599 e!4691706)))

(assert (= (and b!7953608 ((_ is ElementMatch!21479) (regTwo!43471 r!24602))) b!7953904))

(assert (= (and b!7953608 ((_ is Concat!30478) (regTwo!43471 r!24602))) b!7953905))

(assert (= (and b!7953608 ((_ is Star!21479) (regTwo!43471 r!24602))) b!7953906))

(assert (= (and b!7953608 ((_ is Union!21479) (regTwo!43471 r!24602))) b!7953907))

(declare-fun b!7953908 () Bool)

(declare-fun e!4691707 () Bool)

(assert (=> b!7953908 (= e!4691707 tp_is_empty!53501)))

(declare-fun b!7953909 () Bool)

(declare-fun tp!2367629 () Bool)

(declare-fun tp!2367628 () Bool)

(assert (=> b!7953909 (= e!4691707 (and tp!2367629 tp!2367628))))

(declare-fun b!7953910 () Bool)

(declare-fun tp!2367627 () Bool)

(assert (=> b!7953910 (= e!4691707 tp!2367627)))

(declare-fun b!7953911 () Bool)

(declare-fun tp!2367630 () Bool)

(declare-fun tp!2367631 () Bool)

(assert (=> b!7953911 (= e!4691707 (and tp!2367630 tp!2367631))))

(assert (=> b!7953613 (= tp!2367597 e!4691707)))

(assert (= (and b!7953613 ((_ is ElementMatch!21479) (reg!21808 baseR!116))) b!7953908))

(assert (= (and b!7953613 ((_ is Concat!30478) (reg!21808 baseR!116))) b!7953909))

(assert (= (and b!7953613 ((_ is Star!21479) (reg!21808 baseR!116))) b!7953910))

(assert (= (and b!7953613 ((_ is Union!21479) (reg!21808 baseR!116))) b!7953911))

(declare-fun b!7953912 () Bool)

(declare-fun e!4691708 () Bool)

(assert (=> b!7953912 (= e!4691708 tp_is_empty!53501)))

(declare-fun b!7953913 () Bool)

(declare-fun tp!2367634 () Bool)

(declare-fun tp!2367633 () Bool)

(assert (=> b!7953913 (= e!4691708 (and tp!2367634 tp!2367633))))

(declare-fun b!7953914 () Bool)

(declare-fun tp!2367632 () Bool)

(assert (=> b!7953914 (= e!4691708 tp!2367632)))

(declare-fun b!7953915 () Bool)

(declare-fun tp!2367635 () Bool)

(declare-fun tp!2367636 () Bool)

(assert (=> b!7953915 (= e!4691708 (and tp!2367635 tp!2367636))))

(assert (=> b!7953607 (= tp!2367604 e!4691708)))

(assert (= (and b!7953607 ((_ is ElementMatch!21479) (reg!21808 r!24602))) b!7953912))

(assert (= (and b!7953607 ((_ is Concat!30478) (reg!21808 r!24602))) b!7953913))

(assert (= (and b!7953607 ((_ is Star!21479) (reg!21808 r!24602))) b!7953914))

(assert (= (and b!7953607 ((_ is Union!21479) (reg!21808 r!24602))) b!7953915))

(declare-fun b!7953916 () Bool)

(declare-fun e!4691709 () Bool)

(assert (=> b!7953916 (= e!4691709 tp_is_empty!53501)))

(declare-fun b!7953917 () Bool)

(declare-fun tp!2367639 () Bool)

(declare-fun tp!2367638 () Bool)

(assert (=> b!7953917 (= e!4691709 (and tp!2367639 tp!2367638))))

(declare-fun b!7953918 () Bool)

(declare-fun tp!2367637 () Bool)

(assert (=> b!7953918 (= e!4691709 tp!2367637)))

(declare-fun b!7953919 () Bool)

(declare-fun tp!2367640 () Bool)

(declare-fun tp!2367641 () Bool)

(assert (=> b!7953919 (= e!4691709 (and tp!2367640 tp!2367641))))

(assert (=> b!7953617 (= tp!2367602 e!4691709)))

(assert (= (and b!7953617 ((_ is ElementMatch!21479) (regOne!43471 baseR!116))) b!7953916))

(assert (= (and b!7953617 ((_ is Concat!30478) (regOne!43471 baseR!116))) b!7953917))

(assert (= (and b!7953617 ((_ is Star!21479) (regOne!43471 baseR!116))) b!7953918))

(assert (= (and b!7953617 ((_ is Union!21479) (regOne!43471 baseR!116))) b!7953919))

(declare-fun b!7953920 () Bool)

(declare-fun e!4691710 () Bool)

(assert (=> b!7953920 (= e!4691710 tp_is_empty!53501)))

(declare-fun b!7953921 () Bool)

(declare-fun tp!2367644 () Bool)

(declare-fun tp!2367643 () Bool)

(assert (=> b!7953921 (= e!4691710 (and tp!2367644 tp!2367643))))

(declare-fun b!7953922 () Bool)

(declare-fun tp!2367642 () Bool)

(assert (=> b!7953922 (= e!4691710 tp!2367642)))

(declare-fun b!7953923 () Bool)

(declare-fun tp!2367645 () Bool)

(declare-fun tp!2367646 () Bool)

(assert (=> b!7953923 (= e!4691710 (and tp!2367645 tp!2367646))))

(assert (=> b!7953617 (= tp!2367598 e!4691710)))

(assert (= (and b!7953617 ((_ is ElementMatch!21479) (regTwo!43471 baseR!116))) b!7953920))

(assert (= (and b!7953617 ((_ is Concat!30478) (regTwo!43471 baseR!116))) b!7953921))

(assert (= (and b!7953617 ((_ is Star!21479) (regTwo!43471 baseR!116))) b!7953922))

(assert (= (and b!7953617 ((_ is Union!21479) (regTwo!43471 baseR!116))) b!7953923))

(declare-fun b!7953924 () Bool)

(declare-fun e!4691711 () Bool)

(assert (=> b!7953924 (= e!4691711 tp_is_empty!53501)))

(declare-fun b!7953925 () Bool)

(declare-fun tp!2367649 () Bool)

(declare-fun tp!2367648 () Bool)

(assert (=> b!7953925 (= e!4691711 (and tp!2367649 tp!2367648))))

(declare-fun b!7953926 () Bool)

(declare-fun tp!2367647 () Bool)

(assert (=> b!7953926 (= e!4691711 tp!2367647)))

(declare-fun b!7953927 () Bool)

(declare-fun tp!2367650 () Bool)

(declare-fun tp!2367651 () Bool)

(assert (=> b!7953927 (= e!4691711 (and tp!2367650 tp!2367651))))

(assert (=> b!7953616 (= tp!2367603 e!4691711)))

(assert (= (and b!7953616 ((_ is ElementMatch!21479) (regOne!43470 r!24602))) b!7953924))

(assert (= (and b!7953616 ((_ is Concat!30478) (regOne!43470 r!24602))) b!7953925))

(assert (= (and b!7953616 ((_ is Star!21479) (regOne!43470 r!24602))) b!7953926))

(assert (= (and b!7953616 ((_ is Union!21479) (regOne!43470 r!24602))) b!7953927))

(declare-fun b!7953928 () Bool)

(declare-fun e!4691712 () Bool)

(assert (=> b!7953928 (= e!4691712 tp_is_empty!53501)))

(declare-fun b!7953929 () Bool)

(declare-fun tp!2367654 () Bool)

(declare-fun tp!2367653 () Bool)

(assert (=> b!7953929 (= e!4691712 (and tp!2367654 tp!2367653))))

(declare-fun b!7953930 () Bool)

(declare-fun tp!2367652 () Bool)

(assert (=> b!7953930 (= e!4691712 tp!2367652)))

(declare-fun b!7953931 () Bool)

(declare-fun tp!2367655 () Bool)

(declare-fun tp!2367656 () Bool)

(assert (=> b!7953931 (= e!4691712 (and tp!2367655 tp!2367656))))

(assert (=> b!7953616 (= tp!2367606 e!4691712)))

(assert (= (and b!7953616 ((_ is ElementMatch!21479) (regTwo!43470 r!24602))) b!7953928))

(assert (= (and b!7953616 ((_ is Concat!30478) (regTwo!43470 r!24602))) b!7953929))

(assert (= (and b!7953616 ((_ is Star!21479) (regTwo!43470 r!24602))) b!7953930))

(assert (= (and b!7953616 ((_ is Union!21479) (regTwo!43470 r!24602))) b!7953931))

(declare-fun b!7953940 () Bool)

(declare-fun e!4691719 () Bool)

(declare-fun tp!2367659 () Bool)

(assert (=> b!7953940 (= e!4691719 (and tp_is_empty!53501 tp!2367659))))

(assert (=> b!7953626 (= tp!2367605 e!4691719)))

(assert (= (and b!7953626 ((_ is Cons!74584) (t!390451 testedP!447))) b!7953940))

(declare-fun b!7953941 () Bool)

(declare-fun e!4691720 () Bool)

(assert (=> b!7953941 (= e!4691720 tp_is_empty!53501)))

(declare-fun b!7953942 () Bool)

(declare-fun tp!2367662 () Bool)

(declare-fun tp!2367661 () Bool)

(assert (=> b!7953942 (= e!4691720 (and tp!2367662 tp!2367661))))

(declare-fun b!7953943 () Bool)

(declare-fun tp!2367660 () Bool)

(assert (=> b!7953943 (= e!4691720 tp!2367660)))

(declare-fun b!7953944 () Bool)

(declare-fun tp!2367663 () Bool)

(declare-fun tp!2367664 () Bool)

(assert (=> b!7953944 (= e!4691720 (and tp!2367663 tp!2367664))))

(assert (=> b!7953609 (= tp!2367595 e!4691720)))

(assert (= (and b!7953609 ((_ is ElementMatch!21479) (regOne!43470 baseR!116))) b!7953941))

(assert (= (and b!7953609 ((_ is Concat!30478) (regOne!43470 baseR!116))) b!7953942))

(assert (= (and b!7953609 ((_ is Star!21479) (regOne!43470 baseR!116))) b!7953943))

(assert (= (and b!7953609 ((_ is Union!21479) (regOne!43470 baseR!116))) b!7953944))

(declare-fun b!7953945 () Bool)

(declare-fun e!4691721 () Bool)

(assert (=> b!7953945 (= e!4691721 tp_is_empty!53501)))

(declare-fun b!7953946 () Bool)

(declare-fun tp!2367667 () Bool)

(declare-fun tp!2367666 () Bool)

(assert (=> b!7953946 (= e!4691721 (and tp!2367667 tp!2367666))))

(declare-fun b!7953947 () Bool)

(declare-fun tp!2367665 () Bool)

(assert (=> b!7953947 (= e!4691721 tp!2367665)))

(declare-fun b!7953948 () Bool)

(declare-fun tp!2367668 () Bool)

(declare-fun tp!2367669 () Bool)

(assert (=> b!7953948 (= e!4691721 (and tp!2367668 tp!2367669))))

(assert (=> b!7953609 (= tp!2367601 e!4691721)))

(assert (= (and b!7953609 ((_ is ElementMatch!21479) (regTwo!43470 baseR!116))) b!7953945))

(assert (= (and b!7953609 ((_ is Concat!30478) (regTwo!43470 baseR!116))) b!7953946))

(assert (= (and b!7953609 ((_ is Star!21479) (regTwo!43470 baseR!116))) b!7953947))

(assert (= (and b!7953609 ((_ is Union!21479) (regTwo!43470 baseR!116))) b!7953948))

(declare-fun b!7953949 () Bool)

(declare-fun e!4691722 () Bool)

(declare-fun tp!2367670 () Bool)

(assert (=> b!7953949 (= e!4691722 (and tp_is_empty!53501 tp!2367670))))

(assert (=> b!7953625 (= tp!2367600 e!4691722)))

(assert (= (and b!7953625 ((_ is Cons!74584) (t!390451 input!7927))) b!7953949))

(check-sat (not b!7953902) (not b!7953879) (not b!7953637) (not b!7953654) (not d!2376660) (not bm!737433) (not bm!737431) (not b!7953914) (not b!7953940) (not b!7953922) (not b!7953930) (not b!7953718) (not b!7953866) (not bm!737435) (not b!7953632) (not d!2376666) (not d!2376664) (not b!7953911) (not d!2376614) (not b!7953825) (not b!7953944) (not b!7953867) (not b!7953878) (not b!7953946) (not b!7953943) (not b!7953833) (not b!7953927) (not b!7953907) (not b!7953949) (not b!7953921) (not b!7953903) (not bm!737430) (not b!7953925) (not d!2376636) (not b!7953923) (not b!7953733) (not bm!737448) (not b!7953913) (not b!7953828) (not b!7953909) (not b!7953648) (not d!2376608) (not b!7953915) (not b!7953917) (not b!7953824) (not b!7953942) (not bm!737432) (not bm!737392) (not b!7953649) (not b!7953823) (not b!7953906) (not b!7953692) (not b!7953836) (not b!7953926) (not b!7953652) (not d!2376616) (not b!7953840) (not b!7953650) (not b!7953929) (not b!7953901) (not bm!737437) (not b!7953947) (not b!7953653) (not bm!737434) (not bm!737391) (not d!2376606) (not b!7953839) (not b!7953948) (not d!2376624) (not b!7953918) (not bm!737402) (not b!7953910) (not d!2376656) (not bm!737447) (not b!7953931) (not b!7953905) tp_is_empty!53501 (not b!7953888) (not b!7953838) (not d!2376652) (not b!7953919) (not bm!737401) (not bm!737436))
(check-sat)
(get-model)

(declare-fun d!2376692 () Bool)

(assert (=> d!2376692 (= (nullable!9580 (regOne!43470 r!24602)) (nullableFct!3778 (regOne!43470 r!24602)))))

(declare-fun bs!1969609 () Bool)

(assert (= bs!1969609 d!2376692))

(declare-fun m!8337122 () Bool)

(assert (=> bs!1969609 m!8337122))

(assert (=> b!7953718 d!2376692))

(assert (=> d!2376608 d!2376610))

(declare-fun d!2376694 () Bool)

(assert (=> d!2376694 (isPrefix!6579 input!7927 input!7927)))

(assert (=> d!2376694 true))

(declare-fun _$45!2464 () Unit!169904)

(assert (=> d!2376694 (= (choose!59946 input!7927 input!7927) _$45!2464)))

(declare-fun bs!1969610 () Bool)

(assert (= bs!1969610 d!2376694))

(assert (=> bs!1969610 m!8336838))

(assert (=> d!2376608 d!2376694))

(assert (=> b!7953828 d!2376634))

(assert (=> b!7953828 d!2376656))

(declare-fun d!2376696 () Bool)

(assert (=> d!2376696 (= (head!16231 (getSuffix!3782 input!7927 testedP!447)) (h!81032 (getSuffix!3782 input!7927 testedP!447)))))

(assert (=> b!7953828 d!2376696))

(declare-fun e!4691777 () Bool)

(declare-fun b!7954074 () Bool)

(declare-fun lt!2701496 () List!74708)

(assert (=> b!7954074 (= e!4691777 (or (not (= (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584) Nil!74584)) (= lt!2701496 testedP!447)))))

(declare-fun b!7954072 () Bool)

(declare-fun e!4691776 () List!74708)

(assert (=> b!7954072 (= e!4691776 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(declare-fun b!7954071 () Bool)

(assert (=> b!7954071 (= e!4691776 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))

(declare-fun b!7954073 () Bool)

(declare-fun res!3153764 () Bool)

(assert (=> b!7954073 (=> (not res!3153764) (not e!4691777))))

(assert (=> b!7954073 (= res!3153764 (= (size!43415 lt!2701496) (+ (size!43415 testedP!447) (size!43415 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(declare-fun d!2376698 () Bool)

(assert (=> d!2376698 e!4691777))

(declare-fun res!3153763 () Bool)

(assert (=> d!2376698 (=> (not res!3153763) (not e!4691777))))

(assert (=> d!2376698 (= res!3153763 (= (content!15836 lt!2701496) ((_ map or) (content!15836 testedP!447) (content!15836 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(assert (=> d!2376698 (= lt!2701496 e!4691776)))

(declare-fun c!1460971 () Bool)

(assert (=> d!2376698 (= c!1460971 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376698 (= (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) lt!2701496)))

(assert (= (and d!2376698 c!1460971) b!7954071))

(assert (= (and d!2376698 (not c!1460971)) b!7954072))

(assert (= (and d!2376698 res!3153763) b!7954073))

(assert (= (and b!7954073 res!3153764) b!7954074))

(declare-fun m!8337124 () Bool)

(assert (=> b!7954072 m!8337124))

(declare-fun m!8337126 () Bool)

(assert (=> b!7954073 m!8337126))

(assert (=> b!7954073 m!8336828))

(declare-fun m!8337128 () Bool)

(assert (=> b!7954073 m!8337128))

(declare-fun m!8337130 () Bool)

(assert (=> d!2376698 m!8337130))

(assert (=> d!2376698 m!8337030))

(declare-fun m!8337132 () Bool)

(assert (=> d!2376698 m!8337132))

(assert (=> b!7953828 d!2376698))

(declare-fun d!2376700 () Bool)

(declare-fun e!4691780 () Bool)

(assert (=> d!2376700 e!4691780))

(declare-fun res!3153766 () Bool)

(assert (=> d!2376700 (=> res!3153766 e!4691780)))

(declare-fun lt!2701497 () Bool)

(assert (=> d!2376700 (= res!3153766 (not lt!2701497))))

(declare-fun e!4691778 () Bool)

(assert (=> d!2376700 (= lt!2701497 e!4691778)))

(declare-fun res!3153765 () Bool)

(assert (=> d!2376700 (=> res!3153765 e!4691778)))

(assert (=> d!2376700 (= res!3153765 ((_ is Nil!74584) (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(assert (=> d!2376700 (= (isPrefix!6579 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) input!7927) lt!2701497)))

(declare-fun b!7954075 () Bool)

(declare-fun e!4691779 () Bool)

(assert (=> b!7954075 (= e!4691778 e!4691779)))

(declare-fun res!3153767 () Bool)

(assert (=> b!7954075 (=> (not res!3153767) (not e!4691779))))

(assert (=> b!7954075 (= res!3153767 (not ((_ is Nil!74584) input!7927)))))

(declare-fun b!7954078 () Bool)

(assert (=> b!7954078 (= e!4691780 (>= (size!43415 input!7927) (size!43415 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(declare-fun b!7954076 () Bool)

(declare-fun res!3153768 () Bool)

(assert (=> b!7954076 (=> (not res!3153768) (not e!4691779))))

(assert (=> b!7954076 (= res!3153768 (= (head!16231 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) (head!16231 input!7927)))))

(declare-fun b!7954077 () Bool)

(assert (=> b!7954077 (= e!4691779 (isPrefix!6579 (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) (tail!15768 input!7927)))))

(assert (= (and d!2376700 (not res!3153765)) b!7954075))

(assert (= (and b!7954075 res!3153767) b!7954076))

(assert (= (and b!7954076 res!3153768) b!7954077))

(assert (= (and d!2376700 (not res!3153766)) b!7954078))

(assert (=> b!7954078 m!8336830))

(assert (=> b!7954078 m!8336976))

(declare-fun m!8337134 () Bool)

(assert (=> b!7954078 m!8337134))

(assert (=> b!7954076 m!8336976))

(declare-fun m!8337136 () Bool)

(assert (=> b!7954076 m!8337136))

(assert (=> b!7954076 m!8336880))

(assert (=> b!7954077 m!8336976))

(declare-fun m!8337138 () Bool)

(assert (=> b!7954077 m!8337138))

(assert (=> b!7954077 m!8336882))

(assert (=> b!7954077 m!8337138))

(assert (=> b!7954077 m!8336882))

(declare-fun m!8337140 () Bool)

(assert (=> b!7954077 m!8337140))

(assert (=> b!7953828 d!2376700))

(assert (=> b!7953828 d!2376652))

(assert (=> b!7953828 d!2376654))

(declare-fun b!7954082 () Bool)

(declare-fun e!4691782 () Bool)

(declare-fun lt!2701498 () List!74708)

(assert (=> b!7954082 (= e!4691782 (or (not (= (Cons!74584 lt!2701375 Nil!74584) Nil!74584)) (= lt!2701498 testedP!447)))))

(declare-fun b!7954080 () Bool)

(declare-fun e!4691781 () List!74708)

(assert (=> b!7954080 (= e!4691781 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) (Cons!74584 lt!2701375 Nil!74584))))))

(declare-fun b!7954079 () Bool)

(assert (=> b!7954079 (= e!4691781 (Cons!74584 lt!2701375 Nil!74584))))

(declare-fun b!7954081 () Bool)

(declare-fun res!3153770 () Bool)

(assert (=> b!7954081 (=> (not res!3153770) (not e!4691782))))

(assert (=> b!7954081 (= res!3153770 (= (size!43415 lt!2701498) (+ (size!43415 testedP!447) (size!43415 (Cons!74584 lt!2701375 Nil!74584)))))))

(declare-fun d!2376702 () Bool)

(assert (=> d!2376702 e!4691782))

(declare-fun res!3153769 () Bool)

(assert (=> d!2376702 (=> (not res!3153769) (not e!4691782))))

(assert (=> d!2376702 (= res!3153769 (= (content!15836 lt!2701498) ((_ map or) (content!15836 testedP!447) (content!15836 (Cons!74584 lt!2701375 Nil!74584)))))))

(assert (=> d!2376702 (= lt!2701498 e!4691781)))

(declare-fun c!1460972 () Bool)

(assert (=> d!2376702 (= c!1460972 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376702 (= (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)) lt!2701498)))

(assert (= (and d!2376702 c!1460972) b!7954079))

(assert (= (and d!2376702 (not c!1460972)) b!7954080))

(assert (= (and d!2376702 res!3153769) b!7954081))

(assert (= (and b!7954081 res!3153770) b!7954082))

(declare-fun m!8337142 () Bool)

(assert (=> b!7954080 m!8337142))

(declare-fun m!8337144 () Bool)

(assert (=> b!7954081 m!8337144))

(assert (=> b!7954081 m!8336828))

(declare-fun m!8337146 () Bool)

(assert (=> b!7954081 m!8337146))

(declare-fun m!8337148 () Bool)

(assert (=> d!2376702 m!8337148))

(assert (=> d!2376702 m!8337030))

(declare-fun m!8337150 () Bool)

(assert (=> d!2376702 m!8337150))

(assert (=> b!7953828 d!2376702))

(assert (=> b!7953828 d!2376668))

(assert (=> b!7953828 d!2376662))

(declare-fun e!4691784 () Bool)

(declare-fun b!7954086 () Bool)

(declare-fun lt!2701499 () List!74708)

(assert (=> b!7954086 (= e!4691784 (or (not (= lt!2701364 Nil!74584)) (= lt!2701499 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))))))

(declare-fun b!7954084 () Bool)

(declare-fun e!4691783 () List!74708)

(assert (=> b!7954084 (= e!4691783 (Cons!74584 (h!81032 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) (++!18349 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) lt!2701364)))))

(declare-fun b!7954083 () Bool)

(assert (=> b!7954083 (= e!4691783 lt!2701364)))

(declare-fun b!7954085 () Bool)

(declare-fun res!3153772 () Bool)

(assert (=> b!7954085 (=> (not res!3153772) (not e!4691784))))

(assert (=> b!7954085 (= res!3153772 (= (size!43415 lt!2701499) (+ (size!43415 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) (size!43415 lt!2701364))))))

(declare-fun d!2376704 () Bool)

(assert (=> d!2376704 e!4691784))

(declare-fun res!3153771 () Bool)

(assert (=> d!2376704 (=> (not res!3153771) (not e!4691784))))

(assert (=> d!2376704 (= res!3153771 (= (content!15836 lt!2701499) ((_ map or) (content!15836 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) (content!15836 lt!2701364))))))

(assert (=> d!2376704 (= lt!2701499 e!4691783)))

(declare-fun c!1460973 () Bool)

(assert (=> d!2376704 (= c!1460973 ((_ is Nil!74584) (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))

(assert (=> d!2376704 (= (++!18349 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)) lt!2701364) lt!2701499)))

(assert (= (and d!2376704 c!1460973) b!7954083))

(assert (= (and d!2376704 (not c!1460973)) b!7954084))

(assert (= (and d!2376704 res!3153771) b!7954085))

(assert (= (and b!7954085 res!3153772) b!7954086))

(declare-fun m!8337152 () Bool)

(assert (=> b!7954084 m!8337152))

(declare-fun m!8337154 () Bool)

(assert (=> b!7954085 m!8337154))

(assert (=> b!7954085 m!8336978))

(declare-fun m!8337156 () Bool)

(assert (=> b!7954085 m!8337156))

(declare-fun m!8337158 () Bool)

(assert (=> b!7954085 m!8337158))

(declare-fun m!8337160 () Bool)

(assert (=> d!2376704 m!8337160))

(assert (=> d!2376704 m!8336978))

(declare-fun m!8337162 () Bool)

(assert (=> d!2376704 m!8337162))

(declare-fun m!8337164 () Bool)

(assert (=> d!2376704 m!8337164))

(assert (=> b!7953828 d!2376704))

(declare-fun e!4691786 () Bool)

(declare-fun lt!2701500 () List!74708)

(declare-fun b!7954090 () Bool)

(assert (=> b!7954090 (= e!4691786 (or (not (= (Cons!74584 (head!16231 lt!2701251) Nil!74584) Nil!74584)) (= lt!2701500 testedP!447)))))

(declare-fun b!7954088 () Bool)

(declare-fun e!4691785 () List!74708)

(assert (=> b!7954088 (= e!4691785 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) (Cons!74584 (head!16231 lt!2701251) Nil!74584))))))

(declare-fun b!7954087 () Bool)

(assert (=> b!7954087 (= e!4691785 (Cons!74584 (head!16231 lt!2701251) Nil!74584))))

(declare-fun b!7954089 () Bool)

(declare-fun res!3153774 () Bool)

(assert (=> b!7954089 (=> (not res!3153774) (not e!4691786))))

(assert (=> b!7954089 (= res!3153774 (= (size!43415 lt!2701500) (+ (size!43415 testedP!447) (size!43415 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(declare-fun d!2376706 () Bool)

(assert (=> d!2376706 e!4691786))

(declare-fun res!3153773 () Bool)

(assert (=> d!2376706 (=> (not res!3153773) (not e!4691786))))

(assert (=> d!2376706 (= res!3153773 (= (content!15836 lt!2701500) ((_ map or) (content!15836 testedP!447) (content!15836 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(assert (=> d!2376706 (= lt!2701500 e!4691785)))

(declare-fun c!1460974 () Bool)

(assert (=> d!2376706 (= c!1460974 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376706 (= (++!18349 testedP!447 (Cons!74584 (head!16231 lt!2701251) Nil!74584)) lt!2701500)))

(assert (= (and d!2376706 c!1460974) b!7954087))

(assert (= (and d!2376706 (not c!1460974)) b!7954088))

(assert (= (and d!2376706 res!3153773) b!7954089))

(assert (= (and b!7954089 res!3153774) b!7954090))

(declare-fun m!8337166 () Bool)

(assert (=> b!7954088 m!8337166))

(declare-fun m!8337168 () Bool)

(assert (=> b!7954089 m!8337168))

(assert (=> b!7954089 m!8336828))

(declare-fun m!8337170 () Bool)

(assert (=> b!7954089 m!8337170))

(declare-fun m!8337172 () Bool)

(assert (=> d!2376706 m!8337172))

(assert (=> d!2376706 m!8337030))

(declare-fun m!8337174 () Bool)

(assert (=> d!2376706 m!8337174))

(assert (=> b!7953828 d!2376706))

(declare-fun d!2376708 () Bool)

(assert (=> d!2376708 (= (++!18349 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)) lt!2701364) input!7927)))

(declare-fun lt!2701503 () Unit!169904)

(declare-fun choose!59954 (List!74708 C!43296 List!74708 List!74708) Unit!169904)

(assert (=> d!2376708 (= lt!2701503 (choose!59954 testedP!447 lt!2701375 lt!2701364 input!7927))))

(assert (=> d!2376708 (= (++!18349 testedP!447 (Cons!74584 lt!2701375 lt!2701364)) input!7927)))

(assert (=> d!2376708 (= (lemmaMoveElementToOtherListKeepsConcatEq!3523 testedP!447 lt!2701375 lt!2701364 input!7927) lt!2701503)))

(declare-fun bs!1969611 () Bool)

(assert (= bs!1969611 d!2376708))

(assert (=> bs!1969611 m!8336978))

(assert (=> bs!1969611 m!8336978))

(assert (=> bs!1969611 m!8336982))

(declare-fun m!8337176 () Bool)

(assert (=> bs!1969611 m!8337176))

(declare-fun m!8337178 () Bool)

(assert (=> bs!1969611 m!8337178))

(assert (=> b!7953828 d!2376708))

(assert (=> b!7953828 d!2376616))

(assert (=> bm!737433 d!2376662))

(declare-fun d!2376710 () Bool)

(declare-fun lt!2701504 () Int)

(assert (=> d!2376710 (>= lt!2701504 0)))

(declare-fun e!4691787 () Int)

(assert (=> d!2376710 (= lt!2701504 e!4691787)))

(declare-fun c!1460975 () Bool)

(assert (=> d!2376710 (= c!1460975 ((_ is Nil!74584) (t!390451 input!7927)))))

(assert (=> d!2376710 (= (size!43415 (t!390451 input!7927)) lt!2701504)))

(declare-fun b!7954091 () Bool)

(assert (=> b!7954091 (= e!4691787 0)))

(declare-fun b!7954092 () Bool)

(assert (=> b!7954092 (= e!4691787 (+ 1 (size!43415 (t!390451 (t!390451 input!7927)))))))

(assert (= (and d!2376710 c!1460975) b!7954091))

(assert (= (and d!2376710 (not c!1460975)) b!7954092))

(declare-fun m!8337180 () Bool)

(assert (=> b!7954092 m!8337180))

(assert (=> b!7953733 d!2376710))

(declare-fun b!7954093 () Bool)

(declare-fun e!4691789 () tuple2!70620)

(assert (=> b!7954093 (= e!4691789 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737480 () Bool)

(declare-fun call!737492 () Unit!169904)

(assert (=> bm!737480 (= call!737492 (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 lt!2701382 input!7927))))

(declare-fun bm!737481 () Bool)

(declare-fun call!737489 () Regex!21479)

(declare-fun call!737490 () List!74708)

(declare-fun lt!2701531 () List!74708)

(declare-fun call!737485 () tuple2!70620)

(assert (=> bm!737481 (= call!737485 (findLongestMatchInner!2260 call!737489 lt!2701531 (+ lt!2701248 1 1) call!737490 input!7927 lt!2701253))))

(declare-fun bm!737482 () Bool)

(declare-fun call!737487 () C!43296)

(assert (=> bm!737482 (= call!737489 (derivativeStep!6507 call!737439 call!737487))))

(declare-fun bm!737483 () Bool)

(assert (=> bm!737483 (= call!737487 (head!16231 call!737440))))

(declare-fun bm!737484 () Bool)

(declare-fun call!737486 () Bool)

(assert (=> bm!737484 (= call!737486 (isPrefix!6579 input!7927 input!7927))))

(declare-fun b!7954095 () Bool)

(declare-fun e!4691793 () tuple2!70620)

(assert (=> b!7954095 (= e!4691789 e!4691793)))

(declare-fun c!1460980 () Bool)

(assert (=> b!7954095 (= c!1460980 (= (+ lt!2701248 1) lt!2701253))))

(declare-fun bm!737485 () Bool)

(assert (=> bm!737485 (= call!737490 (tail!15768 call!737440))))

(declare-fun b!7954096 () Bool)

(declare-fun e!4691792 () tuple2!70620)

(assert (=> b!7954096 (= e!4691792 (tuple2!70621 lt!2701382 Nil!74584))))

(declare-fun b!7954097 () Bool)

(assert (=> b!7954097 (= e!4691792 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737486 () Bool)

(declare-fun call!737491 () Unit!169904)

(assert (=> bm!737486 (= call!737491 (lemmaIsPrefixRefl!4047 input!7927 input!7927))))

(declare-fun b!7954098 () Bool)

(declare-fun c!1460976 () Bool)

(declare-fun call!737488 () Bool)

(assert (=> b!7954098 (= c!1460976 call!737488)))

(declare-fun lt!2701521 () Unit!169904)

(declare-fun lt!2701522 () Unit!169904)

(assert (=> b!7954098 (= lt!2701521 lt!2701522)))

(assert (=> b!7954098 (= input!7927 lt!2701382)))

(assert (=> b!7954098 (= lt!2701522 call!737492)))

(declare-fun lt!2701527 () Unit!169904)

(declare-fun lt!2701525 () Unit!169904)

(assert (=> b!7954098 (= lt!2701527 lt!2701525)))

(assert (=> b!7954098 call!737486))

(assert (=> b!7954098 (= lt!2701525 call!737491)))

(assert (=> b!7954098 (= e!4691793 e!4691792)))

(declare-fun b!7954099 () Bool)

(declare-fun e!4691795 () Unit!169904)

(declare-fun Unit!169914 () Unit!169904)

(assert (=> b!7954099 (= e!4691795 Unit!169914)))

(declare-fun b!7954100 () Bool)

(declare-fun Unit!169915 () Unit!169904)

(assert (=> b!7954100 (= e!4691795 Unit!169915)))

(declare-fun lt!2701506 () Unit!169904)

(assert (=> b!7954100 (= lt!2701506 call!737491)))

(assert (=> b!7954100 call!737486))

(declare-fun lt!2701530 () Unit!169904)

(assert (=> b!7954100 (= lt!2701530 lt!2701506)))

(declare-fun lt!2701509 () Unit!169904)

(assert (=> b!7954100 (= lt!2701509 call!737492)))

(assert (=> b!7954100 (= input!7927 lt!2701382)))

(declare-fun lt!2701523 () Unit!169904)

(assert (=> b!7954100 (= lt!2701523 lt!2701509)))

(assert (=> b!7954100 false))

(declare-fun b!7954101 () Bool)

(declare-fun e!4691791 () Bool)

(declare-fun e!4691788 () Bool)

(assert (=> b!7954101 (= e!4691791 e!4691788)))

(declare-fun res!3153775 () Bool)

(assert (=> b!7954101 (=> res!3153775 e!4691788)))

(declare-fun lt!2701519 () tuple2!70620)

(assert (=> b!7954101 (= res!3153775 (isEmpty!42883 (_1!38613 lt!2701519)))))

(declare-fun b!7954102 () Bool)

(declare-fun e!4691790 () tuple2!70620)

(declare-fun e!4691794 () tuple2!70620)

(assert (=> b!7954102 (= e!4691790 e!4691794)))

(declare-fun lt!2701518 () tuple2!70620)

(assert (=> b!7954102 (= lt!2701518 call!737485)))

(declare-fun c!1460981 () Bool)

(assert (=> b!7954102 (= c!1460981 (isEmpty!42883 (_1!38613 lt!2701518)))))

(declare-fun b!7954094 () Bool)

(assert (=> b!7954094 (= e!4691794 lt!2701518)))

(declare-fun d!2376712 () Bool)

(assert (=> d!2376712 e!4691791))

(declare-fun res!3153776 () Bool)

(assert (=> d!2376712 (=> (not res!3153776) (not e!4691791))))

(assert (=> d!2376712 (= res!3153776 (= (++!18349 (_1!38613 lt!2701519) (_2!38613 lt!2701519)) input!7927))))

(assert (=> d!2376712 (= lt!2701519 e!4691789)))

(declare-fun c!1460979 () Bool)

(assert (=> d!2376712 (= c!1460979 (lostCause!1967 call!737439))))

(declare-fun lt!2701528 () Unit!169904)

(declare-fun Unit!169916 () Unit!169904)

(assert (=> d!2376712 (= lt!2701528 Unit!169916)))

(assert (=> d!2376712 (= (getSuffix!3782 input!7927 lt!2701382) call!737440)))

(declare-fun lt!2701510 () Unit!169904)

(declare-fun lt!2701515 () Unit!169904)

(assert (=> d!2376712 (= lt!2701510 lt!2701515)))

(declare-fun lt!2701520 () List!74708)

(assert (=> d!2376712 (= call!737440 lt!2701520)))

(assert (=> d!2376712 (= lt!2701515 (lemmaSamePrefixThenSameSuffix!2983 lt!2701382 call!737440 lt!2701382 lt!2701520 input!7927))))

(assert (=> d!2376712 (= lt!2701520 (getSuffix!3782 input!7927 lt!2701382))))

(declare-fun lt!2701508 () Unit!169904)

(declare-fun lt!2701512 () Unit!169904)

(assert (=> d!2376712 (= lt!2701508 lt!2701512)))

(assert (=> d!2376712 (isPrefix!6579 lt!2701382 (++!18349 lt!2701382 call!737440))))

(assert (=> d!2376712 (= lt!2701512 (lemmaConcatTwoListThenFirstIsPrefix!3845 lt!2701382 call!737440))))

(assert (=> d!2376712 (validRegex!11783 call!737439)))

(assert (=> d!2376712 (= (findLongestMatchInner!2260 call!737439 lt!2701382 (+ lt!2701248 1) call!737440 input!7927 lt!2701253) lt!2701519)))

(declare-fun b!7954103 () Bool)

(assert (=> b!7954103 (= e!4691788 (>= (size!43415 (_1!38613 lt!2701519)) (size!43415 lt!2701382)))))

(declare-fun bm!737487 () Bool)

(assert (=> bm!737487 (= call!737488 (nullable!9580 call!737439))))

(declare-fun b!7954104 () Bool)

(assert (=> b!7954104 (= e!4691794 (tuple2!70621 lt!2701382 call!737440))))

(declare-fun b!7954105 () Bool)

(assert (=> b!7954105 (= e!4691790 call!737485)))

(declare-fun b!7954106 () Bool)

(declare-fun c!1460977 () Bool)

(assert (=> b!7954106 (= c!1460977 call!737488)))

(declare-fun lt!2701526 () Unit!169904)

(declare-fun lt!2701511 () Unit!169904)

(assert (=> b!7954106 (= lt!2701526 lt!2701511)))

(declare-fun lt!2701513 () List!74708)

(declare-fun lt!2701524 () C!43296)

(assert (=> b!7954106 (= (++!18349 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584)) lt!2701513) input!7927)))

(assert (=> b!7954106 (= lt!2701511 (lemmaMoveElementToOtherListKeepsConcatEq!3523 lt!2701382 lt!2701524 lt!2701513 input!7927))))

(assert (=> b!7954106 (= lt!2701513 (tail!15768 call!737440))))

(assert (=> b!7954106 (= lt!2701524 (head!16231 call!737440))))

(declare-fun lt!2701529 () Unit!169904)

(declare-fun lt!2701507 () Unit!169904)

(assert (=> b!7954106 (= lt!2701529 lt!2701507)))

(assert (=> b!7954106 (isPrefix!6579 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)) input!7927)))

(assert (=> b!7954106 (= lt!2701507 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 lt!2701382 input!7927))))

(declare-fun lt!2701505 () Unit!169904)

(declare-fun lt!2701517 () Unit!169904)

(assert (=> b!7954106 (= lt!2701505 lt!2701517)))

(assert (=> b!7954106 (= lt!2701517 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 lt!2701382 input!7927))))

(assert (=> b!7954106 (= lt!2701531 (++!18349 lt!2701382 (Cons!74584 (head!16231 call!737440) Nil!74584)))))

(declare-fun lt!2701514 () Unit!169904)

(assert (=> b!7954106 (= lt!2701514 e!4691795)))

(declare-fun c!1460978 () Bool)

(assert (=> b!7954106 (= c!1460978 (= (size!43415 lt!2701382) (size!43415 input!7927)))))

(declare-fun lt!2701532 () Unit!169904)

(declare-fun lt!2701516 () Unit!169904)

(assert (=> b!7954106 (= lt!2701532 lt!2701516)))

(assert (=> b!7954106 (<= (size!43415 lt!2701382) (size!43415 input!7927))))

(assert (=> b!7954106 (= lt!2701516 (lemmaIsPrefixThenSmallerEqSize!1096 lt!2701382 input!7927))))

(assert (=> b!7954106 (= e!4691793 e!4691790)))

(assert (= (and d!2376712 c!1460979) b!7954093))

(assert (= (and d!2376712 (not c!1460979)) b!7954095))

(assert (= (and b!7954095 c!1460980) b!7954098))

(assert (= (and b!7954095 (not c!1460980)) b!7954106))

(assert (= (and b!7954098 c!1460976) b!7954096))

(assert (= (and b!7954098 (not c!1460976)) b!7954097))

(assert (= (and b!7954106 c!1460978) b!7954100))

(assert (= (and b!7954106 (not c!1460978)) b!7954099))

(assert (= (and b!7954106 c!1460977) b!7954102))

(assert (= (and b!7954106 (not c!1460977)) b!7954105))

(assert (= (and b!7954102 c!1460981) b!7954104))

(assert (= (and b!7954102 (not c!1460981)) b!7954094))

(assert (= (or b!7954102 b!7954105) bm!737483))

(assert (= (or b!7954102 b!7954105) bm!737485))

(assert (= (or b!7954102 b!7954105) bm!737482))

(assert (= (or b!7954102 b!7954105) bm!737481))

(assert (= (or b!7954098 b!7954106) bm!737487))

(assert (= (or b!7954098 b!7954100) bm!737480))

(assert (= (or b!7954098 b!7954100) bm!737486))

(assert (= (or b!7954098 b!7954100) bm!737484))

(assert (= (and d!2376712 res!3153776) b!7954101))

(assert (= (and b!7954101 (not res!3153775)) b!7954103))

(declare-fun m!8337182 () Bool)

(assert (=> bm!737480 m!8337182))

(declare-fun m!8337184 () Bool)

(assert (=> b!7954102 m!8337184))

(declare-fun m!8337186 () Bool)

(assert (=> bm!737481 m!8337186))

(assert (=> bm!737486 m!8336836))

(declare-fun m!8337188 () Bool)

(assert (=> bm!737487 m!8337188))

(declare-fun m!8337190 () Bool)

(assert (=> b!7954103 m!8337190))

(declare-fun m!8337192 () Bool)

(assert (=> b!7954103 m!8337192))

(declare-fun m!8337194 () Bool)

(assert (=> b!7954106 m!8337194))

(declare-fun m!8337196 () Bool)

(assert (=> b!7954106 m!8337196))

(declare-fun m!8337198 () Bool)

(assert (=> b!7954106 m!8337198))

(declare-fun m!8337200 () Bool)

(assert (=> b!7954106 m!8337200))

(declare-fun m!8337202 () Bool)

(assert (=> b!7954106 m!8337202))

(declare-fun m!8337204 () Bool)

(assert (=> b!7954106 m!8337204))

(assert (=> b!7954106 m!8336830))

(declare-fun m!8337206 () Bool)

(assert (=> b!7954106 m!8337206))

(assert (=> b!7954106 m!8337200))

(declare-fun m!8337208 () Bool)

(assert (=> b!7954106 m!8337208))

(assert (=> b!7954106 m!8337192))

(declare-fun m!8337210 () Bool)

(assert (=> b!7954106 m!8337210))

(assert (=> b!7954106 m!8337196))

(declare-fun m!8337212 () Bool)

(assert (=> b!7954106 m!8337212))

(declare-fun m!8337214 () Bool)

(assert (=> b!7954106 m!8337214))

(assert (=> b!7954106 m!8337194))

(declare-fun m!8337216 () Bool)

(assert (=> b!7954106 m!8337216))

(assert (=> bm!737484 m!8336838))

(assert (=> bm!737483 m!8337206))

(assert (=> bm!737485 m!8337204))

(declare-fun m!8337218 () Bool)

(assert (=> bm!737482 m!8337218))

(declare-fun m!8337220 () Bool)

(assert (=> d!2376712 m!8337220))

(assert (=> d!2376712 m!8337194))

(declare-fun m!8337222 () Bool)

(assert (=> d!2376712 m!8337222))

(declare-fun m!8337224 () Bool)

(assert (=> d!2376712 m!8337224))

(declare-fun m!8337226 () Bool)

(assert (=> d!2376712 m!8337226))

(declare-fun m!8337228 () Bool)

(assert (=> d!2376712 m!8337228))

(declare-fun m!8337230 () Bool)

(assert (=> d!2376712 m!8337230))

(assert (=> d!2376712 m!8337224))

(declare-fun m!8337232 () Bool)

(assert (=> d!2376712 m!8337232))

(declare-fun m!8337234 () Bool)

(assert (=> b!7954101 m!8337234))

(assert (=> bm!737431 d!2376712))

(declare-fun d!2376714 () Bool)

(declare-fun res!3153789 () Bool)

(declare-fun e!4691812 () Bool)

(assert (=> d!2376714 (=> res!3153789 e!4691812)))

(assert (=> d!2376714 (= res!3153789 ((_ is EmptyExpr!21479) r!24602))))

(assert (=> d!2376714 (= (nullableFct!3778 r!24602) e!4691812)))

(declare-fun b!7954121 () Bool)

(declare-fun e!4691808 () Bool)

(declare-fun call!737497 () Bool)

(assert (=> b!7954121 (= e!4691808 call!737497)))

(declare-fun b!7954122 () Bool)

(declare-fun e!4691810 () Bool)

(assert (=> b!7954122 (= e!4691812 e!4691810)))

(declare-fun res!3153790 () Bool)

(assert (=> b!7954122 (=> (not res!3153790) (not e!4691810))))

(assert (=> b!7954122 (= res!3153790 (and (not ((_ is EmptyLang!21479) r!24602)) (not ((_ is ElementMatch!21479) r!24602))))))

(declare-fun b!7954123 () Bool)

(declare-fun e!4691809 () Bool)

(declare-fun e!4691811 () Bool)

(assert (=> b!7954123 (= e!4691809 e!4691811)))

(declare-fun res!3153787 () Bool)

(assert (=> b!7954123 (= res!3153787 call!737497)))

(assert (=> b!7954123 (=> res!3153787 e!4691811)))

(declare-fun b!7954124 () Bool)

(declare-fun call!737498 () Bool)

(assert (=> b!7954124 (= e!4691811 call!737498)))

(declare-fun bm!737492 () Bool)

(declare-fun c!1460984 () Bool)

(assert (=> bm!737492 (= call!737497 (nullable!9580 (ite c!1460984 (regOne!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun b!7954125 () Bool)

(declare-fun e!4691813 () Bool)

(assert (=> b!7954125 (= e!4691810 e!4691813)))

(declare-fun res!3153788 () Bool)

(assert (=> b!7954125 (=> res!3153788 e!4691813)))

(assert (=> b!7954125 (= res!3153788 ((_ is Star!21479) r!24602))))

(declare-fun b!7954126 () Bool)

(assert (=> b!7954126 (= e!4691813 e!4691809)))

(assert (=> b!7954126 (= c!1460984 ((_ is Union!21479) r!24602))))

(declare-fun b!7954127 () Bool)

(assert (=> b!7954127 (= e!4691809 e!4691808)))

(declare-fun res!3153791 () Bool)

(assert (=> b!7954127 (= res!3153791 call!737498)))

(assert (=> b!7954127 (=> (not res!3153791) (not e!4691808))))

(declare-fun bm!737493 () Bool)

(assert (=> bm!737493 (= call!737498 (nullable!9580 (ite c!1460984 (regTwo!43471 r!24602) (regOne!43470 r!24602))))))

(assert (= (and d!2376714 (not res!3153789)) b!7954122))

(assert (= (and b!7954122 res!3153790) b!7954125))

(assert (= (and b!7954125 (not res!3153788)) b!7954126))

(assert (= (and b!7954126 c!1460984) b!7954123))

(assert (= (and b!7954126 (not c!1460984)) b!7954127))

(assert (= (and b!7954123 (not res!3153787)) b!7954124))

(assert (= (and b!7954127 res!3153791) b!7954121))

(assert (= (or b!7954123 b!7954121) bm!737492))

(assert (= (or b!7954124 b!7954127) bm!737493))

(declare-fun m!8337236 () Bool)

(assert (=> bm!737492 m!8337236))

(declare-fun m!8337238 () Bool)

(assert (=> bm!737493 m!8337238))

(assert (=> d!2376660 d!2376714))

(declare-fun b!7954131 () Bool)

(declare-fun e!4691815 () Bool)

(declare-fun lt!2701533 () List!74708)

(assert (=> b!7954131 (= e!4691815 (or (not (= (_2!38613 lt!2701370) Nil!74584)) (= lt!2701533 (_1!38613 lt!2701370))))))

(declare-fun b!7954129 () Bool)

(declare-fun e!4691814 () List!74708)

(assert (=> b!7954129 (= e!4691814 (Cons!74584 (h!81032 (_1!38613 lt!2701370)) (++!18349 (t!390451 (_1!38613 lt!2701370)) (_2!38613 lt!2701370))))))

(declare-fun b!7954128 () Bool)

(assert (=> b!7954128 (= e!4691814 (_2!38613 lt!2701370))))

(declare-fun b!7954130 () Bool)

(declare-fun res!3153793 () Bool)

(assert (=> b!7954130 (=> (not res!3153793) (not e!4691815))))

(assert (=> b!7954130 (= res!3153793 (= (size!43415 lt!2701533) (+ (size!43415 (_1!38613 lt!2701370)) (size!43415 (_2!38613 lt!2701370)))))))

(declare-fun d!2376716 () Bool)

(assert (=> d!2376716 e!4691815))

(declare-fun res!3153792 () Bool)

(assert (=> d!2376716 (=> (not res!3153792) (not e!4691815))))

(assert (=> d!2376716 (= res!3153792 (= (content!15836 lt!2701533) ((_ map or) (content!15836 (_1!38613 lt!2701370)) (content!15836 (_2!38613 lt!2701370)))))))

(assert (=> d!2376716 (= lt!2701533 e!4691814)))

(declare-fun c!1460985 () Bool)

(assert (=> d!2376716 (= c!1460985 ((_ is Nil!74584) (_1!38613 lt!2701370)))))

(assert (=> d!2376716 (= (++!18349 (_1!38613 lt!2701370) (_2!38613 lt!2701370)) lt!2701533)))

(assert (= (and d!2376716 c!1460985) b!7954128))

(assert (= (and d!2376716 (not c!1460985)) b!7954129))

(assert (= (and d!2376716 res!3153792) b!7954130))

(assert (= (and b!7954130 res!3153793) b!7954131))

(declare-fun m!8337240 () Bool)

(assert (=> b!7954129 m!8337240))

(declare-fun m!8337242 () Bool)

(assert (=> b!7954130 m!8337242))

(assert (=> b!7954130 m!8336974))

(declare-fun m!8337244 () Bool)

(assert (=> b!7954130 m!8337244))

(declare-fun m!8337246 () Bool)

(assert (=> d!2376716 m!8337246))

(declare-fun m!8337248 () Bool)

(assert (=> d!2376716 m!8337248))

(declare-fun m!8337250 () Bool)

(assert (=> d!2376716 m!8337250))

(assert (=> d!2376636 d!2376716))

(declare-fun b!7954132 () Bool)

(declare-fun e!4691819 () Bool)

(declare-fun call!737500 () Bool)

(assert (=> b!7954132 (= e!4691819 call!737500)))

(declare-fun b!7954133 () Bool)

(declare-fun res!3153797 () Bool)

(declare-fun e!4691822 () Bool)

(assert (=> b!7954133 (=> res!3153797 e!4691822)))

(assert (=> b!7954133 (= res!3153797 (not ((_ is Concat!30478) r!24602)))))

(declare-fun e!4691820 () Bool)

(assert (=> b!7954133 (= e!4691820 e!4691822)))

(declare-fun b!7954134 () Bool)

(declare-fun e!4691821 () Bool)

(declare-fun call!737501 () Bool)

(assert (=> b!7954134 (= e!4691821 call!737501)))

(declare-fun bm!737494 () Bool)

(declare-fun call!737499 () Bool)

(assert (=> bm!737494 (= call!737499 call!737500)))

(declare-fun b!7954135 () Bool)

(declare-fun e!4691816 () Bool)

(assert (=> b!7954135 (= e!4691816 e!4691820)))

(declare-fun c!1460986 () Bool)

(assert (=> b!7954135 (= c!1460986 ((_ is Union!21479) r!24602))))

(declare-fun bm!737495 () Bool)

(assert (=> bm!737495 (= call!737501 (validRegex!11783 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun b!7954136 () Bool)

(declare-fun e!4691817 () Bool)

(assert (=> b!7954136 (= e!4691817 e!4691816)))

(declare-fun c!1460987 () Bool)

(assert (=> b!7954136 (= c!1460987 ((_ is Star!21479) r!24602))))

(declare-fun b!7954137 () Bool)

(declare-fun res!3153795 () Bool)

(assert (=> b!7954137 (=> (not res!3153795) (not e!4691821))))

(assert (=> b!7954137 (= res!3153795 call!737499)))

(assert (=> b!7954137 (= e!4691820 e!4691821)))

(declare-fun d!2376718 () Bool)

(declare-fun res!3153796 () Bool)

(assert (=> d!2376718 (=> res!3153796 e!4691817)))

(assert (=> d!2376718 (= res!3153796 ((_ is ElementMatch!21479) r!24602))))

(assert (=> d!2376718 (= (validRegex!11783 r!24602) e!4691817)))

(declare-fun bm!737496 () Bool)

(assert (=> bm!737496 (= call!737500 (validRegex!11783 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun b!7954138 () Bool)

(declare-fun e!4691818 () Bool)

(assert (=> b!7954138 (= e!4691822 e!4691818)))

(declare-fun res!3153794 () Bool)

(assert (=> b!7954138 (=> (not res!3153794) (not e!4691818))))

(assert (=> b!7954138 (= res!3153794 call!737499)))

(declare-fun b!7954139 () Bool)

(assert (=> b!7954139 (= e!4691816 e!4691819)))

(declare-fun res!3153798 () Bool)

(assert (=> b!7954139 (= res!3153798 (not (nullable!9580 (reg!21808 r!24602))))))

(assert (=> b!7954139 (=> (not res!3153798) (not e!4691819))))

(declare-fun b!7954140 () Bool)

(assert (=> b!7954140 (= e!4691818 call!737501)))

(assert (= (and d!2376718 (not res!3153796)) b!7954136))

(assert (= (and b!7954136 c!1460987) b!7954139))

(assert (= (and b!7954136 (not c!1460987)) b!7954135))

(assert (= (and b!7954139 res!3153798) b!7954132))

(assert (= (and b!7954135 c!1460986) b!7954137))

(assert (= (and b!7954135 (not c!1460986)) b!7954133))

(assert (= (and b!7954137 res!3153795) b!7954134))

(assert (= (and b!7954133 (not res!3153797)) b!7954138))

(assert (= (and b!7954138 res!3153794) b!7954140))

(assert (= (or b!7954134 b!7954140) bm!737495))

(assert (= (or b!7954137 b!7954138) bm!737494))

(assert (= (or b!7954132 bm!737494) bm!737496))

(declare-fun m!8337252 () Bool)

(assert (=> bm!737495 m!8337252))

(declare-fun m!8337254 () Bool)

(assert (=> bm!737496 m!8337254))

(declare-fun m!8337256 () Bool)

(assert (=> b!7954139 m!8337256))

(assert (=> d!2376636 d!2376718))

(declare-fun d!2376720 () Bool)

(assert (=> d!2376720 (= lt!2701251 lt!2701371)))

(declare-fun lt!2701536 () Unit!169904)

(declare-fun choose!59955 (List!74708 List!74708 List!74708 List!74708 List!74708) Unit!169904)

(assert (=> d!2376720 (= lt!2701536 (choose!59955 testedP!447 lt!2701251 testedP!447 lt!2701371 input!7927))))

(assert (=> d!2376720 (isPrefix!6579 testedP!447 input!7927)))

(assert (=> d!2376720 (= (lemmaSamePrefixThenSameSuffix!2983 testedP!447 lt!2701251 testedP!447 lt!2701371 input!7927) lt!2701536)))

(declare-fun bs!1969612 () Bool)

(assert (= bs!1969612 d!2376720))

(declare-fun m!8337258 () Bool)

(assert (=> bs!1969612 m!8337258))

(assert (=> bs!1969612 m!8336842))

(assert (=> d!2376636 d!2376720))

(declare-fun d!2376722 () Bool)

(declare-fun lostCauseFct!567 (Regex!21479) Bool)

(assert (=> d!2376722 (= (lostCause!1967 r!24602) (lostCauseFct!567 r!24602))))

(declare-fun bs!1969613 () Bool)

(assert (= bs!1969613 d!2376722))

(declare-fun m!8337260 () Bool)

(assert (=> bs!1969613 m!8337260))

(assert (=> d!2376636 d!2376722))

(declare-fun b!7954144 () Bool)

(declare-fun e!4691824 () Bool)

(declare-fun lt!2701537 () List!74708)

(assert (=> b!7954144 (= e!4691824 (or (not (= lt!2701251 Nil!74584)) (= lt!2701537 testedP!447)))))

(declare-fun b!7954142 () Bool)

(declare-fun e!4691823 () List!74708)

(assert (=> b!7954142 (= e!4691823 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) lt!2701251)))))

(declare-fun b!7954141 () Bool)

(assert (=> b!7954141 (= e!4691823 lt!2701251)))

(declare-fun b!7954143 () Bool)

(declare-fun res!3153800 () Bool)

(assert (=> b!7954143 (=> (not res!3153800) (not e!4691824))))

(assert (=> b!7954143 (= res!3153800 (= (size!43415 lt!2701537) (+ (size!43415 testedP!447) (size!43415 lt!2701251))))))

(declare-fun d!2376724 () Bool)

(assert (=> d!2376724 e!4691824))

(declare-fun res!3153799 () Bool)

(assert (=> d!2376724 (=> (not res!3153799) (not e!4691824))))

(assert (=> d!2376724 (= res!3153799 (= (content!15836 lt!2701537) ((_ map or) (content!15836 testedP!447) (content!15836 lt!2701251))))))

(assert (=> d!2376724 (= lt!2701537 e!4691823)))

(declare-fun c!1460988 () Bool)

(assert (=> d!2376724 (= c!1460988 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376724 (= (++!18349 testedP!447 lt!2701251) lt!2701537)))

(assert (= (and d!2376724 c!1460988) b!7954141))

(assert (= (and d!2376724 (not c!1460988)) b!7954142))

(assert (= (and d!2376724 res!3153799) b!7954143))

(assert (= (and b!7954143 res!3153800) b!7954144))

(declare-fun m!8337262 () Bool)

(assert (=> b!7954142 m!8337262))

(declare-fun m!8337264 () Bool)

(assert (=> b!7954143 m!8337264))

(assert (=> b!7954143 m!8336828))

(declare-fun m!8337266 () Bool)

(assert (=> b!7954143 m!8337266))

(declare-fun m!8337268 () Bool)

(assert (=> d!2376724 m!8337268))

(assert (=> d!2376724 m!8337030))

(declare-fun m!8337270 () Bool)

(assert (=> d!2376724 m!8337270))

(assert (=> d!2376636 d!2376724))

(declare-fun d!2376726 () Bool)

(declare-fun e!4691827 () Bool)

(assert (=> d!2376726 e!4691827))

(declare-fun res!3153802 () Bool)

(assert (=> d!2376726 (=> res!3153802 e!4691827)))

(declare-fun lt!2701538 () Bool)

(assert (=> d!2376726 (= res!3153802 (not lt!2701538))))

(declare-fun e!4691825 () Bool)

(assert (=> d!2376726 (= lt!2701538 e!4691825)))

(declare-fun res!3153801 () Bool)

(assert (=> d!2376726 (=> res!3153801 e!4691825)))

(assert (=> d!2376726 (= res!3153801 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376726 (= (isPrefix!6579 testedP!447 (++!18349 testedP!447 lt!2701251)) lt!2701538)))

(declare-fun b!7954145 () Bool)

(declare-fun e!4691826 () Bool)

(assert (=> b!7954145 (= e!4691825 e!4691826)))

(declare-fun res!3153803 () Bool)

(assert (=> b!7954145 (=> (not res!3153803) (not e!4691826))))

(assert (=> b!7954145 (= res!3153803 (not ((_ is Nil!74584) (++!18349 testedP!447 lt!2701251))))))

(declare-fun b!7954148 () Bool)

(assert (=> b!7954148 (= e!4691827 (>= (size!43415 (++!18349 testedP!447 lt!2701251)) (size!43415 testedP!447)))))

(declare-fun b!7954146 () Bool)

(declare-fun res!3153804 () Bool)

(assert (=> b!7954146 (=> (not res!3153804) (not e!4691826))))

(assert (=> b!7954146 (= res!3153804 (= (head!16231 testedP!447) (head!16231 (++!18349 testedP!447 lt!2701251))))))

(declare-fun b!7954147 () Bool)

(assert (=> b!7954147 (= e!4691826 (isPrefix!6579 (tail!15768 testedP!447) (tail!15768 (++!18349 testedP!447 lt!2701251))))))

(assert (= (and d!2376726 (not res!3153801)) b!7954145))

(assert (= (and b!7954145 res!3153803) b!7954146))

(assert (= (and b!7954146 res!3153804) b!7954147))

(assert (= (and d!2376726 (not res!3153802)) b!7954148))

(assert (=> b!7954148 m!8336994))

(declare-fun m!8337272 () Bool)

(assert (=> b!7954148 m!8337272))

(assert (=> b!7954148 m!8336828))

(assert (=> b!7954146 m!8336890))

(assert (=> b!7954146 m!8336994))

(declare-fun m!8337274 () Bool)

(assert (=> b!7954146 m!8337274))

(assert (=> b!7954147 m!8336892))

(assert (=> b!7954147 m!8336994))

(declare-fun m!8337276 () Bool)

(assert (=> b!7954147 m!8337276))

(assert (=> b!7954147 m!8336892))

(assert (=> b!7954147 m!8337276))

(declare-fun m!8337278 () Bool)

(assert (=> b!7954147 m!8337278))

(assert (=> d!2376636 d!2376726))

(declare-fun d!2376728 () Bool)

(assert (=> d!2376728 (isPrefix!6579 testedP!447 (++!18349 testedP!447 lt!2701251))))

(declare-fun lt!2701541 () Unit!169904)

(declare-fun choose!59956 (List!74708 List!74708) Unit!169904)

(assert (=> d!2376728 (= lt!2701541 (choose!59956 testedP!447 lt!2701251))))

(assert (=> d!2376728 (= (lemmaConcatTwoListThenFirstIsPrefix!3845 testedP!447 lt!2701251) lt!2701541)))

(declare-fun bs!1969614 () Bool)

(assert (= bs!1969614 d!2376728))

(assert (=> bs!1969614 m!8336994))

(assert (=> bs!1969614 m!8336994))

(assert (=> bs!1969614 m!8337002))

(declare-fun m!8337280 () Bool)

(assert (=> bs!1969614 m!8337280))

(assert (=> d!2376636 d!2376728))

(assert (=> d!2376636 d!2376652))

(declare-fun d!2376730 () Bool)

(assert (=> d!2376730 (= (head!16231 input!7927) (h!81032 input!7927))))

(assert (=> b!7953648 d!2376730))

(assert (=> bm!737434 d!2376610))

(declare-fun d!2376732 () Bool)

(declare-fun lt!2701542 () Int)

(assert (=> d!2376732 (>= lt!2701542 0)))

(declare-fun e!4691828 () Int)

(assert (=> d!2376732 (= lt!2701542 e!4691828)))

(declare-fun c!1460989 () Bool)

(assert (=> d!2376732 (= c!1460989 ((_ is Nil!74584) lt!2701440))))

(assert (=> d!2376732 (= (size!43415 lt!2701440) lt!2701542)))

(declare-fun b!7954149 () Bool)

(assert (=> b!7954149 (= e!4691828 0)))

(declare-fun b!7954150 () Bool)

(assert (=> b!7954150 (= e!4691828 (+ 1 (size!43415 (t!390451 lt!2701440))))))

(assert (= (and d!2376732 c!1460989) b!7954149))

(assert (= (and d!2376732 (not c!1460989)) b!7954150))

(declare-fun m!8337282 () Bool)

(assert (=> b!7954150 m!8337282))

(assert (=> b!7953867 d!2376732))

(assert (=> b!7953867 d!2376654))

(declare-fun d!2376734 () Bool)

(declare-fun lt!2701543 () Int)

(assert (=> d!2376734 (>= lt!2701543 0)))

(declare-fun e!4691829 () Int)

(assert (=> d!2376734 (= lt!2701543 e!4691829)))

(declare-fun c!1460990 () Bool)

(assert (=> d!2376734 (= c!1460990 ((_ is Nil!74584) (Cons!74584 lt!2701250 Nil!74584)))))

(assert (=> d!2376734 (= (size!43415 (Cons!74584 lt!2701250 Nil!74584)) lt!2701543)))

(declare-fun b!7954151 () Bool)

(assert (=> b!7954151 (= e!4691829 0)))

(declare-fun b!7954152 () Bool)

(assert (=> b!7954152 (= e!4691829 (+ 1 (size!43415 (t!390451 (Cons!74584 lt!2701250 Nil!74584)))))))

(assert (= (and d!2376734 c!1460990) b!7954151))

(assert (= (and d!2376734 (not c!1460990)) b!7954152))

(declare-fun m!8337284 () Bool)

(assert (=> b!7954152 m!8337284))

(assert (=> b!7953867 d!2376734))

(declare-fun d!2376736 () Bool)

(declare-fun lt!2701544 () Int)

(assert (=> d!2376736 (>= lt!2701544 0)))

(declare-fun e!4691830 () Int)

(assert (=> d!2376736 (= lt!2701544 e!4691830)))

(declare-fun c!1460991 () Bool)

(assert (=> d!2376736 (= c!1460991 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2376736 (= (size!43415 (t!390451 testedP!447)) lt!2701544)))

(declare-fun b!7954153 () Bool)

(assert (=> b!7954153 (= e!4691830 0)))

(declare-fun b!7954154 () Bool)

(assert (=> b!7954154 (= e!4691830 (+ 1 (size!43415 (t!390451 (t!390451 testedP!447)))))))

(assert (= (and d!2376736 c!1460991) b!7954153))

(assert (= (and d!2376736 (not c!1460991)) b!7954154))

(declare-fun m!8337286 () Bool)

(assert (=> b!7954154 m!8337286))

(assert (=> b!7953836 d!2376736))

(assert (=> b!7953650 d!2376634))

(assert (=> bm!737435 d!2376668))

(declare-fun b!7954155 () Bool)

(declare-fun c!1460994 () Bool)

(assert (=> b!7954155 (= c!1460994 (nullable!9580 (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun e!4691835 () Regex!21479)

(declare-fun e!4691831 () Regex!21479)

(assert (=> b!7954155 (= e!4691835 e!4691831)))

(declare-fun d!2376738 () Bool)

(declare-fun lt!2701545 () Regex!21479)

(assert (=> d!2376738 (validRegex!11783 lt!2701545)))

(declare-fun e!4691833 () Regex!21479)

(assert (=> d!2376738 (= lt!2701545 e!4691833)))

(declare-fun c!1460993 () Bool)

(assert (=> d!2376738 (= c!1460993 (or ((_ is EmptyExpr!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) ((_ is EmptyLang!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2376738 (validRegex!11783 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))

(assert (=> d!2376738 (= (derivativeStep!6507 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)) lt!2701250) lt!2701545)))

(declare-fun c!1460996 () Bool)

(declare-fun c!1460992 () Bool)

(declare-fun call!737504 () Regex!21479)

(declare-fun bm!737497 () Bool)

(assert (=> bm!737497 (= call!737504 (derivativeStep!6507 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) lt!2701250))))

(declare-fun e!4691834 () Regex!21479)

(declare-fun b!7954156 () Bool)

(assert (=> b!7954156 (= e!4691834 (ite (= lt!2701250 (c!1460858 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7954157 () Bool)

(declare-fun e!4691832 () Regex!21479)

(declare-fun call!737503 () Regex!21479)

(assert (=> b!7954157 (= e!4691832 (Union!21479 call!737503 call!737504))))

(declare-fun call!737505 () Regex!21479)

(declare-fun b!7954158 () Bool)

(assert (=> b!7954158 (= e!4691831 (Union!21479 (Concat!30478 call!737505 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) EmptyLang!21479))))

(declare-fun b!7954159 () Bool)

(assert (=> b!7954159 (= e!4691831 (Union!21479 (Concat!30478 call!737503 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) call!737505))))

(declare-fun bm!737498 () Bool)

(assert (=> bm!737498 (= call!737503 (derivativeStep!6507 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) lt!2701250))))

(declare-fun b!7954160 () Bool)

(assert (=> b!7954160 (= e!4691833 e!4691834)))

(declare-fun c!1460995 () Bool)

(assert (=> b!7954160 (= c!1460995 ((_ is ElementMatch!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7954161 () Bool)

(assert (=> b!7954161 (= e!4691833 EmptyLang!21479)))

(declare-fun b!7954162 () Bool)

(declare-fun call!737502 () Regex!21479)

(assert (=> b!7954162 (= e!4691835 (Concat!30478 call!737502 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun bm!737499 () Bool)

(assert (=> bm!737499 (= call!737505 call!737502)))

(declare-fun bm!737500 () Bool)

(assert (=> bm!737500 (= call!737502 call!737504)))

(declare-fun b!7954163 () Bool)

(assert (=> b!7954163 (= e!4691832 e!4691835)))

(assert (=> b!7954163 (= c!1460992 ((_ is Star!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7954164 () Bool)

(assert (=> b!7954164 (= c!1460996 ((_ is Union!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(assert (=> b!7954164 (= e!4691834 e!4691832)))

(assert (= (and d!2376738 c!1460993) b!7954161))

(assert (= (and d!2376738 (not c!1460993)) b!7954160))

(assert (= (and b!7954160 c!1460995) b!7954156))

(assert (= (and b!7954160 (not c!1460995)) b!7954164))

(assert (= (and b!7954164 c!1460996) b!7954157))

(assert (= (and b!7954164 (not c!1460996)) b!7954163))

(assert (= (and b!7954163 c!1460992) b!7954162))

(assert (= (and b!7954163 (not c!1460992)) b!7954155))

(assert (= (and b!7954155 c!1460994) b!7954159))

(assert (= (and b!7954155 (not c!1460994)) b!7954158))

(assert (= (or b!7954159 b!7954158) bm!737499))

(assert (= (or b!7954162 bm!737499) bm!737500))

(assert (= (or b!7954157 bm!737500) bm!737497))

(assert (= (or b!7954157 b!7954159) bm!737498))

(declare-fun m!8337288 () Bool)

(assert (=> b!7954155 m!8337288))

(declare-fun m!8337290 () Bool)

(assert (=> d!2376738 m!8337290))

(declare-fun m!8337292 () Bool)

(assert (=> d!2376738 m!8337292))

(declare-fun m!8337294 () Bool)

(assert (=> bm!737497 m!8337294))

(declare-fun m!8337296 () Bool)

(assert (=> bm!737498 m!8337296))

(assert (=> bm!737402 d!2376738))

(declare-fun b!7954165 () Bool)

(declare-fun e!4691839 () Bool)

(declare-fun call!737507 () Bool)

(assert (=> b!7954165 (= e!4691839 call!737507)))

(declare-fun b!7954166 () Bool)

(declare-fun res!3153808 () Bool)

(declare-fun e!4691842 () Bool)

(assert (=> b!7954166 (=> res!3153808 e!4691842)))

(assert (=> b!7954166 (= res!3153808 (not ((_ is Concat!30478) (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))

(declare-fun e!4691840 () Bool)

(assert (=> b!7954166 (= e!4691840 e!4691842)))

(declare-fun b!7954167 () Bool)

(declare-fun e!4691841 () Bool)

(declare-fun call!737508 () Bool)

(assert (=> b!7954167 (= e!4691841 call!737508)))

(declare-fun bm!737501 () Bool)

(declare-fun call!737506 () Bool)

(assert (=> bm!737501 (= call!737506 call!737507)))

(declare-fun b!7954168 () Bool)

(declare-fun e!4691836 () Bool)

(assert (=> b!7954168 (= e!4691836 e!4691840)))

(declare-fun c!1460997 () Bool)

(assert (=> b!7954168 (= c!1460997 ((_ is Union!21479) (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))

(declare-fun bm!737502 () Bool)

(assert (=> bm!737502 (= call!737508 (validRegex!11783 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))

(declare-fun b!7954169 () Bool)

(declare-fun e!4691837 () Bool)

(assert (=> b!7954169 (= e!4691837 e!4691836)))

(declare-fun c!1460998 () Bool)

(assert (=> b!7954169 (= c!1460998 ((_ is Star!21479) (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))

(declare-fun b!7954170 () Bool)

(declare-fun res!3153806 () Bool)

(assert (=> b!7954170 (=> (not res!3153806) (not e!4691841))))

(assert (=> b!7954170 (= res!3153806 call!737506)))

(assert (=> b!7954170 (= e!4691840 e!4691841)))

(declare-fun d!2376740 () Bool)

(declare-fun res!3153807 () Bool)

(assert (=> d!2376740 (=> res!3153807 e!4691837)))

(assert (=> d!2376740 (= res!3153807 ((_ is ElementMatch!21479) (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))

(assert (=> d!2376740 (= (validRegex!11783 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) e!4691837)))

(declare-fun bm!737503 () Bool)

(assert (=> bm!737503 (= call!737507 (validRegex!11783 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))

(declare-fun b!7954171 () Bool)

(declare-fun e!4691838 () Bool)

(assert (=> b!7954171 (= e!4691842 e!4691838)))

(declare-fun res!3153805 () Bool)

(assert (=> b!7954171 (=> (not res!3153805) (not e!4691838))))

(assert (=> b!7954171 (= res!3153805 call!737506)))

(declare-fun b!7954172 () Bool)

(assert (=> b!7954172 (= e!4691836 e!4691839)))

(declare-fun res!3153809 () Bool)

(assert (=> b!7954172 (= res!3153809 (not (nullable!9580 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))

(assert (=> b!7954172 (=> (not res!3153809) (not e!4691839))))

(declare-fun b!7954173 () Bool)

(assert (=> b!7954173 (= e!4691838 call!737508)))

(assert (= (and d!2376740 (not res!3153807)) b!7954169))

(assert (= (and b!7954169 c!1460998) b!7954172))

(assert (= (and b!7954169 (not c!1460998)) b!7954168))

(assert (= (and b!7954172 res!3153809) b!7954165))

(assert (= (and b!7954168 c!1460997) b!7954170))

(assert (= (and b!7954168 (not c!1460997)) b!7954166))

(assert (= (and b!7954170 res!3153806) b!7954167))

(assert (= (and b!7954166 (not res!3153808)) b!7954171))

(assert (= (and b!7954171 res!3153805) b!7954173))

(assert (= (or b!7954167 b!7954173) bm!737502))

(assert (= (or b!7954170 b!7954171) bm!737501))

(assert (= (or b!7954165 bm!737501) bm!737503))

(declare-fun m!8337298 () Bool)

(assert (=> bm!737502 m!8337298))

(declare-fun m!8337300 () Bool)

(assert (=> bm!737503 m!8337300))

(declare-fun m!8337302 () Bool)

(assert (=> b!7954172 m!8337302))

(assert (=> bm!737447 d!2376740))

(declare-fun b!7954174 () Bool)

(declare-fun e!4691846 () Bool)

(declare-fun call!737510 () Bool)

(assert (=> b!7954174 (= e!4691846 call!737510)))

(declare-fun b!7954175 () Bool)

(declare-fun res!3153813 () Bool)

(declare-fun e!4691849 () Bool)

(assert (=> b!7954175 (=> res!3153813 e!4691849)))

(assert (=> b!7954175 (= res!3153813 (not ((_ is Concat!30478) (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun e!4691847 () Bool)

(assert (=> b!7954175 (= e!4691847 e!4691849)))

(declare-fun b!7954176 () Bool)

(declare-fun e!4691848 () Bool)

(declare-fun call!737511 () Bool)

(assert (=> b!7954176 (= e!4691848 call!737511)))

(declare-fun bm!737504 () Bool)

(declare-fun call!737509 () Bool)

(assert (=> bm!737504 (= call!737509 call!737510)))

(declare-fun b!7954177 () Bool)

(declare-fun e!4691843 () Bool)

(assert (=> b!7954177 (= e!4691843 e!4691847)))

(declare-fun c!1460999 () Bool)

(assert (=> b!7954177 (= c!1460999 ((_ is Union!21479) (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))

(declare-fun bm!737505 () Bool)

(assert (=> bm!737505 (= call!737511 (validRegex!11783 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(declare-fun b!7954178 () Bool)

(declare-fun e!4691844 () Bool)

(assert (=> b!7954178 (= e!4691844 e!4691843)))

(declare-fun c!1461000 () Bool)

(assert (=> b!7954178 (= c!1461000 ((_ is Star!21479) (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))

(declare-fun b!7954179 () Bool)

(declare-fun res!3153811 () Bool)

(assert (=> b!7954179 (=> (not res!3153811) (not e!4691848))))

(assert (=> b!7954179 (= res!3153811 call!737509)))

(assert (=> b!7954179 (= e!4691847 e!4691848)))

(declare-fun d!2376742 () Bool)

(declare-fun res!3153812 () Bool)

(assert (=> d!2376742 (=> res!3153812 e!4691844)))

(assert (=> d!2376742 (= res!3153812 ((_ is ElementMatch!21479) (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))

(assert (=> d!2376742 (= (validRegex!11783 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) e!4691844)))

(declare-fun bm!737506 () Bool)

(assert (=> bm!737506 (= call!737510 (validRegex!11783 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun b!7954180 () Bool)

(declare-fun e!4691845 () Bool)

(assert (=> b!7954180 (= e!4691849 e!4691845)))

(declare-fun res!3153810 () Bool)

(assert (=> b!7954180 (=> (not res!3153810) (not e!4691845))))

(assert (=> b!7954180 (= res!3153810 call!737509)))

(declare-fun b!7954181 () Bool)

(assert (=> b!7954181 (= e!4691843 e!4691846)))

(declare-fun res!3153814 () Bool)

(assert (=> b!7954181 (= res!3153814 (not (nullable!9580 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(assert (=> b!7954181 (=> (not res!3153814) (not e!4691846))))

(declare-fun b!7954182 () Bool)

(assert (=> b!7954182 (= e!4691845 call!737511)))

(assert (= (and d!2376742 (not res!3153812)) b!7954178))

(assert (= (and b!7954178 c!1461000) b!7954181))

(assert (= (and b!7954178 (not c!1461000)) b!7954177))

(assert (= (and b!7954181 res!3153814) b!7954174))

(assert (= (and b!7954177 c!1460999) b!7954179))

(assert (= (and b!7954177 (not c!1460999)) b!7954175))

(assert (= (and b!7954179 res!3153811) b!7954176))

(assert (= (and b!7954175 (not res!3153813)) b!7954180))

(assert (= (and b!7954180 res!3153810) b!7954182))

(assert (= (or b!7954176 b!7954182) bm!737505))

(assert (= (or b!7954179 b!7954180) bm!737504))

(assert (= (or b!7954174 bm!737504) bm!737506))

(declare-fun m!8337304 () Bool)

(assert (=> bm!737505 m!8337304))

(declare-fun m!8337306 () Bool)

(assert (=> bm!737506 m!8337306))

(declare-fun m!8337308 () Bool)

(assert (=> b!7954181 m!8337308))

(assert (=> bm!737391 d!2376742))

(declare-fun lt!2701546 () List!74708)

(declare-fun b!7954186 () Bool)

(declare-fun e!4691851 () Bool)

(assert (=> b!7954186 (= e!4691851 (or (not (= (tail!15768 lt!2701251) Nil!74584)) (= lt!2701546 (t!390451 lt!2701255))))))

(declare-fun b!7954184 () Bool)

(declare-fun e!4691850 () List!74708)

(assert (=> b!7954184 (= e!4691850 (Cons!74584 (h!81032 (t!390451 lt!2701255)) (++!18349 (t!390451 (t!390451 lt!2701255)) (tail!15768 lt!2701251))))))

(declare-fun b!7954183 () Bool)

(assert (=> b!7954183 (= e!4691850 (tail!15768 lt!2701251))))

(declare-fun b!7954185 () Bool)

(declare-fun res!3153816 () Bool)

(assert (=> b!7954185 (=> (not res!3153816) (not e!4691851))))

(assert (=> b!7954185 (= res!3153816 (= (size!43415 lt!2701546) (+ (size!43415 (t!390451 lt!2701255)) (size!43415 (tail!15768 lt!2701251)))))))

(declare-fun d!2376744 () Bool)

(assert (=> d!2376744 e!4691851))

(declare-fun res!3153815 () Bool)

(assert (=> d!2376744 (=> (not res!3153815) (not e!4691851))))

(assert (=> d!2376744 (= res!3153815 (= (content!15836 lt!2701546) ((_ map or) (content!15836 (t!390451 lt!2701255)) (content!15836 (tail!15768 lt!2701251)))))))

(assert (=> d!2376744 (= lt!2701546 e!4691850)))

(declare-fun c!1461001 () Bool)

(assert (=> d!2376744 (= c!1461001 ((_ is Nil!74584) (t!390451 lt!2701255)))))

(assert (=> d!2376744 (= (++!18349 (t!390451 lt!2701255) (tail!15768 lt!2701251)) lt!2701546)))

(assert (= (and d!2376744 c!1461001) b!7954183))

(assert (= (and d!2376744 (not c!1461001)) b!7954184))

(assert (= (and d!2376744 res!3153815) b!7954185))

(assert (= (and b!7954185 res!3153816) b!7954186))

(assert (=> b!7954184 m!8336862))

(declare-fun m!8337310 () Bool)

(assert (=> b!7954184 m!8337310))

(declare-fun m!8337312 () Bool)

(assert (=> b!7954185 m!8337312))

(assert (=> b!7954185 m!8336870))

(assert (=> b!7954185 m!8336862))

(assert (=> b!7954185 m!8337038))

(declare-fun m!8337314 () Bool)

(assert (=> d!2376744 m!8337314))

(declare-fun m!8337316 () Bool)

(assert (=> d!2376744 m!8337316))

(assert (=> d!2376744 m!8336862))

(assert (=> d!2376744 m!8337044))

(assert (=> b!7953878 d!2376744))

(declare-fun b!7954187 () Bool)

(declare-fun e!4691855 () Bool)

(declare-fun call!737513 () Bool)

(assert (=> b!7954187 (= e!4691855 call!737513)))

(declare-fun b!7954188 () Bool)

(declare-fun res!3153820 () Bool)

(declare-fun e!4691858 () Bool)

(assert (=> b!7954188 (=> res!3153820 e!4691858)))

(assert (=> b!7954188 (= res!3153820 (not ((_ is Concat!30478) (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))

(declare-fun e!4691856 () Bool)

(assert (=> b!7954188 (= e!4691856 e!4691858)))

(declare-fun b!7954189 () Bool)

(declare-fun e!4691857 () Bool)

(declare-fun call!737514 () Bool)

(assert (=> b!7954189 (= e!4691857 call!737514)))

(declare-fun bm!737507 () Bool)

(declare-fun call!737512 () Bool)

(assert (=> bm!737507 (= call!737512 call!737513)))

(declare-fun b!7954190 () Bool)

(declare-fun e!4691852 () Bool)

(assert (=> b!7954190 (= e!4691852 e!4691856)))

(declare-fun c!1461002 () Bool)

(assert (=> b!7954190 (= c!1461002 ((_ is Union!21479) (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(declare-fun bm!737508 () Bool)

(assert (=> bm!737508 (= call!737514 (validRegex!11783 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))

(declare-fun b!7954191 () Bool)

(declare-fun e!4691853 () Bool)

(assert (=> b!7954191 (= e!4691853 e!4691852)))

(declare-fun c!1461003 () Bool)

(assert (=> b!7954191 (= c!1461003 ((_ is Star!21479) (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(declare-fun b!7954192 () Bool)

(declare-fun res!3153818 () Bool)

(assert (=> b!7954192 (=> (not res!3153818) (not e!4691857))))

(assert (=> b!7954192 (= res!3153818 call!737512)))

(assert (=> b!7954192 (= e!4691856 e!4691857)))

(declare-fun d!2376746 () Bool)

(declare-fun res!3153819 () Bool)

(assert (=> d!2376746 (=> res!3153819 e!4691853)))

(assert (=> d!2376746 (= res!3153819 ((_ is ElementMatch!21479) (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(assert (=> d!2376746 (= (validRegex!11783 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) e!4691853)))

(declare-fun bm!737509 () Bool)

(assert (=> bm!737509 (= call!737513 (validRegex!11783 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))

(declare-fun b!7954193 () Bool)

(declare-fun e!4691854 () Bool)

(assert (=> b!7954193 (= e!4691858 e!4691854)))

(declare-fun res!3153817 () Bool)

(assert (=> b!7954193 (=> (not res!3153817) (not e!4691854))))

(assert (=> b!7954193 (= res!3153817 call!737512)))

(declare-fun b!7954194 () Bool)

(assert (=> b!7954194 (= e!4691852 e!4691855)))

(declare-fun res!3153821 () Bool)

(assert (=> b!7954194 (= res!3153821 (not (nullable!9580 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))

(assert (=> b!7954194 (=> (not res!3153821) (not e!4691855))))

(declare-fun b!7954195 () Bool)

(assert (=> b!7954195 (= e!4691854 call!737514)))

(assert (= (and d!2376746 (not res!3153819)) b!7954191))

(assert (= (and b!7954191 c!1461003) b!7954194))

(assert (= (and b!7954191 (not c!1461003)) b!7954190))

(assert (= (and b!7954194 res!3153821) b!7954187))

(assert (= (and b!7954190 c!1461002) b!7954192))

(assert (= (and b!7954190 (not c!1461002)) b!7954188))

(assert (= (and b!7954192 res!3153818) b!7954189))

(assert (= (and b!7954188 (not res!3153820)) b!7954193))

(assert (= (and b!7954193 res!3153817) b!7954195))

(assert (= (or b!7954189 b!7954195) bm!737508))

(assert (= (or b!7954192 b!7954193) bm!737507))

(assert (= (or b!7954187 bm!737507) bm!737509))

(declare-fun m!8337318 () Bool)

(assert (=> bm!737508 m!8337318))

(declare-fun m!8337320 () Bool)

(assert (=> bm!737509 m!8337320))

(declare-fun m!8337322 () Bool)

(assert (=> b!7954194 m!8337322))

(assert (=> bm!737448 d!2376746))

(declare-fun d!2376748 () Bool)

(declare-fun lt!2701547 () Int)

(assert (=> d!2376748 (>= lt!2701547 0)))

(declare-fun e!4691859 () Int)

(assert (=> d!2376748 (= lt!2701547 e!4691859)))

(declare-fun c!1461004 () Bool)

(assert (=> d!2376748 (= c!1461004 ((_ is Nil!74584) (t!390451 lt!2701255)))))

(assert (=> d!2376748 (= (size!43415 (t!390451 lt!2701255)) lt!2701547)))

(declare-fun b!7954196 () Bool)

(assert (=> b!7954196 (= e!4691859 0)))

(declare-fun b!7954197 () Bool)

(assert (=> b!7954197 (= e!4691859 (+ 1 (size!43415 (t!390451 (t!390451 lt!2701255)))))))

(assert (= (and d!2376748 c!1461004) b!7954196))

(assert (= (and d!2376748 (not c!1461004)) b!7954197))

(declare-fun m!8337324 () Bool)

(assert (=> b!7954197 m!8337324))

(assert (=> b!7953632 d!2376748))

(declare-fun d!2376750 () Bool)

(assert (=> d!2376750 (= (head!16231 testedP!447) (h!81032 testedP!447))))

(assert (=> b!7953652 d!2376750))

(assert (=> b!7953652 d!2376730))

(declare-fun b!7954198 () Bool)

(declare-fun e!4691863 () Bool)

(declare-fun call!737516 () Bool)

(assert (=> b!7954198 (= e!4691863 call!737516)))

(declare-fun b!7954199 () Bool)

(declare-fun res!3153825 () Bool)

(declare-fun e!4691866 () Bool)

(assert (=> b!7954199 (=> res!3153825 e!4691866)))

(assert (=> b!7954199 (= res!3153825 (not ((_ is Concat!30478) (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(declare-fun e!4691864 () Bool)

(assert (=> b!7954199 (= e!4691864 e!4691866)))

(declare-fun b!7954200 () Bool)

(declare-fun e!4691865 () Bool)

(declare-fun call!737517 () Bool)

(assert (=> b!7954200 (= e!4691865 call!737517)))

(declare-fun bm!737510 () Bool)

(declare-fun call!737515 () Bool)

(assert (=> bm!737510 (= call!737515 call!737516)))

(declare-fun b!7954201 () Bool)

(declare-fun e!4691860 () Bool)

(assert (=> b!7954201 (= e!4691860 e!4691864)))

(declare-fun c!1461005 () Bool)

(assert (=> b!7954201 (= c!1461005 ((_ is Union!21479) (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun bm!737511 () Bool)

(assert (=> bm!737511 (= call!737517 (validRegex!11783 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun b!7954202 () Bool)

(declare-fun e!4691861 () Bool)

(assert (=> b!7954202 (= e!4691861 e!4691860)))

(declare-fun c!1461006 () Bool)

(assert (=> b!7954202 (= c!1461006 ((_ is Star!21479) (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun b!7954203 () Bool)

(declare-fun res!3153823 () Bool)

(assert (=> b!7954203 (=> (not res!3153823) (not e!4691865))))

(assert (=> b!7954203 (= res!3153823 call!737515)))

(assert (=> b!7954203 (= e!4691864 e!4691865)))

(declare-fun d!2376752 () Bool)

(declare-fun res!3153824 () Bool)

(assert (=> d!2376752 (=> res!3153824 e!4691861)))

(assert (=> d!2376752 (= res!3153824 ((_ is ElementMatch!21479) (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(assert (=> d!2376752 (= (validRegex!11783 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) e!4691861)))

(declare-fun bm!737512 () Bool)

(assert (=> bm!737512 (= call!737516 (validRegex!11783 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun b!7954204 () Bool)

(declare-fun e!4691862 () Bool)

(assert (=> b!7954204 (= e!4691866 e!4691862)))

(declare-fun res!3153822 () Bool)

(assert (=> b!7954204 (=> (not res!3153822) (not e!4691862))))

(assert (=> b!7954204 (= res!3153822 call!737515)))

(declare-fun b!7954205 () Bool)

(assert (=> b!7954205 (= e!4691860 e!4691863)))

(declare-fun res!3153826 () Bool)

(assert (=> b!7954205 (= res!3153826 (not (nullable!9580 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(assert (=> b!7954205 (=> (not res!3153826) (not e!4691863))))

(declare-fun b!7954206 () Bool)

(assert (=> b!7954206 (= e!4691862 call!737517)))

(assert (= (and d!2376752 (not res!3153824)) b!7954202))

(assert (= (and b!7954202 c!1461006) b!7954205))

(assert (= (and b!7954202 (not c!1461006)) b!7954201))

(assert (= (and b!7954205 res!3153826) b!7954198))

(assert (= (and b!7954201 c!1461005) b!7954203))

(assert (= (and b!7954201 (not c!1461005)) b!7954199))

(assert (= (and b!7954203 res!3153823) b!7954200))

(assert (= (and b!7954199 (not res!3153825)) b!7954204))

(assert (= (and b!7954204 res!3153822) b!7954206))

(assert (= (or b!7954200 b!7954206) bm!737511))

(assert (= (or b!7954203 b!7954204) bm!737510))

(assert (= (or b!7954198 bm!737510) bm!737512))

(declare-fun m!8337326 () Bool)

(assert (=> bm!737511 m!8337326))

(declare-fun m!8337328 () Bool)

(assert (=> bm!737512 m!8337328))

(declare-fun m!8337330 () Bool)

(assert (=> b!7954205 m!8337330))

(assert (=> bm!737392 d!2376752))

(assert (=> bm!737436 d!2376608))

(declare-fun b!7954207 () Bool)

(declare-fun e!4691870 () Bool)

(declare-fun call!737519 () Bool)

(assert (=> b!7954207 (= e!4691870 call!737519)))

(declare-fun b!7954208 () Bool)

(declare-fun res!3153830 () Bool)

(declare-fun e!4691873 () Bool)

(assert (=> b!7954208 (=> res!3153830 e!4691873)))

(assert (=> b!7954208 (= res!3153830 (not ((_ is Concat!30478) lt!2701263)))))

(declare-fun e!4691871 () Bool)

(assert (=> b!7954208 (= e!4691871 e!4691873)))

(declare-fun b!7954209 () Bool)

(declare-fun e!4691872 () Bool)

(declare-fun call!737520 () Bool)

(assert (=> b!7954209 (= e!4691872 call!737520)))

(declare-fun bm!737513 () Bool)

(declare-fun call!737518 () Bool)

(assert (=> bm!737513 (= call!737518 call!737519)))

(declare-fun b!7954210 () Bool)

(declare-fun e!4691867 () Bool)

(assert (=> b!7954210 (= e!4691867 e!4691871)))

(declare-fun c!1461007 () Bool)

(assert (=> b!7954210 (= c!1461007 ((_ is Union!21479) lt!2701263))))

(declare-fun bm!737514 () Bool)

(assert (=> bm!737514 (= call!737520 (validRegex!11783 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))

(declare-fun b!7954211 () Bool)

(declare-fun e!4691868 () Bool)

(assert (=> b!7954211 (= e!4691868 e!4691867)))

(declare-fun c!1461008 () Bool)

(assert (=> b!7954211 (= c!1461008 ((_ is Star!21479) lt!2701263))))

(declare-fun b!7954212 () Bool)

(declare-fun res!3153828 () Bool)

(assert (=> b!7954212 (=> (not res!3153828) (not e!4691872))))

(assert (=> b!7954212 (= res!3153828 call!737518)))

(assert (=> b!7954212 (= e!4691871 e!4691872)))

(declare-fun d!2376754 () Bool)

(declare-fun res!3153829 () Bool)

(assert (=> d!2376754 (=> res!3153829 e!4691868)))

(assert (=> d!2376754 (= res!3153829 ((_ is ElementMatch!21479) lt!2701263))))

(assert (=> d!2376754 (= (validRegex!11783 lt!2701263) e!4691868)))

(declare-fun bm!737515 () Bool)

(assert (=> bm!737515 (= call!737519 (validRegex!11783 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))

(declare-fun b!7954213 () Bool)

(declare-fun e!4691869 () Bool)

(assert (=> b!7954213 (= e!4691873 e!4691869)))

(declare-fun res!3153827 () Bool)

(assert (=> b!7954213 (=> (not res!3153827) (not e!4691869))))

(assert (=> b!7954213 (= res!3153827 call!737518)))

(declare-fun b!7954214 () Bool)

(assert (=> b!7954214 (= e!4691867 e!4691870)))

(declare-fun res!3153831 () Bool)

(assert (=> b!7954214 (= res!3153831 (not (nullable!9580 (reg!21808 lt!2701263))))))

(assert (=> b!7954214 (=> (not res!3153831) (not e!4691870))))

(declare-fun b!7954215 () Bool)

(assert (=> b!7954215 (= e!4691869 call!737520)))

(assert (= (and d!2376754 (not res!3153829)) b!7954211))

(assert (= (and b!7954211 c!1461008) b!7954214))

(assert (= (and b!7954211 (not c!1461008)) b!7954210))

(assert (= (and b!7954214 res!3153831) b!7954207))

(assert (= (and b!7954210 c!1461007) b!7954212))

(assert (= (and b!7954210 (not c!1461007)) b!7954208))

(assert (= (and b!7954212 res!3153828) b!7954209))

(assert (= (and b!7954208 (not res!3153830)) b!7954213))

(assert (= (and b!7954213 res!3153827) b!7954215))

(assert (= (or b!7954209 b!7954215) bm!737514))

(assert (= (or b!7954212 b!7954213) bm!737513))

(assert (= (or b!7954207 bm!737513) bm!737515))

(declare-fun m!8337332 () Bool)

(assert (=> bm!737514 m!8337332))

(declare-fun m!8337334 () Bool)

(assert (=> bm!737515 m!8337334))

(declare-fun m!8337336 () Bool)

(assert (=> b!7954214 m!8337336))

(assert (=> d!2376606 d!2376754))

(assert (=> d!2376606 d!2376670))

(declare-fun d!2376756 () Bool)

(assert (=> d!2376756 (= (isEmpty!42883 (_1!38613 lt!2701370)) ((_ is Nil!74584) (_1!38613 lt!2701370)))))

(assert (=> b!7953823 d!2376756))

(declare-fun d!2376758 () Bool)

(declare-fun c!1461012 () Bool)

(assert (=> d!2376758 (= c!1461012 ((_ is Nil!74584) lt!2701440))))

(declare-fun e!4691878 () (InoxSet C!43296))

(assert (=> d!2376758 (= (content!15836 lt!2701440) e!4691878)))

(declare-fun b!7954224 () Bool)

(assert (=> b!7954224 (= e!4691878 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954225 () Bool)

(assert (=> b!7954225 (= e!4691878 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701440) true) (content!15836 (t!390451 lt!2701440))))))

(assert (= (and d!2376758 c!1461012) b!7954224))

(assert (= (and d!2376758 (not c!1461012)) b!7954225))

(declare-fun m!8337348 () Bool)

(assert (=> b!7954225 m!8337348))

(declare-fun m!8337350 () Bool)

(assert (=> b!7954225 m!8337350))

(assert (=> d!2376664 d!2376758))

(declare-fun d!2376764 () Bool)

(declare-fun c!1461013 () Bool)

(assert (=> d!2376764 (= c!1461013 ((_ is Nil!74584) testedP!447))))

(declare-fun e!4691879 () (InoxSet C!43296))

(assert (=> d!2376764 (= (content!15836 testedP!447) e!4691879)))

(declare-fun b!7954226 () Bool)

(assert (=> b!7954226 (= e!4691879 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954227 () Bool)

(assert (=> b!7954227 (= e!4691879 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 testedP!447) true) (content!15836 (t!390451 testedP!447))))))

(assert (= (and d!2376764 c!1461013) b!7954226))

(assert (= (and d!2376764 (not c!1461013)) b!7954227))

(declare-fun m!8337354 () Bool)

(assert (=> b!7954227 m!8337354))

(declare-fun m!8337356 () Bool)

(assert (=> b!7954227 m!8337356))

(assert (=> d!2376664 d!2376764))

(declare-fun d!2376770 () Bool)

(declare-fun c!1461018 () Bool)

(assert (=> d!2376770 (= c!1461018 ((_ is Nil!74584) (Cons!74584 lt!2701250 Nil!74584)))))

(declare-fun e!4691883 () (InoxSet C!43296))

(assert (=> d!2376770 (= (content!15836 (Cons!74584 lt!2701250 Nil!74584)) e!4691883)))

(declare-fun b!7954228 () Bool)

(assert (=> b!7954228 (= e!4691883 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954229 () Bool)

(assert (=> b!7954229 (= e!4691883 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (Cons!74584 lt!2701250 Nil!74584)) true) (content!15836 (t!390451 (Cons!74584 lt!2701250 Nil!74584)))))))

(assert (= (and d!2376770 c!1461018) b!7954228))

(assert (= (and d!2376770 (not c!1461018)) b!7954229))

(declare-fun m!8337358 () Bool)

(assert (=> b!7954229 m!8337358))

(declare-fun m!8337360 () Bool)

(assert (=> b!7954229 m!8337360))

(assert (=> d!2376664 d!2376770))

(declare-fun d!2376772 () Bool)

(assert (=> d!2376772 (= (head!16231 lt!2701255) (h!81032 lt!2701255))))

(assert (=> b!7953838 d!2376772))

(assert (=> b!7953838 d!2376730))

(assert (=> b!7953654 d!2376634))

(assert (=> b!7953654 d!2376654))

(declare-fun d!2376774 () Bool)

(assert (=> d!2376774 (= (nullable!9580 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))) (nullableFct!3778 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))

(declare-fun bs!1969616 () Bool)

(assert (= bs!1969616 d!2376774))

(declare-fun m!8337362 () Bool)

(assert (=> bs!1969616 m!8337362))

(assert (=> b!7953692 d!2376774))

(declare-fun d!2376776 () Bool)

(assert (=> d!2376776 (= (nullable!9580 (reg!21808 baseR!116)) (nullableFct!3778 (reg!21808 baseR!116)))))

(declare-fun bs!1969617 () Bool)

(assert (= bs!1969617 d!2376776))

(declare-fun m!8337364 () Bool)

(assert (=> bs!1969617 m!8337364))

(assert (=> b!7953888 d!2376776))

(declare-fun d!2376778 () Bool)

(declare-fun lt!2701550 () Int)

(assert (=> d!2376778 (>= lt!2701550 0)))

(declare-fun e!4691886 () Int)

(assert (=> d!2376778 (= lt!2701550 e!4691886)))

(declare-fun c!1461020 () Bool)

(assert (=> d!2376778 (= c!1461020 ((_ is Nil!74584) (_1!38613 lt!2701370)))))

(assert (=> d!2376778 (= (size!43415 (_1!38613 lt!2701370)) lt!2701550)))

(declare-fun b!7954240 () Bool)

(assert (=> b!7954240 (= e!4691886 0)))

(declare-fun b!7954241 () Bool)

(assert (=> b!7954241 (= e!4691886 (+ 1 (size!43415 (t!390451 (_1!38613 lt!2701370)))))))

(assert (= (and d!2376778 c!1461020) b!7954240))

(assert (= (and d!2376778 (not c!1461020)) b!7954241))

(declare-fun m!8337366 () Bool)

(assert (=> b!7954241 m!8337366))

(assert (=> b!7953825 d!2376778))

(assert (=> b!7953825 d!2376654))

(assert (=> b!7953840 d!2376634))

(assert (=> b!7953840 d!2376604))

(declare-fun d!2376780 () Bool)

(declare-fun lt!2701551 () List!74708)

(assert (=> d!2376780 (= (++!18349 (t!390451 testedP!447) lt!2701551) (tail!15768 input!7927))))

(declare-fun e!4691887 () List!74708)

(assert (=> d!2376780 (= lt!2701551 e!4691887)))

(declare-fun c!1461021 () Bool)

(assert (=> d!2376780 (= c!1461021 ((_ is Cons!74584) (t!390451 testedP!447)))))

(assert (=> d!2376780 (>= (size!43415 (tail!15768 input!7927)) (size!43415 (t!390451 testedP!447)))))

(assert (=> d!2376780 (= (getSuffix!3782 (tail!15768 input!7927) (t!390451 testedP!447)) lt!2701551)))

(declare-fun b!7954242 () Bool)

(assert (=> b!7954242 (= e!4691887 (getSuffix!3782 (tail!15768 (tail!15768 input!7927)) (t!390451 (t!390451 testedP!447))))))

(declare-fun b!7954243 () Bool)

(assert (=> b!7954243 (= e!4691887 (tail!15768 input!7927))))

(assert (= (and d!2376780 c!1461021) b!7954242))

(assert (= (and d!2376780 (not c!1461021)) b!7954243))

(declare-fun m!8337368 () Bool)

(assert (=> d!2376780 m!8337368))

(assert (=> d!2376780 m!8336882))

(declare-fun m!8337370 () Bool)

(assert (=> d!2376780 m!8337370))

(assert (=> d!2376780 m!8337010))

(assert (=> b!7954242 m!8336882))

(declare-fun m!8337374 () Bool)

(assert (=> b!7954242 m!8337374))

(assert (=> b!7954242 m!8337374))

(declare-fun m!8337376 () Bool)

(assert (=> b!7954242 m!8337376))

(assert (=> b!7953833 d!2376780))

(declare-fun d!2376782 () Bool)

(assert (=> d!2376782 (= (tail!15768 input!7927) (t!390451 input!7927))))

(assert (=> b!7953833 d!2376782))

(assert (=> bm!737430 d!2376614))

(declare-fun b!7954247 () Bool)

(declare-fun e!4691889 () Bool)

(declare-fun lt!2701552 () List!74708)

(assert (=> b!7954247 (= e!4691889 (or (not (= lt!2701386 Nil!74584)) (= lt!2701552 testedP!447)))))

(declare-fun b!7954245 () Bool)

(declare-fun e!4691888 () List!74708)

(assert (=> b!7954245 (= e!4691888 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) lt!2701386)))))

(declare-fun b!7954244 () Bool)

(assert (=> b!7954244 (= e!4691888 lt!2701386)))

(declare-fun b!7954246 () Bool)

(declare-fun res!3153835 () Bool)

(assert (=> b!7954246 (=> (not res!3153835) (not e!4691889))))

(assert (=> b!7954246 (= res!3153835 (= (size!43415 lt!2701552) (+ (size!43415 testedP!447) (size!43415 lt!2701386))))))

(declare-fun d!2376784 () Bool)

(assert (=> d!2376784 e!4691889))

(declare-fun res!3153834 () Bool)

(assert (=> d!2376784 (=> (not res!3153834) (not e!4691889))))

(assert (=> d!2376784 (= res!3153834 (= (content!15836 lt!2701552) ((_ map or) (content!15836 testedP!447) (content!15836 lt!2701386))))))

(assert (=> d!2376784 (= lt!2701552 e!4691888)))

(declare-fun c!1461022 () Bool)

(assert (=> d!2376784 (= c!1461022 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2376784 (= (++!18349 testedP!447 lt!2701386) lt!2701552)))

(assert (= (and d!2376784 c!1461022) b!7954244))

(assert (= (and d!2376784 (not c!1461022)) b!7954245))

(assert (= (and d!2376784 res!3153834) b!7954246))

(assert (= (and b!7954246 res!3153835) b!7954247))

(declare-fun m!8337388 () Bool)

(assert (=> b!7954245 m!8337388))

(declare-fun m!8337390 () Bool)

(assert (=> b!7954246 m!8337390))

(assert (=> b!7954246 m!8336828))

(declare-fun m!8337392 () Bool)

(assert (=> b!7954246 m!8337392))

(declare-fun m!8337394 () Bool)

(assert (=> d!2376784 m!8337394))

(assert (=> d!2376784 m!8337030))

(declare-fun m!8337396 () Bool)

(assert (=> d!2376784 m!8337396))

(assert (=> d!2376652 d!2376784))

(assert (=> d!2376652 d!2376634))

(assert (=> d!2376652 d!2376654))

(declare-fun b!7954252 () Bool)

(declare-fun e!4691895 () Bool)

(declare-fun call!737526 () Bool)

(assert (=> b!7954252 (= e!4691895 call!737526)))

(declare-fun b!7954253 () Bool)

(declare-fun res!3153839 () Bool)

(declare-fun e!4691898 () Bool)

(assert (=> b!7954253 (=> res!3153839 e!4691898)))

(assert (=> b!7954253 (= res!3153839 (not ((_ is Concat!30478) lt!2701286)))))

(declare-fun e!4691896 () Bool)

(assert (=> b!7954253 (= e!4691896 e!4691898)))

(declare-fun b!7954254 () Bool)

(declare-fun e!4691897 () Bool)

(declare-fun call!737527 () Bool)

(assert (=> b!7954254 (= e!4691897 call!737527)))

(declare-fun bm!737520 () Bool)

(declare-fun call!737525 () Bool)

(assert (=> bm!737520 (= call!737525 call!737526)))

(declare-fun b!7954255 () Bool)

(declare-fun e!4691892 () Bool)

(assert (=> b!7954255 (= e!4691892 e!4691896)))

(declare-fun c!1461025 () Bool)

(assert (=> b!7954255 (= c!1461025 ((_ is Union!21479) lt!2701286))))

(declare-fun bm!737521 () Bool)

(assert (=> bm!737521 (= call!737527 (validRegex!11783 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))

(declare-fun b!7954256 () Bool)

(declare-fun e!4691893 () Bool)

(assert (=> b!7954256 (= e!4691893 e!4691892)))

(declare-fun c!1461026 () Bool)

(assert (=> b!7954256 (= c!1461026 ((_ is Star!21479) lt!2701286))))

(declare-fun b!7954257 () Bool)

(declare-fun res!3153837 () Bool)

(assert (=> b!7954257 (=> (not res!3153837) (not e!4691897))))

(assert (=> b!7954257 (= res!3153837 call!737525)))

(assert (=> b!7954257 (= e!4691896 e!4691897)))

(declare-fun d!2376790 () Bool)

(declare-fun res!3153838 () Bool)

(assert (=> d!2376790 (=> res!3153838 e!4691893)))

(assert (=> d!2376790 (= res!3153838 ((_ is ElementMatch!21479) lt!2701286))))

(assert (=> d!2376790 (= (validRegex!11783 lt!2701286) e!4691893)))

(declare-fun bm!737522 () Bool)

(assert (=> bm!737522 (= call!737526 (validRegex!11783 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))

(declare-fun b!7954258 () Bool)

(declare-fun e!4691894 () Bool)

(assert (=> b!7954258 (= e!4691898 e!4691894)))

(declare-fun res!3153836 () Bool)

(assert (=> b!7954258 (=> (not res!3153836) (not e!4691894))))

(assert (=> b!7954258 (= res!3153836 call!737525)))

(declare-fun b!7954259 () Bool)

(assert (=> b!7954259 (= e!4691892 e!4691895)))

(declare-fun res!3153840 () Bool)

(assert (=> b!7954259 (= res!3153840 (not (nullable!9580 (reg!21808 lt!2701286))))))

(assert (=> b!7954259 (=> (not res!3153840) (not e!4691895))))

(declare-fun b!7954260 () Bool)

(assert (=> b!7954260 (= e!4691894 call!737527)))

(assert (= (and d!2376790 (not res!3153838)) b!7954256))

(assert (= (and b!7954256 c!1461026) b!7954259))

(assert (= (and b!7954256 (not c!1461026)) b!7954255))

(assert (= (and b!7954259 res!3153840) b!7954252))

(assert (= (and b!7954255 c!1461025) b!7954257))

(assert (= (and b!7954255 (not c!1461025)) b!7954253))

(assert (= (and b!7954257 res!3153837) b!7954254))

(assert (= (and b!7954253 (not res!3153839)) b!7954258))

(assert (= (and b!7954258 res!3153836) b!7954260))

(assert (= (or b!7954254 b!7954260) bm!737521))

(assert (= (or b!7954257 b!7954258) bm!737520))

(assert (= (or b!7954252 bm!737520) bm!737522))

(declare-fun m!8337400 () Bool)

(assert (=> bm!737521 m!8337400))

(declare-fun m!8337402 () Bool)

(assert (=> bm!737522 m!8337402))

(declare-fun m!8337404 () Bool)

(assert (=> b!7954259 m!8337404))

(assert (=> d!2376624 d!2376790))

(assert (=> d!2376624 d!2376718))

(declare-fun d!2376794 () Bool)

(declare-fun c!1461033 () Bool)

(assert (=> d!2376794 (= c!1461033 ((_ is Nil!74584) lt!2701451))))

(declare-fun e!4691907 () (InoxSet C!43296))

(assert (=> d!2376794 (= (content!15836 lt!2701451) e!4691907)))

(declare-fun b!7954275 () Bool)

(assert (=> b!7954275 (= e!4691907 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954276 () Bool)

(assert (=> b!7954276 (= e!4691907 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701451) true) (content!15836 (t!390451 lt!2701451))))))

(assert (= (and d!2376794 c!1461033) b!7954275))

(assert (= (and d!2376794 (not c!1461033)) b!7954276))

(declare-fun m!8337406 () Bool)

(assert (=> b!7954276 m!8337406))

(declare-fun m!8337408 () Bool)

(assert (=> b!7954276 m!8337408))

(assert (=> d!2376666 d!2376794))

(declare-fun d!2376796 () Bool)

(declare-fun c!1461034 () Bool)

(assert (=> d!2376796 (= c!1461034 ((_ is Nil!74584) lt!2701255))))

(declare-fun e!4691908 () (InoxSet C!43296))

(assert (=> d!2376796 (= (content!15836 lt!2701255) e!4691908)))

(declare-fun b!7954277 () Bool)

(assert (=> b!7954277 (= e!4691908 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954278 () Bool)

(assert (=> b!7954278 (= e!4691908 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701255) true) (content!15836 (t!390451 lt!2701255))))))

(assert (= (and d!2376796 c!1461034) b!7954277))

(assert (= (and d!2376796 (not c!1461034)) b!7954278))

(declare-fun m!8337410 () Bool)

(assert (=> b!7954278 m!8337410))

(assert (=> b!7954278 m!8337316))

(assert (=> d!2376666 d!2376796))

(declare-fun d!2376798 () Bool)

(declare-fun c!1461035 () Bool)

(assert (=> d!2376798 (= c!1461035 ((_ is Nil!74584) (tail!15768 lt!2701251)))))

(declare-fun e!4691909 () (InoxSet C!43296))

(assert (=> d!2376798 (= (content!15836 (tail!15768 lt!2701251)) e!4691909)))

(declare-fun b!7954279 () Bool)

(assert (=> b!7954279 (= e!4691909 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954280 () Bool)

(assert (=> b!7954280 (= e!4691909 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (tail!15768 lt!2701251)) true) (content!15836 (t!390451 (tail!15768 lt!2701251)))))))

(assert (= (and d!2376798 c!1461035) b!7954279))

(assert (= (and d!2376798 (not c!1461035)) b!7954280))

(declare-fun m!8337412 () Bool)

(assert (=> b!7954280 m!8337412))

(declare-fun m!8337414 () Bool)

(assert (=> b!7954280 m!8337414))

(assert (=> d!2376666 d!2376798))

(declare-fun b!7954281 () Bool)

(declare-fun c!1461038 () Bool)

(assert (=> b!7954281 (= c!1461038 (nullable!9580 (regOne!43470 r!24602)))))

(declare-fun e!4691914 () Regex!21479)

(declare-fun e!4691910 () Regex!21479)

(assert (=> b!7954281 (= e!4691914 e!4691910)))

(declare-fun d!2376800 () Bool)

(declare-fun lt!2701583 () Regex!21479)

(assert (=> d!2376800 (validRegex!11783 lt!2701583)))

(declare-fun e!4691912 () Regex!21479)

(assert (=> d!2376800 (= lt!2701583 e!4691912)))

(declare-fun c!1461037 () Bool)

(assert (=> d!2376800 (= c!1461037 (or ((_ is EmptyExpr!21479) r!24602) ((_ is EmptyLang!21479) r!24602)))))

(assert (=> d!2376800 (validRegex!11783 r!24602)))

(assert (=> d!2376800 (= (derivativeStep!6507 r!24602 call!737437) lt!2701583)))

(declare-fun c!1461040 () Bool)

(declare-fun c!1461036 () Bool)

(declare-fun bm!737531 () Bool)

(declare-fun call!737538 () Regex!21479)

(assert (=> bm!737531 (= call!737538 (derivativeStep!6507 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))) call!737437))))

(declare-fun b!7954282 () Bool)

(declare-fun e!4691913 () Regex!21479)

(assert (=> b!7954282 (= e!4691913 (ite (= call!737437 (c!1460858 r!24602)) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7954283 () Bool)

(declare-fun e!4691911 () Regex!21479)

(declare-fun call!737537 () Regex!21479)

(assert (=> b!7954283 (= e!4691911 (Union!21479 call!737537 call!737538))))

(declare-fun b!7954284 () Bool)

(declare-fun call!737539 () Regex!21479)

(assert (=> b!7954284 (= e!4691910 (Union!21479 (Concat!30478 call!737539 (regTwo!43470 r!24602)) EmptyLang!21479))))

(declare-fun b!7954285 () Bool)

(assert (=> b!7954285 (= e!4691910 (Union!21479 (Concat!30478 call!737537 (regTwo!43470 r!24602)) call!737539))))

(declare-fun bm!737532 () Bool)

(assert (=> bm!737532 (= call!737537 (derivativeStep!6507 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)) call!737437))))

(declare-fun b!7954286 () Bool)

(assert (=> b!7954286 (= e!4691912 e!4691913)))

(declare-fun c!1461039 () Bool)

(assert (=> b!7954286 (= c!1461039 ((_ is ElementMatch!21479) r!24602))))

(declare-fun b!7954287 () Bool)

(assert (=> b!7954287 (= e!4691912 EmptyLang!21479)))

(declare-fun b!7954288 () Bool)

(declare-fun call!737536 () Regex!21479)

(assert (=> b!7954288 (= e!4691914 (Concat!30478 call!737536 r!24602))))

(declare-fun bm!737533 () Bool)

(assert (=> bm!737533 (= call!737539 call!737536)))

(declare-fun bm!737534 () Bool)

(assert (=> bm!737534 (= call!737536 call!737538)))

(declare-fun b!7954289 () Bool)

(assert (=> b!7954289 (= e!4691911 e!4691914)))

(assert (=> b!7954289 (= c!1461036 ((_ is Star!21479) r!24602))))

(declare-fun b!7954290 () Bool)

(assert (=> b!7954290 (= c!1461040 ((_ is Union!21479) r!24602))))

(assert (=> b!7954290 (= e!4691913 e!4691911)))

(assert (= (and d!2376800 c!1461037) b!7954287))

(assert (= (and d!2376800 (not c!1461037)) b!7954286))

(assert (= (and b!7954286 c!1461039) b!7954282))

(assert (= (and b!7954286 (not c!1461039)) b!7954290))

(assert (= (and b!7954290 c!1461040) b!7954283))

(assert (= (and b!7954290 (not c!1461040)) b!7954289))

(assert (= (and b!7954289 c!1461036) b!7954288))

(assert (= (and b!7954289 (not c!1461036)) b!7954281))

(assert (= (and b!7954281 c!1461038) b!7954285))

(assert (= (and b!7954281 (not c!1461038)) b!7954284))

(assert (= (or b!7954285 b!7954284) bm!737533))

(assert (= (or b!7954288 bm!737533) bm!737534))

(assert (= (or b!7954283 bm!737534) bm!737531))

(assert (= (or b!7954283 b!7954285) bm!737532))

(assert (=> b!7954281 m!8336928))

(declare-fun m!8337416 () Bool)

(assert (=> d!2376800 m!8337416))

(assert (=> d!2376800 m!8336932))

(declare-fun m!8337418 () Bool)

(assert (=> bm!737531 m!8337418))

(declare-fun m!8337420 () Bool)

(assert (=> bm!737532 m!8337420))

(assert (=> bm!737432 d!2376800))

(declare-fun b!7954291 () Bool)

(declare-fun c!1461043 () Bool)

(assert (=> b!7954291 (= c!1461043 (nullable!9580 (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun e!4691919 () Regex!21479)

(declare-fun e!4691915 () Regex!21479)

(assert (=> b!7954291 (= e!4691919 e!4691915)))

(declare-fun d!2376802 () Bool)

(declare-fun lt!2701584 () Regex!21479)

(assert (=> d!2376802 (validRegex!11783 lt!2701584)))

(declare-fun e!4691917 () Regex!21479)

(assert (=> d!2376802 (= lt!2701584 e!4691917)))

(declare-fun c!1461042 () Bool)

(assert (=> d!2376802 (= c!1461042 (or ((_ is EmptyExpr!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) ((_ is EmptyLang!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> d!2376802 (validRegex!11783 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2376802 (= (derivativeStep!6507 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))) lt!2701250) lt!2701584)))

(declare-fun call!737542 () Regex!21479)

(declare-fun c!1461041 () Bool)

(declare-fun c!1461045 () Bool)

(declare-fun bm!737535 () Bool)

(assert (=> bm!737535 (= call!737542 (derivativeStep!6507 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) lt!2701250))))

(declare-fun e!4691918 () Regex!21479)

(declare-fun b!7954292 () Bool)

(assert (=> b!7954292 (= e!4691918 (ite (= lt!2701250 (c!1460858 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7954293 () Bool)

(declare-fun e!4691916 () Regex!21479)

(declare-fun call!737541 () Regex!21479)

(assert (=> b!7954293 (= e!4691916 (Union!21479 call!737541 call!737542))))

(declare-fun b!7954294 () Bool)

(declare-fun call!737543 () Regex!21479)

(assert (=> b!7954294 (= e!4691915 (Union!21479 (Concat!30478 call!737543 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) EmptyLang!21479))))

(declare-fun b!7954295 () Bool)

(assert (=> b!7954295 (= e!4691915 (Union!21479 (Concat!30478 call!737541 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) call!737543))))

(declare-fun bm!737536 () Bool)

(assert (=> bm!737536 (= call!737541 (derivativeStep!6507 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) lt!2701250))))

(declare-fun b!7954296 () Bool)

(assert (=> b!7954296 (= e!4691917 e!4691918)))

(declare-fun c!1461044 () Bool)

(assert (=> b!7954296 (= c!1461044 ((_ is ElementMatch!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7954297 () Bool)

(assert (=> b!7954297 (= e!4691917 EmptyLang!21479)))

(declare-fun b!7954298 () Bool)

(declare-fun call!737540 () Regex!21479)

(assert (=> b!7954298 (= e!4691919 (Concat!30478 call!737540 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun bm!737537 () Bool)

(assert (=> bm!737537 (= call!737543 call!737540)))

(declare-fun bm!737538 () Bool)

(assert (=> bm!737538 (= call!737540 call!737542)))

(declare-fun b!7954299 () Bool)

(assert (=> b!7954299 (= e!4691916 e!4691919)))

(assert (=> b!7954299 (= c!1461041 ((_ is Star!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7954300 () Bool)

(assert (=> b!7954300 (= c!1461045 ((_ is Union!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(assert (=> b!7954300 (= e!4691918 e!4691916)))

(assert (= (and d!2376802 c!1461042) b!7954297))

(assert (= (and d!2376802 (not c!1461042)) b!7954296))

(assert (= (and b!7954296 c!1461044) b!7954292))

(assert (= (and b!7954296 (not c!1461044)) b!7954300))

(assert (= (and b!7954300 c!1461045) b!7954293))

(assert (= (and b!7954300 (not c!1461045)) b!7954299))

(assert (= (and b!7954299 c!1461041) b!7954298))

(assert (= (and b!7954299 (not c!1461041)) b!7954291))

(assert (= (and b!7954291 c!1461043) b!7954295))

(assert (= (and b!7954291 (not c!1461043)) b!7954294))

(assert (= (or b!7954295 b!7954294) bm!737537))

(assert (= (or b!7954298 bm!737537) bm!737538))

(assert (= (or b!7954293 bm!737538) bm!737535))

(assert (= (or b!7954293 b!7954295) bm!737536))

(declare-fun m!8337450 () Bool)

(assert (=> b!7954291 m!8337450))

(declare-fun m!8337454 () Bool)

(assert (=> d!2376802 m!8337454))

(declare-fun m!8337458 () Bool)

(assert (=> d!2376802 m!8337458))

(declare-fun m!8337468 () Bool)

(assert (=> bm!737535 m!8337468))

(declare-fun m!8337474 () Bool)

(assert (=> bm!737536 m!8337474))

(assert (=> bm!737401 d!2376802))

(declare-fun lt!2701585 () List!74708)

(declare-fun e!4691921 () Bool)

(declare-fun b!7954304 () Bool)

(assert (=> b!7954304 (= e!4691921 (or (not (= (Cons!74584 lt!2701250 Nil!74584) Nil!74584)) (= lt!2701585 (t!390451 testedP!447))))))

(declare-fun b!7954302 () Bool)

(declare-fun e!4691920 () List!74708)

(assert (=> b!7954302 (= e!4691920 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) (Cons!74584 lt!2701250 Nil!74584))))))

(declare-fun b!7954301 () Bool)

(assert (=> b!7954301 (= e!4691920 (Cons!74584 lt!2701250 Nil!74584))))

(declare-fun b!7954303 () Bool)

(declare-fun res!3153844 () Bool)

(assert (=> b!7954303 (=> (not res!3153844) (not e!4691921))))

(assert (=> b!7954303 (= res!3153844 (= (size!43415 lt!2701585) (+ (size!43415 (t!390451 testedP!447)) (size!43415 (Cons!74584 lt!2701250 Nil!74584)))))))

(declare-fun d!2376804 () Bool)

(assert (=> d!2376804 e!4691921))

(declare-fun res!3153843 () Bool)

(assert (=> d!2376804 (=> (not res!3153843) (not e!4691921))))

(assert (=> d!2376804 (= res!3153843 (= (content!15836 lt!2701585) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 (Cons!74584 lt!2701250 Nil!74584)))))))

(assert (=> d!2376804 (= lt!2701585 e!4691920)))

(declare-fun c!1461046 () Bool)

(assert (=> d!2376804 (= c!1461046 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2376804 (= (++!18349 (t!390451 testedP!447) (Cons!74584 lt!2701250 Nil!74584)) lt!2701585)))

(assert (= (and d!2376804 c!1461046) b!7954301))

(assert (= (and d!2376804 (not c!1461046)) b!7954302))

(assert (= (and d!2376804 res!3153843) b!7954303))

(assert (= (and b!7954303 res!3153844) b!7954304))

(declare-fun m!8337486 () Bool)

(assert (=> b!7954302 m!8337486))

(declare-fun m!8337488 () Bool)

(assert (=> b!7954303 m!8337488))

(assert (=> b!7954303 m!8337010))

(assert (=> b!7954303 m!8337026))

(declare-fun m!8337490 () Bool)

(assert (=> d!2376804 m!8337490))

(assert (=> d!2376804 m!8337356))

(assert (=> d!2376804 m!8337032))

(assert (=> b!7953866 d!2376804))

(declare-fun d!2376810 () Bool)

(declare-fun e!4691924 () Bool)

(assert (=> d!2376810 e!4691924))

(declare-fun res!3153846 () Bool)

(assert (=> d!2376810 (=> res!3153846 e!4691924)))

(declare-fun lt!2701586 () Bool)

(assert (=> d!2376810 (= res!3153846 (not lt!2701586))))

(declare-fun e!4691922 () Bool)

(assert (=> d!2376810 (= lt!2701586 e!4691922)))

(declare-fun res!3153845 () Bool)

(assert (=> d!2376810 (=> res!3153845 e!4691922)))

(assert (=> d!2376810 (= res!3153845 ((_ is Nil!74584) (tail!15768 input!7927)))))

(assert (=> d!2376810 (= (isPrefix!6579 (tail!15768 input!7927) (tail!15768 input!7927)) lt!2701586)))

(declare-fun b!7954305 () Bool)

(declare-fun e!4691923 () Bool)

(assert (=> b!7954305 (= e!4691922 e!4691923)))

(declare-fun res!3153847 () Bool)

(assert (=> b!7954305 (=> (not res!3153847) (not e!4691923))))

(assert (=> b!7954305 (= res!3153847 (not ((_ is Nil!74584) (tail!15768 input!7927))))))

(declare-fun b!7954308 () Bool)

(assert (=> b!7954308 (= e!4691924 (>= (size!43415 (tail!15768 input!7927)) (size!43415 (tail!15768 input!7927))))))

(declare-fun b!7954306 () Bool)

(declare-fun res!3153848 () Bool)

(assert (=> b!7954306 (=> (not res!3153848) (not e!4691923))))

(assert (=> b!7954306 (= res!3153848 (= (head!16231 (tail!15768 input!7927)) (head!16231 (tail!15768 input!7927))))))

(declare-fun b!7954307 () Bool)

(assert (=> b!7954307 (= e!4691923 (isPrefix!6579 (tail!15768 (tail!15768 input!7927)) (tail!15768 (tail!15768 input!7927))))))

(assert (= (and d!2376810 (not res!3153845)) b!7954305))

(assert (= (and b!7954305 res!3153847) b!7954306))

(assert (= (and b!7954306 res!3153848) b!7954307))

(assert (= (and d!2376810 (not res!3153846)) b!7954308))

(assert (=> b!7954308 m!8336882))

(assert (=> b!7954308 m!8337370))

(assert (=> b!7954308 m!8336882))

(assert (=> b!7954308 m!8337370))

(assert (=> b!7954306 m!8336882))

(declare-fun m!8337492 () Bool)

(assert (=> b!7954306 m!8337492))

(assert (=> b!7954306 m!8336882))

(assert (=> b!7954306 m!8337492))

(assert (=> b!7954307 m!8336882))

(assert (=> b!7954307 m!8337374))

(assert (=> b!7954307 m!8336882))

(assert (=> b!7954307 m!8337374))

(assert (=> b!7954307 m!8337374))

(assert (=> b!7954307 m!8337374))

(declare-fun m!8337494 () Bool)

(assert (=> b!7954307 m!8337494))

(assert (=> b!7953649 d!2376810))

(assert (=> b!7953649 d!2376782))

(declare-fun d!2376812 () Bool)

(declare-fun e!4691927 () Bool)

(assert (=> d!2376812 e!4691927))

(declare-fun res!3153850 () Bool)

(assert (=> d!2376812 (=> res!3153850 e!4691927)))

(declare-fun lt!2701587 () Bool)

(assert (=> d!2376812 (= res!3153850 (not lt!2701587))))

(declare-fun e!4691925 () Bool)

(assert (=> d!2376812 (= lt!2701587 e!4691925)))

(declare-fun res!3153849 () Bool)

(assert (=> d!2376812 (=> res!3153849 e!4691925)))

(assert (=> d!2376812 (= res!3153849 ((_ is Nil!74584) (tail!15768 testedP!447)))))

(assert (=> d!2376812 (= (isPrefix!6579 (tail!15768 testedP!447) (tail!15768 input!7927)) lt!2701587)))

(declare-fun b!7954309 () Bool)

(declare-fun e!4691926 () Bool)

(assert (=> b!7954309 (= e!4691925 e!4691926)))

(declare-fun res!3153851 () Bool)

(assert (=> b!7954309 (=> (not res!3153851) (not e!4691926))))

(assert (=> b!7954309 (= res!3153851 (not ((_ is Nil!74584) (tail!15768 input!7927))))))

(declare-fun b!7954312 () Bool)

(assert (=> b!7954312 (= e!4691927 (>= (size!43415 (tail!15768 input!7927)) (size!43415 (tail!15768 testedP!447))))))

(declare-fun b!7954310 () Bool)

(declare-fun res!3153852 () Bool)

(assert (=> b!7954310 (=> (not res!3153852) (not e!4691926))))

(assert (=> b!7954310 (= res!3153852 (= (head!16231 (tail!15768 testedP!447)) (head!16231 (tail!15768 input!7927))))))

(declare-fun b!7954311 () Bool)

(assert (=> b!7954311 (= e!4691926 (isPrefix!6579 (tail!15768 (tail!15768 testedP!447)) (tail!15768 (tail!15768 input!7927))))))

(assert (= (and d!2376812 (not res!3153849)) b!7954309))

(assert (= (and b!7954309 res!3153851) b!7954310))

(assert (= (and b!7954310 res!3153852) b!7954311))

(assert (= (and d!2376812 (not res!3153850)) b!7954312))

(assert (=> b!7954312 m!8336882))

(assert (=> b!7954312 m!8337370))

(assert (=> b!7954312 m!8336892))

(declare-fun m!8337496 () Bool)

(assert (=> b!7954312 m!8337496))

(assert (=> b!7954310 m!8336892))

(declare-fun m!8337498 () Bool)

(assert (=> b!7954310 m!8337498))

(assert (=> b!7954310 m!8336882))

(assert (=> b!7954310 m!8337492))

(assert (=> b!7954311 m!8336892))

(declare-fun m!8337500 () Bool)

(assert (=> b!7954311 m!8337500))

(assert (=> b!7954311 m!8336882))

(assert (=> b!7954311 m!8337374))

(assert (=> b!7954311 m!8337500))

(assert (=> b!7954311 m!8337374))

(declare-fun m!8337502 () Bool)

(assert (=> b!7954311 m!8337502))

(assert (=> b!7953653 d!2376812))

(declare-fun d!2376814 () Bool)

(assert (=> d!2376814 (= (tail!15768 testedP!447) (t!390451 testedP!447))))

(assert (=> b!7953653 d!2376814))

(assert (=> b!7953653 d!2376782))

(declare-fun d!2376816 () Bool)

(declare-fun lt!2701588 () Regex!21479)

(assert (=> d!2376816 (validRegex!11783 lt!2701588)))

(declare-fun e!4691928 () Regex!21479)

(assert (=> d!2376816 (= lt!2701588 e!4691928)))

(declare-fun c!1461047 () Bool)

(assert (=> d!2376816 (= c!1461047 ((_ is Cons!74584) (t!390451 testedP!447)))))

(assert (=> d!2376816 (validRegex!11783 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))

(assert (=> d!2376816 (= (derivative!665 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (t!390451 testedP!447)) lt!2701588)))

(declare-fun b!7954313 () Bool)

(assert (=> b!7954313 (= e!4691928 (derivative!665 (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))) (t!390451 (t!390451 testedP!447))))))

(declare-fun b!7954314 () Bool)

(assert (=> b!7954314 (= e!4691928 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))

(assert (= (and d!2376816 c!1461047) b!7954313))

(assert (= (and d!2376816 (not c!1461047)) b!7954314))

(declare-fun m!8337504 () Bool)

(assert (=> d!2376816 m!8337504))

(assert (=> d!2376816 m!8336874))

(declare-fun m!8337506 () Bool)

(assert (=> d!2376816 m!8337506))

(assert (=> b!7954313 m!8336874))

(declare-fun m!8337508 () Bool)

(assert (=> b!7954313 m!8337508))

(assert (=> b!7954313 m!8337508))

(declare-fun m!8337510 () Bool)

(assert (=> b!7954313 m!8337510))

(assert (=> b!7953637 d!2376816))

(declare-fun b!7954315 () Bool)

(declare-fun c!1461050 () Bool)

(assert (=> b!7954315 (= c!1461050 (nullable!9580 (regOne!43470 baseR!116)))))

(declare-fun e!4691933 () Regex!21479)

(declare-fun e!4691929 () Regex!21479)

(assert (=> b!7954315 (= e!4691933 e!4691929)))

(declare-fun d!2376818 () Bool)

(declare-fun lt!2701589 () Regex!21479)

(assert (=> d!2376818 (validRegex!11783 lt!2701589)))

(declare-fun e!4691931 () Regex!21479)

(assert (=> d!2376818 (= lt!2701589 e!4691931)))

(declare-fun c!1461049 () Bool)

(assert (=> d!2376818 (= c!1461049 (or ((_ is EmptyExpr!21479) baseR!116) ((_ is EmptyLang!21479) baseR!116)))))

(assert (=> d!2376818 (validRegex!11783 baseR!116)))

(assert (=> d!2376818 (= (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) lt!2701589)))

(declare-fun bm!737539 () Bool)

(declare-fun c!1461052 () Bool)

(declare-fun c!1461048 () Bool)

(declare-fun call!737546 () Regex!21479)

(assert (=> bm!737539 (= call!737546 (derivativeStep!6507 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))) (h!81032 testedP!447)))))

(declare-fun b!7954316 () Bool)

(declare-fun e!4691932 () Regex!21479)

(assert (=> b!7954316 (= e!4691932 (ite (= (h!81032 testedP!447) (c!1460858 baseR!116)) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7954317 () Bool)

(declare-fun e!4691930 () Regex!21479)

(declare-fun call!737545 () Regex!21479)

(assert (=> b!7954317 (= e!4691930 (Union!21479 call!737545 call!737546))))

(declare-fun b!7954318 () Bool)

(declare-fun call!737547 () Regex!21479)

(assert (=> b!7954318 (= e!4691929 (Union!21479 (Concat!30478 call!737547 (regTwo!43470 baseR!116)) EmptyLang!21479))))

(declare-fun b!7954319 () Bool)

(assert (=> b!7954319 (= e!4691929 (Union!21479 (Concat!30478 call!737545 (regTwo!43470 baseR!116)) call!737547))))

(declare-fun bm!737540 () Bool)

(assert (=> bm!737540 (= call!737545 (derivativeStep!6507 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)) (h!81032 testedP!447)))))

(declare-fun b!7954320 () Bool)

(assert (=> b!7954320 (= e!4691931 e!4691932)))

(declare-fun c!1461051 () Bool)

(assert (=> b!7954320 (= c!1461051 ((_ is ElementMatch!21479) baseR!116))))

(declare-fun b!7954321 () Bool)

(assert (=> b!7954321 (= e!4691931 EmptyLang!21479)))

(declare-fun b!7954322 () Bool)

(declare-fun call!737544 () Regex!21479)

(assert (=> b!7954322 (= e!4691933 (Concat!30478 call!737544 baseR!116))))

(declare-fun bm!737541 () Bool)

(assert (=> bm!737541 (= call!737547 call!737544)))

(declare-fun bm!737542 () Bool)

(assert (=> bm!737542 (= call!737544 call!737546)))

(declare-fun b!7954323 () Bool)

(assert (=> b!7954323 (= e!4691930 e!4691933)))

(assert (=> b!7954323 (= c!1461048 ((_ is Star!21479) baseR!116))))

(declare-fun b!7954324 () Bool)

(assert (=> b!7954324 (= c!1461052 ((_ is Union!21479) baseR!116))))

(assert (=> b!7954324 (= e!4691932 e!4691930)))

(assert (= (and d!2376818 c!1461049) b!7954321))

(assert (= (and d!2376818 (not c!1461049)) b!7954320))

(assert (= (and b!7954320 c!1461051) b!7954316))

(assert (= (and b!7954320 (not c!1461051)) b!7954324))

(assert (= (and b!7954324 c!1461052) b!7954317))

(assert (= (and b!7954324 (not c!1461052)) b!7954323))

(assert (= (and b!7954323 c!1461048) b!7954322))

(assert (= (and b!7954323 (not c!1461048)) b!7954315))

(assert (= (and b!7954315 c!1461050) b!7954319))

(assert (= (and b!7954315 (not c!1461050)) b!7954318))

(assert (= (or b!7954319 b!7954318) bm!737541))

(assert (= (or b!7954322 bm!737541) bm!737542))

(assert (= (or b!7954317 bm!737542) bm!737539))

(assert (= (or b!7954317 b!7954319) bm!737540))

(declare-fun m!8337512 () Bool)

(assert (=> b!7954315 m!8337512))

(declare-fun m!8337514 () Bool)

(assert (=> d!2376818 m!8337514))

(assert (=> d!2376818 m!8336866))

(declare-fun m!8337516 () Bool)

(assert (=> bm!737539 m!8337516))

(declare-fun m!8337518 () Bool)

(assert (=> bm!737540 m!8337518))

(assert (=> b!7953637 d!2376818))

(assert (=> d!2376616 d!2376654))

(assert (=> d!2376616 d!2376634))

(declare-fun d!2376820 () Bool)

(assert (=> d!2376820 (<= (size!43415 testedP!447) (size!43415 input!7927))))

(assert (=> d!2376820 true))

(declare-fun _$64!910 () Unit!169904)

(assert (=> d!2376820 (= (choose!59948 testedP!447 input!7927) _$64!910)))

(declare-fun bs!1969619 () Bool)

(assert (= bs!1969619 d!2376820))

(assert (=> bs!1969619 m!8336828))

(assert (=> bs!1969619 m!8336830))

(assert (=> d!2376616 d!2376820))

(assert (=> d!2376616 d!2376618))

(declare-fun d!2376826 () Bool)

(declare-fun e!4691941 () Bool)

(assert (=> d!2376826 e!4691941))

(declare-fun res!3153860 () Bool)

(assert (=> d!2376826 (=> res!3153860 e!4691941)))

(declare-fun lt!2701592 () Bool)

(assert (=> d!2376826 (= res!3153860 (not lt!2701592))))

(declare-fun e!4691939 () Bool)

(assert (=> d!2376826 (= lt!2701592 e!4691939)))

(declare-fun res!3153859 () Bool)

(assert (=> d!2376826 (=> res!3153859 e!4691939)))

(assert (=> d!2376826 (= res!3153859 ((_ is Nil!74584) (tail!15768 lt!2701255)))))

(assert (=> d!2376826 (= (isPrefix!6579 (tail!15768 lt!2701255) (tail!15768 input!7927)) lt!2701592)))

(declare-fun b!7954333 () Bool)

(declare-fun e!4691940 () Bool)

(assert (=> b!7954333 (= e!4691939 e!4691940)))

(declare-fun res!3153861 () Bool)

(assert (=> b!7954333 (=> (not res!3153861) (not e!4691940))))

(assert (=> b!7954333 (= res!3153861 (not ((_ is Nil!74584) (tail!15768 input!7927))))))

(declare-fun b!7954336 () Bool)

(assert (=> b!7954336 (= e!4691941 (>= (size!43415 (tail!15768 input!7927)) (size!43415 (tail!15768 lt!2701255))))))

(declare-fun b!7954334 () Bool)

(declare-fun res!3153862 () Bool)

(assert (=> b!7954334 (=> (not res!3153862) (not e!4691940))))

(assert (=> b!7954334 (= res!3153862 (= (head!16231 (tail!15768 lt!2701255)) (head!16231 (tail!15768 input!7927))))))

(declare-fun b!7954335 () Bool)

(assert (=> b!7954335 (= e!4691940 (isPrefix!6579 (tail!15768 (tail!15768 lt!2701255)) (tail!15768 (tail!15768 input!7927))))))

(assert (= (and d!2376826 (not res!3153859)) b!7954333))

(assert (= (and b!7954333 res!3153861) b!7954334))

(assert (= (and b!7954334 res!3153862) b!7954335))

(assert (= (and d!2376826 (not res!3153860)) b!7954336))

(assert (=> b!7954336 m!8336882))

(assert (=> b!7954336 m!8337370))

(assert (=> b!7954336 m!8337016))

(declare-fun m!8337534 () Bool)

(assert (=> b!7954336 m!8337534))

(assert (=> b!7954334 m!8337016))

(declare-fun m!8337536 () Bool)

(assert (=> b!7954334 m!8337536))

(assert (=> b!7954334 m!8336882))

(assert (=> b!7954334 m!8337492))

(assert (=> b!7954335 m!8337016))

(declare-fun m!8337540 () Bool)

(assert (=> b!7954335 m!8337540))

(assert (=> b!7954335 m!8336882))

(assert (=> b!7954335 m!8337374))

(assert (=> b!7954335 m!8337540))

(assert (=> b!7954335 m!8337374))

(declare-fun m!8337544 () Bool)

(assert (=> b!7954335 m!8337544))

(assert (=> b!7953839 d!2376826))

(declare-fun d!2376828 () Bool)

(assert (=> d!2376828 (= (tail!15768 lt!2701255) (t!390451 lt!2701255))))

(assert (=> b!7953839 d!2376828))

(assert (=> b!7953839 d!2376782))

(declare-fun d!2376832 () Bool)

(declare-fun lt!2701593 () Int)

(assert (=> d!2376832 (>= lt!2701593 0)))

(declare-fun e!4691943 () Int)

(assert (=> d!2376832 (= lt!2701593 e!4691943)))

(declare-fun c!1461054 () Bool)

(assert (=> d!2376832 (= c!1461054 ((_ is Nil!74584) lt!2701451))))

(assert (=> d!2376832 (= (size!43415 lt!2701451) lt!2701593)))

(declare-fun b!7954337 () Bool)

(assert (=> b!7954337 (= e!4691943 0)))

(declare-fun b!7954338 () Bool)

(assert (=> b!7954338 (= e!4691943 (+ 1 (size!43415 (t!390451 lt!2701451))))))

(assert (= (and d!2376832 c!1461054) b!7954337))

(assert (= (and d!2376832 (not c!1461054)) b!7954338))

(declare-fun m!8337546 () Bool)

(assert (=> b!7954338 m!8337546))

(assert (=> b!7953879 d!2376832))

(assert (=> b!7953879 d!2376604))

(declare-fun d!2376834 () Bool)

(declare-fun lt!2701594 () Int)

(assert (=> d!2376834 (>= lt!2701594 0)))

(declare-fun e!4691950 () Int)

(assert (=> d!2376834 (= lt!2701594 e!4691950)))

(declare-fun c!1461057 () Bool)

(assert (=> d!2376834 (= c!1461057 ((_ is Nil!74584) (tail!15768 lt!2701251)))))

(assert (=> d!2376834 (= (size!43415 (tail!15768 lt!2701251)) lt!2701594)))

(declare-fun b!7954348 () Bool)

(assert (=> b!7954348 (= e!4691950 0)))

(declare-fun b!7954349 () Bool)

(assert (=> b!7954349 (= e!4691950 (+ 1 (size!43415 (t!390451 (tail!15768 lt!2701251)))))))

(assert (= (and d!2376834 c!1461057) b!7954348))

(assert (= (and d!2376834 (not c!1461057)) b!7954349))

(declare-fun m!8337548 () Bool)

(assert (=> b!7954349 m!8337548))

(assert (=> b!7953879 d!2376834))

(assert (=> d!2376656 d!2376696))

(declare-fun d!2376836 () Bool)

(assert (=> d!2376836 (isPrefix!6579 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) input!7927)))

(assert (=> d!2376836 true))

(declare-fun _$65!1940 () Unit!169904)

(assert (=> d!2376836 (= (choose!59950 testedP!447 input!7927) _$65!1940)))

(declare-fun bs!1969620 () Bool)

(assert (= bs!1969620 d!2376836))

(assert (=> bs!1969620 m!8336834))

(assert (=> bs!1969620 m!8336834))

(assert (=> bs!1969620 m!8336988))

(assert (=> bs!1969620 m!8336976))

(assert (=> bs!1969620 m!8336976))

(assert (=> bs!1969620 m!8336984))

(assert (=> d!2376656 d!2376836))

(assert (=> d!2376656 d!2376698))

(assert (=> d!2376656 d!2376700))

(assert (=> d!2376656 d!2376618))

(assert (=> d!2376656 d!2376652))

(declare-fun d!2376846 () Bool)

(assert (=> d!2376846 (= (isEmpty!42883 (_1!38613 lt!2701369)) ((_ is Nil!74584) (_1!38613 lt!2701369)))))

(assert (=> b!7953824 d!2376846))

(declare-fun d!2376848 () Bool)

(assert (=> d!2376848 (= input!7927 testedP!447)))

(assert (=> d!2376848 true))

(declare-fun _$60!1324 () Unit!169904)

(assert (=> d!2376848 (= (choose!59947 input!7927 testedP!447 input!7927) _$60!1324)))

(assert (=> d!2376614 d!2376848))

(assert (=> d!2376614 d!2376610))

(assert (=> bm!737437 d!2376660))

(declare-fun b!7954372 () Bool)

(declare-fun e!4691964 () Bool)

(declare-fun tp!2367735 () Bool)

(assert (=> b!7954372 (= e!4691964 (and tp_is_empty!53501 tp!2367735))))

(assert (=> b!7953949 (= tp!2367670 e!4691964)))

(assert (= (and b!7953949 ((_ is Cons!74584) (t!390451 (t!390451 input!7927)))) b!7954372))

(declare-fun b!7954373 () Bool)

(declare-fun e!4691965 () Bool)

(assert (=> b!7954373 (= e!4691965 tp_is_empty!53501)))

(declare-fun b!7954374 () Bool)

(declare-fun tp!2367738 () Bool)

(declare-fun tp!2367737 () Bool)

(assert (=> b!7954374 (= e!4691965 (and tp!2367738 tp!2367737))))

(declare-fun b!7954375 () Bool)

(declare-fun tp!2367736 () Bool)

(assert (=> b!7954375 (= e!4691965 tp!2367736)))

(declare-fun b!7954376 () Bool)

(declare-fun tp!2367739 () Bool)

(declare-fun tp!2367740 () Bool)

(assert (=> b!7954376 (= e!4691965 (and tp!2367739 tp!2367740))))

(assert (=> b!7953917 (= tp!2367639 e!4691965)))

(assert (= (and b!7953917 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 baseR!116)))) b!7954373))

(assert (= (and b!7953917 ((_ is Concat!30478) (regOne!43470 (regOne!43471 baseR!116)))) b!7954374))

(assert (= (and b!7953917 ((_ is Star!21479) (regOne!43470 (regOne!43471 baseR!116)))) b!7954375))

(assert (= (and b!7953917 ((_ is Union!21479) (regOne!43470 (regOne!43471 baseR!116)))) b!7954376))

(declare-fun b!7954381 () Bool)

(declare-fun e!4691968 () Bool)

(assert (=> b!7954381 (= e!4691968 tp_is_empty!53501)))

(declare-fun b!7954382 () Bool)

(declare-fun tp!2367743 () Bool)

(declare-fun tp!2367742 () Bool)

(assert (=> b!7954382 (= e!4691968 (and tp!2367743 tp!2367742))))

(declare-fun b!7954383 () Bool)

(declare-fun tp!2367741 () Bool)

(assert (=> b!7954383 (= e!4691968 tp!2367741)))

(declare-fun b!7954384 () Bool)

(declare-fun tp!2367744 () Bool)

(declare-fun tp!2367745 () Bool)

(assert (=> b!7954384 (= e!4691968 (and tp!2367744 tp!2367745))))

(assert (=> b!7953917 (= tp!2367638 e!4691968)))

(assert (= (and b!7953917 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 baseR!116)))) b!7954381))

(assert (= (and b!7953917 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 baseR!116)))) b!7954382))

(assert (= (and b!7953917 ((_ is Star!21479) (regTwo!43470 (regOne!43471 baseR!116)))) b!7954383))

(assert (= (and b!7953917 ((_ is Union!21479) (regTwo!43470 (regOne!43471 baseR!116)))) b!7954384))

(declare-fun b!7954385 () Bool)

(declare-fun e!4691969 () Bool)

(assert (=> b!7954385 (= e!4691969 tp_is_empty!53501)))

(declare-fun b!7954386 () Bool)

(declare-fun tp!2367748 () Bool)

(declare-fun tp!2367747 () Bool)

(assert (=> b!7954386 (= e!4691969 (and tp!2367748 tp!2367747))))

(declare-fun b!7954387 () Bool)

(declare-fun tp!2367746 () Bool)

(assert (=> b!7954387 (= e!4691969 tp!2367746)))

(declare-fun b!7954388 () Bool)

(declare-fun tp!2367749 () Bool)

(declare-fun tp!2367750 () Bool)

(assert (=> b!7954388 (= e!4691969 (and tp!2367749 tp!2367750))))

(assert (=> b!7953926 (= tp!2367647 e!4691969)))

(assert (= (and b!7953926 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 r!24602)))) b!7954385))

(assert (= (and b!7953926 ((_ is Concat!30478) (reg!21808 (regOne!43470 r!24602)))) b!7954386))

(assert (= (and b!7953926 ((_ is Star!21479) (reg!21808 (regOne!43470 r!24602)))) b!7954387))

(assert (= (and b!7953926 ((_ is Union!21479) (reg!21808 (regOne!43470 r!24602)))) b!7954388))

(declare-fun b!7954389 () Bool)

(declare-fun e!4691970 () Bool)

(assert (=> b!7954389 (= e!4691970 tp_is_empty!53501)))

(declare-fun b!7954390 () Bool)

(declare-fun tp!2367753 () Bool)

(declare-fun tp!2367752 () Bool)

(assert (=> b!7954390 (= e!4691970 (and tp!2367753 tp!2367752))))

(declare-fun b!7954391 () Bool)

(declare-fun tp!2367751 () Bool)

(assert (=> b!7954391 (= e!4691970 tp!2367751)))

(declare-fun b!7954392 () Bool)

(declare-fun tp!2367754 () Bool)

(declare-fun tp!2367755 () Bool)

(assert (=> b!7954392 (= e!4691970 (and tp!2367754 tp!2367755))))

(assert (=> b!7953902 (= tp!2367617 e!4691970)))

(assert (= (and b!7953902 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 r!24602)))) b!7954389))

(assert (= (and b!7953902 ((_ is Concat!30478) (reg!21808 (regOne!43471 r!24602)))) b!7954390))

(assert (= (and b!7953902 ((_ is Star!21479) (reg!21808 (regOne!43471 r!24602)))) b!7954391))

(assert (= (and b!7953902 ((_ is Union!21479) (reg!21808 (regOne!43471 r!24602)))) b!7954392))

(declare-fun b!7954402 () Bool)

(declare-fun e!4691978 () Bool)

(assert (=> b!7954402 (= e!4691978 tp_is_empty!53501)))

(declare-fun b!7954403 () Bool)

(declare-fun tp!2367758 () Bool)

(declare-fun tp!2367757 () Bool)

(assert (=> b!7954403 (= e!4691978 (and tp!2367758 tp!2367757))))

(declare-fun b!7954404 () Bool)

(declare-fun tp!2367756 () Bool)

(assert (=> b!7954404 (= e!4691978 tp!2367756)))

(declare-fun b!7954405 () Bool)

(declare-fun tp!2367759 () Bool)

(declare-fun tp!2367760 () Bool)

(assert (=> b!7954405 (= e!4691978 (and tp!2367759 tp!2367760))))

(assert (=> b!7953927 (= tp!2367650 e!4691978)))

(assert (= (and b!7953927 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 r!24602)))) b!7954402))

(assert (= (and b!7953927 ((_ is Concat!30478) (regOne!43471 (regOne!43470 r!24602)))) b!7954403))

(assert (= (and b!7953927 ((_ is Star!21479) (regOne!43471 (regOne!43470 r!24602)))) b!7954404))

(assert (= (and b!7953927 ((_ is Union!21479) (regOne!43471 (regOne!43470 r!24602)))) b!7954405))

(declare-fun b!7954406 () Bool)

(declare-fun e!4691979 () Bool)

(assert (=> b!7954406 (= e!4691979 tp_is_empty!53501)))

(declare-fun b!7954407 () Bool)

(declare-fun tp!2367763 () Bool)

(declare-fun tp!2367762 () Bool)

(assert (=> b!7954407 (= e!4691979 (and tp!2367763 tp!2367762))))

(declare-fun b!7954408 () Bool)

(declare-fun tp!2367761 () Bool)

(assert (=> b!7954408 (= e!4691979 tp!2367761)))

(declare-fun b!7954409 () Bool)

(declare-fun tp!2367764 () Bool)

(declare-fun tp!2367765 () Bool)

(assert (=> b!7954409 (= e!4691979 (and tp!2367764 tp!2367765))))

(assert (=> b!7953927 (= tp!2367651 e!4691979)))

(assert (= (and b!7953927 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 r!24602)))) b!7954406))

(assert (= (and b!7953927 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 r!24602)))) b!7954407))

(assert (= (and b!7953927 ((_ is Star!21479) (regTwo!43471 (regOne!43470 r!24602)))) b!7954408))

(assert (= (and b!7953927 ((_ is Union!21479) (regTwo!43471 (regOne!43470 r!24602)))) b!7954409))

(declare-fun b!7954410 () Bool)

(declare-fun e!4691980 () Bool)

(assert (=> b!7954410 (= e!4691980 tp_is_empty!53501)))

(declare-fun b!7954411 () Bool)

(declare-fun tp!2367768 () Bool)

(declare-fun tp!2367767 () Bool)

(assert (=> b!7954411 (= e!4691980 (and tp!2367768 tp!2367767))))

(declare-fun b!7954412 () Bool)

(declare-fun tp!2367766 () Bool)

(assert (=> b!7954412 (= e!4691980 tp!2367766)))

(declare-fun b!7954413 () Bool)

(declare-fun tp!2367769 () Bool)

(declare-fun tp!2367770 () Bool)

(assert (=> b!7954413 (= e!4691980 (and tp!2367769 tp!2367770))))

(assert (=> b!7953903 (= tp!2367620 e!4691980)))

(assert (= (and b!7953903 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 r!24602)))) b!7954410))

(assert (= (and b!7953903 ((_ is Concat!30478) (regOne!43471 (regOne!43471 r!24602)))) b!7954411))

(assert (= (and b!7953903 ((_ is Star!21479) (regOne!43471 (regOne!43471 r!24602)))) b!7954412))

(assert (= (and b!7953903 ((_ is Union!21479) (regOne!43471 (regOne!43471 r!24602)))) b!7954413))

(declare-fun b!7954414 () Bool)

(declare-fun e!4691981 () Bool)

(assert (=> b!7954414 (= e!4691981 tp_is_empty!53501)))

(declare-fun b!7954415 () Bool)

(declare-fun tp!2367773 () Bool)

(declare-fun tp!2367772 () Bool)

(assert (=> b!7954415 (= e!4691981 (and tp!2367773 tp!2367772))))

(declare-fun b!7954416 () Bool)

(declare-fun tp!2367771 () Bool)

(assert (=> b!7954416 (= e!4691981 tp!2367771)))

(declare-fun b!7954417 () Bool)

(declare-fun tp!2367774 () Bool)

(declare-fun tp!2367775 () Bool)

(assert (=> b!7954417 (= e!4691981 (and tp!2367774 tp!2367775))))

(assert (=> b!7953903 (= tp!2367621 e!4691981)))

(assert (= (and b!7953903 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 r!24602)))) b!7954414))

(assert (= (and b!7953903 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 r!24602)))) b!7954415))

(assert (= (and b!7953903 ((_ is Star!21479) (regTwo!43471 (regOne!43471 r!24602)))) b!7954416))

(assert (= (and b!7953903 ((_ is Union!21479) (regTwo!43471 (regOne!43471 r!24602)))) b!7954417))

(declare-fun b!7954418 () Bool)

(declare-fun e!4691988 () Bool)

(assert (=> b!7954418 (= e!4691988 tp_is_empty!53501)))

(declare-fun b!7954419 () Bool)

(declare-fun tp!2367778 () Bool)

(declare-fun tp!2367777 () Bool)

(assert (=> b!7954419 (= e!4691988 (and tp!2367778 tp!2367777))))

(declare-fun b!7954420 () Bool)

(declare-fun tp!2367776 () Bool)

(assert (=> b!7954420 (= e!4691988 tp!2367776)))

(declare-fun b!7954421 () Bool)

(declare-fun tp!2367779 () Bool)

(declare-fun tp!2367780 () Bool)

(assert (=> b!7954421 (= e!4691988 (and tp!2367779 tp!2367780))))

(assert (=> b!7953925 (= tp!2367649 e!4691988)))

(assert (= (and b!7953925 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 r!24602)))) b!7954418))

(assert (= (and b!7953925 ((_ is Concat!30478) (regOne!43470 (regOne!43470 r!24602)))) b!7954419))

(assert (= (and b!7953925 ((_ is Star!21479) (regOne!43470 (regOne!43470 r!24602)))) b!7954420))

(assert (= (and b!7953925 ((_ is Union!21479) (regOne!43470 (regOne!43470 r!24602)))) b!7954421))

(declare-fun b!7954431 () Bool)

(declare-fun e!4691990 () Bool)

(assert (=> b!7954431 (= e!4691990 tp_is_empty!53501)))

(declare-fun b!7954432 () Bool)

(declare-fun tp!2367783 () Bool)

(declare-fun tp!2367782 () Bool)

(assert (=> b!7954432 (= e!4691990 (and tp!2367783 tp!2367782))))

(declare-fun b!7954433 () Bool)

(declare-fun tp!2367781 () Bool)

(assert (=> b!7954433 (= e!4691990 tp!2367781)))

(declare-fun b!7954434 () Bool)

(declare-fun tp!2367784 () Bool)

(declare-fun tp!2367785 () Bool)

(assert (=> b!7954434 (= e!4691990 (and tp!2367784 tp!2367785))))

(assert (=> b!7953925 (= tp!2367648 e!4691990)))

(assert (= (and b!7953925 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 r!24602)))) b!7954431))

(assert (= (and b!7953925 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 r!24602)))) b!7954432))

(assert (= (and b!7953925 ((_ is Star!21479) (regTwo!43470 (regOne!43470 r!24602)))) b!7954433))

(assert (= (and b!7953925 ((_ is Union!21479) (regTwo!43470 (regOne!43470 r!24602)))) b!7954434))

(declare-fun b!7954435 () Bool)

(declare-fun e!4691991 () Bool)

(assert (=> b!7954435 (= e!4691991 tp_is_empty!53501)))

(declare-fun b!7954436 () Bool)

(declare-fun tp!2367788 () Bool)

(declare-fun tp!2367787 () Bool)

(assert (=> b!7954436 (= e!4691991 (and tp!2367788 tp!2367787))))

(declare-fun b!7954437 () Bool)

(declare-fun tp!2367786 () Bool)

(assert (=> b!7954437 (= e!4691991 tp!2367786)))

(declare-fun b!7954438 () Bool)

(declare-fun tp!2367789 () Bool)

(declare-fun tp!2367790 () Bool)

(assert (=> b!7954438 (= e!4691991 (and tp!2367789 tp!2367790))))

(assert (=> b!7953901 (= tp!2367619 e!4691991)))

(assert (= (and b!7953901 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 r!24602)))) b!7954435))

(assert (= (and b!7953901 ((_ is Concat!30478) (regOne!43470 (regOne!43471 r!24602)))) b!7954436))

(assert (= (and b!7953901 ((_ is Star!21479) (regOne!43470 (regOne!43471 r!24602)))) b!7954437))

(assert (= (and b!7953901 ((_ is Union!21479) (regOne!43470 (regOne!43471 r!24602)))) b!7954438))

(declare-fun b!7954439 () Bool)

(declare-fun e!4691992 () Bool)

(assert (=> b!7954439 (= e!4691992 tp_is_empty!53501)))

(declare-fun b!7954440 () Bool)

(declare-fun tp!2367793 () Bool)

(declare-fun tp!2367792 () Bool)

(assert (=> b!7954440 (= e!4691992 (and tp!2367793 tp!2367792))))

(declare-fun b!7954441 () Bool)

(declare-fun tp!2367791 () Bool)

(assert (=> b!7954441 (= e!4691992 tp!2367791)))

(declare-fun b!7954442 () Bool)

(declare-fun tp!2367794 () Bool)

(declare-fun tp!2367795 () Bool)

(assert (=> b!7954442 (= e!4691992 (and tp!2367794 tp!2367795))))

(assert (=> b!7953901 (= tp!2367618 e!4691992)))

(assert (= (and b!7953901 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 r!24602)))) b!7954439))

(assert (= (and b!7953901 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 r!24602)))) b!7954440))

(assert (= (and b!7953901 ((_ is Star!21479) (regTwo!43470 (regOne!43471 r!24602)))) b!7954441))

(assert (= (and b!7953901 ((_ is Union!21479) (regTwo!43470 (regOne!43471 r!24602)))) b!7954442))

(declare-fun b!7954443 () Bool)

(declare-fun e!4691993 () Bool)

(assert (=> b!7954443 (= e!4691993 tp_is_empty!53501)))

(declare-fun b!7954444 () Bool)

(declare-fun tp!2367798 () Bool)

(declare-fun tp!2367797 () Bool)

(assert (=> b!7954444 (= e!4691993 (and tp!2367798 tp!2367797))))

(declare-fun b!7954445 () Bool)

(declare-fun tp!2367796 () Bool)

(assert (=> b!7954445 (= e!4691993 tp!2367796)))

(declare-fun b!7954446 () Bool)

(declare-fun tp!2367799 () Bool)

(declare-fun tp!2367800 () Bool)

(assert (=> b!7954446 (= e!4691993 (and tp!2367799 tp!2367800))))

(assert (=> b!7953910 (= tp!2367627 e!4691993)))

(assert (= (and b!7953910 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 baseR!116)))) b!7954443))

(assert (= (and b!7953910 ((_ is Concat!30478) (reg!21808 (reg!21808 baseR!116)))) b!7954444))

(assert (= (and b!7953910 ((_ is Star!21479) (reg!21808 (reg!21808 baseR!116)))) b!7954445))

(assert (= (and b!7953910 ((_ is Union!21479) (reg!21808 (reg!21808 baseR!116)))) b!7954446))

(declare-fun b!7954449 () Bool)

(declare-fun e!4691995 () Bool)

(assert (=> b!7954449 (= e!4691995 tp_is_empty!53501)))

(declare-fun b!7954450 () Bool)

(declare-fun tp!2367803 () Bool)

(declare-fun tp!2367802 () Bool)

(assert (=> b!7954450 (= e!4691995 (and tp!2367803 tp!2367802))))

(declare-fun b!7954451 () Bool)

(declare-fun tp!2367801 () Bool)

(assert (=> b!7954451 (= e!4691995 tp!2367801)))

(declare-fun b!7954452 () Bool)

(declare-fun tp!2367804 () Bool)

(declare-fun tp!2367805 () Bool)

(assert (=> b!7954452 (= e!4691995 (and tp!2367804 tp!2367805))))

(assert (=> b!7953911 (= tp!2367630 e!4691995)))

(assert (= (and b!7953911 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 baseR!116)))) b!7954449))

(assert (= (and b!7953911 ((_ is Concat!30478) (regOne!43471 (reg!21808 baseR!116)))) b!7954450))

(assert (= (and b!7953911 ((_ is Star!21479) (regOne!43471 (reg!21808 baseR!116)))) b!7954451))

(assert (= (and b!7953911 ((_ is Union!21479) (regOne!43471 (reg!21808 baseR!116)))) b!7954452))

(declare-fun b!7954457 () Bool)

(declare-fun e!4691998 () Bool)

(assert (=> b!7954457 (= e!4691998 tp_is_empty!53501)))

(declare-fun b!7954458 () Bool)

(declare-fun tp!2367808 () Bool)

(declare-fun tp!2367807 () Bool)

(assert (=> b!7954458 (= e!4691998 (and tp!2367808 tp!2367807))))

(declare-fun b!7954459 () Bool)

(declare-fun tp!2367806 () Bool)

(assert (=> b!7954459 (= e!4691998 tp!2367806)))

(declare-fun b!7954460 () Bool)

(declare-fun tp!2367809 () Bool)

(declare-fun tp!2367810 () Bool)

(assert (=> b!7954460 (= e!4691998 (and tp!2367809 tp!2367810))))

(assert (=> b!7953911 (= tp!2367631 e!4691998)))

(assert (= (and b!7953911 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 baseR!116)))) b!7954457))

(assert (= (and b!7953911 ((_ is Concat!30478) (regTwo!43471 (reg!21808 baseR!116)))) b!7954458))

(assert (= (and b!7953911 ((_ is Star!21479) (regTwo!43471 (reg!21808 baseR!116)))) b!7954459))

(assert (= (and b!7953911 ((_ is Union!21479) (regTwo!43471 (reg!21808 baseR!116)))) b!7954460))

(declare-fun b!7954461 () Bool)

(declare-fun e!4691999 () Bool)

(assert (=> b!7954461 (= e!4691999 tp_is_empty!53501)))

(declare-fun b!7954462 () Bool)

(declare-fun tp!2367813 () Bool)

(declare-fun tp!2367812 () Bool)

(assert (=> b!7954462 (= e!4691999 (and tp!2367813 tp!2367812))))

(declare-fun b!7954463 () Bool)

(declare-fun tp!2367811 () Bool)

(assert (=> b!7954463 (= e!4691999 tp!2367811)))

(declare-fun b!7954464 () Bool)

(declare-fun tp!2367814 () Bool)

(declare-fun tp!2367815 () Bool)

(assert (=> b!7954464 (= e!4691999 (and tp!2367814 tp!2367815))))

(assert (=> b!7953942 (= tp!2367662 e!4691999)))

(assert (= (and b!7953942 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 baseR!116)))) b!7954461))

(assert (= (and b!7953942 ((_ is Concat!30478) (regOne!43470 (regOne!43470 baseR!116)))) b!7954462))

(assert (= (and b!7953942 ((_ is Star!21479) (regOne!43470 (regOne!43470 baseR!116)))) b!7954463))

(assert (= (and b!7953942 ((_ is Union!21479) (regOne!43470 (regOne!43470 baseR!116)))) b!7954464))

(declare-fun b!7954465 () Bool)

(declare-fun e!4692000 () Bool)

(assert (=> b!7954465 (= e!4692000 tp_is_empty!53501)))

(declare-fun b!7954466 () Bool)

(declare-fun tp!2367818 () Bool)

(declare-fun tp!2367817 () Bool)

(assert (=> b!7954466 (= e!4692000 (and tp!2367818 tp!2367817))))

(declare-fun b!7954467 () Bool)

(declare-fun tp!2367816 () Bool)

(assert (=> b!7954467 (= e!4692000 tp!2367816)))

(declare-fun b!7954468 () Bool)

(declare-fun tp!2367819 () Bool)

(declare-fun tp!2367820 () Bool)

(assert (=> b!7954468 (= e!4692000 (and tp!2367819 tp!2367820))))

(assert (=> b!7953942 (= tp!2367661 e!4692000)))

(assert (= (and b!7953942 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 baseR!116)))) b!7954465))

(assert (= (and b!7953942 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 baseR!116)))) b!7954466))

(assert (= (and b!7953942 ((_ is Star!21479) (regTwo!43470 (regOne!43470 baseR!116)))) b!7954467))

(assert (= (and b!7953942 ((_ is Union!21479) (regTwo!43470 (regOne!43470 baseR!116)))) b!7954468))

(declare-fun b!7954473 () Bool)

(declare-fun e!4692004 () Bool)

(assert (=> b!7954473 (= e!4692004 tp_is_empty!53501)))

(declare-fun b!7954474 () Bool)

(declare-fun tp!2367823 () Bool)

(declare-fun tp!2367822 () Bool)

(assert (=> b!7954474 (= e!4692004 (and tp!2367823 tp!2367822))))

(declare-fun b!7954475 () Bool)

(declare-fun tp!2367821 () Bool)

(assert (=> b!7954475 (= e!4692004 tp!2367821)))

(declare-fun b!7954476 () Bool)

(declare-fun tp!2367824 () Bool)

(declare-fun tp!2367825 () Bool)

(assert (=> b!7954476 (= e!4692004 (and tp!2367824 tp!2367825))))

(assert (=> b!7953909 (= tp!2367629 e!4692004)))

(assert (= (and b!7953909 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 baseR!116)))) b!7954473))

(assert (= (and b!7953909 ((_ is Concat!30478) (regOne!43470 (reg!21808 baseR!116)))) b!7954474))

(assert (= (and b!7953909 ((_ is Star!21479) (regOne!43470 (reg!21808 baseR!116)))) b!7954475))

(assert (= (and b!7953909 ((_ is Union!21479) (regOne!43470 (reg!21808 baseR!116)))) b!7954476))

(declare-fun b!7954477 () Bool)

(declare-fun e!4692005 () Bool)

(assert (=> b!7954477 (= e!4692005 tp_is_empty!53501)))

(declare-fun b!7954478 () Bool)

(declare-fun tp!2367828 () Bool)

(declare-fun tp!2367827 () Bool)

(assert (=> b!7954478 (= e!4692005 (and tp!2367828 tp!2367827))))

(declare-fun b!7954479 () Bool)

(declare-fun tp!2367826 () Bool)

(assert (=> b!7954479 (= e!4692005 tp!2367826)))

(declare-fun b!7954480 () Bool)

(declare-fun tp!2367829 () Bool)

(declare-fun tp!2367830 () Bool)

(assert (=> b!7954480 (= e!4692005 (and tp!2367829 tp!2367830))))

(assert (=> b!7953909 (= tp!2367628 e!4692005)))

(assert (= (and b!7953909 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 baseR!116)))) b!7954477))

(assert (= (and b!7953909 ((_ is Concat!30478) (regTwo!43470 (reg!21808 baseR!116)))) b!7954478))

(assert (= (and b!7953909 ((_ is Star!21479) (regTwo!43470 (reg!21808 baseR!116)))) b!7954479))

(assert (= (and b!7953909 ((_ is Union!21479) (regTwo!43470 (reg!21808 baseR!116)))) b!7954480))

(declare-fun b!7954481 () Bool)

(declare-fun e!4692006 () Bool)

(assert (=> b!7954481 (= e!4692006 tp_is_empty!53501)))

(declare-fun b!7954482 () Bool)

(declare-fun tp!2367833 () Bool)

(declare-fun tp!2367832 () Bool)

(assert (=> b!7954482 (= e!4692006 (and tp!2367833 tp!2367832))))

(declare-fun b!7954483 () Bool)

(declare-fun tp!2367831 () Bool)

(assert (=> b!7954483 (= e!4692006 tp!2367831)))

(declare-fun b!7954484 () Bool)

(declare-fun tp!2367834 () Bool)

(declare-fun tp!2367835 () Bool)

(assert (=> b!7954484 (= e!4692006 (and tp!2367834 tp!2367835))))

(assert (=> b!7953918 (= tp!2367637 e!4692006)))

(assert (= (and b!7953918 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 baseR!116)))) b!7954481))

(assert (= (and b!7953918 ((_ is Concat!30478) (reg!21808 (regOne!43471 baseR!116)))) b!7954482))

(assert (= (and b!7953918 ((_ is Star!21479) (reg!21808 (regOne!43471 baseR!116)))) b!7954483))

(assert (= (and b!7953918 ((_ is Union!21479) (reg!21808 (regOne!43471 baseR!116)))) b!7954484))

(declare-fun b!7954485 () Bool)

(declare-fun e!4692007 () Bool)

(assert (=> b!7954485 (= e!4692007 tp_is_empty!53501)))

(declare-fun b!7954486 () Bool)

(declare-fun tp!2367838 () Bool)

(declare-fun tp!2367837 () Bool)

(assert (=> b!7954486 (= e!4692007 (and tp!2367838 tp!2367837))))

(declare-fun b!7954487 () Bool)

(declare-fun tp!2367836 () Bool)

(assert (=> b!7954487 (= e!4692007 tp!2367836)))

(declare-fun b!7954488 () Bool)

(declare-fun tp!2367839 () Bool)

(declare-fun tp!2367840 () Bool)

(assert (=> b!7954488 (= e!4692007 (and tp!2367839 tp!2367840))))

(assert (=> b!7953919 (= tp!2367640 e!4692007)))

(assert (= (and b!7953919 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 baseR!116)))) b!7954485))

(assert (= (and b!7953919 ((_ is Concat!30478) (regOne!43471 (regOne!43471 baseR!116)))) b!7954486))

(assert (= (and b!7953919 ((_ is Star!21479) (regOne!43471 (regOne!43471 baseR!116)))) b!7954487))

(assert (= (and b!7953919 ((_ is Union!21479) (regOne!43471 (regOne!43471 baseR!116)))) b!7954488))

(declare-fun b!7954489 () Bool)

(declare-fun e!4692008 () Bool)

(assert (=> b!7954489 (= e!4692008 tp_is_empty!53501)))

(declare-fun b!7954490 () Bool)

(declare-fun tp!2367843 () Bool)

(declare-fun tp!2367842 () Bool)

(assert (=> b!7954490 (= e!4692008 (and tp!2367843 tp!2367842))))

(declare-fun b!7954491 () Bool)

(declare-fun tp!2367841 () Bool)

(assert (=> b!7954491 (= e!4692008 tp!2367841)))

(declare-fun b!7954492 () Bool)

(declare-fun tp!2367844 () Bool)

(declare-fun tp!2367845 () Bool)

(assert (=> b!7954492 (= e!4692008 (and tp!2367844 tp!2367845))))

(assert (=> b!7953919 (= tp!2367641 e!4692008)))

(assert (= (and b!7953919 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 baseR!116)))) b!7954489))

(assert (= (and b!7953919 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 baseR!116)))) b!7954490))

(assert (= (and b!7953919 ((_ is Star!21479) (regTwo!43471 (regOne!43471 baseR!116)))) b!7954491))

(assert (= (and b!7953919 ((_ is Union!21479) (regTwo!43471 (regOne!43471 baseR!116)))) b!7954492))

(declare-fun b!7954493 () Bool)

(declare-fun e!4692009 () Bool)

(assert (=> b!7954493 (= e!4692009 tp_is_empty!53501)))

(declare-fun b!7954494 () Bool)

(declare-fun tp!2367848 () Bool)

(declare-fun tp!2367847 () Bool)

(assert (=> b!7954494 (= e!4692009 (and tp!2367848 tp!2367847))))

(declare-fun b!7954495 () Bool)

(declare-fun tp!2367846 () Bool)

(assert (=> b!7954495 (= e!4692009 tp!2367846)))

(declare-fun b!7954496 () Bool)

(declare-fun tp!2367849 () Bool)

(declare-fun tp!2367850 () Bool)

(assert (=> b!7954496 (= e!4692009 (and tp!2367849 tp!2367850))))

(assert (=> b!7953944 (= tp!2367663 e!4692009)))

(assert (= (and b!7953944 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 baseR!116)))) b!7954493))

(assert (= (and b!7953944 ((_ is Concat!30478) (regOne!43471 (regOne!43470 baseR!116)))) b!7954494))

(assert (= (and b!7953944 ((_ is Star!21479) (regOne!43471 (regOne!43470 baseR!116)))) b!7954495))

(assert (= (and b!7953944 ((_ is Union!21479) (regOne!43471 (regOne!43470 baseR!116)))) b!7954496))

(declare-fun b!7954497 () Bool)

(declare-fun e!4692010 () Bool)

(assert (=> b!7954497 (= e!4692010 tp_is_empty!53501)))

(declare-fun b!7954498 () Bool)

(declare-fun tp!2367853 () Bool)

(declare-fun tp!2367852 () Bool)

(assert (=> b!7954498 (= e!4692010 (and tp!2367853 tp!2367852))))

(declare-fun b!7954499 () Bool)

(declare-fun tp!2367851 () Bool)

(assert (=> b!7954499 (= e!4692010 tp!2367851)))

(declare-fun b!7954500 () Bool)

(declare-fun tp!2367854 () Bool)

(declare-fun tp!2367855 () Bool)

(assert (=> b!7954500 (= e!4692010 (and tp!2367854 tp!2367855))))

(assert (=> b!7953944 (= tp!2367664 e!4692010)))

(assert (= (and b!7953944 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 baseR!116)))) b!7954497))

(assert (= (and b!7953944 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 baseR!116)))) b!7954498))

(assert (= (and b!7953944 ((_ is Star!21479) (regTwo!43471 (regOne!43470 baseR!116)))) b!7954499))

(assert (= (and b!7953944 ((_ is Union!21479) (regTwo!43471 (regOne!43470 baseR!116)))) b!7954500))

(declare-fun b!7954501 () Bool)

(declare-fun e!4692011 () Bool)

(assert (=> b!7954501 (= e!4692011 tp_is_empty!53501)))

(declare-fun b!7954502 () Bool)

(declare-fun tp!2367858 () Bool)

(declare-fun tp!2367857 () Bool)

(assert (=> b!7954502 (= e!4692011 (and tp!2367858 tp!2367857))))

(declare-fun b!7954503 () Bool)

(declare-fun tp!2367856 () Bool)

(assert (=> b!7954503 (= e!4692011 tp!2367856)))

(declare-fun b!7954504 () Bool)

(declare-fun tp!2367859 () Bool)

(declare-fun tp!2367860 () Bool)

(assert (=> b!7954504 (= e!4692011 (and tp!2367859 tp!2367860))))

(assert (=> b!7953943 (= tp!2367660 e!4692011)))

(assert (= (and b!7953943 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 baseR!116)))) b!7954501))

(assert (= (and b!7953943 ((_ is Concat!30478) (reg!21808 (regOne!43470 baseR!116)))) b!7954502))

(assert (= (and b!7953943 ((_ is Star!21479) (reg!21808 (regOne!43470 baseR!116)))) b!7954503))

(assert (= (and b!7953943 ((_ is Union!21479) (reg!21808 (regOne!43470 baseR!116)))) b!7954504))

(declare-fun b!7954505 () Bool)

(declare-fun e!4692012 () Bool)

(assert (=> b!7954505 (= e!4692012 tp_is_empty!53501)))

(declare-fun b!7954506 () Bool)

(declare-fun tp!2367863 () Bool)

(declare-fun tp!2367862 () Bool)

(assert (=> b!7954506 (= e!4692012 (and tp!2367863 tp!2367862))))

(declare-fun b!7954507 () Bool)

(declare-fun tp!2367861 () Bool)

(assert (=> b!7954507 (= e!4692012 tp!2367861)))

(declare-fun b!7954508 () Bool)

(declare-fun tp!2367864 () Bool)

(declare-fun tp!2367865 () Bool)

(assert (=> b!7954508 (= e!4692012 (and tp!2367864 tp!2367865))))

(assert (=> b!7953929 (= tp!2367654 e!4692012)))

(assert (= (and b!7953929 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 r!24602)))) b!7954505))

(assert (= (and b!7953929 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 r!24602)))) b!7954506))

(assert (= (and b!7953929 ((_ is Star!21479) (regOne!43470 (regTwo!43470 r!24602)))) b!7954507))

(assert (= (and b!7953929 ((_ is Union!21479) (regOne!43470 (regTwo!43470 r!24602)))) b!7954508))

(declare-fun b!7954509 () Bool)

(declare-fun e!4692013 () Bool)

(assert (=> b!7954509 (= e!4692013 tp_is_empty!53501)))

(declare-fun b!7954510 () Bool)

(declare-fun tp!2367868 () Bool)

(declare-fun tp!2367867 () Bool)

(assert (=> b!7954510 (= e!4692013 (and tp!2367868 tp!2367867))))

(declare-fun b!7954511 () Bool)

(declare-fun tp!2367866 () Bool)

(assert (=> b!7954511 (= e!4692013 tp!2367866)))

(declare-fun b!7954512 () Bool)

(declare-fun tp!2367869 () Bool)

(declare-fun tp!2367870 () Bool)

(assert (=> b!7954512 (= e!4692013 (and tp!2367869 tp!2367870))))

(assert (=> b!7953929 (= tp!2367653 e!4692013)))

(assert (= (and b!7953929 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 r!24602)))) b!7954509))

(assert (= (and b!7953929 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 r!24602)))) b!7954510))

(assert (= (and b!7953929 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 r!24602)))) b!7954511))

(assert (= (and b!7953929 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 r!24602)))) b!7954512))

(declare-fun b!7954513 () Bool)

(declare-fun e!4692014 () Bool)

(assert (=> b!7954513 (= e!4692014 tp_is_empty!53501)))

(declare-fun b!7954514 () Bool)

(declare-fun tp!2367873 () Bool)

(declare-fun tp!2367872 () Bool)

(assert (=> b!7954514 (= e!4692014 (and tp!2367873 tp!2367872))))

(declare-fun b!7954515 () Bool)

(declare-fun tp!2367871 () Bool)

(assert (=> b!7954515 (= e!4692014 tp!2367871)))

(declare-fun b!7954516 () Bool)

(declare-fun tp!2367874 () Bool)

(declare-fun tp!2367875 () Bool)

(assert (=> b!7954516 (= e!4692014 (and tp!2367874 tp!2367875))))

(assert (=> b!7953905 (= tp!2367624 e!4692014)))

(assert (= (and b!7953905 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 r!24602)))) b!7954513))

(assert (= (and b!7953905 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 r!24602)))) b!7954514))

(assert (= (and b!7953905 ((_ is Star!21479) (regOne!43470 (regTwo!43471 r!24602)))) b!7954515))

(assert (= (and b!7953905 ((_ is Union!21479) (regOne!43470 (regTwo!43471 r!24602)))) b!7954516))

(declare-fun b!7954517 () Bool)

(declare-fun e!4692015 () Bool)

(assert (=> b!7954517 (= e!4692015 tp_is_empty!53501)))

(declare-fun b!7954518 () Bool)

(declare-fun tp!2367878 () Bool)

(declare-fun tp!2367877 () Bool)

(assert (=> b!7954518 (= e!4692015 (and tp!2367878 tp!2367877))))

(declare-fun b!7954519 () Bool)

(declare-fun tp!2367876 () Bool)

(assert (=> b!7954519 (= e!4692015 tp!2367876)))

(declare-fun b!7954520 () Bool)

(declare-fun tp!2367879 () Bool)

(declare-fun tp!2367880 () Bool)

(assert (=> b!7954520 (= e!4692015 (and tp!2367879 tp!2367880))))

(assert (=> b!7953905 (= tp!2367623 e!4692015)))

(assert (= (and b!7953905 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 r!24602)))) b!7954517))

(assert (= (and b!7953905 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 r!24602)))) b!7954518))

(assert (= (and b!7953905 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 r!24602)))) b!7954519))

(assert (= (and b!7953905 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 r!24602)))) b!7954520))

(declare-fun b!7954521 () Bool)

(declare-fun e!4692016 () Bool)

(assert (=> b!7954521 (= e!4692016 tp_is_empty!53501)))

(declare-fun b!7954522 () Bool)

(declare-fun tp!2367883 () Bool)

(declare-fun tp!2367882 () Bool)

(assert (=> b!7954522 (= e!4692016 (and tp!2367883 tp!2367882))))

(declare-fun b!7954523 () Bool)

(declare-fun tp!2367881 () Bool)

(assert (=> b!7954523 (= e!4692016 tp!2367881)))

(declare-fun b!7954524 () Bool)

(declare-fun tp!2367884 () Bool)

(declare-fun tp!2367885 () Bool)

(assert (=> b!7954524 (= e!4692016 (and tp!2367884 tp!2367885))))

(assert (=> b!7953931 (= tp!2367655 e!4692016)))

(assert (= (and b!7953931 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 r!24602)))) b!7954521))

(assert (= (and b!7953931 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 r!24602)))) b!7954522))

(assert (= (and b!7953931 ((_ is Star!21479) (regOne!43471 (regTwo!43470 r!24602)))) b!7954523))

(assert (= (and b!7953931 ((_ is Union!21479) (regOne!43471 (regTwo!43470 r!24602)))) b!7954524))

(declare-fun b!7954525 () Bool)

(declare-fun e!4692017 () Bool)

(assert (=> b!7954525 (= e!4692017 tp_is_empty!53501)))

(declare-fun b!7954526 () Bool)

(declare-fun tp!2367888 () Bool)

(declare-fun tp!2367887 () Bool)

(assert (=> b!7954526 (= e!4692017 (and tp!2367888 tp!2367887))))

(declare-fun b!7954527 () Bool)

(declare-fun tp!2367886 () Bool)

(assert (=> b!7954527 (= e!4692017 tp!2367886)))

(declare-fun b!7954528 () Bool)

(declare-fun tp!2367889 () Bool)

(declare-fun tp!2367890 () Bool)

(assert (=> b!7954528 (= e!4692017 (and tp!2367889 tp!2367890))))

(assert (=> b!7953931 (= tp!2367656 e!4692017)))

(assert (= (and b!7953931 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 r!24602)))) b!7954525))

(assert (= (and b!7953931 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 r!24602)))) b!7954526))

(assert (= (and b!7953931 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 r!24602)))) b!7954527))

(assert (= (and b!7953931 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 r!24602)))) b!7954528))

(declare-fun b!7954529 () Bool)

(declare-fun e!4692018 () Bool)

(assert (=> b!7954529 (= e!4692018 tp_is_empty!53501)))

(declare-fun b!7954530 () Bool)

(declare-fun tp!2367893 () Bool)

(declare-fun tp!2367892 () Bool)

(assert (=> b!7954530 (= e!4692018 (and tp!2367893 tp!2367892))))

(declare-fun b!7954531 () Bool)

(declare-fun tp!2367891 () Bool)

(assert (=> b!7954531 (= e!4692018 tp!2367891)))

(declare-fun b!7954532 () Bool)

(declare-fun tp!2367894 () Bool)

(declare-fun tp!2367895 () Bool)

(assert (=> b!7954532 (= e!4692018 (and tp!2367894 tp!2367895))))

(assert (=> b!7953913 (= tp!2367634 e!4692018)))

(assert (= (and b!7953913 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 r!24602)))) b!7954529))

(assert (= (and b!7953913 ((_ is Concat!30478) (regOne!43470 (reg!21808 r!24602)))) b!7954530))

(assert (= (and b!7953913 ((_ is Star!21479) (regOne!43470 (reg!21808 r!24602)))) b!7954531))

(assert (= (and b!7953913 ((_ is Union!21479) (regOne!43470 (reg!21808 r!24602)))) b!7954532))

(declare-fun b!7954537 () Bool)

(declare-fun e!4692021 () Bool)

(assert (=> b!7954537 (= e!4692021 tp_is_empty!53501)))

(declare-fun b!7954538 () Bool)

(declare-fun tp!2367898 () Bool)

(declare-fun tp!2367897 () Bool)

(assert (=> b!7954538 (= e!4692021 (and tp!2367898 tp!2367897))))

(declare-fun b!7954539 () Bool)

(declare-fun tp!2367896 () Bool)

(assert (=> b!7954539 (= e!4692021 tp!2367896)))

(declare-fun b!7954540 () Bool)

(declare-fun tp!2367899 () Bool)

(declare-fun tp!2367900 () Bool)

(assert (=> b!7954540 (= e!4692021 (and tp!2367899 tp!2367900))))

(assert (=> b!7953913 (= tp!2367633 e!4692021)))

(assert (= (and b!7953913 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 r!24602)))) b!7954537))

(assert (= (and b!7953913 ((_ is Concat!30478) (regTwo!43470 (reg!21808 r!24602)))) b!7954538))

(assert (= (and b!7953913 ((_ is Star!21479) (regTwo!43470 (reg!21808 r!24602)))) b!7954539))

(assert (= (and b!7953913 ((_ is Union!21479) (regTwo!43470 (reg!21808 r!24602)))) b!7954540))

(declare-fun b!7954541 () Bool)

(declare-fun e!4692022 () Bool)

(assert (=> b!7954541 (= e!4692022 tp_is_empty!53501)))

(declare-fun b!7954542 () Bool)

(declare-fun tp!2367903 () Bool)

(declare-fun tp!2367902 () Bool)

(assert (=> b!7954542 (= e!4692022 (and tp!2367903 tp!2367902))))

(declare-fun b!7954543 () Bool)

(declare-fun tp!2367901 () Bool)

(assert (=> b!7954543 (= e!4692022 tp!2367901)))

(declare-fun b!7954544 () Bool)

(declare-fun tp!2367904 () Bool)

(declare-fun tp!2367905 () Bool)

(assert (=> b!7954544 (= e!4692022 (and tp!2367904 tp!2367905))))

(assert (=> b!7953922 (= tp!2367642 e!4692022)))

(assert (= (and b!7953922 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 baseR!116)))) b!7954541))

(assert (= (and b!7953922 ((_ is Concat!30478) (reg!21808 (regTwo!43471 baseR!116)))) b!7954542))

(assert (= (and b!7953922 ((_ is Star!21479) (reg!21808 (regTwo!43471 baseR!116)))) b!7954543))

(assert (= (and b!7953922 ((_ is Union!21479) (reg!21808 (regTwo!43471 baseR!116)))) b!7954544))

(declare-fun b!7954545 () Bool)

(declare-fun e!4692028 () Bool)

(assert (=> b!7954545 (= e!4692028 tp_is_empty!53501)))

(declare-fun b!7954546 () Bool)

(declare-fun tp!2367908 () Bool)

(declare-fun tp!2367907 () Bool)

(assert (=> b!7954546 (= e!4692028 (and tp!2367908 tp!2367907))))

(declare-fun b!7954547 () Bool)

(declare-fun tp!2367906 () Bool)

(assert (=> b!7954547 (= e!4692028 tp!2367906)))

(declare-fun b!7954548 () Bool)

(declare-fun tp!2367909 () Bool)

(declare-fun tp!2367910 () Bool)

(assert (=> b!7954548 (= e!4692028 (and tp!2367909 tp!2367910))))

(assert (=> b!7953921 (= tp!2367644 e!4692028)))

(assert (= (and b!7953921 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 baseR!116)))) b!7954545))

(assert (= (and b!7953921 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 baseR!116)))) b!7954546))

(assert (= (and b!7953921 ((_ is Star!21479) (regOne!43470 (regTwo!43471 baseR!116)))) b!7954547))

(assert (= (and b!7953921 ((_ is Union!21479) (regOne!43470 (regTwo!43471 baseR!116)))) b!7954548))

(declare-fun b!7954558 () Bool)

(declare-fun e!4692031 () Bool)

(assert (=> b!7954558 (= e!4692031 tp_is_empty!53501)))

(declare-fun b!7954559 () Bool)

(declare-fun tp!2367913 () Bool)

(declare-fun tp!2367912 () Bool)

(assert (=> b!7954559 (= e!4692031 (and tp!2367913 tp!2367912))))

(declare-fun b!7954560 () Bool)

(declare-fun tp!2367911 () Bool)

(assert (=> b!7954560 (= e!4692031 tp!2367911)))

(declare-fun b!7954561 () Bool)

(declare-fun tp!2367914 () Bool)

(declare-fun tp!2367915 () Bool)

(assert (=> b!7954561 (= e!4692031 (and tp!2367914 tp!2367915))))

(assert (=> b!7953921 (= tp!2367643 e!4692031)))

(assert (= (and b!7953921 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 baseR!116)))) b!7954558))

(assert (= (and b!7953921 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 baseR!116)))) b!7954559))

(assert (= (and b!7953921 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 baseR!116)))) b!7954560))

(assert (= (and b!7953921 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 baseR!116)))) b!7954561))

(declare-fun b!7954562 () Bool)

(declare-fun e!4692032 () Bool)

(assert (=> b!7954562 (= e!4692032 tp_is_empty!53501)))

(declare-fun b!7954563 () Bool)

(declare-fun tp!2367918 () Bool)

(declare-fun tp!2367917 () Bool)

(assert (=> b!7954563 (= e!4692032 (and tp!2367918 tp!2367917))))

(declare-fun b!7954564 () Bool)

(declare-fun tp!2367916 () Bool)

(assert (=> b!7954564 (= e!4692032 tp!2367916)))

(declare-fun b!7954565 () Bool)

(declare-fun tp!2367919 () Bool)

(declare-fun tp!2367920 () Bool)

(assert (=> b!7954565 (= e!4692032 (and tp!2367919 tp!2367920))))

(assert (=> b!7953930 (= tp!2367652 e!4692032)))

(assert (= (and b!7953930 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 r!24602)))) b!7954562))

(assert (= (and b!7953930 ((_ is Concat!30478) (reg!21808 (regTwo!43470 r!24602)))) b!7954563))

(assert (= (and b!7953930 ((_ is Star!21479) (reg!21808 (regTwo!43470 r!24602)))) b!7954564))

(assert (= (and b!7953930 ((_ is Union!21479) (reg!21808 (regTwo!43470 r!24602)))) b!7954565))

(declare-fun b!7954566 () Bool)

(declare-fun e!4692033 () Bool)

(assert (=> b!7954566 (= e!4692033 tp_is_empty!53501)))

(declare-fun b!7954567 () Bool)

(declare-fun tp!2367923 () Bool)

(declare-fun tp!2367922 () Bool)

(assert (=> b!7954567 (= e!4692033 (and tp!2367923 tp!2367922))))

(declare-fun b!7954568 () Bool)

(declare-fun tp!2367921 () Bool)

(assert (=> b!7954568 (= e!4692033 tp!2367921)))

(declare-fun b!7954569 () Bool)

(declare-fun tp!2367924 () Bool)

(declare-fun tp!2367925 () Bool)

(assert (=> b!7954569 (= e!4692033 (and tp!2367924 tp!2367925))))

(assert (=> b!7953915 (= tp!2367635 e!4692033)))

(assert (= (and b!7953915 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 r!24602)))) b!7954566))

(assert (= (and b!7953915 ((_ is Concat!30478) (regOne!43471 (reg!21808 r!24602)))) b!7954567))

(assert (= (and b!7953915 ((_ is Star!21479) (regOne!43471 (reg!21808 r!24602)))) b!7954568))

(assert (= (and b!7953915 ((_ is Union!21479) (regOne!43471 (reg!21808 r!24602)))) b!7954569))

(declare-fun b!7954570 () Bool)

(declare-fun e!4692034 () Bool)

(assert (=> b!7954570 (= e!4692034 tp_is_empty!53501)))

(declare-fun b!7954571 () Bool)

(declare-fun tp!2367928 () Bool)

(declare-fun tp!2367927 () Bool)

(assert (=> b!7954571 (= e!4692034 (and tp!2367928 tp!2367927))))

(declare-fun b!7954572 () Bool)

(declare-fun tp!2367926 () Bool)

(assert (=> b!7954572 (= e!4692034 tp!2367926)))

(declare-fun b!7954573 () Bool)

(declare-fun tp!2367929 () Bool)

(declare-fun tp!2367930 () Bool)

(assert (=> b!7954573 (= e!4692034 (and tp!2367929 tp!2367930))))

(assert (=> b!7953915 (= tp!2367636 e!4692034)))

(assert (= (and b!7953915 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 r!24602)))) b!7954570))

(assert (= (and b!7953915 ((_ is Concat!30478) (regTwo!43471 (reg!21808 r!24602)))) b!7954571))

(assert (= (and b!7953915 ((_ is Star!21479) (regTwo!43471 (reg!21808 r!24602)))) b!7954572))

(assert (= (and b!7953915 ((_ is Union!21479) (regTwo!43471 (reg!21808 r!24602)))) b!7954573))

(declare-fun b!7954574 () Bool)

(declare-fun e!4692035 () Bool)

(assert (=> b!7954574 (= e!4692035 tp_is_empty!53501)))

(declare-fun b!7954575 () Bool)

(declare-fun tp!2367933 () Bool)

(declare-fun tp!2367932 () Bool)

(assert (=> b!7954575 (= e!4692035 (and tp!2367933 tp!2367932))))

(declare-fun b!7954576 () Bool)

(declare-fun tp!2367931 () Bool)

(assert (=> b!7954576 (= e!4692035 tp!2367931)))

(declare-fun b!7954577 () Bool)

(declare-fun tp!2367934 () Bool)

(declare-fun tp!2367935 () Bool)

(assert (=> b!7954577 (= e!4692035 (and tp!2367934 tp!2367935))))

(assert (=> b!7953946 (= tp!2367667 e!4692035)))

(assert (= (and b!7953946 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 baseR!116)))) b!7954574))

(assert (= (and b!7953946 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 baseR!116)))) b!7954575))

(assert (= (and b!7953946 ((_ is Star!21479) (regOne!43470 (regTwo!43470 baseR!116)))) b!7954576))

(assert (= (and b!7953946 ((_ is Union!21479) (regOne!43470 (regTwo!43470 baseR!116)))) b!7954577))

(declare-fun b!7954578 () Bool)

(declare-fun e!4692036 () Bool)

(assert (=> b!7954578 (= e!4692036 tp_is_empty!53501)))

(declare-fun b!7954579 () Bool)

(declare-fun tp!2367938 () Bool)

(declare-fun tp!2367937 () Bool)

(assert (=> b!7954579 (= e!4692036 (and tp!2367938 tp!2367937))))

(declare-fun b!7954580 () Bool)

(declare-fun tp!2367936 () Bool)

(assert (=> b!7954580 (= e!4692036 tp!2367936)))

(declare-fun b!7954581 () Bool)

(declare-fun tp!2367939 () Bool)

(declare-fun tp!2367940 () Bool)

(assert (=> b!7954581 (= e!4692036 (and tp!2367939 tp!2367940))))

(assert (=> b!7953946 (= tp!2367666 e!4692036)))

(assert (= (and b!7953946 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 baseR!116)))) b!7954578))

(assert (= (and b!7953946 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 baseR!116)))) b!7954579))

(assert (= (and b!7953946 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 baseR!116)))) b!7954580))

(assert (= (and b!7953946 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 baseR!116)))) b!7954581))

(declare-fun b!7954582 () Bool)

(declare-fun e!4692037 () Bool)

(assert (=> b!7954582 (= e!4692037 tp_is_empty!53501)))

(declare-fun b!7954583 () Bool)

(declare-fun tp!2367943 () Bool)

(declare-fun tp!2367942 () Bool)

(assert (=> b!7954583 (= e!4692037 (and tp!2367943 tp!2367942))))

(declare-fun b!7954584 () Bool)

(declare-fun tp!2367941 () Bool)

(assert (=> b!7954584 (= e!4692037 tp!2367941)))

(declare-fun b!7954585 () Bool)

(declare-fun tp!2367944 () Bool)

(declare-fun tp!2367945 () Bool)

(assert (=> b!7954585 (= e!4692037 (and tp!2367944 tp!2367945))))

(assert (=> b!7953947 (= tp!2367665 e!4692037)))

(assert (= (and b!7953947 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 baseR!116)))) b!7954582))

(assert (= (and b!7953947 ((_ is Concat!30478) (reg!21808 (regTwo!43470 baseR!116)))) b!7954583))

(assert (= (and b!7953947 ((_ is Star!21479) (reg!21808 (regTwo!43470 baseR!116)))) b!7954584))

(assert (= (and b!7953947 ((_ is Union!21479) (reg!21808 (regTwo!43470 baseR!116)))) b!7954585))

(declare-fun b!7954586 () Bool)

(declare-fun e!4692038 () Bool)

(assert (=> b!7954586 (= e!4692038 tp_is_empty!53501)))

(declare-fun b!7954587 () Bool)

(declare-fun tp!2367948 () Bool)

(declare-fun tp!2367947 () Bool)

(assert (=> b!7954587 (= e!4692038 (and tp!2367948 tp!2367947))))

(declare-fun b!7954588 () Bool)

(declare-fun tp!2367946 () Bool)

(assert (=> b!7954588 (= e!4692038 tp!2367946)))

(declare-fun b!7954589 () Bool)

(declare-fun tp!2367949 () Bool)

(declare-fun tp!2367950 () Bool)

(assert (=> b!7954589 (= e!4692038 (and tp!2367949 tp!2367950))))

(assert (=> b!7953923 (= tp!2367645 e!4692038)))

(assert (= (and b!7953923 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 baseR!116)))) b!7954586))

(assert (= (and b!7953923 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 baseR!116)))) b!7954587))

(assert (= (and b!7953923 ((_ is Star!21479) (regOne!43471 (regTwo!43471 baseR!116)))) b!7954588))

(assert (= (and b!7953923 ((_ is Union!21479) (regOne!43471 (regTwo!43471 baseR!116)))) b!7954589))

(declare-fun b!7954590 () Bool)

(declare-fun e!4692039 () Bool)

(assert (=> b!7954590 (= e!4692039 tp_is_empty!53501)))

(declare-fun b!7954591 () Bool)

(declare-fun tp!2367953 () Bool)

(declare-fun tp!2367952 () Bool)

(assert (=> b!7954591 (= e!4692039 (and tp!2367953 tp!2367952))))

(declare-fun b!7954592 () Bool)

(declare-fun tp!2367951 () Bool)

(assert (=> b!7954592 (= e!4692039 tp!2367951)))

(declare-fun b!7954593 () Bool)

(declare-fun tp!2367954 () Bool)

(declare-fun tp!2367955 () Bool)

(assert (=> b!7954593 (= e!4692039 (and tp!2367954 tp!2367955))))

(assert (=> b!7953923 (= tp!2367646 e!4692039)))

(assert (= (and b!7953923 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 baseR!116)))) b!7954590))

(assert (= (and b!7953923 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 baseR!116)))) b!7954591))

(assert (= (and b!7953923 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 baseR!116)))) b!7954592))

(assert (= (and b!7953923 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 baseR!116)))) b!7954593))

(declare-fun b!7954594 () Bool)

(declare-fun e!4692040 () Bool)

(assert (=> b!7954594 (= e!4692040 tp_is_empty!53501)))

(declare-fun b!7954595 () Bool)

(declare-fun tp!2367958 () Bool)

(declare-fun tp!2367957 () Bool)

(assert (=> b!7954595 (= e!4692040 (and tp!2367958 tp!2367957))))

(declare-fun b!7954596 () Bool)

(declare-fun tp!2367956 () Bool)

(assert (=> b!7954596 (= e!4692040 tp!2367956)))

(declare-fun b!7954597 () Bool)

(declare-fun tp!2367959 () Bool)

(declare-fun tp!2367960 () Bool)

(assert (=> b!7954597 (= e!4692040 (and tp!2367959 tp!2367960))))

(assert (=> b!7953906 (= tp!2367622 e!4692040)))

(assert (= (and b!7953906 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 r!24602)))) b!7954594))

(assert (= (and b!7953906 ((_ is Concat!30478) (reg!21808 (regTwo!43471 r!24602)))) b!7954595))

(assert (= (and b!7953906 ((_ is Star!21479) (reg!21808 (regTwo!43471 r!24602)))) b!7954596))

(assert (= (and b!7953906 ((_ is Union!21479) (reg!21808 (regTwo!43471 r!24602)))) b!7954597))

(declare-fun b!7954598 () Bool)

(declare-fun e!4692041 () Bool)

(assert (=> b!7954598 (= e!4692041 tp_is_empty!53501)))

(declare-fun b!7954599 () Bool)

(declare-fun tp!2367963 () Bool)

(declare-fun tp!2367962 () Bool)

(assert (=> b!7954599 (= e!4692041 (and tp!2367963 tp!2367962))))

(declare-fun b!7954600 () Bool)

(declare-fun tp!2367961 () Bool)

(assert (=> b!7954600 (= e!4692041 tp!2367961)))

(declare-fun b!7954601 () Bool)

(declare-fun tp!2367964 () Bool)

(declare-fun tp!2367965 () Bool)

(assert (=> b!7954601 (= e!4692041 (and tp!2367964 tp!2367965))))

(assert (=> b!7953907 (= tp!2367625 e!4692041)))

(assert (= (and b!7953907 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 r!24602)))) b!7954598))

(assert (= (and b!7953907 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 r!24602)))) b!7954599))

(assert (= (and b!7953907 ((_ is Star!21479) (regOne!43471 (regTwo!43471 r!24602)))) b!7954600))

(assert (= (and b!7953907 ((_ is Union!21479) (regOne!43471 (regTwo!43471 r!24602)))) b!7954601))

(declare-fun b!7954602 () Bool)

(declare-fun e!4692042 () Bool)

(assert (=> b!7954602 (= e!4692042 tp_is_empty!53501)))

(declare-fun b!7954603 () Bool)

(declare-fun tp!2367968 () Bool)

(declare-fun tp!2367967 () Bool)

(assert (=> b!7954603 (= e!4692042 (and tp!2367968 tp!2367967))))

(declare-fun b!7954604 () Bool)

(declare-fun tp!2367966 () Bool)

(assert (=> b!7954604 (= e!4692042 tp!2367966)))

(declare-fun b!7954605 () Bool)

(declare-fun tp!2367969 () Bool)

(declare-fun tp!2367970 () Bool)

(assert (=> b!7954605 (= e!4692042 (and tp!2367969 tp!2367970))))

(assert (=> b!7953907 (= tp!2367626 e!4692042)))

(assert (= (and b!7953907 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 r!24602)))) b!7954602))

(assert (= (and b!7953907 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 r!24602)))) b!7954603))

(assert (= (and b!7953907 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 r!24602)))) b!7954604))

(assert (= (and b!7953907 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 r!24602)))) b!7954605))

(declare-fun b!7954606 () Bool)

(declare-fun e!4692043 () Bool)

(assert (=> b!7954606 (= e!4692043 tp_is_empty!53501)))

(declare-fun b!7954607 () Bool)

(declare-fun tp!2367973 () Bool)

(declare-fun tp!2367972 () Bool)

(assert (=> b!7954607 (= e!4692043 (and tp!2367973 tp!2367972))))

(declare-fun b!7954608 () Bool)

(declare-fun tp!2367971 () Bool)

(assert (=> b!7954608 (= e!4692043 tp!2367971)))

(declare-fun b!7954609 () Bool)

(declare-fun tp!2367974 () Bool)

(declare-fun tp!2367975 () Bool)

(assert (=> b!7954609 (= e!4692043 (and tp!2367974 tp!2367975))))

(assert (=> b!7953914 (= tp!2367632 e!4692043)))

(assert (= (and b!7953914 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 r!24602)))) b!7954606))

(assert (= (and b!7953914 ((_ is Concat!30478) (reg!21808 (reg!21808 r!24602)))) b!7954607))

(assert (= (and b!7953914 ((_ is Star!21479) (reg!21808 (reg!21808 r!24602)))) b!7954608))

(assert (= (and b!7953914 ((_ is Union!21479) (reg!21808 (reg!21808 r!24602)))) b!7954609))

(declare-fun b!7954610 () Bool)

(declare-fun e!4692044 () Bool)

(declare-fun tp!2367976 () Bool)

(assert (=> b!7954610 (= e!4692044 (and tp_is_empty!53501 tp!2367976))))

(assert (=> b!7953940 (= tp!2367659 e!4692044)))

(assert (= (and b!7953940 ((_ is Cons!74584) (t!390451 (t!390451 testedP!447)))) b!7954610))

(declare-fun b!7954611 () Bool)

(declare-fun e!4692045 () Bool)

(assert (=> b!7954611 (= e!4692045 tp_is_empty!53501)))

(declare-fun b!7954612 () Bool)

(declare-fun tp!2367979 () Bool)

(declare-fun tp!2367978 () Bool)

(assert (=> b!7954612 (= e!4692045 (and tp!2367979 tp!2367978))))

(declare-fun b!7954613 () Bool)

(declare-fun tp!2367977 () Bool)

(assert (=> b!7954613 (= e!4692045 tp!2367977)))

(declare-fun b!7954614 () Bool)

(declare-fun tp!2367980 () Bool)

(declare-fun tp!2367981 () Bool)

(assert (=> b!7954614 (= e!4692045 (and tp!2367980 tp!2367981))))

(assert (=> b!7953948 (= tp!2367668 e!4692045)))

(assert (= (and b!7953948 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 baseR!116)))) b!7954611))

(assert (= (and b!7953948 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 baseR!116)))) b!7954612))

(assert (= (and b!7953948 ((_ is Star!21479) (regOne!43471 (regTwo!43470 baseR!116)))) b!7954613))

(assert (= (and b!7953948 ((_ is Union!21479) (regOne!43471 (regTwo!43470 baseR!116)))) b!7954614))

(declare-fun b!7954615 () Bool)

(declare-fun e!4692046 () Bool)

(assert (=> b!7954615 (= e!4692046 tp_is_empty!53501)))

(declare-fun b!7954616 () Bool)

(declare-fun tp!2367984 () Bool)

(declare-fun tp!2367983 () Bool)

(assert (=> b!7954616 (= e!4692046 (and tp!2367984 tp!2367983))))

(declare-fun b!7954617 () Bool)

(declare-fun tp!2367982 () Bool)

(assert (=> b!7954617 (= e!4692046 tp!2367982)))

(declare-fun b!7954618 () Bool)

(declare-fun tp!2367985 () Bool)

(declare-fun tp!2367986 () Bool)

(assert (=> b!7954618 (= e!4692046 (and tp!2367985 tp!2367986))))

(assert (=> b!7953948 (= tp!2367669 e!4692046)))

(assert (= (and b!7953948 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 baseR!116)))) b!7954615))

(assert (= (and b!7953948 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 baseR!116)))) b!7954616))

(assert (= (and b!7953948 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 baseR!116)))) b!7954617))

(assert (= (and b!7953948 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 baseR!116)))) b!7954618))

(check-sat (not bm!737487) (not b!7954581) (not b!7954609) (not b!7954484) (not b!7954592) (not b!7954580) (not bm!737505) (not b!7954504) (not b!7954585) (not b!7954412) (not b!7954538) (not bm!737512) (not b!7954458) (not b!7954229) (not b!7954245) (not b!7954563) (not b!7954081) (not b!7954130) (not bm!737508) (not b!7954442) (not b!7954387) (not b!7954419) (not b!7954498) (not b!7954543) (not b!7954225) (not b!7954073) (not b!7954450) (not b!7954584) (not bm!737532) (not b!7954106) (not b!7954307) (not b!7954612) (not bm!737495) (not b!7954409) (not b!7954546) (not b!7954499) (not b!7954446) (not b!7954532) (not b!7954349) (not b!7954384) (not b!7954506) (not b!7954242) (not b!7954605) (not bm!737497) (not b!7954281) (not b!7954076) (not b!7954526) (not b!7954522) (not b!7954102) (not d!2376836) (not d!2376800) (not b!7954451) (not b!7954614) (not b!7954603) (not b!7954246) (not b!7954154) (not b!7954416) (not b!7954576) (not b!7954310) (not b!7954495) (not b!7954577) (not b!7954444) (not b!7954146) (not bm!737498) (not bm!737535) (not b!7954528) (not b!7954572) (not b!7954488) (not b!7954548) (not b!7954334) (not bm!737502) (not b!7954565) (not b!7954155) (not b!7954227) (not bm!737503) (not d!2376692) (not b!7954437) (not b!7954092) (not bm!737515) (not b!7954420) (not b!7954618) (not b!7954492) (not bm!737506) (not d!2376784) (not b!7954303) (not b!7954181) (not b!7954571) (not bm!737483) (not d!2376724) (not b!7954596) (not b!7954567) (not b!7954072) (not b!7954421) (not b!7954476) (not bm!737511) (not bm!737539) (not d!2376780) (not b!7954579) (not bm!737482) (not b!7954467) (not b!7954336) (not b!7954205) (not b!7954452) (not b!7954486) (not b!7954403) (not b!7954568) (not b!7954152) (not b!7954561) (not b!7954185) (not b!7954408) (not b!7954502) (not b!7954313) (not b!7954390) (not bm!737536) (not b!7954386) (not bm!737531) (not b!7954383) (not b!7954478) (not d!2376802) (not d!2376820) (not bm!737493) (not b!7954480) (not d!2376704) (not bm!737492) (not b!7954466) (not bm!737514) (not b!7954468) (not b!7954445) (not b!7954569) (not b!7954500) (not d!2376818) (not b!7954375) (not b!7954591) (not b!7954583) (not b!7954601) (not b!7954530) (not b!7954391) (not b!7954077) (not b!7954547) (not bm!737485) (not d!2376706) (not b!7954573) (not b!7954496) (not b!7954404) (not b!7954617) (not b!7954540) (not b!7954463) (not b!7954291) (not b!7954610) (not b!7954523) (not b!7954194) (not b!7954143) (not b!7954411) (not b!7954413) (not b!7954589) (not d!2376816) (not b!7954511) (not bm!737484) (not b!7954510) (not d!2376698) (not b!7954184) (not b!7954520) (not d!2376804) (not b!7954559) (not d!2376776) (not b!7954483) (not b!7954312) (not b!7954613) (not b!7954503) (not b!7954148) (not b!7954475) (not d!2376712) (not b!7954214) (not b!7954308) (not b!7954080) (not b!7954388) (not d!2376774) (not b!7954575) (not b!7954103) (not b!7954515) (not b!7954512) (not b!7954479) (not b!7954405) (not b!7954516) (not b!7954278) (not b!7954438) (not b!7954508) (not b!7954490) (not b!7954440) (not b!7954376) (not d!2376738) (not b!7954276) (not b!7954587) (not b!7954147) (not d!2376722) (not d!2376708) (not bm!737480) (not d!2376702) (not b!7954374) (not b!7954491) (not b!7954433) (not b!7954089) (not b!7954588) (not b!7954306) (not d!2376728) (not d!2376744) (not bm!737540) (not b!7954460) (not b!7954392) (not d!2376694) (not b!7954172) (not b!7954607) (not b!7954474) (not b!7954593) (not b!7954078) (not b!7954514) (not b!7954494) (not b!7954597) (not b!7954462) (not b!7954382) (not b!7954129) (not b!7954139) (not b!7954524) (not b!7954311) (not b!7954542) (not b!7954608) (not b!7954372) (not b!7954150) (not b!7954241) (not b!7954604) (not b!7954436) (not b!7954432) (not bm!737486) (not bm!737521) (not b!7954280) (not b!7954564) (not b!7954595) (not b!7954599) (not b!7954441) (not b!7954527) (not b!7954338) (not b!7954315) (not b!7954101) (not b!7954407) (not b!7954464) (not b!7954487) (not b!7954600) (not b!7954616) (not b!7954459) (not b!7954482) (not b!7954518) (not b!7954415) (not d!2376720) (not b!7954507) (not b!7954434) (not b!7954259) (not b!7954544) (not b!7954085) (not d!2376716) (not b!7954560) (not b!7954539) (not b!7954084) (not b!7954142) (not b!7954519) tp_is_empty!53501 (not bm!737509) (not bm!737481) (not bm!737522) (not b!7954335) (not b!7954088) (not b!7954302) (not b!7954531) (not bm!737496) (not b!7954417) (not b!7954197))
(check-sat)
(get-model)

(declare-fun lt!2701626 () List!74708)

(declare-fun e!4692173 () Bool)

(declare-fun b!7954938 () Bool)

(assert (=> b!7954938 (= e!4692173 (or (not (= lt!2701551 Nil!74584)) (= lt!2701626 (t!390451 testedP!447))))))

(declare-fun b!7954936 () Bool)

(declare-fun e!4692172 () List!74708)

(assert (=> b!7954936 (= e!4692172 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) lt!2701551)))))

(declare-fun b!7954935 () Bool)

(assert (=> b!7954935 (= e!4692172 lt!2701551)))

(declare-fun b!7954937 () Bool)

(declare-fun res!3153944 () Bool)

(assert (=> b!7954937 (=> (not res!3153944) (not e!4692173))))

(assert (=> b!7954937 (= res!3153944 (= (size!43415 lt!2701626) (+ (size!43415 (t!390451 testedP!447)) (size!43415 lt!2701551))))))

(declare-fun d!2376944 () Bool)

(assert (=> d!2376944 e!4692173))

(declare-fun res!3153943 () Bool)

(assert (=> d!2376944 (=> (not res!3153943) (not e!4692173))))

(assert (=> d!2376944 (= res!3153943 (= (content!15836 lt!2701626) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 lt!2701551))))))

(assert (=> d!2376944 (= lt!2701626 e!4692172)))

(declare-fun c!1461111 () Bool)

(assert (=> d!2376944 (= c!1461111 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2376944 (= (++!18349 (t!390451 testedP!447) lt!2701551) lt!2701626)))

(assert (= (and d!2376944 c!1461111) b!7954935))

(assert (= (and d!2376944 (not c!1461111)) b!7954936))

(assert (= (and d!2376944 res!3153943) b!7954937))

(assert (= (and b!7954937 res!3153944) b!7954938))

(declare-fun m!8337782 () Bool)

(assert (=> b!7954936 m!8337782))

(declare-fun m!8337784 () Bool)

(assert (=> b!7954937 m!8337784))

(assert (=> b!7954937 m!8337010))

(declare-fun m!8337786 () Bool)

(assert (=> b!7954937 m!8337786))

(declare-fun m!8337788 () Bool)

(assert (=> d!2376944 m!8337788))

(assert (=> d!2376944 m!8337356))

(declare-fun m!8337790 () Bool)

(assert (=> d!2376944 m!8337790))

(assert (=> d!2376780 d!2376944))

(declare-fun d!2376946 () Bool)

(declare-fun lt!2701627 () Int)

(assert (=> d!2376946 (>= lt!2701627 0)))

(declare-fun e!4692174 () Int)

(assert (=> d!2376946 (= lt!2701627 e!4692174)))

(declare-fun c!1461112 () Bool)

(assert (=> d!2376946 (= c!1461112 ((_ is Nil!74584) (tail!15768 input!7927)))))

(assert (=> d!2376946 (= (size!43415 (tail!15768 input!7927)) lt!2701627)))

(declare-fun b!7954939 () Bool)

(assert (=> b!7954939 (= e!4692174 0)))

(declare-fun b!7954940 () Bool)

(assert (=> b!7954940 (= e!4692174 (+ 1 (size!43415 (t!390451 (tail!15768 input!7927)))))))

(assert (= (and d!2376946 c!1461112) b!7954939))

(assert (= (and d!2376946 (not c!1461112)) b!7954940))

(declare-fun m!8337792 () Bool)

(assert (=> b!7954940 m!8337792))

(assert (=> d!2376780 d!2376946))

(assert (=> d!2376780 d!2376736))

(declare-fun b!7954941 () Bool)

(declare-fun e!4692178 () Bool)

(declare-fun call!737588 () Bool)

(assert (=> b!7954941 (= e!4692178 call!737588)))

(declare-fun b!7954942 () Bool)

(declare-fun res!3153948 () Bool)

(declare-fun e!4692181 () Bool)

(assert (=> b!7954942 (=> res!3153948 e!4692181)))

(assert (=> b!7954942 (= res!3153948 (not ((_ is Concat!30478) (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun e!4692179 () Bool)

(assert (=> b!7954942 (= e!4692179 e!4692181)))

(declare-fun b!7954943 () Bool)

(declare-fun e!4692180 () Bool)

(declare-fun call!737589 () Bool)

(assert (=> b!7954943 (= e!4692180 call!737589)))

(declare-fun bm!737582 () Bool)

(declare-fun call!737587 () Bool)

(assert (=> bm!737582 (= call!737587 call!737588)))

(declare-fun b!7954944 () Bool)

(declare-fun e!4692175 () Bool)

(assert (=> b!7954944 (= e!4692175 e!4692179)))

(declare-fun c!1461113 () Bool)

(assert (=> b!7954944 (= c!1461113 ((_ is Union!21479) (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun bm!737583 () Bool)

(assert (=> bm!737583 (= call!737589 (validRegex!11783 (ite c!1461113 (regTwo!43471 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (regTwo!43470 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(declare-fun b!7954945 () Bool)

(declare-fun e!4692176 () Bool)

(assert (=> b!7954945 (= e!4692176 e!4692175)))

(declare-fun c!1461114 () Bool)

(assert (=> b!7954945 (= c!1461114 ((_ is Star!21479) (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun b!7954946 () Bool)

(declare-fun res!3153946 () Bool)

(assert (=> b!7954946 (=> (not res!3153946) (not e!4692180))))

(assert (=> b!7954946 (= res!3153946 call!737587)))

(assert (=> b!7954946 (= e!4692179 e!4692180)))

(declare-fun d!2376948 () Bool)

(declare-fun res!3153947 () Bool)

(assert (=> d!2376948 (=> res!3153947 e!4692176)))

(assert (=> d!2376948 (= res!3153947 ((_ is ElementMatch!21479) (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(assert (=> d!2376948 (= (validRegex!11783 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) e!4692176)))

(declare-fun bm!737584 () Bool)

(assert (=> bm!737584 (= call!737588 (validRegex!11783 (ite c!1461114 (reg!21808 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (ite c!1461113 (regOne!43471 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (regOne!43470 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))))

(declare-fun b!7954947 () Bool)

(declare-fun e!4692177 () Bool)

(assert (=> b!7954947 (= e!4692181 e!4692177)))

(declare-fun res!3153945 () Bool)

(assert (=> b!7954947 (=> (not res!3153945) (not e!4692177))))

(assert (=> b!7954947 (= res!3153945 call!737587)))

(declare-fun b!7954948 () Bool)

(assert (=> b!7954948 (= e!4692175 e!4692178)))

(declare-fun res!3153949 () Bool)

(assert (=> b!7954948 (= res!3153949 (not (nullable!9580 (reg!21808 (ite c!1461000 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (ite c!1460999 (regOne!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regOne!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(assert (=> b!7954948 (=> (not res!3153949) (not e!4692178))))

(declare-fun b!7954949 () Bool)

(assert (=> b!7954949 (= e!4692177 call!737589)))

(assert (= (and d!2376948 (not res!3153947)) b!7954945))

(assert (= (and b!7954945 c!1461114) b!7954948))

(assert (= (and b!7954945 (not c!1461114)) b!7954944))

(assert (= (and b!7954948 res!3153949) b!7954941))

(assert (= (and b!7954944 c!1461113) b!7954946))

(assert (= (and b!7954944 (not c!1461113)) b!7954942))

(assert (= (and b!7954946 res!3153946) b!7954943))

(assert (= (and b!7954942 (not res!3153948)) b!7954947))

(assert (= (and b!7954947 res!3153945) b!7954949))

(assert (= (or b!7954943 b!7954949) bm!737583))

(assert (= (or b!7954946 b!7954947) bm!737582))

(assert (= (or b!7954941 bm!737582) bm!737584))

(declare-fun m!8337794 () Bool)

(assert (=> bm!737583 m!8337794))

(declare-fun m!8337796 () Bool)

(assert (=> bm!737584 m!8337796))

(declare-fun m!8337798 () Bool)

(assert (=> b!7954948 m!8337798))

(assert (=> bm!737506 d!2376948))

(declare-fun b!7954953 () Bool)

(declare-fun lt!2701628 () List!74708)

(declare-fun e!4692183 () Bool)

(assert (=> b!7954953 (= e!4692183 (or (not (= (Cons!74584 lt!2701524 Nil!74584) Nil!74584)) (= lt!2701628 lt!2701382)))))

(declare-fun b!7954951 () Bool)

(declare-fun e!4692182 () List!74708)

(assert (=> b!7954951 (= e!4692182 (Cons!74584 (h!81032 lt!2701382) (++!18349 (t!390451 lt!2701382) (Cons!74584 lt!2701524 Nil!74584))))))

(declare-fun b!7954950 () Bool)

(assert (=> b!7954950 (= e!4692182 (Cons!74584 lt!2701524 Nil!74584))))

(declare-fun b!7954952 () Bool)

(declare-fun res!3153951 () Bool)

(assert (=> b!7954952 (=> (not res!3153951) (not e!4692183))))

(assert (=> b!7954952 (= res!3153951 (= (size!43415 lt!2701628) (+ (size!43415 lt!2701382) (size!43415 (Cons!74584 lt!2701524 Nil!74584)))))))

(declare-fun d!2376950 () Bool)

(assert (=> d!2376950 e!4692183))

(declare-fun res!3153950 () Bool)

(assert (=> d!2376950 (=> (not res!3153950) (not e!4692183))))

(assert (=> d!2376950 (= res!3153950 (= (content!15836 lt!2701628) ((_ map or) (content!15836 lt!2701382) (content!15836 (Cons!74584 lt!2701524 Nil!74584)))))))

(assert (=> d!2376950 (= lt!2701628 e!4692182)))

(declare-fun c!1461115 () Bool)

(assert (=> d!2376950 (= c!1461115 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2376950 (= (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584)) lt!2701628)))

(assert (= (and d!2376950 c!1461115) b!7954950))

(assert (= (and d!2376950 (not c!1461115)) b!7954951))

(assert (= (and d!2376950 res!3153950) b!7954952))

(assert (= (and b!7954952 res!3153951) b!7954953))

(declare-fun m!8337800 () Bool)

(assert (=> b!7954951 m!8337800))

(declare-fun m!8337802 () Bool)

(assert (=> b!7954952 m!8337802))

(assert (=> b!7954952 m!8337192))

(declare-fun m!8337804 () Bool)

(assert (=> b!7954952 m!8337804))

(declare-fun m!8337806 () Bool)

(assert (=> d!2376950 m!8337806))

(declare-fun m!8337808 () Bool)

(assert (=> d!2376950 m!8337808))

(declare-fun m!8337810 () Bool)

(assert (=> d!2376950 m!8337810))

(assert (=> b!7954106 d!2376950))

(declare-fun lt!2701629 () List!74708)

(declare-fun e!4692185 () Bool)

(declare-fun b!7954957 () Bool)

(assert (=> b!7954957 (= e!4692185 (or (not (= (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584) Nil!74584)) (= lt!2701629 lt!2701382)))))

(declare-fun b!7954955 () Bool)

(declare-fun e!4692184 () List!74708)

(assert (=> b!7954955 (= e!4692184 (Cons!74584 (h!81032 lt!2701382) (++!18349 (t!390451 lt!2701382) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584))))))

(declare-fun b!7954954 () Bool)

(assert (=> b!7954954 (= e!4692184 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584))))

(declare-fun b!7954956 () Bool)

(declare-fun res!3153953 () Bool)

(assert (=> b!7954956 (=> (not res!3153953) (not e!4692185))))

(assert (=> b!7954956 (= res!3153953 (= (size!43415 lt!2701629) (+ (size!43415 lt!2701382) (size!43415 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)))))))

(declare-fun d!2376952 () Bool)

(assert (=> d!2376952 e!4692185))

(declare-fun res!3153952 () Bool)

(assert (=> d!2376952 (=> (not res!3153952) (not e!4692185))))

(assert (=> d!2376952 (= res!3153952 (= (content!15836 lt!2701629) ((_ map or) (content!15836 lt!2701382) (content!15836 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)))))))

(assert (=> d!2376952 (= lt!2701629 e!4692184)))

(declare-fun c!1461116 () Bool)

(assert (=> d!2376952 (= c!1461116 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2376952 (= (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)) lt!2701629)))

(assert (= (and d!2376952 c!1461116) b!7954954))

(assert (= (and d!2376952 (not c!1461116)) b!7954955))

(assert (= (and d!2376952 res!3153952) b!7954956))

(assert (= (and b!7954956 res!3153953) b!7954957))

(declare-fun m!8337812 () Bool)

(assert (=> b!7954955 m!8337812))

(declare-fun m!8337814 () Bool)

(assert (=> b!7954956 m!8337814))

(assert (=> b!7954956 m!8337192))

(declare-fun m!8337816 () Bool)

(assert (=> b!7954956 m!8337816))

(declare-fun m!8337818 () Bool)

(assert (=> d!2376952 m!8337818))

(assert (=> d!2376952 m!8337808))

(declare-fun m!8337820 () Bool)

(assert (=> d!2376952 m!8337820))

(assert (=> b!7954106 d!2376952))

(declare-fun d!2376954 () Bool)

(assert (=> d!2376954 (isPrefix!6579 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)) input!7927)))

(declare-fun lt!2701630 () Unit!169904)

(assert (=> d!2376954 (= lt!2701630 (choose!59950 lt!2701382 input!7927))))

(assert (=> d!2376954 (isPrefix!6579 lt!2701382 input!7927)))

(assert (=> d!2376954 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1306 lt!2701382 input!7927) lt!2701630)))

(declare-fun bs!1969629 () Bool)

(assert (= bs!1969629 d!2376954))

(assert (=> bs!1969629 m!8337196))

(assert (=> bs!1969629 m!8337212))

(assert (=> bs!1969629 m!8337196))

(declare-fun m!8337822 () Bool)

(assert (=> bs!1969629 m!8337822))

(declare-fun m!8337824 () Bool)

(assert (=> bs!1969629 m!8337824))

(assert (=> bs!1969629 m!8337194))

(assert (=> bs!1969629 m!8337194))

(assert (=> bs!1969629 m!8337216))

(assert (=> b!7954106 d!2376954))

(declare-fun lt!2701631 () List!74708)

(declare-fun e!4692187 () Bool)

(declare-fun b!7954961 () Bool)

(assert (=> b!7954961 (= e!4692187 (or (not (= (Cons!74584 (head!16231 call!737440) Nil!74584) Nil!74584)) (= lt!2701631 lt!2701382)))))

(declare-fun b!7954959 () Bool)

(declare-fun e!4692186 () List!74708)

(assert (=> b!7954959 (= e!4692186 (Cons!74584 (h!81032 lt!2701382) (++!18349 (t!390451 lt!2701382) (Cons!74584 (head!16231 call!737440) Nil!74584))))))

(declare-fun b!7954958 () Bool)

(assert (=> b!7954958 (= e!4692186 (Cons!74584 (head!16231 call!737440) Nil!74584))))

(declare-fun b!7954960 () Bool)

(declare-fun res!3153955 () Bool)

(assert (=> b!7954960 (=> (not res!3153955) (not e!4692187))))

(assert (=> b!7954960 (= res!3153955 (= (size!43415 lt!2701631) (+ (size!43415 lt!2701382) (size!43415 (Cons!74584 (head!16231 call!737440) Nil!74584)))))))

(declare-fun d!2376956 () Bool)

(assert (=> d!2376956 e!4692187))

(declare-fun res!3153954 () Bool)

(assert (=> d!2376956 (=> (not res!3153954) (not e!4692187))))

(assert (=> d!2376956 (= res!3153954 (= (content!15836 lt!2701631) ((_ map or) (content!15836 lt!2701382) (content!15836 (Cons!74584 (head!16231 call!737440) Nil!74584)))))))

(assert (=> d!2376956 (= lt!2701631 e!4692186)))

(declare-fun c!1461117 () Bool)

(assert (=> d!2376956 (= c!1461117 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2376956 (= (++!18349 lt!2701382 (Cons!74584 (head!16231 call!737440) Nil!74584)) lt!2701631)))

(assert (= (and d!2376956 c!1461117) b!7954958))

(assert (= (and d!2376956 (not c!1461117)) b!7954959))

(assert (= (and d!2376956 res!3153954) b!7954960))

(assert (= (and b!7954960 res!3153955) b!7954961))

(declare-fun m!8337826 () Bool)

(assert (=> b!7954959 m!8337826))

(declare-fun m!8337828 () Bool)

(assert (=> b!7954960 m!8337828))

(assert (=> b!7954960 m!8337192))

(declare-fun m!8337830 () Bool)

(assert (=> b!7954960 m!8337830))

(declare-fun m!8337832 () Bool)

(assert (=> d!2376956 m!8337832))

(assert (=> d!2376956 m!8337808))

(declare-fun m!8337834 () Bool)

(assert (=> d!2376956 m!8337834))

(assert (=> b!7954106 d!2376956))

(declare-fun d!2376958 () Bool)

(assert (=> d!2376958 (= (head!16231 call!737440) (h!81032 call!737440))))

(assert (=> b!7954106 d!2376958))

(declare-fun d!2376960 () Bool)

(assert (=> d!2376960 (= (head!16231 (getSuffix!3782 input!7927 lt!2701382)) (h!81032 (getSuffix!3782 input!7927 lt!2701382)))))

(assert (=> b!7954106 d!2376960))

(declare-fun d!2376962 () Bool)

(assert (=> d!2376962 (= (tail!15768 call!737440) (t!390451 call!737440))))

(assert (=> b!7954106 d!2376962))

(declare-fun d!2376964 () Bool)

(declare-fun lt!2701632 () Int)

(assert (=> d!2376964 (>= lt!2701632 0)))

(declare-fun e!4692188 () Int)

(assert (=> d!2376964 (= lt!2701632 e!4692188)))

(declare-fun c!1461118 () Bool)

(assert (=> d!2376964 (= c!1461118 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2376964 (= (size!43415 lt!2701382) lt!2701632)))

(declare-fun b!7954962 () Bool)

(assert (=> b!7954962 (= e!4692188 0)))

(declare-fun b!7954963 () Bool)

(assert (=> b!7954963 (= e!4692188 (+ 1 (size!43415 (t!390451 lt!2701382))))))

(assert (= (and d!2376964 c!1461118) b!7954962))

(assert (= (and d!2376964 (not c!1461118)) b!7954963))

(declare-fun m!8337836 () Bool)

(assert (=> b!7954963 m!8337836))

(assert (=> b!7954106 d!2376964))

(declare-fun e!4692190 () Bool)

(declare-fun lt!2701633 () List!74708)

(declare-fun b!7954967 () Bool)

(assert (=> b!7954967 (= e!4692190 (or (not (= lt!2701513 Nil!74584)) (= lt!2701633 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584)))))))

(declare-fun e!4692189 () List!74708)

(declare-fun b!7954965 () Bool)

(assert (=> b!7954965 (= e!4692189 (Cons!74584 (h!81032 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584))) (++!18349 (t!390451 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584))) lt!2701513)))))

(declare-fun b!7954964 () Bool)

(assert (=> b!7954964 (= e!4692189 lt!2701513)))

(declare-fun b!7954966 () Bool)

(declare-fun res!3153957 () Bool)

(assert (=> b!7954966 (=> (not res!3153957) (not e!4692190))))

(assert (=> b!7954966 (= res!3153957 (= (size!43415 lt!2701633) (+ (size!43415 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584))) (size!43415 lt!2701513))))))

(declare-fun d!2376966 () Bool)

(assert (=> d!2376966 e!4692190))

(declare-fun res!3153956 () Bool)

(assert (=> d!2376966 (=> (not res!3153956) (not e!4692190))))

(assert (=> d!2376966 (= res!3153956 (= (content!15836 lt!2701633) ((_ map or) (content!15836 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584))) (content!15836 lt!2701513))))))

(assert (=> d!2376966 (= lt!2701633 e!4692189)))

(declare-fun c!1461119 () Bool)

(assert (=> d!2376966 (= c!1461119 ((_ is Nil!74584) (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584))))))

(assert (=> d!2376966 (= (++!18349 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584)) lt!2701513) lt!2701633)))

(assert (= (and d!2376966 c!1461119) b!7954964))

(assert (= (and d!2376966 (not c!1461119)) b!7954965))

(assert (= (and d!2376966 res!3153956) b!7954966))

(assert (= (and b!7954966 res!3153957) b!7954967))

(declare-fun m!8337838 () Bool)

(assert (=> b!7954965 m!8337838))

(declare-fun m!8337840 () Bool)

(assert (=> b!7954966 m!8337840))

(assert (=> b!7954966 m!8337200))

(declare-fun m!8337842 () Bool)

(assert (=> b!7954966 m!8337842))

(declare-fun m!8337844 () Bool)

(assert (=> b!7954966 m!8337844))

(declare-fun m!8337846 () Bool)

(assert (=> d!2376966 m!8337846))

(assert (=> d!2376966 m!8337200))

(declare-fun m!8337848 () Bool)

(assert (=> d!2376966 m!8337848))

(declare-fun m!8337850 () Bool)

(assert (=> d!2376966 m!8337850))

(assert (=> b!7954106 d!2376966))

(declare-fun d!2376968 () Bool)

(assert (=> d!2376968 (= (++!18349 (++!18349 lt!2701382 (Cons!74584 lt!2701524 Nil!74584)) lt!2701513) input!7927)))

(declare-fun lt!2701634 () Unit!169904)

(assert (=> d!2376968 (= lt!2701634 (choose!59954 lt!2701382 lt!2701524 lt!2701513 input!7927))))

(assert (=> d!2376968 (= (++!18349 lt!2701382 (Cons!74584 lt!2701524 lt!2701513)) input!7927)))

(assert (=> d!2376968 (= (lemmaMoveElementToOtherListKeepsConcatEq!3523 lt!2701382 lt!2701524 lt!2701513 input!7927) lt!2701634)))

(declare-fun bs!1969630 () Bool)

(assert (= bs!1969630 d!2376968))

(assert (=> bs!1969630 m!8337200))

(assert (=> bs!1969630 m!8337200))

(assert (=> bs!1969630 m!8337208))

(declare-fun m!8337852 () Bool)

(assert (=> bs!1969630 m!8337852))

(declare-fun m!8337854 () Bool)

(assert (=> bs!1969630 m!8337854))

(assert (=> b!7954106 d!2376968))

(assert (=> b!7954106 d!2376634))

(declare-fun d!2376970 () Bool)

(declare-fun e!4692193 () Bool)

(assert (=> d!2376970 e!4692193))

(declare-fun res!3153959 () Bool)

(assert (=> d!2376970 (=> res!3153959 e!4692193)))

(declare-fun lt!2701635 () Bool)

(assert (=> d!2376970 (= res!3153959 (not lt!2701635))))

(declare-fun e!4692191 () Bool)

(assert (=> d!2376970 (= lt!2701635 e!4692191)))

(declare-fun res!3153958 () Bool)

(assert (=> d!2376970 (=> res!3153958 e!4692191)))

(assert (=> d!2376970 (= res!3153958 ((_ is Nil!74584) (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584))))))

(assert (=> d!2376970 (= (isPrefix!6579 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)) input!7927) lt!2701635)))

(declare-fun b!7954968 () Bool)

(declare-fun e!4692192 () Bool)

(assert (=> b!7954968 (= e!4692191 e!4692192)))

(declare-fun res!3153960 () Bool)

(assert (=> b!7954968 (=> (not res!3153960) (not e!4692192))))

(assert (=> b!7954968 (= res!3153960 (not ((_ is Nil!74584) input!7927)))))

(declare-fun b!7954971 () Bool)

(assert (=> b!7954971 (= e!4692193 (>= (size!43415 input!7927) (size!43415 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584)))))))

(declare-fun b!7954969 () Bool)

(declare-fun res!3153961 () Bool)

(assert (=> b!7954969 (=> (not res!3153961) (not e!4692192))))

(assert (=> b!7954969 (= res!3153961 (= (head!16231 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584))) (head!16231 input!7927)))))

(declare-fun b!7954970 () Bool)

(assert (=> b!7954970 (= e!4692192 (isPrefix!6579 (tail!15768 (++!18349 lt!2701382 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701382)) Nil!74584))) (tail!15768 input!7927)))))

(assert (= (and d!2376970 (not res!3153958)) b!7954968))

(assert (= (and b!7954968 res!3153960) b!7954969))

(assert (= (and b!7954969 res!3153961) b!7954970))

(assert (= (and d!2376970 (not res!3153959)) b!7954971))

(assert (=> b!7954971 m!8336830))

(assert (=> b!7954971 m!8337196))

(declare-fun m!8337856 () Bool)

(assert (=> b!7954971 m!8337856))

(assert (=> b!7954969 m!8337196))

(declare-fun m!8337858 () Bool)

(assert (=> b!7954969 m!8337858))

(assert (=> b!7954969 m!8336880))

(assert (=> b!7954970 m!8337196))

(declare-fun m!8337860 () Bool)

(assert (=> b!7954970 m!8337860))

(assert (=> b!7954970 m!8336882))

(assert (=> b!7954970 m!8337860))

(assert (=> b!7954970 m!8336882))

(declare-fun m!8337862 () Bool)

(assert (=> b!7954970 m!8337862))

(assert (=> b!7954106 d!2376970))

(declare-fun d!2376972 () Bool)

(assert (=> d!2376972 (<= (size!43415 lt!2701382) (size!43415 input!7927))))

(declare-fun lt!2701636 () Unit!169904)

(assert (=> d!2376972 (= lt!2701636 (choose!59948 lt!2701382 input!7927))))

(assert (=> d!2376972 (isPrefix!6579 lt!2701382 input!7927)))

(assert (=> d!2376972 (= (lemmaIsPrefixThenSmallerEqSize!1096 lt!2701382 input!7927) lt!2701636)))

(declare-fun bs!1969631 () Bool)

(assert (= bs!1969631 d!2376972))

(assert (=> bs!1969631 m!8337192))

(assert (=> bs!1969631 m!8336830))

(declare-fun m!8337864 () Bool)

(assert (=> bs!1969631 m!8337864))

(assert (=> bs!1969631 m!8337824))

(assert (=> b!7954106 d!2376972))

(declare-fun d!2376974 () Bool)

(declare-fun lt!2701637 () List!74708)

(assert (=> d!2376974 (= (++!18349 lt!2701382 lt!2701637) input!7927)))

(declare-fun e!4692194 () List!74708)

(assert (=> d!2376974 (= lt!2701637 e!4692194)))

(declare-fun c!1461120 () Bool)

(assert (=> d!2376974 (= c!1461120 ((_ is Cons!74584) lt!2701382))))

(assert (=> d!2376974 (>= (size!43415 input!7927) (size!43415 lt!2701382))))

(assert (=> d!2376974 (= (getSuffix!3782 input!7927 lt!2701382) lt!2701637)))

(declare-fun b!7954972 () Bool)

(assert (=> b!7954972 (= e!4692194 (getSuffix!3782 (tail!15768 input!7927) (t!390451 lt!2701382)))))

(declare-fun b!7954973 () Bool)

(assert (=> b!7954973 (= e!4692194 input!7927)))

(assert (= (and d!2376974 c!1461120) b!7954972))

(assert (= (and d!2376974 (not c!1461120)) b!7954973))

(declare-fun m!8337866 () Bool)

(assert (=> d!2376974 m!8337866))

(assert (=> d!2376974 m!8336830))

(assert (=> d!2376974 m!8337192))

(assert (=> b!7954972 m!8336882))

(assert (=> b!7954972 m!8336882))

(declare-fun m!8337868 () Bool)

(assert (=> b!7954972 m!8337868))

(assert (=> b!7954106 d!2376974))

(declare-fun b!7954974 () Bool)

(declare-fun e!4692198 () Bool)

(declare-fun call!737591 () Bool)

(assert (=> b!7954974 (= e!4692198 call!737591)))

(declare-fun b!7954975 () Bool)

(declare-fun res!3153965 () Bool)

(declare-fun e!4692201 () Bool)

(assert (=> b!7954975 (=> res!3153965 e!4692201)))

(assert (=> b!7954975 (= res!3153965 (not ((_ is Concat!30478) (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(declare-fun e!4692199 () Bool)

(assert (=> b!7954975 (= e!4692199 e!4692201)))

(declare-fun b!7954976 () Bool)

(declare-fun e!4692200 () Bool)

(declare-fun call!737592 () Bool)

(assert (=> b!7954976 (= e!4692200 call!737592)))

(declare-fun bm!737585 () Bool)

(declare-fun call!737590 () Bool)

(assert (=> bm!737585 (= call!737590 call!737591)))

(declare-fun b!7954977 () Bool)

(declare-fun e!4692195 () Bool)

(assert (=> b!7954977 (= e!4692195 e!4692199)))

(declare-fun c!1461121 () Bool)

(assert (=> b!7954977 (= c!1461121 ((_ is Union!21479) (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun bm!737586 () Bool)

(assert (=> bm!737586 (= call!737592 (validRegex!11783 (ite c!1461121 (regTwo!43471 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))) (regTwo!43470 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))))

(declare-fun b!7954978 () Bool)

(declare-fun e!4692196 () Bool)

(assert (=> b!7954978 (= e!4692196 e!4692195)))

(declare-fun c!1461122 () Bool)

(assert (=> b!7954978 (= c!1461122 ((_ is Star!21479) (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun b!7954979 () Bool)

(declare-fun res!3153963 () Bool)

(assert (=> b!7954979 (=> (not res!3153963) (not e!4692200))))

(assert (=> b!7954979 (= res!3153963 call!737590)))

(assert (=> b!7954979 (= e!4692199 e!4692200)))

(declare-fun d!2376976 () Bool)

(declare-fun res!3153964 () Bool)

(assert (=> d!2376976 (=> res!3153964 e!4692196)))

(assert (=> d!2376976 (= res!3153964 ((_ is ElementMatch!21479) (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(assert (=> d!2376976 (= (validRegex!11783 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))) e!4692196)))

(declare-fun bm!737587 () Bool)

(assert (=> bm!737587 (= call!737591 (validRegex!11783 (ite c!1461122 (reg!21808 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))) (ite c!1461121 (regOne!43471 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))) (regOne!43470 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))))

(declare-fun b!7954980 () Bool)

(declare-fun e!4692197 () Bool)

(assert (=> b!7954980 (= e!4692201 e!4692197)))

(declare-fun res!3153962 () Bool)

(assert (=> b!7954980 (=> (not res!3153962) (not e!4692197))))

(assert (=> b!7954980 (= res!3153962 call!737590)))

(declare-fun b!7954981 () Bool)

(assert (=> b!7954981 (= e!4692195 e!4692198)))

(declare-fun res!3153966 () Bool)

(assert (=> b!7954981 (= res!3153966 (not (nullable!9580 (reg!21808 (ite c!1461006 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (ite c!1461005 (regOne!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regOne!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))))

(assert (=> b!7954981 (=> (not res!3153966) (not e!4692198))))

(declare-fun b!7954982 () Bool)

(assert (=> b!7954982 (= e!4692197 call!737592)))

(assert (= (and d!2376976 (not res!3153964)) b!7954978))

(assert (= (and b!7954978 c!1461122) b!7954981))

(assert (= (and b!7954978 (not c!1461122)) b!7954977))

(assert (= (and b!7954981 res!3153966) b!7954974))

(assert (= (and b!7954977 c!1461121) b!7954979))

(assert (= (and b!7954977 (not c!1461121)) b!7954975))

(assert (= (and b!7954979 res!3153963) b!7954976))

(assert (= (and b!7954975 (not res!3153965)) b!7954980))

(assert (= (and b!7954980 res!3153962) b!7954982))

(assert (= (or b!7954976 b!7954982) bm!737586))

(assert (= (or b!7954979 b!7954980) bm!737585))

(assert (= (or b!7954974 bm!737585) bm!737587))

(declare-fun m!8337870 () Bool)

(assert (=> bm!737586 m!8337870))

(declare-fun m!8337872 () Bool)

(assert (=> bm!737587 m!8337872))

(declare-fun m!8337874 () Bool)

(assert (=> b!7954981 m!8337874))

(assert (=> bm!737512 d!2376976))

(declare-fun d!2376978 () Bool)

(declare-fun lt!2701638 () Int)

(assert (=> d!2376978 (>= lt!2701638 0)))

(declare-fun e!4692202 () Int)

(assert (=> d!2376978 (= lt!2701638 e!4692202)))

(declare-fun c!1461123 () Bool)

(assert (=> d!2376978 (= c!1461123 ((_ is Nil!74584) (t!390451 lt!2701440)))))

(assert (=> d!2376978 (= (size!43415 (t!390451 lt!2701440)) lt!2701638)))

(declare-fun b!7954983 () Bool)

(assert (=> b!7954983 (= e!4692202 0)))

(declare-fun b!7954984 () Bool)

(assert (=> b!7954984 (= e!4692202 (+ 1 (size!43415 (t!390451 (t!390451 lt!2701440)))))))

(assert (= (and d!2376978 c!1461123) b!7954983))

(assert (= (and d!2376978 (not c!1461123)) b!7954984))

(declare-fun m!8337876 () Bool)

(assert (=> b!7954984 m!8337876))

(assert (=> b!7954150 d!2376978))

(declare-fun lt!2701639 () List!74708)

(declare-fun b!7954988 () Bool)

(declare-fun e!4692204 () Bool)

(assert (=> b!7954988 (= e!4692204 (or (not (= (Cons!74584 lt!2701250 Nil!74584) Nil!74584)) (= lt!2701639 (t!390451 (t!390451 testedP!447)))))))

(declare-fun b!7954986 () Bool)

(declare-fun e!4692203 () List!74708)

(assert (=> b!7954986 (= e!4692203 (Cons!74584 (h!81032 (t!390451 (t!390451 testedP!447))) (++!18349 (t!390451 (t!390451 (t!390451 testedP!447))) (Cons!74584 lt!2701250 Nil!74584))))))

(declare-fun b!7954985 () Bool)

(assert (=> b!7954985 (= e!4692203 (Cons!74584 lt!2701250 Nil!74584))))

(declare-fun b!7954987 () Bool)

(declare-fun res!3153968 () Bool)

(assert (=> b!7954987 (=> (not res!3153968) (not e!4692204))))

(assert (=> b!7954987 (= res!3153968 (= (size!43415 lt!2701639) (+ (size!43415 (t!390451 (t!390451 testedP!447))) (size!43415 (Cons!74584 lt!2701250 Nil!74584)))))))

(declare-fun d!2376980 () Bool)

(assert (=> d!2376980 e!4692204))

(declare-fun res!3153967 () Bool)

(assert (=> d!2376980 (=> (not res!3153967) (not e!4692204))))

(assert (=> d!2376980 (= res!3153967 (= (content!15836 lt!2701639) ((_ map or) (content!15836 (t!390451 (t!390451 testedP!447))) (content!15836 (Cons!74584 lt!2701250 Nil!74584)))))))

(assert (=> d!2376980 (= lt!2701639 e!4692203)))

(declare-fun c!1461124 () Bool)

(assert (=> d!2376980 (= c!1461124 ((_ is Nil!74584) (t!390451 (t!390451 testedP!447))))))

(assert (=> d!2376980 (= (++!18349 (t!390451 (t!390451 testedP!447)) (Cons!74584 lt!2701250 Nil!74584)) lt!2701639)))

(assert (= (and d!2376980 c!1461124) b!7954985))

(assert (= (and d!2376980 (not c!1461124)) b!7954986))

(assert (= (and d!2376980 res!3153967) b!7954987))

(assert (= (and b!7954987 res!3153968) b!7954988))

(declare-fun m!8337878 () Bool)

(assert (=> b!7954986 m!8337878))

(declare-fun m!8337880 () Bool)

(assert (=> b!7954987 m!8337880))

(assert (=> b!7954987 m!8337286))

(assert (=> b!7954987 m!8337026))

(declare-fun m!8337882 () Bool)

(assert (=> d!2376980 m!8337882))

(declare-fun m!8337884 () Bool)

(assert (=> d!2376980 m!8337884))

(assert (=> d!2376980 m!8337032))

(assert (=> b!7954302 d!2376980))

(assert (=> bm!737483 d!2376958))

(declare-fun d!2376982 () Bool)

(declare-fun c!1461125 () Bool)

(assert (=> d!2376982 (= c!1461125 ((_ is Nil!74584) lt!2701537))))

(declare-fun e!4692205 () (InoxSet C!43296))

(assert (=> d!2376982 (= (content!15836 lt!2701537) e!4692205)))

(declare-fun b!7954989 () Bool)

(assert (=> b!7954989 (= e!4692205 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954990 () Bool)

(assert (=> b!7954990 (= e!4692205 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701537) true) (content!15836 (t!390451 lt!2701537))))))

(assert (= (and d!2376982 c!1461125) b!7954989))

(assert (= (and d!2376982 (not c!1461125)) b!7954990))

(declare-fun m!8337886 () Bool)

(assert (=> b!7954990 m!8337886))

(declare-fun m!8337888 () Bool)

(assert (=> b!7954990 m!8337888))

(assert (=> d!2376724 d!2376982))

(assert (=> d!2376724 d!2376764))

(declare-fun d!2376984 () Bool)

(declare-fun c!1461126 () Bool)

(assert (=> d!2376984 (= c!1461126 ((_ is Nil!74584) lt!2701251))))

(declare-fun e!4692206 () (InoxSet C!43296))

(assert (=> d!2376984 (= (content!15836 lt!2701251) e!4692206)))

(declare-fun b!7954991 () Bool)

(assert (=> b!7954991 (= e!4692206 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954992 () Bool)

(assert (=> b!7954992 (= e!4692206 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701251) true) (content!15836 (t!390451 lt!2701251))))))

(assert (= (and d!2376984 c!1461126) b!7954991))

(assert (= (and d!2376984 (not c!1461126)) b!7954992))

(declare-fun m!8337890 () Bool)

(assert (=> b!7954992 m!8337890))

(declare-fun m!8337892 () Bool)

(assert (=> b!7954992 m!8337892))

(assert (=> d!2376724 d!2376984))

(declare-fun d!2376986 () Bool)

(declare-fun c!1461127 () Bool)

(assert (=> d!2376986 (= c!1461127 ((_ is Nil!74584) lt!2701499))))

(declare-fun e!4692207 () (InoxSet C!43296))

(assert (=> d!2376986 (= (content!15836 lt!2701499) e!4692207)))

(declare-fun b!7954993 () Bool)

(assert (=> b!7954993 (= e!4692207 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954994 () Bool)

(assert (=> b!7954994 (= e!4692207 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701499) true) (content!15836 (t!390451 lt!2701499))))))

(assert (= (and d!2376986 c!1461127) b!7954993))

(assert (= (and d!2376986 (not c!1461127)) b!7954994))

(declare-fun m!8337894 () Bool)

(assert (=> b!7954994 m!8337894))

(declare-fun m!8337896 () Bool)

(assert (=> b!7954994 m!8337896))

(assert (=> d!2376704 d!2376986))

(declare-fun d!2376988 () Bool)

(declare-fun c!1461128 () Bool)

(assert (=> d!2376988 (= c!1461128 ((_ is Nil!74584) (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))

(declare-fun e!4692208 () (InoxSet C!43296))

(assert (=> d!2376988 (= (content!15836 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) e!4692208)))

(declare-fun b!7954995 () Bool)

(assert (=> b!7954995 (= e!4692208 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954996 () Bool)

(assert (=> b!7954996 (= e!4692208 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) true) (content!15836 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))))

(assert (= (and d!2376988 c!1461128) b!7954995))

(assert (= (and d!2376988 (not c!1461128)) b!7954996))

(declare-fun m!8337898 () Bool)

(assert (=> b!7954996 m!8337898))

(declare-fun m!8337900 () Bool)

(assert (=> b!7954996 m!8337900))

(assert (=> d!2376704 d!2376988))

(declare-fun d!2376990 () Bool)

(declare-fun c!1461129 () Bool)

(assert (=> d!2376990 (= c!1461129 ((_ is Nil!74584) lt!2701364))))

(declare-fun e!4692209 () (InoxSet C!43296))

(assert (=> d!2376990 (= (content!15836 lt!2701364) e!4692209)))

(declare-fun b!7954997 () Bool)

(assert (=> b!7954997 (= e!4692209 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7954998 () Bool)

(assert (=> b!7954998 (= e!4692209 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701364) true) (content!15836 (t!390451 lt!2701364))))))

(assert (= (and d!2376990 c!1461129) b!7954997))

(assert (= (and d!2376990 (not c!1461129)) b!7954998))

(declare-fun m!8337902 () Bool)

(assert (=> b!7954998 m!8337902))

(declare-fun m!8337904 () Bool)

(assert (=> b!7954998 m!8337904))

(assert (=> d!2376704 d!2376990))

(declare-fun d!2376992 () Bool)

(assert (=> d!2376992 (= (head!16231 (tail!15768 testedP!447)) (h!81032 (tail!15768 testedP!447)))))

(assert (=> b!7954310 d!2376992))

(declare-fun d!2376994 () Bool)

(assert (=> d!2376994 (= (head!16231 (tail!15768 input!7927)) (h!81032 (tail!15768 input!7927)))))

(assert (=> b!7954310 d!2376994))

(declare-fun d!2376996 () Bool)

(declare-fun c!1461130 () Bool)

(assert (=> d!2376996 (= c!1461130 ((_ is Nil!74584) lt!2701552))))

(declare-fun e!4692210 () (InoxSet C!43296))

(assert (=> d!2376996 (= (content!15836 lt!2701552) e!4692210)))

(declare-fun b!7954999 () Bool)

(assert (=> b!7954999 (= e!4692210 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955000 () Bool)

(assert (=> b!7955000 (= e!4692210 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701552) true) (content!15836 (t!390451 lt!2701552))))))

(assert (= (and d!2376996 c!1461130) b!7954999))

(assert (= (and d!2376996 (not c!1461130)) b!7955000))

(declare-fun m!8337906 () Bool)

(assert (=> b!7955000 m!8337906))

(declare-fun m!8337908 () Bool)

(assert (=> b!7955000 m!8337908))

(assert (=> d!2376784 d!2376996))

(assert (=> d!2376784 d!2376764))

(declare-fun d!2376998 () Bool)

(declare-fun c!1461131 () Bool)

(assert (=> d!2376998 (= c!1461131 ((_ is Nil!74584) lt!2701386))))

(declare-fun e!4692211 () (InoxSet C!43296))

(assert (=> d!2376998 (= (content!15836 lt!2701386) e!4692211)))

(declare-fun b!7955001 () Bool)

(assert (=> b!7955001 (= e!4692211 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955002 () Bool)

(assert (=> b!7955002 (= e!4692211 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701386) true) (content!15836 (t!390451 lt!2701386))))))

(assert (= (and d!2376998 c!1461131) b!7955001))

(assert (= (and d!2376998 (not c!1461131)) b!7955002))

(declare-fun m!8337910 () Bool)

(assert (=> b!7955002 m!8337910))

(declare-fun m!8337912 () Bool)

(assert (=> b!7955002 m!8337912))

(assert (=> d!2376784 d!2376998))

(declare-fun d!2377000 () Bool)

(declare-fun lt!2701640 () List!74708)

(assert (=> d!2377000 (= (++!18349 (t!390451 (t!390451 testedP!447)) lt!2701640) (tail!15768 (tail!15768 input!7927)))))

(declare-fun e!4692212 () List!74708)

(assert (=> d!2377000 (= lt!2701640 e!4692212)))

(declare-fun c!1461132 () Bool)

(assert (=> d!2377000 (= c!1461132 ((_ is Cons!74584) (t!390451 (t!390451 testedP!447))))))

(assert (=> d!2377000 (>= (size!43415 (tail!15768 (tail!15768 input!7927))) (size!43415 (t!390451 (t!390451 testedP!447))))))

(assert (=> d!2377000 (= (getSuffix!3782 (tail!15768 (tail!15768 input!7927)) (t!390451 (t!390451 testedP!447))) lt!2701640)))

(declare-fun b!7955003 () Bool)

(assert (=> b!7955003 (= e!4692212 (getSuffix!3782 (tail!15768 (tail!15768 (tail!15768 input!7927))) (t!390451 (t!390451 (t!390451 testedP!447)))))))

(declare-fun b!7955004 () Bool)

(assert (=> b!7955004 (= e!4692212 (tail!15768 (tail!15768 input!7927)))))

(assert (= (and d!2377000 c!1461132) b!7955003))

(assert (= (and d!2377000 (not c!1461132)) b!7955004))

(declare-fun m!8337914 () Bool)

(assert (=> d!2377000 m!8337914))

(assert (=> d!2377000 m!8337374))

(declare-fun m!8337916 () Bool)

(assert (=> d!2377000 m!8337916))

(assert (=> d!2377000 m!8337286))

(assert (=> b!7955003 m!8337374))

(declare-fun m!8337918 () Bool)

(assert (=> b!7955003 m!8337918))

(assert (=> b!7955003 m!8337918))

(declare-fun m!8337920 () Bool)

(assert (=> b!7955003 m!8337920))

(assert (=> b!7954242 d!2377000))

(declare-fun d!2377002 () Bool)

(assert (=> d!2377002 (= (tail!15768 (tail!15768 input!7927)) (t!390451 (tail!15768 input!7927)))))

(assert (=> b!7954242 d!2377002))

(declare-fun d!2377004 () Bool)

(declare-fun c!1461133 () Bool)

(assert (=> d!2377004 (= c!1461133 ((_ is Nil!74584) lt!2701533))))

(declare-fun e!4692213 () (InoxSet C!43296))

(assert (=> d!2377004 (= (content!15836 lt!2701533) e!4692213)))

(declare-fun b!7955005 () Bool)

(assert (=> b!7955005 (= e!4692213 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955006 () Bool)

(assert (=> b!7955006 (= e!4692213 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701533) true) (content!15836 (t!390451 lt!2701533))))))

(assert (= (and d!2377004 c!1461133) b!7955005))

(assert (= (and d!2377004 (not c!1461133)) b!7955006))

(declare-fun m!8337922 () Bool)

(assert (=> b!7955006 m!8337922))

(declare-fun m!8337924 () Bool)

(assert (=> b!7955006 m!8337924))

(assert (=> d!2376716 d!2377004))

(declare-fun d!2377006 () Bool)

(declare-fun c!1461134 () Bool)

(assert (=> d!2377006 (= c!1461134 ((_ is Nil!74584) (_1!38613 lt!2701370)))))

(declare-fun e!4692214 () (InoxSet C!43296))

(assert (=> d!2377006 (= (content!15836 (_1!38613 lt!2701370)) e!4692214)))

(declare-fun b!7955007 () Bool)

(assert (=> b!7955007 (= e!4692214 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955008 () Bool)

(assert (=> b!7955008 (= e!4692214 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (_1!38613 lt!2701370)) true) (content!15836 (t!390451 (_1!38613 lt!2701370)))))))

(assert (= (and d!2377006 c!1461134) b!7955007))

(assert (= (and d!2377006 (not c!1461134)) b!7955008))

(declare-fun m!8337926 () Bool)

(assert (=> b!7955008 m!8337926))

(declare-fun m!8337928 () Bool)

(assert (=> b!7955008 m!8337928))

(assert (=> d!2376716 d!2377006))

(declare-fun d!2377008 () Bool)

(declare-fun c!1461135 () Bool)

(assert (=> d!2377008 (= c!1461135 ((_ is Nil!74584) (_2!38613 lt!2701370)))))

(declare-fun e!4692215 () (InoxSet C!43296))

(assert (=> d!2377008 (= (content!15836 (_2!38613 lt!2701370)) e!4692215)))

(declare-fun b!7955009 () Bool)

(assert (=> b!7955009 (= e!4692215 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955010 () Bool)

(assert (=> b!7955010 (= e!4692215 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (_2!38613 lt!2701370)) true) (content!15836 (t!390451 (_2!38613 lt!2701370)))))))

(assert (= (and d!2377008 c!1461135) b!7955009))

(assert (= (and d!2377008 (not c!1461135)) b!7955010))

(declare-fun m!8337930 () Bool)

(assert (=> b!7955010 m!8337930))

(declare-fun m!8337932 () Bool)

(assert (=> b!7955010 m!8337932))

(assert (=> d!2376716 d!2377008))

(declare-fun b!7955011 () Bool)

(declare-fun e!4692219 () Bool)

(declare-fun call!737594 () Bool)

(assert (=> b!7955011 (= e!4692219 call!737594)))

(declare-fun b!7955012 () Bool)

(declare-fun res!3153972 () Bool)

(declare-fun e!4692222 () Bool)

(assert (=> b!7955012 (=> res!3153972 e!4692222)))

(assert (=> b!7955012 (= res!3153972 (not ((_ is Concat!30478) (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286)))))))

(declare-fun e!4692220 () Bool)

(assert (=> b!7955012 (= e!4692220 e!4692222)))

(declare-fun b!7955013 () Bool)

(declare-fun e!4692221 () Bool)

(declare-fun call!737595 () Bool)

(assert (=> b!7955013 (= e!4692221 call!737595)))

(declare-fun bm!737588 () Bool)

(declare-fun call!737593 () Bool)

(assert (=> bm!737588 (= call!737593 call!737594)))

(declare-fun b!7955014 () Bool)

(declare-fun e!4692216 () Bool)

(assert (=> b!7955014 (= e!4692216 e!4692220)))

(declare-fun c!1461136 () Bool)

(assert (=> b!7955014 (= c!1461136 ((_ is Union!21479) (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))

(declare-fun bm!737589 () Bool)

(assert (=> bm!737589 (= call!737595 (validRegex!11783 (ite c!1461136 (regTwo!43471 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))) (regTwo!43470 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))))

(declare-fun b!7955015 () Bool)

(declare-fun e!4692217 () Bool)

(assert (=> b!7955015 (= e!4692217 e!4692216)))

(declare-fun c!1461137 () Bool)

(assert (=> b!7955015 (= c!1461137 ((_ is Star!21479) (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))

(declare-fun b!7955016 () Bool)

(declare-fun res!3153970 () Bool)

(assert (=> b!7955016 (=> (not res!3153970) (not e!4692221))))

(assert (=> b!7955016 (= res!3153970 call!737593)))

(assert (=> b!7955016 (= e!4692220 e!4692221)))

(declare-fun d!2377010 () Bool)

(declare-fun res!3153971 () Bool)

(assert (=> d!2377010 (=> res!3153971 e!4692217)))

(assert (=> d!2377010 (= res!3153971 ((_ is ElementMatch!21479) (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))

(assert (=> d!2377010 (= (validRegex!11783 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))) e!4692217)))

(declare-fun bm!737590 () Bool)

(assert (=> bm!737590 (= call!737594 (validRegex!11783 (ite c!1461137 (reg!21808 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))) (ite c!1461136 (regOne!43471 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))) (regOne!43470 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286)))))))))

(declare-fun b!7955017 () Bool)

(declare-fun e!4692218 () Bool)

(assert (=> b!7955017 (= e!4692222 e!4692218)))

(declare-fun res!3153969 () Bool)

(assert (=> b!7955017 (=> (not res!3153969) (not e!4692218))))

(assert (=> b!7955017 (= res!3153969 call!737593)))

(declare-fun b!7955018 () Bool)

(assert (=> b!7955018 (= e!4692216 e!4692219)))

(declare-fun res!3153973 () Bool)

(assert (=> b!7955018 (= res!3153973 (not (nullable!9580 (reg!21808 (ite c!1461025 (regTwo!43471 lt!2701286) (regTwo!43470 lt!2701286))))))))

(assert (=> b!7955018 (=> (not res!3153973) (not e!4692219))))

(declare-fun b!7955019 () Bool)

(assert (=> b!7955019 (= e!4692218 call!737595)))

(assert (= (and d!2377010 (not res!3153971)) b!7955015))

(assert (= (and b!7955015 c!1461137) b!7955018))

(assert (= (and b!7955015 (not c!1461137)) b!7955014))

(assert (= (and b!7955018 res!3153973) b!7955011))

(assert (= (and b!7955014 c!1461136) b!7955016))

(assert (= (and b!7955014 (not c!1461136)) b!7955012))

(assert (= (and b!7955016 res!3153970) b!7955013))

(assert (= (and b!7955012 (not res!3153972)) b!7955017))

(assert (= (and b!7955017 res!3153969) b!7955019))

(assert (= (or b!7955013 b!7955019) bm!737589))

(assert (= (or b!7955016 b!7955017) bm!737588))

(assert (= (or b!7955011 bm!737588) bm!737590))

(declare-fun m!8337934 () Bool)

(assert (=> bm!737589 m!8337934))

(declare-fun m!8337936 () Bool)

(assert (=> bm!737590 m!8337936))

(declare-fun m!8337938 () Bool)

(assert (=> b!7955018 m!8337938))

(assert (=> bm!737521 d!2377010))

(assert (=> bm!737485 d!2376962))

(declare-fun d!2377012 () Bool)

(declare-fun e!4692225 () Bool)

(assert (=> d!2377012 e!4692225))

(declare-fun res!3153975 () Bool)

(assert (=> d!2377012 (=> res!3153975 e!4692225)))

(declare-fun lt!2701641 () Bool)

(assert (=> d!2377012 (= res!3153975 (not lt!2701641))))

(declare-fun e!4692223 () Bool)

(assert (=> d!2377012 (= lt!2701641 e!4692223)))

(declare-fun res!3153974 () Bool)

(assert (=> d!2377012 (=> res!3153974 e!4692223)))

(assert (=> d!2377012 (= res!3153974 ((_ is Nil!74584) (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(assert (=> d!2377012 (= (isPrefix!6579 (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) (tail!15768 input!7927)) lt!2701641)))

(declare-fun b!7955020 () Bool)

(declare-fun e!4692224 () Bool)

(assert (=> b!7955020 (= e!4692223 e!4692224)))

(declare-fun res!3153976 () Bool)

(assert (=> b!7955020 (=> (not res!3153976) (not e!4692224))))

(assert (=> b!7955020 (= res!3153976 (not ((_ is Nil!74584) (tail!15768 input!7927))))))

(declare-fun b!7955023 () Bool)

(assert (=> b!7955023 (= e!4692225 (>= (size!43415 (tail!15768 input!7927)) (size!43415 (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))))

(declare-fun b!7955021 () Bool)

(declare-fun res!3153977 () Bool)

(assert (=> b!7955021 (=> (not res!3153977) (not e!4692224))))

(assert (=> b!7955021 (= res!3153977 (= (head!16231 (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))) (head!16231 (tail!15768 input!7927))))))

(declare-fun b!7955022 () Bool)

(assert (=> b!7955022 (= e!4692224 (isPrefix!6579 (tail!15768 (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))) (tail!15768 (tail!15768 input!7927))))))

(assert (= (and d!2377012 (not res!3153974)) b!7955020))

(assert (= (and b!7955020 res!3153976) b!7955021))

(assert (= (and b!7955021 res!3153977) b!7955022))

(assert (= (and d!2377012 (not res!3153975)) b!7955023))

(assert (=> b!7955023 m!8336882))

(assert (=> b!7955023 m!8337370))

(assert (=> b!7955023 m!8337138))

(declare-fun m!8337940 () Bool)

(assert (=> b!7955023 m!8337940))

(assert (=> b!7955021 m!8337138))

(declare-fun m!8337942 () Bool)

(assert (=> b!7955021 m!8337942))

(assert (=> b!7955021 m!8336882))

(assert (=> b!7955021 m!8337492))

(assert (=> b!7955022 m!8337138))

(declare-fun m!8337944 () Bool)

(assert (=> b!7955022 m!8337944))

(assert (=> b!7955022 m!8336882))

(assert (=> b!7955022 m!8337374))

(assert (=> b!7955022 m!8337944))

(assert (=> b!7955022 m!8337374))

(declare-fun m!8337946 () Bool)

(assert (=> b!7955022 m!8337946))

(assert (=> b!7954077 d!2377012))

(declare-fun d!2377014 () Bool)

(assert (=> d!2377014 (= (tail!15768 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) (t!390451 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(assert (=> b!7954077 d!2377014))

(assert (=> b!7954077 d!2376782))

(assert (=> b!7954308 d!2376946))

(declare-fun d!2377016 () Bool)

(declare-fun lt!2701642 () Int)

(assert (=> d!2377016 (>= lt!2701642 0)))

(declare-fun e!4692226 () Int)

(assert (=> d!2377016 (= lt!2701642 e!4692226)))

(declare-fun c!1461138 () Bool)

(assert (=> d!2377016 (= c!1461138 ((_ is Nil!74584) (t!390451 (Cons!74584 lt!2701250 Nil!74584))))))

(assert (=> d!2377016 (= (size!43415 (t!390451 (Cons!74584 lt!2701250 Nil!74584))) lt!2701642)))

(declare-fun b!7955024 () Bool)

(assert (=> b!7955024 (= e!4692226 0)))

(declare-fun b!7955025 () Bool)

(assert (=> b!7955025 (= e!4692226 (+ 1 (size!43415 (t!390451 (t!390451 (Cons!74584 lt!2701250 Nil!74584))))))))

(assert (= (and d!2377016 c!1461138) b!7955024))

(assert (= (and d!2377016 (not c!1461138)) b!7955025))

(declare-fun m!8337948 () Bool)

(assert (=> b!7955025 m!8337948))

(assert (=> b!7954152 d!2377016))

(declare-fun b!7955026 () Bool)

(declare-fun e!4692230 () Bool)

(declare-fun call!737597 () Bool)

(assert (=> b!7955026 (= e!4692230 call!737597)))

(declare-fun b!7955027 () Bool)

(declare-fun res!3153981 () Bool)

(declare-fun e!4692233 () Bool)

(assert (=> b!7955027 (=> res!3153981 e!4692233)))

(assert (=> b!7955027 (= res!3153981 (not ((_ is Concat!30478) (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263)))))))

(declare-fun e!4692231 () Bool)

(assert (=> b!7955027 (= e!4692231 e!4692233)))

(declare-fun b!7955028 () Bool)

(declare-fun e!4692232 () Bool)

(declare-fun call!737598 () Bool)

(assert (=> b!7955028 (= e!4692232 call!737598)))

(declare-fun bm!737591 () Bool)

(declare-fun call!737596 () Bool)

(assert (=> bm!737591 (= call!737596 call!737597)))

(declare-fun b!7955029 () Bool)

(declare-fun e!4692227 () Bool)

(assert (=> b!7955029 (= e!4692227 e!4692231)))

(declare-fun c!1461139 () Bool)

(assert (=> b!7955029 (= c!1461139 ((_ is Union!21479) (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))

(declare-fun bm!737592 () Bool)

(assert (=> bm!737592 (= call!737598 (validRegex!11783 (ite c!1461139 (regTwo!43471 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))) (regTwo!43470 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))))

(declare-fun b!7955030 () Bool)

(declare-fun e!4692228 () Bool)

(assert (=> b!7955030 (= e!4692228 e!4692227)))

(declare-fun c!1461140 () Bool)

(assert (=> b!7955030 (= c!1461140 ((_ is Star!21479) (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))

(declare-fun b!7955031 () Bool)

(declare-fun res!3153979 () Bool)

(assert (=> b!7955031 (=> (not res!3153979) (not e!4692232))))

(assert (=> b!7955031 (= res!3153979 call!737596)))

(assert (=> b!7955031 (= e!4692231 e!4692232)))

(declare-fun d!2377018 () Bool)

(declare-fun res!3153980 () Bool)

(assert (=> d!2377018 (=> res!3153980 e!4692228)))

(assert (=> d!2377018 (= res!3153980 ((_ is ElementMatch!21479) (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))

(assert (=> d!2377018 (= (validRegex!11783 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))) e!4692228)))

(declare-fun bm!737593 () Bool)

(assert (=> bm!737593 (= call!737597 (validRegex!11783 (ite c!1461140 (reg!21808 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))) (ite c!1461139 (regOne!43471 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))) (regOne!43470 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263)))))))))

(declare-fun b!7955032 () Bool)

(declare-fun e!4692229 () Bool)

(assert (=> b!7955032 (= e!4692233 e!4692229)))

(declare-fun res!3153978 () Bool)

(assert (=> b!7955032 (=> (not res!3153978) (not e!4692229))))

(assert (=> b!7955032 (= res!3153978 call!737596)))

(declare-fun b!7955033 () Bool)

(assert (=> b!7955033 (= e!4692227 e!4692230)))

(declare-fun res!3153982 () Bool)

(assert (=> b!7955033 (= res!3153982 (not (nullable!9580 (reg!21808 (ite c!1461007 (regTwo!43471 lt!2701263) (regTwo!43470 lt!2701263))))))))

(assert (=> b!7955033 (=> (not res!3153982) (not e!4692230))))

(declare-fun b!7955034 () Bool)

(assert (=> b!7955034 (= e!4692229 call!737598)))

(assert (= (and d!2377018 (not res!3153980)) b!7955030))

(assert (= (and b!7955030 c!1461140) b!7955033))

(assert (= (and b!7955030 (not c!1461140)) b!7955029))

(assert (= (and b!7955033 res!3153982) b!7955026))

(assert (= (and b!7955029 c!1461139) b!7955031))

(assert (= (and b!7955029 (not c!1461139)) b!7955027))

(assert (= (and b!7955031 res!3153979) b!7955028))

(assert (= (and b!7955027 (not res!3153981)) b!7955032))

(assert (= (and b!7955032 res!3153978) b!7955034))

(assert (= (or b!7955028 b!7955034) bm!737592))

(assert (= (or b!7955031 b!7955032) bm!737591))

(assert (= (or b!7955026 bm!737591) bm!737593))

(declare-fun m!8337950 () Bool)

(assert (=> bm!737592 m!8337950))

(declare-fun m!8337952 () Bool)

(assert (=> bm!737593 m!8337952))

(declare-fun m!8337954 () Bool)

(assert (=> b!7955033 m!8337954))

(assert (=> bm!737514 d!2377018))

(declare-fun b!7955035 () Bool)

(declare-fun e!4692237 () Bool)

(declare-fun call!737600 () Bool)

(assert (=> b!7955035 (= e!4692237 call!737600)))

(declare-fun b!7955036 () Bool)

(declare-fun res!3153986 () Bool)

(declare-fun e!4692240 () Bool)

(assert (=> b!7955036 (=> res!3153986 e!4692240)))

(assert (=> b!7955036 (= res!3153986 (not ((_ is Concat!30478) (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602)))))))

(declare-fun e!4692238 () Bool)

(assert (=> b!7955036 (= e!4692238 e!4692240)))

(declare-fun b!7955037 () Bool)

(declare-fun e!4692239 () Bool)

(declare-fun call!737601 () Bool)

(assert (=> b!7955037 (= e!4692239 call!737601)))

(declare-fun bm!737594 () Bool)

(declare-fun call!737599 () Bool)

(assert (=> bm!737594 (= call!737599 call!737600)))

(declare-fun b!7955038 () Bool)

(declare-fun e!4692234 () Bool)

(assert (=> b!7955038 (= e!4692234 e!4692238)))

(declare-fun c!1461141 () Bool)

(assert (=> b!7955038 (= c!1461141 ((_ is Union!21479) (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun bm!737595 () Bool)

(assert (=> bm!737595 (= call!737601 (validRegex!11783 (ite c!1461141 (regTwo!43471 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))) (regTwo!43470 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))))

(declare-fun b!7955039 () Bool)

(declare-fun e!4692235 () Bool)

(assert (=> b!7955039 (= e!4692235 e!4692234)))

(declare-fun c!1461142 () Bool)

(assert (=> b!7955039 (= c!1461142 ((_ is Star!21479) (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun b!7955040 () Bool)

(declare-fun res!3153984 () Bool)

(assert (=> b!7955040 (=> (not res!3153984) (not e!4692239))))

(assert (=> b!7955040 (= res!3153984 call!737599)))

(assert (=> b!7955040 (= e!4692238 e!4692239)))

(declare-fun d!2377020 () Bool)

(declare-fun res!3153985 () Bool)

(assert (=> d!2377020 (=> res!3153985 e!4692235)))

(assert (=> d!2377020 (= res!3153985 ((_ is ElementMatch!21479) (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))

(assert (=> d!2377020 (= (validRegex!11783 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))) e!4692235)))

(declare-fun bm!737596 () Bool)

(assert (=> bm!737596 (= call!737600 (validRegex!11783 (ite c!1461142 (reg!21808 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))) (ite c!1461141 (regOne!43471 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))) (regOne!43470 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602)))))))))

(declare-fun b!7955041 () Bool)

(declare-fun e!4692236 () Bool)

(assert (=> b!7955041 (= e!4692240 e!4692236)))

(declare-fun res!3153983 () Bool)

(assert (=> b!7955041 (=> (not res!3153983) (not e!4692236))))

(assert (=> b!7955041 (= res!3153983 call!737599)))

(declare-fun b!7955042 () Bool)

(assert (=> b!7955042 (= e!4692234 e!4692237)))

(declare-fun res!3153987 () Bool)

(assert (=> b!7955042 (= res!3153987 (not (nullable!9580 (reg!21808 (ite c!1460986 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))))

(assert (=> b!7955042 (=> (not res!3153987) (not e!4692237))))

(declare-fun b!7955043 () Bool)

(assert (=> b!7955043 (= e!4692236 call!737601)))

(assert (= (and d!2377020 (not res!3153985)) b!7955039))

(assert (= (and b!7955039 c!1461142) b!7955042))

(assert (= (and b!7955039 (not c!1461142)) b!7955038))

(assert (= (and b!7955042 res!3153987) b!7955035))

(assert (= (and b!7955038 c!1461141) b!7955040))

(assert (= (and b!7955038 (not c!1461141)) b!7955036))

(assert (= (and b!7955040 res!3153984) b!7955037))

(assert (= (and b!7955036 (not res!3153986)) b!7955041))

(assert (= (and b!7955041 res!3153983) b!7955043))

(assert (= (or b!7955037 b!7955043) bm!737595))

(assert (= (or b!7955040 b!7955041) bm!737594))

(assert (= (or b!7955035 bm!737594) bm!737596))

(declare-fun m!8337956 () Bool)

(assert (=> bm!737595 m!8337956))

(declare-fun m!8337958 () Bool)

(assert (=> bm!737596 m!8337958))

(declare-fun m!8337960 () Bool)

(assert (=> b!7955042 m!8337960))

(assert (=> bm!737495 d!2377020))

(declare-fun d!2377022 () Bool)

(declare-fun lt!2701643 () Int)

(assert (=> d!2377022 (>= lt!2701643 0)))

(declare-fun e!4692241 () Int)

(assert (=> d!2377022 (= lt!2701643 e!4692241)))

(declare-fun c!1461143 () Bool)

(assert (=> d!2377022 (= c!1461143 ((_ is Nil!74584) lt!2701499))))

(assert (=> d!2377022 (= (size!43415 lt!2701499) lt!2701643)))

(declare-fun b!7955044 () Bool)

(assert (=> b!7955044 (= e!4692241 0)))

(declare-fun b!7955045 () Bool)

(assert (=> b!7955045 (= e!4692241 (+ 1 (size!43415 (t!390451 lt!2701499))))))

(assert (= (and d!2377022 c!1461143) b!7955044))

(assert (= (and d!2377022 (not c!1461143)) b!7955045))

(declare-fun m!8337962 () Bool)

(assert (=> b!7955045 m!8337962))

(assert (=> b!7954085 d!2377022))

(declare-fun d!2377024 () Bool)

(declare-fun lt!2701644 () Int)

(assert (=> d!2377024 (>= lt!2701644 0)))

(declare-fun e!4692242 () Int)

(assert (=> d!2377024 (= lt!2701644 e!4692242)))

(declare-fun c!1461144 () Bool)

(assert (=> d!2377024 (= c!1461144 ((_ is Nil!74584) (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))

(assert (=> d!2377024 (= (size!43415 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) lt!2701644)))

(declare-fun b!7955046 () Bool)

(assert (=> b!7955046 (= e!4692242 0)))

(declare-fun b!7955047 () Bool)

(assert (=> b!7955047 (= e!4692242 (+ 1 (size!43415 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))))

(assert (= (and d!2377024 c!1461144) b!7955046))

(assert (= (and d!2377024 (not c!1461144)) b!7955047))

(declare-fun m!8337964 () Bool)

(assert (=> b!7955047 m!8337964))

(assert (=> b!7954085 d!2377024))

(declare-fun d!2377026 () Bool)

(declare-fun lt!2701645 () Int)

(assert (=> d!2377026 (>= lt!2701645 0)))

(declare-fun e!4692243 () Int)

(assert (=> d!2377026 (= lt!2701645 e!4692243)))

(declare-fun c!1461145 () Bool)

(assert (=> d!2377026 (= c!1461145 ((_ is Nil!74584) lt!2701364))))

(assert (=> d!2377026 (= (size!43415 lt!2701364) lt!2701645)))

(declare-fun b!7955048 () Bool)

(assert (=> b!7955048 (= e!4692243 0)))

(declare-fun b!7955049 () Bool)

(assert (=> b!7955049 (= e!4692243 (+ 1 (size!43415 (t!390451 lt!2701364))))))

(assert (= (and d!2377026 c!1461145) b!7955048))

(assert (= (and d!2377026 (not c!1461145)) b!7955049))

(declare-fun m!8337966 () Bool)

(assert (=> b!7955049 m!8337966))

(assert (=> b!7954085 d!2377026))

(declare-fun d!2377028 () Bool)

(declare-fun c!1461146 () Bool)

(assert (=> d!2377028 (= c!1461146 ((_ is Nil!74584) (t!390451 (tail!15768 lt!2701251))))))

(declare-fun e!4692244 () (InoxSet C!43296))

(assert (=> d!2377028 (= (content!15836 (t!390451 (tail!15768 lt!2701251))) e!4692244)))

(declare-fun b!7955050 () Bool)

(assert (=> b!7955050 (= e!4692244 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955051 () Bool)

(assert (=> b!7955051 (= e!4692244 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 (tail!15768 lt!2701251))) true) (content!15836 (t!390451 (t!390451 (tail!15768 lt!2701251))))))))

(assert (= (and d!2377028 c!1461146) b!7955050))

(assert (= (and d!2377028 (not c!1461146)) b!7955051))

(declare-fun m!8337968 () Bool)

(assert (=> b!7955051 m!8337968))

(declare-fun m!8337970 () Bool)

(assert (=> b!7955051 m!8337970))

(assert (=> b!7954280 d!2377028))

(declare-fun d!2377030 () Bool)

(declare-fun lt!2701646 () Int)

(assert (=> d!2377030 (>= lt!2701646 0)))

(declare-fun e!4692245 () Int)

(assert (=> d!2377030 (= lt!2701646 e!4692245)))

(declare-fun c!1461147 () Bool)

(assert (=> d!2377030 (= c!1461147 ((_ is Nil!74584) lt!2701533))))

(assert (=> d!2377030 (= (size!43415 lt!2701533) lt!2701646)))

(declare-fun b!7955052 () Bool)

(assert (=> b!7955052 (= e!4692245 0)))

(declare-fun b!7955053 () Bool)

(assert (=> b!7955053 (= e!4692245 (+ 1 (size!43415 (t!390451 lt!2701533))))))

(assert (= (and d!2377030 c!1461147) b!7955052))

(assert (= (and d!2377030 (not c!1461147)) b!7955053))

(declare-fun m!8337972 () Bool)

(assert (=> b!7955053 m!8337972))

(assert (=> b!7954130 d!2377030))

(assert (=> b!7954130 d!2376778))

(declare-fun d!2377032 () Bool)

(declare-fun lt!2701647 () Int)

(assert (=> d!2377032 (>= lt!2701647 0)))

(declare-fun e!4692246 () Int)

(assert (=> d!2377032 (= lt!2701647 e!4692246)))

(declare-fun c!1461148 () Bool)

(assert (=> d!2377032 (= c!1461148 ((_ is Nil!74584) (_2!38613 lt!2701370)))))

(assert (=> d!2377032 (= (size!43415 (_2!38613 lt!2701370)) lt!2701647)))

(declare-fun b!7955054 () Bool)

(assert (=> b!7955054 (= e!4692246 0)))

(declare-fun b!7955055 () Bool)

(assert (=> b!7955055 (= e!4692246 (+ 1 (size!43415 (t!390451 (_2!38613 lt!2701370)))))))

(assert (= (and d!2377032 c!1461148) b!7955054))

(assert (= (and d!2377032 (not c!1461148)) b!7955055))

(declare-fun m!8337974 () Bool)

(assert (=> b!7955055 m!8337974))

(assert (=> b!7954130 d!2377032))

(declare-fun lt!2701648 () List!74708)

(declare-fun b!7955059 () Bool)

(declare-fun e!4692248 () Bool)

(assert (=> b!7955059 (= e!4692248 (or (not (= (Cons!74584 (head!16231 lt!2701251) Nil!74584) Nil!74584)) (= lt!2701648 (t!390451 testedP!447))))))

(declare-fun b!7955057 () Bool)

(declare-fun e!4692247 () List!74708)

(assert (=> b!7955057 (= e!4692247 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) (Cons!74584 (head!16231 lt!2701251) Nil!74584))))))

(declare-fun b!7955056 () Bool)

(assert (=> b!7955056 (= e!4692247 (Cons!74584 (head!16231 lt!2701251) Nil!74584))))

(declare-fun b!7955058 () Bool)

(declare-fun res!3153989 () Bool)

(assert (=> b!7955058 (=> (not res!3153989) (not e!4692248))))

(assert (=> b!7955058 (= res!3153989 (= (size!43415 lt!2701648) (+ (size!43415 (t!390451 testedP!447)) (size!43415 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(declare-fun d!2377034 () Bool)

(assert (=> d!2377034 e!4692248))

(declare-fun res!3153988 () Bool)

(assert (=> d!2377034 (=> (not res!3153988) (not e!4692248))))

(assert (=> d!2377034 (= res!3153988 (= (content!15836 lt!2701648) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(assert (=> d!2377034 (= lt!2701648 e!4692247)))

(declare-fun c!1461149 () Bool)

(assert (=> d!2377034 (= c!1461149 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2377034 (= (++!18349 (t!390451 testedP!447) (Cons!74584 (head!16231 lt!2701251) Nil!74584)) lt!2701648)))

(assert (= (and d!2377034 c!1461149) b!7955056))

(assert (= (and d!2377034 (not c!1461149)) b!7955057))

(assert (= (and d!2377034 res!3153988) b!7955058))

(assert (= (and b!7955058 res!3153989) b!7955059))

(declare-fun m!8337976 () Bool)

(assert (=> b!7955057 m!8337976))

(declare-fun m!8337978 () Bool)

(assert (=> b!7955058 m!8337978))

(assert (=> b!7955058 m!8337010))

(assert (=> b!7955058 m!8337170))

(declare-fun m!8337980 () Bool)

(assert (=> d!2377034 m!8337980))

(assert (=> d!2377034 m!8337356))

(assert (=> d!2377034 m!8337174))

(assert (=> b!7954088 d!2377034))

(declare-fun d!2377036 () Bool)

(assert (=> d!2377036 (= (nullable!9580 (reg!21808 lt!2701286)) (nullableFct!3778 (reg!21808 lt!2701286)))))

(declare-fun bs!1969632 () Bool)

(assert (= bs!1969632 d!2377036))

(declare-fun m!8337982 () Bool)

(assert (=> bs!1969632 m!8337982))

(assert (=> b!7954259 d!2377036))

(declare-fun d!2377038 () Bool)

(declare-fun c!1461150 () Bool)

(assert (=> d!2377038 (= c!1461150 ((_ is Nil!74584) lt!2701585))))

(declare-fun e!4692249 () (InoxSet C!43296))

(assert (=> d!2377038 (= (content!15836 lt!2701585) e!4692249)))

(declare-fun b!7955060 () Bool)

(assert (=> b!7955060 (= e!4692249 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955061 () Bool)

(assert (=> b!7955061 (= e!4692249 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701585) true) (content!15836 (t!390451 lt!2701585))))))

(assert (= (and d!2377038 c!1461150) b!7955060))

(assert (= (and d!2377038 (not c!1461150)) b!7955061))

(declare-fun m!8337984 () Bool)

(assert (=> b!7955061 m!8337984))

(declare-fun m!8337986 () Bool)

(assert (=> b!7955061 m!8337986))

(assert (=> d!2376804 d!2377038))

(declare-fun d!2377040 () Bool)

(declare-fun c!1461151 () Bool)

(assert (=> d!2377040 (= c!1461151 ((_ is Nil!74584) (t!390451 testedP!447)))))

(declare-fun e!4692250 () (InoxSet C!43296))

(assert (=> d!2377040 (= (content!15836 (t!390451 testedP!447)) e!4692250)))

(declare-fun b!7955062 () Bool)

(assert (=> b!7955062 (= e!4692250 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955063 () Bool)

(assert (=> b!7955063 (= e!4692250 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 testedP!447)) true) (content!15836 (t!390451 (t!390451 testedP!447)))))))

(assert (= (and d!2377040 c!1461151) b!7955062))

(assert (= (and d!2377040 (not c!1461151)) b!7955063))

(declare-fun m!8337988 () Bool)

(assert (=> b!7955063 m!8337988))

(assert (=> b!7955063 m!8337884))

(assert (=> d!2376804 d!2377040))

(assert (=> d!2376804 d!2376770))

(declare-fun d!2377042 () Bool)

(declare-fun lt!2701649 () Int)

(assert (=> d!2377042 (>= lt!2701649 0)))

(declare-fun e!4692251 () Int)

(assert (=> d!2377042 (= lt!2701649 e!4692251)))

(declare-fun c!1461152 () Bool)

(assert (=> d!2377042 (= c!1461152 ((_ is Nil!74584) lt!2701537))))

(assert (=> d!2377042 (= (size!43415 lt!2701537) lt!2701649)))

(declare-fun b!7955064 () Bool)

(assert (=> b!7955064 (= e!4692251 0)))

(declare-fun b!7955065 () Bool)

(assert (=> b!7955065 (= e!4692251 (+ 1 (size!43415 (t!390451 lt!2701537))))))

(assert (= (and d!2377042 c!1461152) b!7955064))

(assert (= (and d!2377042 (not c!1461152)) b!7955065))

(declare-fun m!8337990 () Bool)

(assert (=> b!7955065 m!8337990))

(assert (=> b!7954143 d!2377042))

(assert (=> b!7954143 d!2376654))

(declare-fun d!2377044 () Bool)

(declare-fun lt!2701650 () Int)

(assert (=> d!2377044 (>= lt!2701650 0)))

(declare-fun e!4692252 () Int)

(assert (=> d!2377044 (= lt!2701650 e!4692252)))

(declare-fun c!1461153 () Bool)

(assert (=> d!2377044 (= c!1461153 ((_ is Nil!74584) lt!2701251))))

(assert (=> d!2377044 (= (size!43415 lt!2701251) lt!2701650)))

(declare-fun b!7955066 () Bool)

(assert (=> b!7955066 (= e!4692252 0)))

(declare-fun b!7955067 () Bool)

(assert (=> b!7955067 (= e!4692252 (+ 1 (size!43415 (t!390451 lt!2701251))))))

(assert (= (and d!2377044 c!1461153) b!7955066))

(assert (= (and d!2377044 (not c!1461153)) b!7955067))

(declare-fun m!8337992 () Bool)

(assert (=> b!7955067 m!8337992))

(assert (=> b!7954143 d!2377044))

(declare-fun d!2377046 () Bool)

(declare-fun lt!2701651 () Int)

(assert (=> d!2377046 (>= lt!2701651 0)))

(declare-fun e!4692253 () Int)

(assert (=> d!2377046 (= lt!2701651 e!4692253)))

(declare-fun c!1461154 () Bool)

(assert (=> d!2377046 (= c!1461154 ((_ is Nil!74584) (_1!38613 lt!2701519)))))

(assert (=> d!2377046 (= (size!43415 (_1!38613 lt!2701519)) lt!2701651)))

(declare-fun b!7955068 () Bool)

(assert (=> b!7955068 (= e!4692253 0)))

(declare-fun b!7955069 () Bool)

(assert (=> b!7955069 (= e!4692253 (+ 1 (size!43415 (t!390451 (_1!38613 lt!2701519)))))))

(assert (= (and d!2377046 c!1461154) b!7955068))

(assert (= (and d!2377046 (not c!1461154)) b!7955069))

(declare-fun m!8337994 () Bool)

(assert (=> b!7955069 m!8337994))

(assert (=> b!7954103 d!2377046))

(assert (=> b!7954103 d!2376964))

(declare-fun d!2377048 () Bool)

(declare-fun lt!2701652 () Int)

(assert (=> d!2377048 (>= lt!2701652 0)))

(declare-fun e!4692254 () Int)

(assert (=> d!2377048 (= lt!2701652 e!4692254)))

(declare-fun c!1461155 () Bool)

(assert (=> d!2377048 (= c!1461155 ((_ is Nil!74584) (++!18349 testedP!447 lt!2701251)))))

(assert (=> d!2377048 (= (size!43415 (++!18349 testedP!447 lt!2701251)) lt!2701652)))

(declare-fun b!7955070 () Bool)

(assert (=> b!7955070 (= e!4692254 0)))

(declare-fun b!7955071 () Bool)

(assert (=> b!7955071 (= e!4692254 (+ 1 (size!43415 (t!390451 (++!18349 testedP!447 lt!2701251)))))))

(assert (= (and d!2377048 c!1461155) b!7955070))

(assert (= (and d!2377048 (not c!1461155)) b!7955071))

(declare-fun m!8337996 () Bool)

(assert (=> b!7955071 m!8337996))

(assert (=> b!7954148 d!2377048))

(assert (=> b!7954148 d!2376654))

(declare-fun b!7955086 () Bool)

(declare-fun e!4692268 () Bool)

(declare-fun e!4692272 () Bool)

(assert (=> b!7955086 (= e!4692268 e!4692272)))

(declare-fun res!3154003 () Bool)

(declare-fun call!737607 () Bool)

(assert (=> b!7955086 (= res!3154003 call!737607)))

(assert (=> b!7955086 (=> (not res!3154003) (not e!4692272))))

(declare-fun b!7955087 () Bool)

(declare-fun e!4692267 () Bool)

(assert (=> b!7955087 (= e!4692267 e!4692268)))

(declare-fun c!1461158 () Bool)

(assert (=> b!7955087 (= c!1461158 ((_ is Union!21479) r!24602))))

(declare-fun d!2377050 () Bool)

(declare-fun lt!2701655 () Bool)

(declare-datatypes ((Option!17953 0))(
  ( (None!17952) (Some!17952 (v!55137 List!74708)) )
))
(declare-fun isEmpty!42884 (Option!17953) Bool)

(declare-fun getLanguageWitness!1144 (Regex!21479) Option!17953)

(assert (=> d!2377050 (= lt!2701655 (isEmpty!42884 (getLanguageWitness!1144 r!24602)))))

(declare-fun e!4692269 () Bool)

(assert (=> d!2377050 (= lt!2701655 e!4692269)))

(declare-fun res!3154000 () Bool)

(assert (=> d!2377050 (=> (not res!3154000) (not e!4692269))))

(assert (=> d!2377050 (= res!3154000 (not ((_ is EmptyExpr!21479) r!24602)))))

(assert (=> d!2377050 (= (lostCauseFct!567 r!24602) lt!2701655)))

(declare-fun b!7955088 () Bool)

(declare-fun e!4692271 () Bool)

(assert (=> b!7955088 (= e!4692269 e!4692271)))

(declare-fun res!3154004 () Bool)

(assert (=> b!7955088 (=> res!3154004 e!4692271)))

(assert (=> b!7955088 (= res!3154004 ((_ is EmptyLang!21479) r!24602))))

(declare-fun b!7955089 () Bool)

(declare-fun call!737606 () Bool)

(assert (=> b!7955089 (= e!4692272 call!737606)))

(declare-fun bm!737601 () Bool)

(assert (=> bm!737601 (= call!737607 (lostCause!1967 (ite c!1461158 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7955090 () Bool)

(declare-fun e!4692270 () Bool)

(assert (=> b!7955090 (= e!4692270 call!737606)))

(declare-fun b!7955091 () Bool)

(assert (=> b!7955091 (= e!4692271 e!4692267)))

(declare-fun res!3154002 () Bool)

(assert (=> b!7955091 (=> (not res!3154002) (not e!4692267))))

(assert (=> b!7955091 (= res!3154002 (and (not ((_ is ElementMatch!21479) r!24602)) (not ((_ is Star!21479) r!24602))))))

(declare-fun bm!737602 () Bool)

(assert (=> bm!737602 (= call!737606 (lostCause!1967 (ite c!1461158 (regTwo!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun b!7955092 () Bool)

(assert (=> b!7955092 (= e!4692268 e!4692270)))

(declare-fun res!3154001 () Bool)

(assert (=> b!7955092 (= res!3154001 call!737607)))

(assert (=> b!7955092 (=> res!3154001 e!4692270)))

(assert (= (and d!2377050 res!3154000) b!7955088))

(assert (= (and b!7955088 (not res!3154004)) b!7955091))

(assert (= (and b!7955091 res!3154002) b!7955087))

(assert (= (and b!7955087 c!1461158) b!7955086))

(assert (= (and b!7955087 (not c!1461158)) b!7955092))

(assert (= (and b!7955086 res!3154003) b!7955089))

(assert (= (and b!7955092 (not res!3154001)) b!7955090))

(assert (= (or b!7955089 b!7955090) bm!737602))

(assert (= (or b!7955086 b!7955092) bm!737601))

(declare-fun m!8337998 () Bool)

(assert (=> d!2377050 m!8337998))

(assert (=> d!2377050 m!8337998))

(declare-fun m!8338000 () Bool)

(assert (=> d!2377050 m!8338000))

(declare-fun m!8338002 () Bool)

(assert (=> bm!737601 m!8338002))

(declare-fun m!8338004 () Bool)

(assert (=> bm!737602 m!8338004))

(assert (=> d!2376722 d!2377050))

(declare-fun d!2377052 () Bool)

(assert (=> d!2377052 (= (nullable!9580 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))) (nullableFct!3778 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))

(declare-fun bs!1969633 () Bool)

(assert (= bs!1969633 d!2377052))

(declare-fun m!8338006 () Bool)

(assert (=> bs!1969633 m!8338006))

(assert (=> b!7954194 d!2377052))

(declare-fun d!2377054 () Bool)

(assert (=> d!2377054 (= (nullable!9580 (regOne!43470 baseR!116)) (nullableFct!3778 (regOne!43470 baseR!116)))))

(declare-fun bs!1969634 () Bool)

(assert (= bs!1969634 d!2377054))

(declare-fun m!8338008 () Bool)

(assert (=> bs!1969634 m!8338008))

(assert (=> b!7954315 d!2377054))

(declare-fun d!2377056 () Bool)

(assert (=> d!2377056 (= (nullable!9580 (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) (nullableFct!3778 (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun bs!1969635 () Bool)

(assert (= bs!1969635 d!2377056))

(declare-fun m!8338010 () Bool)

(assert (=> bs!1969635 m!8338010))

(assert (=> b!7954155 d!2377056))

(declare-fun d!2377058 () Bool)

(declare-fun lt!2701656 () Int)

(assert (=> d!2377058 (>= lt!2701656 0)))

(declare-fun e!4692273 () Int)

(assert (=> d!2377058 (= lt!2701656 e!4692273)))

(declare-fun c!1461159 () Bool)

(assert (=> d!2377058 (= c!1461159 ((_ is Nil!74584) (t!390451 (_1!38613 lt!2701370))))))

(assert (=> d!2377058 (= (size!43415 (t!390451 (_1!38613 lt!2701370))) lt!2701656)))

(declare-fun b!7955093 () Bool)

(assert (=> b!7955093 (= e!4692273 0)))

(declare-fun b!7955094 () Bool)

(assert (=> b!7955094 (= e!4692273 (+ 1 (size!43415 (t!390451 (t!390451 (_1!38613 lt!2701370))))))))

(assert (= (and d!2377058 c!1461159) b!7955093))

(assert (= (and d!2377058 (not c!1461159)) b!7955094))

(declare-fun m!8338012 () Bool)

(assert (=> b!7955094 m!8338012))

(assert (=> b!7954241 d!2377058))

(assert (=> d!2376820 d!2376654))

(assert (=> d!2376820 d!2376634))

(declare-fun d!2377060 () Bool)

(assert (=> d!2377060 (= input!7927 lt!2701382)))

(declare-fun lt!2701657 () Unit!169904)

(assert (=> d!2377060 (= lt!2701657 (choose!59947 input!7927 lt!2701382 input!7927))))

(assert (=> d!2377060 (isPrefix!6579 input!7927 input!7927)))

(assert (=> d!2377060 (= (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 lt!2701382 input!7927) lt!2701657)))

(declare-fun bs!1969636 () Bool)

(assert (= bs!1969636 d!2377060))

(declare-fun m!8338014 () Bool)

(assert (=> bs!1969636 m!8338014))

(assert (=> bs!1969636 m!8336838))

(assert (=> bm!737480 d!2377060))

(declare-fun b!7955095 () Bool)

(declare-fun e!4692277 () Bool)

(declare-fun call!737609 () Bool)

(assert (=> b!7955095 (= e!4692277 call!737609)))

(declare-fun b!7955096 () Bool)

(declare-fun res!3154008 () Bool)

(declare-fun e!4692280 () Bool)

(assert (=> b!7955096 (=> res!3154008 e!4692280)))

(assert (=> b!7955096 (= res!3154008 (not ((_ is Concat!30478) lt!2701589)))))

(declare-fun e!4692278 () Bool)

(assert (=> b!7955096 (= e!4692278 e!4692280)))

(declare-fun b!7955097 () Bool)

(declare-fun e!4692279 () Bool)

(declare-fun call!737610 () Bool)

(assert (=> b!7955097 (= e!4692279 call!737610)))

(declare-fun bm!737603 () Bool)

(declare-fun call!737608 () Bool)

(assert (=> bm!737603 (= call!737608 call!737609)))

(declare-fun b!7955098 () Bool)

(declare-fun e!4692274 () Bool)

(assert (=> b!7955098 (= e!4692274 e!4692278)))

(declare-fun c!1461160 () Bool)

(assert (=> b!7955098 (= c!1461160 ((_ is Union!21479) lt!2701589))))

(declare-fun bm!737604 () Bool)

(assert (=> bm!737604 (= call!737610 (validRegex!11783 (ite c!1461160 (regTwo!43471 lt!2701589) (regTwo!43470 lt!2701589))))))

(declare-fun b!7955099 () Bool)

(declare-fun e!4692275 () Bool)

(assert (=> b!7955099 (= e!4692275 e!4692274)))

(declare-fun c!1461161 () Bool)

(assert (=> b!7955099 (= c!1461161 ((_ is Star!21479) lt!2701589))))

(declare-fun b!7955100 () Bool)

(declare-fun res!3154006 () Bool)

(assert (=> b!7955100 (=> (not res!3154006) (not e!4692279))))

(assert (=> b!7955100 (= res!3154006 call!737608)))

(assert (=> b!7955100 (= e!4692278 e!4692279)))

(declare-fun d!2377062 () Bool)

(declare-fun res!3154007 () Bool)

(assert (=> d!2377062 (=> res!3154007 e!4692275)))

(assert (=> d!2377062 (= res!3154007 ((_ is ElementMatch!21479) lt!2701589))))

(assert (=> d!2377062 (= (validRegex!11783 lt!2701589) e!4692275)))

(declare-fun bm!737605 () Bool)

(assert (=> bm!737605 (= call!737609 (validRegex!11783 (ite c!1461161 (reg!21808 lt!2701589) (ite c!1461160 (regOne!43471 lt!2701589) (regOne!43470 lt!2701589)))))))

(declare-fun b!7955101 () Bool)

(declare-fun e!4692276 () Bool)

(assert (=> b!7955101 (= e!4692280 e!4692276)))

(declare-fun res!3154005 () Bool)

(assert (=> b!7955101 (=> (not res!3154005) (not e!4692276))))

(assert (=> b!7955101 (= res!3154005 call!737608)))

(declare-fun b!7955102 () Bool)

(assert (=> b!7955102 (= e!4692274 e!4692277)))

(declare-fun res!3154009 () Bool)

(assert (=> b!7955102 (= res!3154009 (not (nullable!9580 (reg!21808 lt!2701589))))))

(assert (=> b!7955102 (=> (not res!3154009) (not e!4692277))))

(declare-fun b!7955103 () Bool)

(assert (=> b!7955103 (= e!4692276 call!737610)))

(assert (= (and d!2377062 (not res!3154007)) b!7955099))

(assert (= (and b!7955099 c!1461161) b!7955102))

(assert (= (and b!7955099 (not c!1461161)) b!7955098))

(assert (= (and b!7955102 res!3154009) b!7955095))

(assert (= (and b!7955098 c!1461160) b!7955100))

(assert (= (and b!7955098 (not c!1461160)) b!7955096))

(assert (= (and b!7955100 res!3154006) b!7955097))

(assert (= (and b!7955096 (not res!3154008)) b!7955101))

(assert (= (and b!7955101 res!3154005) b!7955103))

(assert (= (or b!7955097 b!7955103) bm!737604))

(assert (= (or b!7955100 b!7955101) bm!737603))

(assert (= (or b!7955095 bm!737603) bm!737605))

(declare-fun m!8338016 () Bool)

(assert (=> bm!737604 m!8338016))

(declare-fun m!8338018 () Bool)

(assert (=> bm!737605 m!8338018))

(declare-fun m!8338020 () Bool)

(assert (=> b!7955102 m!8338020))

(assert (=> d!2376818 d!2377062))

(assert (=> d!2376818 d!2376670))

(declare-fun d!2377064 () Bool)

(declare-fun c!1461162 () Bool)

(assert (=> d!2377064 (= c!1461162 ((_ is Nil!74584) (t!390451 lt!2701440)))))

(declare-fun e!4692281 () (InoxSet C!43296))

(assert (=> d!2377064 (= (content!15836 (t!390451 lt!2701440)) e!4692281)))

(declare-fun b!7955104 () Bool)

(assert (=> b!7955104 (= e!4692281 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955105 () Bool)

(assert (=> b!7955105 (= e!4692281 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 lt!2701440)) true) (content!15836 (t!390451 (t!390451 lt!2701440)))))))

(assert (= (and d!2377064 c!1461162) b!7955104))

(assert (= (and d!2377064 (not c!1461162)) b!7955105))

(declare-fun m!8338022 () Bool)

(assert (=> b!7955105 m!8338022))

(declare-fun m!8338024 () Bool)

(assert (=> b!7955105 m!8338024))

(assert (=> b!7954225 d!2377064))

(declare-fun b!7955106 () Bool)

(declare-fun e!4692285 () Bool)

(declare-fun call!737612 () Bool)

(assert (=> b!7955106 (= e!4692285 call!737612)))

(declare-fun b!7955107 () Bool)

(declare-fun res!3154013 () Bool)

(declare-fun e!4692288 () Bool)

(assert (=> b!7955107 (=> res!3154013 e!4692288)))

(assert (=> b!7955107 (= res!3154013 (not ((_ is Concat!30478) lt!2701588)))))

(declare-fun e!4692286 () Bool)

(assert (=> b!7955107 (= e!4692286 e!4692288)))

(declare-fun b!7955108 () Bool)

(declare-fun e!4692287 () Bool)

(declare-fun call!737613 () Bool)

(assert (=> b!7955108 (= e!4692287 call!737613)))

(declare-fun bm!737606 () Bool)

(declare-fun call!737611 () Bool)

(assert (=> bm!737606 (= call!737611 call!737612)))

(declare-fun b!7955109 () Bool)

(declare-fun e!4692282 () Bool)

(assert (=> b!7955109 (= e!4692282 e!4692286)))

(declare-fun c!1461163 () Bool)

(assert (=> b!7955109 (= c!1461163 ((_ is Union!21479) lt!2701588))))

(declare-fun bm!737607 () Bool)

(assert (=> bm!737607 (= call!737613 (validRegex!11783 (ite c!1461163 (regTwo!43471 lt!2701588) (regTwo!43470 lt!2701588))))))

(declare-fun b!7955110 () Bool)

(declare-fun e!4692283 () Bool)

(assert (=> b!7955110 (= e!4692283 e!4692282)))

(declare-fun c!1461164 () Bool)

(assert (=> b!7955110 (= c!1461164 ((_ is Star!21479) lt!2701588))))

(declare-fun b!7955111 () Bool)

(declare-fun res!3154011 () Bool)

(assert (=> b!7955111 (=> (not res!3154011) (not e!4692287))))

(assert (=> b!7955111 (= res!3154011 call!737611)))

(assert (=> b!7955111 (= e!4692286 e!4692287)))

(declare-fun d!2377066 () Bool)

(declare-fun res!3154012 () Bool)

(assert (=> d!2377066 (=> res!3154012 e!4692283)))

(assert (=> d!2377066 (= res!3154012 ((_ is ElementMatch!21479) lt!2701588))))

(assert (=> d!2377066 (= (validRegex!11783 lt!2701588) e!4692283)))

(declare-fun bm!737608 () Bool)

(assert (=> bm!737608 (= call!737612 (validRegex!11783 (ite c!1461164 (reg!21808 lt!2701588) (ite c!1461163 (regOne!43471 lt!2701588) (regOne!43470 lt!2701588)))))))

(declare-fun b!7955112 () Bool)

(declare-fun e!4692284 () Bool)

(assert (=> b!7955112 (= e!4692288 e!4692284)))

(declare-fun res!3154010 () Bool)

(assert (=> b!7955112 (=> (not res!3154010) (not e!4692284))))

(assert (=> b!7955112 (= res!3154010 call!737611)))

(declare-fun b!7955113 () Bool)

(assert (=> b!7955113 (= e!4692282 e!4692285)))

(declare-fun res!3154014 () Bool)

(assert (=> b!7955113 (= res!3154014 (not (nullable!9580 (reg!21808 lt!2701588))))))

(assert (=> b!7955113 (=> (not res!3154014) (not e!4692285))))

(declare-fun b!7955114 () Bool)

(assert (=> b!7955114 (= e!4692284 call!737613)))

(assert (= (and d!2377066 (not res!3154012)) b!7955110))

(assert (= (and b!7955110 c!1461164) b!7955113))

(assert (= (and b!7955110 (not c!1461164)) b!7955109))

(assert (= (and b!7955113 res!3154014) b!7955106))

(assert (= (and b!7955109 c!1461163) b!7955111))

(assert (= (and b!7955109 (not c!1461163)) b!7955107))

(assert (= (and b!7955111 res!3154011) b!7955108))

(assert (= (and b!7955107 (not res!3154013)) b!7955112))

(assert (= (and b!7955112 res!3154010) b!7955114))

(assert (= (or b!7955108 b!7955114) bm!737607))

(assert (= (or b!7955111 b!7955112) bm!737606))

(assert (= (or b!7955106 bm!737606) bm!737608))

(declare-fun m!8338026 () Bool)

(assert (=> bm!737607 m!8338026))

(declare-fun m!8338028 () Bool)

(assert (=> bm!737608 m!8338028))

(declare-fun m!8338030 () Bool)

(assert (=> b!7955113 m!8338030))

(assert (=> d!2376816 d!2377066))

(declare-fun b!7955115 () Bool)

(declare-fun e!4692292 () Bool)

(declare-fun call!737615 () Bool)

(assert (=> b!7955115 (= e!4692292 call!737615)))

(declare-fun b!7955116 () Bool)

(declare-fun res!3154018 () Bool)

(declare-fun e!4692295 () Bool)

(assert (=> b!7955116 (=> res!3154018 e!4692295)))

(assert (=> b!7955116 (= res!3154018 (not ((_ is Concat!30478) (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))))

(declare-fun e!4692293 () Bool)

(assert (=> b!7955116 (= e!4692293 e!4692295)))

(declare-fun b!7955117 () Bool)

(declare-fun e!4692294 () Bool)

(declare-fun call!737616 () Bool)

(assert (=> b!7955117 (= e!4692294 call!737616)))

(declare-fun bm!737609 () Bool)

(declare-fun call!737614 () Bool)

(assert (=> bm!737609 (= call!737614 call!737615)))

(declare-fun b!7955118 () Bool)

(declare-fun e!4692289 () Bool)

(assert (=> b!7955118 (= e!4692289 e!4692293)))

(declare-fun c!1461165 () Bool)

(assert (=> b!7955118 (= c!1461165 ((_ is Union!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(declare-fun bm!737610 () Bool)

(assert (=> bm!737610 (= call!737616 (validRegex!11783 (ite c!1461165 (regTwo!43471 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (regTwo!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))))

(declare-fun b!7955119 () Bool)

(declare-fun e!4692290 () Bool)

(assert (=> b!7955119 (= e!4692290 e!4692289)))

(declare-fun c!1461166 () Bool)

(assert (=> b!7955119 (= c!1461166 ((_ is Star!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(declare-fun b!7955120 () Bool)

(declare-fun res!3154016 () Bool)

(assert (=> b!7955120 (=> (not res!3154016) (not e!4692294))))

(assert (=> b!7955120 (= res!3154016 call!737614)))

(assert (=> b!7955120 (= e!4692293 e!4692294)))

(declare-fun d!2377068 () Bool)

(declare-fun res!3154017 () Bool)

(assert (=> d!2377068 (=> res!3154017 e!4692290)))

(assert (=> d!2377068 (= res!3154017 ((_ is ElementMatch!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(assert (=> d!2377068 (= (validRegex!11783 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) e!4692290)))

(declare-fun bm!737611 () Bool)

(assert (=> bm!737611 (= call!737615 (validRegex!11783 (ite c!1461166 (reg!21808 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (ite c!1461165 (regOne!43471 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (regOne!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))))))

(declare-fun b!7955121 () Bool)

(declare-fun e!4692291 () Bool)

(assert (=> b!7955121 (= e!4692295 e!4692291)))

(declare-fun res!3154015 () Bool)

(assert (=> b!7955121 (=> (not res!3154015) (not e!4692291))))

(assert (=> b!7955121 (= res!3154015 call!737614)))

(declare-fun b!7955122 () Bool)

(assert (=> b!7955122 (= e!4692289 e!4692292)))

(declare-fun res!3154019 () Bool)

(assert (=> b!7955122 (= res!3154019 (not (nullable!9580 (reg!21808 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))))

(assert (=> b!7955122 (=> (not res!3154019) (not e!4692292))))

(declare-fun b!7955123 () Bool)

(assert (=> b!7955123 (= e!4692291 call!737616)))

(assert (= (and d!2377068 (not res!3154017)) b!7955119))

(assert (= (and b!7955119 c!1461166) b!7955122))

(assert (= (and b!7955119 (not c!1461166)) b!7955118))

(assert (= (and b!7955122 res!3154019) b!7955115))

(assert (= (and b!7955118 c!1461165) b!7955120))

(assert (= (and b!7955118 (not c!1461165)) b!7955116))

(assert (= (and b!7955120 res!3154016) b!7955117))

(assert (= (and b!7955116 (not res!3154018)) b!7955121))

(assert (= (and b!7955121 res!3154015) b!7955123))

(assert (= (or b!7955117 b!7955123) bm!737610))

(assert (= (or b!7955120 b!7955121) bm!737609))

(assert (= (or b!7955115 bm!737609) bm!737611))

(declare-fun m!8338032 () Bool)

(assert (=> bm!737610 m!8338032))

(declare-fun m!8338034 () Bool)

(assert (=> bm!737611 m!8338034))

(declare-fun m!8338036 () Bool)

(assert (=> b!7955122 m!8338036))

(assert (=> d!2376816 d!2377068))

(declare-fun c!1461169 () Bool)

(declare-fun b!7955124 () Bool)

(assert (=> b!7955124 (= c!1461169 (nullable!9580 (regOne!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))))

(declare-fun e!4692300 () Regex!21479)

(declare-fun e!4692296 () Regex!21479)

(assert (=> b!7955124 (= e!4692300 e!4692296)))

(declare-fun d!2377070 () Bool)

(declare-fun lt!2701658 () Regex!21479)

(assert (=> d!2377070 (validRegex!11783 lt!2701658)))

(declare-fun e!4692298 () Regex!21479)

(assert (=> d!2377070 (= lt!2701658 e!4692298)))

(declare-fun c!1461168 () Bool)

(assert (=> d!2377070 (= c!1461168 (or ((_ is EmptyExpr!21479) (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))) ((_ is EmptyLang!21479) (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))))

(assert (=> d!2377070 (validRegex!11783 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> d!2377070 (= (derivativeStep!6507 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) lt!2701250) lt!2701658)))

(declare-fun c!1461167 () Bool)

(declare-fun c!1461171 () Bool)

(declare-fun bm!737612 () Bool)

(declare-fun call!737619 () Regex!21479)

(assert (=> bm!737612 (= call!737619 (derivativeStep!6507 (ite c!1461171 (regTwo!43471 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))) (ite c!1461167 (reg!21808 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))) (ite c!1461169 (regTwo!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))) (regOne!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))) lt!2701250))))

(declare-fun e!4692299 () Regex!21479)

(declare-fun b!7955125 () Bool)

(assert (=> b!7955125 (= e!4692299 (ite (= lt!2701250 (c!1460858 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955126 () Bool)

(declare-fun e!4692297 () Regex!21479)

(declare-fun call!737618 () Regex!21479)

(assert (=> b!7955126 (= e!4692297 (Union!21479 call!737618 call!737619))))

(declare-fun call!737620 () Regex!21479)

(declare-fun b!7955127 () Bool)

(assert (=> b!7955127 (= e!4692296 (Union!21479 (Concat!30478 call!737620 (regTwo!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))) EmptyLang!21479))))

(declare-fun b!7955128 () Bool)

(assert (=> b!7955128 (= e!4692296 (Union!21479 (Concat!30478 call!737618 (regTwo!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))) call!737620))))

(declare-fun bm!737613 () Bool)

(assert (=> bm!737613 (= call!737618 (derivativeStep!6507 (ite c!1461171 (regOne!43471 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))) (regOne!43470 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))) lt!2701250))))

(declare-fun b!7955129 () Bool)

(assert (=> b!7955129 (= e!4692298 e!4692299)))

(declare-fun c!1461170 () Bool)

(assert (=> b!7955129 (= c!1461170 ((_ is ElementMatch!21479) (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955130 () Bool)

(assert (=> b!7955130 (= e!4692298 EmptyLang!21479)))

(declare-fun call!737617 () Regex!21479)

(declare-fun b!7955131 () Bool)

(assert (=> b!7955131 (= e!4692300 (Concat!30478 call!737617 (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun bm!737614 () Bool)

(assert (=> bm!737614 (= call!737620 call!737617)))

(declare-fun bm!737615 () Bool)

(assert (=> bm!737615 (= call!737617 call!737619)))

(declare-fun b!7955132 () Bool)

(assert (=> b!7955132 (= e!4692297 e!4692300)))

(assert (=> b!7955132 (= c!1461167 ((_ is Star!21479) (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955133 () Bool)

(assert (=> b!7955133 (= c!1461171 ((_ is Union!21479) (ite c!1460996 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460992 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1460994 (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))))

(assert (=> b!7955133 (= e!4692299 e!4692297)))

(assert (= (and d!2377070 c!1461168) b!7955130))

(assert (= (and d!2377070 (not c!1461168)) b!7955129))

(assert (= (and b!7955129 c!1461170) b!7955125))

(assert (= (and b!7955129 (not c!1461170)) b!7955133))

(assert (= (and b!7955133 c!1461171) b!7955126))

(assert (= (and b!7955133 (not c!1461171)) b!7955132))

(assert (= (and b!7955132 c!1461167) b!7955131))

(assert (= (and b!7955132 (not c!1461167)) b!7955124))

(assert (= (and b!7955124 c!1461169) b!7955128))

(assert (= (and b!7955124 (not c!1461169)) b!7955127))

(assert (= (or b!7955128 b!7955127) bm!737614))

(assert (= (or b!7955131 bm!737614) bm!737615))

(assert (= (or b!7955126 bm!737615) bm!737612))

(assert (= (or b!7955126 b!7955128) bm!737613))

(declare-fun m!8338038 () Bool)

(assert (=> b!7955124 m!8338038))

(declare-fun m!8338040 () Bool)

(assert (=> d!2377070 m!8338040))

(declare-fun m!8338042 () Bool)

(assert (=> d!2377070 m!8338042))

(declare-fun m!8338044 () Bool)

(assert (=> bm!737612 m!8338044))

(declare-fun m!8338046 () Bool)

(assert (=> bm!737613 m!8338046))

(assert (=> bm!737497 d!2377070))

(declare-fun d!2377072 () Bool)

(declare-fun lt!2701659 () Int)

(assert (=> d!2377072 (>= lt!2701659 0)))

(declare-fun e!4692301 () Int)

(assert (=> d!2377072 (= lt!2701659 e!4692301)))

(declare-fun c!1461172 () Bool)

(assert (=> d!2377072 (= c!1461172 ((_ is Nil!74584) (t!390451 (t!390451 testedP!447))))))

(assert (=> d!2377072 (= (size!43415 (t!390451 (t!390451 testedP!447))) lt!2701659)))

(declare-fun b!7955134 () Bool)

(assert (=> b!7955134 (= e!4692301 0)))

(declare-fun b!7955135 () Bool)

(assert (=> b!7955135 (= e!4692301 (+ 1 (size!43415 (t!390451 (t!390451 (t!390451 testedP!447))))))))

(assert (= (and d!2377072 c!1461172) b!7955134))

(assert (= (and d!2377072 (not c!1461172)) b!7955135))

(declare-fun m!8338048 () Bool)

(assert (=> b!7955135 m!8338048))

(assert (=> b!7954154 d!2377072))

(declare-fun d!2377074 () Bool)

(declare-fun c!1461173 () Bool)

(assert (=> d!2377074 (= c!1461173 ((_ is Nil!74584) lt!2701496))))

(declare-fun e!4692302 () (InoxSet C!43296))

(assert (=> d!2377074 (= (content!15836 lt!2701496) e!4692302)))

(declare-fun b!7955136 () Bool)

(assert (=> b!7955136 (= e!4692302 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955137 () Bool)

(assert (=> b!7955137 (= e!4692302 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701496) true) (content!15836 (t!390451 lt!2701496))))))

(assert (= (and d!2377074 c!1461173) b!7955136))

(assert (= (and d!2377074 (not c!1461173)) b!7955137))

(declare-fun m!8338050 () Bool)

(assert (=> b!7955137 m!8338050))

(declare-fun m!8338052 () Bool)

(assert (=> b!7955137 m!8338052))

(assert (=> d!2376698 d!2377074))

(assert (=> d!2376698 d!2376764))

(declare-fun d!2377076 () Bool)

(declare-fun c!1461174 () Bool)

(assert (=> d!2377076 (= c!1461174 ((_ is Nil!74584) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))

(declare-fun e!4692303 () (InoxSet C!43296))

(assert (=> d!2377076 (= (content!15836 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) e!4692303)))

(declare-fun b!7955138 () Bool)

(assert (=> b!7955138 (= e!4692303 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955139 () Bool)

(assert (=> b!7955139 (= e!4692303 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) true) (content!15836 (t!390451 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(assert (= (and d!2377076 c!1461174) b!7955138))

(assert (= (and d!2377076 (not c!1461174)) b!7955139))

(declare-fun m!8338054 () Bool)

(assert (=> b!7955139 m!8338054))

(declare-fun m!8338056 () Bool)

(assert (=> b!7955139 m!8338056))

(assert (=> d!2376698 d!2377076))

(declare-fun d!2377078 () Bool)

(declare-fun res!3154022 () Bool)

(declare-fun e!4692308 () Bool)

(assert (=> d!2377078 (=> res!3154022 e!4692308)))

(assert (=> d!2377078 (= res!3154022 ((_ is EmptyExpr!21479) (regOne!43470 r!24602)))))

(assert (=> d!2377078 (= (nullableFct!3778 (regOne!43470 r!24602)) e!4692308)))

(declare-fun b!7955140 () Bool)

(declare-fun e!4692304 () Bool)

(declare-fun call!737621 () Bool)

(assert (=> b!7955140 (= e!4692304 call!737621)))

(declare-fun b!7955141 () Bool)

(declare-fun e!4692306 () Bool)

(assert (=> b!7955141 (= e!4692308 e!4692306)))

(declare-fun res!3154023 () Bool)

(assert (=> b!7955141 (=> (not res!3154023) (not e!4692306))))

(assert (=> b!7955141 (= res!3154023 (and (not ((_ is EmptyLang!21479) (regOne!43470 r!24602))) (not ((_ is ElementMatch!21479) (regOne!43470 r!24602)))))))

(declare-fun b!7955142 () Bool)

(declare-fun e!4692305 () Bool)

(declare-fun e!4692307 () Bool)

(assert (=> b!7955142 (= e!4692305 e!4692307)))

(declare-fun res!3154020 () Bool)

(assert (=> b!7955142 (= res!3154020 call!737621)))

(assert (=> b!7955142 (=> res!3154020 e!4692307)))

(declare-fun b!7955143 () Bool)

(declare-fun call!737622 () Bool)

(assert (=> b!7955143 (= e!4692307 call!737622)))

(declare-fun bm!737616 () Bool)

(declare-fun c!1461175 () Bool)

(assert (=> bm!737616 (= call!737621 (nullable!9580 (ite c!1461175 (regOne!43471 (regOne!43470 r!24602)) (regTwo!43470 (regOne!43470 r!24602)))))))

(declare-fun b!7955144 () Bool)

(declare-fun e!4692309 () Bool)

(assert (=> b!7955144 (= e!4692306 e!4692309)))

(declare-fun res!3154021 () Bool)

(assert (=> b!7955144 (=> res!3154021 e!4692309)))

(assert (=> b!7955144 (= res!3154021 ((_ is Star!21479) (regOne!43470 r!24602)))))

(declare-fun b!7955145 () Bool)

(assert (=> b!7955145 (= e!4692309 e!4692305)))

(assert (=> b!7955145 (= c!1461175 ((_ is Union!21479) (regOne!43470 r!24602)))))

(declare-fun b!7955146 () Bool)

(assert (=> b!7955146 (= e!4692305 e!4692304)))

(declare-fun res!3154024 () Bool)

(assert (=> b!7955146 (= res!3154024 call!737622)))

(assert (=> b!7955146 (=> (not res!3154024) (not e!4692304))))

(declare-fun bm!737617 () Bool)

(assert (=> bm!737617 (= call!737622 (nullable!9580 (ite c!1461175 (regTwo!43471 (regOne!43470 r!24602)) (regOne!43470 (regOne!43470 r!24602)))))))

(assert (= (and d!2377078 (not res!3154022)) b!7955141))

(assert (= (and b!7955141 res!3154023) b!7955144))

(assert (= (and b!7955144 (not res!3154021)) b!7955145))

(assert (= (and b!7955145 c!1461175) b!7955142))

(assert (= (and b!7955145 (not c!1461175)) b!7955146))

(assert (= (and b!7955142 (not res!3154020)) b!7955143))

(assert (= (and b!7955146 res!3154024) b!7955140))

(assert (= (or b!7955142 b!7955140) bm!737616))

(assert (= (or b!7955143 b!7955146) bm!737617))

(declare-fun m!8338058 () Bool)

(assert (=> bm!737616 m!8338058))

(declare-fun m!8338060 () Bool)

(assert (=> bm!737617 m!8338060))

(assert (=> d!2376692 d!2377078))

(declare-fun b!7955147 () Bool)

(declare-fun e!4692313 () Bool)

(declare-fun call!737624 () Bool)

(assert (=> b!7955147 (= e!4692313 call!737624)))

(declare-fun b!7955148 () Bool)

(declare-fun res!3154028 () Bool)

(declare-fun e!4692316 () Bool)

(assert (=> b!7955148 (=> res!3154028 e!4692316)))

(assert (=> b!7955148 (= res!3154028 (not ((_ is Concat!30478) lt!2701545)))))

(declare-fun e!4692314 () Bool)

(assert (=> b!7955148 (= e!4692314 e!4692316)))

(declare-fun b!7955149 () Bool)

(declare-fun e!4692315 () Bool)

(declare-fun call!737625 () Bool)

(assert (=> b!7955149 (= e!4692315 call!737625)))

(declare-fun bm!737618 () Bool)

(declare-fun call!737623 () Bool)

(assert (=> bm!737618 (= call!737623 call!737624)))

(declare-fun b!7955150 () Bool)

(declare-fun e!4692310 () Bool)

(assert (=> b!7955150 (= e!4692310 e!4692314)))

(declare-fun c!1461176 () Bool)

(assert (=> b!7955150 (= c!1461176 ((_ is Union!21479) lt!2701545))))

(declare-fun bm!737619 () Bool)

(assert (=> bm!737619 (= call!737625 (validRegex!11783 (ite c!1461176 (regTwo!43471 lt!2701545) (regTwo!43470 lt!2701545))))))

(declare-fun b!7955151 () Bool)

(declare-fun e!4692311 () Bool)

(assert (=> b!7955151 (= e!4692311 e!4692310)))

(declare-fun c!1461177 () Bool)

(assert (=> b!7955151 (= c!1461177 ((_ is Star!21479) lt!2701545))))

(declare-fun b!7955152 () Bool)

(declare-fun res!3154026 () Bool)

(assert (=> b!7955152 (=> (not res!3154026) (not e!4692315))))

(assert (=> b!7955152 (= res!3154026 call!737623)))

(assert (=> b!7955152 (= e!4692314 e!4692315)))

(declare-fun d!2377080 () Bool)

(declare-fun res!3154027 () Bool)

(assert (=> d!2377080 (=> res!3154027 e!4692311)))

(assert (=> d!2377080 (= res!3154027 ((_ is ElementMatch!21479) lt!2701545))))

(assert (=> d!2377080 (= (validRegex!11783 lt!2701545) e!4692311)))

(declare-fun bm!737620 () Bool)

(assert (=> bm!737620 (= call!737624 (validRegex!11783 (ite c!1461177 (reg!21808 lt!2701545) (ite c!1461176 (regOne!43471 lt!2701545) (regOne!43470 lt!2701545)))))))

(declare-fun b!7955153 () Bool)

(declare-fun e!4692312 () Bool)

(assert (=> b!7955153 (= e!4692316 e!4692312)))

(declare-fun res!3154025 () Bool)

(assert (=> b!7955153 (=> (not res!3154025) (not e!4692312))))

(assert (=> b!7955153 (= res!3154025 call!737623)))

(declare-fun b!7955154 () Bool)

(assert (=> b!7955154 (= e!4692310 e!4692313)))

(declare-fun res!3154029 () Bool)

(assert (=> b!7955154 (= res!3154029 (not (nullable!9580 (reg!21808 lt!2701545))))))

(assert (=> b!7955154 (=> (not res!3154029) (not e!4692313))))

(declare-fun b!7955155 () Bool)

(assert (=> b!7955155 (= e!4692312 call!737625)))

(assert (= (and d!2377080 (not res!3154027)) b!7955151))

(assert (= (and b!7955151 c!1461177) b!7955154))

(assert (= (and b!7955151 (not c!1461177)) b!7955150))

(assert (= (and b!7955154 res!3154029) b!7955147))

(assert (= (and b!7955150 c!1461176) b!7955152))

(assert (= (and b!7955150 (not c!1461176)) b!7955148))

(assert (= (and b!7955152 res!3154026) b!7955149))

(assert (= (and b!7955148 (not res!3154028)) b!7955153))

(assert (= (and b!7955153 res!3154025) b!7955155))

(assert (= (or b!7955149 b!7955155) bm!737619))

(assert (= (or b!7955152 b!7955153) bm!737618))

(assert (= (or b!7955147 bm!737618) bm!737620))

(declare-fun m!8338062 () Bool)

(assert (=> bm!737619 m!8338062))

(declare-fun m!8338064 () Bool)

(assert (=> bm!737620 m!8338064))

(declare-fun m!8338066 () Bool)

(assert (=> b!7955154 m!8338066))

(assert (=> d!2376738 d!2377080))

(declare-fun b!7955156 () Bool)

(declare-fun e!4692320 () Bool)

(declare-fun call!737627 () Bool)

(assert (=> b!7955156 (= e!4692320 call!737627)))

(declare-fun b!7955157 () Bool)

(declare-fun res!3154033 () Bool)

(declare-fun e!4692323 () Bool)

(assert (=> b!7955157 (=> res!3154033 e!4692323)))

(assert (=> b!7955157 (= res!3154033 (not ((_ is Concat!30478) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun e!4692321 () Bool)

(assert (=> b!7955157 (= e!4692321 e!4692323)))

(declare-fun b!7955158 () Bool)

(declare-fun e!4692322 () Bool)

(declare-fun call!737628 () Bool)

(assert (=> b!7955158 (= e!4692322 call!737628)))

(declare-fun bm!737621 () Bool)

(declare-fun call!737626 () Bool)

(assert (=> bm!737621 (= call!737626 call!737627)))

(declare-fun b!7955159 () Bool)

(declare-fun e!4692317 () Bool)

(assert (=> b!7955159 (= e!4692317 e!4692321)))

(declare-fun c!1461178 () Bool)

(assert (=> b!7955159 (= c!1461178 ((_ is Union!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun bm!737622 () Bool)

(assert (=> bm!737622 (= call!737628 (validRegex!11783 (ite c!1461178 (regTwo!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regTwo!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955160 () Bool)

(declare-fun e!4692318 () Bool)

(assert (=> b!7955160 (= e!4692318 e!4692317)))

(declare-fun c!1461179 () Bool)

(assert (=> b!7955160 (= c!1461179 ((_ is Star!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7955161 () Bool)

(declare-fun res!3154031 () Bool)

(assert (=> b!7955161 (=> (not res!3154031) (not e!4692322))))

(assert (=> b!7955161 (= res!3154031 call!737626)))

(assert (=> b!7955161 (= e!4692321 e!4692322)))

(declare-fun d!2377082 () Bool)

(declare-fun res!3154032 () Bool)

(assert (=> d!2377082 (=> res!3154032 e!4692318)))

(assert (=> d!2377082 (= res!3154032 ((_ is ElementMatch!21479) (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(assert (=> d!2377082 (= (validRegex!11783 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) e!4692318)))

(declare-fun bm!737623 () Bool)

(assert (=> bm!737623 (= call!737627 (validRegex!11783 (ite c!1461179 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1461178 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun b!7955162 () Bool)

(declare-fun e!4692319 () Bool)

(assert (=> b!7955162 (= e!4692323 e!4692319)))

(declare-fun res!3154030 () Bool)

(assert (=> b!7955162 (=> (not res!3154030) (not e!4692319))))

(assert (=> b!7955162 (= res!3154030 call!737626)))

(declare-fun b!7955163 () Bool)

(assert (=> b!7955163 (= e!4692317 e!4692320)))

(declare-fun res!3154034 () Bool)

(assert (=> b!7955163 (= res!3154034 (not (nullable!9580 (reg!21808 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(assert (=> b!7955163 (=> (not res!3154034) (not e!4692320))))

(declare-fun b!7955164 () Bool)

(assert (=> b!7955164 (= e!4692319 call!737628)))

(assert (= (and d!2377082 (not res!3154032)) b!7955160))

(assert (= (and b!7955160 c!1461179) b!7955163))

(assert (= (and b!7955160 (not c!1461179)) b!7955159))

(assert (= (and b!7955163 res!3154034) b!7955156))

(assert (= (and b!7955159 c!1461178) b!7955161))

(assert (= (and b!7955159 (not c!1461178)) b!7955157))

(assert (= (and b!7955161 res!3154031) b!7955158))

(assert (= (and b!7955157 (not res!3154033)) b!7955162))

(assert (= (and b!7955162 res!3154030) b!7955164))

(assert (= (or b!7955158 b!7955164) bm!737622))

(assert (= (or b!7955161 b!7955162) bm!737621))

(assert (= (or b!7955156 bm!737621) bm!737623))

(declare-fun m!8338068 () Bool)

(assert (=> bm!737622 m!8338068))

(declare-fun m!8338070 () Bool)

(assert (=> bm!737623 m!8338070))

(declare-fun m!8338072 () Bool)

(assert (=> b!7955163 m!8338072))

(assert (=> d!2376738 d!2377082))

(declare-fun d!2377084 () Bool)

(declare-fun c!1461180 () Bool)

(assert (=> d!2377084 (= c!1461180 ((_ is Nil!74584) (t!390451 lt!2701255)))))

(declare-fun e!4692324 () (InoxSet C!43296))

(assert (=> d!2377084 (= (content!15836 (t!390451 lt!2701255)) e!4692324)))

(declare-fun b!7955165 () Bool)

(assert (=> b!7955165 (= e!4692324 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955166 () Bool)

(assert (=> b!7955166 (= e!4692324 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 lt!2701255)) true) (content!15836 (t!390451 (t!390451 lt!2701255)))))))

(assert (= (and d!2377084 c!1461180) b!7955165))

(assert (= (and d!2377084 (not c!1461180)) b!7955166))

(declare-fun m!8338074 () Bool)

(assert (=> b!7955166 m!8338074))

(declare-fun m!8338076 () Bool)

(assert (=> b!7955166 m!8338076))

(assert (=> b!7954278 d!2377084))

(declare-fun d!2377086 () Bool)

(assert (=> d!2377086 (= (nullable!9580 (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) (nullableFct!3778 (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun bs!1969637 () Bool)

(assert (= bs!1969637 d!2377086))

(declare-fun m!8338078 () Bool)

(assert (=> bs!1969637 m!8338078))

(assert (=> b!7954291 d!2377086))

(declare-fun d!2377088 () Bool)

(declare-fun c!1461181 () Bool)

(assert (=> d!2377088 (= c!1461181 ((_ is Nil!74584) lt!2701500))))

(declare-fun e!4692325 () (InoxSet C!43296))

(assert (=> d!2377088 (= (content!15836 lt!2701500) e!4692325)))

(declare-fun b!7955167 () Bool)

(assert (=> b!7955167 (= e!4692325 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955168 () Bool)

(assert (=> b!7955168 (= e!4692325 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701500) true) (content!15836 (t!390451 lt!2701500))))))

(assert (= (and d!2377088 c!1461181) b!7955167))

(assert (= (and d!2377088 (not c!1461181)) b!7955168))

(declare-fun m!8338080 () Bool)

(assert (=> b!7955168 m!8338080))

(declare-fun m!8338082 () Bool)

(assert (=> b!7955168 m!8338082))

(assert (=> d!2376706 d!2377088))

(assert (=> d!2376706 d!2376764))

(declare-fun d!2377090 () Bool)

(declare-fun c!1461182 () Bool)

(assert (=> d!2377090 (= c!1461182 ((_ is Nil!74584) (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))

(declare-fun e!4692326 () (InoxSet C!43296))

(assert (=> d!2377090 (= (content!15836 (Cons!74584 (head!16231 lt!2701251) Nil!74584)) e!4692326)))

(declare-fun b!7955169 () Bool)

(assert (=> b!7955169 (= e!4692326 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955170 () Bool)

(assert (=> b!7955170 (= e!4692326 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (Cons!74584 (head!16231 lt!2701251) Nil!74584)) true) (content!15836 (t!390451 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(assert (= (and d!2377090 c!1461182) b!7955169))

(assert (= (and d!2377090 (not c!1461182)) b!7955170))

(declare-fun m!8338084 () Bool)

(assert (=> b!7955170 m!8338084))

(declare-fun m!8338086 () Bool)

(assert (=> b!7955170 m!8338086))

(assert (=> d!2376706 d!2377090))

(declare-fun b!7955171 () Bool)

(declare-fun e!4692330 () Bool)

(declare-fun call!737630 () Bool)

(assert (=> b!7955171 (= e!4692330 call!737630)))

(declare-fun b!7955172 () Bool)

(declare-fun res!3154038 () Bool)

(declare-fun e!4692333 () Bool)

(assert (=> b!7955172 (=> res!3154038 e!4692333)))

(assert (=> b!7955172 (= res!3154038 (not ((_ is Concat!30478) (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))))

(declare-fun e!4692331 () Bool)

(assert (=> b!7955172 (= e!4692331 e!4692333)))

(declare-fun b!7955173 () Bool)

(declare-fun e!4692332 () Bool)

(declare-fun call!737631 () Bool)

(assert (=> b!7955173 (= e!4692332 call!737631)))

(declare-fun bm!737624 () Bool)

(declare-fun call!737629 () Bool)

(assert (=> bm!737624 (= call!737629 call!737630)))

(declare-fun b!7955174 () Bool)

(declare-fun e!4692327 () Bool)

(assert (=> b!7955174 (= e!4692327 e!4692331)))

(declare-fun c!1461183 () Bool)

(assert (=> b!7955174 (= c!1461183 ((_ is Union!21479) (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))

(declare-fun bm!737625 () Bool)

(assert (=> bm!737625 (= call!737631 (validRegex!11783 (ite c!1461183 (regTwo!43471 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))) (regTwo!43470 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))))

(declare-fun b!7955175 () Bool)

(declare-fun e!4692328 () Bool)

(assert (=> b!7955175 (= e!4692328 e!4692327)))

(declare-fun c!1461184 () Bool)

(assert (=> b!7955175 (= c!1461184 ((_ is Star!21479) (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))

(declare-fun b!7955176 () Bool)

(declare-fun res!3154036 () Bool)

(assert (=> b!7955176 (=> (not res!3154036) (not e!4692332))))

(assert (=> b!7955176 (= res!3154036 call!737629)))

(assert (=> b!7955176 (= e!4692331 e!4692332)))

(declare-fun d!2377092 () Bool)

(declare-fun res!3154037 () Bool)

(assert (=> d!2377092 (=> res!3154037 e!4692328)))

(assert (=> d!2377092 (= res!3154037 ((_ is ElementMatch!21479) (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))

(assert (=> d!2377092 (= (validRegex!11783 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))) e!4692328)))

(declare-fun bm!737626 () Bool)

(assert (=> bm!737626 (= call!737630 (validRegex!11783 (ite c!1461184 (reg!21808 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))) (ite c!1461183 (regOne!43471 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))) (regOne!43470 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))))))

(declare-fun b!7955177 () Bool)

(declare-fun e!4692329 () Bool)

(assert (=> b!7955177 (= e!4692333 e!4692329)))

(declare-fun res!3154035 () Bool)

(assert (=> b!7955177 (=> (not res!3154035) (not e!4692329))))

(assert (=> b!7955177 (= res!3154035 call!737629)))

(declare-fun b!7955178 () Bool)

(assert (=> b!7955178 (= e!4692327 e!4692330)))

(declare-fun res!3154039 () Bool)

(assert (=> b!7955178 (= res!3154039 (not (nullable!9580 (reg!21808 (ite c!1460998 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (ite c!1460997 (regOne!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regOne!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))))

(assert (=> b!7955178 (=> (not res!3154039) (not e!4692330))))

(declare-fun b!7955179 () Bool)

(assert (=> b!7955179 (= e!4692329 call!737631)))

(assert (= (and d!2377092 (not res!3154037)) b!7955175))

(assert (= (and b!7955175 c!1461184) b!7955178))

(assert (= (and b!7955175 (not c!1461184)) b!7955174))

(assert (= (and b!7955178 res!3154039) b!7955171))

(assert (= (and b!7955174 c!1461183) b!7955176))

(assert (= (and b!7955174 (not c!1461183)) b!7955172))

(assert (= (and b!7955176 res!3154036) b!7955173))

(assert (= (and b!7955172 (not res!3154038)) b!7955177))

(assert (= (and b!7955177 res!3154035) b!7955179))

(assert (= (or b!7955173 b!7955179) bm!737625))

(assert (= (or b!7955176 b!7955177) bm!737624))

(assert (= (or b!7955171 bm!737624) bm!737626))

(declare-fun m!8338088 () Bool)

(assert (=> bm!737625 m!8338088))

(declare-fun m!8338090 () Bool)

(assert (=> bm!737626 m!8338090))

(declare-fun m!8338092 () Bool)

(assert (=> b!7955178 m!8338092))

(assert (=> bm!737503 d!2377092))

(declare-fun d!2377094 () Bool)

(declare-fun lt!2701660 () Int)

(assert (=> d!2377094 (>= lt!2701660 0)))

(declare-fun e!4692334 () Int)

(assert (=> d!2377094 (= lt!2701660 e!4692334)))

(declare-fun c!1461185 () Bool)

(assert (=> d!2377094 (= c!1461185 ((_ is Nil!74584) lt!2701585))))

(assert (=> d!2377094 (= (size!43415 lt!2701585) lt!2701660)))

(declare-fun b!7955180 () Bool)

(assert (=> b!7955180 (= e!4692334 0)))

(declare-fun b!7955181 () Bool)

(assert (=> b!7955181 (= e!4692334 (+ 1 (size!43415 (t!390451 lt!2701585))))))

(assert (= (and d!2377094 c!1461185) b!7955180))

(assert (= (and d!2377094 (not c!1461185)) b!7955181))

(declare-fun m!8338094 () Bool)

(assert (=> b!7955181 m!8338094))

(assert (=> b!7954303 d!2377094))

(assert (=> b!7954303 d!2376736))

(assert (=> b!7954303 d!2376734))

(declare-fun d!2377096 () Bool)

(declare-fun e!4692337 () Bool)

(assert (=> d!2377096 e!4692337))

(declare-fun res!3154041 () Bool)

(assert (=> d!2377096 (=> res!3154041 e!4692337)))

(declare-fun lt!2701661 () Bool)

(assert (=> d!2377096 (= res!3154041 (not lt!2701661))))

(declare-fun e!4692335 () Bool)

(assert (=> d!2377096 (= lt!2701661 e!4692335)))

(declare-fun res!3154040 () Bool)

(assert (=> d!2377096 (=> res!3154040 e!4692335)))

(assert (=> d!2377096 (= res!3154040 ((_ is Nil!74584) (tail!15768 (tail!15768 testedP!447))))))

(assert (=> d!2377096 (= (isPrefix!6579 (tail!15768 (tail!15768 testedP!447)) (tail!15768 (tail!15768 input!7927))) lt!2701661)))

(declare-fun b!7955182 () Bool)

(declare-fun e!4692336 () Bool)

(assert (=> b!7955182 (= e!4692335 e!4692336)))

(declare-fun res!3154042 () Bool)

(assert (=> b!7955182 (=> (not res!3154042) (not e!4692336))))

(assert (=> b!7955182 (= res!3154042 (not ((_ is Nil!74584) (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955185 () Bool)

(assert (=> b!7955185 (= e!4692337 (>= (size!43415 (tail!15768 (tail!15768 input!7927))) (size!43415 (tail!15768 (tail!15768 testedP!447)))))))

(declare-fun b!7955183 () Bool)

(declare-fun res!3154043 () Bool)

(assert (=> b!7955183 (=> (not res!3154043) (not e!4692336))))

(assert (=> b!7955183 (= res!3154043 (= (head!16231 (tail!15768 (tail!15768 testedP!447))) (head!16231 (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955184 () Bool)

(assert (=> b!7955184 (= e!4692336 (isPrefix!6579 (tail!15768 (tail!15768 (tail!15768 testedP!447))) (tail!15768 (tail!15768 (tail!15768 input!7927)))))))

(assert (= (and d!2377096 (not res!3154040)) b!7955182))

(assert (= (and b!7955182 res!3154042) b!7955183))

(assert (= (and b!7955183 res!3154043) b!7955184))

(assert (= (and d!2377096 (not res!3154041)) b!7955185))

(assert (=> b!7955185 m!8337374))

(assert (=> b!7955185 m!8337916))

(assert (=> b!7955185 m!8337500))

(declare-fun m!8338096 () Bool)

(assert (=> b!7955185 m!8338096))

(assert (=> b!7955183 m!8337500))

(declare-fun m!8338098 () Bool)

(assert (=> b!7955183 m!8338098))

(assert (=> b!7955183 m!8337374))

(declare-fun m!8338100 () Bool)

(assert (=> b!7955183 m!8338100))

(assert (=> b!7955184 m!8337500))

(declare-fun m!8338102 () Bool)

(assert (=> b!7955184 m!8338102))

(assert (=> b!7955184 m!8337374))

(assert (=> b!7955184 m!8337918))

(assert (=> b!7955184 m!8338102))

(assert (=> b!7955184 m!8337918))

(declare-fun m!8338104 () Bool)

(assert (=> b!7955184 m!8338104))

(assert (=> b!7954311 d!2377096))

(declare-fun d!2377098 () Bool)

(assert (=> d!2377098 (= (tail!15768 (tail!15768 testedP!447)) (t!390451 (tail!15768 testedP!447)))))

(assert (=> b!7954311 d!2377098))

(assert (=> b!7954311 d!2377002))

(declare-fun lt!2701662 () List!74708)

(declare-fun b!7955189 () Bool)

(declare-fun e!4692339 () Bool)

(assert (=> b!7955189 (= e!4692339 (or (not (= (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584) Nil!74584)) (= lt!2701662 (t!390451 testedP!447))))))

(declare-fun b!7955187 () Bool)

(declare-fun e!4692338 () List!74708)

(assert (=> b!7955187 (= e!4692338 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(declare-fun b!7955186 () Bool)

(assert (=> b!7955186 (= e!4692338 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))

(declare-fun b!7955188 () Bool)

(declare-fun res!3154045 () Bool)

(assert (=> b!7955188 (=> (not res!3154045) (not e!4692339))))

(assert (=> b!7955188 (= res!3154045 (= (size!43415 lt!2701662) (+ (size!43415 (t!390451 testedP!447)) (size!43415 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(declare-fun d!2377100 () Bool)

(assert (=> d!2377100 e!4692339))

(declare-fun res!3154044 () Bool)

(assert (=> d!2377100 (=> (not res!3154044) (not e!4692339))))

(assert (=> d!2377100 (= res!3154044 (= (content!15836 lt!2701662) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(assert (=> d!2377100 (= lt!2701662 e!4692338)))

(declare-fun c!1461186 () Bool)

(assert (=> d!2377100 (= c!1461186 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2377100 (= (++!18349 (t!390451 testedP!447) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) lt!2701662)))

(assert (= (and d!2377100 c!1461186) b!7955186))

(assert (= (and d!2377100 (not c!1461186)) b!7955187))

(assert (= (and d!2377100 res!3154044) b!7955188))

(assert (= (and b!7955188 res!3154045) b!7955189))

(declare-fun m!8338106 () Bool)

(assert (=> b!7955187 m!8338106))

(declare-fun m!8338108 () Bool)

(assert (=> b!7955188 m!8338108))

(assert (=> b!7955188 m!8337010))

(assert (=> b!7955188 m!8337128))

(declare-fun m!8338110 () Bool)

(assert (=> d!2377100 m!8338110))

(assert (=> d!2377100 m!8337356))

(assert (=> d!2377100 m!8337132))

(assert (=> b!7954072 d!2377100))

(declare-fun b!7955190 () Bool)

(declare-fun e!4692343 () Bool)

(declare-fun call!737633 () Bool)

(assert (=> b!7955190 (= e!4692343 call!737633)))

(declare-fun b!7955191 () Bool)

(declare-fun res!3154049 () Bool)

(declare-fun e!4692346 () Bool)

(assert (=> b!7955191 (=> res!3154049 e!4692346)))

(assert (=> b!7955191 (= res!3154049 (not ((_ is Concat!30478) lt!2701584)))))

(declare-fun e!4692344 () Bool)

(assert (=> b!7955191 (= e!4692344 e!4692346)))

(declare-fun b!7955192 () Bool)

(declare-fun e!4692345 () Bool)

(declare-fun call!737634 () Bool)

(assert (=> b!7955192 (= e!4692345 call!737634)))

(declare-fun bm!737627 () Bool)

(declare-fun call!737632 () Bool)

(assert (=> bm!737627 (= call!737632 call!737633)))

(declare-fun b!7955193 () Bool)

(declare-fun e!4692340 () Bool)

(assert (=> b!7955193 (= e!4692340 e!4692344)))

(declare-fun c!1461187 () Bool)

(assert (=> b!7955193 (= c!1461187 ((_ is Union!21479) lt!2701584))))

(declare-fun bm!737628 () Bool)

(assert (=> bm!737628 (= call!737634 (validRegex!11783 (ite c!1461187 (regTwo!43471 lt!2701584) (regTwo!43470 lt!2701584))))))

(declare-fun b!7955194 () Bool)

(declare-fun e!4692341 () Bool)

(assert (=> b!7955194 (= e!4692341 e!4692340)))

(declare-fun c!1461188 () Bool)

(assert (=> b!7955194 (= c!1461188 ((_ is Star!21479) lt!2701584))))

(declare-fun b!7955195 () Bool)

(declare-fun res!3154047 () Bool)

(assert (=> b!7955195 (=> (not res!3154047) (not e!4692345))))

(assert (=> b!7955195 (= res!3154047 call!737632)))

(assert (=> b!7955195 (= e!4692344 e!4692345)))

(declare-fun d!2377102 () Bool)

(declare-fun res!3154048 () Bool)

(assert (=> d!2377102 (=> res!3154048 e!4692341)))

(assert (=> d!2377102 (= res!3154048 ((_ is ElementMatch!21479) lt!2701584))))

(assert (=> d!2377102 (= (validRegex!11783 lt!2701584) e!4692341)))

(declare-fun bm!737629 () Bool)

(assert (=> bm!737629 (= call!737633 (validRegex!11783 (ite c!1461188 (reg!21808 lt!2701584) (ite c!1461187 (regOne!43471 lt!2701584) (regOne!43470 lt!2701584)))))))

(declare-fun b!7955196 () Bool)

(declare-fun e!4692342 () Bool)

(assert (=> b!7955196 (= e!4692346 e!4692342)))

(declare-fun res!3154046 () Bool)

(assert (=> b!7955196 (=> (not res!3154046) (not e!4692342))))

(assert (=> b!7955196 (= res!3154046 call!737632)))

(declare-fun b!7955197 () Bool)

(assert (=> b!7955197 (= e!4692340 e!4692343)))

(declare-fun res!3154050 () Bool)

(assert (=> b!7955197 (= res!3154050 (not (nullable!9580 (reg!21808 lt!2701584))))))

(assert (=> b!7955197 (=> (not res!3154050) (not e!4692343))))

(declare-fun b!7955198 () Bool)

(assert (=> b!7955198 (= e!4692342 call!737634)))

(assert (= (and d!2377102 (not res!3154048)) b!7955194))

(assert (= (and b!7955194 c!1461188) b!7955197))

(assert (= (and b!7955194 (not c!1461188)) b!7955193))

(assert (= (and b!7955197 res!3154050) b!7955190))

(assert (= (and b!7955193 c!1461187) b!7955195))

(assert (= (and b!7955193 (not c!1461187)) b!7955191))

(assert (= (and b!7955195 res!3154047) b!7955192))

(assert (= (and b!7955191 (not res!3154049)) b!7955196))

(assert (= (and b!7955196 res!3154046) b!7955198))

(assert (= (or b!7955192 b!7955198) bm!737628))

(assert (= (or b!7955195 b!7955196) bm!737627))

(assert (= (or b!7955190 bm!737627) bm!737629))

(declare-fun m!8338112 () Bool)

(assert (=> bm!737628 m!8338112))

(declare-fun m!8338114 () Bool)

(assert (=> bm!737629 m!8338114))

(declare-fun m!8338116 () Bool)

(assert (=> b!7955197 m!8338116))

(assert (=> d!2376802 d!2377102))

(declare-fun b!7955199 () Bool)

(declare-fun e!4692350 () Bool)

(declare-fun call!737636 () Bool)

(assert (=> b!7955199 (= e!4692350 call!737636)))

(declare-fun b!7955200 () Bool)

(declare-fun res!3154054 () Bool)

(declare-fun e!4692353 () Bool)

(assert (=> b!7955200 (=> res!3154054 e!4692353)))

(assert (=> b!7955200 (= res!3154054 (not ((_ is Concat!30478) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun e!4692351 () Bool)

(assert (=> b!7955200 (= e!4692351 e!4692353)))

(declare-fun b!7955201 () Bool)

(declare-fun e!4692352 () Bool)

(declare-fun call!737637 () Bool)

(assert (=> b!7955201 (= e!4692352 call!737637)))

(declare-fun bm!737630 () Bool)

(declare-fun call!737635 () Bool)

(assert (=> bm!737630 (= call!737635 call!737636)))

(declare-fun b!7955202 () Bool)

(declare-fun e!4692347 () Bool)

(assert (=> b!7955202 (= e!4692347 e!4692351)))

(declare-fun c!1461189 () Bool)

(assert (=> b!7955202 (= c!1461189 ((_ is Union!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun bm!737631 () Bool)

(assert (=> bm!737631 (= call!737637 (validRegex!11783 (ite c!1461189 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955203 () Bool)

(declare-fun e!4692348 () Bool)

(assert (=> b!7955203 (= e!4692348 e!4692347)))

(declare-fun c!1461190 () Bool)

(assert (=> b!7955203 (= c!1461190 ((_ is Star!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955204 () Bool)

(declare-fun res!3154052 () Bool)

(assert (=> b!7955204 (=> (not res!3154052) (not e!4692352))))

(assert (=> b!7955204 (= res!3154052 call!737635)))

(assert (=> b!7955204 (= e!4692351 e!4692352)))

(declare-fun d!2377104 () Bool)

(declare-fun res!3154053 () Bool)

(assert (=> d!2377104 (=> res!3154053 e!4692348)))

(assert (=> d!2377104 (= res!3154053 ((_ is ElementMatch!21479) (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(assert (=> d!2377104 (= (validRegex!11783 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) e!4692348)))

(declare-fun bm!737632 () Bool)

(assert (=> bm!737632 (= call!737636 (validRegex!11783 (ite c!1461190 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461189 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))

(declare-fun b!7955205 () Bool)

(declare-fun e!4692349 () Bool)

(assert (=> b!7955205 (= e!4692353 e!4692349)))

(declare-fun res!3154051 () Bool)

(assert (=> b!7955205 (=> (not res!3154051) (not e!4692349))))

(assert (=> b!7955205 (= res!3154051 call!737635)))

(declare-fun b!7955206 () Bool)

(assert (=> b!7955206 (= e!4692347 e!4692350)))

(declare-fun res!3154055 () Bool)

(assert (=> b!7955206 (= res!3154055 (not (nullable!9580 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(assert (=> b!7955206 (=> (not res!3154055) (not e!4692350))))

(declare-fun b!7955207 () Bool)

(assert (=> b!7955207 (= e!4692349 call!737637)))

(assert (= (and d!2377104 (not res!3154053)) b!7955203))

(assert (= (and b!7955203 c!1461190) b!7955206))

(assert (= (and b!7955203 (not c!1461190)) b!7955202))

(assert (= (and b!7955206 res!3154055) b!7955199))

(assert (= (and b!7955202 c!1461189) b!7955204))

(assert (= (and b!7955202 (not c!1461189)) b!7955200))

(assert (= (and b!7955204 res!3154052) b!7955201))

(assert (= (and b!7955200 (not res!3154054)) b!7955205))

(assert (= (and b!7955205 res!3154051) b!7955207))

(assert (= (or b!7955201 b!7955207) bm!737631))

(assert (= (or b!7955204 b!7955205) bm!737630))

(assert (= (or b!7955199 bm!737630) bm!737632))

(declare-fun m!8338118 () Bool)

(assert (=> bm!737631 m!8338118))

(declare-fun m!8338120 () Bool)

(assert (=> bm!737632 m!8338120))

(declare-fun m!8338122 () Bool)

(assert (=> b!7955206 m!8338122))

(assert (=> d!2376802 d!2377104))

(assert (=> b!7954281 d!2376692))

(declare-fun d!2377106 () Bool)

(declare-fun lt!2701663 () Int)

(assert (=> d!2377106 (>= lt!2701663 0)))

(declare-fun e!4692354 () Int)

(assert (=> d!2377106 (= lt!2701663 e!4692354)))

(declare-fun c!1461191 () Bool)

(assert (=> d!2377106 (= c!1461191 ((_ is Nil!74584) (t!390451 (t!390451 lt!2701255))))))

(assert (=> d!2377106 (= (size!43415 (t!390451 (t!390451 lt!2701255))) lt!2701663)))

(declare-fun b!7955208 () Bool)

(assert (=> b!7955208 (= e!4692354 0)))

(declare-fun b!7955209 () Bool)

(assert (=> b!7955209 (= e!4692354 (+ 1 (size!43415 (t!390451 (t!390451 (t!390451 lt!2701255))))))))

(assert (= (and d!2377106 c!1461191) b!7955208))

(assert (= (and d!2377106 (not c!1461191)) b!7955209))

(declare-fun m!8338124 () Bool)

(assert (=> b!7955209 m!8338124))

(assert (=> b!7954197 d!2377106))

(assert (=> d!2376712 d!2376974))

(declare-fun e!4692356 () Bool)

(declare-fun b!7955213 () Bool)

(declare-fun lt!2701664 () List!74708)

(assert (=> b!7955213 (= e!4692356 (or (not (= call!737440 Nil!74584)) (= lt!2701664 lt!2701382)))))

(declare-fun b!7955211 () Bool)

(declare-fun e!4692355 () List!74708)

(assert (=> b!7955211 (= e!4692355 (Cons!74584 (h!81032 lt!2701382) (++!18349 (t!390451 lt!2701382) call!737440)))))

(declare-fun b!7955210 () Bool)

(assert (=> b!7955210 (= e!4692355 call!737440)))

(declare-fun b!7955212 () Bool)

(declare-fun res!3154057 () Bool)

(assert (=> b!7955212 (=> (not res!3154057) (not e!4692356))))

(assert (=> b!7955212 (= res!3154057 (= (size!43415 lt!2701664) (+ (size!43415 lt!2701382) (size!43415 call!737440))))))

(declare-fun d!2377108 () Bool)

(assert (=> d!2377108 e!4692356))

(declare-fun res!3154056 () Bool)

(assert (=> d!2377108 (=> (not res!3154056) (not e!4692356))))

(assert (=> d!2377108 (= res!3154056 (= (content!15836 lt!2701664) ((_ map or) (content!15836 lt!2701382) (content!15836 call!737440))))))

(assert (=> d!2377108 (= lt!2701664 e!4692355)))

(declare-fun c!1461192 () Bool)

(assert (=> d!2377108 (= c!1461192 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2377108 (= (++!18349 lt!2701382 call!737440) lt!2701664)))

(assert (= (and d!2377108 c!1461192) b!7955210))

(assert (= (and d!2377108 (not c!1461192)) b!7955211))

(assert (= (and d!2377108 res!3154056) b!7955212))

(assert (= (and b!7955212 res!3154057) b!7955213))

(declare-fun m!8338126 () Bool)

(assert (=> b!7955211 m!8338126))

(declare-fun m!8338128 () Bool)

(assert (=> b!7955212 m!8338128))

(assert (=> b!7955212 m!8337192))

(declare-fun m!8338130 () Bool)

(assert (=> b!7955212 m!8338130))

(declare-fun m!8338132 () Bool)

(assert (=> d!2377108 m!8338132))

(assert (=> d!2377108 m!8337808))

(declare-fun m!8338134 () Bool)

(assert (=> d!2377108 m!8338134))

(assert (=> d!2376712 d!2377108))

(declare-fun d!2377110 () Bool)

(assert (=> d!2377110 (isPrefix!6579 lt!2701382 (++!18349 lt!2701382 call!737440))))

(declare-fun lt!2701665 () Unit!169904)

(assert (=> d!2377110 (= lt!2701665 (choose!59956 lt!2701382 call!737440))))

(assert (=> d!2377110 (= (lemmaConcatTwoListThenFirstIsPrefix!3845 lt!2701382 call!737440) lt!2701665)))

(declare-fun bs!1969638 () Bool)

(assert (= bs!1969638 d!2377110))

(assert (=> bs!1969638 m!8337224))

(assert (=> bs!1969638 m!8337224))

(assert (=> bs!1969638 m!8337232))

(declare-fun m!8338136 () Bool)

(assert (=> bs!1969638 m!8338136))

(assert (=> d!2376712 d!2377110))

(declare-fun d!2377112 () Bool)

(declare-fun e!4692359 () Bool)

(assert (=> d!2377112 e!4692359))

(declare-fun res!3154059 () Bool)

(assert (=> d!2377112 (=> res!3154059 e!4692359)))

(declare-fun lt!2701666 () Bool)

(assert (=> d!2377112 (= res!3154059 (not lt!2701666))))

(declare-fun e!4692357 () Bool)

(assert (=> d!2377112 (= lt!2701666 e!4692357)))

(declare-fun res!3154058 () Bool)

(assert (=> d!2377112 (=> res!3154058 e!4692357)))

(assert (=> d!2377112 (= res!3154058 ((_ is Nil!74584) lt!2701382))))

(assert (=> d!2377112 (= (isPrefix!6579 lt!2701382 (++!18349 lt!2701382 call!737440)) lt!2701666)))

(declare-fun b!7955214 () Bool)

(declare-fun e!4692358 () Bool)

(assert (=> b!7955214 (= e!4692357 e!4692358)))

(declare-fun res!3154060 () Bool)

(assert (=> b!7955214 (=> (not res!3154060) (not e!4692358))))

(assert (=> b!7955214 (= res!3154060 (not ((_ is Nil!74584) (++!18349 lt!2701382 call!737440))))))

(declare-fun b!7955217 () Bool)

(assert (=> b!7955217 (= e!4692359 (>= (size!43415 (++!18349 lt!2701382 call!737440)) (size!43415 lt!2701382)))))

(declare-fun b!7955215 () Bool)

(declare-fun res!3154061 () Bool)

(assert (=> b!7955215 (=> (not res!3154061) (not e!4692358))))

(assert (=> b!7955215 (= res!3154061 (= (head!16231 lt!2701382) (head!16231 (++!18349 lt!2701382 call!737440))))))

(declare-fun b!7955216 () Bool)

(assert (=> b!7955216 (= e!4692358 (isPrefix!6579 (tail!15768 lt!2701382) (tail!15768 (++!18349 lt!2701382 call!737440))))))

(assert (= (and d!2377112 (not res!3154058)) b!7955214))

(assert (= (and b!7955214 res!3154060) b!7955215))

(assert (= (and b!7955215 res!3154061) b!7955216))

(assert (= (and d!2377112 (not res!3154059)) b!7955217))

(assert (=> b!7955217 m!8337224))

(declare-fun m!8338138 () Bool)

(assert (=> b!7955217 m!8338138))

(assert (=> b!7955217 m!8337192))

(declare-fun m!8338140 () Bool)

(assert (=> b!7955215 m!8338140))

(assert (=> b!7955215 m!8337224))

(declare-fun m!8338142 () Bool)

(assert (=> b!7955215 m!8338142))

(declare-fun m!8338144 () Bool)

(assert (=> b!7955216 m!8338144))

(assert (=> b!7955216 m!8337224))

(declare-fun m!8338146 () Bool)

(assert (=> b!7955216 m!8338146))

(assert (=> b!7955216 m!8338144))

(assert (=> b!7955216 m!8338146))

(declare-fun m!8338148 () Bool)

(assert (=> b!7955216 m!8338148))

(assert (=> d!2376712 d!2377112))

(declare-fun b!7955218 () Bool)

(declare-fun e!4692363 () Bool)

(declare-fun call!737639 () Bool)

(assert (=> b!7955218 (= e!4692363 call!737639)))

(declare-fun b!7955219 () Bool)

(declare-fun res!3154065 () Bool)

(declare-fun e!4692366 () Bool)

(assert (=> b!7955219 (=> res!3154065 e!4692366)))

(assert (=> b!7955219 (= res!3154065 (not ((_ is Concat!30478) call!737439)))))

(declare-fun e!4692364 () Bool)

(assert (=> b!7955219 (= e!4692364 e!4692366)))

(declare-fun b!7955220 () Bool)

(declare-fun e!4692365 () Bool)

(declare-fun call!737640 () Bool)

(assert (=> b!7955220 (= e!4692365 call!737640)))

(declare-fun bm!737633 () Bool)

(declare-fun call!737638 () Bool)

(assert (=> bm!737633 (= call!737638 call!737639)))

(declare-fun b!7955221 () Bool)

(declare-fun e!4692360 () Bool)

(assert (=> b!7955221 (= e!4692360 e!4692364)))

(declare-fun c!1461193 () Bool)

(assert (=> b!7955221 (= c!1461193 ((_ is Union!21479) call!737439))))

(declare-fun bm!737634 () Bool)

(assert (=> bm!737634 (= call!737640 (validRegex!11783 (ite c!1461193 (regTwo!43471 call!737439) (regTwo!43470 call!737439))))))

(declare-fun b!7955222 () Bool)

(declare-fun e!4692361 () Bool)

(assert (=> b!7955222 (= e!4692361 e!4692360)))

(declare-fun c!1461194 () Bool)

(assert (=> b!7955222 (= c!1461194 ((_ is Star!21479) call!737439))))

(declare-fun b!7955223 () Bool)

(declare-fun res!3154063 () Bool)

(assert (=> b!7955223 (=> (not res!3154063) (not e!4692365))))

(assert (=> b!7955223 (= res!3154063 call!737638)))

(assert (=> b!7955223 (= e!4692364 e!4692365)))

(declare-fun d!2377114 () Bool)

(declare-fun res!3154064 () Bool)

(assert (=> d!2377114 (=> res!3154064 e!4692361)))

(assert (=> d!2377114 (= res!3154064 ((_ is ElementMatch!21479) call!737439))))

(assert (=> d!2377114 (= (validRegex!11783 call!737439) e!4692361)))

(declare-fun bm!737635 () Bool)

(assert (=> bm!737635 (= call!737639 (validRegex!11783 (ite c!1461194 (reg!21808 call!737439) (ite c!1461193 (regOne!43471 call!737439) (regOne!43470 call!737439)))))))

(declare-fun b!7955224 () Bool)

(declare-fun e!4692362 () Bool)

(assert (=> b!7955224 (= e!4692366 e!4692362)))

(declare-fun res!3154062 () Bool)

(assert (=> b!7955224 (=> (not res!3154062) (not e!4692362))))

(assert (=> b!7955224 (= res!3154062 call!737638)))

(declare-fun b!7955225 () Bool)

(assert (=> b!7955225 (= e!4692360 e!4692363)))

(declare-fun res!3154066 () Bool)

(assert (=> b!7955225 (= res!3154066 (not (nullable!9580 (reg!21808 call!737439))))))

(assert (=> b!7955225 (=> (not res!3154066) (not e!4692363))))

(declare-fun b!7955226 () Bool)

(assert (=> b!7955226 (= e!4692362 call!737640)))

(assert (= (and d!2377114 (not res!3154064)) b!7955222))

(assert (= (and b!7955222 c!1461194) b!7955225))

(assert (= (and b!7955222 (not c!1461194)) b!7955221))

(assert (= (and b!7955225 res!3154066) b!7955218))

(assert (= (and b!7955221 c!1461193) b!7955223))

(assert (= (and b!7955221 (not c!1461193)) b!7955219))

(assert (= (and b!7955223 res!3154063) b!7955220))

(assert (= (and b!7955219 (not res!3154065)) b!7955224))

(assert (= (and b!7955224 res!3154062) b!7955226))

(assert (= (or b!7955220 b!7955226) bm!737634))

(assert (= (or b!7955223 b!7955224) bm!737633))

(assert (= (or b!7955218 bm!737633) bm!737635))

(declare-fun m!8338150 () Bool)

(assert (=> bm!737634 m!8338150))

(declare-fun m!8338152 () Bool)

(assert (=> bm!737635 m!8338152))

(declare-fun m!8338154 () Bool)

(assert (=> b!7955225 m!8338154))

(assert (=> d!2376712 d!2377114))

(declare-fun d!2377116 () Bool)

(assert (=> d!2377116 (= (lostCause!1967 call!737439) (lostCauseFct!567 call!737439))))

(declare-fun bs!1969639 () Bool)

(assert (= bs!1969639 d!2377116))

(declare-fun m!8338156 () Bool)

(assert (=> bs!1969639 m!8338156))

(assert (=> d!2376712 d!2377116))

(declare-fun d!2377118 () Bool)

(assert (=> d!2377118 (= call!737440 lt!2701520)))

(declare-fun lt!2701667 () Unit!169904)

(assert (=> d!2377118 (= lt!2701667 (choose!59955 lt!2701382 call!737440 lt!2701382 lt!2701520 input!7927))))

(assert (=> d!2377118 (isPrefix!6579 lt!2701382 input!7927)))

(assert (=> d!2377118 (= (lemmaSamePrefixThenSameSuffix!2983 lt!2701382 call!737440 lt!2701382 lt!2701520 input!7927) lt!2701667)))

(declare-fun bs!1969640 () Bool)

(assert (= bs!1969640 d!2377118))

(declare-fun m!8338158 () Bool)

(assert (=> bs!1969640 m!8338158))

(assert (=> bs!1969640 m!8337824))

(assert (=> d!2376712 d!2377118))

(declare-fun b!7955230 () Bool)

(declare-fun e!4692368 () Bool)

(declare-fun lt!2701668 () List!74708)

(assert (=> b!7955230 (= e!4692368 (or (not (= (_2!38613 lt!2701519) Nil!74584)) (= lt!2701668 (_1!38613 lt!2701519))))))

(declare-fun b!7955228 () Bool)

(declare-fun e!4692367 () List!74708)

(assert (=> b!7955228 (= e!4692367 (Cons!74584 (h!81032 (_1!38613 lt!2701519)) (++!18349 (t!390451 (_1!38613 lt!2701519)) (_2!38613 lt!2701519))))))

(declare-fun b!7955227 () Bool)

(assert (=> b!7955227 (= e!4692367 (_2!38613 lt!2701519))))

(declare-fun b!7955229 () Bool)

(declare-fun res!3154068 () Bool)

(assert (=> b!7955229 (=> (not res!3154068) (not e!4692368))))

(assert (=> b!7955229 (= res!3154068 (= (size!43415 lt!2701668) (+ (size!43415 (_1!38613 lt!2701519)) (size!43415 (_2!38613 lt!2701519)))))))

(declare-fun d!2377120 () Bool)

(assert (=> d!2377120 e!4692368))

(declare-fun res!3154067 () Bool)

(assert (=> d!2377120 (=> (not res!3154067) (not e!4692368))))

(assert (=> d!2377120 (= res!3154067 (= (content!15836 lt!2701668) ((_ map or) (content!15836 (_1!38613 lt!2701519)) (content!15836 (_2!38613 lt!2701519)))))))

(assert (=> d!2377120 (= lt!2701668 e!4692367)))

(declare-fun c!1461195 () Bool)

(assert (=> d!2377120 (= c!1461195 ((_ is Nil!74584) (_1!38613 lt!2701519)))))

(assert (=> d!2377120 (= (++!18349 (_1!38613 lt!2701519) (_2!38613 lt!2701519)) lt!2701668)))

(assert (= (and d!2377120 c!1461195) b!7955227))

(assert (= (and d!2377120 (not c!1461195)) b!7955228))

(assert (= (and d!2377120 res!3154067) b!7955229))

(assert (= (and b!7955229 res!3154068) b!7955230))

(declare-fun m!8338160 () Bool)

(assert (=> b!7955228 m!8338160))

(declare-fun m!8338162 () Bool)

(assert (=> b!7955229 m!8338162))

(assert (=> b!7955229 m!8337190))

(declare-fun m!8338164 () Bool)

(assert (=> b!7955229 m!8338164))

(declare-fun m!8338166 () Bool)

(assert (=> d!2377120 m!8338166))

(declare-fun m!8338168 () Bool)

(assert (=> d!2377120 m!8338168))

(declare-fun m!8338170 () Bool)

(assert (=> d!2377120 m!8338170))

(assert (=> d!2376712 d!2377120))

(declare-fun d!2377122 () Bool)

(assert (=> d!2377122 (= (head!16231 (tail!15768 lt!2701255)) (h!81032 (tail!15768 lt!2701255)))))

(assert (=> b!7954334 d!2377122))

(assert (=> b!7954334 d!2376994))

(declare-fun b!7955234 () Bool)

(declare-fun e!4692370 () Bool)

(declare-fun lt!2701669 () List!74708)

(assert (=> b!7955234 (= e!4692370 (or (not (= lt!2701386 Nil!74584)) (= lt!2701669 (t!390451 testedP!447))))))

(declare-fun b!7955232 () Bool)

(declare-fun e!4692369 () List!74708)

(assert (=> b!7955232 (= e!4692369 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) lt!2701386)))))

(declare-fun b!7955231 () Bool)

(assert (=> b!7955231 (= e!4692369 lt!2701386)))

(declare-fun b!7955233 () Bool)

(declare-fun res!3154070 () Bool)

(assert (=> b!7955233 (=> (not res!3154070) (not e!4692370))))

(assert (=> b!7955233 (= res!3154070 (= (size!43415 lt!2701669) (+ (size!43415 (t!390451 testedP!447)) (size!43415 lt!2701386))))))

(declare-fun d!2377124 () Bool)

(assert (=> d!2377124 e!4692370))

(declare-fun res!3154069 () Bool)

(assert (=> d!2377124 (=> (not res!3154069) (not e!4692370))))

(assert (=> d!2377124 (= res!3154069 (= (content!15836 lt!2701669) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 lt!2701386))))))

(assert (=> d!2377124 (= lt!2701669 e!4692369)))

(declare-fun c!1461196 () Bool)

(assert (=> d!2377124 (= c!1461196 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2377124 (= (++!18349 (t!390451 testedP!447) lt!2701386) lt!2701669)))

(assert (= (and d!2377124 c!1461196) b!7955231))

(assert (= (and d!2377124 (not c!1461196)) b!7955232))

(assert (= (and d!2377124 res!3154069) b!7955233))

(assert (= (and b!7955233 res!3154070) b!7955234))

(declare-fun m!8338172 () Bool)

(assert (=> b!7955232 m!8338172))

(declare-fun m!8338174 () Bool)

(assert (=> b!7955233 m!8338174))

(assert (=> b!7955233 m!8337010))

(assert (=> b!7955233 m!8337392))

(declare-fun m!8338176 () Bool)

(assert (=> d!2377124 m!8338176))

(assert (=> d!2377124 m!8337356))

(assert (=> d!2377124 m!8337396))

(assert (=> b!7954245 d!2377124))

(declare-fun d!2377126 () Bool)

(assert (=> d!2377126 (= (nullable!9580 (reg!21808 r!24602)) (nullableFct!3778 (reg!21808 r!24602)))))

(declare-fun bs!1969641 () Bool)

(assert (= bs!1969641 d!2377126))

(declare-fun m!8338178 () Bool)

(assert (=> bs!1969641 m!8338178))

(assert (=> b!7954139 d!2377126))

(assert (=> b!7954078 d!2376634))

(declare-fun d!2377128 () Bool)

(declare-fun lt!2701670 () Int)

(assert (=> d!2377128 (>= lt!2701670 0)))

(declare-fun e!4692371 () Int)

(assert (=> d!2377128 (= lt!2701670 e!4692371)))

(declare-fun c!1461197 () Bool)

(assert (=> d!2377128 (= c!1461197 ((_ is Nil!74584) (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(assert (=> d!2377128 (= (size!43415 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) lt!2701670)))

(declare-fun b!7955235 () Bool)

(assert (=> b!7955235 (= e!4692371 0)))

(declare-fun b!7955236 () Bool)

(assert (=> b!7955236 (= e!4692371 (+ 1 (size!43415 (t!390451 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))))

(assert (= (and d!2377128 c!1461197) b!7955235))

(assert (= (and d!2377128 (not c!1461197)) b!7955236))

(declare-fun m!8338180 () Bool)

(assert (=> b!7955236 m!8338180))

(assert (=> b!7954078 d!2377128))

(declare-fun d!2377130 () Bool)

(declare-fun lt!2701671 () Int)

(assert (=> d!2377130 (>= lt!2701671 0)))

(declare-fun e!4692372 () Int)

(assert (=> d!2377130 (= lt!2701671 e!4692372)))

(declare-fun c!1461198 () Bool)

(assert (=> d!2377130 (= c!1461198 ((_ is Nil!74584) (t!390451 (tail!15768 lt!2701251))))))

(assert (=> d!2377130 (= (size!43415 (t!390451 (tail!15768 lt!2701251))) lt!2701671)))

(declare-fun b!7955237 () Bool)

(assert (=> b!7955237 (= e!4692372 0)))

(declare-fun b!7955238 () Bool)

(assert (=> b!7955238 (= e!4692372 (+ 1 (size!43415 (t!390451 (t!390451 (tail!15768 lt!2701251))))))))

(assert (= (and d!2377130 c!1461198) b!7955237))

(assert (= (and d!2377130 (not c!1461198)) b!7955238))

(declare-fun m!8338182 () Bool)

(assert (=> b!7955238 m!8338182))

(assert (=> b!7954349 d!2377130))

(declare-fun d!2377132 () Bool)

(assert (=> d!2377132 (= (nullable!9580 (reg!21808 lt!2701263)) (nullableFct!3778 (reg!21808 lt!2701263)))))

(declare-fun bs!1969642 () Bool)

(assert (= bs!1969642 d!2377132))

(declare-fun m!8338184 () Bool)

(assert (=> bs!1969642 m!8338184))

(assert (=> b!7954214 d!2377132))

(declare-fun d!2377134 () Bool)

(declare-fun lt!2701672 () Int)

(assert (=> d!2377134 (>= lt!2701672 0)))

(declare-fun e!4692373 () Int)

(assert (=> d!2377134 (= lt!2701672 e!4692373)))

(declare-fun c!1461199 () Bool)

(assert (=> d!2377134 (= c!1461199 ((_ is Nil!74584) lt!2701500))))

(assert (=> d!2377134 (= (size!43415 lt!2701500) lt!2701672)))

(declare-fun b!7955239 () Bool)

(assert (=> b!7955239 (= e!4692373 0)))

(declare-fun b!7955240 () Bool)

(assert (=> b!7955240 (= e!4692373 (+ 1 (size!43415 (t!390451 lt!2701500))))))

(assert (= (and d!2377134 c!1461199) b!7955239))

(assert (= (and d!2377134 (not c!1461199)) b!7955240))

(declare-fun m!8338186 () Bool)

(assert (=> b!7955240 m!8338186))

(assert (=> b!7954089 d!2377134))

(assert (=> b!7954089 d!2376654))

(declare-fun d!2377136 () Bool)

(declare-fun lt!2701673 () Int)

(assert (=> d!2377136 (>= lt!2701673 0)))

(declare-fun e!4692374 () Int)

(assert (=> d!2377136 (= lt!2701673 e!4692374)))

(declare-fun c!1461200 () Bool)

(assert (=> d!2377136 (= c!1461200 ((_ is Nil!74584) (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))

(assert (=> d!2377136 (= (size!43415 (Cons!74584 (head!16231 lt!2701251) Nil!74584)) lt!2701673)))

(declare-fun b!7955241 () Bool)

(assert (=> b!7955241 (= e!4692374 0)))

(declare-fun b!7955242 () Bool)

(assert (=> b!7955242 (= e!4692374 (+ 1 (size!43415 (t!390451 (Cons!74584 (head!16231 lt!2701251) Nil!74584)))))))

(assert (= (and d!2377136 c!1461200) b!7955241))

(assert (= (and d!2377136 (not c!1461200)) b!7955242))

(declare-fun m!8338188 () Bool)

(assert (=> b!7955242 m!8338188))

(assert (=> b!7954089 d!2377136))

(declare-fun c!1461203 () Bool)

(declare-fun b!7955243 () Bool)

(assert (=> b!7955243 (= c!1461203 (nullable!9580 (regOne!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))))))

(declare-fun e!4692379 () Regex!21479)

(declare-fun e!4692375 () Regex!21479)

(assert (=> b!7955243 (= e!4692379 e!4692375)))

(declare-fun d!2377138 () Bool)

(declare-fun lt!2701674 () Regex!21479)

(assert (=> d!2377138 (validRegex!11783 lt!2701674)))

(declare-fun e!4692377 () Regex!21479)

(assert (=> d!2377138 (= lt!2701674 e!4692377)))

(declare-fun c!1461202 () Bool)

(assert (=> d!2377138 (= c!1461202 (or ((_ is EmptyExpr!21479) (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))) ((_ is EmptyLang!21479) (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))))))

(assert (=> d!2377138 (validRegex!11783 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))))

(assert (=> d!2377138 (= (derivativeStep!6507 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))) (h!81032 testedP!447)) lt!2701674)))

(declare-fun call!737643 () Regex!21479)

(declare-fun bm!737636 () Bool)

(declare-fun c!1461201 () Bool)

(declare-fun c!1461205 () Bool)

(assert (=> bm!737636 (= call!737643 (derivativeStep!6507 (ite c!1461205 (regTwo!43471 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))) (ite c!1461201 (reg!21808 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))) (ite c!1461203 (regTwo!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))) (regOne!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))))) (h!81032 testedP!447)))))

(declare-fun b!7955244 () Bool)

(declare-fun e!4692378 () Regex!21479)

(assert (=> b!7955244 (= e!4692378 (ite (= (h!81032 testedP!447) (c!1460858 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955245 () Bool)

(declare-fun e!4692376 () Regex!21479)

(declare-fun call!737642 () Regex!21479)

(assert (=> b!7955245 (= e!4692376 (Union!21479 call!737642 call!737643))))

(declare-fun call!737644 () Regex!21479)

(declare-fun b!7955246 () Bool)

(assert (=> b!7955246 (= e!4692375 (Union!21479 (Concat!30478 call!737644 (regTwo!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))) EmptyLang!21479))))

(declare-fun b!7955247 () Bool)

(assert (=> b!7955247 (= e!4692375 (Union!21479 (Concat!30478 call!737642 (regTwo!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))) call!737644))))

(declare-fun bm!737637 () Bool)

(assert (=> bm!737637 (= call!737642 (derivativeStep!6507 (ite c!1461205 (regOne!43471 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))) (regOne!43470 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116)))))) (h!81032 testedP!447)))))

(declare-fun b!7955248 () Bool)

(assert (=> b!7955248 (= e!4692377 e!4692378)))

(declare-fun c!1461204 () Bool)

(assert (=> b!7955248 (= c!1461204 ((_ is ElementMatch!21479) (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))))))

(declare-fun b!7955249 () Bool)

(assert (=> b!7955249 (= e!4692377 EmptyLang!21479)))

(declare-fun call!737641 () Regex!21479)

(declare-fun b!7955250 () Bool)

(assert (=> b!7955250 (= e!4692379 (Concat!30478 call!737641 (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))))))

(declare-fun bm!737638 () Bool)

(assert (=> bm!737638 (= call!737644 call!737641)))

(declare-fun bm!737639 () Bool)

(assert (=> bm!737639 (= call!737641 call!737643)))

(declare-fun b!7955251 () Bool)

(assert (=> b!7955251 (= e!4692376 e!4692379)))

(assert (=> b!7955251 (= c!1461201 ((_ is Star!21479) (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))))))

(declare-fun b!7955252 () Bool)

(assert (=> b!7955252 (= c!1461205 ((_ is Union!21479) (ite c!1461052 (regTwo!43471 baseR!116) (ite c!1461048 (reg!21808 baseR!116) (ite c!1461050 (regTwo!43470 baseR!116) (regOne!43470 baseR!116))))))))

(assert (=> b!7955252 (= e!4692378 e!4692376)))

(assert (= (and d!2377138 c!1461202) b!7955249))

(assert (= (and d!2377138 (not c!1461202)) b!7955248))

(assert (= (and b!7955248 c!1461204) b!7955244))

(assert (= (and b!7955248 (not c!1461204)) b!7955252))

(assert (= (and b!7955252 c!1461205) b!7955245))

(assert (= (and b!7955252 (not c!1461205)) b!7955251))

(assert (= (and b!7955251 c!1461201) b!7955250))

(assert (= (and b!7955251 (not c!1461201)) b!7955243))

(assert (= (and b!7955243 c!1461203) b!7955247))

(assert (= (and b!7955243 (not c!1461203)) b!7955246))

(assert (= (or b!7955247 b!7955246) bm!737638))

(assert (= (or b!7955250 bm!737638) bm!737639))

(assert (= (or b!7955245 bm!737639) bm!737636))

(assert (= (or b!7955245 b!7955247) bm!737637))

(declare-fun m!8338190 () Bool)

(assert (=> b!7955243 m!8338190))

(declare-fun m!8338192 () Bool)

(assert (=> d!2377138 m!8338192))

(declare-fun m!8338194 () Bool)

(assert (=> d!2377138 m!8338194))

(declare-fun m!8338196 () Bool)

(assert (=> bm!737636 m!8338196))

(declare-fun m!8338198 () Bool)

(assert (=> bm!737637 m!8338198))

(assert (=> bm!737539 d!2377138))

(assert (=> b!7954227 d!2377040))

(declare-fun b!7955253 () Bool)

(declare-fun e!4692383 () Bool)

(declare-fun call!737646 () Bool)

(assert (=> b!7955253 (= e!4692383 call!737646)))

(declare-fun b!7955254 () Bool)

(declare-fun res!3154074 () Bool)

(declare-fun e!4692386 () Bool)

(assert (=> b!7955254 (=> res!3154074 e!4692386)))

(assert (=> b!7955254 (= res!3154074 (not ((_ is Concat!30478) (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun e!4692384 () Bool)

(assert (=> b!7955254 (= e!4692384 e!4692386)))

(declare-fun b!7955255 () Bool)

(declare-fun e!4692385 () Bool)

(declare-fun call!737647 () Bool)

(assert (=> b!7955255 (= e!4692385 call!737647)))

(declare-fun bm!737640 () Bool)

(declare-fun call!737645 () Bool)

(assert (=> bm!737640 (= call!737645 call!737646)))

(declare-fun b!7955256 () Bool)

(declare-fun e!4692380 () Bool)

(assert (=> b!7955256 (= e!4692380 e!4692384)))

(declare-fun c!1461206 () Bool)

(assert (=> b!7955256 (= c!1461206 ((_ is Union!21479) (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(declare-fun bm!737641 () Bool)

(assert (=> bm!737641 (= call!737647 (validRegex!11783 (ite c!1461206 (regTwo!43471 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))) (regTwo!43470 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun b!7955257 () Bool)

(declare-fun e!4692381 () Bool)

(assert (=> b!7955257 (= e!4692381 e!4692380)))

(declare-fun c!1461207 () Bool)

(assert (=> b!7955257 (= c!1461207 ((_ is Star!21479) (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(declare-fun b!7955258 () Bool)

(declare-fun res!3154072 () Bool)

(assert (=> b!7955258 (=> (not res!3154072) (not e!4692385))))

(assert (=> b!7955258 (= res!3154072 call!737645)))

(assert (=> b!7955258 (= e!4692384 e!4692385)))

(declare-fun d!2377140 () Bool)

(declare-fun res!3154073 () Bool)

(assert (=> d!2377140 (=> res!3154073 e!4692381)))

(assert (=> d!2377140 (= res!3154073 ((_ is ElementMatch!21479) (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(assert (=> d!2377140 (= (validRegex!11783 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))) e!4692381)))

(declare-fun bm!737642 () Bool)

(assert (=> bm!737642 (= call!737646 (validRegex!11783 (ite c!1461207 (reg!21808 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))) (ite c!1461206 (regOne!43471 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))) (regOne!43470 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(declare-fun b!7955259 () Bool)

(declare-fun e!4692382 () Bool)

(assert (=> b!7955259 (= e!4692386 e!4692382)))

(declare-fun res!3154071 () Bool)

(assert (=> b!7955259 (=> (not res!3154071) (not e!4692382))))

(assert (=> b!7955259 (= res!3154071 call!737645)))

(declare-fun b!7955260 () Bool)

(assert (=> b!7955260 (= e!4692380 e!4692383)))

(declare-fun res!3154075 () Bool)

(assert (=> b!7955260 (= res!3154075 (not (nullable!9580 (reg!21808 (ite c!1460999 (regTwo!43471 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))) (regTwo!43470 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(assert (=> b!7955260 (=> (not res!3154075) (not e!4692383))))

(declare-fun b!7955261 () Bool)

(assert (=> b!7955261 (= e!4692382 call!737647)))

(assert (= (and d!2377140 (not res!3154073)) b!7955257))

(assert (= (and b!7955257 c!1461207) b!7955260))

(assert (= (and b!7955257 (not c!1461207)) b!7955256))

(assert (= (and b!7955260 res!3154075) b!7955253))

(assert (= (and b!7955256 c!1461206) b!7955258))

(assert (= (and b!7955256 (not c!1461206)) b!7955254))

(assert (= (and b!7955258 res!3154072) b!7955255))

(assert (= (and b!7955254 (not res!3154074)) b!7955259))

(assert (= (and b!7955259 res!3154071) b!7955261))

(assert (= (or b!7955255 b!7955261) bm!737641))

(assert (= (or b!7955258 b!7955259) bm!737640))

(assert (= (or b!7955253 bm!737640) bm!737642))

(declare-fun m!8338200 () Bool)

(assert (=> bm!737641 m!8338200))

(declare-fun m!8338202 () Bool)

(assert (=> bm!737642 m!8338202))

(declare-fun m!8338204 () Bool)

(assert (=> b!7955260 m!8338204))

(assert (=> bm!737505 d!2377140))

(declare-fun d!2377142 () Bool)

(declare-fun c!1461208 () Bool)

(assert (=> d!2377142 (= c!1461208 ((_ is Nil!74584) (t!390451 (Cons!74584 lt!2701250 Nil!74584))))))

(declare-fun e!4692387 () (InoxSet C!43296))

(assert (=> d!2377142 (= (content!15836 (t!390451 (Cons!74584 lt!2701250 Nil!74584))) e!4692387)))

(declare-fun b!7955262 () Bool)

(assert (=> b!7955262 (= e!4692387 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955263 () Bool)

(assert (=> b!7955263 (= e!4692387 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 (Cons!74584 lt!2701250 Nil!74584))) true) (content!15836 (t!390451 (t!390451 (Cons!74584 lt!2701250 Nil!74584))))))))

(assert (= (and d!2377142 c!1461208) b!7955262))

(assert (= (and d!2377142 (not c!1461208)) b!7955263))

(declare-fun m!8338206 () Bool)

(assert (=> b!7955263 m!8338206))

(declare-fun m!8338208 () Bool)

(assert (=> b!7955263 m!8338208))

(assert (=> b!7954229 d!2377142))

(assert (=> d!2376836 d!2376700))

(assert (=> d!2376836 d!2376698))

(assert (=> d!2376836 d!2376696))

(assert (=> d!2376836 d!2376652))

(declare-fun b!7955264 () Bool)

(declare-fun e!4692391 () Bool)

(declare-fun call!737649 () Bool)

(assert (=> b!7955264 (= e!4692391 call!737649)))

(declare-fun b!7955265 () Bool)

(declare-fun res!3154079 () Bool)

(declare-fun e!4692394 () Bool)

(assert (=> b!7955265 (=> res!3154079 e!4692394)))

(assert (=> b!7955265 (= res!3154079 (not ((_ is Concat!30478) (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))

(declare-fun e!4692392 () Bool)

(assert (=> b!7955265 (= e!4692392 e!4692394)))

(declare-fun b!7955266 () Bool)

(declare-fun e!4692393 () Bool)

(declare-fun call!737650 () Bool)

(assert (=> b!7955266 (= e!4692393 call!737650)))

(declare-fun bm!737643 () Bool)

(declare-fun call!737648 () Bool)

(assert (=> bm!737643 (= call!737648 call!737649)))

(declare-fun b!7955267 () Bool)

(declare-fun e!4692388 () Bool)

(assert (=> b!7955267 (= e!4692388 e!4692392)))

(declare-fun c!1461209 () Bool)

(assert (=> b!7955267 (= c!1461209 ((_ is Union!21479) (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun bm!737644 () Bool)

(assert (=> bm!737644 (= call!737650 (validRegex!11783 (ite c!1461209 (regTwo!43471 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (regTwo!43470 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(declare-fun b!7955268 () Bool)

(declare-fun e!4692389 () Bool)

(assert (=> b!7955268 (= e!4692389 e!4692388)))

(declare-fun c!1461210 () Bool)

(assert (=> b!7955268 (= c!1461210 ((_ is Star!21479) (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(declare-fun b!7955269 () Bool)

(declare-fun res!3154077 () Bool)

(assert (=> b!7955269 (=> (not res!3154077) (not e!4692393))))

(assert (=> b!7955269 (= res!3154077 call!737648)))

(assert (=> b!7955269 (= e!4692392 e!4692393)))

(declare-fun d!2377144 () Bool)

(declare-fun res!3154078 () Bool)

(assert (=> d!2377144 (=> res!3154078 e!4692389)))

(assert (=> d!2377144 (= res!3154078 ((_ is ElementMatch!21479) (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))

(assert (=> d!2377144 (= (validRegex!11783 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) e!4692389)))

(declare-fun bm!737645 () Bool)

(assert (=> bm!737645 (= call!737649 (validRegex!11783 (ite c!1461210 (reg!21808 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (ite c!1461209 (regOne!43471 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))) (regOne!43470 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))))))

(declare-fun b!7955270 () Bool)

(declare-fun e!4692390 () Bool)

(assert (=> b!7955270 (= e!4692394 e!4692390)))

(declare-fun res!3154076 () Bool)

(assert (=> b!7955270 (=> (not res!3154076) (not e!4692390))))

(assert (=> b!7955270 (= res!3154076 call!737648)))

(declare-fun b!7955271 () Bool)

(assert (=> b!7955271 (= e!4692388 e!4692391)))

(declare-fun res!3154080 () Bool)

(assert (=> b!7955271 (= res!3154080 (not (nullable!9580 (reg!21808 (ite c!1461005 (regTwo!43471 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (regTwo!43470 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))))))

(assert (=> b!7955271 (=> (not res!3154080) (not e!4692391))))

(declare-fun b!7955272 () Bool)

(assert (=> b!7955272 (= e!4692390 call!737650)))

(assert (= (and d!2377144 (not res!3154078)) b!7955268))

(assert (= (and b!7955268 c!1461210) b!7955271))

(assert (= (and b!7955268 (not c!1461210)) b!7955267))

(assert (= (and b!7955271 res!3154080) b!7955264))

(assert (= (and b!7955267 c!1461209) b!7955269))

(assert (= (and b!7955267 (not c!1461209)) b!7955265))

(assert (= (and b!7955269 res!3154077) b!7955266))

(assert (= (and b!7955265 (not res!3154079)) b!7955270))

(assert (= (and b!7955270 res!3154076) b!7955272))

(assert (= (or b!7955266 b!7955272) bm!737644))

(assert (= (or b!7955269 b!7955270) bm!737643))

(assert (= (or b!7955264 bm!737643) bm!737645))

(declare-fun m!8338210 () Bool)

(assert (=> bm!737644 m!8338210))

(declare-fun m!8338212 () Bool)

(assert (=> bm!737645 m!8338212))

(declare-fun m!8338214 () Bool)

(assert (=> b!7955271 m!8338214))

(assert (=> bm!737511 d!2377144))

(declare-fun d!2377146 () Bool)

(assert (=> d!2377146 (= (nullable!9580 call!737439) (nullableFct!3778 call!737439))))

(declare-fun bs!1969643 () Bool)

(assert (= bs!1969643 d!2377146))

(declare-fun m!8338216 () Bool)

(assert (=> bs!1969643 m!8338216))

(assert (=> bm!737487 d!2377146))

(declare-fun d!2377148 () Bool)

(assert (=> d!2377148 (= (nullable!9580 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))) (nullableFct!3778 (reg!21808 (ite c!1460870 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)) (ite c!1460869 (regOne!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regOne!43470 (derivativeStep!6507 r!24602 lt!2701250)))))))))

(declare-fun bs!1969644 () Bool)

(assert (= bs!1969644 d!2377148))

(declare-fun m!8338218 () Bool)

(assert (=> bs!1969644 m!8338218))

(assert (=> b!7954205 d!2377148))

(declare-fun d!2377150 () Bool)

(assert (=> d!2377150 (= (nullable!9580 (ite c!1460984 (regTwo!43471 r!24602) (regOne!43470 r!24602))) (nullableFct!3778 (ite c!1460984 (regTwo!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun bs!1969645 () Bool)

(assert (= bs!1969645 d!2377150))

(declare-fun m!8338220 () Bool)

(assert (=> bs!1969645 m!8338220))

(assert (=> bm!737493 d!2377150))

(declare-fun b!7955273 () Bool)

(declare-fun c!1461213 () Bool)

(assert (=> b!7955273 (= c!1461213 (nullable!9580 (regOne!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(declare-fun e!4692399 () Regex!21479)

(declare-fun e!4692395 () Regex!21479)

(assert (=> b!7955273 (= e!4692399 e!4692395)))

(declare-fun d!2377152 () Bool)

(declare-fun lt!2701675 () Regex!21479)

(assert (=> d!2377152 (validRegex!11783 lt!2701675)))

(declare-fun e!4692397 () Regex!21479)

(assert (=> d!2377152 (= lt!2701675 e!4692397)))

(declare-fun c!1461212 () Bool)

(assert (=> d!2377152 (= c!1461212 (or ((_ is EmptyExpr!21479) (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))) ((_ is EmptyLang!21479) (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))

(assert (=> d!2377152 (validRegex!11783 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))

(assert (=> d!2377152 (= (derivativeStep!6507 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)) (h!81032 testedP!447)) lt!2701675)))

(declare-fun c!1461215 () Bool)

(declare-fun call!737653 () Regex!21479)

(declare-fun c!1461211 () Bool)

(declare-fun bm!737646 () Bool)

(assert (=> bm!737646 (= call!737653 (derivativeStep!6507 (ite c!1461215 (regTwo!43471 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))) (ite c!1461211 (reg!21808 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))) (ite c!1461213 (regTwo!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))) (regOne!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))) (h!81032 testedP!447)))))

(declare-fun b!7955274 () Bool)

(declare-fun e!4692398 () Regex!21479)

(assert (=> b!7955274 (= e!4692398 (ite (= (h!81032 testedP!447) (c!1460858 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955275 () Bool)

(declare-fun e!4692396 () Regex!21479)

(declare-fun call!737652 () Regex!21479)

(assert (=> b!7955275 (= e!4692396 (Union!21479 call!737652 call!737653))))

(declare-fun call!737654 () Regex!21479)

(declare-fun b!7955276 () Bool)

(assert (=> b!7955276 (= e!4692395 (Union!21479 (Concat!30478 call!737654 (regTwo!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) EmptyLang!21479))))

(declare-fun b!7955277 () Bool)

(assert (=> b!7955277 (= e!4692395 (Union!21479 (Concat!30478 call!737652 (regTwo!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) call!737654))))

(declare-fun bm!737647 () Bool)

(assert (=> bm!737647 (= call!737652 (derivativeStep!6507 (ite c!1461215 (regOne!43471 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))) (regOne!43470 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (h!81032 testedP!447)))))

(declare-fun b!7955278 () Bool)

(assert (=> b!7955278 (= e!4692397 e!4692398)))

(declare-fun c!1461214 () Bool)

(assert (=> b!7955278 (= c!1461214 ((_ is ElementMatch!21479) (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))

(declare-fun b!7955279 () Bool)

(assert (=> b!7955279 (= e!4692397 EmptyLang!21479)))

(declare-fun b!7955280 () Bool)

(declare-fun call!737651 () Regex!21479)

(assert (=> b!7955280 (= e!4692399 (Concat!30478 call!737651 (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))

(declare-fun bm!737648 () Bool)

(assert (=> bm!737648 (= call!737654 call!737651)))

(declare-fun bm!737649 () Bool)

(assert (=> bm!737649 (= call!737651 call!737653)))

(declare-fun b!7955281 () Bool)

(assert (=> b!7955281 (= e!4692396 e!4692399)))

(assert (=> b!7955281 (= c!1461211 ((_ is Star!21479) (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))

(declare-fun b!7955282 () Bool)

(assert (=> b!7955282 (= c!1461215 ((_ is Union!21479) (ite c!1461052 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))

(assert (=> b!7955282 (= e!4692398 e!4692396)))

(assert (= (and d!2377152 c!1461212) b!7955279))

(assert (= (and d!2377152 (not c!1461212)) b!7955278))

(assert (= (and b!7955278 c!1461214) b!7955274))

(assert (= (and b!7955278 (not c!1461214)) b!7955282))

(assert (= (and b!7955282 c!1461215) b!7955275))

(assert (= (and b!7955282 (not c!1461215)) b!7955281))

(assert (= (and b!7955281 c!1461211) b!7955280))

(assert (= (and b!7955281 (not c!1461211)) b!7955273))

(assert (= (and b!7955273 c!1461213) b!7955277))

(assert (= (and b!7955273 (not c!1461213)) b!7955276))

(assert (= (or b!7955277 b!7955276) bm!737648))

(assert (= (or b!7955280 bm!737648) bm!737649))

(assert (= (or b!7955275 bm!737649) bm!737646))

(assert (= (or b!7955275 b!7955277) bm!737647))

(declare-fun m!8338222 () Bool)

(assert (=> b!7955273 m!8338222))

(declare-fun m!8338224 () Bool)

(assert (=> d!2377152 m!8338224))

(declare-fun m!8338226 () Bool)

(assert (=> d!2377152 m!8338226))

(declare-fun m!8338228 () Bool)

(assert (=> bm!737646 m!8338228))

(declare-fun m!8338230 () Bool)

(assert (=> bm!737647 m!8338230))

(assert (=> bm!737540 d!2377152))

(declare-fun d!2377154 () Bool)

(assert (=> d!2377154 (= (nullable!9580 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))) (nullableFct!3778 (reg!21808 (ite c!1460869 (regTwo!43471 (derivativeStep!6507 r!24602 lt!2701250)) (regTwo!43470 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun bs!1969646 () Bool)

(assert (= bs!1969646 d!2377154))

(declare-fun m!8338232 () Bool)

(assert (=> bs!1969646 m!8338232))

(assert (=> b!7954181 d!2377154))

(declare-fun d!2377156 () Bool)

(declare-fun res!3154083 () Bool)

(declare-fun e!4692404 () Bool)

(assert (=> d!2377156 (=> res!3154083 e!4692404)))

(assert (=> d!2377156 (= res!3154083 ((_ is EmptyExpr!21479) (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))

(assert (=> d!2377156 (= (nullableFct!3778 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))) e!4692404)))

(declare-fun b!7955283 () Bool)

(declare-fun e!4692400 () Bool)

(declare-fun call!737655 () Bool)

(assert (=> b!7955283 (= e!4692400 call!737655)))

(declare-fun b!7955284 () Bool)

(declare-fun e!4692402 () Bool)

(assert (=> b!7955284 (= e!4692404 e!4692402)))

(declare-fun res!3154084 () Bool)

(assert (=> b!7955284 (=> (not res!3154084) (not e!4692402))))

(assert (=> b!7955284 (= res!3154084 (and (not ((_ is EmptyLang!21479) (reg!21808 (derivativeStep!6507 r!24602 lt!2701250)))) (not ((_ is ElementMatch!21479) (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun b!7955285 () Bool)

(declare-fun e!4692401 () Bool)

(declare-fun e!4692403 () Bool)

(assert (=> b!7955285 (= e!4692401 e!4692403)))

(declare-fun res!3154081 () Bool)

(assert (=> b!7955285 (= res!3154081 call!737655)))

(assert (=> b!7955285 (=> res!3154081 e!4692403)))

(declare-fun b!7955286 () Bool)

(declare-fun call!737656 () Bool)

(assert (=> b!7955286 (= e!4692403 call!737656)))

(declare-fun bm!737650 () Bool)

(declare-fun c!1461216 () Bool)

(assert (=> bm!737650 (= call!737655 (nullable!9580 (ite c!1461216 (regOne!43471 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))) (regTwo!43470 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))))

(declare-fun b!7955287 () Bool)

(declare-fun e!4692405 () Bool)

(assert (=> b!7955287 (= e!4692402 e!4692405)))

(declare-fun res!3154082 () Bool)

(assert (=> b!7955287 (=> res!3154082 e!4692405)))

(assert (=> b!7955287 (= res!3154082 ((_ is Star!21479) (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))

(declare-fun b!7955288 () Bool)

(assert (=> b!7955288 (= e!4692405 e!4692401)))

(assert (=> b!7955288 (= c!1461216 ((_ is Union!21479) (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))

(declare-fun b!7955289 () Bool)

(assert (=> b!7955289 (= e!4692401 e!4692400)))

(declare-fun res!3154085 () Bool)

(assert (=> b!7955289 (= res!3154085 call!737656)))

(assert (=> b!7955289 (=> (not res!3154085) (not e!4692400))))

(declare-fun bm!737651 () Bool)

(assert (=> bm!737651 (= call!737656 (nullable!9580 (ite c!1461216 (regTwo!43471 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))) (regOne!43470 (reg!21808 (derivativeStep!6507 r!24602 lt!2701250))))))))

(assert (= (and d!2377156 (not res!3154083)) b!7955284))

(assert (= (and b!7955284 res!3154084) b!7955287))

(assert (= (and b!7955287 (not res!3154082)) b!7955288))

(assert (= (and b!7955288 c!1461216) b!7955285))

(assert (= (and b!7955288 (not c!1461216)) b!7955289))

(assert (= (and b!7955285 (not res!3154081)) b!7955286))

(assert (= (and b!7955289 res!3154085) b!7955283))

(assert (= (or b!7955285 b!7955283) bm!737650))

(assert (= (or b!7955286 b!7955289) bm!737651))

(declare-fun m!8338234 () Bool)

(assert (=> bm!737650 m!8338234))

(declare-fun m!8338236 () Bool)

(assert (=> bm!737651 m!8338236))

(assert (=> d!2376774 d!2377156))

(declare-fun b!7955290 () Bool)

(declare-fun e!4692409 () Bool)

(declare-fun call!737658 () Bool)

(assert (=> b!7955290 (= e!4692409 call!737658)))

(declare-fun b!7955291 () Bool)

(declare-fun res!3154089 () Bool)

(declare-fun e!4692412 () Bool)

(assert (=> b!7955291 (=> res!3154089 e!4692412)))

(assert (=> b!7955291 (= res!3154089 (not ((_ is Concat!30478) (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))

(declare-fun e!4692410 () Bool)

(assert (=> b!7955291 (= e!4692410 e!4692412)))

(declare-fun b!7955292 () Bool)

(declare-fun e!4692411 () Bool)

(declare-fun call!737659 () Bool)

(assert (=> b!7955292 (= e!4692411 call!737659)))

(declare-fun bm!737652 () Bool)

(declare-fun call!737657 () Bool)

(assert (=> bm!737652 (= call!737657 call!737658)))

(declare-fun b!7955293 () Bool)

(declare-fun e!4692406 () Bool)

(assert (=> b!7955293 (= e!4692406 e!4692410)))

(declare-fun c!1461217 () Bool)

(assert (=> b!7955293 (= c!1461217 ((_ is Union!21479) (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))

(declare-fun bm!737653 () Bool)

(assert (=> bm!737653 (= call!737659 (validRegex!11783 (ite c!1461217 (regTwo!43471 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))) (regTwo!43470 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))))

(declare-fun b!7955294 () Bool)

(declare-fun e!4692407 () Bool)

(assert (=> b!7955294 (= e!4692407 e!4692406)))

(declare-fun c!1461218 () Bool)

(assert (=> b!7955294 (= c!1461218 ((_ is Star!21479) (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))

(declare-fun b!7955295 () Bool)

(declare-fun res!3154087 () Bool)

(assert (=> b!7955295 (=> (not res!3154087) (not e!4692411))))

(assert (=> b!7955295 (= res!3154087 call!737657)))

(assert (=> b!7955295 (= e!4692410 e!4692411)))

(declare-fun d!2377158 () Bool)

(declare-fun res!3154088 () Bool)

(assert (=> d!2377158 (=> res!3154088 e!4692407)))

(assert (=> d!2377158 (= res!3154088 ((_ is ElementMatch!21479) (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))

(assert (=> d!2377158 (= (validRegex!11783 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))) e!4692407)))

(declare-fun bm!737654 () Bool)

(assert (=> bm!737654 (= call!737658 (validRegex!11783 (ite c!1461218 (reg!21808 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))) (ite c!1461217 (regOne!43471 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))) (regOne!43470 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))))))

(declare-fun b!7955296 () Bool)

(declare-fun e!4692408 () Bool)

(assert (=> b!7955296 (= e!4692412 e!4692408)))

(declare-fun res!3154086 () Bool)

(assert (=> b!7955296 (=> (not res!3154086) (not e!4692408))))

(assert (=> b!7955296 (= res!3154086 call!737657)))

(declare-fun b!7955297 () Bool)

(assert (=> b!7955297 (= e!4692406 e!4692409)))

(declare-fun res!3154090 () Bool)

(assert (=> b!7955297 (= res!3154090 (not (nullable!9580 (reg!21808 (ite c!1460997 (regTwo!43471 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))) (regTwo!43470 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116))))))))))

(assert (=> b!7955297 (=> (not res!3154090) (not e!4692409))))

(declare-fun b!7955298 () Bool)

(assert (=> b!7955298 (= e!4692408 call!737659)))

(assert (= (and d!2377158 (not res!3154088)) b!7955294))

(assert (= (and b!7955294 c!1461218) b!7955297))

(assert (= (and b!7955294 (not c!1461218)) b!7955293))

(assert (= (and b!7955297 res!3154090) b!7955290))

(assert (= (and b!7955293 c!1461217) b!7955295))

(assert (= (and b!7955293 (not c!1461217)) b!7955291))

(assert (= (and b!7955295 res!3154087) b!7955292))

(assert (= (and b!7955291 (not res!3154089)) b!7955296))

(assert (= (and b!7955296 res!3154086) b!7955298))

(assert (= (or b!7955292 b!7955298) bm!737653))

(assert (= (or b!7955295 b!7955296) bm!737652))

(assert (= (or b!7955290 bm!737652) bm!737654))

(declare-fun m!8338238 () Bool)

(assert (=> bm!737653 m!8338238))

(declare-fun m!8338240 () Bool)

(assert (=> bm!737654 m!8338240))

(declare-fun m!8338242 () Bool)

(assert (=> b!7955297 m!8338242))

(assert (=> bm!737502 d!2377158))

(declare-fun d!2377160 () Bool)

(declare-fun lt!2701676 () Int)

(assert (=> d!2377160 (>= lt!2701676 0)))

(declare-fun e!4692413 () Int)

(assert (=> d!2377160 (= lt!2701676 e!4692413)))

(declare-fun c!1461219 () Bool)

(assert (=> d!2377160 (= c!1461219 ((_ is Nil!74584) (t!390451 lt!2701451)))))

(assert (=> d!2377160 (= (size!43415 (t!390451 lt!2701451)) lt!2701676)))

(declare-fun b!7955299 () Bool)

(assert (=> b!7955299 (= e!4692413 0)))

(declare-fun b!7955300 () Bool)

(assert (=> b!7955300 (= e!4692413 (+ 1 (size!43415 (t!390451 (t!390451 lt!2701451)))))))

(assert (= (and d!2377160 c!1461219) b!7955299))

(assert (= (and d!2377160 (not c!1461219)) b!7955300))

(declare-fun m!8338244 () Bool)

(assert (=> b!7955300 m!8338244))

(assert (=> b!7954338 d!2377160))

(declare-fun b!7955301 () Bool)

(declare-fun e!4692415 () tuple2!70620)

(assert (=> b!7955301 (= e!4692415 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737655 () Bool)

(declare-fun call!737667 () Unit!169904)

(assert (=> bm!737655 (= call!737667 (lemmaIsPrefixSameLengthThenSameList!1627 input!7927 lt!2701531 input!7927))))

(declare-fun bm!737656 () Bool)

(declare-fun call!737665 () List!74708)

(declare-fun call!737664 () Regex!21479)

(declare-fun call!737660 () tuple2!70620)

(declare-fun lt!2701703 () List!74708)

(assert (=> bm!737656 (= call!737660 (findLongestMatchInner!2260 call!737664 lt!2701703 (+ lt!2701248 1 1 1) call!737665 input!7927 lt!2701253))))

(declare-fun bm!737657 () Bool)

(declare-fun call!737662 () C!43296)

(assert (=> bm!737657 (= call!737664 (derivativeStep!6507 call!737489 call!737662))))

(declare-fun bm!737658 () Bool)

(assert (=> bm!737658 (= call!737662 (head!16231 call!737490))))

(declare-fun bm!737659 () Bool)

(declare-fun call!737661 () Bool)

(assert (=> bm!737659 (= call!737661 (isPrefix!6579 input!7927 input!7927))))

(declare-fun b!7955303 () Bool)

(declare-fun e!4692419 () tuple2!70620)

(assert (=> b!7955303 (= e!4692415 e!4692419)))

(declare-fun c!1461224 () Bool)

(assert (=> b!7955303 (= c!1461224 (= (+ lt!2701248 1 1) lt!2701253))))

(declare-fun bm!737660 () Bool)

(assert (=> bm!737660 (= call!737665 (tail!15768 call!737490))))

(declare-fun b!7955304 () Bool)

(declare-fun e!4692418 () tuple2!70620)

(assert (=> b!7955304 (= e!4692418 (tuple2!70621 lt!2701531 Nil!74584))))

(declare-fun b!7955305 () Bool)

(assert (=> b!7955305 (= e!4692418 (tuple2!70621 Nil!74584 input!7927))))

(declare-fun bm!737661 () Bool)

(declare-fun call!737666 () Unit!169904)

(assert (=> bm!737661 (= call!737666 (lemmaIsPrefixRefl!4047 input!7927 input!7927))))

(declare-fun b!7955306 () Bool)

(declare-fun c!1461220 () Bool)

(declare-fun call!737663 () Bool)

(assert (=> b!7955306 (= c!1461220 call!737663)))

(declare-fun lt!2701693 () Unit!169904)

(declare-fun lt!2701694 () Unit!169904)

(assert (=> b!7955306 (= lt!2701693 lt!2701694)))

(assert (=> b!7955306 (= input!7927 lt!2701531)))

(assert (=> b!7955306 (= lt!2701694 call!737667)))

(declare-fun lt!2701699 () Unit!169904)

(declare-fun lt!2701697 () Unit!169904)

(assert (=> b!7955306 (= lt!2701699 lt!2701697)))

(assert (=> b!7955306 call!737661))

(assert (=> b!7955306 (= lt!2701697 call!737666)))

(assert (=> b!7955306 (= e!4692419 e!4692418)))

(declare-fun b!7955307 () Bool)

(declare-fun e!4692421 () Unit!169904)

(declare-fun Unit!169920 () Unit!169904)

(assert (=> b!7955307 (= e!4692421 Unit!169920)))

(declare-fun b!7955308 () Bool)

(declare-fun Unit!169921 () Unit!169904)

(assert (=> b!7955308 (= e!4692421 Unit!169921)))

(declare-fun lt!2701678 () Unit!169904)

(assert (=> b!7955308 (= lt!2701678 call!737666)))

(assert (=> b!7955308 call!737661))

(declare-fun lt!2701702 () Unit!169904)

(assert (=> b!7955308 (= lt!2701702 lt!2701678)))

(declare-fun lt!2701681 () Unit!169904)

(assert (=> b!7955308 (= lt!2701681 call!737667)))

(assert (=> b!7955308 (= input!7927 lt!2701531)))

(declare-fun lt!2701695 () Unit!169904)

(assert (=> b!7955308 (= lt!2701695 lt!2701681)))

(assert (=> b!7955308 false))

(declare-fun b!7955309 () Bool)

(declare-fun e!4692417 () Bool)

(declare-fun e!4692414 () Bool)

(assert (=> b!7955309 (= e!4692417 e!4692414)))

(declare-fun res!3154091 () Bool)

(assert (=> b!7955309 (=> res!3154091 e!4692414)))

(declare-fun lt!2701691 () tuple2!70620)

(assert (=> b!7955309 (= res!3154091 (isEmpty!42883 (_1!38613 lt!2701691)))))

(declare-fun b!7955310 () Bool)

(declare-fun e!4692416 () tuple2!70620)

(declare-fun e!4692420 () tuple2!70620)

(assert (=> b!7955310 (= e!4692416 e!4692420)))

(declare-fun lt!2701690 () tuple2!70620)

(assert (=> b!7955310 (= lt!2701690 call!737660)))

(declare-fun c!1461225 () Bool)

(assert (=> b!7955310 (= c!1461225 (isEmpty!42883 (_1!38613 lt!2701690)))))

(declare-fun b!7955302 () Bool)

(assert (=> b!7955302 (= e!4692420 lt!2701690)))

(declare-fun d!2377162 () Bool)

(assert (=> d!2377162 e!4692417))

(declare-fun res!3154092 () Bool)

(assert (=> d!2377162 (=> (not res!3154092) (not e!4692417))))

(assert (=> d!2377162 (= res!3154092 (= (++!18349 (_1!38613 lt!2701691) (_2!38613 lt!2701691)) input!7927))))

(assert (=> d!2377162 (= lt!2701691 e!4692415)))

(declare-fun c!1461223 () Bool)

(assert (=> d!2377162 (= c!1461223 (lostCause!1967 call!737489))))

(declare-fun lt!2701700 () Unit!169904)

(declare-fun Unit!169922 () Unit!169904)

(assert (=> d!2377162 (= lt!2701700 Unit!169922)))

(assert (=> d!2377162 (= (getSuffix!3782 input!7927 lt!2701531) call!737490)))

(declare-fun lt!2701682 () Unit!169904)

(declare-fun lt!2701687 () Unit!169904)

(assert (=> d!2377162 (= lt!2701682 lt!2701687)))

(declare-fun lt!2701692 () List!74708)

(assert (=> d!2377162 (= call!737490 lt!2701692)))

(assert (=> d!2377162 (= lt!2701687 (lemmaSamePrefixThenSameSuffix!2983 lt!2701531 call!737490 lt!2701531 lt!2701692 input!7927))))

(assert (=> d!2377162 (= lt!2701692 (getSuffix!3782 input!7927 lt!2701531))))

(declare-fun lt!2701680 () Unit!169904)

(declare-fun lt!2701684 () Unit!169904)

(assert (=> d!2377162 (= lt!2701680 lt!2701684)))

(assert (=> d!2377162 (isPrefix!6579 lt!2701531 (++!18349 lt!2701531 call!737490))))

(assert (=> d!2377162 (= lt!2701684 (lemmaConcatTwoListThenFirstIsPrefix!3845 lt!2701531 call!737490))))

(assert (=> d!2377162 (validRegex!11783 call!737489)))

(assert (=> d!2377162 (= (findLongestMatchInner!2260 call!737489 lt!2701531 (+ lt!2701248 1 1) call!737490 input!7927 lt!2701253) lt!2701691)))

(declare-fun b!7955311 () Bool)

(assert (=> b!7955311 (= e!4692414 (>= (size!43415 (_1!38613 lt!2701691)) (size!43415 lt!2701531)))))

(declare-fun bm!737662 () Bool)

(assert (=> bm!737662 (= call!737663 (nullable!9580 call!737489))))

(declare-fun b!7955312 () Bool)

(assert (=> b!7955312 (= e!4692420 (tuple2!70621 lt!2701531 call!737490))))

(declare-fun b!7955313 () Bool)

(assert (=> b!7955313 (= e!4692416 call!737660)))

(declare-fun b!7955314 () Bool)

(declare-fun c!1461221 () Bool)

(assert (=> b!7955314 (= c!1461221 call!737663)))

(declare-fun lt!2701698 () Unit!169904)

(declare-fun lt!2701683 () Unit!169904)

(assert (=> b!7955314 (= lt!2701698 lt!2701683)))

(declare-fun lt!2701696 () C!43296)

(declare-fun lt!2701685 () List!74708)

(assert (=> b!7955314 (= (++!18349 (++!18349 lt!2701531 (Cons!74584 lt!2701696 Nil!74584)) lt!2701685) input!7927)))

(assert (=> b!7955314 (= lt!2701683 (lemmaMoveElementToOtherListKeepsConcatEq!3523 lt!2701531 lt!2701696 lt!2701685 input!7927))))

(assert (=> b!7955314 (= lt!2701685 (tail!15768 call!737490))))

(assert (=> b!7955314 (= lt!2701696 (head!16231 call!737490))))

(declare-fun lt!2701701 () Unit!169904)

(declare-fun lt!2701679 () Unit!169904)

(assert (=> b!7955314 (= lt!2701701 lt!2701679)))

(assert (=> b!7955314 (isPrefix!6579 (++!18349 lt!2701531 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 lt!2701531)) Nil!74584)) input!7927)))

(assert (=> b!7955314 (= lt!2701679 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 lt!2701531 input!7927))))

(declare-fun lt!2701677 () Unit!169904)

(declare-fun lt!2701689 () Unit!169904)

(assert (=> b!7955314 (= lt!2701677 lt!2701689)))

(assert (=> b!7955314 (= lt!2701689 (lemmaAddHeadSuffixToPrefixStillPrefix!1306 lt!2701531 input!7927))))

(assert (=> b!7955314 (= lt!2701703 (++!18349 lt!2701531 (Cons!74584 (head!16231 call!737490) Nil!74584)))))

(declare-fun lt!2701686 () Unit!169904)

(assert (=> b!7955314 (= lt!2701686 e!4692421)))

(declare-fun c!1461222 () Bool)

(assert (=> b!7955314 (= c!1461222 (= (size!43415 lt!2701531) (size!43415 input!7927)))))

(declare-fun lt!2701704 () Unit!169904)

(declare-fun lt!2701688 () Unit!169904)

(assert (=> b!7955314 (= lt!2701704 lt!2701688)))

(assert (=> b!7955314 (<= (size!43415 lt!2701531) (size!43415 input!7927))))

(assert (=> b!7955314 (= lt!2701688 (lemmaIsPrefixThenSmallerEqSize!1096 lt!2701531 input!7927))))

(assert (=> b!7955314 (= e!4692419 e!4692416)))

(assert (= (and d!2377162 c!1461223) b!7955301))

(assert (= (and d!2377162 (not c!1461223)) b!7955303))

(assert (= (and b!7955303 c!1461224) b!7955306))

(assert (= (and b!7955303 (not c!1461224)) b!7955314))

(assert (= (and b!7955306 c!1461220) b!7955304))

(assert (= (and b!7955306 (not c!1461220)) b!7955305))

(assert (= (and b!7955314 c!1461222) b!7955308))

(assert (= (and b!7955314 (not c!1461222)) b!7955307))

(assert (= (and b!7955314 c!1461221) b!7955310))

(assert (= (and b!7955314 (not c!1461221)) b!7955313))

(assert (= (and b!7955310 c!1461225) b!7955312))

(assert (= (and b!7955310 (not c!1461225)) b!7955302))

(assert (= (or b!7955310 b!7955313) bm!737658))

(assert (= (or b!7955310 b!7955313) bm!737660))

(assert (= (or b!7955310 b!7955313) bm!737657))

(assert (= (or b!7955310 b!7955313) bm!737656))

(assert (= (or b!7955306 b!7955314) bm!737662))

(assert (= (or b!7955306 b!7955308) bm!737655))

(assert (= (or b!7955306 b!7955308) bm!737661))

(assert (= (or b!7955306 b!7955308) bm!737659))

(assert (= (and d!2377162 res!3154092) b!7955309))

(assert (= (and b!7955309 (not res!3154091)) b!7955311))

(declare-fun m!8338246 () Bool)

(assert (=> bm!737655 m!8338246))

(declare-fun m!8338248 () Bool)

(assert (=> b!7955310 m!8338248))

(declare-fun m!8338250 () Bool)

(assert (=> bm!737656 m!8338250))

(assert (=> bm!737661 m!8336836))

(declare-fun m!8338252 () Bool)

(assert (=> bm!737662 m!8338252))

(declare-fun m!8338254 () Bool)

(assert (=> b!7955311 m!8338254))

(declare-fun m!8338256 () Bool)

(assert (=> b!7955311 m!8338256))

(declare-fun m!8338258 () Bool)

(assert (=> b!7955314 m!8338258))

(declare-fun m!8338260 () Bool)

(assert (=> b!7955314 m!8338260))

(declare-fun m!8338262 () Bool)

(assert (=> b!7955314 m!8338262))

(declare-fun m!8338264 () Bool)

(assert (=> b!7955314 m!8338264))

(declare-fun m!8338266 () Bool)

(assert (=> b!7955314 m!8338266))

(declare-fun m!8338268 () Bool)

(assert (=> b!7955314 m!8338268))

(assert (=> b!7955314 m!8336830))

(declare-fun m!8338270 () Bool)

(assert (=> b!7955314 m!8338270))

(assert (=> b!7955314 m!8338264))

(declare-fun m!8338272 () Bool)

(assert (=> b!7955314 m!8338272))

(assert (=> b!7955314 m!8338256))

(declare-fun m!8338274 () Bool)

(assert (=> b!7955314 m!8338274))

(assert (=> b!7955314 m!8338260))

(declare-fun m!8338276 () Bool)

(assert (=> b!7955314 m!8338276))

(declare-fun m!8338278 () Bool)

(assert (=> b!7955314 m!8338278))

(assert (=> b!7955314 m!8338258))

(declare-fun m!8338280 () Bool)

(assert (=> b!7955314 m!8338280))

(assert (=> bm!737659 m!8336838))

(assert (=> bm!737658 m!8338270))

(assert (=> bm!737660 m!8338268))

(declare-fun m!8338282 () Bool)

(assert (=> bm!737657 m!8338282))

(declare-fun m!8338284 () Bool)

(assert (=> d!2377162 m!8338284))

(assert (=> d!2377162 m!8338258))

(declare-fun m!8338286 () Bool)

(assert (=> d!2377162 m!8338286))

(declare-fun m!8338288 () Bool)

(assert (=> d!2377162 m!8338288))

(declare-fun m!8338290 () Bool)

(assert (=> d!2377162 m!8338290))

(declare-fun m!8338292 () Bool)

(assert (=> d!2377162 m!8338292))

(declare-fun m!8338294 () Bool)

(assert (=> d!2377162 m!8338294))

(assert (=> d!2377162 m!8338288))

(declare-fun m!8338296 () Bool)

(assert (=> d!2377162 m!8338296))

(declare-fun m!8338298 () Bool)

(assert (=> b!7955309 m!8338298))

(assert (=> bm!737481 d!2377162))

(declare-fun d!2377164 () Bool)

(assert (=> d!2377164 (= lt!2701251 lt!2701371)))

(assert (=> d!2377164 true))

(declare-fun _$63!1414 () Unit!169904)

(assert (=> d!2377164 (= (choose!59955 testedP!447 lt!2701251 testedP!447 lt!2701371 input!7927) _$63!1414)))

(assert (=> d!2376720 d!2377164))

(assert (=> d!2376720 d!2376618))

(assert (=> bm!737484 d!2376610))

(declare-fun d!2377166 () Bool)

(declare-fun lt!2701705 () Int)

(assert (=> d!2377166 (>= lt!2701705 0)))

(declare-fun e!4692422 () Int)

(assert (=> d!2377166 (= lt!2701705 e!4692422)))

(declare-fun c!1461226 () Bool)

(assert (=> d!2377166 (= c!1461226 ((_ is Nil!74584) (t!390451 (t!390451 input!7927))))))

(assert (=> d!2377166 (= (size!43415 (t!390451 (t!390451 input!7927))) lt!2701705)))

(declare-fun b!7955315 () Bool)

(assert (=> b!7955315 (= e!4692422 0)))

(declare-fun b!7955316 () Bool)

(assert (=> b!7955316 (= e!4692422 (+ 1 (size!43415 (t!390451 (t!390451 (t!390451 input!7927))))))))

(assert (= (and d!2377166 c!1461226) b!7955315))

(assert (= (and d!2377166 (not c!1461226)) b!7955316))

(declare-fun m!8338300 () Bool)

(assert (=> b!7955316 m!8338300))

(assert (=> b!7954092 d!2377166))

(declare-fun b!7955317 () Bool)

(declare-fun c!1461229 () Bool)

(assert (=> b!7955317 (= c!1461229 (nullable!9580 (regOne!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))))

(declare-fun e!4692427 () Regex!21479)

(declare-fun e!4692423 () Regex!21479)

(assert (=> b!7955317 (= e!4692427 e!4692423)))

(declare-fun d!2377168 () Bool)

(declare-fun lt!2701706 () Regex!21479)

(assert (=> d!2377168 (validRegex!11783 lt!2701706)))

(declare-fun e!4692425 () Regex!21479)

(assert (=> d!2377168 (= lt!2701706 e!4692425)))

(declare-fun c!1461228 () Bool)

(assert (=> d!2377168 (= c!1461228 (or ((_ is EmptyExpr!21479) (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))) ((_ is EmptyLang!21479) (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))))

(assert (=> d!2377168 (validRegex!11783 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))

(assert (=> d!2377168 (= (derivativeStep!6507 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) lt!2701250) lt!2701706)))

(declare-fun call!737670 () Regex!21479)

(declare-fun c!1461227 () Bool)

(declare-fun c!1461231 () Bool)

(declare-fun bm!737663 () Bool)

(assert (=> bm!737663 (= call!737670 (derivativeStep!6507 (ite c!1461231 (regTwo!43471 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))) (ite c!1461227 (reg!21808 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))) (ite c!1461229 (regTwo!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))) (regOne!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))) lt!2701250))))

(declare-fun b!7955318 () Bool)

(declare-fun e!4692426 () Regex!21479)

(assert (=> b!7955318 (= e!4692426 (ite (= lt!2701250 (c!1460858 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955319 () Bool)

(declare-fun e!4692424 () Regex!21479)

(declare-fun call!737669 () Regex!21479)

(assert (=> b!7955319 (= e!4692424 (Union!21479 call!737669 call!737670))))

(declare-fun b!7955320 () Bool)

(declare-fun call!737671 () Regex!21479)

(assert (=> b!7955320 (= e!4692423 (Union!21479 (Concat!30478 call!737671 (regTwo!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))) EmptyLang!21479))))

(declare-fun b!7955321 () Bool)

(assert (=> b!7955321 (= e!4692423 (Union!21479 (Concat!30478 call!737669 (regTwo!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))) call!737671))))

(declare-fun bm!737664 () Bool)

(assert (=> bm!737664 (= call!737669 (derivativeStep!6507 (ite c!1461231 (regOne!43471 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))) (regOne!43470 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))) lt!2701250))))

(declare-fun b!7955322 () Bool)

(assert (=> b!7955322 (= e!4692425 e!4692426)))

(declare-fun c!1461230 () Bool)

(assert (=> b!7955322 (= c!1461230 ((_ is ElementMatch!21479) (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))))

(declare-fun b!7955323 () Bool)

(assert (=> b!7955323 (= e!4692425 EmptyLang!21479)))

(declare-fun b!7955324 () Bool)

(declare-fun call!737668 () Regex!21479)

(assert (=> b!7955324 (= e!4692427 (Concat!30478 call!737668 (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))))

(declare-fun bm!737665 () Bool)

(assert (=> bm!737665 (= call!737671 call!737668)))

(declare-fun bm!737666 () Bool)

(assert (=> bm!737666 (= call!737668 call!737670)))

(declare-fun b!7955325 () Bool)

(assert (=> b!7955325 (= e!4692424 e!4692427)))

(assert (=> b!7955325 (= c!1461227 ((_ is Star!21479) (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))))

(declare-fun b!7955326 () Bool)

(assert (=> b!7955326 (= c!1461231 ((_ is Union!21479) (ite c!1461045 (regTwo!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461041 (reg!21808 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461043 (regTwo!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))))

(assert (=> b!7955326 (= e!4692426 e!4692424)))

(assert (= (and d!2377168 c!1461228) b!7955323))

(assert (= (and d!2377168 (not c!1461228)) b!7955322))

(assert (= (and b!7955322 c!1461230) b!7955318))

(assert (= (and b!7955322 (not c!1461230)) b!7955326))

(assert (= (and b!7955326 c!1461231) b!7955319))

(assert (= (and b!7955326 (not c!1461231)) b!7955325))

(assert (= (and b!7955325 c!1461227) b!7955324))

(assert (= (and b!7955325 (not c!1461227)) b!7955317))

(assert (= (and b!7955317 c!1461229) b!7955321))

(assert (= (and b!7955317 (not c!1461229)) b!7955320))

(assert (= (or b!7955321 b!7955320) bm!737665))

(assert (= (or b!7955324 bm!737665) bm!737666))

(assert (= (or b!7955319 bm!737666) bm!737663))

(assert (= (or b!7955319 b!7955321) bm!737664))

(declare-fun m!8338302 () Bool)

(assert (=> b!7955317 m!8338302))

(declare-fun m!8338304 () Bool)

(assert (=> d!2377168 m!8338304))

(declare-fun m!8338306 () Bool)

(assert (=> d!2377168 m!8338306))

(declare-fun m!8338308 () Bool)

(assert (=> bm!737663 m!8338308))

(declare-fun m!8338310 () Bool)

(assert (=> bm!737664 m!8338310))

(assert (=> bm!737535 d!2377168))

(declare-fun b!7955327 () Bool)

(declare-fun c!1461234 () Bool)

(assert (=> b!7955327 (= c!1461234 (nullable!9580 (regOne!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun e!4692432 () Regex!21479)

(declare-fun e!4692428 () Regex!21479)

(assert (=> b!7955327 (= e!4692432 e!4692428)))

(declare-fun d!2377170 () Bool)

(declare-fun lt!2701707 () Regex!21479)

(assert (=> d!2377170 (validRegex!11783 lt!2701707)))

(declare-fun e!4692430 () Regex!21479)

(assert (=> d!2377170 (= lt!2701707 e!4692430)))

(declare-fun c!1461233 () Bool)

(assert (=> d!2377170 (= c!1461233 (or ((_ is EmptyExpr!21479) (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))) ((_ is EmptyLang!21479) (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> d!2377170 (validRegex!11783 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2377170 (= (derivativeStep!6507 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))) lt!2701250) lt!2701707)))

(declare-fun c!1461236 () Bool)

(declare-fun bm!737667 () Bool)

(declare-fun call!737674 () Regex!21479)

(declare-fun c!1461232 () Bool)

(assert (=> bm!737667 (= call!737674 (derivativeStep!6507 (ite c!1461236 (regTwo!43471 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))) (ite c!1461232 (reg!21808 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))) (ite c!1461234 (regTwo!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))) lt!2701250))))

(declare-fun b!7955328 () Bool)

(declare-fun e!4692431 () Regex!21479)

(assert (=> b!7955328 (= e!4692431 (ite (= lt!2701250 (c!1460858 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955329 () Bool)

(declare-fun e!4692429 () Regex!21479)

(declare-fun call!737673 () Regex!21479)

(assert (=> b!7955329 (= e!4692429 (Union!21479 call!737673 call!737674))))

(declare-fun b!7955330 () Bool)

(declare-fun call!737675 () Regex!21479)

(assert (=> b!7955330 (= e!4692428 (Union!21479 (Concat!30478 call!737675 (regTwo!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) EmptyLang!21479))))

(declare-fun b!7955331 () Bool)

(assert (=> b!7955331 (= e!4692428 (Union!21479 (Concat!30478 call!737673 (regTwo!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) call!737675))))

(declare-fun bm!737668 () Bool)

(assert (=> bm!737668 (= call!737673 (derivativeStep!6507 (ite c!1461236 (regOne!43471 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) lt!2701250))))

(declare-fun b!7955332 () Bool)

(assert (=> b!7955332 (= e!4692430 e!4692431)))

(declare-fun c!1461235 () Bool)

(assert (=> b!7955332 (= c!1461235 ((_ is ElementMatch!21479) (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955333 () Bool)

(assert (=> b!7955333 (= e!4692430 EmptyLang!21479)))

(declare-fun call!737672 () Regex!21479)

(declare-fun b!7955334 () Bool)

(assert (=> b!7955334 (= e!4692432 (Concat!30478 call!737672 (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(declare-fun bm!737669 () Bool)

(assert (=> bm!737669 (= call!737675 call!737672)))

(declare-fun bm!737670 () Bool)

(assert (=> bm!737670 (= call!737672 call!737674)))

(declare-fun b!7955335 () Bool)

(assert (=> b!7955335 (= e!4692429 e!4692432)))

(assert (=> b!7955335 (= c!1461232 ((_ is Star!21479) (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955336 () Bool)

(assert (=> b!7955336 (= c!1461236 ((_ is Union!21479) (ite c!1460996 (regOne!43471 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1460885 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(assert (=> b!7955336 (= e!4692431 e!4692429)))

(assert (= (and d!2377170 c!1461233) b!7955333))

(assert (= (and d!2377170 (not c!1461233)) b!7955332))

(assert (= (and b!7955332 c!1461235) b!7955328))

(assert (= (and b!7955332 (not c!1461235)) b!7955336))

(assert (= (and b!7955336 c!1461236) b!7955329))

(assert (= (and b!7955336 (not c!1461236)) b!7955335))

(assert (= (and b!7955335 c!1461232) b!7955334))

(assert (= (and b!7955335 (not c!1461232)) b!7955327))

(assert (= (and b!7955327 c!1461234) b!7955331))

(assert (= (and b!7955327 (not c!1461234)) b!7955330))

(assert (= (or b!7955331 b!7955330) bm!737669))

(assert (= (or b!7955334 bm!737669) bm!737670))

(assert (= (or b!7955329 bm!737670) bm!737667))

(assert (= (or b!7955329 b!7955331) bm!737668))

(declare-fun m!8338312 () Bool)

(assert (=> b!7955327 m!8338312))

(declare-fun m!8338314 () Bool)

(assert (=> d!2377170 m!8338314))

(declare-fun m!8338316 () Bool)

(assert (=> d!2377170 m!8338316))

(declare-fun m!8338318 () Bool)

(assert (=> bm!737667 m!8338318))

(declare-fun m!8338320 () Bool)

(assert (=> bm!737668 m!8338320))

(assert (=> bm!737498 d!2377170))

(assert (=> d!2376728 d!2376726))

(assert (=> d!2376728 d!2376724))

(declare-fun d!2377172 () Bool)

(assert (=> d!2377172 (isPrefix!6579 testedP!447 (++!18349 testedP!447 lt!2701251))))

(assert (=> d!2377172 true))

(declare-fun _$46!2110 () Unit!169904)

(assert (=> d!2377172 (= (choose!59956 testedP!447 lt!2701251) _$46!2110)))

(declare-fun bs!1969647 () Bool)

(assert (= bs!1969647 d!2377172))

(assert (=> bs!1969647 m!8336994))

(assert (=> bs!1969647 m!8336994))

(assert (=> bs!1969647 m!8337002))

(assert (=> d!2376728 d!2377172))

(declare-fun d!2377174 () Bool)

(declare-fun lt!2701708 () Int)

(assert (=> d!2377174 (>= lt!2701708 0)))

(declare-fun e!4692433 () Int)

(assert (=> d!2377174 (= lt!2701708 e!4692433)))

(declare-fun c!1461237 () Bool)

(assert (=> d!2377174 (= c!1461237 ((_ is Nil!74584) lt!2701496))))

(assert (=> d!2377174 (= (size!43415 lt!2701496) lt!2701708)))

(declare-fun b!7955337 () Bool)

(assert (=> b!7955337 (= e!4692433 0)))

(declare-fun b!7955338 () Bool)

(assert (=> b!7955338 (= e!4692433 (+ 1 (size!43415 (t!390451 lt!2701496))))))

(assert (= (and d!2377174 c!1461237) b!7955337))

(assert (= (and d!2377174 (not c!1461237)) b!7955338))

(declare-fun m!8338322 () Bool)

(assert (=> b!7955338 m!8338322))

(assert (=> b!7954073 d!2377174))

(assert (=> b!7954073 d!2376654))

(declare-fun d!2377176 () Bool)

(declare-fun lt!2701709 () Int)

(assert (=> d!2377176 (>= lt!2701709 0)))

(declare-fun e!4692434 () Int)

(assert (=> d!2377176 (= lt!2701709 e!4692434)))

(declare-fun c!1461238 () Bool)

(assert (=> d!2377176 (= c!1461238 ((_ is Nil!74584) (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))

(assert (=> d!2377176 (= (size!43415 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)) lt!2701709)))

(declare-fun b!7955339 () Bool)

(assert (=> b!7955339 (= e!4692434 0)))

(declare-fun b!7955340 () Bool)

(assert (=> b!7955340 (= e!4692434 (+ 1 (size!43415 (t!390451 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584)))))))

(assert (= (and d!2377176 c!1461238) b!7955339))

(assert (= (and d!2377176 (not c!1461238)) b!7955340))

(declare-fun m!8338324 () Bool)

(assert (=> b!7955340 m!8338324))

(assert (=> b!7954073 d!2377176))

(assert (=> b!7954312 d!2376946))

(declare-fun d!2377178 () Bool)

(declare-fun lt!2701710 () Int)

(assert (=> d!2377178 (>= lt!2701710 0)))

(declare-fun e!4692435 () Int)

(assert (=> d!2377178 (= lt!2701710 e!4692435)))

(declare-fun c!1461239 () Bool)

(assert (=> d!2377178 (= c!1461239 ((_ is Nil!74584) (tail!15768 testedP!447)))))

(assert (=> d!2377178 (= (size!43415 (tail!15768 testedP!447)) lt!2701710)))

(declare-fun b!7955341 () Bool)

(assert (=> b!7955341 (= e!4692435 0)))

(declare-fun b!7955342 () Bool)

(assert (=> b!7955342 (= e!4692435 (+ 1 (size!43415 (t!390451 (tail!15768 testedP!447)))))))

(assert (= (and d!2377178 c!1461239) b!7955341))

(assert (= (and d!2377178 (not c!1461239)) b!7955342))

(declare-fun m!8338326 () Bool)

(assert (=> b!7955342 m!8338326))

(assert (=> b!7954312 d!2377178))

(assert (=> d!2376694 d!2376610))

(assert (=> d!2376708 d!2376704))

(assert (=> d!2376708 d!2376702))

(declare-fun d!2377180 () Bool)

(assert (=> d!2377180 (= (++!18349 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)) lt!2701364) input!7927)))

(assert (=> d!2377180 true))

(declare-fun _$68!1498 () Unit!169904)

(assert (=> d!2377180 (= (choose!59954 testedP!447 lt!2701375 lt!2701364 input!7927) _$68!1498)))

(declare-fun bs!1969648 () Bool)

(assert (= bs!1969648 d!2377180))

(assert (=> bs!1969648 m!8336978))

(assert (=> bs!1969648 m!8336978))

(assert (=> bs!1969648 m!8336982))

(assert (=> d!2376708 d!2377180))

(declare-fun e!4692437 () Bool)

(declare-fun lt!2701711 () List!74708)

(declare-fun b!7955346 () Bool)

(assert (=> b!7955346 (= e!4692437 (or (not (= (Cons!74584 lt!2701375 lt!2701364) Nil!74584)) (= lt!2701711 testedP!447)))))

(declare-fun e!4692436 () List!74708)

(declare-fun b!7955344 () Bool)

(assert (=> b!7955344 (= e!4692436 (Cons!74584 (h!81032 testedP!447) (++!18349 (t!390451 testedP!447) (Cons!74584 lt!2701375 lt!2701364))))))

(declare-fun b!7955343 () Bool)

(assert (=> b!7955343 (= e!4692436 (Cons!74584 lt!2701375 lt!2701364))))

(declare-fun b!7955345 () Bool)

(declare-fun res!3154094 () Bool)

(assert (=> b!7955345 (=> (not res!3154094) (not e!4692437))))

(assert (=> b!7955345 (= res!3154094 (= (size!43415 lt!2701711) (+ (size!43415 testedP!447) (size!43415 (Cons!74584 lt!2701375 lt!2701364)))))))

(declare-fun d!2377182 () Bool)

(assert (=> d!2377182 e!4692437))

(declare-fun res!3154093 () Bool)

(assert (=> d!2377182 (=> (not res!3154093) (not e!4692437))))

(assert (=> d!2377182 (= res!3154093 (= (content!15836 lt!2701711) ((_ map or) (content!15836 testedP!447) (content!15836 (Cons!74584 lt!2701375 lt!2701364)))))))

(assert (=> d!2377182 (= lt!2701711 e!4692436)))

(declare-fun c!1461240 () Bool)

(assert (=> d!2377182 (= c!1461240 ((_ is Nil!74584) testedP!447))))

(assert (=> d!2377182 (= (++!18349 testedP!447 (Cons!74584 lt!2701375 lt!2701364)) lt!2701711)))

(assert (= (and d!2377182 c!1461240) b!7955343))

(assert (= (and d!2377182 (not c!1461240)) b!7955344))

(assert (= (and d!2377182 res!3154093) b!7955345))

(assert (= (and b!7955345 res!3154094) b!7955346))

(declare-fun m!8338328 () Bool)

(assert (=> b!7955344 m!8338328))

(declare-fun m!8338330 () Bool)

(assert (=> b!7955345 m!8338330))

(assert (=> b!7955345 m!8336828))

(declare-fun m!8338332 () Bool)

(assert (=> b!7955345 m!8338332))

(declare-fun m!8338334 () Bool)

(assert (=> d!2377182 m!8338334))

(assert (=> d!2377182 m!8337030))

(declare-fun m!8338336 () Bool)

(assert (=> d!2377182 m!8338336))

(assert (=> d!2376708 d!2377182))

(declare-fun c!1461243 () Bool)

(declare-fun b!7955347 () Bool)

(assert (=> b!7955347 (= c!1461243 (nullable!9580 (regOne!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))

(declare-fun e!4692442 () Regex!21479)

(declare-fun e!4692438 () Regex!21479)

(assert (=> b!7955347 (= e!4692442 e!4692438)))

(declare-fun d!2377184 () Bool)

(declare-fun lt!2701712 () Regex!21479)

(assert (=> d!2377184 (validRegex!11783 lt!2701712)))

(declare-fun e!4692440 () Regex!21479)

(assert (=> d!2377184 (= lt!2701712 e!4692440)))

(declare-fun c!1461242 () Bool)

(assert (=> d!2377184 (= c!1461242 (or ((_ is EmptyExpr!21479) (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))) ((_ is EmptyLang!21479) (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))))

(assert (=> d!2377184 (validRegex!11783 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> d!2377184 (= (derivativeStep!6507 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) lt!2701250) lt!2701712)))

(declare-fun c!1461241 () Bool)

(declare-fun call!737678 () Regex!21479)

(declare-fun c!1461245 () Bool)

(declare-fun bm!737671 () Bool)

(assert (=> bm!737671 (= call!737678 (derivativeStep!6507 (ite c!1461245 (regTwo!43471 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))) (ite c!1461241 (reg!21808 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))) (ite c!1461243 (regTwo!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))) (regOne!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))) lt!2701250))))

(declare-fun b!7955348 () Bool)

(declare-fun e!4692441 () Regex!21479)

(assert (=> b!7955348 (= e!4692441 (ite (= lt!2701250 (c!1460858 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955349 () Bool)

(declare-fun e!4692439 () Regex!21479)

(declare-fun call!737677 () Regex!21479)

(assert (=> b!7955349 (= e!4692439 (Union!21479 call!737677 call!737678))))

(declare-fun call!737679 () Regex!21479)

(declare-fun b!7955350 () Bool)

(assert (=> b!7955350 (= e!4692438 (Union!21479 (Concat!30478 call!737679 (regTwo!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) EmptyLang!21479))))

(declare-fun b!7955351 () Bool)

(assert (=> b!7955351 (= e!4692438 (Union!21479 (Concat!30478 call!737677 (regTwo!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) call!737679))))

(declare-fun bm!737672 () Bool)

(assert (=> bm!737672 (= call!737677 (derivativeStep!6507 (ite c!1461245 (regOne!43471 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))) (regOne!43470 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) lt!2701250))))

(declare-fun b!7955352 () Bool)

(assert (=> b!7955352 (= e!4692440 e!4692441)))

(declare-fun c!1461244 () Bool)

(assert (=> b!7955352 (= c!1461244 ((_ is ElementMatch!21479) (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955353 () Bool)

(assert (=> b!7955353 (= e!4692440 EmptyLang!21479)))

(declare-fun call!737676 () Regex!21479)

(declare-fun b!7955354 () Bool)

(assert (=> b!7955354 (= e!4692442 (Concat!30478 call!737676 (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun bm!737673 () Bool)

(assert (=> bm!737673 (= call!737679 call!737676)))

(declare-fun bm!737674 () Bool)

(assert (=> bm!737674 (= call!737676 call!737678)))

(declare-fun b!7955355 () Bool)

(assert (=> b!7955355 (= e!4692439 e!4692442)))

(assert (=> b!7955355 (= c!1461241 ((_ is Star!21479) (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955356 () Bool)

(assert (=> b!7955356 (= c!1461245 ((_ is Union!21479) (ite c!1461045 (regOne!43471 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1460885 (regTwo!43471 r!24602) (ite c!1460881 (reg!21808 r!24602) (ite c!1460883 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))))

(assert (=> b!7955356 (= e!4692441 e!4692439)))

(assert (= (and d!2377184 c!1461242) b!7955353))

(assert (= (and d!2377184 (not c!1461242)) b!7955352))

(assert (= (and b!7955352 c!1461244) b!7955348))

(assert (= (and b!7955352 (not c!1461244)) b!7955356))

(assert (= (and b!7955356 c!1461245) b!7955349))

(assert (= (and b!7955356 (not c!1461245)) b!7955355))

(assert (= (and b!7955355 c!1461241) b!7955354))

(assert (= (and b!7955355 (not c!1461241)) b!7955347))

(assert (= (and b!7955347 c!1461243) b!7955351))

(assert (= (and b!7955347 (not c!1461243)) b!7955350))

(assert (= (or b!7955351 b!7955350) bm!737673))

(assert (= (or b!7955354 bm!737673) bm!737674))

(assert (= (or b!7955349 bm!737674) bm!737671))

(assert (= (or b!7955349 b!7955351) bm!737672))

(declare-fun m!8338338 () Bool)

(assert (=> b!7955347 m!8338338))

(declare-fun m!8338340 () Bool)

(assert (=> d!2377184 m!8338340))

(declare-fun m!8338342 () Bool)

(assert (=> d!2377184 m!8338342))

(declare-fun m!8338344 () Bool)

(assert (=> bm!737671 m!8338344))

(declare-fun m!8338346 () Bool)

(assert (=> bm!737672 m!8338346))

(assert (=> bm!737536 d!2377184))

(declare-fun d!2377186 () Bool)

(declare-fun e!4692445 () Bool)

(assert (=> d!2377186 e!4692445))

(declare-fun res!3154096 () Bool)

(assert (=> d!2377186 (=> res!3154096 e!4692445)))

(declare-fun lt!2701713 () Bool)

(assert (=> d!2377186 (= res!3154096 (not lt!2701713))))

(declare-fun e!4692443 () Bool)

(assert (=> d!2377186 (= lt!2701713 e!4692443)))

(declare-fun res!3154095 () Bool)

(assert (=> d!2377186 (=> res!3154095 e!4692443)))

(assert (=> d!2377186 (= res!3154095 ((_ is Nil!74584) (tail!15768 (tail!15768 lt!2701255))))))

(assert (=> d!2377186 (= (isPrefix!6579 (tail!15768 (tail!15768 lt!2701255)) (tail!15768 (tail!15768 input!7927))) lt!2701713)))

(declare-fun b!7955357 () Bool)

(declare-fun e!4692444 () Bool)

(assert (=> b!7955357 (= e!4692443 e!4692444)))

(declare-fun res!3154097 () Bool)

(assert (=> b!7955357 (=> (not res!3154097) (not e!4692444))))

(assert (=> b!7955357 (= res!3154097 (not ((_ is Nil!74584) (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955360 () Bool)

(assert (=> b!7955360 (= e!4692445 (>= (size!43415 (tail!15768 (tail!15768 input!7927))) (size!43415 (tail!15768 (tail!15768 lt!2701255)))))))

(declare-fun b!7955358 () Bool)

(declare-fun res!3154098 () Bool)

(assert (=> b!7955358 (=> (not res!3154098) (not e!4692444))))

(assert (=> b!7955358 (= res!3154098 (= (head!16231 (tail!15768 (tail!15768 lt!2701255))) (head!16231 (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955359 () Bool)

(assert (=> b!7955359 (= e!4692444 (isPrefix!6579 (tail!15768 (tail!15768 (tail!15768 lt!2701255))) (tail!15768 (tail!15768 (tail!15768 input!7927)))))))

(assert (= (and d!2377186 (not res!3154095)) b!7955357))

(assert (= (and b!7955357 res!3154097) b!7955358))

(assert (= (and b!7955358 res!3154098) b!7955359))

(assert (= (and d!2377186 (not res!3154096)) b!7955360))

(assert (=> b!7955360 m!8337374))

(assert (=> b!7955360 m!8337916))

(assert (=> b!7955360 m!8337540))

(declare-fun m!8338348 () Bool)

(assert (=> b!7955360 m!8338348))

(assert (=> b!7955358 m!8337540))

(declare-fun m!8338350 () Bool)

(assert (=> b!7955358 m!8338350))

(assert (=> b!7955358 m!8337374))

(assert (=> b!7955358 m!8338100))

(assert (=> b!7955359 m!8337540))

(declare-fun m!8338352 () Bool)

(assert (=> b!7955359 m!8338352))

(assert (=> b!7955359 m!8337374))

(assert (=> b!7955359 m!8337918))

(assert (=> b!7955359 m!8338352))

(assert (=> b!7955359 m!8337918))

(declare-fun m!8338354 () Bool)

(assert (=> b!7955359 m!8338354))

(assert (=> b!7954335 d!2377186))

(declare-fun d!2377188 () Bool)

(assert (=> d!2377188 (= (tail!15768 (tail!15768 lt!2701255)) (t!390451 (tail!15768 lt!2701255)))))

(assert (=> b!7954335 d!2377188))

(assert (=> b!7954335 d!2377002))

(declare-fun d!2377190 () Bool)

(declare-fun c!1461246 () Bool)

(assert (=> d!2377190 (= c!1461246 ((_ is Nil!74584) lt!2701546))))

(declare-fun e!4692446 () (InoxSet C!43296))

(assert (=> d!2377190 (= (content!15836 lt!2701546) e!4692446)))

(declare-fun b!7955361 () Bool)

(assert (=> b!7955361 (= e!4692446 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955362 () Bool)

(assert (=> b!7955362 (= e!4692446 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701546) true) (content!15836 (t!390451 lt!2701546))))))

(assert (= (and d!2377190 c!1461246) b!7955361))

(assert (= (and d!2377190 (not c!1461246)) b!7955362))

(declare-fun m!8338356 () Bool)

(assert (=> b!7955362 m!8338356))

(declare-fun m!8338358 () Bool)

(assert (=> b!7955362 m!8338358))

(assert (=> d!2376744 d!2377190))

(assert (=> d!2376744 d!2377084))

(assert (=> d!2376744 d!2376798))

(assert (=> b!7954306 d!2376994))

(assert (=> bm!737486 d!2376608))

(declare-fun b!7955363 () Bool)

(declare-fun e!4692450 () Bool)

(declare-fun call!737681 () Bool)

(assert (=> b!7955363 (= e!4692450 call!737681)))

(declare-fun b!7955364 () Bool)

(declare-fun res!3154102 () Bool)

(declare-fun e!4692453 () Bool)

(assert (=> b!7955364 (=> res!3154102 e!4692453)))

(assert (=> b!7955364 (= res!3154102 (not ((_ is Concat!30478) (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286))))))))

(declare-fun e!4692451 () Bool)

(assert (=> b!7955364 (= e!4692451 e!4692453)))

(declare-fun b!7955365 () Bool)

(declare-fun e!4692452 () Bool)

(declare-fun call!737682 () Bool)

(assert (=> b!7955365 (= e!4692452 call!737682)))

(declare-fun bm!737675 () Bool)

(declare-fun call!737680 () Bool)

(assert (=> bm!737675 (= call!737680 call!737681)))

(declare-fun b!7955366 () Bool)

(declare-fun e!4692447 () Bool)

(assert (=> b!7955366 (= e!4692447 e!4692451)))

(declare-fun c!1461247 () Bool)

(assert (=> b!7955366 (= c!1461247 ((_ is Union!21479) (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))

(declare-fun bm!737676 () Bool)

(assert (=> bm!737676 (= call!737682 (validRegex!11783 (ite c!1461247 (regTwo!43471 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))) (regTwo!43470 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))))

(declare-fun b!7955367 () Bool)

(declare-fun e!4692448 () Bool)

(assert (=> b!7955367 (= e!4692448 e!4692447)))

(declare-fun c!1461248 () Bool)

(assert (=> b!7955367 (= c!1461248 ((_ is Star!21479) (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))

(declare-fun b!7955368 () Bool)

(declare-fun res!3154100 () Bool)

(assert (=> b!7955368 (=> (not res!3154100) (not e!4692452))))

(assert (=> b!7955368 (= res!3154100 call!737680)))

(assert (=> b!7955368 (= e!4692451 e!4692452)))

(declare-fun d!2377192 () Bool)

(declare-fun res!3154101 () Bool)

(assert (=> d!2377192 (=> res!3154101 e!4692448)))

(assert (=> d!2377192 (= res!3154101 ((_ is ElementMatch!21479) (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))

(assert (=> d!2377192 (= (validRegex!11783 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))) e!4692448)))

(declare-fun bm!737677 () Bool)

(assert (=> bm!737677 (= call!737681 (validRegex!11783 (ite c!1461248 (reg!21808 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))) (ite c!1461247 (regOne!43471 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))) (regOne!43470 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286))))))))))

(declare-fun b!7955369 () Bool)

(declare-fun e!4692449 () Bool)

(assert (=> b!7955369 (= e!4692453 e!4692449)))

(declare-fun res!3154099 () Bool)

(assert (=> b!7955369 (=> (not res!3154099) (not e!4692449))))

(assert (=> b!7955369 (= res!3154099 call!737680)))

(declare-fun b!7955370 () Bool)

(assert (=> b!7955370 (= e!4692447 e!4692450)))

(declare-fun res!3154103 () Bool)

(assert (=> b!7955370 (= res!3154103 (not (nullable!9580 (reg!21808 (ite c!1461026 (reg!21808 lt!2701286) (ite c!1461025 (regOne!43471 lt!2701286) (regOne!43470 lt!2701286)))))))))

(assert (=> b!7955370 (=> (not res!3154103) (not e!4692450))))

(declare-fun b!7955371 () Bool)

(assert (=> b!7955371 (= e!4692449 call!737682)))

(assert (= (and d!2377192 (not res!3154101)) b!7955367))

(assert (= (and b!7955367 c!1461248) b!7955370))

(assert (= (and b!7955367 (not c!1461248)) b!7955366))

(assert (= (and b!7955370 res!3154103) b!7955363))

(assert (= (and b!7955366 c!1461247) b!7955368))

(assert (= (and b!7955366 (not c!1461247)) b!7955364))

(assert (= (and b!7955368 res!3154100) b!7955365))

(assert (= (and b!7955364 (not res!3154102)) b!7955369))

(assert (= (and b!7955369 res!3154099) b!7955371))

(assert (= (or b!7955365 b!7955371) bm!737676))

(assert (= (or b!7955368 b!7955369) bm!737675))

(assert (= (or b!7955363 bm!737675) bm!737677))

(declare-fun m!8338360 () Bool)

(assert (=> bm!737676 m!8338360))

(declare-fun m!8338362 () Bool)

(assert (=> bm!737677 m!8338362))

(declare-fun m!8338364 () Bool)

(assert (=> b!7955370 m!8338364))

(assert (=> bm!737522 d!2377192))

(declare-fun d!2377194 () Bool)

(assert (=> d!2377194 (= (isEmpty!42883 (_1!38613 lt!2701519)) ((_ is Nil!74584) (_1!38613 lt!2701519)))))

(assert (=> b!7954101 d!2377194))

(assert (=> b!7954146 d!2376750))

(declare-fun d!2377196 () Bool)

(assert (=> d!2377196 (= (head!16231 (++!18349 testedP!447 lt!2701251)) (h!81032 (++!18349 testedP!447 lt!2701251)))))

(assert (=> b!7954146 d!2377196))

(declare-fun c!1461251 () Bool)

(declare-fun b!7955372 () Bool)

(assert (=> b!7955372 (= c!1461251 (nullable!9580 (regOne!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun e!4692458 () Regex!21479)

(declare-fun e!4692454 () Regex!21479)

(assert (=> b!7955372 (= e!4692458 e!4692454)))

(declare-fun d!2377198 () Bool)

(declare-fun lt!2701714 () Regex!21479)

(assert (=> d!2377198 (validRegex!11783 lt!2701714)))

(declare-fun e!4692456 () Regex!21479)

(assert (=> d!2377198 (= lt!2701714 e!4692456)))

(declare-fun c!1461250 () Bool)

(assert (=> d!2377198 (= c!1461250 (or ((_ is EmptyExpr!21479) (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) ((_ is EmptyLang!21479) (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> d!2377198 (validRegex!11783 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2377198 (= (derivativeStep!6507 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))) call!737437) lt!2701714)))

(declare-fun bm!737678 () Bool)

(declare-fun c!1461249 () Bool)

(declare-fun call!737685 () Regex!21479)

(declare-fun c!1461253 () Bool)

(assert (=> bm!737678 (= call!737685 (derivativeStep!6507 (ite c!1461253 (regTwo!43471 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461249 (reg!21808 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (ite c!1461251 (regTwo!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))))) call!737437))))

(declare-fun b!7955373 () Bool)

(declare-fun e!4692457 () Regex!21479)

(assert (=> b!7955373 (= e!4692457 (ite (= call!737437 (c!1460858 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955374 () Bool)

(declare-fun e!4692455 () Regex!21479)

(declare-fun call!737684 () Regex!21479)

(assert (=> b!7955374 (= e!4692455 (Union!21479 call!737684 call!737685))))

(declare-fun b!7955375 () Bool)

(declare-fun call!737686 () Regex!21479)

(assert (=> b!7955375 (= e!4692454 (Union!21479 (Concat!30478 call!737686 (regTwo!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) EmptyLang!21479))))

(declare-fun b!7955376 () Bool)

(assert (=> b!7955376 (= e!4692454 (Union!21479 (Concat!30478 call!737684 (regTwo!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) call!737686))))

(declare-fun bm!737679 () Bool)

(assert (=> bm!737679 (= call!737684 (derivativeStep!6507 (ite c!1461253 (regOne!43471 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))) (regOne!43470 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602)))))) call!737437))))

(declare-fun b!7955377 () Bool)

(assert (=> b!7955377 (= e!4692456 e!4692457)))

(declare-fun c!1461252 () Bool)

(assert (=> b!7955377 (= c!1461252 ((_ is ElementMatch!21479) (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955378 () Bool)

(assert (=> b!7955378 (= e!4692456 EmptyLang!21479)))

(declare-fun call!737683 () Regex!21479)

(declare-fun b!7955379 () Bool)

(assert (=> b!7955379 (= e!4692458 (Concat!30478 call!737683 (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun bm!737680 () Bool)

(assert (=> bm!737680 (= call!737686 call!737683)))

(declare-fun bm!737681 () Bool)

(assert (=> bm!737681 (= call!737683 call!737685)))

(declare-fun b!7955380 () Bool)

(assert (=> b!7955380 (= e!4692455 e!4692458)))

(assert (=> b!7955380 (= c!1461249 ((_ is Star!21479) (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(declare-fun b!7955381 () Bool)

(assert (=> b!7955381 (= c!1461253 ((_ is Union!21479) (ite c!1461040 (regTwo!43471 r!24602) (ite c!1461036 (reg!21808 r!24602) (ite c!1461038 (regTwo!43470 r!24602) (regOne!43470 r!24602))))))))

(assert (=> b!7955381 (= e!4692457 e!4692455)))

(assert (= (and d!2377198 c!1461250) b!7955378))

(assert (= (and d!2377198 (not c!1461250)) b!7955377))

(assert (= (and b!7955377 c!1461252) b!7955373))

(assert (= (and b!7955377 (not c!1461252)) b!7955381))

(assert (= (and b!7955381 c!1461253) b!7955374))

(assert (= (and b!7955381 (not c!1461253)) b!7955380))

(assert (= (and b!7955380 c!1461249) b!7955379))

(assert (= (and b!7955380 (not c!1461249)) b!7955372))

(assert (= (and b!7955372 c!1461251) b!7955376))

(assert (= (and b!7955372 (not c!1461251)) b!7955375))

(assert (= (or b!7955376 b!7955375) bm!737680))

(assert (= (or b!7955379 bm!737680) bm!737681))

(assert (= (or b!7955374 bm!737681) bm!737678))

(assert (= (or b!7955374 b!7955376) bm!737679))

(declare-fun m!8338366 () Bool)

(assert (=> b!7955372 m!8338366))

(declare-fun m!8338368 () Bool)

(assert (=> d!2377198 m!8338368))

(declare-fun m!8338370 () Bool)

(assert (=> d!2377198 m!8338370))

(declare-fun m!8338372 () Bool)

(assert (=> bm!737678 m!8338372))

(declare-fun m!8338374 () Bool)

(assert (=> bm!737679 m!8338374))

(assert (=> bm!737531 d!2377198))

(declare-fun d!2377200 () Bool)

(assert (=> d!2377200 (= (nullable!9580 (ite c!1460984 (regOne!43471 r!24602) (regTwo!43470 r!24602))) (nullableFct!3778 (ite c!1460984 (regOne!43471 r!24602) (regTwo!43470 r!24602))))))

(declare-fun bs!1969649 () Bool)

(assert (= bs!1969649 d!2377200))

(declare-fun m!8338376 () Bool)

(assert (=> bs!1969649 m!8338376))

(assert (=> bm!737492 d!2377200))

(declare-fun b!7955382 () Bool)

(declare-fun e!4692462 () Bool)

(declare-fun call!737688 () Bool)

(assert (=> b!7955382 (= e!4692462 call!737688)))

(declare-fun b!7955383 () Bool)

(declare-fun res!3154107 () Bool)

(declare-fun e!4692465 () Bool)

(assert (=> b!7955383 (=> res!3154107 e!4692465)))

(assert (=> b!7955383 (= res!3154107 (not ((_ is Concat!30478) lt!2701583)))))

(declare-fun e!4692463 () Bool)

(assert (=> b!7955383 (= e!4692463 e!4692465)))

(declare-fun b!7955384 () Bool)

(declare-fun e!4692464 () Bool)

(declare-fun call!737689 () Bool)

(assert (=> b!7955384 (= e!4692464 call!737689)))

(declare-fun bm!737682 () Bool)

(declare-fun call!737687 () Bool)

(assert (=> bm!737682 (= call!737687 call!737688)))

(declare-fun b!7955385 () Bool)

(declare-fun e!4692459 () Bool)

(assert (=> b!7955385 (= e!4692459 e!4692463)))

(declare-fun c!1461254 () Bool)

(assert (=> b!7955385 (= c!1461254 ((_ is Union!21479) lt!2701583))))

(declare-fun bm!737683 () Bool)

(assert (=> bm!737683 (= call!737689 (validRegex!11783 (ite c!1461254 (regTwo!43471 lt!2701583) (regTwo!43470 lt!2701583))))))

(declare-fun b!7955386 () Bool)

(declare-fun e!4692460 () Bool)

(assert (=> b!7955386 (= e!4692460 e!4692459)))

(declare-fun c!1461255 () Bool)

(assert (=> b!7955386 (= c!1461255 ((_ is Star!21479) lt!2701583))))

(declare-fun b!7955387 () Bool)

(declare-fun res!3154105 () Bool)

(assert (=> b!7955387 (=> (not res!3154105) (not e!4692464))))

(assert (=> b!7955387 (= res!3154105 call!737687)))

(assert (=> b!7955387 (= e!4692463 e!4692464)))

(declare-fun d!2377202 () Bool)

(declare-fun res!3154106 () Bool)

(assert (=> d!2377202 (=> res!3154106 e!4692460)))

(assert (=> d!2377202 (= res!3154106 ((_ is ElementMatch!21479) lt!2701583))))

(assert (=> d!2377202 (= (validRegex!11783 lt!2701583) e!4692460)))

(declare-fun bm!737684 () Bool)

(assert (=> bm!737684 (= call!737688 (validRegex!11783 (ite c!1461255 (reg!21808 lt!2701583) (ite c!1461254 (regOne!43471 lt!2701583) (regOne!43470 lt!2701583)))))))

(declare-fun b!7955388 () Bool)

(declare-fun e!4692461 () Bool)

(assert (=> b!7955388 (= e!4692465 e!4692461)))

(declare-fun res!3154104 () Bool)

(assert (=> b!7955388 (=> (not res!3154104) (not e!4692461))))

(assert (=> b!7955388 (= res!3154104 call!737687)))

(declare-fun b!7955389 () Bool)

(assert (=> b!7955389 (= e!4692459 e!4692462)))

(declare-fun res!3154108 () Bool)

(assert (=> b!7955389 (= res!3154108 (not (nullable!9580 (reg!21808 lt!2701583))))))

(assert (=> b!7955389 (=> (not res!3154108) (not e!4692462))))

(declare-fun b!7955390 () Bool)

(assert (=> b!7955390 (= e!4692461 call!737689)))

(assert (= (and d!2377202 (not res!3154106)) b!7955386))

(assert (= (and b!7955386 c!1461255) b!7955389))

(assert (= (and b!7955386 (not c!1461255)) b!7955385))

(assert (= (and b!7955389 res!3154108) b!7955382))

(assert (= (and b!7955385 c!1461254) b!7955387))

(assert (= (and b!7955385 (not c!1461254)) b!7955383))

(assert (= (and b!7955387 res!3154105) b!7955384))

(assert (= (and b!7955383 (not res!3154107)) b!7955388))

(assert (= (and b!7955388 res!3154104) b!7955390))

(assert (= (or b!7955384 b!7955390) bm!737683))

(assert (= (or b!7955387 b!7955388) bm!737682))

(assert (= (or b!7955382 bm!737682) bm!737684))

(declare-fun m!8338378 () Bool)

(assert (=> bm!737683 m!8338378))

(declare-fun m!8338380 () Bool)

(assert (=> bm!737684 m!8338380))

(declare-fun m!8338382 () Bool)

(assert (=> b!7955389 m!8338382))

(assert (=> d!2376800 d!2377202))

(assert (=> d!2376800 d!2376718))

(declare-fun d!2377204 () Bool)

(declare-fun lt!2701715 () Int)

(assert (=> d!2377204 (>= lt!2701715 0)))

(declare-fun e!4692466 () Int)

(assert (=> d!2377204 (= lt!2701715 e!4692466)))

(declare-fun c!1461256 () Bool)

(assert (=> d!2377204 (= c!1461256 ((_ is Nil!74584) lt!2701552))))

(assert (=> d!2377204 (= (size!43415 lt!2701552) lt!2701715)))

(declare-fun b!7955391 () Bool)

(assert (=> b!7955391 (= e!4692466 0)))

(declare-fun b!7955392 () Bool)

(assert (=> b!7955392 (= e!4692466 (+ 1 (size!43415 (t!390451 lt!2701552))))))

(assert (= (and d!2377204 c!1461256) b!7955391))

(assert (= (and d!2377204 (not c!1461256)) b!7955392))

(declare-fun m!8338384 () Bool)

(assert (=> b!7955392 m!8338384))

(assert (=> b!7954246 d!2377204))

(assert (=> b!7954246 d!2376654))

(declare-fun d!2377206 () Bool)

(declare-fun lt!2701716 () Int)

(assert (=> d!2377206 (>= lt!2701716 0)))

(declare-fun e!4692467 () Int)

(assert (=> d!2377206 (= lt!2701716 e!4692467)))

(declare-fun c!1461257 () Bool)

(assert (=> d!2377206 (= c!1461257 ((_ is Nil!74584) lt!2701386))))

(assert (=> d!2377206 (= (size!43415 lt!2701386) lt!2701716)))

(declare-fun b!7955393 () Bool)

(assert (=> b!7955393 (= e!4692467 0)))

(declare-fun b!7955394 () Bool)

(assert (=> b!7955394 (= e!4692467 (+ 1 (size!43415 (t!390451 lt!2701386))))))

(assert (= (and d!2377206 c!1461257) b!7955393))

(assert (= (and d!2377206 (not c!1461257)) b!7955394))

(declare-fun m!8338386 () Bool)

(assert (=> b!7955394 m!8338386))

(assert (=> b!7954246 d!2377206))

(declare-fun b!7955395 () Bool)

(declare-fun e!4692471 () Bool)

(declare-fun call!737691 () Bool)

(assert (=> b!7955395 (= e!4692471 call!737691)))

(declare-fun b!7955396 () Bool)

(declare-fun res!3154112 () Bool)

(declare-fun e!4692474 () Bool)

(assert (=> b!7955396 (=> res!3154112 e!4692474)))

(assert (=> b!7955396 (= res!3154112 (not ((_ is Concat!30478) (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))))

(declare-fun e!4692472 () Bool)

(assert (=> b!7955396 (= e!4692472 e!4692474)))

(declare-fun b!7955397 () Bool)

(declare-fun e!4692473 () Bool)

(declare-fun call!737692 () Bool)

(assert (=> b!7955397 (= e!4692473 call!737692)))

(declare-fun bm!737685 () Bool)

(declare-fun call!737690 () Bool)

(assert (=> bm!737685 (= call!737690 call!737691)))

(declare-fun b!7955398 () Bool)

(declare-fun e!4692468 () Bool)

(assert (=> b!7955398 (= e!4692468 e!4692472)))

(declare-fun c!1461258 () Bool)

(assert (=> b!7955398 (= c!1461258 ((_ is Union!21479) (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))

(declare-fun bm!737686 () Bool)

(assert (=> bm!737686 (= call!737692 (validRegex!11783 (ite c!1461258 (regTwo!43471 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))) (regTwo!43470 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))))

(declare-fun b!7955399 () Bool)

(declare-fun e!4692469 () Bool)

(assert (=> b!7955399 (= e!4692469 e!4692468)))

(declare-fun c!1461259 () Bool)

(assert (=> b!7955399 (= c!1461259 ((_ is Star!21479) (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))

(declare-fun b!7955400 () Bool)

(declare-fun res!3154110 () Bool)

(assert (=> b!7955400 (=> (not res!3154110) (not e!4692473))))

(assert (=> b!7955400 (= res!3154110 call!737690)))

(assert (=> b!7955400 (= e!4692472 e!4692473)))

(declare-fun d!2377208 () Bool)

(declare-fun res!3154111 () Bool)

(assert (=> d!2377208 (=> res!3154111 e!4692469)))

(assert (=> d!2377208 (= res!3154111 ((_ is ElementMatch!21479) (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))

(assert (=> d!2377208 (= (validRegex!11783 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))) e!4692469)))

(declare-fun bm!737687 () Bool)

(assert (=> bm!737687 (= call!737691 (validRegex!11783 (ite c!1461259 (reg!21808 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))) (ite c!1461258 (regOne!43471 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))) (regOne!43470 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))))))

(declare-fun b!7955401 () Bool)

(declare-fun e!4692470 () Bool)

(assert (=> b!7955401 (= e!4692474 e!4692470)))

(declare-fun res!3154109 () Bool)

(assert (=> b!7955401 (=> (not res!3154109) (not e!4692470))))

(assert (=> b!7955401 (= res!3154109 call!737690)))

(declare-fun b!7955402 () Bool)

(assert (=> b!7955402 (= e!4692468 e!4692471)))

(declare-fun res!3154113 () Bool)

(assert (=> b!7955402 (= res!3154113 (not (nullable!9580 (reg!21808 (ite c!1461003 (reg!21808 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (ite c!1461002 (regOne!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regOne!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))))

(assert (=> b!7955402 (=> (not res!3154113) (not e!4692471))))

(declare-fun b!7955403 () Bool)

(assert (=> b!7955403 (= e!4692470 call!737692)))

(assert (= (and d!2377208 (not res!3154111)) b!7955399))

(assert (= (and b!7955399 c!1461259) b!7955402))

(assert (= (and b!7955399 (not c!1461259)) b!7955398))

(assert (= (and b!7955402 res!3154113) b!7955395))

(assert (= (and b!7955398 c!1461258) b!7955400))

(assert (= (and b!7955398 (not c!1461258)) b!7955396))

(assert (= (and b!7955400 res!3154110) b!7955397))

(assert (= (and b!7955396 (not res!3154112)) b!7955401))

(assert (= (and b!7955401 res!3154109) b!7955403))

(assert (= (or b!7955397 b!7955403) bm!737686))

(assert (= (or b!7955400 b!7955401) bm!737685))

(assert (= (or b!7955395 bm!737685) bm!737687))

(declare-fun m!8338388 () Bool)

(assert (=> bm!737686 m!8338388))

(declare-fun m!8338390 () Bool)

(assert (=> bm!737687 m!8338390))

(declare-fun m!8338392 () Bool)

(assert (=> b!7955402 m!8338392))

(assert (=> bm!737509 d!2377208))

(declare-fun lt!2701717 () List!74708)

(declare-fun e!4692476 () Bool)

(declare-fun b!7955407 () Bool)

(assert (=> b!7955407 (= e!4692476 (or (not (= (tail!15768 lt!2701251) Nil!74584)) (= lt!2701717 (t!390451 (t!390451 lt!2701255)))))))

(declare-fun b!7955405 () Bool)

(declare-fun e!4692475 () List!74708)

(assert (=> b!7955405 (= e!4692475 (Cons!74584 (h!81032 (t!390451 (t!390451 lt!2701255))) (++!18349 (t!390451 (t!390451 (t!390451 lt!2701255))) (tail!15768 lt!2701251))))))

(declare-fun b!7955404 () Bool)

(assert (=> b!7955404 (= e!4692475 (tail!15768 lt!2701251))))

(declare-fun b!7955406 () Bool)

(declare-fun res!3154115 () Bool)

(assert (=> b!7955406 (=> (not res!3154115) (not e!4692476))))

(assert (=> b!7955406 (= res!3154115 (= (size!43415 lt!2701717) (+ (size!43415 (t!390451 (t!390451 lt!2701255))) (size!43415 (tail!15768 lt!2701251)))))))

(declare-fun d!2377210 () Bool)

(assert (=> d!2377210 e!4692476))

(declare-fun res!3154114 () Bool)

(assert (=> d!2377210 (=> (not res!3154114) (not e!4692476))))

(assert (=> d!2377210 (= res!3154114 (= (content!15836 lt!2701717) ((_ map or) (content!15836 (t!390451 (t!390451 lt!2701255))) (content!15836 (tail!15768 lt!2701251)))))))

(assert (=> d!2377210 (= lt!2701717 e!4692475)))

(declare-fun c!1461260 () Bool)

(assert (=> d!2377210 (= c!1461260 ((_ is Nil!74584) (t!390451 (t!390451 lt!2701255))))))

(assert (=> d!2377210 (= (++!18349 (t!390451 (t!390451 lt!2701255)) (tail!15768 lt!2701251)) lt!2701717)))

(assert (= (and d!2377210 c!1461260) b!7955404))

(assert (= (and d!2377210 (not c!1461260)) b!7955405))

(assert (= (and d!2377210 res!3154114) b!7955406))

(assert (= (and b!7955406 res!3154115) b!7955407))

(assert (=> b!7955405 m!8336862))

(declare-fun m!8338394 () Bool)

(assert (=> b!7955405 m!8338394))

(declare-fun m!8338396 () Bool)

(assert (=> b!7955406 m!8338396))

(assert (=> b!7955406 m!8337324))

(assert (=> b!7955406 m!8336862))

(assert (=> b!7955406 m!8337038))

(declare-fun m!8338398 () Bool)

(assert (=> d!2377210 m!8338398))

(assert (=> d!2377210 m!8338076))

(assert (=> d!2377210 m!8336862))

(assert (=> d!2377210 m!8337044))

(assert (=> b!7954184 d!2377210))

(declare-fun d!2377212 () Bool)

(declare-fun c!1461261 () Bool)

(assert (=> d!2377212 (= c!1461261 ((_ is Nil!74584) lt!2701498))))

(declare-fun e!4692477 () (InoxSet C!43296))

(assert (=> d!2377212 (= (content!15836 lt!2701498) e!4692477)))

(declare-fun b!7955408 () Bool)

(assert (=> b!7955408 (= e!4692477 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955409 () Bool)

(assert (=> b!7955409 (= e!4692477 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 lt!2701498) true) (content!15836 (t!390451 lt!2701498))))))

(assert (= (and d!2377212 c!1461261) b!7955408))

(assert (= (and d!2377212 (not c!1461261)) b!7955409))

(declare-fun m!8338400 () Bool)

(assert (=> b!7955409 m!8338400))

(declare-fun m!8338402 () Bool)

(assert (=> b!7955409 m!8338402))

(assert (=> d!2376702 d!2377212))

(assert (=> d!2376702 d!2376764))

(declare-fun d!2377214 () Bool)

(declare-fun c!1461262 () Bool)

(assert (=> d!2377214 (= c!1461262 ((_ is Nil!74584) (Cons!74584 lt!2701375 Nil!74584)))))

(declare-fun e!4692478 () (InoxSet C!43296))

(assert (=> d!2377214 (= (content!15836 (Cons!74584 lt!2701375 Nil!74584)) e!4692478)))

(declare-fun b!7955410 () Bool)

(assert (=> b!7955410 (= e!4692478 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955411 () Bool)

(assert (=> b!7955411 (= e!4692478 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (Cons!74584 lt!2701375 Nil!74584)) true) (content!15836 (t!390451 (Cons!74584 lt!2701375 Nil!74584)))))))

(assert (= (and d!2377214 c!1461262) b!7955410))

(assert (= (and d!2377214 (not c!1461262)) b!7955411))

(declare-fun m!8338404 () Bool)

(assert (=> b!7955411 m!8338404))

(declare-fun m!8338406 () Bool)

(assert (=> b!7955411 m!8338406))

(assert (=> d!2376702 d!2377214))

(declare-fun d!2377216 () Bool)

(declare-fun lt!2701718 () Int)

(assert (=> d!2377216 (>= lt!2701718 0)))

(declare-fun e!4692479 () Int)

(assert (=> d!2377216 (= lt!2701718 e!4692479)))

(declare-fun c!1461263 () Bool)

(assert (=> d!2377216 (= c!1461263 ((_ is Nil!74584) lt!2701546))))

(assert (=> d!2377216 (= (size!43415 lt!2701546) lt!2701718)))

(declare-fun b!7955412 () Bool)

(assert (=> b!7955412 (= e!4692479 0)))

(declare-fun b!7955413 () Bool)

(assert (=> b!7955413 (= e!4692479 (+ 1 (size!43415 (t!390451 lt!2701546))))))

(assert (= (and d!2377216 c!1461263) b!7955412))

(assert (= (and d!2377216 (not c!1461263)) b!7955413))

(declare-fun m!8338408 () Bool)

(assert (=> b!7955413 m!8338408))

(assert (=> b!7954185 d!2377216))

(assert (=> b!7954185 d!2376748))

(assert (=> b!7954185 d!2376834))

(declare-fun b!7955414 () Bool)

(declare-fun c!1461266 () Bool)

(assert (=> b!7955414 (= c!1461266 (nullable!9580 (regOne!43470 call!737439)))))

(declare-fun e!4692484 () Regex!21479)

(declare-fun e!4692480 () Regex!21479)

(assert (=> b!7955414 (= e!4692484 e!4692480)))

(declare-fun d!2377218 () Bool)

(declare-fun lt!2701719 () Regex!21479)

(assert (=> d!2377218 (validRegex!11783 lt!2701719)))

(declare-fun e!4692482 () Regex!21479)

(assert (=> d!2377218 (= lt!2701719 e!4692482)))

(declare-fun c!1461265 () Bool)

(assert (=> d!2377218 (= c!1461265 (or ((_ is EmptyExpr!21479) call!737439) ((_ is EmptyLang!21479) call!737439)))))

(assert (=> d!2377218 (validRegex!11783 call!737439)))

(assert (=> d!2377218 (= (derivativeStep!6507 call!737439 call!737487) lt!2701719)))

(declare-fun c!1461264 () Bool)

(declare-fun call!737695 () Regex!21479)

(declare-fun c!1461268 () Bool)

(declare-fun bm!737688 () Bool)

(assert (=> bm!737688 (= call!737695 (derivativeStep!6507 (ite c!1461268 (regTwo!43471 call!737439) (ite c!1461264 (reg!21808 call!737439) (ite c!1461266 (regTwo!43470 call!737439) (regOne!43470 call!737439)))) call!737487))))

(declare-fun b!7955415 () Bool)

(declare-fun e!4692483 () Regex!21479)

(assert (=> b!7955415 (= e!4692483 (ite (= call!737487 (c!1460858 call!737439)) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955416 () Bool)

(declare-fun e!4692481 () Regex!21479)

(declare-fun call!737694 () Regex!21479)

(assert (=> b!7955416 (= e!4692481 (Union!21479 call!737694 call!737695))))

(declare-fun b!7955417 () Bool)

(declare-fun call!737696 () Regex!21479)

(assert (=> b!7955417 (= e!4692480 (Union!21479 (Concat!30478 call!737696 (regTwo!43470 call!737439)) EmptyLang!21479))))

(declare-fun b!7955418 () Bool)

(assert (=> b!7955418 (= e!4692480 (Union!21479 (Concat!30478 call!737694 (regTwo!43470 call!737439)) call!737696))))

(declare-fun bm!737689 () Bool)

(assert (=> bm!737689 (= call!737694 (derivativeStep!6507 (ite c!1461268 (regOne!43471 call!737439) (regOne!43470 call!737439)) call!737487))))

(declare-fun b!7955419 () Bool)

(assert (=> b!7955419 (= e!4692482 e!4692483)))

(declare-fun c!1461267 () Bool)

(assert (=> b!7955419 (= c!1461267 ((_ is ElementMatch!21479) call!737439))))

(declare-fun b!7955420 () Bool)

(assert (=> b!7955420 (= e!4692482 EmptyLang!21479)))

(declare-fun b!7955421 () Bool)

(declare-fun call!737693 () Regex!21479)

(assert (=> b!7955421 (= e!4692484 (Concat!30478 call!737693 call!737439))))

(declare-fun bm!737690 () Bool)

(assert (=> bm!737690 (= call!737696 call!737693)))

(declare-fun bm!737691 () Bool)

(assert (=> bm!737691 (= call!737693 call!737695)))

(declare-fun b!7955422 () Bool)

(assert (=> b!7955422 (= e!4692481 e!4692484)))

(assert (=> b!7955422 (= c!1461264 ((_ is Star!21479) call!737439))))

(declare-fun b!7955423 () Bool)

(assert (=> b!7955423 (= c!1461268 ((_ is Union!21479) call!737439))))

(assert (=> b!7955423 (= e!4692483 e!4692481)))

(assert (= (and d!2377218 c!1461265) b!7955420))

(assert (= (and d!2377218 (not c!1461265)) b!7955419))

(assert (= (and b!7955419 c!1461267) b!7955415))

(assert (= (and b!7955419 (not c!1461267)) b!7955423))

(assert (= (and b!7955423 c!1461268) b!7955416))

(assert (= (and b!7955423 (not c!1461268)) b!7955422))

(assert (= (and b!7955422 c!1461264) b!7955421))

(assert (= (and b!7955422 (not c!1461264)) b!7955414))

(assert (= (and b!7955414 c!1461266) b!7955418))

(assert (= (and b!7955414 (not c!1461266)) b!7955417))

(assert (= (or b!7955418 b!7955417) bm!737690))

(assert (= (or b!7955421 bm!737690) bm!737691))

(assert (= (or b!7955416 bm!737691) bm!737688))

(assert (= (or b!7955416 b!7955418) bm!737689))

(declare-fun m!8338410 () Bool)

(assert (=> b!7955414 m!8338410))

(declare-fun m!8338412 () Bool)

(assert (=> d!2377218 m!8338412))

(assert (=> d!2377218 m!8337222))

(declare-fun m!8338414 () Bool)

(assert (=> bm!737688 m!8338414))

(declare-fun m!8338416 () Bool)

(assert (=> bm!737689 m!8338416))

(assert (=> bm!737482 d!2377218))

(declare-fun d!2377220 () Bool)

(assert (=> d!2377220 (= (nullable!9580 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))) (nullableFct!3778 (reg!21808 (ite c!1460943 (regTwo!43471 baseR!116) (regTwo!43470 baseR!116)))))))

(declare-fun bs!1969650 () Bool)

(assert (= bs!1969650 d!2377220))

(declare-fun m!8338418 () Bool)

(assert (=> bs!1969650 m!8338418))

(assert (=> b!7954172 d!2377220))

(declare-fun e!4692486 () Bool)

(declare-fun b!7955427 () Bool)

(declare-fun lt!2701720 () List!74708)

(assert (=> b!7955427 (= e!4692486 (or (not (= (Cons!74584 lt!2701375 Nil!74584) Nil!74584)) (= lt!2701720 (t!390451 testedP!447))))))

(declare-fun b!7955425 () Bool)

(declare-fun e!4692485 () List!74708)

(assert (=> b!7955425 (= e!4692485 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) (Cons!74584 lt!2701375 Nil!74584))))))

(declare-fun b!7955424 () Bool)

(assert (=> b!7955424 (= e!4692485 (Cons!74584 lt!2701375 Nil!74584))))

(declare-fun b!7955426 () Bool)

(declare-fun res!3154117 () Bool)

(assert (=> b!7955426 (=> (not res!3154117) (not e!4692486))))

(assert (=> b!7955426 (= res!3154117 (= (size!43415 lt!2701720) (+ (size!43415 (t!390451 testedP!447)) (size!43415 (Cons!74584 lt!2701375 Nil!74584)))))))

(declare-fun d!2377222 () Bool)

(assert (=> d!2377222 e!4692486))

(declare-fun res!3154116 () Bool)

(assert (=> d!2377222 (=> (not res!3154116) (not e!4692486))))

(assert (=> d!2377222 (= res!3154116 (= (content!15836 lt!2701720) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 (Cons!74584 lt!2701375 Nil!74584)))))))

(assert (=> d!2377222 (= lt!2701720 e!4692485)))

(declare-fun c!1461269 () Bool)

(assert (=> d!2377222 (= c!1461269 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2377222 (= (++!18349 (t!390451 testedP!447) (Cons!74584 lt!2701375 Nil!74584)) lt!2701720)))

(assert (= (and d!2377222 c!1461269) b!7955424))

(assert (= (and d!2377222 (not c!1461269)) b!7955425))

(assert (= (and d!2377222 res!3154116) b!7955426))

(assert (= (and b!7955426 res!3154117) b!7955427))

(declare-fun m!8338420 () Bool)

(assert (=> b!7955425 m!8338420))

(declare-fun m!8338422 () Bool)

(assert (=> b!7955426 m!8338422))

(assert (=> b!7955426 m!8337010))

(assert (=> b!7955426 m!8337146))

(declare-fun m!8338424 () Bool)

(assert (=> d!2377222 m!8338424))

(assert (=> d!2377222 m!8337356))

(assert (=> d!2377222 m!8337150))

(assert (=> b!7954080 d!2377222))

(declare-fun d!2377224 () Bool)

(declare-fun lt!2701721 () Regex!21479)

(assert (=> d!2377224 (validRegex!11783 lt!2701721)))

(declare-fun e!4692487 () Regex!21479)

(assert (=> d!2377224 (= lt!2701721 e!4692487)))

(declare-fun c!1461270 () Bool)

(assert (=> d!2377224 (= c!1461270 ((_ is Cons!74584) (t!390451 (t!390451 testedP!447))))))

(assert (=> d!2377224 (validRegex!11783 (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))))))

(assert (=> d!2377224 (= (derivative!665 (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))) (t!390451 (t!390451 testedP!447))) lt!2701721)))

(declare-fun b!7955428 () Bool)

(assert (=> b!7955428 (= e!4692487 (derivative!665 (derivativeStep!6507 (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))) (h!81032 (t!390451 (t!390451 testedP!447)))) (t!390451 (t!390451 (t!390451 testedP!447)))))))

(declare-fun b!7955429 () Bool)

(assert (=> b!7955429 (= e!4692487 (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))))))

(assert (= (and d!2377224 c!1461270) b!7955428))

(assert (= (and d!2377224 (not c!1461270)) b!7955429))

(declare-fun m!8338426 () Bool)

(assert (=> d!2377224 m!8338426))

(assert (=> d!2377224 m!8337508))

(declare-fun m!8338428 () Bool)

(assert (=> d!2377224 m!8338428))

(assert (=> b!7955428 m!8337508))

(declare-fun m!8338430 () Bool)

(assert (=> b!7955428 m!8338430))

(assert (=> b!7955428 m!8338430))

(declare-fun m!8338432 () Bool)

(assert (=> b!7955428 m!8338432))

(assert (=> b!7954313 d!2377224))

(declare-fun b!7955430 () Bool)

(declare-fun c!1461273 () Bool)

(assert (=> b!7955430 (= c!1461273 (nullable!9580 (regOne!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))))

(declare-fun e!4692492 () Regex!21479)

(declare-fun e!4692488 () Regex!21479)

(assert (=> b!7955430 (= e!4692492 e!4692488)))

(declare-fun d!2377226 () Bool)

(declare-fun lt!2701722 () Regex!21479)

(assert (=> d!2377226 (validRegex!11783 lt!2701722)))

(declare-fun e!4692490 () Regex!21479)

(assert (=> d!2377226 (= lt!2701722 e!4692490)))

(declare-fun c!1461272 () Bool)

(assert (=> d!2377226 (= c!1461272 (or ((_ is EmptyExpr!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) ((_ is EmptyLang!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))))

(assert (=> d!2377226 (validRegex!11783 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))

(assert (=> d!2377226 (= (derivativeStep!6507 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)) (h!81032 (t!390451 testedP!447))) lt!2701722)))

(declare-fun bm!737692 () Bool)

(declare-fun c!1461271 () Bool)

(declare-fun call!737699 () Regex!21479)

(declare-fun c!1461275 () Bool)

(assert (=> bm!737692 (= call!737699 (derivativeStep!6507 (ite c!1461275 (regTwo!43471 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (ite c!1461271 (reg!21808 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (ite c!1461273 (regTwo!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (regOne!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))))) (h!81032 (t!390451 testedP!447))))))

(declare-fun b!7955431 () Bool)

(declare-fun e!4692491 () Regex!21479)

(assert (=> b!7955431 (= e!4692491 (ite (= (h!81032 (t!390451 testedP!447)) (c!1460858 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955432 () Bool)

(declare-fun e!4692489 () Regex!21479)

(declare-fun call!737698 () Regex!21479)

(assert (=> b!7955432 (= e!4692489 (Union!21479 call!737698 call!737699))))

(declare-fun b!7955433 () Bool)

(declare-fun call!737700 () Regex!21479)

(assert (=> b!7955433 (= e!4692488 (Union!21479 (Concat!30478 call!737700 (regTwo!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))) EmptyLang!21479))))

(declare-fun b!7955434 () Bool)

(assert (=> b!7955434 (= e!4692488 (Union!21479 (Concat!30478 call!737698 (regTwo!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))) call!737700))))

(declare-fun bm!737693 () Bool)

(assert (=> bm!737693 (= call!737698 (derivativeStep!6507 (ite c!1461275 (regOne!43471 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))) (regOne!43470 (derivativeStep!6507 baseR!116 (h!81032 testedP!447)))) (h!81032 (t!390451 testedP!447))))))

(declare-fun b!7955435 () Bool)

(assert (=> b!7955435 (= e!4692490 e!4692491)))

(declare-fun c!1461274 () Bool)

(assert (=> b!7955435 (= c!1461274 ((_ is ElementMatch!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(declare-fun b!7955436 () Bool)

(assert (=> b!7955436 (= e!4692490 EmptyLang!21479)))

(declare-fun b!7955437 () Bool)

(declare-fun call!737697 () Regex!21479)

(assert (=> b!7955437 (= e!4692492 (Concat!30478 call!737697 (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(declare-fun bm!737694 () Bool)

(assert (=> bm!737694 (= call!737700 call!737697)))

(declare-fun bm!737695 () Bool)

(assert (=> bm!737695 (= call!737697 call!737699)))

(declare-fun b!7955438 () Bool)

(assert (=> b!7955438 (= e!4692489 e!4692492)))

(assert (=> b!7955438 (= c!1461271 ((_ is Star!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(declare-fun b!7955439 () Bool)

(assert (=> b!7955439 (= c!1461275 ((_ is Union!21479) (derivativeStep!6507 baseR!116 (h!81032 testedP!447))))))

(assert (=> b!7955439 (= e!4692491 e!4692489)))

(assert (= (and d!2377226 c!1461272) b!7955436))

(assert (= (and d!2377226 (not c!1461272)) b!7955435))

(assert (= (and b!7955435 c!1461274) b!7955431))

(assert (= (and b!7955435 (not c!1461274)) b!7955439))

(assert (= (and b!7955439 c!1461275) b!7955432))

(assert (= (and b!7955439 (not c!1461275)) b!7955438))

(assert (= (and b!7955438 c!1461271) b!7955437))

(assert (= (and b!7955438 (not c!1461271)) b!7955430))

(assert (= (and b!7955430 c!1461273) b!7955434))

(assert (= (and b!7955430 (not c!1461273)) b!7955433))

(assert (= (or b!7955434 b!7955433) bm!737694))

(assert (= (or b!7955437 bm!737694) bm!737695))

(assert (= (or b!7955432 bm!737695) bm!737692))

(assert (= (or b!7955432 b!7955434) bm!737693))

(declare-fun m!8338434 () Bool)

(assert (=> b!7955430 m!8338434))

(declare-fun m!8338436 () Bool)

(assert (=> d!2377226 m!8338436))

(assert (=> d!2377226 m!8336874))

(assert (=> d!2377226 m!8337506))

(declare-fun m!8338438 () Bool)

(assert (=> bm!737692 m!8338438))

(declare-fun m!8338440 () Bool)

(assert (=> bm!737693 m!8338440))

(assert (=> b!7954313 d!2377226))

(declare-fun d!2377228 () Bool)

(declare-fun res!3154120 () Bool)

(declare-fun e!4692497 () Bool)

(assert (=> d!2377228 (=> res!3154120 e!4692497)))

(assert (=> d!2377228 (= res!3154120 ((_ is EmptyExpr!21479) (reg!21808 baseR!116)))))

(assert (=> d!2377228 (= (nullableFct!3778 (reg!21808 baseR!116)) e!4692497)))

(declare-fun b!7955440 () Bool)

(declare-fun e!4692493 () Bool)

(declare-fun call!737701 () Bool)

(assert (=> b!7955440 (= e!4692493 call!737701)))

(declare-fun b!7955441 () Bool)

(declare-fun e!4692495 () Bool)

(assert (=> b!7955441 (= e!4692497 e!4692495)))

(declare-fun res!3154121 () Bool)

(assert (=> b!7955441 (=> (not res!3154121) (not e!4692495))))

(assert (=> b!7955441 (= res!3154121 (and (not ((_ is EmptyLang!21479) (reg!21808 baseR!116))) (not ((_ is ElementMatch!21479) (reg!21808 baseR!116)))))))

(declare-fun b!7955442 () Bool)

(declare-fun e!4692494 () Bool)

(declare-fun e!4692496 () Bool)

(assert (=> b!7955442 (= e!4692494 e!4692496)))

(declare-fun res!3154118 () Bool)

(assert (=> b!7955442 (= res!3154118 call!737701)))

(assert (=> b!7955442 (=> res!3154118 e!4692496)))

(declare-fun b!7955443 () Bool)

(declare-fun call!737702 () Bool)

(assert (=> b!7955443 (= e!4692496 call!737702)))

(declare-fun bm!737696 () Bool)

(declare-fun c!1461276 () Bool)

(assert (=> bm!737696 (= call!737701 (nullable!9580 (ite c!1461276 (regOne!43471 (reg!21808 baseR!116)) (regTwo!43470 (reg!21808 baseR!116)))))))

(declare-fun b!7955444 () Bool)

(declare-fun e!4692498 () Bool)

(assert (=> b!7955444 (= e!4692495 e!4692498)))

(declare-fun res!3154119 () Bool)

(assert (=> b!7955444 (=> res!3154119 e!4692498)))

(assert (=> b!7955444 (= res!3154119 ((_ is Star!21479) (reg!21808 baseR!116)))))

(declare-fun b!7955445 () Bool)

(assert (=> b!7955445 (= e!4692498 e!4692494)))

(assert (=> b!7955445 (= c!1461276 ((_ is Union!21479) (reg!21808 baseR!116)))))

(declare-fun b!7955446 () Bool)

(assert (=> b!7955446 (= e!4692494 e!4692493)))

(declare-fun res!3154122 () Bool)

(assert (=> b!7955446 (= res!3154122 call!737702)))

(assert (=> b!7955446 (=> (not res!3154122) (not e!4692493))))

(declare-fun bm!737697 () Bool)

(assert (=> bm!737697 (= call!737702 (nullable!9580 (ite c!1461276 (regTwo!43471 (reg!21808 baseR!116)) (regOne!43470 (reg!21808 baseR!116)))))))

(assert (= (and d!2377228 (not res!3154120)) b!7955441))

(assert (= (and b!7955441 res!3154121) b!7955444))

(assert (= (and b!7955444 (not res!3154119)) b!7955445))

(assert (= (and b!7955445 c!1461276) b!7955442))

(assert (= (and b!7955445 (not c!1461276)) b!7955446))

(assert (= (and b!7955442 (not res!3154118)) b!7955443))

(assert (= (and b!7955446 res!3154122) b!7955440))

(assert (= (or b!7955442 b!7955440) bm!737696))

(assert (= (or b!7955443 b!7955446) bm!737697))

(declare-fun m!8338442 () Bool)

(assert (=> bm!737696 m!8338442))

(declare-fun m!8338444 () Bool)

(assert (=> bm!737697 m!8338444))

(assert (=> d!2376776 d!2377228))

(declare-fun d!2377230 () Bool)

(declare-fun e!4692501 () Bool)

(assert (=> d!2377230 e!4692501))

(declare-fun res!3154124 () Bool)

(assert (=> d!2377230 (=> res!3154124 e!4692501)))

(declare-fun lt!2701723 () Bool)

(assert (=> d!2377230 (= res!3154124 (not lt!2701723))))

(declare-fun e!4692499 () Bool)

(assert (=> d!2377230 (= lt!2701723 e!4692499)))

(declare-fun res!3154123 () Bool)

(assert (=> d!2377230 (=> res!3154123 e!4692499)))

(assert (=> d!2377230 (= res!3154123 ((_ is Nil!74584) (tail!15768 (tail!15768 input!7927))))))

(assert (=> d!2377230 (= (isPrefix!6579 (tail!15768 (tail!15768 input!7927)) (tail!15768 (tail!15768 input!7927))) lt!2701723)))

(declare-fun b!7955447 () Bool)

(declare-fun e!4692500 () Bool)

(assert (=> b!7955447 (= e!4692499 e!4692500)))

(declare-fun res!3154125 () Bool)

(assert (=> b!7955447 (=> (not res!3154125) (not e!4692500))))

(assert (=> b!7955447 (= res!3154125 (not ((_ is Nil!74584) (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955450 () Bool)

(assert (=> b!7955450 (= e!4692501 (>= (size!43415 (tail!15768 (tail!15768 input!7927))) (size!43415 (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955448 () Bool)

(declare-fun res!3154126 () Bool)

(assert (=> b!7955448 (=> (not res!3154126) (not e!4692500))))

(assert (=> b!7955448 (= res!3154126 (= (head!16231 (tail!15768 (tail!15768 input!7927))) (head!16231 (tail!15768 (tail!15768 input!7927)))))))

(declare-fun b!7955449 () Bool)

(assert (=> b!7955449 (= e!4692500 (isPrefix!6579 (tail!15768 (tail!15768 (tail!15768 input!7927))) (tail!15768 (tail!15768 (tail!15768 input!7927)))))))

(assert (= (and d!2377230 (not res!3154123)) b!7955447))

(assert (= (and b!7955447 res!3154125) b!7955448))

(assert (= (and b!7955448 res!3154126) b!7955449))

(assert (= (and d!2377230 (not res!3154124)) b!7955450))

(assert (=> b!7955450 m!8337374))

(assert (=> b!7955450 m!8337916))

(assert (=> b!7955450 m!8337374))

(assert (=> b!7955450 m!8337916))

(assert (=> b!7955448 m!8337374))

(assert (=> b!7955448 m!8338100))

(assert (=> b!7955448 m!8337374))

(assert (=> b!7955448 m!8338100))

(assert (=> b!7955449 m!8337374))

(assert (=> b!7955449 m!8337918))

(assert (=> b!7955449 m!8337374))

(assert (=> b!7955449 m!8337918))

(assert (=> b!7955449 m!8337918))

(assert (=> b!7955449 m!8337918))

(declare-fun m!8338446 () Bool)

(assert (=> b!7955449 m!8338446))

(assert (=> b!7954307 d!2377230))

(assert (=> b!7954307 d!2377002))

(declare-fun e!4692503 () Bool)

(declare-fun lt!2701724 () List!74708)

(declare-fun b!7955454 () Bool)

(assert (=> b!7955454 (= e!4692503 (or (not (= lt!2701251 Nil!74584)) (= lt!2701724 (t!390451 testedP!447))))))

(declare-fun b!7955452 () Bool)

(declare-fun e!4692502 () List!74708)

(assert (=> b!7955452 (= e!4692502 (Cons!74584 (h!81032 (t!390451 testedP!447)) (++!18349 (t!390451 (t!390451 testedP!447)) lt!2701251)))))

(declare-fun b!7955451 () Bool)

(assert (=> b!7955451 (= e!4692502 lt!2701251)))

(declare-fun b!7955453 () Bool)

(declare-fun res!3154128 () Bool)

(assert (=> b!7955453 (=> (not res!3154128) (not e!4692503))))

(assert (=> b!7955453 (= res!3154128 (= (size!43415 lt!2701724) (+ (size!43415 (t!390451 testedP!447)) (size!43415 lt!2701251))))))

(declare-fun d!2377232 () Bool)

(assert (=> d!2377232 e!4692503))

(declare-fun res!3154127 () Bool)

(assert (=> d!2377232 (=> (not res!3154127) (not e!4692503))))

(assert (=> d!2377232 (= res!3154127 (= (content!15836 lt!2701724) ((_ map or) (content!15836 (t!390451 testedP!447)) (content!15836 lt!2701251))))))

(assert (=> d!2377232 (= lt!2701724 e!4692502)))

(declare-fun c!1461277 () Bool)

(assert (=> d!2377232 (= c!1461277 ((_ is Nil!74584) (t!390451 testedP!447)))))

(assert (=> d!2377232 (= (++!18349 (t!390451 testedP!447) lt!2701251) lt!2701724)))

(assert (= (and d!2377232 c!1461277) b!7955451))

(assert (= (and d!2377232 (not c!1461277)) b!7955452))

(assert (= (and d!2377232 res!3154127) b!7955453))

(assert (= (and b!7955453 res!3154128) b!7955454))

(declare-fun m!8338448 () Bool)

(assert (=> b!7955452 m!8338448))

(declare-fun m!8338450 () Bool)

(assert (=> b!7955453 m!8338450))

(assert (=> b!7955453 m!8337010))

(assert (=> b!7955453 m!8337266))

(declare-fun m!8338452 () Bool)

(assert (=> d!2377232 m!8338452))

(assert (=> d!2377232 m!8337356))

(assert (=> d!2377232 m!8337270))

(assert (=> b!7954142 d!2377232))

(declare-fun d!2377234 () Bool)

(declare-fun lt!2701725 () Int)

(assert (=> d!2377234 (>= lt!2701725 0)))

(declare-fun e!4692504 () Int)

(assert (=> d!2377234 (= lt!2701725 e!4692504)))

(declare-fun c!1461278 () Bool)

(assert (=> d!2377234 (= c!1461278 ((_ is Nil!74584) lt!2701498))))

(assert (=> d!2377234 (= (size!43415 lt!2701498) lt!2701725)))

(declare-fun b!7955455 () Bool)

(assert (=> b!7955455 (= e!4692504 0)))

(declare-fun b!7955456 () Bool)

(assert (=> b!7955456 (= e!4692504 (+ 1 (size!43415 (t!390451 lt!2701498))))))

(assert (= (and d!2377234 c!1461278) b!7955455))

(assert (= (and d!2377234 (not c!1461278)) b!7955456))

(declare-fun m!8338454 () Bool)

(assert (=> b!7955456 m!8338454))

(assert (=> b!7954081 d!2377234))

(assert (=> b!7954081 d!2376654))

(declare-fun d!2377236 () Bool)

(declare-fun lt!2701726 () Int)

(assert (=> d!2377236 (>= lt!2701726 0)))

(declare-fun e!4692505 () Int)

(assert (=> d!2377236 (= lt!2701726 e!4692505)))

(declare-fun c!1461279 () Bool)

(assert (=> d!2377236 (= c!1461279 ((_ is Nil!74584) (Cons!74584 lt!2701375 Nil!74584)))))

(assert (=> d!2377236 (= (size!43415 (Cons!74584 lt!2701375 Nil!74584)) lt!2701726)))

(declare-fun b!7955457 () Bool)

(assert (=> b!7955457 (= e!4692505 0)))

(declare-fun b!7955458 () Bool)

(assert (=> b!7955458 (= e!4692505 (+ 1 (size!43415 (t!390451 (Cons!74584 lt!2701375 Nil!74584)))))))

(assert (= (and d!2377236 c!1461279) b!7955457))

(assert (= (and d!2377236 (not c!1461279)) b!7955458))

(declare-fun m!8338456 () Bool)

(assert (=> b!7955458 m!8338456))

(assert (=> b!7954081 d!2377236))

(declare-fun lt!2701727 () List!74708)

(declare-fun b!7955462 () Bool)

(declare-fun e!4692507 () Bool)

(assert (=> b!7955462 (= e!4692507 (or (not (= lt!2701364 Nil!74584)) (= lt!2701727 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))))))))

(declare-fun b!7955460 () Bool)

(declare-fun e!4692506 () List!74708)

(assert (=> b!7955460 (= e!4692506 (Cons!74584 (h!81032 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))) (++!18349 (t!390451 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))) lt!2701364)))))

(declare-fun b!7955459 () Bool)

(assert (=> b!7955459 (= e!4692506 lt!2701364)))

(declare-fun b!7955461 () Bool)

(declare-fun res!3154130 () Bool)

(assert (=> b!7955461 (=> (not res!3154130) (not e!4692507))))

(assert (=> b!7955461 (= res!3154130 (= (size!43415 lt!2701727) (+ (size!43415 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))) (size!43415 lt!2701364))))))

(declare-fun d!2377238 () Bool)

(assert (=> d!2377238 e!4692507))

(declare-fun res!3154129 () Bool)

(assert (=> d!2377238 (=> (not res!3154129) (not e!4692507))))

(assert (=> d!2377238 (= res!3154129 (= (content!15836 lt!2701727) ((_ map or) (content!15836 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))) (content!15836 lt!2701364))))))

(assert (=> d!2377238 (= lt!2701727 e!4692506)))

(declare-fun c!1461280 () Bool)

(assert (=> d!2377238 (= c!1461280 ((_ is Nil!74584) (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584)))))))

(assert (=> d!2377238 (= (++!18349 (t!390451 (++!18349 testedP!447 (Cons!74584 lt!2701375 Nil!74584))) lt!2701364) lt!2701727)))

(assert (= (and d!2377238 c!1461280) b!7955459))

(assert (= (and d!2377238 (not c!1461280)) b!7955460))

(assert (= (and d!2377238 res!3154129) b!7955461))

(assert (= (and b!7955461 res!3154130) b!7955462))

(declare-fun m!8338458 () Bool)

(assert (=> b!7955460 m!8338458))

(declare-fun m!8338460 () Bool)

(assert (=> b!7955461 m!8338460))

(assert (=> b!7955461 m!8337964))

(assert (=> b!7955461 m!8337158))

(declare-fun m!8338462 () Bool)

(assert (=> d!2377238 m!8338462))

(assert (=> d!2377238 m!8337900))

(assert (=> d!2377238 m!8337164))

(assert (=> b!7954084 d!2377238))

(declare-fun d!2377240 () Bool)

(assert (=> d!2377240 (= (head!16231 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))) (h!81032 (++!18349 testedP!447 (Cons!74584 (head!16231 (getSuffix!3782 input!7927 testedP!447)) Nil!74584))))))

(assert (=> b!7954076 d!2377240))

(assert (=> b!7954076 d!2376730))

(declare-fun d!2377242 () Bool)

(declare-fun c!1461281 () Bool)

(assert (=> d!2377242 (= c!1461281 ((_ is Nil!74584) (t!390451 lt!2701451)))))

(declare-fun e!4692508 () (InoxSet C!43296))

(assert (=> d!2377242 (= (content!15836 (t!390451 lt!2701451)) e!4692508)))

(declare-fun b!7955463 () Bool)

(assert (=> b!7955463 (= e!4692508 ((as const (Array C!43296 Bool)) false))))

(declare-fun b!7955464 () Bool)

(assert (=> b!7955464 (= e!4692508 ((_ map or) (store ((as const (Array C!43296 Bool)) false) (h!81032 (t!390451 lt!2701451)) true) (content!15836 (t!390451 (t!390451 lt!2701451)))))))

(assert (= (and d!2377242 c!1461281) b!7955463))

(assert (= (and d!2377242 (not c!1461281)) b!7955464))

(declare-fun m!8338464 () Bool)

(assert (=> b!7955464 m!8338464))

(declare-fun m!8338466 () Bool)

(assert (=> b!7955464 m!8338466))

(assert (=> b!7954276 d!2377242))

(declare-fun b!7955465 () Bool)

(declare-fun e!4692512 () Bool)

(declare-fun call!737704 () Bool)

(assert (=> b!7955465 (= e!4692512 call!737704)))

(declare-fun b!7955466 () Bool)

(declare-fun res!3154134 () Bool)

(declare-fun e!4692515 () Bool)

(assert (=> b!7955466 (=> res!3154134 e!4692515)))

(assert (=> b!7955466 (= res!3154134 (not ((_ is Concat!30478) (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))

(declare-fun e!4692513 () Bool)

(assert (=> b!7955466 (= e!4692513 e!4692515)))

(declare-fun b!7955467 () Bool)

(declare-fun e!4692514 () Bool)

(declare-fun call!737705 () Bool)

(assert (=> b!7955467 (= e!4692514 call!737705)))

(declare-fun bm!737698 () Bool)

(declare-fun call!737703 () Bool)

(assert (=> bm!737698 (= call!737703 call!737704)))

(declare-fun b!7955468 () Bool)

(declare-fun e!4692509 () Bool)

(assert (=> b!7955468 (= e!4692509 e!4692513)))

(declare-fun c!1461282 () Bool)

(assert (=> b!7955468 (= c!1461282 ((_ is Union!21479) (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))

(declare-fun bm!737699 () Bool)

(assert (=> bm!737699 (= call!737705 (validRegex!11783 (ite c!1461282 (regTwo!43471 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))) (regTwo!43470 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))))

(declare-fun b!7955469 () Bool)

(declare-fun e!4692510 () Bool)

(assert (=> b!7955469 (= e!4692510 e!4692509)))

(declare-fun c!1461283 () Bool)

(assert (=> b!7955469 (= c!1461283 ((_ is Star!21479) (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))

(declare-fun b!7955470 () Bool)

(declare-fun res!3154132 () Bool)

(assert (=> b!7955470 (=> (not res!3154132) (not e!4692514))))

(assert (=> b!7955470 (= res!3154132 call!737703)))

(assert (=> b!7955470 (= e!4692513 e!4692514)))

(declare-fun d!2377244 () Bool)

(declare-fun res!3154133 () Bool)

(assert (=> d!2377244 (=> res!3154133 e!4692510)))

(assert (=> d!2377244 (= res!3154133 ((_ is ElementMatch!21479) (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))

(assert (=> d!2377244 (= (validRegex!11783 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))) e!4692510)))

(declare-fun bm!737700 () Bool)

(assert (=> bm!737700 (= call!737704 (validRegex!11783 (ite c!1461283 (reg!21808 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))) (ite c!1461282 (regOne!43471 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))) (regOne!43470 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116))))))))))))

(declare-fun b!7955471 () Bool)

(declare-fun e!4692511 () Bool)

(assert (=> b!7955471 (= e!4692515 e!4692511)))

(declare-fun res!3154131 () Bool)

(assert (=> b!7955471 (=> (not res!3154131) (not e!4692511))))

(assert (=> b!7955471 (= res!3154131 call!737703)))

(declare-fun b!7955472 () Bool)

(assert (=> b!7955472 (= e!4692509 e!4692512)))

(declare-fun res!3154135 () Bool)

(assert (=> b!7955472 (= res!3154135 (not (nullable!9580 (reg!21808 (ite c!1461002 (regTwo!43471 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))) (regTwo!43470 (ite c!1460944 (reg!21808 baseR!116) (ite c!1460943 (regOne!43471 baseR!116) (regOne!43470 baseR!116)))))))))))

(assert (=> b!7955472 (=> (not res!3154135) (not e!4692512))))

(declare-fun b!7955473 () Bool)

(assert (=> b!7955473 (= e!4692511 call!737705)))

(assert (= (and d!2377244 (not res!3154133)) b!7955469))

(assert (= (and b!7955469 c!1461283) b!7955472))

(assert (= (and b!7955469 (not c!1461283)) b!7955468))

(assert (= (and b!7955472 res!3154135) b!7955465))

(assert (= (and b!7955468 c!1461282) b!7955470))

(assert (= (and b!7955468 (not c!1461282)) b!7955466))

(assert (= (and b!7955470 res!3154132) b!7955467))

(assert (= (and b!7955466 (not res!3154134)) b!7955471))

(assert (= (and b!7955471 res!3154131) b!7955473))

(assert (= (or b!7955467 b!7955473) bm!737699))

(assert (= (or b!7955470 b!7955471) bm!737698))

(assert (= (or b!7955465 bm!737698) bm!737700))

(declare-fun m!8338468 () Bool)

(assert (=> bm!737699 m!8338468))

(declare-fun m!8338470 () Bool)

(assert (=> bm!737700 m!8338470))

(declare-fun m!8338472 () Bool)

(assert (=> b!7955472 m!8338472))

(assert (=> bm!737508 d!2377244))

(assert (=> b!7954336 d!2376946))

(declare-fun d!2377246 () Bool)

(declare-fun lt!2701728 () Int)

(assert (=> d!2377246 (>= lt!2701728 0)))

(declare-fun e!4692516 () Int)

(assert (=> d!2377246 (= lt!2701728 e!4692516)))

(declare-fun c!1461284 () Bool)

(assert (=> d!2377246 (= c!1461284 ((_ is Nil!74584) (tail!15768 lt!2701255)))))

(assert (=> d!2377246 (= (size!43415 (tail!15768 lt!2701255)) lt!2701728)))

(declare-fun b!7955474 () Bool)

(assert (=> b!7955474 (= e!4692516 0)))

(declare-fun b!7955475 () Bool)

(assert (=> b!7955475 (= e!4692516 (+ 1 (size!43415 (t!390451 (tail!15768 lt!2701255)))))))

(assert (= (and d!2377246 c!1461284) b!7955474))

(assert (= (and d!2377246 (not c!1461284)) b!7955475))

(declare-fun m!8338474 () Bool)

(assert (=> b!7955475 m!8338474))

(assert (=> b!7954336 d!2377246))

(declare-fun b!7955476 () Bool)

(declare-fun e!4692520 () Bool)

(declare-fun call!737707 () Bool)

(assert (=> b!7955476 (= e!4692520 call!737707)))

(declare-fun b!7955477 () Bool)

(declare-fun res!3154139 () Bool)

(declare-fun e!4692523 () Bool)

(assert (=> b!7955477 (=> res!3154139 e!4692523)))

(assert (=> b!7955477 (= res!3154139 (not ((_ is Concat!30478) (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))

(declare-fun e!4692521 () Bool)

(assert (=> b!7955477 (= e!4692521 e!4692523)))

(declare-fun b!7955478 () Bool)

(declare-fun e!4692522 () Bool)

(declare-fun call!737708 () Bool)

(assert (=> b!7955478 (= e!4692522 call!737708)))

(declare-fun bm!737701 () Bool)

(declare-fun call!737706 () Bool)

(assert (=> bm!737701 (= call!737706 call!737707)))

(declare-fun b!7955479 () Bool)

(declare-fun e!4692517 () Bool)

(assert (=> b!7955479 (= e!4692517 e!4692521)))

(declare-fun c!1461285 () Bool)

(assert (=> b!7955479 (= c!1461285 ((_ is Union!21479) (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun bm!737702 () Bool)

(assert (=> bm!737702 (= call!737708 (validRegex!11783 (ite c!1461285 (regTwo!43471 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))) (regTwo!43470 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(declare-fun b!7955480 () Bool)

(declare-fun e!4692518 () Bool)

(assert (=> b!7955480 (= e!4692518 e!4692517)))

(declare-fun c!1461286 () Bool)

(assert (=> b!7955480 (= c!1461286 ((_ is Star!21479) (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun b!7955481 () Bool)

(declare-fun res!3154137 () Bool)

(assert (=> b!7955481 (=> (not res!3154137) (not e!4692522))))

(assert (=> b!7955481 (= res!3154137 call!737706)))

(assert (=> b!7955481 (= e!4692521 e!4692522)))

(declare-fun d!2377248 () Bool)

(declare-fun res!3154138 () Bool)

(assert (=> d!2377248 (=> res!3154138 e!4692518)))

(assert (=> d!2377248 (= res!3154138 ((_ is ElementMatch!21479) (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2377248 (= (validRegex!11783 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))) e!4692518)))

(declare-fun bm!737703 () Bool)

(assert (=> bm!737703 (= call!737707 (validRegex!11783 (ite c!1461286 (reg!21808 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))) (ite c!1461285 (regOne!43471 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))) (regOne!43470 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602))))))))))

(declare-fun b!7955482 () Bool)

(declare-fun e!4692519 () Bool)

(assert (=> b!7955482 (= e!4692523 e!4692519)))

(declare-fun res!3154136 () Bool)

(assert (=> b!7955482 (=> (not res!3154136) (not e!4692519))))

(assert (=> b!7955482 (= res!3154136 call!737706)))

(declare-fun b!7955483 () Bool)

(assert (=> b!7955483 (= e!4692517 e!4692520)))

(declare-fun res!3154140 () Bool)

(assert (=> b!7955483 (= res!3154140 (not (nullable!9580 (reg!21808 (ite c!1460987 (reg!21808 r!24602) (ite c!1460986 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))))

(assert (=> b!7955483 (=> (not res!3154140) (not e!4692520))))

(declare-fun b!7955484 () Bool)

(assert (=> b!7955484 (= e!4692519 call!737708)))

(assert (= (and d!2377248 (not res!3154138)) b!7955480))

(assert (= (and b!7955480 c!1461286) b!7955483))

(assert (= (and b!7955480 (not c!1461286)) b!7955479))

(assert (= (and b!7955483 res!3154140) b!7955476))

(assert (= (and b!7955479 c!1461285) b!7955481))

(assert (= (and b!7955479 (not c!1461285)) b!7955477))

(assert (= (and b!7955481 res!3154137) b!7955478))

(assert (= (and b!7955477 (not res!3154139)) b!7955482))

(assert (= (and b!7955482 res!3154136) b!7955484))

(assert (= (or b!7955478 b!7955484) bm!737702))

(assert (= (or b!7955481 b!7955482) bm!737701))

(assert (= (or b!7955476 bm!737701) bm!737703))

(declare-fun m!8338476 () Bool)

(assert (=> bm!737702 m!8338476))

(declare-fun m!8338478 () Bool)

(assert (=> bm!737703 m!8338478))

(declare-fun m!8338480 () Bool)

(assert (=> b!7955483 m!8338480))

(assert (=> bm!737496 d!2377248))

(declare-fun b!7955488 () Bool)

(declare-fun e!4692525 () Bool)

(declare-fun lt!2701729 () List!74708)

(assert (=> b!7955488 (= e!4692525 (or (not (= (_2!38613 lt!2701370) Nil!74584)) (= lt!2701729 (t!390451 (_1!38613 lt!2701370)))))))

(declare-fun b!7955486 () Bool)

(declare-fun e!4692524 () List!74708)

(assert (=> b!7955486 (= e!4692524 (Cons!74584 (h!81032 (t!390451 (_1!38613 lt!2701370))) (++!18349 (t!390451 (t!390451 (_1!38613 lt!2701370))) (_2!38613 lt!2701370))))))

(declare-fun b!7955485 () Bool)

(assert (=> b!7955485 (= e!4692524 (_2!38613 lt!2701370))))

(declare-fun b!7955487 () Bool)

(declare-fun res!3154142 () Bool)

(assert (=> b!7955487 (=> (not res!3154142) (not e!4692525))))

(assert (=> b!7955487 (= res!3154142 (= (size!43415 lt!2701729) (+ (size!43415 (t!390451 (_1!38613 lt!2701370))) (size!43415 (_2!38613 lt!2701370)))))))

(declare-fun d!2377250 () Bool)

(assert (=> d!2377250 e!4692525))

(declare-fun res!3154141 () Bool)

(assert (=> d!2377250 (=> (not res!3154141) (not e!4692525))))

(assert (=> d!2377250 (= res!3154141 (= (content!15836 lt!2701729) ((_ map or) (content!15836 (t!390451 (_1!38613 lt!2701370))) (content!15836 (_2!38613 lt!2701370)))))))

(assert (=> d!2377250 (= lt!2701729 e!4692524)))

(declare-fun c!1461287 () Bool)

(assert (=> d!2377250 (= c!1461287 ((_ is Nil!74584) (t!390451 (_1!38613 lt!2701370))))))

(assert (=> d!2377250 (= (++!18349 (t!390451 (_1!38613 lt!2701370)) (_2!38613 lt!2701370)) lt!2701729)))

(assert (= (and d!2377250 c!1461287) b!7955485))

(assert (= (and d!2377250 (not c!1461287)) b!7955486))

(assert (= (and d!2377250 res!3154141) b!7955487))

(assert (= (and b!7955487 res!3154142) b!7955488))

(declare-fun m!8338482 () Bool)

(assert (=> b!7955486 m!8338482))

(declare-fun m!8338484 () Bool)

(assert (=> b!7955487 m!8338484))

(assert (=> b!7955487 m!8337366))

(assert (=> b!7955487 m!8337244))

(declare-fun m!8338486 () Bool)

(assert (=> d!2377250 m!8338486))

(assert (=> d!2377250 m!8337928))

(assert (=> d!2377250 m!8337250))

(assert (=> b!7954129 d!2377250))

(declare-fun b!7955489 () Bool)

(declare-fun c!1461290 () Bool)

(assert (=> b!7955489 (= c!1461290 (nullable!9580 (regOne!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(declare-fun e!4692530 () Regex!21479)

(declare-fun e!4692526 () Regex!21479)

(assert (=> b!7955489 (= e!4692530 e!4692526)))

(declare-fun d!2377252 () Bool)

(declare-fun lt!2701730 () Regex!21479)

(assert (=> d!2377252 (validRegex!11783 lt!2701730)))

(declare-fun e!4692528 () Regex!21479)

(assert (=> d!2377252 (= lt!2701730 e!4692528)))

(declare-fun c!1461289 () Bool)

(assert (=> d!2377252 (= c!1461289 (or ((_ is EmptyExpr!21479) (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))) ((_ is EmptyLang!21479) (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))))))

(assert (=> d!2377252 (validRegex!11783 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))))

(assert (=> d!2377252 (= (derivativeStep!6507 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)) call!737437) lt!2701730)))

(declare-fun c!1461288 () Bool)

(declare-fun call!737711 () Regex!21479)

(declare-fun bm!737704 () Bool)

(declare-fun c!1461292 () Bool)

(assert (=> bm!737704 (= call!737711 (derivativeStep!6507 (ite c!1461292 (regTwo!43471 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1461288 (reg!21808 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))) (ite c!1461290 (regTwo!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))))) call!737437))))

(declare-fun b!7955490 () Bool)

(declare-fun e!4692529 () Regex!21479)

(assert (=> b!7955490 (= e!4692529 (ite (= call!737437 (c!1460858 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))) EmptyExpr!21479 EmptyLang!21479))))

(declare-fun b!7955491 () Bool)

(declare-fun e!4692527 () Regex!21479)

(declare-fun call!737710 () Regex!21479)

(assert (=> b!7955491 (= e!4692527 (Union!21479 call!737710 call!737711))))

(declare-fun b!7955492 () Bool)

(declare-fun call!737712 () Regex!21479)

(assert (=> b!7955492 (= e!4692526 (Union!21479 (Concat!30478 call!737712 (regTwo!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))) EmptyLang!21479))))

(declare-fun b!7955493 () Bool)

(assert (=> b!7955493 (= e!4692526 (Union!21479 (Concat!30478 call!737710 (regTwo!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))) call!737712))))

(declare-fun bm!737705 () Bool)

(assert (=> bm!737705 (= call!737710 (derivativeStep!6507 (ite c!1461292 (regOne!43471 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))) (regOne!43470 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602)))) call!737437))))

(declare-fun b!7955494 () Bool)

(assert (=> b!7955494 (= e!4692528 e!4692529)))

(declare-fun c!1461291 () Bool)

(assert (=> b!7955494 (= c!1461291 ((_ is ElementMatch!21479) (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7955495 () Bool)

(assert (=> b!7955495 (= e!4692528 EmptyLang!21479)))

(declare-fun b!7955496 () Bool)

(declare-fun call!737709 () Regex!21479)

(assert (=> b!7955496 (= e!4692530 (Concat!30478 call!737709 (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun bm!737706 () Bool)

(assert (=> bm!737706 (= call!737712 call!737709)))

(declare-fun bm!737707 () Bool)

(assert (=> bm!737707 (= call!737709 call!737711)))

(declare-fun b!7955497 () Bool)

(assert (=> b!7955497 (= e!4692527 e!4692530)))

(assert (=> b!7955497 (= c!1461288 ((_ is Star!21479) (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(declare-fun b!7955498 () Bool)

(assert (=> b!7955498 (= c!1461292 ((_ is Union!21479) (ite c!1461040 (regOne!43471 r!24602) (regOne!43470 r!24602))))))

(assert (=> b!7955498 (= e!4692529 e!4692527)))

(assert (= (and d!2377252 c!1461289) b!7955495))

(assert (= (and d!2377252 (not c!1461289)) b!7955494))

(assert (= (and b!7955494 c!1461291) b!7955490))

(assert (= (and b!7955494 (not c!1461291)) b!7955498))

(assert (= (and b!7955498 c!1461292) b!7955491))

(assert (= (and b!7955498 (not c!1461292)) b!7955497))

(assert (= (and b!7955497 c!1461288) b!7955496))

(assert (= (and b!7955497 (not c!1461288)) b!7955489))

(assert (= (and b!7955489 c!1461290) b!7955493))

(assert (= (and b!7955489 (not c!1461290)) b!7955492))

(assert (= (or b!7955493 b!7955492) bm!737706))

(assert (= (or b!7955496 bm!737706) bm!737707))

(assert (= (or b!7955491 bm!737707) bm!737704))

(assert (= (or b!7955491 b!7955493) bm!737705))

(declare-fun m!8338488 () Bool)

(assert (=> b!7955489 m!8338488))

(declare-fun m!8338490 () Bool)

(assert (=> d!2377252 m!8338490))

(declare-fun m!8338492 () Bool)

(assert (=> d!2377252 m!8338492))

(declare-fun m!8338494 () Bool)

(assert (=> bm!737704 m!8338494))

(declare-fun m!8338496 () Bool)

(assert (=> bm!737705 m!8338496))

(assert (=> bm!737532 d!2377252))

(declare-fun b!7955499 () Bool)

(declare-fun e!4692534 () Bool)

(declare-fun call!737714 () Bool)

(assert (=> b!7955499 (= e!4692534 call!737714)))

(declare-fun b!7955500 () Bool)

(declare-fun res!3154146 () Bool)

(declare-fun e!4692537 () Bool)

(assert (=> b!7955500 (=> res!3154146 e!4692537)))

(assert (=> b!7955500 (= res!3154146 (not ((_ is Concat!30478) (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263))))))))

(declare-fun e!4692535 () Bool)

(assert (=> b!7955500 (= e!4692535 e!4692537)))

(declare-fun b!7955501 () Bool)

(declare-fun e!4692536 () Bool)

(declare-fun call!737715 () Bool)

(assert (=> b!7955501 (= e!4692536 call!737715)))

(declare-fun bm!737708 () Bool)

(declare-fun call!737713 () Bool)

(assert (=> bm!737708 (= call!737713 call!737714)))

(declare-fun b!7955502 () Bool)

(declare-fun e!4692531 () Bool)

(assert (=> b!7955502 (= e!4692531 e!4692535)))

(declare-fun c!1461293 () Bool)

(assert (=> b!7955502 (= c!1461293 ((_ is Union!21479) (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))

(declare-fun bm!737709 () Bool)

(assert (=> bm!737709 (= call!737715 (validRegex!11783 (ite c!1461293 (regTwo!43471 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))) (regTwo!43470 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))))

(declare-fun b!7955503 () Bool)

(declare-fun e!4692532 () Bool)

(assert (=> b!7955503 (= e!4692532 e!4692531)))

(declare-fun c!1461294 () Bool)

(assert (=> b!7955503 (= c!1461294 ((_ is Star!21479) (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))

(declare-fun b!7955504 () Bool)

(declare-fun res!3154144 () Bool)

(assert (=> b!7955504 (=> (not res!3154144) (not e!4692536))))

(assert (=> b!7955504 (= res!3154144 call!737713)))

(assert (=> b!7955504 (= e!4692535 e!4692536)))

(declare-fun d!2377254 () Bool)

(declare-fun res!3154145 () Bool)

(assert (=> d!2377254 (=> res!3154145 e!4692532)))

(assert (=> d!2377254 (= res!3154145 ((_ is ElementMatch!21479) (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))

(assert (=> d!2377254 (= (validRegex!11783 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))) e!4692532)))

(declare-fun bm!737710 () Bool)

(assert (=> bm!737710 (= call!737714 (validRegex!11783 (ite c!1461294 (reg!21808 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))) (ite c!1461293 (regOne!43471 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))) (regOne!43470 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263))))))))))

(declare-fun b!7955505 () Bool)

(declare-fun e!4692533 () Bool)

(assert (=> b!7955505 (= e!4692537 e!4692533)))

(declare-fun res!3154143 () Bool)

(assert (=> b!7955505 (=> (not res!3154143) (not e!4692533))))

(assert (=> b!7955505 (= res!3154143 call!737713)))

(declare-fun b!7955506 () Bool)

(assert (=> b!7955506 (= e!4692531 e!4692534)))

(declare-fun res!3154147 () Bool)

(assert (=> b!7955506 (= res!3154147 (not (nullable!9580 (reg!21808 (ite c!1461008 (reg!21808 lt!2701263) (ite c!1461007 (regOne!43471 lt!2701263) (regOne!43470 lt!2701263)))))))))

(assert (=> b!7955506 (=> (not res!3154147) (not e!4692534))))

(declare-fun b!7955507 () Bool)

(assert (=> b!7955507 (= e!4692533 call!737715)))

(assert (= (and d!2377254 (not res!3154145)) b!7955503))

(assert (= (and b!7955503 c!1461294) b!7955506))

(assert (= (and b!7955503 (not c!1461294)) b!7955502))

(assert (= (and b!7955506 res!3154147) b!7955499))

(assert (= (and b!7955502 c!1461293) b!7955504))

(assert (= (and b!7955502 (not c!1461293)) b!7955500))

(assert (= (and b!7955504 res!3154144) b!7955501))

(assert (= (and b!7955500 (not res!3154146)) b!7955505))

(assert (= (and b!7955505 res!3154143) b!7955507))

(assert (= (or b!7955501 b!7955507) bm!737709))

(assert (= (or b!7955504 b!7955505) bm!737708))

(assert (= (or b!7955499 bm!737708) bm!737710))

(declare-fun m!8338498 () Bool)

(assert (=> bm!737709 m!8338498))

(declare-fun m!8338500 () Bool)

(assert (=> bm!737710 m!8338500))

(declare-fun m!8338502 () Bool)

(assert (=> b!7955506 m!8338502))

(assert (=> bm!737515 d!2377254))

(declare-fun d!2377256 () Bool)

(declare-fun e!4692540 () Bool)

(assert (=> d!2377256 e!4692540))

(declare-fun res!3154149 () Bool)

(assert (=> d!2377256 (=> res!3154149 e!4692540)))

(declare-fun lt!2701731 () Bool)

(assert (=> d!2377256 (= res!3154149 (not lt!2701731))))

(declare-fun e!4692538 () Bool)

(assert (=> d!2377256 (= lt!2701731 e!4692538)))

(declare-fun res!3154148 () Bool)

(assert (=> d!2377256 (=> res!3154148 e!4692538)))

(assert (=> d!2377256 (= res!3154148 ((_ is Nil!74584) (tail!15768 testedP!447)))))

(assert (=> d!2377256 (= (isPrefix!6579 (tail!15768 testedP!447) (tail!15768 (++!18349 testedP!447 lt!2701251))) lt!2701731)))

(declare-fun b!7955508 () Bool)

(declare-fun e!4692539 () Bool)

(assert (=> b!7955508 (= e!4692538 e!4692539)))

(declare-fun res!3154150 () Bool)

(assert (=> b!7955508 (=> (not res!3154150) (not e!4692539))))

(assert (=> b!7955508 (= res!3154150 (not ((_ is Nil!74584) (tail!15768 (++!18349 testedP!447 lt!2701251)))))))

(declare-fun b!7955511 () Bool)

(assert (=> b!7955511 (= e!4692540 (>= (size!43415 (tail!15768 (++!18349 testedP!447 lt!2701251))) (size!43415 (tail!15768 testedP!447))))))

(declare-fun b!7955509 () Bool)

(declare-fun res!3154151 () Bool)

(assert (=> b!7955509 (=> (not res!3154151) (not e!4692539))))

(assert (=> b!7955509 (= res!3154151 (= (head!16231 (tail!15768 testedP!447)) (head!16231 (tail!15768 (++!18349 testedP!447 lt!2701251)))))))

(declare-fun b!7955510 () Bool)

(assert (=> b!7955510 (= e!4692539 (isPrefix!6579 (tail!15768 (tail!15768 testedP!447)) (tail!15768 (tail!15768 (++!18349 testedP!447 lt!2701251)))))))

(assert (= (and d!2377256 (not res!3154148)) b!7955508))

(assert (= (and b!7955508 res!3154150) b!7955509))

(assert (= (and b!7955509 res!3154151) b!7955510))

(assert (= (and d!2377256 (not res!3154149)) b!7955511))

(assert (=> b!7955511 m!8337276))

(declare-fun m!8338504 () Bool)

(assert (=> b!7955511 m!8338504))

(assert (=> b!7955511 m!8336892))

(assert (=> b!7955511 m!8337496))

(assert (=> b!7955509 m!8336892))

(assert (=> b!7955509 m!8337498))

(assert (=> b!7955509 m!8337276))

(declare-fun m!8338506 () Bool)

(assert (=> b!7955509 m!8338506))

(assert (=> b!7955510 m!8336892))

(assert (=> b!7955510 m!8337500))

(assert (=> b!7955510 m!8337276))

(declare-fun m!8338508 () Bool)

(assert (=> b!7955510 m!8338508))

(assert (=> b!7955510 m!8337500))

(assert (=> b!7955510 m!8338508))

(declare-fun m!8338510 () Bool)

(assert (=> b!7955510 m!8338510))

(assert (=> b!7954147 d!2377256))

(assert (=> b!7954147 d!2376814))

(declare-fun d!2377258 () Bool)

(assert (=> d!2377258 (= (tail!15768 (++!18349 testedP!447 lt!2701251)) (t!390451 (++!18349 testedP!447 lt!2701251)))))

(assert (=> b!7954147 d!2377258))

(declare-fun d!2377260 () Bool)

(assert (=> d!2377260 (= (isEmpty!42883 (_1!38613 lt!2701518)) ((_ is Nil!74584) (_1!38613 lt!2701518)))))

(assert (=> b!7954102 d!2377260))

(declare-fun b!7955512 () Bool)

(declare-fun e!4692541 () Bool)

(assert (=> b!7955512 (= e!4692541 tp_is_empty!53501)))

(declare-fun b!7955513 () Bool)

(declare-fun tp!2368241 () Bool)

(declare-fun tp!2368240 () Bool)

(assert (=> b!7955513 (= e!4692541 (and tp!2368241 tp!2368240))))

(declare-fun b!7955514 () Bool)

(declare-fun tp!2368239 () Bool)

(assert (=> b!7955514 (= e!4692541 tp!2368239)))

(declare-fun b!7955515 () Bool)

(declare-fun tp!2368242 () Bool)

(declare-fun tp!2368243 () Bool)

(assert (=> b!7955515 (= e!4692541 (and tp!2368242 tp!2368243))))

(assert (=> b!7954478 (= tp!2367828 e!4692541)))

(assert (= (and b!7954478 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955512))

(assert (= (and b!7954478 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955513))

(assert (= (and b!7954478 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955514))

(assert (= (and b!7954478 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955515))

(declare-fun b!7955516 () Bool)

(declare-fun e!4692542 () Bool)

(assert (=> b!7955516 (= e!4692542 tp_is_empty!53501)))

(declare-fun b!7955517 () Bool)

(declare-fun tp!2368246 () Bool)

(declare-fun tp!2368245 () Bool)

(assert (=> b!7955517 (= e!4692542 (and tp!2368246 tp!2368245))))

(declare-fun b!7955518 () Bool)

(declare-fun tp!2368244 () Bool)

(assert (=> b!7955518 (= e!4692542 tp!2368244)))

(declare-fun b!7955519 () Bool)

(declare-fun tp!2368247 () Bool)

(declare-fun tp!2368248 () Bool)

(assert (=> b!7955519 (= e!4692542 (and tp!2368247 tp!2368248))))

(assert (=> b!7954478 (= tp!2367827 e!4692542)))

(assert (= (and b!7954478 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955516))

(assert (= (and b!7954478 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955517))

(assert (= (and b!7954478 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955518))

(assert (= (and b!7954478 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (reg!21808 baseR!116))))) b!7955519))

(declare-fun b!7955520 () Bool)

(declare-fun e!4692543 () Bool)

(assert (=> b!7955520 (= e!4692543 tp_is_empty!53501)))

(declare-fun b!7955521 () Bool)

(declare-fun tp!2368251 () Bool)

(declare-fun tp!2368250 () Bool)

(assert (=> b!7955521 (= e!4692543 (and tp!2368251 tp!2368250))))

(declare-fun b!7955522 () Bool)

(declare-fun tp!2368249 () Bool)

(assert (=> b!7955522 (= e!4692543 tp!2368249)))

(declare-fun b!7955523 () Bool)

(declare-fun tp!2368252 () Bool)

(declare-fun tp!2368253 () Bool)

(assert (=> b!7955523 (= e!4692543 (and tp!2368252 tp!2368253))))

(assert (=> b!7954587 (= tp!2367948 e!4692543)))

(assert (= (and b!7954587 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955520))

(assert (= (and b!7954587 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955521))

(assert (= (and b!7954587 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955522))

(assert (= (and b!7954587 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955523))

(declare-fun b!7955524 () Bool)

(declare-fun e!4692544 () Bool)

(assert (=> b!7955524 (= e!4692544 tp_is_empty!53501)))

(declare-fun b!7955525 () Bool)

(declare-fun tp!2368256 () Bool)

(declare-fun tp!2368255 () Bool)

(assert (=> b!7955525 (= e!4692544 (and tp!2368256 tp!2368255))))

(declare-fun b!7955526 () Bool)

(declare-fun tp!2368254 () Bool)

(assert (=> b!7955526 (= e!4692544 tp!2368254)))

(declare-fun b!7955527 () Bool)

(declare-fun tp!2368257 () Bool)

(declare-fun tp!2368258 () Bool)

(assert (=> b!7955527 (= e!4692544 (and tp!2368257 tp!2368258))))

(assert (=> b!7954587 (= tp!2367947 e!4692544)))

(assert (= (and b!7954587 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955524))

(assert (= (and b!7954587 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955525))

(assert (= (and b!7954587 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955526))

(assert (= (and b!7954587 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955527))

(declare-fun b!7955528 () Bool)

(declare-fun e!4692545 () Bool)

(assert (=> b!7955528 (= e!4692545 tp_is_empty!53501)))

(declare-fun b!7955529 () Bool)

(declare-fun tp!2368261 () Bool)

(declare-fun tp!2368260 () Bool)

(assert (=> b!7955529 (= e!4692545 (and tp!2368261 tp!2368260))))

(declare-fun b!7955530 () Bool)

(declare-fun tp!2368259 () Bool)

(assert (=> b!7955530 (= e!4692545 tp!2368259)))

(declare-fun b!7955531 () Bool)

(declare-fun tp!2368262 () Bool)

(declare-fun tp!2368263 () Bool)

(assert (=> b!7955531 (= e!4692545 (and tp!2368262 tp!2368263))))

(assert (=> b!7954512 (= tp!2367869 e!4692545)))

(assert (= (and b!7954512 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955528))

(assert (= (and b!7954512 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955529))

(assert (= (and b!7954512 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955530))

(assert (= (and b!7954512 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955531))

(declare-fun b!7955532 () Bool)

(declare-fun e!4692546 () Bool)

(assert (=> b!7955532 (= e!4692546 tp_is_empty!53501)))

(declare-fun b!7955533 () Bool)

(declare-fun tp!2368266 () Bool)

(declare-fun tp!2368265 () Bool)

(assert (=> b!7955533 (= e!4692546 (and tp!2368266 tp!2368265))))

(declare-fun b!7955534 () Bool)

(declare-fun tp!2368264 () Bool)

(assert (=> b!7955534 (= e!4692546 tp!2368264)))

(declare-fun b!7955535 () Bool)

(declare-fun tp!2368267 () Bool)

(declare-fun tp!2368268 () Bool)

(assert (=> b!7955535 (= e!4692546 (and tp!2368267 tp!2368268))))

(assert (=> b!7954512 (= tp!2367870 e!4692546)))

(assert (= (and b!7954512 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955532))

(assert (= (and b!7954512 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955533))

(assert (= (and b!7954512 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955534))

(assert (= (and b!7954512 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 r!24602))))) b!7955535))

(declare-fun b!7955536 () Bool)

(declare-fun e!4692547 () Bool)

(assert (=> b!7955536 (= e!4692547 tp_is_empty!53501)))

(declare-fun b!7955537 () Bool)

(declare-fun tp!2368271 () Bool)

(declare-fun tp!2368270 () Bool)

(assert (=> b!7955537 (= e!4692547 (and tp!2368271 tp!2368270))))

(declare-fun b!7955538 () Bool)

(declare-fun tp!2368269 () Bool)

(assert (=> b!7955538 (= e!4692547 tp!2368269)))

(declare-fun b!7955539 () Bool)

(declare-fun tp!2368272 () Bool)

(declare-fun tp!2368273 () Bool)

(assert (=> b!7955539 (= e!4692547 (and tp!2368272 tp!2368273))))

(assert (=> b!7954420 (= tp!2367776 e!4692547)))

(assert (= (and b!7954420 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regOne!43470 r!24602))))) b!7955536))

(assert (= (and b!7954420 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regOne!43470 r!24602))))) b!7955537))

(assert (= (and b!7954420 ((_ is Star!21479) (reg!21808 (regOne!43470 (regOne!43470 r!24602))))) b!7955538))

(assert (= (and b!7954420 ((_ is Union!21479) (reg!21808 (regOne!43470 (regOne!43470 r!24602))))) b!7955539))

(declare-fun b!7955540 () Bool)

(declare-fun e!4692548 () Bool)

(assert (=> b!7955540 (= e!4692548 tp_is_empty!53501)))

(declare-fun b!7955541 () Bool)

(declare-fun tp!2368276 () Bool)

(declare-fun tp!2368275 () Bool)

(assert (=> b!7955541 (= e!4692548 (and tp!2368276 tp!2368275))))

(declare-fun b!7955542 () Bool)

(declare-fun tp!2368274 () Bool)

(assert (=> b!7955542 (= e!4692548 tp!2368274)))

(declare-fun b!7955543 () Bool)

(declare-fun tp!2368277 () Bool)

(declare-fun tp!2368278 () Bool)

(assert (=> b!7955543 (= e!4692548 (and tp!2368277 tp!2368278))))

(assert (=> b!7954573 (= tp!2367929 e!4692548)))

(assert (= (and b!7954573 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955540))

(assert (= (and b!7954573 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955541))

(assert (= (and b!7954573 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955542))

(assert (= (and b!7954573 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955543))

(declare-fun b!7955544 () Bool)

(declare-fun e!4692549 () Bool)

(assert (=> b!7955544 (= e!4692549 tp_is_empty!53501)))

(declare-fun b!7955545 () Bool)

(declare-fun tp!2368281 () Bool)

(declare-fun tp!2368280 () Bool)

(assert (=> b!7955545 (= e!4692549 (and tp!2368281 tp!2368280))))

(declare-fun b!7955546 () Bool)

(declare-fun tp!2368279 () Bool)

(assert (=> b!7955546 (= e!4692549 tp!2368279)))

(declare-fun b!7955547 () Bool)

(declare-fun tp!2368282 () Bool)

(declare-fun tp!2368283 () Bool)

(assert (=> b!7955547 (= e!4692549 (and tp!2368282 tp!2368283))))

(assert (=> b!7954573 (= tp!2367930 e!4692549)))

(assert (= (and b!7954573 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955544))

(assert (= (and b!7954573 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955545))

(assert (= (and b!7954573 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955546))

(assert (= (and b!7954573 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (reg!21808 r!24602))))) b!7955547))

(declare-fun b!7955548 () Bool)

(declare-fun e!4692550 () Bool)

(assert (=> b!7955548 (= e!4692550 tp_is_empty!53501)))

(declare-fun b!7955549 () Bool)

(declare-fun tp!2368286 () Bool)

(declare-fun tp!2368285 () Bool)

(assert (=> b!7955549 (= e!4692550 (and tp!2368286 tp!2368285))))

(declare-fun b!7955550 () Bool)

(declare-fun tp!2368284 () Bool)

(assert (=> b!7955550 (= e!4692550 tp!2368284)))

(declare-fun b!7955551 () Bool)

(declare-fun tp!2368287 () Bool)

(declare-fun tp!2368288 () Bool)

(assert (=> b!7955551 (= e!4692550 (and tp!2368287 tp!2368288))))

(assert (=> b!7954404 (= tp!2367756 e!4692550)))

(assert (= (and b!7954404 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regOne!43470 r!24602))))) b!7955548))

(assert (= (and b!7954404 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regOne!43470 r!24602))))) b!7955549))

(assert (= (and b!7954404 ((_ is Star!21479) (reg!21808 (regOne!43471 (regOne!43470 r!24602))))) b!7955550))

(assert (= (and b!7954404 ((_ is Union!21479) (reg!21808 (regOne!43471 (regOne!43470 r!24602))))) b!7955551))

(declare-fun b!7955552 () Bool)

(declare-fun e!4692551 () Bool)

(assert (=> b!7955552 (= e!4692551 tp_is_empty!53501)))

(declare-fun b!7955553 () Bool)

(declare-fun tp!2368291 () Bool)

(declare-fun tp!2368290 () Bool)

(assert (=> b!7955553 (= e!4692551 (and tp!2368291 tp!2368290))))

(declare-fun b!7955554 () Bool)

(declare-fun tp!2368289 () Bool)

(assert (=> b!7955554 (= e!4692551 tp!2368289)))

(declare-fun b!7955555 () Bool)

(declare-fun tp!2368292 () Bool)

(declare-fun tp!2368293 () Bool)

(assert (=> b!7955555 (= e!4692551 (and tp!2368292 tp!2368293))))

(assert (=> b!7954494 (= tp!2367848 e!4692551)))

(assert (= (and b!7954494 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955552))

(assert (= (and b!7954494 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955553))

(assert (= (and b!7954494 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955554))

(assert (= (and b!7954494 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955555))

(declare-fun b!7955556 () Bool)

(declare-fun e!4692552 () Bool)

(assert (=> b!7955556 (= e!4692552 tp_is_empty!53501)))

(declare-fun b!7955557 () Bool)

(declare-fun tp!2368296 () Bool)

(declare-fun tp!2368295 () Bool)

(assert (=> b!7955557 (= e!4692552 (and tp!2368296 tp!2368295))))

(declare-fun b!7955558 () Bool)

(declare-fun tp!2368294 () Bool)

(assert (=> b!7955558 (= e!4692552 tp!2368294)))

(declare-fun b!7955559 () Bool)

(declare-fun tp!2368297 () Bool)

(declare-fun tp!2368298 () Bool)

(assert (=> b!7955559 (= e!4692552 (and tp!2368297 tp!2368298))))

(assert (=> b!7954494 (= tp!2367847 e!4692552)))

(assert (= (and b!7954494 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955556))

(assert (= (and b!7954494 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955557))

(assert (= (and b!7954494 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955558))

(assert (= (and b!7954494 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regOne!43470 baseR!116))))) b!7955559))

(declare-fun b!7955560 () Bool)

(declare-fun e!4692553 () Bool)

(assert (=> b!7955560 (= e!4692553 tp_is_empty!53501)))

(declare-fun b!7955561 () Bool)

(declare-fun tp!2368301 () Bool)

(declare-fun tp!2368300 () Bool)

(assert (=> b!7955561 (= e!4692553 (and tp!2368301 tp!2368300))))

(declare-fun b!7955562 () Bool)

(declare-fun tp!2368299 () Bool)

(assert (=> b!7955562 (= e!4692553 tp!2368299)))

(declare-fun b!7955563 () Bool)

(declare-fun tp!2368302 () Bool)

(declare-fun tp!2368303 () Bool)

(assert (=> b!7955563 (= e!4692553 (and tp!2368302 tp!2368303))))

(assert (=> b!7954413 (= tp!2367769 e!4692553)))

(assert (= (and b!7954413 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955560))

(assert (= (and b!7954413 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955561))

(assert (= (and b!7954413 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955562))

(assert (= (and b!7954413 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955563))

(declare-fun b!7955564 () Bool)

(declare-fun e!4692554 () Bool)

(assert (=> b!7955564 (= e!4692554 tp_is_empty!53501)))

(declare-fun b!7955565 () Bool)

(declare-fun tp!2368306 () Bool)

(declare-fun tp!2368305 () Bool)

(assert (=> b!7955565 (= e!4692554 (and tp!2368306 tp!2368305))))

(declare-fun b!7955566 () Bool)

(declare-fun tp!2368304 () Bool)

(assert (=> b!7955566 (= e!4692554 tp!2368304)))

(declare-fun b!7955567 () Bool)

(declare-fun tp!2368307 () Bool)

(declare-fun tp!2368308 () Bool)

(assert (=> b!7955567 (= e!4692554 (and tp!2368307 tp!2368308))))

(assert (=> b!7954413 (= tp!2367770 e!4692554)))

(assert (= (and b!7954413 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955564))

(assert (= (and b!7954413 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955565))

(assert (= (and b!7954413 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955566))

(assert (= (and b!7954413 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regOne!43471 r!24602))))) b!7955567))

(declare-fun b!7955568 () Bool)

(declare-fun e!4692555 () Bool)

(assert (=> b!7955568 (= e!4692555 tp_is_empty!53501)))

(declare-fun b!7955569 () Bool)

(declare-fun tp!2368311 () Bool)

(declare-fun tp!2368310 () Bool)

(assert (=> b!7955569 (= e!4692555 (and tp!2368311 tp!2368310))))

(declare-fun b!7955570 () Bool)

(declare-fun tp!2368309 () Bool)

(assert (=> b!7955570 (= e!4692555 tp!2368309)))

(declare-fun b!7955571 () Bool)

(declare-fun tp!2368312 () Bool)

(declare-fun tp!2368313 () Bool)

(assert (=> b!7955571 (= e!4692555 (and tp!2368312 tp!2368313))))

(assert (=> b!7954503 (= tp!2367856 e!4692555)))

(assert (= (and b!7954503 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regOne!43470 baseR!116))))) b!7955568))

(assert (= (and b!7954503 ((_ is Concat!30478) (reg!21808 (reg!21808 (regOne!43470 baseR!116))))) b!7955569))

(assert (= (and b!7954503 ((_ is Star!21479) (reg!21808 (reg!21808 (regOne!43470 baseR!116))))) b!7955570))

(assert (= (and b!7954503 ((_ is Union!21479) (reg!21808 (reg!21808 (regOne!43470 baseR!116))))) b!7955571))

(declare-fun b!7955572 () Bool)

(declare-fun e!4692556 () Bool)

(assert (=> b!7955572 (= e!4692556 tp_is_empty!53501)))

(declare-fun b!7955573 () Bool)

(declare-fun tp!2368316 () Bool)

(declare-fun tp!2368315 () Bool)

(assert (=> b!7955573 (= e!4692556 (and tp!2368316 tp!2368315))))

(declare-fun b!7955574 () Bool)

(declare-fun tp!2368314 () Bool)

(assert (=> b!7955574 (= e!4692556 tp!2368314)))

(declare-fun b!7955575 () Bool)

(declare-fun tp!2368317 () Bool)

(declare-fun tp!2368318 () Bool)

(assert (=> b!7955575 (= e!4692556 (and tp!2368317 tp!2368318))))

(assert (=> b!7954547 (= tp!2367906 e!4692556)))

(assert (= (and b!7954547 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955572))

(assert (= (and b!7954547 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955573))

(assert (= (and b!7954547 ((_ is Star!21479) (reg!21808 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955574))

(assert (= (and b!7954547 ((_ is Union!21479) (reg!21808 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955575))

(declare-fun b!7955576 () Bool)

(declare-fun e!4692557 () Bool)

(assert (=> b!7955576 (= e!4692557 tp_is_empty!53501)))

(declare-fun b!7955577 () Bool)

(declare-fun tp!2368321 () Bool)

(declare-fun tp!2368320 () Bool)

(assert (=> b!7955577 (= e!4692557 (and tp!2368321 tp!2368320))))

(declare-fun b!7955578 () Bool)

(declare-fun tp!2368319 () Bool)

(assert (=> b!7955578 (= e!4692557 tp!2368319)))

(declare-fun b!7955579 () Bool)

(declare-fun tp!2368322 () Bool)

(declare-fun tp!2368323 () Bool)

(assert (=> b!7955579 (= e!4692557 (and tp!2368322 tp!2368323))))

(assert (=> b!7954392 (= tp!2367754 e!4692557)))

(assert (= (and b!7954392 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955576))

(assert (= (and b!7954392 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955577))

(assert (= (and b!7954392 ((_ is Star!21479) (regOne!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955578))

(assert (= (and b!7954392 ((_ is Union!21479) (regOne!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955579))

(declare-fun b!7955580 () Bool)

(declare-fun e!4692558 () Bool)

(assert (=> b!7955580 (= e!4692558 tp_is_empty!53501)))

(declare-fun b!7955581 () Bool)

(declare-fun tp!2368326 () Bool)

(declare-fun tp!2368325 () Bool)

(assert (=> b!7955581 (= e!4692558 (and tp!2368326 tp!2368325))))

(declare-fun b!7955582 () Bool)

(declare-fun tp!2368324 () Bool)

(assert (=> b!7955582 (= e!4692558 tp!2368324)))

(declare-fun b!7955583 () Bool)

(declare-fun tp!2368327 () Bool)

(declare-fun tp!2368328 () Bool)

(assert (=> b!7955583 (= e!4692558 (and tp!2368327 tp!2368328))))

(assert (=> b!7954392 (= tp!2367755 e!4692558)))

(assert (= (and b!7954392 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955580))

(assert (= (and b!7954392 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955581))

(assert (= (and b!7954392 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955582))

(assert (= (and b!7954392 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regOne!43471 r!24602))))) b!7955583))

(declare-fun b!7955584 () Bool)

(declare-fun e!4692559 () Bool)

(assert (=> b!7955584 (= e!4692559 tp_is_empty!53501)))

(declare-fun b!7955585 () Bool)

(declare-fun tp!2368331 () Bool)

(declare-fun tp!2368330 () Bool)

(assert (=> b!7955585 (= e!4692559 (and tp!2368331 tp!2368330))))

(declare-fun b!7955586 () Bool)

(declare-fun tp!2368329 () Bool)

(assert (=> b!7955586 (= e!4692559 tp!2368329)))

(declare-fun b!7955587 () Bool)

(declare-fun tp!2368332 () Bool)

(declare-fun tp!2368333 () Bool)

(assert (=> b!7955587 (= e!4692559 (and tp!2368332 tp!2368333))))

(assert (=> b!7954519 (= tp!2367876 e!4692559)))

(assert (= (and b!7954519 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955584))

(assert (= (and b!7954519 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955585))

(assert (= (and b!7954519 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955586))

(assert (= (and b!7954519 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955587))

(declare-fun b!7955588 () Bool)

(declare-fun e!4692560 () Bool)

(assert (=> b!7955588 (= e!4692560 tp_is_empty!53501)))

(declare-fun b!7955589 () Bool)

(declare-fun tp!2368336 () Bool)

(declare-fun tp!2368335 () Bool)

(assert (=> b!7955589 (= e!4692560 (and tp!2368336 tp!2368335))))

(declare-fun b!7955590 () Bool)

(declare-fun tp!2368334 () Bool)

(assert (=> b!7955590 (= e!4692560 tp!2368334)))

(declare-fun b!7955591 () Bool)

(declare-fun tp!2368337 () Bool)

(declare-fun tp!2368338 () Bool)

(assert (=> b!7955591 (= e!4692560 (and tp!2368337 tp!2368338))))

(assert (=> b!7954434 (= tp!2367784 e!4692560)))

(assert (= (and b!7954434 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955588))

(assert (= (and b!7954434 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955589))

(assert (= (and b!7954434 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955590))

(assert (= (and b!7954434 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955591))

(declare-fun b!7955592 () Bool)

(declare-fun e!4692561 () Bool)

(assert (=> b!7955592 (= e!4692561 tp_is_empty!53501)))

(declare-fun b!7955593 () Bool)

(declare-fun tp!2368341 () Bool)

(declare-fun tp!2368340 () Bool)

(assert (=> b!7955593 (= e!4692561 (and tp!2368341 tp!2368340))))

(declare-fun b!7955594 () Bool)

(declare-fun tp!2368339 () Bool)

(assert (=> b!7955594 (= e!4692561 tp!2368339)))

(declare-fun b!7955595 () Bool)

(declare-fun tp!2368342 () Bool)

(declare-fun tp!2368343 () Bool)

(assert (=> b!7955595 (= e!4692561 (and tp!2368342 tp!2368343))))

(assert (=> b!7954434 (= tp!2367785 e!4692561)))

(assert (= (and b!7954434 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955592))

(assert (= (and b!7954434 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955593))

(assert (= (and b!7954434 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955594))

(assert (= (and b!7954434 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 r!24602))))) b!7955595))

(declare-fun b!7955596 () Bool)

(declare-fun e!4692562 () Bool)

(assert (=> b!7955596 (= e!4692562 tp_is_empty!53501)))

(declare-fun b!7955597 () Bool)

(declare-fun tp!2368346 () Bool)

(declare-fun tp!2368345 () Bool)

(assert (=> b!7955597 (= e!4692562 (and tp!2368346 tp!2368345))))

(declare-fun b!7955598 () Bool)

(declare-fun tp!2368344 () Bool)

(assert (=> b!7955598 (= e!4692562 tp!2368344)))

(declare-fun b!7955599 () Bool)

(declare-fun tp!2368347 () Bool)

(declare-fun tp!2368348 () Bool)

(assert (=> b!7955599 (= e!4692562 (and tp!2368347 tp!2368348))))

(assert (=> b!7954527 (= tp!2367886 e!4692562)))

(assert (= (and b!7954527 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955596))

(assert (= (and b!7954527 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955597))

(assert (= (and b!7954527 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955598))

(assert (= (and b!7954527 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955599))

(declare-fun b!7955600 () Bool)

(declare-fun e!4692563 () Bool)

(assert (=> b!7955600 (= e!4692563 tp_is_empty!53501)))

(declare-fun b!7955601 () Bool)

(declare-fun tp!2368351 () Bool)

(declare-fun tp!2368350 () Bool)

(assert (=> b!7955601 (= e!4692563 (and tp!2368351 tp!2368350))))

(declare-fun b!7955602 () Bool)

(declare-fun tp!2368349 () Bool)

(assert (=> b!7955602 (= e!4692563 tp!2368349)))

(declare-fun b!7955603 () Bool)

(declare-fun tp!2368352 () Bool)

(declare-fun tp!2368353 () Bool)

(assert (=> b!7955603 (= e!4692563 (and tp!2368352 tp!2368353))))

(assert (=> b!7954568 (= tp!2367921 e!4692563)))

(assert (= (and b!7954568 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (reg!21808 r!24602))))) b!7955600))

(assert (= (and b!7954568 ((_ is Concat!30478) (reg!21808 (regOne!43471 (reg!21808 r!24602))))) b!7955601))

(assert (= (and b!7954568 ((_ is Star!21479) (reg!21808 (regOne!43471 (reg!21808 r!24602))))) b!7955602))

(assert (= (and b!7954568 ((_ is Union!21479) (reg!21808 (regOne!43471 (reg!21808 r!24602))))) b!7955603))

(declare-fun b!7955604 () Bool)

(declare-fun e!4692564 () Bool)

(assert (=> b!7955604 (= e!4692564 tp_is_empty!53501)))

(declare-fun b!7955605 () Bool)

(declare-fun tp!2368356 () Bool)

(declare-fun tp!2368355 () Bool)

(assert (=> b!7955605 (= e!4692564 (and tp!2368356 tp!2368355))))

(declare-fun b!7955606 () Bool)

(declare-fun tp!2368354 () Bool)

(assert (=> b!7955606 (= e!4692564 tp!2368354)))

(declare-fun b!7955607 () Bool)

(declare-fun tp!2368357 () Bool)

(declare-fun tp!2368358 () Bool)

(assert (=> b!7955607 (= e!4692564 (and tp!2368357 tp!2368358))))

(assert (=> b!7954544 (= tp!2367904 e!4692564)))

(assert (= (and b!7954544 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955604))

(assert (= (and b!7954544 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955605))

(assert (= (and b!7954544 ((_ is Star!21479) (regOne!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955606))

(assert (= (and b!7954544 ((_ is Union!21479) (regOne!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955607))

(declare-fun b!7955608 () Bool)

(declare-fun e!4692565 () Bool)

(assert (=> b!7955608 (= e!4692565 tp_is_empty!53501)))

(declare-fun b!7955609 () Bool)

(declare-fun tp!2368361 () Bool)

(declare-fun tp!2368360 () Bool)

(assert (=> b!7955609 (= e!4692565 (and tp!2368361 tp!2368360))))

(declare-fun b!7955610 () Bool)

(declare-fun tp!2368359 () Bool)

(assert (=> b!7955610 (= e!4692565 tp!2368359)))

(declare-fun b!7955611 () Bool)

(declare-fun tp!2368362 () Bool)

(declare-fun tp!2368363 () Bool)

(assert (=> b!7955611 (= e!4692565 (and tp!2368362 tp!2368363))))

(assert (=> b!7954544 (= tp!2367905 e!4692565)))

(assert (= (and b!7954544 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955608))

(assert (= (and b!7954544 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955609))

(assert (= (and b!7954544 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955610))

(assert (= (and b!7954544 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regTwo!43471 baseR!116))))) b!7955611))

(declare-fun b!7955612 () Bool)

(declare-fun e!4692566 () Bool)

(assert (=> b!7955612 (= e!4692566 tp_is_empty!53501)))

(declare-fun b!7955613 () Bool)

(declare-fun tp!2368366 () Bool)

(declare-fun tp!2368365 () Bool)

(assert (=> b!7955613 (= e!4692566 (and tp!2368366 tp!2368365))))

(declare-fun b!7955614 () Bool)

(declare-fun tp!2368364 () Bool)

(assert (=> b!7955614 (= e!4692566 tp!2368364)))

(declare-fun b!7955615 () Bool)

(declare-fun tp!2368367 () Bool)

(declare-fun tp!2368368 () Bool)

(assert (=> b!7955615 (= e!4692566 (and tp!2368367 tp!2368368))))

(assert (=> b!7954466 (= tp!2367818 e!4692566)))

(assert (= (and b!7954466 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955612))

(assert (= (and b!7954466 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955613))

(assert (= (and b!7954466 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955614))

(assert (= (and b!7954466 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955615))

(declare-fun b!7955616 () Bool)

(declare-fun e!4692567 () Bool)

(assert (=> b!7955616 (= e!4692567 tp_is_empty!53501)))

(declare-fun b!7955617 () Bool)

(declare-fun tp!2368371 () Bool)

(declare-fun tp!2368370 () Bool)

(assert (=> b!7955617 (= e!4692567 (and tp!2368371 tp!2368370))))

(declare-fun b!7955618 () Bool)

(declare-fun tp!2368369 () Bool)

(assert (=> b!7955618 (= e!4692567 tp!2368369)))

(declare-fun b!7955619 () Bool)

(declare-fun tp!2368372 () Bool)

(declare-fun tp!2368373 () Bool)

(assert (=> b!7955619 (= e!4692567 (and tp!2368372 tp!2368373))))

(assert (=> b!7954466 (= tp!2367817 e!4692567)))

(assert (= (and b!7954466 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955616))

(assert (= (and b!7954466 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955617))

(assert (= (and b!7954466 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955618))

(assert (= (and b!7954466 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955619))

(declare-fun b!7955620 () Bool)

(declare-fun e!4692568 () Bool)

(assert (=> b!7955620 (= e!4692568 tp_is_empty!53501)))

(declare-fun b!7955621 () Bool)

(declare-fun tp!2368376 () Bool)

(declare-fun tp!2368375 () Bool)

(assert (=> b!7955621 (= e!4692568 (and tp!2368376 tp!2368375))))

(declare-fun b!7955622 () Bool)

(declare-fun tp!2368374 () Bool)

(assert (=> b!7955622 (= e!4692568 tp!2368374)))

(declare-fun b!7955623 () Bool)

(declare-fun tp!2368377 () Bool)

(declare-fun tp!2368378 () Bool)

(assert (=> b!7955623 (= e!4692568 (and tp!2368377 tp!2368378))))

(assert (=> b!7954561 (= tp!2367914 e!4692568)))

(assert (= (and b!7954561 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955620))

(assert (= (and b!7954561 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955621))

(assert (= (and b!7954561 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955622))

(assert (= (and b!7954561 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955623))

(declare-fun b!7955624 () Bool)

(declare-fun e!4692569 () Bool)

(assert (=> b!7955624 (= e!4692569 tp_is_empty!53501)))

(declare-fun b!7955625 () Bool)

(declare-fun tp!2368381 () Bool)

(declare-fun tp!2368380 () Bool)

(assert (=> b!7955625 (= e!4692569 (and tp!2368381 tp!2368380))))

(declare-fun b!7955626 () Bool)

(declare-fun tp!2368379 () Bool)

(assert (=> b!7955626 (= e!4692569 tp!2368379)))

(declare-fun b!7955627 () Bool)

(declare-fun tp!2368382 () Bool)

(declare-fun tp!2368383 () Bool)

(assert (=> b!7955627 (= e!4692569 (and tp!2368382 tp!2368383))))

(assert (=> b!7954561 (= tp!2367915 e!4692569)))

(assert (= (and b!7954561 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955624))

(assert (= (and b!7954561 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955625))

(assert (= (and b!7954561 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955626))

(assert (= (and b!7954561 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7955627))

(declare-fun b!7955628 () Bool)

(declare-fun e!4692570 () Bool)

(assert (=> b!7955628 (= e!4692570 tp_is_empty!53501)))

(declare-fun b!7955629 () Bool)

(declare-fun tp!2368386 () Bool)

(declare-fun tp!2368385 () Bool)

(assert (=> b!7955629 (= e!4692570 (and tp!2368386 tp!2368385))))

(declare-fun b!7955630 () Bool)

(declare-fun tp!2368384 () Bool)

(assert (=> b!7955630 (= e!4692570 tp!2368384)))

(declare-fun b!7955631 () Bool)

(declare-fun tp!2368387 () Bool)

(declare-fun tp!2368388 () Bool)

(assert (=> b!7955631 (= e!4692570 (and tp!2368387 tp!2368388))))

(assert (=> b!7954475 (= tp!2367821 e!4692570)))

(assert (= (and b!7954475 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (reg!21808 baseR!116))))) b!7955628))

(assert (= (and b!7954475 ((_ is Concat!30478) (reg!21808 (regOne!43470 (reg!21808 baseR!116))))) b!7955629))

(assert (= (and b!7954475 ((_ is Star!21479) (reg!21808 (regOne!43470 (reg!21808 baseR!116))))) b!7955630))

(assert (= (and b!7954475 ((_ is Union!21479) (reg!21808 (regOne!43470 (reg!21808 baseR!116))))) b!7955631))

(declare-fun b!7955632 () Bool)

(declare-fun e!4692571 () Bool)

(assert (=> b!7955632 (= e!4692571 tp_is_empty!53501)))

(declare-fun b!7955633 () Bool)

(declare-fun tp!2368391 () Bool)

(declare-fun tp!2368390 () Bool)

(assert (=> b!7955633 (= e!4692571 (and tp!2368391 tp!2368390))))

(declare-fun b!7955634 () Bool)

(declare-fun tp!2368389 () Bool)

(assert (=> b!7955634 (= e!4692571 tp!2368389)))

(declare-fun b!7955635 () Bool)

(declare-fun tp!2368392 () Bool)

(declare-fun tp!2368393 () Bool)

(assert (=> b!7955635 (= e!4692571 (and tp!2368392 tp!2368393))))

(assert (=> b!7954374 (= tp!2367738 e!4692571)))

(assert (= (and b!7954374 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955632))

(assert (= (and b!7954374 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955633))

(assert (= (and b!7954374 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955634))

(assert (= (and b!7954374 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955635))

(declare-fun b!7955636 () Bool)

(declare-fun e!4692572 () Bool)

(assert (=> b!7955636 (= e!4692572 tp_is_empty!53501)))

(declare-fun b!7955637 () Bool)

(declare-fun tp!2368396 () Bool)

(declare-fun tp!2368395 () Bool)

(assert (=> b!7955637 (= e!4692572 (and tp!2368396 tp!2368395))))

(declare-fun b!7955638 () Bool)

(declare-fun tp!2368394 () Bool)

(assert (=> b!7955638 (= e!4692572 tp!2368394)))

(declare-fun b!7955639 () Bool)

(declare-fun tp!2368397 () Bool)

(declare-fun tp!2368398 () Bool)

(assert (=> b!7955639 (= e!4692572 (and tp!2368397 tp!2368398))))

(assert (=> b!7954374 (= tp!2367737 e!4692572)))

(assert (= (and b!7954374 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955636))

(assert (= (and b!7954374 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955637))

(assert (= (and b!7954374 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955638))

(assert (= (and b!7954374 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regOne!43471 baseR!116))))) b!7955639))

(declare-fun b!7955640 () Bool)

(declare-fun e!4692573 () Bool)

(assert (=> b!7955640 (= e!4692573 tp_is_empty!53501)))

(declare-fun b!7955641 () Bool)

(declare-fun tp!2368401 () Bool)

(declare-fun tp!2368400 () Bool)

(assert (=> b!7955641 (= e!4692573 (and tp!2368401 tp!2368400))))

(declare-fun b!7955642 () Bool)

(declare-fun tp!2368399 () Bool)

(assert (=> b!7955642 (= e!4692573 tp!2368399)))

(declare-fun b!7955643 () Bool)

(declare-fun tp!2368402 () Bool)

(declare-fun tp!2368403 () Bool)

(assert (=> b!7955643 (= e!4692573 (and tp!2368402 tp!2368403))))

(assert (=> b!7954506 (= tp!2367863 e!4692573)))

(assert (= (and b!7954506 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955640))

(assert (= (and b!7954506 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955641))

(assert (= (and b!7954506 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955642))

(assert (= (and b!7954506 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955643))

(declare-fun b!7955644 () Bool)

(declare-fun e!4692574 () Bool)

(assert (=> b!7955644 (= e!4692574 tp_is_empty!53501)))

(declare-fun b!7955645 () Bool)

(declare-fun tp!2368406 () Bool)

(declare-fun tp!2368405 () Bool)

(assert (=> b!7955645 (= e!4692574 (and tp!2368406 tp!2368405))))

(declare-fun b!7955646 () Bool)

(declare-fun tp!2368404 () Bool)

(assert (=> b!7955646 (= e!4692574 tp!2368404)))

(declare-fun b!7955647 () Bool)

(declare-fun tp!2368407 () Bool)

(declare-fun tp!2368408 () Bool)

(assert (=> b!7955647 (= e!4692574 (and tp!2368407 tp!2368408))))

(assert (=> b!7954506 (= tp!2367862 e!4692574)))

(assert (= (and b!7954506 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955644))

(assert (= (and b!7954506 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955645))

(assert (= (and b!7954506 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955646))

(assert (= (and b!7954506 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 r!24602))))) b!7955647))

(declare-fun b!7955648 () Bool)

(declare-fun e!4692575 () Bool)

(assert (=> b!7955648 (= e!4692575 tp_is_empty!53501)))

(declare-fun b!7955649 () Bool)

(declare-fun tp!2368411 () Bool)

(declare-fun tp!2368410 () Bool)

(assert (=> b!7955649 (= e!4692575 (and tp!2368411 tp!2368410))))

(declare-fun b!7955650 () Bool)

(declare-fun tp!2368409 () Bool)

(assert (=> b!7955650 (= e!4692575 tp!2368409)))

(declare-fun b!7955651 () Bool)

(declare-fun tp!2368412 () Bool)

(declare-fun tp!2368413 () Bool)

(assert (=> b!7955651 (= e!4692575 (and tp!2368412 tp!2368413))))

(assert (=> b!7954576 (= tp!2367931 e!4692575)))

(assert (= (and b!7954576 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955648))

(assert (= (and b!7954576 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955649))

(assert (= (and b!7954576 ((_ is Star!21479) (reg!21808 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955650))

(assert (= (and b!7954576 ((_ is Union!21479) (reg!21808 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955651))

(declare-fun b!7955652 () Bool)

(declare-fun e!4692576 () Bool)

(assert (=> b!7955652 (= e!4692576 tp_is_empty!53501)))

(declare-fun b!7955653 () Bool)

(declare-fun tp!2368416 () Bool)

(declare-fun tp!2368415 () Bool)

(assert (=> b!7955653 (= e!4692576 (and tp!2368416 tp!2368415))))

(declare-fun b!7955654 () Bool)

(declare-fun tp!2368414 () Bool)

(assert (=> b!7955654 (= e!4692576 tp!2368414)))

(declare-fun b!7955655 () Bool)

(declare-fun tp!2368417 () Bool)

(declare-fun tp!2368418 () Bool)

(assert (=> b!7955655 (= e!4692576 (and tp!2368417 tp!2368418))))

(assert (=> b!7954407 (= tp!2367763 e!4692576)))

(assert (= (and b!7954407 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955652))

(assert (= (and b!7954407 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955653))

(assert (= (and b!7954407 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955654))

(assert (= (and b!7954407 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955655))

(declare-fun b!7955656 () Bool)

(declare-fun e!4692577 () Bool)

(assert (=> b!7955656 (= e!4692577 tp_is_empty!53501)))

(declare-fun b!7955657 () Bool)

(declare-fun tp!2368421 () Bool)

(declare-fun tp!2368420 () Bool)

(assert (=> b!7955657 (= e!4692577 (and tp!2368421 tp!2368420))))

(declare-fun b!7955658 () Bool)

(declare-fun tp!2368419 () Bool)

(assert (=> b!7955658 (= e!4692577 tp!2368419)))

(declare-fun b!7955659 () Bool)

(declare-fun tp!2368422 () Bool)

(declare-fun tp!2368423 () Bool)

(assert (=> b!7955659 (= e!4692577 (and tp!2368422 tp!2368423))))

(assert (=> b!7954407 (= tp!2367762 e!4692577)))

(assert (= (and b!7954407 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955656))

(assert (= (and b!7954407 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955657))

(assert (= (and b!7954407 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955658))

(assert (= (and b!7954407 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 r!24602))))) b!7955659))

(declare-fun b!7955660 () Bool)

(declare-fun e!4692578 () Bool)

(assert (=> b!7955660 (= e!4692578 tp_is_empty!53501)))

(declare-fun b!7955661 () Bool)

(declare-fun tp!2368426 () Bool)

(declare-fun tp!2368425 () Bool)

(assert (=> b!7955661 (= e!4692578 (and tp!2368426 tp!2368425))))

(declare-fun b!7955662 () Bool)

(declare-fun tp!2368424 () Bool)

(assert (=> b!7955662 (= e!4692578 tp!2368424)))

(declare-fun b!7955663 () Bool)

(declare-fun tp!2368427 () Bool)

(declare-fun tp!2368428 () Bool)

(assert (=> b!7955663 (= e!4692578 (and tp!2368427 tp!2368428))))

(assert (=> b!7954585 (= tp!2367944 e!4692578)))

(assert (= (and b!7954585 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955660))

(assert (= (and b!7954585 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955661))

(assert (= (and b!7954585 ((_ is Star!21479) (regOne!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955662))

(assert (= (and b!7954585 ((_ is Union!21479) (regOne!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955663))

(declare-fun b!7955664 () Bool)

(declare-fun e!4692579 () Bool)

(assert (=> b!7955664 (= e!4692579 tp_is_empty!53501)))

(declare-fun b!7955665 () Bool)

(declare-fun tp!2368431 () Bool)

(declare-fun tp!2368430 () Bool)

(assert (=> b!7955665 (= e!4692579 (and tp!2368431 tp!2368430))))

(declare-fun b!7955666 () Bool)

(declare-fun tp!2368429 () Bool)

(assert (=> b!7955666 (= e!4692579 tp!2368429)))

(declare-fun b!7955667 () Bool)

(declare-fun tp!2368432 () Bool)

(declare-fun tp!2368433 () Bool)

(assert (=> b!7955667 (= e!4692579 (and tp!2368432 tp!2368433))))

(assert (=> b!7954585 (= tp!2367945 e!4692579)))

(assert (= (and b!7954585 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955664))

(assert (= (and b!7954585 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955665))

(assert (= (and b!7954585 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955666))

(assert (= (and b!7954585 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regTwo!43470 baseR!116))))) b!7955667))

(declare-fun b!7955668 () Bool)

(declare-fun e!4692580 () Bool)

(assert (=> b!7955668 (= e!4692580 tp_is_empty!53501)))

(declare-fun b!7955669 () Bool)

(declare-fun tp!2368436 () Bool)

(declare-fun tp!2368435 () Bool)

(assert (=> b!7955669 (= e!4692580 (and tp!2368436 tp!2368435))))

(declare-fun b!7955670 () Bool)

(declare-fun tp!2368434 () Bool)

(assert (=> b!7955670 (= e!4692580 tp!2368434)))

(declare-fun b!7955671 () Bool)

(declare-fun tp!2368437 () Bool)

(declare-fun tp!2368438 () Bool)

(assert (=> b!7955671 (= e!4692580 (and tp!2368437 tp!2368438))))

(assert (=> b!7954450 (= tp!2367803 e!4692580)))

(assert (= (and b!7954450 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955668))

(assert (= (and b!7954450 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955669))

(assert (= (and b!7954450 ((_ is Star!21479) (regOne!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955670))

(assert (= (and b!7954450 ((_ is Union!21479) (regOne!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955671))

(declare-fun b!7955672 () Bool)

(declare-fun e!4692581 () Bool)

(assert (=> b!7955672 (= e!4692581 tp_is_empty!53501)))

(declare-fun b!7955673 () Bool)

(declare-fun tp!2368441 () Bool)

(declare-fun tp!2368440 () Bool)

(assert (=> b!7955673 (= e!4692581 (and tp!2368441 tp!2368440))))

(declare-fun b!7955674 () Bool)

(declare-fun tp!2368439 () Bool)

(assert (=> b!7955674 (= e!4692581 tp!2368439)))

(declare-fun b!7955675 () Bool)

(declare-fun tp!2368442 () Bool)

(declare-fun tp!2368443 () Bool)

(assert (=> b!7955675 (= e!4692581 (and tp!2368442 tp!2368443))))

(assert (=> b!7954450 (= tp!2367802 e!4692581)))

(assert (= (and b!7954450 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955672))

(assert (= (and b!7954450 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955673))

(assert (= (and b!7954450 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955674))

(assert (= (and b!7954450 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (reg!21808 baseR!116))))) b!7955675))

(declare-fun b!7955676 () Bool)

(declare-fun e!4692582 () Bool)

(assert (=> b!7955676 (= e!4692582 tp_is_empty!53501)))

(declare-fun b!7955677 () Bool)

(declare-fun tp!2368446 () Bool)

(declare-fun tp!2368445 () Bool)

(assert (=> b!7955677 (= e!4692582 (and tp!2368446 tp!2368445))))

(declare-fun b!7955678 () Bool)

(declare-fun tp!2368444 () Bool)

(assert (=> b!7955678 (= e!4692582 tp!2368444)))

(declare-fun b!7955679 () Bool)

(declare-fun tp!2368447 () Bool)

(declare-fun tp!2368448 () Bool)

(assert (=> b!7955679 (= e!4692582 (and tp!2368447 tp!2368448))))

(assert (=> b!7954383 (= tp!2367741 e!4692582)))

(assert (= (and b!7954383 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955676))

(assert (= (and b!7954383 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955677))

(assert (= (and b!7954383 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955678))

(assert (= (and b!7954383 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955679))

(declare-fun b!7955680 () Bool)

(declare-fun e!4692583 () Bool)

(assert (=> b!7955680 (= e!4692583 tp_is_empty!53501)))

(declare-fun b!7955681 () Bool)

(declare-fun tp!2368451 () Bool)

(declare-fun tp!2368450 () Bool)

(assert (=> b!7955681 (= e!4692583 (and tp!2368451 tp!2368450))))

(declare-fun b!7955682 () Bool)

(declare-fun tp!2368449 () Bool)

(assert (=> b!7955682 (= e!4692583 tp!2368449)))

(declare-fun b!7955683 () Bool)

(declare-fun tp!2368452 () Bool)

(declare-fun tp!2368453 () Bool)

(assert (=> b!7955683 (= e!4692583 (and tp!2368452 tp!2368453))))

(assert (=> b!7954522 (= tp!2367883 e!4692583)))

(assert (= (and b!7954522 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955680))

(assert (= (and b!7954522 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955681))

(assert (= (and b!7954522 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955682))

(assert (= (and b!7954522 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955683))

(declare-fun b!7955684 () Bool)

(declare-fun e!4692584 () Bool)

(assert (=> b!7955684 (= e!4692584 tp_is_empty!53501)))

(declare-fun b!7955685 () Bool)

(declare-fun tp!2368456 () Bool)

(declare-fun tp!2368455 () Bool)

(assert (=> b!7955685 (= e!4692584 (and tp!2368456 tp!2368455))))

(declare-fun b!7955686 () Bool)

(declare-fun tp!2368454 () Bool)

(assert (=> b!7955686 (= e!4692584 tp!2368454)))

(declare-fun b!7955687 () Bool)

(declare-fun tp!2368457 () Bool)

(declare-fun tp!2368458 () Bool)

(assert (=> b!7955687 (= e!4692584 (and tp!2368457 tp!2368458))))

(assert (=> b!7954522 (= tp!2367882 e!4692584)))

(assert (= (and b!7954522 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955684))

(assert (= (and b!7954522 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955685))

(assert (= (and b!7954522 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955686))

(assert (= (and b!7954522 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 r!24602))))) b!7955687))

(declare-fun b!7955688 () Bool)

(declare-fun e!4692585 () Bool)

(assert (=> b!7955688 (= e!4692585 tp_is_empty!53501)))

(declare-fun b!7955689 () Bool)

(declare-fun tp!2368461 () Bool)

(declare-fun tp!2368460 () Bool)

(assert (=> b!7955689 (= e!4692585 (and tp!2368461 tp!2368460))))

(declare-fun b!7955690 () Bool)

(declare-fun tp!2368459 () Bool)

(assert (=> b!7955690 (= e!4692585 tp!2368459)))

(declare-fun b!7955691 () Bool)

(declare-fun tp!2368462 () Bool)

(declare-fun tp!2368463 () Bool)

(assert (=> b!7955691 (= e!4692585 (and tp!2368462 tp!2368463))))

(assert (=> b!7954609 (= tp!2367974 e!4692585)))

(assert (= (and b!7954609 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (reg!21808 r!24602))))) b!7955688))

(assert (= (and b!7954609 ((_ is Concat!30478) (regOne!43471 (reg!21808 (reg!21808 r!24602))))) b!7955689))

(assert (= (and b!7954609 ((_ is Star!21479) (regOne!43471 (reg!21808 (reg!21808 r!24602))))) b!7955690))

(assert (= (and b!7954609 ((_ is Union!21479) (regOne!43471 (reg!21808 (reg!21808 r!24602))))) b!7955691))

(declare-fun b!7955692 () Bool)

(declare-fun e!4692586 () Bool)

(assert (=> b!7955692 (= e!4692586 tp_is_empty!53501)))

(declare-fun b!7955693 () Bool)

(declare-fun tp!2368466 () Bool)

(declare-fun tp!2368465 () Bool)

(assert (=> b!7955693 (= e!4692586 (and tp!2368466 tp!2368465))))

(declare-fun b!7955694 () Bool)

(declare-fun tp!2368464 () Bool)

(assert (=> b!7955694 (= e!4692586 tp!2368464)))

(declare-fun b!7955695 () Bool)

(declare-fun tp!2368467 () Bool)

(declare-fun tp!2368468 () Bool)

(assert (=> b!7955695 (= e!4692586 (and tp!2368467 tp!2368468))))

(assert (=> b!7954609 (= tp!2367975 e!4692586)))

(assert (= (and b!7954609 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (reg!21808 r!24602))))) b!7955692))

(assert (= (and b!7954609 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (reg!21808 r!24602))))) b!7955693))

(assert (= (and b!7954609 ((_ is Star!21479) (regTwo!43471 (reg!21808 (reg!21808 r!24602))))) b!7955694))

(assert (= (and b!7954609 ((_ is Union!21479) (regTwo!43471 (reg!21808 (reg!21808 r!24602))))) b!7955695))

(declare-fun b!7955696 () Bool)

(declare-fun e!4692587 () Bool)

(assert (=> b!7955696 (= e!4692587 tp_is_empty!53501)))

(declare-fun b!7955697 () Bool)

(declare-fun tp!2368471 () Bool)

(declare-fun tp!2368470 () Bool)

(assert (=> b!7955697 (= e!4692587 (and tp!2368471 tp!2368470))))

(declare-fun b!7955698 () Bool)

(declare-fun tp!2368469 () Bool)

(assert (=> b!7955698 (= e!4692587 tp!2368469)))

(declare-fun b!7955699 () Bool)

(declare-fun tp!2368472 () Bool)

(declare-fun tp!2368473 () Bool)

(assert (=> b!7955699 (= e!4692587 (and tp!2368472 tp!2368473))))

(assert (=> b!7954437 (= tp!2367786 e!4692587)))

(assert (= (and b!7954437 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regOne!43471 r!24602))))) b!7955696))

(assert (= (and b!7954437 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regOne!43471 r!24602))))) b!7955697))

(assert (= (and b!7954437 ((_ is Star!21479) (reg!21808 (regOne!43470 (regOne!43471 r!24602))))) b!7955698))

(assert (= (and b!7954437 ((_ is Union!21479) (reg!21808 (regOne!43470 (regOne!43471 r!24602))))) b!7955699))

(declare-fun b!7955700 () Bool)

(declare-fun e!4692588 () Bool)

(assert (=> b!7955700 (= e!4692588 tp_is_empty!53501)))

(declare-fun b!7955701 () Bool)

(declare-fun tp!2368476 () Bool)

(declare-fun tp!2368475 () Bool)

(assert (=> b!7955701 (= e!4692588 (and tp!2368476 tp!2368475))))

(declare-fun b!7955702 () Bool)

(declare-fun tp!2368474 () Bool)

(assert (=> b!7955702 (= e!4692588 tp!2368474)))

(declare-fun b!7955703 () Bool)

(declare-fun tp!2368477 () Bool)

(declare-fun tp!2368478 () Bool)

(assert (=> b!7955703 (= e!4692588 (and tp!2368477 tp!2368478))))

(assert (=> b!7954564 (= tp!2367916 e!4692588)))

(assert (= (and b!7954564 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regTwo!43470 r!24602))))) b!7955700))

(assert (= (and b!7954564 ((_ is Concat!30478) (reg!21808 (reg!21808 (regTwo!43470 r!24602))))) b!7955701))

(assert (= (and b!7954564 ((_ is Star!21479) (reg!21808 (reg!21808 (regTwo!43470 r!24602))))) b!7955702))

(assert (= (and b!7954564 ((_ is Union!21479) (reg!21808 (reg!21808 (regTwo!43470 r!24602))))) b!7955703))

(declare-fun b!7955704 () Bool)

(declare-fun e!4692589 () Bool)

(assert (=> b!7955704 (= e!4692589 tp_is_empty!53501)))

(declare-fun b!7955705 () Bool)

(declare-fun tp!2368481 () Bool)

(declare-fun tp!2368480 () Bool)

(assert (=> b!7955705 (= e!4692589 (and tp!2368481 tp!2368480))))

(declare-fun b!7955706 () Bool)

(declare-fun tp!2368479 () Bool)

(assert (=> b!7955706 (= e!4692589 tp!2368479)))

(declare-fun b!7955707 () Bool)

(declare-fun tp!2368482 () Bool)

(declare-fun tp!2368483 () Bool)

(assert (=> b!7955707 (= e!4692589 (and tp!2368482 tp!2368483))))

(assert (=> b!7954483 (= tp!2367831 e!4692589)))

(assert (= (and b!7954483 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regOne!43471 baseR!116))))) b!7955704))

(assert (= (and b!7954483 ((_ is Concat!30478) (reg!21808 (reg!21808 (regOne!43471 baseR!116))))) b!7955705))

(assert (= (and b!7954483 ((_ is Star!21479) (reg!21808 (reg!21808 (regOne!43471 baseR!116))))) b!7955706))

(assert (= (and b!7954483 ((_ is Union!21479) (reg!21808 (reg!21808 (regOne!43471 baseR!116))))) b!7955707))

(declare-fun b!7955708 () Bool)

(declare-fun e!4692590 () Bool)

(assert (=> b!7955708 (= e!4692590 tp_is_empty!53501)))

(declare-fun b!7955709 () Bool)

(declare-fun tp!2368486 () Bool)

(declare-fun tp!2368485 () Bool)

(assert (=> b!7955709 (= e!4692590 (and tp!2368486 tp!2368485))))

(declare-fun b!7955710 () Bool)

(declare-fun tp!2368484 () Bool)

(assert (=> b!7955710 (= e!4692590 tp!2368484)))

(declare-fun b!7955711 () Bool)

(declare-fun tp!2368487 () Bool)

(declare-fun tp!2368488 () Bool)

(assert (=> b!7955711 (= e!4692590 (and tp!2368487 tp!2368488))))

(assert (=> b!7954492 (= tp!2367844 e!4692590)))

(assert (= (and b!7954492 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955708))

(assert (= (and b!7954492 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955709))

(assert (= (and b!7954492 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955710))

(assert (= (and b!7954492 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955711))

(declare-fun b!7955712 () Bool)

(declare-fun e!4692591 () Bool)

(assert (=> b!7955712 (= e!4692591 tp_is_empty!53501)))

(declare-fun b!7955713 () Bool)

(declare-fun tp!2368491 () Bool)

(declare-fun tp!2368490 () Bool)

(assert (=> b!7955713 (= e!4692591 (and tp!2368491 tp!2368490))))

(declare-fun b!7955714 () Bool)

(declare-fun tp!2368489 () Bool)

(assert (=> b!7955714 (= e!4692591 tp!2368489)))

(declare-fun b!7955715 () Bool)

(declare-fun tp!2368492 () Bool)

(declare-fun tp!2368493 () Bool)

(assert (=> b!7955715 (= e!4692591 (and tp!2368492 tp!2368493))))

(assert (=> b!7954492 (= tp!2367845 e!4692591)))

(assert (= (and b!7954492 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955712))

(assert (= (and b!7954492 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955713))

(assert (= (and b!7954492 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955714))

(assert (= (and b!7954492 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 baseR!116))))) b!7955715))

(declare-fun b!7955716 () Bool)

(declare-fun e!4692592 () Bool)

(assert (=> b!7955716 (= e!4692592 tp_is_empty!53501)))

(declare-fun b!7955717 () Bool)

(declare-fun tp!2368496 () Bool)

(declare-fun tp!2368495 () Bool)

(assert (=> b!7955717 (= e!4692592 (and tp!2368496 tp!2368495))))

(declare-fun b!7955718 () Bool)

(declare-fun tp!2368494 () Bool)

(assert (=> b!7955718 (= e!4692592 tp!2368494)))

(declare-fun b!7955719 () Bool)

(declare-fun tp!2368497 () Bool)

(declare-fun tp!2368498 () Bool)

(assert (=> b!7955719 (= e!4692592 (and tp!2368497 tp!2368498))))

(assert (=> b!7954416 (= tp!2367771 e!4692592)))

(assert (= (and b!7954416 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regOne!43471 r!24602))))) b!7955716))

(assert (= (and b!7954416 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regOne!43471 r!24602))))) b!7955717))

(assert (= (and b!7954416 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regOne!43471 r!24602))))) b!7955718))

(assert (= (and b!7954416 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regOne!43471 r!24602))))) b!7955719))

(declare-fun b!7955720 () Bool)

(declare-fun e!4692593 () Bool)

(assert (=> b!7955720 (= e!4692593 tp_is_empty!53501)))

(declare-fun b!7955721 () Bool)

(declare-fun tp!2368501 () Bool)

(declare-fun tp!2368500 () Bool)

(assert (=> b!7955721 (= e!4692593 (and tp!2368501 tp!2368500))))

(declare-fun b!7955722 () Bool)

(declare-fun tp!2368499 () Bool)

(assert (=> b!7955722 (= e!4692593 tp!2368499)))

(declare-fun b!7955723 () Bool)

(declare-fun tp!2368502 () Bool)

(declare-fun tp!2368503 () Bool)

(assert (=> b!7955723 (= e!4692593 (and tp!2368502 tp!2368503))))

(assert (=> b!7954538 (= tp!2367898 e!4692593)))

(assert (= (and b!7954538 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955720))

(assert (= (and b!7954538 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955721))

(assert (= (and b!7954538 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955722))

(assert (= (and b!7954538 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955723))

(declare-fun b!7955724 () Bool)

(declare-fun e!4692594 () Bool)

(assert (=> b!7955724 (= e!4692594 tp_is_empty!53501)))

(declare-fun b!7955725 () Bool)

(declare-fun tp!2368506 () Bool)

(declare-fun tp!2368505 () Bool)

(assert (=> b!7955725 (= e!4692594 (and tp!2368506 tp!2368505))))

(declare-fun b!7955726 () Bool)

(declare-fun tp!2368504 () Bool)

(assert (=> b!7955726 (= e!4692594 tp!2368504)))

(declare-fun b!7955727 () Bool)

(declare-fun tp!2368507 () Bool)

(declare-fun tp!2368508 () Bool)

(assert (=> b!7955727 (= e!4692594 (and tp!2368507 tp!2368508))))

(assert (=> b!7954538 (= tp!2367897 e!4692594)))

(assert (= (and b!7954538 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955724))

(assert (= (and b!7954538 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955725))

(assert (= (and b!7954538 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955726))

(assert (= (and b!7954538 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (reg!21808 r!24602))))) b!7955727))

(declare-fun b!7955728 () Bool)

(declare-fun e!4692595 () Bool)

(assert (=> b!7955728 (= e!4692595 tp_is_empty!53501)))

(declare-fun b!7955729 () Bool)

(declare-fun tp!2368511 () Bool)

(declare-fun tp!2368510 () Bool)

(assert (=> b!7955729 (= e!4692595 (and tp!2368511 tp!2368510))))

(declare-fun b!7955730 () Bool)

(declare-fun tp!2368509 () Bool)

(assert (=> b!7955730 (= e!4692595 tp!2368509)))

(declare-fun b!7955731 () Bool)

(declare-fun tp!2368512 () Bool)

(declare-fun tp!2368513 () Bool)

(assert (=> b!7955731 (= e!4692595 (and tp!2368512 tp!2368513))))

(assert (=> b!7954459 (= tp!2367806 e!4692595)))

(assert (= (and b!7954459 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (reg!21808 baseR!116))))) b!7955728))

(assert (= (and b!7954459 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (reg!21808 baseR!116))))) b!7955729))

(assert (= (and b!7954459 ((_ is Star!21479) (reg!21808 (regTwo!43471 (reg!21808 baseR!116))))) b!7955730))

(assert (= (and b!7954459 ((_ is Union!21479) (reg!21808 (regTwo!43471 (reg!21808 baseR!116))))) b!7955731))

(declare-fun b!7955732 () Bool)

(declare-fun e!4692596 () Bool)

(assert (=> b!7955732 (= e!4692596 tp_is_empty!53501)))

(declare-fun b!7955733 () Bool)

(declare-fun tp!2368516 () Bool)

(declare-fun tp!2368515 () Bool)

(assert (=> b!7955733 (= e!4692596 (and tp!2368516 tp!2368515))))

(declare-fun b!7955734 () Bool)

(declare-fun tp!2368514 () Bool)

(assert (=> b!7955734 (= e!4692596 tp!2368514)))

(declare-fun b!7955735 () Bool)

(declare-fun tp!2368517 () Bool)

(declare-fun tp!2368518 () Bool)

(assert (=> b!7955735 (= e!4692596 (and tp!2368517 tp!2368518))))

(assert (=> b!7954596 (= tp!2367956 e!4692596)))

(assert (= (and b!7954596 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regTwo!43471 r!24602))))) b!7955732))

(assert (= (and b!7954596 ((_ is Concat!30478) (reg!21808 (reg!21808 (regTwo!43471 r!24602))))) b!7955733))

(assert (= (and b!7954596 ((_ is Star!21479) (reg!21808 (reg!21808 (regTwo!43471 r!24602))))) b!7955734))

(assert (= (and b!7954596 ((_ is Union!21479) (reg!21808 (reg!21808 (regTwo!43471 r!24602))))) b!7955735))

(declare-fun b!7955736 () Bool)

(declare-fun e!4692597 () Bool)

(assert (=> b!7955736 (= e!4692597 tp_is_empty!53501)))

(declare-fun b!7955737 () Bool)

(declare-fun tp!2368521 () Bool)

(declare-fun tp!2368520 () Bool)

(assert (=> b!7955737 (= e!4692597 (and tp!2368521 tp!2368520))))

(declare-fun b!7955738 () Bool)

(declare-fun tp!2368519 () Bool)

(assert (=> b!7955738 (= e!4692597 tp!2368519)))

(declare-fun b!7955739 () Bool)

(declare-fun tp!2368522 () Bool)

(declare-fun tp!2368523 () Bool)

(assert (=> b!7955739 (= e!4692597 (and tp!2368522 tp!2368523))))

(assert (=> b!7954605 (= tp!2367969 e!4692597)))

(assert (= (and b!7954605 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955736))

(assert (= (and b!7954605 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955737))

(assert (= (and b!7954605 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955738))

(assert (= (and b!7954605 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955739))

(declare-fun b!7955740 () Bool)

(declare-fun e!4692598 () Bool)

(assert (=> b!7955740 (= e!4692598 tp_is_empty!53501)))

(declare-fun b!7955741 () Bool)

(declare-fun tp!2368526 () Bool)

(declare-fun tp!2368525 () Bool)

(assert (=> b!7955741 (= e!4692598 (and tp!2368526 tp!2368525))))

(declare-fun b!7955742 () Bool)

(declare-fun tp!2368524 () Bool)

(assert (=> b!7955742 (= e!4692598 tp!2368524)))

(declare-fun b!7955743 () Bool)

(declare-fun tp!2368527 () Bool)

(declare-fun tp!2368528 () Bool)

(assert (=> b!7955743 (= e!4692598 (and tp!2368527 tp!2368528))))

(assert (=> b!7954605 (= tp!2367970 e!4692598)))

(assert (= (and b!7954605 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955740))

(assert (= (and b!7954605 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955741))

(assert (= (and b!7954605 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955742))

(assert (= (and b!7954605 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 r!24602))))) b!7955743))

(declare-fun b!7955744 () Bool)

(declare-fun e!4692599 () Bool)

(assert (=> b!7955744 (= e!4692599 tp_is_empty!53501)))

(declare-fun b!7955745 () Bool)

(declare-fun tp!2368531 () Bool)

(declare-fun tp!2368530 () Bool)

(assert (=> b!7955745 (= e!4692599 (and tp!2368531 tp!2368530))))

(declare-fun b!7955746 () Bool)

(declare-fun tp!2368529 () Bool)

(assert (=> b!7955746 (= e!4692599 tp!2368529)))

(declare-fun b!7955747 () Bool)

(declare-fun tp!2368532 () Bool)

(declare-fun tp!2368533 () Bool)

(assert (=> b!7955747 (= e!4692599 (and tp!2368532 tp!2368533))))

(assert (=> b!7954618 (= tp!2367985 e!4692599)))

(assert (= (and b!7954618 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955744))

(assert (= (and b!7954618 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955745))

(assert (= (and b!7954618 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955746))

(assert (= (and b!7954618 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955747))

(declare-fun b!7955748 () Bool)

(declare-fun e!4692600 () Bool)

(assert (=> b!7955748 (= e!4692600 tp_is_empty!53501)))

(declare-fun b!7955749 () Bool)

(declare-fun tp!2368536 () Bool)

(declare-fun tp!2368535 () Bool)

(assert (=> b!7955749 (= e!4692600 (and tp!2368536 tp!2368535))))

(declare-fun b!7955750 () Bool)

(declare-fun tp!2368534 () Bool)

(assert (=> b!7955750 (= e!4692600 tp!2368534)))

(declare-fun b!7955751 () Bool)

(declare-fun tp!2368537 () Bool)

(declare-fun tp!2368538 () Bool)

(assert (=> b!7955751 (= e!4692600 (and tp!2368537 tp!2368538))))

(assert (=> b!7954618 (= tp!2367986 e!4692600)))

(assert (= (and b!7954618 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955748))

(assert (= (and b!7954618 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955749))

(assert (= (and b!7954618 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955750))

(assert (= (and b!7954618 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7955751))

(declare-fun b!7955752 () Bool)

(declare-fun e!4692601 () Bool)

(assert (=> b!7955752 (= e!4692601 tp_is_empty!53501)))

(declare-fun b!7955753 () Bool)

(declare-fun tp!2368541 () Bool)

(declare-fun tp!2368540 () Bool)

(assert (=> b!7955753 (= e!4692601 (and tp!2368541 tp!2368540))))

(declare-fun b!7955754 () Bool)

(declare-fun tp!2368539 () Bool)

(assert (=> b!7955754 (= e!4692601 tp!2368539)))

(declare-fun b!7955755 () Bool)

(declare-fun tp!2368542 () Bool)

(declare-fun tp!2368543 () Bool)

(assert (=> b!7955755 (= e!4692601 (and tp!2368542 tp!2368543))))

(assert (=> b!7954446 (= tp!2367799 e!4692601)))

(assert (= (and b!7954446 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955752))

(assert (= (and b!7954446 ((_ is Concat!30478) (regOne!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955753))

(assert (= (and b!7954446 ((_ is Star!21479) (regOne!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955754))

(assert (= (and b!7954446 ((_ is Union!21479) (regOne!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955755))

(declare-fun b!7955756 () Bool)

(declare-fun e!4692602 () Bool)

(assert (=> b!7955756 (= e!4692602 tp_is_empty!53501)))

(declare-fun b!7955757 () Bool)

(declare-fun tp!2368546 () Bool)

(declare-fun tp!2368545 () Bool)

(assert (=> b!7955757 (= e!4692602 (and tp!2368546 tp!2368545))))

(declare-fun b!7955758 () Bool)

(declare-fun tp!2368544 () Bool)

(assert (=> b!7955758 (= e!4692602 tp!2368544)))

(declare-fun b!7955759 () Bool)

(declare-fun tp!2368547 () Bool)

(declare-fun tp!2368548 () Bool)

(assert (=> b!7955759 (= e!4692602 (and tp!2368547 tp!2368548))))

(assert (=> b!7954446 (= tp!2367800 e!4692602)))

(assert (= (and b!7954446 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955756))

(assert (= (and b!7954446 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955757))

(assert (= (and b!7954446 ((_ is Star!21479) (regTwo!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955758))

(assert (= (and b!7954446 ((_ is Union!21479) (regTwo!43471 (reg!21808 (reg!21808 baseR!116))))) b!7955759))

(declare-fun b!7955760 () Bool)

(declare-fun e!4692603 () Bool)

(assert (=> b!7955760 (= e!4692603 tp_is_empty!53501)))

(declare-fun b!7955761 () Bool)

(declare-fun tp!2368551 () Bool)

(declare-fun tp!2368550 () Bool)

(assert (=> b!7955761 (= e!4692603 (and tp!2368551 tp!2368550))))

(declare-fun b!7955762 () Bool)

(declare-fun tp!2368549 () Bool)

(assert (=> b!7955762 (= e!4692603 tp!2368549)))

(declare-fun b!7955763 () Bool)

(declare-fun tp!2368552 () Bool)

(declare-fun tp!2368553 () Bool)

(assert (=> b!7955763 (= e!4692603 (and tp!2368552 tp!2368553))))

(assert (=> b!7954588 (= tp!2367946 e!4692603)))

(assert (= (and b!7954588 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955760))

(assert (= (and b!7954588 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955761))

(assert (= (and b!7954588 ((_ is Star!21479) (reg!21808 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955762))

(assert (= (and b!7954588 ((_ is Union!21479) (reg!21808 (regOne!43471 (regTwo!43471 baseR!116))))) b!7955763))

(declare-fun b!7955764 () Bool)

(declare-fun e!4692604 () Bool)

(assert (=> b!7955764 (= e!4692604 tp_is_empty!53501)))

(declare-fun b!7955765 () Bool)

(declare-fun tp!2368556 () Bool)

(declare-fun tp!2368555 () Bool)

(assert (=> b!7955765 (= e!4692604 (and tp!2368556 tp!2368555))))

(declare-fun b!7955766 () Bool)

(declare-fun tp!2368554 () Bool)

(assert (=> b!7955766 (= e!4692604 tp!2368554)))

(declare-fun b!7955767 () Bool)

(declare-fun tp!2368557 () Bool)

(declare-fun tp!2368558 () Bool)

(assert (=> b!7955767 (= e!4692604 (and tp!2368557 tp!2368558))))

(assert (=> b!7954597 (= tp!2367959 e!4692604)))

(assert (= (and b!7954597 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955764))

(assert (= (and b!7954597 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955765))

(assert (= (and b!7954597 ((_ is Star!21479) (regOne!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955766))

(assert (= (and b!7954597 ((_ is Union!21479) (regOne!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955767))

(declare-fun b!7955768 () Bool)

(declare-fun e!4692605 () Bool)

(assert (=> b!7955768 (= e!4692605 tp_is_empty!53501)))

(declare-fun b!7955769 () Bool)

(declare-fun tp!2368561 () Bool)

(declare-fun tp!2368560 () Bool)

(assert (=> b!7955769 (= e!4692605 (and tp!2368561 tp!2368560))))

(declare-fun b!7955770 () Bool)

(declare-fun tp!2368559 () Bool)

(assert (=> b!7955770 (= e!4692605 tp!2368559)))

(declare-fun b!7955771 () Bool)

(declare-fun tp!2368562 () Bool)

(declare-fun tp!2368563 () Bool)

(assert (=> b!7955771 (= e!4692605 (and tp!2368562 tp!2368563))))

(assert (=> b!7954597 (= tp!2367960 e!4692605)))

(assert (= (and b!7954597 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955768))

(assert (= (and b!7954597 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955769))

(assert (= (and b!7954597 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955770))

(assert (= (and b!7954597 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regTwo!43471 r!24602))))) b!7955771))

(declare-fun b!7955772 () Bool)

(declare-fun e!4692606 () Bool)

(declare-fun tp!2368564 () Bool)

(assert (=> b!7955772 (= e!4692606 (and tp_is_empty!53501 tp!2368564))))

(assert (=> b!7954610 (= tp!2367976 e!4692606)))

(assert (= (and b!7954610 ((_ is Cons!74584) (t!390451 (t!390451 (t!390451 testedP!447))))) b!7955772))

(declare-fun b!7955773 () Bool)

(declare-fun e!4692607 () Bool)

(assert (=> b!7955773 (= e!4692607 tp_is_empty!53501)))

(declare-fun b!7955774 () Bool)

(declare-fun tp!2368567 () Bool)

(declare-fun tp!2368566 () Bool)

(assert (=> b!7955774 (= e!4692607 (and tp!2368567 tp!2368566))))

(declare-fun b!7955775 () Bool)

(declare-fun tp!2368565 () Bool)

(assert (=> b!7955775 (= e!4692607 tp!2368565)))

(declare-fun b!7955776 () Bool)

(declare-fun tp!2368568 () Bool)

(declare-fun tp!2368569 () Bool)

(assert (=> b!7955776 (= e!4692607 (and tp!2368568 tp!2368569))))

(assert (=> b!7954479 (= tp!2367826 e!4692607)))

(assert (= (and b!7954479 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (reg!21808 baseR!116))))) b!7955773))

(assert (= (and b!7954479 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (reg!21808 baseR!116))))) b!7955774))

(assert (= (and b!7954479 ((_ is Star!21479) (reg!21808 (regTwo!43470 (reg!21808 baseR!116))))) b!7955775))

(assert (= (and b!7954479 ((_ is Union!21479) (reg!21808 (regTwo!43470 (reg!21808 baseR!116))))) b!7955776))

(declare-fun b!7955777 () Bool)

(declare-fun e!4692608 () Bool)

(assert (=> b!7955777 (= e!4692608 tp_is_empty!53501)))

(declare-fun b!7955778 () Bool)

(declare-fun tp!2368572 () Bool)

(declare-fun tp!2368571 () Bool)

(assert (=> b!7955778 (= e!4692608 (and tp!2368572 tp!2368571))))

(declare-fun b!7955779 () Bool)

(declare-fun tp!2368570 () Bool)

(assert (=> b!7955779 (= e!4692608 tp!2368570)))

(declare-fun b!7955780 () Bool)

(declare-fun tp!2368573 () Bool)

(declare-fun tp!2368574 () Bool)

(assert (=> b!7955780 (= e!4692608 (and tp!2368573 tp!2368574))))

(assert (=> b!7954579 (= tp!2367938 e!4692608)))

(assert (= (and b!7954579 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955777))

(assert (= (and b!7954579 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955778))

(assert (= (and b!7954579 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955779))

(assert (= (and b!7954579 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955780))

(declare-fun b!7955781 () Bool)

(declare-fun e!4692609 () Bool)

(assert (=> b!7955781 (= e!4692609 tp_is_empty!53501)))

(declare-fun b!7955782 () Bool)

(declare-fun tp!2368577 () Bool)

(declare-fun tp!2368576 () Bool)

(assert (=> b!7955782 (= e!4692609 (and tp!2368577 tp!2368576))))

(declare-fun b!7955784 () Bool)

(declare-fun tp!2368575 () Bool)

(assert (=> b!7955784 (= e!4692609 tp!2368575)))

(declare-fun b!7955786 () Bool)

(declare-fun tp!2368578 () Bool)

(declare-fun tp!2368579 () Bool)

(assert (=> b!7955786 (= e!4692609 (and tp!2368578 tp!2368579))))

(assert (=> b!7954579 (= tp!2367937 e!4692609)))

(assert (= (and b!7954579 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955781))

(assert (= (and b!7954579 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955782))

(assert (= (and b!7954579 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955784))

(assert (= (and b!7954579 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7955786))

(declare-fun b!7955787 () Bool)

(declare-fun e!4692611 () Bool)

(assert (=> b!7955787 (= e!4692611 tp_is_empty!53501)))

(declare-fun b!7955788 () Bool)

(declare-fun tp!2368582 () Bool)

(declare-fun tp!2368581 () Bool)

(assert (=> b!7955788 (= e!4692611 (and tp!2368582 tp!2368581))))

(declare-fun b!7955789 () Bool)

(declare-fun tp!2368580 () Bool)

(assert (=> b!7955789 (= e!4692611 tp!2368580)))

(declare-fun b!7955790 () Bool)

(declare-fun tp!2368583 () Bool)

(declare-fun tp!2368584 () Bool)

(assert (=> b!7955790 (= e!4692611 (and tp!2368583 tp!2368584))))

(assert (=> b!7954386 (= tp!2367748 e!4692611)))

(assert (= (and b!7954386 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955787))

(assert (= (and b!7954386 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955788))

(assert (= (and b!7954386 ((_ is Star!21479) (regOne!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955789))

(assert (= (and b!7954386 ((_ is Union!21479) (regOne!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955790))

(declare-fun b!7955791 () Bool)

(declare-fun e!4692612 () Bool)

(assert (=> b!7955791 (= e!4692612 tp_is_empty!53501)))

(declare-fun b!7955792 () Bool)

(declare-fun tp!2368587 () Bool)

(declare-fun tp!2368586 () Bool)

(assert (=> b!7955792 (= e!4692612 (and tp!2368587 tp!2368586))))

(declare-fun b!7955793 () Bool)

(declare-fun tp!2368585 () Bool)

(assert (=> b!7955793 (= e!4692612 tp!2368585)))

(declare-fun b!7955794 () Bool)

(declare-fun tp!2368588 () Bool)

(declare-fun tp!2368589 () Bool)

(assert (=> b!7955794 (= e!4692612 (and tp!2368588 tp!2368589))))

(assert (=> b!7954386 (= tp!2367747 e!4692612)))

(assert (= (and b!7954386 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955791))

(assert (= (and b!7954386 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955792))

(assert (= (and b!7954386 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955793))

(assert (= (and b!7954386 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regOne!43470 r!24602))))) b!7955794))

(declare-fun b!7955797 () Bool)

(declare-fun e!4692614 () Bool)

(assert (=> b!7955797 (= e!4692614 tp_is_empty!53501)))

(declare-fun b!7955798 () Bool)

(declare-fun tp!2368592 () Bool)

(declare-fun tp!2368591 () Bool)

(assert (=> b!7955798 (= e!4692614 (and tp!2368592 tp!2368591))))

(declare-fun b!7955799 () Bool)

(declare-fun tp!2368590 () Bool)

(assert (=> b!7955799 (= e!4692614 tp!2368590)))

(declare-fun b!7955800 () Bool)

(declare-fun tp!2368593 () Bool)

(declare-fun tp!2368594 () Bool)

(assert (=> b!7955800 (= e!4692614 (and tp!2368593 tp!2368594))))

(assert (=> b!7954504 (= tp!2367859 e!4692614)))

(assert (= (and b!7954504 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955797))

(assert (= (and b!7954504 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955798))

(assert (= (and b!7954504 ((_ is Star!21479) (regOne!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955799))

(assert (= (and b!7954504 ((_ is Union!21479) (regOne!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955800))

(declare-fun b!7955801 () Bool)

(declare-fun e!4692615 () Bool)

(assert (=> b!7955801 (= e!4692615 tp_is_empty!53501)))

(declare-fun b!7955802 () Bool)

(declare-fun tp!2368597 () Bool)

(declare-fun tp!2368596 () Bool)

(assert (=> b!7955802 (= e!4692615 (and tp!2368597 tp!2368596))))

(declare-fun b!7955803 () Bool)

(declare-fun tp!2368595 () Bool)

(assert (=> b!7955803 (= e!4692615 tp!2368595)))

(declare-fun b!7955804 () Bool)

(declare-fun tp!2368598 () Bool)

(declare-fun tp!2368599 () Bool)

(assert (=> b!7955804 (= e!4692615 (and tp!2368598 tp!2368599))))

(assert (=> b!7954504 (= tp!2367860 e!4692615)))

(assert (= (and b!7954504 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955801))

(assert (= (and b!7954504 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955802))

(assert (= (and b!7954504 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955803))

(assert (= (and b!7954504 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regOne!43470 baseR!116))))) b!7955804))

(declare-fun b!7955805 () Bool)

(declare-fun e!4692616 () Bool)

(assert (=> b!7955805 (= e!4692616 tp_is_empty!53501)))

(declare-fun b!7955806 () Bool)

(declare-fun tp!2368602 () Bool)

(declare-fun tp!2368601 () Bool)

(assert (=> b!7955806 (= e!4692616 (and tp!2368602 tp!2368601))))

(declare-fun b!7955807 () Bool)

(declare-fun tp!2368600 () Bool)

(assert (=> b!7955807 (= e!4692616 tp!2368600)))

(declare-fun b!7955808 () Bool)

(declare-fun tp!2368603 () Bool)

(declare-fun tp!2368604 () Bool)

(assert (=> b!7955808 (= e!4692616 (and tp!2368603 tp!2368604))))

(assert (=> b!7954440 (= tp!2367793 e!4692616)))

(assert (= (and b!7954440 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955805))

(assert (= (and b!7954440 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955806))

(assert (= (and b!7954440 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955807))

(assert (= (and b!7954440 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955808))

(declare-fun b!7955813 () Bool)

(declare-fun e!4692620 () Bool)

(assert (=> b!7955813 (= e!4692620 tp_is_empty!53501)))

(declare-fun b!7955814 () Bool)

(declare-fun tp!2368607 () Bool)

(declare-fun tp!2368606 () Bool)

(assert (=> b!7955814 (= e!4692620 (and tp!2368607 tp!2368606))))

(declare-fun b!7955815 () Bool)

(declare-fun tp!2368605 () Bool)

(assert (=> b!7955815 (= e!4692620 tp!2368605)))

(declare-fun b!7955816 () Bool)

(declare-fun tp!2368608 () Bool)

(declare-fun tp!2368609 () Bool)

(assert (=> b!7955816 (= e!4692620 (and tp!2368608 tp!2368609))))

(assert (=> b!7954440 (= tp!2367792 e!4692620)))

(assert (= (and b!7954440 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955813))

(assert (= (and b!7954440 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955814))

(assert (= (and b!7954440 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955815))

(assert (= (and b!7954440 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 r!24602))))) b!7955816))

(declare-fun b!7955817 () Bool)

(declare-fun e!4692621 () Bool)

(assert (=> b!7955817 (= e!4692621 tp_is_empty!53501)))

(declare-fun b!7955818 () Bool)

(declare-fun tp!2368612 () Bool)

(declare-fun tp!2368611 () Bool)

(assert (=> b!7955818 (= e!4692621 (and tp!2368612 tp!2368611))))

(declare-fun b!7955819 () Bool)

(declare-fun tp!2368610 () Bool)

(assert (=> b!7955819 (= e!4692621 tp!2368610)))

(declare-fun b!7955820 () Bool)

(declare-fun tp!2368613 () Bool)

(declare-fun tp!2368614 () Bool)

(assert (=> b!7955820 (= e!4692621 (and tp!2368613 tp!2368614))))

(assert (=> b!7954567 (= tp!2367923 e!4692621)))

(assert (= (and b!7954567 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955817))

(assert (= (and b!7954567 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955818))

(assert (= (and b!7954567 ((_ is Star!21479) (regOne!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955819))

(assert (= (and b!7954567 ((_ is Union!21479) (regOne!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955820))

(declare-fun b!7955821 () Bool)

(declare-fun e!4692622 () Bool)

(assert (=> b!7955821 (= e!4692622 tp_is_empty!53501)))

(declare-fun b!7955822 () Bool)

(declare-fun tp!2368617 () Bool)

(declare-fun tp!2368616 () Bool)

(assert (=> b!7955822 (= e!4692622 (and tp!2368617 tp!2368616))))

(declare-fun b!7955823 () Bool)

(declare-fun tp!2368615 () Bool)

(assert (=> b!7955823 (= e!4692622 tp!2368615)))

(declare-fun b!7955824 () Bool)

(declare-fun tp!2368618 () Bool)

(declare-fun tp!2368619 () Bool)

(assert (=> b!7955824 (= e!4692622 (and tp!2368618 tp!2368619))))

(assert (=> b!7954567 (= tp!2367922 e!4692622)))

(assert (= (and b!7954567 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955821))

(assert (= (and b!7954567 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955822))

(assert (= (and b!7954567 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955823))

(assert (= (and b!7954567 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (reg!21808 r!24602))))) b!7955824))

(declare-fun b!7955825 () Bool)

(declare-fun e!4692623 () Bool)

(assert (=> b!7955825 (= e!4692623 tp_is_empty!53501)))

(declare-fun b!7955826 () Bool)

(declare-fun tp!2368622 () Bool)

(declare-fun tp!2368621 () Bool)

(assert (=> b!7955826 (= e!4692623 (and tp!2368622 tp!2368621))))

(declare-fun b!7955827 () Bool)

(declare-fun tp!2368620 () Bool)

(assert (=> b!7955827 (= e!4692623 tp!2368620)))

(declare-fun b!7955828 () Bool)

(declare-fun tp!2368623 () Bool)

(declare-fun tp!2368624 () Bool)

(assert (=> b!7955828 (= e!4692623 (and tp!2368623 tp!2368624))))

(assert (=> b!7954486 (= tp!2367838 e!4692623)))

(assert (= (and b!7954486 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955825))

(assert (= (and b!7954486 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955826))

(assert (= (and b!7954486 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955827))

(assert (= (and b!7954486 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955828))

(declare-fun b!7955829 () Bool)

(declare-fun e!4692624 () Bool)

(assert (=> b!7955829 (= e!4692624 tp_is_empty!53501)))

(declare-fun b!7955830 () Bool)

(declare-fun tp!2368627 () Bool)

(declare-fun tp!2368626 () Bool)

(assert (=> b!7955830 (= e!4692624 (and tp!2368627 tp!2368626))))

(declare-fun b!7955831 () Bool)

(declare-fun tp!2368625 () Bool)

(assert (=> b!7955831 (= e!4692624 tp!2368625)))

(declare-fun b!7955832 () Bool)

(declare-fun tp!2368628 () Bool)

(declare-fun tp!2368629 () Bool)

(assert (=> b!7955832 (= e!4692624 (and tp!2368628 tp!2368629))))

(assert (=> b!7954486 (= tp!2367837 e!4692624)))

(assert (= (and b!7954486 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955829))

(assert (= (and b!7954486 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955830))

(assert (= (and b!7954486 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955831))

(assert (= (and b!7954486 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regOne!43471 baseR!116))))) b!7955832))

(declare-fun b!7955833 () Bool)

(declare-fun e!4692629 () Bool)

(assert (=> b!7955833 (= e!4692629 tp_is_empty!53501)))

(declare-fun b!7955834 () Bool)

(declare-fun tp!2368632 () Bool)

(declare-fun tp!2368631 () Bool)

(assert (=> b!7955834 (= e!4692629 (and tp!2368632 tp!2368631))))

(declare-fun b!7955835 () Bool)

(declare-fun tp!2368630 () Bool)

(assert (=> b!7955835 (= e!4692629 tp!2368630)))

(declare-fun b!7955836 () Bool)

(declare-fun tp!2368633 () Bool)

(declare-fun tp!2368634 () Bool)

(assert (=> b!7955836 (= e!4692629 (and tp!2368633 tp!2368634))))

(assert (=> b!7954405 (= tp!2367759 e!4692629)))

(assert (= (and b!7954405 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955833))

(assert (= (and b!7954405 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955834))

(assert (= (and b!7954405 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955835))

(assert (= (and b!7954405 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955836))

(declare-fun b!7955846 () Bool)

(declare-fun e!4692633 () Bool)

(assert (=> b!7955846 (= e!4692633 tp_is_empty!53501)))

(declare-fun b!7955847 () Bool)

(declare-fun tp!2368637 () Bool)

(declare-fun tp!2368636 () Bool)

(assert (=> b!7955847 (= e!4692633 (and tp!2368637 tp!2368636))))

(declare-fun b!7955848 () Bool)

(declare-fun tp!2368635 () Bool)

(assert (=> b!7955848 (= e!4692633 tp!2368635)))

(declare-fun b!7955849 () Bool)

(declare-fun tp!2368638 () Bool)

(declare-fun tp!2368639 () Bool)

(assert (=> b!7955849 (= e!4692633 (and tp!2368638 tp!2368639))))

(assert (=> b!7954405 (= tp!2367760 e!4692633)))

(assert (= (and b!7954405 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955846))

(assert (= (and b!7954405 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955847))

(assert (= (and b!7954405 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955848))

(assert (= (and b!7954405 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regOne!43470 r!24602))))) b!7955849))

(declare-fun b!7955850 () Bool)

(declare-fun e!4692634 () Bool)

(assert (=> b!7955850 (= e!4692634 tp_is_empty!53501)))

(declare-fun b!7955851 () Bool)

(declare-fun tp!2368642 () Bool)

(declare-fun tp!2368641 () Bool)

(assert (=> b!7955851 (= e!4692634 (and tp!2368642 tp!2368641))))

(declare-fun b!7955852 () Bool)

(declare-fun tp!2368640 () Bool)

(assert (=> b!7955852 (= e!4692634 tp!2368640)))

(declare-fun b!7955853 () Bool)

(declare-fun tp!2368643 () Bool)

(declare-fun tp!2368644 () Bool)

(assert (=> b!7955853 (= e!4692634 (and tp!2368643 tp!2368644))))

(assert (=> b!7954495 (= tp!2367846 e!4692634)))

(assert (= (and b!7954495 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regOne!43470 baseR!116))))) b!7955850))

(assert (= (and b!7954495 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regOne!43470 baseR!116))))) b!7955851))

(assert (= (and b!7954495 ((_ is Star!21479) (reg!21808 (regOne!43471 (regOne!43470 baseR!116))))) b!7955852))

(assert (= (and b!7954495 ((_ is Union!21479) (reg!21808 (regOne!43471 (regOne!43470 baseR!116))))) b!7955853))

(declare-fun b!7955854 () Bool)

(declare-fun e!4692635 () Bool)

(assert (=> b!7955854 (= e!4692635 tp_is_empty!53501)))

(declare-fun b!7955855 () Bool)

(declare-fun tp!2368647 () Bool)

(declare-fun tp!2368646 () Bool)

(assert (=> b!7955855 (= e!4692635 (and tp!2368647 tp!2368646))))

(declare-fun b!7955856 () Bool)

(declare-fun tp!2368645 () Bool)

(assert (=> b!7955856 (= e!4692635 tp!2368645)))

(declare-fun b!7955857 () Bool)

(declare-fun tp!2368648 () Bool)

(declare-fun tp!2368649 () Bool)

(assert (=> b!7955857 (= e!4692635 (and tp!2368648 tp!2368649))))

(assert (=> b!7954462 (= tp!2367813 e!4692635)))

(assert (= (and b!7954462 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955854))

(assert (= (and b!7954462 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955855))

(assert (= (and b!7954462 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955856))

(assert (= (and b!7954462 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955857))

(declare-fun b!7955858 () Bool)

(declare-fun e!4692636 () Bool)

(assert (=> b!7955858 (= e!4692636 tp_is_empty!53501)))

(declare-fun b!7955859 () Bool)

(declare-fun tp!2368652 () Bool)

(declare-fun tp!2368651 () Bool)

(assert (=> b!7955859 (= e!4692636 (and tp!2368652 tp!2368651))))

(declare-fun b!7955860 () Bool)

(declare-fun tp!2368650 () Bool)

(assert (=> b!7955860 (= e!4692636 tp!2368650)))

(declare-fun b!7955861 () Bool)

(declare-fun tp!2368653 () Bool)

(declare-fun tp!2368654 () Bool)

(assert (=> b!7955861 (= e!4692636 (and tp!2368653 tp!2368654))))

(assert (=> b!7954462 (= tp!2367812 e!4692636)))

(assert (= (and b!7954462 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955858))

(assert (= (and b!7954462 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955859))

(assert (= (and b!7954462 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955860))

(assert (= (and b!7954462 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regOne!43470 baseR!116))))) b!7955861))

(declare-fun b!7955862 () Bool)

(declare-fun e!4692637 () Bool)

(assert (=> b!7955862 (= e!4692637 tp_is_empty!53501)))

(declare-fun b!7955863 () Bool)

(declare-fun tp!2368657 () Bool)

(declare-fun tp!2368656 () Bool)

(assert (=> b!7955863 (= e!4692637 (and tp!2368657 tp!2368656))))

(declare-fun b!7955864 () Bool)

(declare-fun tp!2368655 () Bool)

(assert (=> b!7955864 (= e!4692637 tp!2368655)))

(declare-fun b!7955865 () Bool)

(declare-fun tp!2368658 () Bool)

(declare-fun tp!2368659 () Bool)

(assert (=> b!7955865 (= e!4692637 (and tp!2368658 tp!2368659))))

(assert (=> b!7954548 (= tp!2367909 e!4692637)))

(assert (= (and b!7954548 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955862))

(assert (= (and b!7954548 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955863))

(assert (= (and b!7954548 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955864))

(assert (= (and b!7954548 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955865))

(declare-fun b!7955866 () Bool)

(declare-fun e!4692638 () Bool)

(assert (=> b!7955866 (= e!4692638 tp_is_empty!53501)))

(declare-fun b!7955867 () Bool)

(declare-fun tp!2368662 () Bool)

(declare-fun tp!2368661 () Bool)

(assert (=> b!7955867 (= e!4692638 (and tp!2368662 tp!2368661))))

(declare-fun b!7955868 () Bool)

(declare-fun tp!2368660 () Bool)

(assert (=> b!7955868 (= e!4692638 tp!2368660)))

(declare-fun b!7955869 () Bool)

(declare-fun tp!2368663 () Bool)

(declare-fun tp!2368664 () Bool)

(assert (=> b!7955869 (= e!4692638 (and tp!2368663 tp!2368664))))

(assert (=> b!7954548 (= tp!2367910 e!4692638)))

(assert (= (and b!7954548 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955866))

(assert (= (and b!7954548 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955867))

(assert (= (and b!7954548 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955868))

(assert (= (and b!7954548 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 baseR!116))))) b!7955869))

(declare-fun b!7955870 () Bool)

(declare-fun e!4692639 () Bool)

(assert (=> b!7955870 (= e!4692639 tp_is_empty!53501)))

(declare-fun b!7955871 () Bool)

(declare-fun tp!2368667 () Bool)

(declare-fun tp!2368666 () Bool)

(assert (=> b!7955871 (= e!4692639 (and tp!2368667 tp!2368666))))

(declare-fun b!7955872 () Bool)

(declare-fun tp!2368665 () Bool)

(assert (=> b!7955872 (= e!4692639 tp!2368665)))

(declare-fun b!7955873 () Bool)

(declare-fun tp!2368668 () Bool)

(declare-fun tp!2368669 () Bool)

(assert (=> b!7955873 (= e!4692639 (and tp!2368668 tp!2368669))))

(assert (=> b!7954599 (= tp!2367963 e!4692639)))

(assert (= (and b!7954599 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955870))

(assert (= (and b!7954599 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955871))

(assert (= (and b!7954599 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955872))

(assert (= (and b!7954599 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955873))

(declare-fun b!7955874 () Bool)

(declare-fun e!4692640 () Bool)

(assert (=> b!7955874 (= e!4692640 tp_is_empty!53501)))

(declare-fun b!7955875 () Bool)

(declare-fun tp!2368672 () Bool)

(declare-fun tp!2368671 () Bool)

(assert (=> b!7955875 (= e!4692640 (and tp!2368672 tp!2368671))))

(declare-fun b!7955876 () Bool)

(declare-fun tp!2368670 () Bool)

(assert (=> b!7955876 (= e!4692640 tp!2368670)))

(declare-fun b!7955877 () Bool)

(declare-fun tp!2368673 () Bool)

(declare-fun tp!2368674 () Bool)

(assert (=> b!7955877 (= e!4692640 (and tp!2368673 tp!2368674))))

(assert (=> b!7954599 (= tp!2367962 e!4692640)))

(assert (= (and b!7954599 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955874))

(assert (= (and b!7954599 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955875))

(assert (= (and b!7954599 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955876))

(assert (= (and b!7954599 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regTwo!43471 r!24602))))) b!7955877))

(declare-fun b!7955878 () Bool)

(declare-fun e!4692641 () Bool)

(assert (=> b!7955878 (= e!4692641 tp_is_empty!53501)))

(declare-fun b!7955879 () Bool)

(declare-fun tp!2368677 () Bool)

(declare-fun tp!2368676 () Bool)

(assert (=> b!7955879 (= e!4692641 (and tp!2368677 tp!2368676))))

(declare-fun b!7955880 () Bool)

(declare-fun tp!2368675 () Bool)

(assert (=> b!7955880 (= e!4692641 tp!2368675)))

(declare-fun b!7955881 () Bool)

(declare-fun tp!2368678 () Bool)

(declare-fun tp!2368679 () Bool)

(assert (=> b!7955881 (= e!4692641 (and tp!2368678 tp!2368679))))

(assert (=> b!7954520 (= tp!2367879 e!4692641)))

(assert (= (and b!7954520 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955878))

(assert (= (and b!7954520 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955879))

(assert (= (and b!7954520 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955880))

(assert (= (and b!7954520 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955881))

(declare-fun b!7955886 () Bool)

(declare-fun e!4692644 () Bool)

(assert (=> b!7955886 (= e!4692644 tp_is_empty!53501)))

(declare-fun b!7955887 () Bool)

(declare-fun tp!2368682 () Bool)

(declare-fun tp!2368681 () Bool)

(assert (=> b!7955887 (= e!4692644 (and tp!2368682 tp!2368681))))

(declare-fun b!7955888 () Bool)

(declare-fun tp!2368680 () Bool)

(assert (=> b!7955888 (= e!4692644 tp!2368680)))

(declare-fun b!7955889 () Bool)

(declare-fun tp!2368683 () Bool)

(declare-fun tp!2368684 () Bool)

(assert (=> b!7955889 (= e!4692644 (and tp!2368683 tp!2368684))))

(assert (=> b!7954520 (= tp!2367880 e!4692644)))

(assert (= (and b!7954520 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955886))

(assert (= (and b!7954520 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955887))

(assert (= (and b!7954520 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955888))

(assert (= (and b!7954520 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regTwo!43471 r!24602))))) b!7955889))

(declare-fun b!7955890 () Bool)

(declare-fun e!4692645 () Bool)

(assert (=> b!7955890 (= e!4692645 tp_is_empty!53501)))

(declare-fun b!7955891 () Bool)

(declare-fun tp!2368687 () Bool)

(declare-fun tp!2368686 () Bool)

(assert (=> b!7955891 (= e!4692645 (and tp!2368687 tp!2368686))))

(declare-fun b!7955892 () Bool)

(declare-fun tp!2368685 () Bool)

(assert (=> b!7955892 (= e!4692645 tp!2368685)))

(declare-fun b!7955893 () Bool)

(declare-fun tp!2368688 () Bool)

(declare-fun tp!2368689 () Bool)

(assert (=> b!7955893 (= e!4692645 (and tp!2368688 tp!2368689))))

(assert (=> b!7954528 (= tp!2367889 e!4692645)))

(assert (= (and b!7954528 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955890))

(assert (= (and b!7954528 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955891))

(assert (= (and b!7954528 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955892))

(assert (= (and b!7954528 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955893))

(declare-fun b!7955894 () Bool)

(declare-fun e!4692646 () Bool)

(assert (=> b!7955894 (= e!4692646 tp_is_empty!53501)))

(declare-fun b!7955895 () Bool)

(declare-fun tp!2368692 () Bool)

(declare-fun tp!2368691 () Bool)

(assert (=> b!7955895 (= e!4692646 (and tp!2368692 tp!2368691))))

(declare-fun b!7955896 () Bool)

(declare-fun tp!2368690 () Bool)

(assert (=> b!7955896 (= e!4692646 tp!2368690)))

(declare-fun b!7955897 () Bool)

(declare-fun tp!2368693 () Bool)

(declare-fun tp!2368694 () Bool)

(assert (=> b!7955897 (= e!4692646 (and tp!2368693 tp!2368694))))

(assert (=> b!7954528 (= tp!2367890 e!4692646)))

(assert (= (and b!7954528 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955894))

(assert (= (and b!7954528 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955895))

(assert (= (and b!7954528 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955896))

(assert (= (and b!7954528 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regTwo!43470 r!24602))))) b!7955897))

(declare-fun b!7955898 () Bool)

(declare-fun e!4692647 () Bool)

(assert (=> b!7955898 (= e!4692647 tp_is_empty!53501)))

(declare-fun b!7955899 () Bool)

(declare-fun tp!2368697 () Bool)

(declare-fun tp!2368696 () Bool)

(assert (=> b!7955899 (= e!4692647 (and tp!2368697 tp!2368696))))

(declare-fun b!7955900 () Bool)

(declare-fun tp!2368695 () Bool)

(assert (=> b!7955900 (= e!4692647 tp!2368695)))

(declare-fun b!7955901 () Bool)

(declare-fun tp!2368698 () Bool)

(declare-fun tp!2368699 () Bool)

(assert (=> b!7955901 (= e!4692647 (and tp!2368698 tp!2368699))))

(assert (=> b!7954612 (= tp!2367979 e!4692647)))

(assert (= (and b!7954612 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955898))

(assert (= (and b!7954612 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955899))

(assert (= (and b!7954612 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955900))

(assert (= (and b!7954612 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955901))

(declare-fun b!7955904 () Bool)

(declare-fun e!4692649 () Bool)

(assert (=> b!7955904 (= e!4692649 tp_is_empty!53501)))

(declare-fun b!7955905 () Bool)

(declare-fun tp!2368702 () Bool)

(declare-fun tp!2368701 () Bool)

(assert (=> b!7955905 (= e!4692649 (and tp!2368702 tp!2368701))))

(declare-fun b!7955906 () Bool)

(declare-fun tp!2368700 () Bool)

(assert (=> b!7955906 (= e!4692649 tp!2368700)))

(declare-fun b!7955907 () Bool)

(declare-fun tp!2368703 () Bool)

(declare-fun tp!2368704 () Bool)

(assert (=> b!7955907 (= e!4692649 (and tp!2368703 tp!2368704))))

(assert (=> b!7954612 (= tp!2367978 e!4692649)))

(assert (= (and b!7954612 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955904))

(assert (= (and b!7954612 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955905))

(assert (= (and b!7954612 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955906))

(assert (= (and b!7954612 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regTwo!43470 baseR!116))))) b!7955907))

(declare-fun b!7955910 () Bool)

(declare-fun e!4692651 () Bool)

(assert (=> b!7955910 (= e!4692651 tp_is_empty!53501)))

(declare-fun b!7955911 () Bool)

(declare-fun tp!2368707 () Bool)

(declare-fun tp!2368706 () Bool)

(assert (=> b!7955911 (= e!4692651 (and tp!2368707 tp!2368706))))

(declare-fun b!7955912 () Bool)

(declare-fun tp!2368705 () Bool)

(assert (=> b!7955912 (= e!4692651 tp!2368705)))

(declare-fun b!7955913 () Bool)

(declare-fun tp!2368708 () Bool)

(declare-fun tp!2368709 () Bool)

(assert (=> b!7955913 (= e!4692651 (and tp!2368708 tp!2368709))))

(assert (=> b!7954476 (= tp!2367824 e!4692651)))

(assert (= (and b!7954476 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955910))

(assert (= (and b!7954476 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955911))

(assert (= (and b!7954476 ((_ is Star!21479) (regOne!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955912))

(assert (= (and b!7954476 ((_ is Union!21479) (regOne!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955913))

(declare-fun b!7955916 () Bool)

(declare-fun e!4692653 () Bool)

(assert (=> b!7955916 (= e!4692653 tp_is_empty!53501)))

(declare-fun b!7955917 () Bool)

(declare-fun tp!2368712 () Bool)

(declare-fun tp!2368711 () Bool)

(assert (=> b!7955917 (= e!4692653 (and tp!2368712 tp!2368711))))

(declare-fun b!7955918 () Bool)

(declare-fun tp!2368710 () Bool)

(assert (=> b!7955918 (= e!4692653 tp!2368710)))

(declare-fun b!7955919 () Bool)

(declare-fun tp!2368713 () Bool)

(declare-fun tp!2368714 () Bool)

(assert (=> b!7955919 (= e!4692653 (and tp!2368713 tp!2368714))))

(assert (=> b!7954476 (= tp!2367825 e!4692653)))

(assert (= (and b!7954476 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955916))

(assert (= (and b!7954476 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955917))

(assert (= (and b!7954476 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955918))

(assert (= (and b!7954476 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (reg!21808 baseR!116))))) b!7955919))

(declare-fun b!7955920 () Bool)

(declare-fun e!4692654 () Bool)

(assert (=> b!7955920 (= e!4692654 tp_is_empty!53501)))

(declare-fun b!7955921 () Bool)

(declare-fun tp!2368717 () Bool)

(declare-fun tp!2368716 () Bool)

(assert (=> b!7955921 (= e!4692654 (and tp!2368717 tp!2368716))))

(declare-fun b!7955922 () Bool)

(declare-fun tp!2368715 () Bool)

(assert (=> b!7955922 (= e!4692654 tp!2368715)))

(declare-fun b!7955923 () Bool)

(declare-fun tp!2368718 () Bool)

(declare-fun tp!2368719 () Bool)

(assert (=> b!7955923 (= e!4692654 (and tp!2368718 tp!2368719))))

(assert (=> b!7954569 (= tp!2367924 e!4692654)))

(assert (= (and b!7954569 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955920))

(assert (= (and b!7954569 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955921))

(assert (= (and b!7954569 ((_ is Star!21479) (regOne!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955922))

(assert (= (and b!7954569 ((_ is Union!21479) (regOne!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955923))

(declare-fun b!7955924 () Bool)

(declare-fun e!4692655 () Bool)

(assert (=> b!7955924 (= e!4692655 tp_is_empty!53501)))

(declare-fun b!7955925 () Bool)

(declare-fun tp!2368722 () Bool)

(declare-fun tp!2368721 () Bool)

(assert (=> b!7955925 (= e!4692655 (and tp!2368722 tp!2368721))))

(declare-fun b!7955926 () Bool)

(declare-fun tp!2368720 () Bool)

(assert (=> b!7955926 (= e!4692655 tp!2368720)))

(declare-fun b!7955927 () Bool)

(declare-fun tp!2368723 () Bool)

(declare-fun tp!2368724 () Bool)

(assert (=> b!7955927 (= e!4692655 (and tp!2368723 tp!2368724))))

(assert (=> b!7954569 (= tp!2367925 e!4692655)))

(assert (= (and b!7954569 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955924))

(assert (= (and b!7954569 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955925))

(assert (= (and b!7954569 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955926))

(assert (= (and b!7954569 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (reg!21808 r!24602))))) b!7955927))

(declare-fun b!7955928 () Bool)

(declare-fun e!4692656 () Bool)

(assert (=> b!7955928 (= e!4692656 tp_is_empty!53501)))

(declare-fun b!7955929 () Bool)

(declare-fun tp!2368727 () Bool)

(declare-fun tp!2368726 () Bool)

(assert (=> b!7955929 (= e!4692656 (and tp!2368727 tp!2368726))))

(declare-fun b!7955930 () Bool)

(declare-fun tp!2368725 () Bool)

(assert (=> b!7955930 (= e!4692656 tp!2368725)))

(declare-fun b!7955931 () Bool)

(declare-fun tp!2368728 () Bool)

(declare-fun tp!2368729 () Bool)

(assert (=> b!7955931 (= e!4692656 (and tp!2368728 tp!2368729))))

(assert (=> b!7954467 (= tp!2367816 e!4692656)))

(assert (= (and b!7954467 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955928))

(assert (= (and b!7954467 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955929))

(assert (= (and b!7954467 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955930))

(assert (= (and b!7954467 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regOne!43470 baseR!116))))) b!7955931))

(declare-fun b!7955932 () Bool)

(declare-fun e!4692657 () Bool)

(assert (=> b!7955932 (= e!4692657 tp_is_empty!53501)))

(declare-fun b!7955933 () Bool)

(declare-fun tp!2368732 () Bool)

(declare-fun tp!2368731 () Bool)

(assert (=> b!7955933 (= e!4692657 (and tp!2368732 tp!2368731))))

(declare-fun b!7955934 () Bool)

(declare-fun tp!2368730 () Bool)

(assert (=> b!7955934 (= e!4692657 tp!2368730)))

(declare-fun b!7955935 () Bool)

(declare-fun tp!2368733 () Bool)

(declare-fun tp!2368734 () Bool)

(assert (=> b!7955935 (= e!4692657 (and tp!2368733 tp!2368734))))

(assert (=> b!7954375 (= tp!2367736 e!4692657)))

(assert (= (and b!7954375 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regOne!43471 baseR!116))))) b!7955932))

(assert (= (and b!7954375 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regOne!43471 baseR!116))))) b!7955933))

(assert (= (and b!7954375 ((_ is Star!21479) (reg!21808 (regOne!43470 (regOne!43471 baseR!116))))) b!7955934))

(assert (= (and b!7954375 ((_ is Union!21479) (reg!21808 (regOne!43470 (regOne!43471 baseR!116))))) b!7955935))

(declare-fun b!7955936 () Bool)

(declare-fun e!4692658 () Bool)

(assert (=> b!7955936 (= e!4692658 tp_is_empty!53501)))

(declare-fun b!7955937 () Bool)

(declare-fun tp!2368737 () Bool)

(declare-fun tp!2368736 () Bool)

(assert (=> b!7955937 (= e!4692658 (and tp!2368737 tp!2368736))))

(declare-fun b!7955938 () Bool)

(declare-fun tp!2368735 () Bool)

(assert (=> b!7955938 (= e!4692658 tp!2368735)))

(declare-fun b!7955939 () Bool)

(declare-fun tp!2368738 () Bool)

(declare-fun tp!2368739 () Bool)

(assert (=> b!7955939 (= e!4692658 (and tp!2368738 tp!2368739))))

(assert (=> b!7954498 (= tp!2367853 e!4692658)))

(assert (= (and b!7954498 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955936))

(assert (= (and b!7954498 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955937))

(assert (= (and b!7954498 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955938))

(assert (= (and b!7954498 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955939))

(declare-fun b!7955940 () Bool)

(declare-fun e!4692659 () Bool)

(assert (=> b!7955940 (= e!4692659 tp_is_empty!53501)))

(declare-fun b!7955941 () Bool)

(declare-fun tp!2368742 () Bool)

(declare-fun tp!2368741 () Bool)

(assert (=> b!7955941 (= e!4692659 (and tp!2368742 tp!2368741))))

(declare-fun b!7955942 () Bool)

(declare-fun tp!2368740 () Bool)

(assert (=> b!7955942 (= e!4692659 tp!2368740)))

(declare-fun b!7955943 () Bool)

(declare-fun tp!2368743 () Bool)

(declare-fun tp!2368744 () Bool)

(assert (=> b!7955943 (= e!4692659 (and tp!2368743 tp!2368744))))

(assert (=> b!7954498 (= tp!2367852 e!4692659)))

(assert (= (and b!7954498 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955940))

(assert (= (and b!7954498 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955941))

(assert (= (and b!7954498 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955942))

(assert (= (and b!7954498 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regOne!43470 baseR!116))))) b!7955943))

(declare-fun b!7955944 () Bool)

(declare-fun e!4692660 () Bool)

(assert (=> b!7955944 (= e!4692660 tp_is_empty!53501)))

(declare-fun b!7955945 () Bool)

(declare-fun tp!2368747 () Bool)

(declare-fun tp!2368746 () Bool)

(assert (=> b!7955945 (= e!4692660 (and tp!2368747 tp!2368746))))

(declare-fun b!7955946 () Bool)

(declare-fun tp!2368745 () Bool)

(assert (=> b!7955946 (= e!4692660 tp!2368745)))

(declare-fun b!7955947 () Bool)

(declare-fun tp!2368748 () Bool)

(declare-fun tp!2368749 () Bool)

(assert (=> b!7955947 (= e!4692660 (and tp!2368748 tp!2368749))))

(assert (=> b!7954507 (= tp!2367861 e!4692660)))

(assert (= (and b!7954507 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regTwo!43470 r!24602))))) b!7955944))

(assert (= (and b!7954507 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regTwo!43470 r!24602))))) b!7955945))

(assert (= (and b!7954507 ((_ is Star!21479) (reg!21808 (regOne!43470 (regTwo!43470 r!24602))))) b!7955946))

(assert (= (and b!7954507 ((_ is Union!21479) (reg!21808 (regOne!43470 (regTwo!43470 r!24602))))) b!7955947))

(declare-fun b!7955948 () Bool)

(declare-fun e!4692661 () Bool)

(assert (=> b!7955948 (= e!4692661 tp_is_empty!53501)))

(declare-fun b!7955949 () Bool)

(declare-fun tp!2368752 () Bool)

(declare-fun tp!2368751 () Bool)

(assert (=> b!7955949 (= e!4692661 (and tp!2368752 tp!2368751))))

(declare-fun b!7955950 () Bool)

(declare-fun tp!2368750 () Bool)

(assert (=> b!7955950 (= e!4692661 tp!2368750)))

(declare-fun b!7955951 () Bool)

(declare-fun tp!2368753 () Bool)

(declare-fun tp!2368754 () Bool)

(assert (=> b!7955951 (= e!4692661 (and tp!2368753 tp!2368754))))

(assert (=> b!7954577 (= tp!2367934 e!4692661)))

(assert (= (and b!7954577 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955948))

(assert (= (and b!7954577 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955949))

(assert (= (and b!7954577 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955950))

(assert (= (and b!7954577 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955951))

(declare-fun b!7955952 () Bool)

(declare-fun e!4692662 () Bool)

(assert (=> b!7955952 (= e!4692662 tp_is_empty!53501)))

(declare-fun b!7955953 () Bool)

(declare-fun tp!2368757 () Bool)

(declare-fun tp!2368756 () Bool)

(assert (=> b!7955953 (= e!4692662 (and tp!2368757 tp!2368756))))

(declare-fun b!7955954 () Bool)

(declare-fun tp!2368755 () Bool)

(assert (=> b!7955954 (= e!4692662 tp!2368755)))

(declare-fun b!7955955 () Bool)

(declare-fun tp!2368758 () Bool)

(declare-fun tp!2368759 () Bool)

(assert (=> b!7955955 (= e!4692662 (and tp!2368758 tp!2368759))))

(assert (=> b!7954577 (= tp!2367935 e!4692662)))

(assert (= (and b!7954577 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955952))

(assert (= (and b!7954577 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955953))

(assert (= (and b!7954577 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955954))

(assert (= (and b!7954577 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 baseR!116))))) b!7955955))

(declare-fun b!7955956 () Bool)

(declare-fun e!4692663 () Bool)

(assert (=> b!7955956 (= e!4692663 tp_is_empty!53501)))

(declare-fun b!7955957 () Bool)

(declare-fun tp!2368762 () Bool)

(declare-fun tp!2368761 () Bool)

(assert (=> b!7955957 (= e!4692663 (and tp!2368762 tp!2368761))))

(declare-fun b!7955958 () Bool)

(declare-fun tp!2368760 () Bool)

(assert (=> b!7955958 (= e!4692663 tp!2368760)))

(declare-fun b!7955959 () Bool)

(declare-fun tp!2368763 () Bool)

(declare-fun tp!2368764 () Bool)

(assert (=> b!7955959 (= e!4692663 (and tp!2368763 tp!2368764))))

(assert (=> b!7954408 (= tp!2367761 e!4692663)))

(assert (= (and b!7954408 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regOne!43470 r!24602))))) b!7955956))

(assert (= (and b!7954408 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regOne!43470 r!24602))))) b!7955957))

(assert (= (and b!7954408 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regOne!43470 r!24602))))) b!7955958))

(assert (= (and b!7954408 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regOne!43470 r!24602))))) b!7955959))

(declare-fun b!7955960 () Bool)

(declare-fun e!4692664 () Bool)

(assert (=> b!7955960 (= e!4692664 tp_is_empty!53501)))

(declare-fun b!7955961 () Bool)

(declare-fun tp!2368767 () Bool)

(declare-fun tp!2368766 () Bool)

(assert (=> b!7955961 (= e!4692664 (and tp!2368767 tp!2368766))))

(declare-fun b!7955962 () Bool)

(declare-fun tp!2368765 () Bool)

(assert (=> b!7955962 (= e!4692664 tp!2368765)))

(declare-fun b!7955963 () Bool)

(declare-fun tp!2368768 () Bool)

(declare-fun tp!2368769 () Bool)

(assert (=> b!7955963 (= e!4692664 (and tp!2368768 tp!2368769))))

(assert (=> b!7954451 (= tp!2367801 e!4692664)))

(assert (= (and b!7954451 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (reg!21808 baseR!116))))) b!7955960))

(assert (= (and b!7954451 ((_ is Concat!30478) (reg!21808 (regOne!43471 (reg!21808 baseR!116))))) b!7955961))

(assert (= (and b!7954451 ((_ is Star!21479) (reg!21808 (regOne!43471 (reg!21808 baseR!116))))) b!7955962))

(assert (= (and b!7954451 ((_ is Union!21479) (reg!21808 (regOne!43471 (reg!21808 baseR!116))))) b!7955963))

(declare-fun b!7955964 () Bool)

(declare-fun e!4692665 () Bool)

(assert (=> b!7955964 (= e!4692665 tp_is_empty!53501)))

(declare-fun b!7955965 () Bool)

(declare-fun tp!2368772 () Bool)

(declare-fun tp!2368771 () Bool)

(assert (=> b!7955965 (= e!4692665 (and tp!2368772 tp!2368771))))

(declare-fun b!7955966 () Bool)

(declare-fun tp!2368770 () Bool)

(assert (=> b!7955966 (= e!4692665 tp!2368770)))

(declare-fun b!7955967 () Bool)

(declare-fun tp!2368773 () Bool)

(declare-fun tp!2368774 () Bool)

(assert (=> b!7955967 (= e!4692665 (and tp!2368773 tp!2368774))))

(assert (=> b!7954384 (= tp!2367744 e!4692665)))

(assert (= (and b!7954384 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955964))

(assert (= (and b!7954384 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955965))

(assert (= (and b!7954384 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955966))

(assert (= (and b!7954384 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955967))

(declare-fun b!7955978 () Bool)

(declare-fun e!4692671 () Bool)

(assert (=> b!7955978 (= e!4692671 tp_is_empty!53501)))

(declare-fun b!7955979 () Bool)

(declare-fun tp!2368777 () Bool)

(declare-fun tp!2368776 () Bool)

(assert (=> b!7955979 (= e!4692671 (and tp!2368777 tp!2368776))))

(declare-fun b!7955980 () Bool)

(declare-fun tp!2368775 () Bool)

(assert (=> b!7955980 (= e!4692671 tp!2368775)))

(declare-fun b!7955981 () Bool)

(declare-fun tp!2368778 () Bool)

(declare-fun tp!2368779 () Bool)

(assert (=> b!7955981 (= e!4692671 (and tp!2368778 tp!2368779))))

(assert (=> b!7954384 (= tp!2367745 e!4692671)))

(assert (= (and b!7954384 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955978))

(assert (= (and b!7954384 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955979))

(assert (= (and b!7954384 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955980))

(assert (= (and b!7954384 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 baseR!116))))) b!7955981))

(declare-fun b!7955982 () Bool)

(declare-fun e!4692672 () Bool)

(assert (=> b!7955982 (= e!4692672 tp_is_empty!53501)))

(declare-fun b!7955983 () Bool)

(declare-fun tp!2368782 () Bool)

(declare-fun tp!2368781 () Bool)

(assert (=> b!7955983 (= e!4692672 (and tp!2368782 tp!2368781))))

(declare-fun b!7955984 () Bool)

(declare-fun tp!2368780 () Bool)

(assert (=> b!7955984 (= e!4692672 tp!2368780)))

(declare-fun b!7955985 () Bool)

(declare-fun tp!2368783 () Bool)

(declare-fun tp!2368784 () Bool)

(assert (=> b!7955985 (= e!4692672 (and tp!2368783 tp!2368784))))

(assert (=> b!7954417 (= tp!2367774 e!4692672)))

(assert (= (and b!7954417 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955982))

(assert (= (and b!7954417 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955983))

(assert (= (and b!7954417 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955984))

(assert (= (and b!7954417 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955985))

(declare-fun b!7955986 () Bool)

(declare-fun e!4692673 () Bool)

(assert (=> b!7955986 (= e!4692673 tp_is_empty!53501)))

(declare-fun b!7955987 () Bool)

(declare-fun tp!2368787 () Bool)

(declare-fun tp!2368786 () Bool)

(assert (=> b!7955987 (= e!4692673 (and tp!2368787 tp!2368786))))

(declare-fun b!7955988 () Bool)

(declare-fun tp!2368785 () Bool)

(assert (=> b!7955988 (= e!4692673 tp!2368785)))

(declare-fun b!7955989 () Bool)

(declare-fun tp!2368788 () Bool)

(declare-fun tp!2368789 () Bool)

(assert (=> b!7955989 (= e!4692673 (and tp!2368788 tp!2368789))))

(assert (=> b!7954417 (= tp!2367775 e!4692673)))

(assert (= (and b!7954417 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955986))

(assert (= (and b!7954417 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955987))

(assert (= (and b!7954417 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955988))

(assert (= (and b!7954417 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regOne!43471 r!24602))))) b!7955989))

(declare-fun b!7955990 () Bool)

(declare-fun e!4692674 () Bool)

(assert (=> b!7955990 (= e!4692674 tp_is_empty!53501)))

(declare-fun b!7955991 () Bool)

(declare-fun tp!2368792 () Bool)

(declare-fun tp!2368791 () Bool)

(assert (=> b!7955991 (= e!4692674 (and tp!2368792 tp!2368791))))

(declare-fun b!7955992 () Bool)

(declare-fun tp!2368790 () Bool)

(assert (=> b!7955992 (= e!4692674 tp!2368790)))

(declare-fun b!7955993 () Bool)

(declare-fun tp!2368793 () Bool)

(declare-fun tp!2368794 () Bool)

(assert (=> b!7955993 (= e!4692674 (and tp!2368793 tp!2368794))))

(assert (=> b!7954514 (= tp!2367873 e!4692674)))

(assert (= (and b!7954514 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955990))

(assert (= (and b!7954514 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955991))

(assert (= (and b!7954514 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955992))

(assert (= (and b!7954514 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955993))

(declare-fun b!7955994 () Bool)

(declare-fun e!4692675 () Bool)

(assert (=> b!7955994 (= e!4692675 tp_is_empty!53501)))

(declare-fun b!7955995 () Bool)

(declare-fun tp!2368797 () Bool)

(declare-fun tp!2368796 () Bool)

(assert (=> b!7955995 (= e!4692675 (and tp!2368797 tp!2368796))))

(declare-fun b!7955996 () Bool)

(declare-fun tp!2368795 () Bool)

(assert (=> b!7955996 (= e!4692675 tp!2368795)))

(declare-fun b!7955997 () Bool)

(declare-fun tp!2368798 () Bool)

(declare-fun tp!2368799 () Bool)

(assert (=> b!7955997 (= e!4692675 (and tp!2368798 tp!2368799))))

(assert (=> b!7954514 (= tp!2367872 e!4692675)))

(assert (= (and b!7954514 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955994))

(assert (= (and b!7954514 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955995))

(assert (= (and b!7954514 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955996))

(assert (= (and b!7954514 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 r!24602))))) b!7955997))

(declare-fun b!7955998 () Bool)

(declare-fun e!4692676 () Bool)

(assert (=> b!7955998 (= e!4692676 tp_is_empty!53501)))

(declare-fun b!7955999 () Bool)

(declare-fun tp!2368802 () Bool)

(declare-fun tp!2368801 () Bool)

(assert (=> b!7955999 (= e!4692676 (and tp!2368802 tp!2368801))))

(declare-fun b!7956000 () Bool)

(declare-fun tp!2368800 () Bool)

(assert (=> b!7956000 (= e!4692676 tp!2368800)))

(declare-fun b!7956001 () Bool)

(declare-fun tp!2368803 () Bool)

(declare-fun tp!2368804 () Bool)

(assert (=> b!7956001 (= e!4692676 (and tp!2368803 tp!2368804))))

(assert (=> b!7954523 (= tp!2367881 e!4692676)))

(assert (= (and b!7954523 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regTwo!43470 r!24602))))) b!7955998))

(assert (= (and b!7954523 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regTwo!43470 r!24602))))) b!7955999))

(assert (= (and b!7954523 ((_ is Star!21479) (reg!21808 (regOne!43471 (regTwo!43470 r!24602))))) b!7956000))

(assert (= (and b!7954523 ((_ is Union!21479) (reg!21808 (regOne!43471 (regTwo!43470 r!24602))))) b!7956001))

(declare-fun b!7956004 () Bool)

(declare-fun e!4692678 () Bool)

(assert (=> b!7956004 (= e!4692678 tp_is_empty!53501)))

(declare-fun b!7956005 () Bool)

(declare-fun tp!2368807 () Bool)

(declare-fun tp!2368806 () Bool)

(assert (=> b!7956005 (= e!4692678 (and tp!2368807 tp!2368806))))

(declare-fun b!7956006 () Bool)

(declare-fun tp!2368805 () Bool)

(assert (=> b!7956006 (= e!4692678 tp!2368805)))

(declare-fun b!7956007 () Bool)

(declare-fun tp!2368808 () Bool)

(declare-fun tp!2368809 () Bool)

(assert (=> b!7956007 (= e!4692678 (and tp!2368808 tp!2368809))))

(assert (=> b!7954438 (= tp!2367789 e!4692678)))

(assert (= (and b!7954438 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956004))

(assert (= (and b!7954438 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956005))

(assert (= (and b!7954438 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956006))

(assert (= (and b!7954438 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956007))

(declare-fun b!7956012 () Bool)

(declare-fun e!4692682 () Bool)

(assert (=> b!7956012 (= e!4692682 tp_is_empty!53501)))

(declare-fun b!7956013 () Bool)

(declare-fun tp!2368812 () Bool)

(declare-fun tp!2368811 () Bool)

(assert (=> b!7956013 (= e!4692682 (and tp!2368812 tp!2368811))))

(declare-fun b!7956014 () Bool)

(declare-fun tp!2368810 () Bool)

(assert (=> b!7956014 (= e!4692682 tp!2368810)))

(declare-fun b!7956015 () Bool)

(declare-fun tp!2368813 () Bool)

(declare-fun tp!2368814 () Bool)

(assert (=> b!7956015 (= e!4692682 (and tp!2368813 tp!2368814))))

(assert (=> b!7954438 (= tp!2367790 e!4692682)))

(assert (= (and b!7954438 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956012))

(assert (= (and b!7954438 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956013))

(assert (= (and b!7954438 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956014))

(assert (= (and b!7954438 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regOne!43471 r!24602))))) b!7956015))

(declare-fun b!7956016 () Bool)

(declare-fun e!4692683 () Bool)

(assert (=> b!7956016 (= e!4692683 tp_is_empty!53501)))

(declare-fun b!7956017 () Bool)

(declare-fun tp!2368817 () Bool)

(declare-fun tp!2368816 () Bool)

(assert (=> b!7956017 (= e!4692683 (and tp!2368817 tp!2368816))))

(declare-fun b!7956018 () Bool)

(declare-fun tp!2368815 () Bool)

(assert (=> b!7956018 (= e!4692683 tp!2368815)))

(declare-fun b!7956019 () Bool)

(declare-fun tp!2368818 () Bool)

(declare-fun tp!2368819 () Bool)

(assert (=> b!7956019 (= e!4692683 (and tp!2368818 tp!2368819))))

(assert (=> b!7954565 (= tp!2367919 e!4692683)))

(assert (= (and b!7954565 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956016))

(assert (= (and b!7954565 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956017))

(assert (= (and b!7954565 ((_ is Star!21479) (regOne!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956018))

(assert (= (and b!7954565 ((_ is Union!21479) (regOne!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956019))

(declare-fun b!7956020 () Bool)

(declare-fun e!4692684 () Bool)

(assert (=> b!7956020 (= e!4692684 tp_is_empty!53501)))

(declare-fun b!7956021 () Bool)

(declare-fun tp!2368822 () Bool)

(declare-fun tp!2368821 () Bool)

(assert (=> b!7956021 (= e!4692684 (and tp!2368822 tp!2368821))))

(declare-fun b!7956022 () Bool)

(declare-fun tp!2368820 () Bool)

(assert (=> b!7956022 (= e!4692684 tp!2368820)))

(declare-fun b!7956023 () Bool)

(declare-fun tp!2368823 () Bool)

(declare-fun tp!2368824 () Bool)

(assert (=> b!7956023 (= e!4692684 (and tp!2368823 tp!2368824))))

(assert (=> b!7954565 (= tp!2367920 e!4692684)))

(assert (= (and b!7954565 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956020))

(assert (= (and b!7954565 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956021))

(assert (= (and b!7954565 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956022))

(assert (= (and b!7954565 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regTwo!43470 r!24602))))) b!7956023))

(declare-fun b!7956024 () Bool)

(declare-fun e!4692685 () Bool)

(assert (=> b!7956024 (= e!4692685 tp_is_empty!53501)))

(declare-fun b!7956025 () Bool)

(declare-fun tp!2368827 () Bool)

(declare-fun tp!2368826 () Bool)

(assert (=> b!7956025 (= e!4692685 (and tp!2368827 tp!2368826))))

(declare-fun b!7956026 () Bool)

(declare-fun tp!2368825 () Bool)

(assert (=> b!7956026 (= e!4692685 tp!2368825)))

(declare-fun b!7956027 () Bool)

(declare-fun tp!2368828 () Bool)

(declare-fun tp!2368829 () Bool)

(assert (=> b!7956027 (= e!4692685 (and tp!2368828 tp!2368829))))

(assert (=> b!7954484 (= tp!2367834 e!4692685)))

(assert (= (and b!7954484 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956024))

(assert (= (and b!7954484 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956025))

(assert (= (and b!7954484 ((_ is Star!21479) (regOne!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956026))

(assert (= (and b!7954484 ((_ is Union!21479) (regOne!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956027))

(declare-fun b!7956028 () Bool)

(declare-fun e!4692686 () Bool)

(assert (=> b!7956028 (= e!4692686 tp_is_empty!53501)))

(declare-fun b!7956029 () Bool)

(declare-fun tp!2368832 () Bool)

(declare-fun tp!2368831 () Bool)

(assert (=> b!7956029 (= e!4692686 (and tp!2368832 tp!2368831))))

(declare-fun b!7956030 () Bool)

(declare-fun tp!2368830 () Bool)

(assert (=> b!7956030 (= e!4692686 tp!2368830)))

(declare-fun b!7956031 () Bool)

(declare-fun tp!2368833 () Bool)

(declare-fun tp!2368834 () Bool)

(assert (=> b!7956031 (= e!4692686 (and tp!2368833 tp!2368834))))

(assert (=> b!7954484 (= tp!2367835 e!4692686)))

(assert (= (and b!7954484 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956028))

(assert (= (and b!7954484 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956029))

(assert (= (and b!7954484 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956030))

(assert (= (and b!7954484 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regOne!43471 baseR!116))))) b!7956031))

(declare-fun b!7956036 () Bool)

(declare-fun e!4692689 () Bool)

(assert (=> b!7956036 (= e!4692689 tp_is_empty!53501)))

(declare-fun b!7956037 () Bool)

(declare-fun tp!2368837 () Bool)

(declare-fun tp!2368836 () Bool)

(assert (=> b!7956037 (= e!4692689 (and tp!2368837 tp!2368836))))

(declare-fun b!7956038 () Bool)

(declare-fun tp!2368835 () Bool)

(assert (=> b!7956038 (= e!4692689 tp!2368835)))

(declare-fun b!7956039 () Bool)

(declare-fun tp!2368838 () Bool)

(declare-fun tp!2368839 () Bool)

(assert (=> b!7956039 (= e!4692689 (and tp!2368838 tp!2368839))))

(assert (=> b!7954530 (= tp!2367893 e!4692689)))

(assert (= (and b!7954530 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956036))

(assert (= (and b!7954530 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956037))

(assert (= (and b!7954530 ((_ is Star!21479) (regOne!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956038))

(assert (= (and b!7954530 ((_ is Union!21479) (regOne!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956039))

(declare-fun b!7956040 () Bool)

(declare-fun e!4692690 () Bool)

(assert (=> b!7956040 (= e!4692690 tp_is_empty!53501)))

(declare-fun b!7956041 () Bool)

(declare-fun tp!2368842 () Bool)

(declare-fun tp!2368841 () Bool)

(assert (=> b!7956041 (= e!4692690 (and tp!2368842 tp!2368841))))

(declare-fun b!7956042 () Bool)

(declare-fun tp!2368840 () Bool)

(assert (=> b!7956042 (= e!4692690 tp!2368840)))

(declare-fun b!7956043 () Bool)

(declare-fun tp!2368843 () Bool)

(declare-fun tp!2368844 () Bool)

(assert (=> b!7956043 (= e!4692690 (and tp!2368843 tp!2368844))))

(assert (=> b!7954530 (= tp!2367892 e!4692690)))

(assert (= (and b!7954530 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956040))

(assert (= (and b!7954530 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956041))

(assert (= (and b!7954530 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956042))

(assert (= (and b!7954530 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (reg!21808 r!24602))))) b!7956043))

(declare-fun b!7956044 () Bool)

(declare-fun e!4692691 () Bool)

(assert (=> b!7956044 (= e!4692691 tp_is_empty!53501)))

(declare-fun b!7956045 () Bool)

(declare-fun tp!2368847 () Bool)

(declare-fun tp!2368846 () Bool)

(assert (=> b!7956045 (= e!4692691 (and tp!2368847 tp!2368846))))

(declare-fun b!7956046 () Bool)

(declare-fun tp!2368845 () Bool)

(assert (=> b!7956046 (= e!4692691 tp!2368845)))

(declare-fun b!7956047 () Bool)

(declare-fun tp!2368848 () Bool)

(declare-fun tp!2368849 () Bool)

(assert (=> b!7956047 (= e!4692691 (and tp!2368848 tp!2368849))))

(assert (=> b!7954539 (= tp!2367896 e!4692691)))

(assert (= (and b!7954539 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (reg!21808 r!24602))))) b!7956044))

(assert (= (and b!7954539 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (reg!21808 r!24602))))) b!7956045))

(assert (= (and b!7954539 ((_ is Star!21479) (reg!21808 (regTwo!43470 (reg!21808 r!24602))))) b!7956046))

(assert (= (and b!7954539 ((_ is Union!21479) (reg!21808 (regTwo!43470 (reg!21808 r!24602))))) b!7956047))

(declare-fun b!7956052 () Bool)

(declare-fun e!4692694 () Bool)

(assert (=> b!7956052 (= e!4692694 tp_is_empty!53501)))

(declare-fun b!7956053 () Bool)

(declare-fun tp!2368852 () Bool)

(declare-fun tp!2368851 () Bool)

(assert (=> b!7956053 (= e!4692694 (and tp!2368852 tp!2368851))))

(declare-fun b!7956054 () Bool)

(declare-fun tp!2368850 () Bool)

(assert (=> b!7956054 (= e!4692694 tp!2368850)))

(declare-fun b!7956055 () Bool)

(declare-fun tp!2368853 () Bool)

(declare-fun tp!2368854 () Bool)

(assert (=> b!7956055 (= e!4692694 (and tp!2368853 tp!2368854))))

(assert (=> b!7954460 (= tp!2367809 e!4692694)))

(assert (= (and b!7954460 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956052))

(assert (= (and b!7954460 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956053))

(assert (= (and b!7954460 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956054))

(assert (= (and b!7954460 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956055))

(declare-fun b!7956056 () Bool)

(declare-fun e!4692695 () Bool)

(assert (=> b!7956056 (= e!4692695 tp_is_empty!53501)))

(declare-fun b!7956057 () Bool)

(declare-fun tp!2368857 () Bool)

(declare-fun tp!2368856 () Bool)

(assert (=> b!7956057 (= e!4692695 (and tp!2368857 tp!2368856))))

(declare-fun b!7956058 () Bool)

(declare-fun tp!2368855 () Bool)

(assert (=> b!7956058 (= e!4692695 tp!2368855)))

(declare-fun b!7956059 () Bool)

(declare-fun tp!2368858 () Bool)

(declare-fun tp!2368859 () Bool)

(assert (=> b!7956059 (= e!4692695 (and tp!2368858 tp!2368859))))

(assert (=> b!7954460 (= tp!2367810 e!4692695)))

(assert (= (and b!7954460 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956056))

(assert (= (and b!7954460 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956057))

(assert (= (and b!7954460 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956058))

(assert (= (and b!7954460 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (reg!21808 baseR!116))))) b!7956059))

(declare-fun b!7956060 () Bool)

(declare-fun e!4692696 () Bool)

(assert (=> b!7956060 (= e!4692696 tp_is_empty!53501)))

(declare-fun b!7956061 () Bool)

(declare-fun tp!2368862 () Bool)

(declare-fun tp!2368861 () Bool)

(assert (=> b!7956061 (= e!4692696 (and tp!2368862 tp!2368861))))

(declare-fun b!7956062 () Bool)

(declare-fun tp!2368860 () Bool)

(assert (=> b!7956062 (= e!4692696 tp!2368860)))

(declare-fun b!7956063 () Bool)

(declare-fun tp!2368863 () Bool)

(declare-fun tp!2368864 () Bool)

(assert (=> b!7956063 (= e!4692696 (and tp!2368863 tp!2368864))))

(assert (=> b!7954531 (= tp!2367891 e!4692696)))

(assert (= (and b!7954531 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (reg!21808 r!24602))))) b!7956060))

(assert (= (and b!7954531 ((_ is Concat!30478) (reg!21808 (regOne!43470 (reg!21808 r!24602))))) b!7956061))

(assert (= (and b!7954531 ((_ is Star!21479) (reg!21808 (regOne!43470 (reg!21808 r!24602))))) b!7956062))

(assert (= (and b!7954531 ((_ is Union!21479) (reg!21808 (regOne!43470 (reg!21808 r!24602))))) b!7956063))

(declare-fun b!7956073 () Bool)

(declare-fun e!4692704 () Bool)

(assert (=> b!7956073 (= e!4692704 tp_is_empty!53501)))

(declare-fun b!7956074 () Bool)

(declare-fun tp!2368867 () Bool)

(declare-fun tp!2368866 () Bool)

(assert (=> b!7956074 (= e!4692704 (and tp!2368867 tp!2368866))))

(declare-fun b!7956075 () Bool)

(declare-fun tp!2368865 () Bool)

(assert (=> b!7956075 (= e!4692704 tp!2368865)))

(declare-fun b!7956076 () Bool)

(declare-fun tp!2368868 () Bool)

(declare-fun tp!2368869 () Bool)

(assert (=> b!7956076 (= e!4692704 (and tp!2368868 tp!2368869))))

(assert (=> b!7954540 (= tp!2367899 e!4692704)))

(assert (= (and b!7954540 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956073))

(assert (= (and b!7954540 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956074))

(assert (= (and b!7954540 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956075))

(assert (= (and b!7954540 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956076))

(declare-fun b!7956077 () Bool)

(declare-fun e!4692705 () Bool)

(assert (=> b!7956077 (= e!4692705 tp_is_empty!53501)))

(declare-fun b!7956078 () Bool)

(declare-fun tp!2368872 () Bool)

(declare-fun tp!2368871 () Bool)

(assert (=> b!7956078 (= e!4692705 (and tp!2368872 tp!2368871))))

(declare-fun b!7956079 () Bool)

(declare-fun tp!2368870 () Bool)

(assert (=> b!7956079 (= e!4692705 tp!2368870)))

(declare-fun b!7956080 () Bool)

(declare-fun tp!2368873 () Bool)

(declare-fun tp!2368874 () Bool)

(assert (=> b!7956080 (= e!4692705 (and tp!2368873 tp!2368874))))

(assert (=> b!7954540 (= tp!2367900 e!4692705)))

(assert (= (and b!7954540 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956077))

(assert (= (and b!7954540 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956078))

(assert (= (and b!7954540 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956079))

(assert (= (and b!7954540 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (reg!21808 r!24602))))) b!7956080))

(declare-fun b!7956081 () Bool)

(declare-fun e!4692706 () Bool)

(assert (=> b!7956081 (= e!4692706 tp_is_empty!53501)))

(declare-fun b!7956082 () Bool)

(declare-fun tp!2368877 () Bool)

(declare-fun tp!2368876 () Bool)

(assert (=> b!7956082 (= e!4692706 (and tp!2368877 tp!2368876))))

(declare-fun b!7956083 () Bool)

(declare-fun tp!2368875 () Bool)

(assert (=> b!7956083 (= e!4692706 tp!2368875)))

(declare-fun b!7956084 () Bool)

(declare-fun tp!2368878 () Bool)

(declare-fun tp!2368879 () Bool)

(assert (=> b!7956084 (= e!4692706 (and tp!2368878 tp!2368879))))

(assert (=> b!7954580 (= tp!2367936 e!4692706)))

(assert (= (and b!7954580 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956081))

(assert (= (and b!7954580 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956082))

(assert (= (and b!7954580 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956083))

(assert (= (and b!7954580 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956084))

(declare-fun b!7956085 () Bool)

(declare-fun e!4692707 () Bool)

(assert (=> b!7956085 (= e!4692707 tp_is_empty!53501)))

(declare-fun b!7956086 () Bool)

(declare-fun tp!2368882 () Bool)

(declare-fun tp!2368881 () Bool)

(assert (=> b!7956086 (= e!4692707 (and tp!2368882 tp!2368881))))

(declare-fun b!7956087 () Bool)

(declare-fun tp!2368880 () Bool)

(assert (=> b!7956087 (= e!4692707 tp!2368880)))

(declare-fun b!7956088 () Bool)

(declare-fun tp!2368883 () Bool)

(declare-fun tp!2368884 () Bool)

(assert (=> b!7956088 (= e!4692707 (and tp!2368883 tp!2368884))))

(assert (=> b!7954411 (= tp!2367768 e!4692707)))

(assert (= (and b!7954411 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956085))

(assert (= (and b!7954411 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956086))

(assert (= (and b!7954411 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956087))

(assert (= (and b!7954411 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956088))

(declare-fun b!7956089 () Bool)

(declare-fun e!4692708 () Bool)

(assert (=> b!7956089 (= e!4692708 tp_is_empty!53501)))

(declare-fun b!7956090 () Bool)

(declare-fun tp!2368887 () Bool)

(declare-fun tp!2368886 () Bool)

(assert (=> b!7956090 (= e!4692708 (and tp!2368887 tp!2368886))))

(declare-fun b!7956091 () Bool)

(declare-fun tp!2368885 () Bool)

(assert (=> b!7956091 (= e!4692708 tp!2368885)))

(declare-fun b!7956092 () Bool)

(declare-fun tp!2368888 () Bool)

(declare-fun tp!2368889 () Bool)

(assert (=> b!7956092 (= e!4692708 (and tp!2368888 tp!2368889))))

(assert (=> b!7954411 (= tp!2367767 e!4692708)))

(assert (= (and b!7954411 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956089))

(assert (= (and b!7954411 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956090))

(assert (= (and b!7954411 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956091))

(assert (= (and b!7954411 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regOne!43471 r!24602))))) b!7956092))

(declare-fun b!7956093 () Bool)

(declare-fun e!4692709 () Bool)

(assert (=> b!7956093 (= e!4692709 tp_is_empty!53501)))

(declare-fun b!7956094 () Bool)

(declare-fun tp!2368892 () Bool)

(declare-fun tp!2368891 () Bool)

(assert (=> b!7956094 (= e!4692709 (and tp!2368892 tp!2368891))))

(declare-fun b!7956095 () Bool)

(declare-fun tp!2368890 () Bool)

(assert (=> b!7956095 (= e!4692709 tp!2368890)))

(declare-fun b!7956096 () Bool)

(declare-fun tp!2368893 () Bool)

(declare-fun tp!2368894 () Bool)

(assert (=> b!7956096 (= e!4692709 (and tp!2368893 tp!2368894))))

(assert (=> b!7954589 (= tp!2367949 e!4692709)))

(assert (= (and b!7954589 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956093))

(assert (= (and b!7954589 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956094))

(assert (= (and b!7954589 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956095))

(assert (= (and b!7954589 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956096))

(declare-fun b!7956104 () Bool)

(declare-fun e!4692716 () Bool)

(assert (=> b!7956104 (= e!4692716 tp_is_empty!53501)))

(declare-fun b!7956105 () Bool)

(declare-fun tp!2368897 () Bool)

(declare-fun tp!2368896 () Bool)

(assert (=> b!7956105 (= e!4692716 (and tp!2368897 tp!2368896))))

(declare-fun b!7956106 () Bool)

(declare-fun tp!2368895 () Bool)

(assert (=> b!7956106 (= e!4692716 tp!2368895)))

(declare-fun b!7956107 () Bool)

(declare-fun tp!2368898 () Bool)

(declare-fun tp!2368899 () Bool)

(assert (=> b!7956107 (= e!4692716 (and tp!2368898 tp!2368899))))

(assert (=> b!7954589 (= tp!2367950 e!4692716)))

(assert (= (and b!7954589 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956104))

(assert (= (and b!7954589 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956105))

(assert (= (and b!7954589 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956106))

(assert (= (and b!7954589 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 baseR!116))))) b!7956107))

(declare-fun b!7956108 () Bool)

(declare-fun e!4692717 () Bool)

(assert (=> b!7956108 (= e!4692717 tp_is_empty!53501)))

(declare-fun b!7956109 () Bool)

(declare-fun tp!2368902 () Bool)

(declare-fun tp!2368901 () Bool)

(assert (=> b!7956109 (= e!4692717 (and tp!2368902 tp!2368901))))

(declare-fun b!7956110 () Bool)

(declare-fun tp!2368900 () Bool)

(assert (=> b!7956110 (= e!4692717 tp!2368900)))

(declare-fun b!7956111 () Bool)

(declare-fun tp!2368903 () Bool)

(declare-fun tp!2368904 () Bool)

(assert (=> b!7956111 (= e!4692717 (and tp!2368903 tp!2368904))))

(assert (=> b!7954510 (= tp!2367868 e!4692717)))

(assert (= (and b!7954510 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956108))

(assert (= (and b!7954510 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956109))

(assert (= (and b!7954510 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956110))

(assert (= (and b!7954510 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956111))

(declare-fun b!7956112 () Bool)

(declare-fun e!4692718 () Bool)

(assert (=> b!7956112 (= e!4692718 tp_is_empty!53501)))

(declare-fun b!7956113 () Bool)

(declare-fun tp!2368907 () Bool)

(declare-fun tp!2368906 () Bool)

(assert (=> b!7956113 (= e!4692718 (and tp!2368907 tp!2368906))))

(declare-fun b!7956114 () Bool)

(declare-fun tp!2368905 () Bool)

(assert (=> b!7956114 (= e!4692718 tp!2368905)))

(declare-fun b!7956115 () Bool)

(declare-fun tp!2368908 () Bool)

(declare-fun tp!2368909 () Bool)

(assert (=> b!7956115 (= e!4692718 (and tp!2368908 tp!2368909))))

(assert (=> b!7954510 (= tp!2367867 e!4692718)))

(assert (= (and b!7954510 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956112))

(assert (= (and b!7954510 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956113))

(assert (= (and b!7954510 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956114))

(assert (= (and b!7954510 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956115))

(declare-fun b!7956118 () Bool)

(declare-fun e!4692720 () Bool)

(assert (=> b!7956118 (= e!4692720 tp_is_empty!53501)))

(declare-fun b!7956119 () Bool)

(declare-fun tp!2368912 () Bool)

(declare-fun tp!2368911 () Bool)

(assert (=> b!7956119 (= e!4692720 (and tp!2368912 tp!2368911))))

(declare-fun b!7956120 () Bool)

(declare-fun tp!2368910 () Bool)

(assert (=> b!7956120 (= e!4692720 tp!2368910)))

(declare-fun b!7956121 () Bool)

(declare-fun tp!2368913 () Bool)

(declare-fun tp!2368914 () Bool)

(assert (=> b!7956121 (= e!4692720 (and tp!2368913 tp!2368914))))

(assert (=> b!7954419 (= tp!2367778 e!4692720)))

(assert (= (and b!7954419 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956118))

(assert (= (and b!7954419 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956119))

(assert (= (and b!7954419 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956120))

(assert (= (and b!7954419 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956121))

(declare-fun b!7956124 () Bool)

(declare-fun e!4692722 () Bool)

(assert (=> b!7956124 (= e!4692722 tp_is_empty!53501)))

(declare-fun b!7956125 () Bool)

(declare-fun tp!2368917 () Bool)

(declare-fun tp!2368916 () Bool)

(assert (=> b!7956125 (= e!4692722 (and tp!2368917 tp!2368916))))

(declare-fun b!7956126 () Bool)

(declare-fun tp!2368915 () Bool)

(assert (=> b!7956126 (= e!4692722 tp!2368915)))

(declare-fun b!7956127 () Bool)

(declare-fun tp!2368918 () Bool)

(declare-fun tp!2368919 () Bool)

(assert (=> b!7956127 (= e!4692722 (and tp!2368918 tp!2368919))))

(assert (=> b!7954419 (= tp!2367777 e!4692722)))

(assert (= (and b!7954419 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956124))

(assert (= (and b!7954419 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956125))

(assert (= (and b!7954419 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956126))

(assert (= (and b!7954419 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regOne!43470 r!24602))))) b!7956127))

(declare-fun b!7956130 () Bool)

(declare-fun e!4692724 () Bool)

(assert (=> b!7956130 (= e!4692724 tp_is_empty!53501)))

(declare-fun b!7956131 () Bool)

(declare-fun tp!2368922 () Bool)

(declare-fun tp!2368921 () Bool)

(assert (=> b!7956131 (= e!4692724 (and tp!2368922 tp!2368921))))

(declare-fun b!7956132 () Bool)

(declare-fun tp!2368920 () Bool)

(assert (=> b!7956132 (= e!4692724 tp!2368920)))

(declare-fun b!7956133 () Bool)

(declare-fun tp!2368923 () Bool)

(declare-fun tp!2368924 () Bool)

(assert (=> b!7956133 (= e!4692724 (and tp!2368923 tp!2368924))))

(assert (=> b!7954546 (= tp!2367908 e!4692724)))

(assert (= (and b!7954546 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956130))

(assert (= (and b!7954546 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956131))

(assert (= (and b!7954546 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956132))

(assert (= (and b!7954546 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956133))

(declare-fun b!7956136 () Bool)

(declare-fun e!4692726 () Bool)

(assert (=> b!7956136 (= e!4692726 tp_is_empty!53501)))

(declare-fun b!7956137 () Bool)

(declare-fun tp!2368927 () Bool)

(declare-fun tp!2368926 () Bool)

(assert (=> b!7956137 (= e!4692726 (and tp!2368927 tp!2368926))))

(declare-fun b!7956138 () Bool)

(declare-fun tp!2368925 () Bool)

(assert (=> b!7956138 (= e!4692726 tp!2368925)))

(declare-fun b!7956139 () Bool)

(declare-fun tp!2368928 () Bool)

(declare-fun tp!2368929 () Bool)

(assert (=> b!7956139 (= e!4692726 (and tp!2368928 tp!2368929))))

(assert (=> b!7954546 (= tp!2367907 e!4692726)))

(assert (= (and b!7954546 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956136))

(assert (= (and b!7954546 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956137))

(assert (= (and b!7954546 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956138))

(assert (= (and b!7954546 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regTwo!43471 baseR!116))))) b!7956139))

(declare-fun b!7956146 () Bool)

(declare-fun e!4692734 () Bool)

(assert (=> b!7956146 (= e!4692734 tp_is_empty!53501)))

(declare-fun b!7956148 () Bool)

(declare-fun tp!2368932 () Bool)

(declare-fun tp!2368931 () Bool)

(assert (=> b!7956148 (= e!4692734 (and tp!2368932 tp!2368931))))

(declare-fun b!7956149 () Bool)

(declare-fun tp!2368930 () Bool)

(assert (=> b!7956149 (= e!4692734 tp!2368930)))

(declare-fun b!7956150 () Bool)

(declare-fun tp!2368933 () Bool)

(declare-fun tp!2368934 () Bool)

(assert (=> b!7956150 (= e!4692734 (and tp!2368933 tp!2368934))))

(assert (=> b!7954387 (= tp!2367746 e!4692734)))

(assert (= (and b!7954387 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regOne!43470 r!24602))))) b!7956146))

(assert (= (and b!7954387 ((_ is Concat!30478) (reg!21808 (reg!21808 (regOne!43470 r!24602))))) b!7956148))

(assert (= (and b!7954387 ((_ is Star!21479) (reg!21808 (reg!21808 (regOne!43470 r!24602))))) b!7956149))

(assert (= (and b!7954387 ((_ is Union!21479) (reg!21808 (reg!21808 (regOne!43470 r!24602))))) b!7956150))

(declare-fun b!7956153 () Bool)

(declare-fun e!4692735 () Bool)

(assert (=> b!7956153 (= e!4692735 tp_is_empty!53501)))

(declare-fun b!7956154 () Bool)

(declare-fun tp!2368937 () Bool)

(declare-fun tp!2368936 () Bool)

(assert (=> b!7956154 (= e!4692735 (and tp!2368937 tp!2368936))))

(declare-fun b!7956155 () Bool)

(declare-fun tp!2368935 () Bool)

(assert (=> b!7956155 (= e!4692735 tp!2368935)))

(declare-fun b!7956156 () Bool)

(declare-fun tp!2368938 () Bool)

(declare-fun tp!2368939 () Bool)

(assert (=> b!7956156 (= e!4692735 (and tp!2368938 tp!2368939))))

(assert (=> b!7954390 (= tp!2367753 e!4692735)))

(assert (= (and b!7954390 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956153))

(assert (= (and b!7954390 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956154))

(assert (= (and b!7954390 ((_ is Star!21479) (regOne!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956155))

(assert (= (and b!7954390 ((_ is Union!21479) (regOne!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956156))

(declare-fun b!7956157 () Bool)

(declare-fun e!4692736 () Bool)

(assert (=> b!7956157 (= e!4692736 tp_is_empty!53501)))

(declare-fun b!7956158 () Bool)

(declare-fun tp!2368942 () Bool)

(declare-fun tp!2368941 () Bool)

(assert (=> b!7956158 (= e!4692736 (and tp!2368942 tp!2368941))))

(declare-fun b!7956159 () Bool)

(declare-fun tp!2368940 () Bool)

(assert (=> b!7956159 (= e!4692736 tp!2368940)))

(declare-fun b!7956160 () Bool)

(declare-fun tp!2368943 () Bool)

(declare-fun tp!2368944 () Bool)

(assert (=> b!7956160 (= e!4692736 (and tp!2368943 tp!2368944))))

(assert (=> b!7954390 (= tp!2367752 e!4692736)))

(assert (= (and b!7954390 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956157))

(assert (= (and b!7954390 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956158))

(assert (= (and b!7954390 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956159))

(assert (= (and b!7954390 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regOne!43471 r!24602))))) b!7956160))

(declare-fun b!7956161 () Bool)

(declare-fun e!4692737 () Bool)

(assert (=> b!7956161 (= e!4692737 tp_is_empty!53501)))

(declare-fun b!7956162 () Bool)

(declare-fun tp!2368947 () Bool)

(declare-fun tp!2368946 () Bool)

(assert (=> b!7956162 (= e!4692737 (and tp!2368947 tp!2368946))))

(declare-fun b!7956163 () Bool)

(declare-fun tp!2368945 () Bool)

(assert (=> b!7956163 (= e!4692737 tp!2368945)))

(declare-fun b!7956164 () Bool)

(declare-fun tp!2368948 () Bool)

(declare-fun tp!2368949 () Bool)

(assert (=> b!7956164 (= e!4692737 (and tp!2368948 tp!2368949))))

(assert (=> b!7954480 (= tp!2367829 e!4692737)))

(assert (= (and b!7954480 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956161))

(assert (= (and b!7954480 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956162))

(assert (= (and b!7954480 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956163))

(assert (= (and b!7954480 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956164))

(declare-fun b!7956165 () Bool)

(declare-fun e!4692738 () Bool)

(assert (=> b!7956165 (= e!4692738 tp_is_empty!53501)))

(declare-fun b!7956166 () Bool)

(declare-fun tp!2368952 () Bool)

(declare-fun tp!2368951 () Bool)

(assert (=> b!7956166 (= e!4692738 (and tp!2368952 tp!2368951))))

(declare-fun b!7956167 () Bool)

(declare-fun tp!2368950 () Bool)

(assert (=> b!7956167 (= e!4692738 tp!2368950)))

(declare-fun b!7956168 () Bool)

(declare-fun tp!2368953 () Bool)

(declare-fun tp!2368954 () Bool)

(assert (=> b!7956168 (= e!4692738 (and tp!2368953 tp!2368954))))

(assert (=> b!7954480 (= tp!2367830 e!4692738)))

(assert (= (and b!7954480 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956165))

(assert (= (and b!7954480 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956166))

(assert (= (and b!7954480 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956167))

(assert (= (and b!7954480 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (reg!21808 baseR!116))))) b!7956168))

(declare-fun b!7956171 () Bool)

(declare-fun e!4692740 () Bool)

(assert (=> b!7956171 (= e!4692740 tp_is_empty!53501)))

(declare-fun b!7956172 () Bool)

(declare-fun tp!2368957 () Bool)

(declare-fun tp!2368956 () Bool)

(assert (=> b!7956172 (= e!4692740 (and tp!2368957 tp!2368956))))

(declare-fun b!7956173 () Bool)

(declare-fun tp!2368955 () Bool)

(assert (=> b!7956173 (= e!4692740 tp!2368955)))

(declare-fun b!7956174 () Bool)

(declare-fun tp!2368958 () Bool)

(declare-fun tp!2368959 () Bool)

(assert (=> b!7956174 (= e!4692740 (and tp!2368958 tp!2368959))))

(assert (=> b!7954571 (= tp!2367928 e!4692740)))

(assert (= (and b!7954571 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956171))

(assert (= (and b!7954571 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956172))

(assert (= (and b!7954571 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956173))

(assert (= (and b!7954571 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956174))

(declare-fun b!7956184 () Bool)

(declare-fun e!4692748 () Bool)

(assert (=> b!7956184 (= e!4692748 tp_is_empty!53501)))

(declare-fun b!7956185 () Bool)

(declare-fun tp!2368962 () Bool)

(declare-fun tp!2368961 () Bool)

(assert (=> b!7956185 (= e!4692748 (and tp!2368962 tp!2368961))))

(declare-fun b!7956186 () Bool)

(declare-fun tp!2368960 () Bool)

(assert (=> b!7956186 (= e!4692748 tp!2368960)))

(declare-fun b!7956187 () Bool)

(declare-fun tp!2368963 () Bool)

(declare-fun tp!2368964 () Bool)

(assert (=> b!7956187 (= e!4692748 (and tp!2368963 tp!2368964))))

(assert (=> b!7954571 (= tp!2367927 e!4692748)))

(assert (= (and b!7954571 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956184))

(assert (= (and b!7954571 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956185))

(assert (= (and b!7954571 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956186))

(assert (= (and b!7954571 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (reg!21808 r!24602))))) b!7956187))

(declare-fun b!7956188 () Bool)

(declare-fun e!4692749 () Bool)

(assert (=> b!7956188 (= e!4692749 tp_is_empty!53501)))

(declare-fun b!7956189 () Bool)

(declare-fun tp!2368967 () Bool)

(declare-fun tp!2368966 () Bool)

(assert (=> b!7956189 (= e!4692749 (and tp!2368967 tp!2368966))))

(declare-fun b!7956190 () Bool)

(declare-fun tp!2368965 () Bool)

(assert (=> b!7956190 (= e!4692749 tp!2368965)))

(declare-fun b!7956191 () Bool)

(declare-fun tp!2368968 () Bool)

(declare-fun tp!2368969 () Bool)

(assert (=> b!7956191 (= e!4692749 (and tp!2368968 tp!2368969))))

(assert (=> b!7954441 (= tp!2367791 e!4692749)))

(assert (= (and b!7954441 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regOne!43471 r!24602))))) b!7956188))

(assert (= (and b!7954441 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regOne!43471 r!24602))))) b!7956189))

(assert (= (and b!7954441 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regOne!43471 r!24602))))) b!7956190))

(assert (= (and b!7954441 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regOne!43471 r!24602))))) b!7956191))

(declare-fun b!7956192 () Bool)

(declare-fun e!4692750 () Bool)

(assert (=> b!7956192 (= e!4692750 tp_is_empty!53501)))

(declare-fun b!7956193 () Bool)

(declare-fun tp!2368972 () Bool)

(declare-fun tp!2368971 () Bool)

(assert (=> b!7956193 (= e!4692750 (and tp!2368972 tp!2368971))))

(declare-fun b!7956194 () Bool)

(declare-fun tp!2368970 () Bool)

(assert (=> b!7956194 (= e!4692750 tp!2368970)))

(declare-fun b!7956195 () Bool)

(declare-fun tp!2368973 () Bool)

(declare-fun tp!2368974 () Bool)

(assert (=> b!7956195 (= e!4692750 (and tp!2368973 tp!2368974))))

(assert (=> b!7954496 (= tp!2367849 e!4692750)))

(assert (= (and b!7954496 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956192))

(assert (= (and b!7954496 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956193))

(assert (= (and b!7954496 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956194))

(assert (= (and b!7954496 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956195))

(declare-fun b!7956196 () Bool)

(declare-fun e!4692751 () Bool)

(assert (=> b!7956196 (= e!4692751 tp_is_empty!53501)))

(declare-fun b!7956197 () Bool)

(declare-fun tp!2368977 () Bool)

(declare-fun tp!2368976 () Bool)

(assert (=> b!7956197 (= e!4692751 (and tp!2368977 tp!2368976))))

(declare-fun b!7956198 () Bool)

(declare-fun tp!2368975 () Bool)

(assert (=> b!7956198 (= e!4692751 tp!2368975)))

(declare-fun b!7956199 () Bool)

(declare-fun tp!2368978 () Bool)

(declare-fun tp!2368979 () Bool)

(assert (=> b!7956199 (= e!4692751 (and tp!2368978 tp!2368979))))

(assert (=> b!7954496 (= tp!2367850 e!4692751)))

(assert (= (and b!7954496 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956196))

(assert (= (and b!7954496 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956197))

(assert (= (and b!7954496 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956198))

(assert (= (and b!7954496 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regOne!43470 baseR!116))))) b!7956199))

(declare-fun b!7956209 () Bool)

(declare-fun e!4692759 () Bool)

(assert (=> b!7956209 (= e!4692759 tp_is_empty!53501)))

(declare-fun b!7956210 () Bool)

(declare-fun tp!2368982 () Bool)

(declare-fun tp!2368981 () Bool)

(assert (=> b!7956210 (= e!4692759 (and tp!2368982 tp!2368981))))

(declare-fun b!7956211 () Bool)

(declare-fun tp!2368980 () Bool)

(assert (=> b!7956211 (= e!4692759 tp!2368980)))

(declare-fun b!7956212 () Bool)

(declare-fun tp!2368983 () Bool)

(declare-fun tp!2368984 () Bool)

(assert (=> b!7956212 (= e!4692759 (and tp!2368983 tp!2368984))))

(assert (=> b!7954421 (= tp!2367779 e!4692759)))

(assert (= (and b!7954421 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956209))

(assert (= (and b!7954421 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956210))

(assert (= (and b!7954421 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956211))

(assert (= (and b!7954421 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956212))

(declare-fun b!7956213 () Bool)

(declare-fun e!4692760 () Bool)

(assert (=> b!7956213 (= e!4692760 tp_is_empty!53501)))

(declare-fun b!7956214 () Bool)

(declare-fun tp!2368987 () Bool)

(declare-fun tp!2368986 () Bool)

(assert (=> b!7956214 (= e!4692760 (and tp!2368987 tp!2368986))))

(declare-fun b!7956215 () Bool)

(declare-fun tp!2368985 () Bool)

(assert (=> b!7956215 (= e!4692760 tp!2368985)))

(declare-fun b!7956216 () Bool)

(declare-fun tp!2368988 () Bool)

(declare-fun tp!2368989 () Bool)

(assert (=> b!7956216 (= e!4692760 (and tp!2368988 tp!2368989))))

(assert (=> b!7954421 (= tp!2367780 e!4692760)))

(assert (= (and b!7954421 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956213))

(assert (= (and b!7954421 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956214))

(assert (= (and b!7954421 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956215))

(assert (= (and b!7954421 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regOne!43470 r!24602))))) b!7956216))

(declare-fun b!7956217 () Bool)

(declare-fun e!4692761 () Bool)

(assert (=> b!7956217 (= e!4692761 tp_is_empty!53501)))

(declare-fun b!7956218 () Bool)

(declare-fun tp!2368992 () Bool)

(declare-fun tp!2368991 () Bool)

(assert (=> b!7956218 (= e!4692761 (and tp!2368992 tp!2368991))))

(declare-fun b!7956219 () Bool)

(declare-fun tp!2368990 () Bool)

(assert (=> b!7956219 (= e!4692761 tp!2368990)))

(declare-fun b!7956220 () Bool)

(declare-fun tp!2368993 () Bool)

(declare-fun tp!2368994 () Bool)

(assert (=> b!7956220 (= e!4692761 (and tp!2368993 tp!2368994))))

(assert (=> b!7954432 (= tp!2367783 e!4692761)))

(assert (= (and b!7954432 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956217))

(assert (= (and b!7954432 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956218))

(assert (= (and b!7954432 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956219))

(assert (= (and b!7954432 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956220))

(declare-fun b!7956221 () Bool)

(declare-fun e!4692762 () Bool)

(assert (=> b!7956221 (= e!4692762 tp_is_empty!53501)))

(declare-fun b!7956222 () Bool)

(declare-fun tp!2368997 () Bool)

(declare-fun tp!2368996 () Bool)

(assert (=> b!7956222 (= e!4692762 (and tp!2368997 tp!2368996))))

(declare-fun b!7956223 () Bool)

(declare-fun tp!2368995 () Bool)

(assert (=> b!7956223 (= e!4692762 tp!2368995)))

(declare-fun b!7956224 () Bool)

(declare-fun tp!2368998 () Bool)

(declare-fun tp!2368999 () Bool)

(assert (=> b!7956224 (= e!4692762 (and tp!2368998 tp!2368999))))

(assert (=> b!7954432 (= tp!2367782 e!4692762)))

(assert (= (and b!7954432 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956221))

(assert (= (and b!7954432 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956222))

(assert (= (and b!7954432 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956223))

(assert (= (and b!7954432 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regOne!43470 r!24602))))) b!7956224))

(declare-fun b!7956225 () Bool)

(declare-fun e!4692763 () Bool)

(assert (=> b!7956225 (= e!4692763 tp_is_empty!53501)))

(declare-fun b!7956226 () Bool)

(declare-fun tp!2369002 () Bool)

(declare-fun tp!2369001 () Bool)

(assert (=> b!7956226 (= e!4692763 (and tp!2369002 tp!2369001))))

(declare-fun b!7956227 () Bool)

(declare-fun tp!2369000 () Bool)

(assert (=> b!7956227 (= e!4692763 tp!2369000)))

(declare-fun b!7956228 () Bool)

(declare-fun tp!2369003 () Bool)

(declare-fun tp!2369004 () Bool)

(assert (=> b!7956228 (= e!4692763 (and tp!2369003 tp!2369004))))

(assert (=> b!7954559 (= tp!2367913 e!4692763)))

(assert (= (and b!7954559 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956225))

(assert (= (and b!7954559 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956226))

(assert (= (and b!7954559 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956227))

(assert (= (and b!7954559 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956228))

(declare-fun b!7956229 () Bool)

(declare-fun e!4692764 () Bool)

(assert (=> b!7956229 (= e!4692764 tp_is_empty!53501)))

(declare-fun b!7956230 () Bool)

(declare-fun tp!2369007 () Bool)

(declare-fun tp!2369006 () Bool)

(assert (=> b!7956230 (= e!4692764 (and tp!2369007 tp!2369006))))

(declare-fun b!7956231 () Bool)

(declare-fun tp!2369005 () Bool)

(assert (=> b!7956231 (= e!4692764 tp!2369005)))

(declare-fun b!7956232 () Bool)

(declare-fun tp!2369008 () Bool)

(declare-fun tp!2369009 () Bool)

(assert (=> b!7956232 (= e!4692764 (and tp!2369008 tp!2369009))))

(assert (=> b!7954559 (= tp!2367912 e!4692764)))

(assert (= (and b!7954559 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956229))

(assert (= (and b!7954559 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956230))

(assert (= (and b!7954559 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956231))

(assert (= (and b!7954559 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956232))

(declare-fun b!7956233 () Bool)

(declare-fun e!4692765 () Bool)

(assert (=> b!7956233 (= e!4692765 tp_is_empty!53501)))

(declare-fun b!7956234 () Bool)

(declare-fun tp!2369012 () Bool)

(declare-fun tp!2369011 () Bool)

(assert (=> b!7956234 (= e!4692765 (and tp!2369012 tp!2369011))))

(declare-fun b!7956235 () Bool)

(declare-fun tp!2369010 () Bool)

(assert (=> b!7956235 (= e!4692765 tp!2369010)))

(declare-fun b!7956236 () Bool)

(declare-fun tp!2369013 () Bool)

(declare-fun tp!2369014 () Bool)

(assert (=> b!7956236 (= e!4692765 (and tp!2369013 tp!2369014))))

(assert (=> b!7954487 (= tp!2367836 e!4692765)))

(assert (= (and b!7954487 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regOne!43471 baseR!116))))) b!7956233))

(assert (= (and b!7954487 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regOne!43471 baseR!116))))) b!7956234))

(assert (= (and b!7954487 ((_ is Star!21479) (reg!21808 (regOne!43471 (regOne!43471 baseR!116))))) b!7956235))

(assert (= (and b!7954487 ((_ is Union!21479) (reg!21808 (regOne!43471 (regOne!43471 baseR!116))))) b!7956236))

(declare-fun b!7956241 () Bool)

(declare-fun e!4692768 () Bool)

(assert (=> b!7956241 (= e!4692768 tp_is_empty!53501)))

(declare-fun b!7956242 () Bool)

(declare-fun tp!2369017 () Bool)

(declare-fun tp!2369016 () Bool)

(assert (=> b!7956242 (= e!4692768 (and tp!2369017 tp!2369016))))

(declare-fun b!7956243 () Bool)

(declare-fun tp!2369015 () Bool)

(assert (=> b!7956243 (= e!4692768 tp!2369015)))

(declare-fun b!7956244 () Bool)

(declare-fun tp!2369018 () Bool)

(declare-fun tp!2369019 () Bool)

(assert (=> b!7956244 (= e!4692768 (and tp!2369018 tp!2369019))))

(assert (=> b!7954613 (= tp!2367977 e!4692768)))

(assert (= (and b!7954613 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956241))

(assert (= (and b!7954613 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956242))

(assert (= (and b!7954613 ((_ is Star!21479) (reg!21808 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956243))

(assert (= (and b!7954613 ((_ is Union!21479) (reg!21808 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956244))

(declare-fun b!7956245 () Bool)

(declare-fun e!4692769 () Bool)

(assert (=> b!7956245 (= e!4692769 tp_is_empty!53501)))

(declare-fun b!7956246 () Bool)

(declare-fun tp!2369022 () Bool)

(declare-fun tp!2369021 () Bool)

(assert (=> b!7956246 (= e!4692769 (and tp!2369022 tp!2369021))))

(declare-fun b!7956247 () Bool)

(declare-fun tp!2369020 () Bool)

(assert (=> b!7956247 (= e!4692769 tp!2369020)))

(declare-fun b!7956248 () Bool)

(declare-fun tp!2369023 () Bool)

(declare-fun tp!2369024 () Bool)

(assert (=> b!7956248 (= e!4692769 (and tp!2369023 tp!2369024))))

(assert (=> b!7954542 (= tp!2367903 e!4692769)))

(assert (= (and b!7954542 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956245))

(assert (= (and b!7954542 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956246))

(assert (= (and b!7954542 ((_ is Star!21479) (regOne!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956247))

(assert (= (and b!7954542 ((_ is Union!21479) (regOne!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956248))

(declare-fun b!7956249 () Bool)

(declare-fun e!4692770 () Bool)

(assert (=> b!7956249 (= e!4692770 tp_is_empty!53501)))

(declare-fun b!7956250 () Bool)

(declare-fun tp!2369027 () Bool)

(declare-fun tp!2369026 () Bool)

(assert (=> b!7956250 (= e!4692770 (and tp!2369027 tp!2369026))))

(declare-fun b!7956251 () Bool)

(declare-fun tp!2369025 () Bool)

(assert (=> b!7956251 (= e!4692770 tp!2369025)))

(declare-fun b!7956252 () Bool)

(declare-fun tp!2369028 () Bool)

(declare-fun tp!2369029 () Bool)

(assert (=> b!7956252 (= e!4692770 (and tp!2369028 tp!2369029))))

(assert (=> b!7954542 (= tp!2367902 e!4692770)))

(assert (= (and b!7954542 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956249))

(assert (= (and b!7954542 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956250))

(assert (= (and b!7954542 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956251))

(assert (= (and b!7954542 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regTwo!43471 baseR!116))))) b!7956252))

(declare-fun b!7956253 () Bool)

(declare-fun e!4692771 () Bool)

(assert (=> b!7956253 (= e!4692771 tp_is_empty!53501)))

(declare-fun b!7956254 () Bool)

(declare-fun tp!2369032 () Bool)

(declare-fun tp!2369031 () Bool)

(assert (=> b!7956254 (= e!4692771 (and tp!2369032 tp!2369031))))

(declare-fun b!7956255 () Bool)

(declare-fun tp!2369030 () Bool)

(assert (=> b!7956255 (= e!4692771 tp!2369030)))

(declare-fun b!7956256 () Bool)

(declare-fun tp!2369033 () Bool)

(declare-fun tp!2369034 () Bool)

(assert (=> b!7956256 (= e!4692771 (and tp!2369033 tp!2369034))))

(assert (=> b!7954463 (= tp!2367811 e!4692771)))

(assert (= (and b!7954463 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regOne!43470 baseR!116))))) b!7956253))

(assert (= (and b!7954463 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regOne!43470 baseR!116))))) b!7956254))

(assert (= (and b!7954463 ((_ is Star!21479) (reg!21808 (regOne!43470 (regOne!43470 baseR!116))))) b!7956255))

(assert (= (and b!7954463 ((_ is Union!21479) (reg!21808 (regOne!43470 (regOne!43470 baseR!116))))) b!7956256))

(declare-fun b!7956257 () Bool)

(declare-fun e!4692772 () Bool)

(assert (=> b!7956257 (= e!4692772 tp_is_empty!53501)))

(declare-fun b!7956258 () Bool)

(declare-fun tp!2369037 () Bool)

(declare-fun tp!2369036 () Bool)

(assert (=> b!7956258 (= e!4692772 (and tp!2369037 tp!2369036))))

(declare-fun b!7956259 () Bool)

(declare-fun tp!2369035 () Bool)

(assert (=> b!7956259 (= e!4692772 tp!2369035)))

(declare-fun b!7956260 () Bool)

(declare-fun tp!2369038 () Bool)

(declare-fun tp!2369039 () Bool)

(assert (=> b!7956260 (= e!4692772 (and tp!2369038 tp!2369039))))

(assert (=> b!7954591 (= tp!2367953 e!4692772)))

(assert (= (and b!7954591 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956257))

(assert (= (and b!7954591 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956258))

(assert (= (and b!7954591 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956259))

(assert (= (and b!7954591 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956260))

(declare-fun b!7956261 () Bool)

(declare-fun e!4692773 () Bool)

(assert (=> b!7956261 (= e!4692773 tp_is_empty!53501)))

(declare-fun b!7956262 () Bool)

(declare-fun tp!2369042 () Bool)

(declare-fun tp!2369041 () Bool)

(assert (=> b!7956262 (= e!4692773 (and tp!2369042 tp!2369041))))

(declare-fun b!7956263 () Bool)

(declare-fun tp!2369040 () Bool)

(assert (=> b!7956263 (= e!4692773 tp!2369040)))

(declare-fun b!7956264 () Bool)

(declare-fun tp!2369043 () Bool)

(declare-fun tp!2369044 () Bool)

(assert (=> b!7956264 (= e!4692773 (and tp!2369043 tp!2369044))))

(assert (=> b!7954591 (= tp!2367952 e!4692773)))

(assert (= (and b!7954591 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956261))

(assert (= (and b!7954591 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956262))

(assert (= (and b!7954591 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956263))

(assert (= (and b!7954591 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956264))

(declare-fun b!7956267 () Bool)

(declare-fun e!4692775 () Bool)

(assert (=> b!7956267 (= e!4692775 tp_is_empty!53501)))

(declare-fun b!7956268 () Bool)

(declare-fun tp!2369047 () Bool)

(declare-fun tp!2369046 () Bool)

(assert (=> b!7956268 (= e!4692775 (and tp!2369047 tp!2369046))))

(declare-fun b!7956269 () Bool)

(declare-fun tp!2369045 () Bool)

(assert (=> b!7956269 (= e!4692775 tp!2369045)))

(declare-fun b!7956270 () Bool)

(declare-fun tp!2369048 () Bool)

(declare-fun tp!2369049 () Bool)

(assert (=> b!7956270 (= e!4692775 (and tp!2369048 tp!2369049))))

(assert (=> b!7954600 (= tp!2367961 e!4692775)))

(assert (= (and b!7954600 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regTwo!43471 r!24602))))) b!7956267))

(assert (= (and b!7954600 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regTwo!43471 r!24602))))) b!7956268))

(assert (= (and b!7954600 ((_ is Star!21479) (reg!21808 (regOne!43471 (regTwo!43471 r!24602))))) b!7956269))

(assert (= (and b!7954600 ((_ is Union!21479) (reg!21808 (regOne!43471 (regTwo!43471 r!24602))))) b!7956270))

(declare-fun b!7956271 () Bool)

(declare-fun e!4692776 () Bool)

(assert (=> b!7956271 (= e!4692776 tp_is_empty!53501)))

(declare-fun b!7956272 () Bool)

(declare-fun tp!2369052 () Bool)

(declare-fun tp!2369051 () Bool)

(assert (=> b!7956272 (= e!4692776 (and tp!2369052 tp!2369051))))

(declare-fun b!7956273 () Bool)

(declare-fun tp!2369050 () Bool)

(assert (=> b!7956273 (= e!4692776 tp!2369050)))

(declare-fun b!7956274 () Bool)

(declare-fun tp!2369053 () Bool)

(declare-fun tp!2369054 () Bool)

(assert (=> b!7956274 (= e!4692776 (and tp!2369053 tp!2369054))))

(assert (=> b!7954583 (= tp!2367943 e!4692776)))

(assert (= (and b!7954583 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956271))

(assert (= (and b!7954583 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956272))

(assert (= (and b!7954583 ((_ is Star!21479) (regOne!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956273))

(assert (= (and b!7954583 ((_ is Union!21479) (regOne!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956274))

(declare-fun b!7956275 () Bool)

(declare-fun e!4692777 () Bool)

(assert (=> b!7956275 (= e!4692777 tp_is_empty!53501)))

(declare-fun b!7956276 () Bool)

(declare-fun tp!2369057 () Bool)

(declare-fun tp!2369056 () Bool)

(assert (=> b!7956276 (= e!4692777 (and tp!2369057 tp!2369056))))

(declare-fun b!7956277 () Bool)

(declare-fun tp!2369055 () Bool)

(assert (=> b!7956277 (= e!4692777 tp!2369055)))

(declare-fun b!7956278 () Bool)

(declare-fun tp!2369058 () Bool)

(declare-fun tp!2369059 () Bool)

(assert (=> b!7956278 (= e!4692777 (and tp!2369058 tp!2369059))))

(assert (=> b!7954583 (= tp!2367942 e!4692777)))

(assert (= (and b!7954583 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956275))

(assert (= (and b!7954583 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956276))

(assert (= (and b!7954583 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956277))

(assert (= (and b!7954583 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regTwo!43470 baseR!116))))) b!7956278))

(declare-fun b!7956283 () Bool)

(declare-fun e!4692780 () Bool)

(assert (=> b!7956283 (= e!4692780 tp_is_empty!53501)))

(declare-fun b!7956284 () Bool)

(declare-fun tp!2369062 () Bool)

(declare-fun tp!2369061 () Bool)

(assert (=> b!7956284 (= e!4692780 (and tp!2369062 tp!2369061))))

(declare-fun b!7956285 () Bool)

(declare-fun tp!2369060 () Bool)

(assert (=> b!7956285 (= e!4692780 tp!2369060)))

(declare-fun b!7956286 () Bool)

(declare-fun tp!2369063 () Bool)

(declare-fun tp!2369064 () Bool)

(assert (=> b!7956286 (= e!4692780 (and tp!2369063 tp!2369064))))

(assert (=> b!7954592 (= tp!2367951 e!4692780)))

(assert (= (and b!7954592 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956283))

(assert (= (and b!7954592 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956284))

(assert (= (and b!7954592 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956285))

(assert (= (and b!7954592 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956286))

(declare-fun b!7956287 () Bool)

(declare-fun e!4692781 () Bool)

(assert (=> b!7956287 (= e!4692781 tp_is_empty!53501)))

(declare-fun b!7956288 () Bool)

(declare-fun tp!2369067 () Bool)

(declare-fun tp!2369066 () Bool)

(assert (=> b!7956288 (= e!4692781 (and tp!2369067 tp!2369066))))

(declare-fun b!7956289 () Bool)

(declare-fun tp!2369065 () Bool)

(assert (=> b!7956289 (= e!4692781 tp!2369065)))

(declare-fun b!7956290 () Bool)

(declare-fun tp!2369068 () Bool)

(declare-fun tp!2369069 () Bool)

(assert (=> b!7956290 (= e!4692781 (and tp!2369068 tp!2369069))))

(assert (=> b!7954601 (= tp!2367964 e!4692781)))

(assert (= (and b!7954601 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956287))

(assert (= (and b!7954601 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956288))

(assert (= (and b!7954601 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956289))

(assert (= (and b!7954601 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956290))

(declare-fun b!7956295 () Bool)

(declare-fun e!4692784 () Bool)

(assert (=> b!7956295 (= e!4692784 tp_is_empty!53501)))

(declare-fun b!7956296 () Bool)

(declare-fun tp!2369072 () Bool)

(declare-fun tp!2369071 () Bool)

(assert (=> b!7956296 (= e!4692784 (and tp!2369072 tp!2369071))))

(declare-fun b!7956297 () Bool)

(declare-fun tp!2369070 () Bool)

(assert (=> b!7956297 (= e!4692784 tp!2369070)))

(declare-fun b!7956298 () Bool)

(declare-fun tp!2369073 () Bool)

(declare-fun tp!2369074 () Bool)

(assert (=> b!7956298 (= e!4692784 (and tp!2369073 tp!2369074))))

(assert (=> b!7954601 (= tp!2367965 e!4692784)))

(assert (= (and b!7954601 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956295))

(assert (= (and b!7954601 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956296))

(assert (= (and b!7954601 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956297))

(assert (= (and b!7954601 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regTwo!43471 r!24602))))) b!7956298))

(declare-fun b!7956299 () Bool)

(declare-fun e!4692785 () Bool)

(assert (=> b!7956299 (= e!4692785 tp_is_empty!53501)))

(declare-fun b!7956300 () Bool)

(declare-fun tp!2369077 () Bool)

(declare-fun tp!2369076 () Bool)

(assert (=> b!7956300 (= e!4692785 (and tp!2369077 tp!2369076))))

(declare-fun b!7956301 () Bool)

(declare-fun tp!2369075 () Bool)

(assert (=> b!7956301 (= e!4692785 tp!2369075)))

(declare-fun b!7956302 () Bool)

(declare-fun tp!2369078 () Bool)

(declare-fun tp!2369079 () Bool)

(assert (=> b!7956302 (= e!4692785 (and tp!2369078 tp!2369079))))

(assert (=> b!7954607 (= tp!2367973 e!4692785)))

(assert (= (and b!7954607 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (reg!21808 r!24602))))) b!7956299))

(assert (= (and b!7954607 ((_ is Concat!30478) (regOne!43470 (reg!21808 (reg!21808 r!24602))))) b!7956300))

(assert (= (and b!7954607 ((_ is Star!21479) (regOne!43470 (reg!21808 (reg!21808 r!24602))))) b!7956301))

(assert (= (and b!7954607 ((_ is Union!21479) (regOne!43470 (reg!21808 (reg!21808 r!24602))))) b!7956302))

(declare-fun b!7956303 () Bool)

(declare-fun e!4692786 () Bool)

(assert (=> b!7956303 (= e!4692786 tp_is_empty!53501)))

(declare-fun b!7956304 () Bool)

(declare-fun tp!2369082 () Bool)

(declare-fun tp!2369081 () Bool)

(assert (=> b!7956304 (= e!4692786 (and tp!2369082 tp!2369081))))

(declare-fun b!7956305 () Bool)

(declare-fun tp!2369080 () Bool)

(assert (=> b!7956305 (= e!4692786 tp!2369080)))

(declare-fun b!7956306 () Bool)

(declare-fun tp!2369083 () Bool)

(declare-fun tp!2369084 () Bool)

(assert (=> b!7956306 (= e!4692786 (and tp!2369083 tp!2369084))))

(assert (=> b!7954607 (= tp!2367972 e!4692786)))

(assert (= (and b!7954607 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (reg!21808 r!24602))))) b!7956303))

(assert (= (and b!7954607 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (reg!21808 r!24602))))) b!7956304))

(assert (= (and b!7954607 ((_ is Star!21479) (regTwo!43470 (reg!21808 (reg!21808 r!24602))))) b!7956305))

(assert (= (and b!7954607 ((_ is Union!21479) (regTwo!43470 (reg!21808 (reg!21808 r!24602))))) b!7956306))

(declare-fun b!7956311 () Bool)

(declare-fun e!4692790 () Bool)

(assert (=> b!7956311 (= e!4692790 tp_is_empty!53501)))

(declare-fun b!7956312 () Bool)

(declare-fun tp!2369087 () Bool)

(declare-fun tp!2369086 () Bool)

(assert (=> b!7956312 (= e!4692790 (and tp!2369087 tp!2369086))))

(declare-fun b!7956313 () Bool)

(declare-fun tp!2369085 () Bool)

(assert (=> b!7956313 (= e!4692790 tp!2369085)))

(declare-fun b!7956314 () Bool)

(declare-fun tp!2369088 () Bool)

(declare-fun tp!2369089 () Bool)

(assert (=> b!7956314 (= e!4692790 (and tp!2369088 tp!2369089))))

(assert (=> b!7954376 (= tp!2367739 e!4692790)))

(assert (= (and b!7954376 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956311))

(assert (= (and b!7954376 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956312))

(assert (= (and b!7954376 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956313))

(assert (= (and b!7954376 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956314))

(declare-fun b!7956315 () Bool)

(declare-fun e!4692791 () Bool)

(assert (=> b!7956315 (= e!4692791 tp_is_empty!53501)))

(declare-fun b!7956316 () Bool)

(declare-fun tp!2369092 () Bool)

(declare-fun tp!2369091 () Bool)

(assert (=> b!7956316 (= e!4692791 (and tp!2369092 tp!2369091))))

(declare-fun b!7956317 () Bool)

(declare-fun tp!2369090 () Bool)

(assert (=> b!7956317 (= e!4692791 tp!2369090)))

(declare-fun b!7956318 () Bool)

(declare-fun tp!2369093 () Bool)

(declare-fun tp!2369094 () Bool)

(assert (=> b!7956318 (= e!4692791 (and tp!2369093 tp!2369094))))

(assert (=> b!7954376 (= tp!2367740 e!4692791)))

(assert (= (and b!7954376 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956315))

(assert (= (and b!7954376 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956316))

(assert (= (and b!7954376 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956317))

(assert (= (and b!7954376 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regOne!43471 baseR!116))))) b!7956318))

(declare-fun b!7956319 () Bool)

(declare-fun e!4692792 () Bool)

(assert (=> b!7956319 (= e!4692792 tp_is_empty!53501)))

(declare-fun b!7956320 () Bool)

(declare-fun tp!2369097 () Bool)

(declare-fun tp!2369096 () Bool)

(assert (=> b!7956320 (= e!4692792 (and tp!2369097 tp!2369096))))

(declare-fun b!7956321 () Bool)

(declare-fun tp!2369095 () Bool)

(assert (=> b!7956321 (= e!4692792 tp!2369095)))

(declare-fun b!7956322 () Bool)

(declare-fun tp!2369098 () Bool)

(declare-fun tp!2369099 () Bool)

(assert (=> b!7956322 (= e!4692792 (and tp!2369098 tp!2369099))))

(assert (=> b!7954490 (= tp!2367843 e!4692792)))

(assert (= (and b!7954490 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956319))

(assert (= (and b!7954490 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956320))

(assert (= (and b!7954490 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956321))

(assert (= (and b!7954490 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956322))

(declare-fun b!7956323 () Bool)

(declare-fun e!4692793 () Bool)

(assert (=> b!7956323 (= e!4692793 tp_is_empty!53501)))

(declare-fun b!7956324 () Bool)

(declare-fun tp!2369102 () Bool)

(declare-fun tp!2369101 () Bool)

(assert (=> b!7956324 (= e!4692793 (and tp!2369102 tp!2369101))))

(declare-fun b!7956325 () Bool)

(declare-fun tp!2369100 () Bool)

(assert (=> b!7956325 (= e!4692793 tp!2369100)))

(declare-fun b!7956326 () Bool)

(declare-fun tp!2369103 () Bool)

(declare-fun tp!2369104 () Bool)

(assert (=> b!7956326 (= e!4692793 (and tp!2369103 tp!2369104))))

(assert (=> b!7954490 (= tp!2367842 e!4692793)))

(assert (= (and b!7954490 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956323))

(assert (= (and b!7954490 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956324))

(assert (= (and b!7954490 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956325))

(assert (= (and b!7954490 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956326))

(declare-fun b!7956327 () Bool)

(declare-fun e!4692794 () Bool)

(assert (=> b!7956327 (= e!4692794 tp_is_empty!53501)))

(declare-fun b!7956328 () Bool)

(declare-fun tp!2369107 () Bool)

(declare-fun tp!2369106 () Bool)

(assert (=> b!7956328 (= e!4692794 (and tp!2369107 tp!2369106))))

(declare-fun b!7956329 () Bool)

(declare-fun tp!2369105 () Bool)

(assert (=> b!7956329 (= e!4692794 tp!2369105)))

(declare-fun b!7956330 () Bool)

(declare-fun tp!2369108 () Bool)

(declare-fun tp!2369109 () Bool)

(assert (=> b!7956330 (= e!4692794 (and tp!2369108 tp!2369109))))

(assert (=> b!7954409 (= tp!2367764 e!4692794)))

(assert (= (and b!7954409 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956327))

(assert (= (and b!7954409 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956328))

(assert (= (and b!7954409 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956329))

(assert (= (and b!7954409 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956330))

(declare-fun b!7956335 () Bool)

(declare-fun e!4692797 () Bool)

(assert (=> b!7956335 (= e!4692797 tp_is_empty!53501)))

(declare-fun b!7956336 () Bool)

(declare-fun tp!2369112 () Bool)

(declare-fun tp!2369111 () Bool)

(assert (=> b!7956336 (= e!4692797 (and tp!2369112 tp!2369111))))

(declare-fun b!7956337 () Bool)

(declare-fun tp!2369110 () Bool)

(assert (=> b!7956337 (= e!4692797 tp!2369110)))

(declare-fun b!7956338 () Bool)

(declare-fun tp!2369113 () Bool)

(declare-fun tp!2369114 () Bool)

(assert (=> b!7956338 (= e!4692797 (and tp!2369113 tp!2369114))))

(assert (=> b!7954409 (= tp!2367765 e!4692797)))

(assert (= (and b!7954409 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956335))

(assert (= (and b!7954409 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956336))

(assert (= (and b!7954409 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956337))

(assert (= (and b!7954409 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 r!24602))))) b!7956338))

(declare-fun b!7956339 () Bool)

(declare-fun e!4692798 () Bool)

(assert (=> b!7956339 (= e!4692798 tp_is_empty!53501)))

(declare-fun b!7956340 () Bool)

(declare-fun tp!2369117 () Bool)

(declare-fun tp!2369116 () Bool)

(assert (=> b!7956340 (= e!4692798 (and tp!2369117 tp!2369116))))

(declare-fun b!7956341 () Bool)

(declare-fun tp!2369115 () Bool)

(assert (=> b!7956341 (= e!4692798 tp!2369115)))

(declare-fun b!7956342 () Bool)

(declare-fun tp!2369118 () Bool)

(declare-fun tp!2369119 () Bool)

(assert (=> b!7956342 (= e!4692798 (and tp!2369118 tp!2369119))))

(assert (=> b!7954499 (= tp!2367851 e!4692798)))

(assert (= (and b!7954499 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956339))

(assert (= (and b!7954499 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956340))

(assert (= (and b!7954499 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956341))

(assert (= (and b!7954499 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956342))

(declare-fun b!7956345 () Bool)

(declare-fun e!4692800 () Bool)

(assert (=> b!7956345 (= e!4692800 tp_is_empty!53501)))

(declare-fun b!7956346 () Bool)

(declare-fun tp!2369122 () Bool)

(declare-fun tp!2369121 () Bool)

(assert (=> b!7956346 (= e!4692800 (and tp!2369122 tp!2369121))))

(declare-fun b!7956347 () Bool)

(declare-fun tp!2369120 () Bool)

(assert (=> b!7956347 (= e!4692800 tp!2369120)))

(declare-fun b!7956348 () Bool)

(declare-fun tp!2369123 () Bool)

(declare-fun tp!2369124 () Bool)

(assert (=> b!7956348 (= e!4692800 (and tp!2369123 tp!2369124))))

(assert (=> b!7954508 (= tp!2367864 e!4692800)))

(assert (= (and b!7954508 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956345))

(assert (= (and b!7954508 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956346))

(assert (= (and b!7954508 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956347))

(assert (= (and b!7954508 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956348))

(declare-fun b!7956356 () Bool)

(declare-fun e!4692807 () Bool)

(assert (=> b!7956356 (= e!4692807 tp_is_empty!53501)))

(declare-fun b!7956357 () Bool)

(declare-fun tp!2369127 () Bool)

(declare-fun tp!2369126 () Bool)

(assert (=> b!7956357 (= e!4692807 (and tp!2369127 tp!2369126))))

(declare-fun b!7956358 () Bool)

(declare-fun tp!2369125 () Bool)

(assert (=> b!7956358 (= e!4692807 tp!2369125)))

(declare-fun b!7956359 () Bool)

(declare-fun tp!2369128 () Bool)

(declare-fun tp!2369129 () Bool)

(assert (=> b!7956359 (= e!4692807 (and tp!2369128 tp!2369129))))

(assert (=> b!7954508 (= tp!2367865 e!4692807)))

(assert (= (and b!7954508 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956356))

(assert (= (and b!7954508 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956357))

(assert (= (and b!7954508 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956358))

(assert (= (and b!7954508 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regTwo!43470 r!24602))))) b!7956359))

(declare-fun b!7956360 () Bool)

(declare-fun e!4692808 () Bool)

(assert (=> b!7956360 (= e!4692808 tp_is_empty!53501)))

(declare-fun b!7956361 () Bool)

(declare-fun tp!2369132 () Bool)

(declare-fun tp!2369131 () Bool)

(assert (=> b!7956361 (= e!4692808 (and tp!2369132 tp!2369131))))

(declare-fun b!7956362 () Bool)

(declare-fun tp!2369130 () Bool)

(assert (=> b!7956362 (= e!4692808 tp!2369130)))

(declare-fun b!7956363 () Bool)

(declare-fun tp!2369133 () Bool)

(declare-fun tp!2369134 () Bool)

(assert (=> b!7956363 (= e!4692808 (and tp!2369133 tp!2369134))))

(assert (=> b!7954524 (= tp!2367884 e!4692808)))

(assert (= (and b!7954524 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956360))

(assert (= (and b!7954524 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956361))

(assert (= (and b!7954524 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956362))

(assert (= (and b!7954524 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956363))

(declare-fun b!7956364 () Bool)

(declare-fun e!4692809 () Bool)

(assert (=> b!7956364 (= e!4692809 tp_is_empty!53501)))

(declare-fun b!7956365 () Bool)

(declare-fun tp!2369137 () Bool)

(declare-fun tp!2369136 () Bool)

(assert (=> b!7956365 (= e!4692809 (and tp!2369137 tp!2369136))))

(declare-fun b!7956366 () Bool)

(declare-fun tp!2369135 () Bool)

(assert (=> b!7956366 (= e!4692809 tp!2369135)))

(declare-fun b!7956367 () Bool)

(declare-fun tp!2369138 () Bool)

(declare-fun tp!2369139 () Bool)

(assert (=> b!7956367 (= e!4692809 (and tp!2369138 tp!2369139))))

(assert (=> b!7954524 (= tp!2367885 e!4692809)))

(assert (= (and b!7954524 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956364))

(assert (= (and b!7954524 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956365))

(assert (= (and b!7954524 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956366))

(assert (= (and b!7954524 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 r!24602))))) b!7956367))

(declare-fun b!7956368 () Bool)

(declare-fun e!4692810 () Bool)

(assert (=> b!7956368 (= e!4692810 tp_is_empty!53501)))

(declare-fun b!7956369 () Bool)

(declare-fun tp!2369142 () Bool)

(declare-fun tp!2369141 () Bool)

(assert (=> b!7956369 (= e!4692810 (and tp!2369142 tp!2369141))))

(declare-fun b!7956370 () Bool)

(declare-fun tp!2369140 () Bool)

(assert (=> b!7956370 (= e!4692810 tp!2369140)))

(declare-fun b!7956371 () Bool)

(declare-fun tp!2369143 () Bool)

(declare-fun tp!2369144 () Bool)

(assert (=> b!7956371 (= e!4692810 (and tp!2369143 tp!2369144))))

(assert (=> b!7954616 (= tp!2367984 e!4692810)))

(assert (= (and b!7954616 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956368))

(assert (= (and b!7954616 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956369))

(assert (= (and b!7954616 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956370))

(assert (= (and b!7954616 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956371))

(declare-fun b!7956374 () Bool)

(declare-fun e!4692812 () Bool)

(assert (=> b!7956374 (= e!4692812 tp_is_empty!53501)))

(declare-fun b!7956375 () Bool)

(declare-fun tp!2369147 () Bool)

(declare-fun tp!2369146 () Bool)

(assert (=> b!7956375 (= e!4692812 (and tp!2369147 tp!2369146))))

(declare-fun b!7956376 () Bool)

(declare-fun tp!2369145 () Bool)

(assert (=> b!7956376 (= e!4692812 tp!2369145)))

(declare-fun b!7956377 () Bool)

(declare-fun tp!2369148 () Bool)

(declare-fun tp!2369149 () Bool)

(assert (=> b!7956377 (= e!4692812 (and tp!2369148 tp!2369149))))

(assert (=> b!7954616 (= tp!2367983 e!4692812)))

(assert (= (and b!7954616 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956374))

(assert (= (and b!7954616 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956375))

(assert (= (and b!7954616 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956376))

(assert (= (and b!7954616 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956377))

(declare-fun b!7956378 () Bool)

(declare-fun e!4692813 () Bool)

(assert (=> b!7956378 (= e!4692813 tp_is_empty!53501)))

(declare-fun b!7956379 () Bool)

(declare-fun tp!2369152 () Bool)

(declare-fun tp!2369151 () Bool)

(assert (=> b!7956379 (= e!4692813 (and tp!2369152 tp!2369151))))

(declare-fun b!7956380 () Bool)

(declare-fun tp!2369150 () Bool)

(assert (=> b!7956380 (= e!4692813 tp!2369150)))

(declare-fun b!7956381 () Bool)

(declare-fun tp!2369153 () Bool)

(declare-fun tp!2369154 () Bool)

(assert (=> b!7956381 (= e!4692813 (and tp!2369153 tp!2369154))))

(assert (=> b!7954444 (= tp!2367798 e!4692813)))

(assert (= (and b!7954444 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956378))

(assert (= (and b!7954444 ((_ is Concat!30478) (regOne!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956379))

(assert (= (and b!7954444 ((_ is Star!21479) (regOne!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956380))

(assert (= (and b!7954444 ((_ is Union!21479) (regOne!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956381))

(declare-fun b!7956382 () Bool)

(declare-fun e!4692814 () Bool)

(assert (=> b!7956382 (= e!4692814 tp_is_empty!53501)))

(declare-fun b!7956383 () Bool)

(declare-fun tp!2369157 () Bool)

(declare-fun tp!2369156 () Bool)

(assert (=> b!7956383 (= e!4692814 (and tp!2369157 tp!2369156))))

(declare-fun b!7956384 () Bool)

(declare-fun tp!2369155 () Bool)

(assert (=> b!7956384 (= e!4692814 tp!2369155)))

(declare-fun b!7956385 () Bool)

(declare-fun tp!2369158 () Bool)

(declare-fun tp!2369159 () Bool)

(assert (=> b!7956385 (= e!4692814 (and tp!2369158 tp!2369159))))

(assert (=> b!7954444 (= tp!2367797 e!4692814)))

(assert (= (and b!7954444 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956382))

(assert (= (and b!7954444 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956383))

(assert (= (and b!7954444 ((_ is Star!21479) (regTwo!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956384))

(assert (= (and b!7954444 ((_ is Union!21479) (regTwo!43470 (reg!21808 (reg!21808 baseR!116))))) b!7956385))

(declare-fun b!7956386 () Bool)

(declare-fun e!4692818 () Bool)

(assert (=> b!7956386 (= e!4692818 tp_is_empty!53501)))

(declare-fun b!7956387 () Bool)

(declare-fun tp!2369162 () Bool)

(declare-fun tp!2369161 () Bool)

(assert (=> b!7956387 (= e!4692818 (and tp!2369162 tp!2369161))))

(declare-fun b!7956388 () Bool)

(declare-fun tp!2369160 () Bool)

(assert (=> b!7956388 (= e!4692818 tp!2369160)))

(declare-fun b!7956389 () Bool)

(declare-fun tp!2369163 () Bool)

(declare-fun tp!2369164 () Bool)

(assert (=> b!7956389 (= e!4692818 (and tp!2369163 tp!2369164))))

(assert (=> b!7954452 (= tp!2367804 e!4692818)))

(assert (= (and b!7954452 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956386))

(assert (= (and b!7954452 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956387))

(assert (= (and b!7954452 ((_ is Star!21479) (regOne!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956388))

(assert (= (and b!7954452 ((_ is Union!21479) (regOne!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956389))

(declare-fun b!7956400 () Bool)

(declare-fun e!4692821 () Bool)

(assert (=> b!7956400 (= e!4692821 tp_is_empty!53501)))

(declare-fun b!7956401 () Bool)

(declare-fun tp!2369167 () Bool)

(declare-fun tp!2369166 () Bool)

(assert (=> b!7956401 (= e!4692821 (and tp!2369167 tp!2369166))))

(declare-fun b!7956402 () Bool)

(declare-fun tp!2369165 () Bool)

(assert (=> b!7956402 (= e!4692821 tp!2369165)))

(declare-fun b!7956403 () Bool)

(declare-fun tp!2369168 () Bool)

(declare-fun tp!2369169 () Bool)

(assert (=> b!7956403 (= e!4692821 (and tp!2369168 tp!2369169))))

(assert (=> b!7954452 (= tp!2367805 e!4692821)))

(assert (= (and b!7954452 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956400))

(assert (= (and b!7954452 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956401))

(assert (= (and b!7954452 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956402))

(assert (= (and b!7954452 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (reg!21808 baseR!116))))) b!7956403))

(declare-fun b!7956404 () Bool)

(declare-fun e!4692822 () Bool)

(assert (=> b!7956404 (= e!4692822 tp_is_empty!53501)))

(declare-fun b!7956405 () Bool)

(declare-fun tp!2369172 () Bool)

(declare-fun tp!2369171 () Bool)

(assert (=> b!7956405 (= e!4692822 (and tp!2369172 tp!2369171))))

(declare-fun b!7956406 () Bool)

(declare-fun tp!2369170 () Bool)

(assert (=> b!7956406 (= e!4692822 tp!2369170)))

(declare-fun b!7956407 () Bool)

(declare-fun tp!2369173 () Bool)

(declare-fun tp!2369174 () Bool)

(assert (=> b!7956407 (= e!4692822 (and tp!2369173 tp!2369174))))

(assert (=> b!7954515 (= tp!2367871 e!4692822)))

(assert (= (and b!7954515 ((_ is ElementMatch!21479) (reg!21808 (regOne!43470 (regTwo!43471 r!24602))))) b!7956404))

(assert (= (and b!7954515 ((_ is Concat!30478) (reg!21808 (regOne!43470 (regTwo!43471 r!24602))))) b!7956405))

(assert (= (and b!7954515 ((_ is Star!21479) (reg!21808 (regOne!43470 (regTwo!43471 r!24602))))) b!7956406))

(assert (= (and b!7954515 ((_ is Union!21479) (reg!21808 (regOne!43470 (regTwo!43471 r!24602))))) b!7956407))

(declare-fun b!7956408 () Bool)

(declare-fun e!4692823 () Bool)

(assert (=> b!7956408 (= e!4692823 tp_is_empty!53501)))

(declare-fun b!7956409 () Bool)

(declare-fun tp!2369177 () Bool)

(declare-fun tp!2369176 () Bool)

(assert (=> b!7956409 (= e!4692823 (and tp!2369177 tp!2369176))))

(declare-fun b!7956410 () Bool)

(declare-fun tp!2369175 () Bool)

(assert (=> b!7956410 (= e!4692823 tp!2369175)))

(declare-fun b!7956411 () Bool)

(declare-fun tp!2369178 () Bool)

(declare-fun tp!2369179 () Bool)

(assert (=> b!7956411 (= e!4692823 (and tp!2369178 tp!2369179))))

(assert (=> b!7954603 (= tp!2367968 e!4692823)))

(assert (= (and b!7954603 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956408))

(assert (= (and b!7954603 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956409))

(assert (= (and b!7954603 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956410))

(assert (= (and b!7954603 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956411))

(declare-fun b!7956412 () Bool)

(declare-fun e!4692824 () Bool)

(assert (=> b!7956412 (= e!4692824 tp_is_empty!53501)))

(declare-fun b!7956413 () Bool)

(declare-fun tp!2369182 () Bool)

(declare-fun tp!2369181 () Bool)

(assert (=> b!7956413 (= e!4692824 (and tp!2369182 tp!2369181))))

(declare-fun b!7956414 () Bool)

(declare-fun tp!2369180 () Bool)

(assert (=> b!7956414 (= e!4692824 tp!2369180)))

(declare-fun b!7956415 () Bool)

(declare-fun tp!2369183 () Bool)

(declare-fun tp!2369184 () Bool)

(assert (=> b!7956415 (= e!4692824 (and tp!2369183 tp!2369184))))

(assert (=> b!7954603 (= tp!2367967 e!4692824)))

(assert (= (and b!7954603 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956412))

(assert (= (and b!7954603 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956413))

(assert (= (and b!7954603 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956414))

(assert (= (and b!7954603 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956415))

(declare-fun b!7956416 () Bool)

(declare-fun e!4692825 () Bool)

(assert (=> b!7956416 (= e!4692825 tp_is_empty!53501)))

(declare-fun b!7956417 () Bool)

(declare-fun tp!2369187 () Bool)

(declare-fun tp!2369186 () Bool)

(assert (=> b!7956417 (= e!4692825 (and tp!2369187 tp!2369186))))

(declare-fun b!7956418 () Bool)

(declare-fun tp!2369185 () Bool)

(assert (=> b!7956418 (= e!4692825 tp!2369185)))

(declare-fun b!7956419 () Bool)

(declare-fun tp!2369188 () Bool)

(declare-fun tp!2369189 () Bool)

(assert (=> b!7956419 (= e!4692825 (and tp!2369188 tp!2369189))))

(assert (=> b!7954532 (= tp!2367894 e!4692825)))

(assert (= (and b!7954532 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956416))

(assert (= (and b!7954532 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956417))

(assert (= (and b!7954532 ((_ is Star!21479) (regOne!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956418))

(assert (= (and b!7954532 ((_ is Union!21479) (regOne!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956419))

(declare-fun b!7956422 () Bool)

(declare-fun e!4692827 () Bool)

(assert (=> b!7956422 (= e!4692827 tp_is_empty!53501)))

(declare-fun b!7956423 () Bool)

(declare-fun tp!2369192 () Bool)

(declare-fun tp!2369191 () Bool)

(assert (=> b!7956423 (= e!4692827 (and tp!2369192 tp!2369191))))

(declare-fun b!7956424 () Bool)

(declare-fun tp!2369190 () Bool)

(assert (=> b!7956424 (= e!4692827 tp!2369190)))

(declare-fun b!7956425 () Bool)

(declare-fun tp!2369193 () Bool)

(declare-fun tp!2369194 () Bool)

(assert (=> b!7956425 (= e!4692827 (and tp!2369193 tp!2369194))))

(assert (=> b!7954532 (= tp!2367895 e!4692827)))

(assert (= (and b!7954532 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956422))

(assert (= (and b!7954532 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956423))

(assert (= (and b!7954532 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956424))

(assert (= (and b!7954532 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (reg!21808 r!24602))))) b!7956425))

(declare-fun b!7956430 () Bool)

(declare-fun e!4692830 () Bool)

(assert (=> b!7956430 (= e!4692830 tp_is_empty!53501)))

(declare-fun b!7956431 () Bool)

(declare-fun tp!2369197 () Bool)

(declare-fun tp!2369196 () Bool)

(assert (=> b!7956431 (= e!4692830 (and tp!2369197 tp!2369196))))

(declare-fun b!7956432 () Bool)

(declare-fun tp!2369195 () Bool)

(assert (=> b!7956432 (= e!4692830 tp!2369195)))

(declare-fun b!7956433 () Bool)

(declare-fun tp!2369198 () Bool)

(declare-fun tp!2369199 () Bool)

(assert (=> b!7956433 (= e!4692830 (and tp!2369198 tp!2369199))))

(assert (=> b!7954572 (= tp!2367926 e!4692830)))

(assert (= (and b!7954572 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (reg!21808 r!24602))))) b!7956430))

(assert (= (and b!7954572 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (reg!21808 r!24602))))) b!7956431))

(assert (= (and b!7954572 ((_ is Star!21479) (reg!21808 (regTwo!43471 (reg!21808 r!24602))))) b!7956432))

(assert (= (and b!7954572 ((_ is Union!21479) (reg!21808 (regTwo!43471 (reg!21808 r!24602))))) b!7956433))

(declare-fun b!7956434 () Bool)

(declare-fun e!4692831 () Bool)

(assert (=> b!7956434 (= e!4692831 tp_is_empty!53501)))

(declare-fun b!7956435 () Bool)

(declare-fun tp!2369202 () Bool)

(declare-fun tp!2369201 () Bool)

(assert (=> b!7956435 (= e!4692831 (and tp!2369202 tp!2369201))))

(declare-fun b!7956436 () Bool)

(declare-fun tp!2369200 () Bool)

(assert (=> b!7956436 (= e!4692831 tp!2369200)))

(declare-fun b!7956437 () Bool)

(declare-fun tp!2369203 () Bool)

(declare-fun tp!2369204 () Bool)

(assert (=> b!7956437 (= e!4692831 (and tp!2369203 tp!2369204))))

(assert (=> b!7954403 (= tp!2367758 e!4692831)))

(assert (= (and b!7954403 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956434))

(assert (= (and b!7954403 ((_ is Concat!30478) (regOne!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956435))

(assert (= (and b!7954403 ((_ is Star!21479) (regOne!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956436))

(assert (= (and b!7954403 ((_ is Union!21479) (regOne!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956437))

(declare-fun b!7956440 () Bool)

(declare-fun e!4692833 () Bool)

(assert (=> b!7956440 (= e!4692833 tp_is_empty!53501)))

(declare-fun b!7956441 () Bool)

(declare-fun tp!2369207 () Bool)

(declare-fun tp!2369206 () Bool)

(assert (=> b!7956441 (= e!4692833 (and tp!2369207 tp!2369206))))

(declare-fun b!7956442 () Bool)

(declare-fun tp!2369205 () Bool)

(assert (=> b!7956442 (= e!4692833 tp!2369205)))

(declare-fun b!7956443 () Bool)

(declare-fun tp!2369208 () Bool)

(declare-fun tp!2369209 () Bool)

(assert (=> b!7956443 (= e!4692833 (and tp!2369208 tp!2369209))))

(assert (=> b!7954403 (= tp!2367757 e!4692833)))

(assert (= (and b!7954403 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956440))

(assert (= (and b!7954403 ((_ is Concat!30478) (regTwo!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956441))

(assert (= (and b!7954403 ((_ is Star!21479) (regTwo!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956442))

(assert (= (and b!7954403 ((_ is Union!21479) (regTwo!43470 (regOne!43471 (regOne!43470 r!24602))))) b!7956443))

(declare-fun b!7956444 () Bool)

(declare-fun e!4692834 () Bool)

(assert (=> b!7956444 (= e!4692834 tp_is_empty!53501)))

(declare-fun b!7956445 () Bool)

(declare-fun tp!2369212 () Bool)

(declare-fun tp!2369211 () Bool)

(assert (=> b!7956445 (= e!4692834 (and tp!2369212 tp!2369211))))

(declare-fun b!7956446 () Bool)

(declare-fun tp!2369210 () Bool)

(assert (=> b!7956446 (= e!4692834 tp!2369210)))

(declare-fun b!7956447 () Bool)

(declare-fun tp!2369213 () Bool)

(declare-fun tp!2369214 () Bool)

(assert (=> b!7956447 (= e!4692834 (and tp!2369213 tp!2369214))))

(assert (=> b!7954581 (= tp!2367939 e!4692834)))

(assert (= (and b!7954581 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956444))

(assert (= (and b!7954581 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956445))

(assert (= (and b!7954581 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956446))

(assert (= (and b!7954581 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956447))

(declare-fun b!7956458 () Bool)

(declare-fun e!4692840 () Bool)

(assert (=> b!7956458 (= e!4692840 tp_is_empty!53501)))

(declare-fun b!7956459 () Bool)

(declare-fun tp!2369217 () Bool)

(declare-fun tp!2369216 () Bool)

(assert (=> b!7956459 (= e!4692840 (and tp!2369217 tp!2369216))))

(declare-fun b!7956460 () Bool)

(declare-fun tp!2369215 () Bool)

(assert (=> b!7956460 (= e!4692840 tp!2369215)))

(declare-fun b!7956461 () Bool)

(declare-fun tp!2369218 () Bool)

(declare-fun tp!2369219 () Bool)

(assert (=> b!7956461 (= e!4692840 (and tp!2369218 tp!2369219))))

(assert (=> b!7954581 (= tp!2367940 e!4692840)))

(assert (= (and b!7954581 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956458))

(assert (= (and b!7954581 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956459))

(assert (= (and b!7954581 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956460))

(assert (= (and b!7954581 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regTwo!43470 baseR!116))))) b!7956461))

(declare-fun b!7956462 () Bool)

(declare-fun e!4692841 () Bool)

(assert (=> b!7956462 (= e!4692841 tp_is_empty!53501)))

(declare-fun b!7956463 () Bool)

(declare-fun tp!2369222 () Bool)

(declare-fun tp!2369221 () Bool)

(assert (=> b!7956463 (= e!4692841 (and tp!2369222 tp!2369221))))

(declare-fun b!7956464 () Bool)

(declare-fun tp!2369220 () Bool)

(assert (=> b!7956464 (= e!4692841 tp!2369220)))

(declare-fun b!7956465 () Bool)

(declare-fun tp!2369223 () Bool)

(declare-fun tp!2369224 () Bool)

(assert (=> b!7956465 (= e!4692841 (and tp!2369223 tp!2369224))))

(assert (=> b!7954412 (= tp!2367766 e!4692841)))

(assert (= (and b!7954412 ((_ is ElementMatch!21479) (reg!21808 (regOne!43471 (regOne!43471 r!24602))))) b!7956462))

(assert (= (and b!7954412 ((_ is Concat!30478) (reg!21808 (regOne!43471 (regOne!43471 r!24602))))) b!7956463))

(assert (= (and b!7954412 ((_ is Star!21479) (reg!21808 (regOne!43471 (regOne!43471 r!24602))))) b!7956464))

(assert (= (and b!7954412 ((_ is Union!21479) (reg!21808 (regOne!43471 (regOne!43471 r!24602))))) b!7956465))

(declare-fun b!7956466 () Bool)

(declare-fun e!4692842 () Bool)

(assert (=> b!7956466 (= e!4692842 tp_is_empty!53501)))

(declare-fun b!7956467 () Bool)

(declare-fun tp!2369227 () Bool)

(declare-fun tp!2369226 () Bool)

(assert (=> b!7956467 (= e!4692842 (and tp!2369227 tp!2369226))))

(declare-fun b!7956468 () Bool)

(declare-fun tp!2369225 () Bool)

(assert (=> b!7956468 (= e!4692842 tp!2369225)))

(declare-fun b!7956469 () Bool)

(declare-fun tp!2369228 () Bool)

(declare-fun tp!2369229 () Bool)

(assert (=> b!7956469 (= e!4692842 (and tp!2369228 tp!2369229))))

(assert (=> b!7954502 (= tp!2367858 e!4692842)))

(assert (= (and b!7954502 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956466))

(assert (= (and b!7954502 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956467))

(assert (= (and b!7954502 ((_ is Star!21479) (regOne!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956468))

(assert (= (and b!7954502 ((_ is Union!21479) (regOne!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956469))

(declare-fun b!7956470 () Bool)

(declare-fun e!4692843 () Bool)

(assert (=> b!7956470 (= e!4692843 tp_is_empty!53501)))

(declare-fun b!7956471 () Bool)

(declare-fun tp!2369232 () Bool)

(declare-fun tp!2369231 () Bool)

(assert (=> b!7956471 (= e!4692843 (and tp!2369232 tp!2369231))))

(declare-fun b!7956472 () Bool)

(declare-fun tp!2369230 () Bool)

(assert (=> b!7956472 (= e!4692843 tp!2369230)))

(declare-fun b!7956473 () Bool)

(declare-fun tp!2369233 () Bool)

(declare-fun tp!2369234 () Bool)

(assert (=> b!7956473 (= e!4692843 (and tp!2369233 tp!2369234))))

(assert (=> b!7954502 (= tp!2367857 e!4692843)))

(assert (= (and b!7954502 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956470))

(assert (= (and b!7954502 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956471))

(assert (= (and b!7954502 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956472))

(assert (= (and b!7954502 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regOne!43470 baseR!116))))) b!7956473))

(declare-fun b!7956474 () Bool)

(declare-fun e!4692844 () Bool)

(assert (=> b!7956474 (= e!4692844 tp_is_empty!53501)))

(declare-fun b!7956475 () Bool)

(declare-fun tp!2369237 () Bool)

(declare-fun tp!2369236 () Bool)

(assert (=> b!7956475 (= e!4692844 (and tp!2369237 tp!2369236))))

(declare-fun b!7956476 () Bool)

(declare-fun tp!2369235 () Bool)

(assert (=> b!7956476 (= e!4692844 tp!2369235)))

(declare-fun b!7956477 () Bool)

(declare-fun tp!2369238 () Bool)

(declare-fun tp!2369239 () Bool)

(assert (=> b!7956477 (= e!4692844 (and tp!2369238 tp!2369239))))

(assert (=> b!7954511 (= tp!2367866 e!4692844)))

(assert (= (and b!7954511 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956474))

(assert (= (and b!7954511 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956475))

(assert (= (and b!7954511 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956476))

(assert (= (and b!7954511 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regTwo!43470 r!24602))))) b!7956477))

(declare-fun b!7956478 () Bool)

(declare-fun e!4692845 () Bool)

(assert (=> b!7956478 (= e!4692845 tp_is_empty!53501)))

(declare-fun b!7956479 () Bool)

(declare-fun tp!2369242 () Bool)

(declare-fun tp!2369241 () Bool)

(assert (=> b!7956479 (= e!4692845 (and tp!2369242 tp!2369241))))

(declare-fun b!7956480 () Bool)

(declare-fun tp!2369240 () Bool)

(assert (=> b!7956480 (= e!4692845 tp!2369240)))

(declare-fun b!7956481 () Bool)

(declare-fun tp!2369243 () Bool)

(declare-fun tp!2369244 () Bool)

(assert (=> b!7956481 (= e!4692845 (and tp!2369243 tp!2369244))))

(assert (=> b!7954388 (= tp!2367749 e!4692845)))

(assert (= (and b!7954388 ((_ is ElementMatch!21479) (regOne!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956478))

(assert (= (and b!7954388 ((_ is Concat!30478) (regOne!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956479))

(assert (= (and b!7954388 ((_ is Star!21479) (regOne!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956480))

(assert (= (and b!7954388 ((_ is Union!21479) (regOne!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956481))

(declare-fun b!7956482 () Bool)

(declare-fun e!4692846 () Bool)

(assert (=> b!7956482 (= e!4692846 tp_is_empty!53501)))

(declare-fun b!7956483 () Bool)

(declare-fun tp!2369247 () Bool)

(declare-fun tp!2369246 () Bool)

(assert (=> b!7956483 (= e!4692846 (and tp!2369247 tp!2369246))))

(declare-fun b!7956484 () Bool)

(declare-fun tp!2369245 () Bool)

(assert (=> b!7956484 (= e!4692846 tp!2369245)))

(declare-fun b!7956485 () Bool)

(declare-fun tp!2369248 () Bool)

(declare-fun tp!2369249 () Bool)

(assert (=> b!7956485 (= e!4692846 (and tp!2369248 tp!2369249))))

(assert (=> b!7954388 (= tp!2367750 e!4692846)))

(assert (= (and b!7954388 ((_ is ElementMatch!21479) (regTwo!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956482))

(assert (= (and b!7954388 ((_ is Concat!30478) (regTwo!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956483))

(assert (= (and b!7954388 ((_ is Star!21479) (regTwo!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956484))

(assert (= (and b!7954388 ((_ is Union!21479) (regTwo!43471 (reg!21808 (regOne!43470 r!24602))))) b!7956485))

(declare-fun b!7956488 () Bool)

(declare-fun e!4692848 () Bool)

(assert (=> b!7956488 (= e!4692848 tp_is_empty!53501)))

(declare-fun b!7956489 () Bool)

(declare-fun tp!2369252 () Bool)

(declare-fun tp!2369251 () Bool)

(assert (=> b!7956489 (= e!4692848 (and tp!2369252 tp!2369251))))

(declare-fun b!7956490 () Bool)

(declare-fun tp!2369250 () Bool)

(assert (=> b!7956490 (= e!4692848 tp!2369250)))

(declare-fun b!7956491 () Bool)

(declare-fun tp!2369253 () Bool)

(declare-fun tp!2369254 () Bool)

(assert (=> b!7956491 (= e!4692848 (and tp!2369253 tp!2369254))))

(assert (=> b!7954391 (= tp!2367751 e!4692848)))

(assert (= (and b!7954391 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regOne!43471 r!24602))))) b!7956488))

(assert (= (and b!7954391 ((_ is Concat!30478) (reg!21808 (reg!21808 (regOne!43471 r!24602))))) b!7956489))

(assert (= (and b!7954391 ((_ is Star!21479) (reg!21808 (reg!21808 (regOne!43471 r!24602))))) b!7956490))

(assert (= (and b!7954391 ((_ is Union!21479) (reg!21808 (reg!21808 (regOne!43471 r!24602))))) b!7956491))

(declare-fun b!7956494 () Bool)

(declare-fun e!4692850 () Bool)

(assert (=> b!7956494 (= e!4692850 tp_is_empty!53501)))

(declare-fun b!7956495 () Bool)

(declare-fun tp!2369257 () Bool)

(declare-fun tp!2369256 () Bool)

(assert (=> b!7956495 (= e!4692850 (and tp!2369257 tp!2369256))))

(declare-fun b!7956496 () Bool)

(declare-fun tp!2369255 () Bool)

(assert (=> b!7956496 (= e!4692850 tp!2369255)))

(declare-fun b!7956497 () Bool)

(declare-fun tp!2369258 () Bool)

(declare-fun tp!2369259 () Bool)

(assert (=> b!7956497 (= e!4692850 (and tp!2369258 tp!2369259))))

(assert (=> b!7954518 (= tp!2367878 e!4692850)))

(assert (= (and b!7954518 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956494))

(assert (= (and b!7954518 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956495))

(assert (= (and b!7954518 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956496))

(assert (= (and b!7954518 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956497))

(declare-fun b!7956505 () Bool)

(declare-fun e!4692858 () Bool)

(assert (=> b!7956505 (= e!4692858 tp_is_empty!53501)))

(declare-fun b!7956508 () Bool)

(declare-fun tp!2369262 () Bool)

(declare-fun tp!2369261 () Bool)

(assert (=> b!7956508 (= e!4692858 (and tp!2369262 tp!2369261))))

(declare-fun b!7956509 () Bool)

(declare-fun tp!2369260 () Bool)

(assert (=> b!7956509 (= e!4692858 tp!2369260)))

(declare-fun b!7956510 () Bool)

(declare-fun tp!2369263 () Bool)

(declare-fun tp!2369264 () Bool)

(assert (=> b!7956510 (= e!4692858 (and tp!2369263 tp!2369264))))

(assert (=> b!7954518 (= tp!2367877 e!4692858)))

(assert (= (and b!7954518 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956505))

(assert (= (and b!7954518 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956508))

(assert (= (and b!7954518 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956509))

(assert (= (and b!7954518 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regTwo!43471 r!24602))))) b!7956510))

(declare-fun b!7956511 () Bool)

(declare-fun e!4692859 () Bool)

(assert (=> b!7956511 (= e!4692859 tp_is_empty!53501)))

(declare-fun b!7956512 () Bool)

(declare-fun tp!2369267 () Bool)

(declare-fun tp!2369266 () Bool)

(assert (=> b!7956512 (= e!4692859 (and tp!2369267 tp!2369266))))

(declare-fun b!7956513 () Bool)

(declare-fun tp!2369265 () Bool)

(assert (=> b!7956513 (= e!4692859 tp!2369265)))

(declare-fun b!7956514 () Bool)

(declare-fun tp!2369268 () Bool)

(declare-fun tp!2369269 () Bool)

(assert (=> b!7956514 (= e!4692859 (and tp!2369268 tp!2369269))))

(assert (=> b!7954433 (= tp!2367781 e!4692859)))

(assert (= (and b!7954433 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regOne!43470 r!24602))))) b!7956511))

(assert (= (and b!7954433 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regOne!43470 r!24602))))) b!7956512))

(assert (= (and b!7954433 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regOne!43470 r!24602))))) b!7956513))

(assert (= (and b!7954433 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regOne!43470 r!24602))))) b!7956514))

(declare-fun b!7956515 () Bool)

(declare-fun e!4692860 () Bool)

(assert (=> b!7956515 (= e!4692860 tp_is_empty!53501)))

(declare-fun b!7956516 () Bool)

(declare-fun tp!2369272 () Bool)

(declare-fun tp!2369271 () Bool)

(assert (=> b!7956516 (= e!4692860 (and tp!2369272 tp!2369271))))

(declare-fun b!7956517 () Bool)

(declare-fun tp!2369270 () Bool)

(assert (=> b!7956517 (= e!4692860 tp!2369270)))

(declare-fun b!7956518 () Bool)

(declare-fun tp!2369273 () Bool)

(declare-fun tp!2369274 () Bool)

(assert (=> b!7956518 (= e!4692860 (and tp!2369273 tp!2369274))))

(assert (=> b!7954526 (= tp!2367888 e!4692860)))

(assert (= (and b!7954526 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956515))

(assert (= (and b!7954526 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956516))

(assert (= (and b!7954526 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956517))

(assert (= (and b!7954526 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956518))

(declare-fun b!7956519 () Bool)

(declare-fun e!4692861 () Bool)

(assert (=> b!7956519 (= e!4692861 tp_is_empty!53501)))

(declare-fun b!7956520 () Bool)

(declare-fun tp!2369277 () Bool)

(declare-fun tp!2369276 () Bool)

(assert (=> b!7956520 (= e!4692861 (and tp!2369277 tp!2369276))))

(declare-fun b!7956521 () Bool)

(declare-fun tp!2369275 () Bool)

(assert (=> b!7956521 (= e!4692861 tp!2369275)))

(declare-fun b!7956522 () Bool)

(declare-fun tp!2369278 () Bool)

(declare-fun tp!2369279 () Bool)

(assert (=> b!7956522 (= e!4692861 (and tp!2369278 tp!2369279))))

(assert (=> b!7954526 (= tp!2367887 e!4692861)))

(assert (= (and b!7954526 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956519))

(assert (= (and b!7954526 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956520))

(assert (= (and b!7954526 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956521))

(assert (= (and b!7954526 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regTwo!43470 r!24602))))) b!7956522))

(declare-fun b!7956525 () Bool)

(declare-fun e!4692862 () Bool)

(assert (=> b!7956525 (= e!4692862 tp_is_empty!53501)))

(declare-fun b!7956526 () Bool)

(declare-fun tp!2369282 () Bool)

(declare-fun tp!2369281 () Bool)

(assert (=> b!7956526 (= e!4692862 (and tp!2369282 tp!2369281))))

(declare-fun b!7956527 () Bool)

(declare-fun tp!2369280 () Bool)

(assert (=> b!7956527 (= e!4692862 tp!2369280)))

(declare-fun b!7956528 () Bool)

(declare-fun tp!2369283 () Bool)

(declare-fun tp!2369284 () Bool)

(assert (=> b!7956528 (= e!4692862 (and tp!2369283 tp!2369284))))

(assert (=> b!7954442 (= tp!2367794 e!4692862)))

(assert (= (and b!7954442 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956525))

(assert (= (and b!7954442 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956526))

(assert (= (and b!7954442 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956527))

(assert (= (and b!7954442 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956528))

(declare-fun b!7956529 () Bool)

(declare-fun e!4692864 () Bool)

(assert (=> b!7956529 (= e!4692864 tp_is_empty!53501)))

(declare-fun b!7956530 () Bool)

(declare-fun tp!2369287 () Bool)

(declare-fun tp!2369286 () Bool)

(assert (=> b!7956530 (= e!4692864 (and tp!2369287 tp!2369286))))

(declare-fun b!7956531 () Bool)

(declare-fun tp!2369285 () Bool)

(assert (=> b!7956531 (= e!4692864 tp!2369285)))

(declare-fun b!7956533 () Bool)

(declare-fun tp!2369288 () Bool)

(declare-fun tp!2369289 () Bool)

(assert (=> b!7956533 (= e!4692864 (and tp!2369288 tp!2369289))))

(assert (=> b!7954442 (= tp!2367795 e!4692864)))

(assert (= (and b!7954442 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956529))

(assert (= (and b!7954442 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956530))

(assert (= (and b!7954442 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956531))

(assert (= (and b!7954442 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regOne!43471 r!24602))))) b!7956533))

(declare-fun b!7956535 () Bool)

(declare-fun e!4692866 () Bool)

(assert (=> b!7956535 (= e!4692866 tp_is_empty!53501)))

(declare-fun b!7956536 () Bool)

(declare-fun tp!2369292 () Bool)

(declare-fun tp!2369291 () Bool)

(assert (=> b!7956536 (= e!4692866 (and tp!2369292 tp!2369291))))

(declare-fun b!7956537 () Bool)

(declare-fun tp!2369290 () Bool)

(assert (=> b!7956537 (= e!4692866 tp!2369290)))

(declare-fun b!7956538 () Bool)

(declare-fun tp!2369293 () Bool)

(declare-fun tp!2369294 () Bool)

(assert (=> b!7956538 (= e!4692866 (and tp!2369293 tp!2369294))))

(assert (=> b!7954488 (= tp!2367839 e!4692866)))

(assert (= (and b!7954488 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956535))

(assert (= (and b!7954488 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956536))

(assert (= (and b!7954488 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956537))

(assert (= (and b!7954488 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956538))

(declare-fun b!7956548 () Bool)

(declare-fun e!4692874 () Bool)

(assert (=> b!7956548 (= e!4692874 tp_is_empty!53501)))

(declare-fun b!7956549 () Bool)

(declare-fun tp!2369297 () Bool)

(declare-fun tp!2369296 () Bool)

(assert (=> b!7956549 (= e!4692874 (and tp!2369297 tp!2369296))))

(declare-fun b!7956550 () Bool)

(declare-fun tp!2369295 () Bool)

(assert (=> b!7956550 (= e!4692874 tp!2369295)))

(declare-fun b!7956551 () Bool)

(declare-fun tp!2369298 () Bool)

(declare-fun tp!2369299 () Bool)

(assert (=> b!7956551 (= e!4692874 (and tp!2369298 tp!2369299))))

(assert (=> b!7954488 (= tp!2367840 e!4692874)))

(assert (= (and b!7954488 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956548))

(assert (= (and b!7954488 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956549))

(assert (= (and b!7954488 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956550))

(assert (= (and b!7954488 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regOne!43471 baseR!116))))) b!7956551))

(declare-fun b!7956552 () Bool)

(declare-fun e!4692875 () Bool)

(assert (=> b!7956552 (= e!4692875 tp_is_empty!53501)))

(declare-fun b!7956553 () Bool)

(declare-fun tp!2369302 () Bool)

(declare-fun tp!2369301 () Bool)

(assert (=> b!7956553 (= e!4692875 (and tp!2369302 tp!2369301))))

(declare-fun b!7956554 () Bool)

(declare-fun tp!2369300 () Bool)

(assert (=> b!7956554 (= e!4692875 tp!2369300)))

(declare-fun b!7956555 () Bool)

(declare-fun tp!2369303 () Bool)

(declare-fun tp!2369304 () Bool)

(assert (=> b!7956555 (= e!4692875 (and tp!2369303 tp!2369304))))

(assert (=> b!7954464 (= tp!2367814 e!4692875)))

(assert (= (and b!7954464 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956552))

(assert (= (and b!7954464 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956553))

(assert (= (and b!7954464 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956554))

(assert (= (and b!7954464 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956555))

(declare-fun b!7956556 () Bool)

(declare-fun e!4692876 () Bool)

(assert (=> b!7956556 (= e!4692876 tp_is_empty!53501)))

(declare-fun b!7956557 () Bool)

(declare-fun tp!2369307 () Bool)

(declare-fun tp!2369306 () Bool)

(assert (=> b!7956557 (= e!4692876 (and tp!2369307 tp!2369306))))

(declare-fun b!7956558 () Bool)

(declare-fun tp!2369305 () Bool)

(assert (=> b!7956558 (= e!4692876 tp!2369305)))

(declare-fun b!7956559 () Bool)

(declare-fun tp!2369308 () Bool)

(declare-fun tp!2369309 () Bool)

(assert (=> b!7956559 (= e!4692876 (and tp!2369308 tp!2369309))))

(assert (=> b!7954464 (= tp!2367815 e!4692876)))

(assert (= (and b!7954464 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956556))

(assert (= (and b!7954464 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956557))

(assert (= (and b!7954464 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956558))

(assert (= (and b!7954464 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regOne!43470 baseR!116))))) b!7956559))

(declare-fun b!7956562 () Bool)

(declare-fun e!4692878 () Bool)

(assert (=> b!7956562 (= e!4692878 tp_is_empty!53501)))

(declare-fun b!7956563 () Bool)

(declare-fun tp!2369312 () Bool)

(declare-fun tp!2369311 () Bool)

(assert (=> b!7956563 (= e!4692878 (and tp!2369312 tp!2369311))))

(declare-fun b!7956564 () Bool)

(declare-fun tp!2369310 () Bool)

(assert (=> b!7956564 (= e!4692878 tp!2369310)))

(declare-fun b!7956565 () Bool)

(declare-fun tp!2369313 () Bool)

(declare-fun tp!2369314 () Bool)

(assert (=> b!7956565 (= e!4692878 (and tp!2369313 tp!2369314))))

(assert (=> b!7954560 (= tp!2367911 e!4692878)))

(assert (= (and b!7954560 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956562))

(assert (= (and b!7954560 ((_ is Concat!30478) (reg!21808 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956563))

(assert (= (and b!7954560 ((_ is Star!21479) (reg!21808 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956564))

(assert (= (and b!7954560 ((_ is Union!21479) (reg!21808 (regTwo!43470 (regTwo!43471 baseR!116))))) b!7956565))

(declare-fun b!7956575 () Bool)

(declare-fun e!4692886 () Bool)

(assert (=> b!7956575 (= e!4692886 tp_is_empty!53501)))

(declare-fun b!7956576 () Bool)

(declare-fun tp!2369317 () Bool)

(declare-fun tp!2369316 () Bool)

(assert (=> b!7956576 (= e!4692886 (and tp!2369317 tp!2369316))))

(declare-fun b!7956577 () Bool)

(declare-fun tp!2369315 () Bool)

(assert (=> b!7956577 (= e!4692886 tp!2369315)))

(declare-fun b!7956578 () Bool)

(declare-fun tp!2369318 () Bool)

(declare-fun tp!2369319 () Bool)

(assert (=> b!7956578 (= e!4692886 (and tp!2369318 tp!2369319))))

(assert (=> b!7954474 (= tp!2367823 e!4692886)))

(assert (= (and b!7954474 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956575))

(assert (= (and b!7954474 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956576))

(assert (= (and b!7954474 ((_ is Star!21479) (regOne!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956577))

(assert (= (and b!7954474 ((_ is Union!21479) (regOne!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956578))

(declare-fun b!7956579 () Bool)

(declare-fun e!4692887 () Bool)

(assert (=> b!7956579 (= e!4692887 tp_is_empty!53501)))

(declare-fun b!7956580 () Bool)

(declare-fun tp!2369322 () Bool)

(declare-fun tp!2369321 () Bool)

(assert (=> b!7956580 (= e!4692887 (and tp!2369322 tp!2369321))))

(declare-fun b!7956581 () Bool)

(declare-fun tp!2369320 () Bool)

(assert (=> b!7956581 (= e!4692887 tp!2369320)))

(declare-fun b!7956582 () Bool)

(declare-fun tp!2369323 () Bool)

(declare-fun tp!2369324 () Bool)

(assert (=> b!7956582 (= e!4692887 (and tp!2369323 tp!2369324))))

(assert (=> b!7954474 (= tp!2367822 e!4692887)))

(assert (= (and b!7954474 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956579))

(assert (= (and b!7954474 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956580))

(assert (= (and b!7954474 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956581))

(assert (= (and b!7954474 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (reg!21808 baseR!116))))) b!7956582))

(declare-fun b!7956583 () Bool)

(declare-fun e!4692888 () Bool)

(assert (=> b!7956583 (= e!4692888 tp_is_empty!53501)))

(declare-fun b!7956584 () Bool)

(declare-fun tp!2369327 () Bool)

(declare-fun tp!2369326 () Bool)

(assert (=> b!7956584 (= e!4692888 (and tp!2369327 tp!2369326))))

(declare-fun b!7956585 () Bool)

(declare-fun tp!2369325 () Bool)

(assert (=> b!7956585 (= e!4692888 tp!2369325)))

(declare-fun b!7956586 () Bool)

(declare-fun tp!2369328 () Bool)

(declare-fun tp!2369329 () Bool)

(assert (=> b!7956586 (= e!4692888 (and tp!2369328 tp!2369329))))

(assert (=> b!7954614 (= tp!2367980 e!4692888)))

(assert (= (and b!7954614 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956583))

(assert (= (and b!7954614 ((_ is Concat!30478) (regOne!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956584))

(assert (= (and b!7954614 ((_ is Star!21479) (regOne!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956585))

(assert (= (and b!7954614 ((_ is Union!21479) (regOne!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956586))

(declare-fun b!7956587 () Bool)

(declare-fun e!4692889 () Bool)

(assert (=> b!7956587 (= e!4692889 tp_is_empty!53501)))

(declare-fun b!7956588 () Bool)

(declare-fun tp!2369332 () Bool)

(declare-fun tp!2369331 () Bool)

(assert (=> b!7956588 (= e!4692889 (and tp!2369332 tp!2369331))))

(declare-fun b!7956589 () Bool)

(declare-fun tp!2369330 () Bool)

(assert (=> b!7956589 (= e!4692889 tp!2369330)))

(declare-fun b!7956590 () Bool)

(declare-fun tp!2369333 () Bool)

(declare-fun tp!2369334 () Bool)

(assert (=> b!7956590 (= e!4692889 (and tp!2369333 tp!2369334))))

(assert (=> b!7954614 (= tp!2367981 e!4692889)))

(assert (= (and b!7954614 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956587))

(assert (= (and b!7954614 ((_ is Concat!30478) (regTwo!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956588))

(assert (= (and b!7954614 ((_ is Star!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956589))

(assert (= (and b!7954614 ((_ is Union!21479) (regTwo!43471 (regOne!43471 (regTwo!43470 baseR!116))))) b!7956590))

(declare-fun b!7956600 () Bool)

(declare-fun e!4692897 () Bool)

(assert (=> b!7956600 (= e!4692897 tp_is_empty!53501)))

(declare-fun b!7956601 () Bool)

(declare-fun tp!2369337 () Bool)

(declare-fun tp!2369336 () Bool)

(assert (=> b!7956601 (= e!4692897 (and tp!2369337 tp!2369336))))

(declare-fun b!7956602 () Bool)

(declare-fun tp!2369335 () Bool)

(assert (=> b!7956602 (= e!4692897 tp!2369335)))

(declare-fun b!7956603 () Bool)

(declare-fun tp!2369338 () Bool)

(declare-fun tp!2369339 () Bool)

(assert (=> b!7956603 (= e!4692897 (and tp!2369338 tp!2369339))))

(assert (=> b!7954543 (= tp!2367901 e!4692897)))

(assert (= (and b!7954543 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regTwo!43471 baseR!116))))) b!7956600))

(assert (= (and b!7954543 ((_ is Concat!30478) (reg!21808 (reg!21808 (regTwo!43471 baseR!116))))) b!7956601))

(assert (= (and b!7954543 ((_ is Star!21479) (reg!21808 (reg!21808 (regTwo!43471 baseR!116))))) b!7956602))

(assert (= (and b!7954543 ((_ is Union!21479) (reg!21808 (reg!21808 (regTwo!43471 baseR!116))))) b!7956603))

(declare-fun b!7956604 () Bool)

(declare-fun e!4692898 () Bool)

(assert (=> b!7956604 (= e!4692898 tp_is_empty!53501)))

(declare-fun b!7956605 () Bool)

(declare-fun tp!2369342 () Bool)

(declare-fun tp!2369341 () Bool)

(assert (=> b!7956605 (= e!4692898 (and tp!2369342 tp!2369341))))

(declare-fun b!7956606 () Bool)

(declare-fun tp!2369340 () Bool)

(assert (=> b!7956606 (= e!4692898 tp!2369340)))

(declare-fun b!7956607 () Bool)

(declare-fun tp!2369343 () Bool)

(declare-fun tp!2369344 () Bool)

(assert (=> b!7956607 (= e!4692898 (and tp!2369343 tp!2369344))))

(assert (=> b!7954575 (= tp!2367933 e!4692898)))

(assert (= (and b!7954575 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956604))

(assert (= (and b!7954575 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956605))

(assert (= (and b!7954575 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956606))

(assert (= (and b!7954575 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956607))

(declare-fun b!7956608 () Bool)

(declare-fun e!4692899 () Bool)

(assert (=> b!7956608 (= e!4692899 tp_is_empty!53501)))

(declare-fun b!7956609 () Bool)

(declare-fun tp!2369347 () Bool)

(declare-fun tp!2369346 () Bool)

(assert (=> b!7956609 (= e!4692899 (and tp!2369347 tp!2369346))))

(declare-fun b!7956610 () Bool)

(declare-fun tp!2369345 () Bool)

(assert (=> b!7956610 (= e!4692899 tp!2369345)))

(declare-fun b!7956611 () Bool)

(declare-fun tp!2369348 () Bool)

(declare-fun tp!2369349 () Bool)

(assert (=> b!7956611 (= e!4692899 (and tp!2369348 tp!2369349))))

(assert (=> b!7954575 (= tp!2367932 e!4692899)))

(assert (= (and b!7954575 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956608))

(assert (= (and b!7954575 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956609))

(assert (= (and b!7954575 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956610))

(assert (= (and b!7954575 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regTwo!43470 baseR!116))))) b!7956611))

(declare-fun b!7956612 () Bool)

(declare-fun e!4692900 () Bool)

(assert (=> b!7956612 (= e!4692900 tp_is_empty!53501)))

(declare-fun b!7956613 () Bool)

(declare-fun tp!2369352 () Bool)

(declare-fun tp!2369351 () Bool)

(assert (=> b!7956613 (= e!4692900 (and tp!2369352 tp!2369351))))

(declare-fun b!7956614 () Bool)

(declare-fun tp!2369350 () Bool)

(assert (=> b!7956614 (= e!4692900 tp!2369350)))

(declare-fun b!7956615 () Bool)

(declare-fun tp!2369353 () Bool)

(declare-fun tp!2369354 () Bool)

(assert (=> b!7956615 (= e!4692900 (and tp!2369353 tp!2369354))))

(assert (=> b!7954584 (= tp!2367941 e!4692900)))

(assert (= (and b!7954584 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (regTwo!43470 baseR!116))))) b!7956612))

(assert (= (and b!7954584 ((_ is Concat!30478) (reg!21808 (reg!21808 (regTwo!43470 baseR!116))))) b!7956613))

(assert (= (and b!7954584 ((_ is Star!21479) (reg!21808 (reg!21808 (regTwo!43470 baseR!116))))) b!7956614))

(assert (= (and b!7954584 ((_ is Union!21479) (reg!21808 (reg!21808 (regTwo!43470 baseR!116))))) b!7956615))

(declare-fun b!7956626 () Bool)

(declare-fun e!4692906 () Bool)

(assert (=> b!7956626 (= e!4692906 tp_is_empty!53501)))

(declare-fun b!7956627 () Bool)

(declare-fun tp!2369357 () Bool)

(declare-fun tp!2369356 () Bool)

(assert (=> b!7956627 (= e!4692906 (and tp!2369357 tp!2369356))))

(declare-fun b!7956628 () Bool)

(declare-fun tp!2369355 () Bool)

(assert (=> b!7956628 (= e!4692906 tp!2369355)))

(declare-fun b!7956629 () Bool)

(declare-fun tp!2369358 () Bool)

(declare-fun tp!2369359 () Bool)

(assert (=> b!7956629 (= e!4692906 (and tp!2369358 tp!2369359))))

(assert (=> b!7954593 (= tp!2367954 e!4692906)))

(assert (= (and b!7954593 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956626))

(assert (= (and b!7954593 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956627))

(assert (= (and b!7954593 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956628))

(assert (= (and b!7954593 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956629))

(declare-fun b!7956630 () Bool)

(declare-fun e!4692907 () Bool)

(assert (=> b!7956630 (= e!4692907 tp_is_empty!53501)))

(declare-fun b!7956631 () Bool)

(declare-fun tp!2369362 () Bool)

(declare-fun tp!2369361 () Bool)

(assert (=> b!7956631 (= e!4692907 (and tp!2369362 tp!2369361))))

(declare-fun b!7956632 () Bool)

(declare-fun tp!2369360 () Bool)

(assert (=> b!7956632 (= e!4692907 tp!2369360)))

(declare-fun b!7956633 () Bool)

(declare-fun tp!2369363 () Bool)

(declare-fun tp!2369364 () Bool)

(assert (=> b!7956633 (= e!4692907 (and tp!2369363 tp!2369364))))

(assert (=> b!7954593 (= tp!2367955 e!4692907)))

(assert (= (and b!7954593 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956630))

(assert (= (and b!7954593 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956631))

(assert (= (and b!7954593 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956632))

(assert (= (and b!7954593 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regTwo!43471 baseR!116))))) b!7956633))

(declare-fun b!7956634 () Bool)

(declare-fun e!4692908 () Bool)

(assert (=> b!7956634 (= e!4692908 tp_is_empty!53501)))

(declare-fun b!7956635 () Bool)

(declare-fun tp!2369367 () Bool)

(declare-fun tp!2369366 () Bool)

(assert (=> b!7956635 (= e!4692908 (and tp!2369367 tp!2369366))))

(declare-fun b!7956636 () Bool)

(declare-fun tp!2369365 () Bool)

(assert (=> b!7956636 (= e!4692908 tp!2369365)))

(declare-fun b!7956637 () Bool)

(declare-fun tp!2369368 () Bool)

(declare-fun tp!2369369 () Bool)

(assert (=> b!7956637 (= e!4692908 (and tp!2369368 tp!2369369))))

(assert (=> b!7954382 (= tp!2367743 e!4692908)))

(assert (= (and b!7954382 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956634))

(assert (= (and b!7954382 ((_ is Concat!30478) (regOne!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956635))

(assert (= (and b!7954382 ((_ is Star!21479) (regOne!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956636))

(assert (= (and b!7954382 ((_ is Union!21479) (regOne!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956637))

(declare-fun b!7956638 () Bool)

(declare-fun e!4692909 () Bool)

(assert (=> b!7956638 (= e!4692909 tp_is_empty!53501)))

(declare-fun b!7956639 () Bool)

(declare-fun tp!2369372 () Bool)

(declare-fun tp!2369371 () Bool)

(assert (=> b!7956639 (= e!4692909 (and tp!2369372 tp!2369371))))

(declare-fun b!7956640 () Bool)

(declare-fun tp!2369370 () Bool)

(assert (=> b!7956640 (= e!4692909 tp!2369370)))

(declare-fun b!7956641 () Bool)

(declare-fun tp!2369373 () Bool)

(declare-fun tp!2369374 () Bool)

(assert (=> b!7956641 (= e!4692909 (and tp!2369373 tp!2369374))))

(assert (=> b!7954382 (= tp!2367742 e!4692909)))

(assert (= (and b!7954382 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956638))

(assert (= (and b!7954382 ((_ is Concat!30478) (regTwo!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956639))

(assert (= (and b!7954382 ((_ is Star!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956640))

(assert (= (and b!7954382 ((_ is Union!21479) (regTwo!43470 (regTwo!43470 (regOne!43471 baseR!116))))) b!7956641))

(declare-fun b!7956642 () Bool)

(declare-fun e!4692910 () Bool)

(assert (=> b!7956642 (= e!4692910 tp_is_empty!53501)))

(declare-fun b!7956643 () Bool)

(declare-fun tp!2369377 () Bool)

(declare-fun tp!2369376 () Bool)

(assert (=> b!7956643 (= e!4692910 (and tp!2369377 tp!2369376))))

(declare-fun b!7956644 () Bool)

(declare-fun tp!2369375 () Bool)

(assert (=> b!7956644 (= e!4692910 tp!2369375)))

(declare-fun b!7956645 () Bool)

(declare-fun tp!2369378 () Bool)

(declare-fun tp!2369379 () Bool)

(assert (=> b!7956645 (= e!4692910 (and tp!2369378 tp!2369379))))

(assert (=> b!7954468 (= tp!2367819 e!4692910)))

(assert (= (and b!7954468 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956642))

(assert (= (and b!7954468 ((_ is Concat!30478) (regOne!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956643))

(assert (= (and b!7954468 ((_ is Star!21479) (regOne!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956644))

(assert (= (and b!7954468 ((_ is Union!21479) (regOne!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956645))

(declare-fun b!7956654 () Bool)

(declare-fun e!4692918 () Bool)

(assert (=> b!7956654 (= e!4692918 tp_is_empty!53501)))

(declare-fun b!7956656 () Bool)

(declare-fun tp!2369382 () Bool)

(declare-fun tp!2369381 () Bool)

(assert (=> b!7956656 (= e!4692918 (and tp!2369382 tp!2369381))))

(declare-fun b!7956657 () Bool)

(declare-fun tp!2369380 () Bool)

(assert (=> b!7956657 (= e!4692918 tp!2369380)))

(declare-fun b!7956658 () Bool)

(declare-fun tp!2369383 () Bool)

(declare-fun tp!2369384 () Bool)

(assert (=> b!7956658 (= e!4692918 (and tp!2369383 tp!2369384))))

(assert (=> b!7954468 (= tp!2367820 e!4692918)))

(assert (= (and b!7954468 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956654))

(assert (= (and b!7954468 ((_ is Concat!30478) (regTwo!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956656))

(assert (= (and b!7954468 ((_ is Star!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956657))

(assert (= (and b!7954468 ((_ is Union!21479) (regTwo!43471 (regTwo!43470 (regOne!43470 baseR!116))))) b!7956658))

(declare-fun b!7956659 () Bool)

(declare-fun e!4692919 () Bool)

(assert (=> b!7956659 (= e!4692919 tp_is_empty!53501)))

(declare-fun b!7956660 () Bool)

(declare-fun tp!2369387 () Bool)

(declare-fun tp!2369386 () Bool)

(assert (=> b!7956660 (= e!4692919 (and tp!2369387 tp!2369386))))

(declare-fun b!7956661 () Bool)

(declare-fun tp!2369385 () Bool)

(assert (=> b!7956661 (= e!4692919 tp!2369385)))

(declare-fun b!7956662 () Bool)

(declare-fun tp!2369388 () Bool)

(declare-fun tp!2369389 () Bool)

(assert (=> b!7956662 (= e!4692919 (and tp!2369388 tp!2369389))))

(assert (=> b!7954608 (= tp!2367971 e!4692919)))

(assert (= (and b!7954608 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (reg!21808 r!24602))))) b!7956659))

(assert (= (and b!7954608 ((_ is Concat!30478) (reg!21808 (reg!21808 (reg!21808 r!24602))))) b!7956660))

(assert (= (and b!7954608 ((_ is Star!21479) (reg!21808 (reg!21808 (reg!21808 r!24602))))) b!7956661))

(assert (= (and b!7954608 ((_ is Union!21479) (reg!21808 (reg!21808 (reg!21808 r!24602))))) b!7956662))

(declare-fun b!7956663 () Bool)

(declare-fun e!4692920 () Bool)

(assert (=> b!7956663 (= e!4692920 tp_is_empty!53501)))

(declare-fun b!7956664 () Bool)

(declare-fun tp!2369392 () Bool)

(declare-fun tp!2369391 () Bool)

(assert (=> b!7956664 (= e!4692920 (and tp!2369392 tp!2369391))))

(declare-fun b!7956665 () Bool)

(declare-fun tp!2369390 () Bool)

(assert (=> b!7956665 (= e!4692920 tp!2369390)))

(declare-fun b!7956666 () Bool)

(declare-fun tp!2369393 () Bool)

(declare-fun tp!2369394 () Bool)

(assert (=> b!7956666 (= e!4692920 (and tp!2369393 tp!2369394))))

(assert (=> b!7954436 (= tp!2367788 e!4692920)))

(assert (= (and b!7954436 ((_ is ElementMatch!21479) (regOne!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956663))

(assert (= (and b!7954436 ((_ is Concat!30478) (regOne!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956664))

(assert (= (and b!7954436 ((_ is Star!21479) (regOne!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956665))

(assert (= (and b!7954436 ((_ is Union!21479) (regOne!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956666))

(declare-fun b!7956667 () Bool)

(declare-fun e!4692921 () Bool)

(assert (=> b!7956667 (= e!4692921 tp_is_empty!53501)))

(declare-fun b!7956668 () Bool)

(declare-fun tp!2369397 () Bool)

(declare-fun tp!2369396 () Bool)

(assert (=> b!7956668 (= e!4692921 (and tp!2369397 tp!2369396))))

(declare-fun b!7956669 () Bool)

(declare-fun tp!2369395 () Bool)

(assert (=> b!7956669 (= e!4692921 tp!2369395)))

(declare-fun b!7956670 () Bool)

(declare-fun tp!2369398 () Bool)

(declare-fun tp!2369399 () Bool)

(assert (=> b!7956670 (= e!4692921 (and tp!2369398 tp!2369399))))

(assert (=> b!7954436 (= tp!2367787 e!4692921)))

(assert (= (and b!7954436 ((_ is ElementMatch!21479) (regTwo!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956667))

(assert (= (and b!7954436 ((_ is Concat!30478) (regTwo!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956668))

(assert (= (and b!7954436 ((_ is Star!21479) (regTwo!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956669))

(assert (= (and b!7954436 ((_ is Union!21479) (regTwo!43470 (regOne!43470 (regOne!43471 r!24602))))) b!7956670))

(declare-fun b!7956671 () Bool)

(declare-fun e!4692922 () Bool)

(assert (=> b!7956671 (= e!4692922 tp_is_empty!53501)))

(declare-fun b!7956672 () Bool)

(declare-fun tp!2369402 () Bool)

(declare-fun tp!2369401 () Bool)

(assert (=> b!7956672 (= e!4692922 (and tp!2369402 tp!2369401))))

(declare-fun b!7956673 () Bool)

(declare-fun tp!2369400 () Bool)

(assert (=> b!7956673 (= e!4692922 tp!2369400)))

(declare-fun b!7956674 () Bool)

(declare-fun tp!2369403 () Bool)

(declare-fun tp!2369404 () Bool)

(assert (=> b!7956674 (= e!4692922 (and tp!2369403 tp!2369404))))

(assert (=> b!7954482 (= tp!2367833 e!4692922)))

(assert (= (and b!7954482 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956671))

(assert (= (and b!7954482 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956672))

(assert (= (and b!7954482 ((_ is Star!21479) (regOne!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956673))

(assert (= (and b!7954482 ((_ is Union!21479) (regOne!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956674))

(declare-fun b!7956685 () Bool)

(declare-fun e!4692928 () Bool)

(assert (=> b!7956685 (= e!4692928 tp_is_empty!53501)))

(declare-fun b!7956686 () Bool)

(declare-fun tp!2369407 () Bool)

(declare-fun tp!2369406 () Bool)

(assert (=> b!7956686 (= e!4692928 (and tp!2369407 tp!2369406))))

(declare-fun b!7956687 () Bool)

(declare-fun tp!2369405 () Bool)

(assert (=> b!7956687 (= e!4692928 tp!2369405)))

(declare-fun b!7956688 () Bool)

(declare-fun tp!2369408 () Bool)

(declare-fun tp!2369409 () Bool)

(assert (=> b!7956688 (= e!4692928 (and tp!2369408 tp!2369409))))

(assert (=> b!7954482 (= tp!2367832 e!4692928)))

(assert (= (and b!7954482 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956685))

(assert (= (and b!7954482 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956686))

(assert (= (and b!7954482 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956687))

(assert (= (and b!7954482 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regOne!43471 baseR!116))))) b!7956688))

(declare-fun b!7956689 () Bool)

(declare-fun e!4692929 () Bool)

(assert (=> b!7956689 (= e!4692929 tp_is_empty!53501)))

(declare-fun b!7956690 () Bool)

(declare-fun tp!2369412 () Bool)

(declare-fun tp!2369411 () Bool)

(assert (=> b!7956690 (= e!4692929 (and tp!2369412 tp!2369411))))

(declare-fun b!7956691 () Bool)

(declare-fun tp!2369410 () Bool)

(assert (=> b!7956691 (= e!4692929 tp!2369410)))

(declare-fun b!7956692 () Bool)

(declare-fun tp!2369413 () Bool)

(declare-fun tp!2369414 () Bool)

(assert (=> b!7956692 (= e!4692929 (and tp!2369413 tp!2369414))))

(assert (=> b!7954491 (= tp!2367841 e!4692929)))

(assert (= (and b!7954491 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956689))

(assert (= (and b!7954491 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956690))

(assert (= (and b!7954491 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956691))

(assert (= (and b!7954491 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regOne!43471 baseR!116))))) b!7956692))

(declare-fun b!7956693 () Bool)

(declare-fun e!4692930 () Bool)

(assert (=> b!7956693 (= e!4692930 tp_is_empty!53501)))

(declare-fun b!7956694 () Bool)

(declare-fun tp!2369417 () Bool)

(declare-fun tp!2369416 () Bool)

(assert (=> b!7956694 (= e!4692930 (and tp!2369417 tp!2369416))))

(declare-fun b!7956695 () Bool)

(declare-fun tp!2369415 () Bool)

(assert (=> b!7956695 (= e!4692930 tp!2369415)))

(declare-fun b!7956696 () Bool)

(declare-fun tp!2369418 () Bool)

(declare-fun tp!2369419 () Bool)

(assert (=> b!7956696 (= e!4692930 (and tp!2369418 tp!2369419))))

(assert (=> b!7954500 (= tp!2367854 e!4692930)))

(assert (= (and b!7954500 ((_ is ElementMatch!21479) (regOne!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956693))

(assert (= (and b!7954500 ((_ is Concat!30478) (regOne!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956694))

(assert (= (and b!7954500 ((_ is Star!21479) (regOne!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956695))

(assert (= (and b!7954500 ((_ is Union!21479) (regOne!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956696))

(declare-fun b!7956697 () Bool)

(declare-fun e!4692931 () Bool)

(assert (=> b!7956697 (= e!4692931 tp_is_empty!53501)))

(declare-fun b!7956698 () Bool)

(declare-fun tp!2369422 () Bool)

(declare-fun tp!2369421 () Bool)

(assert (=> b!7956698 (= e!4692931 (and tp!2369422 tp!2369421))))

(declare-fun b!7956699 () Bool)

(declare-fun tp!2369420 () Bool)

(assert (=> b!7956699 (= e!4692931 tp!2369420)))

(declare-fun b!7956700 () Bool)

(declare-fun tp!2369423 () Bool)

(declare-fun tp!2369424 () Bool)

(assert (=> b!7956700 (= e!4692931 (and tp!2369423 tp!2369424))))

(assert (=> b!7954500 (= tp!2367855 e!4692931)))

(assert (= (and b!7954500 ((_ is ElementMatch!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956697))

(assert (= (and b!7954500 ((_ is Concat!30478) (regTwo!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956698))

(assert (= (and b!7954500 ((_ is Star!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956699))

(assert (= (and b!7954500 ((_ is Union!21479) (regTwo!43471 (regTwo!43471 (regOne!43470 baseR!116))))) b!7956700))

(declare-fun b!7956701 () Bool)

(declare-fun e!4692932 () Bool)

(assert (=> b!7956701 (= e!4692932 tp_is_empty!53501)))

(declare-fun b!7956702 () Bool)

(declare-fun tp!2369427 () Bool)

(declare-fun tp!2369426 () Bool)

(assert (=> b!7956702 (= e!4692932 (and tp!2369427 tp!2369426))))

(declare-fun b!7956703 () Bool)

(declare-fun tp!2369425 () Bool)

(assert (=> b!7956703 (= e!4692932 tp!2369425)))

(declare-fun b!7956704 () Bool)

(declare-fun tp!2369428 () Bool)

(declare-fun tp!2369429 () Bool)

(assert (=> b!7956704 (= e!4692932 (and tp!2369428 tp!2369429))))

(assert (=> b!7954415 (= tp!2367773 e!4692932)))

(assert (= (and b!7954415 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956701))

(assert (= (and b!7954415 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956702))

(assert (= (and b!7954415 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956703))

(assert (= (and b!7954415 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956704))

(declare-fun b!7956707 () Bool)

(declare-fun e!4692934 () Bool)

(assert (=> b!7956707 (= e!4692934 tp_is_empty!53501)))

(declare-fun b!7956708 () Bool)

(declare-fun tp!2369432 () Bool)

(declare-fun tp!2369431 () Bool)

(assert (=> b!7956708 (= e!4692934 (and tp!2369432 tp!2369431))))

(declare-fun b!7956709 () Bool)

(declare-fun tp!2369430 () Bool)

(assert (=> b!7956709 (= e!4692934 tp!2369430)))

(declare-fun b!7956710 () Bool)

(declare-fun tp!2369433 () Bool)

(declare-fun tp!2369434 () Bool)

(assert (=> b!7956710 (= e!4692934 (and tp!2369433 tp!2369434))))

(assert (=> b!7954415 (= tp!2367772 e!4692934)))

(assert (= (and b!7954415 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956707))

(assert (= (and b!7954415 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956708))

(assert (= (and b!7954415 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956709))

(assert (= (and b!7954415 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (regOne!43471 r!24602))))) b!7956710))

(declare-fun b!7956721 () Bool)

(declare-fun e!4692940 () Bool)

(assert (=> b!7956721 (= e!4692940 tp_is_empty!53501)))

(declare-fun b!7956722 () Bool)

(declare-fun tp!2369437 () Bool)

(declare-fun tp!2369436 () Bool)

(assert (=> b!7956722 (= e!4692940 (and tp!2369437 tp!2369436))))

(declare-fun b!7956723 () Bool)

(declare-fun tp!2369435 () Bool)

(assert (=> b!7956723 (= e!4692940 tp!2369435)))

(declare-fun b!7956724 () Bool)

(declare-fun tp!2369438 () Bool)

(declare-fun tp!2369439 () Bool)

(assert (=> b!7956724 (= e!4692940 (and tp!2369438 tp!2369439))))

(assert (=> b!7954458 (= tp!2367808 e!4692940)))

(assert (= (and b!7954458 ((_ is ElementMatch!21479) (regOne!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956721))

(assert (= (and b!7954458 ((_ is Concat!30478) (regOne!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956722))

(assert (= (and b!7954458 ((_ is Star!21479) (regOne!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956723))

(assert (= (and b!7954458 ((_ is Union!21479) (regOne!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956724))

(declare-fun b!7956725 () Bool)

(declare-fun e!4692941 () Bool)

(assert (=> b!7956725 (= e!4692941 tp_is_empty!53501)))

(declare-fun b!7956726 () Bool)

(declare-fun tp!2369442 () Bool)

(declare-fun tp!2369441 () Bool)

(assert (=> b!7956726 (= e!4692941 (and tp!2369442 tp!2369441))))

(declare-fun b!7956727 () Bool)

(declare-fun tp!2369440 () Bool)

(assert (=> b!7956727 (= e!4692941 tp!2369440)))

(declare-fun b!7956728 () Bool)

(declare-fun tp!2369443 () Bool)

(declare-fun tp!2369444 () Bool)

(assert (=> b!7956728 (= e!4692941 (and tp!2369443 tp!2369444))))

(assert (=> b!7954458 (= tp!2367807 e!4692941)))

(assert (= (and b!7954458 ((_ is ElementMatch!21479) (regTwo!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956725))

(assert (= (and b!7954458 ((_ is Concat!30478) (regTwo!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956726))

(assert (= (and b!7954458 ((_ is Star!21479) (regTwo!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956727))

(assert (= (and b!7954458 ((_ is Union!21479) (regTwo!43470 (regTwo!43471 (reg!21808 baseR!116))))) b!7956728))

(declare-fun b!7956729 () Bool)

(declare-fun e!4692942 () Bool)

(assert (=> b!7956729 (= e!4692942 tp_is_empty!53501)))

(declare-fun b!7956730 () Bool)

(declare-fun tp!2369447 () Bool)

(declare-fun tp!2369446 () Bool)

(assert (=> b!7956730 (= e!4692942 (and tp!2369447 tp!2369446))))

(declare-fun b!7956731 () Bool)

(declare-fun tp!2369445 () Bool)

(assert (=> b!7956731 (= e!4692942 tp!2369445)))

(declare-fun b!7956732 () Bool)

(declare-fun tp!2369448 () Bool)

(declare-fun tp!2369449 () Bool)

(assert (=> b!7956732 (= e!4692942 (and tp!2369448 tp!2369449))))

(assert (=> b!7954563 (= tp!2367918 e!4692942)))

(assert (= (and b!7954563 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956729))

(assert (= (and b!7954563 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956730))

(assert (= (and b!7954563 ((_ is Star!21479) (regOne!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956731))

(assert (= (and b!7954563 ((_ is Union!21479) (regOne!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956732))

(declare-fun b!7956733 () Bool)

(declare-fun e!4692943 () Bool)

(assert (=> b!7956733 (= e!4692943 tp_is_empty!53501)))

(declare-fun b!7956734 () Bool)

(declare-fun tp!2369452 () Bool)

(declare-fun tp!2369451 () Bool)

(assert (=> b!7956734 (= e!4692943 (and tp!2369452 tp!2369451))))

(declare-fun b!7956735 () Bool)

(declare-fun tp!2369450 () Bool)

(assert (=> b!7956735 (= e!4692943 tp!2369450)))

(declare-fun b!7956736 () Bool)

(declare-fun tp!2369453 () Bool)

(declare-fun tp!2369454 () Bool)

(assert (=> b!7956736 (= e!4692943 (and tp!2369453 tp!2369454))))

(assert (=> b!7954563 (= tp!2367917 e!4692943)))

(assert (= (and b!7954563 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956733))

(assert (= (and b!7954563 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956734))

(assert (= (and b!7954563 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956735))

(assert (= (and b!7954563 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regTwo!43470 r!24602))))) b!7956736))

(declare-fun b!7956737 () Bool)

(declare-fun e!4692944 () Bool)

(assert (=> b!7956737 (= e!4692944 tp_is_empty!53501)))

(declare-fun b!7956738 () Bool)

(declare-fun tp!2369457 () Bool)

(declare-fun tp!2369456 () Bool)

(assert (=> b!7956738 (= e!4692944 (and tp!2369457 tp!2369456))))

(declare-fun b!7956739 () Bool)

(declare-fun tp!2369455 () Bool)

(assert (=> b!7956739 (= e!4692944 tp!2369455)))

(declare-fun b!7956740 () Bool)

(declare-fun tp!2369458 () Bool)

(declare-fun tp!2369459 () Bool)

(assert (=> b!7956740 (= e!4692944 (and tp!2369458 tp!2369459))))

(assert (=> b!7954516 (= tp!2367874 e!4692944)))

(assert (= (and b!7954516 ((_ is ElementMatch!21479) (regOne!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956737))

(assert (= (and b!7954516 ((_ is Concat!30478) (regOne!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956738))

(assert (= (and b!7954516 ((_ is Star!21479) (regOne!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956739))

(assert (= (and b!7954516 ((_ is Union!21479) (regOne!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956740))

(declare-fun b!7956741 () Bool)

(declare-fun e!4692945 () Bool)

(assert (=> b!7956741 (= e!4692945 tp_is_empty!53501)))

(declare-fun b!7956742 () Bool)

(declare-fun tp!2369462 () Bool)

(declare-fun tp!2369461 () Bool)

(assert (=> b!7956742 (= e!4692945 (and tp!2369462 tp!2369461))))

(declare-fun b!7956743 () Bool)

(declare-fun tp!2369460 () Bool)

(assert (=> b!7956743 (= e!4692945 tp!2369460)))

(declare-fun b!7956744 () Bool)

(declare-fun tp!2369463 () Bool)

(declare-fun tp!2369464 () Bool)

(assert (=> b!7956744 (= e!4692945 (and tp!2369463 tp!2369464))))

(assert (=> b!7954516 (= tp!2367875 e!4692945)))

(assert (= (and b!7954516 ((_ is ElementMatch!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956741))

(assert (= (and b!7954516 ((_ is Concat!30478) (regTwo!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956742))

(assert (= (and b!7954516 ((_ is Star!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956743))

(assert (= (and b!7954516 ((_ is Union!21479) (regTwo!43471 (regOne!43470 (regTwo!43471 r!24602))))) b!7956744))

(declare-fun b!7956745 () Bool)

(declare-fun e!4692946 () Bool)

(assert (=> b!7956745 (= e!4692946 tp_is_empty!53501)))

(declare-fun b!7956746 () Bool)

(declare-fun tp!2369467 () Bool)

(declare-fun tp!2369466 () Bool)

(assert (=> b!7956746 (= e!4692946 (and tp!2369467 tp!2369466))))

(declare-fun b!7956747 () Bool)

(declare-fun tp!2369465 () Bool)

(assert (=> b!7956747 (= e!4692946 tp!2369465)))

(declare-fun b!7956748 () Bool)

(declare-fun tp!2369468 () Bool)

(declare-fun tp!2369469 () Bool)

(assert (=> b!7956748 (= e!4692946 (and tp!2369468 tp!2369469))))

(assert (=> b!7954604 (= tp!2367966 e!4692946)))

(assert (= (and b!7954604 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956745))

(assert (= (and b!7954604 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956746))

(assert (= (and b!7954604 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956747))

(assert (= (and b!7954604 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regTwo!43471 r!24602))))) b!7956748))

(declare-fun b!7956751 () Bool)

(declare-fun e!4692948 () Bool)

(assert (=> b!7956751 (= e!4692948 tp_is_empty!53501)))

(declare-fun b!7956752 () Bool)

(declare-fun tp!2369472 () Bool)

(declare-fun tp!2369471 () Bool)

(assert (=> b!7956752 (= e!4692948 (and tp!2369472 tp!2369471))))

(declare-fun b!7956753 () Bool)

(declare-fun tp!2369470 () Bool)

(assert (=> b!7956753 (= e!4692948 tp!2369470)))

(declare-fun b!7956754 () Bool)

(declare-fun tp!2369473 () Bool)

(declare-fun tp!2369474 () Bool)

(assert (=> b!7956754 (= e!4692948 (and tp!2369473 tp!2369474))))

(assert (=> b!7954617 (= tp!2367982 e!4692948)))

(assert (= (and b!7954617 ((_ is ElementMatch!21479) (reg!21808 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956751))

(assert (= (and b!7954617 ((_ is Concat!30478) (reg!21808 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956752))

(assert (= (and b!7954617 ((_ is Star!21479) (reg!21808 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956753))

(assert (= (and b!7954617 ((_ is Union!21479) (reg!21808 (regTwo!43471 (regTwo!43470 baseR!116))))) b!7956754))

(declare-fun b!7956755 () Bool)

(declare-fun e!4692949 () Bool)

(assert (=> b!7956755 (= e!4692949 tp_is_empty!53501)))

(declare-fun b!7956756 () Bool)

(declare-fun tp!2369477 () Bool)

(declare-fun tp!2369476 () Bool)

(assert (=> b!7956756 (= e!4692949 (and tp!2369477 tp!2369476))))

(declare-fun b!7956757 () Bool)

(declare-fun tp!2369475 () Bool)

(assert (=> b!7956757 (= e!4692949 tp!2369475)))

(declare-fun b!7956759 () Bool)

(declare-fun tp!2369478 () Bool)

(declare-fun tp!2369479 () Bool)

(assert (=> b!7956759 (= e!4692949 (and tp!2369478 tp!2369479))))

(assert (=> b!7954445 (= tp!2367796 e!4692949)))

(assert (= (and b!7954445 ((_ is ElementMatch!21479) (reg!21808 (reg!21808 (reg!21808 baseR!116))))) b!7956755))

(assert (= (and b!7954445 ((_ is Concat!30478) (reg!21808 (reg!21808 (reg!21808 baseR!116))))) b!7956756))

(assert (= (and b!7954445 ((_ is Star!21479) (reg!21808 (reg!21808 (reg!21808 baseR!116))))) b!7956757))

(assert (= (and b!7954445 ((_ is Union!21479) (reg!21808 (reg!21808 (reg!21808 baseR!116))))) b!7956759))

(declare-fun b!7956761 () Bool)

(declare-fun e!4692951 () Bool)

(declare-fun tp!2369480 () Bool)

(assert (=> b!7956761 (= e!4692951 (and tp_is_empty!53501 tp!2369480))))

(assert (=> b!7954372 (= tp!2367735 e!4692951)))

(assert (= (and b!7954372 ((_ is Cons!74584) (t!390451 (t!390451 (t!390451 input!7927))))) b!7956761))

(declare-fun b!7956763 () Bool)

(declare-fun e!4692954 () Bool)

(assert (=> b!7956763 (= e!4692954 tp_is_empty!53501)))

(declare-fun b!7956765 () Bool)

(declare-fun tp!2369483 () Bool)

(declare-fun tp!2369482 () Bool)

(assert (=> b!7956765 (= e!4692954 (and tp!2369483 tp!2369482))))

(declare-fun b!7956768 () Bool)

(declare-fun tp!2369481 () Bool)

(assert (=> b!7956768 (= e!4692954 tp!2369481)))

(declare-fun b!7956769 () Bool)

(declare-fun tp!2369484 () Bool)

(declare-fun tp!2369485 () Bool)

(assert (=> b!7956769 (= e!4692954 (and tp!2369484 tp!2369485))))

(assert (=> b!7954595 (= tp!2367958 e!4692954)))

(assert (= (and b!7954595 ((_ is ElementMatch!21479) (regOne!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956763))

(assert (= (and b!7954595 ((_ is Concat!30478) (regOne!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956765))

(assert (= (and b!7954595 ((_ is Star!21479) (regOne!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956768))

(assert (= (and b!7954595 ((_ is Union!21479) (regOne!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956769))

(declare-fun b!7956770 () Bool)

(declare-fun e!4692956 () Bool)

(assert (=> b!7956770 (= e!4692956 tp_is_empty!53501)))

(declare-fun b!7956771 () Bool)

(declare-fun tp!2369488 () Bool)

(declare-fun tp!2369487 () Bool)

(assert (=> b!7956771 (= e!4692956 (and tp!2369488 tp!2369487))))

(declare-fun b!7956772 () Bool)

(declare-fun tp!2369486 () Bool)

(assert (=> b!7956772 (= e!4692956 tp!2369486)))

(declare-fun b!7956773 () Bool)

(declare-fun tp!2369489 () Bool)

(declare-fun tp!2369490 () Bool)

(assert (=> b!7956773 (= e!4692956 (and tp!2369489 tp!2369490))))

(assert (=> b!7954595 (= tp!2367957 e!4692956)))

(assert (= (and b!7954595 ((_ is ElementMatch!21479) (regTwo!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956770))

(assert (= (and b!7954595 ((_ is Concat!30478) (regTwo!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956771))

(assert (= (and b!7954595 ((_ is Star!21479) (regTwo!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956772))

(assert (= (and b!7954595 ((_ is Union!21479) (regTwo!43470 (reg!21808 (regTwo!43471 r!24602))))) b!7956773))

(check-sat (not b!7956471) (not b!7955662) (not b!7956510) (not b!7955547) (not d!2377132) (not b!7956306) (not b!7956637) (not b!7955739) (not b!7956695) (not b!7954970) (not b!7956533) (not b!7955669) (not b!7956053) (not b!7956465) (not b!7955767) (not b!7956126) (not b!7956288) (not b!7955835) (not b!7956728) (not b!7956644) (not b!7956522) (not b!7955806) (not b!7955539) (not b!7956710) (not b!7955721) (not b!7955414) (not b!7955847) (not b!7955574) (not b!7955586) (not bm!737622) (not b!7956432) (not b!7955113) (not b!7955907) (not b!7955022) (not b!7955598) (not b!7955002) (not b!7956469) (not b!7956079) (not b!7955689) (not b!7955679) (not b!7956086) (not b!7955567) (not bm!737590) (not d!2376966) (not b!7955486) (not bm!737619) (not b!7956289) (not b!7956269) (not b!7955690) (not b!7955122) (not b!7955229) (not b!7956627) (not d!2376952) (not d!2377218) (not b!7954955) (not b!7955609) (not b!7956686) (not b!7956321) (not b!7956497) (not b!7955992) (not b!7956694) (not b!7956199) (not b!7955864) (not d!2377184) (not b!7956731) (not b!7956113) (not b!7955654) (not b!7955663) (not b!7956000) (not b!7955949) (not b!7956666) (not b!7955537) (not b!7956537) (not b!7955533) (not b!7955521) (not b!7956703) (not b!7954965) (not b!7956285) (not b!7956316) (not b!7955766) (not b!7955757) (not bm!737683) (not b!7956748) (not b!7955867) (not b!7955217) (not b!7955873) (not b!7955793) (not bm!737697) (not b!7955852) (not b!7955790) (not d!2376954) (not b!7955939) (not b!7955650) (not bm!737702) (not d!2377152) (not d!2377170) (not b!7956047) (not b!7955555) (not b!7956286) (not b!7955780) (not b!7956314) (not b!7956276) (not b!7955593) (not b!7956156) (not b!7955523) (not bm!737689) (not b!7955342) (not b!7955464) (not b!7956043) (not b!7955651) (not b!7956138) (not b!7955531) (not b!7956155) (not b!7955694) (not b!7955836) (not b!7955800) (not b!7955571) (not b!7955163) (not b!7955102) (not b!7956358) (not b!7956484) (not b!7956013) (not b!7956110) (not d!2377172) (not b!7955900) (not b!7955613) (not b!7955794) (not b!7954987) (not b!7956220) (not b!7955792) (not b!7955861) (not b!7955930) (not b!7956613) (not b!7956668) (not b!7956149) (not b!7954940) (not b!7955168) (not b!7956615) (not b!7955771) (not b!7956771) (not b!7956022) (not b!7955925) (not b!7956017) (not b!7955063) (not b!7956041) (not b!7956019) (not b!7955273) (not b!7955913) (not b!7955506) (not b!7955619) (not b!7956418) (not b!7956348) (not b!7955933) (not b!7955053) (not b!7956160) (not b!7956361) (not b!7955828) (not b!7955827) (not b!7956038) (not b!7956431) (not b!7956538) (not b!7955763) (not b!7955359) (not b!7955405) (not b!7956490) (not b!7956661) (not b!7955822) (not b!7955625) (not b!7955957) (not b!7955448) (not b!7955713) (not b!7956423) (not b!7956514) (not b!7956264) (not bm!737644) (not b!7955788) (not b!7956317) (not b!7954956) (not b!7954992) (not bm!737660) (not b!7956340) (not b!7955849) (not b!7956029) (not b!7956645) (not d!2377110) (not b!7956419) (not b!7955509) (not b!7954960) (not b!7956437) (not b!7955687) (not b!7956614) (not b!7956173) (not bm!737634) (not b!7956313) (not b!7955372) (not d!2377054) (not b!7955595) (not b!7956381) (not b!7956119) (not b!7956380) (not b!7956018) (not b!7956709) (not b!7955067) (not bm!737692) (not b!7955653) (not b!7955997) (not b!7955515) (not b!7955733) (not b!7956167) (not b!7956611) (not b!7955599) (not b!7955657) (not b!7955693) (not b!7955743) (not b!7956232) (not b!7956674) (not b!7955188) (not b!7956227) (not b!7955510) (not b!7955006) (not b!7956479) (not b!7956727) (not b!7956383) (not bm!737659) (not b!7955798) (not b!7955749) (not b!7956127) (not b!7956371) (not b!7955789) (not b!7955271) (not b!7956325) (not bm!737613) (not b!7954996) (not b!7956742) (not b!7955578) (not b!7954963) (not b!7956055) (not b!7956734) (not b!7956347) (not b!7956083) (not b!7956158) (not b!7955300) (not bm!737646) (not b!7956670) (not b!7955623) (not b!7955461) (not b!7956247) (not b!7955605) (not b!7955389) (not bm!737687) (not bm!737607) (not d!2376972) (not b!7956496) (not b!7956640) (not b!7956443) (not b!7955995) (not b!7955799) (not b!7955737) (not d!2377036) (not b!7956377) (not b!7955209) (not b!7955559) (not b!7955310) (not b!7956447) (not b!7956030) (not b!7956133) (not b!7956231) (not b!7956290) (not b!7956628) (not b!7955673) (not b!7955206) (not b!7955935) (not b!7956376) (not d!2377034) (not b!7956211) (not b!7955943) (not b!7956025) (not b!7956235) (not bm!737654) (not b!7956460) (not b!7956723) (not d!2377050) (not b!7955751) (not b!7955003) (not b!7955871) (not b!7956365) (not b!7955719) (not bm!737625) (not b!7956413) (not b!7956094) (not b!7955911) (not b!7956096) (not b!7955682) (not bm!737655) (not b!7956722) (not b!7955582) (not b!7956023) (not b!7955831) (not b!7955581) (not b!7956031) (not b!7955566) (not b!7955008) (not b!7956318) (not b!7955240) (not b!7956414) (not bm!737651) (not d!2376950) (not b!7955963) (not b!7954948) (not b!7955775) (not b!7956635) (not b!7955804) (not b!7956732) (not b!7956662) (not b!7955051) (not b!7955901) (not b!7955614) (not b!7955851) (not b!7956014) (not b!7955135) (not b!7956516) (not b!7955607) (not b!7956696) (not b!7955541) (not b!7955834) (not b!7956385) (not bm!737601) (not bm!737704) (not b!7955926) (not b!7956605) (not b!7955899) (not b!7955409) (not b!7956121) (not bm!737671) (not b!7955807) (not b!7956277) (not b!7955527) (not b!7955698) (not b!7955618) (not b!7955456) (not b!7955646) (not b!7956246) (not d!2377138) (not b!7956224) (not b!7955610) (not b!7956768) (not b!7955317) (not b!7955511) (not b!7956329) (not b!7956550) (not b!7956326) (not b!7955622) (not d!2377238) (not b!7956305) (not b!7955738) (not b!7956301) (not b!7955729) (not b!7956726) (not b!7955033) (not b!7955723) (not b!7955631) (not b!7956223) (not b!7955518) (not b!7956388) (not b!7956258) (not b!7956658) (not b!7956255) (not b!7955601) (not b!7956527) (not b!7955453) (not b!7956091) (not b!7956607) (not bm!737616) (not b!7956464) (not b!7955709) (not b!7956338) (not b!7955549) (not b!7956250) (not b!7955018) (not b!7955959) (not b!7955922) (not b!7956084) (not b!7956724) (not b!7956076) (not b!7956698) (not b!7956633) (not b!7955530) (not b!7955762) (not d!2377250) (not bm!737589) (not b!7956234) (not b!7956195) (not b!7956357) (not b!7954984) (not b!7955557) (not b!7956582) (not b!7955065) (not b!7954990) (not b!7954959) (not b!7956026) (not b!7955815) (not b!7955452) (not b!7956564) (not b!7956530) (not b!7955686) (not b!7956198) (not b!7955049) (not b!7954951) (not bm!737631) (not b!7956105) (not b!7955187) (not b!7956528) (not b!7956673) (not b!7956601) (not b!7955139) (not bm!737596) (not b!7954952) (not b!7954981) (not b!7955402) (not d!2377180) (not b!7956260) (not b!7955311) (not b!7956483) (not b!7955212) (not b!7955597) (not b!7956384) (not b!7956747) (not b!7955818) (not b!7955561) (not b!7956578) (not b!7956480) (not b!7956606) (not b!7956508) (not b!7956228) (not b!7955181) (not b!7955558) (not b!7955774) (not b!7956401) (not bm!737703) (not d!2377222) (not b!7955819) (not b!7955362) (not b!7956027) (not b!7956553) (not b!7956481) (not bm!737656) (not b!7956735) (not b!7955674) (not b!7955546) (not b!7956168) (not b!7955590) (not b!7955954) (not b!7955758) (not b!7956433) (not b!7956495) (not bm!737684) (not b!7955565) (not b!7956150) (not b!7956272) (not b!7955897) (not b!7956772) (not b!7955893) (not b!7955715) (not b!7956039) (not b!7956417) (not bm!737650) (not b!7955573) (not b!7956242) (not b!7956415) (not b!7955538) (not b!7955726) (not b!7956219) (not bm!737658) (not b!7956467) (not b!7955681) (not d!2377120) (not b!7956045) (not b!7956489) (not b!7956186) (not b!7955611) (not b!7955215) (not b!7956424) (not b!7955889) (not b!7956063) (not b!7956589) (not b!7956405) (not b!7956001) (not b!7956700) (not b!7956773) (not b!7955645) (not b!7955602) (not b!7956174) (not b!7955868) (not bm!737679) (not b!7955816) (not b!7955946) (not b!7955413) (not b!7955999) (not b!7956278) (not b!7955406) (not b!7956752) (not b!7956445) (not b!7956114) (not b!7955629) (not b!7955347) (not b!7955550) (not b!7956366) (not b!7956342) (not b!7955731) (not b!7955513) (not b!7956042) (not b!7955638) (not d!2377220) (not b!7955042) (not b!7956259) (not b!7956389) (not b!7956251) (not b!7955950) (not b!7955863) (not b!7955661) (not b!7956166) (not b!7956082) (not b!7956632) (not b!7955896) (not b!7956603) (not b!7956687) (not b!7955996) (not d!2376944) (not bm!737710) (not b!7955594) (not b!7955542) (not b!7955514) (not b!7956154) (not b!7956581) (not b!7955591) (not d!2377210) (not b!7955802) (not b!7956558) (not b!7955985) (not b!7956297) (not b!7956446) (not b!7955411) (not b!7956254) (not b!7954966) (not b!7956577) (not b!7955905) (not b!7954969) (not bm!737696) (not bm!737620) (not b!7955961) (not b!7955472) (not b!7956536) (not bm!737699) (not b!7955824) (not b!7955786) (not b!7955938) (not b!7955617) (not b!7956580) (not b!7955587) (not bm!737610) (not bm!737663) (not b!7955947) (not b!7956436) (not b!7956193) (not b!7955575) (not bm!737632) (not b!7955750) (not b!7955637) (not b!7955888) (not b!7955958) (not b!7956256) (not d!2377200) (not bm!737662) (not b!7955579) (not b!7955483) (not d!2377060) (not b!7955460) (not b!7955965) (not b!7956337) (not b!7956588) (not d!2377108) (not b!7956132) (not b!7955670) (not b!7955697) (not b!7955545) (not b!7956472) (not b!7956442) (not b!7955826) (not b!7954998) (not b!7955877) (not bm!737617) (not b!7956115) (not b!7956517) (not b!7955370) (not b!7955722) (not b!7955635) (not d!2377086) (not b!7956407) (not b!7955553) (not b!7956468) (not b!7956576) (not b!7955263) (not b!7956565) (not b!7955551) (not b!7955665) (not b!7956691) (not b!7956660) (not b!7955534) (not b!7956563) (not b!7955887) (not d!2377116) (not b!7955047) (not b!7955741) (not b!7955859) (not b!7955895) (not b!7955979) (not b!7956669) (not b!7956739) (not b!7956513) (not b!7955714) (not b!7955770) (not b!7955880) (not b!7955105) (not bm!737605) (not b!7956370) (not b!7956406) (not b!7956015) (not b!7955717) (not b!7955554) (not b!7955691) (not b!7955778) (not b!7955232) (not d!2377224) (not b!7955927) (not d!2377198) (not b!7955912) (not b!7956636) (not b!7955981) (not b!7955906) (not d!2377226) (not b!7956664) (not b!7956274) (not b!7956046) (not b!7955658) (not b!7955589) (not b!7955865) (not b!7955987) (not b!7956526) (not b!7956610) (not b!7956521) (not b!7956216) (not b!7955061) (not b!7955647) (not b!7955606) (not d!2377100) (not b!7956379) (not b!7955392) (not d!2377070) (not bm!737700) (not b!7955058) (not bm!737672) (not b!7956075) (not d!2376956) (not b!7956087) (not b!7956162) (not bm!737593) (not b!7956236) (not b!7955891) (not bm!737657) (not b!7955685) (not b!7956284) (not b!7956320) (not b!7955344) (not bm!737653) (not b!7955984) (not b!7955707) (not b!7955184) (not b!7955170) (not b!7956761) (not b!7955784) (not b!7956191) (not b!7955475) (not b!7955945) (not b!7955562) (not b!7955677) (not bm!737626) (not b!7956131) (not b!7956298) (not b!7955659) (not b!7955449) (not b!7956302) (not b!7956744) (not b!7955525) (not b!7955236) (not bm!737587) (not b!7956754) (not b!7955641) (not b!7955655) (not b!7956212) (not bm!737678) (not b!7955718) (not d!2376980) (not b!7955705) (not bm!737586) (not bm!737602) (not b!7956172) (not b!7956551) (not b!7955428) (not b!7956359) (not b!7955879) (not b!7955069) (not b!7956324) (not b!7956164) (not b!7955585) (not b!7955966) (not b!7956757) (not b!7955755) (not b!7956557) (not bm!737668) (not b!7955316) (not b!7955727) (not bm!737629) (not b!7955759) (not d!2377182) (not bm!737642) (not b!7956341) (not b!7955327) (not b!7955881) (not b!7956262) (not b!7955746) (not bm!737676) (not b!7956328) (not b!7956692) (not b!7955761) (not b!7955425) (not b!7955671) (not b!7956222) (not b!7956074) (not b!7956215) (not b!7956590) (not b!7956243) (not b!7955848) (not b!7955238) (not b!7955814) (not b!7955124) (not b!7955569) (not b!7955917) (not bm!737628) (not b!7955242) (not b!7955931) (not b!7955634) (not b!7956006) (not b!7956226) (not b!7956268) (not d!2377118) (not b!7956194) (not b!7956322) (not b!7956631) (not b!7955892) (not b!7956190) (not bm!737661) (not b!7956585) (not b!7956765) (not b!7956330) (not b!7955929) (not b!7956137) (not b!7956656) (not b!7956769) (not d!2377148) (not b!7955233) (not b!7955853) (not b!7955094) (not d!2377126) (not b!7955872) (not b!7956244) (not b!7955211) (not b!7955178) (not bm!737584) (not b!7955962) (not b!7955989) (not b!7955730) (not b!7956120) (not bm!737645) (not b!7956300) (not b!7956475) (not b!7955710) (not b!7956312) (not b!7956362) (not b!7956273) (not b!7955953) (not b!7955941) (not b!7956230) (not b!7955725) (not b!7956609) (not b!7956387) (not b!7956746) (not bm!737592) (not b!7956743) (not bm!737641) (not bm!737636) (not b!7956531) (not b!7956375) (not bm!737637) (not b!7955711) (not bm!737664) (not b!7955678) (not b!7956111) (not b!7955876) (not b!7956336) (not b!7955358) (not b!7954936) (not b!7956756) (not b!7955543) (not b!7956187) (not b!7956555) (not b!7955808) (not b!7956090) (not b!7956109) (not b!7956346) (not d!2377000) (not b!7955000) (not b!7956643) (not b!7955426) (not b!7955832) (not b!7955154) (not b!7955921) (not b!7955856) (not b!7955430) (not b!7956270) (not b!7955243) (not b!7956602) (not b!7956058) (not b!7954971) (not b!7956639) (not b!7956057) (not b!7956409) (not d!2377252) (not b!7955703) (not bm!737595) (not b!7955458) (not b!7955360) (not b!7955450) (not b!7956463) (not bm!737647) (not b!7955630) (not bm!737635) (not b!7955519) (not b!7956410) (not d!2377150) (not bm!737677) (not b!7956367) (not b!7956304) (not b!7956021) (not bm!737583) (not d!2377052) (not b!7955857) (not b!7955603) (not b!7955615) (not b!7955021) (not b!7955260) (not b!7956485) (not b!7955570) (not b!7955526) (not b!7954937) (not b!7956125) (not b!7955735) (not b!7956411) (not b!7956106) (not b!7956559) (not b!7955197) (not b!7955025) (not b!7956657) (not b!7956402) (not b!7955695) (not bm!737709) (not b!7955967) (not b!7955955) (not b!7956629) (not b!7955937) (not b!7955487) (not b!7955225) (not b!7955745) (not b!7955309) (not b!7956092) (not d!2377146) (not b!7955643) (not bm!737612) (not b!7956586) (not b!7956107) (not b!7955830) (not d!2376968) (not b!7956688) (not b!7955185) (not b!7955345) (not b!7955639) (not d!2377124) (not b!7955860) (not b!7955577) (not b!7956473) (not b!7956702) (not b!7956080) (not b!7955045) (not b!7956197) (not b!7955769) (not b!7956296) (not b!7956476) (not d!2377162) (not b!7956736) (not b!7955923) (not b!7955666) (not b!7955626) (not b!7956672) (not b!7956435) (not b!7956214) (not b!7955706) (not b!7956690) (not b!7956163) (not b!7956584) (not b!7955919) (not b!7955683) (not b!7955649) (not b!7956520) (not b!7956095) (not b!7955010) (not b!7956461) (not b!7956252) (not b!7955776) (not b!7956425) (not b!7956159) (not b!7955951) (not b!7955137) (not b!7955754) (not b!7956062) (not b!7955583) (not b!7955621) (not b!7956753) (not b!7956263) (not b!7955675) (not b!7955667) (not b!7956189) (not b!7955071) (not b!7956363) (not bm!737688) (not b!7956491) (not b!7955983) (not b!7956740) (not b!7955563) (not b!7956078) (not b!7955875) (not b!7956459) (not b!7955772) (not b!7955701) (not b!7956641) (not b!7955216) (not b!7955340) (not b!7956512) (not b!7955522) (not b!7956441) (not b!7955753) (not bm!737623) (not b!7955535) (not bm!737611) (not b!7956665) (not b!7955993) (not b!7955183) (not b!7956037) (not b!7955529) (not b!7954994) (not b!7955820) (not b!7955918) (not b!7955855) (not b!7955338) (not d!2377232) (not b!7954972) (not b!7955314) (not d!2377154) (not b!7955023) (not b!7955633) (not b!7955055) (not b!7955057) (not b!7955779) (not b!7956088) (not b!7956699) tp_is_empty!53501 (not b!7955869) (not b!7955166) (not bm!737667) (not b!7955934) (not b!7956218) (not b!7955627) (not b!7956704) (not b!7955823) (not b!7955988) (not b!7955747) (not b!7956054) (not d!2377056) (not b!7956369) (not b!7956248) (not b!7956549) (not b!7955980) (not b!7956061) (not b!7955228) (not d!2376974) (not b!7955803) (not b!7955489) (not b!7955517) (not b!7954986) (not b!7956403) (not bm!737693) (not b!7955782) (not b!7955942) (not b!7956509) (not b!7956518) (not b!7956059) (not b!7956148) (not b!7956708) (not b!7956730) (not b!7956738) (not b!7955702) (not b!7955742) (not b!7956139) (not b!7955297) (not b!7956007) (not bm!737608) (not b!7955734) (not b!7955642) (not b!7956005) (not b!7956185) (not d!2377168) (not b!7956554) (not b!7955699) (not b!7955394) (not b!7956477) (not b!7956210) (not bm!737686) (not b!7956759) (not bm!737705) (not b!7955765) (not bm!737604) (not b!7955991))
(check-sat)
