; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751144 () Bool)

(assert start!751144)

(declare-fun b!7963956 () Bool)

(declare-fun e!4696331 () Bool)

(declare-fun lt!2704620 () Int)

(declare-fun lt!2704614 () Int)

(assert (=> b!7963956 (= e!4696331 (>= lt!2704620 lt!2704614))))

(declare-fun e!4696340 () Bool)

(assert (=> b!7963956 e!4696340))

(declare-fun res!3156030 () Bool)

(assert (=> b!7963956 (=> res!3156030 e!4696340)))

(declare-datatypes ((C!43344 0))(
  ( (C!43345 (val!32220 Int)) )
))
(declare-datatypes ((List!74732 0))(
  ( (Nil!74608) (Cons!74608 (h!81056 C!43344) (t!390475 List!74732)) )
))
(declare-datatypes ((tuple2!70668 0))(
  ( (tuple2!70669 (_1!38637 List!74732) (_2!38637 List!74732)) )
))
(declare-fun lt!2704619 () tuple2!70668)

(declare-fun isEmpty!42909 (List!74732) Bool)

(assert (=> b!7963956 (= res!3156030 (isEmpty!42909 (_1!38637 lt!2704619)))))

(declare-datatypes ((Regex!21503 0))(
  ( (ElementMatch!21503 (c!1462568 C!43344)) (Concat!30502 (regOne!43518 Regex!21503) (regTwo!43518 Regex!21503)) (EmptyExpr!21503) (Star!21503 (reg!21832 Regex!21503)) (EmptyLang!21503) (Union!21503 (regOne!43519 Regex!21503) (regTwo!43519 Regex!21503)) )
))
(declare-fun lt!2704615 () Regex!21503)

(declare-fun lt!2704616 () List!74732)

(declare-fun input!7927 () List!74732)

(declare-fun findLongestMatchInner!2284 (Regex!21503 List!74732 Int List!74732 List!74732 Int) tuple2!70668)

(declare-fun size!43439 (List!74732) Int)

(declare-fun getSuffix!3806 (List!74732 List!74732) List!74732)

(assert (=> b!7963956 (= lt!2704619 (findLongestMatchInner!2284 lt!2704615 lt!2704616 (size!43439 lt!2704616) (getSuffix!3806 input!7927 lt!2704616) input!7927 lt!2704620))))

(declare-fun baseR!116 () Regex!21503)

(declare-datatypes ((Unit!170102 0))(
  ( (Unit!170103) )
))
(declare-fun lt!2704624 () Unit!170102)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!47 (Regex!21503 Regex!21503 List!74732 List!74732) Unit!170102)

(assert (=> b!7963956 (= lt!2704624 (longestMatchIsAcceptedByMatchOrIsEmptyRec!47 baseR!116 lt!2704615 lt!2704616 input!7927))))

(declare-fun derivative!689 (Regex!21503 List!74732) Regex!21503)

(assert (=> b!7963956 (= (derivative!689 baseR!116 lt!2704616) lt!2704615)))

(declare-fun testedP!447 () List!74732)

(declare-fun lt!2704612 () C!43344)

(declare-fun r!24602 () Regex!21503)

(declare-fun lt!2704618 () Unit!170102)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!215 (Regex!21503 Regex!21503 List!74732 C!43344) Unit!170102)

(assert (=> b!7963956 (= lt!2704618 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!215 baseR!116 r!24602 testedP!447 lt!2704612))))

(declare-fun res!3156034 () Bool)

(declare-fun e!4696336 () Bool)

(assert (=> start!751144 (=> (not res!3156034) (not e!4696336))))

(declare-fun validRegex!11807 (Regex!21503) Bool)

(assert (=> start!751144 (= res!3156034 (validRegex!11807 baseR!116))))

(assert (=> start!751144 e!4696336))

(declare-fun e!4696341 () Bool)

(assert (=> start!751144 e!4696341))

(declare-fun e!4696337 () Bool)

(assert (=> start!751144 e!4696337))

(declare-fun e!4696339 () Bool)

(assert (=> start!751144 e!4696339))

(declare-fun e!4696335 () Bool)

(assert (=> start!751144 e!4696335))

(declare-fun b!7963957 () Bool)

(declare-fun tp_is_empty!53549 () Bool)

(declare-fun tp!2373254 () Bool)

(assert (=> b!7963957 (= e!4696337 (and tp_is_empty!53549 tp!2373254))))

(declare-fun b!7963958 () Bool)

(declare-fun e!4696333 () Bool)

(declare-fun e!4696338 () Bool)

(assert (=> b!7963958 (= e!4696333 (not e!4696338))))

(declare-fun res!3156029 () Bool)

(assert (=> b!7963958 (=> res!3156029 e!4696338)))

(assert (=> b!7963958 (= res!3156029 (>= lt!2704614 lt!2704620))))

(declare-fun lt!2704613 () Unit!170102)

(declare-fun e!4696332 () Unit!170102)

(assert (=> b!7963958 (= lt!2704613 e!4696332)))

(declare-fun c!1462567 () Bool)

(assert (=> b!7963958 (= c!1462567 (= lt!2704614 lt!2704620))))

(assert (=> b!7963958 (<= lt!2704614 lt!2704620)))

(declare-fun lt!2704622 () Unit!170102)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1120 (List!74732 List!74732) Unit!170102)

(assert (=> b!7963958 (= lt!2704622 (lemmaIsPrefixThenSmallerEqSize!1120 testedP!447 input!7927))))

(declare-fun b!7963959 () Bool)

(declare-fun tp!2373252 () Bool)

(declare-fun tp!2373251 () Bool)

(assert (=> b!7963959 (= e!4696341 (and tp!2373252 tp!2373251))))

(declare-fun b!7963960 () Bool)

(declare-fun tp!2373247 () Bool)

(declare-fun tp!2373253 () Bool)

(assert (=> b!7963960 (= e!4696335 (and tp!2373247 tp!2373253))))

(declare-fun b!7963961 () Bool)

(declare-fun tp!2373250 () Bool)

(assert (=> b!7963961 (= e!4696341 tp!2373250)))

(declare-fun b!7963962 () Bool)

(declare-fun tp!2373243 () Bool)

(declare-fun tp!2373248 () Bool)

(assert (=> b!7963962 (= e!4696335 (and tp!2373243 tp!2373248))))

(declare-fun b!7963963 () Bool)

(declare-fun tp!2373244 () Bool)

(assert (=> b!7963963 (= e!4696339 (and tp_is_empty!53549 tp!2373244))))

(declare-fun b!7963964 () Bool)

(assert (=> b!7963964 (= e!4696335 tp_is_empty!53549)))

(declare-fun b!7963965 () Bool)

(declare-fun tp!2373249 () Bool)

(declare-fun tp!2373246 () Bool)

(assert (=> b!7963965 (= e!4696341 (and tp!2373249 tp!2373246))))

(declare-fun b!7963966 () Bool)

(declare-fun Unit!170104 () Unit!170102)

(assert (=> b!7963966 (= e!4696332 Unit!170104)))

(declare-fun b!7963967 () Bool)

(declare-fun res!3156033 () Bool)

(assert (=> b!7963967 (=> (not res!3156033) (not e!4696333))))

(assert (=> b!7963967 (= res!3156033 (not (= testedP!447 input!7927)))))

(declare-fun b!7963968 () Bool)

(declare-fun tp!2373245 () Bool)

(assert (=> b!7963968 (= e!4696335 tp!2373245)))

(declare-fun b!7963969 () Bool)

(declare-fun res!3156036 () Bool)

(assert (=> b!7963969 (=> (not res!3156036) (not e!4696336))))

(declare-fun isPrefix!6603 (List!74732 List!74732) Bool)

(assert (=> b!7963969 (= res!3156036 (isPrefix!6603 testedP!447 input!7927))))

(declare-fun b!7963970 () Bool)

(declare-fun matchR!10736 (Regex!21503 List!74732) Bool)

(assert (=> b!7963970 (= e!4696340 (matchR!10736 baseR!116 (_1!38637 lt!2704619)))))

(declare-fun b!7963971 () Bool)

(declare-fun res!3156028 () Bool)

(assert (=> b!7963971 (=> (not res!3156028) (not e!4696336))))

(assert (=> b!7963971 (= res!3156028 (= (derivative!689 baseR!116 testedP!447) r!24602))))

(declare-fun b!7963972 () Bool)

(assert (=> b!7963972 (= e!4696341 tp_is_empty!53549)))

(declare-fun b!7963973 () Bool)

(declare-fun e!4696334 () Bool)

(assert (=> b!7963973 (= e!4696334 e!4696331)))

(declare-fun res!3156032 () Bool)

(assert (=> b!7963973 (=> res!3156032 e!4696331)))

(declare-fun lt!2704623 () List!74732)

(declare-fun tail!15792 (List!74732) List!74732)

(assert (=> b!7963973 (= res!3156032 (isEmpty!42909 (_1!38637 (findLongestMatchInner!2284 lt!2704615 lt!2704616 (+ 1 lt!2704614) (tail!15792 lt!2704623) input!7927 lt!2704620))))))

(declare-fun derivativeStep!6531 (Regex!21503 C!43344) Regex!21503)

(assert (=> b!7963973 (= lt!2704615 (derivativeStep!6531 r!24602 lt!2704612))))

(declare-fun b!7963974 () Bool)

(assert (=> b!7963974 (= e!4696338 e!4696334)))

(declare-fun res!3156031 () Bool)

(assert (=> b!7963974 (=> res!3156031 e!4696334)))

(declare-fun nullable!9604 (Regex!21503) Bool)

(assert (=> b!7963974 (= res!3156031 (not (nullable!9604 r!24602)))))

(assert (=> b!7963974 (isPrefix!6603 lt!2704616 input!7927)))

(declare-fun lt!2704625 () Unit!170102)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1330 (List!74732 List!74732) Unit!170102)

(assert (=> b!7963974 (= lt!2704625 (lemmaAddHeadSuffixToPrefixStillPrefix!1330 testedP!447 input!7927))))

(declare-fun ++!18373 (List!74732 List!74732) List!74732)

(assert (=> b!7963974 (= lt!2704616 (++!18373 testedP!447 (Cons!74608 lt!2704612 Nil!74608)))))

(declare-fun head!16255 (List!74732) C!43344)

(assert (=> b!7963974 (= lt!2704612 (head!16255 lt!2704623))))

(declare-fun b!7963975 () Bool)

(declare-fun Unit!170105 () Unit!170102)

(assert (=> b!7963975 (= e!4696332 Unit!170105)))

(declare-fun lt!2704621 () Unit!170102)

(declare-fun lemmaIsPrefixRefl!4071 (List!74732 List!74732) Unit!170102)

(assert (=> b!7963975 (= lt!2704621 (lemmaIsPrefixRefl!4071 input!7927 input!7927))))

(assert (=> b!7963975 (isPrefix!6603 input!7927 input!7927)))

(declare-fun lt!2704617 () Unit!170102)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1651 (List!74732 List!74732 List!74732) Unit!170102)

(assert (=> b!7963975 (= lt!2704617 (lemmaIsPrefixSameLengthThenSameList!1651 input!7927 testedP!447 input!7927))))

(assert (=> b!7963975 false))

(declare-fun b!7963976 () Bool)

(assert (=> b!7963976 (= e!4696336 e!4696333)))

(declare-fun res!3156035 () Bool)

(assert (=> b!7963976 (=> (not res!3156035) (not e!4696333))))

(assert (=> b!7963976 (= res!3156035 (not (isEmpty!42909 (_1!38637 (findLongestMatchInner!2284 r!24602 testedP!447 lt!2704614 lt!2704623 input!7927 lt!2704620)))))))

(assert (=> b!7963976 (= lt!2704620 (size!43439 input!7927))))

(assert (=> b!7963976 (= lt!2704623 (getSuffix!3806 input!7927 testedP!447))))

(assert (=> b!7963976 (= lt!2704614 (size!43439 testedP!447))))

(assert (= (and start!751144 res!3156034) b!7963969))

(assert (= (and b!7963969 res!3156036) b!7963971))

(assert (= (and b!7963971 res!3156028) b!7963976))

(assert (= (and b!7963976 res!3156035) b!7963967))

(assert (= (and b!7963967 res!3156033) b!7963958))

(assert (= (and b!7963958 c!1462567) b!7963975))

(assert (= (and b!7963958 (not c!1462567)) b!7963966))

(assert (= (and b!7963958 (not res!3156029)) b!7963974))

(assert (= (and b!7963974 (not res!3156031)) b!7963973))

(assert (= (and b!7963973 (not res!3156032)) b!7963956))

(assert (= (and b!7963956 (not res!3156030)) b!7963970))

(get-info :version)

(assert (= (and start!751144 ((_ is ElementMatch!21503) baseR!116)) b!7963972))

(assert (= (and start!751144 ((_ is Concat!30502) baseR!116)) b!7963959))

(assert (= (and start!751144 ((_ is Star!21503) baseR!116)) b!7963961))

(assert (= (and start!751144 ((_ is Union!21503) baseR!116)) b!7963965))

(assert (= (and start!751144 ((_ is Cons!74608) testedP!447)) b!7963957))

(assert (= (and start!751144 ((_ is Cons!74608) input!7927)) b!7963963))

(assert (= (and start!751144 ((_ is ElementMatch!21503) r!24602)) b!7963964))

(assert (= (and start!751144 ((_ is Concat!30502) r!24602)) b!7963960))

(assert (= (and start!751144 ((_ is Star!21503) r!24602)) b!7963968))

(assert (= (and start!751144 ((_ is Union!21503) r!24602)) b!7963962))

(declare-fun m!8344064 () Bool)

(assert (=> b!7963958 m!8344064))

(declare-fun m!8344066 () Bool)

(assert (=> b!7963970 m!8344066))

(declare-fun m!8344068 () Bool)

(assert (=> b!7963956 m!8344068))

(declare-fun m!8344070 () Bool)

(assert (=> b!7963956 m!8344070))

(declare-fun m!8344072 () Bool)

(assert (=> b!7963956 m!8344072))

(declare-fun m!8344074 () Bool)

(assert (=> b!7963956 m!8344074))

(declare-fun m!8344076 () Bool)

(assert (=> b!7963956 m!8344076))

(assert (=> b!7963956 m!8344072))

(declare-fun m!8344078 () Bool)

(assert (=> b!7963956 m!8344078))

(assert (=> b!7963956 m!8344070))

(declare-fun m!8344080 () Bool)

(assert (=> b!7963956 m!8344080))

(declare-fun m!8344082 () Bool)

(assert (=> start!751144 m!8344082))

(declare-fun m!8344084 () Bool)

(assert (=> b!7963971 m!8344084))

(declare-fun m!8344086 () Bool)

(assert (=> b!7963973 m!8344086))

(assert (=> b!7963973 m!8344086))

(declare-fun m!8344088 () Bool)

(assert (=> b!7963973 m!8344088))

(declare-fun m!8344090 () Bool)

(assert (=> b!7963973 m!8344090))

(declare-fun m!8344092 () Bool)

(assert (=> b!7963973 m!8344092))

(declare-fun m!8344094 () Bool)

(assert (=> b!7963969 m!8344094))

(declare-fun m!8344096 () Bool)

(assert (=> b!7963974 m!8344096))

(declare-fun m!8344098 () Bool)

(assert (=> b!7963974 m!8344098))

(declare-fun m!8344100 () Bool)

(assert (=> b!7963974 m!8344100))

(declare-fun m!8344102 () Bool)

(assert (=> b!7963974 m!8344102))

(declare-fun m!8344104 () Bool)

(assert (=> b!7963974 m!8344104))

(declare-fun m!8344106 () Bool)

(assert (=> b!7963975 m!8344106))

(declare-fun m!8344108 () Bool)

(assert (=> b!7963975 m!8344108))

(declare-fun m!8344110 () Bool)

(assert (=> b!7963975 m!8344110))

(declare-fun m!8344112 () Bool)

(assert (=> b!7963976 m!8344112))

(declare-fun m!8344114 () Bool)

(assert (=> b!7963976 m!8344114))

(declare-fun m!8344116 () Bool)

(assert (=> b!7963976 m!8344116))

(declare-fun m!8344118 () Bool)

(assert (=> b!7963976 m!8344118))

(declare-fun m!8344120 () Bool)

(assert (=> b!7963976 m!8344120))

(check-sat (not b!7963968) (not b!7963975) (not b!7963970) (not b!7963963) (not b!7963976) (not b!7963959) (not b!7963969) (not b!7963973) (not b!7963961) tp_is_empty!53549 (not b!7963957) (not start!751144) (not b!7963974) (not b!7963960) (not b!7963965) (not b!7963971) (not b!7963962) (not b!7963958) (not b!7963956))
(check-sat)
