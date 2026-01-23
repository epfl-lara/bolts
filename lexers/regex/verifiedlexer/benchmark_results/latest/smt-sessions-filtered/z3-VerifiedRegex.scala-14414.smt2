; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751232 () Bool)

(assert start!751232)

(declare-fun b!7964929 () Bool)

(declare-fun e!4696852 () Bool)

(declare-fun tp!2373598 () Bool)

(declare-fun tp!2373590 () Bool)

(assert (=> b!7964929 (= e!4696852 (and tp!2373598 tp!2373590))))

(declare-fun b!7964930 () Bool)

(declare-fun tp!2373596 () Bool)

(declare-fun tp!2373597 () Bool)

(assert (=> b!7964930 (= e!4696852 (and tp!2373596 tp!2373597))))

(declare-fun b!7964931 () Bool)

(declare-fun tp!2373587 () Bool)

(assert (=> b!7964931 (= e!4696852 tp!2373587)))

(declare-fun b!7964932 () Bool)

(declare-fun e!4696855 () Bool)

(declare-fun tp!2373592 () Bool)

(declare-fun tp!2373589 () Bool)

(assert (=> b!7964932 (= e!4696855 (and tp!2373592 tp!2373589))))

(declare-fun b!7964934 () Bool)

(declare-fun e!4696851 () Bool)

(declare-fun tp_is_empty!53561 () Bool)

(declare-fun tp!2373588 () Bool)

(assert (=> b!7964934 (= e!4696851 (and tp_is_empty!53561 tp!2373588))))

(declare-fun b!7964935 () Bool)

(declare-fun res!3156365 () Bool)

(declare-fun e!4696849 () Bool)

(assert (=> b!7964935 (=> (not res!3156365) (not e!4696849))))

(declare-datatypes ((C!43356 0))(
  ( (C!43357 (val!32226 Int)) )
))
(declare-datatypes ((Regex!21509 0))(
  ( (ElementMatch!21509 (c!1462750 C!43356)) (Concat!30508 (regOne!43530 Regex!21509) (regTwo!43530 Regex!21509)) (EmptyExpr!21509) (Star!21509 (reg!21838 Regex!21509)) (EmptyLang!21509) (Union!21509 (regOne!43531 Regex!21509) (regTwo!43531 Regex!21509)) )
))
(declare-fun baseR!116 () Regex!21509)

(declare-datatypes ((List!74738 0))(
  ( (Nil!74614) (Cons!74614 (h!81062 C!43356) (t!390481 List!74738)) )
))
(declare-fun testedP!447 () List!74738)

(declare-fun r!24602 () Regex!21509)

(declare-fun derivative!695 (Regex!21509 List!74738) Regex!21509)

(assert (=> b!7964935 (= res!3156365 (= (derivative!695 baseR!116 testedP!447) r!24602))))

(declare-fun b!7964936 () Bool)

(declare-fun res!3156369 () Bool)

(assert (=> b!7964936 (=> (not res!3156369) (not e!4696849))))

(declare-fun input!7927 () List!74738)

(declare-fun isPrefix!6609 (List!74738 List!74738) Bool)

(assert (=> b!7964936 (= res!3156369 (isPrefix!6609 testedP!447 input!7927))))

(declare-fun b!7964937 () Bool)

(declare-fun e!4696858 () Bool)

(assert (=> b!7964937 (= e!4696849 e!4696858)))

(declare-fun res!3156361 () Bool)

(assert (=> b!7964937 (=> (not res!3156361) (not e!4696858))))

(declare-fun lt!2705247 () Int)

(declare-fun lt!2705236 () Int)

(declare-fun lt!2705240 () List!74738)

(declare-fun isEmpty!42915 (List!74738) Bool)

(declare-datatypes ((tuple2!70680 0))(
  ( (tuple2!70681 (_1!38643 List!74738) (_2!38643 List!74738)) )
))
(declare-fun findLongestMatchInner!2290 (Regex!21509 List!74738 Int List!74738 List!74738 Int) tuple2!70680)

(assert (=> b!7964937 (= res!3156361 (not (isEmpty!42915 (_1!38643 (findLongestMatchInner!2290 r!24602 testedP!447 lt!2705247 lt!2705240 input!7927 lt!2705236)))))))

(declare-fun size!43445 (List!74738) Int)

(assert (=> b!7964937 (= lt!2705236 (size!43445 input!7927))))

(declare-fun getSuffix!3812 (List!74738 List!74738) List!74738)

(assert (=> b!7964937 (= lt!2705240 (getSuffix!3812 input!7927 testedP!447))))

(assert (=> b!7964937 (= lt!2705247 (size!43445 testedP!447))))

(declare-fun b!7964938 () Bool)

(declare-datatypes ((Unit!170144 0))(
  ( (Unit!170145) )
))
(declare-fun e!4696854 () Unit!170144)

(declare-fun Unit!170146 () Unit!170144)

(assert (=> b!7964938 (= e!4696854 Unit!170146)))

(declare-fun b!7964939 () Bool)

(declare-fun res!3156363 () Bool)

(assert (=> b!7964939 (=> (not res!3156363) (not e!4696858))))

(assert (=> b!7964939 (= res!3156363 (not (= testedP!447 input!7927)))))

(declare-fun b!7964940 () Bool)

(declare-fun e!4696850 () Bool)

(declare-fun e!4696848 () Bool)

(assert (=> b!7964940 (= e!4696850 e!4696848)))

(declare-fun res!3156366 () Bool)

(assert (=> b!7964940 (=> res!3156366 e!4696848)))

(declare-fun lt!2705242 () Regex!21509)

(declare-fun lt!2705235 () List!74738)

(declare-fun tail!15798 (List!74738) List!74738)

(assert (=> b!7964940 (= res!3156366 (isEmpty!42915 (_1!38643 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (+ 1 lt!2705247) (tail!15798 lt!2705240) input!7927 lt!2705236))))))

(declare-fun lt!2705246 () C!43356)

(declare-fun derivativeStep!6537 (Regex!21509 C!43356) Regex!21509)

(assert (=> b!7964940 (= lt!2705242 (derivativeStep!6537 r!24602 lt!2705246))))

(declare-fun b!7964941 () Bool)

(declare-fun tp!2373591 () Bool)

(assert (=> b!7964941 (= e!4696855 tp!2373591)))

(declare-fun b!7964942 () Bool)

(declare-fun e!4696857 () Bool)

(assert (=> b!7964942 (= e!4696848 e!4696857)))

(declare-fun res!3156364 () Bool)

(assert (=> b!7964942 (=> res!3156364 e!4696857)))

(declare-fun validRegex!11813 (Regex!21509) Bool)

(assert (=> b!7964942 (= res!3156364 (not (validRegex!11813 r!24602)))))

(declare-fun e!4696856 () Bool)

(assert (=> b!7964942 e!4696856))

(declare-fun res!3156362 () Bool)

(assert (=> b!7964942 (=> res!3156362 e!4696856)))

(declare-fun lt!2705244 () tuple2!70680)

(assert (=> b!7964942 (= res!3156362 (isEmpty!42915 (_1!38643 lt!2705244)))))

(assert (=> b!7964942 (= lt!2705244 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (size!43445 lt!2705235) (getSuffix!3812 input!7927 lt!2705235) input!7927 lt!2705236))))

(declare-fun lt!2705241 () Unit!170144)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!53 (Regex!21509 Regex!21509 List!74738 List!74738) Unit!170144)

(assert (=> b!7964942 (= lt!2705241 (longestMatchIsAcceptedByMatchOrIsEmptyRec!53 baseR!116 lt!2705242 lt!2705235 input!7927))))

(assert (=> b!7964942 (= (derivative!695 baseR!116 lt!2705235) lt!2705242)))

(declare-fun lt!2705245 () Unit!170144)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!221 (Regex!21509 Regex!21509 List!74738 C!43356) Unit!170144)

(assert (=> b!7964942 (= lt!2705245 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!221 baseR!116 r!24602 testedP!447 lt!2705246))))

(declare-fun b!7964943 () Bool)

(assert (=> b!7964943 (= e!4696852 tp_is_empty!53561)))

(declare-fun b!7964933 () Bool)

(declare-fun matchR!10742 (Regex!21509 List!74738) Bool)

(assert (=> b!7964933 (= e!4696856 (matchR!10742 baseR!116 (_1!38643 lt!2705244)))))

(declare-fun res!3156367 () Bool)

(assert (=> start!751232 (=> (not res!3156367) (not e!4696849))))

(assert (=> start!751232 (= res!3156367 (validRegex!11813 baseR!116))))

(assert (=> start!751232 e!4696849))

(assert (=> start!751232 e!4696852))

(assert (=> start!751232 e!4696851))

(declare-fun e!4696853 () Bool)

(assert (=> start!751232 e!4696853))

(assert (=> start!751232 e!4696855))

(declare-fun b!7964944 () Bool)

(declare-fun Unit!170147 () Unit!170144)

(assert (=> b!7964944 (= e!4696854 Unit!170147)))

(declare-fun lt!2705239 () Unit!170144)

(declare-fun lemmaIsPrefixRefl!4077 (List!74738 List!74738) Unit!170144)

(assert (=> b!7964944 (= lt!2705239 (lemmaIsPrefixRefl!4077 input!7927 input!7927))))

(assert (=> b!7964944 (isPrefix!6609 input!7927 input!7927)))

(declare-fun lt!2705243 () Unit!170144)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1657 (List!74738 List!74738 List!74738) Unit!170144)

(assert (=> b!7964944 (= lt!2705243 (lemmaIsPrefixSameLengthThenSameList!1657 input!7927 testedP!447 input!7927))))

(assert (=> b!7964944 false))

(declare-fun b!7964945 () Bool)

(declare-fun e!4696859 () Bool)

(assert (=> b!7964945 (= e!4696859 e!4696850)))

(declare-fun res!3156368 () Bool)

(assert (=> b!7964945 (=> res!3156368 e!4696850)))

(declare-fun nullable!9610 (Regex!21509) Bool)

(assert (=> b!7964945 (= res!3156368 (not (nullable!9610 r!24602)))))

(assert (=> b!7964945 (isPrefix!6609 lt!2705235 input!7927)))

(declare-fun lt!2705234 () Unit!170144)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1336 (List!74738 List!74738) Unit!170144)

(assert (=> b!7964945 (= lt!2705234 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 testedP!447 input!7927))))

(declare-fun ++!18379 (List!74738 List!74738) List!74738)

(assert (=> b!7964945 (= lt!2705235 (++!18379 testedP!447 (Cons!74614 lt!2705246 Nil!74614)))))

(declare-fun head!16261 (List!74738) C!43356)

(assert (=> b!7964945 (= lt!2705246 (head!16261 lt!2705240))))

(declare-fun b!7964946 () Bool)

(declare-fun tp!2373593 () Bool)

(assert (=> b!7964946 (= e!4696853 (and tp_is_empty!53561 tp!2373593))))

(declare-fun b!7964947 () Bool)

(assert (=> b!7964947 (= e!4696855 tp_is_empty!53561)))

(declare-fun b!7964948 () Bool)

(declare-fun tp!2373594 () Bool)

(declare-fun tp!2373595 () Bool)

(assert (=> b!7964948 (= e!4696855 (and tp!2373594 tp!2373595))))

(declare-fun b!7964949 () Bool)

(assert (=> b!7964949 (= e!4696857 (= (++!18379 testedP!447 lt!2705240) input!7927))))

(declare-fun b!7964950 () Bool)

(assert (=> b!7964950 (= e!4696858 (not e!4696859))))

(declare-fun res!3156370 () Bool)

(assert (=> b!7964950 (=> res!3156370 e!4696859)))

(assert (=> b!7964950 (= res!3156370 (>= lt!2705247 lt!2705236))))

(declare-fun lt!2705238 () Unit!170144)

(assert (=> b!7964950 (= lt!2705238 e!4696854)))

(declare-fun c!1462749 () Bool)

(assert (=> b!7964950 (= c!1462749 (= lt!2705247 lt!2705236))))

(assert (=> b!7964950 (<= lt!2705247 lt!2705236)))

(declare-fun lt!2705237 () Unit!170144)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1126 (List!74738 List!74738) Unit!170144)

(assert (=> b!7964950 (= lt!2705237 (lemmaIsPrefixThenSmallerEqSize!1126 testedP!447 input!7927))))

(assert (= (and start!751232 res!3156367) b!7964936))

(assert (= (and b!7964936 res!3156369) b!7964935))

(assert (= (and b!7964935 res!3156365) b!7964937))

(assert (= (and b!7964937 res!3156361) b!7964939))

(assert (= (and b!7964939 res!3156363) b!7964950))

(assert (= (and b!7964950 c!1462749) b!7964944))

(assert (= (and b!7964950 (not c!1462749)) b!7964938))

(assert (= (and b!7964950 (not res!3156370)) b!7964945))

(assert (= (and b!7964945 (not res!3156368)) b!7964940))

(assert (= (and b!7964940 (not res!3156366)) b!7964942))

(assert (= (and b!7964942 (not res!3156362)) b!7964933))

(assert (= (and b!7964942 (not res!3156364)) b!7964949))

(get-info :version)

(assert (= (and start!751232 ((_ is ElementMatch!21509) baseR!116)) b!7964943))

(assert (= (and start!751232 ((_ is Concat!30508) baseR!116)) b!7964929))

(assert (= (and start!751232 ((_ is Star!21509) baseR!116)) b!7964931))

(assert (= (and start!751232 ((_ is Union!21509) baseR!116)) b!7964930))

(assert (= (and start!751232 ((_ is Cons!74614) testedP!447)) b!7964934))

(assert (= (and start!751232 ((_ is Cons!74614) input!7927)) b!7964946))

(assert (= (and start!751232 ((_ is ElementMatch!21509) r!24602)) b!7964947))

(assert (= (and start!751232 ((_ is Concat!30508) r!24602)) b!7964932))

(assert (= (and start!751232 ((_ is Star!21509) r!24602)) b!7964941))

(assert (= (and start!751232 ((_ is Union!21509) r!24602)) b!7964948))

(declare-fun m!8344868 () Bool)

(assert (=> b!7964937 m!8344868))

(declare-fun m!8344870 () Bool)

(assert (=> b!7964937 m!8344870))

(declare-fun m!8344872 () Bool)

(assert (=> b!7964937 m!8344872))

(declare-fun m!8344874 () Bool)

(assert (=> b!7964937 m!8344874))

(declare-fun m!8344876 () Bool)

(assert (=> b!7964937 m!8344876))

(declare-fun m!8344878 () Bool)

(assert (=> b!7964942 m!8344878))

(declare-fun m!8344880 () Bool)

(assert (=> b!7964942 m!8344880))

(declare-fun m!8344882 () Bool)

(assert (=> b!7964942 m!8344882))

(assert (=> b!7964942 m!8344882))

(declare-fun m!8344884 () Bool)

(assert (=> b!7964942 m!8344884))

(declare-fun m!8344886 () Bool)

(assert (=> b!7964942 m!8344886))

(declare-fun m!8344888 () Bool)

(assert (=> b!7964942 m!8344888))

(declare-fun m!8344890 () Bool)

(assert (=> b!7964942 m!8344890))

(assert (=> b!7964942 m!8344884))

(declare-fun m!8344892 () Bool)

(assert (=> b!7964942 m!8344892))

(declare-fun m!8344894 () Bool)

(assert (=> b!7964950 m!8344894))

(declare-fun m!8344896 () Bool)

(assert (=> b!7964933 m!8344896))

(declare-fun m!8344898 () Bool)

(assert (=> b!7964949 m!8344898))

(declare-fun m!8344900 () Bool)

(assert (=> start!751232 m!8344900))

(declare-fun m!8344902 () Bool)

(assert (=> b!7964935 m!8344902))

(declare-fun m!8344904 () Bool)

(assert (=> b!7964944 m!8344904))

(declare-fun m!8344906 () Bool)

(assert (=> b!7964944 m!8344906))

(declare-fun m!8344908 () Bool)

(assert (=> b!7964944 m!8344908))

(declare-fun m!8344910 () Bool)

(assert (=> b!7964936 m!8344910))

(declare-fun m!8344912 () Bool)

(assert (=> b!7964945 m!8344912))

(declare-fun m!8344914 () Bool)

(assert (=> b!7964945 m!8344914))

(declare-fun m!8344916 () Bool)

(assert (=> b!7964945 m!8344916))

(declare-fun m!8344918 () Bool)

(assert (=> b!7964945 m!8344918))

(declare-fun m!8344920 () Bool)

(assert (=> b!7964945 m!8344920))

(declare-fun m!8344922 () Bool)

(assert (=> b!7964940 m!8344922))

(assert (=> b!7964940 m!8344922))

(declare-fun m!8344924 () Bool)

(assert (=> b!7964940 m!8344924))

(declare-fun m!8344926 () Bool)

(assert (=> b!7964940 m!8344926))

(declare-fun m!8344928 () Bool)

(assert (=> b!7964940 m!8344928))

(check-sat (not b!7964933) (not b!7964944) (not b!7964940) (not b!7964949) (not b!7964948) (not b!7964932) tp_is_empty!53561 (not b!7964935) (not b!7964934) (not b!7964930) (not b!7964929) (not b!7964950) (not b!7964945) (not b!7964946) (not b!7964931) (not b!7964937) (not b!7964942) (not b!7964936) (not start!751232) (not b!7964941))
(check-sat)
(get-model)

(declare-fun d!2378851 () Bool)

(assert (=> d!2378851 (isPrefix!6609 input!7927 input!7927)))

(declare-fun lt!2705250 () Unit!170144)

(declare-fun choose!60034 (List!74738 List!74738) Unit!170144)

(assert (=> d!2378851 (= lt!2705250 (choose!60034 input!7927 input!7927))))

(assert (=> d!2378851 (= (lemmaIsPrefixRefl!4077 input!7927 input!7927) lt!2705250)))

(declare-fun bs!1969843 () Bool)

(assert (= bs!1969843 d!2378851))

(assert (=> bs!1969843 m!8344906))

(declare-fun m!8344930 () Bool)

(assert (=> bs!1969843 m!8344930))

(assert (=> b!7964944 d!2378851))

(declare-fun d!2378853 () Bool)

(declare-fun e!4696867 () Bool)

(assert (=> d!2378853 e!4696867))

(declare-fun res!3156381 () Bool)

(assert (=> d!2378853 (=> res!3156381 e!4696867)))

(declare-fun lt!2705253 () Bool)

(assert (=> d!2378853 (= res!3156381 (not lt!2705253))))

(declare-fun e!4696866 () Bool)

(assert (=> d!2378853 (= lt!2705253 e!4696866)))

(declare-fun res!3156382 () Bool)

(assert (=> d!2378853 (=> res!3156382 e!4696866)))

(assert (=> d!2378853 (= res!3156382 ((_ is Nil!74614) input!7927))))

(assert (=> d!2378853 (= (isPrefix!6609 input!7927 input!7927) lt!2705253)))

(declare-fun b!7964962 () Bool)

(assert (=> b!7964962 (= e!4696867 (>= (size!43445 input!7927) (size!43445 input!7927)))))

(declare-fun b!7964960 () Bool)

(declare-fun res!3156379 () Bool)

(declare-fun e!4696868 () Bool)

(assert (=> b!7964960 (=> (not res!3156379) (not e!4696868))))

(assert (=> b!7964960 (= res!3156379 (= (head!16261 input!7927) (head!16261 input!7927)))))

(declare-fun b!7964961 () Bool)

(assert (=> b!7964961 (= e!4696868 (isPrefix!6609 (tail!15798 input!7927) (tail!15798 input!7927)))))

(declare-fun b!7964959 () Bool)

(assert (=> b!7964959 (= e!4696866 e!4696868)))

(declare-fun res!3156380 () Bool)

(assert (=> b!7964959 (=> (not res!3156380) (not e!4696868))))

(assert (=> b!7964959 (= res!3156380 (not ((_ is Nil!74614) input!7927)))))

(assert (= (and d!2378853 (not res!3156382)) b!7964959))

(assert (= (and b!7964959 res!3156380) b!7964960))

(assert (= (and b!7964960 res!3156379) b!7964961))

(assert (= (and d!2378853 (not res!3156381)) b!7964962))

(assert (=> b!7964962 m!8344872))

(assert (=> b!7964962 m!8344872))

(declare-fun m!8344932 () Bool)

(assert (=> b!7964960 m!8344932))

(assert (=> b!7964960 m!8344932))

(declare-fun m!8344934 () Bool)

(assert (=> b!7964961 m!8344934))

(assert (=> b!7964961 m!8344934))

(assert (=> b!7964961 m!8344934))

(assert (=> b!7964961 m!8344934))

(declare-fun m!8344936 () Bool)

(assert (=> b!7964961 m!8344936))

(assert (=> b!7964944 d!2378853))

(declare-fun d!2378859 () Bool)

(assert (=> d!2378859 (= input!7927 testedP!447)))

(declare-fun lt!2705258 () Unit!170144)

(declare-fun choose!60035 (List!74738 List!74738 List!74738) Unit!170144)

(assert (=> d!2378859 (= lt!2705258 (choose!60035 input!7927 testedP!447 input!7927))))

(assert (=> d!2378859 (isPrefix!6609 input!7927 input!7927)))

(assert (=> d!2378859 (= (lemmaIsPrefixSameLengthThenSameList!1657 input!7927 testedP!447 input!7927) lt!2705258)))

(declare-fun bs!1969844 () Bool)

(assert (= bs!1969844 d!2378859))

(declare-fun m!8344938 () Bool)

(assert (=> bs!1969844 m!8344938))

(assert (=> bs!1969844 m!8344906))

(assert (=> b!7964944 d!2378859))

(declare-fun b!7964997 () Bool)

(declare-fun res!3156404 () Bool)

(declare-fun e!4696888 () Bool)

(assert (=> b!7964997 (=> (not res!3156404) (not e!4696888))))

(assert (=> b!7964997 (= res!3156404 (isEmpty!42915 (tail!15798 (_1!38643 lt!2705244))))))

(declare-fun b!7964998 () Bool)

(declare-fun e!4696886 () Bool)

(declare-fun e!4696892 () Bool)

(assert (=> b!7964998 (= e!4696886 e!4696892)))

(declare-fun res!3156400 () Bool)

(assert (=> b!7964998 (=> (not res!3156400) (not e!4696892))))

(declare-fun lt!2705262 () Bool)

(assert (=> b!7964998 (= res!3156400 (not lt!2705262))))

(declare-fun b!7964999 () Bool)

(assert (=> b!7964999 (= e!4696888 (= (head!16261 (_1!38643 lt!2705244)) (c!1462750 baseR!116)))))

(declare-fun b!7965000 () Bool)

(declare-fun res!3156402 () Bool)

(assert (=> b!7965000 (=> res!3156402 e!4696886)))

(assert (=> b!7965000 (= res!3156402 e!4696888)))

(declare-fun res!3156401 () Bool)

(assert (=> b!7965000 (=> (not res!3156401) (not e!4696888))))

(assert (=> b!7965000 (= res!3156401 lt!2705262)))

(declare-fun b!7965001 () Bool)

(declare-fun e!4696887 () Bool)

(assert (=> b!7965001 (= e!4696887 (nullable!9610 baseR!116))))

(declare-fun bm!738794 () Bool)

(declare-fun call!738799 () Bool)

(assert (=> bm!738794 (= call!738799 (isEmpty!42915 (_1!38643 lt!2705244)))))

(declare-fun b!7965002 () Bool)

(declare-fun e!4696889 () Bool)

(assert (=> b!7965002 (= e!4696889 (not (= (head!16261 (_1!38643 lt!2705244)) (c!1462750 baseR!116))))))

(declare-fun b!7965003 () Bool)

(declare-fun res!3156405 () Bool)

(assert (=> b!7965003 (=> res!3156405 e!4696889)))

(assert (=> b!7965003 (= res!3156405 (not (isEmpty!42915 (tail!15798 (_1!38643 lt!2705244)))))))

(declare-fun d!2378861 () Bool)

(declare-fun e!4696890 () Bool)

(assert (=> d!2378861 e!4696890))

(declare-fun c!1462762 () Bool)

(assert (=> d!2378861 (= c!1462762 ((_ is EmptyExpr!21509) baseR!116))))

(assert (=> d!2378861 (= lt!2705262 e!4696887)))

(declare-fun c!1462760 () Bool)

(assert (=> d!2378861 (= c!1462760 (isEmpty!42915 (_1!38643 lt!2705244)))))

(assert (=> d!2378861 (validRegex!11813 baseR!116)))

(assert (=> d!2378861 (= (matchR!10742 baseR!116 (_1!38643 lt!2705244)) lt!2705262)))

(declare-fun b!7965004 () Bool)

(assert (=> b!7965004 (= e!4696887 (matchR!10742 (derivativeStep!6537 baseR!116 (head!16261 (_1!38643 lt!2705244))) (tail!15798 (_1!38643 lt!2705244))))))

(declare-fun b!7965005 () Bool)

(declare-fun e!4696891 () Bool)

(assert (=> b!7965005 (= e!4696891 (not lt!2705262))))

(declare-fun b!7965006 () Bool)

(assert (=> b!7965006 (= e!4696890 (= lt!2705262 call!738799))))

(declare-fun b!7965007 () Bool)

(assert (=> b!7965007 (= e!4696890 e!4696891)))

(declare-fun c!1462761 () Bool)

(assert (=> b!7965007 (= c!1462761 ((_ is EmptyLang!21509) baseR!116))))

(declare-fun b!7965008 () Bool)

(declare-fun res!3156403 () Bool)

(assert (=> b!7965008 (=> (not res!3156403) (not e!4696888))))

(assert (=> b!7965008 (= res!3156403 (not call!738799))))

(declare-fun b!7965009 () Bool)

(declare-fun res!3156406 () Bool)

(assert (=> b!7965009 (=> res!3156406 e!4696886)))

(assert (=> b!7965009 (= res!3156406 (not ((_ is ElementMatch!21509) baseR!116)))))

(assert (=> b!7965009 (= e!4696891 e!4696886)))

(declare-fun b!7965010 () Bool)

(assert (=> b!7965010 (= e!4696892 e!4696889)))

(declare-fun res!3156399 () Bool)

(assert (=> b!7965010 (=> res!3156399 e!4696889)))

(assert (=> b!7965010 (= res!3156399 call!738799)))

(assert (= (and d!2378861 c!1462760) b!7965001))

(assert (= (and d!2378861 (not c!1462760)) b!7965004))

(assert (= (and d!2378861 c!1462762) b!7965006))

(assert (= (and d!2378861 (not c!1462762)) b!7965007))

(assert (= (and b!7965007 c!1462761) b!7965005))

(assert (= (and b!7965007 (not c!1462761)) b!7965009))

(assert (= (and b!7965009 (not res!3156406)) b!7965000))

(assert (= (and b!7965000 res!3156401) b!7965008))

(assert (= (and b!7965008 res!3156403) b!7964997))

(assert (= (and b!7964997 res!3156404) b!7964999))

(assert (= (and b!7965000 (not res!3156402)) b!7964998))

(assert (= (and b!7964998 res!3156400) b!7965010))

(assert (= (and b!7965010 (not res!3156399)) b!7965003))

(assert (= (and b!7965003 (not res!3156405)) b!7965002))

(assert (= (or b!7965006 b!7965008 b!7965010) bm!738794))

(declare-fun m!8344946 () Bool)

(assert (=> b!7965002 m!8344946))

(assert (=> b!7964999 m!8344946))

(assert (=> d!2378861 m!8344888))

(assert (=> d!2378861 m!8344900))

(declare-fun m!8344948 () Bool)

(assert (=> b!7965003 m!8344948))

(assert (=> b!7965003 m!8344948))

(declare-fun m!8344950 () Bool)

(assert (=> b!7965003 m!8344950))

(declare-fun m!8344952 () Bool)

(assert (=> b!7965001 m!8344952))

(assert (=> bm!738794 m!8344888))

(assert (=> b!7965004 m!8344946))

(assert (=> b!7965004 m!8344946))

(declare-fun m!8344954 () Bool)

(assert (=> b!7965004 m!8344954))

(assert (=> b!7965004 m!8344948))

(assert (=> b!7965004 m!8344954))

(assert (=> b!7965004 m!8344948))

(declare-fun m!8344956 () Bool)

(assert (=> b!7965004 m!8344956))

(assert (=> b!7964997 m!8344948))

(assert (=> b!7964997 m!8344948))

(assert (=> b!7964997 m!8344950))

(assert (=> b!7964933 d!2378861))

(declare-fun d!2378865 () Bool)

(assert (=> d!2378865 (= (head!16261 lt!2705240) (h!81062 lt!2705240))))

(assert (=> b!7964945 d!2378865))

(declare-fun d!2378867 () Bool)

(declare-fun nullableFct!3791 (Regex!21509) Bool)

(assert (=> d!2378867 (= (nullable!9610 r!24602) (nullableFct!3791 r!24602))))

(declare-fun bs!1969845 () Bool)

(assert (= bs!1969845 d!2378867))

(declare-fun m!8344958 () Bool)

(assert (=> bs!1969845 m!8344958))

(assert (=> b!7964945 d!2378867))

(declare-fun d!2378869 () Bool)

(declare-fun e!4696894 () Bool)

(assert (=> d!2378869 e!4696894))

(declare-fun res!3156409 () Bool)

(assert (=> d!2378869 (=> res!3156409 e!4696894)))

(declare-fun lt!2705263 () Bool)

(assert (=> d!2378869 (= res!3156409 (not lt!2705263))))

(declare-fun e!4696893 () Bool)

(assert (=> d!2378869 (= lt!2705263 e!4696893)))

(declare-fun res!3156410 () Bool)

(assert (=> d!2378869 (=> res!3156410 e!4696893)))

(assert (=> d!2378869 (= res!3156410 ((_ is Nil!74614) lt!2705235))))

(assert (=> d!2378869 (= (isPrefix!6609 lt!2705235 input!7927) lt!2705263)))

(declare-fun b!7965014 () Bool)

(assert (=> b!7965014 (= e!4696894 (>= (size!43445 input!7927) (size!43445 lt!2705235)))))

(declare-fun b!7965012 () Bool)

(declare-fun res!3156407 () Bool)

(declare-fun e!4696895 () Bool)

(assert (=> b!7965012 (=> (not res!3156407) (not e!4696895))))

(assert (=> b!7965012 (= res!3156407 (= (head!16261 lt!2705235) (head!16261 input!7927)))))

(declare-fun b!7965013 () Bool)

(assert (=> b!7965013 (= e!4696895 (isPrefix!6609 (tail!15798 lt!2705235) (tail!15798 input!7927)))))

(declare-fun b!7965011 () Bool)

(assert (=> b!7965011 (= e!4696893 e!4696895)))

(declare-fun res!3156408 () Bool)

(assert (=> b!7965011 (=> (not res!3156408) (not e!4696895))))

(assert (=> b!7965011 (= res!3156408 (not ((_ is Nil!74614) input!7927)))))

(assert (= (and d!2378869 (not res!3156410)) b!7965011))

(assert (= (and b!7965011 res!3156408) b!7965012))

(assert (= (and b!7965012 res!3156407) b!7965013))

(assert (= (and d!2378869 (not res!3156409)) b!7965014))

(assert (=> b!7965014 m!8344872))

(assert (=> b!7965014 m!8344882))

(declare-fun m!8344960 () Bool)

(assert (=> b!7965012 m!8344960))

(assert (=> b!7965012 m!8344932))

(declare-fun m!8344962 () Bool)

(assert (=> b!7965013 m!8344962))

(assert (=> b!7965013 m!8344934))

(assert (=> b!7965013 m!8344962))

(assert (=> b!7965013 m!8344934))

(declare-fun m!8344964 () Bool)

(assert (=> b!7965013 m!8344964))

(assert (=> b!7964945 d!2378869))

(declare-fun d!2378871 () Bool)

(declare-fun e!4696900 () Bool)

(assert (=> d!2378871 e!4696900))

(declare-fun res!3156415 () Bool)

(assert (=> d!2378871 (=> (not res!3156415) (not e!4696900))))

(declare-fun lt!2705266 () List!74738)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15849 (List!74738) (InoxSet C!43356))

(assert (=> d!2378871 (= res!3156415 (= (content!15849 lt!2705266) ((_ map or) (content!15849 testedP!447) (content!15849 (Cons!74614 lt!2705246 Nil!74614)))))))

(declare-fun e!4696901 () List!74738)

(assert (=> d!2378871 (= lt!2705266 e!4696901)))

(declare-fun c!1462765 () Bool)

(assert (=> d!2378871 (= c!1462765 ((_ is Nil!74614) testedP!447))))

(assert (=> d!2378871 (= (++!18379 testedP!447 (Cons!74614 lt!2705246 Nil!74614)) lt!2705266)))

(declare-fun b!7965024 () Bool)

(assert (=> b!7965024 (= e!4696901 (Cons!74614 (h!81062 testedP!447) (++!18379 (t!390481 testedP!447) (Cons!74614 lt!2705246 Nil!74614))))))

(declare-fun b!7965023 () Bool)

(assert (=> b!7965023 (= e!4696901 (Cons!74614 lt!2705246 Nil!74614))))

(declare-fun b!7965026 () Bool)

(assert (=> b!7965026 (= e!4696900 (or (not (= (Cons!74614 lt!2705246 Nil!74614) Nil!74614)) (= lt!2705266 testedP!447)))))

(declare-fun b!7965025 () Bool)

(declare-fun res!3156416 () Bool)

(assert (=> b!7965025 (=> (not res!3156416) (not e!4696900))))

(assert (=> b!7965025 (= res!3156416 (= (size!43445 lt!2705266) (+ (size!43445 testedP!447) (size!43445 (Cons!74614 lt!2705246 Nil!74614)))))))

(assert (= (and d!2378871 c!1462765) b!7965023))

(assert (= (and d!2378871 (not c!1462765)) b!7965024))

(assert (= (and d!2378871 res!3156415) b!7965025))

(assert (= (and b!7965025 res!3156416) b!7965026))

(declare-fun m!8344966 () Bool)

(assert (=> d!2378871 m!8344966))

(declare-fun m!8344968 () Bool)

(assert (=> d!2378871 m!8344968))

(declare-fun m!8344970 () Bool)

(assert (=> d!2378871 m!8344970))

(declare-fun m!8344972 () Bool)

(assert (=> b!7965024 m!8344972))

(declare-fun m!8344974 () Bool)

(assert (=> b!7965025 m!8344974))

(assert (=> b!7965025 m!8344870))

(declare-fun m!8344976 () Bool)

(assert (=> b!7965025 m!8344976))

(assert (=> b!7964945 d!2378871))

(declare-fun d!2378873 () Bool)

(assert (=> d!2378873 (isPrefix!6609 (++!18379 testedP!447 (Cons!74614 (head!16261 (getSuffix!3812 input!7927 testedP!447)) Nil!74614)) input!7927)))

(declare-fun lt!2705269 () Unit!170144)

(declare-fun choose!60036 (List!74738 List!74738) Unit!170144)

(assert (=> d!2378873 (= lt!2705269 (choose!60036 testedP!447 input!7927))))

(assert (=> d!2378873 (isPrefix!6609 testedP!447 input!7927)))

(assert (=> d!2378873 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1336 testedP!447 input!7927) lt!2705269)))

(declare-fun bs!1969846 () Bool)

(assert (= bs!1969846 d!2378873))

(declare-fun m!8344978 () Bool)

(assert (=> bs!1969846 m!8344978))

(assert (=> bs!1969846 m!8344876))

(declare-fun m!8344980 () Bool)

(assert (=> bs!1969846 m!8344980))

(declare-fun m!8344982 () Bool)

(assert (=> bs!1969846 m!8344982))

(assert (=> bs!1969846 m!8344910))

(assert (=> bs!1969846 m!8344876))

(declare-fun m!8344984 () Bool)

(assert (=> bs!1969846 m!8344984))

(assert (=> bs!1969846 m!8344980))

(assert (=> b!7964945 d!2378873))

(declare-fun d!2378875 () Bool)

(declare-fun lt!2705272 () Regex!21509)

(assert (=> d!2378875 (validRegex!11813 lt!2705272)))

(declare-fun e!4696904 () Regex!21509)

(assert (=> d!2378875 (= lt!2705272 e!4696904)))

(declare-fun c!1462768 () Bool)

(assert (=> d!2378875 (= c!1462768 ((_ is Cons!74614) testedP!447))))

(assert (=> d!2378875 (validRegex!11813 baseR!116)))

(assert (=> d!2378875 (= (derivative!695 baseR!116 testedP!447) lt!2705272)))

(declare-fun b!7965031 () Bool)

(assert (=> b!7965031 (= e!4696904 (derivative!695 (derivativeStep!6537 baseR!116 (h!81062 testedP!447)) (t!390481 testedP!447)))))

(declare-fun b!7965032 () Bool)

(assert (=> b!7965032 (= e!4696904 baseR!116)))

(assert (= (and d!2378875 c!1462768) b!7965031))

(assert (= (and d!2378875 (not c!1462768)) b!7965032))

(declare-fun m!8344986 () Bool)

(assert (=> d!2378875 m!8344986))

(assert (=> d!2378875 m!8344900))

(declare-fun m!8344988 () Bool)

(assert (=> b!7965031 m!8344988))

(assert (=> b!7965031 m!8344988))

(declare-fun m!8344990 () Bool)

(assert (=> b!7965031 m!8344990))

(assert (=> b!7964935 d!2378875))

(declare-fun d!2378877 () Bool)

(declare-fun lt!2705273 () Regex!21509)

(assert (=> d!2378877 (validRegex!11813 lt!2705273)))

(declare-fun e!4696905 () Regex!21509)

(assert (=> d!2378877 (= lt!2705273 e!4696905)))

(declare-fun c!1462769 () Bool)

(assert (=> d!2378877 (= c!1462769 ((_ is Cons!74614) lt!2705235))))

(assert (=> d!2378877 (validRegex!11813 baseR!116)))

(assert (=> d!2378877 (= (derivative!695 baseR!116 lt!2705235) lt!2705273)))

(declare-fun b!7965033 () Bool)

(assert (=> b!7965033 (= e!4696905 (derivative!695 (derivativeStep!6537 baseR!116 (h!81062 lt!2705235)) (t!390481 lt!2705235)))))

(declare-fun b!7965034 () Bool)

(assert (=> b!7965034 (= e!4696905 baseR!116)))

(assert (= (and d!2378877 c!1462769) b!7965033))

(assert (= (and d!2378877 (not c!1462769)) b!7965034))

(declare-fun m!8344992 () Bool)

(assert (=> d!2378877 m!8344992))

(assert (=> d!2378877 m!8344900))

(declare-fun m!8344994 () Bool)

(assert (=> b!7965033 m!8344994))

(assert (=> b!7965033 m!8344994))

(declare-fun m!8344996 () Bool)

(assert (=> b!7965033 m!8344996))

(assert (=> b!7964942 d!2378877))

(declare-fun d!2378879 () Bool)

(assert (=> d!2378879 (= (isEmpty!42915 (_1!38643 lt!2705244)) ((_ is Nil!74614) (_1!38643 lt!2705244)))))

(assert (=> b!7964942 d!2378879))

(declare-fun d!2378881 () Bool)

(assert (=> d!2378881 (= (derivative!695 baseR!116 (++!18379 testedP!447 (Cons!74614 lt!2705246 Nil!74614))) (derivativeStep!6537 r!24602 lt!2705246))))

(declare-fun lt!2705276 () Unit!170144)

(declare-fun choose!60037 (Regex!21509 Regex!21509 List!74738 C!43356) Unit!170144)

(assert (=> d!2378881 (= lt!2705276 (choose!60037 baseR!116 r!24602 testedP!447 lt!2705246))))

(assert (=> d!2378881 (validRegex!11813 baseR!116)))

(assert (=> d!2378881 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!221 baseR!116 r!24602 testedP!447 lt!2705246) lt!2705276)))

(declare-fun bs!1969847 () Bool)

(assert (= bs!1969847 d!2378881))

(assert (=> bs!1969847 m!8344928))

(assert (=> bs!1969847 m!8344900))

(declare-fun m!8344998 () Bool)

(assert (=> bs!1969847 m!8344998))

(assert (=> bs!1969847 m!8344914))

(assert (=> bs!1969847 m!8344914))

(declare-fun m!8345000 () Bool)

(assert (=> bs!1969847 m!8345000))

(assert (=> b!7964942 d!2378881))

(declare-fun bm!738817 () Bool)

(declare-fun call!738823 () Bool)

(declare-fun c!1462788 () Bool)

(assert (=> bm!738817 (= call!738823 (validRegex!11813 (ite c!1462788 (regOne!43531 r!24602) (regOne!43530 r!24602))))))

(declare-fun b!7965082 () Bool)

(declare-fun e!4696941 () Bool)

(declare-fun e!4696940 () Bool)

(assert (=> b!7965082 (= e!4696941 e!4696940)))

(declare-fun c!1462787 () Bool)

(assert (=> b!7965082 (= c!1462787 ((_ is Star!21509) r!24602))))

(declare-fun b!7965083 () Bool)

(declare-fun e!4696938 () Bool)

(declare-fun e!4696942 () Bool)

(assert (=> b!7965083 (= e!4696938 e!4696942)))

(declare-fun res!3156433 () Bool)

(assert (=> b!7965083 (=> (not res!3156433) (not e!4696942))))

(assert (=> b!7965083 (= res!3156433 call!738823)))

(declare-fun b!7965084 () Bool)

(declare-fun call!738824 () Bool)

(assert (=> b!7965084 (= e!4696942 call!738824)))

(declare-fun b!7965085 () Bool)

(declare-fun e!4696937 () Bool)

(declare-fun call!738822 () Bool)

(assert (=> b!7965085 (= e!4696937 call!738822)))

(declare-fun b!7965086 () Bool)

(declare-fun res!3156431 () Bool)

(assert (=> b!7965086 (=> res!3156431 e!4696938)))

(assert (=> b!7965086 (= res!3156431 (not ((_ is Concat!30508) r!24602)))))

(declare-fun e!4696939 () Bool)

(assert (=> b!7965086 (= e!4696939 e!4696938)))

(declare-fun b!7965087 () Bool)

(assert (=> b!7965087 (= e!4696940 e!4696939)))

(assert (=> b!7965087 (= c!1462788 ((_ is Union!21509) r!24602))))

(declare-fun b!7965081 () Bool)

(assert (=> b!7965081 (= e!4696940 e!4696937)))

(declare-fun res!3156432 () Bool)

(assert (=> b!7965081 (= res!3156432 (not (nullable!9610 (reg!21838 r!24602))))))

(assert (=> b!7965081 (=> (not res!3156432) (not e!4696937))))

(declare-fun d!2378883 () Bool)

(declare-fun res!3156435 () Bool)

(assert (=> d!2378883 (=> res!3156435 e!4696941)))

(assert (=> d!2378883 (= res!3156435 ((_ is ElementMatch!21509) r!24602))))

(assert (=> d!2378883 (= (validRegex!11813 r!24602) e!4696941)))

(declare-fun bm!738818 () Bool)

(assert (=> bm!738818 (= call!738822 (validRegex!11813 (ite c!1462787 (reg!21838 r!24602) (ite c!1462788 (regTwo!43531 r!24602) (regTwo!43530 r!24602)))))))

(declare-fun bm!738819 () Bool)

(assert (=> bm!738819 (= call!738824 call!738822)))

(declare-fun b!7965088 () Bool)

(declare-fun res!3156434 () Bool)

(declare-fun e!4696936 () Bool)

(assert (=> b!7965088 (=> (not res!3156434) (not e!4696936))))

(assert (=> b!7965088 (= res!3156434 call!738823)))

(assert (=> b!7965088 (= e!4696939 e!4696936)))

(declare-fun b!7965089 () Bool)

(assert (=> b!7965089 (= e!4696936 call!738824)))

(assert (= (and d!2378883 (not res!3156435)) b!7965082))

(assert (= (and b!7965082 c!1462787) b!7965081))

(assert (= (and b!7965082 (not c!1462787)) b!7965087))

(assert (= (and b!7965081 res!3156432) b!7965085))

(assert (= (and b!7965087 c!1462788) b!7965088))

(assert (= (and b!7965087 (not c!1462788)) b!7965086))

(assert (= (and b!7965088 res!3156434) b!7965089))

(assert (= (and b!7965086 (not res!3156431)) b!7965083))

(assert (= (and b!7965083 res!3156433) b!7965084))

(assert (= (or b!7965089 b!7965084) bm!738819))

(assert (= (or b!7965088 b!7965083) bm!738817))

(assert (= (or b!7965085 bm!738819) bm!738818))

(declare-fun m!8345002 () Bool)

(assert (=> bm!738817 m!8345002))

(declare-fun m!8345004 () Bool)

(assert (=> b!7965081 m!8345004))

(declare-fun m!8345006 () Bool)

(assert (=> bm!738818 m!8345006))

(assert (=> b!7964942 d!2378883))

(declare-fun d!2378885 () Bool)

(declare-fun lt!2705366 () List!74738)

(assert (=> d!2378885 (= (++!18379 lt!2705235 lt!2705366) input!7927)))

(declare-fun e!4696953 () List!74738)

(assert (=> d!2378885 (= lt!2705366 e!4696953)))

(declare-fun c!1462798 () Bool)

(assert (=> d!2378885 (= c!1462798 ((_ is Cons!74614) lt!2705235))))

(assert (=> d!2378885 (>= (size!43445 input!7927) (size!43445 lt!2705235))))

(assert (=> d!2378885 (= (getSuffix!3812 input!7927 lt!2705235) lt!2705366)))

(declare-fun b!7965108 () Bool)

(assert (=> b!7965108 (= e!4696953 (getSuffix!3812 (tail!15798 input!7927) (t!390481 lt!2705235)))))

(declare-fun b!7965109 () Bool)

(assert (=> b!7965109 (= e!4696953 input!7927)))

(assert (= (and d!2378885 c!1462798) b!7965108))

(assert (= (and d!2378885 (not c!1462798)) b!7965109))

(declare-fun m!8345058 () Bool)

(assert (=> d!2378885 m!8345058))

(assert (=> d!2378885 m!8344872))

(assert (=> d!2378885 m!8344882))

(assert (=> b!7965108 m!8344934))

(assert (=> b!7965108 m!8344934))

(declare-fun m!8345060 () Bool)

(assert (=> b!7965108 m!8345060))

(assert (=> b!7964942 d!2378885))

(declare-fun b!7965389 () Bool)

(declare-fun e!4697109 () tuple2!70680)

(declare-fun e!4697106 () tuple2!70680)

(assert (=> b!7965389 (= e!4697109 e!4697106)))

(declare-fun lt!2705519 () tuple2!70680)

(declare-fun call!738894 () tuple2!70680)

(assert (=> b!7965389 (= lt!2705519 call!738894)))

(declare-fun c!1462873 () Bool)

(assert (=> b!7965389 (= c!1462873 (isEmpty!42915 (_1!38643 lt!2705519)))))

(declare-fun bm!738887 () Bool)

(declare-fun call!738895 () Bool)

(assert (=> bm!738887 (= call!738895 (nullable!9610 lt!2705242))))

(declare-fun b!7965390 () Bool)

(assert (=> b!7965390 (= e!4697106 (tuple2!70681 lt!2705235 (getSuffix!3812 input!7927 lt!2705235)))))

(declare-fun b!7965391 () Bool)

(declare-fun e!4697104 () tuple2!70680)

(assert (=> b!7965391 (= e!4697104 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun b!7965392 () Bool)

(declare-fun e!4697108 () Bool)

(declare-fun e!4697107 () Bool)

(assert (=> b!7965392 (= e!4697108 e!4697107)))

(declare-fun res!3156521 () Bool)

(assert (=> b!7965392 (=> res!3156521 e!4697107)))

(declare-fun lt!2705539 () tuple2!70680)

(assert (=> b!7965392 (= res!3156521 (isEmpty!42915 (_1!38643 lt!2705539)))))

(declare-fun b!7965393 () Bool)

(assert (=> b!7965393 (= e!4697109 call!738894)))

(declare-fun b!7965394 () Bool)

(declare-fun e!4697105 () tuple2!70680)

(assert (=> b!7965394 (= e!4697105 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun bm!738888 () Bool)

(declare-fun call!738899 () Unit!170144)

(assert (=> bm!738888 (= call!738899 (lemmaIsPrefixRefl!4077 input!7927 input!7927))))

(declare-fun bm!738889 () Bool)

(declare-fun call!738896 () Unit!170144)

(assert (=> bm!738889 (= call!738896 (lemmaIsPrefixSameLengthThenSameList!1657 input!7927 lt!2705235 input!7927))))

(declare-fun b!7965395 () Bool)

(declare-fun e!4697103 () Unit!170144)

(declare-fun Unit!170154 () Unit!170144)

(assert (=> b!7965395 (= e!4697103 Unit!170154)))

(declare-fun bm!738890 () Bool)

(declare-fun call!738897 () Regex!21509)

(declare-fun call!738898 () C!43356)

(assert (=> bm!738890 (= call!738897 (derivativeStep!6537 lt!2705242 call!738898))))

(declare-fun d!2378891 () Bool)

(assert (=> d!2378891 e!4697108))

(declare-fun res!3156522 () Bool)

(assert (=> d!2378891 (=> (not res!3156522) (not e!4697108))))

(assert (=> d!2378891 (= res!3156522 (= (++!18379 (_1!38643 lt!2705539) (_2!38643 lt!2705539)) input!7927))))

(assert (=> d!2378891 (= lt!2705539 e!4697104)))

(declare-fun c!1462874 () Bool)

(declare-fun lostCause!1982 (Regex!21509) Bool)

(assert (=> d!2378891 (= c!1462874 (lostCause!1982 lt!2705242))))

(declare-fun lt!2705521 () Unit!170144)

(declare-fun Unit!170155 () Unit!170144)

(assert (=> d!2378891 (= lt!2705521 Unit!170155)))

(assert (=> d!2378891 (= (getSuffix!3812 input!7927 lt!2705235) (getSuffix!3812 input!7927 lt!2705235))))

(declare-fun lt!2705532 () Unit!170144)

(declare-fun lt!2705533 () Unit!170144)

(assert (=> d!2378891 (= lt!2705532 lt!2705533)))

(declare-fun lt!2705528 () List!74738)

(assert (=> d!2378891 (= (getSuffix!3812 input!7927 lt!2705235) lt!2705528)))

(declare-fun lemmaSamePrefixThenSameSuffix!2998 (List!74738 List!74738 List!74738 List!74738 List!74738) Unit!170144)

(assert (=> d!2378891 (= lt!2705533 (lemmaSamePrefixThenSameSuffix!2998 lt!2705235 (getSuffix!3812 input!7927 lt!2705235) lt!2705235 lt!2705528 input!7927))))

(assert (=> d!2378891 (= lt!2705528 (getSuffix!3812 input!7927 lt!2705235))))

(declare-fun lt!2705523 () Unit!170144)

(declare-fun lt!2705526 () Unit!170144)

(assert (=> d!2378891 (= lt!2705523 lt!2705526)))

(assert (=> d!2378891 (isPrefix!6609 lt!2705235 (++!18379 lt!2705235 (getSuffix!3812 input!7927 lt!2705235)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3860 (List!74738 List!74738) Unit!170144)

(assert (=> d!2378891 (= lt!2705526 (lemmaConcatTwoListThenFirstIsPrefix!3860 lt!2705235 (getSuffix!3812 input!7927 lt!2705235)))))

(assert (=> d!2378891 (validRegex!11813 lt!2705242)))

(assert (=> d!2378891 (= (findLongestMatchInner!2290 lt!2705242 lt!2705235 (size!43445 lt!2705235) (getSuffix!3812 input!7927 lt!2705235) input!7927 lt!2705236) lt!2705539)))

(declare-fun b!7965396 () Bool)

(declare-fun c!1462869 () Bool)

(assert (=> b!7965396 (= c!1462869 call!738895)))

(declare-fun lt!2705524 () Unit!170144)

(declare-fun lt!2705545 () Unit!170144)

(assert (=> b!7965396 (= lt!2705524 lt!2705545)))

(declare-fun lt!2705538 () C!43356)

(declare-fun lt!2705536 () List!74738)

(assert (=> b!7965396 (= (++!18379 (++!18379 lt!2705235 (Cons!74614 lt!2705538 Nil!74614)) lt!2705536) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3538 (List!74738 C!43356 List!74738 List!74738) Unit!170144)

(assert (=> b!7965396 (= lt!2705545 (lemmaMoveElementToOtherListKeepsConcatEq!3538 lt!2705235 lt!2705538 lt!2705536 input!7927))))

(assert (=> b!7965396 (= lt!2705536 (tail!15798 (getSuffix!3812 input!7927 lt!2705235)))))

(assert (=> b!7965396 (= lt!2705538 (head!16261 (getSuffix!3812 input!7927 lt!2705235)))))

(declare-fun lt!2705542 () Unit!170144)

(declare-fun lt!2705535 () Unit!170144)

(assert (=> b!7965396 (= lt!2705542 lt!2705535)))

(assert (=> b!7965396 (isPrefix!6609 (++!18379 lt!2705235 (Cons!74614 (head!16261 (getSuffix!3812 input!7927 lt!2705235)) Nil!74614)) input!7927)))

(assert (=> b!7965396 (= lt!2705535 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 lt!2705235 input!7927))))

(declare-fun lt!2705546 () Unit!170144)

(declare-fun lt!2705531 () Unit!170144)

(assert (=> b!7965396 (= lt!2705546 lt!2705531)))

(assert (=> b!7965396 (= lt!2705531 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 lt!2705235 input!7927))))

(declare-fun lt!2705537 () List!74738)

(assert (=> b!7965396 (= lt!2705537 (++!18379 lt!2705235 (Cons!74614 (head!16261 (getSuffix!3812 input!7927 lt!2705235)) Nil!74614)))))

(declare-fun lt!2705534 () Unit!170144)

(assert (=> b!7965396 (= lt!2705534 e!4697103)))

(declare-fun c!1462872 () Bool)

(assert (=> b!7965396 (= c!1462872 (= (size!43445 lt!2705235) (size!43445 input!7927)))))

(declare-fun lt!2705522 () Unit!170144)

(declare-fun lt!2705541 () Unit!170144)

(assert (=> b!7965396 (= lt!2705522 lt!2705541)))

(assert (=> b!7965396 (<= (size!43445 lt!2705235) (size!43445 input!7927))))

(assert (=> b!7965396 (= lt!2705541 (lemmaIsPrefixThenSmallerEqSize!1126 lt!2705235 input!7927))))

(declare-fun e!4697102 () tuple2!70680)

(assert (=> b!7965396 (= e!4697102 e!4697109)))

(declare-fun bm!738891 () Bool)

(assert (=> bm!738891 (= call!738898 (head!16261 (getSuffix!3812 input!7927 lt!2705235)))))

(declare-fun b!7965397 () Bool)

(assert (=> b!7965397 (= e!4697106 lt!2705519)))

(declare-fun b!7965398 () Bool)

(declare-fun c!1462870 () Bool)

(assert (=> b!7965398 (= c!1462870 call!738895)))

(declare-fun lt!2705530 () Unit!170144)

(declare-fun lt!2705540 () Unit!170144)

(assert (=> b!7965398 (= lt!2705530 lt!2705540)))

(assert (=> b!7965398 (= input!7927 lt!2705235)))

(assert (=> b!7965398 (= lt!2705540 call!738896)))

(declare-fun lt!2705527 () Unit!170144)

(declare-fun lt!2705529 () Unit!170144)

(assert (=> b!7965398 (= lt!2705527 lt!2705529)))

(declare-fun call!738892 () Bool)

(assert (=> b!7965398 call!738892))

(assert (=> b!7965398 (= lt!2705529 call!738899)))

(assert (=> b!7965398 (= e!4697102 e!4697105)))

(declare-fun b!7965399 () Bool)

(assert (=> b!7965399 (= e!4697104 e!4697102)))

(declare-fun c!1462871 () Bool)

(assert (=> b!7965399 (= c!1462871 (= (size!43445 lt!2705235) lt!2705236))))

(declare-fun bm!738892 () Bool)

(declare-fun call!738893 () List!74738)

(assert (=> bm!738892 (= call!738894 (findLongestMatchInner!2290 call!738897 lt!2705537 (+ (size!43445 lt!2705235) 1) call!738893 input!7927 lt!2705236))))

(declare-fun bm!738893 () Bool)

(assert (=> bm!738893 (= call!738892 (isPrefix!6609 input!7927 input!7927))))

(declare-fun b!7965400 () Bool)

(assert (=> b!7965400 (= e!4697107 (>= (size!43445 (_1!38643 lt!2705539)) (size!43445 lt!2705235)))))

(declare-fun bm!738894 () Bool)

(assert (=> bm!738894 (= call!738893 (tail!15798 (getSuffix!3812 input!7927 lt!2705235)))))

(declare-fun b!7965401 () Bool)

(declare-fun Unit!170156 () Unit!170144)

(assert (=> b!7965401 (= e!4697103 Unit!170156)))

(declare-fun lt!2705543 () Unit!170144)

(assert (=> b!7965401 (= lt!2705543 call!738899)))

(assert (=> b!7965401 call!738892))

(declare-fun lt!2705525 () Unit!170144)

(assert (=> b!7965401 (= lt!2705525 lt!2705543)))

(declare-fun lt!2705544 () Unit!170144)

(assert (=> b!7965401 (= lt!2705544 call!738896)))

(assert (=> b!7965401 (= input!7927 lt!2705235)))

(declare-fun lt!2705520 () Unit!170144)

(assert (=> b!7965401 (= lt!2705520 lt!2705544)))

(assert (=> b!7965401 false))

(declare-fun b!7965402 () Bool)

(assert (=> b!7965402 (= e!4697105 (tuple2!70681 lt!2705235 Nil!74614))))

(assert (= (and d!2378891 c!1462874) b!7965391))

(assert (= (and d!2378891 (not c!1462874)) b!7965399))

(assert (= (and b!7965399 c!1462871) b!7965398))

(assert (= (and b!7965399 (not c!1462871)) b!7965396))

(assert (= (and b!7965398 c!1462870) b!7965402))

(assert (= (and b!7965398 (not c!1462870)) b!7965394))

(assert (= (and b!7965396 c!1462872) b!7965401))

(assert (= (and b!7965396 (not c!1462872)) b!7965395))

(assert (= (and b!7965396 c!1462869) b!7965389))

(assert (= (and b!7965396 (not c!1462869)) b!7965393))

(assert (= (and b!7965389 c!1462873) b!7965390))

(assert (= (and b!7965389 (not c!1462873)) b!7965397))

(assert (= (or b!7965389 b!7965393) bm!738891))

(assert (= (or b!7965389 b!7965393) bm!738894))

(assert (= (or b!7965389 b!7965393) bm!738890))

(assert (= (or b!7965389 b!7965393) bm!738892))

(assert (= (or b!7965398 b!7965396) bm!738887))

(assert (= (or b!7965398 b!7965401) bm!738889))

(assert (= (or b!7965398 b!7965401) bm!738888))

(assert (= (or b!7965398 b!7965401) bm!738893))

(assert (= (and d!2378891 res!3156522) b!7965392))

(assert (= (and b!7965392 (not res!3156521)) b!7965400))

(declare-fun m!8345238 () Bool)

(assert (=> b!7965389 m!8345238))

(declare-fun m!8345240 () Bool)

(assert (=> bm!738892 m!8345240))

(declare-fun m!8345242 () Bool)

(assert (=> bm!738889 m!8345242))

(assert (=> bm!738893 m!8344906))

(declare-fun m!8345244 () Bool)

(assert (=> b!7965392 m!8345244))

(assert (=> bm!738894 m!8344884))

(declare-fun m!8345246 () Bool)

(assert (=> bm!738894 m!8345246))

(assert (=> bm!738888 m!8344904))

(declare-fun m!8345248 () Bool)

(assert (=> b!7965400 m!8345248))

(assert (=> b!7965400 m!8344882))

(declare-fun m!8345250 () Bool)

(assert (=> bm!738887 m!8345250))

(assert (=> b!7965396 m!8344884))

(declare-fun m!8345252 () Bool)

(assert (=> b!7965396 m!8345252))

(declare-fun m!8345254 () Bool)

(assert (=> b!7965396 m!8345254))

(assert (=> b!7965396 m!8344884))

(declare-fun m!8345256 () Bool)

(assert (=> b!7965396 m!8345256))

(declare-fun m!8345258 () Bool)

(assert (=> b!7965396 m!8345258))

(assert (=> b!7965396 m!8344882))

(assert (=> b!7965396 m!8344884))

(assert (=> b!7965396 m!8345246))

(assert (=> b!7965396 m!8345254))

(assert (=> b!7965396 m!8344884))

(assert (=> b!7965396 m!8345252))

(assert (=> b!7965396 m!8345254))

(declare-fun m!8345260 () Bool)

(assert (=> b!7965396 m!8345260))

(declare-fun m!8345262 () Bool)

(assert (=> b!7965396 m!8345262))

(assert (=> b!7965396 m!8345258))

(declare-fun m!8345264 () Bool)

(assert (=> b!7965396 m!8345264))

(assert (=> b!7965396 m!8344872))

(declare-fun m!8345266 () Bool)

(assert (=> b!7965396 m!8345266))

(declare-fun m!8345268 () Bool)

(assert (=> bm!738890 m!8345268))

(assert (=> d!2378891 m!8344884))

(declare-fun m!8345270 () Bool)

(assert (=> d!2378891 m!8345270))

(assert (=> d!2378891 m!8344884))

(assert (=> d!2378891 m!8344884))

(declare-fun m!8345272 () Bool)

(assert (=> d!2378891 m!8345272))

(declare-fun m!8345274 () Bool)

(assert (=> d!2378891 m!8345274))

(declare-fun m!8345276 () Bool)

(assert (=> d!2378891 m!8345276))

(declare-fun m!8345278 () Bool)

(assert (=> d!2378891 m!8345278))

(declare-fun m!8345280 () Bool)

(assert (=> d!2378891 m!8345280))

(declare-fun m!8345282 () Bool)

(assert (=> d!2378891 m!8345282))

(assert (=> d!2378891 m!8344884))

(assert (=> d!2378891 m!8345274))

(assert (=> bm!738891 m!8344884))

(assert (=> bm!738891 m!8345252))

(assert (=> b!7964942 d!2378891))

(declare-fun d!2378945 () Bool)

(declare-fun lt!2705549 () Int)

(assert (=> d!2378945 (>= lt!2705549 0)))

(declare-fun e!4697112 () Int)

(assert (=> d!2378945 (= lt!2705549 e!4697112)))

(declare-fun c!1462877 () Bool)

(assert (=> d!2378945 (= c!1462877 ((_ is Nil!74614) lt!2705235))))

(assert (=> d!2378945 (= (size!43445 lt!2705235) lt!2705549)))

(declare-fun b!7965407 () Bool)

(assert (=> b!7965407 (= e!4697112 0)))

(declare-fun b!7965408 () Bool)

(assert (=> b!7965408 (= e!4697112 (+ 1 (size!43445 (t!390481 lt!2705235))))))

(assert (= (and d!2378945 c!1462877) b!7965407))

(assert (= (and d!2378945 (not c!1462877)) b!7965408))

(declare-fun m!8345284 () Bool)

(assert (=> b!7965408 m!8345284))

(assert (=> b!7964942 d!2378945))

(declare-fun d!2378947 () Bool)

(declare-fun e!4697115 () Bool)

(assert (=> d!2378947 e!4697115))

(declare-fun res!3156525 () Bool)

(assert (=> d!2378947 (=> res!3156525 e!4697115)))

(assert (=> d!2378947 (= res!3156525 (isEmpty!42915 (_1!38643 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (size!43445 lt!2705235) (getSuffix!3812 input!7927 lt!2705235) input!7927 (size!43445 input!7927)))))))

(declare-fun lt!2705552 () Unit!170144)

(declare-fun choose!60041 (Regex!21509 Regex!21509 List!74738 List!74738) Unit!170144)

(assert (=> d!2378947 (= lt!2705552 (choose!60041 baseR!116 lt!2705242 lt!2705235 input!7927))))

(assert (=> d!2378947 (validRegex!11813 baseR!116)))

(assert (=> d!2378947 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!53 baseR!116 lt!2705242 lt!2705235 input!7927) lt!2705552)))

(declare-fun b!7965411 () Bool)

(assert (=> b!7965411 (= e!4697115 (matchR!10742 baseR!116 (_1!38643 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (size!43445 lt!2705235) (getSuffix!3812 input!7927 lt!2705235) input!7927 (size!43445 input!7927)))))))

(assert (= (and d!2378947 (not res!3156525)) b!7965411))

(assert (=> d!2378947 m!8344900))

(assert (=> d!2378947 m!8344882))

(declare-fun m!8345286 () Bool)

(assert (=> d!2378947 m!8345286))

(declare-fun m!8345288 () Bool)

(assert (=> d!2378947 m!8345288))

(assert (=> d!2378947 m!8344872))

(assert (=> d!2378947 m!8344882))

(assert (=> d!2378947 m!8344884))

(assert (=> d!2378947 m!8344872))

(declare-fun m!8345290 () Bool)

(assert (=> d!2378947 m!8345290))

(assert (=> d!2378947 m!8344884))

(assert (=> b!7965411 m!8344882))

(declare-fun m!8345292 () Bool)

(assert (=> b!7965411 m!8345292))

(assert (=> b!7965411 m!8344872))

(assert (=> b!7965411 m!8344882))

(assert (=> b!7965411 m!8344884))

(assert (=> b!7965411 m!8344872))

(assert (=> b!7965411 m!8345290))

(assert (=> b!7965411 m!8344884))

(assert (=> b!7964942 d!2378947))

(declare-fun d!2378949 () Bool)

(declare-fun e!4697116 () Bool)

(assert (=> d!2378949 e!4697116))

(declare-fun res!3156526 () Bool)

(assert (=> d!2378949 (=> (not res!3156526) (not e!4697116))))

(declare-fun lt!2705553 () List!74738)

(assert (=> d!2378949 (= res!3156526 (= (content!15849 lt!2705553) ((_ map or) (content!15849 testedP!447) (content!15849 lt!2705240))))))

(declare-fun e!4697117 () List!74738)

(assert (=> d!2378949 (= lt!2705553 e!4697117)))

(declare-fun c!1462878 () Bool)

(assert (=> d!2378949 (= c!1462878 ((_ is Nil!74614) testedP!447))))

(assert (=> d!2378949 (= (++!18379 testedP!447 lt!2705240) lt!2705553)))

(declare-fun b!7965413 () Bool)

(assert (=> b!7965413 (= e!4697117 (Cons!74614 (h!81062 testedP!447) (++!18379 (t!390481 testedP!447) lt!2705240)))))

(declare-fun b!7965412 () Bool)

(assert (=> b!7965412 (= e!4697117 lt!2705240)))

(declare-fun b!7965415 () Bool)

(assert (=> b!7965415 (= e!4697116 (or (not (= lt!2705240 Nil!74614)) (= lt!2705553 testedP!447)))))

(declare-fun b!7965414 () Bool)

(declare-fun res!3156527 () Bool)

(assert (=> b!7965414 (=> (not res!3156527) (not e!4697116))))

(assert (=> b!7965414 (= res!3156527 (= (size!43445 lt!2705553) (+ (size!43445 testedP!447) (size!43445 lt!2705240))))))

(assert (= (and d!2378949 c!1462878) b!7965412))

(assert (= (and d!2378949 (not c!1462878)) b!7965413))

(assert (= (and d!2378949 res!3156526) b!7965414))

(assert (= (and b!7965414 res!3156527) b!7965415))

(declare-fun m!8345294 () Bool)

(assert (=> d!2378949 m!8345294))

(assert (=> d!2378949 m!8344968))

(declare-fun m!8345296 () Bool)

(assert (=> d!2378949 m!8345296))

(declare-fun m!8345298 () Bool)

(assert (=> b!7965413 m!8345298))

(declare-fun m!8345300 () Bool)

(assert (=> b!7965414 m!8345300))

(assert (=> b!7965414 m!8344870))

(declare-fun m!8345302 () Bool)

(assert (=> b!7965414 m!8345302))

(assert (=> b!7964949 d!2378949))

(declare-fun d!2378951 () Bool)

(assert (=> d!2378951 (<= (size!43445 testedP!447) (size!43445 input!7927))))

(declare-fun lt!2705556 () Unit!170144)

(declare-fun choose!60042 (List!74738 List!74738) Unit!170144)

(assert (=> d!2378951 (= lt!2705556 (choose!60042 testedP!447 input!7927))))

(assert (=> d!2378951 (isPrefix!6609 testedP!447 input!7927)))

(assert (=> d!2378951 (= (lemmaIsPrefixThenSmallerEqSize!1126 testedP!447 input!7927) lt!2705556)))

(declare-fun bs!1969854 () Bool)

(assert (= bs!1969854 d!2378951))

(assert (=> bs!1969854 m!8344870))

(assert (=> bs!1969854 m!8344872))

(declare-fun m!8345304 () Bool)

(assert (=> bs!1969854 m!8345304))

(assert (=> bs!1969854 m!8344910))

(assert (=> b!7964950 d!2378951))

(declare-fun d!2378953 () Bool)

(assert (=> d!2378953 (= (isEmpty!42915 (_1!38643 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (+ 1 lt!2705247) (tail!15798 lt!2705240) input!7927 lt!2705236))) ((_ is Nil!74614) (_1!38643 (findLongestMatchInner!2290 lt!2705242 lt!2705235 (+ 1 lt!2705247) (tail!15798 lt!2705240) input!7927 lt!2705236))))))

(assert (=> b!7964940 d!2378953))

(declare-fun b!7965416 () Bool)

(declare-fun e!4697125 () tuple2!70680)

(declare-fun e!4697122 () tuple2!70680)

(assert (=> b!7965416 (= e!4697125 e!4697122)))

(declare-fun lt!2705557 () tuple2!70680)

(declare-fun call!738902 () tuple2!70680)

(assert (=> b!7965416 (= lt!2705557 call!738902)))

(declare-fun c!1462883 () Bool)

(assert (=> b!7965416 (= c!1462883 (isEmpty!42915 (_1!38643 lt!2705557)))))

(declare-fun bm!738895 () Bool)

(declare-fun call!738903 () Bool)

(assert (=> bm!738895 (= call!738903 (nullable!9610 lt!2705242))))

(declare-fun b!7965417 () Bool)

(assert (=> b!7965417 (= e!4697122 (tuple2!70681 lt!2705235 (tail!15798 lt!2705240)))))

(declare-fun b!7965418 () Bool)

(declare-fun e!4697120 () tuple2!70680)

(assert (=> b!7965418 (= e!4697120 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun b!7965419 () Bool)

(declare-fun e!4697124 () Bool)

(declare-fun e!4697123 () Bool)

(assert (=> b!7965419 (= e!4697124 e!4697123)))

(declare-fun res!3156528 () Bool)

(assert (=> b!7965419 (=> res!3156528 e!4697123)))

(declare-fun lt!2705577 () tuple2!70680)

(assert (=> b!7965419 (= res!3156528 (isEmpty!42915 (_1!38643 lt!2705577)))))

(declare-fun b!7965420 () Bool)

(assert (=> b!7965420 (= e!4697125 call!738902)))

(declare-fun b!7965421 () Bool)

(declare-fun e!4697121 () tuple2!70680)

(assert (=> b!7965421 (= e!4697121 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun bm!738896 () Bool)

(declare-fun call!738907 () Unit!170144)

(assert (=> bm!738896 (= call!738907 (lemmaIsPrefixRefl!4077 input!7927 input!7927))))

(declare-fun bm!738897 () Bool)

(declare-fun call!738904 () Unit!170144)

(assert (=> bm!738897 (= call!738904 (lemmaIsPrefixSameLengthThenSameList!1657 input!7927 lt!2705235 input!7927))))

(declare-fun b!7965422 () Bool)

(declare-fun e!4697119 () Unit!170144)

(declare-fun Unit!170160 () Unit!170144)

(assert (=> b!7965422 (= e!4697119 Unit!170160)))

(declare-fun bm!738898 () Bool)

(declare-fun call!738905 () Regex!21509)

(declare-fun call!738906 () C!43356)

(assert (=> bm!738898 (= call!738905 (derivativeStep!6537 lt!2705242 call!738906))))

(declare-fun d!2378955 () Bool)

(assert (=> d!2378955 e!4697124))

(declare-fun res!3156529 () Bool)

(assert (=> d!2378955 (=> (not res!3156529) (not e!4697124))))

(assert (=> d!2378955 (= res!3156529 (= (++!18379 (_1!38643 lt!2705577) (_2!38643 lt!2705577)) input!7927))))

(assert (=> d!2378955 (= lt!2705577 e!4697120)))

(declare-fun c!1462884 () Bool)

(assert (=> d!2378955 (= c!1462884 (lostCause!1982 lt!2705242))))

(declare-fun lt!2705559 () Unit!170144)

(declare-fun Unit!170161 () Unit!170144)

(assert (=> d!2378955 (= lt!2705559 Unit!170161)))

(assert (=> d!2378955 (= (getSuffix!3812 input!7927 lt!2705235) (tail!15798 lt!2705240))))

(declare-fun lt!2705570 () Unit!170144)

(declare-fun lt!2705571 () Unit!170144)

(assert (=> d!2378955 (= lt!2705570 lt!2705571)))

(declare-fun lt!2705566 () List!74738)

(assert (=> d!2378955 (= (tail!15798 lt!2705240) lt!2705566)))

(assert (=> d!2378955 (= lt!2705571 (lemmaSamePrefixThenSameSuffix!2998 lt!2705235 (tail!15798 lt!2705240) lt!2705235 lt!2705566 input!7927))))

(assert (=> d!2378955 (= lt!2705566 (getSuffix!3812 input!7927 lt!2705235))))

(declare-fun lt!2705561 () Unit!170144)

(declare-fun lt!2705564 () Unit!170144)

(assert (=> d!2378955 (= lt!2705561 lt!2705564)))

(assert (=> d!2378955 (isPrefix!6609 lt!2705235 (++!18379 lt!2705235 (tail!15798 lt!2705240)))))

(assert (=> d!2378955 (= lt!2705564 (lemmaConcatTwoListThenFirstIsPrefix!3860 lt!2705235 (tail!15798 lt!2705240)))))

(assert (=> d!2378955 (validRegex!11813 lt!2705242)))

(assert (=> d!2378955 (= (findLongestMatchInner!2290 lt!2705242 lt!2705235 (+ 1 lt!2705247) (tail!15798 lt!2705240) input!7927 lt!2705236) lt!2705577)))

(declare-fun b!7965423 () Bool)

(declare-fun c!1462879 () Bool)

(assert (=> b!7965423 (= c!1462879 call!738903)))

(declare-fun lt!2705562 () Unit!170144)

(declare-fun lt!2705583 () Unit!170144)

(assert (=> b!7965423 (= lt!2705562 lt!2705583)))

(declare-fun lt!2705574 () List!74738)

(declare-fun lt!2705576 () C!43356)

(assert (=> b!7965423 (= (++!18379 (++!18379 lt!2705235 (Cons!74614 lt!2705576 Nil!74614)) lt!2705574) input!7927)))

(assert (=> b!7965423 (= lt!2705583 (lemmaMoveElementToOtherListKeepsConcatEq!3538 lt!2705235 lt!2705576 lt!2705574 input!7927))))

(assert (=> b!7965423 (= lt!2705574 (tail!15798 (tail!15798 lt!2705240)))))

(assert (=> b!7965423 (= lt!2705576 (head!16261 (tail!15798 lt!2705240)))))

(declare-fun lt!2705580 () Unit!170144)

(declare-fun lt!2705573 () Unit!170144)

(assert (=> b!7965423 (= lt!2705580 lt!2705573)))

(assert (=> b!7965423 (isPrefix!6609 (++!18379 lt!2705235 (Cons!74614 (head!16261 (getSuffix!3812 input!7927 lt!2705235)) Nil!74614)) input!7927)))

(assert (=> b!7965423 (= lt!2705573 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 lt!2705235 input!7927))))

(declare-fun lt!2705584 () Unit!170144)

(declare-fun lt!2705569 () Unit!170144)

(assert (=> b!7965423 (= lt!2705584 lt!2705569)))

(assert (=> b!7965423 (= lt!2705569 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 lt!2705235 input!7927))))

(declare-fun lt!2705575 () List!74738)

(assert (=> b!7965423 (= lt!2705575 (++!18379 lt!2705235 (Cons!74614 (head!16261 (tail!15798 lt!2705240)) Nil!74614)))))

(declare-fun lt!2705572 () Unit!170144)

(assert (=> b!7965423 (= lt!2705572 e!4697119)))

(declare-fun c!1462882 () Bool)

(assert (=> b!7965423 (= c!1462882 (= (size!43445 lt!2705235) (size!43445 input!7927)))))

(declare-fun lt!2705560 () Unit!170144)

(declare-fun lt!2705579 () Unit!170144)

(assert (=> b!7965423 (= lt!2705560 lt!2705579)))

(assert (=> b!7965423 (<= (size!43445 lt!2705235) (size!43445 input!7927))))

(assert (=> b!7965423 (= lt!2705579 (lemmaIsPrefixThenSmallerEqSize!1126 lt!2705235 input!7927))))

(declare-fun e!4697118 () tuple2!70680)

(assert (=> b!7965423 (= e!4697118 e!4697125)))

(declare-fun bm!738899 () Bool)

(assert (=> bm!738899 (= call!738906 (head!16261 (tail!15798 lt!2705240)))))

(declare-fun b!7965424 () Bool)

(assert (=> b!7965424 (= e!4697122 lt!2705557)))

(declare-fun b!7965425 () Bool)

(declare-fun c!1462880 () Bool)

(assert (=> b!7965425 (= c!1462880 call!738903)))

(declare-fun lt!2705568 () Unit!170144)

(declare-fun lt!2705578 () Unit!170144)

(assert (=> b!7965425 (= lt!2705568 lt!2705578)))

(assert (=> b!7965425 (= input!7927 lt!2705235)))

(assert (=> b!7965425 (= lt!2705578 call!738904)))

(declare-fun lt!2705565 () Unit!170144)

(declare-fun lt!2705567 () Unit!170144)

(assert (=> b!7965425 (= lt!2705565 lt!2705567)))

(declare-fun call!738900 () Bool)

(assert (=> b!7965425 call!738900))

(assert (=> b!7965425 (= lt!2705567 call!738907)))

(assert (=> b!7965425 (= e!4697118 e!4697121)))

(declare-fun b!7965426 () Bool)

(assert (=> b!7965426 (= e!4697120 e!4697118)))

(declare-fun c!1462881 () Bool)

(assert (=> b!7965426 (= c!1462881 (= (+ 1 lt!2705247) lt!2705236))))

(declare-fun bm!738900 () Bool)

(declare-fun call!738901 () List!74738)

(assert (=> bm!738900 (= call!738902 (findLongestMatchInner!2290 call!738905 lt!2705575 (+ 1 lt!2705247 1) call!738901 input!7927 lt!2705236))))

(declare-fun bm!738901 () Bool)

(assert (=> bm!738901 (= call!738900 (isPrefix!6609 input!7927 input!7927))))

(declare-fun b!7965427 () Bool)

(assert (=> b!7965427 (= e!4697123 (>= (size!43445 (_1!38643 lt!2705577)) (size!43445 lt!2705235)))))

(declare-fun bm!738902 () Bool)

(assert (=> bm!738902 (= call!738901 (tail!15798 (tail!15798 lt!2705240)))))

(declare-fun b!7965428 () Bool)

(declare-fun Unit!170162 () Unit!170144)

(assert (=> b!7965428 (= e!4697119 Unit!170162)))

(declare-fun lt!2705581 () Unit!170144)

(assert (=> b!7965428 (= lt!2705581 call!738907)))

(assert (=> b!7965428 call!738900))

(declare-fun lt!2705563 () Unit!170144)

(assert (=> b!7965428 (= lt!2705563 lt!2705581)))

(declare-fun lt!2705582 () Unit!170144)

(assert (=> b!7965428 (= lt!2705582 call!738904)))

(assert (=> b!7965428 (= input!7927 lt!2705235)))

(declare-fun lt!2705558 () Unit!170144)

(assert (=> b!7965428 (= lt!2705558 lt!2705582)))

(assert (=> b!7965428 false))

(declare-fun b!7965429 () Bool)

(assert (=> b!7965429 (= e!4697121 (tuple2!70681 lt!2705235 Nil!74614))))

(assert (= (and d!2378955 c!1462884) b!7965418))

(assert (= (and d!2378955 (not c!1462884)) b!7965426))

(assert (= (and b!7965426 c!1462881) b!7965425))

(assert (= (and b!7965426 (not c!1462881)) b!7965423))

(assert (= (and b!7965425 c!1462880) b!7965429))

(assert (= (and b!7965425 (not c!1462880)) b!7965421))

(assert (= (and b!7965423 c!1462882) b!7965428))

(assert (= (and b!7965423 (not c!1462882)) b!7965422))

(assert (= (and b!7965423 c!1462879) b!7965416))

(assert (= (and b!7965423 (not c!1462879)) b!7965420))

(assert (= (and b!7965416 c!1462883) b!7965417))

(assert (= (and b!7965416 (not c!1462883)) b!7965424))

(assert (= (or b!7965416 b!7965420) bm!738899))

(assert (= (or b!7965416 b!7965420) bm!738902))

(assert (= (or b!7965416 b!7965420) bm!738898))

(assert (= (or b!7965416 b!7965420) bm!738900))

(assert (= (or b!7965425 b!7965423) bm!738895))

(assert (= (or b!7965425 b!7965428) bm!738897))

(assert (= (or b!7965425 b!7965428) bm!738896))

(assert (= (or b!7965425 b!7965428) bm!738901))

(assert (= (and d!2378955 res!3156529) b!7965419))

(assert (= (and b!7965419 (not res!3156528)) b!7965427))

(declare-fun m!8345306 () Bool)

(assert (=> b!7965416 m!8345306))

(declare-fun m!8345308 () Bool)

(assert (=> bm!738900 m!8345308))

(assert (=> bm!738897 m!8345242))

(assert (=> bm!738901 m!8344906))

(declare-fun m!8345310 () Bool)

(assert (=> b!7965419 m!8345310))

(assert (=> bm!738902 m!8344922))

(declare-fun m!8345312 () Bool)

(assert (=> bm!738902 m!8345312))

(assert (=> bm!738896 m!8344904))

(declare-fun m!8345314 () Bool)

(assert (=> b!7965427 m!8345314))

(assert (=> b!7965427 m!8344882))

(assert (=> bm!738895 m!8345250))

(assert (=> b!7965423 m!8344922))

(declare-fun m!8345316 () Bool)

(assert (=> b!7965423 m!8345316))

(assert (=> b!7965423 m!8345254))

(assert (=> b!7965423 m!8344884))

(assert (=> b!7965423 m!8345256))

(declare-fun m!8345318 () Bool)

(assert (=> b!7965423 m!8345318))

(assert (=> b!7965423 m!8344882))

(assert (=> b!7965423 m!8344922))

(assert (=> b!7965423 m!8345312))

(declare-fun m!8345320 () Bool)

(assert (=> b!7965423 m!8345320))

(assert (=> b!7965423 m!8344884))

(assert (=> b!7965423 m!8345252))

(assert (=> b!7965423 m!8345254))

(assert (=> b!7965423 m!8345260))

(assert (=> b!7965423 m!8345262))

(assert (=> b!7965423 m!8345318))

(declare-fun m!8345322 () Bool)

(assert (=> b!7965423 m!8345322))

(assert (=> b!7965423 m!8344872))

(declare-fun m!8345324 () Bool)

(assert (=> b!7965423 m!8345324))

(declare-fun m!8345326 () Bool)

(assert (=> bm!738898 m!8345326))

(assert (=> d!2378955 m!8344922))

(declare-fun m!8345328 () Bool)

(assert (=> d!2378955 m!8345328))

(assert (=> d!2378955 m!8344884))

(assert (=> d!2378955 m!8344922))

(declare-fun m!8345330 () Bool)

(assert (=> d!2378955 m!8345330))

(declare-fun m!8345332 () Bool)

(assert (=> d!2378955 m!8345332))

(declare-fun m!8345334 () Bool)

(assert (=> d!2378955 m!8345334))

(assert (=> d!2378955 m!8345278))

(declare-fun m!8345336 () Bool)

(assert (=> d!2378955 m!8345336))

(assert (=> d!2378955 m!8345282))

(assert (=> d!2378955 m!8344922))

(assert (=> d!2378955 m!8345332))

(assert (=> bm!738899 m!8344922))

(assert (=> bm!738899 m!8345316))

(assert (=> b!7964940 d!2378955))

(declare-fun d!2378957 () Bool)

(assert (=> d!2378957 (= (tail!15798 lt!2705240) (t!390481 lt!2705240))))

(assert (=> b!7964940 d!2378957))

(declare-fun bm!738911 () Bool)

(declare-fun call!738916 () Regex!21509)

(declare-fun call!738919 () Regex!21509)

(assert (=> bm!738911 (= call!738916 call!738919)))

(declare-fun b!7965450 () Bool)

(declare-fun c!1462899 () Bool)

(assert (=> b!7965450 (= c!1462899 ((_ is Union!21509) r!24602))))

(declare-fun e!4697137 () Regex!21509)

(declare-fun e!4697140 () Regex!21509)

(assert (=> b!7965450 (= e!4697137 e!4697140)))

(declare-fun b!7965451 () Bool)

(declare-fun e!4697136 () Regex!21509)

(assert (=> b!7965451 (= e!4697140 e!4697136)))

(declare-fun c!1462896 () Bool)

(assert (=> b!7965451 (= c!1462896 ((_ is Star!21509) r!24602))))

(declare-fun b!7965452 () Bool)

(declare-fun call!738918 () Regex!21509)

(assert (=> b!7965452 (= e!4697140 (Union!21509 call!738918 call!738919))))

(declare-fun bm!738912 () Bool)

(declare-fun call!738917 () Regex!21509)

(assert (=> bm!738912 (= call!738917 call!738916)))

(declare-fun d!2378959 () Bool)

(declare-fun lt!2705587 () Regex!21509)

(assert (=> d!2378959 (validRegex!11813 lt!2705587)))

(declare-fun e!4697139 () Regex!21509)

(assert (=> d!2378959 (= lt!2705587 e!4697139)))

(declare-fun c!1462897 () Bool)

(assert (=> d!2378959 (= c!1462897 (or ((_ is EmptyExpr!21509) r!24602) ((_ is EmptyLang!21509) r!24602)))))

(assert (=> d!2378959 (validRegex!11813 r!24602)))

(assert (=> d!2378959 (= (derivativeStep!6537 r!24602 lt!2705246) lt!2705587)))

(declare-fun e!4697138 () Regex!21509)

(declare-fun b!7965453 () Bool)

(assert (=> b!7965453 (= e!4697138 (Union!21509 (Concat!30508 call!738918 (regTwo!43530 r!24602)) call!738917))))

(declare-fun bm!738913 () Bool)

(assert (=> bm!738913 (= call!738918 (derivativeStep!6537 (ite c!1462899 (regOne!43531 r!24602) (regOne!43530 r!24602)) lt!2705246))))

(declare-fun b!7965454 () Bool)

(assert (=> b!7965454 (= e!4697136 (Concat!30508 call!738916 r!24602))))

(declare-fun b!7965455 () Bool)

(assert (=> b!7965455 (= e!4697138 (Union!21509 (Concat!30508 call!738917 (regTwo!43530 r!24602)) EmptyLang!21509))))

(declare-fun b!7965456 () Bool)

(assert (=> b!7965456 (= e!4697139 e!4697137)))

(declare-fun c!1462895 () Bool)

(assert (=> b!7965456 (= c!1462895 ((_ is ElementMatch!21509) r!24602))))

(declare-fun c!1462898 () Bool)

(declare-fun bm!738914 () Bool)

(assert (=> bm!738914 (= call!738919 (derivativeStep!6537 (ite c!1462899 (regTwo!43531 r!24602) (ite c!1462896 (reg!21838 r!24602) (ite c!1462898 (regTwo!43530 r!24602) (regOne!43530 r!24602)))) lt!2705246))))

(declare-fun b!7965457 () Bool)

(assert (=> b!7965457 (= e!4697137 (ite (= lt!2705246 (c!1462750 r!24602)) EmptyExpr!21509 EmptyLang!21509))))

(declare-fun b!7965458 () Bool)

(assert (=> b!7965458 (= c!1462898 (nullable!9610 (regOne!43530 r!24602)))))

(assert (=> b!7965458 (= e!4697136 e!4697138)))

(declare-fun b!7965459 () Bool)

(assert (=> b!7965459 (= e!4697139 EmptyLang!21509)))

(assert (= (and d!2378959 c!1462897) b!7965459))

(assert (= (and d!2378959 (not c!1462897)) b!7965456))

(assert (= (and b!7965456 c!1462895) b!7965457))

(assert (= (and b!7965456 (not c!1462895)) b!7965450))

(assert (= (and b!7965450 c!1462899) b!7965452))

(assert (= (and b!7965450 (not c!1462899)) b!7965451))

(assert (= (and b!7965451 c!1462896) b!7965454))

(assert (= (and b!7965451 (not c!1462896)) b!7965458))

(assert (= (and b!7965458 c!1462898) b!7965453))

(assert (= (and b!7965458 (not c!1462898)) b!7965455))

(assert (= (or b!7965453 b!7965455) bm!738912))

(assert (= (or b!7965454 bm!738912) bm!738911))

(assert (= (or b!7965452 bm!738911) bm!738914))

(assert (= (or b!7965452 b!7965453) bm!738913))

(declare-fun m!8345338 () Bool)

(assert (=> d!2378959 m!8345338))

(assert (=> d!2378959 m!8344892))

(declare-fun m!8345340 () Bool)

(assert (=> bm!738913 m!8345340))

(declare-fun m!8345342 () Bool)

(assert (=> bm!738914 m!8345342))

(declare-fun m!8345344 () Bool)

(assert (=> b!7965458 m!8345344))

(assert (=> b!7964940 d!2378959))

(declare-fun d!2378961 () Bool)

(declare-fun e!4697142 () Bool)

(assert (=> d!2378961 e!4697142))

(declare-fun res!3156532 () Bool)

(assert (=> d!2378961 (=> res!3156532 e!4697142)))

(declare-fun lt!2705588 () Bool)

(assert (=> d!2378961 (= res!3156532 (not lt!2705588))))

(declare-fun e!4697141 () Bool)

(assert (=> d!2378961 (= lt!2705588 e!4697141)))

(declare-fun res!3156533 () Bool)

(assert (=> d!2378961 (=> res!3156533 e!4697141)))

(assert (=> d!2378961 (= res!3156533 ((_ is Nil!74614) testedP!447))))

(assert (=> d!2378961 (= (isPrefix!6609 testedP!447 input!7927) lt!2705588)))

(declare-fun b!7965463 () Bool)

(assert (=> b!7965463 (= e!4697142 (>= (size!43445 input!7927) (size!43445 testedP!447)))))

(declare-fun b!7965461 () Bool)

(declare-fun res!3156530 () Bool)

(declare-fun e!4697143 () Bool)

(assert (=> b!7965461 (=> (not res!3156530) (not e!4697143))))

(assert (=> b!7965461 (= res!3156530 (= (head!16261 testedP!447) (head!16261 input!7927)))))

(declare-fun b!7965462 () Bool)

(assert (=> b!7965462 (= e!4697143 (isPrefix!6609 (tail!15798 testedP!447) (tail!15798 input!7927)))))

(declare-fun b!7965460 () Bool)

(assert (=> b!7965460 (= e!4697141 e!4697143)))

(declare-fun res!3156531 () Bool)

(assert (=> b!7965460 (=> (not res!3156531) (not e!4697143))))

(assert (=> b!7965460 (= res!3156531 (not ((_ is Nil!74614) input!7927)))))

(assert (= (and d!2378961 (not res!3156533)) b!7965460))

(assert (= (and b!7965460 res!3156531) b!7965461))

(assert (= (and b!7965461 res!3156530) b!7965462))

(assert (= (and d!2378961 (not res!3156532)) b!7965463))

(assert (=> b!7965463 m!8344872))

(assert (=> b!7965463 m!8344870))

(declare-fun m!8345346 () Bool)

(assert (=> b!7965461 m!8345346))

(assert (=> b!7965461 m!8344932))

(declare-fun m!8345348 () Bool)

(assert (=> b!7965462 m!8345348))

(assert (=> b!7965462 m!8344934))

(assert (=> b!7965462 m!8345348))

(assert (=> b!7965462 m!8344934))

(declare-fun m!8345350 () Bool)

(assert (=> b!7965462 m!8345350))

(assert (=> b!7964936 d!2378961))

(declare-fun d!2378963 () Bool)

(declare-fun lt!2705589 () Int)

(assert (=> d!2378963 (>= lt!2705589 0)))

(declare-fun e!4697144 () Int)

(assert (=> d!2378963 (= lt!2705589 e!4697144)))

(declare-fun c!1462900 () Bool)

(assert (=> d!2378963 (= c!1462900 ((_ is Nil!74614) input!7927))))

(assert (=> d!2378963 (= (size!43445 input!7927) lt!2705589)))

(declare-fun b!7965464 () Bool)

(assert (=> b!7965464 (= e!4697144 0)))

(declare-fun b!7965465 () Bool)

(assert (=> b!7965465 (= e!4697144 (+ 1 (size!43445 (t!390481 input!7927))))))

(assert (= (and d!2378963 c!1462900) b!7965464))

(assert (= (and d!2378963 (not c!1462900)) b!7965465))

(declare-fun m!8345352 () Bool)

(assert (=> b!7965465 m!8345352))

(assert (=> b!7964937 d!2378963))

(declare-fun b!7965466 () Bool)

(declare-fun e!4697152 () tuple2!70680)

(declare-fun e!4697149 () tuple2!70680)

(assert (=> b!7965466 (= e!4697152 e!4697149)))

(declare-fun lt!2705590 () tuple2!70680)

(declare-fun call!738922 () tuple2!70680)

(assert (=> b!7965466 (= lt!2705590 call!738922)))

(declare-fun c!1462905 () Bool)

(assert (=> b!7965466 (= c!1462905 (isEmpty!42915 (_1!38643 lt!2705590)))))

(declare-fun bm!738915 () Bool)

(declare-fun call!738923 () Bool)

(assert (=> bm!738915 (= call!738923 (nullable!9610 r!24602))))

(declare-fun b!7965467 () Bool)

(assert (=> b!7965467 (= e!4697149 (tuple2!70681 testedP!447 lt!2705240))))

(declare-fun b!7965468 () Bool)

(declare-fun e!4697147 () tuple2!70680)

(assert (=> b!7965468 (= e!4697147 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun b!7965469 () Bool)

(declare-fun e!4697151 () Bool)

(declare-fun e!4697150 () Bool)

(assert (=> b!7965469 (= e!4697151 e!4697150)))

(declare-fun res!3156534 () Bool)

(assert (=> b!7965469 (=> res!3156534 e!4697150)))

(declare-fun lt!2705610 () tuple2!70680)

(assert (=> b!7965469 (= res!3156534 (isEmpty!42915 (_1!38643 lt!2705610)))))

(declare-fun b!7965470 () Bool)

(assert (=> b!7965470 (= e!4697152 call!738922)))

(declare-fun b!7965471 () Bool)

(declare-fun e!4697148 () tuple2!70680)

(assert (=> b!7965471 (= e!4697148 (tuple2!70681 Nil!74614 input!7927))))

(declare-fun bm!738916 () Bool)

(declare-fun call!738927 () Unit!170144)

(assert (=> bm!738916 (= call!738927 (lemmaIsPrefixRefl!4077 input!7927 input!7927))))

(declare-fun bm!738917 () Bool)

(declare-fun call!738924 () Unit!170144)

(assert (=> bm!738917 (= call!738924 (lemmaIsPrefixSameLengthThenSameList!1657 input!7927 testedP!447 input!7927))))

(declare-fun b!7965472 () Bool)

(declare-fun e!4697146 () Unit!170144)

(declare-fun Unit!170163 () Unit!170144)

(assert (=> b!7965472 (= e!4697146 Unit!170163)))

(declare-fun bm!738918 () Bool)

(declare-fun call!738925 () Regex!21509)

(declare-fun call!738926 () C!43356)

(assert (=> bm!738918 (= call!738925 (derivativeStep!6537 r!24602 call!738926))))

(declare-fun d!2378965 () Bool)

(assert (=> d!2378965 e!4697151))

(declare-fun res!3156535 () Bool)

(assert (=> d!2378965 (=> (not res!3156535) (not e!4697151))))

(assert (=> d!2378965 (= res!3156535 (= (++!18379 (_1!38643 lt!2705610) (_2!38643 lt!2705610)) input!7927))))

(assert (=> d!2378965 (= lt!2705610 e!4697147)))

(declare-fun c!1462906 () Bool)

(assert (=> d!2378965 (= c!1462906 (lostCause!1982 r!24602))))

(declare-fun lt!2705592 () Unit!170144)

(declare-fun Unit!170164 () Unit!170144)

(assert (=> d!2378965 (= lt!2705592 Unit!170164)))

(assert (=> d!2378965 (= (getSuffix!3812 input!7927 testedP!447) lt!2705240)))

(declare-fun lt!2705603 () Unit!170144)

(declare-fun lt!2705604 () Unit!170144)

(assert (=> d!2378965 (= lt!2705603 lt!2705604)))

(declare-fun lt!2705599 () List!74738)

(assert (=> d!2378965 (= lt!2705240 lt!2705599)))

(assert (=> d!2378965 (= lt!2705604 (lemmaSamePrefixThenSameSuffix!2998 testedP!447 lt!2705240 testedP!447 lt!2705599 input!7927))))

(assert (=> d!2378965 (= lt!2705599 (getSuffix!3812 input!7927 testedP!447))))

(declare-fun lt!2705594 () Unit!170144)

(declare-fun lt!2705597 () Unit!170144)

(assert (=> d!2378965 (= lt!2705594 lt!2705597)))

(assert (=> d!2378965 (isPrefix!6609 testedP!447 (++!18379 testedP!447 lt!2705240))))

(assert (=> d!2378965 (= lt!2705597 (lemmaConcatTwoListThenFirstIsPrefix!3860 testedP!447 lt!2705240))))

(assert (=> d!2378965 (validRegex!11813 r!24602)))

(assert (=> d!2378965 (= (findLongestMatchInner!2290 r!24602 testedP!447 lt!2705247 lt!2705240 input!7927 lt!2705236) lt!2705610)))

(declare-fun b!7965473 () Bool)

(declare-fun c!1462901 () Bool)

(assert (=> b!7965473 (= c!1462901 call!738923)))

(declare-fun lt!2705595 () Unit!170144)

(declare-fun lt!2705616 () Unit!170144)

(assert (=> b!7965473 (= lt!2705595 lt!2705616)))

(declare-fun lt!2705609 () C!43356)

(declare-fun lt!2705607 () List!74738)

(assert (=> b!7965473 (= (++!18379 (++!18379 testedP!447 (Cons!74614 lt!2705609 Nil!74614)) lt!2705607) input!7927)))

(assert (=> b!7965473 (= lt!2705616 (lemmaMoveElementToOtherListKeepsConcatEq!3538 testedP!447 lt!2705609 lt!2705607 input!7927))))

(assert (=> b!7965473 (= lt!2705607 (tail!15798 lt!2705240))))

(assert (=> b!7965473 (= lt!2705609 (head!16261 lt!2705240))))

(declare-fun lt!2705613 () Unit!170144)

(declare-fun lt!2705606 () Unit!170144)

(assert (=> b!7965473 (= lt!2705613 lt!2705606)))

(assert (=> b!7965473 (isPrefix!6609 (++!18379 testedP!447 (Cons!74614 (head!16261 (getSuffix!3812 input!7927 testedP!447)) Nil!74614)) input!7927)))

(assert (=> b!7965473 (= lt!2705606 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 testedP!447 input!7927))))

(declare-fun lt!2705617 () Unit!170144)

(declare-fun lt!2705602 () Unit!170144)

(assert (=> b!7965473 (= lt!2705617 lt!2705602)))

(assert (=> b!7965473 (= lt!2705602 (lemmaAddHeadSuffixToPrefixStillPrefix!1336 testedP!447 input!7927))))

(declare-fun lt!2705608 () List!74738)

(assert (=> b!7965473 (= lt!2705608 (++!18379 testedP!447 (Cons!74614 (head!16261 lt!2705240) Nil!74614)))))

(declare-fun lt!2705605 () Unit!170144)

(assert (=> b!7965473 (= lt!2705605 e!4697146)))

(declare-fun c!1462904 () Bool)

(assert (=> b!7965473 (= c!1462904 (= (size!43445 testedP!447) (size!43445 input!7927)))))

(declare-fun lt!2705593 () Unit!170144)

(declare-fun lt!2705612 () Unit!170144)

(assert (=> b!7965473 (= lt!2705593 lt!2705612)))

(assert (=> b!7965473 (<= (size!43445 testedP!447) (size!43445 input!7927))))

(assert (=> b!7965473 (= lt!2705612 (lemmaIsPrefixThenSmallerEqSize!1126 testedP!447 input!7927))))

(declare-fun e!4697145 () tuple2!70680)

(assert (=> b!7965473 (= e!4697145 e!4697152)))

(declare-fun bm!738919 () Bool)

(assert (=> bm!738919 (= call!738926 (head!16261 lt!2705240))))

(declare-fun b!7965474 () Bool)

(assert (=> b!7965474 (= e!4697149 lt!2705590)))

(declare-fun b!7965475 () Bool)

(declare-fun c!1462902 () Bool)

(assert (=> b!7965475 (= c!1462902 call!738923)))

(declare-fun lt!2705601 () Unit!170144)

(declare-fun lt!2705611 () Unit!170144)

(assert (=> b!7965475 (= lt!2705601 lt!2705611)))

(assert (=> b!7965475 (= input!7927 testedP!447)))

(assert (=> b!7965475 (= lt!2705611 call!738924)))

(declare-fun lt!2705598 () Unit!170144)

(declare-fun lt!2705600 () Unit!170144)

(assert (=> b!7965475 (= lt!2705598 lt!2705600)))

(declare-fun call!738920 () Bool)

(assert (=> b!7965475 call!738920))

(assert (=> b!7965475 (= lt!2705600 call!738927)))

(assert (=> b!7965475 (= e!4697145 e!4697148)))

(declare-fun b!7965476 () Bool)

(assert (=> b!7965476 (= e!4697147 e!4697145)))

(declare-fun c!1462903 () Bool)

(assert (=> b!7965476 (= c!1462903 (= lt!2705247 lt!2705236))))

(declare-fun bm!738920 () Bool)

(declare-fun call!738921 () List!74738)

(assert (=> bm!738920 (= call!738922 (findLongestMatchInner!2290 call!738925 lt!2705608 (+ lt!2705247 1) call!738921 input!7927 lt!2705236))))

(declare-fun bm!738921 () Bool)

(assert (=> bm!738921 (= call!738920 (isPrefix!6609 input!7927 input!7927))))

(declare-fun b!7965477 () Bool)

(assert (=> b!7965477 (= e!4697150 (>= (size!43445 (_1!38643 lt!2705610)) (size!43445 testedP!447)))))

(declare-fun bm!738922 () Bool)

(assert (=> bm!738922 (= call!738921 (tail!15798 lt!2705240))))

(declare-fun b!7965478 () Bool)

(declare-fun Unit!170165 () Unit!170144)

(assert (=> b!7965478 (= e!4697146 Unit!170165)))

(declare-fun lt!2705614 () Unit!170144)

(assert (=> b!7965478 (= lt!2705614 call!738927)))

(assert (=> b!7965478 call!738920))

(declare-fun lt!2705596 () Unit!170144)

(assert (=> b!7965478 (= lt!2705596 lt!2705614)))

(declare-fun lt!2705615 () Unit!170144)

(assert (=> b!7965478 (= lt!2705615 call!738924)))

(assert (=> b!7965478 (= input!7927 testedP!447)))

(declare-fun lt!2705591 () Unit!170144)

(assert (=> b!7965478 (= lt!2705591 lt!2705615)))

(assert (=> b!7965478 false))

(declare-fun b!7965479 () Bool)

(assert (=> b!7965479 (= e!4697148 (tuple2!70681 testedP!447 Nil!74614))))

(assert (= (and d!2378965 c!1462906) b!7965468))

(assert (= (and d!2378965 (not c!1462906)) b!7965476))

(assert (= (and b!7965476 c!1462903) b!7965475))

(assert (= (and b!7965476 (not c!1462903)) b!7965473))

(assert (= (and b!7965475 c!1462902) b!7965479))

(assert (= (and b!7965475 (not c!1462902)) b!7965471))

(assert (= (and b!7965473 c!1462904) b!7965478))

(assert (= (and b!7965473 (not c!1462904)) b!7965472))

(assert (= (and b!7965473 c!1462901) b!7965466))

(assert (= (and b!7965473 (not c!1462901)) b!7965470))

(assert (= (and b!7965466 c!1462905) b!7965467))

(assert (= (and b!7965466 (not c!1462905)) b!7965474))

(assert (= (or b!7965466 b!7965470) bm!738919))

(assert (= (or b!7965466 b!7965470) bm!738922))

(assert (= (or b!7965466 b!7965470) bm!738918))

(assert (= (or b!7965466 b!7965470) bm!738920))

(assert (= (or b!7965475 b!7965473) bm!738915))

(assert (= (or b!7965475 b!7965478) bm!738917))

(assert (= (or b!7965475 b!7965478) bm!738916))

(assert (= (or b!7965475 b!7965478) bm!738921))

(assert (= (and d!2378965 res!3156535) b!7965469))

(assert (= (and b!7965469 (not res!3156534)) b!7965477))

(declare-fun m!8345354 () Bool)

(assert (=> b!7965466 m!8345354))

(declare-fun m!8345356 () Bool)

(assert (=> bm!738920 m!8345356))

(assert (=> bm!738917 m!8344908))

(assert (=> bm!738921 m!8344906))

(declare-fun m!8345358 () Bool)

(assert (=> b!7965469 m!8345358))

(assert (=> bm!738922 m!8344922))

(assert (=> bm!738916 m!8344904))

(declare-fun m!8345360 () Bool)

(assert (=> b!7965477 m!8345360))

(assert (=> b!7965477 m!8344870))

(assert (=> bm!738915 m!8344912))

(assert (=> b!7965473 m!8344916))

(assert (=> b!7965473 m!8344980))

(assert (=> b!7965473 m!8344876))

(assert (=> b!7965473 m!8344894))

(declare-fun m!8345362 () Bool)

(assert (=> b!7965473 m!8345362))

(assert (=> b!7965473 m!8344870))

(assert (=> b!7965473 m!8344922))

(declare-fun m!8345364 () Bool)

(assert (=> b!7965473 m!8345364))

(assert (=> b!7965473 m!8344876))

(assert (=> b!7965473 m!8344984))

(assert (=> b!7965473 m!8344980))

(assert (=> b!7965473 m!8344982))

(assert (=> b!7965473 m!8344918))

(assert (=> b!7965473 m!8345362))

(declare-fun m!8345366 () Bool)

(assert (=> b!7965473 m!8345366))

(assert (=> b!7965473 m!8344872))

(declare-fun m!8345368 () Bool)

(assert (=> b!7965473 m!8345368))

(declare-fun m!8345370 () Bool)

(assert (=> bm!738918 m!8345370))

(declare-fun m!8345372 () Bool)

(assert (=> d!2378965 m!8345372))

(assert (=> d!2378965 m!8344876))

(declare-fun m!8345374 () Bool)

(assert (=> d!2378965 m!8345374))

(assert (=> d!2378965 m!8344898))

(declare-fun m!8345376 () Bool)

(assert (=> d!2378965 m!8345376))

(declare-fun m!8345378 () Bool)

(assert (=> d!2378965 m!8345378))

(declare-fun m!8345380 () Bool)

(assert (=> d!2378965 m!8345380))

(assert (=> d!2378965 m!8344892))

(assert (=> d!2378965 m!8344898))

(assert (=> bm!738919 m!8344916))

(assert (=> b!7964937 d!2378965))

(declare-fun d!2378967 () Bool)

(declare-fun lt!2705618 () List!74738)

(assert (=> d!2378967 (= (++!18379 testedP!447 lt!2705618) input!7927)))

(declare-fun e!4697153 () List!74738)

(assert (=> d!2378967 (= lt!2705618 e!4697153)))

(declare-fun c!1462907 () Bool)

(assert (=> d!2378967 (= c!1462907 ((_ is Cons!74614) testedP!447))))

(assert (=> d!2378967 (>= (size!43445 input!7927) (size!43445 testedP!447))))

(assert (=> d!2378967 (= (getSuffix!3812 input!7927 testedP!447) lt!2705618)))

(declare-fun b!7965480 () Bool)

(assert (=> b!7965480 (= e!4697153 (getSuffix!3812 (tail!15798 input!7927) (t!390481 testedP!447)))))

(declare-fun b!7965481 () Bool)

(assert (=> b!7965481 (= e!4697153 input!7927)))

(assert (= (and d!2378967 c!1462907) b!7965480))

(assert (= (and d!2378967 (not c!1462907)) b!7965481))

(declare-fun m!8345382 () Bool)

(assert (=> d!2378967 m!8345382))

(assert (=> d!2378967 m!8344872))

(assert (=> d!2378967 m!8344870))

(assert (=> b!7965480 m!8344934))

(assert (=> b!7965480 m!8344934))

(declare-fun m!8345384 () Bool)

(assert (=> b!7965480 m!8345384))

(assert (=> b!7964937 d!2378967))

(declare-fun d!2378969 () Bool)

(assert (=> d!2378969 (= (isEmpty!42915 (_1!38643 (findLongestMatchInner!2290 r!24602 testedP!447 lt!2705247 lt!2705240 input!7927 lt!2705236))) ((_ is Nil!74614) (_1!38643 (findLongestMatchInner!2290 r!24602 testedP!447 lt!2705247 lt!2705240 input!7927 lt!2705236))))))

(assert (=> b!7964937 d!2378969))

(declare-fun d!2378971 () Bool)

(declare-fun lt!2705619 () Int)

(assert (=> d!2378971 (>= lt!2705619 0)))

(declare-fun e!4697154 () Int)

(assert (=> d!2378971 (= lt!2705619 e!4697154)))

(declare-fun c!1462908 () Bool)

(assert (=> d!2378971 (= c!1462908 ((_ is Nil!74614) testedP!447))))

(assert (=> d!2378971 (= (size!43445 testedP!447) lt!2705619)))

(declare-fun b!7965482 () Bool)

(assert (=> b!7965482 (= e!4697154 0)))

(declare-fun b!7965483 () Bool)

(assert (=> b!7965483 (= e!4697154 (+ 1 (size!43445 (t!390481 testedP!447))))))

(assert (= (and d!2378971 c!1462908) b!7965482))

(assert (= (and d!2378971 (not c!1462908)) b!7965483))

(declare-fun m!8345386 () Bool)

(assert (=> b!7965483 m!8345386))

(assert (=> b!7964937 d!2378971))

(declare-fun bm!738923 () Bool)

(declare-fun call!738929 () Bool)

(declare-fun c!1462910 () Bool)

(assert (=> bm!738923 (= call!738929 (validRegex!11813 (ite c!1462910 (regOne!43531 baseR!116) (regOne!43530 baseR!116))))))

(declare-fun b!7965485 () Bool)

(declare-fun e!4697160 () Bool)

(declare-fun e!4697159 () Bool)

(assert (=> b!7965485 (= e!4697160 e!4697159)))

(declare-fun c!1462909 () Bool)

(assert (=> b!7965485 (= c!1462909 ((_ is Star!21509) baseR!116))))

(declare-fun b!7965486 () Bool)

(declare-fun e!4697157 () Bool)

(declare-fun e!4697161 () Bool)

(assert (=> b!7965486 (= e!4697157 e!4697161)))

(declare-fun res!3156538 () Bool)

(assert (=> b!7965486 (=> (not res!3156538) (not e!4697161))))

(assert (=> b!7965486 (= res!3156538 call!738929)))

(declare-fun b!7965487 () Bool)

(declare-fun call!738930 () Bool)

(assert (=> b!7965487 (= e!4697161 call!738930)))

(declare-fun b!7965488 () Bool)

(declare-fun e!4697156 () Bool)

(declare-fun call!738928 () Bool)

(assert (=> b!7965488 (= e!4697156 call!738928)))

(declare-fun b!7965489 () Bool)

(declare-fun res!3156536 () Bool)

(assert (=> b!7965489 (=> res!3156536 e!4697157)))

(assert (=> b!7965489 (= res!3156536 (not ((_ is Concat!30508) baseR!116)))))

(declare-fun e!4697158 () Bool)

(assert (=> b!7965489 (= e!4697158 e!4697157)))

(declare-fun b!7965490 () Bool)

(assert (=> b!7965490 (= e!4697159 e!4697158)))

(assert (=> b!7965490 (= c!1462910 ((_ is Union!21509) baseR!116))))

(declare-fun b!7965484 () Bool)

(assert (=> b!7965484 (= e!4697159 e!4697156)))

(declare-fun res!3156537 () Bool)

(assert (=> b!7965484 (= res!3156537 (not (nullable!9610 (reg!21838 baseR!116))))))

(assert (=> b!7965484 (=> (not res!3156537) (not e!4697156))))

(declare-fun d!2378973 () Bool)

(declare-fun res!3156540 () Bool)

(assert (=> d!2378973 (=> res!3156540 e!4697160)))

(assert (=> d!2378973 (= res!3156540 ((_ is ElementMatch!21509) baseR!116))))

(assert (=> d!2378973 (= (validRegex!11813 baseR!116) e!4697160)))

(declare-fun bm!738924 () Bool)

(assert (=> bm!738924 (= call!738928 (validRegex!11813 (ite c!1462909 (reg!21838 baseR!116) (ite c!1462910 (regTwo!43531 baseR!116) (regTwo!43530 baseR!116)))))))

(declare-fun bm!738925 () Bool)

(assert (=> bm!738925 (= call!738930 call!738928)))

(declare-fun b!7965491 () Bool)

(declare-fun res!3156539 () Bool)

(declare-fun e!4697155 () Bool)

(assert (=> b!7965491 (=> (not res!3156539) (not e!4697155))))

(assert (=> b!7965491 (= res!3156539 call!738929)))

(assert (=> b!7965491 (= e!4697158 e!4697155)))

(declare-fun b!7965492 () Bool)

(assert (=> b!7965492 (= e!4697155 call!738930)))

(assert (= (and d!2378973 (not res!3156540)) b!7965485))

(assert (= (and b!7965485 c!1462909) b!7965484))

(assert (= (and b!7965485 (not c!1462909)) b!7965490))

(assert (= (and b!7965484 res!3156537) b!7965488))

(assert (= (and b!7965490 c!1462910) b!7965491))

(assert (= (and b!7965490 (not c!1462910)) b!7965489))

(assert (= (and b!7965491 res!3156539) b!7965492))

(assert (= (and b!7965489 (not res!3156536)) b!7965486))

(assert (= (and b!7965486 res!3156538) b!7965487))

(assert (= (or b!7965492 b!7965487) bm!738925))

(assert (= (or b!7965491 b!7965486) bm!738923))

(assert (= (or b!7965488 bm!738925) bm!738924))

(declare-fun m!8345388 () Bool)

(assert (=> bm!738923 m!8345388))

(declare-fun m!8345390 () Bool)

(assert (=> b!7965484 m!8345390))

(declare-fun m!8345392 () Bool)

(assert (=> bm!738924 m!8345392))

(assert (=> start!751232 d!2378973))

(declare-fun b!7965497 () Bool)

(declare-fun e!4697164 () Bool)

(declare-fun tp!2373665 () Bool)

(assert (=> b!7965497 (= e!4697164 (and tp_is_empty!53561 tp!2373665))))

(assert (=> b!7964934 (= tp!2373588 e!4697164)))

(assert (= (and b!7964934 ((_ is Cons!74614) (t!390481 testedP!447))) b!7965497))

(declare-fun e!4697167 () Bool)

(assert (=> b!7964929 (= tp!2373598 e!4697167)))

(declare-fun b!7965509 () Bool)

(declare-fun tp!2373679 () Bool)

(declare-fun tp!2373680 () Bool)

(assert (=> b!7965509 (= e!4697167 (and tp!2373679 tp!2373680))))

(declare-fun b!7965510 () Bool)

(declare-fun tp!2373676 () Bool)

(assert (=> b!7965510 (= e!4697167 tp!2373676)))

(declare-fun b!7965508 () Bool)

(assert (=> b!7965508 (= e!4697167 tp_is_empty!53561)))

(declare-fun b!7965511 () Bool)

(declare-fun tp!2373678 () Bool)

(declare-fun tp!2373677 () Bool)

(assert (=> b!7965511 (= e!4697167 (and tp!2373678 tp!2373677))))

(assert (= (and b!7964929 ((_ is ElementMatch!21509) (regOne!43530 baseR!116))) b!7965508))

(assert (= (and b!7964929 ((_ is Concat!30508) (regOne!43530 baseR!116))) b!7965509))

(assert (= (and b!7964929 ((_ is Star!21509) (regOne!43530 baseR!116))) b!7965510))

(assert (= (and b!7964929 ((_ is Union!21509) (regOne!43530 baseR!116))) b!7965511))

(declare-fun e!4697168 () Bool)

(assert (=> b!7964929 (= tp!2373590 e!4697168)))

(declare-fun b!7965513 () Bool)

(declare-fun tp!2373684 () Bool)

(declare-fun tp!2373685 () Bool)

(assert (=> b!7965513 (= e!4697168 (and tp!2373684 tp!2373685))))

(declare-fun b!7965514 () Bool)

(declare-fun tp!2373681 () Bool)

(assert (=> b!7965514 (= e!4697168 tp!2373681)))

(declare-fun b!7965512 () Bool)

(assert (=> b!7965512 (= e!4697168 tp_is_empty!53561)))

(declare-fun b!7965515 () Bool)

(declare-fun tp!2373683 () Bool)

(declare-fun tp!2373682 () Bool)

(assert (=> b!7965515 (= e!4697168 (and tp!2373683 tp!2373682))))

(assert (= (and b!7964929 ((_ is ElementMatch!21509) (regTwo!43530 baseR!116))) b!7965512))

(assert (= (and b!7964929 ((_ is Concat!30508) (regTwo!43530 baseR!116))) b!7965513))

(assert (= (and b!7964929 ((_ is Star!21509) (regTwo!43530 baseR!116))) b!7965514))

(assert (= (and b!7964929 ((_ is Union!21509) (regTwo!43530 baseR!116))) b!7965515))

(declare-fun e!4697169 () Bool)

(assert (=> b!7964930 (= tp!2373596 e!4697169)))

(declare-fun b!7965517 () Bool)

(declare-fun tp!2373689 () Bool)

(declare-fun tp!2373690 () Bool)

(assert (=> b!7965517 (= e!4697169 (and tp!2373689 tp!2373690))))

(declare-fun b!7965518 () Bool)

(declare-fun tp!2373686 () Bool)

(assert (=> b!7965518 (= e!4697169 tp!2373686)))

(declare-fun b!7965516 () Bool)

(assert (=> b!7965516 (= e!4697169 tp_is_empty!53561)))

(declare-fun b!7965519 () Bool)

(declare-fun tp!2373688 () Bool)

(declare-fun tp!2373687 () Bool)

(assert (=> b!7965519 (= e!4697169 (and tp!2373688 tp!2373687))))

(assert (= (and b!7964930 ((_ is ElementMatch!21509) (regOne!43531 baseR!116))) b!7965516))

(assert (= (and b!7964930 ((_ is Concat!30508) (regOne!43531 baseR!116))) b!7965517))

(assert (= (and b!7964930 ((_ is Star!21509) (regOne!43531 baseR!116))) b!7965518))

(assert (= (and b!7964930 ((_ is Union!21509) (regOne!43531 baseR!116))) b!7965519))

(declare-fun e!4697170 () Bool)

(assert (=> b!7964930 (= tp!2373597 e!4697170)))

(declare-fun b!7965521 () Bool)

(declare-fun tp!2373694 () Bool)

(declare-fun tp!2373695 () Bool)

(assert (=> b!7965521 (= e!4697170 (and tp!2373694 tp!2373695))))

(declare-fun b!7965522 () Bool)

(declare-fun tp!2373691 () Bool)

(assert (=> b!7965522 (= e!4697170 tp!2373691)))

(declare-fun b!7965520 () Bool)

(assert (=> b!7965520 (= e!4697170 tp_is_empty!53561)))

(declare-fun b!7965523 () Bool)

(declare-fun tp!2373693 () Bool)

(declare-fun tp!2373692 () Bool)

(assert (=> b!7965523 (= e!4697170 (and tp!2373693 tp!2373692))))

(assert (= (and b!7964930 ((_ is ElementMatch!21509) (regTwo!43531 baseR!116))) b!7965520))

(assert (= (and b!7964930 ((_ is Concat!30508) (regTwo!43531 baseR!116))) b!7965521))

(assert (= (and b!7964930 ((_ is Star!21509) (regTwo!43531 baseR!116))) b!7965522))

(assert (= (and b!7964930 ((_ is Union!21509) (regTwo!43531 baseR!116))) b!7965523))

(declare-fun b!7965524 () Bool)

(declare-fun e!4697171 () Bool)

(declare-fun tp!2373696 () Bool)

(assert (=> b!7965524 (= e!4697171 (and tp_is_empty!53561 tp!2373696))))

(assert (=> b!7964946 (= tp!2373593 e!4697171)))

(assert (= (and b!7964946 ((_ is Cons!74614) (t!390481 input!7927))) b!7965524))

(declare-fun e!4697172 () Bool)

(assert (=> b!7964941 (= tp!2373591 e!4697172)))

(declare-fun b!7965526 () Bool)

(declare-fun tp!2373700 () Bool)

(declare-fun tp!2373701 () Bool)

(assert (=> b!7965526 (= e!4697172 (and tp!2373700 tp!2373701))))

(declare-fun b!7965527 () Bool)

(declare-fun tp!2373697 () Bool)

(assert (=> b!7965527 (= e!4697172 tp!2373697)))

(declare-fun b!7965525 () Bool)

(assert (=> b!7965525 (= e!4697172 tp_is_empty!53561)))

(declare-fun b!7965528 () Bool)

(declare-fun tp!2373699 () Bool)

(declare-fun tp!2373698 () Bool)

(assert (=> b!7965528 (= e!4697172 (and tp!2373699 tp!2373698))))

(assert (= (and b!7964941 ((_ is ElementMatch!21509) (reg!21838 r!24602))) b!7965525))

(assert (= (and b!7964941 ((_ is Concat!30508) (reg!21838 r!24602))) b!7965526))

(assert (= (and b!7964941 ((_ is Star!21509) (reg!21838 r!24602))) b!7965527))

(assert (= (and b!7964941 ((_ is Union!21509) (reg!21838 r!24602))) b!7965528))

(declare-fun e!4697173 () Bool)

(assert (=> b!7964931 (= tp!2373587 e!4697173)))

(declare-fun b!7965530 () Bool)

(declare-fun tp!2373705 () Bool)

(declare-fun tp!2373706 () Bool)

(assert (=> b!7965530 (= e!4697173 (and tp!2373705 tp!2373706))))

(declare-fun b!7965531 () Bool)

(declare-fun tp!2373702 () Bool)

(assert (=> b!7965531 (= e!4697173 tp!2373702)))

(declare-fun b!7965529 () Bool)

(assert (=> b!7965529 (= e!4697173 tp_is_empty!53561)))

(declare-fun b!7965532 () Bool)

(declare-fun tp!2373704 () Bool)

(declare-fun tp!2373703 () Bool)

(assert (=> b!7965532 (= e!4697173 (and tp!2373704 tp!2373703))))

(assert (= (and b!7964931 ((_ is ElementMatch!21509) (reg!21838 baseR!116))) b!7965529))

(assert (= (and b!7964931 ((_ is Concat!30508) (reg!21838 baseR!116))) b!7965530))

(assert (= (and b!7964931 ((_ is Star!21509) (reg!21838 baseR!116))) b!7965531))

(assert (= (and b!7964931 ((_ is Union!21509) (reg!21838 baseR!116))) b!7965532))

(declare-fun e!4697174 () Bool)

(assert (=> b!7964932 (= tp!2373592 e!4697174)))

(declare-fun b!7965534 () Bool)

(declare-fun tp!2373710 () Bool)

(declare-fun tp!2373711 () Bool)

(assert (=> b!7965534 (= e!4697174 (and tp!2373710 tp!2373711))))

(declare-fun b!7965535 () Bool)

(declare-fun tp!2373707 () Bool)

(assert (=> b!7965535 (= e!4697174 tp!2373707)))

(declare-fun b!7965533 () Bool)

(assert (=> b!7965533 (= e!4697174 tp_is_empty!53561)))

(declare-fun b!7965536 () Bool)

(declare-fun tp!2373709 () Bool)

(declare-fun tp!2373708 () Bool)

(assert (=> b!7965536 (= e!4697174 (and tp!2373709 tp!2373708))))

(assert (= (and b!7964932 ((_ is ElementMatch!21509) (regOne!43530 r!24602))) b!7965533))

(assert (= (and b!7964932 ((_ is Concat!30508) (regOne!43530 r!24602))) b!7965534))

(assert (= (and b!7964932 ((_ is Star!21509) (regOne!43530 r!24602))) b!7965535))

(assert (= (and b!7964932 ((_ is Union!21509) (regOne!43530 r!24602))) b!7965536))

(declare-fun e!4697175 () Bool)

(assert (=> b!7964932 (= tp!2373589 e!4697175)))

(declare-fun b!7965538 () Bool)

(declare-fun tp!2373715 () Bool)

(declare-fun tp!2373716 () Bool)

(assert (=> b!7965538 (= e!4697175 (and tp!2373715 tp!2373716))))

(declare-fun b!7965539 () Bool)

(declare-fun tp!2373712 () Bool)

(assert (=> b!7965539 (= e!4697175 tp!2373712)))

(declare-fun b!7965537 () Bool)

(assert (=> b!7965537 (= e!4697175 tp_is_empty!53561)))

(declare-fun b!7965540 () Bool)

(declare-fun tp!2373714 () Bool)

(declare-fun tp!2373713 () Bool)

(assert (=> b!7965540 (= e!4697175 (and tp!2373714 tp!2373713))))

(assert (= (and b!7964932 ((_ is ElementMatch!21509) (regTwo!43530 r!24602))) b!7965537))

(assert (= (and b!7964932 ((_ is Concat!30508) (regTwo!43530 r!24602))) b!7965538))

(assert (= (and b!7964932 ((_ is Star!21509) (regTwo!43530 r!24602))) b!7965539))

(assert (= (and b!7964932 ((_ is Union!21509) (regTwo!43530 r!24602))) b!7965540))

(declare-fun e!4697176 () Bool)

(assert (=> b!7964948 (= tp!2373594 e!4697176)))

(declare-fun b!7965542 () Bool)

(declare-fun tp!2373720 () Bool)

(declare-fun tp!2373721 () Bool)

(assert (=> b!7965542 (= e!4697176 (and tp!2373720 tp!2373721))))

(declare-fun b!7965543 () Bool)

(declare-fun tp!2373717 () Bool)

(assert (=> b!7965543 (= e!4697176 tp!2373717)))

(declare-fun b!7965541 () Bool)

(assert (=> b!7965541 (= e!4697176 tp_is_empty!53561)))

(declare-fun b!7965544 () Bool)

(declare-fun tp!2373719 () Bool)

(declare-fun tp!2373718 () Bool)

(assert (=> b!7965544 (= e!4697176 (and tp!2373719 tp!2373718))))

(assert (= (and b!7964948 ((_ is ElementMatch!21509) (regOne!43531 r!24602))) b!7965541))

(assert (= (and b!7964948 ((_ is Concat!30508) (regOne!43531 r!24602))) b!7965542))

(assert (= (and b!7964948 ((_ is Star!21509) (regOne!43531 r!24602))) b!7965543))

(assert (= (and b!7964948 ((_ is Union!21509) (regOne!43531 r!24602))) b!7965544))

(declare-fun e!4697177 () Bool)

(assert (=> b!7964948 (= tp!2373595 e!4697177)))

(declare-fun b!7965546 () Bool)

(declare-fun tp!2373725 () Bool)

(declare-fun tp!2373726 () Bool)

(assert (=> b!7965546 (= e!4697177 (and tp!2373725 tp!2373726))))

(declare-fun b!7965547 () Bool)

(declare-fun tp!2373722 () Bool)

(assert (=> b!7965547 (= e!4697177 tp!2373722)))

(declare-fun b!7965545 () Bool)

(assert (=> b!7965545 (= e!4697177 tp_is_empty!53561)))

(declare-fun b!7965548 () Bool)

(declare-fun tp!2373724 () Bool)

(declare-fun tp!2373723 () Bool)

(assert (=> b!7965548 (= e!4697177 (and tp!2373724 tp!2373723))))

(assert (= (and b!7964948 ((_ is ElementMatch!21509) (regTwo!43531 r!24602))) b!7965545))

(assert (= (and b!7964948 ((_ is Concat!30508) (regTwo!43531 r!24602))) b!7965546))

(assert (= (and b!7964948 ((_ is Star!21509) (regTwo!43531 r!24602))) b!7965547))

(assert (= (and b!7964948 ((_ is Union!21509) (regTwo!43531 r!24602))) b!7965548))

(check-sat (not b!7965515) (not b!7964999) (not b!7965484) (not b!7965510) (not b!7965461) (not bm!738898) (not b!7965400) (not b!7965419) (not b!7965463) (not d!2378877) (not d!2378967) (not b!7965465) (not b!7965477) (not b!7965526) (not b!7965033) (not bm!738920) (not d!2378881) (not bm!738918) tp_is_empty!53561 (not bm!738894) (not bm!738919) (not bm!738893) (not d!2378873) (not b!7965542) (not d!2378951) (not b!7965025) (not bm!738889) (not d!2378867) (not b!7965031) (not bm!738923) (not bm!738917) (not b!7965108) (not b!7965547) (not b!7965518) (not d!2378871) (not b!7965497) (not b!7965003) (not bm!738900) (not b!7965462) (not bm!738916) (not b!7965548) (not bm!738924) (not d!2378859) (not bm!738901) (not b!7965024) (not bm!738896) (not bm!738913) (not b!7965002) (not b!7965524) (not b!7965523) (not d!2378891) (not b!7965544) (not b!7965546) (not b!7965473) (not b!7965539) (not b!7965396) (not b!7965509) (not b!7965530) (not bm!738897) (not bm!738888) (not b!7965392) (not b!7965540) (not bm!738922) (not bm!738915) (not bm!738891) (not b!7965416) (not b!7965014) (not b!7965480) (not b!7965427) (not b!7965012) (not d!2378885) (not b!7965389) (not b!7965519) (not bm!738921) (not b!7965543) (not b!7965466) (not bm!738817) (not bm!738818) (not b!7964960) (not b!7964997) (not b!7965536) (not bm!738914) (not b!7965081) (not b!7965535) (not bm!738899) (not d!2378949) (not b!7965538) (not b!7965528) (not b!7965527) (not d!2378861) (not b!7965532) (not b!7965413) (not bm!738794) (not b!7964962) (not bm!738895) (not b!7965513) (not b!7965511) (not bm!738892) (not b!7965469) (not bm!738890) (not b!7965517) (not d!2378851) (not b!7965522) (not b!7965004) (not b!7965408) (not d!2378875) (not b!7965534) (not b!7965423) (not b!7964961) (not d!2378965) (not b!7965411) (not b!7965013) (not b!7965521) (not b!7965001) (not bm!738887) (not d!2378955) (not d!2378959) (not b!7965531) (not b!7965483) (not d!2378947) (not bm!738902) (not b!7965458) (not b!7965414) (not b!7965514))
(check-sat)
