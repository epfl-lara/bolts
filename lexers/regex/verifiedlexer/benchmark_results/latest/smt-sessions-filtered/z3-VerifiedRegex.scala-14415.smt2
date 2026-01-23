; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751312 () Bool)

(assert start!751312)

(declare-fun res!3156594 () Bool)

(declare-fun e!4697243 () Bool)

(assert (=> start!751312 (=> (not res!3156594) (not e!4697243))))

(declare-datatypes ((C!43360 0))(
  ( (C!43361 (val!32228 Int)) )
))
(declare-datatypes ((Regex!21511 0))(
  ( (ElementMatch!21511 (c!1462918 C!43360)) (Concat!30510 (regOne!43534 Regex!21511) (regTwo!43534 Regex!21511)) (EmptyExpr!21511) (Star!21511 (reg!21840 Regex!21511)) (EmptyLang!21511) (Union!21511 (regOne!43535 Regex!21511) (regTwo!43535 Regex!21511)) )
))
(declare-fun baseR!116 () Regex!21511)

(declare-fun validRegex!11815 (Regex!21511) Bool)

(assert (=> start!751312 (= res!3156594 (validRegex!11815 baseR!116))))

(assert (=> start!751312 e!4697243))

(declare-fun e!4697241 () Bool)

(assert (=> start!751312 e!4697241))

(declare-fun e!4697240 () Bool)

(assert (=> start!751312 e!4697240))

(declare-fun e!4697239 () Bool)

(assert (=> start!751312 e!4697239))

(declare-fun e!4697238 () Bool)

(assert (=> start!751312 e!4697238))

(declare-fun b!7965659 () Bool)

(declare-fun e!4697246 () Bool)

(declare-fun e!4697249 () Bool)

(assert (=> b!7965659 (= e!4697246 e!4697249)))

(declare-fun res!3156591 () Bool)

(assert (=> b!7965659 (=> res!3156591 e!4697249)))

(declare-datatypes ((List!74740 0))(
  ( (Nil!74616) (Cons!74616 (h!81064 C!43360) (t!390483 List!74740)) )
))
(declare-fun lt!2705698 () List!74740)

(declare-fun lt!2705702 () Int)

(declare-fun lt!2705699 () List!74740)

(declare-fun input!7927 () List!74740)

(declare-fun lt!2705707 () Int)

(declare-fun lt!2705696 () Regex!21511)

(declare-fun isEmpty!42917 (List!74740) Bool)

(declare-datatypes ((tuple2!70684 0))(
  ( (tuple2!70685 (_1!38645 List!74740) (_2!38645 List!74740)) )
))
(declare-fun findLongestMatchInner!2292 (Regex!21511 List!74740 Int List!74740 List!74740 Int) tuple2!70684)

(declare-fun tail!15800 (List!74740) List!74740)

(assert (=> b!7965659 (= res!3156591 (isEmpty!42917 (_1!38645 (findLongestMatchInner!2292 lt!2705696 lt!2705699 (+ 1 lt!2705707) (tail!15800 lt!2705698) input!7927 lt!2705702))))))

(declare-fun r!24602 () Regex!21511)

(declare-fun lt!2705708 () C!43360)

(declare-fun derivativeStep!6539 (Regex!21511 C!43360) Regex!21511)

(assert (=> b!7965659 (= lt!2705696 (derivativeStep!6539 r!24602 lt!2705708))))

(declare-fun b!7965660 () Bool)

(declare-fun tp!2373788 () Bool)

(declare-fun tp!2373798 () Bool)

(assert (=> b!7965660 (= e!4697238 (and tp!2373788 tp!2373798))))

(declare-fun b!7965661 () Bool)

(declare-fun e!4697245 () Bool)

(assert (=> b!7965661 (= e!4697243 e!4697245)))

(declare-fun res!3156599 () Bool)

(assert (=> b!7965661 (=> (not res!3156599) (not e!4697245))))

(declare-fun testedP!447 () List!74740)

(assert (=> b!7965661 (= res!3156599 (not (isEmpty!42917 (_1!38645 (findLongestMatchInner!2292 r!24602 testedP!447 lt!2705707 lt!2705698 input!7927 lt!2705702)))))))

(declare-fun size!43447 (List!74740) Int)

(assert (=> b!7965661 (= lt!2705702 (size!43447 input!7927))))

(declare-fun getSuffix!3814 (List!74740 List!74740) List!74740)

(assert (=> b!7965661 (= lt!2705698 (getSuffix!3814 input!7927 testedP!447))))

(assert (=> b!7965661 (= lt!2705707 (size!43447 testedP!447))))

(declare-fun b!7965662 () Bool)

(declare-fun tp!2373790 () Bool)

(declare-fun tp!2373787 () Bool)

(assert (=> b!7965662 (= e!4697241 (and tp!2373790 tp!2373787))))

(declare-fun b!7965663 () Bool)

(declare-fun e!4697248 () Bool)

(declare-fun lt!2705709 () tuple2!70684)

(declare-fun matchR!10744 (Regex!21511 List!74740) Bool)

(assert (=> b!7965663 (= e!4697248 (matchR!10744 baseR!116 (_1!38645 lt!2705709)))))

(declare-fun b!7965664 () Bool)

(declare-fun tp!2373793 () Bool)

(declare-fun tp!2373797 () Bool)

(assert (=> b!7965664 (= e!4697238 (and tp!2373793 tp!2373797))))

(declare-fun b!7965665 () Bool)

(declare-fun tp_is_empty!53565 () Bool)

(declare-fun tp!2373789 () Bool)

(assert (=> b!7965665 (= e!4697240 (and tp_is_empty!53565 tp!2373789))))

(declare-fun b!7965666 () Bool)

(declare-fun tp!2373792 () Bool)

(assert (=> b!7965666 (= e!4697241 tp!2373792)))

(declare-fun b!7965667 () Bool)

(assert (=> b!7965667 (= e!4697241 tp_is_empty!53565)))

(declare-fun b!7965668 () Bool)

(declare-fun res!3156600 () Bool)

(assert (=> b!7965668 (=> (not res!3156600) (not e!4697243))))

(declare-fun isPrefix!6611 (List!74740 List!74740) Bool)

(assert (=> b!7965668 (= res!3156600 (isPrefix!6611 testedP!447 input!7927))))

(declare-fun b!7965669 () Bool)

(declare-fun tp!2373794 () Bool)

(declare-fun tp!2373795 () Bool)

(assert (=> b!7965669 (= e!4697241 (and tp!2373794 tp!2373795))))

(declare-fun b!7965670 () Bool)

(assert (=> b!7965670 (= e!4697238 tp_is_empty!53565)))

(declare-fun b!7965671 () Bool)

(declare-fun tp!2373791 () Bool)

(assert (=> b!7965671 (= e!4697239 (and tp_is_empty!53565 tp!2373791))))

(declare-fun b!7965672 () Bool)

(declare-fun tp!2373796 () Bool)

(assert (=> b!7965672 (= e!4697238 tp!2373796)))

(declare-fun b!7965673 () Bool)

(declare-datatypes ((Unit!170170 0))(
  ( (Unit!170171) )
))
(declare-fun e!4697242 () Unit!170170)

(declare-fun Unit!170172 () Unit!170170)

(assert (=> b!7965673 (= e!4697242 Unit!170172)))

(declare-fun b!7965674 () Bool)

(declare-fun e!4697244 () Bool)

(assert (=> b!7965674 (= e!4697244 e!4697246)))

(declare-fun res!3156595 () Bool)

(assert (=> b!7965674 (=> res!3156595 e!4697246)))

(declare-fun nullable!9612 (Regex!21511) Bool)

(assert (=> b!7965674 (= res!3156595 (not (nullable!9612 r!24602)))))

(assert (=> b!7965674 (isPrefix!6611 lt!2705699 input!7927)))

(declare-fun lt!2705701 () Unit!170170)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1338 (List!74740 List!74740) Unit!170170)

(assert (=> b!7965674 (= lt!2705701 (lemmaAddHeadSuffixToPrefixStillPrefix!1338 testedP!447 input!7927))))

(declare-fun ++!18381 (List!74740 List!74740) List!74740)

(assert (=> b!7965674 (= lt!2705699 (++!18381 testedP!447 (Cons!74616 lt!2705708 Nil!74616)))))

(declare-fun head!16263 (List!74740) C!43360)

(assert (=> b!7965674 (= lt!2705708 (head!16263 lt!2705698))))

(declare-fun b!7965675 () Bool)

(declare-fun res!3156593 () Bool)

(assert (=> b!7965675 (=> (not res!3156593) (not e!4697243))))

(declare-fun derivative!697 (Regex!21511 List!74740) Regex!21511)

(assert (=> b!7965675 (= res!3156593 (= (derivative!697 baseR!116 testedP!447) r!24602))))

(declare-fun b!7965676 () Bool)

(assert (=> b!7965676 (= e!4697245 (not e!4697244))))

(declare-fun res!3156597 () Bool)

(assert (=> b!7965676 (=> res!3156597 e!4697244)))

(assert (=> b!7965676 (= res!3156597 (>= lt!2705707 lt!2705702))))

(declare-fun lt!2705703 () Unit!170170)

(assert (=> b!7965676 (= lt!2705703 e!4697242)))

(declare-fun c!1462917 () Bool)

(assert (=> b!7965676 (= c!1462917 (= lt!2705707 lt!2705702))))

(assert (=> b!7965676 (<= lt!2705707 lt!2705702)))

(declare-fun lt!2705706 () Unit!170170)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1128 (List!74740 List!74740) Unit!170170)

(assert (=> b!7965676 (= lt!2705706 (lemmaIsPrefixThenSmallerEqSize!1128 testedP!447 input!7927))))

(declare-fun b!7965677 () Bool)

(declare-fun e!4697247 () Bool)

(assert (=> b!7965677 (= e!4697249 e!4697247)))

(declare-fun res!3156592 () Bool)

(assert (=> b!7965677 (=> res!3156592 e!4697247)))

(assert (=> b!7965677 (= res!3156592 (not (validRegex!11815 r!24602)))))

(assert (=> b!7965677 e!4697248))

(declare-fun res!3156596 () Bool)

(assert (=> b!7965677 (=> res!3156596 e!4697248)))

(assert (=> b!7965677 (= res!3156596 (isEmpty!42917 (_1!38645 lt!2705709)))))

(assert (=> b!7965677 (= lt!2705709 (findLongestMatchInner!2292 lt!2705696 lt!2705699 (size!43447 lt!2705699) (getSuffix!3814 input!7927 lt!2705699) input!7927 lt!2705702))))

(declare-fun lt!2705695 () Unit!170170)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!55 (Regex!21511 Regex!21511 List!74740 List!74740) Unit!170170)

(assert (=> b!7965677 (= lt!2705695 (longestMatchIsAcceptedByMatchOrIsEmptyRec!55 baseR!116 lt!2705696 lt!2705699 input!7927))))

(assert (=> b!7965677 (= (derivative!697 baseR!116 lt!2705699) lt!2705696)))

(declare-fun lt!2705705 () Unit!170170)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!223 (Regex!21511 Regex!21511 List!74740 C!43360) Unit!170170)

(assert (=> b!7965677 (= lt!2705705 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!223 baseR!116 r!24602 testedP!447 lt!2705708))))

(declare-fun b!7965678 () Bool)

(assert (=> b!7965678 (= e!4697247 true)))

(declare-fun lt!2705700 () List!74740)

(assert (=> b!7965678 (= lt!2705700 (++!18381 testedP!447 lt!2705698))))

(declare-fun b!7965679 () Bool)

(declare-fun Unit!170173 () Unit!170170)

(assert (=> b!7965679 (= e!4697242 Unit!170173)))

(declare-fun lt!2705704 () Unit!170170)

(declare-fun lemmaIsPrefixRefl!4079 (List!74740 List!74740) Unit!170170)

(assert (=> b!7965679 (= lt!2705704 (lemmaIsPrefixRefl!4079 input!7927 input!7927))))

(assert (=> b!7965679 (isPrefix!6611 input!7927 input!7927)))

(declare-fun lt!2705697 () Unit!170170)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1659 (List!74740 List!74740 List!74740) Unit!170170)

(assert (=> b!7965679 (= lt!2705697 (lemmaIsPrefixSameLengthThenSameList!1659 input!7927 testedP!447 input!7927))))

(assert (=> b!7965679 false))

(declare-fun b!7965680 () Bool)

(declare-fun res!3156598 () Bool)

(assert (=> b!7965680 (=> (not res!3156598) (not e!4697245))))

(assert (=> b!7965680 (= res!3156598 (not (= testedP!447 input!7927)))))

(assert (= (and start!751312 res!3156594) b!7965668))

(assert (= (and b!7965668 res!3156600) b!7965675))

(assert (= (and b!7965675 res!3156593) b!7965661))

(assert (= (and b!7965661 res!3156599) b!7965680))

(assert (= (and b!7965680 res!3156598) b!7965676))

(assert (= (and b!7965676 c!1462917) b!7965679))

(assert (= (and b!7965676 (not c!1462917)) b!7965673))

(assert (= (and b!7965676 (not res!3156597)) b!7965674))

(assert (= (and b!7965674 (not res!3156595)) b!7965659))

(assert (= (and b!7965659 (not res!3156591)) b!7965677))

(assert (= (and b!7965677 (not res!3156596)) b!7965663))

(assert (= (and b!7965677 (not res!3156592)) b!7965678))

(get-info :version)

(assert (= (and start!751312 ((_ is ElementMatch!21511) baseR!116)) b!7965667))

(assert (= (and start!751312 ((_ is Concat!30510) baseR!116)) b!7965662))

(assert (= (and start!751312 ((_ is Star!21511) baseR!116)) b!7965666))

(assert (= (and start!751312 ((_ is Union!21511) baseR!116)) b!7965669))

(assert (= (and start!751312 ((_ is Cons!74616) testedP!447)) b!7965665))

(assert (= (and start!751312 ((_ is Cons!74616) input!7927)) b!7965671))

(assert (= (and start!751312 ((_ is ElementMatch!21511) r!24602)) b!7965670))

(assert (= (and start!751312 ((_ is Concat!30510) r!24602)) b!7965660))

(assert (= (and start!751312 ((_ is Star!21511) r!24602)) b!7965672))

(assert (= (and start!751312 ((_ is Union!21511) r!24602)) b!7965664))

(declare-fun m!8345456 () Bool)

(assert (=> b!7965678 m!8345456))

(declare-fun m!8345458 () Bool)

(assert (=> start!751312 m!8345458))

(declare-fun m!8345460 () Bool)

(assert (=> b!7965675 m!8345460))

(declare-fun m!8345462 () Bool)

(assert (=> b!7965674 m!8345462))

(declare-fun m!8345464 () Bool)

(assert (=> b!7965674 m!8345464))

(declare-fun m!8345466 () Bool)

(assert (=> b!7965674 m!8345466))

(declare-fun m!8345468 () Bool)

(assert (=> b!7965674 m!8345468))

(declare-fun m!8345470 () Bool)

(assert (=> b!7965674 m!8345470))

(declare-fun m!8345472 () Bool)

(assert (=> b!7965659 m!8345472))

(assert (=> b!7965659 m!8345472))

(declare-fun m!8345474 () Bool)

(assert (=> b!7965659 m!8345474))

(declare-fun m!8345476 () Bool)

(assert (=> b!7965659 m!8345476))

(declare-fun m!8345478 () Bool)

(assert (=> b!7965659 m!8345478))

(declare-fun m!8345480 () Bool)

(assert (=> b!7965677 m!8345480))

(declare-fun m!8345482 () Bool)

(assert (=> b!7965677 m!8345482))

(declare-fun m!8345484 () Bool)

(assert (=> b!7965677 m!8345484))

(declare-fun m!8345486 () Bool)

(assert (=> b!7965677 m!8345486))

(declare-fun m!8345488 () Bool)

(assert (=> b!7965677 m!8345488))

(assert (=> b!7965677 m!8345480))

(declare-fun m!8345490 () Bool)

(assert (=> b!7965677 m!8345490))

(assert (=> b!7965677 m!8345488))

(declare-fun m!8345492 () Bool)

(assert (=> b!7965677 m!8345492))

(declare-fun m!8345494 () Bool)

(assert (=> b!7965677 m!8345494))

(declare-fun m!8345496 () Bool)

(assert (=> b!7965668 m!8345496))

(declare-fun m!8345498 () Bool)

(assert (=> b!7965663 m!8345498))

(declare-fun m!8345500 () Bool)

(assert (=> b!7965679 m!8345500))

(declare-fun m!8345502 () Bool)

(assert (=> b!7965679 m!8345502))

(declare-fun m!8345504 () Bool)

(assert (=> b!7965679 m!8345504))

(declare-fun m!8345506 () Bool)

(assert (=> b!7965661 m!8345506))

(declare-fun m!8345508 () Bool)

(assert (=> b!7965661 m!8345508))

(declare-fun m!8345510 () Bool)

(assert (=> b!7965661 m!8345510))

(declare-fun m!8345512 () Bool)

(assert (=> b!7965661 m!8345512))

(declare-fun m!8345514 () Bool)

(assert (=> b!7965661 m!8345514))

(declare-fun m!8345516 () Bool)

(assert (=> b!7965676 m!8345516))

(check-sat (not b!7965659) (not b!7965668) (not b!7965660) (not b!7965675) (not b!7965665) (not b!7965678) (not b!7965664) (not b!7965671) (not b!7965679) (not start!751312) (not b!7965677) (not b!7965666) (not b!7965661) (not b!7965674) (not b!7965663) (not b!7965672) (not b!7965676) (not b!7965662) (not b!7965669) tp_is_empty!53565)
(check-sat)
