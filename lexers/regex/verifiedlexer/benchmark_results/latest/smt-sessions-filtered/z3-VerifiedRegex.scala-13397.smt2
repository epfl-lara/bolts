; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725622 () Bool)

(assert start!725622)

(declare-fun b!7500046 () Bool)

(assert (=> b!7500046 true))

(assert (=> b!7500046 true))

(assert (=> b!7500046 true))

(declare-fun lambda!464837 () Int)

(declare-fun lambda!464836 () Int)

(assert (=> b!7500046 (not (= lambda!464837 lambda!464836))))

(assert (=> b!7500046 true))

(assert (=> b!7500046 true))

(assert (=> b!7500046 true))

(declare-fun bs!1937273 () Bool)

(declare-fun b!7500038 () Bool)

(assert (= bs!1937273 (and b!7500038 b!7500046)))

(declare-datatypes ((C!39588 0))(
  ( (C!39589 (val!30192 Int)) )
))
(declare-datatypes ((Regex!19657 0))(
  ( (ElementMatch!19657 (c!1384588 C!39588)) (Concat!28502 (regOne!39826 Regex!19657) (regTwo!39826 Regex!19657)) (EmptyExpr!19657) (Star!19657 (reg!19986 Regex!19657)) (EmptyLang!19657) (Union!19657 (regOne!39827 Regex!19657) (regTwo!39827 Regex!19657)) )
))
(declare-fun r2!5783 () Regex!19657)

(declare-fun lambda!464838 () Int)

(declare-fun lt!2631462 () Regex!19657)

(assert (=> bs!1937273 (= (= r2!5783 lt!2631462) (= lambda!464838 lambda!464836))))

(assert (=> bs!1937273 (not (= lambda!464838 lambda!464837))))

(assert (=> b!7500038 true))

(assert (=> b!7500038 true))

(assert (=> b!7500038 true))

(declare-fun lambda!464839 () Int)

(assert (=> bs!1937273 (not (= lambda!464839 lambda!464836))))

(assert (=> bs!1937273 (= (= r2!5783 lt!2631462) (= lambda!464839 lambda!464837))))

(assert (=> b!7500038 (not (= lambda!464839 lambda!464838))))

(assert (=> b!7500038 true))

(assert (=> b!7500038 true))

(assert (=> b!7500038 true))

(declare-fun b!7500026 () Bool)

(declare-fun res!3008712 () Bool)

(declare-fun e!4471518 () Bool)

(assert (=> b!7500026 (=> res!3008712 e!4471518)))

(declare-fun rTail!78 () Regex!19657)

(declare-datatypes ((List!72371 0))(
  ( (Nil!72247) (Cons!72247 (h!78695 C!39588) (t!386940 List!72371)) )
))
(declare-datatypes ((tuple2!68748 0))(
  ( (tuple2!68749 (_1!37677 List!72371) (_2!37677 List!72371)) )
))
(declare-fun lt!2631466 () tuple2!68748)

(declare-fun matchR!9419 (Regex!19657 List!72371) Bool)

(assert (=> b!7500026 (= res!3008712 (not (matchR!9419 rTail!78 (_2!37677 lt!2631466))))))

(declare-fun b!7500027 () Bool)

(declare-fun e!4471519 () Bool)

(declare-fun tp_is_empty!49603 () Bool)

(declare-fun tp!2177145 () Bool)

(assert (=> b!7500027 (= e!4471519 (and tp_is_empty!49603 tp!2177145))))

(declare-fun b!7500028 () Bool)

(declare-fun res!3008707 () Bool)

(declare-fun e!4471515 () Bool)

(assert (=> b!7500028 (=> (not res!3008707) (not e!4471515))))

(declare-fun validRegex!10171 (Regex!19657) Bool)

(assert (=> b!7500028 (= res!3008707 (validRegex!10171 rTail!78))))

(declare-fun b!7500029 () Bool)

(declare-fun e!4471521 () Bool)

(assert (=> b!7500029 (= e!4471521 false)))

(declare-fun lt!2631454 () Regex!19657)

(declare-fun ++!17262 (List!72371 List!72371) List!72371)

(assert (=> b!7500029 (matchR!9419 lt!2631454 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))

(declare-datatypes ((Unit!166145 0))(
  ( (Unit!166146) )
))
(declare-fun lt!2631449 () Unit!166145)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!410 (Regex!19657 Regex!19657 List!72371 List!72371) Unit!166145)

(assert (=> b!7500029 (= lt!2631449 (lemmaTwoRegexMatchThenConcatMatchesConcatString!410 lt!2631462 rTail!78 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))

(declare-fun b!7500030 () Bool)

(declare-fun e!4471514 () Bool)

(declare-fun tp!2177138 () Bool)

(declare-fun tp!2177149 () Bool)

(assert (=> b!7500030 (= e!4471514 (and tp!2177138 tp!2177149))))

(declare-fun b!7500031 () Bool)

(declare-fun e!4471513 () Bool)

(declare-fun tp!2177148 () Bool)

(assert (=> b!7500031 (= e!4471513 tp!2177148)))

(declare-fun b!7500032 () Bool)

(declare-fun e!4471522 () Bool)

(declare-fun tp!2177137 () Bool)

(assert (=> b!7500032 (= e!4471522 tp!2177137)))

(declare-fun b!7500034 () Bool)

(declare-fun e!4471516 () Bool)

(assert (=> b!7500034 (= e!4471515 (not e!4471516))))

(declare-fun res!3008711 () Bool)

(assert (=> b!7500034 (=> res!3008711 e!4471516)))

(declare-fun lt!2631458 () Bool)

(assert (=> b!7500034 (= res!3008711 lt!2631458)))

(declare-fun lt!2631464 () Bool)

(declare-fun lt!2631468 () Regex!19657)

(declare-fun s!13591 () List!72371)

(declare-fun matchRSpec!4334 (Regex!19657 List!72371) Bool)

(assert (=> b!7500034 (= lt!2631464 (matchRSpec!4334 lt!2631468 s!13591))))

(assert (=> b!7500034 (= lt!2631464 (matchR!9419 lt!2631468 s!13591))))

(declare-fun lt!2631463 () Unit!166145)

(declare-fun mainMatchTheorem!4328 (Regex!19657 List!72371) Unit!166145)

(assert (=> b!7500034 (= lt!2631463 (mainMatchTheorem!4328 lt!2631468 s!13591))))

(assert (=> b!7500034 (= lt!2631458 (matchRSpec!4334 lt!2631454 s!13591))))

(assert (=> b!7500034 (= lt!2631458 (matchR!9419 lt!2631454 s!13591))))

(declare-fun lt!2631456 () Unit!166145)

(assert (=> b!7500034 (= lt!2631456 (mainMatchTheorem!4328 lt!2631454 s!13591))))

(declare-fun lt!2631453 () Regex!19657)

(declare-fun lt!2631465 () Regex!19657)

(assert (=> b!7500034 (= lt!2631468 (Union!19657 lt!2631453 lt!2631465))))

(assert (=> b!7500034 (= lt!2631465 (Concat!28502 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19657)

(assert (=> b!7500034 (= lt!2631453 (Concat!28502 r1!5845 rTail!78))))

(assert (=> b!7500034 (= lt!2631454 (Concat!28502 lt!2631462 rTail!78))))

(assert (=> b!7500034 (= lt!2631462 (Union!19657 r1!5845 r2!5783))))

(declare-fun b!7500035 () Bool)

(declare-fun tp!2177147 () Bool)

(assert (=> b!7500035 (= e!4471514 tp!2177147)))

(declare-fun b!7500036 () Bool)

(assert (=> b!7500036 (= e!4471513 tp_is_empty!49603)))

(declare-fun b!7500037 () Bool)

(assert (=> b!7500037 (= e!4471514 tp_is_empty!49603)))

(declare-fun e!4471520 () Bool)

(assert (=> b!7500038 (= e!4471520 e!4471518)))

(declare-fun res!3008708 () Bool)

(assert (=> b!7500038 (=> res!3008708 e!4471518)))

(assert (=> b!7500038 (= res!3008708 (not (matchR!9419 r2!5783 (_1!37677 lt!2631466))))))

(declare-datatypes ((Option!17206 0))(
  ( (None!17205) (Some!17205 (v!54334 tuple2!68748)) )
))
(declare-fun lt!2631473 () Option!17206)

(declare-fun get!25341 (Option!17206) tuple2!68748)

(assert (=> b!7500038 (= lt!2631466 (get!25341 lt!2631473))))

(declare-fun Exists!4274 (Int) Bool)

(assert (=> b!7500038 (= (Exists!4274 lambda!464838) (Exists!4274 lambda!464839))))

(declare-fun lt!2631467 () Unit!166145)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2598 (Regex!19657 Regex!19657 List!72371) Unit!166145)

(assert (=> b!7500038 (= lt!2631467 (lemmaExistCutMatchRandMatchRSpecEquivalent!2598 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13895 (Option!17206) Bool)

(assert (=> b!7500038 (= (isDefined!13895 lt!2631473) (Exists!4274 lambda!464838))))

(declare-fun findConcatSeparation!3328 (Regex!19657 Regex!19657 List!72371 List!72371 List!72371) Option!17206)

(assert (=> b!7500038 (= lt!2631473 (findConcatSeparation!3328 r2!5783 rTail!78 Nil!72247 s!13591 s!13591))))

(declare-fun lt!2631459 () Unit!166145)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3086 (Regex!19657 Regex!19657 List!72371) Unit!166145)

(assert (=> b!7500038 (= lt!2631459 (lemmaFindConcatSeparationEquivalentToExists!3086 r2!5783 rTail!78 s!13591))))

(declare-fun b!7500039 () Bool)

(declare-fun tp!2177134 () Bool)

(declare-fun tp!2177146 () Bool)

(assert (=> b!7500039 (= e!4471522 (and tp!2177134 tp!2177146))))

(declare-fun b!7500040 () Bool)

(assert (=> b!7500040 (= e!4471518 e!4471521)))

(declare-fun res!3008709 () Bool)

(assert (=> b!7500040 (=> res!3008709 e!4471521)))

(declare-fun lt!2631457 () Bool)

(assert (=> b!7500040 (= res!3008709 (not lt!2631457))))

(assert (=> b!7500040 (matchRSpec!4334 r2!5783 (_1!37677 lt!2631466))))

(declare-fun lt!2631455 () Unit!166145)

(assert (=> b!7500040 (= lt!2631455 (mainMatchTheorem!4328 r2!5783 (_1!37677 lt!2631466)))))

(assert (=> b!7500040 (= (matchR!9419 r1!5845 (_1!37677 lt!2631466)) (matchRSpec!4334 r1!5845 (_1!37677 lt!2631466)))))

(declare-fun lt!2631450 () Unit!166145)

(assert (=> b!7500040 (= lt!2631450 (mainMatchTheorem!4328 r1!5845 (_1!37677 lt!2631466)))))

(assert (=> b!7500040 (= lt!2631457 (matchRSpec!4334 lt!2631462 (_1!37677 lt!2631466)))))

(assert (=> b!7500040 (= lt!2631457 (matchR!9419 lt!2631462 (_1!37677 lt!2631466)))))

(declare-fun lt!2631451 () Unit!166145)

(assert (=> b!7500040 (= lt!2631451 (mainMatchTheorem!4328 lt!2631462 (_1!37677 lt!2631466)))))

(declare-fun b!7500041 () Bool)

(declare-fun tp!2177136 () Bool)

(declare-fun tp!2177141 () Bool)

(assert (=> b!7500041 (= e!4471522 (and tp!2177136 tp!2177141))))

(declare-fun b!7500042 () Bool)

(declare-fun tp!2177143 () Bool)

(declare-fun tp!2177142 () Bool)

(assert (=> b!7500042 (= e!4471514 (and tp!2177143 tp!2177142))))

(declare-fun b!7500043 () Bool)

(assert (=> b!7500043 (= e!4471522 tp_is_empty!49603)))

(declare-fun b!7500044 () Bool)

(declare-fun e!4471517 () Bool)

(assert (=> b!7500044 (= e!4471517 e!4471520)))

(declare-fun res!3008710 () Bool)

(assert (=> b!7500044 (=> res!3008710 e!4471520)))

(declare-fun lt!2631471 () Bool)

(declare-fun lt!2631460 () Bool)

(assert (=> b!7500044 (= res!3008710 (or (and (not lt!2631471) (not lt!2631460)) lt!2631471))))

(assert (=> b!7500044 (= lt!2631460 (matchRSpec!4334 lt!2631465 s!13591))))

(assert (=> b!7500044 (= lt!2631460 (matchR!9419 lt!2631465 s!13591))))

(declare-fun lt!2631472 () Unit!166145)

(assert (=> b!7500044 (= lt!2631472 (mainMatchTheorem!4328 lt!2631465 s!13591))))

(assert (=> b!7500044 (= lt!2631471 (matchRSpec!4334 lt!2631453 s!13591))))

(assert (=> b!7500044 (= lt!2631471 (matchR!9419 lt!2631453 s!13591))))

(declare-fun lt!2631470 () Unit!166145)

(assert (=> b!7500044 (= lt!2631470 (mainMatchTheorem!4328 lt!2631453 s!13591))))

(declare-fun res!3008706 () Bool)

(assert (=> start!725622 (=> (not res!3008706) (not e!4471515))))

(assert (=> start!725622 (= res!3008706 (validRegex!10171 r1!5845))))

(assert (=> start!725622 e!4471515))

(assert (=> start!725622 e!4471513))

(assert (=> start!725622 e!4471514))

(assert (=> start!725622 e!4471522))

(assert (=> start!725622 e!4471519))

(declare-fun b!7500033 () Bool)

(declare-fun tp!2177135 () Bool)

(declare-fun tp!2177140 () Bool)

(assert (=> b!7500033 (= e!4471513 (and tp!2177135 tp!2177140))))

(declare-fun b!7500045 () Bool)

(declare-fun tp!2177139 () Bool)

(declare-fun tp!2177144 () Bool)

(assert (=> b!7500045 (= e!4471513 (and tp!2177139 tp!2177144))))

(assert (=> b!7500046 (= e!4471516 e!4471517)))

(declare-fun res!3008714 () Bool)

(assert (=> b!7500046 (=> res!3008714 e!4471517)))

(declare-fun lt!2631452 () Bool)

(assert (=> b!7500046 (= res!3008714 (or lt!2631452 (not lt!2631464)))))

(assert (=> b!7500046 (= (Exists!4274 lambda!464836) (Exists!4274 lambda!464837))))

(declare-fun lt!2631461 () Unit!166145)

(assert (=> b!7500046 (= lt!2631461 (lemmaExistCutMatchRandMatchRSpecEquivalent!2598 lt!2631462 rTail!78 s!13591))))

(assert (=> b!7500046 (= lt!2631452 (Exists!4274 lambda!464836))))

(assert (=> b!7500046 (= lt!2631452 (isDefined!13895 (findConcatSeparation!3328 lt!2631462 rTail!78 Nil!72247 s!13591 s!13591)))))

(declare-fun lt!2631469 () Unit!166145)

(assert (=> b!7500046 (= lt!2631469 (lemmaFindConcatSeparationEquivalentToExists!3086 lt!2631462 rTail!78 s!13591))))

(declare-fun b!7500047 () Bool)

(declare-fun res!3008713 () Bool)

(assert (=> b!7500047 (=> (not res!3008713) (not e!4471515))))

(assert (=> b!7500047 (= res!3008713 (validRegex!10171 r2!5783))))

(assert (= (and start!725622 res!3008706) b!7500047))

(assert (= (and b!7500047 res!3008713) b!7500028))

(assert (= (and b!7500028 res!3008707) b!7500034))

(assert (= (and b!7500034 (not res!3008711)) b!7500046))

(assert (= (and b!7500046 (not res!3008714)) b!7500044))

(assert (= (and b!7500044 (not res!3008710)) b!7500038))

(assert (= (and b!7500038 (not res!3008708)) b!7500026))

(assert (= (and b!7500026 (not res!3008712)) b!7500040))

(assert (= (and b!7500040 (not res!3008709)) b!7500029))

(get-info :version)

(assert (= (and start!725622 ((_ is ElementMatch!19657) r1!5845)) b!7500036))

(assert (= (and start!725622 ((_ is Concat!28502) r1!5845)) b!7500033))

(assert (= (and start!725622 ((_ is Star!19657) r1!5845)) b!7500031))

(assert (= (and start!725622 ((_ is Union!19657) r1!5845)) b!7500045))

(assert (= (and start!725622 ((_ is ElementMatch!19657) r2!5783)) b!7500037))

(assert (= (and start!725622 ((_ is Concat!28502) r2!5783)) b!7500042))

(assert (= (and start!725622 ((_ is Star!19657) r2!5783)) b!7500035))

(assert (= (and start!725622 ((_ is Union!19657) r2!5783)) b!7500030))

(assert (= (and start!725622 ((_ is ElementMatch!19657) rTail!78)) b!7500043))

(assert (= (and start!725622 ((_ is Concat!28502) rTail!78)) b!7500041))

(assert (= (and start!725622 ((_ is Star!19657) rTail!78)) b!7500032))

(assert (= (and start!725622 ((_ is Union!19657) rTail!78)) b!7500039))

(assert (= (and start!725622 ((_ is Cons!72247) s!13591)) b!7500027))

(declare-fun m!8082210 () Bool)

(assert (=> b!7500046 m!8082210))

(declare-fun m!8082212 () Bool)

(assert (=> b!7500046 m!8082212))

(assert (=> b!7500046 m!8082212))

(declare-fun m!8082214 () Bool)

(assert (=> b!7500046 m!8082214))

(declare-fun m!8082216 () Bool)

(assert (=> b!7500046 m!8082216))

(declare-fun m!8082218 () Bool)

(assert (=> b!7500046 m!8082218))

(declare-fun m!8082220 () Bool)

(assert (=> b!7500046 m!8082220))

(assert (=> b!7500046 m!8082210))

(declare-fun m!8082222 () Bool)

(assert (=> b!7500047 m!8082222))

(declare-fun m!8082224 () Bool)

(assert (=> start!725622 m!8082224))

(declare-fun m!8082226 () Bool)

(assert (=> b!7500038 m!8082226))

(declare-fun m!8082228 () Bool)

(assert (=> b!7500038 m!8082228))

(declare-fun m!8082230 () Bool)

(assert (=> b!7500038 m!8082230))

(assert (=> b!7500038 m!8082230))

(declare-fun m!8082232 () Bool)

(assert (=> b!7500038 m!8082232))

(declare-fun m!8082234 () Bool)

(assert (=> b!7500038 m!8082234))

(declare-fun m!8082236 () Bool)

(assert (=> b!7500038 m!8082236))

(declare-fun m!8082238 () Bool)

(assert (=> b!7500038 m!8082238))

(declare-fun m!8082240 () Bool)

(assert (=> b!7500038 m!8082240))

(declare-fun m!8082242 () Bool)

(assert (=> b!7500040 m!8082242))

(declare-fun m!8082244 () Bool)

(assert (=> b!7500040 m!8082244))

(declare-fun m!8082246 () Bool)

(assert (=> b!7500040 m!8082246))

(declare-fun m!8082248 () Bool)

(assert (=> b!7500040 m!8082248))

(declare-fun m!8082250 () Bool)

(assert (=> b!7500040 m!8082250))

(declare-fun m!8082252 () Bool)

(assert (=> b!7500040 m!8082252))

(declare-fun m!8082254 () Bool)

(assert (=> b!7500040 m!8082254))

(declare-fun m!8082256 () Bool)

(assert (=> b!7500040 m!8082256))

(declare-fun m!8082258 () Bool)

(assert (=> b!7500044 m!8082258))

(declare-fun m!8082260 () Bool)

(assert (=> b!7500044 m!8082260))

(declare-fun m!8082262 () Bool)

(assert (=> b!7500044 m!8082262))

(declare-fun m!8082264 () Bool)

(assert (=> b!7500044 m!8082264))

(declare-fun m!8082266 () Bool)

(assert (=> b!7500044 m!8082266))

(declare-fun m!8082268 () Bool)

(assert (=> b!7500044 m!8082268))

(declare-fun m!8082270 () Bool)

(assert (=> b!7500029 m!8082270))

(assert (=> b!7500029 m!8082270))

(declare-fun m!8082272 () Bool)

(assert (=> b!7500029 m!8082272))

(declare-fun m!8082274 () Bool)

(assert (=> b!7500029 m!8082274))

(declare-fun m!8082276 () Bool)

(assert (=> b!7500034 m!8082276))

(declare-fun m!8082278 () Bool)

(assert (=> b!7500034 m!8082278))

(declare-fun m!8082280 () Bool)

(assert (=> b!7500034 m!8082280))

(declare-fun m!8082282 () Bool)

(assert (=> b!7500034 m!8082282))

(declare-fun m!8082284 () Bool)

(assert (=> b!7500034 m!8082284))

(declare-fun m!8082286 () Bool)

(assert (=> b!7500034 m!8082286))

(declare-fun m!8082288 () Bool)

(assert (=> b!7500026 m!8082288))

(declare-fun m!8082290 () Bool)

(assert (=> b!7500028 m!8082290))

(check-sat (not b!7500035) (not b!7500026) (not b!7500044) (not b!7500040) tp_is_empty!49603 (not b!7500031) (not b!7500034) (not b!7500038) (not b!7500030) (not b!7500041) (not b!7500046) (not b!7500033) (not b!7500032) (not b!7500039) (not b!7500028) (not start!725622) (not b!7500027) (not b!7500045) (not b!7500047) (not b!7500042) (not b!7500029))
(check-sat)
(get-model)

(declare-fun b!7500074 () Bool)

(declare-fun e!4471543 () Bool)

(declare-fun call!688469 () Bool)

(assert (=> b!7500074 (= e!4471543 call!688469)))

(declare-fun b!7500075 () Bool)

(declare-fun e!4471545 () Bool)

(declare-fun e!4471544 () Bool)

(assert (=> b!7500075 (= e!4471545 e!4471544)))

(declare-fun c!1384593 () Bool)

(assert (=> b!7500075 (= c!1384593 ((_ is Union!19657) r2!5783))))

(declare-fun b!7500076 () Bool)

(declare-fun res!3008732 () Bool)

(declare-fun e!4471542 () Bool)

(assert (=> b!7500076 (=> (not res!3008732) (not e!4471542))))

(declare-fun call!688468 () Bool)

(assert (=> b!7500076 (= res!3008732 call!688468)))

(assert (=> b!7500076 (= e!4471544 e!4471542)))

(declare-fun b!7500077 () Bool)

(assert (=> b!7500077 (= e!4471542 call!688469)))

(declare-fun b!7500078 () Bool)

(declare-fun e!4471539 () Bool)

(assert (=> b!7500078 (= e!4471545 e!4471539)))

(declare-fun res!3008731 () Bool)

(declare-fun nullable!8592 (Regex!19657) Bool)

(assert (=> b!7500078 (= res!3008731 (not (nullable!8592 (reg!19986 r2!5783))))))

(assert (=> b!7500078 (=> (not res!3008731) (not e!4471539))))

(declare-fun bm!688462 () Bool)

(declare-fun call!688467 () Bool)

(declare-fun c!1384594 () Bool)

(assert (=> bm!688462 (= call!688467 (validRegex!10171 (ite c!1384594 (reg!19986 r2!5783) (ite c!1384593 (regOne!39827 r2!5783) (regOne!39826 r2!5783)))))))

(declare-fun b!7500079 () Bool)

(declare-fun res!3008730 () Bool)

(declare-fun e!4471541 () Bool)

(assert (=> b!7500079 (=> res!3008730 e!4471541)))

(assert (=> b!7500079 (= res!3008730 (not ((_ is Concat!28502) r2!5783)))))

(assert (=> b!7500079 (= e!4471544 e!4471541)))

(declare-fun b!7500080 () Bool)

(declare-fun e!4471540 () Bool)

(assert (=> b!7500080 (= e!4471540 e!4471545)))

(assert (=> b!7500080 (= c!1384594 ((_ is Star!19657) r2!5783))))

(declare-fun bm!688463 () Bool)

(assert (=> bm!688463 (= call!688469 (validRegex!10171 (ite c!1384593 (regTwo!39827 r2!5783) (regTwo!39826 r2!5783))))))

(declare-fun bm!688464 () Bool)

(assert (=> bm!688464 (= call!688468 call!688467)))

(declare-fun b!7500081 () Bool)

(assert (=> b!7500081 (= e!4471539 call!688467)))

(declare-fun d!2302374 () Bool)

(declare-fun res!3008733 () Bool)

(assert (=> d!2302374 (=> res!3008733 e!4471540)))

(assert (=> d!2302374 (= res!3008733 ((_ is ElementMatch!19657) r2!5783))))

(assert (=> d!2302374 (= (validRegex!10171 r2!5783) e!4471540)))

(declare-fun b!7500082 () Bool)

(assert (=> b!7500082 (= e!4471541 e!4471543)))

(declare-fun res!3008729 () Bool)

(assert (=> b!7500082 (=> (not res!3008729) (not e!4471543))))

(assert (=> b!7500082 (= res!3008729 call!688468)))

(assert (= (and d!2302374 (not res!3008733)) b!7500080))

(assert (= (and b!7500080 c!1384594) b!7500078))

(assert (= (and b!7500080 (not c!1384594)) b!7500075))

(assert (= (and b!7500078 res!3008731) b!7500081))

(assert (= (and b!7500075 c!1384593) b!7500076))

(assert (= (and b!7500075 (not c!1384593)) b!7500079))

(assert (= (and b!7500076 res!3008732) b!7500077))

(assert (= (and b!7500079 (not res!3008730)) b!7500082))

(assert (= (and b!7500082 res!3008729) b!7500074))

(assert (= (or b!7500077 b!7500074) bm!688463))

(assert (= (or b!7500076 b!7500082) bm!688464))

(assert (= (or b!7500081 bm!688464) bm!688462))

(declare-fun m!8082292 () Bool)

(assert (=> b!7500078 m!8082292))

(declare-fun m!8082294 () Bool)

(assert (=> bm!688462 m!8082294))

(declare-fun m!8082296 () Bool)

(assert (=> bm!688463 m!8082296))

(assert (=> b!7500047 d!2302374))

(declare-fun b!7500111 () Bool)

(declare-fun e!4471564 () Bool)

(declare-fun lt!2631479 () Bool)

(assert (=> b!7500111 (= e!4471564 (not lt!2631479))))

(declare-fun b!7500112 () Bool)

(declare-fun e!4471566 () Bool)

(declare-fun head!15389 (List!72371) C!39588)

(assert (=> b!7500112 (= e!4471566 (not (= (head!15389 (_2!37677 lt!2631466)) (c!1384588 rTail!78))))))

(declare-fun b!7500113 () Bool)

(declare-fun e!4471563 () Bool)

(assert (=> b!7500113 (= e!4471563 (nullable!8592 rTail!78))))

(declare-fun b!7500114 () Bool)

(declare-fun res!3008751 () Bool)

(assert (=> b!7500114 (=> res!3008751 e!4471566)))

(declare-fun isEmpty!41289 (List!72371) Bool)

(declare-fun tail!14958 (List!72371) List!72371)

(assert (=> b!7500114 (= res!3008751 (not (isEmpty!41289 (tail!14958 (_2!37677 lt!2631466)))))))

(declare-fun b!7500115 () Bool)

(declare-fun e!4471562 () Bool)

(assert (=> b!7500115 (= e!4471562 e!4471564)))

(declare-fun c!1384603 () Bool)

(assert (=> b!7500115 (= c!1384603 ((_ is EmptyLang!19657) rTail!78))))

(declare-fun d!2302378 () Bool)

(assert (=> d!2302378 e!4471562))

(declare-fun c!1384601 () Bool)

(assert (=> d!2302378 (= c!1384601 ((_ is EmptyExpr!19657) rTail!78))))

(assert (=> d!2302378 (= lt!2631479 e!4471563)))

(declare-fun c!1384602 () Bool)

(assert (=> d!2302378 (= c!1384602 (isEmpty!41289 (_2!37677 lt!2631466)))))

(assert (=> d!2302378 (validRegex!10171 rTail!78)))

(assert (=> d!2302378 (= (matchR!9419 rTail!78 (_2!37677 lt!2631466)) lt!2631479)))

(declare-fun b!7500116 () Bool)

(declare-fun e!4471565 () Bool)

(assert (=> b!7500116 (= e!4471565 (= (head!15389 (_2!37677 lt!2631466)) (c!1384588 rTail!78)))))

(declare-fun b!7500117 () Bool)

(declare-fun derivativeStep!5649 (Regex!19657 C!39588) Regex!19657)

(assert (=> b!7500117 (= e!4471563 (matchR!9419 (derivativeStep!5649 rTail!78 (head!15389 (_2!37677 lt!2631466))) (tail!14958 (_2!37677 lt!2631466))))))

(declare-fun b!7500118 () Bool)

(declare-fun e!4471561 () Bool)

(declare-fun e!4471560 () Bool)

(assert (=> b!7500118 (= e!4471561 e!4471560)))

(declare-fun res!3008753 () Bool)

(assert (=> b!7500118 (=> (not res!3008753) (not e!4471560))))

(assert (=> b!7500118 (= res!3008753 (not lt!2631479))))

(declare-fun bm!688467 () Bool)

(declare-fun call!688472 () Bool)

(assert (=> bm!688467 (= call!688472 (isEmpty!41289 (_2!37677 lt!2631466)))))

(declare-fun b!7500119 () Bool)

(assert (=> b!7500119 (= e!4471562 (= lt!2631479 call!688472))))

(declare-fun b!7500120 () Bool)

(assert (=> b!7500120 (= e!4471560 e!4471566)))

(declare-fun res!3008752 () Bool)

(assert (=> b!7500120 (=> res!3008752 e!4471566)))

(assert (=> b!7500120 (= res!3008752 call!688472)))

(declare-fun b!7500121 () Bool)

(declare-fun res!3008756 () Bool)

(assert (=> b!7500121 (=> res!3008756 e!4471561)))

(assert (=> b!7500121 (= res!3008756 (not ((_ is ElementMatch!19657) rTail!78)))))

(assert (=> b!7500121 (= e!4471564 e!4471561)))

(declare-fun b!7500122 () Bool)

(declare-fun res!3008754 () Bool)

(assert (=> b!7500122 (=> (not res!3008754) (not e!4471565))))

(assert (=> b!7500122 (= res!3008754 (not call!688472))))

(declare-fun b!7500123 () Bool)

(declare-fun res!3008755 () Bool)

(assert (=> b!7500123 (=> (not res!3008755) (not e!4471565))))

(assert (=> b!7500123 (= res!3008755 (isEmpty!41289 (tail!14958 (_2!37677 lt!2631466))))))

(declare-fun b!7500124 () Bool)

(declare-fun res!3008750 () Bool)

(assert (=> b!7500124 (=> res!3008750 e!4471561)))

(assert (=> b!7500124 (= res!3008750 e!4471565)))

(declare-fun res!3008757 () Bool)

(assert (=> b!7500124 (=> (not res!3008757) (not e!4471565))))

(assert (=> b!7500124 (= res!3008757 lt!2631479)))

(assert (= (and d!2302378 c!1384602) b!7500113))

(assert (= (and d!2302378 (not c!1384602)) b!7500117))

(assert (= (and d!2302378 c!1384601) b!7500119))

(assert (= (and d!2302378 (not c!1384601)) b!7500115))

(assert (= (and b!7500115 c!1384603) b!7500111))

(assert (= (and b!7500115 (not c!1384603)) b!7500121))

(assert (= (and b!7500121 (not res!3008756)) b!7500124))

(assert (= (and b!7500124 res!3008757) b!7500122))

(assert (= (and b!7500122 res!3008754) b!7500123))

(assert (= (and b!7500123 res!3008755) b!7500116))

(assert (= (and b!7500124 (not res!3008750)) b!7500118))

(assert (= (and b!7500118 res!3008753) b!7500120))

(assert (= (and b!7500120 (not res!3008752)) b!7500114))

(assert (= (and b!7500114 (not res!3008751)) b!7500112))

(assert (= (or b!7500119 b!7500120 b!7500122) bm!688467))

(declare-fun m!8082306 () Bool)

(assert (=> b!7500123 m!8082306))

(assert (=> b!7500123 m!8082306))

(declare-fun m!8082308 () Bool)

(assert (=> b!7500123 m!8082308))

(declare-fun m!8082310 () Bool)

(assert (=> b!7500117 m!8082310))

(assert (=> b!7500117 m!8082310))

(declare-fun m!8082312 () Bool)

(assert (=> b!7500117 m!8082312))

(assert (=> b!7500117 m!8082306))

(assert (=> b!7500117 m!8082312))

(assert (=> b!7500117 m!8082306))

(declare-fun m!8082314 () Bool)

(assert (=> b!7500117 m!8082314))

(assert (=> b!7500114 m!8082306))

(assert (=> b!7500114 m!8082306))

(assert (=> b!7500114 m!8082308))

(declare-fun m!8082316 () Bool)

(assert (=> bm!688467 m!8082316))

(declare-fun m!8082318 () Bool)

(assert (=> b!7500113 m!8082318))

(assert (=> d!2302378 m!8082316))

(assert (=> d!2302378 m!8082290))

(assert (=> b!7500116 m!8082310))

(assert (=> b!7500112 m!8082310))

(assert (=> b!7500026 d!2302378))

(declare-fun d!2302384 () Bool)

(assert (=> d!2302384 (= (matchR!9419 r1!5845 (_1!37677 lt!2631466)) (matchRSpec!4334 r1!5845 (_1!37677 lt!2631466)))))

(declare-fun lt!2631488 () Unit!166145)

(declare-fun choose!57978 (Regex!19657 List!72371) Unit!166145)

(assert (=> d!2302384 (= lt!2631488 (choose!57978 r1!5845 (_1!37677 lt!2631466)))))

(assert (=> d!2302384 (validRegex!10171 r1!5845)))

(assert (=> d!2302384 (= (mainMatchTheorem!4328 r1!5845 (_1!37677 lt!2631466)) lt!2631488)))

(declare-fun bs!1937278 () Bool)

(assert (= bs!1937278 d!2302384))

(assert (=> bs!1937278 m!8082246))

(assert (=> bs!1937278 m!8082252))

(declare-fun m!8082320 () Bool)

(assert (=> bs!1937278 m!8082320))

(assert (=> bs!1937278 m!8082224))

(assert (=> b!7500040 d!2302384))

(declare-fun b!7500143 () Bool)

(declare-fun e!4471581 () Bool)

(declare-fun lt!2631489 () Bool)

(assert (=> b!7500143 (= e!4471581 (not lt!2631489))))

(declare-fun b!7500144 () Bool)

(declare-fun e!4471583 () Bool)

(assert (=> b!7500144 (= e!4471583 (not (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 lt!2631462))))))

(declare-fun b!7500145 () Bool)

(declare-fun e!4471580 () Bool)

(assert (=> b!7500145 (= e!4471580 (nullable!8592 lt!2631462))))

(declare-fun b!7500146 () Bool)

(declare-fun res!3008769 () Bool)

(assert (=> b!7500146 (=> res!3008769 e!4471583)))

(assert (=> b!7500146 (= res!3008769 (not (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466)))))))

(declare-fun b!7500147 () Bool)

(declare-fun e!4471579 () Bool)

(assert (=> b!7500147 (= e!4471579 e!4471581)))

(declare-fun c!1384610 () Bool)

(assert (=> b!7500147 (= c!1384610 ((_ is EmptyLang!19657) lt!2631462))))

(declare-fun d!2302386 () Bool)

(assert (=> d!2302386 e!4471579))

(declare-fun c!1384608 () Bool)

(assert (=> d!2302386 (= c!1384608 ((_ is EmptyExpr!19657) lt!2631462))))

(assert (=> d!2302386 (= lt!2631489 e!4471580)))

(declare-fun c!1384609 () Bool)

(assert (=> d!2302386 (= c!1384609 (isEmpty!41289 (_1!37677 lt!2631466)))))

(assert (=> d!2302386 (validRegex!10171 lt!2631462)))

(assert (=> d!2302386 (= (matchR!9419 lt!2631462 (_1!37677 lt!2631466)) lt!2631489)))

(declare-fun b!7500148 () Bool)

(declare-fun e!4471582 () Bool)

(assert (=> b!7500148 (= e!4471582 (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 lt!2631462)))))

(declare-fun b!7500149 () Bool)

(assert (=> b!7500149 (= e!4471580 (matchR!9419 (derivativeStep!5649 lt!2631462 (head!15389 (_1!37677 lt!2631466))) (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500150 () Bool)

(declare-fun e!4471578 () Bool)

(declare-fun e!4471577 () Bool)

(assert (=> b!7500150 (= e!4471578 e!4471577)))

(declare-fun res!3008771 () Bool)

(assert (=> b!7500150 (=> (not res!3008771) (not e!4471577))))

(assert (=> b!7500150 (= res!3008771 (not lt!2631489))))

(declare-fun bm!688468 () Bool)

(declare-fun call!688473 () Bool)

(assert (=> bm!688468 (= call!688473 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun b!7500151 () Bool)

(assert (=> b!7500151 (= e!4471579 (= lt!2631489 call!688473))))

(declare-fun b!7500152 () Bool)

(assert (=> b!7500152 (= e!4471577 e!4471583)))

(declare-fun res!3008770 () Bool)

(assert (=> b!7500152 (=> res!3008770 e!4471583)))

(assert (=> b!7500152 (= res!3008770 call!688473)))

(declare-fun b!7500153 () Bool)

(declare-fun res!3008774 () Bool)

(assert (=> b!7500153 (=> res!3008774 e!4471578)))

(assert (=> b!7500153 (= res!3008774 (not ((_ is ElementMatch!19657) lt!2631462)))))

(assert (=> b!7500153 (= e!4471581 e!4471578)))

(declare-fun b!7500154 () Bool)

(declare-fun res!3008772 () Bool)

(assert (=> b!7500154 (=> (not res!3008772) (not e!4471582))))

(assert (=> b!7500154 (= res!3008772 (not call!688473))))

(declare-fun b!7500155 () Bool)

(declare-fun res!3008773 () Bool)

(assert (=> b!7500155 (=> (not res!3008773) (not e!4471582))))

(assert (=> b!7500155 (= res!3008773 (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500156 () Bool)

(declare-fun res!3008768 () Bool)

(assert (=> b!7500156 (=> res!3008768 e!4471578)))

(assert (=> b!7500156 (= res!3008768 e!4471582)))

(declare-fun res!3008775 () Bool)

(assert (=> b!7500156 (=> (not res!3008775) (not e!4471582))))

(assert (=> b!7500156 (= res!3008775 lt!2631489)))

(assert (= (and d!2302386 c!1384609) b!7500145))

(assert (= (and d!2302386 (not c!1384609)) b!7500149))

(assert (= (and d!2302386 c!1384608) b!7500151))

(assert (= (and d!2302386 (not c!1384608)) b!7500147))

(assert (= (and b!7500147 c!1384610) b!7500143))

(assert (= (and b!7500147 (not c!1384610)) b!7500153))

(assert (= (and b!7500153 (not res!3008774)) b!7500156))

(assert (= (and b!7500156 res!3008775) b!7500154))

(assert (= (and b!7500154 res!3008772) b!7500155))

(assert (= (and b!7500155 res!3008773) b!7500148))

(assert (= (and b!7500156 (not res!3008768)) b!7500150))

(assert (= (and b!7500150 res!3008771) b!7500152))

(assert (= (and b!7500152 (not res!3008770)) b!7500146))

(assert (= (and b!7500146 (not res!3008769)) b!7500144))

(assert (= (or b!7500151 b!7500152 b!7500154) bm!688468))

(declare-fun m!8082322 () Bool)

(assert (=> b!7500155 m!8082322))

(assert (=> b!7500155 m!8082322))

(declare-fun m!8082324 () Bool)

(assert (=> b!7500155 m!8082324))

(declare-fun m!8082326 () Bool)

(assert (=> b!7500149 m!8082326))

(assert (=> b!7500149 m!8082326))

(declare-fun m!8082328 () Bool)

(assert (=> b!7500149 m!8082328))

(assert (=> b!7500149 m!8082322))

(assert (=> b!7500149 m!8082328))

(assert (=> b!7500149 m!8082322))

(declare-fun m!8082330 () Bool)

(assert (=> b!7500149 m!8082330))

(assert (=> b!7500146 m!8082322))

(assert (=> b!7500146 m!8082322))

(assert (=> b!7500146 m!8082324))

(declare-fun m!8082332 () Bool)

(assert (=> bm!688468 m!8082332))

(declare-fun m!8082334 () Bool)

(assert (=> b!7500145 m!8082334))

(assert (=> d!2302386 m!8082332))

(declare-fun m!8082336 () Bool)

(assert (=> d!2302386 m!8082336))

(assert (=> b!7500148 m!8082326))

(assert (=> b!7500144 m!8082326))

(assert (=> b!7500040 d!2302386))

(declare-fun bs!1937289 () Bool)

(declare-fun b!7500213 () Bool)

(assert (= bs!1937289 (and b!7500213 b!7500046)))

(declare-fun lambda!464854 () Int)

(assert (=> bs!1937289 (not (= lambda!464854 lambda!464836))))

(assert (=> bs!1937289 (not (= lambda!464854 lambda!464837))))

(declare-fun bs!1937290 () Bool)

(assert (= bs!1937290 (and b!7500213 b!7500038)))

(assert (=> bs!1937290 (not (= lambda!464854 lambda!464838))))

(assert (=> bs!1937290 (not (= lambda!464854 lambda!464839))))

(assert (=> b!7500213 true))

(assert (=> b!7500213 true))

(declare-fun bs!1937292 () Bool)

(declare-fun b!7500208 () Bool)

(assert (= bs!1937292 (and b!7500208 b!7500046)))

(declare-fun lambda!464856 () Int)

(assert (=> bs!1937292 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 lt!2631462) lt!2631462) (= (regTwo!39826 lt!2631462) rTail!78)) (= lambda!464856 lambda!464837))))

(assert (=> bs!1937292 (not (= lambda!464856 lambda!464836))))

(declare-fun bs!1937293 () Bool)

(assert (= bs!1937293 (and b!7500208 b!7500213)))

(assert (=> bs!1937293 (not (= lambda!464856 lambda!464854))))

(declare-fun bs!1937294 () Bool)

(assert (= bs!1937294 (and b!7500208 b!7500038)))

(assert (=> bs!1937294 (not (= lambda!464856 lambda!464838))))

(assert (=> bs!1937294 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 lt!2631462) r2!5783) (= (regTwo!39826 lt!2631462) rTail!78)) (= lambda!464856 lambda!464839))))

(assert (=> b!7500208 true))

(assert (=> b!7500208 true))

(declare-fun b!7500206 () Bool)

(declare-fun e!4471613 () Bool)

(assert (=> b!7500206 (= e!4471613 (= (_1!37677 lt!2631466) (Cons!72247 (c!1384588 lt!2631462) Nil!72247)))))

(declare-fun b!7500207 () Bool)

(declare-fun c!1384622 () Bool)

(assert (=> b!7500207 (= c!1384622 ((_ is Union!19657) lt!2631462))))

(declare-fun e!4471616 () Bool)

(assert (=> b!7500207 (= e!4471613 e!4471616)))

(declare-fun e!4471612 () Bool)

(declare-fun call!688479 () Bool)

(assert (=> b!7500208 (= e!4471612 call!688479)))

(declare-fun b!7500209 () Bool)

(declare-fun e!4471611 () Bool)

(declare-fun e!4471617 () Bool)

(assert (=> b!7500209 (= e!4471611 e!4471617)))

(declare-fun res!3008807 () Bool)

(assert (=> b!7500209 (= res!3008807 (not ((_ is EmptyLang!19657) lt!2631462)))))

(assert (=> b!7500209 (=> (not res!3008807) (not e!4471617))))

(declare-fun b!7500210 () Bool)

(declare-fun call!688478 () Bool)

(assert (=> b!7500210 (= e!4471611 call!688478)))

(declare-fun d!2302388 () Bool)

(declare-fun c!1384621 () Bool)

(assert (=> d!2302388 (= c!1384621 ((_ is EmptyExpr!19657) lt!2631462))))

(assert (=> d!2302388 (= (matchRSpec!4334 lt!2631462 (_1!37677 lt!2631466)) e!4471611)))

(declare-fun b!7500211 () Bool)

(declare-fun e!4471614 () Bool)

(assert (=> b!7500211 (= e!4471614 (matchRSpec!4334 (regTwo!39827 lt!2631462) (_1!37677 lt!2631466)))))

(declare-fun b!7500212 () Bool)

(declare-fun c!1384624 () Bool)

(assert (=> b!7500212 (= c!1384624 ((_ is ElementMatch!19657) lt!2631462))))

(assert (=> b!7500212 (= e!4471617 e!4471613)))

(declare-fun e!4471615 () Bool)

(assert (=> b!7500213 (= e!4471615 call!688479)))

(declare-fun b!7500214 () Bool)

(assert (=> b!7500214 (= e!4471616 e!4471614)))

(declare-fun res!3008806 () Bool)

(assert (=> b!7500214 (= res!3008806 (matchRSpec!4334 (regOne!39827 lt!2631462) (_1!37677 lt!2631466)))))

(assert (=> b!7500214 (=> res!3008806 e!4471614)))

(declare-fun b!7500215 () Bool)

(assert (=> b!7500215 (= e!4471616 e!4471612)))

(declare-fun c!1384623 () Bool)

(assert (=> b!7500215 (= c!1384623 ((_ is Star!19657) lt!2631462))))

(declare-fun b!7500216 () Bool)

(declare-fun res!3008805 () Bool)

(assert (=> b!7500216 (=> res!3008805 e!4471615)))

(assert (=> b!7500216 (= res!3008805 call!688478)))

(assert (=> b!7500216 (= e!4471612 e!4471615)))

(declare-fun bm!688473 () Bool)

(assert (=> bm!688473 (= call!688478 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun bm!688474 () Bool)

(assert (=> bm!688474 (= call!688479 (Exists!4274 (ite c!1384623 lambda!464854 lambda!464856)))))

(assert (= (and d!2302388 c!1384621) b!7500210))

(assert (= (and d!2302388 (not c!1384621)) b!7500209))

(assert (= (and b!7500209 res!3008807) b!7500212))

(assert (= (and b!7500212 c!1384624) b!7500206))

(assert (= (and b!7500212 (not c!1384624)) b!7500207))

(assert (= (and b!7500207 c!1384622) b!7500214))

(assert (= (and b!7500207 (not c!1384622)) b!7500215))

(assert (= (and b!7500214 (not res!3008806)) b!7500211))

(assert (= (and b!7500215 c!1384623) b!7500216))

(assert (= (and b!7500215 (not c!1384623)) b!7500208))

(assert (= (and b!7500216 (not res!3008805)) b!7500213))

(assert (= (or b!7500213 b!7500208) bm!688474))

(assert (= (or b!7500210 b!7500216) bm!688473))

(declare-fun m!8082380 () Bool)

(assert (=> b!7500211 m!8082380))

(declare-fun m!8082382 () Bool)

(assert (=> b!7500214 m!8082382))

(assert (=> bm!688473 m!8082332))

(declare-fun m!8082384 () Bool)

(assert (=> bm!688474 m!8082384))

(assert (=> b!7500040 d!2302388))

(declare-fun d!2302404 () Bool)

(assert (=> d!2302404 (= (matchR!9419 lt!2631462 (_1!37677 lt!2631466)) (matchRSpec!4334 lt!2631462 (_1!37677 lt!2631466)))))

(declare-fun lt!2631497 () Unit!166145)

(assert (=> d!2302404 (= lt!2631497 (choose!57978 lt!2631462 (_1!37677 lt!2631466)))))

(assert (=> d!2302404 (validRegex!10171 lt!2631462)))

(assert (=> d!2302404 (= (mainMatchTheorem!4328 lt!2631462 (_1!37677 lt!2631466)) lt!2631497)))

(declare-fun bs!1937297 () Bool)

(assert (= bs!1937297 d!2302404))

(assert (=> bs!1937297 m!8082256))

(assert (=> bs!1937297 m!8082250))

(declare-fun m!8082386 () Bool)

(assert (=> bs!1937297 m!8082386))

(assert (=> bs!1937297 m!8082336))

(assert (=> b!7500040 d!2302404))

(declare-fun bs!1937298 () Bool)

(declare-fun b!7500224 () Bool)

(assert (= bs!1937298 (and b!7500224 b!7500208)))

(declare-fun lambda!464857 () Int)

(assert (=> bs!1937298 (not (= lambda!464857 lambda!464856))))

(declare-fun bs!1937299 () Bool)

(assert (= bs!1937299 (and b!7500224 b!7500046)))

(assert (=> bs!1937299 (not (= lambda!464857 lambda!464837))))

(assert (=> bs!1937299 (not (= lambda!464857 lambda!464836))))

(declare-fun bs!1937300 () Bool)

(assert (= bs!1937300 (and b!7500224 b!7500213)))

(assert (=> bs!1937300 (= (and (= (reg!19986 r2!5783) (reg!19986 lt!2631462)) (= r2!5783 lt!2631462)) (= lambda!464857 lambda!464854))))

(declare-fun bs!1937301 () Bool)

(assert (= bs!1937301 (and b!7500224 b!7500038)))

(assert (=> bs!1937301 (not (= lambda!464857 lambda!464838))))

(assert (=> bs!1937301 (not (= lambda!464857 lambda!464839))))

(assert (=> b!7500224 true))

(assert (=> b!7500224 true))

(declare-fun bs!1937302 () Bool)

(declare-fun b!7500219 () Bool)

(assert (= bs!1937302 (and b!7500219 b!7500208)))

(declare-fun lambda!464858 () Int)

(assert (=> bs!1937302 (= (and (= (regOne!39826 r2!5783) (regOne!39826 lt!2631462)) (= (regTwo!39826 r2!5783) (regTwo!39826 lt!2631462))) (= lambda!464858 lambda!464856))))

(declare-fun bs!1937303 () Bool)

(assert (= bs!1937303 (and b!7500219 b!7500046)))

(assert (=> bs!1937303 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 r2!5783) lt!2631462) (= (regTwo!39826 r2!5783) rTail!78)) (= lambda!464858 lambda!464837))))

(assert (=> bs!1937303 (not (= lambda!464858 lambda!464836))))

(declare-fun bs!1937304 () Bool)

(assert (= bs!1937304 (and b!7500219 b!7500224)))

(assert (=> bs!1937304 (not (= lambda!464858 lambda!464857))))

(declare-fun bs!1937305 () Bool)

(assert (= bs!1937305 (and b!7500219 b!7500213)))

(assert (=> bs!1937305 (not (= lambda!464858 lambda!464854))))

(declare-fun bs!1937306 () Bool)

(assert (= bs!1937306 (and b!7500219 b!7500038)))

(assert (=> bs!1937306 (not (= lambda!464858 lambda!464838))))

(assert (=> bs!1937306 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 r2!5783) r2!5783) (= (regTwo!39826 r2!5783) rTail!78)) (= lambda!464858 lambda!464839))))

(assert (=> b!7500219 true))

(assert (=> b!7500219 true))

(declare-fun b!7500217 () Bool)

(declare-fun e!4471620 () Bool)

(assert (=> b!7500217 (= e!4471620 (= (_1!37677 lt!2631466) (Cons!72247 (c!1384588 r2!5783) Nil!72247)))))

(declare-fun b!7500218 () Bool)

(declare-fun c!1384626 () Bool)

(assert (=> b!7500218 (= c!1384626 ((_ is Union!19657) r2!5783))))

(declare-fun e!4471623 () Bool)

(assert (=> b!7500218 (= e!4471620 e!4471623)))

(declare-fun e!4471619 () Bool)

(declare-fun call!688481 () Bool)

(assert (=> b!7500219 (= e!4471619 call!688481)))

(declare-fun b!7500220 () Bool)

(declare-fun e!4471618 () Bool)

(declare-fun e!4471624 () Bool)

(assert (=> b!7500220 (= e!4471618 e!4471624)))

(declare-fun res!3008810 () Bool)

(assert (=> b!7500220 (= res!3008810 (not ((_ is EmptyLang!19657) r2!5783)))))

(assert (=> b!7500220 (=> (not res!3008810) (not e!4471624))))

(declare-fun b!7500221 () Bool)

(declare-fun call!688480 () Bool)

(assert (=> b!7500221 (= e!4471618 call!688480)))

(declare-fun d!2302406 () Bool)

(declare-fun c!1384625 () Bool)

(assert (=> d!2302406 (= c!1384625 ((_ is EmptyExpr!19657) r2!5783))))

(assert (=> d!2302406 (= (matchRSpec!4334 r2!5783 (_1!37677 lt!2631466)) e!4471618)))

(declare-fun b!7500222 () Bool)

(declare-fun e!4471621 () Bool)

(assert (=> b!7500222 (= e!4471621 (matchRSpec!4334 (regTwo!39827 r2!5783) (_1!37677 lt!2631466)))))

(declare-fun b!7500223 () Bool)

(declare-fun c!1384628 () Bool)

(assert (=> b!7500223 (= c!1384628 ((_ is ElementMatch!19657) r2!5783))))

(assert (=> b!7500223 (= e!4471624 e!4471620)))

(declare-fun e!4471622 () Bool)

(assert (=> b!7500224 (= e!4471622 call!688481)))

(declare-fun b!7500225 () Bool)

(assert (=> b!7500225 (= e!4471623 e!4471621)))

(declare-fun res!3008809 () Bool)

(assert (=> b!7500225 (= res!3008809 (matchRSpec!4334 (regOne!39827 r2!5783) (_1!37677 lt!2631466)))))

(assert (=> b!7500225 (=> res!3008809 e!4471621)))

(declare-fun b!7500226 () Bool)

(assert (=> b!7500226 (= e!4471623 e!4471619)))

(declare-fun c!1384627 () Bool)

(assert (=> b!7500226 (= c!1384627 ((_ is Star!19657) r2!5783))))

(declare-fun b!7500227 () Bool)

(declare-fun res!3008808 () Bool)

(assert (=> b!7500227 (=> res!3008808 e!4471622)))

(assert (=> b!7500227 (= res!3008808 call!688480)))

(assert (=> b!7500227 (= e!4471619 e!4471622)))

(declare-fun bm!688475 () Bool)

(assert (=> bm!688475 (= call!688480 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun bm!688476 () Bool)

(assert (=> bm!688476 (= call!688481 (Exists!4274 (ite c!1384627 lambda!464857 lambda!464858)))))

(assert (= (and d!2302406 c!1384625) b!7500221))

(assert (= (and d!2302406 (not c!1384625)) b!7500220))

(assert (= (and b!7500220 res!3008810) b!7500223))

(assert (= (and b!7500223 c!1384628) b!7500217))

(assert (= (and b!7500223 (not c!1384628)) b!7500218))

(assert (= (and b!7500218 c!1384626) b!7500225))

(assert (= (and b!7500218 (not c!1384626)) b!7500226))

(assert (= (and b!7500225 (not res!3008809)) b!7500222))

(assert (= (and b!7500226 c!1384627) b!7500227))

(assert (= (and b!7500226 (not c!1384627)) b!7500219))

(assert (= (and b!7500227 (not res!3008808)) b!7500224))

(assert (= (or b!7500224 b!7500219) bm!688476))

(assert (= (or b!7500221 b!7500227) bm!688475))

(declare-fun m!8082388 () Bool)

(assert (=> b!7500222 m!8082388))

(declare-fun m!8082390 () Bool)

(assert (=> b!7500225 m!8082390))

(assert (=> bm!688475 m!8082332))

(declare-fun m!8082392 () Bool)

(assert (=> bm!688476 m!8082392))

(assert (=> b!7500040 d!2302406))

(declare-fun bs!1937307 () Bool)

(declare-fun b!7500235 () Bool)

(assert (= bs!1937307 (and b!7500235 b!7500208)))

(declare-fun lambda!464859 () Int)

(assert (=> bs!1937307 (not (= lambda!464859 lambda!464856))))

(declare-fun bs!1937308 () Bool)

(assert (= bs!1937308 (and b!7500235 b!7500046)))

(assert (=> bs!1937308 (not (= lambda!464859 lambda!464837))))

(declare-fun bs!1937309 () Bool)

(assert (= bs!1937309 (and b!7500235 b!7500219)))

(assert (=> bs!1937309 (not (= lambda!464859 lambda!464858))))

(assert (=> bs!1937308 (not (= lambda!464859 lambda!464836))))

(declare-fun bs!1937310 () Bool)

(assert (= bs!1937310 (and b!7500235 b!7500224)))

(assert (=> bs!1937310 (= (and (= (reg!19986 r1!5845) (reg!19986 r2!5783)) (= r1!5845 r2!5783)) (= lambda!464859 lambda!464857))))

(declare-fun bs!1937311 () Bool)

(assert (= bs!1937311 (and b!7500235 b!7500213)))

(assert (=> bs!1937311 (= (and (= (reg!19986 r1!5845) (reg!19986 lt!2631462)) (= r1!5845 lt!2631462)) (= lambda!464859 lambda!464854))))

(declare-fun bs!1937312 () Bool)

(assert (= bs!1937312 (and b!7500235 b!7500038)))

(assert (=> bs!1937312 (not (= lambda!464859 lambda!464838))))

(assert (=> bs!1937312 (not (= lambda!464859 lambda!464839))))

(assert (=> b!7500235 true))

(assert (=> b!7500235 true))

(declare-fun bs!1937313 () Bool)

(declare-fun b!7500230 () Bool)

(assert (= bs!1937313 (and b!7500230 b!7500235)))

(declare-fun lambda!464860 () Int)

(assert (=> bs!1937313 (not (= lambda!464860 lambda!464859))))

(declare-fun bs!1937314 () Bool)

(assert (= bs!1937314 (and b!7500230 b!7500208)))

(assert (=> bs!1937314 (= (and (= (regOne!39826 r1!5845) (regOne!39826 lt!2631462)) (= (regTwo!39826 r1!5845) (regTwo!39826 lt!2631462))) (= lambda!464860 lambda!464856))))

(declare-fun bs!1937315 () Bool)

(assert (= bs!1937315 (and b!7500230 b!7500046)))

(assert (=> bs!1937315 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 r1!5845) lt!2631462) (= (regTwo!39826 r1!5845) rTail!78)) (= lambda!464860 lambda!464837))))

(declare-fun bs!1937316 () Bool)

(assert (= bs!1937316 (and b!7500230 b!7500219)))

(assert (=> bs!1937316 (= (and (= (regOne!39826 r1!5845) (regOne!39826 r2!5783)) (= (regTwo!39826 r1!5845) (regTwo!39826 r2!5783))) (= lambda!464860 lambda!464858))))

(assert (=> bs!1937315 (not (= lambda!464860 lambda!464836))))

(declare-fun bs!1937317 () Bool)

(assert (= bs!1937317 (and b!7500230 b!7500224)))

(assert (=> bs!1937317 (not (= lambda!464860 lambda!464857))))

(declare-fun bs!1937318 () Bool)

(assert (= bs!1937318 (and b!7500230 b!7500213)))

(assert (=> bs!1937318 (not (= lambda!464860 lambda!464854))))

(declare-fun bs!1937319 () Bool)

(assert (= bs!1937319 (and b!7500230 b!7500038)))

(assert (=> bs!1937319 (not (= lambda!464860 lambda!464838))))

(assert (=> bs!1937319 (= (and (= (_1!37677 lt!2631466) s!13591) (= (regOne!39826 r1!5845) r2!5783) (= (regTwo!39826 r1!5845) rTail!78)) (= lambda!464860 lambda!464839))))

(assert (=> b!7500230 true))

(assert (=> b!7500230 true))

(declare-fun b!7500228 () Bool)

(declare-fun e!4471627 () Bool)

(assert (=> b!7500228 (= e!4471627 (= (_1!37677 lt!2631466) (Cons!72247 (c!1384588 r1!5845) Nil!72247)))))

(declare-fun b!7500229 () Bool)

(declare-fun c!1384630 () Bool)

(assert (=> b!7500229 (= c!1384630 ((_ is Union!19657) r1!5845))))

(declare-fun e!4471630 () Bool)

(assert (=> b!7500229 (= e!4471627 e!4471630)))

(declare-fun e!4471626 () Bool)

(declare-fun call!688483 () Bool)

(assert (=> b!7500230 (= e!4471626 call!688483)))

(declare-fun b!7500231 () Bool)

(declare-fun e!4471625 () Bool)

(declare-fun e!4471631 () Bool)

(assert (=> b!7500231 (= e!4471625 e!4471631)))

(declare-fun res!3008813 () Bool)

(assert (=> b!7500231 (= res!3008813 (not ((_ is EmptyLang!19657) r1!5845)))))

(assert (=> b!7500231 (=> (not res!3008813) (not e!4471631))))

(declare-fun b!7500232 () Bool)

(declare-fun call!688482 () Bool)

(assert (=> b!7500232 (= e!4471625 call!688482)))

(declare-fun d!2302408 () Bool)

(declare-fun c!1384629 () Bool)

(assert (=> d!2302408 (= c!1384629 ((_ is EmptyExpr!19657) r1!5845))))

(assert (=> d!2302408 (= (matchRSpec!4334 r1!5845 (_1!37677 lt!2631466)) e!4471625)))

(declare-fun b!7500233 () Bool)

(declare-fun e!4471628 () Bool)

(assert (=> b!7500233 (= e!4471628 (matchRSpec!4334 (regTwo!39827 r1!5845) (_1!37677 lt!2631466)))))

(declare-fun b!7500234 () Bool)

(declare-fun c!1384632 () Bool)

(assert (=> b!7500234 (= c!1384632 ((_ is ElementMatch!19657) r1!5845))))

(assert (=> b!7500234 (= e!4471631 e!4471627)))

(declare-fun e!4471629 () Bool)

(assert (=> b!7500235 (= e!4471629 call!688483)))

(declare-fun b!7500236 () Bool)

(assert (=> b!7500236 (= e!4471630 e!4471628)))

(declare-fun res!3008812 () Bool)

(assert (=> b!7500236 (= res!3008812 (matchRSpec!4334 (regOne!39827 r1!5845) (_1!37677 lt!2631466)))))

(assert (=> b!7500236 (=> res!3008812 e!4471628)))

(declare-fun b!7500237 () Bool)

(assert (=> b!7500237 (= e!4471630 e!4471626)))

(declare-fun c!1384631 () Bool)

(assert (=> b!7500237 (= c!1384631 ((_ is Star!19657) r1!5845))))

(declare-fun b!7500238 () Bool)

(declare-fun res!3008811 () Bool)

(assert (=> b!7500238 (=> res!3008811 e!4471629)))

(assert (=> b!7500238 (= res!3008811 call!688482)))

(assert (=> b!7500238 (= e!4471626 e!4471629)))

(declare-fun bm!688477 () Bool)

(assert (=> bm!688477 (= call!688482 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun bm!688478 () Bool)

(assert (=> bm!688478 (= call!688483 (Exists!4274 (ite c!1384631 lambda!464859 lambda!464860)))))

(assert (= (and d!2302408 c!1384629) b!7500232))

(assert (= (and d!2302408 (not c!1384629)) b!7500231))

(assert (= (and b!7500231 res!3008813) b!7500234))

(assert (= (and b!7500234 c!1384632) b!7500228))

(assert (= (and b!7500234 (not c!1384632)) b!7500229))

(assert (= (and b!7500229 c!1384630) b!7500236))

(assert (= (and b!7500229 (not c!1384630)) b!7500237))

(assert (= (and b!7500236 (not res!3008812)) b!7500233))

(assert (= (and b!7500237 c!1384631) b!7500238))

(assert (= (and b!7500237 (not c!1384631)) b!7500230))

(assert (= (and b!7500238 (not res!3008811)) b!7500235))

(assert (= (or b!7500235 b!7500230) bm!688478))

(assert (= (or b!7500232 b!7500238) bm!688477))

(declare-fun m!8082394 () Bool)

(assert (=> b!7500233 m!8082394))

(declare-fun m!8082396 () Bool)

(assert (=> b!7500236 m!8082396))

(assert (=> bm!688477 m!8082332))

(declare-fun m!8082398 () Bool)

(assert (=> bm!688478 m!8082398))

(assert (=> b!7500040 d!2302408))

(declare-fun d!2302410 () Bool)

(assert (=> d!2302410 (= (matchR!9419 r2!5783 (_1!37677 lt!2631466)) (matchRSpec!4334 r2!5783 (_1!37677 lt!2631466)))))

(declare-fun lt!2631500 () Unit!166145)

(assert (=> d!2302410 (= lt!2631500 (choose!57978 r2!5783 (_1!37677 lt!2631466)))))

(assert (=> d!2302410 (validRegex!10171 r2!5783)))

(assert (=> d!2302410 (= (mainMatchTheorem!4328 r2!5783 (_1!37677 lt!2631466)) lt!2631500)))

(declare-fun bs!1937320 () Bool)

(assert (= bs!1937320 d!2302410))

(assert (=> bs!1937320 m!8082238))

(assert (=> bs!1937320 m!8082244))

(declare-fun m!8082400 () Bool)

(assert (=> bs!1937320 m!8082400))

(assert (=> bs!1937320 m!8082222))

(assert (=> b!7500040 d!2302410))

(declare-fun b!7500267 () Bool)

(declare-fun e!4471650 () Bool)

(declare-fun lt!2631501 () Bool)

(assert (=> b!7500267 (= e!4471650 (not lt!2631501))))

(declare-fun b!7500268 () Bool)

(declare-fun e!4471652 () Bool)

(assert (=> b!7500268 (= e!4471652 (not (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 r1!5845))))))

(declare-fun b!7500269 () Bool)

(declare-fun e!4471649 () Bool)

(assert (=> b!7500269 (= e!4471649 (nullable!8592 r1!5845))))

(declare-fun b!7500270 () Bool)

(declare-fun res!3008831 () Bool)

(assert (=> b!7500270 (=> res!3008831 e!4471652)))

(assert (=> b!7500270 (= res!3008831 (not (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466)))))))

(declare-fun b!7500271 () Bool)

(declare-fun e!4471648 () Bool)

(assert (=> b!7500271 (= e!4471648 e!4471650)))

(declare-fun c!1384641 () Bool)

(assert (=> b!7500271 (= c!1384641 ((_ is EmptyLang!19657) r1!5845))))

(declare-fun d!2302412 () Bool)

(assert (=> d!2302412 e!4471648))

(declare-fun c!1384639 () Bool)

(assert (=> d!2302412 (= c!1384639 ((_ is EmptyExpr!19657) r1!5845))))

(assert (=> d!2302412 (= lt!2631501 e!4471649)))

(declare-fun c!1384640 () Bool)

(assert (=> d!2302412 (= c!1384640 (isEmpty!41289 (_1!37677 lt!2631466)))))

(assert (=> d!2302412 (validRegex!10171 r1!5845)))

(assert (=> d!2302412 (= (matchR!9419 r1!5845 (_1!37677 lt!2631466)) lt!2631501)))

(declare-fun b!7500272 () Bool)

(declare-fun e!4471651 () Bool)

(assert (=> b!7500272 (= e!4471651 (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 r1!5845)))))

(declare-fun b!7500273 () Bool)

(assert (=> b!7500273 (= e!4471649 (matchR!9419 (derivativeStep!5649 r1!5845 (head!15389 (_1!37677 lt!2631466))) (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500274 () Bool)

(declare-fun e!4471647 () Bool)

(declare-fun e!4471646 () Bool)

(assert (=> b!7500274 (= e!4471647 e!4471646)))

(declare-fun res!3008833 () Bool)

(assert (=> b!7500274 (=> (not res!3008833) (not e!4471646))))

(assert (=> b!7500274 (= res!3008833 (not lt!2631501))))

(declare-fun bm!688481 () Bool)

(declare-fun call!688486 () Bool)

(assert (=> bm!688481 (= call!688486 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun b!7500275 () Bool)

(assert (=> b!7500275 (= e!4471648 (= lt!2631501 call!688486))))

(declare-fun b!7500276 () Bool)

(assert (=> b!7500276 (= e!4471646 e!4471652)))

(declare-fun res!3008832 () Bool)

(assert (=> b!7500276 (=> res!3008832 e!4471652)))

(assert (=> b!7500276 (= res!3008832 call!688486)))

(declare-fun b!7500277 () Bool)

(declare-fun res!3008836 () Bool)

(assert (=> b!7500277 (=> res!3008836 e!4471647)))

(assert (=> b!7500277 (= res!3008836 (not ((_ is ElementMatch!19657) r1!5845)))))

(assert (=> b!7500277 (= e!4471650 e!4471647)))

(declare-fun b!7500278 () Bool)

(declare-fun res!3008834 () Bool)

(assert (=> b!7500278 (=> (not res!3008834) (not e!4471651))))

(assert (=> b!7500278 (= res!3008834 (not call!688486))))

(declare-fun b!7500279 () Bool)

(declare-fun res!3008835 () Bool)

(assert (=> b!7500279 (=> (not res!3008835) (not e!4471651))))

(assert (=> b!7500279 (= res!3008835 (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500280 () Bool)

(declare-fun res!3008830 () Bool)

(assert (=> b!7500280 (=> res!3008830 e!4471647)))

(assert (=> b!7500280 (= res!3008830 e!4471651)))

(declare-fun res!3008837 () Bool)

(assert (=> b!7500280 (=> (not res!3008837) (not e!4471651))))

(assert (=> b!7500280 (= res!3008837 lt!2631501)))

(assert (= (and d!2302412 c!1384640) b!7500269))

(assert (= (and d!2302412 (not c!1384640)) b!7500273))

(assert (= (and d!2302412 c!1384639) b!7500275))

(assert (= (and d!2302412 (not c!1384639)) b!7500271))

(assert (= (and b!7500271 c!1384641) b!7500267))

(assert (= (and b!7500271 (not c!1384641)) b!7500277))

(assert (= (and b!7500277 (not res!3008836)) b!7500280))

(assert (= (and b!7500280 res!3008837) b!7500278))

(assert (= (and b!7500278 res!3008834) b!7500279))

(assert (= (and b!7500279 res!3008835) b!7500272))

(assert (= (and b!7500280 (not res!3008830)) b!7500274))

(assert (= (and b!7500274 res!3008833) b!7500276))

(assert (= (and b!7500276 (not res!3008832)) b!7500270))

(assert (= (and b!7500270 (not res!3008831)) b!7500268))

(assert (= (or b!7500275 b!7500276 b!7500278) bm!688481))

(assert (=> b!7500279 m!8082322))

(assert (=> b!7500279 m!8082322))

(assert (=> b!7500279 m!8082324))

(assert (=> b!7500273 m!8082326))

(assert (=> b!7500273 m!8082326))

(declare-fun m!8082402 () Bool)

(assert (=> b!7500273 m!8082402))

(assert (=> b!7500273 m!8082322))

(assert (=> b!7500273 m!8082402))

(assert (=> b!7500273 m!8082322))

(declare-fun m!8082404 () Bool)

(assert (=> b!7500273 m!8082404))

(assert (=> b!7500270 m!8082322))

(assert (=> b!7500270 m!8082322))

(assert (=> b!7500270 m!8082324))

(assert (=> bm!688481 m!8082332))

(declare-fun m!8082406 () Bool)

(assert (=> b!7500269 m!8082406))

(assert (=> d!2302412 m!8082332))

(assert (=> d!2302412 m!8082224))

(assert (=> b!7500272 m!8082326))

(assert (=> b!7500268 m!8082326))

(assert (=> b!7500040 d!2302412))

(declare-fun bs!1937328 () Bool)

(declare-fun d!2302414 () Bool)

(assert (= bs!1937328 (and d!2302414 b!7500235)))

(declare-fun lambda!464866 () Int)

(assert (=> bs!1937328 (not (= lambda!464866 lambda!464859))))

(declare-fun bs!1937329 () Bool)

(assert (= bs!1937329 (and d!2302414 b!7500208)))

(assert (=> bs!1937329 (not (= lambda!464866 lambda!464856))))

(declare-fun bs!1937330 () Bool)

(assert (= bs!1937330 (and d!2302414 b!7500046)))

(assert (=> bs!1937330 (not (= lambda!464866 lambda!464837))))

(declare-fun bs!1937331 () Bool)

(assert (= bs!1937331 (and d!2302414 b!7500219)))

(assert (=> bs!1937331 (not (= lambda!464866 lambda!464858))))

(assert (=> bs!1937330 (= lambda!464866 lambda!464836)))

(declare-fun bs!1937332 () Bool)

(assert (= bs!1937332 (and d!2302414 b!7500224)))

(assert (=> bs!1937332 (not (= lambda!464866 lambda!464857))))

(declare-fun bs!1937333 () Bool)

(assert (= bs!1937333 (and d!2302414 b!7500213)))

(assert (=> bs!1937333 (not (= lambda!464866 lambda!464854))))

(declare-fun bs!1937334 () Bool)

(assert (= bs!1937334 (and d!2302414 b!7500038)))

(assert (=> bs!1937334 (= (= lt!2631462 r2!5783) (= lambda!464866 lambda!464838))))

(declare-fun bs!1937335 () Bool)

(assert (= bs!1937335 (and d!2302414 b!7500230)))

(assert (=> bs!1937335 (not (= lambda!464866 lambda!464860))))

(assert (=> bs!1937334 (not (= lambda!464866 lambda!464839))))

(assert (=> d!2302414 true))

(assert (=> d!2302414 true))

(assert (=> d!2302414 true))

(declare-fun lambda!464867 () Int)

(assert (=> bs!1937328 (not (= lambda!464867 lambda!464859))))

(assert (=> bs!1937329 (= (and (= s!13591 (_1!37677 lt!2631466)) (= lt!2631462 (regOne!39826 lt!2631462)) (= rTail!78 (regTwo!39826 lt!2631462))) (= lambda!464867 lambda!464856))))

(assert (=> bs!1937330 (= lambda!464867 lambda!464837)))

(assert (=> bs!1937331 (= (and (= s!13591 (_1!37677 lt!2631466)) (= lt!2631462 (regOne!39826 r2!5783)) (= rTail!78 (regTwo!39826 r2!5783))) (= lambda!464867 lambda!464858))))

(assert (=> bs!1937330 (not (= lambda!464867 lambda!464836))))

(assert (=> bs!1937332 (not (= lambda!464867 lambda!464857))))

(assert (=> bs!1937333 (not (= lambda!464867 lambda!464854))))

(assert (=> bs!1937334 (not (= lambda!464867 lambda!464838))))

(declare-fun bs!1937336 () Bool)

(assert (= bs!1937336 d!2302414))

(assert (=> bs!1937336 (not (= lambda!464867 lambda!464866))))

(assert (=> bs!1937335 (= (and (= s!13591 (_1!37677 lt!2631466)) (= lt!2631462 (regOne!39826 r1!5845)) (= rTail!78 (regTwo!39826 r1!5845))) (= lambda!464867 lambda!464860))))

(assert (=> bs!1937334 (= (= lt!2631462 r2!5783) (= lambda!464867 lambda!464839))))

(assert (=> d!2302414 true))

(assert (=> d!2302414 true))

(assert (=> d!2302414 true))

(assert (=> d!2302414 (= (Exists!4274 lambda!464866) (Exists!4274 lambda!464867))))

(declare-fun lt!2631509 () Unit!166145)

(declare-fun choose!57980 (Regex!19657 Regex!19657 List!72371) Unit!166145)

(assert (=> d!2302414 (= lt!2631509 (choose!57980 lt!2631462 rTail!78 s!13591))))

(assert (=> d!2302414 (validRegex!10171 lt!2631462)))

(assert (=> d!2302414 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2598 lt!2631462 rTail!78 s!13591) lt!2631509)))

(declare-fun m!8082444 () Bool)

(assert (=> bs!1937336 m!8082444))

(declare-fun m!8082446 () Bool)

(assert (=> bs!1937336 m!8082446))

(declare-fun m!8082448 () Bool)

(assert (=> bs!1937336 m!8082448))

(assert (=> bs!1937336 m!8082336))

(assert (=> b!7500046 d!2302414))

(declare-fun d!2302426 () Bool)

(declare-fun choose!57981 (Int) Bool)

(assert (=> d!2302426 (= (Exists!4274 lambda!464836) (choose!57981 lambda!464836))))

(declare-fun bs!1937337 () Bool)

(assert (= bs!1937337 d!2302426))

(declare-fun m!8082450 () Bool)

(assert (=> bs!1937337 m!8082450))

(assert (=> b!7500046 d!2302426))

(declare-fun d!2302428 () Bool)

(assert (=> d!2302428 (= (Exists!4274 lambda!464837) (choose!57981 lambda!464837))))

(declare-fun bs!1937338 () Bool)

(assert (= bs!1937338 d!2302428))

(declare-fun m!8082452 () Bool)

(assert (=> bs!1937338 m!8082452))

(assert (=> b!7500046 d!2302428))

(declare-fun b!7500384 () Bool)

(declare-fun e!4471712 () Bool)

(assert (=> b!7500384 (= e!4471712 (matchR!9419 rTail!78 s!13591))))

(declare-fun b!7500385 () Bool)

(declare-fun e!4471715 () Option!17206)

(assert (=> b!7500385 (= e!4471715 None!17205)))

(declare-fun d!2302430 () Bool)

(declare-fun e!4471713 () Bool)

(assert (=> d!2302430 e!4471713))

(declare-fun res!3008894 () Bool)

(assert (=> d!2302430 (=> res!3008894 e!4471713)))

(declare-fun e!4471711 () Bool)

(assert (=> d!2302430 (= res!3008894 e!4471711)))

(declare-fun res!3008892 () Bool)

(assert (=> d!2302430 (=> (not res!3008892) (not e!4471711))))

(declare-fun lt!2631518 () Option!17206)

(assert (=> d!2302430 (= res!3008892 (isDefined!13895 lt!2631518))))

(declare-fun e!4471714 () Option!17206)

(assert (=> d!2302430 (= lt!2631518 e!4471714)))

(declare-fun c!1384667 () Bool)

(assert (=> d!2302430 (= c!1384667 e!4471712)))

(declare-fun res!3008895 () Bool)

(assert (=> d!2302430 (=> (not res!3008895) (not e!4471712))))

(assert (=> d!2302430 (= res!3008895 (matchR!9419 lt!2631462 Nil!72247))))

(assert (=> d!2302430 (validRegex!10171 lt!2631462)))

(assert (=> d!2302430 (= (findConcatSeparation!3328 lt!2631462 rTail!78 Nil!72247 s!13591 s!13591) lt!2631518)))

(declare-fun b!7500386 () Bool)

(assert (=> b!7500386 (= e!4471714 (Some!17205 (tuple2!68749 Nil!72247 s!13591)))))

(declare-fun b!7500387 () Bool)

(assert (=> b!7500387 (= e!4471713 (not (isDefined!13895 lt!2631518)))))

(declare-fun b!7500388 () Bool)

(declare-fun res!3008891 () Bool)

(assert (=> b!7500388 (=> (not res!3008891) (not e!4471711))))

(assert (=> b!7500388 (= res!3008891 (matchR!9419 rTail!78 (_2!37677 (get!25341 lt!2631518))))))

(declare-fun b!7500389 () Bool)

(declare-fun lt!2631517 () Unit!166145)

(declare-fun lt!2631516 () Unit!166145)

(assert (=> b!7500389 (= lt!2631517 lt!2631516)))

(assert (=> b!7500389 (= (++!17262 (++!17262 Nil!72247 (Cons!72247 (h!78695 s!13591) Nil!72247)) (t!386940 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3136 (List!72371 C!39588 List!72371 List!72371) Unit!166145)

(assert (=> b!7500389 (= lt!2631516 (lemmaMoveElementToOtherListKeepsConcatEq!3136 Nil!72247 (h!78695 s!13591) (t!386940 s!13591) s!13591))))

(assert (=> b!7500389 (= e!4471715 (findConcatSeparation!3328 lt!2631462 rTail!78 (++!17262 Nil!72247 (Cons!72247 (h!78695 s!13591) Nil!72247)) (t!386940 s!13591) s!13591))))

(declare-fun b!7500390 () Bool)

(declare-fun res!3008893 () Bool)

(assert (=> b!7500390 (=> (not res!3008893) (not e!4471711))))

(assert (=> b!7500390 (= res!3008893 (matchR!9419 lt!2631462 (_1!37677 (get!25341 lt!2631518))))))

(declare-fun b!7500391 () Bool)

(assert (=> b!7500391 (= e!4471714 e!4471715)))

(declare-fun c!1384668 () Bool)

(assert (=> b!7500391 (= c!1384668 ((_ is Nil!72247) s!13591))))

(declare-fun b!7500392 () Bool)

(assert (=> b!7500392 (= e!4471711 (= (++!17262 (_1!37677 (get!25341 lt!2631518)) (_2!37677 (get!25341 lt!2631518))) s!13591))))

(assert (= (and d!2302430 res!3008895) b!7500384))

(assert (= (and d!2302430 c!1384667) b!7500386))

(assert (= (and d!2302430 (not c!1384667)) b!7500391))

(assert (= (and b!7500391 c!1384668) b!7500385))

(assert (= (and b!7500391 (not c!1384668)) b!7500389))

(assert (= (and d!2302430 res!3008892) b!7500390))

(assert (= (and b!7500390 res!3008893) b!7500388))

(assert (= (and b!7500388 res!3008891) b!7500392))

(assert (= (and d!2302430 (not res!3008894)) b!7500387))

(declare-fun m!8082468 () Bool)

(assert (=> b!7500388 m!8082468))

(declare-fun m!8082470 () Bool)

(assert (=> b!7500388 m!8082470))

(declare-fun m!8082472 () Bool)

(assert (=> b!7500384 m!8082472))

(assert (=> b!7500392 m!8082468))

(declare-fun m!8082474 () Bool)

(assert (=> b!7500392 m!8082474))

(assert (=> b!7500390 m!8082468))

(declare-fun m!8082476 () Bool)

(assert (=> b!7500390 m!8082476))

(declare-fun m!8082478 () Bool)

(assert (=> d!2302430 m!8082478))

(declare-fun m!8082480 () Bool)

(assert (=> d!2302430 m!8082480))

(assert (=> d!2302430 m!8082336))

(assert (=> b!7500387 m!8082478))

(declare-fun m!8082482 () Bool)

(assert (=> b!7500389 m!8082482))

(assert (=> b!7500389 m!8082482))

(declare-fun m!8082484 () Bool)

(assert (=> b!7500389 m!8082484))

(declare-fun m!8082486 () Bool)

(assert (=> b!7500389 m!8082486))

(assert (=> b!7500389 m!8082482))

(declare-fun m!8082488 () Bool)

(assert (=> b!7500389 m!8082488))

(assert (=> b!7500046 d!2302430))

(declare-fun bs!1937371 () Bool)

(declare-fun d!2302436 () Bool)

(assert (= bs!1937371 (and d!2302436 b!7500235)))

(declare-fun lambda!464878 () Int)

(assert (=> bs!1937371 (not (= lambda!464878 lambda!464859))))

(declare-fun bs!1937372 () Bool)

(assert (= bs!1937372 (and d!2302436 b!7500208)))

(assert (=> bs!1937372 (not (= lambda!464878 lambda!464856))))

(declare-fun bs!1937373 () Bool)

(assert (= bs!1937373 (and d!2302436 b!7500046)))

(assert (=> bs!1937373 (not (= lambda!464878 lambda!464837))))

(declare-fun bs!1937374 () Bool)

(assert (= bs!1937374 (and d!2302436 d!2302414)))

(assert (=> bs!1937374 (not (= lambda!464878 lambda!464867))))

(declare-fun bs!1937375 () Bool)

(assert (= bs!1937375 (and d!2302436 b!7500219)))

(assert (=> bs!1937375 (not (= lambda!464878 lambda!464858))))

(assert (=> bs!1937373 (= lambda!464878 lambda!464836)))

(declare-fun bs!1937376 () Bool)

(assert (= bs!1937376 (and d!2302436 b!7500224)))

(assert (=> bs!1937376 (not (= lambda!464878 lambda!464857))))

(declare-fun bs!1937377 () Bool)

(assert (= bs!1937377 (and d!2302436 b!7500213)))

(assert (=> bs!1937377 (not (= lambda!464878 lambda!464854))))

(declare-fun bs!1937378 () Bool)

(assert (= bs!1937378 (and d!2302436 b!7500038)))

(assert (=> bs!1937378 (= (= lt!2631462 r2!5783) (= lambda!464878 lambda!464838))))

(assert (=> bs!1937374 (= lambda!464878 lambda!464866)))

(declare-fun bs!1937379 () Bool)

(assert (= bs!1937379 (and d!2302436 b!7500230)))

(assert (=> bs!1937379 (not (= lambda!464878 lambda!464860))))

(assert (=> bs!1937378 (not (= lambda!464878 lambda!464839))))

(assert (=> d!2302436 true))

(assert (=> d!2302436 true))

(assert (=> d!2302436 true))

(assert (=> d!2302436 (= (isDefined!13895 (findConcatSeparation!3328 lt!2631462 rTail!78 Nil!72247 s!13591 s!13591)) (Exists!4274 lambda!464878))))

(declare-fun lt!2631527 () Unit!166145)

(declare-fun choose!57982 (Regex!19657 Regex!19657 List!72371) Unit!166145)

(assert (=> d!2302436 (= lt!2631527 (choose!57982 lt!2631462 rTail!78 s!13591))))

(assert (=> d!2302436 (validRegex!10171 lt!2631462)))

(assert (=> d!2302436 (= (lemmaFindConcatSeparationEquivalentToExists!3086 lt!2631462 rTail!78 s!13591) lt!2631527)))

(declare-fun bs!1937380 () Bool)

(assert (= bs!1937380 d!2302436))

(assert (=> bs!1937380 m!8082336))

(declare-fun m!8082516 () Bool)

(assert (=> bs!1937380 m!8082516))

(declare-fun m!8082518 () Bool)

(assert (=> bs!1937380 m!8082518))

(assert (=> bs!1937380 m!8082212))

(assert (=> bs!1937380 m!8082212))

(assert (=> bs!1937380 m!8082214))

(assert (=> b!7500046 d!2302436))

(declare-fun d!2302446 () Bool)

(declare-fun isEmpty!41291 (Option!17206) Bool)

(assert (=> d!2302446 (= (isDefined!13895 (findConcatSeparation!3328 lt!2631462 rTail!78 Nil!72247 s!13591 s!13591)) (not (isEmpty!41291 (findConcatSeparation!3328 lt!2631462 rTail!78 Nil!72247 s!13591 s!13591))))))

(declare-fun bs!1937381 () Bool)

(assert (= bs!1937381 d!2302446))

(assert (=> bs!1937381 m!8082212))

(declare-fun m!8082520 () Bool)

(assert (=> bs!1937381 m!8082520))

(assert (=> b!7500046 d!2302446))

(declare-fun b!7500452 () Bool)

(declare-fun e!4471757 () Bool)

(declare-fun call!688509 () Bool)

(assert (=> b!7500452 (= e!4471757 call!688509)))

(declare-fun b!7500453 () Bool)

(declare-fun e!4471759 () Bool)

(declare-fun e!4471758 () Bool)

(assert (=> b!7500453 (= e!4471759 e!4471758)))

(declare-fun c!1384681 () Bool)

(assert (=> b!7500453 (= c!1384681 ((_ is Union!19657) r1!5845))))

(declare-fun b!7500454 () Bool)

(declare-fun res!3008934 () Bool)

(declare-fun e!4471756 () Bool)

(assert (=> b!7500454 (=> (not res!3008934) (not e!4471756))))

(declare-fun call!688508 () Bool)

(assert (=> b!7500454 (= res!3008934 call!688508)))

(assert (=> b!7500454 (= e!4471758 e!4471756)))

(declare-fun b!7500455 () Bool)

(assert (=> b!7500455 (= e!4471756 call!688509)))

(declare-fun b!7500456 () Bool)

(declare-fun e!4471753 () Bool)

(assert (=> b!7500456 (= e!4471759 e!4471753)))

(declare-fun res!3008933 () Bool)

(assert (=> b!7500456 (= res!3008933 (not (nullable!8592 (reg!19986 r1!5845))))))

(assert (=> b!7500456 (=> (not res!3008933) (not e!4471753))))

(declare-fun c!1384682 () Bool)

(declare-fun bm!688502 () Bool)

(declare-fun call!688507 () Bool)

(assert (=> bm!688502 (= call!688507 (validRegex!10171 (ite c!1384682 (reg!19986 r1!5845) (ite c!1384681 (regOne!39827 r1!5845) (regOne!39826 r1!5845)))))))

(declare-fun b!7500457 () Bool)

(declare-fun res!3008932 () Bool)

(declare-fun e!4471755 () Bool)

(assert (=> b!7500457 (=> res!3008932 e!4471755)))

(assert (=> b!7500457 (= res!3008932 (not ((_ is Concat!28502) r1!5845)))))

(assert (=> b!7500457 (= e!4471758 e!4471755)))

(declare-fun b!7500458 () Bool)

(declare-fun e!4471754 () Bool)

(assert (=> b!7500458 (= e!4471754 e!4471759)))

(assert (=> b!7500458 (= c!1384682 ((_ is Star!19657) r1!5845))))

(declare-fun bm!688503 () Bool)

(assert (=> bm!688503 (= call!688509 (validRegex!10171 (ite c!1384681 (regTwo!39827 r1!5845) (regTwo!39826 r1!5845))))))

(declare-fun bm!688504 () Bool)

(assert (=> bm!688504 (= call!688508 call!688507)))

(declare-fun b!7500459 () Bool)

(assert (=> b!7500459 (= e!4471753 call!688507)))

(declare-fun d!2302448 () Bool)

(declare-fun res!3008935 () Bool)

(assert (=> d!2302448 (=> res!3008935 e!4471754)))

(assert (=> d!2302448 (= res!3008935 ((_ is ElementMatch!19657) r1!5845))))

(assert (=> d!2302448 (= (validRegex!10171 r1!5845) e!4471754)))

(declare-fun b!7500460 () Bool)

(assert (=> b!7500460 (= e!4471755 e!4471757)))

(declare-fun res!3008931 () Bool)

(assert (=> b!7500460 (=> (not res!3008931) (not e!4471757))))

(assert (=> b!7500460 (= res!3008931 call!688508)))

(assert (= (and d!2302448 (not res!3008935)) b!7500458))

(assert (= (and b!7500458 c!1384682) b!7500456))

(assert (= (and b!7500458 (not c!1384682)) b!7500453))

(assert (= (and b!7500456 res!3008933) b!7500459))

(assert (= (and b!7500453 c!1384681) b!7500454))

(assert (= (and b!7500453 (not c!1384681)) b!7500457))

(assert (= (and b!7500454 res!3008934) b!7500455))

(assert (= (and b!7500457 (not res!3008932)) b!7500460))

(assert (= (and b!7500460 res!3008931) b!7500452))

(assert (= (or b!7500455 b!7500452) bm!688503))

(assert (= (or b!7500454 b!7500460) bm!688504))

(assert (= (or b!7500459 bm!688504) bm!688502))

(declare-fun m!8082528 () Bool)

(assert (=> b!7500456 m!8082528))

(declare-fun m!8082530 () Bool)

(assert (=> bm!688502 m!8082530))

(declare-fun m!8082532 () Bool)

(assert (=> bm!688503 m!8082532))

(assert (=> start!725622 d!2302448))

(declare-fun b!7500475 () Bool)

(declare-fun e!4471771 () Bool)

(declare-fun call!688513 () Bool)

(assert (=> b!7500475 (= e!4471771 call!688513)))

(declare-fun b!7500476 () Bool)

(declare-fun e!4471773 () Bool)

(declare-fun e!4471772 () Bool)

(assert (=> b!7500476 (= e!4471773 e!4471772)))

(declare-fun c!1384686 () Bool)

(assert (=> b!7500476 (= c!1384686 ((_ is Union!19657) rTail!78))))

(declare-fun b!7500477 () Bool)

(declare-fun res!3008947 () Bool)

(declare-fun e!4471770 () Bool)

(assert (=> b!7500477 (=> (not res!3008947) (not e!4471770))))

(declare-fun call!688512 () Bool)

(assert (=> b!7500477 (= res!3008947 call!688512)))

(assert (=> b!7500477 (= e!4471772 e!4471770)))

(declare-fun b!7500478 () Bool)

(assert (=> b!7500478 (= e!4471770 call!688513)))

(declare-fun b!7500479 () Bool)

(declare-fun e!4471767 () Bool)

(assert (=> b!7500479 (= e!4471773 e!4471767)))

(declare-fun res!3008946 () Bool)

(assert (=> b!7500479 (= res!3008946 (not (nullable!8592 (reg!19986 rTail!78))))))

(assert (=> b!7500479 (=> (not res!3008946) (not e!4471767))))

(declare-fun call!688511 () Bool)

(declare-fun c!1384687 () Bool)

(declare-fun bm!688506 () Bool)

(assert (=> bm!688506 (= call!688511 (validRegex!10171 (ite c!1384687 (reg!19986 rTail!78) (ite c!1384686 (regOne!39827 rTail!78) (regOne!39826 rTail!78)))))))

(declare-fun b!7500480 () Bool)

(declare-fun res!3008945 () Bool)

(declare-fun e!4471769 () Bool)

(assert (=> b!7500480 (=> res!3008945 e!4471769)))

(assert (=> b!7500480 (= res!3008945 (not ((_ is Concat!28502) rTail!78)))))

(assert (=> b!7500480 (= e!4471772 e!4471769)))

(declare-fun b!7500481 () Bool)

(declare-fun e!4471768 () Bool)

(assert (=> b!7500481 (= e!4471768 e!4471773)))

(assert (=> b!7500481 (= c!1384687 ((_ is Star!19657) rTail!78))))

(declare-fun bm!688507 () Bool)

(assert (=> bm!688507 (= call!688513 (validRegex!10171 (ite c!1384686 (regTwo!39827 rTail!78) (regTwo!39826 rTail!78))))))

(declare-fun bm!688508 () Bool)

(assert (=> bm!688508 (= call!688512 call!688511)))

(declare-fun b!7500482 () Bool)

(assert (=> b!7500482 (= e!4471767 call!688511)))

(declare-fun d!2302452 () Bool)

(declare-fun res!3008948 () Bool)

(assert (=> d!2302452 (=> res!3008948 e!4471768)))

(assert (=> d!2302452 (= res!3008948 ((_ is ElementMatch!19657) rTail!78))))

(assert (=> d!2302452 (= (validRegex!10171 rTail!78) e!4471768)))

(declare-fun b!7500483 () Bool)

(assert (=> b!7500483 (= e!4471769 e!4471771)))

(declare-fun res!3008944 () Bool)

(assert (=> b!7500483 (=> (not res!3008944) (not e!4471771))))

(assert (=> b!7500483 (= res!3008944 call!688512)))

(assert (= (and d!2302452 (not res!3008948)) b!7500481))

(assert (= (and b!7500481 c!1384687) b!7500479))

(assert (= (and b!7500481 (not c!1384687)) b!7500476))

(assert (= (and b!7500479 res!3008946) b!7500482))

(assert (= (and b!7500476 c!1384686) b!7500477))

(assert (= (and b!7500476 (not c!1384686)) b!7500480))

(assert (= (and b!7500477 res!3008947) b!7500478))

(assert (= (and b!7500480 (not res!3008945)) b!7500483))

(assert (= (and b!7500483 res!3008944) b!7500475))

(assert (= (or b!7500478 b!7500475) bm!688507))

(assert (= (or b!7500477 b!7500483) bm!688508))

(assert (= (or b!7500482 bm!688508) bm!688506))

(declare-fun m!8082534 () Bool)

(assert (=> b!7500479 m!8082534))

(declare-fun m!8082536 () Bool)

(assert (=> bm!688506 m!8082536))

(declare-fun m!8082538 () Bool)

(assert (=> bm!688507 m!8082538))

(assert (=> b!7500028 d!2302452))

(declare-fun bs!1937382 () Bool)

(declare-fun b!7500491 () Bool)

(assert (= bs!1937382 (and b!7500491 b!7500235)))

(declare-fun lambda!464879 () Int)

(assert (=> bs!1937382 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631453) (reg!19986 r1!5845)) (= lt!2631453 r1!5845)) (= lambda!464879 lambda!464859))))

(declare-fun bs!1937383 () Bool)

(assert (= bs!1937383 (and b!7500491 b!7500208)))

(assert (=> bs!1937383 (not (= lambda!464879 lambda!464856))))

(declare-fun bs!1937384 () Bool)

(assert (= bs!1937384 (and b!7500491 b!7500046)))

(assert (=> bs!1937384 (not (= lambda!464879 lambda!464837))))

(declare-fun bs!1937386 () Bool)

(assert (= bs!1937386 (and b!7500491 b!7500219)))

(assert (=> bs!1937386 (not (= lambda!464879 lambda!464858))))

(assert (=> bs!1937384 (not (= lambda!464879 lambda!464836))))

(declare-fun bs!1937388 () Bool)

(assert (= bs!1937388 (and b!7500491 b!7500224)))

(assert (=> bs!1937388 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631453) (reg!19986 r2!5783)) (= lt!2631453 r2!5783)) (= lambda!464879 lambda!464857))))

(declare-fun bs!1937390 () Bool)

(assert (= bs!1937390 (and b!7500491 b!7500213)))

(assert (=> bs!1937390 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631453) (reg!19986 lt!2631462)) (= lt!2631453 lt!2631462)) (= lambda!464879 lambda!464854))))

(declare-fun bs!1937392 () Bool)

(assert (= bs!1937392 (and b!7500491 d!2302436)))

(assert (=> bs!1937392 (not (= lambda!464879 lambda!464878))))

(declare-fun bs!1937394 () Bool)

(assert (= bs!1937394 (and b!7500491 d!2302414)))

(assert (=> bs!1937394 (not (= lambda!464879 lambda!464867))))

(declare-fun bs!1937396 () Bool)

(assert (= bs!1937396 (and b!7500491 b!7500038)))

(assert (=> bs!1937396 (not (= lambda!464879 lambda!464838))))

(assert (=> bs!1937394 (not (= lambda!464879 lambda!464866))))

(declare-fun bs!1937398 () Bool)

(assert (= bs!1937398 (and b!7500491 b!7500230)))

(assert (=> bs!1937398 (not (= lambda!464879 lambda!464860))))

(assert (=> bs!1937396 (not (= lambda!464879 lambda!464839))))

(assert (=> b!7500491 true))

(assert (=> b!7500491 true))

(declare-fun bs!1937402 () Bool)

(declare-fun b!7500486 () Bool)

(assert (= bs!1937402 (and b!7500486 b!7500235)))

(declare-fun lambda!464881 () Int)

(assert (=> bs!1937402 (not (= lambda!464881 lambda!464859))))

(declare-fun bs!1937403 () Bool)

(assert (= bs!1937403 (and b!7500486 b!7500208)))

(assert (=> bs!1937403 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631453) (regOne!39826 lt!2631462)) (= (regTwo!39826 lt!2631453) (regTwo!39826 lt!2631462))) (= lambda!464881 lambda!464856))))

(declare-fun bs!1937404 () Bool)

(assert (= bs!1937404 (and b!7500486 b!7500046)))

(assert (=> bs!1937404 (= (and (= (regOne!39826 lt!2631453) lt!2631462) (= (regTwo!39826 lt!2631453) rTail!78)) (= lambda!464881 lambda!464837))))

(assert (=> bs!1937404 (not (= lambda!464881 lambda!464836))))

(declare-fun bs!1937405 () Bool)

(assert (= bs!1937405 (and b!7500486 b!7500224)))

(assert (=> bs!1937405 (not (= lambda!464881 lambda!464857))))

(declare-fun bs!1937407 () Bool)

(assert (= bs!1937407 (and b!7500486 b!7500213)))

(assert (=> bs!1937407 (not (= lambda!464881 lambda!464854))))

(declare-fun bs!1937409 () Bool)

(assert (= bs!1937409 (and b!7500486 d!2302436)))

(assert (=> bs!1937409 (not (= lambda!464881 lambda!464878))))

(declare-fun bs!1937411 () Bool)

(assert (= bs!1937411 (and b!7500486 d!2302414)))

(assert (=> bs!1937411 (= (and (= (regOne!39826 lt!2631453) lt!2631462) (= (regTwo!39826 lt!2631453) rTail!78)) (= lambda!464881 lambda!464867))))

(declare-fun bs!1937414 () Bool)

(assert (= bs!1937414 (and b!7500486 b!7500219)))

(assert (=> bs!1937414 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631453) (regOne!39826 r2!5783)) (= (regTwo!39826 lt!2631453) (regTwo!39826 r2!5783))) (= lambda!464881 lambda!464858))))

(declare-fun bs!1937416 () Bool)

(assert (= bs!1937416 (and b!7500486 b!7500491)))

(assert (=> bs!1937416 (not (= lambda!464881 lambda!464879))))

(declare-fun bs!1937418 () Bool)

(assert (= bs!1937418 (and b!7500486 b!7500038)))

(assert (=> bs!1937418 (not (= lambda!464881 lambda!464838))))

(assert (=> bs!1937411 (not (= lambda!464881 lambda!464866))))

(declare-fun bs!1937420 () Bool)

(assert (= bs!1937420 (and b!7500486 b!7500230)))

(assert (=> bs!1937420 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631453) (regOne!39826 r1!5845)) (= (regTwo!39826 lt!2631453) (regTwo!39826 r1!5845))) (= lambda!464881 lambda!464860))))

(assert (=> bs!1937418 (= (and (= (regOne!39826 lt!2631453) r2!5783) (= (regTwo!39826 lt!2631453) rTail!78)) (= lambda!464881 lambda!464839))))

(assert (=> b!7500486 true))

(assert (=> b!7500486 true))

(declare-fun b!7500484 () Bool)

(declare-fun e!4471776 () Bool)

(assert (=> b!7500484 (= e!4471776 (= s!13591 (Cons!72247 (c!1384588 lt!2631453) Nil!72247)))))

(declare-fun b!7500485 () Bool)

(declare-fun c!1384689 () Bool)

(assert (=> b!7500485 (= c!1384689 ((_ is Union!19657) lt!2631453))))

(declare-fun e!4471779 () Bool)

(assert (=> b!7500485 (= e!4471776 e!4471779)))

(declare-fun e!4471775 () Bool)

(declare-fun call!688515 () Bool)

(assert (=> b!7500486 (= e!4471775 call!688515)))

(declare-fun b!7500487 () Bool)

(declare-fun e!4471774 () Bool)

(declare-fun e!4471780 () Bool)

(assert (=> b!7500487 (= e!4471774 e!4471780)))

(declare-fun res!3008951 () Bool)

(assert (=> b!7500487 (= res!3008951 (not ((_ is EmptyLang!19657) lt!2631453)))))

(assert (=> b!7500487 (=> (not res!3008951) (not e!4471780))))

(declare-fun b!7500488 () Bool)

(declare-fun call!688514 () Bool)

(assert (=> b!7500488 (= e!4471774 call!688514)))

(declare-fun d!2302454 () Bool)

(declare-fun c!1384688 () Bool)

(assert (=> d!2302454 (= c!1384688 ((_ is EmptyExpr!19657) lt!2631453))))

(assert (=> d!2302454 (= (matchRSpec!4334 lt!2631453 s!13591) e!4471774)))

(declare-fun b!7500489 () Bool)

(declare-fun e!4471777 () Bool)

(assert (=> b!7500489 (= e!4471777 (matchRSpec!4334 (regTwo!39827 lt!2631453) s!13591))))

(declare-fun b!7500490 () Bool)

(declare-fun c!1384691 () Bool)

(assert (=> b!7500490 (= c!1384691 ((_ is ElementMatch!19657) lt!2631453))))

(assert (=> b!7500490 (= e!4471780 e!4471776)))

(declare-fun e!4471778 () Bool)

(assert (=> b!7500491 (= e!4471778 call!688515)))

(declare-fun b!7500492 () Bool)

(assert (=> b!7500492 (= e!4471779 e!4471777)))

(declare-fun res!3008950 () Bool)

(assert (=> b!7500492 (= res!3008950 (matchRSpec!4334 (regOne!39827 lt!2631453) s!13591))))

(assert (=> b!7500492 (=> res!3008950 e!4471777)))

(declare-fun b!7500493 () Bool)

(assert (=> b!7500493 (= e!4471779 e!4471775)))

(declare-fun c!1384690 () Bool)

(assert (=> b!7500493 (= c!1384690 ((_ is Star!19657) lt!2631453))))

(declare-fun b!7500494 () Bool)

(declare-fun res!3008949 () Bool)

(assert (=> b!7500494 (=> res!3008949 e!4471778)))

(assert (=> b!7500494 (= res!3008949 call!688514)))

(assert (=> b!7500494 (= e!4471775 e!4471778)))

(declare-fun bm!688509 () Bool)

(assert (=> bm!688509 (= call!688514 (isEmpty!41289 s!13591))))

(declare-fun bm!688510 () Bool)

(assert (=> bm!688510 (= call!688515 (Exists!4274 (ite c!1384690 lambda!464879 lambda!464881)))))

(assert (= (and d!2302454 c!1384688) b!7500488))

(assert (= (and d!2302454 (not c!1384688)) b!7500487))

(assert (= (and b!7500487 res!3008951) b!7500490))

(assert (= (and b!7500490 c!1384691) b!7500484))

(assert (= (and b!7500490 (not c!1384691)) b!7500485))

(assert (= (and b!7500485 c!1384689) b!7500492))

(assert (= (and b!7500485 (not c!1384689)) b!7500493))

(assert (= (and b!7500492 (not res!3008950)) b!7500489))

(assert (= (and b!7500493 c!1384690) b!7500494))

(assert (= (and b!7500493 (not c!1384690)) b!7500486))

(assert (= (and b!7500494 (not res!3008949)) b!7500491))

(assert (= (or b!7500491 b!7500486) bm!688510))

(assert (= (or b!7500488 b!7500494) bm!688509))

(declare-fun m!8082546 () Bool)

(assert (=> b!7500489 m!8082546))

(declare-fun m!8082548 () Bool)

(assert (=> b!7500492 m!8082548))

(declare-fun m!8082550 () Bool)

(assert (=> bm!688509 m!8082550))

(declare-fun m!8082552 () Bool)

(assert (=> bm!688510 m!8082552))

(assert (=> b!7500044 d!2302454))

(declare-fun d!2302458 () Bool)

(assert (=> d!2302458 (= (matchR!9419 lt!2631465 s!13591) (matchRSpec!4334 lt!2631465 s!13591))))

(declare-fun lt!2631529 () Unit!166145)

(assert (=> d!2302458 (= lt!2631529 (choose!57978 lt!2631465 s!13591))))

(assert (=> d!2302458 (validRegex!10171 lt!2631465)))

(assert (=> d!2302458 (= (mainMatchTheorem!4328 lt!2631465 s!13591) lt!2631529)))

(declare-fun bs!1937424 () Bool)

(assert (= bs!1937424 d!2302458))

(assert (=> bs!1937424 m!8082260))

(assert (=> bs!1937424 m!8082266))

(declare-fun m!8082554 () Bool)

(assert (=> bs!1937424 m!8082554))

(declare-fun m!8082556 () Bool)

(assert (=> bs!1937424 m!8082556))

(assert (=> b!7500044 d!2302458))

(declare-fun d!2302460 () Bool)

(assert (=> d!2302460 (= (matchR!9419 lt!2631453 s!13591) (matchRSpec!4334 lt!2631453 s!13591))))

(declare-fun lt!2631530 () Unit!166145)

(assert (=> d!2302460 (= lt!2631530 (choose!57978 lt!2631453 s!13591))))

(assert (=> d!2302460 (validRegex!10171 lt!2631453)))

(assert (=> d!2302460 (= (mainMatchTheorem!4328 lt!2631453 s!13591) lt!2631530)))

(declare-fun bs!1937425 () Bool)

(assert (= bs!1937425 d!2302460))

(assert (=> bs!1937425 m!8082264))

(assert (=> bs!1937425 m!8082258))

(declare-fun m!8082558 () Bool)

(assert (=> bs!1937425 m!8082558))

(declare-fun m!8082560 () Bool)

(assert (=> bs!1937425 m!8082560))

(assert (=> b!7500044 d!2302460))

(declare-fun b!7500506 () Bool)

(declare-fun e!4471792 () Bool)

(declare-fun lt!2631531 () Bool)

(assert (=> b!7500506 (= e!4471792 (not lt!2631531))))

(declare-fun b!7500507 () Bool)

(declare-fun e!4471794 () Bool)

(assert (=> b!7500507 (= e!4471794 (not (= (head!15389 s!13591) (c!1384588 lt!2631465))))))

(declare-fun b!7500508 () Bool)

(declare-fun e!4471791 () Bool)

(assert (=> b!7500508 (= e!4471791 (nullable!8592 lt!2631465))))

(declare-fun b!7500509 () Bool)

(declare-fun res!3008956 () Bool)

(assert (=> b!7500509 (=> res!3008956 e!4471794)))

(assert (=> b!7500509 (= res!3008956 (not (isEmpty!41289 (tail!14958 s!13591))))))

(declare-fun b!7500510 () Bool)

(declare-fun e!4471790 () Bool)

(assert (=> b!7500510 (= e!4471790 e!4471792)))

(declare-fun c!1384698 () Bool)

(assert (=> b!7500510 (= c!1384698 ((_ is EmptyLang!19657) lt!2631465))))

(declare-fun d!2302462 () Bool)

(assert (=> d!2302462 e!4471790))

(declare-fun c!1384696 () Bool)

(assert (=> d!2302462 (= c!1384696 ((_ is EmptyExpr!19657) lt!2631465))))

(assert (=> d!2302462 (= lt!2631531 e!4471791)))

(declare-fun c!1384697 () Bool)

(assert (=> d!2302462 (= c!1384697 (isEmpty!41289 s!13591))))

(assert (=> d!2302462 (validRegex!10171 lt!2631465)))

(assert (=> d!2302462 (= (matchR!9419 lt!2631465 s!13591) lt!2631531)))

(declare-fun b!7500511 () Bool)

(declare-fun e!4471793 () Bool)

(assert (=> b!7500511 (= e!4471793 (= (head!15389 s!13591) (c!1384588 lt!2631465)))))

(declare-fun b!7500512 () Bool)

(assert (=> b!7500512 (= e!4471791 (matchR!9419 (derivativeStep!5649 lt!2631465 (head!15389 s!13591)) (tail!14958 s!13591)))))

(declare-fun b!7500513 () Bool)

(declare-fun e!4471789 () Bool)

(declare-fun e!4471788 () Bool)

(assert (=> b!7500513 (= e!4471789 e!4471788)))

(declare-fun res!3008958 () Bool)

(assert (=> b!7500513 (=> (not res!3008958) (not e!4471788))))

(assert (=> b!7500513 (= res!3008958 (not lt!2631531))))

(declare-fun bm!688513 () Bool)

(declare-fun call!688518 () Bool)

(assert (=> bm!688513 (= call!688518 (isEmpty!41289 s!13591))))

(declare-fun b!7500514 () Bool)

(assert (=> b!7500514 (= e!4471790 (= lt!2631531 call!688518))))

(declare-fun b!7500515 () Bool)

(assert (=> b!7500515 (= e!4471788 e!4471794)))

(declare-fun res!3008957 () Bool)

(assert (=> b!7500515 (=> res!3008957 e!4471794)))

(assert (=> b!7500515 (= res!3008957 call!688518)))

(declare-fun b!7500516 () Bool)

(declare-fun res!3008961 () Bool)

(assert (=> b!7500516 (=> res!3008961 e!4471789)))

(assert (=> b!7500516 (= res!3008961 (not ((_ is ElementMatch!19657) lt!2631465)))))

(assert (=> b!7500516 (= e!4471792 e!4471789)))

(declare-fun b!7500517 () Bool)

(declare-fun res!3008959 () Bool)

(assert (=> b!7500517 (=> (not res!3008959) (not e!4471793))))

(assert (=> b!7500517 (= res!3008959 (not call!688518))))

(declare-fun b!7500518 () Bool)

(declare-fun res!3008960 () Bool)

(assert (=> b!7500518 (=> (not res!3008960) (not e!4471793))))

(assert (=> b!7500518 (= res!3008960 (isEmpty!41289 (tail!14958 s!13591)))))

(declare-fun b!7500519 () Bool)

(declare-fun res!3008955 () Bool)

(assert (=> b!7500519 (=> res!3008955 e!4471789)))

(assert (=> b!7500519 (= res!3008955 e!4471793)))

(declare-fun res!3008962 () Bool)

(assert (=> b!7500519 (=> (not res!3008962) (not e!4471793))))

(assert (=> b!7500519 (= res!3008962 lt!2631531)))

(assert (= (and d!2302462 c!1384697) b!7500508))

(assert (= (and d!2302462 (not c!1384697)) b!7500512))

(assert (= (and d!2302462 c!1384696) b!7500514))

(assert (= (and d!2302462 (not c!1384696)) b!7500510))

(assert (= (and b!7500510 c!1384698) b!7500506))

(assert (= (and b!7500510 (not c!1384698)) b!7500516))

(assert (= (and b!7500516 (not res!3008961)) b!7500519))

(assert (= (and b!7500519 res!3008962) b!7500517))

(assert (= (and b!7500517 res!3008959) b!7500518))

(assert (= (and b!7500518 res!3008960) b!7500511))

(assert (= (and b!7500519 (not res!3008955)) b!7500513))

(assert (= (and b!7500513 res!3008958) b!7500515))

(assert (= (and b!7500515 (not res!3008957)) b!7500509))

(assert (= (and b!7500509 (not res!3008956)) b!7500507))

(assert (= (or b!7500514 b!7500515 b!7500517) bm!688513))

(declare-fun m!8082572 () Bool)

(assert (=> b!7500518 m!8082572))

(assert (=> b!7500518 m!8082572))

(declare-fun m!8082574 () Bool)

(assert (=> b!7500518 m!8082574))

(declare-fun m!8082576 () Bool)

(assert (=> b!7500512 m!8082576))

(assert (=> b!7500512 m!8082576))

(declare-fun m!8082578 () Bool)

(assert (=> b!7500512 m!8082578))

(assert (=> b!7500512 m!8082572))

(assert (=> b!7500512 m!8082578))

(assert (=> b!7500512 m!8082572))

(declare-fun m!8082580 () Bool)

(assert (=> b!7500512 m!8082580))

(assert (=> b!7500509 m!8082572))

(assert (=> b!7500509 m!8082572))

(assert (=> b!7500509 m!8082574))

(assert (=> bm!688513 m!8082550))

(declare-fun m!8082582 () Bool)

(assert (=> b!7500508 m!8082582))

(assert (=> d!2302462 m!8082550))

(assert (=> d!2302462 m!8082556))

(assert (=> b!7500511 m!8082576))

(assert (=> b!7500507 m!8082576))

(assert (=> b!7500044 d!2302462))

(declare-fun b!7500534 () Bool)

(declare-fun e!4471806 () Bool)

(declare-fun lt!2631535 () Bool)

(assert (=> b!7500534 (= e!4471806 (not lt!2631535))))

(declare-fun b!7500535 () Bool)

(declare-fun e!4471808 () Bool)

(assert (=> b!7500535 (= e!4471808 (not (= (head!15389 s!13591) (c!1384588 lt!2631453))))))

(declare-fun b!7500536 () Bool)

(declare-fun e!4471805 () Bool)

(assert (=> b!7500536 (= e!4471805 (nullable!8592 lt!2631453))))

(declare-fun b!7500537 () Bool)

(declare-fun res!3008972 () Bool)

(assert (=> b!7500537 (=> res!3008972 e!4471808)))

(assert (=> b!7500537 (= res!3008972 (not (isEmpty!41289 (tail!14958 s!13591))))))

(declare-fun b!7500538 () Bool)

(declare-fun e!4471804 () Bool)

(assert (=> b!7500538 (= e!4471804 e!4471806)))

(declare-fun c!1384704 () Bool)

(assert (=> b!7500538 (= c!1384704 ((_ is EmptyLang!19657) lt!2631453))))

(declare-fun d!2302470 () Bool)

(assert (=> d!2302470 e!4471804))

(declare-fun c!1384702 () Bool)

(assert (=> d!2302470 (= c!1384702 ((_ is EmptyExpr!19657) lt!2631453))))

(assert (=> d!2302470 (= lt!2631535 e!4471805)))

(declare-fun c!1384703 () Bool)

(assert (=> d!2302470 (= c!1384703 (isEmpty!41289 s!13591))))

(assert (=> d!2302470 (validRegex!10171 lt!2631453)))

(assert (=> d!2302470 (= (matchR!9419 lt!2631453 s!13591) lt!2631535)))

(declare-fun b!7500539 () Bool)

(declare-fun e!4471807 () Bool)

(assert (=> b!7500539 (= e!4471807 (= (head!15389 s!13591) (c!1384588 lt!2631453)))))

(declare-fun b!7500540 () Bool)

(assert (=> b!7500540 (= e!4471805 (matchR!9419 (derivativeStep!5649 lt!2631453 (head!15389 s!13591)) (tail!14958 s!13591)))))

(declare-fun b!7500541 () Bool)

(declare-fun e!4471803 () Bool)

(declare-fun e!4471802 () Bool)

(assert (=> b!7500541 (= e!4471803 e!4471802)))

(declare-fun res!3008974 () Bool)

(assert (=> b!7500541 (=> (not res!3008974) (not e!4471802))))

(assert (=> b!7500541 (= res!3008974 (not lt!2631535))))

(declare-fun bm!688515 () Bool)

(declare-fun call!688520 () Bool)

(assert (=> bm!688515 (= call!688520 (isEmpty!41289 s!13591))))

(declare-fun b!7500542 () Bool)

(assert (=> b!7500542 (= e!4471804 (= lt!2631535 call!688520))))

(declare-fun b!7500543 () Bool)

(assert (=> b!7500543 (= e!4471802 e!4471808)))

(declare-fun res!3008973 () Bool)

(assert (=> b!7500543 (=> res!3008973 e!4471808)))

(assert (=> b!7500543 (= res!3008973 call!688520)))

(declare-fun b!7500544 () Bool)

(declare-fun res!3008977 () Bool)

(assert (=> b!7500544 (=> res!3008977 e!4471803)))

(assert (=> b!7500544 (= res!3008977 (not ((_ is ElementMatch!19657) lt!2631453)))))

(assert (=> b!7500544 (= e!4471806 e!4471803)))

(declare-fun b!7500545 () Bool)

(declare-fun res!3008975 () Bool)

(assert (=> b!7500545 (=> (not res!3008975) (not e!4471807))))

(assert (=> b!7500545 (= res!3008975 (not call!688520))))

(declare-fun b!7500546 () Bool)

(declare-fun res!3008976 () Bool)

(assert (=> b!7500546 (=> (not res!3008976) (not e!4471807))))

(assert (=> b!7500546 (= res!3008976 (isEmpty!41289 (tail!14958 s!13591)))))

(declare-fun b!7500547 () Bool)

(declare-fun res!3008971 () Bool)

(assert (=> b!7500547 (=> res!3008971 e!4471803)))

(assert (=> b!7500547 (= res!3008971 e!4471807)))

(declare-fun res!3008978 () Bool)

(assert (=> b!7500547 (=> (not res!3008978) (not e!4471807))))

(assert (=> b!7500547 (= res!3008978 lt!2631535)))

(assert (= (and d!2302470 c!1384703) b!7500536))

(assert (= (and d!2302470 (not c!1384703)) b!7500540))

(assert (= (and d!2302470 c!1384702) b!7500542))

(assert (= (and d!2302470 (not c!1384702)) b!7500538))

(assert (= (and b!7500538 c!1384704) b!7500534))

(assert (= (and b!7500538 (not c!1384704)) b!7500544))

(assert (= (and b!7500544 (not res!3008977)) b!7500547))

(assert (= (and b!7500547 res!3008978) b!7500545))

(assert (= (and b!7500545 res!3008975) b!7500546))

(assert (= (and b!7500546 res!3008976) b!7500539))

(assert (= (and b!7500547 (not res!3008971)) b!7500541))

(assert (= (and b!7500541 res!3008974) b!7500543))

(assert (= (and b!7500543 (not res!3008973)) b!7500537))

(assert (= (and b!7500537 (not res!3008972)) b!7500535))

(assert (= (or b!7500542 b!7500543 b!7500545) bm!688515))

(assert (=> b!7500546 m!8082572))

(assert (=> b!7500546 m!8082572))

(assert (=> b!7500546 m!8082574))

(assert (=> b!7500540 m!8082576))

(assert (=> b!7500540 m!8082576))

(declare-fun m!8082590 () Bool)

(assert (=> b!7500540 m!8082590))

(assert (=> b!7500540 m!8082572))

(assert (=> b!7500540 m!8082590))

(assert (=> b!7500540 m!8082572))

(declare-fun m!8082592 () Bool)

(assert (=> b!7500540 m!8082592))

(assert (=> b!7500537 m!8082572))

(assert (=> b!7500537 m!8082572))

(assert (=> b!7500537 m!8082574))

(assert (=> bm!688515 m!8082550))

(declare-fun m!8082594 () Bool)

(assert (=> b!7500536 m!8082594))

(assert (=> d!2302470 m!8082550))

(assert (=> d!2302470 m!8082560))

(assert (=> b!7500539 m!8082576))

(assert (=> b!7500535 m!8082576))

(assert (=> b!7500044 d!2302470))

(declare-fun bs!1937433 () Bool)

(declare-fun b!7500566 () Bool)

(assert (= bs!1937433 (and b!7500566 b!7500235)))

(declare-fun lambda!464884 () Int)

(assert (=> bs!1937433 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631465) (reg!19986 r1!5845)) (= lt!2631465 r1!5845)) (= lambda!464884 lambda!464859))))

(declare-fun bs!1937435 () Bool)

(assert (= bs!1937435 (and b!7500566 b!7500046)))

(assert (=> bs!1937435 (not (= lambda!464884 lambda!464837))))

(assert (=> bs!1937435 (not (= lambda!464884 lambda!464836))))

(declare-fun bs!1937438 () Bool)

(assert (= bs!1937438 (and b!7500566 b!7500224)))

(assert (=> bs!1937438 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631465) (reg!19986 r2!5783)) (= lt!2631465 r2!5783)) (= lambda!464884 lambda!464857))))

(declare-fun bs!1937440 () Bool)

(assert (= bs!1937440 (and b!7500566 b!7500213)))

(assert (=> bs!1937440 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631465) (reg!19986 lt!2631462)) (= lt!2631465 lt!2631462)) (= lambda!464884 lambda!464854))))

(declare-fun bs!1937441 () Bool)

(assert (= bs!1937441 (and b!7500566 b!7500486)))

(assert (=> bs!1937441 (not (= lambda!464884 lambda!464881))))

(declare-fun bs!1937442 () Bool)

(assert (= bs!1937442 (and b!7500566 b!7500208)))

(assert (=> bs!1937442 (not (= lambda!464884 lambda!464856))))

(declare-fun bs!1937444 () Bool)

(assert (= bs!1937444 (and b!7500566 d!2302436)))

(assert (=> bs!1937444 (not (= lambda!464884 lambda!464878))))

(declare-fun bs!1937446 () Bool)

(assert (= bs!1937446 (and b!7500566 d!2302414)))

(assert (=> bs!1937446 (not (= lambda!464884 lambda!464867))))

(declare-fun bs!1937447 () Bool)

(assert (= bs!1937447 (and b!7500566 b!7500219)))

(assert (=> bs!1937447 (not (= lambda!464884 lambda!464858))))

(declare-fun bs!1937448 () Bool)

(assert (= bs!1937448 (and b!7500566 b!7500491)))

(assert (=> bs!1937448 (= (and (= (reg!19986 lt!2631465) (reg!19986 lt!2631453)) (= lt!2631465 lt!2631453)) (= lambda!464884 lambda!464879))))

(declare-fun bs!1937450 () Bool)

(assert (= bs!1937450 (and b!7500566 b!7500038)))

(assert (=> bs!1937450 (not (= lambda!464884 lambda!464838))))

(assert (=> bs!1937446 (not (= lambda!464884 lambda!464866))))

(declare-fun bs!1937451 () Bool)

(assert (= bs!1937451 (and b!7500566 b!7500230)))

(assert (=> bs!1937451 (not (= lambda!464884 lambda!464860))))

(assert (=> bs!1937450 (not (= lambda!464884 lambda!464839))))

(assert (=> b!7500566 true))

(assert (=> b!7500566 true))

(declare-fun bs!1937456 () Bool)

(declare-fun b!7500561 () Bool)

(assert (= bs!1937456 (and b!7500561 b!7500235)))

(declare-fun lambda!464886 () Int)

(assert (=> bs!1937456 (not (= lambda!464886 lambda!464859))))

(declare-fun bs!1937458 () Bool)

(assert (= bs!1937458 (and b!7500561 b!7500046)))

(assert (=> bs!1937458 (= (and (= (regOne!39826 lt!2631465) lt!2631462) (= (regTwo!39826 lt!2631465) rTail!78)) (= lambda!464886 lambda!464837))))

(assert (=> bs!1937458 (not (= lambda!464886 lambda!464836))))

(declare-fun bs!1937461 () Bool)

(assert (= bs!1937461 (and b!7500561 b!7500224)))

(assert (=> bs!1937461 (not (= lambda!464886 lambda!464857))))

(declare-fun bs!1937463 () Bool)

(assert (= bs!1937463 (and b!7500561 b!7500486)))

(assert (=> bs!1937463 (= (and (= (regOne!39826 lt!2631465) (regOne!39826 lt!2631453)) (= (regTwo!39826 lt!2631465) (regTwo!39826 lt!2631453))) (= lambda!464886 lambda!464881))))

(declare-fun bs!1937465 () Bool)

(assert (= bs!1937465 (and b!7500561 b!7500208)))

(assert (=> bs!1937465 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631465) (regOne!39826 lt!2631462)) (= (regTwo!39826 lt!2631465) (regTwo!39826 lt!2631462))) (= lambda!464886 lambda!464856))))

(declare-fun bs!1937467 () Bool)

(assert (= bs!1937467 (and b!7500561 d!2302436)))

(assert (=> bs!1937467 (not (= lambda!464886 lambda!464878))))

(declare-fun bs!1937468 () Bool)

(assert (= bs!1937468 (and b!7500561 d!2302414)))

(assert (=> bs!1937468 (= (and (= (regOne!39826 lt!2631465) lt!2631462) (= (regTwo!39826 lt!2631465) rTail!78)) (= lambda!464886 lambda!464867))))

(declare-fun bs!1937469 () Bool)

(assert (= bs!1937469 (and b!7500561 b!7500219)))

(assert (=> bs!1937469 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631465) (regOne!39826 r2!5783)) (= (regTwo!39826 lt!2631465) (regTwo!39826 r2!5783))) (= lambda!464886 lambda!464858))))

(declare-fun bs!1937472 () Bool)

(assert (= bs!1937472 (and b!7500561 b!7500491)))

(assert (=> bs!1937472 (not (= lambda!464886 lambda!464879))))

(declare-fun bs!1937473 () Bool)

(assert (= bs!1937473 (and b!7500561 b!7500566)))

(assert (=> bs!1937473 (not (= lambda!464886 lambda!464884))))

(declare-fun bs!1937474 () Bool)

(assert (= bs!1937474 (and b!7500561 b!7500213)))

(assert (=> bs!1937474 (not (= lambda!464886 lambda!464854))))

(declare-fun bs!1937476 () Bool)

(assert (= bs!1937476 (and b!7500561 b!7500038)))

(assert (=> bs!1937476 (not (= lambda!464886 lambda!464838))))

(assert (=> bs!1937468 (not (= lambda!464886 lambda!464866))))

(declare-fun bs!1937477 () Bool)

(assert (= bs!1937477 (and b!7500561 b!7500230)))

(assert (=> bs!1937477 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631465) (regOne!39826 r1!5845)) (= (regTwo!39826 lt!2631465) (regTwo!39826 r1!5845))) (= lambda!464886 lambda!464860))))

(assert (=> bs!1937476 (= (and (= (regOne!39826 lt!2631465) r2!5783) (= (regTwo!39826 lt!2631465) rTail!78)) (= lambda!464886 lambda!464839))))

(assert (=> b!7500561 true))

(assert (=> b!7500561 true))

(declare-fun b!7500559 () Bool)

(declare-fun e!4471818 () Bool)

(assert (=> b!7500559 (= e!4471818 (= s!13591 (Cons!72247 (c!1384588 lt!2631465) Nil!72247)))))

(declare-fun b!7500560 () Bool)

(declare-fun c!1384710 () Bool)

(assert (=> b!7500560 (= c!1384710 ((_ is Union!19657) lt!2631465))))

(declare-fun e!4471821 () Bool)

(assert (=> b!7500560 (= e!4471818 e!4471821)))

(declare-fun e!4471817 () Bool)

(declare-fun call!688524 () Bool)

(assert (=> b!7500561 (= e!4471817 call!688524)))

(declare-fun b!7500562 () Bool)

(declare-fun e!4471816 () Bool)

(declare-fun e!4471822 () Bool)

(assert (=> b!7500562 (= e!4471816 e!4471822)))

(declare-fun res!3008984 () Bool)

(assert (=> b!7500562 (= res!3008984 (not ((_ is EmptyLang!19657) lt!2631465)))))

(assert (=> b!7500562 (=> (not res!3008984) (not e!4471822))))

(declare-fun b!7500563 () Bool)

(declare-fun call!688523 () Bool)

(assert (=> b!7500563 (= e!4471816 call!688523)))

(declare-fun d!2302474 () Bool)

(declare-fun c!1384709 () Bool)

(assert (=> d!2302474 (= c!1384709 ((_ is EmptyExpr!19657) lt!2631465))))

(assert (=> d!2302474 (= (matchRSpec!4334 lt!2631465 s!13591) e!4471816)))

(declare-fun b!7500564 () Bool)

(declare-fun e!4471819 () Bool)

(assert (=> b!7500564 (= e!4471819 (matchRSpec!4334 (regTwo!39827 lt!2631465) s!13591))))

(declare-fun b!7500565 () Bool)

(declare-fun c!1384712 () Bool)

(assert (=> b!7500565 (= c!1384712 ((_ is ElementMatch!19657) lt!2631465))))

(assert (=> b!7500565 (= e!4471822 e!4471818)))

(declare-fun e!4471820 () Bool)

(assert (=> b!7500566 (= e!4471820 call!688524)))

(declare-fun b!7500567 () Bool)

(assert (=> b!7500567 (= e!4471821 e!4471819)))

(declare-fun res!3008983 () Bool)

(assert (=> b!7500567 (= res!3008983 (matchRSpec!4334 (regOne!39827 lt!2631465) s!13591))))

(assert (=> b!7500567 (=> res!3008983 e!4471819)))

(declare-fun b!7500568 () Bool)

(assert (=> b!7500568 (= e!4471821 e!4471817)))

(declare-fun c!1384711 () Bool)

(assert (=> b!7500568 (= c!1384711 ((_ is Star!19657) lt!2631465))))

(declare-fun b!7500569 () Bool)

(declare-fun res!3008982 () Bool)

(assert (=> b!7500569 (=> res!3008982 e!4471820)))

(assert (=> b!7500569 (= res!3008982 call!688523)))

(assert (=> b!7500569 (= e!4471817 e!4471820)))

(declare-fun bm!688518 () Bool)

(assert (=> bm!688518 (= call!688523 (isEmpty!41289 s!13591))))

(declare-fun bm!688519 () Bool)

(assert (=> bm!688519 (= call!688524 (Exists!4274 (ite c!1384711 lambda!464884 lambda!464886)))))

(assert (= (and d!2302474 c!1384709) b!7500563))

(assert (= (and d!2302474 (not c!1384709)) b!7500562))

(assert (= (and b!7500562 res!3008984) b!7500565))

(assert (= (and b!7500565 c!1384712) b!7500559))

(assert (= (and b!7500565 (not c!1384712)) b!7500560))

(assert (= (and b!7500560 c!1384710) b!7500567))

(assert (= (and b!7500560 (not c!1384710)) b!7500568))

(assert (= (and b!7500567 (not res!3008983)) b!7500564))

(assert (= (and b!7500568 c!1384711) b!7500569))

(assert (= (and b!7500568 (not c!1384711)) b!7500561))

(assert (= (and b!7500569 (not res!3008982)) b!7500566))

(assert (= (or b!7500566 b!7500561) bm!688519))

(assert (= (or b!7500563 b!7500569) bm!688518))

(declare-fun m!8082602 () Bool)

(assert (=> b!7500564 m!8082602))

(declare-fun m!8082604 () Bool)

(assert (=> b!7500567 m!8082604))

(assert (=> bm!688518 m!8082550))

(declare-fun m!8082606 () Bool)

(assert (=> bm!688519 m!8082606))

(assert (=> b!7500044 d!2302474))

(declare-fun b!7500581 () Bool)

(declare-fun e!4471834 () Bool)

(declare-fun lt!2631536 () Bool)

(assert (=> b!7500581 (= e!4471834 (not lt!2631536))))

(declare-fun b!7500582 () Bool)

(declare-fun e!4471836 () Bool)

(assert (=> b!7500582 (= e!4471836 (not (= (head!15389 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))) (c!1384588 lt!2631454))))))

(declare-fun b!7500583 () Bool)

(declare-fun e!4471833 () Bool)

(assert (=> b!7500583 (= e!4471833 (nullable!8592 lt!2631454))))

(declare-fun b!7500584 () Bool)

(declare-fun res!3008989 () Bool)

(assert (=> b!7500584 (=> res!3008989 e!4471836)))

(assert (=> b!7500584 (= res!3008989 (not (isEmpty!41289 (tail!14958 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))))))))

(declare-fun b!7500585 () Bool)

(declare-fun e!4471832 () Bool)

(assert (=> b!7500585 (= e!4471832 e!4471834)))

(declare-fun c!1384719 () Bool)

(assert (=> b!7500585 (= c!1384719 ((_ is EmptyLang!19657) lt!2631454))))

(declare-fun d!2302478 () Bool)

(assert (=> d!2302478 e!4471832))

(declare-fun c!1384717 () Bool)

(assert (=> d!2302478 (= c!1384717 ((_ is EmptyExpr!19657) lt!2631454))))

(assert (=> d!2302478 (= lt!2631536 e!4471833)))

(declare-fun c!1384718 () Bool)

(assert (=> d!2302478 (= c!1384718 (isEmpty!41289 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))))))

(assert (=> d!2302478 (validRegex!10171 lt!2631454)))

(assert (=> d!2302478 (= (matchR!9419 lt!2631454 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))) lt!2631536)))

(declare-fun b!7500586 () Bool)

(declare-fun e!4471835 () Bool)

(assert (=> b!7500586 (= e!4471835 (= (head!15389 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))) (c!1384588 lt!2631454)))))

(declare-fun b!7500587 () Bool)

(assert (=> b!7500587 (= e!4471833 (matchR!9419 (derivativeStep!5649 lt!2631454 (head!15389 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))) (tail!14958 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))))

(declare-fun b!7500588 () Bool)

(declare-fun e!4471831 () Bool)

(declare-fun e!4471830 () Bool)

(assert (=> b!7500588 (= e!4471831 e!4471830)))

(declare-fun res!3008991 () Bool)

(assert (=> b!7500588 (=> (not res!3008991) (not e!4471830))))

(assert (=> b!7500588 (= res!3008991 (not lt!2631536))))

(declare-fun bm!688522 () Bool)

(declare-fun call!688527 () Bool)

(assert (=> bm!688522 (= call!688527 (isEmpty!41289 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466))))))

(declare-fun b!7500589 () Bool)

(assert (=> b!7500589 (= e!4471832 (= lt!2631536 call!688527))))

(declare-fun b!7500590 () Bool)

(assert (=> b!7500590 (= e!4471830 e!4471836)))

(declare-fun res!3008990 () Bool)

(assert (=> b!7500590 (=> res!3008990 e!4471836)))

(assert (=> b!7500590 (= res!3008990 call!688527)))

(declare-fun b!7500591 () Bool)

(declare-fun res!3008994 () Bool)

(assert (=> b!7500591 (=> res!3008994 e!4471831)))

(assert (=> b!7500591 (= res!3008994 (not ((_ is ElementMatch!19657) lt!2631454)))))

(assert (=> b!7500591 (= e!4471834 e!4471831)))

(declare-fun b!7500592 () Bool)

(declare-fun res!3008992 () Bool)

(assert (=> b!7500592 (=> (not res!3008992) (not e!4471835))))

(assert (=> b!7500592 (= res!3008992 (not call!688527))))

(declare-fun b!7500593 () Bool)

(declare-fun res!3008993 () Bool)

(assert (=> b!7500593 (=> (not res!3008993) (not e!4471835))))

(assert (=> b!7500593 (= res!3008993 (isEmpty!41289 (tail!14958 (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))))

(declare-fun b!7500594 () Bool)

(declare-fun res!3008988 () Bool)

(assert (=> b!7500594 (=> res!3008988 e!4471831)))

(assert (=> b!7500594 (= res!3008988 e!4471835)))

(declare-fun res!3008995 () Bool)

(assert (=> b!7500594 (=> (not res!3008995) (not e!4471835))))

(assert (=> b!7500594 (= res!3008995 lt!2631536)))

(assert (= (and d!2302478 c!1384718) b!7500583))

(assert (= (and d!2302478 (not c!1384718)) b!7500587))

(assert (= (and d!2302478 c!1384717) b!7500589))

(assert (= (and d!2302478 (not c!1384717)) b!7500585))

(assert (= (and b!7500585 c!1384719) b!7500581))

(assert (= (and b!7500585 (not c!1384719)) b!7500591))

(assert (= (and b!7500591 (not res!3008994)) b!7500594))

(assert (= (and b!7500594 res!3008995) b!7500592))

(assert (= (and b!7500592 res!3008992) b!7500593))

(assert (= (and b!7500593 res!3008993) b!7500586))

(assert (= (and b!7500594 (not res!3008988)) b!7500588))

(assert (= (and b!7500588 res!3008991) b!7500590))

(assert (= (and b!7500590 (not res!3008990)) b!7500584))

(assert (= (and b!7500584 (not res!3008989)) b!7500582))

(assert (= (or b!7500589 b!7500590 b!7500592) bm!688522))

(assert (=> b!7500593 m!8082270))

(declare-fun m!8082608 () Bool)

(assert (=> b!7500593 m!8082608))

(assert (=> b!7500593 m!8082608))

(declare-fun m!8082610 () Bool)

(assert (=> b!7500593 m!8082610))

(assert (=> b!7500587 m!8082270))

(declare-fun m!8082612 () Bool)

(assert (=> b!7500587 m!8082612))

(assert (=> b!7500587 m!8082612))

(declare-fun m!8082614 () Bool)

(assert (=> b!7500587 m!8082614))

(assert (=> b!7500587 m!8082270))

(assert (=> b!7500587 m!8082608))

(assert (=> b!7500587 m!8082614))

(assert (=> b!7500587 m!8082608))

(declare-fun m!8082616 () Bool)

(assert (=> b!7500587 m!8082616))

(assert (=> b!7500584 m!8082270))

(assert (=> b!7500584 m!8082608))

(assert (=> b!7500584 m!8082608))

(assert (=> b!7500584 m!8082610))

(assert (=> bm!688522 m!8082270))

(declare-fun m!8082618 () Bool)

(assert (=> bm!688522 m!8082618))

(declare-fun m!8082620 () Bool)

(assert (=> b!7500583 m!8082620))

(assert (=> d!2302478 m!8082270))

(assert (=> d!2302478 m!8082618))

(declare-fun m!8082622 () Bool)

(assert (=> d!2302478 m!8082622))

(assert (=> b!7500586 m!8082270))

(assert (=> b!7500586 m!8082612))

(assert (=> b!7500582 m!8082270))

(assert (=> b!7500582 m!8082612))

(assert (=> b!7500029 d!2302478))

(declare-fun d!2302480 () Bool)

(declare-fun e!4471841 () Bool)

(assert (=> d!2302480 e!4471841))

(declare-fun res!3009000 () Bool)

(assert (=> d!2302480 (=> (not res!3009000) (not e!4471841))))

(declare-fun lt!2631539 () List!72371)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15267 (List!72371) (InoxSet C!39588))

(assert (=> d!2302480 (= res!3009000 (= (content!15267 lt!2631539) ((_ map or) (content!15267 (_1!37677 lt!2631466)) (content!15267 (_2!37677 lt!2631466)))))))

(declare-fun e!4471842 () List!72371)

(assert (=> d!2302480 (= lt!2631539 e!4471842)))

(declare-fun c!1384722 () Bool)

(assert (=> d!2302480 (= c!1384722 ((_ is Nil!72247) (_1!37677 lt!2631466)))))

(assert (=> d!2302480 (= (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)) lt!2631539)))

(declare-fun b!7500604 () Bool)

(assert (=> b!7500604 (= e!4471842 (Cons!72247 (h!78695 (_1!37677 lt!2631466)) (++!17262 (t!386940 (_1!37677 lt!2631466)) (_2!37677 lt!2631466))))))

(declare-fun b!7500603 () Bool)

(assert (=> b!7500603 (= e!4471842 (_2!37677 lt!2631466))))

(declare-fun b!7500606 () Bool)

(assert (=> b!7500606 (= e!4471841 (or (not (= (_2!37677 lt!2631466) Nil!72247)) (= lt!2631539 (_1!37677 lt!2631466))))))

(declare-fun b!7500605 () Bool)

(declare-fun res!3009001 () Bool)

(assert (=> b!7500605 (=> (not res!3009001) (not e!4471841))))

(declare-fun size!42203 (List!72371) Int)

(assert (=> b!7500605 (= res!3009001 (= (size!42203 lt!2631539) (+ (size!42203 (_1!37677 lt!2631466)) (size!42203 (_2!37677 lt!2631466)))))))

(assert (= (and d!2302480 c!1384722) b!7500603))

(assert (= (and d!2302480 (not c!1384722)) b!7500604))

(assert (= (and d!2302480 res!3009000) b!7500605))

(assert (= (and b!7500605 res!3009001) b!7500606))

(declare-fun m!8082632 () Bool)

(assert (=> d!2302480 m!8082632))

(declare-fun m!8082634 () Bool)

(assert (=> d!2302480 m!8082634))

(declare-fun m!8082636 () Bool)

(assert (=> d!2302480 m!8082636))

(declare-fun m!8082638 () Bool)

(assert (=> b!7500604 m!8082638))

(declare-fun m!8082640 () Bool)

(assert (=> b!7500605 m!8082640))

(declare-fun m!8082642 () Bool)

(assert (=> b!7500605 m!8082642))

(declare-fun m!8082644 () Bool)

(assert (=> b!7500605 m!8082644))

(assert (=> b!7500029 d!2302480))

(declare-fun d!2302486 () Bool)

(assert (=> d!2302486 (matchR!9419 (Concat!28502 lt!2631462 rTail!78) (++!17262 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))

(declare-fun lt!2631543 () Unit!166145)

(declare-fun choose!57983 (Regex!19657 Regex!19657 List!72371 List!72371) Unit!166145)

(assert (=> d!2302486 (= lt!2631543 (choose!57983 lt!2631462 rTail!78 (_1!37677 lt!2631466) (_2!37677 lt!2631466)))))

(declare-fun e!4471852 () Bool)

(assert (=> d!2302486 e!4471852))

(declare-fun res!3009007 () Bool)

(assert (=> d!2302486 (=> (not res!3009007) (not e!4471852))))

(assert (=> d!2302486 (= res!3009007 (validRegex!10171 lt!2631462))))

(assert (=> d!2302486 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!410 lt!2631462 rTail!78 (_1!37677 lt!2631466) (_2!37677 lt!2631466)) lt!2631543)))

(declare-fun b!7500620 () Bool)

(assert (=> b!7500620 (= e!4471852 (validRegex!10171 rTail!78))))

(assert (= (and d!2302486 res!3009007) b!7500620))

(assert (=> d!2302486 m!8082270))

(assert (=> d!2302486 m!8082270))

(declare-fun m!8082646 () Bool)

(assert (=> d!2302486 m!8082646))

(declare-fun m!8082648 () Bool)

(assert (=> d!2302486 m!8082648))

(assert (=> d!2302486 m!8082336))

(assert (=> b!7500620 m!8082290))

(assert (=> b!7500029 d!2302486))

(declare-fun b!7500621 () Bool)

(declare-fun e!4471857 () Bool)

(declare-fun lt!2631544 () Bool)

(assert (=> b!7500621 (= e!4471857 (not lt!2631544))))

(declare-fun b!7500622 () Bool)

(declare-fun e!4471859 () Bool)

(assert (=> b!7500622 (= e!4471859 (not (= (head!15389 s!13591) (c!1384588 lt!2631454))))))

(declare-fun b!7500623 () Bool)

(declare-fun e!4471856 () Bool)

(assert (=> b!7500623 (= e!4471856 (nullable!8592 lt!2631454))))

(declare-fun b!7500624 () Bool)

(declare-fun res!3009009 () Bool)

(assert (=> b!7500624 (=> res!3009009 e!4471859)))

(assert (=> b!7500624 (= res!3009009 (not (isEmpty!41289 (tail!14958 s!13591))))))

(declare-fun b!7500625 () Bool)

(declare-fun e!4471855 () Bool)

(assert (=> b!7500625 (= e!4471855 e!4471857)))

(declare-fun c!1384729 () Bool)

(assert (=> b!7500625 (= c!1384729 ((_ is EmptyLang!19657) lt!2631454))))

(declare-fun d!2302488 () Bool)

(assert (=> d!2302488 e!4471855))

(declare-fun c!1384727 () Bool)

(assert (=> d!2302488 (= c!1384727 ((_ is EmptyExpr!19657) lt!2631454))))

(assert (=> d!2302488 (= lt!2631544 e!4471856)))

(declare-fun c!1384728 () Bool)

(assert (=> d!2302488 (= c!1384728 (isEmpty!41289 s!13591))))

(assert (=> d!2302488 (validRegex!10171 lt!2631454)))

(assert (=> d!2302488 (= (matchR!9419 lt!2631454 s!13591) lt!2631544)))

(declare-fun b!7500626 () Bool)

(declare-fun e!4471858 () Bool)

(assert (=> b!7500626 (= e!4471858 (= (head!15389 s!13591) (c!1384588 lt!2631454)))))

(declare-fun b!7500627 () Bool)

(assert (=> b!7500627 (= e!4471856 (matchR!9419 (derivativeStep!5649 lt!2631454 (head!15389 s!13591)) (tail!14958 s!13591)))))

(declare-fun b!7500628 () Bool)

(declare-fun e!4471854 () Bool)

(declare-fun e!4471853 () Bool)

(assert (=> b!7500628 (= e!4471854 e!4471853)))

(declare-fun res!3009011 () Bool)

(assert (=> b!7500628 (=> (not res!3009011) (not e!4471853))))

(assert (=> b!7500628 (= res!3009011 (not lt!2631544))))

(declare-fun bm!688525 () Bool)

(declare-fun call!688530 () Bool)

(assert (=> bm!688525 (= call!688530 (isEmpty!41289 s!13591))))

(declare-fun b!7500629 () Bool)

(assert (=> b!7500629 (= e!4471855 (= lt!2631544 call!688530))))

(declare-fun b!7500630 () Bool)

(assert (=> b!7500630 (= e!4471853 e!4471859)))

(declare-fun res!3009010 () Bool)

(assert (=> b!7500630 (=> res!3009010 e!4471859)))

(assert (=> b!7500630 (= res!3009010 call!688530)))

(declare-fun b!7500631 () Bool)

(declare-fun res!3009014 () Bool)

(assert (=> b!7500631 (=> res!3009014 e!4471854)))

(assert (=> b!7500631 (= res!3009014 (not ((_ is ElementMatch!19657) lt!2631454)))))

(assert (=> b!7500631 (= e!4471857 e!4471854)))

(declare-fun b!7500632 () Bool)

(declare-fun res!3009012 () Bool)

(assert (=> b!7500632 (=> (not res!3009012) (not e!4471858))))

(assert (=> b!7500632 (= res!3009012 (not call!688530))))

(declare-fun b!7500633 () Bool)

(declare-fun res!3009013 () Bool)

(assert (=> b!7500633 (=> (not res!3009013) (not e!4471858))))

(assert (=> b!7500633 (= res!3009013 (isEmpty!41289 (tail!14958 s!13591)))))

(declare-fun b!7500634 () Bool)

(declare-fun res!3009008 () Bool)

(assert (=> b!7500634 (=> res!3009008 e!4471854)))

(assert (=> b!7500634 (= res!3009008 e!4471858)))

(declare-fun res!3009015 () Bool)

(assert (=> b!7500634 (=> (not res!3009015) (not e!4471858))))

(assert (=> b!7500634 (= res!3009015 lt!2631544)))

(assert (= (and d!2302488 c!1384728) b!7500623))

(assert (= (and d!2302488 (not c!1384728)) b!7500627))

(assert (= (and d!2302488 c!1384727) b!7500629))

(assert (= (and d!2302488 (not c!1384727)) b!7500625))

(assert (= (and b!7500625 c!1384729) b!7500621))

(assert (= (and b!7500625 (not c!1384729)) b!7500631))

(assert (= (and b!7500631 (not res!3009014)) b!7500634))

(assert (= (and b!7500634 res!3009015) b!7500632))

(assert (= (and b!7500632 res!3009012) b!7500633))

(assert (= (and b!7500633 res!3009013) b!7500626))

(assert (= (and b!7500634 (not res!3009008)) b!7500628))

(assert (= (and b!7500628 res!3009011) b!7500630))

(assert (= (and b!7500630 (not res!3009010)) b!7500624))

(assert (= (and b!7500624 (not res!3009009)) b!7500622))

(assert (= (or b!7500629 b!7500630 b!7500632) bm!688525))

(assert (=> b!7500633 m!8082572))

(assert (=> b!7500633 m!8082572))

(assert (=> b!7500633 m!8082574))

(assert (=> b!7500627 m!8082576))

(assert (=> b!7500627 m!8082576))

(declare-fun m!8082650 () Bool)

(assert (=> b!7500627 m!8082650))

(assert (=> b!7500627 m!8082572))

(assert (=> b!7500627 m!8082650))

(assert (=> b!7500627 m!8082572))

(declare-fun m!8082652 () Bool)

(assert (=> b!7500627 m!8082652))

(assert (=> b!7500624 m!8082572))

(assert (=> b!7500624 m!8082572))

(assert (=> b!7500624 m!8082574))

(assert (=> bm!688525 m!8082550))

(assert (=> b!7500623 m!8082620))

(assert (=> d!2302488 m!8082550))

(assert (=> d!2302488 m!8082622))

(assert (=> b!7500626 m!8082576))

(assert (=> b!7500622 m!8082576))

(assert (=> b!7500034 d!2302488))

(declare-fun d!2302490 () Bool)

(assert (=> d!2302490 (= (matchR!9419 lt!2631454 s!13591) (matchRSpec!4334 lt!2631454 s!13591))))

(declare-fun lt!2631545 () Unit!166145)

(assert (=> d!2302490 (= lt!2631545 (choose!57978 lt!2631454 s!13591))))

(assert (=> d!2302490 (validRegex!10171 lt!2631454)))

(assert (=> d!2302490 (= (mainMatchTheorem!4328 lt!2631454 s!13591) lt!2631545)))

(declare-fun bs!1937540 () Bool)

(assert (= bs!1937540 d!2302490))

(assert (=> bs!1937540 m!8082280))

(assert (=> bs!1937540 m!8082282))

(declare-fun m!8082654 () Bool)

(assert (=> bs!1937540 m!8082654))

(assert (=> bs!1937540 m!8082622))

(assert (=> b!7500034 d!2302490))

(declare-fun d!2302492 () Bool)

(assert (=> d!2302492 (= (matchR!9419 lt!2631468 s!13591) (matchRSpec!4334 lt!2631468 s!13591))))

(declare-fun lt!2631546 () Unit!166145)

(assert (=> d!2302492 (= lt!2631546 (choose!57978 lt!2631468 s!13591))))

(assert (=> d!2302492 (validRegex!10171 lt!2631468)))

(assert (=> d!2302492 (= (mainMatchTheorem!4328 lt!2631468 s!13591) lt!2631546)))

(declare-fun bs!1937542 () Bool)

(assert (= bs!1937542 d!2302492))

(assert (=> bs!1937542 m!8082284))

(assert (=> bs!1937542 m!8082276))

(declare-fun m!8082656 () Bool)

(assert (=> bs!1937542 m!8082656))

(declare-fun m!8082658 () Bool)

(assert (=> bs!1937542 m!8082658))

(assert (=> b!7500034 d!2302492))

(declare-fun b!7500635 () Bool)

(declare-fun e!4471864 () Bool)

(declare-fun lt!2631547 () Bool)

(assert (=> b!7500635 (= e!4471864 (not lt!2631547))))

(declare-fun b!7500636 () Bool)

(declare-fun e!4471866 () Bool)

(assert (=> b!7500636 (= e!4471866 (not (= (head!15389 s!13591) (c!1384588 lt!2631468))))))

(declare-fun b!7500637 () Bool)

(declare-fun e!4471863 () Bool)

(assert (=> b!7500637 (= e!4471863 (nullable!8592 lt!2631468))))

(declare-fun b!7500638 () Bool)

(declare-fun res!3009017 () Bool)

(assert (=> b!7500638 (=> res!3009017 e!4471866)))

(assert (=> b!7500638 (= res!3009017 (not (isEmpty!41289 (tail!14958 s!13591))))))

(declare-fun b!7500639 () Bool)

(declare-fun e!4471862 () Bool)

(assert (=> b!7500639 (= e!4471862 e!4471864)))

(declare-fun c!1384732 () Bool)

(assert (=> b!7500639 (= c!1384732 ((_ is EmptyLang!19657) lt!2631468))))

(declare-fun d!2302494 () Bool)

(assert (=> d!2302494 e!4471862))

(declare-fun c!1384730 () Bool)

(assert (=> d!2302494 (= c!1384730 ((_ is EmptyExpr!19657) lt!2631468))))

(assert (=> d!2302494 (= lt!2631547 e!4471863)))

(declare-fun c!1384731 () Bool)

(assert (=> d!2302494 (= c!1384731 (isEmpty!41289 s!13591))))

(assert (=> d!2302494 (validRegex!10171 lt!2631468)))

(assert (=> d!2302494 (= (matchR!9419 lt!2631468 s!13591) lt!2631547)))

(declare-fun b!7500640 () Bool)

(declare-fun e!4471865 () Bool)

(assert (=> b!7500640 (= e!4471865 (= (head!15389 s!13591) (c!1384588 lt!2631468)))))

(declare-fun b!7500641 () Bool)

(assert (=> b!7500641 (= e!4471863 (matchR!9419 (derivativeStep!5649 lt!2631468 (head!15389 s!13591)) (tail!14958 s!13591)))))

(declare-fun b!7500642 () Bool)

(declare-fun e!4471861 () Bool)

(declare-fun e!4471860 () Bool)

(assert (=> b!7500642 (= e!4471861 e!4471860)))

(declare-fun res!3009019 () Bool)

(assert (=> b!7500642 (=> (not res!3009019) (not e!4471860))))

(assert (=> b!7500642 (= res!3009019 (not lt!2631547))))

(declare-fun bm!688526 () Bool)

(declare-fun call!688531 () Bool)

(assert (=> bm!688526 (= call!688531 (isEmpty!41289 s!13591))))

(declare-fun b!7500643 () Bool)

(assert (=> b!7500643 (= e!4471862 (= lt!2631547 call!688531))))

(declare-fun b!7500644 () Bool)

(assert (=> b!7500644 (= e!4471860 e!4471866)))

(declare-fun res!3009018 () Bool)

(assert (=> b!7500644 (=> res!3009018 e!4471866)))

(assert (=> b!7500644 (= res!3009018 call!688531)))

(declare-fun b!7500645 () Bool)

(declare-fun res!3009022 () Bool)

(assert (=> b!7500645 (=> res!3009022 e!4471861)))

(assert (=> b!7500645 (= res!3009022 (not ((_ is ElementMatch!19657) lt!2631468)))))

(assert (=> b!7500645 (= e!4471864 e!4471861)))

(declare-fun b!7500646 () Bool)

(declare-fun res!3009020 () Bool)

(assert (=> b!7500646 (=> (not res!3009020) (not e!4471865))))

(assert (=> b!7500646 (= res!3009020 (not call!688531))))

(declare-fun b!7500647 () Bool)

(declare-fun res!3009021 () Bool)

(assert (=> b!7500647 (=> (not res!3009021) (not e!4471865))))

(assert (=> b!7500647 (= res!3009021 (isEmpty!41289 (tail!14958 s!13591)))))

(declare-fun b!7500648 () Bool)

(declare-fun res!3009016 () Bool)

(assert (=> b!7500648 (=> res!3009016 e!4471861)))

(assert (=> b!7500648 (= res!3009016 e!4471865)))

(declare-fun res!3009023 () Bool)

(assert (=> b!7500648 (=> (not res!3009023) (not e!4471865))))

(assert (=> b!7500648 (= res!3009023 lt!2631547)))

(assert (= (and d!2302494 c!1384731) b!7500637))

(assert (= (and d!2302494 (not c!1384731)) b!7500641))

(assert (= (and d!2302494 c!1384730) b!7500643))

(assert (= (and d!2302494 (not c!1384730)) b!7500639))

(assert (= (and b!7500639 c!1384732) b!7500635))

(assert (= (and b!7500639 (not c!1384732)) b!7500645))

(assert (= (and b!7500645 (not res!3009022)) b!7500648))

(assert (= (and b!7500648 res!3009023) b!7500646))

(assert (= (and b!7500646 res!3009020) b!7500647))

(assert (= (and b!7500647 res!3009021) b!7500640))

(assert (= (and b!7500648 (not res!3009016)) b!7500642))

(assert (= (and b!7500642 res!3009019) b!7500644))

(assert (= (and b!7500644 (not res!3009018)) b!7500638))

(assert (= (and b!7500638 (not res!3009017)) b!7500636))

(assert (= (or b!7500643 b!7500644 b!7500646) bm!688526))

(assert (=> b!7500647 m!8082572))

(assert (=> b!7500647 m!8082572))

(assert (=> b!7500647 m!8082574))

(assert (=> b!7500641 m!8082576))

(assert (=> b!7500641 m!8082576))

(declare-fun m!8082666 () Bool)

(assert (=> b!7500641 m!8082666))

(assert (=> b!7500641 m!8082572))

(assert (=> b!7500641 m!8082666))

(assert (=> b!7500641 m!8082572))

(declare-fun m!8082668 () Bool)

(assert (=> b!7500641 m!8082668))

(assert (=> b!7500638 m!8082572))

(assert (=> b!7500638 m!8082572))

(assert (=> b!7500638 m!8082574))

(assert (=> bm!688526 m!8082550))

(declare-fun m!8082670 () Bool)

(assert (=> b!7500637 m!8082670))

(assert (=> d!2302494 m!8082550))

(assert (=> d!2302494 m!8082658))

(assert (=> b!7500640 m!8082576))

(assert (=> b!7500636 m!8082576))

(assert (=> b!7500034 d!2302494))

(declare-fun bs!1937544 () Bool)

(declare-fun b!7500670 () Bool)

(assert (= bs!1937544 (and b!7500670 b!7500235)))

(declare-fun lambda!464891 () Int)

(assert (=> bs!1937544 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631468) (reg!19986 r1!5845)) (= lt!2631468 r1!5845)) (= lambda!464891 lambda!464859))))

(declare-fun bs!1937545 () Bool)

(assert (= bs!1937545 (and b!7500670 b!7500046)))

(assert (=> bs!1937545 (not (= lambda!464891 lambda!464837))))

(assert (=> bs!1937545 (not (= lambda!464891 lambda!464836))))

(declare-fun bs!1937546 () Bool)

(assert (= bs!1937546 (and b!7500670 b!7500561)))

(assert (=> bs!1937546 (not (= lambda!464891 lambda!464886))))

(declare-fun bs!1937547 () Bool)

(assert (= bs!1937547 (and b!7500670 b!7500224)))

(assert (=> bs!1937547 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631468) (reg!19986 r2!5783)) (= lt!2631468 r2!5783)) (= lambda!464891 lambda!464857))))

(declare-fun bs!1937548 () Bool)

(assert (= bs!1937548 (and b!7500670 b!7500486)))

(assert (=> bs!1937548 (not (= lambda!464891 lambda!464881))))

(declare-fun bs!1937549 () Bool)

(assert (= bs!1937549 (and b!7500670 b!7500208)))

(assert (=> bs!1937549 (not (= lambda!464891 lambda!464856))))

(declare-fun bs!1937550 () Bool)

(assert (= bs!1937550 (and b!7500670 d!2302436)))

(assert (=> bs!1937550 (not (= lambda!464891 lambda!464878))))

(declare-fun bs!1937551 () Bool)

(assert (= bs!1937551 (and b!7500670 d!2302414)))

(assert (=> bs!1937551 (not (= lambda!464891 lambda!464867))))

(declare-fun bs!1937552 () Bool)

(assert (= bs!1937552 (and b!7500670 b!7500219)))

(assert (=> bs!1937552 (not (= lambda!464891 lambda!464858))))

(declare-fun bs!1937553 () Bool)

(assert (= bs!1937553 (and b!7500670 b!7500491)))

(assert (=> bs!1937553 (= (and (= (reg!19986 lt!2631468) (reg!19986 lt!2631453)) (= lt!2631468 lt!2631453)) (= lambda!464891 lambda!464879))))

(declare-fun bs!1937554 () Bool)

(assert (= bs!1937554 (and b!7500670 b!7500566)))

(assert (=> bs!1937554 (= (and (= (reg!19986 lt!2631468) (reg!19986 lt!2631465)) (= lt!2631468 lt!2631465)) (= lambda!464891 lambda!464884))))

(declare-fun bs!1937555 () Bool)

(assert (= bs!1937555 (and b!7500670 b!7500213)))

(assert (=> bs!1937555 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631468) (reg!19986 lt!2631462)) (= lt!2631468 lt!2631462)) (= lambda!464891 lambda!464854))))

(declare-fun bs!1937556 () Bool)

(assert (= bs!1937556 (and b!7500670 b!7500038)))

(assert (=> bs!1937556 (not (= lambda!464891 lambda!464838))))

(assert (=> bs!1937551 (not (= lambda!464891 lambda!464866))))

(declare-fun bs!1937558 () Bool)

(assert (= bs!1937558 (and b!7500670 b!7500230)))

(assert (=> bs!1937558 (not (= lambda!464891 lambda!464860))))

(assert (=> bs!1937556 (not (= lambda!464891 lambda!464839))))

(assert (=> b!7500670 true))

(assert (=> b!7500670 true))

(declare-fun bs!1937566 () Bool)

(declare-fun b!7500665 () Bool)

(assert (= bs!1937566 (and b!7500665 b!7500235)))

(declare-fun lambda!464893 () Int)

(assert (=> bs!1937566 (not (= lambda!464893 lambda!464859))))

(declare-fun bs!1937568 () Bool)

(assert (= bs!1937568 (and b!7500665 b!7500046)))

(assert (=> bs!1937568 (= (and (= (regOne!39826 lt!2631468) lt!2631462) (= (regTwo!39826 lt!2631468) rTail!78)) (= lambda!464893 lambda!464837))))

(declare-fun bs!1937569 () Bool)

(assert (= bs!1937569 (and b!7500665 b!7500670)))

(assert (=> bs!1937569 (not (= lambda!464893 lambda!464891))))

(assert (=> bs!1937568 (not (= lambda!464893 lambda!464836))))

(declare-fun bs!1937572 () Bool)

(assert (= bs!1937572 (and b!7500665 b!7500561)))

(assert (=> bs!1937572 (= (and (= (regOne!39826 lt!2631468) (regOne!39826 lt!2631465)) (= (regTwo!39826 lt!2631468) (regTwo!39826 lt!2631465))) (= lambda!464893 lambda!464886))))

(declare-fun bs!1937574 () Bool)

(assert (= bs!1937574 (and b!7500665 b!7500224)))

(assert (=> bs!1937574 (not (= lambda!464893 lambda!464857))))

(declare-fun bs!1937576 () Bool)

(assert (= bs!1937576 (and b!7500665 b!7500486)))

(assert (=> bs!1937576 (= (and (= (regOne!39826 lt!2631468) (regOne!39826 lt!2631453)) (= (regTwo!39826 lt!2631468) (regTwo!39826 lt!2631453))) (= lambda!464893 lambda!464881))))

(declare-fun bs!1937577 () Bool)

(assert (= bs!1937577 (and b!7500665 b!7500208)))

(assert (=> bs!1937577 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631468) (regOne!39826 lt!2631462)) (= (regTwo!39826 lt!2631468) (regTwo!39826 lt!2631462))) (= lambda!464893 lambda!464856))))

(declare-fun bs!1937579 () Bool)

(assert (= bs!1937579 (and b!7500665 d!2302436)))

(assert (=> bs!1937579 (not (= lambda!464893 lambda!464878))))

(declare-fun bs!1937581 () Bool)

(assert (= bs!1937581 (and b!7500665 d!2302414)))

(assert (=> bs!1937581 (= (and (= (regOne!39826 lt!2631468) lt!2631462) (= (regTwo!39826 lt!2631468) rTail!78)) (= lambda!464893 lambda!464867))))

(declare-fun bs!1937582 () Bool)

(assert (= bs!1937582 (and b!7500665 b!7500219)))

(assert (=> bs!1937582 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631468) (regOne!39826 r2!5783)) (= (regTwo!39826 lt!2631468) (regTwo!39826 r2!5783))) (= lambda!464893 lambda!464858))))

(declare-fun bs!1937584 () Bool)

(assert (= bs!1937584 (and b!7500665 b!7500491)))

(assert (=> bs!1937584 (not (= lambda!464893 lambda!464879))))

(declare-fun bs!1937586 () Bool)

(assert (= bs!1937586 (and b!7500665 b!7500566)))

(assert (=> bs!1937586 (not (= lambda!464893 lambda!464884))))

(declare-fun bs!1937587 () Bool)

(assert (= bs!1937587 (and b!7500665 b!7500213)))

(assert (=> bs!1937587 (not (= lambda!464893 lambda!464854))))

(declare-fun bs!1937589 () Bool)

(assert (= bs!1937589 (and b!7500665 b!7500038)))

(assert (=> bs!1937589 (not (= lambda!464893 lambda!464838))))

(assert (=> bs!1937581 (not (= lambda!464893 lambda!464866))))

(declare-fun bs!1937590 () Bool)

(assert (= bs!1937590 (and b!7500665 b!7500230)))

(assert (=> bs!1937590 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631468) (regOne!39826 r1!5845)) (= (regTwo!39826 lt!2631468) (regTwo!39826 r1!5845))) (= lambda!464893 lambda!464860))))

(assert (=> bs!1937589 (= (and (= (regOne!39826 lt!2631468) r2!5783) (= (regTwo!39826 lt!2631468) rTail!78)) (= lambda!464893 lambda!464839))))

(assert (=> b!7500665 true))

(assert (=> b!7500665 true))

(declare-fun b!7500663 () Bool)

(declare-fun e!4471876 () Bool)

(assert (=> b!7500663 (= e!4471876 (= s!13591 (Cons!72247 (c!1384588 lt!2631468) Nil!72247)))))

(declare-fun b!7500664 () Bool)

(declare-fun c!1384737 () Bool)

(assert (=> b!7500664 (= c!1384737 ((_ is Union!19657) lt!2631468))))

(declare-fun e!4471879 () Bool)

(assert (=> b!7500664 (= e!4471876 e!4471879)))

(declare-fun e!4471875 () Bool)

(declare-fun call!688534 () Bool)

(assert (=> b!7500665 (= e!4471875 call!688534)))

(declare-fun b!7500666 () Bool)

(declare-fun e!4471874 () Bool)

(declare-fun e!4471880 () Bool)

(assert (=> b!7500666 (= e!4471874 e!4471880)))

(declare-fun res!3009034 () Bool)

(assert (=> b!7500666 (= res!3009034 (not ((_ is EmptyLang!19657) lt!2631468)))))

(assert (=> b!7500666 (=> (not res!3009034) (not e!4471880))))

(declare-fun b!7500667 () Bool)

(declare-fun call!688533 () Bool)

(assert (=> b!7500667 (= e!4471874 call!688533)))

(declare-fun d!2302498 () Bool)

(declare-fun c!1384736 () Bool)

(assert (=> d!2302498 (= c!1384736 ((_ is EmptyExpr!19657) lt!2631468))))

(assert (=> d!2302498 (= (matchRSpec!4334 lt!2631468 s!13591) e!4471874)))

(declare-fun b!7500668 () Bool)

(declare-fun e!4471877 () Bool)

(assert (=> b!7500668 (= e!4471877 (matchRSpec!4334 (regTwo!39827 lt!2631468) s!13591))))

(declare-fun b!7500669 () Bool)

(declare-fun c!1384739 () Bool)

(assert (=> b!7500669 (= c!1384739 ((_ is ElementMatch!19657) lt!2631468))))

(assert (=> b!7500669 (= e!4471880 e!4471876)))

(declare-fun e!4471878 () Bool)

(assert (=> b!7500670 (= e!4471878 call!688534)))

(declare-fun b!7500671 () Bool)

(assert (=> b!7500671 (= e!4471879 e!4471877)))

(declare-fun res!3009033 () Bool)

(assert (=> b!7500671 (= res!3009033 (matchRSpec!4334 (regOne!39827 lt!2631468) s!13591))))

(assert (=> b!7500671 (=> res!3009033 e!4471877)))

(declare-fun b!7500672 () Bool)

(assert (=> b!7500672 (= e!4471879 e!4471875)))

(declare-fun c!1384738 () Bool)

(assert (=> b!7500672 (= c!1384738 ((_ is Star!19657) lt!2631468))))

(declare-fun b!7500673 () Bool)

(declare-fun res!3009032 () Bool)

(assert (=> b!7500673 (=> res!3009032 e!4471878)))

(assert (=> b!7500673 (= res!3009032 call!688533)))

(assert (=> b!7500673 (= e!4471875 e!4471878)))

(declare-fun bm!688528 () Bool)

(assert (=> bm!688528 (= call!688533 (isEmpty!41289 s!13591))))

(declare-fun bm!688529 () Bool)

(assert (=> bm!688529 (= call!688534 (Exists!4274 (ite c!1384738 lambda!464891 lambda!464893)))))

(assert (= (and d!2302498 c!1384736) b!7500667))

(assert (= (and d!2302498 (not c!1384736)) b!7500666))

(assert (= (and b!7500666 res!3009034) b!7500669))

(assert (= (and b!7500669 c!1384739) b!7500663))

(assert (= (and b!7500669 (not c!1384739)) b!7500664))

(assert (= (and b!7500664 c!1384737) b!7500671))

(assert (= (and b!7500664 (not c!1384737)) b!7500672))

(assert (= (and b!7500671 (not res!3009033)) b!7500668))

(assert (= (and b!7500672 c!1384738) b!7500673))

(assert (= (and b!7500672 (not c!1384738)) b!7500665))

(assert (= (and b!7500673 (not res!3009032)) b!7500670))

(assert (= (or b!7500670 b!7500665) bm!688529))

(assert (= (or b!7500667 b!7500673) bm!688528))

(declare-fun m!8082690 () Bool)

(assert (=> b!7500668 m!8082690))

(declare-fun m!8082692 () Bool)

(assert (=> b!7500671 m!8082692))

(assert (=> bm!688528 m!8082550))

(declare-fun m!8082694 () Bool)

(assert (=> bm!688529 m!8082694))

(assert (=> b!7500034 d!2302498))

(declare-fun bs!1937601 () Bool)

(declare-fun b!7500706 () Bool)

(assert (= bs!1937601 (and b!7500706 b!7500235)))

(declare-fun lambda!464895 () Int)

(assert (=> bs!1937601 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631454) (reg!19986 r1!5845)) (= lt!2631454 r1!5845)) (= lambda!464895 lambda!464859))))

(declare-fun bs!1937604 () Bool)

(assert (= bs!1937604 (and b!7500706 b!7500046)))

(assert (=> bs!1937604 (not (= lambda!464895 lambda!464837))))

(declare-fun bs!1937606 () Bool)

(assert (= bs!1937606 (and b!7500706 b!7500670)))

(assert (=> bs!1937606 (= (and (= (reg!19986 lt!2631454) (reg!19986 lt!2631468)) (= lt!2631454 lt!2631468)) (= lambda!464895 lambda!464891))))

(assert (=> bs!1937604 (not (= lambda!464895 lambda!464836))))

(declare-fun bs!1937608 () Bool)

(assert (= bs!1937608 (and b!7500706 b!7500561)))

(assert (=> bs!1937608 (not (= lambda!464895 lambda!464886))))

(declare-fun bs!1937610 () Bool)

(assert (= bs!1937610 (and b!7500706 b!7500224)))

(assert (=> bs!1937610 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631454) (reg!19986 r2!5783)) (= lt!2631454 r2!5783)) (= lambda!464895 lambda!464857))))

(declare-fun bs!1937612 () Bool)

(assert (= bs!1937612 (and b!7500706 b!7500665)))

(assert (=> bs!1937612 (not (= lambda!464895 lambda!464893))))

(declare-fun bs!1937613 () Bool)

(assert (= bs!1937613 (and b!7500706 b!7500486)))

(assert (=> bs!1937613 (not (= lambda!464895 lambda!464881))))

(declare-fun bs!1937615 () Bool)

(assert (= bs!1937615 (and b!7500706 b!7500208)))

(assert (=> bs!1937615 (not (= lambda!464895 lambda!464856))))

(declare-fun bs!1937617 () Bool)

(assert (= bs!1937617 (and b!7500706 d!2302436)))

(assert (=> bs!1937617 (not (= lambda!464895 lambda!464878))))

(declare-fun bs!1937618 () Bool)

(assert (= bs!1937618 (and b!7500706 d!2302414)))

(assert (=> bs!1937618 (not (= lambda!464895 lambda!464867))))

(declare-fun bs!1937620 () Bool)

(assert (= bs!1937620 (and b!7500706 b!7500219)))

(assert (=> bs!1937620 (not (= lambda!464895 lambda!464858))))

(declare-fun bs!1937621 () Bool)

(assert (= bs!1937621 (and b!7500706 b!7500491)))

(assert (=> bs!1937621 (= (and (= (reg!19986 lt!2631454) (reg!19986 lt!2631453)) (= lt!2631454 lt!2631453)) (= lambda!464895 lambda!464879))))

(declare-fun bs!1937622 () Bool)

(assert (= bs!1937622 (and b!7500706 b!7500566)))

(assert (=> bs!1937622 (= (and (= (reg!19986 lt!2631454) (reg!19986 lt!2631465)) (= lt!2631454 lt!2631465)) (= lambda!464895 lambda!464884))))

(declare-fun bs!1937623 () Bool)

(assert (= bs!1937623 (and b!7500706 b!7500213)))

(assert (=> bs!1937623 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (reg!19986 lt!2631454) (reg!19986 lt!2631462)) (= lt!2631454 lt!2631462)) (= lambda!464895 lambda!464854))))

(declare-fun bs!1937624 () Bool)

(assert (= bs!1937624 (and b!7500706 b!7500038)))

(assert (=> bs!1937624 (not (= lambda!464895 lambda!464838))))

(assert (=> bs!1937618 (not (= lambda!464895 lambda!464866))))

(declare-fun bs!1937625 () Bool)

(assert (= bs!1937625 (and b!7500706 b!7500230)))

(assert (=> bs!1937625 (not (= lambda!464895 lambda!464860))))

(assert (=> bs!1937624 (not (= lambda!464895 lambda!464839))))

(assert (=> b!7500706 true))

(assert (=> b!7500706 true))

(declare-fun bs!1937627 () Bool)

(declare-fun b!7500701 () Bool)

(assert (= bs!1937627 (and b!7500701 b!7500235)))

(declare-fun lambda!464896 () Int)

(assert (=> bs!1937627 (not (= lambda!464896 lambda!464859))))

(declare-fun bs!1937628 () Bool)

(assert (= bs!1937628 (and b!7500701 b!7500046)))

(assert (=> bs!1937628 (= (and (= (regOne!39826 lt!2631454) lt!2631462) (= (regTwo!39826 lt!2631454) rTail!78)) (= lambda!464896 lambda!464837))))

(declare-fun bs!1937629 () Bool)

(assert (= bs!1937629 (and b!7500701 b!7500670)))

(assert (=> bs!1937629 (not (= lambda!464896 lambda!464891))))

(assert (=> bs!1937628 (not (= lambda!464896 lambda!464836))))

(declare-fun bs!1937630 () Bool)

(assert (= bs!1937630 (and b!7500701 b!7500561)))

(assert (=> bs!1937630 (= (and (= (regOne!39826 lt!2631454) (regOne!39826 lt!2631465)) (= (regTwo!39826 lt!2631454) (regTwo!39826 lt!2631465))) (= lambda!464896 lambda!464886))))

(declare-fun bs!1937631 () Bool)

(assert (= bs!1937631 (and b!7500701 b!7500224)))

(assert (=> bs!1937631 (not (= lambda!464896 lambda!464857))))

(declare-fun bs!1937632 () Bool)

(assert (= bs!1937632 (and b!7500701 b!7500665)))

(assert (=> bs!1937632 (= (and (= (regOne!39826 lt!2631454) (regOne!39826 lt!2631468)) (= (regTwo!39826 lt!2631454) (regTwo!39826 lt!2631468))) (= lambda!464896 lambda!464893))))

(declare-fun bs!1937633 () Bool)

(assert (= bs!1937633 (and b!7500701 b!7500486)))

(assert (=> bs!1937633 (= (and (= (regOne!39826 lt!2631454) (regOne!39826 lt!2631453)) (= (regTwo!39826 lt!2631454) (regTwo!39826 lt!2631453))) (= lambda!464896 lambda!464881))))

(declare-fun bs!1937634 () Bool)

(assert (= bs!1937634 (and b!7500701 b!7500208)))

(assert (=> bs!1937634 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631454) (regOne!39826 lt!2631462)) (= (regTwo!39826 lt!2631454) (regTwo!39826 lt!2631462))) (= lambda!464896 lambda!464856))))

(declare-fun bs!1937635 () Bool)

(assert (= bs!1937635 (and b!7500701 d!2302436)))

(assert (=> bs!1937635 (not (= lambda!464896 lambda!464878))))

(declare-fun bs!1937636 () Bool)

(assert (= bs!1937636 (and b!7500701 d!2302414)))

(assert (=> bs!1937636 (= (and (= (regOne!39826 lt!2631454) lt!2631462) (= (regTwo!39826 lt!2631454) rTail!78)) (= lambda!464896 lambda!464867))))

(declare-fun bs!1937637 () Bool)

(assert (= bs!1937637 (and b!7500701 b!7500219)))

(assert (=> bs!1937637 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631454) (regOne!39826 r2!5783)) (= (regTwo!39826 lt!2631454) (regTwo!39826 r2!5783))) (= lambda!464896 lambda!464858))))

(declare-fun bs!1937638 () Bool)

(assert (= bs!1937638 (and b!7500701 b!7500491)))

(assert (=> bs!1937638 (not (= lambda!464896 lambda!464879))))

(declare-fun bs!1937639 () Bool)

(assert (= bs!1937639 (and b!7500701 b!7500566)))

(assert (=> bs!1937639 (not (= lambda!464896 lambda!464884))))

(declare-fun bs!1937640 () Bool)

(assert (= bs!1937640 (and b!7500701 b!7500213)))

(assert (=> bs!1937640 (not (= lambda!464896 lambda!464854))))

(declare-fun bs!1937641 () Bool)

(assert (= bs!1937641 (and b!7500701 b!7500038)))

(assert (=> bs!1937641 (not (= lambda!464896 lambda!464838))))

(assert (=> bs!1937636 (not (= lambda!464896 lambda!464866))))

(declare-fun bs!1937642 () Bool)

(assert (= bs!1937642 (and b!7500701 b!7500230)))

(assert (=> bs!1937642 (= (and (= s!13591 (_1!37677 lt!2631466)) (= (regOne!39826 lt!2631454) (regOne!39826 r1!5845)) (= (regTwo!39826 lt!2631454) (regTwo!39826 r1!5845))) (= lambda!464896 lambda!464860))))

(assert (=> bs!1937641 (= (and (= (regOne!39826 lt!2631454) r2!5783) (= (regTwo!39826 lt!2631454) rTail!78)) (= lambda!464896 lambda!464839))))

(declare-fun bs!1937643 () Bool)

(assert (= bs!1937643 (and b!7500701 b!7500706)))

(assert (=> bs!1937643 (not (= lambda!464896 lambda!464895))))

(assert (=> b!7500701 true))

(assert (=> b!7500701 true))

(declare-fun b!7500699 () Bool)

(declare-fun e!4471897 () Bool)

(assert (=> b!7500699 (= e!4471897 (= s!13591 (Cons!72247 (c!1384588 lt!2631454) Nil!72247)))))

(declare-fun b!7500700 () Bool)

(declare-fun c!1384748 () Bool)

(assert (=> b!7500700 (= c!1384748 ((_ is Union!19657) lt!2631454))))

(declare-fun e!4471900 () Bool)

(assert (=> b!7500700 (= e!4471897 e!4471900)))

(declare-fun e!4471896 () Bool)

(declare-fun call!688539 () Bool)

(assert (=> b!7500701 (= e!4471896 call!688539)))

(declare-fun b!7500702 () Bool)

(declare-fun e!4471895 () Bool)

(declare-fun e!4471901 () Bool)

(assert (=> b!7500702 (= e!4471895 e!4471901)))

(declare-fun res!3009048 () Bool)

(assert (=> b!7500702 (= res!3009048 (not ((_ is EmptyLang!19657) lt!2631454)))))

(assert (=> b!7500702 (=> (not res!3009048) (not e!4471901))))

(declare-fun b!7500703 () Bool)

(declare-fun call!688538 () Bool)

(assert (=> b!7500703 (= e!4471895 call!688538)))

(declare-fun d!2302506 () Bool)

(declare-fun c!1384747 () Bool)

(assert (=> d!2302506 (= c!1384747 ((_ is EmptyExpr!19657) lt!2631454))))

(assert (=> d!2302506 (= (matchRSpec!4334 lt!2631454 s!13591) e!4471895)))

(declare-fun b!7500704 () Bool)

(declare-fun e!4471898 () Bool)

(assert (=> b!7500704 (= e!4471898 (matchRSpec!4334 (regTwo!39827 lt!2631454) s!13591))))

(declare-fun b!7500705 () Bool)

(declare-fun c!1384750 () Bool)

(assert (=> b!7500705 (= c!1384750 ((_ is ElementMatch!19657) lt!2631454))))

(assert (=> b!7500705 (= e!4471901 e!4471897)))

(declare-fun e!4471899 () Bool)

(assert (=> b!7500706 (= e!4471899 call!688539)))

(declare-fun b!7500707 () Bool)

(assert (=> b!7500707 (= e!4471900 e!4471898)))

(declare-fun res!3009047 () Bool)

(assert (=> b!7500707 (= res!3009047 (matchRSpec!4334 (regOne!39827 lt!2631454) s!13591))))

(assert (=> b!7500707 (=> res!3009047 e!4471898)))

(declare-fun b!7500708 () Bool)

(assert (=> b!7500708 (= e!4471900 e!4471896)))

(declare-fun c!1384749 () Bool)

(assert (=> b!7500708 (= c!1384749 ((_ is Star!19657) lt!2631454))))

(declare-fun b!7500709 () Bool)

(declare-fun res!3009046 () Bool)

(assert (=> b!7500709 (=> res!3009046 e!4471899)))

(assert (=> b!7500709 (= res!3009046 call!688538)))

(assert (=> b!7500709 (= e!4471896 e!4471899)))

(declare-fun bm!688533 () Bool)

(assert (=> bm!688533 (= call!688538 (isEmpty!41289 s!13591))))

(declare-fun bm!688534 () Bool)

(assert (=> bm!688534 (= call!688539 (Exists!4274 (ite c!1384749 lambda!464895 lambda!464896)))))

(assert (= (and d!2302506 c!1384747) b!7500703))

(assert (= (and d!2302506 (not c!1384747)) b!7500702))

(assert (= (and b!7500702 res!3009048) b!7500705))

(assert (= (and b!7500705 c!1384750) b!7500699))

(assert (= (and b!7500705 (not c!1384750)) b!7500700))

(assert (= (and b!7500700 c!1384748) b!7500707))

(assert (= (and b!7500700 (not c!1384748)) b!7500708))

(assert (= (and b!7500707 (not res!3009047)) b!7500704))

(assert (= (and b!7500708 c!1384749) b!7500709))

(assert (= (and b!7500708 (not c!1384749)) b!7500701))

(assert (= (and b!7500709 (not res!3009046)) b!7500706))

(assert (= (or b!7500706 b!7500701) bm!688534))

(assert (= (or b!7500703 b!7500709) bm!688533))

(declare-fun m!8082728 () Bool)

(assert (=> b!7500704 m!8082728))

(declare-fun m!8082730 () Bool)

(assert (=> b!7500707 m!8082730))

(assert (=> bm!688533 m!8082550))

(declare-fun m!8082732 () Bool)

(assert (=> bm!688534 m!8082732))

(assert (=> b!7500034 d!2302506))

(declare-fun bs!1937644 () Bool)

(declare-fun d!2302518 () Bool)

(assert (= bs!1937644 (and d!2302518 b!7500235)))

(declare-fun lambda!464897 () Int)

(assert (=> bs!1937644 (not (= lambda!464897 lambda!464859))))

(declare-fun bs!1937645 () Bool)

(assert (= bs!1937645 (and d!2302518 b!7500701)))

(assert (=> bs!1937645 (not (= lambda!464897 lambda!464896))))

(declare-fun bs!1937646 () Bool)

(assert (= bs!1937646 (and d!2302518 b!7500046)))

(assert (=> bs!1937646 (not (= lambda!464897 lambda!464837))))

(declare-fun bs!1937647 () Bool)

(assert (= bs!1937647 (and d!2302518 b!7500670)))

(assert (=> bs!1937647 (not (= lambda!464897 lambda!464891))))

(assert (=> bs!1937646 (= (= r2!5783 lt!2631462) (= lambda!464897 lambda!464836))))

(declare-fun bs!1937648 () Bool)

(assert (= bs!1937648 (and d!2302518 b!7500561)))

(assert (=> bs!1937648 (not (= lambda!464897 lambda!464886))))

(declare-fun bs!1937649 () Bool)

(assert (= bs!1937649 (and d!2302518 b!7500224)))

(assert (=> bs!1937649 (not (= lambda!464897 lambda!464857))))

(declare-fun bs!1937650 () Bool)

(assert (= bs!1937650 (and d!2302518 b!7500665)))

(assert (=> bs!1937650 (not (= lambda!464897 lambda!464893))))

(declare-fun bs!1937651 () Bool)

(assert (= bs!1937651 (and d!2302518 b!7500486)))

(assert (=> bs!1937651 (not (= lambda!464897 lambda!464881))))

(declare-fun bs!1937652 () Bool)

(assert (= bs!1937652 (and d!2302518 b!7500208)))

(assert (=> bs!1937652 (not (= lambda!464897 lambda!464856))))

(declare-fun bs!1937653 () Bool)

(assert (= bs!1937653 (and d!2302518 d!2302436)))

(assert (=> bs!1937653 (= (= r2!5783 lt!2631462) (= lambda!464897 lambda!464878))))

(declare-fun bs!1937654 () Bool)

(assert (= bs!1937654 (and d!2302518 d!2302414)))

(assert (=> bs!1937654 (not (= lambda!464897 lambda!464867))))

(declare-fun bs!1937655 () Bool)

(assert (= bs!1937655 (and d!2302518 b!7500219)))

(assert (=> bs!1937655 (not (= lambda!464897 lambda!464858))))

(declare-fun bs!1937656 () Bool)

(assert (= bs!1937656 (and d!2302518 b!7500491)))

(assert (=> bs!1937656 (not (= lambda!464897 lambda!464879))))

(declare-fun bs!1937657 () Bool)

(assert (= bs!1937657 (and d!2302518 b!7500566)))

(assert (=> bs!1937657 (not (= lambda!464897 lambda!464884))))

(declare-fun bs!1937658 () Bool)

(assert (= bs!1937658 (and d!2302518 b!7500213)))

(assert (=> bs!1937658 (not (= lambda!464897 lambda!464854))))

(declare-fun bs!1937659 () Bool)

(assert (= bs!1937659 (and d!2302518 b!7500038)))

(assert (=> bs!1937659 (= lambda!464897 lambda!464838)))

(assert (=> bs!1937654 (= (= r2!5783 lt!2631462) (= lambda!464897 lambda!464866))))

(declare-fun bs!1937660 () Bool)

(assert (= bs!1937660 (and d!2302518 b!7500230)))

(assert (=> bs!1937660 (not (= lambda!464897 lambda!464860))))

(assert (=> bs!1937659 (not (= lambda!464897 lambda!464839))))

(declare-fun bs!1937661 () Bool)

(assert (= bs!1937661 (and d!2302518 b!7500706)))

(assert (=> bs!1937661 (not (= lambda!464897 lambda!464895))))

(assert (=> d!2302518 true))

(assert (=> d!2302518 true))

(assert (=> d!2302518 true))

(declare-fun lambda!464898 () Int)

(assert (=> bs!1937644 (not (= lambda!464898 lambda!464859))))

(assert (=> bs!1937645 (= (and (= r2!5783 (regOne!39826 lt!2631454)) (= rTail!78 (regTwo!39826 lt!2631454))) (= lambda!464898 lambda!464896))))

(assert (=> bs!1937646 (= (= r2!5783 lt!2631462) (= lambda!464898 lambda!464837))))

(assert (=> bs!1937647 (not (= lambda!464898 lambda!464891))))

(assert (=> bs!1937646 (not (= lambda!464898 lambda!464836))))

(assert (=> bs!1937648 (= (and (= r2!5783 (regOne!39826 lt!2631465)) (= rTail!78 (regTwo!39826 lt!2631465))) (= lambda!464898 lambda!464886))))

(assert (=> bs!1937649 (not (= lambda!464898 lambda!464857))))

(assert (=> bs!1937650 (= (and (= r2!5783 (regOne!39826 lt!2631468)) (= rTail!78 (regTwo!39826 lt!2631468))) (= lambda!464898 lambda!464893))))

(assert (=> bs!1937651 (= (and (= r2!5783 (regOne!39826 lt!2631453)) (= rTail!78 (regTwo!39826 lt!2631453))) (= lambda!464898 lambda!464881))))

(assert (=> bs!1937652 (= (and (= s!13591 (_1!37677 lt!2631466)) (= r2!5783 (regOne!39826 lt!2631462)) (= rTail!78 (regTwo!39826 lt!2631462))) (= lambda!464898 lambda!464856))))

(declare-fun bs!1937662 () Bool)

(assert (= bs!1937662 d!2302518))

(assert (=> bs!1937662 (not (= lambda!464898 lambda!464897))))

(assert (=> bs!1937653 (not (= lambda!464898 lambda!464878))))

(assert (=> bs!1937654 (= (= r2!5783 lt!2631462) (= lambda!464898 lambda!464867))))

(assert (=> bs!1937655 (= (and (= s!13591 (_1!37677 lt!2631466)) (= r2!5783 (regOne!39826 r2!5783)) (= rTail!78 (regTwo!39826 r2!5783))) (= lambda!464898 lambda!464858))))

(assert (=> bs!1937656 (not (= lambda!464898 lambda!464879))))

(assert (=> bs!1937657 (not (= lambda!464898 lambda!464884))))

(assert (=> bs!1937658 (not (= lambda!464898 lambda!464854))))

(assert (=> bs!1937659 (not (= lambda!464898 lambda!464838))))

(assert (=> bs!1937654 (not (= lambda!464898 lambda!464866))))

(assert (=> bs!1937660 (= (and (= s!13591 (_1!37677 lt!2631466)) (= r2!5783 (regOne!39826 r1!5845)) (= rTail!78 (regTwo!39826 r1!5845))) (= lambda!464898 lambda!464860))))

(assert (=> bs!1937659 (= lambda!464898 lambda!464839)))

(assert (=> bs!1937661 (not (= lambda!464898 lambda!464895))))

(assert (=> d!2302518 true))

(assert (=> d!2302518 true))

(assert (=> d!2302518 true))

(assert (=> d!2302518 (= (Exists!4274 lambda!464897) (Exists!4274 lambda!464898))))

(declare-fun lt!2631553 () Unit!166145)

(assert (=> d!2302518 (= lt!2631553 (choose!57980 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302518 (validRegex!10171 r2!5783)))

(assert (=> d!2302518 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2598 r2!5783 rTail!78 s!13591) lt!2631553)))

(declare-fun m!8082748 () Bool)

(assert (=> bs!1937662 m!8082748))

(declare-fun m!8082750 () Bool)

(assert (=> bs!1937662 m!8082750))

(declare-fun m!8082752 () Bool)

(assert (=> bs!1937662 m!8082752))

(assert (=> bs!1937662 m!8082222))

(assert (=> b!7500038 d!2302518))

(declare-fun d!2302522 () Bool)

(assert (=> d!2302522 (= (get!25341 lt!2631473) (v!54334 lt!2631473))))

(assert (=> b!7500038 d!2302522))

(declare-fun bs!1937663 () Bool)

(declare-fun d!2302524 () Bool)

(assert (= bs!1937663 (and d!2302524 b!7500701)))

(declare-fun lambda!464899 () Int)

(assert (=> bs!1937663 (not (= lambda!464899 lambda!464896))))

(declare-fun bs!1937664 () Bool)

(assert (= bs!1937664 (and d!2302524 b!7500046)))

(assert (=> bs!1937664 (not (= lambda!464899 lambda!464837))))

(declare-fun bs!1937665 () Bool)

(assert (= bs!1937665 (and d!2302524 b!7500670)))

(assert (=> bs!1937665 (not (= lambda!464899 lambda!464891))))

(assert (=> bs!1937664 (= (= r2!5783 lt!2631462) (= lambda!464899 lambda!464836))))

(declare-fun bs!1937666 () Bool)

(assert (= bs!1937666 (and d!2302524 b!7500561)))

(assert (=> bs!1937666 (not (= lambda!464899 lambda!464886))))

(declare-fun bs!1937667 () Bool)

(assert (= bs!1937667 (and d!2302524 b!7500224)))

(assert (=> bs!1937667 (not (= lambda!464899 lambda!464857))))

(declare-fun bs!1937668 () Bool)

(assert (= bs!1937668 (and d!2302524 b!7500665)))

(assert (=> bs!1937668 (not (= lambda!464899 lambda!464893))))

(declare-fun bs!1937669 () Bool)

(assert (= bs!1937669 (and d!2302524 d!2302518)))

(assert (=> bs!1937669 (not (= lambda!464899 lambda!464898))))

(declare-fun bs!1937670 () Bool)

(assert (= bs!1937670 (and d!2302524 b!7500235)))

(assert (=> bs!1937670 (not (= lambda!464899 lambda!464859))))

(declare-fun bs!1937671 () Bool)

(assert (= bs!1937671 (and d!2302524 b!7500486)))

(assert (=> bs!1937671 (not (= lambda!464899 lambda!464881))))

(declare-fun bs!1937672 () Bool)

(assert (= bs!1937672 (and d!2302524 b!7500208)))

(assert (=> bs!1937672 (not (= lambda!464899 lambda!464856))))

(assert (=> bs!1937669 (= lambda!464899 lambda!464897)))

(declare-fun bs!1937673 () Bool)

(assert (= bs!1937673 (and d!2302524 d!2302436)))

(assert (=> bs!1937673 (= (= r2!5783 lt!2631462) (= lambda!464899 lambda!464878))))

(declare-fun bs!1937674 () Bool)

(assert (= bs!1937674 (and d!2302524 d!2302414)))

(assert (=> bs!1937674 (not (= lambda!464899 lambda!464867))))

(declare-fun bs!1937675 () Bool)

(assert (= bs!1937675 (and d!2302524 b!7500219)))

(assert (=> bs!1937675 (not (= lambda!464899 lambda!464858))))

(declare-fun bs!1937676 () Bool)

(assert (= bs!1937676 (and d!2302524 b!7500491)))

(assert (=> bs!1937676 (not (= lambda!464899 lambda!464879))))

(declare-fun bs!1937677 () Bool)

(assert (= bs!1937677 (and d!2302524 b!7500566)))

(assert (=> bs!1937677 (not (= lambda!464899 lambda!464884))))

(declare-fun bs!1937678 () Bool)

(assert (= bs!1937678 (and d!2302524 b!7500213)))

(assert (=> bs!1937678 (not (= lambda!464899 lambda!464854))))

(declare-fun bs!1937679 () Bool)

(assert (= bs!1937679 (and d!2302524 b!7500038)))

(assert (=> bs!1937679 (= lambda!464899 lambda!464838)))

(assert (=> bs!1937674 (= (= r2!5783 lt!2631462) (= lambda!464899 lambda!464866))))

(declare-fun bs!1937680 () Bool)

(assert (= bs!1937680 (and d!2302524 b!7500230)))

(assert (=> bs!1937680 (not (= lambda!464899 lambda!464860))))

(assert (=> bs!1937679 (not (= lambda!464899 lambda!464839))))

(declare-fun bs!1937681 () Bool)

(assert (= bs!1937681 (and d!2302524 b!7500706)))

(assert (=> bs!1937681 (not (= lambda!464899 lambda!464895))))

(assert (=> d!2302524 true))

(assert (=> d!2302524 true))

(assert (=> d!2302524 true))

(assert (=> d!2302524 (= (isDefined!13895 (findConcatSeparation!3328 r2!5783 rTail!78 Nil!72247 s!13591 s!13591)) (Exists!4274 lambda!464899))))

(declare-fun lt!2631557 () Unit!166145)

(assert (=> d!2302524 (= lt!2631557 (choose!57982 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302524 (validRegex!10171 r2!5783)))

(assert (=> d!2302524 (= (lemmaFindConcatSeparationEquivalentToExists!3086 r2!5783 rTail!78 s!13591) lt!2631557)))

(declare-fun bs!1937682 () Bool)

(assert (= bs!1937682 d!2302524))

(assert (=> bs!1937682 m!8082222))

(declare-fun m!8082772 () Bool)

(assert (=> bs!1937682 m!8082772))

(declare-fun m!8082774 () Bool)

(assert (=> bs!1937682 m!8082774))

(assert (=> bs!1937682 m!8082234))

(assert (=> bs!1937682 m!8082234))

(declare-fun m!8082776 () Bool)

(assert (=> bs!1937682 m!8082776))

(assert (=> b!7500038 d!2302524))

(declare-fun d!2302528 () Bool)

(assert (=> d!2302528 (= (isDefined!13895 lt!2631473) (not (isEmpty!41291 lt!2631473)))))

(declare-fun bs!1937683 () Bool)

(assert (= bs!1937683 d!2302528))

(declare-fun m!8082778 () Bool)

(assert (=> bs!1937683 m!8082778))

(assert (=> b!7500038 d!2302528))

(declare-fun d!2302530 () Bool)

(assert (=> d!2302530 (= (Exists!4274 lambda!464839) (choose!57981 lambda!464839))))

(declare-fun bs!1937684 () Bool)

(assert (= bs!1937684 d!2302530))

(declare-fun m!8082780 () Bool)

(assert (=> bs!1937684 m!8082780))

(assert (=> b!7500038 d!2302530))

(declare-fun b!7500789 () Bool)

(declare-fun e!4471947 () Bool)

(declare-fun lt!2631562 () Bool)

(assert (=> b!7500789 (= e!4471947 (not lt!2631562))))

(declare-fun b!7500790 () Bool)

(declare-fun e!4471949 () Bool)

(assert (=> b!7500790 (= e!4471949 (not (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 r2!5783))))))

(declare-fun b!7500791 () Bool)

(declare-fun e!4471946 () Bool)

(assert (=> b!7500791 (= e!4471946 (nullable!8592 r2!5783))))

(declare-fun b!7500792 () Bool)

(declare-fun res!3009085 () Bool)

(assert (=> b!7500792 (=> res!3009085 e!4471949)))

(assert (=> b!7500792 (= res!3009085 (not (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466)))))))

(declare-fun b!7500793 () Bool)

(declare-fun e!4471945 () Bool)

(assert (=> b!7500793 (= e!4471945 e!4471947)))

(declare-fun c!1384766 () Bool)

(assert (=> b!7500793 (= c!1384766 ((_ is EmptyLang!19657) r2!5783))))

(declare-fun d!2302532 () Bool)

(assert (=> d!2302532 e!4471945))

(declare-fun c!1384764 () Bool)

(assert (=> d!2302532 (= c!1384764 ((_ is EmptyExpr!19657) r2!5783))))

(assert (=> d!2302532 (= lt!2631562 e!4471946)))

(declare-fun c!1384765 () Bool)

(assert (=> d!2302532 (= c!1384765 (isEmpty!41289 (_1!37677 lt!2631466)))))

(assert (=> d!2302532 (validRegex!10171 r2!5783)))

(assert (=> d!2302532 (= (matchR!9419 r2!5783 (_1!37677 lt!2631466)) lt!2631562)))

(declare-fun b!7500794 () Bool)

(declare-fun e!4471948 () Bool)

(assert (=> b!7500794 (= e!4471948 (= (head!15389 (_1!37677 lt!2631466)) (c!1384588 r2!5783)))))

(declare-fun b!7500795 () Bool)

(assert (=> b!7500795 (= e!4471946 (matchR!9419 (derivativeStep!5649 r2!5783 (head!15389 (_1!37677 lt!2631466))) (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500796 () Bool)

(declare-fun e!4471944 () Bool)

(declare-fun e!4471943 () Bool)

(assert (=> b!7500796 (= e!4471944 e!4471943)))

(declare-fun res!3009087 () Bool)

(assert (=> b!7500796 (=> (not res!3009087) (not e!4471943))))

(assert (=> b!7500796 (= res!3009087 (not lt!2631562))))

(declare-fun bm!688543 () Bool)

(declare-fun call!688548 () Bool)

(assert (=> bm!688543 (= call!688548 (isEmpty!41289 (_1!37677 lt!2631466)))))

(declare-fun b!7500797 () Bool)

(assert (=> b!7500797 (= e!4471945 (= lt!2631562 call!688548))))

(declare-fun b!7500798 () Bool)

(assert (=> b!7500798 (= e!4471943 e!4471949)))

(declare-fun res!3009086 () Bool)

(assert (=> b!7500798 (=> res!3009086 e!4471949)))

(assert (=> b!7500798 (= res!3009086 call!688548)))

(declare-fun b!7500799 () Bool)

(declare-fun res!3009090 () Bool)

(assert (=> b!7500799 (=> res!3009090 e!4471944)))

(assert (=> b!7500799 (= res!3009090 (not ((_ is ElementMatch!19657) r2!5783)))))

(assert (=> b!7500799 (= e!4471947 e!4471944)))

(declare-fun b!7500800 () Bool)

(declare-fun res!3009088 () Bool)

(assert (=> b!7500800 (=> (not res!3009088) (not e!4471948))))

(assert (=> b!7500800 (= res!3009088 (not call!688548))))

(declare-fun b!7500801 () Bool)

(declare-fun res!3009089 () Bool)

(assert (=> b!7500801 (=> (not res!3009089) (not e!4471948))))

(assert (=> b!7500801 (= res!3009089 (isEmpty!41289 (tail!14958 (_1!37677 lt!2631466))))))

(declare-fun b!7500802 () Bool)

(declare-fun res!3009084 () Bool)

(assert (=> b!7500802 (=> res!3009084 e!4471944)))

(assert (=> b!7500802 (= res!3009084 e!4471948)))

(declare-fun res!3009091 () Bool)

(assert (=> b!7500802 (=> (not res!3009091) (not e!4471948))))

(assert (=> b!7500802 (= res!3009091 lt!2631562)))

(assert (= (and d!2302532 c!1384765) b!7500791))

(assert (= (and d!2302532 (not c!1384765)) b!7500795))

(assert (= (and d!2302532 c!1384764) b!7500797))

(assert (= (and d!2302532 (not c!1384764)) b!7500793))

(assert (= (and b!7500793 c!1384766) b!7500789))

(assert (= (and b!7500793 (not c!1384766)) b!7500799))

(assert (= (and b!7500799 (not res!3009090)) b!7500802))

(assert (= (and b!7500802 res!3009091) b!7500800))

(assert (= (and b!7500800 res!3009088) b!7500801))

(assert (= (and b!7500801 res!3009089) b!7500794))

(assert (= (and b!7500802 (not res!3009084)) b!7500796))

(assert (= (and b!7500796 res!3009087) b!7500798))

(assert (= (and b!7500798 (not res!3009086)) b!7500792))

(assert (= (and b!7500792 (not res!3009085)) b!7500790))

(assert (= (or b!7500797 b!7500798 b!7500800) bm!688543))

(assert (=> b!7500801 m!8082322))

(assert (=> b!7500801 m!8082322))

(assert (=> b!7500801 m!8082324))

(assert (=> b!7500795 m!8082326))

(assert (=> b!7500795 m!8082326))

(declare-fun m!8082782 () Bool)

(assert (=> b!7500795 m!8082782))

(assert (=> b!7500795 m!8082322))

(assert (=> b!7500795 m!8082782))

(assert (=> b!7500795 m!8082322))

(declare-fun m!8082784 () Bool)

(assert (=> b!7500795 m!8082784))

(assert (=> b!7500792 m!8082322))

(assert (=> b!7500792 m!8082322))

(assert (=> b!7500792 m!8082324))

(assert (=> bm!688543 m!8082332))

(declare-fun m!8082786 () Bool)

(assert (=> b!7500791 m!8082786))

(assert (=> d!2302532 m!8082332))

(assert (=> d!2302532 m!8082222))

(assert (=> b!7500794 m!8082326))

(assert (=> b!7500790 m!8082326))

(assert (=> b!7500038 d!2302532))

(declare-fun b!7500831 () Bool)

(declare-fun e!4471958 () Bool)

(assert (=> b!7500831 (= e!4471958 (matchR!9419 rTail!78 s!13591))))

(declare-fun b!7500832 () Bool)

(declare-fun e!4471961 () Option!17206)

(assert (=> b!7500832 (= e!4471961 None!17205)))

(declare-fun d!2302534 () Bool)

(declare-fun e!4471959 () Bool)

(assert (=> d!2302534 e!4471959))

(declare-fun res!3009095 () Bool)

(assert (=> d!2302534 (=> res!3009095 e!4471959)))

(declare-fun e!4471957 () Bool)

(assert (=> d!2302534 (= res!3009095 e!4471957)))

(declare-fun res!3009093 () Bool)

(assert (=> d!2302534 (=> (not res!3009093) (not e!4471957))))

(declare-fun lt!2631565 () Option!17206)

(assert (=> d!2302534 (= res!3009093 (isDefined!13895 lt!2631565))))

(declare-fun e!4471960 () Option!17206)

(assert (=> d!2302534 (= lt!2631565 e!4471960)))

(declare-fun c!1384767 () Bool)

(assert (=> d!2302534 (= c!1384767 e!4471958)))

(declare-fun res!3009096 () Bool)

(assert (=> d!2302534 (=> (not res!3009096) (not e!4471958))))

(assert (=> d!2302534 (= res!3009096 (matchR!9419 r2!5783 Nil!72247))))

(assert (=> d!2302534 (validRegex!10171 r2!5783)))

(assert (=> d!2302534 (= (findConcatSeparation!3328 r2!5783 rTail!78 Nil!72247 s!13591 s!13591) lt!2631565)))

(declare-fun b!7500833 () Bool)

(assert (=> b!7500833 (= e!4471960 (Some!17205 (tuple2!68749 Nil!72247 s!13591)))))

(declare-fun b!7500834 () Bool)

(assert (=> b!7500834 (= e!4471959 (not (isDefined!13895 lt!2631565)))))

(declare-fun b!7500835 () Bool)

(declare-fun res!3009092 () Bool)

(assert (=> b!7500835 (=> (not res!3009092) (not e!4471957))))

(assert (=> b!7500835 (= res!3009092 (matchR!9419 rTail!78 (_2!37677 (get!25341 lt!2631565))))))

(declare-fun b!7500836 () Bool)

(declare-fun lt!2631564 () Unit!166145)

(declare-fun lt!2631563 () Unit!166145)

(assert (=> b!7500836 (= lt!2631564 lt!2631563)))

(assert (=> b!7500836 (= (++!17262 (++!17262 Nil!72247 (Cons!72247 (h!78695 s!13591) Nil!72247)) (t!386940 s!13591)) s!13591)))

(assert (=> b!7500836 (= lt!2631563 (lemmaMoveElementToOtherListKeepsConcatEq!3136 Nil!72247 (h!78695 s!13591) (t!386940 s!13591) s!13591))))

(assert (=> b!7500836 (= e!4471961 (findConcatSeparation!3328 r2!5783 rTail!78 (++!17262 Nil!72247 (Cons!72247 (h!78695 s!13591) Nil!72247)) (t!386940 s!13591) s!13591))))

(declare-fun b!7500837 () Bool)

(declare-fun res!3009094 () Bool)

(assert (=> b!7500837 (=> (not res!3009094) (not e!4471957))))

(assert (=> b!7500837 (= res!3009094 (matchR!9419 r2!5783 (_1!37677 (get!25341 lt!2631565))))))

(declare-fun b!7500838 () Bool)

(assert (=> b!7500838 (= e!4471960 e!4471961)))

(declare-fun c!1384768 () Bool)

(assert (=> b!7500838 (= c!1384768 ((_ is Nil!72247) s!13591))))

(declare-fun b!7500839 () Bool)

(assert (=> b!7500839 (= e!4471957 (= (++!17262 (_1!37677 (get!25341 lt!2631565)) (_2!37677 (get!25341 lt!2631565))) s!13591))))

(assert (= (and d!2302534 res!3009096) b!7500831))

(assert (= (and d!2302534 c!1384767) b!7500833))

(assert (= (and d!2302534 (not c!1384767)) b!7500838))

(assert (= (and b!7500838 c!1384768) b!7500832))

(assert (= (and b!7500838 (not c!1384768)) b!7500836))

(assert (= (and d!2302534 res!3009093) b!7500837))

(assert (= (and b!7500837 res!3009094) b!7500835))

(assert (= (and b!7500835 res!3009092) b!7500839))

(assert (= (and d!2302534 (not res!3009095)) b!7500834))

(declare-fun m!8082788 () Bool)

(assert (=> b!7500835 m!8082788))

(declare-fun m!8082790 () Bool)

(assert (=> b!7500835 m!8082790))

(assert (=> b!7500831 m!8082472))

(assert (=> b!7500839 m!8082788))

(declare-fun m!8082792 () Bool)

(assert (=> b!7500839 m!8082792))

(assert (=> b!7500837 m!8082788))

(declare-fun m!8082794 () Bool)

(assert (=> b!7500837 m!8082794))

(declare-fun m!8082796 () Bool)

(assert (=> d!2302534 m!8082796))

(declare-fun m!8082798 () Bool)

(assert (=> d!2302534 m!8082798))

(assert (=> d!2302534 m!8082222))

(assert (=> b!7500834 m!8082796))

(assert (=> b!7500836 m!8082482))

(assert (=> b!7500836 m!8082482))

(assert (=> b!7500836 m!8082484))

(assert (=> b!7500836 m!8082486))

(assert (=> b!7500836 m!8082482))

(declare-fun m!8082800 () Bool)

(assert (=> b!7500836 m!8082800))

(assert (=> b!7500038 d!2302534))

(declare-fun d!2302536 () Bool)

(assert (=> d!2302536 (= (Exists!4274 lambda!464838) (choose!57981 lambda!464838))))

(declare-fun bs!1937685 () Bool)

(assert (= bs!1937685 d!2302536))

(declare-fun m!8082802 () Bool)

(assert (=> bs!1937685 m!8082802))

(assert (=> b!7500038 d!2302536))

(declare-fun b!7500882 () Bool)

(declare-fun e!4471973 () Bool)

(declare-fun tp!2177248 () Bool)

(declare-fun tp!2177250 () Bool)

(assert (=> b!7500882 (= e!4471973 (and tp!2177248 tp!2177250))))

(assert (=> b!7500031 (= tp!2177148 e!4471973)))

(declare-fun b!7500879 () Bool)

(assert (=> b!7500879 (= e!4471973 tp_is_empty!49603)))

(declare-fun b!7500880 () Bool)

(declare-fun tp!2177252 () Bool)

(declare-fun tp!2177251 () Bool)

(assert (=> b!7500880 (= e!4471973 (and tp!2177252 tp!2177251))))

(declare-fun b!7500881 () Bool)

(declare-fun tp!2177249 () Bool)

(assert (=> b!7500881 (= e!4471973 tp!2177249)))

(assert (= (and b!7500031 ((_ is ElementMatch!19657) (reg!19986 r1!5845))) b!7500879))

(assert (= (and b!7500031 ((_ is Concat!28502) (reg!19986 r1!5845))) b!7500880))

(assert (= (and b!7500031 ((_ is Star!19657) (reg!19986 r1!5845))) b!7500881))

(assert (= (and b!7500031 ((_ is Union!19657) (reg!19986 r1!5845))) b!7500882))

(declare-fun b!7500886 () Bool)

(declare-fun e!4471974 () Bool)

(declare-fun tp!2177253 () Bool)

(declare-fun tp!2177255 () Bool)

(assert (=> b!7500886 (= e!4471974 (and tp!2177253 tp!2177255))))

(assert (=> b!7500042 (= tp!2177143 e!4471974)))

(declare-fun b!7500883 () Bool)

(assert (=> b!7500883 (= e!4471974 tp_is_empty!49603)))

(declare-fun b!7500884 () Bool)

(declare-fun tp!2177257 () Bool)

(declare-fun tp!2177256 () Bool)

(assert (=> b!7500884 (= e!4471974 (and tp!2177257 tp!2177256))))

(declare-fun b!7500885 () Bool)

(declare-fun tp!2177254 () Bool)

(assert (=> b!7500885 (= e!4471974 tp!2177254)))

(assert (= (and b!7500042 ((_ is ElementMatch!19657) (regOne!39826 r2!5783))) b!7500883))

(assert (= (and b!7500042 ((_ is Concat!28502) (regOne!39826 r2!5783))) b!7500884))

(assert (= (and b!7500042 ((_ is Star!19657) (regOne!39826 r2!5783))) b!7500885))

(assert (= (and b!7500042 ((_ is Union!19657) (regOne!39826 r2!5783))) b!7500886))

(declare-fun b!7500890 () Bool)

(declare-fun e!4471975 () Bool)

(declare-fun tp!2177258 () Bool)

(declare-fun tp!2177260 () Bool)

(assert (=> b!7500890 (= e!4471975 (and tp!2177258 tp!2177260))))

(assert (=> b!7500042 (= tp!2177142 e!4471975)))

(declare-fun b!7500887 () Bool)

(assert (=> b!7500887 (= e!4471975 tp_is_empty!49603)))

(declare-fun b!7500888 () Bool)

(declare-fun tp!2177262 () Bool)

(declare-fun tp!2177261 () Bool)

(assert (=> b!7500888 (= e!4471975 (and tp!2177262 tp!2177261))))

(declare-fun b!7500889 () Bool)

(declare-fun tp!2177259 () Bool)

(assert (=> b!7500889 (= e!4471975 tp!2177259)))

(assert (= (and b!7500042 ((_ is ElementMatch!19657) (regTwo!39826 r2!5783))) b!7500887))

(assert (= (and b!7500042 ((_ is Concat!28502) (regTwo!39826 r2!5783))) b!7500888))

(assert (= (and b!7500042 ((_ is Star!19657) (regTwo!39826 r2!5783))) b!7500889))

(assert (= (and b!7500042 ((_ is Union!19657) (regTwo!39826 r2!5783))) b!7500890))

(declare-fun b!7500894 () Bool)

(declare-fun e!4471976 () Bool)

(declare-fun tp!2177263 () Bool)

(declare-fun tp!2177265 () Bool)

(assert (=> b!7500894 (= e!4471976 (and tp!2177263 tp!2177265))))

(assert (=> b!7500035 (= tp!2177147 e!4471976)))

(declare-fun b!7500891 () Bool)

(assert (=> b!7500891 (= e!4471976 tp_is_empty!49603)))

(declare-fun b!7500892 () Bool)

(declare-fun tp!2177267 () Bool)

(declare-fun tp!2177266 () Bool)

(assert (=> b!7500892 (= e!4471976 (and tp!2177267 tp!2177266))))

(declare-fun b!7500893 () Bool)

(declare-fun tp!2177264 () Bool)

(assert (=> b!7500893 (= e!4471976 tp!2177264)))

(assert (= (and b!7500035 ((_ is ElementMatch!19657) (reg!19986 r2!5783))) b!7500891))

(assert (= (and b!7500035 ((_ is Concat!28502) (reg!19986 r2!5783))) b!7500892))

(assert (= (and b!7500035 ((_ is Star!19657) (reg!19986 r2!5783))) b!7500893))

(assert (= (and b!7500035 ((_ is Union!19657) (reg!19986 r2!5783))) b!7500894))

(declare-fun b!7500898 () Bool)

(declare-fun e!4471977 () Bool)

(declare-fun tp!2177268 () Bool)

(declare-fun tp!2177270 () Bool)

(assert (=> b!7500898 (= e!4471977 (and tp!2177268 tp!2177270))))

(assert (=> b!7500041 (= tp!2177136 e!4471977)))

(declare-fun b!7500895 () Bool)

(assert (=> b!7500895 (= e!4471977 tp_is_empty!49603)))

(declare-fun b!7500896 () Bool)

(declare-fun tp!2177272 () Bool)

(declare-fun tp!2177271 () Bool)

(assert (=> b!7500896 (= e!4471977 (and tp!2177272 tp!2177271))))

(declare-fun b!7500897 () Bool)

(declare-fun tp!2177269 () Bool)

(assert (=> b!7500897 (= e!4471977 tp!2177269)))

(assert (= (and b!7500041 ((_ is ElementMatch!19657) (regOne!39826 rTail!78))) b!7500895))

(assert (= (and b!7500041 ((_ is Concat!28502) (regOne!39826 rTail!78))) b!7500896))

(assert (= (and b!7500041 ((_ is Star!19657) (regOne!39826 rTail!78))) b!7500897))

(assert (= (and b!7500041 ((_ is Union!19657) (regOne!39826 rTail!78))) b!7500898))

(declare-fun b!7500902 () Bool)

(declare-fun e!4471978 () Bool)

(declare-fun tp!2177273 () Bool)

(declare-fun tp!2177275 () Bool)

(assert (=> b!7500902 (= e!4471978 (and tp!2177273 tp!2177275))))

(assert (=> b!7500041 (= tp!2177141 e!4471978)))

(declare-fun b!7500899 () Bool)

(assert (=> b!7500899 (= e!4471978 tp_is_empty!49603)))

(declare-fun b!7500900 () Bool)

(declare-fun tp!2177277 () Bool)

(declare-fun tp!2177276 () Bool)

(assert (=> b!7500900 (= e!4471978 (and tp!2177277 tp!2177276))))

(declare-fun b!7500901 () Bool)

(declare-fun tp!2177274 () Bool)

(assert (=> b!7500901 (= e!4471978 tp!2177274)))

(assert (= (and b!7500041 ((_ is ElementMatch!19657) (regTwo!39826 rTail!78))) b!7500899))

(assert (= (and b!7500041 ((_ is Concat!28502) (regTwo!39826 rTail!78))) b!7500900))

(assert (= (and b!7500041 ((_ is Star!19657) (regTwo!39826 rTail!78))) b!7500901))

(assert (= (and b!7500041 ((_ is Union!19657) (regTwo!39826 rTail!78))) b!7500902))

(declare-fun b!7500906 () Bool)

(declare-fun e!4471979 () Bool)

(declare-fun tp!2177278 () Bool)

(declare-fun tp!2177280 () Bool)

(assert (=> b!7500906 (= e!4471979 (and tp!2177278 tp!2177280))))

(assert (=> b!7500030 (= tp!2177138 e!4471979)))

(declare-fun b!7500903 () Bool)

(assert (=> b!7500903 (= e!4471979 tp_is_empty!49603)))

(declare-fun b!7500904 () Bool)

(declare-fun tp!2177282 () Bool)

(declare-fun tp!2177281 () Bool)

(assert (=> b!7500904 (= e!4471979 (and tp!2177282 tp!2177281))))

(declare-fun b!7500905 () Bool)

(declare-fun tp!2177279 () Bool)

(assert (=> b!7500905 (= e!4471979 tp!2177279)))

(assert (= (and b!7500030 ((_ is ElementMatch!19657) (regOne!39827 r2!5783))) b!7500903))

(assert (= (and b!7500030 ((_ is Concat!28502) (regOne!39827 r2!5783))) b!7500904))

(assert (= (and b!7500030 ((_ is Star!19657) (regOne!39827 r2!5783))) b!7500905))

(assert (= (and b!7500030 ((_ is Union!19657) (regOne!39827 r2!5783))) b!7500906))

(declare-fun b!7500910 () Bool)

(declare-fun e!4471980 () Bool)

(declare-fun tp!2177283 () Bool)

(declare-fun tp!2177285 () Bool)

(assert (=> b!7500910 (= e!4471980 (and tp!2177283 tp!2177285))))

(assert (=> b!7500030 (= tp!2177149 e!4471980)))

(declare-fun b!7500907 () Bool)

(assert (=> b!7500907 (= e!4471980 tp_is_empty!49603)))

(declare-fun b!7500908 () Bool)

(declare-fun tp!2177287 () Bool)

(declare-fun tp!2177286 () Bool)

(assert (=> b!7500908 (= e!4471980 (and tp!2177287 tp!2177286))))

(declare-fun b!7500909 () Bool)

(declare-fun tp!2177284 () Bool)

(assert (=> b!7500909 (= e!4471980 tp!2177284)))

(assert (= (and b!7500030 ((_ is ElementMatch!19657) (regTwo!39827 r2!5783))) b!7500907))

(assert (= (and b!7500030 ((_ is Concat!28502) (regTwo!39827 r2!5783))) b!7500908))

(assert (= (and b!7500030 ((_ is Star!19657) (regTwo!39827 r2!5783))) b!7500909))

(assert (= (and b!7500030 ((_ is Union!19657) (regTwo!39827 r2!5783))) b!7500910))

(declare-fun b!7500914 () Bool)

(declare-fun e!4471981 () Bool)

(declare-fun tp!2177288 () Bool)

(declare-fun tp!2177290 () Bool)

(assert (=> b!7500914 (= e!4471981 (and tp!2177288 tp!2177290))))

(assert (=> b!7500039 (= tp!2177134 e!4471981)))

(declare-fun b!7500911 () Bool)

(assert (=> b!7500911 (= e!4471981 tp_is_empty!49603)))

(declare-fun b!7500912 () Bool)

(declare-fun tp!2177292 () Bool)

(declare-fun tp!2177291 () Bool)

(assert (=> b!7500912 (= e!4471981 (and tp!2177292 tp!2177291))))

(declare-fun b!7500913 () Bool)

(declare-fun tp!2177289 () Bool)

(assert (=> b!7500913 (= e!4471981 tp!2177289)))

(assert (= (and b!7500039 ((_ is ElementMatch!19657) (regOne!39827 rTail!78))) b!7500911))

(assert (= (and b!7500039 ((_ is Concat!28502) (regOne!39827 rTail!78))) b!7500912))

(assert (= (and b!7500039 ((_ is Star!19657) (regOne!39827 rTail!78))) b!7500913))

(assert (= (and b!7500039 ((_ is Union!19657) (regOne!39827 rTail!78))) b!7500914))

(declare-fun b!7500918 () Bool)

(declare-fun e!4471982 () Bool)

(declare-fun tp!2177293 () Bool)

(declare-fun tp!2177295 () Bool)

(assert (=> b!7500918 (= e!4471982 (and tp!2177293 tp!2177295))))

(assert (=> b!7500039 (= tp!2177146 e!4471982)))

(declare-fun b!7500915 () Bool)

(assert (=> b!7500915 (= e!4471982 tp_is_empty!49603)))

(declare-fun b!7500916 () Bool)

(declare-fun tp!2177297 () Bool)

(declare-fun tp!2177296 () Bool)

(assert (=> b!7500916 (= e!4471982 (and tp!2177297 tp!2177296))))

(declare-fun b!7500917 () Bool)

(declare-fun tp!2177294 () Bool)

(assert (=> b!7500917 (= e!4471982 tp!2177294)))

(assert (= (and b!7500039 ((_ is ElementMatch!19657) (regTwo!39827 rTail!78))) b!7500915))

(assert (= (and b!7500039 ((_ is Concat!28502) (regTwo!39827 rTail!78))) b!7500916))

(assert (= (and b!7500039 ((_ is Star!19657) (regTwo!39827 rTail!78))) b!7500917))

(assert (= (and b!7500039 ((_ is Union!19657) (regTwo!39827 rTail!78))) b!7500918))

(declare-fun b!7500922 () Bool)

(declare-fun e!4471983 () Bool)

(declare-fun tp!2177298 () Bool)

(declare-fun tp!2177300 () Bool)

(assert (=> b!7500922 (= e!4471983 (and tp!2177298 tp!2177300))))

(assert (=> b!7500045 (= tp!2177139 e!4471983)))

(declare-fun b!7500919 () Bool)

(assert (=> b!7500919 (= e!4471983 tp_is_empty!49603)))

(declare-fun b!7500920 () Bool)

(declare-fun tp!2177302 () Bool)

(declare-fun tp!2177301 () Bool)

(assert (=> b!7500920 (= e!4471983 (and tp!2177302 tp!2177301))))

(declare-fun b!7500921 () Bool)

(declare-fun tp!2177299 () Bool)

(assert (=> b!7500921 (= e!4471983 tp!2177299)))

(assert (= (and b!7500045 ((_ is ElementMatch!19657) (regOne!39827 r1!5845))) b!7500919))

(assert (= (and b!7500045 ((_ is Concat!28502) (regOne!39827 r1!5845))) b!7500920))

(assert (= (and b!7500045 ((_ is Star!19657) (regOne!39827 r1!5845))) b!7500921))

(assert (= (and b!7500045 ((_ is Union!19657) (regOne!39827 r1!5845))) b!7500922))

(declare-fun b!7500926 () Bool)

(declare-fun e!4471984 () Bool)

(declare-fun tp!2177303 () Bool)

(declare-fun tp!2177305 () Bool)

(assert (=> b!7500926 (= e!4471984 (and tp!2177303 tp!2177305))))

(assert (=> b!7500045 (= tp!2177144 e!4471984)))

(declare-fun b!7500923 () Bool)

(assert (=> b!7500923 (= e!4471984 tp_is_empty!49603)))

(declare-fun b!7500924 () Bool)

(declare-fun tp!2177307 () Bool)

(declare-fun tp!2177306 () Bool)

(assert (=> b!7500924 (= e!4471984 (and tp!2177307 tp!2177306))))

(declare-fun b!7500925 () Bool)

(declare-fun tp!2177304 () Bool)

(assert (=> b!7500925 (= e!4471984 tp!2177304)))

(assert (= (and b!7500045 ((_ is ElementMatch!19657) (regTwo!39827 r1!5845))) b!7500923))

(assert (= (and b!7500045 ((_ is Concat!28502) (regTwo!39827 r1!5845))) b!7500924))

(assert (= (and b!7500045 ((_ is Star!19657) (regTwo!39827 r1!5845))) b!7500925))

(assert (= (and b!7500045 ((_ is Union!19657) (regTwo!39827 r1!5845))) b!7500926))

(declare-fun b!7500931 () Bool)

(declare-fun e!4471987 () Bool)

(declare-fun tp!2177310 () Bool)

(assert (=> b!7500931 (= e!4471987 (and tp_is_empty!49603 tp!2177310))))

(assert (=> b!7500027 (= tp!2177145 e!4471987)))

(assert (= (and b!7500027 ((_ is Cons!72247) (t!386940 s!13591))) b!7500931))

(declare-fun b!7500935 () Bool)

(declare-fun e!4471988 () Bool)

(declare-fun tp!2177311 () Bool)

(declare-fun tp!2177313 () Bool)

(assert (=> b!7500935 (= e!4471988 (and tp!2177311 tp!2177313))))

(assert (=> b!7500032 (= tp!2177137 e!4471988)))

(declare-fun b!7500932 () Bool)

(assert (=> b!7500932 (= e!4471988 tp_is_empty!49603)))

(declare-fun b!7500933 () Bool)

(declare-fun tp!2177315 () Bool)

(declare-fun tp!2177314 () Bool)

(assert (=> b!7500933 (= e!4471988 (and tp!2177315 tp!2177314))))

(declare-fun b!7500934 () Bool)

(declare-fun tp!2177312 () Bool)

(assert (=> b!7500934 (= e!4471988 tp!2177312)))

(assert (= (and b!7500032 ((_ is ElementMatch!19657) (reg!19986 rTail!78))) b!7500932))

(assert (= (and b!7500032 ((_ is Concat!28502) (reg!19986 rTail!78))) b!7500933))

(assert (= (and b!7500032 ((_ is Star!19657) (reg!19986 rTail!78))) b!7500934))

(assert (= (and b!7500032 ((_ is Union!19657) (reg!19986 rTail!78))) b!7500935))

(declare-fun b!7500939 () Bool)

(declare-fun e!4471989 () Bool)

(declare-fun tp!2177316 () Bool)

(declare-fun tp!2177318 () Bool)

(assert (=> b!7500939 (= e!4471989 (and tp!2177316 tp!2177318))))

(assert (=> b!7500033 (= tp!2177135 e!4471989)))

(declare-fun b!7500936 () Bool)

(assert (=> b!7500936 (= e!4471989 tp_is_empty!49603)))

(declare-fun b!7500937 () Bool)

(declare-fun tp!2177320 () Bool)

(declare-fun tp!2177319 () Bool)

(assert (=> b!7500937 (= e!4471989 (and tp!2177320 tp!2177319))))

(declare-fun b!7500938 () Bool)

(declare-fun tp!2177317 () Bool)

(assert (=> b!7500938 (= e!4471989 tp!2177317)))

(assert (= (and b!7500033 ((_ is ElementMatch!19657) (regOne!39826 r1!5845))) b!7500936))

(assert (= (and b!7500033 ((_ is Concat!28502) (regOne!39826 r1!5845))) b!7500937))

(assert (= (and b!7500033 ((_ is Star!19657) (regOne!39826 r1!5845))) b!7500938))

(assert (= (and b!7500033 ((_ is Union!19657) (regOne!39826 r1!5845))) b!7500939))

(declare-fun b!7500943 () Bool)

(declare-fun e!4471990 () Bool)

(declare-fun tp!2177321 () Bool)

(declare-fun tp!2177323 () Bool)

(assert (=> b!7500943 (= e!4471990 (and tp!2177321 tp!2177323))))

(assert (=> b!7500033 (= tp!2177140 e!4471990)))

(declare-fun b!7500940 () Bool)

(assert (=> b!7500940 (= e!4471990 tp_is_empty!49603)))

(declare-fun b!7500941 () Bool)

(declare-fun tp!2177325 () Bool)

(declare-fun tp!2177324 () Bool)

(assert (=> b!7500941 (= e!4471990 (and tp!2177325 tp!2177324))))

(declare-fun b!7500942 () Bool)

(declare-fun tp!2177322 () Bool)

(assert (=> b!7500942 (= e!4471990 tp!2177322)))

(assert (= (and b!7500033 ((_ is ElementMatch!19657) (regTwo!39826 r1!5845))) b!7500940))

(assert (= (and b!7500033 ((_ is Concat!28502) (regTwo!39826 r1!5845))) b!7500941))

(assert (= (and b!7500033 ((_ is Star!19657) (regTwo!39826 r1!5845))) b!7500942))

(assert (= (and b!7500033 ((_ is Union!19657) (regTwo!39826 r1!5845))) b!7500943))

(check-sat (not d!2302460) (not b!7500926) (not b!7500937) (not d!2302470) (not b!7500113) (not b!7500622) (not b!7500886) (not b!7500279) (not b!7500935) (not b!7500387) (not b!7500214) (not b!7500144) (not b!7500909) (not b!7500917) (not b!7500890) (not d!2302462) (not d!2302530) (not b!7500535) (not bm!688477) (not b!7500149) (not bm!688481) (not d!2302490) (not b!7500912) (not b!7500792) (not b!7500633) (not b!7500583) (not b!7500918) (not b!7500884) (not b!7500384) (not b!7500155) (not b!7500904) (not b!7500114) (not b!7500146) (not b!7500641) (not b!7500902) (not d!2302478) (not b!7500388) (not d!2302480) (not d!2302414) (not b!7500145) (not bm!688519) (not bm!688476) (not b!7500894) (not bm!688526) (not b!7500123) (not d!2302536) (not d!2302492) (not b!7500626) (not bm!688534) (not b!7500273) (not b!7500795) (not b!7500511) (not b!7500938) (not b!7500837) (not b!7500508) (not b!7500889) (not d!2302412) (not b!7500882) (not b!7500880) (not b!7500627) (not d!2302404) (not bm!688462) (not b!7500112) (not b!7500704) (not d!2302528) (not b!7500671) (not b!7500901) (not b!7500584) (not b!7500910) (not bm!688543) (not b!7500707) (not bm!688525) (not b!7500605) (not bm!688475) (not bm!688506) (not bm!688515) (not b!7500834) (not d!2302534) (not bm!688510) (not b!7500885) (not b!7500893) (not d!2302518) (not b!7500941) (not b!7500900) (not b!7500225) (not b!7500586) (not d!2302426) (not b!7500908) (not b!7500268) (not b!7500620) (not b!7500906) (not b!7500790) (not d!2302384) (not b!7500222) (not b!7500791) (not b!7500456) (not d!2302524) (not b!7500507) (not b!7500892) (not b!7500116) (not b!7500801) (not b!7500638) (not d!2302446) (not d!2302488) (not b!7500835) (not b!7500233) (not b!7500942) (not b!7500623) (not b!7500604) (not b!7500933) (not bm!688473) (not b!7500211) (not b!7500392) (not b!7500914) (not b!7500539) (not b!7500939) (not b!7500582) (not b!7500924) (not bm!688529) (not b!7500518) (not b!7500536) (not b!7500916) tp_is_empty!49603 (not b!7500492) (not b!7500905) (not bm!688513) (not bm!688467) (not b!7500512) (not b!7500624) (not b!7500270) (not d!2302532) (not b!7500479) (not d!2302436) (not bm!688474) (not b!7500898) (not b!7500587) (not bm!688478) (not b!7500913) (not d!2302486) (not b!7500831) (not bm!688468) (not b!7500236) (not b!7500897) (not b!7500896) (not b!7500934) (not b!7500537) (not b!7500668) (not b!7500836) (not b!7500564) (not bm!688463) (not b!7500540) (not d!2302494) (not b!7500888) (not bm!688507) (not b!7500593) (not b!7500389) (not d!2302458) (not b!7500269) (not b!7500647) (not b!7500390) (not b!7500546) (not b!7500931) (not b!7500640) (not bm!688533) (not b!7500567) (not b!7500117) (not b!7500881) (not d!2302430) (not b!7500636) (not b!7500637) (not bm!688522) (not b!7500509) (not b!7500943) (not b!7500794) (not b!7500925) (not bm!688502) (not bm!688528) (not b!7500489) (not b!7500272) (not b!7500922) (not b!7500921) (not b!7500148) (not b!7500920) (not bm!688518) (not b!7500078) (not bm!688509) (not d!2302386) (not d!2302428) (not d!2302378) (not b!7500839) (not bm!688503) (not d!2302410))
(check-sat)
