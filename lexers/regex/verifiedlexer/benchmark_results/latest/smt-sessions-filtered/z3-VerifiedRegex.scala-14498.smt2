; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754008 () Bool)

(assert start!754008)

(declare-fun b!8012510 () Bool)

(declare-fun e!4719956 () Bool)

(declare-fun tp!2398120 () Bool)

(assert (=> b!8012510 (= e!4719956 tp!2398120)))

(declare-fun b!8012511 () Bool)

(declare-fun e!4719957 () Bool)

(declare-fun e!4719958 () Bool)

(assert (=> b!8012511 (= e!4719957 e!4719958)))

(declare-fun res!3168279 () Bool)

(assert (=> b!8012511 (=> (not res!3168279) (not e!4719958))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2717252 () Int)

(assert (=> b!8012511 (= res!3168279 (= testedPSize!271 lt!2717252))))

(declare-datatypes ((C!43692 0))(
  ( (C!43693 (val!32394 Int)) )
))
(declare-datatypes ((List!74906 0))(
  ( (Nil!74782) (Cons!74782 (h!81230 C!43692) (t!390649 List!74906)) )
))
(declare-fun testedP!353 () List!74906)

(declare-fun size!43579 (List!74906) Int)

(assert (=> b!8012511 (= lt!2717252 (size!43579 testedP!353))))

(declare-fun b!8012512 () Bool)

(declare-fun e!4719965 () Bool)

(assert (=> b!8012512 (= e!4719958 e!4719965)))

(declare-fun res!3168281 () Bool)

(assert (=> b!8012512 (=> (not res!3168281) (not e!4719965))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2717257 () Int)

(assert (=> b!8012512 (= res!3168281 (= totalInputSize!629 lt!2717257))))

(declare-fun totalInput!1349 () List!74906)

(assert (=> b!8012512 (= lt!2717257 (size!43579 totalInput!1349))))

(declare-fun b!8012513 () Bool)

(declare-fun e!4719964 () Bool)

(assert (=> b!8012513 (= e!4719965 (not e!4719964))))

(declare-fun res!3168285 () Bool)

(assert (=> b!8012513 (=> res!3168285 e!4719964)))

(declare-fun isPrefix!6729 (List!74906 List!74906) Bool)

(assert (=> b!8012513 (= res!3168285 (not (isPrefix!6729 testedP!353 totalInput!1349)))))

(declare-fun lt!2717256 () List!74906)

(assert (=> b!8012513 (isPrefix!6729 testedP!353 lt!2717256)))

(declare-datatypes ((Unit!170820 0))(
  ( (Unit!170821) )
))
(declare-fun lt!2717254 () Unit!170820)

(declare-fun testedSuffix!271 () List!74906)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3960 (List!74906 List!74906) Unit!170820)

(assert (=> b!8012513 (= lt!2717254 (lemmaConcatTwoListThenFirstIsPrefix!3960 testedP!353 testedSuffix!271))))

(declare-fun b!8012514 () Bool)

(declare-fun e!4719963 () Bool)

(declare-fun tp_is_empty!53897 () Bool)

(declare-fun tp!2398116 () Bool)

(assert (=> b!8012514 (= e!4719963 (and tp_is_empty!53897 tp!2398116))))

(declare-fun b!8012515 () Bool)

(declare-fun e!4719962 () Bool)

(declare-fun tp!2398119 () Bool)

(assert (=> b!8012515 (= e!4719962 (and tp_is_empty!53897 tp!2398119))))

(declare-fun b!8012516 () Bool)

(declare-fun tp!2398118 () Bool)

(declare-fun tp!2398115 () Bool)

(assert (=> b!8012516 (= e!4719956 (and tp!2398118 tp!2398115))))

(declare-fun res!3168283 () Bool)

(declare-fun e!4719961 () Bool)

(assert (=> start!754008 (=> (not res!3168283) (not e!4719961))))

(declare-datatypes ((Regex!21677 0))(
  ( (ElementMatch!21677 (c!1470622 C!43692)) (Concat!30676 (regOne!43866 Regex!21677) (regTwo!43866 Regex!21677)) (EmptyExpr!21677) (Star!21677 (reg!22006 Regex!21677)) (EmptyLang!21677) (Union!21677 (regOne!43867 Regex!21677) (regTwo!43867 Regex!21677)) )
))
(declare-fun r!15422 () Regex!21677)

(declare-fun validRegex!11981 (Regex!21677) Bool)

(assert (=> start!754008 (= res!3168283 (validRegex!11981 r!15422))))

(assert (=> start!754008 e!4719961))

(declare-fun e!4719955 () Bool)

(assert (=> start!754008 e!4719955))

(assert (=> start!754008 true))

(assert (=> start!754008 e!4719962))

(assert (=> start!754008 e!4719956))

(assert (=> start!754008 e!4719963))

(declare-fun b!8012517 () Bool)

(declare-fun e!4719959 () Bool)

(assert (=> b!8012517 (= e!4719959 (= lt!2717257 lt!2717252))))

(assert (=> b!8012517 (isPrefix!6729 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717259 () Unit!170820)

(declare-fun lemmaIsPrefixRefl!4171 (List!74906 List!74906) Unit!170820)

(assert (=> b!8012517 (= lt!2717259 (lemmaIsPrefixRefl!4171 totalInput!1349 totalInput!1349))))

(declare-fun b!8012518 () Bool)

(declare-fun tp!2398117 () Bool)

(assert (=> b!8012518 (= e!4719955 (and tp_is_empty!53897 tp!2398117))))

(declare-fun b!8012519 () Bool)

(assert (=> b!8012519 (= e!4719956 tp_is_empty!53897)))

(declare-fun b!8012520 () Bool)

(assert (=> b!8012520 (= e!4719961 e!4719957)))

(declare-fun res!3168280 () Bool)

(assert (=> b!8012520 (=> (not res!3168280) (not e!4719957))))

(assert (=> b!8012520 (= res!3168280 (= lt!2717256 totalInput!1349))))

(declare-fun ++!18503 (List!74906 List!74906) List!74906)

(assert (=> b!8012520 (= lt!2717256 (++!18503 testedP!353 testedSuffix!271))))

(declare-fun b!8012521 () Bool)

(declare-fun e!4719960 () Bool)

(assert (=> b!8012521 (= e!4719960 e!4719959)))

(declare-fun res!3168286 () Bool)

(assert (=> b!8012521 (=> res!3168286 e!4719959)))

(assert (=> b!8012521 (= res!3168286 (not (= lt!2717252 lt!2717257)))))

(assert (=> b!8012521 (<= lt!2717252 lt!2717257)))

(declare-fun lt!2717258 () Unit!170820)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1212 (List!74906 List!74906) Unit!170820)

(assert (=> b!8012521 (= lt!2717258 (lemmaIsPrefixThenSmallerEqSize!1212 testedP!353 totalInput!1349))))

(declare-fun b!8012522 () Bool)

(declare-fun res!3168282 () Bool)

(assert (=> b!8012522 (=> res!3168282 e!4719960)))

(assert (=> b!8012522 (= res!3168282 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8012523 () Bool)

(declare-fun tp!2398122 () Bool)

(declare-fun tp!2398121 () Bool)

(assert (=> b!8012523 (= e!4719956 (and tp!2398122 tp!2398121))))

(declare-fun b!8012524 () Bool)

(assert (=> b!8012524 (= e!4719964 e!4719960)))

(declare-fun res!3168284 () Bool)

(assert (=> b!8012524 (=> res!3168284 e!4719960)))

(declare-fun lostCause!2064 (Regex!21677) Bool)

(assert (=> b!8012524 (= res!3168284 (lostCause!2064 r!15422))))

(declare-fun lt!2717253 () List!74906)

(assert (=> b!8012524 (and (= testedSuffix!271 lt!2717253) (= lt!2717253 testedSuffix!271))))

(declare-fun lt!2717255 () Unit!170820)

(declare-fun lemmaSamePrefixThenSameSuffix!3086 (List!74906 List!74906 List!74906 List!74906 List!74906) Unit!170820)

(assert (=> b!8012524 (= lt!2717255 (lemmaSamePrefixThenSameSuffix!3086 testedP!353 testedSuffix!271 testedP!353 lt!2717253 totalInput!1349))))

(declare-fun getSuffix!3924 (List!74906 List!74906) List!74906)

(assert (=> b!8012524 (= lt!2717253 (getSuffix!3924 totalInput!1349 testedP!353))))

(assert (= (and start!754008 res!3168283) b!8012520))

(assert (= (and b!8012520 res!3168280) b!8012511))

(assert (= (and b!8012511 res!3168279) b!8012512))

(assert (= (and b!8012512 res!3168281) b!8012513))

(assert (= (and b!8012513 (not res!3168285)) b!8012524))

(assert (= (and b!8012524 (not res!3168284)) b!8012522))

(assert (= (and b!8012522 (not res!3168282)) b!8012521))

(assert (= (and b!8012521 (not res!3168286)) b!8012517))

(get-info :version)

(assert (= (and start!754008 ((_ is Cons!74782) totalInput!1349)) b!8012518))

(assert (= (and start!754008 ((_ is Cons!74782) testedSuffix!271)) b!8012515))

(assert (= (and start!754008 ((_ is ElementMatch!21677) r!15422)) b!8012519))

(assert (= (and start!754008 ((_ is Concat!30676) r!15422)) b!8012516))

(assert (= (and start!754008 ((_ is Star!21677) r!15422)) b!8012510))

(assert (= (and start!754008 ((_ is Union!21677) r!15422)) b!8012523))

(assert (= (and start!754008 ((_ is Cons!74782) testedP!353)) b!8012514))

(declare-fun m!8376000 () Bool)

(assert (=> b!8012521 m!8376000))

(declare-fun m!8376002 () Bool)

(assert (=> b!8012524 m!8376002))

(declare-fun m!8376004 () Bool)

(assert (=> b!8012524 m!8376004))

(declare-fun m!8376006 () Bool)

(assert (=> b!8012524 m!8376006))

(declare-fun m!8376008 () Bool)

(assert (=> b!8012512 m!8376008))

(declare-fun m!8376010 () Bool)

(assert (=> b!8012513 m!8376010))

(declare-fun m!8376012 () Bool)

(assert (=> b!8012513 m!8376012))

(declare-fun m!8376014 () Bool)

(assert (=> b!8012513 m!8376014))

(declare-fun m!8376016 () Bool)

(assert (=> b!8012520 m!8376016))

(declare-fun m!8376018 () Bool)

(assert (=> b!8012511 m!8376018))

(declare-fun m!8376020 () Bool)

(assert (=> b!8012517 m!8376020))

(declare-fun m!8376022 () Bool)

(assert (=> b!8012517 m!8376022))

(declare-fun m!8376024 () Bool)

(assert (=> start!754008 m!8376024))

(check-sat (not b!8012515) (not b!8012520) (not b!8012516) tp_is_empty!53897 (not b!8012511) (not b!8012524) (not b!8012514) (not b!8012512) (not b!8012518) (not b!8012521) (not b!8012523) (not b!8012513) (not b!8012510) (not b!8012517) (not start!754008))
(check-sat)
