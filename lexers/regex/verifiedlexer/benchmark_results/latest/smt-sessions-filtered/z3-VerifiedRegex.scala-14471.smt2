; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753068 () Bool)

(assert start!753068)

(declare-fun b!8004562 () Bool)

(declare-fun e!4715320 () Bool)

(declare-fun e!4715316 () Bool)

(assert (=> b!8004562 (= e!4715320 e!4715316)))

(declare-fun res!3165268 () Bool)

(assert (=> b!8004562 (=> res!3165268 e!4715316)))

(declare-datatypes ((C!43584 0))(
  ( (C!43585 (val!32340 Int)) )
))
(declare-datatypes ((Regex!21623 0))(
  ( (ElementMatch!21623 (c!1469498 C!43584)) (Concat!30622 (regOne!43758 Regex!21623) (regTwo!43758 Regex!21623)) (EmptyExpr!21623) (Star!21623 (reg!21952 Regex!21623)) (EmptyLang!21623) (Union!21623 (regOne!43759 Regex!21623) (regTwo!43759 Regex!21623)) )
))
(declare-fun r!15422 () Regex!21623)

(declare-fun lostCause!2020 (Regex!21623) Bool)

(assert (=> b!8004562 (= res!3165268 (lostCause!2020 r!15422))))

(declare-datatypes ((List!74852 0))(
  ( (Nil!74728) (Cons!74728 (h!81176 C!43584) (t!390595 List!74852)) )
))
(declare-fun testedSuffix!271 () List!74852)

(declare-fun lt!2714412 () List!74852)

(assert (=> b!8004562 (and (= testedSuffix!271 lt!2714412) (= lt!2714412 testedSuffix!271))))

(declare-fun totalInput!1349 () List!74852)

(declare-datatypes ((Unit!170650 0))(
  ( (Unit!170651) )
))
(declare-fun lt!2714415 () Unit!170650)

(declare-fun testedP!353 () List!74852)

(declare-fun lemmaSamePrefixThenSameSuffix!3040 (List!74852 List!74852 List!74852 List!74852 List!74852) Unit!170650)

(assert (=> b!8004562 (= lt!2714415 (lemmaSamePrefixThenSameSuffix!3040 testedP!353 testedSuffix!271 testedP!353 lt!2714412 totalInput!1349))))

(declare-fun getSuffix!3874 (List!74852 List!74852) List!74852)

(assert (=> b!8004562 (= lt!2714412 (getSuffix!3874 totalInput!1349 testedP!353))))

(declare-fun b!8004564 () Bool)

(declare-fun e!4715322 () Bool)

(declare-fun tp_is_empty!53789 () Bool)

(declare-fun tp!2394934 () Bool)

(assert (=> b!8004564 (= e!4715322 (and tp_is_empty!53789 tp!2394934))))

(declare-fun b!8004565 () Bool)

(declare-fun e!4715317 () Bool)

(assert (=> b!8004565 (= e!4715316 e!4715317)))

(declare-fun res!3165266 () Bool)

(assert (=> b!8004565 (=> res!3165266 e!4715317)))

(declare-fun lt!2714417 () Int)

(declare-fun lt!2714416 () Int)

(assert (=> b!8004565 (= res!3165266 (>= lt!2714417 lt!2714416))))

(declare-fun lt!2714419 () Unit!170650)

(declare-fun e!4715321 () Unit!170650)

(assert (=> b!8004565 (= lt!2714419 e!4715321)))

(declare-fun c!1469497 () Bool)

(assert (=> b!8004565 (= c!1469497 (= lt!2714417 lt!2714416))))

(assert (=> b!8004565 (<= lt!2714417 lt!2714416)))

(declare-fun lt!2714418 () Unit!170650)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1178 (List!74852 List!74852) Unit!170650)

(assert (=> b!8004565 (= lt!2714418 (lemmaIsPrefixThenSmallerEqSize!1178 testedP!353 totalInput!1349))))

(declare-fun b!8004566 () Bool)

(declare-fun e!4715314 () Bool)

(declare-fun tp!2394932 () Bool)

(assert (=> b!8004566 (= e!4715314 (and tp_is_empty!53789 tp!2394932))))

(declare-fun b!8004567 () Bool)

(declare-fun res!3165263 () Bool)

(assert (=> b!8004567 (=> res!3165263 e!4715316)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8004567 (= res!3165263 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8004568 () Bool)

(declare-fun e!4715323 () Bool)

(declare-fun tp!2394936 () Bool)

(assert (=> b!8004568 (= e!4715323 tp!2394936)))

(declare-fun b!8004569 () Bool)

(assert (=> b!8004569 (= e!4715317 true)))

(declare-fun isPrefix!6677 (List!74852 List!74852) Bool)

(declare-fun ++!18449 (List!74852 List!74852) List!74852)

(declare-fun head!16315 (List!74852) C!43584)

(assert (=> b!8004569 (isPrefix!6677 (++!18449 testedP!353 (Cons!74728 (head!16315 lt!2714412) Nil!74728)) totalInput!1349)))

(declare-fun lt!2714414 () Unit!170650)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1374 (List!74852 List!74852) Unit!170650)

(assert (=> b!8004569 (= lt!2714414 (lemmaAddHeadSuffixToPrefixStillPrefix!1374 testedP!353 totalInput!1349))))

(declare-fun lt!2714423 () List!74852)

(assert (=> b!8004569 (= lt!2714423 (++!18449 testedP!353 (Cons!74728 (head!16315 testedSuffix!271) Nil!74728)))))

(declare-fun b!8004570 () Bool)

(declare-fun e!4715313 () Bool)

(declare-fun tp!2394937 () Bool)

(assert (=> b!8004570 (= e!4715313 (and tp_is_empty!53789 tp!2394937))))

(declare-fun b!8004571 () Bool)

(declare-fun Unit!170652 () Unit!170650)

(assert (=> b!8004571 (= e!4715321 Unit!170652)))

(declare-fun lt!2714413 () Unit!170650)

(declare-fun lemmaIsPrefixRefl!4129 (List!74852 List!74852) Unit!170650)

(assert (=> b!8004571 (= lt!2714413 (lemmaIsPrefixRefl!4129 totalInput!1349 totalInput!1349))))

(assert (=> b!8004571 (isPrefix!6677 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714422 () Unit!170650)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1703 (List!74852 List!74852 List!74852) Unit!170650)

(assert (=> b!8004571 (= lt!2714422 (lemmaIsPrefixSameLengthThenSameList!1703 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8004571 false))

(declare-fun b!8004572 () Bool)

(declare-fun tp!2394938 () Bool)

(declare-fun tp!2394935 () Bool)

(assert (=> b!8004572 (= e!4715323 (and tp!2394938 tp!2394935))))

(declare-fun b!8004573 () Bool)

(declare-fun tp!2394931 () Bool)

(declare-fun tp!2394933 () Bool)

(assert (=> b!8004573 (= e!4715323 (and tp!2394931 tp!2394933))))

(declare-fun b!8004574 () Bool)

(declare-fun e!4715315 () Bool)

(declare-fun e!4715319 () Bool)

(assert (=> b!8004574 (= e!4715315 e!4715319)))

(declare-fun res!3165262 () Bool)

(assert (=> b!8004574 (=> (not res!3165262) (not e!4715319))))

(assert (=> b!8004574 (= res!3165262 (= totalInputSize!629 lt!2714416))))

(declare-fun size!43525 (List!74852) Int)

(assert (=> b!8004574 (= lt!2714416 (size!43525 totalInput!1349))))

(declare-fun b!8004575 () Bool)

(declare-fun e!4715312 () Bool)

(declare-fun e!4715318 () Bool)

(assert (=> b!8004575 (= e!4715312 e!4715318)))

(declare-fun res!3165267 () Bool)

(assert (=> b!8004575 (=> (not res!3165267) (not e!4715318))))

(declare-fun lt!2714421 () List!74852)

(assert (=> b!8004575 (= res!3165267 (= lt!2714421 totalInput!1349))))

(assert (=> b!8004575 (= lt!2714421 (++!18449 testedP!353 testedSuffix!271))))

(declare-fun b!8004576 () Bool)

(assert (=> b!8004576 (= e!4715323 tp_is_empty!53789)))

(declare-fun b!8004563 () Bool)

(declare-fun Unit!170653 () Unit!170650)

(assert (=> b!8004563 (= e!4715321 Unit!170653)))

(declare-fun res!3165264 () Bool)

(assert (=> start!753068 (=> (not res!3165264) (not e!4715312))))

(declare-fun validRegex!11927 (Regex!21623) Bool)

(assert (=> start!753068 (= res!3165264 (validRegex!11927 r!15422))))

(assert (=> start!753068 e!4715312))

(assert (=> start!753068 e!4715322))

(assert (=> start!753068 true))

(assert (=> start!753068 e!4715313))

(assert (=> start!753068 e!4715323))

(assert (=> start!753068 e!4715314))

(declare-fun b!8004577 () Bool)

(assert (=> b!8004577 (= e!4715318 e!4715315)))

(declare-fun res!3165265 () Bool)

(assert (=> b!8004577 (=> (not res!3165265) (not e!4715315))))

(assert (=> b!8004577 (= res!3165265 (= testedPSize!271 lt!2714417))))

(assert (=> b!8004577 (= lt!2714417 (size!43525 testedP!353))))

(declare-fun b!8004578 () Bool)

(assert (=> b!8004578 (= e!4715319 (not e!4715320))))

(declare-fun res!3165261 () Bool)

(assert (=> b!8004578 (=> res!3165261 e!4715320)))

(assert (=> b!8004578 (= res!3165261 (not (isPrefix!6677 testedP!353 totalInput!1349)))))

(assert (=> b!8004578 (isPrefix!6677 testedP!353 lt!2714421)))

(declare-fun lt!2714420 () Unit!170650)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3908 (List!74852 List!74852) Unit!170650)

(assert (=> b!8004578 (= lt!2714420 (lemmaConcatTwoListThenFirstIsPrefix!3908 testedP!353 testedSuffix!271))))

(assert (= (and start!753068 res!3165264) b!8004575))

(assert (= (and b!8004575 res!3165267) b!8004577))

(assert (= (and b!8004577 res!3165265) b!8004574))

(assert (= (and b!8004574 res!3165262) b!8004578))

(assert (= (and b!8004578 (not res!3165261)) b!8004562))

(assert (= (and b!8004562 (not res!3165268)) b!8004567))

(assert (= (and b!8004567 (not res!3165263)) b!8004565))

(assert (= (and b!8004565 c!1469497) b!8004571))

(assert (= (and b!8004565 (not c!1469497)) b!8004563))

(assert (= (and b!8004565 (not res!3165266)) b!8004569))

(get-info :version)

(assert (= (and start!753068 ((_ is Cons!74728) totalInput!1349)) b!8004564))

(assert (= (and start!753068 ((_ is Cons!74728) testedSuffix!271)) b!8004570))

(assert (= (and start!753068 ((_ is ElementMatch!21623) r!15422)) b!8004576))

(assert (= (and start!753068 ((_ is Concat!30622) r!15422)) b!8004572))

(assert (= (and start!753068 ((_ is Star!21623) r!15422)) b!8004568))

(assert (= (and start!753068 ((_ is Union!21623) r!15422)) b!8004573))

(assert (= (and start!753068 ((_ is Cons!74728) testedP!353)) b!8004566))

(declare-fun m!8370082 () Bool)

(assert (=> b!8004575 m!8370082))

(declare-fun m!8370084 () Bool)

(assert (=> b!8004571 m!8370084))

(declare-fun m!8370086 () Bool)

(assert (=> b!8004571 m!8370086))

(declare-fun m!8370088 () Bool)

(assert (=> b!8004571 m!8370088))

(declare-fun m!8370090 () Bool)

(assert (=> b!8004562 m!8370090))

(declare-fun m!8370092 () Bool)

(assert (=> b!8004562 m!8370092))

(declare-fun m!8370094 () Bool)

(assert (=> b!8004562 m!8370094))

(declare-fun m!8370096 () Bool)

(assert (=> b!8004577 m!8370096))

(declare-fun m!8370098 () Bool)

(assert (=> b!8004565 m!8370098))

(declare-fun m!8370100 () Bool)

(assert (=> b!8004578 m!8370100))

(declare-fun m!8370102 () Bool)

(assert (=> b!8004578 m!8370102))

(declare-fun m!8370104 () Bool)

(assert (=> b!8004578 m!8370104))

(declare-fun m!8370106 () Bool)

(assert (=> b!8004574 m!8370106))

(declare-fun m!8370108 () Bool)

(assert (=> start!753068 m!8370108))

(declare-fun m!8370110 () Bool)

(assert (=> b!8004569 m!8370110))

(declare-fun m!8370112 () Bool)

(assert (=> b!8004569 m!8370112))

(declare-fun m!8370114 () Bool)

(assert (=> b!8004569 m!8370114))

(declare-fun m!8370116 () Bool)

(assert (=> b!8004569 m!8370116))

(declare-fun m!8370118 () Bool)

(assert (=> b!8004569 m!8370118))

(assert (=> b!8004569 m!8370112))

(declare-fun m!8370120 () Bool)

(assert (=> b!8004569 m!8370120))

(check-sat (not b!8004575) (not b!8004565) (not b!8004577) (not b!8004562) (not b!8004572) (not b!8004564) (not b!8004574) tp_is_empty!53789 (not b!8004568) (not b!8004569) (not b!8004578) (not b!8004570) (not b!8004571) (not b!8004573) (not start!753068) (not b!8004566))
(check-sat)
