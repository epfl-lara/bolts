; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667120 () Bool)

(assert start!667120)

(declare-fun b!6950200 () Bool)

(assert (=> b!6950200 true))

(assert (=> b!6950200 true))

(declare-fun res!2835486 () Bool)

(declare-fun e!4180139 () Bool)

(assert (=> b!6950200 (=> (not res!2835486) (not e!4180139))))

(declare-fun lambda!396321 () Int)

(declare-fun Exists!4010 (Int) Bool)

(assert (=> b!6950200 (= res!2835486 (not (Exists!4010 lambda!396321)))))

(declare-fun b!6950201 () Bool)

(declare-fun e!4180142 () Bool)

(declare-fun tp!1915902 () Bool)

(assert (=> b!6950201 (= e!4180142 tp!1915902)))

(declare-fun b!6950202 () Bool)

(declare-fun tp_is_empty!43253 () Bool)

(assert (=> b!6950202 (= e!4180142 tp_is_empty!43253)))

(declare-fun b!6950203 () Bool)

(declare-fun tp!1915909 () Bool)

(declare-fun tp!1915904 () Bool)

(assert (=> b!6950203 (= e!4180142 (and tp!1915909 tp!1915904))))

(declare-fun b!6950204 () Bool)

(declare-datatypes ((C!34298 0))(
  ( (C!34299 (val!26851 Int)) )
))
(declare-datatypes ((Regex!17014 0))(
  ( (ElementMatch!17014 (c!1289246 C!34298)) (Concat!25859 (regOne!34540 Regex!17014) (regTwo!34540 Regex!17014)) (EmptyExpr!17014) (Star!17014 (reg!17343 Regex!17014)) (EmptyLang!17014) (Union!17014 (regOne!34541 Regex!17014) (regTwo!34541 Regex!17014)) )
))
(declare-fun rInner!765 () Regex!17014)

(declare-fun validRegex!8720 (Regex!17014) Bool)

(assert (=> b!6950204 (= e!4180139 (not (validRegex!8720 (Star!17014 rInner!765))))))

(declare-fun b!6950205 () Bool)

(declare-fun e!4180143 () Bool)

(declare-fun tp!1915908 () Bool)

(assert (=> b!6950205 (= e!4180143 (and tp_is_empty!43253 tp!1915908))))

(declare-fun b!6950206 () Bool)

(declare-fun res!2835487 () Bool)

(assert (=> b!6950206 (=> (not res!2835487) (not e!4180139))))

(assert (=> b!6950206 (= res!2835487 (not (Exists!4010 lambda!396321)))))

(declare-fun b!6950207 () Bool)

(declare-fun e!4180140 () Bool)

(declare-fun tp!1915905 () Bool)

(assert (=> b!6950207 (= e!4180140 (and tp_is_empty!43253 tp!1915905))))

(declare-fun b!6950209 () Bool)

(declare-fun res!2835481 () Bool)

(assert (=> b!6950209 (=> (not res!2835481) (not e!4180139))))

(declare-datatypes ((List!66767 0))(
  ( (Nil!66643) (Cons!66643 (h!73091 C!34298) (t!380510 List!66767)) )
))
(declare-datatypes ((tuple2!67738 0))(
  ( (tuple2!67739 (_1!37172 List!66767) (_2!37172 List!66767)) )
))
(declare-fun cut!48 () tuple2!67738)

(declare-fun matchRSpec!4053 (Regex!17014 List!66767) Bool)

(assert (=> b!6950209 (= res!2835481 (matchRSpec!4053 rInner!765 (_1!37172 cut!48)))))

(declare-fun b!6950210 () Bool)

(declare-fun res!2835484 () Bool)

(assert (=> b!6950210 (=> (not res!2835484) (not e!4180139))))

(declare-fun isEmpty!38899 (List!66767) Bool)

(assert (=> b!6950210 (= res!2835484 (not (isEmpty!38899 (_1!37172 cut!48))))))

(declare-fun b!6950211 () Bool)

(declare-fun e!4180141 () Bool)

(declare-fun tp!1915906 () Bool)

(assert (=> b!6950211 (= e!4180141 (and tp_is_empty!43253 tp!1915906))))

(declare-fun res!2835482 () Bool)

(assert (=> start!667120 (=> (not res!2835482) (not e!4180139))))

(assert (=> start!667120 (= res!2835482 (validRegex!8720 rInner!765))))

(assert (=> start!667120 e!4180139))

(assert (=> start!667120 e!4180142))

(assert (=> start!667120 e!4180143))

(assert (=> start!667120 (and e!4180141 e!4180140)))

(declare-fun b!6950208 () Bool)

(declare-fun res!2835485 () Bool)

(assert (=> b!6950208 (=> (not res!2835485) (not e!4180139))))

(declare-fun nullable!6827 (Regex!17014) Bool)

(assert (=> b!6950208 (= res!2835485 (not (nullable!6827 rInner!765)))))

(declare-fun b!6950212 () Bool)

(declare-fun res!2835483 () Bool)

(assert (=> b!6950212 (=> (not res!2835483) (not e!4180139))))

(declare-fun s!10388 () List!66767)

(declare-fun ++!15051 (List!66767 List!66767) List!66767)

(assert (=> b!6950212 (= res!2835483 (= (++!15051 (_1!37172 cut!48) (_2!37172 cut!48)) s!10388))))

(declare-fun b!6950213 () Bool)

(declare-fun tp!1915907 () Bool)

(declare-fun tp!1915903 () Bool)

(assert (=> b!6950213 (= e!4180142 (and tp!1915907 tp!1915903))))

(assert (= (and start!667120 res!2835482) b!6950208))

(assert (= (and b!6950208 res!2835485) b!6950200))

(assert (= (and b!6950200 res!2835486) b!6950206))

(assert (= (and b!6950206 res!2835487) b!6950212))

(assert (= (and b!6950212 res!2835483) b!6950210))

(assert (= (and b!6950210 res!2835484) b!6950209))

(assert (= (and b!6950209 res!2835481) b!6950204))

(assert (= (and start!667120 (is-ElementMatch!17014 rInner!765)) b!6950202))

(assert (= (and start!667120 (is-Concat!25859 rInner!765)) b!6950203))

(assert (= (and start!667120 (is-Star!17014 rInner!765)) b!6950201))

(assert (= (and start!667120 (is-Union!17014 rInner!765)) b!6950213))

(assert (= (and start!667120 (is-Cons!66643 s!10388)) b!6950205))

(assert (= (and start!667120 (is-Cons!66643 (_1!37172 cut!48))) b!6950211))

(assert (= (and start!667120 (is-Cons!66643 (_2!37172 cut!48))) b!6950207))

(declare-fun m!7652116 () Bool)

(assert (=> b!6950206 m!7652116))

(declare-fun m!7652118 () Bool)

(assert (=> b!6950210 m!7652118))

(declare-fun m!7652120 () Bool)

(assert (=> b!6950212 m!7652120))

(assert (=> b!6950200 m!7652116))

(declare-fun m!7652122 () Bool)

(assert (=> b!6950204 m!7652122))

(declare-fun m!7652124 () Bool)

(assert (=> b!6950208 m!7652124))

(declare-fun m!7652126 () Bool)

(assert (=> start!667120 m!7652126))

(declare-fun m!7652128 () Bool)

(assert (=> b!6950209 m!7652128))

(push 1)

(assert (not b!6950211))

(assert (not b!6950206))

(assert (not start!667120))

(assert (not b!6950203))

(assert (not b!6950208))

(assert (not b!6950204))

(assert (not b!6950213))

(assert (not b!6950201))

(assert (not b!6950209))

(assert (not b!6950212))

(assert (not b!6950207))

(assert (not b!6950205))

(assert (not b!6950200))

(assert tp_is_empty!43253)

(assert (not b!6950210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6950282 () Bool)

(declare-fun res!2835521 () Bool)

(declare-fun e!4180168 () Bool)

(assert (=> b!6950282 (=> (not res!2835521) (not e!4180168))))

(declare-fun lt!2477894 () List!66767)

(declare-fun size!40824 (List!66767) Int)

(assert (=> b!6950282 (= res!2835521 (= (size!40824 lt!2477894) (+ (size!40824 (_1!37172 cut!48)) (size!40824 (_2!37172 cut!48)))))))

(declare-fun b!6950280 () Bool)

(declare-fun e!4180167 () List!66767)

(assert (=> b!6950280 (= e!4180167 (_2!37172 cut!48))))

(declare-fun d!2169059 () Bool)

(assert (=> d!2169059 e!4180168))

(declare-fun res!2835522 () Bool)

(assert (=> d!2169059 (=> (not res!2835522) (not e!4180168))))

(declare-fun content!13127 (List!66767) (Set C!34298))

(assert (=> d!2169059 (= res!2835522 (= (content!13127 lt!2477894) (set.union (content!13127 (_1!37172 cut!48)) (content!13127 (_2!37172 cut!48)))))))

(assert (=> d!2169059 (= lt!2477894 e!4180167)))

(declare-fun c!1289250 () Bool)

(assert (=> d!2169059 (= c!1289250 (is-Nil!66643 (_1!37172 cut!48)))))

(assert (=> d!2169059 (= (++!15051 (_1!37172 cut!48) (_2!37172 cut!48)) lt!2477894)))

(declare-fun b!6950283 () Bool)

(assert (=> b!6950283 (= e!4180168 (or (not (= (_2!37172 cut!48) Nil!66643)) (= lt!2477894 (_1!37172 cut!48))))))

(declare-fun b!6950281 () Bool)

(assert (=> b!6950281 (= e!4180167 (Cons!66643 (h!73091 (_1!37172 cut!48)) (++!15051 (t!380510 (_1!37172 cut!48)) (_2!37172 cut!48))))))

(assert (= (and d!2169059 c!1289250) b!6950280))

(assert (= (and d!2169059 (not c!1289250)) b!6950281))

(assert (= (and d!2169059 res!2835522) b!6950282))

(assert (= (and b!6950282 res!2835521) b!6950283))

(declare-fun m!7652144 () Bool)

(assert (=> b!6950282 m!7652144))

(declare-fun m!7652146 () Bool)

(assert (=> b!6950282 m!7652146))

(declare-fun m!7652148 () Bool)

(assert (=> b!6950282 m!7652148))

(declare-fun m!7652150 () Bool)

(assert (=> d!2169059 m!7652150))

(declare-fun m!7652152 () Bool)

(assert (=> d!2169059 m!7652152))

(declare-fun m!7652154 () Bool)

(assert (=> d!2169059 m!7652154))

(declare-fun m!7652156 () Bool)

(assert (=> b!6950281 m!7652156))

(assert (=> b!6950212 d!2169059))

(declare-fun bs!1857671 () Bool)

(declare-fun b!6950336 () Bool)

(assert (= bs!1857671 (and b!6950336 b!6950200)))

(declare-fun lambda!396331 () Int)

(assert (=> bs!1857671 (not (= lambda!396331 lambda!396321))))

(assert (=> b!6950336 true))

(assert (=> b!6950336 true))

(declare-fun bs!1857672 () Bool)

(declare-fun b!6950335 () Bool)

(assert (= bs!1857672 (and b!6950335 b!6950200)))

(declare-fun lambda!396332 () Int)

(assert (=> bs!1857672 (not (= lambda!396332 lambda!396321))))

(declare-fun bs!1857673 () Bool)

(assert (= bs!1857673 (and b!6950335 b!6950336)))

(assert (=> bs!1857673 (not (= lambda!396332 lambda!396331))))

(assert (=> b!6950335 true))

(assert (=> b!6950335 true))

(declare-fun bm!631265 () Bool)

(declare-fun c!1289265 () Bool)

(declare-fun call!631270 () Bool)

(assert (=> bm!631265 (= call!631270 (Exists!4010 (ite c!1289265 lambda!396331 lambda!396332)))))

(declare-fun b!6950334 () Bool)

(declare-fun e!4180201 () Bool)

(assert (=> b!6950334 (= e!4180201 (= (_1!37172 cut!48) (Cons!66643 (c!1289246 rInner!765) Nil!66643)))))

(declare-fun e!4180203 () Bool)

(assert (=> b!6950335 (= e!4180203 call!631270)))

(declare-fun e!4180207 () Bool)

(assert (=> b!6950336 (= e!4180207 call!631270)))

(declare-fun b!6950337 () Bool)

(declare-fun e!4180205 () Bool)

(declare-fun e!4180202 () Bool)

(assert (=> b!6950337 (= e!4180205 e!4180202)))

(declare-fun res!2835551 () Bool)

(assert (=> b!6950337 (= res!2835551 (matchRSpec!4053 (regOne!34541 rInner!765) (_1!37172 cut!48)))))

(assert (=> b!6950337 (=> res!2835551 e!4180202)))

(declare-fun b!6950338 () Bool)

(declare-fun res!2835549 () Bool)

(assert (=> b!6950338 (=> res!2835549 e!4180207)))

(declare-fun call!631271 () Bool)

(assert (=> b!6950338 (= res!2835549 call!631271)))

(assert (=> b!6950338 (= e!4180203 e!4180207)))

(declare-fun b!6950339 () Bool)

(declare-fun c!1289264 () Bool)

(assert (=> b!6950339 (= c!1289264 (is-Union!17014 rInner!765))))

(assert (=> b!6950339 (= e!4180201 e!4180205)))

(declare-fun b!6950340 () Bool)

(declare-fun e!4180206 () Bool)

(declare-fun e!4180204 () Bool)

(assert (=> b!6950340 (= e!4180206 e!4180204)))

(declare-fun res!2835550 () Bool)

(assert (=> b!6950340 (= res!2835550 (not (is-EmptyLang!17014 rInner!765)))))

(assert (=> b!6950340 (=> (not res!2835550) (not e!4180204))))

(declare-fun bm!631266 () Bool)

(assert (=> bm!631266 (= call!631271 (isEmpty!38899 (_1!37172 cut!48)))))

(declare-fun b!6950341 () Bool)

(assert (=> b!6950341 (= e!4180202 (matchRSpec!4053 (regTwo!34541 rInner!765) (_1!37172 cut!48)))))

(declare-fun b!6950342 () Bool)

(declare-fun c!1289263 () Bool)

(assert (=> b!6950342 (= c!1289263 (is-ElementMatch!17014 rInner!765))))

(assert (=> b!6950342 (= e!4180204 e!4180201)))

(declare-fun b!6950343 () Bool)

(assert (=> b!6950343 (= e!4180205 e!4180203)))

(assert (=> b!6950343 (= c!1289265 (is-Star!17014 rInner!765))))

(declare-fun b!6950344 () Bool)

(assert (=> b!6950344 (= e!4180206 call!631271)))

(declare-fun d!2169061 () Bool)

(declare-fun c!1289266 () Bool)

(assert (=> d!2169061 (= c!1289266 (is-EmptyExpr!17014 rInner!765))))

(assert (=> d!2169061 (= (matchRSpec!4053 rInner!765 (_1!37172 cut!48)) e!4180206)))

(assert (= (and d!2169061 c!1289266) b!6950344))

(assert (= (and d!2169061 (not c!1289266)) b!6950340))

(assert (= (and b!6950340 res!2835550) b!6950342))

(assert (= (and b!6950342 c!1289263) b!6950334))

(assert (= (and b!6950342 (not c!1289263)) b!6950339))

(assert (= (and b!6950339 c!1289264) b!6950337))

(assert (= (and b!6950339 (not c!1289264)) b!6950343))

(assert (= (and b!6950337 (not res!2835551)) b!6950341))

(assert (= (and b!6950343 c!1289265) b!6950338))

(assert (= (and b!6950343 (not c!1289265)) b!6950335))

(assert (= (and b!6950338 (not res!2835549)) b!6950336))

(assert (= (or b!6950336 b!6950335) bm!631265))

(assert (= (or b!6950344 b!6950338) bm!631266))

(declare-fun m!7652166 () Bool)

(assert (=> bm!631265 m!7652166))

(declare-fun m!7652168 () Bool)

(assert (=> b!6950337 m!7652168))

(assert (=> bm!631266 m!7652118))

(declare-fun m!7652170 () Bool)

(assert (=> b!6950341 m!7652170))

(assert (=> b!6950209 d!2169061))

(declare-fun d!2169069 () Bool)

(declare-fun nullableFct!2556 (Regex!17014) Bool)

(assert (=> d!2169069 (= (nullable!6827 rInner!765) (nullableFct!2556 rInner!765))))

(declare-fun bs!1857674 () Bool)

(assert (= bs!1857674 d!2169069))

(declare-fun m!7652172 () Bool)

(assert (=> bs!1857674 m!7652172))

(assert (=> b!6950208 d!2169069))

(declare-fun d!2169071 () Bool)

(assert (=> d!2169071 (= (isEmpty!38899 (_1!37172 cut!48)) (is-Nil!66643 (_1!37172 cut!48)))))

(assert (=> b!6950210 d!2169071))

(declare-fun bm!631276 () Bool)

(declare-fun call!631283 () Bool)

(declare-fun c!1289275 () Bool)

(assert (=> bm!631276 (= call!631283 (validRegex!8720 (ite c!1289275 (regOne!34541 (Star!17014 rInner!765)) (regTwo!34540 (Star!17014 rInner!765)))))))

(declare-fun b!6950380 () Bool)

(declare-fun res!2835574 () Bool)

(declare-fun e!4180236 () Bool)

(assert (=> b!6950380 (=> res!2835574 e!4180236)))

(assert (=> b!6950380 (= res!2835574 (not (is-Concat!25859 (Star!17014 rInner!765))))))

(declare-fun e!4180237 () Bool)

(assert (=> b!6950380 (= e!4180237 e!4180236)))

(declare-fun b!6950381 () Bool)

(declare-fun e!4180233 () Bool)

(assert (=> b!6950381 (= e!4180236 e!4180233)))

(declare-fun res!2835571 () Bool)

(assert (=> b!6950381 (=> (not res!2835571) (not e!4180233))))

(declare-fun call!631282 () Bool)

(assert (=> b!6950381 (= res!2835571 call!631282)))

(declare-fun b!6950382 () Bool)

(declare-fun res!2835573 () Bool)

(declare-fun e!4180235 () Bool)

(assert (=> b!6950382 (=> (not res!2835573) (not e!4180235))))

(assert (=> b!6950382 (= res!2835573 call!631283)))

(assert (=> b!6950382 (= e!4180237 e!4180235)))

(declare-fun b!6950383 () Bool)

(declare-fun e!4180234 () Bool)

(assert (=> b!6950383 (= e!4180234 e!4180237)))

(assert (=> b!6950383 (= c!1289275 (is-Union!17014 (Star!17014 rInner!765)))))

(declare-fun b!6950384 () Bool)

(declare-fun e!4180239 () Bool)

(assert (=> b!6950384 (= e!4180234 e!4180239)))

(declare-fun res!2835575 () Bool)

(assert (=> b!6950384 (= res!2835575 (not (nullable!6827 (reg!17343 (Star!17014 rInner!765)))))))

(assert (=> b!6950384 (=> (not res!2835575) (not e!4180239))))

(declare-fun b!6950385 () Bool)

(assert (=> b!6950385 (= e!4180235 call!631282)))

(declare-fun bm!631277 () Bool)

(declare-fun call!631281 () Bool)

(declare-fun c!1289276 () Bool)

(assert (=> bm!631277 (= call!631281 (validRegex!8720 (ite c!1289276 (reg!17343 (Star!17014 rInner!765)) (ite c!1289275 (regTwo!34541 (Star!17014 rInner!765)) (regOne!34540 (Star!17014 rInner!765))))))))

(declare-fun b!6950386 () Bool)

(declare-fun e!4180238 () Bool)

(assert (=> b!6950386 (= e!4180238 e!4180234)))

(assert (=> b!6950386 (= c!1289276 (is-Star!17014 (Star!17014 rInner!765)))))

(declare-fun bm!631278 () Bool)

(assert (=> bm!631278 (= call!631282 call!631281)))

(declare-fun d!2169073 () Bool)

(declare-fun res!2835572 () Bool)

(assert (=> d!2169073 (=> res!2835572 e!4180238)))

(assert (=> d!2169073 (= res!2835572 (is-ElementMatch!17014 (Star!17014 rInner!765)))))

(assert (=> d!2169073 (= (validRegex!8720 (Star!17014 rInner!765)) e!4180238)))

(declare-fun b!6950387 () Bool)

(assert (=> b!6950387 (= e!4180233 call!631283)))

(declare-fun b!6950388 () Bool)

(assert (=> b!6950388 (= e!4180239 call!631281)))

(assert (= (and d!2169073 (not res!2835572)) b!6950386))

(assert (= (and b!6950386 c!1289276) b!6950384))

(assert (= (and b!6950386 (not c!1289276)) b!6950383))

(assert (= (and b!6950384 res!2835575) b!6950388))

(assert (= (and b!6950383 c!1289275) b!6950382))

(assert (= (and b!6950383 (not c!1289275)) b!6950380))

(assert (= (and b!6950382 res!2835573) b!6950385))

(assert (= (and b!6950380 (not res!2835574)) b!6950381))

(assert (= (and b!6950381 res!2835571) b!6950387))

(assert (= (or b!6950382 b!6950387) bm!631276))

(assert (= (or b!6950385 b!6950381) bm!631278))

(assert (= (or b!6950388 bm!631278) bm!631277))

(declare-fun m!7652174 () Bool)

(assert (=> bm!631276 m!7652174))

(declare-fun m!7652176 () Bool)

(assert (=> b!6950384 m!7652176))

(declare-fun m!7652178 () Bool)

(assert (=> bm!631277 m!7652178))

(assert (=> b!6950204 d!2169073))

(declare-fun bm!631279 () Bool)

(declare-fun call!631286 () Bool)

(declare-fun c!1289277 () Bool)

(assert (=> bm!631279 (= call!631286 (validRegex!8720 (ite c!1289277 (regOne!34541 rInner!765) (regTwo!34540 rInner!765))))))

(declare-fun b!6950389 () Bool)

(declare-fun res!2835579 () Bool)

(declare-fun e!4180243 () Bool)

(assert (=> b!6950389 (=> res!2835579 e!4180243)))

(assert (=> b!6950389 (= res!2835579 (not (is-Concat!25859 rInner!765)))))

(declare-fun e!4180244 () Bool)

(assert (=> b!6950389 (= e!4180244 e!4180243)))

(declare-fun b!6950390 () Bool)

(declare-fun e!4180240 () Bool)

(assert (=> b!6950390 (= e!4180243 e!4180240)))

(declare-fun res!2835576 () Bool)

(assert (=> b!6950390 (=> (not res!2835576) (not e!4180240))))

(declare-fun call!631285 () Bool)

(assert (=> b!6950390 (= res!2835576 call!631285)))

(declare-fun b!6950391 () Bool)

(declare-fun res!2835578 () Bool)

(declare-fun e!4180242 () Bool)

(assert (=> b!6950391 (=> (not res!2835578) (not e!4180242))))

(assert (=> b!6950391 (= res!2835578 call!631286)))

(assert (=> b!6950391 (= e!4180244 e!4180242)))

(declare-fun b!6950392 () Bool)

(declare-fun e!4180241 () Bool)

(assert (=> b!6950392 (= e!4180241 e!4180244)))

(assert (=> b!6950392 (= c!1289277 (is-Union!17014 rInner!765))))

(declare-fun b!6950393 () Bool)

(declare-fun e!4180246 () Bool)

(assert (=> b!6950393 (= e!4180241 e!4180246)))

(declare-fun res!2835580 () Bool)

(assert (=> b!6950393 (= res!2835580 (not (nullable!6827 (reg!17343 rInner!765))))))

(assert (=> b!6950393 (=> (not res!2835580) (not e!4180246))))

(declare-fun b!6950394 () Bool)

(assert (=> b!6950394 (= e!4180242 call!631285)))

(declare-fun bm!631280 () Bool)

(declare-fun call!631284 () Bool)

(declare-fun c!1289278 () Bool)

(assert (=> bm!631280 (= call!631284 (validRegex!8720 (ite c!1289278 (reg!17343 rInner!765) (ite c!1289277 (regTwo!34541 rInner!765) (regOne!34540 rInner!765)))))))

(declare-fun b!6950395 () Bool)

(declare-fun e!4180245 () Bool)

(assert (=> b!6950395 (= e!4180245 e!4180241)))

(assert (=> b!6950395 (= c!1289278 (is-Star!17014 rInner!765))))

(declare-fun bm!631281 () Bool)

(assert (=> bm!631281 (= call!631285 call!631284)))

(declare-fun d!2169075 () Bool)

(declare-fun res!2835577 () Bool)

(assert (=> d!2169075 (=> res!2835577 e!4180245)))

(assert (=> d!2169075 (= res!2835577 (is-ElementMatch!17014 rInner!765))))

(assert (=> d!2169075 (= (validRegex!8720 rInner!765) e!4180245)))

(declare-fun b!6950396 () Bool)

(assert (=> b!6950396 (= e!4180240 call!631286)))

(declare-fun b!6950397 () Bool)

(assert (=> b!6950397 (= e!4180246 call!631284)))

(assert (= (and d!2169075 (not res!2835577)) b!6950395))

(assert (= (and b!6950395 c!1289278) b!6950393))

(assert (= (and b!6950395 (not c!1289278)) b!6950392))

(assert (= (and b!6950393 res!2835580) b!6950397))

(assert (= (and b!6950392 c!1289277) b!6950391))

(assert (= (and b!6950392 (not c!1289277)) b!6950389))

(assert (= (and b!6950391 res!2835578) b!6950394))

(assert (= (and b!6950389 (not res!2835579)) b!6950390))

(assert (= (and b!6950390 res!2835576) b!6950396))

(assert (= (or b!6950391 b!6950396) bm!631279))

(assert (= (or b!6950394 b!6950390) bm!631281))

(assert (= (or b!6950397 bm!631281) bm!631280))

(declare-fun m!7652180 () Bool)

(assert (=> bm!631279 m!7652180))

(declare-fun m!7652182 () Bool)

(assert (=> b!6950393 m!7652182))

(declare-fun m!7652184 () Bool)

(assert (=> bm!631280 m!7652184))

(assert (=> start!667120 d!2169075))

(declare-fun d!2169077 () Bool)

(declare-fun choose!51795 (Int) Bool)

(assert (=> d!2169077 (= (Exists!4010 lambda!396321) (choose!51795 lambda!396321))))

(declare-fun bs!1857675 () Bool)

(assert (= bs!1857675 d!2169077))

(declare-fun m!7652186 () Bool)

(assert (=> bs!1857675 m!7652186))

(assert (=> b!6950206 d!2169077))

(assert (=> b!6950200 d!2169077))

(declare-fun b!6950414 () Bool)

(declare-fun e!4180251 () Bool)

(declare-fun tp!1915947 () Bool)

(assert (=> b!6950414 (= e!4180251 tp!1915947)))

(declare-fun b!6950415 () Bool)

(declare-fun tp!1915945 () Bool)

(declare-fun tp!1915944 () Bool)

(assert (=> b!6950415 (= e!4180251 (and tp!1915945 tp!1915944))))

(declare-fun b!6950412 () Bool)

(assert (=> b!6950412 (= e!4180251 tp_is_empty!43253)))

(assert (=> b!6950213 (= tp!1915907 e!4180251)))

(declare-fun b!6950413 () Bool)

(declare-fun tp!1915946 () Bool)

(declare-fun tp!1915948 () Bool)

(assert (=> b!6950413 (= e!4180251 (and tp!1915946 tp!1915948))))

(assert (= (and b!6950213 (is-ElementMatch!17014 (regOne!34541 rInner!765))) b!6950412))

(assert (= (and b!6950213 (is-Concat!25859 (regOne!34541 rInner!765))) b!6950413))

(assert (= (and b!6950213 (is-Star!17014 (regOne!34541 rInner!765))) b!6950414))

(assert (= (and b!6950213 (is-Union!17014 (regOne!34541 rInner!765))) b!6950415))

(declare-fun b!6950418 () Bool)

(declare-fun e!4180252 () Bool)

(declare-fun tp!1915952 () Bool)

(assert (=> b!6950418 (= e!4180252 tp!1915952)))

(declare-fun b!6950419 () Bool)

(declare-fun tp!1915950 () Bool)

(declare-fun tp!1915949 () Bool)

(assert (=> b!6950419 (= e!4180252 (and tp!1915950 tp!1915949))))

(declare-fun b!6950416 () Bool)

(assert (=> b!6950416 (= e!4180252 tp_is_empty!43253)))

(assert (=> b!6950213 (= tp!1915903 e!4180252)))

(declare-fun b!6950417 () Bool)

(declare-fun tp!1915951 () Bool)

(declare-fun tp!1915953 () Bool)

(assert (=> b!6950417 (= e!4180252 (and tp!1915951 tp!1915953))))

(assert (= (and b!6950213 (is-ElementMatch!17014 (regTwo!34541 rInner!765))) b!6950416))

(assert (= (and b!6950213 (is-Concat!25859 (regTwo!34541 rInner!765))) b!6950417))

(assert (= (and b!6950213 (is-Star!17014 (regTwo!34541 rInner!765))) b!6950418))

(assert (= (and b!6950213 (is-Union!17014 (regTwo!34541 rInner!765))) b!6950419))

(declare-fun b!6950424 () Bool)

(declare-fun e!4180255 () Bool)

(declare-fun tp!1915956 () Bool)

(assert (=> b!6950424 (= e!4180255 (and tp_is_empty!43253 tp!1915956))))

(assert (=> b!6950207 (= tp!1915905 e!4180255)))

(assert (= (and b!6950207 (is-Cons!66643 (t!380510 (_2!37172 cut!48)))) b!6950424))

(declare-fun b!6950427 () Bool)

(declare-fun e!4180256 () Bool)

(declare-fun tp!1915960 () Bool)

(assert (=> b!6950427 (= e!4180256 tp!1915960)))

(declare-fun b!6950428 () Bool)

(declare-fun tp!1915958 () Bool)

(declare-fun tp!1915957 () Bool)

(assert (=> b!6950428 (= e!4180256 (and tp!1915958 tp!1915957))))

(declare-fun b!6950425 () Bool)

(assert (=> b!6950425 (= e!4180256 tp_is_empty!43253)))

(assert (=> b!6950203 (= tp!1915909 e!4180256)))

(declare-fun b!6950426 () Bool)

(declare-fun tp!1915959 () Bool)

(declare-fun tp!1915961 () Bool)

(assert (=> b!6950426 (= e!4180256 (and tp!1915959 tp!1915961))))

(assert (= (and b!6950203 (is-ElementMatch!17014 (regOne!34540 rInner!765))) b!6950425))

(assert (= (and b!6950203 (is-Concat!25859 (regOne!34540 rInner!765))) b!6950426))

(assert (= (and b!6950203 (is-Star!17014 (regOne!34540 rInner!765))) b!6950427))

(assert (= (and b!6950203 (is-Union!17014 (regOne!34540 rInner!765))) b!6950428))

(declare-fun b!6950431 () Bool)

(declare-fun e!4180257 () Bool)

(declare-fun tp!1915965 () Bool)

(assert (=> b!6950431 (= e!4180257 tp!1915965)))

(declare-fun b!6950432 () Bool)

(declare-fun tp!1915963 () Bool)

(declare-fun tp!1915962 () Bool)

(assert (=> b!6950432 (= e!4180257 (and tp!1915963 tp!1915962))))

(declare-fun b!6950429 () Bool)

(assert (=> b!6950429 (= e!4180257 tp_is_empty!43253)))

(assert (=> b!6950203 (= tp!1915904 e!4180257)))

(declare-fun b!6950430 () Bool)

(declare-fun tp!1915964 () Bool)

(declare-fun tp!1915966 () Bool)

(assert (=> b!6950430 (= e!4180257 (and tp!1915964 tp!1915966))))

(assert (= (and b!6950203 (is-ElementMatch!17014 (regTwo!34540 rInner!765))) b!6950429))

(assert (= (and b!6950203 (is-Concat!25859 (regTwo!34540 rInner!765))) b!6950430))

(assert (= (and b!6950203 (is-Star!17014 (regTwo!34540 rInner!765))) b!6950431))

(assert (= (and b!6950203 (is-Union!17014 (regTwo!34540 rInner!765))) b!6950432))

(declare-fun b!6950433 () Bool)

(declare-fun e!4180258 () Bool)

(declare-fun tp!1915967 () Bool)

(assert (=> b!6950433 (= e!4180258 (and tp_is_empty!43253 tp!1915967))))

(assert (=> b!6950205 (= tp!1915908 e!4180258)))

(assert (= (and b!6950205 (is-Cons!66643 (t!380510 s!10388))) b!6950433))

(declare-fun b!6950436 () Bool)

(declare-fun e!4180259 () Bool)

(declare-fun tp!1915971 () Bool)

(assert (=> b!6950436 (= e!4180259 tp!1915971)))

(declare-fun b!6950437 () Bool)

(declare-fun tp!1915969 () Bool)

(declare-fun tp!1915968 () Bool)

(assert (=> b!6950437 (= e!4180259 (and tp!1915969 tp!1915968))))

(declare-fun b!6950434 () Bool)

(assert (=> b!6950434 (= e!4180259 tp_is_empty!43253)))

(assert (=> b!6950201 (= tp!1915902 e!4180259)))

(declare-fun b!6950435 () Bool)

(declare-fun tp!1915970 () Bool)

(declare-fun tp!1915972 () Bool)

(assert (=> b!6950435 (= e!4180259 (and tp!1915970 tp!1915972))))

(assert (= (and b!6950201 (is-ElementMatch!17014 (reg!17343 rInner!765))) b!6950434))

(assert (= (and b!6950201 (is-Concat!25859 (reg!17343 rInner!765))) b!6950435))

(assert (= (and b!6950201 (is-Star!17014 (reg!17343 rInner!765))) b!6950436))

(assert (= (and b!6950201 (is-Union!17014 (reg!17343 rInner!765))) b!6950437))

(declare-fun b!6950438 () Bool)

(declare-fun e!4180260 () Bool)

(declare-fun tp!1915973 () Bool)

(assert (=> b!6950438 (= e!4180260 (and tp_is_empty!43253 tp!1915973))))

(assert (=> b!6950211 (= tp!1915906 e!4180260)))

(assert (= (and b!6950211 (is-Cons!66643 (t!380510 (_1!37172 cut!48)))) b!6950438))

(push 1)

(assert (not b!6950393))

(assert (not b!6950414))

(assert (not b!6950384))

(assert (not bm!631265))

(assert (not b!6950417))

(assert (not b!6950430))

(assert (not b!6950337))

(assert (not bm!631266))

(assert tp_is_empty!43253)

(assert (not b!6950418))

(assert (not b!6950415))

(assert (not bm!631280))

(assert (not b!6950426))

(assert (not d!2169077))

(assert (not d!2169069))

(assert (not b!6950431))

(assert (not bm!631279))

(assert (not b!6950282))

(assert (not bm!631277))

(assert (not b!6950438))

(assert (not b!6950437))

(assert (not d!2169059))

(assert (not b!6950428))

(assert (not bm!631276))

(assert (not b!6950424))

(assert (not b!6950419))

(assert (not b!6950432))

(assert (not b!6950436))

(assert (not b!6950433))

(assert (not b!6950413))

(assert (not b!6950281))

(assert (not b!6950341))

(assert (not b!6950435))

(assert (not b!6950427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

