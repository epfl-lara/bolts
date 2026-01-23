; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244028 () Bool)

(assert start!244028)

(declare-fun b!2499382 () Bool)

(declare-fun res!1056991 () Bool)

(declare-fun e!1585484 () Bool)

(assert (=> b!2499382 (=> (not res!1056991) (not e!1585484))))

(declare-datatypes ((C!14956 0))(
  ( (C!14957 (val!9130 Int)) )
))
(declare-datatypes ((Regex!7399 0))(
  ( (ElementMatch!7399 (c!397583 C!14956)) (Concat!12095 (regOne!15310 Regex!7399) (regTwo!15310 Regex!7399)) (EmptyExpr!7399) (Star!7399 (reg!7728 Regex!7399)) (EmptyLang!7399) (Union!7399 (regOne!15311 Regex!7399) (regTwo!15311 Regex!7399)) )
))
(declare-fun r!27340 () Regex!7399)

(declare-fun nullable!2316 (Regex!7399) Bool)

(assert (=> b!2499382 (= res!1056991 (nullable!2316 (regOne!15310 r!27340)))))

(declare-fun b!2499383 () Bool)

(declare-fun e!1585485 () Bool)

(declare-fun tp!800316 () Bool)

(assert (=> b!2499383 (= e!1585485 tp!800316)))

(declare-fun b!2499384 () Bool)

(declare-fun res!1056994 () Bool)

(assert (=> b!2499384 (=> (not res!1056994) (not e!1585484))))

(get-info :version)

(assert (=> b!2499384 (= res!1056994 (and (not ((_ is EmptyExpr!7399) r!27340)) (not ((_ is EmptyLang!7399) r!27340)) (not ((_ is ElementMatch!7399) r!27340)) (not ((_ is Union!7399) r!27340)) (not ((_ is Star!7399) r!27340))))))

(declare-fun b!2499385 () Bool)

(declare-fun tp_is_empty!12653 () Bool)

(assert (=> b!2499385 (= e!1585485 tp_is_empty!12653)))

(declare-fun b!2499386 () Bool)

(declare-fun tp!800317 () Bool)

(declare-fun tp!800313 () Bool)

(assert (=> b!2499386 (= e!1585485 (and tp!800317 tp!800313))))

(declare-fun b!2499388 () Bool)

(declare-fun res!1056992 () Bool)

(assert (=> b!2499388 (=> (not res!1056992) (not e!1585484))))

(declare-datatypes ((List!29464 0))(
  ( (Nil!29364) (Cons!29364 (h!34784 C!14956) (t!211163 List!29464)) )
))
(declare-fun tl!4068 () List!29464)

(declare-fun c!14016 () C!14956)

(declare-fun derivative!94 (Regex!7399 List!29464) Regex!7399)

(declare-fun derivativeStep!1968 (Regex!7399 C!14956) Regex!7399)

(assert (=> b!2499388 (= res!1056992 (nullable!2316 (derivative!94 (derivativeStep!1968 r!27340 c!14016) tl!4068)))))

(declare-fun b!2499389 () Bool)

(declare-fun tp!800318 () Bool)

(declare-fun tp!800314 () Bool)

(assert (=> b!2499389 (= e!1585485 (and tp!800318 tp!800314))))

(declare-fun b!2499390 () Bool)

(assert (=> b!2499390 (= e!1585484 false)))

(declare-fun lt!895422 () Bool)

(declare-fun validRegex!3025 (Regex!7399) Bool)

(assert (=> b!2499390 (= lt!895422 (validRegex!3025 (Union!7399 (Concat!12095 (derivativeStep!1968 (regOne!15310 r!27340) c!14016) (regTwo!15310 r!27340)) (derivativeStep!1968 (regTwo!15310 r!27340) c!14016))))))

(declare-fun res!1056993 () Bool)

(assert (=> start!244028 (=> (not res!1056993) (not e!1585484))))

(assert (=> start!244028 (= res!1056993 (validRegex!3025 r!27340))))

(assert (=> start!244028 e!1585484))

(assert (=> start!244028 e!1585485))

(assert (=> start!244028 tp_is_empty!12653))

(declare-fun e!1585486 () Bool)

(assert (=> start!244028 e!1585486))

(declare-fun b!2499387 () Bool)

(declare-fun tp!800315 () Bool)

(assert (=> b!2499387 (= e!1585486 (and tp_is_empty!12653 tp!800315))))

(assert (= (and start!244028 res!1056993) b!2499388))

(assert (= (and b!2499388 res!1056992) b!2499384))

(assert (= (and b!2499384 res!1056994) b!2499382))

(assert (= (and b!2499382 res!1056991) b!2499390))

(assert (= (and start!244028 ((_ is ElementMatch!7399) r!27340)) b!2499385))

(assert (= (and start!244028 ((_ is Concat!12095) r!27340)) b!2499389))

(assert (= (and start!244028 ((_ is Star!7399) r!27340)) b!2499383))

(assert (= (and start!244028 ((_ is Union!7399) r!27340)) b!2499386))

(assert (= (and start!244028 ((_ is Cons!29364) tl!4068)) b!2499387))

(declare-fun m!2862593 () Bool)

(assert (=> b!2499382 m!2862593))

(declare-fun m!2862595 () Bool)

(assert (=> b!2499388 m!2862595))

(assert (=> b!2499388 m!2862595))

(declare-fun m!2862597 () Bool)

(assert (=> b!2499388 m!2862597))

(assert (=> b!2499388 m!2862597))

(declare-fun m!2862599 () Bool)

(assert (=> b!2499388 m!2862599))

(declare-fun m!2862601 () Bool)

(assert (=> b!2499390 m!2862601))

(declare-fun m!2862603 () Bool)

(assert (=> b!2499390 m!2862603))

(declare-fun m!2862605 () Bool)

(assert (=> b!2499390 m!2862605))

(declare-fun m!2862607 () Bool)

(assert (=> start!244028 m!2862607))

(check-sat (not b!2499383) (not b!2499389) (not b!2499390) (not start!244028) (not b!2499382) tp_is_empty!12653 (not b!2499387) (not b!2499388) (not b!2499386))
(check-sat)
