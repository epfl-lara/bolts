; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80086 () Bool)

(assert start!80086)

(declare-fun b!886575 () Bool)

(assert (=> b!886575 true))

(assert (=> b!886575 true))

(declare-fun lambda!27416 () Int)

(declare-fun lambda!27415 () Int)

(assert (=> b!886575 (not (= lambda!27416 lambda!27415))))

(assert (=> b!886575 true))

(assert (=> b!886575 true))

(declare-fun b!886574 () Bool)

(declare-fun e!581319 () Bool)

(declare-fun tp_is_empty!4209 () Bool)

(assert (=> b!886574 (= e!581319 tp_is_empty!4209)))

(declare-fun e!581318 () Bool)

(declare-fun e!581316 () Bool)

(assert (=> b!886575 (= e!581318 e!581316)))

(declare-fun res!403236 () Bool)

(assert (=> b!886575 (=> res!403236 e!581316)))

(declare-datatypes ((C!5136 0))(
  ( (C!5137 (val!2816 Int)) )
))
(declare-datatypes ((List!9513 0))(
  ( (Nil!9497) (Cons!9497 (h!14898 C!5136) (t!100559 List!9513)) )
))
(declare-fun s!10566 () List!9513)

(declare-fun isEmpty!5705 (List!9513) Bool)

(assert (=> b!886575 (= res!403236 (isEmpty!5705 s!10566))))

(declare-fun Exists!78 (Int) Bool)

(assert (=> b!886575 (= (Exists!78 lambda!27415) (Exists!78 lambda!27416))))

(declare-datatypes ((Unit!14145 0))(
  ( (Unit!14146) )
))
(declare-fun lt!331629 () Unit!14145)

(declare-datatypes ((Regex!2283 0))(
  ( (ElementMatch!2283 (c!143366 C!5136)) (Concat!4116 (regOne!5078 Regex!2283) (regTwo!5078 Regex!2283)) (EmptyExpr!2283) (Star!2283 (reg!2612 Regex!2283)) (EmptyLang!2283) (Union!2283 (regOne!5079 Regex!2283) (regTwo!5079 Regex!2283)) )
))
(declare-fun r!15766 () Regex!2283)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!68 (Regex!2283 Regex!2283 List!9513) Unit!14145)

(assert (=> b!886575 (= lt!331629 (lemmaExistCutMatchRandMatchRSpecEquivalent!68 (regOne!5078 r!15766) (regTwo!5078 r!15766) s!10566))))

(declare-datatypes ((tuple2!10652 0))(
  ( (tuple2!10653 (_1!6152 List!9513) (_2!6152 List!9513)) )
))
(declare-datatypes ((Option!1968 0))(
  ( (None!1967) (Some!1967 (v!19384 tuple2!10652)) )
))
(declare-fun lt!331632 () Option!1968)

(declare-fun isDefined!1610 (Option!1968) Bool)

(assert (=> b!886575 (= (isDefined!1610 lt!331632) (Exists!78 lambda!27415))))

(declare-fun findConcatSeparation!74 (Regex!2283 Regex!2283 List!9513 List!9513 List!9513) Option!1968)

(assert (=> b!886575 (= lt!331632 (findConcatSeparation!74 (regOne!5078 r!15766) (regTwo!5078 r!15766) Nil!9497 s!10566 s!10566))))

(declare-fun lt!331631 () Unit!14145)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!74 (Regex!2283 Regex!2283 List!9513) Unit!14145)

(assert (=> b!886575 (= lt!331631 (lemmaFindConcatSeparationEquivalentToExists!74 (regOne!5078 r!15766) (regTwo!5078 r!15766) s!10566))))

(declare-fun b!886576 () Bool)

(declare-fun tp!279451 () Bool)

(assert (=> b!886576 (= e!581319 tp!279451)))

(declare-fun b!886577 () Bool)

(declare-fun e!581314 () Bool)

(assert (=> b!886577 (= e!581314 (not e!581318))))

(declare-fun res!403235 () Bool)

(assert (=> b!886577 (=> res!403235 e!581318)))

(declare-fun lt!331630 () Bool)

(get-info :version)

(assert (=> b!886577 (= res!403235 (or (not lt!331630) (and ((_ is Concat!4116) r!15766) ((_ is EmptyExpr!2283) (regOne!5078 r!15766))) (and ((_ is Concat!4116) r!15766) ((_ is EmptyExpr!2283) (regTwo!5078 r!15766))) (not ((_ is Concat!4116) r!15766))))))

(declare-fun matchRSpec!84 (Regex!2283 List!9513) Bool)

(assert (=> b!886577 (= lt!331630 (matchRSpec!84 r!15766 s!10566))))

(declare-fun matchR!821 (Regex!2283 List!9513) Bool)

(assert (=> b!886577 (= lt!331630 (matchR!821 r!15766 s!10566))))

(declare-fun lt!331635 () Unit!14145)

(declare-fun mainMatchTheorem!84 (Regex!2283 List!9513) Unit!14145)

(assert (=> b!886577 (= lt!331635 (mainMatchTheorem!84 r!15766 s!10566))))

(declare-fun b!886578 () Bool)

(declare-fun e!581315 () Bool)

(declare-fun tp!279456 () Bool)

(assert (=> b!886578 (= e!581315 (and tp_is_empty!4209 tp!279456))))

(declare-fun b!886579 () Bool)

(declare-fun e!581317 () Bool)

(assert (=> b!886579 (= e!581316 e!581317)))

(declare-fun res!403234 () Bool)

(assert (=> b!886579 (=> res!403234 e!581317)))

(declare-fun lt!331633 () tuple2!10652)

(assert (=> b!886579 (= res!403234 (not (matchR!821 (regOne!5078 r!15766) (_1!6152 lt!331633))))))

(declare-fun get!2974 (Option!1968) tuple2!10652)

(assert (=> b!886579 (= lt!331633 (get!2974 lt!331632))))

(declare-fun res!403238 () Bool)

(assert (=> start!80086 (=> (not res!403238) (not e!581314))))

(declare-fun validRegex!752 (Regex!2283) Bool)

(assert (=> start!80086 (= res!403238 (validRegex!752 r!15766))))

(assert (=> start!80086 e!581314))

(assert (=> start!80086 e!581319))

(assert (=> start!80086 e!581315))

(declare-fun b!886580 () Bool)

(declare-fun res!403237 () Bool)

(assert (=> b!886580 (=> res!403237 e!581317)))

(assert (=> b!886580 (= res!403237 (not (matchR!821 (regTwo!5078 r!15766) (_2!6152 lt!331633))))))

(declare-fun b!886581 () Bool)

(declare-fun tp!279453 () Bool)

(declare-fun tp!279454 () Bool)

(assert (=> b!886581 (= e!581319 (and tp!279453 tp!279454))))

(declare-fun b!886582 () Bool)

(assert (=> b!886582 (= e!581317 true)))

(declare-fun removeUselessConcat!26 (Regex!2283) Regex!2283)

(assert (=> b!886582 (matchR!821 (removeUselessConcat!26 (regTwo!5078 r!15766)) (_2!6152 lt!331633))))

(declare-fun lt!331634 () Unit!14145)

(declare-fun lemmaRemoveUselessConcatSound!20 (Regex!2283 List!9513) Unit!14145)

(assert (=> b!886582 (= lt!331634 (lemmaRemoveUselessConcatSound!20 (regTwo!5078 r!15766) (_2!6152 lt!331633)))))

(assert (=> b!886582 (matchR!821 (removeUselessConcat!26 (regOne!5078 r!15766)) (_1!6152 lt!331633))))

(declare-fun lt!331628 () Unit!14145)

(assert (=> b!886582 (= lt!331628 (lemmaRemoveUselessConcatSound!20 (regOne!5078 r!15766) (_1!6152 lt!331633)))))

(declare-fun b!886583 () Bool)

(declare-fun tp!279455 () Bool)

(declare-fun tp!279452 () Bool)

(assert (=> b!886583 (= e!581319 (and tp!279455 tp!279452))))

(assert (= (and start!80086 res!403238) b!886577))

(assert (= (and b!886577 (not res!403235)) b!886575))

(assert (= (and b!886575 (not res!403236)) b!886579))

(assert (= (and b!886579 (not res!403234)) b!886580))

(assert (= (and b!886580 (not res!403237)) b!886582))

(assert (= (and start!80086 ((_ is ElementMatch!2283) r!15766)) b!886574))

(assert (= (and start!80086 ((_ is Concat!4116) r!15766)) b!886581))

(assert (= (and start!80086 ((_ is Star!2283) r!15766)) b!886576))

(assert (= (and start!80086 ((_ is Union!2283) r!15766)) b!886583))

(assert (= (and start!80086 ((_ is Cons!9497) s!10566)) b!886578))

(declare-fun m!1132033 () Bool)

(assert (=> b!886582 m!1132033))

(declare-fun m!1132035 () Bool)

(assert (=> b!886582 m!1132035))

(declare-fun m!1132037 () Bool)

(assert (=> b!886582 m!1132037))

(assert (=> b!886582 m!1132033))

(declare-fun m!1132039 () Bool)

(assert (=> b!886582 m!1132039))

(declare-fun m!1132041 () Bool)

(assert (=> b!886582 m!1132041))

(assert (=> b!886582 m!1132039))

(declare-fun m!1132043 () Bool)

(assert (=> b!886582 m!1132043))

(declare-fun m!1132045 () Bool)

(assert (=> b!886577 m!1132045))

(declare-fun m!1132047 () Bool)

(assert (=> b!886577 m!1132047))

(declare-fun m!1132049 () Bool)

(assert (=> b!886577 m!1132049))

(declare-fun m!1132051 () Bool)

(assert (=> b!886580 m!1132051))

(declare-fun m!1132053 () Bool)

(assert (=> b!886579 m!1132053))

(declare-fun m!1132055 () Bool)

(assert (=> b!886579 m!1132055))

(declare-fun m!1132057 () Bool)

(assert (=> start!80086 m!1132057))

(declare-fun m!1132059 () Bool)

(assert (=> b!886575 m!1132059))

(assert (=> b!886575 m!1132059))

(declare-fun m!1132061 () Bool)

(assert (=> b!886575 m!1132061))

(declare-fun m!1132063 () Bool)

(assert (=> b!886575 m!1132063))

(declare-fun m!1132065 () Bool)

(assert (=> b!886575 m!1132065))

(declare-fun m!1132067 () Bool)

(assert (=> b!886575 m!1132067))

(declare-fun m!1132069 () Bool)

(assert (=> b!886575 m!1132069))

(declare-fun m!1132071 () Bool)

(assert (=> b!886575 m!1132071))

(check-sat (not b!886575) (not b!886578) (not b!886576) (not b!886579) (not b!886577) (not start!80086) (not b!886583) (not b!886582) tp_is_empty!4209 (not b!886580) (not b!886581))
(check-sat)
