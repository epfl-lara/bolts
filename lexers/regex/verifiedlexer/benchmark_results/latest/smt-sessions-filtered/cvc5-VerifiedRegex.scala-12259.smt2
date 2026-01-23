; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689810 () Bool)

(assert start!689810)

(declare-fun res!2894956 () Bool)

(declare-fun e!4260580 () Bool)

(assert (=> start!689810 (=> (not res!2894956) (not e!4260580))))

(declare-datatypes ((C!35790 0))(
  ( (C!35791 (val!27601 Int)) )
))
(declare-datatypes ((Regex!17760 0))(
  ( (ElementMatch!17760 (c!1322567 C!35790)) (Concat!26605 (regOne!36032 Regex!17760) (regTwo!36032 Regex!17760)) (EmptyExpr!17760) (Star!17760 (reg!18089 Regex!17760)) (EmptyLang!17760) (Union!17760 (regOne!36033 Regex!17760) (regTwo!36033 Regex!17760)) )
))
(declare-fun r!11554 () Regex!17760)

(declare-fun validRegex!9035 (Regex!17760) Bool)

(assert (=> start!689810 (= res!2894956 (validRegex!9035 r!11554))))

(assert (=> start!689810 e!4260580))

(declare-fun e!4260581 () Bool)

(assert (=> start!689810 e!4260581))

(declare-fun tp_is_empty!44753 () Bool)

(assert (=> start!689810 tp_is_empty!44753))

(declare-datatypes ((List!68723 0))(
  ( (Nil!68599) (Cons!68599 (h!75047 Regex!17760) (t!382508 List!68723)) )
))
(declare-datatypes ((Context!13512 0))(
  ( (Context!13513 (exprs!7256 List!68723)) )
))
(declare-fun c!9994 () Context!13512)

(declare-fun e!4260583 () Bool)

(declare-fun inv!87266 (Context!13512) Bool)

(assert (=> start!689810 (and (inv!87266 c!9994) e!4260583)))

(declare-fun auxCtx!45 () Context!13512)

(declare-fun e!4260582 () Bool)

(assert (=> start!689810 (and (inv!87266 auxCtx!45) e!4260582)))

(declare-fun b!7087033 () Bool)

(assert (=> b!7087033 (= e!4260581 tp_is_empty!44753)))

(declare-fun b!7087034 () Bool)

(declare-fun res!2894955 () Bool)

(assert (=> b!7087034 (=> (not res!2894955) (not e!4260580))))

(declare-fun a!1901 () C!35790)

(assert (=> b!7087034 (= res!2894955 (and (or (not (is-ElementMatch!17760 r!11554)) (not (= (c!1322567 r!11554) a!1901))) (is-Union!17760 r!11554)))))

(declare-fun b!7087035 () Bool)

(declare-fun tp!1946246 () Bool)

(assert (=> b!7087035 (= e!4260581 tp!1946246)))

(declare-fun b!7087036 () Bool)

(declare-fun tp!1946243 () Bool)

(assert (=> b!7087036 (= e!4260582 tp!1946243)))

(declare-fun b!7087037 () Bool)

(declare-fun e!4260579 () Bool)

(assert (=> b!7087037 (= e!4260579 (not (validRegex!9035 (regOne!36033 r!11554))))))

(declare-fun lt!2554799 () (Set Context!13512))

(declare-fun appendTo!849 ((Set Context!13512) Context!13512) (Set Context!13512))

(declare-fun derivationStepZipperDown!2339 (Regex!17760 Context!13512 C!35790) (Set Context!13512))

(assert (=> b!7087037 (= lt!2554799 (appendTo!849 (derivationStepZipperDown!2339 (regTwo!36033 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162219 0))(
  ( (Unit!162220) )
))
(declare-fun lt!2554797 () Unit!162219)

(declare-fun lambda!429202 () Int)

(declare-fun lemmaConcatPreservesForall!1063 (List!68723 List!68723 Int) Unit!162219)

(assert (=> b!7087037 (= lt!2554797 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(declare-fun lt!2554796 () Unit!162219)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!157 (Context!13512 Regex!17760 C!35790 Context!13512) Unit!162219)

(assert (=> b!7087037 (= lt!2554796 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!157 c!9994 (regTwo!36033 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2554798 () (Set Context!13512))

(assert (=> b!7087037 (= lt!2554798 (appendTo!849 (derivationStepZipperDown!2339 (regOne!36033 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554795 () Unit!162219)

(assert (=> b!7087037 (= lt!2554795 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(declare-fun lt!2554804 () Unit!162219)

(assert (=> b!7087037 (= lt!2554804 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!157 c!9994 (regOne!36033 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7087038 () Bool)

(declare-fun tp!1946248 () Bool)

(declare-fun tp!1946245 () Bool)

(assert (=> b!7087038 (= e!4260581 (and tp!1946248 tp!1946245))))

(declare-fun b!7087039 () Bool)

(declare-fun tp!1946244 () Bool)

(declare-fun tp!1946249 () Bool)

(assert (=> b!7087039 (= e!4260581 (and tp!1946244 tp!1946249))))

(declare-fun b!7087040 () Bool)

(assert (=> b!7087040 (= e!4260580 e!4260579)))

(declare-fun res!2894957 () Bool)

(assert (=> b!7087040 (=> (not res!2894957) (not e!4260579))))

(declare-fun lt!2554800 () Context!13512)

(assert (=> b!7087040 (= res!2894957 (= (derivationStepZipperDown!2339 r!11554 lt!2554800 a!1901) (set.union lt!2554798 lt!2554799)))))

(assert (=> b!7087040 (= lt!2554799 (derivationStepZipperDown!2339 (regTwo!36033 r!11554) lt!2554800 a!1901))))

(assert (=> b!7087040 (= lt!2554798 (derivationStepZipperDown!2339 (regOne!36033 r!11554) lt!2554800 a!1901))))

(declare-fun ++!15933 (List!68723 List!68723) List!68723)

(assert (=> b!7087040 (= lt!2554800 (Context!13513 (++!15933 (exprs!7256 c!9994) (exprs!7256 auxCtx!45))))))

(declare-fun lt!2554802 () Unit!162219)

(assert (=> b!7087040 (= lt!2554802 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(declare-fun lt!2554803 () Unit!162219)

(assert (=> b!7087040 (= lt!2554803 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(declare-fun lt!2554801 () Unit!162219)

(assert (=> b!7087040 (= lt!2554801 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(declare-fun b!7087041 () Bool)

(declare-fun tp!1946247 () Bool)

(assert (=> b!7087041 (= e!4260583 tp!1946247)))

(assert (= (and start!689810 res!2894956) b!7087034))

(assert (= (and b!7087034 res!2894955) b!7087040))

(assert (= (and b!7087040 res!2894957) b!7087037))

(assert (= (and start!689810 (is-ElementMatch!17760 r!11554)) b!7087033))

(assert (= (and start!689810 (is-Concat!26605 r!11554)) b!7087039))

(assert (= (and start!689810 (is-Star!17760 r!11554)) b!7087035))

(assert (= (and start!689810 (is-Union!17760 r!11554)) b!7087038))

(assert (= start!689810 b!7087041))

(assert (= start!689810 b!7087036))

(declare-fun m!7817392 () Bool)

(assert (=> start!689810 m!7817392))

(declare-fun m!7817394 () Bool)

(assert (=> start!689810 m!7817394))

(declare-fun m!7817396 () Bool)

(assert (=> start!689810 m!7817396))

(declare-fun m!7817398 () Bool)

(assert (=> b!7087037 m!7817398))

(declare-fun m!7817400 () Bool)

(assert (=> b!7087037 m!7817400))

(declare-fun m!7817402 () Bool)

(assert (=> b!7087037 m!7817402))

(declare-fun m!7817404 () Bool)

(assert (=> b!7087037 m!7817404))

(assert (=> b!7087037 m!7817400))

(declare-fun m!7817406 () Bool)

(assert (=> b!7087037 m!7817406))

(declare-fun m!7817408 () Bool)

(assert (=> b!7087037 m!7817408))

(assert (=> b!7087037 m!7817398))

(declare-fun m!7817410 () Bool)

(assert (=> b!7087037 m!7817410))

(declare-fun m!7817412 () Bool)

(assert (=> b!7087037 m!7817412))

(assert (=> b!7087037 m!7817408))

(declare-fun m!7817414 () Bool)

(assert (=> b!7087040 m!7817414))

(assert (=> b!7087040 m!7817408))

(assert (=> b!7087040 m!7817408))

(declare-fun m!7817416 () Bool)

(assert (=> b!7087040 m!7817416))

(declare-fun m!7817418 () Bool)

(assert (=> b!7087040 m!7817418))

(assert (=> b!7087040 m!7817408))

(declare-fun m!7817420 () Bool)

(assert (=> b!7087040 m!7817420))

(push 1)

(assert (not b!7087038))

(assert (not b!7087036))

(assert (not b!7087039))

(assert (not b!7087037))

(assert (not b!7087035))

(assert (not b!7087041))

(assert (not start!689810))

(assert tp_is_empty!44753)

(assert (not b!7087040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7087087 () Bool)

(declare-fun e!4260614 () Bool)

(declare-fun call!643987 () Bool)

(assert (=> b!7087087 (= e!4260614 call!643987)))

(declare-fun b!7087088 () Bool)

(declare-fun e!4260619 () Bool)

(assert (=> b!7087088 (= e!4260619 e!4260614)))

(declare-fun res!2894980 () Bool)

(assert (=> b!7087088 (=> (not res!2894980) (not e!4260614))))

(declare-fun call!643986 () Bool)

(assert (=> b!7087088 (= res!2894980 call!643986)))

(declare-fun c!1322573 () Bool)

(declare-fun bm!643981 () Bool)

(declare-fun c!1322574 () Bool)

(declare-fun call!643988 () Bool)

(assert (=> bm!643981 (= call!643988 (validRegex!9035 (ite c!1322573 (reg!18089 r!11554) (ite c!1322574 (regOne!36033 r!11554) (regTwo!36032 r!11554)))))))

(declare-fun b!7087089 () Bool)

(declare-fun e!4260618 () Bool)

(declare-fun e!4260613 () Bool)

(assert (=> b!7087089 (= e!4260618 e!4260613)))

(declare-fun res!2894978 () Bool)

(declare-fun nullable!7404 (Regex!17760) Bool)

(assert (=> b!7087089 (= res!2894978 (not (nullable!7404 (reg!18089 r!11554))))))

(assert (=> b!7087089 (=> (not res!2894978) (not e!4260613))))

(declare-fun b!7087090 () Bool)

(declare-fun res!2894981 () Bool)

(assert (=> b!7087090 (=> res!2894981 e!4260619)))

(assert (=> b!7087090 (= res!2894981 (not (is-Concat!26605 r!11554)))))

(declare-fun e!4260615 () Bool)

(assert (=> b!7087090 (= e!4260615 e!4260619)))

(declare-fun b!7087091 () Bool)

(declare-fun e!4260616 () Bool)

(assert (=> b!7087091 (= e!4260616 call!643986)))

(declare-fun bm!643982 () Bool)

(assert (=> bm!643982 (= call!643987 call!643988)))

(declare-fun d!2216166 () Bool)

(declare-fun res!2894979 () Bool)

(declare-fun e!4260617 () Bool)

(assert (=> d!2216166 (=> res!2894979 e!4260617)))

(assert (=> d!2216166 (= res!2894979 (is-ElementMatch!17760 r!11554))))

(assert (=> d!2216166 (= (validRegex!9035 r!11554) e!4260617)))

(declare-fun b!7087092 () Bool)

(declare-fun res!2894977 () Bool)

(assert (=> b!7087092 (=> (not res!2894977) (not e!4260616))))

(assert (=> b!7087092 (= res!2894977 call!643987)))

(assert (=> b!7087092 (= e!4260615 e!4260616)))

(declare-fun b!7087093 () Bool)

(assert (=> b!7087093 (= e!4260618 e!4260615)))

(assert (=> b!7087093 (= c!1322574 (is-Union!17760 r!11554))))

(declare-fun b!7087094 () Bool)

(assert (=> b!7087094 (= e!4260617 e!4260618)))

(assert (=> b!7087094 (= c!1322573 (is-Star!17760 r!11554))))

(declare-fun bm!643983 () Bool)

(assert (=> bm!643983 (= call!643986 (validRegex!9035 (ite c!1322574 (regTwo!36033 r!11554) (regOne!36032 r!11554))))))

(declare-fun b!7087095 () Bool)

(assert (=> b!7087095 (= e!4260613 call!643988)))

(assert (= (and d!2216166 (not res!2894979)) b!7087094))

(assert (= (and b!7087094 c!1322573) b!7087089))

(assert (= (and b!7087094 (not c!1322573)) b!7087093))

(assert (= (and b!7087089 res!2894978) b!7087095))

(assert (= (and b!7087093 c!1322574) b!7087092))

(assert (= (and b!7087093 (not c!1322574)) b!7087090))

(assert (= (and b!7087092 res!2894977) b!7087091))

(assert (= (and b!7087090 (not res!2894981)) b!7087088))

(assert (= (and b!7087088 res!2894980) b!7087087))

(assert (= (or b!7087092 b!7087087) bm!643982))

(assert (= (or b!7087091 b!7087088) bm!643983))

(assert (= (or b!7087095 bm!643982) bm!643981))

(declare-fun m!7817452 () Bool)

(assert (=> bm!643981 m!7817452))

(declare-fun m!7817454 () Bool)

(assert (=> b!7087089 m!7817454))

(declare-fun m!7817456 () Bool)

(assert (=> bm!643983 m!7817456))

(assert (=> start!689810 d!2216166))

(declare-fun bs!1883025 () Bool)

(declare-fun d!2216170 () Bool)

(assert (= bs!1883025 (and d!2216170 b!7087040)))

(declare-fun lambda!429216 () Int)

(assert (=> bs!1883025 (= lambda!429216 lambda!429202)))

(declare-fun forall!16704 (List!68723 Int) Bool)

(assert (=> d!2216170 (= (inv!87266 c!9994) (forall!16704 (exprs!7256 c!9994) lambda!429216))))

(declare-fun bs!1883026 () Bool)

(assert (= bs!1883026 d!2216170))

(declare-fun m!7817458 () Bool)

(assert (=> bs!1883026 m!7817458))

(assert (=> start!689810 d!2216170))

(declare-fun bs!1883027 () Bool)

(declare-fun d!2216172 () Bool)

(assert (= bs!1883027 (and d!2216172 b!7087040)))

(declare-fun lambda!429217 () Int)

(assert (=> bs!1883027 (= lambda!429217 lambda!429202)))

(declare-fun bs!1883028 () Bool)

(assert (= bs!1883028 (and d!2216172 d!2216170)))

(assert (=> bs!1883028 (= lambda!429217 lambda!429216)))

(assert (=> d!2216172 (= (inv!87266 auxCtx!45) (forall!16704 (exprs!7256 auxCtx!45) lambda!429217))))

(declare-fun bs!1883029 () Bool)

(assert (= bs!1883029 d!2216172))

(declare-fun m!7817460 () Bool)

(assert (=> bs!1883029 m!7817460))

(assert (=> start!689810 d!2216172))

(declare-fun c!1322595 () Bool)

(declare-fun c!1322592 () Bool)

(declare-fun call!644013 () (Set Context!13512))

(declare-fun call!644014 () List!68723)

(declare-fun bm!644005 () Bool)

(declare-fun c!1322593 () Bool)

(assert (=> bm!644005 (= call!644013 (derivationStepZipperDown!2339 (ite c!1322593 (regTwo!36033 (regTwo!36033 r!11554)) (ite c!1322595 (regTwo!36032 (regTwo!36033 r!11554)) (ite c!1322592 (regOne!36032 (regTwo!36033 r!11554)) (reg!18089 (regTwo!36033 r!11554))))) (ite (or c!1322593 c!1322595) c!9994 (Context!13513 call!644014)) a!1901))))

(declare-fun b!7087145 () Bool)

(declare-fun e!4260658 () Bool)

(assert (=> b!7087145 (= c!1322595 e!4260658)))

(declare-fun res!2894999 () Bool)

(assert (=> b!7087145 (=> (not res!2894999) (not e!4260658))))

(assert (=> b!7087145 (= res!2894999 (is-Concat!26605 (regTwo!36033 r!11554)))))

(declare-fun e!4260653 () (Set Context!13512))

(declare-fun e!4260656 () (Set Context!13512))

(assert (=> b!7087145 (= e!4260653 e!4260656)))

(declare-fun b!7087146 () Bool)

(declare-fun c!1322591 () Bool)

(assert (=> b!7087146 (= c!1322591 (is-Star!17760 (regTwo!36033 r!11554)))))

(declare-fun e!4260654 () (Set Context!13512))

(declare-fun e!4260657 () (Set Context!13512))

(assert (=> b!7087146 (= e!4260654 e!4260657)))

(declare-fun b!7087148 () Bool)

(declare-fun call!644015 () (Set Context!13512))

(assert (=> b!7087148 (= e!4260653 (set.union call!644015 call!644013))))

(declare-fun b!7087149 () Bool)

(assert (=> b!7087149 (= e!4260658 (nullable!7404 (regOne!36032 (regTwo!36033 r!11554))))))

(declare-fun b!7087150 () Bool)

(declare-fun call!644011 () (Set Context!13512))

(assert (=> b!7087150 (= e!4260654 call!644011)))

(declare-fun b!7087151 () Bool)

(assert (=> b!7087151 (= e!4260656 e!4260654)))

(assert (=> b!7087151 (= c!1322592 (is-Concat!26605 (regTwo!36033 r!11554)))))

(declare-fun bm!644006 () Bool)

(declare-fun call!644010 () (Set Context!13512))

(assert (=> bm!644006 (= call!644011 call!644010)))

(declare-fun b!7087152 () Bool)

(declare-fun e!4260655 () (Set Context!13512))

(assert (=> b!7087152 (= e!4260655 (set.insert c!9994 (as set.empty (Set Context!13512))))))

(declare-fun b!7087153 () Bool)

(assert (=> b!7087153 (= e!4260656 (set.union call!644015 call!644010))))

(declare-fun call!644012 () List!68723)

(declare-fun bm!644007 () Bool)

(declare-fun $colon$colon!2687 (List!68723 Regex!17760) List!68723)

(assert (=> bm!644007 (= call!644012 ($colon$colon!2687 (exprs!7256 c!9994) (ite (or c!1322595 c!1322592) (regTwo!36032 (regTwo!36033 r!11554)) (regTwo!36033 r!11554))))))

(declare-fun bm!644008 () Bool)

(assert (=> bm!644008 (= call!644010 call!644013)))

(declare-fun d!2216174 () Bool)

(declare-fun c!1322594 () Bool)

(assert (=> d!2216174 (= c!1322594 (and (is-ElementMatch!17760 (regTwo!36033 r!11554)) (= (c!1322567 (regTwo!36033 r!11554)) a!1901)))))

(assert (=> d!2216174 (= (derivationStepZipperDown!2339 (regTwo!36033 r!11554) c!9994 a!1901) e!4260655)))

(declare-fun b!7087147 () Bool)

(assert (=> b!7087147 (= e!4260657 (as set.empty (Set Context!13512)))))

(declare-fun bm!644009 () Bool)

(assert (=> bm!644009 (= call!644014 call!644012)))

(declare-fun bm!644010 () Bool)

(assert (=> bm!644010 (= call!644015 (derivationStepZipperDown!2339 (ite c!1322593 (regOne!36033 (regTwo!36033 r!11554)) (regOne!36032 (regTwo!36033 r!11554))) (ite c!1322593 c!9994 (Context!13513 call!644012)) a!1901))))

(declare-fun b!7087154 () Bool)

(assert (=> b!7087154 (= e!4260657 call!644011)))

(declare-fun b!7087155 () Bool)

(assert (=> b!7087155 (= e!4260655 e!4260653)))

(assert (=> b!7087155 (= c!1322593 (is-Union!17760 (regTwo!36033 r!11554)))))

(assert (= (and d!2216174 c!1322594) b!7087152))

(assert (= (and d!2216174 (not c!1322594)) b!7087155))

(assert (= (and b!7087155 c!1322593) b!7087148))

(assert (= (and b!7087155 (not c!1322593)) b!7087145))

(assert (= (and b!7087145 res!2894999) b!7087149))

(assert (= (and b!7087145 c!1322595) b!7087153))

(assert (= (and b!7087145 (not c!1322595)) b!7087151))

(assert (= (and b!7087151 c!1322592) b!7087150))

(assert (= (and b!7087151 (not c!1322592)) b!7087146))

(assert (= (and b!7087146 c!1322591) b!7087154))

(assert (= (and b!7087146 (not c!1322591)) b!7087147))

(assert (= (or b!7087150 b!7087154) bm!644009))

(assert (= (or b!7087150 b!7087154) bm!644006))

(assert (= (or b!7087153 bm!644006) bm!644008))

(assert (= (or b!7087153 bm!644009) bm!644007))

(assert (= (or b!7087148 bm!644008) bm!644005))

(assert (= (or b!7087148 b!7087153) bm!644010))

(declare-fun m!7817468 () Bool)

(assert (=> b!7087149 m!7817468))

(declare-fun m!7817470 () Bool)

(assert (=> bm!644005 m!7817470))

(declare-fun m!7817472 () Bool)

(assert (=> bm!644007 m!7817472))

(declare-fun m!7817474 () Bool)

(assert (=> bm!644010 m!7817474))

(declare-fun m!7817476 () Bool)

(assert (=> b!7087152 m!7817476))

(assert (=> b!7087037 d!2216174))

(declare-fun d!2216178 () Bool)

(assert (=> d!2216178 true))

(declare-fun lambda!429226 () Int)

(declare-fun map!16109 ((Set Context!13512) Int) (Set Context!13512))

(assert (=> d!2216178 (= (appendTo!849 (derivationStepZipperDown!2339 (regOne!36033 r!11554) c!9994 a!1901) auxCtx!45) (map!16109 (derivationStepZipperDown!2339 (regOne!36033 r!11554) c!9994 a!1901) lambda!429226))))

(declare-fun bs!1883035 () Bool)

(assert (= bs!1883035 d!2216178))

(assert (=> bs!1883035 m!7817400))

(declare-fun m!7817482 () Bool)

(assert (=> bs!1883035 m!7817482))

(assert (=> b!7087037 d!2216178))

(declare-fun b!7087158 () Bool)

(declare-fun e!4260660 () Bool)

(declare-fun call!644017 () Bool)

(assert (=> b!7087158 (= e!4260660 call!644017)))

(declare-fun b!7087159 () Bool)

(declare-fun e!4260665 () Bool)

(assert (=> b!7087159 (= e!4260665 e!4260660)))

(declare-fun res!2895003 () Bool)

(assert (=> b!7087159 (=> (not res!2895003) (not e!4260660))))

(declare-fun call!644016 () Bool)

(assert (=> b!7087159 (= res!2895003 call!644016)))

(declare-fun c!1322597 () Bool)

(declare-fun bm!644011 () Bool)

(declare-fun c!1322598 () Bool)

(declare-fun call!644018 () Bool)

(assert (=> bm!644011 (= call!644018 (validRegex!9035 (ite c!1322597 (reg!18089 (regOne!36033 r!11554)) (ite c!1322598 (regOne!36033 (regOne!36033 r!11554)) (regTwo!36032 (regOne!36033 r!11554))))))))

(declare-fun b!7087160 () Bool)

(declare-fun e!4260664 () Bool)

(declare-fun e!4260659 () Bool)

(assert (=> b!7087160 (= e!4260664 e!4260659)))

(declare-fun res!2895001 () Bool)

(assert (=> b!7087160 (= res!2895001 (not (nullable!7404 (reg!18089 (regOne!36033 r!11554)))))))

(assert (=> b!7087160 (=> (not res!2895001) (not e!4260659))))

(declare-fun b!7087161 () Bool)

(declare-fun res!2895004 () Bool)

(assert (=> b!7087161 (=> res!2895004 e!4260665)))

(assert (=> b!7087161 (= res!2895004 (not (is-Concat!26605 (regOne!36033 r!11554))))))

(declare-fun e!4260661 () Bool)

(assert (=> b!7087161 (= e!4260661 e!4260665)))

(declare-fun b!7087162 () Bool)

(declare-fun e!4260662 () Bool)

(assert (=> b!7087162 (= e!4260662 call!644016)))

(declare-fun bm!644012 () Bool)

(assert (=> bm!644012 (= call!644017 call!644018)))

(declare-fun d!2216184 () Bool)

(declare-fun res!2895002 () Bool)

(declare-fun e!4260663 () Bool)

(assert (=> d!2216184 (=> res!2895002 e!4260663)))

(assert (=> d!2216184 (= res!2895002 (is-ElementMatch!17760 (regOne!36033 r!11554)))))

(assert (=> d!2216184 (= (validRegex!9035 (regOne!36033 r!11554)) e!4260663)))

(declare-fun b!7087163 () Bool)

(declare-fun res!2895000 () Bool)

(assert (=> b!7087163 (=> (not res!2895000) (not e!4260662))))

(assert (=> b!7087163 (= res!2895000 call!644017)))

(assert (=> b!7087163 (= e!4260661 e!4260662)))

(declare-fun b!7087164 () Bool)

(assert (=> b!7087164 (= e!4260664 e!4260661)))

(assert (=> b!7087164 (= c!1322598 (is-Union!17760 (regOne!36033 r!11554)))))

(declare-fun b!7087165 () Bool)

(assert (=> b!7087165 (= e!4260663 e!4260664)))

(assert (=> b!7087165 (= c!1322597 (is-Star!17760 (regOne!36033 r!11554)))))

(declare-fun bm!644013 () Bool)

(assert (=> bm!644013 (= call!644016 (validRegex!9035 (ite c!1322598 (regTwo!36033 (regOne!36033 r!11554)) (regOne!36032 (regOne!36033 r!11554)))))))

(declare-fun b!7087166 () Bool)

(assert (=> b!7087166 (= e!4260659 call!644018)))

(assert (= (and d!2216184 (not res!2895002)) b!7087165))

(assert (= (and b!7087165 c!1322597) b!7087160))

(assert (= (and b!7087165 (not c!1322597)) b!7087164))

(assert (= (and b!7087160 res!2895001) b!7087166))

(assert (= (and b!7087164 c!1322598) b!7087163))

(assert (= (and b!7087164 (not c!1322598)) b!7087161))

(assert (= (and b!7087163 res!2895000) b!7087162))

(assert (= (and b!7087161 (not res!2895004)) b!7087159))

(assert (= (and b!7087159 res!2895003) b!7087158))

(assert (= (or b!7087163 b!7087158) bm!644012))

(assert (= (or b!7087162 b!7087159) bm!644013))

(assert (= (or b!7087166 bm!644012) bm!644011))

(declare-fun m!7817484 () Bool)

(assert (=> bm!644011 m!7817484))

(declare-fun m!7817486 () Bool)

(assert (=> b!7087160 m!7817486))

(declare-fun m!7817488 () Bool)

(assert (=> bm!644013 m!7817488))

(assert (=> b!7087037 d!2216184))

(declare-fun bs!1883036 () Bool)

(declare-fun d!2216186 () Bool)

(assert (= bs!1883036 (and d!2216186 b!7087040)))

(declare-fun lambda!429229 () Int)

(assert (=> bs!1883036 (= lambda!429229 lambda!429202)))

(declare-fun bs!1883037 () Bool)

(assert (= bs!1883037 (and d!2216186 d!2216170)))

(assert (=> bs!1883037 (= lambda!429229 lambda!429216)))

(declare-fun bs!1883038 () Bool)

(assert (= bs!1883038 (and d!2216186 d!2216172)))

(assert (=> bs!1883038 (= lambda!429229 lambda!429217)))

(assert (=> d!2216186 (= (derivationStepZipperDown!2339 (regTwo!36033 r!11554) (Context!13513 (++!15933 (exprs!7256 c!9994) (exprs!7256 auxCtx!45))) a!1901) (appendTo!849 (derivationStepZipperDown!2339 (regTwo!36033 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554842 () Unit!162219)

(assert (=> d!2216186 (= lt!2554842 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429229))))

(declare-fun lt!2554841 () Unit!162219)

(declare-fun choose!54618 (Context!13512 Regex!17760 C!35790 Context!13512) Unit!162219)

(assert (=> d!2216186 (= lt!2554841 (choose!54618 c!9994 (regTwo!36033 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216186 (validRegex!9035 (regTwo!36033 r!11554))))

(assert (=> d!2216186 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!157 c!9994 (regTwo!36033 r!11554) a!1901 auxCtx!45) lt!2554841)))

(declare-fun bs!1883039 () Bool)

(assert (= bs!1883039 d!2216186))

(declare-fun m!7817490 () Bool)

(assert (=> bs!1883039 m!7817490))

(declare-fun m!7817492 () Bool)

(assert (=> bs!1883039 m!7817492))

(declare-fun m!7817494 () Bool)

(assert (=> bs!1883039 m!7817494))

(assert (=> bs!1883039 m!7817398))

(assert (=> bs!1883039 m!7817410))

(assert (=> bs!1883039 m!7817398))

(assert (=> bs!1883039 m!7817416))

(declare-fun m!7817496 () Bool)

(assert (=> bs!1883039 m!7817496))

(assert (=> b!7087037 d!2216186))

(declare-fun c!1322614 () Bool)

(declare-fun c!1322612 () Bool)

(declare-fun bm!644018 () Bool)

(declare-fun call!644026 () (Set Context!13512))

(declare-fun call!644027 () List!68723)

(declare-fun c!1322611 () Bool)

(assert (=> bm!644018 (= call!644026 (derivationStepZipperDown!2339 (ite c!1322612 (regTwo!36033 (regOne!36033 r!11554)) (ite c!1322614 (regTwo!36032 (regOne!36033 r!11554)) (ite c!1322611 (regOne!36032 (regOne!36033 r!11554)) (reg!18089 (regOne!36033 r!11554))))) (ite (or c!1322612 c!1322614) c!9994 (Context!13513 call!644027)) a!1901))))

(declare-fun b!7087189 () Bool)

(declare-fun e!4260683 () Bool)

(assert (=> b!7087189 (= c!1322614 e!4260683)))

(declare-fun res!2895007 () Bool)

(assert (=> b!7087189 (=> (not res!2895007) (not e!4260683))))

(assert (=> b!7087189 (= res!2895007 (is-Concat!26605 (regOne!36033 r!11554)))))

(declare-fun e!4260678 () (Set Context!13512))

(declare-fun e!4260681 () (Set Context!13512))

(assert (=> b!7087189 (= e!4260678 e!4260681)))

(declare-fun b!7087190 () Bool)

(declare-fun c!1322610 () Bool)

(assert (=> b!7087190 (= c!1322610 (is-Star!17760 (regOne!36033 r!11554)))))

(declare-fun e!4260679 () (Set Context!13512))

(declare-fun e!4260682 () (Set Context!13512))

(assert (=> b!7087190 (= e!4260679 e!4260682)))

(declare-fun b!7087192 () Bool)

(declare-fun call!644028 () (Set Context!13512))

(assert (=> b!7087192 (= e!4260678 (set.union call!644028 call!644026))))

(declare-fun b!7087193 () Bool)

(assert (=> b!7087193 (= e!4260683 (nullable!7404 (regOne!36032 (regOne!36033 r!11554))))))

(declare-fun b!7087194 () Bool)

(declare-fun call!644024 () (Set Context!13512))

(assert (=> b!7087194 (= e!4260679 call!644024)))

(declare-fun b!7087195 () Bool)

(assert (=> b!7087195 (= e!4260681 e!4260679)))

(assert (=> b!7087195 (= c!1322611 (is-Concat!26605 (regOne!36033 r!11554)))))

(declare-fun bm!644019 () Bool)

(declare-fun call!644023 () (Set Context!13512))

(assert (=> bm!644019 (= call!644024 call!644023)))

(declare-fun b!7087196 () Bool)

(declare-fun e!4260680 () (Set Context!13512))

(assert (=> b!7087196 (= e!4260680 (set.insert c!9994 (as set.empty (Set Context!13512))))))

(declare-fun b!7087197 () Bool)

(assert (=> b!7087197 (= e!4260681 (set.union call!644028 call!644023))))

(declare-fun bm!644020 () Bool)

(declare-fun call!644025 () List!68723)

(assert (=> bm!644020 (= call!644025 ($colon$colon!2687 (exprs!7256 c!9994) (ite (or c!1322614 c!1322611) (regTwo!36032 (regOne!36033 r!11554)) (regOne!36033 r!11554))))))

(declare-fun bm!644021 () Bool)

(assert (=> bm!644021 (= call!644023 call!644026)))

(declare-fun d!2216188 () Bool)

(declare-fun c!1322613 () Bool)

(assert (=> d!2216188 (= c!1322613 (and (is-ElementMatch!17760 (regOne!36033 r!11554)) (= (c!1322567 (regOne!36033 r!11554)) a!1901)))))

(assert (=> d!2216188 (= (derivationStepZipperDown!2339 (regOne!36033 r!11554) c!9994 a!1901) e!4260680)))

(declare-fun b!7087191 () Bool)

(assert (=> b!7087191 (= e!4260682 (as set.empty (Set Context!13512)))))

(declare-fun bm!644022 () Bool)

(assert (=> bm!644022 (= call!644027 call!644025)))

(declare-fun bm!644023 () Bool)

(assert (=> bm!644023 (= call!644028 (derivationStepZipperDown!2339 (ite c!1322612 (regOne!36033 (regOne!36033 r!11554)) (regOne!36032 (regOne!36033 r!11554))) (ite c!1322612 c!9994 (Context!13513 call!644025)) a!1901))))

(declare-fun b!7087198 () Bool)

(assert (=> b!7087198 (= e!4260682 call!644024)))

(declare-fun b!7087199 () Bool)

(assert (=> b!7087199 (= e!4260680 e!4260678)))

(assert (=> b!7087199 (= c!1322612 (is-Union!17760 (regOne!36033 r!11554)))))

(assert (= (and d!2216188 c!1322613) b!7087196))

(assert (= (and d!2216188 (not c!1322613)) b!7087199))

(assert (= (and b!7087199 c!1322612) b!7087192))

(assert (= (and b!7087199 (not c!1322612)) b!7087189))

(assert (= (and b!7087189 res!2895007) b!7087193))

(assert (= (and b!7087189 c!1322614) b!7087197))

(assert (= (and b!7087189 (not c!1322614)) b!7087195))

(assert (= (and b!7087195 c!1322611) b!7087194))

(assert (= (and b!7087195 (not c!1322611)) b!7087190))

(assert (= (and b!7087190 c!1322610) b!7087198))

(assert (= (and b!7087190 (not c!1322610)) b!7087191))

(assert (= (or b!7087194 b!7087198) bm!644022))

(assert (= (or b!7087194 b!7087198) bm!644019))

(assert (= (or b!7087197 bm!644019) bm!644021))

(assert (= (or b!7087197 bm!644022) bm!644020))

(assert (= (or b!7087192 bm!644021) bm!644018))

(assert (= (or b!7087192 b!7087197) bm!644023))

(declare-fun m!7817498 () Bool)

(assert (=> b!7087193 m!7817498))

(declare-fun m!7817500 () Bool)

(assert (=> bm!644018 m!7817500))

(declare-fun m!7817502 () Bool)

(assert (=> bm!644020 m!7817502))

(declare-fun m!7817504 () Bool)

(assert (=> bm!644023 m!7817504))

(assert (=> b!7087196 m!7817476))

(assert (=> b!7087037 d!2216188))

(declare-fun d!2216190 () Bool)

(assert (=> d!2216190 (forall!16704 (++!15933 (exprs!7256 c!9994) (exprs!7256 auxCtx!45)) lambda!429202)))

(declare-fun lt!2554845 () Unit!162219)

(declare-fun choose!54619 (List!68723 List!68723 Int) Unit!162219)

(assert (=> d!2216190 (= lt!2554845 (choose!54619 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202))))

(assert (=> d!2216190 (forall!16704 (exprs!7256 c!9994) lambda!429202)))

(assert (=> d!2216190 (= (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429202) lt!2554845)))

(declare-fun bs!1883040 () Bool)

(assert (= bs!1883040 d!2216190))

(assert (=> bs!1883040 m!7817416))

(assert (=> bs!1883040 m!7817416))

(declare-fun m!7817506 () Bool)

(assert (=> bs!1883040 m!7817506))

(declare-fun m!7817508 () Bool)

(assert (=> bs!1883040 m!7817508))

(declare-fun m!7817510 () Bool)

(assert (=> bs!1883040 m!7817510))

(assert (=> b!7087037 d!2216190))

(declare-fun bs!1883041 () Bool)

(declare-fun d!2216192 () Bool)

(assert (= bs!1883041 (and d!2216192 d!2216178)))

(declare-fun lambda!429230 () Int)

(assert (=> bs!1883041 (= lambda!429230 lambda!429226)))

(assert (=> d!2216192 true))

(assert (=> d!2216192 (= (appendTo!849 (derivationStepZipperDown!2339 (regTwo!36033 r!11554) c!9994 a!1901) auxCtx!45) (map!16109 (derivationStepZipperDown!2339 (regTwo!36033 r!11554) c!9994 a!1901) lambda!429230))))

(declare-fun bs!1883042 () Bool)

(assert (= bs!1883042 d!2216192))

(assert (=> bs!1883042 m!7817398))

(declare-fun m!7817512 () Bool)

(assert (=> bs!1883042 m!7817512))

(assert (=> b!7087037 d!2216192))

(declare-fun bs!1883043 () Bool)

(declare-fun d!2216194 () Bool)

(assert (= bs!1883043 (and d!2216194 b!7087040)))

(declare-fun lambda!429231 () Int)

(assert (=> bs!1883043 (= lambda!429231 lambda!429202)))

(declare-fun bs!1883044 () Bool)

(assert (= bs!1883044 (and d!2216194 d!2216170)))

(assert (=> bs!1883044 (= lambda!429231 lambda!429216)))

(declare-fun bs!1883045 () Bool)

(assert (= bs!1883045 (and d!2216194 d!2216172)))

(assert (=> bs!1883045 (= lambda!429231 lambda!429217)))

(declare-fun bs!1883046 () Bool)

(assert (= bs!1883046 (and d!2216194 d!2216186)))

(assert (=> bs!1883046 (= lambda!429231 lambda!429229)))

(assert (=> d!2216194 (= (derivationStepZipperDown!2339 (regOne!36033 r!11554) (Context!13513 (++!15933 (exprs!7256 c!9994) (exprs!7256 auxCtx!45))) a!1901) (appendTo!849 (derivationStepZipperDown!2339 (regOne!36033 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2554847 () Unit!162219)

(assert (=> d!2216194 (= lt!2554847 (lemmaConcatPreservesForall!1063 (exprs!7256 c!9994) (exprs!7256 auxCtx!45) lambda!429231))))

(declare-fun lt!2554846 () Unit!162219)

(assert (=> d!2216194 (= lt!2554846 (choose!54618 c!9994 (regOne!36033 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216194 (validRegex!9035 (regOne!36033 r!11554))))

(assert (=> d!2216194 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!157 c!9994 (regOne!36033 r!11554) a!1901 auxCtx!45) lt!2554846)))

(declare-fun bs!1883047 () Bool)

(assert (= bs!1883047 d!2216194))

(declare-fun m!7817514 () Bool)

(assert (=> bs!1883047 m!7817514))

(assert (=> bs!1883047 m!7817404))

(declare-fun m!7817516 () Bool)

(assert (=> bs!1883047 m!7817516))

(assert (=> bs!1883047 m!7817400))

(assert (=> bs!1883047 m!7817402))

(assert (=> bs!1883047 m!7817400))

(assert (=> bs!1883047 m!7817416))

(declare-fun m!7817518 () Bool)

(assert (=> bs!1883047 m!7817518))

(assert (=> b!7087037 d!2216194))

(declare-fun c!1322619 () Bool)

(declare-fun c!1322617 () Bool)

(declare-fun call!644040 () (Set Context!13512))

(declare-fun c!1322616 () Bool)

(declare-fun bm!644032 () Bool)

(declare-fun call!644041 () List!68723)

(assert (=> bm!644032 (= call!644040 (derivationStepZipperDown!2339 (ite c!1322617 (regTwo!36033 r!11554) (ite c!1322619 (regTwo!36032 r!11554) (ite c!1322616 (regOne!36032 r!11554) (reg!18089 r!11554)))) (ite (or c!1322617 c!1322619) lt!2554800 (Context!13513 call!644041)) a!1901))))

(declare-fun b!7087200 () Bool)

(declare-fun e!4260689 () Bool)

(assert (=> b!7087200 (= c!1322619 e!4260689)))

(declare-fun res!2895008 () Bool)

(assert (=> b!7087200 (=> (not res!2895008) (not e!4260689))))

(assert (=> b!7087200 (= res!2895008 (is-Concat!26605 r!11554))))

(declare-fun e!4260684 () (Set Context!13512))

(declare-fun e!4260687 () (Set Context!13512))

(assert (=> b!7087200 (= e!4260684 e!4260687)))

(declare-fun b!7087201 () Bool)

(declare-fun c!1322615 () Bool)

(assert (=> b!7087201 (= c!1322615 (is-Star!17760 r!11554))))

(declare-fun e!4260685 () (Set Context!13512))

(declare-fun e!4260688 () (Set Context!13512))

(assert (=> b!7087201 (= e!4260685 e!4260688)))

(declare-fun b!7087203 () Bool)

(declare-fun call!644042 () (Set Context!13512))

(assert (=> b!7087203 (= e!4260684 (set.union call!644042 call!644040))))

(declare-fun b!7087204 () Bool)

(assert (=> b!7087204 (= e!4260689 (nullable!7404 (regOne!36032 r!11554)))))

(declare-fun b!7087205 () Bool)

(declare-fun call!644038 () (Set Context!13512))

(assert (=> b!7087205 (= e!4260685 call!644038)))

(declare-fun b!7087206 () Bool)

(assert (=> b!7087206 (= e!4260687 e!4260685)))

(assert (=> b!7087206 (= c!1322616 (is-Concat!26605 r!11554))))

(declare-fun bm!644033 () Bool)

(declare-fun call!644037 () (Set Context!13512))

(assert (=> bm!644033 (= call!644038 call!644037)))

(declare-fun b!7087207 () Bool)

(declare-fun e!4260686 () (Set Context!13512))

(assert (=> b!7087207 (= e!4260686 (set.insert lt!2554800 (as set.empty (Set Context!13512))))))

(declare-fun b!7087208 () Bool)

(assert (=> b!7087208 (= e!4260687 (set.union call!644042 call!644037))))

(declare-fun bm!644034 () Bool)

(declare-fun call!644039 () List!68723)

(assert (=> bm!644034 (= call!644039 ($colon$colon!2687 (exprs!7256 lt!2554800) (ite (or c!1322619 c!1322616) (regTwo!36032 r!11554) r!11554)))))

(declare-fun bm!644035 () Bool)

(assert (=> bm!644035 (= call!644037 call!644040)))

(declare-fun d!2216196 () Bool)

(declare-fun c!1322618 () Bool)

(assert (=> d!2216196 (= c!1322618 (and (is-ElementMatch!17760 r!11554) (= (c!1322567 r!11554) a!1901)))))

(assert (=> d!2216196 (= (derivationStepZipperDown!2339 r!11554 lt!2554800 a!1901) e!4260686)))

(declare-fun b!7087202 () Bool)

(assert (=> b!7087202 (= e!4260688 (as set.empty (Set Context!13512)))))

(declare-fun bm!644036 () Bool)

(assert (=> bm!644036 (= call!644041 call!644039)))

(declare-fun bm!644037 () Bool)

(assert (=> bm!644037 (= call!644042 (derivationStepZipperDown!2339 (ite c!1322617 (regOne!36033 r!11554) (regOne!36032 r!11554)) (ite c!1322617 lt!2554800 (Context!13513 call!644039)) a!1901))))

(declare-fun b!7087209 () Bool)

(assert (=> b!7087209 (= e!4260688 call!644038)))

(declare-fun b!7087210 () Bool)

(assert (=> b!7087210 (= e!4260686 e!4260684)))

(assert (=> b!7087210 (= c!1322617 (is-Union!17760 r!11554))))

(assert (= (and d!2216196 c!1322618) b!7087207))

(assert (= (and d!2216196 (not c!1322618)) b!7087210))

(assert (= (and b!7087210 c!1322617) b!7087203))

(assert (= (and b!7087210 (not c!1322617)) b!7087200))

(assert (= (and b!7087200 res!2895008) b!7087204))

(assert (= (and b!7087200 c!1322619) b!7087208))

(assert (= (and b!7087200 (not c!1322619)) b!7087206))

(assert (= (and b!7087206 c!1322616) b!7087205))

(assert (= (and b!7087206 (not c!1322616)) b!7087201))

(assert (= (and b!7087201 c!1322615) b!7087209))

(assert (= (and b!7087201 (not c!1322615)) b!7087202))

(assert (= (or b!7087205 b!7087209) bm!644036))

(assert (= (or b!7087205 b!7087209) bm!644033))

(assert (= (or b!7087208 bm!644033) bm!644035))

(assert (= (or b!7087208 bm!644036) bm!644034))

(assert (= (or b!7087203 bm!644035) bm!644032))

(assert (= (or b!7087203 b!7087208) bm!644037))

(declare-fun m!7817520 () Bool)

(assert (=> b!7087204 m!7817520))

(declare-fun m!7817522 () Bool)

(assert (=> bm!644032 m!7817522))

(declare-fun m!7817524 () Bool)

(assert (=> bm!644034 m!7817524))

(declare-fun m!7817526 () Bool)

(assert (=> bm!644037 m!7817526))

(declare-fun m!7817528 () Bool)

(assert (=> b!7087207 m!7817528))

(assert (=> b!7087040 d!2216196))

(declare-fun call!644047 () List!68723)

(declare-fun c!1322622 () Bool)

(declare-fun call!644046 () (Set Context!13512))

(declare-fun c!1322624 () Bool)

(declare-fun bm!644038 () Bool)

(declare-fun c!1322621 () Bool)

(assert (=> bm!644038 (= call!644046 (derivationStepZipperDown!2339 (ite c!1322622 (regTwo!36033 (regTwo!36033 r!11554)) (ite c!1322624 (regTwo!36032 (regTwo!36033 r!11554)) (ite c!1322621 (regOne!36032 (regTwo!36033 r!11554)) (reg!18089 (regTwo!36033 r!11554))))) (ite (or c!1322622 c!1322624) lt!2554800 (Context!13513 call!644047)) a!1901))))

(declare-fun b!7087211 () Bool)

(declare-fun e!4260695 () Bool)

(assert (=> b!7087211 (= c!1322624 e!4260695)))

(declare-fun res!2895009 () Bool)

(assert (=> b!7087211 (=> (not res!2895009) (not e!4260695))))

(assert (=> b!7087211 (= res!2895009 (is-Concat!26605 (regTwo!36033 r!11554)))))

(declare-fun e!4260690 () (Set Context!13512))

(declare-fun e!4260693 () (Set Context!13512))

(assert (=> b!7087211 (= e!4260690 e!4260693)))

(declare-fun b!7087212 () Bool)

(declare-fun c!1322620 () Bool)

(assert (=> b!7087212 (= c!1322620 (is-Star!17760 (regTwo!36033 r!11554)))))

(declare-fun e!4260691 () (Set Context!13512))

(declare-fun e!4260694 () (Set Context!13512))

(assert (=> b!7087212 (= e!4260691 e!4260694)))

(declare-fun b!7087214 () Bool)

(declare-fun call!644048 () (Set Context!13512))

(assert (=> b!7087214 (= e!4260690 (set.union call!644048 call!644046))))

(declare-fun b!7087215 () Bool)

(assert (=> b!7087215 (= e!4260695 (nullable!7404 (regOne!36032 (regTwo!36033 r!11554))))))

(declare-fun b!7087216 () Bool)

(declare-fun call!644044 () (Set Context!13512))

(assert (=> b!7087216 (= e!4260691 call!644044)))

(declare-fun b!7087217 () Bool)

(assert (=> b!7087217 (= e!4260693 e!4260691)))

(assert (=> b!7087217 (= c!1322621 (is-Concat!26605 (regTwo!36033 r!11554)))))

(declare-fun bm!644039 () Bool)

(declare-fun call!644043 () (Set Context!13512))

(assert (=> bm!644039 (= call!644044 call!644043)))

(declare-fun b!7087218 () Bool)

(declare-fun e!4260692 () (Set Context!13512))

(assert (=> b!7087218 (= e!4260692 (set.insert lt!2554800 (as set.empty (Set Context!13512))))))

(declare-fun b!7087219 () Bool)

(assert (=> b!7087219 (= e!4260693 (set.union call!644048 call!644043))))

(declare-fun bm!644040 () Bool)

(declare-fun call!644045 () List!68723)

(assert (=> bm!644040 (= call!644045 ($colon$colon!2687 (exprs!7256 lt!2554800) (ite (or c!1322624 c!1322621) (regTwo!36032 (regTwo!36033 r!11554)) (regTwo!36033 r!11554))))))

(declare-fun bm!644041 () Bool)

(assert (=> bm!644041 (= call!644043 call!644046)))

(declare-fun d!2216198 () Bool)

(declare-fun c!1322623 () Bool)

(assert (=> d!2216198 (= c!1322623 (and (is-ElementMatch!17760 (regTwo!36033 r!11554)) (= (c!1322567 (regTwo!36033 r!11554)) a!1901)))))

(assert (=> d!2216198 (= (derivationStepZipperDown!2339 (regTwo!36033 r!11554) lt!2554800 a!1901) e!4260692)))

(declare-fun b!7087213 () Bool)

(assert (=> b!7087213 (= e!4260694 (as set.empty (Set Context!13512)))))

(declare-fun bm!644042 () Bool)

(assert (=> bm!644042 (= call!644047 call!644045)))

(declare-fun bm!644043 () Bool)

(assert (=> bm!644043 (= call!644048 (derivationStepZipperDown!2339 (ite c!1322622 (regOne!36033 (regTwo!36033 r!11554)) (regOne!36032 (regTwo!36033 r!11554))) (ite c!1322622 lt!2554800 (Context!13513 call!644045)) a!1901))))

(declare-fun b!7087220 () Bool)

(assert (=> b!7087220 (= e!4260694 call!644044)))

(declare-fun b!7087221 () Bool)

(assert (=> b!7087221 (= e!4260692 e!4260690)))

(assert (=> b!7087221 (= c!1322622 (is-Union!17760 (regTwo!36033 r!11554)))))

(assert (= (and d!2216198 c!1322623) b!7087218))

(assert (= (and d!2216198 (not c!1322623)) b!7087221))

(assert (= (and b!7087221 c!1322622) b!7087214))

(assert (= (and b!7087221 (not c!1322622)) b!7087211))

(assert (= (and b!7087211 res!2895009) b!7087215))

(assert (= (and b!7087211 c!1322624) b!7087219))

(assert (= (and b!7087211 (not c!1322624)) b!7087217))

(assert (= (and b!7087217 c!1322621) b!7087216))

(assert (= (and b!7087217 (not c!1322621)) b!7087212))

(assert (= (and b!7087212 c!1322620) b!7087220))

(assert (= (and b!7087212 (not c!1322620)) b!7087213))

(assert (= (or b!7087216 b!7087220) bm!644042))

(assert (= (or b!7087216 b!7087220) bm!644039))

(assert (= (or b!7087219 bm!644039) bm!644041))

(assert (= (or b!7087219 bm!644042) bm!644040))

(assert (= (or b!7087214 bm!644041) bm!644038))

(assert (= (or b!7087214 b!7087219) bm!644043))

(assert (=> b!7087215 m!7817468))

(declare-fun m!7817530 () Bool)

(assert (=> bm!644038 m!7817530))

(declare-fun m!7817532 () Bool)

(assert (=> bm!644040 m!7817532))

(declare-fun m!7817534 () Bool)

(assert (=> bm!644043 m!7817534))

(assert (=> b!7087218 m!7817528))

(assert (=> b!7087040 d!2216198))

(declare-fun c!1322626 () Bool)

(declare-fun call!644052 () (Set Context!13512))

(declare-fun bm!644044 () Bool)

(declare-fun c!1322627 () Bool)

(declare-fun c!1322629 () Bool)

(declare-fun call!644053 () List!68723)

(assert (=> bm!644044 (= call!644052 (derivationStepZipperDown!2339 (ite c!1322627 (regTwo!36033 (regOne!36033 r!11554)) (ite c!1322629 (regTwo!36032 (regOne!36033 r!11554)) (ite c!1322626 (regOne!36032 (regOne!36033 r!11554)) (reg!18089 (regOne!36033 r!11554))))) (ite (or c!1322627 c!1322629) lt!2554800 (Context!13513 call!644053)) a!1901))))

(declare-fun b!7087222 () Bool)

(declare-fun e!4260701 () Bool)

(assert (=> b!7087222 (= c!1322629 e!4260701)))

(declare-fun res!2895010 () Bool)

(assert (=> b!7087222 (=> (not res!2895010) (not e!4260701))))

(assert (=> b!7087222 (= res!2895010 (is-Concat!26605 (regOne!36033 r!11554)))))

(declare-fun e!4260696 () (Set Context!13512))

(declare-fun e!4260699 () (Set Context!13512))

(assert (=> b!7087222 (= e!4260696 e!4260699)))

(declare-fun b!7087223 () Bool)

(declare-fun c!1322625 () Bool)

(assert (=> b!7087223 (= c!1322625 (is-Star!17760 (regOne!36033 r!11554)))))

(declare-fun e!4260697 () (Set Context!13512))

(declare-fun e!4260700 () (Set Context!13512))

(assert (=> b!7087223 (= e!4260697 e!4260700)))

(declare-fun b!7087225 () Bool)

(declare-fun call!644054 () (Set Context!13512))

(assert (=> b!7087225 (= e!4260696 (set.union call!644054 call!644052))))

(declare-fun b!7087226 () Bool)

(assert (=> b!7087226 (= e!4260701 (nullable!7404 (regOne!36032 (regOne!36033 r!11554))))))

(declare-fun b!7087227 () Bool)

(declare-fun call!644050 () (Set Context!13512))

(assert (=> b!7087227 (= e!4260697 call!644050)))

(declare-fun b!7087228 () Bool)

(assert (=> b!7087228 (= e!4260699 e!4260697)))

(assert (=> b!7087228 (= c!1322626 (is-Concat!26605 (regOne!36033 r!11554)))))

(declare-fun bm!644045 () Bool)

(declare-fun call!644049 () (Set Context!13512))

(assert (=> bm!644045 (= call!644050 call!644049)))

(declare-fun b!7087229 () Bool)

(declare-fun e!4260698 () (Set Context!13512))

(assert (=> b!7087229 (= e!4260698 (set.insert lt!2554800 (as set.empty (Set Context!13512))))))

(declare-fun b!7087230 () Bool)

(assert (=> b!7087230 (= e!4260699 (set.union call!644054 call!644049))))

(declare-fun bm!644046 () Bool)

(declare-fun call!644051 () List!68723)

(assert (=> bm!644046 (= call!644051 ($colon$colon!2687 (exprs!7256 lt!2554800) (ite (or c!1322629 c!1322626) (regTwo!36032 (regOne!36033 r!11554)) (regOne!36033 r!11554))))))

(declare-fun bm!644047 () Bool)

(assert (=> bm!644047 (= call!644049 call!644052)))

(declare-fun d!2216200 () Bool)

(declare-fun c!1322628 () Bool)

(assert (=> d!2216200 (= c!1322628 (and (is-ElementMatch!17760 (regOne!36033 r!11554)) (= (c!1322567 (regOne!36033 r!11554)) a!1901)))))

(assert (=> d!2216200 (= (derivationStepZipperDown!2339 (regOne!36033 r!11554) lt!2554800 a!1901) e!4260698)))

(declare-fun b!7087224 () Bool)

(assert (=> b!7087224 (= e!4260700 (as set.empty (Set Context!13512)))))

(declare-fun bm!644048 () Bool)

(assert (=> bm!644048 (= call!644053 call!644051)))

(declare-fun bm!644049 () Bool)

(assert (=> bm!644049 (= call!644054 (derivationStepZipperDown!2339 (ite c!1322627 (regOne!36033 (regOne!36033 r!11554)) (regOne!36032 (regOne!36033 r!11554))) (ite c!1322627 lt!2554800 (Context!13513 call!644051)) a!1901))))

(declare-fun b!7087231 () Bool)

(assert (=> b!7087231 (= e!4260700 call!644050)))

(declare-fun b!7087232 () Bool)

(assert (=> b!7087232 (= e!4260698 e!4260696)))

(assert (=> b!7087232 (= c!1322627 (is-Union!17760 (regOne!36033 r!11554)))))

(assert (= (and d!2216200 c!1322628) b!7087229))

(assert (= (and d!2216200 (not c!1322628)) b!7087232))

(assert (= (and b!7087232 c!1322627) b!7087225))

(assert (= (and b!7087232 (not c!1322627)) b!7087222))

(assert (= (and b!7087222 res!2895010) b!7087226))

(assert (= (and b!7087222 c!1322629) b!7087230))

(assert (= (and b!7087222 (not c!1322629)) b!7087228))

(assert (= (and b!7087228 c!1322626) b!7087227))

(assert (= (and b!7087228 (not c!1322626)) b!7087223))

(assert (= (and b!7087223 c!1322625) b!7087231))

(assert (= (and b!7087223 (not c!1322625)) b!7087224))

(assert (= (or b!7087227 b!7087231) bm!644048))

(assert (= (or b!7087227 b!7087231) bm!644045))

(assert (= (or b!7087230 bm!644045) bm!644047))

(assert (= (or b!7087230 bm!644048) bm!644046))

(assert (= (or b!7087225 bm!644047) bm!644044))

(assert (= (or b!7087225 b!7087230) bm!644049))

(assert (=> b!7087226 m!7817498))

(declare-fun m!7817536 () Bool)

(assert (=> bm!644044 m!7817536))

(declare-fun m!7817538 () Bool)

(assert (=> bm!644046 m!7817538))

(declare-fun m!7817540 () Bool)

(assert (=> bm!644049 m!7817540))

(assert (=> b!7087229 m!7817528))

(assert (=> b!7087040 d!2216200))

(declare-fun e!4260712 () Bool)

(declare-fun b!7087255 () Bool)

(declare-fun lt!2554850 () List!68723)

(assert (=> b!7087255 (= e!4260712 (or (not (= (exprs!7256 auxCtx!45) Nil!68599)) (= lt!2554850 (exprs!7256 c!9994))))))

(declare-fun b!7087252 () Bool)

(declare-fun e!4260713 () List!68723)

(assert (=> b!7087252 (= e!4260713 (exprs!7256 auxCtx!45))))

(declare-fun b!7087253 () Bool)

(assert (=> b!7087253 (= e!4260713 (Cons!68599 (h!75047 (exprs!7256 c!9994)) (++!15933 (t!382508 (exprs!7256 c!9994)) (exprs!7256 auxCtx!45))))))

(declare-fun b!7087254 () Bool)

(declare-fun res!2895017 () Bool)

(assert (=> b!7087254 (=> (not res!2895017) (not e!4260712))))

(declare-fun size!41297 (List!68723) Int)

(assert (=> b!7087254 (= res!2895017 (= (size!41297 lt!2554850) (+ (size!41297 (exprs!7256 c!9994)) (size!41297 (exprs!7256 auxCtx!45)))))))

(declare-fun d!2216202 () Bool)

(assert (=> d!2216202 e!4260712))

(declare-fun res!2895016 () Bool)

(assert (=> d!2216202 (=> (not res!2895016) (not e!4260712))))

(declare-fun content!13922 (List!68723) (Set Regex!17760))

(assert (=> d!2216202 (= res!2895016 (= (content!13922 lt!2554850) (set.union (content!13922 (exprs!7256 c!9994)) (content!13922 (exprs!7256 auxCtx!45)))))))

(assert (=> d!2216202 (= lt!2554850 e!4260713)))

(declare-fun c!1322637 () Bool)

(assert (=> d!2216202 (= c!1322637 (is-Nil!68599 (exprs!7256 c!9994)))))

(assert (=> d!2216202 (= (++!15933 (exprs!7256 c!9994) (exprs!7256 auxCtx!45)) lt!2554850)))

(assert (= (and d!2216202 c!1322637) b!7087252))

(assert (= (and d!2216202 (not c!1322637)) b!7087253))

(assert (= (and d!2216202 res!2895016) b!7087254))

(assert (= (and b!7087254 res!2895017) b!7087255))

(declare-fun m!7817550 () Bool)

(assert (=> b!7087253 m!7817550))

(declare-fun m!7817554 () Bool)

(assert (=> b!7087254 m!7817554))

(declare-fun m!7817556 () Bool)

(assert (=> b!7087254 m!7817556))

(declare-fun m!7817558 () Bool)

(assert (=> b!7087254 m!7817558))

(declare-fun m!7817560 () Bool)

(assert (=> d!2216202 m!7817560))

(declare-fun m!7817562 () Bool)

(assert (=> d!2216202 m!7817562))

(declare-fun m!7817564 () Bool)

(assert (=> d!2216202 m!7817564))

(assert (=> b!7087040 d!2216202))

(assert (=> b!7087040 d!2216190))

(declare-fun b!7087260 () Bool)

(declare-fun e!4260716 () Bool)

(declare-fun tp!1946275 () Bool)

(declare-fun tp!1946276 () Bool)

(assert (=> b!7087260 (= e!4260716 (and tp!1946275 tp!1946276))))

(assert (=> b!7087036 (= tp!1946243 e!4260716)))

(assert (= (and b!7087036 (is-Cons!68599 (exprs!7256 auxCtx!45))) b!7087260))

(declare-fun b!7087261 () Bool)

(declare-fun e!4260717 () Bool)

(declare-fun tp!1946277 () Bool)

(declare-fun tp!1946278 () Bool)

(assert (=> b!7087261 (= e!4260717 (and tp!1946277 tp!1946278))))

(assert (=> b!7087041 (= tp!1946247 e!4260717)))

(assert (= (and b!7087041 (is-Cons!68599 (exprs!7256 c!9994))) b!7087261))

(declare-fun b!7087273 () Bool)

(declare-fun e!4260720 () Bool)

(declare-fun tp!1946289 () Bool)

(declare-fun tp!1946292 () Bool)

(assert (=> b!7087273 (= e!4260720 (and tp!1946289 tp!1946292))))

(declare-fun b!7087274 () Bool)

(declare-fun tp!1946290 () Bool)

(assert (=> b!7087274 (= e!4260720 tp!1946290)))

(assert (=> b!7087038 (= tp!1946248 e!4260720)))

(declare-fun b!7087275 () Bool)

(declare-fun tp!1946293 () Bool)

(declare-fun tp!1946291 () Bool)

(assert (=> b!7087275 (= e!4260720 (and tp!1946293 tp!1946291))))

(declare-fun b!7087272 () Bool)

(assert (=> b!7087272 (= e!4260720 tp_is_empty!44753)))

(assert (= (and b!7087038 (is-ElementMatch!17760 (regOne!36033 r!11554))) b!7087272))

(assert (= (and b!7087038 (is-Concat!26605 (regOne!36033 r!11554))) b!7087273))

(assert (= (and b!7087038 (is-Star!17760 (regOne!36033 r!11554))) b!7087274))

(assert (= (and b!7087038 (is-Union!17760 (regOne!36033 r!11554))) b!7087275))

(declare-fun b!7087277 () Bool)

(declare-fun e!4260721 () Bool)

(declare-fun tp!1946294 () Bool)

(declare-fun tp!1946297 () Bool)

(assert (=> b!7087277 (= e!4260721 (and tp!1946294 tp!1946297))))

(declare-fun b!7087278 () Bool)

(declare-fun tp!1946295 () Bool)

(assert (=> b!7087278 (= e!4260721 tp!1946295)))

(assert (=> b!7087038 (= tp!1946245 e!4260721)))

(declare-fun b!7087279 () Bool)

(declare-fun tp!1946298 () Bool)

(declare-fun tp!1946296 () Bool)

(assert (=> b!7087279 (= e!4260721 (and tp!1946298 tp!1946296))))

(declare-fun b!7087276 () Bool)

(assert (=> b!7087276 (= e!4260721 tp_is_empty!44753)))

(assert (= (and b!7087038 (is-ElementMatch!17760 (regTwo!36033 r!11554))) b!7087276))

(assert (= (and b!7087038 (is-Concat!26605 (regTwo!36033 r!11554))) b!7087277))

(assert (= (and b!7087038 (is-Star!17760 (regTwo!36033 r!11554))) b!7087278))

(assert (= (and b!7087038 (is-Union!17760 (regTwo!36033 r!11554))) b!7087279))

(declare-fun b!7087281 () Bool)

(declare-fun e!4260722 () Bool)

(declare-fun tp!1946299 () Bool)

(declare-fun tp!1946302 () Bool)

(assert (=> b!7087281 (= e!4260722 (and tp!1946299 tp!1946302))))

(declare-fun b!7087282 () Bool)

(declare-fun tp!1946300 () Bool)

(assert (=> b!7087282 (= e!4260722 tp!1946300)))

(assert (=> b!7087039 (= tp!1946244 e!4260722)))

(declare-fun b!7087283 () Bool)

(declare-fun tp!1946303 () Bool)

(declare-fun tp!1946301 () Bool)

(assert (=> b!7087283 (= e!4260722 (and tp!1946303 tp!1946301))))

(declare-fun b!7087280 () Bool)

(assert (=> b!7087280 (= e!4260722 tp_is_empty!44753)))

(assert (= (and b!7087039 (is-ElementMatch!17760 (regOne!36032 r!11554))) b!7087280))

(assert (= (and b!7087039 (is-Concat!26605 (regOne!36032 r!11554))) b!7087281))

(assert (= (and b!7087039 (is-Star!17760 (regOne!36032 r!11554))) b!7087282))

(assert (= (and b!7087039 (is-Union!17760 (regOne!36032 r!11554))) b!7087283))

(declare-fun b!7087285 () Bool)

(declare-fun e!4260723 () Bool)

(declare-fun tp!1946304 () Bool)

(declare-fun tp!1946307 () Bool)

(assert (=> b!7087285 (= e!4260723 (and tp!1946304 tp!1946307))))

(declare-fun b!7087286 () Bool)

(declare-fun tp!1946305 () Bool)

(assert (=> b!7087286 (= e!4260723 tp!1946305)))

(assert (=> b!7087039 (= tp!1946249 e!4260723)))

(declare-fun b!7087287 () Bool)

(declare-fun tp!1946308 () Bool)

(declare-fun tp!1946306 () Bool)

(assert (=> b!7087287 (= e!4260723 (and tp!1946308 tp!1946306))))

(declare-fun b!7087284 () Bool)

(assert (=> b!7087284 (= e!4260723 tp_is_empty!44753)))

(assert (= (and b!7087039 (is-ElementMatch!17760 (regTwo!36032 r!11554))) b!7087284))

(assert (= (and b!7087039 (is-Concat!26605 (regTwo!36032 r!11554))) b!7087285))

(assert (= (and b!7087039 (is-Star!17760 (regTwo!36032 r!11554))) b!7087286))

(assert (= (and b!7087039 (is-Union!17760 (regTwo!36032 r!11554))) b!7087287))

(declare-fun b!7087289 () Bool)

(declare-fun e!4260724 () Bool)

(declare-fun tp!1946309 () Bool)

(declare-fun tp!1946312 () Bool)

(assert (=> b!7087289 (= e!4260724 (and tp!1946309 tp!1946312))))

(declare-fun b!7087290 () Bool)

(declare-fun tp!1946310 () Bool)

(assert (=> b!7087290 (= e!4260724 tp!1946310)))

(assert (=> b!7087035 (= tp!1946246 e!4260724)))

(declare-fun b!7087291 () Bool)

(declare-fun tp!1946313 () Bool)

(declare-fun tp!1946311 () Bool)

(assert (=> b!7087291 (= e!4260724 (and tp!1946313 tp!1946311))))

(declare-fun b!7087288 () Bool)

(assert (=> b!7087288 (= e!4260724 tp_is_empty!44753)))

(assert (= (and b!7087035 (is-ElementMatch!17760 (reg!18089 r!11554))) b!7087288))

(assert (= (and b!7087035 (is-Concat!26605 (reg!18089 r!11554))) b!7087289))

(assert (= (and b!7087035 (is-Star!17760 (reg!18089 r!11554))) b!7087290))

(assert (= (and b!7087035 (is-Union!17760 (reg!18089 r!11554))) b!7087291))

(push 1)

(assert (not bm!644005))

(assert (not bm!644038))

(assert (not bm!644044))

(assert (not d!2216190))

(assert (not bm!644011))

(assert (not b!7087089))

(assert (not bm!643983))

(assert (not bm!644040))

(assert (not d!2216202))

(assert (not b!7087261))

(assert (not b!7087285))

(assert (not b!7087160))

(assert (not b!7087287))

(assert (not b!7087253))

(assert (not b!7087215))

(assert (not b!7087204))

(assert (not b!7087291))

(assert (not bm!644018))

(assert (not b!7087275))

(assert (not b!7087283))

(assert (not b!7087277))

(assert (not bm!644032))

(assert (not b!7087282))

(assert (not b!7087278))

(assert (not bm!644049))

(assert (not bm!644043))

(assert (not b!7087274))

(assert (not bm!644023))

(assert (not b!7087254))

(assert (not b!7087289))

(assert (not b!7087286))

(assert (not d!2216170))

(assert (not b!7087290))

(assert (not bm!644013))

(assert (not b!7087279))

(assert (not d!2216186))

(assert (not b!7087193))

(assert (not d!2216194))

(assert (not d!2216178))

(assert (not bm!643981))

(assert (not bm!644034))

(assert (not d!2216172))

(assert (not d!2216192))

(assert (not b!7087260))

(assert (not bm!644020))

(assert tp_is_empty!44753)

(assert (not bm!644007))

(assert (not b!7087226))

(assert (not b!7087273))

(assert (not bm!644010))

(assert (not b!7087149))

(assert (not bm!644046))

(assert (not b!7087281))

(assert (not bm!644037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

