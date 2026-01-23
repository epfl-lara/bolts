; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734666 () Bool)

(assert start!734666)

(declare-fun b!7629104 () Bool)

(assert (=> b!7629104 true))

(assert (=> b!7629104 true))

(declare-fun bs!1943859 () Bool)

(declare-fun b!7629103 () Bool)

(assert (= bs!1943859 (and b!7629103 b!7629104)))

(declare-fun lambda!468971 () Int)

(declare-fun lambda!468970 () Int)

(assert (=> bs!1943859 (not (= lambda!468971 lambda!468970))))

(assert (=> b!7629103 true))

(assert (=> b!7629103 true))

(declare-fun b!7629098 () Bool)

(declare-fun e!4535723 () Bool)

(declare-fun e!4535719 () Bool)

(assert (=> b!7629098 (= e!4535723 e!4535719)))

(declare-fun res!3055134 () Bool)

(assert (=> b!7629098 (=> res!3055134 e!4535719)))

(declare-fun Exists!4526 (Int) Bool)

(assert (=> b!7629098 (= res!3055134 (not (Exists!4526 lambda!468970)))))

(declare-fun lt!2658450 () Bool)

(assert (=> b!7629098 lt!2658450))

(declare-datatypes ((Unit!167672 0))(
  ( (Unit!167673) )
))
(declare-fun lt!2658453 () Unit!167672)

(declare-datatypes ((C!41070 0))(
  ( (C!41071 (val!30975 Int)) )
))
(declare-datatypes ((Regex!20372 0))(
  ( (ElementMatch!20372 (c!1405605 C!41070)) (Concat!29217 (regOne!41256 Regex!20372) (regTwo!41256 Regex!20372)) (EmptyExpr!20372) (Star!20372 (reg!20701 Regex!20372)) (EmptyLang!20372) (Union!20372 (regOne!41257 Regex!20372) (regTwo!41257 Regex!20372)) )
))
(declare-fun r!14126 () Regex!20372)

(declare-datatypes ((List!73223 0))(
  ( (Nil!73099) (Cons!73099 (h!79547 C!41070) (t!387958 List!73223)) )
))
(declare-fun s!9605 () List!73223)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!279 (Regex!20372 Regex!20372 List!73223) Unit!167672)

(assert (=> b!7629098 (= lt!2658453 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!279 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605))))

(declare-fun b!7629099 () Bool)

(declare-fun e!4535720 () Bool)

(declare-fun tp_is_empty!51099 () Bool)

(declare-fun tp!2227376 () Bool)

(assert (=> b!7629099 (= e!4535720 (and tp_is_empty!51099 tp!2227376))))

(declare-fun res!3055131 () Bool)

(declare-fun e!4535722 () Bool)

(assert (=> start!734666 (=> (not res!3055131) (not e!4535722))))

(declare-fun validRegex!10790 (Regex!20372) Bool)

(assert (=> start!734666 (= res!3055131 (validRegex!10790 r!14126))))

(assert (=> start!734666 e!4535722))

(declare-fun e!4535716 () Bool)

(assert (=> start!734666 e!4535716))

(assert (=> start!734666 e!4535720))

(declare-fun e!4535718 () Bool)

(declare-fun e!4535717 () Bool)

(assert (=> start!734666 (and e!4535718 e!4535717)))

(declare-fun b!7629100 () Bool)

(declare-fun tp!2227375 () Bool)

(assert (=> b!7629100 (= e!4535718 (and tp_is_empty!51099 tp!2227375))))

(declare-fun b!7629101 () Bool)

(declare-fun tp!2227381 () Bool)

(declare-fun tp!2227374 () Bool)

(assert (=> b!7629101 (= e!4535716 (and tp!2227381 tp!2227374))))

(declare-fun b!7629102 () Bool)

(declare-fun tp!2227380 () Bool)

(assert (=> b!7629102 (= e!4535716 tp!2227380)))

(declare-fun e!4535721 () Bool)

(assert (=> b!7629103 (= e!4535719 e!4535721)))

(declare-fun res!3055135 () Bool)

(assert (=> b!7629103 (=> res!3055135 e!4535721)))

(declare-datatypes ((tuple2!69302 0))(
  ( (tuple2!69303 (_1!37954 List!73223) (_2!37954 List!73223)) )
))
(declare-fun cut!14 () tuple2!69302)

(declare-fun ++!17656 (List!73223 List!73223) List!73223)

(assert (=> b!7629103 (= res!3055135 (not (= (++!17656 (_1!37954 cut!14) (_2!37954 cut!14)) s!9605)))))

(declare-fun lt!2658455 () Unit!167672)

(declare-fun lt!2658449 () tuple2!69302)

(declare-fun ExistsThe!47 (tuple2!69302 Int) Unit!167672)

(assert (=> b!7629103 (= lt!2658455 (ExistsThe!47 lt!2658449 lambda!468971))))

(declare-fun matchR!9875 (Regex!20372 List!73223) Bool)

(declare-fun matchRSpec!4535 (Regex!20372 List!73223) Bool)

(assert (=> b!7629103 (= (matchR!9875 (regTwo!41256 r!14126) (_2!37954 lt!2658449)) (matchRSpec!4535 (regTwo!41256 r!14126) (_2!37954 lt!2658449)))))

(declare-fun lt!2658451 () Unit!167672)

(declare-fun mainMatchTheorem!4525 (Regex!20372 List!73223) Unit!167672)

(assert (=> b!7629103 (= lt!2658451 (mainMatchTheorem!4525 (regTwo!41256 r!14126) (_2!37954 lt!2658449)))))

(assert (=> b!7629103 (= (matchR!9875 (regOne!41256 r!14126) (_1!37954 lt!2658449)) (matchRSpec!4535 (regOne!41256 r!14126) (_1!37954 lt!2658449)))))

(declare-fun lt!2658454 () Unit!167672)

(assert (=> b!7629103 (= lt!2658454 (mainMatchTheorem!4525 (regOne!41256 r!14126) (_1!37954 lt!2658449)))))

(declare-fun pickWitness!467 (Int) tuple2!69302)

(assert (=> b!7629103 (= lt!2658449 (pickWitness!467 lambda!468970))))

(assert (=> b!7629104 (= e!4535722 (not e!4535723))))

(declare-fun res!3055133 () Bool)

(assert (=> b!7629104 (=> res!3055133 e!4535723)))

(assert (=> b!7629104 (= res!3055133 (not (matchR!9875 r!14126 s!9605)))))

(assert (=> b!7629104 (= lt!2658450 (Exists!4526 lambda!468970))))

(declare-datatypes ((Option!17445 0))(
  ( (None!17444) (Some!17444 (v!54579 tuple2!69302)) )
))
(declare-fun isDefined!14061 (Option!17445) Bool)

(declare-fun findConcatSeparation!3475 (Regex!20372 Regex!20372 List!73223 List!73223 List!73223) Option!17445)

(assert (=> b!7629104 (= lt!2658450 (isDefined!14061 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605)))))

(declare-fun lt!2658452 () Unit!167672)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3233 (Regex!20372 Regex!20372 List!73223) Unit!167672)

(assert (=> b!7629104 (= lt!2658452 (lemmaFindConcatSeparationEquivalentToExists!3233 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605))))

(declare-fun b!7629105 () Bool)

(declare-fun tp!2227377 () Bool)

(declare-fun tp!2227378 () Bool)

(assert (=> b!7629105 (= e!4535716 (and tp!2227377 tp!2227378))))

(declare-fun b!7629106 () Bool)

(assert (=> b!7629106 (= e!4535716 tp_is_empty!51099)))

(declare-fun b!7629107 () Bool)

(declare-fun tp!2227379 () Bool)

(assert (=> b!7629107 (= e!4535717 (and tp_is_empty!51099 tp!2227379))))

(declare-fun b!7629108 () Bool)

(assert (=> b!7629108 (= e!4535721 (validRegex!10790 (regOne!41256 r!14126)))))

(declare-fun b!7629109 () Bool)

(declare-fun res!3055132 () Bool)

(assert (=> b!7629109 (=> (not res!3055132) (not e!4535722))))

(assert (=> b!7629109 (= res!3055132 (and (not (is-EmptyExpr!20372 r!14126)) (not (is-EmptyLang!20372 r!14126)) (not (is-ElementMatch!20372 r!14126)) (not (is-Union!20372 r!14126)) (not (is-Star!20372 r!14126))))))

(assert (= (and start!734666 res!3055131) b!7629109))

(assert (= (and b!7629109 res!3055132) b!7629104))

(assert (= (and b!7629104 (not res!3055133)) b!7629098))

(assert (= (and b!7629098 (not res!3055134)) b!7629103))

(assert (= (and b!7629103 (not res!3055135)) b!7629108))

(assert (= (and start!734666 (is-ElementMatch!20372 r!14126)) b!7629106))

(assert (= (and start!734666 (is-Concat!29217 r!14126)) b!7629101))

(assert (= (and start!734666 (is-Star!20372 r!14126)) b!7629102))

(assert (= (and start!734666 (is-Union!20372 r!14126)) b!7629105))

(assert (= (and start!734666 (is-Cons!73099 s!9605)) b!7629099))

(assert (= (and start!734666 (is-Cons!73099 (_1!37954 cut!14))) b!7629100))

(assert (= (and start!734666 (is-Cons!73099 (_2!37954 cut!14))) b!7629107))

(declare-fun m!8156986 () Bool)

(assert (=> b!7629103 m!8156986))

(declare-fun m!8156988 () Bool)

(assert (=> b!7629103 m!8156988))

(declare-fun m!8156990 () Bool)

(assert (=> b!7629103 m!8156990))

(declare-fun m!8156992 () Bool)

(assert (=> b!7629103 m!8156992))

(declare-fun m!8156994 () Bool)

(assert (=> b!7629103 m!8156994))

(declare-fun m!8156996 () Bool)

(assert (=> b!7629103 m!8156996))

(declare-fun m!8156998 () Bool)

(assert (=> b!7629103 m!8156998))

(declare-fun m!8157000 () Bool)

(assert (=> b!7629103 m!8157000))

(declare-fun m!8157002 () Bool)

(assert (=> b!7629103 m!8157002))

(declare-fun m!8157004 () Bool)

(assert (=> b!7629108 m!8157004))

(declare-fun m!8157006 () Bool)

(assert (=> b!7629098 m!8157006))

(declare-fun m!8157008 () Bool)

(assert (=> b!7629098 m!8157008))

(declare-fun m!8157010 () Bool)

(assert (=> start!734666 m!8157010))

(assert (=> b!7629104 m!8157006))

(declare-fun m!8157012 () Bool)

(assert (=> b!7629104 m!8157012))

(declare-fun m!8157014 () Bool)

(assert (=> b!7629104 m!8157014))

(declare-fun m!8157016 () Bool)

(assert (=> b!7629104 m!8157016))

(assert (=> b!7629104 m!8157014))

(declare-fun m!8157018 () Bool)

(assert (=> b!7629104 m!8157018))

(push 1)

(assert (not b!7629098))

(assert (not b!7629102))

(assert (not b!7629099))

(assert (not start!734666))

(assert (not b!7629104))

(assert (not b!7629107))

(assert (not b!7629108))

(assert (not b!7629103))

(assert (not b!7629100))

(assert tp_is_empty!51099)

(assert (not b!7629101))

(assert (not b!7629105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323962 () Bool)

(assert (=> d!2323962 (= (matchR!9875 (regTwo!41256 r!14126) (_2!37954 lt!2658449)) (matchRSpec!4535 (regTwo!41256 r!14126) (_2!37954 lt!2658449)))))

(declare-fun lt!2658479 () Unit!167672)

(declare-fun choose!58886 (Regex!20372 List!73223) Unit!167672)

(assert (=> d!2323962 (= lt!2658479 (choose!58886 (regTwo!41256 r!14126) (_2!37954 lt!2658449)))))

(assert (=> d!2323962 (validRegex!10790 (regTwo!41256 r!14126))))

(assert (=> d!2323962 (= (mainMatchTheorem!4525 (regTwo!41256 r!14126) (_2!37954 lt!2658449)) lt!2658479)))

(declare-fun bs!1943861 () Bool)

(assert (= bs!1943861 d!2323962))

(assert (=> bs!1943861 m!8157000))

(assert (=> bs!1943861 m!8157002))

(declare-fun m!8157054 () Bool)

(assert (=> bs!1943861 m!8157054))

(declare-fun m!8157056 () Bool)

(assert (=> bs!1943861 m!8157056))

(assert (=> b!7629103 d!2323962))

(declare-fun d!2323964 () Bool)

(assert (=> d!2323964 (= (matchR!9875 (regOne!41256 r!14126) (_1!37954 lt!2658449)) (matchRSpec!4535 (regOne!41256 r!14126) (_1!37954 lt!2658449)))))

(declare-fun lt!2658480 () Unit!167672)

(assert (=> d!2323964 (= lt!2658480 (choose!58886 (regOne!41256 r!14126) (_1!37954 lt!2658449)))))

(assert (=> d!2323964 (validRegex!10790 (regOne!41256 r!14126))))

(assert (=> d!2323964 (= (mainMatchTheorem!4525 (regOne!41256 r!14126) (_1!37954 lt!2658449)) lt!2658480)))

(declare-fun bs!1943862 () Bool)

(assert (= bs!1943862 d!2323964))

(assert (=> bs!1943862 m!8156986))

(assert (=> bs!1943862 m!8156988))

(declare-fun m!8157058 () Bool)

(assert (=> bs!1943862 m!8157058))

(assert (=> bs!1943862 m!8157004))

(assert (=> b!7629103 d!2323964))

(declare-fun b!7629178 () Bool)

(declare-fun e!4535761 () List!73223)

(assert (=> b!7629178 (= e!4535761 (_2!37954 cut!14))))

(declare-fun d!2323966 () Bool)

(declare-fun e!4535760 () Bool)

(assert (=> d!2323966 e!4535760))

(declare-fun res!3055172 () Bool)

(assert (=> d!2323966 (=> (not res!3055172) (not e!4535760))))

(declare-fun lt!2658483 () List!73223)

(declare-fun content!15466 (List!73223) (Set C!41070))

(assert (=> d!2323966 (= res!3055172 (= (content!15466 lt!2658483) (set.union (content!15466 (_1!37954 cut!14)) (content!15466 (_2!37954 cut!14)))))))

(assert (=> d!2323966 (= lt!2658483 e!4535761)))

(declare-fun c!1405609 () Bool)

(assert (=> d!2323966 (= c!1405609 (is-Nil!73099 (_1!37954 cut!14)))))

(assert (=> d!2323966 (= (++!17656 (_1!37954 cut!14) (_2!37954 cut!14)) lt!2658483)))

(declare-fun b!7629181 () Bool)

(assert (=> b!7629181 (= e!4535760 (or (not (= (_2!37954 cut!14) Nil!73099)) (= lt!2658483 (_1!37954 cut!14))))))

(declare-fun b!7629179 () Bool)

(assert (=> b!7629179 (= e!4535761 (Cons!73099 (h!79547 (_1!37954 cut!14)) (++!17656 (t!387958 (_1!37954 cut!14)) (_2!37954 cut!14))))))

(declare-fun b!7629180 () Bool)

(declare-fun res!3055171 () Bool)

(assert (=> b!7629180 (=> (not res!3055171) (not e!4535760))))

(declare-fun size!42559 (List!73223) Int)

(assert (=> b!7629180 (= res!3055171 (= (size!42559 lt!2658483) (+ (size!42559 (_1!37954 cut!14)) (size!42559 (_2!37954 cut!14)))))))

(assert (= (and d!2323966 c!1405609) b!7629178))

(assert (= (and d!2323966 (not c!1405609)) b!7629179))

(assert (= (and d!2323966 res!3055172) b!7629180))

(assert (= (and b!7629180 res!3055171) b!7629181))

(declare-fun m!8157060 () Bool)

(assert (=> d!2323966 m!8157060))

(declare-fun m!8157062 () Bool)

(assert (=> d!2323966 m!8157062))

(declare-fun m!8157064 () Bool)

(assert (=> d!2323966 m!8157064))

(declare-fun m!8157066 () Bool)

(assert (=> b!7629179 m!8157066))

(declare-fun m!8157068 () Bool)

(assert (=> b!7629180 m!8157068))

(declare-fun m!8157070 () Bool)

(assert (=> b!7629180 m!8157070))

(declare-fun m!8157072 () Bool)

(assert (=> b!7629180 m!8157072))

(assert (=> b!7629103 d!2323966))

(declare-fun d!2323968 () Bool)

(assert (=> d!2323968 (Exists!4526 lambda!468971)))

(declare-fun lt!2658486 () Unit!167672)

(declare-fun choose!58887 (tuple2!69302 Int) Unit!167672)

(assert (=> d!2323968 (= lt!2658486 (choose!58887 lt!2658449 lambda!468971))))

(declare-fun dynLambda!29924 (Int tuple2!69302) Bool)

(assert (=> d!2323968 (dynLambda!29924 lambda!468971 lt!2658449)))

(assert (=> d!2323968 (= (ExistsThe!47 lt!2658449 lambda!468971) lt!2658486)))

(declare-fun b_lambda!289043 () Bool)

(assert (=> (not b_lambda!289043) (not d!2323968)))

(declare-fun bs!1943863 () Bool)

(assert (= bs!1943863 d!2323968))

(declare-fun m!8157074 () Bool)

(assert (=> bs!1943863 m!8157074))

(declare-fun m!8157076 () Bool)

(assert (=> bs!1943863 m!8157076))

(declare-fun m!8157078 () Bool)

(assert (=> bs!1943863 m!8157078))

(assert (=> b!7629103 d!2323968))

(declare-fun bs!1943864 () Bool)

(declare-fun b!7629224 () Bool)

(assert (= bs!1943864 (and b!7629224 b!7629104)))

(declare-fun lambda!468986 () Int)

(assert (=> bs!1943864 (not (= lambda!468986 lambda!468970))))

(declare-fun bs!1943865 () Bool)

(assert (= bs!1943865 (and b!7629224 b!7629103)))

(assert (=> bs!1943865 (not (= lambda!468986 lambda!468971))))

(assert (=> b!7629224 true))

(assert (=> b!7629224 true))

(declare-fun bs!1943866 () Bool)

(declare-fun b!7629231 () Bool)

(assert (= bs!1943866 (and b!7629231 b!7629104)))

(declare-fun lambda!468987 () Int)

(assert (=> bs!1943866 (not (= lambda!468987 lambda!468970))))

(declare-fun bs!1943867 () Bool)

(assert (= bs!1943867 (and b!7629231 b!7629103)))

(assert (=> bs!1943867 (= (and (= (_1!37954 lt!2658449) s!9605) (= (regOne!41256 (regOne!41256 r!14126)) (regOne!41256 r!14126)) (= (regTwo!41256 (regOne!41256 r!14126)) (regTwo!41256 r!14126))) (= lambda!468987 lambda!468971))))

(declare-fun bs!1943868 () Bool)

(assert (= bs!1943868 (and b!7629231 b!7629224)))

(assert (=> bs!1943868 (not (= lambda!468987 lambda!468986))))

(assert (=> b!7629231 true))

(assert (=> b!7629231 true))

(declare-fun b!7629222 () Bool)

(declare-fun e!4535792 () Bool)

(declare-fun e!4535787 () Bool)

(assert (=> b!7629222 (= e!4535792 e!4535787)))

(declare-fun c!1405623 () Bool)

(assert (=> b!7629222 (= c!1405623 (is-Star!20372 (regOne!41256 r!14126)))))

(declare-fun b!7629223 () Bool)

(declare-fun e!4535788 () Bool)

(declare-fun call!700400 () Bool)

(assert (=> b!7629223 (= e!4535788 call!700400)))

(declare-fun e!4535789 () Bool)

(declare-fun call!700399 () Bool)

(assert (=> b!7629224 (= e!4535789 call!700399)))

(declare-fun b!7629225 () Bool)

(declare-fun e!4535790 () Bool)

(assert (=> b!7629225 (= e!4535792 e!4535790)))

(declare-fun res!3055195 () Bool)

(assert (=> b!7629225 (= res!3055195 (matchRSpec!4535 (regOne!41257 (regOne!41256 r!14126)) (_1!37954 lt!2658449)))))

(assert (=> b!7629225 (=> res!3055195 e!4535790)))

(declare-fun b!7629226 () Bool)

(declare-fun res!3055194 () Bool)

(assert (=> b!7629226 (=> res!3055194 e!4535789)))

(assert (=> b!7629226 (= res!3055194 call!700400)))

(assert (=> b!7629226 (= e!4535787 e!4535789)))

(declare-fun b!7629227 () Bool)

(assert (=> b!7629227 (= e!4535790 (matchRSpec!4535 (regTwo!41257 (regOne!41256 r!14126)) (_1!37954 lt!2658449)))))

(declare-fun b!7629228 () Bool)

(declare-fun c!1405622 () Bool)

(assert (=> b!7629228 (= c!1405622 (is-ElementMatch!20372 (regOne!41256 r!14126)))))

(declare-fun e!4535786 () Bool)

(declare-fun e!4535791 () Bool)

(assert (=> b!7629228 (= e!4535786 e!4535791)))

(declare-fun b!7629229 () Bool)

(declare-fun c!1405621 () Bool)

(assert (=> b!7629229 (= c!1405621 (is-Union!20372 (regOne!41256 r!14126)))))

(assert (=> b!7629229 (= e!4535791 e!4535792)))

(declare-fun bm!700394 () Bool)

(declare-fun isEmpty!41727 (List!73223) Bool)

(assert (=> bm!700394 (= call!700400 (isEmpty!41727 (_1!37954 lt!2658449)))))

(declare-fun d!2323970 () Bool)

(declare-fun c!1405620 () Bool)

(assert (=> d!2323970 (= c!1405620 (is-EmptyExpr!20372 (regOne!41256 r!14126)))))

(assert (=> d!2323970 (= (matchRSpec!4535 (regOne!41256 r!14126) (_1!37954 lt!2658449)) e!4535788)))

(declare-fun b!7629230 () Bool)

(assert (=> b!7629230 (= e!4535788 e!4535786)))

(declare-fun res!3055193 () Bool)

(assert (=> b!7629230 (= res!3055193 (not (is-EmptyLang!20372 (regOne!41256 r!14126))))))

(assert (=> b!7629230 (=> (not res!3055193) (not e!4535786))))

(declare-fun bm!700395 () Bool)

(assert (=> bm!700395 (= call!700399 (Exists!4526 (ite c!1405623 lambda!468986 lambda!468987)))))

(assert (=> b!7629231 (= e!4535787 call!700399)))

(declare-fun b!7629232 () Bool)

(assert (=> b!7629232 (= e!4535791 (= (_1!37954 lt!2658449) (Cons!73099 (c!1405605 (regOne!41256 r!14126)) Nil!73099)))))

(assert (= (and d!2323970 c!1405620) b!7629223))

(assert (= (and d!2323970 (not c!1405620)) b!7629230))

(assert (= (and b!7629230 res!3055193) b!7629228))

(assert (= (and b!7629228 c!1405622) b!7629232))

(assert (= (and b!7629228 (not c!1405622)) b!7629229))

(assert (= (and b!7629229 c!1405621) b!7629225))

(assert (= (and b!7629229 (not c!1405621)) b!7629222))

(assert (= (and b!7629225 (not res!3055195)) b!7629227))

(assert (= (and b!7629222 c!1405623) b!7629226))

(assert (= (and b!7629222 (not c!1405623)) b!7629231))

(assert (= (and b!7629226 (not res!3055194)) b!7629224))

(assert (= (or b!7629224 b!7629231) bm!700395))

(assert (= (or b!7629223 b!7629226) bm!700394))

(declare-fun m!8157080 () Bool)

(assert (=> b!7629225 m!8157080))

(declare-fun m!8157082 () Bool)

(assert (=> b!7629227 m!8157082))

(declare-fun m!8157084 () Bool)

(assert (=> bm!700394 m!8157084))

(declare-fun m!8157086 () Bool)

(assert (=> bm!700395 m!8157086))

(assert (=> b!7629103 d!2323970))

(declare-fun bs!1943869 () Bool)

(declare-fun b!7629245 () Bool)

(assert (= bs!1943869 (and b!7629245 b!7629104)))

(declare-fun lambda!468988 () Int)

(assert (=> bs!1943869 (not (= lambda!468988 lambda!468970))))

(declare-fun bs!1943870 () Bool)

(assert (= bs!1943870 (and b!7629245 b!7629103)))

(assert (=> bs!1943870 (not (= lambda!468988 lambda!468971))))

(declare-fun bs!1943871 () Bool)

(assert (= bs!1943871 (and b!7629245 b!7629224)))

(assert (=> bs!1943871 (= (and (= (_2!37954 lt!2658449) (_1!37954 lt!2658449)) (= (reg!20701 (regTwo!41256 r!14126)) (reg!20701 (regOne!41256 r!14126))) (= (regTwo!41256 r!14126) (regOne!41256 r!14126))) (= lambda!468988 lambda!468986))))

(declare-fun bs!1943872 () Bool)

(assert (= bs!1943872 (and b!7629245 b!7629231)))

(assert (=> bs!1943872 (not (= lambda!468988 lambda!468987))))

(assert (=> b!7629245 true))

(assert (=> b!7629245 true))

(declare-fun bs!1943873 () Bool)

(declare-fun b!7629252 () Bool)

(assert (= bs!1943873 (and b!7629252 b!7629231)))

(declare-fun lambda!468989 () Int)

(assert (=> bs!1943873 (= (and (= (_2!37954 lt!2658449) (_1!37954 lt!2658449)) (= (regOne!41256 (regTwo!41256 r!14126)) (regOne!41256 (regOne!41256 r!14126))) (= (regTwo!41256 (regTwo!41256 r!14126)) (regTwo!41256 (regOne!41256 r!14126)))) (= lambda!468989 lambda!468987))))

(declare-fun bs!1943874 () Bool)

(assert (= bs!1943874 (and b!7629252 b!7629104)))

(assert (=> bs!1943874 (not (= lambda!468989 lambda!468970))))

(declare-fun bs!1943875 () Bool)

(assert (= bs!1943875 (and b!7629252 b!7629245)))

(assert (=> bs!1943875 (not (= lambda!468989 lambda!468988))))

(declare-fun bs!1943876 () Bool)

(assert (= bs!1943876 (and b!7629252 b!7629103)))

(assert (=> bs!1943876 (= (and (= (_2!37954 lt!2658449) s!9605) (= (regOne!41256 (regTwo!41256 r!14126)) (regOne!41256 r!14126)) (= (regTwo!41256 (regTwo!41256 r!14126)) (regTwo!41256 r!14126))) (= lambda!468989 lambda!468971))))

(declare-fun bs!1943877 () Bool)

(assert (= bs!1943877 (and b!7629252 b!7629224)))

(assert (=> bs!1943877 (not (= lambda!468989 lambda!468986))))

(assert (=> b!7629252 true))

(assert (=> b!7629252 true))

(declare-fun b!7629243 () Bool)

(declare-fun e!4535807 () Bool)

(declare-fun e!4535802 () Bool)

(assert (=> b!7629243 (= e!4535807 e!4535802)))

(declare-fun c!1405629 () Bool)

(assert (=> b!7629243 (= c!1405629 (is-Star!20372 (regTwo!41256 r!14126)))))

(declare-fun b!7629244 () Bool)

(declare-fun e!4535803 () Bool)

(declare-fun call!700406 () Bool)

(assert (=> b!7629244 (= e!4535803 call!700406)))

(declare-fun e!4535804 () Bool)

(declare-fun call!700405 () Bool)

(assert (=> b!7629245 (= e!4535804 call!700405)))

(declare-fun b!7629246 () Bool)

(declare-fun e!4535805 () Bool)

(assert (=> b!7629246 (= e!4535807 e!4535805)))

(declare-fun res!3055204 () Bool)

(assert (=> b!7629246 (= res!3055204 (matchRSpec!4535 (regOne!41257 (regTwo!41256 r!14126)) (_2!37954 lt!2658449)))))

(assert (=> b!7629246 (=> res!3055204 e!4535805)))

(declare-fun b!7629247 () Bool)

(declare-fun res!3055203 () Bool)

(assert (=> b!7629247 (=> res!3055203 e!4535804)))

(assert (=> b!7629247 (= res!3055203 call!700406)))

(assert (=> b!7629247 (= e!4535802 e!4535804)))

(declare-fun b!7629248 () Bool)

(assert (=> b!7629248 (= e!4535805 (matchRSpec!4535 (regTwo!41257 (regTwo!41256 r!14126)) (_2!37954 lt!2658449)))))

(declare-fun b!7629249 () Bool)

(declare-fun c!1405628 () Bool)

(assert (=> b!7629249 (= c!1405628 (is-ElementMatch!20372 (regTwo!41256 r!14126)))))

(declare-fun e!4535801 () Bool)

(declare-fun e!4535806 () Bool)

(assert (=> b!7629249 (= e!4535801 e!4535806)))

(declare-fun b!7629250 () Bool)

(declare-fun c!1405627 () Bool)

(assert (=> b!7629250 (= c!1405627 (is-Union!20372 (regTwo!41256 r!14126)))))

(assert (=> b!7629250 (= e!4535806 e!4535807)))

(declare-fun bm!700400 () Bool)

(assert (=> bm!700400 (= call!700406 (isEmpty!41727 (_2!37954 lt!2658449)))))

(declare-fun d!2323974 () Bool)

(declare-fun c!1405626 () Bool)

(assert (=> d!2323974 (= c!1405626 (is-EmptyExpr!20372 (regTwo!41256 r!14126)))))

(assert (=> d!2323974 (= (matchRSpec!4535 (regTwo!41256 r!14126) (_2!37954 lt!2658449)) e!4535803)))

(declare-fun b!7629251 () Bool)

(assert (=> b!7629251 (= e!4535803 e!4535801)))

(declare-fun res!3055202 () Bool)

(assert (=> b!7629251 (= res!3055202 (not (is-EmptyLang!20372 (regTwo!41256 r!14126))))))

(assert (=> b!7629251 (=> (not res!3055202) (not e!4535801))))

(declare-fun bm!700401 () Bool)

(assert (=> bm!700401 (= call!700405 (Exists!4526 (ite c!1405629 lambda!468988 lambda!468989)))))

(assert (=> b!7629252 (= e!4535802 call!700405)))

(declare-fun b!7629253 () Bool)

(assert (=> b!7629253 (= e!4535806 (= (_2!37954 lt!2658449) (Cons!73099 (c!1405605 (regTwo!41256 r!14126)) Nil!73099)))))

(assert (= (and d!2323974 c!1405626) b!7629244))

(assert (= (and d!2323974 (not c!1405626)) b!7629251))

(assert (= (and b!7629251 res!3055202) b!7629249))

(assert (= (and b!7629249 c!1405628) b!7629253))

(assert (= (and b!7629249 (not c!1405628)) b!7629250))

(assert (= (and b!7629250 c!1405627) b!7629246))

(assert (= (and b!7629250 (not c!1405627)) b!7629243))

(assert (= (and b!7629246 (not res!3055204)) b!7629248))

(assert (= (and b!7629243 c!1405629) b!7629247))

(assert (= (and b!7629243 (not c!1405629)) b!7629252))

(assert (= (and b!7629247 (not res!3055203)) b!7629245))

(assert (= (or b!7629245 b!7629252) bm!700401))

(assert (= (or b!7629244 b!7629247) bm!700400))

(declare-fun m!8157088 () Bool)

(assert (=> b!7629246 m!8157088))

(declare-fun m!8157090 () Bool)

(assert (=> b!7629248 m!8157090))

(declare-fun m!8157092 () Bool)

(assert (=> bm!700400 m!8157092))

(declare-fun m!8157094 () Bool)

(assert (=> bm!700401 m!8157094))

(assert (=> b!7629103 d!2323974))

(declare-fun b!7629291 () Bool)

(declare-fun e!4535833 () Bool)

(declare-fun head!15679 (List!73223) C!41070)

(assert (=> b!7629291 (= e!4535833 (not (= (head!15679 (_1!37954 lt!2658449)) (c!1405605 (regOne!41256 r!14126)))))))

(declare-fun b!7629292 () Bool)

(declare-fun e!4535830 () Bool)

(declare-fun e!4535829 () Bool)

(assert (=> b!7629292 (= e!4535830 e!4535829)))

(declare-fun res!3055226 () Bool)

(assert (=> b!7629292 (=> (not res!3055226) (not e!4535829))))

(declare-fun lt!2658489 () Bool)

(assert (=> b!7629292 (= res!3055226 (not lt!2658489))))

(declare-fun b!7629293 () Bool)

(declare-fun e!4535835 () Bool)

(assert (=> b!7629293 (= e!4535835 (= (head!15679 (_1!37954 lt!2658449)) (c!1405605 (regOne!41256 r!14126))))))

(declare-fun b!7629294 () Bool)

(assert (=> b!7629294 (= e!4535829 e!4535833)))

(declare-fun res!3055229 () Bool)

(assert (=> b!7629294 (=> res!3055229 e!4535833)))

(declare-fun call!700414 () Bool)

(assert (=> b!7629294 (= res!3055229 call!700414)))

(declare-fun b!7629295 () Bool)

(declare-fun res!3055228 () Bool)

(assert (=> b!7629295 (=> (not res!3055228) (not e!4535835))))

(declare-fun tail!15219 (List!73223) List!73223)

(assert (=> b!7629295 (= res!3055228 (isEmpty!41727 (tail!15219 (_1!37954 lt!2658449))))))

(declare-fun b!7629296 () Bool)

(declare-fun e!4535831 () Bool)

(assert (=> b!7629296 (= e!4535831 (= lt!2658489 call!700414))))

(declare-fun d!2323976 () Bool)

(assert (=> d!2323976 e!4535831))

(declare-fun c!1405638 () Bool)

(assert (=> d!2323976 (= c!1405638 (is-EmptyExpr!20372 (regOne!41256 r!14126)))))

(declare-fun e!4535832 () Bool)

(assert (=> d!2323976 (= lt!2658489 e!4535832)))

(declare-fun c!1405640 () Bool)

(assert (=> d!2323976 (= c!1405640 (isEmpty!41727 (_1!37954 lt!2658449)))))

(assert (=> d!2323976 (validRegex!10790 (regOne!41256 r!14126))))

(assert (=> d!2323976 (= (matchR!9875 (regOne!41256 r!14126) (_1!37954 lt!2658449)) lt!2658489)))

(declare-fun b!7629297 () Bool)

(declare-fun e!4535834 () Bool)

(assert (=> b!7629297 (= e!4535834 (not lt!2658489))))

(declare-fun b!7629298 () Bool)

(assert (=> b!7629298 (= e!4535831 e!4535834)))

(declare-fun c!1405639 () Bool)

(assert (=> b!7629298 (= c!1405639 (is-EmptyLang!20372 (regOne!41256 r!14126)))))

(declare-fun b!7629299 () Bool)

(declare-fun nullable!8905 (Regex!20372) Bool)

(assert (=> b!7629299 (= e!4535832 (nullable!8905 (regOne!41256 r!14126)))))

(declare-fun b!7629300 () Bool)

(declare-fun res!3055231 () Bool)

(assert (=> b!7629300 (=> res!3055231 e!4535833)))

(assert (=> b!7629300 (= res!3055231 (not (isEmpty!41727 (tail!15219 (_1!37954 lt!2658449)))))))

(declare-fun b!7629301 () Bool)

(declare-fun res!3055227 () Bool)

(assert (=> b!7629301 (=> (not res!3055227) (not e!4535835))))

(assert (=> b!7629301 (= res!3055227 (not call!700414))))

(declare-fun bm!700409 () Bool)

(assert (=> bm!700409 (= call!700414 (isEmpty!41727 (_1!37954 lt!2658449)))))

(declare-fun b!7629302 () Bool)

(declare-fun res!3055230 () Bool)

(assert (=> b!7629302 (=> res!3055230 e!4535830)))

(assert (=> b!7629302 (= res!3055230 (not (is-ElementMatch!20372 (regOne!41256 r!14126))))))

(assert (=> b!7629302 (= e!4535834 e!4535830)))

(declare-fun b!7629303 () Bool)

(declare-fun derivativeStep!5879 (Regex!20372 C!41070) Regex!20372)

(assert (=> b!7629303 (= e!4535832 (matchR!9875 (derivativeStep!5879 (regOne!41256 r!14126) (head!15679 (_1!37954 lt!2658449))) (tail!15219 (_1!37954 lt!2658449))))))

(declare-fun b!7629304 () Bool)

(declare-fun res!3055232 () Bool)

(assert (=> b!7629304 (=> res!3055232 e!4535830)))

(assert (=> b!7629304 (= res!3055232 e!4535835)))

(declare-fun res!3055233 () Bool)

(assert (=> b!7629304 (=> (not res!3055233) (not e!4535835))))

(assert (=> b!7629304 (= res!3055233 lt!2658489)))

(assert (= (and d!2323976 c!1405640) b!7629299))

(assert (= (and d!2323976 (not c!1405640)) b!7629303))

(assert (= (and d!2323976 c!1405638) b!7629296))

(assert (= (and d!2323976 (not c!1405638)) b!7629298))

(assert (= (and b!7629298 c!1405639) b!7629297))

(assert (= (and b!7629298 (not c!1405639)) b!7629302))

(assert (= (and b!7629302 (not res!3055230)) b!7629304))

(assert (= (and b!7629304 res!3055233) b!7629301))

(assert (= (and b!7629301 res!3055227) b!7629295))

(assert (= (and b!7629295 res!3055228) b!7629293))

(assert (= (and b!7629304 (not res!3055232)) b!7629292))

(assert (= (and b!7629292 res!3055226) b!7629294))

(assert (= (and b!7629294 (not res!3055229)) b!7629300))

(assert (= (and b!7629300 (not res!3055231)) b!7629291))

(assert (= (or b!7629296 b!7629294 b!7629301) bm!700409))

(declare-fun m!8157102 () Bool)

(assert (=> b!7629303 m!8157102))

(assert (=> b!7629303 m!8157102))

(declare-fun m!8157104 () Bool)

(assert (=> b!7629303 m!8157104))

(declare-fun m!8157106 () Bool)

(assert (=> b!7629303 m!8157106))

(assert (=> b!7629303 m!8157104))

(assert (=> b!7629303 m!8157106))

(declare-fun m!8157108 () Bool)

(assert (=> b!7629303 m!8157108))

(assert (=> b!7629291 m!8157102))

(assert (=> d!2323976 m!8157084))

(assert (=> d!2323976 m!8157004))

(assert (=> b!7629295 m!8157106))

(assert (=> b!7629295 m!8157106))

(declare-fun m!8157110 () Bool)

(assert (=> b!7629295 m!8157110))

(assert (=> bm!700409 m!8157084))

(assert (=> b!7629300 m!8157106))

(assert (=> b!7629300 m!8157106))

(assert (=> b!7629300 m!8157110))

(assert (=> b!7629293 m!8157102))

(declare-fun m!8157112 () Bool)

(assert (=> b!7629299 m!8157112))

(assert (=> b!7629103 d!2323976))

(declare-fun b!7629305 () Bool)

(declare-fun e!4535840 () Bool)

(assert (=> b!7629305 (= e!4535840 (not (= (head!15679 (_2!37954 lt!2658449)) (c!1405605 (regTwo!41256 r!14126)))))))

(declare-fun b!7629306 () Bool)

(declare-fun e!4535837 () Bool)

(declare-fun e!4535836 () Bool)

(assert (=> b!7629306 (= e!4535837 e!4535836)))

(declare-fun res!3055234 () Bool)

(assert (=> b!7629306 (=> (not res!3055234) (not e!4535836))))

(declare-fun lt!2658490 () Bool)

(assert (=> b!7629306 (= res!3055234 (not lt!2658490))))

(declare-fun b!7629307 () Bool)

(declare-fun e!4535842 () Bool)

(assert (=> b!7629307 (= e!4535842 (= (head!15679 (_2!37954 lt!2658449)) (c!1405605 (regTwo!41256 r!14126))))))

(declare-fun b!7629308 () Bool)

(assert (=> b!7629308 (= e!4535836 e!4535840)))

(declare-fun res!3055237 () Bool)

(assert (=> b!7629308 (=> res!3055237 e!4535840)))

(declare-fun call!700415 () Bool)

(assert (=> b!7629308 (= res!3055237 call!700415)))

(declare-fun b!7629309 () Bool)

(declare-fun res!3055236 () Bool)

(assert (=> b!7629309 (=> (not res!3055236) (not e!4535842))))

(assert (=> b!7629309 (= res!3055236 (isEmpty!41727 (tail!15219 (_2!37954 lt!2658449))))))

(declare-fun b!7629310 () Bool)

(declare-fun e!4535838 () Bool)

(assert (=> b!7629310 (= e!4535838 (= lt!2658490 call!700415))))

(declare-fun d!2323980 () Bool)

(assert (=> d!2323980 e!4535838))

(declare-fun c!1405641 () Bool)

(assert (=> d!2323980 (= c!1405641 (is-EmptyExpr!20372 (regTwo!41256 r!14126)))))

(declare-fun e!4535839 () Bool)

(assert (=> d!2323980 (= lt!2658490 e!4535839)))

(declare-fun c!1405643 () Bool)

(assert (=> d!2323980 (= c!1405643 (isEmpty!41727 (_2!37954 lt!2658449)))))

(assert (=> d!2323980 (validRegex!10790 (regTwo!41256 r!14126))))

(assert (=> d!2323980 (= (matchR!9875 (regTwo!41256 r!14126) (_2!37954 lt!2658449)) lt!2658490)))

(declare-fun b!7629311 () Bool)

(declare-fun e!4535841 () Bool)

(assert (=> b!7629311 (= e!4535841 (not lt!2658490))))

(declare-fun b!7629312 () Bool)

(assert (=> b!7629312 (= e!4535838 e!4535841)))

(declare-fun c!1405642 () Bool)

(assert (=> b!7629312 (= c!1405642 (is-EmptyLang!20372 (regTwo!41256 r!14126)))))

(declare-fun b!7629313 () Bool)

(assert (=> b!7629313 (= e!4535839 (nullable!8905 (regTwo!41256 r!14126)))))

(declare-fun b!7629314 () Bool)

(declare-fun res!3055239 () Bool)

(assert (=> b!7629314 (=> res!3055239 e!4535840)))

(assert (=> b!7629314 (= res!3055239 (not (isEmpty!41727 (tail!15219 (_2!37954 lt!2658449)))))))

(declare-fun b!7629315 () Bool)

(declare-fun res!3055235 () Bool)

(assert (=> b!7629315 (=> (not res!3055235) (not e!4535842))))

(assert (=> b!7629315 (= res!3055235 (not call!700415))))

(declare-fun bm!700410 () Bool)

(assert (=> bm!700410 (= call!700415 (isEmpty!41727 (_2!37954 lt!2658449)))))

(declare-fun b!7629316 () Bool)

(declare-fun res!3055238 () Bool)

(assert (=> b!7629316 (=> res!3055238 e!4535837)))

(assert (=> b!7629316 (= res!3055238 (not (is-ElementMatch!20372 (regTwo!41256 r!14126))))))

(assert (=> b!7629316 (= e!4535841 e!4535837)))

(declare-fun b!7629317 () Bool)

(assert (=> b!7629317 (= e!4535839 (matchR!9875 (derivativeStep!5879 (regTwo!41256 r!14126) (head!15679 (_2!37954 lt!2658449))) (tail!15219 (_2!37954 lt!2658449))))))

(declare-fun b!7629318 () Bool)

(declare-fun res!3055240 () Bool)

(assert (=> b!7629318 (=> res!3055240 e!4535837)))

(assert (=> b!7629318 (= res!3055240 e!4535842)))

(declare-fun res!3055241 () Bool)

(assert (=> b!7629318 (=> (not res!3055241) (not e!4535842))))

(assert (=> b!7629318 (= res!3055241 lt!2658490)))

(assert (= (and d!2323980 c!1405643) b!7629313))

(assert (= (and d!2323980 (not c!1405643)) b!7629317))

(assert (= (and d!2323980 c!1405641) b!7629310))

(assert (= (and d!2323980 (not c!1405641)) b!7629312))

(assert (= (and b!7629312 c!1405642) b!7629311))

(assert (= (and b!7629312 (not c!1405642)) b!7629316))

(assert (= (and b!7629316 (not res!3055238)) b!7629318))

(assert (= (and b!7629318 res!3055241) b!7629315))

(assert (= (and b!7629315 res!3055235) b!7629309))

(assert (= (and b!7629309 res!3055236) b!7629307))

(assert (= (and b!7629318 (not res!3055240)) b!7629306))

(assert (= (and b!7629306 res!3055234) b!7629308))

(assert (= (and b!7629308 (not res!3055237)) b!7629314))

(assert (= (and b!7629314 (not res!3055239)) b!7629305))

(assert (= (or b!7629310 b!7629308 b!7629315) bm!700410))

(declare-fun m!8157114 () Bool)

(assert (=> b!7629317 m!8157114))

(assert (=> b!7629317 m!8157114))

(declare-fun m!8157116 () Bool)

(assert (=> b!7629317 m!8157116))

(declare-fun m!8157118 () Bool)

(assert (=> b!7629317 m!8157118))

(assert (=> b!7629317 m!8157116))

(assert (=> b!7629317 m!8157118))

(declare-fun m!8157120 () Bool)

(assert (=> b!7629317 m!8157120))

(assert (=> b!7629305 m!8157114))

(assert (=> d!2323980 m!8157092))

(assert (=> d!2323980 m!8157056))

(assert (=> b!7629309 m!8157118))

(assert (=> b!7629309 m!8157118))

(declare-fun m!8157122 () Bool)

(assert (=> b!7629309 m!8157122))

(assert (=> bm!700410 m!8157092))

(assert (=> b!7629314 m!8157118))

(assert (=> b!7629314 m!8157118))

(assert (=> b!7629314 m!8157122))

(assert (=> b!7629307 m!8157114))

(declare-fun m!8157124 () Bool)

(assert (=> b!7629313 m!8157124))

(assert (=> b!7629103 d!2323980))

(declare-fun d!2323982 () Bool)

(declare-fun lt!2658493 () tuple2!69302)

(assert (=> d!2323982 (dynLambda!29924 lambda!468970 lt!2658493)))

(declare-fun choose!58888 (Int) tuple2!69302)

(assert (=> d!2323982 (= lt!2658493 (choose!58888 lambda!468970))))

(assert (=> d!2323982 (Exists!4526 lambda!468970)))

(assert (=> d!2323982 (= (pickWitness!467 lambda!468970) lt!2658493)))

(declare-fun b_lambda!289045 () Bool)

(assert (=> (not b_lambda!289045) (not d!2323982)))

(declare-fun bs!1943878 () Bool)

(assert (= bs!1943878 d!2323982))

(declare-fun m!8157126 () Bool)

(assert (=> bs!1943878 m!8157126))

(declare-fun m!8157128 () Bool)

(assert (=> bs!1943878 m!8157128))

(assert (=> bs!1943878 m!8157006))

(assert (=> b!7629103 d!2323982))

(declare-fun d!2323984 () Bool)

(declare-fun choose!58889 (Int) Bool)

(assert (=> d!2323984 (= (Exists!4526 lambda!468970) (choose!58889 lambda!468970))))

(declare-fun bs!1943879 () Bool)

(assert (= bs!1943879 d!2323984))

(declare-fun m!8157130 () Bool)

(assert (=> bs!1943879 m!8157130))

(assert (=> b!7629098 d!2323984))

(declare-fun d!2323986 () Bool)

(assert (=> d!2323986 (isDefined!14061 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605))))

(declare-fun lt!2658496 () Unit!167672)

(declare-fun choose!58890 (Regex!20372 Regex!20372 List!73223) Unit!167672)

(assert (=> d!2323986 (= lt!2658496 (choose!58890 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605))))

(assert (=> d!2323986 (validRegex!10790 (regOne!41256 r!14126))))

(assert (=> d!2323986 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!279 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605) lt!2658496)))

(declare-fun bs!1943880 () Bool)

(assert (= bs!1943880 d!2323986))

(assert (=> bs!1943880 m!8157014))

(assert (=> bs!1943880 m!8157014))

(assert (=> bs!1943880 m!8157018))

(declare-fun m!8157132 () Bool)

(assert (=> bs!1943880 m!8157132))

(assert (=> bs!1943880 m!8157004))

(assert (=> b!7629098 d!2323986))

(declare-fun b!7629323 () Bool)

(declare-fun e!4535849 () Bool)

(assert (=> b!7629323 (= e!4535849 (not (= (head!15679 s!9605) (c!1405605 r!14126))))))

(declare-fun b!7629324 () Bool)

(declare-fun e!4535846 () Bool)

(declare-fun e!4535845 () Bool)

(assert (=> b!7629324 (= e!4535846 e!4535845)))

(declare-fun res!3055242 () Bool)

(assert (=> b!7629324 (=> (not res!3055242) (not e!4535845))))

(declare-fun lt!2658497 () Bool)

(assert (=> b!7629324 (= res!3055242 (not lt!2658497))))

(declare-fun b!7629325 () Bool)

(declare-fun e!4535851 () Bool)

(assert (=> b!7629325 (= e!4535851 (= (head!15679 s!9605) (c!1405605 r!14126)))))

(declare-fun b!7629326 () Bool)

(assert (=> b!7629326 (= e!4535845 e!4535849)))

(declare-fun res!3055245 () Bool)

(assert (=> b!7629326 (=> res!3055245 e!4535849)))

(declare-fun call!700416 () Bool)

(assert (=> b!7629326 (= res!3055245 call!700416)))

(declare-fun b!7629327 () Bool)

(declare-fun res!3055244 () Bool)

(assert (=> b!7629327 (=> (not res!3055244) (not e!4535851))))

(assert (=> b!7629327 (= res!3055244 (isEmpty!41727 (tail!15219 s!9605)))))

(declare-fun b!7629328 () Bool)

(declare-fun e!4535847 () Bool)

(assert (=> b!7629328 (= e!4535847 (= lt!2658497 call!700416))))

(declare-fun d!2323988 () Bool)

(assert (=> d!2323988 e!4535847))

(declare-fun c!1405646 () Bool)

(assert (=> d!2323988 (= c!1405646 (is-EmptyExpr!20372 r!14126))))

(declare-fun e!4535848 () Bool)

(assert (=> d!2323988 (= lt!2658497 e!4535848)))

(declare-fun c!1405648 () Bool)

(assert (=> d!2323988 (= c!1405648 (isEmpty!41727 s!9605))))

(assert (=> d!2323988 (validRegex!10790 r!14126)))

(assert (=> d!2323988 (= (matchR!9875 r!14126 s!9605) lt!2658497)))

(declare-fun b!7629329 () Bool)

(declare-fun e!4535850 () Bool)

(assert (=> b!7629329 (= e!4535850 (not lt!2658497))))

(declare-fun b!7629330 () Bool)

(assert (=> b!7629330 (= e!4535847 e!4535850)))

(declare-fun c!1405647 () Bool)

(assert (=> b!7629330 (= c!1405647 (is-EmptyLang!20372 r!14126))))

(declare-fun b!7629331 () Bool)

(assert (=> b!7629331 (= e!4535848 (nullable!8905 r!14126))))

(declare-fun b!7629332 () Bool)

(declare-fun res!3055247 () Bool)

(assert (=> b!7629332 (=> res!3055247 e!4535849)))

(assert (=> b!7629332 (= res!3055247 (not (isEmpty!41727 (tail!15219 s!9605))))))

(declare-fun b!7629333 () Bool)

(declare-fun res!3055243 () Bool)

(assert (=> b!7629333 (=> (not res!3055243) (not e!4535851))))

(assert (=> b!7629333 (= res!3055243 (not call!700416))))

(declare-fun bm!700411 () Bool)

(assert (=> bm!700411 (= call!700416 (isEmpty!41727 s!9605))))

(declare-fun b!7629334 () Bool)

(declare-fun res!3055246 () Bool)

(assert (=> b!7629334 (=> res!3055246 e!4535846)))

(assert (=> b!7629334 (= res!3055246 (not (is-ElementMatch!20372 r!14126)))))

(assert (=> b!7629334 (= e!4535850 e!4535846)))

(declare-fun b!7629335 () Bool)

(assert (=> b!7629335 (= e!4535848 (matchR!9875 (derivativeStep!5879 r!14126 (head!15679 s!9605)) (tail!15219 s!9605)))))

(declare-fun b!7629336 () Bool)

(declare-fun res!3055248 () Bool)

(assert (=> b!7629336 (=> res!3055248 e!4535846)))

(assert (=> b!7629336 (= res!3055248 e!4535851)))

(declare-fun res!3055249 () Bool)

(assert (=> b!7629336 (=> (not res!3055249) (not e!4535851))))

(assert (=> b!7629336 (= res!3055249 lt!2658497)))

(assert (= (and d!2323988 c!1405648) b!7629331))

(assert (= (and d!2323988 (not c!1405648)) b!7629335))

(assert (= (and d!2323988 c!1405646) b!7629328))

(assert (= (and d!2323988 (not c!1405646)) b!7629330))

(assert (= (and b!7629330 c!1405647) b!7629329))

(assert (= (and b!7629330 (not c!1405647)) b!7629334))

(assert (= (and b!7629334 (not res!3055246)) b!7629336))

(assert (= (and b!7629336 res!3055249) b!7629333))

(assert (= (and b!7629333 res!3055243) b!7629327))

(assert (= (and b!7629327 res!3055244) b!7629325))

(assert (= (and b!7629336 (not res!3055248)) b!7629324))

(assert (= (and b!7629324 res!3055242) b!7629326))

(assert (= (and b!7629326 (not res!3055245)) b!7629332))

(assert (= (and b!7629332 (not res!3055247)) b!7629323))

(assert (= (or b!7629328 b!7629326 b!7629333) bm!700411))

(declare-fun m!8157134 () Bool)

(assert (=> b!7629335 m!8157134))

(assert (=> b!7629335 m!8157134))

(declare-fun m!8157136 () Bool)

(assert (=> b!7629335 m!8157136))

(declare-fun m!8157138 () Bool)

(assert (=> b!7629335 m!8157138))

(assert (=> b!7629335 m!8157136))

(assert (=> b!7629335 m!8157138))

(declare-fun m!8157140 () Bool)

(assert (=> b!7629335 m!8157140))

(assert (=> b!7629323 m!8157134))

(declare-fun m!8157142 () Bool)

(assert (=> d!2323988 m!8157142))

(assert (=> d!2323988 m!8157010))

(assert (=> b!7629327 m!8157138))

(assert (=> b!7629327 m!8157138))

(declare-fun m!8157144 () Bool)

(assert (=> b!7629327 m!8157144))

(assert (=> bm!700411 m!8157142))

(assert (=> b!7629332 m!8157138))

(assert (=> b!7629332 m!8157138))

(assert (=> b!7629332 m!8157144))

(assert (=> b!7629325 m!8157134))

(declare-fun m!8157146 () Bool)

(assert (=> b!7629331 m!8157146))

(assert (=> b!7629104 d!2323988))

(declare-fun bs!1943881 () Bool)

(declare-fun d!2323990 () Bool)

(assert (= bs!1943881 (and d!2323990 b!7629231)))

(declare-fun lambda!468994 () Int)

(assert (=> bs!1943881 (not (= lambda!468994 lambda!468987))))

(declare-fun bs!1943882 () Bool)

(assert (= bs!1943882 (and d!2323990 b!7629252)))

(assert (=> bs!1943882 (not (= lambda!468994 lambda!468989))))

(declare-fun bs!1943883 () Bool)

(assert (= bs!1943883 (and d!2323990 b!7629104)))

(assert (=> bs!1943883 (= lambda!468994 lambda!468970)))

(declare-fun bs!1943884 () Bool)

(assert (= bs!1943884 (and d!2323990 b!7629245)))

(assert (=> bs!1943884 (not (= lambda!468994 lambda!468988))))

(declare-fun bs!1943885 () Bool)

(assert (= bs!1943885 (and d!2323990 b!7629103)))

(assert (=> bs!1943885 (not (= lambda!468994 lambda!468971))))

(declare-fun bs!1943886 () Bool)

(assert (= bs!1943886 (and d!2323990 b!7629224)))

(assert (=> bs!1943886 (not (= lambda!468994 lambda!468986))))

(assert (=> d!2323990 true))

(assert (=> d!2323990 true))

(assert (=> d!2323990 true))

(assert (=> d!2323990 (= (isDefined!14061 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605)) (Exists!4526 lambda!468994))))

(declare-fun lt!2658500 () Unit!167672)

(declare-fun choose!58891 (Regex!20372 Regex!20372 List!73223) Unit!167672)

(assert (=> d!2323990 (= lt!2658500 (choose!58891 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605))))

(assert (=> d!2323990 (validRegex!10790 (regOne!41256 r!14126))))

(assert (=> d!2323990 (= (lemmaFindConcatSeparationEquivalentToExists!3233 (regOne!41256 r!14126) (regTwo!41256 r!14126) s!9605) lt!2658500)))

(declare-fun bs!1943887 () Bool)

(assert (= bs!1943887 d!2323990))

(assert (=> bs!1943887 m!8157014))

(assert (=> bs!1943887 m!8157018))

(assert (=> bs!1943887 m!8157014))

(declare-fun m!8157148 () Bool)

(assert (=> bs!1943887 m!8157148))

(assert (=> bs!1943887 m!8157004))

(declare-fun m!8157150 () Bool)

(assert (=> bs!1943887 m!8157150))

(assert (=> b!7629104 d!2323990))

(declare-fun d!2323992 () Bool)

(declare-fun isEmpty!41728 (Option!17445) Bool)

(assert (=> d!2323992 (= (isDefined!14061 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605)) (not (isEmpty!41728 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605))))))

(declare-fun bs!1943888 () Bool)

(assert (= bs!1943888 d!2323992))

(assert (=> bs!1943888 m!8157014))

(declare-fun m!8157152 () Bool)

(assert (=> bs!1943888 m!8157152))

(assert (=> b!7629104 d!2323992))

(declare-fun b!7629398 () Bool)

(declare-fun e!4535887 () Bool)

(declare-fun lt!2658508 () Option!17445)

(assert (=> b!7629398 (= e!4535887 (not (isDefined!14061 lt!2658508)))))

(declare-fun b!7629399 () Bool)

(declare-fun e!4535888 () Option!17445)

(assert (=> b!7629399 (= e!4535888 (Some!17444 (tuple2!69303 Nil!73099 s!9605)))))

(declare-fun b!7629400 () Bool)

(declare-fun e!4535890 () Bool)

(assert (=> b!7629400 (= e!4535890 (matchR!9875 (regTwo!41256 r!14126) s!9605))))

(declare-fun d!2323994 () Bool)

(assert (=> d!2323994 e!4535887))

(declare-fun res!3055286 () Bool)

(assert (=> d!2323994 (=> res!3055286 e!4535887)))

(declare-fun e!4535891 () Bool)

(assert (=> d!2323994 (= res!3055286 e!4535891)))

(declare-fun res!3055283 () Bool)

(assert (=> d!2323994 (=> (not res!3055283) (not e!4535891))))

(assert (=> d!2323994 (= res!3055283 (isDefined!14061 lt!2658508))))

(assert (=> d!2323994 (= lt!2658508 e!4535888)))

(declare-fun c!1405664 () Bool)

(assert (=> d!2323994 (= c!1405664 e!4535890)))

(declare-fun res!3055287 () Bool)

(assert (=> d!2323994 (=> (not res!3055287) (not e!4535890))))

(assert (=> d!2323994 (= res!3055287 (matchR!9875 (regOne!41256 r!14126) Nil!73099))))

(assert (=> d!2323994 (validRegex!10790 (regOne!41256 r!14126))))

(assert (=> d!2323994 (= (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) Nil!73099 s!9605 s!9605) lt!2658508)))

(declare-fun b!7629401 () Bool)

(declare-fun res!3055285 () Bool)

(assert (=> b!7629401 (=> (not res!3055285) (not e!4535891))))

(declare-fun get!25830 (Option!17445) tuple2!69302)

(assert (=> b!7629401 (= res!3055285 (matchR!9875 (regOne!41256 r!14126) (_1!37954 (get!25830 lt!2658508))))))

(declare-fun b!7629402 () Bool)

(declare-fun lt!2658509 () Unit!167672)

(declare-fun lt!2658507 () Unit!167672)

(assert (=> b!7629402 (= lt!2658509 lt!2658507)))

(assert (=> b!7629402 (= (++!17656 (++!17656 Nil!73099 (Cons!73099 (h!79547 s!9605) Nil!73099)) (t!387958 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3236 (List!73223 C!41070 List!73223 List!73223) Unit!167672)

(assert (=> b!7629402 (= lt!2658507 (lemmaMoveElementToOtherListKeepsConcatEq!3236 Nil!73099 (h!79547 s!9605) (t!387958 s!9605) s!9605))))

(declare-fun e!4535889 () Option!17445)

(assert (=> b!7629402 (= e!4535889 (findConcatSeparation!3475 (regOne!41256 r!14126) (regTwo!41256 r!14126) (++!17656 Nil!73099 (Cons!73099 (h!79547 s!9605) Nil!73099)) (t!387958 s!9605) s!9605))))

(declare-fun b!7629403 () Bool)

(assert (=> b!7629403 (= e!4535891 (= (++!17656 (_1!37954 (get!25830 lt!2658508)) (_2!37954 (get!25830 lt!2658508))) s!9605))))

(declare-fun b!7629404 () Bool)

(assert (=> b!7629404 (= e!4535889 None!17444)))

(declare-fun b!7629405 () Bool)

(assert (=> b!7629405 (= e!4535888 e!4535889)))

(declare-fun c!1405663 () Bool)

(assert (=> b!7629405 (= c!1405663 (is-Nil!73099 s!9605))))

(declare-fun b!7629406 () Bool)

(declare-fun res!3055284 () Bool)

(assert (=> b!7629406 (=> (not res!3055284) (not e!4535891))))

(assert (=> b!7629406 (= res!3055284 (matchR!9875 (regTwo!41256 r!14126) (_2!37954 (get!25830 lt!2658508))))))

(assert (= (and d!2323994 res!3055287) b!7629400))

(assert (= (and d!2323994 c!1405664) b!7629399))

(assert (= (and d!2323994 (not c!1405664)) b!7629405))

(assert (= (and b!7629405 c!1405663) b!7629404))

(assert (= (and b!7629405 (not c!1405663)) b!7629402))

(assert (= (and d!2323994 res!3055283) b!7629401))

(assert (= (and b!7629401 res!3055285) b!7629406))

(assert (= (and b!7629406 res!3055284) b!7629403))

(assert (= (and d!2323994 (not res!3055286)) b!7629398))

(declare-fun m!8157154 () Bool)

(assert (=> b!7629402 m!8157154))

(assert (=> b!7629402 m!8157154))

(declare-fun m!8157156 () Bool)

(assert (=> b!7629402 m!8157156))

(declare-fun m!8157158 () Bool)

(assert (=> b!7629402 m!8157158))

(assert (=> b!7629402 m!8157154))

(declare-fun m!8157160 () Bool)

(assert (=> b!7629402 m!8157160))

(declare-fun m!8157162 () Bool)

(assert (=> b!7629401 m!8157162))

(declare-fun m!8157164 () Bool)

(assert (=> b!7629401 m!8157164))

(assert (=> b!7629403 m!8157162))

(declare-fun m!8157166 () Bool)

(assert (=> b!7629403 m!8157166))

(assert (=> b!7629406 m!8157162))

(declare-fun m!8157168 () Bool)

(assert (=> b!7629406 m!8157168))

(declare-fun m!8157170 () Bool)

(assert (=> b!7629400 m!8157170))

(declare-fun m!8157172 () Bool)

(assert (=> b!7629398 m!8157172))

(assert (=> d!2323994 m!8157172))

(declare-fun m!8157174 () Bool)

(assert (=> d!2323994 m!8157174))

(assert (=> d!2323994 m!8157004))

(assert (=> b!7629104 d!2323994))

(assert (=> b!7629104 d!2323984))

(declare-fun b!7629425 () Bool)

(declare-fun e!4535912 () Bool)

(declare-fun call!700430 () Bool)

(assert (=> b!7629425 (= e!4535912 call!700430)))

(declare-fun b!7629426 () Bool)

(declare-fun res!3055300 () Bool)

(assert (=> b!7629426 (=> (not res!3055300) (not e!4535912))))

(declare-fun call!700431 () Bool)

(assert (=> b!7629426 (= res!3055300 call!700431)))

(declare-fun e!4535909 () Bool)

(assert (=> b!7629426 (= e!4535909 e!4535912)))

(declare-fun b!7629428 () Bool)

(declare-fun e!4535908 () Bool)

(declare-fun e!4535906 () Bool)

(assert (=> b!7629428 (= e!4535908 e!4535906)))

(declare-fun res!3055302 () Bool)

(assert (=> b!7629428 (=> (not res!3055302) (not e!4535906))))

(assert (=> b!7629428 (= res!3055302 call!700431)))

(declare-fun b!7629429 () Bool)

(declare-fun e!4535911 () Bool)

(assert (=> b!7629429 (= e!4535911 e!4535909)))

(declare-fun c!1405669 () Bool)

(assert (=> b!7629429 (= c!1405669 (is-Union!20372 r!14126))))

(declare-fun bm!700424 () Bool)

(declare-fun call!700429 () Bool)

(assert (=> bm!700424 (= call!700430 call!700429)))

(declare-fun b!7629430 () Bool)

(declare-fun e!4535910 () Bool)

(assert (=> b!7629430 (= e!4535910 call!700429)))

(declare-fun b!7629431 () Bool)

(assert (=> b!7629431 (= e!4535911 e!4535910)))

(declare-fun res!3055298 () Bool)

(assert (=> b!7629431 (= res!3055298 (not (nullable!8905 (reg!20701 r!14126))))))

(assert (=> b!7629431 (=> (not res!3055298) (not e!4535910))))

(declare-fun b!7629432 () Bool)

(declare-fun res!3055299 () Bool)

(assert (=> b!7629432 (=> res!3055299 e!4535908)))

(assert (=> b!7629432 (= res!3055299 (not (is-Concat!29217 r!14126)))))

(assert (=> b!7629432 (= e!4535909 e!4535908)))

(declare-fun bm!700425 () Bool)

(assert (=> bm!700425 (= call!700431 (validRegex!10790 (ite c!1405669 (regOne!41257 r!14126) (regOne!41256 r!14126))))))

(declare-fun b!7629433 () Bool)

(declare-fun e!4535907 () Bool)

(assert (=> b!7629433 (= e!4535907 e!4535911)))

(declare-fun c!1405670 () Bool)

(assert (=> b!7629433 (= c!1405670 (is-Star!20372 r!14126))))

(declare-fun bm!700426 () Bool)

(assert (=> bm!700426 (= call!700429 (validRegex!10790 (ite c!1405670 (reg!20701 r!14126) (ite c!1405669 (regTwo!41257 r!14126) (regTwo!41256 r!14126)))))))

(declare-fun d!2323996 () Bool)

(declare-fun res!3055301 () Bool)

(assert (=> d!2323996 (=> res!3055301 e!4535907)))

(assert (=> d!2323996 (= res!3055301 (is-ElementMatch!20372 r!14126))))

(assert (=> d!2323996 (= (validRegex!10790 r!14126) e!4535907)))

(declare-fun b!7629427 () Bool)

(assert (=> b!7629427 (= e!4535906 call!700430)))

(assert (= (and d!2323996 (not res!3055301)) b!7629433))

(assert (= (and b!7629433 c!1405670) b!7629431))

(assert (= (and b!7629433 (not c!1405670)) b!7629429))

(assert (= (and b!7629431 res!3055298) b!7629430))

(assert (= (and b!7629429 c!1405669) b!7629426))

(assert (= (and b!7629429 (not c!1405669)) b!7629432))

(assert (= (and b!7629426 res!3055300) b!7629425))

(assert (= (and b!7629432 (not res!3055299)) b!7629428))

(assert (= (and b!7629428 res!3055302) b!7629427))

(assert (= (or b!7629426 b!7629428) bm!700425))

(assert (= (or b!7629425 b!7629427) bm!700424))

(assert (= (or b!7629430 bm!700424) bm!700426))

(declare-fun m!8157184 () Bool)

(assert (=> b!7629431 m!8157184))

(declare-fun m!8157186 () Bool)

(assert (=> bm!700425 m!8157186))

(declare-fun m!8157188 () Bool)

(assert (=> bm!700426 m!8157188))

(assert (=> start!734666 d!2323996))

(declare-fun b!7629434 () Bool)

(declare-fun e!4535919 () Bool)

(declare-fun call!700433 () Bool)

(assert (=> b!7629434 (= e!4535919 call!700433)))

(declare-fun b!7629435 () Bool)

(declare-fun res!3055305 () Bool)

(assert (=> b!7629435 (=> (not res!3055305) (not e!4535919))))

(declare-fun call!700434 () Bool)

(assert (=> b!7629435 (= res!3055305 call!700434)))

(declare-fun e!4535916 () Bool)

(assert (=> b!7629435 (= e!4535916 e!4535919)))

(declare-fun b!7629437 () Bool)

(declare-fun e!4535915 () Bool)

(declare-fun e!4535913 () Bool)

(assert (=> b!7629437 (= e!4535915 e!4535913)))

(declare-fun res!3055307 () Bool)

(assert (=> b!7629437 (=> (not res!3055307) (not e!4535913))))

(assert (=> b!7629437 (= res!3055307 call!700434)))

(declare-fun b!7629438 () Bool)

(declare-fun e!4535918 () Bool)

(assert (=> b!7629438 (= e!4535918 e!4535916)))

(declare-fun c!1405671 () Bool)

(assert (=> b!7629438 (= c!1405671 (is-Union!20372 (regOne!41256 r!14126)))))

(declare-fun bm!700427 () Bool)

(declare-fun call!700432 () Bool)

(assert (=> bm!700427 (= call!700433 call!700432)))

(declare-fun b!7629439 () Bool)

(declare-fun e!4535917 () Bool)

(assert (=> b!7629439 (= e!4535917 call!700432)))

(declare-fun b!7629440 () Bool)

(assert (=> b!7629440 (= e!4535918 e!4535917)))

(declare-fun res!3055303 () Bool)

(assert (=> b!7629440 (= res!3055303 (not (nullable!8905 (reg!20701 (regOne!41256 r!14126)))))))

(assert (=> b!7629440 (=> (not res!3055303) (not e!4535917))))

(declare-fun b!7629441 () Bool)

(declare-fun res!3055304 () Bool)

(assert (=> b!7629441 (=> res!3055304 e!4535915)))

(assert (=> b!7629441 (= res!3055304 (not (is-Concat!29217 (regOne!41256 r!14126))))))

(assert (=> b!7629441 (= e!4535916 e!4535915)))

(declare-fun bm!700428 () Bool)

(assert (=> bm!700428 (= call!700434 (validRegex!10790 (ite c!1405671 (regOne!41257 (regOne!41256 r!14126)) (regOne!41256 (regOne!41256 r!14126)))))))

(declare-fun b!7629442 () Bool)

(declare-fun e!4535914 () Bool)

(assert (=> b!7629442 (= e!4535914 e!4535918)))

(declare-fun c!1405672 () Bool)

(assert (=> b!7629442 (= c!1405672 (is-Star!20372 (regOne!41256 r!14126)))))

(declare-fun bm!700429 () Bool)

(assert (=> bm!700429 (= call!700432 (validRegex!10790 (ite c!1405672 (reg!20701 (regOne!41256 r!14126)) (ite c!1405671 (regTwo!41257 (regOne!41256 r!14126)) (regTwo!41256 (regOne!41256 r!14126))))))))

(declare-fun d!2324000 () Bool)

(declare-fun res!3055306 () Bool)

(assert (=> d!2324000 (=> res!3055306 e!4535914)))

(assert (=> d!2324000 (= res!3055306 (is-ElementMatch!20372 (regOne!41256 r!14126)))))

(assert (=> d!2324000 (= (validRegex!10790 (regOne!41256 r!14126)) e!4535914)))

(declare-fun b!7629436 () Bool)

(assert (=> b!7629436 (= e!4535913 call!700433)))

(assert (= (and d!2324000 (not res!3055306)) b!7629442))

(assert (= (and b!7629442 c!1405672) b!7629440))

(assert (= (and b!7629442 (not c!1405672)) b!7629438))

(assert (= (and b!7629440 res!3055303) b!7629439))

(assert (= (and b!7629438 c!1405671) b!7629435))

(assert (= (and b!7629438 (not c!1405671)) b!7629441))

(assert (= (and b!7629435 res!3055305) b!7629434))

(assert (= (and b!7629441 (not res!3055304)) b!7629437))

(assert (= (and b!7629437 res!3055307) b!7629436))

(assert (= (or b!7629435 b!7629437) bm!700428))

(assert (= (or b!7629434 b!7629436) bm!700427))

(assert (= (or b!7629439 bm!700427) bm!700429))

(declare-fun m!8157190 () Bool)

(assert (=> b!7629440 m!8157190))

(declare-fun m!8157192 () Bool)

(assert (=> bm!700428 m!8157192))

(declare-fun m!8157194 () Bool)

(assert (=> bm!700429 m!8157194))

(assert (=> b!7629108 d!2324000))

(declare-fun b!7629453 () Bool)

(declare-fun e!4535922 () Bool)

(assert (=> b!7629453 (= e!4535922 tp_is_empty!51099)))

(declare-fun b!7629455 () Bool)

(declare-fun tp!2227419 () Bool)

(assert (=> b!7629455 (= e!4535922 tp!2227419)))

(assert (=> b!7629101 (= tp!2227381 e!4535922)))

(declare-fun b!7629454 () Bool)

(declare-fun tp!2227417 () Bool)

(declare-fun tp!2227418 () Bool)

(assert (=> b!7629454 (= e!4535922 (and tp!2227417 tp!2227418))))

(declare-fun b!7629456 () Bool)

(declare-fun tp!2227416 () Bool)

(declare-fun tp!2227420 () Bool)

(assert (=> b!7629456 (= e!4535922 (and tp!2227416 tp!2227420))))

(assert (= (and b!7629101 (is-ElementMatch!20372 (regOne!41256 r!14126))) b!7629453))

(assert (= (and b!7629101 (is-Concat!29217 (regOne!41256 r!14126))) b!7629454))

(assert (= (and b!7629101 (is-Star!20372 (regOne!41256 r!14126))) b!7629455))

(assert (= (and b!7629101 (is-Union!20372 (regOne!41256 r!14126))) b!7629456))

(declare-fun b!7629457 () Bool)

(declare-fun e!4535923 () Bool)

(assert (=> b!7629457 (= e!4535923 tp_is_empty!51099)))

(declare-fun b!7629459 () Bool)

(declare-fun tp!2227424 () Bool)

(assert (=> b!7629459 (= e!4535923 tp!2227424)))

(assert (=> b!7629101 (= tp!2227374 e!4535923)))

(declare-fun b!7629458 () Bool)

(declare-fun tp!2227422 () Bool)

(declare-fun tp!2227423 () Bool)

(assert (=> b!7629458 (= e!4535923 (and tp!2227422 tp!2227423))))

(declare-fun b!7629460 () Bool)

(declare-fun tp!2227421 () Bool)

(declare-fun tp!2227425 () Bool)

(assert (=> b!7629460 (= e!4535923 (and tp!2227421 tp!2227425))))

(assert (= (and b!7629101 (is-ElementMatch!20372 (regTwo!41256 r!14126))) b!7629457))

(assert (= (and b!7629101 (is-Concat!29217 (regTwo!41256 r!14126))) b!7629458))

(assert (= (and b!7629101 (is-Star!20372 (regTwo!41256 r!14126))) b!7629459))

(assert (= (and b!7629101 (is-Union!20372 (regTwo!41256 r!14126))) b!7629460))

(declare-fun b!7629465 () Bool)

(declare-fun e!4535926 () Bool)

(declare-fun tp!2227428 () Bool)

(assert (=> b!7629465 (= e!4535926 (and tp_is_empty!51099 tp!2227428))))

(assert (=> b!7629099 (= tp!2227376 e!4535926)))

(assert (= (and b!7629099 (is-Cons!73099 (t!387958 s!9605))) b!7629465))

(declare-fun b!7629466 () Bool)

(declare-fun e!4535927 () Bool)

(assert (=> b!7629466 (= e!4535927 tp_is_empty!51099)))

(declare-fun b!7629468 () Bool)

(declare-fun tp!2227432 () Bool)

(assert (=> b!7629468 (= e!4535927 tp!2227432)))

(assert (=> b!7629105 (= tp!2227377 e!4535927)))

(declare-fun b!7629467 () Bool)

(declare-fun tp!2227430 () Bool)

(declare-fun tp!2227431 () Bool)

(assert (=> b!7629467 (= e!4535927 (and tp!2227430 tp!2227431))))

(declare-fun b!7629469 () Bool)

(declare-fun tp!2227429 () Bool)

(declare-fun tp!2227433 () Bool)

(assert (=> b!7629469 (= e!4535927 (and tp!2227429 tp!2227433))))

(assert (= (and b!7629105 (is-ElementMatch!20372 (regOne!41257 r!14126))) b!7629466))

(assert (= (and b!7629105 (is-Concat!29217 (regOne!41257 r!14126))) b!7629467))

(assert (= (and b!7629105 (is-Star!20372 (regOne!41257 r!14126))) b!7629468))

(assert (= (and b!7629105 (is-Union!20372 (regOne!41257 r!14126))) b!7629469))

(declare-fun b!7629470 () Bool)

(declare-fun e!4535928 () Bool)

(assert (=> b!7629470 (= e!4535928 tp_is_empty!51099)))

(declare-fun b!7629472 () Bool)

(declare-fun tp!2227437 () Bool)

(assert (=> b!7629472 (= e!4535928 tp!2227437)))

(assert (=> b!7629105 (= tp!2227378 e!4535928)))

(declare-fun b!7629471 () Bool)

(declare-fun tp!2227435 () Bool)

(declare-fun tp!2227436 () Bool)

(assert (=> b!7629471 (= e!4535928 (and tp!2227435 tp!2227436))))

(declare-fun b!7629473 () Bool)

(declare-fun tp!2227434 () Bool)

(declare-fun tp!2227438 () Bool)

(assert (=> b!7629473 (= e!4535928 (and tp!2227434 tp!2227438))))

(assert (= (and b!7629105 (is-ElementMatch!20372 (regTwo!41257 r!14126))) b!7629470))

(assert (= (and b!7629105 (is-Concat!29217 (regTwo!41257 r!14126))) b!7629471))

(assert (= (and b!7629105 (is-Star!20372 (regTwo!41257 r!14126))) b!7629472))

(assert (= (and b!7629105 (is-Union!20372 (regTwo!41257 r!14126))) b!7629473))

(declare-fun b!7629474 () Bool)

(declare-fun e!4535929 () Bool)

(declare-fun tp!2227439 () Bool)

(assert (=> b!7629474 (= e!4535929 (and tp_is_empty!51099 tp!2227439))))

(assert (=> b!7629100 (= tp!2227375 e!4535929)))

(assert (= (and b!7629100 (is-Cons!73099 (t!387958 (_1!37954 cut!14)))) b!7629474))

(declare-fun b!7629475 () Bool)

(declare-fun e!4535930 () Bool)

(declare-fun tp!2227440 () Bool)

(assert (=> b!7629475 (= e!4535930 (and tp_is_empty!51099 tp!2227440))))

(assert (=> b!7629107 (= tp!2227379 e!4535930)))

(assert (= (and b!7629107 (is-Cons!73099 (t!387958 (_2!37954 cut!14)))) b!7629475))

(declare-fun b!7629476 () Bool)

(declare-fun e!4535931 () Bool)

(assert (=> b!7629476 (= e!4535931 tp_is_empty!51099)))

(declare-fun b!7629478 () Bool)

(declare-fun tp!2227444 () Bool)

(assert (=> b!7629478 (= e!4535931 tp!2227444)))

(assert (=> b!7629102 (= tp!2227380 e!4535931)))

(declare-fun b!7629477 () Bool)

(declare-fun tp!2227442 () Bool)

(declare-fun tp!2227443 () Bool)

(assert (=> b!7629477 (= e!4535931 (and tp!2227442 tp!2227443))))

(declare-fun b!7629479 () Bool)

(declare-fun tp!2227441 () Bool)

(declare-fun tp!2227445 () Bool)

(assert (=> b!7629479 (= e!4535931 (and tp!2227441 tp!2227445))))

(assert (= (and b!7629102 (is-ElementMatch!20372 (reg!20701 r!14126))) b!7629476))

(assert (= (and b!7629102 (is-Concat!29217 (reg!20701 r!14126))) b!7629477))

(assert (= (and b!7629102 (is-Star!20372 (reg!20701 r!14126))) b!7629478))

(assert (= (and b!7629102 (is-Union!20372 (reg!20701 r!14126))) b!7629479))

(declare-fun b_lambda!289047 () Bool)

(assert (= b_lambda!289043 (or b!7629103 b_lambda!289047)))

(declare-fun bs!1943894 () Bool)

(declare-fun d!2324002 () Bool)

(assert (= bs!1943894 (and d!2324002 b!7629103)))

(declare-fun res!3055308 () Bool)

(declare-fun e!4535932 () Bool)

(assert (=> bs!1943894 (=> (not res!3055308) (not e!4535932))))

(assert (=> bs!1943894 (= res!3055308 (= (++!17656 (_1!37954 lt!2658449) (_2!37954 lt!2658449)) s!9605))))

(assert (=> bs!1943894 (= (dynLambda!29924 lambda!468971 lt!2658449) e!4535932)))

(declare-fun b!7629480 () Bool)

(declare-fun res!3055309 () Bool)

(assert (=> b!7629480 (=> (not res!3055309) (not e!4535932))))

(assert (=> b!7629480 (= res!3055309 (matchRSpec!4535 (regOne!41256 r!14126) (_1!37954 lt!2658449)))))

(declare-fun b!7629481 () Bool)

(assert (=> b!7629481 (= e!4535932 (matchRSpec!4535 (regTwo!41256 r!14126) (_2!37954 lt!2658449)))))

(assert (= (and bs!1943894 res!3055308) b!7629480))

(assert (= (and b!7629480 res!3055309) b!7629481))

(declare-fun m!8157196 () Bool)

(assert (=> bs!1943894 m!8157196))

(assert (=> b!7629480 m!8156988))

(assert (=> b!7629481 m!8157002))

(assert (=> d!2323968 d!2324002))

(declare-fun b_lambda!289049 () Bool)

(assert (= b_lambda!289045 (or b!7629104 b_lambda!289049)))

(declare-fun bs!1943895 () Bool)

(declare-fun d!2324004 () Bool)

(assert (= bs!1943895 (and d!2324004 b!7629104)))

(declare-fun res!3055310 () Bool)

(declare-fun e!4535933 () Bool)

(assert (=> bs!1943895 (=> (not res!3055310) (not e!4535933))))

(assert (=> bs!1943895 (= res!3055310 (= (++!17656 (_1!37954 lt!2658493) (_2!37954 lt!2658493)) s!9605))))

(assert (=> bs!1943895 (= (dynLambda!29924 lambda!468970 lt!2658493) e!4535933)))

(declare-fun b!7629482 () Bool)

(declare-fun res!3055311 () Bool)

(assert (=> b!7629482 (=> (not res!3055311) (not e!4535933))))

(assert (=> b!7629482 (= res!3055311 (matchR!9875 (regOne!41256 r!14126) (_1!37954 lt!2658493)))))

(declare-fun b!7629483 () Bool)

(assert (=> b!7629483 (= e!4535933 (matchR!9875 (regTwo!41256 r!14126) (_2!37954 lt!2658493)))))

(assert (= (and bs!1943895 res!3055310) b!7629482))

(assert (= (and b!7629482 res!3055311) b!7629483))

(declare-fun m!8157198 () Bool)

(assert (=> bs!1943895 m!8157198))

(declare-fun m!8157200 () Bool)

(assert (=> b!7629482 m!8157200))

(declare-fun m!8157202 () Bool)

(assert (=> b!7629483 m!8157202))

(assert (=> d!2323982 d!2324004))

(push 1)

(assert (not bm!700429))

(assert (not b!7629480))

(assert (not b!7629403))

(assert (not d!2323976))

(assert (not b!7629472))

(assert (not b!7629460))

(assert (not b!7629179))

(assert (not bs!1943895))

(assert (not b!7629300))

(assert (not b!7629469))

(assert (not b!7629225))

(assert (not b!7629440))

(assert (not b!7629323))

(assert (not d!2323962))

(assert (not b!7629455))

(assert (not b!7629465))

(assert (not b!7629402))

(assert (not b!7629398))

(assert (not b!7629474))

(assert (not b!7629431))

(assert (not b!7629459))

(assert (not b!7629248))

(assert (not d!2323966))

(assert (not d!2323986))

(assert (not b!7629478))

(assert (not bm!700394))

(assert (not b!7629401))

(assert (not b!7629303))

(assert (not b_lambda!289047))

(assert (not bm!700410))

(assert (not b!7629314))

(assert (not b!7629293))

(assert (not b!7629482))

(assert (not b!7629313))

(assert (not b!7629475))

(assert (not b!7629295))

(assert (not b!7629458))

(assert (not b!7629473))

(assert (not bm!700400))

(assert (not d!2323982))

(assert (not d!2323994))

(assert (not b!7629299))

(assert (not b!7629227))

(assert (not b!7629317))

(assert (not b!7629477))

(assert (not b!7629481))

(assert (not d!2323984))

(assert (not d!2323990))

(assert (not bm!700409))

(assert (not d!2323988))

(assert (not d!2323992))

(assert (not b!7629468))

(assert (not d!2323980))

(assert (not b!7629307))

(assert (not b!7629332))

(assert (not b!7629479))

(assert (not b!7629325))

(assert (not b!7629246))

(assert (not b!7629471))

(assert (not b!7629456))

(assert (not bm!700428))

(assert (not bm!700395))

(assert (not d!2323964))

(assert (not b!7629327))

(assert (not b!7629331))

(assert (not b!7629180))

(assert (not b!7629291))

(assert (not bm!700401))

(assert (not bs!1943894))

(assert (not b_lambda!289049))

(assert tp_is_empty!51099)

(assert (not b!7629454))

(assert (not b!7629406))

(assert (not b!7629335))

(assert (not b!7629309))

(assert (not d!2323968))

(assert (not b!7629467))

(assert (not bm!700425))

(assert (not b!7629483))

(assert (not bm!700411))

(assert (not bm!700426))

(assert (not b!7629305))

(assert (not b!7629400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

