; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689918 () Bool)

(assert start!689918)

(declare-fun b!7088177 () Bool)

(assert (=> b!7088177 true))

(declare-fun b!7088169 () Bool)

(declare-fun e!4261201 () Bool)

(declare-fun tp_is_empty!44765 () Bool)

(assert (=> b!7088169 (= e!4261201 tp_is_empty!44765)))

(declare-fun b!7088170 () Bool)

(declare-fun e!4261205 () Bool)

(declare-fun tp!1946629 () Bool)

(assert (=> b!7088170 (= e!4261205 tp!1946629)))

(declare-fun b!7088172 () Bool)

(declare-fun tp!1946628 () Bool)

(declare-fun tp!1946627 () Bool)

(assert (=> b!7088172 (= e!4261201 (and tp!1946628 tp!1946627))))

(declare-fun b!7088173 () Bool)

(declare-fun tp!1946630 () Bool)

(declare-fun tp!1946632 () Bool)

(assert (=> b!7088173 (= e!4261201 (and tp!1946630 tp!1946632))))

(declare-fun b!7088174 () Bool)

(declare-fun e!4261204 () Bool)

(declare-fun e!4261202 () Bool)

(assert (=> b!7088174 (= e!4261204 e!4261202)))

(declare-fun res!2895213 () Bool)

(assert (=> b!7088174 (=> (not res!2895213) (not e!4261202))))

(declare-datatypes ((C!35802 0))(
  ( (C!35803 (val!27607 Int)) )
))
(declare-datatypes ((Regex!17766 0))(
  ( (ElementMatch!17766 (c!1322857 C!35802)) (Concat!26611 (regOne!36044 Regex!17766) (regTwo!36044 Regex!17766)) (EmptyExpr!17766) (Star!17766 (reg!18095 Regex!17766)) (EmptyLang!17766) (Union!17766 (regOne!36045 Regex!17766) (regTwo!36045 Regex!17766)) )
))
(declare-datatypes ((List!68729 0))(
  ( (Nil!68605) (Cons!68605 (h!75053 Regex!17766) (t!382514 List!68729)) )
))
(declare-datatypes ((Context!13524 0))(
  ( (Context!13525 (exprs!7262 List!68729)) )
))
(declare-fun lt!2555109 () Context!13524)

(declare-fun lt!2555119 () (Set Context!13524))

(declare-fun a!1901 () C!35802)

(declare-fun r!11554 () Regex!17766)

(declare-fun lt!2555111 () (Set Context!13524))

(declare-fun derivationStepZipperDown!2345 (Regex!17766 Context!13524 C!35802) (Set Context!13524))

(assert (=> b!7088174 (= res!2895213 (= (derivationStepZipperDown!2345 r!11554 lt!2555109 a!1901) (set.union lt!2555119 lt!2555111)))))

(assert (=> b!7088174 (= lt!2555111 (derivationStepZipperDown!2345 (regTwo!36045 r!11554) lt!2555109 a!1901))))

(assert (=> b!7088174 (= lt!2555119 (derivationStepZipperDown!2345 (regOne!36045 r!11554) lt!2555109 a!1901))))

(declare-fun c!9994 () Context!13524)

(declare-fun auxCtx!45 () Context!13524)

(declare-fun ++!15939 (List!68729 List!68729) List!68729)

(assert (=> b!7088174 (= lt!2555109 (Context!13525 (++!15939 (exprs!7262 c!9994) (exprs!7262 auxCtx!45))))))

(declare-fun lambda!429373 () Int)

(declare-datatypes ((Unit!162231 0))(
  ( (Unit!162232) )
))
(declare-fun lt!2555117 () Unit!162231)

(declare-fun lemmaConcatPreservesForall!1069 (List!68729 List!68729 Int) Unit!162231)

(assert (=> b!7088174 (= lt!2555117 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun lt!2555110 () Unit!162231)

(assert (=> b!7088174 (= lt!2555110 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun lt!2555118 () Unit!162231)

(assert (=> b!7088174 (= lt!2555118 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun b!7088175 () Bool)

(declare-fun e!4261199 () Bool)

(assert (=> b!7088175 (= e!4261202 (not e!4261199))))

(declare-fun res!2895214 () Bool)

(assert (=> b!7088175 (=> res!2895214 e!4261199)))

(declare-fun forall!16710 (List!68729 Int) Bool)

(assert (=> b!7088175 (= res!2895214 (not (forall!16710 (exprs!7262 c!9994) lambda!429373)))))

(declare-fun lt!2555107 () (Set Context!13524))

(declare-fun lambda!429372 () Int)

(declare-fun lt!2555115 () (Set Context!13524))

(declare-fun map!16118 ((Set Context!13524) Int) (Set Context!13524))

(assert (=> b!7088175 (= (set.union (map!16118 lt!2555107 lambda!429372) (map!16118 lt!2555115 lambda!429372)) (map!16118 (set.union lt!2555107 lt!2555115) lambda!429372))))

(declare-fun lt!2555112 () Unit!162231)

(declare-fun lemmaMapAssociative!3 ((Set Context!13524) (Set Context!13524) Int) Unit!162231)

(assert (=> b!7088175 (= lt!2555112 (lemmaMapAssociative!3 lt!2555107 lt!2555115 lambda!429372))))

(declare-fun appendTo!855 ((Set Context!13524) Context!13524) (Set Context!13524))

(assert (=> b!7088175 (= lt!2555111 (appendTo!855 lt!2555115 auxCtx!45))))

(assert (=> b!7088175 (= lt!2555115 (derivationStepZipperDown!2345 (regTwo!36045 r!11554) c!9994 a!1901))))

(declare-fun lt!2555114 () Unit!162231)

(assert (=> b!7088175 (= lt!2555114 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun lt!2555108 () Unit!162231)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!163 (Context!13524 Regex!17766 C!35802 Context!13524) Unit!162231)

(assert (=> b!7088175 (= lt!2555108 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!163 c!9994 (regTwo!36045 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7088175 (= lt!2555119 (appendTo!855 lt!2555107 auxCtx!45))))

(assert (=> b!7088175 (= lt!2555107 (derivationStepZipperDown!2345 (regOne!36045 r!11554) c!9994 a!1901))))

(declare-fun lt!2555113 () Unit!162231)

(assert (=> b!7088175 (= lt!2555113 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun lt!2555116 () Unit!162231)

(assert (=> b!7088175 (= lt!2555116 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!163 c!9994 (regOne!36045 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7088176 () Bool)

(assert (=> b!7088176 (= e!4261199 (forall!16710 (exprs!7262 auxCtx!45) lambda!429373))))

(declare-fun b!7088171 () Bool)

(declare-fun tp!1946633 () Bool)

(assert (=> b!7088171 (= e!4261201 tp!1946633)))

(declare-fun res!2895215 () Bool)

(declare-fun e!4261203 () Bool)

(assert (=> start!689918 (=> (not res!2895215) (not e!4261203))))

(declare-fun validRegex!9041 (Regex!17766) Bool)

(assert (=> start!689918 (= res!2895215 (validRegex!9041 r!11554))))

(assert (=> start!689918 e!4261203))

(assert (=> start!689918 e!4261201))

(declare-fun inv!87281 (Context!13524) Bool)

(assert (=> start!689918 (and (inv!87281 c!9994) e!4261205)))

(assert (=> start!689918 tp_is_empty!44765))

(declare-fun e!4261200 () Bool)

(assert (=> start!689918 (and (inv!87281 auxCtx!45) e!4261200)))

(assert (=> b!7088177 (= e!4261203 e!4261204)))

(declare-fun res!2895216 () Bool)

(assert (=> b!7088177 (=> (not res!2895216) (not e!4261204))))

(assert (=> b!7088177 (= res!2895216 (and (or (not (is-ElementMatch!17766 r!11554)) (not (= (c!1322857 r!11554) a!1901))) (is-Union!17766 r!11554)))))

(declare-fun b!7088178 () Bool)

(declare-fun tp!1946631 () Bool)

(assert (=> b!7088178 (= e!4261200 tp!1946631)))

(assert (= (and start!689918 res!2895215) b!7088177))

(assert (= (and b!7088177 res!2895216) b!7088174))

(assert (= (and b!7088174 res!2895213) b!7088175))

(assert (= (and b!7088175 (not res!2895214)) b!7088176))

(assert (= (and start!689918 (is-ElementMatch!17766 r!11554)) b!7088169))

(assert (= (and start!689918 (is-Concat!26611 r!11554)) b!7088173))

(assert (= (and start!689918 (is-Star!17766 r!11554)) b!7088171))

(assert (= (and start!689918 (is-Union!17766 r!11554)) b!7088172))

(assert (= start!689918 b!7088170))

(assert (= start!689918 b!7088178))

(declare-fun m!7818176 () Bool)

(assert (=> b!7088174 m!7818176))

(declare-fun m!7818178 () Bool)

(assert (=> b!7088174 m!7818178))

(declare-fun m!7818180 () Bool)

(assert (=> b!7088174 m!7818180))

(declare-fun m!7818182 () Bool)

(assert (=> b!7088174 m!7818182))

(assert (=> b!7088174 m!7818180))

(declare-fun m!7818184 () Bool)

(assert (=> b!7088174 m!7818184))

(assert (=> b!7088174 m!7818180))

(declare-fun m!7818186 () Bool)

(assert (=> b!7088175 m!7818186))

(declare-fun m!7818188 () Bool)

(assert (=> b!7088175 m!7818188))

(declare-fun m!7818190 () Bool)

(assert (=> b!7088175 m!7818190))

(declare-fun m!7818192 () Bool)

(assert (=> b!7088175 m!7818192))

(declare-fun m!7818194 () Bool)

(assert (=> b!7088175 m!7818194))

(assert (=> b!7088175 m!7818180))

(declare-fun m!7818196 () Bool)

(assert (=> b!7088175 m!7818196))

(declare-fun m!7818198 () Bool)

(assert (=> b!7088175 m!7818198))

(declare-fun m!7818200 () Bool)

(assert (=> b!7088175 m!7818200))

(declare-fun m!7818202 () Bool)

(assert (=> b!7088175 m!7818202))

(declare-fun m!7818204 () Bool)

(assert (=> b!7088175 m!7818204))

(assert (=> b!7088175 m!7818180))

(declare-fun m!7818206 () Bool)

(assert (=> b!7088175 m!7818206))

(declare-fun m!7818208 () Bool)

(assert (=> b!7088176 m!7818208))

(declare-fun m!7818210 () Bool)

(assert (=> start!689918 m!7818210))

(declare-fun m!7818212 () Bool)

(assert (=> start!689918 m!7818212))

(declare-fun m!7818214 () Bool)

(assert (=> start!689918 m!7818214))

(push 1)

(assert (not b!7088174))

(assert (not b!7088170))

(assert (not b!7088172))

(assert (not b!7088176))

(assert (not b!7088171))

(assert (not b!7088173))

(assert tp_is_empty!44765)

(assert (not b!7088175))

(assert (not start!689918))

(assert (not b!7088178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1883153 () Bool)

(declare-fun d!2216369 () Bool)

(assert (= bs!1883153 (and d!2216369 b!7088174)))

(declare-fun lambda!429394 () Int)

(assert (=> bs!1883153 (= lambda!429394 lambda!429373)))

(assert (=> d!2216369 (= (derivationStepZipperDown!2345 (regOne!36045 r!11554) (Context!13525 (++!15939 (exprs!7262 c!9994) (exprs!7262 auxCtx!45))) a!1901) (appendTo!855 (derivationStepZipperDown!2345 (regOne!36045 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555166 () Unit!162231)

(assert (=> d!2216369 (= lt!2555166 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429394))))

(declare-fun lt!2555165 () Unit!162231)

(declare-fun choose!54634 (Context!13524 Regex!17766 C!35802 Context!13524) Unit!162231)

(assert (=> d!2216369 (= lt!2555165 (choose!54634 c!9994 (regOne!36045 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216369 (validRegex!9041 (regOne!36045 r!11554))))

(assert (=> d!2216369 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!163 c!9994 (regOne!36045 r!11554) a!1901 auxCtx!45) lt!2555165)))

(declare-fun bs!1883154 () Bool)

(assert (= bs!1883154 d!2216369))

(declare-fun m!7818256 () Bool)

(assert (=> bs!1883154 m!7818256))

(assert (=> bs!1883154 m!7818190))

(declare-fun m!7818258 () Bool)

(assert (=> bs!1883154 m!7818258))

(assert (=> bs!1883154 m!7818184))

(assert (=> bs!1883154 m!7818190))

(declare-fun m!7818260 () Bool)

(assert (=> bs!1883154 m!7818260))

(declare-fun m!7818262 () Bool)

(assert (=> bs!1883154 m!7818262))

(declare-fun m!7818264 () Bool)

(assert (=> bs!1883154 m!7818264))

(assert (=> b!7088175 d!2216369))

(declare-fun bs!1883155 () Bool)

(declare-fun d!2216371 () Bool)

(assert (= bs!1883155 (and d!2216371 b!7088177)))

(declare-fun lambda!429399 () Int)

(assert (=> bs!1883155 (= lambda!429399 lambda!429372)))

(assert (=> d!2216371 true))

(assert (=> d!2216371 (= (appendTo!855 lt!2555115 auxCtx!45) (map!16118 lt!2555115 lambda!429399))))

(declare-fun bs!1883156 () Bool)

(assert (= bs!1883156 d!2216371))

(declare-fun m!7818266 () Bool)

(assert (=> bs!1883156 m!7818266))

(assert (=> b!7088175 d!2216371))

(declare-fun d!2216373 () Bool)

(declare-fun res!2895234 () Bool)

(declare-fun e!4261231 () Bool)

(assert (=> d!2216373 (=> res!2895234 e!4261231)))

(assert (=> d!2216373 (= res!2895234 (is-Nil!68605 (exprs!7262 c!9994)))))

(assert (=> d!2216373 (= (forall!16710 (exprs!7262 c!9994) lambda!429373) e!4261231)))

(declare-fun b!7088217 () Bool)

(declare-fun e!4261232 () Bool)

(assert (=> b!7088217 (= e!4261231 e!4261232)))

(declare-fun res!2895235 () Bool)

(assert (=> b!7088217 (=> (not res!2895235) (not e!4261232))))

(declare-fun dynLambda!27982 (Int Regex!17766) Bool)

(assert (=> b!7088217 (= res!2895235 (dynLambda!27982 lambda!429373 (h!75053 (exprs!7262 c!9994))))))

(declare-fun b!7088218 () Bool)

(assert (=> b!7088218 (= e!4261232 (forall!16710 (t!382514 (exprs!7262 c!9994)) lambda!429373))))

(assert (= (and d!2216373 (not res!2895234)) b!7088217))

(assert (= (and b!7088217 res!2895235) b!7088218))

(declare-fun b_lambda!270913 () Bool)

(assert (=> (not b_lambda!270913) (not b!7088217)))

(declare-fun m!7818268 () Bool)

(assert (=> b!7088217 m!7818268))

(declare-fun m!7818270 () Bool)

(assert (=> b!7088218 m!7818270))

(assert (=> b!7088175 d!2216373))

(declare-fun b!7088241 () Bool)

(declare-fun e!4261247 () (Set Context!13524))

(declare-fun e!4261250 () (Set Context!13524))

(assert (=> b!7088241 (= e!4261247 e!4261250)))

(declare-fun c!1322873 () Bool)

(assert (=> b!7088241 (= c!1322873 (is-Concat!26611 (regTwo!36045 r!11554)))))

(declare-fun b!7088242 () Bool)

(declare-fun c!1322875 () Bool)

(declare-fun e!4261245 () Bool)

(assert (=> b!7088242 (= c!1322875 e!4261245)))

(declare-fun res!2895239 () Bool)

(assert (=> b!7088242 (=> (not res!2895239) (not e!4261245))))

(assert (=> b!7088242 (= res!2895239 (is-Concat!26611 (regTwo!36045 r!11554)))))

(declare-fun e!4261246 () (Set Context!13524))

(assert (=> b!7088242 (= e!4261246 e!4261247)))

(declare-fun b!7088243 () Bool)

(declare-fun nullable!7410 (Regex!17766) Bool)

(assert (=> b!7088243 (= e!4261245 (nullable!7410 (regOne!36044 (regTwo!36045 r!11554))))))

(declare-fun call!644315 () List!68729)

(declare-fun bm!644305 () Bool)

(declare-fun c!1322871 () Bool)

(declare-fun call!644312 () (Set Context!13524))

(assert (=> bm!644305 (= call!644312 (derivationStepZipperDown!2345 (ite c!1322871 (regTwo!36045 (regTwo!36045 r!11554)) (ite c!1322875 (regTwo!36044 (regTwo!36045 r!11554)) (ite c!1322873 (regOne!36044 (regTwo!36045 r!11554)) (reg!18095 (regTwo!36045 r!11554))))) (ite (or c!1322871 c!1322875) c!9994 (Context!13525 call!644315)) a!1901))))

(declare-fun b!7088244 () Bool)

(declare-fun e!4261248 () (Set Context!13524))

(assert (=> b!7088244 (= e!4261248 (set.insert c!9994 (as set.empty (Set Context!13524))))))

(declare-fun d!2216375 () Bool)

(declare-fun c!1322872 () Bool)

(assert (=> d!2216375 (= c!1322872 (and (is-ElementMatch!17766 (regTwo!36045 r!11554)) (= (c!1322857 (regTwo!36045 r!11554)) a!1901)))))

(assert (=> d!2216375 (= (derivationStepZipperDown!2345 (regTwo!36045 r!11554) c!9994 a!1901) e!4261248)))

(declare-fun bm!644306 () Bool)

(declare-fun call!644311 () List!68729)

(assert (=> bm!644306 (= call!644315 call!644311)))

(declare-fun b!7088245 () Bool)

(assert (=> b!7088245 (= e!4261248 e!4261246)))

(assert (=> b!7088245 (= c!1322871 (is-Union!17766 (regTwo!36045 r!11554)))))

(declare-fun b!7088246 () Bool)

(declare-fun call!644310 () (Set Context!13524))

(declare-fun call!644313 () (Set Context!13524))

(assert (=> b!7088246 (= e!4261247 (set.union call!644310 call!644313))))

(declare-fun bm!644307 () Bool)

(assert (=> bm!644307 (= call!644313 call!644312)))

(declare-fun bm!644308 () Bool)

(declare-fun call!644314 () (Set Context!13524))

(assert (=> bm!644308 (= call!644314 call!644313)))

(declare-fun b!7088247 () Bool)

(assert (=> b!7088247 (= e!4261246 (set.union call!644310 call!644312))))

(declare-fun b!7088248 () Bool)

(declare-fun c!1322874 () Bool)

(assert (=> b!7088248 (= c!1322874 (is-Star!17766 (regTwo!36045 r!11554)))))

(declare-fun e!4261249 () (Set Context!13524))

(assert (=> b!7088248 (= e!4261250 e!4261249)))

(declare-fun b!7088249 () Bool)

(assert (=> b!7088249 (= e!4261249 (as set.empty (Set Context!13524)))))

(declare-fun b!7088250 () Bool)

(assert (=> b!7088250 (= e!4261250 call!644314)))

(declare-fun bm!644309 () Bool)

(declare-fun $colon$colon!2693 (List!68729 Regex!17766) List!68729)

(assert (=> bm!644309 (= call!644311 ($colon$colon!2693 (exprs!7262 c!9994) (ite (or c!1322875 c!1322873) (regTwo!36044 (regTwo!36045 r!11554)) (regTwo!36045 r!11554))))))

(declare-fun bm!644310 () Bool)

(assert (=> bm!644310 (= call!644310 (derivationStepZipperDown!2345 (ite c!1322871 (regOne!36045 (regTwo!36045 r!11554)) (regOne!36044 (regTwo!36045 r!11554))) (ite c!1322871 c!9994 (Context!13525 call!644311)) a!1901))))

(declare-fun b!7088251 () Bool)

(assert (=> b!7088251 (= e!4261249 call!644314)))

(assert (= (and d!2216375 c!1322872) b!7088244))

(assert (= (and d!2216375 (not c!1322872)) b!7088245))

(assert (= (and b!7088245 c!1322871) b!7088247))

(assert (= (and b!7088245 (not c!1322871)) b!7088242))

(assert (= (and b!7088242 res!2895239) b!7088243))

(assert (= (and b!7088242 c!1322875) b!7088246))

(assert (= (and b!7088242 (not c!1322875)) b!7088241))

(assert (= (and b!7088241 c!1322873) b!7088250))

(assert (= (and b!7088241 (not c!1322873)) b!7088248))

(assert (= (and b!7088248 c!1322874) b!7088251))

(assert (= (and b!7088248 (not c!1322874)) b!7088249))

(assert (= (or b!7088250 b!7088251) bm!644306))

(assert (= (or b!7088250 b!7088251) bm!644308))

(assert (= (or b!7088246 bm!644308) bm!644307))

(assert (= (or b!7088246 bm!644306) bm!644309))

(assert (= (or b!7088247 bm!644307) bm!644305))

(assert (= (or b!7088247 b!7088246) bm!644310))

(declare-fun m!7818272 () Bool)

(assert (=> b!7088243 m!7818272))

(declare-fun m!7818274 () Bool)

(assert (=> bm!644310 m!7818274))

(declare-fun m!7818276 () Bool)

(assert (=> bm!644309 m!7818276))

(declare-fun m!7818278 () Bool)

(assert (=> b!7088244 m!7818278))

(declare-fun m!7818280 () Bool)

(assert (=> bm!644305 m!7818280))

(assert (=> b!7088175 d!2216375))

(declare-fun d!2216377 () Bool)

(declare-fun choose!54635 ((Set Context!13524) Int) (Set Context!13524))

(assert (=> d!2216377 (= (map!16118 lt!2555107 lambda!429372) (choose!54635 lt!2555107 lambda!429372))))

(declare-fun bs!1883157 () Bool)

(assert (= bs!1883157 d!2216377))

(declare-fun m!7818282 () Bool)

(assert (=> bs!1883157 m!7818282))

(assert (=> b!7088175 d!2216377))

(declare-fun d!2216379 () Bool)

(assert (=> d!2216379 (= (map!16118 (set.union lt!2555107 lt!2555115) lambda!429372) (choose!54635 (set.union lt!2555107 lt!2555115) lambda!429372))))

(declare-fun bs!1883158 () Bool)

(assert (= bs!1883158 d!2216379))

(declare-fun m!7818284 () Bool)

(assert (=> bs!1883158 m!7818284))

(assert (=> b!7088175 d!2216379))

(declare-fun bs!1883159 () Bool)

(declare-fun d!2216381 () Bool)

(assert (= bs!1883159 (and d!2216381 b!7088177)))

(declare-fun lambda!429400 () Int)

(assert (=> bs!1883159 (= lambda!429400 lambda!429372)))

(declare-fun bs!1883160 () Bool)

(assert (= bs!1883160 (and d!2216381 d!2216371)))

(assert (=> bs!1883160 (= lambda!429400 lambda!429399)))

(assert (=> d!2216381 true))

(assert (=> d!2216381 (= (appendTo!855 lt!2555107 auxCtx!45) (map!16118 lt!2555107 lambda!429400))))

(declare-fun bs!1883161 () Bool)

(assert (= bs!1883161 d!2216381))

(declare-fun m!7818286 () Bool)

(assert (=> bs!1883161 m!7818286))

(assert (=> b!7088175 d!2216381))

(declare-fun bs!1883162 () Bool)

(declare-fun d!2216385 () Bool)

(assert (= bs!1883162 (and d!2216385 b!7088174)))

(declare-fun lambda!429401 () Int)

(assert (=> bs!1883162 (= lambda!429401 lambda!429373)))

(declare-fun bs!1883163 () Bool)

(assert (= bs!1883163 (and d!2216385 d!2216369)))

(assert (=> bs!1883163 (= lambda!429401 lambda!429394)))

(assert (=> d!2216385 (= (derivationStepZipperDown!2345 (regTwo!36045 r!11554) (Context!13525 (++!15939 (exprs!7262 c!9994) (exprs!7262 auxCtx!45))) a!1901) (appendTo!855 (derivationStepZipperDown!2345 (regTwo!36045 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555170 () Unit!162231)

(assert (=> d!2216385 (= lt!2555170 (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429401))))

(declare-fun lt!2555169 () Unit!162231)

(assert (=> d!2216385 (= lt!2555169 (choose!54634 c!9994 (regTwo!36045 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216385 (validRegex!9041 (regTwo!36045 r!11554))))

(assert (=> d!2216385 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!163 c!9994 (regTwo!36045 r!11554) a!1901 auxCtx!45) lt!2555169)))

(declare-fun bs!1883164 () Bool)

(assert (= bs!1883164 d!2216385))

(declare-fun m!7818288 () Bool)

(assert (=> bs!1883164 m!7818288))

(assert (=> bs!1883164 m!7818204))

(declare-fun m!7818290 () Bool)

(assert (=> bs!1883164 m!7818290))

(assert (=> bs!1883164 m!7818184))

(assert (=> bs!1883164 m!7818204))

(declare-fun m!7818292 () Bool)

(assert (=> bs!1883164 m!7818292))

(declare-fun m!7818294 () Bool)

(assert (=> bs!1883164 m!7818294))

(declare-fun m!7818296 () Bool)

(assert (=> bs!1883164 m!7818296))

(assert (=> b!7088175 d!2216385))

(declare-fun d!2216387 () Bool)

(assert (=> d!2216387 (forall!16710 (++!15939 (exprs!7262 c!9994) (exprs!7262 auxCtx!45)) lambda!429373)))

(declare-fun lt!2555173 () Unit!162231)

(declare-fun choose!54636 (List!68729 List!68729 Int) Unit!162231)

(assert (=> d!2216387 (= lt!2555173 (choose!54636 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373))))

(assert (=> d!2216387 (forall!16710 (exprs!7262 c!9994) lambda!429373)))

(assert (=> d!2216387 (= (lemmaConcatPreservesForall!1069 (exprs!7262 c!9994) (exprs!7262 auxCtx!45) lambda!429373) lt!2555173)))

(declare-fun bs!1883165 () Bool)

(assert (= bs!1883165 d!2216387))

(assert (=> bs!1883165 m!7818184))

(assert (=> bs!1883165 m!7818184))

(declare-fun m!7818298 () Bool)

(assert (=> bs!1883165 m!7818298))

(declare-fun m!7818300 () Bool)

(assert (=> bs!1883165 m!7818300))

(assert (=> bs!1883165 m!7818196))

(assert (=> b!7088175 d!2216387))

(declare-fun b!7088252 () Bool)

(declare-fun e!4261253 () (Set Context!13524))

(declare-fun e!4261256 () (Set Context!13524))

(assert (=> b!7088252 (= e!4261253 e!4261256)))

(declare-fun c!1322878 () Bool)

(assert (=> b!7088252 (= c!1322878 (is-Concat!26611 (regOne!36045 r!11554)))))

(declare-fun b!7088253 () Bool)

(declare-fun c!1322880 () Bool)

(declare-fun e!4261251 () Bool)

(assert (=> b!7088253 (= c!1322880 e!4261251)))

(declare-fun res!2895240 () Bool)

(assert (=> b!7088253 (=> (not res!2895240) (not e!4261251))))

(assert (=> b!7088253 (= res!2895240 (is-Concat!26611 (regOne!36045 r!11554)))))

(declare-fun e!4261252 () (Set Context!13524))

(assert (=> b!7088253 (= e!4261252 e!4261253)))

(declare-fun b!7088254 () Bool)

(assert (=> b!7088254 (= e!4261251 (nullable!7410 (regOne!36044 (regOne!36045 r!11554))))))

(declare-fun call!644318 () (Set Context!13524))

(declare-fun c!1322876 () Bool)

(declare-fun bm!644311 () Bool)

(declare-fun call!644321 () List!68729)

(assert (=> bm!644311 (= call!644318 (derivationStepZipperDown!2345 (ite c!1322876 (regTwo!36045 (regOne!36045 r!11554)) (ite c!1322880 (regTwo!36044 (regOne!36045 r!11554)) (ite c!1322878 (regOne!36044 (regOne!36045 r!11554)) (reg!18095 (regOne!36045 r!11554))))) (ite (or c!1322876 c!1322880) c!9994 (Context!13525 call!644321)) a!1901))))

(declare-fun b!7088255 () Bool)

(declare-fun e!4261254 () (Set Context!13524))

(assert (=> b!7088255 (= e!4261254 (set.insert c!9994 (as set.empty (Set Context!13524))))))

(declare-fun d!2216389 () Bool)

(declare-fun c!1322877 () Bool)

(assert (=> d!2216389 (= c!1322877 (and (is-ElementMatch!17766 (regOne!36045 r!11554)) (= (c!1322857 (regOne!36045 r!11554)) a!1901)))))

(assert (=> d!2216389 (= (derivationStepZipperDown!2345 (regOne!36045 r!11554) c!9994 a!1901) e!4261254)))

(declare-fun bm!644312 () Bool)

(declare-fun call!644317 () List!68729)

(assert (=> bm!644312 (= call!644321 call!644317)))

(declare-fun b!7088256 () Bool)

(assert (=> b!7088256 (= e!4261254 e!4261252)))

(assert (=> b!7088256 (= c!1322876 (is-Union!17766 (regOne!36045 r!11554)))))

(declare-fun b!7088257 () Bool)

(declare-fun call!644316 () (Set Context!13524))

(declare-fun call!644319 () (Set Context!13524))

(assert (=> b!7088257 (= e!4261253 (set.union call!644316 call!644319))))

(declare-fun bm!644313 () Bool)

(assert (=> bm!644313 (= call!644319 call!644318)))

(declare-fun bm!644314 () Bool)

(declare-fun call!644320 () (Set Context!13524))

(assert (=> bm!644314 (= call!644320 call!644319)))

(declare-fun b!7088258 () Bool)

(assert (=> b!7088258 (= e!4261252 (set.union call!644316 call!644318))))

(declare-fun b!7088259 () Bool)

(declare-fun c!1322879 () Bool)

(assert (=> b!7088259 (= c!1322879 (is-Star!17766 (regOne!36045 r!11554)))))

(declare-fun e!4261255 () (Set Context!13524))

(assert (=> b!7088259 (= e!4261256 e!4261255)))

(declare-fun b!7088260 () Bool)

(assert (=> b!7088260 (= e!4261255 (as set.empty (Set Context!13524)))))

(declare-fun b!7088261 () Bool)

(assert (=> b!7088261 (= e!4261256 call!644320)))

(declare-fun bm!644315 () Bool)

(assert (=> bm!644315 (= call!644317 ($colon$colon!2693 (exprs!7262 c!9994) (ite (or c!1322880 c!1322878) (regTwo!36044 (regOne!36045 r!11554)) (regOne!36045 r!11554))))))

(declare-fun bm!644316 () Bool)

(assert (=> bm!644316 (= call!644316 (derivationStepZipperDown!2345 (ite c!1322876 (regOne!36045 (regOne!36045 r!11554)) (regOne!36044 (regOne!36045 r!11554))) (ite c!1322876 c!9994 (Context!13525 call!644317)) a!1901))))

(declare-fun b!7088262 () Bool)

(assert (=> b!7088262 (= e!4261255 call!644320)))

(assert (= (and d!2216389 c!1322877) b!7088255))

(assert (= (and d!2216389 (not c!1322877)) b!7088256))

(assert (= (and b!7088256 c!1322876) b!7088258))

(assert (= (and b!7088256 (not c!1322876)) b!7088253))

(assert (= (and b!7088253 res!2895240) b!7088254))

(assert (= (and b!7088253 c!1322880) b!7088257))

(assert (= (and b!7088253 (not c!1322880)) b!7088252))

(assert (= (and b!7088252 c!1322878) b!7088261))

(assert (= (and b!7088252 (not c!1322878)) b!7088259))

(assert (= (and b!7088259 c!1322879) b!7088262))

(assert (= (and b!7088259 (not c!1322879)) b!7088260))

(assert (= (or b!7088261 b!7088262) bm!644312))

(assert (= (or b!7088261 b!7088262) bm!644314))

(assert (= (or b!7088257 bm!644314) bm!644313))

(assert (= (or b!7088257 bm!644312) bm!644315))

(assert (= (or b!7088258 bm!644313) bm!644311))

(assert (= (or b!7088258 b!7088257) bm!644316))

(declare-fun m!7818302 () Bool)

(assert (=> b!7088254 m!7818302))

(declare-fun m!7818304 () Bool)

(assert (=> bm!644316 m!7818304))

(declare-fun m!7818306 () Bool)

(assert (=> bm!644315 m!7818306))

(assert (=> b!7088255 m!7818278))

(declare-fun m!7818308 () Bool)

(assert (=> bm!644311 m!7818308))

(assert (=> b!7088175 d!2216389))

(declare-fun d!2216391 () Bool)

(assert (=> d!2216391 (= (map!16118 lt!2555115 lambda!429372) (choose!54635 lt!2555115 lambda!429372))))

(declare-fun bs!1883166 () Bool)

(assert (= bs!1883166 d!2216391))

(declare-fun m!7818310 () Bool)

(assert (=> bs!1883166 m!7818310))

(assert (=> b!7088175 d!2216391))

(declare-fun d!2216393 () Bool)

(assert (=> d!2216393 (= (set.union (map!16118 lt!2555107 lambda!429372) (map!16118 lt!2555115 lambda!429372)) (map!16118 (set.union lt!2555107 lt!2555115) lambda!429372))))

(declare-fun lt!2555176 () Unit!162231)

(declare-fun choose!54637 ((Set Context!13524) (Set Context!13524) Int) Unit!162231)

(assert (=> d!2216393 (= lt!2555176 (choose!54637 lt!2555107 lt!2555115 lambda!429372))))

(assert (=> d!2216393 (= (lemmaMapAssociative!3 lt!2555107 lt!2555115 lambda!429372) lt!2555176)))

(declare-fun bs!1883167 () Bool)

(assert (= bs!1883167 d!2216393))

(assert (=> bs!1883167 m!7818194))

(assert (=> bs!1883167 m!7818198))

(assert (=> bs!1883167 m!7818186))

(declare-fun m!7818312 () Bool)

(assert (=> bs!1883167 m!7818312))

(assert (=> b!7088175 d!2216393))

(declare-fun b!7088263 () Bool)

(declare-fun e!4261259 () (Set Context!13524))

(declare-fun e!4261262 () (Set Context!13524))

(assert (=> b!7088263 (= e!4261259 e!4261262)))

(declare-fun c!1322883 () Bool)

(assert (=> b!7088263 (= c!1322883 (is-Concat!26611 (regOne!36045 r!11554)))))

(declare-fun b!7088264 () Bool)

(declare-fun c!1322885 () Bool)

(declare-fun e!4261257 () Bool)

(assert (=> b!7088264 (= c!1322885 e!4261257)))

(declare-fun res!2895241 () Bool)

(assert (=> b!7088264 (=> (not res!2895241) (not e!4261257))))

(assert (=> b!7088264 (= res!2895241 (is-Concat!26611 (regOne!36045 r!11554)))))

(declare-fun e!4261258 () (Set Context!13524))

(assert (=> b!7088264 (= e!4261258 e!4261259)))

(declare-fun b!7088265 () Bool)

(assert (=> b!7088265 (= e!4261257 (nullable!7410 (regOne!36044 (regOne!36045 r!11554))))))

(declare-fun bm!644317 () Bool)

(declare-fun call!644327 () List!68729)

(declare-fun call!644324 () (Set Context!13524))

(declare-fun c!1322881 () Bool)

(assert (=> bm!644317 (= call!644324 (derivationStepZipperDown!2345 (ite c!1322881 (regTwo!36045 (regOne!36045 r!11554)) (ite c!1322885 (regTwo!36044 (regOne!36045 r!11554)) (ite c!1322883 (regOne!36044 (regOne!36045 r!11554)) (reg!18095 (regOne!36045 r!11554))))) (ite (or c!1322881 c!1322885) lt!2555109 (Context!13525 call!644327)) a!1901))))

(declare-fun b!7088266 () Bool)

(declare-fun e!4261260 () (Set Context!13524))

(assert (=> b!7088266 (= e!4261260 (set.insert lt!2555109 (as set.empty (Set Context!13524))))))

(declare-fun d!2216395 () Bool)

(declare-fun c!1322882 () Bool)

(assert (=> d!2216395 (= c!1322882 (and (is-ElementMatch!17766 (regOne!36045 r!11554)) (= (c!1322857 (regOne!36045 r!11554)) a!1901)))))

(assert (=> d!2216395 (= (derivationStepZipperDown!2345 (regOne!36045 r!11554) lt!2555109 a!1901) e!4261260)))

(declare-fun bm!644318 () Bool)

(declare-fun call!644323 () List!68729)

(assert (=> bm!644318 (= call!644327 call!644323)))

(declare-fun b!7088267 () Bool)

(assert (=> b!7088267 (= e!4261260 e!4261258)))

(assert (=> b!7088267 (= c!1322881 (is-Union!17766 (regOne!36045 r!11554)))))

(declare-fun b!7088268 () Bool)

(declare-fun call!644322 () (Set Context!13524))

(declare-fun call!644325 () (Set Context!13524))

(assert (=> b!7088268 (= e!4261259 (set.union call!644322 call!644325))))

(declare-fun bm!644319 () Bool)

(assert (=> bm!644319 (= call!644325 call!644324)))

(declare-fun bm!644320 () Bool)

(declare-fun call!644326 () (Set Context!13524))

(assert (=> bm!644320 (= call!644326 call!644325)))

(declare-fun b!7088269 () Bool)

(assert (=> b!7088269 (= e!4261258 (set.union call!644322 call!644324))))

(declare-fun b!7088270 () Bool)

(declare-fun c!1322884 () Bool)

(assert (=> b!7088270 (= c!1322884 (is-Star!17766 (regOne!36045 r!11554)))))

(declare-fun e!4261261 () (Set Context!13524))

(assert (=> b!7088270 (= e!4261262 e!4261261)))

(declare-fun b!7088271 () Bool)

(assert (=> b!7088271 (= e!4261261 (as set.empty (Set Context!13524)))))

(declare-fun b!7088272 () Bool)

(assert (=> b!7088272 (= e!4261262 call!644326)))

(declare-fun bm!644321 () Bool)

(assert (=> bm!644321 (= call!644323 ($colon$colon!2693 (exprs!7262 lt!2555109) (ite (or c!1322885 c!1322883) (regTwo!36044 (regOne!36045 r!11554)) (regOne!36045 r!11554))))))

(declare-fun bm!644322 () Bool)

(assert (=> bm!644322 (= call!644322 (derivationStepZipperDown!2345 (ite c!1322881 (regOne!36045 (regOne!36045 r!11554)) (regOne!36044 (regOne!36045 r!11554))) (ite c!1322881 lt!2555109 (Context!13525 call!644323)) a!1901))))

(declare-fun b!7088273 () Bool)

(assert (=> b!7088273 (= e!4261261 call!644326)))

(assert (= (and d!2216395 c!1322882) b!7088266))

(assert (= (and d!2216395 (not c!1322882)) b!7088267))

(assert (= (and b!7088267 c!1322881) b!7088269))

(assert (= (and b!7088267 (not c!1322881)) b!7088264))

(assert (= (and b!7088264 res!2895241) b!7088265))

(assert (= (and b!7088264 c!1322885) b!7088268))

(assert (= (and b!7088264 (not c!1322885)) b!7088263))

(assert (= (and b!7088263 c!1322883) b!7088272))

(assert (= (and b!7088263 (not c!1322883)) b!7088270))

(assert (= (and b!7088270 c!1322884) b!7088273))

(assert (= (and b!7088270 (not c!1322884)) b!7088271))

(assert (= (or b!7088272 b!7088273) bm!644318))

(assert (= (or b!7088272 b!7088273) bm!644320))

(assert (= (or b!7088268 bm!644320) bm!644319))

(assert (= (or b!7088268 bm!644318) bm!644321))

(assert (= (or b!7088269 bm!644319) bm!644317))

(assert (= (or b!7088269 b!7088268) bm!644322))

(assert (=> b!7088265 m!7818302))

(declare-fun m!7818314 () Bool)

(assert (=> bm!644322 m!7818314))

(declare-fun m!7818316 () Bool)

(assert (=> bm!644321 m!7818316))

(declare-fun m!7818318 () Bool)

(assert (=> b!7088266 m!7818318))

(declare-fun m!7818320 () Bool)

(assert (=> bm!644317 m!7818320))

(assert (=> b!7088174 d!2216395))

(declare-fun b!7088274 () Bool)

(declare-fun e!4261265 () (Set Context!13524))

(declare-fun e!4261268 () (Set Context!13524))

(assert (=> b!7088274 (= e!4261265 e!4261268)))

(declare-fun c!1322888 () Bool)

(assert (=> b!7088274 (= c!1322888 (is-Concat!26611 (regTwo!36045 r!11554)))))

(declare-fun b!7088275 () Bool)

(declare-fun c!1322890 () Bool)

(declare-fun e!4261263 () Bool)

(assert (=> b!7088275 (= c!1322890 e!4261263)))

(declare-fun res!2895242 () Bool)

(assert (=> b!7088275 (=> (not res!2895242) (not e!4261263))))

(assert (=> b!7088275 (= res!2895242 (is-Concat!26611 (regTwo!36045 r!11554)))))

(declare-fun e!4261264 () (Set Context!13524))

(assert (=> b!7088275 (= e!4261264 e!4261265)))

(declare-fun b!7088276 () Bool)

(assert (=> b!7088276 (= e!4261263 (nullable!7410 (regOne!36044 (regTwo!36045 r!11554))))))

(declare-fun c!1322886 () Bool)

(declare-fun call!644333 () List!68729)

(declare-fun call!644330 () (Set Context!13524))

(declare-fun bm!644323 () Bool)

(assert (=> bm!644323 (= call!644330 (derivationStepZipperDown!2345 (ite c!1322886 (regTwo!36045 (regTwo!36045 r!11554)) (ite c!1322890 (regTwo!36044 (regTwo!36045 r!11554)) (ite c!1322888 (regOne!36044 (regTwo!36045 r!11554)) (reg!18095 (regTwo!36045 r!11554))))) (ite (or c!1322886 c!1322890) lt!2555109 (Context!13525 call!644333)) a!1901))))

(declare-fun b!7088277 () Bool)

(declare-fun e!4261266 () (Set Context!13524))

(assert (=> b!7088277 (= e!4261266 (set.insert lt!2555109 (as set.empty (Set Context!13524))))))

(declare-fun d!2216397 () Bool)

(declare-fun c!1322887 () Bool)

(assert (=> d!2216397 (= c!1322887 (and (is-ElementMatch!17766 (regTwo!36045 r!11554)) (= (c!1322857 (regTwo!36045 r!11554)) a!1901)))))

(assert (=> d!2216397 (= (derivationStepZipperDown!2345 (regTwo!36045 r!11554) lt!2555109 a!1901) e!4261266)))

(declare-fun bm!644324 () Bool)

(declare-fun call!644329 () List!68729)

(assert (=> bm!644324 (= call!644333 call!644329)))

(declare-fun b!7088278 () Bool)

(assert (=> b!7088278 (= e!4261266 e!4261264)))

(assert (=> b!7088278 (= c!1322886 (is-Union!17766 (regTwo!36045 r!11554)))))

(declare-fun b!7088279 () Bool)

(declare-fun call!644328 () (Set Context!13524))

(declare-fun call!644331 () (Set Context!13524))

(assert (=> b!7088279 (= e!4261265 (set.union call!644328 call!644331))))

(declare-fun bm!644325 () Bool)

(assert (=> bm!644325 (= call!644331 call!644330)))

(declare-fun bm!644326 () Bool)

(declare-fun call!644332 () (Set Context!13524))

(assert (=> bm!644326 (= call!644332 call!644331)))

(declare-fun b!7088280 () Bool)

(assert (=> b!7088280 (= e!4261264 (set.union call!644328 call!644330))))

(declare-fun b!7088281 () Bool)

(declare-fun c!1322889 () Bool)

(assert (=> b!7088281 (= c!1322889 (is-Star!17766 (regTwo!36045 r!11554)))))

(declare-fun e!4261267 () (Set Context!13524))

(assert (=> b!7088281 (= e!4261268 e!4261267)))

(declare-fun b!7088282 () Bool)

(assert (=> b!7088282 (= e!4261267 (as set.empty (Set Context!13524)))))

(declare-fun b!7088283 () Bool)

(assert (=> b!7088283 (= e!4261268 call!644332)))

(declare-fun bm!644327 () Bool)

(assert (=> bm!644327 (= call!644329 ($colon$colon!2693 (exprs!7262 lt!2555109) (ite (or c!1322890 c!1322888) (regTwo!36044 (regTwo!36045 r!11554)) (regTwo!36045 r!11554))))))

(declare-fun bm!644328 () Bool)

(assert (=> bm!644328 (= call!644328 (derivationStepZipperDown!2345 (ite c!1322886 (regOne!36045 (regTwo!36045 r!11554)) (regOne!36044 (regTwo!36045 r!11554))) (ite c!1322886 lt!2555109 (Context!13525 call!644329)) a!1901))))

(declare-fun b!7088284 () Bool)

(assert (=> b!7088284 (= e!4261267 call!644332)))

(assert (= (and d!2216397 c!1322887) b!7088277))

(assert (= (and d!2216397 (not c!1322887)) b!7088278))

(assert (= (and b!7088278 c!1322886) b!7088280))

(assert (= (and b!7088278 (not c!1322886)) b!7088275))

(assert (= (and b!7088275 res!2895242) b!7088276))

(assert (= (and b!7088275 c!1322890) b!7088279))

(assert (= (and b!7088275 (not c!1322890)) b!7088274))

(assert (= (and b!7088274 c!1322888) b!7088283))

(assert (= (and b!7088274 (not c!1322888)) b!7088281))

(assert (= (and b!7088281 c!1322889) b!7088284))

(assert (= (and b!7088281 (not c!1322889)) b!7088282))

(assert (= (or b!7088283 b!7088284) bm!644324))

(assert (= (or b!7088283 b!7088284) bm!644326))

(assert (= (or b!7088279 bm!644326) bm!644325))

(assert (= (or b!7088279 bm!644324) bm!644327))

(assert (= (or b!7088280 bm!644325) bm!644323))

(assert (= (or b!7088280 b!7088279) bm!644328))

(assert (=> b!7088276 m!7818272))

(declare-fun m!7818322 () Bool)

(assert (=> bm!644328 m!7818322))

(declare-fun m!7818324 () Bool)

(assert (=> bm!644327 m!7818324))

(assert (=> b!7088277 m!7818318))

(declare-fun m!7818326 () Bool)

(assert (=> bm!644323 m!7818326))

(assert (=> b!7088174 d!2216397))

(declare-fun b!7088296 () Bool)

(declare-fun lt!2555183 () List!68729)

(declare-fun e!4261273 () Bool)

(assert (=> b!7088296 (= e!4261273 (or (not (= (exprs!7262 auxCtx!45) Nil!68605)) (= lt!2555183 (exprs!7262 c!9994))))))

(declare-fun b!7088294 () Bool)

(declare-fun e!4261274 () List!68729)

(assert (=> b!7088294 (= e!4261274 (Cons!68605 (h!75053 (exprs!7262 c!9994)) (++!15939 (t!382514 (exprs!7262 c!9994)) (exprs!7262 auxCtx!45))))))

(declare-fun b!7088293 () Bool)

(assert (=> b!7088293 (= e!4261274 (exprs!7262 auxCtx!45))))

(declare-fun b!7088295 () Bool)

(declare-fun res!2895247 () Bool)

(assert (=> b!7088295 (=> (not res!2895247) (not e!4261273))))

(declare-fun size!41302 (List!68729) Int)

(assert (=> b!7088295 (= res!2895247 (= (size!41302 lt!2555183) (+ (size!41302 (exprs!7262 c!9994)) (size!41302 (exprs!7262 auxCtx!45)))))))

(declare-fun d!2216399 () Bool)

(assert (=> d!2216399 e!4261273))

(declare-fun res!2895248 () Bool)

(assert (=> d!2216399 (=> (not res!2895248) (not e!4261273))))

(declare-fun content!13927 (List!68729) (Set Regex!17766))

(assert (=> d!2216399 (= res!2895248 (= (content!13927 lt!2555183) (set.union (content!13927 (exprs!7262 c!9994)) (content!13927 (exprs!7262 auxCtx!45)))))))

(assert (=> d!2216399 (= lt!2555183 e!4261274)))

(declare-fun c!1322894 () Bool)

(assert (=> d!2216399 (= c!1322894 (is-Nil!68605 (exprs!7262 c!9994)))))

(assert (=> d!2216399 (= (++!15939 (exprs!7262 c!9994) (exprs!7262 auxCtx!45)) lt!2555183)))

(assert (= (and d!2216399 c!1322894) b!7088293))

(assert (= (and d!2216399 (not c!1322894)) b!7088294))

(assert (= (and d!2216399 res!2895248) b!7088295))

(assert (= (and b!7088295 res!2895247) b!7088296))

(declare-fun m!7818328 () Bool)

(assert (=> b!7088294 m!7818328))

(declare-fun m!7818330 () Bool)

(assert (=> b!7088295 m!7818330))

(declare-fun m!7818332 () Bool)

(assert (=> b!7088295 m!7818332))

(declare-fun m!7818334 () Bool)

(assert (=> b!7088295 m!7818334))

(declare-fun m!7818336 () Bool)

(assert (=> d!2216399 m!7818336))

(declare-fun m!7818338 () Bool)

(assert (=> d!2216399 m!7818338))

(declare-fun m!7818340 () Bool)

(assert (=> d!2216399 m!7818340))

(assert (=> b!7088174 d!2216399))

(assert (=> b!7088174 d!2216387))

(declare-fun b!7088297 () Bool)

(declare-fun e!4261277 () (Set Context!13524))

(declare-fun e!4261280 () (Set Context!13524))

(assert (=> b!7088297 (= e!4261277 e!4261280)))

(declare-fun c!1322897 () Bool)

(assert (=> b!7088297 (= c!1322897 (is-Concat!26611 r!11554))))

(declare-fun b!7088298 () Bool)

(declare-fun c!1322899 () Bool)

(declare-fun e!4261275 () Bool)

(assert (=> b!7088298 (= c!1322899 e!4261275)))

(declare-fun res!2895249 () Bool)

(assert (=> b!7088298 (=> (not res!2895249) (not e!4261275))))

(assert (=> b!7088298 (= res!2895249 (is-Concat!26611 r!11554))))

(declare-fun e!4261276 () (Set Context!13524))

(assert (=> b!7088298 (= e!4261276 e!4261277)))

(declare-fun b!7088299 () Bool)

(assert (=> b!7088299 (= e!4261275 (nullable!7410 (regOne!36044 r!11554)))))

(declare-fun call!644336 () (Set Context!13524))

(declare-fun c!1322895 () Bool)

(declare-fun bm!644329 () Bool)

(declare-fun call!644339 () List!68729)

(assert (=> bm!644329 (= call!644336 (derivationStepZipperDown!2345 (ite c!1322895 (regTwo!36045 r!11554) (ite c!1322899 (regTwo!36044 r!11554) (ite c!1322897 (regOne!36044 r!11554) (reg!18095 r!11554)))) (ite (or c!1322895 c!1322899) lt!2555109 (Context!13525 call!644339)) a!1901))))

(declare-fun b!7088300 () Bool)

(declare-fun e!4261278 () (Set Context!13524))

(assert (=> b!7088300 (= e!4261278 (set.insert lt!2555109 (as set.empty (Set Context!13524))))))

(declare-fun d!2216401 () Bool)

(declare-fun c!1322896 () Bool)

(assert (=> d!2216401 (= c!1322896 (and (is-ElementMatch!17766 r!11554) (= (c!1322857 r!11554) a!1901)))))

(assert (=> d!2216401 (= (derivationStepZipperDown!2345 r!11554 lt!2555109 a!1901) e!4261278)))

(declare-fun bm!644330 () Bool)

(declare-fun call!644335 () List!68729)

(assert (=> bm!644330 (= call!644339 call!644335)))

(declare-fun b!7088301 () Bool)

(assert (=> b!7088301 (= e!4261278 e!4261276)))

(assert (=> b!7088301 (= c!1322895 (is-Union!17766 r!11554))))

(declare-fun b!7088302 () Bool)

(declare-fun call!644334 () (Set Context!13524))

(declare-fun call!644337 () (Set Context!13524))

(assert (=> b!7088302 (= e!4261277 (set.union call!644334 call!644337))))

(declare-fun bm!644331 () Bool)

(assert (=> bm!644331 (= call!644337 call!644336)))

(declare-fun bm!644332 () Bool)

(declare-fun call!644338 () (Set Context!13524))

(assert (=> bm!644332 (= call!644338 call!644337)))

(declare-fun b!7088303 () Bool)

(assert (=> b!7088303 (= e!4261276 (set.union call!644334 call!644336))))

(declare-fun b!7088304 () Bool)

(declare-fun c!1322898 () Bool)

(assert (=> b!7088304 (= c!1322898 (is-Star!17766 r!11554))))

(declare-fun e!4261279 () (Set Context!13524))

(assert (=> b!7088304 (= e!4261280 e!4261279)))

(declare-fun b!7088305 () Bool)

(assert (=> b!7088305 (= e!4261279 (as set.empty (Set Context!13524)))))

(declare-fun b!7088306 () Bool)

(assert (=> b!7088306 (= e!4261280 call!644338)))

(declare-fun bm!644333 () Bool)

(assert (=> bm!644333 (= call!644335 ($colon$colon!2693 (exprs!7262 lt!2555109) (ite (or c!1322899 c!1322897) (regTwo!36044 r!11554) r!11554)))))

(declare-fun bm!644334 () Bool)

(assert (=> bm!644334 (= call!644334 (derivationStepZipperDown!2345 (ite c!1322895 (regOne!36045 r!11554) (regOne!36044 r!11554)) (ite c!1322895 lt!2555109 (Context!13525 call!644335)) a!1901))))

(declare-fun b!7088307 () Bool)

(assert (=> b!7088307 (= e!4261279 call!644338)))

(assert (= (and d!2216401 c!1322896) b!7088300))

(assert (= (and d!2216401 (not c!1322896)) b!7088301))

(assert (= (and b!7088301 c!1322895) b!7088303))

(assert (= (and b!7088301 (not c!1322895)) b!7088298))

(assert (= (and b!7088298 res!2895249) b!7088299))

(assert (= (and b!7088298 c!1322899) b!7088302))

(assert (= (and b!7088298 (not c!1322899)) b!7088297))

(assert (= (and b!7088297 c!1322897) b!7088306))

(assert (= (and b!7088297 (not c!1322897)) b!7088304))

(assert (= (and b!7088304 c!1322898) b!7088307))

(assert (= (and b!7088304 (not c!1322898)) b!7088305))

(assert (= (or b!7088306 b!7088307) bm!644330))

(assert (= (or b!7088306 b!7088307) bm!644332))

(assert (= (or b!7088302 bm!644332) bm!644331))

(assert (= (or b!7088302 bm!644330) bm!644333))

(assert (= (or b!7088303 bm!644331) bm!644329))

(assert (= (or b!7088303 b!7088302) bm!644334))

(declare-fun m!7818342 () Bool)

(assert (=> b!7088299 m!7818342))

(declare-fun m!7818344 () Bool)

(assert (=> bm!644334 m!7818344))

(declare-fun m!7818346 () Bool)

(assert (=> bm!644333 m!7818346))

(assert (=> b!7088300 m!7818318))

(declare-fun m!7818348 () Bool)

(assert (=> bm!644329 m!7818348))

(assert (=> b!7088174 d!2216401))

(declare-fun d!2216403 () Bool)

(declare-fun res!2895250 () Bool)

(declare-fun e!4261281 () Bool)

(assert (=> d!2216403 (=> res!2895250 e!4261281)))

(assert (=> d!2216403 (= res!2895250 (is-Nil!68605 (exprs!7262 auxCtx!45)))))

(assert (=> d!2216403 (= (forall!16710 (exprs!7262 auxCtx!45) lambda!429373) e!4261281)))

(declare-fun b!7088308 () Bool)

(declare-fun e!4261282 () Bool)

(assert (=> b!7088308 (= e!4261281 e!4261282)))

(declare-fun res!2895251 () Bool)

(assert (=> b!7088308 (=> (not res!2895251) (not e!4261282))))

(assert (=> b!7088308 (= res!2895251 (dynLambda!27982 lambda!429373 (h!75053 (exprs!7262 auxCtx!45))))))

(declare-fun b!7088309 () Bool)

(assert (=> b!7088309 (= e!4261282 (forall!16710 (t!382514 (exprs!7262 auxCtx!45)) lambda!429373))))

(assert (= (and d!2216403 (not res!2895250)) b!7088308))

(assert (= (and b!7088308 res!2895251) b!7088309))

(declare-fun b_lambda!270915 () Bool)

(assert (=> (not b_lambda!270915) (not b!7088308)))

(declare-fun m!7818350 () Bool)

(assert (=> b!7088308 m!7818350))

(declare-fun m!7818352 () Bool)

(assert (=> b!7088309 m!7818352))

(assert (=> b!7088176 d!2216403))

(declare-fun bm!644341 () Bool)

(declare-fun call!644347 () Bool)

(declare-fun call!644348 () Bool)

(assert (=> bm!644341 (= call!644347 call!644348)))

(declare-fun b!7088328 () Bool)

(declare-fun e!4261302 () Bool)

(assert (=> b!7088328 (= e!4261302 call!644348)))

(declare-fun d!2216405 () Bool)

(declare-fun res!2895263 () Bool)

(declare-fun e!4261297 () Bool)

(assert (=> d!2216405 (=> res!2895263 e!4261297)))

(assert (=> d!2216405 (= res!2895263 (is-ElementMatch!17766 r!11554))))

(assert (=> d!2216405 (= (validRegex!9041 r!11554) e!4261297)))

(declare-fun b!7088329 () Bool)

(declare-fun e!4261298 () Bool)

(assert (=> b!7088329 (= e!4261298 call!644347)))

(declare-fun b!7088330 () Bool)

(declare-fun e!4261300 () Bool)

(declare-fun call!644346 () Bool)

(assert (=> b!7088330 (= e!4261300 call!644346)))

(declare-fun b!7088331 () Bool)

(declare-fun e!4261299 () Bool)

(assert (=> b!7088331 (= e!4261299 e!4261302)))

(declare-fun res!2895266 () Bool)

(assert (=> b!7088331 (= res!2895266 (not (nullable!7410 (reg!18095 r!11554))))))

(assert (=> b!7088331 (=> (not res!2895266) (not e!4261302))))

(declare-fun bm!644342 () Bool)

(declare-fun c!1322905 () Bool)

(declare-fun c!1322906 () Bool)

(assert (=> bm!644342 (= call!644348 (validRegex!9041 (ite c!1322905 (reg!18095 r!11554) (ite c!1322906 (regOne!36045 r!11554) (regTwo!36044 r!11554)))))))

(declare-fun b!7088332 () Bool)

(declare-fun res!2895262 () Bool)

(declare-fun e!4261303 () Bool)

(assert (=> b!7088332 (=> res!2895262 e!4261303)))

(assert (=> b!7088332 (= res!2895262 (not (is-Concat!26611 r!11554)))))

(declare-fun e!4261301 () Bool)

(assert (=> b!7088332 (= e!4261301 e!4261303)))

(declare-fun b!7088333 () Bool)

(assert (=> b!7088333 (= e!4261303 e!4261298)))

(declare-fun res!2895264 () Bool)

(assert (=> b!7088333 (=> (not res!2895264) (not e!4261298))))

(assert (=> b!7088333 (= res!2895264 call!644346)))

(declare-fun bm!644343 () Bool)

(assert (=> bm!644343 (= call!644346 (validRegex!9041 (ite c!1322906 (regTwo!36045 r!11554) (regOne!36044 r!11554))))))

(declare-fun b!7088334 () Bool)

(assert (=> b!7088334 (= e!4261299 e!4261301)))

(assert (=> b!7088334 (= c!1322906 (is-Union!17766 r!11554))))

(declare-fun b!7088335 () Bool)

(assert (=> b!7088335 (= e!4261297 e!4261299)))

(assert (=> b!7088335 (= c!1322905 (is-Star!17766 r!11554))))

(declare-fun b!7088336 () Bool)

(declare-fun res!2895265 () Bool)

(assert (=> b!7088336 (=> (not res!2895265) (not e!4261300))))

(assert (=> b!7088336 (= res!2895265 call!644347)))

(assert (=> b!7088336 (= e!4261301 e!4261300)))

(assert (= (and d!2216405 (not res!2895263)) b!7088335))

(assert (= (and b!7088335 c!1322905) b!7088331))

(assert (= (and b!7088335 (not c!1322905)) b!7088334))

(assert (= (and b!7088331 res!2895266) b!7088328))

(assert (= (and b!7088334 c!1322906) b!7088336))

(assert (= (and b!7088334 (not c!1322906)) b!7088332))

(assert (= (and b!7088336 res!2895265) b!7088330))

(assert (= (and b!7088332 (not res!2895262)) b!7088333))

(assert (= (and b!7088333 res!2895264) b!7088329))

(assert (= (or b!7088336 b!7088329) bm!644341))

(assert (= (or b!7088330 b!7088333) bm!644343))

(assert (= (or b!7088328 bm!644341) bm!644342))

(declare-fun m!7818364 () Bool)

(assert (=> b!7088331 m!7818364))

(declare-fun m!7818366 () Bool)

(assert (=> bm!644342 m!7818366))

(declare-fun m!7818368 () Bool)

(assert (=> bm!644343 m!7818368))

(assert (=> start!689918 d!2216405))

(declare-fun bs!1883170 () Bool)

(declare-fun d!2216409 () Bool)

(assert (= bs!1883170 (and d!2216409 b!7088174)))

(declare-fun lambda!429410 () Int)

(assert (=> bs!1883170 (= lambda!429410 lambda!429373)))

(declare-fun bs!1883171 () Bool)

(assert (= bs!1883171 (and d!2216409 d!2216369)))

(assert (=> bs!1883171 (= lambda!429410 lambda!429394)))

(declare-fun bs!1883172 () Bool)

(assert (= bs!1883172 (and d!2216409 d!2216385)))

(assert (=> bs!1883172 (= lambda!429410 lambda!429401)))

(assert (=> d!2216409 (= (inv!87281 c!9994) (forall!16710 (exprs!7262 c!9994) lambda!429410))))

(declare-fun bs!1883173 () Bool)

(assert (= bs!1883173 d!2216409))

(declare-fun m!7818370 () Bool)

(assert (=> bs!1883173 m!7818370))

(assert (=> start!689918 d!2216409))

(declare-fun bs!1883174 () Bool)

(declare-fun d!2216411 () Bool)

(assert (= bs!1883174 (and d!2216411 b!7088174)))

(declare-fun lambda!429411 () Int)

(assert (=> bs!1883174 (= lambda!429411 lambda!429373)))

(declare-fun bs!1883175 () Bool)

(assert (= bs!1883175 (and d!2216411 d!2216369)))

(assert (=> bs!1883175 (= lambda!429411 lambda!429394)))

(declare-fun bs!1883176 () Bool)

(assert (= bs!1883176 (and d!2216411 d!2216385)))

(assert (=> bs!1883176 (= lambda!429411 lambda!429401)))

(declare-fun bs!1883177 () Bool)

(assert (= bs!1883177 (and d!2216411 d!2216409)))

(assert (=> bs!1883177 (= lambda!429411 lambda!429410)))

(assert (=> d!2216411 (= (inv!87281 auxCtx!45) (forall!16710 (exprs!7262 auxCtx!45) lambda!429411))))

(declare-fun bs!1883178 () Bool)

(assert (= bs!1883178 d!2216411))

(declare-fun m!7818372 () Bool)

(assert (=> bs!1883178 m!7818372))

(assert (=> start!689918 d!2216411))

(declare-fun b!7088349 () Bool)

(declare-fun e!4261306 () Bool)

(declare-fun tp!1946669 () Bool)

(assert (=> b!7088349 (= e!4261306 tp!1946669)))

(assert (=> b!7088173 (= tp!1946630 e!4261306)))

(declare-fun b!7088350 () Bool)

(declare-fun tp!1946666 () Bool)

(declare-fun tp!1946668 () Bool)

(assert (=> b!7088350 (= e!4261306 (and tp!1946666 tp!1946668))))

(declare-fun b!7088348 () Bool)

(declare-fun tp!1946665 () Bool)

(declare-fun tp!1946667 () Bool)

(assert (=> b!7088348 (= e!4261306 (and tp!1946665 tp!1946667))))

(declare-fun b!7088347 () Bool)

(assert (=> b!7088347 (= e!4261306 tp_is_empty!44765)))

(assert (= (and b!7088173 (is-ElementMatch!17766 (regOne!36044 r!11554))) b!7088347))

(assert (= (and b!7088173 (is-Concat!26611 (regOne!36044 r!11554))) b!7088348))

(assert (= (and b!7088173 (is-Star!17766 (regOne!36044 r!11554))) b!7088349))

(assert (= (and b!7088173 (is-Union!17766 (regOne!36044 r!11554))) b!7088350))

(declare-fun b!7088353 () Bool)

(declare-fun e!4261307 () Bool)

(declare-fun tp!1946674 () Bool)

(assert (=> b!7088353 (= e!4261307 tp!1946674)))

(assert (=> b!7088173 (= tp!1946632 e!4261307)))

(declare-fun b!7088354 () Bool)

(declare-fun tp!1946671 () Bool)

(declare-fun tp!1946673 () Bool)

(assert (=> b!7088354 (= e!4261307 (and tp!1946671 tp!1946673))))

(declare-fun b!7088352 () Bool)

(declare-fun tp!1946670 () Bool)

(declare-fun tp!1946672 () Bool)

(assert (=> b!7088352 (= e!4261307 (and tp!1946670 tp!1946672))))

(declare-fun b!7088351 () Bool)

(assert (=> b!7088351 (= e!4261307 tp_is_empty!44765)))

(assert (= (and b!7088173 (is-ElementMatch!17766 (regTwo!36044 r!11554))) b!7088351))

(assert (= (and b!7088173 (is-Concat!26611 (regTwo!36044 r!11554))) b!7088352))

(assert (= (and b!7088173 (is-Star!17766 (regTwo!36044 r!11554))) b!7088353))

(assert (= (and b!7088173 (is-Union!17766 (regTwo!36044 r!11554))) b!7088354))

(declare-fun b!7088359 () Bool)

(declare-fun e!4261310 () Bool)

(declare-fun tp!1946679 () Bool)

(declare-fun tp!1946680 () Bool)

(assert (=> b!7088359 (= e!4261310 (and tp!1946679 tp!1946680))))

(assert (=> b!7088178 (= tp!1946631 e!4261310)))

(assert (= (and b!7088178 (is-Cons!68605 (exprs!7262 auxCtx!45))) b!7088359))

(declare-fun b!7088362 () Bool)

(declare-fun e!4261311 () Bool)

(declare-fun tp!1946685 () Bool)

(assert (=> b!7088362 (= e!4261311 tp!1946685)))

(assert (=> b!7088171 (= tp!1946633 e!4261311)))

(declare-fun b!7088363 () Bool)

(declare-fun tp!1946682 () Bool)

(declare-fun tp!1946684 () Bool)

(assert (=> b!7088363 (= e!4261311 (and tp!1946682 tp!1946684))))

(declare-fun b!7088361 () Bool)

(declare-fun tp!1946681 () Bool)

(declare-fun tp!1946683 () Bool)

(assert (=> b!7088361 (= e!4261311 (and tp!1946681 tp!1946683))))

(declare-fun b!7088360 () Bool)

(assert (=> b!7088360 (= e!4261311 tp_is_empty!44765)))

(assert (= (and b!7088171 (is-ElementMatch!17766 (reg!18095 r!11554))) b!7088360))

(assert (= (and b!7088171 (is-Concat!26611 (reg!18095 r!11554))) b!7088361))

(assert (= (and b!7088171 (is-Star!17766 (reg!18095 r!11554))) b!7088362))

(assert (= (and b!7088171 (is-Union!17766 (reg!18095 r!11554))) b!7088363))

(declare-fun b!7088364 () Bool)

(declare-fun e!4261312 () Bool)

(declare-fun tp!1946686 () Bool)

(declare-fun tp!1946687 () Bool)

(assert (=> b!7088364 (= e!4261312 (and tp!1946686 tp!1946687))))

(assert (=> b!7088170 (= tp!1946629 e!4261312)))

(assert (= (and b!7088170 (is-Cons!68605 (exprs!7262 c!9994))) b!7088364))

(declare-fun b!7088367 () Bool)

(declare-fun e!4261313 () Bool)

(declare-fun tp!1946692 () Bool)

(assert (=> b!7088367 (= e!4261313 tp!1946692)))

(assert (=> b!7088172 (= tp!1946628 e!4261313)))

(declare-fun b!7088368 () Bool)

(declare-fun tp!1946689 () Bool)

(declare-fun tp!1946691 () Bool)

(assert (=> b!7088368 (= e!4261313 (and tp!1946689 tp!1946691))))

(declare-fun b!7088366 () Bool)

(declare-fun tp!1946688 () Bool)

(declare-fun tp!1946690 () Bool)

(assert (=> b!7088366 (= e!4261313 (and tp!1946688 tp!1946690))))

(declare-fun b!7088365 () Bool)

(assert (=> b!7088365 (= e!4261313 tp_is_empty!44765)))

(assert (= (and b!7088172 (is-ElementMatch!17766 (regOne!36045 r!11554))) b!7088365))

(assert (= (and b!7088172 (is-Concat!26611 (regOne!36045 r!11554))) b!7088366))

(assert (= (and b!7088172 (is-Star!17766 (regOne!36045 r!11554))) b!7088367))

(assert (= (and b!7088172 (is-Union!17766 (regOne!36045 r!11554))) b!7088368))

(declare-fun b!7088371 () Bool)

(declare-fun e!4261314 () Bool)

(declare-fun tp!1946697 () Bool)

(assert (=> b!7088371 (= e!4261314 tp!1946697)))

(assert (=> b!7088172 (= tp!1946627 e!4261314)))

(declare-fun b!7088372 () Bool)

(declare-fun tp!1946694 () Bool)

(declare-fun tp!1946696 () Bool)

(assert (=> b!7088372 (= e!4261314 (and tp!1946694 tp!1946696))))

(declare-fun b!7088370 () Bool)

(declare-fun tp!1946693 () Bool)

(declare-fun tp!1946695 () Bool)

(assert (=> b!7088370 (= e!4261314 (and tp!1946693 tp!1946695))))

(declare-fun b!7088369 () Bool)

(assert (=> b!7088369 (= e!4261314 tp_is_empty!44765)))

(assert (= (and b!7088172 (is-ElementMatch!17766 (regTwo!36045 r!11554))) b!7088369))

(assert (= (and b!7088172 (is-Concat!26611 (regTwo!36045 r!11554))) b!7088370))

(assert (= (and b!7088172 (is-Star!17766 (regTwo!36045 r!11554))) b!7088371))

(assert (= (and b!7088172 (is-Union!17766 (regTwo!36045 r!11554))) b!7088372))

(declare-fun b_lambda!270917 () Bool)

(assert (= b_lambda!270913 (or b!7088174 b_lambda!270917)))

(declare-fun bs!1883181 () Bool)

(declare-fun d!2216413 () Bool)

(assert (= bs!1883181 (and d!2216413 b!7088174)))

(assert (=> bs!1883181 (= (dynLambda!27982 lambda!429373 (h!75053 (exprs!7262 c!9994))) (validRegex!9041 (h!75053 (exprs!7262 c!9994))))))

(declare-fun m!7818376 () Bool)

(assert (=> bs!1883181 m!7818376))

(assert (=> b!7088217 d!2216413))

(declare-fun b_lambda!270919 () Bool)

(assert (= b_lambda!270915 (or b!7088174 b_lambda!270919)))

(declare-fun bs!1883182 () Bool)

(declare-fun d!2216417 () Bool)

(assert (= bs!1883182 (and d!2216417 b!7088174)))

(assert (=> bs!1883182 (= (dynLambda!27982 lambda!429373 (h!75053 (exprs!7262 auxCtx!45))) (validRegex!9041 (h!75053 (exprs!7262 auxCtx!45))))))

(declare-fun m!7818378 () Bool)

(assert (=> bs!1883182 m!7818378))

(assert (=> b!7088308 d!2216417))

(push 1)

(assert (not b!7088361))

(assert (not b!7088299))

(assert (not b!7088276))

(assert (not b!7088254))

(assert (not d!2216381))

(assert (not d!2216399))

(assert (not d!2216391))

(assert (not d!2216377))

(assert (not bm!644323))

(assert (not bm!644317))

(assert (not bm!644310))

(assert (not bm!644309))

(assert (not b!7088368))

(assert (not d!2216385))

(assert (not b!7088353))

(assert (not bm!644322))

(assert (not b!7088362))

(assert (not b!7088352))

(assert (not bm!644334))

(assert (not b!7088363))

(assert (not d!2216393))

(assert (not b!7088331))

(assert (not b!7088295))

(assert (not bs!1883181))

(assert (not bm!644311))

(assert (not b!7088350))

(assert (not bm!644333))

(assert (not b!7088294))

(assert (not bs!1883182))

(assert (not b!7088359))

(assert (not d!2216411))

(assert (not bm!644329))

(assert (not bm!644316))

(assert (not d!2216387))

(assert (not b!7088309))

(assert (not b!7088349))

(assert (not d!2216379))

(assert (not b!7088367))

(assert (not b!7088370))

(assert (not b!7088265))

(assert (not b!7088371))

(assert tp_is_empty!44765)

(assert (not b!7088364))

(assert (not b_lambda!270919))

(assert (not bm!644342))

(assert (not bm!644321))

(assert (not b!7088354))

(assert (not d!2216369))

(assert (not bm!644315))

(assert (not b!7088243))

(assert (not b!7088348))

(assert (not d!2216409))

(assert (not bm!644328))

(assert (not bm!644327))

(assert (not b!7088218))

(assert (not bm!644343))

(assert (not d!2216371))

(assert (not b!7088372))

(assert (not b!7088366))

(assert (not bm!644305))

(assert (not b_lambda!270917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

