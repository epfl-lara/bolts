; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751424 () Bool)

(assert start!751424)

(declare-fun b!7967013 () Bool)

(declare-fun res!3156911 () Bool)

(declare-fun e!4697871 () Bool)

(assert (=> b!7967013 (=> (not res!3156911) (not e!4697871))))

(declare-datatypes ((C!43368 0))(
  ( (C!43369 (val!32232 Int)) )
))
(declare-datatypes ((List!74744 0))(
  ( (Nil!74620) (Cons!74620 (h!81068 C!43368) (t!390487 List!74744)) )
))
(declare-fun testedP!447 () List!74744)

(declare-fun input!7927 () List!74744)

(declare-fun isPrefix!6615 (List!74744 List!74744) Bool)

(assert (=> b!7967013 (= res!3156911 (isPrefix!6615 testedP!447 input!7927))))

(declare-fun b!7967014 () Bool)

(declare-datatypes ((Unit!170198 0))(
  ( (Unit!170199) )
))
(declare-fun e!4697865 () Unit!170198)

(declare-fun Unit!170200 () Unit!170198)

(assert (=> b!7967014 (= e!4697865 Unit!170200)))

(declare-fun b!7967015 () Bool)

(declare-fun e!4697867 () Bool)

(declare-fun tp_is_empty!53573 () Bool)

(assert (=> b!7967015 (= e!4697867 tp_is_empty!53573)))

(declare-fun b!7967016 () Bool)

(declare-fun e!4697866 () Bool)

(declare-fun e!4697870 () Bool)

(assert (=> b!7967016 (= e!4697866 (not e!4697870))))

(declare-fun res!3156912 () Bool)

(assert (=> b!7967016 (=> res!3156912 e!4697870)))

(declare-fun lt!2706166 () Int)

(declare-fun lt!2706165 () Int)

(assert (=> b!7967016 (= res!3156912 (>= lt!2706166 lt!2706165))))

(declare-fun lt!2706161 () Unit!170198)

(assert (=> b!7967016 (= lt!2706161 e!4697865)))

(declare-fun c!1463121 () Bool)

(assert (=> b!7967016 (= c!1463121 (= lt!2706166 lt!2706165))))

(assert (=> b!7967016 (<= lt!2706166 lt!2706165)))

(declare-fun lt!2706159 () Unit!170198)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1132 (List!74744 List!74744) Unit!170198)

(assert (=> b!7967016 (= lt!2706159 (lemmaIsPrefixThenSmallerEqSize!1132 testedP!447 input!7927))))

(declare-fun b!7967017 () Bool)

(assert (=> b!7967017 (= e!4697870 true)))

(declare-fun lt!2706160 () List!74744)

(assert (=> b!7967017 (isPrefix!6615 lt!2706160 input!7927)))

(declare-fun lt!2706164 () Unit!170198)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1342 (List!74744 List!74744) Unit!170198)

(assert (=> b!7967017 (= lt!2706164 (lemmaAddHeadSuffixToPrefixStillPrefix!1342 testedP!447 input!7927))))

(declare-fun lt!2706162 () List!74744)

(declare-fun ++!18385 (List!74744 List!74744) List!74744)

(declare-fun head!16267 (List!74744) C!43368)

(assert (=> b!7967017 (= lt!2706160 (++!18385 testedP!447 (Cons!74620 (head!16267 lt!2706162) Nil!74620)))))

(declare-fun b!7967018 () Bool)

(declare-fun e!4697868 () Bool)

(declare-fun tp!2374571 () Bool)

(declare-fun tp!2374572 () Bool)

(assert (=> b!7967018 (= e!4697868 (and tp!2374571 tp!2374572))))

(declare-fun b!7967019 () Bool)

(declare-fun Unit!170201 () Unit!170198)

(assert (=> b!7967019 (= e!4697865 Unit!170201)))

(declare-fun lt!2706163 () Unit!170198)

(declare-fun lemmaIsPrefixRefl!4083 (List!74744 List!74744) Unit!170198)

(assert (=> b!7967019 (= lt!2706163 (lemmaIsPrefixRefl!4083 input!7927 input!7927))))

(assert (=> b!7967019 (isPrefix!6615 input!7927 input!7927)))

(declare-fun lt!2706167 () Unit!170198)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1663 (List!74744 List!74744 List!74744) Unit!170198)

(assert (=> b!7967019 (= lt!2706167 (lemmaIsPrefixSameLengthThenSameList!1663 input!7927 testedP!447 input!7927))))

(assert (=> b!7967019 false))

(declare-fun b!7967020 () Bool)

(assert (=> b!7967020 (= e!4697871 e!4697866)))

(declare-fun res!3156914 () Bool)

(assert (=> b!7967020 (=> (not res!3156914) (not e!4697866))))

(declare-datatypes ((Regex!21515 0))(
  ( (ElementMatch!21515 (c!1463122 C!43368)) (Concat!30514 (regOne!43542 Regex!21515) (regTwo!43542 Regex!21515)) (EmptyExpr!21515) (Star!21515 (reg!21844 Regex!21515)) (EmptyLang!21515) (Union!21515 (regOne!43543 Regex!21515) (regTwo!43543 Regex!21515)) )
))
(declare-fun r!24602 () Regex!21515)

(declare-fun isEmpty!42921 (List!74744) Bool)

(declare-datatypes ((tuple2!70692 0))(
  ( (tuple2!70693 (_1!38649 List!74744) (_2!38649 List!74744)) )
))
(declare-fun findLongestMatchInner!2296 (Regex!21515 List!74744 Int List!74744 List!74744 Int) tuple2!70692)

(assert (=> b!7967020 (= res!3156914 (not (isEmpty!42921 (_1!38649 (findLongestMatchInner!2296 r!24602 testedP!447 lt!2706166 lt!2706162 input!7927 lt!2706165)))))))

(declare-fun size!43451 (List!74744) Int)

(assert (=> b!7967020 (= lt!2706165 (size!43451 input!7927))))

(declare-fun getSuffix!3818 (List!74744 List!74744) List!74744)

(assert (=> b!7967020 (= lt!2706162 (getSuffix!3818 input!7927 testedP!447))))

(assert (=> b!7967020 (= lt!2706166 (size!43451 testedP!447))))

(declare-fun b!7967021 () Bool)

(declare-fun tp!2374570 () Bool)

(assert (=> b!7967021 (= e!4697867 tp!2374570)))

(declare-fun b!7967022 () Bool)

(declare-fun e!4697864 () Bool)

(declare-fun tp!2374565 () Bool)

(assert (=> b!7967022 (= e!4697864 (and tp_is_empty!53573 tp!2374565))))

(declare-fun b!7967023 () Bool)

(declare-fun tp!2374568 () Bool)

(declare-fun tp!2374564 () Bool)

(assert (=> b!7967023 (= e!4697867 (and tp!2374568 tp!2374564))))

(declare-fun b!7967024 () Bool)

(assert (=> b!7967024 (= e!4697868 tp_is_empty!53573)))

(declare-fun res!3156913 () Bool)

(assert (=> start!751424 (=> (not res!3156913) (not e!4697871))))

(declare-fun baseR!116 () Regex!21515)

(declare-fun validRegex!11819 (Regex!21515) Bool)

(assert (=> start!751424 (= res!3156913 (validRegex!11819 baseR!116))))

(assert (=> start!751424 e!4697871))

(assert (=> start!751424 e!4697867))

(declare-fun e!4697869 () Bool)

(assert (=> start!751424 e!4697869))

(assert (=> start!751424 e!4697864))

(assert (=> start!751424 e!4697868))

(declare-fun b!7967025 () Bool)

(declare-fun tp!2374563 () Bool)

(declare-fun tp!2374573 () Bool)

(assert (=> b!7967025 (= e!4697868 (and tp!2374563 tp!2374573))))

(declare-fun b!7967026 () Bool)

(declare-fun tp!2374566 () Bool)

(assert (=> b!7967026 (= e!4697869 (and tp_is_empty!53573 tp!2374566))))

(declare-fun b!7967027 () Bool)

(declare-fun tp!2374569 () Bool)

(declare-fun tp!2374574 () Bool)

(assert (=> b!7967027 (= e!4697867 (and tp!2374569 tp!2374574))))

(declare-fun b!7967028 () Bool)

(declare-fun res!3156909 () Bool)

(assert (=> b!7967028 (=> (not res!3156909) (not e!4697866))))

(assert (=> b!7967028 (= res!3156909 (not (= testedP!447 input!7927)))))

(declare-fun b!7967029 () Bool)

(declare-fun tp!2374567 () Bool)

(assert (=> b!7967029 (= e!4697868 tp!2374567)))

(declare-fun b!7967030 () Bool)

(declare-fun res!3156910 () Bool)

(assert (=> b!7967030 (=> (not res!3156910) (not e!4697871))))

(declare-fun derivative!701 (Regex!21515 List!74744) Regex!21515)

(assert (=> b!7967030 (= res!3156910 (= (derivative!701 baseR!116 testedP!447) r!24602))))

(assert (= (and start!751424 res!3156913) b!7967013))

(assert (= (and b!7967013 res!3156911) b!7967030))

(assert (= (and b!7967030 res!3156910) b!7967020))

(assert (= (and b!7967020 res!3156914) b!7967028))

(assert (= (and b!7967028 res!3156909) b!7967016))

(assert (= (and b!7967016 c!1463121) b!7967019))

(assert (= (and b!7967016 (not c!1463121)) b!7967014))

(assert (= (and b!7967016 (not res!3156912)) b!7967017))

(get-info :version)

(assert (= (and start!751424 ((_ is ElementMatch!21515) baseR!116)) b!7967015))

(assert (= (and start!751424 ((_ is Concat!30514) baseR!116)) b!7967023))

(assert (= (and start!751424 ((_ is Star!21515) baseR!116)) b!7967021))

(assert (= (and start!751424 ((_ is Union!21515) baseR!116)) b!7967027))

(assert (= (and start!751424 ((_ is Cons!74620) testedP!447)) b!7967026))

(assert (= (and start!751424 ((_ is Cons!74620) input!7927)) b!7967022))

(assert (= (and start!751424 ((_ is ElementMatch!21515) r!24602)) b!7967024))

(assert (= (and start!751424 ((_ is Concat!30514) r!24602)) b!7967018))

(assert (= (and start!751424 ((_ is Star!21515) r!24602)) b!7967029))

(assert (= (and start!751424 ((_ is Union!21515) r!24602)) b!7967025))

(declare-fun m!8346334 () Bool)

(assert (=> b!7967020 m!8346334))

(declare-fun m!8346336 () Bool)

(assert (=> b!7967020 m!8346336))

(declare-fun m!8346338 () Bool)

(assert (=> b!7967020 m!8346338))

(declare-fun m!8346340 () Bool)

(assert (=> b!7967020 m!8346340))

(declare-fun m!8346342 () Bool)

(assert (=> b!7967020 m!8346342))

(declare-fun m!8346344 () Bool)

(assert (=> start!751424 m!8346344))

(declare-fun m!8346346 () Bool)

(assert (=> b!7967019 m!8346346))

(declare-fun m!8346348 () Bool)

(assert (=> b!7967019 m!8346348))

(declare-fun m!8346350 () Bool)

(assert (=> b!7967019 m!8346350))

(declare-fun m!8346352 () Bool)

(assert (=> b!7967030 m!8346352))

(declare-fun m!8346354 () Bool)

(assert (=> b!7967017 m!8346354))

(declare-fun m!8346356 () Bool)

(assert (=> b!7967017 m!8346356))

(declare-fun m!8346358 () Bool)

(assert (=> b!7967017 m!8346358))

(declare-fun m!8346360 () Bool)

(assert (=> b!7967017 m!8346360))

(declare-fun m!8346362 () Bool)

(assert (=> b!7967016 m!8346362))

(declare-fun m!8346364 () Bool)

(assert (=> b!7967013 m!8346364))

(check-sat (not b!7967020) (not b!7967017) (not b!7967013) (not b!7967021) (not start!751424) (not b!7967019) (not b!7967030) (not b!7967027) (not b!7967026) (not b!7967016) (not b!7967025) (not b!7967023) tp_is_empty!53573 (not b!7967029) (not b!7967022) (not b!7967018))
(check-sat)
