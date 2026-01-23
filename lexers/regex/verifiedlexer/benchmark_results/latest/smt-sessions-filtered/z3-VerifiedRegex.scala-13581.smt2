; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730356 () Bool)

(assert start!730356)

(declare-fun res!3027739 () Bool)

(declare-fun e!4499526 () Bool)

(assert (=> start!730356 (=> (not res!3027739) (not e!4499526))))

(declare-datatypes ((C!40240 0))(
  ( (C!40241 (val!30560 Int)) )
))
(declare-datatypes ((Regex!19957 0))(
  ( (ElementMatch!19957 (c!1394284 C!40240)) (Concat!28802 (regOne!40426 Regex!19957) (regTwo!40426 Regex!19957)) (EmptyExpr!19957) (Star!19957 (reg!20286 Regex!19957)) (EmptyLang!19957) (Union!19957 (regOne!40427 Regex!19957) (regTwo!40427 Regex!19957)) )
))
(declare-fun baseR!101 () Regex!19957)

(declare-fun validRegex!10385 (Regex!19957) Bool)

(assert (=> start!730356 (= res!3027739 (validRegex!10385 baseR!101))))

(assert (=> start!730356 e!4499526))

(declare-fun e!4499531 () Bool)

(assert (=> start!730356 e!4499531))

(declare-fun e!4499533 () Bool)

(assert (=> start!730356 e!4499533))

(declare-fun e!4499528 () Bool)

(assert (=> start!730356 e!4499528))

(declare-fun e!4499529 () Bool)

(assert (=> start!730356 e!4499529))

(declare-fun e!4499532 () Bool)

(assert (=> start!730356 e!4499532))

(declare-fun b!7554291 () Bool)

(declare-fun tp!2197923 () Bool)

(declare-fun tp!2197911 () Bool)

(assert (=> b!7554291 (= e!4499531 (and tp!2197923 tp!2197911))))

(declare-fun b!7554292 () Bool)

(declare-fun tp_is_empty!50269 () Bool)

(assert (=> b!7554292 (= e!4499531 tp_is_empty!50269)))

(declare-fun b!7554293 () Bool)

(declare-fun e!4499527 () Bool)

(declare-fun lt!2647670 () Int)

(declare-fun lt!2647669 () Int)

(assert (=> b!7554293 (= e!4499527 (>= (- lt!2647670 lt!2647669) 0))))

(declare-fun b!7554294 () Bool)

(declare-fun e!4499530 () Bool)

(assert (=> b!7554294 (= e!4499526 e!4499530)))

(declare-fun res!3027738 () Bool)

(assert (=> b!7554294 (=> (not res!3027738) (not e!4499530))))

(assert (=> b!7554294 (= res!3027738 (>= lt!2647670 lt!2647669))))

(declare-datatypes ((List!72840 0))(
  ( (Nil!72716) (Cons!72716 (h!79164 C!40240) (t!387565 List!72840)) )
))
(declare-fun testedP!423 () List!72840)

(declare-fun size!42453 (List!72840) Int)

(assert (=> b!7554294 (= lt!2647669 (size!42453 testedP!423))))

(declare-fun knownP!30 () List!72840)

(assert (=> b!7554294 (= lt!2647670 (size!42453 knownP!30))))

(declare-fun b!7554295 () Bool)

(declare-fun tp!2197919 () Bool)

(assert (=> b!7554295 (= e!4499529 (and tp_is_empty!50269 tp!2197919))))

(declare-fun b!7554296 () Bool)

(declare-fun res!3027742 () Bool)

(assert (=> b!7554296 (=> res!3027742 e!4499527)))

(declare-fun r!24333 () Regex!19957)

(declare-fun derivative!487 (Regex!19957 List!72840) Regex!19957)

(assert (=> b!7554296 (= res!3027742 (not (= (derivative!487 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7554297 () Bool)

(declare-fun tp!2197916 () Bool)

(assert (=> b!7554297 (= e!4499528 (and tp_is_empty!50269 tp!2197916))))

(declare-fun b!7554298 () Bool)

(declare-fun res!3027735 () Bool)

(assert (=> b!7554298 (=> (not res!3027735) (not e!4499526))))

(assert (=> b!7554298 (= res!3027735 (validRegex!10385 r!24333))))

(declare-fun b!7554299 () Bool)

(declare-fun tp!2197920 () Bool)

(declare-fun tp!2197915 () Bool)

(assert (=> b!7554299 (= e!4499532 (and tp!2197920 tp!2197915))))

(declare-fun b!7554300 () Bool)

(declare-fun tp!2197912 () Bool)

(assert (=> b!7554300 (= e!4499533 (and tp_is_empty!50269 tp!2197912))))

(declare-fun b!7554301 () Bool)

(declare-fun tp!2197922 () Bool)

(declare-fun tp!2197913 () Bool)

(assert (=> b!7554301 (= e!4499531 (and tp!2197922 tp!2197913))))

(declare-fun b!7554302 () Bool)

(assert (=> b!7554302 (= e!4499530 (not e!4499527))))

(declare-fun res!3027736 () Bool)

(assert (=> b!7554302 (=> res!3027736 e!4499527)))

(declare-fun matchR!9559 (Regex!19957 List!72840) Bool)

(declare-fun getSuffix!3641 (List!72840 List!72840) List!72840)

(assert (=> b!7554302 (= res!3027736 (not (matchR!9559 r!24333 (getSuffix!3641 knownP!30 testedP!423))))))

(declare-fun isPrefix!6163 (List!72840 List!72840) Bool)

(assert (=> b!7554302 (isPrefix!6163 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72840)

(declare-datatypes ((Unit!166848 0))(
  ( (Unit!166849) )
))
(declare-fun lt!2647668 () Unit!166848)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!911 (List!72840 List!72840 List!72840) Unit!166848)

(assert (=> b!7554302 (= lt!2647668 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!911 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554303 () Bool)

(declare-fun tp!2197918 () Bool)

(assert (=> b!7554303 (= e!4499532 tp!2197918)))

(declare-fun b!7554304 () Bool)

(declare-fun res!3027741 () Bool)

(assert (=> b!7554304 (=> (not res!3027741) (not e!4499526))))

(assert (=> b!7554304 (= res!3027741 (isPrefix!6163 knownP!30 input!7874))))

(declare-fun b!7554305 () Bool)

(assert (=> b!7554305 (= e!4499532 tp_is_empty!50269)))

(declare-fun b!7554306 () Bool)

(declare-fun res!3027737 () Bool)

(assert (=> b!7554306 (=> (not res!3027737) (not e!4499526))))

(assert (=> b!7554306 (= res!3027737 (isPrefix!6163 testedP!423 input!7874))))

(declare-fun b!7554307 () Bool)

(declare-fun tp!2197917 () Bool)

(declare-fun tp!2197921 () Bool)

(assert (=> b!7554307 (= e!4499532 (and tp!2197917 tp!2197921))))

(declare-fun b!7554308 () Bool)

(declare-fun res!3027740 () Bool)

(assert (=> b!7554308 (=> (not res!3027740) (not e!4499530))))

(assert (=> b!7554308 (= res!3027740 (matchR!9559 baseR!101 knownP!30))))

(declare-fun b!7554309 () Bool)

(declare-fun tp!2197914 () Bool)

(assert (=> b!7554309 (= e!4499531 tp!2197914)))

(assert (= (and start!730356 res!3027739) b!7554298))

(assert (= (and b!7554298 res!3027735) b!7554306))

(assert (= (and b!7554306 res!3027737) b!7554304))

(assert (= (and b!7554304 res!3027741) b!7554294))

(assert (= (and b!7554294 res!3027738) b!7554308))

(assert (= (and b!7554308 res!3027740) b!7554302))

(assert (= (and b!7554302 (not res!3027736)) b!7554296))

(assert (= (and b!7554296 (not res!3027742)) b!7554293))

(get-info :version)

(assert (= (and start!730356 ((_ is ElementMatch!19957) baseR!101)) b!7554292))

(assert (= (and start!730356 ((_ is Concat!28802) baseR!101)) b!7554301))

(assert (= (and start!730356 ((_ is Star!19957) baseR!101)) b!7554309))

(assert (= (and start!730356 ((_ is Union!19957) baseR!101)) b!7554291))

(assert (= (and start!730356 ((_ is Cons!72716) input!7874)) b!7554300))

(assert (= (and start!730356 ((_ is Cons!72716) knownP!30)) b!7554297))

(assert (= (and start!730356 ((_ is Cons!72716) testedP!423)) b!7554295))

(assert (= (and start!730356 ((_ is ElementMatch!19957) r!24333)) b!7554305))

(assert (= (and start!730356 ((_ is Concat!28802) r!24333)) b!7554299))

(assert (= (and start!730356 ((_ is Star!19957) r!24333)) b!7554303))

(assert (= (and start!730356 ((_ is Union!19957) r!24333)) b!7554307))

(declare-fun m!8120594 () Bool)

(assert (=> b!7554308 m!8120594))

(declare-fun m!8120596 () Bool)

(assert (=> b!7554302 m!8120596))

(assert (=> b!7554302 m!8120596))

(declare-fun m!8120598 () Bool)

(assert (=> b!7554302 m!8120598))

(declare-fun m!8120600 () Bool)

(assert (=> b!7554302 m!8120600))

(declare-fun m!8120602 () Bool)

(assert (=> b!7554302 m!8120602))

(declare-fun m!8120604 () Bool)

(assert (=> start!730356 m!8120604))

(declare-fun m!8120606 () Bool)

(assert (=> b!7554306 m!8120606))

(declare-fun m!8120608 () Bool)

(assert (=> b!7554296 m!8120608))

(declare-fun m!8120610 () Bool)

(assert (=> b!7554304 m!8120610))

(declare-fun m!8120612 () Bool)

(assert (=> b!7554298 m!8120612))

(declare-fun m!8120614 () Bool)

(assert (=> b!7554294 m!8120614))

(declare-fun m!8120616 () Bool)

(assert (=> b!7554294 m!8120616))

(check-sat (not b!7554296) (not b!7554308) (not b!7554301) (not b!7554295) tp_is_empty!50269 (not b!7554291) (not b!7554303) (not b!7554302) (not b!7554309) (not b!7554298) (not b!7554294) (not b!7554306) (not b!7554299) (not b!7554304) (not b!7554300) (not b!7554297) (not b!7554307) (not start!730356))
(check-sat)
