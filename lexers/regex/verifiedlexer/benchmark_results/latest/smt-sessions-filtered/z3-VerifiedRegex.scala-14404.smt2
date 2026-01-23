; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750688 () Bool)

(assert start!750688)

(declare-fun b!7958673 () Bool)

(declare-fun e!4693693 () Bool)

(declare-datatypes ((C!43316 0))(
  ( (C!43317 (val!32206 Int)) )
))
(declare-datatypes ((Regex!21489 0))(
  ( (ElementMatch!21489 (c!1461518 C!43316)) (Concat!30488 (regOne!43490 Regex!21489) (regTwo!43490 Regex!21489)) (EmptyExpr!21489) (Star!21489 (reg!21818 Regex!21489)) (EmptyLang!21489) (Union!21489 (regOne!43491 Regex!21489) (regTwo!43491 Regex!21489)) )
))
(declare-fun r!24602 () Regex!21489)

(declare-fun validRegex!11793 (Regex!21489) Bool)

(assert (=> b!7958673 (= e!4693693 (validRegex!11793 r!24602))))

(declare-fun baseR!116 () Regex!21489)

(declare-datatypes ((List!74718 0))(
  ( (Nil!74594) (Cons!74594 (h!81042 C!43316) (t!390461 List!74718)) )
))
(declare-fun testedP!447 () List!74718)

(declare-fun lt!2702185 () Regex!21489)

(declare-fun matchR!10730 (Regex!21489 List!74718) Bool)

(assert (=> b!7958673 (= (matchR!10730 baseR!116 testedP!447) (matchR!10730 lt!2702185 Nil!74594))))

(declare-datatypes ((Unit!169962 0))(
  ( (Unit!169963) )
))
(declare-fun lt!2702182 () Unit!169962)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!298 (Regex!21489 List!74718) Unit!169962)

(assert (=> b!7958673 (= lt!2702182 (lemmaMatchRIsSameAsWholeDerivativeAndNil!298 baseR!116 testedP!447))))

(declare-fun b!7958674 () Bool)

(declare-fun e!4693700 () Unit!169962)

(declare-fun Unit!169964 () Unit!169962)

(assert (=> b!7958674 (= e!4693700 Unit!169964)))

(declare-fun lt!2702184 () Unit!169962)

(declare-fun input!7927 () List!74718)

(declare-fun lemmaIsPrefixRefl!4057 (List!74718 List!74718) Unit!169962)

(assert (=> b!7958674 (= lt!2702184 (lemmaIsPrefixRefl!4057 input!7927 input!7927))))

(declare-fun isPrefix!6589 (List!74718 List!74718) Bool)

(assert (=> b!7958674 (isPrefix!6589 input!7927 input!7927)))

(declare-fun lt!2702174 () Unit!169962)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1637 (List!74718 List!74718 List!74718) Unit!169962)

(assert (=> b!7958674 (= lt!2702174 (lemmaIsPrefixSameLengthThenSameList!1637 input!7927 testedP!447 input!7927))))

(assert (=> b!7958674 false))

(declare-fun b!7958675 () Bool)

(declare-fun e!4693698 () Bool)

(declare-fun tp!2371095 () Bool)

(declare-fun tp!2371092 () Bool)

(assert (=> b!7958675 (= e!4693698 (and tp!2371095 tp!2371092))))

(declare-fun b!7958676 () Bool)

(declare-fun e!4693692 () Bool)

(declare-fun tp!2371101 () Bool)

(declare-fun tp!2371091 () Bool)

(assert (=> b!7958676 (= e!4693692 (and tp!2371101 tp!2371091))))

(declare-fun b!7958677 () Bool)

(declare-fun e!4693699 () Bool)

(declare-fun tp_is_empty!53521 () Bool)

(declare-fun tp!2371098 () Bool)

(assert (=> b!7958677 (= e!4693699 (and tp_is_empty!53521 tp!2371098))))

(declare-fun b!7958678 () Bool)

(declare-fun tp!2371097 () Bool)

(assert (=> b!7958678 (= e!4693698 tp!2371097)))

(declare-fun b!7958679 () Bool)

(declare-fun tp!2371093 () Bool)

(declare-fun tp!2371094 () Bool)

(assert (=> b!7958679 (= e!4693698 (and tp!2371093 tp!2371094))))

(declare-fun b!7958680 () Bool)

(declare-fun res!3154598 () Bool)

(declare-fun e!4693701 () Bool)

(assert (=> b!7958680 (=> (not res!3154598) (not e!4693701))))

(assert (=> b!7958680 (= res!3154598 (not (= testedP!447 input!7927)))))

(declare-fun res!3154599 () Bool)

(declare-fun e!4693696 () Bool)

(assert (=> start!750688 (=> (not res!3154599) (not e!4693696))))

(assert (=> start!750688 (= res!3154599 (validRegex!11793 baseR!116))))

(assert (=> start!750688 e!4693696))

(assert (=> start!750688 e!4693692))

(assert (=> start!750688 e!4693699))

(declare-fun e!4693694 () Bool)

(assert (=> start!750688 e!4693694))

(assert (=> start!750688 e!4693698))

(declare-fun b!7958681 () Bool)

(declare-fun res!3154596 () Bool)

(assert (=> b!7958681 (=> (not res!3154596) (not e!4693696))))

(assert (=> b!7958681 (= res!3154596 (isPrefix!6589 testedP!447 input!7927))))

(declare-fun b!7958682 () Bool)

(declare-fun tp!2371102 () Bool)

(assert (=> b!7958682 (= e!4693692 tp!2371102)))

(declare-fun b!7958683 () Bool)

(assert (=> b!7958683 (= e!4693698 tp_is_empty!53521)))

(declare-fun b!7958684 () Bool)

(declare-fun e!4693697 () Bool)

(assert (=> b!7958684 (= e!4693701 (not e!4693697))))

(declare-fun res!3154594 () Bool)

(assert (=> b!7958684 (=> res!3154594 e!4693697)))

(declare-fun lt!2702180 () Int)

(declare-fun lt!2702177 () Int)

(assert (=> b!7958684 (= res!3154594 (>= lt!2702180 lt!2702177))))

(declare-fun lt!2702179 () Unit!169962)

(assert (=> b!7958684 (= lt!2702179 e!4693700)))

(declare-fun c!1461517 () Bool)

(assert (=> b!7958684 (= c!1461517 (= lt!2702180 lt!2702177))))

(assert (=> b!7958684 (<= lt!2702180 lt!2702177)))

(declare-fun lt!2702183 () Unit!169962)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1106 (List!74718 List!74718) Unit!169962)

(assert (=> b!7958684 (= lt!2702183 (lemmaIsPrefixThenSmallerEqSize!1106 testedP!447 input!7927))))

(declare-fun b!7958685 () Bool)

(declare-fun tp!2371099 () Bool)

(declare-fun tp!2371096 () Bool)

(assert (=> b!7958685 (= e!4693692 (and tp!2371099 tp!2371096))))

(declare-fun b!7958686 () Bool)

(declare-fun e!4693695 () Bool)

(assert (=> b!7958686 (= e!4693696 e!4693695)))

(declare-fun res!3154595 () Bool)

(assert (=> b!7958686 (=> (not res!3154595) (not e!4693695))))

(assert (=> b!7958686 (= res!3154595 (= lt!2702185 r!24602))))

(declare-fun derivative!675 (Regex!21489 List!74718) Regex!21489)

(assert (=> b!7958686 (= lt!2702185 (derivative!675 baseR!116 testedP!447))))

(declare-fun b!7958687 () Bool)

(declare-fun Unit!169965 () Unit!169962)

(assert (=> b!7958687 (= e!4693700 Unit!169965)))

(declare-fun b!7958688 () Bool)

(assert (=> b!7958688 (= e!4693697 e!4693693)))

(declare-fun res!3154597 () Bool)

(assert (=> b!7958688 (=> res!3154597 e!4693693)))

(declare-fun nullable!9590 (Regex!21489) Bool)

(assert (=> b!7958688 (= res!3154597 (not (nullable!9590 r!24602)))))

(declare-fun lt!2702175 () List!74718)

(assert (=> b!7958688 (isPrefix!6589 lt!2702175 input!7927)))

(declare-fun lt!2702178 () Unit!169962)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1316 (List!74718 List!74718) Unit!169962)

(assert (=> b!7958688 (= lt!2702178 (lemmaAddHeadSuffixToPrefixStillPrefix!1316 testedP!447 input!7927))))

(declare-fun lt!2702181 () C!43316)

(declare-fun ++!18359 (List!74718 List!74718) List!74718)

(assert (=> b!7958688 (= lt!2702175 (++!18359 testedP!447 (Cons!74594 lt!2702181 Nil!74594)))))

(declare-fun lt!2702176 () List!74718)

(declare-fun head!16241 (List!74718) C!43316)

(assert (=> b!7958688 (= lt!2702181 (head!16241 lt!2702176))))

(declare-fun b!7958689 () Bool)

(declare-fun tp!2371100 () Bool)

(assert (=> b!7958689 (= e!4693694 (and tp_is_empty!53521 tp!2371100))))

(declare-fun b!7958690 () Bool)

(declare-fun res!3154593 () Bool)

(assert (=> b!7958690 (=> res!3154593 e!4693693)))

(declare-fun isEmpty!42895 (List!74718) Bool)

(declare-datatypes ((tuple2!70640 0))(
  ( (tuple2!70641 (_1!38623 List!74718) (_2!38623 List!74718)) )
))
(declare-fun findLongestMatchInner!2270 (Regex!21489 List!74718 Int List!74718 List!74718 Int) tuple2!70640)

(declare-fun derivativeStep!6517 (Regex!21489 C!43316) Regex!21489)

(declare-fun tail!15778 (List!74718) List!74718)

(assert (=> b!7958690 (= res!3154593 (not (isEmpty!42895 (_1!38623 (findLongestMatchInner!2270 (derivativeStep!6517 r!24602 lt!2702181) lt!2702175 (+ 1 lt!2702180) (tail!15778 lt!2702176) input!7927 lt!2702177)))))))

(declare-fun b!7958691 () Bool)

(assert (=> b!7958691 (= e!4693692 tp_is_empty!53521)))

(declare-fun b!7958692 () Bool)

(assert (=> b!7958692 (= e!4693695 e!4693701)))

(declare-fun res!3154600 () Bool)

(assert (=> b!7958692 (=> (not res!3154600) (not e!4693701))))

(assert (=> b!7958692 (= res!3154600 (not (isEmpty!42895 (_1!38623 (findLongestMatchInner!2270 r!24602 testedP!447 lt!2702180 lt!2702176 input!7927 lt!2702177)))))))

(declare-fun size!43425 (List!74718) Int)

(assert (=> b!7958692 (= lt!2702177 (size!43425 input!7927))))

(declare-fun getSuffix!3792 (List!74718 List!74718) List!74718)

(assert (=> b!7958692 (= lt!2702176 (getSuffix!3792 input!7927 testedP!447))))

(assert (=> b!7958692 (= lt!2702180 (size!43425 testedP!447))))

(assert (= (and start!750688 res!3154599) b!7958681))

(assert (= (and b!7958681 res!3154596) b!7958686))

(assert (= (and b!7958686 res!3154595) b!7958692))

(assert (= (and b!7958692 res!3154600) b!7958680))

(assert (= (and b!7958680 res!3154598) b!7958684))

(assert (= (and b!7958684 c!1461517) b!7958674))

(assert (= (and b!7958684 (not c!1461517)) b!7958687))

(assert (= (and b!7958684 (not res!3154594)) b!7958688))

(assert (= (and b!7958688 (not res!3154597)) b!7958690))

(assert (= (and b!7958690 (not res!3154593)) b!7958673))

(get-info :version)

(assert (= (and start!750688 ((_ is ElementMatch!21489) baseR!116)) b!7958691))

(assert (= (and start!750688 ((_ is Concat!30488) baseR!116)) b!7958676))

(assert (= (and start!750688 ((_ is Star!21489) baseR!116)) b!7958682))

(assert (= (and start!750688 ((_ is Union!21489) baseR!116)) b!7958685))

(assert (= (and start!750688 ((_ is Cons!74594) testedP!447)) b!7958677))

(assert (= (and start!750688 ((_ is Cons!74594) input!7927)) b!7958689))

(assert (= (and start!750688 ((_ is ElementMatch!21489) r!24602)) b!7958683))

(assert (= (and start!750688 ((_ is Concat!30488) r!24602)) b!7958679))

(assert (= (and start!750688 ((_ is Star!21489) r!24602)) b!7958678))

(assert (= (and start!750688 ((_ is Union!21489) r!24602)) b!7958675))

(declare-fun m!8339652 () Bool)

(assert (=> b!7958684 m!8339652))

(declare-fun m!8339654 () Bool)

(assert (=> b!7958681 m!8339654))

(declare-fun m!8339656 () Bool)

(assert (=> start!750688 m!8339656))

(declare-fun m!8339658 () Bool)

(assert (=> b!7958674 m!8339658))

(declare-fun m!8339660 () Bool)

(assert (=> b!7958674 m!8339660))

(declare-fun m!8339662 () Bool)

(assert (=> b!7958674 m!8339662))

(declare-fun m!8339664 () Bool)

(assert (=> b!7958690 m!8339664))

(declare-fun m!8339666 () Bool)

(assert (=> b!7958690 m!8339666))

(assert (=> b!7958690 m!8339664))

(assert (=> b!7958690 m!8339666))

(declare-fun m!8339668 () Bool)

(assert (=> b!7958690 m!8339668))

(declare-fun m!8339670 () Bool)

(assert (=> b!7958690 m!8339670))

(declare-fun m!8339672 () Bool)

(assert (=> b!7958692 m!8339672))

(declare-fun m!8339674 () Bool)

(assert (=> b!7958692 m!8339674))

(declare-fun m!8339676 () Bool)

(assert (=> b!7958692 m!8339676))

(declare-fun m!8339678 () Bool)

(assert (=> b!7958692 m!8339678))

(declare-fun m!8339680 () Bool)

(assert (=> b!7958692 m!8339680))

(declare-fun m!8339682 () Bool)

(assert (=> b!7958686 m!8339682))

(declare-fun m!8339684 () Bool)

(assert (=> b!7958688 m!8339684))

(declare-fun m!8339686 () Bool)

(assert (=> b!7958688 m!8339686))

(declare-fun m!8339688 () Bool)

(assert (=> b!7958688 m!8339688))

(declare-fun m!8339690 () Bool)

(assert (=> b!7958688 m!8339690))

(declare-fun m!8339692 () Bool)

(assert (=> b!7958688 m!8339692))

(declare-fun m!8339694 () Bool)

(assert (=> b!7958673 m!8339694))

(declare-fun m!8339696 () Bool)

(assert (=> b!7958673 m!8339696))

(declare-fun m!8339698 () Bool)

(assert (=> b!7958673 m!8339698))

(declare-fun m!8339700 () Bool)

(assert (=> b!7958673 m!8339700))

(check-sat (not b!7958679) (not b!7958684) (not start!750688) (not b!7958682) (not b!7958689) (not b!7958673) tp_is_empty!53521 (not b!7958674) (not b!7958676) (not b!7958688) (not b!7958692) (not b!7958675) (not b!7958686) (not b!7958690) (not b!7958681) (not b!7958678) (not b!7958685) (not b!7958677))
(check-sat)
(get-model)

(declare-fun d!2377585 () Bool)

(declare-fun lt!2702188 () Int)

(assert (=> d!2377585 (>= lt!2702188 0)))

(declare-fun e!4693704 () Int)

(assert (=> d!2377585 (= lt!2702188 e!4693704)))

(declare-fun c!1461521 () Bool)

(assert (=> d!2377585 (= c!1461521 ((_ is Nil!74594) input!7927))))

(assert (=> d!2377585 (= (size!43425 input!7927) lt!2702188)))

(declare-fun b!7958697 () Bool)

(assert (=> b!7958697 (= e!4693704 0)))

(declare-fun b!7958698 () Bool)

(assert (=> b!7958698 (= e!4693704 (+ 1 (size!43425 (t!390461 input!7927))))))

(assert (= (and d!2377585 c!1461521) b!7958697))

(assert (= (and d!2377585 (not c!1461521)) b!7958698))

(declare-fun m!8339702 () Bool)

(assert (=> b!7958698 m!8339702))

(assert (=> b!7958692 d!2377585))

(declare-fun d!2377589 () Bool)

(assert (=> d!2377589 (= (isEmpty!42895 (_1!38623 (findLongestMatchInner!2270 r!24602 testedP!447 lt!2702180 lt!2702176 input!7927 lt!2702177))) ((_ is Nil!74594) (_1!38623 (findLongestMatchInner!2270 r!24602 testedP!447 lt!2702180 lt!2702176 input!7927 lt!2702177))))))

(assert (=> b!7958692 d!2377589))

(declare-fun b!7958927 () Bool)

(declare-fun e!4693840 () tuple2!70640)

(declare-fun call!737911 () tuple2!70640)

(assert (=> b!7958927 (= e!4693840 call!737911)))

(declare-fun b!7958928 () Bool)

(declare-fun e!4693842 () Bool)

(declare-fun lt!2702406 () tuple2!70640)

(assert (=> b!7958928 (= e!4693842 (>= (size!43425 (_1!38623 lt!2702406)) (size!43425 testedP!447)))))

(declare-fun bm!737904 () Bool)

(declare-fun call!737915 () Bool)

(assert (=> bm!737904 (= call!737915 (nullable!9590 r!24602))))

(declare-fun b!7958929 () Bool)

(declare-fun c!1461596 () Bool)

(assert (=> b!7958929 (= c!1461596 call!737915)))

(declare-fun lt!2702417 () Unit!169962)

(declare-fun lt!2702400 () Unit!169962)

(assert (=> b!7958929 (= lt!2702417 lt!2702400)))

(declare-fun lt!2702401 () C!43316)

(declare-fun lt!2702402 () List!74718)

(assert (=> b!7958929 (= (++!18359 (++!18359 testedP!447 (Cons!74594 lt!2702401 Nil!74594)) lt!2702402) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3525 (List!74718 C!43316 List!74718 List!74718) Unit!169962)

(assert (=> b!7958929 (= lt!2702400 (lemmaMoveElementToOtherListKeepsConcatEq!3525 testedP!447 lt!2702401 lt!2702402 input!7927))))

(assert (=> b!7958929 (= lt!2702402 (tail!15778 lt!2702176))))

(assert (=> b!7958929 (= lt!2702401 (head!16241 lt!2702176))))

(declare-fun lt!2702412 () Unit!169962)

(declare-fun lt!2702410 () Unit!169962)

(assert (=> b!7958929 (= lt!2702412 lt!2702410)))

(assert (=> b!7958929 (isPrefix!6589 (++!18359 testedP!447 (Cons!74594 (head!16241 (getSuffix!3792 input!7927 testedP!447)) Nil!74594)) input!7927)))

(assert (=> b!7958929 (= lt!2702410 (lemmaAddHeadSuffixToPrefixStillPrefix!1316 testedP!447 input!7927))))

(declare-fun lt!2702394 () Unit!169962)

(declare-fun lt!2702399 () Unit!169962)

(assert (=> b!7958929 (= lt!2702394 lt!2702399)))

(assert (=> b!7958929 (= lt!2702399 (lemmaAddHeadSuffixToPrefixStillPrefix!1316 testedP!447 input!7927))))

(declare-fun lt!2702409 () List!74718)

(assert (=> b!7958929 (= lt!2702409 (++!18359 testedP!447 (Cons!74594 (head!16241 lt!2702176) Nil!74594)))))

(declare-fun lt!2702405 () Unit!169962)

(declare-fun e!4693845 () Unit!169962)

(assert (=> b!7958929 (= lt!2702405 e!4693845)))

(declare-fun c!1461592 () Bool)

(assert (=> b!7958929 (= c!1461592 (= (size!43425 testedP!447) (size!43425 input!7927)))))

(declare-fun lt!2702395 () Unit!169962)

(declare-fun lt!2702403 () Unit!169962)

(assert (=> b!7958929 (= lt!2702395 lt!2702403)))

(assert (=> b!7958929 (<= (size!43425 testedP!447) (size!43425 input!7927))))

(assert (=> b!7958929 (= lt!2702403 (lemmaIsPrefixThenSmallerEqSize!1106 testedP!447 input!7927))))

(declare-fun e!4693846 () tuple2!70640)

(assert (=> b!7958929 (= e!4693846 e!4693840)))

(declare-fun bm!737905 () Bool)

(declare-fun call!737909 () Unit!169962)

(assert (=> bm!737905 (= call!737909 (lemmaIsPrefixRefl!4057 input!7927 input!7927))))

(declare-fun b!7958930 () Bool)

(declare-fun e!4693847 () tuple2!70640)

(declare-fun lt!2702415 () tuple2!70640)

(assert (=> b!7958930 (= e!4693847 lt!2702415)))

(declare-fun b!7958931 () Bool)

(declare-fun e!4693843 () tuple2!70640)

(assert (=> b!7958931 (= e!4693843 (tuple2!70641 Nil!74594 input!7927))))

(declare-fun b!7958932 () Bool)

(declare-fun e!4693841 () tuple2!70640)

(assert (=> b!7958932 (= e!4693841 e!4693846)))

(declare-fun c!1461595 () Bool)

(assert (=> b!7958932 (= c!1461595 (= lt!2702180 lt!2702177))))

(declare-fun b!7958933 () Bool)

(declare-fun e!4693844 () Bool)

(assert (=> b!7958933 (= e!4693844 e!4693842)))

(declare-fun res!3154692 () Bool)

(assert (=> b!7958933 (=> res!3154692 e!4693842)))

(assert (=> b!7958933 (= res!3154692 (isEmpty!42895 (_1!38623 lt!2702406)))))

(declare-fun bm!737907 () Bool)

(declare-fun call!737916 () List!74718)

(assert (=> bm!737907 (= call!737916 (tail!15778 lt!2702176))))

(declare-fun b!7958934 () Bool)

(assert (=> b!7958934 (= e!4693843 (tuple2!70641 testedP!447 Nil!74594))))

(declare-fun call!737913 () Regex!21489)

(declare-fun bm!737908 () Bool)

(assert (=> bm!737908 (= call!737911 (findLongestMatchInner!2270 call!737913 lt!2702409 (+ lt!2702180 1) call!737916 input!7927 lt!2702177))))

(declare-fun b!7958935 () Bool)

(declare-fun Unit!169966 () Unit!169962)

(assert (=> b!7958935 (= e!4693845 Unit!169966)))

(declare-fun b!7958936 () Bool)

(assert (=> b!7958936 (= e!4693841 (tuple2!70641 Nil!74594 input!7927))))

(declare-fun bm!737909 () Bool)

(declare-fun call!737910 () Unit!169962)

(assert (=> bm!737909 (= call!737910 (lemmaIsPrefixSameLengthThenSameList!1637 input!7927 testedP!447 input!7927))))

(declare-fun b!7958937 () Bool)

(declare-fun Unit!169967 () Unit!169962)

(assert (=> b!7958937 (= e!4693845 Unit!169967)))

(declare-fun lt!2702404 () Unit!169962)

(assert (=> b!7958937 (= lt!2702404 call!737909)))

(declare-fun call!737912 () Bool)

(assert (=> b!7958937 call!737912))

(declare-fun lt!2702420 () Unit!169962)

(assert (=> b!7958937 (= lt!2702420 lt!2702404)))

(declare-fun lt!2702416 () Unit!169962)

(assert (=> b!7958937 (= lt!2702416 call!737910)))

(assert (=> b!7958937 (= input!7927 testedP!447)))

(declare-fun lt!2702396 () Unit!169962)

(assert (=> b!7958937 (= lt!2702396 lt!2702416)))

(assert (=> b!7958937 false))

(declare-fun b!7958938 () Bool)

(declare-fun c!1461593 () Bool)

(assert (=> b!7958938 (= c!1461593 call!737915)))

(declare-fun lt!2702397 () Unit!169962)

(declare-fun lt!2702419 () Unit!169962)

(assert (=> b!7958938 (= lt!2702397 lt!2702419)))

(assert (=> b!7958938 (= input!7927 testedP!447)))

(assert (=> b!7958938 (= lt!2702419 call!737910)))

(declare-fun lt!2702421 () Unit!169962)

(declare-fun lt!2702408 () Unit!169962)

(assert (=> b!7958938 (= lt!2702421 lt!2702408)))

(assert (=> b!7958938 call!737912))

(assert (=> b!7958938 (= lt!2702408 call!737909)))

(assert (=> b!7958938 (= e!4693846 e!4693843)))

(declare-fun b!7958939 () Bool)

(assert (=> b!7958939 (= e!4693840 e!4693847)))

(assert (=> b!7958939 (= lt!2702415 call!737911)))

(declare-fun c!1461594 () Bool)

(assert (=> b!7958939 (= c!1461594 (isEmpty!42895 (_1!38623 lt!2702415)))))

(declare-fun bm!737910 () Bool)

(assert (=> bm!737910 (= call!737912 (isPrefix!6589 input!7927 input!7927))))

(declare-fun b!7958940 () Bool)

(assert (=> b!7958940 (= e!4693847 (tuple2!70641 testedP!447 lt!2702176))))

(declare-fun bm!737911 () Bool)

(declare-fun call!737914 () C!43316)

(assert (=> bm!737911 (= call!737914 (head!16241 lt!2702176))))

(declare-fun bm!737906 () Bool)

(assert (=> bm!737906 (= call!737913 (derivativeStep!6517 r!24602 call!737914))))

(declare-fun d!2377591 () Bool)

(assert (=> d!2377591 e!4693844))

(declare-fun res!3154691 () Bool)

(assert (=> d!2377591 (=> (not res!3154691) (not e!4693844))))

(assert (=> d!2377591 (= res!3154691 (= (++!18359 (_1!38623 lt!2702406) (_2!38623 lt!2702406)) input!7927))))

(assert (=> d!2377591 (= lt!2702406 e!4693841)))

(declare-fun c!1461591 () Bool)

(declare-fun lostCause!1969 (Regex!21489) Bool)

(assert (=> d!2377591 (= c!1461591 (lostCause!1969 r!24602))))

(declare-fun lt!2702413 () Unit!169962)

(declare-fun Unit!169968 () Unit!169962)

(assert (=> d!2377591 (= lt!2702413 Unit!169968)))

(assert (=> d!2377591 (= (getSuffix!3792 input!7927 testedP!447) lt!2702176)))

(declare-fun lt!2702398 () Unit!169962)

(declare-fun lt!2702414 () Unit!169962)

(assert (=> d!2377591 (= lt!2702398 lt!2702414)))

(declare-fun lt!2702411 () List!74718)

(assert (=> d!2377591 (= lt!2702176 lt!2702411)))

(declare-fun lemmaSamePrefixThenSameSuffix!2985 (List!74718 List!74718 List!74718 List!74718 List!74718) Unit!169962)

(assert (=> d!2377591 (= lt!2702414 (lemmaSamePrefixThenSameSuffix!2985 testedP!447 lt!2702176 testedP!447 lt!2702411 input!7927))))

(assert (=> d!2377591 (= lt!2702411 (getSuffix!3792 input!7927 testedP!447))))

(declare-fun lt!2702407 () Unit!169962)

(declare-fun lt!2702418 () Unit!169962)

(assert (=> d!2377591 (= lt!2702407 lt!2702418)))

(assert (=> d!2377591 (isPrefix!6589 testedP!447 (++!18359 testedP!447 lt!2702176))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3847 (List!74718 List!74718) Unit!169962)

(assert (=> d!2377591 (= lt!2702418 (lemmaConcatTwoListThenFirstIsPrefix!3847 testedP!447 lt!2702176))))

(assert (=> d!2377591 (validRegex!11793 r!24602)))

(assert (=> d!2377591 (= (findLongestMatchInner!2270 r!24602 testedP!447 lt!2702180 lt!2702176 input!7927 lt!2702177) lt!2702406)))

(assert (= (and d!2377591 c!1461591) b!7958936))

(assert (= (and d!2377591 (not c!1461591)) b!7958932))

(assert (= (and b!7958932 c!1461595) b!7958938))

(assert (= (and b!7958932 (not c!1461595)) b!7958929))

(assert (= (and b!7958938 c!1461593) b!7958934))

(assert (= (and b!7958938 (not c!1461593)) b!7958931))

(assert (= (and b!7958929 c!1461592) b!7958937))

(assert (= (and b!7958929 (not c!1461592)) b!7958935))

(assert (= (and b!7958929 c!1461596) b!7958939))

(assert (= (and b!7958929 (not c!1461596)) b!7958927))

(assert (= (and b!7958939 c!1461594) b!7958940))

(assert (= (and b!7958939 (not c!1461594)) b!7958930))

(assert (= (or b!7958939 b!7958927) bm!737911))

(assert (= (or b!7958939 b!7958927) bm!737907))

(assert (= (or b!7958939 b!7958927) bm!737906))

(assert (= (or b!7958939 b!7958927) bm!737908))

(assert (= (or b!7958938 b!7958929) bm!737904))

(assert (= (or b!7958938 b!7958937) bm!737909))

(assert (= (or b!7958938 b!7958937) bm!737905))

(assert (= (or b!7958938 b!7958937) bm!737910))

(assert (= (and d!2377591 res!3154691) b!7958933))

(assert (= (and b!7958933 (not res!3154692)) b!7958928))

(declare-fun m!8339890 () Bool)

(assert (=> bm!737906 m!8339890))

(assert (=> b!7958929 m!8339692))

(declare-fun m!8339892 () Bool)

(assert (=> b!7958929 m!8339892))

(assert (=> b!7958929 m!8339892))

(declare-fun m!8339894 () Bool)

(assert (=> b!7958929 m!8339894))

(assert (=> b!7958929 m!8339676))

(assert (=> b!7958929 m!8339680))

(assert (=> b!7958929 m!8339666))

(assert (=> b!7958929 m!8339680))

(declare-fun m!8339896 () Bool)

(assert (=> b!7958929 m!8339896))

(declare-fun m!8339898 () Bool)

(assert (=> b!7958929 m!8339898))

(assert (=> b!7958929 m!8339652))

(assert (=> b!7958929 m!8339678))

(declare-fun m!8339900 () Bool)

(assert (=> b!7958929 m!8339900))

(declare-fun m!8339902 () Bool)

(assert (=> b!7958929 m!8339902))

(declare-fun m!8339904 () Bool)

(assert (=> b!7958929 m!8339904))

(assert (=> b!7958929 m!8339902))

(assert (=> b!7958929 m!8339684))

(declare-fun m!8339906 () Bool)

(assert (=> bm!737908 m!8339906))

(assert (=> bm!737911 m!8339684))

(assert (=> bm!737910 m!8339660))

(assert (=> bm!737905 m!8339658))

(assert (=> bm!737907 m!8339666))

(declare-fun m!8339908 () Bool)

(assert (=> b!7958928 m!8339908))

(assert (=> b!7958928 m!8339676))

(assert (=> bm!737909 m!8339662))

(declare-fun m!8339910 () Bool)

(assert (=> d!2377591 m!8339910))

(declare-fun m!8339912 () Bool)

(assert (=> d!2377591 m!8339912))

(declare-fun m!8339914 () Bool)

(assert (=> d!2377591 m!8339914))

(assert (=> d!2377591 m!8339694))

(assert (=> d!2377591 m!8339680))

(declare-fun m!8339916 () Bool)

(assert (=> d!2377591 m!8339916))

(declare-fun m!8339918 () Bool)

(assert (=> d!2377591 m!8339918))

(declare-fun m!8339920 () Bool)

(assert (=> d!2377591 m!8339920))

(assert (=> d!2377591 m!8339918))

(declare-fun m!8339922 () Bool)

(assert (=> b!7958939 m!8339922))

(declare-fun m!8339924 () Bool)

(assert (=> b!7958933 m!8339924))

(assert (=> bm!737904 m!8339686))

(assert (=> b!7958692 d!2377591))

(declare-fun d!2377639 () Bool)

(declare-fun lt!2702426 () List!74718)

(assert (=> d!2377639 (= (++!18359 testedP!447 lt!2702426) input!7927)))

(declare-fun e!4693860 () List!74718)

(assert (=> d!2377639 (= lt!2702426 e!4693860)))

(declare-fun c!1461609 () Bool)

(assert (=> d!2377639 (= c!1461609 ((_ is Cons!74594) testedP!447))))

(assert (=> d!2377639 (>= (size!43425 input!7927) (size!43425 testedP!447))))

(assert (=> d!2377639 (= (getSuffix!3792 input!7927 testedP!447) lt!2702426)))

(declare-fun b!7958965 () Bool)

(assert (=> b!7958965 (= e!4693860 (getSuffix!3792 (tail!15778 input!7927) (t!390461 testedP!447)))))

(declare-fun b!7958966 () Bool)

(assert (=> b!7958966 (= e!4693860 input!7927)))

(assert (= (and d!2377639 c!1461609) b!7958965))

(assert (= (and d!2377639 (not c!1461609)) b!7958966))

(declare-fun m!8339926 () Bool)

(assert (=> d!2377639 m!8339926))

(assert (=> d!2377639 m!8339678))

(assert (=> d!2377639 m!8339676))

(declare-fun m!8339928 () Bool)

(assert (=> b!7958965 m!8339928))

(assert (=> b!7958965 m!8339928))

(declare-fun m!8339930 () Bool)

(assert (=> b!7958965 m!8339930))

(assert (=> b!7958692 d!2377639))

(declare-fun d!2377641 () Bool)

(declare-fun lt!2702427 () Int)

(assert (=> d!2377641 (>= lt!2702427 0)))

(declare-fun e!4693861 () Int)

(assert (=> d!2377641 (= lt!2702427 e!4693861)))

(declare-fun c!1461610 () Bool)

(assert (=> d!2377641 (= c!1461610 ((_ is Nil!74594) testedP!447))))

(assert (=> d!2377641 (= (size!43425 testedP!447) lt!2702427)))

(declare-fun b!7958967 () Bool)

(assert (=> b!7958967 (= e!4693861 0)))

(declare-fun b!7958968 () Bool)

(assert (=> b!7958968 (= e!4693861 (+ 1 (size!43425 (t!390461 testedP!447))))))

(assert (= (and d!2377641 c!1461610) b!7958967))

(assert (= (and d!2377641 (not c!1461610)) b!7958968))

(declare-fun m!8339932 () Bool)

(assert (=> b!7958968 m!8339932))

(assert (=> b!7958692 d!2377641))

(declare-fun c!1461620 () Bool)

(declare-fun call!737936 () Bool)

(declare-fun c!1461621 () Bool)

(declare-fun bm!737930 () Bool)

(assert (=> bm!737930 (= call!737936 (validRegex!11793 (ite c!1461620 (reg!21818 baseR!116) (ite c!1461621 (regTwo!43491 baseR!116) (regTwo!43490 baseR!116)))))))

(declare-fun b!7959053 () Bool)

(declare-fun e!4693897 () Bool)

(declare-fun call!737935 () Bool)

(assert (=> b!7959053 (= e!4693897 call!737935)))

(declare-fun d!2377643 () Bool)

(declare-fun res!3154707 () Bool)

(declare-fun e!4693898 () Bool)

(assert (=> d!2377643 (=> res!3154707 e!4693898)))

(assert (=> d!2377643 (= res!3154707 ((_ is ElementMatch!21489) baseR!116))))

(assert (=> d!2377643 (= (validRegex!11793 baseR!116) e!4693898)))

(declare-fun b!7959054 () Bool)

(declare-fun res!3154705 () Bool)

(declare-fun e!4693901 () Bool)

(assert (=> b!7959054 (=> res!3154705 e!4693901)))

(assert (=> b!7959054 (= res!3154705 (not ((_ is Concat!30488) baseR!116)))))

(declare-fun e!4693902 () Bool)

(assert (=> b!7959054 (= e!4693902 e!4693901)))

(declare-fun b!7959055 () Bool)

(declare-fun e!4693903 () Bool)

(assert (=> b!7959055 (= e!4693898 e!4693903)))

(assert (=> b!7959055 (= c!1461620 ((_ is Star!21489) baseR!116))))

(declare-fun b!7959056 () Bool)

(declare-fun e!4693899 () Bool)

(assert (=> b!7959056 (= e!4693903 e!4693899)))

(declare-fun res!3154704 () Bool)

(assert (=> b!7959056 (= res!3154704 (not (nullable!9590 (reg!21818 baseR!116))))))

(assert (=> b!7959056 (=> (not res!3154704) (not e!4693899))))

(declare-fun bm!737931 () Bool)

(declare-fun call!737937 () Bool)

(assert (=> bm!737931 (= call!737937 (validRegex!11793 (ite c!1461621 (regOne!43491 baseR!116) (regOne!43490 baseR!116))))))

(declare-fun b!7959057 () Bool)

(declare-fun e!4693900 () Bool)

(assert (=> b!7959057 (= e!4693900 call!737935)))

(declare-fun b!7959058 () Bool)

(assert (=> b!7959058 (= e!4693903 e!4693902)))

(assert (=> b!7959058 (= c!1461621 ((_ is Union!21489) baseR!116))))

(declare-fun b!7959059 () Bool)

(assert (=> b!7959059 (= e!4693899 call!737936)))

(declare-fun b!7959060 () Bool)

(assert (=> b!7959060 (= e!4693901 e!4693897)))

(declare-fun res!3154706 () Bool)

(assert (=> b!7959060 (=> (not res!3154706) (not e!4693897))))

(assert (=> b!7959060 (= res!3154706 call!737937)))

(declare-fun b!7959061 () Bool)

(declare-fun res!3154703 () Bool)

(assert (=> b!7959061 (=> (not res!3154703) (not e!4693900))))

(assert (=> b!7959061 (= res!3154703 call!737937)))

(assert (=> b!7959061 (= e!4693902 e!4693900)))

(declare-fun bm!737932 () Bool)

(assert (=> bm!737932 (= call!737935 call!737936)))

(assert (= (and d!2377643 (not res!3154707)) b!7959055))

(assert (= (and b!7959055 c!1461620) b!7959056))

(assert (= (and b!7959055 (not c!1461620)) b!7959058))

(assert (= (and b!7959056 res!3154704) b!7959059))

(assert (= (and b!7959058 c!1461621) b!7959061))

(assert (= (and b!7959058 (not c!1461621)) b!7959054))

(assert (= (and b!7959061 res!3154703) b!7959057))

(assert (= (and b!7959054 (not res!3154705)) b!7959060))

(assert (= (and b!7959060 res!3154706) b!7959053))

(assert (= (or b!7959057 b!7959053) bm!737932))

(assert (= (or b!7959061 b!7959060) bm!737931))

(assert (= (or b!7959059 bm!737932) bm!737930))

(declare-fun m!8339942 () Bool)

(assert (=> bm!737930 m!8339942))

(declare-fun m!8339944 () Bool)

(assert (=> b!7959056 m!8339944))

(declare-fun m!8339946 () Bool)

(assert (=> bm!737931 m!8339946))

(assert (=> start!750688 d!2377643))

(declare-fun b!7959072 () Bool)

(declare-fun e!4693911 () Bool)

(assert (=> b!7959072 (= e!4693911 (isPrefix!6589 (tail!15778 testedP!447) (tail!15778 input!7927)))))

(declare-fun b!7959071 () Bool)

(declare-fun res!3154716 () Bool)

(assert (=> b!7959071 (=> (not res!3154716) (not e!4693911))))

(assert (=> b!7959071 (= res!3154716 (= (head!16241 testedP!447) (head!16241 input!7927)))))

(declare-fun b!7959073 () Bool)

(declare-fun e!4693912 () Bool)

(assert (=> b!7959073 (= e!4693912 (>= (size!43425 input!7927) (size!43425 testedP!447)))))

(declare-fun d!2377647 () Bool)

(assert (=> d!2377647 e!4693912))

(declare-fun res!3154718 () Bool)

(assert (=> d!2377647 (=> res!3154718 e!4693912)))

(declare-fun lt!2702431 () Bool)

(assert (=> d!2377647 (= res!3154718 (not lt!2702431))))

(declare-fun e!4693910 () Bool)

(assert (=> d!2377647 (= lt!2702431 e!4693910)))

(declare-fun res!3154717 () Bool)

(assert (=> d!2377647 (=> res!3154717 e!4693910)))

(assert (=> d!2377647 (= res!3154717 ((_ is Nil!74594) testedP!447))))

(assert (=> d!2377647 (= (isPrefix!6589 testedP!447 input!7927) lt!2702431)))

(declare-fun b!7959070 () Bool)

(assert (=> b!7959070 (= e!4693910 e!4693911)))

(declare-fun res!3154719 () Bool)

(assert (=> b!7959070 (=> (not res!3154719) (not e!4693911))))

(assert (=> b!7959070 (= res!3154719 (not ((_ is Nil!74594) input!7927)))))

(assert (= (and d!2377647 (not res!3154717)) b!7959070))

(assert (= (and b!7959070 res!3154719) b!7959071))

(assert (= (and b!7959071 res!3154716) b!7959072))

(assert (= (and d!2377647 (not res!3154718)) b!7959073))

(declare-fun m!8339948 () Bool)

(assert (=> b!7959072 m!8339948))

(assert (=> b!7959072 m!8339928))

(assert (=> b!7959072 m!8339948))

(assert (=> b!7959072 m!8339928))

(declare-fun m!8339950 () Bool)

(assert (=> b!7959072 m!8339950))

(declare-fun m!8339952 () Bool)

(assert (=> b!7959071 m!8339952))

(declare-fun m!8339954 () Bool)

(assert (=> b!7959071 m!8339954))

(assert (=> b!7959073 m!8339678))

(assert (=> b!7959073 m!8339676))

(assert (=> b!7958681 d!2377647))

(declare-fun d!2377649 () Bool)

(declare-fun lt!2702434 () Regex!21489)

(assert (=> d!2377649 (validRegex!11793 lt!2702434)))

(declare-fun e!4693915 () Regex!21489)

(assert (=> d!2377649 (= lt!2702434 e!4693915)))

(declare-fun c!1461624 () Bool)

(assert (=> d!2377649 (= c!1461624 ((_ is Cons!74594) testedP!447))))

(assert (=> d!2377649 (validRegex!11793 baseR!116)))

(assert (=> d!2377649 (= (derivative!675 baseR!116 testedP!447) lt!2702434)))

(declare-fun b!7959078 () Bool)

(assert (=> b!7959078 (= e!4693915 (derivative!675 (derivativeStep!6517 baseR!116 (h!81042 testedP!447)) (t!390461 testedP!447)))))

(declare-fun b!7959079 () Bool)

(assert (=> b!7959079 (= e!4693915 baseR!116)))

(assert (= (and d!2377649 c!1461624) b!7959078))

(assert (= (and d!2377649 (not c!1461624)) b!7959079))

(declare-fun m!8339956 () Bool)

(assert (=> d!2377649 m!8339956))

(assert (=> d!2377649 m!8339656))

(declare-fun m!8339958 () Bool)

(assert (=> b!7959078 m!8339958))

(assert (=> b!7959078 m!8339958))

(declare-fun m!8339960 () Bool)

(assert (=> b!7959078 m!8339960))

(assert (=> b!7958686 d!2377649))

(declare-fun d!2377651 () Bool)

(assert (=> d!2377651 (<= (size!43425 testedP!447) (size!43425 input!7927))))

(declare-fun lt!2702437 () Unit!169962)

(declare-fun choose!59965 (List!74718 List!74718) Unit!169962)

(assert (=> d!2377651 (= lt!2702437 (choose!59965 testedP!447 input!7927))))

(assert (=> d!2377651 (isPrefix!6589 testedP!447 input!7927)))

(assert (=> d!2377651 (= (lemmaIsPrefixThenSmallerEqSize!1106 testedP!447 input!7927) lt!2702437)))

(declare-fun bs!1969689 () Bool)

(assert (= bs!1969689 d!2377651))

(assert (=> bs!1969689 m!8339676))

(assert (=> bs!1969689 m!8339678))

(declare-fun m!8339962 () Bool)

(assert (=> bs!1969689 m!8339962))

(assert (=> bs!1969689 m!8339654))

(assert (=> b!7958684 d!2377651))

(declare-fun d!2377653 () Bool)

(assert (=> d!2377653 (isPrefix!6589 input!7927 input!7927)))

(declare-fun lt!2702440 () Unit!169962)

(declare-fun choose!59966 (List!74718 List!74718) Unit!169962)

(assert (=> d!2377653 (= lt!2702440 (choose!59966 input!7927 input!7927))))

(assert (=> d!2377653 (= (lemmaIsPrefixRefl!4057 input!7927 input!7927) lt!2702440)))

(declare-fun bs!1969690 () Bool)

(assert (= bs!1969690 d!2377653))

(assert (=> bs!1969690 m!8339660))

(declare-fun m!8339964 () Bool)

(assert (=> bs!1969690 m!8339964))

(assert (=> b!7958674 d!2377653))

(declare-fun b!7959082 () Bool)

(declare-fun e!4693917 () Bool)

(assert (=> b!7959082 (= e!4693917 (isPrefix!6589 (tail!15778 input!7927) (tail!15778 input!7927)))))

(declare-fun b!7959081 () Bool)

(declare-fun res!3154720 () Bool)

(assert (=> b!7959081 (=> (not res!3154720) (not e!4693917))))

(assert (=> b!7959081 (= res!3154720 (= (head!16241 input!7927) (head!16241 input!7927)))))

(declare-fun b!7959083 () Bool)

(declare-fun e!4693918 () Bool)

(assert (=> b!7959083 (= e!4693918 (>= (size!43425 input!7927) (size!43425 input!7927)))))

(declare-fun d!2377655 () Bool)

(assert (=> d!2377655 e!4693918))

(declare-fun res!3154722 () Bool)

(assert (=> d!2377655 (=> res!3154722 e!4693918)))

(declare-fun lt!2702441 () Bool)

(assert (=> d!2377655 (= res!3154722 (not lt!2702441))))

(declare-fun e!4693916 () Bool)

(assert (=> d!2377655 (= lt!2702441 e!4693916)))

(declare-fun res!3154721 () Bool)

(assert (=> d!2377655 (=> res!3154721 e!4693916)))

(assert (=> d!2377655 (= res!3154721 ((_ is Nil!74594) input!7927))))

(assert (=> d!2377655 (= (isPrefix!6589 input!7927 input!7927) lt!2702441)))

(declare-fun b!7959080 () Bool)

(assert (=> b!7959080 (= e!4693916 e!4693917)))

(declare-fun res!3154723 () Bool)

(assert (=> b!7959080 (=> (not res!3154723) (not e!4693917))))

(assert (=> b!7959080 (= res!3154723 (not ((_ is Nil!74594) input!7927)))))

(assert (= (and d!2377655 (not res!3154721)) b!7959080))

(assert (= (and b!7959080 res!3154723) b!7959081))

(assert (= (and b!7959081 res!3154720) b!7959082))

(assert (= (and d!2377655 (not res!3154722)) b!7959083))

(assert (=> b!7959082 m!8339928))

(assert (=> b!7959082 m!8339928))

(assert (=> b!7959082 m!8339928))

(assert (=> b!7959082 m!8339928))

(declare-fun m!8339966 () Bool)

(assert (=> b!7959082 m!8339966))

(assert (=> b!7959081 m!8339954))

(assert (=> b!7959081 m!8339954))

(assert (=> b!7959083 m!8339678))

(assert (=> b!7959083 m!8339678))

(assert (=> b!7958674 d!2377655))

(declare-fun d!2377657 () Bool)

(assert (=> d!2377657 (= input!7927 testedP!447)))

(declare-fun lt!2702444 () Unit!169962)

(declare-fun choose!59967 (List!74718 List!74718 List!74718) Unit!169962)

(assert (=> d!2377657 (= lt!2702444 (choose!59967 input!7927 testedP!447 input!7927))))

(assert (=> d!2377657 (isPrefix!6589 input!7927 input!7927)))

(assert (=> d!2377657 (= (lemmaIsPrefixSameLengthThenSameList!1637 input!7927 testedP!447 input!7927) lt!2702444)))

(declare-fun bs!1969691 () Bool)

(assert (= bs!1969691 d!2377657))

(declare-fun m!8339968 () Bool)

(assert (=> bs!1969691 m!8339968))

(assert (=> bs!1969691 m!8339660))

(assert (=> b!7958674 d!2377657))

(declare-fun d!2377659 () Bool)

(assert (=> d!2377659 (= (isEmpty!42895 (_1!38623 (findLongestMatchInner!2270 (derivativeStep!6517 r!24602 lt!2702181) lt!2702175 (+ 1 lt!2702180) (tail!15778 lt!2702176) input!7927 lt!2702177))) ((_ is Nil!74594) (_1!38623 (findLongestMatchInner!2270 (derivativeStep!6517 r!24602 lt!2702181) lt!2702175 (+ 1 lt!2702180) (tail!15778 lt!2702176) input!7927 lt!2702177))))))

(assert (=> b!7958690 d!2377659))

(declare-fun b!7959084 () Bool)

(declare-fun e!4693919 () tuple2!70640)

(declare-fun call!737940 () tuple2!70640)

(assert (=> b!7959084 (= e!4693919 call!737940)))

(declare-fun b!7959085 () Bool)

(declare-fun e!4693921 () Bool)

(declare-fun lt!2702457 () tuple2!70640)

(assert (=> b!7959085 (= e!4693921 (>= (size!43425 (_1!38623 lt!2702457)) (size!43425 lt!2702175)))))

(declare-fun bm!737933 () Bool)

(declare-fun call!737944 () Bool)

(assert (=> bm!737933 (= call!737944 (nullable!9590 (derivativeStep!6517 r!24602 lt!2702181)))))

(declare-fun b!7959086 () Bool)

(declare-fun c!1461630 () Bool)

(assert (=> b!7959086 (= c!1461630 call!737944)))

(declare-fun lt!2702468 () Unit!169962)

(declare-fun lt!2702451 () Unit!169962)

(assert (=> b!7959086 (= lt!2702468 lt!2702451)))

(declare-fun lt!2702453 () List!74718)

(declare-fun lt!2702452 () C!43316)

(assert (=> b!7959086 (= (++!18359 (++!18359 lt!2702175 (Cons!74594 lt!2702452 Nil!74594)) lt!2702453) input!7927)))

(assert (=> b!7959086 (= lt!2702451 (lemmaMoveElementToOtherListKeepsConcatEq!3525 lt!2702175 lt!2702452 lt!2702453 input!7927))))

(assert (=> b!7959086 (= lt!2702453 (tail!15778 (tail!15778 lt!2702176)))))

(assert (=> b!7959086 (= lt!2702452 (head!16241 (tail!15778 lt!2702176)))))

(declare-fun lt!2702463 () Unit!169962)

(declare-fun lt!2702461 () Unit!169962)

(assert (=> b!7959086 (= lt!2702463 lt!2702461)))

(assert (=> b!7959086 (isPrefix!6589 (++!18359 lt!2702175 (Cons!74594 (head!16241 (getSuffix!3792 input!7927 lt!2702175)) Nil!74594)) input!7927)))

(assert (=> b!7959086 (= lt!2702461 (lemmaAddHeadSuffixToPrefixStillPrefix!1316 lt!2702175 input!7927))))

(declare-fun lt!2702445 () Unit!169962)

(declare-fun lt!2702450 () Unit!169962)

(assert (=> b!7959086 (= lt!2702445 lt!2702450)))

(assert (=> b!7959086 (= lt!2702450 (lemmaAddHeadSuffixToPrefixStillPrefix!1316 lt!2702175 input!7927))))

(declare-fun lt!2702460 () List!74718)

(assert (=> b!7959086 (= lt!2702460 (++!18359 lt!2702175 (Cons!74594 (head!16241 (tail!15778 lt!2702176)) Nil!74594)))))

(declare-fun lt!2702456 () Unit!169962)

(declare-fun e!4693924 () Unit!169962)

(assert (=> b!7959086 (= lt!2702456 e!4693924)))

(declare-fun c!1461626 () Bool)

(assert (=> b!7959086 (= c!1461626 (= (size!43425 lt!2702175) (size!43425 input!7927)))))

(declare-fun lt!2702446 () Unit!169962)

(declare-fun lt!2702454 () Unit!169962)

(assert (=> b!7959086 (= lt!2702446 lt!2702454)))

(assert (=> b!7959086 (<= (size!43425 lt!2702175) (size!43425 input!7927))))

(assert (=> b!7959086 (= lt!2702454 (lemmaIsPrefixThenSmallerEqSize!1106 lt!2702175 input!7927))))

(declare-fun e!4693925 () tuple2!70640)

(assert (=> b!7959086 (= e!4693925 e!4693919)))

(declare-fun bm!737934 () Bool)

(declare-fun call!737938 () Unit!169962)

(assert (=> bm!737934 (= call!737938 (lemmaIsPrefixRefl!4057 input!7927 input!7927))))

(declare-fun b!7959087 () Bool)

(declare-fun e!4693926 () tuple2!70640)

(declare-fun lt!2702466 () tuple2!70640)

(assert (=> b!7959087 (= e!4693926 lt!2702466)))

(declare-fun b!7959088 () Bool)

(declare-fun e!4693922 () tuple2!70640)

(assert (=> b!7959088 (= e!4693922 (tuple2!70641 Nil!74594 input!7927))))

(declare-fun b!7959089 () Bool)

(declare-fun e!4693920 () tuple2!70640)

(assert (=> b!7959089 (= e!4693920 e!4693925)))

(declare-fun c!1461629 () Bool)

(assert (=> b!7959089 (= c!1461629 (= (+ 1 lt!2702180) lt!2702177))))

(declare-fun b!7959090 () Bool)

(declare-fun e!4693923 () Bool)

(assert (=> b!7959090 (= e!4693923 e!4693921)))

(declare-fun res!3154725 () Bool)

(assert (=> b!7959090 (=> res!3154725 e!4693921)))

(assert (=> b!7959090 (= res!3154725 (isEmpty!42895 (_1!38623 lt!2702457)))))

(declare-fun bm!737936 () Bool)

(declare-fun call!737945 () List!74718)

(assert (=> bm!737936 (= call!737945 (tail!15778 (tail!15778 lt!2702176)))))

(declare-fun b!7959091 () Bool)

(assert (=> b!7959091 (= e!4693922 (tuple2!70641 lt!2702175 Nil!74594))))

(declare-fun call!737942 () Regex!21489)

(declare-fun bm!737937 () Bool)

(assert (=> bm!737937 (= call!737940 (findLongestMatchInner!2270 call!737942 lt!2702460 (+ 1 lt!2702180 1) call!737945 input!7927 lt!2702177))))

(declare-fun b!7959092 () Bool)

(declare-fun Unit!169974 () Unit!169962)

(assert (=> b!7959092 (= e!4693924 Unit!169974)))

(declare-fun b!7959093 () Bool)

(assert (=> b!7959093 (= e!4693920 (tuple2!70641 Nil!74594 input!7927))))

(declare-fun bm!737938 () Bool)

(declare-fun call!737939 () Unit!169962)

(assert (=> bm!737938 (= call!737939 (lemmaIsPrefixSameLengthThenSameList!1637 input!7927 lt!2702175 input!7927))))

(declare-fun b!7959094 () Bool)

(declare-fun Unit!169975 () Unit!169962)

(assert (=> b!7959094 (= e!4693924 Unit!169975)))

(declare-fun lt!2702455 () Unit!169962)

(assert (=> b!7959094 (= lt!2702455 call!737938)))

(declare-fun call!737941 () Bool)

(assert (=> b!7959094 call!737941))

(declare-fun lt!2702471 () Unit!169962)

(assert (=> b!7959094 (= lt!2702471 lt!2702455)))

(declare-fun lt!2702467 () Unit!169962)

(assert (=> b!7959094 (= lt!2702467 call!737939)))

(assert (=> b!7959094 (= input!7927 lt!2702175)))

(declare-fun lt!2702447 () Unit!169962)

(assert (=> b!7959094 (= lt!2702447 lt!2702467)))

(assert (=> b!7959094 false))

(declare-fun b!7959095 () Bool)

(declare-fun c!1461627 () Bool)

(assert (=> b!7959095 (= c!1461627 call!737944)))

(declare-fun lt!2702448 () Unit!169962)

(declare-fun lt!2702470 () Unit!169962)

(assert (=> b!7959095 (= lt!2702448 lt!2702470)))

(assert (=> b!7959095 (= input!7927 lt!2702175)))

(assert (=> b!7959095 (= lt!2702470 call!737939)))

(declare-fun lt!2702472 () Unit!169962)

(declare-fun lt!2702459 () Unit!169962)

(assert (=> b!7959095 (= lt!2702472 lt!2702459)))

(assert (=> b!7959095 call!737941))

(assert (=> b!7959095 (= lt!2702459 call!737938)))

(assert (=> b!7959095 (= e!4693925 e!4693922)))

(declare-fun b!7959096 () Bool)

(assert (=> b!7959096 (= e!4693919 e!4693926)))

(assert (=> b!7959096 (= lt!2702466 call!737940)))

(declare-fun c!1461628 () Bool)

(assert (=> b!7959096 (= c!1461628 (isEmpty!42895 (_1!38623 lt!2702466)))))

(declare-fun bm!737939 () Bool)

(assert (=> bm!737939 (= call!737941 (isPrefix!6589 input!7927 input!7927))))

(declare-fun b!7959097 () Bool)

(assert (=> b!7959097 (= e!4693926 (tuple2!70641 lt!2702175 (tail!15778 lt!2702176)))))

(declare-fun bm!737940 () Bool)

(declare-fun call!737943 () C!43316)

(assert (=> bm!737940 (= call!737943 (head!16241 (tail!15778 lt!2702176)))))

(declare-fun bm!737935 () Bool)

(assert (=> bm!737935 (= call!737942 (derivativeStep!6517 (derivativeStep!6517 r!24602 lt!2702181) call!737943))))

(declare-fun d!2377661 () Bool)

(assert (=> d!2377661 e!4693923))

(declare-fun res!3154724 () Bool)

(assert (=> d!2377661 (=> (not res!3154724) (not e!4693923))))

(assert (=> d!2377661 (= res!3154724 (= (++!18359 (_1!38623 lt!2702457) (_2!38623 lt!2702457)) input!7927))))

(assert (=> d!2377661 (= lt!2702457 e!4693920)))

(declare-fun c!1461625 () Bool)

(assert (=> d!2377661 (= c!1461625 (lostCause!1969 (derivativeStep!6517 r!24602 lt!2702181)))))

(declare-fun lt!2702464 () Unit!169962)

(declare-fun Unit!169977 () Unit!169962)

(assert (=> d!2377661 (= lt!2702464 Unit!169977)))

(assert (=> d!2377661 (= (getSuffix!3792 input!7927 lt!2702175) (tail!15778 lt!2702176))))

(declare-fun lt!2702449 () Unit!169962)

(declare-fun lt!2702465 () Unit!169962)

(assert (=> d!2377661 (= lt!2702449 lt!2702465)))

(declare-fun lt!2702462 () List!74718)

(assert (=> d!2377661 (= (tail!15778 lt!2702176) lt!2702462)))

(assert (=> d!2377661 (= lt!2702465 (lemmaSamePrefixThenSameSuffix!2985 lt!2702175 (tail!15778 lt!2702176) lt!2702175 lt!2702462 input!7927))))

(assert (=> d!2377661 (= lt!2702462 (getSuffix!3792 input!7927 lt!2702175))))

(declare-fun lt!2702458 () Unit!169962)

(declare-fun lt!2702469 () Unit!169962)

(assert (=> d!2377661 (= lt!2702458 lt!2702469)))

(assert (=> d!2377661 (isPrefix!6589 lt!2702175 (++!18359 lt!2702175 (tail!15778 lt!2702176)))))

(assert (=> d!2377661 (= lt!2702469 (lemmaConcatTwoListThenFirstIsPrefix!3847 lt!2702175 (tail!15778 lt!2702176)))))

(assert (=> d!2377661 (validRegex!11793 (derivativeStep!6517 r!24602 lt!2702181))))

(assert (=> d!2377661 (= (findLongestMatchInner!2270 (derivativeStep!6517 r!24602 lt!2702181) lt!2702175 (+ 1 lt!2702180) (tail!15778 lt!2702176) input!7927 lt!2702177) lt!2702457)))

(assert (= (and d!2377661 c!1461625) b!7959093))

(assert (= (and d!2377661 (not c!1461625)) b!7959089))

(assert (= (and b!7959089 c!1461629) b!7959095))

(assert (= (and b!7959089 (not c!1461629)) b!7959086))

(assert (= (and b!7959095 c!1461627) b!7959091))

(assert (= (and b!7959095 (not c!1461627)) b!7959088))

(assert (= (and b!7959086 c!1461626) b!7959094))

(assert (= (and b!7959086 (not c!1461626)) b!7959092))

(assert (= (and b!7959086 c!1461630) b!7959096))

(assert (= (and b!7959086 (not c!1461630)) b!7959084))

(assert (= (and b!7959096 c!1461628) b!7959097))

(assert (= (and b!7959096 (not c!1461628)) b!7959087))

(assert (= (or b!7959096 b!7959084) bm!737940))

(assert (= (or b!7959096 b!7959084) bm!737936))

(assert (= (or b!7959096 b!7959084) bm!737935))

(assert (= (or b!7959096 b!7959084) bm!737937))

(assert (= (or b!7959095 b!7959086) bm!737933))

(assert (= (or b!7959095 b!7959094) bm!737938))

(assert (= (or b!7959095 b!7959094) bm!737934))

(assert (= (or b!7959095 b!7959094) bm!737939))

(assert (= (and d!2377661 res!3154724) b!7959090))

(assert (= (and b!7959090 (not res!3154725)) b!7959085))

(assert (=> bm!737935 m!8339664))

(declare-fun m!8339970 () Bool)

(assert (=> bm!737935 m!8339970))

(declare-fun m!8339972 () Bool)

(assert (=> b!7959086 m!8339972))

(declare-fun m!8339974 () Bool)

(assert (=> b!7959086 m!8339974))

(assert (=> b!7959086 m!8339974))

(declare-fun m!8339976 () Bool)

(assert (=> b!7959086 m!8339976))

(declare-fun m!8339978 () Bool)

(assert (=> b!7959086 m!8339978))

(declare-fun m!8339980 () Bool)

(assert (=> b!7959086 m!8339980))

(assert (=> b!7959086 m!8339666))

(declare-fun m!8339982 () Bool)

(assert (=> b!7959086 m!8339982))

(assert (=> b!7959086 m!8339980))

(declare-fun m!8339984 () Bool)

(assert (=> b!7959086 m!8339984))

(declare-fun m!8339986 () Bool)

(assert (=> b!7959086 m!8339986))

(declare-fun m!8339988 () Bool)

(assert (=> b!7959086 m!8339988))

(assert (=> b!7959086 m!8339678))

(declare-fun m!8339990 () Bool)

(assert (=> b!7959086 m!8339990))

(declare-fun m!8339992 () Bool)

(assert (=> b!7959086 m!8339992))

(declare-fun m!8339994 () Bool)

(assert (=> b!7959086 m!8339994))

(assert (=> b!7959086 m!8339992))

(assert (=> b!7959086 m!8339666))

(declare-fun m!8339996 () Bool)

(assert (=> b!7959086 m!8339996))

(declare-fun m!8339998 () Bool)

(assert (=> bm!737937 m!8339998))

(assert (=> bm!737940 m!8339666))

(assert (=> bm!737940 m!8339996))

(assert (=> bm!737939 m!8339660))

(assert (=> bm!737934 m!8339658))

(assert (=> bm!737936 m!8339666))

(assert (=> bm!737936 m!8339982))

(declare-fun m!8340000 () Bool)

(assert (=> b!7959085 m!8340000))

(assert (=> b!7959085 m!8339978))

(declare-fun m!8340002 () Bool)

(assert (=> bm!737938 m!8340002))

(declare-fun m!8340004 () Bool)

(assert (=> d!2377661 m!8340004))

(assert (=> d!2377661 m!8339666))

(declare-fun m!8340006 () Bool)

(assert (=> d!2377661 m!8340006))

(assert (=> d!2377661 m!8339664))

(declare-fun m!8340008 () Bool)

(assert (=> d!2377661 m!8340008))

(assert (=> d!2377661 m!8339664))

(declare-fun m!8340010 () Bool)

(assert (=> d!2377661 m!8340010))

(assert (=> d!2377661 m!8339980))

(assert (=> d!2377661 m!8339666))

(declare-fun m!8340012 () Bool)

(assert (=> d!2377661 m!8340012))

(declare-fun m!8340014 () Bool)

(assert (=> d!2377661 m!8340014))

(declare-fun m!8340016 () Bool)

(assert (=> d!2377661 m!8340016))

(assert (=> d!2377661 m!8339666))

(assert (=> d!2377661 m!8340014))

(declare-fun m!8340018 () Bool)

(assert (=> b!7959096 m!8340018))

(declare-fun m!8340020 () Bool)

(assert (=> b!7959090 m!8340020))

(assert (=> bm!737933 m!8339664))

(declare-fun m!8340022 () Bool)

(assert (=> bm!737933 m!8340022))

(assert (=> b!7958690 d!2377661))

(declare-fun b!7959118 () Bool)

(declare-fun e!4693939 () Regex!21489)

(declare-fun call!737954 () Regex!21489)

(assert (=> b!7959118 (= e!4693939 (Union!21489 (Concat!30488 call!737954 (regTwo!43490 r!24602)) EmptyLang!21489))))

(declare-fun b!7959119 () Bool)

(declare-fun e!4693937 () Regex!21489)

(assert (=> b!7959119 (= e!4693937 EmptyLang!21489)))

(declare-fun b!7959120 () Bool)

(declare-fun c!1461645 () Bool)

(assert (=> b!7959120 (= c!1461645 (nullable!9590 (regOne!43490 r!24602)))))

(declare-fun e!4693938 () Regex!21489)

(assert (=> b!7959120 (= e!4693938 e!4693939)))

(declare-fun b!7959121 () Bool)

(declare-fun e!4693941 () Regex!21489)

(assert (=> b!7959121 (= e!4693937 e!4693941)))

(declare-fun c!1461641 () Bool)

(assert (=> b!7959121 (= c!1461641 ((_ is ElementMatch!21489) r!24602))))

(declare-fun c!1461642 () Bool)

(declare-fun call!737957 () Regex!21489)

(declare-fun bm!737949 () Bool)

(assert (=> bm!737949 (= call!737957 (derivativeStep!6517 (ite c!1461642 (regOne!43491 r!24602) (regOne!43490 r!24602)) lt!2702181))))

(declare-fun bm!737950 () Bool)

(declare-fun call!737955 () Regex!21489)

(declare-fun call!737956 () Regex!21489)

(assert (=> bm!737950 (= call!737955 call!737956)))

(declare-fun bm!737951 () Bool)

(assert (=> bm!737951 (= call!737954 call!737955)))

(declare-fun b!7959122 () Bool)

(declare-fun e!4693940 () Regex!21489)

(assert (=> b!7959122 (= e!4693940 e!4693938)))

(declare-fun c!1461644 () Bool)

(assert (=> b!7959122 (= c!1461644 ((_ is Star!21489) r!24602))))

(declare-fun b!7959123 () Bool)

(assert (=> b!7959123 (= e!4693941 (ite (= lt!2702181 (c!1461518 r!24602)) EmptyExpr!21489 EmptyLang!21489))))

(declare-fun d!2377663 () Bool)

(declare-fun lt!2702475 () Regex!21489)

(assert (=> d!2377663 (validRegex!11793 lt!2702475)))

(assert (=> d!2377663 (= lt!2702475 e!4693937)))

(declare-fun c!1461643 () Bool)

(assert (=> d!2377663 (= c!1461643 (or ((_ is EmptyExpr!21489) r!24602) ((_ is EmptyLang!21489) r!24602)))))

(assert (=> d!2377663 (validRegex!11793 r!24602)))

(assert (=> d!2377663 (= (derivativeStep!6517 r!24602 lt!2702181) lt!2702475)))

(declare-fun b!7959124 () Bool)

(assert (=> b!7959124 (= e!4693939 (Union!21489 (Concat!30488 call!737957 (regTwo!43490 r!24602)) call!737954))))

(declare-fun b!7959125 () Bool)

(assert (=> b!7959125 (= c!1461642 ((_ is Union!21489) r!24602))))

(assert (=> b!7959125 (= e!4693941 e!4693940)))

(declare-fun b!7959126 () Bool)

(assert (=> b!7959126 (= e!4693940 (Union!21489 call!737957 call!737956))))

(declare-fun bm!737952 () Bool)

(assert (=> bm!737952 (= call!737956 (derivativeStep!6517 (ite c!1461642 (regTwo!43491 r!24602) (ite c!1461644 (reg!21818 r!24602) (ite c!1461645 (regTwo!43490 r!24602) (regOne!43490 r!24602)))) lt!2702181))))

(declare-fun b!7959127 () Bool)

(assert (=> b!7959127 (= e!4693938 (Concat!30488 call!737955 r!24602))))

(assert (= (and d!2377663 c!1461643) b!7959119))

(assert (= (and d!2377663 (not c!1461643)) b!7959121))

(assert (= (and b!7959121 c!1461641) b!7959123))

(assert (= (and b!7959121 (not c!1461641)) b!7959125))

(assert (= (and b!7959125 c!1461642) b!7959126))

(assert (= (and b!7959125 (not c!1461642)) b!7959122))

(assert (= (and b!7959122 c!1461644) b!7959127))

(assert (= (and b!7959122 (not c!1461644)) b!7959120))

(assert (= (and b!7959120 c!1461645) b!7959124))

(assert (= (and b!7959120 (not c!1461645)) b!7959118))

(assert (= (or b!7959124 b!7959118) bm!737951))

(assert (= (or b!7959127 bm!737951) bm!737950))

(assert (= (or b!7959126 bm!737950) bm!737952))

(assert (= (or b!7959126 b!7959124) bm!737949))

(declare-fun m!8340024 () Bool)

(assert (=> b!7959120 m!8340024))

(declare-fun m!8340026 () Bool)

(assert (=> bm!737949 m!8340026))

(declare-fun m!8340028 () Bool)

(assert (=> d!2377663 m!8340028))

(assert (=> d!2377663 m!8339694))

(declare-fun m!8340030 () Bool)

(assert (=> bm!737952 m!8340030))

(assert (=> b!7958690 d!2377663))

(declare-fun d!2377665 () Bool)

(assert (=> d!2377665 (= (tail!15778 lt!2702176) (t!390461 lt!2702176))))

(assert (=> b!7958690 d!2377665))

(declare-fun b!7959130 () Bool)

(declare-fun e!4693943 () Bool)

(assert (=> b!7959130 (= e!4693943 (isPrefix!6589 (tail!15778 lt!2702175) (tail!15778 input!7927)))))

(declare-fun b!7959129 () Bool)

(declare-fun res!3154726 () Bool)

(assert (=> b!7959129 (=> (not res!3154726) (not e!4693943))))

(assert (=> b!7959129 (= res!3154726 (= (head!16241 lt!2702175) (head!16241 input!7927)))))

(declare-fun b!7959131 () Bool)

(declare-fun e!4693944 () Bool)

(assert (=> b!7959131 (= e!4693944 (>= (size!43425 input!7927) (size!43425 lt!2702175)))))

(declare-fun d!2377667 () Bool)

(assert (=> d!2377667 e!4693944))

(declare-fun res!3154728 () Bool)

(assert (=> d!2377667 (=> res!3154728 e!4693944)))

(declare-fun lt!2702476 () Bool)

(assert (=> d!2377667 (= res!3154728 (not lt!2702476))))

(declare-fun e!4693942 () Bool)

(assert (=> d!2377667 (= lt!2702476 e!4693942)))

(declare-fun res!3154727 () Bool)

(assert (=> d!2377667 (=> res!3154727 e!4693942)))

(assert (=> d!2377667 (= res!3154727 ((_ is Nil!74594) lt!2702175))))

(assert (=> d!2377667 (= (isPrefix!6589 lt!2702175 input!7927) lt!2702476)))

(declare-fun b!7959128 () Bool)

(assert (=> b!7959128 (= e!4693942 e!4693943)))

(declare-fun res!3154729 () Bool)

(assert (=> b!7959128 (=> (not res!3154729) (not e!4693943))))

(assert (=> b!7959128 (= res!3154729 (not ((_ is Nil!74594) input!7927)))))

(assert (= (and d!2377667 (not res!3154727)) b!7959128))

(assert (= (and b!7959128 res!3154729) b!7959129))

(assert (= (and b!7959129 res!3154726) b!7959130))

(assert (= (and d!2377667 (not res!3154728)) b!7959131))

(declare-fun m!8340032 () Bool)

(assert (=> b!7959130 m!8340032))

(assert (=> b!7959130 m!8339928))

(assert (=> b!7959130 m!8340032))

(assert (=> b!7959130 m!8339928))

(declare-fun m!8340034 () Bool)

(assert (=> b!7959130 m!8340034))

(declare-fun m!8340036 () Bool)

(assert (=> b!7959129 m!8340036))

(assert (=> b!7959129 m!8339954))

(assert (=> b!7959131 m!8339678))

(assert (=> b!7959131 m!8339978))

(assert (=> b!7958688 d!2377667))

(declare-fun d!2377669 () Bool)

(declare-fun nullableFct!3780 (Regex!21489) Bool)

(assert (=> d!2377669 (= (nullable!9590 r!24602) (nullableFct!3780 r!24602))))

(declare-fun bs!1969692 () Bool)

(assert (= bs!1969692 d!2377669))

(declare-fun m!8340038 () Bool)

(assert (=> bs!1969692 m!8340038))

(assert (=> b!7958688 d!2377669))

(declare-fun b!7959141 () Bool)

(declare-fun e!4693949 () List!74718)

(assert (=> b!7959141 (= e!4693949 (Cons!74594 (h!81042 testedP!447) (++!18359 (t!390461 testedP!447) (Cons!74594 lt!2702181 Nil!74594))))))

(declare-fun b!7959140 () Bool)

(assert (=> b!7959140 (= e!4693949 (Cons!74594 lt!2702181 Nil!74594))))

(declare-fun b!7959143 () Bool)

(declare-fun e!4693950 () Bool)

(declare-fun lt!2702479 () List!74718)

(assert (=> b!7959143 (= e!4693950 (or (not (= (Cons!74594 lt!2702181 Nil!74594) Nil!74594)) (= lt!2702479 testedP!447)))))

(declare-fun d!2377671 () Bool)

(assert (=> d!2377671 e!4693950))

(declare-fun res!3154735 () Bool)

(assert (=> d!2377671 (=> (not res!3154735) (not e!4693950))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15838 (List!74718) (InoxSet C!43316))

(assert (=> d!2377671 (= res!3154735 (= (content!15838 lt!2702479) ((_ map or) (content!15838 testedP!447) (content!15838 (Cons!74594 lt!2702181 Nil!74594)))))))

(assert (=> d!2377671 (= lt!2702479 e!4693949)))

(declare-fun c!1461648 () Bool)

(assert (=> d!2377671 (= c!1461648 ((_ is Nil!74594) testedP!447))))

(assert (=> d!2377671 (= (++!18359 testedP!447 (Cons!74594 lt!2702181 Nil!74594)) lt!2702479)))

(declare-fun b!7959142 () Bool)

(declare-fun res!3154734 () Bool)

(assert (=> b!7959142 (=> (not res!3154734) (not e!4693950))))

(assert (=> b!7959142 (= res!3154734 (= (size!43425 lt!2702479) (+ (size!43425 testedP!447) (size!43425 (Cons!74594 lt!2702181 Nil!74594)))))))

(assert (= (and d!2377671 c!1461648) b!7959140))

(assert (= (and d!2377671 (not c!1461648)) b!7959141))

(assert (= (and d!2377671 res!3154735) b!7959142))

(assert (= (and b!7959142 res!3154734) b!7959143))

(declare-fun m!8340040 () Bool)

(assert (=> b!7959141 m!8340040))

(declare-fun m!8340042 () Bool)

(assert (=> d!2377671 m!8340042))

(declare-fun m!8340044 () Bool)

(assert (=> d!2377671 m!8340044))

(declare-fun m!8340046 () Bool)

(assert (=> d!2377671 m!8340046))

(declare-fun m!8340048 () Bool)

(assert (=> b!7959142 m!8340048))

(assert (=> b!7959142 m!8339676))

(declare-fun m!8340050 () Bool)

(assert (=> b!7959142 m!8340050))

(assert (=> b!7958688 d!2377671))

(declare-fun d!2377673 () Bool)

(assert (=> d!2377673 (= (head!16241 lt!2702176) (h!81042 lt!2702176))))

(assert (=> b!7958688 d!2377673))

(declare-fun d!2377675 () Bool)

(assert (=> d!2377675 (isPrefix!6589 (++!18359 testedP!447 (Cons!74594 (head!16241 (getSuffix!3792 input!7927 testedP!447)) Nil!74594)) input!7927)))

(declare-fun lt!2702482 () Unit!169962)

(declare-fun choose!59968 (List!74718 List!74718) Unit!169962)

(assert (=> d!2377675 (= lt!2702482 (choose!59968 testedP!447 input!7927))))

(assert (=> d!2377675 (isPrefix!6589 testedP!447 input!7927)))

(assert (=> d!2377675 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1316 testedP!447 input!7927) lt!2702482)))

(declare-fun bs!1969693 () Bool)

(assert (= bs!1969693 d!2377675))

(assert (=> bs!1969693 m!8339654))

(assert (=> bs!1969693 m!8339680))

(assert (=> bs!1969693 m!8339902))

(declare-fun m!8340052 () Bool)

(assert (=> bs!1969693 m!8340052))

(assert (=> bs!1969693 m!8339902))

(assert (=> bs!1969693 m!8339904))

(assert (=> bs!1969693 m!8339680))

(assert (=> bs!1969693 m!8339896))

(assert (=> b!7958688 d!2377675))

(declare-fun bm!737953 () Bool)

(declare-fun c!1461650 () Bool)

(declare-fun call!737959 () Bool)

(declare-fun c!1461649 () Bool)

(assert (=> bm!737953 (= call!737959 (validRegex!11793 (ite c!1461649 (reg!21818 r!24602) (ite c!1461650 (regTwo!43491 r!24602) (regTwo!43490 r!24602)))))))

(declare-fun b!7959144 () Bool)

(declare-fun e!4693951 () Bool)

(declare-fun call!737958 () Bool)

(assert (=> b!7959144 (= e!4693951 call!737958)))

(declare-fun d!2377677 () Bool)

(declare-fun res!3154740 () Bool)

(declare-fun e!4693952 () Bool)

(assert (=> d!2377677 (=> res!3154740 e!4693952)))

(assert (=> d!2377677 (= res!3154740 ((_ is ElementMatch!21489) r!24602))))

(assert (=> d!2377677 (= (validRegex!11793 r!24602) e!4693952)))

(declare-fun b!7959145 () Bool)

(declare-fun res!3154738 () Bool)

(declare-fun e!4693955 () Bool)

(assert (=> b!7959145 (=> res!3154738 e!4693955)))

(assert (=> b!7959145 (= res!3154738 (not ((_ is Concat!30488) r!24602)))))

(declare-fun e!4693956 () Bool)

(assert (=> b!7959145 (= e!4693956 e!4693955)))

(declare-fun b!7959146 () Bool)

(declare-fun e!4693957 () Bool)

(assert (=> b!7959146 (= e!4693952 e!4693957)))

(assert (=> b!7959146 (= c!1461649 ((_ is Star!21489) r!24602))))

(declare-fun b!7959147 () Bool)

(declare-fun e!4693953 () Bool)

(assert (=> b!7959147 (= e!4693957 e!4693953)))

(declare-fun res!3154737 () Bool)

(assert (=> b!7959147 (= res!3154737 (not (nullable!9590 (reg!21818 r!24602))))))

(assert (=> b!7959147 (=> (not res!3154737) (not e!4693953))))

(declare-fun bm!737954 () Bool)

(declare-fun call!737960 () Bool)

(assert (=> bm!737954 (= call!737960 (validRegex!11793 (ite c!1461650 (regOne!43491 r!24602) (regOne!43490 r!24602))))))

(declare-fun b!7959148 () Bool)

(declare-fun e!4693954 () Bool)

(assert (=> b!7959148 (= e!4693954 call!737958)))

(declare-fun b!7959149 () Bool)

(assert (=> b!7959149 (= e!4693957 e!4693956)))

(assert (=> b!7959149 (= c!1461650 ((_ is Union!21489) r!24602))))

(declare-fun b!7959150 () Bool)

(assert (=> b!7959150 (= e!4693953 call!737959)))

(declare-fun b!7959151 () Bool)

(assert (=> b!7959151 (= e!4693955 e!4693951)))

(declare-fun res!3154739 () Bool)

(assert (=> b!7959151 (=> (not res!3154739) (not e!4693951))))

(assert (=> b!7959151 (= res!3154739 call!737960)))

(declare-fun b!7959152 () Bool)

(declare-fun res!3154736 () Bool)

(assert (=> b!7959152 (=> (not res!3154736) (not e!4693954))))

(assert (=> b!7959152 (= res!3154736 call!737960)))

(assert (=> b!7959152 (= e!4693956 e!4693954)))

(declare-fun bm!737955 () Bool)

(assert (=> bm!737955 (= call!737958 call!737959)))

(assert (= (and d!2377677 (not res!3154740)) b!7959146))

(assert (= (and b!7959146 c!1461649) b!7959147))

(assert (= (and b!7959146 (not c!1461649)) b!7959149))

(assert (= (and b!7959147 res!3154737) b!7959150))

(assert (= (and b!7959149 c!1461650) b!7959152))

(assert (= (and b!7959149 (not c!1461650)) b!7959145))

(assert (= (and b!7959152 res!3154736) b!7959148))

(assert (= (and b!7959145 (not res!3154738)) b!7959151))

(assert (= (and b!7959151 res!3154739) b!7959144))

(assert (= (or b!7959148 b!7959144) bm!737955))

(assert (= (or b!7959152 b!7959151) bm!737954))

(assert (= (or b!7959150 bm!737955) bm!737953))

(declare-fun m!8340054 () Bool)

(assert (=> bm!737953 m!8340054))

(declare-fun m!8340056 () Bool)

(assert (=> b!7959147 m!8340056))

(declare-fun m!8340058 () Bool)

(assert (=> bm!737954 m!8340058))

(assert (=> b!7958673 d!2377677))

(declare-fun b!7959181 () Bool)

(declare-fun e!4693972 () Bool)

(assert (=> b!7959181 (= e!4693972 (nullable!9590 baseR!116))))

(declare-fun b!7959182 () Bool)

(declare-fun e!4693978 () Bool)

(declare-fun e!4693974 () Bool)

(assert (=> b!7959182 (= e!4693978 e!4693974)))

(declare-fun c!1461658 () Bool)

(assert (=> b!7959182 (= c!1461658 ((_ is EmptyLang!21489) baseR!116))))

(declare-fun b!7959183 () Bool)

(declare-fun res!3154763 () Bool)

(declare-fun e!4693977 () Bool)

(assert (=> b!7959183 (=> res!3154763 e!4693977)))

(assert (=> b!7959183 (= res!3154763 (not (isEmpty!42895 (tail!15778 testedP!447))))))

(declare-fun b!7959184 () Bool)

(declare-fun e!4693975 () Bool)

(assert (=> b!7959184 (= e!4693975 (= (head!16241 testedP!447) (c!1461518 baseR!116)))))

(declare-fun b!7959185 () Bool)

(declare-fun res!3154758 () Bool)

(declare-fun e!4693976 () Bool)

(assert (=> b!7959185 (=> res!3154758 e!4693976)))

(assert (=> b!7959185 (= res!3154758 e!4693975)))

(declare-fun res!3154757 () Bool)

(assert (=> b!7959185 (=> (not res!3154757) (not e!4693975))))

(declare-fun lt!2702485 () Bool)

(assert (=> b!7959185 (= res!3154757 lt!2702485)))

(declare-fun b!7959186 () Bool)

(declare-fun e!4693973 () Bool)

(assert (=> b!7959186 (= e!4693973 e!4693977)))

(declare-fun res!3154759 () Bool)

(assert (=> b!7959186 (=> res!3154759 e!4693977)))

(declare-fun call!737963 () Bool)

(assert (=> b!7959186 (= res!3154759 call!737963)))

(declare-fun b!7959187 () Bool)

(assert (=> b!7959187 (= e!4693977 (not (= (head!16241 testedP!447) (c!1461518 baseR!116))))))

(declare-fun b!7959188 () Bool)

(assert (=> b!7959188 (= e!4693974 (not lt!2702485))))

(declare-fun b!7959189 () Bool)

(assert (=> b!7959189 (= e!4693978 (= lt!2702485 call!737963))))

(declare-fun d!2377679 () Bool)

(assert (=> d!2377679 e!4693978))

(declare-fun c!1461657 () Bool)

(assert (=> d!2377679 (= c!1461657 ((_ is EmptyExpr!21489) baseR!116))))

(assert (=> d!2377679 (= lt!2702485 e!4693972)))

(declare-fun c!1461659 () Bool)

(assert (=> d!2377679 (= c!1461659 (isEmpty!42895 testedP!447))))

(assert (=> d!2377679 (validRegex!11793 baseR!116)))

(assert (=> d!2377679 (= (matchR!10730 baseR!116 testedP!447) lt!2702485)))

(declare-fun b!7959190 () Bool)

(assert (=> b!7959190 (= e!4693972 (matchR!10730 (derivativeStep!6517 baseR!116 (head!16241 testedP!447)) (tail!15778 testedP!447)))))

(declare-fun b!7959191 () Bool)

(declare-fun res!3154760 () Bool)

(assert (=> b!7959191 (=> (not res!3154760) (not e!4693975))))

(assert (=> b!7959191 (= res!3154760 (isEmpty!42895 (tail!15778 testedP!447)))))

(declare-fun b!7959192 () Bool)

(assert (=> b!7959192 (= e!4693976 e!4693973)))

(declare-fun res!3154764 () Bool)

(assert (=> b!7959192 (=> (not res!3154764) (not e!4693973))))

(assert (=> b!7959192 (= res!3154764 (not lt!2702485))))

(declare-fun b!7959193 () Bool)

(declare-fun res!3154762 () Bool)

(assert (=> b!7959193 (=> (not res!3154762) (not e!4693975))))

(assert (=> b!7959193 (= res!3154762 (not call!737963))))

(declare-fun b!7959194 () Bool)

(declare-fun res!3154761 () Bool)

(assert (=> b!7959194 (=> res!3154761 e!4693976)))

(assert (=> b!7959194 (= res!3154761 (not ((_ is ElementMatch!21489) baseR!116)))))

(assert (=> b!7959194 (= e!4693974 e!4693976)))

(declare-fun bm!737958 () Bool)

(assert (=> bm!737958 (= call!737963 (isEmpty!42895 testedP!447))))

(assert (= (and d!2377679 c!1461659) b!7959181))

(assert (= (and d!2377679 (not c!1461659)) b!7959190))

(assert (= (and d!2377679 c!1461657) b!7959189))

(assert (= (and d!2377679 (not c!1461657)) b!7959182))

(assert (= (and b!7959182 c!1461658) b!7959188))

(assert (= (and b!7959182 (not c!1461658)) b!7959194))

(assert (= (and b!7959194 (not res!3154761)) b!7959185))

(assert (= (and b!7959185 res!3154757) b!7959193))

(assert (= (and b!7959193 res!3154762) b!7959191))

(assert (= (and b!7959191 res!3154760) b!7959184))

(assert (= (and b!7959185 (not res!3154758)) b!7959192))

(assert (= (and b!7959192 res!3154764) b!7959186))

(assert (= (and b!7959186 (not res!3154759)) b!7959183))

(assert (= (and b!7959183 (not res!3154763)) b!7959187))

(assert (= (or b!7959189 b!7959186 b!7959193) bm!737958))

(assert (=> b!7959187 m!8339952))

(declare-fun m!8340060 () Bool)

(assert (=> b!7959181 m!8340060))

(assert (=> b!7959190 m!8339952))

(assert (=> b!7959190 m!8339952))

(declare-fun m!8340062 () Bool)

(assert (=> b!7959190 m!8340062))

(assert (=> b!7959190 m!8339948))

(assert (=> b!7959190 m!8340062))

(assert (=> b!7959190 m!8339948))

(declare-fun m!8340064 () Bool)

(assert (=> b!7959190 m!8340064))

(declare-fun m!8340066 () Bool)

(assert (=> bm!737958 m!8340066))

(assert (=> b!7959183 m!8339948))

(assert (=> b!7959183 m!8339948))

(declare-fun m!8340068 () Bool)

(assert (=> b!7959183 m!8340068))

(assert (=> b!7959191 m!8339948))

(assert (=> b!7959191 m!8339948))

(assert (=> b!7959191 m!8340068))

(assert (=> d!2377679 m!8340066))

(assert (=> d!2377679 m!8339656))

(assert (=> b!7959184 m!8339952))

(assert (=> b!7958673 d!2377679))

(declare-fun b!7959195 () Bool)

(declare-fun e!4693979 () Bool)

(assert (=> b!7959195 (= e!4693979 (nullable!9590 lt!2702185))))

(declare-fun b!7959196 () Bool)

(declare-fun e!4693985 () Bool)

(declare-fun e!4693981 () Bool)

(assert (=> b!7959196 (= e!4693985 e!4693981)))

(declare-fun c!1461661 () Bool)

(assert (=> b!7959196 (= c!1461661 ((_ is EmptyLang!21489) lt!2702185))))

(declare-fun b!7959197 () Bool)

(declare-fun res!3154771 () Bool)

(declare-fun e!4693984 () Bool)

(assert (=> b!7959197 (=> res!3154771 e!4693984)))

(assert (=> b!7959197 (= res!3154771 (not (isEmpty!42895 (tail!15778 Nil!74594))))))

(declare-fun b!7959198 () Bool)

(declare-fun e!4693982 () Bool)

(assert (=> b!7959198 (= e!4693982 (= (head!16241 Nil!74594) (c!1461518 lt!2702185)))))

(declare-fun b!7959199 () Bool)

(declare-fun res!3154766 () Bool)

(declare-fun e!4693983 () Bool)

(assert (=> b!7959199 (=> res!3154766 e!4693983)))

(assert (=> b!7959199 (= res!3154766 e!4693982)))

(declare-fun res!3154765 () Bool)

(assert (=> b!7959199 (=> (not res!3154765) (not e!4693982))))

(declare-fun lt!2702486 () Bool)

(assert (=> b!7959199 (= res!3154765 lt!2702486)))

(declare-fun b!7959200 () Bool)

(declare-fun e!4693980 () Bool)

(assert (=> b!7959200 (= e!4693980 e!4693984)))

(declare-fun res!3154767 () Bool)

(assert (=> b!7959200 (=> res!3154767 e!4693984)))

(declare-fun call!737964 () Bool)

(assert (=> b!7959200 (= res!3154767 call!737964)))

(declare-fun b!7959201 () Bool)

(assert (=> b!7959201 (= e!4693984 (not (= (head!16241 Nil!74594) (c!1461518 lt!2702185))))))

(declare-fun b!7959202 () Bool)

(assert (=> b!7959202 (= e!4693981 (not lt!2702486))))

(declare-fun b!7959203 () Bool)

(assert (=> b!7959203 (= e!4693985 (= lt!2702486 call!737964))))

(declare-fun d!2377681 () Bool)

(assert (=> d!2377681 e!4693985))

(declare-fun c!1461660 () Bool)

(assert (=> d!2377681 (= c!1461660 ((_ is EmptyExpr!21489) lt!2702185))))

(assert (=> d!2377681 (= lt!2702486 e!4693979)))

(declare-fun c!1461662 () Bool)

(assert (=> d!2377681 (= c!1461662 (isEmpty!42895 Nil!74594))))

(assert (=> d!2377681 (validRegex!11793 lt!2702185)))

(assert (=> d!2377681 (= (matchR!10730 lt!2702185 Nil!74594) lt!2702486)))

(declare-fun b!7959204 () Bool)

(assert (=> b!7959204 (= e!4693979 (matchR!10730 (derivativeStep!6517 lt!2702185 (head!16241 Nil!74594)) (tail!15778 Nil!74594)))))

(declare-fun b!7959205 () Bool)

(declare-fun res!3154768 () Bool)

(assert (=> b!7959205 (=> (not res!3154768) (not e!4693982))))

(assert (=> b!7959205 (= res!3154768 (isEmpty!42895 (tail!15778 Nil!74594)))))

(declare-fun b!7959206 () Bool)

(assert (=> b!7959206 (= e!4693983 e!4693980)))

(declare-fun res!3154772 () Bool)

(assert (=> b!7959206 (=> (not res!3154772) (not e!4693980))))

(assert (=> b!7959206 (= res!3154772 (not lt!2702486))))

(declare-fun b!7959207 () Bool)

(declare-fun res!3154770 () Bool)

(assert (=> b!7959207 (=> (not res!3154770) (not e!4693982))))

(assert (=> b!7959207 (= res!3154770 (not call!737964))))

(declare-fun b!7959208 () Bool)

(declare-fun res!3154769 () Bool)

(assert (=> b!7959208 (=> res!3154769 e!4693983)))

(assert (=> b!7959208 (= res!3154769 (not ((_ is ElementMatch!21489) lt!2702185)))))

(assert (=> b!7959208 (= e!4693981 e!4693983)))

(declare-fun bm!737959 () Bool)

(assert (=> bm!737959 (= call!737964 (isEmpty!42895 Nil!74594))))

(assert (= (and d!2377681 c!1461662) b!7959195))

(assert (= (and d!2377681 (not c!1461662)) b!7959204))

(assert (= (and d!2377681 c!1461660) b!7959203))

(assert (= (and d!2377681 (not c!1461660)) b!7959196))

(assert (= (and b!7959196 c!1461661) b!7959202))

(assert (= (and b!7959196 (not c!1461661)) b!7959208))

(assert (= (and b!7959208 (not res!3154769)) b!7959199))

(assert (= (and b!7959199 res!3154765) b!7959207))

(assert (= (and b!7959207 res!3154770) b!7959205))

(assert (= (and b!7959205 res!3154768) b!7959198))

(assert (= (and b!7959199 (not res!3154766)) b!7959206))

(assert (= (and b!7959206 res!3154772) b!7959200))

(assert (= (and b!7959200 (not res!3154767)) b!7959197))

(assert (= (and b!7959197 (not res!3154771)) b!7959201))

(assert (= (or b!7959203 b!7959200 b!7959207) bm!737959))

(declare-fun m!8340070 () Bool)

(assert (=> b!7959201 m!8340070))

(declare-fun m!8340072 () Bool)

(assert (=> b!7959195 m!8340072))

(assert (=> b!7959204 m!8340070))

(assert (=> b!7959204 m!8340070))

(declare-fun m!8340074 () Bool)

(assert (=> b!7959204 m!8340074))

(declare-fun m!8340076 () Bool)

(assert (=> b!7959204 m!8340076))

(assert (=> b!7959204 m!8340074))

(assert (=> b!7959204 m!8340076))

(declare-fun m!8340078 () Bool)

(assert (=> b!7959204 m!8340078))

(declare-fun m!8340080 () Bool)

(assert (=> bm!737959 m!8340080))

(assert (=> b!7959197 m!8340076))

(assert (=> b!7959197 m!8340076))

(declare-fun m!8340082 () Bool)

(assert (=> b!7959197 m!8340082))

(assert (=> b!7959205 m!8340076))

(assert (=> b!7959205 m!8340076))

(assert (=> b!7959205 m!8340082))

(assert (=> d!2377681 m!8340080))

(declare-fun m!8340084 () Bool)

(assert (=> d!2377681 m!8340084))

(assert (=> b!7959198 m!8340070))

(assert (=> b!7958673 d!2377681))

(declare-fun d!2377683 () Bool)

(assert (=> d!2377683 (= (matchR!10730 baseR!116 testedP!447) (matchR!10730 (derivative!675 baseR!116 testedP!447) Nil!74594))))

(declare-fun lt!2702489 () Unit!169962)

(declare-fun choose!59969 (Regex!21489 List!74718) Unit!169962)

(assert (=> d!2377683 (= lt!2702489 (choose!59969 baseR!116 testedP!447))))

(assert (=> d!2377683 (validRegex!11793 baseR!116)))

(assert (=> d!2377683 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!298 baseR!116 testedP!447) lt!2702489)))

(declare-fun bs!1969694 () Bool)

(assert (= bs!1969694 d!2377683))

(assert (=> bs!1969694 m!8339696))

(assert (=> bs!1969694 m!8339656))

(declare-fun m!8340086 () Bool)

(assert (=> bs!1969694 m!8340086))

(assert (=> bs!1969694 m!8339682))

(declare-fun m!8340088 () Bool)

(assert (=> bs!1969694 m!8340088))

(assert (=> bs!1969694 m!8339682))

(assert (=> b!7958673 d!2377683))

(declare-fun b!7959219 () Bool)

(declare-fun e!4693988 () Bool)

(assert (=> b!7959219 (= e!4693988 tp_is_empty!53521)))

(declare-fun b!7959221 () Bool)

(declare-fun tp!2371179 () Bool)

(assert (=> b!7959221 (= e!4693988 tp!2371179)))

(declare-fun b!7959220 () Bool)

(declare-fun tp!2371180 () Bool)

(declare-fun tp!2371177 () Bool)

(assert (=> b!7959220 (= e!4693988 (and tp!2371180 tp!2371177))))

(assert (=> b!7958676 (= tp!2371101 e!4693988)))

(declare-fun b!7959222 () Bool)

(declare-fun tp!2371181 () Bool)

(declare-fun tp!2371178 () Bool)

(assert (=> b!7959222 (= e!4693988 (and tp!2371181 tp!2371178))))

(assert (= (and b!7958676 ((_ is ElementMatch!21489) (regOne!43490 baseR!116))) b!7959219))

(assert (= (and b!7958676 ((_ is Concat!30488) (regOne!43490 baseR!116))) b!7959220))

(assert (= (and b!7958676 ((_ is Star!21489) (regOne!43490 baseR!116))) b!7959221))

(assert (= (and b!7958676 ((_ is Union!21489) (regOne!43490 baseR!116))) b!7959222))

(declare-fun b!7959223 () Bool)

(declare-fun e!4693989 () Bool)

(assert (=> b!7959223 (= e!4693989 tp_is_empty!53521)))

(declare-fun b!7959225 () Bool)

(declare-fun tp!2371184 () Bool)

(assert (=> b!7959225 (= e!4693989 tp!2371184)))

(declare-fun b!7959224 () Bool)

(declare-fun tp!2371185 () Bool)

(declare-fun tp!2371182 () Bool)

(assert (=> b!7959224 (= e!4693989 (and tp!2371185 tp!2371182))))

(assert (=> b!7958676 (= tp!2371091 e!4693989)))

(declare-fun b!7959226 () Bool)

(declare-fun tp!2371186 () Bool)

(declare-fun tp!2371183 () Bool)

(assert (=> b!7959226 (= e!4693989 (and tp!2371186 tp!2371183))))

(assert (= (and b!7958676 ((_ is ElementMatch!21489) (regTwo!43490 baseR!116))) b!7959223))

(assert (= (and b!7958676 ((_ is Concat!30488) (regTwo!43490 baseR!116))) b!7959224))

(assert (= (and b!7958676 ((_ is Star!21489) (regTwo!43490 baseR!116))) b!7959225))

(assert (= (and b!7958676 ((_ is Union!21489) (regTwo!43490 baseR!116))) b!7959226))

(declare-fun b!7959231 () Bool)

(declare-fun e!4693992 () Bool)

(declare-fun tp!2371189 () Bool)

(assert (=> b!7959231 (= e!4693992 (and tp_is_empty!53521 tp!2371189))))

(assert (=> b!7958677 (= tp!2371098 e!4693992)))

(assert (= (and b!7958677 ((_ is Cons!74594) (t!390461 testedP!447))) b!7959231))

(declare-fun b!7959232 () Bool)

(declare-fun e!4693993 () Bool)

(assert (=> b!7959232 (= e!4693993 tp_is_empty!53521)))

(declare-fun b!7959234 () Bool)

(declare-fun tp!2371192 () Bool)

(assert (=> b!7959234 (= e!4693993 tp!2371192)))

(declare-fun b!7959233 () Bool)

(declare-fun tp!2371193 () Bool)

(declare-fun tp!2371190 () Bool)

(assert (=> b!7959233 (= e!4693993 (and tp!2371193 tp!2371190))))

(assert (=> b!7958682 (= tp!2371102 e!4693993)))

(declare-fun b!7959235 () Bool)

(declare-fun tp!2371194 () Bool)

(declare-fun tp!2371191 () Bool)

(assert (=> b!7959235 (= e!4693993 (and tp!2371194 tp!2371191))))

(assert (= (and b!7958682 ((_ is ElementMatch!21489) (reg!21818 baseR!116))) b!7959232))

(assert (= (and b!7958682 ((_ is Concat!30488) (reg!21818 baseR!116))) b!7959233))

(assert (= (and b!7958682 ((_ is Star!21489) (reg!21818 baseR!116))) b!7959234))

(assert (= (and b!7958682 ((_ is Union!21489) (reg!21818 baseR!116))) b!7959235))

(declare-fun b!7959236 () Bool)

(declare-fun e!4693994 () Bool)

(assert (=> b!7959236 (= e!4693994 tp_is_empty!53521)))

(declare-fun b!7959238 () Bool)

(declare-fun tp!2371197 () Bool)

(assert (=> b!7959238 (= e!4693994 tp!2371197)))

(declare-fun b!7959237 () Bool)

(declare-fun tp!2371198 () Bool)

(declare-fun tp!2371195 () Bool)

(assert (=> b!7959237 (= e!4693994 (and tp!2371198 tp!2371195))))

(assert (=> b!7958675 (= tp!2371095 e!4693994)))

(declare-fun b!7959239 () Bool)

(declare-fun tp!2371199 () Bool)

(declare-fun tp!2371196 () Bool)

(assert (=> b!7959239 (= e!4693994 (and tp!2371199 tp!2371196))))

(assert (= (and b!7958675 ((_ is ElementMatch!21489) (regOne!43491 r!24602))) b!7959236))

(assert (= (and b!7958675 ((_ is Concat!30488) (regOne!43491 r!24602))) b!7959237))

(assert (= (and b!7958675 ((_ is Star!21489) (regOne!43491 r!24602))) b!7959238))

(assert (= (and b!7958675 ((_ is Union!21489) (regOne!43491 r!24602))) b!7959239))

(declare-fun b!7959240 () Bool)

(declare-fun e!4693995 () Bool)

(assert (=> b!7959240 (= e!4693995 tp_is_empty!53521)))

(declare-fun b!7959242 () Bool)

(declare-fun tp!2371202 () Bool)

(assert (=> b!7959242 (= e!4693995 tp!2371202)))

(declare-fun b!7959241 () Bool)

(declare-fun tp!2371203 () Bool)

(declare-fun tp!2371200 () Bool)

(assert (=> b!7959241 (= e!4693995 (and tp!2371203 tp!2371200))))

(assert (=> b!7958675 (= tp!2371092 e!4693995)))

(declare-fun b!7959243 () Bool)

(declare-fun tp!2371204 () Bool)

(declare-fun tp!2371201 () Bool)

(assert (=> b!7959243 (= e!4693995 (and tp!2371204 tp!2371201))))

(assert (= (and b!7958675 ((_ is ElementMatch!21489) (regTwo!43491 r!24602))) b!7959240))

(assert (= (and b!7958675 ((_ is Concat!30488) (regTwo!43491 r!24602))) b!7959241))

(assert (= (and b!7958675 ((_ is Star!21489) (regTwo!43491 r!24602))) b!7959242))

(assert (= (and b!7958675 ((_ is Union!21489) (regTwo!43491 r!24602))) b!7959243))

(declare-fun b!7959244 () Bool)

(declare-fun e!4693996 () Bool)

(assert (=> b!7959244 (= e!4693996 tp_is_empty!53521)))

(declare-fun b!7959246 () Bool)

(declare-fun tp!2371207 () Bool)

(assert (=> b!7959246 (= e!4693996 tp!2371207)))

(declare-fun b!7959245 () Bool)

(declare-fun tp!2371208 () Bool)

(declare-fun tp!2371205 () Bool)

(assert (=> b!7959245 (= e!4693996 (and tp!2371208 tp!2371205))))

(assert (=> b!7958679 (= tp!2371093 e!4693996)))

(declare-fun b!7959247 () Bool)

(declare-fun tp!2371209 () Bool)

(declare-fun tp!2371206 () Bool)

(assert (=> b!7959247 (= e!4693996 (and tp!2371209 tp!2371206))))

(assert (= (and b!7958679 ((_ is ElementMatch!21489) (regOne!43490 r!24602))) b!7959244))

(assert (= (and b!7958679 ((_ is Concat!30488) (regOne!43490 r!24602))) b!7959245))

(assert (= (and b!7958679 ((_ is Star!21489) (regOne!43490 r!24602))) b!7959246))

(assert (= (and b!7958679 ((_ is Union!21489) (regOne!43490 r!24602))) b!7959247))

(declare-fun b!7959248 () Bool)

(declare-fun e!4693997 () Bool)

(assert (=> b!7959248 (= e!4693997 tp_is_empty!53521)))

(declare-fun b!7959250 () Bool)

(declare-fun tp!2371212 () Bool)

(assert (=> b!7959250 (= e!4693997 tp!2371212)))

(declare-fun b!7959249 () Bool)

(declare-fun tp!2371213 () Bool)

(declare-fun tp!2371210 () Bool)

(assert (=> b!7959249 (= e!4693997 (and tp!2371213 tp!2371210))))

(assert (=> b!7958679 (= tp!2371094 e!4693997)))

(declare-fun b!7959251 () Bool)

(declare-fun tp!2371214 () Bool)

(declare-fun tp!2371211 () Bool)

(assert (=> b!7959251 (= e!4693997 (and tp!2371214 tp!2371211))))

(assert (= (and b!7958679 ((_ is ElementMatch!21489) (regTwo!43490 r!24602))) b!7959248))

(assert (= (and b!7958679 ((_ is Concat!30488) (regTwo!43490 r!24602))) b!7959249))

(assert (= (and b!7958679 ((_ is Star!21489) (regTwo!43490 r!24602))) b!7959250))

(assert (= (and b!7958679 ((_ is Union!21489) (regTwo!43490 r!24602))) b!7959251))

(declare-fun b!7959252 () Bool)

(declare-fun e!4693998 () Bool)

(assert (=> b!7959252 (= e!4693998 tp_is_empty!53521)))

(declare-fun b!7959254 () Bool)

(declare-fun tp!2371217 () Bool)

(assert (=> b!7959254 (= e!4693998 tp!2371217)))

(declare-fun b!7959253 () Bool)

(declare-fun tp!2371218 () Bool)

(declare-fun tp!2371215 () Bool)

(assert (=> b!7959253 (= e!4693998 (and tp!2371218 tp!2371215))))

(assert (=> b!7958685 (= tp!2371099 e!4693998)))

(declare-fun b!7959255 () Bool)

(declare-fun tp!2371219 () Bool)

(declare-fun tp!2371216 () Bool)

(assert (=> b!7959255 (= e!4693998 (and tp!2371219 tp!2371216))))

(assert (= (and b!7958685 ((_ is ElementMatch!21489) (regOne!43491 baseR!116))) b!7959252))

(assert (= (and b!7958685 ((_ is Concat!30488) (regOne!43491 baseR!116))) b!7959253))

(assert (= (and b!7958685 ((_ is Star!21489) (regOne!43491 baseR!116))) b!7959254))

(assert (= (and b!7958685 ((_ is Union!21489) (regOne!43491 baseR!116))) b!7959255))

(declare-fun b!7959256 () Bool)

(declare-fun e!4693999 () Bool)

(assert (=> b!7959256 (= e!4693999 tp_is_empty!53521)))

(declare-fun b!7959258 () Bool)

(declare-fun tp!2371222 () Bool)

(assert (=> b!7959258 (= e!4693999 tp!2371222)))

(declare-fun b!7959257 () Bool)

(declare-fun tp!2371223 () Bool)

(declare-fun tp!2371220 () Bool)

(assert (=> b!7959257 (= e!4693999 (and tp!2371223 tp!2371220))))

(assert (=> b!7958685 (= tp!2371096 e!4693999)))

(declare-fun b!7959259 () Bool)

(declare-fun tp!2371224 () Bool)

(declare-fun tp!2371221 () Bool)

(assert (=> b!7959259 (= e!4693999 (and tp!2371224 tp!2371221))))

(assert (= (and b!7958685 ((_ is ElementMatch!21489) (regTwo!43491 baseR!116))) b!7959256))

(assert (= (and b!7958685 ((_ is Concat!30488) (regTwo!43491 baseR!116))) b!7959257))

(assert (= (and b!7958685 ((_ is Star!21489) (regTwo!43491 baseR!116))) b!7959258))

(assert (= (and b!7958685 ((_ is Union!21489) (regTwo!43491 baseR!116))) b!7959259))

(declare-fun b!7959260 () Bool)

(declare-fun e!4694000 () Bool)

(declare-fun tp!2371225 () Bool)

(assert (=> b!7959260 (= e!4694000 (and tp_is_empty!53521 tp!2371225))))

(assert (=> b!7958689 (= tp!2371100 e!4694000)))

(assert (= (and b!7958689 ((_ is Cons!74594) (t!390461 input!7927))) b!7959260))

(declare-fun b!7959261 () Bool)

(declare-fun e!4694001 () Bool)

(assert (=> b!7959261 (= e!4694001 tp_is_empty!53521)))

(declare-fun b!7959263 () Bool)

(declare-fun tp!2371228 () Bool)

(assert (=> b!7959263 (= e!4694001 tp!2371228)))

(declare-fun b!7959262 () Bool)

(declare-fun tp!2371229 () Bool)

(declare-fun tp!2371226 () Bool)

(assert (=> b!7959262 (= e!4694001 (and tp!2371229 tp!2371226))))

(assert (=> b!7958678 (= tp!2371097 e!4694001)))

(declare-fun b!7959264 () Bool)

(declare-fun tp!2371230 () Bool)

(declare-fun tp!2371227 () Bool)

(assert (=> b!7959264 (= e!4694001 (and tp!2371230 tp!2371227))))

(assert (= (and b!7958678 ((_ is ElementMatch!21489) (reg!21818 r!24602))) b!7959261))

(assert (= (and b!7958678 ((_ is Concat!30488) (reg!21818 r!24602))) b!7959262))

(assert (= (and b!7958678 ((_ is Star!21489) (reg!21818 r!24602))) b!7959263))

(assert (= (and b!7958678 ((_ is Union!21489) (reg!21818 r!24602))) b!7959264))

(check-sat (not d!2377669) (not b!7959238) (not bm!737911) (not b!7959234) (not b!7959233) (not b!7959243) (not b!7959222) (not bm!737933) (not bm!737959) (not bm!737908) (not bm!737935) (not b!7958933) (not b!7959242) (not b!7959072) (not bm!737954) (not b!7959085) (not b!7959086) (not b!7959204) (not b!7959226) (not b!7959201) (not b!7958965) (not d!2377663) (not b!7959120) (not b!7958698) (not b!7959263) (not bm!737907) (not bm!737938) (not b!7959225) (not b!7959235) (not bm!737930) (not b!7959264) (not bm!737904) (not b!7959250) (not d!2377683) (not b!7959224) (not b!7959262) (not b!7959187) (not bm!737939) (not b!7959257) (not d!2377661) (not b!7959258) (not d!2377675) (not bm!737906) (not b!7959130) tp_is_empty!53521 (not bm!737952) (not b!7959195) (not bm!737910) (not b!7959237) (not d!2377657) (not b!7959259) (not bm!737905) (not b!7959260) (not b!7959255) (not b!7959078) (not b!7959191) (not b!7959241) (not b!7959073) (not b!7958939) (not b!7958929) (not bm!737937) (not b!7959129) (not b!7959082) (not b!7959205) (not bm!737931) (not d!2377681) (not b!7959231) (not b!7959221) (not b!7959254) (not b!7959147) (not d!2377671) (not b!7959096) (not b!7959190) (not b!7959239) (not b!7959251) (not b!7959198) (not bm!737953) (not b!7959142) (not bm!737934) (not b!7959071) (not b!7959083) (not bm!737909) (not bm!737940) (not b!7959253) (not b!7959056) (not d!2377651) (not b!7959141) (not bm!737949) (not b!7959249) (not b!7959081) (not bm!737958) (not b!7959184) (not d!2377679) (not b!7959131) (not bm!737936) (not b!7959246) (not b!7959090) (not b!7959220) (not b!7958928) (not b!7958968) (not b!7959197) (not b!7959181) (not d!2377639) (not d!2377653) (not b!7959247) (not b!7959245) (not d!2377591) (not b!7959183) (not d!2377649))
(check-sat)
