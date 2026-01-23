; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728352 () Bool)

(assert start!728352)

(declare-fun b!7526340 () Bool)

(declare-fun e!4486084 () Bool)

(declare-fun tp_is_empty!49997 () Bool)

(assert (=> b!7526340 (= e!4486084 tp_is_empty!49997)))

(declare-fun b!7526341 () Bool)

(declare-fun e!4486086 () Bool)

(declare-fun tp!2187398 () Bool)

(assert (=> b!7526341 (= e!4486086 (and tp_is_empty!49997 tp!2187398))))

(declare-fun b!7526342 () Bool)

(declare-fun e!4486085 () Bool)

(declare-fun e!4486088 () Bool)

(assert (=> b!7526342 (= e!4486085 e!4486088)))

(declare-fun res!3016448 () Bool)

(assert (=> b!7526342 (=> (not res!3016448) (not e!4486088))))

(declare-datatypes ((C!39968 0))(
  ( (C!39969 (val!30424 Int)) )
))
(declare-datatypes ((Regex!19821 0))(
  ( (ElementMatch!19821 (c!1390270 C!39968)) (Concat!28666 (regOne!40154 Regex!19821) (regTwo!40154 Regex!19821)) (EmptyExpr!19821) (Star!19821 (reg!20150 Regex!19821)) (EmptyLang!19821) (Union!19821 (regOne!40155 Regex!19821) (regTwo!40155 Regex!19821)) )
))
(declare-fun baseR!93 () Regex!19821)

(declare-fun lt!2638796 () Int)

(declare-datatypes ((List!72704 0))(
  ( (Nil!72580) (Cons!72580 (h!79028 C!39968) (t!387411 List!72704)) )
))
(declare-fun returnP!57 () List!72704)

(declare-fun lt!2638798 () Int)

(declare-fun input!6727 () List!72704)

(declare-datatypes ((tuple2!68784 0))(
  ( (tuple2!68785 (_1!37695 List!72704) (_2!37695 List!72704)) )
))
(declare-fun findLongestMatchInner!2100 (Regex!19821 List!72704 Int List!72704 List!72704 Int) tuple2!68784)

(assert (=> b!7526342 (= res!3016448 (= (_1!37695 (findLongestMatchInner!2100 baseR!93 Nil!72580 lt!2638798 input!6727 input!6727 lt!2638796)) returnP!57))))

(declare-fun size!42317 (List!72704) Int)

(assert (=> b!7526342 (= lt!2638796 (size!42317 input!6727))))

(assert (=> b!7526342 (= lt!2638798 (size!42317 Nil!72580))))

(declare-fun b!7526343 () Bool)

(declare-fun tp!2187395 () Bool)

(assert (=> b!7526343 (= e!4486084 tp!2187395)))

(declare-fun b!7526345 () Bool)

(declare-fun e!4486083 () Bool)

(declare-fun tp!2187394 () Bool)

(assert (=> b!7526345 (= e!4486083 (and tp_is_empty!49997 tp!2187394))))

(declare-fun b!7526346 () Bool)

(declare-fun e!4486087 () Bool)

(declare-fun tp!2187397 () Bool)

(assert (=> b!7526346 (= e!4486087 (and tp_is_empty!49997 tp!2187397))))

(declare-fun b!7526347 () Bool)

(declare-fun res!3016447 () Bool)

(assert (=> b!7526347 (=> (not res!3016447) (not e!4486088))))

(declare-fun bigger!57 () List!72704)

(declare-fun matchR!9425 (Regex!19821 List!72704) Bool)

(assert (=> b!7526347 (= res!3016447 (matchR!9425 baseR!93 bigger!57))))

(declare-fun b!7526348 () Bool)

(declare-fun res!3016446 () Bool)

(declare-fun e!4486089 () Bool)

(assert (=> b!7526348 (=> (not res!3016446) (not e!4486089))))

(declare-fun isPrefix!6027 (List!72704 List!72704) Bool)

(assert (=> b!7526348 (= res!3016446 (isPrefix!6027 returnP!57 input!6727))))

(declare-fun b!7526349 () Bool)

(assert (=> b!7526349 (= e!4486088 (not true))))

(declare-fun lt!2638799 () Int)

(declare-fun getSuffix!3517 (List!72704 List!72704) List!72704)

(assert (=> b!7526349 (>= (size!42317 (_1!37695 (findLongestMatchInner!2100 baseR!93 Nil!72580 lt!2638798 (getSuffix!3517 input!6727 Nil!72580) input!6727 lt!2638796))) lt!2638799)))

(declare-datatypes ((Unit!166537 0))(
  ( (Unit!166538) )
))
(declare-fun lt!2638797 () Unit!166537)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!17 (Regex!19821 Regex!19821 List!72704 List!72704 List!72704) Unit!166537)

(assert (=> b!7526349 (= lt!2638797 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!17 baseR!93 baseR!93 input!6727 Nil!72580 bigger!57))))

(declare-fun b!7526350 () Bool)

(assert (=> b!7526350 (= e!4486089 e!4486085)))

(declare-fun res!3016442 () Bool)

(assert (=> b!7526350 (=> (not res!3016442) (not e!4486085))))

(declare-fun lt!2638800 () Int)

(assert (=> b!7526350 (= res!3016442 (>= lt!2638799 lt!2638800))))

(assert (=> b!7526350 (= lt!2638800 (size!42317 returnP!57))))

(assert (=> b!7526350 (= lt!2638799 (size!42317 bigger!57))))

(declare-fun b!7526351 () Bool)

(declare-fun res!3016443 () Bool)

(assert (=> b!7526351 (=> (not res!3016443) (not e!4486089))))

(assert (=> b!7526351 (= res!3016443 (isPrefix!6027 bigger!57 input!6727))))

(declare-fun b!7526352 () Bool)

(declare-fun tp!2187396 () Bool)

(declare-fun tp!2187401 () Bool)

(assert (=> b!7526352 (= e!4486084 (and tp!2187396 tp!2187401))))

(declare-fun b!7526353 () Bool)

(declare-fun tp!2187400 () Bool)

(declare-fun tp!2187399 () Bool)

(assert (=> b!7526353 (= e!4486084 (and tp!2187400 tp!2187399))))

(declare-fun res!3016445 () Bool)

(assert (=> start!728352 (=> (not res!3016445) (not e!4486089))))

(declare-fun validRegex!10249 (Regex!19821) Bool)

(assert (=> start!728352 (= res!3016445 (validRegex!10249 baseR!93))))

(assert (=> start!728352 e!4486089))

(assert (=> start!728352 e!4486084))

(assert (=> start!728352 e!4486086))

(assert (=> start!728352 e!4486083))

(assert (=> start!728352 e!4486087))

(declare-fun b!7526344 () Bool)

(declare-fun res!3016444 () Bool)

(assert (=> b!7526344 (=> (not res!3016444) (not e!4486088))))

(assert (=> b!7526344 (= res!3016444 (not (= lt!2638799 lt!2638800)))))

(assert (= (and start!728352 res!3016445) b!7526348))

(assert (= (and b!7526348 res!3016446) b!7526351))

(assert (= (and b!7526351 res!3016443) b!7526350))

(assert (= (and b!7526350 res!3016442) b!7526342))

(assert (= (and b!7526342 res!3016448) b!7526344))

(assert (= (and b!7526344 res!3016444) b!7526347))

(assert (= (and b!7526347 res!3016447) b!7526349))

(get-info :version)

(assert (= (and start!728352 ((_ is ElementMatch!19821) baseR!93)) b!7526340))

(assert (= (and start!728352 ((_ is Concat!28666) baseR!93)) b!7526352))

(assert (= (and start!728352 ((_ is Star!19821) baseR!93)) b!7526343))

(assert (= (and start!728352 ((_ is Union!19821) baseR!93)) b!7526353))

(assert (= (and start!728352 ((_ is Cons!72580) returnP!57)) b!7526341))

(assert (= (and start!728352 ((_ is Cons!72580) input!6727)) b!7526345))

(assert (= (and start!728352 ((_ is Cons!72580) bigger!57)) b!7526346))

(declare-fun m!8101692 () Bool)

(assert (=> start!728352 m!8101692))

(declare-fun m!8101694 () Bool)

(assert (=> b!7526348 m!8101694))

(declare-fun m!8101696 () Bool)

(assert (=> b!7526351 m!8101696))

(declare-fun m!8101698 () Bool)

(assert (=> b!7526342 m!8101698))

(declare-fun m!8101700 () Bool)

(assert (=> b!7526342 m!8101700))

(declare-fun m!8101702 () Bool)

(assert (=> b!7526342 m!8101702))

(declare-fun m!8101704 () Bool)

(assert (=> b!7526350 m!8101704))

(declare-fun m!8101706 () Bool)

(assert (=> b!7526350 m!8101706))

(declare-fun m!8101708 () Bool)

(assert (=> b!7526347 m!8101708))

(declare-fun m!8101710 () Bool)

(assert (=> b!7526349 m!8101710))

(assert (=> b!7526349 m!8101710))

(declare-fun m!8101712 () Bool)

(assert (=> b!7526349 m!8101712))

(declare-fun m!8101714 () Bool)

(assert (=> b!7526349 m!8101714))

(declare-fun m!8101716 () Bool)

(assert (=> b!7526349 m!8101716))

(check-sat (not b!7526352) (not start!728352) (not b!7526342) (not b!7526348) (not b!7526350) (not b!7526347) (not b!7526343) (not b!7526345) (not b!7526341) (not b!7526353) tp_is_empty!49997 (not b!7526346) (not b!7526351) (not b!7526349))
(check-sat)
