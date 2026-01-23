; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733754 () Bool)

(assert start!733754)

(declare-fun b!7616675 () Bool)

(assert (=> b!7616675 true))

(assert (=> b!7616675 true))

(declare-fun b!7616672 () Bool)

(declare-fun e!4529413 () Bool)

(assert (=> b!7616672 (= e!4529413 true)))

(declare-datatypes ((C!40874 0))(
  ( (C!40875 (val!30877 Int)) )
))
(declare-datatypes ((Regex!20274 0))(
  ( (ElementMatch!20274 (c!1403939 C!40874)) (Concat!29119 (regOne!41060 Regex!20274) (regTwo!41060 Regex!20274)) (EmptyExpr!20274) (Star!20274 (reg!20603 Regex!20274)) (EmptyLang!20274) (Union!20274 (regOne!41061 Regex!20274) (regTwo!41061 Regex!20274)) )
))
(declare-fun r!14126 () Regex!20274)

(declare-datatypes ((List!73127 0))(
  ( (Nil!73003) (Cons!73003 (h!79451 C!40874) (t!387862 List!73127)) )
))
(declare-datatypes ((tuple2!69110 0))(
  ( (tuple2!69111 (_1!37858 List!73127) (_2!37858 List!73127)) )
))
(declare-fun lt!2655442 () tuple2!69110)

(declare-fun matchR!9781 (Regex!20274 List!73127) Bool)

(declare-fun matchRSpec!4473 (Regex!20274 List!73127) Bool)

(assert (=> b!7616672 (= (matchR!9781 (reg!20603 r!14126) (_1!37858 lt!2655442)) (matchRSpec!4473 (reg!20603 r!14126) (_1!37858 lt!2655442)))))

(declare-datatypes ((Unit!167380 0))(
  ( (Unit!167381) )
))
(declare-fun lt!2655440 () Unit!167380)

(declare-fun mainMatchTheorem!4467 (Regex!20274 List!73127) Unit!167380)

(assert (=> b!7616672 (= lt!2655440 (mainMatchTheorem!4467 (reg!20603 r!14126) (_1!37858 lt!2655442)))))

(declare-datatypes ((Option!17349 0))(
  ( (None!17348) (Some!17348 (v!54483 tuple2!69110)) )
))
(declare-fun lt!2655439 () Option!17349)

(declare-fun get!25723 (Option!17349) tuple2!69110)

(assert (=> b!7616672 (= lt!2655442 (get!25723 lt!2655439))))

(declare-fun b!7616673 () Bool)

(declare-fun e!4529415 () Bool)

(declare-fun tp_is_empty!50903 () Bool)

(assert (=> b!7616673 (= e!4529415 tp_is_empty!50903)))

(declare-fun b!7616674 () Bool)

(declare-fun res!3049105 () Bool)

(declare-fun e!4529412 () Bool)

(assert (=> b!7616674 (=> (not res!3049105) (not e!4529412))))

(declare-fun s!9605 () List!73127)

(declare-fun isEmpty!41614 (List!73127) Bool)

(assert (=> b!7616674 (= res!3049105 (not (isEmpty!41614 s!9605)))))

(assert (=> b!7616675 (= e!4529412 (not e!4529413))))

(declare-fun res!3049107 () Bool)

(assert (=> b!7616675 (=> res!3049107 e!4529413)))

(declare-fun lt!2655443 () Bool)

(assert (=> b!7616675 (= res!3049107 (not lt!2655443))))

(declare-fun lambda!468156 () Int)

(declare-fun Exists!4430 (Int) Bool)

(assert (=> b!7616675 (= lt!2655443 (Exists!4430 lambda!468156))))

(declare-fun isDefined!13965 (Option!17349) Bool)

(assert (=> b!7616675 (= lt!2655443 (isDefined!13965 lt!2655439))))

(declare-fun findConcatSeparation!3379 (Regex!20274 Regex!20274 List!73127 List!73127 List!73127) Option!17349)

(assert (=> b!7616675 (= lt!2655439 (findConcatSeparation!3379 (reg!20603 r!14126) r!14126 Nil!73003 s!9605 s!9605))))

(declare-fun lt!2655441 () Unit!167380)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3137 (Regex!20274 Regex!20274 List!73127) Unit!167380)

(assert (=> b!7616675 (= lt!2655441 (lemmaFindConcatSeparationEquivalentToExists!3137 (reg!20603 r!14126) r!14126 s!9605))))

(declare-fun res!3049108 () Bool)

(assert (=> start!733754 (=> (not res!3049108) (not e!4529412))))

(declare-fun validRegex!10694 (Regex!20274) Bool)

(assert (=> start!733754 (= res!3049108 (validRegex!10694 r!14126))))

(assert (=> start!733754 e!4529412))

(assert (=> start!733754 e!4529415))

(declare-fun e!4529414 () Bool)

(assert (=> start!733754 e!4529414))

(declare-fun b!7616676 () Bool)

(declare-fun tp!2224106 () Bool)

(declare-fun tp!2224105 () Bool)

(assert (=> b!7616676 (= e!4529415 (and tp!2224106 tp!2224105))))

(declare-fun b!7616677 () Bool)

(declare-fun res!3049106 () Bool)

(assert (=> b!7616677 (=> (not res!3049106) (not e!4529412))))

(assert (=> b!7616677 (= res!3049106 (and (not (is-EmptyExpr!20274 r!14126)) (not (is-EmptyLang!20274 r!14126)) (not (is-ElementMatch!20274 r!14126)) (not (is-Union!20274 r!14126)) (is-Star!20274 r!14126)))))

(declare-fun b!7616678 () Bool)

(declare-fun tp!2224107 () Bool)

(declare-fun tp!2224109 () Bool)

(assert (=> b!7616678 (= e!4529415 (and tp!2224107 tp!2224109))))

(declare-fun b!7616679 () Bool)

(declare-fun tp!2224108 () Bool)

(assert (=> b!7616679 (= e!4529415 tp!2224108)))

(declare-fun b!7616680 () Bool)

(declare-fun tp!2224104 () Bool)

(assert (=> b!7616680 (= e!4529414 (and tp_is_empty!50903 tp!2224104))))

(assert (= (and start!733754 res!3049108) b!7616677))

(assert (= (and b!7616677 res!3049106) b!7616674))

(assert (= (and b!7616674 res!3049105) b!7616675))

(assert (= (and b!7616675 (not res!3049107)) b!7616672))

(assert (= (and start!733754 (is-ElementMatch!20274 r!14126)) b!7616673))

(assert (= (and start!733754 (is-Concat!29119 r!14126)) b!7616676))

(assert (= (and start!733754 (is-Star!20274 r!14126)) b!7616679))

(assert (= (and start!733754 (is-Union!20274 r!14126)) b!7616678))

(assert (= (and start!733754 (is-Cons!73003 s!9605)) b!7616680))

(declare-fun m!8149914 () Bool)

(assert (=> b!7616672 m!8149914))

(declare-fun m!8149916 () Bool)

(assert (=> b!7616672 m!8149916))

(declare-fun m!8149918 () Bool)

(assert (=> b!7616672 m!8149918))

(declare-fun m!8149920 () Bool)

(assert (=> b!7616672 m!8149920))

(declare-fun m!8149922 () Bool)

(assert (=> b!7616674 m!8149922))

(declare-fun m!8149924 () Bool)

(assert (=> b!7616675 m!8149924))

(declare-fun m!8149926 () Bool)

(assert (=> b!7616675 m!8149926))

(declare-fun m!8149928 () Bool)

(assert (=> b!7616675 m!8149928))

(declare-fun m!8149930 () Bool)

(assert (=> b!7616675 m!8149930))

(declare-fun m!8149932 () Bool)

(assert (=> start!733754 m!8149932))

(push 1)

(assert (not b!7616676))

(assert (not b!7616672))

(assert (not b!7616678))

(assert (not start!733754))

(assert (not b!7616679))

(assert (not b!7616675))

(assert (not b!7616680))

(assert tp_is_empty!50903)

(assert (not b!7616674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

