; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751140 () Bool)

(assert start!751140)

(declare-fun b!7963831 () Bool)

(declare-fun e!4696273 () Bool)

(declare-fun tp!2373173 () Bool)

(declare-fun tp!2373174 () Bool)

(assert (=> b!7963831 (= e!4696273 (and tp!2373173 tp!2373174))))

(declare-fun b!7963833 () Bool)

(declare-fun e!4696275 () Bool)

(declare-fun tp!2373176 () Bool)

(declare-fun tp!2373181 () Bool)

(assert (=> b!7963833 (= e!4696275 (and tp!2373176 tp!2373181))))

(declare-fun b!7963834 () Bool)

(declare-fun e!4696268 () Bool)

(declare-fun e!4696270 () Bool)

(assert (=> b!7963834 (= e!4696268 (not e!4696270))))

(declare-fun res!3155979 () Bool)

(assert (=> b!7963834 (=> res!3155979 e!4696270)))

(declare-fun lt!2704541 () Int)

(declare-fun lt!2704538 () Int)

(assert (=> b!7963834 (= res!3155979 (>= lt!2704541 lt!2704538))))

(declare-datatypes ((Unit!170094 0))(
  ( (Unit!170095) )
))
(declare-fun lt!2704536 () Unit!170094)

(declare-fun e!4696269 () Unit!170094)

(assert (=> b!7963834 (= lt!2704536 e!4696269)))

(declare-fun c!1462559 () Bool)

(assert (=> b!7963834 (= c!1462559 (= lt!2704541 lt!2704538))))

(assert (=> b!7963834 (<= lt!2704541 lt!2704538)))

(declare-fun lt!2704530 () Unit!170094)

(declare-datatypes ((C!43340 0))(
  ( (C!43341 (val!32218 Int)) )
))
(declare-datatypes ((List!74730 0))(
  ( (Nil!74606) (Cons!74606 (h!81054 C!43340) (t!390473 List!74730)) )
))
(declare-fun testedP!447 () List!74730)

(declare-fun input!7927 () List!74730)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1118 (List!74730 List!74730) Unit!170094)

(assert (=> b!7963834 (= lt!2704530 (lemmaIsPrefixThenSmallerEqSize!1118 testedP!447 input!7927))))

(declare-fun b!7963835 () Bool)

(declare-fun res!3155981 () Bool)

(assert (=> b!7963835 (=> (not res!3155981) (not e!4696268))))

(assert (=> b!7963835 (= res!3155981 (not (= testedP!447 input!7927)))))

(declare-fun b!7963836 () Bool)

(declare-fun tp!2373180 () Bool)

(declare-fun tp!2373171 () Bool)

(assert (=> b!7963836 (= e!4696275 (and tp!2373180 tp!2373171))))

(declare-fun b!7963837 () Bool)

(declare-fun e!4696274 () Bool)

(declare-fun e!4696272 () Bool)

(assert (=> b!7963837 (= e!4696274 e!4696272)))

(declare-fun res!3155977 () Bool)

(assert (=> b!7963837 (=> res!3155977 e!4696272)))

(declare-fun lt!2704532 () List!74730)

(declare-fun lt!2704533 () List!74730)

(declare-datatypes ((Regex!21501 0))(
  ( (ElementMatch!21501 (c!1462560 C!43340)) (Concat!30500 (regOne!43514 Regex!21501) (regTwo!43514 Regex!21501)) (EmptyExpr!21501) (Star!21501 (reg!21830 Regex!21501)) (EmptyLang!21501) (Union!21501 (regOne!43515 Regex!21501) (regTwo!43515 Regex!21501)) )
))
(declare-fun lt!2704531 () Regex!21501)

(declare-fun isEmpty!42907 (List!74730) Bool)

(declare-datatypes ((tuple2!70664 0))(
  ( (tuple2!70665 (_1!38635 List!74730) (_2!38635 List!74730)) )
))
(declare-fun findLongestMatchInner!2282 (Regex!21501 List!74730 Int List!74730 List!74730 Int) tuple2!70664)

(declare-fun tail!15790 (List!74730) List!74730)

(assert (=> b!7963837 (= res!3155977 (isEmpty!42907 (_1!38635 (findLongestMatchInner!2282 lt!2704531 lt!2704532 (+ 1 lt!2704541) (tail!15790 lt!2704533) input!7927 lt!2704538))))))

(declare-fun r!24602 () Regex!21501)

(declare-fun lt!2704540 () C!43340)

(declare-fun derivativeStep!6529 (Regex!21501 C!43340) Regex!21501)

(assert (=> b!7963837 (= lt!2704531 (derivativeStep!6529 r!24602 lt!2704540))))

(declare-fun b!7963838 () Bool)

(declare-fun tp!2373179 () Bool)

(assert (=> b!7963838 (= e!4696275 tp!2373179)))

(declare-fun b!7963839 () Bool)

(declare-fun e!4696267 () Bool)

(assert (=> b!7963839 (= e!4696267 e!4696268)))

(declare-fun res!3155976 () Bool)

(assert (=> b!7963839 (=> (not res!3155976) (not e!4696268))))

(assert (=> b!7963839 (= res!3155976 (not (isEmpty!42907 (_1!38635 (findLongestMatchInner!2282 r!24602 testedP!447 lt!2704541 lt!2704533 input!7927 lt!2704538)))))))

(declare-fun size!43437 (List!74730) Int)

(assert (=> b!7963839 (= lt!2704538 (size!43437 input!7927))))

(declare-fun getSuffix!3804 (List!74730 List!74730) List!74730)

(assert (=> b!7963839 (= lt!2704533 (getSuffix!3804 input!7927 testedP!447))))

(assert (=> b!7963839 (= lt!2704541 (size!43437 testedP!447))))

(declare-fun b!7963840 () Bool)

(declare-fun Unit!170096 () Unit!170094)

(assert (=> b!7963840 (= e!4696269 Unit!170096)))

(declare-fun b!7963841 () Bool)

(declare-fun tp!2373178 () Bool)

(assert (=> b!7963841 (= e!4696273 tp!2373178)))

(declare-fun b!7963842 () Bool)

(declare-fun e!4696271 () Bool)

(declare-fun tp_is_empty!53545 () Bool)

(declare-fun tp!2373172 () Bool)

(assert (=> b!7963842 (= e!4696271 (and tp_is_empty!53545 tp!2373172))))

(declare-fun b!7963843 () Bool)

(assert (=> b!7963843 (= e!4696273 tp_is_empty!53545)))

(declare-fun b!7963844 () Bool)

(declare-fun res!3155978 () Bool)

(assert (=> b!7963844 (=> (not res!3155978) (not e!4696267))))

(declare-fun baseR!116 () Regex!21501)

(declare-fun derivative!687 (Regex!21501 List!74730) Regex!21501)

(assert (=> b!7963844 (= res!3155978 (= (derivative!687 baseR!116 testedP!447) r!24602))))

(declare-fun res!3155982 () Bool)

(assert (=> start!751140 (=> (not res!3155982) (not e!4696267))))

(declare-fun validRegex!11805 (Regex!21501) Bool)

(assert (=> start!751140 (= res!3155982 (validRegex!11805 baseR!116))))

(assert (=> start!751140 e!4696267))

(assert (=> start!751140 e!4696273))

(assert (=> start!751140 e!4696271))

(declare-fun e!4696266 () Bool)

(assert (=> start!751140 e!4696266))

(assert (=> start!751140 e!4696275))

(declare-fun b!7963832 () Bool)

(assert (=> b!7963832 (= e!4696272 true)))

(assert (=> b!7963832 (= (derivative!687 baseR!116 lt!2704532) lt!2704531)))

(declare-fun lt!2704534 () Unit!170094)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!213 (Regex!21501 Regex!21501 List!74730 C!43340) Unit!170094)

(assert (=> b!7963832 (= lt!2704534 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!213 baseR!116 r!24602 testedP!447 lt!2704540))))

(declare-fun b!7963845 () Bool)

(declare-fun tp!2373177 () Bool)

(declare-fun tp!2373182 () Bool)

(assert (=> b!7963845 (= e!4696273 (and tp!2373177 tp!2373182))))

(declare-fun b!7963846 () Bool)

(assert (=> b!7963846 (= e!4696275 tp_is_empty!53545)))

(declare-fun b!7963847 () Bool)

(declare-fun Unit!170097 () Unit!170094)

(assert (=> b!7963847 (= e!4696269 Unit!170097)))

(declare-fun lt!2704537 () Unit!170094)

(declare-fun lemmaIsPrefixRefl!4069 (List!74730 List!74730) Unit!170094)

(assert (=> b!7963847 (= lt!2704537 (lemmaIsPrefixRefl!4069 input!7927 input!7927))))

(declare-fun isPrefix!6601 (List!74730 List!74730) Bool)

(assert (=> b!7963847 (isPrefix!6601 input!7927 input!7927)))

(declare-fun lt!2704535 () Unit!170094)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1649 (List!74730 List!74730 List!74730) Unit!170094)

(assert (=> b!7963847 (= lt!2704535 (lemmaIsPrefixSameLengthThenSameList!1649 input!7927 testedP!447 input!7927))))

(assert (=> b!7963847 false))

(declare-fun b!7963848 () Bool)

(assert (=> b!7963848 (= e!4696270 e!4696274)))

(declare-fun res!3155975 () Bool)

(assert (=> b!7963848 (=> res!3155975 e!4696274)))

(declare-fun nullable!9602 (Regex!21501) Bool)

(assert (=> b!7963848 (= res!3155975 (not (nullable!9602 r!24602)))))

(assert (=> b!7963848 (isPrefix!6601 lt!2704532 input!7927)))

(declare-fun lt!2704539 () Unit!170094)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1328 (List!74730 List!74730) Unit!170094)

(assert (=> b!7963848 (= lt!2704539 (lemmaAddHeadSuffixToPrefixStillPrefix!1328 testedP!447 input!7927))))

(declare-fun ++!18371 (List!74730 List!74730) List!74730)

(assert (=> b!7963848 (= lt!2704532 (++!18371 testedP!447 (Cons!74606 lt!2704540 Nil!74606)))))

(declare-fun head!16253 (List!74730) C!43340)

(assert (=> b!7963848 (= lt!2704540 (head!16253 lt!2704533))))

(declare-fun b!7963849 () Bool)

(declare-fun res!3155980 () Bool)

(assert (=> b!7963849 (=> (not res!3155980) (not e!4696267))))

(assert (=> b!7963849 (= res!3155980 (isPrefix!6601 testedP!447 input!7927))))

(declare-fun b!7963850 () Bool)

(declare-fun tp!2373175 () Bool)

(assert (=> b!7963850 (= e!4696266 (and tp_is_empty!53545 tp!2373175))))

(assert (= (and start!751140 res!3155982) b!7963849))

(assert (= (and b!7963849 res!3155980) b!7963844))

(assert (= (and b!7963844 res!3155978) b!7963839))

(assert (= (and b!7963839 res!3155976) b!7963835))

(assert (= (and b!7963835 res!3155981) b!7963834))

(assert (= (and b!7963834 c!1462559) b!7963847))

(assert (= (and b!7963834 (not c!1462559)) b!7963840))

(assert (= (and b!7963834 (not res!3155979)) b!7963848))

(assert (= (and b!7963848 (not res!3155975)) b!7963837))

(assert (= (and b!7963837 (not res!3155977)) b!7963832))

(get-info :version)

(assert (= (and start!751140 ((_ is ElementMatch!21501) baseR!116)) b!7963843))

(assert (= (and start!751140 ((_ is Concat!30500) baseR!116)) b!7963831))

(assert (= (and start!751140 ((_ is Star!21501) baseR!116)) b!7963841))

(assert (= (and start!751140 ((_ is Union!21501) baseR!116)) b!7963845))

(assert (= (and start!751140 ((_ is Cons!74606) testedP!447)) b!7963842))

(assert (= (and start!751140 ((_ is Cons!74606) input!7927)) b!7963850))

(assert (= (and start!751140 ((_ is ElementMatch!21501) r!24602)) b!7963846))

(assert (= (and start!751140 ((_ is Concat!30500) r!24602)) b!7963833))

(assert (= (and start!751140 ((_ is Star!21501) r!24602)) b!7963838))

(assert (= (and start!751140 ((_ is Union!21501) r!24602)) b!7963836))

(declare-fun m!8343960 () Bool)

(assert (=> b!7963848 m!8343960))

(declare-fun m!8343962 () Bool)

(assert (=> b!7963848 m!8343962))

(declare-fun m!8343964 () Bool)

(assert (=> b!7963848 m!8343964))

(declare-fun m!8343966 () Bool)

(assert (=> b!7963848 m!8343966))

(declare-fun m!8343968 () Bool)

(assert (=> b!7963848 m!8343968))

(declare-fun m!8343970 () Bool)

(assert (=> b!7963844 m!8343970))

(declare-fun m!8343972 () Bool)

(assert (=> b!7963834 m!8343972))

(declare-fun m!8343974 () Bool)

(assert (=> b!7963847 m!8343974))

(declare-fun m!8343976 () Bool)

(assert (=> b!7963847 m!8343976))

(declare-fun m!8343978 () Bool)

(assert (=> b!7963847 m!8343978))

(declare-fun m!8343980 () Bool)

(assert (=> start!751140 m!8343980))

(declare-fun m!8343982 () Bool)

(assert (=> b!7963849 m!8343982))

(declare-fun m!8343984 () Bool)

(assert (=> b!7963832 m!8343984))

(declare-fun m!8343986 () Bool)

(assert (=> b!7963832 m!8343986))

(declare-fun m!8343988 () Bool)

(assert (=> b!7963839 m!8343988))

(declare-fun m!8343990 () Bool)

(assert (=> b!7963839 m!8343990))

(declare-fun m!8343992 () Bool)

(assert (=> b!7963839 m!8343992))

(declare-fun m!8343994 () Bool)

(assert (=> b!7963839 m!8343994))

(declare-fun m!8343996 () Bool)

(assert (=> b!7963839 m!8343996))

(declare-fun m!8343998 () Bool)

(assert (=> b!7963837 m!8343998))

(assert (=> b!7963837 m!8343998))

(declare-fun m!8344000 () Bool)

(assert (=> b!7963837 m!8344000))

(declare-fun m!8344002 () Bool)

(assert (=> b!7963837 m!8344002))

(declare-fun m!8344004 () Bool)

(assert (=> b!7963837 m!8344004))

(check-sat (not b!7963837) (not b!7963833) (not b!7963839) (not b!7963849) (not b!7963838) (not b!7963844) (not b!7963842) (not b!7963841) (not b!7963845) (not b!7963836) (not start!751140) (not b!7963847) (not b!7963850) (not b!7963831) (not b!7963848) (not b!7963834) (not b!7963832) tp_is_empty!53545)
(check-sat)
