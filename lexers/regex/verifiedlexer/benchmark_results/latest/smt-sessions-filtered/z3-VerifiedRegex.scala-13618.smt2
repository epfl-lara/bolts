; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731300 () Bool)

(assert start!731300)

(declare-fun b!7573306 () Bool)

(declare-fun e!4508381 () Bool)

(declare-fun tp!2206823 () Bool)

(declare-fun tp!2206820 () Bool)

(assert (=> b!7573306 (= e!4508381 (and tp!2206823 tp!2206820))))

(declare-fun res!3033764 () Bool)

(declare-fun e!4508385 () Bool)

(assert (=> start!731300 (=> (not res!3033764) (not e!4508385))))

(declare-datatypes ((C!40388 0))(
  ( (C!40389 (val!30634 Int)) )
))
(declare-datatypes ((Regex!20031 0))(
  ( (ElementMatch!20031 (c!1397192 C!40388)) (Concat!28876 (regOne!40574 Regex!20031) (regTwo!40574 Regex!20031)) (EmptyExpr!20031) (Star!20031 (reg!20360 Regex!20031)) (EmptyLang!20031) (Union!20031 (regOne!40575 Regex!20031) (regTwo!40575 Regex!20031)) )
))
(declare-fun r!22341 () Regex!20031)

(declare-fun validRegex!10459 (Regex!20031) Bool)

(assert (=> start!731300 (= res!3033764 (validRegex!10459 r!22341))))

(assert (=> start!731300 e!4508385))

(assert (=> start!731300 e!4508381))

(declare-fun e!4508384 () Bool)

(assert (=> start!731300 e!4508384))

(declare-fun b!7573307 () Bool)

(declare-fun tp!2206822 () Bool)

(declare-fun tp!2206825 () Bool)

(assert (=> b!7573307 (= e!4508381 (and tp!2206822 tp!2206825))))

(declare-fun b!7573308 () Bool)

(declare-fun e!4508382 () Bool)

(assert (=> b!7573308 (= e!4508382 true)))

(declare-fun b!7573309 () Bool)

(declare-fun res!3033762 () Bool)

(assert (=> b!7573309 (=> (not res!3033762) (not e!4508385))))

(declare-fun lostCause!1807 (Regex!20031) Bool)

(assert (=> b!7573309 (= res!3033762 (lostCause!1807 r!22341))))

(declare-fun b!7573310 () Bool)

(declare-fun e!4508383 () Bool)

(assert (=> b!7573310 (= e!4508383 e!4508382)))

(declare-fun res!3033761 () Bool)

(assert (=> b!7573310 (=> res!3033761 e!4508382)))

(declare-datatypes ((List!72914 0))(
  ( (Nil!72790) (Cons!72790 (h!79238 C!40388) (t!387649 List!72914)) )
))
(declare-fun s!13436 () List!72914)

(declare-fun matchR!9627 (Regex!20031 List!72914) Bool)

(assert (=> b!7573310 (= res!3033761 (not (matchR!9627 (Union!20031 (regOne!40575 r!22341) (regTwo!40575 r!22341)) s!13436)))))

(assert (=> b!7573310 (not (matchR!9627 (regTwo!40575 r!22341) s!13436))))

(declare-datatypes ((Unit!167018 0))(
  ( (Unit!167019) )
))
(declare-fun lt!2651615 () Unit!167018)

(declare-fun lemmaLostCauseCannotMatch!69 (Regex!20031 List!72914) Unit!167018)

(assert (=> b!7573310 (= lt!2651615 (lemmaLostCauseCannotMatch!69 (regTwo!40575 r!22341) s!13436))))

(assert (=> b!7573310 (not (matchR!9627 (regOne!40575 r!22341) s!13436))))

(declare-fun lt!2651616 () Unit!167018)

(assert (=> b!7573310 (= lt!2651616 (lemmaLostCauseCannotMatch!69 (regOne!40575 r!22341) s!13436))))

(declare-fun b!7573311 () Bool)

(declare-fun res!3033763 () Bool)

(assert (=> b!7573311 (=> (not res!3033763) (not e!4508385))))

(declare-fun isEmpty!41449 (List!72914) Bool)

(assert (=> b!7573311 (= res!3033763 (not (isEmpty!41449 s!13436)))))

(declare-fun b!7573312 () Bool)

(declare-fun tp!2206824 () Bool)

(assert (=> b!7573312 (= e!4508381 tp!2206824)))

(declare-fun b!7573313 () Bool)

(assert (=> b!7573313 (= e!4508385 (not e!4508383))))

(declare-fun res!3033760 () Bool)

(assert (=> b!7573313 (=> res!3033760 e!4508383)))

(get-info :version)

(assert (=> b!7573313 (= res!3033760 (or ((_ is EmptyLang!20031) r!22341) ((_ is EmptyExpr!20031) r!22341) ((_ is ElementMatch!20031) r!22341) (not ((_ is Union!20031) r!22341))))))

(declare-fun matchRSpec!4350 (Regex!20031 List!72914) Bool)

(assert (=> b!7573313 (= (matchR!9627 r!22341 s!13436) (matchRSpec!4350 r!22341 s!13436))))

(declare-fun lt!2651614 () Unit!167018)

(declare-fun mainMatchTheorem!4344 (Regex!20031 List!72914) Unit!167018)

(assert (=> b!7573313 (= lt!2651614 (mainMatchTheorem!4344 r!22341 s!13436))))

(declare-fun b!7573314 () Bool)

(declare-fun tp_is_empty!50417 () Bool)

(assert (=> b!7573314 (= e!4508381 tp_is_empty!50417)))

(declare-fun b!7573315 () Bool)

(declare-fun tp!2206821 () Bool)

(assert (=> b!7573315 (= e!4508384 (and tp_is_empty!50417 tp!2206821))))

(assert (= (and start!731300 res!3033764) b!7573309))

(assert (= (and b!7573309 res!3033762) b!7573311))

(assert (= (and b!7573311 res!3033763) b!7573313))

(assert (= (and b!7573313 (not res!3033760)) b!7573310))

(assert (= (and b!7573310 (not res!3033761)) b!7573308))

(assert (= (and start!731300 ((_ is ElementMatch!20031) r!22341)) b!7573314))

(assert (= (and start!731300 ((_ is Concat!28876) r!22341)) b!7573307))

(assert (= (and start!731300 ((_ is Star!20031) r!22341)) b!7573312))

(assert (= (and start!731300 ((_ is Union!20031) r!22341)) b!7573306))

(assert (= (and start!731300 ((_ is Cons!72790) s!13436)) b!7573315))

(declare-fun m!8132828 () Bool)

(assert (=> b!7573311 m!8132828))

(declare-fun m!8132830 () Bool)

(assert (=> start!731300 m!8132830))

(declare-fun m!8132832 () Bool)

(assert (=> b!7573309 m!8132832))

(declare-fun m!8132834 () Bool)

(assert (=> b!7573310 m!8132834))

(declare-fun m!8132836 () Bool)

(assert (=> b!7573310 m!8132836))

(declare-fun m!8132838 () Bool)

(assert (=> b!7573310 m!8132838))

(declare-fun m!8132840 () Bool)

(assert (=> b!7573310 m!8132840))

(declare-fun m!8132842 () Bool)

(assert (=> b!7573310 m!8132842))

(declare-fun m!8132844 () Bool)

(assert (=> b!7573313 m!8132844))

(declare-fun m!8132846 () Bool)

(assert (=> b!7573313 m!8132846))

(declare-fun m!8132848 () Bool)

(assert (=> b!7573313 m!8132848))

(check-sat (not start!731300) (not b!7573312) (not b!7573309) (not b!7573313) (not b!7573311) (not b!7573307) (not b!7573315) (not b!7573310) tp_is_empty!50417 (not b!7573306))
(check-sat)
