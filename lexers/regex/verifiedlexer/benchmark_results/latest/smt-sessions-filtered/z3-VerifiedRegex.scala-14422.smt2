; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751620 () Bool)

(assert start!751620)

(declare-fun b!7969293 () Bool)

(declare-datatypes ((Unit!170256 0))(
  ( (Unit!170257) )
))
(declare-fun e!4698979 () Unit!170256)

(declare-fun Unit!170258 () Unit!170256)

(assert (=> b!7969293 (= e!4698979 Unit!170258)))

(declare-fun lt!2707148 () Unit!170256)

(declare-datatypes ((C!43388 0))(
  ( (C!43389 (val!32242 Int)) )
))
(declare-datatypes ((List!74754 0))(
  ( (Nil!74630) (Cons!74630 (h!81078 C!43388) (t!390497 List!74754)) )
))
(declare-fun input!7927 () List!74754)

(declare-fun lemmaIsPrefixRefl!4093 (List!74754 List!74754) Unit!170256)

(assert (=> b!7969293 (= lt!2707148 (lemmaIsPrefixRefl!4093 input!7927 input!7927))))

(declare-fun isPrefix!6625 (List!74754 List!74754) Bool)

(assert (=> b!7969293 (isPrefix!6625 input!7927 input!7927)))

(declare-fun lt!2707149 () Unit!170256)

(declare-fun testedP!447 () List!74754)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1673 (List!74754 List!74754 List!74754) Unit!170256)

(assert (=> b!7969293 (= lt!2707149 (lemmaIsPrefixSameLengthThenSameList!1673 input!7927 testedP!447 input!7927))))

(assert (=> b!7969293 false))

(declare-fun b!7969294 () Bool)

(declare-fun e!4698975 () Bool)

(declare-fun tp!2375691 () Bool)

(declare-fun tp!2375689 () Bool)

(assert (=> b!7969294 (= e!4698975 (and tp!2375691 tp!2375689))))

(declare-fun res!3157494 () Bool)

(declare-fun e!4698974 () Bool)

(assert (=> start!751620 (=> (not res!3157494) (not e!4698974))))

(declare-datatypes ((Regex!21525 0))(
  ( (ElementMatch!21525 (c!1463522 C!43388)) (Concat!30524 (regOne!43562 Regex!21525) (regTwo!43562 Regex!21525)) (EmptyExpr!21525) (Star!21525 (reg!21854 Regex!21525)) (EmptyLang!21525) (Union!21525 (regOne!43563 Regex!21525) (regTwo!43563 Regex!21525)) )
))
(declare-fun baseR!116 () Regex!21525)

(declare-fun validRegex!11829 (Regex!21525) Bool)

(assert (=> start!751620 (= res!3157494 (validRegex!11829 baseR!116))))

(assert (=> start!751620 e!4698974))

(assert (=> start!751620 e!4698975))

(declare-fun e!4698977 () Bool)

(assert (=> start!751620 e!4698977))

(declare-fun e!4698980 () Bool)

(assert (=> start!751620 e!4698980))

(declare-fun e!4698972 () Bool)

(assert (=> start!751620 e!4698972))

(declare-fun b!7969295 () Bool)

(declare-fun tp!2375693 () Bool)

(assert (=> b!7969295 (= e!4698972 tp!2375693)))

(declare-fun b!7969296 () Bool)

(declare-fun tp_is_empty!53593 () Bool)

(declare-fun tp!2375684 () Bool)

(assert (=> b!7969296 (= e!4698977 (and tp_is_empty!53593 tp!2375684))))

(declare-fun b!7969297 () Bool)

(declare-fun res!3157499 () Bool)

(declare-fun e!4698976 () Bool)

(assert (=> b!7969297 (=> (not res!3157499) (not e!4698976))))

(assert (=> b!7969297 (= res!3157499 (not (= testedP!447 input!7927)))))

(declare-fun b!7969298 () Bool)

(declare-fun e!4698978 () Bool)

(declare-datatypes ((tuple2!70712 0))(
  ( (tuple2!70713 (_1!38659 List!74754) (_2!38659 List!74754)) )
))
(declare-fun lt!2707153 () tuple2!70712)

(declare-fun matchR!10748 (Regex!21525 List!74754) Bool)

(assert (=> b!7969298 (= e!4698978 (matchR!10748 baseR!116 (_1!38659 lt!2707153)))))

(declare-fun b!7969299 () Bool)

(assert (=> b!7969299 (= e!4698972 tp_is_empty!53593)))

(declare-fun b!7969300 () Bool)

(assert (=> b!7969300 (= e!4698974 e!4698976)))

(declare-fun res!3157495 () Bool)

(assert (=> b!7969300 (=> (not res!3157495) (not e!4698976))))

(declare-fun lt!2707150 () Int)

(declare-fun lt!2707158 () Int)

(declare-fun r!24602 () Regex!21525)

(declare-fun lt!2707151 () List!74754)

(declare-fun isEmpty!42931 (List!74754) Bool)

(declare-fun findLongestMatchInner!2306 (Regex!21525 List!74754 Int List!74754 List!74754 Int) tuple2!70712)

(assert (=> b!7969300 (= res!3157495 (not (isEmpty!42931 (_1!38659 (findLongestMatchInner!2306 r!24602 testedP!447 lt!2707158 lt!2707151 input!7927 lt!2707150)))))))

(declare-fun size!43461 (List!74754) Int)

(assert (=> b!7969300 (= lt!2707150 (size!43461 input!7927))))

(declare-fun getSuffix!3828 (List!74754 List!74754) List!74754)

(assert (=> b!7969300 (= lt!2707151 (getSuffix!3828 input!7927 testedP!447))))

(assert (=> b!7969300 (= lt!2707158 (size!43461 testedP!447))))

(declare-fun b!7969301 () Bool)

(declare-fun tp!2375690 () Bool)

(declare-fun tp!2375692 () Bool)

(assert (=> b!7969301 (= e!4698975 (and tp!2375690 tp!2375692))))

(declare-fun b!7969302 () Bool)

(declare-fun res!3157498 () Bool)

(assert (=> b!7969302 (=> (not res!3157498) (not e!4698974))))

(assert (=> b!7969302 (= res!3157498 (isPrefix!6625 testedP!447 input!7927))))

(declare-fun b!7969303 () Bool)

(declare-fun e!4698981 () Bool)

(declare-fun e!4698973 () Bool)

(assert (=> b!7969303 (= e!4698981 e!4698973)))

(declare-fun res!3157497 () Bool)

(assert (=> b!7969303 (=> res!3157497 e!4698973)))

(declare-fun nullable!9624 (Regex!21525) Bool)

(assert (=> b!7969303 (= res!3157497 (nullable!9624 r!24602))))

(declare-fun lt!2707155 () List!74754)

(assert (=> b!7969303 (isPrefix!6625 lt!2707155 input!7927)))

(declare-fun lt!2707147 () Unit!170256)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1352 (List!74754 List!74754) Unit!170256)

(assert (=> b!7969303 (= lt!2707147 (lemmaAddHeadSuffixToPrefixStillPrefix!1352 testedP!447 input!7927))))

(declare-fun lt!2707154 () C!43388)

(declare-fun ++!18395 (List!74754 List!74754) List!74754)

(assert (=> b!7969303 (= lt!2707155 (++!18395 testedP!447 (Cons!74630 lt!2707154 Nil!74630)))))

(declare-fun head!16277 (List!74754) C!43388)

(assert (=> b!7969303 (= lt!2707154 (head!16277 lt!2707151))))

(declare-fun b!7969304 () Bool)

(assert (=> b!7969304 (= e!4698975 tp_is_empty!53593)))

(declare-fun b!7969305 () Bool)

(declare-fun tp!2375683 () Bool)

(assert (=> b!7969305 (= e!4698980 (and tp_is_empty!53593 tp!2375683))))

(declare-fun b!7969306 () Bool)

(declare-fun res!3157500 () Bool)

(assert (=> b!7969306 (=> (not res!3157500) (not e!4698974))))

(declare-fun derivative!711 (Regex!21525 List!74754) Regex!21525)

(assert (=> b!7969306 (= res!3157500 (= (derivative!711 baseR!116 testedP!447) r!24602))))

(declare-fun b!7969307 () Bool)

(assert (=> b!7969307 (= e!4698976 (not e!4698981))))

(declare-fun res!3157496 () Bool)

(assert (=> b!7969307 (=> res!3157496 e!4698981)))

(assert (=> b!7969307 (= res!3157496 (>= lt!2707158 lt!2707150))))

(declare-fun lt!2707156 () Unit!170256)

(assert (=> b!7969307 (= lt!2707156 e!4698979)))

(declare-fun c!1463521 () Bool)

(assert (=> b!7969307 (= c!1463521 (= lt!2707158 lt!2707150))))

(assert (=> b!7969307 (<= lt!2707158 lt!2707150)))

(declare-fun lt!2707152 () Unit!170256)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1142 (List!74754 List!74754) Unit!170256)

(assert (=> b!7969307 (= lt!2707152 (lemmaIsPrefixThenSmallerEqSize!1142 testedP!447 input!7927))))

(declare-fun b!7969308 () Bool)

(declare-fun tp!2375688 () Bool)

(declare-fun tp!2375687 () Bool)

(assert (=> b!7969308 (= e!4698972 (and tp!2375688 tp!2375687))))

(declare-fun b!7969309 () Bool)

(declare-fun tp!2375685 () Bool)

(assert (=> b!7969309 (= e!4698975 tp!2375685)))

(declare-fun b!7969310 () Bool)

(declare-fun Unit!170259 () Unit!170256)

(assert (=> b!7969310 (= e!4698979 Unit!170259)))

(declare-fun b!7969311 () Bool)

(declare-fun tp!2375686 () Bool)

(declare-fun tp!2375694 () Bool)

(assert (=> b!7969311 (= e!4698972 (and tp!2375686 tp!2375694))))

(declare-fun b!7969312 () Bool)

(assert (=> b!7969312 (= e!4698973 true)))

(assert (=> b!7969312 e!4698978))

(declare-fun res!3157493 () Bool)

(assert (=> b!7969312 (=> res!3157493 e!4698978)))

(assert (=> b!7969312 (= res!3157493 (isEmpty!42931 (_1!38659 lt!2707153)))))

(declare-fun lt!2707146 () Regex!21525)

(assert (=> b!7969312 (= lt!2707153 (findLongestMatchInner!2306 lt!2707146 lt!2707155 (size!43461 lt!2707155) (getSuffix!3828 input!7927 lt!2707155) input!7927 lt!2707150))))

(declare-fun lt!2707159 () Unit!170256)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!59 (Regex!21525 Regex!21525 List!74754 List!74754) Unit!170256)

(assert (=> b!7969312 (= lt!2707159 (longestMatchIsAcceptedByMatchOrIsEmptyRec!59 baseR!116 lt!2707146 lt!2707155 input!7927))))

(declare-fun lt!2707157 () Regex!21525)

(assert (=> b!7969312 (= lt!2707157 lt!2707146)))

(declare-fun derivativeStep!6551 (Regex!21525 C!43388) Regex!21525)

(assert (=> b!7969312 (= lt!2707146 (derivativeStep!6551 r!24602 lt!2707154))))

(assert (=> b!7969312 (= lt!2707157 (derivative!711 baseR!116 lt!2707155))))

(declare-fun lt!2707145 () Unit!170256)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!233 (Regex!21525 Regex!21525 List!74754 C!43388) Unit!170256)

(assert (=> b!7969312 (= lt!2707145 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!233 baseR!116 r!24602 testedP!447 lt!2707154))))

(assert (= (and start!751620 res!3157494) b!7969302))

(assert (= (and b!7969302 res!3157498) b!7969306))

(assert (= (and b!7969306 res!3157500) b!7969300))

(assert (= (and b!7969300 res!3157495) b!7969297))

(assert (= (and b!7969297 res!3157499) b!7969307))

(assert (= (and b!7969307 c!1463521) b!7969293))

(assert (= (and b!7969307 (not c!1463521)) b!7969310))

(assert (= (and b!7969307 (not res!3157496)) b!7969303))

(assert (= (and b!7969303 (not res!3157497)) b!7969312))

(assert (= (and b!7969312 (not res!3157493)) b!7969298))

(get-info :version)

(assert (= (and start!751620 ((_ is ElementMatch!21525) baseR!116)) b!7969304))

(assert (= (and start!751620 ((_ is Concat!30524) baseR!116)) b!7969294))

(assert (= (and start!751620 ((_ is Star!21525) baseR!116)) b!7969309))

(assert (= (and start!751620 ((_ is Union!21525) baseR!116)) b!7969301))

(assert (= (and start!751620 ((_ is Cons!74630) testedP!447)) b!7969296))

(assert (= (and start!751620 ((_ is Cons!74630) input!7927)) b!7969305))

(assert (= (and start!751620 ((_ is ElementMatch!21525) r!24602)) b!7969299))

(assert (= (and start!751620 ((_ is Concat!30524) r!24602)) b!7969308))

(assert (= (and start!751620 ((_ is Star!21525) r!24602)) b!7969295))

(assert (= (and start!751620 ((_ is Union!21525) r!24602)) b!7969311))

(declare-fun m!8347894 () Bool)

(assert (=> b!7969306 m!8347894))

(declare-fun m!8347896 () Bool)

(assert (=> b!7969302 m!8347896))

(declare-fun m!8347898 () Bool)

(assert (=> b!7969307 m!8347898))

(declare-fun m!8347900 () Bool)

(assert (=> b!7969312 m!8347900))

(declare-fun m!8347902 () Bool)

(assert (=> b!7969312 m!8347902))

(declare-fun m!8347904 () Bool)

(assert (=> b!7969312 m!8347904))

(declare-fun m!8347906 () Bool)

(assert (=> b!7969312 m!8347906))

(declare-fun m!8347908 () Bool)

(assert (=> b!7969312 m!8347908))

(declare-fun m!8347910 () Bool)

(assert (=> b!7969312 m!8347910))

(assert (=> b!7969312 m!8347910))

(assert (=> b!7969312 m!8347906))

(declare-fun m!8347912 () Bool)

(assert (=> b!7969312 m!8347912))

(declare-fun m!8347914 () Bool)

(assert (=> b!7969312 m!8347914))

(declare-fun m!8347916 () Bool)

(assert (=> b!7969303 m!8347916))

(declare-fun m!8347918 () Bool)

(assert (=> b!7969303 m!8347918))

(declare-fun m!8347920 () Bool)

(assert (=> b!7969303 m!8347920))

(declare-fun m!8347922 () Bool)

(assert (=> b!7969303 m!8347922))

(declare-fun m!8347924 () Bool)

(assert (=> b!7969303 m!8347924))

(declare-fun m!8347926 () Bool)

(assert (=> b!7969298 m!8347926))

(declare-fun m!8347928 () Bool)

(assert (=> b!7969300 m!8347928))

(declare-fun m!8347930 () Bool)

(assert (=> b!7969300 m!8347930))

(declare-fun m!8347932 () Bool)

(assert (=> b!7969300 m!8347932))

(declare-fun m!8347934 () Bool)

(assert (=> b!7969300 m!8347934))

(declare-fun m!8347936 () Bool)

(assert (=> b!7969300 m!8347936))

(declare-fun m!8347938 () Bool)

(assert (=> b!7969293 m!8347938))

(declare-fun m!8347940 () Bool)

(assert (=> b!7969293 m!8347940))

(declare-fun m!8347942 () Bool)

(assert (=> b!7969293 m!8347942))

(declare-fun m!8347944 () Bool)

(assert (=> start!751620 m!8347944))

(check-sat (not b!7969305) tp_is_empty!53593 (not b!7969294) (not b!7969311) (not b!7969295) (not b!7969309) (not b!7969302) (not b!7969312) (not b!7969307) (not b!7969296) (not b!7969300) (not b!7969303) (not b!7969298) (not b!7969293) (not b!7969301) (not start!751620) (not b!7969306) (not b!7969308))
(check-sat)
