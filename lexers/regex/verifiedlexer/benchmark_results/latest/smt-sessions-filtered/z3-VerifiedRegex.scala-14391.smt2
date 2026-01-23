; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750128 () Bool)

(assert start!750128)

(declare-fun b!7949093 () Bool)

(declare-fun res!3152497 () Bool)

(declare-fun e!4689362 () Bool)

(assert (=> b!7949093 (=> (not res!3152497) (not e!4689362))))

(declare-datatypes ((C!43264 0))(
  ( (C!43265 (val!32180 Int)) )
))
(declare-datatypes ((List!74692 0))(
  ( (Nil!74568) (Cons!74568 (h!81016 C!43264) (t!390435 List!74692)) )
))
(declare-fun testedP!447 () List!74692)

(declare-fun input!7927 () List!74692)

(declare-fun isPrefix!6563 (List!74692 List!74692) Bool)

(assert (=> b!7949093 (= res!3152497 (isPrefix!6563 testedP!447 input!7927))))

(declare-fun b!7949094 () Bool)

(declare-datatypes ((Unit!169798 0))(
  ( (Unit!169799) )
))
(declare-fun e!4689359 () Unit!169798)

(declare-fun Unit!169800 () Unit!169798)

(assert (=> b!7949094 (= e!4689359 Unit!169800)))

(declare-fun b!7949095 () Bool)

(declare-fun e!4689357 () Bool)

(declare-fun tp_is_empty!53469 () Bool)

(assert (=> b!7949095 (= e!4689357 tp_is_empty!53469)))

(declare-fun b!7949096 () Bool)

(declare-fun e!4689360 () Bool)

(declare-fun tp!2365380 () Bool)

(assert (=> b!7949096 (= e!4689360 tp!2365380)))

(declare-fun b!7949097 () Bool)

(assert (=> b!7949097 (= e!4689360 tp_is_empty!53469)))

(declare-fun b!7949098 () Bool)

(declare-fun e!4689361 () Bool)

(declare-fun tp!2365378 () Bool)

(assert (=> b!7949098 (= e!4689361 (and tp_is_empty!53469 tp!2365378))))

(declare-fun res!3152498 () Bool)

(assert (=> start!750128 (=> (not res!3152498) (not e!4689362))))

(declare-datatypes ((Regex!21463 0))(
  ( (ElementMatch!21463 (c!1460086 C!43264)) (Concat!30462 (regOne!43438 Regex!21463) (regTwo!43438 Regex!21463)) (EmptyExpr!21463) (Star!21463 (reg!21792 Regex!21463)) (EmptyLang!21463) (Union!21463 (regOne!43439 Regex!21463) (regTwo!43439 Regex!21463)) )
))
(declare-fun baseR!116 () Regex!21463)

(declare-fun validRegex!11767 (Regex!21463) Bool)

(assert (=> start!750128 (= res!3152498 (validRegex!11767 baseR!116))))

(assert (=> start!750128 e!4689362))

(assert (=> start!750128 e!4689357))

(assert (=> start!750128 e!4689361))

(declare-fun e!4689356 () Bool)

(assert (=> start!750128 e!4689356))

(assert (=> start!750128 e!4689360))

(declare-fun b!7949099 () Bool)

(declare-fun e!4689363 () Bool)

(assert (=> b!7949099 (= e!4689363 true)))

(declare-fun lt!2699358 () List!74692)

(declare-fun lt!2699360 () List!74692)

(declare-fun ++!18333 (List!74692 List!74692) List!74692)

(declare-fun head!16215 (List!74692) C!43264)

(assert (=> b!7949099 (= lt!2699358 (++!18333 testedP!447 (Cons!74568 (head!16215 lt!2699360) Nil!74568)))))

(declare-fun b!7949100 () Bool)

(declare-fun Unit!169801 () Unit!169798)

(assert (=> b!7949100 (= e!4689359 Unit!169801)))

(declare-fun lt!2699361 () Unit!169798)

(declare-fun lemmaIsPrefixRefl!4031 (List!74692 List!74692) Unit!169798)

(assert (=> b!7949100 (= lt!2699361 (lemmaIsPrefixRefl!4031 input!7927 input!7927))))

(assert (=> b!7949100 (isPrefix!6563 input!7927 input!7927)))

(declare-fun lt!2699359 () Unit!169798)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1611 (List!74692 List!74692 List!74692) Unit!169798)

(assert (=> b!7949100 (= lt!2699359 (lemmaIsPrefixSameLengthThenSameList!1611 input!7927 testedP!447 input!7927))))

(assert (=> b!7949100 false))

(declare-fun b!7949101 () Bool)

(declare-fun tp!2365374 () Bool)

(declare-fun tp!2365382 () Bool)

(assert (=> b!7949101 (= e!4689357 (and tp!2365374 tp!2365382))))

(declare-fun b!7949102 () Bool)

(declare-fun tp!2365375 () Bool)

(declare-fun tp!2365371 () Bool)

(assert (=> b!7949102 (= e!4689360 (and tp!2365375 tp!2365371))))

(declare-fun b!7949103 () Bool)

(declare-fun e!4689358 () Bool)

(assert (=> b!7949103 (= e!4689358 (not e!4689363))))

(declare-fun res!3152495 () Bool)

(assert (=> b!7949103 (=> res!3152495 e!4689363)))

(declare-fun lt!2699365 () Int)

(declare-fun lt!2699362 () Int)

(assert (=> b!7949103 (= res!3152495 (>= lt!2699365 lt!2699362))))

(declare-fun lt!2699363 () Unit!169798)

(assert (=> b!7949103 (= lt!2699363 e!4689359)))

(declare-fun c!1460085 () Bool)

(assert (=> b!7949103 (= c!1460085 (= lt!2699365 lt!2699362))))

(assert (=> b!7949103 (<= lt!2699365 lt!2699362)))

(declare-fun lt!2699364 () Unit!169798)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1080 (List!74692 List!74692) Unit!169798)

(assert (=> b!7949103 (= lt!2699364 (lemmaIsPrefixThenSmallerEqSize!1080 testedP!447 input!7927))))

(declare-fun b!7949104 () Bool)

(declare-fun tp!2365372 () Bool)

(assert (=> b!7949104 (= e!4689357 tp!2365372)))

(declare-fun b!7949105 () Bool)

(assert (=> b!7949105 (= e!4689362 e!4689358)))

(declare-fun res!3152496 () Bool)

(assert (=> b!7949105 (=> (not res!3152496) (not e!4689358))))

(declare-fun r!24602 () Regex!21463)

(declare-fun isEmpty!42867 (List!74692) Bool)

(declare-datatypes ((tuple2!70588 0))(
  ( (tuple2!70589 (_1!38597 List!74692) (_2!38597 List!74692)) )
))
(declare-fun findLongestMatchInner!2244 (Regex!21463 List!74692 Int List!74692 List!74692 Int) tuple2!70588)

(assert (=> b!7949105 (= res!3152496 (not (isEmpty!42867 (_1!38597 (findLongestMatchInner!2244 r!24602 testedP!447 lt!2699365 lt!2699360 input!7927 lt!2699362)))))))

(declare-fun size!43399 (List!74692) Int)

(assert (=> b!7949105 (= lt!2699362 (size!43399 input!7927))))

(declare-fun getSuffix!3766 (List!74692 List!74692) List!74692)

(assert (=> b!7949105 (= lt!2699360 (getSuffix!3766 input!7927 testedP!447))))

(assert (=> b!7949105 (= lt!2699365 (size!43399 testedP!447))))

(declare-fun b!7949106 () Bool)

(declare-fun tp!2365381 () Bool)

(declare-fun tp!2365376 () Bool)

(assert (=> b!7949106 (= e!4689357 (and tp!2365381 tp!2365376))))

(declare-fun b!7949107 () Bool)

(declare-fun tp!2365373 () Bool)

(declare-fun tp!2365377 () Bool)

(assert (=> b!7949107 (= e!4689360 (and tp!2365373 tp!2365377))))

(declare-fun b!7949108 () Bool)

(declare-fun res!3152494 () Bool)

(assert (=> b!7949108 (=> (not res!3152494) (not e!4689358))))

(assert (=> b!7949108 (= res!3152494 (not (= testedP!447 input!7927)))))

(declare-fun b!7949109 () Bool)

(declare-fun tp!2365379 () Bool)

(assert (=> b!7949109 (= e!4689356 (and tp_is_empty!53469 tp!2365379))))

(declare-fun b!7949110 () Bool)

(declare-fun res!3152493 () Bool)

(assert (=> b!7949110 (=> (not res!3152493) (not e!4689362))))

(declare-fun derivative!649 (Regex!21463 List!74692) Regex!21463)

(assert (=> b!7949110 (= res!3152493 (= (derivative!649 baseR!116 testedP!447) r!24602))))

(assert (= (and start!750128 res!3152498) b!7949093))

(assert (= (and b!7949093 res!3152497) b!7949110))

(assert (= (and b!7949110 res!3152493) b!7949105))

(assert (= (and b!7949105 res!3152496) b!7949108))

(assert (= (and b!7949108 res!3152494) b!7949103))

(assert (= (and b!7949103 c!1460085) b!7949100))

(assert (= (and b!7949103 (not c!1460085)) b!7949094))

(assert (= (and b!7949103 (not res!3152495)) b!7949099))

(get-info :version)

(assert (= (and start!750128 ((_ is ElementMatch!21463) baseR!116)) b!7949095))

(assert (= (and start!750128 ((_ is Concat!30462) baseR!116)) b!7949106))

(assert (= (and start!750128 ((_ is Star!21463) baseR!116)) b!7949104))

(assert (= (and start!750128 ((_ is Union!21463) baseR!116)) b!7949101))

(assert (= (and start!750128 ((_ is Cons!74568) testedP!447)) b!7949098))

(assert (= (and start!750128 ((_ is Cons!74568) input!7927)) b!7949109))

(assert (= (and start!750128 ((_ is ElementMatch!21463) r!24602)) b!7949097))

(assert (= (and start!750128 ((_ is Concat!30462) r!24602)) b!7949102))

(assert (= (and start!750128 ((_ is Star!21463) r!24602)) b!7949096))

(assert (= (and start!750128 ((_ is Union!21463) r!24602)) b!7949107))

(declare-fun m!8334022 () Bool)

(assert (=> b!7949093 m!8334022))

(declare-fun m!8334024 () Bool)

(assert (=> b!7949110 m!8334024))

(declare-fun m!8334026 () Bool)

(assert (=> start!750128 m!8334026))

(declare-fun m!8334028 () Bool)

(assert (=> b!7949100 m!8334028))

(declare-fun m!8334030 () Bool)

(assert (=> b!7949100 m!8334030))

(declare-fun m!8334032 () Bool)

(assert (=> b!7949100 m!8334032))

(declare-fun m!8334034 () Bool)

(assert (=> b!7949099 m!8334034))

(declare-fun m!8334036 () Bool)

(assert (=> b!7949099 m!8334036))

(declare-fun m!8334038 () Bool)

(assert (=> b!7949105 m!8334038))

(declare-fun m!8334040 () Bool)

(assert (=> b!7949105 m!8334040))

(declare-fun m!8334042 () Bool)

(assert (=> b!7949105 m!8334042))

(declare-fun m!8334044 () Bool)

(assert (=> b!7949105 m!8334044))

(declare-fun m!8334046 () Bool)

(assert (=> b!7949105 m!8334046))

(declare-fun m!8334048 () Bool)

(assert (=> b!7949103 m!8334048))

(check-sat (not b!7949109) (not b!7949107) (not b!7949105) (not b!7949106) (not start!750128) tp_is_empty!53469 (not b!7949093) (not b!7949110) (not b!7949098) (not b!7949099) (not b!7949104) (not b!7949102) (not b!7949100) (not b!7949101) (not b!7949103) (not b!7949096))
(check-sat)
