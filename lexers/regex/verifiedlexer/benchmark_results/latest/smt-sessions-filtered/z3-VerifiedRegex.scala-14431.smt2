; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751948 () Bool)

(assert start!751948)

(declare-fun res!3158682 () Bool)

(declare-fun e!4700937 () Bool)

(assert (=> start!751948 (=> (not res!3158682) (not e!4700937))))

(declare-datatypes ((C!43424 0))(
  ( (C!43425 (val!32260 Int)) )
))
(declare-datatypes ((Regex!21543 0))(
  ( (ElementMatch!21543 (c!1464210 C!43424)) (Concat!30542 (regOne!43598 Regex!21543) (regTwo!43598 Regex!21543)) (EmptyExpr!21543) (Star!21543 (reg!21872 Regex!21543)) (EmptyLang!21543) (Union!21543 (regOne!43599 Regex!21543) (regTwo!43599 Regex!21543)) )
))
(declare-fun baseR!116 () Regex!21543)

(declare-fun validRegex!11847 (Regex!21543) Bool)

(assert (=> start!751948 (= res!3158682 (validRegex!11847 baseR!116))))

(assert (=> start!751948 e!4700937))

(declare-fun e!4700938 () Bool)

(assert (=> start!751948 e!4700938))

(declare-fun e!4700933 () Bool)

(assert (=> start!751948 e!4700933))

(declare-fun e!4700939 () Bool)

(assert (=> start!751948 e!4700939))

(declare-fun e!4700934 () Bool)

(assert (=> start!751948 e!4700934))

(declare-fun b!7973319 () Bool)

(declare-fun tp!2377476 () Bool)

(assert (=> b!7973319 (= e!4700934 tp!2377476)))

(declare-fun b!7973320 () Bool)

(declare-fun tp_is_empty!53629 () Bool)

(assert (=> b!7973320 (= e!4700938 tp_is_empty!53629)))

(declare-fun b!7973321 () Bool)

(declare-fun tp!2377484 () Bool)

(declare-fun tp!2377486 () Bool)

(assert (=> b!7973321 (= e!4700934 (and tp!2377484 tp!2377486))))

(declare-fun b!7973322 () Bool)

(declare-fun e!4700935 () Bool)

(declare-fun e!4700936 () Bool)

(assert (=> b!7973322 (= e!4700935 (not e!4700936))))

(declare-fun res!3158683 () Bool)

(assert (=> b!7973322 (=> res!3158683 e!4700936)))

(declare-fun lt!2708772 () Int)

(declare-fun lt!2708775 () Int)

(assert (=> b!7973322 (= res!3158683 (not (= lt!2708772 lt!2708775)))))

(assert (=> b!7973322 (<= lt!2708772 lt!2708775)))

(declare-datatypes ((Unit!170348 0))(
  ( (Unit!170349) )
))
(declare-fun lt!2708776 () Unit!170348)

(declare-datatypes ((List!74772 0))(
  ( (Nil!74648) (Cons!74648 (h!81096 C!43424) (t!390515 List!74772)) )
))
(declare-fun testedP!447 () List!74772)

(declare-fun input!7927 () List!74772)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1158 (List!74772 List!74772) Unit!170348)

(assert (=> b!7973322 (= lt!2708776 (lemmaIsPrefixThenSmallerEqSize!1158 testedP!447 input!7927))))

(declare-fun b!7973323 () Bool)

(declare-fun tp!2377478 () Bool)

(declare-fun tp!2377475 () Bool)

(assert (=> b!7973323 (= e!4700938 (and tp!2377478 tp!2377475))))

(declare-fun b!7973324 () Bool)

(declare-fun tp!2377485 () Bool)

(declare-fun tp!2377479 () Bool)

(assert (=> b!7973324 (= e!4700938 (and tp!2377485 tp!2377479))))

(declare-fun b!7973325 () Bool)

(declare-fun res!3158684 () Bool)

(assert (=> b!7973325 (=> (not res!3158684) (not e!4700935))))

(assert (=> b!7973325 (= res!3158684 (not (= testedP!447 input!7927)))))

(declare-fun b!7973326 () Bool)

(declare-fun tp!2377477 () Bool)

(declare-fun tp!2377480 () Bool)

(assert (=> b!7973326 (= e!4700934 (and tp!2377477 tp!2377480))))

(declare-fun b!7973327 () Bool)

(assert (=> b!7973327 (= e!4700934 tp_is_empty!53629)))

(declare-fun b!7973328 () Bool)

(assert (=> b!7973328 (= e!4700936 false)))

(assert (=> b!7973328 (= input!7927 testedP!447)))

(declare-fun lt!2708777 () Unit!170348)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1687 (List!74772 List!74772 List!74772) Unit!170348)

(assert (=> b!7973328 (= lt!2708777 (lemmaIsPrefixSameLengthThenSameList!1687 input!7927 testedP!447 input!7927))))

(declare-fun isPrefix!6643 (List!74772 List!74772) Bool)

(assert (=> b!7973328 (isPrefix!6643 input!7927 input!7927)))

(declare-fun lt!2708774 () Unit!170348)

(declare-fun lemmaIsPrefixRefl!4109 (List!74772 List!74772) Unit!170348)

(assert (=> b!7973328 (= lt!2708774 (lemmaIsPrefixRefl!4109 input!7927 input!7927))))

(declare-fun b!7973329 () Bool)

(declare-fun tp!2377482 () Bool)

(assert (=> b!7973329 (= e!4700938 tp!2377482)))

(declare-fun b!7973330 () Bool)

(assert (=> b!7973330 (= e!4700937 e!4700935)))

(declare-fun res!3158686 () Bool)

(assert (=> b!7973330 (=> (not res!3158686) (not e!4700935))))

(declare-fun r!24602 () Regex!21543)

(declare-fun lt!2708773 () List!74772)

(declare-fun isEmpty!42947 (List!74772) Bool)

(declare-datatypes ((tuple2!70744 0))(
  ( (tuple2!70745 (_1!38675 List!74772) (_2!38675 List!74772)) )
))
(declare-fun findLongestMatchInner!2322 (Regex!21543 List!74772 Int List!74772 List!74772 Int) tuple2!70744)

(assert (=> b!7973330 (= res!3158686 (not (isEmpty!42947 (_1!38675 (findLongestMatchInner!2322 r!24602 testedP!447 lt!2708772 lt!2708773 input!7927 lt!2708775)))))))

(declare-fun size!43479 (List!74772) Int)

(assert (=> b!7973330 (= lt!2708775 (size!43479 input!7927))))

(declare-fun getSuffix!3844 (List!74772 List!74772) List!74772)

(assert (=> b!7973330 (= lt!2708773 (getSuffix!3844 input!7927 testedP!447))))

(assert (=> b!7973330 (= lt!2708772 (size!43479 testedP!447))))

(declare-fun b!7973331 () Bool)

(declare-fun res!3158681 () Bool)

(assert (=> b!7973331 (=> (not res!3158681) (not e!4700937))))

(assert (=> b!7973331 (= res!3158681 (isPrefix!6643 testedP!447 input!7927))))

(declare-fun b!7973332 () Bool)

(declare-fun tp!2377483 () Bool)

(assert (=> b!7973332 (= e!4700933 (and tp_is_empty!53629 tp!2377483))))

(declare-fun b!7973333 () Bool)

(declare-fun res!3158685 () Bool)

(assert (=> b!7973333 (=> (not res!3158685) (not e!4700937))))

(declare-fun derivative!729 (Regex!21543 List!74772) Regex!21543)

(assert (=> b!7973333 (= res!3158685 (= (derivative!729 baseR!116 testedP!447) r!24602))))

(declare-fun b!7973334 () Bool)

(declare-fun tp!2377481 () Bool)

(assert (=> b!7973334 (= e!4700939 (and tp_is_empty!53629 tp!2377481))))

(assert (= (and start!751948 res!3158682) b!7973331))

(assert (= (and b!7973331 res!3158681) b!7973333))

(assert (= (and b!7973333 res!3158685) b!7973330))

(assert (= (and b!7973330 res!3158686) b!7973325))

(assert (= (and b!7973325 res!3158684) b!7973322))

(assert (= (and b!7973322 (not res!3158683)) b!7973328))

(get-info :version)

(assert (= (and start!751948 ((_ is ElementMatch!21543) baseR!116)) b!7973320))

(assert (= (and start!751948 ((_ is Concat!30542) baseR!116)) b!7973324))

(assert (= (and start!751948 ((_ is Star!21543) baseR!116)) b!7973329))

(assert (= (and start!751948 ((_ is Union!21543) baseR!116)) b!7973323))

(assert (= (and start!751948 ((_ is Cons!74648) testedP!447)) b!7973332))

(assert (= (and start!751948 ((_ is Cons!74648) input!7927)) b!7973334))

(assert (= (and start!751948 ((_ is ElementMatch!21543) r!24602)) b!7973327))

(assert (= (and start!751948 ((_ is Concat!30542) r!24602)) b!7973326))

(assert (= (and start!751948 ((_ is Star!21543) r!24602)) b!7973319))

(assert (= (and start!751948 ((_ is Union!21543) r!24602)) b!7973321))

(declare-fun m!8350354 () Bool)

(assert (=> b!7973322 m!8350354))

(declare-fun m!8350356 () Bool)

(assert (=> b!7973333 m!8350356))

(declare-fun m!8350358 () Bool)

(assert (=> b!7973328 m!8350358))

(declare-fun m!8350360 () Bool)

(assert (=> b!7973328 m!8350360))

(declare-fun m!8350362 () Bool)

(assert (=> b!7973328 m!8350362))

(declare-fun m!8350364 () Bool)

(assert (=> b!7973330 m!8350364))

(declare-fun m!8350366 () Bool)

(assert (=> b!7973330 m!8350366))

(declare-fun m!8350368 () Bool)

(assert (=> b!7973330 m!8350368))

(declare-fun m!8350370 () Bool)

(assert (=> b!7973330 m!8350370))

(declare-fun m!8350372 () Bool)

(assert (=> b!7973330 m!8350372))

(declare-fun m!8350374 () Bool)

(assert (=> start!751948 m!8350374))

(declare-fun m!8350376 () Bool)

(assert (=> b!7973331 m!8350376))

(check-sat (not b!7973328) (not b!7973329) (not b!7973333) (not b!7973321) (not b!7973331) (not b!7973326) (not start!751948) tp_is_empty!53629 (not b!7973332) (not b!7973330) (not b!7973322) (not b!7973324) (not b!7973319) (not b!7973323) (not b!7973334))
(check-sat)
