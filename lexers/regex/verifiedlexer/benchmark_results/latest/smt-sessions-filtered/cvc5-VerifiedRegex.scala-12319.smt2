; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691266 () Bool)

(assert start!691266)

(declare-fun b!7100993 () Bool)

(declare-datatypes ((C!36030 0))(
  ( (C!36031 (val!27721 Int)) )
))
(declare-fun a!1901 () C!36030)

(declare-datatypes ((Regex!17880 0))(
  ( (ElementMatch!17880 (c!1324957 C!36030)) (Concat!26725 (regOne!36272 Regex!17880) (regTwo!36272 Regex!17880)) (EmptyExpr!17880) (Star!17880 (reg!18209 Regex!17880)) (EmptyLang!17880) (Union!17880 (regOne!36273 Regex!17880) (regTwo!36273 Regex!17880)) )
))
(declare-datatypes ((List!68841 0))(
  ( (Nil!68717) (Cons!68717 (h!75165 Regex!17880) (t!382652 List!68841)) )
))
(declare-datatypes ((Context!13748 0))(
  ( (Context!13749 (exprs!7374 List!68841)) )
))
(declare-fun lt!2558136 () Context!13748)

(declare-fun r!11554 () Regex!17880)

(declare-fun e!4268163 () Bool)

(declare-fun derivationStepZipperDown!2409 (Regex!17880 Context!13748 C!36030) (Set Context!13748))

(assert (=> b!7100993 (= e!4268163 (not (= (derivationStepZipperDown!2409 r!11554 lt!2558136 a!1901) (set.union (derivationStepZipperDown!2409 (regOne!36273 r!11554) lt!2558136 a!1901) (derivationStepZipperDown!2409 (regTwo!36273 r!11554) lt!2558136 a!1901)))))))

(declare-fun c!9994 () Context!13748)

(declare-fun auxCtx!45 () Context!13748)

(declare-fun ++!16032 (List!68841 List!68841) List!68841)

(assert (=> b!7100993 (= lt!2558136 (Context!13749 (++!16032 (exprs!7374 c!9994) (exprs!7374 auxCtx!45))))))

(declare-datatypes ((Unit!162431 0))(
  ( (Unit!162432) )
))
(declare-fun lt!2558137 () Unit!162431)

(declare-fun lambda!431048 () Int)

(declare-fun lemmaConcatPreservesForall!1165 (List!68841 List!68841 Int) Unit!162431)

(assert (=> b!7100993 (= lt!2558137 (lemmaConcatPreservesForall!1165 (exprs!7374 c!9994) (exprs!7374 auxCtx!45) lambda!431048))))

(declare-fun lt!2558138 () Unit!162431)

(assert (=> b!7100993 (= lt!2558138 (lemmaConcatPreservesForall!1165 (exprs!7374 c!9994) (exprs!7374 auxCtx!45) lambda!431048))))

(declare-fun lt!2558135 () Unit!162431)

(assert (=> b!7100993 (= lt!2558135 (lemmaConcatPreservesForall!1165 (exprs!7374 c!9994) (exprs!7374 auxCtx!45) lambda!431048))))

(declare-fun b!7100994 () Bool)

(declare-fun e!4268166 () Bool)

(declare-fun tp!1952165 () Bool)

(declare-fun tp!1952164 () Bool)

(assert (=> b!7100994 (= e!4268166 (and tp!1952165 tp!1952164))))

(declare-fun b!7100995 () Bool)

(declare-fun res!2899435 () Bool)

(assert (=> b!7100995 (=> (not res!2899435) (not e!4268163))))

(assert (=> b!7100995 (= res!2899435 (and (or (not (is-ElementMatch!17880 r!11554)) (not (= (c!1324957 r!11554) a!1901))) (is-Union!17880 r!11554)))))

(declare-fun b!7100996 () Bool)

(declare-fun tp!1952162 () Bool)

(assert (=> b!7100996 (= e!4268166 tp!1952162)))

(declare-fun b!7100997 () Bool)

(declare-fun tp_is_empty!44993 () Bool)

(assert (=> b!7100997 (= e!4268166 tp_is_empty!44993)))

(declare-fun res!2899436 () Bool)

(assert (=> start!691266 (=> (not res!2899436) (not e!4268163))))

(declare-fun validRegex!9153 (Regex!17880) Bool)

(assert (=> start!691266 (= res!2899436 (validRegex!9153 r!11554))))

(assert (=> start!691266 e!4268163))

(assert (=> start!691266 e!4268166))

(assert (=> start!691266 tp_is_empty!44993))

(declare-fun e!4268165 () Bool)

(declare-fun inv!87564 (Context!13748) Bool)

(assert (=> start!691266 (and (inv!87564 c!9994) e!4268165)))

(declare-fun e!4268164 () Bool)

(assert (=> start!691266 (and (inv!87564 auxCtx!45) e!4268164)))

(declare-fun b!7100998 () Bool)

(declare-fun tp!1952166 () Bool)

(assert (=> b!7100998 (= e!4268165 tp!1952166)))

(declare-fun b!7100999 () Bool)

(declare-fun tp!1952163 () Bool)

(declare-fun tp!1952167 () Bool)

(assert (=> b!7100999 (= e!4268166 (and tp!1952163 tp!1952167))))

(declare-fun b!7101000 () Bool)

(declare-fun tp!1952161 () Bool)

(assert (=> b!7101000 (= e!4268164 tp!1952161)))

(assert (= (and start!691266 res!2899436) b!7100995))

(assert (= (and b!7100995 res!2899435) b!7100993))

(assert (= (and start!691266 (is-ElementMatch!17880 r!11554)) b!7100997))

(assert (= (and start!691266 (is-Concat!26725 r!11554)) b!7100994))

(assert (= (and start!691266 (is-Star!17880 r!11554)) b!7100996))

(assert (= (and start!691266 (is-Union!17880 r!11554)) b!7100999))

(assert (= start!691266 b!7100998))

(assert (= start!691266 b!7101000))

(declare-fun m!7826428 () Bool)

(assert (=> b!7100993 m!7826428))

(assert (=> b!7100993 m!7826428))

(declare-fun m!7826430 () Bool)

(assert (=> b!7100993 m!7826430))

(declare-fun m!7826432 () Bool)

(assert (=> b!7100993 m!7826432))

(assert (=> b!7100993 m!7826428))

(declare-fun m!7826434 () Bool)

(assert (=> b!7100993 m!7826434))

(declare-fun m!7826436 () Bool)

(assert (=> b!7100993 m!7826436))

(declare-fun m!7826438 () Bool)

(assert (=> start!691266 m!7826438))

(declare-fun m!7826440 () Bool)

(assert (=> start!691266 m!7826440))

(declare-fun m!7826442 () Bool)

(assert (=> start!691266 m!7826442))

(push 1)

(assert (not b!7100994))

(assert (not b!7100999))

(assert tp_is_empty!44993)

(assert (not b!7101000))

(assert (not b!7100993))

(assert (not b!7100998))

(assert (not start!691266))

(assert (not b!7100996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7101045 () Bool)

(declare-fun res!2899459 () Bool)

(declare-fun e!4268200 () Bool)

(assert (=> b!7101045 (=> res!2899459 e!4268200)))

(assert (=> b!7101045 (= res!2899459 (not (is-Concat!26725 r!11554)))))

(declare-fun e!4268198 () Bool)

(assert (=> b!7101045 (= e!4268198 e!4268200)))

(declare-fun bm!646555 () Bool)

(declare-fun call!646561 () Bool)

(declare-fun c!1324964 () Bool)

(assert (=> bm!646555 (= call!646561 (validRegex!9153 (ite c!1324964 (regOne!36273 r!11554) (regTwo!36272 r!11554))))))

(declare-fun b!7101046 () Bool)

(declare-fun e!4268199 () Bool)

(declare-fun e!4268197 () Bool)

(assert (=> b!7101046 (= e!4268199 e!4268197)))

(declare-fun c!1324963 () Bool)

(assert (=> b!7101046 (= c!1324963 (is-Star!17880 r!11554))))

(declare-fun b!7101047 () Bool)

(assert (=> b!7101047 (= e!4268197 e!4268198)))

(assert (=> b!7101047 (= c!1324964 (is-Union!17880 r!11554))))

(declare-fun bm!646557 () Bool)

(declare-fun call!646562 () Bool)

(assert (=> bm!646557 (= call!646562 (validRegex!9153 (ite c!1324963 (reg!18209 r!11554) (ite c!1324964 (regTwo!36273 r!11554) (regOne!36272 r!11554)))))))

(declare-fun b!7101048 () Bool)

(declare-fun e!4268195 () Bool)

(declare-fun call!646560 () Bool)

(assert (=> b!7101048 (= e!4268195 call!646560)))

(declare-fun b!7101049 () Bool)

(declare-fun e!4268201 () Bool)

(assert (=> b!7101049 (= e!4268201 call!646561)))

(declare-fun b!7101050 () Bool)

(declare-fun e!4268196 () Bool)

(assert (=> b!7101050 (= e!4268196 call!646562)))

(declare-fun b!7101051 () Bool)

(assert (=> b!7101051 (= e!4268200 e!4268201)))

(declare-fun res!2899455 () Bool)

(assert (=> b!7101051 (=> (not res!2899455) (not e!4268201))))

(assert (=> b!7101051 (= res!2899455 call!646560)))

(declare-fun b!7101052 () Bool)

(declare-fun res!2899457 () Bool)

(assert (=> b!7101052 (=> (not res!2899457) (not e!4268195))))

(assert (=> b!7101052 (= res!2899457 call!646561)))

(assert (=> b!7101052 (= e!4268198 e!4268195)))

(declare-fun b!7101053 () Bool)

(assert (=> b!7101053 (= e!4268197 e!4268196)))

(declare-fun res!2899458 () Bool)

(declare-fun nullable!7518 (Regex!17880) Bool)

(assert (=> b!7101053 (= res!2899458 (not (nullable!7518 (reg!18209 r!11554))))))

(assert (=> b!7101053 (=> (not res!2899458) (not e!4268196))))

(declare-fun bm!646556 () Bool)

(assert (=> bm!646556 (= call!646560 call!646562)))

(declare-fun d!2218602 () Bool)

(declare-fun res!2899456 () Bool)

(assert (=> d!2218602 (=> res!2899456 e!4268199)))

(assert (=> d!2218602 (= res!2899456 (is-ElementMatch!17880 r!11554))))

(assert (=> d!2218602 (= (validRegex!9153 r!11554) e!4268199)))

(assert (= (and d!2218602 (not res!2899456)) b!7101046))

(assert (= (and b!7101046 c!1324963) b!7101053))

(assert (= (and b!7101046 (not c!1324963)) b!7101047))

(assert (= (and b!7101053 res!2899458) b!7101050))

(assert (= (and b!7101047 c!1324964) b!7101052))

(assert (= (and b!7101047 (not c!1324964)) b!7101045))

(assert (= (and b!7101052 res!2899457) b!7101048))

(assert (= (and b!7101045 (not res!2899459)) b!7101051))

(assert (= (and b!7101051 res!2899455) b!7101049))

(assert (= (or b!7101052 b!7101049) bm!646555))

(assert (= (or b!7101048 b!7101051) bm!646556))

(assert (= (or b!7101050 bm!646556) bm!646557))

(declare-fun m!7826460 () Bool)

(assert (=> bm!646555 m!7826460))

(declare-fun m!7826462 () Bool)

(assert (=> bm!646557 m!7826462))

(declare-fun m!7826464 () Bool)

(assert (=> b!7101053 m!7826464))

(assert (=> start!691266 d!2218602))

(declare-fun bs!1884299 () Bool)

(declare-fun d!2218606 () Bool)

(assert (= bs!1884299 (and d!2218606 b!7100993)))

(declare-fun lambda!431058 () Int)

(assert (=> bs!1884299 (= lambda!431058 lambda!431048)))

(declare-fun forall!16784 (List!68841 Int) Bool)

(assert (=> d!2218606 (= (inv!87564 c!9994) (forall!16784 (exprs!7374 c!9994) lambda!431058))))

(declare-fun bs!1884300 () Bool)

(assert (= bs!1884300 d!2218606))

(declare-fun m!7826466 () Bool)

(assert (=> bs!1884300 m!7826466))

(assert (=> start!691266 d!2218606))

(declare-fun bs!1884301 () Bool)

(declare-fun d!2218608 () Bool)

(assert (= bs!1884301 (and d!2218608 b!7100993)))

(declare-fun lambda!431059 () Int)

(assert (=> bs!1884301 (= lambda!431059 lambda!431048)))

(declare-fun bs!1884302 () Bool)

(assert (= bs!1884302 (and d!2218608 d!2218606)))

(assert (=> bs!1884302 (= lambda!431059 lambda!431058)))

(assert (=> d!2218608 (= (inv!87564 auxCtx!45) (forall!16784 (exprs!7374 auxCtx!45) lambda!431059))))

(declare-fun bs!1884303 () Bool)

(assert (= bs!1884303 d!2218608))

(declare-fun m!7826468 () Bool)

(assert (=> bs!1884303 m!7826468))

(assert (=> start!691266 d!2218608))

(declare-fun bm!646579 () Bool)

(declare-fun call!646589 () List!68841)

(declare-fun call!646587 () List!68841)

(assert (=> bm!646579 (= call!646589 call!646587)))

(declare-fun b!7101101 () Bool)

(declare-fun e!4268234 () (Set Context!13748))

(declare-fun e!4268237 () (Set Context!13748))

(assert (=> b!7101101 (= e!4268234 e!4268237)))

(declare-fun c!1324981 () Bool)

(assert (=> b!7101101 (= c!1324981 (is-Concat!26725 (regTwo!36273 r!11554)))))

(declare-fun b!7101102 () Bool)

(declare-fun e!4268238 () (Set Context!13748))

(assert (=> b!7101102 (= e!4268238 (as set.empty (Set Context!13748)))))

(declare-fun b!7101103 () Bool)

(declare-fun call!646584 () (Set Context!13748))

(declare-fun call!646585 () (Set Context!13748))

(assert (=> b!7101103 (= e!4268234 (set.union call!646584 call!646585))))

(declare-fun b!7101104 () Bool)

(declare-fun call!646586 () (Set Context!13748))

(assert (=> b!7101104 (= e!4268238 call!646586)))

(declare-fun d!2218610 () Bool)

(declare-fun c!1324985 () Bool)

(assert (=> d!2218610 (= c!1324985 (and (is-ElementMatch!17880 (regTwo!36273 r!11554)) (= (c!1324957 (regTwo!36273 r!11554)) a!1901)))))

(declare-fun e!4268235 () (Set Context!13748))

(assert (=> d!2218610 (= (derivationStepZipperDown!2409 (regTwo!36273 r!11554) lt!2558136 a!1901) e!4268235)))

(declare-fun bm!646580 () Bool)

(declare-fun call!646588 () (Set Context!13748))

(assert (=> bm!646580 (= call!646585 call!646588)))

(declare-fun c!1324982 () Bool)

(declare-fun bm!646581 () Bool)

(declare-fun c!1324984 () Bool)

(assert (=> bm!646581 (= call!646588 (derivationStepZipperDown!2409 (ite c!1324982 (regOne!36273 (regTwo!36273 r!11554)) (ite c!1324984 (regTwo!36272 (regTwo!36273 r!11554)) (ite c!1324981 (regOne!36272 (regTwo!36273 r!11554)) (reg!18209 (regTwo!36273 r!11554))))) (ite (or c!1324982 c!1324984) lt!2558136 (Context!13749 call!646589)) a!1901))))

(declare-fun b!7101105 () Bool)

(declare-fun c!1324983 () Bool)

(assert (=> b!7101105 (= c!1324983 (is-Star!17880 (regTwo!36273 r!11554)))))

(assert (=> b!7101105 (= e!4268237 e!4268238)))

(declare-fun bm!646582 () Bool)

(assert (=> bm!646582 (= call!646584 (derivationStepZipperDown!2409 (ite c!1324982 (regTwo!36273 (regTwo!36273 r!11554)) (regOne!36272 (regTwo!36273 r!11554))) (ite c!1324982 lt!2558136 (Context!13749 call!646587)) a!1901))))

(declare-fun b!7101106 () Bool)

(assert (=> b!7101106 (= e!4268237 call!646586)))

(declare-fun b!7101107 () Bool)

(declare-fun e!4268236 () (Set Context!13748))

(assert (=> b!7101107 (= e!4268235 e!4268236)))

(assert (=> b!7101107 (= c!1324982 (is-Union!17880 (regTwo!36273 r!11554)))))

(declare-fun b!7101108 () Bool)

(declare-fun e!4268233 () Bool)

(assert (=> b!7101108 (= c!1324984 e!4268233)))

(declare-fun res!2899475 () Bool)

(assert (=> b!7101108 (=> (not res!2899475) (not e!4268233))))

(assert (=> b!7101108 (= res!2899475 (is-Concat!26725 (regTwo!36273 r!11554)))))

(assert (=> b!7101108 (= e!4268236 e!4268234)))

(declare-fun b!7101109 () Bool)

(assert (=> b!7101109 (= e!4268236 (set.union call!646588 call!646584))))

(declare-fun b!7101110 () Bool)

(assert (=> b!7101110 (= e!4268235 (set.insert lt!2558136 (as set.empty (Set Context!13748))))))

(declare-fun bm!646583 () Bool)

(assert (=> bm!646583 (= call!646586 call!646585)))

(declare-fun bm!646584 () Bool)

(declare-fun $colon$colon!2751 (List!68841 Regex!17880) List!68841)

(assert (=> bm!646584 (= call!646587 ($colon$colon!2751 (exprs!7374 lt!2558136) (ite (or c!1324984 c!1324981) (regTwo!36272 (regTwo!36273 r!11554)) (regTwo!36273 r!11554))))))

(declare-fun b!7101111 () Bool)

(assert (=> b!7101111 (= e!4268233 (nullable!7518 (regOne!36272 (regTwo!36273 r!11554))))))

(assert (= (and d!2218610 c!1324985) b!7101110))

(assert (= (and d!2218610 (not c!1324985)) b!7101107))

(assert (= (and b!7101107 c!1324982) b!7101109))

(assert (= (and b!7101107 (not c!1324982)) b!7101108))

(assert (= (and b!7101108 res!2899475) b!7101111))

(assert (= (and b!7101108 c!1324984) b!7101103))

(assert (= (and b!7101108 (not c!1324984)) b!7101101))

(assert (= (and b!7101101 c!1324981) b!7101106))

(assert (= (and b!7101101 (not c!1324981)) b!7101105))

(assert (= (and b!7101105 c!1324983) b!7101104))

(assert (= (and b!7101105 (not c!1324983)) b!7101102))

(assert (= (or b!7101106 b!7101104) bm!646579))

(assert (= (or b!7101106 b!7101104) bm!646583))

(assert (= (or b!7101103 bm!646583) bm!646580))

(assert (= (or b!7101103 bm!646579) bm!646584))

(assert (= (or b!7101109 b!7101103) bm!646582))

(assert (= (or b!7101109 bm!646580) bm!646581))

(declare-fun m!7826480 () Bool)

(assert (=> b!7101111 m!7826480))

(declare-fun m!7826482 () Bool)

(assert (=> bm!646582 m!7826482))

(declare-fun m!7826484 () Bool)

(assert (=> bm!646584 m!7826484))

(declare-fun m!7826486 () Bool)

(assert (=> b!7101110 m!7826486))

(declare-fun m!7826488 () Bool)

(assert (=> bm!646581 m!7826488))

(assert (=> b!7100993 d!2218610))

(declare-fun bm!646585 () Bool)

(declare-fun call!646595 () List!68841)

(declare-fun call!646593 () List!68841)

(assert (=> bm!646585 (= call!646595 call!646593)))

(declare-fun b!7101112 () Bool)

(declare-fun e!4268240 () (Set Context!13748))

(declare-fun e!4268243 () (Set Context!13748))

(assert (=> b!7101112 (= e!4268240 e!4268243)))

(declare-fun c!1324986 () Bool)

(assert (=> b!7101112 (= c!1324986 (is-Concat!26725 (regOne!36273 r!11554)))))

(declare-fun b!7101113 () Bool)

(declare-fun e!4268244 () (Set Context!13748))

(assert (=> b!7101113 (= e!4268244 (as set.empty (Set Context!13748)))))

(declare-fun b!7101114 () Bool)

(declare-fun call!646590 () (Set Context!13748))

(declare-fun call!646591 () (Set Context!13748))

(assert (=> b!7101114 (= e!4268240 (set.union call!646590 call!646591))))

(declare-fun b!7101115 () Bool)

(declare-fun call!646592 () (Set Context!13748))

(assert (=> b!7101115 (= e!4268244 call!646592)))

(declare-fun d!2218618 () Bool)

(declare-fun c!1324990 () Bool)

(assert (=> d!2218618 (= c!1324990 (and (is-ElementMatch!17880 (regOne!36273 r!11554)) (= (c!1324957 (regOne!36273 r!11554)) a!1901)))))

(declare-fun e!4268241 () (Set Context!13748))

(assert (=> d!2218618 (= (derivationStepZipperDown!2409 (regOne!36273 r!11554) lt!2558136 a!1901) e!4268241)))

(declare-fun bm!646586 () Bool)

(declare-fun call!646594 () (Set Context!13748))

(assert (=> bm!646586 (= call!646591 call!646594)))

(declare-fun bm!646587 () Bool)

(declare-fun c!1324989 () Bool)

(declare-fun c!1324987 () Bool)

(assert (=> bm!646587 (= call!646594 (derivationStepZipperDown!2409 (ite c!1324987 (regOne!36273 (regOne!36273 r!11554)) (ite c!1324989 (regTwo!36272 (regOne!36273 r!11554)) (ite c!1324986 (regOne!36272 (regOne!36273 r!11554)) (reg!18209 (regOne!36273 r!11554))))) (ite (or c!1324987 c!1324989) lt!2558136 (Context!13749 call!646595)) a!1901))))

(declare-fun b!7101116 () Bool)

(declare-fun c!1324988 () Bool)

(assert (=> b!7101116 (= c!1324988 (is-Star!17880 (regOne!36273 r!11554)))))

(assert (=> b!7101116 (= e!4268243 e!4268244)))

(declare-fun bm!646588 () Bool)

(assert (=> bm!646588 (= call!646590 (derivationStepZipperDown!2409 (ite c!1324987 (regTwo!36273 (regOne!36273 r!11554)) (regOne!36272 (regOne!36273 r!11554))) (ite c!1324987 lt!2558136 (Context!13749 call!646593)) a!1901))))

(declare-fun b!7101117 () Bool)

(assert (=> b!7101117 (= e!4268243 call!646592)))

(declare-fun b!7101118 () Bool)

(declare-fun e!4268242 () (Set Context!13748))

(assert (=> b!7101118 (= e!4268241 e!4268242)))

(assert (=> b!7101118 (= c!1324987 (is-Union!17880 (regOne!36273 r!11554)))))

(declare-fun b!7101119 () Bool)

(declare-fun e!4268239 () Bool)

(assert (=> b!7101119 (= c!1324989 e!4268239)))

(declare-fun res!2899476 () Bool)

(assert (=> b!7101119 (=> (not res!2899476) (not e!4268239))))

(assert (=> b!7101119 (= res!2899476 (is-Concat!26725 (regOne!36273 r!11554)))))

(assert (=> b!7101119 (= e!4268242 e!4268240)))

(declare-fun b!7101120 () Bool)

(assert (=> b!7101120 (= e!4268242 (set.union call!646594 call!646590))))

(declare-fun b!7101121 () Bool)

(assert (=> b!7101121 (= e!4268241 (set.insert lt!2558136 (as set.empty (Set Context!13748))))))

(declare-fun bm!646589 () Bool)

(assert (=> bm!646589 (= call!646592 call!646591)))

(declare-fun bm!646590 () Bool)

(assert (=> bm!646590 (= call!646593 ($colon$colon!2751 (exprs!7374 lt!2558136) (ite (or c!1324989 c!1324986) (regTwo!36272 (regOne!36273 r!11554)) (regOne!36273 r!11554))))))

(declare-fun b!7101122 () Bool)

(assert (=> b!7101122 (= e!4268239 (nullable!7518 (regOne!36272 (regOne!36273 r!11554))))))

(assert (= (and d!2218618 c!1324990) b!7101121))

(assert (= (and d!2218618 (not c!1324990)) b!7101118))

(assert (= (and b!7101118 c!1324987) b!7101120))

(assert (= (and b!7101118 (not c!1324987)) b!7101119))

(assert (= (and b!7101119 res!2899476) b!7101122))

(assert (= (and b!7101119 c!1324989) b!7101114))

(assert (= (and b!7101119 (not c!1324989)) b!7101112))

(assert (= (and b!7101112 c!1324986) b!7101117))

(assert (= (and b!7101112 (not c!1324986)) b!7101116))

(assert (= (and b!7101116 c!1324988) b!7101115))

(assert (= (and b!7101116 (not c!1324988)) b!7101113))

(assert (= (or b!7101117 b!7101115) bm!646585))

(assert (= (or b!7101117 b!7101115) bm!646589))

(assert (= (or b!7101114 bm!646589) bm!646586))

(assert (= (or b!7101114 bm!646585) bm!646590))

(assert (= (or b!7101120 b!7101114) bm!646588))

(assert (= (or b!7101120 bm!646586) bm!646587))

(declare-fun m!7826490 () Bool)

(assert (=> b!7101122 m!7826490))

(declare-fun m!7826492 () Bool)

(assert (=> bm!646588 m!7826492))

(declare-fun m!7826494 () Bool)

(assert (=> bm!646590 m!7826494))

(assert (=> b!7101121 m!7826486))

(declare-fun m!7826496 () Bool)

(assert (=> bm!646587 m!7826496))

(assert (=> b!7100993 d!2218618))

(declare-fun bm!646591 () Bool)

(declare-fun call!646601 () List!68841)

(declare-fun call!646599 () List!68841)

(assert (=> bm!646591 (= call!646601 call!646599)))

(declare-fun b!7101123 () Bool)

(declare-fun e!4268246 () (Set Context!13748))

(declare-fun e!4268249 () (Set Context!13748))

(assert (=> b!7101123 (= e!4268246 e!4268249)))

(declare-fun c!1324991 () Bool)

(assert (=> b!7101123 (= c!1324991 (is-Concat!26725 r!11554))))

(declare-fun b!7101124 () Bool)

(declare-fun e!4268250 () (Set Context!13748))

(assert (=> b!7101124 (= e!4268250 (as set.empty (Set Context!13748)))))

(declare-fun b!7101125 () Bool)

(declare-fun call!646596 () (Set Context!13748))

(declare-fun call!646597 () (Set Context!13748))

(assert (=> b!7101125 (= e!4268246 (set.union call!646596 call!646597))))

(declare-fun b!7101126 () Bool)

(declare-fun call!646598 () (Set Context!13748))

(assert (=> b!7101126 (= e!4268250 call!646598)))

(declare-fun d!2218620 () Bool)

(declare-fun c!1324995 () Bool)

(assert (=> d!2218620 (= c!1324995 (and (is-ElementMatch!17880 r!11554) (= (c!1324957 r!11554) a!1901)))))

(declare-fun e!4268247 () (Set Context!13748))

(assert (=> d!2218620 (= (derivationStepZipperDown!2409 r!11554 lt!2558136 a!1901) e!4268247)))

(declare-fun bm!646592 () Bool)

(declare-fun call!646600 () (Set Context!13748))

(assert (=> bm!646592 (= call!646597 call!646600)))

(declare-fun c!1324992 () Bool)

(declare-fun c!1324994 () Bool)

(declare-fun bm!646593 () Bool)

(assert (=> bm!646593 (= call!646600 (derivationStepZipperDown!2409 (ite c!1324992 (regOne!36273 r!11554) (ite c!1324994 (regTwo!36272 r!11554) (ite c!1324991 (regOne!36272 r!11554) (reg!18209 r!11554)))) (ite (or c!1324992 c!1324994) lt!2558136 (Context!13749 call!646601)) a!1901))))

(declare-fun b!7101127 () Bool)

(declare-fun c!1324993 () Bool)

(assert (=> b!7101127 (= c!1324993 (is-Star!17880 r!11554))))

(assert (=> b!7101127 (= e!4268249 e!4268250)))

(declare-fun bm!646594 () Bool)

(assert (=> bm!646594 (= call!646596 (derivationStepZipperDown!2409 (ite c!1324992 (regTwo!36273 r!11554) (regOne!36272 r!11554)) (ite c!1324992 lt!2558136 (Context!13749 call!646599)) a!1901))))

(declare-fun b!7101128 () Bool)

(assert (=> b!7101128 (= e!4268249 call!646598)))

(declare-fun b!7101129 () Bool)

(declare-fun e!4268248 () (Set Context!13748))

(assert (=> b!7101129 (= e!4268247 e!4268248)))

(assert (=> b!7101129 (= c!1324992 (is-Union!17880 r!11554))))

(declare-fun b!7101130 () Bool)

(declare-fun e!4268245 () Bool)

(assert (=> b!7101130 (= c!1324994 e!4268245)))

(declare-fun res!2899477 () Bool)

(assert (=> b!7101130 (=> (not res!2899477) (not e!4268245))))

(assert (=> b!7101130 (= res!2899477 (is-Concat!26725 r!11554))))

(assert (=> b!7101130 (= e!4268248 e!4268246)))

(declare-fun b!7101131 () Bool)

(assert (=> b!7101131 (= e!4268248 (set.union call!646600 call!646596))))

(declare-fun b!7101132 () Bool)

(assert (=> b!7101132 (= e!4268247 (set.insert lt!2558136 (as set.empty (Set Context!13748))))))

(declare-fun bm!646595 () Bool)

(assert (=> bm!646595 (= call!646598 call!646597)))

(declare-fun bm!646596 () Bool)

(assert (=> bm!646596 (= call!646599 ($colon$colon!2751 (exprs!7374 lt!2558136) (ite (or c!1324994 c!1324991) (regTwo!36272 r!11554) r!11554)))))

(declare-fun b!7101133 () Bool)

(assert (=> b!7101133 (= e!4268245 (nullable!7518 (regOne!36272 r!11554)))))

(assert (= (and d!2218620 c!1324995) b!7101132))

(assert (= (and d!2218620 (not c!1324995)) b!7101129))

(assert (= (and b!7101129 c!1324992) b!7101131))

(assert (= (and b!7101129 (not c!1324992)) b!7101130))

(assert (= (and b!7101130 res!2899477) b!7101133))

(assert (= (and b!7101130 c!1324994) b!7101125))

(assert (= (and b!7101130 (not c!1324994)) b!7101123))

(assert (= (and b!7101123 c!1324991) b!7101128))

(assert (= (and b!7101123 (not c!1324991)) b!7101127))

(assert (= (and b!7101127 c!1324993) b!7101126))

(assert (= (and b!7101127 (not c!1324993)) b!7101124))

(assert (= (or b!7101128 b!7101126) bm!646591))

(assert (= (or b!7101128 b!7101126) bm!646595))

(assert (= (or b!7101125 bm!646595) bm!646592))

(assert (= (or b!7101125 bm!646591) bm!646596))

(assert (= (or b!7101131 b!7101125) bm!646594))

(assert (= (or b!7101131 bm!646592) bm!646593))

(declare-fun m!7826498 () Bool)

(assert (=> b!7101133 m!7826498))

(declare-fun m!7826500 () Bool)

(assert (=> bm!646594 m!7826500))

(declare-fun m!7826502 () Bool)

(assert (=> bm!646596 m!7826502))

(assert (=> b!7101132 m!7826486))

(declare-fun m!7826504 () Bool)

(assert (=> bm!646593 m!7826504))

(assert (=> b!7100993 d!2218620))

(declare-fun d!2218622 () Bool)

(assert (=> d!2218622 (forall!16784 (++!16032 (exprs!7374 c!9994) (exprs!7374 auxCtx!45)) lambda!431048)))

(declare-fun lt!2558153 () Unit!162431)

(declare-fun choose!54761 (List!68841 List!68841 Int) Unit!162431)

(assert (=> d!2218622 (= lt!2558153 (choose!54761 (exprs!7374 c!9994) (exprs!7374 auxCtx!45) lambda!431048))))

(assert (=> d!2218622 (forall!16784 (exprs!7374 c!9994) lambda!431048)))

(assert (=> d!2218622 (= (lemmaConcatPreservesForall!1165 (exprs!7374 c!9994) (exprs!7374 auxCtx!45) lambda!431048) lt!2558153)))

(declare-fun bs!1884309 () Bool)

(assert (= bs!1884309 d!2218622))

(assert (=> bs!1884309 m!7826434))

(assert (=> bs!1884309 m!7826434))

(declare-fun m!7826506 () Bool)

(assert (=> bs!1884309 m!7826506))

(declare-fun m!7826508 () Bool)

(assert (=> bs!1884309 m!7826508))

(declare-fun m!7826510 () Bool)

(assert (=> bs!1884309 m!7826510))

(assert (=> b!7100993 d!2218622))

(declare-fun b!7101167 () Bool)

(declare-fun e!4268267 () Bool)

(declare-fun lt!2558156 () List!68841)

(assert (=> b!7101167 (= e!4268267 (or (not (= (exprs!7374 auxCtx!45) Nil!68717)) (= lt!2558156 (exprs!7374 c!9994))))))

(declare-fun d!2218624 () Bool)

(assert (=> d!2218624 e!4268267))

(declare-fun res!2899485 () Bool)

(assert (=> d!2218624 (=> (not res!2899485) (not e!4268267))))

(declare-fun content!13971 (List!68841) (Set Regex!17880))

(assert (=> d!2218624 (= res!2899485 (= (content!13971 lt!2558156) (set.union (content!13971 (exprs!7374 c!9994)) (content!13971 (exprs!7374 auxCtx!45)))))))

(declare-fun e!4268268 () List!68841)

(assert (=> d!2218624 (= lt!2558156 e!4268268)))

(declare-fun c!1325008 () Bool)

(assert (=> d!2218624 (= c!1325008 (is-Nil!68717 (exprs!7374 c!9994)))))

(assert (=> d!2218624 (= (++!16032 (exprs!7374 c!9994) (exprs!7374 auxCtx!45)) lt!2558156)))

(declare-fun b!7101165 () Bool)

(assert (=> b!7101165 (= e!4268268 (Cons!68717 (h!75165 (exprs!7374 c!9994)) (++!16032 (t!382652 (exprs!7374 c!9994)) (exprs!7374 auxCtx!45))))))

(declare-fun b!7101166 () Bool)

(declare-fun res!2899484 () Bool)

(assert (=> b!7101166 (=> (not res!2899484) (not e!4268267))))

(declare-fun size!41346 (List!68841) Int)

(assert (=> b!7101166 (= res!2899484 (= (size!41346 lt!2558156) (+ (size!41346 (exprs!7374 c!9994)) (size!41346 (exprs!7374 auxCtx!45)))))))

(declare-fun b!7101164 () Bool)

(assert (=> b!7101164 (= e!4268268 (exprs!7374 auxCtx!45))))

(assert (= (and d!2218624 c!1325008) b!7101164))

(assert (= (and d!2218624 (not c!1325008)) b!7101165))

(assert (= (and d!2218624 res!2899485) b!7101166))

(assert (= (and b!7101166 res!2899484) b!7101167))

(declare-fun m!7826512 () Bool)

(assert (=> d!2218624 m!7826512))

(declare-fun m!7826514 () Bool)

(assert (=> d!2218624 m!7826514))

(declare-fun m!7826516 () Bool)

(assert (=> d!2218624 m!7826516))

(declare-fun m!7826518 () Bool)

(assert (=> b!7101165 m!7826518))

(declare-fun m!7826520 () Bool)

(assert (=> b!7101166 m!7826520))

(declare-fun m!7826522 () Bool)

(assert (=> b!7101166 m!7826522))

(declare-fun m!7826524 () Bool)

(assert (=> b!7101166 m!7826524))

(assert (=> b!7100993 d!2218624))

(declare-fun b!7101172 () Bool)

(declare-fun e!4268271 () Bool)

(declare-fun tp!1952193 () Bool)

(declare-fun tp!1952194 () Bool)

(assert (=> b!7101172 (= e!4268271 (and tp!1952193 tp!1952194))))

(assert (=> b!7101000 (= tp!1952161 e!4268271)))

(assert (= (and b!7101000 (is-Cons!68717 (exprs!7374 auxCtx!45))) b!7101172))

(declare-fun b!7101183 () Bool)

(declare-fun e!4268274 () Bool)

(assert (=> b!7101183 (= e!4268274 tp_is_empty!44993)))

(declare-fun b!7101185 () Bool)

(declare-fun tp!1952206 () Bool)

(assert (=> b!7101185 (= e!4268274 tp!1952206)))

(assert (=> b!7100999 (= tp!1952163 e!4268274)))

(declare-fun b!7101184 () Bool)

(declare-fun tp!1952208 () Bool)

(declare-fun tp!1952207 () Bool)

(assert (=> b!7101184 (= e!4268274 (and tp!1952208 tp!1952207))))

(declare-fun b!7101186 () Bool)

(declare-fun tp!1952209 () Bool)

(declare-fun tp!1952205 () Bool)

(assert (=> b!7101186 (= e!4268274 (and tp!1952209 tp!1952205))))

(assert (= (and b!7100999 (is-ElementMatch!17880 (regOne!36273 r!11554))) b!7101183))

(assert (= (and b!7100999 (is-Concat!26725 (regOne!36273 r!11554))) b!7101184))

(assert (= (and b!7100999 (is-Star!17880 (regOne!36273 r!11554))) b!7101185))

(assert (= (and b!7100999 (is-Union!17880 (regOne!36273 r!11554))) b!7101186))

(declare-fun b!7101187 () Bool)

(declare-fun e!4268275 () Bool)

(assert (=> b!7101187 (= e!4268275 tp_is_empty!44993)))

(declare-fun b!7101189 () Bool)

(declare-fun tp!1952211 () Bool)

(assert (=> b!7101189 (= e!4268275 tp!1952211)))

(assert (=> b!7100999 (= tp!1952167 e!4268275)))

(declare-fun b!7101188 () Bool)

(declare-fun tp!1952213 () Bool)

(declare-fun tp!1952212 () Bool)

(assert (=> b!7101188 (= e!4268275 (and tp!1952213 tp!1952212))))

(declare-fun b!7101190 () Bool)

(declare-fun tp!1952214 () Bool)

(declare-fun tp!1952210 () Bool)

(assert (=> b!7101190 (= e!4268275 (and tp!1952214 tp!1952210))))

(assert (= (and b!7100999 (is-ElementMatch!17880 (regTwo!36273 r!11554))) b!7101187))

(assert (= (and b!7100999 (is-Concat!26725 (regTwo!36273 r!11554))) b!7101188))

(assert (= (and b!7100999 (is-Star!17880 (regTwo!36273 r!11554))) b!7101189))

(assert (= (and b!7100999 (is-Union!17880 (regTwo!36273 r!11554))) b!7101190))

(declare-fun b!7101191 () Bool)

(declare-fun e!4268276 () Bool)

(assert (=> b!7101191 (= e!4268276 tp_is_empty!44993)))

(declare-fun b!7101193 () Bool)

(declare-fun tp!1952216 () Bool)

(assert (=> b!7101193 (= e!4268276 tp!1952216)))

(assert (=> b!7100994 (= tp!1952165 e!4268276)))

(declare-fun b!7101192 () Bool)

(declare-fun tp!1952218 () Bool)

(declare-fun tp!1952217 () Bool)

(assert (=> b!7101192 (= e!4268276 (and tp!1952218 tp!1952217))))

(declare-fun b!7101194 () Bool)

(declare-fun tp!1952219 () Bool)

(declare-fun tp!1952215 () Bool)

(assert (=> b!7101194 (= e!4268276 (and tp!1952219 tp!1952215))))

(assert (= (and b!7100994 (is-ElementMatch!17880 (regOne!36272 r!11554))) b!7101191))

(assert (= (and b!7100994 (is-Concat!26725 (regOne!36272 r!11554))) b!7101192))

(assert (= (and b!7100994 (is-Star!17880 (regOne!36272 r!11554))) b!7101193))

(assert (= (and b!7100994 (is-Union!17880 (regOne!36272 r!11554))) b!7101194))

(declare-fun b!7101195 () Bool)

(declare-fun e!4268277 () Bool)

(assert (=> b!7101195 (= e!4268277 tp_is_empty!44993)))

(declare-fun b!7101197 () Bool)

(declare-fun tp!1952221 () Bool)

(assert (=> b!7101197 (= e!4268277 tp!1952221)))

(assert (=> b!7100994 (= tp!1952164 e!4268277)))

(declare-fun b!7101196 () Bool)

(declare-fun tp!1952223 () Bool)

(declare-fun tp!1952222 () Bool)

(assert (=> b!7101196 (= e!4268277 (and tp!1952223 tp!1952222))))

(declare-fun b!7101198 () Bool)

(declare-fun tp!1952224 () Bool)

(declare-fun tp!1952220 () Bool)

(assert (=> b!7101198 (= e!4268277 (and tp!1952224 tp!1952220))))

(assert (= (and b!7100994 (is-ElementMatch!17880 (regTwo!36272 r!11554))) b!7101195))

(assert (= (and b!7100994 (is-Concat!26725 (regTwo!36272 r!11554))) b!7101196))

(assert (= (and b!7100994 (is-Star!17880 (regTwo!36272 r!11554))) b!7101197))

(assert (= (and b!7100994 (is-Union!17880 (regTwo!36272 r!11554))) b!7101198))

(declare-fun b!7101199 () Bool)

(declare-fun e!4268278 () Bool)

(declare-fun tp!1952225 () Bool)

(declare-fun tp!1952226 () Bool)

(assert (=> b!7101199 (= e!4268278 (and tp!1952225 tp!1952226))))

(assert (=> b!7100998 (= tp!1952166 e!4268278)))

(assert (= (and b!7100998 (is-Cons!68717 (exprs!7374 c!9994))) b!7101199))

(declare-fun b!7101200 () Bool)

(declare-fun e!4268279 () Bool)

(assert (=> b!7101200 (= e!4268279 tp_is_empty!44993)))

(declare-fun b!7101202 () Bool)

(declare-fun tp!1952228 () Bool)

(assert (=> b!7101202 (= e!4268279 tp!1952228)))

(assert (=> b!7100996 (= tp!1952162 e!4268279)))

(declare-fun b!7101201 () Bool)

(declare-fun tp!1952230 () Bool)

(declare-fun tp!1952229 () Bool)

(assert (=> b!7101201 (= e!4268279 (and tp!1952230 tp!1952229))))

(declare-fun b!7101203 () Bool)

(declare-fun tp!1952231 () Bool)

(declare-fun tp!1952227 () Bool)

(assert (=> b!7101203 (= e!4268279 (and tp!1952231 tp!1952227))))

(assert (= (and b!7100996 (is-ElementMatch!17880 (reg!18209 r!11554))) b!7101200))

(assert (= (and b!7100996 (is-Concat!26725 (reg!18209 r!11554))) b!7101201))

(assert (= (and b!7100996 (is-Star!17880 (reg!18209 r!11554))) b!7101202))

(assert (= (and b!7100996 (is-Union!17880 (reg!18209 r!11554))) b!7101203))

(push 1)

(assert (not b!7101193))

(assert (not b!7101194))

(assert (not b!7101184))

(assert (not d!2218606))

(assert (not bm!646590))

(assert (not b!7101165))

(assert (not b!7101111))

(assert tp_is_empty!44993)

(assert (not b!7101122))

(assert (not b!7101133))

(assert (not bm!646587))

(assert (not bm!646596))

(assert (not bm!646582))

(assert (not b!7101202))

(assert (not bm!646593))

(assert (not bm!646581))

(assert (not b!7101196))

(assert (not b!7101197))

(assert (not b!7101186))

(assert (not b!7101192))

(assert (not b!7101189))

(assert (not bm!646555))

(assert (not b!7101166))

(assert (not b!7101198))

(assert (not b!7101190))

(assert (not b!7101172))

(assert (not b!7101203))

(assert (not b!7101199))

(assert (not b!7101201))

(assert (not bm!646594))

(assert (not bm!646588))

(assert (not d!2218608))

(assert (not b!7101053))

(assert (not bm!646557))

(assert (not b!7101188))

(assert (not d!2218622))

(assert (not d!2218624))

(assert (not bm!646584))

(assert (not b!7101185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

