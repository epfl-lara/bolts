; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734518 () Bool)

(assert start!734518)

(declare-fun b!7627249 () Bool)

(assert (=> b!7627249 true))

(assert (=> b!7627249 true))

(declare-fun b!7627244 () Bool)

(declare-fun e!4534718 () Bool)

(declare-fun tp!2226967 () Bool)

(assert (=> b!7627244 (= e!4534718 tp!2226967)))

(declare-fun b!7627245 () Bool)

(declare-fun tp!2226966 () Bool)

(declare-fun tp!2226968 () Bool)

(assert (=> b!7627245 (= e!4534718 (and tp!2226966 tp!2226968))))

(declare-fun b!7627246 () Bool)

(declare-fun tp!2226971 () Bool)

(declare-fun tp!2226970 () Bool)

(assert (=> b!7627246 (= e!4534718 (and tp!2226971 tp!2226970))))

(declare-fun b!7627247 () Bool)

(declare-fun e!4534720 () Bool)

(assert (=> b!7627247 (= e!4534720 true)))

(declare-datatypes ((C!41054 0))(
  ( (C!41055 (val!30967 Int)) )
))
(declare-datatypes ((Regex!20364 0))(
  ( (ElementMatch!20364 (c!1405305 C!41054)) (Concat!29209 (regOne!41240 Regex!20364) (regTwo!41240 Regex!20364)) (EmptyExpr!20364) (Star!20364 (reg!20693 Regex!20364)) (EmptyLang!20364) (Union!20364 (regOne!41241 Regex!20364) (regTwo!41241 Regex!20364)) )
))
(declare-fun r!14126 () Regex!20364)

(declare-datatypes ((List!73215 0))(
  ( (Nil!73091) (Cons!73091 (h!79539 C!41054) (t!387950 List!73215)) )
))
(declare-datatypes ((tuple2!69286 0))(
  ( (tuple2!69287 (_1!37946 List!73215) (_2!37946 List!73215)) )
))
(declare-fun lt!2658107 () tuple2!69286)

(declare-fun matchR!9867 (Regex!20364 List!73215) Bool)

(declare-fun matchRSpec!4527 (Regex!20364 List!73215) Bool)

(assert (=> b!7627247 (= (matchR!9867 (regOne!41240 r!14126) (_1!37946 lt!2658107)) (matchRSpec!4527 (regOne!41240 r!14126) (_1!37946 lt!2658107)))))

(declare-datatypes ((Unit!167656 0))(
  ( (Unit!167657) )
))
(declare-fun lt!2658103 () Unit!167656)

(declare-fun mainMatchTheorem!4517 (Regex!20364 List!73215) Unit!167656)

(assert (=> b!7627247 (= lt!2658103 (mainMatchTheorem!4517 (regOne!41240 r!14126) (_1!37946 lt!2658107)))))

(declare-fun lambda!468842 () Int)

(declare-fun pickWitness!459 (Int) tuple2!69286)

(assert (=> b!7627247 (= lt!2658107 (pickWitness!459 lambda!468842))))

(declare-fun b!7627248 () Bool)

(declare-fun tp_is_empty!51083 () Bool)

(assert (=> b!7627248 (= e!4534718 tp_is_empty!51083)))

(declare-fun res!3054262 () Bool)

(declare-fun e!4534719 () Bool)

(assert (=> start!734518 (=> (not res!3054262) (not e!4534719))))

(declare-fun validRegex!10782 (Regex!20364) Bool)

(assert (=> start!734518 (= res!3054262 (validRegex!10782 r!14126))))

(assert (=> start!734518 e!4534719))

(assert (=> start!734518 e!4534718))

(declare-fun e!4534716 () Bool)

(assert (=> start!734518 e!4534716))

(declare-fun e!4534717 () Bool)

(assert (=> b!7627249 (= e!4534719 (not e!4534717))))

(declare-fun res!3054259 () Bool)

(assert (=> b!7627249 (=> res!3054259 e!4534717)))

(declare-fun s!9605 () List!73215)

(assert (=> b!7627249 (= res!3054259 (not (matchR!9867 r!14126 s!9605)))))

(declare-fun lt!2658104 () Bool)

(declare-fun Exists!4518 (Int) Bool)

(assert (=> b!7627249 (= lt!2658104 (Exists!4518 lambda!468842))))

(declare-datatypes ((Option!17437 0))(
  ( (None!17436) (Some!17436 (v!54571 tuple2!69286)) )
))
(declare-fun isDefined!14053 (Option!17437) Bool)

(declare-fun findConcatSeparation!3467 (Regex!20364 Regex!20364 List!73215 List!73215 List!73215) Option!17437)

(assert (=> b!7627249 (= lt!2658104 (isDefined!14053 (findConcatSeparation!3467 (regOne!41240 r!14126) (regTwo!41240 r!14126) Nil!73091 s!9605 s!9605)))))

(declare-fun lt!2658105 () Unit!167656)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3225 (Regex!20364 Regex!20364 List!73215) Unit!167656)

(assert (=> b!7627249 (= lt!2658105 (lemmaFindConcatSeparationEquivalentToExists!3225 (regOne!41240 r!14126) (regTwo!41240 r!14126) s!9605))))

(declare-fun b!7627250 () Bool)

(assert (=> b!7627250 (= e!4534717 e!4534720)))

(declare-fun res!3054260 () Bool)

(assert (=> b!7627250 (=> res!3054260 e!4534720)))

(assert (=> b!7627250 (= res!3054260 (not (Exists!4518 lambda!468842)))))

(assert (=> b!7627250 lt!2658104))

(declare-fun lt!2658106 () Unit!167656)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!271 (Regex!20364 Regex!20364 List!73215) Unit!167656)

(assert (=> b!7627250 (= lt!2658106 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!271 (regOne!41240 r!14126) (regTwo!41240 r!14126) s!9605))))

(declare-fun b!7627251 () Bool)

(declare-fun res!3054261 () Bool)

(assert (=> b!7627251 (=> (not res!3054261) (not e!4534719))))

(assert (=> b!7627251 (= res!3054261 (and (not (is-EmptyExpr!20364 r!14126)) (not (is-EmptyLang!20364 r!14126)) (not (is-ElementMatch!20364 r!14126)) (not (is-Union!20364 r!14126)) (not (is-Star!20364 r!14126))))))

(declare-fun b!7627252 () Bool)

(declare-fun tp!2226969 () Bool)

(assert (=> b!7627252 (= e!4534716 (and tp_is_empty!51083 tp!2226969))))

(assert (= (and start!734518 res!3054262) b!7627251))

(assert (= (and b!7627251 res!3054261) b!7627249))

(assert (= (and b!7627249 (not res!3054259)) b!7627250))

(assert (= (and b!7627250 (not res!3054260)) b!7627247))

(assert (= (and start!734518 (is-ElementMatch!20364 r!14126)) b!7627248))

(assert (= (and start!734518 (is-Concat!29209 r!14126)) b!7627245))

(assert (= (and start!734518 (is-Star!20364 r!14126)) b!7627244))

(assert (= (and start!734518 (is-Union!20364 r!14126)) b!7627246))

(assert (= (and start!734518 (is-Cons!73091 s!9605)) b!7627252))

(declare-fun m!8155974 () Bool)

(assert (=> b!7627247 m!8155974))

(declare-fun m!8155976 () Bool)

(assert (=> b!7627247 m!8155976))

(declare-fun m!8155978 () Bool)

(assert (=> b!7627247 m!8155978))

(declare-fun m!8155980 () Bool)

(assert (=> b!7627247 m!8155980))

(declare-fun m!8155982 () Bool)

(assert (=> start!734518 m!8155982))

(declare-fun m!8155984 () Bool)

(assert (=> b!7627249 m!8155984))

(declare-fun m!8155986 () Bool)

(assert (=> b!7627249 m!8155986))

(declare-fun m!8155988 () Bool)

(assert (=> b!7627249 m!8155988))

(declare-fun m!8155990 () Bool)

(assert (=> b!7627249 m!8155990))

(assert (=> b!7627249 m!8155986))

(declare-fun m!8155992 () Bool)

(assert (=> b!7627249 m!8155992))

(assert (=> b!7627250 m!8155988))

(declare-fun m!8155994 () Bool)

(assert (=> b!7627250 m!8155994))

(push 1)

(assert (not b!7627244))

(assert (not start!734518))

(assert (not b!7627247))

(assert tp_is_empty!51083)

(assert (not b!7627249))

(assert (not b!7627250))

(assert (not b!7627246))

(assert (not b!7627252))

(assert (not b!7627245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

