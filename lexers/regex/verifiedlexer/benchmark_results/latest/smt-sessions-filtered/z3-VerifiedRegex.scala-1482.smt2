; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79210 () Bool)

(assert start!79210)

(declare-fun b!876183 () Bool)

(assert (=> b!876183 true))

(assert (=> b!876183 true))

(declare-fun lambda!26504 () Int)

(declare-fun lambda!26503 () Int)

(assert (=> b!876183 (not (= lambda!26504 lambda!26503))))

(assert (=> b!876183 true))

(assert (=> b!876183 true))

(declare-fun res!398432 () Bool)

(declare-fun e!575826 () Bool)

(assert (=> start!79210 (=> (not res!398432) (not e!575826))))

(declare-datatypes ((C!5016 0))(
  ( (C!5017 (val!2756 Int)) )
))
(declare-datatypes ((Regex!2223 0))(
  ( (ElementMatch!2223 (c!141666 C!5016)) (Concat!4056 (regOne!4958 Regex!2223) (regTwo!4958 Regex!2223)) (EmptyExpr!2223) (Star!2223 (reg!2552 Regex!2223)) (EmptyLang!2223) (Union!2223 (regOne!4959 Regex!2223) (regTwo!4959 Regex!2223)) )
))
(declare-fun r!15766 () Regex!2223)

(declare-fun validRegex!692 (Regex!2223) Bool)

(assert (=> start!79210 (= res!398432 (validRegex!692 r!15766))))

(assert (=> start!79210 e!575826))

(declare-fun e!575831 () Bool)

(assert (=> start!79210 e!575831))

(declare-fun e!575829 () Bool)

(assert (=> start!79210 e!575829))

(declare-fun b!876174 () Bool)

(declare-fun tp!277080 () Bool)

(declare-fun tp!277084 () Bool)

(assert (=> b!876174 (= e!575831 (and tp!277080 tp!277084))))

(declare-fun b!876175 () Bool)

(declare-fun tp!277081 () Bool)

(declare-fun tp!277083 () Bool)

(assert (=> b!876175 (= e!575831 (and tp!277081 tp!277083))))

(declare-fun b!876176 () Bool)

(declare-fun e!575828 () Bool)

(assert (=> b!876176 (= e!575828 true)))

(declare-datatypes ((List!9453 0))(
  ( (Nil!9437) (Cons!9437 (h!14838 C!5016) (t!100499 List!9453)) )
))
(declare-datatypes ((tuple2!10544 0))(
  ( (tuple2!10545 (_1!6098 List!9453) (_2!6098 List!9453)) )
))
(declare-fun lt!329817 () tuple2!10544)

(declare-fun matchRSpec!24 (Regex!2223 List!9453) Bool)

(assert (=> b!876176 (matchRSpec!24 (regTwo!4958 r!15766) (_2!6098 lt!329817))))

(declare-datatypes ((Unit!14025 0))(
  ( (Unit!14026) )
))
(declare-fun lt!329815 () Unit!14025)

(declare-fun mainMatchTheorem!24 (Regex!2223 List!9453) Unit!14025)

(assert (=> b!876176 (= lt!329815 (mainMatchTheorem!24 (regTwo!4958 r!15766) (_2!6098 lt!329817)))))

(declare-fun b!876177 () Bool)

(declare-fun tp_is_empty!4089 () Bool)

(declare-fun tp!277082 () Bool)

(assert (=> b!876177 (= e!575829 (and tp_is_empty!4089 tp!277082))))

(declare-fun b!876178 () Bool)

(declare-fun e!575827 () Bool)

(assert (=> b!876178 (= e!575826 (not e!575827))))

(declare-fun res!398431 () Bool)

(assert (=> b!876178 (=> res!398431 e!575827)))

(declare-fun lt!329811 () Bool)

(get-info :version)

(assert (=> b!876178 (= res!398431 (or (not lt!329811) (not ((_ is Concat!4056) r!15766)) (not ((_ is EmptyExpr!2223) (regOne!4958 r!15766)))))))

(declare-fun s!10566 () List!9453)

(assert (=> b!876178 (= lt!329811 (matchRSpec!24 r!15766 s!10566))))

(declare-fun matchR!761 (Regex!2223 List!9453) Bool)

(assert (=> b!876178 (= lt!329811 (matchR!761 r!15766 s!10566))))

(declare-fun lt!329812 () Unit!14025)

(assert (=> b!876178 (= lt!329812 (mainMatchTheorem!24 r!15766 s!10566))))

(declare-fun b!876179 () Bool)

(declare-fun res!398429 () Bool)

(assert (=> b!876179 (=> res!398429 e!575828)))

(assert (=> b!876179 (= res!398429 (not (matchR!761 (regTwo!4958 r!15766) (_2!6098 lt!329817))))))

(declare-fun b!876180 () Bool)

(declare-fun tp!277079 () Bool)

(assert (=> b!876180 (= e!575831 tp!277079)))

(declare-fun b!876181 () Bool)

(assert (=> b!876181 (= e!575831 tp_is_empty!4089)))

(declare-fun b!876182 () Bool)

(declare-fun e!575830 () Bool)

(assert (=> b!876182 (= e!575830 e!575828)))

(declare-fun res!398428 () Bool)

(assert (=> b!876182 (=> res!398428 e!575828)))

(declare-fun isEmpty!5626 (List!9453) Bool)

(assert (=> b!876182 (= res!398428 (not (isEmpty!5626 (_1!6098 lt!329817))))))

(declare-datatypes ((Option!1914 0))(
  ( (None!1913) (Some!1913 (v!19330 tuple2!10544)) )
))
(declare-fun lt!329813 () Option!1914)

(declare-fun get!2901 (Option!1914) tuple2!10544)

(assert (=> b!876182 (= lt!329817 (get!2901 lt!329813))))

(assert (=> b!876183 (= e!575827 e!575830)))

(declare-fun res!398430 () Bool)

(assert (=> b!876183 (=> res!398430 e!575830)))

(assert (=> b!876183 (= res!398430 (isEmpty!5626 s!10566))))

(declare-fun Exists!22 (Int) Bool)

(assert (=> b!876183 (= (Exists!22 lambda!26503) (Exists!22 lambda!26504))))

(declare-fun lt!329816 () Unit!14025)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!18 (Regex!2223 Regex!2223 List!9453) Unit!14025)

(assert (=> b!876183 (= lt!329816 (lemmaExistCutMatchRandMatchRSpecEquivalent!18 EmptyExpr!2223 (regTwo!4958 r!15766) s!10566))))

(declare-fun isDefined!1556 (Option!1914) Bool)

(assert (=> b!876183 (= (isDefined!1556 lt!329813) (Exists!22 lambda!26503))))

(declare-fun findConcatSeparation!20 (Regex!2223 Regex!2223 List!9453 List!9453 List!9453) Option!1914)

(assert (=> b!876183 (= lt!329813 (findConcatSeparation!20 EmptyExpr!2223 (regTwo!4958 r!15766) Nil!9437 s!10566 s!10566))))

(declare-fun lt!329814 () Unit!14025)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!20 (Regex!2223 Regex!2223 List!9453) Unit!14025)

(assert (=> b!876183 (= lt!329814 (lemmaFindConcatSeparationEquivalentToExists!20 EmptyExpr!2223 (regTwo!4958 r!15766) s!10566))))

(assert (= (and start!79210 res!398432) b!876178))

(assert (= (and b!876178 (not res!398431)) b!876183))

(assert (= (and b!876183 (not res!398430)) b!876182))

(assert (= (and b!876182 (not res!398428)) b!876179))

(assert (= (and b!876179 (not res!398429)) b!876176))

(assert (= (and start!79210 ((_ is ElementMatch!2223) r!15766)) b!876181))

(assert (= (and start!79210 ((_ is Concat!4056) r!15766)) b!876174))

(assert (= (and start!79210 ((_ is Star!2223) r!15766)) b!876180))

(assert (= (and start!79210 ((_ is Union!2223) r!15766)) b!876175))

(assert (= (and start!79210 ((_ is Cons!9437) s!10566)) b!876177))

(declare-fun m!1127105 () Bool)

(assert (=> b!876183 m!1127105))

(declare-fun m!1127107 () Bool)

(assert (=> b!876183 m!1127107))

(declare-fun m!1127109 () Bool)

(assert (=> b!876183 m!1127109))

(declare-fun m!1127111 () Bool)

(assert (=> b!876183 m!1127111))

(declare-fun m!1127113 () Bool)

(assert (=> b!876183 m!1127113))

(assert (=> b!876183 m!1127107))

(declare-fun m!1127115 () Bool)

(assert (=> b!876183 m!1127115))

(declare-fun m!1127117 () Bool)

(assert (=> b!876183 m!1127117))

(declare-fun m!1127119 () Bool)

(assert (=> b!876182 m!1127119))

(declare-fun m!1127121 () Bool)

(assert (=> b!876182 m!1127121))

(declare-fun m!1127123 () Bool)

(assert (=> b!876176 m!1127123))

(declare-fun m!1127125 () Bool)

(assert (=> b!876176 m!1127125))

(declare-fun m!1127127 () Bool)

(assert (=> start!79210 m!1127127))

(declare-fun m!1127129 () Bool)

(assert (=> b!876179 m!1127129))

(declare-fun m!1127131 () Bool)

(assert (=> b!876178 m!1127131))

(declare-fun m!1127133 () Bool)

(assert (=> b!876178 m!1127133))

(declare-fun m!1127135 () Bool)

(assert (=> b!876178 m!1127135))

(check-sat (not b!876174) tp_is_empty!4089 (not b!876179) (not b!876178) (not b!876175) (not b!876180) (not b!876183) (not b!876182) (not start!79210) (not b!876176) (not b!876177))
(check-sat)
