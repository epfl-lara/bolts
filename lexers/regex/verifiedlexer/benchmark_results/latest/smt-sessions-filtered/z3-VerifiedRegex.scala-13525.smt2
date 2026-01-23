; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728528 () Bool)

(assert start!728528)

(declare-fun res!3017624 () Bool)

(declare-fun e!4487613 () Bool)

(assert (=> start!728528 (=> (not res!3017624) (not e!4487613))))

(declare-datatypes ((C!40016 0))(
  ( (C!40017 (val!30448 Int)) )
))
(declare-datatypes ((Regex!19845 0))(
  ( (ElementMatch!19845 (c!1390734 C!40016)) (Concat!28690 (regOne!40202 Regex!19845) (regTwo!40202 Regex!19845)) (EmptyExpr!19845) (Star!19845 (reg!20174 Regex!19845)) (EmptyLang!19845) (Union!19845 (regOne!40203 Regex!19845) (regTwo!40203 Regex!19845)) )
))
(declare-fun baseR!101 () Regex!19845)

(declare-fun validRegex!10273 (Regex!19845) Bool)

(assert (=> start!728528 (= res!3017624 (validRegex!10273 baseR!101))))

(assert (=> start!728528 e!4487613))

(declare-fun e!4487614 () Bool)

(assert (=> start!728528 e!4487614))

(declare-fun e!4487615 () Bool)

(assert (=> start!728528 e!4487615))

(declare-fun e!4487617 () Bool)

(assert (=> start!728528 e!4487617))

(declare-fun e!4487616 () Bool)

(assert (=> start!728528 e!4487616))

(declare-fun e!4487612 () Bool)

(assert (=> start!728528 e!4487612))

(declare-fun b!7529391 () Bool)

(declare-fun tp_is_empty!50045 () Bool)

(assert (=> b!7529391 (= e!4487614 tp_is_empty!50045)))

(declare-fun b!7529392 () Bool)

(assert (=> b!7529392 (= e!4487613 (not true))))

(declare-fun lt!2640077 () Bool)

(declare-datatypes ((List!72728 0))(
  ( (Nil!72604) (Cons!72604 (h!79052 C!40016) (t!387435 List!72728)) )
))
(declare-fun knownP!30 () List!72728)

(declare-fun testedP!423 () List!72728)

(declare-fun r!24333 () Regex!19845)

(declare-fun matchR!9447 (Regex!19845 List!72728) Bool)

(declare-fun getSuffix!3531 (List!72728 List!72728) List!72728)

(assert (=> b!7529392 (= lt!2640077 (matchR!9447 r!24333 (getSuffix!3531 knownP!30 testedP!423)))))

(declare-fun isPrefix!6051 (List!72728 List!72728) Bool)

(assert (=> b!7529392 (isPrefix!6051 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72728)

(declare-datatypes ((Unit!166604 0))(
  ( (Unit!166605) )
))
(declare-fun lt!2640078 () Unit!166604)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!801 (List!72728 List!72728 List!72728) Unit!166604)

(assert (=> b!7529392 (= lt!2640078 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!801 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529393 () Bool)

(declare-fun res!3017626 () Bool)

(assert (=> b!7529393 (=> (not res!3017626) (not e!4487613))))

(assert (=> b!7529393 (= res!3017626 (isPrefix!6051 knownP!30 input!7874))))

(declare-fun b!7529394 () Bool)

(declare-fun res!3017628 () Bool)

(assert (=> b!7529394 (=> (not res!3017628) (not e!4487613))))

(declare-fun size!42341 (List!72728) Int)

(assert (=> b!7529394 (= res!3017628 (>= (size!42341 knownP!30) (size!42341 testedP!423)))))

(declare-fun b!7529395 () Bool)

(declare-fun tp!2188518 () Bool)

(assert (=> b!7529395 (= e!4487612 tp!2188518)))

(declare-fun b!7529396 () Bool)

(declare-fun tp!2188523 () Bool)

(assert (=> b!7529396 (= e!4487615 (and tp_is_empty!50045 tp!2188523))))

(declare-fun b!7529397 () Bool)

(declare-fun tp!2188515 () Bool)

(assert (=> b!7529397 (= e!4487614 tp!2188515)))

(declare-fun b!7529398 () Bool)

(declare-fun res!3017627 () Bool)

(assert (=> b!7529398 (=> (not res!3017627) (not e!4487613))))

(assert (=> b!7529398 (= res!3017627 (matchR!9447 baseR!101 knownP!30))))

(declare-fun b!7529399 () Bool)

(declare-fun tp!2188519 () Bool)

(declare-fun tp!2188527 () Bool)

(assert (=> b!7529399 (= e!4487614 (and tp!2188519 tp!2188527))))

(declare-fun b!7529400 () Bool)

(declare-fun res!3017623 () Bool)

(assert (=> b!7529400 (=> (not res!3017623) (not e!4487613))))

(assert (=> b!7529400 (= res!3017623 (validRegex!10273 r!24333))))

(declare-fun b!7529401 () Bool)

(declare-fun tp!2188520 () Bool)

(assert (=> b!7529401 (= e!4487616 (and tp_is_empty!50045 tp!2188520))))

(declare-fun b!7529402 () Bool)

(declare-fun tp!2188524 () Bool)

(declare-fun tp!2188526 () Bool)

(assert (=> b!7529402 (= e!4487614 (and tp!2188524 tp!2188526))))

(declare-fun b!7529403 () Bool)

(declare-fun tp!2188525 () Bool)

(declare-fun tp!2188521 () Bool)

(assert (=> b!7529403 (= e!4487612 (and tp!2188525 tp!2188521))))

(declare-fun b!7529404 () Bool)

(declare-fun tp!2188517 () Bool)

(declare-fun tp!2188516 () Bool)

(assert (=> b!7529404 (= e!4487612 (and tp!2188517 tp!2188516))))

(declare-fun b!7529405 () Bool)

(assert (=> b!7529405 (= e!4487612 tp_is_empty!50045)))

(declare-fun b!7529406 () Bool)

(declare-fun res!3017625 () Bool)

(assert (=> b!7529406 (=> (not res!3017625) (not e!4487613))))

(assert (=> b!7529406 (= res!3017625 (isPrefix!6051 testedP!423 input!7874))))

(declare-fun b!7529407 () Bool)

(declare-fun tp!2188522 () Bool)

(assert (=> b!7529407 (= e!4487617 (and tp_is_empty!50045 tp!2188522))))

(assert (= (and start!728528 res!3017624) b!7529400))

(assert (= (and b!7529400 res!3017623) b!7529406))

(assert (= (and b!7529406 res!3017625) b!7529393))

(assert (= (and b!7529393 res!3017626) b!7529394))

(assert (= (and b!7529394 res!3017628) b!7529398))

(assert (= (and b!7529398 res!3017627) b!7529392))

(get-info :version)

(assert (= (and start!728528 ((_ is ElementMatch!19845) baseR!101)) b!7529391))

(assert (= (and start!728528 ((_ is Concat!28690) baseR!101)) b!7529399))

(assert (= (and start!728528 ((_ is Star!19845) baseR!101)) b!7529397))

(assert (= (and start!728528 ((_ is Union!19845) baseR!101)) b!7529402))

(assert (= (and start!728528 ((_ is Cons!72604) input!7874)) b!7529396))

(assert (= (and start!728528 ((_ is Cons!72604) knownP!30)) b!7529407))

(assert (= (and start!728528 ((_ is Cons!72604) testedP!423)) b!7529401))

(assert (= (and start!728528 ((_ is ElementMatch!19845) r!24333)) b!7529405))

(assert (= (and start!728528 ((_ is Concat!28690) r!24333)) b!7529403))

(assert (= (and start!728528 ((_ is Star!19845) r!24333)) b!7529395))

(assert (= (and start!728528 ((_ is Union!19845) r!24333)) b!7529404))

(declare-fun m!8103288 () Bool)

(assert (=> start!728528 m!8103288))

(declare-fun m!8103290 () Bool)

(assert (=> b!7529393 m!8103290))

(declare-fun m!8103292 () Bool)

(assert (=> b!7529406 m!8103292))

(declare-fun m!8103294 () Bool)

(assert (=> b!7529394 m!8103294))

(declare-fun m!8103296 () Bool)

(assert (=> b!7529394 m!8103296))

(declare-fun m!8103298 () Bool)

(assert (=> b!7529392 m!8103298))

(assert (=> b!7529392 m!8103298))

(declare-fun m!8103300 () Bool)

(assert (=> b!7529392 m!8103300))

(declare-fun m!8103302 () Bool)

(assert (=> b!7529392 m!8103302))

(declare-fun m!8103304 () Bool)

(assert (=> b!7529392 m!8103304))

(declare-fun m!8103306 () Bool)

(assert (=> b!7529400 m!8103306))

(declare-fun m!8103308 () Bool)

(assert (=> b!7529398 m!8103308))

(check-sat (not b!7529401) (not b!7529397) (not b!7529399) (not b!7529404) (not start!728528) tp_is_empty!50045 (not b!7529400) (not b!7529393) (not b!7529392) (not b!7529406) (not b!7529395) (not b!7529403) (not b!7529394) (not b!7529407) (not b!7529396) (not b!7529398) (not b!7529402))
(check-sat)
