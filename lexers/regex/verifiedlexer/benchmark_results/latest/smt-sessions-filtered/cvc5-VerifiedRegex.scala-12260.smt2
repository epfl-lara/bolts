; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689842 () Bool)

(assert start!689842)

(declare-fun b!7087413 () Bool)

(declare-fun e!4260787 () Bool)

(declare-fun tp_is_empty!44757 () Bool)

(assert (=> b!7087413 (= e!4260787 tp_is_empty!44757)))

(declare-fun b!7087414 () Bool)

(declare-fun tp!1946372 () Bool)

(declare-fun tp!1946371 () Bool)

(assert (=> b!7087414 (= e!4260787 (and tp!1946372 tp!1946371))))

(declare-fun b!7087415 () Bool)

(declare-fun e!4260785 () Bool)

(declare-fun e!4260786 () Bool)

(assert (=> b!7087415 (= e!4260785 e!4260786)))

(declare-fun res!2895041 () Bool)

(assert (=> b!7087415 (=> (not res!2895041) (not e!4260786))))

(declare-datatypes ((C!35794 0))(
  ( (C!35795 (val!27603 Int)) )
))
(declare-fun a!1901 () C!35794)

(declare-datatypes ((Regex!17762 0))(
  ( (ElementMatch!17762 (c!1322665 C!35794)) (Concat!26607 (regOne!36036 Regex!17762) (regTwo!36036 Regex!17762)) (EmptyExpr!17762) (Star!17762 (reg!18091 Regex!17762)) (EmptyLang!17762) (Union!17762 (regOne!36037 Regex!17762) (regTwo!36037 Regex!17762)) )
))
(declare-datatypes ((List!68725 0))(
  ( (Nil!68601) (Cons!68601 (h!75049 Regex!17762) (t!382510 List!68725)) )
))
(declare-datatypes ((Context!13516 0))(
  ( (Context!13517 (exprs!7258 List!68725)) )
))
(declare-fun lt!2554894 () (Set Context!13516))

(declare-fun r!11554 () Regex!17762)

(declare-fun lt!2554896 () (Set Context!13516))

(declare-fun lt!2554889 () Context!13516)

(declare-fun derivationStepZipperDown!2341 (Regex!17762 Context!13516 C!35794) (Set Context!13516))

(assert (=> b!7087415 (= res!2895041 (= (derivationStepZipperDown!2341 r!11554 lt!2554889 a!1901) (set.union lt!2554896 lt!2554894)))))

(assert (=> b!7087415 (= lt!2554894 (derivationStepZipperDown!2341 (regTwo!36037 r!11554) lt!2554889 a!1901))))

(assert (=> b!7087415 (= lt!2554896 (derivationStepZipperDown!2341 (regOne!36037 r!11554) lt!2554889 a!1901))))

(declare-fun c!9994 () Context!13516)

(declare-fun auxCtx!45 () Context!13516)

(declare-fun ++!15935 (List!68725 List!68725) List!68725)

(assert (=> b!7087415 (= lt!2554889 (Context!13517 (++!15935 (exprs!7258 c!9994) (exprs!7258 auxCtx!45))))))

(declare-fun lambda!429252 () Int)

(declare-datatypes ((Unit!162223 0))(
  ( (Unit!162224) )
))
(declare-fun lt!2554888 () Unit!162223)

(declare-fun lemmaConcatPreservesForall!1065 (List!68725 List!68725 Int) Unit!162223)

(assert (=> b!7087415 (= lt!2554888 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(declare-fun lt!2554893 () Unit!162223)

(assert (=> b!7087415 (= lt!2554893 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(declare-fun lt!2554891 () Unit!162223)

(assert (=> b!7087415 (= lt!2554891 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(declare-fun b!7087416 () Bool)

(declare-fun tp!1946373 () Bool)

(declare-fun tp!1946374 () Bool)

(assert (=> b!7087416 (= e!4260787 (and tp!1946373 tp!1946374))))

(declare-fun b!7087417 () Bool)

(declare-fun e!4260784 () Bool)

(declare-fun tp!1946377 () Bool)

(assert (=> b!7087417 (= e!4260784 tp!1946377)))

(declare-fun b!7087418 () Bool)

(declare-fun validRegex!9037 (Regex!17762) Bool)

(assert (=> b!7087418 (= e!4260786 (not (validRegex!9037 (regTwo!36037 r!11554))))))

(declare-fun appendTo!851 ((Set Context!13516) Context!13516) (Set Context!13516))

(assert (=> b!7087418 (= lt!2554894 (appendTo!851 (derivationStepZipperDown!2341 (regTwo!36037 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554892 () Unit!162223)

(assert (=> b!7087418 (= lt!2554892 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(declare-fun lt!2554895 () Unit!162223)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!159 (Context!13516 Regex!17762 C!35794 Context!13516) Unit!162223)

(assert (=> b!7087418 (= lt!2554895 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!159 c!9994 (regTwo!36037 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7087418 (= lt!2554896 (appendTo!851 (derivationStepZipperDown!2341 (regOne!36037 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554887 () Unit!162223)

(assert (=> b!7087418 (= lt!2554887 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(declare-fun lt!2554890 () Unit!162223)

(assert (=> b!7087418 (= lt!2554890 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!159 c!9994 (regOne!36037 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7087419 () Bool)

(declare-fun res!2895040 () Bool)

(assert (=> b!7087419 (=> (not res!2895040) (not e!4260785))))

(assert (=> b!7087419 (= res!2895040 (and (or (not (is-ElementMatch!17762 r!11554)) (not (= (c!1322665 r!11554) a!1901))) (is-Union!17762 r!11554)))))

(declare-fun res!2895039 () Bool)

(assert (=> start!689842 (=> (not res!2895039) (not e!4260785))))

(assert (=> start!689842 (= res!2895039 (validRegex!9037 r!11554))))

(assert (=> start!689842 e!4260785))

(assert (=> start!689842 e!4260787))

(assert (=> start!689842 tp_is_empty!44757))

(declare-fun inv!87271 (Context!13516) Bool)

(assert (=> start!689842 (and (inv!87271 c!9994) e!4260784)))

(declare-fun e!4260783 () Bool)

(assert (=> start!689842 (and (inv!87271 auxCtx!45) e!4260783)))

(declare-fun b!7087420 () Bool)

(declare-fun tp!1946376 () Bool)

(assert (=> b!7087420 (= e!4260783 tp!1946376)))

(declare-fun b!7087421 () Bool)

(declare-fun tp!1946375 () Bool)

(assert (=> b!7087421 (= e!4260787 tp!1946375)))

(assert (= (and start!689842 res!2895039) b!7087419))

(assert (= (and b!7087419 res!2895040) b!7087415))

(assert (= (and b!7087415 res!2895041) b!7087418))

(assert (= (and start!689842 (is-ElementMatch!17762 r!11554)) b!7087413))

(assert (= (and start!689842 (is-Concat!26607 r!11554)) b!7087414))

(assert (= (and start!689842 (is-Star!17762 r!11554)) b!7087421))

(assert (= (and start!689842 (is-Union!17762 r!11554)) b!7087416))

(assert (= start!689842 b!7087417))

(assert (= start!689842 b!7087420))

(declare-fun m!7817640 () Bool)

(assert (=> b!7087415 m!7817640))

(declare-fun m!7817642 () Bool)

(assert (=> b!7087415 m!7817642))

(declare-fun m!7817644 () Bool)

(assert (=> b!7087415 m!7817644))

(assert (=> b!7087415 m!7817642))

(declare-fun m!7817646 () Bool)

(assert (=> b!7087415 m!7817646))

(assert (=> b!7087415 m!7817642))

(declare-fun m!7817648 () Bool)

(assert (=> b!7087415 m!7817648))

(assert (=> b!7087418 m!7817642))

(declare-fun m!7817650 () Bool)

(assert (=> b!7087418 m!7817650))

(declare-fun m!7817652 () Bool)

(assert (=> b!7087418 m!7817652))

(declare-fun m!7817654 () Bool)

(assert (=> b!7087418 m!7817654))

(assert (=> b!7087418 m!7817642))

(assert (=> b!7087418 m!7817652))

(declare-fun m!7817656 () Bool)

(assert (=> b!7087418 m!7817656))

(declare-fun m!7817658 () Bool)

(assert (=> b!7087418 m!7817658))

(assert (=> b!7087418 m!7817650))

(declare-fun m!7817660 () Bool)

(assert (=> b!7087418 m!7817660))

(declare-fun m!7817662 () Bool)

(assert (=> b!7087418 m!7817662))

(declare-fun m!7817664 () Bool)

(assert (=> start!689842 m!7817664))

(declare-fun m!7817666 () Bool)

(assert (=> start!689842 m!7817666))

(declare-fun m!7817668 () Bool)

(assert (=> start!689842 m!7817668))

(push 1)

(assert (not start!689842))

(assert tp_is_empty!44757)

(assert (not b!7087418))

(assert (not b!7087414))

(assert (not b!7087415))

(assert (not b!7087420))

(assert (not b!7087421))

(assert (not b!7087416))

(assert (not b!7087417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216227 () Bool)

(declare-fun forall!16706 (List!68725 Int) Bool)

(assert (=> d!2216227 (forall!16706 (++!15935 (exprs!7258 c!9994) (exprs!7258 auxCtx!45)) lambda!429252)))

(declare-fun lt!2554929 () Unit!162223)

(declare-fun choose!54622 (List!68725 List!68725 Int) Unit!162223)

(assert (=> d!2216227 (= lt!2554929 (choose!54622 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252))))

(assert (=> d!2216227 (forall!16706 (exprs!7258 c!9994) lambda!429252)))

(assert (=> d!2216227 (= (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429252) lt!2554929)))

(declare-fun bs!1883063 () Bool)

(assert (= bs!1883063 d!2216227))

(assert (=> bs!1883063 m!7817646))

(assert (=> bs!1883063 m!7817646))

(declare-fun m!7817700 () Bool)

(assert (=> bs!1883063 m!7817700))

(declare-fun m!7817702 () Bool)

(assert (=> bs!1883063 m!7817702))

(declare-fun m!7817704 () Bool)

(assert (=> bs!1883063 m!7817704))

(assert (=> b!7087418 d!2216227))

(declare-fun b!7087471 () Bool)

(declare-fun e!4260819 () (Set Context!13516))

(declare-fun call!644103 () (Set Context!13516))

(assert (=> b!7087471 (= e!4260819 call!644103)))

(declare-fun b!7087472 () Bool)

(declare-fun e!4260817 () Bool)

(declare-fun nullable!7406 (Regex!17762) Bool)

(assert (=> b!7087472 (= e!4260817 (nullable!7406 (regOne!36036 (regTwo!36037 r!11554))))))

(declare-fun c!1322680 () Bool)

(declare-fun call!644105 () (Set Context!13516))

(declare-fun call!644100 () List!68725)

(declare-fun bm!644095 () Bool)

(assert (=> bm!644095 (= call!644105 (derivationStepZipperDown!2341 (ite c!1322680 (regOne!36037 (regTwo!36037 r!11554)) (regOne!36036 (regTwo!36037 r!11554))) (ite c!1322680 c!9994 (Context!13517 call!644100)) a!1901))))

(declare-fun b!7087473 () Bool)

(declare-fun e!4260815 () (Set Context!13516))

(declare-fun call!644101 () (Set Context!13516))

(assert (=> b!7087473 (= e!4260815 (set.union call!644105 call!644101))))

(declare-fun b!7087474 () Bool)

(declare-fun e!4260818 () (Set Context!13516))

(declare-fun e!4260820 () (Set Context!13516))

(assert (=> b!7087474 (= e!4260818 e!4260820)))

(assert (=> b!7087474 (= c!1322680 (is-Union!17762 (regTwo!36037 r!11554)))))

(declare-fun b!7087475 () Bool)

(assert (=> b!7087475 (= e!4260818 (set.insert c!9994 (as set.empty (Set Context!13516))))))

(declare-fun bm!644096 () Bool)

(assert (=> bm!644096 (= call!644103 call!644101)))

(declare-fun bm!644097 () Bool)

(declare-fun call!644104 () (Set Context!13516))

(assert (=> bm!644097 (= call!644101 call!644104)))

(declare-fun b!7087476 () Bool)

(assert (=> b!7087476 (= e!4260815 e!4260819)))

(declare-fun c!1322678 () Bool)

(assert (=> b!7087476 (= c!1322678 (is-Concat!26607 (regTwo!36037 r!11554)))))

(declare-fun b!7087477 () Bool)

(declare-fun c!1322681 () Bool)

(assert (=> b!7087477 (= c!1322681 (is-Star!17762 (regTwo!36037 r!11554)))))

(declare-fun e!4260816 () (Set Context!13516))

(assert (=> b!7087477 (= e!4260819 e!4260816)))

(declare-fun b!7087478 () Bool)

(assert (=> b!7087478 (= e!4260820 (set.union call!644105 call!644104))))

(declare-fun c!1322677 () Bool)

(declare-fun bm!644098 () Bool)

(declare-fun $colon$colon!2689 (List!68725 Regex!17762) List!68725)

(assert (=> bm!644098 (= call!644100 ($colon$colon!2689 (exprs!7258 c!9994) (ite (or c!1322677 c!1322678) (regTwo!36036 (regTwo!36037 r!11554)) (regTwo!36037 r!11554))))))

(declare-fun b!7087479 () Bool)

(assert (=> b!7087479 (= e!4260816 (as set.empty (Set Context!13516)))))

(declare-fun bm!644099 () Bool)

(declare-fun call!644102 () List!68725)

(assert (=> bm!644099 (= call!644104 (derivationStepZipperDown!2341 (ite c!1322680 (regTwo!36037 (regTwo!36037 r!11554)) (ite c!1322677 (regTwo!36036 (regTwo!36037 r!11554)) (ite c!1322678 (regOne!36036 (regTwo!36037 r!11554)) (reg!18091 (regTwo!36037 r!11554))))) (ite (or c!1322680 c!1322677) c!9994 (Context!13517 call!644102)) a!1901))))

(declare-fun b!7087480 () Bool)

(assert (=> b!7087480 (= e!4260816 call!644103)))

(declare-fun bm!644100 () Bool)

(assert (=> bm!644100 (= call!644102 call!644100)))

(declare-fun b!7087481 () Bool)

(assert (=> b!7087481 (= c!1322677 e!4260817)))

(declare-fun res!2895053 () Bool)

(assert (=> b!7087481 (=> (not res!2895053) (not e!4260817))))

(assert (=> b!7087481 (= res!2895053 (is-Concat!26607 (regTwo!36037 r!11554)))))

(assert (=> b!7087481 (= e!4260820 e!4260815)))

(declare-fun d!2216229 () Bool)

(declare-fun c!1322679 () Bool)

(assert (=> d!2216229 (= c!1322679 (and (is-ElementMatch!17762 (regTwo!36037 r!11554)) (= (c!1322665 (regTwo!36037 r!11554)) a!1901)))))

(assert (=> d!2216229 (= (derivationStepZipperDown!2341 (regTwo!36037 r!11554) c!9994 a!1901) e!4260818)))

(assert (= (and d!2216229 c!1322679) b!7087475))

(assert (= (and d!2216229 (not c!1322679)) b!7087474))

(assert (= (and b!7087474 c!1322680) b!7087478))

(assert (= (and b!7087474 (not c!1322680)) b!7087481))

(assert (= (and b!7087481 res!2895053) b!7087472))

(assert (= (and b!7087481 c!1322677) b!7087473))

(assert (= (and b!7087481 (not c!1322677)) b!7087476))

(assert (= (and b!7087476 c!1322678) b!7087471))

(assert (= (and b!7087476 (not c!1322678)) b!7087477))

(assert (= (and b!7087477 c!1322681) b!7087480))

(assert (= (and b!7087477 (not c!1322681)) b!7087479))

(assert (= (or b!7087471 b!7087480) bm!644100))

(assert (= (or b!7087471 b!7087480) bm!644096))

(assert (= (or b!7087473 bm!644096) bm!644097))

(assert (= (or b!7087473 bm!644100) bm!644098))

(assert (= (or b!7087478 bm!644097) bm!644099))

(assert (= (or b!7087478 b!7087473) bm!644095))

(declare-fun m!7817706 () Bool)

(assert (=> b!7087472 m!7817706))

(declare-fun m!7817708 () Bool)

(assert (=> b!7087475 m!7817708))

(declare-fun m!7817710 () Bool)

(assert (=> bm!644095 m!7817710))

(declare-fun m!7817712 () Bool)

(assert (=> bm!644098 m!7817712))

(declare-fun m!7817714 () Bool)

(assert (=> bm!644099 m!7817714))

(assert (=> b!7087418 d!2216229))

(declare-fun b!7087500 () Bool)

(declare-fun e!4260840 () Bool)

(declare-fun e!4260837 () Bool)

(assert (=> b!7087500 (= e!4260840 e!4260837)))

(declare-fun res!2895066 () Bool)

(assert (=> b!7087500 (= res!2895066 (not (nullable!7406 (reg!18091 (regTwo!36037 r!11554)))))))

(assert (=> b!7087500 (=> (not res!2895066) (not e!4260837))))

(declare-fun b!7087501 () Bool)

(declare-fun e!4260835 () Bool)

(assert (=> b!7087501 (= e!4260840 e!4260835)))

(declare-fun c!1322686 () Bool)

(assert (=> b!7087501 (= c!1322686 (is-Union!17762 (regTwo!36037 r!11554)))))

(declare-fun b!7087502 () Bool)

(declare-fun e!4260839 () Bool)

(assert (=> b!7087502 (= e!4260839 e!4260840)))

(declare-fun c!1322687 () Bool)

(assert (=> b!7087502 (= c!1322687 (is-Star!17762 (regTwo!36037 r!11554)))))

(declare-fun b!7087503 () Bool)

(declare-fun e!4260841 () Bool)

(declare-fun call!644114 () Bool)

(assert (=> b!7087503 (= e!4260841 call!644114)))

(declare-fun bm!644107 () Bool)

(declare-fun call!644112 () Bool)

(assert (=> bm!644107 (= call!644114 call!644112)))

(declare-fun d!2216233 () Bool)

(declare-fun res!2895068 () Bool)

(assert (=> d!2216233 (=> res!2895068 e!4260839)))

(assert (=> d!2216233 (= res!2895068 (is-ElementMatch!17762 (regTwo!36037 r!11554)))))

(assert (=> d!2216233 (= (validRegex!9037 (regTwo!36037 r!11554)) e!4260839)))

(declare-fun bm!644108 () Bool)

(assert (=> bm!644108 (= call!644112 (validRegex!9037 (ite c!1322687 (reg!18091 (regTwo!36037 r!11554)) (ite c!1322686 (regTwo!36037 (regTwo!36037 r!11554)) (regOne!36036 (regTwo!36037 r!11554))))))))

(declare-fun bm!644109 () Bool)

(declare-fun call!644113 () Bool)

(assert (=> bm!644109 (= call!644113 (validRegex!9037 (ite c!1322686 (regOne!36037 (regTwo!36037 r!11554)) (regTwo!36036 (regTwo!36037 r!11554)))))))

(declare-fun b!7087504 () Bool)

(assert (=> b!7087504 (= e!4260837 call!644112)))

(declare-fun b!7087505 () Bool)

(declare-fun e!4260836 () Bool)

(assert (=> b!7087505 (= e!4260836 call!644113)))

(declare-fun b!7087506 () Bool)

(declare-fun res!2895064 () Bool)

(declare-fun e!4260838 () Bool)

(assert (=> b!7087506 (=> res!2895064 e!4260838)))

(assert (=> b!7087506 (= res!2895064 (not (is-Concat!26607 (regTwo!36037 r!11554))))))

(assert (=> b!7087506 (= e!4260835 e!4260838)))

(declare-fun b!7087507 () Bool)

(declare-fun res!2895067 () Bool)

(assert (=> b!7087507 (=> (not res!2895067) (not e!4260841))))

(assert (=> b!7087507 (= res!2895067 call!644113)))

(assert (=> b!7087507 (= e!4260835 e!4260841)))

(declare-fun b!7087508 () Bool)

(assert (=> b!7087508 (= e!4260838 e!4260836)))

(declare-fun res!2895065 () Bool)

(assert (=> b!7087508 (=> (not res!2895065) (not e!4260836))))

(assert (=> b!7087508 (= res!2895065 call!644114)))

(assert (= (and d!2216233 (not res!2895068)) b!7087502))

(assert (= (and b!7087502 c!1322687) b!7087500))

(assert (= (and b!7087502 (not c!1322687)) b!7087501))

(assert (= (and b!7087500 res!2895066) b!7087504))

(assert (= (and b!7087501 c!1322686) b!7087507))

(assert (= (and b!7087501 (not c!1322686)) b!7087506))

(assert (= (and b!7087507 res!2895067) b!7087503))

(assert (= (and b!7087506 (not res!2895064)) b!7087508))

(assert (= (and b!7087508 res!2895065) b!7087505))

(assert (= (or b!7087507 b!7087505) bm!644109))

(assert (= (or b!7087503 b!7087508) bm!644107))

(assert (= (or b!7087504 bm!644107) bm!644108))

(declare-fun m!7817722 () Bool)

(assert (=> b!7087500 m!7817722))

(declare-fun m!7817724 () Bool)

(assert (=> bm!644108 m!7817724))

(declare-fun m!7817726 () Bool)

(assert (=> bm!644109 m!7817726))

(assert (=> b!7087418 d!2216233))

(declare-fun d!2216237 () Bool)

(assert (=> d!2216237 true))

(declare-fun lambda!429268 () Int)

(declare-fun map!16112 ((Set Context!13516) Int) (Set Context!13516))

(assert (=> d!2216237 (= (appendTo!851 (derivationStepZipperDown!2341 (regOne!36037 r!11554) c!9994 a!1901) auxCtx!45) (map!16112 (derivationStepZipperDown!2341 (regOne!36037 r!11554) c!9994 a!1901) lambda!429268))))

(declare-fun bs!1883065 () Bool)

(assert (= bs!1883065 d!2216237))

(assert (=> bs!1883065 m!7817652))

(declare-fun m!7817728 () Bool)

(assert (=> bs!1883065 m!7817728))

(assert (=> b!7087418 d!2216237))

(declare-fun bs!1883066 () Bool)

(declare-fun d!2216239 () Bool)

(assert (= bs!1883066 (and d!2216239 b!7087415)))

(declare-fun lambda!429271 () Int)

(assert (=> bs!1883066 (= lambda!429271 lambda!429252)))

(assert (=> d!2216239 (= (derivationStepZipperDown!2341 (regTwo!36037 r!11554) (Context!13517 (++!15935 (exprs!7258 c!9994) (exprs!7258 auxCtx!45))) a!1901) (appendTo!851 (derivationStepZipperDown!2341 (regTwo!36037 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554940 () Unit!162223)

(assert (=> d!2216239 (= lt!2554940 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429271))))

(declare-fun lt!2554939 () Unit!162223)

(declare-fun choose!54623 (Context!13516 Regex!17762 C!35794 Context!13516) Unit!162223)

(assert (=> d!2216239 (= lt!2554939 (choose!54623 c!9994 (regTwo!36037 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216239 (validRegex!9037 (regTwo!36037 r!11554))))

(assert (=> d!2216239 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!159 c!9994 (regTwo!36037 r!11554) a!1901 auxCtx!45) lt!2554939)))

(declare-fun bs!1883067 () Bool)

(assert (= bs!1883067 d!2216239))

(declare-fun m!7817730 () Bool)

(assert (=> bs!1883067 m!7817730))

(assert (=> bs!1883067 m!7817658))

(declare-fun m!7817732 () Bool)

(assert (=> bs!1883067 m!7817732))

(assert (=> bs!1883067 m!7817650))

(assert (=> bs!1883067 m!7817660))

(assert (=> bs!1883067 m!7817650))

(assert (=> bs!1883067 m!7817646))

(declare-fun m!7817734 () Bool)

(assert (=> bs!1883067 m!7817734))

(assert (=> b!7087418 d!2216239))

(declare-fun b!7087533 () Bool)

(declare-fun e!4260858 () (Set Context!13516))

(declare-fun call!644130 () (Set Context!13516))

(assert (=> b!7087533 (= e!4260858 call!644130)))

(declare-fun b!7087534 () Bool)

(declare-fun e!4260856 () Bool)

(assert (=> b!7087534 (= e!4260856 (nullable!7406 (regOne!36036 (regOne!36037 r!11554))))))

(declare-fun bm!644122 () Bool)

(declare-fun c!1322703 () Bool)

(declare-fun call!644127 () List!68725)

(declare-fun call!644132 () (Set Context!13516))

(assert (=> bm!644122 (= call!644132 (derivationStepZipperDown!2341 (ite c!1322703 (regOne!36037 (regOne!36037 r!11554)) (regOne!36036 (regOne!36037 r!11554))) (ite c!1322703 c!9994 (Context!13517 call!644127)) a!1901))))

(declare-fun b!7087535 () Bool)

(declare-fun e!4260854 () (Set Context!13516))

(declare-fun call!644128 () (Set Context!13516))

(assert (=> b!7087535 (= e!4260854 (set.union call!644132 call!644128))))

(declare-fun b!7087536 () Bool)

(declare-fun e!4260857 () (Set Context!13516))

(declare-fun e!4260859 () (Set Context!13516))

(assert (=> b!7087536 (= e!4260857 e!4260859)))

(assert (=> b!7087536 (= c!1322703 (is-Union!17762 (regOne!36037 r!11554)))))

(declare-fun b!7087537 () Bool)

(assert (=> b!7087537 (= e!4260857 (set.insert c!9994 (as set.empty (Set Context!13516))))))

(declare-fun bm!644123 () Bool)

(assert (=> bm!644123 (= call!644130 call!644128)))

(declare-fun bm!644124 () Bool)

(declare-fun call!644131 () (Set Context!13516))

(assert (=> bm!644124 (= call!644128 call!644131)))

(declare-fun b!7087538 () Bool)

(assert (=> b!7087538 (= e!4260854 e!4260858)))

(declare-fun c!1322701 () Bool)

(assert (=> b!7087538 (= c!1322701 (is-Concat!26607 (regOne!36037 r!11554)))))

(declare-fun b!7087539 () Bool)

(declare-fun c!1322704 () Bool)

(assert (=> b!7087539 (= c!1322704 (is-Star!17762 (regOne!36037 r!11554)))))

(declare-fun e!4260855 () (Set Context!13516))

(assert (=> b!7087539 (= e!4260858 e!4260855)))

(declare-fun b!7087540 () Bool)

(assert (=> b!7087540 (= e!4260859 (set.union call!644132 call!644131))))

(declare-fun c!1322700 () Bool)

(declare-fun bm!644125 () Bool)

(assert (=> bm!644125 (= call!644127 ($colon$colon!2689 (exprs!7258 c!9994) (ite (or c!1322700 c!1322701) (regTwo!36036 (regOne!36037 r!11554)) (regOne!36037 r!11554))))))

(declare-fun b!7087541 () Bool)

(assert (=> b!7087541 (= e!4260855 (as set.empty (Set Context!13516)))))

(declare-fun bm!644126 () Bool)

(declare-fun call!644129 () List!68725)

(assert (=> bm!644126 (= call!644131 (derivationStepZipperDown!2341 (ite c!1322703 (regTwo!36037 (regOne!36037 r!11554)) (ite c!1322700 (regTwo!36036 (regOne!36037 r!11554)) (ite c!1322701 (regOne!36036 (regOne!36037 r!11554)) (reg!18091 (regOne!36037 r!11554))))) (ite (or c!1322703 c!1322700) c!9994 (Context!13517 call!644129)) a!1901))))

(declare-fun b!7087542 () Bool)

(assert (=> b!7087542 (= e!4260855 call!644130)))

(declare-fun bm!644127 () Bool)

(assert (=> bm!644127 (= call!644129 call!644127)))

(declare-fun b!7087543 () Bool)

(assert (=> b!7087543 (= c!1322700 e!4260856)))

(declare-fun res!2895071 () Bool)

(assert (=> b!7087543 (=> (not res!2895071) (not e!4260856))))

(assert (=> b!7087543 (= res!2895071 (is-Concat!26607 (regOne!36037 r!11554)))))

(assert (=> b!7087543 (= e!4260859 e!4260854)))

(declare-fun d!2216241 () Bool)

(declare-fun c!1322702 () Bool)

(assert (=> d!2216241 (= c!1322702 (and (is-ElementMatch!17762 (regOne!36037 r!11554)) (= (c!1322665 (regOne!36037 r!11554)) a!1901)))))

(assert (=> d!2216241 (= (derivationStepZipperDown!2341 (regOne!36037 r!11554) c!9994 a!1901) e!4260857)))

(assert (= (and d!2216241 c!1322702) b!7087537))

(assert (= (and d!2216241 (not c!1322702)) b!7087536))

(assert (= (and b!7087536 c!1322703) b!7087540))

(assert (= (and b!7087536 (not c!1322703)) b!7087543))

(assert (= (and b!7087543 res!2895071) b!7087534))

(assert (= (and b!7087543 c!1322700) b!7087535))

(assert (= (and b!7087543 (not c!1322700)) b!7087538))

(assert (= (and b!7087538 c!1322701) b!7087533))

(assert (= (and b!7087538 (not c!1322701)) b!7087539))

(assert (= (and b!7087539 c!1322704) b!7087542))

(assert (= (and b!7087539 (not c!1322704)) b!7087541))

(assert (= (or b!7087533 b!7087542) bm!644127))

(assert (= (or b!7087533 b!7087542) bm!644123))

(assert (= (or b!7087535 bm!644123) bm!644124))

(assert (= (or b!7087535 bm!644127) bm!644125))

(assert (= (or b!7087540 bm!644124) bm!644126))

(assert (= (or b!7087540 b!7087535) bm!644122))

(declare-fun m!7817736 () Bool)

(assert (=> b!7087534 m!7817736))

(assert (=> b!7087537 m!7817708))

(declare-fun m!7817738 () Bool)

(assert (=> bm!644122 m!7817738))

(declare-fun m!7817740 () Bool)

(assert (=> bm!644125 m!7817740))

(declare-fun m!7817742 () Bool)

(assert (=> bm!644126 m!7817742))

(assert (=> b!7087418 d!2216241))

(declare-fun bs!1883068 () Bool)

(declare-fun d!2216243 () Bool)

(assert (= bs!1883068 (and d!2216243 d!2216237)))

(declare-fun lambda!429272 () Int)

(assert (=> bs!1883068 (= lambda!429272 lambda!429268)))

(assert (=> d!2216243 true))

(assert (=> d!2216243 (= (appendTo!851 (derivationStepZipperDown!2341 (regTwo!36037 r!11554) c!9994 a!1901) auxCtx!45) (map!16112 (derivationStepZipperDown!2341 (regTwo!36037 r!11554) c!9994 a!1901) lambda!429272))))

(declare-fun bs!1883069 () Bool)

(assert (= bs!1883069 d!2216243))

(assert (=> bs!1883069 m!7817650))

(declare-fun m!7817744 () Bool)

(assert (=> bs!1883069 m!7817744))

(assert (=> b!7087418 d!2216243))

(declare-fun bs!1883070 () Bool)

(declare-fun d!2216245 () Bool)

(assert (= bs!1883070 (and d!2216245 b!7087415)))

(declare-fun lambda!429273 () Int)

(assert (=> bs!1883070 (= lambda!429273 lambda!429252)))

(declare-fun bs!1883071 () Bool)

(assert (= bs!1883071 (and d!2216245 d!2216239)))

(assert (=> bs!1883071 (= lambda!429273 lambda!429271)))

(assert (=> d!2216245 (= (derivationStepZipperDown!2341 (regOne!36037 r!11554) (Context!13517 (++!15935 (exprs!7258 c!9994) (exprs!7258 auxCtx!45))) a!1901) (appendTo!851 (derivationStepZipperDown!2341 (regOne!36037 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554942 () Unit!162223)

(assert (=> d!2216245 (= lt!2554942 (lemmaConcatPreservesForall!1065 (exprs!7258 c!9994) (exprs!7258 auxCtx!45) lambda!429273))))

(declare-fun lt!2554941 () Unit!162223)

(assert (=> d!2216245 (= lt!2554941 (choose!54623 c!9994 (regOne!36037 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216245 (validRegex!9037 (regOne!36037 r!11554))))

(assert (=> d!2216245 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!159 c!9994 (regOne!36037 r!11554) a!1901 auxCtx!45) lt!2554941)))

(declare-fun bs!1883072 () Bool)

(assert (= bs!1883072 d!2216245))

(declare-fun m!7817746 () Bool)

(assert (=> bs!1883072 m!7817746))

(declare-fun m!7817748 () Bool)

(assert (=> bs!1883072 m!7817748))

(declare-fun m!7817750 () Bool)

(assert (=> bs!1883072 m!7817750))

(assert (=> bs!1883072 m!7817652))

(assert (=> bs!1883072 m!7817654))

(assert (=> bs!1883072 m!7817652))

(assert (=> bs!1883072 m!7817646))

(declare-fun m!7817752 () Bool)

(assert (=> bs!1883072 m!7817752))

(assert (=> b!7087418 d!2216245))

(declare-fun b!7087544 () Bool)

(declare-fun e!4260865 () Bool)

(declare-fun e!4260862 () Bool)

(assert (=> b!7087544 (= e!4260865 e!4260862)))

(declare-fun res!2895074 () Bool)

(assert (=> b!7087544 (= res!2895074 (not (nullable!7406 (reg!18091 r!11554))))))

(assert (=> b!7087544 (=> (not res!2895074) (not e!4260862))))

(declare-fun b!7087545 () Bool)

(declare-fun e!4260860 () Bool)

(assert (=> b!7087545 (= e!4260865 e!4260860)))

(declare-fun c!1322705 () Bool)

(assert (=> b!7087545 (= c!1322705 (is-Union!17762 r!11554))))

(declare-fun b!7087546 () Bool)

(declare-fun e!4260864 () Bool)

(assert (=> b!7087546 (= e!4260864 e!4260865)))

(declare-fun c!1322706 () Bool)

(assert (=> b!7087546 (= c!1322706 (is-Star!17762 r!11554))))

(declare-fun b!7087547 () Bool)

(declare-fun e!4260866 () Bool)

(declare-fun call!644135 () Bool)

(assert (=> b!7087547 (= e!4260866 call!644135)))

(declare-fun bm!644128 () Bool)

(declare-fun call!644133 () Bool)

(assert (=> bm!644128 (= call!644135 call!644133)))

(declare-fun d!2216247 () Bool)

(declare-fun res!2895076 () Bool)

(assert (=> d!2216247 (=> res!2895076 e!4260864)))

(assert (=> d!2216247 (= res!2895076 (is-ElementMatch!17762 r!11554))))

(assert (=> d!2216247 (= (validRegex!9037 r!11554) e!4260864)))

(declare-fun bm!644129 () Bool)

(assert (=> bm!644129 (= call!644133 (validRegex!9037 (ite c!1322706 (reg!18091 r!11554) (ite c!1322705 (regTwo!36037 r!11554) (regOne!36036 r!11554)))))))

(declare-fun bm!644130 () Bool)

(declare-fun call!644134 () Bool)

(assert (=> bm!644130 (= call!644134 (validRegex!9037 (ite c!1322705 (regOne!36037 r!11554) (regTwo!36036 r!11554))))))

(declare-fun b!7087548 () Bool)

(assert (=> b!7087548 (= e!4260862 call!644133)))

(declare-fun b!7087549 () Bool)

(declare-fun e!4260861 () Bool)

(assert (=> b!7087549 (= e!4260861 call!644134)))

(declare-fun b!7087550 () Bool)

(declare-fun res!2895072 () Bool)

(declare-fun e!4260863 () Bool)

(assert (=> b!7087550 (=> res!2895072 e!4260863)))

(assert (=> b!7087550 (= res!2895072 (not (is-Concat!26607 r!11554)))))

(assert (=> b!7087550 (= e!4260860 e!4260863)))

(declare-fun b!7087551 () Bool)

(declare-fun res!2895075 () Bool)

(assert (=> b!7087551 (=> (not res!2895075) (not e!4260866))))

(assert (=> b!7087551 (= res!2895075 call!644134)))

(assert (=> b!7087551 (= e!4260860 e!4260866)))

(declare-fun b!7087552 () Bool)

(assert (=> b!7087552 (= e!4260863 e!4260861)))

(declare-fun res!2895073 () Bool)

(assert (=> b!7087552 (=> (not res!2895073) (not e!4260861))))

(assert (=> b!7087552 (= res!2895073 call!644135)))

(assert (= (and d!2216247 (not res!2895076)) b!7087546))

(assert (= (and b!7087546 c!1322706) b!7087544))

(assert (= (and b!7087546 (not c!1322706)) b!7087545))

(assert (= (and b!7087544 res!2895074) b!7087548))

(assert (= (and b!7087545 c!1322705) b!7087551))

(assert (= (and b!7087545 (not c!1322705)) b!7087550))

(assert (= (and b!7087551 res!2895075) b!7087547))

(assert (= (and b!7087550 (not res!2895072)) b!7087552))

(assert (= (and b!7087552 res!2895073) b!7087549))

(assert (= (or b!7087551 b!7087549) bm!644130))

(assert (= (or b!7087547 b!7087552) bm!644128))

(assert (= (or b!7087548 bm!644128) bm!644129))

(declare-fun m!7817754 () Bool)

(assert (=> b!7087544 m!7817754))

(declare-fun m!7817756 () Bool)

(assert (=> bm!644129 m!7817756))

(declare-fun m!7817758 () Bool)

(assert (=> bm!644130 m!7817758))

(assert (=> start!689842 d!2216247))

(declare-fun bs!1883073 () Bool)

(declare-fun d!2216249 () Bool)

(assert (= bs!1883073 (and d!2216249 b!7087415)))

(declare-fun lambda!429276 () Int)

(assert (=> bs!1883073 (= lambda!429276 lambda!429252)))

(declare-fun bs!1883074 () Bool)

(assert (= bs!1883074 (and d!2216249 d!2216239)))

(assert (=> bs!1883074 (= lambda!429276 lambda!429271)))

(declare-fun bs!1883075 () Bool)

(assert (= bs!1883075 (and d!2216249 d!2216245)))

(assert (=> bs!1883075 (= lambda!429276 lambda!429273)))

(assert (=> d!2216249 (= (inv!87271 c!9994) (forall!16706 (exprs!7258 c!9994) lambda!429276))))

(declare-fun bs!1883076 () Bool)

(assert (= bs!1883076 d!2216249))

(declare-fun m!7817760 () Bool)

(assert (=> bs!1883076 m!7817760))

(assert (=> start!689842 d!2216249))

(declare-fun bs!1883077 () Bool)

(declare-fun d!2216251 () Bool)

(assert (= bs!1883077 (and d!2216251 b!7087415)))

(declare-fun lambda!429277 () Int)

(assert (=> bs!1883077 (= lambda!429277 lambda!429252)))

(declare-fun bs!1883078 () Bool)

(assert (= bs!1883078 (and d!2216251 d!2216239)))

(assert (=> bs!1883078 (= lambda!429277 lambda!429271)))

(declare-fun bs!1883079 () Bool)

(assert (= bs!1883079 (and d!2216251 d!2216245)))

(assert (=> bs!1883079 (= lambda!429277 lambda!429273)))

(declare-fun bs!1883080 () Bool)

(assert (= bs!1883080 (and d!2216251 d!2216249)))

(assert (=> bs!1883080 (= lambda!429277 lambda!429276)))

(assert (=> d!2216251 (= (inv!87271 auxCtx!45) (forall!16706 (exprs!7258 auxCtx!45) lambda!429277))))

(declare-fun bs!1883081 () Bool)

(assert (= bs!1883081 d!2216251))

(declare-fun m!7817762 () Bool)

(assert (=> bs!1883081 m!7817762))

(assert (=> start!689842 d!2216251))

(assert (=> b!7087415 d!2216227))

(declare-fun b!7087564 () Bool)

(declare-fun e!4260877 () (Set Context!13516))

(declare-fun call!644145 () (Set Context!13516))

(assert (=> b!7087564 (= e!4260877 call!644145)))

(declare-fun b!7087565 () Bool)

(declare-fun e!4260875 () Bool)

(assert (=> b!7087565 (= e!4260875 (nullable!7406 (regOne!36036 (regOne!36037 r!11554))))))

(declare-fun call!644142 () List!68725)

(declare-fun bm!644137 () Bool)

(declare-fun call!644147 () (Set Context!13516))

(declare-fun c!1322715 () Bool)

(assert (=> bm!644137 (= call!644147 (derivationStepZipperDown!2341 (ite c!1322715 (regOne!36037 (regOne!36037 r!11554)) (regOne!36036 (regOne!36037 r!11554))) (ite c!1322715 lt!2554889 (Context!13517 call!644142)) a!1901))))

(declare-fun b!7087566 () Bool)

(declare-fun e!4260873 () (Set Context!13516))

(declare-fun call!644143 () (Set Context!13516))

(assert (=> b!7087566 (= e!4260873 (set.union call!644147 call!644143))))

(declare-fun b!7087567 () Bool)

(declare-fun e!4260876 () (Set Context!13516))

(declare-fun e!4260878 () (Set Context!13516))

(assert (=> b!7087567 (= e!4260876 e!4260878)))

(assert (=> b!7087567 (= c!1322715 (is-Union!17762 (regOne!36037 r!11554)))))

(declare-fun b!7087568 () Bool)

(assert (=> b!7087568 (= e!4260876 (set.insert lt!2554889 (as set.empty (Set Context!13516))))))

(declare-fun bm!644138 () Bool)

(assert (=> bm!644138 (= call!644145 call!644143)))

(declare-fun bm!644139 () Bool)

(declare-fun call!644146 () (Set Context!13516))

(assert (=> bm!644139 (= call!644143 call!644146)))

(declare-fun b!7087569 () Bool)

(assert (=> b!7087569 (= e!4260873 e!4260877)))

(declare-fun c!1322713 () Bool)

(assert (=> b!7087569 (= c!1322713 (is-Concat!26607 (regOne!36037 r!11554)))))

(declare-fun b!7087570 () Bool)

(declare-fun c!1322716 () Bool)

(assert (=> b!7087570 (= c!1322716 (is-Star!17762 (regOne!36037 r!11554)))))

(declare-fun e!4260874 () (Set Context!13516))

(assert (=> b!7087570 (= e!4260877 e!4260874)))

(declare-fun b!7087571 () Bool)

(assert (=> b!7087571 (= e!4260878 (set.union call!644147 call!644146))))

(declare-fun c!1322712 () Bool)

(declare-fun bm!644140 () Bool)

(assert (=> bm!644140 (= call!644142 ($colon$colon!2689 (exprs!7258 lt!2554889) (ite (or c!1322712 c!1322713) (regTwo!36036 (regOne!36037 r!11554)) (regOne!36037 r!11554))))))

(declare-fun b!7087572 () Bool)

(assert (=> b!7087572 (= e!4260874 (as set.empty (Set Context!13516)))))

(declare-fun bm!644141 () Bool)

(declare-fun call!644144 () List!68725)

(assert (=> bm!644141 (= call!644146 (derivationStepZipperDown!2341 (ite c!1322715 (regTwo!36037 (regOne!36037 r!11554)) (ite c!1322712 (regTwo!36036 (regOne!36037 r!11554)) (ite c!1322713 (regOne!36036 (regOne!36037 r!11554)) (reg!18091 (regOne!36037 r!11554))))) (ite (or c!1322715 c!1322712) lt!2554889 (Context!13517 call!644144)) a!1901))))

(declare-fun b!7087573 () Bool)

(assert (=> b!7087573 (= e!4260874 call!644145)))

(declare-fun bm!644142 () Bool)

(assert (=> bm!644142 (= call!644144 call!644142)))

(declare-fun b!7087574 () Bool)

(assert (=> b!7087574 (= c!1322712 e!4260875)))

(declare-fun res!2895078 () Bool)

(assert (=> b!7087574 (=> (not res!2895078) (not e!4260875))))

(assert (=> b!7087574 (= res!2895078 (is-Concat!26607 (regOne!36037 r!11554)))))

(assert (=> b!7087574 (= e!4260878 e!4260873)))

(declare-fun d!2216253 () Bool)

(declare-fun c!1322714 () Bool)

(assert (=> d!2216253 (= c!1322714 (and (is-ElementMatch!17762 (regOne!36037 r!11554)) (= (c!1322665 (regOne!36037 r!11554)) a!1901)))))

(assert (=> d!2216253 (= (derivationStepZipperDown!2341 (regOne!36037 r!11554) lt!2554889 a!1901) e!4260876)))

(assert (= (and d!2216253 c!1322714) b!7087568))

(assert (= (and d!2216253 (not c!1322714)) b!7087567))

(assert (= (and b!7087567 c!1322715) b!7087571))

(assert (= (and b!7087567 (not c!1322715)) b!7087574))

(assert (= (and b!7087574 res!2895078) b!7087565))

(assert (= (and b!7087574 c!1322712) b!7087566))

(assert (= (and b!7087574 (not c!1322712)) b!7087569))

(assert (= (and b!7087569 c!1322713) b!7087564))

(assert (= (and b!7087569 (not c!1322713)) b!7087570))

(assert (= (and b!7087570 c!1322716) b!7087573))

(assert (= (and b!7087570 (not c!1322716)) b!7087572))

(assert (= (or b!7087564 b!7087573) bm!644142))

(assert (= (or b!7087564 b!7087573) bm!644138))

(assert (= (or b!7087566 bm!644138) bm!644139))

(assert (= (or b!7087566 bm!644142) bm!644140))

(assert (= (or b!7087571 bm!644139) bm!644141))

(assert (= (or b!7087571 b!7087566) bm!644137))

(assert (=> b!7087565 m!7817736))

(declare-fun m!7817764 () Bool)

(assert (=> b!7087568 m!7817764))

(declare-fun m!7817766 () Bool)

(assert (=> bm!644137 m!7817766))

(declare-fun m!7817768 () Bool)

(assert (=> bm!644140 m!7817768))

(declare-fun m!7817770 () Bool)

(assert (=> bm!644141 m!7817770))

(assert (=> b!7087415 d!2216253))

(declare-fun b!7087575 () Bool)

(declare-fun e!4260883 () (Set Context!13516))

(declare-fun call!644151 () (Set Context!13516))

(assert (=> b!7087575 (= e!4260883 call!644151)))

(declare-fun b!7087576 () Bool)

(declare-fun e!4260881 () Bool)

(assert (=> b!7087576 (= e!4260881 (nullable!7406 (regOne!36036 r!11554)))))

(declare-fun c!1322720 () Bool)

(declare-fun bm!644143 () Bool)

(declare-fun call!644148 () List!68725)

(declare-fun call!644153 () (Set Context!13516))

(assert (=> bm!644143 (= call!644153 (derivationStepZipperDown!2341 (ite c!1322720 (regOne!36037 r!11554) (regOne!36036 r!11554)) (ite c!1322720 lt!2554889 (Context!13517 call!644148)) a!1901))))

(declare-fun b!7087577 () Bool)

(declare-fun e!4260879 () (Set Context!13516))

(declare-fun call!644149 () (Set Context!13516))

(assert (=> b!7087577 (= e!4260879 (set.union call!644153 call!644149))))

(declare-fun b!7087578 () Bool)

(declare-fun e!4260882 () (Set Context!13516))

(declare-fun e!4260884 () (Set Context!13516))

(assert (=> b!7087578 (= e!4260882 e!4260884)))

(assert (=> b!7087578 (= c!1322720 (is-Union!17762 r!11554))))

(declare-fun b!7087579 () Bool)

(assert (=> b!7087579 (= e!4260882 (set.insert lt!2554889 (as set.empty (Set Context!13516))))))

(declare-fun bm!644144 () Bool)

(assert (=> bm!644144 (= call!644151 call!644149)))

(declare-fun bm!644145 () Bool)

(declare-fun call!644152 () (Set Context!13516))

(assert (=> bm!644145 (= call!644149 call!644152)))

(declare-fun b!7087580 () Bool)

(assert (=> b!7087580 (= e!4260879 e!4260883)))

(declare-fun c!1322718 () Bool)

(assert (=> b!7087580 (= c!1322718 (is-Concat!26607 r!11554))))

(declare-fun b!7087581 () Bool)

(declare-fun c!1322721 () Bool)

(assert (=> b!7087581 (= c!1322721 (is-Star!17762 r!11554))))

(declare-fun e!4260880 () (Set Context!13516))

(assert (=> b!7087581 (= e!4260883 e!4260880)))

(declare-fun b!7087582 () Bool)

(assert (=> b!7087582 (= e!4260884 (set.union call!644153 call!644152))))

(declare-fun bm!644146 () Bool)

(declare-fun c!1322717 () Bool)

(assert (=> bm!644146 (= call!644148 ($colon$colon!2689 (exprs!7258 lt!2554889) (ite (or c!1322717 c!1322718) (regTwo!36036 r!11554) r!11554)))))

(declare-fun b!7087583 () Bool)

(assert (=> b!7087583 (= e!4260880 (as set.empty (Set Context!13516)))))

(declare-fun call!644150 () List!68725)

(declare-fun bm!644147 () Bool)

(assert (=> bm!644147 (= call!644152 (derivationStepZipperDown!2341 (ite c!1322720 (regTwo!36037 r!11554) (ite c!1322717 (regTwo!36036 r!11554) (ite c!1322718 (regOne!36036 r!11554) (reg!18091 r!11554)))) (ite (or c!1322720 c!1322717) lt!2554889 (Context!13517 call!644150)) a!1901))))

(declare-fun b!7087584 () Bool)

(assert (=> b!7087584 (= e!4260880 call!644151)))

(declare-fun bm!644148 () Bool)

(assert (=> bm!644148 (= call!644150 call!644148)))

(declare-fun b!7087585 () Bool)

(assert (=> b!7087585 (= c!1322717 e!4260881)))

(declare-fun res!2895079 () Bool)

(assert (=> b!7087585 (=> (not res!2895079) (not e!4260881))))

(assert (=> b!7087585 (= res!2895079 (is-Concat!26607 r!11554))))

(assert (=> b!7087585 (= e!4260884 e!4260879)))

(declare-fun d!2216255 () Bool)

(declare-fun c!1322719 () Bool)

(assert (=> d!2216255 (= c!1322719 (and (is-ElementMatch!17762 r!11554) (= (c!1322665 r!11554) a!1901)))))

(assert (=> d!2216255 (= (derivationStepZipperDown!2341 r!11554 lt!2554889 a!1901) e!4260882)))

(assert (= (and d!2216255 c!1322719) b!7087579))

(assert (= (and d!2216255 (not c!1322719)) b!7087578))

(assert (= (and b!7087578 c!1322720) b!7087582))

(assert (= (and b!7087578 (not c!1322720)) b!7087585))

(assert (= (and b!7087585 res!2895079) b!7087576))

(assert (= (and b!7087585 c!1322717) b!7087577))

(assert (= (and b!7087585 (not c!1322717)) b!7087580))

(assert (= (and b!7087580 c!1322718) b!7087575))

(assert (= (and b!7087580 (not c!1322718)) b!7087581))

(assert (= (and b!7087581 c!1322721) b!7087584))

(assert (= (and b!7087581 (not c!1322721)) b!7087583))

(assert (= (or b!7087575 b!7087584) bm!644148))

(assert (= (or b!7087575 b!7087584) bm!644144))

(assert (= (or b!7087577 bm!644144) bm!644145))

(assert (= (or b!7087577 bm!644148) bm!644146))

(assert (= (or b!7087582 bm!644145) bm!644147))

(assert (= (or b!7087582 b!7087577) bm!644143))

(declare-fun m!7817782 () Bool)

(assert (=> b!7087576 m!7817782))

(assert (=> b!7087579 m!7817764))

(declare-fun m!7817784 () Bool)

(assert (=> bm!644143 m!7817784))

(declare-fun m!7817786 () Bool)

(assert (=> bm!644146 m!7817786))

(declare-fun m!7817788 () Bool)

(assert (=> bm!644147 m!7817788))

(assert (=> b!7087415 d!2216255))

(declare-fun b!7087586 () Bool)

(declare-fun e!4260889 () (Set Context!13516))

(declare-fun call!644157 () (Set Context!13516))

(assert (=> b!7087586 (= e!4260889 call!644157)))

(declare-fun b!7087587 () Bool)

(declare-fun e!4260887 () Bool)

(assert (=> b!7087587 (= e!4260887 (nullable!7406 (regOne!36036 (regTwo!36037 r!11554))))))

(declare-fun bm!644149 () Bool)

(declare-fun call!644154 () List!68725)

(declare-fun c!1322725 () Bool)

(declare-fun call!644159 () (Set Context!13516))

(assert (=> bm!644149 (= call!644159 (derivationStepZipperDown!2341 (ite c!1322725 (regOne!36037 (regTwo!36037 r!11554)) (regOne!36036 (regTwo!36037 r!11554))) (ite c!1322725 lt!2554889 (Context!13517 call!644154)) a!1901))))

(declare-fun b!7087588 () Bool)

(declare-fun e!4260885 () (Set Context!13516))

(declare-fun call!644155 () (Set Context!13516))

(assert (=> b!7087588 (= e!4260885 (set.union call!644159 call!644155))))

(declare-fun b!7087589 () Bool)

(declare-fun e!4260888 () (Set Context!13516))

(declare-fun e!4260890 () (Set Context!13516))

(assert (=> b!7087589 (= e!4260888 e!4260890)))

(assert (=> b!7087589 (= c!1322725 (is-Union!17762 (regTwo!36037 r!11554)))))

(declare-fun b!7087590 () Bool)

(assert (=> b!7087590 (= e!4260888 (set.insert lt!2554889 (as set.empty (Set Context!13516))))))

(declare-fun bm!644150 () Bool)

(assert (=> bm!644150 (= call!644157 call!644155)))

(declare-fun bm!644151 () Bool)

(declare-fun call!644158 () (Set Context!13516))

(assert (=> bm!644151 (= call!644155 call!644158)))

(declare-fun b!7087591 () Bool)

(assert (=> b!7087591 (= e!4260885 e!4260889)))

(declare-fun c!1322723 () Bool)

(assert (=> b!7087591 (= c!1322723 (is-Concat!26607 (regTwo!36037 r!11554)))))

(declare-fun b!7087592 () Bool)

(declare-fun c!1322726 () Bool)

(assert (=> b!7087592 (= c!1322726 (is-Star!17762 (regTwo!36037 r!11554)))))

(declare-fun e!4260886 () (Set Context!13516))

(assert (=> b!7087592 (= e!4260889 e!4260886)))

(declare-fun b!7087593 () Bool)

(assert (=> b!7087593 (= e!4260890 (set.union call!644159 call!644158))))

(declare-fun c!1322722 () Bool)

(declare-fun bm!644152 () Bool)

(assert (=> bm!644152 (= call!644154 ($colon$colon!2689 (exprs!7258 lt!2554889) (ite (or c!1322722 c!1322723) (regTwo!36036 (regTwo!36037 r!11554)) (regTwo!36037 r!11554))))))

(declare-fun b!7087594 () Bool)

(assert (=> b!7087594 (= e!4260886 (as set.empty (Set Context!13516)))))

(declare-fun call!644156 () List!68725)

(declare-fun bm!644153 () Bool)

(assert (=> bm!644153 (= call!644158 (derivationStepZipperDown!2341 (ite c!1322725 (regTwo!36037 (regTwo!36037 r!11554)) (ite c!1322722 (regTwo!36036 (regTwo!36037 r!11554)) (ite c!1322723 (regOne!36036 (regTwo!36037 r!11554)) (reg!18091 (regTwo!36037 r!11554))))) (ite (or c!1322725 c!1322722) lt!2554889 (Context!13517 call!644156)) a!1901))))

(declare-fun b!7087595 () Bool)

(assert (=> b!7087595 (= e!4260886 call!644157)))

(declare-fun bm!644154 () Bool)

(assert (=> bm!644154 (= call!644156 call!644154)))

(declare-fun b!7087596 () Bool)

(assert (=> b!7087596 (= c!1322722 e!4260887)))

(declare-fun res!2895080 () Bool)

(assert (=> b!7087596 (=> (not res!2895080) (not e!4260887))))

(assert (=> b!7087596 (= res!2895080 (is-Concat!26607 (regTwo!36037 r!11554)))))

(assert (=> b!7087596 (= e!4260890 e!4260885)))

(declare-fun d!2216259 () Bool)

(declare-fun c!1322724 () Bool)

(assert (=> d!2216259 (= c!1322724 (and (is-ElementMatch!17762 (regTwo!36037 r!11554)) (= (c!1322665 (regTwo!36037 r!11554)) a!1901)))))

(assert (=> d!2216259 (= (derivationStepZipperDown!2341 (regTwo!36037 r!11554) lt!2554889 a!1901) e!4260888)))

(assert (= (and d!2216259 c!1322724) b!7087590))

(assert (= (and d!2216259 (not c!1322724)) b!7087589))

(assert (= (and b!7087589 c!1322725) b!7087593))

(assert (= (and b!7087589 (not c!1322725)) b!7087596))

(assert (= (and b!7087596 res!2895080) b!7087587))

(assert (= (and b!7087596 c!1322722) b!7087588))

(assert (= (and b!7087596 (not c!1322722)) b!7087591))

(assert (= (and b!7087591 c!1322723) b!7087586))

(assert (= (and b!7087591 (not c!1322723)) b!7087592))

(assert (= (and b!7087592 c!1322726) b!7087595))

(assert (= (and b!7087592 (not c!1322726)) b!7087594))

(assert (= (or b!7087586 b!7087595) bm!644154))

(assert (= (or b!7087586 b!7087595) bm!644150))

(assert (= (or b!7087588 bm!644150) bm!644151))

(assert (= (or b!7087588 bm!644154) bm!644152))

(assert (= (or b!7087593 bm!644151) bm!644153))

(assert (= (or b!7087593 b!7087588) bm!644149))

(assert (=> b!7087587 m!7817706))

(assert (=> b!7087590 m!7817764))

(declare-fun m!7817790 () Bool)

(assert (=> bm!644149 m!7817790))

(declare-fun m!7817792 () Bool)

(assert (=> bm!644152 m!7817792))

(declare-fun m!7817794 () Bool)

(assert (=> bm!644153 m!7817794))

(assert (=> b!7087415 d!2216259))

(declare-fun b!7087623 () Bool)

(declare-fun e!4260910 () List!68725)

(assert (=> b!7087623 (= e!4260910 (exprs!7258 auxCtx!45))))

(declare-fun b!7087624 () Bool)

(assert (=> b!7087624 (= e!4260910 (Cons!68601 (h!75049 (exprs!7258 c!9994)) (++!15935 (t!382510 (exprs!7258 c!9994)) (exprs!7258 auxCtx!45))))))

(declare-fun b!7087625 () Bool)

(declare-fun res!2895096 () Bool)

(declare-fun e!4260909 () Bool)

(assert (=> b!7087625 (=> (not res!2895096) (not e!4260909))))

(declare-fun lt!2554945 () List!68725)

(declare-fun size!41299 (List!68725) Int)

(assert (=> b!7087625 (= res!2895096 (= (size!41299 lt!2554945) (+ (size!41299 (exprs!7258 c!9994)) (size!41299 (exprs!7258 auxCtx!45)))))))

(declare-fun d!2216261 () Bool)

(assert (=> d!2216261 e!4260909))

(declare-fun res!2895095 () Bool)

(assert (=> d!2216261 (=> (not res!2895095) (not e!4260909))))

(declare-fun content!13924 (List!68725) (Set Regex!17762))

(assert (=> d!2216261 (= res!2895095 (= (content!13924 lt!2554945) (set.union (content!13924 (exprs!7258 c!9994)) (content!13924 (exprs!7258 auxCtx!45)))))))

(assert (=> d!2216261 (= lt!2554945 e!4260910)))

(declare-fun c!1322733 () Bool)

(assert (=> d!2216261 (= c!1322733 (is-Nil!68601 (exprs!7258 c!9994)))))

(assert (=> d!2216261 (= (++!15935 (exprs!7258 c!9994) (exprs!7258 auxCtx!45)) lt!2554945)))

(declare-fun b!7087626 () Bool)

(assert (=> b!7087626 (= e!4260909 (or (not (= (exprs!7258 auxCtx!45) Nil!68601)) (= lt!2554945 (exprs!7258 c!9994))))))

(assert (= (and d!2216261 c!1322733) b!7087623))

(assert (= (and d!2216261 (not c!1322733)) b!7087624))

(assert (= (and d!2216261 res!2895095) b!7087625))

(assert (= (and b!7087625 res!2895096) b!7087626))

(declare-fun m!7817796 () Bool)

(assert (=> b!7087624 m!7817796))

(declare-fun m!7817798 () Bool)

(assert (=> b!7087625 m!7817798))

(declare-fun m!7817800 () Bool)

(assert (=> b!7087625 m!7817800))

(declare-fun m!7817802 () Bool)

(assert (=> b!7087625 m!7817802))

(declare-fun m!7817804 () Bool)

(assert (=> d!2216261 m!7817804))

(declare-fun m!7817806 () Bool)

(assert (=> d!2216261 m!7817806))

(declare-fun m!7817808 () Bool)

(assert (=> d!2216261 m!7817808))

(assert (=> b!7087415 d!2216261))

(declare-fun b!7087631 () Bool)

(declare-fun e!4260913 () Bool)

(declare-fun tp!1946403 () Bool)

(declare-fun tp!1946404 () Bool)

(assert (=> b!7087631 (= e!4260913 (and tp!1946403 tp!1946404))))

(assert (=> b!7087420 (= tp!1946376 e!4260913)))

(assert (= (and b!7087420 (is-Cons!68601 (exprs!7258 auxCtx!45))) b!7087631))

(declare-fun e!4260916 () Bool)

(assert (=> b!7087414 (= tp!1946372 e!4260916)))

(declare-fun b!7087644 () Bool)

(declare-fun tp!1946419 () Bool)

(assert (=> b!7087644 (= e!4260916 tp!1946419)))

(declare-fun b!7087642 () Bool)

(assert (=> b!7087642 (= e!4260916 tp_is_empty!44757)))

(declare-fun b!7087643 () Bool)

(declare-fun tp!1946415 () Bool)

(declare-fun tp!1946417 () Bool)

(assert (=> b!7087643 (= e!4260916 (and tp!1946415 tp!1946417))))

(declare-fun b!7087645 () Bool)

(declare-fun tp!1946416 () Bool)

(declare-fun tp!1946418 () Bool)

(assert (=> b!7087645 (= e!4260916 (and tp!1946416 tp!1946418))))

(assert (= (and b!7087414 (is-ElementMatch!17762 (regOne!36036 r!11554))) b!7087642))

(assert (= (and b!7087414 (is-Concat!26607 (regOne!36036 r!11554))) b!7087643))

(assert (= (and b!7087414 (is-Star!17762 (regOne!36036 r!11554))) b!7087644))

(assert (= (and b!7087414 (is-Union!17762 (regOne!36036 r!11554))) b!7087645))

(declare-fun e!4260917 () Bool)

(assert (=> b!7087414 (= tp!1946371 e!4260917)))

(declare-fun b!7087648 () Bool)

(declare-fun tp!1946424 () Bool)

(assert (=> b!7087648 (= e!4260917 tp!1946424)))

(declare-fun b!7087646 () Bool)

(assert (=> b!7087646 (= e!4260917 tp_is_empty!44757)))

(declare-fun b!7087647 () Bool)

(declare-fun tp!1946420 () Bool)

(declare-fun tp!1946422 () Bool)

(assert (=> b!7087647 (= e!4260917 (and tp!1946420 tp!1946422))))

(declare-fun b!7087649 () Bool)

(declare-fun tp!1946421 () Bool)

(declare-fun tp!1946423 () Bool)

(assert (=> b!7087649 (= e!4260917 (and tp!1946421 tp!1946423))))

(assert (= (and b!7087414 (is-ElementMatch!17762 (regTwo!36036 r!11554))) b!7087646))

(assert (= (and b!7087414 (is-Concat!26607 (regTwo!36036 r!11554))) b!7087647))

(assert (= (and b!7087414 (is-Star!17762 (regTwo!36036 r!11554))) b!7087648))

(assert (= (and b!7087414 (is-Union!17762 (regTwo!36036 r!11554))) b!7087649))

(declare-fun b!7087650 () Bool)

(declare-fun e!4260918 () Bool)

(declare-fun tp!1946425 () Bool)

(declare-fun tp!1946426 () Bool)

(assert (=> b!7087650 (= e!4260918 (and tp!1946425 tp!1946426))))

(assert (=> b!7087417 (= tp!1946377 e!4260918)))

(assert (= (and b!7087417 (is-Cons!68601 (exprs!7258 c!9994))) b!7087650))

(declare-fun e!4260919 () Bool)

(assert (=> b!7087416 (= tp!1946373 e!4260919)))

(declare-fun b!7087653 () Bool)

(declare-fun tp!1946431 () Bool)

(assert (=> b!7087653 (= e!4260919 tp!1946431)))

(declare-fun b!7087651 () Bool)

(assert (=> b!7087651 (= e!4260919 tp_is_empty!44757)))

(declare-fun b!7087652 () Bool)

(declare-fun tp!1946427 () Bool)

(declare-fun tp!1946429 () Bool)

(assert (=> b!7087652 (= e!4260919 (and tp!1946427 tp!1946429))))

(declare-fun b!7087654 () Bool)

(declare-fun tp!1946428 () Bool)

(declare-fun tp!1946430 () Bool)

(assert (=> b!7087654 (= e!4260919 (and tp!1946428 tp!1946430))))

(assert (= (and b!7087416 (is-ElementMatch!17762 (regOne!36037 r!11554))) b!7087651))

(assert (= (and b!7087416 (is-Concat!26607 (regOne!36037 r!11554))) b!7087652))

(assert (= (and b!7087416 (is-Star!17762 (regOne!36037 r!11554))) b!7087653))

(assert (= (and b!7087416 (is-Union!17762 (regOne!36037 r!11554))) b!7087654))

(declare-fun e!4260920 () Bool)

(assert (=> b!7087416 (= tp!1946374 e!4260920)))

(declare-fun b!7087657 () Bool)

(declare-fun tp!1946436 () Bool)

(assert (=> b!7087657 (= e!4260920 tp!1946436)))

(declare-fun b!7087655 () Bool)

(assert (=> b!7087655 (= e!4260920 tp_is_empty!44757)))

(declare-fun b!7087656 () Bool)

(declare-fun tp!1946432 () Bool)

(declare-fun tp!1946434 () Bool)

(assert (=> b!7087656 (= e!4260920 (and tp!1946432 tp!1946434))))

(declare-fun b!7087658 () Bool)

(declare-fun tp!1946433 () Bool)

(declare-fun tp!1946435 () Bool)

(assert (=> b!7087658 (= e!4260920 (and tp!1946433 tp!1946435))))

(assert (= (and b!7087416 (is-ElementMatch!17762 (regTwo!36037 r!11554))) b!7087655))

(assert (= (and b!7087416 (is-Concat!26607 (regTwo!36037 r!11554))) b!7087656))

(assert (= (and b!7087416 (is-Star!17762 (regTwo!36037 r!11554))) b!7087657))

(assert (= (and b!7087416 (is-Union!17762 (regTwo!36037 r!11554))) b!7087658))

(declare-fun e!4260921 () Bool)

(assert (=> b!7087421 (= tp!1946375 e!4260921)))

(declare-fun b!7087661 () Bool)

(declare-fun tp!1946441 () Bool)

(assert (=> b!7087661 (= e!4260921 tp!1946441)))

(declare-fun b!7087659 () Bool)

(assert (=> b!7087659 (= e!4260921 tp_is_empty!44757)))

(declare-fun b!7087660 () Bool)

(declare-fun tp!1946437 () Bool)

(declare-fun tp!1946439 () Bool)

(assert (=> b!7087660 (= e!4260921 (and tp!1946437 tp!1946439))))

(declare-fun b!7087662 () Bool)

(declare-fun tp!1946438 () Bool)

(declare-fun tp!1946440 () Bool)

(assert (=> b!7087662 (= e!4260921 (and tp!1946438 tp!1946440))))

(assert (= (and b!7087421 (is-ElementMatch!17762 (reg!18091 r!11554))) b!7087659))

(assert (= (and b!7087421 (is-Concat!26607 (reg!18091 r!11554))) b!7087660))

(assert (= (and b!7087421 (is-Star!17762 (reg!18091 r!11554))) b!7087661))

(assert (= (and b!7087421 (is-Union!17762 (reg!18091 r!11554))) b!7087662))

(push 1)

(assert (not b!7087534))

(assert (not bm!644126))

(assert (not b!7087565))

(assert (not b!7087576))

(assert (not d!2216237))

(assert (not b!7087587))

(assert (not b!7087644))

(assert (not b!7087624))

(assert (not bm!644149))

(assert (not b!7087662))

(assert (not b!7087660))

(assert (not b!7087653))

(assert (not bm!644146))

(assert (not d!2216239))

(assert (not bm!644141))

(assert tp_is_empty!44757)

(assert (not b!7087658))

(assert (not bm!644099))

(assert (not b!7087656))

(assert (not d!2216251))

(assert (not b!7087652))

(assert (not b!7087472))

(assert (not b!7087654))

(assert (not b!7087544))

(assert (not b!7087643))

(assert (not d!2216249))

(assert (not b!7087649))

(assert (not bm!644152))

(assert (not d!2216261))

(assert (not bm!644130))

(assert (not bm!644140))

(assert (not bm!644108))

(assert (not b!7087661))

(assert (not b!7087645))

(assert (not bm!644153))

(assert (not b!7087647))

(assert (not bm!644147))

(assert (not bm!644095))

(assert (not b!7087648))

(assert (not bm!644143))

(assert (not bm!644098))

(assert (not d!2216227))

(assert (not d!2216243))

(assert (not bm!644129))

(assert (not b!7087657))

(assert (not bm!644109))

(assert (not bm!644137))

(assert (not b!7087625))

(assert (not b!7087650))

(assert (not bm!644125))

(assert (not b!7087500))

(assert (not b!7087631))

(assert (not bm!644122))

(assert (not d!2216245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

