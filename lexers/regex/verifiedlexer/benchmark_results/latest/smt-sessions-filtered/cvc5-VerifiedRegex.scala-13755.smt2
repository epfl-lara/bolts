; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733966 () Bool)

(assert start!733966)

(declare-fun b!7619640 () Bool)

(assert (=> b!7619640 true))

(assert (=> b!7619640 true))

(declare-fun res!3050514 () Bool)

(declare-fun e!4530908 () Bool)

(assert (=> start!733966 (=> (not res!3050514) (not e!4530908))))

(declare-datatypes ((C!40934 0))(
  ( (C!40935 (val!30907 Int)) )
))
(declare-datatypes ((Regex!20304 0))(
  ( (ElementMatch!20304 (c!1404330 C!40934)) (Concat!29149 (regOne!41120 Regex!20304) (regTwo!41120 Regex!20304)) (EmptyExpr!20304) (Star!20304 (reg!20633 Regex!20304)) (EmptyLang!20304) (Union!20304 (regOne!41121 Regex!20304) (regTwo!41121 Regex!20304)) )
))
(declare-fun r!14126 () Regex!20304)

(declare-fun validRegex!10724 (Regex!20304) Bool)

(assert (=> start!733966 (= res!3050514 (validRegex!10724 r!14126))))

(assert (=> start!733966 e!4530908))

(declare-fun e!4530912 () Bool)

(assert (=> start!733966 e!4530912))

(declare-fun e!4530910 () Bool)

(assert (=> start!733966 e!4530910))

(declare-fun b!7619636 () Bool)

(declare-fun res!3050516 () Bool)

(assert (=> b!7619636 (=> (not res!3050516) (not e!4530908))))

(declare-datatypes ((List!73157 0))(
  ( (Nil!73033) (Cons!73033 (h!79481 C!40934) (t!387892 List!73157)) )
))
(declare-fun s!9605 () List!73157)

(declare-fun isEmpty!41649 (List!73157) Bool)

(assert (=> b!7619636 (= res!3050516 (not (isEmpty!41649 s!9605)))))

(declare-fun b!7619637 () Bool)

(declare-fun e!4530906 () Bool)

(declare-fun e!4530907 () Bool)

(assert (=> b!7619637 (= e!4530906 e!4530907)))

(declare-fun res!3050518 () Bool)

(assert (=> b!7619637 (=> res!3050518 e!4530907)))

(declare-fun lambda!468340 () Int)

(declare-fun Exists!4460 (Int) Bool)

(assert (=> b!7619637 (= res!3050518 (not (Exists!4460 lambda!468340)))))

(declare-datatypes ((Unit!167464 0))(
  ( (Unit!167465) )
))
(declare-fun lt!2656381 () Unit!167464)

(declare-fun e!4530911 () Unit!167464)

(assert (=> b!7619637 (= lt!2656381 e!4530911)))

(declare-fun c!1404329 () Bool)

(declare-fun matchR!9811 (Regex!20304 List!73157) Bool)

(assert (=> b!7619637 (= c!1404329 (not (matchR!9811 r!14126 s!9605)))))

(declare-datatypes ((tuple2!69170 0))(
  ( (tuple2!69171 (_1!37888 List!73157) (_2!37888 List!73157)) )
))
(declare-fun lt!2656376 () tuple2!69170)

(declare-fun matchRSpec!4503 (Regex!20304 List!73157) Bool)

(assert (=> b!7619637 (= (matchR!9811 r!14126 (_2!37888 lt!2656376)) (matchRSpec!4503 r!14126 (_2!37888 lt!2656376)))))

(declare-fun lt!2656374 () Unit!167464)

(declare-fun mainMatchTheorem!4497 (Regex!20304 List!73157) Unit!167464)

(assert (=> b!7619637 (= lt!2656374 (mainMatchTheorem!4497 r!14126 (_2!37888 lt!2656376)))))

(assert (=> b!7619637 (= (matchR!9811 (reg!20633 r!14126) (_1!37888 lt!2656376)) (matchRSpec!4503 (reg!20633 r!14126) (_1!37888 lt!2656376)))))

(declare-fun lt!2656383 () Unit!167464)

(assert (=> b!7619637 (= lt!2656383 (mainMatchTheorem!4497 (reg!20633 r!14126) (_1!37888 lt!2656376)))))

(declare-datatypes ((Option!17379 0))(
  ( (None!17378) (Some!17378 (v!54513 tuple2!69170)) )
))
(declare-fun lt!2656379 () Option!17379)

(declare-fun get!25768 (Option!17379) tuple2!69170)

(assert (=> b!7619637 (= lt!2656376 (get!25768 lt!2656379))))

(declare-fun b!7619638 () Bool)

(declare-fun tp!2224932 () Bool)

(declare-fun tp!2224928 () Bool)

(assert (=> b!7619638 (= e!4530912 (and tp!2224932 tp!2224928))))

(declare-fun b!7619639 () Bool)

(declare-fun tp!2224929 () Bool)

(declare-fun tp!2224933 () Bool)

(assert (=> b!7619639 (= e!4530912 (and tp!2224929 tp!2224933))))

(assert (=> b!7619640 (= e!4530908 (not e!4530906))))

(declare-fun res!3050517 () Bool)

(assert (=> b!7619640 (=> res!3050517 e!4530906)))

(declare-fun lt!2656373 () Bool)

(assert (=> b!7619640 (= res!3050517 (not lt!2656373))))

(assert (=> b!7619640 (= lt!2656373 (Exists!4460 lambda!468340))))

(declare-fun isDefined!13995 (Option!17379) Bool)

(assert (=> b!7619640 (= lt!2656373 (isDefined!13995 lt!2656379))))

(declare-fun findConcatSeparation!3409 (Regex!20304 Regex!20304 List!73157 List!73157 List!73157) Option!17379)

(assert (=> b!7619640 (= lt!2656379 (findConcatSeparation!3409 (reg!20633 r!14126) r!14126 Nil!73033 s!9605 s!9605))))

(declare-fun lt!2656375 () Unit!167464)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3167 (Regex!20304 Regex!20304 List!73157) Unit!167464)

(assert (=> b!7619640 (= lt!2656375 (lemmaFindConcatSeparationEquivalentToExists!3167 (reg!20633 r!14126) r!14126 s!9605))))

(declare-fun b!7619641 () Bool)

(declare-fun tp!2224931 () Bool)

(assert (=> b!7619641 (= e!4530912 tp!2224931)))

(declare-fun b!7619642 () Bool)

(declare-fun res!3050513 () Bool)

(assert (=> b!7619642 (=> (not res!3050513) (not e!4530908))))

(assert (=> b!7619642 (= res!3050513 (and (not (is-EmptyExpr!20304 r!14126)) (not (is-EmptyLang!20304 r!14126)) (not (is-ElementMatch!20304 r!14126)) (not (is-Union!20304 r!14126)) (is-Star!20304 r!14126)))))

(declare-fun b!7619643 () Bool)

(assert (=> b!7619643 (= e!4530907 true)))

(declare-fun lt!2656378 () tuple2!69170)

(assert (=> b!7619643 (= (matchR!9811 (reg!20633 r!14126) (_1!37888 lt!2656378)) (matchRSpec!4503 (reg!20633 r!14126) (_1!37888 lt!2656378)))))

(declare-fun lt!2656377 () Unit!167464)

(assert (=> b!7619643 (= lt!2656377 (mainMatchTheorem!4497 (reg!20633 r!14126) (_1!37888 lt!2656378)))))

(declare-fun pickWitness!435 (Int) tuple2!69170)

(assert (=> b!7619643 (= lt!2656378 (pickWitness!435 lambda!468340))))

(declare-fun b!7619644 () Bool)

(declare-fun e!4530909 () Bool)

(assert (=> b!7619644 (= e!4530909 false)))

(declare-fun b!7619645 () Bool)

(declare-fun Unit!167466 () Unit!167464)

(assert (=> b!7619645 (= e!4530911 Unit!167466)))

(declare-fun b!7619646 () Bool)

(declare-fun Unit!167467 () Unit!167464)

(assert (=> b!7619646 (= e!4530911 Unit!167467)))

(declare-fun lt!2656382 () Unit!167464)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!131 (Regex!20304 Regex!20304 List!73157 List!73157 List!73157) Unit!167464)

(assert (=> b!7619646 (= lt!2656382 (lemmaFindSeparationIsDefinedThenConcatMatches!131 (reg!20633 r!14126) r!14126 (_1!37888 lt!2656376) (_2!37888 lt!2656376) s!9605))))

(declare-fun lt!2656384 () List!73157)

(declare-fun ++!17614 (List!73157 List!73157) List!73157)

(assert (=> b!7619646 (= lt!2656384 (++!17614 (_1!37888 lt!2656376) (_2!37888 lt!2656376)))))

(assert (=> b!7619646 (matchR!9811 (Concat!29149 (reg!20633 r!14126) r!14126) lt!2656384)))

(declare-fun lt!2656380 () Unit!167464)

(declare-fun lemmaStarApp!185 (Regex!20304 List!73157 List!73157) Unit!167464)

(assert (=> b!7619646 (= lt!2656380 (lemmaStarApp!185 (reg!20633 r!14126) (_1!37888 lt!2656376) (_2!37888 lt!2656376)))))

(declare-fun res!3050515 () Bool)

(assert (=> b!7619646 (= res!3050515 (matchR!9811 r!14126 lt!2656384))))

(assert (=> b!7619646 (=> (not res!3050515) (not e!4530909))))

(assert (=> b!7619646 e!4530909))

(declare-fun b!7619647 () Bool)

(declare-fun tp_is_empty!50963 () Bool)

(assert (=> b!7619647 (= e!4530912 tp_is_empty!50963)))

(declare-fun b!7619648 () Bool)

(declare-fun tp!2224930 () Bool)

(assert (=> b!7619648 (= e!4530910 (and tp_is_empty!50963 tp!2224930))))

(assert (= (and start!733966 res!3050514) b!7619642))

(assert (= (and b!7619642 res!3050513) b!7619636))

(assert (= (and b!7619636 res!3050516) b!7619640))

(assert (= (and b!7619640 (not res!3050517)) b!7619637))

(assert (= (and b!7619637 c!1404329) b!7619646))

(assert (= (and b!7619637 (not c!1404329)) b!7619645))

(assert (= (and b!7619646 res!3050515) b!7619644))

(assert (= (and b!7619637 (not res!3050518)) b!7619643))

(assert (= (and start!733966 (is-ElementMatch!20304 r!14126)) b!7619647))

(assert (= (and start!733966 (is-Concat!29149 r!14126)) b!7619639))

(assert (= (and start!733966 (is-Star!20304 r!14126)) b!7619641))

(assert (= (and start!733966 (is-Union!20304 r!14126)) b!7619638))

(assert (= (and start!733966 (is-Cons!73033 s!9605)) b!7619648))

(declare-fun m!8151806 () Bool)

(assert (=> b!7619636 m!8151806))

(declare-fun m!8151808 () Bool)

(assert (=> b!7619646 m!8151808))

(declare-fun m!8151810 () Bool)

(assert (=> b!7619646 m!8151810))

(declare-fun m!8151812 () Bool)

(assert (=> b!7619646 m!8151812))

(declare-fun m!8151814 () Bool)

(assert (=> b!7619646 m!8151814))

(declare-fun m!8151816 () Bool)

(assert (=> b!7619646 m!8151816))

(declare-fun m!8151818 () Bool)

(assert (=> start!733966 m!8151818))

(declare-fun m!8151820 () Bool)

(assert (=> b!7619643 m!8151820))

(declare-fun m!8151822 () Bool)

(assert (=> b!7619643 m!8151822))

(declare-fun m!8151824 () Bool)

(assert (=> b!7619643 m!8151824))

(declare-fun m!8151826 () Bool)

(assert (=> b!7619643 m!8151826))

(declare-fun m!8151828 () Bool)

(assert (=> b!7619640 m!8151828))

(declare-fun m!8151830 () Bool)

(assert (=> b!7619640 m!8151830))

(declare-fun m!8151832 () Bool)

(assert (=> b!7619640 m!8151832))

(declare-fun m!8151834 () Bool)

(assert (=> b!7619640 m!8151834))

(declare-fun m!8151836 () Bool)

(assert (=> b!7619637 m!8151836))

(declare-fun m!8151838 () Bool)

(assert (=> b!7619637 m!8151838))

(declare-fun m!8151840 () Bool)

(assert (=> b!7619637 m!8151840))

(declare-fun m!8151842 () Bool)

(assert (=> b!7619637 m!8151842))

(declare-fun m!8151844 () Bool)

(assert (=> b!7619637 m!8151844))

(declare-fun m!8151846 () Bool)

(assert (=> b!7619637 m!8151846))

(declare-fun m!8151848 () Bool)

(assert (=> b!7619637 m!8151848))

(declare-fun m!8151850 () Bool)

(assert (=> b!7619637 m!8151850))

(assert (=> b!7619637 m!8151828))

(push 1)

(assert (not b!7619643))

(assert (not b!7619637))

(assert (not b!7619636))

(assert (not b!7619640))

(assert (not b!7619641))

(assert (not b!7619639))

(assert (not b!7619648))

(assert (not b!7619638))

(assert tp_is_empty!50963)

(assert (not start!733966))

(assert (not b!7619646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

