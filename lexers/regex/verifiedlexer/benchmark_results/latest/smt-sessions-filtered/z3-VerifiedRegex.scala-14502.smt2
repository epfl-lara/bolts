; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754188 () Bool)

(assert start!754188)

(declare-fun b!8014083 () Bool)

(declare-fun e!4720870 () Bool)

(declare-fun tp_is_empty!53913 () Bool)

(assert (=> b!8014083 (= e!4720870 tp_is_empty!53913)))

(declare-fun b!8014084 () Bool)

(declare-fun e!4720876 () Bool)

(declare-fun tp!2398728 () Bool)

(assert (=> b!8014084 (= e!4720876 (and tp_is_empty!53913 tp!2398728))))

(declare-fun b!8014085 () Bool)

(declare-fun e!4720877 () Bool)

(declare-fun e!4720880 () Bool)

(assert (=> b!8014085 (= e!4720877 e!4720880)))

(declare-fun res!3168858 () Bool)

(assert (=> b!8014085 (=> res!3168858 e!4720880)))

(declare-datatypes ((C!43708 0))(
  ( (C!43709 (val!32402 Int)) )
))
(declare-datatypes ((Regex!21685 0))(
  ( (ElementMatch!21685 (c!1470868 C!43708)) (Concat!30684 (regOne!43882 Regex!21685) (regTwo!43882 Regex!21685)) (EmptyExpr!21685) (Star!21685 (reg!22014 Regex!21685)) (EmptyLang!21685) (Union!21685 (regOne!43883 Regex!21685) (regTwo!43883 Regex!21685)) )
))
(declare-fun r!15422 () Regex!21685)

(declare-fun lostCause!2072 (Regex!21685) Bool)

(assert (=> b!8014085 (= res!3168858 (lostCause!2072 r!15422))))

(declare-datatypes ((List!74914 0))(
  ( (Nil!74790) (Cons!74790 (h!81238 C!43708) (t!390657 List!74914)) )
))
(declare-fun testedSuffix!271 () List!74914)

(declare-fun lt!2717810 () List!74914)

(assert (=> b!8014085 (and (= testedSuffix!271 lt!2717810) (= lt!2717810 testedSuffix!271))))

(declare-fun totalInput!1349 () List!74914)

(declare-datatypes ((Unit!170846 0))(
  ( (Unit!170847) )
))
(declare-fun lt!2717811 () Unit!170846)

(declare-fun testedP!353 () List!74914)

(declare-fun lemmaSamePrefixThenSameSuffix!3094 (List!74914 List!74914 List!74914 List!74914 List!74914) Unit!170846)

(assert (=> b!8014085 (= lt!2717811 (lemmaSamePrefixThenSameSuffix!3094 testedP!353 testedSuffix!271 testedP!353 lt!2717810 totalInput!1349))))

(declare-fun getSuffix!3932 (List!74914 List!74914) List!74914)

(assert (=> b!8014085 (= lt!2717810 (getSuffix!3932 totalInput!1349 testedP!353))))

(declare-fun b!8014086 () Bool)

(declare-fun e!4720873 () Unit!170846)

(declare-fun Unit!170848 () Unit!170846)

(assert (=> b!8014086 (= e!4720873 Unit!170848)))

(declare-fun lt!2717800 () Unit!170846)

(declare-fun lemmaIsPrefixRefl!4179 (List!74914 List!74914) Unit!170846)

(assert (=> b!8014086 (= lt!2717800 (lemmaIsPrefixRefl!4179 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6737 (List!74914 List!74914) Bool)

(assert (=> b!8014086 (isPrefix!6737 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717799 () Unit!170846)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1749 (List!74914 List!74914 List!74914) Unit!170846)

(assert (=> b!8014086 (= lt!2717799 (lemmaIsPrefixSameLengthThenSameList!1749 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8014086 false))

(declare-fun b!8014087 () Bool)

(declare-fun e!4720881 () Bool)

(declare-fun e!4720869 () Bool)

(assert (=> b!8014087 (= e!4720881 e!4720869)))

(declare-fun res!3168860 () Bool)

(assert (=> b!8014087 (=> res!3168860 e!4720869)))

(declare-fun nullable!9727 (Regex!21685) Bool)

(assert (=> b!8014087 (= res!3168860 (not (nullable!9727 r!15422)))))

(declare-fun lt!2717803 () List!74914)

(declare-fun lt!2717806 () List!74914)

(declare-fun ++!18511 (List!74914 List!74914) List!74914)

(assert (=> b!8014087 (= (++!18511 lt!2717803 lt!2717806) totalInput!1349)))

(declare-fun lt!2717801 () C!43708)

(declare-fun lt!2717805 () Unit!170846)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3592 (List!74914 C!43708 List!74914 List!74914) Unit!170846)

(assert (=> b!8014087 (= lt!2717805 (lemmaMoveElementToOtherListKeepsConcatEq!3592 testedP!353 lt!2717801 lt!2717806 totalInput!1349))))

(declare-fun tail!15882 (List!74914) List!74914)

(assert (=> b!8014087 (= lt!2717806 (tail!15882 testedSuffix!271))))

(declare-fun head!16359 (List!74914) C!43708)

(assert (=> b!8014087 (isPrefix!6737 (++!18511 testedP!353 (Cons!74790 (head!16359 lt!2717810) Nil!74790)) totalInput!1349)))

(declare-fun lt!2717808 () Unit!170846)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1410 (List!74914 List!74914) Unit!170846)

(assert (=> b!8014087 (= lt!2717808 (lemmaAddHeadSuffixToPrefixStillPrefix!1410 testedP!353 totalInput!1349))))

(assert (=> b!8014087 (= lt!2717803 (++!18511 testedP!353 (Cons!74790 lt!2717801 Nil!74790)))))

(assert (=> b!8014087 (= lt!2717801 (head!16359 testedSuffix!271))))

(declare-fun b!8014088 () Bool)

(declare-fun tp!2398724 () Bool)

(declare-fun tp!2398727 () Bool)

(assert (=> b!8014088 (= e!4720870 (and tp!2398724 tp!2398727))))

(declare-fun b!8014089 () Bool)

(declare-fun e!4720871 () Bool)

(declare-fun e!4720878 () Bool)

(assert (=> b!8014089 (= e!4720871 e!4720878)))

(declare-fun res!3168861 () Bool)

(assert (=> b!8014089 (=> (not res!3168861) (not e!4720878))))

(declare-fun lt!2717802 () List!74914)

(assert (=> b!8014089 (= res!3168861 (= lt!2717802 totalInput!1349))))

(assert (=> b!8014089 (= lt!2717802 (++!18511 testedP!353 testedSuffix!271))))

(declare-fun b!8014090 () Bool)

(declare-fun e!4720875 () Bool)

(declare-fun tp!2398729 () Bool)

(assert (=> b!8014090 (= e!4720875 (and tp_is_empty!53913 tp!2398729))))

(declare-fun b!8014091 () Bool)

(declare-fun e!4720879 () Bool)

(declare-fun tp!2398730 () Bool)

(assert (=> b!8014091 (= e!4720879 (and tp_is_empty!53913 tp!2398730))))

(declare-fun b!8014092 () Bool)

(declare-fun Unit!170849 () Unit!170846)

(assert (=> b!8014092 (= e!4720873 Unit!170849)))

(declare-fun b!8014094 () Bool)

(declare-fun tp!2398723 () Bool)

(assert (=> b!8014094 (= e!4720870 tp!2398723)))

(declare-fun b!8014095 () Bool)

(declare-fun e!4720872 () Bool)

(assert (=> b!8014095 (= e!4720878 e!4720872)))

(declare-fun res!3168856 () Bool)

(assert (=> b!8014095 (=> (not res!3168856) (not e!4720872))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2717796 () Int)

(assert (=> b!8014095 (= res!3168856 (= testedPSize!271 lt!2717796))))

(declare-fun size!43587 (List!74914) Int)

(assert (=> b!8014095 (= lt!2717796 (size!43587 testedP!353))))

(declare-fun b!8014096 () Bool)

(declare-fun res!3168857 () Bool)

(assert (=> b!8014096 (=> res!3168857 e!4720880)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8014096 (= res!3168857 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8014097 () Bool)

(assert (=> b!8014097 (= e!4720869 true)))

(declare-datatypes ((tuple2!70768 0))(
  ( (tuple2!70769 (_1!38687 List!74914) (_2!38687 List!74914)) )
))
(declare-fun lt!2717809 () tuple2!70768)

(declare-fun findLongestMatchInner!2334 (Regex!21685 List!74914 Int List!74914 List!74914 Int) tuple2!70768)

(declare-fun derivativeStep!6636 (Regex!21685 C!43708) Regex!21685)

(assert (=> b!8014097 (= lt!2717809 (findLongestMatchInner!2334 (derivativeStep!6636 r!15422 lt!2717801) lt!2717803 (+ 1 testedPSize!271) lt!2717806 totalInput!1349 totalInputSize!629))))

(declare-fun b!8014098 () Bool)

(assert (=> b!8014098 (= e!4720880 e!4720881)))

(declare-fun res!3168863 () Bool)

(assert (=> b!8014098 (=> res!3168863 e!4720881)))

(declare-fun lt!2717798 () Int)

(assert (=> b!8014098 (= res!3168863 (>= lt!2717796 lt!2717798))))

(declare-fun lt!2717797 () Unit!170846)

(assert (=> b!8014098 (= lt!2717797 e!4720873)))

(declare-fun c!1470867 () Bool)

(assert (=> b!8014098 (= c!1470867 (= lt!2717796 lt!2717798))))

(assert (=> b!8014098 (<= lt!2717796 lt!2717798)))

(declare-fun lt!2717804 () Unit!170846)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1220 (List!74914 List!74914) Unit!170846)

(assert (=> b!8014098 (= lt!2717804 (lemmaIsPrefixThenSmallerEqSize!1220 testedP!353 totalInput!1349))))

(declare-fun res!3168864 () Bool)

(assert (=> start!754188 (=> (not res!3168864) (not e!4720871))))

(declare-fun validRegex!11989 (Regex!21685) Bool)

(assert (=> start!754188 (= res!3168864 (validRegex!11989 r!15422))))

(assert (=> start!754188 e!4720871))

(assert (=> start!754188 e!4720875))

(assert (=> start!754188 true))

(assert (=> start!754188 e!4720879))

(assert (=> start!754188 e!4720870))

(assert (=> start!754188 e!4720876))

(declare-fun b!8014093 () Bool)

(declare-fun e!4720874 () Bool)

(assert (=> b!8014093 (= e!4720874 (not e!4720877))))

(declare-fun res!3168859 () Bool)

(assert (=> b!8014093 (=> res!3168859 e!4720877)))

(assert (=> b!8014093 (= res!3168859 (not (isPrefix!6737 testedP!353 totalInput!1349)))))

(assert (=> b!8014093 (isPrefix!6737 testedP!353 lt!2717802)))

(declare-fun lt!2717807 () Unit!170846)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3968 (List!74914 List!74914) Unit!170846)

(assert (=> b!8014093 (= lt!2717807 (lemmaConcatTwoListThenFirstIsPrefix!3968 testedP!353 testedSuffix!271))))

(declare-fun b!8014099 () Bool)

(declare-fun tp!2398725 () Bool)

(declare-fun tp!2398726 () Bool)

(assert (=> b!8014099 (= e!4720870 (and tp!2398725 tp!2398726))))

(declare-fun b!8014100 () Bool)

(assert (=> b!8014100 (= e!4720872 e!4720874)))

(declare-fun res!3168862 () Bool)

(assert (=> b!8014100 (=> (not res!3168862) (not e!4720874))))

(assert (=> b!8014100 (= res!3168862 (= totalInputSize!629 lt!2717798))))

(assert (=> b!8014100 (= lt!2717798 (size!43587 totalInput!1349))))

(assert (= (and start!754188 res!3168864) b!8014089))

(assert (= (and b!8014089 res!3168861) b!8014095))

(assert (= (and b!8014095 res!3168856) b!8014100))

(assert (= (and b!8014100 res!3168862) b!8014093))

(assert (= (and b!8014093 (not res!3168859)) b!8014085))

(assert (= (and b!8014085 (not res!3168858)) b!8014096))

(assert (= (and b!8014096 (not res!3168857)) b!8014098))

(assert (= (and b!8014098 c!1470867) b!8014086))

(assert (= (and b!8014098 (not c!1470867)) b!8014092))

(assert (= (and b!8014098 (not res!3168863)) b!8014087))

(assert (= (and b!8014087 (not res!3168860)) b!8014097))

(get-info :version)

(assert (= (and start!754188 ((_ is Cons!74790) totalInput!1349)) b!8014090))

(assert (= (and start!754188 ((_ is Cons!74790) testedSuffix!271)) b!8014091))

(assert (= (and start!754188 ((_ is ElementMatch!21685) r!15422)) b!8014083))

(assert (= (and start!754188 ((_ is Concat!30684) r!15422)) b!8014099))

(assert (= (and start!754188 ((_ is Star!21685) r!15422)) b!8014094))

(assert (= (and start!754188 ((_ is Union!21685) r!15422)) b!8014088))

(assert (= (and start!754188 ((_ is Cons!74790) testedP!353)) b!8014084))

(declare-fun m!8377262 () Bool)

(assert (=> b!8014100 m!8377262))

(declare-fun m!8377264 () Bool)

(assert (=> b!8014089 m!8377264))

(declare-fun m!8377266 () Bool)

(assert (=> b!8014095 m!8377266))

(declare-fun m!8377268 () Bool)

(assert (=> start!754188 m!8377268))

(declare-fun m!8377270 () Bool)

(assert (=> b!8014086 m!8377270))

(declare-fun m!8377272 () Bool)

(assert (=> b!8014086 m!8377272))

(declare-fun m!8377274 () Bool)

(assert (=> b!8014086 m!8377274))

(declare-fun m!8377276 () Bool)

(assert (=> b!8014093 m!8377276))

(declare-fun m!8377278 () Bool)

(assert (=> b!8014093 m!8377278))

(declare-fun m!8377280 () Bool)

(assert (=> b!8014093 m!8377280))

(declare-fun m!8377282 () Bool)

(assert (=> b!8014098 m!8377282))

(declare-fun m!8377284 () Bool)

(assert (=> b!8014087 m!8377284))

(declare-fun m!8377286 () Bool)

(assert (=> b!8014087 m!8377286))

(declare-fun m!8377288 () Bool)

(assert (=> b!8014087 m!8377288))

(declare-fun m!8377290 () Bool)

(assert (=> b!8014087 m!8377290))

(declare-fun m!8377292 () Bool)

(assert (=> b!8014087 m!8377292))

(declare-fun m!8377294 () Bool)

(assert (=> b!8014087 m!8377294))

(declare-fun m!8377296 () Bool)

(assert (=> b!8014087 m!8377296))

(declare-fun m!8377298 () Bool)

(assert (=> b!8014087 m!8377298))

(declare-fun m!8377300 () Bool)

(assert (=> b!8014087 m!8377300))

(assert (=> b!8014087 m!8377290))

(declare-fun m!8377302 () Bool)

(assert (=> b!8014087 m!8377302))

(declare-fun m!8377304 () Bool)

(assert (=> b!8014097 m!8377304))

(assert (=> b!8014097 m!8377304))

(declare-fun m!8377306 () Bool)

(assert (=> b!8014097 m!8377306))

(declare-fun m!8377308 () Bool)

(assert (=> b!8014085 m!8377308))

(declare-fun m!8377310 () Bool)

(assert (=> b!8014085 m!8377310))

(declare-fun m!8377312 () Bool)

(assert (=> b!8014085 m!8377312))

(check-sat (not b!8014084) (not b!8014097) (not b!8014090) (not b!8014089) (not b!8014086) (not b!8014098) (not b!8014100) (not b!8014088) (not b!8014095) (not b!8014087) (not start!754188) (not b!8014085) (not b!8014094) (not b!8014099) (not b!8014093) (not b!8014091) tp_is_empty!53913)
(check-sat)
