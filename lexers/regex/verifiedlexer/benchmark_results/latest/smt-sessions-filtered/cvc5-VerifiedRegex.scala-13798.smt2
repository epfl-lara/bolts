; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734910 () Bool)

(assert start!734910)

(declare-fun b!7632144 () Bool)

(assert (=> b!7632144 true))

(assert (=> b!7632144 true))

(declare-fun b!7632141 () Bool)

(declare-fun e!4537316 () Bool)

(assert (=> b!7632141 (= e!4537316 false)))

(declare-fun b!7632142 () Bool)

(declare-fun e!4537313 () Bool)

(declare-fun e!4537310 () Bool)

(assert (=> b!7632142 (= e!4537313 e!4537310)))

(declare-fun res!3056528 () Bool)

(assert (=> b!7632142 (=> res!3056528 e!4537310)))

(declare-datatypes ((C!41106 0))(
  ( (C!41107 (val!30993 Int)) )
))
(declare-datatypes ((List!73241 0))(
  ( (Nil!73117) (Cons!73117 (h!79565 C!41106) (t!387976 List!73241)) )
))
(declare-datatypes ((tuple2!69338 0))(
  ( (tuple2!69339 (_1!37972 List!73241) (_2!37972 List!73241)) )
))
(declare-fun cut!17 () tuple2!69338)

(declare-fun s!9605 () List!73241)

(declare-fun ++!17670 (List!73241 List!73241) List!73241)

(assert (=> b!7632142 (= res!3056528 (not (= (++!17670 (_1!37972 cut!17) (_2!37972 cut!17)) s!9605)))))

(declare-datatypes ((Unit!167712 0))(
  ( (Unit!167713) )
))
(declare-fun lt!2658943 () Unit!167712)

(declare-fun e!4537312 () Unit!167712)

(assert (=> b!7632142 (= lt!2658943 e!4537312)))

(declare-fun c!1406043 () Bool)

(declare-fun lt!2658947 () Bool)

(assert (=> b!7632142 (= c!1406043 lt!2658947)))

(declare-fun b!7632143 () Bool)

(declare-fun Unit!167714 () Unit!167712)

(assert (=> b!7632143 (= e!4537312 Unit!167714)))

(declare-fun lt!2658945 () tuple2!69338)

(declare-datatypes ((Option!17463 0))(
  ( (None!17462) (Some!17462 (v!54597 tuple2!69338)) )
))
(declare-fun lt!2658944 () Option!17463)

(declare-fun get!25850 (Option!17463) tuple2!69338)

(assert (=> b!7632143 (= lt!2658945 (get!25850 lt!2658944))))

(declare-fun lt!2658948 () Unit!167712)

(declare-datatypes ((Regex!20390 0))(
  ( (ElementMatch!20390 (c!1406044 C!41106)) (Concat!29235 (regOne!41292 Regex!20390) (regTwo!41292 Regex!20390)) (EmptyExpr!20390) (Star!20390 (reg!20719 Regex!20390)) (EmptyLang!20390) (Union!20390 (regOne!41293 Regex!20390) (regTwo!41293 Regex!20390)) )
))
(declare-fun r!14126 () Regex!20390)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!147 (Regex!20390 Regex!20390 List!73241 List!73241 List!73241) Unit!167712)

(assert (=> b!7632143 (= lt!2658948 (lemmaFindSeparationIsDefinedThenConcatMatches!147 (regOne!41292 r!14126) (regTwo!41292 r!14126) (_1!37972 lt!2658945) (_2!37972 lt!2658945) s!9605))))

(declare-fun res!3056525 () Bool)

(declare-fun matchR!9893 (Regex!20390 List!73241) Bool)

(assert (=> b!7632143 (= res!3056525 (matchR!9893 r!14126 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))))))

(assert (=> b!7632143 (=> (not res!3056525) (not e!4537316))))

(assert (=> b!7632143 e!4537316))

(declare-fun e!4537308 () Bool)

(assert (=> b!7632144 (= e!4537308 (not e!4537313))))

(declare-fun res!3056526 () Bool)

(assert (=> b!7632144 (=> res!3056526 e!4537313)))

(assert (=> b!7632144 (= res!3056526 (matchR!9893 r!14126 s!9605))))

(declare-fun lambda!469132 () Int)

(declare-fun Exists!4544 (Int) Bool)

(assert (=> b!7632144 (= lt!2658947 (Exists!4544 lambda!469132))))

(declare-fun isDefined!14079 (Option!17463) Bool)

(assert (=> b!7632144 (= lt!2658947 (isDefined!14079 lt!2658944))))

(declare-fun findConcatSeparation!3493 (Regex!20390 Regex!20390 List!73241 List!73241 List!73241) Option!17463)

(assert (=> b!7632144 (= lt!2658944 (findConcatSeparation!3493 (regOne!41292 r!14126) (regTwo!41292 r!14126) Nil!73117 s!9605 s!9605))))

(declare-fun lt!2658946 () Unit!167712)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3251 (Regex!20390 Regex!20390 List!73241) Unit!167712)

(assert (=> b!7632144 (= lt!2658946 (lemmaFindConcatSeparationEquivalentToExists!3251 (regOne!41292 r!14126) (regTwo!41292 r!14126) s!9605))))

(declare-fun b!7632145 () Bool)

(declare-fun e!4537315 () Bool)

(declare-fun tp!2228205 () Bool)

(assert (=> b!7632145 (= e!4537315 tp!2228205)))

(declare-fun b!7632146 () Bool)

(declare-fun tp_is_empty!51135 () Bool)

(assert (=> b!7632146 (= e!4537315 tp_is_empty!51135)))

(declare-fun b!7632147 () Bool)

(declare-fun e!4537309 () Bool)

(declare-fun tp!2228202 () Bool)

(assert (=> b!7632147 (= e!4537309 (and tp_is_empty!51135 tp!2228202))))

(declare-fun b!7632148 () Bool)

(declare-fun Unit!167715 () Unit!167712)

(assert (=> b!7632148 (= e!4537312 Unit!167715)))

(declare-fun b!7632149 () Bool)

(declare-fun tp!2228206 () Bool)

(declare-fun tp!2228204 () Bool)

(assert (=> b!7632149 (= e!4537315 (and tp!2228206 tp!2228204))))

(declare-fun b!7632150 () Bool)

(declare-fun e!4537314 () Bool)

(declare-fun tp!2228203 () Bool)

(assert (=> b!7632150 (= e!4537314 (and tp_is_empty!51135 tp!2228203))))

(declare-fun b!7632140 () Bool)

(declare-fun res!3056524 () Bool)

(assert (=> b!7632140 (=> (not res!3056524) (not e!4537308))))

(assert (=> b!7632140 (= res!3056524 (and (not (is-EmptyExpr!20390 r!14126)) (not (is-EmptyLang!20390 r!14126)) (not (is-ElementMatch!20390 r!14126)) (not (is-Union!20390 r!14126)) (not (is-Star!20390 r!14126))))))

(declare-fun res!3056523 () Bool)

(assert (=> start!734910 (=> (not res!3056523) (not e!4537308))))

(declare-fun validRegex!10808 (Regex!20390) Bool)

(assert (=> start!734910 (= res!3056523 (validRegex!10808 r!14126))))

(assert (=> start!734910 e!4537308))

(assert (=> start!734910 e!4537315))

(assert (=> start!734910 e!4537314))

(declare-fun e!4537311 () Bool)

(assert (=> start!734910 (and e!4537309 e!4537311)))

(declare-fun b!7632151 () Bool)

(declare-fun tp!2228207 () Bool)

(assert (=> b!7632151 (= e!4537311 (and tp_is_empty!51135 tp!2228207))))

(declare-fun b!7632152 () Bool)

(declare-fun res!3056527 () Bool)

(assert (=> b!7632152 (=> res!3056527 e!4537310)))

(assert (=> b!7632152 (= res!3056527 (not (matchR!9893 (regOne!41292 r!14126) (_1!37972 cut!17))))))

(declare-fun b!7632153 () Bool)

(assert (=> b!7632153 (= e!4537310 (validRegex!10808 (regTwo!41292 r!14126)))))

(declare-fun b!7632154 () Bool)

(declare-fun tp!2228209 () Bool)

(declare-fun tp!2228208 () Bool)

(assert (=> b!7632154 (= e!4537315 (and tp!2228209 tp!2228208))))

(assert (= (and start!734910 res!3056523) b!7632140))

(assert (= (and b!7632140 res!3056524) b!7632144))

(assert (= (and b!7632144 (not res!3056526)) b!7632142))

(assert (= (and b!7632142 c!1406043) b!7632143))

(assert (= (and b!7632142 (not c!1406043)) b!7632148))

(assert (= (and b!7632143 res!3056525) b!7632141))

(assert (= (and b!7632142 (not res!3056528)) b!7632152))

(assert (= (and b!7632152 (not res!3056527)) b!7632153))

(assert (= (and start!734910 (is-ElementMatch!20390 r!14126)) b!7632146))

(assert (= (and start!734910 (is-Concat!29235 r!14126)) b!7632149))

(assert (= (and start!734910 (is-Star!20390 r!14126)) b!7632145))

(assert (= (and start!734910 (is-Union!20390 r!14126)) b!7632154))

(assert (= (and start!734910 (is-Cons!73117 s!9605)) b!7632150))

(assert (= (and start!734910 (is-Cons!73117 (_1!37972 cut!17))) b!7632147))

(assert (= (and start!734910 (is-Cons!73117 (_2!37972 cut!17))) b!7632151))

(declare-fun m!8158546 () Bool)

(assert (=> b!7632142 m!8158546))

(declare-fun m!8158548 () Bool)

(assert (=> start!734910 m!8158548))

(declare-fun m!8158550 () Bool)

(assert (=> b!7632144 m!8158550))

(declare-fun m!8158552 () Bool)

(assert (=> b!7632144 m!8158552))

(declare-fun m!8158554 () Bool)

(assert (=> b!7632144 m!8158554))

(declare-fun m!8158556 () Bool)

(assert (=> b!7632144 m!8158556))

(declare-fun m!8158558 () Bool)

(assert (=> b!7632144 m!8158558))

(declare-fun m!8158560 () Bool)

(assert (=> b!7632152 m!8158560))

(declare-fun m!8158562 () Bool)

(assert (=> b!7632143 m!8158562))

(declare-fun m!8158564 () Bool)

(assert (=> b!7632143 m!8158564))

(declare-fun m!8158566 () Bool)

(assert (=> b!7632143 m!8158566))

(assert (=> b!7632143 m!8158566))

(declare-fun m!8158568 () Bool)

(assert (=> b!7632143 m!8158568))

(declare-fun m!8158570 () Bool)

(assert (=> b!7632153 m!8158570))

(push 1)

(assert (not b!7632153))

(assert (not b!7632142))

(assert (not b!7632149))

(assert (not b!7632154))

(assert (not b!7632144))

(assert (not b!7632143))

(assert (not b!7632152))

(assert (not b!7632145))

(assert (not b!7632150))

(assert (not b!7632147))

(assert tp_is_empty!51135)

(assert (not start!734910))

(assert (not b!7632151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7632230 () Bool)

(declare-fun res!3056564 () Bool)

(declare-fun e!4537362 () Bool)

(assert (=> b!7632230 (=> (not res!3056564) (not e!4537362))))

(declare-fun call!700641 () Bool)

(assert (=> b!7632230 (= res!3056564 call!700641)))

(declare-fun e!4537365 () Bool)

(assert (=> b!7632230 (= e!4537365 e!4537362)))

(declare-fun call!700639 () Bool)

(declare-fun c!1406054 () Bool)

(declare-fun c!1406053 () Bool)

(declare-fun bm!700634 () Bool)

(assert (=> bm!700634 (= call!700639 (validRegex!10808 (ite c!1406054 (reg!20719 r!14126) (ite c!1406053 (regOne!41293 r!14126) (regOne!41292 r!14126)))))))

(declare-fun b!7632231 () Bool)

(declare-fun e!4537366 () Bool)

(assert (=> b!7632231 (= e!4537366 e!4537365)))

(assert (=> b!7632231 (= c!1406053 (is-Union!20390 r!14126))))

(declare-fun bm!700635 () Bool)

(declare-fun call!700640 () Bool)

(assert (=> bm!700635 (= call!700640 (validRegex!10808 (ite c!1406053 (regTwo!41293 r!14126) (regTwo!41292 r!14126))))))

(declare-fun b!7632232 () Bool)

(declare-fun e!4537363 () Bool)

(declare-fun e!4537360 () Bool)

(assert (=> b!7632232 (= e!4537363 e!4537360)))

(declare-fun res!3056565 () Bool)

(assert (=> b!7632232 (=> (not res!3056565) (not e!4537360))))

(assert (=> b!7632232 (= res!3056565 call!700641)))

(declare-fun b!7632233 () Bool)

(assert (=> b!7632233 (= e!4537362 call!700640)))

(declare-fun bm!700636 () Bool)

(assert (=> bm!700636 (= call!700641 call!700639)))

(declare-fun b!7632234 () Bool)

(declare-fun e!4537364 () Bool)

(assert (=> b!7632234 (= e!4537366 e!4537364)))

(declare-fun res!3056563 () Bool)

(declare-fun nullable!8917 (Regex!20390) Bool)

(assert (=> b!7632234 (= res!3056563 (not (nullable!8917 (reg!20719 r!14126))))))

(assert (=> b!7632234 (=> (not res!3056563) (not e!4537364))))

(declare-fun b!7632235 () Bool)

(declare-fun e!4537361 () Bool)

(assert (=> b!7632235 (= e!4537361 e!4537366)))

(assert (=> b!7632235 (= c!1406054 (is-Star!20390 r!14126))))

(declare-fun b!7632236 () Bool)

(declare-fun res!3056561 () Bool)

(assert (=> b!7632236 (=> res!3056561 e!4537363)))

(assert (=> b!7632236 (= res!3056561 (not (is-Concat!29235 r!14126)))))

(assert (=> b!7632236 (= e!4537365 e!4537363)))

(declare-fun d!2324271 () Bool)

(declare-fun res!3056562 () Bool)

(assert (=> d!2324271 (=> res!3056562 e!4537361)))

(assert (=> d!2324271 (= res!3056562 (is-ElementMatch!20390 r!14126))))

(assert (=> d!2324271 (= (validRegex!10808 r!14126) e!4537361)))

(declare-fun b!7632237 () Bool)

(assert (=> b!7632237 (= e!4537360 call!700640)))

(declare-fun b!7632238 () Bool)

(assert (=> b!7632238 (= e!4537364 call!700639)))

(assert (= (and d!2324271 (not res!3056562)) b!7632235))

(assert (= (and b!7632235 c!1406054) b!7632234))

(assert (= (and b!7632235 (not c!1406054)) b!7632231))

(assert (= (and b!7632234 res!3056563) b!7632238))

(assert (= (and b!7632231 c!1406053) b!7632230))

(assert (= (and b!7632231 (not c!1406053)) b!7632236))

(assert (= (and b!7632230 res!3056564) b!7632233))

(assert (= (and b!7632236 (not res!3056561)) b!7632232))

(assert (= (and b!7632232 res!3056565) b!7632237))

(assert (= (or b!7632230 b!7632232) bm!700636))

(assert (= (or b!7632233 b!7632237) bm!700635))

(assert (= (or b!7632238 bm!700636) bm!700634))

(declare-fun m!8158598 () Bool)

(assert (=> bm!700634 m!8158598))

(declare-fun m!8158600 () Bool)

(assert (=> bm!700635 m!8158600))

(declare-fun m!8158602 () Bool)

(assert (=> b!7632234 m!8158602))

(assert (=> start!734910 d!2324271))

(declare-fun bm!700641 () Bool)

(declare-fun call!700646 () Bool)

(declare-fun isEmpty!41748 (List!73241) Bool)

(assert (=> bm!700641 (= call!700646 (isEmpty!41748 s!9605))))

(declare-fun b!7632295 () Bool)

(declare-fun e!4537396 () Bool)

(declare-fun derivativeStep!5890 (Regex!20390 C!41106) Regex!20390)

(declare-fun head!15690 (List!73241) C!41106)

(declare-fun tail!15230 (List!73241) List!73241)

(assert (=> b!7632295 (= e!4537396 (matchR!9893 (derivativeStep!5890 r!14126 (head!15690 s!9605)) (tail!15230 s!9605)))))

(declare-fun b!7632296 () Bool)

(declare-fun e!4537400 () Bool)

(declare-fun e!4537401 () Bool)

(assert (=> b!7632296 (= e!4537400 e!4537401)))

(declare-fun res!3056599 () Bool)

(assert (=> b!7632296 (=> res!3056599 e!4537401)))

(assert (=> b!7632296 (= res!3056599 call!700646)))

(declare-fun b!7632297 () Bool)

(assert (=> b!7632297 (= e!4537401 (not (= (head!15690 s!9605) (c!1406044 r!14126))))))

(declare-fun d!2324275 () Bool)

(declare-fun e!4537398 () Bool)

(assert (=> d!2324275 e!4537398))

(declare-fun c!1406069 () Bool)

(assert (=> d!2324275 (= c!1406069 (is-EmptyExpr!20390 r!14126))))

(declare-fun lt!2658971 () Bool)

(assert (=> d!2324275 (= lt!2658971 e!4537396)))

(declare-fun c!1406068 () Bool)

(assert (=> d!2324275 (= c!1406068 (isEmpty!41748 s!9605))))

(assert (=> d!2324275 (validRegex!10808 r!14126)))

(assert (=> d!2324275 (= (matchR!9893 r!14126 s!9605) lt!2658971)))

(declare-fun b!7632298 () Bool)

(declare-fun e!4537395 () Bool)

(assert (=> b!7632298 (= e!4537395 e!4537400)))

(declare-fun res!3056601 () Bool)

(assert (=> b!7632298 (=> (not res!3056601) (not e!4537400))))

(assert (=> b!7632298 (= res!3056601 (not lt!2658971))))

(declare-fun b!7632299 () Bool)

(declare-fun e!4537399 () Bool)

(assert (=> b!7632299 (= e!4537399 (not lt!2658971))))

(declare-fun b!7632300 () Bool)

(declare-fun e!4537397 () Bool)

(assert (=> b!7632300 (= e!4537397 (= (head!15690 s!9605) (c!1406044 r!14126)))))

(declare-fun b!7632301 () Bool)

(declare-fun res!3056598 () Bool)

(assert (=> b!7632301 (=> res!3056598 e!4537395)))

(assert (=> b!7632301 (= res!3056598 (not (is-ElementMatch!20390 r!14126)))))

(assert (=> b!7632301 (= e!4537399 e!4537395)))

(declare-fun b!7632302 () Bool)

(assert (=> b!7632302 (= e!4537396 (nullable!8917 r!14126))))

(declare-fun b!7632303 () Bool)

(declare-fun res!3056604 () Bool)

(assert (=> b!7632303 (=> res!3056604 e!4537395)))

(assert (=> b!7632303 (= res!3056604 e!4537397)))

(declare-fun res!3056602 () Bool)

(assert (=> b!7632303 (=> (not res!3056602) (not e!4537397))))

(assert (=> b!7632303 (= res!3056602 lt!2658971)))

(declare-fun b!7632304 () Bool)

(declare-fun res!3056600 () Bool)

(assert (=> b!7632304 (=> res!3056600 e!4537401)))

(assert (=> b!7632304 (= res!3056600 (not (isEmpty!41748 (tail!15230 s!9605))))))

(declare-fun b!7632305 () Bool)

(assert (=> b!7632305 (= e!4537398 (= lt!2658971 call!700646))))

(declare-fun b!7632306 () Bool)

(declare-fun res!3056603 () Bool)

(assert (=> b!7632306 (=> (not res!3056603) (not e!4537397))))

(assert (=> b!7632306 (= res!3056603 (not call!700646))))

(declare-fun b!7632307 () Bool)

(declare-fun res!3056605 () Bool)

(assert (=> b!7632307 (=> (not res!3056605) (not e!4537397))))

(assert (=> b!7632307 (= res!3056605 (isEmpty!41748 (tail!15230 s!9605)))))

(declare-fun b!7632308 () Bool)

(assert (=> b!7632308 (= e!4537398 e!4537399)))

(declare-fun c!1406067 () Bool)

(assert (=> b!7632308 (= c!1406067 (is-EmptyLang!20390 r!14126))))

(assert (= (and d!2324275 c!1406068) b!7632302))

(assert (= (and d!2324275 (not c!1406068)) b!7632295))

(assert (= (and d!2324275 c!1406069) b!7632305))

(assert (= (and d!2324275 (not c!1406069)) b!7632308))

(assert (= (and b!7632308 c!1406067) b!7632299))

(assert (= (and b!7632308 (not c!1406067)) b!7632301))

(assert (= (and b!7632301 (not res!3056598)) b!7632303))

(assert (= (and b!7632303 res!3056602) b!7632306))

(assert (= (and b!7632306 res!3056603) b!7632307))

(assert (= (and b!7632307 res!3056605) b!7632300))

(assert (= (and b!7632303 (not res!3056604)) b!7632298))

(assert (= (and b!7632298 res!3056601) b!7632296))

(assert (= (and b!7632296 (not res!3056599)) b!7632304))

(assert (= (and b!7632304 (not res!3056600)) b!7632297))

(assert (= (or b!7632305 b!7632296 b!7632306) bm!700641))

(declare-fun m!8158604 () Bool)

(assert (=> b!7632304 m!8158604))

(assert (=> b!7632304 m!8158604))

(declare-fun m!8158606 () Bool)

(assert (=> b!7632304 m!8158606))

(assert (=> b!7632307 m!8158604))

(assert (=> b!7632307 m!8158604))

(assert (=> b!7632307 m!8158606))

(declare-fun m!8158608 () Bool)

(assert (=> bm!700641 m!8158608))

(declare-fun m!8158610 () Bool)

(assert (=> b!7632297 m!8158610))

(declare-fun m!8158612 () Bool)

(assert (=> b!7632302 m!8158612))

(assert (=> d!2324275 m!8158608))

(assert (=> d!2324275 m!8158548))

(assert (=> b!7632300 m!8158610))

(assert (=> b!7632295 m!8158610))

(assert (=> b!7632295 m!8158610))

(declare-fun m!8158614 () Bool)

(assert (=> b!7632295 m!8158614))

(assert (=> b!7632295 m!8158604))

(assert (=> b!7632295 m!8158614))

(assert (=> b!7632295 m!8158604))

(declare-fun m!8158616 () Bool)

(assert (=> b!7632295 m!8158616))

(assert (=> b!7632144 d!2324275))

(declare-fun bs!1944067 () Bool)

(declare-fun d!2324277 () Bool)

(assert (= bs!1944067 (and d!2324277 b!7632144)))

(declare-fun lambda!469138 () Int)

(assert (=> bs!1944067 (= lambda!469138 lambda!469132)))

(assert (=> d!2324277 true))

(assert (=> d!2324277 true))

(assert (=> d!2324277 true))

(assert (=> d!2324277 (= (isDefined!14079 (findConcatSeparation!3493 (regOne!41292 r!14126) (regTwo!41292 r!14126) Nil!73117 s!9605 s!9605)) (Exists!4544 lambda!469138))))

(declare-fun lt!2658975 () Unit!167712)

(declare-fun choose!58919 (Regex!20390 Regex!20390 List!73241) Unit!167712)

(assert (=> d!2324277 (= lt!2658975 (choose!58919 (regOne!41292 r!14126) (regTwo!41292 r!14126) s!9605))))

(assert (=> d!2324277 (validRegex!10808 (regOne!41292 r!14126))))

(assert (=> d!2324277 (= (lemmaFindConcatSeparationEquivalentToExists!3251 (regOne!41292 r!14126) (regTwo!41292 r!14126) s!9605) lt!2658975)))

(declare-fun bs!1944068 () Bool)

(assert (= bs!1944068 d!2324277))

(assert (=> bs!1944068 m!8158552))

(declare-fun m!8158618 () Bool)

(assert (=> bs!1944068 m!8158618))

(declare-fun m!8158620 () Bool)

(assert (=> bs!1944068 m!8158620))

(declare-fun m!8158622 () Bool)

(assert (=> bs!1944068 m!8158622))

(assert (=> bs!1944068 m!8158552))

(declare-fun m!8158624 () Bool)

(assert (=> bs!1944068 m!8158624))

(assert (=> b!7632144 d!2324277))

(declare-fun d!2324279 () Bool)

(declare-fun isEmpty!41749 (Option!17463) Bool)

(assert (=> d!2324279 (= (isDefined!14079 lt!2658944) (not (isEmpty!41749 lt!2658944)))))

(declare-fun bs!1944069 () Bool)

(assert (= bs!1944069 d!2324279))

(declare-fun m!8158638 () Bool)

(assert (=> bs!1944069 m!8158638))

(assert (=> b!7632144 d!2324279))

(declare-fun b!7632357 () Bool)

(declare-fun e!4537427 () Bool)

(declare-fun lt!2658987 () Option!17463)

(assert (=> b!7632357 (= e!4537427 (not (isDefined!14079 lt!2658987)))))

(declare-fun b!7632359 () Bool)

(declare-fun e!4537431 () Bool)

(assert (=> b!7632359 (= e!4537431 (matchR!9893 (regTwo!41292 r!14126) s!9605))))

(declare-fun b!7632360 () Bool)

(declare-fun e!4537428 () Option!17463)

(declare-fun e!4537430 () Option!17463)

(assert (=> b!7632360 (= e!4537428 e!4537430)))

(declare-fun c!1406081 () Bool)

(assert (=> b!7632360 (= c!1406081 (is-Nil!73117 s!9605))))

(declare-fun b!7632361 () Bool)

(declare-fun res!3056638 () Bool)

(declare-fun e!4537429 () Bool)

(assert (=> b!7632361 (=> (not res!3056638) (not e!4537429))))

(assert (=> b!7632361 (= res!3056638 (matchR!9893 (regOne!41292 r!14126) (_1!37972 (get!25850 lt!2658987))))))

(declare-fun b!7632362 () Bool)

(declare-fun res!3056634 () Bool)

(assert (=> b!7632362 (=> (not res!3056634) (not e!4537429))))

(assert (=> b!7632362 (= res!3056634 (matchR!9893 (regTwo!41292 r!14126) (_2!37972 (get!25850 lt!2658987))))))

(declare-fun b!7632363 () Bool)

(assert (=> b!7632363 (= e!4537430 None!17462)))

(declare-fun d!2324281 () Bool)

(assert (=> d!2324281 e!4537427))

(declare-fun res!3056635 () Bool)

(assert (=> d!2324281 (=> res!3056635 e!4537427)))

(assert (=> d!2324281 (= res!3056635 e!4537429)))

(declare-fun res!3056636 () Bool)

(assert (=> d!2324281 (=> (not res!3056636) (not e!4537429))))

(assert (=> d!2324281 (= res!3056636 (isDefined!14079 lt!2658987))))

(assert (=> d!2324281 (= lt!2658987 e!4537428)))

(declare-fun c!1406080 () Bool)

(assert (=> d!2324281 (= c!1406080 e!4537431)))

(declare-fun res!3056637 () Bool)

(assert (=> d!2324281 (=> (not res!3056637) (not e!4537431))))

(assert (=> d!2324281 (= res!3056637 (matchR!9893 (regOne!41292 r!14126) Nil!73117))))

(assert (=> d!2324281 (validRegex!10808 (regOne!41292 r!14126))))

(assert (=> d!2324281 (= (findConcatSeparation!3493 (regOne!41292 r!14126) (regTwo!41292 r!14126) Nil!73117 s!9605 s!9605) lt!2658987)))

(declare-fun b!7632358 () Bool)

(declare-fun lt!2658986 () Unit!167712)

(declare-fun lt!2658985 () Unit!167712)

(assert (=> b!7632358 (= lt!2658986 lt!2658985)))

(assert (=> b!7632358 (= (++!17670 (++!17670 Nil!73117 (Cons!73117 (h!79565 s!9605) Nil!73117)) (t!387976 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3245 (List!73241 C!41106 List!73241 List!73241) Unit!167712)

(assert (=> b!7632358 (= lt!2658985 (lemmaMoveElementToOtherListKeepsConcatEq!3245 Nil!73117 (h!79565 s!9605) (t!387976 s!9605) s!9605))))

(assert (=> b!7632358 (= e!4537430 (findConcatSeparation!3493 (regOne!41292 r!14126) (regTwo!41292 r!14126) (++!17670 Nil!73117 (Cons!73117 (h!79565 s!9605) Nil!73117)) (t!387976 s!9605) s!9605))))

(declare-fun b!7632364 () Bool)

(assert (=> b!7632364 (= e!4537428 (Some!17462 (tuple2!69339 Nil!73117 s!9605)))))

(declare-fun b!7632365 () Bool)

(assert (=> b!7632365 (= e!4537429 (= (++!17670 (_1!37972 (get!25850 lt!2658987)) (_2!37972 (get!25850 lt!2658987))) s!9605))))

(assert (= (and d!2324281 res!3056637) b!7632359))

(assert (= (and d!2324281 c!1406080) b!7632364))

(assert (= (and d!2324281 (not c!1406080)) b!7632360))

(assert (= (and b!7632360 c!1406081) b!7632363))

(assert (= (and b!7632360 (not c!1406081)) b!7632358))

(assert (= (and d!2324281 res!3056636) b!7632361))

(assert (= (and b!7632361 res!3056638) b!7632362))

(assert (= (and b!7632362 res!3056634) b!7632365))

(assert (= (and d!2324281 (not res!3056635)) b!7632357))

(declare-fun m!8158658 () Bool)

(assert (=> d!2324281 m!8158658))

(declare-fun m!8158660 () Bool)

(assert (=> d!2324281 m!8158660))

(assert (=> d!2324281 m!8158620))

(declare-fun m!8158662 () Bool)

(assert (=> b!7632361 m!8158662))

(declare-fun m!8158664 () Bool)

(assert (=> b!7632361 m!8158664))

(declare-fun m!8158666 () Bool)

(assert (=> b!7632359 m!8158666))

(declare-fun m!8158668 () Bool)

(assert (=> b!7632358 m!8158668))

(assert (=> b!7632358 m!8158668))

(declare-fun m!8158670 () Bool)

(assert (=> b!7632358 m!8158670))

(declare-fun m!8158672 () Bool)

(assert (=> b!7632358 m!8158672))

(assert (=> b!7632358 m!8158668))

(declare-fun m!8158674 () Bool)

(assert (=> b!7632358 m!8158674))

(assert (=> b!7632365 m!8158662))

(declare-fun m!8158676 () Bool)

(assert (=> b!7632365 m!8158676))

(assert (=> b!7632362 m!8158662))

(declare-fun m!8158678 () Bool)

(assert (=> b!7632362 m!8158678))

(assert (=> b!7632357 m!8158658))

(assert (=> b!7632144 d!2324281))

(declare-fun d!2324287 () Bool)

(declare-fun choose!58920 (Int) Bool)

(assert (=> d!2324287 (= (Exists!4544 lambda!469132) (choose!58920 lambda!469132))))

(declare-fun bs!1944070 () Bool)

(assert (= bs!1944070 d!2324287))

(declare-fun m!8158680 () Bool)

(assert (=> bs!1944070 m!8158680))

(assert (=> b!7632144 d!2324287))

(declare-fun d!2324289 () Bool)

(assert (=> d!2324289 (= (get!25850 lt!2658944) (v!54597 lt!2658944))))

(assert (=> b!7632143 d!2324289))

(declare-fun d!2324291 () Bool)

(assert (=> d!2324291 (matchR!9893 (Concat!29235 (regOne!41292 r!14126) (regTwo!41292 r!14126)) (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945)))))

(declare-fun lt!2658990 () Unit!167712)

(declare-fun choose!58921 (Regex!20390 Regex!20390 List!73241 List!73241 List!73241) Unit!167712)

(assert (=> d!2324291 (= lt!2658990 (choose!58921 (regOne!41292 r!14126) (regTwo!41292 r!14126) (_1!37972 lt!2658945) (_2!37972 lt!2658945) s!9605))))

(assert (=> d!2324291 (validRegex!10808 (regOne!41292 r!14126))))

(assert (=> d!2324291 (= (lemmaFindSeparationIsDefinedThenConcatMatches!147 (regOne!41292 r!14126) (regTwo!41292 r!14126) (_1!37972 lt!2658945) (_2!37972 lt!2658945) s!9605) lt!2658990)))

(declare-fun bs!1944071 () Bool)

(assert (= bs!1944071 d!2324291))

(assert (=> bs!1944071 m!8158566))

(assert (=> bs!1944071 m!8158566))

(declare-fun m!8158682 () Bool)

(assert (=> bs!1944071 m!8158682))

(declare-fun m!8158684 () Bool)

(assert (=> bs!1944071 m!8158684))

(assert (=> bs!1944071 m!8158620))

(assert (=> b!7632143 d!2324291))

(declare-fun bm!700649 () Bool)

(declare-fun call!700654 () Bool)

(assert (=> bm!700649 (= call!700654 (isEmpty!41748 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))))))

(declare-fun b!7632384 () Bool)

(declare-fun e!4537447 () Bool)

(assert (=> b!7632384 (= e!4537447 (matchR!9893 (derivativeStep!5890 r!14126 (head!15690 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945)))) (tail!15230 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945)))))))

(declare-fun b!7632385 () Bool)

(declare-fun e!4537451 () Bool)

(declare-fun e!4537452 () Bool)

(assert (=> b!7632385 (= e!4537451 e!4537452)))

(declare-fun res!3056650 () Bool)

(assert (=> b!7632385 (=> res!3056650 e!4537452)))

(assert (=> b!7632385 (= res!3056650 call!700654)))

(declare-fun b!7632386 () Bool)

(assert (=> b!7632386 (= e!4537452 (not (= (head!15690 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))) (c!1406044 r!14126))))))

(declare-fun d!2324293 () Bool)

(declare-fun e!4537449 () Bool)

(assert (=> d!2324293 e!4537449))

(declare-fun c!1406088 () Bool)

(assert (=> d!2324293 (= c!1406088 (is-EmptyExpr!20390 r!14126))))

(declare-fun lt!2658991 () Bool)

(assert (=> d!2324293 (= lt!2658991 e!4537447)))

(declare-fun c!1406087 () Bool)

(assert (=> d!2324293 (= c!1406087 (isEmpty!41748 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))))))

(assert (=> d!2324293 (validRegex!10808 r!14126)))

(assert (=> d!2324293 (= (matchR!9893 r!14126 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))) lt!2658991)))

(declare-fun b!7632387 () Bool)

(declare-fun e!4537446 () Bool)

(assert (=> b!7632387 (= e!4537446 e!4537451)))

(declare-fun res!3056652 () Bool)

(assert (=> b!7632387 (=> (not res!3056652) (not e!4537451))))

(assert (=> b!7632387 (= res!3056652 (not lt!2658991))))

(declare-fun b!7632388 () Bool)

(declare-fun e!4537450 () Bool)

(assert (=> b!7632388 (= e!4537450 (not lt!2658991))))

(declare-fun b!7632389 () Bool)

(declare-fun e!4537448 () Bool)

(assert (=> b!7632389 (= e!4537448 (= (head!15690 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))) (c!1406044 r!14126)))))

(declare-fun b!7632390 () Bool)

(declare-fun res!3056649 () Bool)

(assert (=> b!7632390 (=> res!3056649 e!4537446)))

(assert (=> b!7632390 (= res!3056649 (not (is-ElementMatch!20390 r!14126)))))

(assert (=> b!7632390 (= e!4537450 e!4537446)))

(declare-fun b!7632391 () Bool)

(assert (=> b!7632391 (= e!4537447 (nullable!8917 r!14126))))

(declare-fun b!7632392 () Bool)

(declare-fun res!3056655 () Bool)

(assert (=> b!7632392 (=> res!3056655 e!4537446)))

(assert (=> b!7632392 (= res!3056655 e!4537448)))

(declare-fun res!3056653 () Bool)

(assert (=> b!7632392 (=> (not res!3056653) (not e!4537448))))

(assert (=> b!7632392 (= res!3056653 lt!2658991)))

(declare-fun b!7632393 () Bool)

(declare-fun res!3056651 () Bool)

(assert (=> b!7632393 (=> res!3056651 e!4537452)))

(assert (=> b!7632393 (= res!3056651 (not (isEmpty!41748 (tail!15230 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945))))))))

(declare-fun b!7632394 () Bool)

(assert (=> b!7632394 (= e!4537449 (= lt!2658991 call!700654))))

(declare-fun b!7632395 () Bool)

(declare-fun res!3056654 () Bool)

(assert (=> b!7632395 (=> (not res!3056654) (not e!4537448))))

(assert (=> b!7632395 (= res!3056654 (not call!700654))))

(declare-fun b!7632396 () Bool)

(declare-fun res!3056656 () Bool)

(assert (=> b!7632396 (=> (not res!3056656) (not e!4537448))))

(assert (=> b!7632396 (= res!3056656 (isEmpty!41748 (tail!15230 (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945)))))))

(declare-fun b!7632397 () Bool)

(assert (=> b!7632397 (= e!4537449 e!4537450)))

(declare-fun c!1406086 () Bool)

(assert (=> b!7632397 (= c!1406086 (is-EmptyLang!20390 r!14126))))

(assert (= (and d!2324293 c!1406087) b!7632391))

(assert (= (and d!2324293 (not c!1406087)) b!7632384))

(assert (= (and d!2324293 c!1406088) b!7632394))

(assert (= (and d!2324293 (not c!1406088)) b!7632397))

(assert (= (and b!7632397 c!1406086) b!7632388))

(assert (= (and b!7632397 (not c!1406086)) b!7632390))

(assert (= (and b!7632390 (not res!3056649)) b!7632392))

(assert (= (and b!7632392 res!3056653) b!7632395))

(assert (= (and b!7632395 res!3056654) b!7632396))

(assert (= (and b!7632396 res!3056656) b!7632389))

(assert (= (and b!7632392 (not res!3056655)) b!7632387))

(assert (= (and b!7632387 res!3056652) b!7632385))

(assert (= (and b!7632385 (not res!3056650)) b!7632393))

(assert (= (and b!7632393 (not res!3056651)) b!7632386))

(assert (= (or b!7632394 b!7632385 b!7632395) bm!700649))

(assert (=> b!7632393 m!8158566))

(declare-fun m!8158686 () Bool)

(assert (=> b!7632393 m!8158686))

(assert (=> b!7632393 m!8158686))

(declare-fun m!8158688 () Bool)

(assert (=> b!7632393 m!8158688))

(assert (=> b!7632396 m!8158566))

(assert (=> b!7632396 m!8158686))

(assert (=> b!7632396 m!8158686))

(assert (=> b!7632396 m!8158688))

(assert (=> bm!700649 m!8158566))

(declare-fun m!8158690 () Bool)

(assert (=> bm!700649 m!8158690))

(assert (=> b!7632386 m!8158566))

(declare-fun m!8158692 () Bool)

(assert (=> b!7632386 m!8158692))

(assert (=> b!7632391 m!8158612))

(assert (=> d!2324293 m!8158566))

(assert (=> d!2324293 m!8158690))

(assert (=> d!2324293 m!8158548))

(assert (=> b!7632389 m!8158566))

(assert (=> b!7632389 m!8158692))

(assert (=> b!7632384 m!8158566))

(assert (=> b!7632384 m!8158692))

(assert (=> b!7632384 m!8158692))

(declare-fun m!8158694 () Bool)

(assert (=> b!7632384 m!8158694))

(assert (=> b!7632384 m!8158566))

(assert (=> b!7632384 m!8158686))

(assert (=> b!7632384 m!8158694))

(assert (=> b!7632384 m!8158686))

(declare-fun m!8158696 () Bool)

(assert (=> b!7632384 m!8158696))

(assert (=> b!7632143 d!2324293))

(declare-fun b!7632418 () Bool)

(declare-fun e!4537465 () Bool)

(declare-fun lt!2658994 () List!73241)

(assert (=> b!7632418 (= e!4537465 (or (not (= (_2!37972 lt!2658945) Nil!73117)) (= lt!2658994 (_1!37972 lt!2658945))))))

(declare-fun b!7632417 () Bool)

(declare-fun res!3056666 () Bool)

(assert (=> b!7632417 (=> (not res!3056666) (not e!4537465))))

(declare-fun size!42566 (List!73241) Int)

(assert (=> b!7632417 (= res!3056666 (= (size!42566 lt!2658994) (+ (size!42566 (_1!37972 lt!2658945)) (size!42566 (_2!37972 lt!2658945)))))))

(declare-fun b!7632415 () Bool)

(declare-fun e!4537464 () List!73241)

(assert (=> b!7632415 (= e!4537464 (_2!37972 lt!2658945))))

(declare-fun b!7632416 () Bool)

(assert (=> b!7632416 (= e!4537464 (Cons!73117 (h!79565 (_1!37972 lt!2658945)) (++!17670 (t!387976 (_1!37972 lt!2658945)) (_2!37972 lt!2658945))))))

(declare-fun d!2324295 () Bool)

(assert (=> d!2324295 e!4537465))

(declare-fun res!3056667 () Bool)

(assert (=> d!2324295 (=> (not res!3056667) (not e!4537465))))

(declare-fun content!15473 (List!73241) (Set C!41106))

(assert (=> d!2324295 (= res!3056667 (= (content!15473 lt!2658994) (set.union (content!15473 (_1!37972 lt!2658945)) (content!15473 (_2!37972 lt!2658945)))))))

(assert (=> d!2324295 (= lt!2658994 e!4537464)))

(declare-fun c!1406093 () Bool)

(assert (=> d!2324295 (= c!1406093 (is-Nil!73117 (_1!37972 lt!2658945)))))

(assert (=> d!2324295 (= (++!17670 (_1!37972 lt!2658945) (_2!37972 lt!2658945)) lt!2658994)))

(assert (= (and d!2324295 c!1406093) b!7632415))

(assert (= (and d!2324295 (not c!1406093)) b!7632416))

(assert (= (and d!2324295 res!3056667) b!7632417))

(assert (= (and b!7632417 res!3056666) b!7632418))

(declare-fun m!8158700 () Bool)

(assert (=> b!7632417 m!8158700))

(declare-fun m!8158702 () Bool)

(assert (=> b!7632417 m!8158702))

(declare-fun m!8158706 () Bool)

(assert (=> b!7632417 m!8158706))

(declare-fun m!8158708 () Bool)

(assert (=> b!7632416 m!8158708))

(declare-fun m!8158712 () Bool)

(assert (=> d!2324295 m!8158712))

(declare-fun m!8158714 () Bool)

(assert (=> d!2324295 m!8158714))

(declare-fun m!8158716 () Bool)

(assert (=> d!2324295 m!8158716))

(assert (=> b!7632143 d!2324295))

(declare-fun b!7632419 () Bool)

(declare-fun res!3056671 () Bool)

(declare-fun e!4537468 () Bool)

(assert (=> b!7632419 (=> (not res!3056671) (not e!4537468))))

(declare-fun call!700660 () Bool)

(assert (=> b!7632419 (= res!3056671 call!700660)))

(declare-fun e!4537473 () Bool)

(assert (=> b!7632419 (= e!4537473 e!4537468)))

(declare-fun call!700658 () Bool)

(declare-fun bm!700653 () Bool)

(declare-fun c!1406095 () Bool)

(declare-fun c!1406094 () Bool)

(assert (=> bm!700653 (= call!700658 (validRegex!10808 (ite c!1406095 (reg!20719 (regTwo!41292 r!14126)) (ite c!1406094 (regOne!41293 (regTwo!41292 r!14126)) (regOne!41292 (regTwo!41292 r!14126))))))))

(declare-fun b!7632420 () Bool)

(declare-fun e!4537474 () Bool)

(assert (=> b!7632420 (= e!4537474 e!4537473)))

(assert (=> b!7632420 (= c!1406094 (is-Union!20390 (regTwo!41292 r!14126)))))

(declare-fun bm!700654 () Bool)

(declare-fun call!700659 () Bool)

(assert (=> bm!700654 (= call!700659 (validRegex!10808 (ite c!1406094 (regTwo!41293 (regTwo!41292 r!14126)) (regTwo!41292 (regTwo!41292 r!14126)))))))

(declare-fun b!7632421 () Bool)

(declare-fun e!4537469 () Bool)

(declare-fun e!4537466 () Bool)

(assert (=> b!7632421 (= e!4537469 e!4537466)))

(declare-fun res!3056672 () Bool)

(assert (=> b!7632421 (=> (not res!3056672) (not e!4537466))))

(assert (=> b!7632421 (= res!3056672 call!700660)))

(declare-fun b!7632422 () Bool)

(assert (=> b!7632422 (= e!4537468 call!700659)))

(declare-fun bm!700655 () Bool)

(assert (=> bm!700655 (= call!700660 call!700658)))

(declare-fun b!7632423 () Bool)

(declare-fun e!4537472 () Bool)

(assert (=> b!7632423 (= e!4537474 e!4537472)))

(declare-fun res!3056670 () Bool)

(assert (=> b!7632423 (= res!3056670 (not (nullable!8917 (reg!20719 (regTwo!41292 r!14126)))))))

(assert (=> b!7632423 (=> (not res!3056670) (not e!4537472))))

(declare-fun b!7632424 () Bool)

(declare-fun e!4537467 () Bool)

(assert (=> b!7632424 (= e!4537467 e!4537474)))

(assert (=> b!7632424 (= c!1406095 (is-Star!20390 (regTwo!41292 r!14126)))))

(declare-fun b!7632425 () Bool)

(declare-fun res!3056668 () Bool)

(assert (=> b!7632425 (=> res!3056668 e!4537469)))

(assert (=> b!7632425 (= res!3056668 (not (is-Concat!29235 (regTwo!41292 r!14126))))))

(assert (=> b!7632425 (= e!4537473 e!4537469)))

(declare-fun d!2324299 () Bool)

(declare-fun res!3056669 () Bool)

(assert (=> d!2324299 (=> res!3056669 e!4537467)))

(assert (=> d!2324299 (= res!3056669 (is-ElementMatch!20390 (regTwo!41292 r!14126)))))

(assert (=> d!2324299 (= (validRegex!10808 (regTwo!41292 r!14126)) e!4537467)))

(declare-fun b!7632426 () Bool)

(assert (=> b!7632426 (= e!4537466 call!700659)))

(declare-fun b!7632427 () Bool)

(assert (=> b!7632427 (= e!4537472 call!700658)))

(assert (= (and d!2324299 (not res!3056669)) b!7632424))

(assert (= (and b!7632424 c!1406095) b!7632423))

(assert (= (and b!7632424 (not c!1406095)) b!7632420))

(assert (= (and b!7632423 res!3056670) b!7632427))

(assert (= (and b!7632420 c!1406094) b!7632419))

(assert (= (and b!7632420 (not c!1406094)) b!7632425))

(assert (= (and b!7632419 res!3056671) b!7632422))

(assert (= (and b!7632425 (not res!3056668)) b!7632421))

(assert (= (and b!7632421 res!3056672) b!7632426))

(assert (= (or b!7632419 b!7632421) bm!700655))

(assert (= (or b!7632422 b!7632426) bm!700654))

(assert (= (or b!7632427 bm!700655) bm!700653))

(declare-fun m!8158718 () Bool)

(assert (=> bm!700653 m!8158718))

(declare-fun m!8158720 () Bool)

(assert (=> bm!700654 m!8158720))

(declare-fun m!8158722 () Bool)

(assert (=> b!7632423 m!8158722))

(assert (=> b!7632153 d!2324299))

(declare-fun b!7632440 () Bool)

(declare-fun e!4537481 () Bool)

(declare-fun lt!2658995 () List!73241)

(assert (=> b!7632440 (= e!4537481 (or (not (= (_2!37972 cut!17) Nil!73117)) (= lt!2658995 (_1!37972 cut!17))))))

(declare-fun b!7632439 () Bool)

(declare-fun res!3056678 () Bool)

(assert (=> b!7632439 (=> (not res!3056678) (not e!4537481))))

(assert (=> b!7632439 (= res!3056678 (= (size!42566 lt!2658995) (+ (size!42566 (_1!37972 cut!17)) (size!42566 (_2!37972 cut!17)))))))

(declare-fun b!7632437 () Bool)

(declare-fun e!4537480 () List!73241)

(assert (=> b!7632437 (= e!4537480 (_2!37972 cut!17))))

(declare-fun b!7632438 () Bool)

(assert (=> b!7632438 (= e!4537480 (Cons!73117 (h!79565 (_1!37972 cut!17)) (++!17670 (t!387976 (_1!37972 cut!17)) (_2!37972 cut!17))))))

(declare-fun d!2324301 () Bool)

(assert (=> d!2324301 e!4537481))

(declare-fun res!3056679 () Bool)

(assert (=> d!2324301 (=> (not res!3056679) (not e!4537481))))

(assert (=> d!2324301 (= res!3056679 (= (content!15473 lt!2658995) (set.union (content!15473 (_1!37972 cut!17)) (content!15473 (_2!37972 cut!17)))))))

(assert (=> d!2324301 (= lt!2658995 e!4537480)))

(declare-fun c!1406098 () Bool)

(assert (=> d!2324301 (= c!1406098 (is-Nil!73117 (_1!37972 cut!17)))))

(assert (=> d!2324301 (= (++!17670 (_1!37972 cut!17) (_2!37972 cut!17)) lt!2658995)))

(assert (= (and d!2324301 c!1406098) b!7632437))

(assert (= (and d!2324301 (not c!1406098)) b!7632438))

(assert (= (and d!2324301 res!3056679) b!7632439))

(assert (= (and b!7632439 res!3056678) b!7632440))

(declare-fun m!8158724 () Bool)

(assert (=> b!7632439 m!8158724))

(declare-fun m!8158726 () Bool)

(assert (=> b!7632439 m!8158726))

(declare-fun m!8158728 () Bool)

(assert (=> b!7632439 m!8158728))

(declare-fun m!8158730 () Bool)

(assert (=> b!7632438 m!8158730))

(declare-fun m!8158732 () Bool)

(assert (=> d!2324301 m!8158732))

(declare-fun m!8158734 () Bool)

(assert (=> d!2324301 m!8158734))

(declare-fun m!8158736 () Bool)

(assert (=> d!2324301 m!8158736))

(assert (=> b!7632142 d!2324301))

(declare-fun bm!700659 () Bool)

(declare-fun call!700664 () Bool)

(assert (=> bm!700659 (= call!700664 (isEmpty!41748 (_1!37972 cut!17)))))

(declare-fun b!7632441 () Bool)

(declare-fun e!4537483 () Bool)

(assert (=> b!7632441 (= e!4537483 (matchR!9893 (derivativeStep!5890 (regOne!41292 r!14126) (head!15690 (_1!37972 cut!17))) (tail!15230 (_1!37972 cut!17))))))

(declare-fun b!7632442 () Bool)

(declare-fun e!4537487 () Bool)

(declare-fun e!4537488 () Bool)

(assert (=> b!7632442 (= e!4537487 e!4537488)))

(declare-fun res!3056681 () Bool)

(assert (=> b!7632442 (=> res!3056681 e!4537488)))

(assert (=> b!7632442 (= res!3056681 call!700664)))

(declare-fun b!7632443 () Bool)

(assert (=> b!7632443 (= e!4537488 (not (= (head!15690 (_1!37972 cut!17)) (c!1406044 (regOne!41292 r!14126)))))))

(declare-fun d!2324303 () Bool)

(declare-fun e!4537485 () Bool)

(assert (=> d!2324303 e!4537485))

(declare-fun c!1406101 () Bool)

(assert (=> d!2324303 (= c!1406101 (is-EmptyExpr!20390 (regOne!41292 r!14126)))))

(declare-fun lt!2658996 () Bool)

(assert (=> d!2324303 (= lt!2658996 e!4537483)))

(declare-fun c!1406100 () Bool)

(assert (=> d!2324303 (= c!1406100 (isEmpty!41748 (_1!37972 cut!17)))))

(assert (=> d!2324303 (validRegex!10808 (regOne!41292 r!14126))))

(assert (=> d!2324303 (= (matchR!9893 (regOne!41292 r!14126) (_1!37972 cut!17)) lt!2658996)))

(declare-fun b!7632444 () Bool)

(declare-fun e!4537482 () Bool)

(assert (=> b!7632444 (= e!4537482 e!4537487)))

(declare-fun res!3056683 () Bool)

(assert (=> b!7632444 (=> (not res!3056683) (not e!4537487))))

(assert (=> b!7632444 (= res!3056683 (not lt!2658996))))

(declare-fun b!7632445 () Bool)

(declare-fun e!4537486 () Bool)

(assert (=> b!7632445 (= e!4537486 (not lt!2658996))))

(declare-fun b!7632446 () Bool)

(declare-fun e!4537484 () Bool)

(assert (=> b!7632446 (= e!4537484 (= (head!15690 (_1!37972 cut!17)) (c!1406044 (regOne!41292 r!14126))))))

(declare-fun b!7632447 () Bool)

(declare-fun res!3056680 () Bool)

(assert (=> b!7632447 (=> res!3056680 e!4537482)))

(assert (=> b!7632447 (= res!3056680 (not (is-ElementMatch!20390 (regOne!41292 r!14126))))))

(assert (=> b!7632447 (= e!4537486 e!4537482)))

(declare-fun b!7632448 () Bool)

(assert (=> b!7632448 (= e!4537483 (nullable!8917 (regOne!41292 r!14126)))))

(declare-fun b!7632449 () Bool)

(declare-fun res!3056686 () Bool)

(assert (=> b!7632449 (=> res!3056686 e!4537482)))

(assert (=> b!7632449 (= res!3056686 e!4537484)))

(declare-fun res!3056684 () Bool)

(assert (=> b!7632449 (=> (not res!3056684) (not e!4537484))))

(assert (=> b!7632449 (= res!3056684 lt!2658996)))

(declare-fun b!7632450 () Bool)

(declare-fun res!3056682 () Bool)

(assert (=> b!7632450 (=> res!3056682 e!4537488)))

(assert (=> b!7632450 (= res!3056682 (not (isEmpty!41748 (tail!15230 (_1!37972 cut!17)))))))

(declare-fun b!7632451 () Bool)

(assert (=> b!7632451 (= e!4537485 (= lt!2658996 call!700664))))

(declare-fun b!7632452 () Bool)

(declare-fun res!3056685 () Bool)

(assert (=> b!7632452 (=> (not res!3056685) (not e!4537484))))

(assert (=> b!7632452 (= res!3056685 (not call!700664))))

(declare-fun b!7632453 () Bool)

(declare-fun res!3056687 () Bool)

(assert (=> b!7632453 (=> (not res!3056687) (not e!4537484))))

(assert (=> b!7632453 (= res!3056687 (isEmpty!41748 (tail!15230 (_1!37972 cut!17))))))

(declare-fun b!7632454 () Bool)

(assert (=> b!7632454 (= e!4537485 e!4537486)))

(declare-fun c!1406099 () Bool)

(assert (=> b!7632454 (= c!1406099 (is-EmptyLang!20390 (regOne!41292 r!14126)))))

(assert (= (and d!2324303 c!1406100) b!7632448))

(assert (= (and d!2324303 (not c!1406100)) b!7632441))

(assert (= (and d!2324303 c!1406101) b!7632451))

(assert (= (and d!2324303 (not c!1406101)) b!7632454))

(assert (= (and b!7632454 c!1406099) b!7632445))

(assert (= (and b!7632454 (not c!1406099)) b!7632447))

(assert (= (and b!7632447 (not res!3056680)) b!7632449))

(assert (= (and b!7632449 res!3056684) b!7632452))

(assert (= (and b!7632452 res!3056685) b!7632453))

(assert (= (and b!7632453 res!3056687) b!7632446))

(assert (= (and b!7632449 (not res!3056686)) b!7632444))

(assert (= (and b!7632444 res!3056683) b!7632442))

(assert (= (and b!7632442 (not res!3056681)) b!7632450))

(assert (= (and b!7632450 (not res!3056682)) b!7632443))

(assert (= (or b!7632451 b!7632442 b!7632452) bm!700659))

(declare-fun m!8158744 () Bool)

(assert (=> b!7632450 m!8158744))

(assert (=> b!7632450 m!8158744))

(declare-fun m!8158746 () Bool)

(assert (=> b!7632450 m!8158746))

(assert (=> b!7632453 m!8158744))

(assert (=> b!7632453 m!8158744))

(assert (=> b!7632453 m!8158746))

(declare-fun m!8158748 () Bool)

(assert (=> bm!700659 m!8158748))

(declare-fun m!8158750 () Bool)

(assert (=> b!7632443 m!8158750))

(declare-fun m!8158752 () Bool)

(assert (=> b!7632448 m!8158752))

(assert (=> d!2324303 m!8158748))

(assert (=> d!2324303 m!8158620))

(assert (=> b!7632446 m!8158750))

(assert (=> b!7632441 m!8158750))

(assert (=> b!7632441 m!8158750))

(declare-fun m!8158754 () Bool)

(assert (=> b!7632441 m!8158754))

(assert (=> b!7632441 m!8158744))

(assert (=> b!7632441 m!8158754))

(assert (=> b!7632441 m!8158744))

(declare-fun m!8158756 () Bool)

(assert (=> b!7632441 m!8158756))

(assert (=> b!7632152 d!2324303))

(declare-fun b!7632473 () Bool)

(declare-fun e!4537498 () Bool)

(declare-fun tp!2228236 () Bool)

(assert (=> b!7632473 (= e!4537498 (and tp_is_empty!51135 tp!2228236))))

(assert (=> b!7632151 (= tp!2228207 e!4537498)))

(assert (= (and b!7632151 (is-Cons!73117 (t!387976 (_2!37972 cut!17)))) b!7632473))

(declare-fun b!7632486 () Bool)

(declare-fun e!4537501 () Bool)

(declare-fun tp!2228249 () Bool)

(assert (=> b!7632486 (= e!4537501 tp!2228249)))

(assert (=> b!7632145 (= tp!2228205 e!4537501)))

(declare-fun b!7632485 () Bool)

(declare-fun tp!2228250 () Bool)

(declare-fun tp!2228248 () Bool)

(assert (=> b!7632485 (= e!4537501 (and tp!2228250 tp!2228248))))

(declare-fun b!7632487 () Bool)

(declare-fun tp!2228247 () Bool)

(declare-fun tp!2228251 () Bool)

(assert (=> b!7632487 (= e!4537501 (and tp!2228247 tp!2228251))))

(declare-fun b!7632484 () Bool)

(assert (=> b!7632484 (= e!4537501 tp_is_empty!51135)))

(assert (= (and b!7632145 (is-ElementMatch!20390 (reg!20719 r!14126))) b!7632484))

(assert (= (and b!7632145 (is-Concat!29235 (reg!20719 r!14126))) b!7632485))

(assert (= (and b!7632145 (is-Star!20390 (reg!20719 r!14126))) b!7632486))

(assert (= (and b!7632145 (is-Union!20390 (reg!20719 r!14126))) b!7632487))

(declare-fun b!7632488 () Bool)

(declare-fun e!4537502 () Bool)

(declare-fun tp!2228252 () Bool)

(assert (=> b!7632488 (= e!4537502 (and tp_is_empty!51135 tp!2228252))))

(assert (=> b!7632150 (= tp!2228203 e!4537502)))

(assert (= (and b!7632150 (is-Cons!73117 (t!387976 s!9605))) b!7632488))

(declare-fun b!7632491 () Bool)

(declare-fun e!4537503 () Bool)

(declare-fun tp!2228255 () Bool)

(assert (=> b!7632491 (= e!4537503 tp!2228255)))

(assert (=> b!7632149 (= tp!2228206 e!4537503)))

(declare-fun b!7632490 () Bool)

(declare-fun tp!2228256 () Bool)

(declare-fun tp!2228254 () Bool)

(assert (=> b!7632490 (= e!4537503 (and tp!2228256 tp!2228254))))

(declare-fun b!7632492 () Bool)

(declare-fun tp!2228253 () Bool)

(declare-fun tp!2228257 () Bool)

(assert (=> b!7632492 (= e!4537503 (and tp!2228253 tp!2228257))))

(declare-fun b!7632489 () Bool)

(assert (=> b!7632489 (= e!4537503 tp_is_empty!51135)))

(assert (= (and b!7632149 (is-ElementMatch!20390 (regOne!41292 r!14126))) b!7632489))

(assert (= (and b!7632149 (is-Concat!29235 (regOne!41292 r!14126))) b!7632490))

(assert (= (and b!7632149 (is-Star!20390 (regOne!41292 r!14126))) b!7632491))

(assert (= (and b!7632149 (is-Union!20390 (regOne!41292 r!14126))) b!7632492))

(declare-fun b!7632495 () Bool)

(declare-fun e!4537504 () Bool)

(declare-fun tp!2228260 () Bool)

(assert (=> b!7632495 (= e!4537504 tp!2228260)))

(assert (=> b!7632149 (= tp!2228204 e!4537504)))

(declare-fun b!7632494 () Bool)

(declare-fun tp!2228261 () Bool)

(declare-fun tp!2228259 () Bool)

(assert (=> b!7632494 (= e!4537504 (and tp!2228261 tp!2228259))))

(declare-fun b!7632496 () Bool)

(declare-fun tp!2228258 () Bool)

(declare-fun tp!2228262 () Bool)

(assert (=> b!7632496 (= e!4537504 (and tp!2228258 tp!2228262))))

(declare-fun b!7632493 () Bool)

(assert (=> b!7632493 (= e!4537504 tp_is_empty!51135)))

(assert (= (and b!7632149 (is-ElementMatch!20390 (regTwo!41292 r!14126))) b!7632493))

(assert (= (and b!7632149 (is-Concat!29235 (regTwo!41292 r!14126))) b!7632494))

(assert (= (and b!7632149 (is-Star!20390 (regTwo!41292 r!14126))) b!7632495))

(assert (= (and b!7632149 (is-Union!20390 (regTwo!41292 r!14126))) b!7632496))

(declare-fun b!7632499 () Bool)

(declare-fun e!4537505 () Bool)

(declare-fun tp!2228265 () Bool)

(assert (=> b!7632499 (= e!4537505 tp!2228265)))

(assert (=> b!7632154 (= tp!2228209 e!4537505)))

(declare-fun b!7632498 () Bool)

(declare-fun tp!2228266 () Bool)

(declare-fun tp!2228264 () Bool)

(assert (=> b!7632498 (= e!4537505 (and tp!2228266 tp!2228264))))

(declare-fun b!7632500 () Bool)

(declare-fun tp!2228263 () Bool)

(declare-fun tp!2228267 () Bool)

(assert (=> b!7632500 (= e!4537505 (and tp!2228263 tp!2228267))))

(declare-fun b!7632497 () Bool)

(assert (=> b!7632497 (= e!4537505 tp_is_empty!51135)))

(assert (= (and b!7632154 (is-ElementMatch!20390 (regOne!41293 r!14126))) b!7632497))

(assert (= (and b!7632154 (is-Concat!29235 (regOne!41293 r!14126))) b!7632498))

(assert (= (and b!7632154 (is-Star!20390 (regOne!41293 r!14126))) b!7632499))

(assert (= (and b!7632154 (is-Union!20390 (regOne!41293 r!14126))) b!7632500))

(declare-fun b!7632503 () Bool)

(declare-fun e!4537506 () Bool)

(declare-fun tp!2228270 () Bool)

(assert (=> b!7632503 (= e!4537506 tp!2228270)))

(assert (=> b!7632154 (= tp!2228208 e!4537506)))

(declare-fun b!7632502 () Bool)

(declare-fun tp!2228271 () Bool)

(declare-fun tp!2228269 () Bool)

(assert (=> b!7632502 (= e!4537506 (and tp!2228271 tp!2228269))))

(declare-fun b!7632504 () Bool)

(declare-fun tp!2228268 () Bool)

(declare-fun tp!2228272 () Bool)

(assert (=> b!7632504 (= e!4537506 (and tp!2228268 tp!2228272))))

(declare-fun b!7632501 () Bool)

(assert (=> b!7632501 (= e!4537506 tp_is_empty!51135)))

(assert (= (and b!7632154 (is-ElementMatch!20390 (regTwo!41293 r!14126))) b!7632501))

(assert (= (and b!7632154 (is-Concat!29235 (regTwo!41293 r!14126))) b!7632502))

(assert (= (and b!7632154 (is-Star!20390 (regTwo!41293 r!14126))) b!7632503))

(assert (= (and b!7632154 (is-Union!20390 (regTwo!41293 r!14126))) b!7632504))

(declare-fun b!7632505 () Bool)

(declare-fun e!4537507 () Bool)

(declare-fun tp!2228273 () Bool)

(assert (=> b!7632505 (= e!4537507 (and tp_is_empty!51135 tp!2228273))))

(assert (=> b!7632147 (= tp!2228202 e!4537507)))

(assert (= (and b!7632147 (is-Cons!73117 (t!387976 (_1!37972 cut!17)))) b!7632505))

(push 1)

(assert (not b!7632500))

(assert (not bm!700635))

(assert (not b!7632365))

(assert (not b!7632391))

(assert (not b!7632439))

(assert (not b!7632490))

(assert (not b!7632505))

(assert (not b!7632494))

(assert (not b!7632234))

(assert (not b!7632441))

(assert (not d!2324279))

(assert (not bm!700654))

(assert (not b!7632297))

(assert (not b!7632450))

(assert (not b!7632386))

(assert tp_is_empty!51135)

(assert (not b!7632300))

(assert (not b!7632384))

(assert (not b!7632499))

(assert (not b!7632443))

(assert (not b!7632358))

(assert (not b!7632486))

(assert (not b!7632485))

(assert (not b!7632487))

(assert (not b!7632302))

(assert (not b!7632362))

(assert (not bm!700641))

(assert (not bm!700649))

(assert (not d!2324281))

(assert (not b!7632417))

(assert (not b!7632393))

(assert (not b!7632491))

(assert (not b!7632453))

(assert (not bm!700634))

(assert (not b!7632416))

(assert (not b!7632304))

(assert (not bm!700653))

(assert (not d!2324275))

(assert (not bm!700659))

(assert (not b!7632361))

(assert (not b!7632503))

(assert (not d!2324295))

(assert (not b!7632504))

(assert (not d!2324293))

(assert (not b!7632446))

(assert (not b!7632295))

(assert (not b!7632495))

(assert (not b!7632438))

(assert (not b!7632473))

(assert (not b!7632389))

(assert (not d!2324287))

(assert (not b!7632423))

(assert (not b!7632359))

(assert (not b!7632307))

(assert (not b!7632498))

(assert (not b!7632496))

(assert (not d!2324303))

(assert (not b!7632448))

(assert (not b!7632396))

(assert (not b!7632488))

(assert (not d!2324277))

(assert (not d!2324301))

(assert (not b!7632502))

(assert (not b!7632357))

(assert (not b!7632492))

(assert (not d!2324291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

