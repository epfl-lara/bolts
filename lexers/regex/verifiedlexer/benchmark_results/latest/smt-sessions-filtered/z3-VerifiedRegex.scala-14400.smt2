; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750672 () Bool)

(assert start!750672)

(declare-fun b!7958198 () Bool)

(declare-fun e!4693460 () Bool)

(declare-fun tp_is_empty!53505 () Bool)

(declare-fun tp!2370803 () Bool)

(assert (=> b!7958198 (= e!4693460 (and tp_is_empty!53505 tp!2370803))))

(declare-fun b!7958199 () Bool)

(declare-fun e!4693461 () Bool)

(declare-fun tp!2370811 () Bool)

(assert (=> b!7958199 (= e!4693461 (and tp_is_empty!53505 tp!2370811))))

(declare-fun b!7958200 () Bool)

(declare-fun e!4693465 () Bool)

(declare-fun tp!2370807 () Bool)

(declare-fun tp!2370805 () Bool)

(assert (=> b!7958200 (= e!4693465 (and tp!2370807 tp!2370805))))

(declare-fun b!7958201 () Bool)

(declare-fun tp!2370814 () Bool)

(declare-fun tp!2370808 () Bool)

(assert (=> b!7958201 (= e!4693465 (and tp!2370814 tp!2370808))))

(declare-fun b!7958202 () Bool)

(declare-datatypes ((Unit!169930 0))(
  ( (Unit!169931) )
))
(declare-fun e!4693459 () Unit!169930)

(declare-fun Unit!169932 () Unit!169930)

(assert (=> b!7958202 (= e!4693459 Unit!169932)))

(declare-fun b!7958203 () Bool)

(declare-fun e!4693464 () Bool)

(assert (=> b!7958203 (= e!4693464 true)))

(declare-fun lt!2701898 () Int)

(declare-datatypes ((C!43300 0))(
  ( (C!43301 (val!32198 Int)) )
))
(declare-datatypes ((List!74710 0))(
  ( (Nil!74586) (Cons!74586 (h!81034 C!43300) (t!390453 List!74710)) )
))
(declare-fun lt!2701897 () List!74710)

(declare-fun size!43417 (List!74710) Int)

(assert (=> b!7958203 (= lt!2701898 (size!43417 lt!2701897))))

(declare-fun b!7958204 () Bool)

(declare-fun res!3154407 () Bool)

(declare-fun e!4693462 () Bool)

(assert (=> b!7958204 (=> (not res!3154407) (not e!4693462))))

(declare-datatypes ((Regex!21481 0))(
  ( (ElementMatch!21481 (c!1461486 C!43300)) (Concat!30480 (regOne!43474 Regex!21481) (regTwo!43474 Regex!21481)) (EmptyExpr!21481) (Star!21481 (reg!21810 Regex!21481)) (EmptyLang!21481) (Union!21481 (regOne!43475 Regex!21481) (regTwo!43475 Regex!21481)) )
))
(declare-fun baseR!116 () Regex!21481)

(declare-fun testedP!447 () List!74710)

(declare-fun r!24602 () Regex!21481)

(declare-fun derivative!667 (Regex!21481 List!74710) Regex!21481)

(assert (=> b!7958204 (= res!3154407 (= (derivative!667 baseR!116 testedP!447) r!24602))))

(declare-fun b!7958205 () Bool)

(declare-fun e!4693467 () Bool)

(assert (=> b!7958205 (= e!4693462 e!4693467)))

(declare-fun res!3154411 () Bool)

(assert (=> b!7958205 (=> (not res!3154411) (not e!4693467))))

(declare-fun lt!2701895 () Int)

(declare-fun lt!2701894 () Int)

(declare-fun input!7927 () List!74710)

(declare-fun lt!2701900 () List!74710)

(declare-fun isEmpty!42887 (List!74710) Bool)

(declare-datatypes ((tuple2!70624 0))(
  ( (tuple2!70625 (_1!38615 List!74710) (_2!38615 List!74710)) )
))
(declare-fun findLongestMatchInner!2262 (Regex!21481 List!74710 Int List!74710 List!74710 Int) tuple2!70624)

(assert (=> b!7958205 (= res!3154411 (not (isEmpty!42887 (_1!38615 (findLongestMatchInner!2262 r!24602 testedP!447 lt!2701894 lt!2701900 input!7927 lt!2701895)))))))

(assert (=> b!7958205 (= lt!2701895 (size!43417 input!7927))))

(declare-fun getSuffix!3784 (List!74710 List!74710) List!74710)

(assert (=> b!7958205 (= lt!2701900 (getSuffix!3784 input!7927 testedP!447))))

(assert (=> b!7958205 (= lt!2701894 (size!43417 testedP!447))))

(declare-fun b!7958206 () Bool)

(declare-fun e!4693466 () Bool)

(declare-fun tp!2370813 () Bool)

(assert (=> b!7958206 (= e!4693466 tp!2370813)))

(declare-fun b!7958207 () Bool)

(assert (=> b!7958207 (= e!4693465 tp_is_empty!53505)))

(declare-fun b!7958208 () Bool)

(declare-fun res!3154410 () Bool)

(assert (=> b!7958208 (=> res!3154410 e!4693464)))

(declare-fun ++!18351 (List!74710 List!74710) List!74710)

(declare-fun tail!15770 (List!74710) List!74710)

(assert (=> b!7958208 (= res!3154410 (not (= (++!18351 lt!2701897 (tail!15770 lt!2701900)) input!7927)))))

(declare-fun b!7958209 () Bool)

(declare-fun Unit!169933 () Unit!169930)

(assert (=> b!7958209 (= e!4693459 Unit!169933)))

(declare-fun lt!2701901 () Unit!169930)

(declare-fun lemmaIsPrefixRefl!4049 (List!74710 List!74710) Unit!169930)

(assert (=> b!7958209 (= lt!2701901 (lemmaIsPrefixRefl!4049 input!7927 input!7927))))

(declare-fun isPrefix!6581 (List!74710 List!74710) Bool)

(assert (=> b!7958209 (isPrefix!6581 input!7927 input!7927)))

(declare-fun lt!2701896 () Unit!169930)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1629 (List!74710 List!74710 List!74710) Unit!169930)

(assert (=> b!7958209 (= lt!2701896 (lemmaIsPrefixSameLengthThenSameList!1629 input!7927 testedP!447 input!7927))))

(assert (=> b!7958209 false))

(declare-fun b!7958210 () Bool)

(declare-fun e!4693463 () Bool)

(assert (=> b!7958210 (= e!4693467 (not e!4693463))))

(declare-fun res!3154409 () Bool)

(assert (=> b!7958210 (=> res!3154409 e!4693463)))

(assert (=> b!7958210 (= res!3154409 (>= lt!2701894 lt!2701895))))

(declare-fun lt!2701893 () Unit!169930)

(assert (=> b!7958210 (= lt!2701893 e!4693459)))

(declare-fun c!1461485 () Bool)

(assert (=> b!7958210 (= c!1461485 (= lt!2701894 lt!2701895))))

(assert (=> b!7958210 (<= lt!2701894 lt!2701895)))

(declare-fun lt!2701903 () Unit!169930)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1098 (List!74710 List!74710) Unit!169930)

(assert (=> b!7958210 (= lt!2701903 (lemmaIsPrefixThenSmallerEqSize!1098 testedP!447 input!7927))))

(declare-fun b!7958211 () Bool)

(declare-fun res!3154412 () Bool)

(assert (=> b!7958211 (=> (not res!3154412) (not e!4693467))))

(assert (=> b!7958211 (= res!3154412 (not (= testedP!447 input!7927)))))

(declare-fun b!7958212 () Bool)

(declare-fun tp!2370809 () Bool)

(assert (=> b!7958212 (= e!4693465 tp!2370809)))

(declare-fun b!7958213 () Bool)

(declare-fun tp!2370804 () Bool)

(declare-fun tp!2370810 () Bool)

(assert (=> b!7958213 (= e!4693466 (and tp!2370804 tp!2370810))))

(declare-fun b!7958214 () Bool)

(assert (=> b!7958214 (= e!4693463 e!4693464)))

(declare-fun res!3154414 () Bool)

(assert (=> b!7958214 (=> res!3154414 e!4693464)))

(declare-fun nullable!9582 (Regex!21481) Bool)

(assert (=> b!7958214 (= res!3154414 (not (nullable!9582 r!24602)))))

(assert (=> b!7958214 (isPrefix!6581 lt!2701897 input!7927)))

(declare-fun lt!2701899 () Unit!169930)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1308 (List!74710 List!74710) Unit!169930)

(assert (=> b!7958214 (= lt!2701899 (lemmaAddHeadSuffixToPrefixStillPrefix!1308 testedP!447 input!7927))))

(declare-fun lt!2701902 () C!43300)

(assert (=> b!7958214 (= lt!2701897 (++!18351 testedP!447 (Cons!74586 lt!2701902 Nil!74586)))))

(declare-fun head!16233 (List!74710) C!43300)

(assert (=> b!7958214 (= lt!2701902 (head!16233 lt!2701900))))

(declare-fun b!7958215 () Bool)

(declare-fun res!3154408 () Bool)

(assert (=> b!7958215 (=> (not res!3154408) (not e!4693462))))

(assert (=> b!7958215 (= res!3154408 (isPrefix!6581 testedP!447 input!7927))))

(declare-fun b!7958216 () Bool)

(declare-fun res!3154413 () Bool)

(assert (=> b!7958216 (=> res!3154413 e!4693464)))

(declare-fun validRegex!11785 (Regex!21481) Bool)

(declare-fun derivativeStep!6509 (Regex!21481 C!43300) Regex!21481)

(assert (=> b!7958216 (= res!3154413 (not (validRegex!11785 (derivativeStep!6509 r!24602 lt!2701902))))))

(declare-fun b!7958217 () Bool)

(assert (=> b!7958217 (= e!4693466 tp_is_empty!53505)))

(declare-fun b!7958218 () Bool)

(declare-fun tp!2370812 () Bool)

(declare-fun tp!2370806 () Bool)

(assert (=> b!7958218 (= e!4693466 (and tp!2370812 tp!2370806))))

(declare-fun res!3154406 () Bool)

(assert (=> start!750672 (=> (not res!3154406) (not e!4693462))))

(assert (=> start!750672 (= res!3154406 (validRegex!11785 baseR!116))))

(assert (=> start!750672 e!4693462))

(assert (=> start!750672 e!4693466))

(assert (=> start!750672 e!4693461))

(assert (=> start!750672 e!4693460))

(assert (=> start!750672 e!4693465))

(assert (= (and start!750672 res!3154406) b!7958215))

(assert (= (and b!7958215 res!3154408) b!7958204))

(assert (= (and b!7958204 res!3154407) b!7958205))

(assert (= (and b!7958205 res!3154411) b!7958211))

(assert (= (and b!7958211 res!3154412) b!7958210))

(assert (= (and b!7958210 c!1461485) b!7958209))

(assert (= (and b!7958210 (not c!1461485)) b!7958202))

(assert (= (and b!7958210 (not res!3154409)) b!7958214))

(assert (= (and b!7958214 (not res!3154414)) b!7958216))

(assert (= (and b!7958216 (not res!3154413)) b!7958208))

(assert (= (and b!7958208 (not res!3154410)) b!7958203))

(get-info :version)

(assert (= (and start!750672 ((_ is ElementMatch!21481) baseR!116)) b!7958217))

(assert (= (and start!750672 ((_ is Concat!30480) baseR!116)) b!7958213))

(assert (= (and start!750672 ((_ is Star!21481) baseR!116)) b!7958206))

(assert (= (and start!750672 ((_ is Union!21481) baseR!116)) b!7958218))

(assert (= (and start!750672 ((_ is Cons!74586) testedP!447)) b!7958199))

(assert (= (and start!750672 ((_ is Cons!74586) input!7927)) b!7958198))

(assert (= (and start!750672 ((_ is ElementMatch!21481) r!24602)) b!7958207))

(assert (= (and start!750672 ((_ is Concat!30480) r!24602)) b!7958200))

(assert (= (and start!750672 ((_ is Star!21481) r!24602)) b!7958212))

(assert (= (and start!750672 ((_ is Union!21481) r!24602)) b!7958201))

(declare-fun m!8339286 () Bool)

(assert (=> b!7958215 m!8339286))

(declare-fun m!8339288 () Bool)

(assert (=> b!7958210 m!8339288))

(declare-fun m!8339290 () Bool)

(assert (=> b!7958204 m!8339290))

(declare-fun m!8339292 () Bool)

(assert (=> b!7958214 m!8339292))

(declare-fun m!8339294 () Bool)

(assert (=> b!7958214 m!8339294))

(declare-fun m!8339296 () Bool)

(assert (=> b!7958214 m!8339296))

(declare-fun m!8339298 () Bool)

(assert (=> b!7958214 m!8339298))

(declare-fun m!8339300 () Bool)

(assert (=> b!7958214 m!8339300))

(declare-fun m!8339302 () Bool)

(assert (=> b!7958209 m!8339302))

(declare-fun m!8339304 () Bool)

(assert (=> b!7958209 m!8339304))

(declare-fun m!8339306 () Bool)

(assert (=> b!7958209 m!8339306))

(declare-fun m!8339308 () Bool)

(assert (=> b!7958205 m!8339308))

(declare-fun m!8339310 () Bool)

(assert (=> b!7958205 m!8339310))

(declare-fun m!8339312 () Bool)

(assert (=> b!7958205 m!8339312))

(declare-fun m!8339314 () Bool)

(assert (=> b!7958205 m!8339314))

(declare-fun m!8339316 () Bool)

(assert (=> b!7958205 m!8339316))

(declare-fun m!8339318 () Bool)

(assert (=> b!7958208 m!8339318))

(assert (=> b!7958208 m!8339318))

(declare-fun m!8339320 () Bool)

(assert (=> b!7958208 m!8339320))

(declare-fun m!8339322 () Bool)

(assert (=> start!750672 m!8339322))

(declare-fun m!8339324 () Bool)

(assert (=> b!7958216 m!8339324))

(assert (=> b!7958216 m!8339324))

(declare-fun m!8339326 () Bool)

(assert (=> b!7958216 m!8339326))

(declare-fun m!8339328 () Bool)

(assert (=> b!7958203 m!8339328))

(check-sat (not b!7958209) (not b!7958204) (not b!7958210) (not b!7958198) (not b!7958206) (not b!7958208) (not b!7958213) (not b!7958201) (not b!7958205) (not b!7958214) (not b!7958203) (not b!7958216) (not b!7958218) (not b!7958200) (not b!7958212) tp_is_empty!53505 (not b!7958215) (not b!7958199) (not start!750672))
(check-sat)
