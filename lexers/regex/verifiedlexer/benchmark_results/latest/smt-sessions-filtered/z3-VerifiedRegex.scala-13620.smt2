; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731308 () Bool)

(assert start!731308)

(declare-fun b!7573421 () Bool)

(declare-fun e!4508438 () Bool)

(declare-fun e!4508439 () Bool)

(assert (=> b!7573421 (= e!4508438 (not e!4508439))))

(declare-fun res!3033815 () Bool)

(assert (=> b!7573421 (=> res!3033815 e!4508439)))

(declare-datatypes ((C!40396 0))(
  ( (C!40397 (val!30638 Int)) )
))
(declare-datatypes ((Regex!20035 0))(
  ( (ElementMatch!20035 (c!1397196 C!40396)) (Concat!28880 (regOne!40582 Regex!20035) (regTwo!40582 Regex!20035)) (EmptyExpr!20035) (Star!20035 (reg!20364 Regex!20035)) (EmptyLang!20035) (Union!20035 (regOne!40583 Regex!20035) (regTwo!40583 Regex!20035)) )
))
(declare-fun r!22341 () Regex!20035)

(get-info :version)

(assert (=> b!7573421 (= res!3033815 (or ((_ is EmptyLang!20035) r!22341) ((_ is EmptyExpr!20035) r!22341) ((_ is ElementMatch!20035) r!22341) (not ((_ is Union!20035) r!22341))))))

(declare-datatypes ((List!72918 0))(
  ( (Nil!72794) (Cons!72794 (h!79242 C!40396) (t!387653 List!72918)) )
))
(declare-fun s!13436 () List!72918)

(declare-fun matchR!9631 (Regex!20035 List!72918) Bool)

(declare-fun matchRSpec!4354 (Regex!20035 List!72918) Bool)

(assert (=> b!7573421 (= (matchR!9631 r!22341 s!13436) (matchRSpec!4354 r!22341 s!13436))))

(declare-datatypes ((Unit!167026 0))(
  ( (Unit!167027) )
))
(declare-fun lt!2651662 () Unit!167026)

(declare-fun mainMatchTheorem!4348 (Regex!20035 List!72918) Unit!167026)

(assert (=> b!7573421 (= lt!2651662 (mainMatchTheorem!4348 r!22341 s!13436))))

(declare-fun b!7573423 () Bool)

(declare-fun e!4508436 () Bool)

(declare-fun tp_is_empty!50425 () Bool)

(assert (=> b!7573423 (= e!4508436 tp_is_empty!50425)))

(declare-fun b!7573424 () Bool)

(declare-fun tp!2206894 () Bool)

(declare-fun tp!2206896 () Bool)

(assert (=> b!7573424 (= e!4508436 (and tp!2206894 tp!2206896))))

(declare-fun b!7573425 () Bool)

(declare-fun res!3033816 () Bool)

(assert (=> b!7573425 (=> (not res!3033816) (not e!4508438))))

(declare-fun lostCause!1811 (Regex!20035) Bool)

(assert (=> b!7573425 (= res!3033816 (lostCause!1811 r!22341))))

(declare-fun b!7573426 () Bool)

(declare-fun res!3033818 () Bool)

(assert (=> b!7573426 (=> (not res!3033818) (not e!4508438))))

(declare-fun isEmpty!41453 (List!72918) Bool)

(assert (=> b!7573426 (= res!3033818 (not (isEmpty!41453 s!13436)))))

(declare-fun b!7573427 () Bool)

(declare-fun tp!2206892 () Bool)

(assert (=> b!7573427 (= e!4508436 tp!2206892)))

(declare-fun b!7573428 () Bool)

(assert (=> b!7573428 (= e!4508439 true)))

(declare-fun lt!2651663 () Bool)

(assert (=> b!7573428 (= lt!2651663 (matchR!9631 (Union!20035 (regOne!40583 r!22341) (regTwo!40583 r!22341)) s!13436))))

(assert (=> b!7573428 (not (matchR!9631 (regTwo!40583 r!22341) s!13436))))

(declare-fun lt!2651664 () Unit!167026)

(declare-fun lemmaLostCauseCannotMatch!73 (Regex!20035 List!72918) Unit!167026)

(assert (=> b!7573428 (= lt!2651664 (lemmaLostCauseCannotMatch!73 (regTwo!40583 r!22341) s!13436))))

(assert (=> b!7573428 (not (matchR!9631 (regOne!40583 r!22341) s!13436))))

(declare-fun lt!2651661 () Unit!167026)

(assert (=> b!7573428 (= lt!2651661 (lemmaLostCauseCannotMatch!73 (regOne!40583 r!22341) s!13436))))

(declare-fun b!7573429 () Bool)

(declare-fun tp!2206897 () Bool)

(declare-fun tp!2206895 () Bool)

(assert (=> b!7573429 (= e!4508436 (and tp!2206897 tp!2206895))))

(declare-fun b!7573422 () Bool)

(declare-fun e!4508437 () Bool)

(declare-fun tp!2206893 () Bool)

(assert (=> b!7573422 (= e!4508437 (and tp_is_empty!50425 tp!2206893))))

(declare-fun res!3033817 () Bool)

(assert (=> start!731308 (=> (not res!3033817) (not e!4508438))))

(declare-fun validRegex!10463 (Regex!20035) Bool)

(assert (=> start!731308 (= res!3033817 (validRegex!10463 r!22341))))

(assert (=> start!731308 e!4508438))

(assert (=> start!731308 e!4508436))

(assert (=> start!731308 e!4508437))

(assert (= (and start!731308 res!3033817) b!7573425))

(assert (= (and b!7573425 res!3033816) b!7573426))

(assert (= (and b!7573426 res!3033818) b!7573421))

(assert (= (and b!7573421 (not res!3033815)) b!7573428))

(assert (= (and start!731308 ((_ is ElementMatch!20035) r!22341)) b!7573423))

(assert (= (and start!731308 ((_ is Concat!28880) r!22341)) b!7573424))

(assert (= (and start!731308 ((_ is Star!20035) r!22341)) b!7573427))

(assert (= (and start!731308 ((_ is Union!20035) r!22341)) b!7573429))

(assert (= (and start!731308 ((_ is Cons!72794) s!13436)) b!7573422))

(declare-fun m!8132920 () Bool)

(assert (=> start!731308 m!8132920))

(declare-fun m!8132922 () Bool)

(assert (=> b!7573425 m!8132922))

(declare-fun m!8132924 () Bool)

(assert (=> b!7573428 m!8132924))

(declare-fun m!8132926 () Bool)

(assert (=> b!7573428 m!8132926))

(declare-fun m!8132928 () Bool)

(assert (=> b!7573428 m!8132928))

(declare-fun m!8132930 () Bool)

(assert (=> b!7573428 m!8132930))

(declare-fun m!8132932 () Bool)

(assert (=> b!7573428 m!8132932))

(declare-fun m!8132934 () Bool)

(assert (=> b!7573421 m!8132934))

(declare-fun m!8132936 () Bool)

(assert (=> b!7573421 m!8132936))

(declare-fun m!8132938 () Bool)

(assert (=> b!7573421 m!8132938))

(declare-fun m!8132940 () Bool)

(assert (=> b!7573426 m!8132940))

(check-sat (not b!7573425) (not b!7573429) (not b!7573424) (not b!7573421) (not b!7573422) tp_is_empty!50425 (not start!731308) (not b!7573427) (not b!7573428) (not b!7573426))
(check-sat)
