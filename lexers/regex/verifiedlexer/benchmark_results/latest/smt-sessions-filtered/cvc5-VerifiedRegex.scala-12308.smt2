; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691014 () Bool)

(assert start!691014)

(declare-fun b!7098759 () Bool)

(declare-fun e!4266951 () Bool)

(declare-fun tp!1951199 () Bool)

(declare-fun tp!1951195 () Bool)

(assert (=> b!7098759 (= e!4266951 (and tp!1951199 tp!1951195))))

(declare-fun b!7098760 () Bool)

(declare-fun e!4266949 () Bool)

(declare-datatypes ((C!35986 0))(
  ( (C!35987 (val!27699 Int)) )
))
(declare-datatypes ((Regex!17858 0))(
  ( (ElementMatch!17858 (c!1324603 C!35986)) (Concat!26703 (regOne!36228 Regex!17858) (regTwo!36228 Regex!17858)) (EmptyExpr!17858) (Star!17858 (reg!18187 Regex!17858)) (EmptyLang!17858) (Union!17858 (regOne!36229 Regex!17858) (regTwo!36229 Regex!17858)) )
))
(declare-datatypes ((List!68821 0))(
  ( (Nil!68697) (Cons!68697 (h!75145 Regex!17858) (t!382628 List!68821)) )
))
(declare-datatypes ((Context!13708 0))(
  ( (Context!13709 (exprs!7354 List!68821)) )
))
(declare-fun c!9994 () Context!13708)

(declare-fun lambda!430758 () Int)

(declare-fun forall!16772 (List!68821 Int) Bool)

(assert (=> b!7098760 (= e!4266949 (forall!16772 (exprs!7354 c!9994) lambda!430758))))

(declare-fun b!7098761 () Bool)

(declare-fun e!4266945 () Bool)

(declare-fun e!4266947 () Bool)

(assert (=> b!7098761 (= e!4266945 e!4266947)))

(declare-fun res!2898688 () Bool)

(assert (=> b!7098761 (=> (not res!2898688) (not e!4266947))))

(declare-fun r!11554 () Regex!17858)

(declare-fun validRegex!9133 (Regex!17858) Bool)

(assert (=> b!7098761 (= res!2898688 (validRegex!9133 r!11554))))

(declare-fun lt!2557752 () List!68821)

(declare-fun auxCtx!45 () Context!13708)

(declare-fun ++!16018 (List!68821 List!68821) List!68821)

(assert (=> b!7098761 (= lt!2557752 (++!16018 (exprs!7354 c!9994) (exprs!7354 auxCtx!45)))))

(declare-datatypes ((Unit!162391 0))(
  ( (Unit!162392) )
))
(declare-fun lt!2557745 () Unit!162391)

(declare-fun lemmaConcatPreservesForall!1149 (List!68821 List!68821 Int) Unit!162391)

(assert (=> b!7098761 (= lt!2557745 (lemmaConcatPreservesForall!1149 (exprs!7354 c!9994) (exprs!7354 auxCtx!45) lambda!430758))))

(declare-fun lt!2557751 () Unit!162391)

(assert (=> b!7098761 (= lt!2557751 (lemmaConcatPreservesForall!1149 (exprs!7354 c!9994) (exprs!7354 auxCtx!45) lambda!430758))))

(declare-fun b!7098762 () Bool)

(declare-fun tp!1951200 () Bool)

(assert (=> b!7098762 (= e!4266951 tp!1951200)))

(declare-fun b!7098763 () Bool)

(declare-fun e!4266948 () Bool)

(declare-fun tp!1951198 () Bool)

(assert (=> b!7098763 (= e!4266948 tp!1951198)))

(declare-fun b!7098764 () Bool)

(declare-fun e!4266946 () Bool)

(declare-fun nullable!7498 (Regex!17858) Bool)

(assert (=> b!7098764 (= e!4266946 (not (nullable!7498 (regOne!36228 r!11554))))))

(declare-fun b!7098765 () Bool)

(declare-fun res!2898690 () Bool)

(assert (=> b!7098765 (=> (not res!2898690) (not e!4266945))))

(assert (=> b!7098765 (= res!2898690 (and (not (is-Concat!26703 r!11554)) (is-Star!17858 r!11554)))))

(declare-fun b!7098766 () Bool)

(declare-fun e!4266950 () Bool)

(assert (=> b!7098766 (= e!4266950 (not e!4266949))))

(declare-fun res!2898685 () Bool)

(assert (=> b!7098766 (=> res!2898685 e!4266949)))

(declare-fun lt!2557749 () (Set Context!13708))

(declare-fun a!1901 () C!35986)

(declare-fun appendTo!901 ((Set Context!13708) Context!13708) (Set Context!13708))

(declare-fun derivationStepZipperDown!2397 (Regex!17858 Context!13708 C!35986) (Set Context!13708))

(assert (=> b!7098766 (= res!2898685 (not (= lt!2557749 (appendTo!901 (derivationStepZipperDown!2397 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2557748 () Unit!162391)

(assert (=> b!7098766 (= lt!2557748 (lemmaConcatPreservesForall!1149 (exprs!7354 c!9994) (exprs!7354 auxCtx!45) lambda!430758))))

(declare-fun lt!2557753 () Context!13708)

(declare-fun lt!2557750 () List!68821)

(assert (=> b!7098766 (= (derivationStepZipperDown!2397 (reg!18187 r!11554) (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45))) a!1901) (appendTo!901 (derivationStepZipperDown!2397 (reg!18187 r!11554) lt!2557753 a!1901) auxCtx!45))))

(declare-fun lt!2557746 () Unit!162391)

(assert (=> b!7098766 (= lt!2557746 (lemmaConcatPreservesForall!1149 lt!2557750 (exprs!7354 auxCtx!45) lambda!430758))))

(declare-fun lt!2557747 () Unit!162391)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!209 (Context!13708 Regex!17858 C!35986 Context!13708) Unit!162391)

(assert (=> b!7098766 (= lt!2557747 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!209 lt!2557753 (reg!18187 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7098766 (= lt!2557753 (Context!13709 lt!2557750))))

(declare-fun $colon$colon!2741 (List!68821 Regex!17858) List!68821)

(assert (=> b!7098766 (= lt!2557750 ($colon$colon!2741 (exprs!7354 c!9994) r!11554))))

(declare-fun b!7098767 () Bool)

(declare-fun tp_is_empty!44949 () Bool)

(assert (=> b!7098767 (= e!4266951 tp_is_empty!44949)))

(declare-fun b!7098769 () Bool)

(declare-fun e!4266952 () Bool)

(declare-fun tp!1951197 () Bool)

(assert (=> b!7098769 (= e!4266952 tp!1951197)))

(declare-fun b!7098770 () Bool)

(assert (=> b!7098770 (= e!4266947 e!4266950)))

(declare-fun res!2898692 () Bool)

(assert (=> b!7098770 (=> (not res!2898692) (not e!4266950))))

(assert (=> b!7098770 (= res!2898692 (= lt!2557749 (derivationStepZipperDown!2397 (reg!18187 r!11554) (Context!13709 ($colon$colon!2741 lt!2557752 r!11554)) a!1901)))))

(assert (=> b!7098770 (= lt!2557749 (derivationStepZipperDown!2397 r!11554 (Context!13709 lt!2557752) a!1901))))

(declare-fun b!7098768 () Bool)

(declare-fun res!2898691 () Bool)

(assert (=> b!7098768 (=> (not res!2898691) (not e!4266945))))

(assert (=> b!7098768 (= res!2898691 (and (or (not (is-ElementMatch!17858 r!11554)) (not (= (c!1324603 r!11554) a!1901))) (not (is-Union!17858 r!11554))))))

(declare-fun res!2898689 () Bool)

(assert (=> start!691014 (=> (not res!2898689) (not e!4266945))))

(assert (=> start!691014 (= res!2898689 (validRegex!9133 r!11554))))

(assert (=> start!691014 e!4266945))

(assert (=> start!691014 e!4266951))

(assert (=> start!691014 tp_is_empty!44949))

(declare-fun inv!87511 (Context!13708) Bool)

(assert (=> start!691014 (and (inv!87511 c!9994) e!4266952)))

(assert (=> start!691014 (and (inv!87511 auxCtx!45) e!4266948)))

(declare-fun b!7098771 () Bool)

(declare-fun res!2898687 () Bool)

(assert (=> b!7098771 (=> (not res!2898687) (not e!4266945))))

(assert (=> b!7098771 (= res!2898687 e!4266946)))

(declare-fun res!2898686 () Bool)

(assert (=> b!7098771 (=> res!2898686 e!4266946)))

(assert (=> b!7098771 (= res!2898686 (not (is-Concat!26703 r!11554)))))

(declare-fun b!7098772 () Bool)

(declare-fun tp!1951201 () Bool)

(declare-fun tp!1951196 () Bool)

(assert (=> b!7098772 (= e!4266951 (and tp!1951201 tp!1951196))))

(assert (= (and start!691014 res!2898689) b!7098768))

(assert (= (and b!7098768 res!2898691) b!7098771))

(assert (= (and b!7098771 (not res!2898686)) b!7098764))

(assert (= (and b!7098771 res!2898687) b!7098765))

(assert (= (and b!7098765 res!2898690) b!7098761))

(assert (= (and b!7098761 res!2898688) b!7098770))

(assert (= (and b!7098770 res!2898692) b!7098766))

(assert (= (and b!7098766 (not res!2898685)) b!7098760))

(assert (= (and start!691014 (is-ElementMatch!17858 r!11554)) b!7098767))

(assert (= (and start!691014 (is-Concat!26703 r!11554)) b!7098759))

(assert (= (and start!691014 (is-Star!17858 r!11554)) b!7098762))

(assert (= (and start!691014 (is-Union!17858 r!11554)) b!7098772))

(assert (= start!691014 b!7098769))

(assert (= start!691014 b!7098763))

(declare-fun m!7825148 () Bool)

(assert (=> b!7098766 m!7825148))

(declare-fun m!7825150 () Bool)

(assert (=> b!7098766 m!7825150))

(declare-fun m!7825152 () Bool)

(assert (=> b!7098766 m!7825152))

(declare-fun m!7825154 () Bool)

(assert (=> b!7098766 m!7825154))

(declare-fun m!7825156 () Bool)

(assert (=> b!7098766 m!7825156))

(assert (=> b!7098766 m!7825150))

(assert (=> b!7098766 m!7825156))

(declare-fun m!7825158 () Bool)

(assert (=> b!7098766 m!7825158))

(declare-fun m!7825160 () Bool)

(assert (=> b!7098766 m!7825160))

(declare-fun m!7825162 () Bool)

(assert (=> b!7098766 m!7825162))

(declare-fun m!7825164 () Bool)

(assert (=> b!7098766 m!7825164))

(declare-fun m!7825166 () Bool)

(assert (=> b!7098766 m!7825166))

(declare-fun m!7825168 () Bool)

(assert (=> b!7098761 m!7825168))

(declare-fun m!7825170 () Bool)

(assert (=> b!7098761 m!7825170))

(assert (=> b!7098761 m!7825162))

(assert (=> b!7098761 m!7825162))

(assert (=> start!691014 m!7825168))

(declare-fun m!7825172 () Bool)

(assert (=> start!691014 m!7825172))

(declare-fun m!7825174 () Bool)

(assert (=> start!691014 m!7825174))

(declare-fun m!7825176 () Bool)

(assert (=> b!7098764 m!7825176))

(declare-fun m!7825178 () Bool)

(assert (=> b!7098770 m!7825178))

(declare-fun m!7825180 () Bool)

(assert (=> b!7098770 m!7825180))

(declare-fun m!7825182 () Bool)

(assert (=> b!7098770 m!7825182))

(declare-fun m!7825184 () Bool)

(assert (=> b!7098760 m!7825184))

(push 1)

(assert (not b!7098769))

(assert (not b!7098760))

(assert (not b!7098766))

(assert (not b!7098764))

(assert (not start!691014))

(assert (not b!7098761))

(assert (not b!7098759))

(assert (not b!7098770))

(assert tp_is_empty!44949)

(assert (not b!7098763))

(assert (not b!7098772))

(assert (not b!7098762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!646189 () Bool)

(declare-fun call!646196 () Bool)

(declare-fun c!1324613 () Bool)

(assert (=> bm!646189 (= call!646196 (validRegex!9133 (ite c!1324613 (regOne!36229 r!11554) (regTwo!36228 r!11554))))))

(declare-fun b!7098851 () Bool)

(declare-fun e!4267010 () Bool)

(declare-fun e!4267011 () Bool)

(assert (=> b!7098851 (= e!4267010 e!4267011)))

(assert (=> b!7098851 (= c!1324613 (is-Union!17858 r!11554))))

(declare-fun b!7098852 () Bool)

(declare-fun e!4267006 () Bool)

(declare-fun call!646195 () Bool)

(assert (=> b!7098852 (= e!4267006 call!646195)))

(declare-fun bm!646190 () Bool)

(declare-fun c!1324614 () Bool)

(assert (=> bm!646190 (= call!646195 (validRegex!9133 (ite c!1324614 (reg!18187 r!11554) (ite c!1324613 (regTwo!36229 r!11554) (regOne!36228 r!11554)))))))

(declare-fun bm!646191 () Bool)

(declare-fun call!646194 () Bool)

(assert (=> bm!646191 (= call!646194 call!646195)))

(declare-fun b!7098853 () Bool)

(declare-fun res!2898740 () Bool)

(declare-fun e!4267009 () Bool)

(assert (=> b!7098853 (=> (not res!2898740) (not e!4267009))))

(assert (=> b!7098853 (= res!2898740 call!646196)))

(assert (=> b!7098853 (= e!4267011 e!4267009)))

(declare-fun b!7098854 () Bool)

(declare-fun e!4267007 () Bool)

(assert (=> b!7098854 (= e!4267007 call!646196)))

(declare-fun b!7098855 () Bool)

(declare-fun e!4267008 () Bool)

(assert (=> b!7098855 (= e!4267008 e!4267007)))

(declare-fun res!2898737 () Bool)

(assert (=> b!7098855 (=> (not res!2898737) (not e!4267007))))

(assert (=> b!7098855 (= res!2898737 call!646194)))

(declare-fun b!7098856 () Bool)

(declare-fun e!4267005 () Bool)

(assert (=> b!7098856 (= e!4267005 e!4267010)))

(assert (=> b!7098856 (= c!1324614 (is-Star!17858 r!11554))))

(declare-fun d!2218241 () Bool)

(declare-fun res!2898738 () Bool)

(assert (=> d!2218241 (=> res!2898738 e!4267005)))

(assert (=> d!2218241 (= res!2898738 (is-ElementMatch!17858 r!11554))))

(assert (=> d!2218241 (= (validRegex!9133 r!11554) e!4267005)))

(declare-fun b!7098857 () Bool)

(declare-fun res!2898739 () Bool)

(assert (=> b!7098857 (=> res!2898739 e!4267008)))

(assert (=> b!7098857 (= res!2898739 (not (is-Concat!26703 r!11554)))))

(assert (=> b!7098857 (= e!4267011 e!4267008)))

(declare-fun b!7098858 () Bool)

(assert (=> b!7098858 (= e!4267010 e!4267006)))

(declare-fun res!2898741 () Bool)

(assert (=> b!7098858 (= res!2898741 (not (nullable!7498 (reg!18187 r!11554))))))

(assert (=> b!7098858 (=> (not res!2898741) (not e!4267006))))

(declare-fun b!7098859 () Bool)

(assert (=> b!7098859 (= e!4267009 call!646194)))

(assert (= (and d!2218241 (not res!2898738)) b!7098856))

(assert (= (and b!7098856 c!1324614) b!7098858))

(assert (= (and b!7098856 (not c!1324614)) b!7098851))

(assert (= (and b!7098858 res!2898741) b!7098852))

(assert (= (and b!7098851 c!1324613) b!7098853))

(assert (= (and b!7098851 (not c!1324613)) b!7098857))

(assert (= (and b!7098853 res!2898740) b!7098859))

(assert (= (and b!7098857 (not res!2898739)) b!7098855))

(assert (= (and b!7098855 res!2898737) b!7098854))

(assert (= (or b!7098853 b!7098854) bm!646189))

(assert (= (or b!7098859 b!7098855) bm!646191))

(assert (= (or b!7098852 bm!646191) bm!646190))

(declare-fun m!7825224 () Bool)

(assert (=> bm!646189 m!7825224))

(declare-fun m!7825226 () Bool)

(assert (=> bm!646190 m!7825226))

(declare-fun m!7825228 () Bool)

(assert (=> b!7098858 m!7825228))

(assert (=> start!691014 d!2218241))

(declare-fun bs!1884123 () Bool)

(declare-fun d!2218243 () Bool)

(assert (= bs!1884123 (and d!2218243 b!7098761)))

(declare-fun lambda!430772 () Int)

(assert (=> bs!1884123 (= lambda!430772 lambda!430758)))

(assert (=> d!2218243 (= (inv!87511 c!9994) (forall!16772 (exprs!7354 c!9994) lambda!430772))))

(declare-fun bs!1884124 () Bool)

(assert (= bs!1884124 d!2218243))

(declare-fun m!7825234 () Bool)

(assert (=> bs!1884124 m!7825234))

(assert (=> start!691014 d!2218243))

(declare-fun bs!1884125 () Bool)

(declare-fun d!2218245 () Bool)

(assert (= bs!1884125 (and d!2218245 b!7098761)))

(declare-fun lambda!430773 () Int)

(assert (=> bs!1884125 (= lambda!430773 lambda!430758)))

(declare-fun bs!1884126 () Bool)

(assert (= bs!1884126 (and d!2218245 d!2218243)))

(assert (=> bs!1884126 (= lambda!430773 lambda!430772)))

(assert (=> d!2218245 (= (inv!87511 auxCtx!45) (forall!16772 (exprs!7354 auxCtx!45) lambda!430773))))

(declare-fun bs!1884127 () Bool)

(assert (= bs!1884127 d!2218245))

(declare-fun m!7825238 () Bool)

(assert (=> bs!1884127 m!7825238))

(assert (=> start!691014 d!2218245))

(assert (=> b!7098761 d!2218241))

(declare-fun b!7098878 () Bool)

(declare-fun e!4267024 () List!68821)

(assert (=> b!7098878 (= e!4267024 (Cons!68697 (h!75145 (exprs!7354 c!9994)) (++!16018 (t!382628 (exprs!7354 c!9994)) (exprs!7354 auxCtx!45))))))

(declare-fun d!2218249 () Bool)

(declare-fun e!4267023 () Bool)

(assert (=> d!2218249 e!4267023))

(declare-fun res!2898751 () Bool)

(assert (=> d!2218249 (=> (not res!2898751) (not e!4267023))))

(declare-fun lt!2557783 () List!68821)

(declare-fun content!13963 (List!68821) (Set Regex!17858))

(assert (=> d!2218249 (= res!2898751 (= (content!13963 lt!2557783) (set.union (content!13963 (exprs!7354 c!9994)) (content!13963 (exprs!7354 auxCtx!45)))))))

(assert (=> d!2218249 (= lt!2557783 e!4267024)))

(declare-fun c!1324619 () Bool)

(assert (=> d!2218249 (= c!1324619 (is-Nil!68697 (exprs!7354 c!9994)))))

(assert (=> d!2218249 (= (++!16018 (exprs!7354 c!9994) (exprs!7354 auxCtx!45)) lt!2557783)))

(declare-fun b!7098880 () Bool)

(assert (=> b!7098880 (= e!4267023 (or (not (= (exprs!7354 auxCtx!45) Nil!68697)) (= lt!2557783 (exprs!7354 c!9994))))))

(declare-fun b!7098877 () Bool)

(assert (=> b!7098877 (= e!4267024 (exprs!7354 auxCtx!45))))

(declare-fun b!7098879 () Bool)

(declare-fun res!2898752 () Bool)

(assert (=> b!7098879 (=> (not res!2898752) (not e!4267023))))

(declare-fun size!41338 (List!68821) Int)

(assert (=> b!7098879 (= res!2898752 (= (size!41338 lt!2557783) (+ (size!41338 (exprs!7354 c!9994)) (size!41338 (exprs!7354 auxCtx!45)))))))

(assert (= (and d!2218249 c!1324619) b!7098877))

(assert (= (and d!2218249 (not c!1324619)) b!7098878))

(assert (= (and d!2218249 res!2898751) b!7098879))

(assert (= (and b!7098879 res!2898752) b!7098880))

(declare-fun m!7825244 () Bool)

(assert (=> b!7098878 m!7825244))

(declare-fun m!7825246 () Bool)

(assert (=> d!2218249 m!7825246))

(declare-fun m!7825248 () Bool)

(assert (=> d!2218249 m!7825248))

(declare-fun m!7825250 () Bool)

(assert (=> d!2218249 m!7825250))

(declare-fun m!7825252 () Bool)

(assert (=> b!7098879 m!7825252))

(declare-fun m!7825254 () Bool)

(assert (=> b!7098879 m!7825254))

(declare-fun m!7825256 () Bool)

(assert (=> b!7098879 m!7825256))

(assert (=> b!7098761 d!2218249))

(declare-fun d!2218255 () Bool)

(assert (=> d!2218255 (forall!16772 (++!16018 (exprs!7354 c!9994) (exprs!7354 auxCtx!45)) lambda!430758)))

(declare-fun lt!2557786 () Unit!162391)

(declare-fun choose!54733 (List!68821 List!68821 Int) Unit!162391)

(assert (=> d!2218255 (= lt!2557786 (choose!54733 (exprs!7354 c!9994) (exprs!7354 auxCtx!45) lambda!430758))))

(assert (=> d!2218255 (forall!16772 (exprs!7354 c!9994) lambda!430758)))

(assert (=> d!2218255 (= (lemmaConcatPreservesForall!1149 (exprs!7354 c!9994) (exprs!7354 auxCtx!45) lambda!430758) lt!2557786)))

(declare-fun bs!1884133 () Bool)

(assert (= bs!1884133 d!2218255))

(assert (=> bs!1884133 m!7825170))

(assert (=> bs!1884133 m!7825170))

(declare-fun m!7825258 () Bool)

(assert (=> bs!1884133 m!7825258))

(declare-fun m!7825260 () Bool)

(assert (=> bs!1884133 m!7825260))

(assert (=> bs!1884133 m!7825184))

(assert (=> b!7098761 d!2218255))

(declare-fun bm!646207 () Bool)

(declare-fun call!646214 () (Set Context!13708))

(declare-fun call!646213 () (Set Context!13708))

(assert (=> bm!646207 (= call!646214 call!646213)))

(declare-fun call!646217 () (Set Context!13708))

(declare-fun bm!646208 () Bool)

(declare-fun c!1324631 () Bool)

(declare-fun call!646212 () List!68821)

(assert (=> bm!646208 (= call!646217 (derivationStepZipperDown!2397 (ite c!1324631 (regTwo!36229 (reg!18187 r!11554)) (regOne!36228 (reg!18187 r!11554))) (ite c!1324631 lt!2557753 (Context!13709 call!646212)) a!1901))))

(declare-fun bm!646209 () Bool)

(declare-fun call!646216 () (Set Context!13708))

(assert (=> bm!646209 (= call!646216 call!646214)))

(declare-fun b!7098909 () Bool)

(declare-fun e!4267047 () (Set Context!13708))

(declare-fun e!4267043 () (Set Context!13708))

(assert (=> b!7098909 (= e!4267047 e!4267043)))

(declare-fun c!1324630 () Bool)

(assert (=> b!7098909 (= c!1324630 (is-Concat!26703 (reg!18187 r!11554)))))

(declare-fun b!7098910 () Bool)

(assert (=> b!7098910 (= e!4267047 (set.union call!646217 call!646214))))

(declare-fun b!7098911 () Bool)

(declare-fun e!4267045 () (Set Context!13708))

(assert (=> b!7098911 (= e!4267045 call!646216)))

(declare-fun b!7098912 () Bool)

(declare-fun c!1324633 () Bool)

(assert (=> b!7098912 (= c!1324633 (is-Star!17858 (reg!18187 r!11554)))))

(assert (=> b!7098912 (= e!4267043 e!4267045)))

(declare-fun b!7098913 () Bool)

(declare-fun e!4267044 () Bool)

(assert (=> b!7098913 (= e!4267044 (nullable!7498 (regOne!36228 (reg!18187 r!11554))))))

(declare-fun c!1324632 () Bool)

(declare-fun bm!646210 () Bool)

(assert (=> bm!646210 (= call!646212 ($colon$colon!2741 (exprs!7354 lt!2557753) (ite (or c!1324632 c!1324630) (regTwo!36228 (reg!18187 r!11554)) (reg!18187 r!11554))))))

(declare-fun b!7098914 () Bool)

(declare-fun e!4267048 () (Set Context!13708))

(assert (=> b!7098914 (= e!4267048 (set.insert lt!2557753 (as set.empty (Set Context!13708))))))

(declare-fun b!7098915 () Bool)

(assert (=> b!7098915 (= e!4267045 (as set.empty (Set Context!13708)))))

(declare-fun b!7098916 () Bool)

(declare-fun e!4267046 () (Set Context!13708))

(assert (=> b!7098916 (= e!4267046 (set.union call!646213 call!646217))))

(declare-fun b!7098917 () Bool)

(assert (=> b!7098917 (= c!1324632 e!4267044)))

(declare-fun res!2898761 () Bool)

(assert (=> b!7098917 (=> (not res!2898761) (not e!4267044))))

(assert (=> b!7098917 (= res!2898761 (is-Concat!26703 (reg!18187 r!11554)))))

(assert (=> b!7098917 (= e!4267046 e!4267047)))

(declare-fun b!7098918 () Bool)

(assert (=> b!7098918 (= e!4267043 call!646216)))

(declare-fun bm!646211 () Bool)

(declare-fun call!646215 () List!68821)

(assert (=> bm!646211 (= call!646213 (derivationStepZipperDown!2397 (ite c!1324631 (regOne!36229 (reg!18187 r!11554)) (ite c!1324632 (regTwo!36228 (reg!18187 r!11554)) (ite c!1324630 (regOne!36228 (reg!18187 r!11554)) (reg!18187 (reg!18187 r!11554))))) (ite (or c!1324631 c!1324632) lt!2557753 (Context!13709 call!646215)) a!1901))))

(declare-fun d!2218257 () Bool)

(declare-fun c!1324634 () Bool)

(assert (=> d!2218257 (= c!1324634 (and (is-ElementMatch!17858 (reg!18187 r!11554)) (= (c!1324603 (reg!18187 r!11554)) a!1901)))))

(assert (=> d!2218257 (= (derivationStepZipperDown!2397 (reg!18187 r!11554) lt!2557753 a!1901) e!4267048)))

(declare-fun bm!646212 () Bool)

(assert (=> bm!646212 (= call!646215 call!646212)))

(declare-fun b!7098919 () Bool)

(assert (=> b!7098919 (= e!4267048 e!4267046)))

(assert (=> b!7098919 (= c!1324631 (is-Union!17858 (reg!18187 r!11554)))))

(assert (= (and d!2218257 c!1324634) b!7098914))

(assert (= (and d!2218257 (not c!1324634)) b!7098919))

(assert (= (and b!7098919 c!1324631) b!7098916))

(assert (= (and b!7098919 (not c!1324631)) b!7098917))

(assert (= (and b!7098917 res!2898761) b!7098913))

(assert (= (and b!7098917 c!1324632) b!7098910))

(assert (= (and b!7098917 (not c!1324632)) b!7098909))

(assert (= (and b!7098909 c!1324630) b!7098918))

(assert (= (and b!7098909 (not c!1324630)) b!7098912))

(assert (= (and b!7098912 c!1324633) b!7098911))

(assert (= (and b!7098912 (not c!1324633)) b!7098915))

(assert (= (or b!7098918 b!7098911) bm!646212))

(assert (= (or b!7098918 b!7098911) bm!646209))

(assert (= (or b!7098910 bm!646209) bm!646207))

(assert (= (or b!7098910 bm!646212) bm!646210))

(assert (= (or b!7098916 b!7098910) bm!646208))

(assert (= (or b!7098916 bm!646207) bm!646211))

(declare-fun m!7825266 () Bool)

(assert (=> bm!646208 m!7825266))

(declare-fun m!7825268 () Bool)

(assert (=> b!7098914 m!7825268))

(declare-fun m!7825270 () Bool)

(assert (=> b!7098913 m!7825270))

(declare-fun m!7825272 () Bool)

(assert (=> bm!646211 m!7825272))

(declare-fun m!7825274 () Bool)

(assert (=> bm!646210 m!7825274))

(assert (=> b!7098766 d!2218257))

(declare-fun b!7098939 () Bool)

(declare-fun e!4267060 () List!68821)

(assert (=> b!7098939 (= e!4267060 (Cons!68697 (h!75145 lt!2557750) (++!16018 (t!382628 lt!2557750) (exprs!7354 auxCtx!45))))))

(declare-fun d!2218261 () Bool)

(declare-fun e!4267058 () Bool)

(assert (=> d!2218261 e!4267058))

(declare-fun res!2898764 () Bool)

(assert (=> d!2218261 (=> (not res!2898764) (not e!4267058))))

(declare-fun lt!2557787 () List!68821)

(assert (=> d!2218261 (= res!2898764 (= (content!13963 lt!2557787) (set.union (content!13963 lt!2557750) (content!13963 (exprs!7354 auxCtx!45)))))))

(assert (=> d!2218261 (= lt!2557787 e!4267060)))

(declare-fun c!1324643 () Bool)

(assert (=> d!2218261 (= c!1324643 (is-Nil!68697 lt!2557750))))

(assert (=> d!2218261 (= (++!16018 lt!2557750 (exprs!7354 auxCtx!45)) lt!2557787)))

(declare-fun b!7098941 () Bool)

(assert (=> b!7098941 (= e!4267058 (or (not (= (exprs!7354 auxCtx!45) Nil!68697)) (= lt!2557787 lt!2557750)))))

(declare-fun b!7098938 () Bool)

(assert (=> b!7098938 (= e!4267060 (exprs!7354 auxCtx!45))))

(declare-fun b!7098940 () Bool)

(declare-fun res!2898765 () Bool)

(assert (=> b!7098940 (=> (not res!2898765) (not e!4267058))))

(assert (=> b!7098940 (= res!2898765 (= (size!41338 lt!2557787) (+ (size!41338 lt!2557750) (size!41338 (exprs!7354 auxCtx!45)))))))

(assert (= (and d!2218261 c!1324643) b!7098938))

(assert (= (and d!2218261 (not c!1324643)) b!7098939))

(assert (= (and d!2218261 res!2898764) b!7098940))

(assert (= (and b!7098940 res!2898765) b!7098941))

(declare-fun m!7825276 () Bool)

(assert (=> b!7098939 m!7825276))

(declare-fun m!7825278 () Bool)

(assert (=> d!2218261 m!7825278))

(declare-fun m!7825280 () Bool)

(assert (=> d!2218261 m!7825280))

(assert (=> d!2218261 m!7825250))

(declare-fun m!7825282 () Bool)

(assert (=> b!7098940 m!7825282))

(declare-fun m!7825284 () Bool)

(assert (=> b!7098940 m!7825284))

(assert (=> b!7098940 m!7825256))

(assert (=> b!7098766 d!2218261))

(declare-fun d!2218263 () Bool)

(assert (=> d!2218263 true))

(declare-fun lambda!430782 () Int)

(declare-fun map!16198 ((Set Context!13708) Int) (Set Context!13708))

(assert (=> d!2218263 (= (appendTo!901 (derivationStepZipperDown!2397 r!11554 c!9994 a!1901) auxCtx!45) (map!16198 (derivationStepZipperDown!2397 r!11554 c!9994 a!1901) lambda!430782))))

(declare-fun bs!1884134 () Bool)

(assert (= bs!1884134 d!2218263))

(assert (=> bs!1884134 m!7825150))

(declare-fun m!7825286 () Bool)

(assert (=> bs!1884134 m!7825286))

(assert (=> b!7098766 d!2218263))

(declare-fun bm!646221 () Bool)

(declare-fun call!646230 () (Set Context!13708))

(declare-fun call!646229 () (Set Context!13708))

(assert (=> bm!646221 (= call!646230 call!646229)))

(declare-fun bm!646222 () Bool)

(declare-fun call!646228 () List!68821)

(declare-fun c!1324648 () Bool)

(declare-fun call!646233 () (Set Context!13708))

(assert (=> bm!646222 (= call!646233 (derivationStepZipperDown!2397 (ite c!1324648 (regTwo!36229 (reg!18187 r!11554)) (regOne!36228 (reg!18187 r!11554))) (ite c!1324648 (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45))) (Context!13709 call!646228)) a!1901))))

(declare-fun bm!646223 () Bool)

(declare-fun call!646232 () (Set Context!13708))

(assert (=> bm!646223 (= call!646232 call!646230)))

(declare-fun b!7098948 () Bool)

(declare-fun e!4267067 () (Set Context!13708))

(declare-fun e!4267063 () (Set Context!13708))

(assert (=> b!7098948 (= e!4267067 e!4267063)))

(declare-fun c!1324647 () Bool)

(assert (=> b!7098948 (= c!1324647 (is-Concat!26703 (reg!18187 r!11554)))))

(declare-fun b!7098949 () Bool)

(assert (=> b!7098949 (= e!4267067 (set.union call!646233 call!646230))))

(declare-fun b!7098950 () Bool)

(declare-fun e!4267065 () (Set Context!13708))

(assert (=> b!7098950 (= e!4267065 call!646232)))

(declare-fun b!7098951 () Bool)

(declare-fun c!1324650 () Bool)

(assert (=> b!7098951 (= c!1324650 (is-Star!17858 (reg!18187 r!11554)))))

(assert (=> b!7098951 (= e!4267063 e!4267065)))

(declare-fun b!7098952 () Bool)

(declare-fun e!4267064 () Bool)

(assert (=> b!7098952 (= e!4267064 (nullable!7498 (regOne!36228 (reg!18187 r!11554))))))

(declare-fun c!1324649 () Bool)

(declare-fun bm!646224 () Bool)

(assert (=> bm!646224 (= call!646228 ($colon$colon!2741 (exprs!7354 (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45)))) (ite (or c!1324649 c!1324647) (regTwo!36228 (reg!18187 r!11554)) (reg!18187 r!11554))))))

(declare-fun b!7098953 () Bool)

(declare-fun e!4267068 () (Set Context!13708))

(assert (=> b!7098953 (= e!4267068 (set.insert (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45))) (as set.empty (Set Context!13708))))))

(declare-fun b!7098954 () Bool)

(assert (=> b!7098954 (= e!4267065 (as set.empty (Set Context!13708)))))

(declare-fun b!7098955 () Bool)

(declare-fun e!4267066 () (Set Context!13708))

(assert (=> b!7098955 (= e!4267066 (set.union call!646229 call!646233))))

(declare-fun b!7098956 () Bool)

(assert (=> b!7098956 (= c!1324649 e!4267064)))

(declare-fun res!2898766 () Bool)

(assert (=> b!7098956 (=> (not res!2898766) (not e!4267064))))

(assert (=> b!7098956 (= res!2898766 (is-Concat!26703 (reg!18187 r!11554)))))

(assert (=> b!7098956 (= e!4267066 e!4267067)))

(declare-fun b!7098957 () Bool)

(assert (=> b!7098957 (= e!4267063 call!646232)))

(declare-fun call!646231 () List!68821)

(declare-fun bm!646225 () Bool)

(assert (=> bm!646225 (= call!646229 (derivationStepZipperDown!2397 (ite c!1324648 (regOne!36229 (reg!18187 r!11554)) (ite c!1324649 (regTwo!36228 (reg!18187 r!11554)) (ite c!1324647 (regOne!36228 (reg!18187 r!11554)) (reg!18187 (reg!18187 r!11554))))) (ite (or c!1324648 c!1324649) (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45))) (Context!13709 call!646231)) a!1901))))

(declare-fun d!2218265 () Bool)

(declare-fun c!1324651 () Bool)

(assert (=> d!2218265 (= c!1324651 (and (is-ElementMatch!17858 (reg!18187 r!11554)) (= (c!1324603 (reg!18187 r!11554)) a!1901)))))

(assert (=> d!2218265 (= (derivationStepZipperDown!2397 (reg!18187 r!11554) (Context!13709 (++!16018 lt!2557750 (exprs!7354 auxCtx!45))) a!1901) e!4267068)))

(declare-fun bm!646226 () Bool)

(assert (=> bm!646226 (= call!646231 call!646228)))

(declare-fun b!7098958 () Bool)

(assert (=> b!7098958 (= e!4267068 e!4267066)))

(assert (=> b!7098958 (= c!1324648 (is-Union!17858 (reg!18187 r!11554)))))

(assert (= (and d!2218265 c!1324651) b!7098953))

(assert (= (and d!2218265 (not c!1324651)) b!7098958))

(assert (= (and b!7098958 c!1324648) b!7098955))

(assert (= (and b!7098958 (not c!1324648)) b!7098956))

(assert (= (and b!7098956 res!2898766) b!7098952))

(assert (= (and b!7098956 c!1324649) b!7098949))

(assert (= (and b!7098956 (not c!1324649)) b!7098948))

(assert (= (and b!7098948 c!1324647) b!7098957))

(assert (= (and b!7098948 (not c!1324647)) b!7098951))

(assert (= (and b!7098951 c!1324650) b!7098950))

(assert (= (and b!7098951 (not c!1324650)) b!7098954))

(assert (= (or b!7098957 b!7098950) bm!646226))

(assert (= (or b!7098957 b!7098950) bm!646223))

(assert (= (or b!7098949 bm!646223) bm!646221))

(assert (= (or b!7098949 bm!646226) bm!646224))

(assert (= (or b!7098955 b!7098949) bm!646222))

(assert (= (or b!7098955 bm!646221) bm!646225))

(declare-fun m!7825288 () Bool)

(assert (=> bm!646222 m!7825288))

(declare-fun m!7825290 () Bool)

(assert (=> b!7098953 m!7825290))

(assert (=> b!7098952 m!7825270))

(declare-fun m!7825292 () Bool)

(assert (=> bm!646225 m!7825292))

(declare-fun m!7825294 () Bool)

(assert (=> bm!646224 m!7825294))

(assert (=> b!7098766 d!2218265))

(declare-fun bm!646231 () Bool)

(declare-fun call!646238 () (Set Context!13708))

(declare-fun call!646237 () (Set Context!13708))

(assert (=> bm!646231 (= call!646238 call!646237)))

(declare-fun call!646236 () List!68821)

(declare-fun call!646241 () (Set Context!13708))

(declare-fun bm!646232 () Bool)

(declare-fun c!1324653 () Bool)

(assert (=> bm!646232 (= call!646241 (derivationStepZipperDown!2397 (ite c!1324653 (regTwo!36229 r!11554) (regOne!36228 r!11554)) (ite c!1324653 c!9994 (Context!13709 call!646236)) a!1901))))

(declare-fun bm!646233 () Bool)

(declare-fun call!646240 () (Set Context!13708))

(assert (=> bm!646233 (= call!646240 call!646238)))

(declare-fun b!7098959 () Bool)

(declare-fun e!4267073 () (Set Context!13708))

(declare-fun e!4267069 () (Set Context!13708))

(assert (=> b!7098959 (= e!4267073 e!4267069)))

(declare-fun c!1324652 () Bool)

(assert (=> b!7098959 (= c!1324652 (is-Concat!26703 r!11554))))

(declare-fun b!7098960 () Bool)

(assert (=> b!7098960 (= e!4267073 (set.union call!646241 call!646238))))

(declare-fun b!7098961 () Bool)

(declare-fun e!4267071 () (Set Context!13708))

(assert (=> b!7098961 (= e!4267071 call!646240)))

(declare-fun b!7098962 () Bool)

(declare-fun c!1324655 () Bool)

(assert (=> b!7098962 (= c!1324655 (is-Star!17858 r!11554))))

(assert (=> b!7098962 (= e!4267069 e!4267071)))

(declare-fun b!7098963 () Bool)

(declare-fun e!4267070 () Bool)

(assert (=> b!7098963 (= e!4267070 (nullable!7498 (regOne!36228 r!11554)))))

(declare-fun bm!646234 () Bool)

(declare-fun c!1324654 () Bool)

(assert (=> bm!646234 (= call!646236 ($colon$colon!2741 (exprs!7354 c!9994) (ite (or c!1324654 c!1324652) (regTwo!36228 r!11554) r!11554)))))

(declare-fun b!7098964 () Bool)

(declare-fun e!4267074 () (Set Context!13708))

(assert (=> b!7098964 (= e!4267074 (set.insert c!9994 (as set.empty (Set Context!13708))))))

(declare-fun b!7098965 () Bool)

(assert (=> b!7098965 (= e!4267071 (as set.empty (Set Context!13708)))))

(declare-fun b!7098966 () Bool)

(declare-fun e!4267072 () (Set Context!13708))

(assert (=> b!7098966 (= e!4267072 (set.union call!646237 call!646241))))

(declare-fun b!7098967 () Bool)

(assert (=> b!7098967 (= c!1324654 e!4267070)))

(declare-fun res!2898767 () Bool)

(assert (=> b!7098967 (=> (not res!2898767) (not e!4267070))))

(assert (=> b!7098967 (= res!2898767 (is-Concat!26703 r!11554))))

(assert (=> b!7098967 (= e!4267072 e!4267073)))

(declare-fun b!7098968 () Bool)

(assert (=> b!7098968 (= e!4267069 call!646240)))

(declare-fun bm!646235 () Bool)

(declare-fun call!646239 () List!68821)

(assert (=> bm!646235 (= call!646237 (derivationStepZipperDown!2397 (ite c!1324653 (regOne!36229 r!11554) (ite c!1324654 (regTwo!36228 r!11554) (ite c!1324652 (regOne!36228 r!11554) (reg!18187 r!11554)))) (ite (or c!1324653 c!1324654) c!9994 (Context!13709 call!646239)) a!1901))))

(declare-fun d!2218267 () Bool)

(declare-fun c!1324656 () Bool)

(assert (=> d!2218267 (= c!1324656 (and (is-ElementMatch!17858 r!11554) (= (c!1324603 r!11554) a!1901)))))

(assert (=> d!2218267 (= (derivationStepZipperDown!2397 r!11554 c!9994 a!1901) e!4267074)))

(declare-fun bm!646236 () Bool)

(assert (=> bm!646236 (= call!646239 call!646236)))

(declare-fun b!7098969 () Bool)

(assert (=> b!7098969 (= e!4267074 e!4267072)))

(assert (=> b!7098969 (= c!1324653 (is-Union!17858 r!11554))))

(assert (= (and d!2218267 c!1324656) b!7098964))

(assert (= (and d!2218267 (not c!1324656)) b!7098969))

(assert (= (and b!7098969 c!1324653) b!7098966))

(assert (= (and b!7098969 (not c!1324653)) b!7098967))

(assert (= (and b!7098967 res!2898767) b!7098963))

(assert (= (and b!7098967 c!1324654) b!7098960))

(assert (= (and b!7098967 (not c!1324654)) b!7098959))

(assert (= (and b!7098959 c!1324652) b!7098968))

(assert (= (and b!7098959 (not c!1324652)) b!7098962))

(assert (= (and b!7098962 c!1324655) b!7098961))

(assert (= (and b!7098962 (not c!1324655)) b!7098965))

(assert (= (or b!7098968 b!7098961) bm!646236))

(assert (= (or b!7098968 b!7098961) bm!646233))

(assert (= (or b!7098960 bm!646233) bm!646231))

(assert (= (or b!7098960 bm!646236) bm!646234))

(assert (= (or b!7098966 b!7098960) bm!646232))

(assert (= (or b!7098966 bm!646231) bm!646235))

(declare-fun m!7825296 () Bool)

(assert (=> bm!646232 m!7825296))

(declare-fun m!7825298 () Bool)

(assert (=> b!7098964 m!7825298))

(assert (=> b!7098963 m!7825176))

(declare-fun m!7825300 () Bool)

(assert (=> bm!646235 m!7825300))

(declare-fun m!7825302 () Bool)

(assert (=> bm!646234 m!7825302))

(assert (=> b!7098766 d!2218267))

(declare-fun d!2218269 () Bool)

(assert (=> d!2218269 (= ($colon$colon!2741 (exprs!7354 c!9994) r!11554) (Cons!68697 r!11554 (exprs!7354 c!9994)))))

(assert (=> b!7098766 d!2218269))

(declare-fun bs!1884135 () Bool)

(declare-fun d!2218271 () Bool)

(assert (= bs!1884135 (and d!2218271 d!2218263)))

(declare-fun lambda!430783 () Int)

(assert (=> bs!1884135 (= lambda!430783 lambda!430782)))

(assert (=> d!2218271 true))

(assert (=> d!2218271 (= (appendTo!901 (derivationStepZipperDown!2397 (reg!18187 r!11554) lt!2557753 a!1901) auxCtx!45) (map!16198 (derivationStepZipperDown!2397 (reg!18187 r!11554) lt!2557753 a!1901) lambda!430783))))

(declare-fun bs!1884136 () Bool)

(assert (= bs!1884136 d!2218271))

(assert (=> bs!1884136 m!7825156))

(declare-fun m!7825304 () Bool)

(assert (=> bs!1884136 m!7825304))

(assert (=> b!7098766 d!2218271))

(declare-fun bs!1884137 () Bool)

(declare-fun d!2218273 () Bool)

(assert (= bs!1884137 (and d!2218273 b!7098761)))

(declare-fun lambda!430786 () Int)

(assert (=> bs!1884137 (= lambda!430786 lambda!430758)))

(declare-fun bs!1884138 () Bool)

(assert (= bs!1884138 (and d!2218273 d!2218243)))

(assert (=> bs!1884138 (= lambda!430786 lambda!430772)))

(declare-fun bs!1884139 () Bool)

(assert (= bs!1884139 (and d!2218273 d!2218245)))

(assert (=> bs!1884139 (= lambda!430786 lambda!430773)))

(assert (=> d!2218273 (= (derivationStepZipperDown!2397 (reg!18187 r!11554) (Context!13709 (++!16018 (exprs!7354 lt!2557753) (exprs!7354 auxCtx!45))) a!1901) (appendTo!901 (derivationStepZipperDown!2397 (reg!18187 r!11554) lt!2557753 a!1901) auxCtx!45))))

(declare-fun lt!2557795 () Unit!162391)

(assert (=> d!2218273 (= lt!2557795 (lemmaConcatPreservesForall!1149 (exprs!7354 lt!2557753) (exprs!7354 auxCtx!45) lambda!430786))))

(declare-fun lt!2557794 () Unit!162391)

(declare-fun choose!54734 (Context!13708 Regex!17858 C!35986 Context!13708) Unit!162391)

(assert (=> d!2218273 (= lt!2557794 (choose!54734 lt!2557753 (reg!18187 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2218273 (validRegex!9133 (reg!18187 r!11554))))

(assert (=> d!2218273 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!209 lt!2557753 (reg!18187 r!11554) a!1901 auxCtx!45) lt!2557794)))

(declare-fun bs!1884140 () Bool)

(assert (= bs!1884140 d!2218273))

(declare-fun m!7825306 () Bool)

(assert (=> bs!1884140 m!7825306))

(assert (=> bs!1884140 m!7825156))

(assert (=> bs!1884140 m!7825158))

(declare-fun m!7825308 () Bool)

(assert (=> bs!1884140 m!7825308))

(declare-fun m!7825310 () Bool)

(assert (=> bs!1884140 m!7825310))

(declare-fun m!7825312 () Bool)

(assert (=> bs!1884140 m!7825312))

(assert (=> bs!1884140 m!7825156))

(declare-fun m!7825314 () Bool)

(assert (=> bs!1884140 m!7825314))

(assert (=> b!7098766 d!2218273))

(declare-fun d!2218275 () Bool)

(assert (=> d!2218275 (forall!16772 (++!16018 lt!2557750 (exprs!7354 auxCtx!45)) lambda!430758)))

(declare-fun lt!2557796 () Unit!162391)

(assert (=> d!2218275 (= lt!2557796 (choose!54733 lt!2557750 (exprs!7354 auxCtx!45) lambda!430758))))

(assert (=> d!2218275 (forall!16772 lt!2557750 lambda!430758)))

(assert (=> d!2218275 (= (lemmaConcatPreservesForall!1149 lt!2557750 (exprs!7354 auxCtx!45) lambda!430758) lt!2557796)))

(declare-fun bs!1884141 () Bool)

(assert (= bs!1884141 d!2218275))

(assert (=> bs!1884141 m!7825154))

(assert (=> bs!1884141 m!7825154))

(declare-fun m!7825316 () Bool)

(assert (=> bs!1884141 m!7825316))

(declare-fun m!7825318 () Bool)

(assert (=> bs!1884141 m!7825318))

(declare-fun m!7825320 () Bool)

(assert (=> bs!1884141 m!7825320))

(assert (=> b!7098766 d!2218275))

(assert (=> b!7098766 d!2218255))

(declare-fun d!2218277 () Bool)

(declare-fun res!2898773 () Bool)

(declare-fun e!4267085 () Bool)

(assert (=> d!2218277 (=> res!2898773 e!4267085)))

(assert (=> d!2218277 (= res!2898773 (is-Nil!68697 (exprs!7354 c!9994)))))

(assert (=> d!2218277 (= (forall!16772 (exprs!7354 c!9994) lambda!430758) e!4267085)))

(declare-fun b!7098985 () Bool)

(declare-fun e!4267086 () Bool)

(assert (=> b!7098985 (= e!4267085 e!4267086)))

(declare-fun res!2898774 () Bool)

(assert (=> b!7098985 (=> (not res!2898774) (not e!4267086))))

(declare-fun dynLambda!28035 (Int Regex!17858) Bool)

(assert (=> b!7098985 (= res!2898774 (dynLambda!28035 lambda!430758 (h!75145 (exprs!7354 c!9994))))))

(declare-fun b!7098986 () Bool)

(assert (=> b!7098986 (= e!4267086 (forall!16772 (t!382628 (exprs!7354 c!9994)) lambda!430758))))

(assert (= (and d!2218277 (not res!2898773)) b!7098985))

(assert (= (and b!7098985 res!2898774) b!7098986))

(declare-fun b_lambda!271243 () Bool)

(assert (=> (not b_lambda!271243) (not b!7098985)))

(declare-fun m!7825322 () Bool)

(assert (=> b!7098985 m!7825322))

(declare-fun m!7825324 () Bool)

(assert (=> b!7098986 m!7825324))

(assert (=> b!7098760 d!2218277))

(declare-fun bm!646243 () Bool)

(declare-fun call!646250 () (Set Context!13708))

(declare-fun call!646249 () (Set Context!13708))

(assert (=> bm!646243 (= call!646250 call!646249)))

(declare-fun c!1324664 () Bool)

(declare-fun bm!646244 () Bool)

(declare-fun call!646248 () List!68821)

(declare-fun call!646253 () (Set Context!13708))

(assert (=> bm!646244 (= call!646253 (derivationStepZipperDown!2397 (ite c!1324664 (regTwo!36229 (reg!18187 r!11554)) (regOne!36228 (reg!18187 r!11554))) (ite c!1324664 (Context!13709 ($colon$colon!2741 lt!2557752 r!11554)) (Context!13709 call!646248)) a!1901))))

(declare-fun bm!646245 () Bool)

(declare-fun call!646252 () (Set Context!13708))

(assert (=> bm!646245 (= call!646252 call!646250)))

(declare-fun b!7098987 () Bool)

(declare-fun e!4267091 () (Set Context!13708))

(declare-fun e!4267087 () (Set Context!13708))

(assert (=> b!7098987 (= e!4267091 e!4267087)))

(declare-fun c!1324663 () Bool)

(assert (=> b!7098987 (= c!1324663 (is-Concat!26703 (reg!18187 r!11554)))))

(declare-fun b!7098988 () Bool)

(assert (=> b!7098988 (= e!4267091 (set.union call!646253 call!646250))))

(declare-fun b!7098989 () Bool)

(declare-fun e!4267089 () (Set Context!13708))

(assert (=> b!7098989 (= e!4267089 call!646252)))

(declare-fun b!7098990 () Bool)

(declare-fun c!1324666 () Bool)

(assert (=> b!7098990 (= c!1324666 (is-Star!17858 (reg!18187 r!11554)))))

(assert (=> b!7098990 (= e!4267087 e!4267089)))

(declare-fun b!7098991 () Bool)

(declare-fun e!4267088 () Bool)

(assert (=> b!7098991 (= e!4267088 (nullable!7498 (regOne!36228 (reg!18187 r!11554))))))

(declare-fun bm!646246 () Bool)

(declare-fun c!1324665 () Bool)

(assert (=> bm!646246 (= call!646248 ($colon$colon!2741 (exprs!7354 (Context!13709 ($colon$colon!2741 lt!2557752 r!11554))) (ite (or c!1324665 c!1324663) (regTwo!36228 (reg!18187 r!11554)) (reg!18187 r!11554))))))

(declare-fun b!7098992 () Bool)

(declare-fun e!4267092 () (Set Context!13708))

(assert (=> b!7098992 (= e!4267092 (set.insert (Context!13709 ($colon$colon!2741 lt!2557752 r!11554)) (as set.empty (Set Context!13708))))))

(declare-fun b!7098993 () Bool)

(assert (=> b!7098993 (= e!4267089 (as set.empty (Set Context!13708)))))

(declare-fun b!7098994 () Bool)

(declare-fun e!4267090 () (Set Context!13708))

(assert (=> b!7098994 (= e!4267090 (set.union call!646249 call!646253))))

(declare-fun b!7098995 () Bool)

(assert (=> b!7098995 (= c!1324665 e!4267088)))

(declare-fun res!2898775 () Bool)

(assert (=> b!7098995 (=> (not res!2898775) (not e!4267088))))

(assert (=> b!7098995 (= res!2898775 (is-Concat!26703 (reg!18187 r!11554)))))

(assert (=> b!7098995 (= e!4267090 e!4267091)))

(declare-fun b!7098996 () Bool)

(assert (=> b!7098996 (= e!4267087 call!646252)))

(declare-fun bm!646247 () Bool)

(declare-fun call!646251 () List!68821)

(assert (=> bm!646247 (= call!646249 (derivationStepZipperDown!2397 (ite c!1324664 (regOne!36229 (reg!18187 r!11554)) (ite c!1324665 (regTwo!36228 (reg!18187 r!11554)) (ite c!1324663 (regOne!36228 (reg!18187 r!11554)) (reg!18187 (reg!18187 r!11554))))) (ite (or c!1324664 c!1324665) (Context!13709 ($colon$colon!2741 lt!2557752 r!11554)) (Context!13709 call!646251)) a!1901))))

(declare-fun d!2218279 () Bool)

(declare-fun c!1324667 () Bool)

(assert (=> d!2218279 (= c!1324667 (and (is-ElementMatch!17858 (reg!18187 r!11554)) (= (c!1324603 (reg!18187 r!11554)) a!1901)))))

(assert (=> d!2218279 (= (derivationStepZipperDown!2397 (reg!18187 r!11554) (Context!13709 ($colon$colon!2741 lt!2557752 r!11554)) a!1901) e!4267092)))

(declare-fun bm!646248 () Bool)

(assert (=> bm!646248 (= call!646251 call!646248)))

(declare-fun b!7098997 () Bool)

(assert (=> b!7098997 (= e!4267092 e!4267090)))

(assert (=> b!7098997 (= c!1324664 (is-Union!17858 (reg!18187 r!11554)))))

(assert (= (and d!2218279 c!1324667) b!7098992))

(assert (= (and d!2218279 (not c!1324667)) b!7098997))

(assert (= (and b!7098997 c!1324664) b!7098994))

(assert (= (and b!7098997 (not c!1324664)) b!7098995))

(assert (= (and b!7098995 res!2898775) b!7098991))

(assert (= (and b!7098995 c!1324665) b!7098988))

(assert (= (and b!7098995 (not c!1324665)) b!7098987))

(assert (= (and b!7098987 c!1324663) b!7098996))

(assert (= (and b!7098987 (not c!1324663)) b!7098990))

(assert (= (and b!7098990 c!1324666) b!7098989))

(assert (= (and b!7098990 (not c!1324666)) b!7098993))

(assert (= (or b!7098996 b!7098989) bm!646248))

(assert (= (or b!7098996 b!7098989) bm!646245))

(assert (= (or b!7098988 bm!646245) bm!646243))

(assert (= (or b!7098988 bm!646248) bm!646246))

(assert (= (or b!7098994 b!7098988) bm!646244))

(assert (= (or b!7098994 bm!646243) bm!646247))

(declare-fun m!7825326 () Bool)

(assert (=> bm!646244 m!7825326))

(declare-fun m!7825328 () Bool)

(assert (=> b!7098992 m!7825328))

(assert (=> b!7098991 m!7825270))

(declare-fun m!7825330 () Bool)

(assert (=> bm!646247 m!7825330))

(declare-fun m!7825334 () Bool)

(assert (=> bm!646246 m!7825334))

(assert (=> b!7098770 d!2218279))

(declare-fun d!2218281 () Bool)

(assert (=> d!2218281 (= ($colon$colon!2741 lt!2557752 r!11554) (Cons!68697 r!11554 lt!2557752))))

(assert (=> b!7098770 d!2218281))

(declare-fun bm!646249 () Bool)

(declare-fun call!646256 () (Set Context!13708))

(declare-fun call!646255 () (Set Context!13708))

(assert (=> bm!646249 (= call!646256 call!646255)))

(declare-fun call!646259 () (Set Context!13708))

(declare-fun bm!646250 () Bool)

(declare-fun c!1324669 () Bool)

(declare-fun call!646254 () List!68821)

(assert (=> bm!646250 (= call!646259 (derivationStepZipperDown!2397 (ite c!1324669 (regTwo!36229 r!11554) (regOne!36228 r!11554)) (ite c!1324669 (Context!13709 lt!2557752) (Context!13709 call!646254)) a!1901))))

(declare-fun bm!646251 () Bool)

(declare-fun call!646258 () (Set Context!13708))

(assert (=> bm!646251 (= call!646258 call!646256)))

(declare-fun b!7098998 () Bool)

(declare-fun e!4267097 () (Set Context!13708))

(declare-fun e!4267093 () (Set Context!13708))

(assert (=> b!7098998 (= e!4267097 e!4267093)))

(declare-fun c!1324668 () Bool)

(assert (=> b!7098998 (= c!1324668 (is-Concat!26703 r!11554))))

(declare-fun b!7098999 () Bool)

(assert (=> b!7098999 (= e!4267097 (set.union call!646259 call!646256))))

(declare-fun b!7099000 () Bool)

(declare-fun e!4267095 () (Set Context!13708))

(assert (=> b!7099000 (= e!4267095 call!646258)))

(declare-fun b!7099001 () Bool)

(declare-fun c!1324671 () Bool)

(assert (=> b!7099001 (= c!1324671 (is-Star!17858 r!11554))))

(assert (=> b!7099001 (= e!4267093 e!4267095)))

(declare-fun b!7099002 () Bool)

(declare-fun e!4267094 () Bool)

(assert (=> b!7099002 (= e!4267094 (nullable!7498 (regOne!36228 r!11554)))))

(declare-fun c!1324670 () Bool)

(declare-fun bm!646252 () Bool)

(assert (=> bm!646252 (= call!646254 ($colon$colon!2741 (exprs!7354 (Context!13709 lt!2557752)) (ite (or c!1324670 c!1324668) (regTwo!36228 r!11554) r!11554)))))

(declare-fun b!7099003 () Bool)

(declare-fun e!4267098 () (Set Context!13708))

(assert (=> b!7099003 (= e!4267098 (set.insert (Context!13709 lt!2557752) (as set.empty (Set Context!13708))))))

(declare-fun b!7099004 () Bool)

(assert (=> b!7099004 (= e!4267095 (as set.empty (Set Context!13708)))))

(declare-fun b!7099005 () Bool)

(declare-fun e!4267096 () (Set Context!13708))

(assert (=> b!7099005 (= e!4267096 (set.union call!646255 call!646259))))

(declare-fun b!7099006 () Bool)

(assert (=> b!7099006 (= c!1324670 e!4267094)))

(declare-fun res!2898776 () Bool)

(assert (=> b!7099006 (=> (not res!2898776) (not e!4267094))))

(assert (=> b!7099006 (= res!2898776 (is-Concat!26703 r!11554))))

(assert (=> b!7099006 (= e!4267096 e!4267097)))

(declare-fun b!7099007 () Bool)

(assert (=> b!7099007 (= e!4267093 call!646258)))

(declare-fun call!646257 () List!68821)

(declare-fun bm!646253 () Bool)

(assert (=> bm!646253 (= call!646255 (derivationStepZipperDown!2397 (ite c!1324669 (regOne!36229 r!11554) (ite c!1324670 (regTwo!36228 r!11554) (ite c!1324668 (regOne!36228 r!11554) (reg!18187 r!11554)))) (ite (or c!1324669 c!1324670) (Context!13709 lt!2557752) (Context!13709 call!646257)) a!1901))))

(declare-fun d!2218283 () Bool)

(declare-fun c!1324672 () Bool)

(assert (=> d!2218283 (= c!1324672 (and (is-ElementMatch!17858 r!11554) (= (c!1324603 r!11554) a!1901)))))

(assert (=> d!2218283 (= (derivationStepZipperDown!2397 r!11554 (Context!13709 lt!2557752) a!1901) e!4267098)))

(declare-fun bm!646254 () Bool)

(assert (=> bm!646254 (= call!646257 call!646254)))

(declare-fun b!7099008 () Bool)

(assert (=> b!7099008 (= e!4267098 e!4267096)))

(assert (=> b!7099008 (= c!1324669 (is-Union!17858 r!11554))))

(assert (= (and d!2218283 c!1324672) b!7099003))

(assert (= (and d!2218283 (not c!1324672)) b!7099008))

(assert (= (and b!7099008 c!1324669) b!7099005))

(assert (= (and b!7099008 (not c!1324669)) b!7099006))

(assert (= (and b!7099006 res!2898776) b!7099002))

(assert (= (and b!7099006 c!1324670) b!7098999))

(assert (= (and b!7099006 (not c!1324670)) b!7098998))

(assert (= (and b!7098998 c!1324668) b!7099007))

(assert (= (and b!7098998 (not c!1324668)) b!7099001))

(assert (= (and b!7099001 c!1324671) b!7099000))

(assert (= (and b!7099001 (not c!1324671)) b!7099004))

(assert (= (or b!7099007 b!7099000) bm!646254))

(assert (= (or b!7099007 b!7099000) bm!646251))

(assert (= (or b!7098999 bm!646251) bm!646249))

(assert (= (or b!7098999 bm!646254) bm!646252))

(assert (= (or b!7099005 b!7098999) bm!646250))

(assert (= (or b!7099005 bm!646249) bm!646253))

(declare-fun m!7825344 () Bool)

(assert (=> bm!646250 m!7825344))

(declare-fun m!7825346 () Bool)

(assert (=> b!7099003 m!7825346))

(assert (=> b!7099002 m!7825176))

(declare-fun m!7825348 () Bool)

(assert (=> bm!646253 m!7825348))

(declare-fun m!7825350 () Bool)

(assert (=> bm!646252 m!7825350))

(assert (=> b!7098770 d!2218283))

(declare-fun d!2218287 () Bool)

(declare-fun nullableFct!2888 (Regex!17858) Bool)

(assert (=> d!2218287 (= (nullable!7498 (regOne!36228 r!11554)) (nullableFct!2888 (regOne!36228 r!11554)))))

(declare-fun bs!1884142 () Bool)

(assert (= bs!1884142 d!2218287))

(declare-fun m!7825352 () Bool)

(assert (=> bs!1884142 m!7825352))

(assert (=> b!7098764 d!2218287))

(declare-fun b!7099024 () Bool)

(declare-fun e!4267107 () Bool)

(declare-fun tp!1951227 () Bool)

(declare-fun tp!1951228 () Bool)

(assert (=> b!7099024 (= e!4267107 (and tp!1951227 tp!1951228))))

(assert (=> b!7098769 (= tp!1951197 e!4267107)))

(assert (= (and b!7098769 (is-Cons!68697 (exprs!7354 c!9994))) b!7099024))

(declare-fun b!7099025 () Bool)

(declare-fun e!4267108 () Bool)

(declare-fun tp!1951229 () Bool)

(declare-fun tp!1951230 () Bool)

(assert (=> b!7099025 (= e!4267108 (and tp!1951229 tp!1951230))))

(assert (=> b!7098763 (= tp!1951198 e!4267108)))

(assert (= (and b!7098763 (is-Cons!68697 (exprs!7354 auxCtx!45))) b!7099025))

(declare-fun e!4267111 () Bool)

(assert (=> b!7098762 (= tp!1951200 e!4267111)))

(declare-fun b!7099039 () Bool)

(declare-fun tp!1951245 () Bool)

(declare-fun tp!1951242 () Bool)

(assert (=> b!7099039 (= e!4267111 (and tp!1951245 tp!1951242))))

(declare-fun b!7099038 () Bool)

(declare-fun tp!1951241 () Bool)

(assert (=> b!7099038 (= e!4267111 tp!1951241)))

(declare-fun b!7099036 () Bool)

(assert (=> b!7099036 (= e!4267111 tp_is_empty!44949)))

(declare-fun b!7099037 () Bool)

(declare-fun tp!1951243 () Bool)

(declare-fun tp!1951244 () Bool)

(assert (=> b!7099037 (= e!4267111 (and tp!1951243 tp!1951244))))

(assert (= (and b!7098762 (is-ElementMatch!17858 (reg!18187 r!11554))) b!7099036))

(assert (= (and b!7098762 (is-Concat!26703 (reg!18187 r!11554))) b!7099037))

(assert (= (and b!7098762 (is-Star!17858 (reg!18187 r!11554))) b!7099038))

(assert (= (and b!7098762 (is-Union!17858 (reg!18187 r!11554))) b!7099039))

(declare-fun e!4267112 () Bool)

(assert (=> b!7098772 (= tp!1951201 e!4267112)))

(declare-fun b!7099043 () Bool)

(declare-fun tp!1951250 () Bool)

(declare-fun tp!1951247 () Bool)

(assert (=> b!7099043 (= e!4267112 (and tp!1951250 tp!1951247))))

(declare-fun b!7099042 () Bool)

(declare-fun tp!1951246 () Bool)

(assert (=> b!7099042 (= e!4267112 tp!1951246)))

(declare-fun b!7099040 () Bool)

(assert (=> b!7099040 (= e!4267112 tp_is_empty!44949)))

(declare-fun b!7099041 () Bool)

(declare-fun tp!1951248 () Bool)

(declare-fun tp!1951249 () Bool)

(assert (=> b!7099041 (= e!4267112 (and tp!1951248 tp!1951249))))

(assert (= (and b!7098772 (is-ElementMatch!17858 (regOne!36229 r!11554))) b!7099040))

(assert (= (and b!7098772 (is-Concat!26703 (regOne!36229 r!11554))) b!7099041))

(assert (= (and b!7098772 (is-Star!17858 (regOne!36229 r!11554))) b!7099042))

(assert (= (and b!7098772 (is-Union!17858 (regOne!36229 r!11554))) b!7099043))

(declare-fun e!4267113 () Bool)

(assert (=> b!7098772 (= tp!1951196 e!4267113)))

(declare-fun b!7099047 () Bool)

(declare-fun tp!1951255 () Bool)

(declare-fun tp!1951252 () Bool)

(assert (=> b!7099047 (= e!4267113 (and tp!1951255 tp!1951252))))

(declare-fun b!7099046 () Bool)

(declare-fun tp!1951251 () Bool)

(assert (=> b!7099046 (= e!4267113 tp!1951251)))

(declare-fun b!7099044 () Bool)

(assert (=> b!7099044 (= e!4267113 tp_is_empty!44949)))

(declare-fun b!7099045 () Bool)

(declare-fun tp!1951253 () Bool)

(declare-fun tp!1951254 () Bool)

(assert (=> b!7099045 (= e!4267113 (and tp!1951253 tp!1951254))))

(assert (= (and b!7098772 (is-ElementMatch!17858 (regTwo!36229 r!11554))) b!7099044))

(assert (= (and b!7098772 (is-Concat!26703 (regTwo!36229 r!11554))) b!7099045))

(assert (= (and b!7098772 (is-Star!17858 (regTwo!36229 r!11554))) b!7099046))

(assert (= (and b!7098772 (is-Union!17858 (regTwo!36229 r!11554))) b!7099047))

(declare-fun e!4267114 () Bool)

(assert (=> b!7098759 (= tp!1951199 e!4267114)))

(declare-fun b!7099051 () Bool)

(declare-fun tp!1951260 () Bool)

(declare-fun tp!1951257 () Bool)

(assert (=> b!7099051 (= e!4267114 (and tp!1951260 tp!1951257))))

(declare-fun b!7099050 () Bool)

(declare-fun tp!1951256 () Bool)

(assert (=> b!7099050 (= e!4267114 tp!1951256)))

(declare-fun b!7099048 () Bool)

(assert (=> b!7099048 (= e!4267114 tp_is_empty!44949)))

(declare-fun b!7099049 () Bool)

(declare-fun tp!1951258 () Bool)

(declare-fun tp!1951259 () Bool)

(assert (=> b!7099049 (= e!4267114 (and tp!1951258 tp!1951259))))

(assert (= (and b!7098759 (is-ElementMatch!17858 (regOne!36228 r!11554))) b!7099048))

(assert (= (and b!7098759 (is-Concat!26703 (regOne!36228 r!11554))) b!7099049))

(assert (= (and b!7098759 (is-Star!17858 (regOne!36228 r!11554))) b!7099050))

(assert (= (and b!7098759 (is-Union!17858 (regOne!36228 r!11554))) b!7099051))

(declare-fun e!4267115 () Bool)

(assert (=> b!7098759 (= tp!1951195 e!4267115)))

(declare-fun b!7099055 () Bool)

(declare-fun tp!1951265 () Bool)

(declare-fun tp!1951262 () Bool)

(assert (=> b!7099055 (= e!4267115 (and tp!1951265 tp!1951262))))

(declare-fun b!7099054 () Bool)

(declare-fun tp!1951261 () Bool)

(assert (=> b!7099054 (= e!4267115 tp!1951261)))

(declare-fun b!7099052 () Bool)

(assert (=> b!7099052 (= e!4267115 tp_is_empty!44949)))

(declare-fun b!7099053 () Bool)

(declare-fun tp!1951263 () Bool)

(declare-fun tp!1951264 () Bool)

(assert (=> b!7099053 (= e!4267115 (and tp!1951263 tp!1951264))))

(assert (= (and b!7098759 (is-ElementMatch!17858 (regTwo!36228 r!11554))) b!7099052))

(assert (= (and b!7098759 (is-Concat!26703 (regTwo!36228 r!11554))) b!7099053))

(assert (= (and b!7098759 (is-Star!17858 (regTwo!36228 r!11554))) b!7099054))

(assert (= (and b!7098759 (is-Union!17858 (regTwo!36228 r!11554))) b!7099055))

(declare-fun b_lambda!271245 () Bool)

(assert (= b_lambda!271243 (or b!7098761 b_lambda!271245)))

(declare-fun bs!1884143 () Bool)

(declare-fun d!2218293 () Bool)

(assert (= bs!1884143 (and d!2218293 b!7098761)))

(assert (=> bs!1884143 (= (dynLambda!28035 lambda!430758 (h!75145 (exprs!7354 c!9994))) (validRegex!9133 (h!75145 (exprs!7354 c!9994))))))

(declare-fun m!7825362 () Bool)

(assert (=> bs!1884143 m!7825362))

(assert (=> b!7098985 d!2218293))

(push 1)

(assert (not bs!1884143))

(assert (not bm!646253))

(assert (not b!7098858))

(assert (not b!7099024))

(assert (not b!7099039))

(assert (not b!7099051))

(assert (not d!2218243))

(assert (not b!7098952))

(assert (not b!7098963))

(assert (not bm!646224))

(assert (not bm!646244))

(assert (not b!7099055))

(assert (not bm!646235))

(assert (not b!7099002))

(assert (not b!7099042))

(assert (not b!7099049))

(assert (not b!7098939))

(assert (not d!2218261))

(assert (not bm!646210))

(assert (not bm!646252))

(assert (not bm!646222))

(assert (not b!7099041))

(assert (not d!2218263))

(assert (not b!7098940))

(assert (not b!7099050))

(assert (not b!7099038))

(assert (not b!7099047))

(assert (not d!2218255))

(assert (not b!7099045))

(assert (not bm!646211))

(assert (not b!7099043))

(assert (not bm!646190))

(assert (not d!2218271))

(assert (not bm!646208))

(assert (not bm!646189))

(assert (not d!2218275))

(assert (not d!2218287))

(assert (not bm!646246))

(assert tp_is_empty!44949)

(assert (not b!7099046))

(assert (not bm!646225))

(assert (not d!2218273))

(assert (not bm!646232))

(assert (not b!7099037))

(assert (not b!7098878))

(assert (not b!7099054))

(assert (not b!7098913))

(assert (not b!7098879))

(assert (not bm!646250))

(assert (not b!7099053))

(assert (not bm!646247))

(assert (not b!7099025))

(assert (not bm!646234))

(assert (not b!7098986))

(assert (not d!2218245))

(assert (not b_lambda!271245))

(assert (not d!2218249))

(assert (not b!7098991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

