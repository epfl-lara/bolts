; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734438 () Bool)

(assert start!734438)

(declare-fun b!7626219 () Bool)

(assert (=> b!7626219 true))

(assert (=> b!7626219 true))

(declare-fun b!7626216 () Bool)

(declare-fun res!3053773 () Bool)

(declare-fun e!4534188 () Bool)

(assert (=> b!7626216 (=> (not res!3053773) (not e!4534188))))

(declare-datatypes ((C!41038 0))(
  ( (C!41039 (val!30959 Int)) )
))
(declare-datatypes ((Regex!20356 0))(
  ( (ElementMatch!20356 (c!1405187 C!41038)) (Concat!29201 (regOne!41224 Regex!20356) (regTwo!41224 Regex!20356)) (EmptyExpr!20356) (Star!20356 (reg!20685 Regex!20356)) (EmptyLang!20356) (Union!20356 (regOne!41225 Regex!20356) (regTwo!41225 Regex!20356)) )
))
(declare-fun r!14126 () Regex!20356)

(assert (=> b!7626216 (= res!3053773 (and (not (is-EmptyExpr!20356 r!14126)) (not (is-EmptyLang!20356 r!14126)) (not (is-ElementMatch!20356 r!14126)) (not (is-Union!20356 r!14126)) (not (is-Star!20356 r!14126))))))

(declare-fun b!7626217 () Bool)

(declare-fun e!4534189 () Bool)

(declare-fun e!4534186 () Bool)

(assert (=> b!7626217 (= e!4534189 e!4534186)))

(declare-fun res!3053772 () Bool)

(assert (=> b!7626217 (=> res!3053772 e!4534186)))

(declare-fun lambda!468780 () Int)

(declare-fun Exists!4510 (Int) Bool)

(assert (=> b!7626217 (= res!3053772 (not (Exists!4510 lambda!468780)))))

(declare-fun lt!2657936 () Bool)

(assert (=> b!7626217 lt!2657936))

(declare-datatypes ((Unit!167640 0))(
  ( (Unit!167641) )
))
(declare-fun lt!2657935 () Unit!167640)

(declare-datatypes ((List!73207 0))(
  ( (Nil!73083) (Cons!73083 (h!79531 C!41038) (t!387942 List!73207)) )
))
(declare-fun s!9605 () List!73207)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!263 (Regex!20356 Regex!20356 List!73207) Unit!167640)

(assert (=> b!7626217 (= lt!2657935 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!263 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605))))

(declare-fun b!7626218 () Bool)

(declare-fun e!4534190 () Bool)

(declare-fun tp_is_empty!51067 () Bool)

(declare-fun tp!2226646 () Bool)

(assert (=> b!7626218 (= e!4534190 (and tp_is_empty!51067 tp!2226646))))

(assert (=> b!7626219 (= e!4534188 (not e!4534189))))

(declare-fun res!3053771 () Bool)

(assert (=> b!7626219 (=> res!3053771 e!4534189)))

(declare-fun matchR!9859 (Regex!20356 List!73207) Bool)

(assert (=> b!7626219 (= res!3053771 (not (matchR!9859 r!14126 s!9605)))))

(assert (=> b!7626219 (= lt!2657936 (Exists!4510 lambda!468780))))

(declare-datatypes ((tuple2!69270 0))(
  ( (tuple2!69271 (_1!37938 List!73207) (_2!37938 List!73207)) )
))
(declare-datatypes ((Option!17429 0))(
  ( (None!17428) (Some!17428 (v!54563 tuple2!69270)) )
))
(declare-fun isDefined!14045 (Option!17429) Bool)

(declare-fun findConcatSeparation!3459 (Regex!20356 Regex!20356 List!73207 List!73207 List!73207) Option!17429)

(assert (=> b!7626219 (= lt!2657936 (isDefined!14045 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605)))))

(declare-fun lt!2657937 () Unit!167640)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3217 (Regex!20356 Regex!20356 List!73207) Unit!167640)

(assert (=> b!7626219 (= lt!2657937 (lemmaFindConcatSeparationEquivalentToExists!3217 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605))))

(declare-fun b!7626220 () Bool)

(declare-fun e!4534184 () Bool)

(declare-fun tp!2226647 () Bool)

(declare-fun tp!2226649 () Bool)

(assert (=> b!7626220 (= e!4534184 (and tp!2226647 tp!2226649))))

(declare-fun b!7626221 () Bool)

(declare-fun tp!2226642 () Bool)

(declare-fun tp!2226645 () Bool)

(assert (=> b!7626221 (= e!4534184 (and tp!2226642 tp!2226645))))

(declare-fun b!7626222 () Bool)

(declare-fun e!4534185 () Bool)

(declare-fun tp!2226648 () Bool)

(assert (=> b!7626222 (= e!4534185 (and tp_is_empty!51067 tp!2226648))))

(declare-fun b!7626223 () Bool)

(declare-fun e!4534187 () Bool)

(declare-fun tp!2226644 () Bool)

(assert (=> b!7626223 (= e!4534187 (and tp_is_empty!51067 tp!2226644))))

(declare-fun res!3053775 () Bool)

(assert (=> start!734438 (=> (not res!3053775) (not e!4534188))))

(declare-fun validRegex!10774 (Regex!20356) Bool)

(assert (=> start!734438 (= res!3053775 (validRegex!10774 r!14126))))

(assert (=> start!734438 e!4534188))

(assert (=> start!734438 e!4534184))

(assert (=> start!734438 e!4534185))

(assert (=> start!734438 (and e!4534187 e!4534190)))

(declare-fun b!7626224 () Bool)

(assert (=> b!7626224 (= e!4534186 (validRegex!10774 (regOne!41224 r!14126)))))

(declare-fun b!7626225 () Bool)

(assert (=> b!7626225 (= e!4534184 tp_is_empty!51067)))

(declare-fun b!7626226 () Bool)

(declare-fun tp!2226643 () Bool)

(assert (=> b!7626226 (= e!4534184 tp!2226643)))

(declare-fun b!7626227 () Bool)

(declare-fun res!3053774 () Bool)

(assert (=> b!7626227 (=> res!3053774 e!4534186)))

(declare-fun cut!13 () tuple2!69270)

(declare-fun ++!17646 (List!73207 List!73207) List!73207)

(assert (=> b!7626227 (= res!3053774 (not (= (++!17646 (_1!37938 cut!13) (_2!37938 cut!13)) s!9605)))))

(assert (= (and start!734438 res!3053775) b!7626216))

(assert (= (and b!7626216 res!3053773) b!7626219))

(assert (= (and b!7626219 (not res!3053771)) b!7626217))

(assert (= (and b!7626217 (not res!3053772)) b!7626227))

(assert (= (and b!7626227 (not res!3053774)) b!7626224))

(assert (= (and start!734438 (is-ElementMatch!20356 r!14126)) b!7626225))

(assert (= (and start!734438 (is-Concat!29201 r!14126)) b!7626221))

(assert (= (and start!734438 (is-Star!20356 r!14126)) b!7626226))

(assert (= (and start!734438 (is-Union!20356 r!14126)) b!7626220))

(assert (= (and start!734438 (is-Cons!73083 s!9605)) b!7626222))

(assert (= (and start!734438 (is-Cons!73083 (_1!37938 cut!13))) b!7626223))

(assert (= (and start!734438 (is-Cons!73083 (_2!37938 cut!13))) b!7626218))

(declare-fun m!8155518 () Bool)

(assert (=> b!7626224 m!8155518))

(declare-fun m!8155520 () Bool)

(assert (=> b!7626227 m!8155520))

(declare-fun m!8155522 () Bool)

(assert (=> b!7626217 m!8155522))

(declare-fun m!8155524 () Bool)

(assert (=> b!7626217 m!8155524))

(declare-fun m!8155526 () Bool)

(assert (=> start!734438 m!8155526))

(declare-fun m!8155528 () Bool)

(assert (=> b!7626219 m!8155528))

(declare-fun m!8155530 () Bool)

(assert (=> b!7626219 m!8155530))

(declare-fun m!8155532 () Bool)

(assert (=> b!7626219 m!8155532))

(assert (=> b!7626219 m!8155522))

(assert (=> b!7626219 m!8155530))

(declare-fun m!8155534 () Bool)

(assert (=> b!7626219 m!8155534))

(push 1)

(assert (not b!7626227))

(assert (not start!734438))

(assert (not b!7626218))

(assert (not b!7626220))

(assert (not b!7626221))

(assert (not b!7626224))

(assert (not b!7626226))

(assert (not b!7626217))

(assert (not b!7626219))

(assert tp_is_empty!51067)

(assert (not b!7626223))

(assert (not b!7626222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7626298 () Bool)

(declare-fun e!4534233 () Bool)

(declare-fun call!700193 () Bool)

(assert (=> b!7626298 (= e!4534233 call!700193)))

(declare-fun d!2323674 () Bool)

(declare-fun res!3053812 () Bool)

(declare-fun e!4534231 () Bool)

(assert (=> d!2323674 (=> res!3053812 e!4534231)))

(assert (=> d!2323674 (= res!3053812 (is-ElementMatch!20356 r!14126))))

(assert (=> d!2323674 (= (validRegex!10774 r!14126) e!4534231)))

(declare-fun c!1405193 () Bool)

(declare-fun c!1405194 () Bool)

(declare-fun bm!700186 () Bool)

(assert (=> bm!700186 (= call!700193 (validRegex!10774 (ite c!1405193 (reg!20685 r!14126) (ite c!1405194 (regOne!41225 r!14126) (regOne!41224 r!14126)))))))

(declare-fun b!7626299 () Bool)

(declare-fun e!4534232 () Bool)

(declare-fun call!700191 () Bool)

(assert (=> b!7626299 (= e!4534232 call!700191)))

(declare-fun b!7626300 () Bool)

(declare-fun res!3053809 () Bool)

(declare-fun e!4534235 () Bool)

(assert (=> b!7626300 (=> res!3053809 e!4534235)))

(assert (=> b!7626300 (= res!3053809 (not (is-Concat!29201 r!14126)))))

(declare-fun e!4534236 () Bool)

(assert (=> b!7626300 (= e!4534236 e!4534235)))

(declare-fun b!7626301 () Bool)

(declare-fun e!4534230 () Bool)

(assert (=> b!7626301 (= e!4534230 e!4534236)))

(assert (=> b!7626301 (= c!1405194 (is-Union!20356 r!14126))))

(declare-fun b!7626302 () Bool)

(declare-fun res!3053813 () Bool)

(assert (=> b!7626302 (=> (not res!3053813) (not e!4534232))))

(declare-fun call!700192 () Bool)

(assert (=> b!7626302 (= res!3053813 call!700192)))

(assert (=> b!7626302 (= e!4534236 e!4534232)))

(declare-fun b!7626303 () Bool)

(assert (=> b!7626303 (= e!4534230 e!4534233)))

(declare-fun res!3053811 () Bool)

(declare-fun nullable!8895 (Regex!20356) Bool)

(assert (=> b!7626303 (= res!3053811 (not (nullable!8895 (reg!20685 r!14126))))))

(assert (=> b!7626303 (=> (not res!3053811) (not e!4534233))))

(declare-fun b!7626304 () Bool)

(declare-fun e!4534234 () Bool)

(assert (=> b!7626304 (= e!4534235 e!4534234)))

(declare-fun res!3053810 () Bool)

(assert (=> b!7626304 (=> (not res!3053810) (not e!4534234))))

(assert (=> b!7626304 (= res!3053810 call!700192)))

(declare-fun b!7626305 () Bool)

(assert (=> b!7626305 (= e!4534231 e!4534230)))

(assert (=> b!7626305 (= c!1405193 (is-Star!20356 r!14126))))

(declare-fun bm!700187 () Bool)

(assert (=> bm!700187 (= call!700192 call!700193)))

(declare-fun bm!700188 () Bool)

(assert (=> bm!700188 (= call!700191 (validRegex!10774 (ite c!1405194 (regTwo!41225 r!14126) (regTwo!41224 r!14126))))))

(declare-fun b!7626306 () Bool)

(assert (=> b!7626306 (= e!4534234 call!700191)))

(assert (= (and d!2323674 (not res!3053812)) b!7626305))

(assert (= (and b!7626305 c!1405193) b!7626303))

(assert (= (and b!7626305 (not c!1405193)) b!7626301))

(assert (= (and b!7626303 res!3053811) b!7626298))

(assert (= (and b!7626301 c!1405194) b!7626302))

(assert (= (and b!7626301 (not c!1405194)) b!7626300))

(assert (= (and b!7626302 res!3053813) b!7626299))

(assert (= (and b!7626300 (not res!3053809)) b!7626304))

(assert (= (and b!7626304 res!3053810) b!7626306))

(assert (= (or b!7626302 b!7626304) bm!700187))

(assert (= (or b!7626299 b!7626306) bm!700188))

(assert (= (or b!7626298 bm!700187) bm!700186))

(declare-fun m!8155554 () Bool)

(assert (=> bm!700186 m!8155554))

(declare-fun m!8155556 () Bool)

(assert (=> b!7626303 m!8155556))

(declare-fun m!8155558 () Bool)

(assert (=> bm!700188 m!8155558))

(assert (=> start!734438 d!2323674))

(declare-fun b!7626347 () Bool)

(declare-fun e!4534260 () Bool)

(declare-fun e!4534255 () Bool)

(assert (=> b!7626347 (= e!4534260 e!4534255)))

(declare-fun c!1405206 () Bool)

(assert (=> b!7626347 (= c!1405206 (is-EmptyLang!20356 r!14126))))

(declare-fun b!7626349 () Bool)

(declare-fun res!3053835 () Bool)

(declare-fun e!4534261 () Bool)

(assert (=> b!7626349 (=> (not res!3053835) (not e!4534261))))

(declare-fun isEmpty!41711 (List!73207) Bool)

(declare-fun tail!15209 (List!73207) List!73207)

(assert (=> b!7626349 (= res!3053835 (isEmpty!41711 (tail!15209 s!9605)))))

(declare-fun b!7626350 () Bool)

(declare-fun e!4534259 () Bool)

(declare-fun e!4534262 () Bool)

(assert (=> b!7626350 (= e!4534259 e!4534262)))

(declare-fun res!3053843 () Bool)

(assert (=> b!7626350 (=> res!3053843 e!4534262)))

(declare-fun call!700196 () Bool)

(assert (=> b!7626350 (= res!3053843 call!700196)))

(declare-fun b!7626351 () Bool)

(declare-fun lt!2657952 () Bool)

(assert (=> b!7626351 (= e!4534255 (not lt!2657952))))

(declare-fun b!7626352 () Bool)

(declare-fun res!3053841 () Bool)

(declare-fun e!4534257 () Bool)

(assert (=> b!7626352 (=> res!3053841 e!4534257)))

(assert (=> b!7626352 (= res!3053841 (not (is-ElementMatch!20356 r!14126)))))

(assert (=> b!7626352 (= e!4534255 e!4534257)))

(declare-fun b!7626353 () Bool)

(assert (=> b!7626353 (= e!4534260 (= lt!2657952 call!700196))))

(declare-fun b!7626354 () Bool)

(declare-fun res!3053840 () Bool)

(assert (=> b!7626354 (=> res!3053840 e!4534257)))

(assert (=> b!7626354 (= res!3053840 e!4534261)))

(declare-fun res!3053834 () Bool)

(assert (=> b!7626354 (=> (not res!3053834) (not e!4534261))))

(assert (=> b!7626354 (= res!3053834 lt!2657952)))

(declare-fun b!7626355 () Bool)

(declare-fun e!4534263 () Bool)

(declare-fun derivativeStep!5869 (Regex!20356 C!41038) Regex!20356)

(declare-fun head!15669 (List!73207) C!41038)

(assert (=> b!7626355 (= e!4534263 (matchR!9859 (derivativeStep!5869 r!14126 (head!15669 s!9605)) (tail!15209 s!9605)))))

(declare-fun b!7626356 () Bool)

(assert (=> b!7626356 (= e!4534261 (= (head!15669 s!9605) (c!1405187 r!14126)))))

(declare-fun b!7626357 () Bool)

(declare-fun res!3053839 () Bool)

(assert (=> b!7626357 (=> (not res!3053839) (not e!4534261))))

(assert (=> b!7626357 (= res!3053839 (not call!700196))))

(declare-fun b!7626358 () Bool)

(assert (=> b!7626358 (= e!4534263 (nullable!8895 r!14126))))

(declare-fun bm!700191 () Bool)

(assert (=> bm!700191 (= call!700196 (isEmpty!41711 s!9605))))

(declare-fun d!2323678 () Bool)

(assert (=> d!2323678 e!4534260))

(declare-fun c!1405204 () Bool)

(assert (=> d!2323678 (= c!1405204 (is-EmptyExpr!20356 r!14126))))

(assert (=> d!2323678 (= lt!2657952 e!4534263)))

(declare-fun c!1405205 () Bool)

(assert (=> d!2323678 (= c!1405205 (isEmpty!41711 s!9605))))

(assert (=> d!2323678 (validRegex!10774 r!14126)))

(assert (=> d!2323678 (= (matchR!9859 r!14126 s!9605) lt!2657952)))

(declare-fun b!7626348 () Bool)

(assert (=> b!7626348 (= e!4534257 e!4534259)))

(declare-fun res!3053842 () Bool)

(assert (=> b!7626348 (=> (not res!3053842) (not e!4534259))))

(assert (=> b!7626348 (= res!3053842 (not lt!2657952))))

(declare-fun b!7626359 () Bool)

(assert (=> b!7626359 (= e!4534262 (not (= (head!15669 s!9605) (c!1405187 r!14126))))))

(declare-fun b!7626360 () Bool)

(declare-fun res!3053837 () Bool)

(assert (=> b!7626360 (=> res!3053837 e!4534262)))

(assert (=> b!7626360 (= res!3053837 (not (isEmpty!41711 (tail!15209 s!9605))))))

(assert (= (and d!2323678 c!1405205) b!7626358))

(assert (= (and d!2323678 (not c!1405205)) b!7626355))

(assert (= (and d!2323678 c!1405204) b!7626353))

(assert (= (and d!2323678 (not c!1405204)) b!7626347))

(assert (= (and b!7626347 c!1405206) b!7626351))

(assert (= (and b!7626347 (not c!1405206)) b!7626352))

(assert (= (and b!7626352 (not res!3053841)) b!7626354))

(assert (= (and b!7626354 res!3053834) b!7626357))

(assert (= (and b!7626357 res!3053839) b!7626349))

(assert (= (and b!7626349 res!3053835) b!7626356))

(assert (= (and b!7626354 (not res!3053840)) b!7626348))

(assert (= (and b!7626348 res!3053842) b!7626350))

(assert (= (and b!7626350 (not res!3053843)) b!7626360))

(assert (= (and b!7626360 (not res!3053837)) b!7626359))

(assert (= (or b!7626353 b!7626350 b!7626357) bm!700191))

(declare-fun m!8155560 () Bool)

(assert (=> b!7626358 m!8155560))

(declare-fun m!8155562 () Bool)

(assert (=> d!2323678 m!8155562))

(assert (=> d!2323678 m!8155526))

(declare-fun m!8155565 () Bool)

(assert (=> b!7626360 m!8155565))

(assert (=> b!7626360 m!8155565))

(declare-fun m!8155568 () Bool)

(assert (=> b!7626360 m!8155568))

(declare-fun m!8155570 () Bool)

(assert (=> b!7626359 m!8155570))

(assert (=> b!7626349 m!8155565))

(assert (=> b!7626349 m!8155565))

(assert (=> b!7626349 m!8155568))

(assert (=> b!7626356 m!8155570))

(assert (=> bm!700191 m!8155562))

(assert (=> b!7626355 m!8155570))

(assert (=> b!7626355 m!8155570))

(declare-fun m!8155576 () Bool)

(assert (=> b!7626355 m!8155576))

(assert (=> b!7626355 m!8155565))

(assert (=> b!7626355 m!8155576))

(assert (=> b!7626355 m!8155565))

(declare-fun m!8155580 () Bool)

(assert (=> b!7626355 m!8155580))

(assert (=> b!7626219 d!2323678))

(declare-fun bs!1943659 () Bool)

(declare-fun d!2323680 () Bool)

(assert (= bs!1943659 (and d!2323680 b!7626219)))

(declare-fun lambda!468788 () Int)

(assert (=> bs!1943659 (= lambda!468788 lambda!468780)))

(assert (=> d!2323680 true))

(assert (=> d!2323680 true))

(assert (=> d!2323680 true))

(assert (=> d!2323680 (= (isDefined!14045 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605)) (Exists!4510 lambda!468788))))

(declare-fun lt!2657955 () Unit!167640)

(declare-fun choose!58853 (Regex!20356 Regex!20356 List!73207) Unit!167640)

(assert (=> d!2323680 (= lt!2657955 (choose!58853 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605))))

(assert (=> d!2323680 (validRegex!10774 (regOne!41224 r!14126))))

(assert (=> d!2323680 (= (lemmaFindConcatSeparationEquivalentToExists!3217 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605) lt!2657955)))

(declare-fun bs!1943660 () Bool)

(assert (= bs!1943660 d!2323680))

(declare-fun m!8155588 () Bool)

(assert (=> bs!1943660 m!8155588))

(assert (=> bs!1943660 m!8155518))

(assert (=> bs!1943660 m!8155530))

(assert (=> bs!1943660 m!8155534))

(declare-fun m!8155590 () Bool)

(assert (=> bs!1943660 m!8155590))

(assert (=> bs!1943660 m!8155530))

(assert (=> b!7626219 d!2323680))

(declare-fun d!2323684 () Bool)

(declare-fun isEmpty!41712 (Option!17429) Bool)

(assert (=> d!2323684 (= (isDefined!14045 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605)) (not (isEmpty!41712 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605))))))

(declare-fun bs!1943661 () Bool)

(assert (= bs!1943661 d!2323684))

(assert (=> bs!1943661 m!8155530))

(declare-fun m!8155592 () Bool)

(assert (=> bs!1943661 m!8155592))

(assert (=> b!7626219 d!2323684))

(declare-fun b!7626419 () Bool)

(declare-fun e!4534305 () Bool)

(declare-fun lt!2657962 () Option!17429)

(declare-fun get!25816 (Option!17429) tuple2!69270)

(assert (=> b!7626419 (= e!4534305 (= (++!17646 (_1!37938 (get!25816 lt!2657962)) (_2!37938 (get!25816 lt!2657962))) s!9605))))

(declare-fun b!7626420 () Bool)

(declare-fun res!3053881 () Bool)

(assert (=> b!7626420 (=> (not res!3053881) (not e!4534305))))

(assert (=> b!7626420 (= res!3053881 (matchR!9859 (regOne!41224 r!14126) (_1!37938 (get!25816 lt!2657962))))))

(declare-fun b!7626421 () Bool)

(declare-fun e!4534306 () Option!17429)

(assert (=> b!7626421 (= e!4534306 None!17428)))

(declare-fun d!2323686 () Bool)

(declare-fun e!4534308 () Bool)

(assert (=> d!2323686 e!4534308))

(declare-fun res!3053880 () Bool)

(assert (=> d!2323686 (=> res!3053880 e!4534308)))

(assert (=> d!2323686 (= res!3053880 e!4534305)))

(declare-fun res!3053879 () Bool)

(assert (=> d!2323686 (=> (not res!3053879) (not e!4534305))))

(assert (=> d!2323686 (= res!3053879 (isDefined!14045 lt!2657962))))

(declare-fun e!4534307 () Option!17429)

(assert (=> d!2323686 (= lt!2657962 e!4534307)))

(declare-fun c!1405220 () Bool)

(declare-fun e!4534304 () Bool)

(assert (=> d!2323686 (= c!1405220 e!4534304)))

(declare-fun res!3053878 () Bool)

(assert (=> d!2323686 (=> (not res!3053878) (not e!4534304))))

(assert (=> d!2323686 (= res!3053878 (matchR!9859 (regOne!41224 r!14126) Nil!73083))))

(assert (=> d!2323686 (validRegex!10774 (regOne!41224 r!14126))))

(assert (=> d!2323686 (= (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605) lt!2657962)))

(declare-fun b!7626422 () Bool)

(declare-fun lt!2657963 () Unit!167640)

(declare-fun lt!2657964 () Unit!167640)

(assert (=> b!7626422 (= lt!2657963 lt!2657964)))

(assert (=> b!7626422 (= (++!17646 (++!17646 Nil!73083 (Cons!73083 (h!79531 s!9605) Nil!73083)) (t!387942 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3230 (List!73207 C!41038 List!73207 List!73207) Unit!167640)

(assert (=> b!7626422 (= lt!2657964 (lemmaMoveElementToOtherListKeepsConcatEq!3230 Nil!73083 (h!79531 s!9605) (t!387942 s!9605) s!9605))))

(assert (=> b!7626422 (= e!4534306 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) (++!17646 Nil!73083 (Cons!73083 (h!79531 s!9605) Nil!73083)) (t!387942 s!9605) s!9605))))

(declare-fun b!7626423 () Bool)

(assert (=> b!7626423 (= e!4534307 e!4534306)))

(declare-fun c!1405219 () Bool)

(assert (=> b!7626423 (= c!1405219 (is-Nil!73083 s!9605))))

(declare-fun b!7626424 () Bool)

(declare-fun res!3053882 () Bool)

(assert (=> b!7626424 (=> (not res!3053882) (not e!4534305))))

(assert (=> b!7626424 (= res!3053882 (matchR!9859 (regTwo!41224 r!14126) (_2!37938 (get!25816 lt!2657962))))))

(declare-fun b!7626425 () Bool)

(assert (=> b!7626425 (= e!4534304 (matchR!9859 (regTwo!41224 r!14126) s!9605))))

(declare-fun b!7626426 () Bool)

(assert (=> b!7626426 (= e!4534307 (Some!17428 (tuple2!69271 Nil!73083 s!9605)))))

(declare-fun b!7626427 () Bool)

(assert (=> b!7626427 (= e!4534308 (not (isDefined!14045 lt!2657962)))))

(assert (= (and d!2323686 res!3053878) b!7626425))

(assert (= (and d!2323686 c!1405220) b!7626426))

(assert (= (and d!2323686 (not c!1405220)) b!7626423))

(assert (= (and b!7626423 c!1405219) b!7626421))

(assert (= (and b!7626423 (not c!1405219)) b!7626422))

(assert (= (and d!2323686 res!3053879) b!7626420))

(assert (= (and b!7626420 res!3053881) b!7626424))

(assert (= (and b!7626424 res!3053882) b!7626419))

(assert (= (and d!2323686 (not res!3053880)) b!7626427))

(declare-fun m!8155608 () Bool)

(assert (=> b!7626419 m!8155608))

(declare-fun m!8155610 () Bool)

(assert (=> b!7626419 m!8155610))

(declare-fun m!8155612 () Bool)

(assert (=> b!7626425 m!8155612))

(declare-fun m!8155614 () Bool)

(assert (=> b!7626422 m!8155614))

(assert (=> b!7626422 m!8155614))

(declare-fun m!8155616 () Bool)

(assert (=> b!7626422 m!8155616))

(declare-fun m!8155618 () Bool)

(assert (=> b!7626422 m!8155618))

(assert (=> b!7626422 m!8155614))

(declare-fun m!8155620 () Bool)

(assert (=> b!7626422 m!8155620))

(assert (=> b!7626424 m!8155608))

(declare-fun m!8155622 () Bool)

(assert (=> b!7626424 m!8155622))

(assert (=> b!7626420 m!8155608))

(declare-fun m!8155624 () Bool)

(assert (=> b!7626420 m!8155624))

(declare-fun m!8155626 () Bool)

(assert (=> d!2323686 m!8155626))

(declare-fun m!8155628 () Bool)

(assert (=> d!2323686 m!8155628))

(assert (=> d!2323686 m!8155518))

(assert (=> b!7626427 m!8155626))

(assert (=> b!7626219 d!2323686))

(declare-fun d!2323694 () Bool)

(declare-fun choose!58854 (Int) Bool)

(assert (=> d!2323694 (= (Exists!4510 lambda!468780) (choose!58854 lambda!468780))))

(declare-fun bs!1943663 () Bool)

(assert (= bs!1943663 d!2323694))

(declare-fun m!8155630 () Bool)

(assert (=> bs!1943663 m!8155630))

(assert (=> b!7626219 d!2323694))

(declare-fun b!7626428 () Bool)

(declare-fun e!4534312 () Bool)

(declare-fun call!700211 () Bool)

(assert (=> b!7626428 (= e!4534312 call!700211)))

(declare-fun d!2323696 () Bool)

(declare-fun res!3053886 () Bool)

(declare-fun e!4534310 () Bool)

(assert (=> d!2323696 (=> res!3053886 e!4534310)))

(assert (=> d!2323696 (= res!3053886 (is-ElementMatch!20356 (regOne!41224 r!14126)))))

(assert (=> d!2323696 (= (validRegex!10774 (regOne!41224 r!14126)) e!4534310)))

(declare-fun c!1405222 () Bool)

(declare-fun bm!700204 () Bool)

(declare-fun c!1405221 () Bool)

(assert (=> bm!700204 (= call!700211 (validRegex!10774 (ite c!1405221 (reg!20685 (regOne!41224 r!14126)) (ite c!1405222 (regOne!41225 (regOne!41224 r!14126)) (regOne!41224 (regOne!41224 r!14126))))))))

(declare-fun b!7626429 () Bool)

(declare-fun e!4534311 () Bool)

(declare-fun call!700209 () Bool)

(assert (=> b!7626429 (= e!4534311 call!700209)))

(declare-fun b!7626430 () Bool)

(declare-fun res!3053883 () Bool)

(declare-fun e!4534314 () Bool)

(assert (=> b!7626430 (=> res!3053883 e!4534314)))

(assert (=> b!7626430 (= res!3053883 (not (is-Concat!29201 (regOne!41224 r!14126))))))

(declare-fun e!4534315 () Bool)

(assert (=> b!7626430 (= e!4534315 e!4534314)))

(declare-fun b!7626431 () Bool)

(declare-fun e!4534309 () Bool)

(assert (=> b!7626431 (= e!4534309 e!4534315)))

(assert (=> b!7626431 (= c!1405222 (is-Union!20356 (regOne!41224 r!14126)))))

(declare-fun b!7626432 () Bool)

(declare-fun res!3053887 () Bool)

(assert (=> b!7626432 (=> (not res!3053887) (not e!4534311))))

(declare-fun call!700210 () Bool)

(assert (=> b!7626432 (= res!3053887 call!700210)))

(assert (=> b!7626432 (= e!4534315 e!4534311)))

(declare-fun b!7626433 () Bool)

(assert (=> b!7626433 (= e!4534309 e!4534312)))

(declare-fun res!3053885 () Bool)

(assert (=> b!7626433 (= res!3053885 (not (nullable!8895 (reg!20685 (regOne!41224 r!14126)))))))

(assert (=> b!7626433 (=> (not res!3053885) (not e!4534312))))

(declare-fun b!7626434 () Bool)

(declare-fun e!4534313 () Bool)

(assert (=> b!7626434 (= e!4534314 e!4534313)))

(declare-fun res!3053884 () Bool)

(assert (=> b!7626434 (=> (not res!3053884) (not e!4534313))))

(assert (=> b!7626434 (= res!3053884 call!700210)))

(declare-fun b!7626435 () Bool)

(assert (=> b!7626435 (= e!4534310 e!4534309)))

(assert (=> b!7626435 (= c!1405221 (is-Star!20356 (regOne!41224 r!14126)))))

(declare-fun bm!700205 () Bool)

(assert (=> bm!700205 (= call!700210 call!700211)))

(declare-fun bm!700206 () Bool)

(assert (=> bm!700206 (= call!700209 (validRegex!10774 (ite c!1405222 (regTwo!41225 (regOne!41224 r!14126)) (regTwo!41224 (regOne!41224 r!14126)))))))

(declare-fun b!7626436 () Bool)

(assert (=> b!7626436 (= e!4534313 call!700209)))

(assert (= (and d!2323696 (not res!3053886)) b!7626435))

(assert (= (and b!7626435 c!1405221) b!7626433))

(assert (= (and b!7626435 (not c!1405221)) b!7626431))

(assert (= (and b!7626433 res!3053885) b!7626428))

(assert (= (and b!7626431 c!1405222) b!7626432))

(assert (= (and b!7626431 (not c!1405222)) b!7626430))

(assert (= (and b!7626432 res!3053887) b!7626429))

(assert (= (and b!7626430 (not res!3053883)) b!7626434))

(assert (= (and b!7626434 res!3053884) b!7626436))

(assert (= (or b!7626432 b!7626434) bm!700205))

(assert (= (or b!7626429 b!7626436) bm!700206))

(assert (= (or b!7626428 bm!700205) bm!700204))

(declare-fun m!8155632 () Bool)

(assert (=> bm!700204 m!8155632))

(declare-fun m!8155634 () Bool)

(assert (=> b!7626433 m!8155634))

(declare-fun m!8155636 () Bool)

(assert (=> bm!700206 m!8155636))

(assert (=> b!7626224 d!2323696))

(assert (=> b!7626217 d!2323694))

(declare-fun d!2323698 () Bool)

(assert (=> d!2323698 (isDefined!14045 (findConcatSeparation!3459 (regOne!41224 r!14126) (regTwo!41224 r!14126) Nil!73083 s!9605 s!9605))))

(declare-fun lt!2657970 () Unit!167640)

(declare-fun choose!58855 (Regex!20356 Regex!20356 List!73207) Unit!167640)

(assert (=> d!2323698 (= lt!2657970 (choose!58855 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605))))

(assert (=> d!2323698 (validRegex!10774 (regOne!41224 r!14126))))

(assert (=> d!2323698 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!263 (regOne!41224 r!14126) (regTwo!41224 r!14126) s!9605) lt!2657970)))

(declare-fun bs!1943665 () Bool)

(assert (= bs!1943665 d!2323698))

(assert (=> bs!1943665 m!8155530))

(assert (=> bs!1943665 m!8155530))

(assert (=> bs!1943665 m!8155534))

(declare-fun m!8155640 () Bool)

(assert (=> bs!1943665 m!8155640))

(assert (=> bs!1943665 m!8155518))

(assert (=> b!7626217 d!2323698))

(declare-fun b!7626447 () Bool)

(declare-fun res!3053893 () Bool)

(declare-fun e!4534321 () Bool)

(assert (=> b!7626447 (=> (not res!3053893) (not e!4534321))))

(declare-fun lt!2657973 () List!73207)

(declare-fun size!42549 (List!73207) Int)

(assert (=> b!7626447 (= res!3053893 (= (size!42549 lt!2657973) (+ (size!42549 (_1!37938 cut!13)) (size!42549 (_2!37938 cut!13)))))))

(declare-fun b!7626446 () Bool)

(declare-fun e!4534320 () List!73207)

(assert (=> b!7626446 (= e!4534320 (Cons!73083 (h!79531 (_1!37938 cut!13)) (++!17646 (t!387942 (_1!37938 cut!13)) (_2!37938 cut!13))))))

(declare-fun b!7626448 () Bool)

(assert (=> b!7626448 (= e!4534321 (or (not (= (_2!37938 cut!13) Nil!73083)) (= lt!2657973 (_1!37938 cut!13))))))

(declare-fun b!7626445 () Bool)

(assert (=> b!7626445 (= e!4534320 (_2!37938 cut!13))))

(declare-fun d!2323702 () Bool)

(assert (=> d!2323702 e!4534321))

(declare-fun res!3053892 () Bool)

(assert (=> d!2323702 (=> (not res!3053892) (not e!4534321))))

(declare-fun content!15456 (List!73207) (Set C!41038))

(assert (=> d!2323702 (= res!3053892 (= (content!15456 lt!2657973) (set.union (content!15456 (_1!37938 cut!13)) (content!15456 (_2!37938 cut!13)))))))

(assert (=> d!2323702 (= lt!2657973 e!4534320)))

(declare-fun c!1405225 () Bool)

(assert (=> d!2323702 (= c!1405225 (is-Nil!73083 (_1!37938 cut!13)))))

(assert (=> d!2323702 (= (++!17646 (_1!37938 cut!13) (_2!37938 cut!13)) lt!2657973)))

(assert (= (and d!2323702 c!1405225) b!7626445))

(assert (= (and d!2323702 (not c!1405225)) b!7626446))

(assert (= (and d!2323702 res!3053892) b!7626447))

(assert (= (and b!7626447 res!3053893) b!7626448))

(declare-fun m!8155642 () Bool)

(assert (=> b!7626447 m!8155642))

(declare-fun m!8155644 () Bool)

(assert (=> b!7626447 m!8155644))

(declare-fun m!8155646 () Bool)

(assert (=> b!7626447 m!8155646))

(declare-fun m!8155648 () Bool)

(assert (=> b!7626446 m!8155648))

(declare-fun m!8155650 () Bool)

(assert (=> d!2323702 m!8155650))

(declare-fun m!8155652 () Bool)

(assert (=> d!2323702 m!8155652))

(declare-fun m!8155654 () Bool)

(assert (=> d!2323702 m!8155654))

(assert (=> b!7626227 d!2323702))

(declare-fun b!7626453 () Bool)

(declare-fun e!4534324 () Bool)

(declare-fun tp!2226676 () Bool)

(assert (=> b!7626453 (= e!4534324 (and tp_is_empty!51067 tp!2226676))))

(assert (=> b!7626218 (= tp!2226646 e!4534324)))

(assert (= (and b!7626218 (is-Cons!73083 (t!387942 (_2!37938 cut!13)))) b!7626453))

(declare-fun b!7626454 () Bool)

(declare-fun e!4534325 () Bool)

(declare-fun tp!2226677 () Bool)

(assert (=> b!7626454 (= e!4534325 (and tp_is_empty!51067 tp!2226677))))

(assert (=> b!7626223 (= tp!2226644 e!4534325)))

(assert (= (and b!7626223 (is-Cons!73083 (t!387942 (_1!37938 cut!13)))) b!7626454))

(declare-fun b!7626455 () Bool)

(declare-fun e!4534326 () Bool)

(declare-fun tp!2226678 () Bool)

(assert (=> b!7626455 (= e!4534326 (and tp_is_empty!51067 tp!2226678))))

(assert (=> b!7626222 (= tp!2226648 e!4534326)))

(assert (= (and b!7626222 (is-Cons!73083 (t!387942 s!9605))) b!7626455))

(declare-fun b!7626469 () Bool)

(declare-fun e!4534329 () Bool)

(declare-fun tp!2226692 () Bool)

(declare-fun tp!2226693 () Bool)

(assert (=> b!7626469 (= e!4534329 (and tp!2226692 tp!2226693))))

(declare-fun b!7626468 () Bool)

(declare-fun tp!2226689 () Bool)

(assert (=> b!7626468 (= e!4534329 tp!2226689)))

(assert (=> b!7626221 (= tp!2226642 e!4534329)))

(declare-fun b!7626467 () Bool)

(declare-fun tp!2226690 () Bool)

(declare-fun tp!2226691 () Bool)

(assert (=> b!7626467 (= e!4534329 (and tp!2226690 tp!2226691))))

(declare-fun b!7626466 () Bool)

(assert (=> b!7626466 (= e!4534329 tp_is_empty!51067)))

(assert (= (and b!7626221 (is-ElementMatch!20356 (regOne!41224 r!14126))) b!7626466))

(assert (= (and b!7626221 (is-Concat!29201 (regOne!41224 r!14126))) b!7626467))

(assert (= (and b!7626221 (is-Star!20356 (regOne!41224 r!14126))) b!7626468))

(assert (= (and b!7626221 (is-Union!20356 (regOne!41224 r!14126))) b!7626469))

(declare-fun b!7626473 () Bool)

(declare-fun e!4534330 () Bool)

(declare-fun tp!2226697 () Bool)

(declare-fun tp!2226698 () Bool)

(assert (=> b!7626473 (= e!4534330 (and tp!2226697 tp!2226698))))

(declare-fun b!7626472 () Bool)

(declare-fun tp!2226694 () Bool)

(assert (=> b!7626472 (= e!4534330 tp!2226694)))

(assert (=> b!7626221 (= tp!2226645 e!4534330)))

(declare-fun b!7626471 () Bool)

(declare-fun tp!2226695 () Bool)

(declare-fun tp!2226696 () Bool)

(assert (=> b!7626471 (= e!4534330 (and tp!2226695 tp!2226696))))

(declare-fun b!7626470 () Bool)

(assert (=> b!7626470 (= e!4534330 tp_is_empty!51067)))

(assert (= (and b!7626221 (is-ElementMatch!20356 (regTwo!41224 r!14126))) b!7626470))

(assert (= (and b!7626221 (is-Concat!29201 (regTwo!41224 r!14126))) b!7626471))

(assert (= (and b!7626221 (is-Star!20356 (regTwo!41224 r!14126))) b!7626472))

(assert (= (and b!7626221 (is-Union!20356 (regTwo!41224 r!14126))) b!7626473))

(declare-fun b!7626477 () Bool)

(declare-fun e!4534331 () Bool)

(declare-fun tp!2226702 () Bool)

(declare-fun tp!2226703 () Bool)

(assert (=> b!7626477 (= e!4534331 (and tp!2226702 tp!2226703))))

(declare-fun b!7626476 () Bool)

(declare-fun tp!2226699 () Bool)

(assert (=> b!7626476 (= e!4534331 tp!2226699)))

(assert (=> b!7626226 (= tp!2226643 e!4534331)))

(declare-fun b!7626475 () Bool)

(declare-fun tp!2226700 () Bool)

(declare-fun tp!2226701 () Bool)

(assert (=> b!7626475 (= e!4534331 (and tp!2226700 tp!2226701))))

(declare-fun b!7626474 () Bool)

(assert (=> b!7626474 (= e!4534331 tp_is_empty!51067)))

(assert (= (and b!7626226 (is-ElementMatch!20356 (reg!20685 r!14126))) b!7626474))

(assert (= (and b!7626226 (is-Concat!29201 (reg!20685 r!14126))) b!7626475))

(assert (= (and b!7626226 (is-Star!20356 (reg!20685 r!14126))) b!7626476))

(assert (= (and b!7626226 (is-Union!20356 (reg!20685 r!14126))) b!7626477))

(declare-fun b!7626481 () Bool)

(declare-fun e!4534332 () Bool)

(declare-fun tp!2226707 () Bool)

(declare-fun tp!2226708 () Bool)

(assert (=> b!7626481 (= e!4534332 (and tp!2226707 tp!2226708))))

(declare-fun b!7626480 () Bool)

(declare-fun tp!2226704 () Bool)

(assert (=> b!7626480 (= e!4534332 tp!2226704)))

(assert (=> b!7626220 (= tp!2226647 e!4534332)))

(declare-fun b!7626479 () Bool)

(declare-fun tp!2226705 () Bool)

(declare-fun tp!2226706 () Bool)

(assert (=> b!7626479 (= e!4534332 (and tp!2226705 tp!2226706))))

(declare-fun b!7626478 () Bool)

(assert (=> b!7626478 (= e!4534332 tp_is_empty!51067)))

(assert (= (and b!7626220 (is-ElementMatch!20356 (regOne!41225 r!14126))) b!7626478))

(assert (= (and b!7626220 (is-Concat!29201 (regOne!41225 r!14126))) b!7626479))

(assert (= (and b!7626220 (is-Star!20356 (regOne!41225 r!14126))) b!7626480))

(assert (= (and b!7626220 (is-Union!20356 (regOne!41225 r!14126))) b!7626481))

(declare-fun b!7626485 () Bool)

(declare-fun e!4534333 () Bool)

(declare-fun tp!2226712 () Bool)

(declare-fun tp!2226713 () Bool)

(assert (=> b!7626485 (= e!4534333 (and tp!2226712 tp!2226713))))

(declare-fun b!7626484 () Bool)

(declare-fun tp!2226709 () Bool)

(assert (=> b!7626484 (= e!4534333 tp!2226709)))

(assert (=> b!7626220 (= tp!2226649 e!4534333)))

(declare-fun b!7626483 () Bool)

(declare-fun tp!2226710 () Bool)

(declare-fun tp!2226711 () Bool)

(assert (=> b!7626483 (= e!4534333 (and tp!2226710 tp!2226711))))

(declare-fun b!7626482 () Bool)

(assert (=> b!7626482 (= e!4534333 tp_is_empty!51067)))

(assert (= (and b!7626220 (is-ElementMatch!20356 (regTwo!41225 r!14126))) b!7626482))

(assert (= (and b!7626220 (is-Concat!29201 (regTwo!41225 r!14126))) b!7626483))

(assert (= (and b!7626220 (is-Star!20356 (regTwo!41225 r!14126))) b!7626484))

(assert (= (and b!7626220 (is-Union!20356 (regTwo!41225 r!14126))) b!7626485))

(push 1)

(assert tp_is_empty!51067)

(assert (not b!7626469))

(assert (not b!7626447))

(assert (not b!7626467))

(assert (not b!7626427))

(assert (not b!7626471))

(assert (not b!7626360))

(assert (not b!7626355))

(assert (not d!2323694))

(assert (not b!7626358))

(assert (not b!7626356))

(assert (not b!7626446))

(assert (not b!7626422))

(assert (not b!7626453))

(assert (not b!7626455))

(assert (not b!7626359))

(assert (not bm!700186))

(assert (not b!7626472))

(assert (not b!7626481))

(assert (not b!7626303))

(assert (not bm!700206))

(assert (not b!7626349))

(assert (not b!7626485))

(assert (not b!7626420))

(assert (not d!2323684))

(assert (not d!2323678))

(assert (not d!2323680))

(assert (not d!2323702))

(assert (not b!7626473))

(assert (not b!7626468))

(assert (not b!7626483))

(assert (not b!7626479))

(assert (not bm!700204))

(assert (not d!2323698))

(assert (not bm!700191))

(assert (not b!7626477))

(assert (not bm!700188))

(assert (not b!7626475))

(assert (not b!7626419))

(assert (not b!7626484))

(assert (not b!7626480))

(assert (not b!7626454))

(assert (not b!7626424))

(assert (not b!7626433))

(assert (not d!2323686))

(assert (not b!7626476))

(assert (not b!7626425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

