; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751612 () Bool)

(assert start!751612)

(declare-fun b!7969054 () Bool)

(declare-fun res!3157401 () Bool)

(declare-fun e!4698858 () Bool)

(assert (=> b!7969054 (=> (not res!3157401) (not e!4698858))))

(declare-datatypes ((C!43380 0))(
  ( (C!43381 (val!32238 Int)) )
))
(declare-datatypes ((Regex!21521 0))(
  ( (ElementMatch!21521 (c!1463506 C!43380)) (Concat!30520 (regOne!43554 Regex!21521) (regTwo!43554 Regex!21521)) (EmptyExpr!21521) (Star!21521 (reg!21850 Regex!21521)) (EmptyLang!21521) (Union!21521 (regOne!43555 Regex!21521) (regTwo!43555 Regex!21521)) )
))
(declare-fun baseR!116 () Regex!21521)

(declare-datatypes ((List!74750 0))(
  ( (Nil!74626) (Cons!74626 (h!81074 C!43380) (t!390493 List!74750)) )
))
(declare-fun testedP!447 () List!74750)

(declare-fun r!24602 () Regex!21521)

(declare-fun derivative!707 (Regex!21521 List!74750) Regex!21521)

(assert (=> b!7969054 (= res!3157401 (= (derivative!707 baseR!116 testedP!447) r!24602))))

(declare-fun b!7969055 () Bool)

(declare-fun e!4698856 () Bool)

(declare-fun tp_is_empty!53585 () Bool)

(declare-fun tp!2375544 () Bool)

(assert (=> b!7969055 (= e!4698856 (and tp_is_empty!53585 tp!2375544))))

(declare-fun b!7969056 () Bool)

(declare-fun res!3157399 () Bool)

(declare-fun e!4698860 () Bool)

(assert (=> b!7969056 (=> (not res!3157399) (not e!4698860))))

(declare-fun input!7927 () List!74750)

(assert (=> b!7969056 (= res!3157399 (not (= testedP!447 input!7927)))))

(declare-fun b!7969057 () Bool)

(declare-fun res!3157404 () Bool)

(assert (=> b!7969057 (=> (not res!3157404) (not e!4698858))))

(declare-fun isPrefix!6621 (List!74750 List!74750) Bool)

(assert (=> b!7969057 (= res!3157404 (isPrefix!6621 testedP!447 input!7927))))

(declare-fun b!7969058 () Bool)

(declare-fun e!4698854 () Bool)

(assert (=> b!7969058 (= e!4698854 true)))

(declare-fun lt!2706970 () List!74750)

(declare-fun lt!2706972 () C!43380)

(declare-fun derivativeStep!6547 (Regex!21521 C!43380) Regex!21521)

(assert (=> b!7969058 (= (derivative!707 baseR!116 lt!2706970) (derivativeStep!6547 r!24602 lt!2706972))))

(declare-datatypes ((Unit!170240 0))(
  ( (Unit!170241) )
))
(declare-fun lt!2706976 () Unit!170240)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!229 (Regex!21521 Regex!21521 List!74750 C!43380) Unit!170240)

(assert (=> b!7969058 (= lt!2706976 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!229 baseR!116 r!24602 testedP!447 lt!2706972))))

(declare-fun b!7969059 () Bool)

(declare-fun e!4698853 () Bool)

(declare-fun tp!2375548 () Bool)

(assert (=> b!7969059 (= e!4698853 tp!2375548)))

(declare-fun b!7969060 () Bool)

(assert (=> b!7969060 (= e!4698853 tp_is_empty!53585)))

(declare-fun b!7969061 () Bool)

(declare-fun e!4698855 () Unit!170240)

(declare-fun Unit!170242 () Unit!170240)

(assert (=> b!7969061 (= e!4698855 Unit!170242)))

(declare-fun b!7969062 () Bool)

(assert (=> b!7969062 (= e!4698858 e!4698860)))

(declare-fun res!3157398 () Bool)

(assert (=> b!7969062 (=> (not res!3157398) (not e!4698860))))

(declare-fun lt!2706971 () Int)

(declare-fun lt!2706969 () Int)

(declare-fun lt!2706978 () List!74750)

(declare-fun isEmpty!42927 (List!74750) Bool)

(declare-datatypes ((tuple2!70704 0))(
  ( (tuple2!70705 (_1!38655 List!74750) (_2!38655 List!74750)) )
))
(declare-fun findLongestMatchInner!2302 (Regex!21521 List!74750 Int List!74750 List!74750 Int) tuple2!70704)

(assert (=> b!7969062 (= res!3157398 (not (isEmpty!42927 (_1!38655 (findLongestMatchInner!2302 r!24602 testedP!447 lt!2706971 lt!2706978 input!7927 lt!2706969)))))))

(declare-fun size!43457 (List!74750) Int)

(assert (=> b!7969062 (= lt!2706969 (size!43457 input!7927))))

(declare-fun getSuffix!3824 (List!74750 List!74750) List!74750)

(assert (=> b!7969062 (= lt!2706978 (getSuffix!3824 input!7927 testedP!447))))

(assert (=> b!7969062 (= lt!2706971 (size!43457 testedP!447))))

(declare-fun b!7969063 () Bool)

(declare-fun e!4698857 () Bool)

(declare-fun tp!2375545 () Bool)

(assert (=> b!7969063 (= e!4698857 tp!2375545)))

(declare-fun b!7969064 () Bool)

(declare-fun tp!2375540 () Bool)

(declare-fun tp!2375550 () Bool)

(assert (=> b!7969064 (= e!4698853 (and tp!2375540 tp!2375550))))

(declare-fun b!7969065 () Bool)

(declare-fun e!4698859 () Bool)

(declare-fun tp!2375539 () Bool)

(assert (=> b!7969065 (= e!4698859 (and tp_is_empty!53585 tp!2375539))))

(declare-fun b!7969066 () Bool)

(declare-fun e!4698861 () Bool)

(assert (=> b!7969066 (= e!4698860 (not e!4698861))))

(declare-fun res!3157400 () Bool)

(assert (=> b!7969066 (=> res!3157400 e!4698861)))

(assert (=> b!7969066 (= res!3157400 (>= lt!2706971 lt!2706969))))

(declare-fun lt!2706975 () Unit!170240)

(assert (=> b!7969066 (= lt!2706975 e!4698855)))

(declare-fun c!1463505 () Bool)

(assert (=> b!7969066 (= c!1463505 (= lt!2706971 lt!2706969))))

(assert (=> b!7969066 (<= lt!2706971 lt!2706969)))

(declare-fun lt!2706979 () Unit!170240)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1138 (List!74750 List!74750) Unit!170240)

(assert (=> b!7969066 (= lt!2706979 (lemmaIsPrefixThenSmallerEqSize!1138 testedP!447 input!7927))))

(declare-fun res!3157402 () Bool)

(assert (=> start!751612 (=> (not res!3157402) (not e!4698858))))

(declare-fun validRegex!11825 (Regex!21521) Bool)

(assert (=> start!751612 (= res!3157402 (validRegex!11825 baseR!116))))

(assert (=> start!751612 e!4698858))

(assert (=> start!751612 e!4698857))

(assert (=> start!751612 e!4698856))

(assert (=> start!751612 e!4698859))

(assert (=> start!751612 e!4698853))

(declare-fun b!7969067 () Bool)

(declare-fun tp!2375546 () Bool)

(declare-fun tp!2375549 () Bool)

(assert (=> b!7969067 (= e!4698857 (and tp!2375546 tp!2375549))))

(declare-fun b!7969068 () Bool)

(declare-fun tp!2375547 () Bool)

(declare-fun tp!2375543 () Bool)

(assert (=> b!7969068 (= e!4698853 (and tp!2375547 tp!2375543))))

(declare-fun b!7969069 () Bool)

(assert (=> b!7969069 (= e!4698861 e!4698854)))

(declare-fun res!3157403 () Bool)

(assert (=> b!7969069 (=> res!3157403 e!4698854)))

(declare-fun nullable!9620 (Regex!21521) Bool)

(assert (=> b!7969069 (= res!3157403 (nullable!9620 r!24602))))

(assert (=> b!7969069 (isPrefix!6621 lt!2706970 input!7927)))

(declare-fun lt!2706974 () Unit!170240)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1348 (List!74750 List!74750) Unit!170240)

(assert (=> b!7969069 (= lt!2706974 (lemmaAddHeadSuffixToPrefixStillPrefix!1348 testedP!447 input!7927))))

(declare-fun ++!18391 (List!74750 List!74750) List!74750)

(assert (=> b!7969069 (= lt!2706970 (++!18391 testedP!447 (Cons!74626 lt!2706972 Nil!74626)))))

(declare-fun head!16273 (List!74750) C!43380)

(assert (=> b!7969069 (= lt!2706972 (head!16273 lt!2706978))))

(declare-fun b!7969070 () Bool)

(declare-fun tp!2375541 () Bool)

(declare-fun tp!2375542 () Bool)

(assert (=> b!7969070 (= e!4698857 (and tp!2375541 tp!2375542))))

(declare-fun b!7969071 () Bool)

(declare-fun Unit!170243 () Unit!170240)

(assert (=> b!7969071 (= e!4698855 Unit!170243)))

(declare-fun lt!2706977 () Unit!170240)

(declare-fun lemmaIsPrefixRefl!4089 (List!74750 List!74750) Unit!170240)

(assert (=> b!7969071 (= lt!2706977 (lemmaIsPrefixRefl!4089 input!7927 input!7927))))

(assert (=> b!7969071 (isPrefix!6621 input!7927 input!7927)))

(declare-fun lt!2706973 () Unit!170240)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1669 (List!74750 List!74750 List!74750) Unit!170240)

(assert (=> b!7969071 (= lt!2706973 (lemmaIsPrefixSameLengthThenSameList!1669 input!7927 testedP!447 input!7927))))

(assert (=> b!7969071 false))

(declare-fun b!7969072 () Bool)

(assert (=> b!7969072 (= e!4698857 tp_is_empty!53585)))

(assert (= (and start!751612 res!3157402) b!7969057))

(assert (= (and b!7969057 res!3157404) b!7969054))

(assert (= (and b!7969054 res!3157401) b!7969062))

(assert (= (and b!7969062 res!3157398) b!7969056))

(assert (= (and b!7969056 res!3157399) b!7969066))

(assert (= (and b!7969066 c!1463505) b!7969071))

(assert (= (and b!7969066 (not c!1463505)) b!7969061))

(assert (= (and b!7969066 (not res!3157400)) b!7969069))

(assert (= (and b!7969069 (not res!3157403)) b!7969058))

(get-info :version)

(assert (= (and start!751612 ((_ is ElementMatch!21521) baseR!116)) b!7969072))

(assert (= (and start!751612 ((_ is Concat!30520) baseR!116)) b!7969067))

(assert (= (and start!751612 ((_ is Star!21521) baseR!116)) b!7969063))

(assert (= (and start!751612 ((_ is Union!21521) baseR!116)) b!7969070))

(assert (= (and start!751612 ((_ is Cons!74626) testedP!447)) b!7969055))

(assert (= (and start!751612 ((_ is Cons!74626) input!7927)) b!7969065))

(assert (= (and start!751612 ((_ is ElementMatch!21521) r!24602)) b!7969060))

(assert (= (and start!751612 ((_ is Concat!30520) r!24602)) b!7969068))

(assert (= (and start!751612 ((_ is Star!21521) r!24602)) b!7969059))

(assert (= (and start!751612 ((_ is Union!21521) r!24602)) b!7969064))

(declare-fun m!8347698 () Bool)

(assert (=> b!7969071 m!8347698))

(declare-fun m!8347700 () Bool)

(assert (=> b!7969071 m!8347700))

(declare-fun m!8347702 () Bool)

(assert (=> b!7969071 m!8347702))

(declare-fun m!8347704 () Bool)

(assert (=> b!7969054 m!8347704))

(declare-fun m!8347706 () Bool)

(assert (=> b!7969066 m!8347706))

(declare-fun m!8347708 () Bool)

(assert (=> b!7969062 m!8347708))

(declare-fun m!8347710 () Bool)

(assert (=> b!7969062 m!8347710))

(declare-fun m!8347712 () Bool)

(assert (=> b!7969062 m!8347712))

(declare-fun m!8347714 () Bool)

(assert (=> b!7969062 m!8347714))

(declare-fun m!8347716 () Bool)

(assert (=> b!7969062 m!8347716))

(declare-fun m!8347718 () Bool)

(assert (=> b!7969058 m!8347718))

(declare-fun m!8347720 () Bool)

(assert (=> b!7969058 m!8347720))

(declare-fun m!8347722 () Bool)

(assert (=> b!7969058 m!8347722))

(declare-fun m!8347724 () Bool)

(assert (=> b!7969057 m!8347724))

(declare-fun m!8347726 () Bool)

(assert (=> b!7969069 m!8347726))

(declare-fun m!8347728 () Bool)

(assert (=> b!7969069 m!8347728))

(declare-fun m!8347730 () Bool)

(assert (=> b!7969069 m!8347730))

(declare-fun m!8347732 () Bool)

(assert (=> b!7969069 m!8347732))

(declare-fun m!8347734 () Bool)

(assert (=> b!7969069 m!8347734))

(declare-fun m!8347736 () Bool)

(assert (=> start!751612 m!8347736))

(check-sat (not b!7969066) (not b!7969059) (not b!7969071) (not b!7969062) (not b!7969067) (not b!7969065) tp_is_empty!53585 (not b!7969054) (not b!7969055) (not b!7969063) (not start!751612) (not b!7969069) (not b!7969058) (not b!7969057) (not b!7969070) (not b!7969068) (not b!7969064))
(check-sat)
