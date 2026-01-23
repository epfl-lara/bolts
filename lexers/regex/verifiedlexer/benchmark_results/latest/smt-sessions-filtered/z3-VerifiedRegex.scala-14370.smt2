; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749712 () Bool)

(assert start!749712)

(declare-fun b!7943467 () Bool)

(declare-fun e!4686758 () Bool)

(declare-fun tp_is_empty!53385 () Bool)

(declare-fun tp!2362335 () Bool)

(assert (=> b!7943467 (= e!4686758 (and tp_is_empty!53385 tp!2362335))))

(declare-fun b!7943468 () Bool)

(declare-fun e!4686757 () Bool)

(assert (=> b!7943468 (= e!4686757 tp_is_empty!53385)))

(declare-fun b!7943469 () Bool)

(declare-fun res!3150933 () Bool)

(declare-fun e!4686760 () Bool)

(assert (=> b!7943469 (=> (not res!3150933) (not e!4686760))))

(declare-datatypes ((C!43180 0))(
  ( (C!43181 (val!32138 Int)) )
))
(declare-datatypes ((List!74650 0))(
  ( (Nil!74526) (Cons!74526 (h!80974 C!43180) (t!390393 List!74650)) )
))
(declare-fun testedP!447 () List!74650)

(declare-fun input!7927 () List!74650)

(declare-fun isPrefix!6521 (List!74650 List!74650) Bool)

(assert (=> b!7943469 (= res!3150933 (isPrefix!6521 testedP!447 input!7927))))

(declare-fun b!7943470 () Bool)

(declare-fun e!4686761 () Bool)

(declare-fun tp!2362332 () Bool)

(declare-fun tp!2362341 () Bool)

(assert (=> b!7943470 (= e!4686761 (and tp!2362332 tp!2362341))))

(declare-fun b!7943471 () Bool)

(assert (=> b!7943471 (= e!4686761 tp_is_empty!53385)))

(declare-fun b!7943472 () Bool)

(declare-fun e!4686756 () Bool)

(assert (=> b!7943472 (= e!4686756 false)))

(declare-fun lt!2697183 () List!74650)

(declare-fun lt!2697185 () List!74650)

(declare-fun ++!18309 (List!74650 List!74650) List!74650)

(assert (=> b!7943472 (= lt!2697183 (++!18309 testedP!447 lt!2697185))))

(declare-fun res!3150936 () Bool)

(assert (=> start!749712 (=> (not res!3150936) (not e!4686760))))

(declare-datatypes ((Regex!21421 0))(
  ( (ElementMatch!21421 (c!1459290 C!43180)) (Concat!30420 (regOne!43354 Regex!21421) (regTwo!43354 Regex!21421)) (EmptyExpr!21421) (Star!21421 (reg!21750 Regex!21421)) (EmptyLang!21421) (Union!21421 (regOne!43355 Regex!21421) (regTwo!43355 Regex!21421)) )
))
(declare-fun baseR!116 () Regex!21421)

(declare-fun validRegex!11725 (Regex!21421) Bool)

(assert (=> start!749712 (= res!3150936 (validRegex!11725 baseR!116))))

(assert (=> start!749712 e!4686760))

(assert (=> start!749712 e!4686761))

(assert (=> start!749712 e!4686758))

(declare-fun e!4686759 () Bool)

(assert (=> start!749712 e!4686759))

(assert (=> start!749712 e!4686757))

(declare-fun b!7943473 () Bool)

(declare-fun tp!2362336 () Bool)

(declare-fun tp!2362340 () Bool)

(assert (=> b!7943473 (= e!4686761 (and tp!2362336 tp!2362340))))

(declare-fun b!7943474 () Bool)

(declare-fun tp!2362337 () Bool)

(assert (=> b!7943474 (= e!4686757 tp!2362337)))

(declare-fun b!7943475 () Bool)

(assert (=> b!7943475 (= e!4686760 e!4686756)))

(declare-fun res!3150934 () Bool)

(assert (=> b!7943475 (=> (not res!3150934) (not e!4686756))))

(declare-fun r!24602 () Regex!21421)

(assert (=> b!7943475 (= res!3150934 (validRegex!11725 r!24602))))

(declare-fun lt!2697182 () Int)

(declare-fun size!43357 (List!74650) Int)

(assert (=> b!7943475 (= lt!2697182 (size!43357 input!7927))))

(declare-fun getSuffix!3724 (List!74650 List!74650) List!74650)

(assert (=> b!7943475 (= lt!2697185 (getSuffix!3724 input!7927 testedP!447))))

(declare-fun lt!2697184 () Int)

(assert (=> b!7943475 (= lt!2697184 (size!43357 testedP!447))))

(declare-fun b!7943476 () Bool)

(declare-fun res!3150935 () Bool)

(assert (=> b!7943476 (=> (not res!3150935) (not e!4686760))))

(declare-fun derivative!607 (Regex!21421 List!74650) Regex!21421)

(assert (=> b!7943476 (= res!3150935 (= (derivative!607 baseR!116 testedP!447) r!24602))))

(declare-fun b!7943477 () Bool)

(declare-fun tp!2362333 () Bool)

(declare-fun tp!2362338 () Bool)

(assert (=> b!7943477 (= e!4686757 (and tp!2362333 tp!2362338))))

(declare-fun b!7943478 () Bool)

(declare-fun tp!2362339 () Bool)

(declare-fun tp!2362334 () Bool)

(assert (=> b!7943478 (= e!4686757 (and tp!2362339 tp!2362334))))

(declare-fun b!7943479 () Bool)

(declare-fun tp!2362342 () Bool)

(assert (=> b!7943479 (= e!4686761 tp!2362342)))

(declare-fun b!7943480 () Bool)

(declare-fun tp!2362331 () Bool)

(assert (=> b!7943480 (= e!4686759 (and tp_is_empty!53385 tp!2362331))))

(assert (= (and start!749712 res!3150936) b!7943469))

(assert (= (and b!7943469 res!3150933) b!7943476))

(assert (= (and b!7943476 res!3150935) b!7943475))

(assert (= (and b!7943475 res!3150934) b!7943472))

(get-info :version)

(assert (= (and start!749712 ((_ is ElementMatch!21421) baseR!116)) b!7943471))

(assert (= (and start!749712 ((_ is Concat!30420) baseR!116)) b!7943473))

(assert (= (and start!749712 ((_ is Star!21421) baseR!116)) b!7943479))

(assert (= (and start!749712 ((_ is Union!21421) baseR!116)) b!7943470))

(assert (= (and start!749712 ((_ is Cons!74526) testedP!447)) b!7943467))

(assert (= (and start!749712 ((_ is Cons!74526) input!7927)) b!7943480))

(assert (= (and start!749712 ((_ is ElementMatch!21421) r!24602)) b!7943468))

(assert (= (and start!749712 ((_ is Concat!30420) r!24602)) b!7943477))

(assert (= (and start!749712 ((_ is Star!21421) r!24602)) b!7943474))

(assert (= (and start!749712 ((_ is Union!21421) r!24602)) b!7943478))

(declare-fun m!8331098 () Bool)

(assert (=> b!7943475 m!8331098))

(declare-fun m!8331100 () Bool)

(assert (=> b!7943475 m!8331100))

(declare-fun m!8331102 () Bool)

(assert (=> b!7943475 m!8331102))

(declare-fun m!8331104 () Bool)

(assert (=> b!7943475 m!8331104))

(declare-fun m!8331106 () Bool)

(assert (=> b!7943476 m!8331106))

(declare-fun m!8331108 () Bool)

(assert (=> start!749712 m!8331108))

(declare-fun m!8331110 () Bool)

(assert (=> b!7943472 m!8331110))

(declare-fun m!8331112 () Bool)

(assert (=> b!7943469 m!8331112))

(check-sat (not b!7943480) (not b!7943469) tp_is_empty!53385 (not b!7943473) (not b!7943472) (not b!7943479) (not b!7943470) (not b!7943474) (not b!7943477) (not b!7943467) (not b!7943478) (not b!7943475) (not b!7943476) (not start!749712))
(check-sat)
