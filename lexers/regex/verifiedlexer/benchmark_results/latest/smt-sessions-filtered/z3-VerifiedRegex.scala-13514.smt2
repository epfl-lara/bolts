; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728356 () Bool)

(assert start!728356)

(declare-fun b!7526419 () Bool)

(declare-fun e!4486122 () Bool)

(declare-fun tp_is_empty!50001 () Bool)

(declare-fun tp!2187446 () Bool)

(assert (=> b!7526419 (= e!4486122 (and tp_is_empty!50001 tp!2187446))))

(declare-fun b!7526420 () Bool)

(declare-fun res!3016482 () Bool)

(declare-fun e!4486123 () Bool)

(assert (=> b!7526420 (=> (not res!3016482) (not e!4486123))))

(declare-datatypes ((C!39972 0))(
  ( (C!39973 (val!30426 Int)) )
))
(declare-datatypes ((Regex!19823 0))(
  ( (ElementMatch!19823 (c!1390272 C!39972)) (Concat!28668 (regOne!40158 Regex!19823) (regTwo!40158 Regex!19823)) (EmptyExpr!19823) (Star!19823 (reg!20152 Regex!19823)) (EmptyLang!19823) (Union!19823 (regOne!40159 Regex!19823) (regTwo!40159 Regex!19823)) )
))
(declare-fun baseR!93 () Regex!19823)

(declare-datatypes ((List!72706 0))(
  ( (Nil!72582) (Cons!72582 (h!79030 C!39972) (t!387413 List!72706)) )
))
(declare-fun returnP!57 () List!72706)

(declare-fun input!6727 () List!72706)

(declare-datatypes ((tuple2!68788 0))(
  ( (tuple2!68789 (_1!37697 List!72706) (_2!37697 List!72706)) )
))
(declare-fun findLongestMatchInner!2102 (Regex!19823 List!72706 Int List!72706 List!72706 Int) tuple2!68788)

(declare-fun size!42319 (List!72706) Int)

(assert (=> b!7526420 (= res!3016482 (= (_1!37697 (findLongestMatchInner!2102 baseR!93 Nil!72582 (size!42319 Nil!72582) input!6727 input!6727 (size!42319 input!6727))) returnP!57))))

(declare-fun b!7526421 () Bool)

(declare-fun e!4486124 () Bool)

(assert (=> b!7526421 (= e!4486124 e!4486123)))

(declare-fun res!3016483 () Bool)

(assert (=> b!7526421 (=> (not res!3016483) (not e!4486123))))

(declare-fun lt!2638817 () Int)

(declare-fun lt!2638816 () Int)

(assert (=> b!7526421 (= res!3016483 (>= lt!2638817 lt!2638816))))

(assert (=> b!7526421 (= lt!2638816 (size!42319 returnP!57))))

(declare-fun bigger!57 () List!72706)

(assert (=> b!7526421 (= lt!2638817 (size!42319 bigger!57))))

(declare-fun res!3016481 () Bool)

(assert (=> start!728356 (=> (not res!3016481) (not e!4486124))))

(declare-fun validRegex!10251 (Regex!19823) Bool)

(assert (=> start!728356 (= res!3016481 (validRegex!10251 baseR!93))))

(assert (=> start!728356 e!4486124))

(declare-fun e!4486121 () Bool)

(assert (=> start!728356 e!4486121))

(declare-fun e!4486120 () Bool)

(assert (=> start!728356 e!4486120))

(assert (=> start!728356 e!4486122))

(declare-fun e!4486125 () Bool)

(assert (=> start!728356 e!4486125))

(declare-fun b!7526422 () Bool)

(declare-fun res!3016479 () Bool)

(assert (=> b!7526422 (=> (not res!3016479) (not e!4486123))))

(assert (=> b!7526422 (= res!3016479 (not (= lt!2638817 lt!2638816)))))

(declare-fun b!7526423 () Bool)

(declare-fun tp!2187442 () Bool)

(assert (=> b!7526423 (= e!4486120 (and tp_is_empty!50001 tp!2187442))))

(declare-fun b!7526424 () Bool)

(declare-fun tp!2187447 () Bool)

(declare-fun tp!2187449 () Bool)

(assert (=> b!7526424 (= e!4486121 (and tp!2187447 tp!2187449))))

(declare-fun b!7526425 () Bool)

(assert (=> b!7526425 (= e!4486123 false)))

(declare-fun lt!2638818 () Bool)

(declare-fun matchR!9427 (Regex!19823 List!72706) Bool)

(assert (=> b!7526425 (= lt!2638818 (matchR!9427 baseR!93 bigger!57))))

(declare-fun b!7526426 () Bool)

(declare-fun tp!2187445 () Bool)

(declare-fun tp!2187448 () Bool)

(assert (=> b!7526426 (= e!4486121 (and tp!2187445 tp!2187448))))

(declare-fun b!7526427 () Bool)

(assert (=> b!7526427 (= e!4486121 tp_is_empty!50001)))

(declare-fun b!7526428 () Bool)

(declare-fun res!3016484 () Bool)

(assert (=> b!7526428 (=> (not res!3016484) (not e!4486124))))

(declare-fun isPrefix!6029 (List!72706 List!72706) Bool)

(assert (=> b!7526428 (= res!3016484 (isPrefix!6029 returnP!57 input!6727))))

(declare-fun b!7526429 () Bool)

(declare-fun tp!2187444 () Bool)

(assert (=> b!7526429 (= e!4486121 tp!2187444)))

(declare-fun b!7526430 () Bool)

(declare-fun res!3016480 () Bool)

(assert (=> b!7526430 (=> (not res!3016480) (not e!4486124))))

(assert (=> b!7526430 (= res!3016480 (isPrefix!6029 bigger!57 input!6727))))

(declare-fun b!7526431 () Bool)

(declare-fun tp!2187443 () Bool)

(assert (=> b!7526431 (= e!4486125 (and tp_is_empty!50001 tp!2187443))))

(assert (= (and start!728356 res!3016481) b!7526428))

(assert (= (and b!7526428 res!3016484) b!7526430))

(assert (= (and b!7526430 res!3016480) b!7526421))

(assert (= (and b!7526421 res!3016483) b!7526420))

(assert (= (and b!7526420 res!3016482) b!7526422))

(assert (= (and b!7526422 res!3016479) b!7526425))

(get-info :version)

(assert (= (and start!728356 ((_ is ElementMatch!19823) baseR!93)) b!7526427))

(assert (= (and start!728356 ((_ is Concat!28668) baseR!93)) b!7526426))

(assert (= (and start!728356 ((_ is Star!19823) baseR!93)) b!7526429))

(assert (= (and start!728356 ((_ is Union!19823) baseR!93)) b!7526424))

(assert (= (and start!728356 ((_ is Cons!72582) returnP!57)) b!7526423))

(assert (= (and start!728356 ((_ is Cons!72582) input!6727)) b!7526419))

(assert (= (and start!728356 ((_ is Cons!72582) bigger!57)) b!7526431))

(declare-fun m!8101736 () Bool)

(assert (=> b!7526420 m!8101736))

(declare-fun m!8101738 () Bool)

(assert (=> b!7526420 m!8101738))

(assert (=> b!7526420 m!8101736))

(assert (=> b!7526420 m!8101738))

(declare-fun m!8101740 () Bool)

(assert (=> b!7526420 m!8101740))

(declare-fun m!8101742 () Bool)

(assert (=> b!7526421 m!8101742))

(declare-fun m!8101744 () Bool)

(assert (=> b!7526421 m!8101744))

(declare-fun m!8101746 () Bool)

(assert (=> b!7526430 m!8101746))

(declare-fun m!8101748 () Bool)

(assert (=> b!7526425 m!8101748))

(declare-fun m!8101750 () Bool)

(assert (=> start!728356 m!8101750))

(declare-fun m!8101752 () Bool)

(assert (=> b!7526428 m!8101752))

(check-sat (not b!7526428) (not b!7526420) (not start!728356) (not b!7526425) (not b!7526429) (not b!7526426) (not b!7526424) (not b!7526419) (not b!7526423) (not b!7526430) (not b!7526431) (not b!7526421) tp_is_empty!50001)
(check-sat)
