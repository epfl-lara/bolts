; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751944 () Bool)

(assert start!751944)

(declare-fun res!3158648 () Bool)

(declare-fun e!4700892 () Bool)

(assert (=> start!751944 (=> (not res!3158648) (not e!4700892))))

(declare-datatypes ((C!43420 0))(
  ( (C!43421 (val!32258 Int)) )
))
(declare-datatypes ((Regex!21541 0))(
  ( (ElementMatch!21541 (c!1464208 C!43420)) (Concat!30540 (regOne!43594 Regex!21541) (regTwo!43594 Regex!21541)) (EmptyExpr!21541) (Star!21541 (reg!21870 Regex!21541)) (EmptyLang!21541) (Union!21541 (regOne!43595 Regex!21541) (regTwo!43595 Regex!21541)) )
))
(declare-fun baseR!116 () Regex!21541)

(declare-fun validRegex!11845 (Regex!21541) Bool)

(assert (=> start!751944 (= res!3158648 (validRegex!11845 baseR!116))))

(assert (=> start!751944 e!4700892))

(declare-fun e!4700894 () Bool)

(assert (=> start!751944 e!4700894))

(declare-fun e!4700893 () Bool)

(assert (=> start!751944 e!4700893))

(declare-fun e!4700897 () Bool)

(assert (=> start!751944 e!4700897))

(declare-fun e!4700896 () Bool)

(assert (=> start!751944 e!4700896))

(declare-fun b!7973223 () Bool)

(declare-fun e!4700891 () Bool)

(assert (=> b!7973223 (= e!4700892 e!4700891)))

(declare-fun res!3158645 () Bool)

(assert (=> b!7973223 (=> (not res!3158645) (not e!4700891))))

(declare-fun lt!2708741 () Int)

(declare-datatypes ((List!74770 0))(
  ( (Nil!74646) (Cons!74646 (h!81094 C!43420) (t!390513 List!74770)) )
))
(declare-fun testedP!447 () List!74770)

(declare-fun lt!2708737 () Int)

(declare-fun r!24602 () Regex!21541)

(declare-fun input!7927 () List!74770)

(declare-fun lt!2708740 () List!74770)

(declare-fun isEmpty!42945 (List!74770) Bool)

(declare-datatypes ((tuple2!70740 0))(
  ( (tuple2!70741 (_1!38673 List!74770) (_2!38673 List!74770)) )
))
(declare-fun findLongestMatchInner!2320 (Regex!21541 List!74770 Int List!74770 List!74770 Int) tuple2!70740)

(assert (=> b!7973223 (= res!3158645 (not (isEmpty!42945 (_1!38673 (findLongestMatchInner!2320 r!24602 testedP!447 lt!2708741 lt!2708740 input!7927 lt!2708737)))))))

(declare-fun size!43477 (List!74770) Int)

(assert (=> b!7973223 (= lt!2708737 (size!43477 input!7927))))

(declare-fun getSuffix!3842 (List!74770 List!74770) List!74770)

(assert (=> b!7973223 (= lt!2708740 (getSuffix!3842 input!7927 testedP!447))))

(assert (=> b!7973223 (= lt!2708741 (size!43477 testedP!447))))

(declare-fun b!7973224 () Bool)

(declare-fun tp_is_empty!53625 () Bool)

(assert (=> b!7973224 (= e!4700894 tp_is_empty!53625)))

(declare-fun b!7973225 () Bool)

(declare-fun tp!2377412 () Bool)

(declare-fun tp!2377406 () Bool)

(assert (=> b!7973225 (= e!4700894 (and tp!2377412 tp!2377406))))

(declare-fun b!7973226 () Bool)

(declare-fun tp!2377414 () Bool)

(assert (=> b!7973226 (= e!4700893 (and tp_is_empty!53625 tp!2377414))))

(declare-fun b!7973227 () Bool)

(declare-fun tp!2377408 () Bool)

(declare-fun tp!2377404 () Bool)

(assert (=> b!7973227 (= e!4700896 (and tp!2377408 tp!2377404))))

(declare-fun b!7973228 () Bool)

(declare-fun e!4700895 () Bool)

(assert (=> b!7973228 (= e!4700895 (= lt!2708737 lt!2708741))))

(declare-fun isPrefix!6641 (List!74770 List!74770) Bool)

(assert (=> b!7973228 (isPrefix!6641 input!7927 input!7927)))

(declare-datatypes ((Unit!170344 0))(
  ( (Unit!170345) )
))
(declare-fun lt!2708739 () Unit!170344)

(declare-fun lemmaIsPrefixRefl!4107 (List!74770 List!74770) Unit!170344)

(assert (=> b!7973228 (= lt!2708739 (lemmaIsPrefixRefl!4107 input!7927 input!7927))))

(declare-fun b!7973229 () Bool)

(declare-fun tp!2377409 () Bool)

(declare-fun tp!2377407 () Bool)

(assert (=> b!7973229 (= e!4700894 (and tp!2377409 tp!2377407))))

(declare-fun b!7973230 () Bool)

(declare-fun res!3158649 () Bool)

(assert (=> b!7973230 (=> (not res!3158649) (not e!4700891))))

(assert (=> b!7973230 (= res!3158649 (not (= testedP!447 input!7927)))))

(declare-fun b!7973231 () Bool)

(declare-fun tp!2377403 () Bool)

(declare-fun tp!2377405 () Bool)

(assert (=> b!7973231 (= e!4700896 (and tp!2377403 tp!2377405))))

(declare-fun b!7973232 () Bool)

(declare-fun tp!2377410 () Bool)

(assert (=> b!7973232 (= e!4700897 (and tp_is_empty!53625 tp!2377410))))

(declare-fun b!7973233 () Bool)

(declare-fun tp!2377411 () Bool)

(assert (=> b!7973233 (= e!4700896 tp!2377411)))

(declare-fun b!7973234 () Bool)

(assert (=> b!7973234 (= e!4700891 (not e!4700895))))

(declare-fun res!3158650 () Bool)

(assert (=> b!7973234 (=> res!3158650 e!4700895)))

(assert (=> b!7973234 (= res!3158650 (not (= lt!2708741 lt!2708737)))))

(assert (=> b!7973234 (<= lt!2708741 lt!2708737)))

(declare-fun lt!2708738 () Unit!170344)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1156 (List!74770 List!74770) Unit!170344)

(assert (=> b!7973234 (= lt!2708738 (lemmaIsPrefixThenSmallerEqSize!1156 testedP!447 input!7927))))

(declare-fun b!7973235 () Bool)

(declare-fun res!3158646 () Bool)

(assert (=> b!7973235 (=> (not res!3158646) (not e!4700892))))

(assert (=> b!7973235 (= res!3158646 (isPrefix!6641 testedP!447 input!7927))))

(declare-fun b!7973236 () Bool)

(assert (=> b!7973236 (= e!4700896 tp_is_empty!53625)))

(declare-fun b!7973237 () Bool)

(declare-fun tp!2377413 () Bool)

(assert (=> b!7973237 (= e!4700894 tp!2377413)))

(declare-fun b!7973238 () Bool)

(declare-fun res!3158647 () Bool)

(assert (=> b!7973238 (=> (not res!3158647) (not e!4700892))))

(declare-fun derivative!727 (Regex!21541 List!74770) Regex!21541)

(assert (=> b!7973238 (= res!3158647 (= (derivative!727 baseR!116 testedP!447) r!24602))))

(assert (= (and start!751944 res!3158648) b!7973235))

(assert (= (and b!7973235 res!3158646) b!7973238))

(assert (= (and b!7973238 res!3158647) b!7973223))

(assert (= (and b!7973223 res!3158645) b!7973230))

(assert (= (and b!7973230 res!3158649) b!7973234))

(assert (= (and b!7973234 (not res!3158650)) b!7973228))

(get-info :version)

(assert (= (and start!751944 ((_ is ElementMatch!21541) baseR!116)) b!7973224))

(assert (= (and start!751944 ((_ is Concat!30540) baseR!116)) b!7973225))

(assert (= (and start!751944 ((_ is Star!21541) baseR!116)) b!7973237))

(assert (= (and start!751944 ((_ is Union!21541) baseR!116)) b!7973229))

(assert (= (and start!751944 ((_ is Cons!74646) testedP!447)) b!7973226))

(assert (= (and start!751944 ((_ is Cons!74646) input!7927)) b!7973232))

(assert (= (and start!751944 ((_ is ElementMatch!21541) r!24602)) b!7973236))

(assert (= (and start!751944 ((_ is Concat!30540) r!24602)) b!7973227))

(assert (= (and start!751944 ((_ is Star!21541) r!24602)) b!7973233))

(assert (= (and start!751944 ((_ is Union!21541) r!24602)) b!7973231))

(declare-fun m!8350308 () Bool)

(assert (=> b!7973238 m!8350308))

(declare-fun m!8350310 () Bool)

(assert (=> b!7973234 m!8350310))

(declare-fun m!8350312 () Bool)

(assert (=> b!7973223 m!8350312))

(declare-fun m!8350314 () Bool)

(assert (=> b!7973223 m!8350314))

(declare-fun m!8350316 () Bool)

(assert (=> b!7973223 m!8350316))

(declare-fun m!8350318 () Bool)

(assert (=> b!7973223 m!8350318))

(declare-fun m!8350320 () Bool)

(assert (=> b!7973223 m!8350320))

(declare-fun m!8350322 () Bool)

(assert (=> start!751944 m!8350322))

(declare-fun m!8350324 () Bool)

(assert (=> b!7973235 m!8350324))

(declare-fun m!8350326 () Bool)

(assert (=> b!7973228 m!8350326))

(declare-fun m!8350328 () Bool)

(assert (=> b!7973228 m!8350328))

(check-sat (not b!7973228) (not b!7973225) (not b!7973232) (not b!7973233) (not b!7973229) (not b!7973231) (not b!7973227) (not b!7973223) (not b!7973226) (not b!7973237) (not start!751944) tp_is_empty!53625 (not b!7973238) (not b!7973235) (not b!7973234))
(check-sat)
