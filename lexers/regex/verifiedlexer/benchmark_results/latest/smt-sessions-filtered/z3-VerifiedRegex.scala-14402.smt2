; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750680 () Bool)

(assert start!750680)

(declare-fun b!7958433 () Bool)

(declare-fun e!4693577 () Bool)

(declare-fun tp!2370948 () Bool)

(declare-fun tp!2370956 () Bool)

(assert (=> b!7958433 (= e!4693577 (and tp!2370948 tp!2370956))))

(declare-fun b!7958434 () Bool)

(declare-fun tp!2370951 () Bool)

(declare-fun tp!2370958 () Bool)

(assert (=> b!7958434 (= e!4693577 (and tp!2370951 tp!2370958))))

(declare-fun b!7958435 () Bool)

(declare-fun e!4693581 () Bool)

(declare-fun e!4693576 () Bool)

(assert (=> b!7958435 (= e!4693581 e!4693576)))

(declare-fun res!3154504 () Bool)

(assert (=> b!7958435 (=> res!3154504 e!4693576)))

(declare-datatypes ((C!43308 0))(
  ( (C!43309 (val!32202 Int)) )
))
(declare-datatypes ((Regex!21485 0))(
  ( (ElementMatch!21485 (c!1461502 C!43308)) (Concat!30484 (regOne!43482 Regex!21485) (regTwo!43482 Regex!21485)) (EmptyExpr!21485) (Star!21485 (reg!21814 Regex!21485)) (EmptyLang!21485) (Union!21485 (regOne!43483 Regex!21485) (regTwo!43483 Regex!21485)) )
))
(declare-fun r!24602 () Regex!21485)

(declare-fun nullable!9586 (Regex!21485) Bool)

(assert (=> b!7958435 (= res!3154504 (not (nullable!9586 r!24602)))))

(declare-datatypes ((List!74714 0))(
  ( (Nil!74590) (Cons!74590 (h!81038 C!43308) (t!390457 List!74714)) )
))
(declare-fun lt!2702036 () List!74714)

(declare-fun input!7927 () List!74714)

(declare-fun isPrefix!6585 (List!74714 List!74714) Bool)

(assert (=> b!7958435 (isPrefix!6585 lt!2702036 input!7927)))

(declare-datatypes ((Unit!169946 0))(
  ( (Unit!169947) )
))
(declare-fun lt!2702041 () Unit!169946)

(declare-fun testedP!447 () List!74714)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1312 (List!74714 List!74714) Unit!169946)

(assert (=> b!7958435 (= lt!2702041 (lemmaAddHeadSuffixToPrefixStillPrefix!1312 testedP!447 input!7927))))

(declare-fun lt!2702034 () C!43308)

(declare-fun ++!18355 (List!74714 List!74714) List!74714)

(assert (=> b!7958435 (= lt!2702036 (++!18355 testedP!447 (Cons!74590 lt!2702034 Nil!74590)))))

(declare-fun lt!2702030 () List!74714)

(declare-fun head!16237 (List!74714) C!43308)

(assert (=> b!7958435 (= lt!2702034 (head!16237 lt!2702030))))

(declare-fun b!7958436 () Bool)

(declare-fun res!3154501 () Bool)

(declare-fun e!4693578 () Bool)

(assert (=> b!7958436 (=> (not res!3154501) (not e!4693578))))

(assert (=> b!7958436 (= res!3154501 (not (= testedP!447 input!7927)))))

(declare-fun b!7958437 () Bool)

(declare-fun e!4693575 () Bool)

(declare-fun tp!2370949 () Bool)

(declare-fun tp!2370952 () Bool)

(assert (=> b!7958437 (= e!4693575 (and tp!2370949 tp!2370952))))

(declare-fun b!7958438 () Bool)

(assert (=> b!7958438 (= e!4693578 (not e!4693581))))

(declare-fun res!3154499 () Bool)

(assert (=> b!7958438 (=> res!3154499 e!4693581)))

(declare-fun lt!2702032 () Int)

(declare-fun lt!2702037 () Int)

(assert (=> b!7958438 (= res!3154499 (>= lt!2702032 lt!2702037))))

(declare-fun lt!2702038 () Unit!169946)

(declare-fun e!4693580 () Unit!169946)

(assert (=> b!7958438 (= lt!2702038 e!4693580)))

(declare-fun c!1461501 () Bool)

(assert (=> b!7958438 (= c!1461501 (= lt!2702032 lt!2702037))))

(assert (=> b!7958438 (<= lt!2702032 lt!2702037)))

(declare-fun lt!2702031 () Unit!169946)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1102 (List!74714 List!74714) Unit!169946)

(assert (=> b!7958438 (= lt!2702031 (lemmaIsPrefixThenSmallerEqSize!1102 testedP!447 input!7927))))

(declare-fun b!7958439 () Bool)

(declare-fun e!4693579 () Bool)

(assert (=> b!7958439 (= e!4693579 e!4693578)))

(declare-fun res!3154498 () Bool)

(assert (=> b!7958439 (=> (not res!3154498) (not e!4693578))))

(declare-fun isEmpty!42891 (List!74714) Bool)

(declare-datatypes ((tuple2!70632 0))(
  ( (tuple2!70633 (_1!38619 List!74714) (_2!38619 List!74714)) )
))
(declare-fun findLongestMatchInner!2266 (Regex!21485 List!74714 Int List!74714 List!74714 Int) tuple2!70632)

(assert (=> b!7958439 (= res!3154498 (not (isEmpty!42891 (_1!38619 (findLongestMatchInner!2266 r!24602 testedP!447 lt!2702032 lt!2702030 input!7927 lt!2702037)))))))

(declare-fun size!43421 (List!74714) Int)

(assert (=> b!7958439 (= lt!2702037 (size!43421 input!7927))))

(declare-fun getSuffix!3788 (List!74714 List!74714) List!74714)

(assert (=> b!7958439 (= lt!2702030 (getSuffix!3788 input!7927 testedP!447))))

(assert (=> b!7958439 (= lt!2702032 (size!43421 testedP!447))))

(declare-fun b!7958440 () Bool)

(declare-fun e!4693572 () Bool)

(assert (=> b!7958440 (= e!4693572 e!4693579)))

(declare-fun res!3154497 () Bool)

(assert (=> b!7958440 (=> (not res!3154497) (not e!4693579))))

(declare-fun lt!2702033 () Regex!21485)

(assert (=> b!7958440 (= res!3154497 (= lt!2702033 r!24602))))

(declare-fun baseR!116 () Regex!21485)

(declare-fun derivative!671 (Regex!21485 List!74714) Regex!21485)

(assert (=> b!7958440 (= lt!2702033 (derivative!671 baseR!116 testedP!447))))

(declare-fun b!7958441 () Bool)

(declare-fun res!3154502 () Bool)

(assert (=> b!7958441 (=> res!3154502 e!4693576)))

(declare-fun derivativeStep!6513 (Regex!21485 C!43308) Regex!21485)

(declare-fun tail!15774 (List!74714) List!74714)

(assert (=> b!7958441 (= res!3154502 (not (isEmpty!42891 (_1!38619 (findLongestMatchInner!2266 (derivativeStep!6513 r!24602 lt!2702034) lt!2702036 (+ 1 lt!2702032) (tail!15774 lt!2702030) input!7927 lt!2702037)))))))

(declare-fun b!7958442 () Bool)

(declare-fun tp!2370954 () Bool)

(declare-fun tp!2370955 () Bool)

(assert (=> b!7958442 (= e!4693575 (and tp!2370954 tp!2370955))))

(declare-fun res!3154500 () Bool)

(assert (=> start!750680 (=> (not res!3154500) (not e!4693572))))

(declare-fun validRegex!11789 (Regex!21485) Bool)

(assert (=> start!750680 (= res!3154500 (validRegex!11789 baseR!116))))

(assert (=> start!750680 e!4693572))

(assert (=> start!750680 e!4693577))

(declare-fun e!4693574 () Bool)

(assert (=> start!750680 e!4693574))

(declare-fun e!4693573 () Bool)

(assert (=> start!750680 e!4693573))

(assert (=> start!750680 e!4693575))

(declare-fun b!7958443 () Bool)

(declare-fun tp_is_empty!53513 () Bool)

(declare-fun tp!2370957 () Bool)

(assert (=> b!7958443 (= e!4693574 (and tp_is_empty!53513 tp!2370957))))

(declare-fun b!7958444 () Bool)

(declare-fun tp!2370953 () Bool)

(assert (=> b!7958444 (= e!4693577 tp!2370953)))

(declare-fun b!7958445 () Bool)

(declare-fun res!3154503 () Bool)

(assert (=> b!7958445 (=> (not res!3154503) (not e!4693572))))

(assert (=> b!7958445 (= res!3154503 (isPrefix!6585 testedP!447 input!7927))))

(declare-fun b!7958446 () Bool)

(declare-fun tp!2370950 () Bool)

(assert (=> b!7958446 (= e!4693575 tp!2370950)))

(declare-fun b!7958447 () Bool)

(assert (=> b!7958447 (= e!4693577 tp_is_empty!53513)))

(declare-fun b!7958448 () Bool)

(declare-fun Unit!169948 () Unit!169946)

(assert (=> b!7958448 (= e!4693580 Unit!169948)))

(declare-fun lt!2702039 () Unit!169946)

(declare-fun lemmaIsPrefixRefl!4053 (List!74714 List!74714) Unit!169946)

(assert (=> b!7958448 (= lt!2702039 (lemmaIsPrefixRefl!4053 input!7927 input!7927))))

(assert (=> b!7958448 (isPrefix!6585 input!7927 input!7927)))

(declare-fun lt!2702040 () Unit!169946)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1633 (List!74714 List!74714 List!74714) Unit!169946)

(assert (=> b!7958448 (= lt!2702040 (lemmaIsPrefixSameLengthThenSameList!1633 input!7927 testedP!447 input!7927))))

(assert (=> b!7958448 false))

(declare-fun b!7958449 () Bool)

(assert (=> b!7958449 (= e!4693576 (>= lt!2702037 lt!2702032))))

(declare-fun matchR!10726 (Regex!21485 List!74714) Bool)

(assert (=> b!7958449 (= (matchR!10726 baseR!116 testedP!447) (matchR!10726 lt!2702033 Nil!74590))))

(declare-fun lt!2702035 () Unit!169946)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!294 (Regex!21485 List!74714) Unit!169946)

(assert (=> b!7958449 (= lt!2702035 (lemmaMatchRIsSameAsWholeDerivativeAndNil!294 baseR!116 testedP!447))))

(declare-fun b!7958450 () Bool)

(assert (=> b!7958450 (= e!4693575 tp_is_empty!53513)))

(declare-fun b!7958451 () Bool)

(declare-fun tp!2370947 () Bool)

(assert (=> b!7958451 (= e!4693573 (and tp_is_empty!53513 tp!2370947))))

(declare-fun b!7958452 () Bool)

(declare-fun Unit!169949 () Unit!169946)

(assert (=> b!7958452 (= e!4693580 Unit!169949)))

(assert (= (and start!750680 res!3154500) b!7958445))

(assert (= (and b!7958445 res!3154503) b!7958440))

(assert (= (and b!7958440 res!3154497) b!7958439))

(assert (= (and b!7958439 res!3154498) b!7958436))

(assert (= (and b!7958436 res!3154501) b!7958438))

(assert (= (and b!7958438 c!1461501) b!7958448))

(assert (= (and b!7958438 (not c!1461501)) b!7958452))

(assert (= (and b!7958438 (not res!3154499)) b!7958435))

(assert (= (and b!7958435 (not res!3154504)) b!7958441))

(assert (= (and b!7958441 (not res!3154502)) b!7958449))

(get-info :version)

(assert (= (and start!750680 ((_ is ElementMatch!21485) baseR!116)) b!7958447))

(assert (= (and start!750680 ((_ is Concat!30484) baseR!116)) b!7958433))

(assert (= (and start!750680 ((_ is Star!21485) baseR!116)) b!7958444))

(assert (= (and start!750680 ((_ is Union!21485) baseR!116)) b!7958434))

(assert (= (and start!750680 ((_ is Cons!74590) testedP!447)) b!7958443))

(assert (= (and start!750680 ((_ is Cons!74590) input!7927)) b!7958451))

(assert (= (and start!750680 ((_ is ElementMatch!21485) r!24602)) b!7958450))

(assert (= (and start!750680 ((_ is Concat!30484) r!24602)) b!7958437))

(assert (= (and start!750680 ((_ is Star!21485) r!24602)) b!7958446))

(assert (= (and start!750680 ((_ is Union!21485) r!24602)) b!7958442))

(declare-fun m!8339458 () Bool)

(assert (=> b!7958440 m!8339458))

(declare-fun m!8339460 () Bool)

(assert (=> b!7958445 m!8339460))

(declare-fun m!8339462 () Bool)

(assert (=> b!7958439 m!8339462))

(declare-fun m!8339464 () Bool)

(assert (=> b!7958439 m!8339464))

(declare-fun m!8339466 () Bool)

(assert (=> b!7958439 m!8339466))

(declare-fun m!8339468 () Bool)

(assert (=> b!7958439 m!8339468))

(declare-fun m!8339470 () Bool)

(assert (=> b!7958439 m!8339470))

(declare-fun m!8339472 () Bool)

(assert (=> b!7958441 m!8339472))

(declare-fun m!8339474 () Bool)

(assert (=> b!7958441 m!8339474))

(assert (=> b!7958441 m!8339472))

(assert (=> b!7958441 m!8339474))

(declare-fun m!8339476 () Bool)

(assert (=> b!7958441 m!8339476))

(declare-fun m!8339478 () Bool)

(assert (=> b!7958441 m!8339478))

(declare-fun m!8339480 () Bool)

(assert (=> b!7958448 m!8339480))

(declare-fun m!8339482 () Bool)

(assert (=> b!7958448 m!8339482))

(declare-fun m!8339484 () Bool)

(assert (=> b!7958448 m!8339484))

(declare-fun m!8339486 () Bool)

(assert (=> start!750680 m!8339486))

(declare-fun m!8339488 () Bool)

(assert (=> b!7958449 m!8339488))

(declare-fun m!8339490 () Bool)

(assert (=> b!7958449 m!8339490))

(declare-fun m!8339492 () Bool)

(assert (=> b!7958449 m!8339492))

(declare-fun m!8339494 () Bool)

(assert (=> b!7958435 m!8339494))

(declare-fun m!8339496 () Bool)

(assert (=> b!7958435 m!8339496))

(declare-fun m!8339498 () Bool)

(assert (=> b!7958435 m!8339498))

(declare-fun m!8339500 () Bool)

(assert (=> b!7958435 m!8339500))

(declare-fun m!8339502 () Bool)

(assert (=> b!7958435 m!8339502))

(declare-fun m!8339504 () Bool)

(assert (=> b!7958438 m!8339504))

(check-sat (not b!7958442) (not b!7958438) (not b!7958443) (not b!7958434) (not b!7958449) (not b!7958433) (not b!7958448) (not b!7958441) (not start!750680) (not b!7958451) tp_is_empty!53513 (not b!7958446) (not b!7958435) (not b!7958439) (not b!7958444) (not b!7958445) (not b!7958437) (not b!7958440))
(check-sat)
