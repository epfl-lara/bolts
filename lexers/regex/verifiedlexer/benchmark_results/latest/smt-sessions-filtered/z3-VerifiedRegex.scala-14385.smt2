; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750012 () Bool)

(assert start!750012)

(declare-fun b!7947464 () Bool)

(declare-fun e!4688655 () Bool)

(declare-fun tp_is_empty!53445 () Bool)

(declare-fun tp!2364308 () Bool)

(assert (=> b!7947464 (= e!4688655 (and tp_is_empty!53445 tp!2364308))))

(declare-fun b!7947465 () Bool)

(declare-fun e!4688657 () Bool)

(declare-fun tp!2364309 () Bool)

(assert (=> b!7947465 (= e!4688657 tp!2364309)))

(declare-fun b!7947466 () Bool)

(declare-fun e!4688659 () Bool)

(declare-fun e!4688658 () Bool)

(assert (=> b!7947466 (= e!4688659 e!4688658)))

(declare-fun res!3152118 () Bool)

(assert (=> b!7947466 (=> (not res!3152118) (not e!4688658))))

(declare-datatypes ((C!43240 0))(
  ( (C!43241 (val!32168 Int)) )
))
(declare-datatypes ((List!74680 0))(
  ( (Nil!74556) (Cons!74556 (h!81004 C!43240) (t!390423 List!74680)) )
))
(declare-fun testedP!447 () List!74680)

(declare-datatypes ((Regex!21451 0))(
  ( (ElementMatch!21451 (c!1459886 C!43240)) (Concat!30450 (regOne!43414 Regex!21451) (regTwo!43414 Regex!21451)) (EmptyExpr!21451) (Star!21451 (reg!21780 Regex!21451)) (EmptyLang!21451) (Union!21451 (regOne!43415 Regex!21451) (regTwo!43415 Regex!21451)) )
))
(declare-fun r!24602 () Regex!21451)

(declare-fun input!7927 () List!74680)

(declare-fun lt!2698799 () Int)

(declare-fun lt!2698798 () List!74680)

(declare-fun isEmpty!42855 (List!74680) Bool)

(declare-datatypes ((tuple2!70564 0))(
  ( (tuple2!70565 (_1!38585 List!74680) (_2!38585 List!74680)) )
))
(declare-fun findLongestMatchInner!2232 (Regex!21451 List!74680 Int List!74680 List!74680 Int) tuple2!70564)

(declare-fun size!43387 (List!74680) Int)

(assert (=> b!7947466 (= res!3152118 (not (isEmpty!42855 (_1!38585 (findLongestMatchInner!2232 r!24602 testedP!447 lt!2698799 lt!2698798 input!7927 (size!43387 input!7927))))))))

(declare-fun getSuffix!3754 (List!74680 List!74680) List!74680)

(assert (=> b!7947466 (= lt!2698798 (getSuffix!3754 input!7927 testedP!447))))

(assert (=> b!7947466 (= lt!2698799 (size!43387 testedP!447))))

(declare-fun b!7947467 () Bool)

(declare-fun res!3152116 () Bool)

(assert (=> b!7947467 (=> (not res!3152116) (not e!4688659))))

(declare-fun baseR!116 () Regex!21451)

(declare-fun derivative!637 (Regex!21451 List!74680) Regex!21451)

(assert (=> b!7947467 (= res!3152116 (= (derivative!637 baseR!116 testedP!447) r!24602))))

(declare-fun b!7947468 () Bool)

(declare-fun e!4688654 () Bool)

(declare-fun tp!2364307 () Bool)

(assert (=> b!7947468 (= e!4688654 tp!2364307)))

(declare-fun b!7947469 () Bool)

(assert (=> b!7947469 (= e!4688654 tp_is_empty!53445)))

(declare-fun b!7947470 () Bool)

(declare-fun e!4688656 () Bool)

(declare-fun tp!2364315 () Bool)

(assert (=> b!7947470 (= e!4688656 (and tp_is_empty!53445 tp!2364315))))

(declare-fun b!7947471 () Bool)

(declare-fun tp!2364316 () Bool)

(declare-fun tp!2364314 () Bool)

(assert (=> b!7947471 (= e!4688657 (and tp!2364316 tp!2364314))))

(declare-fun b!7947472 () Bool)

(declare-fun res!3152114 () Bool)

(assert (=> b!7947472 (=> (not res!3152114) (not e!4688658))))

(declare-fun nullable!9562 (Regex!21451) Bool)

(assert (=> b!7947472 (= res!3152114 (not (nullable!9562 r!24602)))))

(declare-fun b!7947473 () Bool)

(declare-fun tp!2364313 () Bool)

(declare-fun tp!2364311 () Bool)

(assert (=> b!7947473 (= e!4688657 (and tp!2364313 tp!2364311))))

(declare-fun b!7947474 () Bool)

(declare-fun res!3152120 () Bool)

(assert (=> b!7947474 (=> (not res!3152120) (not e!4688658))))

(declare-fun validRegex!11755 (Regex!21451) Bool)

(assert (=> b!7947474 (= res!3152120 (validRegex!11755 r!24602))))

(declare-fun res!3152117 () Bool)

(assert (=> start!750012 (=> (not res!3152117) (not e!4688659))))

(assert (=> start!750012 (= res!3152117 (validRegex!11755 baseR!116))))

(assert (=> start!750012 e!4688659))

(assert (=> start!750012 e!4688657))

(assert (=> start!750012 e!4688655))

(assert (=> start!750012 e!4688656))

(assert (=> start!750012 e!4688654))

(declare-fun b!7947475 () Bool)

(declare-fun res!3152119 () Bool)

(assert (=> b!7947475 (=> (not res!3152119) (not e!4688658))))

(assert (=> b!7947475 (= res!3152119 (= testedP!447 input!7927))))

(declare-fun b!7947476 () Bool)

(assert (=> b!7947476 (= e!4688657 tp_is_empty!53445)))

(declare-fun b!7947477 () Bool)

(declare-fun res!3152115 () Bool)

(assert (=> b!7947477 (=> (not res!3152115) (not e!4688659))))

(declare-fun isPrefix!6551 (List!74680 List!74680) Bool)

(assert (=> b!7947477 (= res!3152115 (isPrefix!6551 testedP!447 input!7927))))

(declare-fun b!7947478 () Bool)

(declare-fun tp!2364312 () Bool)

(declare-fun tp!2364310 () Bool)

(assert (=> b!7947478 (= e!4688654 (and tp!2364312 tp!2364310))))

(declare-fun b!7947479 () Bool)

(assert (=> b!7947479 (= e!4688658 false)))

(declare-fun lt!2698797 () List!74680)

(declare-fun ++!18329 (List!74680 List!74680) List!74680)

(assert (=> b!7947479 (= lt!2698797 (++!18329 testedP!447 lt!2698798))))

(declare-fun b!7947480 () Bool)

(declare-fun tp!2364318 () Bool)

(declare-fun tp!2364317 () Bool)

(assert (=> b!7947480 (= e!4688654 (and tp!2364318 tp!2364317))))

(assert (= (and start!750012 res!3152117) b!7947477))

(assert (= (and b!7947477 res!3152115) b!7947467))

(assert (= (and b!7947467 res!3152116) b!7947466))

(assert (= (and b!7947466 res!3152118) b!7947475))

(assert (= (and b!7947475 res!3152119) b!7947472))

(assert (= (and b!7947472 res!3152114) b!7947474))

(assert (= (and b!7947474 res!3152120) b!7947479))

(get-info :version)

(assert (= (and start!750012 ((_ is ElementMatch!21451) baseR!116)) b!7947476))

(assert (= (and start!750012 ((_ is Concat!30450) baseR!116)) b!7947471))

(assert (= (and start!750012 ((_ is Star!21451) baseR!116)) b!7947465))

(assert (= (and start!750012 ((_ is Union!21451) baseR!116)) b!7947473))

(assert (= (and start!750012 ((_ is Cons!74556) testedP!447)) b!7947464))

(assert (= (and start!750012 ((_ is Cons!74556) input!7927)) b!7947470))

(assert (= (and start!750012 ((_ is ElementMatch!21451) r!24602)) b!7947469))

(assert (= (and start!750012 ((_ is Concat!30450) r!24602)) b!7947478))

(assert (= (and start!750012 ((_ is Star!21451) r!24602)) b!7947468))

(assert (= (and start!750012 ((_ is Union!21451) r!24602)) b!7947480))

(declare-fun m!8333104 () Bool)

(assert (=> start!750012 m!8333104))

(declare-fun m!8333106 () Bool)

(assert (=> b!7947477 m!8333106))

(declare-fun m!8333108 () Bool)

(assert (=> b!7947466 m!8333108))

(declare-fun m!8333110 () Bool)

(assert (=> b!7947466 m!8333110))

(declare-fun m!8333112 () Bool)

(assert (=> b!7947466 m!8333112))

(assert (=> b!7947466 m!8333108))

(declare-fun m!8333114 () Bool)

(assert (=> b!7947466 m!8333114))

(declare-fun m!8333116 () Bool)

(assert (=> b!7947466 m!8333116))

(declare-fun m!8333118 () Bool)

(assert (=> b!7947467 m!8333118))

(declare-fun m!8333120 () Bool)

(assert (=> b!7947472 m!8333120))

(declare-fun m!8333122 () Bool)

(assert (=> b!7947474 m!8333122))

(declare-fun m!8333124 () Bool)

(assert (=> b!7947479 m!8333124))

(check-sat (not b!7947477) (not b!7947464) (not b!7947479) (not b!7947472) tp_is_empty!53445 (not b!7947466) (not b!7947474) (not start!750012) (not b!7947467) (not b!7947471) (not b!7947478) (not b!7947480) (not b!7947470) (not b!7947473) (not b!7947465) (not b!7947468))
(check-sat)
