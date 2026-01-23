; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751148 () Bool)

(assert start!751148)

(declare-fun b!7964082 () Bool)

(declare-fun e!4696406 () Bool)

(assert (=> b!7964082 (= e!4696406 true)))

(declare-fun e!4696403 () Bool)

(assert (=> b!7964082 e!4696403))

(declare-fun res!3156084 () Bool)

(assert (=> b!7964082 (=> res!3156084 e!4696403)))

(declare-datatypes ((C!43348 0))(
  ( (C!43349 (val!32222 Int)) )
))
(declare-datatypes ((List!74734 0))(
  ( (Nil!74610) (Cons!74610 (h!81058 C!43348) (t!390477 List!74734)) )
))
(declare-datatypes ((tuple2!70672 0))(
  ( (tuple2!70673 (_1!38639 List!74734) (_2!38639 List!74734)) )
))
(declare-fun lt!2704706 () tuple2!70672)

(declare-fun isEmpty!42911 (List!74734) Bool)

(assert (=> b!7964082 (= res!3156084 (isEmpty!42911 (_1!38639 lt!2704706)))))

(declare-fun lt!2704696 () Int)

(declare-fun input!7927 () List!74734)

(declare-datatypes ((Regex!21505 0))(
  ( (ElementMatch!21505 (c!1462576 C!43348)) (Concat!30504 (regOne!43522 Regex!21505) (regTwo!43522 Regex!21505)) (EmptyExpr!21505) (Star!21505 (reg!21834 Regex!21505)) (EmptyLang!21505) (Union!21505 (regOne!43523 Regex!21505) (regTwo!43523 Regex!21505)) )
))
(declare-fun lt!2704704 () Regex!21505)

(declare-fun lt!2704702 () List!74734)

(declare-fun findLongestMatchInner!2286 (Regex!21505 List!74734 Int List!74734 List!74734 Int) tuple2!70672)

(declare-fun size!43441 (List!74734) Int)

(declare-fun getSuffix!3808 (List!74734 List!74734) List!74734)

(assert (=> b!7964082 (= lt!2704706 (findLongestMatchInner!2286 lt!2704704 lt!2704702 (size!43441 lt!2704702) (getSuffix!3808 input!7927 lt!2704702) input!7927 lt!2704696))))

(declare-datatypes ((Unit!170110 0))(
  ( (Unit!170111) )
))
(declare-fun lt!2704708 () Unit!170110)

(declare-fun baseR!116 () Regex!21505)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!49 (Regex!21505 Regex!21505 List!74734 List!74734) Unit!170110)

(assert (=> b!7964082 (= lt!2704708 (longestMatchIsAcceptedByMatchOrIsEmptyRec!49 baseR!116 lt!2704704 lt!2704702 input!7927))))

(declare-fun derivative!691 (Regex!21505 List!74734) Regex!21505)

(assert (=> b!7964082 (= (derivative!691 baseR!116 lt!2704702) lt!2704704)))

(declare-fun lt!2704707 () Unit!170110)

(declare-fun lt!2704697 () C!43348)

(declare-fun testedP!447 () List!74734)

(declare-fun r!24602 () Regex!21505)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!217 (Regex!21505 Regex!21505 List!74734 C!43348) Unit!170110)

(assert (=> b!7964082 (= lt!2704707 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!217 baseR!116 r!24602 testedP!447 lt!2704697))))

(declare-fun b!7964083 () Bool)

(declare-fun e!4696398 () Bool)

(assert (=> b!7964083 (= e!4696398 e!4696406)))

(declare-fun res!3156086 () Bool)

(assert (=> b!7964083 (=> res!3156086 e!4696406)))

(declare-fun lt!2704699 () Int)

(declare-fun lt!2704705 () List!74734)

(declare-fun tail!15794 (List!74734) List!74734)

(assert (=> b!7964083 (= res!3156086 (isEmpty!42911 (_1!38639 (findLongestMatchInner!2286 lt!2704704 lt!2704702 (+ 1 lt!2704699) (tail!15794 lt!2704705) input!7927 lt!2704696))))))

(declare-fun derivativeStep!6533 (Regex!21505 C!43348) Regex!21505)

(assert (=> b!7964083 (= lt!2704704 (derivativeStep!6533 r!24602 lt!2704697))))

(declare-fun b!7964084 () Bool)

(declare-fun res!3156090 () Bool)

(declare-fun e!4696401 () Bool)

(assert (=> b!7964084 (=> (not res!3156090) (not e!4696401))))

(assert (=> b!7964084 (= res!3156090 (not (= testedP!447 input!7927)))))

(declare-fun b!7964085 () Bool)

(declare-fun e!4696404 () Bool)

(declare-fun tp!2373326 () Bool)

(assert (=> b!7964085 (= e!4696404 tp!2373326)))

(declare-fun b!7964086 () Bool)

(declare-fun e!4696407 () Bool)

(assert (=> b!7964086 (= e!4696407 e!4696401)))

(declare-fun res!3156087 () Bool)

(assert (=> b!7964086 (=> (not res!3156087) (not e!4696401))))

(assert (=> b!7964086 (= res!3156087 (not (isEmpty!42911 (_1!38639 (findLongestMatchInner!2286 r!24602 testedP!447 lt!2704699 lt!2704705 input!7927 lt!2704696)))))))

(assert (=> b!7964086 (= lt!2704696 (size!43441 input!7927))))

(assert (=> b!7964086 (= lt!2704705 (getSuffix!3808 input!7927 testedP!447))))

(assert (=> b!7964086 (= lt!2704699 (size!43441 testedP!447))))

(declare-fun b!7964087 () Bool)

(declare-fun e!4696397 () Bool)

(declare-fun tp!2373316 () Bool)

(declare-fun tp!2373317 () Bool)

(assert (=> b!7964087 (= e!4696397 (and tp!2373316 tp!2373317))))

(declare-fun b!7964088 () Bool)

(declare-fun tp!2373321 () Bool)

(declare-fun tp!2373324 () Bool)

(assert (=> b!7964088 (= e!4696404 (and tp!2373321 tp!2373324))))

(declare-fun res!3156089 () Bool)

(assert (=> start!751148 (=> (not res!3156089) (not e!4696407))))

(declare-fun validRegex!11809 (Regex!21505) Bool)

(assert (=> start!751148 (= res!3156089 (validRegex!11809 baseR!116))))

(assert (=> start!751148 e!4696407))

(assert (=> start!751148 e!4696397))

(declare-fun e!4696399 () Bool)

(assert (=> start!751148 e!4696399))

(declare-fun e!4696402 () Bool)

(assert (=> start!751148 e!4696402))

(assert (=> start!751148 e!4696404))

(declare-fun b!7964089 () Bool)

(declare-fun matchR!10738 (Regex!21505 List!74734) Bool)

(assert (=> b!7964089 (= e!4696403 (matchR!10738 baseR!116 (_1!38639 lt!2704706)))))

(declare-fun b!7964090 () Bool)

(declare-fun res!3156088 () Bool)

(assert (=> b!7964090 (=> (not res!3156088) (not e!4696407))))

(declare-fun isPrefix!6605 (List!74734 List!74734) Bool)

(assert (=> b!7964090 (= res!3156088 (isPrefix!6605 testedP!447 input!7927))))

(declare-fun b!7964091 () Bool)

(declare-fun tp!2373325 () Bool)

(assert (=> b!7964091 (= e!4696397 tp!2373325)))

(declare-fun b!7964092 () Bool)

(declare-fun res!3156085 () Bool)

(assert (=> b!7964092 (=> (not res!3156085) (not e!4696407))))

(assert (=> b!7964092 (= res!3156085 (= (derivative!691 baseR!116 testedP!447) r!24602))))

(declare-fun b!7964093 () Bool)

(declare-fun tp_is_empty!53553 () Bool)

(declare-fun tp!2373323 () Bool)

(assert (=> b!7964093 (= e!4696402 (and tp_is_empty!53553 tp!2373323))))

(declare-fun b!7964094 () Bool)

(assert (=> b!7964094 (= e!4696397 tp_is_empty!53553)))

(declare-fun b!7964095 () Bool)

(declare-fun tp!2373322 () Bool)

(declare-fun tp!2373320 () Bool)

(assert (=> b!7964095 (= e!4696404 (and tp!2373322 tp!2373320))))

(declare-fun b!7964096 () Bool)

(assert (=> b!7964096 (= e!4696404 tp_is_empty!53553)))

(declare-fun b!7964097 () Bool)

(declare-fun e!4696400 () Bool)

(assert (=> b!7964097 (= e!4696400 e!4696398)))

(declare-fun res!3156082 () Bool)

(assert (=> b!7964097 (=> res!3156082 e!4696398)))

(declare-fun nullable!9606 (Regex!21505) Bool)

(assert (=> b!7964097 (= res!3156082 (not (nullable!9606 r!24602)))))

(assert (=> b!7964097 (isPrefix!6605 lt!2704702 input!7927)))

(declare-fun lt!2704698 () Unit!170110)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1332 (List!74734 List!74734) Unit!170110)

(assert (=> b!7964097 (= lt!2704698 (lemmaAddHeadSuffixToPrefixStillPrefix!1332 testedP!447 input!7927))))

(declare-fun ++!18375 (List!74734 List!74734) List!74734)

(assert (=> b!7964097 (= lt!2704702 (++!18375 testedP!447 (Cons!74610 lt!2704697 Nil!74610)))))

(declare-fun head!16257 (List!74734) C!43348)

(assert (=> b!7964097 (= lt!2704697 (head!16257 lt!2704705))))

(declare-fun b!7964098 () Bool)

(declare-fun tp!2373315 () Bool)

(assert (=> b!7964098 (= e!4696399 (and tp_is_empty!53553 tp!2373315))))

(declare-fun b!7964099 () Bool)

(declare-fun e!4696405 () Unit!170110)

(declare-fun Unit!170112 () Unit!170110)

(assert (=> b!7964099 (= e!4696405 Unit!170112)))

(declare-fun b!7964100 () Bool)

(declare-fun tp!2373319 () Bool)

(declare-fun tp!2373318 () Bool)

(assert (=> b!7964100 (= e!4696397 (and tp!2373319 tp!2373318))))

(declare-fun b!7964101 () Bool)

(assert (=> b!7964101 (= e!4696401 (not e!4696400))))

(declare-fun res!3156083 () Bool)

(assert (=> b!7964101 (=> res!3156083 e!4696400)))

(assert (=> b!7964101 (= res!3156083 (>= lt!2704699 lt!2704696))))

(declare-fun lt!2704703 () Unit!170110)

(assert (=> b!7964101 (= lt!2704703 e!4696405)))

(declare-fun c!1462575 () Bool)

(assert (=> b!7964101 (= c!1462575 (= lt!2704699 lt!2704696))))

(assert (=> b!7964101 (<= lt!2704699 lt!2704696)))

(declare-fun lt!2704709 () Unit!170110)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1122 (List!74734 List!74734) Unit!170110)

(assert (=> b!7964101 (= lt!2704709 (lemmaIsPrefixThenSmallerEqSize!1122 testedP!447 input!7927))))

(declare-fun b!7964102 () Bool)

(declare-fun Unit!170113 () Unit!170110)

(assert (=> b!7964102 (= e!4696405 Unit!170113)))

(declare-fun lt!2704700 () Unit!170110)

(declare-fun lemmaIsPrefixRefl!4073 (List!74734 List!74734) Unit!170110)

(assert (=> b!7964102 (= lt!2704700 (lemmaIsPrefixRefl!4073 input!7927 input!7927))))

(assert (=> b!7964102 (isPrefix!6605 input!7927 input!7927)))

(declare-fun lt!2704701 () Unit!170110)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1653 (List!74734 List!74734 List!74734) Unit!170110)

(assert (=> b!7964102 (= lt!2704701 (lemmaIsPrefixSameLengthThenSameList!1653 input!7927 testedP!447 input!7927))))

(assert (=> b!7964102 false))

(assert (= (and start!751148 res!3156089) b!7964090))

(assert (= (and b!7964090 res!3156088) b!7964092))

(assert (= (and b!7964092 res!3156085) b!7964086))

(assert (= (and b!7964086 res!3156087) b!7964084))

(assert (= (and b!7964084 res!3156090) b!7964101))

(assert (= (and b!7964101 c!1462575) b!7964102))

(assert (= (and b!7964101 (not c!1462575)) b!7964099))

(assert (= (and b!7964101 (not res!3156083)) b!7964097))

(assert (= (and b!7964097 (not res!3156082)) b!7964083))

(assert (= (and b!7964083 (not res!3156086)) b!7964082))

(assert (= (and b!7964082 (not res!3156084)) b!7964089))

(get-info :version)

(assert (= (and start!751148 ((_ is ElementMatch!21505) baseR!116)) b!7964094))

(assert (= (and start!751148 ((_ is Concat!30504) baseR!116)) b!7964087))

(assert (= (and start!751148 ((_ is Star!21505) baseR!116)) b!7964091))

(assert (= (and start!751148 ((_ is Union!21505) baseR!116)) b!7964100))

(assert (= (and start!751148 ((_ is Cons!74610) testedP!447)) b!7964098))

(assert (= (and start!751148 ((_ is Cons!74610) input!7927)) b!7964093))

(assert (= (and start!751148 ((_ is ElementMatch!21505) r!24602)) b!7964096))

(assert (= (and start!751148 ((_ is Concat!30504) r!24602)) b!7964095))

(assert (= (and start!751148 ((_ is Star!21505) r!24602)) b!7964085))

(assert (= (and start!751148 ((_ is Union!21505) r!24602)) b!7964088))

(declare-fun m!8344180 () Bool)

(assert (=> b!7964101 m!8344180))

(declare-fun m!8344182 () Bool)

(assert (=> b!7964089 m!8344182))

(declare-fun m!8344184 () Bool)

(assert (=> b!7964092 m!8344184))

(declare-fun m!8344186 () Bool)

(assert (=> b!7964083 m!8344186))

(assert (=> b!7964083 m!8344186))

(declare-fun m!8344188 () Bool)

(assert (=> b!7964083 m!8344188))

(declare-fun m!8344190 () Bool)

(assert (=> b!7964083 m!8344190))

(declare-fun m!8344192 () Bool)

(assert (=> b!7964083 m!8344192))

(declare-fun m!8344194 () Bool)

(assert (=> b!7964102 m!8344194))

(declare-fun m!8344196 () Bool)

(assert (=> b!7964102 m!8344196))

(declare-fun m!8344198 () Bool)

(assert (=> b!7964102 m!8344198))

(declare-fun m!8344200 () Bool)

(assert (=> b!7964090 m!8344200))

(declare-fun m!8344202 () Bool)

(assert (=> b!7964086 m!8344202))

(declare-fun m!8344204 () Bool)

(assert (=> b!7964086 m!8344204))

(declare-fun m!8344206 () Bool)

(assert (=> b!7964086 m!8344206))

(declare-fun m!8344208 () Bool)

(assert (=> b!7964086 m!8344208))

(declare-fun m!8344210 () Bool)

(assert (=> b!7964086 m!8344210))

(declare-fun m!8344212 () Bool)

(assert (=> b!7964082 m!8344212))

(declare-fun m!8344214 () Bool)

(assert (=> b!7964082 m!8344214))

(assert (=> b!7964082 m!8344212))

(declare-fun m!8344216 () Bool)

(assert (=> b!7964082 m!8344216))

(declare-fun m!8344218 () Bool)

(assert (=> b!7964082 m!8344218))

(declare-fun m!8344220 () Bool)

(assert (=> b!7964082 m!8344220))

(declare-fun m!8344222 () Bool)

(assert (=> b!7964082 m!8344222))

(assert (=> b!7964082 m!8344214))

(declare-fun m!8344224 () Bool)

(assert (=> b!7964082 m!8344224))

(declare-fun m!8344226 () Bool)

(assert (=> start!751148 m!8344226))

(declare-fun m!8344228 () Bool)

(assert (=> b!7964097 m!8344228))

(declare-fun m!8344230 () Bool)

(assert (=> b!7964097 m!8344230))

(declare-fun m!8344232 () Bool)

(assert (=> b!7964097 m!8344232))

(declare-fun m!8344234 () Bool)

(assert (=> b!7964097 m!8344234))

(declare-fun m!8344236 () Bool)

(assert (=> b!7964097 m!8344236))

(check-sat (not b!7964097) (not b!7964100) (not b!7964087) (not b!7964083) (not b!7964093) (not b!7964101) (not b!7964098) (not b!7964095) (not b!7964102) (not b!7964085) (not b!7964089) (not b!7964092) (not b!7964082) (not start!751148) tp_is_empty!53553 (not b!7964088) (not b!7964086) (not b!7964091) (not b!7964090))
(check-sat)
