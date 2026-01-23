; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725112 () Bool)

(assert start!725112)

(declare-fun b!7489153 () Bool)

(assert (=> b!7489153 true))

(assert (=> b!7489153 true))

(assert (=> b!7489153 true))

(declare-fun lambda!464005 () Int)

(declare-fun lambda!464004 () Int)

(assert (=> b!7489153 (not (= lambda!464005 lambda!464004))))

(assert (=> b!7489153 true))

(assert (=> b!7489153 true))

(assert (=> b!7489153 true))

(declare-fun b!7489142 () Bool)

(declare-fun res!3004133 () Bool)

(declare-fun e!4466062 () Bool)

(assert (=> b!7489142 (=> (not res!3004133) (not e!4466062))))

(declare-datatypes ((C!39534 0))(
  ( (C!39535 (val!30165 Int)) )
))
(declare-datatypes ((Regex!19630 0))(
  ( (ElementMatch!19630 (c!1382889 C!39534)) (Concat!28475 (regOne!39772 Regex!19630) (regTwo!39772 Regex!19630)) (EmptyExpr!19630) (Star!19630 (reg!19959 Regex!19630)) (EmptyLang!19630) (Union!19630 (regOne!39773 Regex!19630) (regTwo!39773 Regex!19630)) )
))
(declare-fun r2!5783 () Regex!19630)

(declare-fun validRegex!10144 (Regex!19630) Bool)

(assert (=> b!7489142 (= res!3004133 (validRegex!10144 r2!5783))))

(declare-fun b!7489143 () Bool)

(declare-fun e!4466063 () Bool)

(declare-fun tp!2173738 () Bool)

(declare-fun tp!2173733 () Bool)

(assert (=> b!7489143 (= e!4466063 (and tp!2173738 tp!2173733))))

(declare-fun b!7489145 () Bool)

(declare-fun e!4466065 () Bool)

(declare-fun lt!2629185 () Regex!19630)

(assert (=> b!7489145 (= e!4466065 (validRegex!10144 lt!2629185))))

(declare-fun b!7489146 () Bool)

(declare-fun e!4466061 () Bool)

(declare-fun tp!2173728 () Bool)

(assert (=> b!7489146 (= e!4466061 tp!2173728)))

(declare-fun b!7489147 () Bool)

(declare-fun e!4466064 () Bool)

(declare-fun tp!2173735 () Bool)

(assert (=> b!7489147 (= e!4466064 tp!2173735)))

(declare-fun b!7489148 () Bool)

(declare-fun tp!2173732 () Bool)

(declare-fun tp!2173737 () Bool)

(assert (=> b!7489148 (= e!4466064 (and tp!2173732 tp!2173737))))

(declare-fun b!7489149 () Bool)

(declare-fun tp!2173740 () Bool)

(declare-fun tp!2173739 () Bool)

(assert (=> b!7489149 (= e!4466061 (and tp!2173740 tp!2173739))))

(declare-fun b!7489150 () Bool)

(declare-fun tp!2173736 () Bool)

(assert (=> b!7489150 (= e!4466063 tp!2173736)))

(declare-fun b!7489151 () Bool)

(declare-fun tp_is_empty!49549 () Bool)

(assert (=> b!7489151 (= e!4466063 tp_is_empty!49549)))

(declare-fun b!7489152 () Bool)

(declare-fun e!4466059 () Bool)

(assert (=> b!7489152 (= e!4466059 e!4466065)))

(declare-fun res!3004129 () Bool)

(assert (=> b!7489152 (=> res!3004129 e!4466065)))

(declare-fun lt!2629190 () Bool)

(declare-fun lt!2629183 () Bool)

(assert (=> b!7489152 (= res!3004129 (and (not lt!2629190) (not lt!2629183)))))

(declare-datatypes ((List!72344 0))(
  ( (Nil!72220) (Cons!72220 (h!78668 C!39534) (t!386913 List!72344)) )
))
(declare-datatypes ((tuple2!68698 0))(
  ( (tuple2!68699 (_1!37652 List!72344) (_2!37652 List!72344)) )
))
(declare-fun lt!2629193 () tuple2!68698)

(declare-fun matchRSpec!4307 (Regex!19630 List!72344) Bool)

(assert (=> b!7489152 (= lt!2629183 (matchRSpec!4307 r2!5783 (_1!37652 lt!2629193)))))

(declare-fun matchR!9392 (Regex!19630 List!72344) Bool)

(assert (=> b!7489152 (= lt!2629183 (matchR!9392 r2!5783 (_1!37652 lt!2629193)))))

(declare-datatypes ((Unit!166091 0))(
  ( (Unit!166092) )
))
(declare-fun lt!2629184 () Unit!166091)

(declare-fun mainMatchTheorem!4301 (Regex!19630 List!72344) Unit!166091)

(assert (=> b!7489152 (= lt!2629184 (mainMatchTheorem!4301 r2!5783 (_1!37652 lt!2629193)))))

(declare-fun r1!5845 () Regex!19630)

(assert (=> b!7489152 (= lt!2629190 (matchRSpec!4307 r1!5845 (_1!37652 lt!2629193)))))

(assert (=> b!7489152 (= lt!2629190 (matchR!9392 r1!5845 (_1!37652 lt!2629193)))))

(declare-fun lt!2629191 () Unit!166091)

(assert (=> b!7489152 (= lt!2629191 (mainMatchTheorem!4301 r1!5845 (_1!37652 lt!2629193)))))

(declare-fun rTail!78 () Regex!19630)

(assert (=> b!7489152 (matchRSpec!4307 rTail!78 (_2!37652 lt!2629193))))

(declare-fun lt!2629187 () Unit!166091)

(assert (=> b!7489152 (= lt!2629187 (mainMatchTheorem!4301 rTail!78 (_2!37652 lt!2629193)))))

(declare-fun lt!2629182 () Regex!19630)

(assert (=> b!7489152 (matchRSpec!4307 lt!2629182 (_1!37652 lt!2629193))))

(declare-fun lt!2629197 () Unit!166091)

(assert (=> b!7489152 (= lt!2629197 (mainMatchTheorem!4301 lt!2629182 (_1!37652 lt!2629193)))))

(declare-fun e!4466060 () Bool)

(assert (=> b!7489153 (= e!4466060 e!4466059)))

(declare-fun res!3004127 () Bool)

(assert (=> b!7489153 (=> res!3004127 e!4466059)))

(assert (=> b!7489153 (= res!3004127 (not (matchR!9392 lt!2629182 (_1!37652 lt!2629193))))))

(declare-datatypes ((Option!17181 0))(
  ( (None!17180) (Some!17180 (v!54309 tuple2!68698)) )
))
(declare-fun lt!2629189 () Option!17181)

(declare-fun get!25303 (Option!17181) tuple2!68698)

(assert (=> b!7489153 (= lt!2629193 (get!25303 lt!2629189))))

(declare-fun Exists!4247 (Int) Bool)

(assert (=> b!7489153 (= (Exists!4247 lambda!464004) (Exists!4247 lambda!464005))))

(declare-fun s!13591 () List!72344)

(declare-fun lt!2629196 () Unit!166091)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2575 (Regex!19630 Regex!19630 List!72344) Unit!166091)

(assert (=> b!7489153 (= lt!2629196 (lemmaExistCutMatchRandMatchRSpecEquivalent!2575 lt!2629182 rTail!78 s!13591))))

(declare-fun isDefined!13870 (Option!17181) Bool)

(assert (=> b!7489153 (= (isDefined!13870 lt!2629189) (Exists!4247 lambda!464004))))

(declare-fun findConcatSeparation!3303 (Regex!19630 Regex!19630 List!72344 List!72344 List!72344) Option!17181)

(assert (=> b!7489153 (= lt!2629189 (findConcatSeparation!3303 lt!2629182 rTail!78 Nil!72220 s!13591 s!13591))))

(declare-fun lt!2629194 () Unit!166091)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3061 (Regex!19630 Regex!19630 List!72344) Unit!166091)

(assert (=> b!7489153 (= lt!2629194 (lemmaFindConcatSeparationEquivalentToExists!3061 lt!2629182 rTail!78 s!13591))))

(declare-fun b!7489154 () Bool)

(declare-fun tp!2173734 () Bool)

(declare-fun tp!2173731 () Bool)

(assert (=> b!7489154 (= e!4466064 (and tp!2173734 tp!2173731))))

(declare-fun b!7489155 () Bool)

(declare-fun res!3004130 () Bool)

(assert (=> b!7489155 (=> (not res!3004130) (not e!4466062))))

(assert (=> b!7489155 (= res!3004130 (validRegex!10144 rTail!78))))

(declare-fun b!7489156 () Bool)

(assert (=> b!7489156 (= e!4466064 tp_is_empty!49549)))

(declare-fun b!7489157 () Bool)

(declare-fun e!4466066 () Bool)

(declare-fun tp!2173727 () Bool)

(assert (=> b!7489157 (= e!4466066 (and tp_is_empty!49549 tp!2173727))))

(declare-fun b!7489144 () Bool)

(assert (=> b!7489144 (= e!4466061 tp_is_empty!49549)))

(declare-fun res!3004128 () Bool)

(assert (=> start!725112 (=> (not res!3004128) (not e!4466062))))

(assert (=> start!725112 (= res!3004128 (validRegex!10144 r1!5845))))

(assert (=> start!725112 e!4466062))

(assert (=> start!725112 e!4466063))

(assert (=> start!725112 e!4466061))

(assert (=> start!725112 e!4466064))

(assert (=> start!725112 e!4466066))

(declare-fun b!7489158 () Bool)

(declare-fun res!3004131 () Bool)

(assert (=> b!7489158 (=> res!3004131 e!4466059)))

(assert (=> b!7489158 (= res!3004131 (not (matchR!9392 rTail!78 (_2!37652 lt!2629193))))))

(declare-fun b!7489159 () Bool)

(declare-fun tp!2173741 () Bool)

(declare-fun tp!2173730 () Bool)

(assert (=> b!7489159 (= e!4466061 (and tp!2173741 tp!2173730))))

(declare-fun b!7489160 () Bool)

(assert (=> b!7489160 (= e!4466062 (not e!4466060))))

(declare-fun res!3004132 () Bool)

(assert (=> b!7489160 (=> res!3004132 e!4466060)))

(declare-fun lt!2629198 () Bool)

(assert (=> b!7489160 (= res!3004132 (not lt!2629198))))

(declare-fun lt!2629192 () Regex!19630)

(assert (=> b!7489160 (= (matchR!9392 lt!2629192 s!13591) (matchRSpec!4307 lt!2629192 s!13591))))

(declare-fun lt!2629186 () Unit!166091)

(assert (=> b!7489160 (= lt!2629186 (mainMatchTheorem!4301 lt!2629192 s!13591))))

(declare-fun lt!2629188 () Regex!19630)

(assert (=> b!7489160 (= lt!2629198 (matchRSpec!4307 lt!2629188 s!13591))))

(assert (=> b!7489160 (= lt!2629198 (matchR!9392 lt!2629188 s!13591))))

(declare-fun lt!2629195 () Unit!166091)

(assert (=> b!7489160 (= lt!2629195 (mainMatchTheorem!4301 lt!2629188 s!13591))))

(assert (=> b!7489160 (= lt!2629192 (Union!19630 lt!2629185 (Concat!28475 r2!5783 rTail!78)))))

(assert (=> b!7489160 (= lt!2629185 (Concat!28475 r1!5845 rTail!78))))

(assert (=> b!7489160 (= lt!2629188 (Concat!28475 lt!2629182 rTail!78))))

(assert (=> b!7489160 (= lt!2629182 (Union!19630 r1!5845 r2!5783))))

(declare-fun b!7489161 () Bool)

(declare-fun tp!2173726 () Bool)

(declare-fun tp!2173729 () Bool)

(assert (=> b!7489161 (= e!4466063 (and tp!2173726 tp!2173729))))

(assert (= (and start!725112 res!3004128) b!7489142))

(assert (= (and b!7489142 res!3004133) b!7489155))

(assert (= (and b!7489155 res!3004130) b!7489160))

(assert (= (and b!7489160 (not res!3004132)) b!7489153))

(assert (= (and b!7489153 (not res!3004127)) b!7489158))

(assert (= (and b!7489158 (not res!3004131)) b!7489152))

(assert (= (and b!7489152 (not res!3004129)) b!7489145))

(assert (= (and start!725112 (is-ElementMatch!19630 r1!5845)) b!7489151))

(assert (= (and start!725112 (is-Concat!28475 r1!5845)) b!7489161))

(assert (= (and start!725112 (is-Star!19630 r1!5845)) b!7489150))

(assert (= (and start!725112 (is-Union!19630 r1!5845)) b!7489143))

(assert (= (and start!725112 (is-ElementMatch!19630 r2!5783)) b!7489144))

(assert (= (and start!725112 (is-Concat!28475 r2!5783)) b!7489149))

(assert (= (and start!725112 (is-Star!19630 r2!5783)) b!7489146))

(assert (= (and start!725112 (is-Union!19630 r2!5783)) b!7489159))

(assert (= (and start!725112 (is-ElementMatch!19630 rTail!78)) b!7489156))

(assert (= (and start!725112 (is-Concat!28475 rTail!78)) b!7489148))

(assert (= (and start!725112 (is-Star!19630 rTail!78)) b!7489147))

(assert (= (and start!725112 (is-Union!19630 rTail!78)) b!7489154))

(assert (= (and start!725112 (is-Cons!72220 s!13591)) b!7489157))

(declare-fun m!8076432 () Bool)

(assert (=> b!7489142 m!8076432))

(declare-fun m!8076434 () Bool)

(assert (=> b!7489160 m!8076434))

(declare-fun m!8076436 () Bool)

(assert (=> b!7489160 m!8076436))

(declare-fun m!8076438 () Bool)

(assert (=> b!7489160 m!8076438))

(declare-fun m!8076440 () Bool)

(assert (=> b!7489160 m!8076440))

(declare-fun m!8076442 () Bool)

(assert (=> b!7489160 m!8076442))

(declare-fun m!8076444 () Bool)

(assert (=> b!7489160 m!8076444))

(declare-fun m!8076446 () Bool)

(assert (=> b!7489158 m!8076446))

(declare-fun m!8076448 () Bool)

(assert (=> b!7489152 m!8076448))

(declare-fun m!8076450 () Bool)

(assert (=> b!7489152 m!8076450))

(declare-fun m!8076452 () Bool)

(assert (=> b!7489152 m!8076452))

(declare-fun m!8076454 () Bool)

(assert (=> b!7489152 m!8076454))

(declare-fun m!8076456 () Bool)

(assert (=> b!7489152 m!8076456))

(declare-fun m!8076458 () Bool)

(assert (=> b!7489152 m!8076458))

(declare-fun m!8076460 () Bool)

(assert (=> b!7489152 m!8076460))

(declare-fun m!8076462 () Bool)

(assert (=> b!7489152 m!8076462))

(declare-fun m!8076464 () Bool)

(assert (=> b!7489152 m!8076464))

(declare-fun m!8076466 () Bool)

(assert (=> b!7489152 m!8076466))

(declare-fun m!8076468 () Bool)

(assert (=> b!7489145 m!8076468))

(declare-fun m!8076470 () Bool)

(assert (=> b!7489153 m!8076470))

(declare-fun m!8076472 () Bool)

(assert (=> b!7489153 m!8076472))

(declare-fun m!8076474 () Bool)

(assert (=> b!7489153 m!8076474))

(declare-fun m!8076476 () Bool)

(assert (=> b!7489153 m!8076476))

(declare-fun m!8076478 () Bool)

(assert (=> b!7489153 m!8076478))

(declare-fun m!8076480 () Bool)

(assert (=> b!7489153 m!8076480))

(declare-fun m!8076482 () Bool)

(assert (=> b!7489153 m!8076482))

(declare-fun m!8076484 () Bool)

(assert (=> b!7489153 m!8076484))

(assert (=> b!7489153 m!8076482))

(declare-fun m!8076486 () Bool)

(assert (=> b!7489155 m!8076486))

(declare-fun m!8076488 () Bool)

(assert (=> start!725112 m!8076488))

(push 1)

(assert (not b!7489143))

(assert (not b!7489155))

(assert (not b!7489145))

(assert (not b!7489152))

(assert (not b!7489160))

(assert (not b!7489150))

(assert (not b!7489154))

(assert (not b!7489149))

(assert (not b!7489153))

(assert (not b!7489148))

(assert (not start!725112))

(assert (not b!7489157))

(assert (not b!7489147))

(assert (not b!7489142))

(assert (not b!7489159))

(assert (not b!7489161))

(assert (not b!7489146))

(assert tp_is_empty!49549)

(assert (not b!7489158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1934488 () Bool)

(declare-fun b!7489280 () Bool)

(assert (= bs!1934488 (and b!7489280 b!7489153)))

(declare-fun lambda!464018 () Int)

(assert (=> bs!1934488 (not (= lambda!464018 lambda!464004))))

(assert (=> bs!1934488 (not (= lambda!464018 lambda!464005))))

(assert (=> b!7489280 true))

(assert (=> b!7489280 true))

(declare-fun bs!1934489 () Bool)

(declare-fun b!7489284 () Bool)

(assert (= bs!1934489 (and b!7489284 b!7489153)))

(declare-fun lambda!464019 () Int)

(assert (=> bs!1934489 (not (= lambda!464019 lambda!464004))))

(assert (=> bs!1934489 (= (and (= (regOne!39772 lt!2629188) lt!2629182) (= (regTwo!39772 lt!2629188) rTail!78)) (= lambda!464019 lambda!464005))))

(declare-fun bs!1934490 () Bool)

(assert (= bs!1934490 (and b!7489284 b!7489280)))

(assert (=> bs!1934490 (not (= lambda!464019 lambda!464018))))

(assert (=> b!7489284 true))

(assert (=> b!7489284 true))

(declare-fun b!7489274 () Bool)

(declare-fun e!4466116 () Bool)

(assert (=> b!7489274 (= e!4466116 (matchRSpec!4307 (regTwo!39773 lt!2629188) s!13591))))

(declare-fun b!7489275 () Bool)

(declare-fun e!4466117 () Bool)

(declare-fun e!4466119 () Bool)

(assert (=> b!7489275 (= e!4466117 e!4466119)))

(declare-fun res!3004183 () Bool)

(assert (=> b!7489275 (= res!3004183 (not (is-EmptyLang!19630 lt!2629188)))))

(assert (=> b!7489275 (=> (not res!3004183) (not e!4466119))))

(declare-fun b!7489276 () Bool)

(declare-fun e!4466115 () Bool)

(assert (=> b!7489276 (= e!4466115 (= s!13591 (Cons!72220 (c!1382889 lt!2629188) Nil!72220)))))

(declare-fun b!7489277 () Bool)

(declare-fun c!1382900 () Bool)

(assert (=> b!7489277 (= c!1382900 (is-Union!19630 lt!2629188))))

(declare-fun e!4466121 () Bool)

(assert (=> b!7489277 (= e!4466115 e!4466121)))

(declare-fun b!7489278 () Bool)

(declare-fun res!3004184 () Bool)

(declare-fun e!4466118 () Bool)

(assert (=> b!7489278 (=> res!3004184 e!4466118)))

(declare-fun call!687493 () Bool)

(assert (=> b!7489278 (= res!3004184 call!687493)))

(declare-fun e!4466120 () Bool)

(assert (=> b!7489278 (= e!4466120 e!4466118)))

(declare-fun b!7489279 () Bool)

(declare-fun c!1382902 () Bool)

(assert (=> b!7489279 (= c!1382902 (is-ElementMatch!19630 lt!2629188))))

(assert (=> b!7489279 (= e!4466119 e!4466115)))

(declare-fun d!2301009 () Bool)

(declare-fun c!1382901 () Bool)

(assert (=> d!2301009 (= c!1382901 (is-EmptyExpr!19630 lt!2629188))))

(assert (=> d!2301009 (= (matchRSpec!4307 lt!2629188 s!13591) e!4466117)))

(declare-fun call!687494 () Bool)

(assert (=> b!7489280 (= e!4466118 call!687494)))

(declare-fun b!7489281 () Bool)

(assert (=> b!7489281 (= e!4466121 e!4466116)))

(declare-fun res!3004185 () Bool)

(assert (=> b!7489281 (= res!3004185 (matchRSpec!4307 (regOne!39773 lt!2629188) s!13591))))

(assert (=> b!7489281 (=> res!3004185 e!4466116)))

(declare-fun bm!687488 () Bool)

(declare-fun isEmpty!41243 (List!72344) Bool)

(assert (=> bm!687488 (= call!687493 (isEmpty!41243 s!13591))))

(declare-fun b!7489282 () Bool)

(assert (=> b!7489282 (= e!4466117 call!687493)))

(declare-fun bm!687489 () Bool)

(declare-fun c!1382899 () Bool)

(assert (=> bm!687489 (= call!687494 (Exists!4247 (ite c!1382899 lambda!464018 lambda!464019)))))

(declare-fun b!7489283 () Bool)

(assert (=> b!7489283 (= e!4466121 e!4466120)))

(assert (=> b!7489283 (= c!1382899 (is-Star!19630 lt!2629188))))

(assert (=> b!7489284 (= e!4466120 call!687494)))

(assert (= (and d!2301009 c!1382901) b!7489282))

(assert (= (and d!2301009 (not c!1382901)) b!7489275))

(assert (= (and b!7489275 res!3004183) b!7489279))

(assert (= (and b!7489279 c!1382902) b!7489276))

(assert (= (and b!7489279 (not c!1382902)) b!7489277))

(assert (= (and b!7489277 c!1382900) b!7489281))

(assert (= (and b!7489277 (not c!1382900)) b!7489283))

(assert (= (and b!7489281 (not res!3004185)) b!7489274))

(assert (= (and b!7489283 c!1382899) b!7489278))

(assert (= (and b!7489283 (not c!1382899)) b!7489284))

(assert (= (and b!7489278 (not res!3004184)) b!7489280))

(assert (= (or b!7489280 b!7489284) bm!687489))

(assert (= (or b!7489282 b!7489278) bm!687488))

(declare-fun m!8076548 () Bool)

(assert (=> b!7489274 m!8076548))

(declare-fun m!8076550 () Bool)

(assert (=> b!7489281 m!8076550))

(declare-fun m!8076552 () Bool)

(assert (=> bm!687488 m!8076552))

(declare-fun m!8076554 () Bool)

(assert (=> bm!687489 m!8076554))

(assert (=> b!7489160 d!2301009))

(declare-fun b!7489313 () Bool)

(declare-fun res!3004209 () Bool)

(declare-fun e!4466140 () Bool)

(assert (=> b!7489313 (=> res!3004209 e!4466140)))

(assert (=> b!7489313 (= res!3004209 (not (is-ElementMatch!19630 lt!2629192)))))

(declare-fun e!4466137 () Bool)

(assert (=> b!7489313 (= e!4466137 e!4466140)))

(declare-fun b!7489314 () Bool)

(declare-fun res!3004203 () Bool)

(declare-fun e!4466139 () Bool)

(assert (=> b!7489314 (=> res!3004203 e!4466139)))

(declare-fun tail!14934 (List!72344) List!72344)

(assert (=> b!7489314 (= res!3004203 (not (isEmpty!41243 (tail!14934 s!13591))))))

(declare-fun b!7489315 () Bool)

(declare-fun e!4466142 () Bool)

(assert (=> b!7489315 (= e!4466142 e!4466137)))

(declare-fun c!1382909 () Bool)

(assert (=> b!7489315 (= c!1382909 (is-EmptyLang!19630 lt!2629192))))

(declare-fun bm!687492 () Bool)

(declare-fun call!687497 () Bool)

(assert (=> bm!687492 (= call!687497 (isEmpty!41243 s!13591))))

(declare-fun b!7489316 () Bool)

(declare-fun res!3004208 () Bool)

(declare-fun e!4466136 () Bool)

(assert (=> b!7489316 (=> (not res!3004208) (not e!4466136))))

(assert (=> b!7489316 (= res!3004208 (not call!687497))))

(declare-fun b!7489317 () Bool)

(declare-fun e!4466141 () Bool)

(declare-fun derivativeStep!5625 (Regex!19630 C!39534) Regex!19630)

(declare-fun head!15365 (List!72344) C!39534)

(assert (=> b!7489317 (= e!4466141 (matchR!9392 (derivativeStep!5625 lt!2629192 (head!15365 s!13591)) (tail!14934 s!13591)))))

(declare-fun b!7489318 () Bool)

(declare-fun res!3004207 () Bool)

(assert (=> b!7489318 (=> (not res!3004207) (not e!4466136))))

(assert (=> b!7489318 (= res!3004207 (isEmpty!41243 (tail!14934 s!13591)))))

(declare-fun b!7489319 () Bool)

(declare-fun e!4466138 () Bool)

(assert (=> b!7489319 (= e!4466140 e!4466138)))

(declare-fun res!3004205 () Bool)

(assert (=> b!7489319 (=> (not res!3004205) (not e!4466138))))

(declare-fun lt!2629252 () Bool)

(assert (=> b!7489319 (= res!3004205 (not lt!2629252))))

(declare-fun b!7489320 () Bool)

(assert (=> b!7489320 (= e!4466138 e!4466139)))

(declare-fun res!3004204 () Bool)

(assert (=> b!7489320 (=> res!3004204 e!4466139)))

(assert (=> b!7489320 (= res!3004204 call!687497)))

(declare-fun b!7489321 () Bool)

(declare-fun res!3004206 () Bool)

(assert (=> b!7489321 (=> res!3004206 e!4466140)))

(assert (=> b!7489321 (= res!3004206 e!4466136)))

(declare-fun res!3004202 () Bool)

(assert (=> b!7489321 (=> (not res!3004202) (not e!4466136))))

(assert (=> b!7489321 (= res!3004202 lt!2629252)))

(declare-fun d!2301013 () Bool)

(assert (=> d!2301013 e!4466142))

(declare-fun c!1382911 () Bool)

(assert (=> d!2301013 (= c!1382911 (is-EmptyExpr!19630 lt!2629192))))

(assert (=> d!2301013 (= lt!2629252 e!4466141)))

(declare-fun c!1382910 () Bool)

(assert (=> d!2301013 (= c!1382910 (isEmpty!41243 s!13591))))

(assert (=> d!2301013 (validRegex!10144 lt!2629192)))

(assert (=> d!2301013 (= (matchR!9392 lt!2629192 s!13591) lt!2629252)))

(declare-fun b!7489322 () Bool)

(assert (=> b!7489322 (= e!4466137 (not lt!2629252))))

(declare-fun b!7489323 () Bool)

(assert (=> b!7489323 (= e!4466136 (= (head!15365 s!13591) (c!1382889 lt!2629192)))))

(declare-fun b!7489324 () Bool)

(assert (=> b!7489324 (= e!4466142 (= lt!2629252 call!687497))))

(declare-fun b!7489325 () Bool)

(assert (=> b!7489325 (= e!4466139 (not (= (head!15365 s!13591) (c!1382889 lt!2629192))))))

(declare-fun b!7489326 () Bool)

(declare-fun nullable!8568 (Regex!19630) Bool)

(assert (=> b!7489326 (= e!4466141 (nullable!8568 lt!2629192))))

(assert (= (and d!2301013 c!1382910) b!7489326))

(assert (= (and d!2301013 (not c!1382910)) b!7489317))

(assert (= (and d!2301013 c!1382911) b!7489324))

(assert (= (and d!2301013 (not c!1382911)) b!7489315))

(assert (= (and b!7489315 c!1382909) b!7489322))

(assert (= (and b!7489315 (not c!1382909)) b!7489313))

(assert (= (and b!7489313 (not res!3004209)) b!7489321))

(assert (= (and b!7489321 res!3004202) b!7489316))

(assert (= (and b!7489316 res!3004208) b!7489318))

(assert (= (and b!7489318 res!3004207) b!7489323))

(assert (= (and b!7489321 (not res!3004206)) b!7489319))

(assert (= (and b!7489319 res!3004205) b!7489320))

(assert (= (and b!7489320 (not res!3004204)) b!7489314))

(assert (= (and b!7489314 (not res!3004203)) b!7489325))

(assert (= (or b!7489324 b!7489316 b!7489320) bm!687492))

(declare-fun m!8076558 () Bool)

(assert (=> b!7489314 m!8076558))

(assert (=> b!7489314 m!8076558))

(declare-fun m!8076560 () Bool)

(assert (=> b!7489314 m!8076560))

(assert (=> b!7489318 m!8076558))

(assert (=> b!7489318 m!8076558))

(assert (=> b!7489318 m!8076560))

(assert (=> d!2301013 m!8076552))

(declare-fun m!8076562 () Bool)

(assert (=> d!2301013 m!8076562))

(declare-fun m!8076564 () Bool)

(assert (=> b!7489323 m!8076564))

(declare-fun m!8076566 () Bool)

(assert (=> b!7489326 m!8076566))

(assert (=> b!7489325 m!8076564))

(assert (=> bm!687492 m!8076552))

(assert (=> b!7489317 m!8076564))

(assert (=> b!7489317 m!8076564))

(declare-fun m!8076568 () Bool)

(assert (=> b!7489317 m!8076568))

(assert (=> b!7489317 m!8076558))

(assert (=> b!7489317 m!8076568))

(assert (=> b!7489317 m!8076558))

(declare-fun m!8076570 () Bool)

(assert (=> b!7489317 m!8076570))

(assert (=> b!7489160 d!2301013))

(declare-fun bs!1934492 () Bool)

(declare-fun b!7489333 () Bool)

(assert (= bs!1934492 (and b!7489333 b!7489153)))

(declare-fun lambda!464020 () Int)

(assert (=> bs!1934492 (not (= lambda!464020 lambda!464004))))

(assert (=> bs!1934492 (not (= lambda!464020 lambda!464005))))

(declare-fun bs!1934493 () Bool)

(assert (= bs!1934493 (and b!7489333 b!7489280)))

(assert (=> bs!1934493 (= (and (= (reg!19959 lt!2629192) (reg!19959 lt!2629188)) (= lt!2629192 lt!2629188)) (= lambda!464020 lambda!464018))))

(declare-fun bs!1934494 () Bool)

(assert (= bs!1934494 (and b!7489333 b!7489284)))

(assert (=> bs!1934494 (not (= lambda!464020 lambda!464019))))

(assert (=> b!7489333 true))

(assert (=> b!7489333 true))

(declare-fun bs!1934495 () Bool)

(declare-fun b!7489337 () Bool)

(assert (= bs!1934495 (and b!7489337 b!7489333)))

(declare-fun lambda!464021 () Int)

(assert (=> bs!1934495 (not (= lambda!464021 lambda!464020))))

(declare-fun bs!1934496 () Bool)

(assert (= bs!1934496 (and b!7489337 b!7489280)))

(assert (=> bs!1934496 (not (= lambda!464021 lambda!464018))))

(declare-fun bs!1934497 () Bool)

(assert (= bs!1934497 (and b!7489337 b!7489284)))

(assert (=> bs!1934497 (= (and (= (regOne!39772 lt!2629192) (regOne!39772 lt!2629188)) (= (regTwo!39772 lt!2629192) (regTwo!39772 lt!2629188))) (= lambda!464021 lambda!464019))))

(declare-fun bs!1934498 () Bool)

(assert (= bs!1934498 (and b!7489337 b!7489153)))

(assert (=> bs!1934498 (not (= lambda!464021 lambda!464004))))

(assert (=> bs!1934498 (= (and (= (regOne!39772 lt!2629192) lt!2629182) (= (regTwo!39772 lt!2629192) rTail!78)) (= lambda!464021 lambda!464005))))

(assert (=> b!7489337 true))

(assert (=> b!7489337 true))

(declare-fun b!7489327 () Bool)

(declare-fun e!4466144 () Bool)

(assert (=> b!7489327 (= e!4466144 (matchRSpec!4307 (regTwo!39773 lt!2629192) s!13591))))

(declare-fun b!7489328 () Bool)

(declare-fun e!4466145 () Bool)

(declare-fun e!4466147 () Bool)

(assert (=> b!7489328 (= e!4466145 e!4466147)))

(declare-fun res!3004210 () Bool)

(assert (=> b!7489328 (= res!3004210 (not (is-EmptyLang!19630 lt!2629192)))))

(assert (=> b!7489328 (=> (not res!3004210) (not e!4466147))))

(declare-fun b!7489329 () Bool)

(declare-fun e!4466143 () Bool)

(assert (=> b!7489329 (= e!4466143 (= s!13591 (Cons!72220 (c!1382889 lt!2629192) Nil!72220)))))

(declare-fun b!7489330 () Bool)

(declare-fun c!1382913 () Bool)

(assert (=> b!7489330 (= c!1382913 (is-Union!19630 lt!2629192))))

(declare-fun e!4466149 () Bool)

(assert (=> b!7489330 (= e!4466143 e!4466149)))

(declare-fun b!7489331 () Bool)

(declare-fun res!3004211 () Bool)

(declare-fun e!4466146 () Bool)

(assert (=> b!7489331 (=> res!3004211 e!4466146)))

(declare-fun call!687498 () Bool)

(assert (=> b!7489331 (= res!3004211 call!687498)))

(declare-fun e!4466148 () Bool)

(assert (=> b!7489331 (= e!4466148 e!4466146)))

(declare-fun b!7489332 () Bool)

(declare-fun c!1382915 () Bool)

(assert (=> b!7489332 (= c!1382915 (is-ElementMatch!19630 lt!2629192))))

(assert (=> b!7489332 (= e!4466147 e!4466143)))

(declare-fun d!2301019 () Bool)

(declare-fun c!1382914 () Bool)

(assert (=> d!2301019 (= c!1382914 (is-EmptyExpr!19630 lt!2629192))))

(assert (=> d!2301019 (= (matchRSpec!4307 lt!2629192 s!13591) e!4466145)))

(declare-fun call!687499 () Bool)

(assert (=> b!7489333 (= e!4466146 call!687499)))

(declare-fun b!7489334 () Bool)

(assert (=> b!7489334 (= e!4466149 e!4466144)))

(declare-fun res!3004212 () Bool)

(assert (=> b!7489334 (= res!3004212 (matchRSpec!4307 (regOne!39773 lt!2629192) s!13591))))

(assert (=> b!7489334 (=> res!3004212 e!4466144)))

(declare-fun bm!687493 () Bool)

(assert (=> bm!687493 (= call!687498 (isEmpty!41243 s!13591))))

(declare-fun b!7489335 () Bool)

(assert (=> b!7489335 (= e!4466145 call!687498)))

(declare-fun bm!687494 () Bool)

(declare-fun c!1382912 () Bool)

(assert (=> bm!687494 (= call!687499 (Exists!4247 (ite c!1382912 lambda!464020 lambda!464021)))))

(declare-fun b!7489336 () Bool)

(assert (=> b!7489336 (= e!4466149 e!4466148)))

(assert (=> b!7489336 (= c!1382912 (is-Star!19630 lt!2629192))))

(assert (=> b!7489337 (= e!4466148 call!687499)))

(assert (= (and d!2301019 c!1382914) b!7489335))

(assert (= (and d!2301019 (not c!1382914)) b!7489328))

(assert (= (and b!7489328 res!3004210) b!7489332))

(assert (= (and b!7489332 c!1382915) b!7489329))

(assert (= (and b!7489332 (not c!1382915)) b!7489330))

(assert (= (and b!7489330 c!1382913) b!7489334))

(assert (= (and b!7489330 (not c!1382913)) b!7489336))

(assert (= (and b!7489334 (not res!3004212)) b!7489327))

(assert (= (and b!7489336 c!1382912) b!7489331))

(assert (= (and b!7489336 (not c!1382912)) b!7489337))

(assert (= (and b!7489331 (not res!3004211)) b!7489333))

(assert (= (or b!7489333 b!7489337) bm!687494))

(assert (= (or b!7489335 b!7489331) bm!687493))

(declare-fun m!8076572 () Bool)

(assert (=> b!7489327 m!8076572))

(declare-fun m!8076574 () Bool)

(assert (=> b!7489334 m!8076574))

(assert (=> bm!687493 m!8076552))

(declare-fun m!8076576 () Bool)

(assert (=> bm!687494 m!8076576))

(assert (=> b!7489160 d!2301019))

(declare-fun d!2301021 () Bool)

(assert (=> d!2301021 (= (matchR!9392 lt!2629192 s!13591) (matchRSpec!4307 lt!2629192 s!13591))))

(declare-fun lt!2629255 () Unit!166091)

(declare-fun choose!57886 (Regex!19630 List!72344) Unit!166091)

(assert (=> d!2301021 (= lt!2629255 (choose!57886 lt!2629192 s!13591))))

(assert (=> d!2301021 (validRegex!10144 lt!2629192)))

(assert (=> d!2301021 (= (mainMatchTheorem!4301 lt!2629192 s!13591) lt!2629255)))

(declare-fun bs!1934499 () Bool)

(assert (= bs!1934499 d!2301021))

(assert (=> bs!1934499 m!8076434))

(assert (=> bs!1934499 m!8076438))

(declare-fun m!8076578 () Bool)

(assert (=> bs!1934499 m!8076578))

(assert (=> bs!1934499 m!8076562))

(assert (=> b!7489160 d!2301021))

(declare-fun b!7489338 () Bool)

(declare-fun res!3004220 () Bool)

(declare-fun e!4466154 () Bool)

(assert (=> b!7489338 (=> res!3004220 e!4466154)))

(assert (=> b!7489338 (= res!3004220 (not (is-ElementMatch!19630 lt!2629188)))))

(declare-fun e!4466151 () Bool)

(assert (=> b!7489338 (= e!4466151 e!4466154)))

(declare-fun b!7489339 () Bool)

(declare-fun res!3004214 () Bool)

(declare-fun e!4466153 () Bool)

(assert (=> b!7489339 (=> res!3004214 e!4466153)))

(assert (=> b!7489339 (= res!3004214 (not (isEmpty!41243 (tail!14934 s!13591))))))

(declare-fun b!7489340 () Bool)

(declare-fun e!4466156 () Bool)

(assert (=> b!7489340 (= e!4466156 e!4466151)))

(declare-fun c!1382916 () Bool)

(assert (=> b!7489340 (= c!1382916 (is-EmptyLang!19630 lt!2629188))))

(declare-fun bm!687495 () Bool)

(declare-fun call!687500 () Bool)

(assert (=> bm!687495 (= call!687500 (isEmpty!41243 s!13591))))

(declare-fun b!7489341 () Bool)

(declare-fun res!3004219 () Bool)

(declare-fun e!4466150 () Bool)

(assert (=> b!7489341 (=> (not res!3004219) (not e!4466150))))

(assert (=> b!7489341 (= res!3004219 (not call!687500))))

(declare-fun b!7489342 () Bool)

(declare-fun e!4466155 () Bool)

(assert (=> b!7489342 (= e!4466155 (matchR!9392 (derivativeStep!5625 lt!2629188 (head!15365 s!13591)) (tail!14934 s!13591)))))

(declare-fun b!7489343 () Bool)

(declare-fun res!3004218 () Bool)

(assert (=> b!7489343 (=> (not res!3004218) (not e!4466150))))

(assert (=> b!7489343 (= res!3004218 (isEmpty!41243 (tail!14934 s!13591)))))

(declare-fun b!7489344 () Bool)

(declare-fun e!4466152 () Bool)

(assert (=> b!7489344 (= e!4466154 e!4466152)))

(declare-fun res!3004216 () Bool)

(assert (=> b!7489344 (=> (not res!3004216) (not e!4466152))))

(declare-fun lt!2629256 () Bool)

(assert (=> b!7489344 (= res!3004216 (not lt!2629256))))

(declare-fun b!7489345 () Bool)

(assert (=> b!7489345 (= e!4466152 e!4466153)))

(declare-fun res!3004215 () Bool)

(assert (=> b!7489345 (=> res!3004215 e!4466153)))

(assert (=> b!7489345 (= res!3004215 call!687500)))

(declare-fun b!7489346 () Bool)

(declare-fun res!3004217 () Bool)

(assert (=> b!7489346 (=> res!3004217 e!4466154)))

(assert (=> b!7489346 (= res!3004217 e!4466150)))

(declare-fun res!3004213 () Bool)

(assert (=> b!7489346 (=> (not res!3004213) (not e!4466150))))

(assert (=> b!7489346 (= res!3004213 lt!2629256)))

(declare-fun d!2301023 () Bool)

(assert (=> d!2301023 e!4466156))

(declare-fun c!1382918 () Bool)

(assert (=> d!2301023 (= c!1382918 (is-EmptyExpr!19630 lt!2629188))))

(assert (=> d!2301023 (= lt!2629256 e!4466155)))

(declare-fun c!1382917 () Bool)

(assert (=> d!2301023 (= c!1382917 (isEmpty!41243 s!13591))))

(assert (=> d!2301023 (validRegex!10144 lt!2629188)))

(assert (=> d!2301023 (= (matchR!9392 lt!2629188 s!13591) lt!2629256)))

(declare-fun b!7489347 () Bool)

(assert (=> b!7489347 (= e!4466151 (not lt!2629256))))

(declare-fun b!7489348 () Bool)

(assert (=> b!7489348 (= e!4466150 (= (head!15365 s!13591) (c!1382889 lt!2629188)))))

(declare-fun b!7489349 () Bool)

(assert (=> b!7489349 (= e!4466156 (= lt!2629256 call!687500))))

(declare-fun b!7489350 () Bool)

(assert (=> b!7489350 (= e!4466153 (not (= (head!15365 s!13591) (c!1382889 lt!2629188))))))

(declare-fun b!7489351 () Bool)

(assert (=> b!7489351 (= e!4466155 (nullable!8568 lt!2629188))))

(assert (= (and d!2301023 c!1382917) b!7489351))

(assert (= (and d!2301023 (not c!1382917)) b!7489342))

(assert (= (and d!2301023 c!1382918) b!7489349))

(assert (= (and d!2301023 (not c!1382918)) b!7489340))

(assert (= (and b!7489340 c!1382916) b!7489347))

(assert (= (and b!7489340 (not c!1382916)) b!7489338))

(assert (= (and b!7489338 (not res!3004220)) b!7489346))

(assert (= (and b!7489346 res!3004213) b!7489341))

(assert (= (and b!7489341 res!3004219) b!7489343))

(assert (= (and b!7489343 res!3004218) b!7489348))

(assert (= (and b!7489346 (not res!3004217)) b!7489344))

(assert (= (and b!7489344 res!3004216) b!7489345))

(assert (= (and b!7489345 (not res!3004215)) b!7489339))

(assert (= (and b!7489339 (not res!3004214)) b!7489350))

(assert (= (or b!7489349 b!7489341 b!7489345) bm!687495))

(assert (=> b!7489339 m!8076558))

(assert (=> b!7489339 m!8076558))

(assert (=> b!7489339 m!8076560))

(assert (=> b!7489343 m!8076558))

(assert (=> b!7489343 m!8076558))

(assert (=> b!7489343 m!8076560))

(assert (=> d!2301023 m!8076552))

(declare-fun m!8076580 () Bool)

(assert (=> d!2301023 m!8076580))

(assert (=> b!7489348 m!8076564))

(declare-fun m!8076582 () Bool)

(assert (=> b!7489351 m!8076582))

(assert (=> b!7489350 m!8076564))

(assert (=> bm!687495 m!8076552))

(assert (=> b!7489342 m!8076564))

(assert (=> b!7489342 m!8076564))

(declare-fun m!8076584 () Bool)

(assert (=> b!7489342 m!8076584))

(assert (=> b!7489342 m!8076558))

(assert (=> b!7489342 m!8076584))

(assert (=> b!7489342 m!8076558))

(declare-fun m!8076586 () Bool)

(assert (=> b!7489342 m!8076586))

(assert (=> b!7489160 d!2301023))

(declare-fun d!2301025 () Bool)

(assert (=> d!2301025 (= (matchR!9392 lt!2629188 s!13591) (matchRSpec!4307 lt!2629188 s!13591))))

(declare-fun lt!2629257 () Unit!166091)

(assert (=> d!2301025 (= lt!2629257 (choose!57886 lt!2629188 s!13591))))

(assert (=> d!2301025 (validRegex!10144 lt!2629188)))

(assert (=> d!2301025 (= (mainMatchTheorem!4301 lt!2629188 s!13591) lt!2629257)))

(declare-fun bs!1934500 () Bool)

(assert (= bs!1934500 d!2301025))

(assert (=> bs!1934500 m!8076440))

(assert (=> bs!1934500 m!8076436))

(declare-fun m!8076588 () Bool)

(assert (=> bs!1934500 m!8076588))

(assert (=> bs!1934500 m!8076580))

(assert (=> b!7489160 d!2301025))

(declare-fun bm!687502 () Bool)

(declare-fun call!687507 () Bool)

(declare-fun call!687509 () Bool)

(assert (=> bm!687502 (= call!687507 call!687509)))

(declare-fun b!7489376 () Bool)

(declare-fun e!4466176 () Bool)

(declare-fun e!4466181 () Bool)

(assert (=> b!7489376 (= e!4466176 e!4466181)))

(declare-fun c!1382925 () Bool)

(assert (=> b!7489376 (= c!1382925 (is-Star!19630 r1!5845))))

(declare-fun b!7489377 () Bool)

(declare-fun e!4466180 () Bool)

(assert (=> b!7489377 (= e!4466181 e!4466180)))

(declare-fun c!1382926 () Bool)

(assert (=> b!7489377 (= c!1382926 (is-Union!19630 r1!5845))))

(declare-fun b!7489378 () Bool)

(declare-fun e!4466179 () Bool)

(assert (=> b!7489378 (= e!4466179 call!687509)))

(declare-fun bm!687503 () Bool)

(declare-fun call!687508 () Bool)

(assert (=> bm!687503 (= call!687508 (validRegex!10144 (ite c!1382926 (regTwo!39773 r1!5845) (regTwo!39772 r1!5845))))))

(declare-fun d!2301027 () Bool)

(declare-fun res!3004234 () Bool)

(assert (=> d!2301027 (=> res!3004234 e!4466176)))

(assert (=> d!2301027 (= res!3004234 (is-ElementMatch!19630 r1!5845))))

(assert (=> d!2301027 (= (validRegex!10144 r1!5845) e!4466176)))

(declare-fun b!7489379 () Bool)

(declare-fun res!3004233 () Bool)

(declare-fun e!4466175 () Bool)

(assert (=> b!7489379 (=> res!3004233 e!4466175)))

(assert (=> b!7489379 (= res!3004233 (not (is-Concat!28475 r1!5845)))))

(assert (=> b!7489379 (= e!4466180 e!4466175)))

(declare-fun b!7489380 () Bool)

(declare-fun e!4466178 () Bool)

(assert (=> b!7489380 (= e!4466178 call!687508)))

(declare-fun bm!687504 () Bool)

(assert (=> bm!687504 (= call!687509 (validRegex!10144 (ite c!1382925 (reg!19959 r1!5845) (ite c!1382926 (regOne!39773 r1!5845) (regOne!39772 r1!5845)))))))

(declare-fun b!7489381 () Bool)

(declare-fun res!3004236 () Bool)

(declare-fun e!4466177 () Bool)

(assert (=> b!7489381 (=> (not res!3004236) (not e!4466177))))

(assert (=> b!7489381 (= res!3004236 call!687507)))

(assert (=> b!7489381 (= e!4466180 e!4466177)))

(declare-fun b!7489382 () Bool)

(assert (=> b!7489382 (= e!4466177 call!687508)))

(declare-fun b!7489383 () Bool)

(assert (=> b!7489383 (= e!4466175 e!4466178)))

(declare-fun res!3004235 () Bool)

(assert (=> b!7489383 (=> (not res!3004235) (not e!4466178))))

(assert (=> b!7489383 (= res!3004235 call!687507)))

(declare-fun b!7489384 () Bool)

(assert (=> b!7489384 (= e!4466181 e!4466179)))

(declare-fun res!3004237 () Bool)

(assert (=> b!7489384 (= res!3004237 (not (nullable!8568 (reg!19959 r1!5845))))))

(assert (=> b!7489384 (=> (not res!3004237) (not e!4466179))))

(assert (= (and d!2301027 (not res!3004234)) b!7489376))

(assert (= (and b!7489376 c!1382925) b!7489384))

(assert (= (and b!7489376 (not c!1382925)) b!7489377))

(assert (= (and b!7489384 res!3004237) b!7489378))

(assert (= (and b!7489377 c!1382926) b!7489381))

(assert (= (and b!7489377 (not c!1382926)) b!7489379))

(assert (= (and b!7489381 res!3004236) b!7489382))

(assert (= (and b!7489379 (not res!3004233)) b!7489383))

(assert (= (and b!7489383 res!3004235) b!7489380))

(assert (= (or b!7489382 b!7489380) bm!687503))

(assert (= (or b!7489381 b!7489383) bm!687502))

(assert (= (or b!7489378 bm!687502) bm!687504))

(declare-fun m!8076590 () Bool)

(assert (=> bm!687503 m!8076590))

(declare-fun m!8076592 () Bool)

(assert (=> bm!687504 m!8076592))

(declare-fun m!8076594 () Bool)

(assert (=> b!7489384 m!8076594))

(assert (=> start!725112 d!2301027))

(declare-fun bm!687505 () Bool)

(declare-fun call!687510 () Bool)

(declare-fun call!687512 () Bool)

(assert (=> bm!687505 (= call!687510 call!687512)))

(declare-fun b!7489389 () Bool)

(declare-fun e!4466185 () Bool)

(declare-fun e!4466190 () Bool)

(assert (=> b!7489389 (= e!4466185 e!4466190)))

(declare-fun c!1382929 () Bool)

(assert (=> b!7489389 (= c!1382929 (is-Star!19630 rTail!78))))

(declare-fun b!7489390 () Bool)

(declare-fun e!4466189 () Bool)

(assert (=> b!7489390 (= e!4466190 e!4466189)))

(declare-fun c!1382930 () Bool)

(assert (=> b!7489390 (= c!1382930 (is-Union!19630 rTail!78))))

(declare-fun b!7489391 () Bool)

(declare-fun e!4466188 () Bool)

(assert (=> b!7489391 (= e!4466188 call!687512)))

(declare-fun bm!687506 () Bool)

(declare-fun call!687511 () Bool)

(assert (=> bm!687506 (= call!687511 (validRegex!10144 (ite c!1382930 (regTwo!39773 rTail!78) (regTwo!39772 rTail!78))))))

(declare-fun d!2301029 () Bool)

(declare-fun res!3004239 () Bool)

(assert (=> d!2301029 (=> res!3004239 e!4466185)))

(assert (=> d!2301029 (= res!3004239 (is-ElementMatch!19630 rTail!78))))

(assert (=> d!2301029 (= (validRegex!10144 rTail!78) e!4466185)))

(declare-fun b!7489392 () Bool)

(declare-fun res!3004238 () Bool)

(declare-fun e!4466184 () Bool)

(assert (=> b!7489392 (=> res!3004238 e!4466184)))

(assert (=> b!7489392 (= res!3004238 (not (is-Concat!28475 rTail!78)))))

(assert (=> b!7489392 (= e!4466189 e!4466184)))

(declare-fun b!7489393 () Bool)

(declare-fun e!4466187 () Bool)

(assert (=> b!7489393 (= e!4466187 call!687511)))

(declare-fun bm!687507 () Bool)

(assert (=> bm!687507 (= call!687512 (validRegex!10144 (ite c!1382929 (reg!19959 rTail!78) (ite c!1382930 (regOne!39773 rTail!78) (regOne!39772 rTail!78)))))))

(declare-fun b!7489394 () Bool)

(declare-fun res!3004241 () Bool)

(declare-fun e!4466186 () Bool)

(assert (=> b!7489394 (=> (not res!3004241) (not e!4466186))))

(assert (=> b!7489394 (= res!3004241 call!687510)))

(assert (=> b!7489394 (= e!4466189 e!4466186)))

(declare-fun b!7489395 () Bool)

(assert (=> b!7489395 (= e!4466186 call!687511)))

(declare-fun b!7489396 () Bool)

(assert (=> b!7489396 (= e!4466184 e!4466187)))

(declare-fun res!3004240 () Bool)

(assert (=> b!7489396 (=> (not res!3004240) (not e!4466187))))

(assert (=> b!7489396 (= res!3004240 call!687510)))

(declare-fun b!7489397 () Bool)

(assert (=> b!7489397 (= e!4466190 e!4466188)))

(declare-fun res!3004242 () Bool)

(assert (=> b!7489397 (= res!3004242 (not (nullable!8568 (reg!19959 rTail!78))))))

(assert (=> b!7489397 (=> (not res!3004242) (not e!4466188))))

(assert (= (and d!2301029 (not res!3004239)) b!7489389))

(assert (= (and b!7489389 c!1382929) b!7489397))

(assert (= (and b!7489389 (not c!1382929)) b!7489390))

(assert (= (and b!7489397 res!3004242) b!7489391))

(assert (= (and b!7489390 c!1382930) b!7489394))

(assert (= (and b!7489390 (not c!1382930)) b!7489392))

(assert (= (and b!7489394 res!3004241) b!7489395))

(assert (= (and b!7489392 (not res!3004238)) b!7489396))

(assert (= (and b!7489396 res!3004240) b!7489393))

(assert (= (or b!7489395 b!7489393) bm!687506))

(assert (= (or b!7489394 b!7489396) bm!687505))

(assert (= (or b!7489391 bm!687505) bm!687507))

(declare-fun m!8076596 () Bool)

(assert (=> bm!687506 m!8076596))

(declare-fun m!8076598 () Bool)

(assert (=> bm!687507 m!8076598))

(declare-fun m!8076600 () Bool)

(assert (=> b!7489397 m!8076600))

(assert (=> b!7489155 d!2301029))

(declare-fun bm!687508 () Bool)

(declare-fun call!687513 () Bool)

(declare-fun call!687515 () Bool)

(assert (=> bm!687508 (= call!687513 call!687515)))

(declare-fun b!7489398 () Bool)

(declare-fun e!4466192 () Bool)

(declare-fun e!4466197 () Bool)

(assert (=> b!7489398 (= e!4466192 e!4466197)))

(declare-fun c!1382931 () Bool)

(assert (=> b!7489398 (= c!1382931 (is-Star!19630 lt!2629185))))

(declare-fun b!7489399 () Bool)

(declare-fun e!4466196 () Bool)

(assert (=> b!7489399 (= e!4466197 e!4466196)))

(declare-fun c!1382932 () Bool)

(assert (=> b!7489399 (= c!1382932 (is-Union!19630 lt!2629185))))

(declare-fun b!7489400 () Bool)

(declare-fun e!4466195 () Bool)

(assert (=> b!7489400 (= e!4466195 call!687515)))

(declare-fun bm!687509 () Bool)

(declare-fun call!687514 () Bool)

(assert (=> bm!687509 (= call!687514 (validRegex!10144 (ite c!1382932 (regTwo!39773 lt!2629185) (regTwo!39772 lt!2629185))))))

(declare-fun d!2301031 () Bool)

(declare-fun res!3004244 () Bool)

(assert (=> d!2301031 (=> res!3004244 e!4466192)))

(assert (=> d!2301031 (= res!3004244 (is-ElementMatch!19630 lt!2629185))))

(assert (=> d!2301031 (= (validRegex!10144 lt!2629185) e!4466192)))

(declare-fun b!7489401 () Bool)

(declare-fun res!3004243 () Bool)

(declare-fun e!4466191 () Bool)

(assert (=> b!7489401 (=> res!3004243 e!4466191)))

(assert (=> b!7489401 (= res!3004243 (not (is-Concat!28475 lt!2629185)))))

(assert (=> b!7489401 (= e!4466196 e!4466191)))

(declare-fun b!7489402 () Bool)

(declare-fun e!4466194 () Bool)

(assert (=> b!7489402 (= e!4466194 call!687514)))

(declare-fun bm!687510 () Bool)

(assert (=> bm!687510 (= call!687515 (validRegex!10144 (ite c!1382931 (reg!19959 lt!2629185) (ite c!1382932 (regOne!39773 lt!2629185) (regOne!39772 lt!2629185)))))))

(declare-fun b!7489403 () Bool)

(declare-fun res!3004246 () Bool)

(declare-fun e!4466193 () Bool)

(assert (=> b!7489403 (=> (not res!3004246) (not e!4466193))))

(assert (=> b!7489403 (= res!3004246 call!687513)))

(assert (=> b!7489403 (= e!4466196 e!4466193)))

(declare-fun b!7489404 () Bool)

(assert (=> b!7489404 (= e!4466193 call!687514)))

(declare-fun b!7489405 () Bool)

(assert (=> b!7489405 (= e!4466191 e!4466194)))

(declare-fun res!3004245 () Bool)

(assert (=> b!7489405 (=> (not res!3004245) (not e!4466194))))

(assert (=> b!7489405 (= res!3004245 call!687513)))

(declare-fun b!7489406 () Bool)

(assert (=> b!7489406 (= e!4466197 e!4466195)))

(declare-fun res!3004247 () Bool)

(assert (=> b!7489406 (= res!3004247 (not (nullable!8568 (reg!19959 lt!2629185))))))

(assert (=> b!7489406 (=> (not res!3004247) (not e!4466195))))

(assert (= (and d!2301031 (not res!3004244)) b!7489398))

(assert (= (and b!7489398 c!1382931) b!7489406))

(assert (= (and b!7489398 (not c!1382931)) b!7489399))

(assert (= (and b!7489406 res!3004247) b!7489400))

(assert (= (and b!7489399 c!1382932) b!7489403))

(assert (= (and b!7489399 (not c!1382932)) b!7489401))

(assert (= (and b!7489403 res!3004246) b!7489404))

(assert (= (and b!7489401 (not res!3004243)) b!7489405))

(assert (= (and b!7489405 res!3004245) b!7489402))

(assert (= (or b!7489404 b!7489402) bm!687509))

(assert (= (or b!7489403 b!7489405) bm!687508))

(assert (= (or b!7489400 bm!687508) bm!687510))

(declare-fun m!8076602 () Bool)

(assert (=> bm!687509 m!8076602))

(declare-fun m!8076604 () Bool)

(assert (=> bm!687510 m!8076604))

(declare-fun m!8076606 () Bool)

(assert (=> b!7489406 m!8076606))

(assert (=> b!7489145 d!2301031))

(declare-fun bs!1934501 () Bool)

(declare-fun b!7489413 () Bool)

(assert (= bs!1934501 (and b!7489413 b!7489333)))

(declare-fun lambda!464022 () Int)

(assert (=> bs!1934501 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 r2!5783) (reg!19959 lt!2629192)) (= r2!5783 lt!2629192)) (= lambda!464022 lambda!464020))))

(declare-fun bs!1934502 () Bool)

(assert (= bs!1934502 (and b!7489413 b!7489280)))

(assert (=> bs!1934502 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 r2!5783) (reg!19959 lt!2629188)) (= r2!5783 lt!2629188)) (= lambda!464022 lambda!464018))))

(declare-fun bs!1934503 () Bool)

(assert (= bs!1934503 (and b!7489413 b!7489284)))

(assert (=> bs!1934503 (not (= lambda!464022 lambda!464019))))

(declare-fun bs!1934504 () Bool)

(assert (= bs!1934504 (and b!7489413 b!7489153)))

(assert (=> bs!1934504 (not (= lambda!464022 lambda!464004))))

(declare-fun bs!1934505 () Bool)

(assert (= bs!1934505 (and b!7489413 b!7489337)))

(assert (=> bs!1934505 (not (= lambda!464022 lambda!464021))))

(assert (=> bs!1934504 (not (= lambda!464022 lambda!464005))))

(assert (=> b!7489413 true))

(assert (=> b!7489413 true))

(declare-fun bs!1934506 () Bool)

(declare-fun b!7489417 () Bool)

(assert (= bs!1934506 (and b!7489417 b!7489333)))

(declare-fun lambda!464023 () Int)

(assert (=> bs!1934506 (not (= lambda!464023 lambda!464020))))

(declare-fun bs!1934507 () Bool)

(assert (= bs!1934507 (and b!7489417 b!7489280)))

(assert (=> bs!1934507 (not (= lambda!464023 lambda!464018))))

(declare-fun bs!1934508 () Bool)

(assert (= bs!1934508 (and b!7489417 b!7489284)))

(assert (=> bs!1934508 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r2!5783) (regOne!39772 lt!2629188)) (= (regTwo!39772 r2!5783) (regTwo!39772 lt!2629188))) (= lambda!464023 lambda!464019))))

(declare-fun bs!1934509 () Bool)

(assert (= bs!1934509 (and b!7489417 b!7489153)))

(assert (=> bs!1934509 (not (= lambda!464023 lambda!464004))))

(declare-fun bs!1934510 () Bool)

(assert (= bs!1934510 (and b!7489417 b!7489337)))

(assert (=> bs!1934510 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r2!5783) (regOne!39772 lt!2629192)) (= (regTwo!39772 r2!5783) (regTwo!39772 lt!2629192))) (= lambda!464023 lambda!464021))))

(declare-fun bs!1934511 () Bool)

(assert (= bs!1934511 (and b!7489417 b!7489413)))

(assert (=> bs!1934511 (not (= lambda!464023 lambda!464022))))

(assert (=> bs!1934509 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r2!5783) lt!2629182) (= (regTwo!39772 r2!5783) rTail!78)) (= lambda!464023 lambda!464005))))

(assert (=> b!7489417 true))

(assert (=> b!7489417 true))

(declare-fun b!7489407 () Bool)

(declare-fun e!4466199 () Bool)

(assert (=> b!7489407 (= e!4466199 (matchRSpec!4307 (regTwo!39773 r2!5783) (_1!37652 lt!2629193)))))

(declare-fun b!7489408 () Bool)

(declare-fun e!4466200 () Bool)

(declare-fun e!4466202 () Bool)

(assert (=> b!7489408 (= e!4466200 e!4466202)))

(declare-fun res!3004248 () Bool)

(assert (=> b!7489408 (= res!3004248 (not (is-EmptyLang!19630 r2!5783)))))

(assert (=> b!7489408 (=> (not res!3004248) (not e!4466202))))

(declare-fun b!7489409 () Bool)

(declare-fun e!4466198 () Bool)

(assert (=> b!7489409 (= e!4466198 (= (_1!37652 lt!2629193) (Cons!72220 (c!1382889 r2!5783) Nil!72220)))))

(declare-fun b!7489410 () Bool)

(declare-fun c!1382934 () Bool)

(assert (=> b!7489410 (= c!1382934 (is-Union!19630 r2!5783))))

(declare-fun e!4466204 () Bool)

(assert (=> b!7489410 (= e!4466198 e!4466204)))

(declare-fun b!7489411 () Bool)

(declare-fun res!3004249 () Bool)

(declare-fun e!4466201 () Bool)

(assert (=> b!7489411 (=> res!3004249 e!4466201)))

(declare-fun call!687516 () Bool)

(assert (=> b!7489411 (= res!3004249 call!687516)))

(declare-fun e!4466203 () Bool)

(assert (=> b!7489411 (= e!4466203 e!4466201)))

(declare-fun b!7489412 () Bool)

(declare-fun c!1382936 () Bool)

(assert (=> b!7489412 (= c!1382936 (is-ElementMatch!19630 r2!5783))))

(assert (=> b!7489412 (= e!4466202 e!4466198)))

(declare-fun d!2301033 () Bool)

(declare-fun c!1382935 () Bool)

(assert (=> d!2301033 (= c!1382935 (is-EmptyExpr!19630 r2!5783))))

(assert (=> d!2301033 (= (matchRSpec!4307 r2!5783 (_1!37652 lt!2629193)) e!4466200)))

(declare-fun call!687517 () Bool)

(assert (=> b!7489413 (= e!4466201 call!687517)))

(declare-fun b!7489414 () Bool)

(assert (=> b!7489414 (= e!4466204 e!4466199)))

(declare-fun res!3004250 () Bool)

(assert (=> b!7489414 (= res!3004250 (matchRSpec!4307 (regOne!39773 r2!5783) (_1!37652 lt!2629193)))))

(assert (=> b!7489414 (=> res!3004250 e!4466199)))

(declare-fun bm!687511 () Bool)

(assert (=> bm!687511 (= call!687516 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489415 () Bool)

(assert (=> b!7489415 (= e!4466200 call!687516)))

(declare-fun c!1382933 () Bool)

(declare-fun bm!687512 () Bool)

(assert (=> bm!687512 (= call!687517 (Exists!4247 (ite c!1382933 lambda!464022 lambda!464023)))))

(declare-fun b!7489416 () Bool)

(assert (=> b!7489416 (= e!4466204 e!4466203)))

(assert (=> b!7489416 (= c!1382933 (is-Star!19630 r2!5783))))

(assert (=> b!7489417 (= e!4466203 call!687517)))

(assert (= (and d!2301033 c!1382935) b!7489415))

(assert (= (and d!2301033 (not c!1382935)) b!7489408))

(assert (= (and b!7489408 res!3004248) b!7489412))

(assert (= (and b!7489412 c!1382936) b!7489409))

(assert (= (and b!7489412 (not c!1382936)) b!7489410))

(assert (= (and b!7489410 c!1382934) b!7489414))

(assert (= (and b!7489410 (not c!1382934)) b!7489416))

(assert (= (and b!7489414 (not res!3004250)) b!7489407))

(assert (= (and b!7489416 c!1382933) b!7489411))

(assert (= (and b!7489416 (not c!1382933)) b!7489417))

(assert (= (and b!7489411 (not res!3004249)) b!7489413))

(assert (= (or b!7489413 b!7489417) bm!687512))

(assert (= (or b!7489415 b!7489411) bm!687511))

(declare-fun m!8076608 () Bool)

(assert (=> b!7489407 m!8076608))

(declare-fun m!8076610 () Bool)

(assert (=> b!7489414 m!8076610))

(declare-fun m!8076612 () Bool)

(assert (=> bm!687511 m!8076612))

(declare-fun m!8076614 () Bool)

(assert (=> bm!687512 m!8076614))

(assert (=> b!7489152 d!2301033))

(declare-fun bs!1934512 () Bool)

(declare-fun b!7489432 () Bool)

(assert (= bs!1934512 (and b!7489432 b!7489333)))

(declare-fun lambda!464024 () Int)

(assert (=> bs!1934512 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 r1!5845) (reg!19959 lt!2629192)) (= r1!5845 lt!2629192)) (= lambda!464024 lambda!464020))))

(declare-fun bs!1934513 () Bool)

(assert (= bs!1934513 (and b!7489432 b!7489280)))

(assert (=> bs!1934513 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 r1!5845) (reg!19959 lt!2629188)) (= r1!5845 lt!2629188)) (= lambda!464024 lambda!464018))))

(declare-fun bs!1934514 () Bool)

(assert (= bs!1934514 (and b!7489432 b!7489284)))

(assert (=> bs!1934514 (not (= lambda!464024 lambda!464019))))

(declare-fun bs!1934515 () Bool)

(assert (= bs!1934515 (and b!7489432 b!7489417)))

(assert (=> bs!1934515 (not (= lambda!464024 lambda!464023))))

(declare-fun bs!1934516 () Bool)

(assert (= bs!1934516 (and b!7489432 b!7489153)))

(assert (=> bs!1934516 (not (= lambda!464024 lambda!464004))))

(declare-fun bs!1934517 () Bool)

(assert (= bs!1934517 (and b!7489432 b!7489337)))

(assert (=> bs!1934517 (not (= lambda!464024 lambda!464021))))

(declare-fun bs!1934518 () Bool)

(assert (= bs!1934518 (and b!7489432 b!7489413)))

(assert (=> bs!1934518 (= (and (= (reg!19959 r1!5845) (reg!19959 r2!5783)) (= r1!5845 r2!5783)) (= lambda!464024 lambda!464022))))

(assert (=> bs!1934516 (not (= lambda!464024 lambda!464005))))

(assert (=> b!7489432 true))

(assert (=> b!7489432 true))

(declare-fun bs!1934519 () Bool)

(declare-fun b!7489436 () Bool)

(assert (= bs!1934519 (and b!7489436 b!7489333)))

(declare-fun lambda!464025 () Int)

(assert (=> bs!1934519 (not (= lambda!464025 lambda!464020))))

(declare-fun bs!1934520 () Bool)

(assert (= bs!1934520 (and b!7489436 b!7489280)))

(assert (=> bs!1934520 (not (= lambda!464025 lambda!464018))))

(declare-fun bs!1934521 () Bool)

(assert (= bs!1934521 (and b!7489436 b!7489284)))

(assert (=> bs!1934521 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r1!5845) (regOne!39772 lt!2629188)) (= (regTwo!39772 r1!5845) (regTwo!39772 lt!2629188))) (= lambda!464025 lambda!464019))))

(declare-fun bs!1934522 () Bool)

(assert (= bs!1934522 (and b!7489436 b!7489432)))

(assert (=> bs!1934522 (not (= lambda!464025 lambda!464024))))

(declare-fun bs!1934523 () Bool)

(assert (= bs!1934523 (and b!7489436 b!7489417)))

(assert (=> bs!1934523 (= (and (= (regOne!39772 r1!5845) (regOne!39772 r2!5783)) (= (regTwo!39772 r1!5845) (regTwo!39772 r2!5783))) (= lambda!464025 lambda!464023))))

(declare-fun bs!1934524 () Bool)

(assert (= bs!1934524 (and b!7489436 b!7489153)))

(assert (=> bs!1934524 (not (= lambda!464025 lambda!464004))))

(declare-fun bs!1934525 () Bool)

(assert (= bs!1934525 (and b!7489436 b!7489337)))

(assert (=> bs!1934525 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r1!5845) (regOne!39772 lt!2629192)) (= (regTwo!39772 r1!5845) (regTwo!39772 lt!2629192))) (= lambda!464025 lambda!464021))))

(declare-fun bs!1934526 () Bool)

(assert (= bs!1934526 (and b!7489436 b!7489413)))

(assert (=> bs!1934526 (not (= lambda!464025 lambda!464022))))

(assert (=> bs!1934524 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 r1!5845) lt!2629182) (= (regTwo!39772 r1!5845) rTail!78)) (= lambda!464025 lambda!464005))))

(assert (=> b!7489436 true))

(assert (=> b!7489436 true))

(declare-fun b!7489426 () Bool)

(declare-fun e!4466210 () Bool)

(assert (=> b!7489426 (= e!4466210 (matchRSpec!4307 (regTwo!39773 r1!5845) (_1!37652 lt!2629193)))))

(declare-fun b!7489427 () Bool)

(declare-fun e!4466211 () Bool)

(declare-fun e!4466213 () Bool)

(assert (=> b!7489427 (= e!4466211 e!4466213)))

(declare-fun res!3004259 () Bool)

(assert (=> b!7489427 (= res!3004259 (not (is-EmptyLang!19630 r1!5845)))))

(assert (=> b!7489427 (=> (not res!3004259) (not e!4466213))))

(declare-fun b!7489428 () Bool)

(declare-fun e!4466209 () Bool)

(assert (=> b!7489428 (= e!4466209 (= (_1!37652 lt!2629193) (Cons!72220 (c!1382889 r1!5845) Nil!72220)))))

(declare-fun b!7489429 () Bool)

(declare-fun c!1382938 () Bool)

(assert (=> b!7489429 (= c!1382938 (is-Union!19630 r1!5845))))

(declare-fun e!4466215 () Bool)

(assert (=> b!7489429 (= e!4466209 e!4466215)))

(declare-fun b!7489430 () Bool)

(declare-fun res!3004260 () Bool)

(declare-fun e!4466212 () Bool)

(assert (=> b!7489430 (=> res!3004260 e!4466212)))

(declare-fun call!687518 () Bool)

(assert (=> b!7489430 (= res!3004260 call!687518)))

(declare-fun e!4466214 () Bool)

(assert (=> b!7489430 (= e!4466214 e!4466212)))

(declare-fun b!7489431 () Bool)

(declare-fun c!1382940 () Bool)

(assert (=> b!7489431 (= c!1382940 (is-ElementMatch!19630 r1!5845))))

(assert (=> b!7489431 (= e!4466213 e!4466209)))

(declare-fun d!2301035 () Bool)

(declare-fun c!1382939 () Bool)

(assert (=> d!2301035 (= c!1382939 (is-EmptyExpr!19630 r1!5845))))

(assert (=> d!2301035 (= (matchRSpec!4307 r1!5845 (_1!37652 lt!2629193)) e!4466211)))

(declare-fun call!687519 () Bool)

(assert (=> b!7489432 (= e!4466212 call!687519)))

(declare-fun b!7489433 () Bool)

(assert (=> b!7489433 (= e!4466215 e!4466210)))

(declare-fun res!3004261 () Bool)

(assert (=> b!7489433 (= res!3004261 (matchRSpec!4307 (regOne!39773 r1!5845) (_1!37652 lt!2629193)))))

(assert (=> b!7489433 (=> res!3004261 e!4466210)))

(declare-fun bm!687513 () Bool)

(assert (=> bm!687513 (= call!687518 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489434 () Bool)

(assert (=> b!7489434 (= e!4466211 call!687518)))

(declare-fun c!1382937 () Bool)

(declare-fun bm!687514 () Bool)

(assert (=> bm!687514 (= call!687519 (Exists!4247 (ite c!1382937 lambda!464024 lambda!464025)))))

(declare-fun b!7489435 () Bool)

(assert (=> b!7489435 (= e!4466215 e!4466214)))

(assert (=> b!7489435 (= c!1382937 (is-Star!19630 r1!5845))))

(assert (=> b!7489436 (= e!4466214 call!687519)))

(assert (= (and d!2301035 c!1382939) b!7489434))

(assert (= (and d!2301035 (not c!1382939)) b!7489427))

(assert (= (and b!7489427 res!3004259) b!7489431))

(assert (= (and b!7489431 c!1382940) b!7489428))

(assert (= (and b!7489431 (not c!1382940)) b!7489429))

(assert (= (and b!7489429 c!1382938) b!7489433))

(assert (= (and b!7489429 (not c!1382938)) b!7489435))

(assert (= (and b!7489433 (not res!3004261)) b!7489426))

(assert (= (and b!7489435 c!1382937) b!7489430))

(assert (= (and b!7489435 (not c!1382937)) b!7489436))

(assert (= (and b!7489430 (not res!3004260)) b!7489432))

(assert (= (or b!7489432 b!7489436) bm!687514))

(assert (= (or b!7489434 b!7489430) bm!687513))

(declare-fun m!8076616 () Bool)

(assert (=> b!7489426 m!8076616))

(declare-fun m!8076618 () Bool)

(assert (=> b!7489433 m!8076618))

(assert (=> bm!687513 m!8076612))

(declare-fun m!8076620 () Bool)

(assert (=> bm!687514 m!8076620))

(assert (=> b!7489152 d!2301035))

(declare-fun b!7489437 () Bool)

(declare-fun res!3004269 () Bool)

(declare-fun e!4466220 () Bool)

(assert (=> b!7489437 (=> res!3004269 e!4466220)))

(assert (=> b!7489437 (= res!3004269 (not (is-ElementMatch!19630 r1!5845)))))

(declare-fun e!4466217 () Bool)

(assert (=> b!7489437 (= e!4466217 e!4466220)))

(declare-fun b!7489438 () Bool)

(declare-fun res!3004263 () Bool)

(declare-fun e!4466219 () Bool)

(assert (=> b!7489438 (=> res!3004263 e!4466219)))

(assert (=> b!7489438 (= res!3004263 (not (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193)))))))

(declare-fun b!7489439 () Bool)

(declare-fun e!4466222 () Bool)

(assert (=> b!7489439 (= e!4466222 e!4466217)))

(declare-fun c!1382941 () Bool)

(assert (=> b!7489439 (= c!1382941 (is-EmptyLang!19630 r1!5845))))

(declare-fun bm!687515 () Bool)

(declare-fun call!687520 () Bool)

(assert (=> bm!687515 (= call!687520 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489440 () Bool)

(declare-fun res!3004268 () Bool)

(declare-fun e!4466216 () Bool)

(assert (=> b!7489440 (=> (not res!3004268) (not e!4466216))))

(assert (=> b!7489440 (= res!3004268 (not call!687520))))

(declare-fun b!7489441 () Bool)

(declare-fun e!4466221 () Bool)

(assert (=> b!7489441 (= e!4466221 (matchR!9392 (derivativeStep!5625 r1!5845 (head!15365 (_1!37652 lt!2629193))) (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489442 () Bool)

(declare-fun res!3004267 () Bool)

(assert (=> b!7489442 (=> (not res!3004267) (not e!4466216))))

(assert (=> b!7489442 (= res!3004267 (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489443 () Bool)

(declare-fun e!4466218 () Bool)

(assert (=> b!7489443 (= e!4466220 e!4466218)))

(declare-fun res!3004265 () Bool)

(assert (=> b!7489443 (=> (not res!3004265) (not e!4466218))))

(declare-fun lt!2629264 () Bool)

(assert (=> b!7489443 (= res!3004265 (not lt!2629264))))

(declare-fun b!7489444 () Bool)

(assert (=> b!7489444 (= e!4466218 e!4466219)))

(declare-fun res!3004264 () Bool)

(assert (=> b!7489444 (=> res!3004264 e!4466219)))

(assert (=> b!7489444 (= res!3004264 call!687520)))

(declare-fun b!7489445 () Bool)

(declare-fun res!3004266 () Bool)

(assert (=> b!7489445 (=> res!3004266 e!4466220)))

(assert (=> b!7489445 (= res!3004266 e!4466216)))

(declare-fun res!3004262 () Bool)

(assert (=> b!7489445 (=> (not res!3004262) (not e!4466216))))

(assert (=> b!7489445 (= res!3004262 lt!2629264)))

(declare-fun d!2301037 () Bool)

(assert (=> d!2301037 e!4466222))

(declare-fun c!1382943 () Bool)

(assert (=> d!2301037 (= c!1382943 (is-EmptyExpr!19630 r1!5845))))

(assert (=> d!2301037 (= lt!2629264 e!4466221)))

(declare-fun c!1382942 () Bool)

(assert (=> d!2301037 (= c!1382942 (isEmpty!41243 (_1!37652 lt!2629193)))))

(assert (=> d!2301037 (validRegex!10144 r1!5845)))

(assert (=> d!2301037 (= (matchR!9392 r1!5845 (_1!37652 lt!2629193)) lt!2629264)))

(declare-fun b!7489446 () Bool)

(assert (=> b!7489446 (= e!4466217 (not lt!2629264))))

(declare-fun b!7489447 () Bool)

(assert (=> b!7489447 (= e!4466216 (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 r1!5845)))))

(declare-fun b!7489448 () Bool)

(assert (=> b!7489448 (= e!4466222 (= lt!2629264 call!687520))))

(declare-fun b!7489449 () Bool)

(assert (=> b!7489449 (= e!4466219 (not (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 r1!5845))))))

(declare-fun b!7489450 () Bool)

(assert (=> b!7489450 (= e!4466221 (nullable!8568 r1!5845))))

(assert (= (and d!2301037 c!1382942) b!7489450))

(assert (= (and d!2301037 (not c!1382942)) b!7489441))

(assert (= (and d!2301037 c!1382943) b!7489448))

(assert (= (and d!2301037 (not c!1382943)) b!7489439))

(assert (= (and b!7489439 c!1382941) b!7489446))

(assert (= (and b!7489439 (not c!1382941)) b!7489437))

(assert (= (and b!7489437 (not res!3004269)) b!7489445))

(assert (= (and b!7489445 res!3004262) b!7489440))

(assert (= (and b!7489440 res!3004268) b!7489442))

(assert (= (and b!7489442 res!3004267) b!7489447))

(assert (= (and b!7489445 (not res!3004266)) b!7489443))

(assert (= (and b!7489443 res!3004265) b!7489444))

(assert (= (and b!7489444 (not res!3004264)) b!7489438))

(assert (= (and b!7489438 (not res!3004263)) b!7489449))

(assert (= (or b!7489448 b!7489440 b!7489444) bm!687515))

(declare-fun m!8076622 () Bool)

(assert (=> b!7489438 m!8076622))

(assert (=> b!7489438 m!8076622))

(declare-fun m!8076624 () Bool)

(assert (=> b!7489438 m!8076624))

(assert (=> b!7489442 m!8076622))

(assert (=> b!7489442 m!8076622))

(assert (=> b!7489442 m!8076624))

(assert (=> d!2301037 m!8076612))

(assert (=> d!2301037 m!8076488))

(declare-fun m!8076626 () Bool)

(assert (=> b!7489447 m!8076626))

(declare-fun m!8076628 () Bool)

(assert (=> b!7489450 m!8076628))

(assert (=> b!7489449 m!8076626))

(assert (=> bm!687515 m!8076612))

(assert (=> b!7489441 m!8076626))

(assert (=> b!7489441 m!8076626))

(declare-fun m!8076630 () Bool)

(assert (=> b!7489441 m!8076630))

(assert (=> b!7489441 m!8076622))

(assert (=> b!7489441 m!8076630))

(assert (=> b!7489441 m!8076622))

(declare-fun m!8076632 () Bool)

(assert (=> b!7489441 m!8076632))

(assert (=> b!7489152 d!2301037))

(declare-fun d!2301039 () Bool)

(assert (=> d!2301039 (= (matchR!9392 r2!5783 (_1!37652 lt!2629193)) (matchRSpec!4307 r2!5783 (_1!37652 lt!2629193)))))

(declare-fun lt!2629265 () Unit!166091)

(assert (=> d!2301039 (= lt!2629265 (choose!57886 r2!5783 (_1!37652 lt!2629193)))))

(assert (=> d!2301039 (validRegex!10144 r2!5783)))

(assert (=> d!2301039 (= (mainMatchTheorem!4301 r2!5783 (_1!37652 lt!2629193)) lt!2629265)))

(declare-fun bs!1934527 () Bool)

(assert (= bs!1934527 d!2301039))

(assert (=> bs!1934527 m!8076460))

(assert (=> bs!1934527 m!8076458))

(declare-fun m!8076634 () Bool)

(assert (=> bs!1934527 m!8076634))

(assert (=> bs!1934527 m!8076432))

(assert (=> b!7489152 d!2301039))

(declare-fun d!2301041 () Bool)

(assert (=> d!2301041 (= (matchR!9392 r1!5845 (_1!37652 lt!2629193)) (matchRSpec!4307 r1!5845 (_1!37652 lt!2629193)))))

(declare-fun lt!2629266 () Unit!166091)

(assert (=> d!2301041 (= lt!2629266 (choose!57886 r1!5845 (_1!37652 lt!2629193)))))

(assert (=> d!2301041 (validRegex!10144 r1!5845)))

(assert (=> d!2301041 (= (mainMatchTheorem!4301 r1!5845 (_1!37652 lt!2629193)) lt!2629266)))

(declare-fun bs!1934528 () Bool)

(assert (= bs!1934528 d!2301041))

(assert (=> bs!1934528 m!8076464))

(assert (=> bs!1934528 m!8076450))

(declare-fun m!8076636 () Bool)

(assert (=> bs!1934528 m!8076636))

(assert (=> bs!1934528 m!8076488))

(assert (=> b!7489152 d!2301041))

(declare-fun d!2301043 () Bool)

(assert (=> d!2301043 (= (matchR!9392 rTail!78 (_2!37652 lt!2629193)) (matchRSpec!4307 rTail!78 (_2!37652 lt!2629193)))))

(declare-fun lt!2629267 () Unit!166091)

(assert (=> d!2301043 (= lt!2629267 (choose!57886 rTail!78 (_2!37652 lt!2629193)))))

(assert (=> d!2301043 (validRegex!10144 rTail!78)))

(assert (=> d!2301043 (= (mainMatchTheorem!4301 rTail!78 (_2!37652 lt!2629193)) lt!2629267)))

(declare-fun bs!1934529 () Bool)

(assert (= bs!1934529 d!2301043))

(assert (=> bs!1934529 m!8076446))

(assert (=> bs!1934529 m!8076452))

(declare-fun m!8076638 () Bool)

(assert (=> bs!1934529 m!8076638))

(assert (=> bs!1934529 m!8076486))

(assert (=> b!7489152 d!2301043))

(declare-fun b!7489460 () Bool)

(declare-fun res!3004282 () Bool)

(declare-fun e!4466232 () Bool)

(assert (=> b!7489460 (=> res!3004282 e!4466232)))

(assert (=> b!7489460 (= res!3004282 (not (is-ElementMatch!19630 r2!5783)))))

(declare-fun e!4466229 () Bool)

(assert (=> b!7489460 (= e!4466229 e!4466232)))

(declare-fun b!7489461 () Bool)

(declare-fun res!3004276 () Bool)

(declare-fun e!4466231 () Bool)

(assert (=> b!7489461 (=> res!3004276 e!4466231)))

(assert (=> b!7489461 (= res!3004276 (not (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193)))))))

(declare-fun b!7489462 () Bool)

(declare-fun e!4466234 () Bool)

(assert (=> b!7489462 (= e!4466234 e!4466229)))

(declare-fun c!1382946 () Bool)

(assert (=> b!7489462 (= c!1382946 (is-EmptyLang!19630 r2!5783))))

(declare-fun bm!687516 () Bool)

(declare-fun call!687521 () Bool)

(assert (=> bm!687516 (= call!687521 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489463 () Bool)

(declare-fun res!3004281 () Bool)

(declare-fun e!4466228 () Bool)

(assert (=> b!7489463 (=> (not res!3004281) (not e!4466228))))

(assert (=> b!7489463 (= res!3004281 (not call!687521))))

(declare-fun b!7489464 () Bool)

(declare-fun e!4466233 () Bool)

(assert (=> b!7489464 (= e!4466233 (matchR!9392 (derivativeStep!5625 r2!5783 (head!15365 (_1!37652 lt!2629193))) (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489465 () Bool)

(declare-fun res!3004280 () Bool)

(assert (=> b!7489465 (=> (not res!3004280) (not e!4466228))))

(assert (=> b!7489465 (= res!3004280 (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489466 () Bool)

(declare-fun e!4466230 () Bool)

(assert (=> b!7489466 (= e!4466232 e!4466230)))

(declare-fun res!3004278 () Bool)

(assert (=> b!7489466 (=> (not res!3004278) (not e!4466230))))

(declare-fun lt!2629271 () Bool)

(assert (=> b!7489466 (= res!3004278 (not lt!2629271))))

(declare-fun b!7489467 () Bool)

(assert (=> b!7489467 (= e!4466230 e!4466231)))

(declare-fun res!3004277 () Bool)

(assert (=> b!7489467 (=> res!3004277 e!4466231)))

(assert (=> b!7489467 (= res!3004277 call!687521)))

(declare-fun b!7489468 () Bool)

(declare-fun res!3004279 () Bool)

(assert (=> b!7489468 (=> res!3004279 e!4466232)))

(assert (=> b!7489468 (= res!3004279 e!4466228)))

(declare-fun res!3004275 () Bool)

(assert (=> b!7489468 (=> (not res!3004275) (not e!4466228))))

(assert (=> b!7489468 (= res!3004275 lt!2629271)))

(declare-fun d!2301045 () Bool)

(assert (=> d!2301045 e!4466234))

(declare-fun c!1382948 () Bool)

(assert (=> d!2301045 (= c!1382948 (is-EmptyExpr!19630 r2!5783))))

(assert (=> d!2301045 (= lt!2629271 e!4466233)))

(declare-fun c!1382947 () Bool)

(assert (=> d!2301045 (= c!1382947 (isEmpty!41243 (_1!37652 lt!2629193)))))

(assert (=> d!2301045 (validRegex!10144 r2!5783)))

(assert (=> d!2301045 (= (matchR!9392 r2!5783 (_1!37652 lt!2629193)) lt!2629271)))

(declare-fun b!7489469 () Bool)

(assert (=> b!7489469 (= e!4466229 (not lt!2629271))))

(declare-fun b!7489470 () Bool)

(assert (=> b!7489470 (= e!4466228 (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 r2!5783)))))

(declare-fun b!7489471 () Bool)

(assert (=> b!7489471 (= e!4466234 (= lt!2629271 call!687521))))

(declare-fun b!7489472 () Bool)

(assert (=> b!7489472 (= e!4466231 (not (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 r2!5783))))))

(declare-fun b!7489473 () Bool)

(assert (=> b!7489473 (= e!4466233 (nullable!8568 r2!5783))))

(assert (= (and d!2301045 c!1382947) b!7489473))

(assert (= (and d!2301045 (not c!1382947)) b!7489464))

(assert (= (and d!2301045 c!1382948) b!7489471))

(assert (= (and d!2301045 (not c!1382948)) b!7489462))

(assert (= (and b!7489462 c!1382946) b!7489469))

(assert (= (and b!7489462 (not c!1382946)) b!7489460))

(assert (= (and b!7489460 (not res!3004282)) b!7489468))

(assert (= (and b!7489468 res!3004275) b!7489463))

(assert (= (and b!7489463 res!3004281) b!7489465))

(assert (= (and b!7489465 res!3004280) b!7489470))

(assert (= (and b!7489468 (not res!3004279)) b!7489466))

(assert (= (and b!7489466 res!3004278) b!7489467))

(assert (= (and b!7489467 (not res!3004277)) b!7489461))

(assert (= (and b!7489461 (not res!3004276)) b!7489472))

(assert (= (or b!7489471 b!7489463 b!7489467) bm!687516))

(assert (=> b!7489461 m!8076622))

(assert (=> b!7489461 m!8076622))

(assert (=> b!7489461 m!8076624))

(assert (=> b!7489465 m!8076622))

(assert (=> b!7489465 m!8076622))

(assert (=> b!7489465 m!8076624))

(assert (=> d!2301045 m!8076612))

(assert (=> d!2301045 m!8076432))

(assert (=> b!7489470 m!8076626))

(declare-fun m!8076640 () Bool)

(assert (=> b!7489473 m!8076640))

(assert (=> b!7489472 m!8076626))

(assert (=> bm!687516 m!8076612))

(assert (=> b!7489464 m!8076626))

(assert (=> b!7489464 m!8076626))

(declare-fun m!8076642 () Bool)

(assert (=> b!7489464 m!8076642))

(assert (=> b!7489464 m!8076622))

(assert (=> b!7489464 m!8076642))

(assert (=> b!7489464 m!8076622))

(declare-fun m!8076644 () Bool)

(assert (=> b!7489464 m!8076644))

(assert (=> b!7489152 d!2301045))

(declare-fun bs!1934530 () Bool)

(declare-fun b!7489480 () Bool)

(assert (= bs!1934530 (and b!7489480 b!7489333)))

(declare-fun lambda!464026 () Int)

(assert (=> bs!1934530 (= (and (= (_2!37652 lt!2629193) s!13591) (= (reg!19959 rTail!78) (reg!19959 lt!2629192)) (= rTail!78 lt!2629192)) (= lambda!464026 lambda!464020))))

(declare-fun bs!1934531 () Bool)

(assert (= bs!1934531 (and b!7489480 b!7489280)))

(assert (=> bs!1934531 (= (and (= (_2!37652 lt!2629193) s!13591) (= (reg!19959 rTail!78) (reg!19959 lt!2629188)) (= rTail!78 lt!2629188)) (= lambda!464026 lambda!464018))))

(declare-fun bs!1934532 () Bool)

(assert (= bs!1934532 (and b!7489480 b!7489284)))

(assert (=> bs!1934532 (not (= lambda!464026 lambda!464019))))

(declare-fun bs!1934533 () Bool)

(assert (= bs!1934533 (and b!7489480 b!7489432)))

(assert (=> bs!1934533 (= (and (= (_2!37652 lt!2629193) (_1!37652 lt!2629193)) (= (reg!19959 rTail!78) (reg!19959 r1!5845)) (= rTail!78 r1!5845)) (= lambda!464026 lambda!464024))))

(declare-fun bs!1934534 () Bool)

(assert (= bs!1934534 (and b!7489480 b!7489417)))

(assert (=> bs!1934534 (not (= lambda!464026 lambda!464023))))

(declare-fun bs!1934535 () Bool)

(assert (= bs!1934535 (and b!7489480 b!7489153)))

(assert (=> bs!1934535 (not (= lambda!464026 lambda!464004))))

(declare-fun bs!1934536 () Bool)

(assert (= bs!1934536 (and b!7489480 b!7489337)))

(assert (=> bs!1934536 (not (= lambda!464026 lambda!464021))))

(declare-fun bs!1934537 () Bool)

(assert (= bs!1934537 (and b!7489480 b!7489413)))

(assert (=> bs!1934537 (= (and (= (_2!37652 lt!2629193) (_1!37652 lt!2629193)) (= (reg!19959 rTail!78) (reg!19959 r2!5783)) (= rTail!78 r2!5783)) (= lambda!464026 lambda!464022))))

(assert (=> bs!1934535 (not (= lambda!464026 lambda!464005))))

(declare-fun bs!1934538 () Bool)

(assert (= bs!1934538 (and b!7489480 b!7489436)))

(assert (=> bs!1934538 (not (= lambda!464026 lambda!464025))))

(assert (=> b!7489480 true))

(assert (=> b!7489480 true))

(declare-fun bs!1934539 () Bool)

(declare-fun b!7489484 () Bool)

(assert (= bs!1934539 (and b!7489484 b!7489333)))

(declare-fun lambda!464027 () Int)

(assert (=> bs!1934539 (not (= lambda!464027 lambda!464020))))

(declare-fun bs!1934540 () Bool)

(assert (= bs!1934540 (and b!7489484 b!7489280)))

(assert (=> bs!1934540 (not (= lambda!464027 lambda!464018))))

(declare-fun bs!1934541 () Bool)

(assert (= bs!1934541 (and b!7489484 b!7489284)))

(assert (=> bs!1934541 (= (and (= (_2!37652 lt!2629193) s!13591) (= (regOne!39772 rTail!78) (regOne!39772 lt!2629188)) (= (regTwo!39772 rTail!78) (regTwo!39772 lt!2629188))) (= lambda!464027 lambda!464019))))

(declare-fun bs!1934542 () Bool)

(assert (= bs!1934542 (and b!7489484 b!7489432)))

(assert (=> bs!1934542 (not (= lambda!464027 lambda!464024))))

(declare-fun bs!1934543 () Bool)

(assert (= bs!1934543 (and b!7489484 b!7489417)))

(assert (=> bs!1934543 (= (and (= (_2!37652 lt!2629193) (_1!37652 lt!2629193)) (= (regOne!39772 rTail!78) (regOne!39772 r2!5783)) (= (regTwo!39772 rTail!78) (regTwo!39772 r2!5783))) (= lambda!464027 lambda!464023))))

(declare-fun bs!1934544 () Bool)

(assert (= bs!1934544 (and b!7489484 b!7489153)))

(assert (=> bs!1934544 (not (= lambda!464027 lambda!464004))))

(declare-fun bs!1934545 () Bool)

(assert (= bs!1934545 (and b!7489484 b!7489337)))

(assert (=> bs!1934545 (= (and (= (_2!37652 lt!2629193) s!13591) (= (regOne!39772 rTail!78) (regOne!39772 lt!2629192)) (= (regTwo!39772 rTail!78) (regTwo!39772 lt!2629192))) (= lambda!464027 lambda!464021))))

(assert (=> bs!1934544 (= (and (= (_2!37652 lt!2629193) s!13591) (= (regOne!39772 rTail!78) lt!2629182) (= (regTwo!39772 rTail!78) rTail!78)) (= lambda!464027 lambda!464005))))

(declare-fun bs!1934546 () Bool)

(assert (= bs!1934546 (and b!7489484 b!7489436)))

(assert (=> bs!1934546 (= (and (= (_2!37652 lt!2629193) (_1!37652 lt!2629193)) (= (regOne!39772 rTail!78) (regOne!39772 r1!5845)) (= (regTwo!39772 rTail!78) (regTwo!39772 r1!5845))) (= lambda!464027 lambda!464025))))

(declare-fun bs!1934547 () Bool)

(assert (= bs!1934547 (and b!7489484 b!7489480)))

(assert (=> bs!1934547 (not (= lambda!464027 lambda!464026))))

(declare-fun bs!1934549 () Bool)

(assert (= bs!1934549 (and b!7489484 b!7489413)))

(assert (=> bs!1934549 (not (= lambda!464027 lambda!464022))))

(assert (=> b!7489484 true))

(assert (=> b!7489484 true))

(declare-fun b!7489474 () Bool)

(declare-fun e!4466236 () Bool)

(assert (=> b!7489474 (= e!4466236 (matchRSpec!4307 (regTwo!39773 rTail!78) (_2!37652 lt!2629193)))))

(declare-fun b!7489475 () Bool)

(declare-fun e!4466237 () Bool)

(declare-fun e!4466239 () Bool)

(assert (=> b!7489475 (= e!4466237 e!4466239)))

(declare-fun res!3004283 () Bool)

(assert (=> b!7489475 (= res!3004283 (not (is-EmptyLang!19630 rTail!78)))))

(assert (=> b!7489475 (=> (not res!3004283) (not e!4466239))))

(declare-fun b!7489476 () Bool)

(declare-fun e!4466235 () Bool)

(assert (=> b!7489476 (= e!4466235 (= (_2!37652 lt!2629193) (Cons!72220 (c!1382889 rTail!78) Nil!72220)))))

(declare-fun b!7489477 () Bool)

(declare-fun c!1382950 () Bool)

(assert (=> b!7489477 (= c!1382950 (is-Union!19630 rTail!78))))

(declare-fun e!4466241 () Bool)

(assert (=> b!7489477 (= e!4466235 e!4466241)))

(declare-fun b!7489478 () Bool)

(declare-fun res!3004284 () Bool)

(declare-fun e!4466238 () Bool)

(assert (=> b!7489478 (=> res!3004284 e!4466238)))

(declare-fun call!687522 () Bool)

(assert (=> b!7489478 (= res!3004284 call!687522)))

(declare-fun e!4466240 () Bool)

(assert (=> b!7489478 (= e!4466240 e!4466238)))

(declare-fun b!7489479 () Bool)

(declare-fun c!1382952 () Bool)

(assert (=> b!7489479 (= c!1382952 (is-ElementMatch!19630 rTail!78))))

(assert (=> b!7489479 (= e!4466239 e!4466235)))

(declare-fun d!2301047 () Bool)

(declare-fun c!1382951 () Bool)

(assert (=> d!2301047 (= c!1382951 (is-EmptyExpr!19630 rTail!78))))

(assert (=> d!2301047 (= (matchRSpec!4307 rTail!78 (_2!37652 lt!2629193)) e!4466237)))

(declare-fun call!687523 () Bool)

(assert (=> b!7489480 (= e!4466238 call!687523)))

(declare-fun b!7489481 () Bool)

(assert (=> b!7489481 (= e!4466241 e!4466236)))

(declare-fun res!3004285 () Bool)

(assert (=> b!7489481 (= res!3004285 (matchRSpec!4307 (regOne!39773 rTail!78) (_2!37652 lt!2629193)))))

(assert (=> b!7489481 (=> res!3004285 e!4466236)))

(declare-fun bm!687517 () Bool)

(assert (=> bm!687517 (= call!687522 (isEmpty!41243 (_2!37652 lt!2629193)))))

(declare-fun b!7489482 () Bool)

(assert (=> b!7489482 (= e!4466237 call!687522)))

(declare-fun bm!687518 () Bool)

(declare-fun c!1382949 () Bool)

(assert (=> bm!687518 (= call!687523 (Exists!4247 (ite c!1382949 lambda!464026 lambda!464027)))))

(declare-fun b!7489483 () Bool)

(assert (=> b!7489483 (= e!4466241 e!4466240)))

(assert (=> b!7489483 (= c!1382949 (is-Star!19630 rTail!78))))

(assert (=> b!7489484 (= e!4466240 call!687523)))

(assert (= (and d!2301047 c!1382951) b!7489482))

(assert (= (and d!2301047 (not c!1382951)) b!7489475))

(assert (= (and b!7489475 res!3004283) b!7489479))

(assert (= (and b!7489479 c!1382952) b!7489476))

(assert (= (and b!7489479 (not c!1382952)) b!7489477))

(assert (= (and b!7489477 c!1382950) b!7489481))

(assert (= (and b!7489477 (not c!1382950)) b!7489483))

(assert (= (and b!7489481 (not res!3004285)) b!7489474))

(assert (= (and b!7489483 c!1382949) b!7489478))

(assert (= (and b!7489483 (not c!1382949)) b!7489484))

(assert (= (and b!7489478 (not res!3004284)) b!7489480))

(assert (= (or b!7489480 b!7489484) bm!687518))

(assert (= (or b!7489482 b!7489478) bm!687517))

(declare-fun m!8076674 () Bool)

(assert (=> b!7489474 m!8076674))

(declare-fun m!8076676 () Bool)

(assert (=> b!7489481 m!8076676))

(declare-fun m!8076678 () Bool)

(assert (=> bm!687517 m!8076678))

(declare-fun m!8076680 () Bool)

(assert (=> bm!687518 m!8076680))

(assert (=> b!7489152 d!2301047))

(declare-fun d!2301055 () Bool)

(assert (=> d!2301055 (= (matchR!9392 lt!2629182 (_1!37652 lt!2629193)) (matchRSpec!4307 lt!2629182 (_1!37652 lt!2629193)))))

(declare-fun lt!2629272 () Unit!166091)

(assert (=> d!2301055 (= lt!2629272 (choose!57886 lt!2629182 (_1!37652 lt!2629193)))))

(assert (=> d!2301055 (validRegex!10144 lt!2629182)))

(assert (=> d!2301055 (= (mainMatchTheorem!4301 lt!2629182 (_1!37652 lt!2629193)) lt!2629272)))

(declare-fun bs!1934551 () Bool)

(assert (= bs!1934551 d!2301055))

(assert (=> bs!1934551 m!8076480))

(assert (=> bs!1934551 m!8076448))

(declare-fun m!8076682 () Bool)

(assert (=> bs!1934551 m!8076682))

(declare-fun m!8076684 () Bool)

(assert (=> bs!1934551 m!8076684))

(assert (=> b!7489152 d!2301055))

(declare-fun bs!1934552 () Bool)

(declare-fun b!7489491 () Bool)

(assert (= bs!1934552 (and b!7489491 b!7489280)))

(declare-fun lambda!464028 () Int)

(assert (=> bs!1934552 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 lt!2629182) (reg!19959 lt!2629188)) (= lt!2629182 lt!2629188)) (= lambda!464028 lambda!464018))))

(declare-fun bs!1934553 () Bool)

(assert (= bs!1934553 (and b!7489491 b!7489284)))

(assert (=> bs!1934553 (not (= lambda!464028 lambda!464019))))

(declare-fun bs!1934554 () Bool)

(assert (= bs!1934554 (and b!7489491 b!7489432)))

(assert (=> bs!1934554 (= (and (= (reg!19959 lt!2629182) (reg!19959 r1!5845)) (= lt!2629182 r1!5845)) (= lambda!464028 lambda!464024))))

(declare-fun bs!1934555 () Bool)

(assert (= bs!1934555 (and b!7489491 b!7489417)))

(assert (=> bs!1934555 (not (= lambda!464028 lambda!464023))))

(declare-fun bs!1934556 () Bool)

(assert (= bs!1934556 (and b!7489491 b!7489153)))

(assert (=> bs!1934556 (not (= lambda!464028 lambda!464004))))

(declare-fun bs!1934557 () Bool)

(assert (= bs!1934557 (and b!7489491 b!7489337)))

(assert (=> bs!1934557 (not (= lambda!464028 lambda!464021))))

(assert (=> bs!1934556 (not (= lambda!464028 lambda!464005))))

(declare-fun bs!1934558 () Bool)

(assert (= bs!1934558 (and b!7489491 b!7489436)))

(assert (=> bs!1934558 (not (= lambda!464028 lambda!464025))))

(declare-fun bs!1934559 () Bool)

(assert (= bs!1934559 (and b!7489491 b!7489333)))

(assert (=> bs!1934559 (= (and (= (_1!37652 lt!2629193) s!13591) (= (reg!19959 lt!2629182) (reg!19959 lt!2629192)) (= lt!2629182 lt!2629192)) (= lambda!464028 lambda!464020))))

(declare-fun bs!1934560 () Bool)

(assert (= bs!1934560 (and b!7489491 b!7489484)))

(assert (=> bs!1934560 (not (= lambda!464028 lambda!464027))))

(declare-fun bs!1934561 () Bool)

(assert (= bs!1934561 (and b!7489491 b!7489480)))

(assert (=> bs!1934561 (= (and (= (_1!37652 lt!2629193) (_2!37652 lt!2629193)) (= (reg!19959 lt!2629182) (reg!19959 rTail!78)) (= lt!2629182 rTail!78)) (= lambda!464028 lambda!464026))))

(declare-fun bs!1934562 () Bool)

(assert (= bs!1934562 (and b!7489491 b!7489413)))

(assert (=> bs!1934562 (= (and (= (reg!19959 lt!2629182) (reg!19959 r2!5783)) (= lt!2629182 r2!5783)) (= lambda!464028 lambda!464022))))

(assert (=> b!7489491 true))

(assert (=> b!7489491 true))

(declare-fun bs!1934563 () Bool)

(declare-fun b!7489495 () Bool)

(assert (= bs!1934563 (and b!7489495 b!7489280)))

(declare-fun lambda!464029 () Int)

(assert (=> bs!1934563 (not (= lambda!464029 lambda!464018))))

(declare-fun bs!1934564 () Bool)

(assert (= bs!1934564 (and b!7489495 b!7489284)))

(assert (=> bs!1934564 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 lt!2629182) (regOne!39772 lt!2629188)) (= (regTwo!39772 lt!2629182) (regTwo!39772 lt!2629188))) (= lambda!464029 lambda!464019))))

(declare-fun bs!1934565 () Bool)

(assert (= bs!1934565 (and b!7489495 b!7489432)))

(assert (=> bs!1934565 (not (= lambda!464029 lambda!464024))))

(declare-fun bs!1934566 () Bool)

(assert (= bs!1934566 (and b!7489495 b!7489417)))

(assert (=> bs!1934566 (= (and (= (regOne!39772 lt!2629182) (regOne!39772 r2!5783)) (= (regTwo!39772 lt!2629182) (regTwo!39772 r2!5783))) (= lambda!464029 lambda!464023))))

(declare-fun bs!1934567 () Bool)

(assert (= bs!1934567 (and b!7489495 b!7489337)))

(assert (=> bs!1934567 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 lt!2629182) (regOne!39772 lt!2629192)) (= (regTwo!39772 lt!2629182) (regTwo!39772 lt!2629192))) (= lambda!464029 lambda!464021))))

(declare-fun bs!1934568 () Bool)

(assert (= bs!1934568 (and b!7489495 b!7489153)))

(assert (=> bs!1934568 (= (and (= (_1!37652 lt!2629193) s!13591) (= (regOne!39772 lt!2629182) lt!2629182) (= (regTwo!39772 lt!2629182) rTail!78)) (= lambda!464029 lambda!464005))))

(declare-fun bs!1934569 () Bool)

(assert (= bs!1934569 (and b!7489495 b!7489436)))

(assert (=> bs!1934569 (= (and (= (regOne!39772 lt!2629182) (regOne!39772 r1!5845)) (= (regTwo!39772 lt!2629182) (regTwo!39772 r1!5845))) (= lambda!464029 lambda!464025))))

(declare-fun bs!1934570 () Bool)

(assert (= bs!1934570 (and b!7489495 b!7489333)))

(assert (=> bs!1934570 (not (= lambda!464029 lambda!464020))))

(declare-fun bs!1934571 () Bool)

(assert (= bs!1934571 (and b!7489495 b!7489484)))

(assert (=> bs!1934571 (= (and (= (_1!37652 lt!2629193) (_2!37652 lt!2629193)) (= (regOne!39772 lt!2629182) (regOne!39772 rTail!78)) (= (regTwo!39772 lt!2629182) (regTwo!39772 rTail!78))) (= lambda!464029 lambda!464027))))

(assert (=> bs!1934568 (not (= lambda!464029 lambda!464004))))

(declare-fun bs!1934572 () Bool)

(assert (= bs!1934572 (and b!7489495 b!7489491)))

(assert (=> bs!1934572 (not (= lambda!464029 lambda!464028))))

(declare-fun bs!1934573 () Bool)

(assert (= bs!1934573 (and b!7489495 b!7489480)))

(assert (=> bs!1934573 (not (= lambda!464029 lambda!464026))))

(declare-fun bs!1934574 () Bool)

(assert (= bs!1934574 (and b!7489495 b!7489413)))

(assert (=> bs!1934574 (not (= lambda!464029 lambda!464022))))

(assert (=> b!7489495 true))

(assert (=> b!7489495 true))

(declare-fun b!7489485 () Bool)

(declare-fun e!4466243 () Bool)

(assert (=> b!7489485 (= e!4466243 (matchRSpec!4307 (regTwo!39773 lt!2629182) (_1!37652 lt!2629193)))))

(declare-fun b!7489486 () Bool)

(declare-fun e!4466244 () Bool)

(declare-fun e!4466246 () Bool)

(assert (=> b!7489486 (= e!4466244 e!4466246)))

(declare-fun res!3004286 () Bool)

(assert (=> b!7489486 (= res!3004286 (not (is-EmptyLang!19630 lt!2629182)))))

(assert (=> b!7489486 (=> (not res!3004286) (not e!4466246))))

(declare-fun b!7489487 () Bool)

(declare-fun e!4466242 () Bool)

(assert (=> b!7489487 (= e!4466242 (= (_1!37652 lt!2629193) (Cons!72220 (c!1382889 lt!2629182) Nil!72220)))))

(declare-fun b!7489488 () Bool)

(declare-fun c!1382954 () Bool)

(assert (=> b!7489488 (= c!1382954 (is-Union!19630 lt!2629182))))

(declare-fun e!4466248 () Bool)

(assert (=> b!7489488 (= e!4466242 e!4466248)))

(declare-fun b!7489489 () Bool)

(declare-fun res!3004287 () Bool)

(declare-fun e!4466245 () Bool)

(assert (=> b!7489489 (=> res!3004287 e!4466245)))

(declare-fun call!687524 () Bool)

(assert (=> b!7489489 (= res!3004287 call!687524)))

(declare-fun e!4466247 () Bool)

(assert (=> b!7489489 (= e!4466247 e!4466245)))

(declare-fun b!7489490 () Bool)

(declare-fun c!1382956 () Bool)

(assert (=> b!7489490 (= c!1382956 (is-ElementMatch!19630 lt!2629182))))

(assert (=> b!7489490 (= e!4466246 e!4466242)))

(declare-fun d!2301057 () Bool)

(declare-fun c!1382955 () Bool)

(assert (=> d!2301057 (= c!1382955 (is-EmptyExpr!19630 lt!2629182))))

(assert (=> d!2301057 (= (matchRSpec!4307 lt!2629182 (_1!37652 lt!2629193)) e!4466244)))

(declare-fun call!687525 () Bool)

(assert (=> b!7489491 (= e!4466245 call!687525)))

(declare-fun b!7489492 () Bool)

(assert (=> b!7489492 (= e!4466248 e!4466243)))

(declare-fun res!3004288 () Bool)

(assert (=> b!7489492 (= res!3004288 (matchRSpec!4307 (regOne!39773 lt!2629182) (_1!37652 lt!2629193)))))

(assert (=> b!7489492 (=> res!3004288 e!4466243)))

(declare-fun bm!687519 () Bool)

(assert (=> bm!687519 (= call!687524 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489493 () Bool)

(assert (=> b!7489493 (= e!4466244 call!687524)))

(declare-fun c!1382953 () Bool)

(declare-fun bm!687520 () Bool)

(assert (=> bm!687520 (= call!687525 (Exists!4247 (ite c!1382953 lambda!464028 lambda!464029)))))

(declare-fun b!7489494 () Bool)

(assert (=> b!7489494 (= e!4466248 e!4466247)))

(assert (=> b!7489494 (= c!1382953 (is-Star!19630 lt!2629182))))

(assert (=> b!7489495 (= e!4466247 call!687525)))

(assert (= (and d!2301057 c!1382955) b!7489493))

(assert (= (and d!2301057 (not c!1382955)) b!7489486))

(assert (= (and b!7489486 res!3004286) b!7489490))

(assert (= (and b!7489490 c!1382956) b!7489487))

(assert (= (and b!7489490 (not c!1382956)) b!7489488))

(assert (= (and b!7489488 c!1382954) b!7489492))

(assert (= (and b!7489488 (not c!1382954)) b!7489494))

(assert (= (and b!7489492 (not res!3004288)) b!7489485))

(assert (= (and b!7489494 c!1382953) b!7489489))

(assert (= (and b!7489494 (not c!1382953)) b!7489495))

(assert (= (and b!7489489 (not res!3004287)) b!7489491))

(assert (= (or b!7489491 b!7489495) bm!687520))

(assert (= (or b!7489493 b!7489489) bm!687519))

(declare-fun m!8076686 () Bool)

(assert (=> b!7489485 m!8076686))

(declare-fun m!8076688 () Bool)

(assert (=> b!7489492 m!8076688))

(assert (=> bm!687519 m!8076612))

(declare-fun m!8076690 () Bool)

(assert (=> bm!687520 m!8076690))

(assert (=> b!7489152 d!2301057))

(declare-fun bm!687521 () Bool)

(declare-fun call!687526 () Bool)

(declare-fun call!687528 () Bool)

(assert (=> bm!687521 (= call!687526 call!687528)))

(declare-fun b!7489496 () Bool)

(declare-fun e!4466250 () Bool)

(declare-fun e!4466255 () Bool)

(assert (=> b!7489496 (= e!4466250 e!4466255)))

(declare-fun c!1382957 () Bool)

(assert (=> b!7489496 (= c!1382957 (is-Star!19630 r2!5783))))

(declare-fun b!7489497 () Bool)

(declare-fun e!4466254 () Bool)

(assert (=> b!7489497 (= e!4466255 e!4466254)))

(declare-fun c!1382958 () Bool)

(assert (=> b!7489497 (= c!1382958 (is-Union!19630 r2!5783))))

(declare-fun b!7489498 () Bool)

(declare-fun e!4466253 () Bool)

(assert (=> b!7489498 (= e!4466253 call!687528)))

(declare-fun bm!687522 () Bool)

(declare-fun call!687527 () Bool)

(assert (=> bm!687522 (= call!687527 (validRegex!10144 (ite c!1382958 (regTwo!39773 r2!5783) (regTwo!39772 r2!5783))))))

(declare-fun d!2301059 () Bool)

(declare-fun res!3004290 () Bool)

(assert (=> d!2301059 (=> res!3004290 e!4466250)))

(assert (=> d!2301059 (= res!3004290 (is-ElementMatch!19630 r2!5783))))

(assert (=> d!2301059 (= (validRegex!10144 r2!5783) e!4466250)))

(declare-fun b!7489499 () Bool)

(declare-fun res!3004289 () Bool)

(declare-fun e!4466249 () Bool)

(assert (=> b!7489499 (=> res!3004289 e!4466249)))

(assert (=> b!7489499 (= res!3004289 (not (is-Concat!28475 r2!5783)))))

(assert (=> b!7489499 (= e!4466254 e!4466249)))

(declare-fun b!7489500 () Bool)

(declare-fun e!4466252 () Bool)

(assert (=> b!7489500 (= e!4466252 call!687527)))

(declare-fun bm!687523 () Bool)

(assert (=> bm!687523 (= call!687528 (validRegex!10144 (ite c!1382957 (reg!19959 r2!5783) (ite c!1382958 (regOne!39773 r2!5783) (regOne!39772 r2!5783)))))))

(declare-fun b!7489501 () Bool)

(declare-fun res!3004292 () Bool)

(declare-fun e!4466251 () Bool)

(assert (=> b!7489501 (=> (not res!3004292) (not e!4466251))))

(assert (=> b!7489501 (= res!3004292 call!687526)))

(assert (=> b!7489501 (= e!4466254 e!4466251)))

(declare-fun b!7489502 () Bool)

(assert (=> b!7489502 (= e!4466251 call!687527)))

(declare-fun b!7489503 () Bool)

(assert (=> b!7489503 (= e!4466249 e!4466252)))

(declare-fun res!3004291 () Bool)

(assert (=> b!7489503 (=> (not res!3004291) (not e!4466252))))

(assert (=> b!7489503 (= res!3004291 call!687526)))

(declare-fun b!7489504 () Bool)

(assert (=> b!7489504 (= e!4466255 e!4466253)))

(declare-fun res!3004293 () Bool)

(assert (=> b!7489504 (= res!3004293 (not (nullable!8568 (reg!19959 r2!5783))))))

(assert (=> b!7489504 (=> (not res!3004293) (not e!4466253))))

(assert (= (and d!2301059 (not res!3004290)) b!7489496))

(assert (= (and b!7489496 c!1382957) b!7489504))

(assert (= (and b!7489496 (not c!1382957)) b!7489497))

(assert (= (and b!7489504 res!3004293) b!7489498))

(assert (= (and b!7489497 c!1382958) b!7489501))

(assert (= (and b!7489497 (not c!1382958)) b!7489499))

(assert (= (and b!7489501 res!3004292) b!7489502))

(assert (= (and b!7489499 (not res!3004289)) b!7489503))

(assert (= (and b!7489503 res!3004291) b!7489500))

(assert (= (or b!7489502 b!7489500) bm!687522))

(assert (= (or b!7489501 b!7489503) bm!687521))

(assert (= (or b!7489498 bm!687521) bm!687523))

(declare-fun m!8076692 () Bool)

(assert (=> bm!687522 m!8076692))

(declare-fun m!8076694 () Bool)

(assert (=> bm!687523 m!8076694))

(declare-fun m!8076696 () Bool)

(assert (=> b!7489504 m!8076696))

(assert (=> b!7489142 d!2301059))

(declare-fun b!7489505 () Bool)

(declare-fun res!3004301 () Bool)

(declare-fun e!4466260 () Bool)

(assert (=> b!7489505 (=> res!3004301 e!4466260)))

(assert (=> b!7489505 (= res!3004301 (not (is-ElementMatch!19630 rTail!78)))))

(declare-fun e!4466257 () Bool)

(assert (=> b!7489505 (= e!4466257 e!4466260)))

(declare-fun b!7489506 () Bool)

(declare-fun res!3004295 () Bool)

(declare-fun e!4466259 () Bool)

(assert (=> b!7489506 (=> res!3004295 e!4466259)))

(assert (=> b!7489506 (= res!3004295 (not (isEmpty!41243 (tail!14934 (_2!37652 lt!2629193)))))))

(declare-fun b!7489507 () Bool)

(declare-fun e!4466262 () Bool)

(assert (=> b!7489507 (= e!4466262 e!4466257)))

(declare-fun c!1382959 () Bool)

(assert (=> b!7489507 (= c!1382959 (is-EmptyLang!19630 rTail!78))))

(declare-fun bm!687524 () Bool)

(declare-fun call!687529 () Bool)

(assert (=> bm!687524 (= call!687529 (isEmpty!41243 (_2!37652 lt!2629193)))))

(declare-fun b!7489508 () Bool)

(declare-fun res!3004300 () Bool)

(declare-fun e!4466256 () Bool)

(assert (=> b!7489508 (=> (not res!3004300) (not e!4466256))))

(assert (=> b!7489508 (= res!3004300 (not call!687529))))

(declare-fun b!7489509 () Bool)

(declare-fun e!4466261 () Bool)

(assert (=> b!7489509 (= e!4466261 (matchR!9392 (derivativeStep!5625 rTail!78 (head!15365 (_2!37652 lt!2629193))) (tail!14934 (_2!37652 lt!2629193))))))

(declare-fun b!7489510 () Bool)

(declare-fun res!3004299 () Bool)

(assert (=> b!7489510 (=> (not res!3004299) (not e!4466256))))

(assert (=> b!7489510 (= res!3004299 (isEmpty!41243 (tail!14934 (_2!37652 lt!2629193))))))

(declare-fun b!7489511 () Bool)

(declare-fun e!4466258 () Bool)

(assert (=> b!7489511 (= e!4466260 e!4466258)))

(declare-fun res!3004297 () Bool)

(assert (=> b!7489511 (=> (not res!3004297) (not e!4466258))))

(declare-fun lt!2629273 () Bool)

(assert (=> b!7489511 (= res!3004297 (not lt!2629273))))

(declare-fun b!7489512 () Bool)

(assert (=> b!7489512 (= e!4466258 e!4466259)))

(declare-fun res!3004296 () Bool)

(assert (=> b!7489512 (=> res!3004296 e!4466259)))

(assert (=> b!7489512 (= res!3004296 call!687529)))

(declare-fun b!7489513 () Bool)

(declare-fun res!3004298 () Bool)

(assert (=> b!7489513 (=> res!3004298 e!4466260)))

(assert (=> b!7489513 (= res!3004298 e!4466256)))

(declare-fun res!3004294 () Bool)

(assert (=> b!7489513 (=> (not res!3004294) (not e!4466256))))

(assert (=> b!7489513 (= res!3004294 lt!2629273)))

(declare-fun d!2301061 () Bool)

(assert (=> d!2301061 e!4466262))

(declare-fun c!1382961 () Bool)

(assert (=> d!2301061 (= c!1382961 (is-EmptyExpr!19630 rTail!78))))

(assert (=> d!2301061 (= lt!2629273 e!4466261)))

(declare-fun c!1382960 () Bool)

(assert (=> d!2301061 (= c!1382960 (isEmpty!41243 (_2!37652 lt!2629193)))))

(assert (=> d!2301061 (validRegex!10144 rTail!78)))

(assert (=> d!2301061 (= (matchR!9392 rTail!78 (_2!37652 lt!2629193)) lt!2629273)))

(declare-fun b!7489514 () Bool)

(assert (=> b!7489514 (= e!4466257 (not lt!2629273))))

(declare-fun b!7489515 () Bool)

(assert (=> b!7489515 (= e!4466256 (= (head!15365 (_2!37652 lt!2629193)) (c!1382889 rTail!78)))))

(declare-fun b!7489516 () Bool)

(assert (=> b!7489516 (= e!4466262 (= lt!2629273 call!687529))))

(declare-fun b!7489517 () Bool)

(assert (=> b!7489517 (= e!4466259 (not (= (head!15365 (_2!37652 lt!2629193)) (c!1382889 rTail!78))))))

(declare-fun b!7489518 () Bool)

(assert (=> b!7489518 (= e!4466261 (nullable!8568 rTail!78))))

(assert (= (and d!2301061 c!1382960) b!7489518))

(assert (= (and d!2301061 (not c!1382960)) b!7489509))

(assert (= (and d!2301061 c!1382961) b!7489516))

(assert (= (and d!2301061 (not c!1382961)) b!7489507))

(assert (= (and b!7489507 c!1382959) b!7489514))

(assert (= (and b!7489507 (not c!1382959)) b!7489505))

(assert (= (and b!7489505 (not res!3004301)) b!7489513))

(assert (= (and b!7489513 res!3004294) b!7489508))

(assert (= (and b!7489508 res!3004300) b!7489510))

(assert (= (and b!7489510 res!3004299) b!7489515))

(assert (= (and b!7489513 (not res!3004298)) b!7489511))

(assert (= (and b!7489511 res!3004297) b!7489512))

(assert (= (and b!7489512 (not res!3004296)) b!7489506))

(assert (= (and b!7489506 (not res!3004295)) b!7489517))

(assert (= (or b!7489516 b!7489508 b!7489512) bm!687524))

(declare-fun m!8076698 () Bool)

(assert (=> b!7489506 m!8076698))

(assert (=> b!7489506 m!8076698))

(declare-fun m!8076700 () Bool)

(assert (=> b!7489506 m!8076700))

(assert (=> b!7489510 m!8076698))

(assert (=> b!7489510 m!8076698))

(assert (=> b!7489510 m!8076700))

(assert (=> d!2301061 m!8076678))

(assert (=> d!2301061 m!8076486))

(declare-fun m!8076702 () Bool)

(assert (=> b!7489515 m!8076702))

(declare-fun m!8076704 () Bool)

(assert (=> b!7489518 m!8076704))

(assert (=> b!7489517 m!8076702))

(assert (=> bm!687524 m!8076678))

(assert (=> b!7489509 m!8076702))

(assert (=> b!7489509 m!8076702))

(declare-fun m!8076706 () Bool)

(assert (=> b!7489509 m!8076706))

(assert (=> b!7489509 m!8076698))

(assert (=> b!7489509 m!8076706))

(assert (=> b!7489509 m!8076698))

(declare-fun m!8076708 () Bool)

(assert (=> b!7489509 m!8076708))

(assert (=> b!7489158 d!2301061))

(declare-fun b!7489545 () Bool)

(declare-fun res!3004324 () Bool)

(declare-fun e!4466281 () Bool)

(assert (=> b!7489545 (=> (not res!3004324) (not e!4466281))))

(declare-fun lt!2629283 () Option!17181)

(assert (=> b!7489545 (= res!3004324 (matchR!9392 rTail!78 (_2!37652 (get!25303 lt!2629283))))))

(declare-fun b!7489546 () Bool)

(declare-fun e!4466277 () Option!17181)

(assert (=> b!7489546 (= e!4466277 None!17180)))

(declare-fun b!7489547 () Bool)

(declare-fun res!3004323 () Bool)

(assert (=> b!7489547 (=> (not res!3004323) (not e!4466281))))

(assert (=> b!7489547 (= res!3004323 (matchR!9392 lt!2629182 (_1!37652 (get!25303 lt!2629283))))))

(declare-fun b!7489548 () Bool)

(declare-fun e!4466280 () Bool)

(assert (=> b!7489548 (= e!4466280 (matchR!9392 rTail!78 s!13591))))

(declare-fun b!7489550 () Bool)

(declare-fun lt!2629282 () Unit!166091)

(declare-fun lt!2629284 () Unit!166091)

(assert (=> b!7489550 (= lt!2629282 lt!2629284)))

(declare-fun ++!17239 (List!72344 List!72344) List!72344)

(assert (=> b!7489550 (= (++!17239 (++!17239 Nil!72220 (Cons!72220 (h!78668 s!13591) Nil!72220)) (t!386913 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3115 (List!72344 C!39534 List!72344 List!72344) Unit!166091)

(assert (=> b!7489550 (= lt!2629284 (lemmaMoveElementToOtherListKeepsConcatEq!3115 Nil!72220 (h!78668 s!13591) (t!386913 s!13591) s!13591))))

(assert (=> b!7489550 (= e!4466277 (findConcatSeparation!3303 lt!2629182 rTail!78 (++!17239 Nil!72220 (Cons!72220 (h!78668 s!13591) Nil!72220)) (t!386913 s!13591) s!13591))))

(declare-fun b!7489551 () Bool)

(declare-fun e!4466278 () Option!17181)

(assert (=> b!7489551 (= e!4466278 e!4466277)))

(declare-fun c!1382967 () Bool)

(assert (=> b!7489551 (= c!1382967 (is-Nil!72220 s!13591))))

(declare-fun b!7489552 () Bool)

(assert (=> b!7489552 (= e!4466278 (Some!17180 (tuple2!68699 Nil!72220 s!13591)))))

(declare-fun b!7489553 () Bool)

(assert (=> b!7489553 (= e!4466281 (= (++!17239 (_1!37652 (get!25303 lt!2629283)) (_2!37652 (get!25303 lt!2629283))) s!13591))))

(declare-fun b!7489549 () Bool)

(declare-fun e!4466279 () Bool)

(assert (=> b!7489549 (= e!4466279 (not (isDefined!13870 lt!2629283)))))

(declare-fun d!2301063 () Bool)

(assert (=> d!2301063 e!4466279))

(declare-fun res!3004322 () Bool)

(assert (=> d!2301063 (=> res!3004322 e!4466279)))

(assert (=> d!2301063 (= res!3004322 e!4466281)))

(declare-fun res!3004321 () Bool)

(assert (=> d!2301063 (=> (not res!3004321) (not e!4466281))))

(assert (=> d!2301063 (= res!3004321 (isDefined!13870 lt!2629283))))

(assert (=> d!2301063 (= lt!2629283 e!4466278)))

(declare-fun c!1382966 () Bool)

(assert (=> d!2301063 (= c!1382966 e!4466280)))

(declare-fun res!3004320 () Bool)

(assert (=> d!2301063 (=> (not res!3004320) (not e!4466280))))

(assert (=> d!2301063 (= res!3004320 (matchR!9392 lt!2629182 Nil!72220))))

(assert (=> d!2301063 (validRegex!10144 lt!2629182)))

(assert (=> d!2301063 (= (findConcatSeparation!3303 lt!2629182 rTail!78 Nil!72220 s!13591 s!13591) lt!2629283)))

(assert (= (and d!2301063 res!3004320) b!7489548))

(assert (= (and d!2301063 c!1382966) b!7489552))

(assert (= (and d!2301063 (not c!1382966)) b!7489551))

(assert (= (and b!7489551 c!1382967) b!7489546))

(assert (= (and b!7489551 (not c!1382967)) b!7489550))

(assert (= (and d!2301063 res!3004321) b!7489547))

(assert (= (and b!7489547 res!3004323) b!7489545))

(assert (= (and b!7489545 res!3004324) b!7489553))

(assert (= (and d!2301063 (not res!3004322)) b!7489549))

(declare-fun m!8076710 () Bool)

(assert (=> b!7489553 m!8076710))

(declare-fun m!8076712 () Bool)

(assert (=> b!7489553 m!8076712))

(declare-fun m!8076714 () Bool)

(assert (=> d!2301063 m!8076714))

(declare-fun m!8076716 () Bool)

(assert (=> d!2301063 m!8076716))

(assert (=> d!2301063 m!8076684))

(assert (=> b!7489549 m!8076714))

(assert (=> b!7489547 m!8076710))

(declare-fun m!8076718 () Bool)

(assert (=> b!7489547 m!8076718))

(declare-fun m!8076720 () Bool)

(assert (=> b!7489550 m!8076720))

(assert (=> b!7489550 m!8076720))

(declare-fun m!8076722 () Bool)

(assert (=> b!7489550 m!8076722))

(declare-fun m!8076724 () Bool)

(assert (=> b!7489550 m!8076724))

(assert (=> b!7489550 m!8076720))

(declare-fun m!8076726 () Bool)

(assert (=> b!7489550 m!8076726))

(assert (=> b!7489545 m!8076710))

(declare-fun m!8076728 () Bool)

(assert (=> b!7489545 m!8076728))

(declare-fun m!8076730 () Bool)

(assert (=> b!7489548 m!8076730))

(assert (=> b!7489153 d!2301063))

(declare-fun bs!1934577 () Bool)

(declare-fun d!2301065 () Bool)

(assert (= bs!1934577 (and d!2301065 b!7489280)))

(declare-fun lambda!464040 () Int)

(assert (=> bs!1934577 (not (= lambda!464040 lambda!464018))))

(declare-fun bs!1934578 () Bool)

(assert (= bs!1934578 (and d!2301065 b!7489284)))

(assert (=> bs!1934578 (not (= lambda!464040 lambda!464019))))

(declare-fun bs!1934579 () Bool)

(assert (= bs!1934579 (and d!2301065 b!7489432)))

(assert (=> bs!1934579 (not (= lambda!464040 lambda!464024))))

(declare-fun bs!1934580 () Bool)

(assert (= bs!1934580 (and d!2301065 b!7489417)))

(assert (=> bs!1934580 (not (= lambda!464040 lambda!464023))))

(declare-fun bs!1934581 () Bool)

(assert (= bs!1934581 (and d!2301065 b!7489337)))

(assert (=> bs!1934581 (not (= lambda!464040 lambda!464021))))

(declare-fun bs!1934582 () Bool)

(assert (= bs!1934582 (and d!2301065 b!7489153)))

(assert (=> bs!1934582 (not (= lambda!464040 lambda!464005))))

(declare-fun bs!1934583 () Bool)

(assert (= bs!1934583 (and d!2301065 b!7489495)))

(assert (=> bs!1934583 (not (= lambda!464040 lambda!464029))))

(declare-fun bs!1934584 () Bool)

(assert (= bs!1934584 (and d!2301065 b!7489436)))

(assert (=> bs!1934584 (not (= lambda!464040 lambda!464025))))

(declare-fun bs!1934585 () Bool)

(assert (= bs!1934585 (and d!2301065 b!7489333)))

(assert (=> bs!1934585 (not (= lambda!464040 lambda!464020))))

(declare-fun bs!1934586 () Bool)

(assert (= bs!1934586 (and d!2301065 b!7489484)))

(assert (=> bs!1934586 (not (= lambda!464040 lambda!464027))))

(assert (=> bs!1934582 (= lambda!464040 lambda!464004)))

(declare-fun bs!1934587 () Bool)

(assert (= bs!1934587 (and d!2301065 b!7489491)))

(assert (=> bs!1934587 (not (= lambda!464040 lambda!464028))))

(declare-fun bs!1934588 () Bool)

(assert (= bs!1934588 (and d!2301065 b!7489480)))

(assert (=> bs!1934588 (not (= lambda!464040 lambda!464026))))

(declare-fun bs!1934589 () Bool)

(assert (= bs!1934589 (and d!2301065 b!7489413)))

(assert (=> bs!1934589 (not (= lambda!464040 lambda!464022))))

(assert (=> d!2301065 true))

(assert (=> d!2301065 true))

(assert (=> d!2301065 true))

(declare-fun lambda!464041 () Int)

(assert (=> bs!1934577 (not (= lambda!464041 lambda!464018))))

(assert (=> bs!1934578 (= (and (= lt!2629182 (regOne!39772 lt!2629188)) (= rTail!78 (regTwo!39772 lt!2629188))) (= lambda!464041 lambda!464019))))

(assert (=> bs!1934579 (not (= lambda!464041 lambda!464024))))

(assert (=> bs!1934580 (= (and (= s!13591 (_1!37652 lt!2629193)) (= lt!2629182 (regOne!39772 r2!5783)) (= rTail!78 (regTwo!39772 r2!5783))) (= lambda!464041 lambda!464023))))

(declare-fun bs!1934590 () Bool)

(assert (= bs!1934590 d!2301065))

(assert (=> bs!1934590 (not (= lambda!464041 lambda!464040))))

(assert (=> bs!1934581 (= (and (= lt!2629182 (regOne!39772 lt!2629192)) (= rTail!78 (regTwo!39772 lt!2629192))) (= lambda!464041 lambda!464021))))

(assert (=> bs!1934582 (= lambda!464041 lambda!464005)))

(assert (=> bs!1934583 (= (and (= s!13591 (_1!37652 lt!2629193)) (= lt!2629182 (regOne!39772 lt!2629182)) (= rTail!78 (regTwo!39772 lt!2629182))) (= lambda!464041 lambda!464029))))

(assert (=> bs!1934584 (= (and (= s!13591 (_1!37652 lt!2629193)) (= lt!2629182 (regOne!39772 r1!5845)) (= rTail!78 (regTwo!39772 r1!5845))) (= lambda!464041 lambda!464025))))

(assert (=> bs!1934585 (not (= lambda!464041 lambda!464020))))

(assert (=> bs!1934586 (= (and (= s!13591 (_2!37652 lt!2629193)) (= lt!2629182 (regOne!39772 rTail!78)) (= rTail!78 (regTwo!39772 rTail!78))) (= lambda!464041 lambda!464027))))

(assert (=> bs!1934582 (not (= lambda!464041 lambda!464004))))

(assert (=> bs!1934587 (not (= lambda!464041 lambda!464028))))

(assert (=> bs!1934588 (not (= lambda!464041 lambda!464026))))

(assert (=> bs!1934589 (not (= lambda!464041 lambda!464022))))

(assert (=> d!2301065 true))

(assert (=> d!2301065 true))

(assert (=> d!2301065 true))

(assert (=> d!2301065 (= (Exists!4247 lambda!464040) (Exists!4247 lambda!464041))))

(declare-fun lt!2629288 () Unit!166091)

(declare-fun choose!57891 (Regex!19630 Regex!19630 List!72344) Unit!166091)

(assert (=> d!2301065 (= lt!2629288 (choose!57891 lt!2629182 rTail!78 s!13591))))

(assert (=> d!2301065 (validRegex!10144 lt!2629182)))

(assert (=> d!2301065 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2575 lt!2629182 rTail!78 s!13591) lt!2629288)))

(declare-fun m!8076738 () Bool)

(assert (=> bs!1934590 m!8076738))

(declare-fun m!8076740 () Bool)

(assert (=> bs!1934590 m!8076740))

(declare-fun m!8076742 () Bool)

(assert (=> bs!1934590 m!8076742))

(assert (=> bs!1934590 m!8076684))

(assert (=> b!7489153 d!2301065))

(declare-fun d!2301069 () Bool)

(declare-fun choose!57892 (Int) Bool)

(assert (=> d!2301069 (= (Exists!4247 lambda!464005) (choose!57892 lambda!464005))))

(declare-fun bs!1934591 () Bool)

(assert (= bs!1934591 d!2301069))

(declare-fun m!8076744 () Bool)

(assert (=> bs!1934591 m!8076744))

(assert (=> b!7489153 d!2301069))

(declare-fun d!2301071 () Bool)

(assert (=> d!2301071 (= (get!25303 lt!2629189) (v!54309 lt!2629189))))

(assert (=> b!7489153 d!2301071))

(declare-fun d!2301073 () Bool)

(declare-fun isEmpty!41246 (Option!17181) Bool)

(assert (=> d!2301073 (= (isDefined!13870 lt!2629189) (not (isEmpty!41246 lt!2629189)))))

(declare-fun bs!1934592 () Bool)

(assert (= bs!1934592 d!2301073))

(declare-fun m!8076746 () Bool)

(assert (=> bs!1934592 m!8076746))

(assert (=> b!7489153 d!2301073))

(declare-fun bs!1934593 () Bool)

(declare-fun d!2301075 () Bool)

(assert (= bs!1934593 (and d!2301075 b!7489280)))

(declare-fun lambda!464044 () Int)

(assert (=> bs!1934593 (not (= lambda!464044 lambda!464018))))

(declare-fun bs!1934594 () Bool)

(assert (= bs!1934594 (and d!2301075 d!2301065)))

(assert (=> bs!1934594 (not (= lambda!464044 lambda!464041))))

(declare-fun bs!1934595 () Bool)

(assert (= bs!1934595 (and d!2301075 b!7489284)))

(assert (=> bs!1934595 (not (= lambda!464044 lambda!464019))))

(declare-fun bs!1934596 () Bool)

(assert (= bs!1934596 (and d!2301075 b!7489432)))

(assert (=> bs!1934596 (not (= lambda!464044 lambda!464024))))

(declare-fun bs!1934597 () Bool)

(assert (= bs!1934597 (and d!2301075 b!7489417)))

(assert (=> bs!1934597 (not (= lambda!464044 lambda!464023))))

(assert (=> bs!1934594 (= lambda!464044 lambda!464040)))

(declare-fun bs!1934598 () Bool)

(assert (= bs!1934598 (and d!2301075 b!7489337)))

(assert (=> bs!1934598 (not (= lambda!464044 lambda!464021))))

(declare-fun bs!1934599 () Bool)

(assert (= bs!1934599 (and d!2301075 b!7489153)))

(assert (=> bs!1934599 (not (= lambda!464044 lambda!464005))))

(declare-fun bs!1934600 () Bool)

(assert (= bs!1934600 (and d!2301075 b!7489495)))

(assert (=> bs!1934600 (not (= lambda!464044 lambda!464029))))

(declare-fun bs!1934601 () Bool)

(assert (= bs!1934601 (and d!2301075 b!7489436)))

(assert (=> bs!1934601 (not (= lambda!464044 lambda!464025))))

(declare-fun bs!1934602 () Bool)

(assert (= bs!1934602 (and d!2301075 b!7489333)))

(assert (=> bs!1934602 (not (= lambda!464044 lambda!464020))))

(declare-fun bs!1934603 () Bool)

(assert (= bs!1934603 (and d!2301075 b!7489484)))

(assert (=> bs!1934603 (not (= lambda!464044 lambda!464027))))

(assert (=> bs!1934599 (= lambda!464044 lambda!464004)))

(declare-fun bs!1934604 () Bool)

(assert (= bs!1934604 (and d!2301075 b!7489491)))

(assert (=> bs!1934604 (not (= lambda!464044 lambda!464028))))

(declare-fun bs!1934605 () Bool)

(assert (= bs!1934605 (and d!2301075 b!7489480)))

(assert (=> bs!1934605 (not (= lambda!464044 lambda!464026))))

(declare-fun bs!1934606 () Bool)

(assert (= bs!1934606 (and d!2301075 b!7489413)))

(assert (=> bs!1934606 (not (= lambda!464044 lambda!464022))))

(assert (=> d!2301075 true))

(assert (=> d!2301075 true))

(assert (=> d!2301075 true))

(assert (=> d!2301075 (= (isDefined!13870 (findConcatSeparation!3303 lt!2629182 rTail!78 Nil!72220 s!13591 s!13591)) (Exists!4247 lambda!464044))))

(declare-fun lt!2629293 () Unit!166091)

(declare-fun choose!57893 (Regex!19630 Regex!19630 List!72344) Unit!166091)

(assert (=> d!2301075 (= lt!2629293 (choose!57893 lt!2629182 rTail!78 s!13591))))

(assert (=> d!2301075 (validRegex!10144 lt!2629182)))

(assert (=> d!2301075 (= (lemmaFindConcatSeparationEquivalentToExists!3061 lt!2629182 rTail!78 s!13591) lt!2629293)))

(declare-fun bs!1934607 () Bool)

(assert (= bs!1934607 d!2301075))

(declare-fun m!8076748 () Bool)

(assert (=> bs!1934607 m!8076748))

(assert (=> bs!1934607 m!8076684))

(assert (=> bs!1934607 m!8076472))

(assert (=> bs!1934607 m!8076472))

(declare-fun m!8076750 () Bool)

(assert (=> bs!1934607 m!8076750))

(declare-fun m!8076752 () Bool)

(assert (=> bs!1934607 m!8076752))

(assert (=> b!7489153 d!2301075))

(declare-fun d!2301077 () Bool)

(assert (=> d!2301077 (= (Exists!4247 lambda!464004) (choose!57892 lambda!464004))))

(declare-fun bs!1934608 () Bool)

(assert (= bs!1934608 d!2301077))

(declare-fun m!8076754 () Bool)

(assert (=> bs!1934608 m!8076754))

(assert (=> b!7489153 d!2301077))

(declare-fun b!7489594 () Bool)

(declare-fun res!3004360 () Bool)

(declare-fun e!4466306 () Bool)

(assert (=> b!7489594 (=> res!3004360 e!4466306)))

(assert (=> b!7489594 (= res!3004360 (not (is-ElementMatch!19630 lt!2629182)))))

(declare-fun e!4466303 () Bool)

(assert (=> b!7489594 (= e!4466303 e!4466306)))

(declare-fun b!7489595 () Bool)

(declare-fun res!3004354 () Bool)

(declare-fun e!4466305 () Bool)

(assert (=> b!7489595 (=> res!3004354 e!4466305)))

(assert (=> b!7489595 (= res!3004354 (not (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193)))))))

(declare-fun b!7489596 () Bool)

(declare-fun e!4466308 () Bool)

(assert (=> b!7489596 (= e!4466308 e!4466303)))

(declare-fun c!1382974 () Bool)

(assert (=> b!7489596 (= c!1382974 (is-EmptyLang!19630 lt!2629182))))

(declare-fun bm!687527 () Bool)

(declare-fun call!687532 () Bool)

(assert (=> bm!687527 (= call!687532 (isEmpty!41243 (_1!37652 lt!2629193)))))

(declare-fun b!7489597 () Bool)

(declare-fun res!3004359 () Bool)

(declare-fun e!4466302 () Bool)

(assert (=> b!7489597 (=> (not res!3004359) (not e!4466302))))

(assert (=> b!7489597 (= res!3004359 (not call!687532))))

(declare-fun b!7489598 () Bool)

(declare-fun e!4466307 () Bool)

(assert (=> b!7489598 (= e!4466307 (matchR!9392 (derivativeStep!5625 lt!2629182 (head!15365 (_1!37652 lt!2629193))) (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489599 () Bool)

(declare-fun res!3004358 () Bool)

(assert (=> b!7489599 (=> (not res!3004358) (not e!4466302))))

(assert (=> b!7489599 (= res!3004358 (isEmpty!41243 (tail!14934 (_1!37652 lt!2629193))))))

(declare-fun b!7489600 () Bool)

(declare-fun e!4466304 () Bool)

(assert (=> b!7489600 (= e!4466306 e!4466304)))

(declare-fun res!3004356 () Bool)

(assert (=> b!7489600 (=> (not res!3004356) (not e!4466304))))

(declare-fun lt!2629294 () Bool)

(assert (=> b!7489600 (= res!3004356 (not lt!2629294))))

(declare-fun b!7489601 () Bool)

(assert (=> b!7489601 (= e!4466304 e!4466305)))

(declare-fun res!3004355 () Bool)

(assert (=> b!7489601 (=> res!3004355 e!4466305)))

(assert (=> b!7489601 (= res!3004355 call!687532)))

(declare-fun b!7489602 () Bool)

(declare-fun res!3004357 () Bool)

(assert (=> b!7489602 (=> res!3004357 e!4466306)))

(assert (=> b!7489602 (= res!3004357 e!4466302)))

(declare-fun res!3004353 () Bool)

(assert (=> b!7489602 (=> (not res!3004353) (not e!4466302))))

(assert (=> b!7489602 (= res!3004353 lt!2629294)))

(declare-fun d!2301079 () Bool)

(assert (=> d!2301079 e!4466308))

(declare-fun c!1382976 () Bool)

(assert (=> d!2301079 (= c!1382976 (is-EmptyExpr!19630 lt!2629182))))

(assert (=> d!2301079 (= lt!2629294 e!4466307)))

(declare-fun c!1382975 () Bool)

(assert (=> d!2301079 (= c!1382975 (isEmpty!41243 (_1!37652 lt!2629193)))))

(assert (=> d!2301079 (validRegex!10144 lt!2629182)))

(assert (=> d!2301079 (= (matchR!9392 lt!2629182 (_1!37652 lt!2629193)) lt!2629294)))

(declare-fun b!7489603 () Bool)

(assert (=> b!7489603 (= e!4466303 (not lt!2629294))))

(declare-fun b!7489604 () Bool)

(assert (=> b!7489604 (= e!4466302 (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 lt!2629182)))))

(declare-fun b!7489605 () Bool)

(assert (=> b!7489605 (= e!4466308 (= lt!2629294 call!687532))))

(declare-fun b!7489606 () Bool)

(assert (=> b!7489606 (= e!4466305 (not (= (head!15365 (_1!37652 lt!2629193)) (c!1382889 lt!2629182))))))

(declare-fun b!7489607 () Bool)

(assert (=> b!7489607 (= e!4466307 (nullable!8568 lt!2629182))))

(assert (= (and d!2301079 c!1382975) b!7489607))

(assert (= (and d!2301079 (not c!1382975)) b!7489598))

(assert (= (and d!2301079 c!1382976) b!7489605))

(assert (= (and d!2301079 (not c!1382976)) b!7489596))

(assert (= (and b!7489596 c!1382974) b!7489603))

(assert (= (and b!7489596 (not c!1382974)) b!7489594))

(assert (= (and b!7489594 (not res!3004360)) b!7489602))

(assert (= (and b!7489602 res!3004353) b!7489597))

(assert (= (and b!7489597 res!3004359) b!7489599))

(assert (= (and b!7489599 res!3004358) b!7489604))

(assert (= (and b!7489602 (not res!3004357)) b!7489600))

(assert (= (and b!7489600 res!3004356) b!7489601))

(assert (= (and b!7489601 (not res!3004355)) b!7489595))

(assert (= (and b!7489595 (not res!3004354)) b!7489606))

(assert (= (or b!7489605 b!7489597 b!7489601) bm!687527))

(assert (=> b!7489595 m!8076622))

(assert (=> b!7489595 m!8076622))

(assert (=> b!7489595 m!8076624))

(assert (=> b!7489599 m!8076622))

(assert (=> b!7489599 m!8076622))

(assert (=> b!7489599 m!8076624))

(assert (=> d!2301079 m!8076612))

(assert (=> d!2301079 m!8076684))

(assert (=> b!7489604 m!8076626))

(declare-fun m!8076756 () Bool)

(assert (=> b!7489607 m!8076756))

(assert (=> b!7489606 m!8076626))

(assert (=> bm!687527 m!8076612))

(assert (=> b!7489598 m!8076626))

(assert (=> b!7489598 m!8076626))

(declare-fun m!8076758 () Bool)

(assert (=> b!7489598 m!8076758))

(assert (=> b!7489598 m!8076622))

(assert (=> b!7489598 m!8076758))

(assert (=> b!7489598 m!8076622))

(declare-fun m!8076760 () Bool)

(assert (=> b!7489598 m!8076760))

(assert (=> b!7489153 d!2301079))

(declare-fun b!7489633 () Bool)

(declare-fun e!4466318 () Bool)

(declare-fun tp!2173802 () Bool)

(declare-fun tp!2173803 () Bool)

(assert (=> b!7489633 (= e!4466318 (and tp!2173802 tp!2173803))))

(declare-fun b!7489635 () Bool)

(declare-fun tp!2173801 () Bool)

(declare-fun tp!2173804 () Bool)

(assert (=> b!7489635 (= e!4466318 (and tp!2173801 tp!2173804))))

(declare-fun b!7489632 () Bool)

(assert (=> b!7489632 (= e!4466318 tp_is_empty!49549)))

(assert (=> b!7489154 (= tp!2173734 e!4466318)))

(declare-fun b!7489634 () Bool)

(declare-fun tp!2173800 () Bool)

(assert (=> b!7489634 (= e!4466318 tp!2173800)))

(assert (= (and b!7489154 (is-ElementMatch!19630 (regOne!39773 rTail!78))) b!7489632))

(assert (= (and b!7489154 (is-Concat!28475 (regOne!39773 rTail!78))) b!7489633))

(assert (= (and b!7489154 (is-Star!19630 (regOne!39773 rTail!78))) b!7489634))

(assert (= (and b!7489154 (is-Union!19630 (regOne!39773 rTail!78))) b!7489635))

(declare-fun b!7489637 () Bool)

(declare-fun e!4466319 () Bool)

(declare-fun tp!2173807 () Bool)

(declare-fun tp!2173808 () Bool)

(assert (=> b!7489637 (= e!4466319 (and tp!2173807 tp!2173808))))

(declare-fun b!7489639 () Bool)

(declare-fun tp!2173806 () Bool)

(declare-fun tp!2173809 () Bool)

(assert (=> b!7489639 (= e!4466319 (and tp!2173806 tp!2173809))))

(declare-fun b!7489636 () Bool)

(assert (=> b!7489636 (= e!4466319 tp_is_empty!49549)))

(assert (=> b!7489154 (= tp!2173731 e!4466319)))

(declare-fun b!7489638 () Bool)

(declare-fun tp!2173805 () Bool)

(assert (=> b!7489638 (= e!4466319 tp!2173805)))

(assert (= (and b!7489154 (is-ElementMatch!19630 (regTwo!39773 rTail!78))) b!7489636))

(assert (= (and b!7489154 (is-Concat!28475 (regTwo!39773 rTail!78))) b!7489637))

(assert (= (and b!7489154 (is-Star!19630 (regTwo!39773 rTail!78))) b!7489638))

(assert (= (and b!7489154 (is-Union!19630 (regTwo!39773 rTail!78))) b!7489639))

(declare-fun b!7489641 () Bool)

(declare-fun e!4466320 () Bool)

(declare-fun tp!2173812 () Bool)

(declare-fun tp!2173813 () Bool)

(assert (=> b!7489641 (= e!4466320 (and tp!2173812 tp!2173813))))

(declare-fun b!7489643 () Bool)

(declare-fun tp!2173811 () Bool)

(declare-fun tp!2173814 () Bool)

(assert (=> b!7489643 (= e!4466320 (and tp!2173811 tp!2173814))))

(declare-fun b!7489640 () Bool)

(assert (=> b!7489640 (= e!4466320 tp_is_empty!49549)))

(assert (=> b!7489143 (= tp!2173738 e!4466320)))

(declare-fun b!7489642 () Bool)

(declare-fun tp!2173810 () Bool)

(assert (=> b!7489642 (= e!4466320 tp!2173810)))

(assert (= (and b!7489143 (is-ElementMatch!19630 (regOne!39773 r1!5845))) b!7489640))

(assert (= (and b!7489143 (is-Concat!28475 (regOne!39773 r1!5845))) b!7489641))

(assert (= (and b!7489143 (is-Star!19630 (regOne!39773 r1!5845))) b!7489642))

(assert (= (and b!7489143 (is-Union!19630 (regOne!39773 r1!5845))) b!7489643))

(declare-fun b!7489645 () Bool)

(declare-fun e!4466321 () Bool)

(declare-fun tp!2173817 () Bool)

(declare-fun tp!2173818 () Bool)

(assert (=> b!7489645 (= e!4466321 (and tp!2173817 tp!2173818))))

(declare-fun b!7489647 () Bool)

(declare-fun tp!2173816 () Bool)

(declare-fun tp!2173819 () Bool)

(assert (=> b!7489647 (= e!4466321 (and tp!2173816 tp!2173819))))

(declare-fun b!7489644 () Bool)

(assert (=> b!7489644 (= e!4466321 tp_is_empty!49549)))

(assert (=> b!7489143 (= tp!2173733 e!4466321)))

(declare-fun b!7489646 () Bool)

(declare-fun tp!2173815 () Bool)

(assert (=> b!7489646 (= e!4466321 tp!2173815)))

(assert (= (and b!7489143 (is-ElementMatch!19630 (regTwo!39773 r1!5845))) b!7489644))

(assert (= (and b!7489143 (is-Concat!28475 (regTwo!39773 r1!5845))) b!7489645))

(assert (= (and b!7489143 (is-Star!19630 (regTwo!39773 r1!5845))) b!7489646))

(assert (= (and b!7489143 (is-Union!19630 (regTwo!39773 r1!5845))) b!7489647))

(declare-fun b!7489649 () Bool)

(declare-fun e!4466322 () Bool)

(declare-fun tp!2173822 () Bool)

(declare-fun tp!2173823 () Bool)

(assert (=> b!7489649 (= e!4466322 (and tp!2173822 tp!2173823))))

(declare-fun b!7489651 () Bool)

(declare-fun tp!2173821 () Bool)

(declare-fun tp!2173824 () Bool)

(assert (=> b!7489651 (= e!4466322 (and tp!2173821 tp!2173824))))

(declare-fun b!7489648 () Bool)

(assert (=> b!7489648 (= e!4466322 tp_is_empty!49549)))

(assert (=> b!7489159 (= tp!2173741 e!4466322)))

(declare-fun b!7489650 () Bool)

(declare-fun tp!2173820 () Bool)

(assert (=> b!7489650 (= e!4466322 tp!2173820)))

(assert (= (and b!7489159 (is-ElementMatch!19630 (regOne!39773 r2!5783))) b!7489648))

(assert (= (and b!7489159 (is-Concat!28475 (regOne!39773 r2!5783))) b!7489649))

(assert (= (and b!7489159 (is-Star!19630 (regOne!39773 r2!5783))) b!7489650))

(assert (= (and b!7489159 (is-Union!19630 (regOne!39773 r2!5783))) b!7489651))

(declare-fun b!7489653 () Bool)

(declare-fun e!4466323 () Bool)

(declare-fun tp!2173827 () Bool)

(declare-fun tp!2173828 () Bool)

(assert (=> b!7489653 (= e!4466323 (and tp!2173827 tp!2173828))))

(declare-fun b!7489655 () Bool)

(declare-fun tp!2173826 () Bool)

(declare-fun tp!2173829 () Bool)

(assert (=> b!7489655 (= e!4466323 (and tp!2173826 tp!2173829))))

(declare-fun b!7489652 () Bool)

(assert (=> b!7489652 (= e!4466323 tp_is_empty!49549)))

(assert (=> b!7489159 (= tp!2173730 e!4466323)))

(declare-fun b!7489654 () Bool)

(declare-fun tp!2173825 () Bool)

(assert (=> b!7489654 (= e!4466323 tp!2173825)))

(assert (= (and b!7489159 (is-ElementMatch!19630 (regTwo!39773 r2!5783))) b!7489652))

(assert (= (and b!7489159 (is-Concat!28475 (regTwo!39773 r2!5783))) b!7489653))

(assert (= (and b!7489159 (is-Star!19630 (regTwo!39773 r2!5783))) b!7489654))

(assert (= (and b!7489159 (is-Union!19630 (regTwo!39773 r2!5783))) b!7489655))

(declare-fun b!7489657 () Bool)

(declare-fun e!4466324 () Bool)

(declare-fun tp!2173832 () Bool)

(declare-fun tp!2173833 () Bool)

(assert (=> b!7489657 (= e!4466324 (and tp!2173832 tp!2173833))))

(declare-fun b!7489659 () Bool)

(declare-fun tp!2173831 () Bool)

(declare-fun tp!2173834 () Bool)

(assert (=> b!7489659 (= e!4466324 (and tp!2173831 tp!2173834))))

(declare-fun b!7489656 () Bool)

(assert (=> b!7489656 (= e!4466324 tp_is_empty!49549)))

(assert (=> b!7489149 (= tp!2173740 e!4466324)))

(declare-fun b!7489658 () Bool)

(declare-fun tp!2173830 () Bool)

(assert (=> b!7489658 (= e!4466324 tp!2173830)))

(assert (= (and b!7489149 (is-ElementMatch!19630 (regOne!39772 r2!5783))) b!7489656))

(assert (= (and b!7489149 (is-Concat!28475 (regOne!39772 r2!5783))) b!7489657))

(assert (= (and b!7489149 (is-Star!19630 (regOne!39772 r2!5783))) b!7489658))

(assert (= (and b!7489149 (is-Union!19630 (regOne!39772 r2!5783))) b!7489659))

(declare-fun b!7489661 () Bool)

(declare-fun e!4466325 () Bool)

(declare-fun tp!2173837 () Bool)

(declare-fun tp!2173838 () Bool)

(assert (=> b!7489661 (= e!4466325 (and tp!2173837 tp!2173838))))

(declare-fun b!7489663 () Bool)

(declare-fun tp!2173836 () Bool)

(declare-fun tp!2173839 () Bool)

(assert (=> b!7489663 (= e!4466325 (and tp!2173836 tp!2173839))))

(declare-fun b!7489660 () Bool)

(assert (=> b!7489660 (= e!4466325 tp_is_empty!49549)))

(assert (=> b!7489149 (= tp!2173739 e!4466325)))

(declare-fun b!7489662 () Bool)

(declare-fun tp!2173835 () Bool)

(assert (=> b!7489662 (= e!4466325 tp!2173835)))

(assert (= (and b!7489149 (is-ElementMatch!19630 (regTwo!39772 r2!5783))) b!7489660))

(assert (= (and b!7489149 (is-Concat!28475 (regTwo!39772 r2!5783))) b!7489661))

(assert (= (and b!7489149 (is-Star!19630 (regTwo!39772 r2!5783))) b!7489662))

(assert (= (and b!7489149 (is-Union!19630 (regTwo!39772 r2!5783))) b!7489663))

(declare-fun b!7489665 () Bool)

(declare-fun e!4466326 () Bool)

(declare-fun tp!2173842 () Bool)

(declare-fun tp!2173843 () Bool)

(assert (=> b!7489665 (= e!4466326 (and tp!2173842 tp!2173843))))

(declare-fun b!7489667 () Bool)

(declare-fun tp!2173841 () Bool)

(declare-fun tp!2173844 () Bool)

(assert (=> b!7489667 (= e!4466326 (and tp!2173841 tp!2173844))))

(declare-fun b!7489664 () Bool)

(assert (=> b!7489664 (= e!4466326 tp_is_empty!49549)))

(assert (=> b!7489150 (= tp!2173736 e!4466326)))

(declare-fun b!7489666 () Bool)

(declare-fun tp!2173840 () Bool)

(assert (=> b!7489666 (= e!4466326 tp!2173840)))

(assert (= (and b!7489150 (is-ElementMatch!19630 (reg!19959 r1!5845))) b!7489664))

(assert (= (and b!7489150 (is-Concat!28475 (reg!19959 r1!5845))) b!7489665))

(assert (= (and b!7489150 (is-Star!19630 (reg!19959 r1!5845))) b!7489666))

(assert (= (and b!7489150 (is-Union!19630 (reg!19959 r1!5845))) b!7489667))

(declare-fun b!7489669 () Bool)

(declare-fun e!4466327 () Bool)

(declare-fun tp!2173847 () Bool)

(declare-fun tp!2173848 () Bool)

(assert (=> b!7489669 (= e!4466327 (and tp!2173847 tp!2173848))))

(declare-fun b!7489671 () Bool)

(declare-fun tp!2173846 () Bool)

(declare-fun tp!2173849 () Bool)

(assert (=> b!7489671 (= e!4466327 (and tp!2173846 tp!2173849))))

(declare-fun b!7489668 () Bool)

(assert (=> b!7489668 (= e!4466327 tp_is_empty!49549)))

(assert (=> b!7489161 (= tp!2173726 e!4466327)))

(declare-fun b!7489670 () Bool)

(declare-fun tp!2173845 () Bool)

(assert (=> b!7489670 (= e!4466327 tp!2173845)))

(assert (= (and b!7489161 (is-ElementMatch!19630 (regOne!39772 r1!5845))) b!7489668))

(assert (= (and b!7489161 (is-Concat!28475 (regOne!39772 r1!5845))) b!7489669))

(assert (= (and b!7489161 (is-Star!19630 (regOne!39772 r1!5845))) b!7489670))

(assert (= (and b!7489161 (is-Union!19630 (regOne!39772 r1!5845))) b!7489671))

(declare-fun b!7489673 () Bool)

(declare-fun e!4466328 () Bool)

(declare-fun tp!2173852 () Bool)

(declare-fun tp!2173853 () Bool)

(assert (=> b!7489673 (= e!4466328 (and tp!2173852 tp!2173853))))

(declare-fun b!7489675 () Bool)

(declare-fun tp!2173851 () Bool)

(declare-fun tp!2173854 () Bool)

(assert (=> b!7489675 (= e!4466328 (and tp!2173851 tp!2173854))))

(declare-fun b!7489672 () Bool)

(assert (=> b!7489672 (= e!4466328 tp_is_empty!49549)))

(assert (=> b!7489161 (= tp!2173729 e!4466328)))

(declare-fun b!7489674 () Bool)

(declare-fun tp!2173850 () Bool)

(assert (=> b!7489674 (= e!4466328 tp!2173850)))

(assert (= (and b!7489161 (is-ElementMatch!19630 (regTwo!39772 r1!5845))) b!7489672))

(assert (= (and b!7489161 (is-Concat!28475 (regTwo!39772 r1!5845))) b!7489673))

(assert (= (and b!7489161 (is-Star!19630 (regTwo!39772 r1!5845))) b!7489674))

(assert (= (and b!7489161 (is-Union!19630 (regTwo!39772 r1!5845))) b!7489675))

(declare-fun b!7489677 () Bool)

(declare-fun e!4466329 () Bool)

(declare-fun tp!2173857 () Bool)

(declare-fun tp!2173858 () Bool)

(assert (=> b!7489677 (= e!4466329 (and tp!2173857 tp!2173858))))

(declare-fun b!7489679 () Bool)

(declare-fun tp!2173856 () Bool)

(declare-fun tp!2173859 () Bool)

(assert (=> b!7489679 (= e!4466329 (and tp!2173856 tp!2173859))))

(declare-fun b!7489676 () Bool)

(assert (=> b!7489676 (= e!4466329 tp_is_empty!49549)))

(assert (=> b!7489146 (= tp!2173728 e!4466329)))

(declare-fun b!7489678 () Bool)

(declare-fun tp!2173855 () Bool)

(assert (=> b!7489678 (= e!4466329 tp!2173855)))

(assert (= (and b!7489146 (is-ElementMatch!19630 (reg!19959 r2!5783))) b!7489676))

(assert (= (and b!7489146 (is-Concat!28475 (reg!19959 r2!5783))) b!7489677))

(assert (= (and b!7489146 (is-Star!19630 (reg!19959 r2!5783))) b!7489678))

(assert (= (and b!7489146 (is-Union!19630 (reg!19959 r2!5783))) b!7489679))

(declare-fun b!7489684 () Bool)

(declare-fun e!4466332 () Bool)

(declare-fun tp!2173862 () Bool)

(assert (=> b!7489684 (= e!4466332 (and tp_is_empty!49549 tp!2173862))))

(assert (=> b!7489157 (= tp!2173727 e!4466332)))

(assert (= (and b!7489157 (is-Cons!72220 (t!386913 s!13591))) b!7489684))

(declare-fun b!7489686 () Bool)

(declare-fun e!4466333 () Bool)

(declare-fun tp!2173865 () Bool)

(declare-fun tp!2173866 () Bool)

(assert (=> b!7489686 (= e!4466333 (and tp!2173865 tp!2173866))))

(declare-fun b!7489688 () Bool)

(declare-fun tp!2173864 () Bool)

(declare-fun tp!2173867 () Bool)

(assert (=> b!7489688 (= e!4466333 (and tp!2173864 tp!2173867))))

(declare-fun b!7489685 () Bool)

(assert (=> b!7489685 (= e!4466333 tp_is_empty!49549)))

(assert (=> b!7489147 (= tp!2173735 e!4466333)))

(declare-fun b!7489687 () Bool)

(declare-fun tp!2173863 () Bool)

(assert (=> b!7489687 (= e!4466333 tp!2173863)))

(assert (= (and b!7489147 (is-ElementMatch!19630 (reg!19959 rTail!78))) b!7489685))

(assert (= (and b!7489147 (is-Concat!28475 (reg!19959 rTail!78))) b!7489686))

(assert (= (and b!7489147 (is-Star!19630 (reg!19959 rTail!78))) b!7489687))

(assert (= (and b!7489147 (is-Union!19630 (reg!19959 rTail!78))) b!7489688))

(declare-fun b!7489690 () Bool)

(declare-fun e!4466334 () Bool)

(declare-fun tp!2173870 () Bool)

(declare-fun tp!2173871 () Bool)

(assert (=> b!7489690 (= e!4466334 (and tp!2173870 tp!2173871))))

(declare-fun b!7489692 () Bool)

(declare-fun tp!2173869 () Bool)

(declare-fun tp!2173872 () Bool)

(assert (=> b!7489692 (= e!4466334 (and tp!2173869 tp!2173872))))

(declare-fun b!7489689 () Bool)

(assert (=> b!7489689 (= e!4466334 tp_is_empty!49549)))

(assert (=> b!7489148 (= tp!2173732 e!4466334)))

(declare-fun b!7489691 () Bool)

(declare-fun tp!2173868 () Bool)

(assert (=> b!7489691 (= e!4466334 tp!2173868)))

(assert (= (and b!7489148 (is-ElementMatch!19630 (regOne!39772 rTail!78))) b!7489689))

(assert (= (and b!7489148 (is-Concat!28475 (regOne!39772 rTail!78))) b!7489690))

(assert (= (and b!7489148 (is-Star!19630 (regOne!39772 rTail!78))) b!7489691))

(assert (= (and b!7489148 (is-Union!19630 (regOne!39772 rTail!78))) b!7489692))

(declare-fun b!7489694 () Bool)

(declare-fun e!4466335 () Bool)

(declare-fun tp!2173875 () Bool)

(declare-fun tp!2173876 () Bool)

(assert (=> b!7489694 (= e!4466335 (and tp!2173875 tp!2173876))))

(declare-fun b!7489696 () Bool)

(declare-fun tp!2173874 () Bool)

(declare-fun tp!2173877 () Bool)

(assert (=> b!7489696 (= e!4466335 (and tp!2173874 tp!2173877))))

(declare-fun b!7489693 () Bool)

(assert (=> b!7489693 (= e!4466335 tp_is_empty!49549)))

(assert (=> b!7489148 (= tp!2173737 e!4466335)))

(declare-fun b!7489695 () Bool)

(declare-fun tp!2173873 () Bool)

(assert (=> b!7489695 (= e!4466335 tp!2173873)))

(assert (= (and b!7489148 (is-ElementMatch!19630 (regTwo!39772 rTail!78))) b!7489693))

(assert (= (and b!7489148 (is-Concat!28475 (regTwo!39772 rTail!78))) b!7489694))

(assert (= (and b!7489148 (is-Star!19630 (regTwo!39772 rTail!78))) b!7489695))

(assert (= (and b!7489148 (is-Union!19630 (regTwo!39772 rTail!78))) b!7489696))

(push 1)

(assert (not b!7489641))

(assert (not b!7489461))

(assert (not d!2301055))

(assert (not b!7489510))

(assert (not d!2301063))

(assert (not b!7489342))

(assert (not b!7489274))

(assert (not d!2301065))

(assert (not b!7489517))

(assert (not b!7489675))

(assert (not b!7489662))

(assert (not d!2301075))

(assert (not bm!687515))

(assert (not bm!687511))

(assert (not b!7489690))

(assert (not b!7489679))

(assert (not bm!687516))

(assert (not b!7489547))

(assert (not b!7489384))

(assert (not d!2301037))

(assert (not b!7489639))

(assert (not b!7489397))

(assert (not b!7489351))

(assert (not b!7489407))

(assert (not b!7489692))

(assert (not b!7489545))

(assert (not b!7489655))

(assert (not bm!687494))

(assert (not b!7489645))

(assert (not b!7489686))

(assert (not bm!687488))

(assert (not bm!687519))

(assert (not b!7489604))

(assert (not bm!687495))

(assert (not d!2301023))

(assert (not b!7489691))

(assert (not b!7489438))

(assert (not b!7489406))

(assert (not bm!687520))

(assert (not b!7489350))

(assert (not bm!687492))

(assert (not b!7489695))

(assert (not d!2301079))

(assert (not b!7489472))

(assert (not d!2301069))

(assert (not b!7489474))

(assert (not bm!687527))

(assert (not bm!687507))

(assert (not b!7489634))

(assert (not b!7489665))

(assert (not b!7489657))

(assert (not b!7489650))

(assert (not b!7489696))

(assert (not b!7489553))

(assert (not b!7489642))

(assert (not bm!687506))

(assert (not b!7489464))

(assert (not b!7489492))

(assert (not bm!687510))

(assert (not b!7489325))

(assert (not b!7489442))

(assert (not b!7489414))

(assert (not bm!687504))

(assert (not b!7489481))

(assert (not b!7489638))

(assert (not b!7489653))

(assert (not b!7489646))

(assert (not b!7489658))

(assert (not bm!687489))

(assert (not b!7489633))

(assert (not b!7489643))

(assert (not bm!687524))

(assert (not b!7489670))

(assert (not b!7489314))

(assert (not bm!687517))

(assert (not bm!687513))

(assert (not b!7489687))

(assert (not b!7489441))

(assert (not b!7489667))

(assert (not b!7489595))

(assert (not b!7489449))

(assert (not bm!687509))

(assert (not b!7489661))

(assert (not d!2301025))

(assert (not b!7489339))

(assert (not b!7489651))

(assert (not b!7489637))

(assert (not b!7489688))

(assert (not b!7489426))

(assert (not b!7489654))

(assert (not d!2301039))

(assert (not b!7489281))

(assert (not b!7489465))

(assert (not b!7489671))

(assert (not d!2301061))

(assert (not b!7489343))

(assert (not b!7489549))

(assert (not b!7489348))

(assert (not b!7489504))

(assert (not d!2301013))

(assert (not b!7489677))

(assert (not b!7489515))

(assert (not b!7489659))

(assert (not b!7489599))

(assert (not d!2301077))

(assert (not b!7489669))

(assert (not b!7489450))

(assert (not bm!687512))

(assert (not b!7489473))

(assert (not b!7489674))

(assert (not b!7489550))

(assert (not d!2301045))

(assert (not b!7489334))

(assert (not b!7489326))

(assert (not b!7489598))

(assert (not b!7489678))

(assert (not b!7489518))

(assert (not b!7489509))

(assert (not bm!687518))

(assert (not b!7489684))

(assert (not b!7489635))

(assert (not d!2301043))

(assert (not b!7489327))

(assert (not b!7489606))

(assert (not b!7489607))

(assert (not b!7489647))

(assert (not bm!687493))

(assert (not b!7489649))

(assert (not b!7489673))

(assert (not b!7489663))

(assert (not b!7489433))

(assert (not b!7489318))

(assert (not b!7489506))

(assert (not d!2301021))

(assert (not bm!687514))

(assert (not bm!687523))

(assert (not b!7489548))

(assert (not b!7489470))

(assert (not b!7489447))

(assert (not b!7489694))

(assert (not b!7489666))

(assert tp_is_empty!49549)

(assert (not bm!687503))

(assert (not b!7489323))

(assert (not d!2301073))

(assert (not bm!687522))

(assert (not d!2301041))

(assert (not b!7489485))

(assert (not b!7489317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

