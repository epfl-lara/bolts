; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690894 () Bool)

(assert start!690894)

(declare-fun b!7097581 () Bool)

(declare-fun res!2898280 () Bool)

(declare-fun e!4266338 () Bool)

(assert (=> b!7097581 (=> (not res!2898280) (not e!4266338))))

(declare-datatypes ((C!35966 0))(
  ( (C!35967 (val!27689 Int)) )
))
(declare-datatypes ((Regex!17848 0))(
  ( (ElementMatch!17848 (c!1324403 C!35966)) (Concat!26693 (regOne!36208 Regex!17848) (regTwo!36208 Regex!17848)) (EmptyExpr!17848) (Star!17848 (reg!18177 Regex!17848)) (EmptyLang!17848) (Union!17848 (regOne!36209 Regex!17848) (regTwo!36209 Regex!17848)) )
))
(declare-fun r!11554 () Regex!17848)

(assert (=> b!7097581 (= res!2898280 (and (not (is-Concat!26693 r!11554)) (is-Star!17848 r!11554)))))

(declare-fun res!2898279 () Bool)

(assert (=> start!690894 (=> (not res!2898279) (not e!4266338))))

(declare-fun validRegex!9123 (Regex!17848) Bool)

(assert (=> start!690894 (= res!2898279 (validRegex!9123 r!11554))))

(assert (=> start!690894 e!4266338))

(declare-fun e!4266335 () Bool)

(assert (=> start!690894 e!4266335))

(declare-fun tp_is_empty!44929 () Bool)

(assert (=> start!690894 tp_is_empty!44929))

(declare-datatypes ((List!68811 0))(
  ( (Nil!68687) (Cons!68687 (h!75135 Regex!17848) (t!382614 List!68811)) )
))
(declare-datatypes ((Context!13688 0))(
  ( (Context!13689 (exprs!7344 List!68811)) )
))
(declare-fun c!9994 () Context!13688)

(declare-fun e!4266333 () Bool)

(declare-fun inv!87486 (Context!13688) Bool)

(assert (=> start!690894 (and (inv!87486 c!9994) e!4266333)))

(declare-fun auxCtx!45 () Context!13688)

(declare-fun e!4266337 () Bool)

(assert (=> start!690894 (and (inv!87486 auxCtx!45) e!4266337)))

(declare-fun b!7097582 () Bool)

(declare-fun e!4266336 () Bool)

(assert (=> b!7097582 (= e!4266338 e!4266336)))

(declare-fun res!2898277 () Bool)

(assert (=> b!7097582 (=> (not res!2898277) (not e!4266336))))

(assert (=> b!7097582 (= res!2898277 (validRegex!9123 r!11554))))

(declare-fun lt!2557489 () List!68811)

(declare-fun ++!16008 (List!68811 List!68811) List!68811)

(assert (=> b!7097582 (= lt!2557489 (++!16008 (exprs!7344 c!9994) (exprs!7344 auxCtx!45)))))

(declare-datatypes ((Unit!162371 0))(
  ( (Unit!162372) )
))
(declare-fun lt!2557490 () Unit!162371)

(declare-fun lambda!430622 () Int)

(declare-fun lemmaConcatPreservesForall!1139 (List!68811 List!68811 Int) Unit!162371)

(assert (=> b!7097582 (= lt!2557490 (lemmaConcatPreservesForall!1139 (exprs!7344 c!9994) (exprs!7344 auxCtx!45) lambda!430622))))

(declare-fun lt!2557491 () Unit!162371)

(assert (=> b!7097582 (= lt!2557491 (lemmaConcatPreservesForall!1139 (exprs!7344 c!9994) (exprs!7344 auxCtx!45) lambda!430622))))

(declare-fun b!7097583 () Bool)

(declare-fun e!4266334 () Bool)

(declare-fun nullable!7488 (Regex!17848) Bool)

(assert (=> b!7097583 (= e!4266334 (not (nullable!7488 (regOne!36208 r!11554))))))

(declare-fun b!7097584 () Bool)

(declare-fun res!2898278 () Bool)

(assert (=> b!7097584 (=> (not res!2898278) (not e!4266338))))

(declare-fun a!1901 () C!35966)

(assert (=> b!7097584 (= res!2898278 (and (or (not (is-ElementMatch!17848 r!11554)) (not (= (c!1324403 r!11554) a!1901))) (not (is-Union!17848 r!11554))))))

(declare-fun b!7097585 () Bool)

(declare-fun tp!1950733 () Bool)

(assert (=> b!7097585 (= e!4266335 tp!1950733)))

(declare-fun b!7097586 () Bool)

(declare-fun tp!1950728 () Bool)

(assert (=> b!7097586 (= e!4266337 tp!1950728)))

(declare-fun b!7097587 () Bool)

(assert (=> b!7097587 (= e!4266336 (not (validRegex!9123 (reg!18177 r!11554))))))

(declare-fun b!7097588 () Bool)

(declare-fun tp!1950730 () Bool)

(assert (=> b!7097588 (= e!4266333 tp!1950730)))

(declare-fun b!7097589 () Bool)

(declare-fun tp!1950727 () Bool)

(declare-fun tp!1950731 () Bool)

(assert (=> b!7097589 (= e!4266335 (and tp!1950727 tp!1950731))))

(declare-fun b!7097590 () Bool)

(declare-fun tp!1950732 () Bool)

(declare-fun tp!1950729 () Bool)

(assert (=> b!7097590 (= e!4266335 (and tp!1950732 tp!1950729))))

(declare-fun b!7097591 () Bool)

(assert (=> b!7097591 (= e!4266335 tp_is_empty!44929)))

(declare-fun b!7097592 () Bool)

(declare-fun res!2898276 () Bool)

(assert (=> b!7097592 (=> (not res!2898276) (not e!4266338))))

(assert (=> b!7097592 (= res!2898276 e!4266334)))

(declare-fun res!2898275 () Bool)

(assert (=> b!7097592 (=> res!2898275 e!4266334)))

(assert (=> b!7097592 (= res!2898275 (not (is-Concat!26693 r!11554)))))

(assert (= (and start!690894 res!2898279) b!7097584))

(assert (= (and b!7097584 res!2898278) b!7097592))

(assert (= (and b!7097592 (not res!2898275)) b!7097583))

(assert (= (and b!7097592 res!2898276) b!7097581))

(assert (= (and b!7097581 res!2898280) b!7097582))

(assert (= (and b!7097582 res!2898277) b!7097587))

(assert (= (and start!690894 (is-ElementMatch!17848 r!11554)) b!7097591))

(assert (= (and start!690894 (is-Concat!26693 r!11554)) b!7097589))

(assert (= (and start!690894 (is-Star!17848 r!11554)) b!7097585))

(assert (= (and start!690894 (is-Union!17848 r!11554)) b!7097590))

(assert (= start!690894 b!7097588))

(assert (= start!690894 b!7097586))

(declare-fun m!7824400 () Bool)

(assert (=> start!690894 m!7824400))

(declare-fun m!7824402 () Bool)

(assert (=> start!690894 m!7824402))

(declare-fun m!7824404 () Bool)

(assert (=> start!690894 m!7824404))

(assert (=> b!7097582 m!7824400))

(declare-fun m!7824406 () Bool)

(assert (=> b!7097582 m!7824406))

(declare-fun m!7824408 () Bool)

(assert (=> b!7097582 m!7824408))

(assert (=> b!7097582 m!7824408))

(declare-fun m!7824410 () Bool)

(assert (=> b!7097583 m!7824410))

(declare-fun m!7824412 () Bool)

(assert (=> b!7097587 m!7824412))

(push 1)

(assert (not b!7097587))

(assert (not b!7097585))

(assert (not b!7097589))

(assert tp_is_empty!44929)

(assert (not b!7097586))

(assert (not b!7097588))

(assert (not b!7097590))

(assert (not start!690894))

(assert (not b!7097583))

(assert (not b!7097582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1324409 () Bool)

(declare-fun bm!645979 () Bool)

(declare-fun call!645985 () Bool)

(declare-fun c!1324410 () Bool)

(assert (=> bm!645979 (= call!645985 (validRegex!9123 (ite c!1324410 (reg!18177 (reg!18177 r!11554)) (ite c!1324409 (regOne!36209 (reg!18177 r!11554)) (regTwo!36208 (reg!18177 r!11554))))))))

(declare-fun b!7097647 () Bool)

(declare-fun e!4266371 () Bool)

(declare-fun call!645984 () Bool)

(assert (=> b!7097647 (= e!4266371 call!645984)))

(declare-fun b!7097648 () Bool)

(declare-fun e!4266372 () Bool)

(declare-fun e!4266373 () Bool)

(assert (=> b!7097648 (= e!4266372 e!4266373)))

(assert (=> b!7097648 (= c!1324410 (is-Star!17848 (reg!18177 r!11554)))))

(declare-fun b!7097649 () Bool)

(declare-fun e!4266375 () Bool)

(assert (=> b!7097649 (= e!4266373 e!4266375)))

(declare-fun res!2898312 () Bool)

(assert (=> b!7097649 (= res!2898312 (not (nullable!7488 (reg!18177 (reg!18177 r!11554)))))))

(assert (=> b!7097649 (=> (not res!2898312) (not e!4266375))))

(declare-fun b!7097650 () Bool)

(declare-fun res!2898311 () Bool)

(declare-fun e!4266374 () Bool)

(assert (=> b!7097650 (=> res!2898311 e!4266374)))

(assert (=> b!7097650 (= res!2898311 (not (is-Concat!26693 (reg!18177 r!11554))))))

(declare-fun e!4266376 () Bool)

(assert (=> b!7097650 (= e!4266376 e!4266374)))

(declare-fun b!7097651 () Bool)

(assert (=> b!7097651 (= e!4266375 call!645985)))

(declare-fun b!7097652 () Bool)

(declare-fun e!4266377 () Bool)

(declare-fun call!645986 () Bool)

(assert (=> b!7097652 (= e!4266377 call!645986)))

(declare-fun b!7097653 () Bool)

(declare-fun res!2898309 () Bool)

(assert (=> b!7097653 (=> (not res!2898309) (not e!4266371))))

(assert (=> b!7097653 (= res!2898309 call!645986)))

(assert (=> b!7097653 (= e!4266376 e!4266371)))

(declare-fun d!2218054 () Bool)

(declare-fun res!2898310 () Bool)

(assert (=> d!2218054 (=> res!2898310 e!4266372)))

(assert (=> d!2218054 (= res!2898310 (is-ElementMatch!17848 (reg!18177 r!11554)))))

(assert (=> d!2218054 (= (validRegex!9123 (reg!18177 r!11554)) e!4266372)))

(declare-fun b!7097654 () Bool)

(assert (=> b!7097654 (= e!4266374 e!4266377)))

(declare-fun res!2898313 () Bool)

(assert (=> b!7097654 (=> (not res!2898313) (not e!4266377))))

(assert (=> b!7097654 (= res!2898313 call!645984)))

(declare-fun bm!645980 () Bool)

(assert (=> bm!645980 (= call!645984 (validRegex!9123 (ite c!1324409 (regTwo!36209 (reg!18177 r!11554)) (regOne!36208 (reg!18177 r!11554)))))))

(declare-fun b!7097655 () Bool)

(assert (=> b!7097655 (= e!4266373 e!4266376)))

(assert (=> b!7097655 (= c!1324409 (is-Union!17848 (reg!18177 r!11554)))))

(declare-fun bm!645981 () Bool)

(assert (=> bm!645981 (= call!645986 call!645985)))

(assert (= (and d!2218054 (not res!2898310)) b!7097648))

(assert (= (and b!7097648 c!1324410) b!7097649))

(assert (= (and b!7097648 (not c!1324410)) b!7097655))

(assert (= (and b!7097649 res!2898312) b!7097651))

(assert (= (and b!7097655 c!1324409) b!7097653))

(assert (= (and b!7097655 (not c!1324409)) b!7097650))

(assert (= (and b!7097653 res!2898309) b!7097647))

(assert (= (and b!7097650 (not res!2898311)) b!7097654))

(assert (= (and b!7097654 res!2898313) b!7097652))

(assert (= (or b!7097653 b!7097652) bm!645981))

(assert (= (or b!7097647 b!7097654) bm!645980))

(assert (= (or b!7097651 bm!645981) bm!645979))

(declare-fun m!7824430 () Bool)

(assert (=> bm!645979 m!7824430))

(declare-fun m!7824432 () Bool)

(assert (=> b!7097649 m!7824432))

(declare-fun m!7824434 () Bool)

(assert (=> bm!645980 m!7824434))

(assert (=> b!7097587 d!2218054))

(declare-fun c!1324411 () Bool)

(declare-fun bm!645982 () Bool)

(declare-fun c!1324412 () Bool)

(declare-fun call!645988 () Bool)

(assert (=> bm!645982 (= call!645988 (validRegex!9123 (ite c!1324412 (reg!18177 r!11554) (ite c!1324411 (regOne!36209 r!11554) (regTwo!36208 r!11554)))))))

(declare-fun b!7097656 () Bool)

(declare-fun e!4266378 () Bool)

(declare-fun call!645987 () Bool)

(assert (=> b!7097656 (= e!4266378 call!645987)))

(declare-fun b!7097657 () Bool)

(declare-fun e!4266379 () Bool)

(declare-fun e!4266380 () Bool)

(assert (=> b!7097657 (= e!4266379 e!4266380)))

(assert (=> b!7097657 (= c!1324412 (is-Star!17848 r!11554))))

(declare-fun b!7097658 () Bool)

(declare-fun e!4266382 () Bool)

(assert (=> b!7097658 (= e!4266380 e!4266382)))

(declare-fun res!2898317 () Bool)

(assert (=> b!7097658 (= res!2898317 (not (nullable!7488 (reg!18177 r!11554))))))

(assert (=> b!7097658 (=> (not res!2898317) (not e!4266382))))

(declare-fun b!7097659 () Bool)

(declare-fun res!2898316 () Bool)

(declare-fun e!4266381 () Bool)

(assert (=> b!7097659 (=> res!2898316 e!4266381)))

(assert (=> b!7097659 (= res!2898316 (not (is-Concat!26693 r!11554)))))

(declare-fun e!4266383 () Bool)

(assert (=> b!7097659 (= e!4266383 e!4266381)))

(declare-fun b!7097660 () Bool)

(assert (=> b!7097660 (= e!4266382 call!645988)))

(declare-fun b!7097661 () Bool)

(declare-fun e!4266384 () Bool)

(declare-fun call!645989 () Bool)

(assert (=> b!7097661 (= e!4266384 call!645989)))

(declare-fun b!7097662 () Bool)

(declare-fun res!2898314 () Bool)

(assert (=> b!7097662 (=> (not res!2898314) (not e!4266378))))

(assert (=> b!7097662 (= res!2898314 call!645989)))

(assert (=> b!7097662 (= e!4266383 e!4266378)))

(declare-fun d!2218060 () Bool)

(declare-fun res!2898315 () Bool)

(assert (=> d!2218060 (=> res!2898315 e!4266379)))

(assert (=> d!2218060 (= res!2898315 (is-ElementMatch!17848 r!11554))))

(assert (=> d!2218060 (= (validRegex!9123 r!11554) e!4266379)))

(declare-fun b!7097663 () Bool)

(assert (=> b!7097663 (= e!4266381 e!4266384)))

(declare-fun res!2898318 () Bool)

(assert (=> b!7097663 (=> (not res!2898318) (not e!4266384))))

(assert (=> b!7097663 (= res!2898318 call!645987)))

(declare-fun bm!645983 () Bool)

(assert (=> bm!645983 (= call!645987 (validRegex!9123 (ite c!1324411 (regTwo!36209 r!11554) (regOne!36208 r!11554))))))

(declare-fun b!7097664 () Bool)

(assert (=> b!7097664 (= e!4266380 e!4266383)))

(assert (=> b!7097664 (= c!1324411 (is-Union!17848 r!11554))))

(declare-fun bm!645984 () Bool)

(assert (=> bm!645984 (= call!645989 call!645988)))

(assert (= (and d!2218060 (not res!2898315)) b!7097657))

(assert (= (and b!7097657 c!1324412) b!7097658))

(assert (= (and b!7097657 (not c!1324412)) b!7097664))

(assert (= (and b!7097658 res!2898317) b!7097660))

(assert (= (and b!7097664 c!1324411) b!7097662))

(assert (= (and b!7097664 (not c!1324411)) b!7097659))

(assert (= (and b!7097662 res!2898314) b!7097656))

(assert (= (and b!7097659 (not res!2898316)) b!7097663))

(assert (= (and b!7097663 res!2898318) b!7097661))

(assert (= (or b!7097662 b!7097661) bm!645984))

(assert (= (or b!7097656 b!7097663) bm!645983))

(assert (= (or b!7097660 bm!645984) bm!645982))

(declare-fun m!7824436 () Bool)

(assert (=> bm!645982 m!7824436))

(declare-fun m!7824438 () Bool)

(assert (=> b!7097658 m!7824438))

(declare-fun m!7824440 () Bool)

(assert (=> bm!645983 m!7824440))

(assert (=> b!7097582 d!2218060))

(declare-fun d!2218062 () Bool)

(declare-fun e!4266403 () Bool)

(assert (=> d!2218062 e!4266403))

(declare-fun res!2898334 () Bool)

(assert (=> d!2218062 (=> (not res!2898334) (not e!4266403))))

(declare-fun lt!2557503 () List!68811)

(declare-fun content!13957 (List!68811) (Set Regex!17848))

(assert (=> d!2218062 (= res!2898334 (= (content!13957 lt!2557503) (set.union (content!13957 (exprs!7344 c!9994)) (content!13957 (exprs!7344 auxCtx!45)))))))

(declare-fun e!4266404 () List!68811)

(assert (=> d!2218062 (= lt!2557503 e!4266404)))

(declare-fun c!1324419 () Bool)

(assert (=> d!2218062 (= c!1324419 (is-Nil!68687 (exprs!7344 c!9994)))))

(assert (=> d!2218062 (= (++!16008 (exprs!7344 c!9994) (exprs!7344 auxCtx!45)) lt!2557503)))

(declare-fun b!7097691 () Bool)

(assert (=> b!7097691 (= e!4266404 (exprs!7344 auxCtx!45))))

(declare-fun b!7097693 () Bool)

(declare-fun res!2898333 () Bool)

(assert (=> b!7097693 (=> (not res!2898333) (not e!4266403))))

(declare-fun size!41332 (List!68811) Int)

(assert (=> b!7097693 (= res!2898333 (= (size!41332 lt!2557503) (+ (size!41332 (exprs!7344 c!9994)) (size!41332 (exprs!7344 auxCtx!45)))))))

(declare-fun b!7097694 () Bool)

(assert (=> b!7097694 (= e!4266403 (or (not (= (exprs!7344 auxCtx!45) Nil!68687)) (= lt!2557503 (exprs!7344 c!9994))))))

(declare-fun b!7097692 () Bool)

(assert (=> b!7097692 (= e!4266404 (Cons!68687 (h!75135 (exprs!7344 c!9994)) (++!16008 (t!382614 (exprs!7344 c!9994)) (exprs!7344 auxCtx!45))))))

(assert (= (and d!2218062 c!1324419) b!7097691))

(assert (= (and d!2218062 (not c!1324419)) b!7097692))

(assert (= (and d!2218062 res!2898334) b!7097693))

(assert (= (and b!7097693 res!2898333) b!7097694))

(declare-fun m!7824442 () Bool)

(assert (=> d!2218062 m!7824442))

(declare-fun m!7824444 () Bool)

(assert (=> d!2218062 m!7824444))

(declare-fun m!7824446 () Bool)

(assert (=> d!2218062 m!7824446))

(declare-fun m!7824448 () Bool)

(assert (=> b!7097693 m!7824448))

(declare-fun m!7824450 () Bool)

(assert (=> b!7097693 m!7824450))

(declare-fun m!7824452 () Bool)

(assert (=> b!7097693 m!7824452))

(declare-fun m!7824454 () Bool)

(assert (=> b!7097692 m!7824454))

(assert (=> b!7097582 d!2218062))

(declare-fun d!2218064 () Bool)

(declare-fun forall!16766 (List!68811 Int) Bool)

(assert (=> d!2218064 (forall!16766 (++!16008 (exprs!7344 c!9994) (exprs!7344 auxCtx!45)) lambda!430622)))

(declare-fun lt!2557506 () Unit!162371)

(declare-fun choose!54724 (List!68811 List!68811 Int) Unit!162371)

(assert (=> d!2218064 (= lt!2557506 (choose!54724 (exprs!7344 c!9994) (exprs!7344 auxCtx!45) lambda!430622))))

(assert (=> d!2218064 (forall!16766 (exprs!7344 c!9994) lambda!430622)))

(assert (=> d!2218064 (= (lemmaConcatPreservesForall!1139 (exprs!7344 c!9994) (exprs!7344 auxCtx!45) lambda!430622) lt!2557506)))

(declare-fun bs!1884042 () Bool)

(assert (= bs!1884042 d!2218064))

(assert (=> bs!1884042 m!7824406))

(assert (=> bs!1884042 m!7824406))

(declare-fun m!7824456 () Bool)

(assert (=> bs!1884042 m!7824456))

(declare-fun m!7824458 () Bool)

(assert (=> bs!1884042 m!7824458))

(declare-fun m!7824460 () Bool)

(assert (=> bs!1884042 m!7824460))

(assert (=> b!7097582 d!2218064))

(assert (=> start!690894 d!2218060))

(declare-fun bs!1884043 () Bool)

(declare-fun d!2218066 () Bool)

(assert (= bs!1884043 (and d!2218066 b!7097582)))

(declare-fun lambda!430630 () Int)

(assert (=> bs!1884043 (= lambda!430630 lambda!430622)))

(assert (=> d!2218066 (= (inv!87486 c!9994) (forall!16766 (exprs!7344 c!9994) lambda!430630))))

(declare-fun bs!1884044 () Bool)

(assert (= bs!1884044 d!2218066))

(declare-fun m!7824462 () Bool)

(assert (=> bs!1884044 m!7824462))

(assert (=> start!690894 d!2218066))

(declare-fun bs!1884045 () Bool)

(declare-fun d!2218068 () Bool)

(assert (= bs!1884045 (and d!2218068 b!7097582)))

(declare-fun lambda!430631 () Int)

(assert (=> bs!1884045 (= lambda!430631 lambda!430622)))

(declare-fun bs!1884046 () Bool)

(assert (= bs!1884046 (and d!2218068 d!2218066)))

(assert (=> bs!1884046 (= lambda!430631 lambda!430630)))

(assert (=> d!2218068 (= (inv!87486 auxCtx!45) (forall!16766 (exprs!7344 auxCtx!45) lambda!430631))))

(declare-fun bs!1884047 () Bool)

(assert (= bs!1884047 d!2218068))

(declare-fun m!7824464 () Bool)

(assert (=> bs!1884047 m!7824464))

(assert (=> start!690894 d!2218068))

(declare-fun d!2218070 () Bool)

(declare-fun nullableFct!2884 (Regex!17848) Bool)

(assert (=> d!2218070 (= (nullable!7488 (regOne!36208 r!11554)) (nullableFct!2884 (regOne!36208 r!11554)))))

(declare-fun bs!1884048 () Bool)

(assert (= bs!1884048 d!2218070))

(declare-fun m!7824466 () Bool)

(assert (=> bs!1884048 m!7824466))

(assert (=> b!7097583 d!2218070))

(declare-fun b!7097699 () Bool)

(declare-fun e!4266407 () Bool)

(declare-fun tp!1950759 () Bool)

(declare-fun tp!1950760 () Bool)

(assert (=> b!7097699 (= e!4266407 (and tp!1950759 tp!1950760))))

(assert (=> b!7097588 (= tp!1950730 e!4266407)))

(assert (= (and b!7097588 (is-Cons!68687 (exprs!7344 c!9994))) b!7097699))

(declare-fun b!7097700 () Bool)

(declare-fun e!4266408 () Bool)

(declare-fun tp!1950761 () Bool)

(declare-fun tp!1950762 () Bool)

(assert (=> b!7097700 (= e!4266408 (and tp!1950761 tp!1950762))))

(assert (=> b!7097586 (= tp!1950728 e!4266408)))

(assert (= (and b!7097586 (is-Cons!68687 (exprs!7344 auxCtx!45))) b!7097700))

(declare-fun b!7097723 () Bool)

(declare-fun e!4266418 () Bool)

(declare-fun tp!1950773 () Bool)

(declare-fun tp!1950776 () Bool)

(assert (=> b!7097723 (= e!4266418 (and tp!1950773 tp!1950776))))

(assert (=> b!7097590 (= tp!1950732 e!4266418)))

(declare-fun b!7097721 () Bool)

(declare-fun tp!1950775 () Bool)

(declare-fun tp!1950774 () Bool)

(assert (=> b!7097721 (= e!4266418 (and tp!1950775 tp!1950774))))

(declare-fun b!7097722 () Bool)

(declare-fun tp!1950777 () Bool)

(assert (=> b!7097722 (= e!4266418 tp!1950777)))

(declare-fun b!7097720 () Bool)

(assert (=> b!7097720 (= e!4266418 tp_is_empty!44929)))

(assert (= (and b!7097590 (is-ElementMatch!17848 (regOne!36209 r!11554))) b!7097720))

(assert (= (and b!7097590 (is-Concat!26693 (regOne!36209 r!11554))) b!7097721))

(assert (= (and b!7097590 (is-Star!17848 (regOne!36209 r!11554))) b!7097722))

(assert (= (and b!7097590 (is-Union!17848 (regOne!36209 r!11554))) b!7097723))

(declare-fun b!7097727 () Bool)

(declare-fun e!4266419 () Bool)

(declare-fun tp!1950778 () Bool)

(declare-fun tp!1950781 () Bool)

(assert (=> b!7097727 (= e!4266419 (and tp!1950778 tp!1950781))))

(assert (=> b!7097590 (= tp!1950729 e!4266419)))

(declare-fun b!7097725 () Bool)

(declare-fun tp!1950780 () Bool)

(declare-fun tp!1950779 () Bool)

(assert (=> b!7097725 (= e!4266419 (and tp!1950780 tp!1950779))))

(declare-fun b!7097726 () Bool)

(declare-fun tp!1950782 () Bool)

(assert (=> b!7097726 (= e!4266419 tp!1950782)))

(declare-fun b!7097724 () Bool)

(assert (=> b!7097724 (= e!4266419 tp_is_empty!44929)))

(assert (= (and b!7097590 (is-ElementMatch!17848 (regTwo!36209 r!11554))) b!7097724))

(assert (= (and b!7097590 (is-Concat!26693 (regTwo!36209 r!11554))) b!7097725))

(assert (= (and b!7097590 (is-Star!17848 (regTwo!36209 r!11554))) b!7097726))

(assert (= (and b!7097590 (is-Union!17848 (regTwo!36209 r!11554))) b!7097727))

(declare-fun b!7097731 () Bool)

(declare-fun e!4266420 () Bool)

(declare-fun tp!1950783 () Bool)

(declare-fun tp!1950786 () Bool)

(assert (=> b!7097731 (= e!4266420 (and tp!1950783 tp!1950786))))

(assert (=> b!7097585 (= tp!1950733 e!4266420)))

(declare-fun b!7097729 () Bool)

(declare-fun tp!1950785 () Bool)

(declare-fun tp!1950784 () Bool)

(assert (=> b!7097729 (= e!4266420 (and tp!1950785 tp!1950784))))

(declare-fun b!7097730 () Bool)

(declare-fun tp!1950787 () Bool)

(assert (=> b!7097730 (= e!4266420 tp!1950787)))

(declare-fun b!7097728 () Bool)

(assert (=> b!7097728 (= e!4266420 tp_is_empty!44929)))

(assert (= (and b!7097585 (is-ElementMatch!17848 (reg!18177 r!11554))) b!7097728))

(assert (= (and b!7097585 (is-Concat!26693 (reg!18177 r!11554))) b!7097729))

(assert (= (and b!7097585 (is-Star!17848 (reg!18177 r!11554))) b!7097730))

(assert (= (and b!7097585 (is-Union!17848 (reg!18177 r!11554))) b!7097731))

(declare-fun b!7097735 () Bool)

(declare-fun e!4266421 () Bool)

(declare-fun tp!1950788 () Bool)

(declare-fun tp!1950791 () Bool)

(assert (=> b!7097735 (= e!4266421 (and tp!1950788 tp!1950791))))

(assert (=> b!7097589 (= tp!1950727 e!4266421)))

(declare-fun b!7097733 () Bool)

(declare-fun tp!1950790 () Bool)

(declare-fun tp!1950789 () Bool)

(assert (=> b!7097733 (= e!4266421 (and tp!1950790 tp!1950789))))

(declare-fun b!7097734 () Bool)

(declare-fun tp!1950792 () Bool)

(assert (=> b!7097734 (= e!4266421 tp!1950792)))

(declare-fun b!7097732 () Bool)

(assert (=> b!7097732 (= e!4266421 tp_is_empty!44929)))

(assert (= (and b!7097589 (is-ElementMatch!17848 (regOne!36208 r!11554))) b!7097732))

(assert (= (and b!7097589 (is-Concat!26693 (regOne!36208 r!11554))) b!7097733))

(assert (= (and b!7097589 (is-Star!17848 (regOne!36208 r!11554))) b!7097734))

(assert (= (and b!7097589 (is-Union!17848 (regOne!36208 r!11554))) b!7097735))

(declare-fun b!7097739 () Bool)

(declare-fun e!4266422 () Bool)

(declare-fun tp!1950793 () Bool)

(declare-fun tp!1950796 () Bool)

(assert (=> b!7097739 (= e!4266422 (and tp!1950793 tp!1950796))))

(assert (=> b!7097589 (= tp!1950731 e!4266422)))

(declare-fun b!7097737 () Bool)

(declare-fun tp!1950795 () Bool)

(declare-fun tp!1950794 () Bool)

(assert (=> b!7097737 (= e!4266422 (and tp!1950795 tp!1950794))))

(declare-fun b!7097738 () Bool)

(declare-fun tp!1950797 () Bool)

(assert (=> b!7097738 (= e!4266422 tp!1950797)))

(declare-fun b!7097736 () Bool)

(assert (=> b!7097736 (= e!4266422 tp_is_empty!44929)))

(assert (= (and b!7097589 (is-ElementMatch!17848 (regTwo!36208 r!11554))) b!7097736))

(assert (= (and b!7097589 (is-Concat!26693 (regTwo!36208 r!11554))) b!7097737))

(assert (= (and b!7097589 (is-Star!17848 (regTwo!36208 r!11554))) b!7097738))

(assert (= (and b!7097589 (is-Union!17848 (regTwo!36208 r!11554))) b!7097739))

(push 1)

(assert (not bm!645980))

(assert (not b!7097739))

(assert (not b!7097727))

(assert (not b!7097649))

(assert (not b!7097723))

(assert (not bm!645982))

(assert (not b!7097658))

(assert (not bm!645979))

(assert (not b!7097722))

(assert (not b!7097731))

(assert (not bm!645983))

(assert (not d!2218068))

(assert (not b!7097700))

(assert (not b!7097734))

(assert (not b!7097725))

(assert (not b!7097729))

(assert (not b!7097693))

(assert (not d!2218066))

(assert tp_is_empty!44929)

(assert (not b!7097692))

(assert (not b!7097738))

(assert (not b!7097733))

(assert (not b!7097737))

(assert (not b!7097726))

(assert (not d!2218062))

(assert (not d!2218064))

(assert (not b!7097721))

(assert (not b!7097730))

(assert (not b!7097735))

(assert (not b!7097699))

(assert (not d!2218070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

