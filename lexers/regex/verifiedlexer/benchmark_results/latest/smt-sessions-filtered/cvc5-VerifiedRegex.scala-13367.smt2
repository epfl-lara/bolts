; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724432 () Bool)

(assert start!724432)

(declare-fun b!7474362 () Bool)

(assert (=> b!7474362 true))

(assert (=> b!7474362 true))

(assert (=> b!7474362 true))

(declare-fun lambda!463039 () Int)

(declare-fun lambda!463038 () Int)

(assert (=> b!7474362 (not (= lambda!463039 lambda!463038))))

(assert (=> b!7474362 true))

(assert (=> b!7474362 true))

(assert (=> b!7474362 true))

(declare-fun b!7474348 () Bool)

(declare-fun e!4459002 () Bool)

(declare-fun tp!2167625 () Bool)

(assert (=> b!7474348 (= e!4459002 tp!2167625)))

(declare-fun b!7474349 () Bool)

(declare-fun tp!2167620 () Bool)

(declare-fun tp!2167618 () Bool)

(assert (=> b!7474349 (= e!4459002 (and tp!2167620 tp!2167618))))

(declare-fun b!7474350 () Bool)

(declare-fun res!2998628 () Bool)

(declare-fun e!4458998 () Bool)

(assert (=> b!7474350 (=> (not res!2998628) (not e!4458998))))

(declare-datatypes ((C!39466 0))(
  ( (C!39467 (val!30131 Int)) )
))
(declare-datatypes ((Regex!19596 0))(
  ( (ElementMatch!19596 (c!1380803 C!39466)) (Concat!28441 (regOne!39704 Regex!19596) (regTwo!39704 Regex!19596)) (EmptyExpr!19596) (Star!19596 (reg!19925 Regex!19596)) (EmptyLang!19596) (Union!19596 (regOne!39705 Regex!19596) (regTwo!39705 Regex!19596)) )
))
(declare-fun rTail!78 () Regex!19596)

(declare-fun validRegex!10110 (Regex!19596) Bool)

(assert (=> b!7474350 (= res!2998628 (validRegex!10110 rTail!78))))

(declare-fun b!7474351 () Bool)

(declare-fun e!4459000 () Bool)

(declare-fun tp!2167622 () Bool)

(assert (=> b!7474351 (= e!4459000 tp!2167622)))

(declare-fun b!7474352 () Bool)

(declare-fun e!4458997 () Bool)

(declare-fun tp!2167621 () Bool)

(declare-fun tp!2167617 () Bool)

(assert (=> b!7474352 (= e!4458997 (and tp!2167621 tp!2167617))))

(declare-fun b!7474353 () Bool)

(declare-fun e!4458999 () Bool)

(assert (=> b!7474353 (= e!4458998 (not e!4458999))))

(declare-fun res!2998629 () Bool)

(assert (=> b!7474353 (=> res!2998629 e!4458999)))

(declare-fun lt!2626889 () Bool)

(assert (=> b!7474353 (= res!2998629 (not lt!2626889))))

(declare-fun lt!2626888 () Regex!19596)

(declare-datatypes ((List!72312 0))(
  ( (Nil!72188) (Cons!72188 (h!78636 C!39466) (t!386881 List!72312)) )
))
(declare-fun s!13591 () List!72312)

(declare-fun matchR!9360 (Regex!19596 List!72312) Bool)

(declare-fun matchRSpec!4275 (Regex!19596 List!72312) Bool)

(assert (=> b!7474353 (= (matchR!9360 lt!2626888 s!13591) (matchRSpec!4275 lt!2626888 s!13591))))

(declare-datatypes ((Unit!166027 0))(
  ( (Unit!166028) )
))
(declare-fun lt!2626883 () Unit!166027)

(declare-fun mainMatchTheorem!4269 (Regex!19596 List!72312) Unit!166027)

(assert (=> b!7474353 (= lt!2626883 (mainMatchTheorem!4269 lt!2626888 s!13591))))

(declare-fun lt!2626887 () Regex!19596)

(assert (=> b!7474353 (= lt!2626889 (matchRSpec!4275 lt!2626887 s!13591))))

(assert (=> b!7474353 (= lt!2626889 (matchR!9360 lt!2626887 s!13591))))

(declare-fun lt!2626884 () Unit!166027)

(assert (=> b!7474353 (= lt!2626884 (mainMatchTheorem!4269 lt!2626887 s!13591))))

(declare-fun r2!5783 () Regex!19596)

(declare-fun r1!5845 () Regex!19596)

(assert (=> b!7474353 (= lt!2626888 (Union!19596 (Concat!28441 r1!5845 rTail!78) (Concat!28441 r2!5783 rTail!78)))))

(declare-fun lt!2626890 () Regex!19596)

(assert (=> b!7474353 (= lt!2626887 (Concat!28441 lt!2626890 rTail!78))))

(assert (=> b!7474353 (= lt!2626890 (Union!19596 r1!5845 r2!5783))))

(declare-fun b!7474354 () Bool)

(declare-fun tp!2167613 () Bool)

(declare-fun tp!2167624 () Bool)

(assert (=> b!7474354 (= e!4459000 (and tp!2167613 tp!2167624))))

(declare-fun b!7474355 () Bool)

(declare-fun tp_is_empty!49481 () Bool)

(assert (=> b!7474355 (= e!4459002 tp_is_empty!49481)))

(declare-fun b!7474356 () Bool)

(declare-fun tp!2167612 () Bool)

(declare-fun tp!2167623 () Bool)

(assert (=> b!7474356 (= e!4458997 (and tp!2167612 tp!2167623))))

(declare-fun res!2998627 () Bool)

(assert (=> start!724432 (=> (not res!2998627) (not e!4458998))))

(assert (=> start!724432 (= res!2998627 (validRegex!10110 r1!5845))))

(assert (=> start!724432 e!4458998))

(assert (=> start!724432 e!4458997))

(assert (=> start!724432 e!4459000))

(assert (=> start!724432 e!4459002))

(declare-fun e!4459001 () Bool)

(assert (=> start!724432 e!4459001))

(declare-fun b!7474357 () Bool)

(assert (=> b!7474357 (= e!4459000 tp_is_empty!49481)))

(declare-fun b!7474358 () Bool)

(declare-fun tp!2167615 () Bool)

(declare-fun tp!2167626 () Bool)

(assert (=> b!7474358 (= e!4459000 (and tp!2167615 tp!2167626))))

(declare-fun b!7474359 () Bool)

(declare-fun res!2998630 () Bool)

(assert (=> b!7474359 (=> (not res!2998630) (not e!4458998))))

(assert (=> b!7474359 (= res!2998630 (validRegex!10110 r2!5783))))

(declare-fun b!7474360 () Bool)

(declare-fun tp!2167627 () Bool)

(assert (=> b!7474360 (= e!4459001 (and tp_is_empty!49481 tp!2167627))))

(declare-fun b!7474361 () Bool)

(declare-fun tp!2167619 () Bool)

(assert (=> b!7474361 (= e!4458997 tp!2167619)))

(declare-datatypes ((tuple2!68642 0))(
  ( (tuple2!68643 (_1!37624 List!72312) (_2!37624 List!72312)) )
))
(declare-datatypes ((Option!17153 0))(
  ( (None!17152) (Some!17152 (v!54281 tuple2!68642)) )
))
(declare-fun lt!2626886 () Option!17153)

(declare-fun get!25258 (Option!17153) tuple2!68642)

(assert (=> b!7474362 (= e!4458999 (matchR!9360 lt!2626890 (_1!37624 (get!25258 lt!2626886))))))

(declare-fun Exists!4215 (Int) Bool)

(assert (=> b!7474362 (= (Exists!4215 lambda!463038) (Exists!4215 lambda!463039))))

(declare-fun lt!2626885 () Unit!166027)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2549 (Regex!19596 Regex!19596 List!72312) Unit!166027)

(assert (=> b!7474362 (= lt!2626885 (lemmaExistCutMatchRandMatchRSpecEquivalent!2549 lt!2626890 rTail!78 s!13591))))

(declare-fun isDefined!13842 (Option!17153) Bool)

(assert (=> b!7474362 (= (isDefined!13842 lt!2626886) (Exists!4215 lambda!463038))))

(declare-fun findConcatSeparation!3275 (Regex!19596 Regex!19596 List!72312 List!72312 List!72312) Option!17153)

(assert (=> b!7474362 (= lt!2626886 (findConcatSeparation!3275 lt!2626890 rTail!78 Nil!72188 s!13591 s!13591))))

(declare-fun lt!2626882 () Unit!166027)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3033 (Regex!19596 Regex!19596 List!72312) Unit!166027)

(assert (=> b!7474362 (= lt!2626882 (lemmaFindConcatSeparationEquivalentToExists!3033 lt!2626890 rTail!78 s!13591))))

(declare-fun b!7474363 () Bool)

(assert (=> b!7474363 (= e!4458997 tp_is_empty!49481)))

(declare-fun b!7474364 () Bool)

(declare-fun tp!2167616 () Bool)

(declare-fun tp!2167614 () Bool)

(assert (=> b!7474364 (= e!4459002 (and tp!2167616 tp!2167614))))

(assert (= (and start!724432 res!2998627) b!7474359))

(assert (= (and b!7474359 res!2998630) b!7474350))

(assert (= (and b!7474350 res!2998628) b!7474353))

(assert (= (and b!7474353 (not res!2998629)) b!7474362))

(assert (= (and start!724432 (is-ElementMatch!19596 r1!5845)) b!7474363))

(assert (= (and start!724432 (is-Concat!28441 r1!5845)) b!7474356))

(assert (= (and start!724432 (is-Star!19596 r1!5845)) b!7474361))

(assert (= (and start!724432 (is-Union!19596 r1!5845)) b!7474352))

(assert (= (and start!724432 (is-ElementMatch!19596 r2!5783)) b!7474357))

(assert (= (and start!724432 (is-Concat!28441 r2!5783)) b!7474354))

(assert (= (and start!724432 (is-Star!19596 r2!5783)) b!7474351))

(assert (= (and start!724432 (is-Union!19596 r2!5783)) b!7474358))

(assert (= (and start!724432 (is-ElementMatch!19596 rTail!78)) b!7474355))

(assert (= (and start!724432 (is-Concat!28441 rTail!78)) b!7474349))

(assert (= (and start!724432 (is-Star!19596 rTail!78)) b!7474348))

(assert (= (and start!724432 (is-Union!19596 rTail!78)) b!7474364))

(assert (= (and start!724432 (is-Cons!72188 s!13591)) b!7474360))

(declare-fun m!8069812 () Bool)

(assert (=> b!7474362 m!8069812))

(declare-fun m!8069814 () Bool)

(assert (=> b!7474362 m!8069814))

(declare-fun m!8069816 () Bool)

(assert (=> b!7474362 m!8069816))

(declare-fun m!8069818 () Bool)

(assert (=> b!7474362 m!8069818))

(assert (=> b!7474362 m!8069816))

(declare-fun m!8069820 () Bool)

(assert (=> b!7474362 m!8069820))

(declare-fun m!8069822 () Bool)

(assert (=> b!7474362 m!8069822))

(declare-fun m!8069824 () Bool)

(assert (=> b!7474362 m!8069824))

(declare-fun m!8069826 () Bool)

(assert (=> b!7474362 m!8069826))

(declare-fun m!8069828 () Bool)

(assert (=> start!724432 m!8069828))

(declare-fun m!8069830 () Bool)

(assert (=> b!7474350 m!8069830))

(declare-fun m!8069832 () Bool)

(assert (=> b!7474353 m!8069832))

(declare-fun m!8069834 () Bool)

(assert (=> b!7474353 m!8069834))

(declare-fun m!8069836 () Bool)

(assert (=> b!7474353 m!8069836))

(declare-fun m!8069838 () Bool)

(assert (=> b!7474353 m!8069838))

(declare-fun m!8069840 () Bool)

(assert (=> b!7474353 m!8069840))

(declare-fun m!8069842 () Bool)

(assert (=> b!7474353 m!8069842))

(declare-fun m!8069844 () Bool)

(assert (=> b!7474359 m!8069844))

(push 1)

(assert (not b!7474350))

(assert (not b!7474353))

(assert (not b!7474348))

(assert (not b!7474356))

(assert (not b!7474360))

(assert (not start!724432))

(assert (not b!7474359))

(assert (not b!7474361))

(assert (not b!7474358))

(assert (not b!7474351))

(assert (not b!7474364))

(assert tp_is_empty!49481)

(assert (not b!7474354))

(assert (not b!7474362))

(assert (not b!7474349))

(assert (not b!7474352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7474454 () Bool)

(declare-fun e!4459046 () Bool)

(declare-fun call!686237 () Bool)

(assert (=> b!7474454 (= e!4459046 call!686237)))

(declare-fun b!7474455 () Bool)

(declare-fun e!4459045 () Bool)

(declare-fun e!4459044 () Bool)

(assert (=> b!7474455 (= e!4459045 e!4459044)))

(declare-fun res!2998668 () Bool)

(assert (=> b!7474455 (=> (not res!2998668) (not e!4459044))))

(declare-fun call!686236 () Bool)

(assert (=> b!7474455 (= res!2998668 call!686236)))

(declare-fun b!7474456 () Bool)

(declare-fun e!4459042 () Bool)

(declare-fun e!4459043 () Bool)

(assert (=> b!7474456 (= e!4459042 e!4459043)))

(declare-fun c!1380810 () Bool)

(assert (=> b!7474456 (= c!1380810 (is-Star!19596 r1!5845))))

(declare-fun c!1380809 () Bool)

(declare-fun bm!686230 () Bool)

(declare-fun call!686235 () Bool)

(assert (=> bm!686230 (= call!686235 (validRegex!10110 (ite c!1380810 (reg!19925 r1!5845) (ite c!1380809 (regOne!39705 r1!5845) (regOne!39704 r1!5845)))))))

(declare-fun bm!686231 () Bool)

(assert (=> bm!686231 (= call!686237 (validRegex!10110 (ite c!1380809 (regTwo!39705 r1!5845) (regTwo!39704 r1!5845))))))

(declare-fun d!2299324 () Bool)

(declare-fun res!2998669 () Bool)

(assert (=> d!2299324 (=> res!2998669 e!4459042)))

(assert (=> d!2299324 (= res!2998669 (is-ElementMatch!19596 r1!5845))))

(assert (=> d!2299324 (= (validRegex!10110 r1!5845) e!4459042)))

(declare-fun b!7474457 () Bool)

(declare-fun e!4459041 () Bool)

(assert (=> b!7474457 (= e!4459043 e!4459041)))

(declare-fun res!2998665 () Bool)

(declare-fun nullable!8534 (Regex!19596) Bool)

(assert (=> b!7474457 (= res!2998665 (not (nullable!8534 (reg!19925 r1!5845))))))

(assert (=> b!7474457 (=> (not res!2998665) (not e!4459041))))

(declare-fun b!7474458 () Bool)

(assert (=> b!7474458 (= e!4459044 call!686237)))

(declare-fun b!7474459 () Bool)

(declare-fun res!2998666 () Bool)

(assert (=> b!7474459 (=> (not res!2998666) (not e!4459046))))

(assert (=> b!7474459 (= res!2998666 call!686236)))

(declare-fun e!4459047 () Bool)

(assert (=> b!7474459 (= e!4459047 e!4459046)))

(declare-fun b!7474460 () Bool)

(declare-fun res!2998667 () Bool)

(assert (=> b!7474460 (=> res!2998667 e!4459045)))

(assert (=> b!7474460 (= res!2998667 (not (is-Concat!28441 r1!5845)))))

(assert (=> b!7474460 (= e!4459047 e!4459045)))

(declare-fun b!7474461 () Bool)

(assert (=> b!7474461 (= e!4459041 call!686235)))

(declare-fun bm!686232 () Bool)

(assert (=> bm!686232 (= call!686236 call!686235)))

(declare-fun b!7474462 () Bool)

(assert (=> b!7474462 (= e!4459043 e!4459047)))

(assert (=> b!7474462 (= c!1380809 (is-Union!19596 r1!5845))))

(assert (= (and d!2299324 (not res!2998669)) b!7474456))

(assert (= (and b!7474456 c!1380810) b!7474457))

(assert (= (and b!7474456 (not c!1380810)) b!7474462))

(assert (= (and b!7474457 res!2998665) b!7474461))

(assert (= (and b!7474462 c!1380809) b!7474459))

(assert (= (and b!7474462 (not c!1380809)) b!7474460))

(assert (= (and b!7474459 res!2998666) b!7474454))

(assert (= (and b!7474460 (not res!2998667)) b!7474455))

(assert (= (and b!7474455 res!2998668) b!7474458))

(assert (= (or b!7474454 b!7474458) bm!686231))

(assert (= (or b!7474459 b!7474455) bm!686232))

(assert (= (or b!7474461 bm!686232) bm!686230))

(declare-fun m!8069880 () Bool)

(assert (=> bm!686230 m!8069880))

(declare-fun m!8069882 () Bool)

(assert (=> bm!686231 m!8069882))

(declare-fun m!8069884 () Bool)

(assert (=> b!7474457 m!8069884))

(assert (=> start!724432 d!2299324))

(declare-fun b!7474463 () Bool)

(declare-fun e!4459053 () Bool)

(declare-fun call!686240 () Bool)

(assert (=> b!7474463 (= e!4459053 call!686240)))

(declare-fun b!7474464 () Bool)

(declare-fun e!4459052 () Bool)

(declare-fun e!4459051 () Bool)

(assert (=> b!7474464 (= e!4459052 e!4459051)))

(declare-fun res!2998673 () Bool)

(assert (=> b!7474464 (=> (not res!2998673) (not e!4459051))))

(declare-fun call!686239 () Bool)

(assert (=> b!7474464 (= res!2998673 call!686239)))

(declare-fun b!7474465 () Bool)

(declare-fun e!4459049 () Bool)

(declare-fun e!4459050 () Bool)

(assert (=> b!7474465 (= e!4459049 e!4459050)))

(declare-fun c!1380812 () Bool)

(assert (=> b!7474465 (= c!1380812 (is-Star!19596 r2!5783))))

(declare-fun c!1380811 () Bool)

(declare-fun call!686238 () Bool)

(declare-fun bm!686233 () Bool)

(assert (=> bm!686233 (= call!686238 (validRegex!10110 (ite c!1380812 (reg!19925 r2!5783) (ite c!1380811 (regOne!39705 r2!5783) (regOne!39704 r2!5783)))))))

(declare-fun bm!686234 () Bool)

(assert (=> bm!686234 (= call!686240 (validRegex!10110 (ite c!1380811 (regTwo!39705 r2!5783) (regTwo!39704 r2!5783))))))

(declare-fun d!2299328 () Bool)

(declare-fun res!2998674 () Bool)

(assert (=> d!2299328 (=> res!2998674 e!4459049)))

(assert (=> d!2299328 (= res!2998674 (is-ElementMatch!19596 r2!5783))))

(assert (=> d!2299328 (= (validRegex!10110 r2!5783) e!4459049)))

(declare-fun b!7474466 () Bool)

(declare-fun e!4459048 () Bool)

(assert (=> b!7474466 (= e!4459050 e!4459048)))

(declare-fun res!2998670 () Bool)

(assert (=> b!7474466 (= res!2998670 (not (nullable!8534 (reg!19925 r2!5783))))))

(assert (=> b!7474466 (=> (not res!2998670) (not e!4459048))))

(declare-fun b!7474467 () Bool)

(assert (=> b!7474467 (= e!4459051 call!686240)))

(declare-fun b!7474468 () Bool)

(declare-fun res!2998671 () Bool)

(assert (=> b!7474468 (=> (not res!2998671) (not e!4459053))))

(assert (=> b!7474468 (= res!2998671 call!686239)))

(declare-fun e!4459054 () Bool)

(assert (=> b!7474468 (= e!4459054 e!4459053)))

(declare-fun b!7474469 () Bool)

(declare-fun res!2998672 () Bool)

(assert (=> b!7474469 (=> res!2998672 e!4459052)))

(assert (=> b!7474469 (= res!2998672 (not (is-Concat!28441 r2!5783)))))

(assert (=> b!7474469 (= e!4459054 e!4459052)))

(declare-fun b!7474470 () Bool)

(assert (=> b!7474470 (= e!4459048 call!686238)))

(declare-fun bm!686235 () Bool)

(assert (=> bm!686235 (= call!686239 call!686238)))

(declare-fun b!7474471 () Bool)

(assert (=> b!7474471 (= e!4459050 e!4459054)))

(assert (=> b!7474471 (= c!1380811 (is-Union!19596 r2!5783))))

(assert (= (and d!2299328 (not res!2998674)) b!7474465))

(assert (= (and b!7474465 c!1380812) b!7474466))

(assert (= (and b!7474465 (not c!1380812)) b!7474471))

(assert (= (and b!7474466 res!2998670) b!7474470))

(assert (= (and b!7474471 c!1380811) b!7474468))

(assert (= (and b!7474471 (not c!1380811)) b!7474469))

(assert (= (and b!7474468 res!2998671) b!7474463))

(assert (= (and b!7474469 (not res!2998672)) b!7474464))

(assert (= (and b!7474464 res!2998673) b!7474467))

(assert (= (or b!7474463 b!7474467) bm!686234))

(assert (= (or b!7474468 b!7474464) bm!686235))

(assert (= (or b!7474470 bm!686235) bm!686233))

(declare-fun m!8069886 () Bool)

(assert (=> bm!686233 m!8069886))

(declare-fun m!8069888 () Bool)

(assert (=> bm!686234 m!8069888))

(declare-fun m!8069890 () Bool)

(assert (=> b!7474466 m!8069890))

(assert (=> b!7474359 d!2299328))

(declare-fun b!7474472 () Bool)

(declare-fun e!4459060 () Bool)

(declare-fun call!686243 () Bool)

(assert (=> b!7474472 (= e!4459060 call!686243)))

(declare-fun b!7474473 () Bool)

(declare-fun e!4459059 () Bool)

(declare-fun e!4459058 () Bool)

(assert (=> b!7474473 (= e!4459059 e!4459058)))

(declare-fun res!2998678 () Bool)

(assert (=> b!7474473 (=> (not res!2998678) (not e!4459058))))

(declare-fun call!686242 () Bool)

(assert (=> b!7474473 (= res!2998678 call!686242)))

(declare-fun b!7474474 () Bool)

(declare-fun e!4459056 () Bool)

(declare-fun e!4459057 () Bool)

(assert (=> b!7474474 (= e!4459056 e!4459057)))

(declare-fun c!1380814 () Bool)

(assert (=> b!7474474 (= c!1380814 (is-Star!19596 rTail!78))))

(declare-fun bm!686236 () Bool)

(declare-fun c!1380813 () Bool)

(declare-fun call!686241 () Bool)

(assert (=> bm!686236 (= call!686241 (validRegex!10110 (ite c!1380814 (reg!19925 rTail!78) (ite c!1380813 (regOne!39705 rTail!78) (regOne!39704 rTail!78)))))))

(declare-fun bm!686237 () Bool)

(assert (=> bm!686237 (= call!686243 (validRegex!10110 (ite c!1380813 (regTwo!39705 rTail!78) (regTwo!39704 rTail!78))))))

(declare-fun d!2299330 () Bool)

(declare-fun res!2998679 () Bool)

(assert (=> d!2299330 (=> res!2998679 e!4459056)))

(assert (=> d!2299330 (= res!2998679 (is-ElementMatch!19596 rTail!78))))

(assert (=> d!2299330 (= (validRegex!10110 rTail!78) e!4459056)))

(declare-fun b!7474475 () Bool)

(declare-fun e!4459055 () Bool)

(assert (=> b!7474475 (= e!4459057 e!4459055)))

(declare-fun res!2998675 () Bool)

(assert (=> b!7474475 (= res!2998675 (not (nullable!8534 (reg!19925 rTail!78))))))

(assert (=> b!7474475 (=> (not res!2998675) (not e!4459055))))

(declare-fun b!7474476 () Bool)

(assert (=> b!7474476 (= e!4459058 call!686243)))

(declare-fun b!7474477 () Bool)

(declare-fun res!2998676 () Bool)

(assert (=> b!7474477 (=> (not res!2998676) (not e!4459060))))

(assert (=> b!7474477 (= res!2998676 call!686242)))

(declare-fun e!4459061 () Bool)

(assert (=> b!7474477 (= e!4459061 e!4459060)))

(declare-fun b!7474478 () Bool)

(declare-fun res!2998677 () Bool)

(assert (=> b!7474478 (=> res!2998677 e!4459059)))

(assert (=> b!7474478 (= res!2998677 (not (is-Concat!28441 rTail!78)))))

(assert (=> b!7474478 (= e!4459061 e!4459059)))

(declare-fun b!7474479 () Bool)

(assert (=> b!7474479 (= e!4459055 call!686241)))

(declare-fun bm!686238 () Bool)

(assert (=> bm!686238 (= call!686242 call!686241)))

(declare-fun b!7474480 () Bool)

(assert (=> b!7474480 (= e!4459057 e!4459061)))

(assert (=> b!7474480 (= c!1380813 (is-Union!19596 rTail!78))))

(assert (= (and d!2299330 (not res!2998679)) b!7474474))

(assert (= (and b!7474474 c!1380814) b!7474475))

(assert (= (and b!7474474 (not c!1380814)) b!7474480))

(assert (= (and b!7474475 res!2998675) b!7474479))

(assert (= (and b!7474480 c!1380813) b!7474477))

(assert (= (and b!7474480 (not c!1380813)) b!7474478))

(assert (= (and b!7474477 res!2998676) b!7474472))

(assert (= (and b!7474478 (not res!2998677)) b!7474473))

(assert (= (and b!7474473 res!2998678) b!7474476))

(assert (= (or b!7474472 b!7474476) bm!686237))

(assert (= (or b!7474477 b!7474473) bm!686238))

(assert (= (or b!7474479 bm!686238) bm!686236))

(declare-fun m!8069892 () Bool)

(assert (=> bm!686236 m!8069892))

(declare-fun m!8069894 () Bool)

(assert (=> bm!686237 m!8069894))

(declare-fun m!8069896 () Bool)

(assert (=> b!7474475 m!8069896))

(assert (=> b!7474350 d!2299330))

(declare-fun bs!1931725 () Bool)

(declare-fun d!2299332 () Bool)

(assert (= bs!1931725 (and d!2299332 b!7474362)))

(declare-fun lambda!463052 () Int)

(assert (=> bs!1931725 (= lambda!463052 lambda!463038)))

(assert (=> bs!1931725 (not (= lambda!463052 lambda!463039))))

(assert (=> d!2299332 true))

(assert (=> d!2299332 true))

(assert (=> d!2299332 true))

(declare-fun lambda!463053 () Int)

(assert (=> bs!1931725 (not (= lambda!463053 lambda!463038))))

(assert (=> bs!1931725 (= lambda!463053 lambda!463039)))

(declare-fun bs!1931726 () Bool)

(assert (= bs!1931726 d!2299332))

(assert (=> bs!1931726 (not (= lambda!463053 lambda!463052))))

(assert (=> d!2299332 true))

(assert (=> d!2299332 true))

(assert (=> d!2299332 true))

(assert (=> d!2299332 (= (Exists!4215 lambda!463052) (Exists!4215 lambda!463053))))

(declare-fun lt!2626923 () Unit!166027)

(declare-fun choose!57770 (Regex!19596 Regex!19596 List!72312) Unit!166027)

(assert (=> d!2299332 (= lt!2626923 (choose!57770 lt!2626890 rTail!78 s!13591))))

(assert (=> d!2299332 (validRegex!10110 lt!2626890)))

(assert (=> d!2299332 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2549 lt!2626890 rTail!78 s!13591) lt!2626923)))

(declare-fun m!8069902 () Bool)

(assert (=> bs!1931726 m!8069902))

(declare-fun m!8069904 () Bool)

(assert (=> bs!1931726 m!8069904))

(declare-fun m!8069906 () Bool)

(assert (=> bs!1931726 m!8069906))

(declare-fun m!8069908 () Bool)

(assert (=> bs!1931726 m!8069908))

(assert (=> b!7474362 d!2299332))

(declare-fun b!7474545 () Bool)

(declare-fun e!4459097 () Bool)

(declare-fun derivativeStep!5593 (Regex!19596 C!39466) Regex!19596)

(declare-fun head!15333 (List!72312) C!39466)

(declare-fun tail!14902 (List!72312) List!72312)

(assert (=> b!7474545 (= e!4459097 (matchR!9360 (derivativeStep!5593 lt!2626890 (head!15333 (_1!37624 (get!25258 lt!2626886)))) (tail!14902 (_1!37624 (get!25258 lt!2626886)))))))

(declare-fun b!7474546 () Bool)

(declare-fun res!2998723 () Bool)

(declare-fun e!4459102 () Bool)

(assert (=> b!7474546 (=> res!2998723 e!4459102)))

(declare-fun isEmpty!41183 (List!72312) Bool)

(assert (=> b!7474546 (= res!2998723 (not (isEmpty!41183 (tail!14902 (_1!37624 (get!25258 lt!2626886))))))))

(declare-fun d!2299336 () Bool)

(declare-fun e!4459098 () Bool)

(assert (=> d!2299336 e!4459098))

(declare-fun c!1380831 () Bool)

(assert (=> d!2299336 (= c!1380831 (is-EmptyExpr!19596 lt!2626890))))

(declare-fun lt!2626926 () Bool)

(assert (=> d!2299336 (= lt!2626926 e!4459097)))

(declare-fun c!1380829 () Bool)

(assert (=> d!2299336 (= c!1380829 (isEmpty!41183 (_1!37624 (get!25258 lt!2626886))))))

(assert (=> d!2299336 (validRegex!10110 lt!2626890)))

(assert (=> d!2299336 (= (matchR!9360 lt!2626890 (_1!37624 (get!25258 lt!2626886))) lt!2626926)))

(declare-fun b!7474547 () Bool)

(declare-fun call!686246 () Bool)

(assert (=> b!7474547 (= e!4459098 (= lt!2626926 call!686246))))

(declare-fun b!7474548 () Bool)

(assert (=> b!7474548 (= e!4459102 (not (= (head!15333 (_1!37624 (get!25258 lt!2626886))) (c!1380803 lt!2626890))))))

(declare-fun b!7474549 () Bool)

(declare-fun res!2998721 () Bool)

(declare-fun e!4459101 () Bool)

(assert (=> b!7474549 (=> (not res!2998721) (not e!4459101))))

(assert (=> b!7474549 (= res!2998721 (not call!686246))))

(declare-fun bm!686241 () Bool)

(assert (=> bm!686241 (= call!686246 (isEmpty!41183 (_1!37624 (get!25258 lt!2626886))))))

(declare-fun b!7474550 () Bool)

(assert (=> b!7474550 (= e!4459097 (nullable!8534 lt!2626890))))

(declare-fun b!7474551 () Bool)

(declare-fun e!4459099 () Bool)

(assert (=> b!7474551 (= e!4459099 e!4459102)))

(declare-fun res!2998719 () Bool)

(assert (=> b!7474551 (=> res!2998719 e!4459102)))

(assert (=> b!7474551 (= res!2998719 call!686246)))

(declare-fun b!7474552 () Bool)

(declare-fun res!2998722 () Bool)

(declare-fun e!4459100 () Bool)

(assert (=> b!7474552 (=> res!2998722 e!4459100)))

(assert (=> b!7474552 (= res!2998722 e!4459101)))

(declare-fun res!2998717 () Bool)

(assert (=> b!7474552 (=> (not res!2998717) (not e!4459101))))

(assert (=> b!7474552 (= res!2998717 lt!2626926)))

(declare-fun b!7474553 () Bool)

(declare-fun e!4459096 () Bool)

(assert (=> b!7474553 (= e!4459096 (not lt!2626926))))

(declare-fun b!7474554 () Bool)

(assert (=> b!7474554 (= e!4459100 e!4459099)))

(declare-fun res!2998720 () Bool)

(assert (=> b!7474554 (=> (not res!2998720) (not e!4459099))))

(assert (=> b!7474554 (= res!2998720 (not lt!2626926))))

(declare-fun b!7474555 () Bool)

(assert (=> b!7474555 (= e!4459098 e!4459096)))

(declare-fun c!1380830 () Bool)

(assert (=> b!7474555 (= c!1380830 (is-EmptyLang!19596 lt!2626890))))

(declare-fun b!7474556 () Bool)

(declare-fun res!2998718 () Bool)

(assert (=> b!7474556 (=> (not res!2998718) (not e!4459101))))

(assert (=> b!7474556 (= res!2998718 (isEmpty!41183 (tail!14902 (_1!37624 (get!25258 lt!2626886)))))))

(declare-fun b!7474557 () Bool)

(declare-fun res!2998716 () Bool)

(assert (=> b!7474557 (=> res!2998716 e!4459100)))

(assert (=> b!7474557 (= res!2998716 (not (is-ElementMatch!19596 lt!2626890)))))

(assert (=> b!7474557 (= e!4459096 e!4459100)))

(declare-fun b!7474558 () Bool)

(assert (=> b!7474558 (= e!4459101 (= (head!15333 (_1!37624 (get!25258 lt!2626886))) (c!1380803 lt!2626890)))))

(assert (= (and d!2299336 c!1380829) b!7474550))

(assert (= (and d!2299336 (not c!1380829)) b!7474545))

(assert (= (and d!2299336 c!1380831) b!7474547))

(assert (= (and d!2299336 (not c!1380831)) b!7474555))

(assert (= (and b!7474555 c!1380830) b!7474553))

(assert (= (and b!7474555 (not c!1380830)) b!7474557))

(assert (= (and b!7474557 (not res!2998716)) b!7474552))

(assert (= (and b!7474552 res!2998717) b!7474549))

(assert (= (and b!7474549 res!2998721) b!7474556))

(assert (= (and b!7474556 res!2998718) b!7474558))

(assert (= (and b!7474552 (not res!2998722)) b!7474554))

(assert (= (and b!7474554 res!2998720) b!7474551))

(assert (= (and b!7474551 (not res!2998719)) b!7474546))

(assert (= (and b!7474546 (not res!2998723)) b!7474548))

(assert (= (or b!7474547 b!7474549 b!7474551) bm!686241))

(declare-fun m!8069910 () Bool)

(assert (=> b!7474546 m!8069910))

(assert (=> b!7474546 m!8069910))

(declare-fun m!8069912 () Bool)

(assert (=> b!7474546 m!8069912))

(declare-fun m!8069914 () Bool)

(assert (=> b!7474548 m!8069914))

(assert (=> b!7474556 m!8069910))

(assert (=> b!7474556 m!8069910))

(assert (=> b!7474556 m!8069912))

(assert (=> b!7474558 m!8069914))

(assert (=> b!7474545 m!8069914))

(assert (=> b!7474545 m!8069914))

(declare-fun m!8069916 () Bool)

(assert (=> b!7474545 m!8069916))

(assert (=> b!7474545 m!8069910))

(assert (=> b!7474545 m!8069916))

(assert (=> b!7474545 m!8069910))

(declare-fun m!8069918 () Bool)

(assert (=> b!7474545 m!8069918))

(declare-fun m!8069920 () Bool)

(assert (=> d!2299336 m!8069920))

(assert (=> d!2299336 m!8069908))

(declare-fun m!8069922 () Bool)

(assert (=> b!7474550 m!8069922))

(assert (=> bm!686241 m!8069920))

(assert (=> b!7474362 d!2299336))

(declare-fun b!7474592 () Bool)

(declare-fun e!4459126 () Option!17153)

(assert (=> b!7474592 (= e!4459126 None!17152)))

(declare-fun b!7474593 () Bool)

(declare-fun e!4459125 () Bool)

(declare-fun lt!2626934 () Option!17153)

(declare-fun ++!17210 (List!72312 List!72312) List!72312)

(assert (=> b!7474593 (= e!4459125 (= (++!17210 (_1!37624 (get!25258 lt!2626934)) (_2!37624 (get!25258 lt!2626934))) s!13591))))

(declare-fun b!7474594 () Bool)

(declare-fun e!4459122 () Option!17153)

(assert (=> b!7474594 (= e!4459122 (Some!17152 (tuple2!68643 Nil!72188 s!13591)))))

(declare-fun b!7474595 () Bool)

(declare-fun e!4459123 () Bool)

(assert (=> b!7474595 (= e!4459123 (not (isDefined!13842 lt!2626934)))))

(declare-fun d!2299338 () Bool)

(assert (=> d!2299338 e!4459123))

(declare-fun res!2998745 () Bool)

(assert (=> d!2299338 (=> res!2998745 e!4459123)))

(assert (=> d!2299338 (= res!2998745 e!4459125)))

(declare-fun res!2998742 () Bool)

(assert (=> d!2299338 (=> (not res!2998742) (not e!4459125))))

(assert (=> d!2299338 (= res!2998742 (isDefined!13842 lt!2626934))))

(assert (=> d!2299338 (= lt!2626934 e!4459122)))

(declare-fun c!1380841 () Bool)

(declare-fun e!4459124 () Bool)

(assert (=> d!2299338 (= c!1380841 e!4459124)))

(declare-fun res!2998744 () Bool)

(assert (=> d!2299338 (=> (not res!2998744) (not e!4459124))))

(assert (=> d!2299338 (= res!2998744 (matchR!9360 lt!2626890 Nil!72188))))

(assert (=> d!2299338 (validRegex!10110 lt!2626890)))

(assert (=> d!2299338 (= (findConcatSeparation!3275 lt!2626890 rTail!78 Nil!72188 s!13591 s!13591) lt!2626934)))

(declare-fun b!7474596 () Bool)

(assert (=> b!7474596 (= e!4459122 e!4459126)))

(declare-fun c!1380840 () Bool)

(assert (=> b!7474596 (= c!1380840 (is-Nil!72188 s!13591))))

(declare-fun b!7474597 () Bool)

(declare-fun res!2998741 () Bool)

(assert (=> b!7474597 (=> (not res!2998741) (not e!4459125))))

(assert (=> b!7474597 (= res!2998741 (matchR!9360 lt!2626890 (_1!37624 (get!25258 lt!2626934))))))

(declare-fun b!7474598 () Bool)

(declare-fun lt!2626933 () Unit!166027)

(declare-fun lt!2626935 () Unit!166027)

(assert (=> b!7474598 (= lt!2626933 lt!2626935)))

(assert (=> b!7474598 (= (++!17210 (++!17210 Nil!72188 (Cons!72188 (h!78636 s!13591) Nil!72188)) (t!386881 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3086 (List!72312 C!39466 List!72312 List!72312) Unit!166027)

(assert (=> b!7474598 (= lt!2626935 (lemmaMoveElementToOtherListKeepsConcatEq!3086 Nil!72188 (h!78636 s!13591) (t!386881 s!13591) s!13591))))

(assert (=> b!7474598 (= e!4459126 (findConcatSeparation!3275 lt!2626890 rTail!78 (++!17210 Nil!72188 (Cons!72188 (h!78636 s!13591) Nil!72188)) (t!386881 s!13591) s!13591))))

(declare-fun b!7474599 () Bool)

(declare-fun res!2998743 () Bool)

(assert (=> b!7474599 (=> (not res!2998743) (not e!4459125))))

(assert (=> b!7474599 (= res!2998743 (matchR!9360 rTail!78 (_2!37624 (get!25258 lt!2626934))))))

(declare-fun b!7474600 () Bool)

(assert (=> b!7474600 (= e!4459124 (matchR!9360 rTail!78 s!13591))))

(assert (= (and d!2299338 res!2998744) b!7474600))

(assert (= (and d!2299338 c!1380841) b!7474594))

(assert (= (and d!2299338 (not c!1380841)) b!7474596))

(assert (= (and b!7474596 c!1380840) b!7474592))

(assert (= (and b!7474596 (not c!1380840)) b!7474598))

(assert (= (and d!2299338 res!2998742) b!7474597))

(assert (= (and b!7474597 res!2998741) b!7474599))

(assert (= (and b!7474599 res!2998743) b!7474593))

(assert (= (and d!2299338 (not res!2998745)) b!7474595))

(declare-fun m!8069924 () Bool)

(assert (=> b!7474599 m!8069924))

(declare-fun m!8069926 () Bool)

(assert (=> b!7474599 m!8069926))

(assert (=> b!7474593 m!8069924))

(declare-fun m!8069928 () Bool)

(assert (=> b!7474593 m!8069928))

(declare-fun m!8069930 () Bool)

(assert (=> b!7474600 m!8069930))

(declare-fun m!8069932 () Bool)

(assert (=> b!7474598 m!8069932))

(assert (=> b!7474598 m!8069932))

(declare-fun m!8069934 () Bool)

(assert (=> b!7474598 m!8069934))

(declare-fun m!8069936 () Bool)

(assert (=> b!7474598 m!8069936))

(assert (=> b!7474598 m!8069932))

(declare-fun m!8069938 () Bool)

(assert (=> b!7474598 m!8069938))

(assert (=> b!7474597 m!8069924))

(declare-fun m!8069940 () Bool)

(assert (=> b!7474597 m!8069940))

(declare-fun m!8069942 () Bool)

(assert (=> b!7474595 m!8069942))

(assert (=> d!2299338 m!8069942))

(declare-fun m!8069944 () Bool)

(assert (=> d!2299338 m!8069944))

(assert (=> d!2299338 m!8069908))

(assert (=> b!7474362 d!2299338))

(declare-fun d!2299340 () Bool)

(declare-fun isEmpty!41184 (Option!17153) Bool)

(assert (=> d!2299340 (= (isDefined!13842 lt!2626886) (not (isEmpty!41184 lt!2626886)))))

(declare-fun bs!1931730 () Bool)

(assert (= bs!1931730 d!2299340))

(declare-fun m!8069946 () Bool)

(assert (=> bs!1931730 m!8069946))

(assert (=> b!7474362 d!2299340))

(declare-fun d!2299342 () Bool)

(assert (=> d!2299342 (= (get!25258 lt!2626886) (v!54281 lt!2626886))))

(assert (=> b!7474362 d!2299342))

(declare-fun bs!1931731 () Bool)

(declare-fun d!2299344 () Bool)

(assert (= bs!1931731 (and d!2299344 b!7474362)))

(declare-fun lambda!463062 () Int)

(assert (=> bs!1931731 (= lambda!463062 lambda!463038)))

(assert (=> bs!1931731 (not (= lambda!463062 lambda!463039))))

(declare-fun bs!1931732 () Bool)

(assert (= bs!1931732 (and d!2299344 d!2299332)))

(assert (=> bs!1931732 (= lambda!463062 lambda!463052)))

(assert (=> bs!1931732 (not (= lambda!463062 lambda!463053))))

(assert (=> d!2299344 true))

(assert (=> d!2299344 true))

(assert (=> d!2299344 true))

(assert (=> d!2299344 (= (isDefined!13842 (findConcatSeparation!3275 lt!2626890 rTail!78 Nil!72188 s!13591 s!13591)) (Exists!4215 lambda!463062))))

(declare-fun lt!2626938 () Unit!166027)

(declare-fun choose!57771 (Regex!19596 Regex!19596 List!72312) Unit!166027)

(assert (=> d!2299344 (= lt!2626938 (choose!57771 lt!2626890 rTail!78 s!13591))))

(assert (=> d!2299344 (validRegex!10110 lt!2626890)))

(assert (=> d!2299344 (= (lemmaFindConcatSeparationEquivalentToExists!3033 lt!2626890 rTail!78 s!13591) lt!2626938)))

(declare-fun bs!1931733 () Bool)

(assert (= bs!1931733 d!2299344))

(assert (=> bs!1931733 m!8069818))

(declare-fun m!8069956 () Bool)

(assert (=> bs!1931733 m!8069956))

(declare-fun m!8069958 () Bool)

(assert (=> bs!1931733 m!8069958))

(assert (=> bs!1931733 m!8069818))

(declare-fun m!8069960 () Bool)

(assert (=> bs!1931733 m!8069960))

(assert (=> bs!1931733 m!8069908))

(assert (=> b!7474362 d!2299344))

(declare-fun d!2299348 () Bool)

(declare-fun choose!57772 (Int) Bool)

(assert (=> d!2299348 (= (Exists!4215 lambda!463038) (choose!57772 lambda!463038))))

(declare-fun bs!1931734 () Bool)

(assert (= bs!1931734 d!2299348))

(declare-fun m!8069962 () Bool)

(assert (=> bs!1931734 m!8069962))

(assert (=> b!7474362 d!2299348))

(declare-fun d!2299350 () Bool)

(assert (=> d!2299350 (= (Exists!4215 lambda!463039) (choose!57772 lambda!463039))))

(declare-fun bs!1931735 () Bool)

(assert (= bs!1931735 d!2299350))

(declare-fun m!8069964 () Bool)

(assert (=> bs!1931735 m!8069964))

(assert (=> b!7474362 d!2299350))

(declare-fun d!2299352 () Bool)

(assert (=> d!2299352 (= (matchR!9360 lt!2626888 s!13591) (matchRSpec!4275 lt!2626888 s!13591))))

(declare-fun lt!2626943 () Unit!166027)

(declare-fun choose!57773 (Regex!19596 List!72312) Unit!166027)

(assert (=> d!2299352 (= lt!2626943 (choose!57773 lt!2626888 s!13591))))

(assert (=> d!2299352 (validRegex!10110 lt!2626888)))

(assert (=> d!2299352 (= (mainMatchTheorem!4269 lt!2626888 s!13591) lt!2626943)))

(declare-fun bs!1931736 () Bool)

(assert (= bs!1931736 d!2299352))

(assert (=> bs!1931736 m!8069834))

(assert (=> bs!1931736 m!8069836))

(declare-fun m!8069966 () Bool)

(assert (=> bs!1931736 m!8069966))

(declare-fun m!8069968 () Bool)

(assert (=> bs!1931736 m!8069968))

(assert (=> b!7474353 d!2299352))

(declare-fun bs!1931738 () Bool)

(declare-fun b!7474679 () Bool)

(assert (= bs!1931738 (and b!7474679 d!2299344)))

(declare-fun lambda!463067 () Int)

(assert (=> bs!1931738 (not (= lambda!463067 lambda!463062))))

(declare-fun bs!1931739 () Bool)

(assert (= bs!1931739 (and b!7474679 b!7474362)))

(assert (=> bs!1931739 (not (= lambda!463067 lambda!463039))))

(declare-fun bs!1931740 () Bool)

(assert (= bs!1931740 (and b!7474679 d!2299332)))

(assert (=> bs!1931740 (not (= lambda!463067 lambda!463052))))

(assert (=> bs!1931740 (not (= lambda!463067 lambda!463053))))

(assert (=> bs!1931739 (not (= lambda!463067 lambda!463038))))

(assert (=> b!7474679 true))

(assert (=> b!7474679 true))

(declare-fun bs!1931741 () Bool)

(declare-fun b!7474683 () Bool)

(assert (= bs!1931741 (and b!7474683 d!2299344)))

(declare-fun lambda!463068 () Int)

(assert (=> bs!1931741 (not (= lambda!463068 lambda!463062))))

(declare-fun bs!1931742 () Bool)

(assert (= bs!1931742 (and b!7474683 b!7474362)))

(assert (=> bs!1931742 (= (and (= (regOne!39704 lt!2626888) lt!2626890) (= (regTwo!39704 lt!2626888) rTail!78)) (= lambda!463068 lambda!463039))))

(declare-fun bs!1931743 () Bool)

(assert (= bs!1931743 (and b!7474683 d!2299332)))

(assert (=> bs!1931743 (not (= lambda!463068 lambda!463052))))

(declare-fun bs!1931744 () Bool)

(assert (= bs!1931744 (and b!7474683 b!7474679)))

(assert (=> bs!1931744 (not (= lambda!463068 lambda!463067))))

(assert (=> bs!1931743 (= (and (= (regOne!39704 lt!2626888) lt!2626890) (= (regTwo!39704 lt!2626888) rTail!78)) (= lambda!463068 lambda!463053))))

(assert (=> bs!1931742 (not (= lambda!463068 lambda!463038))))

(assert (=> b!7474683 true))

(assert (=> b!7474683 true))

(declare-fun e!4459168 () Bool)

(declare-fun call!686260 () Bool)

(assert (=> b!7474679 (= e!4459168 call!686260)))

(declare-fun b!7474680 () Bool)

(declare-fun e!4459170 () Bool)

(declare-fun e!4459171 () Bool)

(assert (=> b!7474680 (= e!4459170 e!4459171)))

(declare-fun res!2998792 () Bool)

(assert (=> b!7474680 (= res!2998792 (not (is-EmptyLang!19596 lt!2626888)))))

(assert (=> b!7474680 (=> (not res!2998792) (not e!4459171))))

(declare-fun bm!686255 () Bool)

(declare-fun call!686261 () Bool)

(assert (=> bm!686255 (= call!686261 (isEmpty!41183 s!13591))))

(declare-fun b!7474681 () Bool)

(declare-fun c!1380862 () Bool)

(assert (=> b!7474681 (= c!1380862 (is-Union!19596 lt!2626888))))

(declare-fun e!4459169 () Bool)

(declare-fun e!4459174 () Bool)

(assert (=> b!7474681 (= e!4459169 e!4459174)))

(declare-fun d!2299354 () Bool)

(declare-fun c!1380861 () Bool)

(assert (=> d!2299354 (= c!1380861 (is-EmptyExpr!19596 lt!2626888))))

(assert (=> d!2299354 (= (matchRSpec!4275 lt!2626888 s!13591) e!4459170)))

(declare-fun b!7474682 () Bool)

(declare-fun e!4459172 () Bool)

(assert (=> b!7474682 (= e!4459172 (matchRSpec!4275 (regTwo!39705 lt!2626888) s!13591))))

(declare-fun e!4459173 () Bool)

(assert (=> b!7474683 (= e!4459173 call!686260)))

(declare-fun b!7474684 () Bool)

(declare-fun res!2998791 () Bool)

(assert (=> b!7474684 (=> res!2998791 e!4459168)))

(assert (=> b!7474684 (= res!2998791 call!686261)))

(assert (=> b!7474684 (= e!4459173 e!4459168)))

(declare-fun b!7474685 () Bool)

(declare-fun c!1380860 () Bool)

(assert (=> b!7474685 (= c!1380860 (is-ElementMatch!19596 lt!2626888))))

(assert (=> b!7474685 (= e!4459171 e!4459169)))

(declare-fun b!7474686 () Bool)

(assert (=> b!7474686 (= e!4459170 call!686261)))

(declare-fun b!7474687 () Bool)

(assert (=> b!7474687 (= e!4459169 (= s!13591 (Cons!72188 (c!1380803 lt!2626888) Nil!72188)))))

(declare-fun bm!686256 () Bool)

(declare-fun c!1380859 () Bool)

(assert (=> bm!686256 (= call!686260 (Exists!4215 (ite c!1380859 lambda!463067 lambda!463068)))))

(declare-fun b!7474688 () Bool)

(assert (=> b!7474688 (= e!4459174 e!4459172)))

(declare-fun res!2998790 () Bool)

(assert (=> b!7474688 (= res!2998790 (matchRSpec!4275 (regOne!39705 lt!2626888) s!13591))))

(assert (=> b!7474688 (=> res!2998790 e!4459172)))

(declare-fun b!7474689 () Bool)

(assert (=> b!7474689 (= e!4459174 e!4459173)))

(assert (=> b!7474689 (= c!1380859 (is-Star!19596 lt!2626888))))

(assert (= (and d!2299354 c!1380861) b!7474686))

(assert (= (and d!2299354 (not c!1380861)) b!7474680))

(assert (= (and b!7474680 res!2998792) b!7474685))

(assert (= (and b!7474685 c!1380860) b!7474687))

(assert (= (and b!7474685 (not c!1380860)) b!7474681))

(assert (= (and b!7474681 c!1380862) b!7474688))

(assert (= (and b!7474681 (not c!1380862)) b!7474689))

(assert (= (and b!7474688 (not res!2998790)) b!7474682))

(assert (= (and b!7474689 c!1380859) b!7474684))

(assert (= (and b!7474689 (not c!1380859)) b!7474683))

(assert (= (and b!7474684 (not res!2998791)) b!7474679))

(assert (= (or b!7474679 b!7474683) bm!686256))

(assert (= (or b!7474686 b!7474684) bm!686255))

(declare-fun m!8069986 () Bool)

(assert (=> bm!686255 m!8069986))

(declare-fun m!8069988 () Bool)

(assert (=> b!7474682 m!8069988))

(declare-fun m!8069990 () Bool)

(assert (=> bm!686256 m!8069990))

(declare-fun m!8069992 () Bool)

(assert (=> b!7474688 m!8069992))

(assert (=> b!7474353 d!2299354))

(declare-fun b!7474701 () Bool)

(declare-fun e!4459183 () Bool)

(assert (=> b!7474701 (= e!4459183 (matchR!9360 (derivativeStep!5593 lt!2626888 (head!15333 s!13591)) (tail!14902 s!13591)))))

(declare-fun b!7474702 () Bool)

(declare-fun res!2998803 () Bool)

(declare-fun e!4459188 () Bool)

(assert (=> b!7474702 (=> res!2998803 e!4459188)))

(assert (=> b!7474702 (= res!2998803 (not (isEmpty!41183 (tail!14902 s!13591))))))

(declare-fun d!2299360 () Bool)

(declare-fun e!4459184 () Bool)

(assert (=> d!2299360 e!4459184))

(declare-fun c!1380869 () Bool)

(assert (=> d!2299360 (= c!1380869 (is-EmptyExpr!19596 lt!2626888))))

(declare-fun lt!2626946 () Bool)

(assert (=> d!2299360 (= lt!2626946 e!4459183)))

(declare-fun c!1380867 () Bool)

(assert (=> d!2299360 (= c!1380867 (isEmpty!41183 s!13591))))

(assert (=> d!2299360 (validRegex!10110 lt!2626888)))

(assert (=> d!2299360 (= (matchR!9360 lt!2626888 s!13591) lt!2626946)))

(declare-fun b!7474703 () Bool)

(declare-fun call!686264 () Bool)

(assert (=> b!7474703 (= e!4459184 (= lt!2626946 call!686264))))

(declare-fun b!7474704 () Bool)

(assert (=> b!7474704 (= e!4459188 (not (= (head!15333 s!13591) (c!1380803 lt!2626888))))))

(declare-fun b!7474705 () Bool)

(declare-fun res!2998801 () Bool)

(declare-fun e!4459187 () Bool)

(assert (=> b!7474705 (=> (not res!2998801) (not e!4459187))))

(assert (=> b!7474705 (= res!2998801 (not call!686264))))

(declare-fun bm!686259 () Bool)

(assert (=> bm!686259 (= call!686264 (isEmpty!41183 s!13591))))

(declare-fun b!7474706 () Bool)

(assert (=> b!7474706 (= e!4459183 (nullable!8534 lt!2626888))))

(declare-fun b!7474707 () Bool)

(declare-fun e!4459185 () Bool)

(assert (=> b!7474707 (= e!4459185 e!4459188)))

(declare-fun res!2998799 () Bool)

(assert (=> b!7474707 (=> res!2998799 e!4459188)))

(assert (=> b!7474707 (= res!2998799 call!686264)))

(declare-fun b!7474708 () Bool)

(declare-fun res!2998802 () Bool)

(declare-fun e!4459186 () Bool)

(assert (=> b!7474708 (=> res!2998802 e!4459186)))

(assert (=> b!7474708 (= res!2998802 e!4459187)))

(declare-fun res!2998797 () Bool)

(assert (=> b!7474708 (=> (not res!2998797) (not e!4459187))))

(assert (=> b!7474708 (= res!2998797 lt!2626946)))

(declare-fun b!7474709 () Bool)

(declare-fun e!4459182 () Bool)

(assert (=> b!7474709 (= e!4459182 (not lt!2626946))))

(declare-fun b!7474710 () Bool)

(assert (=> b!7474710 (= e!4459186 e!4459185)))

(declare-fun res!2998800 () Bool)

(assert (=> b!7474710 (=> (not res!2998800) (not e!4459185))))

(assert (=> b!7474710 (= res!2998800 (not lt!2626946))))

(declare-fun b!7474711 () Bool)

(assert (=> b!7474711 (= e!4459184 e!4459182)))

(declare-fun c!1380868 () Bool)

(assert (=> b!7474711 (= c!1380868 (is-EmptyLang!19596 lt!2626888))))

(declare-fun b!7474712 () Bool)

(declare-fun res!2998798 () Bool)

(assert (=> b!7474712 (=> (not res!2998798) (not e!4459187))))

(assert (=> b!7474712 (= res!2998798 (isEmpty!41183 (tail!14902 s!13591)))))

(declare-fun b!7474713 () Bool)

(declare-fun res!2998796 () Bool)

(assert (=> b!7474713 (=> res!2998796 e!4459186)))

(assert (=> b!7474713 (= res!2998796 (not (is-ElementMatch!19596 lt!2626888)))))

(assert (=> b!7474713 (= e!4459182 e!4459186)))

(declare-fun b!7474714 () Bool)

(assert (=> b!7474714 (= e!4459187 (= (head!15333 s!13591) (c!1380803 lt!2626888)))))

(assert (= (and d!2299360 c!1380867) b!7474706))

(assert (= (and d!2299360 (not c!1380867)) b!7474701))

(assert (= (and d!2299360 c!1380869) b!7474703))

(assert (= (and d!2299360 (not c!1380869)) b!7474711))

(assert (= (and b!7474711 c!1380868) b!7474709))

(assert (= (and b!7474711 (not c!1380868)) b!7474713))

(assert (= (and b!7474713 (not res!2998796)) b!7474708))

(assert (= (and b!7474708 res!2998797) b!7474705))

(assert (= (and b!7474705 res!2998801) b!7474712))

(assert (= (and b!7474712 res!2998798) b!7474714))

(assert (= (and b!7474708 (not res!2998802)) b!7474710))

(assert (= (and b!7474710 res!2998800) b!7474707))

(assert (= (and b!7474707 (not res!2998799)) b!7474702))

(assert (= (and b!7474702 (not res!2998803)) b!7474704))

(assert (= (or b!7474703 b!7474705 b!7474707) bm!686259))

(declare-fun m!8069994 () Bool)

(assert (=> b!7474702 m!8069994))

(assert (=> b!7474702 m!8069994))

(declare-fun m!8069996 () Bool)

(assert (=> b!7474702 m!8069996))

(declare-fun m!8069998 () Bool)

(assert (=> b!7474704 m!8069998))

(assert (=> b!7474712 m!8069994))

(assert (=> b!7474712 m!8069994))

(assert (=> b!7474712 m!8069996))

(assert (=> b!7474714 m!8069998))

(assert (=> b!7474701 m!8069998))

(assert (=> b!7474701 m!8069998))

(declare-fun m!8070000 () Bool)

(assert (=> b!7474701 m!8070000))

(assert (=> b!7474701 m!8069994))

(assert (=> b!7474701 m!8070000))

(assert (=> b!7474701 m!8069994))

(declare-fun m!8070002 () Bool)

(assert (=> b!7474701 m!8070002))

(assert (=> d!2299360 m!8069986))

(assert (=> d!2299360 m!8069968))

(declare-fun m!8070004 () Bool)

(assert (=> b!7474706 m!8070004))

(assert (=> bm!686259 m!8069986))

(assert (=> b!7474353 d!2299360))

(declare-fun bs!1931748 () Bool)

(declare-fun b!7474715 () Bool)

(assert (= bs!1931748 (and b!7474715 d!2299344)))

(declare-fun lambda!463071 () Int)

(assert (=> bs!1931748 (not (= lambda!463071 lambda!463062))))

(declare-fun bs!1931750 () Bool)

(assert (= bs!1931750 (and b!7474715 b!7474683)))

(assert (=> bs!1931750 (not (= lambda!463071 lambda!463068))))

(declare-fun bs!1931751 () Bool)

(assert (= bs!1931751 (and b!7474715 b!7474362)))

(assert (=> bs!1931751 (not (= lambda!463071 lambda!463039))))

(declare-fun bs!1931753 () Bool)

(assert (= bs!1931753 (and b!7474715 d!2299332)))

(assert (=> bs!1931753 (not (= lambda!463071 lambda!463052))))

(declare-fun bs!1931754 () Bool)

(assert (= bs!1931754 (and b!7474715 b!7474679)))

(assert (=> bs!1931754 (= (and (= (reg!19925 lt!2626887) (reg!19925 lt!2626888)) (= lt!2626887 lt!2626888)) (= lambda!463071 lambda!463067))))

(assert (=> bs!1931753 (not (= lambda!463071 lambda!463053))))

(assert (=> bs!1931751 (not (= lambda!463071 lambda!463038))))

(assert (=> b!7474715 true))

(assert (=> b!7474715 true))

(declare-fun bs!1931757 () Bool)

(declare-fun b!7474719 () Bool)

(assert (= bs!1931757 (and b!7474719 d!2299344)))

(declare-fun lambda!463072 () Int)

(assert (=> bs!1931757 (not (= lambda!463072 lambda!463062))))

(declare-fun bs!1931758 () Bool)

(assert (= bs!1931758 (and b!7474719 b!7474683)))

(assert (=> bs!1931758 (= (and (= (regOne!39704 lt!2626887) (regOne!39704 lt!2626888)) (= (regTwo!39704 lt!2626887) (regTwo!39704 lt!2626888))) (= lambda!463072 lambda!463068))))

(declare-fun bs!1931759 () Bool)

(assert (= bs!1931759 (and b!7474719 b!7474362)))

(assert (=> bs!1931759 (= (and (= (regOne!39704 lt!2626887) lt!2626890) (= (regTwo!39704 lt!2626887) rTail!78)) (= lambda!463072 lambda!463039))))

(declare-fun bs!1931760 () Bool)

(assert (= bs!1931760 (and b!7474719 d!2299332)))

(assert (=> bs!1931760 (not (= lambda!463072 lambda!463052))))

(declare-fun bs!1931761 () Bool)

(assert (= bs!1931761 (and b!7474719 b!7474679)))

(assert (=> bs!1931761 (not (= lambda!463072 lambda!463067))))

(declare-fun bs!1931762 () Bool)

(assert (= bs!1931762 (and b!7474719 b!7474715)))

(assert (=> bs!1931762 (not (= lambda!463072 lambda!463071))))

(assert (=> bs!1931760 (= (and (= (regOne!39704 lt!2626887) lt!2626890) (= (regTwo!39704 lt!2626887) rTail!78)) (= lambda!463072 lambda!463053))))

(assert (=> bs!1931759 (not (= lambda!463072 lambda!463038))))

(assert (=> b!7474719 true))

(assert (=> b!7474719 true))

(declare-fun e!4459189 () Bool)

(declare-fun call!686265 () Bool)

(assert (=> b!7474715 (= e!4459189 call!686265)))

(declare-fun b!7474716 () Bool)

(declare-fun e!4459191 () Bool)

(declare-fun e!4459192 () Bool)

(assert (=> b!7474716 (= e!4459191 e!4459192)))

(declare-fun res!2998806 () Bool)

(assert (=> b!7474716 (= res!2998806 (not (is-EmptyLang!19596 lt!2626887)))))

(assert (=> b!7474716 (=> (not res!2998806) (not e!4459192))))

(declare-fun bm!686260 () Bool)

(declare-fun call!686266 () Bool)

(assert (=> bm!686260 (= call!686266 (isEmpty!41183 s!13591))))

(declare-fun b!7474717 () Bool)

(declare-fun c!1380873 () Bool)

(assert (=> b!7474717 (= c!1380873 (is-Union!19596 lt!2626887))))

(declare-fun e!4459190 () Bool)

(declare-fun e!4459195 () Bool)

(assert (=> b!7474717 (= e!4459190 e!4459195)))

(declare-fun d!2299362 () Bool)

(declare-fun c!1380872 () Bool)

(assert (=> d!2299362 (= c!1380872 (is-EmptyExpr!19596 lt!2626887))))

(assert (=> d!2299362 (= (matchRSpec!4275 lt!2626887 s!13591) e!4459191)))

(declare-fun b!7474718 () Bool)

(declare-fun e!4459193 () Bool)

(assert (=> b!7474718 (= e!4459193 (matchRSpec!4275 (regTwo!39705 lt!2626887) s!13591))))

(declare-fun e!4459194 () Bool)

(assert (=> b!7474719 (= e!4459194 call!686265)))

(declare-fun b!7474720 () Bool)

(declare-fun res!2998805 () Bool)

(assert (=> b!7474720 (=> res!2998805 e!4459189)))

(assert (=> b!7474720 (= res!2998805 call!686266)))

(assert (=> b!7474720 (= e!4459194 e!4459189)))

(declare-fun b!7474721 () Bool)

(declare-fun c!1380871 () Bool)

(assert (=> b!7474721 (= c!1380871 (is-ElementMatch!19596 lt!2626887))))

(assert (=> b!7474721 (= e!4459192 e!4459190)))

(declare-fun b!7474722 () Bool)

(assert (=> b!7474722 (= e!4459191 call!686266)))

(declare-fun b!7474723 () Bool)

(assert (=> b!7474723 (= e!4459190 (= s!13591 (Cons!72188 (c!1380803 lt!2626887) Nil!72188)))))

(declare-fun c!1380870 () Bool)

(declare-fun bm!686261 () Bool)

(assert (=> bm!686261 (= call!686265 (Exists!4215 (ite c!1380870 lambda!463071 lambda!463072)))))

(declare-fun b!7474724 () Bool)

(assert (=> b!7474724 (= e!4459195 e!4459193)))

(declare-fun res!2998804 () Bool)

(assert (=> b!7474724 (= res!2998804 (matchRSpec!4275 (regOne!39705 lt!2626887) s!13591))))

(assert (=> b!7474724 (=> res!2998804 e!4459193)))

(declare-fun b!7474725 () Bool)

(assert (=> b!7474725 (= e!4459195 e!4459194)))

(assert (=> b!7474725 (= c!1380870 (is-Star!19596 lt!2626887))))

(assert (= (and d!2299362 c!1380872) b!7474722))

(assert (= (and d!2299362 (not c!1380872)) b!7474716))

(assert (= (and b!7474716 res!2998806) b!7474721))

(assert (= (and b!7474721 c!1380871) b!7474723))

(assert (= (and b!7474721 (not c!1380871)) b!7474717))

(assert (= (and b!7474717 c!1380873) b!7474724))

(assert (= (and b!7474717 (not c!1380873)) b!7474725))

(assert (= (and b!7474724 (not res!2998804)) b!7474718))

(assert (= (and b!7474725 c!1380870) b!7474720))

(assert (= (and b!7474725 (not c!1380870)) b!7474719))

(assert (= (and b!7474720 (not res!2998805)) b!7474715))

(assert (= (or b!7474715 b!7474719) bm!686261))

(assert (= (or b!7474722 b!7474720) bm!686260))

(assert (=> bm!686260 m!8069986))

(declare-fun m!8070012 () Bool)

(assert (=> b!7474718 m!8070012))

(declare-fun m!8070014 () Bool)

(assert (=> bm!686261 m!8070014))

(declare-fun m!8070016 () Bool)

(assert (=> b!7474724 m!8070016))

(assert (=> b!7474353 d!2299362))

(declare-fun d!2299366 () Bool)

(assert (=> d!2299366 (= (matchR!9360 lt!2626887 s!13591) (matchRSpec!4275 lt!2626887 s!13591))))

(declare-fun lt!2626948 () Unit!166027)

(assert (=> d!2299366 (= lt!2626948 (choose!57773 lt!2626887 s!13591))))

(assert (=> d!2299366 (validRegex!10110 lt!2626887)))

(assert (=> d!2299366 (= (mainMatchTheorem!4269 lt!2626887 s!13591) lt!2626948)))

(declare-fun bs!1931763 () Bool)

(assert (= bs!1931763 d!2299366))

(assert (=> bs!1931763 m!8069840))

(assert (=> bs!1931763 m!8069838))

(declare-fun m!8070018 () Bool)

(assert (=> bs!1931763 m!8070018))

(declare-fun m!8070020 () Bool)

(assert (=> bs!1931763 m!8070020))

(assert (=> b!7474353 d!2299366))

(declare-fun b!7474740 () Bool)

(declare-fun e!4459204 () Bool)

(assert (=> b!7474740 (= e!4459204 (matchR!9360 (derivativeStep!5593 lt!2626887 (head!15333 s!13591)) (tail!14902 s!13591)))))

(declare-fun b!7474741 () Bool)

(declare-fun res!2998822 () Bool)

(declare-fun e!4459209 () Bool)

(assert (=> b!7474741 (=> res!2998822 e!4459209)))

(assert (=> b!7474741 (= res!2998822 (not (isEmpty!41183 (tail!14902 s!13591))))))

(declare-fun d!2299368 () Bool)

(declare-fun e!4459205 () Bool)

(assert (=> d!2299368 e!4459205))

(declare-fun c!1380879 () Bool)

(assert (=> d!2299368 (= c!1380879 (is-EmptyExpr!19596 lt!2626887))))

(declare-fun lt!2626949 () Bool)

(assert (=> d!2299368 (= lt!2626949 e!4459204)))

(declare-fun c!1380877 () Bool)

(assert (=> d!2299368 (= c!1380877 (isEmpty!41183 s!13591))))

(assert (=> d!2299368 (validRegex!10110 lt!2626887)))

(assert (=> d!2299368 (= (matchR!9360 lt!2626887 s!13591) lt!2626949)))

(declare-fun b!7474742 () Bool)

(declare-fun call!686268 () Bool)

(assert (=> b!7474742 (= e!4459205 (= lt!2626949 call!686268))))

(declare-fun b!7474743 () Bool)

(assert (=> b!7474743 (= e!4459209 (not (= (head!15333 s!13591) (c!1380803 lt!2626887))))))

(declare-fun b!7474744 () Bool)

(declare-fun res!2998820 () Bool)

(declare-fun e!4459208 () Bool)

(assert (=> b!7474744 (=> (not res!2998820) (not e!4459208))))

(assert (=> b!7474744 (= res!2998820 (not call!686268))))

(declare-fun bm!686263 () Bool)

(assert (=> bm!686263 (= call!686268 (isEmpty!41183 s!13591))))

(declare-fun b!7474745 () Bool)

(assert (=> b!7474745 (= e!4459204 (nullable!8534 lt!2626887))))

(declare-fun b!7474746 () Bool)

(declare-fun e!4459206 () Bool)

(assert (=> b!7474746 (= e!4459206 e!4459209)))

(declare-fun res!2998818 () Bool)

(assert (=> b!7474746 (=> res!2998818 e!4459209)))

(assert (=> b!7474746 (= res!2998818 call!686268)))

(declare-fun b!7474747 () Bool)

(declare-fun res!2998821 () Bool)

(declare-fun e!4459207 () Bool)

(assert (=> b!7474747 (=> res!2998821 e!4459207)))

(assert (=> b!7474747 (= res!2998821 e!4459208)))

(declare-fun res!2998816 () Bool)

(assert (=> b!7474747 (=> (not res!2998816) (not e!4459208))))

(assert (=> b!7474747 (= res!2998816 lt!2626949)))

(declare-fun b!7474748 () Bool)

(declare-fun e!4459203 () Bool)

(assert (=> b!7474748 (= e!4459203 (not lt!2626949))))

(declare-fun b!7474749 () Bool)

(assert (=> b!7474749 (= e!4459207 e!4459206)))

(declare-fun res!2998819 () Bool)

(assert (=> b!7474749 (=> (not res!2998819) (not e!4459206))))

(assert (=> b!7474749 (= res!2998819 (not lt!2626949))))

(declare-fun b!7474750 () Bool)

(assert (=> b!7474750 (= e!4459205 e!4459203)))

(declare-fun c!1380878 () Bool)

(assert (=> b!7474750 (= c!1380878 (is-EmptyLang!19596 lt!2626887))))

(declare-fun b!7474751 () Bool)

(declare-fun res!2998817 () Bool)

(assert (=> b!7474751 (=> (not res!2998817) (not e!4459208))))

(assert (=> b!7474751 (= res!2998817 (isEmpty!41183 (tail!14902 s!13591)))))

(declare-fun b!7474752 () Bool)

(declare-fun res!2998815 () Bool)

(assert (=> b!7474752 (=> res!2998815 e!4459207)))

(assert (=> b!7474752 (= res!2998815 (not (is-ElementMatch!19596 lt!2626887)))))

(assert (=> b!7474752 (= e!4459203 e!4459207)))

(declare-fun b!7474753 () Bool)

(assert (=> b!7474753 (= e!4459208 (= (head!15333 s!13591) (c!1380803 lt!2626887)))))

(assert (= (and d!2299368 c!1380877) b!7474745))

(assert (= (and d!2299368 (not c!1380877)) b!7474740))

(assert (= (and d!2299368 c!1380879) b!7474742))

(assert (= (and d!2299368 (not c!1380879)) b!7474750))

(assert (= (and b!7474750 c!1380878) b!7474748))

(assert (= (and b!7474750 (not c!1380878)) b!7474752))

(assert (= (and b!7474752 (not res!2998815)) b!7474747))

(assert (= (and b!7474747 res!2998816) b!7474744))

(assert (= (and b!7474744 res!2998820) b!7474751))

(assert (= (and b!7474751 res!2998817) b!7474753))

(assert (= (and b!7474747 (not res!2998821)) b!7474749))

(assert (= (and b!7474749 res!2998819) b!7474746))

(assert (= (and b!7474746 (not res!2998818)) b!7474741))

(assert (= (and b!7474741 (not res!2998822)) b!7474743))

(assert (= (or b!7474742 b!7474744 b!7474746) bm!686263))

(assert (=> b!7474741 m!8069994))

(assert (=> b!7474741 m!8069994))

(assert (=> b!7474741 m!8069996))

(assert (=> b!7474743 m!8069998))

(assert (=> b!7474751 m!8069994))

(assert (=> b!7474751 m!8069994))

(assert (=> b!7474751 m!8069996))

(assert (=> b!7474753 m!8069998))

(assert (=> b!7474740 m!8069998))

(assert (=> b!7474740 m!8069998))

(declare-fun m!8070022 () Bool)

(assert (=> b!7474740 m!8070022))

(assert (=> b!7474740 m!8069994))

(assert (=> b!7474740 m!8070022))

(assert (=> b!7474740 m!8069994))

(declare-fun m!8070024 () Bool)

(assert (=> b!7474740 m!8070024))

(assert (=> d!2299368 m!8069986))

(assert (=> d!2299368 m!8070020))

(declare-fun m!8070026 () Bool)

(assert (=> b!7474745 m!8070026))

(assert (=> bm!686263 m!8069986))

(assert (=> b!7474353 d!2299368))

(declare-fun e!4459212 () Bool)

(assert (=> b!7474348 (= tp!2167625 e!4459212)))

(declare-fun b!7474764 () Bool)

(assert (=> b!7474764 (= e!4459212 tp_is_empty!49481)))

(declare-fun b!7474767 () Bool)

(declare-fun tp!2167686 () Bool)

(declare-fun tp!2167687 () Bool)

(assert (=> b!7474767 (= e!4459212 (and tp!2167686 tp!2167687))))

(declare-fun b!7474766 () Bool)

(declare-fun tp!2167689 () Bool)

(assert (=> b!7474766 (= e!4459212 tp!2167689)))

(declare-fun b!7474765 () Bool)

(declare-fun tp!2167688 () Bool)

(declare-fun tp!2167690 () Bool)

(assert (=> b!7474765 (= e!4459212 (and tp!2167688 tp!2167690))))

(assert (= (and b!7474348 (is-ElementMatch!19596 (reg!19925 rTail!78))) b!7474764))

(assert (= (and b!7474348 (is-Concat!28441 (reg!19925 rTail!78))) b!7474765))

(assert (= (and b!7474348 (is-Star!19596 (reg!19925 rTail!78))) b!7474766))

(assert (= (and b!7474348 (is-Union!19596 (reg!19925 rTail!78))) b!7474767))

(declare-fun e!4459213 () Bool)

(assert (=> b!7474364 (= tp!2167616 e!4459213)))

(declare-fun b!7474768 () Bool)

(assert (=> b!7474768 (= e!4459213 tp_is_empty!49481)))

(declare-fun b!7474771 () Bool)

(declare-fun tp!2167691 () Bool)

(declare-fun tp!2167692 () Bool)

(assert (=> b!7474771 (= e!4459213 (and tp!2167691 tp!2167692))))

(declare-fun b!7474770 () Bool)

(declare-fun tp!2167694 () Bool)

(assert (=> b!7474770 (= e!4459213 tp!2167694)))

(declare-fun b!7474769 () Bool)

(declare-fun tp!2167693 () Bool)

(declare-fun tp!2167695 () Bool)

(assert (=> b!7474769 (= e!4459213 (and tp!2167693 tp!2167695))))

(assert (= (and b!7474364 (is-ElementMatch!19596 (regOne!39705 rTail!78))) b!7474768))

(assert (= (and b!7474364 (is-Concat!28441 (regOne!39705 rTail!78))) b!7474769))

(assert (= (and b!7474364 (is-Star!19596 (regOne!39705 rTail!78))) b!7474770))

(assert (= (and b!7474364 (is-Union!19596 (regOne!39705 rTail!78))) b!7474771))

(declare-fun e!4459214 () Bool)

(assert (=> b!7474364 (= tp!2167614 e!4459214)))

(declare-fun b!7474772 () Bool)

(assert (=> b!7474772 (= e!4459214 tp_is_empty!49481)))

(declare-fun b!7474775 () Bool)

(declare-fun tp!2167696 () Bool)

(declare-fun tp!2167697 () Bool)

(assert (=> b!7474775 (= e!4459214 (and tp!2167696 tp!2167697))))

(declare-fun b!7474774 () Bool)

(declare-fun tp!2167699 () Bool)

(assert (=> b!7474774 (= e!4459214 tp!2167699)))

(declare-fun b!7474773 () Bool)

(declare-fun tp!2167698 () Bool)

(declare-fun tp!2167700 () Bool)

(assert (=> b!7474773 (= e!4459214 (and tp!2167698 tp!2167700))))

(assert (= (and b!7474364 (is-ElementMatch!19596 (regTwo!39705 rTail!78))) b!7474772))

(assert (= (and b!7474364 (is-Concat!28441 (regTwo!39705 rTail!78))) b!7474773))

(assert (= (and b!7474364 (is-Star!19596 (regTwo!39705 rTail!78))) b!7474774))

(assert (= (and b!7474364 (is-Union!19596 (regTwo!39705 rTail!78))) b!7474775))

(declare-fun e!4459215 () Bool)

(assert (=> b!7474349 (= tp!2167620 e!4459215)))

(declare-fun b!7474776 () Bool)

(assert (=> b!7474776 (= e!4459215 tp_is_empty!49481)))

(declare-fun b!7474779 () Bool)

(declare-fun tp!2167701 () Bool)

(declare-fun tp!2167702 () Bool)

(assert (=> b!7474779 (= e!4459215 (and tp!2167701 tp!2167702))))

(declare-fun b!7474778 () Bool)

(declare-fun tp!2167704 () Bool)

(assert (=> b!7474778 (= e!4459215 tp!2167704)))

(declare-fun b!7474777 () Bool)

(declare-fun tp!2167703 () Bool)

(declare-fun tp!2167705 () Bool)

(assert (=> b!7474777 (= e!4459215 (and tp!2167703 tp!2167705))))

(assert (= (and b!7474349 (is-ElementMatch!19596 (regOne!39704 rTail!78))) b!7474776))

(assert (= (and b!7474349 (is-Concat!28441 (regOne!39704 rTail!78))) b!7474777))

(assert (= (and b!7474349 (is-Star!19596 (regOne!39704 rTail!78))) b!7474778))

(assert (= (and b!7474349 (is-Union!19596 (regOne!39704 rTail!78))) b!7474779))

(declare-fun e!4459216 () Bool)

(assert (=> b!7474349 (= tp!2167618 e!4459216)))

(declare-fun b!7474780 () Bool)

(assert (=> b!7474780 (= e!4459216 tp_is_empty!49481)))

(declare-fun b!7474783 () Bool)

(declare-fun tp!2167706 () Bool)

(declare-fun tp!2167707 () Bool)

(assert (=> b!7474783 (= e!4459216 (and tp!2167706 tp!2167707))))

(declare-fun b!7474782 () Bool)

(declare-fun tp!2167709 () Bool)

(assert (=> b!7474782 (= e!4459216 tp!2167709)))

(declare-fun b!7474781 () Bool)

(declare-fun tp!2167708 () Bool)

(declare-fun tp!2167710 () Bool)

(assert (=> b!7474781 (= e!4459216 (and tp!2167708 tp!2167710))))

(assert (= (and b!7474349 (is-ElementMatch!19596 (regTwo!39704 rTail!78))) b!7474780))

(assert (= (and b!7474349 (is-Concat!28441 (regTwo!39704 rTail!78))) b!7474781))

(assert (= (and b!7474349 (is-Star!19596 (regTwo!39704 rTail!78))) b!7474782))

(assert (= (and b!7474349 (is-Union!19596 (regTwo!39704 rTail!78))) b!7474783))

(declare-fun e!4459217 () Bool)

(assert (=> b!7474354 (= tp!2167613 e!4459217)))

(declare-fun b!7474784 () Bool)

(assert (=> b!7474784 (= e!4459217 tp_is_empty!49481)))

(declare-fun b!7474787 () Bool)

(declare-fun tp!2167711 () Bool)

(declare-fun tp!2167712 () Bool)

(assert (=> b!7474787 (= e!4459217 (and tp!2167711 tp!2167712))))

(declare-fun b!7474786 () Bool)

(declare-fun tp!2167714 () Bool)

(assert (=> b!7474786 (= e!4459217 tp!2167714)))

(declare-fun b!7474785 () Bool)

(declare-fun tp!2167713 () Bool)

(declare-fun tp!2167715 () Bool)

(assert (=> b!7474785 (= e!4459217 (and tp!2167713 tp!2167715))))

(assert (= (and b!7474354 (is-ElementMatch!19596 (regOne!39704 r2!5783))) b!7474784))

(assert (= (and b!7474354 (is-Concat!28441 (regOne!39704 r2!5783))) b!7474785))

(assert (= (and b!7474354 (is-Star!19596 (regOne!39704 r2!5783))) b!7474786))

(assert (= (and b!7474354 (is-Union!19596 (regOne!39704 r2!5783))) b!7474787))

(declare-fun e!4459218 () Bool)

(assert (=> b!7474354 (= tp!2167624 e!4459218)))

(declare-fun b!7474788 () Bool)

(assert (=> b!7474788 (= e!4459218 tp_is_empty!49481)))

(declare-fun b!7474791 () Bool)

(declare-fun tp!2167716 () Bool)

(declare-fun tp!2167717 () Bool)

(assert (=> b!7474791 (= e!4459218 (and tp!2167716 tp!2167717))))

(declare-fun b!7474790 () Bool)

(declare-fun tp!2167719 () Bool)

(assert (=> b!7474790 (= e!4459218 tp!2167719)))

(declare-fun b!7474789 () Bool)

(declare-fun tp!2167718 () Bool)

(declare-fun tp!2167720 () Bool)

(assert (=> b!7474789 (= e!4459218 (and tp!2167718 tp!2167720))))

(assert (= (and b!7474354 (is-ElementMatch!19596 (regTwo!39704 r2!5783))) b!7474788))

(assert (= (and b!7474354 (is-Concat!28441 (regTwo!39704 r2!5783))) b!7474789))

(assert (= (and b!7474354 (is-Star!19596 (regTwo!39704 r2!5783))) b!7474790))

(assert (= (and b!7474354 (is-Union!19596 (regTwo!39704 r2!5783))) b!7474791))

(declare-fun b!7474796 () Bool)

(declare-fun e!4459221 () Bool)

(declare-fun tp!2167723 () Bool)

(assert (=> b!7474796 (= e!4459221 (and tp_is_empty!49481 tp!2167723))))

(assert (=> b!7474360 (= tp!2167627 e!4459221)))

(assert (= (and b!7474360 (is-Cons!72188 (t!386881 s!13591))) b!7474796))

(declare-fun e!4459222 () Bool)

(assert (=> b!7474361 (= tp!2167619 e!4459222)))

(declare-fun b!7474797 () Bool)

(assert (=> b!7474797 (= e!4459222 tp_is_empty!49481)))

(declare-fun b!7474800 () Bool)

(declare-fun tp!2167724 () Bool)

(declare-fun tp!2167725 () Bool)

(assert (=> b!7474800 (= e!4459222 (and tp!2167724 tp!2167725))))

(declare-fun b!7474799 () Bool)

(declare-fun tp!2167727 () Bool)

(assert (=> b!7474799 (= e!4459222 tp!2167727)))

(declare-fun b!7474798 () Bool)

(declare-fun tp!2167726 () Bool)

(declare-fun tp!2167728 () Bool)

(assert (=> b!7474798 (= e!4459222 (and tp!2167726 tp!2167728))))

(assert (= (and b!7474361 (is-ElementMatch!19596 (reg!19925 r1!5845))) b!7474797))

(assert (= (and b!7474361 (is-Concat!28441 (reg!19925 r1!5845))) b!7474798))

(assert (= (and b!7474361 (is-Star!19596 (reg!19925 r1!5845))) b!7474799))

(assert (= (and b!7474361 (is-Union!19596 (reg!19925 r1!5845))) b!7474800))

(declare-fun e!4459223 () Bool)

(assert (=> b!7474351 (= tp!2167622 e!4459223)))

(declare-fun b!7474801 () Bool)

(assert (=> b!7474801 (= e!4459223 tp_is_empty!49481)))

(declare-fun b!7474804 () Bool)

(declare-fun tp!2167729 () Bool)

(declare-fun tp!2167730 () Bool)

(assert (=> b!7474804 (= e!4459223 (and tp!2167729 tp!2167730))))

(declare-fun b!7474803 () Bool)

(declare-fun tp!2167732 () Bool)

(assert (=> b!7474803 (= e!4459223 tp!2167732)))

(declare-fun b!7474802 () Bool)

(declare-fun tp!2167731 () Bool)

(declare-fun tp!2167733 () Bool)

(assert (=> b!7474802 (= e!4459223 (and tp!2167731 tp!2167733))))

(assert (= (and b!7474351 (is-ElementMatch!19596 (reg!19925 r2!5783))) b!7474801))

(assert (= (and b!7474351 (is-Concat!28441 (reg!19925 r2!5783))) b!7474802))

(assert (= (and b!7474351 (is-Star!19596 (reg!19925 r2!5783))) b!7474803))

(assert (= (and b!7474351 (is-Union!19596 (reg!19925 r2!5783))) b!7474804))

(declare-fun e!4459224 () Bool)

(assert (=> b!7474356 (= tp!2167612 e!4459224)))

(declare-fun b!7474805 () Bool)

(assert (=> b!7474805 (= e!4459224 tp_is_empty!49481)))

(declare-fun b!7474808 () Bool)

(declare-fun tp!2167734 () Bool)

(declare-fun tp!2167735 () Bool)

(assert (=> b!7474808 (= e!4459224 (and tp!2167734 tp!2167735))))

(declare-fun b!7474807 () Bool)

(declare-fun tp!2167737 () Bool)

(assert (=> b!7474807 (= e!4459224 tp!2167737)))

(declare-fun b!7474806 () Bool)

(declare-fun tp!2167736 () Bool)

(declare-fun tp!2167738 () Bool)

(assert (=> b!7474806 (= e!4459224 (and tp!2167736 tp!2167738))))

(assert (= (and b!7474356 (is-ElementMatch!19596 (regOne!39704 r1!5845))) b!7474805))

(assert (= (and b!7474356 (is-Concat!28441 (regOne!39704 r1!5845))) b!7474806))

(assert (= (and b!7474356 (is-Star!19596 (regOne!39704 r1!5845))) b!7474807))

(assert (= (and b!7474356 (is-Union!19596 (regOne!39704 r1!5845))) b!7474808))

(declare-fun e!4459225 () Bool)

(assert (=> b!7474356 (= tp!2167623 e!4459225)))

(declare-fun b!7474809 () Bool)

(assert (=> b!7474809 (= e!4459225 tp_is_empty!49481)))

(declare-fun b!7474812 () Bool)

(declare-fun tp!2167739 () Bool)

(declare-fun tp!2167740 () Bool)

(assert (=> b!7474812 (= e!4459225 (and tp!2167739 tp!2167740))))

(declare-fun b!7474811 () Bool)

(declare-fun tp!2167742 () Bool)

(assert (=> b!7474811 (= e!4459225 tp!2167742)))

(declare-fun b!7474810 () Bool)

(declare-fun tp!2167741 () Bool)

(declare-fun tp!2167743 () Bool)

(assert (=> b!7474810 (= e!4459225 (and tp!2167741 tp!2167743))))

(assert (= (and b!7474356 (is-ElementMatch!19596 (regTwo!39704 r1!5845))) b!7474809))

(assert (= (and b!7474356 (is-Concat!28441 (regTwo!39704 r1!5845))) b!7474810))

(assert (= (and b!7474356 (is-Star!19596 (regTwo!39704 r1!5845))) b!7474811))

(assert (= (and b!7474356 (is-Union!19596 (regTwo!39704 r1!5845))) b!7474812))

(declare-fun e!4459226 () Bool)

(assert (=> b!7474352 (= tp!2167621 e!4459226)))

(declare-fun b!7474813 () Bool)

(assert (=> b!7474813 (= e!4459226 tp_is_empty!49481)))

(declare-fun b!7474816 () Bool)

(declare-fun tp!2167744 () Bool)

(declare-fun tp!2167745 () Bool)

(assert (=> b!7474816 (= e!4459226 (and tp!2167744 tp!2167745))))

(declare-fun b!7474815 () Bool)

(declare-fun tp!2167747 () Bool)

(assert (=> b!7474815 (= e!4459226 tp!2167747)))

(declare-fun b!7474814 () Bool)

(declare-fun tp!2167746 () Bool)

(declare-fun tp!2167748 () Bool)

(assert (=> b!7474814 (= e!4459226 (and tp!2167746 tp!2167748))))

(assert (= (and b!7474352 (is-ElementMatch!19596 (regOne!39705 r1!5845))) b!7474813))

(assert (= (and b!7474352 (is-Concat!28441 (regOne!39705 r1!5845))) b!7474814))

(assert (= (and b!7474352 (is-Star!19596 (regOne!39705 r1!5845))) b!7474815))

(assert (= (and b!7474352 (is-Union!19596 (regOne!39705 r1!5845))) b!7474816))

(declare-fun e!4459227 () Bool)

(assert (=> b!7474352 (= tp!2167617 e!4459227)))

(declare-fun b!7474817 () Bool)

(assert (=> b!7474817 (= e!4459227 tp_is_empty!49481)))

(declare-fun b!7474820 () Bool)

(declare-fun tp!2167749 () Bool)

(declare-fun tp!2167750 () Bool)

(assert (=> b!7474820 (= e!4459227 (and tp!2167749 tp!2167750))))

(declare-fun b!7474819 () Bool)

(declare-fun tp!2167752 () Bool)

(assert (=> b!7474819 (= e!4459227 tp!2167752)))

(declare-fun b!7474818 () Bool)

(declare-fun tp!2167751 () Bool)

(declare-fun tp!2167753 () Bool)

(assert (=> b!7474818 (= e!4459227 (and tp!2167751 tp!2167753))))

(assert (= (and b!7474352 (is-ElementMatch!19596 (regTwo!39705 r1!5845))) b!7474817))

(assert (= (and b!7474352 (is-Concat!28441 (regTwo!39705 r1!5845))) b!7474818))

(assert (= (and b!7474352 (is-Star!19596 (regTwo!39705 r1!5845))) b!7474819))

(assert (= (and b!7474352 (is-Union!19596 (regTwo!39705 r1!5845))) b!7474820))

(declare-fun e!4459228 () Bool)

(assert (=> b!7474358 (= tp!2167615 e!4459228)))

(declare-fun b!7474821 () Bool)

(assert (=> b!7474821 (= e!4459228 tp_is_empty!49481)))

(declare-fun b!7474824 () Bool)

(declare-fun tp!2167754 () Bool)

(declare-fun tp!2167755 () Bool)

(assert (=> b!7474824 (= e!4459228 (and tp!2167754 tp!2167755))))

(declare-fun b!7474823 () Bool)

(declare-fun tp!2167757 () Bool)

(assert (=> b!7474823 (= e!4459228 tp!2167757)))

(declare-fun b!7474822 () Bool)

(declare-fun tp!2167756 () Bool)

(declare-fun tp!2167758 () Bool)

(assert (=> b!7474822 (= e!4459228 (and tp!2167756 tp!2167758))))

(assert (= (and b!7474358 (is-ElementMatch!19596 (regOne!39705 r2!5783))) b!7474821))

(assert (= (and b!7474358 (is-Concat!28441 (regOne!39705 r2!5783))) b!7474822))

(assert (= (and b!7474358 (is-Star!19596 (regOne!39705 r2!5783))) b!7474823))

(assert (= (and b!7474358 (is-Union!19596 (regOne!39705 r2!5783))) b!7474824))

(declare-fun e!4459229 () Bool)

(assert (=> b!7474358 (= tp!2167626 e!4459229)))

(declare-fun b!7474825 () Bool)

(assert (=> b!7474825 (= e!4459229 tp_is_empty!49481)))

(declare-fun b!7474828 () Bool)

(declare-fun tp!2167759 () Bool)

(declare-fun tp!2167760 () Bool)

(assert (=> b!7474828 (= e!4459229 (and tp!2167759 tp!2167760))))

(declare-fun b!7474827 () Bool)

(declare-fun tp!2167762 () Bool)

(assert (=> b!7474827 (= e!4459229 tp!2167762)))

(declare-fun b!7474826 () Bool)

(declare-fun tp!2167761 () Bool)

(declare-fun tp!2167763 () Bool)

(assert (=> b!7474826 (= e!4459229 (and tp!2167761 tp!2167763))))

(assert (= (and b!7474358 (is-ElementMatch!19596 (regTwo!39705 r2!5783))) b!7474825))

(assert (= (and b!7474358 (is-Concat!28441 (regTwo!39705 r2!5783))) b!7474826))

(assert (= (and b!7474358 (is-Star!19596 (regTwo!39705 r2!5783))) b!7474827))

(assert (= (and b!7474358 (is-Union!19596 (regTwo!39705 r2!5783))) b!7474828))

(push 1)

(assert (not b!7474796))

(assert (not b!7474778))

(assert (not d!2299360))

(assert (not bm!686233))

(assert (not b!7474803))

(assert (not b!7474782))

(assert (not b!7474808))

(assert (not b!7474740))

(assert (not b!7474546))

(assert (not b!7474816))

(assert (not b!7474804))

(assert (not d!2299366))

(assert (not b!7474800))

(assert (not b!7474766))

(assert (not b!7474774))

(assert (not b!7474466))

(assert (not b!7474701))

(assert (not d!2299348))

(assert (not b!7474600))

(assert (not bm!686261))

(assert (not b!7474770))

(assert (not bm!686256))

(assert (not b!7474718))

(assert (not bm!686230))

(assert (not bm!686263))

(assert (not b!7474773))

(assert (not b!7474743))

(assert (not d!2299340))

(assert (not b!7474714))

(assert (not d!2299332))

(assert (not b!7474598))

(assert (not b!7474688))

(assert (not b!7474823))

(assert (not b!7474806))

(assert (not b!7474599))

(assert (not b!7474767))

(assert tp_is_empty!49481)

(assert (not b!7474545))

(assert (not b!7474819))

(assert (not b!7474457))

(assert (not b!7474550))

(assert (not b!7474787))

(assert (not b!7474791))

(assert (not b!7474751))

(assert (not d!2299352))

(assert (not b!7474828))

(assert (not b!7474741))

(assert (not d!2299338))

(assert (not b!7474779))

(assert (not d!2299350))

(assert (not b!7474798))

(assert (not b!7474820))

(assert (not b!7474799))

(assert (not b!7474822))

(assert (not b!7474706))

(assert (not bm!686236))

(assert (not bm!686241))

(assert (not b!7474781))

(assert (not d!2299368))

(assert (not b!7474593))

(assert (not b!7474802))

(assert (not b!7474724))

(assert (not b!7474775))

(assert (not b!7474786))

(assert (not bm!686231))

(assert (not b!7474789))

(assert (not bm!686237))

(assert (not b!7474702))

(assert (not b!7474783))

(assert (not b!7474745))

(assert (not b!7474811))

(assert (not b!7474765))

(assert (not b!7474815))

(assert (not b!7474548))

(assert (not d!2299344))

(assert (not b!7474826))

(assert (not b!7474769))

(assert (not b!7474682))

(assert (not b!7474785))

(assert (not b!7474824))

(assert (not d!2299336))

(assert (not b!7474810))

(assert (not b!7474790))

(assert (not b!7474597))

(assert (not b!7474595))

(assert (not b!7474704))

(assert (not b!7474812))

(assert (not bm!686260))

(assert (not b!7474475))

(assert (not b!7474777))

(assert (not b!7474771))

(assert (not b!7474818))

(assert (not b!7474712))

(assert (not bm!686255))

(assert (not b!7474753))

(assert (not bm!686259))

(assert (not b!7474558))

(assert (not b!7474807))

(assert (not b!7474814))

(assert (not b!7474556))

(assert (not bm!686234))

(assert (not b!7474827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

