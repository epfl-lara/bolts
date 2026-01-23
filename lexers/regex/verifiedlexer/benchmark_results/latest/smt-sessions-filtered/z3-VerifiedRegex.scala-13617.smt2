; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731296 () Bool)

(assert start!731296)

(declare-fun b!7573247 () Bool)

(declare-fun e!4508352 () Bool)

(declare-datatypes ((C!40384 0))(
  ( (C!40385 (val!30632 Int)) )
))
(declare-datatypes ((Regex!20029 0))(
  ( (ElementMatch!20029 (c!1397190 C!40384)) (Concat!28874 (regOne!40570 Regex!20029) (regTwo!40570 Regex!20029)) (EmptyExpr!20029) (Star!20029 (reg!20358 Regex!20029)) (EmptyLang!20029) (Union!20029 (regOne!40571 Regex!20029) (regTwo!40571 Regex!20029)) )
))
(declare-fun r!22341 () Regex!20029)

(declare-fun validRegex!10457 (Regex!20029) Bool)

(assert (=> b!7573247 (= e!4508352 (validRegex!10457 (Union!20029 (regOne!40571 r!22341) (regTwo!40571 r!22341))))))

(declare-datatypes ((List!72912 0))(
  ( (Nil!72788) (Cons!72788 (h!79236 C!40384) (t!387647 List!72912)) )
))
(declare-fun s!13436 () List!72912)

(declare-fun matchR!9625 (Regex!20029 List!72912) Bool)

(assert (=> b!7573247 (not (matchR!9625 (regTwo!40571 r!22341) s!13436))))

(declare-datatypes ((Unit!167014 0))(
  ( (Unit!167015) )
))
(declare-fun lt!2651598 () Unit!167014)

(declare-fun lemmaLostCauseCannotMatch!67 (Regex!20029 List!72912) Unit!167014)

(assert (=> b!7573247 (= lt!2651598 (lemmaLostCauseCannotMatch!67 (regTwo!40571 r!22341) s!13436))))

(assert (=> b!7573247 (not (matchR!9625 (regOne!40571 r!22341) s!13436))))

(declare-fun lt!2651596 () Unit!167014)

(assert (=> b!7573247 (= lt!2651596 (lemmaLostCauseCannotMatch!67 (regOne!40571 r!22341) s!13436))))

(declare-fun b!7573248 () Bool)

(declare-fun e!4508353 () Bool)

(declare-fun tp!2206787 () Bool)

(declare-fun tp!2206784 () Bool)

(assert (=> b!7573248 (= e!4508353 (and tp!2206787 tp!2206784))))

(declare-fun b!7573249 () Bool)

(declare-fun tp!2206789 () Bool)

(declare-fun tp!2206788 () Bool)

(assert (=> b!7573249 (= e!4508353 (and tp!2206789 tp!2206788))))

(declare-fun b!7573250 () Bool)

(declare-fun res!3033733 () Bool)

(declare-fun e!4508355 () Bool)

(assert (=> b!7573250 (=> (not res!3033733) (not e!4508355))))

(declare-fun lostCause!1805 (Regex!20029) Bool)

(assert (=> b!7573250 (= res!3033733 (lostCause!1805 r!22341))))

(declare-fun b!7573251 () Bool)

(declare-fun e!4508354 () Bool)

(declare-fun tp_is_empty!50413 () Bool)

(declare-fun tp!2206786 () Bool)

(assert (=> b!7573251 (= e!4508354 (and tp_is_empty!50413 tp!2206786))))

(declare-fun b!7573252 () Bool)

(assert (=> b!7573252 (= e!4508353 tp_is_empty!50413)))

(declare-fun b!7573253 () Bool)

(declare-fun res!3033732 () Bool)

(assert (=> b!7573253 (=> (not res!3033732) (not e!4508355))))

(declare-fun isEmpty!41447 (List!72912) Bool)

(assert (=> b!7573253 (= res!3033732 (not (isEmpty!41447 s!13436)))))

(declare-fun b!7573254 () Bool)

(declare-fun tp!2206785 () Bool)

(assert (=> b!7573254 (= e!4508353 tp!2206785)))

(declare-fun res!3033731 () Bool)

(assert (=> start!731296 (=> (not res!3033731) (not e!4508355))))

(assert (=> start!731296 (= res!3033731 (validRegex!10457 r!22341))))

(assert (=> start!731296 e!4508355))

(assert (=> start!731296 e!4508353))

(assert (=> start!731296 e!4508354))

(declare-fun b!7573255 () Bool)

(assert (=> b!7573255 (= e!4508355 (not e!4508352))))

(declare-fun res!3033734 () Bool)

(assert (=> b!7573255 (=> res!3033734 e!4508352)))

(get-info :version)

(assert (=> b!7573255 (= res!3033734 (or ((_ is EmptyLang!20029) r!22341) ((_ is EmptyExpr!20029) r!22341) ((_ is ElementMatch!20029) r!22341) (not ((_ is Union!20029) r!22341))))))

(declare-fun matchRSpec!4348 (Regex!20029 List!72912) Bool)

(assert (=> b!7573255 (= (matchR!9625 r!22341 s!13436) (matchRSpec!4348 r!22341 s!13436))))

(declare-fun lt!2651597 () Unit!167014)

(declare-fun mainMatchTheorem!4342 (Regex!20029 List!72912) Unit!167014)

(assert (=> b!7573255 (= lt!2651597 (mainMatchTheorem!4342 r!22341 s!13436))))

(assert (= (and start!731296 res!3033731) b!7573250))

(assert (= (and b!7573250 res!3033733) b!7573253))

(assert (= (and b!7573253 res!3033732) b!7573255))

(assert (= (and b!7573255 (not res!3033734)) b!7573247))

(assert (= (and start!731296 ((_ is ElementMatch!20029) r!22341)) b!7573252))

(assert (= (and start!731296 ((_ is Concat!28874) r!22341)) b!7573248))

(assert (= (and start!731296 ((_ is Star!20029) r!22341)) b!7573254))

(assert (= (and start!731296 ((_ is Union!20029) r!22341)) b!7573249))

(assert (= (and start!731296 ((_ is Cons!72788) s!13436)) b!7573251))

(declare-fun m!8132784 () Bool)

(assert (=> b!7573250 m!8132784))

(declare-fun m!8132786 () Bool)

(assert (=> b!7573255 m!8132786))

(declare-fun m!8132788 () Bool)

(assert (=> b!7573255 m!8132788))

(declare-fun m!8132790 () Bool)

(assert (=> b!7573255 m!8132790))

(declare-fun m!8132792 () Bool)

(assert (=> b!7573247 m!8132792))

(declare-fun m!8132794 () Bool)

(assert (=> b!7573247 m!8132794))

(declare-fun m!8132796 () Bool)

(assert (=> b!7573247 m!8132796))

(declare-fun m!8132798 () Bool)

(assert (=> b!7573247 m!8132798))

(declare-fun m!8132800 () Bool)

(assert (=> b!7573247 m!8132800))

(declare-fun m!8132802 () Bool)

(assert (=> b!7573253 m!8132802))

(declare-fun m!8132804 () Bool)

(assert (=> start!731296 m!8132804))

(check-sat (not b!7573250) (not b!7573247) (not b!7573251) (not b!7573253) (not b!7573249) (not b!7573254) (not b!7573255) (not b!7573248) (not start!731296) tp_is_empty!50413)
(check-sat)
