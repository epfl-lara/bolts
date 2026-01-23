; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735074 () Bool)

(assert start!735074)

(declare-fun b!7634145 () Bool)

(assert (=> b!7634145 true))

(assert (=> b!7634145 true))

(declare-fun bs!1944131 () Bool)

(declare-fun b!7634144 () Bool)

(assert (= bs!1944131 (and b!7634144 b!7634145)))

(declare-fun lambda!469215 () Int)

(declare-fun lambda!469214 () Int)

(assert (=> bs!1944131 (not (= lambda!469215 lambda!469214))))

(assert (=> b!7634144 true))

(assert (=> b!7634144 true))

(declare-fun b!7634142 () Bool)

(declare-fun res!3057446 () Bool)

(declare-fun e!4538374 () Bool)

(assert (=> b!7634142 (=> res!3057446 e!4538374)))

(declare-datatypes ((C!41122 0))(
  ( (C!41123 (val!31001 Int)) )
))
(declare-datatypes ((Regex!20398 0))(
  ( (ElementMatch!20398 (c!1406346 C!41122)) (Concat!29243 (regOne!41308 Regex!20398) (regTwo!41308 Regex!20398)) (EmptyExpr!20398) (Star!20398 (reg!20727 Regex!20398)) (EmptyLang!20398) (Union!20398 (regOne!41309 Regex!20398) (regTwo!41309 Regex!20398)) )
))
(declare-fun r!14126 () Regex!20398)

(declare-datatypes ((List!73249 0))(
  ( (Nil!73125) (Cons!73125 (h!79573 C!41122) (t!387984 List!73249)) )
))
(declare-datatypes ((tuple2!69354 0))(
  ( (tuple2!69355 (_1!37980 List!73249) (_2!37980 List!73249)) )
))
(declare-fun cut!19 () tuple2!69354)

(declare-fun matchRSpec!4543 (Regex!20398 List!73249) Bool)

(assert (=> b!7634142 (= res!3057446 (not (matchRSpec!4543 (regOne!41308 r!14126) (_1!37980 cut!19))))))

(declare-fun b!7634143 () Bool)

(declare-fun e!4538369 () Bool)

(assert (=> b!7634143 (= e!4538369 false)))

(declare-fun res!3057444 () Bool)

(assert (=> b!7634144 (=> res!3057444 e!4538374)))

(declare-fun Exists!4552 (Int) Bool)

(assert (=> b!7634144 (= res!3057444 (not (Exists!4552 lambda!469215)))))

(declare-fun e!4538373 () Bool)

(declare-fun e!4538372 () Bool)

(assert (=> b!7634145 (= e!4538373 (not e!4538372))))

(declare-fun res!3057448 () Bool)

(assert (=> b!7634145 (=> res!3057448 e!4538372)))

(declare-fun s!9605 () List!73249)

(declare-fun matchR!9901 (Regex!20398 List!73249) Bool)

(assert (=> b!7634145 (= res!3057448 (matchR!9901 r!14126 s!9605))))

(declare-fun lt!2659273 () Bool)

(assert (=> b!7634145 (= lt!2659273 (Exists!4552 lambda!469214))))

(declare-datatypes ((Option!17471 0))(
  ( (None!17470) (Some!17470 (v!54605 tuple2!69354)) )
))
(declare-fun lt!2659276 () Option!17471)

(declare-fun isDefined!14087 (Option!17471) Bool)

(assert (=> b!7634145 (= lt!2659273 (isDefined!14087 lt!2659276))))

(declare-fun findConcatSeparation!3501 (Regex!20398 Regex!20398 List!73249 List!73249 List!73249) Option!17471)

(assert (=> b!7634145 (= lt!2659276 (findConcatSeparation!3501 (regOne!41308 r!14126) (regTwo!41308 r!14126) Nil!73125 s!9605 s!9605))))

(declare-datatypes ((Unit!167744 0))(
  ( (Unit!167745) )
))
(declare-fun lt!2659278 () Unit!167744)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3259 (Regex!20398 Regex!20398 List!73249) Unit!167744)

(assert (=> b!7634145 (= lt!2659278 (lemmaFindConcatSeparationEquivalentToExists!3259 (regOne!41308 r!14126) (regTwo!41308 r!14126) s!9605))))

(declare-fun b!7634146 () Bool)

(declare-fun validRegex!10816 (Regex!20398) Bool)

(assert (=> b!7634146 (= e!4538374 (validRegex!10816 (regTwo!41308 r!14126)))))

(declare-fun b!7634147 () Bool)

(declare-fun res!3057443 () Bool)

(assert (=> b!7634147 (=> (not res!3057443) (not e!4538373))))

(assert (=> b!7634147 (= res!3057443 (and (not (is-EmptyExpr!20398 r!14126)) (not (is-EmptyLang!20398 r!14126)) (not (is-ElementMatch!20398 r!14126)) (not (is-Union!20398 r!14126)) (not (is-Star!20398 r!14126))))))

(declare-fun b!7634148 () Bool)

(declare-fun e!4538371 () Unit!167744)

(declare-fun Unit!167746 () Unit!167744)

(assert (=> b!7634148 (= e!4538371 Unit!167746)))

(declare-fun lt!2659274 () tuple2!69354)

(declare-fun get!25862 (Option!17471) tuple2!69354)

(assert (=> b!7634148 (= lt!2659274 (get!25862 lt!2659276))))

(declare-fun lt!2659277 () Unit!167744)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!155 (Regex!20398 Regex!20398 List!73249 List!73249 List!73249) Unit!167744)

(assert (=> b!7634148 (= lt!2659277 (lemmaFindSeparationIsDefinedThenConcatMatches!155 (regOne!41308 r!14126) (regTwo!41308 r!14126) (_1!37980 lt!2659274) (_2!37980 lt!2659274) s!9605))))

(declare-fun res!3057447 () Bool)

(declare-fun ++!17678 (List!73249 List!73249) List!73249)

(assert (=> b!7634148 (= res!3057447 (matchR!9901 r!14126 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))))))

(assert (=> b!7634148 (=> (not res!3057447) (not e!4538369))))

(assert (=> b!7634148 e!4538369))

(declare-fun b!7634150 () Bool)

(declare-fun e!4538368 () Bool)

(declare-fun tp!2228721 () Bool)

(declare-fun tp!2228718 () Bool)

(assert (=> b!7634150 (= e!4538368 (and tp!2228721 tp!2228718))))

(declare-fun b!7634151 () Bool)

(declare-fun tp!2228714 () Bool)

(assert (=> b!7634151 (= e!4538368 tp!2228714)))

(declare-fun b!7634152 () Bool)

(declare-fun res!3057442 () Bool)

(assert (=> b!7634152 (=> res!3057442 e!4538374)))

(assert (=> b!7634152 (= res!3057442 (not (= (++!17678 (_1!37980 cut!19) (_2!37980 cut!19)) s!9605)))))

(declare-fun b!7634153 () Bool)

(declare-fun e!4538375 () Bool)

(declare-fun tp_is_empty!51151 () Bool)

(declare-fun tp!2228716 () Bool)

(assert (=> b!7634153 (= e!4538375 (and tp_is_empty!51151 tp!2228716))))

(declare-fun b!7634154 () Bool)

(assert (=> b!7634154 (= e!4538372 e!4538374)))

(declare-fun res!3057445 () Bool)

(assert (=> b!7634154 (=> res!3057445 e!4538374)))

(assert (=> b!7634154 (= res!3057445 (Exists!4552 lambda!469214))))

(declare-fun lt!2659275 () Unit!167744)

(assert (=> b!7634154 (= lt!2659275 e!4538371)))

(declare-fun c!1406345 () Bool)

(assert (=> b!7634154 (= c!1406345 lt!2659273)))

(declare-fun b!7634155 () Bool)

(assert (=> b!7634155 (= e!4538368 tp_is_empty!51151)))

(declare-fun b!7634156 () Bool)

(declare-fun e!4538376 () Bool)

(declare-fun tp!2228715 () Bool)

(assert (=> b!7634156 (= e!4538376 (and tp_is_empty!51151 tp!2228715))))

(declare-fun b!7634157 () Bool)

(declare-fun e!4538370 () Bool)

(declare-fun tp!2228720 () Bool)

(assert (=> b!7634157 (= e!4538370 (and tp_is_empty!51151 tp!2228720))))

(declare-fun b!7634158 () Bool)

(declare-fun Unit!167747 () Unit!167744)

(assert (=> b!7634158 (= e!4538371 Unit!167747)))

(declare-fun b!7634149 () Bool)

(declare-fun tp!2228717 () Bool)

(declare-fun tp!2228719 () Bool)

(assert (=> b!7634149 (= e!4538368 (and tp!2228717 tp!2228719))))

(declare-fun res!3057441 () Bool)

(assert (=> start!735074 (=> (not res!3057441) (not e!4538373))))

(assert (=> start!735074 (= res!3057441 (validRegex!10816 r!14126))))

(assert (=> start!735074 e!4538373))

(assert (=> start!735074 e!4538368))

(assert (=> start!735074 e!4538370))

(assert (=> start!735074 (and e!4538376 e!4538375)))

(assert (= (and start!735074 res!3057441) b!7634147))

(assert (= (and b!7634147 res!3057443) b!7634145))

(assert (= (and b!7634145 (not res!3057448)) b!7634154))

(assert (= (and b!7634154 c!1406345) b!7634148))

(assert (= (and b!7634154 (not c!1406345)) b!7634158))

(assert (= (and b!7634148 res!3057447) b!7634143))

(assert (= (and b!7634154 (not res!3057445)) b!7634144))

(assert (= (and b!7634144 (not res!3057444)) b!7634152))

(assert (= (and b!7634152 (not res!3057442)) b!7634142))

(assert (= (and b!7634142 (not res!3057446)) b!7634146))

(assert (= (and start!735074 (is-ElementMatch!20398 r!14126)) b!7634155))

(assert (= (and start!735074 (is-Concat!29243 r!14126)) b!7634150))

(assert (= (and start!735074 (is-Star!20398 r!14126)) b!7634151))

(assert (= (and start!735074 (is-Union!20398 r!14126)) b!7634149))

(assert (= (and start!735074 (is-Cons!73125 s!9605)) b!7634157))

(assert (= (and start!735074 (is-Cons!73125 (_1!37980 cut!19))) b!7634156))

(assert (= (and start!735074 (is-Cons!73125 (_2!37980 cut!19))) b!7634153))

(declare-fun m!8159622 () Bool)

(assert (=> b!7634146 m!8159622))

(declare-fun m!8159624 () Bool)

(assert (=> start!735074 m!8159624))

(declare-fun m!8159626 () Bool)

(assert (=> b!7634154 m!8159626))

(declare-fun m!8159628 () Bool)

(assert (=> b!7634145 m!8159628))

(declare-fun m!8159630 () Bool)

(assert (=> b!7634145 m!8159630))

(declare-fun m!8159632 () Bool)

(assert (=> b!7634145 m!8159632))

(declare-fun m!8159634 () Bool)

(assert (=> b!7634145 m!8159634))

(assert (=> b!7634145 m!8159626))

(declare-fun m!8159636 () Bool)

(assert (=> b!7634148 m!8159636))

(declare-fun m!8159638 () Bool)

(assert (=> b!7634148 m!8159638))

(declare-fun m!8159640 () Bool)

(assert (=> b!7634148 m!8159640))

(assert (=> b!7634148 m!8159640))

(declare-fun m!8159642 () Bool)

(assert (=> b!7634148 m!8159642))

(declare-fun m!8159644 () Bool)

(assert (=> b!7634152 m!8159644))

(declare-fun m!8159646 () Bool)

(assert (=> b!7634144 m!8159646))

(declare-fun m!8159648 () Bool)

(assert (=> b!7634142 m!8159648))

(push 1)

(assert (not b!7634154))

(assert (not b!7634156))

(assert (not b!7634157))

(assert (not b!7634146))

(assert (not b!7634148))

(assert (not b!7634152))

(assert (not b!7634149))

(assert (not b!7634150))

(assert (not b!7634153))

(assert (not start!735074))

(assert tp_is_empty!51151)

(assert (not b!7634145))

(assert (not b!7634142))

(assert (not b!7634144))

(assert (not b!7634151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1944133 () Bool)

(declare-fun b!7634268 () Bool)

(assert (= bs!1944133 (and b!7634268 b!7634145)))

(declare-fun lambda!469228 () Int)

(assert (=> bs!1944133 (not (= lambda!469228 lambda!469214))))

(declare-fun bs!1944135 () Bool)

(assert (= bs!1944135 (and b!7634268 b!7634144)))

(assert (=> bs!1944135 (not (= lambda!469228 lambda!469215))))

(assert (=> b!7634268 true))

(assert (=> b!7634268 true))

(declare-fun bs!1944136 () Bool)

(declare-fun b!7634265 () Bool)

(assert (= bs!1944136 (and b!7634265 b!7634145)))

(declare-fun lambda!469229 () Int)

(assert (=> bs!1944136 (not (= lambda!469229 lambda!469214))))

(declare-fun bs!1944137 () Bool)

(assert (= bs!1944137 (and b!7634265 b!7634144)))

(assert (=> bs!1944137 (= (and (= (_1!37980 cut!19) s!9605) (= (regOne!41308 (regOne!41308 r!14126)) (regOne!41308 r!14126)) (= (regTwo!41308 (regOne!41308 r!14126)) (regTwo!41308 r!14126))) (= lambda!469229 lambda!469215))))

(declare-fun bs!1944138 () Bool)

(assert (= bs!1944138 (and b!7634265 b!7634268)))

(assert (=> bs!1944138 (not (= lambda!469229 lambda!469228))))

(assert (=> b!7634265 true))

(assert (=> b!7634265 true))

(declare-fun b!7634262 () Bool)

(declare-fun c!1406362 () Bool)

(assert (=> b!7634262 (= c!1406362 (is-Union!20398 (regOne!41308 r!14126)))))

(declare-fun e!4538431 () Bool)

(declare-fun e!4538432 () Bool)

(assert (=> b!7634262 (= e!4538431 e!4538432)))

(declare-fun bm!700774 () Bool)

(declare-fun call!700779 () Bool)

(declare-fun isEmpty!41762 (List!73249) Bool)

(assert (=> bm!700774 (= call!700779 (isEmpty!41762 (_1!37980 cut!19)))))

(declare-fun d!2324479 () Bool)

(declare-fun c!1406359 () Bool)

(assert (=> d!2324479 (= c!1406359 (is-EmptyExpr!20398 (regOne!41308 r!14126)))))

(declare-fun e!4538428 () Bool)

(assert (=> d!2324479 (= (matchRSpec!4543 (regOne!41308 r!14126) (_1!37980 cut!19)) e!4538428)))

(declare-fun b!7634263 () Bool)

(declare-fun e!4538434 () Bool)

(assert (=> b!7634263 (= e!4538432 e!4538434)))

(declare-fun c!1406360 () Bool)

(assert (=> b!7634263 (= c!1406360 (is-Star!20398 (regOne!41308 r!14126)))))

(declare-fun b!7634264 () Bool)

(declare-fun e!4538429 () Bool)

(assert (=> b!7634264 (= e!4538432 e!4538429)))

(declare-fun res!3057502 () Bool)

(assert (=> b!7634264 (= res!3057502 (matchRSpec!4543 (regOne!41309 (regOne!41308 r!14126)) (_1!37980 cut!19)))))

(assert (=> b!7634264 (=> res!3057502 e!4538429)))

(declare-fun call!700780 () Bool)

(assert (=> b!7634265 (= e!4538434 call!700780)))

(declare-fun b!7634266 () Bool)

(assert (=> b!7634266 (= e!4538428 call!700779)))

(declare-fun b!7634267 () Bool)

(assert (=> b!7634267 (= e!4538431 (= (_1!37980 cut!19) (Cons!73125 (c!1406346 (regOne!41308 r!14126)) Nil!73125)))))

(declare-fun e!4538430 () Bool)

(assert (=> b!7634268 (= e!4538430 call!700780)))

(declare-fun b!7634269 () Bool)

(declare-fun c!1406361 () Bool)

(assert (=> b!7634269 (= c!1406361 (is-ElementMatch!20398 (regOne!41308 r!14126)))))

(declare-fun e!4538433 () Bool)

(assert (=> b!7634269 (= e!4538433 e!4538431)))

(declare-fun b!7634270 () Bool)

(assert (=> b!7634270 (= e!4538429 (matchRSpec!4543 (regTwo!41309 (regOne!41308 r!14126)) (_1!37980 cut!19)))))

(declare-fun bm!700775 () Bool)

(assert (=> bm!700775 (= call!700780 (Exists!4552 (ite c!1406360 lambda!469228 lambda!469229)))))

(declare-fun b!7634271 () Bool)

(declare-fun res!3057503 () Bool)

(assert (=> b!7634271 (=> res!3057503 e!4538430)))

(assert (=> b!7634271 (= res!3057503 call!700779)))

(assert (=> b!7634271 (= e!4538434 e!4538430)))

(declare-fun b!7634272 () Bool)

(assert (=> b!7634272 (= e!4538428 e!4538433)))

(declare-fun res!3057501 () Bool)

(assert (=> b!7634272 (= res!3057501 (not (is-EmptyLang!20398 (regOne!41308 r!14126))))))

(assert (=> b!7634272 (=> (not res!3057501) (not e!4538433))))

(assert (= (and d!2324479 c!1406359) b!7634266))

(assert (= (and d!2324479 (not c!1406359)) b!7634272))

(assert (= (and b!7634272 res!3057501) b!7634269))

(assert (= (and b!7634269 c!1406361) b!7634267))

(assert (= (and b!7634269 (not c!1406361)) b!7634262))

(assert (= (and b!7634262 c!1406362) b!7634264))

(assert (= (and b!7634262 (not c!1406362)) b!7634263))

(assert (= (and b!7634264 (not res!3057502)) b!7634270))

(assert (= (and b!7634263 c!1406360) b!7634271))

(assert (= (and b!7634263 (not c!1406360)) b!7634265))

(assert (= (and b!7634271 (not res!3057503)) b!7634268))

(assert (= (or b!7634268 b!7634265) bm!700775))

(assert (= (or b!7634266 b!7634271) bm!700774))

(declare-fun m!8159680 () Bool)

(assert (=> bm!700774 m!8159680))

(declare-fun m!8159682 () Bool)

(assert (=> b!7634264 m!8159682))

(declare-fun m!8159684 () Bool)

(assert (=> b!7634270 m!8159684))

(declare-fun m!8159686 () Bool)

(assert (=> bm!700775 m!8159686))

(assert (=> b!7634142 d!2324479))

(declare-fun d!2324485 () Bool)

(assert (=> d!2324485 (= (get!25862 lt!2659276) (v!54605 lt!2659276))))

(assert (=> b!7634148 d!2324485))

(declare-fun d!2324487 () Bool)

(assert (=> d!2324487 (matchR!9901 (Concat!29243 (regOne!41308 r!14126) (regTwo!41308 r!14126)) (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274)))))

(declare-fun lt!2659299 () Unit!167744)

(declare-fun choose!58941 (Regex!20398 Regex!20398 List!73249 List!73249 List!73249) Unit!167744)

(assert (=> d!2324487 (= lt!2659299 (choose!58941 (regOne!41308 r!14126) (regTwo!41308 r!14126) (_1!37980 lt!2659274) (_2!37980 lt!2659274) s!9605))))

(assert (=> d!2324487 (validRegex!10816 (regOne!41308 r!14126))))

(assert (=> d!2324487 (= (lemmaFindSeparationIsDefinedThenConcatMatches!155 (regOne!41308 r!14126) (regTwo!41308 r!14126) (_1!37980 lt!2659274) (_2!37980 lt!2659274) s!9605) lt!2659299)))

(declare-fun bs!1944139 () Bool)

(assert (= bs!1944139 d!2324487))

(assert (=> bs!1944139 m!8159640))

(assert (=> bs!1944139 m!8159640))

(declare-fun m!8159688 () Bool)

(assert (=> bs!1944139 m!8159688))

(declare-fun m!8159690 () Bool)

(assert (=> bs!1944139 m!8159690))

(declare-fun m!8159692 () Bool)

(assert (=> bs!1944139 m!8159692))

(assert (=> b!7634148 d!2324487))

(declare-fun bm!700778 () Bool)

(declare-fun call!700783 () Bool)

(assert (=> bm!700778 (= call!700783 (isEmpty!41762 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))))))

(declare-fun b!7634325 () Bool)

(declare-fun res!3057532 () Bool)

(declare-fun e!4538465 () Bool)

(assert (=> b!7634325 (=> res!3057532 e!4538465)))

(assert (=> b!7634325 (= res!3057532 (not (is-ElementMatch!20398 r!14126)))))

(declare-fun e!4538467 () Bool)

(assert (=> b!7634325 (= e!4538467 e!4538465)))

(declare-fun b!7634326 () Bool)

(declare-fun e!4538469 () Bool)

(assert (=> b!7634326 (= e!4538465 e!4538469)))

(declare-fun res!3057535 () Bool)

(assert (=> b!7634326 (=> (not res!3057535) (not e!4538469))))

(declare-fun lt!2659302 () Bool)

(assert (=> b!7634326 (= res!3057535 (not lt!2659302))))

(declare-fun b!7634327 () Bool)

(declare-fun e!4538470 () Bool)

(declare-fun head!15698 (List!73249) C!41122)

(assert (=> b!7634327 (= e!4538470 (not (= (head!15698 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))) (c!1406346 r!14126))))))

(declare-fun b!7634328 () Bool)

(declare-fun res!3057531 () Bool)

(declare-fun e!4538471 () Bool)

(assert (=> b!7634328 (=> (not res!3057531) (not e!4538471))))

(declare-fun tail!15238 (List!73249) List!73249)

(assert (=> b!7634328 (= res!3057531 (isEmpty!41762 (tail!15238 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274)))))))

(declare-fun b!7634329 () Bool)

(declare-fun e!4538468 () Bool)

(declare-fun nullable!8925 (Regex!20398) Bool)

(assert (=> b!7634329 (= e!4538468 (nullable!8925 r!14126))))

(declare-fun b!7634330 () Bool)

(declare-fun res!3057528 () Bool)

(assert (=> b!7634330 (=> (not res!3057528) (not e!4538471))))

(assert (=> b!7634330 (= res!3057528 (not call!700783))))

(declare-fun b!7634331 () Bool)

(assert (=> b!7634331 (= e!4538467 (not lt!2659302))))

(declare-fun b!7634332 () Bool)

(assert (=> b!7634332 (= e!4538471 (= (head!15698 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))) (c!1406346 r!14126)))))

(declare-fun b!7634333 () Bool)

(assert (=> b!7634333 (= e!4538469 e!4538470)))

(declare-fun res!3057534 () Bool)

(assert (=> b!7634333 (=> res!3057534 e!4538470)))

(assert (=> b!7634333 (= res!3057534 call!700783)))

(declare-fun b!7634334 () Bool)

(declare-fun e!4538466 () Bool)

(assert (=> b!7634334 (= e!4538466 (= lt!2659302 call!700783))))

(declare-fun b!7634335 () Bool)

(assert (=> b!7634335 (= e!4538466 e!4538467)))

(declare-fun c!1406379 () Bool)

(assert (=> b!7634335 (= c!1406379 (is-EmptyLang!20398 r!14126))))

(declare-fun d!2324489 () Bool)

(assert (=> d!2324489 e!4538466))

(declare-fun c!1406378 () Bool)

(assert (=> d!2324489 (= c!1406378 (is-EmptyExpr!20398 r!14126))))

(assert (=> d!2324489 (= lt!2659302 e!4538468)))

(declare-fun c!1406377 () Bool)

(assert (=> d!2324489 (= c!1406377 (isEmpty!41762 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))))))

(assert (=> d!2324489 (validRegex!10816 r!14126)))

(assert (=> d!2324489 (= (matchR!9901 r!14126 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))) lt!2659302)))

(declare-fun b!7634336 () Bool)

(declare-fun res!3057530 () Bool)

(assert (=> b!7634336 (=> res!3057530 e!4538465)))

(assert (=> b!7634336 (= res!3057530 e!4538471)))

(declare-fun res!3057529 () Bool)

(assert (=> b!7634336 (=> (not res!3057529) (not e!4538471))))

(assert (=> b!7634336 (= res!3057529 lt!2659302)))

(declare-fun b!7634337 () Bool)

(declare-fun derivativeStep!5898 (Regex!20398 C!41122) Regex!20398)

(assert (=> b!7634337 (= e!4538468 (matchR!9901 (derivativeStep!5898 r!14126 (head!15698 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274)))) (tail!15238 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274)))))))

(declare-fun b!7634338 () Bool)

(declare-fun res!3057533 () Bool)

(assert (=> b!7634338 (=> res!3057533 e!4538470)))

(assert (=> b!7634338 (= res!3057533 (not (isEmpty!41762 (tail!15238 (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274))))))))

(assert (= (and d!2324489 c!1406377) b!7634329))

(assert (= (and d!2324489 (not c!1406377)) b!7634337))

(assert (= (and d!2324489 c!1406378) b!7634334))

(assert (= (and d!2324489 (not c!1406378)) b!7634335))

(assert (= (and b!7634335 c!1406379) b!7634331))

(assert (= (and b!7634335 (not c!1406379)) b!7634325))

(assert (= (and b!7634325 (not res!3057532)) b!7634336))

(assert (= (and b!7634336 res!3057529) b!7634330))

(assert (= (and b!7634330 res!3057528) b!7634328))

(assert (= (and b!7634328 res!3057531) b!7634332))

(assert (= (and b!7634336 (not res!3057530)) b!7634326))

(assert (= (and b!7634326 res!3057535) b!7634333))

(assert (= (and b!7634333 (not res!3057534)) b!7634338))

(assert (= (and b!7634338 (not res!3057533)) b!7634327))

(assert (= (or b!7634334 b!7634330 b!7634333) bm!700778))

(assert (=> d!2324489 m!8159640))

(declare-fun m!8159702 () Bool)

(assert (=> d!2324489 m!8159702))

(assert (=> d!2324489 m!8159624))

(declare-fun m!8159704 () Bool)

(assert (=> b!7634329 m!8159704))

(assert (=> b!7634338 m!8159640))

(declare-fun m!8159706 () Bool)

(assert (=> b!7634338 m!8159706))

(assert (=> b!7634338 m!8159706))

(declare-fun m!8159708 () Bool)

(assert (=> b!7634338 m!8159708))

(assert (=> b!7634337 m!8159640))

(declare-fun m!8159710 () Bool)

(assert (=> b!7634337 m!8159710))

(assert (=> b!7634337 m!8159710))

(declare-fun m!8159712 () Bool)

(assert (=> b!7634337 m!8159712))

(assert (=> b!7634337 m!8159640))

(assert (=> b!7634337 m!8159706))

(assert (=> b!7634337 m!8159712))

(assert (=> b!7634337 m!8159706))

(declare-fun m!8159714 () Bool)

(assert (=> b!7634337 m!8159714))

(assert (=> b!7634328 m!8159640))

(assert (=> b!7634328 m!8159706))

(assert (=> b!7634328 m!8159706))

(assert (=> b!7634328 m!8159708))

(assert (=> b!7634332 m!8159640))

(assert (=> b!7634332 m!8159710))

(assert (=> b!7634327 m!8159640))

(assert (=> b!7634327 m!8159710))

(assert (=> bm!700778 m!8159640))

(assert (=> bm!700778 m!8159702))

(assert (=> b!7634148 d!2324489))

(declare-fun b!7634386 () Bool)

(declare-fun res!3057562 () Bool)

(declare-fun e!4538500 () Bool)

(assert (=> b!7634386 (=> (not res!3057562) (not e!4538500))))

(declare-fun lt!2659305 () List!73249)

(declare-fun size!42574 (List!73249) Int)

(assert (=> b!7634386 (= res!3057562 (= (size!42574 lt!2659305) (+ (size!42574 (_1!37980 lt!2659274)) (size!42574 (_2!37980 lt!2659274)))))))

(declare-fun d!2324493 () Bool)

(assert (=> d!2324493 e!4538500))

(declare-fun res!3057561 () Bool)

(assert (=> d!2324493 (=> (not res!3057561) (not e!4538500))))

(declare-fun content!15481 (List!73249) (Set C!41122))

(assert (=> d!2324493 (= res!3057561 (= (content!15481 lt!2659305) (set.union (content!15481 (_1!37980 lt!2659274)) (content!15481 (_2!37980 lt!2659274)))))))

(declare-fun e!4538499 () List!73249)

(assert (=> d!2324493 (= lt!2659305 e!4538499)))

(declare-fun c!1406390 () Bool)

(assert (=> d!2324493 (= c!1406390 (is-Nil!73125 (_1!37980 lt!2659274)))))

(assert (=> d!2324493 (= (++!17678 (_1!37980 lt!2659274) (_2!37980 lt!2659274)) lt!2659305)))

(declare-fun b!7634385 () Bool)

(assert (=> b!7634385 (= e!4538499 (Cons!73125 (h!79573 (_1!37980 lt!2659274)) (++!17678 (t!387984 (_1!37980 lt!2659274)) (_2!37980 lt!2659274))))))

(declare-fun b!7634384 () Bool)

(assert (=> b!7634384 (= e!4538499 (_2!37980 lt!2659274))))

(declare-fun b!7634387 () Bool)

(assert (=> b!7634387 (= e!4538500 (or (not (= (_2!37980 lt!2659274) Nil!73125)) (= lt!2659305 (_1!37980 lt!2659274))))))

(assert (= (and d!2324493 c!1406390) b!7634384))

(assert (= (and d!2324493 (not c!1406390)) b!7634385))

(assert (= (and d!2324493 res!3057561) b!7634386))

(assert (= (and b!7634386 res!3057562) b!7634387))

(declare-fun m!8159716 () Bool)

(assert (=> b!7634386 m!8159716))

(declare-fun m!8159718 () Bool)

(assert (=> b!7634386 m!8159718))

(declare-fun m!8159720 () Bool)

(assert (=> b!7634386 m!8159720))

(declare-fun m!8159722 () Bool)

(assert (=> d!2324493 m!8159722))

(declare-fun m!8159724 () Bool)

(assert (=> d!2324493 m!8159724))

(declare-fun m!8159726 () Bool)

(assert (=> d!2324493 m!8159726))

(declare-fun m!8159728 () Bool)

(assert (=> b!7634385 m!8159728))

(assert (=> b!7634148 d!2324493))

(declare-fun d!2324495 () Bool)

(declare-fun choose!58942 (Int) Bool)

(assert (=> d!2324495 (= (Exists!4552 lambda!469214) (choose!58942 lambda!469214))))

(declare-fun bs!1944145 () Bool)

(assert (= bs!1944145 d!2324495))

(declare-fun m!8159730 () Bool)

(assert (=> bs!1944145 m!8159730))

(assert (=> b!7634154 d!2324495))

(declare-fun d!2324497 () Bool)

(assert (=> d!2324497 (= (Exists!4552 lambda!469215) (choose!58942 lambda!469215))))

(declare-fun bs!1944146 () Bool)

(assert (= bs!1944146 d!2324497))

(declare-fun m!8159732 () Bool)

(assert (=> bs!1944146 m!8159732))

(assert (=> b!7634144 d!2324497))

(declare-fun bm!700794 () Bool)

(declare-fun call!700799 () Bool)

(assert (=> bm!700794 (= call!700799 (isEmpty!41762 s!9605))))

(declare-fun b!7634397 () Bool)

(declare-fun res!3057572 () Bool)

(declare-fun e!4538508 () Bool)

(assert (=> b!7634397 (=> res!3057572 e!4538508)))

(assert (=> b!7634397 (= res!3057572 (not (is-ElementMatch!20398 r!14126)))))

(declare-fun e!4538510 () Bool)

(assert (=> b!7634397 (= e!4538510 e!4538508)))

(declare-fun b!7634398 () Bool)

(declare-fun e!4538512 () Bool)

(assert (=> b!7634398 (= e!4538508 e!4538512)))

(declare-fun res!3057575 () Bool)

(assert (=> b!7634398 (=> (not res!3057575) (not e!4538512))))

(declare-fun lt!2659306 () Bool)

(assert (=> b!7634398 (= res!3057575 (not lt!2659306))))

(declare-fun b!7634399 () Bool)

(declare-fun e!4538513 () Bool)

(assert (=> b!7634399 (= e!4538513 (not (= (head!15698 s!9605) (c!1406346 r!14126))))))

(declare-fun b!7634400 () Bool)

(declare-fun res!3057571 () Bool)

(declare-fun e!4538514 () Bool)

(assert (=> b!7634400 (=> (not res!3057571) (not e!4538514))))

(assert (=> b!7634400 (= res!3057571 (isEmpty!41762 (tail!15238 s!9605)))))

(declare-fun b!7634401 () Bool)

(declare-fun e!4538511 () Bool)

(assert (=> b!7634401 (= e!4538511 (nullable!8925 r!14126))))

(declare-fun b!7634402 () Bool)

(declare-fun res!3057568 () Bool)

(assert (=> b!7634402 (=> (not res!3057568) (not e!4538514))))

(assert (=> b!7634402 (= res!3057568 (not call!700799))))

(declare-fun b!7634403 () Bool)

(assert (=> b!7634403 (= e!4538510 (not lt!2659306))))

(declare-fun b!7634404 () Bool)

(assert (=> b!7634404 (= e!4538514 (= (head!15698 s!9605) (c!1406346 r!14126)))))

(declare-fun b!7634405 () Bool)

(assert (=> b!7634405 (= e!4538512 e!4538513)))

(declare-fun res!3057574 () Bool)

(assert (=> b!7634405 (=> res!3057574 e!4538513)))

(assert (=> b!7634405 (= res!3057574 call!700799)))

(declare-fun b!7634406 () Bool)

(declare-fun e!4538509 () Bool)

(assert (=> b!7634406 (= e!4538509 (= lt!2659306 call!700799))))

(declare-fun b!7634407 () Bool)

(assert (=> b!7634407 (= e!4538509 e!4538510)))

(declare-fun c!1406395 () Bool)

(assert (=> b!7634407 (= c!1406395 (is-EmptyLang!20398 r!14126))))

(declare-fun d!2324499 () Bool)

(assert (=> d!2324499 e!4538509))

(declare-fun c!1406394 () Bool)

(assert (=> d!2324499 (= c!1406394 (is-EmptyExpr!20398 r!14126))))

(assert (=> d!2324499 (= lt!2659306 e!4538511)))

(declare-fun c!1406393 () Bool)

(assert (=> d!2324499 (= c!1406393 (isEmpty!41762 s!9605))))

(assert (=> d!2324499 (validRegex!10816 r!14126)))

(assert (=> d!2324499 (= (matchR!9901 r!14126 s!9605) lt!2659306)))

(declare-fun b!7634408 () Bool)

(declare-fun res!3057570 () Bool)

(assert (=> b!7634408 (=> res!3057570 e!4538508)))

(assert (=> b!7634408 (= res!3057570 e!4538514)))

(declare-fun res!3057569 () Bool)

(assert (=> b!7634408 (=> (not res!3057569) (not e!4538514))))

(assert (=> b!7634408 (= res!3057569 lt!2659306)))

(declare-fun b!7634409 () Bool)

(assert (=> b!7634409 (= e!4538511 (matchR!9901 (derivativeStep!5898 r!14126 (head!15698 s!9605)) (tail!15238 s!9605)))))

(declare-fun b!7634410 () Bool)

(declare-fun res!3057573 () Bool)

(assert (=> b!7634410 (=> res!3057573 e!4538513)))

(assert (=> b!7634410 (= res!3057573 (not (isEmpty!41762 (tail!15238 s!9605))))))

(assert (= (and d!2324499 c!1406393) b!7634401))

(assert (= (and d!2324499 (not c!1406393)) b!7634409))

(assert (= (and d!2324499 c!1406394) b!7634406))

(assert (= (and d!2324499 (not c!1406394)) b!7634407))

(assert (= (and b!7634407 c!1406395) b!7634403))

(assert (= (and b!7634407 (not c!1406395)) b!7634397))

(assert (= (and b!7634397 (not res!3057572)) b!7634408))

(assert (= (and b!7634408 res!3057569) b!7634402))

(assert (= (and b!7634402 res!3057568) b!7634400))

(assert (= (and b!7634400 res!3057571) b!7634404))

(assert (= (and b!7634408 (not res!3057570)) b!7634398))

(assert (= (and b!7634398 res!3057575) b!7634405))

(assert (= (and b!7634405 (not res!3057574)) b!7634410))

(assert (= (and b!7634410 (not res!3057573)) b!7634399))

(assert (= (or b!7634406 b!7634402 b!7634405) bm!700794))

(declare-fun m!8159734 () Bool)

(assert (=> d!2324499 m!8159734))

(assert (=> d!2324499 m!8159624))

(assert (=> b!7634401 m!8159704))

(declare-fun m!8159736 () Bool)

(assert (=> b!7634410 m!8159736))

(assert (=> b!7634410 m!8159736))

(declare-fun m!8159738 () Bool)

(assert (=> b!7634410 m!8159738))

(declare-fun m!8159740 () Bool)

(assert (=> b!7634409 m!8159740))

(assert (=> b!7634409 m!8159740))

(declare-fun m!8159742 () Bool)

(assert (=> b!7634409 m!8159742))

(assert (=> b!7634409 m!8159736))

(assert (=> b!7634409 m!8159742))

(assert (=> b!7634409 m!8159736))

(declare-fun m!8159744 () Bool)

(assert (=> b!7634409 m!8159744))

(assert (=> b!7634400 m!8159736))

(assert (=> b!7634400 m!8159736))

(assert (=> b!7634400 m!8159738))

(assert (=> b!7634404 m!8159740))

(assert (=> b!7634399 m!8159740))

(assert (=> bm!700794 m!8159734))

(assert (=> b!7634145 d!2324499))

(declare-fun bs!1944147 () Bool)

(declare-fun d!2324501 () Bool)

(assert (= bs!1944147 (and d!2324501 b!7634145)))

(declare-fun lambda!469238 () Int)

(assert (=> bs!1944147 (= lambda!469238 lambda!469214)))

(declare-fun bs!1944148 () Bool)

(assert (= bs!1944148 (and d!2324501 b!7634144)))

(assert (=> bs!1944148 (not (= lambda!469238 lambda!469215))))

(declare-fun bs!1944149 () Bool)

(assert (= bs!1944149 (and d!2324501 b!7634268)))

(assert (=> bs!1944149 (not (= lambda!469238 lambda!469228))))

(declare-fun bs!1944150 () Bool)

(assert (= bs!1944150 (and d!2324501 b!7634265)))

(assert (=> bs!1944150 (not (= lambda!469238 lambda!469229))))

(assert (=> d!2324501 true))

(assert (=> d!2324501 true))

(assert (=> d!2324501 true))

(assert (=> d!2324501 (= (isDefined!14087 (findConcatSeparation!3501 (regOne!41308 r!14126) (regTwo!41308 r!14126) Nil!73125 s!9605 s!9605)) (Exists!4552 lambda!469238))))

(declare-fun lt!2659311 () Unit!167744)

(declare-fun choose!58943 (Regex!20398 Regex!20398 List!73249) Unit!167744)

(assert (=> d!2324501 (= lt!2659311 (choose!58943 (regOne!41308 r!14126) (regTwo!41308 r!14126) s!9605))))

(assert (=> d!2324501 (validRegex!10816 (regOne!41308 r!14126))))

(assert (=> d!2324501 (= (lemmaFindConcatSeparationEquivalentToExists!3259 (regOne!41308 r!14126) (regTwo!41308 r!14126) s!9605) lt!2659311)))

(declare-fun bs!1944151 () Bool)

(assert (= bs!1944151 d!2324501))

(assert (=> bs!1944151 m!8159692))

(assert (=> bs!1944151 m!8159630))

(declare-fun m!8159752 () Bool)

(assert (=> bs!1944151 m!8159752))

(declare-fun m!8159754 () Bool)

(assert (=> bs!1944151 m!8159754))

(assert (=> bs!1944151 m!8159630))

(declare-fun m!8159756 () Bool)

(assert (=> bs!1944151 m!8159756))

(assert (=> b!7634145 d!2324501))

(assert (=> b!7634145 d!2324495))

(declare-fun b!7634455 () Bool)

(declare-fun e!4538541 () Bool)

(declare-fun lt!2659322 () Option!17471)

(assert (=> b!7634455 (= e!4538541 (not (isDefined!14087 lt!2659322)))))

(declare-fun b!7634456 () Bool)

(declare-fun lt!2659323 () Unit!167744)

(declare-fun lt!2659321 () Unit!167744)

(assert (=> b!7634456 (= lt!2659323 lt!2659321)))

(assert (=> b!7634456 (= (++!17678 (++!17678 Nil!73125 (Cons!73125 (h!79573 s!9605) Nil!73125)) (t!387984 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3252 (List!73249 C!41122 List!73249 List!73249) Unit!167744)

(assert (=> b!7634456 (= lt!2659321 (lemmaMoveElementToOtherListKeepsConcatEq!3252 Nil!73125 (h!79573 s!9605) (t!387984 s!9605) s!9605))))

(declare-fun e!4538539 () Option!17471)

(assert (=> b!7634456 (= e!4538539 (findConcatSeparation!3501 (regOne!41308 r!14126) (regTwo!41308 r!14126) (++!17678 Nil!73125 (Cons!73125 (h!79573 s!9605) Nil!73125)) (t!387984 s!9605) s!9605))))

(declare-fun b!7634457 () Bool)

(declare-fun res!3057601 () Bool)

(declare-fun e!4538538 () Bool)

(assert (=> b!7634457 (=> (not res!3057601) (not e!4538538))))

(assert (=> b!7634457 (= res!3057601 (matchR!9901 (regOne!41308 r!14126) (_1!37980 (get!25862 lt!2659322))))))

(declare-fun b!7634459 () Bool)

(declare-fun e!4538537 () Bool)

(assert (=> b!7634459 (= e!4538537 (matchR!9901 (regTwo!41308 r!14126) s!9605))))

(declare-fun b!7634460 () Bool)

(declare-fun e!4538540 () Option!17471)

(assert (=> b!7634460 (= e!4538540 e!4538539)))

(declare-fun c!1406407 () Bool)

(assert (=> b!7634460 (= c!1406407 (is-Nil!73125 s!9605))))

(declare-fun b!7634461 () Bool)

(assert (=> b!7634461 (= e!4538539 None!17470)))

(declare-fun d!2324507 () Bool)

(assert (=> d!2324507 e!4538541))

(declare-fun res!3057604 () Bool)

(assert (=> d!2324507 (=> res!3057604 e!4538541)))

(assert (=> d!2324507 (= res!3057604 e!4538538)))

(declare-fun res!3057603 () Bool)

(assert (=> d!2324507 (=> (not res!3057603) (not e!4538538))))

(assert (=> d!2324507 (= res!3057603 (isDefined!14087 lt!2659322))))

(assert (=> d!2324507 (= lt!2659322 e!4538540)))

(declare-fun c!1406406 () Bool)

(assert (=> d!2324507 (= c!1406406 e!4538537)))

(declare-fun res!3057600 () Bool)

(assert (=> d!2324507 (=> (not res!3057600) (not e!4538537))))

(assert (=> d!2324507 (= res!3057600 (matchR!9901 (regOne!41308 r!14126) Nil!73125))))

(assert (=> d!2324507 (validRegex!10816 (regOne!41308 r!14126))))

(assert (=> d!2324507 (= (findConcatSeparation!3501 (regOne!41308 r!14126) (regTwo!41308 r!14126) Nil!73125 s!9605 s!9605) lt!2659322)))

(declare-fun b!7634458 () Bool)

(assert (=> b!7634458 (= e!4538540 (Some!17470 (tuple2!69355 Nil!73125 s!9605)))))

(declare-fun b!7634462 () Bool)

(assert (=> b!7634462 (= e!4538538 (= (++!17678 (_1!37980 (get!25862 lt!2659322)) (_2!37980 (get!25862 lt!2659322))) s!9605))))

(declare-fun b!7634463 () Bool)

(declare-fun res!3057602 () Bool)

(assert (=> b!7634463 (=> (not res!3057602) (not e!4538538))))

(assert (=> b!7634463 (= res!3057602 (matchR!9901 (regTwo!41308 r!14126) (_2!37980 (get!25862 lt!2659322))))))

(assert (= (and d!2324507 res!3057600) b!7634459))

(assert (= (and d!2324507 c!1406406) b!7634458))

(assert (= (and d!2324507 (not c!1406406)) b!7634460))

(assert (= (and b!7634460 c!1406407) b!7634461))

(assert (= (and b!7634460 (not c!1406407)) b!7634456))

(assert (= (and d!2324507 res!3057603) b!7634457))

(assert (= (and b!7634457 res!3057601) b!7634463))

(assert (= (and b!7634463 res!3057602) b!7634462))

(assert (= (and d!2324507 (not res!3057604)) b!7634455))

(declare-fun m!8159764 () Bool)

(assert (=> b!7634455 m!8159764))

(assert (=> d!2324507 m!8159764))

(declare-fun m!8159766 () Bool)

(assert (=> d!2324507 m!8159766))

(assert (=> d!2324507 m!8159692))

(declare-fun m!8159768 () Bool)

(assert (=> b!7634463 m!8159768))

(declare-fun m!8159770 () Bool)

(assert (=> b!7634463 m!8159770))

(declare-fun m!8159772 () Bool)

(assert (=> b!7634459 m!8159772))

(declare-fun m!8159774 () Bool)

(assert (=> b!7634456 m!8159774))

(assert (=> b!7634456 m!8159774))

(declare-fun m!8159776 () Bool)

(assert (=> b!7634456 m!8159776))

(declare-fun m!8159778 () Bool)

(assert (=> b!7634456 m!8159778))

(assert (=> b!7634456 m!8159774))

(declare-fun m!8159780 () Bool)

(assert (=> b!7634456 m!8159780))

(assert (=> b!7634457 m!8159768))

(declare-fun m!8159782 () Bool)

(assert (=> b!7634457 m!8159782))

(assert (=> b!7634462 m!8159768))

(declare-fun m!8159784 () Bool)

(assert (=> b!7634462 m!8159784))

(assert (=> b!7634145 d!2324507))

(declare-fun d!2324511 () Bool)

(declare-fun isEmpty!41763 (Option!17471) Bool)

(assert (=> d!2324511 (= (isDefined!14087 lt!2659276) (not (isEmpty!41763 lt!2659276)))))

(declare-fun bs!1944153 () Bool)

(assert (= bs!1944153 d!2324511))

(declare-fun m!8159786 () Bool)

(assert (=> bs!1944153 m!8159786))

(assert (=> b!7634145 d!2324511))

(declare-fun b!7634488 () Bool)

(declare-fun e!4538560 () Bool)

(declare-fun call!700810 () Bool)

(assert (=> b!7634488 (= e!4538560 call!700810)))

(declare-fun b!7634489 () Bool)

(declare-fun res!3057625 () Bool)

(declare-fun e!4538562 () Bool)

(assert (=> b!7634489 (=> res!3057625 e!4538562)))

(assert (=> b!7634489 (= res!3057625 (not (is-Concat!29243 r!14126)))))

(declare-fun e!4538563 () Bool)

(assert (=> b!7634489 (= e!4538563 e!4538562)))

(declare-fun b!7634490 () Bool)

(declare-fun e!4538561 () Bool)

(declare-fun e!4538564 () Bool)

(assert (=> b!7634490 (= e!4538561 e!4538564)))

(declare-fun c!1406412 () Bool)

(assert (=> b!7634490 (= c!1406412 (is-Star!20398 r!14126))))

(declare-fun bm!700803 () Bool)

(declare-fun call!700809 () Bool)

(assert (=> bm!700803 (= call!700810 call!700809)))

(declare-fun b!7634491 () Bool)

(declare-fun e!4538566 () Bool)

(assert (=> b!7634491 (= e!4538566 call!700809)))

(declare-fun b!7634492 () Bool)

(declare-fun e!4538565 () Bool)

(assert (=> b!7634492 (= e!4538562 e!4538565)))

(declare-fun res!3057623 () Bool)

(assert (=> b!7634492 (=> (not res!3057623) (not e!4538565))))

(declare-fun call!700808 () Bool)

(assert (=> b!7634492 (= res!3057623 call!700808)))

(declare-fun b!7634493 () Bool)

(assert (=> b!7634493 (= e!4538564 e!4538566)))

(declare-fun res!3057622 () Bool)

(assert (=> b!7634493 (= res!3057622 (not (nullable!8925 (reg!20727 r!14126))))))

(assert (=> b!7634493 (=> (not res!3057622) (not e!4538566))))

(declare-fun b!7634494 () Bool)

(assert (=> b!7634494 (= e!4538565 call!700810)))

(declare-fun b!7634495 () Bool)

(assert (=> b!7634495 (= e!4538564 e!4538563)))

(declare-fun c!1406413 () Bool)

(assert (=> b!7634495 (= c!1406413 (is-Union!20398 r!14126))))

(declare-fun b!7634496 () Bool)

(declare-fun res!3057624 () Bool)

(assert (=> b!7634496 (=> (not res!3057624) (not e!4538560))))

(assert (=> b!7634496 (= res!3057624 call!700808)))

(assert (=> b!7634496 (= e!4538563 e!4538560)))

(declare-fun bm!700805 () Bool)

(assert (=> bm!700805 (= call!700809 (validRegex!10816 (ite c!1406412 (reg!20727 r!14126) (ite c!1406413 (regTwo!41309 r!14126) (regTwo!41308 r!14126)))))))

(declare-fun d!2324513 () Bool)

(declare-fun res!3057621 () Bool)

(assert (=> d!2324513 (=> res!3057621 e!4538561)))

(assert (=> d!2324513 (= res!3057621 (is-ElementMatch!20398 r!14126))))

(assert (=> d!2324513 (= (validRegex!10816 r!14126) e!4538561)))

(declare-fun bm!700804 () Bool)

(assert (=> bm!700804 (= call!700808 (validRegex!10816 (ite c!1406413 (regOne!41309 r!14126) (regOne!41308 r!14126))))))

(assert (= (and d!2324513 (not res!3057621)) b!7634490))

(assert (= (and b!7634490 c!1406412) b!7634493))

(assert (= (and b!7634490 (not c!1406412)) b!7634495))

(assert (= (and b!7634493 res!3057622) b!7634491))

(assert (= (and b!7634495 c!1406413) b!7634496))

(assert (= (and b!7634495 (not c!1406413)) b!7634489))

(assert (= (and b!7634496 res!3057624) b!7634488))

(assert (= (and b!7634489 (not res!3057625)) b!7634492))

(assert (= (and b!7634492 res!3057623) b!7634494))

(assert (= (or b!7634496 b!7634492) bm!700804))

(assert (= (or b!7634488 b!7634494) bm!700803))

(assert (= (or b!7634491 bm!700803) bm!700805))

(declare-fun m!8159788 () Bool)

(assert (=> b!7634493 m!8159788))

(declare-fun m!8159790 () Bool)

(assert (=> bm!700805 m!8159790))

(declare-fun m!8159792 () Bool)

(assert (=> bm!700804 m!8159792))

(assert (=> start!735074 d!2324513))

(declare-fun b!7634497 () Bool)

(declare-fun e!4538567 () Bool)

(declare-fun call!700813 () Bool)

(assert (=> b!7634497 (= e!4538567 call!700813)))

(declare-fun b!7634498 () Bool)

(declare-fun res!3057630 () Bool)

(declare-fun e!4538569 () Bool)

(assert (=> b!7634498 (=> res!3057630 e!4538569)))

(assert (=> b!7634498 (= res!3057630 (not (is-Concat!29243 (regTwo!41308 r!14126))))))

(declare-fun e!4538570 () Bool)

(assert (=> b!7634498 (= e!4538570 e!4538569)))

(declare-fun b!7634499 () Bool)

(declare-fun e!4538568 () Bool)

(declare-fun e!4538571 () Bool)

(assert (=> b!7634499 (= e!4538568 e!4538571)))

(declare-fun c!1406414 () Bool)

(assert (=> b!7634499 (= c!1406414 (is-Star!20398 (regTwo!41308 r!14126)))))

(declare-fun bm!700806 () Bool)

(declare-fun call!700812 () Bool)

(assert (=> bm!700806 (= call!700813 call!700812)))

(declare-fun b!7634500 () Bool)

(declare-fun e!4538573 () Bool)

(assert (=> b!7634500 (= e!4538573 call!700812)))

(declare-fun b!7634501 () Bool)

(declare-fun e!4538572 () Bool)

(assert (=> b!7634501 (= e!4538569 e!4538572)))

(declare-fun res!3057628 () Bool)

(assert (=> b!7634501 (=> (not res!3057628) (not e!4538572))))

(declare-fun call!700811 () Bool)

(assert (=> b!7634501 (= res!3057628 call!700811)))

(declare-fun b!7634502 () Bool)

(assert (=> b!7634502 (= e!4538571 e!4538573)))

(declare-fun res!3057627 () Bool)

(assert (=> b!7634502 (= res!3057627 (not (nullable!8925 (reg!20727 (regTwo!41308 r!14126)))))))

(assert (=> b!7634502 (=> (not res!3057627) (not e!4538573))))

(declare-fun b!7634503 () Bool)

(assert (=> b!7634503 (= e!4538572 call!700813)))

(declare-fun b!7634504 () Bool)

(assert (=> b!7634504 (= e!4538571 e!4538570)))

(declare-fun c!1406415 () Bool)

(assert (=> b!7634504 (= c!1406415 (is-Union!20398 (regTwo!41308 r!14126)))))

(declare-fun b!7634505 () Bool)

(declare-fun res!3057629 () Bool)

(assert (=> b!7634505 (=> (not res!3057629) (not e!4538567))))

(assert (=> b!7634505 (= res!3057629 call!700811)))

(assert (=> b!7634505 (= e!4538570 e!4538567)))

(declare-fun bm!700808 () Bool)

(assert (=> bm!700808 (= call!700812 (validRegex!10816 (ite c!1406414 (reg!20727 (regTwo!41308 r!14126)) (ite c!1406415 (regTwo!41309 (regTwo!41308 r!14126)) (regTwo!41308 (regTwo!41308 r!14126))))))))

(declare-fun d!2324515 () Bool)

(declare-fun res!3057626 () Bool)

(assert (=> d!2324515 (=> res!3057626 e!4538568)))

(assert (=> d!2324515 (= res!3057626 (is-ElementMatch!20398 (regTwo!41308 r!14126)))))

(assert (=> d!2324515 (= (validRegex!10816 (regTwo!41308 r!14126)) e!4538568)))

(declare-fun bm!700807 () Bool)

(assert (=> bm!700807 (= call!700811 (validRegex!10816 (ite c!1406415 (regOne!41309 (regTwo!41308 r!14126)) (regOne!41308 (regTwo!41308 r!14126)))))))

(assert (= (and d!2324515 (not res!3057626)) b!7634499))

(assert (= (and b!7634499 c!1406414) b!7634502))

(assert (= (and b!7634499 (not c!1406414)) b!7634504))

(assert (= (and b!7634502 res!3057627) b!7634500))

(assert (= (and b!7634504 c!1406415) b!7634505))

(assert (= (and b!7634504 (not c!1406415)) b!7634498))

(assert (= (and b!7634505 res!3057629) b!7634497))

(assert (= (and b!7634498 (not res!3057630)) b!7634501))

(assert (= (and b!7634501 res!3057628) b!7634503))

(assert (= (or b!7634505 b!7634501) bm!700807))

(assert (= (or b!7634497 b!7634503) bm!700806))

(assert (= (or b!7634500 bm!700806) bm!700808))

(declare-fun m!8159794 () Bool)

(assert (=> b!7634502 m!8159794))

(declare-fun m!8159796 () Bool)

(assert (=> bm!700808 m!8159796))

(declare-fun m!8159798 () Bool)

(assert (=> bm!700807 m!8159798))

(assert (=> b!7634146 d!2324515))

(declare-fun b!7634508 () Bool)

(declare-fun res!3057632 () Bool)

(declare-fun e!4538575 () Bool)

(assert (=> b!7634508 (=> (not res!3057632) (not e!4538575))))

(declare-fun lt!2659324 () List!73249)

(assert (=> b!7634508 (= res!3057632 (= (size!42574 lt!2659324) (+ (size!42574 (_1!37980 cut!19)) (size!42574 (_2!37980 cut!19)))))))

(declare-fun d!2324517 () Bool)

(assert (=> d!2324517 e!4538575))

(declare-fun res!3057631 () Bool)

(assert (=> d!2324517 (=> (not res!3057631) (not e!4538575))))

(assert (=> d!2324517 (= res!3057631 (= (content!15481 lt!2659324) (set.union (content!15481 (_1!37980 cut!19)) (content!15481 (_2!37980 cut!19)))))))

(declare-fun e!4538574 () List!73249)

(assert (=> d!2324517 (= lt!2659324 e!4538574)))

(declare-fun c!1406416 () Bool)

(assert (=> d!2324517 (= c!1406416 (is-Nil!73125 (_1!37980 cut!19)))))

(assert (=> d!2324517 (= (++!17678 (_1!37980 cut!19) (_2!37980 cut!19)) lt!2659324)))

(declare-fun b!7634507 () Bool)

(assert (=> b!7634507 (= e!4538574 (Cons!73125 (h!79573 (_1!37980 cut!19)) (++!17678 (t!387984 (_1!37980 cut!19)) (_2!37980 cut!19))))))

(declare-fun b!7634506 () Bool)

(assert (=> b!7634506 (= e!4538574 (_2!37980 cut!19))))

(declare-fun b!7634509 () Bool)

(assert (=> b!7634509 (= e!4538575 (or (not (= (_2!37980 cut!19) Nil!73125)) (= lt!2659324 (_1!37980 cut!19))))))

(assert (= (and d!2324517 c!1406416) b!7634506))

(assert (= (and d!2324517 (not c!1406416)) b!7634507))

(assert (= (and d!2324517 res!3057631) b!7634508))

(assert (= (and b!7634508 res!3057632) b!7634509))

(declare-fun m!8159800 () Bool)

(assert (=> b!7634508 m!8159800))

(declare-fun m!8159802 () Bool)

(assert (=> b!7634508 m!8159802))

(declare-fun m!8159804 () Bool)

(assert (=> b!7634508 m!8159804))

(declare-fun m!8159806 () Bool)

(assert (=> d!2324517 m!8159806))

(declare-fun m!8159808 () Bool)

(assert (=> d!2324517 m!8159808))

(declare-fun m!8159810 () Bool)

(assert (=> d!2324517 m!8159810))

(declare-fun m!8159812 () Bool)

(assert (=> b!7634507 m!8159812))

(assert (=> b!7634152 d!2324517))

(declare-fun b!7634514 () Bool)

(declare-fun e!4538578 () Bool)

(declare-fun tp!2228748 () Bool)

(assert (=> b!7634514 (= e!4538578 (and tp_is_empty!51151 tp!2228748))))

(assert (=> b!7634153 (= tp!2228716 e!4538578)))

(assert (= (and b!7634153 (is-Cons!73125 (t!387984 (_2!37980 cut!19)))) b!7634514))

(declare-fun b!7634542 () Bool)

(declare-fun e!4538588 () Bool)

(declare-fun tp!2228760 () Bool)

(declare-fun tp!2228763 () Bool)

(assert (=> b!7634542 (= e!4538588 (and tp!2228760 tp!2228763))))

(declare-fun b!7634541 () Bool)

(declare-fun tp!2228761 () Bool)

(assert (=> b!7634541 (= e!4538588 tp!2228761)))

(declare-fun b!7634539 () Bool)

(assert (=> b!7634539 (= e!4538588 tp_is_empty!51151)))

(declare-fun b!7634540 () Bool)

(declare-fun tp!2228762 () Bool)

(declare-fun tp!2228759 () Bool)

(assert (=> b!7634540 (= e!4538588 (and tp!2228762 tp!2228759))))

(assert (=> b!7634149 (= tp!2228717 e!4538588)))

(assert (= (and b!7634149 (is-ElementMatch!20398 (regOne!41309 r!14126))) b!7634539))

(assert (= (and b!7634149 (is-Concat!29243 (regOne!41309 r!14126))) b!7634540))

(assert (= (and b!7634149 (is-Star!20398 (regOne!41309 r!14126))) b!7634541))

(assert (= (and b!7634149 (is-Union!20398 (regOne!41309 r!14126))) b!7634542))

(declare-fun b!7634546 () Bool)

(declare-fun e!4538589 () Bool)

(declare-fun tp!2228765 () Bool)

(declare-fun tp!2228768 () Bool)

(assert (=> b!7634546 (= e!4538589 (and tp!2228765 tp!2228768))))

(declare-fun b!7634545 () Bool)

(declare-fun tp!2228766 () Bool)

(assert (=> b!7634545 (= e!4538589 tp!2228766)))

(declare-fun b!7634543 () Bool)

(assert (=> b!7634543 (= e!4538589 tp_is_empty!51151)))

(declare-fun b!7634544 () Bool)

(declare-fun tp!2228767 () Bool)

(declare-fun tp!2228764 () Bool)

(assert (=> b!7634544 (= e!4538589 (and tp!2228767 tp!2228764))))

(assert (=> b!7634149 (= tp!2228719 e!4538589)))

(assert (= (and b!7634149 (is-ElementMatch!20398 (regTwo!41309 r!14126))) b!7634543))

(assert (= (and b!7634149 (is-Concat!29243 (regTwo!41309 r!14126))) b!7634544))

(assert (= (and b!7634149 (is-Star!20398 (regTwo!41309 r!14126))) b!7634545))

(assert (= (and b!7634149 (is-Union!20398 (regTwo!41309 r!14126))) b!7634546))

(declare-fun b!7634550 () Bool)

(declare-fun e!4538590 () Bool)

(declare-fun tp!2228770 () Bool)

(declare-fun tp!2228773 () Bool)

(assert (=> b!7634550 (= e!4538590 (and tp!2228770 tp!2228773))))

(declare-fun b!7634549 () Bool)

(declare-fun tp!2228771 () Bool)

(assert (=> b!7634549 (= e!4538590 tp!2228771)))

(declare-fun b!7634547 () Bool)

(assert (=> b!7634547 (= e!4538590 tp_is_empty!51151)))

(declare-fun b!7634548 () Bool)

(declare-fun tp!2228772 () Bool)

(declare-fun tp!2228769 () Bool)

(assert (=> b!7634548 (= e!4538590 (and tp!2228772 tp!2228769))))

(assert (=> b!7634150 (= tp!2228721 e!4538590)))

(assert (= (and b!7634150 (is-ElementMatch!20398 (regOne!41308 r!14126))) b!7634547))

(assert (= (and b!7634150 (is-Concat!29243 (regOne!41308 r!14126))) b!7634548))

(assert (= (and b!7634150 (is-Star!20398 (regOne!41308 r!14126))) b!7634549))

(assert (= (and b!7634150 (is-Union!20398 (regOne!41308 r!14126))) b!7634550))

(declare-fun b!7634554 () Bool)

(declare-fun e!4538591 () Bool)

(declare-fun tp!2228775 () Bool)

(declare-fun tp!2228778 () Bool)

(assert (=> b!7634554 (= e!4538591 (and tp!2228775 tp!2228778))))

(declare-fun b!7634553 () Bool)

(declare-fun tp!2228776 () Bool)

(assert (=> b!7634553 (= e!4538591 tp!2228776)))

(declare-fun b!7634551 () Bool)

(assert (=> b!7634551 (= e!4538591 tp_is_empty!51151)))

(declare-fun b!7634552 () Bool)

(declare-fun tp!2228777 () Bool)

(declare-fun tp!2228774 () Bool)

(assert (=> b!7634552 (= e!4538591 (and tp!2228777 tp!2228774))))

(assert (=> b!7634150 (= tp!2228718 e!4538591)))

(assert (= (and b!7634150 (is-ElementMatch!20398 (regTwo!41308 r!14126))) b!7634551))

(assert (= (and b!7634150 (is-Concat!29243 (regTwo!41308 r!14126))) b!7634552))

(assert (= (and b!7634150 (is-Star!20398 (regTwo!41308 r!14126))) b!7634553))

(assert (= (and b!7634150 (is-Union!20398 (regTwo!41308 r!14126))) b!7634554))

(declare-fun b!7634555 () Bool)

(declare-fun e!4538592 () Bool)

(declare-fun tp!2228779 () Bool)

(assert (=> b!7634555 (= e!4538592 (and tp_is_empty!51151 tp!2228779))))

(assert (=> b!7634156 (= tp!2228715 e!4538592)))

(assert (= (and b!7634156 (is-Cons!73125 (t!387984 (_1!37980 cut!19)))) b!7634555))

(declare-fun b!7634559 () Bool)

(declare-fun e!4538593 () Bool)

(declare-fun tp!2228781 () Bool)

(declare-fun tp!2228784 () Bool)

(assert (=> b!7634559 (= e!4538593 (and tp!2228781 tp!2228784))))

(declare-fun b!7634558 () Bool)

(declare-fun tp!2228782 () Bool)

(assert (=> b!7634558 (= e!4538593 tp!2228782)))

(declare-fun b!7634556 () Bool)

(assert (=> b!7634556 (= e!4538593 tp_is_empty!51151)))

(declare-fun b!7634557 () Bool)

(declare-fun tp!2228783 () Bool)

(declare-fun tp!2228780 () Bool)

(assert (=> b!7634557 (= e!4538593 (and tp!2228783 tp!2228780))))

(assert (=> b!7634151 (= tp!2228714 e!4538593)))

(assert (= (and b!7634151 (is-ElementMatch!20398 (reg!20727 r!14126))) b!7634556))

(assert (= (and b!7634151 (is-Concat!29243 (reg!20727 r!14126))) b!7634557))

(assert (= (and b!7634151 (is-Star!20398 (reg!20727 r!14126))) b!7634558))

(assert (= (and b!7634151 (is-Union!20398 (reg!20727 r!14126))) b!7634559))

(declare-fun b!7634560 () Bool)

(declare-fun e!4538594 () Bool)

(declare-fun tp!2228785 () Bool)

(assert (=> b!7634560 (= e!4538594 (and tp_is_empty!51151 tp!2228785))))

(assert (=> b!7634157 (= tp!2228720 e!4538594)))

(assert (= (and b!7634157 (is-Cons!73125 (t!387984 s!9605))) b!7634560))

(push 1)

(assert (not b!7634550))

(assert (not b!7634457))

(assert (not d!2324493))

(assert (not d!2324501))

(assert (not b!7634462))

(assert (not b!7634404))

(assert (not b!7634400))

(assert (not b!7634270))

(assert (not b!7634557))

(assert (not b!7634401))

(assert (not d!2324517))

(assert (not b!7634328))

(assert (not b!7634409))

(assert (not b!7634329))

(assert (not b!7634386))

(assert (not d!2324511))

(assert (not bm!700794))

(assert (not b!7634332))

(assert tp_is_empty!51151)

(assert (not b!7634459))

(assert (not b!7634553))

(assert (not b!7634456))

(assert (not b!7634385))

(assert (not b!7634548))

(assert (not d!2324507))

(assert (not b!7634514))

(assert (not b!7634559))

(assert (not b!7634502))

(assert (not b!7634540))

(assert (not b!7634463))

(assert (not b!7634264))

(assert (not b!7634493))

(assert (not b!7634560))

(assert (not b!7634327))

(assert (not b!7634399))

(assert (not bm!700778))

(assert (not bm!700807))

(assert (not b!7634542))

(assert (not d!2324497))

(assert (not b!7634554))

(assert (not d!2324487))

(assert (not b!7634410))

(assert (not b!7634555))

(assert (not b!7634455))

(assert (not bm!700808))

(assert (not b!7634507))

(assert (not b!7634546))

(assert (not b!7634558))

(assert (not bm!700805))

(assert (not d!2324489))

(assert (not b!7634545))

(assert (not b!7634549))

(assert (not d!2324499))

(assert (not b!7634544))

(assert (not b!7634541))

(assert (not d!2324495))

(assert (not b!7634552))

(assert (not bm!700774))

(assert (not b!7634337))

(assert (not bm!700775))

(assert (not bm!700804))

(assert (not b!7634508))

(assert (not b!7634338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

