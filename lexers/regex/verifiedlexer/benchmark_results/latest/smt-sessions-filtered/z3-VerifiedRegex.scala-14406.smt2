; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750840 () Bool)

(assert start!750840)

(declare-fun b!7960076 () Bool)

(declare-fun res!3155050 () Bool)

(declare-fun e!4694434 () Bool)

(assert (=> b!7960076 (=> res!3155050 e!4694434)))

(declare-fun lt!2702945 () Int)

(declare-fun lt!2702938 () Int)

(declare-datatypes ((C!43324 0))(
  ( (C!43325 (val!32210 Int)) )
))
(declare-datatypes ((Regex!21493 0))(
  ( (ElementMatch!21493 (c!1461824 C!43324)) (Concat!30492 (regOne!43498 Regex!21493) (regTwo!43498 Regex!21493)) (EmptyExpr!21493) (Star!21493 (reg!21822 Regex!21493)) (EmptyLang!21493) (Union!21493 (regOne!43499 Regex!21493) (regTwo!43499 Regex!21493)) )
))
(declare-fun r!24602 () Regex!21493)

(declare-datatypes ((List!74722 0))(
  ( (Nil!74598) (Cons!74598 (h!81046 C!43324) (t!390465 List!74722)) )
))
(declare-fun input!7927 () List!74722)

(declare-fun lt!2702943 () List!74722)

(declare-fun lt!2702941 () C!43324)

(declare-fun lt!2702934 () List!74722)

(declare-fun isEmpty!42899 (List!74722) Bool)

(declare-datatypes ((tuple2!70648 0))(
  ( (tuple2!70649 (_1!38627 List!74722) (_2!38627 List!74722)) )
))
(declare-fun findLongestMatchInner!2274 (Regex!21493 List!74722 Int List!74722 List!74722 Int) tuple2!70648)

(declare-fun derivativeStep!6521 (Regex!21493 C!43324) Regex!21493)

(declare-fun tail!15782 (List!74722) List!74722)

(assert (=> b!7960076 (= res!3155050 (not (isEmpty!42899 (_1!38627 (findLongestMatchInner!2274 (derivativeStep!6521 r!24602 lt!2702941) lt!2702934 (+ 1 lt!2702945) (tail!15782 lt!2702943) input!7927 lt!2702938)))))))

(declare-fun b!7960077 () Bool)

(declare-fun e!4694427 () Bool)

(declare-fun tp_is_empty!53529 () Bool)

(assert (=> b!7960077 (= e!4694427 tp_is_empty!53529)))

(declare-fun b!7960078 () Bool)

(declare-fun e!4694429 () Bool)

(declare-fun e!4694430 () Bool)

(assert (=> b!7960078 (= e!4694429 e!4694430)))

(declare-fun res!3155053 () Bool)

(assert (=> b!7960078 (=> (not res!3155053) (not e!4694430))))

(declare-fun lt!2702936 () Regex!21493)

(assert (=> b!7960078 (= res!3155053 (= lt!2702936 r!24602))))

(declare-fun baseR!116 () Regex!21493)

(declare-fun testedP!447 () List!74722)

(declare-fun derivative!679 (Regex!21493 List!74722) Regex!21493)

(assert (=> b!7960078 (= lt!2702936 (derivative!679 baseR!116 testedP!447))))

(declare-fun b!7960079 () Bool)

(declare-fun e!4694435 () Bool)

(declare-fun tp!2371493 () Bool)

(declare-fun tp!2371499 () Bool)

(assert (=> b!7960079 (= e!4694435 (and tp!2371493 tp!2371499))))

(declare-fun b!7960080 () Bool)

(declare-fun res!3155048 () Bool)

(assert (=> b!7960080 (=> (not res!3155048) (not e!4694429))))

(declare-fun isPrefix!6593 (List!74722 List!74722) Bool)

(assert (=> b!7960080 (= res!3155048 (isPrefix!6593 testedP!447 input!7927))))

(declare-fun b!7960081 () Bool)

(declare-fun tp!2371496 () Bool)

(assert (=> b!7960081 (= e!4694435 tp!2371496)))

(declare-fun b!7960082 () Bool)

(declare-fun tp!2371495 () Bool)

(declare-fun tp!2371502 () Bool)

(assert (=> b!7960082 (= e!4694427 (and tp!2371495 tp!2371502))))

(declare-fun b!7960083 () Bool)

(declare-fun e!4694431 () Bool)

(assert (=> b!7960083 (= e!4694431 true)))

(declare-fun lt!2702944 () List!74722)

(declare-fun ++!18363 (List!74722 List!74722) List!74722)

(assert (=> b!7960083 (= lt!2702944 (++!18363 testedP!447 lt!2702943))))

(declare-fun b!7960084 () Bool)

(declare-fun e!4694437 () Bool)

(assert (=> b!7960084 (= e!4694430 e!4694437)))

(declare-fun res!3155049 () Bool)

(assert (=> b!7960084 (=> (not res!3155049) (not e!4694437))))

(assert (=> b!7960084 (= res!3155049 (not (isEmpty!42899 (_1!38627 (findLongestMatchInner!2274 r!24602 testedP!447 lt!2702945 lt!2702943 input!7927 lt!2702938)))))))

(declare-fun size!43429 (List!74722) Int)

(assert (=> b!7960084 (= lt!2702938 (size!43429 input!7927))))

(declare-fun getSuffix!3796 (List!74722 List!74722) List!74722)

(assert (=> b!7960084 (= lt!2702943 (getSuffix!3796 input!7927 testedP!447))))

(assert (=> b!7960084 (= lt!2702945 (size!43429 testedP!447))))

(declare-fun b!7960085 () Bool)

(declare-fun e!4694433 () Bool)

(assert (=> b!7960085 (= e!4694433 e!4694434)))

(declare-fun res!3155054 () Bool)

(assert (=> b!7960085 (=> res!3155054 e!4694434)))

(declare-fun nullable!9594 (Regex!21493) Bool)

(assert (=> b!7960085 (= res!3155054 (not (nullable!9594 r!24602)))))

(assert (=> b!7960085 (isPrefix!6593 lt!2702934 input!7927)))

(declare-datatypes ((Unit!170002 0))(
  ( (Unit!170003) )
))
(declare-fun lt!2702937 () Unit!170002)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1320 (List!74722 List!74722) Unit!170002)

(assert (=> b!7960085 (= lt!2702937 (lemmaAddHeadSuffixToPrefixStillPrefix!1320 testedP!447 input!7927))))

(assert (=> b!7960085 (= lt!2702934 (++!18363 testedP!447 (Cons!74598 lt!2702941 Nil!74598)))))

(declare-fun head!16245 (List!74722) C!43324)

(assert (=> b!7960085 (= lt!2702941 (head!16245 lt!2702943))))

(declare-fun b!7960086 () Bool)

(declare-fun res!3155052 () Bool)

(assert (=> b!7960086 (=> (not res!3155052) (not e!4694437))))

(assert (=> b!7960086 (= res!3155052 (not (= testedP!447 input!7927)))))

(declare-fun b!7960087 () Bool)

(declare-fun tp!2371501 () Bool)

(assert (=> b!7960087 (= e!4694427 tp!2371501)))

(declare-fun b!7960088 () Bool)

(assert (=> b!7960088 (= e!4694435 tp_is_empty!53529)))

(declare-fun b!7960089 () Bool)

(declare-fun tp!2371492 () Bool)

(declare-fun tp!2371498 () Bool)

(assert (=> b!7960089 (= e!4694435 (and tp!2371492 tp!2371498))))

(declare-fun b!7960090 () Bool)

(assert (=> b!7960090 (= e!4694434 e!4694431)))

(declare-fun res!3155056 () Bool)

(assert (=> b!7960090 (=> res!3155056 e!4694431)))

(declare-fun validRegex!11797 (Regex!21493) Bool)

(assert (=> b!7960090 (= res!3155056 (not (validRegex!11797 r!24602)))))

(declare-fun matchR!10734 (Regex!21493 List!74722) Bool)

(assert (=> b!7960090 (= (matchR!10734 baseR!116 testedP!447) (matchR!10734 lt!2702936 Nil!74598))))

(declare-fun lt!2702939 () Unit!170002)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!302 (Regex!21493 List!74722) Unit!170002)

(assert (=> b!7960090 (= lt!2702939 (lemmaMatchRIsSameAsWholeDerivativeAndNil!302 baseR!116 testedP!447))))

(declare-fun b!7960091 () Bool)

(declare-fun tp!2371500 () Bool)

(declare-fun tp!2371497 () Bool)

(assert (=> b!7960091 (= e!4694427 (and tp!2371500 tp!2371497))))

(declare-fun b!7960092 () Bool)

(declare-fun e!4694432 () Unit!170002)

(declare-fun Unit!170004 () Unit!170002)

(assert (=> b!7960092 (= e!4694432 Unit!170004)))

(declare-fun b!7960093 () Bool)

(declare-fun Unit!170005 () Unit!170002)

(assert (=> b!7960093 (= e!4694432 Unit!170005)))

(declare-fun lt!2702940 () Unit!170002)

(declare-fun lemmaIsPrefixRefl!4061 (List!74722 List!74722) Unit!170002)

(assert (=> b!7960093 (= lt!2702940 (lemmaIsPrefixRefl!4061 input!7927 input!7927))))

(assert (=> b!7960093 (isPrefix!6593 input!7927 input!7927)))

(declare-fun lt!2702935 () Unit!170002)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1641 (List!74722 List!74722 List!74722) Unit!170002)

(assert (=> b!7960093 (= lt!2702935 (lemmaIsPrefixSameLengthThenSameList!1641 input!7927 testedP!447 input!7927))))

(assert (=> b!7960093 false))

(declare-fun res!3155051 () Bool)

(assert (=> start!750840 (=> (not res!3155051) (not e!4694429))))

(assert (=> start!750840 (= res!3155051 (validRegex!11797 baseR!116))))

(assert (=> start!750840 e!4694429))

(assert (=> start!750840 e!4694427))

(declare-fun e!4694428 () Bool)

(assert (=> start!750840 e!4694428))

(declare-fun e!4694436 () Bool)

(assert (=> start!750840 e!4694436))

(assert (=> start!750840 e!4694435))

(declare-fun b!7960094 () Bool)

(declare-fun tp!2371491 () Bool)

(assert (=> b!7960094 (= e!4694428 (and tp_is_empty!53529 tp!2371491))))

(declare-fun b!7960095 () Bool)

(assert (=> b!7960095 (= e!4694437 (not e!4694433))))

(declare-fun res!3155055 () Bool)

(assert (=> b!7960095 (=> res!3155055 e!4694433)))

(assert (=> b!7960095 (= res!3155055 (>= lt!2702945 lt!2702938))))

(declare-fun lt!2702942 () Unit!170002)

(assert (=> b!7960095 (= lt!2702942 e!4694432)))

(declare-fun c!1461823 () Bool)

(assert (=> b!7960095 (= c!1461823 (= lt!2702945 lt!2702938))))

(assert (=> b!7960095 (<= lt!2702945 lt!2702938)))

(declare-fun lt!2702933 () Unit!170002)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1110 (List!74722 List!74722) Unit!170002)

(assert (=> b!7960095 (= lt!2702933 (lemmaIsPrefixThenSmallerEqSize!1110 testedP!447 input!7927))))

(declare-fun b!7960096 () Bool)

(declare-fun tp!2371494 () Bool)

(assert (=> b!7960096 (= e!4694436 (and tp_is_empty!53529 tp!2371494))))

(assert (= (and start!750840 res!3155051) b!7960080))

(assert (= (and b!7960080 res!3155048) b!7960078))

(assert (= (and b!7960078 res!3155053) b!7960084))

(assert (= (and b!7960084 res!3155049) b!7960086))

(assert (= (and b!7960086 res!3155052) b!7960095))

(assert (= (and b!7960095 c!1461823) b!7960093))

(assert (= (and b!7960095 (not c!1461823)) b!7960092))

(assert (= (and b!7960095 (not res!3155055)) b!7960085))

(assert (= (and b!7960085 (not res!3155054)) b!7960076))

(assert (= (and b!7960076 (not res!3155050)) b!7960090))

(assert (= (and b!7960090 (not res!3155056)) b!7960083))

(get-info :version)

(assert (= (and start!750840 ((_ is ElementMatch!21493) baseR!116)) b!7960077))

(assert (= (and start!750840 ((_ is Concat!30492) baseR!116)) b!7960082))

(assert (= (and start!750840 ((_ is Star!21493) baseR!116)) b!7960087))

(assert (= (and start!750840 ((_ is Union!21493) baseR!116)) b!7960091))

(assert (= (and start!750840 ((_ is Cons!74598) testedP!447)) b!7960094))

(assert (= (and start!750840 ((_ is Cons!74598) input!7927)) b!7960096))

(assert (= (and start!750840 ((_ is ElementMatch!21493) r!24602)) b!7960088))

(assert (= (and start!750840 ((_ is Concat!30492) r!24602)) b!7960079))

(assert (= (and start!750840 ((_ is Star!21493) r!24602)) b!7960081))

(assert (= (and start!750840 ((_ is Union!21493) r!24602)) b!7960089))

(declare-fun m!8340650 () Bool)

(assert (=> b!7960080 m!8340650))

(declare-fun m!8340652 () Bool)

(assert (=> b!7960083 m!8340652))

(declare-fun m!8340654 () Bool)

(assert (=> b!7960090 m!8340654))

(declare-fun m!8340656 () Bool)

(assert (=> b!7960090 m!8340656))

(declare-fun m!8340658 () Bool)

(assert (=> b!7960090 m!8340658))

(declare-fun m!8340660 () Bool)

(assert (=> b!7960090 m!8340660))

(declare-fun m!8340662 () Bool)

(assert (=> b!7960085 m!8340662))

(declare-fun m!8340664 () Bool)

(assert (=> b!7960085 m!8340664))

(declare-fun m!8340666 () Bool)

(assert (=> b!7960085 m!8340666))

(declare-fun m!8340668 () Bool)

(assert (=> b!7960085 m!8340668))

(declare-fun m!8340670 () Bool)

(assert (=> b!7960085 m!8340670))

(declare-fun m!8340672 () Bool)

(assert (=> b!7960078 m!8340672))

(declare-fun m!8340674 () Bool)

(assert (=> b!7960084 m!8340674))

(declare-fun m!8340676 () Bool)

(assert (=> b!7960084 m!8340676))

(declare-fun m!8340678 () Bool)

(assert (=> b!7960084 m!8340678))

(declare-fun m!8340680 () Bool)

(assert (=> b!7960084 m!8340680))

(declare-fun m!8340682 () Bool)

(assert (=> b!7960084 m!8340682))

(declare-fun m!8340684 () Bool)

(assert (=> b!7960093 m!8340684))

(declare-fun m!8340686 () Bool)

(assert (=> b!7960093 m!8340686))

(declare-fun m!8340688 () Bool)

(assert (=> b!7960093 m!8340688))

(declare-fun m!8340690 () Bool)

(assert (=> b!7960095 m!8340690))

(declare-fun m!8340692 () Bool)

(assert (=> start!750840 m!8340692))

(declare-fun m!8340694 () Bool)

(assert (=> b!7960076 m!8340694))

(declare-fun m!8340696 () Bool)

(assert (=> b!7960076 m!8340696))

(assert (=> b!7960076 m!8340694))

(assert (=> b!7960076 m!8340696))

(declare-fun m!8340698 () Bool)

(assert (=> b!7960076 m!8340698))

(declare-fun m!8340700 () Bool)

(assert (=> b!7960076 m!8340700))

(check-sat (not b!7960096) (not b!7960079) (not b!7960095) (not b!7960085) (not b!7960078) (not b!7960076) (not b!7960080) (not b!7960090) (not b!7960094) (not b!7960087) (not b!7960082) (not b!7960093) tp_is_empty!53529 (not b!7960091) (not b!7960084) (not start!750840) (not b!7960089) (not b!7960081) (not b!7960083))
(check-sat)
