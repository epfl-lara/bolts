; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733962 () Bool)

(assert start!733962)

(declare-fun b!7619538 () Bool)

(assert (=> b!7619538 true))

(assert (=> b!7619538 true))

(declare-fun b!7619526 () Bool)

(declare-datatypes ((Unit!167456 0))(
  ( (Unit!167457) )
))
(declare-fun e!4530856 () Unit!167456)

(declare-fun Unit!167458 () Unit!167456)

(assert (=> b!7619526 (= e!4530856 Unit!167458)))

(declare-fun b!7619527 () Bool)

(declare-fun e!4530854 () Bool)

(declare-fun tp_is_empty!50959 () Bool)

(declare-fun tp!2224896 () Bool)

(assert (=> b!7619527 (= e!4530854 (and tp_is_empty!50959 tp!2224896))))

(declare-fun b!7619528 () Bool)

(declare-fun e!4530852 () Bool)

(assert (=> b!7619528 (= e!4530852 false)))

(declare-fun b!7619529 () Bool)

(declare-fun Unit!167459 () Unit!167456)

(assert (=> b!7619529 (= e!4530856 Unit!167459)))

(declare-fun lt!2656307 () Unit!167456)

(declare-datatypes ((C!40930 0))(
  ( (C!40931 (val!30905 Int)) )
))
(declare-datatypes ((List!73155 0))(
  ( (Nil!73031) (Cons!73031 (h!79479 C!40930) (t!387890 List!73155)) )
))
(declare-fun s!9605 () List!73155)

(declare-datatypes ((tuple2!69166 0))(
  ( (tuple2!69167 (_1!37886 List!73155) (_2!37886 List!73155)) )
))
(declare-fun lt!2656306 () tuple2!69166)

(declare-datatypes ((Regex!20302 0))(
  ( (ElementMatch!20302 (c!1404322 C!40930)) (Concat!29147 (regOne!41116 Regex!20302) (regTwo!41116 Regex!20302)) (EmptyExpr!20302) (Star!20302 (reg!20631 Regex!20302)) (EmptyLang!20302) (Union!20302 (regOne!41117 Regex!20302) (regTwo!41117 Regex!20302)) )
))
(declare-fun r!14126 () Regex!20302)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!129 (Regex!20302 Regex!20302 List!73155 List!73155 List!73155) Unit!167456)

(assert (=> b!7619529 (= lt!2656307 (lemmaFindSeparationIsDefinedThenConcatMatches!129 (reg!20631 r!14126) r!14126 (_1!37886 lt!2656306) (_2!37886 lt!2656306) s!9605))))

(declare-fun lt!2656314 () List!73155)

(declare-fun ++!17612 (List!73155 List!73155) List!73155)

(assert (=> b!7619529 (= lt!2656314 (++!17612 (_1!37886 lt!2656306) (_2!37886 lt!2656306)))))

(declare-fun matchR!9809 (Regex!20302 List!73155) Bool)

(assert (=> b!7619529 (matchR!9809 (Concat!29147 (reg!20631 r!14126) r!14126) lt!2656314)))

(declare-fun lt!2656305 () Unit!167456)

(declare-fun lemmaStarApp!183 (Regex!20302 List!73155 List!73155) Unit!167456)

(assert (=> b!7619529 (= lt!2656305 (lemmaStarApp!183 (reg!20631 r!14126) (_1!37886 lt!2656306) (_2!37886 lt!2656306)))))

(declare-fun res!3050455 () Bool)

(assert (=> b!7619529 (= res!3050455 (matchR!9809 r!14126 lt!2656314))))

(assert (=> b!7619529 (=> (not res!3050455) (not e!4530852))))

(assert (=> b!7619529 e!4530852))

(declare-fun b!7619530 () Bool)

(declare-fun e!4530853 () Bool)

(declare-fun e!4530858 () Bool)

(assert (=> b!7619530 (= e!4530853 e!4530858)))

(declare-fun res!3050458 () Bool)

(assert (=> b!7619530 (=> res!3050458 e!4530858)))

(declare-fun lambda!468326 () Int)

(declare-fun Exists!4458 (Int) Bool)

(assert (=> b!7619530 (= res!3050458 (not (Exists!4458 lambda!468326)))))

(declare-fun lt!2656309 () Unit!167456)

(assert (=> b!7619530 (= lt!2656309 e!4530856)))

(declare-fun c!1404321 () Bool)

(assert (=> b!7619530 (= c!1404321 (not (matchR!9809 r!14126 s!9605)))))

(declare-fun matchRSpec!4501 (Regex!20302 List!73155) Bool)

(assert (=> b!7619530 (= (matchR!9809 r!14126 (_2!37886 lt!2656306)) (matchRSpec!4501 r!14126 (_2!37886 lt!2656306)))))

(declare-fun lt!2656308 () Unit!167456)

(declare-fun mainMatchTheorem!4495 (Regex!20302 List!73155) Unit!167456)

(assert (=> b!7619530 (= lt!2656308 (mainMatchTheorem!4495 r!14126 (_2!37886 lt!2656306)))))

(assert (=> b!7619530 (= (matchR!9809 (reg!20631 r!14126) (_1!37886 lt!2656306)) (matchRSpec!4501 (reg!20631 r!14126) (_1!37886 lt!2656306)))))

(declare-fun lt!2656310 () Unit!167456)

(assert (=> b!7619530 (= lt!2656310 (mainMatchTheorem!4495 (reg!20631 r!14126) (_1!37886 lt!2656306)))))

(declare-datatypes ((Option!17377 0))(
  ( (None!17376) (Some!17376 (v!54511 tuple2!69166)) )
))
(declare-fun lt!2656311 () Option!17377)

(declare-fun get!25765 (Option!17377) tuple2!69166)

(assert (=> b!7619530 (= lt!2656306 (get!25765 lt!2656311))))

(declare-fun b!7619531 () Bool)

(assert (=> b!7619531 (= e!4530858 true)))

(declare-fun lt!2656315 () tuple2!69166)

(declare-fun pickWitness!433 (Int) tuple2!69166)

(assert (=> b!7619531 (= lt!2656315 (pickWitness!433 lambda!468326))))

(declare-fun b!7619532 () Bool)

(declare-fun e!4530855 () Bool)

(assert (=> b!7619532 (= e!4530855 tp_is_empty!50959)))

(declare-fun b!7619533 () Bool)

(declare-fun res!3050456 () Bool)

(declare-fun e!4530857 () Bool)

(assert (=> b!7619533 (=> (not res!3050456) (not e!4530857))))

(assert (=> b!7619533 (= res!3050456 (and (not (is-EmptyExpr!20302 r!14126)) (not (is-EmptyLang!20302 r!14126)) (not (is-ElementMatch!20302 r!14126)) (not (is-Union!20302 r!14126)) (is-Star!20302 r!14126)))))

(declare-fun b!7619535 () Bool)

(declare-fun res!3050453 () Bool)

(assert (=> b!7619535 (=> (not res!3050453) (not e!4530857))))

(declare-fun isEmpty!41647 (List!73155) Bool)

(assert (=> b!7619535 (= res!3050453 (not (isEmpty!41647 s!9605)))))

(declare-fun b!7619536 () Bool)

(declare-fun tp!2224894 () Bool)

(declare-fun tp!2224897 () Bool)

(assert (=> b!7619536 (= e!4530855 (and tp!2224894 tp!2224897))))

(declare-fun b!7619534 () Bool)

(declare-fun tp!2224895 () Bool)

(assert (=> b!7619534 (= e!4530855 tp!2224895)))

(declare-fun res!3050454 () Bool)

(assert (=> start!733962 (=> (not res!3050454) (not e!4530857))))

(declare-fun validRegex!10722 (Regex!20302) Bool)

(assert (=> start!733962 (= res!3050454 (validRegex!10722 r!14126))))

(assert (=> start!733962 e!4530857))

(assert (=> start!733962 e!4530855))

(assert (=> start!733962 e!4530854))

(declare-fun b!7619537 () Bool)

(declare-fun tp!2224892 () Bool)

(declare-fun tp!2224893 () Bool)

(assert (=> b!7619537 (= e!4530855 (and tp!2224892 tp!2224893))))

(assert (=> b!7619538 (= e!4530857 (not e!4530853))))

(declare-fun res!3050457 () Bool)

(assert (=> b!7619538 (=> res!3050457 e!4530853)))

(declare-fun lt!2656312 () Bool)

(assert (=> b!7619538 (= res!3050457 (not lt!2656312))))

(assert (=> b!7619538 (= lt!2656312 (Exists!4458 lambda!468326))))

(declare-fun isDefined!13993 (Option!17377) Bool)

(assert (=> b!7619538 (= lt!2656312 (isDefined!13993 lt!2656311))))

(declare-fun findConcatSeparation!3407 (Regex!20302 Regex!20302 List!73155 List!73155 List!73155) Option!17377)

(assert (=> b!7619538 (= lt!2656311 (findConcatSeparation!3407 (reg!20631 r!14126) r!14126 Nil!73031 s!9605 s!9605))))

(declare-fun lt!2656313 () Unit!167456)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3165 (Regex!20302 Regex!20302 List!73155) Unit!167456)

(assert (=> b!7619538 (= lt!2656313 (lemmaFindConcatSeparationEquivalentToExists!3165 (reg!20631 r!14126) r!14126 s!9605))))

(assert (= (and start!733962 res!3050454) b!7619533))

(assert (= (and b!7619533 res!3050456) b!7619535))

(assert (= (and b!7619535 res!3050453) b!7619538))

(assert (= (and b!7619538 (not res!3050457)) b!7619530))

(assert (= (and b!7619530 c!1404321) b!7619529))

(assert (= (and b!7619530 (not c!1404321)) b!7619526))

(assert (= (and b!7619529 res!3050455) b!7619528))

(assert (= (and b!7619530 (not res!3050458)) b!7619531))

(assert (= (and start!733962 (is-ElementMatch!20302 r!14126)) b!7619532))

(assert (= (and start!733962 (is-Concat!29147 r!14126)) b!7619536))

(assert (= (and start!733962 (is-Star!20302 r!14126)) b!7619534))

(assert (= (and start!733962 (is-Union!20302 r!14126)) b!7619537))

(assert (= (and start!733962 (is-Cons!73031 s!9605)) b!7619527))

(declare-fun m!8151726 () Bool)

(assert (=> b!7619530 m!8151726))

(declare-fun m!8151728 () Bool)

(assert (=> b!7619530 m!8151728))

(declare-fun m!8151730 () Bool)

(assert (=> b!7619530 m!8151730))

(declare-fun m!8151732 () Bool)

(assert (=> b!7619530 m!8151732))

(declare-fun m!8151734 () Bool)

(assert (=> b!7619530 m!8151734))

(declare-fun m!8151736 () Bool)

(assert (=> b!7619530 m!8151736))

(declare-fun m!8151738 () Bool)

(assert (=> b!7619530 m!8151738))

(declare-fun m!8151740 () Bool)

(assert (=> b!7619530 m!8151740))

(declare-fun m!8151742 () Bool)

(assert (=> b!7619530 m!8151742))

(assert (=> b!7619538 m!8151726))

(declare-fun m!8151744 () Bool)

(assert (=> b!7619538 m!8151744))

(declare-fun m!8151746 () Bool)

(assert (=> b!7619538 m!8151746))

(declare-fun m!8151748 () Bool)

(assert (=> b!7619538 m!8151748))

(declare-fun m!8151750 () Bool)

(assert (=> b!7619535 m!8151750))

(declare-fun m!8151752 () Bool)

(assert (=> b!7619529 m!8151752))

(declare-fun m!8151754 () Bool)

(assert (=> b!7619529 m!8151754))

(declare-fun m!8151756 () Bool)

(assert (=> b!7619529 m!8151756))

(declare-fun m!8151758 () Bool)

(assert (=> b!7619529 m!8151758))

(declare-fun m!8151760 () Bool)

(assert (=> b!7619529 m!8151760))

(declare-fun m!8151762 () Bool)

(assert (=> b!7619531 m!8151762))

(declare-fun m!8151764 () Bool)

(assert (=> start!733962 m!8151764))

(push 1)

(assert (not b!7619534))

(assert (not b!7619537))

(assert (not b!7619529))

(assert (not start!733962))

(assert (not b!7619531))

(assert (not b!7619527))

(assert (not b!7619538))

(assert (not b!7619536))

(assert (not b!7619530))

(assert (not b!7619535))

(assert tp_is_empty!50959)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

