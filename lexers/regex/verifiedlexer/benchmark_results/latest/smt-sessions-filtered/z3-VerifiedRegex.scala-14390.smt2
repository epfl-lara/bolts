; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750032 () Bool)

(assert start!750032)

(declare-fun b!7947956 () Bool)

(declare-fun e!4688859 () Bool)

(declare-fun tp_is_empty!53465 () Bool)

(declare-fun tp!2364675 () Bool)

(assert (=> b!7947956 (= e!4688859 (and tp_is_empty!53465 tp!2364675))))

(declare-fun b!7947957 () Bool)

(declare-fun e!4688860 () Bool)

(declare-fun tp!2364674 () Bool)

(declare-fun tp!2364668 () Bool)

(assert (=> b!7947957 (= e!4688860 (and tp!2364674 tp!2364668))))

(declare-fun b!7947958 () Bool)

(declare-fun e!4688858 () Bool)

(declare-fun e!4688861 () Bool)

(assert (=> b!7947958 (= e!4688858 e!4688861)))

(declare-fun res!3152276 () Bool)

(assert (=> b!7947958 (=> (not res!3152276) (not e!4688861))))

(declare-datatypes ((C!43260 0))(
  ( (C!43261 (val!32178 Int)) )
))
(declare-datatypes ((List!74690 0))(
  ( (Nil!74566) (Cons!74566 (h!81014 C!43260) (t!390433 List!74690)) )
))
(declare-fun testedP!447 () List!74690)

(declare-datatypes ((Regex!21461 0))(
  ( (ElementMatch!21461 (c!1459914 C!43260)) (Concat!30460 (regOne!43434 Regex!21461) (regTwo!43434 Regex!21461)) (EmptyExpr!21461) (Star!21461 (reg!21790 Regex!21461)) (EmptyLang!21461) (Union!21461 (regOne!43435 Regex!21461) (regTwo!43435 Regex!21461)) )
))
(declare-fun r!24602 () Regex!21461)

(declare-fun input!7927 () List!74690)

(declare-fun lt!2698975 () Int)

(declare-fun lt!2698977 () Int)

(declare-fun lt!2698974 () List!74690)

(declare-fun isEmpty!42865 (List!74690) Bool)

(declare-datatypes ((tuple2!70584 0))(
  ( (tuple2!70585 (_1!38595 List!74690) (_2!38595 List!74690)) )
))
(declare-fun findLongestMatchInner!2242 (Regex!21461 List!74690 Int List!74690 List!74690 Int) tuple2!70584)

(assert (=> b!7947958 (= res!3152276 (not (isEmpty!42865 (_1!38595 (findLongestMatchInner!2242 r!24602 testedP!447 lt!2698977 lt!2698974 input!7927 lt!2698975)))))))

(declare-fun size!43397 (List!74690) Int)

(assert (=> b!7947958 (= lt!2698975 (size!43397 input!7927))))

(declare-fun getSuffix!3764 (List!74690 List!74690) List!74690)

(assert (=> b!7947958 (= lt!2698974 (getSuffix!3764 input!7927 testedP!447))))

(assert (=> b!7947958 (= lt!2698977 (size!43397 testedP!447))))

(declare-fun b!7947959 () Bool)

(declare-fun e!4688863 () Bool)

(declare-fun tp!2364673 () Bool)

(declare-fun tp!2364676 () Bool)

(assert (=> b!7947959 (= e!4688863 (and tp!2364673 tp!2364676))))

(declare-fun res!3152275 () Bool)

(assert (=> start!750032 (=> (not res!3152275) (not e!4688858))))

(declare-fun baseR!116 () Regex!21461)

(declare-fun validRegex!11765 (Regex!21461) Bool)

(assert (=> start!750032 (= res!3152275 (validRegex!11765 baseR!116))))

(assert (=> start!750032 e!4688858))

(assert (=> start!750032 e!4688860))

(assert (=> start!750032 e!4688859))

(declare-fun e!4688857 () Bool)

(assert (=> start!750032 e!4688857))

(assert (=> start!750032 e!4688863))

(declare-fun b!7947960 () Bool)

(declare-fun tp!2364677 () Bool)

(assert (=> b!7947960 (= e!4688860 tp!2364677)))

(declare-fun b!7947961 () Bool)

(declare-fun res!3152273 () Bool)

(assert (=> b!7947961 (=> (not res!3152273) (not e!4688861))))

(assert (=> b!7947961 (= res!3152273 (not (= testedP!447 input!7927)))))

(declare-fun b!7947962 () Bool)

(declare-fun tp!2364669 () Bool)

(assert (=> b!7947962 (= e!4688857 (and tp_is_empty!53465 tp!2364669))))

(declare-fun b!7947963 () Bool)

(declare-fun res!3152272 () Bool)

(assert (=> b!7947963 (=> (not res!3152272) (not e!4688858))))

(declare-fun isPrefix!6561 (List!74690 List!74690) Bool)

(assert (=> b!7947963 (= res!3152272 (isPrefix!6561 testedP!447 input!7927))))

(declare-fun b!7947964 () Bool)

(declare-fun tp!2364670 () Bool)

(declare-fun tp!2364672 () Bool)

(assert (=> b!7947964 (= e!4688860 (and tp!2364670 tp!2364672))))

(declare-fun b!7947965 () Bool)

(declare-fun res!3152274 () Bool)

(assert (=> b!7947965 (=> (not res!3152274) (not e!4688858))))

(declare-fun derivative!647 (Regex!21461 List!74690) Regex!21461)

(assert (=> b!7947965 (= res!3152274 (= (derivative!647 baseR!116 testedP!447) r!24602))))

(declare-fun b!7947966 () Bool)

(declare-datatypes ((Unit!169778 0))(
  ( (Unit!169779) )
))
(declare-fun e!4688862 () Unit!169778)

(declare-fun Unit!169780 () Unit!169778)

(assert (=> b!7947966 (= e!4688862 Unit!169780)))

(declare-fun lt!2698976 () Unit!169778)

(declare-fun lemmaIsPrefixRefl!4029 (List!74690 List!74690) Unit!169778)

(assert (=> b!7947966 (= lt!2698976 (lemmaIsPrefixRefl!4029 input!7927 input!7927))))

(assert (=> b!7947966 (isPrefix!6561 input!7927 input!7927)))

(declare-fun lt!2698978 () Unit!169778)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1609 (List!74690 List!74690 List!74690) Unit!169778)

(assert (=> b!7947966 (= lt!2698978 (lemmaIsPrefixSameLengthThenSameList!1609 input!7927 testedP!447 input!7927))))

(assert (=> b!7947966 false))

(declare-fun b!7947967 () Bool)

(declare-fun Unit!169781 () Unit!169778)

(assert (=> b!7947967 (= e!4688862 Unit!169781)))

(declare-fun b!7947968 () Bool)

(declare-fun tp!2364671 () Bool)

(declare-fun tp!2364667 () Bool)

(assert (=> b!7947968 (= e!4688863 (and tp!2364671 tp!2364667))))

(declare-fun b!7947969 () Bool)

(assert (=> b!7947969 (= e!4688860 tp_is_empty!53465)))

(declare-fun b!7947970 () Bool)

(declare-fun tp!2364678 () Bool)

(assert (=> b!7947970 (= e!4688863 tp!2364678)))

(declare-fun b!7947971 () Bool)

(assert (=> b!7947971 (= e!4688863 tp_is_empty!53465)))

(declare-fun b!7947972 () Bool)

(assert (=> b!7947972 (= e!4688861 (not (or (>= lt!2698977 lt!2698975) (not (= lt!2698974 Nil!74566)))))))

(declare-fun lt!2698973 () Unit!169778)

(assert (=> b!7947972 (= lt!2698973 e!4688862)))

(declare-fun c!1459913 () Bool)

(assert (=> b!7947972 (= c!1459913 (= lt!2698977 lt!2698975))))

(assert (=> b!7947972 (<= lt!2698977 lt!2698975)))

(declare-fun lt!2698979 () Unit!169778)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1078 (List!74690 List!74690) Unit!169778)

(assert (=> b!7947972 (= lt!2698979 (lemmaIsPrefixThenSmallerEqSize!1078 testedP!447 input!7927))))

(assert (= (and start!750032 res!3152275) b!7947963))

(assert (= (and b!7947963 res!3152272) b!7947965))

(assert (= (and b!7947965 res!3152274) b!7947958))

(assert (= (and b!7947958 res!3152276) b!7947961))

(assert (= (and b!7947961 res!3152273) b!7947972))

(assert (= (and b!7947972 c!1459913) b!7947966))

(assert (= (and b!7947972 (not c!1459913)) b!7947967))

(get-info :version)

(assert (= (and start!750032 ((_ is ElementMatch!21461) baseR!116)) b!7947969))

(assert (= (and start!750032 ((_ is Concat!30460) baseR!116)) b!7947964))

(assert (= (and start!750032 ((_ is Star!21461) baseR!116)) b!7947960))

(assert (= (and start!750032 ((_ is Union!21461) baseR!116)) b!7947957))

(assert (= (and start!750032 ((_ is Cons!74566) testedP!447)) b!7947956))

(assert (= (and start!750032 ((_ is Cons!74566) input!7927)) b!7947962))

(assert (= (and start!750032 ((_ is ElementMatch!21461) r!24602)) b!7947971))

(assert (= (and start!750032 ((_ is Concat!30460) r!24602)) b!7947968))

(assert (= (and start!750032 ((_ is Star!21461) r!24602)) b!7947970))

(assert (= (and start!750032 ((_ is Union!21461) r!24602)) b!7947959))

(declare-fun m!8333326 () Bool)

(assert (=> b!7947972 m!8333326))

(declare-fun m!8333328 () Bool)

(assert (=> b!7947965 m!8333328))

(declare-fun m!8333330 () Bool)

(assert (=> b!7947963 m!8333330))

(declare-fun m!8333332 () Bool)

(assert (=> b!7947966 m!8333332))

(declare-fun m!8333334 () Bool)

(assert (=> b!7947966 m!8333334))

(declare-fun m!8333336 () Bool)

(assert (=> b!7947966 m!8333336))

(declare-fun m!8333338 () Bool)

(assert (=> start!750032 m!8333338))

(declare-fun m!8333340 () Bool)

(assert (=> b!7947958 m!8333340))

(declare-fun m!8333342 () Bool)

(assert (=> b!7947958 m!8333342))

(declare-fun m!8333344 () Bool)

(assert (=> b!7947958 m!8333344))

(declare-fun m!8333346 () Bool)

(assert (=> b!7947958 m!8333346))

(declare-fun m!8333348 () Bool)

(assert (=> b!7947958 m!8333348))

(check-sat (not b!7947958) (not b!7947962) tp_is_empty!53465 (not b!7947968) (not b!7947970) (not b!7947960) (not b!7947963) (not b!7947964) (not b!7947966) (not b!7947965) (not start!750032) (not b!7947959) (not b!7947956) (not b!7947957) (not b!7947972))
(check-sat)
(get-model)

(declare-fun d!2375587 () Bool)

(declare-fun e!4688883 () Bool)

(assert (=> d!2375587 e!4688883))

(declare-fun res!3152298 () Bool)

(assert (=> d!2375587 (=> res!3152298 e!4688883)))

(declare-fun lt!2698987 () Bool)

(assert (=> d!2375587 (= res!3152298 (not lt!2698987))))

(declare-fun e!4688882 () Bool)

(assert (=> d!2375587 (= lt!2698987 e!4688882)))

(declare-fun res!3152300 () Bool)

(assert (=> d!2375587 (=> res!3152300 e!4688882)))

(assert (=> d!2375587 (= res!3152300 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375587 (= (isPrefix!6561 testedP!447 input!7927) lt!2698987)))

(declare-fun b!7948000 () Bool)

(assert (=> b!7948000 (= e!4688883 (>= (size!43397 input!7927) (size!43397 testedP!447)))))

(declare-fun b!7947999 () Bool)

(declare-fun e!4688881 () Bool)

(declare-fun tail!15756 (List!74690) List!74690)

(assert (=> b!7947999 (= e!4688881 (isPrefix!6561 (tail!15756 testedP!447) (tail!15756 input!7927)))))

(declare-fun b!7947997 () Bool)

(assert (=> b!7947997 (= e!4688882 e!4688881)))

(declare-fun res!3152299 () Bool)

(assert (=> b!7947997 (=> (not res!3152299) (not e!4688881))))

(assert (=> b!7947997 (= res!3152299 (not ((_ is Nil!74566) input!7927)))))

(declare-fun b!7947998 () Bool)

(declare-fun res!3152297 () Bool)

(assert (=> b!7947998 (=> (not res!3152297) (not e!4688881))))

(declare-fun head!16213 (List!74690) C!43260)

(assert (=> b!7947998 (= res!3152297 (= (head!16213 testedP!447) (head!16213 input!7927)))))

(assert (= (and d!2375587 (not res!3152300)) b!7947997))

(assert (= (and b!7947997 res!3152299) b!7947998))

(assert (= (and b!7947998 res!3152297) b!7947999))

(assert (= (and d!2375587 (not res!3152298)) b!7948000))

(assert (=> b!7948000 m!8333344))

(assert (=> b!7948000 m!8333342))

(declare-fun m!8333362 () Bool)

(assert (=> b!7947999 m!8333362))

(declare-fun m!8333364 () Bool)

(assert (=> b!7947999 m!8333364))

(assert (=> b!7947999 m!8333362))

(assert (=> b!7947999 m!8333364))

(declare-fun m!8333366 () Bool)

(assert (=> b!7947999 m!8333366))

(declare-fun m!8333368 () Bool)

(assert (=> b!7947998 m!8333368))

(declare-fun m!8333370 () Bool)

(assert (=> b!7947998 m!8333370))

(assert (=> b!7947963 d!2375587))

(declare-fun d!2375597 () Bool)

(declare-fun lt!2698995 () Int)

(assert (=> d!2375597 (>= lt!2698995 0)))

(declare-fun e!4688891 () Int)

(assert (=> d!2375597 (= lt!2698995 e!4688891)))

(declare-fun c!1459924 () Bool)

(assert (=> d!2375597 (= c!1459924 ((_ is Nil!74566) input!7927))))

(assert (=> d!2375597 (= (size!43397 input!7927) lt!2698995)))

(declare-fun b!7948015 () Bool)

(assert (=> b!7948015 (= e!4688891 0)))

(declare-fun b!7948016 () Bool)

(assert (=> b!7948016 (= e!4688891 (+ 1 (size!43397 (t!390433 input!7927))))))

(assert (= (and d!2375597 c!1459924) b!7948015))

(assert (= (and d!2375597 (not c!1459924)) b!7948016))

(declare-fun m!8333378 () Bool)

(assert (=> b!7948016 m!8333378))

(assert (=> b!7947958 d!2375597))

(declare-fun b!7948180 () Bool)

(declare-fun e!4688982 () tuple2!70584)

(declare-fun e!4688976 () tuple2!70584)

(assert (=> b!7948180 (= e!4688982 e!4688976)))

(declare-fun lt!2699171 () tuple2!70584)

(declare-fun call!736710 () tuple2!70584)

(assert (=> b!7948180 (= lt!2699171 call!736710)))

(declare-fun c!1459964 () Bool)

(assert (=> b!7948180 (= c!1459964 (isEmpty!42865 (_1!38595 lt!2699171)))))

(declare-fun bm!736701 () Bool)

(declare-fun call!736712 () C!43260)

(assert (=> bm!736701 (= call!736712 (head!16213 lt!2698974))))

(declare-fun b!7948181 () Bool)

(declare-fun e!4688981 () tuple2!70584)

(declare-fun e!4688978 () tuple2!70584)

(assert (=> b!7948181 (= e!4688981 e!4688978)))

(declare-fun c!1459968 () Bool)

(assert (=> b!7948181 (= c!1459968 (= lt!2698977 lt!2698975))))

(declare-fun d!2375603 () Bool)

(declare-fun e!4688977 () Bool)

(assert (=> d!2375603 e!4688977))

(declare-fun res!3152330 () Bool)

(assert (=> d!2375603 (=> (not res!3152330) (not e!4688977))))

(declare-fun lt!2699170 () tuple2!70584)

(declare-fun ++!18331 (List!74690 List!74690) List!74690)

(assert (=> d!2375603 (= res!3152330 (= (++!18331 (_1!38595 lt!2699170) (_2!38595 lt!2699170)) input!7927))))

(assert (=> d!2375603 (= lt!2699170 e!4688981)))

(declare-fun c!1459967 () Bool)

(declare-fun lostCause!1956 (Regex!21461) Bool)

(assert (=> d!2375603 (= c!1459967 (lostCause!1956 r!24602))))

(declare-fun lt!2699172 () Unit!169778)

(declare-fun Unit!169785 () Unit!169778)

(assert (=> d!2375603 (= lt!2699172 Unit!169785)))

(assert (=> d!2375603 (= (getSuffix!3764 input!7927 testedP!447) lt!2698974)))

(declare-fun lt!2699153 () Unit!169778)

(declare-fun lt!2699175 () Unit!169778)

(assert (=> d!2375603 (= lt!2699153 lt!2699175)))

(declare-fun lt!2699151 () List!74690)

(assert (=> d!2375603 (= lt!2698974 lt!2699151)))

(declare-fun lemmaSamePrefixThenSameSuffix!2972 (List!74690 List!74690 List!74690 List!74690 List!74690) Unit!169778)

(assert (=> d!2375603 (= lt!2699175 (lemmaSamePrefixThenSameSuffix!2972 testedP!447 lt!2698974 testedP!447 lt!2699151 input!7927))))

(assert (=> d!2375603 (= lt!2699151 (getSuffix!3764 input!7927 testedP!447))))

(declare-fun lt!2699164 () Unit!169778)

(declare-fun lt!2699176 () Unit!169778)

(assert (=> d!2375603 (= lt!2699164 lt!2699176)))

(assert (=> d!2375603 (isPrefix!6561 testedP!447 (++!18331 testedP!447 lt!2698974))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3834 (List!74690 List!74690) Unit!169778)

(assert (=> d!2375603 (= lt!2699176 (lemmaConcatTwoListThenFirstIsPrefix!3834 testedP!447 lt!2698974))))

(assert (=> d!2375603 (validRegex!11765 r!24602)))

(assert (=> d!2375603 (= (findLongestMatchInner!2242 r!24602 testedP!447 lt!2698977 lt!2698974 input!7927 lt!2698975) lt!2699170)))

(declare-fun b!7948182 () Bool)

(assert (=> b!7948182 (= e!4688982 call!736710)))

(declare-fun b!7948183 () Bool)

(declare-fun c!1459969 () Bool)

(declare-fun call!736713 () Bool)

(assert (=> b!7948183 (= c!1459969 call!736713)))

(declare-fun lt!2699167 () Unit!169778)

(declare-fun lt!2699156 () Unit!169778)

(assert (=> b!7948183 (= lt!2699167 lt!2699156)))

(assert (=> b!7948183 (= input!7927 testedP!447)))

(declare-fun call!736709 () Unit!169778)

(assert (=> b!7948183 (= lt!2699156 call!736709)))

(declare-fun lt!2699161 () Unit!169778)

(declare-fun lt!2699157 () Unit!169778)

(assert (=> b!7948183 (= lt!2699161 lt!2699157)))

(declare-fun call!736708 () Bool)

(assert (=> b!7948183 call!736708))

(declare-fun call!736707 () Unit!169778)

(assert (=> b!7948183 (= lt!2699157 call!736707)))

(declare-fun e!4688980 () tuple2!70584)

(assert (=> b!7948183 (= e!4688978 e!4688980)))

(declare-fun b!7948184 () Bool)

(declare-fun e!4688975 () Unit!169778)

(declare-fun Unit!169786 () Unit!169778)

(assert (=> b!7948184 (= e!4688975 Unit!169786)))

(declare-fun bm!736702 () Bool)

(assert (=> bm!736702 (= call!736708 (isPrefix!6561 input!7927 input!7927))))

(declare-fun b!7948185 () Bool)

(assert (=> b!7948185 (= e!4688980 (tuple2!70585 Nil!74566 input!7927))))

(declare-fun bm!736703 () Bool)

(assert (=> bm!736703 (= call!736709 (lemmaIsPrefixSameLengthThenSameList!1609 input!7927 testedP!447 input!7927))))

(declare-fun b!7948186 () Bool)

(assert (=> b!7948186 (= e!4688976 (tuple2!70585 testedP!447 lt!2698974))))

(declare-fun bm!736704 () Bool)

(declare-fun nullable!9564 (Regex!21461) Bool)

(assert (=> bm!736704 (= call!736713 (nullable!9564 r!24602))))

(declare-fun b!7948187 () Bool)

(declare-fun e!4688979 () Bool)

(assert (=> b!7948187 (= e!4688977 e!4688979)))

(declare-fun res!3152331 () Bool)

(assert (=> b!7948187 (=> res!3152331 e!4688979)))

(assert (=> b!7948187 (= res!3152331 (isEmpty!42865 (_1!38595 lt!2699170)))))

(declare-fun bm!736705 () Bool)

(declare-fun call!736711 () Regex!21461)

(declare-fun derivativeStep!6491 (Regex!21461 C!43260) Regex!21461)

(assert (=> bm!736705 (= call!736711 (derivativeStep!6491 r!24602 call!736712))))

(declare-fun b!7948188 () Bool)

(assert (=> b!7948188 (= e!4688981 (tuple2!70585 Nil!74566 input!7927))))

(declare-fun b!7948189 () Bool)

(assert (=> b!7948189 (= e!4688979 (>= (size!43397 (_1!38595 lt!2699170)) (size!43397 testedP!447)))))

(declare-fun call!736706 () List!74690)

(declare-fun lt!2699165 () List!74690)

(declare-fun bm!736706 () Bool)

(assert (=> bm!736706 (= call!736710 (findLongestMatchInner!2242 call!736711 lt!2699165 (+ lt!2698977 1) call!736706 input!7927 lt!2698975))))

(declare-fun b!7948190 () Bool)

(assert (=> b!7948190 (= e!4688976 lt!2699171)))

(declare-fun b!7948191 () Bool)

(declare-fun c!1459965 () Bool)

(assert (=> b!7948191 (= c!1459965 call!736713)))

(declare-fun lt!2699162 () Unit!169778)

(declare-fun lt!2699152 () Unit!169778)

(assert (=> b!7948191 (= lt!2699162 lt!2699152)))

(declare-fun lt!2699173 () List!74690)

(declare-fun lt!2699155 () C!43260)

(assert (=> b!7948191 (= (++!18331 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566)) lt!2699173) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3512 (List!74690 C!43260 List!74690 List!74690) Unit!169778)

(assert (=> b!7948191 (= lt!2699152 (lemmaMoveElementToOtherListKeepsConcatEq!3512 testedP!447 lt!2699155 lt!2699173 input!7927))))

(assert (=> b!7948191 (= lt!2699173 (tail!15756 lt!2698974))))

(assert (=> b!7948191 (= lt!2699155 (head!16213 lt!2698974))))

(declare-fun lt!2699160 () Unit!169778)

(declare-fun lt!2699169 () Unit!169778)

(assert (=> b!7948191 (= lt!2699160 lt!2699169)))

(assert (=> b!7948191 (isPrefix!6561 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1290 (List!74690 List!74690) Unit!169778)

(assert (=> b!7948191 (= lt!2699169 (lemmaAddHeadSuffixToPrefixStillPrefix!1290 testedP!447 input!7927))))

(declare-fun lt!2699163 () Unit!169778)

(declare-fun lt!2699154 () Unit!169778)

(assert (=> b!7948191 (= lt!2699163 lt!2699154)))

(assert (=> b!7948191 (= lt!2699154 (lemmaAddHeadSuffixToPrefixStillPrefix!1290 testedP!447 input!7927))))

(assert (=> b!7948191 (= lt!2699165 (++!18331 testedP!447 (Cons!74566 (head!16213 lt!2698974) Nil!74566)))))

(declare-fun lt!2699168 () Unit!169778)

(assert (=> b!7948191 (= lt!2699168 e!4688975)))

(declare-fun c!1459966 () Bool)

(assert (=> b!7948191 (= c!1459966 (= (size!43397 testedP!447) (size!43397 input!7927)))))

(declare-fun lt!2699159 () Unit!169778)

(declare-fun lt!2699158 () Unit!169778)

(assert (=> b!7948191 (= lt!2699159 lt!2699158)))

(assert (=> b!7948191 (<= (size!43397 testedP!447) (size!43397 input!7927))))

(assert (=> b!7948191 (= lt!2699158 (lemmaIsPrefixThenSmallerEqSize!1078 testedP!447 input!7927))))

(assert (=> b!7948191 (= e!4688978 e!4688982)))

(declare-fun bm!736707 () Bool)

(assert (=> bm!736707 (= call!736707 (lemmaIsPrefixRefl!4029 input!7927 input!7927))))

(declare-fun bm!736708 () Bool)

(assert (=> bm!736708 (= call!736706 (tail!15756 lt!2698974))))

(declare-fun b!7948192 () Bool)

(assert (=> b!7948192 (= e!4688980 (tuple2!70585 testedP!447 Nil!74566))))

(declare-fun b!7948193 () Bool)

(declare-fun Unit!169787 () Unit!169778)

(assert (=> b!7948193 (= e!4688975 Unit!169787)))

(declare-fun lt!2699149 () Unit!169778)

(assert (=> b!7948193 (= lt!2699149 call!736707)))

(assert (=> b!7948193 call!736708))

(declare-fun lt!2699166 () Unit!169778)

(assert (=> b!7948193 (= lt!2699166 lt!2699149)))

(declare-fun lt!2699174 () Unit!169778)

(assert (=> b!7948193 (= lt!2699174 call!736709)))

(assert (=> b!7948193 (= input!7927 testedP!447)))

(declare-fun lt!2699150 () Unit!169778)

(assert (=> b!7948193 (= lt!2699150 lt!2699174)))

(assert (=> b!7948193 false))

(assert (= (and d!2375603 c!1459967) b!7948188))

(assert (= (and d!2375603 (not c!1459967)) b!7948181))

(assert (= (and b!7948181 c!1459968) b!7948183))

(assert (= (and b!7948181 (not c!1459968)) b!7948191))

(assert (= (and b!7948183 c!1459969) b!7948192))

(assert (= (and b!7948183 (not c!1459969)) b!7948185))

(assert (= (and b!7948191 c!1459966) b!7948193))

(assert (= (and b!7948191 (not c!1459966)) b!7948184))

(assert (= (and b!7948191 c!1459965) b!7948180))

(assert (= (and b!7948191 (not c!1459965)) b!7948182))

(assert (= (and b!7948180 c!1459964) b!7948186))

(assert (= (and b!7948180 (not c!1459964)) b!7948190))

(assert (= (or b!7948180 b!7948182) bm!736701))

(assert (= (or b!7948180 b!7948182) bm!736708))

(assert (= (or b!7948180 b!7948182) bm!736705))

(assert (= (or b!7948180 b!7948182) bm!736706))

(assert (= (or b!7948183 b!7948191) bm!736704))

(assert (= (or b!7948183 b!7948193) bm!736703))

(assert (= (or b!7948183 b!7948193) bm!736707))

(assert (= (or b!7948183 b!7948193) bm!736702))

(assert (= (and d!2375603 res!3152330) b!7948187))

(assert (= (and b!7948187 (not res!3152331)) b!7948189))

(declare-fun m!8333446 () Bool)

(assert (=> b!7948187 m!8333446))

(declare-fun m!8333448 () Bool)

(assert (=> bm!736705 m!8333448))

(assert (=> bm!736707 m!8333332))

(assert (=> bm!736702 m!8333334))

(assert (=> b!7948191 m!8333326))

(declare-fun m!8333450 () Bool)

(assert (=> b!7948191 m!8333450))

(declare-fun m!8333452 () Bool)

(assert (=> b!7948191 m!8333452))

(declare-fun m!8333454 () Bool)

(assert (=> b!7948191 m!8333454))

(declare-fun m!8333456 () Bool)

(assert (=> b!7948191 m!8333456))

(assert (=> b!7948191 m!8333344))

(declare-fun m!8333458 () Bool)

(assert (=> b!7948191 m!8333458))

(assert (=> b!7948191 m!8333342))

(assert (=> b!7948191 m!8333348))

(declare-fun m!8333460 () Bool)

(assert (=> b!7948191 m!8333460))

(declare-fun m!8333462 () Bool)

(assert (=> b!7948191 m!8333462))

(declare-fun m!8333464 () Bool)

(assert (=> b!7948191 m!8333464))

(assert (=> b!7948191 m!8333456))

(declare-fun m!8333466 () Bool)

(assert (=> b!7948191 m!8333466))

(assert (=> b!7948191 m!8333462))

(assert (=> b!7948191 m!8333348))

(declare-fun m!8333468 () Bool)

(assert (=> b!7948191 m!8333468))

(assert (=> bm!736701 m!8333458))

(declare-fun m!8333470 () Bool)

(assert (=> d!2375603 m!8333470))

(declare-fun m!8333472 () Bool)

(assert (=> d!2375603 m!8333472))

(assert (=> d!2375603 m!8333348))

(declare-fun m!8333474 () Bool)

(assert (=> d!2375603 m!8333474))

(declare-fun m!8333476 () Bool)

(assert (=> d!2375603 m!8333476))

(declare-fun m!8333478 () Bool)

(assert (=> d!2375603 m!8333478))

(declare-fun m!8333480 () Bool)

(assert (=> d!2375603 m!8333480))

(assert (=> d!2375603 m!8333476))

(declare-fun m!8333482 () Bool)

(assert (=> d!2375603 m!8333482))

(declare-fun m!8333484 () Bool)

(assert (=> b!7948189 m!8333484))

(assert (=> b!7948189 m!8333342))

(declare-fun m!8333486 () Bool)

(assert (=> bm!736706 m!8333486))

(assert (=> bm!736708 m!8333468))

(assert (=> bm!736703 m!8333336))

(declare-fun m!8333488 () Bool)

(assert (=> bm!736704 m!8333488))

(declare-fun m!8333490 () Bool)

(assert (=> b!7948180 m!8333490))

(assert (=> b!7947958 d!2375603))

(declare-fun d!2375617 () Bool)

(assert (=> d!2375617 (= (isEmpty!42865 (_1!38595 (findLongestMatchInner!2242 r!24602 testedP!447 lt!2698977 lt!2698974 input!7927 lt!2698975))) ((_ is Nil!74566) (_1!38595 (findLongestMatchInner!2242 r!24602 testedP!447 lt!2698977 lt!2698974 input!7927 lt!2698975))))))

(assert (=> b!7947958 d!2375617))

(declare-fun d!2375619 () Bool)

(declare-fun lt!2699179 () List!74690)

(assert (=> d!2375619 (= (++!18331 testedP!447 lt!2699179) input!7927)))

(declare-fun e!4688985 () List!74690)

(assert (=> d!2375619 (= lt!2699179 e!4688985)))

(declare-fun c!1459972 () Bool)

(assert (=> d!2375619 (= c!1459972 ((_ is Cons!74566) testedP!447))))

(assert (=> d!2375619 (>= (size!43397 input!7927) (size!43397 testedP!447))))

(assert (=> d!2375619 (= (getSuffix!3764 input!7927 testedP!447) lt!2699179)))

(declare-fun b!7948198 () Bool)

(assert (=> b!7948198 (= e!4688985 (getSuffix!3764 (tail!15756 input!7927) (t!390433 testedP!447)))))

(declare-fun b!7948199 () Bool)

(assert (=> b!7948199 (= e!4688985 input!7927)))

(assert (= (and d!2375619 c!1459972) b!7948198))

(assert (= (and d!2375619 (not c!1459972)) b!7948199))

(declare-fun m!8333492 () Bool)

(assert (=> d!2375619 m!8333492))

(assert (=> d!2375619 m!8333344))

(assert (=> d!2375619 m!8333342))

(assert (=> b!7948198 m!8333364))

(assert (=> b!7948198 m!8333364))

(declare-fun m!8333494 () Bool)

(assert (=> b!7948198 m!8333494))

(assert (=> b!7947958 d!2375619))

(declare-fun d!2375621 () Bool)

(declare-fun lt!2699180 () Int)

(assert (=> d!2375621 (>= lt!2699180 0)))

(declare-fun e!4688986 () Int)

(assert (=> d!2375621 (= lt!2699180 e!4688986)))

(declare-fun c!1459973 () Bool)

(assert (=> d!2375621 (= c!1459973 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375621 (= (size!43397 testedP!447) lt!2699180)))

(declare-fun b!7948200 () Bool)

(assert (=> b!7948200 (= e!4688986 0)))

(declare-fun b!7948201 () Bool)

(assert (=> b!7948201 (= e!4688986 (+ 1 (size!43397 (t!390433 testedP!447))))))

(assert (= (and d!2375621 c!1459973) b!7948200))

(assert (= (and d!2375621 (not c!1459973)) b!7948201))

(declare-fun m!8333496 () Bool)

(assert (=> b!7948201 m!8333496))

(assert (=> b!7947958 d!2375621))

(declare-fun b!7948220 () Bool)

(declare-fun e!4689003 () Bool)

(declare-fun call!736720 () Bool)

(assert (=> b!7948220 (= e!4689003 call!736720)))

(declare-fun b!7948221 () Bool)

(declare-fun res!3152345 () Bool)

(declare-fun e!4689004 () Bool)

(assert (=> b!7948221 (=> res!3152345 e!4689004)))

(assert (=> b!7948221 (= res!3152345 (not ((_ is Concat!30460) baseR!116)))))

(declare-fun e!4689006 () Bool)

(assert (=> b!7948221 (= e!4689006 e!4689004)))

(declare-fun b!7948222 () Bool)

(declare-fun e!4689007 () Bool)

(assert (=> b!7948222 (= e!4689007 e!4689006)))

(declare-fun c!1459979 () Bool)

(assert (=> b!7948222 (= c!1459979 ((_ is Union!21461) baseR!116))))

(declare-fun c!1459978 () Bool)

(declare-fun bm!736715 () Bool)

(declare-fun call!736722 () Bool)

(assert (=> bm!736715 (= call!736722 (validRegex!11765 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))

(declare-fun bm!736716 () Bool)

(assert (=> bm!736716 (= call!736720 call!736722)))

(declare-fun b!7948223 () Bool)

(declare-fun res!3152344 () Bool)

(declare-fun e!4689005 () Bool)

(assert (=> b!7948223 (=> (not res!3152344) (not e!4689005))))

(declare-fun call!736721 () Bool)

(assert (=> b!7948223 (= res!3152344 call!736721)))

(assert (=> b!7948223 (= e!4689006 e!4689005)))

(declare-fun bm!736717 () Bool)

(assert (=> bm!736717 (= call!736721 (validRegex!11765 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))

(declare-fun b!7948224 () Bool)

(declare-fun e!4689001 () Bool)

(assert (=> b!7948224 (= e!4689007 e!4689001)))

(declare-fun res!3152346 () Bool)

(assert (=> b!7948224 (= res!3152346 (not (nullable!9564 (reg!21790 baseR!116))))))

(assert (=> b!7948224 (=> (not res!3152346) (not e!4689001))))

(declare-fun d!2375623 () Bool)

(declare-fun res!3152343 () Bool)

(declare-fun e!4689002 () Bool)

(assert (=> d!2375623 (=> res!3152343 e!4689002)))

(assert (=> d!2375623 (= res!3152343 ((_ is ElementMatch!21461) baseR!116))))

(assert (=> d!2375623 (= (validRegex!11765 baseR!116) e!4689002)))

(declare-fun b!7948225 () Bool)

(assert (=> b!7948225 (= e!4689001 call!736722)))

(declare-fun b!7948226 () Bool)

(assert (=> b!7948226 (= e!4689004 e!4689003)))

(declare-fun res!3152342 () Bool)

(assert (=> b!7948226 (=> (not res!3152342) (not e!4689003))))

(assert (=> b!7948226 (= res!3152342 call!736721)))

(declare-fun b!7948227 () Bool)

(assert (=> b!7948227 (= e!4689002 e!4689007)))

(assert (=> b!7948227 (= c!1459978 ((_ is Star!21461) baseR!116))))

(declare-fun b!7948228 () Bool)

(assert (=> b!7948228 (= e!4689005 call!736720)))

(assert (= (and d!2375623 (not res!3152343)) b!7948227))

(assert (= (and b!7948227 c!1459978) b!7948224))

(assert (= (and b!7948227 (not c!1459978)) b!7948222))

(assert (= (and b!7948224 res!3152346) b!7948225))

(assert (= (and b!7948222 c!1459979) b!7948223))

(assert (= (and b!7948222 (not c!1459979)) b!7948221))

(assert (= (and b!7948223 res!3152344) b!7948228))

(assert (= (and b!7948221 (not res!3152345)) b!7948226))

(assert (= (and b!7948226 res!3152342) b!7948220))

(assert (= (or b!7948228 b!7948220) bm!736716))

(assert (= (or b!7948223 b!7948226) bm!736717))

(assert (= (or b!7948225 bm!736716) bm!736715))

(declare-fun m!8333498 () Bool)

(assert (=> bm!736715 m!8333498))

(declare-fun m!8333500 () Bool)

(assert (=> bm!736717 m!8333500))

(declare-fun m!8333502 () Bool)

(assert (=> b!7948224 m!8333502))

(assert (=> start!750032 d!2375623))

(declare-fun d!2375625 () Bool)

(assert (=> d!2375625 (<= (size!43397 testedP!447) (size!43397 input!7927))))

(declare-fun lt!2699183 () Unit!169778)

(declare-fun choose!59883 (List!74690 List!74690) Unit!169778)

(assert (=> d!2375625 (= lt!2699183 (choose!59883 testedP!447 input!7927))))

(assert (=> d!2375625 (isPrefix!6561 testedP!447 input!7927)))

(assert (=> d!2375625 (= (lemmaIsPrefixThenSmallerEqSize!1078 testedP!447 input!7927) lt!2699183)))

(declare-fun bs!1969476 () Bool)

(assert (= bs!1969476 d!2375625))

(assert (=> bs!1969476 m!8333342))

(assert (=> bs!1969476 m!8333344))

(declare-fun m!8333504 () Bool)

(assert (=> bs!1969476 m!8333504))

(assert (=> bs!1969476 m!8333330))

(assert (=> b!7947972 d!2375625))

(declare-fun d!2375627 () Bool)

(assert (=> d!2375627 (isPrefix!6561 input!7927 input!7927)))

(declare-fun lt!2699186 () Unit!169778)

(declare-fun choose!59884 (List!74690 List!74690) Unit!169778)

(assert (=> d!2375627 (= lt!2699186 (choose!59884 input!7927 input!7927))))

(assert (=> d!2375627 (= (lemmaIsPrefixRefl!4029 input!7927 input!7927) lt!2699186)))

(declare-fun bs!1969477 () Bool)

(assert (= bs!1969477 d!2375627))

(assert (=> bs!1969477 m!8333334))

(declare-fun m!8333506 () Bool)

(assert (=> bs!1969477 m!8333506))

(assert (=> b!7947966 d!2375627))

(declare-fun d!2375629 () Bool)

(declare-fun e!4689010 () Bool)

(assert (=> d!2375629 e!4689010))

(declare-fun res!3152348 () Bool)

(assert (=> d!2375629 (=> res!3152348 e!4689010)))

(declare-fun lt!2699187 () Bool)

(assert (=> d!2375629 (= res!3152348 (not lt!2699187))))

(declare-fun e!4689009 () Bool)

(assert (=> d!2375629 (= lt!2699187 e!4689009)))

(declare-fun res!3152350 () Bool)

(assert (=> d!2375629 (=> res!3152350 e!4689009)))

(assert (=> d!2375629 (= res!3152350 ((_ is Nil!74566) input!7927))))

(assert (=> d!2375629 (= (isPrefix!6561 input!7927 input!7927) lt!2699187)))

(declare-fun b!7948232 () Bool)

(assert (=> b!7948232 (= e!4689010 (>= (size!43397 input!7927) (size!43397 input!7927)))))

(declare-fun b!7948231 () Bool)

(declare-fun e!4689008 () Bool)

(assert (=> b!7948231 (= e!4689008 (isPrefix!6561 (tail!15756 input!7927) (tail!15756 input!7927)))))

(declare-fun b!7948229 () Bool)

(assert (=> b!7948229 (= e!4689009 e!4689008)))

(declare-fun res!3152349 () Bool)

(assert (=> b!7948229 (=> (not res!3152349) (not e!4689008))))

(assert (=> b!7948229 (= res!3152349 (not ((_ is Nil!74566) input!7927)))))

(declare-fun b!7948230 () Bool)

(declare-fun res!3152347 () Bool)

(assert (=> b!7948230 (=> (not res!3152347) (not e!4689008))))

(assert (=> b!7948230 (= res!3152347 (= (head!16213 input!7927) (head!16213 input!7927)))))

(assert (= (and d!2375629 (not res!3152350)) b!7948229))

(assert (= (and b!7948229 res!3152349) b!7948230))

(assert (= (and b!7948230 res!3152347) b!7948231))

(assert (= (and d!2375629 (not res!3152348)) b!7948232))

(assert (=> b!7948232 m!8333344))

(assert (=> b!7948232 m!8333344))

(assert (=> b!7948231 m!8333364))

(assert (=> b!7948231 m!8333364))

(assert (=> b!7948231 m!8333364))

(assert (=> b!7948231 m!8333364))

(declare-fun m!8333508 () Bool)

(assert (=> b!7948231 m!8333508))

(assert (=> b!7948230 m!8333370))

(assert (=> b!7948230 m!8333370))

(assert (=> b!7947966 d!2375629))

(declare-fun d!2375631 () Bool)

(assert (=> d!2375631 (= input!7927 testedP!447)))

(declare-fun lt!2699190 () Unit!169778)

(declare-fun choose!59885 (List!74690 List!74690 List!74690) Unit!169778)

(assert (=> d!2375631 (= lt!2699190 (choose!59885 input!7927 testedP!447 input!7927))))

(assert (=> d!2375631 (isPrefix!6561 input!7927 input!7927)))

(assert (=> d!2375631 (= (lemmaIsPrefixSameLengthThenSameList!1609 input!7927 testedP!447 input!7927) lt!2699190)))

(declare-fun bs!1969478 () Bool)

(assert (= bs!1969478 d!2375631))

(declare-fun m!8333510 () Bool)

(assert (=> bs!1969478 m!8333510))

(assert (=> bs!1969478 m!8333334))

(assert (=> b!7947966 d!2375631))

(declare-fun d!2375633 () Bool)

(declare-fun lt!2699193 () Regex!21461)

(assert (=> d!2375633 (validRegex!11765 lt!2699193)))

(declare-fun e!4689013 () Regex!21461)

(assert (=> d!2375633 (= lt!2699193 e!4689013)))

(declare-fun c!1459982 () Bool)

(assert (=> d!2375633 (= c!1459982 ((_ is Cons!74566) testedP!447))))

(assert (=> d!2375633 (validRegex!11765 baseR!116)))

(assert (=> d!2375633 (= (derivative!647 baseR!116 testedP!447) lt!2699193)))

(declare-fun b!7948237 () Bool)

(assert (=> b!7948237 (= e!4689013 (derivative!647 (derivativeStep!6491 baseR!116 (h!81014 testedP!447)) (t!390433 testedP!447)))))

(declare-fun b!7948238 () Bool)

(assert (=> b!7948238 (= e!4689013 baseR!116)))

(assert (= (and d!2375633 c!1459982) b!7948237))

(assert (= (and d!2375633 (not c!1459982)) b!7948238))

(declare-fun m!8333512 () Bool)

(assert (=> d!2375633 m!8333512))

(assert (=> d!2375633 m!8333338))

(declare-fun m!8333514 () Bool)

(assert (=> b!7948237 m!8333514))

(assert (=> b!7948237 m!8333514))

(declare-fun m!8333516 () Bool)

(assert (=> b!7948237 m!8333516))

(assert (=> b!7947965 d!2375633))

(declare-fun b!7948250 () Bool)

(declare-fun e!4689016 () Bool)

(declare-fun tp!2364753 () Bool)

(declare-fun tp!2364757 () Bool)

(assert (=> b!7948250 (= e!4689016 (and tp!2364753 tp!2364757))))

(declare-fun b!7948251 () Bool)

(declare-fun tp!2364755 () Bool)

(assert (=> b!7948251 (= e!4689016 tp!2364755)))

(declare-fun b!7948252 () Bool)

(declare-fun tp!2364756 () Bool)

(declare-fun tp!2364754 () Bool)

(assert (=> b!7948252 (= e!4689016 (and tp!2364756 tp!2364754))))

(assert (=> b!7947959 (= tp!2364673 e!4689016)))

(declare-fun b!7948249 () Bool)

(assert (=> b!7948249 (= e!4689016 tp_is_empty!53465)))

(assert (= (and b!7947959 ((_ is ElementMatch!21461) (regOne!43435 r!24602))) b!7948249))

(assert (= (and b!7947959 ((_ is Concat!30460) (regOne!43435 r!24602))) b!7948250))

(assert (= (and b!7947959 ((_ is Star!21461) (regOne!43435 r!24602))) b!7948251))

(assert (= (and b!7947959 ((_ is Union!21461) (regOne!43435 r!24602))) b!7948252))

(declare-fun b!7948254 () Bool)

(declare-fun e!4689017 () Bool)

(declare-fun tp!2364758 () Bool)

(declare-fun tp!2364762 () Bool)

(assert (=> b!7948254 (= e!4689017 (and tp!2364758 tp!2364762))))

(declare-fun b!7948255 () Bool)

(declare-fun tp!2364760 () Bool)

(assert (=> b!7948255 (= e!4689017 tp!2364760)))

(declare-fun b!7948256 () Bool)

(declare-fun tp!2364761 () Bool)

(declare-fun tp!2364759 () Bool)

(assert (=> b!7948256 (= e!4689017 (and tp!2364761 tp!2364759))))

(assert (=> b!7947959 (= tp!2364676 e!4689017)))

(declare-fun b!7948253 () Bool)

(assert (=> b!7948253 (= e!4689017 tp_is_empty!53465)))

(assert (= (and b!7947959 ((_ is ElementMatch!21461) (regTwo!43435 r!24602))) b!7948253))

(assert (= (and b!7947959 ((_ is Concat!30460) (regTwo!43435 r!24602))) b!7948254))

(assert (= (and b!7947959 ((_ is Star!21461) (regTwo!43435 r!24602))) b!7948255))

(assert (= (and b!7947959 ((_ is Union!21461) (regTwo!43435 r!24602))) b!7948256))

(declare-fun b!7948258 () Bool)

(declare-fun e!4689018 () Bool)

(declare-fun tp!2364763 () Bool)

(declare-fun tp!2364767 () Bool)

(assert (=> b!7948258 (= e!4689018 (and tp!2364763 tp!2364767))))

(declare-fun b!7948259 () Bool)

(declare-fun tp!2364765 () Bool)

(assert (=> b!7948259 (= e!4689018 tp!2364765)))

(declare-fun b!7948260 () Bool)

(declare-fun tp!2364766 () Bool)

(declare-fun tp!2364764 () Bool)

(assert (=> b!7948260 (= e!4689018 (and tp!2364766 tp!2364764))))

(assert (=> b!7947970 (= tp!2364678 e!4689018)))

(declare-fun b!7948257 () Bool)

(assert (=> b!7948257 (= e!4689018 tp_is_empty!53465)))

(assert (= (and b!7947970 ((_ is ElementMatch!21461) (reg!21790 r!24602))) b!7948257))

(assert (= (and b!7947970 ((_ is Concat!30460) (reg!21790 r!24602))) b!7948258))

(assert (= (and b!7947970 ((_ is Star!21461) (reg!21790 r!24602))) b!7948259))

(assert (= (and b!7947970 ((_ is Union!21461) (reg!21790 r!24602))) b!7948260))

(declare-fun b!7948262 () Bool)

(declare-fun e!4689019 () Bool)

(declare-fun tp!2364768 () Bool)

(declare-fun tp!2364772 () Bool)

(assert (=> b!7948262 (= e!4689019 (and tp!2364768 tp!2364772))))

(declare-fun b!7948263 () Bool)

(declare-fun tp!2364770 () Bool)

(assert (=> b!7948263 (= e!4689019 tp!2364770)))

(declare-fun b!7948264 () Bool)

(declare-fun tp!2364771 () Bool)

(declare-fun tp!2364769 () Bool)

(assert (=> b!7948264 (= e!4689019 (and tp!2364771 tp!2364769))))

(assert (=> b!7947964 (= tp!2364670 e!4689019)))

(declare-fun b!7948261 () Bool)

(assert (=> b!7948261 (= e!4689019 tp_is_empty!53465)))

(assert (= (and b!7947964 ((_ is ElementMatch!21461) (regOne!43434 baseR!116))) b!7948261))

(assert (= (and b!7947964 ((_ is Concat!30460) (regOne!43434 baseR!116))) b!7948262))

(assert (= (and b!7947964 ((_ is Star!21461) (regOne!43434 baseR!116))) b!7948263))

(assert (= (and b!7947964 ((_ is Union!21461) (regOne!43434 baseR!116))) b!7948264))

(declare-fun b!7948266 () Bool)

(declare-fun e!4689020 () Bool)

(declare-fun tp!2364773 () Bool)

(declare-fun tp!2364777 () Bool)

(assert (=> b!7948266 (= e!4689020 (and tp!2364773 tp!2364777))))

(declare-fun b!7948267 () Bool)

(declare-fun tp!2364775 () Bool)

(assert (=> b!7948267 (= e!4689020 tp!2364775)))

(declare-fun b!7948268 () Bool)

(declare-fun tp!2364776 () Bool)

(declare-fun tp!2364774 () Bool)

(assert (=> b!7948268 (= e!4689020 (and tp!2364776 tp!2364774))))

(assert (=> b!7947964 (= tp!2364672 e!4689020)))

(declare-fun b!7948265 () Bool)

(assert (=> b!7948265 (= e!4689020 tp_is_empty!53465)))

(assert (= (and b!7947964 ((_ is ElementMatch!21461) (regTwo!43434 baseR!116))) b!7948265))

(assert (= (and b!7947964 ((_ is Concat!30460) (regTwo!43434 baseR!116))) b!7948266))

(assert (= (and b!7947964 ((_ is Star!21461) (regTwo!43434 baseR!116))) b!7948267))

(assert (= (and b!7947964 ((_ is Union!21461) (regTwo!43434 baseR!116))) b!7948268))

(declare-fun b!7948270 () Bool)

(declare-fun e!4689021 () Bool)

(declare-fun tp!2364778 () Bool)

(declare-fun tp!2364782 () Bool)

(assert (=> b!7948270 (= e!4689021 (and tp!2364778 tp!2364782))))

(declare-fun b!7948271 () Bool)

(declare-fun tp!2364780 () Bool)

(assert (=> b!7948271 (= e!4689021 tp!2364780)))

(declare-fun b!7948272 () Bool)

(declare-fun tp!2364781 () Bool)

(declare-fun tp!2364779 () Bool)

(assert (=> b!7948272 (= e!4689021 (and tp!2364781 tp!2364779))))

(assert (=> b!7947957 (= tp!2364674 e!4689021)))

(declare-fun b!7948269 () Bool)

(assert (=> b!7948269 (= e!4689021 tp_is_empty!53465)))

(assert (= (and b!7947957 ((_ is ElementMatch!21461) (regOne!43435 baseR!116))) b!7948269))

(assert (= (and b!7947957 ((_ is Concat!30460) (regOne!43435 baseR!116))) b!7948270))

(assert (= (and b!7947957 ((_ is Star!21461) (regOne!43435 baseR!116))) b!7948271))

(assert (= (and b!7947957 ((_ is Union!21461) (regOne!43435 baseR!116))) b!7948272))

(declare-fun b!7948274 () Bool)

(declare-fun e!4689022 () Bool)

(declare-fun tp!2364783 () Bool)

(declare-fun tp!2364787 () Bool)

(assert (=> b!7948274 (= e!4689022 (and tp!2364783 tp!2364787))))

(declare-fun b!7948275 () Bool)

(declare-fun tp!2364785 () Bool)

(assert (=> b!7948275 (= e!4689022 tp!2364785)))

(declare-fun b!7948276 () Bool)

(declare-fun tp!2364786 () Bool)

(declare-fun tp!2364784 () Bool)

(assert (=> b!7948276 (= e!4689022 (and tp!2364786 tp!2364784))))

(assert (=> b!7947957 (= tp!2364668 e!4689022)))

(declare-fun b!7948273 () Bool)

(assert (=> b!7948273 (= e!4689022 tp_is_empty!53465)))

(assert (= (and b!7947957 ((_ is ElementMatch!21461) (regTwo!43435 baseR!116))) b!7948273))

(assert (= (and b!7947957 ((_ is Concat!30460) (regTwo!43435 baseR!116))) b!7948274))

(assert (= (and b!7947957 ((_ is Star!21461) (regTwo!43435 baseR!116))) b!7948275))

(assert (= (and b!7947957 ((_ is Union!21461) (regTwo!43435 baseR!116))) b!7948276))

(declare-fun b!7948278 () Bool)

(declare-fun e!4689023 () Bool)

(declare-fun tp!2364788 () Bool)

(declare-fun tp!2364792 () Bool)

(assert (=> b!7948278 (= e!4689023 (and tp!2364788 tp!2364792))))

(declare-fun b!7948279 () Bool)

(declare-fun tp!2364790 () Bool)

(assert (=> b!7948279 (= e!4689023 tp!2364790)))

(declare-fun b!7948280 () Bool)

(declare-fun tp!2364791 () Bool)

(declare-fun tp!2364789 () Bool)

(assert (=> b!7948280 (= e!4689023 (and tp!2364791 tp!2364789))))

(assert (=> b!7947968 (= tp!2364671 e!4689023)))

(declare-fun b!7948277 () Bool)

(assert (=> b!7948277 (= e!4689023 tp_is_empty!53465)))

(assert (= (and b!7947968 ((_ is ElementMatch!21461) (regOne!43434 r!24602))) b!7948277))

(assert (= (and b!7947968 ((_ is Concat!30460) (regOne!43434 r!24602))) b!7948278))

(assert (= (and b!7947968 ((_ is Star!21461) (regOne!43434 r!24602))) b!7948279))

(assert (= (and b!7947968 ((_ is Union!21461) (regOne!43434 r!24602))) b!7948280))

(declare-fun b!7948282 () Bool)

(declare-fun e!4689024 () Bool)

(declare-fun tp!2364793 () Bool)

(declare-fun tp!2364797 () Bool)

(assert (=> b!7948282 (= e!4689024 (and tp!2364793 tp!2364797))))

(declare-fun b!7948283 () Bool)

(declare-fun tp!2364795 () Bool)

(assert (=> b!7948283 (= e!4689024 tp!2364795)))

(declare-fun b!7948284 () Bool)

(declare-fun tp!2364796 () Bool)

(declare-fun tp!2364794 () Bool)

(assert (=> b!7948284 (= e!4689024 (and tp!2364796 tp!2364794))))

(assert (=> b!7947968 (= tp!2364667 e!4689024)))

(declare-fun b!7948281 () Bool)

(assert (=> b!7948281 (= e!4689024 tp_is_empty!53465)))

(assert (= (and b!7947968 ((_ is ElementMatch!21461) (regTwo!43434 r!24602))) b!7948281))

(assert (= (and b!7947968 ((_ is Concat!30460) (regTwo!43434 r!24602))) b!7948282))

(assert (= (and b!7947968 ((_ is Star!21461) (regTwo!43434 r!24602))) b!7948283))

(assert (= (and b!7947968 ((_ is Union!21461) (regTwo!43434 r!24602))) b!7948284))

(declare-fun b!7948289 () Bool)

(declare-fun e!4689027 () Bool)

(declare-fun tp!2364800 () Bool)

(assert (=> b!7948289 (= e!4689027 (and tp_is_empty!53465 tp!2364800))))

(assert (=> b!7947962 (= tp!2364669 e!4689027)))

(assert (= (and b!7947962 ((_ is Cons!74566) (t!390433 input!7927))) b!7948289))

(declare-fun b!7948290 () Bool)

(declare-fun e!4689028 () Bool)

(declare-fun tp!2364801 () Bool)

(assert (=> b!7948290 (= e!4689028 (and tp_is_empty!53465 tp!2364801))))

(assert (=> b!7947956 (= tp!2364675 e!4689028)))

(assert (= (and b!7947956 ((_ is Cons!74566) (t!390433 testedP!447))) b!7948290))

(declare-fun b!7948292 () Bool)

(declare-fun e!4689029 () Bool)

(declare-fun tp!2364802 () Bool)

(declare-fun tp!2364806 () Bool)

(assert (=> b!7948292 (= e!4689029 (and tp!2364802 tp!2364806))))

(declare-fun b!7948293 () Bool)

(declare-fun tp!2364804 () Bool)

(assert (=> b!7948293 (= e!4689029 tp!2364804)))

(declare-fun b!7948294 () Bool)

(declare-fun tp!2364805 () Bool)

(declare-fun tp!2364803 () Bool)

(assert (=> b!7948294 (= e!4689029 (and tp!2364805 tp!2364803))))

(assert (=> b!7947960 (= tp!2364677 e!4689029)))

(declare-fun b!7948291 () Bool)

(assert (=> b!7948291 (= e!4689029 tp_is_empty!53465)))

(assert (= (and b!7947960 ((_ is ElementMatch!21461) (reg!21790 baseR!116))) b!7948291))

(assert (= (and b!7947960 ((_ is Concat!30460) (reg!21790 baseR!116))) b!7948292))

(assert (= (and b!7947960 ((_ is Star!21461) (reg!21790 baseR!116))) b!7948293))

(assert (= (and b!7947960 ((_ is Union!21461) (reg!21790 baseR!116))) b!7948294))

(check-sat (not b!7948292) (not d!2375627) (not d!2375631) (not b!7948271) (not d!2375633) (not b!7948280) (not b!7948250) (not b!7948230) (not b!7948189) (not b!7948267) (not bm!736706) (not b!7948290) (not b!7948251) (not b!7947999) (not b!7947998) (not b!7948260) (not b!7948187) (not b!7948274) (not bm!736707) (not bm!736703) (not b!7948268) (not bm!736708) (not b!7948000) (not bm!736702) (not b!7948231) (not b!7948258) (not b!7948289) (not b!7948256) (not b!7948266) (not b!7948237) (not b!7948254) (not b!7948279) (not b!7948252) (not b!7948224) (not bm!736717) (not bm!736704) tp_is_empty!53465 (not b!7948293) (not d!2375625) (not b!7948198) (not b!7948263) (not b!7948284) (not b!7948180) (not d!2375603) (not b!7948262) (not b!7948232) (not bm!736705) (not b!7948276) (not b!7948275) (not d!2375619) (not b!7948270) (not b!7948191) (not b!7948283) (not b!7948294) (not bm!736715) (not bm!736701) (not b!7948272) (not b!7948201) (not b!7948278) (not b!7948255) (not b!7948016) (not b!7948259) (not b!7948264) (not b!7948282))
(check-sat)
(get-model)

(assert (=> b!7948191 d!2375597))

(declare-fun b!7948485 () Bool)

(declare-fun e!4689134 () List!74690)

(assert (=> b!7948485 (= e!4689134 (Cons!74566 (h!81014 testedP!447) (++!18331 (t!390433 testedP!447) (Cons!74566 lt!2699155 Nil!74566))))))

(declare-fun d!2375687 () Bool)

(declare-fun e!4689133 () Bool)

(assert (=> d!2375687 e!4689133))

(declare-fun res!3152411 () Bool)

(assert (=> d!2375687 (=> (not res!3152411) (not e!4689133))))

(declare-fun lt!2699258 () List!74690)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15823 (List!74690) (InoxSet C!43260))

(assert (=> d!2375687 (= res!3152411 (= (content!15823 lt!2699258) ((_ map or) (content!15823 testedP!447) (content!15823 (Cons!74566 lt!2699155 Nil!74566)))))))

(assert (=> d!2375687 (= lt!2699258 e!4689134)))

(declare-fun c!1460033 () Bool)

(assert (=> d!2375687 (= c!1460033 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375687 (= (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566)) lt!2699258)))

(declare-fun b!7948486 () Bool)

(declare-fun res!3152412 () Bool)

(assert (=> b!7948486 (=> (not res!3152412) (not e!4689133))))

(assert (=> b!7948486 (= res!3152412 (= (size!43397 lt!2699258) (+ (size!43397 testedP!447) (size!43397 (Cons!74566 lt!2699155 Nil!74566)))))))

(declare-fun b!7948484 () Bool)

(assert (=> b!7948484 (= e!4689134 (Cons!74566 lt!2699155 Nil!74566))))

(declare-fun b!7948487 () Bool)

(assert (=> b!7948487 (= e!4689133 (or (not (= (Cons!74566 lt!2699155 Nil!74566) Nil!74566)) (= lt!2699258 testedP!447)))))

(assert (= (and d!2375687 c!1460033) b!7948484))

(assert (= (and d!2375687 (not c!1460033)) b!7948485))

(assert (= (and d!2375687 res!3152411) b!7948486))

(assert (= (and b!7948486 res!3152412) b!7948487))

(declare-fun m!8333756 () Bool)

(assert (=> b!7948485 m!8333756))

(declare-fun m!8333758 () Bool)

(assert (=> d!2375687 m!8333758))

(declare-fun m!8333760 () Bool)

(assert (=> d!2375687 m!8333760))

(declare-fun m!8333762 () Bool)

(assert (=> d!2375687 m!8333762))

(declare-fun m!8333764 () Bool)

(assert (=> b!7948486 m!8333764))

(assert (=> b!7948486 m!8333342))

(declare-fun m!8333766 () Bool)

(assert (=> b!7948486 m!8333766))

(assert (=> b!7948191 d!2375687))

(declare-fun d!2375721 () Bool)

(assert (=> d!2375721 (= (head!16213 (getSuffix!3764 input!7927 testedP!447)) (h!81014 (getSuffix!3764 input!7927 testedP!447)))))

(assert (=> b!7948191 d!2375721))

(declare-fun b!7948534 () Bool)

(declare-fun e!4689148 () List!74690)

(assert (=> b!7948534 (= e!4689148 (Cons!74566 (h!81014 testedP!447) (++!18331 (t!390433 testedP!447) (Cons!74566 (head!16213 lt!2698974) Nil!74566))))))

(declare-fun d!2375723 () Bool)

(declare-fun e!4689147 () Bool)

(assert (=> d!2375723 e!4689147))

(declare-fun res!3152413 () Bool)

(assert (=> d!2375723 (=> (not res!3152413) (not e!4689147))))

(declare-fun lt!2699259 () List!74690)

(assert (=> d!2375723 (= res!3152413 (= (content!15823 lt!2699259) ((_ map or) (content!15823 testedP!447) (content!15823 (Cons!74566 (head!16213 lt!2698974) Nil!74566)))))))

(assert (=> d!2375723 (= lt!2699259 e!4689148)))

(declare-fun c!1460034 () Bool)

(assert (=> d!2375723 (= c!1460034 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375723 (= (++!18331 testedP!447 (Cons!74566 (head!16213 lt!2698974) Nil!74566)) lt!2699259)))

(declare-fun b!7948536 () Bool)

(declare-fun res!3152414 () Bool)

(assert (=> b!7948536 (=> (not res!3152414) (not e!4689147))))

(assert (=> b!7948536 (= res!3152414 (= (size!43397 lt!2699259) (+ (size!43397 testedP!447) (size!43397 (Cons!74566 (head!16213 lt!2698974) Nil!74566)))))))

(declare-fun b!7948533 () Bool)

(assert (=> b!7948533 (= e!4689148 (Cons!74566 (head!16213 lt!2698974) Nil!74566))))

(declare-fun b!7948538 () Bool)

(assert (=> b!7948538 (= e!4689147 (or (not (= (Cons!74566 (head!16213 lt!2698974) Nil!74566) Nil!74566)) (= lt!2699259 testedP!447)))))

(assert (= (and d!2375723 c!1460034) b!7948533))

(assert (= (and d!2375723 (not c!1460034)) b!7948534))

(assert (= (and d!2375723 res!3152413) b!7948536))

(assert (= (and b!7948536 res!3152414) b!7948538))

(declare-fun m!8333768 () Bool)

(assert (=> b!7948534 m!8333768))

(declare-fun m!8333770 () Bool)

(assert (=> d!2375723 m!8333770))

(assert (=> d!2375723 m!8333760))

(declare-fun m!8333772 () Bool)

(assert (=> d!2375723 m!8333772))

(declare-fun m!8333774 () Bool)

(assert (=> b!7948536 m!8333774))

(assert (=> b!7948536 m!8333342))

(declare-fun m!8333776 () Bool)

(assert (=> b!7948536 m!8333776))

(assert (=> b!7948191 d!2375723))

(declare-fun b!7948566 () Bool)

(declare-fun e!4689157 () List!74690)

(assert (=> b!7948566 (= e!4689157 (Cons!74566 (h!81014 testedP!447) (++!18331 (t!390433 testedP!447) (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566))))))

(declare-fun d!2375725 () Bool)

(declare-fun e!4689156 () Bool)

(assert (=> d!2375725 e!4689156))

(declare-fun res!3152415 () Bool)

(assert (=> d!2375725 (=> (not res!3152415) (not e!4689156))))

(declare-fun lt!2699260 () List!74690)

(assert (=> d!2375725 (= res!3152415 (= (content!15823 lt!2699260) ((_ map or) (content!15823 testedP!447) (content!15823 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)))))))

(assert (=> d!2375725 (= lt!2699260 e!4689157)))

(declare-fun c!1460035 () Bool)

(assert (=> d!2375725 (= c!1460035 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375725 (= (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)) lt!2699260)))

(declare-fun b!7948567 () Bool)

(declare-fun res!3152416 () Bool)

(assert (=> b!7948567 (=> (not res!3152416) (not e!4689156))))

(assert (=> b!7948567 (= res!3152416 (= (size!43397 lt!2699260) (+ (size!43397 testedP!447) (size!43397 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)))))))

(declare-fun b!7948565 () Bool)

(assert (=> b!7948565 (= e!4689157 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566))))

(declare-fun b!7948568 () Bool)

(assert (=> b!7948568 (= e!4689156 (or (not (= (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566) Nil!74566)) (= lt!2699260 testedP!447)))))

(assert (= (and d!2375725 c!1460035) b!7948565))

(assert (= (and d!2375725 (not c!1460035)) b!7948566))

(assert (= (and d!2375725 res!3152415) b!7948567))

(assert (= (and b!7948567 res!3152416) b!7948568))

(declare-fun m!8333778 () Bool)

(assert (=> b!7948566 m!8333778))

(declare-fun m!8333780 () Bool)

(assert (=> d!2375725 m!8333780))

(assert (=> d!2375725 m!8333760))

(declare-fun m!8333782 () Bool)

(assert (=> d!2375725 m!8333782))

(declare-fun m!8333784 () Bool)

(assert (=> b!7948567 m!8333784))

(assert (=> b!7948567 m!8333342))

(declare-fun m!8333786 () Bool)

(assert (=> b!7948567 m!8333786))

(assert (=> b!7948191 d!2375725))

(declare-fun d!2375727 () Bool)

(assert (=> d!2375727 (= (++!18331 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566)) lt!2699173) input!7927)))

(declare-fun lt!2699263 () Unit!169778)

(declare-fun choose!59886 (List!74690 C!43260 List!74690 List!74690) Unit!169778)

(assert (=> d!2375727 (= lt!2699263 (choose!59886 testedP!447 lt!2699155 lt!2699173 input!7927))))

(assert (=> d!2375727 (= (++!18331 testedP!447 (Cons!74566 lt!2699155 lt!2699173)) input!7927)))

(assert (=> d!2375727 (= (lemmaMoveElementToOtherListKeepsConcatEq!3512 testedP!447 lt!2699155 lt!2699173 input!7927) lt!2699263)))

(declare-fun bs!1969488 () Bool)

(assert (= bs!1969488 d!2375727))

(assert (=> bs!1969488 m!8333462))

(assert (=> bs!1969488 m!8333462))

(assert (=> bs!1969488 m!8333464))

(declare-fun m!8333788 () Bool)

(assert (=> bs!1969488 m!8333788))

(declare-fun m!8333790 () Bool)

(assert (=> bs!1969488 m!8333790))

(assert (=> b!7948191 d!2375727))

(declare-fun d!2375729 () Bool)

(declare-fun e!4689185 () Bool)

(assert (=> d!2375729 e!4689185))

(declare-fun res!3152418 () Bool)

(assert (=> d!2375729 (=> res!3152418 e!4689185)))

(declare-fun lt!2699264 () Bool)

(assert (=> d!2375729 (= res!3152418 (not lt!2699264))))

(declare-fun e!4689184 () Bool)

(assert (=> d!2375729 (= lt!2699264 e!4689184)))

(declare-fun res!3152420 () Bool)

(assert (=> d!2375729 (=> res!3152420 e!4689184)))

(assert (=> d!2375729 (= res!3152420 ((_ is Nil!74566) (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566))))))

(assert (=> d!2375729 (= (isPrefix!6561 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)) input!7927) lt!2699264)))

(declare-fun b!7948672 () Bool)

(assert (=> b!7948672 (= e!4689185 (>= (size!43397 input!7927) (size!43397 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)))))))

(declare-fun b!7948671 () Bool)

(declare-fun e!4689183 () Bool)

(assert (=> b!7948671 (= e!4689183 (isPrefix!6561 (tail!15756 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566))) (tail!15756 input!7927)))))

(declare-fun b!7948669 () Bool)

(assert (=> b!7948669 (= e!4689184 e!4689183)))

(declare-fun res!3152419 () Bool)

(assert (=> b!7948669 (=> (not res!3152419) (not e!4689183))))

(assert (=> b!7948669 (= res!3152419 (not ((_ is Nil!74566) input!7927)))))

(declare-fun b!7948670 () Bool)

(declare-fun res!3152417 () Bool)

(assert (=> b!7948670 (=> (not res!3152417) (not e!4689183))))

(assert (=> b!7948670 (= res!3152417 (= (head!16213 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566))) (head!16213 input!7927)))))

(assert (= (and d!2375729 (not res!3152420)) b!7948669))

(assert (= (and b!7948669 res!3152419) b!7948670))

(assert (= (and b!7948670 res!3152417) b!7948671))

(assert (= (and d!2375729 (not res!3152418)) b!7948672))

(assert (=> b!7948672 m!8333344))

(assert (=> b!7948672 m!8333456))

(declare-fun m!8333792 () Bool)

(assert (=> b!7948672 m!8333792))

(assert (=> b!7948671 m!8333456))

(declare-fun m!8333794 () Bool)

(assert (=> b!7948671 m!8333794))

(assert (=> b!7948671 m!8333364))

(assert (=> b!7948671 m!8333794))

(assert (=> b!7948671 m!8333364))

(declare-fun m!8333796 () Bool)

(assert (=> b!7948671 m!8333796))

(assert (=> b!7948670 m!8333456))

(declare-fun m!8333798 () Bool)

(assert (=> b!7948670 m!8333798))

(assert (=> b!7948670 m!8333370))

(assert (=> b!7948191 d!2375729))

(declare-fun d!2375731 () Bool)

(assert (=> d!2375731 (= (head!16213 lt!2698974) (h!81014 lt!2698974))))

(assert (=> b!7948191 d!2375731))

(assert (=> b!7948191 d!2375619))

(assert (=> b!7948191 d!2375625))

(declare-fun b!7948674 () Bool)

(declare-fun e!4689187 () List!74690)

(assert (=> b!7948674 (= e!4689187 (Cons!74566 (h!81014 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566))) (++!18331 (t!390433 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566))) lt!2699173)))))

(declare-fun d!2375733 () Bool)

(declare-fun e!4689186 () Bool)

(assert (=> d!2375733 e!4689186))

(declare-fun res!3152421 () Bool)

(assert (=> d!2375733 (=> (not res!3152421) (not e!4689186))))

(declare-fun lt!2699265 () List!74690)

(assert (=> d!2375733 (= res!3152421 (= (content!15823 lt!2699265) ((_ map or) (content!15823 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566))) (content!15823 lt!2699173))))))

(assert (=> d!2375733 (= lt!2699265 e!4689187)))

(declare-fun c!1460036 () Bool)

(assert (=> d!2375733 (= c!1460036 ((_ is Nil!74566) (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566))))))

(assert (=> d!2375733 (= (++!18331 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566)) lt!2699173) lt!2699265)))

(declare-fun b!7948675 () Bool)

(declare-fun res!3152422 () Bool)

(assert (=> b!7948675 (=> (not res!3152422) (not e!4689186))))

(assert (=> b!7948675 (= res!3152422 (= (size!43397 lt!2699265) (+ (size!43397 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566))) (size!43397 lt!2699173))))))

(declare-fun b!7948673 () Bool)

(assert (=> b!7948673 (= e!4689187 lt!2699173)))

(declare-fun b!7948676 () Bool)

(assert (=> b!7948676 (= e!4689186 (or (not (= lt!2699173 Nil!74566)) (= lt!2699265 (++!18331 testedP!447 (Cons!74566 lt!2699155 Nil!74566)))))))

(assert (= (and d!2375733 c!1460036) b!7948673))

(assert (= (and d!2375733 (not c!1460036)) b!7948674))

(assert (= (and d!2375733 res!3152421) b!7948675))

(assert (= (and b!7948675 res!3152422) b!7948676))

(declare-fun m!8333800 () Bool)

(assert (=> b!7948674 m!8333800))

(declare-fun m!8333802 () Bool)

(assert (=> d!2375733 m!8333802))

(assert (=> d!2375733 m!8333462))

(declare-fun m!8333804 () Bool)

(assert (=> d!2375733 m!8333804))

(declare-fun m!8333806 () Bool)

(assert (=> d!2375733 m!8333806))

(declare-fun m!8333808 () Bool)

(assert (=> b!7948675 m!8333808))

(assert (=> b!7948675 m!8333462))

(declare-fun m!8333810 () Bool)

(assert (=> b!7948675 m!8333810))

(declare-fun m!8333812 () Bool)

(assert (=> b!7948675 m!8333812))

(assert (=> b!7948191 d!2375733))

(assert (=> b!7948191 d!2375621))

(declare-fun d!2375735 () Bool)

(assert (=> d!2375735 (= (tail!15756 lt!2698974) (t!390433 lt!2698974))))

(assert (=> b!7948191 d!2375735))

(declare-fun d!2375737 () Bool)

(assert (=> d!2375737 (isPrefix!6561 (++!18331 testedP!447 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 testedP!447)) Nil!74566)) input!7927)))

(declare-fun lt!2699268 () Unit!169778)

(declare-fun choose!59887 (List!74690 List!74690) Unit!169778)

(assert (=> d!2375737 (= lt!2699268 (choose!59887 testedP!447 input!7927))))

(assert (=> d!2375737 (isPrefix!6561 testedP!447 input!7927)))

(assert (=> d!2375737 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1290 testedP!447 input!7927) lt!2699268)))

(declare-fun bs!1969489 () Bool)

(assert (= bs!1969489 d!2375737))

(assert (=> bs!1969489 m!8333348))

(declare-fun m!8333814 () Bool)

(assert (=> bs!1969489 m!8333814))

(assert (=> bs!1969489 m!8333330))

(assert (=> bs!1969489 m!8333348))

(assert (=> bs!1969489 m!8333460))

(assert (=> bs!1969489 m!8333456))

(assert (=> bs!1969489 m!8333456))

(assert (=> bs!1969489 m!8333466))

(assert (=> b!7948191 d!2375737))

(assert (=> d!2375625 d!2375621))

(assert (=> d!2375625 d!2375597))

(declare-fun d!2375739 () Bool)

(assert (=> d!2375739 (<= (size!43397 testedP!447) (size!43397 input!7927))))

(assert (=> d!2375739 true))

(declare-fun _$64!895 () Unit!169778)

(assert (=> d!2375739 (= (choose!59883 testedP!447 input!7927) _$64!895)))

(declare-fun bs!1969490 () Bool)

(assert (= bs!1969490 d!2375739))

(assert (=> bs!1969490 m!8333342))

(assert (=> bs!1969490 m!8333344))

(assert (=> d!2375625 d!2375739))

(assert (=> d!2375625 d!2375587))

(declare-fun b!7948677 () Bool)

(declare-fun e!4689195 () tuple2!70584)

(declare-fun e!4689189 () tuple2!70584)

(assert (=> b!7948677 (= e!4689195 e!4689189)))

(declare-fun lt!2699291 () tuple2!70584)

(declare-fun call!736763 () tuple2!70584)

(assert (=> b!7948677 (= lt!2699291 call!736763)))

(declare-fun c!1460037 () Bool)

(assert (=> b!7948677 (= c!1460037 (isEmpty!42865 (_1!38595 lt!2699291)))))

(declare-fun bm!736754 () Bool)

(declare-fun call!736765 () C!43260)

(assert (=> bm!736754 (= call!736765 (head!16213 call!736706))))

(declare-fun b!7948678 () Bool)

(declare-fun e!4689194 () tuple2!70584)

(declare-fun e!4689191 () tuple2!70584)

(assert (=> b!7948678 (= e!4689194 e!4689191)))

(declare-fun c!1460041 () Bool)

(assert (=> b!7948678 (= c!1460041 (= (+ lt!2698977 1) lt!2698975))))

(declare-fun d!2375741 () Bool)

(declare-fun e!4689190 () Bool)

(assert (=> d!2375741 e!4689190))

(declare-fun res!3152423 () Bool)

(assert (=> d!2375741 (=> (not res!3152423) (not e!4689190))))

(declare-fun lt!2699290 () tuple2!70584)

(assert (=> d!2375741 (= res!3152423 (= (++!18331 (_1!38595 lt!2699290) (_2!38595 lt!2699290)) input!7927))))

(assert (=> d!2375741 (= lt!2699290 e!4689194)))

(declare-fun c!1460040 () Bool)

(assert (=> d!2375741 (= c!1460040 (lostCause!1956 call!736711))))

(declare-fun lt!2699292 () Unit!169778)

(declare-fun Unit!169791 () Unit!169778)

(assert (=> d!2375741 (= lt!2699292 Unit!169791)))

(assert (=> d!2375741 (= (getSuffix!3764 input!7927 lt!2699165) call!736706)))

(declare-fun lt!2699273 () Unit!169778)

(declare-fun lt!2699295 () Unit!169778)

(assert (=> d!2375741 (= lt!2699273 lt!2699295)))

(declare-fun lt!2699271 () List!74690)

(assert (=> d!2375741 (= call!736706 lt!2699271)))

(assert (=> d!2375741 (= lt!2699295 (lemmaSamePrefixThenSameSuffix!2972 lt!2699165 call!736706 lt!2699165 lt!2699271 input!7927))))

(assert (=> d!2375741 (= lt!2699271 (getSuffix!3764 input!7927 lt!2699165))))

(declare-fun lt!2699284 () Unit!169778)

(declare-fun lt!2699296 () Unit!169778)

(assert (=> d!2375741 (= lt!2699284 lt!2699296)))

(assert (=> d!2375741 (isPrefix!6561 lt!2699165 (++!18331 lt!2699165 call!736706))))

(assert (=> d!2375741 (= lt!2699296 (lemmaConcatTwoListThenFirstIsPrefix!3834 lt!2699165 call!736706))))

(assert (=> d!2375741 (validRegex!11765 call!736711)))

(assert (=> d!2375741 (= (findLongestMatchInner!2242 call!736711 lt!2699165 (+ lt!2698977 1) call!736706 input!7927 lt!2698975) lt!2699290)))

(declare-fun b!7948679 () Bool)

(assert (=> b!7948679 (= e!4689195 call!736763)))

(declare-fun b!7948680 () Bool)

(declare-fun c!1460042 () Bool)

(declare-fun call!736766 () Bool)

(assert (=> b!7948680 (= c!1460042 call!736766)))

(declare-fun lt!2699287 () Unit!169778)

(declare-fun lt!2699276 () Unit!169778)

(assert (=> b!7948680 (= lt!2699287 lt!2699276)))

(assert (=> b!7948680 (= input!7927 lt!2699165)))

(declare-fun call!736762 () Unit!169778)

(assert (=> b!7948680 (= lt!2699276 call!736762)))

(declare-fun lt!2699281 () Unit!169778)

(declare-fun lt!2699277 () Unit!169778)

(assert (=> b!7948680 (= lt!2699281 lt!2699277)))

(declare-fun call!736761 () Bool)

(assert (=> b!7948680 call!736761))

(declare-fun call!736760 () Unit!169778)

(assert (=> b!7948680 (= lt!2699277 call!736760)))

(declare-fun e!4689193 () tuple2!70584)

(assert (=> b!7948680 (= e!4689191 e!4689193)))

(declare-fun b!7948681 () Bool)

(declare-fun e!4689188 () Unit!169778)

(declare-fun Unit!169792 () Unit!169778)

(assert (=> b!7948681 (= e!4689188 Unit!169792)))

(declare-fun bm!736755 () Bool)

(assert (=> bm!736755 (= call!736761 (isPrefix!6561 input!7927 input!7927))))

(declare-fun b!7948682 () Bool)

(assert (=> b!7948682 (= e!4689193 (tuple2!70585 Nil!74566 input!7927))))

(declare-fun bm!736756 () Bool)

(assert (=> bm!736756 (= call!736762 (lemmaIsPrefixSameLengthThenSameList!1609 input!7927 lt!2699165 input!7927))))

(declare-fun b!7948683 () Bool)

(assert (=> b!7948683 (= e!4689189 (tuple2!70585 lt!2699165 call!736706))))

(declare-fun bm!736757 () Bool)

(assert (=> bm!736757 (= call!736766 (nullable!9564 call!736711))))

(declare-fun b!7948684 () Bool)

(declare-fun e!4689192 () Bool)

(assert (=> b!7948684 (= e!4689190 e!4689192)))

(declare-fun res!3152424 () Bool)

(assert (=> b!7948684 (=> res!3152424 e!4689192)))

(assert (=> b!7948684 (= res!3152424 (isEmpty!42865 (_1!38595 lt!2699290)))))

(declare-fun bm!736758 () Bool)

(declare-fun call!736764 () Regex!21461)

(assert (=> bm!736758 (= call!736764 (derivativeStep!6491 call!736711 call!736765))))

(declare-fun b!7948685 () Bool)

(assert (=> b!7948685 (= e!4689194 (tuple2!70585 Nil!74566 input!7927))))

(declare-fun b!7948686 () Bool)

(assert (=> b!7948686 (= e!4689192 (>= (size!43397 (_1!38595 lt!2699290)) (size!43397 lt!2699165)))))

(declare-fun call!736759 () List!74690)

(declare-fun lt!2699285 () List!74690)

(declare-fun bm!736759 () Bool)

(assert (=> bm!736759 (= call!736763 (findLongestMatchInner!2242 call!736764 lt!2699285 (+ lt!2698977 1 1) call!736759 input!7927 lt!2698975))))

(declare-fun b!7948687 () Bool)

(assert (=> b!7948687 (= e!4689189 lt!2699291)))

(declare-fun b!7948688 () Bool)

(declare-fun c!1460038 () Bool)

(assert (=> b!7948688 (= c!1460038 call!736766)))

(declare-fun lt!2699282 () Unit!169778)

(declare-fun lt!2699272 () Unit!169778)

(assert (=> b!7948688 (= lt!2699282 lt!2699272)))

(declare-fun lt!2699293 () List!74690)

(declare-fun lt!2699275 () C!43260)

(assert (=> b!7948688 (= (++!18331 (++!18331 lt!2699165 (Cons!74566 lt!2699275 Nil!74566)) lt!2699293) input!7927)))

(assert (=> b!7948688 (= lt!2699272 (lemmaMoveElementToOtherListKeepsConcatEq!3512 lt!2699165 lt!2699275 lt!2699293 input!7927))))

(assert (=> b!7948688 (= lt!2699293 (tail!15756 call!736706))))

(assert (=> b!7948688 (= lt!2699275 (head!16213 call!736706))))

(declare-fun lt!2699280 () Unit!169778)

(declare-fun lt!2699289 () Unit!169778)

(assert (=> b!7948688 (= lt!2699280 lt!2699289)))

(assert (=> b!7948688 (isPrefix!6561 (++!18331 lt!2699165 (Cons!74566 (head!16213 (getSuffix!3764 input!7927 lt!2699165)) Nil!74566)) input!7927)))

(assert (=> b!7948688 (= lt!2699289 (lemmaAddHeadSuffixToPrefixStillPrefix!1290 lt!2699165 input!7927))))

(declare-fun lt!2699283 () Unit!169778)

(declare-fun lt!2699274 () Unit!169778)

(assert (=> b!7948688 (= lt!2699283 lt!2699274)))

(assert (=> b!7948688 (= lt!2699274 (lemmaAddHeadSuffixToPrefixStillPrefix!1290 lt!2699165 input!7927))))

(assert (=> b!7948688 (= lt!2699285 (++!18331 lt!2699165 (Cons!74566 (head!16213 call!736706) Nil!74566)))))

(declare-fun lt!2699288 () Unit!169778)

(assert (=> b!7948688 (= lt!2699288 e!4689188)))

(declare-fun c!1460039 () Bool)

(assert (=> b!7948688 (= c!1460039 (= (size!43397 lt!2699165) (size!43397 input!7927)))))

(declare-fun lt!2699279 () Unit!169778)

(declare-fun lt!2699278 () Unit!169778)

(assert (=> b!7948688 (= lt!2699279 lt!2699278)))

(assert (=> b!7948688 (<= (size!43397 lt!2699165) (size!43397 input!7927))))

(assert (=> b!7948688 (= lt!2699278 (lemmaIsPrefixThenSmallerEqSize!1078 lt!2699165 input!7927))))

(assert (=> b!7948688 (= e!4689191 e!4689195)))

(declare-fun bm!736760 () Bool)

(assert (=> bm!736760 (= call!736760 (lemmaIsPrefixRefl!4029 input!7927 input!7927))))

(declare-fun bm!736761 () Bool)

(assert (=> bm!736761 (= call!736759 (tail!15756 call!736706))))

(declare-fun b!7948689 () Bool)

(assert (=> b!7948689 (= e!4689193 (tuple2!70585 lt!2699165 Nil!74566))))

(declare-fun b!7948690 () Bool)

(declare-fun Unit!169793 () Unit!169778)

(assert (=> b!7948690 (= e!4689188 Unit!169793)))

(declare-fun lt!2699269 () Unit!169778)

(assert (=> b!7948690 (= lt!2699269 call!736760)))

(assert (=> b!7948690 call!736761))

(declare-fun lt!2699286 () Unit!169778)

(assert (=> b!7948690 (= lt!2699286 lt!2699269)))

(declare-fun lt!2699294 () Unit!169778)

(assert (=> b!7948690 (= lt!2699294 call!736762)))

(assert (=> b!7948690 (= input!7927 lt!2699165)))

(declare-fun lt!2699270 () Unit!169778)

(assert (=> b!7948690 (= lt!2699270 lt!2699294)))

(assert (=> b!7948690 false))

(assert (= (and d!2375741 c!1460040) b!7948685))

(assert (= (and d!2375741 (not c!1460040)) b!7948678))

(assert (= (and b!7948678 c!1460041) b!7948680))

(assert (= (and b!7948678 (not c!1460041)) b!7948688))

(assert (= (and b!7948680 c!1460042) b!7948689))

(assert (= (and b!7948680 (not c!1460042)) b!7948682))

(assert (= (and b!7948688 c!1460039) b!7948690))

(assert (= (and b!7948688 (not c!1460039)) b!7948681))

(assert (= (and b!7948688 c!1460038) b!7948677))

(assert (= (and b!7948688 (not c!1460038)) b!7948679))

(assert (= (and b!7948677 c!1460037) b!7948683))

(assert (= (and b!7948677 (not c!1460037)) b!7948687))

(assert (= (or b!7948677 b!7948679) bm!736754))

(assert (= (or b!7948677 b!7948679) bm!736761))

(assert (= (or b!7948677 b!7948679) bm!736758))

(assert (= (or b!7948677 b!7948679) bm!736759))

(assert (= (or b!7948680 b!7948688) bm!736757))

(assert (= (or b!7948680 b!7948690) bm!736756))

(assert (= (or b!7948680 b!7948690) bm!736760))

(assert (= (or b!7948680 b!7948690) bm!736755))

(assert (= (and d!2375741 res!3152423) b!7948684))

(assert (= (and b!7948684 (not res!3152424)) b!7948686))

(declare-fun m!8333816 () Bool)

(assert (=> b!7948684 m!8333816))

(declare-fun m!8333818 () Bool)

(assert (=> bm!736758 m!8333818))

(assert (=> bm!736760 m!8333332))

(assert (=> bm!736755 m!8333334))

(declare-fun m!8333820 () Bool)

(assert (=> b!7948688 m!8333820))

(declare-fun m!8333822 () Bool)

(assert (=> b!7948688 m!8333822))

(declare-fun m!8333824 () Bool)

(assert (=> b!7948688 m!8333824))

(declare-fun m!8333826 () Bool)

(assert (=> b!7948688 m!8333826))

(declare-fun m!8333828 () Bool)

(assert (=> b!7948688 m!8333828))

(assert (=> b!7948688 m!8333344))

(declare-fun m!8333830 () Bool)

(assert (=> b!7948688 m!8333830))

(declare-fun m!8333832 () Bool)

(assert (=> b!7948688 m!8333832))

(declare-fun m!8333834 () Bool)

(assert (=> b!7948688 m!8333834))

(declare-fun m!8333836 () Bool)

(assert (=> b!7948688 m!8333836))

(declare-fun m!8333838 () Bool)

(assert (=> b!7948688 m!8333838))

(declare-fun m!8333840 () Bool)

(assert (=> b!7948688 m!8333840))

(assert (=> b!7948688 m!8333828))

(declare-fun m!8333842 () Bool)

(assert (=> b!7948688 m!8333842))

(assert (=> b!7948688 m!8333838))

(assert (=> b!7948688 m!8333834))

(declare-fun m!8333844 () Bool)

(assert (=> b!7948688 m!8333844))

(assert (=> bm!736754 m!8333830))

(declare-fun m!8333846 () Bool)

(assert (=> d!2375741 m!8333846))

(declare-fun m!8333848 () Bool)

(assert (=> d!2375741 m!8333848))

(assert (=> d!2375741 m!8333834))

(declare-fun m!8333850 () Bool)

(assert (=> d!2375741 m!8333850))

(declare-fun m!8333852 () Bool)

(assert (=> d!2375741 m!8333852))

(declare-fun m!8333854 () Bool)

(assert (=> d!2375741 m!8333854))

(declare-fun m!8333856 () Bool)

(assert (=> d!2375741 m!8333856))

(assert (=> d!2375741 m!8333852))

(declare-fun m!8333858 () Bool)

(assert (=> d!2375741 m!8333858))

(declare-fun m!8333860 () Bool)

(assert (=> b!7948686 m!8333860))

(assert (=> b!7948686 m!8333832))

(declare-fun m!8333862 () Bool)

(assert (=> bm!736759 m!8333862))

(assert (=> bm!736761 m!8333844))

(declare-fun m!8333864 () Bool)

(assert (=> bm!736756 m!8333864))

(declare-fun m!8333866 () Bool)

(assert (=> bm!736757 m!8333866))

(declare-fun m!8333868 () Bool)

(assert (=> b!7948677 m!8333868))

(assert (=> bm!736706 d!2375741))

(assert (=> b!7948000 d!2375597))

(assert (=> b!7948000 d!2375621))

(declare-fun d!2375743 () Bool)

(declare-fun e!4689198 () Bool)

(assert (=> d!2375743 e!4689198))

(declare-fun res!3152426 () Bool)

(assert (=> d!2375743 (=> res!3152426 e!4689198)))

(declare-fun lt!2699297 () Bool)

(assert (=> d!2375743 (= res!3152426 (not lt!2699297))))

(declare-fun e!4689197 () Bool)

(assert (=> d!2375743 (= lt!2699297 e!4689197)))

(declare-fun res!3152428 () Bool)

(assert (=> d!2375743 (=> res!3152428 e!4689197)))

(assert (=> d!2375743 (= res!3152428 ((_ is Nil!74566) (tail!15756 testedP!447)))))

(assert (=> d!2375743 (= (isPrefix!6561 (tail!15756 testedP!447) (tail!15756 input!7927)) lt!2699297)))

(declare-fun b!7948694 () Bool)

(assert (=> b!7948694 (= e!4689198 (>= (size!43397 (tail!15756 input!7927)) (size!43397 (tail!15756 testedP!447))))))

(declare-fun b!7948693 () Bool)

(declare-fun e!4689196 () Bool)

(assert (=> b!7948693 (= e!4689196 (isPrefix!6561 (tail!15756 (tail!15756 testedP!447)) (tail!15756 (tail!15756 input!7927))))))

(declare-fun b!7948691 () Bool)

(assert (=> b!7948691 (= e!4689197 e!4689196)))

(declare-fun res!3152427 () Bool)

(assert (=> b!7948691 (=> (not res!3152427) (not e!4689196))))

(assert (=> b!7948691 (= res!3152427 (not ((_ is Nil!74566) (tail!15756 input!7927))))))

(declare-fun b!7948692 () Bool)

(declare-fun res!3152425 () Bool)

(assert (=> b!7948692 (=> (not res!3152425) (not e!4689196))))

(assert (=> b!7948692 (= res!3152425 (= (head!16213 (tail!15756 testedP!447)) (head!16213 (tail!15756 input!7927))))))

(assert (= (and d!2375743 (not res!3152428)) b!7948691))

(assert (= (and b!7948691 res!3152427) b!7948692))

(assert (= (and b!7948692 res!3152425) b!7948693))

(assert (= (and d!2375743 (not res!3152426)) b!7948694))

(assert (=> b!7948694 m!8333364))

(declare-fun m!8333870 () Bool)

(assert (=> b!7948694 m!8333870))

(assert (=> b!7948694 m!8333362))

(declare-fun m!8333872 () Bool)

(assert (=> b!7948694 m!8333872))

(assert (=> b!7948693 m!8333362))

(declare-fun m!8333874 () Bool)

(assert (=> b!7948693 m!8333874))

(assert (=> b!7948693 m!8333364))

(declare-fun m!8333876 () Bool)

(assert (=> b!7948693 m!8333876))

(assert (=> b!7948693 m!8333874))

(assert (=> b!7948693 m!8333876))

(declare-fun m!8333878 () Bool)

(assert (=> b!7948693 m!8333878))

(assert (=> b!7948692 m!8333362))

(declare-fun m!8333880 () Bool)

(assert (=> b!7948692 m!8333880))

(assert (=> b!7948692 m!8333364))

(declare-fun m!8333882 () Bool)

(assert (=> b!7948692 m!8333882))

(assert (=> b!7947999 d!2375743))

(declare-fun d!2375745 () Bool)

(assert (=> d!2375745 (= (tail!15756 testedP!447) (t!390433 testedP!447))))

(assert (=> b!7947999 d!2375745))

(declare-fun d!2375747 () Bool)

(assert (=> d!2375747 (= (tail!15756 input!7927) (t!390433 input!7927))))

(assert (=> b!7947999 d!2375747))

(declare-fun d!2375749 () Bool)

(declare-fun lt!2699298 () Int)

(assert (=> d!2375749 (>= lt!2699298 0)))

(declare-fun e!4689199 () Int)

(assert (=> d!2375749 (= lt!2699298 e!4689199)))

(declare-fun c!1460043 () Bool)

(assert (=> d!2375749 (= c!1460043 ((_ is Nil!74566) (_1!38595 lt!2699170)))))

(assert (=> d!2375749 (= (size!43397 (_1!38595 lt!2699170)) lt!2699298)))

(declare-fun b!7948695 () Bool)

(assert (=> b!7948695 (= e!4689199 0)))

(declare-fun b!7948696 () Bool)

(assert (=> b!7948696 (= e!4689199 (+ 1 (size!43397 (t!390433 (_1!38595 lt!2699170)))))))

(assert (= (and d!2375749 c!1460043) b!7948695))

(assert (= (and d!2375749 (not c!1460043)) b!7948696))

(declare-fun m!8333884 () Bool)

(assert (=> b!7948696 m!8333884))

(assert (=> b!7948189 d!2375749))

(assert (=> b!7948189 d!2375621))

(declare-fun d!2375751 () Bool)

(assert (=> d!2375751 (= input!7927 testedP!447)))

(assert (=> d!2375751 true))

(declare-fun _$60!1309 () Unit!169778)

(assert (=> d!2375751 (= (choose!59885 input!7927 testedP!447 input!7927) _$60!1309)))

(assert (=> d!2375631 d!2375751))

(assert (=> d!2375631 d!2375629))

(declare-fun d!2375753 () Bool)

(assert (=> d!2375753 (= (head!16213 testedP!447) (h!81014 testedP!447))))

(assert (=> b!7947998 d!2375753))

(declare-fun d!2375755 () Bool)

(assert (=> d!2375755 (= (head!16213 input!7927) (h!81014 input!7927))))

(assert (=> b!7947998 d!2375755))

(declare-fun d!2375757 () Bool)

(declare-fun e!4689202 () Bool)

(assert (=> d!2375757 e!4689202))

(declare-fun res!3152430 () Bool)

(assert (=> d!2375757 (=> res!3152430 e!4689202)))

(declare-fun lt!2699299 () Bool)

(assert (=> d!2375757 (= res!3152430 (not lt!2699299))))

(declare-fun e!4689201 () Bool)

(assert (=> d!2375757 (= lt!2699299 e!4689201)))

(declare-fun res!3152432 () Bool)

(assert (=> d!2375757 (=> res!3152432 e!4689201)))

(assert (=> d!2375757 (= res!3152432 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375757 (= (isPrefix!6561 testedP!447 (++!18331 testedP!447 lt!2698974)) lt!2699299)))

(declare-fun b!7948700 () Bool)

(assert (=> b!7948700 (= e!4689202 (>= (size!43397 (++!18331 testedP!447 lt!2698974)) (size!43397 testedP!447)))))

(declare-fun b!7948699 () Bool)

(declare-fun e!4689200 () Bool)

(assert (=> b!7948699 (= e!4689200 (isPrefix!6561 (tail!15756 testedP!447) (tail!15756 (++!18331 testedP!447 lt!2698974))))))

(declare-fun b!7948697 () Bool)

(assert (=> b!7948697 (= e!4689201 e!4689200)))

(declare-fun res!3152431 () Bool)

(assert (=> b!7948697 (=> (not res!3152431) (not e!4689200))))

(assert (=> b!7948697 (= res!3152431 (not ((_ is Nil!74566) (++!18331 testedP!447 lt!2698974))))))

(declare-fun b!7948698 () Bool)

(declare-fun res!3152429 () Bool)

(assert (=> b!7948698 (=> (not res!3152429) (not e!4689200))))

(assert (=> b!7948698 (= res!3152429 (= (head!16213 testedP!447) (head!16213 (++!18331 testedP!447 lt!2698974))))))

(assert (= (and d!2375757 (not res!3152432)) b!7948697))

(assert (= (and b!7948697 res!3152431) b!7948698))

(assert (= (and b!7948698 res!3152429) b!7948699))

(assert (= (and d!2375757 (not res!3152430)) b!7948700))

(assert (=> b!7948700 m!8333476))

(declare-fun m!8333886 () Bool)

(assert (=> b!7948700 m!8333886))

(assert (=> b!7948700 m!8333342))

(assert (=> b!7948699 m!8333362))

(assert (=> b!7948699 m!8333476))

(declare-fun m!8333888 () Bool)

(assert (=> b!7948699 m!8333888))

(assert (=> b!7948699 m!8333362))

(assert (=> b!7948699 m!8333888))

(declare-fun m!8333890 () Bool)

(assert (=> b!7948699 m!8333890))

(assert (=> b!7948698 m!8333368))

(assert (=> b!7948698 m!8333476))

(declare-fun m!8333892 () Bool)

(assert (=> b!7948698 m!8333892))

(assert (=> d!2375603 d!2375757))

(declare-fun d!2375759 () Bool)

(assert (=> d!2375759 (isPrefix!6561 testedP!447 (++!18331 testedP!447 lt!2698974))))

(declare-fun lt!2699302 () Unit!169778)

(declare-fun choose!59892 (List!74690 List!74690) Unit!169778)

(assert (=> d!2375759 (= lt!2699302 (choose!59892 testedP!447 lt!2698974))))

(assert (=> d!2375759 (= (lemmaConcatTwoListThenFirstIsPrefix!3834 testedP!447 lt!2698974) lt!2699302)))

(declare-fun bs!1969491 () Bool)

(assert (= bs!1969491 d!2375759))

(assert (=> bs!1969491 m!8333476))

(assert (=> bs!1969491 m!8333476))

(assert (=> bs!1969491 m!8333482))

(declare-fun m!8333894 () Bool)

(assert (=> bs!1969491 m!8333894))

(assert (=> d!2375603 d!2375759))

(declare-fun b!7948701 () Bool)

(declare-fun e!4689205 () Bool)

(declare-fun call!736767 () Bool)

(assert (=> b!7948701 (= e!4689205 call!736767)))

(declare-fun b!7948702 () Bool)

(declare-fun res!3152436 () Bool)

(declare-fun e!4689206 () Bool)

(assert (=> b!7948702 (=> res!3152436 e!4689206)))

(assert (=> b!7948702 (= res!3152436 (not ((_ is Concat!30460) r!24602)))))

(declare-fun e!4689208 () Bool)

(assert (=> b!7948702 (= e!4689208 e!4689206)))

(declare-fun b!7948703 () Bool)

(declare-fun e!4689209 () Bool)

(assert (=> b!7948703 (= e!4689209 e!4689208)))

(declare-fun c!1460045 () Bool)

(assert (=> b!7948703 (= c!1460045 ((_ is Union!21461) r!24602))))

(declare-fun bm!736762 () Bool)

(declare-fun call!736769 () Bool)

(declare-fun c!1460044 () Bool)

(assert (=> bm!736762 (= call!736769 (validRegex!11765 (ite c!1460044 (reg!21790 r!24602) (ite c!1460045 (regTwo!43435 r!24602) (regTwo!43434 r!24602)))))))

(declare-fun bm!736763 () Bool)

(assert (=> bm!736763 (= call!736767 call!736769)))

(declare-fun b!7948704 () Bool)

(declare-fun res!3152435 () Bool)

(declare-fun e!4689207 () Bool)

(assert (=> b!7948704 (=> (not res!3152435) (not e!4689207))))

(declare-fun call!736768 () Bool)

(assert (=> b!7948704 (= res!3152435 call!736768)))

(assert (=> b!7948704 (= e!4689208 e!4689207)))

(declare-fun bm!736764 () Bool)

(assert (=> bm!736764 (= call!736768 (validRegex!11765 (ite c!1460045 (regOne!43435 r!24602) (regOne!43434 r!24602))))))

(declare-fun b!7948705 () Bool)

(declare-fun e!4689203 () Bool)

(assert (=> b!7948705 (= e!4689209 e!4689203)))

(declare-fun res!3152437 () Bool)

(assert (=> b!7948705 (= res!3152437 (not (nullable!9564 (reg!21790 r!24602))))))

(assert (=> b!7948705 (=> (not res!3152437) (not e!4689203))))

(declare-fun d!2375761 () Bool)

(declare-fun res!3152434 () Bool)

(declare-fun e!4689204 () Bool)

(assert (=> d!2375761 (=> res!3152434 e!4689204)))

(assert (=> d!2375761 (= res!3152434 ((_ is ElementMatch!21461) r!24602))))

(assert (=> d!2375761 (= (validRegex!11765 r!24602) e!4689204)))

(declare-fun b!7948706 () Bool)

(assert (=> b!7948706 (= e!4689203 call!736769)))

(declare-fun b!7948707 () Bool)

(assert (=> b!7948707 (= e!4689206 e!4689205)))

(declare-fun res!3152433 () Bool)

(assert (=> b!7948707 (=> (not res!3152433) (not e!4689205))))

(assert (=> b!7948707 (= res!3152433 call!736768)))

(declare-fun b!7948708 () Bool)

(assert (=> b!7948708 (= e!4689204 e!4689209)))

(assert (=> b!7948708 (= c!1460044 ((_ is Star!21461) r!24602))))

(declare-fun b!7948709 () Bool)

(assert (=> b!7948709 (= e!4689207 call!736767)))

(assert (= (and d!2375761 (not res!3152434)) b!7948708))

(assert (= (and b!7948708 c!1460044) b!7948705))

(assert (= (and b!7948708 (not c!1460044)) b!7948703))

(assert (= (and b!7948705 res!3152437) b!7948706))

(assert (= (and b!7948703 c!1460045) b!7948704))

(assert (= (and b!7948703 (not c!1460045)) b!7948702))

(assert (= (and b!7948704 res!3152435) b!7948709))

(assert (= (and b!7948702 (not res!3152436)) b!7948707))

(assert (= (and b!7948707 res!3152433) b!7948701))

(assert (= (or b!7948709 b!7948701) bm!736763))

(assert (= (or b!7948704 b!7948707) bm!736764))

(assert (= (or b!7948706 bm!736763) bm!736762))

(declare-fun m!8333896 () Bool)

(assert (=> bm!736762 m!8333896))

(declare-fun m!8333898 () Bool)

(assert (=> bm!736764 m!8333898))

(declare-fun m!8333900 () Bool)

(assert (=> b!7948705 m!8333900))

(assert (=> d!2375603 d!2375761))

(declare-fun d!2375763 () Bool)

(declare-fun lostCauseFct!562 (Regex!21461) Bool)

(assert (=> d!2375763 (= (lostCause!1956 r!24602) (lostCauseFct!562 r!24602))))

(declare-fun bs!1969492 () Bool)

(assert (= bs!1969492 d!2375763))

(declare-fun m!8333902 () Bool)

(assert (=> bs!1969492 m!8333902))

(assert (=> d!2375603 d!2375763))

(declare-fun b!7948711 () Bool)

(declare-fun e!4689211 () List!74690)

(assert (=> b!7948711 (= e!4689211 (Cons!74566 (h!81014 testedP!447) (++!18331 (t!390433 testedP!447) lt!2698974)))))

(declare-fun d!2375765 () Bool)

(declare-fun e!4689210 () Bool)

(assert (=> d!2375765 e!4689210))

(declare-fun res!3152438 () Bool)

(assert (=> d!2375765 (=> (not res!3152438) (not e!4689210))))

(declare-fun lt!2699303 () List!74690)

(assert (=> d!2375765 (= res!3152438 (= (content!15823 lt!2699303) ((_ map or) (content!15823 testedP!447) (content!15823 lt!2698974))))))

(assert (=> d!2375765 (= lt!2699303 e!4689211)))

(declare-fun c!1460046 () Bool)

(assert (=> d!2375765 (= c!1460046 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375765 (= (++!18331 testedP!447 lt!2698974) lt!2699303)))

(declare-fun b!7948712 () Bool)

(declare-fun res!3152439 () Bool)

(assert (=> b!7948712 (=> (not res!3152439) (not e!4689210))))

(assert (=> b!7948712 (= res!3152439 (= (size!43397 lt!2699303) (+ (size!43397 testedP!447) (size!43397 lt!2698974))))))

(declare-fun b!7948710 () Bool)

(assert (=> b!7948710 (= e!4689211 lt!2698974)))

(declare-fun b!7948713 () Bool)

(assert (=> b!7948713 (= e!4689210 (or (not (= lt!2698974 Nil!74566)) (= lt!2699303 testedP!447)))))

(assert (= (and d!2375765 c!1460046) b!7948710))

(assert (= (and d!2375765 (not c!1460046)) b!7948711))

(assert (= (and d!2375765 res!3152438) b!7948712))

(assert (= (and b!7948712 res!3152439) b!7948713))

(declare-fun m!8333904 () Bool)

(assert (=> b!7948711 m!8333904))

(declare-fun m!8333906 () Bool)

(assert (=> d!2375765 m!8333906))

(assert (=> d!2375765 m!8333760))

(declare-fun m!8333908 () Bool)

(assert (=> d!2375765 m!8333908))

(declare-fun m!8333910 () Bool)

(assert (=> b!7948712 m!8333910))

(assert (=> b!7948712 m!8333342))

(declare-fun m!8333912 () Bool)

(assert (=> b!7948712 m!8333912))

(assert (=> d!2375603 d!2375765))

(assert (=> d!2375603 d!2375619))

(declare-fun d!2375767 () Bool)

(assert (=> d!2375767 (= lt!2698974 lt!2699151)))

(declare-fun lt!2699306 () Unit!169778)

(declare-fun choose!59893 (List!74690 List!74690 List!74690 List!74690 List!74690) Unit!169778)

(assert (=> d!2375767 (= lt!2699306 (choose!59893 testedP!447 lt!2698974 testedP!447 lt!2699151 input!7927))))

(assert (=> d!2375767 (isPrefix!6561 testedP!447 input!7927)))

(assert (=> d!2375767 (= (lemmaSamePrefixThenSameSuffix!2972 testedP!447 lt!2698974 testedP!447 lt!2699151 input!7927) lt!2699306)))

(declare-fun bs!1969493 () Bool)

(assert (= bs!1969493 d!2375767))

(declare-fun m!8333914 () Bool)

(assert (=> bs!1969493 m!8333914))

(assert (=> bs!1969493 m!8333330))

(assert (=> d!2375603 d!2375767))

(declare-fun b!7948715 () Bool)

(declare-fun e!4689213 () List!74690)

(assert (=> b!7948715 (= e!4689213 (Cons!74566 (h!81014 (_1!38595 lt!2699170)) (++!18331 (t!390433 (_1!38595 lt!2699170)) (_2!38595 lt!2699170))))))

(declare-fun d!2375769 () Bool)

(declare-fun e!4689212 () Bool)

(assert (=> d!2375769 e!4689212))

(declare-fun res!3152440 () Bool)

(assert (=> d!2375769 (=> (not res!3152440) (not e!4689212))))

(declare-fun lt!2699307 () List!74690)

(assert (=> d!2375769 (= res!3152440 (= (content!15823 lt!2699307) ((_ map or) (content!15823 (_1!38595 lt!2699170)) (content!15823 (_2!38595 lt!2699170)))))))

(assert (=> d!2375769 (= lt!2699307 e!4689213)))

(declare-fun c!1460047 () Bool)

(assert (=> d!2375769 (= c!1460047 ((_ is Nil!74566) (_1!38595 lt!2699170)))))

(assert (=> d!2375769 (= (++!18331 (_1!38595 lt!2699170) (_2!38595 lt!2699170)) lt!2699307)))

(declare-fun b!7948716 () Bool)

(declare-fun res!3152441 () Bool)

(assert (=> b!7948716 (=> (not res!3152441) (not e!4689212))))

(assert (=> b!7948716 (= res!3152441 (= (size!43397 lt!2699307) (+ (size!43397 (_1!38595 lt!2699170)) (size!43397 (_2!38595 lt!2699170)))))))

(declare-fun b!7948714 () Bool)

(assert (=> b!7948714 (= e!4689213 (_2!38595 lt!2699170))))

(declare-fun b!7948717 () Bool)

(assert (=> b!7948717 (= e!4689212 (or (not (= (_2!38595 lt!2699170) Nil!74566)) (= lt!2699307 (_1!38595 lt!2699170))))))

(assert (= (and d!2375769 c!1460047) b!7948714))

(assert (= (and d!2375769 (not c!1460047)) b!7948715))

(assert (= (and d!2375769 res!3152440) b!7948716))

(assert (= (and b!7948716 res!3152441) b!7948717))

(declare-fun m!8333916 () Bool)

(assert (=> b!7948715 m!8333916))

(declare-fun m!8333918 () Bool)

(assert (=> d!2375769 m!8333918))

(declare-fun m!8333920 () Bool)

(assert (=> d!2375769 m!8333920))

(declare-fun m!8333922 () Bool)

(assert (=> d!2375769 m!8333922))

(declare-fun m!8333924 () Bool)

(assert (=> b!7948716 m!8333924))

(assert (=> b!7948716 m!8333484))

(declare-fun m!8333926 () Bool)

(assert (=> b!7948716 m!8333926))

(assert (=> d!2375603 d!2375769))

(declare-fun d!2375771 () Bool)

(assert (=> d!2375771 (= (isEmpty!42865 (_1!38595 lt!2699170)) ((_ is Nil!74566) (_1!38595 lt!2699170)))))

(assert (=> b!7948187 d!2375771))

(declare-fun b!7948738 () Bool)

(declare-fun e!4689226 () Regex!21461)

(declare-fun e!4689224 () Regex!21461)

(assert (=> b!7948738 (= e!4689226 e!4689224)))

(declare-fun c!1460059 () Bool)

(assert (=> b!7948738 (= c!1460059 ((_ is ElementMatch!21461) r!24602))))

(declare-fun b!7948739 () Bool)

(declare-fun e!4689227 () Regex!21461)

(declare-fun call!736779 () Regex!21461)

(assert (=> b!7948739 (= e!4689227 (Union!21461 (Concat!30460 call!736779 (regTwo!43434 r!24602)) EmptyLang!21461))))

(declare-fun b!7948740 () Bool)

(declare-fun e!4689228 () Regex!21461)

(declare-fun call!736781 () Regex!21461)

(assert (=> b!7948740 (= e!4689228 (Concat!30460 call!736781 r!24602))))

(declare-fun d!2375773 () Bool)

(declare-fun lt!2699310 () Regex!21461)

(assert (=> d!2375773 (validRegex!11765 lt!2699310)))

(assert (=> d!2375773 (= lt!2699310 e!4689226)))

(declare-fun c!1460062 () Bool)

(assert (=> d!2375773 (= c!1460062 (or ((_ is EmptyExpr!21461) r!24602) ((_ is EmptyLang!21461) r!24602)))))

(assert (=> d!2375773 (validRegex!11765 r!24602)))

(assert (=> d!2375773 (= (derivativeStep!6491 r!24602 call!736712) lt!2699310)))

(declare-fun b!7948741 () Bool)

(declare-fun c!1460061 () Bool)

(assert (=> b!7948741 (= c!1460061 (nullable!9564 (regOne!43434 r!24602)))))

(assert (=> b!7948741 (= e!4689228 e!4689227)))

(declare-fun b!7948742 () Bool)

(declare-fun e!4689225 () Regex!21461)

(declare-fun call!736778 () Regex!21461)

(declare-fun call!736780 () Regex!21461)

(assert (=> b!7948742 (= e!4689225 (Union!21461 call!736778 call!736780))))

(declare-fun bm!736773 () Bool)

(assert (=> bm!736773 (= call!736781 call!736780)))

(declare-fun bm!736774 () Bool)

(assert (=> bm!736774 (= call!736779 call!736781)))

(declare-fun c!1460058 () Bool)

(declare-fun bm!736775 () Bool)

(assert (=> bm!736775 (= call!736778 (derivativeStep!6491 (ite c!1460058 (regOne!43435 r!24602) (regOne!43434 r!24602)) call!736712))))

(declare-fun c!1460060 () Bool)

(declare-fun bm!736776 () Bool)

(assert (=> bm!736776 (= call!736780 (derivativeStep!6491 (ite c!1460058 (regTwo!43435 r!24602) (ite c!1460060 (reg!21790 r!24602) (ite c!1460061 (regTwo!43434 r!24602) (regOne!43434 r!24602)))) call!736712))))

(declare-fun b!7948743 () Bool)

(assert (=> b!7948743 (= e!4689225 e!4689228)))

(assert (=> b!7948743 (= c!1460060 ((_ is Star!21461) r!24602))))

(declare-fun b!7948744 () Bool)

(assert (=> b!7948744 (= c!1460058 ((_ is Union!21461) r!24602))))

(assert (=> b!7948744 (= e!4689224 e!4689225)))

(declare-fun b!7948745 () Bool)

(assert (=> b!7948745 (= e!4689226 EmptyLang!21461)))

(declare-fun b!7948746 () Bool)

(assert (=> b!7948746 (= e!4689227 (Union!21461 (Concat!30460 call!736778 (regTwo!43434 r!24602)) call!736779))))

(declare-fun b!7948747 () Bool)

(assert (=> b!7948747 (= e!4689224 (ite (= call!736712 (c!1459914 r!24602)) EmptyExpr!21461 EmptyLang!21461))))

(assert (= (and d!2375773 c!1460062) b!7948745))

(assert (= (and d!2375773 (not c!1460062)) b!7948738))

(assert (= (and b!7948738 c!1460059) b!7948747))

(assert (= (and b!7948738 (not c!1460059)) b!7948744))

(assert (= (and b!7948744 c!1460058) b!7948742))

(assert (= (and b!7948744 (not c!1460058)) b!7948743))

(assert (= (and b!7948743 c!1460060) b!7948740))

(assert (= (and b!7948743 (not c!1460060)) b!7948741))

(assert (= (and b!7948741 c!1460061) b!7948746))

(assert (= (and b!7948741 (not c!1460061)) b!7948739))

(assert (= (or b!7948746 b!7948739) bm!736774))

(assert (= (or b!7948740 bm!736774) bm!736773))

(assert (= (or b!7948742 bm!736773) bm!736776))

(assert (= (or b!7948742 b!7948746) bm!736775))

(declare-fun m!8333928 () Bool)

(assert (=> d!2375773 m!8333928))

(assert (=> d!2375773 m!8333472))

(declare-fun m!8333930 () Bool)

(assert (=> b!7948741 m!8333930))

(declare-fun m!8333932 () Bool)

(assert (=> bm!736775 m!8333932))

(declare-fun m!8333934 () Bool)

(assert (=> bm!736776 m!8333934))

(assert (=> bm!736705 d!2375773))

(declare-fun d!2375775 () Bool)

(declare-fun nullableFct!3766 (Regex!21461) Bool)

(assert (=> d!2375775 (= (nullable!9564 r!24602) (nullableFct!3766 r!24602))))

(declare-fun bs!1969494 () Bool)

(assert (= bs!1969494 d!2375775))

(declare-fun m!8333936 () Bool)

(assert (=> bs!1969494 m!8333936))

(assert (=> bm!736704 d!2375775))

(declare-fun b!7948749 () Bool)

(declare-fun e!4689230 () List!74690)

(assert (=> b!7948749 (= e!4689230 (Cons!74566 (h!81014 testedP!447) (++!18331 (t!390433 testedP!447) lt!2699179)))))

(declare-fun d!2375777 () Bool)

(declare-fun e!4689229 () Bool)

(assert (=> d!2375777 e!4689229))

(declare-fun res!3152442 () Bool)

(assert (=> d!2375777 (=> (not res!3152442) (not e!4689229))))

(declare-fun lt!2699311 () List!74690)

(assert (=> d!2375777 (= res!3152442 (= (content!15823 lt!2699311) ((_ map or) (content!15823 testedP!447) (content!15823 lt!2699179))))))

(assert (=> d!2375777 (= lt!2699311 e!4689230)))

(declare-fun c!1460063 () Bool)

(assert (=> d!2375777 (= c!1460063 ((_ is Nil!74566) testedP!447))))

(assert (=> d!2375777 (= (++!18331 testedP!447 lt!2699179) lt!2699311)))

(declare-fun b!7948750 () Bool)

(declare-fun res!3152443 () Bool)

(assert (=> b!7948750 (=> (not res!3152443) (not e!4689229))))

(assert (=> b!7948750 (= res!3152443 (= (size!43397 lt!2699311) (+ (size!43397 testedP!447) (size!43397 lt!2699179))))))

(declare-fun b!7948748 () Bool)

(assert (=> b!7948748 (= e!4689230 lt!2699179)))

(declare-fun b!7948751 () Bool)

(assert (=> b!7948751 (= e!4689229 (or (not (= lt!2699179 Nil!74566)) (= lt!2699311 testedP!447)))))

(assert (= (and d!2375777 c!1460063) b!7948748))

(assert (= (and d!2375777 (not c!1460063)) b!7948749))

(assert (= (and d!2375777 res!3152442) b!7948750))

(assert (= (and b!7948750 res!3152443) b!7948751))

(declare-fun m!8333938 () Bool)

(assert (=> b!7948749 m!8333938))

(declare-fun m!8333940 () Bool)

(assert (=> d!2375777 m!8333940))

(assert (=> d!2375777 m!8333760))

(declare-fun m!8333942 () Bool)

(assert (=> d!2375777 m!8333942))

(declare-fun m!8333944 () Bool)

(assert (=> b!7948750 m!8333944))

(assert (=> b!7948750 m!8333342))

(declare-fun m!8333946 () Bool)

(assert (=> b!7948750 m!8333946))

(assert (=> d!2375619 d!2375777))

(assert (=> d!2375619 d!2375597))

(assert (=> d!2375619 d!2375621))

(assert (=> b!7948232 d!2375597))

(assert (=> b!7948230 d!2375755))

(declare-fun d!2375779 () Bool)

(declare-fun e!4689233 () Bool)

(assert (=> d!2375779 e!4689233))

(declare-fun res!3152445 () Bool)

(assert (=> d!2375779 (=> res!3152445 e!4689233)))

(declare-fun lt!2699312 () Bool)

(assert (=> d!2375779 (= res!3152445 (not lt!2699312))))

(declare-fun e!4689232 () Bool)

(assert (=> d!2375779 (= lt!2699312 e!4689232)))

(declare-fun res!3152447 () Bool)

(assert (=> d!2375779 (=> res!3152447 e!4689232)))

(assert (=> d!2375779 (= res!3152447 ((_ is Nil!74566) (tail!15756 input!7927)))))

(assert (=> d!2375779 (= (isPrefix!6561 (tail!15756 input!7927) (tail!15756 input!7927)) lt!2699312)))

(declare-fun b!7948755 () Bool)

(assert (=> b!7948755 (= e!4689233 (>= (size!43397 (tail!15756 input!7927)) (size!43397 (tail!15756 input!7927))))))

(declare-fun b!7948754 () Bool)

(declare-fun e!4689231 () Bool)

(assert (=> b!7948754 (= e!4689231 (isPrefix!6561 (tail!15756 (tail!15756 input!7927)) (tail!15756 (tail!15756 input!7927))))))

(declare-fun b!7948752 () Bool)

(assert (=> b!7948752 (= e!4689232 e!4689231)))

(declare-fun res!3152446 () Bool)

(assert (=> b!7948752 (=> (not res!3152446) (not e!4689231))))

(assert (=> b!7948752 (= res!3152446 (not ((_ is Nil!74566) (tail!15756 input!7927))))))

(declare-fun b!7948753 () Bool)

(declare-fun res!3152444 () Bool)

(assert (=> b!7948753 (=> (not res!3152444) (not e!4689231))))

(assert (=> b!7948753 (= res!3152444 (= (head!16213 (tail!15756 input!7927)) (head!16213 (tail!15756 input!7927))))))

(assert (= (and d!2375779 (not res!3152447)) b!7948752))

(assert (= (and b!7948752 res!3152446) b!7948753))

(assert (= (and b!7948753 res!3152444) b!7948754))

(assert (= (and d!2375779 (not res!3152445)) b!7948755))

(assert (=> b!7948755 m!8333364))

(assert (=> b!7948755 m!8333870))

(assert (=> b!7948755 m!8333364))

(assert (=> b!7948755 m!8333870))

(assert (=> b!7948754 m!8333364))

(assert (=> b!7948754 m!8333876))

(assert (=> b!7948754 m!8333364))

(assert (=> b!7948754 m!8333876))

(assert (=> b!7948754 m!8333876))

(assert (=> b!7948754 m!8333876))

(declare-fun m!8333948 () Bool)

(assert (=> b!7948754 m!8333948))

(assert (=> b!7948753 m!8333364))

(assert (=> b!7948753 m!8333882))

(assert (=> b!7948753 m!8333364))

(assert (=> b!7948753 m!8333882))

(assert (=> b!7948231 d!2375779))

(assert (=> b!7948231 d!2375747))

(assert (=> bm!736703 d!2375631))

(declare-fun d!2375781 () Bool)

(declare-fun lt!2699313 () List!74690)

(assert (=> d!2375781 (= (++!18331 (t!390433 testedP!447) lt!2699313) (tail!15756 input!7927))))

(declare-fun e!4689234 () List!74690)

(assert (=> d!2375781 (= lt!2699313 e!4689234)))

(declare-fun c!1460064 () Bool)

(assert (=> d!2375781 (= c!1460064 ((_ is Cons!74566) (t!390433 testedP!447)))))

(assert (=> d!2375781 (>= (size!43397 (tail!15756 input!7927)) (size!43397 (t!390433 testedP!447)))))

(assert (=> d!2375781 (= (getSuffix!3764 (tail!15756 input!7927) (t!390433 testedP!447)) lt!2699313)))

(declare-fun b!7948756 () Bool)

(assert (=> b!7948756 (= e!4689234 (getSuffix!3764 (tail!15756 (tail!15756 input!7927)) (t!390433 (t!390433 testedP!447))))))

(declare-fun b!7948757 () Bool)

(assert (=> b!7948757 (= e!4689234 (tail!15756 input!7927))))

(assert (= (and d!2375781 c!1460064) b!7948756))

(assert (= (and d!2375781 (not c!1460064)) b!7948757))

(declare-fun m!8333950 () Bool)

(assert (=> d!2375781 m!8333950))

(assert (=> d!2375781 m!8333364))

(assert (=> d!2375781 m!8333870))

(assert (=> d!2375781 m!8333496))

(assert (=> b!7948756 m!8333364))

(assert (=> b!7948756 m!8333876))

(assert (=> b!7948756 m!8333876))

(declare-fun m!8333952 () Bool)

(assert (=> b!7948756 m!8333952))

(assert (=> b!7948198 d!2375781))

(assert (=> b!7948198 d!2375747))

(assert (=> d!2375627 d!2375629))

(declare-fun d!2375783 () Bool)

(assert (=> d!2375783 (isPrefix!6561 input!7927 input!7927)))

(assert (=> d!2375783 true))

(declare-fun _$45!2449 () Unit!169778)

(assert (=> d!2375783 (= (choose!59884 input!7927 input!7927) _$45!2449)))

(declare-fun bs!1969495 () Bool)

(assert (= bs!1969495 d!2375783))

(assert (=> bs!1969495 m!8333334))

(assert (=> d!2375627 d!2375783))

(assert (=> bm!736702 d!2375629))

(declare-fun b!7948758 () Bool)

(declare-fun e!4689237 () Bool)

(declare-fun call!736782 () Bool)

(assert (=> b!7948758 (= e!4689237 call!736782)))

(declare-fun b!7948759 () Bool)

(declare-fun res!3152451 () Bool)

(declare-fun e!4689238 () Bool)

(assert (=> b!7948759 (=> res!3152451 e!4689238)))

(assert (=> b!7948759 (= res!3152451 (not ((_ is Concat!30460) lt!2699193)))))

(declare-fun e!4689240 () Bool)

(assert (=> b!7948759 (= e!4689240 e!4689238)))

(declare-fun b!7948760 () Bool)

(declare-fun e!4689241 () Bool)

(assert (=> b!7948760 (= e!4689241 e!4689240)))

(declare-fun c!1460066 () Bool)

(assert (=> b!7948760 (= c!1460066 ((_ is Union!21461) lt!2699193))))

(declare-fun bm!736777 () Bool)

(declare-fun c!1460065 () Bool)

(declare-fun call!736784 () Bool)

(assert (=> bm!736777 (= call!736784 (validRegex!11765 (ite c!1460065 (reg!21790 lt!2699193) (ite c!1460066 (regTwo!43435 lt!2699193) (regTwo!43434 lt!2699193)))))))

(declare-fun bm!736778 () Bool)

(assert (=> bm!736778 (= call!736782 call!736784)))

(declare-fun b!7948761 () Bool)

(declare-fun res!3152450 () Bool)

(declare-fun e!4689239 () Bool)

(assert (=> b!7948761 (=> (not res!3152450) (not e!4689239))))

(declare-fun call!736783 () Bool)

(assert (=> b!7948761 (= res!3152450 call!736783)))

(assert (=> b!7948761 (= e!4689240 e!4689239)))

(declare-fun bm!736779 () Bool)

(assert (=> bm!736779 (= call!736783 (validRegex!11765 (ite c!1460066 (regOne!43435 lt!2699193) (regOne!43434 lt!2699193))))))

(declare-fun b!7948762 () Bool)

(declare-fun e!4689235 () Bool)

(assert (=> b!7948762 (= e!4689241 e!4689235)))

(declare-fun res!3152452 () Bool)

(assert (=> b!7948762 (= res!3152452 (not (nullable!9564 (reg!21790 lt!2699193))))))

(assert (=> b!7948762 (=> (not res!3152452) (not e!4689235))))

(declare-fun d!2375785 () Bool)

(declare-fun res!3152449 () Bool)

(declare-fun e!4689236 () Bool)

(assert (=> d!2375785 (=> res!3152449 e!4689236)))

(assert (=> d!2375785 (= res!3152449 ((_ is ElementMatch!21461) lt!2699193))))

(assert (=> d!2375785 (= (validRegex!11765 lt!2699193) e!4689236)))

(declare-fun b!7948763 () Bool)

(assert (=> b!7948763 (= e!4689235 call!736784)))

(declare-fun b!7948764 () Bool)

(assert (=> b!7948764 (= e!4689238 e!4689237)))

(declare-fun res!3152448 () Bool)

(assert (=> b!7948764 (=> (not res!3152448) (not e!4689237))))

(assert (=> b!7948764 (= res!3152448 call!736783)))

(declare-fun b!7948765 () Bool)

(assert (=> b!7948765 (= e!4689236 e!4689241)))

(assert (=> b!7948765 (= c!1460065 ((_ is Star!21461) lt!2699193))))

(declare-fun b!7948766 () Bool)

(assert (=> b!7948766 (= e!4689239 call!736782)))

(assert (= (and d!2375785 (not res!3152449)) b!7948765))

(assert (= (and b!7948765 c!1460065) b!7948762))

(assert (= (and b!7948765 (not c!1460065)) b!7948760))

(assert (= (and b!7948762 res!3152452) b!7948763))

(assert (= (and b!7948760 c!1460066) b!7948761))

(assert (= (and b!7948760 (not c!1460066)) b!7948759))

(assert (= (and b!7948761 res!3152450) b!7948766))

(assert (= (and b!7948759 (not res!3152451)) b!7948764))

(assert (= (and b!7948764 res!3152448) b!7948758))

(assert (= (or b!7948766 b!7948758) bm!736778))

(assert (= (or b!7948761 b!7948764) bm!736779))

(assert (= (or b!7948763 bm!736778) bm!736777))

(declare-fun m!8333954 () Bool)

(assert (=> bm!736777 m!8333954))

(declare-fun m!8333956 () Bool)

(assert (=> bm!736779 m!8333956))

(declare-fun m!8333958 () Bool)

(assert (=> b!7948762 m!8333958))

(assert (=> d!2375633 d!2375785))

(assert (=> d!2375633 d!2375623))

(declare-fun d!2375787 () Bool)

(assert (=> d!2375787 (= (nullable!9564 (reg!21790 baseR!116)) (nullableFct!3766 (reg!21790 baseR!116)))))

(declare-fun bs!1969496 () Bool)

(assert (= bs!1969496 d!2375787))

(declare-fun m!8333960 () Bool)

(assert (=> bs!1969496 m!8333960))

(assert (=> b!7948224 d!2375787))

(declare-fun d!2375789 () Bool)

(declare-fun lt!2699314 () Int)

(assert (=> d!2375789 (>= lt!2699314 0)))

(declare-fun e!4689242 () Int)

(assert (=> d!2375789 (= lt!2699314 e!4689242)))

(declare-fun c!1460067 () Bool)

(assert (=> d!2375789 (= c!1460067 ((_ is Nil!74566) (t!390433 input!7927)))))

(assert (=> d!2375789 (= (size!43397 (t!390433 input!7927)) lt!2699314)))

(declare-fun b!7948767 () Bool)

(assert (=> b!7948767 (= e!4689242 0)))

(declare-fun b!7948768 () Bool)

(assert (=> b!7948768 (= e!4689242 (+ 1 (size!43397 (t!390433 (t!390433 input!7927)))))))

(assert (= (and d!2375789 c!1460067) b!7948767))

(assert (= (and d!2375789 (not c!1460067)) b!7948768))

(declare-fun m!8333962 () Bool)

(assert (=> b!7948768 m!8333962))

(assert (=> b!7948016 d!2375789))

(declare-fun b!7948769 () Bool)

(declare-fun e!4689245 () Bool)

(declare-fun call!736785 () Bool)

(assert (=> b!7948769 (= e!4689245 call!736785)))

(declare-fun b!7948770 () Bool)

(declare-fun res!3152456 () Bool)

(declare-fun e!4689246 () Bool)

(assert (=> b!7948770 (=> res!3152456 e!4689246)))

(assert (=> b!7948770 (= res!3152456 (not ((_ is Concat!30460) (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116)))))))

(declare-fun e!4689248 () Bool)

(assert (=> b!7948770 (= e!4689248 e!4689246)))

(declare-fun b!7948771 () Bool)

(declare-fun e!4689249 () Bool)

(assert (=> b!7948771 (= e!4689249 e!4689248)))

(declare-fun c!1460069 () Bool)

(assert (=> b!7948771 (= c!1460069 ((_ is Union!21461) (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))

(declare-fun call!736787 () Bool)

(declare-fun c!1460068 () Bool)

(declare-fun bm!736780 () Bool)

(assert (=> bm!736780 (= call!736787 (validRegex!11765 (ite c!1460068 (reg!21790 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))) (ite c!1460069 (regTwo!43435 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))) (regTwo!43434 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116)))))))))

(declare-fun bm!736781 () Bool)

(assert (=> bm!736781 (= call!736785 call!736787)))

(declare-fun b!7948772 () Bool)

(declare-fun res!3152455 () Bool)

(declare-fun e!4689247 () Bool)

(assert (=> b!7948772 (=> (not res!3152455) (not e!4689247))))

(declare-fun call!736786 () Bool)

(assert (=> b!7948772 (= res!3152455 call!736786)))

(assert (=> b!7948772 (= e!4689248 e!4689247)))

(declare-fun bm!736782 () Bool)

(assert (=> bm!736782 (= call!736786 (validRegex!11765 (ite c!1460069 (regOne!43435 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))) (regOne!43434 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))))

(declare-fun b!7948773 () Bool)

(declare-fun e!4689243 () Bool)

(assert (=> b!7948773 (= e!4689249 e!4689243)))

(declare-fun res!3152457 () Bool)

(assert (=> b!7948773 (= res!3152457 (not (nullable!9564 (reg!21790 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))))

(assert (=> b!7948773 (=> (not res!3152457) (not e!4689243))))

(declare-fun d!2375791 () Bool)

(declare-fun res!3152454 () Bool)

(declare-fun e!4689244 () Bool)

(assert (=> d!2375791 (=> res!3152454 e!4689244)))

(assert (=> d!2375791 (= res!3152454 ((_ is ElementMatch!21461) (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))

(assert (=> d!2375791 (= (validRegex!11765 (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))) e!4689244)))

(declare-fun b!7948774 () Bool)

(assert (=> b!7948774 (= e!4689243 call!736787)))

(declare-fun b!7948775 () Bool)

(assert (=> b!7948775 (= e!4689246 e!4689245)))

(declare-fun res!3152453 () Bool)

(assert (=> b!7948775 (=> (not res!3152453) (not e!4689245))))

(assert (=> b!7948775 (= res!3152453 call!736786)))

(declare-fun b!7948776 () Bool)

(assert (=> b!7948776 (= e!4689244 e!4689249)))

(assert (=> b!7948776 (= c!1460068 ((_ is Star!21461) (ite c!1459979 (regOne!43435 baseR!116) (regOne!43434 baseR!116))))))

(declare-fun b!7948777 () Bool)

(assert (=> b!7948777 (= e!4689247 call!736785)))

(assert (= (and d!2375791 (not res!3152454)) b!7948776))

(assert (= (and b!7948776 c!1460068) b!7948773))

(assert (= (and b!7948776 (not c!1460068)) b!7948771))

(assert (= (and b!7948773 res!3152457) b!7948774))

(assert (= (and b!7948771 c!1460069) b!7948772))

(assert (= (and b!7948771 (not c!1460069)) b!7948770))

(assert (= (and b!7948772 res!3152455) b!7948777))

(assert (= (and b!7948770 (not res!3152456)) b!7948775))

(assert (= (and b!7948775 res!3152453) b!7948769))

(assert (= (or b!7948777 b!7948769) bm!736781))

(assert (= (or b!7948772 b!7948775) bm!736782))

(assert (= (or b!7948774 bm!736781) bm!736780))

(declare-fun m!8333964 () Bool)

(assert (=> bm!736780 m!8333964))

(declare-fun m!8333966 () Bool)

(assert (=> bm!736782 m!8333966))

(declare-fun m!8333968 () Bool)

(assert (=> b!7948773 m!8333968))

(assert (=> bm!736717 d!2375791))

(declare-fun d!2375793 () Bool)

(declare-fun lt!2699315 () Regex!21461)

(assert (=> d!2375793 (validRegex!11765 lt!2699315)))

(declare-fun e!4689250 () Regex!21461)

(assert (=> d!2375793 (= lt!2699315 e!4689250)))

(declare-fun c!1460070 () Bool)

(assert (=> d!2375793 (= c!1460070 ((_ is Cons!74566) (t!390433 testedP!447)))))

(assert (=> d!2375793 (validRegex!11765 (derivativeStep!6491 baseR!116 (h!81014 testedP!447)))))

(assert (=> d!2375793 (= (derivative!647 (derivativeStep!6491 baseR!116 (h!81014 testedP!447)) (t!390433 testedP!447)) lt!2699315)))

(declare-fun b!7948778 () Bool)

(assert (=> b!7948778 (= e!4689250 (derivative!647 (derivativeStep!6491 (derivativeStep!6491 baseR!116 (h!81014 testedP!447)) (h!81014 (t!390433 testedP!447))) (t!390433 (t!390433 testedP!447))))))

(declare-fun b!7948779 () Bool)

(assert (=> b!7948779 (= e!4689250 (derivativeStep!6491 baseR!116 (h!81014 testedP!447)))))

(assert (= (and d!2375793 c!1460070) b!7948778))

(assert (= (and d!2375793 (not c!1460070)) b!7948779))

(declare-fun m!8333970 () Bool)

(assert (=> d!2375793 m!8333970))

(assert (=> d!2375793 m!8333514))

(declare-fun m!8333972 () Bool)

(assert (=> d!2375793 m!8333972))

(assert (=> b!7948778 m!8333514))

(declare-fun m!8333974 () Bool)

(assert (=> b!7948778 m!8333974))

(assert (=> b!7948778 m!8333974))

(declare-fun m!8333976 () Bool)

(assert (=> b!7948778 m!8333976))

(assert (=> b!7948237 d!2375793))

(declare-fun b!7948780 () Bool)

(declare-fun e!4689253 () Regex!21461)

(declare-fun e!4689251 () Regex!21461)

(assert (=> b!7948780 (= e!4689253 e!4689251)))

(declare-fun c!1460072 () Bool)

(assert (=> b!7948780 (= c!1460072 ((_ is ElementMatch!21461) baseR!116))))

(declare-fun b!7948781 () Bool)

(declare-fun e!4689254 () Regex!21461)

(declare-fun call!736789 () Regex!21461)

(assert (=> b!7948781 (= e!4689254 (Union!21461 (Concat!30460 call!736789 (regTwo!43434 baseR!116)) EmptyLang!21461))))

(declare-fun b!7948782 () Bool)

(declare-fun e!4689255 () Regex!21461)

(declare-fun call!736791 () Regex!21461)

(assert (=> b!7948782 (= e!4689255 (Concat!30460 call!736791 baseR!116))))

(declare-fun d!2375795 () Bool)

(declare-fun lt!2699316 () Regex!21461)

(assert (=> d!2375795 (validRegex!11765 lt!2699316)))

(assert (=> d!2375795 (= lt!2699316 e!4689253)))

(declare-fun c!1460075 () Bool)

(assert (=> d!2375795 (= c!1460075 (or ((_ is EmptyExpr!21461) baseR!116) ((_ is EmptyLang!21461) baseR!116)))))

(assert (=> d!2375795 (validRegex!11765 baseR!116)))

(assert (=> d!2375795 (= (derivativeStep!6491 baseR!116 (h!81014 testedP!447)) lt!2699316)))

(declare-fun b!7948783 () Bool)

(declare-fun c!1460074 () Bool)

(assert (=> b!7948783 (= c!1460074 (nullable!9564 (regOne!43434 baseR!116)))))

(assert (=> b!7948783 (= e!4689255 e!4689254)))

(declare-fun b!7948784 () Bool)

(declare-fun e!4689252 () Regex!21461)

(declare-fun call!736788 () Regex!21461)

(declare-fun call!736790 () Regex!21461)

(assert (=> b!7948784 (= e!4689252 (Union!21461 call!736788 call!736790))))

(declare-fun bm!736783 () Bool)

(assert (=> bm!736783 (= call!736791 call!736790)))

(declare-fun bm!736784 () Bool)

(assert (=> bm!736784 (= call!736789 call!736791)))

(declare-fun c!1460071 () Bool)

(declare-fun bm!736785 () Bool)

(assert (=> bm!736785 (= call!736788 (derivativeStep!6491 (ite c!1460071 (regOne!43435 baseR!116) (regOne!43434 baseR!116)) (h!81014 testedP!447)))))

(declare-fun c!1460073 () Bool)

(declare-fun bm!736786 () Bool)

(assert (=> bm!736786 (= call!736790 (derivativeStep!6491 (ite c!1460071 (regTwo!43435 baseR!116) (ite c!1460073 (reg!21790 baseR!116) (ite c!1460074 (regTwo!43434 baseR!116) (regOne!43434 baseR!116)))) (h!81014 testedP!447)))))

(declare-fun b!7948785 () Bool)

(assert (=> b!7948785 (= e!4689252 e!4689255)))

(assert (=> b!7948785 (= c!1460073 ((_ is Star!21461) baseR!116))))

(declare-fun b!7948786 () Bool)

(assert (=> b!7948786 (= c!1460071 ((_ is Union!21461) baseR!116))))

(assert (=> b!7948786 (= e!4689251 e!4689252)))

(declare-fun b!7948787 () Bool)

(assert (=> b!7948787 (= e!4689253 EmptyLang!21461)))

(declare-fun b!7948788 () Bool)

(assert (=> b!7948788 (= e!4689254 (Union!21461 (Concat!30460 call!736788 (regTwo!43434 baseR!116)) call!736789))))

(declare-fun b!7948789 () Bool)

(assert (=> b!7948789 (= e!4689251 (ite (= (h!81014 testedP!447) (c!1459914 baseR!116)) EmptyExpr!21461 EmptyLang!21461))))

(assert (= (and d!2375795 c!1460075) b!7948787))

(assert (= (and d!2375795 (not c!1460075)) b!7948780))

(assert (= (and b!7948780 c!1460072) b!7948789))

(assert (= (and b!7948780 (not c!1460072)) b!7948786))

(assert (= (and b!7948786 c!1460071) b!7948784))

(assert (= (and b!7948786 (not c!1460071)) b!7948785))

(assert (= (and b!7948785 c!1460073) b!7948782))

(assert (= (and b!7948785 (not c!1460073)) b!7948783))

(assert (= (and b!7948783 c!1460074) b!7948788))

(assert (= (and b!7948783 (not c!1460074)) b!7948781))

(assert (= (or b!7948788 b!7948781) bm!736784))

(assert (= (or b!7948782 bm!736784) bm!736783))

(assert (= (or b!7948784 bm!736783) bm!736786))

(assert (= (or b!7948784 b!7948788) bm!736785))

(declare-fun m!8333978 () Bool)

(assert (=> d!2375795 m!8333978))

(assert (=> d!2375795 m!8333338))

(declare-fun m!8333980 () Bool)

(assert (=> b!7948783 m!8333980))

(declare-fun m!8333982 () Bool)

(assert (=> bm!736785 m!8333982))

(declare-fun m!8333984 () Bool)

(assert (=> bm!736786 m!8333984))

(assert (=> b!7948237 d!2375795))

(assert (=> bm!736701 d!2375731))

(declare-fun b!7948790 () Bool)

(declare-fun e!4689258 () Bool)

(declare-fun call!736792 () Bool)

(assert (=> b!7948790 (= e!4689258 call!736792)))

(declare-fun b!7948791 () Bool)

(declare-fun res!3152461 () Bool)

(declare-fun e!4689259 () Bool)

(assert (=> b!7948791 (=> res!3152461 e!4689259)))

(assert (=> b!7948791 (= res!3152461 (not ((_ is Concat!30460) (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116))))))))

(declare-fun e!4689261 () Bool)

(assert (=> b!7948791 (= e!4689261 e!4689259)))

(declare-fun b!7948792 () Bool)

(declare-fun e!4689262 () Bool)

(assert (=> b!7948792 (= e!4689262 e!4689261)))

(declare-fun c!1460077 () Bool)

(assert (=> b!7948792 (= c!1460077 ((_ is Union!21461) (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))

(declare-fun c!1460076 () Bool)

(declare-fun call!736794 () Bool)

(declare-fun bm!736787 () Bool)

(assert (=> bm!736787 (= call!736794 (validRegex!11765 (ite c!1460076 (reg!21790 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))) (ite c!1460077 (regTwo!43435 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))) (regTwo!43434 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116))))))))))

(declare-fun bm!736788 () Bool)

(assert (=> bm!736788 (= call!736792 call!736794)))

(declare-fun b!7948793 () Bool)

(declare-fun res!3152460 () Bool)

(declare-fun e!4689260 () Bool)

(assert (=> b!7948793 (=> (not res!3152460) (not e!4689260))))

(declare-fun call!736793 () Bool)

(assert (=> b!7948793 (= res!3152460 call!736793)))

(assert (=> b!7948793 (= e!4689261 e!4689260)))

(declare-fun bm!736789 () Bool)

(assert (=> bm!736789 (= call!736793 (validRegex!11765 (ite c!1460077 (regOne!43435 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))) (regOne!43434 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))))

(declare-fun b!7948794 () Bool)

(declare-fun e!4689256 () Bool)

(assert (=> b!7948794 (= e!4689262 e!4689256)))

(declare-fun res!3152462 () Bool)

(assert (=> b!7948794 (= res!3152462 (not (nullable!9564 (reg!21790 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))))

(assert (=> b!7948794 (=> (not res!3152462) (not e!4689256))))

(declare-fun d!2375797 () Bool)

(declare-fun res!3152459 () Bool)

(declare-fun e!4689257 () Bool)

(assert (=> d!2375797 (=> res!3152459 e!4689257)))

(assert (=> d!2375797 (= res!3152459 ((_ is ElementMatch!21461) (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))

(assert (=> d!2375797 (= (validRegex!11765 (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))) e!4689257)))

(declare-fun b!7948795 () Bool)

(assert (=> b!7948795 (= e!4689256 call!736794)))

(declare-fun b!7948796 () Bool)

(assert (=> b!7948796 (= e!4689259 e!4689258)))

(declare-fun res!3152458 () Bool)

(assert (=> b!7948796 (=> (not res!3152458) (not e!4689258))))

(assert (=> b!7948796 (= res!3152458 call!736793)))

(declare-fun b!7948797 () Bool)

(assert (=> b!7948797 (= e!4689257 e!4689262)))

(assert (=> b!7948797 (= c!1460076 ((_ is Star!21461) (ite c!1459978 (reg!21790 baseR!116) (ite c!1459979 (regTwo!43435 baseR!116) (regTwo!43434 baseR!116)))))))

(declare-fun b!7948798 () Bool)

(assert (=> b!7948798 (= e!4689260 call!736792)))

(assert (= (and d!2375797 (not res!3152459)) b!7948797))

(assert (= (and b!7948797 c!1460076) b!7948794))

(assert (= (and b!7948797 (not c!1460076)) b!7948792))

(assert (= (and b!7948794 res!3152462) b!7948795))

(assert (= (and b!7948792 c!1460077) b!7948793))

(assert (= (and b!7948792 (not c!1460077)) b!7948791))

(assert (= (and b!7948793 res!3152460) b!7948798))

(assert (= (and b!7948791 (not res!3152461)) b!7948796))

(assert (= (and b!7948796 res!3152458) b!7948790))

(assert (= (or b!7948798 b!7948790) bm!736788))

(assert (= (or b!7948793 b!7948796) bm!736789))

(assert (= (or b!7948795 bm!736788) bm!736787))

(declare-fun m!8333986 () Bool)

(assert (=> bm!736787 m!8333986))

(declare-fun m!8333988 () Bool)

(assert (=> bm!736789 m!8333988))

(declare-fun m!8333990 () Bool)

(assert (=> b!7948794 m!8333990))

(assert (=> bm!736715 d!2375797))

(declare-fun d!2375799 () Bool)

(assert (=> d!2375799 (= (isEmpty!42865 (_1!38595 lt!2699171)) ((_ is Nil!74566) (_1!38595 lt!2699171)))))

(assert (=> b!7948180 d!2375799))

(assert (=> bm!736708 d!2375735))

(declare-fun d!2375801 () Bool)

(declare-fun lt!2699317 () Int)

(assert (=> d!2375801 (>= lt!2699317 0)))

(declare-fun e!4689263 () Int)

(assert (=> d!2375801 (= lt!2699317 e!4689263)))

(declare-fun c!1460078 () Bool)

(assert (=> d!2375801 (= c!1460078 ((_ is Nil!74566) (t!390433 testedP!447)))))

(assert (=> d!2375801 (= (size!43397 (t!390433 testedP!447)) lt!2699317)))

(declare-fun b!7948799 () Bool)

(assert (=> b!7948799 (= e!4689263 0)))

(declare-fun b!7948800 () Bool)

(assert (=> b!7948800 (= e!4689263 (+ 1 (size!43397 (t!390433 (t!390433 testedP!447)))))))

(assert (= (and d!2375801 c!1460078) b!7948799))

(assert (= (and d!2375801 (not c!1460078)) b!7948800))

(declare-fun m!8333992 () Bool)

(assert (=> b!7948800 m!8333992))

(assert (=> b!7948201 d!2375801))

(assert (=> bm!736707 d!2375627))

(declare-fun b!7948802 () Bool)

(declare-fun e!4689264 () Bool)

(declare-fun tp!2365059 () Bool)

(declare-fun tp!2365063 () Bool)

(assert (=> b!7948802 (= e!4689264 (and tp!2365059 tp!2365063))))

(declare-fun b!7948803 () Bool)

(declare-fun tp!2365061 () Bool)

(assert (=> b!7948803 (= e!4689264 tp!2365061)))

(declare-fun b!7948804 () Bool)

(declare-fun tp!2365062 () Bool)

(declare-fun tp!2365060 () Bool)

(assert (=> b!7948804 (= e!4689264 (and tp!2365062 tp!2365060))))

(assert (=> b!7948282 (= tp!2364793 e!4689264)))

(declare-fun b!7948801 () Bool)

(assert (=> b!7948801 (= e!4689264 tp_is_empty!53465)))

(assert (= (and b!7948282 ((_ is ElementMatch!21461) (regOne!43434 (regTwo!43434 r!24602)))) b!7948801))

(assert (= (and b!7948282 ((_ is Concat!30460) (regOne!43434 (regTwo!43434 r!24602)))) b!7948802))

(assert (= (and b!7948282 ((_ is Star!21461) (regOne!43434 (regTwo!43434 r!24602)))) b!7948803))

(assert (= (and b!7948282 ((_ is Union!21461) (regOne!43434 (regTwo!43434 r!24602)))) b!7948804))

(declare-fun b!7948806 () Bool)

(declare-fun e!4689265 () Bool)

(declare-fun tp!2365064 () Bool)

(declare-fun tp!2365068 () Bool)

(assert (=> b!7948806 (= e!4689265 (and tp!2365064 tp!2365068))))

(declare-fun b!7948807 () Bool)

(declare-fun tp!2365066 () Bool)

(assert (=> b!7948807 (= e!4689265 tp!2365066)))

(declare-fun b!7948808 () Bool)

(declare-fun tp!2365067 () Bool)

(declare-fun tp!2365065 () Bool)

(assert (=> b!7948808 (= e!4689265 (and tp!2365067 tp!2365065))))

(assert (=> b!7948282 (= tp!2364797 e!4689265)))

(declare-fun b!7948805 () Bool)

(assert (=> b!7948805 (= e!4689265 tp_is_empty!53465)))

(assert (= (and b!7948282 ((_ is ElementMatch!21461) (regTwo!43434 (regTwo!43434 r!24602)))) b!7948805))

(assert (= (and b!7948282 ((_ is Concat!30460) (regTwo!43434 (regTwo!43434 r!24602)))) b!7948806))

(assert (= (and b!7948282 ((_ is Star!21461) (regTwo!43434 (regTwo!43434 r!24602)))) b!7948807))

(assert (= (and b!7948282 ((_ is Union!21461) (regTwo!43434 (regTwo!43434 r!24602)))) b!7948808))

(declare-fun b!7948809 () Bool)

(declare-fun e!4689266 () Bool)

(declare-fun tp!2365069 () Bool)

(assert (=> b!7948809 (= e!4689266 (and tp_is_empty!53465 tp!2365069))))

(assert (=> b!7948290 (= tp!2364801 e!4689266)))

(assert (= (and b!7948290 ((_ is Cons!74566) (t!390433 (t!390433 testedP!447)))) b!7948809))

(declare-fun b!7948810 () Bool)

(declare-fun e!4689267 () Bool)

(declare-fun tp!2365070 () Bool)

(assert (=> b!7948810 (= e!4689267 (and tp_is_empty!53465 tp!2365070))))

(assert (=> b!7948289 (= tp!2364800 e!4689267)))

(assert (= (and b!7948289 ((_ is Cons!74566) (t!390433 (t!390433 input!7927)))) b!7948810))

(declare-fun b!7948812 () Bool)

(declare-fun e!4689268 () Bool)

(declare-fun tp!2365071 () Bool)

(declare-fun tp!2365075 () Bool)

(assert (=> b!7948812 (= e!4689268 (and tp!2365071 tp!2365075))))

(declare-fun b!7948813 () Bool)

(declare-fun tp!2365073 () Bool)

(assert (=> b!7948813 (= e!4689268 tp!2365073)))

(declare-fun b!7948814 () Bool)

(declare-fun tp!2365074 () Bool)

(declare-fun tp!2365072 () Bool)

(assert (=> b!7948814 (= e!4689268 (and tp!2365074 tp!2365072))))

(assert (=> b!7948256 (= tp!2364761 e!4689268)))

(declare-fun b!7948811 () Bool)

(assert (=> b!7948811 (= e!4689268 tp_is_empty!53465)))

(assert (= (and b!7948256 ((_ is ElementMatch!21461) (regOne!43435 (regTwo!43435 r!24602)))) b!7948811))

(assert (= (and b!7948256 ((_ is Concat!30460) (regOne!43435 (regTwo!43435 r!24602)))) b!7948812))

(assert (= (and b!7948256 ((_ is Star!21461) (regOne!43435 (regTwo!43435 r!24602)))) b!7948813))

(assert (= (and b!7948256 ((_ is Union!21461) (regOne!43435 (regTwo!43435 r!24602)))) b!7948814))

(declare-fun b!7948816 () Bool)

(declare-fun e!4689269 () Bool)

(declare-fun tp!2365076 () Bool)

(declare-fun tp!2365080 () Bool)

(assert (=> b!7948816 (= e!4689269 (and tp!2365076 tp!2365080))))

(declare-fun b!7948817 () Bool)

(declare-fun tp!2365078 () Bool)

(assert (=> b!7948817 (= e!4689269 tp!2365078)))

(declare-fun b!7948818 () Bool)

(declare-fun tp!2365079 () Bool)

(declare-fun tp!2365077 () Bool)

(assert (=> b!7948818 (= e!4689269 (and tp!2365079 tp!2365077))))

(assert (=> b!7948256 (= tp!2364759 e!4689269)))

(declare-fun b!7948815 () Bool)

(assert (=> b!7948815 (= e!4689269 tp_is_empty!53465)))

(assert (= (and b!7948256 ((_ is ElementMatch!21461) (regTwo!43435 (regTwo!43435 r!24602)))) b!7948815))

(assert (= (and b!7948256 ((_ is Concat!30460) (regTwo!43435 (regTwo!43435 r!24602)))) b!7948816))

(assert (= (and b!7948256 ((_ is Star!21461) (regTwo!43435 (regTwo!43435 r!24602)))) b!7948817))

(assert (= (and b!7948256 ((_ is Union!21461) (regTwo!43435 (regTwo!43435 r!24602)))) b!7948818))

(declare-fun b!7948820 () Bool)

(declare-fun e!4689270 () Bool)

(declare-fun tp!2365081 () Bool)

(declare-fun tp!2365085 () Bool)

(assert (=> b!7948820 (= e!4689270 (and tp!2365081 tp!2365085))))

(declare-fun b!7948821 () Bool)

(declare-fun tp!2365083 () Bool)

(assert (=> b!7948821 (= e!4689270 tp!2365083)))

(declare-fun b!7948822 () Bool)

(declare-fun tp!2365084 () Bool)

(declare-fun tp!2365082 () Bool)

(assert (=> b!7948822 (= e!4689270 (and tp!2365084 tp!2365082))))

(assert (=> b!7948254 (= tp!2364758 e!4689270)))

(declare-fun b!7948819 () Bool)

(assert (=> b!7948819 (= e!4689270 tp_is_empty!53465)))

(assert (= (and b!7948254 ((_ is ElementMatch!21461) (regOne!43434 (regTwo!43435 r!24602)))) b!7948819))

(assert (= (and b!7948254 ((_ is Concat!30460) (regOne!43434 (regTwo!43435 r!24602)))) b!7948820))

(assert (= (and b!7948254 ((_ is Star!21461) (regOne!43434 (regTwo!43435 r!24602)))) b!7948821))

(assert (= (and b!7948254 ((_ is Union!21461) (regOne!43434 (regTwo!43435 r!24602)))) b!7948822))

(declare-fun b!7948824 () Bool)

(declare-fun e!4689271 () Bool)

(declare-fun tp!2365086 () Bool)

(declare-fun tp!2365090 () Bool)

(assert (=> b!7948824 (= e!4689271 (and tp!2365086 tp!2365090))))

(declare-fun b!7948825 () Bool)

(declare-fun tp!2365088 () Bool)

(assert (=> b!7948825 (= e!4689271 tp!2365088)))

(declare-fun b!7948826 () Bool)

(declare-fun tp!2365089 () Bool)

(declare-fun tp!2365087 () Bool)

(assert (=> b!7948826 (= e!4689271 (and tp!2365089 tp!2365087))))

(assert (=> b!7948254 (= tp!2364762 e!4689271)))

(declare-fun b!7948823 () Bool)

(assert (=> b!7948823 (= e!4689271 tp_is_empty!53465)))

(assert (= (and b!7948254 ((_ is ElementMatch!21461) (regTwo!43434 (regTwo!43435 r!24602)))) b!7948823))

(assert (= (and b!7948254 ((_ is Concat!30460) (regTwo!43434 (regTwo!43435 r!24602)))) b!7948824))

(assert (= (and b!7948254 ((_ is Star!21461) (regTwo!43434 (regTwo!43435 r!24602)))) b!7948825))

(assert (= (and b!7948254 ((_ is Union!21461) (regTwo!43434 (regTwo!43435 r!24602)))) b!7948826))

(declare-fun b!7948828 () Bool)

(declare-fun e!4689272 () Bool)

(declare-fun tp!2365091 () Bool)

(declare-fun tp!2365095 () Bool)

(assert (=> b!7948828 (= e!4689272 (and tp!2365091 tp!2365095))))

(declare-fun b!7948829 () Bool)

(declare-fun tp!2365093 () Bool)

(assert (=> b!7948829 (= e!4689272 tp!2365093)))

(declare-fun b!7948830 () Bool)

(declare-fun tp!2365094 () Bool)

(declare-fun tp!2365092 () Bool)

(assert (=> b!7948830 (= e!4689272 (and tp!2365094 tp!2365092))))

(assert (=> b!7948255 (= tp!2364760 e!4689272)))

(declare-fun b!7948827 () Bool)

(assert (=> b!7948827 (= e!4689272 tp_is_empty!53465)))

(assert (= (and b!7948255 ((_ is ElementMatch!21461) (reg!21790 (regTwo!43435 r!24602)))) b!7948827))

(assert (= (and b!7948255 ((_ is Concat!30460) (reg!21790 (regTwo!43435 r!24602)))) b!7948828))

(assert (= (and b!7948255 ((_ is Star!21461) (reg!21790 (regTwo!43435 r!24602)))) b!7948829))

(assert (= (and b!7948255 ((_ is Union!21461) (reg!21790 (regTwo!43435 r!24602)))) b!7948830))

(declare-fun b!7948832 () Bool)

(declare-fun e!4689273 () Bool)

(declare-fun tp!2365096 () Bool)

(declare-fun tp!2365100 () Bool)

(assert (=> b!7948832 (= e!4689273 (and tp!2365096 tp!2365100))))

(declare-fun b!7948833 () Bool)

(declare-fun tp!2365098 () Bool)

(assert (=> b!7948833 (= e!4689273 tp!2365098)))

(declare-fun b!7948834 () Bool)

(declare-fun tp!2365099 () Bool)

(declare-fun tp!2365097 () Bool)

(assert (=> b!7948834 (= e!4689273 (and tp!2365099 tp!2365097))))

(assert (=> b!7948264 (= tp!2364771 e!4689273)))

(declare-fun b!7948831 () Bool)

(assert (=> b!7948831 (= e!4689273 tp_is_empty!53465)))

(assert (= (and b!7948264 ((_ is ElementMatch!21461) (regOne!43435 (regOne!43434 baseR!116)))) b!7948831))

(assert (= (and b!7948264 ((_ is Concat!30460) (regOne!43435 (regOne!43434 baseR!116)))) b!7948832))

(assert (= (and b!7948264 ((_ is Star!21461) (regOne!43435 (regOne!43434 baseR!116)))) b!7948833))

(assert (= (and b!7948264 ((_ is Union!21461) (regOne!43435 (regOne!43434 baseR!116)))) b!7948834))

(declare-fun b!7948836 () Bool)

(declare-fun e!4689274 () Bool)

(declare-fun tp!2365101 () Bool)

(declare-fun tp!2365105 () Bool)

(assert (=> b!7948836 (= e!4689274 (and tp!2365101 tp!2365105))))

(declare-fun b!7948837 () Bool)

(declare-fun tp!2365103 () Bool)

(assert (=> b!7948837 (= e!4689274 tp!2365103)))

(declare-fun b!7948838 () Bool)

(declare-fun tp!2365104 () Bool)

(declare-fun tp!2365102 () Bool)

(assert (=> b!7948838 (= e!4689274 (and tp!2365104 tp!2365102))))

(assert (=> b!7948264 (= tp!2364769 e!4689274)))

(declare-fun b!7948835 () Bool)

(assert (=> b!7948835 (= e!4689274 tp_is_empty!53465)))

(assert (= (and b!7948264 ((_ is ElementMatch!21461) (regTwo!43435 (regOne!43434 baseR!116)))) b!7948835))

(assert (= (and b!7948264 ((_ is Concat!30460) (regTwo!43435 (regOne!43434 baseR!116)))) b!7948836))

(assert (= (and b!7948264 ((_ is Star!21461) (regTwo!43435 (regOne!43434 baseR!116)))) b!7948837))

(assert (= (and b!7948264 ((_ is Union!21461) (regTwo!43435 (regOne!43434 baseR!116)))) b!7948838))

(declare-fun b!7948840 () Bool)

(declare-fun e!4689275 () Bool)

(declare-fun tp!2365106 () Bool)

(declare-fun tp!2365110 () Bool)

(assert (=> b!7948840 (= e!4689275 (and tp!2365106 tp!2365110))))

(declare-fun b!7948841 () Bool)

(declare-fun tp!2365108 () Bool)

(assert (=> b!7948841 (= e!4689275 tp!2365108)))

(declare-fun b!7948842 () Bool)

(declare-fun tp!2365109 () Bool)

(declare-fun tp!2365107 () Bool)

(assert (=> b!7948842 (= e!4689275 (and tp!2365109 tp!2365107))))

(assert (=> b!7948262 (= tp!2364768 e!4689275)))

(declare-fun b!7948839 () Bool)

(assert (=> b!7948839 (= e!4689275 tp_is_empty!53465)))

(assert (= (and b!7948262 ((_ is ElementMatch!21461) (regOne!43434 (regOne!43434 baseR!116)))) b!7948839))

(assert (= (and b!7948262 ((_ is Concat!30460) (regOne!43434 (regOne!43434 baseR!116)))) b!7948840))

(assert (= (and b!7948262 ((_ is Star!21461) (regOne!43434 (regOne!43434 baseR!116)))) b!7948841))

(assert (= (and b!7948262 ((_ is Union!21461) (regOne!43434 (regOne!43434 baseR!116)))) b!7948842))

(declare-fun b!7948844 () Bool)

(declare-fun e!4689276 () Bool)

(declare-fun tp!2365111 () Bool)

(declare-fun tp!2365115 () Bool)

(assert (=> b!7948844 (= e!4689276 (and tp!2365111 tp!2365115))))

(declare-fun b!7948845 () Bool)

(declare-fun tp!2365113 () Bool)

(assert (=> b!7948845 (= e!4689276 tp!2365113)))

(declare-fun b!7948846 () Bool)

(declare-fun tp!2365114 () Bool)

(declare-fun tp!2365112 () Bool)

(assert (=> b!7948846 (= e!4689276 (and tp!2365114 tp!2365112))))

(assert (=> b!7948262 (= tp!2364772 e!4689276)))

(declare-fun b!7948843 () Bool)

(assert (=> b!7948843 (= e!4689276 tp_is_empty!53465)))

(assert (= (and b!7948262 ((_ is ElementMatch!21461) (regTwo!43434 (regOne!43434 baseR!116)))) b!7948843))

(assert (= (and b!7948262 ((_ is Concat!30460) (regTwo!43434 (regOne!43434 baseR!116)))) b!7948844))

(assert (= (and b!7948262 ((_ is Star!21461) (regTwo!43434 (regOne!43434 baseR!116)))) b!7948845))

(assert (= (and b!7948262 ((_ is Union!21461) (regTwo!43434 (regOne!43434 baseR!116)))) b!7948846))

(declare-fun b!7948848 () Bool)

(declare-fun e!4689277 () Bool)

(declare-fun tp!2365116 () Bool)

(declare-fun tp!2365120 () Bool)

(assert (=> b!7948848 (= e!4689277 (and tp!2365116 tp!2365120))))

(declare-fun b!7948849 () Bool)

(declare-fun tp!2365118 () Bool)

(assert (=> b!7948849 (= e!4689277 tp!2365118)))

(declare-fun b!7948850 () Bool)

(declare-fun tp!2365119 () Bool)

(declare-fun tp!2365117 () Bool)

(assert (=> b!7948850 (= e!4689277 (and tp!2365119 tp!2365117))))

(assert (=> b!7948263 (= tp!2364770 e!4689277)))

(declare-fun b!7948847 () Bool)

(assert (=> b!7948847 (= e!4689277 tp_is_empty!53465)))

(assert (= (and b!7948263 ((_ is ElementMatch!21461) (reg!21790 (regOne!43434 baseR!116)))) b!7948847))

(assert (= (and b!7948263 ((_ is Concat!30460) (reg!21790 (regOne!43434 baseR!116)))) b!7948848))

(assert (= (and b!7948263 ((_ is Star!21461) (reg!21790 (regOne!43434 baseR!116)))) b!7948849))

(assert (= (and b!7948263 ((_ is Union!21461) (reg!21790 (regOne!43434 baseR!116)))) b!7948850))

(declare-fun b!7948852 () Bool)

(declare-fun e!4689278 () Bool)

(declare-fun tp!2365121 () Bool)

(declare-fun tp!2365125 () Bool)

(assert (=> b!7948852 (= e!4689278 (and tp!2365121 tp!2365125))))

(declare-fun b!7948853 () Bool)

(declare-fun tp!2365123 () Bool)

(assert (=> b!7948853 (= e!4689278 tp!2365123)))

(declare-fun b!7948854 () Bool)

(declare-fun tp!2365124 () Bool)

(declare-fun tp!2365122 () Bool)

(assert (=> b!7948854 (= e!4689278 (and tp!2365124 tp!2365122))))

(assert (=> b!7948272 (= tp!2364781 e!4689278)))

(declare-fun b!7948851 () Bool)

(assert (=> b!7948851 (= e!4689278 tp_is_empty!53465)))

(assert (= (and b!7948272 ((_ is ElementMatch!21461) (regOne!43435 (regOne!43435 baseR!116)))) b!7948851))

(assert (= (and b!7948272 ((_ is Concat!30460) (regOne!43435 (regOne!43435 baseR!116)))) b!7948852))

(assert (= (and b!7948272 ((_ is Star!21461) (regOne!43435 (regOne!43435 baseR!116)))) b!7948853))

(assert (= (and b!7948272 ((_ is Union!21461) (regOne!43435 (regOne!43435 baseR!116)))) b!7948854))

(declare-fun b!7948856 () Bool)

(declare-fun e!4689279 () Bool)

(declare-fun tp!2365126 () Bool)

(declare-fun tp!2365130 () Bool)

(assert (=> b!7948856 (= e!4689279 (and tp!2365126 tp!2365130))))

(declare-fun b!7948857 () Bool)

(declare-fun tp!2365128 () Bool)

(assert (=> b!7948857 (= e!4689279 tp!2365128)))

(declare-fun b!7948858 () Bool)

(declare-fun tp!2365129 () Bool)

(declare-fun tp!2365127 () Bool)

(assert (=> b!7948858 (= e!4689279 (and tp!2365129 tp!2365127))))

(assert (=> b!7948272 (= tp!2364779 e!4689279)))

(declare-fun b!7948855 () Bool)

(assert (=> b!7948855 (= e!4689279 tp_is_empty!53465)))

(assert (= (and b!7948272 ((_ is ElementMatch!21461) (regTwo!43435 (regOne!43435 baseR!116)))) b!7948855))

(assert (= (and b!7948272 ((_ is Concat!30460) (regTwo!43435 (regOne!43435 baseR!116)))) b!7948856))

(assert (= (and b!7948272 ((_ is Star!21461) (regTwo!43435 (regOne!43435 baseR!116)))) b!7948857))

(assert (= (and b!7948272 ((_ is Union!21461) (regTwo!43435 (regOne!43435 baseR!116)))) b!7948858))

(declare-fun b!7948860 () Bool)

(declare-fun e!4689280 () Bool)

(declare-fun tp!2365131 () Bool)

(declare-fun tp!2365135 () Bool)

(assert (=> b!7948860 (= e!4689280 (and tp!2365131 tp!2365135))))

(declare-fun b!7948861 () Bool)

(declare-fun tp!2365133 () Bool)

(assert (=> b!7948861 (= e!4689280 tp!2365133)))

(declare-fun b!7948862 () Bool)

(declare-fun tp!2365134 () Bool)

(declare-fun tp!2365132 () Bool)

(assert (=> b!7948862 (= e!4689280 (and tp!2365134 tp!2365132))))

(assert (=> b!7948270 (= tp!2364778 e!4689280)))

(declare-fun b!7948859 () Bool)

(assert (=> b!7948859 (= e!4689280 tp_is_empty!53465)))

(assert (= (and b!7948270 ((_ is ElementMatch!21461) (regOne!43434 (regOne!43435 baseR!116)))) b!7948859))

(assert (= (and b!7948270 ((_ is Concat!30460) (regOne!43434 (regOne!43435 baseR!116)))) b!7948860))

(assert (= (and b!7948270 ((_ is Star!21461) (regOne!43434 (regOne!43435 baseR!116)))) b!7948861))

(assert (= (and b!7948270 ((_ is Union!21461) (regOne!43434 (regOne!43435 baseR!116)))) b!7948862))

(declare-fun b!7948864 () Bool)

(declare-fun e!4689281 () Bool)

(declare-fun tp!2365136 () Bool)

(declare-fun tp!2365140 () Bool)

(assert (=> b!7948864 (= e!4689281 (and tp!2365136 tp!2365140))))

(declare-fun b!7948865 () Bool)

(declare-fun tp!2365138 () Bool)

(assert (=> b!7948865 (= e!4689281 tp!2365138)))

(declare-fun b!7948866 () Bool)

(declare-fun tp!2365139 () Bool)

(declare-fun tp!2365137 () Bool)

(assert (=> b!7948866 (= e!4689281 (and tp!2365139 tp!2365137))))

(assert (=> b!7948270 (= tp!2364782 e!4689281)))

(declare-fun b!7948863 () Bool)

(assert (=> b!7948863 (= e!4689281 tp_is_empty!53465)))

(assert (= (and b!7948270 ((_ is ElementMatch!21461) (regTwo!43434 (regOne!43435 baseR!116)))) b!7948863))

(assert (= (and b!7948270 ((_ is Concat!30460) (regTwo!43434 (regOne!43435 baseR!116)))) b!7948864))

(assert (= (and b!7948270 ((_ is Star!21461) (regTwo!43434 (regOne!43435 baseR!116)))) b!7948865))

(assert (= (and b!7948270 ((_ is Union!21461) (regTwo!43434 (regOne!43435 baseR!116)))) b!7948866))

(declare-fun b!7948868 () Bool)

(declare-fun e!4689282 () Bool)

(declare-fun tp!2365141 () Bool)

(declare-fun tp!2365145 () Bool)

(assert (=> b!7948868 (= e!4689282 (and tp!2365141 tp!2365145))))

(declare-fun b!7948869 () Bool)

(declare-fun tp!2365143 () Bool)

(assert (=> b!7948869 (= e!4689282 tp!2365143)))

(declare-fun b!7948870 () Bool)

(declare-fun tp!2365144 () Bool)

(declare-fun tp!2365142 () Bool)

(assert (=> b!7948870 (= e!4689282 (and tp!2365144 tp!2365142))))

(assert (=> b!7948271 (= tp!2364780 e!4689282)))

(declare-fun b!7948867 () Bool)

(assert (=> b!7948867 (= e!4689282 tp_is_empty!53465)))

(assert (= (and b!7948271 ((_ is ElementMatch!21461) (reg!21790 (regOne!43435 baseR!116)))) b!7948867))

(assert (= (and b!7948271 ((_ is Concat!30460) (reg!21790 (regOne!43435 baseR!116)))) b!7948868))

(assert (= (and b!7948271 ((_ is Star!21461) (reg!21790 (regOne!43435 baseR!116)))) b!7948869))

(assert (= (and b!7948271 ((_ is Union!21461) (reg!21790 (regOne!43435 baseR!116)))) b!7948870))

(declare-fun b!7948872 () Bool)

(declare-fun e!4689283 () Bool)

(declare-fun tp!2365146 () Bool)

(declare-fun tp!2365150 () Bool)

(assert (=> b!7948872 (= e!4689283 (and tp!2365146 tp!2365150))))

(declare-fun b!7948873 () Bool)

(declare-fun tp!2365148 () Bool)

(assert (=> b!7948873 (= e!4689283 tp!2365148)))

(declare-fun b!7948874 () Bool)

(declare-fun tp!2365149 () Bool)

(declare-fun tp!2365147 () Bool)

(assert (=> b!7948874 (= e!4689283 (and tp!2365149 tp!2365147))))

(assert (=> b!7948280 (= tp!2364791 e!4689283)))

(declare-fun b!7948871 () Bool)

(assert (=> b!7948871 (= e!4689283 tp_is_empty!53465)))

(assert (= (and b!7948280 ((_ is ElementMatch!21461) (regOne!43435 (regOne!43434 r!24602)))) b!7948871))

(assert (= (and b!7948280 ((_ is Concat!30460) (regOne!43435 (regOne!43434 r!24602)))) b!7948872))

(assert (= (and b!7948280 ((_ is Star!21461) (regOne!43435 (regOne!43434 r!24602)))) b!7948873))

(assert (= (and b!7948280 ((_ is Union!21461) (regOne!43435 (regOne!43434 r!24602)))) b!7948874))

(declare-fun b!7948876 () Bool)

(declare-fun e!4689284 () Bool)

(declare-fun tp!2365151 () Bool)

(declare-fun tp!2365155 () Bool)

(assert (=> b!7948876 (= e!4689284 (and tp!2365151 tp!2365155))))

(declare-fun b!7948877 () Bool)

(declare-fun tp!2365153 () Bool)

(assert (=> b!7948877 (= e!4689284 tp!2365153)))

(declare-fun b!7948878 () Bool)

(declare-fun tp!2365154 () Bool)

(declare-fun tp!2365152 () Bool)

(assert (=> b!7948878 (= e!4689284 (and tp!2365154 tp!2365152))))

(assert (=> b!7948280 (= tp!2364789 e!4689284)))

(declare-fun b!7948875 () Bool)

(assert (=> b!7948875 (= e!4689284 tp_is_empty!53465)))

(assert (= (and b!7948280 ((_ is ElementMatch!21461) (regTwo!43435 (regOne!43434 r!24602)))) b!7948875))

(assert (= (and b!7948280 ((_ is Concat!30460) (regTwo!43435 (regOne!43434 r!24602)))) b!7948876))

(assert (= (and b!7948280 ((_ is Star!21461) (regTwo!43435 (regOne!43434 r!24602)))) b!7948877))

(assert (= (and b!7948280 ((_ is Union!21461) (regTwo!43435 (regOne!43434 r!24602)))) b!7948878))

(declare-fun b!7948880 () Bool)

(declare-fun e!4689285 () Bool)

(declare-fun tp!2365156 () Bool)

(declare-fun tp!2365160 () Bool)

(assert (=> b!7948880 (= e!4689285 (and tp!2365156 tp!2365160))))

(declare-fun b!7948881 () Bool)

(declare-fun tp!2365158 () Bool)

(assert (=> b!7948881 (= e!4689285 tp!2365158)))

(declare-fun b!7948882 () Bool)

(declare-fun tp!2365159 () Bool)

(declare-fun tp!2365157 () Bool)

(assert (=> b!7948882 (= e!4689285 (and tp!2365159 tp!2365157))))

(assert (=> b!7948278 (= tp!2364788 e!4689285)))

(declare-fun b!7948879 () Bool)

(assert (=> b!7948879 (= e!4689285 tp_is_empty!53465)))

(assert (= (and b!7948278 ((_ is ElementMatch!21461) (regOne!43434 (regOne!43434 r!24602)))) b!7948879))

(assert (= (and b!7948278 ((_ is Concat!30460) (regOne!43434 (regOne!43434 r!24602)))) b!7948880))

(assert (= (and b!7948278 ((_ is Star!21461) (regOne!43434 (regOne!43434 r!24602)))) b!7948881))

(assert (= (and b!7948278 ((_ is Union!21461) (regOne!43434 (regOne!43434 r!24602)))) b!7948882))

(declare-fun b!7948884 () Bool)

(declare-fun e!4689286 () Bool)

(declare-fun tp!2365161 () Bool)

(declare-fun tp!2365165 () Bool)

(assert (=> b!7948884 (= e!4689286 (and tp!2365161 tp!2365165))))

(declare-fun b!7948885 () Bool)

(declare-fun tp!2365163 () Bool)

(assert (=> b!7948885 (= e!4689286 tp!2365163)))

(declare-fun b!7948886 () Bool)

(declare-fun tp!2365164 () Bool)

(declare-fun tp!2365162 () Bool)

(assert (=> b!7948886 (= e!4689286 (and tp!2365164 tp!2365162))))

(assert (=> b!7948278 (= tp!2364792 e!4689286)))

(declare-fun b!7948883 () Bool)

(assert (=> b!7948883 (= e!4689286 tp_is_empty!53465)))

(assert (= (and b!7948278 ((_ is ElementMatch!21461) (regTwo!43434 (regOne!43434 r!24602)))) b!7948883))

(assert (= (and b!7948278 ((_ is Concat!30460) (regTwo!43434 (regOne!43434 r!24602)))) b!7948884))

(assert (= (and b!7948278 ((_ is Star!21461) (regTwo!43434 (regOne!43434 r!24602)))) b!7948885))

(assert (= (and b!7948278 ((_ is Union!21461) (regTwo!43434 (regOne!43434 r!24602)))) b!7948886))

(declare-fun b!7948888 () Bool)

(declare-fun e!4689287 () Bool)

(declare-fun tp!2365166 () Bool)

(declare-fun tp!2365170 () Bool)

(assert (=> b!7948888 (= e!4689287 (and tp!2365166 tp!2365170))))

(declare-fun b!7948889 () Bool)

(declare-fun tp!2365168 () Bool)

(assert (=> b!7948889 (= e!4689287 tp!2365168)))

(declare-fun b!7948890 () Bool)

(declare-fun tp!2365169 () Bool)

(declare-fun tp!2365167 () Bool)

(assert (=> b!7948890 (= e!4689287 (and tp!2365169 tp!2365167))))

(assert (=> b!7948279 (= tp!2364790 e!4689287)))

(declare-fun b!7948887 () Bool)

(assert (=> b!7948887 (= e!4689287 tp_is_empty!53465)))

(assert (= (and b!7948279 ((_ is ElementMatch!21461) (reg!21790 (regOne!43434 r!24602)))) b!7948887))

(assert (= (and b!7948279 ((_ is Concat!30460) (reg!21790 (regOne!43434 r!24602)))) b!7948888))

(assert (= (and b!7948279 ((_ is Star!21461) (reg!21790 (regOne!43434 r!24602)))) b!7948889))

(assert (= (and b!7948279 ((_ is Union!21461) (reg!21790 (regOne!43434 r!24602)))) b!7948890))

(declare-fun b!7948892 () Bool)

(declare-fun e!4689288 () Bool)

(declare-fun tp!2365171 () Bool)

(declare-fun tp!2365175 () Bool)

(assert (=> b!7948892 (= e!4689288 (and tp!2365171 tp!2365175))))

(declare-fun b!7948893 () Bool)

(declare-fun tp!2365173 () Bool)

(assert (=> b!7948893 (= e!4689288 tp!2365173)))

(declare-fun b!7948894 () Bool)

(declare-fun tp!2365174 () Bool)

(declare-fun tp!2365172 () Bool)

(assert (=> b!7948894 (= e!4689288 (and tp!2365174 tp!2365172))))

(assert (=> b!7948294 (= tp!2364805 e!4689288)))

(declare-fun b!7948891 () Bool)

(assert (=> b!7948891 (= e!4689288 tp_is_empty!53465)))

(assert (= (and b!7948294 ((_ is ElementMatch!21461) (regOne!43435 (reg!21790 baseR!116)))) b!7948891))

(assert (= (and b!7948294 ((_ is Concat!30460) (regOne!43435 (reg!21790 baseR!116)))) b!7948892))

(assert (= (and b!7948294 ((_ is Star!21461) (regOne!43435 (reg!21790 baseR!116)))) b!7948893))

(assert (= (and b!7948294 ((_ is Union!21461) (regOne!43435 (reg!21790 baseR!116)))) b!7948894))

(declare-fun b!7948896 () Bool)

(declare-fun e!4689289 () Bool)

(declare-fun tp!2365176 () Bool)

(declare-fun tp!2365180 () Bool)

(assert (=> b!7948896 (= e!4689289 (and tp!2365176 tp!2365180))))

(declare-fun b!7948897 () Bool)

(declare-fun tp!2365178 () Bool)

(assert (=> b!7948897 (= e!4689289 tp!2365178)))

(declare-fun b!7948898 () Bool)

(declare-fun tp!2365179 () Bool)

(declare-fun tp!2365177 () Bool)

(assert (=> b!7948898 (= e!4689289 (and tp!2365179 tp!2365177))))

(assert (=> b!7948294 (= tp!2364803 e!4689289)))

(declare-fun b!7948895 () Bool)

(assert (=> b!7948895 (= e!4689289 tp_is_empty!53465)))

(assert (= (and b!7948294 ((_ is ElementMatch!21461) (regTwo!43435 (reg!21790 baseR!116)))) b!7948895))

(assert (= (and b!7948294 ((_ is Concat!30460) (regTwo!43435 (reg!21790 baseR!116)))) b!7948896))

(assert (= (and b!7948294 ((_ is Star!21461) (regTwo!43435 (reg!21790 baseR!116)))) b!7948897))

(assert (= (and b!7948294 ((_ is Union!21461) (regTwo!43435 (reg!21790 baseR!116)))) b!7948898))

(declare-fun b!7948900 () Bool)

(declare-fun e!4689290 () Bool)

(declare-fun tp!2365181 () Bool)

(declare-fun tp!2365185 () Bool)

(assert (=> b!7948900 (= e!4689290 (and tp!2365181 tp!2365185))))

(declare-fun b!7948901 () Bool)

(declare-fun tp!2365183 () Bool)

(assert (=> b!7948901 (= e!4689290 tp!2365183)))

(declare-fun b!7948902 () Bool)

(declare-fun tp!2365184 () Bool)

(declare-fun tp!2365182 () Bool)

(assert (=> b!7948902 (= e!4689290 (and tp!2365184 tp!2365182))))

(assert (=> b!7948293 (= tp!2364804 e!4689290)))

(declare-fun b!7948899 () Bool)

(assert (=> b!7948899 (= e!4689290 tp_is_empty!53465)))

(assert (= (and b!7948293 ((_ is ElementMatch!21461) (reg!21790 (reg!21790 baseR!116)))) b!7948899))

(assert (= (and b!7948293 ((_ is Concat!30460) (reg!21790 (reg!21790 baseR!116)))) b!7948900))

(assert (= (and b!7948293 ((_ is Star!21461) (reg!21790 (reg!21790 baseR!116)))) b!7948901))

(assert (= (and b!7948293 ((_ is Union!21461) (reg!21790 (reg!21790 baseR!116)))) b!7948902))

(declare-fun b!7948904 () Bool)

(declare-fun e!4689291 () Bool)

(declare-fun tp!2365186 () Bool)

(declare-fun tp!2365190 () Bool)

(assert (=> b!7948904 (= e!4689291 (and tp!2365186 tp!2365190))))

(declare-fun b!7948905 () Bool)

(declare-fun tp!2365188 () Bool)

(assert (=> b!7948905 (= e!4689291 tp!2365188)))

(declare-fun b!7948906 () Bool)

(declare-fun tp!2365189 () Bool)

(declare-fun tp!2365187 () Bool)

(assert (=> b!7948906 (= e!4689291 (and tp!2365189 tp!2365187))))

(assert (=> b!7948252 (= tp!2364756 e!4689291)))

(declare-fun b!7948903 () Bool)

(assert (=> b!7948903 (= e!4689291 tp_is_empty!53465)))

(assert (= (and b!7948252 ((_ is ElementMatch!21461) (regOne!43435 (regOne!43435 r!24602)))) b!7948903))

(assert (= (and b!7948252 ((_ is Concat!30460) (regOne!43435 (regOne!43435 r!24602)))) b!7948904))

(assert (= (and b!7948252 ((_ is Star!21461) (regOne!43435 (regOne!43435 r!24602)))) b!7948905))

(assert (= (and b!7948252 ((_ is Union!21461) (regOne!43435 (regOne!43435 r!24602)))) b!7948906))

(declare-fun b!7948908 () Bool)

(declare-fun e!4689292 () Bool)

(declare-fun tp!2365191 () Bool)

(declare-fun tp!2365195 () Bool)

(assert (=> b!7948908 (= e!4689292 (and tp!2365191 tp!2365195))))

(declare-fun b!7948909 () Bool)

(declare-fun tp!2365193 () Bool)

(assert (=> b!7948909 (= e!4689292 tp!2365193)))

(declare-fun b!7948910 () Bool)

(declare-fun tp!2365194 () Bool)

(declare-fun tp!2365192 () Bool)

(assert (=> b!7948910 (= e!4689292 (and tp!2365194 tp!2365192))))

(assert (=> b!7948252 (= tp!2364754 e!4689292)))

(declare-fun b!7948907 () Bool)

(assert (=> b!7948907 (= e!4689292 tp_is_empty!53465)))

(assert (= (and b!7948252 ((_ is ElementMatch!21461) (regTwo!43435 (regOne!43435 r!24602)))) b!7948907))

(assert (= (and b!7948252 ((_ is Concat!30460) (regTwo!43435 (regOne!43435 r!24602)))) b!7948908))

(assert (= (and b!7948252 ((_ is Star!21461) (regTwo!43435 (regOne!43435 r!24602)))) b!7948909))

(assert (= (and b!7948252 ((_ is Union!21461) (regTwo!43435 (regOne!43435 r!24602)))) b!7948910))

(declare-fun b!7948912 () Bool)

(declare-fun e!4689293 () Bool)

(declare-fun tp!2365196 () Bool)

(declare-fun tp!2365200 () Bool)

(assert (=> b!7948912 (= e!4689293 (and tp!2365196 tp!2365200))))

(declare-fun b!7948913 () Bool)

(declare-fun tp!2365198 () Bool)

(assert (=> b!7948913 (= e!4689293 tp!2365198)))

(declare-fun b!7948914 () Bool)

(declare-fun tp!2365199 () Bool)

(declare-fun tp!2365197 () Bool)

(assert (=> b!7948914 (= e!4689293 (and tp!2365199 tp!2365197))))

(assert (=> b!7948251 (= tp!2364755 e!4689293)))

(declare-fun b!7948911 () Bool)

(assert (=> b!7948911 (= e!4689293 tp_is_empty!53465)))

(assert (= (and b!7948251 ((_ is ElementMatch!21461) (reg!21790 (regOne!43435 r!24602)))) b!7948911))

(assert (= (and b!7948251 ((_ is Concat!30460) (reg!21790 (regOne!43435 r!24602)))) b!7948912))

(assert (= (and b!7948251 ((_ is Star!21461) (reg!21790 (regOne!43435 r!24602)))) b!7948913))

(assert (= (and b!7948251 ((_ is Union!21461) (reg!21790 (regOne!43435 r!24602)))) b!7948914))

(declare-fun b!7948916 () Bool)

(declare-fun e!4689294 () Bool)

(declare-fun tp!2365201 () Bool)

(declare-fun tp!2365205 () Bool)

(assert (=> b!7948916 (= e!4689294 (and tp!2365201 tp!2365205))))

(declare-fun b!7948917 () Bool)

(declare-fun tp!2365203 () Bool)

(assert (=> b!7948917 (= e!4689294 tp!2365203)))

(declare-fun b!7948918 () Bool)

(declare-fun tp!2365204 () Bool)

(declare-fun tp!2365202 () Bool)

(assert (=> b!7948918 (= e!4689294 (and tp!2365204 tp!2365202))))

(assert (=> b!7948260 (= tp!2364766 e!4689294)))

(declare-fun b!7948915 () Bool)

(assert (=> b!7948915 (= e!4689294 tp_is_empty!53465)))

(assert (= (and b!7948260 ((_ is ElementMatch!21461) (regOne!43435 (reg!21790 r!24602)))) b!7948915))

(assert (= (and b!7948260 ((_ is Concat!30460) (regOne!43435 (reg!21790 r!24602)))) b!7948916))

(assert (= (and b!7948260 ((_ is Star!21461) (regOne!43435 (reg!21790 r!24602)))) b!7948917))

(assert (= (and b!7948260 ((_ is Union!21461) (regOne!43435 (reg!21790 r!24602)))) b!7948918))

(declare-fun b!7948920 () Bool)

(declare-fun e!4689295 () Bool)

(declare-fun tp!2365206 () Bool)

(declare-fun tp!2365210 () Bool)

(assert (=> b!7948920 (= e!4689295 (and tp!2365206 tp!2365210))))

(declare-fun b!7948921 () Bool)

(declare-fun tp!2365208 () Bool)

(assert (=> b!7948921 (= e!4689295 tp!2365208)))

(declare-fun b!7948922 () Bool)

(declare-fun tp!2365209 () Bool)

(declare-fun tp!2365207 () Bool)

(assert (=> b!7948922 (= e!4689295 (and tp!2365209 tp!2365207))))

(assert (=> b!7948260 (= tp!2364764 e!4689295)))

(declare-fun b!7948919 () Bool)

(assert (=> b!7948919 (= e!4689295 tp_is_empty!53465)))

(assert (= (and b!7948260 ((_ is ElementMatch!21461) (regTwo!43435 (reg!21790 r!24602)))) b!7948919))

(assert (= (and b!7948260 ((_ is Concat!30460) (regTwo!43435 (reg!21790 r!24602)))) b!7948920))

(assert (= (and b!7948260 ((_ is Star!21461) (regTwo!43435 (reg!21790 r!24602)))) b!7948921))

(assert (= (and b!7948260 ((_ is Union!21461) (regTwo!43435 (reg!21790 r!24602)))) b!7948922))

(declare-fun b!7948924 () Bool)

(declare-fun e!4689296 () Bool)

(declare-fun tp!2365211 () Bool)

(declare-fun tp!2365215 () Bool)

(assert (=> b!7948924 (= e!4689296 (and tp!2365211 tp!2365215))))

(declare-fun b!7948925 () Bool)

(declare-fun tp!2365213 () Bool)

(assert (=> b!7948925 (= e!4689296 tp!2365213)))

(declare-fun b!7948926 () Bool)

(declare-fun tp!2365214 () Bool)

(declare-fun tp!2365212 () Bool)

(assert (=> b!7948926 (= e!4689296 (and tp!2365214 tp!2365212))))

(assert (=> b!7948292 (= tp!2364802 e!4689296)))

(declare-fun b!7948923 () Bool)

(assert (=> b!7948923 (= e!4689296 tp_is_empty!53465)))

(assert (= (and b!7948292 ((_ is ElementMatch!21461) (regOne!43434 (reg!21790 baseR!116)))) b!7948923))

(assert (= (and b!7948292 ((_ is Concat!30460) (regOne!43434 (reg!21790 baseR!116)))) b!7948924))

(assert (= (and b!7948292 ((_ is Star!21461) (regOne!43434 (reg!21790 baseR!116)))) b!7948925))

(assert (= (and b!7948292 ((_ is Union!21461) (regOne!43434 (reg!21790 baseR!116)))) b!7948926))

(declare-fun b!7948928 () Bool)

(declare-fun e!4689297 () Bool)

(declare-fun tp!2365216 () Bool)

(declare-fun tp!2365220 () Bool)

(assert (=> b!7948928 (= e!4689297 (and tp!2365216 tp!2365220))))

(declare-fun b!7948929 () Bool)

(declare-fun tp!2365218 () Bool)

(assert (=> b!7948929 (= e!4689297 tp!2365218)))

(declare-fun b!7948930 () Bool)

(declare-fun tp!2365219 () Bool)

(declare-fun tp!2365217 () Bool)

(assert (=> b!7948930 (= e!4689297 (and tp!2365219 tp!2365217))))

(assert (=> b!7948292 (= tp!2364806 e!4689297)))

(declare-fun b!7948927 () Bool)

(assert (=> b!7948927 (= e!4689297 tp_is_empty!53465)))

(assert (= (and b!7948292 ((_ is ElementMatch!21461) (regTwo!43434 (reg!21790 baseR!116)))) b!7948927))

(assert (= (and b!7948292 ((_ is Concat!30460) (regTwo!43434 (reg!21790 baseR!116)))) b!7948928))

(assert (= (and b!7948292 ((_ is Star!21461) (regTwo!43434 (reg!21790 baseR!116)))) b!7948929))

(assert (= (and b!7948292 ((_ is Union!21461) (regTwo!43434 (reg!21790 baseR!116)))) b!7948930))

(declare-fun b!7948932 () Bool)

(declare-fun e!4689298 () Bool)

(declare-fun tp!2365221 () Bool)

(declare-fun tp!2365225 () Bool)

(assert (=> b!7948932 (= e!4689298 (and tp!2365221 tp!2365225))))

(declare-fun b!7948933 () Bool)

(declare-fun tp!2365223 () Bool)

(assert (=> b!7948933 (= e!4689298 tp!2365223)))

(declare-fun b!7948934 () Bool)

(declare-fun tp!2365224 () Bool)

(declare-fun tp!2365222 () Bool)

(assert (=> b!7948934 (= e!4689298 (and tp!2365224 tp!2365222))))

(assert (=> b!7948259 (= tp!2364765 e!4689298)))

(declare-fun b!7948931 () Bool)

(assert (=> b!7948931 (= e!4689298 tp_is_empty!53465)))

(assert (= (and b!7948259 ((_ is ElementMatch!21461) (reg!21790 (reg!21790 r!24602)))) b!7948931))

(assert (= (and b!7948259 ((_ is Concat!30460) (reg!21790 (reg!21790 r!24602)))) b!7948932))

(assert (= (and b!7948259 ((_ is Star!21461) (reg!21790 (reg!21790 r!24602)))) b!7948933))

(assert (= (and b!7948259 ((_ is Union!21461) (reg!21790 (reg!21790 r!24602)))) b!7948934))

(declare-fun b!7948936 () Bool)

(declare-fun e!4689299 () Bool)

(declare-fun tp!2365226 () Bool)

(declare-fun tp!2365230 () Bool)

(assert (=> b!7948936 (= e!4689299 (and tp!2365226 tp!2365230))))

(declare-fun b!7948937 () Bool)

(declare-fun tp!2365228 () Bool)

(assert (=> b!7948937 (= e!4689299 tp!2365228)))

(declare-fun b!7948938 () Bool)

(declare-fun tp!2365229 () Bool)

(declare-fun tp!2365227 () Bool)

(assert (=> b!7948938 (= e!4689299 (and tp!2365229 tp!2365227))))

(assert (=> b!7948268 (= tp!2364776 e!4689299)))

(declare-fun b!7948935 () Bool)

(assert (=> b!7948935 (= e!4689299 tp_is_empty!53465)))

(assert (= (and b!7948268 ((_ is ElementMatch!21461) (regOne!43435 (regTwo!43434 baseR!116)))) b!7948935))

(assert (= (and b!7948268 ((_ is Concat!30460) (regOne!43435 (regTwo!43434 baseR!116)))) b!7948936))

(assert (= (and b!7948268 ((_ is Star!21461) (regOne!43435 (regTwo!43434 baseR!116)))) b!7948937))

(assert (= (and b!7948268 ((_ is Union!21461) (regOne!43435 (regTwo!43434 baseR!116)))) b!7948938))

(declare-fun b!7948940 () Bool)

(declare-fun e!4689300 () Bool)

(declare-fun tp!2365231 () Bool)

(declare-fun tp!2365235 () Bool)

(assert (=> b!7948940 (= e!4689300 (and tp!2365231 tp!2365235))))

(declare-fun b!7948941 () Bool)

(declare-fun tp!2365233 () Bool)

(assert (=> b!7948941 (= e!4689300 tp!2365233)))

(declare-fun b!7948942 () Bool)

(declare-fun tp!2365234 () Bool)

(declare-fun tp!2365232 () Bool)

(assert (=> b!7948942 (= e!4689300 (and tp!2365234 tp!2365232))))

(assert (=> b!7948268 (= tp!2364774 e!4689300)))

(declare-fun b!7948939 () Bool)

(assert (=> b!7948939 (= e!4689300 tp_is_empty!53465)))

(assert (= (and b!7948268 ((_ is ElementMatch!21461) (regTwo!43435 (regTwo!43434 baseR!116)))) b!7948939))

(assert (= (and b!7948268 ((_ is Concat!30460) (regTwo!43435 (regTwo!43434 baseR!116)))) b!7948940))

(assert (= (and b!7948268 ((_ is Star!21461) (regTwo!43435 (regTwo!43434 baseR!116)))) b!7948941))

(assert (= (and b!7948268 ((_ is Union!21461) (regTwo!43435 (regTwo!43434 baseR!116)))) b!7948942))

(declare-fun b!7948944 () Bool)

(declare-fun e!4689301 () Bool)

(declare-fun tp!2365236 () Bool)

(declare-fun tp!2365240 () Bool)

(assert (=> b!7948944 (= e!4689301 (and tp!2365236 tp!2365240))))

(declare-fun b!7948945 () Bool)

(declare-fun tp!2365238 () Bool)

(assert (=> b!7948945 (= e!4689301 tp!2365238)))

(declare-fun b!7948946 () Bool)

(declare-fun tp!2365239 () Bool)

(declare-fun tp!2365237 () Bool)

(assert (=> b!7948946 (= e!4689301 (and tp!2365239 tp!2365237))))

(assert (=> b!7948250 (= tp!2364753 e!4689301)))

(declare-fun b!7948943 () Bool)

(assert (=> b!7948943 (= e!4689301 tp_is_empty!53465)))

(assert (= (and b!7948250 ((_ is ElementMatch!21461) (regOne!43434 (regOne!43435 r!24602)))) b!7948943))

(assert (= (and b!7948250 ((_ is Concat!30460) (regOne!43434 (regOne!43435 r!24602)))) b!7948944))

(assert (= (and b!7948250 ((_ is Star!21461) (regOne!43434 (regOne!43435 r!24602)))) b!7948945))

(assert (= (and b!7948250 ((_ is Union!21461) (regOne!43434 (regOne!43435 r!24602)))) b!7948946))

(declare-fun b!7948948 () Bool)

(declare-fun e!4689302 () Bool)

(declare-fun tp!2365241 () Bool)

(declare-fun tp!2365245 () Bool)

(assert (=> b!7948948 (= e!4689302 (and tp!2365241 tp!2365245))))

(declare-fun b!7948949 () Bool)

(declare-fun tp!2365243 () Bool)

(assert (=> b!7948949 (= e!4689302 tp!2365243)))

(declare-fun b!7948950 () Bool)

(declare-fun tp!2365244 () Bool)

(declare-fun tp!2365242 () Bool)

(assert (=> b!7948950 (= e!4689302 (and tp!2365244 tp!2365242))))

(assert (=> b!7948250 (= tp!2364757 e!4689302)))

(declare-fun b!7948947 () Bool)

(assert (=> b!7948947 (= e!4689302 tp_is_empty!53465)))

(assert (= (and b!7948250 ((_ is ElementMatch!21461) (regTwo!43434 (regOne!43435 r!24602)))) b!7948947))

(assert (= (and b!7948250 ((_ is Concat!30460) (regTwo!43434 (regOne!43435 r!24602)))) b!7948948))

(assert (= (and b!7948250 ((_ is Star!21461) (regTwo!43434 (regOne!43435 r!24602)))) b!7948949))

(assert (= (and b!7948250 ((_ is Union!21461) (regTwo!43434 (regOne!43435 r!24602)))) b!7948950))

(declare-fun b!7948952 () Bool)

(declare-fun e!4689303 () Bool)

(declare-fun tp!2365246 () Bool)

(declare-fun tp!2365250 () Bool)

(assert (=> b!7948952 (= e!4689303 (and tp!2365246 tp!2365250))))

(declare-fun b!7948953 () Bool)

(declare-fun tp!2365248 () Bool)

(assert (=> b!7948953 (= e!4689303 tp!2365248)))

(declare-fun b!7948954 () Bool)

(declare-fun tp!2365249 () Bool)

(declare-fun tp!2365247 () Bool)

(assert (=> b!7948954 (= e!4689303 (and tp!2365249 tp!2365247))))

(assert (=> b!7948267 (= tp!2364775 e!4689303)))

(declare-fun b!7948951 () Bool)

(assert (=> b!7948951 (= e!4689303 tp_is_empty!53465)))

(assert (= (and b!7948267 ((_ is ElementMatch!21461) (reg!21790 (regTwo!43434 baseR!116)))) b!7948951))

(assert (= (and b!7948267 ((_ is Concat!30460) (reg!21790 (regTwo!43434 baseR!116)))) b!7948952))

(assert (= (and b!7948267 ((_ is Star!21461) (reg!21790 (regTwo!43434 baseR!116)))) b!7948953))

(assert (= (and b!7948267 ((_ is Union!21461) (reg!21790 (regTwo!43434 baseR!116)))) b!7948954))

(declare-fun b!7948956 () Bool)

(declare-fun e!4689304 () Bool)

(declare-fun tp!2365251 () Bool)

(declare-fun tp!2365255 () Bool)

(assert (=> b!7948956 (= e!4689304 (and tp!2365251 tp!2365255))))

(declare-fun b!7948957 () Bool)

(declare-fun tp!2365253 () Bool)

(assert (=> b!7948957 (= e!4689304 tp!2365253)))

(declare-fun b!7948958 () Bool)

(declare-fun tp!2365254 () Bool)

(declare-fun tp!2365252 () Bool)

(assert (=> b!7948958 (= e!4689304 (and tp!2365254 tp!2365252))))

(assert (=> b!7948276 (= tp!2364786 e!4689304)))

(declare-fun b!7948955 () Bool)

(assert (=> b!7948955 (= e!4689304 tp_is_empty!53465)))

(assert (= (and b!7948276 ((_ is ElementMatch!21461) (regOne!43435 (regTwo!43435 baseR!116)))) b!7948955))

(assert (= (and b!7948276 ((_ is Concat!30460) (regOne!43435 (regTwo!43435 baseR!116)))) b!7948956))

(assert (= (and b!7948276 ((_ is Star!21461) (regOne!43435 (regTwo!43435 baseR!116)))) b!7948957))

(assert (= (and b!7948276 ((_ is Union!21461) (regOne!43435 (regTwo!43435 baseR!116)))) b!7948958))

(declare-fun b!7948960 () Bool)

(declare-fun e!4689305 () Bool)

(declare-fun tp!2365256 () Bool)

(declare-fun tp!2365260 () Bool)

(assert (=> b!7948960 (= e!4689305 (and tp!2365256 tp!2365260))))

(declare-fun b!7948961 () Bool)

(declare-fun tp!2365258 () Bool)

(assert (=> b!7948961 (= e!4689305 tp!2365258)))

(declare-fun b!7948962 () Bool)

(declare-fun tp!2365259 () Bool)

(declare-fun tp!2365257 () Bool)

(assert (=> b!7948962 (= e!4689305 (and tp!2365259 tp!2365257))))

(assert (=> b!7948276 (= tp!2364784 e!4689305)))

(declare-fun b!7948959 () Bool)

(assert (=> b!7948959 (= e!4689305 tp_is_empty!53465)))

(assert (= (and b!7948276 ((_ is ElementMatch!21461) (regTwo!43435 (regTwo!43435 baseR!116)))) b!7948959))

(assert (= (and b!7948276 ((_ is Concat!30460) (regTwo!43435 (regTwo!43435 baseR!116)))) b!7948960))

(assert (= (and b!7948276 ((_ is Star!21461) (regTwo!43435 (regTwo!43435 baseR!116)))) b!7948961))

(assert (= (and b!7948276 ((_ is Union!21461) (regTwo!43435 (regTwo!43435 baseR!116)))) b!7948962))

(declare-fun b!7948964 () Bool)

(declare-fun e!4689306 () Bool)

(declare-fun tp!2365261 () Bool)

(declare-fun tp!2365265 () Bool)

(assert (=> b!7948964 (= e!4689306 (and tp!2365261 tp!2365265))))

(declare-fun b!7948965 () Bool)

(declare-fun tp!2365263 () Bool)

(assert (=> b!7948965 (= e!4689306 tp!2365263)))

(declare-fun b!7948966 () Bool)

(declare-fun tp!2365264 () Bool)

(declare-fun tp!2365262 () Bool)

(assert (=> b!7948966 (= e!4689306 (and tp!2365264 tp!2365262))))

(assert (=> b!7948258 (= tp!2364763 e!4689306)))

(declare-fun b!7948963 () Bool)

(assert (=> b!7948963 (= e!4689306 tp_is_empty!53465)))

(assert (= (and b!7948258 ((_ is ElementMatch!21461) (regOne!43434 (reg!21790 r!24602)))) b!7948963))

(assert (= (and b!7948258 ((_ is Concat!30460) (regOne!43434 (reg!21790 r!24602)))) b!7948964))

(assert (= (and b!7948258 ((_ is Star!21461) (regOne!43434 (reg!21790 r!24602)))) b!7948965))

(assert (= (and b!7948258 ((_ is Union!21461) (regOne!43434 (reg!21790 r!24602)))) b!7948966))

(declare-fun b!7948968 () Bool)

(declare-fun e!4689307 () Bool)

(declare-fun tp!2365266 () Bool)

(declare-fun tp!2365270 () Bool)

(assert (=> b!7948968 (= e!4689307 (and tp!2365266 tp!2365270))))

(declare-fun b!7948969 () Bool)

(declare-fun tp!2365268 () Bool)

(assert (=> b!7948969 (= e!4689307 tp!2365268)))

(declare-fun b!7948970 () Bool)

(declare-fun tp!2365269 () Bool)

(declare-fun tp!2365267 () Bool)

(assert (=> b!7948970 (= e!4689307 (and tp!2365269 tp!2365267))))

(assert (=> b!7948258 (= tp!2364767 e!4689307)))

(declare-fun b!7948967 () Bool)

(assert (=> b!7948967 (= e!4689307 tp_is_empty!53465)))

(assert (= (and b!7948258 ((_ is ElementMatch!21461) (regTwo!43434 (reg!21790 r!24602)))) b!7948967))

(assert (= (and b!7948258 ((_ is Concat!30460) (regTwo!43434 (reg!21790 r!24602)))) b!7948968))

(assert (= (and b!7948258 ((_ is Star!21461) (regTwo!43434 (reg!21790 r!24602)))) b!7948969))

(assert (= (and b!7948258 ((_ is Union!21461) (regTwo!43434 (reg!21790 r!24602)))) b!7948970))

(declare-fun b!7948972 () Bool)

(declare-fun e!4689308 () Bool)

(declare-fun tp!2365271 () Bool)

(declare-fun tp!2365275 () Bool)

(assert (=> b!7948972 (= e!4689308 (and tp!2365271 tp!2365275))))

(declare-fun b!7948973 () Bool)

(declare-fun tp!2365273 () Bool)

(assert (=> b!7948973 (= e!4689308 tp!2365273)))

(declare-fun b!7948974 () Bool)

(declare-fun tp!2365274 () Bool)

(declare-fun tp!2365272 () Bool)

(assert (=> b!7948974 (= e!4689308 (and tp!2365274 tp!2365272))))

(assert (=> b!7948275 (= tp!2364785 e!4689308)))

(declare-fun b!7948971 () Bool)

(assert (=> b!7948971 (= e!4689308 tp_is_empty!53465)))

(assert (= (and b!7948275 ((_ is ElementMatch!21461) (reg!21790 (regTwo!43435 baseR!116)))) b!7948971))

(assert (= (and b!7948275 ((_ is Concat!30460) (reg!21790 (regTwo!43435 baseR!116)))) b!7948972))

(assert (= (and b!7948275 ((_ is Star!21461) (reg!21790 (regTwo!43435 baseR!116)))) b!7948973))

(assert (= (and b!7948275 ((_ is Union!21461) (reg!21790 (regTwo!43435 baseR!116)))) b!7948974))

(declare-fun b!7948976 () Bool)

(declare-fun e!4689309 () Bool)

(declare-fun tp!2365276 () Bool)

(declare-fun tp!2365280 () Bool)

(assert (=> b!7948976 (= e!4689309 (and tp!2365276 tp!2365280))))

(declare-fun b!7948977 () Bool)

(declare-fun tp!2365278 () Bool)

(assert (=> b!7948977 (= e!4689309 tp!2365278)))

(declare-fun b!7948978 () Bool)

(declare-fun tp!2365279 () Bool)

(declare-fun tp!2365277 () Bool)

(assert (=> b!7948978 (= e!4689309 (and tp!2365279 tp!2365277))))

(assert (=> b!7948284 (= tp!2364796 e!4689309)))

(declare-fun b!7948975 () Bool)

(assert (=> b!7948975 (= e!4689309 tp_is_empty!53465)))

(assert (= (and b!7948284 ((_ is ElementMatch!21461) (regOne!43435 (regTwo!43434 r!24602)))) b!7948975))

(assert (= (and b!7948284 ((_ is Concat!30460) (regOne!43435 (regTwo!43434 r!24602)))) b!7948976))

(assert (= (and b!7948284 ((_ is Star!21461) (regOne!43435 (regTwo!43434 r!24602)))) b!7948977))

(assert (= (and b!7948284 ((_ is Union!21461) (regOne!43435 (regTwo!43434 r!24602)))) b!7948978))

(declare-fun b!7948980 () Bool)

(declare-fun e!4689310 () Bool)

(declare-fun tp!2365281 () Bool)

(declare-fun tp!2365285 () Bool)

(assert (=> b!7948980 (= e!4689310 (and tp!2365281 tp!2365285))))

(declare-fun b!7948981 () Bool)

(declare-fun tp!2365283 () Bool)

(assert (=> b!7948981 (= e!4689310 tp!2365283)))

(declare-fun b!7948982 () Bool)

(declare-fun tp!2365284 () Bool)

(declare-fun tp!2365282 () Bool)

(assert (=> b!7948982 (= e!4689310 (and tp!2365284 tp!2365282))))

(assert (=> b!7948284 (= tp!2364794 e!4689310)))

(declare-fun b!7948979 () Bool)

(assert (=> b!7948979 (= e!4689310 tp_is_empty!53465)))

(assert (= (and b!7948284 ((_ is ElementMatch!21461) (regTwo!43435 (regTwo!43434 r!24602)))) b!7948979))

(assert (= (and b!7948284 ((_ is Concat!30460) (regTwo!43435 (regTwo!43434 r!24602)))) b!7948980))

(assert (= (and b!7948284 ((_ is Star!21461) (regTwo!43435 (regTwo!43434 r!24602)))) b!7948981))

(assert (= (and b!7948284 ((_ is Union!21461) (regTwo!43435 (regTwo!43434 r!24602)))) b!7948982))

(declare-fun b!7948984 () Bool)

(declare-fun e!4689311 () Bool)

(declare-fun tp!2365286 () Bool)

(declare-fun tp!2365290 () Bool)

(assert (=> b!7948984 (= e!4689311 (and tp!2365286 tp!2365290))))

(declare-fun b!7948985 () Bool)

(declare-fun tp!2365288 () Bool)

(assert (=> b!7948985 (= e!4689311 tp!2365288)))

(declare-fun b!7948986 () Bool)

(declare-fun tp!2365289 () Bool)

(declare-fun tp!2365287 () Bool)

(assert (=> b!7948986 (= e!4689311 (and tp!2365289 tp!2365287))))

(assert (=> b!7948266 (= tp!2364773 e!4689311)))

(declare-fun b!7948983 () Bool)

(assert (=> b!7948983 (= e!4689311 tp_is_empty!53465)))

(assert (= (and b!7948266 ((_ is ElementMatch!21461) (regOne!43434 (regTwo!43434 baseR!116)))) b!7948983))

(assert (= (and b!7948266 ((_ is Concat!30460) (regOne!43434 (regTwo!43434 baseR!116)))) b!7948984))

(assert (= (and b!7948266 ((_ is Star!21461) (regOne!43434 (regTwo!43434 baseR!116)))) b!7948985))

(assert (= (and b!7948266 ((_ is Union!21461) (regOne!43434 (regTwo!43434 baseR!116)))) b!7948986))

(declare-fun b!7948988 () Bool)

(declare-fun e!4689312 () Bool)

(declare-fun tp!2365291 () Bool)

(declare-fun tp!2365295 () Bool)

(assert (=> b!7948988 (= e!4689312 (and tp!2365291 tp!2365295))))

(declare-fun b!7948989 () Bool)

(declare-fun tp!2365293 () Bool)

(assert (=> b!7948989 (= e!4689312 tp!2365293)))

(declare-fun b!7948990 () Bool)

(declare-fun tp!2365294 () Bool)

(declare-fun tp!2365292 () Bool)

(assert (=> b!7948990 (= e!4689312 (and tp!2365294 tp!2365292))))

(assert (=> b!7948266 (= tp!2364777 e!4689312)))

(declare-fun b!7948987 () Bool)

(assert (=> b!7948987 (= e!4689312 tp_is_empty!53465)))

(assert (= (and b!7948266 ((_ is ElementMatch!21461) (regTwo!43434 (regTwo!43434 baseR!116)))) b!7948987))

(assert (= (and b!7948266 ((_ is Concat!30460) (regTwo!43434 (regTwo!43434 baseR!116)))) b!7948988))

(assert (= (and b!7948266 ((_ is Star!21461) (regTwo!43434 (regTwo!43434 baseR!116)))) b!7948989))

(assert (= (and b!7948266 ((_ is Union!21461) (regTwo!43434 (regTwo!43434 baseR!116)))) b!7948990))

(declare-fun b!7948992 () Bool)

(declare-fun e!4689313 () Bool)

(declare-fun tp!2365296 () Bool)

(declare-fun tp!2365300 () Bool)

(assert (=> b!7948992 (= e!4689313 (and tp!2365296 tp!2365300))))

(declare-fun b!7948993 () Bool)

(declare-fun tp!2365298 () Bool)

(assert (=> b!7948993 (= e!4689313 tp!2365298)))

(declare-fun b!7948994 () Bool)

(declare-fun tp!2365299 () Bool)

(declare-fun tp!2365297 () Bool)

(assert (=> b!7948994 (= e!4689313 (and tp!2365299 tp!2365297))))

(assert (=> b!7948283 (= tp!2364795 e!4689313)))

(declare-fun b!7948991 () Bool)

(assert (=> b!7948991 (= e!4689313 tp_is_empty!53465)))

(assert (= (and b!7948283 ((_ is ElementMatch!21461) (reg!21790 (regTwo!43434 r!24602)))) b!7948991))

(assert (= (and b!7948283 ((_ is Concat!30460) (reg!21790 (regTwo!43434 r!24602)))) b!7948992))

(assert (= (and b!7948283 ((_ is Star!21461) (reg!21790 (regTwo!43434 r!24602)))) b!7948993))

(assert (= (and b!7948283 ((_ is Union!21461) (reg!21790 (regTwo!43434 r!24602)))) b!7948994))

(declare-fun b!7948996 () Bool)

(declare-fun e!4689314 () Bool)

(declare-fun tp!2365301 () Bool)

(declare-fun tp!2365305 () Bool)

(assert (=> b!7948996 (= e!4689314 (and tp!2365301 tp!2365305))))

(declare-fun b!7948997 () Bool)

(declare-fun tp!2365303 () Bool)

(assert (=> b!7948997 (= e!4689314 tp!2365303)))

(declare-fun b!7948998 () Bool)

(declare-fun tp!2365304 () Bool)

(declare-fun tp!2365302 () Bool)

(assert (=> b!7948998 (= e!4689314 (and tp!2365304 tp!2365302))))

(assert (=> b!7948274 (= tp!2364783 e!4689314)))

(declare-fun b!7948995 () Bool)

(assert (=> b!7948995 (= e!4689314 tp_is_empty!53465)))

(assert (= (and b!7948274 ((_ is ElementMatch!21461) (regOne!43434 (regTwo!43435 baseR!116)))) b!7948995))

(assert (= (and b!7948274 ((_ is Concat!30460) (regOne!43434 (regTwo!43435 baseR!116)))) b!7948996))

(assert (= (and b!7948274 ((_ is Star!21461) (regOne!43434 (regTwo!43435 baseR!116)))) b!7948997))

(assert (= (and b!7948274 ((_ is Union!21461) (regOne!43434 (regTwo!43435 baseR!116)))) b!7948998))

(declare-fun b!7949000 () Bool)

(declare-fun e!4689315 () Bool)

(declare-fun tp!2365306 () Bool)

(declare-fun tp!2365310 () Bool)

(assert (=> b!7949000 (= e!4689315 (and tp!2365306 tp!2365310))))

(declare-fun b!7949001 () Bool)

(declare-fun tp!2365308 () Bool)

(assert (=> b!7949001 (= e!4689315 tp!2365308)))

(declare-fun b!7949002 () Bool)

(declare-fun tp!2365309 () Bool)

(declare-fun tp!2365307 () Bool)

(assert (=> b!7949002 (= e!4689315 (and tp!2365309 tp!2365307))))

(assert (=> b!7948274 (= tp!2364787 e!4689315)))

(declare-fun b!7948999 () Bool)

(assert (=> b!7948999 (= e!4689315 tp_is_empty!53465)))

(assert (= (and b!7948274 ((_ is ElementMatch!21461) (regTwo!43434 (regTwo!43435 baseR!116)))) b!7948999))

(assert (= (and b!7948274 ((_ is Concat!30460) (regTwo!43434 (regTwo!43435 baseR!116)))) b!7949000))

(assert (= (and b!7948274 ((_ is Star!21461) (regTwo!43434 (regTwo!43435 baseR!116)))) b!7949001))

(assert (= (and b!7948274 ((_ is Union!21461) (regTwo!43434 (regTwo!43435 baseR!116)))) b!7949002))

(check-sat (not b!7948693) (not b!7948778) (not b!7948754) (not b!7948926) (not b!7948846) (not b!7948866) (not b!7948806) (not b!7948692) (not bm!736756) (not b!7948773) (not d!2375773) (not bm!736776) (not b!7948698) (not b!7948848) (not b!7948566) (not b!7948749) (not b!7948912) (not b!7948696) (not b!7948968) (not b!7948712) (not d!2375775) (not b!7948816) (not b!7948940) (not b!7948916) (not b!7948485) (not b!7948834) (not b!7948711) (not b!7948844) (not b!7948852) (not b!7948486) (not b!7948803) (not b!7948877) (not b!7948809) (not bm!736786) (not b!7948934) (not b!7948962) (not b!7948949) (not b!7948952) (not b!7948921) (not b!7948818) (not b!7948890) (not b!7948977) (not b!7948990) (not b!7948898) (not b!7948880) (not b!7948878) (not b!7948870) (not b!7948686) (not b!7948864) (not d!2375737) (not b!7948536) (not b!7948768) (not b!7948957) (not b!7948861) (not b!7948694) (not b!7948961) (not b!7948862) (not b!7948567) (not b!7948888) (not d!2375795) (not b!7948910) (not b!7948853) (not b!7948820) (not b!7948909) (not b!7948750) (not b!7948807) (not b!7948941) (not b!7948850) (not b!7948965) (not bm!736789) (not bm!736754) (not b!7948812) (not d!2375783) (not b!7948810) (not b!7948675) (not d!2375769) (not b!7948908) (not b!7948986) (not b!7948905) (not b!7948945) (not b!7948980) (not bm!736755) (not b!7948753) (not b!7948972) (not b!7948829) (not b!7948674) (not d!2375767) (not d!2375723) (not b!7948808) (not b!7948969) (not b!7948869) (not bm!736760) (not b!7948838) (not b!7948794) (not b!7948994) (not b!7948938) (not b!7948970) (not b!7948814) (not b!7948845) (not b!7948741) (not b!7948821) (not b!7948893) (not b!7948904) (not b!7948956) (not b!7948993) (not bm!736764) (not bm!736758) (not b!7948978) (not b!7948684) (not b!7948942) (not b!7948705) (not b!7948897) (not b!7948762) (not b!7948800) (not b!7948886) (not b!7949000) (not b!7948836) (not b!7948872) (not b!7948900) (not bm!736787) (not b!7948924) (not b!7948954) (not b!7948876) (not b!7948826) tp_is_empty!53465 (not b!7948688) (not b!7948918) (not b!7948700) (not b!7948998) (not b!7948974) (not b!7948944) (not b!7948902) (not b!7948842) (not b!7948716) (not b!7948936) (not b!7948948) (not b!7948989) (not b!7948755) (not b!7948830) (not b!7948840) (not b!7948930) (not bm!736777) (not b!7948825) (not b!7948841) (not b!7948982) (not d!2375741) (not b!7948813) (not bm!736780) (not b!7948892) (not b!7948985) (not bm!736785) (not b!7948997) (not b!7949002) (not bm!736762) (not b!7948894) (not b!7948981) (not b!7948671) (not b!7948932) (not b!7948964) (not b!7948937) (not b!7948715) (not b!7948822) (not b!7948672) (not d!2375733) (not d!2375687) (not b!7948917) (not b!7948857) (not b!7948984) (not bm!736761) (not d!2375781) (not b!7948922) (not b!7948928) (not d!2375765) (not d!2375739) (not b!7948804) (not b!7948976) (not b!7948992) (not b!7949001) (not b!7948756) (not bm!736757) (not b!7948699) (not b!7948824) (not b!7948960) (not d!2375727) (not b!7948828) (not b!7948849) (not b!7948946) (not b!7948884) (not d!2375793) (not bm!736779) (not b!7948833) (not b!7948929) (not d!2375787) (not b!7948953) (not b!7948881) (not d!2375759) (not b!7948865) (not b!7948856) (not b!7948783) (not b!7948958) (not b!7948860) (not b!7948534) (not b!7948896) (not b!7948920) (not b!7948874) (not b!7948677) (not d!2375725) (not b!7948901) (not b!7948988) (not b!7948950) (not b!7948913) (not b!7948933) (not d!2375777) (not b!7948873) (not d!2375763) (not b!7948973) (not bm!736775) (not bm!736782) (not b!7948996) (not b!7948889) (not b!7948914) (not b!7948802) (not b!7948854) (not b!7948882) (not b!7948837) (not b!7948906) (not b!7948858) (not b!7948925) (not b!7948868) (not bm!736759) (not b!7948966) (not b!7948817) (not b!7948885) (not b!7948832) (not b!7948670))
(check-sat)
