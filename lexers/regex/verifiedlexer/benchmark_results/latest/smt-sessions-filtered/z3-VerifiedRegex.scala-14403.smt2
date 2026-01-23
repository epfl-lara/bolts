; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750684 () Bool)

(assert start!750684)

(declare-fun b!7958553 () Bool)

(declare-fun e!4693638 () Bool)

(declare-fun e!4693634 () Bool)

(assert (=> b!7958553 (= e!4693638 e!4693634)))

(declare-fun res!3154552 () Bool)

(assert (=> b!7958553 (=> (not res!3154552) (not e!4693634))))

(declare-datatypes ((C!43312 0))(
  ( (C!43313 (val!32204 Int)) )
))
(declare-datatypes ((Regex!21487 0))(
  ( (ElementMatch!21487 (c!1461510 C!43312)) (Concat!30486 (regOne!43486 Regex!21487) (regTwo!43486 Regex!21487)) (EmptyExpr!21487) (Star!21487 (reg!21816 Regex!21487)) (EmptyLang!21487) (Union!21487 (regOne!43487 Regex!21487) (regTwo!43487 Regex!21487)) )
))
(declare-fun lt!2702105 () Regex!21487)

(declare-fun r!24602 () Regex!21487)

(assert (=> b!7958553 (= res!3154552 (= lt!2702105 r!24602))))

(declare-fun baseR!116 () Regex!21487)

(declare-datatypes ((List!74716 0))(
  ( (Nil!74592) (Cons!74592 (h!81040 C!43312) (t!390459 List!74716)) )
))
(declare-fun testedP!447 () List!74716)

(declare-fun derivative!673 (Regex!21487 List!74716) Regex!21487)

(assert (=> b!7958553 (= lt!2702105 (derivative!673 baseR!116 testedP!447))))

(declare-fun b!7958554 () Bool)

(declare-fun e!4693636 () Bool)

(declare-fun tp!2371030 () Bool)

(declare-fun tp!2371024 () Bool)

(assert (=> b!7958554 (= e!4693636 (and tp!2371030 tp!2371024))))

(declare-fun b!7958555 () Bool)

(declare-fun e!4693639 () Bool)

(declare-fun e!4693632 () Bool)

(assert (=> b!7958555 (= e!4693639 (not e!4693632))))

(declare-fun res!3154546 () Bool)

(assert (=> b!7958555 (=> res!3154546 e!4693632)))

(declare-fun lt!2702111 () Int)

(declare-fun lt!2702107 () Int)

(assert (=> b!7958555 (= res!3154546 (>= lt!2702111 lt!2702107))))

(declare-datatypes ((Unit!169954 0))(
  ( (Unit!169955) )
))
(declare-fun lt!2702104 () Unit!169954)

(declare-fun e!4693640 () Unit!169954)

(assert (=> b!7958555 (= lt!2702104 e!4693640)))

(declare-fun c!1461509 () Bool)

(assert (=> b!7958555 (= c!1461509 (= lt!2702111 lt!2702107))))

(assert (=> b!7958555 (<= lt!2702111 lt!2702107)))

(declare-fun lt!2702102 () Unit!169954)

(declare-fun input!7927 () List!74716)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1104 (List!74716 List!74716) Unit!169954)

(assert (=> b!7958555 (= lt!2702102 (lemmaIsPrefixThenSmallerEqSize!1104 testedP!447 input!7927))))

(declare-fun b!7958556 () Bool)

(declare-fun tp_is_empty!53517 () Bool)

(assert (=> b!7958556 (= e!4693636 tp_is_empty!53517)))

(declare-fun b!7958557 () Bool)

(declare-fun e!4693641 () Bool)

(assert (=> b!7958557 (= e!4693632 e!4693641)))

(declare-fun res!3154548 () Bool)

(assert (=> b!7958557 (=> res!3154548 e!4693641)))

(declare-fun nullable!9588 (Regex!21487) Bool)

(assert (=> b!7958557 (= res!3154548 (not (nullable!9588 r!24602)))))

(declare-fun lt!2702103 () List!74716)

(declare-fun isPrefix!6587 (List!74716 List!74716) Bool)

(assert (=> b!7958557 (isPrefix!6587 lt!2702103 input!7927)))

(declare-fun lt!2702109 () Unit!169954)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1314 (List!74716 List!74716) Unit!169954)

(assert (=> b!7958557 (= lt!2702109 (lemmaAddHeadSuffixToPrefixStillPrefix!1314 testedP!447 input!7927))))

(declare-fun lt!2702106 () C!43312)

(declare-fun ++!18357 (List!74716 List!74716) List!74716)

(assert (=> b!7958557 (= lt!2702103 (++!18357 testedP!447 (Cons!74592 lt!2702106 Nil!74592)))))

(declare-fun lt!2702110 () List!74716)

(declare-fun head!16239 (List!74716) C!43312)

(assert (=> b!7958557 (= lt!2702106 (head!16239 lt!2702110))))

(declare-fun res!3154545 () Bool)

(assert (=> start!750684 (=> (not res!3154545) (not e!4693638))))

(declare-fun validRegex!11791 (Regex!21487) Bool)

(assert (=> start!750684 (= res!3154545 (validRegex!11791 baseR!116))))

(assert (=> start!750684 e!4693638))

(assert (=> start!750684 e!4693636))

(declare-fun e!4693635 () Bool)

(assert (=> start!750684 e!4693635))

(declare-fun e!4693637 () Bool)

(assert (=> start!750684 e!4693637))

(declare-fun e!4693633 () Bool)

(assert (=> start!750684 e!4693633))

(declare-fun b!7958558 () Bool)

(assert (=> b!7958558 (= e!4693634 e!4693639)))

(declare-fun res!3154547 () Bool)

(assert (=> b!7958558 (=> (not res!3154547) (not e!4693639))))

(declare-fun isEmpty!42893 (List!74716) Bool)

(declare-datatypes ((tuple2!70636 0))(
  ( (tuple2!70637 (_1!38621 List!74716) (_2!38621 List!74716)) )
))
(declare-fun findLongestMatchInner!2268 (Regex!21487 List!74716 Int List!74716 List!74716 Int) tuple2!70636)

(assert (=> b!7958558 (= res!3154547 (not (isEmpty!42893 (_1!38621 (findLongestMatchInner!2268 r!24602 testedP!447 lt!2702111 lt!2702110 input!7927 lt!2702107)))))))

(declare-fun size!43423 (List!74716) Int)

(assert (=> b!7958558 (= lt!2702107 (size!43423 input!7927))))

(declare-fun getSuffix!3790 (List!74716 List!74716) List!74716)

(assert (=> b!7958558 (= lt!2702110 (getSuffix!3790 input!7927 testedP!447))))

(assert (=> b!7958558 (= lt!2702111 (size!43423 testedP!447))))

(declare-fun b!7958559 () Bool)

(assert (=> b!7958559 (= e!4693641 true)))

(declare-fun matchR!10728 (Regex!21487 List!74716) Bool)

(assert (=> b!7958559 (= (matchR!10728 baseR!116 testedP!447) (matchR!10728 lt!2702105 Nil!74592))))

(declare-fun lt!2702108 () Unit!169954)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!296 (Regex!21487 List!74716) Unit!169954)

(assert (=> b!7958559 (= lt!2702108 (lemmaMatchRIsSameAsWholeDerivativeAndNil!296 baseR!116 testedP!447))))

(declare-fun b!7958560 () Bool)

(declare-fun tp!2371022 () Bool)

(assert (=> b!7958560 (= e!4693636 tp!2371022)))

(declare-fun b!7958561 () Bool)

(declare-fun tp!2371021 () Bool)

(assert (=> b!7958561 (= e!4693635 (and tp_is_empty!53517 tp!2371021))))

(declare-fun b!7958562 () Bool)

(declare-fun tp!2371023 () Bool)

(assert (=> b!7958562 (= e!4693633 tp!2371023)))

(declare-fun b!7958563 () Bool)

(declare-fun res!3154549 () Bool)

(assert (=> b!7958563 (=> (not res!3154549) (not e!4693639))))

(assert (=> b!7958563 (= res!3154549 (not (= testedP!447 input!7927)))))

(declare-fun b!7958564 () Bool)

(declare-fun res!3154550 () Bool)

(assert (=> b!7958564 (=> res!3154550 e!4693641)))

(declare-fun derivativeStep!6515 (Regex!21487 C!43312) Regex!21487)

(declare-fun tail!15776 (List!74716) List!74716)

(assert (=> b!7958564 (= res!3154550 (not (isEmpty!42893 (_1!38621 (findLongestMatchInner!2268 (derivativeStep!6515 r!24602 lt!2702106) lt!2702103 (+ 1 lt!2702111) (tail!15776 lt!2702110) input!7927 lt!2702107)))))))

(declare-fun b!7958565 () Bool)

(assert (=> b!7958565 (= e!4693633 tp_is_empty!53517)))

(declare-fun b!7958566 () Bool)

(declare-fun tp!2371019 () Bool)

(declare-fun tp!2371020 () Bool)

(assert (=> b!7958566 (= e!4693636 (and tp!2371019 tp!2371020))))

(declare-fun b!7958567 () Bool)

(declare-fun Unit!169956 () Unit!169954)

(assert (=> b!7958567 (= e!4693640 Unit!169956)))

(declare-fun b!7958568 () Bool)

(declare-fun tp!2371028 () Bool)

(declare-fun tp!2371027 () Bool)

(assert (=> b!7958568 (= e!4693633 (and tp!2371028 tp!2371027))))

(declare-fun b!7958569 () Bool)

(declare-fun tp!2371025 () Bool)

(declare-fun tp!2371029 () Bool)

(assert (=> b!7958569 (= e!4693633 (and tp!2371025 tp!2371029))))

(declare-fun b!7958570 () Bool)

(declare-fun res!3154551 () Bool)

(assert (=> b!7958570 (=> (not res!3154551) (not e!4693638))))

(assert (=> b!7958570 (= res!3154551 (isPrefix!6587 testedP!447 input!7927))))

(declare-fun b!7958571 () Bool)

(declare-fun tp!2371026 () Bool)

(assert (=> b!7958571 (= e!4693637 (and tp_is_empty!53517 tp!2371026))))

(declare-fun b!7958572 () Bool)

(declare-fun Unit!169957 () Unit!169954)

(assert (=> b!7958572 (= e!4693640 Unit!169957)))

(declare-fun lt!2702113 () Unit!169954)

(declare-fun lemmaIsPrefixRefl!4055 (List!74716 List!74716) Unit!169954)

(assert (=> b!7958572 (= lt!2702113 (lemmaIsPrefixRefl!4055 input!7927 input!7927))))

(assert (=> b!7958572 (isPrefix!6587 input!7927 input!7927)))

(declare-fun lt!2702112 () Unit!169954)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1635 (List!74716 List!74716 List!74716) Unit!169954)

(assert (=> b!7958572 (= lt!2702112 (lemmaIsPrefixSameLengthThenSameList!1635 input!7927 testedP!447 input!7927))))

(assert (=> b!7958572 false))

(assert (= (and start!750684 res!3154545) b!7958570))

(assert (= (and b!7958570 res!3154551) b!7958553))

(assert (= (and b!7958553 res!3154552) b!7958558))

(assert (= (and b!7958558 res!3154547) b!7958563))

(assert (= (and b!7958563 res!3154549) b!7958555))

(assert (= (and b!7958555 c!1461509) b!7958572))

(assert (= (and b!7958555 (not c!1461509)) b!7958567))

(assert (= (and b!7958555 (not res!3154546)) b!7958557))

(assert (= (and b!7958557 (not res!3154548)) b!7958564))

(assert (= (and b!7958564 (not res!3154550)) b!7958559))

(get-info :version)

(assert (= (and start!750684 ((_ is ElementMatch!21487) baseR!116)) b!7958556))

(assert (= (and start!750684 ((_ is Concat!30486) baseR!116)) b!7958554))

(assert (= (and start!750684 ((_ is Star!21487) baseR!116)) b!7958560))

(assert (= (and start!750684 ((_ is Union!21487) baseR!116)) b!7958566))

(assert (= (and start!750684 ((_ is Cons!74592) testedP!447)) b!7958561))

(assert (= (and start!750684 ((_ is Cons!74592) input!7927)) b!7958571))

(assert (= (and start!750684 ((_ is ElementMatch!21487) r!24602)) b!7958565))

(assert (= (and start!750684 ((_ is Concat!30486) r!24602)) b!7958568))

(assert (= (and start!750684 ((_ is Star!21487) r!24602)) b!7958562))

(assert (= (and start!750684 ((_ is Union!21487) r!24602)) b!7958569))

(declare-fun m!8339554 () Bool)

(assert (=> b!7958564 m!8339554))

(declare-fun m!8339556 () Bool)

(assert (=> b!7958564 m!8339556))

(assert (=> b!7958564 m!8339554))

(assert (=> b!7958564 m!8339556))

(declare-fun m!8339558 () Bool)

(assert (=> b!7958564 m!8339558))

(declare-fun m!8339560 () Bool)

(assert (=> b!7958564 m!8339560))

(declare-fun m!8339562 () Bool)

(assert (=> b!7958570 m!8339562))

(declare-fun m!8339564 () Bool)

(assert (=> b!7958572 m!8339564))

(declare-fun m!8339566 () Bool)

(assert (=> b!7958572 m!8339566))

(declare-fun m!8339568 () Bool)

(assert (=> b!7958572 m!8339568))

(declare-fun m!8339570 () Bool)

(assert (=> b!7958555 m!8339570))

(declare-fun m!8339572 () Bool)

(assert (=> b!7958553 m!8339572))

(declare-fun m!8339574 () Bool)

(assert (=> b!7958557 m!8339574))

(declare-fun m!8339576 () Bool)

(assert (=> b!7958557 m!8339576))

(declare-fun m!8339578 () Bool)

(assert (=> b!7958557 m!8339578))

(declare-fun m!8339580 () Bool)

(assert (=> b!7958557 m!8339580))

(declare-fun m!8339582 () Bool)

(assert (=> b!7958557 m!8339582))

(declare-fun m!8339584 () Bool)

(assert (=> b!7958559 m!8339584))

(declare-fun m!8339586 () Bool)

(assert (=> b!7958559 m!8339586))

(declare-fun m!8339588 () Bool)

(assert (=> b!7958559 m!8339588))

(declare-fun m!8339590 () Bool)

(assert (=> b!7958558 m!8339590))

(declare-fun m!8339592 () Bool)

(assert (=> b!7958558 m!8339592))

(declare-fun m!8339594 () Bool)

(assert (=> b!7958558 m!8339594))

(declare-fun m!8339596 () Bool)

(assert (=> b!7958558 m!8339596))

(declare-fun m!8339598 () Bool)

(assert (=> b!7958558 m!8339598))

(declare-fun m!8339600 () Bool)

(assert (=> start!750684 m!8339600))

(check-sat (not b!7958570) (not b!7958569) (not b!7958559) (not b!7958562) (not b!7958572) (not b!7958560) (not b!7958553) (not b!7958557) (not start!750684) (not b!7958564) (not b!7958555) (not b!7958558) tp_is_empty!53517 (not b!7958554) (not b!7958566) (not b!7958561) (not b!7958568) (not b!7958571))
(check-sat)
