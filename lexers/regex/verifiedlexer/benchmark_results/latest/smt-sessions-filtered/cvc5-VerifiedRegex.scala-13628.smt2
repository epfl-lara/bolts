; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731566 () Bool)

(assert start!731566)

(declare-fun b!7576060 () Bool)

(assert (=> b!7576060 true))

(assert (=> b!7576060 true))

(declare-fun lambda!466717 () Int)

(declare-fun lambda!466716 () Int)

(assert (=> b!7576060 (not (= lambda!466717 lambda!466716))))

(assert (=> b!7576060 true))

(assert (=> b!7576060 true))

(declare-fun b!7576058 () Bool)

(declare-fun e!4509790 () Bool)

(declare-fun tp!2207545 () Bool)

(declare-fun tp!2207543 () Bool)

(assert (=> b!7576058 (= e!4509790 (and tp!2207545 tp!2207543))))

(declare-fun b!7576059 () Bool)

(declare-fun e!4509792 () Bool)

(declare-fun e!4509791 () Bool)

(assert (=> b!7576059 (= e!4509792 (not e!4509791))))

(declare-fun res!3035100 () Bool)

(assert (=> b!7576059 (=> res!3035100 e!4509791)))

(declare-datatypes ((C!40426 0))(
  ( (C!40427 (val!30653 Int)) )
))
(declare-datatypes ((Regex!20050 0))(
  ( (ElementMatch!20050 (c!1397577 C!40426)) (Concat!28895 (regOne!40612 Regex!20050) (regTwo!40612 Regex!20050)) (EmptyExpr!20050) (Star!20050 (reg!20379 Regex!20050)) (EmptyLang!20050) (Union!20050 (regOne!40613 Regex!20050) (regTwo!40613 Regex!20050)) )
))
(declare-fun r!22341 () Regex!20050)

(declare-fun lt!2652054 () Bool)

(assert (=> b!7576059 (= res!3035100 (or (is-EmptyLang!20050 r!22341) (is-EmptyExpr!20050 r!22341) (is-ElementMatch!20050 r!22341) (is-Union!20050 r!22341) (is-Star!20050 r!22341) (not lt!2652054)))))

(declare-datatypes ((List!72933 0))(
  ( (Nil!72809) (Cons!72809 (h!79257 C!40426) (t!387668 List!72933)) )
))
(declare-fun s!13436 () List!72933)

(declare-fun matchRSpec!4369 (Regex!20050 List!72933) Bool)

(assert (=> b!7576059 (= lt!2652054 (matchRSpec!4369 r!22341 s!13436))))

(declare-fun matchR!9646 (Regex!20050 List!72933) Bool)

(assert (=> b!7576059 (= lt!2652054 (matchR!9646 r!22341 s!13436))))

(declare-datatypes ((Unit!167056 0))(
  ( (Unit!167057) )
))
(declare-fun lt!2652051 () Unit!167056)

(declare-fun mainMatchTheorem!4363 (Regex!20050 List!72933) Unit!167056)

(assert (=> b!7576059 (= lt!2652051 (mainMatchTheorem!4363 r!22341 s!13436))))

(declare-fun e!4509793 () Bool)

(assert (=> b!7576060 (= e!4509791 e!4509793)))

(declare-fun res!3035097 () Bool)

(assert (=> b!7576060 (=> res!3035097 e!4509793)))

(declare-datatypes ((tuple2!68894 0))(
  ( (tuple2!68895 (_1!37750 List!72933) (_2!37750 List!72933)) )
))
(declare-fun lt!2652056 () tuple2!68894)

(assert (=> b!7576060 (= res!3035097 (not (matchR!9646 (regOne!40612 r!22341) (_1!37750 lt!2652056))))))

(declare-datatypes ((Option!17283 0))(
  ( (None!17282) (Some!17282 (v!54417 tuple2!68894)) )
))
(declare-fun lt!2652053 () Option!17283)

(declare-fun get!25581 (Option!17283) tuple2!68894)

(assert (=> b!7576060 (= lt!2652056 (get!25581 lt!2652053))))

(declare-fun Exists!4293 (Int) Bool)

(assert (=> b!7576060 (= (Exists!4293 lambda!466716) (Exists!4293 lambda!466717))))

(declare-fun lt!2652055 () Unit!167056)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2611 (Regex!20050 Regex!20050 List!72933) Unit!167056)

(assert (=> b!7576060 (= lt!2652055 (lemmaExistCutMatchRandMatchRSpecEquivalent!2611 (regOne!40612 r!22341) (regTwo!40612 r!22341) s!13436))))

(declare-fun isDefined!13929 (Option!17283) Bool)

(assert (=> b!7576060 (= (isDefined!13929 lt!2652053) (Exists!4293 lambda!466716))))

(declare-fun findConcatSeparation!3343 (Regex!20050 Regex!20050 List!72933 List!72933 List!72933) Option!17283)

(assert (=> b!7576060 (= lt!2652053 (findConcatSeparation!3343 (regOne!40612 r!22341) (regTwo!40612 r!22341) Nil!72809 s!13436 s!13436))))

(declare-fun lt!2652052 () Unit!167056)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3101 (Regex!20050 Regex!20050 List!72933) Unit!167056)

(assert (=> b!7576060 (= lt!2652052 (lemmaFindConcatSeparationEquivalentToExists!3101 (regOne!40612 r!22341) (regTwo!40612 r!22341) s!13436))))

(declare-fun b!7576061 () Bool)

(declare-fun tp!2207544 () Bool)

(declare-fun tp!2207547 () Bool)

(assert (=> b!7576061 (= e!4509790 (and tp!2207544 tp!2207547))))

(declare-fun res!3035098 () Bool)

(assert (=> start!731566 (=> (not res!3035098) (not e!4509792))))

(declare-fun validRegex!10478 (Regex!20050) Bool)

(assert (=> start!731566 (= res!3035098 (validRegex!10478 r!22341))))

(assert (=> start!731566 e!4509792))

(assert (=> start!731566 e!4509790))

(declare-fun e!4509794 () Bool)

(assert (=> start!731566 e!4509794))

(declare-fun b!7576062 () Bool)

(declare-fun tp_is_empty!50455 () Bool)

(declare-fun tp!2207546 () Bool)

(assert (=> b!7576062 (= e!4509794 (and tp_is_empty!50455 tp!2207546))))

(declare-fun b!7576063 () Bool)

(declare-fun res!3035099 () Bool)

(assert (=> b!7576063 (=> res!3035099 e!4509793)))

(assert (=> b!7576063 (= res!3035099 (not (matchR!9646 (regTwo!40612 r!22341) (_2!37750 lt!2652056))))))

(declare-fun b!7576064 () Bool)

(declare-fun res!3035102 () Bool)

(assert (=> b!7576064 (=> (not res!3035102) (not e!4509792))))

(declare-fun lostCause!1826 (Regex!20050) Bool)

(assert (=> b!7576064 (= res!3035102 (lostCause!1826 r!22341))))

(declare-fun b!7576065 () Bool)

(assert (=> b!7576065 (= e!4509793 true)))

(declare-fun b!7576066 () Bool)

(declare-fun res!3035103 () Bool)

(assert (=> b!7576066 (=> res!3035103 e!4509793)))

(assert (=> b!7576066 (= res!3035103 (not (lostCause!1826 (regOne!40612 r!22341))))))

(declare-fun b!7576067 () Bool)

(declare-fun tp!2207542 () Bool)

(assert (=> b!7576067 (= e!4509790 tp!2207542)))

(declare-fun b!7576068 () Bool)

(declare-fun res!3035101 () Bool)

(assert (=> b!7576068 (=> (not res!3035101) (not e!4509792))))

(declare-fun isEmpty!41476 (List!72933) Bool)

(assert (=> b!7576068 (= res!3035101 (not (isEmpty!41476 s!13436)))))

(declare-fun b!7576069 () Bool)

(assert (=> b!7576069 (= e!4509790 tp_is_empty!50455)))

(assert (= (and start!731566 res!3035098) b!7576064))

(assert (= (and b!7576064 res!3035102) b!7576068))

(assert (= (and b!7576068 res!3035101) b!7576059))

(assert (= (and b!7576059 (not res!3035100)) b!7576060))

(assert (= (and b!7576060 (not res!3035097)) b!7576063))

(assert (= (and b!7576063 (not res!3035099)) b!7576066))

(assert (= (and b!7576066 (not res!3035103)) b!7576065))

(assert (= (and start!731566 (is-ElementMatch!20050 r!22341)) b!7576069))

(assert (= (and start!731566 (is-Concat!28895 r!22341)) b!7576061))

(assert (= (and start!731566 (is-Star!20050 r!22341)) b!7576067))

(assert (= (and start!731566 (is-Union!20050 r!22341)) b!7576058))

(assert (= (and start!731566 (is-Cons!72809 s!13436)) b!7576062))

(declare-fun m!8134082 () Bool)

(assert (=> b!7576068 m!8134082))

(declare-fun m!8134084 () Bool)

(assert (=> b!7576060 m!8134084))

(declare-fun m!8134086 () Bool)

(assert (=> b!7576060 m!8134086))

(declare-fun m!8134088 () Bool)

(assert (=> b!7576060 m!8134088))

(declare-fun m!8134090 () Bool)

(assert (=> b!7576060 m!8134090))

(declare-fun m!8134092 () Bool)

(assert (=> b!7576060 m!8134092))

(declare-fun m!8134094 () Bool)

(assert (=> b!7576060 m!8134094))

(declare-fun m!8134096 () Bool)

(assert (=> b!7576060 m!8134096))

(assert (=> b!7576060 m!8134090))

(declare-fun m!8134098 () Bool)

(assert (=> b!7576060 m!8134098))

(declare-fun m!8134100 () Bool)

(assert (=> b!7576066 m!8134100))

(declare-fun m!8134102 () Bool)

(assert (=> b!7576064 m!8134102))

(declare-fun m!8134104 () Bool)

(assert (=> b!7576063 m!8134104))

(declare-fun m!8134106 () Bool)

(assert (=> start!731566 m!8134106))

(declare-fun m!8134108 () Bool)

(assert (=> b!7576059 m!8134108))

(declare-fun m!8134110 () Bool)

(assert (=> b!7576059 m!8134110))

(declare-fun m!8134112 () Bool)

(assert (=> b!7576059 m!8134112))

(push 1)

(assert (not b!7576058))

(assert tp_is_empty!50455)

(assert (not b!7576067))

(assert (not b!7576066))

(assert (not b!7576062))

(assert (not b!7576060))

(assert (not b!7576068))

(assert (not b!7576061))

(assert (not b!7576059))

(assert (not b!7576063))

(assert (not start!731566))

(assert (not b!7576064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

