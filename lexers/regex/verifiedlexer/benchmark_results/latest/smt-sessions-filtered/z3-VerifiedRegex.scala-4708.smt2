; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243980 () Bool)

(assert start!243980)

(declare-fun b!2498676 () Bool)

(declare-fun e!1585155 () Bool)

(declare-fun tp_is_empty!12637 () Bool)

(declare-fun tp!800022 () Bool)

(assert (=> b!2498676 (= e!1585155 (and tp_is_empty!12637 tp!800022))))

(declare-fun b!2498677 () Bool)

(declare-fun res!1056781 () Bool)

(declare-fun e!1585156 () Bool)

(assert (=> b!2498677 (=> (not res!1056781) (not e!1585156))))

(declare-datatypes ((C!14940 0))(
  ( (C!14941 (val!9122 Int)) )
))
(declare-datatypes ((Regex!7391 0))(
  ( (ElementMatch!7391 (c!397461 C!14940)) (Concat!12087 (regOne!15294 Regex!7391) (regTwo!15294 Regex!7391)) (EmptyExpr!7391) (Star!7391 (reg!7720 Regex!7391)) (EmptyLang!7391) (Union!7391 (regOne!15295 Regex!7391) (regTwo!15295 Regex!7391)) )
))
(declare-fun r!27340 () Regex!7391)

(get-info :version)

(assert (=> b!2498677 (= res!1056781 (and (not ((_ is EmptyExpr!7391) r!27340)) (not ((_ is EmptyLang!7391) r!27340)) (not ((_ is ElementMatch!7391) r!27340)) (not ((_ is Union!7391) r!27340)) ((_ is Star!7391) r!27340)))))

(declare-fun res!1056782 () Bool)

(declare-fun e!1585150 () Bool)

(assert (=> start!243980 (=> (not res!1056782) (not e!1585150))))

(declare-fun validRegex!3017 (Regex!7391) Bool)

(assert (=> start!243980 (= res!1056782 (validRegex!3017 r!27340))))

(assert (=> start!243980 e!1585150))

(declare-fun e!1585153 () Bool)

(assert (=> start!243980 e!1585153))

(assert (=> start!243980 tp_is_empty!12637))

(assert (=> start!243980 e!1585155))

(declare-fun b!2498678 () Bool)

(declare-fun res!1056774 () Bool)

(declare-fun e!1585154 () Bool)

(assert (=> b!2498678 (=> res!1056774 e!1585154)))

(declare-fun lt!895317 () Regex!7391)

(declare-datatypes ((List!29456 0))(
  ( (Nil!29356) (Cons!29356 (h!34776 C!14940) (t!211155 List!29456)) )
))
(declare-datatypes ((tuple2!29400 0))(
  ( (tuple2!29401 (_1!17242 List!29456) (_2!17242 List!29456)) )
))
(declare-fun lt!895324 () tuple2!29400)

(declare-fun matchR!3400 (Regex!7391 List!29456) Bool)

(assert (=> b!2498678 (= res!1056774 (not (matchR!3400 lt!895317 (_1!17242 lt!895324))))))

(declare-fun b!2498679 () Bool)

(declare-fun e!1585151 () Bool)

(declare-fun e!1585152 () Bool)

(assert (=> b!2498679 (= e!1585151 (not e!1585152))))

(declare-fun res!1056777 () Bool)

(assert (=> b!2498679 (=> res!1056777 e!1585152)))

(declare-fun lt!895316 () Bool)

(assert (=> b!2498679 (= res!1056777 (not lt!895316))))

(declare-fun lt!895323 () Regex!7391)

(assert (=> b!2498679 (= lt!895316 (matchR!3400 lt!895323 Nil!29356))))

(declare-fun lt!895320 () Regex!7391)

(declare-fun tl!4068 () List!29456)

(assert (=> b!2498679 (= lt!895316 (matchR!3400 lt!895320 tl!4068))))

(declare-datatypes ((Unit!43051 0))(
  ( (Unit!43052) )
))
(declare-fun lt!895319 () Unit!43051)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!46 (Regex!7391 List!29456) Unit!43051)

(assert (=> b!2498679 (= lt!895319 (lemmaMatchRIsSameAsWholeDerivativeAndNil!46 lt!895320 tl!4068))))

(declare-fun b!2498680 () Bool)

(assert (=> b!2498680 (= e!1585156 e!1585151)))

(declare-fun res!1056779 () Bool)

(assert (=> b!2498680 (=> (not res!1056779) (not e!1585151))))

(declare-fun lt!895318 () Regex!7391)

(assert (=> b!2498680 (= res!1056779 (= lt!895320 (Concat!12087 lt!895317 lt!895318)))))

(assert (=> b!2498680 (= lt!895318 (Star!7391 (reg!7720 r!27340)))))

(declare-fun c!14016 () C!14940)

(declare-fun derivativeStep!1960 (Regex!7391 C!14940) Regex!7391)

(assert (=> b!2498680 (= lt!895317 (derivativeStep!1960 (reg!7720 r!27340) c!14016))))

(declare-fun b!2498681 () Bool)

(declare-fun tp!800017 () Bool)

(declare-fun tp!800018 () Bool)

(assert (=> b!2498681 (= e!1585153 (and tp!800017 tp!800018))))

(declare-fun b!2498682 () Bool)

(declare-fun tp!800020 () Bool)

(assert (=> b!2498682 (= e!1585153 tp!800020)))

(declare-fun b!2498683 () Bool)

(declare-fun res!1056773 () Bool)

(assert (=> b!2498683 (=> res!1056773 e!1585154)))

(assert (=> b!2498683 (= res!1056773 (not (matchR!3400 (reg!7720 r!27340) (Cons!29356 c!14016 (_1!17242 lt!895324)))))))

(declare-fun b!2498684 () Bool)

(assert (=> b!2498684 (= e!1585153 tp_is_empty!12637)))

(declare-fun b!2498685 () Bool)

(declare-fun res!1056778 () Bool)

(assert (=> b!2498685 (=> res!1056778 e!1585154)))

(assert (=> b!2498685 (= res!1056778 (not (matchR!3400 lt!895318 (_2!17242 lt!895324))))))

(declare-fun b!2498686 () Bool)

(assert (=> b!2498686 (= e!1585150 e!1585156)))

(declare-fun res!1056776 () Bool)

(assert (=> b!2498686 (=> (not res!1056776) (not e!1585156))))

(declare-fun nullable!2308 (Regex!7391) Bool)

(assert (=> b!2498686 (= res!1056776 (nullable!2308 lt!895323))))

(declare-fun derivative!86 (Regex!7391 List!29456) Regex!7391)

(assert (=> b!2498686 (= lt!895323 (derivative!86 lt!895320 tl!4068))))

(assert (=> b!2498686 (= lt!895320 (derivativeStep!1960 r!27340 c!14016))))

(declare-fun b!2498687 () Bool)

(declare-fun res!1056780 () Bool)

(assert (=> b!2498687 (=> (not res!1056780) (not e!1585151))))

(assert (=> b!2498687 (= res!1056780 (not (nullable!2308 (derivative!86 lt!895317 tl!4068))))))

(declare-fun b!2498688 () Bool)

(declare-fun tp!800021 () Bool)

(declare-fun tp!800019 () Bool)

(assert (=> b!2498688 (= e!1585153 (and tp!800021 tp!800019))))

(declare-fun b!2498689 () Bool)

(assert (=> b!2498689 (= e!1585152 e!1585154)))

(declare-fun res!1056775 () Bool)

(assert (=> b!2498689 (=> res!1056775 e!1585154)))

(declare-fun ++!7173 (List!29456 List!29456) List!29456)

(assert (=> b!2498689 (= res!1056775 (not (= (++!7173 (_1!17242 lt!895324) (_2!17242 lt!895324)) tl!4068)))))

(declare-datatypes ((Option!5820 0))(
  ( (None!5819) (Some!5819 (v!31750 tuple2!29400)) )
))
(declare-fun lt!895322 () Option!5820)

(declare-fun get!9098 (Option!5820) tuple2!29400)

(assert (=> b!2498689 (= lt!895324 (get!9098 lt!895322))))

(declare-fun isDefined!4642 (Option!5820) Bool)

(assert (=> b!2498689 (isDefined!4642 lt!895322)))

(declare-fun findConcatSeparation!842 (Regex!7391 Regex!7391 List!29456 List!29456 List!29456) Option!5820)

(assert (=> b!2498689 (= lt!895322 (findConcatSeparation!842 lt!895317 lt!895318 Nil!29356 tl!4068 tl!4068))))

(declare-fun lt!895321 () Unit!43051)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!124 (Regex!7391 Regex!7391 List!29456) Unit!43051)

(assert (=> b!2498689 (= lt!895321 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!124 lt!895317 lt!895318 tl!4068))))

(declare-fun b!2498690 () Bool)

(assert (=> b!2498690 (= e!1585154 true)))

(assert (= (and start!243980 res!1056782) b!2498686))

(assert (= (and b!2498686 res!1056776) b!2498677))

(assert (= (and b!2498677 res!1056781) b!2498680))

(assert (= (and b!2498680 res!1056779) b!2498687))

(assert (= (and b!2498687 res!1056780) b!2498679))

(assert (= (and b!2498679 (not res!1056777)) b!2498689))

(assert (= (and b!2498689 (not res!1056775)) b!2498685))

(assert (= (and b!2498685 (not res!1056778)) b!2498683))

(assert (= (and b!2498683 (not res!1056773)) b!2498678))

(assert (= (and b!2498678 (not res!1056774)) b!2498690))

(assert (= (and start!243980 ((_ is ElementMatch!7391) r!27340)) b!2498684))

(assert (= (and start!243980 ((_ is Concat!12087) r!27340)) b!2498681))

(assert (= (and start!243980 ((_ is Star!7391) r!27340)) b!2498682))

(assert (= (and start!243980 ((_ is Union!7391) r!27340)) b!2498688))

(assert (= (and start!243980 ((_ is Cons!29356) tl!4068)) b!2498676))

(declare-fun m!2862265 () Bool)

(assert (=> b!2498679 m!2862265))

(declare-fun m!2862267 () Bool)

(assert (=> b!2498679 m!2862267))

(declare-fun m!2862269 () Bool)

(assert (=> b!2498679 m!2862269))

(declare-fun m!2862271 () Bool)

(assert (=> b!2498680 m!2862271))

(declare-fun m!2862273 () Bool)

(assert (=> b!2498687 m!2862273))

(assert (=> b!2498687 m!2862273))

(declare-fun m!2862275 () Bool)

(assert (=> b!2498687 m!2862275))

(declare-fun m!2862277 () Bool)

(assert (=> b!2498689 m!2862277))

(declare-fun m!2862279 () Bool)

(assert (=> b!2498689 m!2862279))

(declare-fun m!2862281 () Bool)

(assert (=> b!2498689 m!2862281))

(declare-fun m!2862283 () Bool)

(assert (=> b!2498689 m!2862283))

(declare-fun m!2862285 () Bool)

(assert (=> b!2498689 m!2862285))

(declare-fun m!2862287 () Bool)

(assert (=> b!2498678 m!2862287))

(declare-fun m!2862289 () Bool)

(assert (=> b!2498686 m!2862289))

(declare-fun m!2862291 () Bool)

(assert (=> b!2498686 m!2862291))

(declare-fun m!2862293 () Bool)

(assert (=> b!2498686 m!2862293))

(declare-fun m!2862295 () Bool)

(assert (=> b!2498685 m!2862295))

(declare-fun m!2862297 () Bool)

(assert (=> b!2498683 m!2862297))

(declare-fun m!2862299 () Bool)

(assert (=> start!243980 m!2862299))

(check-sat (not start!243980) (not b!2498685) (not b!2498682) (not b!2498687) tp_is_empty!12637 (not b!2498676) (not b!2498681) (not b!2498683) (not b!2498688) (not b!2498678) (not b!2498689) (not b!2498680) (not b!2498686) (not b!2498679))
(check-sat)
