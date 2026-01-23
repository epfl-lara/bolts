; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754012 () Bool)

(assert start!754012)

(declare-fun b!8012600 () Bool)

(declare-fun e!4720021 () Bool)

(declare-fun tp_is_empty!53901 () Bool)

(declare-fun tp!2398163 () Bool)

(assert (=> b!8012600 (= e!4720021 (and tp_is_empty!53901 tp!2398163))))

(declare-fun res!3168329 () Bool)

(declare-fun e!4720030 () Bool)

(assert (=> start!754012 (=> (not res!3168329) (not e!4720030))))

(declare-datatypes ((C!43696 0))(
  ( (C!43697 (val!32396 Int)) )
))
(declare-datatypes ((Regex!21679 0))(
  ( (ElementMatch!21679 (c!1470624 C!43696)) (Concat!30678 (regOne!43870 Regex!21679) (regTwo!43870 Regex!21679)) (EmptyExpr!21679) (Star!21679 (reg!22008 Regex!21679)) (EmptyLang!21679) (Union!21679 (regOne!43871 Regex!21679) (regTwo!43871 Regex!21679)) )
))
(declare-fun r!15422 () Regex!21679)

(declare-fun validRegex!11983 (Regex!21679) Bool)

(assert (=> start!754012 (= res!3168329 (validRegex!11983 r!15422))))

(assert (=> start!754012 e!4720030))

(declare-fun e!4720026 () Bool)

(assert (=> start!754012 e!4720026))

(assert (=> start!754012 true))

(assert (=> start!754012 e!4720021))

(declare-fun e!4720029 () Bool)

(assert (=> start!754012 e!4720029))

(declare-fun e!4720031 () Bool)

(assert (=> start!754012 e!4720031))

(declare-fun b!8012601 () Bool)

(declare-fun e!4720028 () Bool)

(declare-fun e!4720025 () Bool)

(assert (=> b!8012601 (= e!4720028 (not e!4720025))))

(declare-fun res!3168333 () Bool)

(assert (=> b!8012601 (=> res!3168333 e!4720025)))

(declare-datatypes ((List!74908 0))(
  ( (Nil!74784) (Cons!74784 (h!81232 C!43696) (t!390651 List!74908)) )
))
(declare-fun testedP!353 () List!74908)

(declare-fun totalInput!1349 () List!74908)

(declare-fun isPrefix!6731 (List!74908 List!74908) Bool)

(assert (=> b!8012601 (= res!3168333 (not (isPrefix!6731 testedP!353 totalInput!1349)))))

(declare-fun lt!2717308 () List!74908)

(assert (=> b!8012601 (isPrefix!6731 testedP!353 lt!2717308)))

(declare-datatypes ((Unit!170824 0))(
  ( (Unit!170825) )
))
(declare-fun lt!2717311 () Unit!170824)

(declare-fun testedSuffix!271 () List!74908)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3962 (List!74908 List!74908) Unit!170824)

(assert (=> b!8012601 (= lt!2717311 (lemmaConcatTwoListThenFirstIsPrefix!3962 testedP!353 testedSuffix!271))))

(declare-fun b!8012602 () Bool)

(declare-fun e!4720023 () Bool)

(assert (=> b!8012602 (= e!4720025 e!4720023)))

(declare-fun res!3168330 () Bool)

(assert (=> b!8012602 (=> res!3168330 e!4720023)))

(declare-fun lostCause!2066 (Regex!21679) Bool)

(assert (=> b!8012602 (= res!3168330 (lostCause!2066 r!15422))))

(declare-fun lt!2717305 () List!74908)

(assert (=> b!8012602 (and (= testedSuffix!271 lt!2717305) (= lt!2717305 testedSuffix!271))))

(declare-fun lt!2717312 () Unit!170824)

(declare-fun lemmaSamePrefixThenSameSuffix!3088 (List!74908 List!74908 List!74908 List!74908 List!74908) Unit!170824)

(assert (=> b!8012602 (= lt!2717312 (lemmaSamePrefixThenSameSuffix!3088 testedP!353 testedSuffix!271 testedP!353 lt!2717305 totalInput!1349))))

(declare-fun getSuffix!3926 (List!74908 List!74908) List!74908)

(assert (=> b!8012602 (= lt!2717305 (getSuffix!3926 totalInput!1349 testedP!353))))

(declare-fun b!8012603 () Bool)

(declare-fun tp!2398166 () Bool)

(declare-fun tp!2398164 () Bool)

(assert (=> b!8012603 (= e!4720029 (and tp!2398166 tp!2398164))))

(declare-fun b!8012604 () Bool)

(declare-fun e!4720024 () Bool)

(assert (=> b!8012604 (= e!4720023 e!4720024)))

(declare-fun res!3168334 () Bool)

(assert (=> b!8012604 (=> res!3168334 e!4720024)))

(declare-fun lt!2717309 () Int)

(declare-fun lt!2717307 () Int)

(assert (=> b!8012604 (= res!3168334 (not (= lt!2717309 lt!2717307)))))

(assert (=> b!8012604 (<= lt!2717309 lt!2717307)))

(declare-fun lt!2717313 () Unit!170824)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1214 (List!74908 List!74908) Unit!170824)

(assert (=> b!8012604 (= lt!2717313 (lemmaIsPrefixThenSmallerEqSize!1214 testedP!353 totalInput!1349))))

(declare-fun b!8012605 () Bool)

(declare-fun tp!2398165 () Bool)

(assert (=> b!8012605 (= e!4720029 tp!2398165)))

(declare-fun b!8012606 () Bool)

(declare-fun e!4720027 () Bool)

(declare-fun e!4720022 () Bool)

(assert (=> b!8012606 (= e!4720027 e!4720022)))

(declare-fun res!3168332 () Bool)

(assert (=> b!8012606 (=> (not res!3168332) (not e!4720022))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8012606 (= res!3168332 (= testedPSize!271 lt!2717309))))

(declare-fun size!43581 (List!74908) Int)

(assert (=> b!8012606 (= lt!2717309 (size!43581 testedP!353))))

(declare-fun b!8012607 () Bool)

(declare-fun tp!2398167 () Bool)

(assert (=> b!8012607 (= e!4720031 (and tp_is_empty!53901 tp!2398167))))

(declare-fun b!8012608 () Bool)

(declare-fun tp!2398170 () Bool)

(declare-fun tp!2398169 () Bool)

(assert (=> b!8012608 (= e!4720029 (and tp!2398170 tp!2398169))))

(declare-fun b!8012609 () Bool)

(assert (=> b!8012609 (= e!4720022 e!4720028)))

(declare-fun res!3168328 () Bool)

(assert (=> b!8012609 (=> (not res!3168328) (not e!4720028))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8012609 (= res!3168328 (= totalInputSize!629 lt!2717307))))

(assert (=> b!8012609 (= lt!2717307 (size!43581 totalInput!1349))))

(declare-fun b!8012610 () Bool)

(assert (=> b!8012610 (= e!4720030 e!4720027)))

(declare-fun res!3168331 () Bool)

(assert (=> b!8012610 (=> (not res!3168331) (not e!4720027))))

(assert (=> b!8012610 (= res!3168331 (= lt!2717308 totalInput!1349))))

(declare-fun ++!18505 (List!74908 List!74908) List!74908)

(assert (=> b!8012610 (= lt!2717308 (++!18505 testedP!353 testedSuffix!271))))

(declare-fun b!8012611 () Bool)

(assert (=> b!8012611 (= e!4720029 tp_is_empty!53901)))

(declare-fun b!8012612 () Bool)

(declare-fun res!3168327 () Bool)

(assert (=> b!8012612 (=> res!3168327 e!4720023)))

(assert (=> b!8012612 (= res!3168327 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8012613 () Bool)

(declare-fun tp!2398168 () Bool)

(assert (=> b!8012613 (= e!4720026 (and tp_is_empty!53901 tp!2398168))))

(declare-fun b!8012614 () Bool)

(assert (=> b!8012614 (= e!4720024 false)))

(assert (=> b!8012614 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717310 () Unit!170824)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1743 (List!74908 List!74908 List!74908) Unit!170824)

(assert (=> b!8012614 (= lt!2717310 (lemmaIsPrefixSameLengthThenSameList!1743 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8012614 (isPrefix!6731 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717306 () Unit!170824)

(declare-fun lemmaIsPrefixRefl!4173 (List!74908 List!74908) Unit!170824)

(assert (=> b!8012614 (= lt!2717306 (lemmaIsPrefixRefl!4173 totalInput!1349 totalInput!1349))))

(assert (= (and start!754012 res!3168329) b!8012610))

(assert (= (and b!8012610 res!3168331) b!8012606))

(assert (= (and b!8012606 res!3168332) b!8012609))

(assert (= (and b!8012609 res!3168328) b!8012601))

(assert (= (and b!8012601 (not res!3168333)) b!8012602))

(assert (= (and b!8012602 (not res!3168330)) b!8012612))

(assert (= (and b!8012612 (not res!3168327)) b!8012604))

(assert (= (and b!8012604 (not res!3168334)) b!8012614))

(get-info :version)

(assert (= (and start!754012 ((_ is Cons!74784) totalInput!1349)) b!8012613))

(assert (= (and start!754012 ((_ is Cons!74784) testedSuffix!271)) b!8012600))

(assert (= (and start!754012 ((_ is ElementMatch!21679) r!15422)) b!8012611))

(assert (= (and start!754012 ((_ is Concat!30678) r!15422)) b!8012608))

(assert (= (and start!754012 ((_ is Star!21679) r!15422)) b!8012605))

(assert (= (and start!754012 ((_ is Union!21679) r!15422)) b!8012603))

(assert (= (and start!754012 ((_ is Cons!74784) testedP!353)) b!8012607))

(declare-fun m!8376054 () Bool)

(assert (=> b!8012610 m!8376054))

(declare-fun m!8376056 () Bool)

(assert (=> b!8012609 m!8376056))

(declare-fun m!8376058 () Bool)

(assert (=> b!8012601 m!8376058))

(declare-fun m!8376060 () Bool)

(assert (=> b!8012601 m!8376060))

(declare-fun m!8376062 () Bool)

(assert (=> b!8012601 m!8376062))

(declare-fun m!8376064 () Bool)

(assert (=> b!8012606 m!8376064))

(declare-fun m!8376066 () Bool)

(assert (=> start!754012 m!8376066))

(declare-fun m!8376068 () Bool)

(assert (=> b!8012614 m!8376068))

(declare-fun m!8376070 () Bool)

(assert (=> b!8012614 m!8376070))

(declare-fun m!8376072 () Bool)

(assert (=> b!8012614 m!8376072))

(declare-fun m!8376074 () Bool)

(assert (=> b!8012604 m!8376074))

(declare-fun m!8376076 () Bool)

(assert (=> b!8012602 m!8376076))

(declare-fun m!8376078 () Bool)

(assert (=> b!8012602 m!8376078))

(declare-fun m!8376080 () Bool)

(assert (=> b!8012602 m!8376080))

(check-sat (not b!8012609) (not b!8012614) (not b!8012607) (not b!8012613) (not b!8012608) (not start!754012) (not b!8012600) (not b!8012606) (not b!8012605) (not b!8012603) (not b!8012610) (not b!8012601) (not b!8012602) (not b!8012604) tp_is_empty!53901)
(check-sat)
