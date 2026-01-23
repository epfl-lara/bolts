; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732144 () Bool)

(assert start!732144)

(declare-fun b!7583786 () Bool)

(declare-fun res!3038056 () Bool)

(declare-fun e!4513643 () Bool)

(assert (=> b!7583786 (=> (not res!3038056) (not e!4513643))))

(declare-datatypes ((C!40508 0))(
  ( (C!40509 (val!30694 Int)) )
))
(declare-datatypes ((List!72974 0))(
  ( (Nil!72850) (Cons!72850 (h!79298 C!40508) (t!387709 List!72974)) )
))
(declare-fun s!13436 () List!72974)

(declare-fun isEmpty!41525 (List!72974) Bool)

(assert (=> b!7583786 (= res!3038056 (not (isEmpty!41525 s!13436)))))

(declare-fun b!7583787 () Bool)

(declare-fun e!4513644 () Bool)

(declare-fun tp!2210105 () Bool)

(declare-fun tp!2210102 () Bool)

(assert (=> b!7583787 (= e!4513644 (and tp!2210105 tp!2210102))))

(declare-fun b!7583788 () Bool)

(declare-fun tp_is_empty!50537 () Bool)

(assert (=> b!7583788 (= e!4513644 tp_is_empty!50537)))

(declare-fun b!7583789 () Bool)

(declare-fun e!4513646 () Bool)

(declare-fun tp!2210103 () Bool)

(assert (=> b!7583789 (= e!4513646 (and tp_is_empty!50537 tp!2210103))))

(declare-fun b!7583790 () Bool)

(declare-fun tp!2210104 () Bool)

(assert (=> b!7583790 (= e!4513644 tp!2210104)))

(declare-fun b!7583791 () Bool)

(declare-fun tp!2210100 () Bool)

(declare-fun tp!2210101 () Bool)

(assert (=> b!7583791 (= e!4513644 (and tp!2210100 tp!2210101))))

(declare-fun res!3038052 () Bool)

(assert (=> start!732144 (=> (not res!3038052) (not e!4513643))))

(declare-datatypes ((Regex!20091 0))(
  ( (ElementMatch!20091 (c!1398840 C!40508)) (Concat!28936 (regOne!40694 Regex!20091) (regTwo!40694 Regex!20091)) (EmptyExpr!20091) (Star!20091 (reg!20420 Regex!20091)) (EmptyLang!20091) (Union!20091 (regOne!40695 Regex!20091) (regTwo!40695 Regex!20091)) )
))
(declare-fun r!22341 () Regex!20091)

(declare-fun validRegex!10519 (Regex!20091) Bool)

(assert (=> start!732144 (= res!3038052 (validRegex!10519 r!22341))))

(assert (=> start!732144 e!4513643))

(assert (=> start!732144 e!4513644))

(assert (=> start!732144 e!4513646))

(declare-fun b!7583792 () Bool)

(declare-fun e!4513645 () Bool)

(assert (=> b!7583792 (= e!4513643 (not e!4513645))))

(declare-fun res!3038054 () Bool)

(assert (=> b!7583792 (=> res!3038054 e!4513645)))

(get-info :version)

(assert (=> b!7583792 (= res!3038054 (or ((_ is EmptyLang!20091) r!22341) ((_ is EmptyExpr!20091) r!22341) ((_ is ElementMatch!20091) r!22341) (not ((_ is Union!20091) r!22341))))))

(declare-fun lt!2652824 () Bool)

(declare-fun matchRSpec!4404 (Regex!20091 List!72974) Bool)

(assert (=> b!7583792 (= lt!2652824 (matchRSpec!4404 r!22341 s!13436))))

(declare-fun matchR!9683 (Regex!20091 List!72974) Bool)

(assert (=> b!7583792 (= lt!2652824 (matchR!9683 r!22341 s!13436))))

(declare-datatypes ((Unit!167138 0))(
  ( (Unit!167139) )
))
(declare-fun lt!2652826 () Unit!167138)

(declare-fun mainMatchTheorem!4398 (Regex!20091 List!72974) Unit!167138)

(assert (=> b!7583792 (= lt!2652826 (mainMatchTheorem!4398 r!22341 s!13436))))

(declare-fun b!7583793 () Bool)

(declare-fun e!4513647 () Bool)

(assert (=> b!7583793 (= e!4513647 (not lt!2652824))))

(declare-fun b!7583794 () Bool)

(assert (=> b!7583794 (= e!4513645 e!4513647)))

(declare-fun res!3038053 () Bool)

(assert (=> b!7583794 (=> res!3038053 e!4513647)))

(assert (=> b!7583794 (= res!3038053 (matchR!9683 (Union!20091 (regOne!40695 r!22341) (regTwo!40695 r!22341)) s!13436))))

(assert (=> b!7583794 (not (matchR!9683 (regTwo!40695 r!22341) s!13436))))

(declare-fun lt!2652823 () Unit!167138)

(declare-fun lemmaLostCauseCannotMatch!89 (Regex!20091 List!72974) Unit!167138)

(assert (=> b!7583794 (= lt!2652823 (lemmaLostCauseCannotMatch!89 (regTwo!40695 r!22341) s!13436))))

(assert (=> b!7583794 (not (matchR!9683 (regOne!40695 r!22341) s!13436))))

(declare-fun lt!2652825 () Unit!167138)

(assert (=> b!7583794 (= lt!2652825 (lemmaLostCauseCannotMatch!89 (regOne!40695 r!22341) s!13436))))

(declare-fun b!7583795 () Bool)

(declare-fun res!3038055 () Bool)

(assert (=> b!7583795 (=> (not res!3038055) (not e!4513643))))

(declare-fun lostCause!1867 (Regex!20091) Bool)

(assert (=> b!7583795 (= res!3038055 (lostCause!1867 r!22341))))

(assert (= (and start!732144 res!3038052) b!7583795))

(assert (= (and b!7583795 res!3038055) b!7583786))

(assert (= (and b!7583786 res!3038056) b!7583792))

(assert (= (and b!7583792 (not res!3038054)) b!7583794))

(assert (= (and b!7583794 (not res!3038053)) b!7583793))

(assert (= (and start!732144 ((_ is ElementMatch!20091) r!22341)) b!7583788))

(assert (= (and start!732144 ((_ is Concat!28936) r!22341)) b!7583787))

(assert (= (and start!732144 ((_ is Star!20091) r!22341)) b!7583790))

(assert (= (and start!732144 ((_ is Union!20091) r!22341)) b!7583791))

(assert (= (and start!732144 ((_ is Cons!72850) s!13436)) b!7583789))

(declare-fun m!8136776 () Bool)

(assert (=> b!7583786 m!8136776))

(declare-fun m!8136778 () Bool)

(assert (=> b!7583792 m!8136778))

(declare-fun m!8136780 () Bool)

(assert (=> b!7583792 m!8136780))

(declare-fun m!8136782 () Bool)

(assert (=> b!7583792 m!8136782))

(declare-fun m!8136784 () Bool)

(assert (=> b!7583794 m!8136784))

(declare-fun m!8136786 () Bool)

(assert (=> b!7583794 m!8136786))

(declare-fun m!8136788 () Bool)

(assert (=> b!7583794 m!8136788))

(declare-fun m!8136790 () Bool)

(assert (=> b!7583794 m!8136790))

(declare-fun m!8136792 () Bool)

(assert (=> b!7583794 m!8136792))

(declare-fun m!8136794 () Bool)

(assert (=> b!7583795 m!8136794))

(declare-fun m!8136796 () Bool)

(assert (=> start!732144 m!8136796))

(check-sat (not b!7583786) (not b!7583791) (not start!732144) tp_is_empty!50537 (not b!7583787) (not b!7583795) (not b!7583794) (not b!7583792) (not b!7583789) (not b!7583790))
(check-sat)
