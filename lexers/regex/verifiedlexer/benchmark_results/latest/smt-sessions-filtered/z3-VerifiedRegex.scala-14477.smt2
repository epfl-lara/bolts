; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753276 () Bool)

(assert start!753276)

(declare-fun b!8005999 () Bool)

(declare-fun res!3165869 () Bool)

(declare-fun e!4716211 () Bool)

(assert (=> b!8005999 (=> res!3165869 e!4716211)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8005999 (= res!3165869 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8006000 () Bool)

(declare-fun e!4716207 () Bool)

(declare-fun tp!2395461 () Bool)

(declare-fun tp!2395462 () Bool)

(assert (=> b!8006000 (= e!4716207 (and tp!2395461 tp!2395462))))

(declare-fun b!8006001 () Bool)

(declare-fun tp_is_empty!53813 () Bool)

(assert (=> b!8006001 (= e!4716207 tp_is_empty!53813)))

(declare-fun b!8006002 () Bool)

(declare-fun e!4716212 () Bool)

(declare-fun e!4716209 () Bool)

(assert (=> b!8006002 (= e!4716212 (not e!4716209))))

(declare-fun res!3165874 () Bool)

(assert (=> b!8006002 (=> res!3165874 e!4716209)))

(declare-datatypes ((C!43608 0))(
  ( (C!43609 (val!32352 Int)) )
))
(declare-datatypes ((List!74864 0))(
  ( (Nil!74740) (Cons!74740 (h!81188 C!43608) (t!390607 List!74864)) )
))
(declare-fun testedP!353 () List!74864)

(declare-fun totalInput!1349 () List!74864)

(declare-fun isPrefix!6689 (List!74864 List!74864) Bool)

(assert (=> b!8006002 (= res!3165874 (not (isPrefix!6689 testedP!353 totalInput!1349)))))

(declare-fun lt!2715170 () List!74864)

(assert (=> b!8006002 (isPrefix!6689 testedP!353 lt!2715170)))

(declare-datatypes ((Unit!170698 0))(
  ( (Unit!170699) )
))
(declare-fun lt!2715173 () Unit!170698)

(declare-fun testedSuffix!271 () List!74864)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3920 (List!74864 List!74864) Unit!170698)

(assert (=> b!8006002 (= lt!2715173 (lemmaConcatTwoListThenFirstIsPrefix!3920 testedP!353 testedSuffix!271))))

(declare-fun b!8006003 () Bool)

(declare-fun e!4716217 () Bool)

(declare-fun e!4716219 () Bool)

(assert (=> b!8006003 (= e!4716217 e!4716219)))

(declare-fun res!3165871 () Bool)

(assert (=> b!8006003 (=> (not res!3165871) (not e!4716219))))

(assert (=> b!8006003 (= res!3165871 (= lt!2715170 totalInput!1349))))

(declare-fun ++!18461 (List!74864 List!74864) List!74864)

(assert (=> b!8006003 (= lt!2715170 (++!18461 testedP!353 testedSuffix!271))))

(declare-fun b!8006004 () Bool)

(declare-fun tp!2395464 () Bool)

(assert (=> b!8006004 (= e!4716207 tp!2395464)))

(declare-fun b!8006005 () Bool)

(declare-fun e!4716208 () Bool)

(assert (=> b!8006005 (= e!4716208 e!4716212)))

(declare-fun res!3165876 () Bool)

(assert (=> b!8006005 (=> (not res!3165876) (not e!4716212))))

(declare-fun lt!2715174 () Int)

(assert (=> b!8006005 (= res!3165876 (= totalInputSize!629 lt!2715174))))

(declare-fun size!43537 (List!74864) Int)

(assert (=> b!8006005 (= lt!2715174 (size!43537 totalInput!1349))))

(declare-fun res!3165875 () Bool)

(assert (=> start!753276 (=> (not res!3165875) (not e!4716217))))

(declare-datatypes ((Regex!21635 0))(
  ( (ElementMatch!21635 (c!1469688 C!43608)) (Concat!30634 (regOne!43782 Regex!21635) (regTwo!43782 Regex!21635)) (EmptyExpr!21635) (Star!21635 (reg!21964 Regex!21635)) (EmptyLang!21635) (Union!21635 (regOne!43783 Regex!21635) (regTwo!43783 Regex!21635)) )
))
(declare-fun r!15422 () Regex!21635)

(declare-fun validRegex!11939 (Regex!21635) Bool)

(assert (=> start!753276 (= res!3165875 (validRegex!11939 r!15422))))

(assert (=> start!753276 e!4716217))

(declare-fun e!4716213 () Bool)

(assert (=> start!753276 e!4716213))

(assert (=> start!753276 true))

(declare-fun e!4716215 () Bool)

(assert (=> start!753276 e!4716215))

(assert (=> start!753276 e!4716207))

(declare-fun e!4716218 () Bool)

(assert (=> start!753276 e!4716218))

(declare-fun b!8006006 () Bool)

(declare-fun tp!2395460 () Bool)

(assert (=> b!8006006 (= e!4716213 (and tp_is_empty!53813 tp!2395460))))

(declare-fun b!8006007 () Bool)

(declare-fun e!4716216 () Bool)

(declare-fun e!4716214 () Bool)

(assert (=> b!8006007 (= e!4716216 e!4716214)))

(declare-fun res!3165868 () Bool)

(assert (=> b!8006007 (=> res!3165868 e!4716214)))

(declare-fun nullable!9693 (Regex!21635) Bool)

(assert (=> b!8006007 (= res!3165868 (not (nullable!9693 r!15422)))))

(declare-fun lt!2715182 () List!74864)

(declare-fun lt!2715175 () List!74864)

(assert (=> b!8006007 (= (++!18461 lt!2715182 lt!2715175) totalInput!1349)))

(declare-fun lt!2715181 () Unit!170698)

(declare-fun lt!2715169 () C!43608)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3570 (List!74864 C!43608 List!74864 List!74864) Unit!170698)

(assert (=> b!8006007 (= lt!2715181 (lemmaMoveElementToOtherListKeepsConcatEq!3570 testedP!353 lt!2715169 lt!2715175 totalInput!1349))))

(declare-fun tail!15850 (List!74864) List!74864)

(assert (=> b!8006007 (= lt!2715175 (tail!15850 testedSuffix!271))))

(declare-fun lt!2715171 () List!74864)

(declare-fun head!16327 (List!74864) C!43608)

(assert (=> b!8006007 (isPrefix!6689 (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740)) totalInput!1349)))

(declare-fun lt!2715178 () Unit!170698)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1386 (List!74864 List!74864) Unit!170698)

(assert (=> b!8006007 (= lt!2715178 (lemmaAddHeadSuffixToPrefixStillPrefix!1386 testedP!353 totalInput!1349))))

(assert (=> b!8006007 (= lt!2715182 (++!18461 testedP!353 (Cons!74740 lt!2715169 Nil!74740)))))

(assert (=> b!8006007 (= lt!2715169 (head!16327 testedSuffix!271))))

(declare-fun b!8006008 () Bool)

(assert (=> b!8006008 (= e!4716211 e!4716216)))

(declare-fun res!3165872 () Bool)

(assert (=> b!8006008 (=> res!3165872 e!4716216)))

(declare-fun lt!2715180 () Int)

(assert (=> b!8006008 (= res!3165872 (>= lt!2715180 lt!2715174))))

(declare-fun lt!2715183 () Unit!170698)

(declare-fun e!4716210 () Unit!170698)

(assert (=> b!8006008 (= lt!2715183 e!4716210)))

(declare-fun c!1469687 () Bool)

(assert (=> b!8006008 (= c!1469687 (= lt!2715180 lt!2715174))))

(assert (=> b!8006008 (<= lt!2715180 lt!2715174)))

(declare-fun lt!2715172 () Unit!170698)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1190 (List!74864 List!74864) Unit!170698)

(assert (=> b!8006008 (= lt!2715172 (lemmaIsPrefixThenSmallerEqSize!1190 testedP!353 totalInput!1349))))

(declare-fun b!8006009 () Bool)

(declare-fun tp!2395459 () Bool)

(assert (=> b!8006009 (= e!4716218 (and tp_is_empty!53813 tp!2395459))))

(declare-fun b!8006010 () Bool)

(declare-fun Unit!170700 () Unit!170698)

(assert (=> b!8006010 (= e!4716210 Unit!170700)))

(declare-fun b!8006011 () Bool)

(declare-fun tp!2395463 () Bool)

(declare-fun tp!2395465 () Bool)

(assert (=> b!8006011 (= e!4716207 (and tp!2395463 tp!2395465))))

(declare-fun b!8006012 () Bool)

(declare-fun Unit!170701 () Unit!170698)

(assert (=> b!8006012 (= e!4716210 Unit!170701)))

(declare-fun lt!2715176 () Unit!170698)

(declare-fun lemmaIsPrefixRefl!4141 (List!74864 List!74864) Unit!170698)

(assert (=> b!8006012 (= lt!2715176 (lemmaIsPrefixRefl!4141 totalInput!1349 totalInput!1349))))

(assert (=> b!8006012 (isPrefix!6689 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715179 () Unit!170698)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1715 (List!74864 List!74864 List!74864) Unit!170698)

(assert (=> b!8006012 (= lt!2715179 (lemmaIsPrefixSameLengthThenSameList!1715 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8006012 false))

(declare-fun b!8006013 () Bool)

(assert (=> b!8006013 (= e!4716219 e!4716208)))

(declare-fun res!3165870 () Bool)

(assert (=> b!8006013 (=> (not res!3165870) (not e!4716208))))

(assert (=> b!8006013 (= res!3165870 (= testedPSize!271 lt!2715180))))

(assert (=> b!8006013 (= lt!2715180 (size!43537 testedP!353))))

(declare-fun b!8006014 () Bool)

(declare-fun tp!2395466 () Bool)

(assert (=> b!8006014 (= e!4716215 (and tp_is_empty!53813 tp!2395466))))

(declare-fun b!8006015 () Bool)

(assert (=> b!8006015 (= e!4716209 e!4716211)))

(declare-fun res!3165873 () Bool)

(assert (=> b!8006015 (=> res!3165873 e!4716211)))

(declare-fun lostCause!2032 (Regex!21635) Bool)

(assert (=> b!8006015 (= res!3165873 (lostCause!2032 r!15422))))

(assert (=> b!8006015 (and (= testedSuffix!271 lt!2715171) (= lt!2715171 testedSuffix!271))))

(declare-fun lt!2715177 () Unit!170698)

(declare-fun lemmaSamePrefixThenSameSuffix!3052 (List!74864 List!74864 List!74864 List!74864 List!74864) Unit!170698)

(assert (=> b!8006015 (= lt!2715177 (lemmaSamePrefixThenSameSuffix!3052 testedP!353 testedSuffix!271 testedP!353 lt!2715171 totalInput!1349))))

(declare-fun getSuffix!3886 (List!74864 List!74864) List!74864)

(assert (=> b!8006015 (= lt!2715171 (getSuffix!3886 totalInput!1349 testedP!353))))

(declare-fun b!8006016 () Bool)

(declare-fun derivativeStep!6616 (Regex!21635 C!43608) Regex!21635)

(assert (=> b!8006016 (= e!4716214 (validRegex!11939 (derivativeStep!6616 r!15422 lt!2715169)))))

(assert (= (and start!753276 res!3165875) b!8006003))

(assert (= (and b!8006003 res!3165871) b!8006013))

(assert (= (and b!8006013 res!3165870) b!8006005))

(assert (= (and b!8006005 res!3165876) b!8006002))

(assert (= (and b!8006002 (not res!3165874)) b!8006015))

(assert (= (and b!8006015 (not res!3165873)) b!8005999))

(assert (= (and b!8005999 (not res!3165869)) b!8006008))

(assert (= (and b!8006008 c!1469687) b!8006012))

(assert (= (and b!8006008 (not c!1469687)) b!8006010))

(assert (= (and b!8006008 (not res!3165872)) b!8006007))

(assert (= (and b!8006007 (not res!3165868)) b!8006016))

(get-info :version)

(assert (= (and start!753276 ((_ is Cons!74740) totalInput!1349)) b!8006006))

(assert (= (and start!753276 ((_ is Cons!74740) testedSuffix!271)) b!8006014))

(assert (= (and start!753276 ((_ is ElementMatch!21635) r!15422)) b!8006001))

(assert (= (and start!753276 ((_ is Concat!30634) r!15422)) b!8006011))

(assert (= (and start!753276 ((_ is Star!21635) r!15422)) b!8006004))

(assert (= (and start!753276 ((_ is Union!21635) r!15422)) b!8006000))

(assert (= (and start!753276 ((_ is Cons!74740) testedP!353)) b!8006009))

(declare-fun m!8371310 () Bool)

(assert (=> b!8006008 m!8371310))

(declare-fun m!8371312 () Bool)

(assert (=> b!8006012 m!8371312))

(declare-fun m!8371314 () Bool)

(assert (=> b!8006012 m!8371314))

(declare-fun m!8371316 () Bool)

(assert (=> b!8006012 m!8371316))

(declare-fun m!8371318 () Bool)

(assert (=> start!753276 m!8371318))

(declare-fun m!8371320 () Bool)

(assert (=> b!8006016 m!8371320))

(assert (=> b!8006016 m!8371320))

(declare-fun m!8371322 () Bool)

(assert (=> b!8006016 m!8371322))

(declare-fun m!8371324 () Bool)

(assert (=> b!8006005 m!8371324))

(declare-fun m!8371326 () Bool)

(assert (=> b!8006007 m!8371326))

(declare-fun m!8371328 () Bool)

(assert (=> b!8006007 m!8371328))

(declare-fun m!8371330 () Bool)

(assert (=> b!8006007 m!8371330))

(declare-fun m!8371332 () Bool)

(assert (=> b!8006007 m!8371332))

(declare-fun m!8371334 () Bool)

(assert (=> b!8006007 m!8371334))

(declare-fun m!8371336 () Bool)

(assert (=> b!8006007 m!8371336))

(declare-fun m!8371338 () Bool)

(assert (=> b!8006007 m!8371338))

(declare-fun m!8371340 () Bool)

(assert (=> b!8006007 m!8371340))

(declare-fun m!8371342 () Bool)

(assert (=> b!8006007 m!8371342))

(assert (=> b!8006007 m!8371334))

(declare-fun m!8371344 () Bool)

(assert (=> b!8006007 m!8371344))

(declare-fun m!8371346 () Bool)

(assert (=> b!8006013 m!8371346))

(declare-fun m!8371348 () Bool)

(assert (=> b!8006015 m!8371348))

(declare-fun m!8371350 () Bool)

(assert (=> b!8006015 m!8371350))

(declare-fun m!8371352 () Bool)

(assert (=> b!8006015 m!8371352))

(declare-fun m!8371354 () Bool)

(assert (=> b!8006002 m!8371354))

(declare-fun m!8371356 () Bool)

(assert (=> b!8006002 m!8371356))

(declare-fun m!8371358 () Bool)

(assert (=> b!8006002 m!8371358))

(declare-fun m!8371360 () Bool)

(assert (=> b!8006003 m!8371360))

(check-sat (not b!8006004) (not b!8006015) (not b!8006008) (not b!8006006) (not b!8006003) (not b!8006000) (not b!8006016) (not b!8006012) (not start!753276) (not b!8006009) (not b!8006013) (not b!8006014) (not b!8006011) (not b!8006007) tp_is_empty!53813 (not b!8006002) (not b!8006005))
(check-sat)
(get-model)

(declare-fun d!2387370 () Bool)

(assert (=> d!2387370 (isPrefix!6689 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715186 () Unit!170698)

(declare-fun choose!60261 (List!74864 List!74864) Unit!170698)

(assert (=> d!2387370 (= lt!2715186 (choose!60261 totalInput!1349 totalInput!1349))))

(assert (=> d!2387370 (= (lemmaIsPrefixRefl!4141 totalInput!1349 totalInput!1349) lt!2715186)))

(declare-fun bs!1970687 () Bool)

(assert (= bs!1970687 d!2387370))

(assert (=> bs!1970687 m!8371314))

(declare-fun m!8371362 () Bool)

(assert (=> bs!1970687 m!8371362))

(assert (=> b!8006012 d!2387370))

(declare-fun b!8006025 () Bool)

(declare-fun e!4716227 () Bool)

(declare-fun e!4716226 () Bool)

(assert (=> b!8006025 (= e!4716227 e!4716226)))

(declare-fun res!3165887 () Bool)

(assert (=> b!8006025 (=> (not res!3165887) (not e!4716226))))

(assert (=> b!8006025 (= res!3165887 (not ((_ is Nil!74740) totalInput!1349)))))

(declare-fun b!8006026 () Bool)

(declare-fun res!3165886 () Bool)

(assert (=> b!8006026 (=> (not res!3165886) (not e!4716226))))

(assert (=> b!8006026 (= res!3165886 (= (head!16327 totalInput!1349) (head!16327 totalInput!1349)))))

(declare-fun b!8006027 () Bool)

(assert (=> b!8006027 (= e!4716226 (isPrefix!6689 (tail!15850 totalInput!1349) (tail!15850 totalInput!1349)))))

(declare-fun b!8006028 () Bool)

(declare-fun e!4716228 () Bool)

(assert (=> b!8006028 (= e!4716228 (>= (size!43537 totalInput!1349) (size!43537 totalInput!1349)))))

(declare-fun d!2387372 () Bool)

(assert (=> d!2387372 e!4716228))

(declare-fun res!3165888 () Bool)

(assert (=> d!2387372 (=> res!3165888 e!4716228)))

(declare-fun lt!2715189 () Bool)

(assert (=> d!2387372 (= res!3165888 (not lt!2715189))))

(assert (=> d!2387372 (= lt!2715189 e!4716227)))

(declare-fun res!3165885 () Bool)

(assert (=> d!2387372 (=> res!3165885 e!4716227)))

(assert (=> d!2387372 (= res!3165885 ((_ is Nil!74740) totalInput!1349))))

(assert (=> d!2387372 (= (isPrefix!6689 totalInput!1349 totalInput!1349) lt!2715189)))

(assert (= (and d!2387372 (not res!3165885)) b!8006025))

(assert (= (and b!8006025 res!3165887) b!8006026))

(assert (= (and b!8006026 res!3165886) b!8006027))

(assert (= (and d!2387372 (not res!3165888)) b!8006028))

(declare-fun m!8371364 () Bool)

(assert (=> b!8006026 m!8371364))

(assert (=> b!8006026 m!8371364))

(declare-fun m!8371366 () Bool)

(assert (=> b!8006027 m!8371366))

(assert (=> b!8006027 m!8371366))

(assert (=> b!8006027 m!8371366))

(assert (=> b!8006027 m!8371366))

(declare-fun m!8371368 () Bool)

(assert (=> b!8006027 m!8371368))

(assert (=> b!8006028 m!8371324))

(assert (=> b!8006028 m!8371324))

(assert (=> b!8006012 d!2387372))

(declare-fun d!2387374 () Bool)

(assert (=> d!2387374 (= totalInput!1349 testedP!353)))

(declare-fun lt!2715192 () Unit!170698)

(declare-fun choose!60263 (List!74864 List!74864 List!74864) Unit!170698)

(assert (=> d!2387374 (= lt!2715192 (choose!60263 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387374 (isPrefix!6689 totalInput!1349 totalInput!1349)))

(assert (=> d!2387374 (= (lemmaIsPrefixSameLengthThenSameList!1715 totalInput!1349 testedP!353 totalInput!1349) lt!2715192)))

(declare-fun bs!1970688 () Bool)

(assert (= bs!1970688 d!2387374))

(declare-fun m!8371370 () Bool)

(assert (=> bs!1970688 m!8371370))

(assert (=> bs!1970688 m!8371314))

(assert (=> b!8006012 d!2387374))

(declare-fun d!2387376 () Bool)

(assert (=> d!2387376 (<= (size!43537 testedP!353) (size!43537 totalInput!1349))))

(declare-fun lt!2715195 () Unit!170698)

(declare-fun choose!60264 (List!74864 List!74864) Unit!170698)

(assert (=> d!2387376 (= lt!2715195 (choose!60264 testedP!353 totalInput!1349))))

(assert (=> d!2387376 (isPrefix!6689 testedP!353 totalInput!1349)))

(assert (=> d!2387376 (= (lemmaIsPrefixThenSmallerEqSize!1190 testedP!353 totalInput!1349) lt!2715195)))

(declare-fun bs!1970689 () Bool)

(assert (= bs!1970689 d!2387376))

(assert (=> bs!1970689 m!8371346))

(assert (=> bs!1970689 m!8371324))

(declare-fun m!8371372 () Bool)

(assert (=> bs!1970689 m!8371372))

(assert (=> bs!1970689 m!8371354))

(assert (=> b!8006008 d!2387376))

(declare-fun d!2387378 () Bool)

(declare-fun lt!2715198 () Int)

(assert (=> d!2387378 (>= lt!2715198 0)))

(declare-fun e!4716231 () Int)

(assert (=> d!2387378 (= lt!2715198 e!4716231)))

(declare-fun c!1469691 () Bool)

(assert (=> d!2387378 (= c!1469691 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387378 (= (size!43537 testedP!353) lt!2715198)))

(declare-fun b!8006033 () Bool)

(assert (=> b!8006033 (= e!4716231 0)))

(declare-fun b!8006034 () Bool)

(assert (=> b!8006034 (= e!4716231 (+ 1 (size!43537 (t!390607 testedP!353))))))

(assert (= (and d!2387378 c!1469691) b!8006033))

(assert (= (and d!2387378 (not c!1469691)) b!8006034))

(declare-fun m!8371374 () Bool)

(assert (=> b!8006034 m!8371374))

(assert (=> b!8006013 d!2387378))

(declare-fun b!8006035 () Bool)

(declare-fun e!4716233 () Bool)

(declare-fun e!4716232 () Bool)

(assert (=> b!8006035 (= e!4716233 e!4716232)))

(declare-fun res!3165891 () Bool)

(assert (=> b!8006035 (=> (not res!3165891) (not e!4716232))))

(assert (=> b!8006035 (= res!3165891 (not ((_ is Nil!74740) totalInput!1349)))))

(declare-fun b!8006036 () Bool)

(declare-fun res!3165890 () Bool)

(assert (=> b!8006036 (=> (not res!3165890) (not e!4716232))))

(assert (=> b!8006036 (= res!3165890 (= (head!16327 testedP!353) (head!16327 totalInput!1349)))))

(declare-fun b!8006037 () Bool)

(assert (=> b!8006037 (= e!4716232 (isPrefix!6689 (tail!15850 testedP!353) (tail!15850 totalInput!1349)))))

(declare-fun b!8006038 () Bool)

(declare-fun e!4716234 () Bool)

(assert (=> b!8006038 (= e!4716234 (>= (size!43537 totalInput!1349) (size!43537 testedP!353)))))

(declare-fun d!2387382 () Bool)

(assert (=> d!2387382 e!4716234))

(declare-fun res!3165892 () Bool)

(assert (=> d!2387382 (=> res!3165892 e!4716234)))

(declare-fun lt!2715199 () Bool)

(assert (=> d!2387382 (= res!3165892 (not lt!2715199))))

(assert (=> d!2387382 (= lt!2715199 e!4716233)))

(declare-fun res!3165889 () Bool)

(assert (=> d!2387382 (=> res!3165889 e!4716233)))

(assert (=> d!2387382 (= res!3165889 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387382 (= (isPrefix!6689 testedP!353 totalInput!1349) lt!2715199)))

(assert (= (and d!2387382 (not res!3165889)) b!8006035))

(assert (= (and b!8006035 res!3165891) b!8006036))

(assert (= (and b!8006036 res!3165890) b!8006037))

(assert (= (and d!2387382 (not res!3165892)) b!8006038))

(declare-fun m!8371376 () Bool)

(assert (=> b!8006036 m!8371376))

(assert (=> b!8006036 m!8371364))

(declare-fun m!8371378 () Bool)

(assert (=> b!8006037 m!8371378))

(assert (=> b!8006037 m!8371366))

(assert (=> b!8006037 m!8371378))

(assert (=> b!8006037 m!8371366))

(declare-fun m!8371380 () Bool)

(assert (=> b!8006037 m!8371380))

(assert (=> b!8006038 m!8371324))

(assert (=> b!8006038 m!8371346))

(assert (=> b!8006002 d!2387382))

(declare-fun b!8006045 () Bool)

(declare-fun e!4716240 () Bool)

(declare-fun e!4716239 () Bool)

(assert (=> b!8006045 (= e!4716240 e!4716239)))

(declare-fun res!3165899 () Bool)

(assert (=> b!8006045 (=> (not res!3165899) (not e!4716239))))

(assert (=> b!8006045 (= res!3165899 (not ((_ is Nil!74740) lt!2715170)))))

(declare-fun b!8006046 () Bool)

(declare-fun res!3165898 () Bool)

(assert (=> b!8006046 (=> (not res!3165898) (not e!4716239))))

(assert (=> b!8006046 (= res!3165898 (= (head!16327 testedP!353) (head!16327 lt!2715170)))))

(declare-fun b!8006047 () Bool)

(assert (=> b!8006047 (= e!4716239 (isPrefix!6689 (tail!15850 testedP!353) (tail!15850 lt!2715170)))))

(declare-fun b!8006048 () Bool)

(declare-fun e!4716243 () Bool)

(assert (=> b!8006048 (= e!4716243 (>= (size!43537 lt!2715170) (size!43537 testedP!353)))))

(declare-fun d!2387384 () Bool)

(assert (=> d!2387384 e!4716243))

(declare-fun res!3165900 () Bool)

(assert (=> d!2387384 (=> res!3165900 e!4716243)))

(declare-fun lt!2715200 () Bool)

(assert (=> d!2387384 (= res!3165900 (not lt!2715200))))

(assert (=> d!2387384 (= lt!2715200 e!4716240)))

(declare-fun res!3165895 () Bool)

(assert (=> d!2387384 (=> res!3165895 e!4716240)))

(assert (=> d!2387384 (= res!3165895 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387384 (= (isPrefix!6689 testedP!353 lt!2715170) lt!2715200)))

(assert (= (and d!2387384 (not res!3165895)) b!8006045))

(assert (= (and b!8006045 res!3165899) b!8006046))

(assert (= (and b!8006046 res!3165898) b!8006047))

(assert (= (and d!2387384 (not res!3165900)) b!8006048))

(assert (=> b!8006046 m!8371376))

(declare-fun m!8371382 () Bool)

(assert (=> b!8006046 m!8371382))

(assert (=> b!8006047 m!8371378))

(declare-fun m!8371384 () Bool)

(assert (=> b!8006047 m!8371384))

(assert (=> b!8006047 m!8371378))

(assert (=> b!8006047 m!8371384))

(declare-fun m!8371386 () Bool)

(assert (=> b!8006047 m!8371386))

(declare-fun m!8371388 () Bool)

(assert (=> b!8006048 m!8371388))

(assert (=> b!8006048 m!8371346))

(assert (=> b!8006002 d!2387384))

(declare-fun d!2387386 () Bool)

(assert (=> d!2387386 (isPrefix!6689 testedP!353 (++!18461 testedP!353 testedSuffix!271))))

(declare-fun lt!2715203 () Unit!170698)

(declare-fun choose!60267 (List!74864 List!74864) Unit!170698)

(assert (=> d!2387386 (= lt!2715203 (choose!60267 testedP!353 testedSuffix!271))))

(assert (=> d!2387386 (= (lemmaConcatTwoListThenFirstIsPrefix!3920 testedP!353 testedSuffix!271) lt!2715203)))

(declare-fun bs!1970690 () Bool)

(assert (= bs!1970690 d!2387386))

(assert (=> bs!1970690 m!8371360))

(assert (=> bs!1970690 m!8371360))

(declare-fun m!8371390 () Bool)

(assert (=> bs!1970690 m!8371390))

(declare-fun m!8371392 () Bool)

(assert (=> bs!1970690 m!8371392))

(assert (=> b!8006002 d!2387386))

(declare-fun d!2387388 () Bool)

(assert (=> d!2387388 (isPrefix!6689 (++!18461 testedP!353 (Cons!74740 (head!16327 (getSuffix!3886 totalInput!1349 testedP!353)) Nil!74740)) totalInput!1349)))

(declare-fun lt!2715206 () Unit!170698)

(declare-fun choose!60268 (List!74864 List!74864) Unit!170698)

(assert (=> d!2387388 (= lt!2715206 (choose!60268 testedP!353 totalInput!1349))))

(assert (=> d!2387388 (isPrefix!6689 testedP!353 totalInput!1349)))

(assert (=> d!2387388 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1386 testedP!353 totalInput!1349) lt!2715206)))

(declare-fun bs!1970691 () Bool)

(assert (= bs!1970691 d!2387388))

(assert (=> bs!1970691 m!8371354))

(declare-fun m!8371400 () Bool)

(assert (=> bs!1970691 m!8371400))

(assert (=> bs!1970691 m!8371352))

(declare-fun m!8371402 () Bool)

(assert (=> bs!1970691 m!8371402))

(assert (=> bs!1970691 m!8371352))

(declare-fun m!8371404 () Bool)

(assert (=> bs!1970691 m!8371404))

(assert (=> bs!1970691 m!8371402))

(declare-fun m!8371406 () Bool)

(assert (=> bs!1970691 m!8371406))

(assert (=> b!8006007 d!2387388))

(declare-fun d!2387392 () Bool)

(declare-fun e!4716269 () Bool)

(assert (=> d!2387392 e!4716269))

(declare-fun res!3165925 () Bool)

(assert (=> d!2387392 (=> (not res!3165925) (not e!4716269))))

(declare-fun lt!2715214 () List!74864)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15892 (List!74864) (InoxSet C!43608))

(assert (=> d!2387392 (= res!3165925 (= (content!15892 lt!2715214) ((_ map or) (content!15892 testedP!353) (content!15892 (Cons!74740 (head!16327 lt!2715171) Nil!74740)))))))

(declare-fun e!4716270 () List!74864)

(assert (=> d!2387392 (= lt!2715214 e!4716270)))

(declare-fun c!1469700 () Bool)

(assert (=> d!2387392 (= c!1469700 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387392 (= (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740)) lt!2715214)))

(declare-fun b!8006089 () Bool)

(assert (=> b!8006089 (= e!4716269 (or (not (= (Cons!74740 (head!16327 lt!2715171) Nil!74740) Nil!74740)) (= lt!2715214 testedP!353)))))

(declare-fun b!8006088 () Bool)

(declare-fun res!3165924 () Bool)

(assert (=> b!8006088 (=> (not res!3165924) (not e!4716269))))

(assert (=> b!8006088 (= res!3165924 (= (size!43537 lt!2715214) (+ (size!43537 testedP!353) (size!43537 (Cons!74740 (head!16327 lt!2715171) Nil!74740)))))))

(declare-fun b!8006087 () Bool)

(assert (=> b!8006087 (= e!4716270 (Cons!74740 (h!81188 testedP!353) (++!18461 (t!390607 testedP!353) (Cons!74740 (head!16327 lt!2715171) Nil!74740))))))

(declare-fun b!8006086 () Bool)

(assert (=> b!8006086 (= e!4716270 (Cons!74740 (head!16327 lt!2715171) Nil!74740))))

(assert (= (and d!2387392 c!1469700) b!8006086))

(assert (= (and d!2387392 (not c!1469700)) b!8006087))

(assert (= (and d!2387392 res!3165925) b!8006088))

(assert (= (and b!8006088 res!3165924) b!8006089))

(declare-fun m!8371410 () Bool)

(assert (=> d!2387392 m!8371410))

(declare-fun m!8371412 () Bool)

(assert (=> d!2387392 m!8371412))

(declare-fun m!8371414 () Bool)

(assert (=> d!2387392 m!8371414))

(declare-fun m!8371416 () Bool)

(assert (=> b!8006088 m!8371416))

(assert (=> b!8006088 m!8371346))

(declare-fun m!8371418 () Bool)

(assert (=> b!8006088 m!8371418))

(declare-fun m!8371420 () Bool)

(assert (=> b!8006087 m!8371420))

(assert (=> b!8006007 d!2387392))

(declare-fun d!2387396 () Bool)

(assert (=> d!2387396 (= (head!16327 testedSuffix!271) (h!81188 testedSuffix!271))))

(assert (=> b!8006007 d!2387396))

(declare-fun d!2387400 () Bool)

(assert (=> d!2387400 (= (head!16327 lt!2715171) (h!81188 lt!2715171))))

(assert (=> b!8006007 d!2387400))

(declare-fun b!8006094 () Bool)

(declare-fun e!4716275 () Bool)

(declare-fun e!4716274 () Bool)

(assert (=> b!8006094 (= e!4716275 e!4716274)))

(declare-fun res!3165932 () Bool)

(assert (=> b!8006094 (=> (not res!3165932) (not e!4716274))))

(assert (=> b!8006094 (= res!3165932 (not ((_ is Nil!74740) totalInput!1349)))))

(declare-fun b!8006095 () Bool)

(declare-fun res!3165931 () Bool)

(assert (=> b!8006095 (=> (not res!3165931) (not e!4716274))))

(assert (=> b!8006095 (= res!3165931 (= (head!16327 (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740))) (head!16327 totalInput!1349)))))

(declare-fun b!8006096 () Bool)

(assert (=> b!8006096 (= e!4716274 (isPrefix!6689 (tail!15850 (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740))) (tail!15850 totalInput!1349)))))

(declare-fun e!4716276 () Bool)

(declare-fun b!8006097 () Bool)

(assert (=> b!8006097 (= e!4716276 (>= (size!43537 totalInput!1349) (size!43537 (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740)))))))

(declare-fun d!2387402 () Bool)

(assert (=> d!2387402 e!4716276))

(declare-fun res!3165933 () Bool)

(assert (=> d!2387402 (=> res!3165933 e!4716276)))

(declare-fun lt!2715216 () Bool)

(assert (=> d!2387402 (= res!3165933 (not lt!2715216))))

(assert (=> d!2387402 (= lt!2715216 e!4716275)))

(declare-fun res!3165930 () Bool)

(assert (=> d!2387402 (=> res!3165930 e!4716275)))

(assert (=> d!2387402 (= res!3165930 ((_ is Nil!74740) (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740))))))

(assert (=> d!2387402 (= (isPrefix!6689 (++!18461 testedP!353 (Cons!74740 (head!16327 lt!2715171) Nil!74740)) totalInput!1349) lt!2715216)))

(assert (= (and d!2387402 (not res!3165930)) b!8006094))

(assert (= (and b!8006094 res!3165932) b!8006095))

(assert (= (and b!8006095 res!3165931) b!8006096))

(assert (= (and d!2387402 (not res!3165933)) b!8006097))

(assert (=> b!8006095 m!8371334))

(declare-fun m!8371428 () Bool)

(assert (=> b!8006095 m!8371428))

(assert (=> b!8006095 m!8371364))

(assert (=> b!8006096 m!8371334))

(declare-fun m!8371430 () Bool)

(assert (=> b!8006096 m!8371430))

(assert (=> b!8006096 m!8371366))

(assert (=> b!8006096 m!8371430))

(assert (=> b!8006096 m!8371366))

(declare-fun m!8371432 () Bool)

(assert (=> b!8006096 m!8371432))

(assert (=> b!8006097 m!8371324))

(assert (=> b!8006097 m!8371334))

(declare-fun m!8371434 () Bool)

(assert (=> b!8006097 m!8371434))

(assert (=> b!8006007 d!2387402))

(declare-fun d!2387404 () Bool)

(declare-fun e!4716277 () Bool)

(assert (=> d!2387404 e!4716277))

(declare-fun res!3165935 () Bool)

(assert (=> d!2387404 (=> (not res!3165935) (not e!4716277))))

(declare-fun lt!2715217 () List!74864)

(assert (=> d!2387404 (= res!3165935 (= (content!15892 lt!2715217) ((_ map or) (content!15892 testedP!353) (content!15892 (Cons!74740 lt!2715169 Nil!74740)))))))

(declare-fun e!4716278 () List!74864)

(assert (=> d!2387404 (= lt!2715217 e!4716278)))

(declare-fun c!1469701 () Bool)

(assert (=> d!2387404 (= c!1469701 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387404 (= (++!18461 testedP!353 (Cons!74740 lt!2715169 Nil!74740)) lt!2715217)))

(declare-fun b!8006101 () Bool)

(assert (=> b!8006101 (= e!4716277 (or (not (= (Cons!74740 lt!2715169 Nil!74740) Nil!74740)) (= lt!2715217 testedP!353)))))

(declare-fun b!8006100 () Bool)

(declare-fun res!3165934 () Bool)

(assert (=> b!8006100 (=> (not res!3165934) (not e!4716277))))

(assert (=> b!8006100 (= res!3165934 (= (size!43537 lt!2715217) (+ (size!43537 testedP!353) (size!43537 (Cons!74740 lt!2715169 Nil!74740)))))))

(declare-fun b!8006099 () Bool)

(assert (=> b!8006099 (= e!4716278 (Cons!74740 (h!81188 testedP!353) (++!18461 (t!390607 testedP!353) (Cons!74740 lt!2715169 Nil!74740))))))

(declare-fun b!8006098 () Bool)

(assert (=> b!8006098 (= e!4716278 (Cons!74740 lt!2715169 Nil!74740))))

(assert (= (and d!2387404 c!1469701) b!8006098))

(assert (= (and d!2387404 (not c!1469701)) b!8006099))

(assert (= (and d!2387404 res!3165935) b!8006100))

(assert (= (and b!8006100 res!3165934) b!8006101))

(declare-fun m!8371436 () Bool)

(assert (=> d!2387404 m!8371436))

(assert (=> d!2387404 m!8371412))

(declare-fun m!8371438 () Bool)

(assert (=> d!2387404 m!8371438))

(declare-fun m!8371440 () Bool)

(assert (=> b!8006100 m!8371440))

(assert (=> b!8006100 m!8371346))

(declare-fun m!8371442 () Bool)

(assert (=> b!8006100 m!8371442))

(declare-fun m!8371444 () Bool)

(assert (=> b!8006099 m!8371444))

(assert (=> b!8006007 d!2387404))

(declare-fun d!2387406 () Bool)

(assert (=> d!2387406 (= (++!18461 (++!18461 testedP!353 (Cons!74740 lt!2715169 Nil!74740)) lt!2715175) totalInput!1349)))

(declare-fun lt!2715226 () Unit!170698)

(declare-fun choose!60271 (List!74864 C!43608 List!74864 List!74864) Unit!170698)

(assert (=> d!2387406 (= lt!2715226 (choose!60271 testedP!353 lt!2715169 lt!2715175 totalInput!1349))))

(assert (=> d!2387406 (= (++!18461 testedP!353 (Cons!74740 lt!2715169 lt!2715175)) totalInput!1349)))

(assert (=> d!2387406 (= (lemmaMoveElementToOtherListKeepsConcatEq!3570 testedP!353 lt!2715169 lt!2715175 totalInput!1349) lt!2715226)))

(declare-fun bs!1970695 () Bool)

(assert (= bs!1970695 d!2387406))

(assert (=> bs!1970695 m!8371340))

(assert (=> bs!1970695 m!8371340))

(declare-fun m!8371456 () Bool)

(assert (=> bs!1970695 m!8371456))

(declare-fun m!8371458 () Bool)

(assert (=> bs!1970695 m!8371458))

(declare-fun m!8371460 () Bool)

(assert (=> bs!1970695 m!8371460))

(assert (=> b!8006007 d!2387406))

(declare-fun d!2387412 () Bool)

(assert (=> d!2387412 (= (tail!15850 testedSuffix!271) (t!390607 testedSuffix!271))))

(assert (=> b!8006007 d!2387412))

(declare-fun d!2387416 () Bool)

(declare-fun nullableFct!3825 (Regex!21635) Bool)

(assert (=> d!2387416 (= (nullable!9693 r!15422) (nullableFct!3825 r!15422))))

(declare-fun bs!1970696 () Bool)

(assert (= bs!1970696 d!2387416))

(declare-fun m!8371470 () Bool)

(assert (=> bs!1970696 m!8371470))

(assert (=> b!8006007 d!2387416))

(declare-fun d!2387420 () Bool)

(declare-fun e!4716282 () Bool)

(assert (=> d!2387420 e!4716282))

(declare-fun res!3165941 () Bool)

(assert (=> d!2387420 (=> (not res!3165941) (not e!4716282))))

(declare-fun lt!2715228 () List!74864)

(assert (=> d!2387420 (= res!3165941 (= (content!15892 lt!2715228) ((_ map or) (content!15892 lt!2715182) (content!15892 lt!2715175))))))

(declare-fun e!4716283 () List!74864)

(assert (=> d!2387420 (= lt!2715228 e!4716283)))

(declare-fun c!1469702 () Bool)

(assert (=> d!2387420 (= c!1469702 ((_ is Nil!74740) lt!2715182))))

(assert (=> d!2387420 (= (++!18461 lt!2715182 lt!2715175) lt!2715228)))

(declare-fun b!8006109 () Bool)

(assert (=> b!8006109 (= e!4716282 (or (not (= lt!2715175 Nil!74740)) (= lt!2715228 lt!2715182)))))

(declare-fun b!8006108 () Bool)

(declare-fun res!3165940 () Bool)

(assert (=> b!8006108 (=> (not res!3165940) (not e!4716282))))

(assert (=> b!8006108 (= res!3165940 (= (size!43537 lt!2715228) (+ (size!43537 lt!2715182) (size!43537 lt!2715175))))))

(declare-fun b!8006107 () Bool)

(assert (=> b!8006107 (= e!4716283 (Cons!74740 (h!81188 lt!2715182) (++!18461 (t!390607 lt!2715182) lt!2715175)))))

(declare-fun b!8006106 () Bool)

(assert (=> b!8006106 (= e!4716283 lt!2715175)))

(assert (= (and d!2387420 c!1469702) b!8006106))

(assert (= (and d!2387420 (not c!1469702)) b!8006107))

(assert (= (and d!2387420 res!3165941) b!8006108))

(assert (= (and b!8006108 res!3165940) b!8006109))

(declare-fun m!8371472 () Bool)

(assert (=> d!2387420 m!8371472))

(declare-fun m!8371474 () Bool)

(assert (=> d!2387420 m!8371474))

(declare-fun m!8371476 () Bool)

(assert (=> d!2387420 m!8371476))

(declare-fun m!8371478 () Bool)

(assert (=> b!8006108 m!8371478))

(declare-fun m!8371480 () Bool)

(assert (=> b!8006108 m!8371480))

(declare-fun m!8371482 () Bool)

(assert (=> b!8006108 m!8371482))

(declare-fun m!8371484 () Bool)

(assert (=> b!8006107 m!8371484))

(assert (=> b!8006007 d!2387420))

(declare-fun bm!743765 () Bool)

(declare-fun call!743771 () Bool)

(declare-fun c!1469713 () Bool)

(assert (=> bm!743765 (= call!743771 (validRegex!11939 (ite c!1469713 (regTwo!43783 r!15422) (regTwo!43782 r!15422))))))

(declare-fun b!8006148 () Bool)

(declare-fun res!3165966 () Bool)

(declare-fun e!4716313 () Bool)

(assert (=> b!8006148 (=> res!3165966 e!4716313)))

(assert (=> b!8006148 (= res!3165966 (not ((_ is Concat!30634) r!15422)))))

(declare-fun e!4716312 () Bool)

(assert (=> b!8006148 (= e!4716312 e!4716313)))

(declare-fun b!8006149 () Bool)

(declare-fun e!4716311 () Bool)

(assert (=> b!8006149 (= e!4716311 e!4716312)))

(assert (=> b!8006149 (= c!1469713 ((_ is Union!21635) r!15422))))

(declare-fun b!8006150 () Bool)

(declare-fun e!4716310 () Bool)

(assert (=> b!8006150 (= e!4716313 e!4716310)))

(declare-fun res!3165962 () Bool)

(assert (=> b!8006150 (=> (not res!3165962) (not e!4716310))))

(declare-fun call!743770 () Bool)

(assert (=> b!8006150 (= res!3165962 call!743770)))

(declare-fun b!8006151 () Bool)

(declare-fun e!4716309 () Bool)

(declare-fun call!743772 () Bool)

(assert (=> b!8006151 (= e!4716309 call!743772)))

(declare-fun b!8006152 () Bool)

(declare-fun res!3165963 () Bool)

(declare-fun e!4716308 () Bool)

(assert (=> b!8006152 (=> (not res!3165963) (not e!4716308))))

(assert (=> b!8006152 (= res!3165963 call!743770)))

(assert (=> b!8006152 (= e!4716312 e!4716308)))

(declare-fun d!2387422 () Bool)

(declare-fun res!3165964 () Bool)

(declare-fun e!4716314 () Bool)

(assert (=> d!2387422 (=> res!3165964 e!4716314)))

(assert (=> d!2387422 (= res!3165964 ((_ is ElementMatch!21635) r!15422))))

(assert (=> d!2387422 (= (validRegex!11939 r!15422) e!4716314)))

(declare-fun bm!743766 () Bool)

(declare-fun c!1469712 () Bool)

(assert (=> bm!743766 (= call!743772 (validRegex!11939 (ite c!1469712 (reg!21964 r!15422) (ite c!1469713 (regOne!43783 r!15422) (regOne!43782 r!15422)))))))

(declare-fun bm!743767 () Bool)

(assert (=> bm!743767 (= call!743770 call!743772)))

(declare-fun b!8006153 () Bool)

(assert (=> b!8006153 (= e!4716314 e!4716311)))

(assert (=> b!8006153 (= c!1469712 ((_ is Star!21635) r!15422))))

(declare-fun b!8006154 () Bool)

(assert (=> b!8006154 (= e!4716308 call!743771)))

(declare-fun b!8006155 () Bool)

(assert (=> b!8006155 (= e!4716310 call!743771)))

(declare-fun b!8006156 () Bool)

(assert (=> b!8006156 (= e!4716311 e!4716309)))

(declare-fun res!3165965 () Bool)

(assert (=> b!8006156 (= res!3165965 (not (nullable!9693 (reg!21964 r!15422))))))

(assert (=> b!8006156 (=> (not res!3165965) (not e!4716309))))

(assert (= (and d!2387422 (not res!3165964)) b!8006153))

(assert (= (and b!8006153 c!1469712) b!8006156))

(assert (= (and b!8006153 (not c!1469712)) b!8006149))

(assert (= (and b!8006156 res!3165965) b!8006151))

(assert (= (and b!8006149 c!1469713) b!8006152))

(assert (= (and b!8006149 (not c!1469713)) b!8006148))

(assert (= (and b!8006152 res!3165963) b!8006154))

(assert (= (and b!8006148 (not res!3165966)) b!8006150))

(assert (= (and b!8006150 res!3165962) b!8006155))

(assert (= (or b!8006154 b!8006155) bm!743765))

(assert (= (or b!8006152 b!8006150) bm!743767))

(assert (= (or b!8006151 bm!743767) bm!743766))

(declare-fun m!8371524 () Bool)

(assert (=> bm!743765 m!8371524))

(declare-fun m!8371526 () Bool)

(assert (=> bm!743766 m!8371526))

(declare-fun m!8371528 () Bool)

(assert (=> b!8006156 m!8371528))

(assert (=> start!753276 d!2387422))

(declare-fun d!2387432 () Bool)

(declare-fun e!4716315 () Bool)

(assert (=> d!2387432 e!4716315))

(declare-fun res!3165968 () Bool)

(assert (=> d!2387432 (=> (not res!3165968) (not e!4716315))))

(declare-fun lt!2715237 () List!74864)

(assert (=> d!2387432 (= res!3165968 (= (content!15892 lt!2715237) ((_ map or) (content!15892 testedP!353) (content!15892 testedSuffix!271))))))

(declare-fun e!4716316 () List!74864)

(assert (=> d!2387432 (= lt!2715237 e!4716316)))

(declare-fun c!1469714 () Bool)

(assert (=> d!2387432 (= c!1469714 ((_ is Nil!74740) testedP!353))))

(assert (=> d!2387432 (= (++!18461 testedP!353 testedSuffix!271) lt!2715237)))

(declare-fun b!8006160 () Bool)

(assert (=> b!8006160 (= e!4716315 (or (not (= testedSuffix!271 Nil!74740)) (= lt!2715237 testedP!353)))))

(declare-fun b!8006159 () Bool)

(declare-fun res!3165967 () Bool)

(assert (=> b!8006159 (=> (not res!3165967) (not e!4716315))))

(assert (=> b!8006159 (= res!3165967 (= (size!43537 lt!2715237) (+ (size!43537 testedP!353) (size!43537 testedSuffix!271))))))

(declare-fun b!8006158 () Bool)

(assert (=> b!8006158 (= e!4716316 (Cons!74740 (h!81188 testedP!353) (++!18461 (t!390607 testedP!353) testedSuffix!271)))))

(declare-fun b!8006157 () Bool)

(assert (=> b!8006157 (= e!4716316 testedSuffix!271)))

(assert (= (and d!2387432 c!1469714) b!8006157))

(assert (= (and d!2387432 (not c!1469714)) b!8006158))

(assert (= (and d!2387432 res!3165968) b!8006159))

(assert (= (and b!8006159 res!3165967) b!8006160))

(declare-fun m!8371536 () Bool)

(assert (=> d!2387432 m!8371536))

(assert (=> d!2387432 m!8371412))

(declare-fun m!8371538 () Bool)

(assert (=> d!2387432 m!8371538))

(declare-fun m!8371540 () Bool)

(assert (=> b!8006159 m!8371540))

(assert (=> b!8006159 m!8371346))

(declare-fun m!8371542 () Bool)

(assert (=> b!8006159 m!8371542))

(declare-fun m!8371544 () Bool)

(assert (=> b!8006158 m!8371544))

(assert (=> b!8006003 d!2387432))

(declare-fun bm!743768 () Bool)

(declare-fun c!1469716 () Bool)

(declare-fun call!743774 () Bool)

(assert (=> bm!743768 (= call!743774 (validRegex!11939 (ite c!1469716 (regTwo!43783 (derivativeStep!6616 r!15422 lt!2715169)) (regTwo!43782 (derivativeStep!6616 r!15422 lt!2715169)))))))

(declare-fun b!8006161 () Bool)

(declare-fun res!3165973 () Bool)

(declare-fun e!4716322 () Bool)

(assert (=> b!8006161 (=> res!3165973 e!4716322)))

(assert (=> b!8006161 (= res!3165973 (not ((_ is Concat!30634) (derivativeStep!6616 r!15422 lt!2715169))))))

(declare-fun e!4716321 () Bool)

(assert (=> b!8006161 (= e!4716321 e!4716322)))

(declare-fun b!8006162 () Bool)

(declare-fun e!4716320 () Bool)

(assert (=> b!8006162 (= e!4716320 e!4716321)))

(assert (=> b!8006162 (= c!1469716 ((_ is Union!21635) (derivativeStep!6616 r!15422 lt!2715169)))))

(declare-fun b!8006163 () Bool)

(declare-fun e!4716319 () Bool)

(assert (=> b!8006163 (= e!4716322 e!4716319)))

(declare-fun res!3165969 () Bool)

(assert (=> b!8006163 (=> (not res!3165969) (not e!4716319))))

(declare-fun call!743773 () Bool)

(assert (=> b!8006163 (= res!3165969 call!743773)))

(declare-fun b!8006164 () Bool)

(declare-fun e!4716318 () Bool)

(declare-fun call!743775 () Bool)

(assert (=> b!8006164 (= e!4716318 call!743775)))

(declare-fun b!8006165 () Bool)

(declare-fun res!3165970 () Bool)

(declare-fun e!4716317 () Bool)

(assert (=> b!8006165 (=> (not res!3165970) (not e!4716317))))

(assert (=> b!8006165 (= res!3165970 call!743773)))

(assert (=> b!8006165 (= e!4716321 e!4716317)))

(declare-fun d!2387438 () Bool)

(declare-fun res!3165971 () Bool)

(declare-fun e!4716323 () Bool)

(assert (=> d!2387438 (=> res!3165971 e!4716323)))

(assert (=> d!2387438 (= res!3165971 ((_ is ElementMatch!21635) (derivativeStep!6616 r!15422 lt!2715169)))))

(assert (=> d!2387438 (= (validRegex!11939 (derivativeStep!6616 r!15422 lt!2715169)) e!4716323)))

(declare-fun bm!743769 () Bool)

(declare-fun c!1469715 () Bool)

(assert (=> bm!743769 (= call!743775 (validRegex!11939 (ite c!1469715 (reg!21964 (derivativeStep!6616 r!15422 lt!2715169)) (ite c!1469716 (regOne!43783 (derivativeStep!6616 r!15422 lt!2715169)) (regOne!43782 (derivativeStep!6616 r!15422 lt!2715169))))))))

(declare-fun bm!743770 () Bool)

(assert (=> bm!743770 (= call!743773 call!743775)))

(declare-fun b!8006166 () Bool)

(assert (=> b!8006166 (= e!4716323 e!4716320)))

(assert (=> b!8006166 (= c!1469715 ((_ is Star!21635) (derivativeStep!6616 r!15422 lt!2715169)))))

(declare-fun b!8006167 () Bool)

(assert (=> b!8006167 (= e!4716317 call!743774)))

(declare-fun b!8006168 () Bool)

(assert (=> b!8006168 (= e!4716319 call!743774)))

(declare-fun b!8006169 () Bool)

(assert (=> b!8006169 (= e!4716320 e!4716318)))

(declare-fun res!3165972 () Bool)

(assert (=> b!8006169 (= res!3165972 (not (nullable!9693 (reg!21964 (derivativeStep!6616 r!15422 lt!2715169)))))))

(assert (=> b!8006169 (=> (not res!3165972) (not e!4716318))))

(assert (= (and d!2387438 (not res!3165971)) b!8006166))

(assert (= (and b!8006166 c!1469715) b!8006169))

(assert (= (and b!8006166 (not c!1469715)) b!8006162))

(assert (= (and b!8006169 res!3165972) b!8006164))

(assert (= (and b!8006162 c!1469716) b!8006165))

(assert (= (and b!8006162 (not c!1469716)) b!8006161))

(assert (= (and b!8006165 res!3165970) b!8006167))

(assert (= (and b!8006161 (not res!3165973)) b!8006163))

(assert (= (and b!8006163 res!3165969) b!8006168))

(assert (= (or b!8006167 b!8006168) bm!743768))

(assert (= (or b!8006165 b!8006163) bm!743770))

(assert (= (or b!8006164 bm!743770) bm!743769))

(declare-fun m!8371546 () Bool)

(assert (=> bm!743768 m!8371546))

(declare-fun m!8371548 () Bool)

(assert (=> bm!743769 m!8371548))

(declare-fun m!8371550 () Bool)

(assert (=> b!8006169 m!8371550))

(assert (=> b!8006016 d!2387438))

(declare-fun c!1469748 () Bool)

(declare-fun c!1469747 () Bool)

(declare-fun call!743801 () Regex!21635)

(declare-fun bm!743794 () Bool)

(assert (=> bm!743794 (= call!743801 (derivativeStep!6616 (ite c!1469748 (regTwo!43783 r!15422) (ite c!1469747 (reg!21964 r!15422) (regOne!43782 r!15422))) lt!2715169))))

(declare-fun b!8006235 () Bool)

(declare-fun e!4716359 () Regex!21635)

(assert (=> b!8006235 (= e!4716359 (ite (= lt!2715169 (c!1469688 r!15422)) EmptyExpr!21635 EmptyLang!21635))))

(declare-fun bm!743795 () Bool)

(declare-fun call!743799 () Regex!21635)

(declare-fun call!743802 () Regex!21635)

(assert (=> bm!743795 (= call!743799 call!743802)))

(declare-fun d!2387442 () Bool)

(declare-fun lt!2715246 () Regex!21635)

(assert (=> d!2387442 (validRegex!11939 lt!2715246)))

(declare-fun e!4716362 () Regex!21635)

(assert (=> d!2387442 (= lt!2715246 e!4716362)))

(declare-fun c!1469750 () Bool)

(assert (=> d!2387442 (= c!1469750 (or ((_ is EmptyExpr!21635) r!15422) ((_ is EmptyLang!21635) r!15422)))))

(assert (=> d!2387442 (validRegex!11939 r!15422)))

(assert (=> d!2387442 (= (derivativeStep!6616 r!15422 lt!2715169) lt!2715246)))

(declare-fun bm!743796 () Bool)

(declare-fun call!743800 () Regex!21635)

(assert (=> bm!743796 (= call!743800 call!743801)))

(declare-fun b!8006236 () Bool)

(declare-fun e!4716363 () Regex!21635)

(assert (=> b!8006236 (= e!4716363 (Union!21635 call!743802 call!743801))))

(declare-fun b!8006237 () Bool)

(declare-fun e!4716361 () Regex!21635)

(assert (=> b!8006237 (= e!4716361 (Concat!30634 call!743800 r!15422))))

(declare-fun b!8006238 () Bool)

(assert (=> b!8006238 (= c!1469748 ((_ is Union!21635) r!15422))))

(assert (=> b!8006238 (= e!4716359 e!4716363)))

(declare-fun bm!743797 () Bool)

(declare-fun c!1469749 () Bool)

(assert (=> bm!743797 (= call!743802 (derivativeStep!6616 (ite c!1469748 (regOne!43783 r!15422) (ite c!1469749 (regTwo!43782 r!15422) (regOne!43782 r!15422))) lt!2715169))))

(declare-fun b!8006239 () Bool)

(declare-fun e!4716360 () Regex!21635)

(assert (=> b!8006239 (= e!4716360 (Union!21635 (Concat!30634 call!743799 (regTwo!43782 r!15422)) EmptyLang!21635))))

(declare-fun b!8006240 () Bool)

(assert (=> b!8006240 (= e!4716360 (Union!21635 (Concat!30634 call!743800 (regTwo!43782 r!15422)) call!743799))))

(declare-fun b!8006241 () Bool)

(assert (=> b!8006241 (= e!4716363 e!4716361)))

(assert (=> b!8006241 (= c!1469747 ((_ is Star!21635) r!15422))))

(declare-fun b!8006242 () Bool)

(assert (=> b!8006242 (= e!4716362 e!4716359)))

(declare-fun c!1469751 () Bool)

(assert (=> b!8006242 (= c!1469751 ((_ is ElementMatch!21635) r!15422))))

(declare-fun b!8006243 () Bool)

(assert (=> b!8006243 (= e!4716362 EmptyLang!21635)))

(declare-fun b!8006244 () Bool)

(assert (=> b!8006244 (= c!1469749 (nullable!9693 (regOne!43782 r!15422)))))

(assert (=> b!8006244 (= e!4716361 e!4716360)))

(assert (= (and d!2387442 c!1469750) b!8006243))

(assert (= (and d!2387442 (not c!1469750)) b!8006242))

(assert (= (and b!8006242 c!1469751) b!8006235))

(assert (= (and b!8006242 (not c!1469751)) b!8006238))

(assert (= (and b!8006238 c!1469748) b!8006236))

(assert (= (and b!8006238 (not c!1469748)) b!8006241))

(assert (= (and b!8006241 c!1469747) b!8006237))

(assert (= (and b!8006241 (not c!1469747)) b!8006244))

(assert (= (and b!8006244 c!1469749) b!8006240))

(assert (= (and b!8006244 (not c!1469749)) b!8006239))

(assert (= (or b!8006240 b!8006239) bm!743795))

(assert (= (or b!8006237 b!8006240) bm!743796))

(assert (= (or b!8006236 bm!743796) bm!743794))

(assert (= (or b!8006236 bm!743795) bm!743797))

(declare-fun m!8371568 () Bool)

(assert (=> bm!743794 m!8371568))

(declare-fun m!8371570 () Bool)

(assert (=> d!2387442 m!8371570))

(assert (=> d!2387442 m!8371318))

(declare-fun m!8371572 () Bool)

(assert (=> bm!743797 m!8371572))

(declare-fun m!8371574 () Bool)

(assert (=> b!8006244 m!8371574))

(assert (=> b!8006016 d!2387442))

(declare-fun d!2387450 () Bool)

(declare-fun lt!2715247 () Int)

(assert (=> d!2387450 (>= lt!2715247 0)))

(declare-fun e!4716364 () Int)

(assert (=> d!2387450 (= lt!2715247 e!4716364)))

(declare-fun c!1469752 () Bool)

(assert (=> d!2387450 (= c!1469752 ((_ is Nil!74740) totalInput!1349))))

(assert (=> d!2387450 (= (size!43537 totalInput!1349) lt!2715247)))

(declare-fun b!8006245 () Bool)

(assert (=> b!8006245 (= e!4716364 0)))

(declare-fun b!8006246 () Bool)

(assert (=> b!8006246 (= e!4716364 (+ 1 (size!43537 (t!390607 totalInput!1349))))))

(assert (= (and d!2387450 c!1469752) b!8006245))

(assert (= (and d!2387450 (not c!1469752)) b!8006246))

(declare-fun m!8371576 () Bool)

(assert (=> b!8006246 m!8371576))

(assert (=> b!8006005 d!2387450))

(declare-fun d!2387452 () Bool)

(declare-fun lostCauseFct!595 (Regex!21635) Bool)

(assert (=> d!2387452 (= (lostCause!2032 r!15422) (lostCauseFct!595 r!15422))))

(declare-fun bs!1970700 () Bool)

(assert (= bs!1970700 d!2387452))

(declare-fun m!8371592 () Bool)

(assert (=> bs!1970700 m!8371592))

(assert (=> b!8006015 d!2387452))

(declare-fun d!2387460 () Bool)

(assert (=> d!2387460 (= testedSuffix!271 lt!2715171)))

(declare-fun lt!2715257 () Unit!170698)

(declare-fun choose!60274 (List!74864 List!74864 List!74864 List!74864 List!74864) Unit!170698)

(assert (=> d!2387460 (= lt!2715257 (choose!60274 testedP!353 testedSuffix!271 testedP!353 lt!2715171 totalInput!1349))))

(assert (=> d!2387460 (isPrefix!6689 testedP!353 totalInput!1349)))

(assert (=> d!2387460 (= (lemmaSamePrefixThenSameSuffix!3052 testedP!353 testedSuffix!271 testedP!353 lt!2715171 totalInput!1349) lt!2715257)))

(declare-fun bs!1970702 () Bool)

(assert (= bs!1970702 d!2387460))

(declare-fun m!8371596 () Bool)

(assert (=> bs!1970702 m!8371596))

(assert (=> bs!1970702 m!8371354))

(assert (=> b!8006015 d!2387460))

(declare-fun d!2387464 () Bool)

(declare-fun lt!2715269 () List!74864)

(assert (=> d!2387464 (= (++!18461 testedP!353 lt!2715269) totalInput!1349)))

(declare-fun e!4716381 () List!74864)

(assert (=> d!2387464 (= lt!2715269 e!4716381)))

(declare-fun c!1469760 () Bool)

(assert (=> d!2387464 (= c!1469760 ((_ is Cons!74740) testedP!353))))

(assert (=> d!2387464 (>= (size!43537 totalInput!1349) (size!43537 testedP!353))))

(assert (=> d!2387464 (= (getSuffix!3886 totalInput!1349 testedP!353) lt!2715269)))

(declare-fun b!8006275 () Bool)

(assert (=> b!8006275 (= e!4716381 (getSuffix!3886 (tail!15850 totalInput!1349) (t!390607 testedP!353)))))

(declare-fun b!8006276 () Bool)

(assert (=> b!8006276 (= e!4716381 totalInput!1349)))

(assert (= (and d!2387464 c!1469760) b!8006275))

(assert (= (and d!2387464 (not c!1469760)) b!8006276))

(declare-fun m!8371622 () Bool)

(assert (=> d!2387464 m!8371622))

(assert (=> d!2387464 m!8371324))

(assert (=> d!2387464 m!8371346))

(assert (=> b!8006275 m!8371366))

(assert (=> b!8006275 m!8371366))

(declare-fun m!8371624 () Bool)

(assert (=> b!8006275 m!8371624))

(assert (=> b!8006015 d!2387464))

(declare-fun b!8006300 () Bool)

(declare-fun e!4716389 () Bool)

(declare-fun tp!2395492 () Bool)

(assert (=> b!8006300 (= e!4716389 (and tp_is_empty!53813 tp!2395492))))

(assert (=> b!8006006 (= tp!2395460 e!4716389)))

(assert (= (and b!8006006 ((_ is Cons!74740) (t!390607 totalInput!1349))) b!8006300))

(declare-fun b!8006327 () Bool)

(declare-fun e!4716397 () Bool)

(declare-fun tp!2395520 () Bool)

(assert (=> b!8006327 (= e!4716397 tp!2395520)))

(declare-fun b!8006326 () Bool)

(declare-fun tp!2395522 () Bool)

(declare-fun tp!2395521 () Bool)

(assert (=> b!8006326 (= e!4716397 (and tp!2395522 tp!2395521))))

(declare-fun b!8006328 () Bool)

(declare-fun tp!2395524 () Bool)

(declare-fun tp!2395523 () Bool)

(assert (=> b!8006328 (= e!4716397 (and tp!2395524 tp!2395523))))

(declare-fun b!8006325 () Bool)

(assert (=> b!8006325 (= e!4716397 tp_is_empty!53813)))

(assert (=> b!8006011 (= tp!2395463 e!4716397)))

(assert (= (and b!8006011 ((_ is ElementMatch!21635) (regOne!43782 r!15422))) b!8006325))

(assert (= (and b!8006011 ((_ is Concat!30634) (regOne!43782 r!15422))) b!8006326))

(assert (= (and b!8006011 ((_ is Star!21635) (regOne!43782 r!15422))) b!8006327))

(assert (= (and b!8006011 ((_ is Union!21635) (regOne!43782 r!15422))) b!8006328))

(declare-fun b!8006331 () Bool)

(declare-fun e!4716398 () Bool)

(declare-fun tp!2395525 () Bool)

(assert (=> b!8006331 (= e!4716398 tp!2395525)))

(declare-fun b!8006330 () Bool)

(declare-fun tp!2395527 () Bool)

(declare-fun tp!2395526 () Bool)

(assert (=> b!8006330 (= e!4716398 (and tp!2395527 tp!2395526))))

(declare-fun b!8006332 () Bool)

(declare-fun tp!2395529 () Bool)

(declare-fun tp!2395528 () Bool)

(assert (=> b!8006332 (= e!4716398 (and tp!2395529 tp!2395528))))

(declare-fun b!8006329 () Bool)

(assert (=> b!8006329 (= e!4716398 tp_is_empty!53813)))

(assert (=> b!8006011 (= tp!2395465 e!4716398)))

(assert (= (and b!8006011 ((_ is ElementMatch!21635) (regTwo!43782 r!15422))) b!8006329))

(assert (= (and b!8006011 ((_ is Concat!30634) (regTwo!43782 r!15422))) b!8006330))

(assert (= (and b!8006011 ((_ is Star!21635) (regTwo!43782 r!15422))) b!8006331))

(assert (= (and b!8006011 ((_ is Union!21635) (regTwo!43782 r!15422))) b!8006332))

(declare-fun b!8006335 () Bool)

(declare-fun e!4716399 () Bool)

(declare-fun tp!2395530 () Bool)

(assert (=> b!8006335 (= e!4716399 tp!2395530)))

(declare-fun b!8006334 () Bool)

(declare-fun tp!2395532 () Bool)

(declare-fun tp!2395531 () Bool)

(assert (=> b!8006334 (= e!4716399 (and tp!2395532 tp!2395531))))

(declare-fun b!8006336 () Bool)

(declare-fun tp!2395534 () Bool)

(declare-fun tp!2395533 () Bool)

(assert (=> b!8006336 (= e!4716399 (and tp!2395534 tp!2395533))))

(declare-fun b!8006333 () Bool)

(assert (=> b!8006333 (= e!4716399 tp_is_empty!53813)))

(assert (=> b!8006004 (= tp!2395464 e!4716399)))

(assert (= (and b!8006004 ((_ is ElementMatch!21635) (reg!21964 r!15422))) b!8006333))

(assert (= (and b!8006004 ((_ is Concat!30634) (reg!21964 r!15422))) b!8006334))

(assert (= (and b!8006004 ((_ is Star!21635) (reg!21964 r!15422))) b!8006335))

(assert (= (and b!8006004 ((_ is Union!21635) (reg!21964 r!15422))) b!8006336))

(declare-fun b!8006337 () Bool)

(declare-fun e!4716400 () Bool)

(declare-fun tp!2395535 () Bool)

(assert (=> b!8006337 (= e!4716400 (and tp_is_empty!53813 tp!2395535))))

(assert (=> b!8006009 (= tp!2395459 e!4716400)))

(assert (= (and b!8006009 ((_ is Cons!74740) (t!390607 testedP!353))) b!8006337))

(declare-fun b!8006338 () Bool)

(declare-fun e!4716401 () Bool)

(declare-fun tp!2395536 () Bool)

(assert (=> b!8006338 (= e!4716401 (and tp_is_empty!53813 tp!2395536))))

(assert (=> b!8006014 (= tp!2395466 e!4716401)))

(assert (= (and b!8006014 ((_ is Cons!74740) (t!390607 testedSuffix!271))) b!8006338))

(declare-fun b!8006341 () Bool)

(declare-fun e!4716402 () Bool)

(declare-fun tp!2395537 () Bool)

(assert (=> b!8006341 (= e!4716402 tp!2395537)))

(declare-fun b!8006340 () Bool)

(declare-fun tp!2395539 () Bool)

(declare-fun tp!2395538 () Bool)

(assert (=> b!8006340 (= e!4716402 (and tp!2395539 tp!2395538))))

(declare-fun b!8006342 () Bool)

(declare-fun tp!2395541 () Bool)

(declare-fun tp!2395540 () Bool)

(assert (=> b!8006342 (= e!4716402 (and tp!2395541 tp!2395540))))

(declare-fun b!8006339 () Bool)

(assert (=> b!8006339 (= e!4716402 tp_is_empty!53813)))

(assert (=> b!8006000 (= tp!2395461 e!4716402)))

(assert (= (and b!8006000 ((_ is ElementMatch!21635) (regOne!43783 r!15422))) b!8006339))

(assert (= (and b!8006000 ((_ is Concat!30634) (regOne!43783 r!15422))) b!8006340))

(assert (= (and b!8006000 ((_ is Star!21635) (regOne!43783 r!15422))) b!8006341))

(assert (= (and b!8006000 ((_ is Union!21635) (regOne!43783 r!15422))) b!8006342))

(declare-fun b!8006345 () Bool)

(declare-fun e!4716403 () Bool)

(declare-fun tp!2395542 () Bool)

(assert (=> b!8006345 (= e!4716403 tp!2395542)))

(declare-fun b!8006344 () Bool)

(declare-fun tp!2395544 () Bool)

(declare-fun tp!2395543 () Bool)

(assert (=> b!8006344 (= e!4716403 (and tp!2395544 tp!2395543))))

(declare-fun b!8006346 () Bool)

(declare-fun tp!2395546 () Bool)

(declare-fun tp!2395545 () Bool)

(assert (=> b!8006346 (= e!4716403 (and tp!2395546 tp!2395545))))

(declare-fun b!8006343 () Bool)

(assert (=> b!8006343 (= e!4716403 tp_is_empty!53813)))

(assert (=> b!8006000 (= tp!2395462 e!4716403)))

(assert (= (and b!8006000 ((_ is ElementMatch!21635) (regTwo!43783 r!15422))) b!8006343))

(assert (= (and b!8006000 ((_ is Concat!30634) (regTwo!43783 r!15422))) b!8006344))

(assert (= (and b!8006000 ((_ is Star!21635) (regTwo!43783 r!15422))) b!8006345))

(assert (= (and b!8006000 ((_ is Union!21635) (regTwo!43783 r!15422))) b!8006346))

(check-sat (not b!8006097) (not b!8006342) (not bm!743794) (not b!8006095) (not b!8006108) (not d!2387452) (not d!2387374) (not b!8006107) (not bm!743765) (not b!8006341) (not bm!743768) (not b!8006034) (not b!8006037) (not b!8006156) (not d!2387442) (not b!8006345) (not d!2387420) (not d!2387376) (not b!8006096) (not b!8006331) (not b!8006340) (not b!8006028) (not b!8006330) (not d!2387464) (not b!8006244) (not d!2387388) (not d!2387404) (not d!2387416) (not b!8006338) (not b!8006332) (not b!8006048) (not b!8006087) (not b!8006027) (not d!2387432) (not b!8006275) (not d!2387386) (not b!8006337) (not d!2387370) (not b!8006326) (not d!2387460) (not b!8006169) (not b!8006335) (not b!8006099) (not b!8006158) (not b!8006334) (not bm!743766) (not b!8006336) (not b!8006328) (not b!8006026) (not b!8006100) (not b!8006038) (not bm!743797) (not b!8006047) (not b!8006344) (not b!8006300) (not d!2387392) (not bm!743769) (not d!2387406) (not b!8006246) (not b!8006327) (not b!8006346) (not b!8006036) tp_is_empty!53813 (not b!8006159) (not b!8006088) (not b!8006046))
(check-sat)
